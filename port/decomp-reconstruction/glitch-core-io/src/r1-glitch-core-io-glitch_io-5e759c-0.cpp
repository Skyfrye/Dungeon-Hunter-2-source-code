// Batch r1-glitch-core-io-glitch_io-5e759c-0 (glitch::io free functions, redo pass).
// Bodies follow the Hex-Rays pseudocode in recovered/native/hexrays-all. Byte order is handled
// explicitly, so the code does not depend on the host's endianness, except where a raw block
// is copied (the original's native copy, which is little-endian on the target).

#include <cstdint>
#include <cstring>
#include <memory>
#include <string>
#include <vector>

#include "glitch-core-io/io/irr_xml_file_read_callback.hpp"
#include "glitch-core-io/io/stream_itr_loader.hpp"
#include "glitch-core-io/io/stream_itr_writer.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-core-io/tb/glitch_io.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::io {
namespace {

std::uint32_t byteSwap32(std::uint32_t value) {
    return (value >> 24) | ((value >> 8) & 0x0000ff00u) | ((value << 8) & 0x00ff0000u) | (value << 24);
}

// glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize: 7 bytes at 0x8e4ca4 in the
// ELF, element size of each vertex value type (glitch-video/src/vertex_streams.cpp has the same table).
constexpr std::uint8_t kValueTypeSize[7] = {1, 1, 2, 2, 4, 4, 4};

// CSWTCH_4544 (0x8eb22c): element size of index types 1 and 2 in save(CPrimitiveStream): 2 and 4 bytes. Type 0 (u8) and every other
// type give 0 bytes there (a quirk of the original: u8 index streams are saved without indices).
std::uint32_t indexSize(std::uint32_t indexType) {
    if (indexType == 1) return 2;
    if (indexType == 2) return 4;
    return 0;
}

// glitch::video::getIndexTypeSize(E_INDEX_TYPE)::sizes (0x99b5d8): 1, 2, 4 bytes for u8, u16, u32 (loadPS and loadHeadersAndSkipData
// size the index data with it). The table's fourth word is 0xffff; other types are not valid and give 0 here.
std::uint32_t loadIndexSize(std::uint32_t indexType) {
    static const std::uint32_t kSizes[3] = {1, 2, 4};
    return indexType < 3 ? kSizes[indexType] : 0;
}

// E_BUFFER_MAP_ACCESS 4 (write): the access loadPS and loadVS map their new driver buffers with.
constexpr glitch::video::E_BUFFER_MAP_ACCESS kMapWrite = 4;

constexpr int kPrimitiveHeaderBytes = 24;  // six 32-bit words

// Reads one 32-bit word. swap selects big-endian file order; otherwise little-endian (the target).
std::uint32_t readWord(IReadFile* file, bool swap) {
    std::uint8_t b[4] = {0, 0, 0, 0};
    file->read(b, 4);
    if (swap) return (std::uint32_t(b[0]) << 24) | (std::uint32_t(b[1]) << 16) | (std::uint32_t(b[2]) << 8) | b[3];
    return (std::uint32_t(b[3]) << 24) | (std::uint32_t(b[2]) << 16) | (std::uint32_t(b[1]) << 8) | b[0];
}

// Reads one 16-bit value, with the same byte order rule as readWord.
std::uint16_t readHalf(IReadFile* file, bool swap) {
    std::uint8_t b[2] = {0, 0};
    file->read(b, 2);
    if (swap) return static_cast<std::uint16_t>((b[0] << 8) | b[1]);
    return static_cast<std::uint16_t>((b[1] << 8) | b[0]);
}

// Reads one vector3d<float> (12 bytes). Under swap every 32-bit word is reversed (glitch::os::byteswap<float>).
glitch::core::vector3d<float> readVector3(IReadFile* file, bool swap) {
    std::uint32_t words[3] = {0, 0, 0};
    file->read(words, 12);
    if (swap) {
        for (std::uint32_t& w : words) w = byteSwap32(w);
    }
    glitch::core::vector3d<float> v;
    std::memcpy(&v, words, 12);
    return v;
}

// The quantization block of the stream table: the position scale and offset, then a scale and an offset for each of the count0c
// texture sets (2 * (count0c + 1) vectors, stored in order).
void readQuantization(IReadFile* file, glitch::video::CVertexStreams* streams, bool swap) {
    for (std::size_t i = 0; i < streams->m_quantization.size(); ++i) {
        streams->m_quantization[i] = readVector3(file, swap);
    }
}

// Applies each header to its stream slot (the i-th stream of the table, in attribute order) with the given buffer:
// CVertexStreams::setStream(stream, data, false); the data holds the buffer, the offset, the value type, the component count and
// the stride.
void applyStreamHeaders(glitch::video::CVertexStreams* streams, const std::vector<SVertexStreamHeader>& headers,
                        const boost::intrusive_ptr<glitch::video::IBuffer>& buffer) {
    for (std::size_t i = 0; i < headers.size() && i < streams->m_streams.size(); ++i) {
        glitch::video::SVertexStreamData data;
        data.buffer = buffer;
        data.offset = headers[i].offset;
        data.field08 = headers[i].valueType;
        data.field0a = 0;
        data.field0c = headers[i].count;
        data.field0e = headers[i].stride;
        streams->setStream(&streams->m_streams[i], data, false);
    }
}

// The quantization flags of the table: bit 2 of the flags is set when the position stream (entry 0) is not stored as float (value
// type 6), and bit 3 + i when the texture stream i + 1 is not.
void updateStreamFlags(glitch::video::CVertexStreams* streams) {
    if (streams->m_streams.empty()) return;
    if (streams->m_streams[0].field0a == 6) {
        streams->m_flags = static_cast<std::uint16_t>(streams->m_flags & ~4u);
    } else {
        streams->m_flags = static_cast<std::uint16_t>(streams->m_flags | 4u);
    }
    for (unsigned i = 0; i < streams->m_count0c && i + 1 < streams->m_streams.size(); ++i) {
        if (streams->m_streams[i + 1].field0a == 6) {
            streams->m_flags = static_cast<std::uint16_t>(streams->m_flags & ~(8u << i));
        } else {
            streams->m_flags = static_cast<std::uint16_t>(streams->m_flags | (8u << i));
        }
    }
}

// Stores a 16-bit value at element i of a buffer in little-endian order (the original's host order).
void storeHalfLE(std::uint8_t* dst, std::uint16_t value) {
    dst[0] = static_cast<std::uint8_t>(value & 0xff);
    dst[1] = static_cast<std::uint8_t>(value >> 8);
}

void storeWordLE(std::uint8_t* dst, std::uint32_t value) {
    for (int i = 0; i < 4; ++i) dst[i] = static_cast<std::uint8_t>(value >> (8 * i));
}

// Reads the vertex stream headers (count entries of 12 bytes). mask gets the bits of the attributes
// (bit = low byte of the attribute), as the original's loop ORs them in.
std::vector<SVertexStreamHeader> readStreamHeaders(IReadFile* file, std::uint32_t count, bool swap,
                                                   std::uint32_t& mask) {
    std::vector<SVertexStreamHeader> headers;
    mask = 0;
    for (std::uint32_t i = 0; i < count; ++i) {
        SVertexStreamHeader header;
        header.offset = readWord(file, swap);
        header.attribute = readHalf(file, swap);
        header.valueType = readHalf(file, swap);
        header.count = readHalf(file, swap);
        header.stride = readHalf(file, swap);
        mask |= 1u << (header.attribute & 0xff);  // PARTIAL: the original shifts by a char; 32 bits here
        headers.push_back(header);
    }
    return headers;
}


// Driver buffers of the index and vertex data: type 1 (index) or 0 (vertex), usage 4, and the bytes in
// zeroed storage that the buffer owns (IVideoDriver::createBuffer with flag true, vtable +0x78). The call
// is the one the listings make in loadPS (0x6b61fc, createBuffer(1, 4, bytes, new[](bytes), 1)) and loadVS
// (0x6b73d8, createBuffer(0, 4, bytes, new[](bytes), 1)). The result already holds one use.
constexpr glitch::video::E_BUFFER_TYPE kVertexBufferType = 0;
constexpr glitch::video::E_BUFFER_TYPE kIndexBufferType = 1;
constexpr glitch::video::E_BUFFER_USAGE kDataBufferUsage = 4;

boost::intrusive_ptr<glitch::video::IBuffer> createDataBuffer(glitch::video::IVideoDriver* driver,
                                                              glitch::video::E_BUFFER_TYPE type,
                                                              std::uint32_t bytes) {
    std::uint8_t* storage = new std::uint8_t[bytes]();
    return driver->createBuffer(type, kDataBufferUsage, bytes, storage, true);
}

}  // namespace

