// glitch::scene::IText, ITextSceneNode, CTextSceneNode and CBillboardTextSceneNode: the text-drawing nodes. Canonical header of the
// scene owner pass (R3b). It replaces the stand-ins in scene_simple_accessors.hpp (IText, CTextSceneNode, CBillboardTextSceneNode:
// classes with no base and with the accessors only).
//
// Hierarchy and layout (original 32-bit offsets; tools/decomp_vtable.py glitch::scene::CTextSceneNode, ITextSceneNode, IText,
// CBillboardTextSceneNode):
//   IText (24-byte vtable: D1 0x6d5838, D0 0x6d5a68, the slots +0x08 setText and +0x0c setTextColor) is the first base, a bare vptr
//   at +0x00. ITextSceneNode derives from IText and from ISceneNode, whose subobject therefore starts at +0x04 (the ISceneNode*
//   of a node pointer is the pointer plus 4; every ISceneNode offset of the other headers is +4 here).
//   CTextSceneNode (operator new(0x1a8), constructors 0x6d5ce0 C1 / 0x6d5e00 C2):
//     +0x000 IText vptr   +0x004 ISceneNode (to +0x134)   +0x134 text (a glitch wide string, 72 bytes: 16 inline characters, the
//     finish pointer at +0x17c-0x04... the string ends at +0x17c)   +0x17c text colour   +0x180 font (IGUIFont*, a use is held)
//     +0x184 collision manager (not held)   +0x188 box: min (-1,-1,-1), max (1,1,1)   +0x1a0 glitch::IReferenceCounted virtual base
//   CBillboardTextSceneNode (operator new(0x1c4) ...): ITextSceneNode, then IBillboard (its vptr at +0x134), then
//     +0x138 text (the string is never filled: setText is empty)   +0x180 text colour   +0x184 font (held)   +0x188 size (width,
//     height)   +0x190 box   +0x1a8 colour A   +0x1ac colour B   +0x1b0 a vector of three words (freed by the destructor)
//     +0x1bc mesh (CMesh, a use is held)   +0x1c0 glitch::IReferenceCounted virtual base
#pragma once

#include <string>

#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"
#include "glitch-scene-collada-gui/scene/CBillboardSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ISceneCollisionManager.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::video {
class CMaterialRendererManager;
}

namespace glitch::scene {

class CMesh;

class IText {
public:
    // 0x6d5838 (D1: empty), 0x6d5a68 (D0, skipped).
    virtual ~IText() = default;
    virtual void setText(const wchar_t* text) = 0;           // +0x08
    virtual void setTextColor(video::SColor color) = 0;      // +0x0c
};

class ITextSceneNode : public IText, public ISceneNode {
public:
    // 0x6d5b5c (C2 with the VTT): ISceneNode(id, position, rotation (0,0,0,1), scale 1).
    ITextSceneNode(int id, const core::vector3d<float>& position);
    // 0x6d5a84 (D1), 0x6d6864 (D0, skipped).
    ~ITextSceneNode() override;
};

class CTextSceneNode : public ITextSceneNode {
public:
    // 0x6d5e00 (C2) and 0x6d5ce0 (C1): a text of `text` in `color` at `position`, drawn with `font` (a use is taken) at the screen
    // position the collision manager gives for the node. Box -1..1, automatic culling 0.
    CTextSceneNode(int id, gui::IGUIFont* font, ISceneCollisionManager* collisionManager, const core::vector3d<float>& position,
                   const wchar_t* text, video::SColor color);
    // 0x6d5f78 (D2), 0x6d6b0c (D1) and 0x6d6bc0 (D0, skipped): drops the font; the text frees itself.
    ~CTextSceneNode() override;

    // IText's slots.
    void setText(const wchar_t* newText) override;                // 0x6d5c00
    void setTextColor(video::SColor color) override;              // 0x6d5874
    // ISceneNode's slots.
    int onRegisterSceneNode() override;                            // 0x6d5b04
    void render(void* renderContext) override;                     // 0x6d5c30
    const core::aabbox3d<float>& getBoundingBox() const override;  // 0x6d586c
    E_SCENE_NODE_TYPE getType() const override;                    // 0x6d5844

    std::wstring text;                                              // +0x134
    video::SColor textColor;                                        // +0x17c
    gui::IGUIFont* font = nullptr;                                  // +0x180
    ISceneCollisionManager* collisionManager = nullptr;             // +0x184
    core::aabbox3d<float> boundingBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};  // +0x188
};

class CBillboardTextSceneNode : public ITextSceneNode, public IBillboard {
public:
    // 0x6d6438 (C2) and 0x6d6020 (C1). A font of the bitmap kind is required (the log line "Sorry, CBillboardTextSceneNode does not
    // support this font type" is written otherwise): the manager makes a material renderer of type 9, the node keeps a use of the
    // font and builds a CMesh with one mesh buffer and one material per texture of the font's sprite bank (the texture goes into
    // the renderer's texture parameter). Then setText(text), setSize(size) and automatic culling 1.
    CBillboardTextSceneNode(video::CMaterialRendererManager& materialRenderers, int id, gui::IGUIFont* font, const wchar_t* text,
                            const core::vector3d<float>& position, const core::dimension2d<float>& size, video::SColor colorA,
                            video::SColor colorB);
    // 0x6d6a08 (D2), 0x6d68f4 (D1) and 0x6d69ec (D0, skipped): drops the font and the mesh.
    ~CBillboardTextSceneNode() override;

    // IText's slots.
    void setText(const wchar_t* newText) override;                 // 0x6d589c: empty
    void setTextColor(video::SColor color) override;               // 0x6d59cc
    // ISceneNode's slots.
    int onRegisterSceneNode() override;                             // 0x6d58a8: returns 1 (the node does not register for rendering)
    void render(void* renderContext) override;                      // 0x6d6be4
    const core::aabbox3d<float>& getBoundingBox() const override;   // 0x6d58b8
    boost::intrusive_ptr<video::CMaterial> getMaterial(std::uint32_t index) const override;  // 0x6d5920
    std::uint32_t getMaterialCount() const override;                // 0x6d5990
    E_SCENE_NODE_TYPE getType() const override;                     // 0x6d5858
    // IBillboard's slots.
    void setSize(const core::dimension2d<float>& newSize) override;  // 0x6d58c8
    const core::dimension2d<float>& getSize() const override;        // 0x6d59c4
    void setColor(const video::SColor& color) override;              // 0x6d59fc: empty
    void setColor(const video::SColor& top, const video::SColor& bottom) override;  // 0x6d5a08: empty
    void getColor(video::SColor& top, video::SColor& bottom) const override;        // 0x6d5a14

    std::wstring text;                                              // +0x138
    video::SColor textColor;                                        // +0x180
    gui::IGUIFont* font = nullptr;                                  // +0x184
    core::dimension2d<float> size;                                  // +0x188
    core::aabbox3d<float> boundingBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};  // +0x190
    video::SColor colorA;                                           // +0x1a8
    video::SColor colorB;                                           // +0x1ac
    std::vector<std::uint32_t> unusedWords;                         // +0x1b0 (freed by the destructor, never filled)
    boost::intrusive_ptr<CMesh> mesh;                               // +0x1bc
};

}  // namespace glitch::scene
