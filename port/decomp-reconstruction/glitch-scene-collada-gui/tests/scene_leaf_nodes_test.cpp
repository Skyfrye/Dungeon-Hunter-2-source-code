// Checks for the leaf scene node classes of the scene owner pass: CDummyTransformationSceneNode, CTextSceneNode and
// CBillboardTextSceneNode (and the reference counting around their fonts and meshes). Exit status is non-zero when a check fails.
#include <cstdio>
#include <string>

#include "glitch-scene-collada-gui/gui/CGUISpriteBank.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"
#include "glitch-scene-collada-gui/scene/CDummyTransformationSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/CTextSceneNode.hpp"
#include "glitch-video/material_renderer_manager.hpp"

using namespace glitch::scene;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

class TestSceneManager : public CSceneManager {
public:
    TestSceneManager()
        : CSceneManager(nullptr, boost::intrusive_ptr<glitch::io::IFileSystem>(), nullptr, nullptr, nullptr) {}
};

// A bitmap font that records what it is asked to draw.
class FakeFont : public glitch::gui::IGUIFontBitmap {
public:
    void draw(const wchar_t* text, const glitch::core::rect<int>& position, glitch::video::SColor color, bool hcenter, bool vcenter,
              const glitch::core::rect<int>* clip) override {
        drawn = text;
        area = position;
        drawColor = color.color;
        centered = hcenter && vcenter && clip == nullptr;
        ++draws;
    }
    void draw(const char*, const glitch::core::rect<int>&, glitch::video::SColor, bool, bool, const glitch::core::rect<int>*) override {}
    void drawInTexture(const wchar_t*, const boost::intrusive_ptr<glitch::video::ITexture>&, glitch::core::rect<int>, glitch::video::SColor,
                       bool, bool) override {}
    void drawInTexture(const char*, const boost::intrusive_ptr<glitch::video::ITexture>&, glitch::core::rect<int>, glitch::video::SColor,
                       bool, bool) override {}
    glitch::core::dimension2d<int> getDimension(const wchar_t*) const override { return {}; }
    glitch::core::dimension2d<int> getDimension(const char*) const override { return {}; }
    int getCharacterFromPos(const wchar_t*, int) const override { return 0; }
    void setKerningWidth(int) override {}
    void setKerningHeight(int) override {}
    void setBorder(std::uint32_t, glitch::video::SColor) override {}
    int getKerningWidth(const wchar_t*, const wchar_t*) const override { return 0; }
    int getKerningHeight() const override { return 0; }
    void setTracking(int) override {}
    int getTracking() const override { return 0; }
    glitch::gui::IGUISpriteBank* getSpriteBank() const override { return nullptr; }
    std::uint32_t getSpriteNoFromChar(const wchar_t*) const override { return 0; }

    std::wstring drawn;
    glitch::core::rect<int> area;
    std::uint32_t drawColor = 0;
    bool centered = false;
    int draws = 0;
};

// A collision manager that projects everything to one screen position.
class FakeCollisions : public ISceneCollisionManager {
public:
    bool getCollisionPoint(const glitch::core::line3d<float>&, ITriangleSelector*, glitch::core::vector3d<float>&,
                           glitch::core::triangle3d<float>&) override { return false; }
    glitch::core::vector3d<float> getCollisionResultPosition(ITriangleSelector*, const glitch::core::vector3d<float>&,
                                                             const glitch::core::vector3d<float>&, const glitch::core::vector3d<float>&,
                                                             glitch::core::triangle3d<float>&, bool&, float,
                                                             const glitch::core::vector3d<float>&) override { return {}; }
    glitch::core::line3d<float> getRayFromScreenCoordinates(glitch::core::position2d<std::int32_t>, ICameraSceneNode*) override { return {}; }
    glitch::core::position2d<std::int32_t> getScreenCoordinatesFrom3DPosition(glitch::core::vector3d<float> position,
                                                                              ICameraSceneNode*) override {
        lastPosition = position;
        return {40, 25};
    }
    ISceneNode* getSceneNodeFromScreenCoordinatesBB(glitch::core::position2d<std::int32_t>, std::int32_t, bool) override { return nullptr; }
    ISceneNode* getSceneNodeFromRayBB(glitch::core::line3d<float>, std::int32_t, bool, ISceneNode*) override { return nullptr; }
    ISceneNode* getSceneNodeFromCameraBB(ICameraSceneNode*, std::int32_t, bool) override { return nullptr; }
    glitch::core::vector3d<float> lastPosition;
};

}  // namespace