// 0x578670 _ZN6glitch2io10fromStringERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPNS_5video12IVideoDriverE
// The text is "<texture name>;<creation options>". With a driver and a non-empty text, ';' is searched; the name is the text
// before it (the whole text when there is none) and the options are the text after it (the whole text again when there is no
// ';', since the start index stays 0). The result is CTextureManager::getTexture(name, options) of the driver (+0xe0).
boost::intrusive_ptr<glitch::video::ITexture> fromString(const glitch::core::stringc& text,
                                                         glitch::video::IVideoDriver* driver) {
    boost::intrusive_ptr<glitch::video::ITexture> result;
    if (driver != nullptr && !text.empty()) {
        const std::size_t semicolon = text.find(';');
        const std::size_t optionsStart = semicolon == std::string::npos ? 0 : semicolon + 1;
        const std::string name(text, 0, semicolon);  // npos: the whole text
        const glitch::core::stringc options(text, optionsStart);
        result = driver->m_textureManager->getTexture(name.c_str(), options.c_str());
    }
    return result;
}

// 0x5787cc _ZN6glitch2io8toStringERKN5boost13intrusive_ptrINS_5video8ITextureEEEPNS3_12IVideoDriverE
// An empty string for a null texture or driver. Otherwise the texture's entry in the driver's texture collection (by the id at
// texture +0x3c) supplies the name held in its properties record (a non-empty string), else "<null>"; then ';' and the
// texture's own name (texture +0x08) follow.
std::string toString(const boost::intrusive_ptr<glitch::video::ITexture>& texture,
                     glitch::video::IVideoDriver* driver) {
    std::string result;
    if (texture.get() != nullptr && driver != nullptr) {
        const auto* entry = driver->m_textureManager->get(texture->m_id);
        if (entry->value && !entry->iterator->second.unk00.empty()) {
            result = entry->iterator->second.unk00;
        } else {
            result = "<null>";
        }
        result += ';';
        result += texture->m_name;
    }
    return result;
}

