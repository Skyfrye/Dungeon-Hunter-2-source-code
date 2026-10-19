// Image loader and writer format probes for BMP, TGA, PNG, and the IImageWriter base of the writers. Reconstructed from
// libDungeonHunter2.so. Only the format-detection entry points are rebuilt; the loadImage / writeImage slots are declared
// and stop with detail::unreconstructed().
//
// IImageWriter (engine unification wave u1-video: canonical definition; the stand-in in texture_manager.hpp is retired):
// vptr, reference count at +0x04 (the writer constructors store 1), and a vtable of 5 slots (tools/decomp_vtable.py
// glitch::video::IImageWriter; the pure slots are named from the CImageWriterJPG / PNG / TGA overrides):
//   +0x00 ~IImageWriter  +0x04 deleting destructor  +0x08 onDelete
//   +0x0c isAWriteableFileExtension(const char*) const   +0x10 writeImage(IWriteFile*, intrusive_ptr<CImage> const&, uint) const
#pragma once

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-video/image.hpp"
#include "glitch-video/texture_loaders.hpp"

namespace glitch::video {

class IImageWriter : public glitch::IReferenceCounted {
public:
    IImageWriter() { referenceCounter = 1; }
    ~IImageWriter() override = default;
    virtual bool isAWriteableFileExtension(const char* filename) const = 0;                          // +0x0c
    virtual bool writeImage(io::IWriteFile* file, const boost::intrusive_ptr<CImage>& image,
                            uint32_t flags) const = 0;                                               // +0x10
};

// 0x603480: new CImageLoaderBMP, default constructed.
class CImageLoaderBMP;
CImageLoaderBMP* createImageLoaderBMP();

// 0x606990 (C2) / 0x6069bc (C1): writer with the reference word at +0x04 set to 1.
class CImageWriterJPG : public IImageWriter {
public:
    CImageWriterJPG();  // 0x606990 (C2) / 0x6069bc (C1)
    ~CImageWriterJPG() override = default;

    // 0x606c78: the extension after the last dot is .jpg, .jpeg, .JPG or .JPEG.
    bool isAWriteableFileExtension(const char* filename) const override;
    bool writeImage(io::IWriteFile* file, const boost::intrusive_ptr<CImage>& image, uint32_t flags) const override;  // not reconstructed
};

// 0x606d30 (C2) / 0x606d5c (C1): PNG writer, same layout as the JPG writer.
class CImageWriterPNG : public IImageWriter {
public:
    CImageWriterPNG();  // 0x606d30 (C2) / 0x606d5c (C1)
    ~CImageWriterPNG() override = default;

    // 0x607230: ".png" or ".PNG" appears anywhere in the name (substring match).
    bool isAWriteableFileExtension(const char* filename) const override;
    bool writeImage(io::IWriteFile* file, const boost::intrusive_ptr<CImage>& image, uint32_t flags) const override;  // not reconstructed
};

// 0x606d10, 0x6072c0, 0x60762c: factories for the JPG, PNG and TGA writers.
CImageWriterJPG* createImageWriterJPG();
CImageWriterPNG* createImageWriterPNG();
class CImageWriterTGA;
CImageWriterTGA* createImageWriterTGA();

class CImageLoaderBMP : public IImageLoader {
public:
    CImageLoaderBMP();
    ~CImageLoaderBMP() override = default;

    // Reads the first two bytes and checks for the 'BM' signature.
    bool isALoadableFileFormat(io::IReadFile* file) const override;
    // Case-sensitive match on ".bmp" or ".BMP".
    bool isALoadableFileExtension(const char* filename) const override;
    boost::intrusive_ptr<CImage> loadImage(io::IReadFile* file) const override;  // +0x14 (0x6033f0), not reconstructed
};

class CImageLoaderTGA : public IImageLoader {
public:
    CImageLoaderTGA() = default;
    ~CImageLoaderTGA() override = default;

    // 0x606778: the file is at least 0x1a bytes and the 26-byte footer, read from
    // the end, carries the "TRUEVISION-XFILE." signature at footer offset 8.
    bool isALoadableFileFormat(io::IReadFile* file) const override;
    // Case-sensitive match on ".tga" or ".TGA".
    bool isALoadableFileExtension(const char* filename) const override;
    boost::intrusive_ptr<CImage> loadImage(io::IReadFile* file) const override;  // +0x14, not reconstructed
};

// PNG loader. Only the format and extension probes are rebuilt here.
class CImageLoaderPng : public IImageLoader {
public:
    CImageLoaderPng() = default;
    ~CImageLoaderPng() override = default;

    // 0x605048: reads 8 bytes and compares them with the PNG signature.
    bool isALoadableFileFormat(io::IReadFile* file) const override;
    // 0x605674: the extension after the last dot is exactly ".PNG" or ".png".
    bool isALoadableFileExtension(const char* filename) const override;
    boost::intrusive_ptr<CImage> loadImage(io::IReadFile* file) const override;  // +0x14, not reconstructed
};

// 0x60500c: new CImageLoaderPng with the reference word set to 1.
CImageLoaderPng* createImageLoaderPNG();
// 0x60632c: new CImageLoaderTGA with the reference word set to 1.
CImageLoaderTGA* createImageLoaderTGA();

class CImageWriterTGA : public IImageWriter {
public:
    CImageWriterTGA();
    ~CImageWriterTGA() override = default;

    // Case-sensitive match on ".tga" or ".TGA".
    bool isAWriteableFileExtension(const char* filename) const override;
    bool writeImage(io::IWriteFile* file, const boost::intrusive_ptr<CImage>& image, uint32_t flags) const override;  // not reconstructed
};

}  // namespace glitch::video
