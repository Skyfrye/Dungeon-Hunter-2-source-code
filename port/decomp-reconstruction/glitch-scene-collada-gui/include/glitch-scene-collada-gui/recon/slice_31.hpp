// Slice 31 reconstruction stand-ins (namespace glitch::collada::recon_31).
// Covers the glitch::scene node entries, constructors and attribute bodies,
// and the camera and light node attribute bodies. (The glitch::gui bodies of the slice are in gui/*.cpp.)
//
// Attribute calls go through the glitch::io::CAttributes vtable slots (see
// the decomp_vtable.py listing for CAttributes); each declaration gives the
// slot offset the original calls through. Object-level virtuals have no names
// in the category yet. The names used here are inferred from what each call
// passes and returns; the bodies that depend on them are marked partial in
// the ledger.
//
// Layout: member offsets from the original are kept as comments (byte offsets;
// the pseudocode indexes 32-bit words). The types are stand-ins, not ABI
// compatible. Nothing here is attached to the existing headers; the bodies are
// free functions because no class in the category declares these methods.
#pragma once

#include <string>

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/deps/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/deps/video_stand_ins.hpp"

namespace glitch::video {
class ITexture;
class CLight;
class CMaterial;
}  // namespace glitch::video

namespace glitch::io {
class IReadFile;
}  // namespace glitch::io

namespace glitch::collada::recon_31 {

struct SAttributeReadWriteOptions;
class ISceneNode;

// glitch::io::IAttributes: the canonical interface (glitch-core-io/io/iattributes.hpp). The stand-in
// addStringW is the canonical addString(const char*, const wchar_t*, bool) slot at +0x94.
using glitch::io::IAttributes;

// Enumeration name tables passed to addEnum/getEnum and the per-slot name
// lists. The tables are data in the category and are declared here only.
extern const char* const AutomaticCullingNames[];

// ---------------------------------------------------------------------------
// glitch::scene::ISceneNode (stand-in). Only the virtuals the bodies call.
// ---------------------------------------------------------------------------
class ISceneNode {
public:
    virtual ~ISceneNode() = default;

    // Object-level virtuals; names inferred from the call sites.
    virtual const glitch::core::vector3d<float>* getAbsoluteTranslation() const = 0;  // +0x38
    virtual const glitch::core::aabbox3d<float>* getBoundingBox() const = 0;          // +0x30
    virtual float getDistanceBias() const = 0;                                        // +0xd0
    virtual int getDefaultSortOrder() const = 0;                                      // +0xd8
};

// The base attribute bodies belong to ISceneNode in the category; the derived
// bodies forward to them.
void ISceneNode_serializeAttributes(const ISceneNode* self, IAttributes* attributes,
                                    SAttributeReadWriteOptions* options);
void ISceneNode_deserializeAttributes(ISceneNode* self, IAttributes* attributes,
                                      SAttributeReadWriteOptions* options);

// glitch::scene::CSkinnedMeshSceneNode: its serialise and deserialise are
// thunks to the ISceneNode bodies.
class CSkinnedMeshSceneNode : public ISceneNode {};
void CSkinnedMeshSceneNode_serializeAttributes(const CSkinnedMeshSceneNode& self, IAttributes* attributes,
                                               SAttributeReadWriteOptions* options);
void CSkinnedMeshSceneNode_deserializeAttributes(CSkinnedMeshSceneNode& self, IAttributes* attributes,
                                                 SAttributeReadWriteOptions* options);

// ---------------------------------------------------------------------------
// glitch::scene billboard (retired here: canonical glitch::scene::CBillboardSceneNode in scene/CBillboardSceneNode.hpp) and light nodes.
// ---------------------------------------------------------------------------
class CLightSceneNode : public ISceneNode {
public:
    glitch::video::CLight* light = nullptr;  // +0x134 (word 77)
};

// CLight::deserializeAttributes is defined with the video light code.
void CLight_deserializeAttributes(glitch::video::CLight* light, IAttributes* attributes,
                                  SAttributeReadWriteOptions* options);
void CLightSceneNode_deserializeAttributes(CLightSceneNode& self, IAttributes* attributes,
                                           SAttributeReadWriteOptions* options);

// The glitch::gui widgets, the skin and the environment of this slice are the canonical classes in gui/*.hpp.

}  // namespace glitch::collada::recon_31
