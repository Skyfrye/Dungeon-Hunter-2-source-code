// Texture-container loaders (ATC, DDS, PVR) and the IImageLoader base probes.
// Only the constant-returning probes and the CDataInfo getters are rebuilt.
#pragma once

#include <cstdint>

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-video/image.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/video_types.hpp"

struct jpeg_decompress_struct;
struct jpeg_common_struct;

namespace glitch::video {

struct STextureLoadInfo;
struct STextureDataInfo;
namespace {
struct SLoadInfo;  // IImageLoader::loadData's local record (the anonymous-namespace type of the original, src/texture_loaders.cpp)
}  // namespace

// IImageLoader (engine unification wave u1-video: canonical definition). Layout: vptr, reference count at +0x04, which
// every loader constructor stores as 1 (object size 8). Vtable (tools/decomp_vtable.py glitch::video::IImageLoader, 11
// slots; the pure ones are named from the CImageLoaderBMP / TGA / Png / JPG / PVR / DDS / ATC overrides):
//   +0x00 ~IImageLoader (D1 0x602d74, D0 0x602db0)  +0x04 deleting destructor  +0x08 onDelete
//   +0x0c isALoadableFileExtension(const char*) const   +0x10 isALoadableFileFormat(IReadFile*) const
//   +0x14 loadImage(IReadFile*) const                   +0x18 hasTextureLoadInterface() (0x602c84, false)
//   +0x1c loadTextureHeader(IReadFile*, STextureDesc&) const (0x602c8c, false)
//   +0x20 loadTextureData(IReadFile*, intrusive_ptr<ITexture> const&, STextureDesc const&) const (0x602c94, false)
class IImageLoader : public glitch::IReferenceCounted {
public:
    ~IImageLoader() override = default;
    virtual bool isALoadableFileExtension(const char* filename) const = 0;               // +0x0c
    virtual bool isALoadableFileFormat(io::IReadFile* file) const = 0;                   // +0x10
    virtual boost::intrusive_ptr<CImage> loadImage(io::IReadFile* file) const = 0;       // +0x14
    virtual bool hasTextureLoadInterface();                               // +0x18  0x602c84
    virtual bool loadTextureHeader(io::IReadFile* file, STextureDesc& desc) const;  // +0x1c  0x602c8c
    virtual bool loadTextureData(io::IReadFile* file, const boost::intrusive_ptr<ITexture>& texture,
                                 const STextureDesc& desc) const;         // +0x20  0x602c94
    // Per-format description of the texture data in a file (dtor + four pure slots, named from
    // CImageLoaderPVR::CDataInfo 0x605720..0x605738): size of the data, pitch of a mip, byte order and flip.
    class IDataInfo {
    public:
        virtual ~IDataInfo() = default;                          // 0x60764c (D1) / 0x607a48 (D0)
        virtual int32_t getFileDataSize() const = 0;             // +0x08
        virtual uint32_t getFilePitch(uint8_t mip) const = 0;    // +0x0c
        virtual bool isLittleEndian() const = 0;                 // +0x10
        virtual bool needsFlip() const = 0;                      // +0x14

        // The data-info objects are 16 bytes (vptr, two words, then the data size of the derived class at +0x0c). The DDS
        // loader keeps the pointer to its header words at +0x04 (CImageLoaderDDS::CDataInfo::getFilePitch 0x604234 reads it);
        // the word at +0x08 is never accessed.
        const uint32_t* m_header = nullptr;  // +0x04
        uint32_t m_unk08 = 0;                // +0x08
    };
    // 0x6083d0: reads the texture data through an IDataInfo and an ITextureDataLoading into the texture. Declared only.
    static bool loadData(io::IReadFile* file, const IDataInfo& info, const STextureDesc& desc,
                         const boost::intrusive_ptr<ITexture>& texture);

    // Texture data reader used by the loaders (0x607654 / 0x6076a8 constructors).
    // Only the fields that the reconstructed paths touch are named; the source
    // and loader objects (+0x08, +0x10) are not modelled, see the member notes.
    class ITextureDataLoading {
    public:
        ITextureDataLoading();
        virtual ~ITextureDataLoading() = default;  // 0x6076fc (D1) / 0x607a2c (D0)
        // Vtable slots +0x08 and +0x0c (named from the CPerFaceLoading overrides 0x60821c / 0x60791c).
        virtual int32_t preprocess() = 0;
        virtual int32_t process(E_TEXTURE_CUBE_MAP_FACE face, uint8_t mip) = 0;

