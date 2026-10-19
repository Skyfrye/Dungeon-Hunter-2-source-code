// glitch::video::CLight: a light source record (colours, attenuation, cone angles, type) and the
// STransformationSource slot that links it to a scene node. Canonical definition (engine unification wave u1-video);
// the stand-in in glitch-core-io (deps/glitch_core_objects.hpp, which derived from IReferenceCounted) and the
// forward declarations in glitch-scene-collada-gui and game/ are replaced by this header.
//
// CLight is NOT an IReferenceCounted: the reference count is its first word (+0x00), the constructors store 0 and
// CLight::allocate / clone add the first use, so the intrusive_ptr add and release below are CLight's own. The
// class has no vtable.
//
// Layout of the original object (32-bit, 0x5c bytes; constructors 0x59fe08 / 0x59fef8 default, 0x59fc40 / 0x59fd48
// copy; member names from serializeAttributes 0x59ffa8 and deserializeAttributes 0x5a015c):
//   +0x00  reference count
//   +0x04  AmbientColor (SColorf; default 0, 0, 0, 1)
//   +0x14  DiffuseColor (SColorf; default 1, 1, 1, 1)
//   +0x24  SpecularColor (SColorf; default 1, 1, 1, 1)
//   +0x34  Attenuation (vector3d; default 1, 0, 0: constant, linear, quadratic)
//   +0x40  Radius (default FLT_MAX)      +0x44  InnerConeAngle (0)
//   +0x48  OuterConeAngle (40.0)         +0x4c  Falloff (2.0)
//   +0x50  STransformationSource (8 bytes: a pointer to a pooled matrix, then a flag byte at +0x54). Both
//          constructors store a null pointer and flag 1 ("attached"); with no out slot they then call detach().
//          setAbsoluteTransformation refuses while the flag is set (logs "Can not set absolute transform ...")
//   +0x58  uint16 "Type" (E_LIGHT_TYPE; 0 after construction, 3 for the driver's default dynamic light)
//   +0x5a  byte "CastShadows" (1 after the default constructor)
#pragma once

#include <cstdint>

#include "glitch-shared/glitch_core.hpp"
#include "glitch-video/deps/intrusive_ptr.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::video {

// The slot at CLight +0x50 (8 bytes: a pointer to a pooled matrix and a flag; the flag is CLight +0x54).
// While `attached` is set the matrix belongs to the scene node the light follows; detach() gives the light its own
// copy and clears the flag.
struct STransformationSource {
    core::CMatrix4<float>* matrix = nullptr;  // +0x00 (CLight +0x50)
    bool attached = false;                    // +0x04 (CLight +0x54)

    // 0x5846f8 (member, no arguments): when attached, clears the flag and stores a copy of the current matrix (or of
    // the identity matrix when there is none). The original takes the block from the global glitch::memory::Matrix4Pool
    // free list (grown with GlitchAlloc); the port allocates it with new. Partial for that reason.
    void detach();
};

class CLight {
public:
    // Copy constructor (0x59fc40 C1, 0x59fd48 C2). The source slot is not copied: it is
    // reset, and *out (when given) receives the address of the new slot.
    CLight(const CLight& source, STransformationSource** out);
    // Default constructor (0x59fe08 C1, 0x59fef8 C2).
    explicit CLight(STransformationSource** out);
    // Port addition: the original returns the matrix block to the Matrix4Pool in the inlined release (the
    // intrusive_ptr release path 0x5c5be0 family); the port frees an owned matrix here.
    ~CLight();

    // 0x59fd00: heap copy, returned with the count set to 1.
    boost::intrusive_ptr<CLight> clone(STransformationSource** out) const;
    // 0x59feb8: heap allocation, returned with the count set to 1.
    static boost::intrusive_ptr<CLight> allocate(STransformationSource** out);

    // 0x59fc00: copies 0x41 bytes of the matrix (16 floats and the identity flag) into the slot's matrix. Returns 1
    // on success, 0 with an error log when the light follows a transformation source (+0x54 set).
    int setAbsoluteTransformation(const glitch::core::CMatrix4<float>& transform);

    // 0x59ffa8 / 0x5a015c: attribute (de)serializers. Both write the same ten attributes in the same order:
    // "Type" (an enum over the light-type name table), the three colours, "Attenuation" (vector3d), "Radius",
    // "InnerConeAngle", "OuterConeAngle", "Falloff" (floats) and "CastShadows" (bool). The options argument is
    // never read (the listing passes a literal 0 as the flag of every call).
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options);

    mutable uint32_t m_refCount = 0;       // +0x00
    SColorf m_ambientColor{0.0f, 0.0f, 0.0f, 1.0f};  // +0x04
    SColorf m_diffuseColor{1.0f, 1.0f, 1.0f, 1.0f};  // +0x14
    SColorf m_specularColor{1.0f, 1.0f, 1.0f, 1.0f}; // +0x24
    core::vector3d<float> m_attenuation;   // +0x34 (1, 0, 0)
    float m_radius = 0.0f;                 // +0x40, FLT_MAX
    float m_innerConeAngle = 0.0f;         // +0x44
    float m_outerConeAngle = 0.0f;         // +0x48, 40.0
    float m_falloff = 0.0f;                // +0x4c, 2.0
    STransformationSource m_transformationSource;  // +0x50
    // +0x54 is STransformationSource::attached (1 after both constructors, 0 after detach())
    uint16_t m_type = 0;                   // +0x58, E_LIGHT_TYPE
    uint8_t m_castShadows = 0;             // +0x5a
};

// The original's inline count updates (CLight keeps its count at +0x00, not in IReferenceCounted).
inline void intrusive_ptr_add_ref(const CLight* p) { ++p->m_refCount; }
inline void intrusive_ptr_release(const CLight* p) {
    if (p->m_refCount-- == 1) delete p;
}

}  // namespace glitch::video
