// glitch::scene::ISceneNode has one definition: scene/ISceneNode.hpp (canonical header of the engine unification wave,
// u1-scene). This header only forwards, so existing includes keep working.
//
// What changed for code that used the earlier stand-in in this file:
//   - ISceneNode is polymorphic now (72 slots, IAttributeExchangingObject primary base, virtual IReferenceCounted); render() and
//     getBoundingBox() are pure, so the class is abstract.
//   - absoluteTransform is a CMatrix4<float> (getAbsoluteTransformation returns it by reference, not a float*);
//     children, animators and bindedAnimators are the intrusive list objects at +0xf0, +0xfc and +0x104 (SChildList, SNodeList),
//     not std::vector; getName returns the name characters; nameWord is gone (the name is a std::string).
#pragma once

#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::scene {

// Bit 7 of ISceneNode::flags is the debug-object flag (ESNF_DEBUG_OBJECT).
inline constexpr std::uint32_t kSceneNodeDebugObjectBit = ESNF_DEBUG_OBJECT;

}  // namespace glitch::scene