// 0x575268 _ZN6glitch2io16createIXMLReaderEPNS0_9IReadFileE
CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>* createIXMLReader(IReadFile* file) {
    if (file == nullptr) return nullptr;
    // The callback takes a reference on the file (the original increments IReadFile's count
    // at +0x04 here); the callback's destructor releases it.
    ++file->referenceCounter;
    auto* callback = new CIrrXMLFileReadCallBack(file);
    auto* reader = new CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>();
    reader->parserFormat = 5;  // +0x20
    reader->readFile(callback);
    delete callback;  // the original calls the deleting destructor through vtable +0x04
    reader->createSpecialCharacterList();
    reader->current = reader->textData;  // +0x0c = +0x10
    return reader;
}

// 0x576270 _ZN6glitch2io20createIXMLReaderUTF8EPNS0_9IReadFileE
CXMLReaderImpl<char, glitch::IReferenceCounted>* createIXMLReaderUTF8(IReadFile* file) {
    if (file == nullptr) return nullptr;
    ++file->referenceCounter;
    auto* callback = new CIrrXMLFileReadCallBack(file);
    auto* reader = new CXMLReaderImpl<char, glitch::IReferenceCounted>();
    reader->parserFormat = 1;  // +0x20
    reader->readFile(callback);
    delete callback;
    reader->createSpecialCharacterList();
    reader->current = reader->textData;  // +0x0c = +0x10
    return reader;
}

