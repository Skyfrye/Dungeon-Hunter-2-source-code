// Free functions of namespace glitch::io that have no other header in glitch-core-io: the XML
// reader factories, the vertex stream stride, the texture-name conversions, and the primitive,
// vertex and mesh buffer file I/O (batch r1-glitch-core-io-glitch_io-5e759c-0). The bodies are in
// src/r1-glitch-core-io-glitch_io-5e759c-0.cpp.
#pragma once

#include <cstdint>
#include <string>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/core/allocator.hpp"
#include "glitch-core-io/deps/glitch_core_objects.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/io/read_file.hpp"
#include "glitch-core-io/io/xml_reader.hpp"
#include "glitch-core-io/tb/cprimitivestream.hpp"

namespace glitch::io {

// Header of a primitive stream block as read by loadPS and loadHeadersAndSkipData: six 32-bit
// words in file order (primitive type, index type, count, primitive count, two more words).
// Layout of the original's SPrimitiveStreamDesc (24 bytes); the word meanings follow save(PS).
struct SPrimitiveStreamDesc {
    std::uint32_t primitiveType = 0;   // +0x00
    std::uint32_t indexType = 0;       // +0x04
    std::uint32_t count = 0;           // +0x08
    std::uint32_t primitiveCount = 0;  // +0x0c
    std::uint32_t unk_10 = 0;          // +0x10
    std::uint32_t unk_14 = 0;          // +0x14
};

// One vertex stream entry of a vertex stream block, as read from the file (12 bytes): offset (32
// bits), attribute (16 bits, its low byte selects the attribute bit), value type, component count
// and stride (16 bits each). The name follows the original's SVertexStreamHeader.
struct SVertexStreamHeader {
    std::uint32_t offset = 0;     // +0x00
    std::uint16_t attribute = 0;  // +0x04
    std::uint16_t valueType = 0;  // +0x06, index into SVertexAttributeTypeInspection::ValueTypeSize
    std::uint16_t count = 0;      // +0x08
    std::uint16_t stride = 0;     // +0x0a
};

// 0x578670 _ZN6glitch2io10fromStringERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPNS_5video12IVideoDriverE
boost::intrusive_ptr<glitch::video::ITexture> fromString(const glitch::core::stringc& text,
                                                         glitch::video::IVideoDriver* driver);

// 0x5787cc _ZN6glitch2io8toStringERKN5boost13intrusive_ptrINS_5video8ITextureEEEPNS3_12IVideoDriverE
std::string toString(const boost::intrusive_ptr<glitch::video::ITexture>& texture,
                     glitch::video::IVideoDriver* driver);

// 0x575268 _ZN6glitch2io16createIXMLReaderEPNS0_9IReadFileE. The wide-character reader; the
// original returns its IIrrXMLReader base, the port returns the reader class.
CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>* createIXMLReader(IReadFile* file);

// 0x576270 _ZN6glitch2io20createIXMLReaderUTF8EPNS0_9IReadFileE. The narrow-character reader.
CXMLReaderImpl<char, glitch::IReferenceCounted>* createIXMLReaderUTF8(IReadFile* file);

// 0x6b58a8 _ZN6glitch2io22getVertexStreamsStrideERKN5boost13intrusive_ptrIKNS_5video14CVertexStreamsEEE
unsigned int getVertexStreamsStride(const boost::intrusive_ptr<const glitch::video::CVertexStreams>& streams);

// 0x6b5dd4 _ZN6glitch2io4saveERKNS_5video16CPrimitiveStreamEPNS0_10IWriteFileEb. Writes the 24-byte
// header and the indices. bigEndian selects byte-swapped output. Returns 24 (the header size).
int save(const glitch::video::CPrimitiveStream& stream, IWriteFile* file, bool bigEndian);

// 0x6b61fc _ZN6glitch2io6loadPSEPNS0_9IReadFileEbPNS_5video12IVideoDriverE
glitch::video::CPrimitiveStream loadPS(IReadFile* file, bool bigEndian, glitch::video::IVideoDriver* driver);

// 0x6b6cac _ZN6glitch2io22loadHeadersAndSkipDataEPNS0_9IReadFileERNS0_20SPrimitiveStreamDescEb
boost::intrusive_ptr<glitch::video::CVertexStreams> loadHeadersAndSkipData(IReadFile* file,
                                                                           SPrimitiveStreamDesc& desc,
                                                                           bool bigEndian);

// 0x6b73d8 _ZN6glitch2io6loadVSEPNS0_9IReadFileEbPNS_5video12IVideoDriverE
boost::intrusive_ptr<glitch::video::CVertexStreams> loadVS(IReadFile* file, bool bigEndian,
                                                           glitch::video::IVideoDriver* driver);

// 0x6b7c1c _ZN6glitch2io6loadMBEPNS0_9IReadFileEbPNS_5video12IVideoDriverE
boost::intrusive_ptr<glitch::scene::CMeshBuffer> loadMB(IReadFile* file, bool bigEndian,
                                                        glitch::video::IVideoDriver* driver);

// 0x6b7d84 _ZN6glitch2io4saveERKN5boost13intrusive_ptrIKNS_5video14CVertexStreamsEEEPNS0_10IWriteFileEb
int save(const boost::intrusive_ptr<const glitch::video::CVertexStreams>& streams, IWriteFile* file,
         bool bigEndian);

// 0x6b875c _ZN6glitch2io4saveERKN5boost13intrusive_ptrIKNS_5scene11CMeshBufferEEEPNS0_10IWriteFileEbPjSB_
int save(const boost::intrusive_ptr<const glitch::scene::CMeshBuffer>& mesh, IWriteFile* file,
         bool bigEndian, unsigned int* vertexResult, unsigned int* indexResult);

}  // namespace glitch::io
