// Evidence-based member layouts for the glitch::scene classes that have no canonical header yet (CBillboardSceneNode and
// CDummyTransformationSceneNode; the others moved to scene/), recovered from the
// Hex-Rays bodies in the decomp export (32-bit ARM target).
//
// Every named member carries: +0xNN offset, access width, and src=0xADDR, the
// body address that proves the access. Gaps are pad arrays marked "not
// confirmed". A name is used only where the body shows the access; method names
// alone were not used. Irrlicht naming was not applied: no Irrlicht header was
// checked against these offsets.
//
// Hex-Rays prints `this + N` as bytes when `this` is an int, and as word
// indexes when it is a _DWORD pointer. All offsets below are byte offsets from
// the object start, already converted.
//
// Virtual-slot calls are listed per class in the comment block as
// "slot N (+OFF) at SRC": N is the vtable word index (OFF / 4).

#ifndef GLITCH_SCENE_COLLADA_GUI_LAYOUTS_SCENE_EVIDENCE_HPP
#define GLITCH_SCENE_COLLADA_GUI_LAYOUTS_SCENE_EVIDENCE_HPP

#include <cstddef>
#include <cstdint>

namespace glitch::scene::evidence {

// CBatchMesh, CBatchSceneNode, CCameraSceneNode and CEmptySceneNode: canonical in scene/CBatchMesh.hpp, scene/CBatchSceneNode.hpp,
// scene/CCameraSceneNode.hpp and scene/CEmptySceneNode.hpp (their evidence moved into those headers).

// ---------------------------------------------------------------------------
// CBillboardSceneNode. Base region (IBillboardSceneNode and ISceneNode) is
// mapped only by its vptr at +0x00. The ctor writes +0x04 from a sub-object
// table and that is not confirmed.
// Colors: setColor (src 0x580b44) writes the four color words; getColor (src
// 0x580bec) returns +0x178 and +0x19c. The ctor writes a8 to 0x178 and 0x1c0,
// and a7 to 0x19c and 0x1e4. Pairing into named colors is not confirmed.
// Virtual-slot calls:
//   slot 30 (+0x78) on the IVideoDriver arg at 0x581c80 (vertex stream allocate)
//   slot 9  (+0x24) on the object at +0x114 at 0x580a40 (onRegisterSceneNode);
//                   the object's type is not confirmed
// ---------------------------------------------------------------------------
struct CBillboardSceneNode {
    std::uint32_t vptr;                 // +0x00 width=4 src=0x581c80 (ctor stores *a2)
    std::uint8_t pad_0x04[0x130];       // not confirmed: +0x04 sub-object word (src 0x581c80) and base region
    float size_w;                       // +0x134 width=4 float src=0x580aa0 (setSize); read as dimension2d by getSize src=0x580b3c
    float size_h;                       // +0x138 width=4 float src=0x580aa0 (setSize; zero replaced by 1.0)
    float bbox_min[3];                  // +0x13c width=4 float src=0x580aa0 (setSize stores -(w+h)/6 with the sign bit flipped)
    float bbox_max[3];                  // +0x148 width=4 float src=0x580aa0 (setSize stores +(w+h)/6)
    std::uint32_t material;             // +0x154 width=4 src=0x580e68 (setMaterial swaps in a ref); read src=0x580a40
    std::uint8_t pad_0x158[0x0C];       // not confirmed: zeroed by ctor 0x581c80 (part of the 144-byte block passed to slot 30)
    std::uint8_t pad_0x164[0x08];       // not confirmed: ctor 0x581c80 writes 1.0f at +0x164 and +0x168
    std::uint8_t pad_0x16c[0x0C];       // not confirmed
    std::uint32_t color_0x178;          // +0x178 width=4 src=0x580b44 (setColor), src=0x580bec (getColor), ctor 0x581c80 writes a8
    std::uint8_t pad_0x17c[0x20];       // not confirmed: ctor writes 1.0f at +0x188 and 0 at +0x18c
    std::uint32_t color_0x19c;          // +0x19c width=4 src=0x580b44 (setColor), src=0x580bec (getColor), ctor 0x581c80 writes a7
    std::uint8_t pad_0x1a0[0x14];       // not confirmed: ctor writes 0 at +0x1ac and 1.0f at +0x1b0
    std::uint8_t pad_0x1b4[0x0C];       // not confirmed
    std::uint32_t color_0x1c0;          // +0x1c0 width=4 src=0x580b44 (setColor), ctor 0x581c80 writes a8 (bytes 448..451)
    std::uint8_t pad_0x1c4[0x0C];       // not confirmed: ctor writes 0 at +0x1d0 and +0x1d4
    std::uint8_t pad_0x1d0[0x14];       // not confirmed
    std::uint32_t color_0x1e4;          // +0x1e4 width=4 src=0x580b44 (setColor), ctor 0x581c80 writes a7 (bytes 484..487)
    std::uint32_t vertex_streams;       // +0x1e8 width=4 src=0x581c80 (CVertexStreams::allocate result, ref-counted and swapped in)
};
static_assert(offsetof(CBillboardSceneNode, vptr) == 0x00);
static_assert(offsetof(CBillboardSceneNode, size_w) == 0x134);
static_assert(offsetof(CBillboardSceneNode, size_h) == 0x138);
static_assert(offsetof(CBillboardSceneNode, bbox_min) == 0x13c);
static_assert(offsetof(CBillboardSceneNode, bbox_max) == 0x148);
static_assert(offsetof(CBillboardSceneNode, material) == 0x154);
static_assert(offsetof(CBillboardSceneNode, color_0x178) == 0x178);
static_assert(offsetof(CBillboardSceneNode, color_0x19c) == 0x19c);
static_assert(offsetof(CBillboardSceneNode, color_0x1c0) == 0x1c0);
static_assert(offsetof(CBillboardSceneNode, color_0x1e4) == 0x1e4);
static_assert(offsetof(CBillboardSceneNode, vertex_streams) == 0x1e8);

// ---------------------------------------------------------------------------
// CDummyTransformationSceneNode. Base region is below +0x130.
// The ctor (0x6bb940) clears 0x40 bytes at +0x130 and writes 1.0f/-1.0f floats
// around the flag. These float values are not named here.
// ---------------------------------------------------------------------------
struct CDummyTransformationSceneNode {
    std::uint8_t pad_0x00[0x130];       // not confirmed: base region (IDummyTransformationSceneNode, ISceneNode)
    std::uint8_t zero_block_0x130[0x40]; // not confirmed: cleared by ctor 0x6bb940 (memset 0x40 bytes at +0x130), then float writes 1.0f and -1.0f
    std::uint8_t setup_flag_0x170;      // +0x170 width=1 src=0x6bb940 (set 0 before the memset, set 1 after)
};
static_assert(offsetof(CDummyTransformationSceneNode, setup_flag_0x170) == 0x170);

}  // namespace glitch::scene::evidence

#endif  // GLITCH_SCENE_COLLADA_GUI_LAYOUTS_SCENE_EVIDENCE_HPP