int main() {
    // CDummyTransformationSceneNode: identity matrix and unit box by default, setRelativeTransformationMatrix drives the node.
    {
        CDummyTransformationSceneNode* dummy = new CDummyTransformationSceneNode(7);
        CHECK(dummy->getType() == ESNT_DUMMY_TRANSFORMATION && dummy->getID() == 7 && dummy->automaticCulling == 0);
        CHECK(&dummy->getRelativeTransformationMatrix() == &dummy->matrix);
        CHECK(dummy->matrix.M[0] == 1.0f && dummy->matrix.M[5] == 1.0f && dummy->matrix.M[10] == 1.0f && dummy->matrix.M[15] == 1.0f);
        CHECK(dummy->matrix.M[1] == 0.0f && dummy->matrix.M[12] == 0.0f);
        CHECK(&dummy->getBoundingBox() == &dummy->boundingBox);
        CHECK(dummy->boundingBox.MinEdge.X == -1.0f && dummy->boundingBox.MaxEdge.Z == 1.0f);
        dummy->render(nullptr);
        glitch::core::CMatrix4<float> transform{glitch::core::CMatrix4<float>::EM4CONST_IDENTITY};
        transform.M[12] = 3.0f;
        transform.M[13] = 4.0f;
        transform.M[14] = 5.0f;
        transform.M[0] = 2.0f;   // x row length 2
        dummy->setRelativeTransformationMatrix(transform);
        CHECK(dummy->matrix.M[12] == 3.0f && dummy->getPosition().X == 3.0f && dummy->getPosition().Y == 4.0f && dummy->getPosition().Z == 5.0f);
        CHECK(dummy->getScale().X == 2.0f && dummy->getScale().Y == 1.0f && dummy->getScale().Z == 1.0f);
        ISceneNode* copy = dummy->clone();
        CHECK(copy != nullptr && copy->getType() == ESNT_DUMMY_TRANSFORMATION && copy->getID() == 7);
        auto* typed = static_cast<CDummyTransformationSceneNode*>(copy);
        CHECK(typed->matrix.M[12] == 3.0f && typed->matrix.M[0] == 2.0f && typed->boundingBox.MaxEdge.X == 1.0f);
        copy->drop();
        dummy->drop();
    }

    // CTextSceneNode: the constructor takes a use of the font, setText replaces the text, onRegisterSceneNode files the node for the
    // transparent pass, render draws centred at the projected position.
    {
        TestSceneManager* manager = new TestSceneManager();
        FakeFont* font = new FakeFont();
        FakeCollisions* collisions = new FakeCollisions();
        CTextSceneNode* node = new CTextSceneNode(5, font, collisions, glitch::core::vector3d<float>{1.0f, 2.0f, 3.0f}, L"hello",
                                                  glitch::video::SColor{0xff112233u});
        CHECK(font->referenceCounter == 2);
        CHECK(node->getType() == ESNT_TEXT && node->getID() == 5 && node->automaticCulling == 0);
        CHECK(node->text == L"hello" && node->textColor.color == 0xff112233u);
        CHECK(&node->getBoundingBox() == &node->boundingBox && node->boundingBox.MinEdge.Y == -1.0f);
        CHECK(node->getPosition().Z == 3.0f);
        node->setText(L"world!");
        CHECK(node->text == L"world!");
        node->setTextColor(glitch::video::SColor{0xaabbccddu});
        CHECK(node->textColor.color == 0xaabbccddu);
        manager->rootNode->addChild(node);
        node->updateAbsolutePosition(false);
        CHECK(node->sceneManager == manager);
        CHECK(node->onRegisterSceneNode() == 1);
        CHECK(manager->transparentNodes.size() == 1 && manager->transparentNodes[0].node == node);
        node->render(nullptr);
        CHECK(font->draws == 1 && font->drawn == L"world!" && font->centered && font->drawColor == 0xaabbccddu);
        CHECK(font->area.UpperLeftCorner.X == 40 && font->area.UpperLeftCorner.Y == 25);
        CHECK(font->area.LowerRightCorner.X == 41 && font->area.LowerRightCorner.Y == 26);
        CHECK(collisions->lastPosition.X == 1.0f && collisions->lastPosition.Y == 2.0f && collisions->lastPosition.Z == 3.0f);
        node->collisionManager = nullptr;
        node->render(nullptr);
        CHECK(font->draws == 1);   // without a collision manager nothing is drawn
        node->drop();                 // the root still holds the node
        CHECK(font->referenceCounter == 2);
        manager->clear();             // the root lets go of its children: the node dies and drops its use of the font
        CHECK(font->referenceCounter == 1);
        font->drop();
        collisions->drop();
        manager->drop();
    }

    // CBillboardTextSceneNode without a font: no mesh, the size becomes 1 for zero extents, colours as given, no registration.
    {
        TestSceneManager* manager = new TestSceneManager();
        CBillboardTextSceneNode* node = nullptr;
        {
            // The constructor takes the material renderer manager by reference, which only a font makes it use.
            alignas(8) static unsigned char storage[sizeof(glitch::video::CMaterialRendererManager)];
            auto& renderers = *reinterpret_cast<glitch::video::CMaterialRendererManager*>(storage);
            node = new CBillboardTextSceneNode(renderers, 9, nullptr, L"ignored", glitch::core::vector3d<float>{0.0f, 1.0f, 0.0f},
                                               glitch::core::dimension2d<float>{0.0f, 2.0f}, glitch::video::SColor{0x11u},
                                               glitch::video::SColor{0x22u});
        }
        CHECK(node->getType() == ESNT_TEXT && node->getID() == 9 && node->automaticCulling == 1);
        CHECK(node->getSize().Width == 1.0f && node->getSize().Height == 2.0f);
        node->setSize(glitch::core::dimension2d<float>{3.0f, 0.0f});
        CHECK(node->getSize().Width == 3.0f && node->getSize().Height == 1.0f);
        glitch::video::SColor top, bottom;
        node->getColor(top, bottom);
        CHECK(top.color == 0x11u && bottom.color == 0x22u);
        node->setColor(glitch::video::SColor{0x99u});   // empty in the original
        node->getColor(top, bottom);
        CHECK(top.color == 0x11u);
        node->setTextColor(glitch::video::SColor{0x33u});
        CHECK(node->textColor.color == 0x33u);
        node->setText(L"ignored too");
        CHECK(node->text.empty());
        CHECK(node->getMaterialCount() == 0 && !node->getMaterial(0));
        CHECK(node->onRegisterSceneNode() == 1 && manager->transparentNodes.empty() && manager->defaultNodes.empty());
        CHECK(&node->getBoundingBox() == &node->boundingBox);
        node->drop();
        manager->drop();
    }

    std::printf("%s\n", failures ? "scene_leaf_nodes: FAILED" : "scene_leaf_nodes: ok");
    return failures != 0;
}
