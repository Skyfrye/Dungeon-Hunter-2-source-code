// glitch::video::CTextureManager: the texture collection of the driver (a SIDedCollection of ITexture), the placeholder
// textures, the external image loaders and writers, and the texture-creation front end. Canonical definition (engine
// unification wave u1-video); the forward declarations in glitch-scene-collada-gui and game/ are replaced by this header.
// The SIDedCollection base and most creation functions are not reconstructed; the members that are modelled keep their
// original offsets in the comments.
//
// Layout of the original object (32-bit; constructors 0x5eaa7c C2 / 0x5eaed8 C1 with an IVideoDriver*, size 0x78):
//   +0x00  SIDedCollection<intrusive_ptr<ITexture>, ushort, false, texturemanager::STextureProperties, SValueTraits> (0x28 bytes)
//   +0x28  IVideoDriver*
//   +0x2c  .. +0x3c  the file system / image-loader state used by writeImageToFile and getImageLoader
//   +0x30  vector<intrusive_ptr<IImageLoader>>    +0x40  vector<IImageWriter*> (external writers, counted)
//   +0x48  placeholder slots (8 pointers, +0x48..+0x64): index type for the first group, type + 4 for the second
//   +0x68  vector of the unloadable textures (begin / end / capacity at +0x68 / +0x6c / +0x70)
//   +0x74  unnamed
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/core/allocator.hpp"
#include "glitch-core-io/core/sided_collection.hpp"
#include "glitch-video/deps/intrusive_ptr.hpp"
#include "glitch-video/image.hpp"
#include "glitch-video/image_loaders.hpp"
#include "glitch-video/scoped_process_array.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/texture_loaders.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::video {

namespace detail::texturemanager {
// Props record of the texture collection (SIdValue derives from it: this record, then the uint16 id at its end).
// The SIdValue constructors 0x5e85b4 (C1) and 0x5e85f0 (C2) inline the default constructor of a glitch string at
// +0x00 and then write the int 39: STR this,[this+0x10] and STR this,[this+0x14] (the string's begin and end both
// point at the record's own 16-byte local buffer, i.e. an empty string), a call to
// std::priv::_String_base<char, SAllocator<char,0>>::_M_allocate_block(this, 0x10) whose body allocates only when
// its size argument is above 0x10 (so nothing is allocated here and the string stays inline), a NUL written through
// the begin pointer (record +0x00), 39 at +0x18 and the id at +0x1c (verified instruction by instruction at
// 0x5e85b4/0x5e85c0..0x5e85e8; the same body is at 0x5e85f0). The record is therefore 0x1c bytes: the 0x18-byte
// string, then the int. The string is modelled as std::string, the port's spelling of the glitch SAllocator string
// (see glitch-scene-collada-gui scene_types.hpp); the port's own offsets are host width, only the member order is
// kept. Layout of the rest of the collection: see the glitch-core-io sided_collection header.
struct STextureProperties {
    std::string unk00;   // +0x00, a default-constructed glitch string (empty, with its buffer inline in the record)
    int32_t unk18 = 39;  // +0x18 of the original record, 39 after construction (meaning not recovered)
};
}  // namespace detail::texturemanager

