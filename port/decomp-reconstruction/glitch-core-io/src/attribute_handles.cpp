#include "glitch-core-io/io/attributes.hpp"

namespace glitch::io {

// 0x31d7fc _ZN6glitch2io10IAttribute10getTextureEv
boost::intrusive_ptr<glitch::video::ITexture> IAttribute::getTexture() const { return {}; }

// 0x31d808 _ZN6glitch2io10IAttribute8getLightEv
boost::intrusive_ptr<glitch::video::CLight> IAttribute::getLight() const { return {}; }

}  // namespace glitch::io
