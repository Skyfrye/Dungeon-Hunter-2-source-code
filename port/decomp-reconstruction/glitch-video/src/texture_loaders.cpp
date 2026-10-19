#include "glitch-video/texture_loaders.hpp"

#include <cstring>
#include <new>
#include <vector>

#include "glitch-video/deps/os_logging.hpp"
#include "glitch-video/pixel_format.hpp"
#include "glitch-video/pixel_format_convert.hpp"

namespace glitch::video {

// 0x602c84 _ZN6glitch5video12IImageLoader23hasTextureLoadInterfaceEv
bool IImageLoader::hasTextureLoadInterface() { return false; }

// 0x602c8c _ZNK6glitch5video12IImageLoader17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE
bool IImageLoader::loadTextureHeader(io::IReadFile*, STextureDesc&) const { return false; }

// 0x602c9c _ZN6glitch5video15CImageLoaderATC23hasTextureLoadInterfaceEv
bool CImageLoaderATC::hasTextureLoadInterface() { return true; }

// 0x602ca4 _ZNK6glitch5video15CImageLoaderATC9CDataInfo15getFileDataSizeEv
int32_t CImageLoaderATC::CDataInfo::getFileDataSize() const { return m_fileDataSize; }

// 0x602cc4 _ZNK6glitch5video15CImageLoaderATC21isALoadableFileFormatEPNS_2io9IReadFileE
// Files shorter than 8 bytes are rejected. The 16-bit value at offset 4 is read
// as b0 | b1 << 8 and accepted when (value + 0x736e) & 0xffff < 2.
bool CImageLoaderATC::isALoadableFileFormat(io::IReadFile* file) const {
    if (file == nullptr || file->getSize() < 8) return false;
    uint8_t b0 = 0, b1 = 0;
    file->seek(4, false);
    file->read(&b0, 1);
    file->read(&b1, 1);
    uint16_t value = static_cast<uint16_t>(b0 | (b1 << 8));
    return static_cast<uint16_t>(value + 0x736e) < 2;
}

// 0x602e34 _ZNK6glitch5video15CImageLoaderATC17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE
// Header layout (little-endian): width (2 bytes), height (2), magic (2), one unused 2-byte field, data
// size (4). The data block is read and must be complete; a short read logs "corrupt ATC file" with the
// file's name as the hint and returns false. Reconstructed details: the pointer to the data block and the
// descriptor writes match the listing (see the note in the body). Deviation: the transient data block is a
// std::vector here, where the original takes it from operator new[] and returns it with LC_API_FREE (the
// observable result is the same: the block is released on both paths).
bool CImageLoaderATC::loadTextureHeader(io::IReadFile* file, STextureDesc& desc) const {
    file->seek(0, false);
    uint8_t width[2] = {};
    uint8_t height[2] = {};
    uint8_t magic[2] = {};
    uint8_t unused[2] = {};
    uint8_t sizeBytes[4] = {};
    file->read(width, 2);
    file->read(height, 2);
    file->read(magic, 2);
    file->read(unused, 2);
    file->read(sizeBytes, 4);
    const uint32_t dataSize = static_cast<uint32_t>(sizeBytes[0]) | (static_cast<uint32_t>(sizeBytes[1]) << 8) |
                              (static_cast<uint32_t>(sizeBytes[2]) << 16) |
                              (static_cast<uint32_t>(sizeBytes[3]) << 24);
    std::vector<uint8_t> data(dataSize);
    if (static_cast<size_t>(file->read(data.data(), dataSize)) != dataSize) {
        // 0x602f4c..0x602f6c: the file's name (IReadFile vtable +0x28, getFileName) is the hint of the log
        // at level 3 (ELL_ERROR).
        os::Printer::log("corrupt ATC file", file->getFileName(), glitch::ELL_ERROR);
        return false;
    }
    const uint32_t magicValue = static_cast<uint32_t>(magic[0]) | (static_cast<uint32_t>(magic[1]) << 8);
    desc.type = 0;
    desc.unknown08 = 0;
    desc.width = static_cast<uint32_t>(width[0]) | (static_cast<uint32_t>(width[1]) << 8);
    desc.height = static_cast<uint32_t>(height[0]) | (static_cast<uint32_t>(height[1]) << 8);
    desc.depth = 1;
    desc.flag = 1;
    if (magicValue == 35986) {
        desc.format = 21;
    } else if (magicValue == 35987) {
        desc.format = 22;
    }
    return true;
}

// 0x603254 _ZNK6glitch5video15CImageLoaderATC24isALoadableFileExtensionEPKc
bool CImageLoaderATC::isALoadableFileExtension(const char* filename) const {
    return std::strstr(filename, ".atc") != nullptr || std::strstr(filename, ".ATC") != nullptr;
}

// 0x602cac _ZNK6glitch5video15CImageLoaderATC9CDataInfo12getFilePitchEh
uint32_t CImageLoaderATC::CDataInfo::getFilePitch(uint8_t) const { return 0; }

// 0x602cb4 _ZNK6glitch5video15CImageLoaderATC9CDataInfo14isLittleEndianEv
bool CImageLoaderATC::CDataInfo::isLittleEndian() const { return true; }

// 0x602cbc _ZNK6glitch5video15CImageLoaderATC9CDataInfo9needsFlipEv
bool CImageLoaderATC::CDataInfo::needsFlip() const { return false; }

// 0x6041c4 _ZN6glitch5video15CImageLoaderDDS23hasTextureLoadInterfaceEv
bool CImageLoaderDDS::hasTextureLoadInterface() { return true; }

// 0x6042c0 _ZNK6glitch5video15CImageLoaderDDS21isALoadableFileFormatEPNS_2io9IReadFileE
bool CImageLoaderDDS::isALoadableFileFormat(io::IReadFile* file) const {
    if (file == nullptr) return false;
    uint32_t magic = 0;
    file->read(&magic, 4);
    return magic == 0x20534444u;  // "DDS " read little-endian
}

// 0x60490c _ZNK6glitch5video15CImageLoaderDDS24isALoadableFileExtensionEPKc
bool CImageLoaderDDS::isALoadableFileExtension(const char* filename) const {
    return std::strstr(filename, ".dds") != nullptr;
}

// 0x604234 _ZNK6glitch5video15CImageLoaderDDS9CDataInfo12getFilePitchEh
uint32_t CImageLoaderDDS::CDataInfo::getFilePitch(uint8_t mip) const {
    if (mip == 0 && m_header != nullptr && (m_header[1] & 8) != 0) {
        return m_header[4];
    }
    return 0;
}

// 0x60422c _ZNK6glitch5video15CImageLoaderDDS9CDataInfo15getFileDataSizeEv
int32_t CImageLoaderDDS::CDataInfo::getFileDataSize() const { return m_fileDataSize; }

// 0x604258 _ZNK6glitch5video15CImageLoaderDDS9CDataInfo14isLittleEndianEv
bool CImageLoaderDDS::CDataInfo::isLittleEndian() const { return true; }

// 0x604260 _ZNK6glitch5video15CImageLoaderDDS9CDataInfo9needsFlipEv
bool CImageLoaderDDS::CDataInfo::needsFlip() const { return false; }

// 0x605718 _ZN6glitch5video15CImageLoaderPVR23hasTextureLoadInterfaceEv
bool CImageLoaderPVR::hasTextureLoadInterface() { return true; }

// 0x6057e0 _ZNK6glitch5video15CImageLoaderPVR21isALoadableFileFormatEPNS_2io9IReadFileE
// Reads a 52-byte header, then seeks back to the saved position. Accepted when
// the header is complete and either the size word is 0x34 and "PVR!" sits at
// offset 44, or the first 8 bytes are "BTEXpvr".
bool CImageLoaderPVR::isALoadableFileFormat(io::IReadFile* file) const {
    if (file == nullptr) return false;
    int32_t saved = file->getPos();
    uint8_t header[0x34] = {};
    int32_t got = file->read(header, 0x34);
    file->seek(saved, false);
    uint32_t size = 0;
    std::memcpy(&size, header, 4);
    if (got == 0x34 && size == 0x34 && std::memcmp(header + 44, "PVR!", 4) == 0) {
        return true;
    }
    return std::memcmp(header, "BTEXpvr", 8) == 0;
}

// 0x6061b4 _ZNK6glitch5video15CImageLoaderPVR24isALoadableFileExtensionEPKc
bool CImageLoaderPVR::isALoadableFileExtension(const char* filename) const {
    return std::strstr(filename, ".pvr") != nullptr || std::strstr(filename, ".btex") != nullptr;
}

// 0x605720 _ZNK6glitch5video15CImageLoaderPVR9CDataInfo15getFileDataSizeEv
int32_t CImageLoaderPVR::CDataInfo::getFileDataSize() const { return m_fileDataSize; }

// 0x605728 _ZNK6glitch5video15CImageLoaderPVR9CDataInfo12getFilePitchEh
uint32_t CImageLoaderPVR::CDataInfo::getFilePitch(uint8_t) const { return 0; }

// 0x605730 _ZNK6glitch5video15CImageLoaderPVR9CDataInfo14isLittleEndianEv
bool CImageLoaderPVR::CDataInfo::isLittleEndian() const { return true; }

// 0x605738 _ZNK6glitch5video15CImageLoaderPVR9CDataInfo9needsFlipEv
bool CImageLoaderPVR::CDataInfo::needsFlip() const { return false; }

// 0x604b0c _ZNK6glitch5video15CImageLoaderJPG21isALoadableFileFormatEPNS_2io9IReadFileE
bool CImageLoaderJPG::isALoadableFileFormat(io::IReadFile* file) const {
    if (file == nullptr || file->getSize() < 6) return false;
    file->seek(6, false);
    uint32_t magic = 0;
    file->read(&magic, 4);
    return magic == 0x4a464946u || magic == 0x4649464au;
}

// 0x604f6c _ZNK6glitch5video15CImageLoaderJPG24isALoadableFileExtensionEPKc
bool CImageLoaderJPG::isALoadableFileExtension(const char* filename) const {
    return std::strstr(filename, ".jpg") != nullptr || std::strstr(filename, ".JPG") != nullptr;
}

// 0x604adc _ZN6glitch5video15CImageLoaderJPG11init_sourceEP22jpeg_decompress_struct
void CImageLoaderJPG::init_source(jpeg_decompress_struct*) {}

// 0x604ae0 _ZN6glitch5video15CImageLoaderJPG17fill_input_bufferEP22jpeg_decompress_struct
bool CImageLoaderJPG::fill_input_buffer(jpeg_decompress_struct*) { return true; }

// 0x604b08 _ZN6glitch5video15CImageLoaderJPG11term_sourceEP22jpeg_decompress_struct
void CImageLoaderJPG::term_source(jpeg_decompress_struct*) {}

namespace {

// ARM register shifts: a shift of 32 or more gives the sign fill (arithmetic).
int32_t asrArm(int32_t value, uint32_t amount) {
    if (amount >= 32) return value < 0 ? -1 : 0;
    return value >> amount;
}

}  // namespace

// 0x607654 _ZN6glitch5video12IImageLoader19ITextureDataLoadingC2Ev
// 0x6076a8 _ZN6glitch5video12IImageLoader19ITextureDataLoadingC1Ev
// The original only writes the defaults that the member initialisers in the header provide.
IImageLoader::ITextureDataLoading::ITextureDataLoading() = default;

// 0x6077c4 _ZNK6glitch5video12IImageLoader19ITextureDataLoading12getFilePitchEh
uint32_t IImageLoader::ITextureDataLoading::getFilePitch(uint8_t mip) const {
    uint32_t result = m_source->getFilePitch(mip);
    if (result != 0) {
        m_pitchKnown = false;
    } else {
        int32_t width = asrArm(static_cast<int32_t>(m_desc->width), mip);
        if (width < 1) width = 1;
        result = pixel_format::computePitch(m_desc->format, static_cast<uint32_t>(width));
        m_pitchKnown = true;
    }
    return result;
}

// 0x607898 _ZNK6glitch5video12IImageLoader19ITextureDataLoading13getSourceStepEh
// The descriptor path is the size of the mip level; otherwise the step is the product of the texture's two
// dimensions at the mip (each clamped to 1) and the pitch word at +0x1c.
uint32_t IImageLoader::ITextureDataLoading::getSourceStep(uint8_t mip) const {
    if (m_pitchKnown) {
        return pixel_format::computeMipmapSizeInBytes(m_desc->format, m_desc->width, m_desc->height, m_desc->depth, mip,
                                                      m_desc->layoutType == 1);
    }
    const ITexture* texture = m_info->texture;
    int32_t a = asrArm(static_cast<int32_t>(texture->m_height), mip);
    if (a < 1) a = 1;
    int32_t b = asrArm(static_cast<int32_t>(texture->m_depth), mip);
    uint32_t w = static_cast<uint32_t>(m_sourceStep) * static_cast<uint32_t>(a);
    if (b == 0) b = 1;
    return static_cast<uint32_t>(b) * w;
}

// 0x607d1c _ZN6glitch5video12IImageLoader19ITextureDataLoading4readEPvj
uint32_t IImageLoader::ITextureDataLoading::read(void* buffer, uint32_t size) {
    const uint32_t got = static_cast<uint32_t>(m_file->read(buffer, size));
    if (got == size) {
        if (m_info->swapBytes) {
            pixel_format::swapBytes(m_desc->format, buffer, got, m_source->isLittleEndian(), buffer);
        }
        return 1;
    }
    m_flag20 = true;
    os::Printer::logf(ELL_ERROR, "loading %s: read error", m_file->getFileName());
    return 0;
}

namespace {

// 0x607704 / 0x608138 / 0x60791c: the loaders that read the file straight into the texture's own data block.
class IMappedWholeLoading : public IImageLoader::ITextureDataLoading {
public:
    // 0x608138: marks the texture's data dirty when it holds data.
    int32_t preprocess() override {
        ITexture* texture = m_info->texture;
        if (texture->m_data != nullptr) texture->setDataDirty(false);
        return 1;
    }
    // 0x60791c: positions the reader on the face / mip: the size of the level (from the texture's level table), the
    // running offset at +0x18 and the destination at +0x14 with the pitch at +0x1c.
    int32_t process(E_TEXTURE_CUBE_MAP_FACE face, uint8_t mip) override {
        if (face <= 0 && mip == 0) return 1;
        ITexture* texture = m_info->texture;
        uint8_t stepMip;
        uint32_t levelSize;
        if (m_flag21 == 1) {
            stepMip = 0;
            if ((texture->m_flags3f & ITexture::kFlagRangeSizes) != 0) {
                levelSize = static_cast<uint32_t>(texture->m_levelSizes[1] - texture->m_levelSizes[0]);
            } else {
                levelSize = static_cast<uint32_t>(texture->m_levelSizes[texture->m_mipCount3e]);
            }
        } else {
            stepMip = mip != 0 ? static_cast<uint8_t>(mip - 1) : static_cast<uint8_t>(texture->m_mipCount3e - 1);
            levelSize = static_cast<uint32_t>(texture->m_levelSizes[stepMip + 1] - texture->m_levelSizes[stepMip]);
        }
        if (mip != 0) {
            m_unknown18 += levelSize;
        } else {
            const uint32_t pad = (static_cast<uint8_t>(reinterpret_cast<uintptr_t>(m_unknown14)) -
                                  static_cast<uint8_t>(reinterpret_cast<uintptr_t>(m_info->base)) + 127u +
                                  static_cast<uint8_t>(levelSize)) & 0x7fu;
            m_unknown18 = m_info->base + pad;
        }
        if (m_info->hasFileInfo != 0) {
            m_unknown14 += getSourceStep(stepMip);
            m_sourceStep = getFilePitch(mip);
        } else {
            m_unknown14 = m_unknown18;
            m_sourceStep = texture->getPitch(mip);
        }
        return 1;
    }
};

// 0x607754 / 0x6081ec / 0x608308.
class CWholeLoading : public IMappedWholeLoading {
public:
    // 0x608308: reads the whole file data into the texture's block (the file's own data size, or, with no file
    // info, the first level plus five 128-aligned copies for a cube map) and returns the info's result byte.
    int32_t preprocess() override {
        ITexture* texture = m_info->texture;
        if (texture->m_data != nullptr) texture->setDataDirty(false);
        uint8_t* destination = m_unknown14;
        uint32_t size;
        if (m_info->hasFileInfo != 0) {
            size = static_cast<uint32_t>(m_source->getFileDataSize());
        } else {
            const uint32_t faces = (texture->m_flags38 & 3u) == 2u ? 5u : 0u;
            uint32_t base;
            if ((texture->m_flags3f & ITexture::kFlagRangeSizes) != 0) {
                base = static_cast<uint32_t>(texture->m_levelSizes[1] - texture->m_levelSizes[0]);
            } else {
                base = static_cast<uint32_t>(texture->m_levelSizes[texture->m_mipCount3e]);
            }
            size = base + ((base + 127u) & 0xffffff80u) * faces;
        }
        if (read(destination, size) != 0) return m_info->result;
        return 0;
    }
};

}  // namespace

// 0x6041cc (anonymous namespace) _ZN6glitch5video12_GLOBAL__N_113readDDSHeaderEPNS_2io9IReadFileERNS1_23SDDSSurfaceFormatHeaderE
static_assert(sizeof(SDDSSurfaceFormatHeader) == 0x7c, "DDS header is 0x7c bytes");
bool readDDSHeader(io::IReadFile* file, SDDSSurfaceFormatHeader& header) {
    file->seek(4, false);
    int32_t got = file->read(&header, 0x7c);
    if (got == static_cast<int32_t>(header.size)) {
        return header.pixelFormatSize == 0x20;
    }
    return false;
}

// 0x607824 _ZN6glitch5video16SMapTextureWrite5resetERKN5boost13intrusive_ptrINS0_8ITextureEEEhNS0_23E_TEXTURE_CUBE_MAP_FACEENS0_19E_BUFFER_MAP_ACCESSE
// Gives back the mapping of the old texture, takes the new one and maps its level / face for the access (a null texture leaves
// the pointer as it was).
void SMapTextureWrite::reset(const boost::intrusive_ptr<ITexture>& newTexture, uint8_t level, E_TEXTURE_CUBE_MAP_FACE face,
                             E_BUFFER_MAP_ACCESS access) {
    if (mapped != nullptr) texture->unmap();
    texture = newTexture;
    if (newTexture.get() != nullptr) mapped = newTexture->map(access, face, level);
}

namespace {

// IImageLoader::loadData record on the stack: the mapped texture (SMapTextureWrite, +0x00 / +0x04), then the buffer the file is
// read into first (+0x08), the result byte preprocess hands back (+0x0c) and the byte-swap flag (+0x0d). `data` is the view the
// loading classes read through ITextureDataLoading::m_info.
struct SLoadInfo : SMapTextureWrite {
    STextureDataInfo data;
    void sync() {
        data.texture = texture.get();
        data.base = mapped;
        data.hasFileInfo = data.fileBuffer != nullptr ? 1 : 0;
        data.owner = this;
    }
};

// 0x60777c / 0x607de0 / 0x607fa0 (vtable 0x957560): reads the file level by level through the file info, converting each one into
// the texture level it belongs to (the mapping is moved to the face / level for every step).
class CPerLevelRemapLoading : public IImageLoader::ITextureDataLoading {
public:
    // 0x607fa0: reads the first level (the file's data size, or the texture's first level size) into the destination.
    int32_t preprocess() override {
        STextureDataInfo* info = m_info;
        uint8_t* destination = m_unknown14;
        uint32_t size;
        if (info->hasFileInfo != 0) {
            size = static_cast<uint32_t>(m_source->getFileDataSize());
        } else {
            size = static_cast<uint32_t>(info->texture->m_levelSizes[1] - info->texture->m_levelSizes[0]);
        }
        const int32_t result = static_cast<int32_t>(read(destination, size));
        if (result != 0) {
            if (info->texture->m_mipCount3e > 1) return 1;
            if (info->hasFileInfo == 0) {
                m_sourceStep = info->texture->getPitch(0);
                return 1;
            }
            m_sourceStep = getFilePitch(0);
            return 1;
        }
        return result;
    }
    // 0x607de0: maps the face / level, then positions the reader on it: in the file-info form the source moves on by the
    // size of the level(s) before it, otherwise the level is read straight from the file into the mapped memory.
    int32_t process(E_TEXTURE_CUBE_MAP_FACE face, uint8_t mip) override {
        if (face <= 0 && mip == 0) return 1;
        SLoadInfo* load = static_cast<SLoadInfo*>(m_info->owner);  // the record behind the view
        ITexture* texture = load->texture.get();
        const boost::intrusive_ptr<ITexture> hold(texture, true);
        load->reset(hold, mip, face, static_cast<E_BUFFER_MAP_ACCESS>(texture->m_lockCount42 >> 5));
        load->sync();
        m_unknown18 = load->mapped;  // +0x18
        if (load->mapped == nullptr) {
            m_flag20 = true;
            return 0;
        }
        int32_t skip = 0;
        const STextureDesc* desc = reinterpret_cast<const STextureDesc*>(m_desc);
        if (texture->m_mipCount3e <= 1 && desc->flag != 0 && m_flag21 > 1) {
            uint8_t level = 1;
            do {
                getFilePitch(level);
                const uint32_t step = getSourceStep(level);
                level = static_cast<uint8_t>(level + 1);
                skip += static_cast<int32_t>(step);
            } while (m_flag21 > level);
        }
        if (m_info->hasFileInfo != 0) {
            if (skip > 0) {
                m_unknown14 += skip;
                return 1;
            }
            m_sourceStep = getFilePitch(mip);
            m_unknown14 += getSourceStep(mip);
            return 1;
        }
        if ((skip > 0 && !m_file->seek(skip, true)) ||
            read(m_unknown18, static_cast<uint32_t>(texture->m_levelSizes[mip + 1] - texture->m_levelSizes[mip])) == 0) {
            return 0;
        }
        m_sourceStep = texture->getPitch(mip);
        m_unknown14 = m_unknown18;
        return 1;
    }
};

// 0x60772c / 0x60821c (vtable 0x957530): the whole file is read straight into the texture face by face.
class CPerFaceLoading : public IMappedWholeLoading {
public:
    // 0x60821c: reads each face (the size of level 0 for a range table, or the whole chain padded to 128 bytes for the others) to its
    // place; the result byte of the info is returned.
    int32_t preprocess() override {
        ITexture* texture = m_info->texture;
        uint8_t* data = texture->m_data;  // +0x2c
        if (data != nullptr) {
            texture->setDataDirty(false);
            texture = m_info->texture;
            data = texture->m_data;
        }
        uint8_t* const first = data;
        const uint32_t faces = (texture->m_flags38 & 3u) == 2u ? 6u : 1u;
        uint32_t face = 0;
        while (true) {
            int32_t result;
            if ((texture->m_flags3f & ITexture::kFlagRangeSizes) != 0) {
                const uint32_t size = static_cast<uint32_t>(texture->m_levelSizes[1] - texture->m_levelSizes[0]);
                result = static_cast<int32_t>(read(m_unknown14 + (data - first) + static_cast<size_t>(size) * face, size));
            } else {
                const uint32_t size = static_cast<uint32_t>(texture->m_levelSizes[texture->m_mipCount3e]);
                result = static_cast<int32_t>(read(m_unknown14 + (data - first) + texture->m_levelSizes[0] +
                                                       static_cast<size_t>((size + 127u) & 0xffffff80u) * face,
                                                   size));
            }
            if (result == 0) return result;
            ++face;
            if (face >= faces) break;
            data = texture->m_data;
        }
        return m_info->result;
    }
};

}  // namespace

// 0x607a64 _ZN6glitch5video12IImageLoader19ITextureDataLoading4loadEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERNS0_12_GLOBAL__N_19SLoadInfoE
// Takes the file, data info, descriptor and load info, positions the reader on the start of the data (the file buffer when there is
// one, otherwise the mapped memory) and decides how many mip levels the file holds (all the levels the texture can show when
// the descriptor asks for a mip chain). preprocess() reads the first part of the data; then for every face and level process()
// positions the reader and, when the file's format differs from the texture's, the level is converted into the mapped memory.
// Returns 1 unless a read or a conversion failed.
int32_t IImageLoader::ITextureDataLoading::load(io::IReadFile* file, const IDataInfo& source, const STextureDesc& desc,
                                                SLoadInfo& info) {
    m_file = file;                                                                              // +0x04
    m_source = const_cast<IDataInfo*>(&source);                                                  // +0x08
    m_desc = const_cast<STextureLoadInfo*>(reinterpret_cast<const STextureLoadInfo*>(&desc));    // +0x0c
    info.sync();
    m_info = &info.data;  // +0x10
    ITexture* texture = info.texture.get();
    m_unknown18 = info.mapped;  // +0x18
    if (info.data.fileBuffer != nullptr) {
        m_unknown14 = info.data.fileBuffer;  // +0x14
        m_sourceStep = getFilePitch(0);      // +0x1c
    } else {
        m_unknown14 = info.mapped;
        m_sourceStep = pixel_format::computePitch(static_cast<E_PIXEL_FORMAT>((texture->m_flags38 >> 4) & 0x3f), texture->m_width);
    }
    if (desc.flag != 0) {  // +0x1c: the file holds the mip chain
        const uint32_t mipCount = texture->m_mipCount3e;
        if (mipCount <= 1) {
            auto floorLog2 = [](uint32_t v) {
                int32_t n = -1;
                while (v != 0) {
                    v >>= 1;
                    ++n;
                }
                return n;
            };
            int32_t levels = floorLog2(texture->m_width);
            const int32_t heightLog = floorLog2(texture->m_height);
            const int32_t depthLog = floorLog2(texture->m_depth);
            if (heightLog >= levels) levels = heightLog;
            if (levels < depthLog) levels = depthLog;
            m_flag21 = static_cast<uint8_t>(levels + 1);
        } else {
            uint32_t levels = mipCount;
            if ((texture->m_flags3f & ITexture::kFlagRangeSizes) != 0) levels = 1;
            m_flag21 = static_cast<uint8_t>(levels);
        }
    }
    if (preprocess() == 0) return m_flag20 ^ 1;  // vtable +0x08
    uint32_t mips = m_flag21;
    if (mips >= texture->m_mipCount3e) mips = texture->m_mipCount3e;
    const int32_t faces = (texture->m_flags38 & 3u) == 2u ? 6 : 1;
    for (int32_t face = 0; face < faces; ++face) {
        for (uint32_t mip = 0; mip < mips; ++mip) {
            if (process(face, static_cast<uint8_t>(mip)) != 0 && info.data.result != 0) {  // vtable +0x0c
                int32_t width = static_cast<int32_t>(texture->m_width) >> mip;
                int32_t height = static_cast<int32_t>(texture->m_height) >> mip;
                if (width < 1) width = 1;
                if (height < 1) height = 1;
                int32_t depth = static_cast<int32_t>(texture->m_depth) >> mip;
                if (depth == 0) depth = 1;
                const E_PIXEL_FORMAT destinationFormat = static_cast<E_PIXEL_FORMAT>((texture->m_flags38 >> 4) & 0x3f);
                const uint32_t destinationPitch = texture->getPitch(static_cast<uint8_t>(mip));
                const bool flip = m_source->needsFlip();  // IDataInfo vtable +0x14
                if (pixel_format::convert(m_desc->format, m_unknown14, m_sourceStep, destinationFormat, m_unknown18, destinationPitch,
                                          static_cast<uint32_t>(width), static_cast<uint32_t>(height * depth), flip) == 0) {
                    m_flag20 = true;
                    return 0;
                }
            }
            if (m_flag20) return 0;
        }
    }
    return m_flag20 ^ 1;
}

// 0x6083d0 _ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE
// Maps the texture and picks the way to read the file into it:
//   * a file whose format family and pitch fit the texture (same bits per pixel; no pitch, or the texture's own) is read straight
//     into the mapped memory: CWholeLoading (all of it in one read) when the file's data size is the texture's own size, otherwise
//     CPerFaceLoading (face by face);
//   * any other file is read into a temporary buffer of the file's data size and converted: CPerLevelRemapLoading;
//   * a texture that asks for no mips but is given a chain (or a texture that was not mapped locked) also goes through
//     CPerLevelRemapLoading, with a warning for the superfluous data.
// Byte swapping is requested for a big-endian file whose format is not compressed and has a packed type. The result is the
// loader's result; "out of memory" / "map failed" are logged and give false.
bool IImageLoader::loadData(io::IReadFile* file, const IDataInfo& source, const STextureDesc& desc,
                            const boost::intrusive_ptr<ITexture>& texture) {
    SLoadInfo info;
    bool swap;
    if (source.isLittleEndian()) {  // IDataInfo vtable +0x10
        swap = false;
    } else {
        const pixel_format::detail::SFormatEntry& entry = pixel_format::detail::PFDTable[desc.format];
        swap = (entry.flags & 8u) == 0 ? entry.packedType != 0 : false;
    }
    info.data.swapBytes = swap;
    const uint32_t sourcePitch = source.getFilePitch(0);  // vtable +0x0c
    const E_PIXEL_FORMAT textureFormat = static_cast<E_PIXEL_FORMAT>((texture->m_flags38 >> 4) & 0x3f);
    bool perFace;
    bool convert;
    ITexture* raw = texture.get();
    uint8_t* temporary = nullptr;
    if (pixel_format::detail::PFDTable[textureFormat].bitsPerPixel == pixel_format::detail::PFDTable[desc.format].bitsPerPixel &&
        (sourcePitch == 0 || sourcePitch == pixel_format::computePitch(textureFormat, raw->m_width))) {
        const uint32_t dataSize = static_cast<uint32_t>(source.getFileDataSize());  // vtable +0x08
        const uint32_t faces = (raw->m_flags38 & 3u) == 2u ? 5u : 0u;
        uint32_t level;
        if ((raw->m_flags3f & ITexture::kFlagRangeSizes) != 0) {
            level = static_cast<uint32_t>(raw->m_levelSizes[1] - raw->m_levelSizes[0]);
        } else {
            level = static_cast<uint32_t>(raw->m_levelSizes[raw->m_mipCount3e]);
        }
        perFace = dataSize != level + ((level + 127u) & 0xffffff80u) * faces;
        convert = static_cast<uint32_t>(desc.format) != static_cast<uint32_t>(textureFormat);
        info.data.result = convert ? 1 : 0;
    } else {
        const uint32_t dataSize = static_cast<uint32_t>(source.getFileDataSize());
        temporary = new (std::nothrow) uint8_t[dataSize];
        if (temporary == nullptr) {
            os::Printer::logf(ELL_ERROR, "loading %s: out of memory", file->getFileName());
            return false;
        }
        convert = true;
        perFace = false;
        info.data.fileBuffer = temporary;
        info.data.result = 1;
    }
    bool result = false;
    const bool wantsLevels = raw->m_mipCount3e <= 1 ? desc.flag != 0 : false;
    const E_BUFFER_MAP_ACCESS access = ((convert && temporary == nullptr) || swap) ? 5 : 4;
    info.reset(texture, 0, 0, access);
    if (info.mapped != nullptr) {
        auto remap = [&]() {
            CPerLevelRemapLoading loader;
            result = loader.load(file, source, desc, info) != 0;
        };
        if ((raw->m_flags3f & ITexture::kFlagLocked) == 0) {
            if (wantsLevels) {
                os::Printer::logf(ELL_WARNING,
                                  "loading %s: superfluous texture data (texture file has mipmaps but texture requests none)",
                                  file->getFileName());
            }
            remap();
        } else if (wantsLevels) {
            os::Printer::logf(ELL_WARNING,
                              "loading %s: superfluous texture data (texture file has mipmaps but texture requests none)",
                              file->getFileName());
            remap();
        } else if (perFace) {
            CPerFaceLoading loader;
            result = loader.load(file, source, desc, info) != 0;
        } else {
            CWholeLoading loader;
            result = loader.load(file, source, desc, info) != 0;
        }
    } else {
        os::Printer::logf(ELL_ERROR, "loading %s: map failed", file->getFileName());
    }
    delete[] temporary;
    return result;
}

}  // namespace glitch::video