// 0x6b58a8 _ZN6glitch2io22getVertexStreamsStrideERKN5boost13intrusive_ptrIKNS_5video14CVertexStreamsEEE
// Each bound stream (buffer set) adds its component count times its element size, after padding the running total to that element
// size; the first bound stream then aligns the total once more. An entry whose value type is past the 7-entry ValueTypeSize table
// reads past the table in the original (undefined there); the port uses an element size of 1 for such an entry. The original does
// not test the table pointer for null, and neither does this port.
unsigned int getVertexStreamsStride(const boost::intrusive_ptr<const glitch::video::CVertexStreams>& streams) {
    const auto& entries = streams->m_streams;
    if (entries.empty()) return 0;

    auto elementSize = [](std::uint16_t valueType) -> unsigned int {
        return valueType < 7 ? kValueTypeSize[valueType] : 1u;
    };

    // Each bound stream: pad the running total to its element size, then add its components.
    unsigned int stride = 0;
    for (const auto& entry : entries) {
        if (entry.buffer == nullptr) continue;
        const unsigned int size = elementSize(entry.field0a);
        const unsigned int pad = (size - stride % size) % size;
        stride += entry.field0c * size + pad;
    }
    // The first bound stream aligns the total to its element size.
    for (const auto& entry : entries) {
        if (entry.buffer == nullptr) continue;
        const unsigned int size = elementSize(entry.field0a);
        stride += (size - stride % size) % size;
        break;
    }
    return stride;
}

// 0x6b5dd4 _ZN6glitch2io4saveERKNS_5video16CPrimitiveStreamEPNS0_10IWriteFileEb
// The header is six words: primitive type, index type, count, primitive count, unk_0c, unk_10.
// With bigEndian each word is byte-swapped. Without it the indices are one raw write of
// count * element size bytes; with it they are written element by element, byte-swapped.
// Index types other than 1 and 2 write nothing in the swapped path, and 0 bytes in the raw path.
int save(const glitch::video::CPrimitiveStream& stream, IWriteFile* file, bool bigEndian) {
    auto writeWord = [&](std::uint32_t value) {
        const std::uint32_t word = bigEndian ? byteSwap32(value) : value;
        file->write(&word, 4);
    };
    writeWord(stream.m_primitiveType);
    writeWord(stream.m_indexType);
    writeWord(stream.m_count);
    writeWord(stream.getPrimitiveCount());
    writeWord(stream.m_vertexStart);
    writeWord(stream.m_vertexEnd);

    if (!stream.m_indexBuffer) return kPrimitiveHeaderBytes;
    const std::uint8_t* base = stream.m_indexBuffer->m_data + stream.m_offset;
    const std::uint32_t count = stream.m_count;

    if (!bigEndian) {
        const std::uint32_t bytes = count * indexSize(stream.m_indexType);
        file->write(base, bytes);
        return kPrimitiveHeaderBytes;
    }
    if (stream.m_indexType == 0) {
        file->write(base, 0);
        return kPrimitiveHeaderBytes;
    }
    if (stream.m_indexType == 1) {
        for (std::uint32_t i = 0; i < count; ++i) {
            const std::uint8_t* element = base + 2 * i;
            const std::uint8_t out[2] = {element[1], element[0]};
            file->write(out, 2);
        }
    } else if (stream.m_indexType == 2) {
        for (std::uint32_t i = 0; i < count; ++i) {
            const std::uint8_t* element = base + 4 * i;
            const std::uint8_t out[4] = {element[3], element[2], element[1], element[0]};
            file->write(out, 4);
        }
    }
    return kPrimitiveHeaderBytes;
}

