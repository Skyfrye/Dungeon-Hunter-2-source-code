// CTextureManager: finding, creating and registering textures (getTexture, addTexture, the placeholder textures) and the image
// factories. The functions whose original symbols carry an enum parameter (E_PIXEL_FORMAT, E_TEXTURE_TYPE, E_TEXTURE_LAYOUT) are
// declared with the original mangled name in texture_manager.hpp, because the port's E_* types are int32_t aliases.
#include <cctype>
#include <cstdio>
#include <cstring>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-video/image.hpp"
#include "glitch-video/pixel_format.hpp"
#include "glitch-video/pixel_format_convert.hpp"
#include "glitch-video/scoped_process_array.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-video/video_names.hpp"

namespace glitch::video {

namespace {

// The base names of the two placeholder textures (PlaceHolderBasename, ELF 0x957468) and their colours (PlaceHolderColor, 0x9f6be4,
// filled by the static constructor of CTextureManager.cpp at 0x5e88bc): "texture not found" is pink, "bind failed" green.
const char* const kPlaceHolderBasename[2] = {"glitch::texture-not-found", "glitch::texture-bind-failed"};
const uint8_t kPlaceHolderColor[2][4] = {{0xff, 0x00, 0x80, 0xff}, {0x37, 0xd7, 0x37, 0xff}};

}  // namespace

// 0x5ea2a8 _ZNK6glitch5video15CTextureManager10getTextureEPKcbRNS_4core19SScopedProcessArrayIcEE
// Looks a texture up by name. Not found: an empty result carrying the name. Found: the texture; when `exists` is set that is the
// whole answer (logged at information level), otherwise the caller wants a new texture and gets a name that is not in use
// instead: the name with an "A" appended, counted up like an odometer over A..Z (carrying, and growing by one letter after
// "...Z"), in a 1016-byte process buffer held by `buffer`. When the name cannot be made unique (it would pass 0x3f6 characters)
// the answer is empty and an error is logged.
CTextureManager::STextureLookup CTextureManager::getTexture(const char* name, bool exists,
                                                            core::SScopedProcessArray<char>& buffer) const {
    STextureLookup result;
    result.name = name;
    if (name == nullptr) return result;
    const uint16_t id = getId(name);
    result.texture = get(id)->value;
    if (!result.texture) return result;
    if (exists) {
        glitch::os::Printer::logf(glitch::os::ELL_INFORMATION, "adding texture %s: name exists already", name);
        return result;
    }
    constexpr int kBufferSize = 1016;
    char* candidate = reinterpret_cast<char*>(glitch::core::allocProcessBuffer(kBufferSize));
    if (candidate != nullptr) {
        std::strcpy(candidate, name);
        if (getId(candidate) != 0xffff) {
            const size_t length = std::strlen(name);
            std::memset(candidate + length + 1, 0, 1015 - length);
            candidate[length] = 'A';
            size_t last = length;  // index of the last letter of the suffix
            while (getId(candidate) != 0xffff) {
                size_t next;
                if (candidate[last] == 'Z') {
                    next = last + 1;
                    if (next > 0x3f6) {
                        glitch::core::releaseProcessBuffer(candidate);
                        candidate = nullptr;
                        break;
                    }
                    candidate[next] = 'A';  // one more letter
                    size_t carry = last;
                    char current = candidate[carry];
                    while (true) {
                        candidate[carry] = 'A';
                        if (carry <= length) break;  // every letter carried: all A's
                        --carry;
                        current = candidate[carry];
                        if (current != 'Z') {
                            ++candidate[carry];
                            break;
                        }
                    }
                    (void)current;
                } else {
                    ++candidate[last];
                    next = last;
                }
                last = next;
            }
        }
    }
    buffer.reset(candidate);
    if (candidate != nullptr) {
        result.texture = boost::intrusive_ptr<ITexture>();
        result.name = candidate;
    } else {
        glitch::os::Printer::logf(glitch::os::ELL_ERROR, "adding texture %s: Could not generate a unique name", name);
    }
    return result;
}

// 0x5ea764 _ZN6glitch5video15CTextureManager10addTextureERKN5boost13intrusive_ptrINS0_8ITextureEEENS0_14E_PIXEL_FORMATEPKc
// Registers an existing texture in the collection under its own name and returns its id (0xffff for no texture). The entry
// records the pixel format; a name argument is stored as the entry's alias string. The texture learns its id (+0x3c).
uint16_t CTextureManager::addTexture(const boost::intrusive_ptr<ITexture>& texture, E_PIXEL_FORMAT format, const char* name) {
    ITexture* raw = texture.get();
    if (raw == nullptr) return 0xffff;
    const uint16_t id = insert(raw->m_name.c_str(), texture, false);
    if (id != 0xffff) {
        detail::texturemanager::STextureProperties* properties = getProperties(id);
        properties->unk18 = format;
        if (name != nullptr) properties->unk00.assign(name);
    }
    raw->m_id = id;
    return id;
}

// 0x5ea7f8 _ZN6glitch5video15CTextureManager10addTextureEPKcRKNS0_12STextureDescEb
// The texture of that name, or a new one: getTexture decides (an existing texture is returned as it is, unless `exists` is
// clear, when a free name is made up), the driver creates it from the descriptor, it is registered with the descriptor's
// pixel format and, if the descriptor asks, listed as unloadable.
boost::intrusive_ptr<ITexture> CTextureManager::addTexture(const char* name, const STextureDesc& desc, bool exists) {
    core::SScopedProcessArray<char> uniqueName;
    STextureLookup lookup = getTexture(name, exists, uniqueName);
    if (lookup.texture) return lookup.texture;
    lookup.texture = m_driver->createTexture(lookup.name, desc);
    if (!lookup.texture) return {};
    addTexture(lookup.texture, static_cast<E_PIXEL_FORMAT>(desc.format), nullptr);
    if (desc.unloadable != 0) markTextureAsUnloadable(lookup.texture);
    return lookup.texture;
}

// 0x5ea8f8 _ZN6glitch5video15CTextureManager10addTextureERKNS_4core11dimension2dIiEEPKcNS0_14E_PIXEL_FORMATEb
// A 2D texture of that size and format: the descriptor is built (the layout comes from the manager's option word at +0x74:
// bit 5 selects layout 3, otherwise bit 4 selects layout 1; the data-flag byte follows the driver's option 0x10) and given to
// the descriptor form.
boost::intrusive_ptr<ITexture> CTextureManager::addTexture(const core::dimension2d<int32_t>& size, const char* name,
                                                           E_PIXEL_FORMAT format, bool exists) {
    STextureDesc desc;
    desc.type = 0;
    desc.format = static_cast<uint32_t>(format);
    desc.unknown08 = 0;
    desc.width = static_cast<uint32_t>(size.Width);
    desc.height = static_cast<uint32_t>(size.Height);
    desc.depth = 1;
    desc.flag = (m_driver->m_options & 0x10u) != 0;
    desc.flag1d = 0;
    desc.unloadable = 0;
    if ((unk_74 & 0x20u) != 0) {
        desc.unknown0c = 3;
    } else {
        desc.unknown0c = (unk_74 & 0x10u) != 0;
    }
    return addTexture(name, desc, exists);
}

// 0x5ecaa4 _ZN6glitch5video15CTextureManager10addTextureEPKcRKN5boost13intrusive_ptrINS0_6CImageEEEbNS0_16E_TEXTURE_LAYOUTE
// The texture of that name, or a new one made from the image: an empty image gives an empty result, getTexture decides as for the
// descriptor form (an existing texture is returned as it is), the image becomes a texture (createTextureFromImage) and is registered
// under the image's pixel format.
boost::intrusive_ptr<ITexture> CTextureManager::addTexture(const char* name, const boost::intrusive_ptr<CImage>& image, bool flag,
                                                           E_TEXTURE_LAYOUT layout) {
    if (!image) return {};
    core::SScopedProcessArray<char> uniqueName;
    STextureLookup lookup = getTexture(name, flag, uniqueName);
    if (lookup.texture) return lookup.texture;
    lookup.texture = createTextureFromImage(lookup.name, image, layout);
    if (!lookup.texture) return {};
    addTexture(lookup.texture, image->m_format, nullptr);
    return lookup.texture;
}

// 0x5ec460 _ZN6glitch5video15CTextureManager22createTextureFromImageEPKcRKN5boost13intrusive_ptrINS0_6CImageEEENS0_16E_TEXTURE_LAYOUTE
// Builds a texture for the image: a descriptor of the image's format and size (the data flag when the image has mip levels and the
// manager option bit 6 allows them, or when the driver option 0x10 asks for chains; the usage from manager option bits 5 and 4),
// created by the driver. A layout override of 1 is honoured for an image without mip levels, any other is logged and ignored.
// When the texture is the image's own format with the same pitch and size (manager option bit 1 set and bit 0 clear) it shares the
// image's data block; otherwise it gets its own block, "repacking" (same format) or converting ("slow path": other formats) every
// level through a map of the texture, with the level data of the image taken from its mip table. The manager option bit 1 also
// has the texture bound afterwards (bit 0 clear means a forced bind).
boost::intrusive_ptr<ITexture> CTextureManager::createTextureFromImage(const char* name, const boost::intrusive_ptr<CImage>& image,
                                                                       E_TEXTURE_LAYOUT layout) {
    CImage* const img = image.get();
    STextureDesc desc;
    desc.type = 0;
    desc.format = static_cast<uint32_t>(img->m_format);
    desc.unknown08 = 0;
    desc.unknown0c = 0;
    desc.width = img->m_width;
    desc.height = img->m_height;
    desc.depth = 1;
    desc.flag = 0;
    desc.flag1d = 0;
    desc.unloadable = 0;

    bool wantsMips = img->m_hasMipmaps != 0;
    if (wantsMips) wantsMips = ((unk_74 >> 6) & 1u) != 0;
    desc.flag = (m_driver->m_options & 0x10u) != 0 ? 1 : (wantsMips ? 1 : 0);
    if ((unk_74 & 0x20u) != 0) {
        desc.unknown0c = 3;
    } else if ((unk_74 & 0x10u) != 0) {
        desc.unknown0c = 1;
    }
    if (layout == 1) {
        if (img->m_hasMipmaps != 0) {
            os::Printer::logf(ELL_WARNING,
                              "adding texture %s: ignoring layout override %s (not supported when creating textures from images "
                              "with mipmaps)",
                              name, textureLayoutName(1));
        } else {
            desc.unknown08 = 1;
        }
    } else if (layout != 0) {
        os::Printer::logf(ELL_WARNING,
                          "adding texture %s: ignoring layout override %s (not supported when creating textures from images)",
                          name, textureLayoutName(static_cast<uint32_t>(layout)));
    }
    boost::intrusive_ptr<ITexture> texture = m_driver->createTexture(name, desc);
    if (!texture) return texture;

    auto floorLog2 = [](int32_t v) {
        int32_t n = -1;
        while (v != 0) {
            v >>= 1;
            ++n;
        }
        return n;
    };
    int32_t levels = floorLog2(static_cast<int32_t>(desc.width));
    const int32_t heightLog = floorLog2(static_cast<int32_t>(desc.height));
    if (heightLog >= levels) levels = heightLog;
    // rangeSizes: the texture's level table is the (begin, end) pair unless the image has the full chain the texture wants.
    const bool rangeSizes = (levels == static_cast<int32_t>(img->m_mipLevels)) ? !wantsMips : true;
    void* const imageData = img->m_data;

    auto textureFormat = [&]() { return static_cast<E_PIXEL_FORMAT>((texture->m_flags38 >> 4) & 0x3f); };
    // The size of the texture's own data block: the first level (range form) or the whole chain plus the five other faces of a cube.
    auto ownSize = [&]() -> size_t {
        const uint32_t faces = (texture->m_flags38 & 3u) == 2u ? 5u : 0u;
        uint32_t base;
        if ((texture->m_flags3f & ITexture::kFlagRangeSizes) != 0) {
            base = static_cast<uint32_t>(texture->m_levelSizes[1] - texture->m_levelSizes[0]);
        } else {
            base = static_cast<uint32_t>(texture->m_levelSizes[texture->m_mipCount3e]);
        }
        return base + static_cast<size_t>((base + 127u) & 0xffffff80u) * faces;
    };
    auto finish = [&]() {
        if ((unk_74 & 2u) != 0) texture->bind(((unk_74 ^ 1u) & 1u) != 0);
        return texture;
    };

    if (imageData == nullptr) {
        texture->setData(nullptr, false, rangeSizes);
        return finish();
    }
    if (textureFormat() == img->m_format && (unk_74 & 1u) == 0 && (unk_74 & 2u) != 0) {
        bool shared = img->m_pitch == pixel_format::computePitch(textureFormat(), texture->m_width);
        if (shared && texture->m_mipCount3e > 1 && !rangeSizes && texture->getSizeInBytes() != img->m_dataSize) shared = false;
        if (shared) {
            texture->setData(imageData, false, rangeSizes);
            return finish();
        }
    }
    // The texture's own data block.
    const size_t size = rangeSizes ? static_cast<size_t>(texture->m_levelSizes[1] - texture->m_levelSizes[0]) : ownSize();
    uint8_t* block = new uint8_t[size];
    const bool owned = block != imageData;
    texture->setData(block, owned, rangeSizes);
    if (!owned) return finish();

    if (textureFormat() == img->m_format) {
        if ((unk_74 & 1u) == 0) {
            bool repack = img->m_pitch != pixel_format::computePitch(textureFormat(), texture->m_width);
            if (!repack && texture->m_mipCount3e > 1 && texture->getSizeInBytes() != img->m_dataSize) repack = true;
            if (repack) os::Printer::logf(ELL_WARNING, "adding texture %s: repacking", name);
        }
    } else {
        os::Printer::logf(ELL_WARNING, "adding texture %s: slow path pixel format conversion from %s to %s", name,
                          pixelFormatName(img->m_format), pixelFormatName(textureFormat()));
    }

    int32_t width = static_cast<int32_t>(texture->m_width);
    int32_t height = static_cast<int32_t>(texture->m_height);
    const uint32_t levelCount = rangeSizes ? 1u : texture->m_mipCount3e;
    for (uint32_t level = 0; level < levelCount; ++level) {
        boost::intrusive_ptr<ITexture> held(texture);
        uint8_t* mapped = texture->map(4, 0, static_cast<uint8_t>(level));
        const void* source = level != 0 ? img->m_mipData[level - 1] : imageData;
        const int ok = pixel_format::convert(img->m_format, source, 0, textureFormat(), mapped, texture->getPitch(static_cast<uint8_t>(level)),
                                             static_cast<uint32_t>(width), static_cast<uint32_t>(height), false);
        if (ok == 0) {
            if (mapped != nullptr) texture->unmap();
            return {};
        }
        width >>= 1;
        height >>= 1;
        if (width < 1) width = 1;
        if (height < 1) height = 1;
        if (mapped != nullptr) texture->unmap();
    }
    return finish();
}

// 0x5e87d0 _ZN6glitch5video15CTextureManager19createImageFromDataENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvbb
boost::intrusive_ptr<CImage> CTextureManager::createImageFromData(E_PIXEL_FORMAT format, const core::dimension2d<int32_t>& size,
                                                                  void* data, bool copy, bool own) {
    return boost::intrusive_ptr<CImage>(new CImage(format, size, data, copy, own), true);
}

// 0x5e8788 _ZN6glitch5video15CTextureManager11createImageENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEE
boost::intrusive_ptr<CImage> CTextureManager::createImage(E_PIXEL_FORMAT format, const core::dimension2d<int32_t>& size) {
    return boost::intrusive_ptr<CImage>(new CImage(format, size), true);
}

// 0x5e8740 _ZN6glitch5video15CTextureManager11createImageENS0_14E_PIXEL_FORMATERKN5boost13intrusive_ptrINS0_6CImageEEE
boost::intrusive_ptr<CImage> CTextureManager::createImage(E_PIXEL_FORMAT format, const boost::intrusive_ptr<CImage>& source) {
    return boost::intrusive_ptr<CImage>(new CImage(format, source), true);
}

// 0x5e86f4 _ZN6glitch5video15CTextureManager11createImageERKN5boost13intrusive_ptrINS0_6CImageEEERKNS_4core10position2dIiEERKNS8_11dimension2dIiEE
boost::intrusive_ptr<CImage> CTextureManager::createImage(const boost::intrusive_ptr<CImage>& source,
                                                          const core::position2d<int32_t>& position,
                                                          const core::dimension2d<int32_t>& size) {
    return boost::intrusive_ptr<CImage>(new CImage(source, position, size), true);
}

// 0x5ea228 _ZN6glitch5video15CTextureManager14setPlaceHolderENS1_14E_PLACE_HOLDERERKN5boost13intrusive_ptrINS0_8ITextureEEENS0_14E_TEXTURE_TYPEE
// Makes `texture` the placeholder of that kind for that texture type (255 means the texture's own type; with no texture then
// nothing happens). The old placeholder is removed from the collection; the slot keeps the raw pointer, the collection owns the
// texture. The original reads the old slot's count without a null test; here an empty slot is skipped.
void CTextureManager::setPlaceHolder(E_PLACE_HOLDER placeHolder, const boost::intrusive_ptr<ITexture>& texture,
                                     E_TEXTURE_TYPE type) {
    uint32_t slotType = static_cast<uint32_t>(type);
    if (slotType == 255) {
        if (!texture) return;
        slotType = texture->m_flags38 & 3u;
    }
    const uint32_t index = 4u * static_cast<uint32_t>(placeHolder) + slotType;
    if (ITexture* old = m_placeHolders[index]; old != nullptr) {
        removeTexture(old);
    }
    if (ITexture* old = m_placeHolders[index]; old != nullptr && old->referenceCounter == 1) {
        removeTexture(old);
    }
    m_placeHolders[index] = texture.get();
}

// 0x5ec1b8 _ZN6glitch5video15CTextureManager14getPlaceHolderENS1_14E_PLACE_HOLDERENS0_14E_TEXTURE_TYPEE
// The placeholder texture of that kind for the texture type, made on first use: a 1x1 RGBA8888 texture (no mip filtering) named
// "<base>-<type>" (lower case, spaces turned into dashes) in the placeholder colour, one face per cube side, registered
// with logging switched off and remembered in the slot (the collection owns the texture: the raw pointer is returned, as in the
// binary). A registered name that already exists is reused.
ITexture* CTextureManager::getPlaceHolder(E_PLACE_HOLDER placeHolder, E_TEXTURE_TYPE type) {
    const uint32_t kind = static_cast<uint32_t>(placeHolder);
    const uint32_t textureType = static_cast<uint32_t>(type);
    ITexture*& slot = m_placeHolders[4u * kind + textureType];
    if (slot != nullptr) return slot;

    const glitch::os::ELOG_LEVEL level = glitch::os::Printer::getLogLevel();
    glitch::os::Printer::setLogLevel(glitch::os::ELL_NONE);
    STextureDesc desc;
    desc.type = textureType;
    desc.format = 14;
    desc.unknown08 = 0;
    desc.unknown0c = 0;
    desc.width = 1;
    desc.height = 1;
    desc.depth = 1;
    char text[64] = {};
    std::snprintf(text, sizeof text, "%s-%s", kPlaceHolderBasename[kind], textureTypeName(textureType));
    for (int i = 0; i != 63; ++i) {
        const unsigned char c = static_cast<unsigned char>(text[i]);
        text[i] = c == ' ' ? '-' : static_cast<char>(std::tolower(c));
    }
    const uint16_t before = size();
    boost::intrusive_ptr<ITexture> created = addTexture(text, desc, true);
    if (created && size() > before) {
        const uint32_t faces = (created->m_flags38 & 3u) == 2 ? 6u : 1u;
        for (uint32_t face = 0; face < faces; ++face) {
            uint8_t* pixel = created->map(4, face, 0);
            std::memcpy(pixel, kPlaceHolderColor[kind], 4);
            created->unmap();
        }
        if ((created->m_flags38 & 0x7000u) != 0) {
            created->m_flags38 &= 0xffff8fffu;
            created->m_dirtyFlags40 = static_cast<uint16_t>(created->m_dirtyFlags40 | ITexture::kDirtyMinFilter);
        }
        if ((created->m_flags38 & 0x38000u) != 0) {
            created->m_flags38 &= 0xfffc7fffu;
            created->m_dirtyFlags40 = static_cast<uint16_t>(created->m_dirtyFlags40 | ITexture::kDirtyMagFilter);
        }
    }
    glitch::os::Printer::setLogLevel(level);
    slot = created.get();
    return slot;
}

}  // namespace glitch::video