        // 0x6077c4: the data info's pitch of the mip (vtable +0x0c); when it is zero the pitch is computed from the
        // descriptor (computePitch of the format and the mip's width) and +0x22 is set, otherwise +0x22 is cleared.
        uint32_t getFilePitch(uint8_t mip) const;
        // 0x607898: bytes of one mip level, from the descriptor (+0x22 set) or from the texture's dimensions.
        uint32_t getSourceStep(uint8_t mip) const;
        // 0x607d1c: reads size bytes from the file; a short read sets +0x20 and logs "loading %s: read error" at
        // level 3; a full read byte-swaps the data in place when the info's +0x0d byte is set.
        uint32_t read(void* buffer, uint32_t size);

        // 0x607a64: reads the file data into the mapped texture, level by level and face by face, through process() and
        // converting every level with pixel_format::convert when the info says so. Returns 1 unless a read or a conversion failed.
        int32_t load(io::IReadFile* file, const IDataInfo& source, const STextureDesc& desc, SLoadInfo& info);

        io::IReadFile* m_file = nullptr;              // +0x04
        IDataInfo* m_source = nullptr;                // +0x08
        STextureLoadInfo* m_desc = nullptr;           // +0x0c
        STextureDataInfo* m_info = nullptr;           // +0x10
        uint8_t* m_unknown14 = nullptr;               // +0x14, the destination of the next read (zeroed by the constructors)
        uint8_t* m_unknown18 = nullptr;               // +0x18, the position in the data (zeroed by the constructors)
        uint32_t m_sourceStep = 0;                    // +0x1c, the pitch of the current mip
        bool m_flag20 = false;                        // +0x20, set when a read fails
        uint8_t m_flag21 = 1;                         // +0x21, set to 1 by the constructors; load() makes it the number of mip levels to read
        mutable bool m_pitchKnown = false;            // +0x22, set by getFilePitch (a const member in the binary)
    };