// 0x6b61fc _ZN6glitch2io6loadPSEPNS0_9IReadFileEbPNS_5video12IVideoDriverE
// Reads the 24-byte header (six words, byte-swapped when bigEndian), then the indices. An index type of 0xff marks an empty stream
// (no buffer; the count is word 5 minus word 4). Otherwise a driver buffer of count * getIndexTypeSize(type) bytes
// (IVideoDriver::createBuffer, vtable +0x78: type 1 index, usage 4, zeroed storage the buffer owns) is mapped for writing and
// filled: raw when the file is little-endian (or the index type is 0), element by element with the bytes reversed for big-endian
// 16 and 32-bit indices, and not at all for any other big-endian type. The map is released afterwards. Host guard (the original
// calls through the driver pointer unchecked): without a driver the index bytes are skipped and the stream has no buffer.
glitch::video::CPrimitiveStream loadPS(IReadFile* file, bool bigEndian, glitch::video::IVideoDriver* driver) {
    glitch::video::CPrimitiveStream stream;

    std::uint8_t raw[kPrimitiveHeaderBytes];
    file->read(raw, kPrimitiveHeaderBytes);
    auto word = [&](int index) -> std::uint32_t {
        const std::uint8_t* b = raw + 4 * index;
        if (bigEndian) return (std::uint32_t(b[0]) << 24) | (std::uint32_t(b[1]) << 16) | (std::uint32_t(b[2]) << 8) | b[3];
        return (std::uint32_t(b[3]) << 24) | (std::uint32_t(b[2]) << 16) | (std::uint32_t(b[1]) << 8) | b[0];
    };
    const std::uint32_t primitiveType = word(0);
    const std::uint32_t indexType = word(1);
    const std::uint32_t count = word(2);
    const std::uint32_t word4 = word(4);
    const std::uint32_t word5 = word(5);

    stream.m_primitiveType = static_cast<std::uint16_t>(primitiveType);
    stream.m_offset = 0;
    stream.m_vertexStart = word4;
    stream.m_vertexEnd = word5;
    stream.m_indexType = static_cast<std::uint16_t>(indexType);
    if (indexType == 0xff) {
        // Empty stream: no buffer. The original stores word5 - word4 as the count.
        stream.m_count = word5 - word4;
        return stream;
    }
    stream.m_count = count;

    const std::uint32_t bytes = count * loadIndexSize(indexType);
    if (driver == nullptr) {
        file->seek(static_cast<long>(bytes), true);
        return stream;
    }
    stream.m_indexBuffer = createDataBuffer(driver, kIndexBufferType, bytes);

    std::uint8_t* data = stream.m_indexBuffer->map(kMapWrite);
    if (bigEndian && indexType != 0) {
        if (indexType == 1) {
            for (std::uint32_t i = 0; i < count; ++i) {
                std::uint8_t in[2];
                file->read(in, 2);
                storeHalfLE(data + 2 * i, static_cast<std::uint16_t>((in[0] << 8) | in[1]));
            }
        } else if (indexType == 2) {
            for (std::uint32_t i = 0; i < count; ++i) {
                std::uint8_t in[4];
                file->read(in, 4);
                storeWordLE(data + 4 * i, (std::uint32_t(in[0]) << 24) | (std::uint32_t(in[1]) << 16) |
                                              (std::uint32_t(in[2]) << 8) | in[3]);
            }
        }
        // bigEndian with another index type reads nothing (as the original).
    } else {
        file->read(data, bytes);
    }
    stream.m_indexBuffer->unmap();
    return stream;
}

