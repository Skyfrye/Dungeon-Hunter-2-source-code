// boost::intrusive_ptr has one definition, the counting form: glitch-core-io/boost/intrusive_ptr.hpp
// (TRACK-B decision 1, canonical header of the engine unification wave). The non-counting stub that this
// file used to hold is retired. The glitch::video alias below is kept for the unqualified spelling used
// inside the namespace.
//
// Counting consequences for the video classes (see each class header):
//   - IReferenceCounted-derived classes (ITexture, IBuffer, IShader, IShaderCode, IImageLoader, ...) are
//     released through drop(); several are born with count 0 (ITexture, IBuffer, IShaderCode), so a new
//     object is wrapped with intrusive_ptr<T>(p, true), which adds the first use. An object born with count 1
//     is wrapped with intrusive_ptr<T>(p), which takes that use over.
//   - CMaterial, CMaterialRenderer, CVertexStreams, CLight and the other classes that keep the count at
//     +0x00 declare their own intrusive_ptr_add_ref / intrusive_ptr_release next to the class.
#pragma once

#include "glitch-core-io/boost/intrusive_ptr.hpp"

namespace glitch::video {
template <typename T>
using intrusive_ptr = boost::intrusive_ptr<T>;
}  // namespace glitch::video