class CTextureManager : public core::detail::SIDedCollection<boost::intrusive_ptr<ITexture>, uint16_t, false,
                                                             detail::texturemanager::STextureProperties,
                                                             core::detail::sidedcollection::SValueTraits> {
public:
    // The two placeholder textures: the one a lookup that found nothing gets, and the one for a texture that failed to bind. Real
    // enum, because the original symbols of setPlaceHolder / getPlaceHolder carry it as CTextureManager::E_PLACE_HOLDER.
    enum E_PLACE_HOLDER : int32_t {
        EPH_TEXTURE_NOT_FOUND = 0,
        EPH_TEXTURE_BIND_FAILED = 1,
    };
    // The answer of getTexture (0x5ea2a8): the texture found (empty when none) and the name to create a new one under (the
    // looked-up name, or the made-up free one).
    struct STextureLookup {
        boost::intrusive_ptr<ITexture> texture;
        const char* name = nullptr;
    };
    // The SIDedCollection iterator of rmReloadDataTexture: a position in the name map (a node pointer in the original).
    struct SIterator {
        Map::const_iterator position;
    };

    // Not part of the original (which constructs through the IVideoDriver constructor): lets a test build a manager.
    CTextureManager() = default;
    // 0x5eaa7c (C1) / 0x5eaed8 (C2): the SIDedCollection base, the file system of the driver's device, the bundled image
    // loaders (BMP, JPG, TGA, ATC, PNG, DDS, PVR) and writers (JPG, TGA, PNG) and the placeholder table. Declared only.
    explicit CTextureManager(IVideoDriver* driver);
    // 0x5ea050 (D2) / 0x5ea138 (D1): clearPlaceHolders(), then removeAll() on the collection and the releases of the loader
    // and writer lists and of the file system. The loader and writer releases are explicit here, the file system is the
    // member's own destructor.
    ~CTextureManager();

    // 0x5e8260: clears the placeholder for a texture type when it matches the texture.
    void clearPlaceHolder(int32_t type, ITexture* texture);
    // 0x5e828c: clears every placeholder whose texture is referenced only by the placeholder.
    void clearPlaceHolders();
    // 0x5e90e0: grabs the loader by hand and appends it (two uses; the destructor gives both back).
    void addExternalImageLoader(const boost::intrusive_ptr<IImageLoader>& loader);
    // 0x5eaa20: appends a writer and bumps its reference count (the original keeps raw pointers in a std::vector and
    // drops them in an explicit loop of the destructor; one use per entry either way).
    void addExternalImageWriter(IImageWriter* writer);
    // 0x3849a0: takes the texture off the m_textures list (whether or not it is there), then removes it from the
    // SIDedCollection by the id found from its name (getId(name.c_str())) and clears its placeholder. The type
    // (+0x38 & 3) and the name are read before the collection removal, which can free the texture. Returns the
    // collection's removed value, or nullptr when nothing was removed (the collection's remove keeps the entry
    // when another use is held, unless forced).
    ITexture* removeTexture(ITexture* texture);
    // 0x5e8dd4: appends the texture to the m_textures list when it is not already in it.
    void markTextureAsUnloadable(const boost::intrusive_ptr<ITexture>& texture);
    // 0x384eb4: clears the smart pointer (dropping the caller's use), then removes the texture with the pointer form.
    ITexture* removeTexture(boost::intrusive_ptr<ITexture>& texture);

    // ---- the rest of the queue, declared only ----
    // Placeholders: 0x5ea228 / 0x5ec1b8. The E_TEXTURE_TYPE parameter is an int32_t alias in the port, so the original symbols are
    // given by asm labels (mangled with the enum), here and for every function below whose original takes an E_PIXEL_FORMAT /
    // E_TEXTURE_TYPE / E_TEXTURE_LAYOUT argument and that is defined.
    void setPlaceHolder(E_PLACE_HOLDER placeHolder, const boost::intrusive_ptr<ITexture>& texture, E_TEXTURE_TYPE type)
        asm("_ZN6glitch5video15CTextureManager14setPlaceHolderENS1_14E_PLACE_HOLDERERKN5boost13intrusive_ptrINS0_8ITextureEEENS0_14E_TEXTURE_TYPEE");
    ITexture* getPlaceHolder(E_PLACE_HOLDER placeHolder, E_TEXTURE_TYPE type)
        asm("_ZN6glitch5video15CTextureManager14getPlaceHolderENS1_14E_PLACE_HOLDERENS0_14E_TEXTURE_TYPEE");
    // Images: 0x5e86f4 / 0x5e8740 / 0x5e8788 / 0x5e87d0 / 0x5e913c / 0x5e9198 / 0x5e8144 / 0x5e82c0.
    boost::intrusive_ptr<CImage> createImage(const boost::intrusive_ptr<CImage>& source, const core::position2d<int32_t>& position,
                                             const core::dimension2d<int32_t>& size);
    boost::intrusive_ptr<CImage> createImage(E_PIXEL_FORMAT format, const boost::intrusive_ptr<CImage>& source)
        asm("_ZN6glitch5video15CTextureManager11createImageENS0_14E_PIXEL_FORMATERKN5boost13intrusive_ptrINS0_6CImageEEE");
    boost::intrusive_ptr<CImage> createImage(E_PIXEL_FORMAT format, const core::dimension2d<int32_t>& size)
        asm("_ZN6glitch5video15CTextureManager11createImageENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEE");
    boost::intrusive_ptr<CImage> createImageFromData(E_PIXEL_FORMAT format, const core::dimension2d<int32_t>& size, void* data,
                                                     bool copy, bool own)
        asm("_ZN6glitch5video15CTextureManager19createImageFromDataENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvbb");
    boost::intrusive_ptr<CImage> createImageFromFile(io::IReadFile* file);
    boost::intrusive_ptr<CImage> createImageFromFile(const char* filename);
    boost::intrusive_ptr<IImageLoader> getImageLoader(io::IReadFile* file) const;
    bool writeImageToFile(const boost::intrusive_ptr<CImage>& image, const char* filename, uint32_t flags);
    // Textures: 0x5e8f2c / 0x5e94a8 / 0x5e9908 / 0x5ea2a8 / 0x5ea764 / 0x5ea7f8 / 0x5ea8f8 / 0x5ec460 / 0x5ecaa4 / 0x5ecba4 /
    // 0x5ecf34 / 0x5ed0c4 / 0x5ed210 / 0x5ed380 / 0x5eb334 / 0x5ebd7c / 0x5ebf8c / 0x5e97e0.
    boost::intrusive_ptr<ITexture> findTexture(const char* name) const;
    bool renameTexture(const boost::intrusive_ptr<ITexture>& texture, const char* name);
    std::string getHashName(const char* name) const;
    STextureLookup getTexture(const char* name, bool exists, core::SScopedProcessArray<char>& buffer) const;
    boost::intrusive_ptr<ITexture> getTexture(io::IReadFile* file, const char* name, bool flag);
    boost::intrusive_ptr<ITexture> getTexture(const char* name, const char* alias);
    boost::intrusive_ptr<ITexture> getTextureInternal(io::IReadFile* file, const core::stringc& name, bool flag);
    uint16_t addTexture(const boost::intrusive_ptr<ITexture>& texture, E_PIXEL_FORMAT format, const char* name)
        asm("_ZN6glitch5video15CTextureManager10addTextureERKN5boost13intrusive_ptrINS0_8ITextureEEENS0_14E_PIXEL_FORMATEPKc");
    boost::intrusive_ptr<ITexture> addTexture(const char* name, const STextureDesc& desc, bool exists);
    boost::intrusive_ptr<ITexture> addTexture(const core::dimension2d<int32_t>& size, const char* name, E_PIXEL_FORMAT format,
                                              bool exists)
        asm("_ZN6glitch5video15CTextureManager10addTextureERKNS_4core11dimension2dIiEEPKcNS0_14E_PIXEL_FORMATEb");
    boost::intrusive_ptr<ITexture> addTexture(const char* name, const boost::intrusive_ptr<CImage>& image, bool flag,
                                              E_TEXTURE_LAYOUT layout)
        asm("_ZN6glitch5video15CTextureManager10addTextureEPKcRKN5boost13intrusive_ptrINS0_6CImageEEEbNS0_16E_TEXTURE_LAYOUTE");
    boost::intrusive_ptr<ITexture> createTextureFromImage(const char* name, const boost::intrusive_ptr<CImage>& image,
                                                          E_TEXTURE_LAYOUT layout)
        asm("_ZN6glitch5video15CTextureManager22createTextureFromImageEPKcRKN5boost13intrusive_ptrINS0_6CImageEEENS0_16E_TEXTURE_LAYOUTE");
    boost::intrusive_ptr<ITexture> loadTextureFromFile(io::IReadFile* file, const char* name, E_PIXEL_FORMAT& format, bool flag)
        asm("_ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb");
    void rmReloadDataTexture(SIterator iterator, const char* name);
    void makeNormalMapTexture(const boost::intrusive_ptr<ITexture>& texture, float amplitude) const;
    void makeColorKeyTexture(const boost::intrusive_ptr<ITexture>& texture, core::position2d<int32_t> keyPixel) const;
    void makeColorKeyTexture(const boost::intrusive_ptr<ITexture>& texture, SColor key) const;
    void clearDriverSpecificResources();

    // Layout (32-bit, from the constructor 0x5eaa7c and the destructor 0x5ea050): +0x00..+0x27 is the
    // SIDedCollection<intrusive_ptr<ITexture>, ushort, false, STextureProperties, SValueTraits> base (the base class
    // above; its members are the name map at +0x00 and the entry vector at +0x18, see the shared header).
    IVideoDriver* m_driver = nullptr;                                         // +0x28
    boost::intrusive_ptr<glitch::IReferenceCounted> m_fileSystem;            // +0x2c, io::IFileSystem (driver device +0x34)
    std::vector<boost::intrusive_ptr<IImageLoader>> m_externalImageLoaders;  // +0x30..+0x38
    std::vector<boost::intrusive_ptr<IImageWriter>> m_externalImageWriters;  // +0x3c..+0x44
    ITexture* m_placeHolders[8] = {};                                         // +0x48..+0x64; index type, second group type + 4
    std::vector<ITexture*> m_textures;                                       // +0x68..+0x70, raw texture pointers
    uint32_t unk_74 = 67;                                                     // +0x74, 67 after construction
};

// 0x5e7e00: the first number after `key` in the lower-cased name (modulo 256), or 255.
int32_t guessSubIdFromName(const char* name, const char* key);

}  // namespace glitch::video
