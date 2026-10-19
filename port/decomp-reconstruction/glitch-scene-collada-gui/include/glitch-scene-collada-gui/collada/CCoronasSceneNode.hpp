// glitch::collada::CCoronasSceneNode: a billboard quad (a corona) with a material, a size and a vertex colour. Canonical header of the
// scene-owner wave, completed by residue pass ob (constructors, render, setMaterial). It replaces the CCoronasSceneNode stand-in of
// collada_scene_accessors.hpp and the address-named stub of generated_stubs.hpp (getType 0x6e5a2c). The class derives from the canonical
// scene::ISceneNode, as the other scene nodes do.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/trackb/field_sweep.py glitch::collada::CCoronasSceneNode, 16 queue rows;
// the constructors 0x6e7164 / 0x6e7778 and render 0x6e5d14):
//   +0x000 scene::ISceneNode (ends at +0x130)
//   +0x130 blocking callback: isBlocked calls it with the segment (camera -> this) as six floats and returns its int result.
//   +0x134 rotation scale, +0x138 rotation offset: render turns the quad by (distance / 50 * 3.1416) * scale + offset radians about the
//          view direction (the database constructor takes them from the record, SCoronas +0x10 / +0x14; the driver constructor leaves them)
//   +0x13c, +0x140 two floats of the record (SCoronas +0x18 / +0x1c), never read by the node's own functions
//   +0x144 a byte of the record (SCoronas +0x20, true when non-zero), never read by the node's own functions
//   +0x148 width, +0x14c height (setSize, 0x6e5a40, stores both and maps a zero to 1)
//   +0x150 bounding box (6 floats; the constructors set it to (-1,-1,-1)..(1,1,1))
//   +0x168 material (counted intrusive pointer to video::CMaterial)
//   +0x16c four corner records, stride 36 (0x24): position (3 floats), the texture coordinate (+0x0c, +0x10), the normal (+0x14 .. +0x1c; render
//          stores the unit direction from the camera target to the camera in all four), then the vertex colour word at +0x20. The vertex
//          stream table (position, texture coordinate 0, normal, colour: 12 + 8 + 12 + 4 = 36 bytes per vertex) reads the array itself.
//   +0x1fc vertex streams (counted pointer to video::CVertexStreams); the constructors allocate it with CVertexStreams::allocate(1, 0x60000)
//          over a 144-byte buffer that wraps the corner array, and set its vertex count (field08) to 4.
//   +0x200 the root node the database constructor was given (setMaterial asks it for the material); +0x204 the virtual base's vptr; +0x208 its
//          count (the constructors store 1).
// Constructors: 0x6e7164 (C1) and 0x6e7488 (C2) build the node from a driver; 0x6e7778 (C1) and 0x6e7a80 (C2) from a database
// record. Destructors 0x6e703c (D1), 0x6e70e4 (D2); D0 0x6e70c8 is skipped. The vtable adds setSize as the first virtual after ISceneNode's
// (K 0xf4).
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch {
namespace core {
template <typename T>
class dimension2d;
}
namespace video {
class CMaterial;
class CVertexStreams;
class IVideoDriver;
struct SColor;
}  // namespace video
}  // namespace glitch

