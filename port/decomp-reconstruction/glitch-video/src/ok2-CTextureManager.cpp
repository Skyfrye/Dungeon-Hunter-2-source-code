// Owner K2: the CTextureManager functions that were declared only: finding textures and images, the image loader / writer
// lookup, loading textures from files (also from inside a zip), renaming, the colour key and normal map filters and the reload
// of a texture's data.
#include <algorithm>
#include <cctype>
#include <cmath>
#include <cstring>
#include <new>
#include <string>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/io/zip_reader.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-video/image.hpp"
#include "glitch-video/image_loaders.hpp"
#include "glitch-video/pixel_format.hpp"
#include "glitch-video/pixel_format_convert.hpp"
#include "glitch-video/texture_loaders.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-video/video_names.hpp"

namespace glitch::video {

namespace {

// The conversion the listing uses for a float that goes into a byte: float to unsigned (negative values and NaN give 0,
// too large values saturate), as __aeabi_f2uiz does.
uint32_t floatToUnsigned(float value) {
    if (!(value > 0.0f)) return 0;
    if (value >= 4294967296.0f) return 0xffffffffu;
    return static_cast<uint32_t>(value);
}

// floor(log2(value)), -1 for 0 (the loop `n = -1; while (v) { v >>= 1; ++n; }`).
int32_t floorLog2(int32_t value) {
    int32_t n = -1;
    while (value != 0) {
        value >>= 1;
        ++n;
    }
    return n;
}

// Average of the three five-bit channels of an A1R5G5B5 pixel, scaled to eight bits: (8*g + 8*r + 8*b) / 3 in one byte.
uint32_t gray555(uint32_t pixel) {
    const int32_t sum = static_cast<int32_t>(8 * ((pixel >> 5) & 0x1f) + 8 * ((pixel >> 10) & 0x1f) + 8 * (pixel & 0x1f));
    return static_cast<uint8_t>(sum / 3);
}

io::IFileSystem* fileSystemOf(const boost::intrusive_ptr<glitch::IReferenceCounted>& holder) {
    return static_cast<io::IFileSystem*>(holder.get());
}

}  // namespace

// 0x5e7e00 _ZN6glitch5video18guessSubIdFromNameEPKcS2_
// Finds the first number after `key` in the lower-cased name and returns it (modulo 256), or 255 when the key or a number
// after it is missing. The name is lower-cased in a process buffer block (with the heap's excess mode switched on for the
// allocation).
int32_t guessSubIdFromName(const char* name, const char* key) {
    const bool excess = glitch::core::isProcessBufferHeapExcessEnabled();
    glitch::core::setProcessBufferHeapExcessEnabled(true);
    const size_t length = std::strlen(name);
    char* lowered = reinterpret_cast<char*>(glitch::core::allocProcessBuffer(static_cast<int>(length + 1)));
    for (size_t i = 0; i != length; ++i) {
        const uint32_t c = static_cast<uint32_t>(static_cast<int32_t>(name[i]));
        lowered[i] = c <= 0xffu ? static_cast<char>(std::tolower(static_cast<int>(c))) : static_cast<char>(c);
    }
    lowered[length] = 0;
    int32_t result;
    const char* found = std::strstr(lowered, key);
    if (found == nullptr) {
        result = 255;
    } else {
        const char* cursor = found + std::strlen(key);
        result = 255;
        if (*cursor != 0) {
            while (static_cast<char>(*cursor) == -1 || std::isdigit(static_cast<unsigned char>(*cursor)) == 0) {
                ++cursor;
                if (*cursor == 0) break;
            }
            if (*cursor != 0) {
                uint32_t value = 0;
                char c = *cursor;
                if (c == -1 || std::isdigit(static_cast<unsigned char>(c)) == 0) {
                    value = 0;
                } else {
                    while (true) {
                        const char sum = static_cast<char>(c + 10 * static_cast<int32_t>(value));
                        c = cursor[1];
                        value = static_cast<uint8_t>(sum - 48);
                        if (c == -1) break;
                        ++cursor;
                        if (std::isdigit(static_cast<unsigned char>(c)) == 0) break;
                    }
                }
                result = static_cast<int32_t>(value);
            }
        }
    }
    if (lowered != nullptr) glitch::core::releaseProcessBuffer(lowered);
    glitch::core::setProcessBufferHeapExcessEnabled(excess);
    return result;
}

// 0x5e8144 _ZNK6glitch5video15CTextureManager14getImageLoaderEPNS_2io9IReadFileE
// The loader that recognises the file: first by the file contents (every loader's isALoadableFileFormat, with the position put
// back after each probe), then by the file name's extension. Empty when none does.
boost::intrusive_ptr<IImageLoader> CTextureManager::getImageLoader(io::IReadFile* file) const {
    if (file == nullptr) return boost::intrusive_ptr<IImageLoader>();
    const long position = file->getPos();  // vtable +0x24
    for (const boost::intrusive_ptr<IImageLoader>& loader : m_externalImageLoaders) {  // +0x30
        const bool loadable = loader->isALoadableFileFormat(file);  // vtable +0x10
        file->seek(position, false);                                 // vtable +0x18
        if (loadable) return loader;
    }
    for (const boost::intrusive_ptr<IImageLoader>& loader : m_externalImageLoaders) {
        if (loader->isALoadableFileExtension(file->getFileName())) return loader;  // vtable +0x0c, file vtable +0x28
    }
    return boost::intrusive_ptr<IImageLoader>();
}

// 0x5e82c0 _ZN6glitch5video15CTextureManager16writeImageToFileERKN5boost13intrusive_ptrINS0_6CImageEEEPKcj
// Writes the image with the first writer that accepts the file name's extension and manages to write it.
bool CTextureManager::writeImageToFile(const boost::intrusive_ptr<CImage>& image, const char* filename, uint32_t flags) {
    for (size_t i = 0; i < m_externalImageWriters.size(); ++i) {  // +0x3c
        IImageWriter* writer = m_externalImageWriters[i].get();
        if (writer->isAWriteableFileExtension(filename)) {  // vtable +0x0c
            io::IWriteFile* out = fileSystemOf(m_fileSystem)->createAndWriteFile(filename, false);  // fs vtable +0x14
            if (out != nullptr) {
                const bool written = writer->writeImage(out, image, flags);  // vtable +0x10
                out->drop();
                if (written) return true;
            }
        }
    }
    return false;
}

// 0x5e913c _ZN6glitch5video15CTextureManager19createImageFromFileEPNS_2io9IReadFileE
boost::intrusive_ptr<CImage> CTextureManager::createImageFromFile(io::IReadFile* file) {
    boost::intrusive_ptr<IImageLoader> loader = getImageLoader(file);
    if (loader.get() != nullptr) return loader->loadImage(file);  // vtable +0x14
    return boost::intrusive_ptr<CImage>();
}

// 0x5e9198 _ZN6glitch5video15CTextureManager19createImageFromFileEPKc
// Opens the file through the file system and loads it as an image; an unopenable file logs "Could not open file of image".
boost::intrusive_ptr<CImage> CTextureManager::createImageFromFile(const char* filename) {
    boost::intrusive_ptr<CImage> result;
    if (filename != nullptr) {
        io::IReadFile* file = fileSystemOf(m_fileSystem)->createAndOpenFile(filename);  // fs vtable +0x0c
        if (file != nullptr) {
            result = createImageFromFile(file);
            file->drop();
        } else {
            glitch::os::Printer::log("Could not open file of image", filename, glitch::ELL_WARNING);
        }
    }
    return result;
}

// 0x5e8f2c _ZNK6glitch5video15CTextureManager11findTextureEPKc
// The texture registered under the name (empty for an unknown one).
boost::intrusive_ptr<ITexture> CTextureManager::findTexture(const char* name) const { return get(getId(name))->value; }

// 0x5e94a8 _ZN6glitch5video15CTextureManager13renameTextureERKN5boost13intrusive_ptrINS0_8ITextureEEEPKc
// Gives the texture the new name and renames its entry in the collection; when the collection refuses (the name exists) the
// texture gets its old name back. Returns the collection's answer.
bool CTextureManager::renameTexture(const boost::intrusive_ptr<ITexture>& texture, const char* name) {
    ITexture* raw = texture.get();
    const uint16_t id = getId(raw->m_name.c_str());  // name at +0x1c
    const std::string oldName(raw->m_name);
    raw->m_name.assign(name);
    const bool renamed = rename(id, raw->m_name.c_str(), false);
    if (!renamed) raw->m_name = oldName;
    return renamed;
}

// 0x5e97e0 _ZN6glitch5video15CTextureManager28clearDriverSpecificResourcesEv
// Visits every registered texture in name order and unbinds the ones that are bound (vtable +0x10 when flag 8 of +0x3f is set).
void CTextureManager::clearDriverSpecificResources() {
    for (auto it = ids.begin(); it != ids.end(); ++it) {
        const boost::intrusive_ptr<ITexture> texture = get(it->second.id)->value;
        if (texture.get() != nullptr && (texture->m_flags3f & ITexture::kFlagBound) != 0) texture->unbindImpl();
    }
}

// 0x5e9908 _ZNK6glitch5video15CTextureManager11getHashNameEPKc
// The key a texture is registered under for a file name, by the manager's option word (+0x74): bit 3 uses the name of the opened
// file (the name itself when the file cannot be opened), otherwise bit 2 uses the file system's absolute path of the name,
// otherwise the name itself.
std::string CTextureManager::getHashName(const char* name) const {
    const uint32_t options = unk_74;
    if ((options & 8u) != 0) {
        io::IReadFile* file = fileSystemOf(m_fileSystem)->createAndOpenFile(name);  // fs vtable +0x0c
        if (file == nullptr) return std::string(name);
        std::string result(file->getFileName());  // file vtable +0x28
        file->drop();
        return result;
    }
    if ((options & 4u) == 0) return std::string(name);
    return fileSystemOf(m_fileSystem)->getAbsolutePath(glitch::core::stringc(name)).c_str();  // fs vtable +0x34
}

// 0x5ebd7c _ZNK6glitch5video15CTextureManager19makeColorKeyTextureERKN5boost13intrusive_ptrINS0_8ITextureEEENS_4core10position2dIiEE
// Turns the colour of the pixel at `keyPixel` into the colour key: every pixel with that colour (compared with the alpha
// forced opaque) becomes 0 (transparent), every other pixel gets full alpha. Formats 8 (16 bit, alpha in bit 15) and 12 (32 bit,
// alpha in the low byte) only.
void CTextureManager::makeColorKeyTexture(const boost::intrusive_ptr<ITexture>& texture, core::position2d<int32_t> keyPixel) const {
    ITexture* target = texture.get();
    if (target == nullptr) return;
    const int32_t format = static_cast<int32_t>((target->m_flags38 >> 4) & 0x3f);
    if (format != 8 && format != 12) {
        glitch::os::Printer::log("Error: Unsupported texture color format for making color key channel.", glitch::ELL_ERROR);
        return;
    }
    SMapTextureWrite map;
    map.reset(texture, 0, 0, 4);
    uint8_t* data = map.mapped;
    if (data == nullptr) {
        glitch::os::Printer::log("Could not lock texture for making color key channel.", glitch::ELL_ERROR);
        return;
    }
    if (format == 8) {
        const uint32_t words = pixel_format::computePitch(8, target->m_width) >> 1;
        const int32_t height = static_cast<int32_t>(target->m_height);
        uint16_t key;
        std::memcpy(&key, data + 2 * (keyPixel.X + keyPixel.Y * static_cast<int32_t>(target->m_width)), 2);
        key = static_cast<uint16_t>((key & 0x7fffu) | 0x8000u);
        for (int32_t row = 0; row < height; ++row) {
            uint16_t* pixel = reinterpret_cast<uint16_t*>(data);
            for (uint32_t i = 0; i != words; ++i) {
                uint16_t value = static_cast<uint16_t>((pixel[i] & 0x7fffu) | 0x8000u);
                if (value == key) value = 0;
                pixel[i] = value;
            }
            data += 2 * words;
        }
    } else {
        const uint32_t words = pixel_format::computePitch(12, target->m_width) >> 2;
        const int32_t height = static_cast<int32_t>(target->m_height);
        uint32_t key;
        std::memcpy(&key, data + 4 * (keyPixel.X + keyPixel.Y * static_cast<int32_t>(target->m_width)), 4);
        key |= 0xffu;
        for (int32_t row = 0; row < height; ++row) {
            uint32_t* pixel = reinterpret_cast<uint32_t*>(data);
            for (uint32_t i = 0; i != words; ++i) {
                uint32_t value = pixel[i] | 0xffu;
                if (value == key) value = 0;
                pixel[i] = value;
            }
            data += 4 * words;
        }
    }
}

// 0x5ebf8c _ZNK6glitch5video15CTextureManager19makeColorKeyTextureERKN5boost13intrusive_ptrINS0_8ITextureEEENS0_6SColorE
// The same with the key colour given: for format 8 it is packed into five-bit channels (bytes 0, 1, 2 of the colour into the
// bits 10-14, 5-9 and 0-4), for format 12 the four bytes are rearranged (colour bytes 2, 1, 0, 3 from the top) with the low
// byte forced to 0xff.
void CTextureManager::makeColorKeyTexture(const boost::intrusive_ptr<ITexture>& texture, SColor color) const {
    ITexture* target = texture.get();
    const uint32_t byte0 = color.color & 0xffu;
    const uint32_t byte1 = (color.color >> 8) & 0xffu;
    const uint32_t byte2 = (color.color >> 16) & 0xffu;
    const uint32_t byte3 = color.color >> 24;
    if (target == nullptr) return;
    const int32_t format = static_cast<int32_t>((target->m_flags38 >> 4) & 0x3f);
    if (format != 8 && format != 12) {
        glitch::os::Printer::log("Error: Unsupported texture color format for making color key channel.", glitch::ELL_ERROR);
        return;
    }
    SMapTextureWrite map;
    map.reset(texture, 0, 0, 4);
    uint8_t* data = map.mapped;
    if (data == nullptr) {
        glitch::os::Printer::log("Could not lock texture for making color key channel.", glitch::ELL_ERROR);
        return;
    }
    if (format == 8) {
        const uint32_t words = pixel_format::computePitch(8, target->m_width) >> 1;
        const int32_t height = static_cast<int32_t>(target->m_height);
        const uint32_t packed = ((byte0 & 0xf8u) << 7) | ((byte3 & 0x80u) << 8) | (byte2 >> 3) | (4u * (byte1 & 0xf8u));
        const uint16_t key = static_cast<uint16_t>((packed & 0x7fffu) | 0x8000u);
        for (int32_t row = 0; row < height; ++row) {
            uint16_t* pixel = reinterpret_cast<uint16_t*>(data);
            for (uint32_t i = 0; i != words; ++i) {
                uint16_t value = static_cast<uint16_t>((pixel[i] & 0x7fffu) | 0x8000u);
                if (value == key) value = 0;
                pixel[i] = value;
            }
            data += 2 * words;
        }
    } else {
        const uint32_t words = pixel_format::computePitch(12, target->m_width) >> 2;
        const int32_t height = static_cast<int32_t>(target->m_height);
        const uint32_t key = ((byte2 << 24) | (byte1 << 16) | (byte0 << 8) | byte3) | 0xffu;
        for (int32_t row = 0; row < height; ++row) {
            uint32_t* pixel = reinterpret_cast<uint32_t*>(data);
            for (uint32_t i = 0; i != words; ++i) {
                uint32_t value = pixel[i] | 0xffu;
                if (value == key) value = 0;
                pixel[i] = value;
            }
            data += 4 * words;
        }
    }
}

// 0x5eb334 _ZNK6glitch5video15CTextureManager20makeNormalMapTextureERKN5boost13intrusive_ptrINS0_8ITextureEEEf
// Turns a height image (the average of the colour channels, or, for the 32-bit format, the third byte) into a normal map in
// place: for every pixel the height differences to the left / right and upper / lower neighbours (with wrap-around at the
// edges of the copy of the image) are scaled by amplitude / 255, the normal is the cross product of the two difference vectors,
// normalised and packed as (n * 0.5 + 0.5) * 255 into the channels (format 8: A1R5G5B5; format 12: height in byte 0, x, z, y in
// bytes 1, 2, 3). The texture's mip chain is regenerated.
// Deviation: the original reads one pixel past the copy for the right neighbour of the last column and the lower neighbour of
// the last row; those reads give 0 here.
void CTextureManager::makeNormalMapTexture(const boost::intrusive_ptr<ITexture>& texture, float amplitude) const {
    ITexture* target = texture.get();
    if (target == nullptr) return;
    const int32_t format = static_cast<int32_t>((target->m_flags38 >> 4) & 0x3f);
    if (format != 8 && format != 12) {
        glitch::os::Printer::log("Error: Unsupported texture color format for making normal map.", glitch::ELL_ERROR);
        return;
    }
    const uint32_t width = target->m_width;
    const uint32_t height = target->m_height;
    SMapTextureWrite map;
    map.reset(texture, 0, 0, 4);
    uint8_t* data = map.mapped;
    if (data == nullptr) {
        glitch::os::Printer::log("Could not lock texture for making normal map.", glitch::ELL_ERROR);
        return;
    }
    const float scale = amplitude / 255.0f;  // v9
    const float rowScale = static_cast<float>(height) / static_cast<float>(width);     // v11 (height / width)
    const float columnScale = static_cast<float>(width) / static_cast<float>(height);  // v65 (width / height)
    if (format == 12) {
        const uint32_t pitch = pixel_format::computePitch(12, width) >> 2;
        const size_t total = static_cast<size_t>(pitch) * height;
        uint32_t* copy = new uint32_t[total ? total : 1];
        std::memcpy(copy, data, total * 4);
        auto sample = [&](size_t index) -> uint32_t { return index < total ? copy[index] : 0u; };
        if (pitch != 0) {
            int32_t xMinus = -1;       // v48
            uint32_t xPlus = 1;        // v61
            uint32_t x = 0;            // v44
            uint8_t* column = data;    // v66
            int32_t rows = static_cast<int32_t>(target->m_height);  // v30
            while (true) {
                if (rows > 0) {
                    const float dx0 = (columnScale * static_cast<float>(x)) - (columnScale * static_cast<float>(x));  // v63
                    const float dx = (static_cast<float>(static_cast<uint32_t>(xMinus)) * columnScale) -
                                     (static_cast<float>(xPlus) * columnScale);  // v52
                    uint8_t* out = column;
                    int32_t y = 0;
                    while (true) {
                        int32_t left = static_cast<int32_t>(pitch) - 1;
                        const size_t rowStart = static_cast<size_t>(pitch) * static_cast<size_t>(y);
                        if (xMinus >= 0) left = xMinus;
                        const int32_t next = y + 1;
                        int32_t previous = y - 1;
                        const float heightLeft = scale * static_cast<float>(static_cast<uint8_t>(sample(rowStart + left) >> 16));
                        const float row = static_cast<float>(y) * rowScale;  // v56
                        const float heightRight = scale * static_cast<float>(static_cast<uint8_t>(sample(rowStart + xPlus) >> 16));
                        const float heightDown =
                            scale * static_cast<float>(static_cast<uint8_t>(sample(x + static_cast<size_t>(pitch) * next) >> 16));
                        const float rowBefore = static_cast<float>(previous) * rowScale;  // v37
                        if (previous < 0) previous = rows - 1;
                        const float dh = heightDown - scale * static_cast<float>(static_cast<uint8_t>(
                                                           sample(x + static_cast<size_t>(pitch) * previous) >> 16));  // v38
                        const float dy = rowBefore - static_cast<float>(next) * rowScale;                              // v39
                        core::vector3d<float> n;
                        n.X = ((row - row) * -dh) + (dy * (heightLeft - heightRight));
                        n.Y = (dx * -dy) + ((row - row) * dx0);
                        n.Z = ((heightLeft - heightRight) * -dx0) + (dh * dx);
                        n.normalize();
                        const float halfX = n.X * 0.5f;
                        const float halfZ = n.Z * 0.5f;
                        const float packedX = (halfX + 0.5f) * 255.0f;
                        const float packedY = ((n.Y * 0.5f) + 0.5f) * 255.0f;
                        const float packedZ = (halfZ + 0.5f) * 255.0f;
                        const uint32_t centre = static_cast<uint8_t>(sample(rowStart + x) >> 16);
                        uint32_t pixel = static_cast<uint32_t>(static_cast<uint8_t>(floatToUnsigned(static_cast<float>(centre))));
                        pixel |= static_cast<uint32_t>(static_cast<uint8_t>(floatToUnsigned(packedX))) << 8;
                        pixel |= static_cast<uint32_t>(static_cast<uint8_t>(floatToUnsigned(packedZ))) << 16;
                        pixel |= static_cast<uint32_t>(static_cast<uint8_t>(floatToUnsigned(packedY))) << 24;
                        std::memcpy(out, &pixel, 4);
                        out += 4 * static_cast<size_t>(pitch);
                        rows = static_cast<int32_t>(target->m_height);
                        y = next;
                        if (rows <= next) break;
                    }
                }
                ++x;
                ++xMinus;
                column += 4;
                if (pitch <= xPlus) break;
                ++xPlus;
            }
        }
        delete[] copy;
    } else {
        const uint32_t pitch = pixel_format::computePitch(static_cast<E_PIXEL_FORMAT>(format), width) >> 1;
        const size_t total = static_cast<size_t>(pitch) * height;
        uint16_t* copy = new uint16_t[total ? total : 1];
        std::memcpy(copy, data, total * 2);
        auto sample = [&](size_t index) -> uint32_t { return index < total ? copy[index] : 0u; };
        if (pitch != 0) {
            int32_t xMinus = -1;       // v49
            uint32_t x = 0;            // v51
            uint32_t xPlus = 1;        // v60
            uint8_t* column = data;    // v64
            int32_t rows = static_cast<int32_t>(target->m_height);  // v15
            while (true) {
                if (rows > 0) {
                    const float dx0 = (columnScale * static_cast<float>(x)) - (columnScale * static_cast<float>(x));  // v62
                    const float dx = (static_cast<float>(static_cast<uint32_t>(xMinus)) * columnScale) -
                                     (static_cast<float>(xPlus) * columnScale);  // v55
                    uint8_t* out = column;
                    int32_t previousRow = -1;  // v16
                    int32_t j = 0;
                    while (true) {
                        int32_t left = static_cast<int32_t>(pitch) - 1;
                        const size_t rowStart = static_cast<size_t>(pitch) * static_cast<size_t>(j);
                        if (xMinus >= 0) left = xMinus;
                        const float heightLeft = scale * static_cast<float>(gray555(sample(rowStart + left)));
                        const int32_t next = j + 1;
                        const float heightRight = scale * static_cast<float>(gray555(sample(rowStart + xPlus)));
                        const int32_t upper = previousRow == -1 ? rows - 1 : previousRow;
                        const float rowBefore = static_cast<float>(previousRow) * rowScale;  // v25
                        ++previousRow;
                        const uint32_t lowerPixel = sample(x + static_cast<size_t>(pitch) * next);
                        const float dh = (scale * static_cast<float>(gray555(sample(x + static_cast<size_t>(pitch) * upper)))) -
                                         (scale * static_cast<float>(gray555(lowerPixel)));  // v47
                        const float dy = rowBefore - static_cast<float>(next) * rowScale;     // v27
                        const float line = static_cast<float>(j) * rowScale;                  // (j * vh) - (j * vh) below
                        core::vector3d<float> n;
                        n.X = ((line - line) * -dh) + (dy * (heightLeft - heightRight));
                        n.Y = (dx * -dy) + ((line - line) * dx0);
                        n.Z = ((heightLeft - heightRight) * -dx0) + (dh * dx);
                        n.normalize();
                        const float halfX = n.X * 0.5f;
                        const float packedX = (halfX + 0.5f) * 255.0f;
                        const float packedY = ((n.Y * 0.5f) + 0.5f) * 255.0f;
                        const float packedZ = ((n.Z * 0.5f) + 0.5f) * 255.0f;
                        const uint32_t blue = static_cast<uint8_t>(floatToUnsigned(packedY)) >> 3;
                        const uint32_t red = (floatToUnsigned(packedX) & 0xf8u) << 7;
                        const uint32_t green = 4u * (floatToUnsigned(packedZ) & 0xf8u);
                        const uint16_t pixel = static_cast<uint16_t>(0x8000u | blue | red | green);
                        std::memcpy(out, &pixel, 2);
                        out += 2 * static_cast<size_t>(pitch);
                        rows = static_cast<int32_t>(target->m_height);
                        j = next;
                        if (rows <= next) break;
                    }
                }
                ++x;
                ++xMinus;
                column += 2;
                if (pitch <= xPlus) break;
                ++xPlus;
            }
        }
        delete[] copy;
    }
    texture->generateMipmaps();
}

// 0x5ecba4 _ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb
// Reads a texture from an open file with the loader that recognises it (the manager's option word gets bit 0). A loader without a
// texture interface produces an image, which becomes a texture; one with it makes the texture from the header, lets the driver
// create it, empties its data block and has the loader read the data. `format` receives the file's pixel format. Failures log
// "loading %s: corrupt header" / "failed to load data" and give an empty result. The last parameter is not used.
boost::intrusive_ptr<ITexture> CTextureManager::loadTextureFromFile(io::IReadFile* file, const char* name, E_PIXEL_FORMAT& format,
                                                                    bool /*flag*/) {
    unk_74 |= 1u;  // +0x74
    boost::intrusive_ptr<ITexture> result;
    boost::intrusive_ptr<IImageLoader> loader = getImageLoader(file);
    if (loader.get() == nullptr) return result;
    if (!loader->hasTextureLoadInterface()) {  // vtable +0x18
        boost::intrusive_ptr<CImage> image = loader->loadImage(file);  // vtable +0x14
        if (image.get() != nullptr) {
            format = image->m_format;  // +0x20
            result = createTextureFromImage(name, image, 0);
        }
        return result;
    }
    STextureDesc desc;
    desc.type = 0;
    desc.format = 12;
    desc.unknown08 = 0;
    desc.unknown0c = 0;
    desc.width = 1;
    desc.height = 1;
    desc.depth = 1;
    desc.flag = 0;
    desc.flag1d = 0;
    desc.unloadable = 0;
    if (!loader->loadTextureHeader(file, desc)) {  // vtable +0x1c
        glitch::os::Printer::logf(glitch::ELL_ERROR, "loading %s: corrupt header", file->getFileName());
        return boost::intrusive_ptr<ITexture>();
    }
    const uint8_t fileFlag = desc.flag;  // v9
    format = static_cast<E_PIXEL_FORMAT>(desc.format);
    IVideoDriver* driver = m_driver;  // +0x28
    uint32_t options = unk_74;
    uint8_t wantsLevels = fileFlag != 0 ? static_cast<uint8_t>((options >> 6) & 1u) : static_cast<uint8_t>(0);  // v12
    desc.flag = (driver->m_options & 0x10u) != 0 ? static_cast<uint8_t>(1) : wantsLevels;
    if ((options & 0x20u) != 0) {
        options = 3;
        desc.unknown0c = options;
    } else if ((options & 0x10u) != 0) {
        desc.unknown0c = 1;
    }
    result = driver->createTexture(name, desc);
    desc.flag = fileFlag;
    if (result.get() == nullptr) return boost::intrusive_ptr<ITexture>();
    result->setData(nullptr, true, wantsLevels != 1);
    if ((driver->m_capabilities & 0x2000u) != 0) {
        const uint32_t flags = unk_74;
        if ((flags & 2u) != 0 && (flags & 1u) == 0) {
            bool optionWasSet = (driver->m_options & 0x2000u) != 0;
            if (optionWasSet) driver->setOption(0x2000, false);  // vtable +0xa0
            result->bind(false);
            if (optionWasSet != (((driver->m_options >> 13) & 1u) != 0)) driver->setOption(0x2000, optionWasSet);
        }
    }
    if (!loader->loadTextureData(file, result, desc)) {  // vtable +0x20
        glitch::os::Printer::logf(glitch::ELL_ERROR, "loading %s: failed to load data", file->getFileName());
        return boost::intrusive_ptr<ITexture>();
    }
    if ((result->m_flags3f & ITexture::kFlagBound) != 0) {
        if (result->m_data != nullptr && (unk_74 & 1u) == 0) result->bind(true);
    } else if ((unk_74 & 2u) != 0) {
        result->bind(((unk_74 ^ 1u) & 1u) != 0);
    }
    return result;
}

// 0x5ecf34 _ZN6glitch5video15CTextureManager18getTextureInternalEPNS_2io9IReadFileERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEb
// Loads the texture from the file (a file that starts with the zip signature is opened as an archive and the member with the
// file's own name is read instead) and registers it under the file's name with the loader's pixel format. The last parameter
// is not used.
boost::intrusive_ptr<ITexture> CTextureManager::getTextureInternal(io::IReadFile* file, const core::stringc& name, bool /*flag*/) {
    const uint32_t zipSignature = 0x04034b50u;  // 67324752
    uint32_t magic = 0;
    file->read(&magic, 4);  // vtable +0x0c
    io::IReadFile* inner;
    if (magic == zipSignature) {
        file->seek(0, false);
        io::CZipReader zip(file, true, true);
        inner = zip.openFile(file->getFileName());
    } else {
        file->seek(0, false);
        inner = file;
    }
    E_PIXEL_FORMAT format = 0;
    boost::intrusive_ptr<ITexture> result = loadTextureFromFile(inner, name.c_str(), format, false);
    if (result.get() != nullptr) {
        glitch::os::Printer::log("Loaded texture", file->getFileName(), glitch::ELL_INFORMATION);
        addTexture(result, format, inner->getFileName());
    } else {
        glitch::os::Printer::log("Could not load texture", file->getFileName(), glitch::ELL_ERROR);
    }
    if (inner != file) inner->drop();
    return result;
}

// 0x5ed0c4 _ZN6glitch5video15CTextureManager10getTextureEPNS_2io9IReadFileEPKcb
// The texture registered under the name (the file's hash name when no name is given), loaded from the open file if there is none yet.
boost::intrusive_ptr<ITexture> CTextureManager::getTexture(io::IReadFile* file, const char* name, bool /*flag*/) {
    boost::intrusive_ptr<ITexture> result;
    if (file != nullptr) {
        const std::string key = name != nullptr ? std::string(name) : getHashName(file->getFileName());
        result = findTexture(key.c_str());
        if (result.get() == nullptr) result = getTextureInternal(file, core::stringc(key.c_str()), false);
    }
    return result;
}

// 0x5ed210 _ZN6glitch5video15CTextureManager10getTextureEPKcS3_
// The texture of a file name: registered under the alias when one is given (otherwise under the file's hash name), loaded
// through the file system when it is not registered yet ("Could not find texture file" when the file does not open).
boost::intrusive_ptr<ITexture> CTextureManager::getTexture(const char* path, const char* alias) {
    boost::intrusive_ptr<ITexture> result;
    const std::string key = alias != nullptr ? std::string(alias) : getHashName(path);
    result = findTexture(key.c_str());
    if (result.get() == nullptr) {
        io::IReadFile* file = fileSystemOf(m_fileSystem)->createAndOpenFile(path);  // fs vtable +0x0c
        if (file != nullptr) {
            result = getTextureInternal(file, core::stringc(key.c_str()), false);
            file->drop();
        } else {
            glitch::os::Printer::log("Could not find texture file", path, glitch::ELL_ERROR);
        }
    }
    return result;
}

// 0x5ed380 _ZN6glitch5video15CTextureManager19rmReloadDataTextureENS1_9SIteratorEPKc
// Reloads the data of the registered texture the iterator stands on from the file it came from (the alias name kept in its
// properties): the image is loaded with the loader that recognises it and written into the existing texture, converting level by
// level when the pixel format differs. Textures of loaders with a texture interface are not handled (the original only prints
// "Check this part if it is working, removing the define"). The texture ends with bit 7 of its flag byte set.
void CTextureManager::rmReloadDataTexture(SIterator iterator, const char* name) {
    boost::intrusive_ptr<ITexture> texture = get(iterator.position->second.id)->value;
    const detail::texturemanager::STextureProperties* properties = &iterator.position->second;
    const char* fileName = properties->unk00.empty() ? nullptr : properties->unk00.c_str();
    // The original never gives the opened file back.
    io::IReadFile* file = fileSystemOf(m_fileSystem)->createAndOpenFile(fileName);  // fs vtable +0x0c
    boost::intrusive_ptr<IImageLoader> loader = getImageLoader(file);
    if (loader.get() == nullptr) return;
    if (loader->hasTextureLoadInterface()) {
        glitch::os::Printer::print("Check this part if it is working, removing the define");
        return;
    }
    boost::intrusive_ptr<CImage> image = loader->loadImage(file);
    if (image.get() == nullptr) return;
    CImage* const img = image.get();
    bool wantsMips = img->m_hasMipmaps != 0 ? (((unk_74) >> 6) & 1u) != 0 : false;
    if (texture.get() == nullptr) return;  // the original goes on and dereferences the empty texture
    ITexture* const tex = texture.get();
    int32_t levels = floorLog2(static_cast<int32_t>(img->m_width));
    const int32_t heightLevels = floorLog2(static_cast<int32_t>(img->m_height));
    if (heightLevels >= levels) levels = heightLevels;
    const bool rangeSizes = levels == static_cast<int32_t>(img->m_mipLevels) ? !wantsMips : true;  // v21
    uint8_t* const imageData = img->m_data;
    auto textureFormat = [&]() { return static_cast<E_PIXEL_FORMAT>((tex->m_flags38 >> 4) & 0x3f); };
    auto finish = [&]() {
        if ((unk_74 & 2u) != 0) tex->bind(((unk_74 ^ 1u) & 1u) != 0);
        tex->m_flags3f = static_cast<uint8_t>(tex->m_flags3f | 0x80u);
    };
    if (imageData == nullptr) {
        tex->setData(nullptr, false, rangeSizes);
        finish();
        return;
    }
    if (textureFormat() == img->m_format) {
        const uint32_t options = unk_74;
        if ((options & 1u) == 0 && (options & 2u) != 0) {
            bool shared = img->m_pitch == pixel_format::computePitch(textureFormat(), tex->m_width);
            if (shared && tex->m_mipCount3e > 1 && !rangeSizes && tex->getSizeInBytes() != img->m_dataSize) shared = false;
            if (shared) {
                tex->setData(imageData, false, rangeSizes);
                finish();
                return;
            }
        }
    }
    size_t size;
    if (rangeSizes) {
        size = static_cast<size_t>(tex->m_levelSizes[1] - tex->m_levelSizes[0]);
    } else {
        size = tex->getSizeInBytes();
    }
    uint8_t* const block = new uint8_t[size];
    const bool owned = block != imageData;
    tex->setData(block, owned, rangeSizes);
    if (!owned) {
        finish();
        return;
    }
    if (textureFormat() == img->m_format) {
        if ((unk_74 & 1u) == 0) {
            bool repack = img->m_pitch != pixel_format::computePitch(textureFormat(), tex->m_width);
            if (!repack && tex->m_mipCount3e > 1 && tex->getSizeInBytes() != img->m_dataSize) repack = true;
            if (repack) glitch::os::Printer::logf(glitch::ELL_WARNING, "adding texture %s: repacking", name);
        }
    } else {
        glitch::os::Printer::logf(glitch::ELL_WARNING, "adding texture %s: slow path pixel format conversion from %s to %s", name,
                                  pixelFormatName(img->m_format), pixelFormatName(textureFormat()));
    }
    int32_t width = static_cast<int32_t>(tex->m_width);
    int32_t height = static_cast<int32_t>(tex->m_height);
    const uint32_t levelCount = rangeSizes ? 1u : tex->m_mipCount3e;
    for (uint32_t level = 0; level < levelCount; ++level) {
        SMapTextureWrite map;
        map.reset(texture, static_cast<uint8_t>(level), 0, 4);
        const void* source = level != 0 ? img->m_mipData[level - 1] : static_cast<const void*>(imageData);
        if (pixel_format::convert(img->m_format, source, 0, textureFormat(), map.mapped,
                                  tex->getPitch(static_cast<uint8_t>(level)), static_cast<uint32_t>(width),
                                  static_cast<uint32_t>(height), false) == 0) {
            return;
        }
        width >>= 1;
        height >>= 1;
        if (width < 1) width = 1;
        if (height < 1) height = 1;
    }
    finish();
}

}  // namespace glitch::video
