#include "glitch-video/texture_manager.hpp"

#include <algorithm>

#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/image_loaders.hpp"
#include "glitch-video/texture_loaders.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

// 0x5eaa7c _ZN6glitch5video15CTextureManagerC1EPNS0_12IVideoDriverE / 0x5eaed8 C2
// The collection base, the driver (+0x28), the device's file system (device +0x34, one use taken, +0x2c), the empty
// loader / writer / placeholder / unloadable-texture tables and the word 67 at +0x74; then the bundled image loaders
// (BMP, JPG, TGA, ATC, PNG, DDS, PVR in that order; each is grabbed by hand, appended to the loader vector with a second
// use and dropped once, which leaves the two uses the destructor gives back) and the writers (JPG, TGA, PNG; the
// vector stores the pointers the factories return with their use of 1).
// Port guard: a driver without a device or file system leaves the file system empty (the original dereferences both).
CTextureManager::CTextureManager(IVideoDriver* driver) {
    m_driver = driver;  // +0x28
    io::IFileSystem* fileSystem = (driver != nullptr && driver->m_device != nullptr) ? driver->m_device->fileSystem : nullptr;
    m_fileSystem = boost::intrusive_ptr<glitch::IReferenceCounted>(fileSystem, true);  // +0x2c, one use taken
    unk_74 = 67;
    IImageLoader* const loaders[7] = {createImageLoaderBMP(), createImageLoaderJPG(), createImageLoaderTGA(),
                                      createImageLoaderATC(), createImageLoaderPNG(), createImageLoaderDDS(),
                                      createImageLoaderPVR()};
    for (IImageLoader* loader : loaders) {
        ++loader->referenceCounter;
        m_externalImageLoaders.push_back(boost::intrusive_ptr<IImageLoader>(loader, true));
        loader->drop();
    }
    m_externalImageWriters.push_back(boost::intrusive_ptr<IImageWriter>(createImageWriterJPG()));
    m_externalImageWriters.push_back(boost::intrusive_ptr<IImageWriter>(createImageWriterTGA()));
    m_externalImageWriters.push_back(boost::intrusive_ptr<IImageWriter>(createImageWriterPNG()));
}

// 0x5ea050 _ZN6glitch5video15CTextureManagerD2Ev / 0x5ea138 D1
// clearPlaceHolders(), removeAll() on the collection, then the explicit drop of every loader (each loader carries the
// extra use that addExternalImageLoader and the constructor give it, and the vector's destructor drops the other) and
// of every writer, and the file system. The file system and the writer releases are the members' own destructors here.
CTextureManager::~CTextureManager() {
    clearPlaceHolders();
    removeAll();
    for (const boost::intrusive_ptr<IImageLoader>& loader : m_externalImageLoaders) {
        if (loader) loader->drop();  // the explicit loop of the original; the vector's destructor drops the second use
    }
}

// 0x5e8260 _ZN6glitch5video15CTextureManager16clearPlaceHolderENS0_14E_TEXTURE_TYPEEPNS0_8ITextureE
void CTextureManager::clearPlaceHolder(int32_t type, ITexture* texture) {
    if (m_placeHolders[type] == texture) {
        m_placeHolders[type] = nullptr;
    }
    if (m_placeHolders[type + 4] == texture) {
        m_placeHolders[type + 4] = nullptr;
    }
}

// 0x5e828c _ZN6glitch5video15CTextureManager17clearPlaceHoldersEv
void CTextureManager::clearPlaceHolders() {
    for (ITexture*& slot : m_placeHolders) {
        if (slot != nullptr && slot->referenceCounter == 1) {
            slot = nullptr;
        }
    }
}

// 0x5e90e0 _ZN6glitch5video15CTextureManager22addExternalImageLoaderERKN5boost13intrusive_ptrINS0_12IImageLoaderEEE
// The original grabs the loader by hand and then copies it into the vector: two uses, which the destructor's explicit
// loop and the vector's destructor give back.
void CTextureManager::addExternalImageLoader(const boost::intrusive_ptr<IImageLoader>& loader) {
    if (loader.get() == nullptr) return;
    ++loader->referenceCounter;
    m_externalImageLoaders.push_back(loader);
}

// 0x5eaa20 _ZN6glitch5video15CTextureManager22addExternalImageWriterEPNS0_12IImageWriterE
void CTextureManager::addExternalImageWriter(IImageWriter* writer) {
    if (writer == nullptr) return;
    m_externalImageWriters.push_back(boost::intrusive_ptr<IImageWriter>(writer, true));  // adds the use the original adds by hand
}

// 0x5e8dd4 _ZN6glitch5video15CTextureManager23markTextureAsUnloadableERKN5boost13intrusive_ptrINS0_8ITextureEEE
void CTextureManager::markTextureAsUnloadable(const boost::intrusive_ptr<ITexture>& texture) {
    ITexture* raw = texture.get();
    if (std::find(m_textures.begin(), m_textures.end(), raw) == m_textures.end()) {
        m_textures.push_back(raw);
    }
}

// 0x3849a0 _ZN6glitch5video15CTextureManager13removeTextureEPNS0_8ITextureE
// The original reads the type (+0x38 & 3) and the name pointer (+0x1c, the std::string's c_str) before the
// collection removal, because the removal can free the texture; the placeholder is cleared only when the
// collection returned the value.
ITexture* CTextureManager::removeTexture(ITexture* texture) {
    if (texture == nullptr) {
        return nullptr;
    }
    const int32_t type = static_cast<int32_t>(texture->m_flags38 & 3);
    const std::uint16_t id = getId(texture->m_name.c_str());
    const auto it = std::find(m_textures.begin(), m_textures.end(), texture);
    if (it != m_textures.end()) {
        m_textures.erase(it);
    }
    // The collection's remove returns bool here; the value it held is read first so the caller gets the pointer.
    ITexture* removed = nullptr;
    if (const auto* entry = get(id); entry != nullptr && entry->value) {
        removed = entry->value.get();
    }
    if (!remove(id, false)) {
        return nullptr;
    }
    if (removed != nullptr) {
        clearPlaceHolder(type, texture);
    }
    return removed;
}

// 0x384eb4 _ZN6glitch5video15CTextureManager13removeTextureERN5boost13intrusive_ptrINS0_8ITextureEEE
// Clears the smart pointer (dropping the caller's use), then removes the texture by pointer.
ITexture* CTextureManager::removeTexture(boost::intrusive_ptr<ITexture>& texture) {
    ITexture* raw = texture.get();
    if (raw == nullptr) {
        return nullptr;
    }
    texture = boost::intrusive_ptr<ITexture>();  // drops the caller's use
    return removeTexture(raw);
}

}  // namespace glitch::video