namespace glitch::collada {

class CColladaDatabase;
class CRootSceneNode;
struct SCoronas;
struct SMaterial;

// One corner of the quad, 36 bytes (9 words). The colour is the vertex colour word at +0x20.
struct SCoronaCorner {
    float position[3] = {0.0f, 0.0f, 0.0f};  // +0x00
    float u = 0.0f;                          // +0x0c texture coordinate
    float v = 0.0f;                          // +0x10
    float normal[3] = {0.0f, 0.0f, 0.0f};    // +0x14 .. +0x1c
    std::uint32_t color = 0;                 // +0x20
};
static_assert(sizeof(SCoronaCorner) == 0x24, "corona corner is 36 bytes");

class CCoronasSceneNode : public scene::ISceneNode {
public:
    // 0x6e7164 (C1) / 0x6e7488 (C2): the driver constructor. The identifier and the position arguments are not used (the base is built with
    // id -1 and an identity transform); the size is stored as given, the four corners get the texture coordinates (1, 1), (1, 0), (0, 0)
    // and (0, 1) and the colour, and the stream table over the corner array is made.
    CCoronasSceneNode(video::IVideoDriver* driver, int id, const core::vector3d<float>& position,
                      boost::intrusive_ptr<video::CMaterial> material, const core::dimension2d<float>& size,
                      video::SColor color);
    // 0x6e7778 (C1) / 0x6e7a80 (C2): the database constructor: the record's name, size, rotation values and flag, the box, white corners with
    // the texture coordinates (1, 1), (1, 0), (0, 1) and (0, 0), the stream table over the corner array and the root node.
    CCoronasSceneNode(const CColladaDatabase& db, video::IVideoDriver* driver, SCoronas& coronas, CRootSceneNode* root);
    // 0x6e703c (D1) / 0x6e70e4 (D2): drops the vertex stream table; the material handle and the base follow.
    ~CCoronasSceneNode() override;

    // vptr+0xbc, 0x6e5a2c: returns the constant 1936618083 (0x736e7263).
    scene::E_SCENE_NODE_TYPE getType() const override;
    // 0x6e5a38: the box at +0x150.
    const core::aabbox3d<float>& getBoundingBox() const override;
    // K 0xf4, 0x6e5a40: stores the width and height, mapping a zero to 1.
    virtual void setSize(const core::dimension2d<float>& size);
    // 0x60f8b8: the material the root node builds for the record (CRootSceneNode::getMaterial) becomes the node's material, when there is one.
    void setMaterial(SMaterial& material, video::IVideoDriver* driver);
    // 0x6e5bc8: calls the blocking callback at +0x130 with the segment from the camera's absolute position to this node's
    // (the camera is the scene manager's +0xe4). Reconstructed; the only deviation is a null-camera guard where the
    // original dereferences.
    std::int32_t isBlocked();
    // 0x6e5c40: registers the node with the scene manager unless it is blocked (registerNodeForRendering with pass 3 and
    // sort order 0x7fffffff). Reconstructed.
    int onRegisterSceneNode() override;
    // 0x6e5d14: builds the quad in world space from the inverse view and projection matrices (the corner positions and normals are written
    // every call), then, when the render context is non-null, draws it as a four-vertex triangle strip with the depth function set to 7.
    void render(void* renderContext) override;
    // 0x6e5a90: addFloat("Width"), addFloat("Height"), addColor("VColor"). Reconstructed.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // 0x6e5b0c: the same three attributes back (getFloat, getFloat, getColor), then setSize (K 0xf4) with the stored width and height.
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    // +0x130: blocking callback (see isBlocked). Null means never blocked.
    std::int32_t (*blockCallback)(const float* segment) = nullptr;  // +0x130
    float rotationScale = 0.0f;                                     // +0x134
    float rotationOffset = 0.0f;                                    // +0x138
    float unk_13c = 0.0f;                                           // +0x13c
    float unk_140 = 0.0f;                                           // +0x140
    bool flag_144 = false;                                          // +0x144
    float width = 0.0f;                                             // +0x148
    float height = 0.0f;                                            // +0x14c
    core::aabbox3d<float> boundingBox;                              // +0x150
    boost::intrusive_ptr<video::CMaterial> material;                // +0x168
    SCoronaCorner corners[4];                                       // +0x16c
    video::CVertexStreams* vertexStreams = nullptr;                 // +0x1fc
    CRootSceneNode* root = nullptr;                                 // +0x200
    std::uint32_t unk_208 = 1;                                      // +0x208 (set to 1 by the constructor)
};

}  // namespace glitch::collada
