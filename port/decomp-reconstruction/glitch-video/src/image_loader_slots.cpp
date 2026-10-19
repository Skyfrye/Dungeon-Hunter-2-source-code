// Virtual slots of the image loaders and writers whose bodies are not reconstructed yet. They exist so that the
// loader classes (which now derive from IImageLoader / IImageWriter, with their full vtables) can be constructed; each
// stops with detail::unreconstructed(). Their ledger rows keep their earlier status.
#include "glitch-video/image_loaders.hpp"
#include "glitch-video/texture_loaders.hpp"

namespace glitch::video {

// 0x602c94 _ZNK6glitch5video12IImageLoader15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE
// The base has no texture load interface: it returns 0.
bool IImageLoader::loadTextureData(io::IReadFile*, const boost::intrusive_ptr<ITexture>&, const STextureDesc&) const {
    return false;
}

// loadImage / loadTextureHeader / loadTextureData / writeImage slots: src/ok2-ImageIO.cpp.

}  // namespace glitch::video