// 0x6b6cac _ZN6glitch2io22loadHeadersAndSkipDataEPNS0_9IReadFileERNS0_20SPrimitiveStreamDescEb
// Reads the vertex stream block without its vertex data: a flag byte (unused), the header count and the headers, the stream table
// for their attribute mask (CVertexStreams::allocate(mask), every header applied to its stream with no buffer), the stream flags
// and the quantization block; then the vertex count (never byte-swapped), the skip of count * the first header's stride bytes, the
// 24-byte primitive stream header (swapped per word when bigEndian) into desc, and the skip of count * getIndexTypeSize(type) bytes.
boost::intrusive_ptr<glitch::video::CVertexStreams> loadHeadersAndSkipData(IReadFile* file,
                                                                           SPrimitiveStreamDesc& desc,
                                                                           bool bigEndian) {
    std::uint8_t flagByte = 0;
    file->read(&flagByte, 1);
    const std::uint32_t headerCount = readWord(file, bigEndian);
    std::uint32_t mask = 0;
    const std::vector<SVertexStreamHeader> headers = readStreamHeaders(file, headerCount, bigEndian, mask);

    boost::intrusive_ptr<glitch::video::CVertexStreams> result = glitch::video::CVertexStreams::allocate(headerCount != 0 ? mask : 0u);
    applyStreamHeaders(result.get(), headers, boost::intrusive_ptr<glitch::video::IBuffer>());
    updateStreamFlags(result.get());
    readQuantization(file, result.get(), bigEndian);

    const std::uint32_t vertexCount = readWord(file, false);  // not byte-swapped, as the original
    const std::uint32_t stride = headers.empty() ? 0 : headers[0].stride;
    file->seek(static_cast<long>(vertexCount * stride), true);

    // Primitive stream header (24 bytes, swapped per word under bigEndian), then its indices.
    std::uint8_t raw[kPrimitiveHeaderBytes];
    file->read(raw, kPrimitiveHeaderBytes);
    auto word = [&](int index) -> std::uint32_t {
        const std::uint8_t* b = raw + 4 * index;
        if (bigEndian) return (std::uint32_t(b[0]) << 24) | (std::uint32_t(b[1]) << 16) | (std::uint32_t(b[2]) << 8) | b[3];
        return (std::uint32_t(b[3]) << 24) | (std::uint32_t(b[2]) << 16) | (std::uint32_t(b[1]) << 8) | b[0];
    };
    desc.primitiveType = word(0);
    desc.indexType = word(1);
    desc.count = word(2);
    desc.primitiveCount = word(3);
    desc.unk_10 = word(4);
    desc.unk_14 = word(5);
    file->seek(static_cast<long>(desc.count * loadIndexSize(desc.indexType)), true);
    return result;
}

// 0x6b73d8 _ZN6glitch2io6loadVSEPNS0_9IReadFileEbPNS_5video12IVideoDriverE
// The header count and headers, the stream table for their attribute mask (allocate(mask)), the quantization block, the vertex count
// (never swapped) and a driver buffer of count * the first header's stride bytes (type 0 vertex, usage 4). A little-endian file is
// read into the mapped buffer in one block. A big-endian file is read vertex by vertex: one SStreamItrLoader per header (the stream
// run in the mapped buffer at the header's offset, its component count, the element size of its value type and its stride); every
// vertex pads the running position to the element size of each stream in turn (a seek), then loadAndAdvance swaps that stream's
// elements. Then each header is applied to its stream with that one shared buffer (setStream), the stream flags are updated and
// the vertex count is stored in the table (+0x08). Host guard: without a driver the vertex bytes are skipped and the streams have
// no buffer (the original calls through the driver pointer unchecked).
boost::intrusive_ptr<glitch::video::CVertexStreams> loadVS(IReadFile* file, bool bigEndian,
                                                           glitch::video::IVideoDriver* driver) {
    const std::uint32_t headerCount = readWord(file, bigEndian);
    std::uint32_t mask = 0;
    const std::vector<SVertexStreamHeader> headers = readStreamHeaders(file, headerCount, bigEndian, mask);

    boost::intrusive_ptr<glitch::video::CVertexStreams> result = glitch::video::CVertexStreams::allocate(headerCount != 0 ? mask : 0u);
    readQuantization(file, result.get(), bigEndian);

    const std::uint32_t vertexCount = readWord(file, false);
    const std::uint32_t stride = headers.empty() ? 0 : headers[0].stride;
    const std::uint32_t bytes = vertexCount * stride;

    boost::intrusive_ptr<glitch::video::IBuffer> buffer;
    if (driver != nullptr) {
        buffer = createDataBuffer(driver, kVertexBufferType, bytes);
        if (bigEndian) {
            std::vector<SStreamItrLoader> loaders;
            for (const SVertexStreamHeader& header : headers) {
                SStreamItrLoader loader;
                std::uint8_t* base = buffer->map(kMapWrite);
                loader.data = base + header.offset;
                loader.count = header.count;
                loader.elementSize = header.valueType < 7 ? kValueTypeSize[header.valueType] : 0;
                loader.stride = header.stride;
                buffer->unmap();
                loaders.push_back(loader);
            }
            std::uint32_t position = 0;
            for (std::uint32_t vertex = 0; vertex < vertexCount; ++vertex) {
                for (SStreamItrLoader& loader : loaders) {
                    const std::uint32_t size = loader.elementSize;
                    const std::uint32_t pad = size == 0 ? 0 : (size - position % size) % size;
                    file->seek(static_cast<long>(pad), true);
                    loader.loadAndAdvance(file, true);
                    position += pad + static_cast<std::uint32_t>(loader.count) * size;
                }
            }
        } else {
            std::uint8_t* data = buffer->map(kMapWrite);
            file->read(data, bytes);
            buffer->unmap();
        }
    } else {
        file->seek(static_cast<long>(bytes), true);
    }

    applyStreamHeaders(result.get(), headers, buffer);
    updateStreamFlags(result.get());
    result->m_field08 = vertexCount;
    return result;
}