    // 0x602d74 / 0x602db0: the loader constructors set the count (+0x04) to 1.
    IImageLoader() { referenceCounter = 1; }
};

// Minimal descriptor shapes used by ITextureDataLoading. Offsets are the
// original's; the field names follow how the reconstructed code reads them.
struct STextureLoadInfo {
    uint32_t unknown00 = 0;               // +0x00
    E_PIXEL_FORMAT format = 0;            // +0x04
    uint32_t layoutType = 0;              // +0x08, a value of 1 selects the cube-face size path
    uint32_t unknown0c = 0;               // +0x0c
    uint32_t width = 0;                   // +0x10
    uint32_t height = 0;                  // +0x14
    uint32_t depth = 0;                   // +0x18
};

struct STextureDataInfo {
    ITexture* texture = nullptr;          // +0x00, the texture being filled
    uint8_t* base = nullptr;              // +0x04, the start of the data being read
    int32_t hasFileInfo = 0;              // +0x08, non-zero when the data info describes the file (selects the step path)
    void* owner = nullptr;                // port: the SLoadInfo record this view belongs to (CPerLevelRemapLoading::process maps through it)
    uint8_t* fileBuffer = nullptr;        // +0x08 of the original: the buffer the file data is read into first (hasFileInfo is its non-null test)
    uint8_t result = 0;                   // +0x0c, the value preprocess returns
    bool swapBytes = false;               // +0x0d, read uses it to choose the swap path
};

// SMapTextureWrite: a texture handle with the pointer its mip level was mapped for writing at (the destructor unmaps it).
struct SMapTextureWrite {
    boost::intrusive_ptr<ITexture> texture;  // +0x00
    uint8_t* mapped = nullptr;               // +0x04
    ~SMapTextureWrite() {
        if (mapped != nullptr) texture->unmap();
    }
    // 0x607824: unmaps the old texture, takes the new one and maps its level / face for the access.
    void reset(const boost::intrusive_ptr<ITexture>& newTexture, uint8_t level, E_TEXTURE_CUBE_MAP_FACE face, E_BUFFER_MAP_ACCESS access)
        asm("_ZN6glitch5video16SMapTextureWrite5resetERKN5boost13intrusive_ptrINS0_8ITextureEEEhNS0_23E_TEXTURE_CUBE_MAP_FACEENS0_19E_BUFFER_MAP_ACCESSE");
};

// DDS_HEADER as read after the "DDS " magic (0x7c bytes, first word is the size).
struct SDDSSurfaceFormatHeader {
    uint32_t size = 0;                    // +0x00 (0x7c)
    uint32_t flags = 0;                   // +0x04
    uint32_t height = 0;                  // +0x08
    uint32_t width = 0;                   // +0x0c
    uint32_t pitchOrLinearSize = 0;       // +0x10
    uint32_t depth = 0;                   // +0x14
    uint32_t mipMapCount = 0;             // +0x18
    uint32_t reserved1[11] = {};          // +0x1c..+0x47
    uint32_t pixelFormatSize = 0;         // +0x48, DDS_PIXELFORMAT.dwSize (0x20)
    uint32_t pixelFormat[7] = {};         // +0x4c..+0x67, the rest of DDS_PIXELFORMAT
    uint32_t caps[4] = {};                // +0x68..+0x77
    uint32_t reserved2 = 0;               // +0x78, header ends at 0x7c
};

// 0x6041cc (anonymous namespace in the original): reads the DDS header at file
// offset 4 and returns true when the size word matches the bytes read and the
// pixel-format size is 32.
bool readDDSHeader(io::IReadFile* file, SDDSSurfaceFormatHeader& header);

class CImageLoaderATC : public IImageLoader {
public:
    ~CImageLoaderATC() override = default;  // 0x602d78 (D1) / 0x602d9c (D0)
    class CDataInfo : public IDataInfo {
    public:
        explicit CDataInfo(int32_t fileDataSize = 0) : m_fileDataSize(fileDataSize) {}  // built on the stack by loadTextureData
        ~CDataInfo() override = default;              // 0x602e00 / 0x6032a0
        int32_t getFileDataSize() const override;     // 0x602ca4
        uint32_t getFilePitch(uint8_t) const override;  // 0x602cac
        bool isLittleEndian() const override;         // 0x602cb4
        bool needsFlip() const override;              // 0x602cbc
    private:
        int32_t m_fileDataSize = 0;          // +0x0c
    };
    bool hasTextureLoadInterface() override;  // 0x602c9c
    // 0x602cc4: reads the ATC magic (16-bit value at offset 4 is 0x8c92 or 0x8c93).
    bool isALoadableFileFormat(io::IReadFile* file) const override;
    // 0x603254: ".atc" or ".ATC" in the name.
    bool isALoadableFileExtension(const char* filename) const override;
    boost::intrusive_ptr<CImage> loadImage(io::IReadFile* file) const override;  // +0x14, not reconstructed
    bool loadTextureData(io::IReadFile* file, const boost::intrusive_ptr<ITexture>& texture,
                         const STextureDesc& desc) const override;  // +0x20, not reconstructed
    // 0x602e34: reads the ATC header (little-endian 16-bit fields, 32-bit data size), reads the
    // whole data block to check its size, then fills desc. Returns false when the block is short.
    // Partial: the failure path's os::Printer::log("corrupt ATC file") is not called (os::Printer
    // is not in deps).
    bool loadTextureHeader(io::IReadFile* file, STextureDesc& desc) const override;
};

class CImageLoaderDDS : public IImageLoader {
public:
    CImageLoaderDDS();  // 0x604268 (C2) / 0x604294 (C1)
    ~CImageLoaderDDS() override = default;  // 0x60430c (D1) / 0x604330 (D0)
    class CDataInfo : public IDataInfo {
    public:
        CDataInfo(const uint32_t* header, int32_t fileDataSize) : m_fileDataSize(fileDataSize), m_header(header) {}  // loadTextureData
        ~CDataInfo() override = default;              // 0x604364 / 0x604930
        int32_t getFileDataSize() const override;     // 0x60422c
        // 0x604234: pitch from the DDS header when mip 0 is asked and the pitch flag is set.
        uint32_t getFilePitch(uint8_t mip) const override;
        bool isLittleEndian() const override;         // 0x604258
        bool needsFlip() const override;              // 0x604260
    private:
        int32_t m_fileDataSize = 0;          // +0x0c
        const uint32_t* m_header = nullptr;  // +0x04, DDS header as 32-bit words
    };
    bool hasTextureLoadInterface() override;  // 0x6041c4
    // 0x6042c0: reads the first four bytes and checks for "DDS ".
    bool isALoadableFileFormat(io::IReadFile* file) const override;
    // 0x60490c: ".dds" in the name.
    bool isALoadableFileExtension(const char* filename) const override;
    boost::intrusive_ptr<CImage> loadImage(io::IReadFile* file) const override;  // +0x14, not reconstructed
    // 0x604398: reads the DDS header (see readDDSHeader). Declared only.
    bool loadTextureHeader(io::IReadFile* file, STextureDesc& desc) const override;
    bool loadTextureData(io::IReadFile* file, const boost::intrusive_ptr<ITexture>& texture,
                         const STextureDesc& desc) const override;  // +0x20, not reconstructed
};

// The 52-byte PowerVR (version 2) header, decoded field by field from the 32-bit little-endian
// file layout. The original keeps this in an anonymous namespace; it is shared here so the header
// reader (readPVRHeader, 0x6058a4) and loadTextureHeader (0x605b10) use one definition.
struct SPVRHeader {
    uint32_t headerSize = 0;       // +0x00, must be 52
    uint32_t height = 0;           // +0x04
    uint32_t width = 0;            // +0x08
    uint32_t mipMapCount = 0;      // +0x0c
    uint32_t flags = 0;            // +0x10, low byte pixel format, 0x100 mip maps, 0x200 twiddled,
                                   //        0x1000 cube map, 0x4000 volume, 0x8000 alternate format
    uint32_t textureDataSize = 0;  // +0x14
    uint32_t bitsPerPixel = 0;     // +0x18
    uint32_t redBitMask = 0;       // +0x1c
    uint32_t greenBitMask = 0;     // +0x20
    uint32_t blueBitMask = 0;      // +0x24
    uint32_t alphaBitMask = 0;     // +0x28
    char pvrTag[4] = {};           // +0x2c, "PVR!"
    uint32_t surfaceCount = 0;     // +0x30 (surface or cube-face count, or volume depth)
};

// 0x6058a4 (anonymous namespace in the original). Reads and checks the header. isBTEX is set when the
// "BTEXpvr" wrapper is present. Returns false on a short read, a wrong tag or size, or a bad flag
// combination. Defined by batch e1-glitch-video-glitch_video-0 (src/tb_video-glitch_video-0.cpp).
bool readPVRHeader(io::IReadFile* file, SPVRHeader& header, bool& isBTEX);

class CImageLoaderPVR : public IImageLoader {
public:
    CImageLoaderPVR();  // 0x605740 (C2) / 0x60576c (C1)
    ~CImageLoaderPVR() override = default;  // 0x605798 (D2) / 0x60579c (D1) / 0x605f30 (D0)
    // 0x6057e0: a 52-byte header with "PVR!" at offset 44, or "BTEXpvr" at offset 0.
    bool isALoadableFileFormat(io::IReadFile* file) const override;
    // 0x6061b4: ".pvr" or ".btex" in the name.
    bool isALoadableFileExtension(const char* filename) const override;
    boost::intrusive_ptr<CImage> loadImage(io::IReadFile* file) const override;  // +0x14, not reconstructed
    bool loadTextureData(io::IReadFile* file, const boost::intrusive_ptr<ITexture>& texture,
                         const STextureDesc& desc) const override;  // +0x20, not reconstructed
    // 0x605b10: reads the header with readPVRHeader, checks the data size against the file size,
    // maps the PowerVR pixel format to a glitch format id and checks it against the twiddle flag.
    bool loadTextureHeader(io::IReadFile* file, STextureDesc& desc) const override;
    class CDataInfo : public IDataInfo {
    public:
        explicit CDataInfo(int32_t fileDataSize = 0) : m_fileDataSize(fileDataSize) {}  // built on the stack by loadTextureData
        ~CDataInfo() override = default;              // 0x605f4c / 0x606200
        int32_t getFileDataSize() const override;     // 0x605720
        uint32_t getFilePitch(uint8_t) const override;  // 0x605728
        bool isLittleEndian() const override;         // 0x605730
        bool needsFlip() const override;              // 0x605738
    private:
        int32_t m_fileDataSize = 0;          // +0x0c
    };
    bool hasTextureLoadInterface() override;  // 0x605718
};

// libjpeg source-manager callbacks used by the JPG loader.
class CImageLoaderJPG : public IImageLoader {
public:
    CImageLoaderJPG();  // 0x604a7c (C2) / 0x604aa8 (C1)
    // 0x604b0c: "JFIF" (or the byte-swapped form) at offset 6.
    bool isALoadableFileFormat(io::IReadFile* file) const override;
    // 0x604f6c: ".jpg" or ".JPG" in the name.
    bool isALoadableFileExtension(const char* filename) const override;
    boost::intrusive_ptr<CImage> loadImage(io::IReadFile* file) const override;  // +0x14, not reconstructed
    ~CImageLoaderJPG() override = default;  // 0x604ad4 (D2) / 0x604ad8 (D1) / 0x604fb8 (D0)
    // The libjpeg callbacks are static in the original (the listings take the cinfo as the first argument; skip_input_data
    // reads cinfo->src at +0x18).
    static void init_source(jpeg_decompress_struct*);        // 0x604adc
    static bool fill_input_buffer(jpeg_decompress_struct*);  // 0x604ae0
    static void skip_input_data(jpeg_decompress_struct*, long numBytes);  // 0x604ae8, declared only
    static void term_source(jpeg_decompress_struct*);        // 0x604b08
    static void output_message(jpeg_common_struct*);         // 0x604ed8, declared only
    static void error_exit(jpeg_common_struct*);             // 0x604f48, declared only
};

// Factories: new object, default constructed, returned to the caller.
CImageLoaderATC* createImageLoaderATC();  // 0x602dc4
CImageLoaderDDS* createImageLoaderDDS();  // 0x604344
CImageLoaderJPG* createImageLoaderJPG();  // 0x604bc0
CImageLoaderPVR* createImageLoaderPVR();  // 0x6057c0

}  // namespace glitch::video