// 0x6b7c1c _ZN6glitch2io6loadMBEPNS0_9IReadFileEbPNS_5video12IVideoDriverE
// One flag byte, the vertex streams (loadVS) and the primitive stream (loadPS) go into a new CMeshBuffer (0x38 bytes): the streams
// and the primitive stream (taking the index buffer's use) at +0x14 / +0x18, the flag byte at +0x34, no owner. The result carries
// the first use.
boost::intrusive_ptr<glitch::scene::CMeshBuffer> loadMB(IReadFile* file, bool bigEndian,
                                                        glitch::video::IVideoDriver* driver) {
    std::uint8_t flag = 0;
    file->read(&flag, 1);
    auto streams = loadVS(file, bigEndian, driver);
    glitch::video::CPrimitiveStream primitives = loadPS(file, bigEndian, driver);
    auto* mesh = new glitch::scene::CMeshBuffer();
    mesh->vertexStreams = streams;
    mesh->primitiveStream = primitives;
    mesh->flag_34 = flag;
    mesh->owner = nullptr;
    return boost::intrusive_ptr<glitch::scene::CMeshBuffer>(mesh, true);
}

// 0x6b7d84 _ZN6glitch2io4saveERKN5boost13intrusive_ptrIKNS_5video14CVertexStreamsEEEPNS0_10IWriteFileEb
// A header per bound stream (offset aligned to its element size, attribute, value type, component count); every header's stride is
// the total after a last alignment to the first stream's element size. The header count, the headers (swapped field by field when
// bigEndian), the quantization vectors (floats swapped when bigEndian), the vertex count, and for every vertex one writeAndAdvance
// per bound stream (an SStreamItrWriter over its buffer data at the stream offset), preceded by the zero padding that aligns the
// running position (one write); a final padding aligns it to the stride. Returns 12 * headers + 24 * count0c + 32. A table
// with no bound stream reads a missing header at the end in the original; the port skips that last alignment.
int save(const boost::intrusive_ptr<const glitch::video::CVertexStreams>& streams, IWriteFile* file,
         bool bigEndian) {
    const auto& entries = streams->m_streams;

    struct Header {
        std::uint32_t offset;
        std::uint16_t attribute;
        std::uint16_t valueType;
        std::uint16_t count;
    };
    std::vector<Header> headers;
    std::uint32_t total = 0;
    for (const auto& entry : entries) {
        if (entry.buffer == nullptr) continue;
        const std::uint32_t size = entry.field0a < 7 ? kValueTypeSize[entry.field0a] : 1u;
        const std::uint32_t pad = (size - total % size) % size;
        headers.push_back({total + pad, entry.attribute, entry.field0a, entry.field0c});
        total += pad + entry.field0c * size;
    }
    std::uint16_t totalStride = static_cast<std::uint16_t>(total);
    for (const auto& entry : entries) {
        if (entry.buffer == nullptr) continue;
        const std::uint32_t size = entry.field0a < 7 ? kValueTypeSize[entry.field0a] : 1u;
        total += (size - total % size) % size;
        totalStride = static_cast<std::uint16_t>(total);
        break;
    }

    auto writeWord = [&](std::uint32_t value) {
        const std::uint32_t word = bigEndian ? byteSwap32(value) : value;
        file->write(&word, 4);
    };
    auto writeHalf = [&](std::uint16_t value) {
        const std::uint16_t half = bigEndian ? static_cast<std::uint16_t>((value >> 8) | (value << 8)) : value;
        file->write(&half, 2);
    };
    writeWord(static_cast<std::uint32_t>(headers.size()));
    for (const auto& header : headers) {
        writeWord(header.offset);
        writeHalf(header.attribute);
        writeHalf(header.valueType);
        writeHalf(header.count);
        writeHalf(totalStride);
    }
    // The quantization vectors: the position scale and offset, then a scale and an offset for each of the count0c texture sets.
    for (const auto& vector : streams->m_quantization) {
        std::uint32_t words[3];
        std::memcpy(words, &vector, 12);
        if (bigEndian) {
            for (std::uint32_t& w : words) w = byteSwap32(w);
        }
        file->write(words, 12);
    }
    writeWord(streams->m_field08);

    // Vertex data: one SStreamItrWriter per bound stream. For each vertex, a stream is padded to its element size with zero bytes
    // (one write), then its components are written and the source advances by the stream stride (which also does the byte swap).
    static const std::uint8_t kPadding[64] = {};
    std::vector<SStreamItrWriter> writers;
    for (const auto& entry : entries) {
        if (entry.buffer == nullptr) continue;
        SStreamItrWriter writer{};
        writer.data = entry.buffer->m_data + entry.offset;
        writer.count = entry.field0c;
        writer.elementSize = entry.field0a < 7 ? kValueTypeSize[entry.field0a] : 1u;
        writer.stride = entry.field0e;
        writers.push_back(writer);
    }
    std::uint32_t position = 0;
    for (std::uint32_t vertex = 0; vertex < streams->m_field08; ++vertex) {
        for (SStreamItrWriter& writer : writers) {
            const std::uint32_t size = writer.elementSize;
            const std::uint32_t pad = size == 0 ? 0 : (size - position % size) % size;
            if (pad != 0) file->write(kPadding, pad);
            writer.writeAndAdvance(file, bigEndian);
            position += pad + static_cast<std::uint32_t>(writer.count) * size;
        }
    }
    if (!headers.empty() && totalStride != 0) {
        const std::uint32_t finalPad = (totalStride - position % totalStride) % totalStride;
        if (finalPad != 0) file->write(kPadding, finalPad);
    }

    return static_cast<int>(12 * headers.size() + 24 * streams->m_count0c + 32);
}

// 0x6b875c _ZN6glitch2io4saveERKN5boost13intrusive_ptrIKNS_5scene11CMeshBufferEEEPNS0_10IWriteFileEbPjSB_
// The mesh buffer's flag byte (+0x34), then the vertex streams (save above, held for the call) and the primitive stream (+0x18).
// *vertexResult gets the vertex stream result plus one (the flag byte), *indexResult and the return value the primitive stream's.
int save(const boost::intrusive_ptr<const glitch::scene::CMeshBuffer>& mesh, IWriteFile* file,
         bool bigEndian, unsigned int* vertexResult, unsigned int* indexResult) {
    const std::uint8_t flag = mesh->flag_34;
    file->write(&flag, 1);
    const boost::intrusive_ptr<const glitch::video::CVertexStreams> streams(mesh->vertexStreams.get(), true);
    const int vertexBytes = save(streams, file, bigEndian);
    const int result = save(mesh->primitiveStream, file, bigEndian);
    if (vertexResult != nullptr) *vertexResult = static_cast<unsigned int>(vertexBytes + 1);
    if (indexResult != nullptr) *indexResult = static_cast<unsigned int>(result);
    return result;
}

}  // namespace glitch::io
