// Checks the camera classes: the SViewFrustum constructor, the ISceneNode / ICameraSceneNode / CCameraSceneNode
// constructor chain, the frustum-owned matrices and box, the projection and view recalculation, and onEvent.
// The expected matrices are the glitch-core-io builders called with the arguments the Hex-Rays pseudocode passes.
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

#include "glitch-scene-collada-gui/core_matrix_builders.hpp"
#include "glitch-scene-collada-gui/scene_nodes.hpp"

using glitch::core::CMatrix4;
using glitch::core::vector3d;
using namespace glitch::scene;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

bool sameMatrix(const CMatrix4<float>& a, const CMatrix4<float>& b) {
    return std::memcmp(a.M, b.M, sizeof a.M) == 0;
}

bool isIdentityMatrix(const CMatrix4<float>& m) {
    for (int i = 0; i < 16; ++i) {
        const float expected = (i % 5 == 0) ? 1.0f : 0.0f;
        if (m.M[i] != expected) return false;
    }
    return m.flag;
}

float bitsToFloat(std::uint32_t bits) {
    float value = 0.0f;
    std::memcpy(&value, &bits, sizeof value);
    return value;
}

// An animator that records how it was asked about events.
class RecordingAnimator : public ISceneNodeAnimator {
public:
    bool receiver = true;
    bool handles = false;
    int eventCalls = 0;
    void animateNode(ISceneNode*, std::uint32_t) override {}
    ISceneNodeAnimator* createClone() override { return nullptr; }
    bool isEventReceiverEnabled() const override { return receiver; }
    bool onEvent(const glitch::SEvent&) override {
        ++eventCalls;
        return handles;
    }
};

// CSceneManager is abstract (registerSkinnedMesh is pure) and has no default constructor.
class TestSceneManager : public CSceneManager {
public:
    TestSceneManager()
        : CSceneManager(nullptr, boost::intrusive_ptr<glitch::io::IFileSystem>(), nullptr, nullptr, nullptr) {}
    void registerSkinnedMesh(void*) override {}
};

// ISceneNode is abstract (render and getBoundingBox are pure).
class TestNode : public ISceneNode {
public:
    TestNode()
        : ISceneNode(0, vector3d<float>{0.0f, 0.0f, 0.0f}, glitch::core::quaternion{0.0f, 0.0f, 0.0f, 1.0f},
                     vector3d<float>{1.0f, 1.0f, 1.0f}) {}
    void render(void*) override {}
    const glitch::core::aabbox3d<float>& getBoundingBox() const override { return box; }
    glitch::core::aabbox3d<float> box{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};
};

}  // namespace

int main() {
    // SViewFrustum constructor (0x582bd8).
    {
        SViewFrustum frustum;
        CHECK(frustum.cameraPosition.X == 0.0f && frustum.cameraPosition.Y == 0.0f && frustum.cameraPosition.Z == 0.0f);
        for (const auto& plane : frustum.planes) {
            CHECK(plane.Normal.X == 0.0f && plane.Normal.Y == 1.0f && plane.Normal.Z == 0.0f);
            std::uint32_t dBits = 0;
            std::memcpy(&dBits, &plane.D, sizeof dBits);
            CHECK(dBits == 0x80000000u);  // D is the word 0x80000000
        }
        CHECK(frustum.box.MinEdge.X == -1.0f && frustum.box.MinEdge.Y == -1.0f && frustum.box.MinEdge.Z == -1.0f);
        CHECK(frustum.box.MaxEdge.X == 1.0f && frustum.box.MaxEdge.Y == 1.0f && frustum.box.MaxEdge.Z == 1.0f);
        CHECK(isIdentityMatrix(frustum.viewMatrix));
        CHECK(isIdentityMatrix(frustum.worldMatrix));
        CHECK(isIdentityMatrix(frustum.projectionMatrix));
        CHECK(isIdentityMatrix(frustum.viewProjectionMatrix));
        CHECK(isIdentityMatrix(frustum.inverseViewMatrix));
        CHECK(isIdentityMatrix(frustum.worldViewProjectionMatrix));
    }

    // Constructor chain: ISceneNode(id, position, quaternion, scale), then the camera members.
    const vector3d<float> position{10.0f, 20.0f, 30.0f};
    const vector3d<float> lookAt{1.0f, 2.0f, 3.0f};
    CCameraSceneNode camera(7, position, lookAt, false);
    CHECK(camera.getID() == 7);
    CHECK(camera.getPosition().X == 10.0f && camera.getPosition().Y == 20.0f && camera.getPosition().Z == 30.0f);
    CHECK(camera.getAbsolutePosition().X == 10.0f && camera.getAbsolutePosition().Y == 20.0f &&
          camera.getAbsolutePosition().Z == 30.0f);  // the base constructor ends with updateAbsolutePosition(false)
    CHECK(camera.getScale().X == 1.0f && camera.getScale().Y == 1.0f && camera.getScale().Z == 1.0f);
    CHECK(camera.getRotation().X == 0.0f && camera.getRotation().Y == 0.0f && camera.getRotation().Z == 0.0f &&
          camera.getRotation().W == 1.0f);  // quaternion::set(0, 0, 0)
    CHECK(camera.automaticCulling == 0);     // setAutomaticCulling(0) at the end of the constructor
    CHECK(camera.getParent() == nullptr);
    CHECK(camera.sceneManager == nullptr);
    CHECK(!camera.isOrthogonal());
    CHECK(camera.getTarget().X == 1.0f && camera.getTarget().Y == 2.0f && camera.getTarget().Z == 3.0f);
    CHECK(camera.getUpVector().X == 0.0f && camera.getUpVector().Y == 1.0f && camera.getUpVector().Z == 0.0f);
    CHECK(camera.getFOV() == bitsToFloat(0x3FA0D97Cu));
    CHECK(camera.getAspectRatio() == bitsToFloat(0x3FAAAAABu));
    CHECK(camera.getNearValue() == 1.0f && camera.getFarValue() == 2048.0f);
    CHECK(!camera.getFarToInifinity());
    CHECK(camera.isInputReceiverEnabled());

    // The constructor ends with recalculateProjectionMatrix(): perspective with a finite far plane, in the frustum.
    CHECK(camera.getViewFrustum() == &camera.frustum);
    CHECK(&camera.getProjectionMatrix() == &camera.frustum.projectionMatrix);
    CHECK(&camera.getViewMatrix() == &camera.frustum.viewMatrix);
    CHECK(&camera.getBoundingBox() == &camera.frustum.box);
    CHECK(sameMatrix(camera.getProjectionMatrix(),
                     glitch::core::buildProjectionMatrixPerspectiveFov<float>(camera.fov, camera.aspectRatio, 1.0f,
                                                                               2048.0f)));
    CHECK(isIdentityMatrix(camera.getViewMatrix()));  // not touched until recalculateMatrices

    // The setters store the value and rebuild the projection (the virtual at Hex-Rays +0x158).
    camera.setNearValue(2.0f);
    CHECK(camera.getNearValue() == 2.0f);
    CHECK(sameMatrix(camera.getProjectionMatrix(),
                     glitch::core::buildProjectionMatrixPerspectiveFov<float>(camera.fov, camera.aspectRatio, 2.0f,
                                                                               2048.0f)));
    camera.setFarValue(100.0f);
    CHECK(camera.getFarValue() == 100.0f);
    CHECK(sameMatrix(camera.getProjectionMatrix(),
                     glitch::core::buildProjectionMatrixPerspectiveFov<float>(camera.fov, camera.aspectRatio, 2.0f,
                                                                               100.0f)));
    camera.setAspectRatio(2.0f);
    CHECK(camera.getAspectRatio() == 2.0f);
    CHECK(sameMatrix(camera.getProjectionMatrix(),
                     glitch::core::buildProjectionMatrixPerspectiveFov<float>(camera.fov, 2.0f, 2.0f, 100.0f)));
    camera.setFOV(1.0f);
    CHECK(camera.getFOV() == 1.0f);
    CHECK(sameMatrix(camera.getProjectionMatrix(),
                     glitch::core::buildProjectionMatrixPerspectiveFov<float>(1.0f, 2.0f, 2.0f, 100.0f)));
    camera.setFarToInifinity(true);
    CHECK(camera.getFarToInifinity());
    CHECK(sameMatrix(camera.getProjectionMatrix(),
                     glitch::core::buildProjectionMatrixPerspectiveFovInfinity<float>(1.0f, 2.0f, 2.0f)));
    camera.setFarToInifinity(false);

    // setProjectionMatrix stores the flag and the matrix; setMAG then uses the orthographic form.
    CMatrix4<float> custom(CMatrix4<float>::EM4CONST_IDENTITY);
    custom.M[0] = 5.0f;
    custom.flag = false;
    camera.setProjectionMatrix(custom, true);
    CHECK(camera.isOrthogonal());
    CHECK(sameMatrix(camera.getProjectionMatrix(), custom));
    camera.setMAG(3.0f);  // height = mag + mag = 6, width = 6 * aspect = 12 (aspect is 2)
    CHECK(camera.mag == 3.0f);
    CHECK(sameMatrix(camera.getProjectionMatrix(),
                     glitch::core::buildProjectionMatrixOrtho<float>(12.0f, 6.0f, 2.0f, 100.0f)));
    camera.setProjectionMatrix(custom, false);
    CHECK(!camera.isOrthogonal());
    camera.setFOV(bitsToFloat(0x3FA0D97Cu));
    camera.setAspectRatio(bitsToFloat(0x3FAAAAABu));
    camera.setNearValue(1.0f);
    camera.setFarValue(2048.0f);

    // recalculateMatrices: look-at view matrix from the absolute position, target and up; view-projection; planes.
    {
        const bool lowered = camera.recalculateMatrices();
        (void)lowered;
        const vector3d<float> up{0.0f, 1.0f, 0.0f};
        CHECK(sameMatrix(camera.getViewMatrix(), glitch::core::buildCameraLookAtMatrix<float>(position, lookAt, up)));
        CHECK(camera.frustum.cameraPosition.X == 10.0f && camera.frustum.cameraPosition.Y == 20.0f &&
              camera.frustum.cameraPosition.Z == 30.0f);
        CMatrix4<float> viewProjection;
        glitch::core::detail::setbyproduct_nocheck(viewProjection, camera.getProjectionMatrix(), camera.getViewMatrix());
        CHECK(sameMatrix(camera.frustum.viewProjectionMatrix, viewProjection));
        // State 0 also leaves the inverse of the view matrix in the frustum.
        CMatrix4<float> inverse = camera.getViewMatrix();
        inverse.makeInverse();
        CHECK(sameMatrix(camera.frustum.inverseViewMatrix, inverse));
        // recalculateViewArea builds six unit planes and the box contains the apex.
        for (const auto& plane : camera.frustum.planes) {
            const float length = std::sqrt(plane.Normal.X * plane.Normal.X + plane.Normal.Y * plane.Normal.Y +
                                           plane.Normal.Z * plane.Normal.Z);
            CHECK(std::fabs(length - 1.0f) < 1e-4f);
        }
        CHECK(camera.getBoundingBox().MinEdge.X <= 10.0f && camera.getBoundingBox().MaxEdge.X >= 10.0f);
        CHECK(camera.getBoundingBox().MinEdge.Y <= 20.0f && camera.getBoundingBox().MaxEdge.Y >= 20.0f);
        CHECK(camera.getBoundingBox().MinEdge.Z <= 30.0f && camera.getBoundingBox().MaxEdge.Z >= 30.0f);
    }

    // recalculateViewArea alone: stores the absolute position, then rebuilds the planes from the product.
    {
        camera.frustum.cameraPosition = vector3d<float>{};
        camera.recalculateViewArea();
        CHECK(camera.frustum.cameraPosition.X == 10.0f && camera.frustum.cameraPosition.Y == 20.0f &&
              camera.frustum.cameraPosition.Z == 30.0f);
    }

    // Parallel view direction and up vector: the up vector's x is moved by 0.5 before the look-at matrix is built.
    {
        CCameraSceneNode straightUp(1, vector3d<float>{0.0f, 0.0f, 0.0f}, vector3d<float>{0.0f, 5.0f, 0.0f}, false);
        straightUp.recalculateMatrices();
        const vector3d<float> adjustedUp{0.5f, 1.0f, 0.0f};
        CHECK(sameMatrix(straightUp.getViewMatrix(),
                         glitch::core::buildCameraLookAtMatrix<float>(vector3d<float>{0.0f, 0.0f, 0.0f},
                                                                      vector3d<float>{0.0f, 5.0f, 0.0f}, adjustedUp)));
    }

    // onEvent: off when the input receiver byte is clear, otherwise the first enabled animator that handles it wins.
    {
        auto* skippedPtr = new RecordingAnimator;
        auto* ignoringPtr = new RecordingAnimator;
        auto* handlingPtr = new RecordingAnimator;
        auto* neverPtr = new RecordingAnimator;
        RecordingAnimator& skipped = *skippedPtr;
        RecordingAnimator& ignoring = *ignoringPtr;
        RecordingAnimator& handling = *handlingPtr;
        RecordingAnimator& never = *neverPtr;
        skipped.receiver = false;
        handling.handles = true;
        never.handles = true;
        camera.addAnimator(skippedPtr);
        camera.addAnimator(ignoringPtr);
        camera.addAnimator(handlingPtr);
        camera.addAnimator(neverPtr);
        glitch::SEvent event;
        camera.setInputReceiverEnabled(false);
        CHECK(!camera.onEvent(event));
        CHECK(skipped.eventCalls == 0 && ignoring.eventCalls == 0 && handling.eventCalls == 0);
        camera.setInputReceiverEnabled(true);
        CHECK(camera.onEvent(event));
        CHECK(skipped.eventCalls == 0);  // not an enabled receiver
        CHECK(ignoring.eventCalls == 1);
        CHECK(handling.eventCalls == 1);
        CHECK(never.eventCalls == 0);  // the walk stops at the first handler
        // The IEventReceiver sub-object reaches the same body.
        glitch::IEventReceiver& receiver = camera;
        CHECK(receiver.onEvent(event));
        CHECK(handling.eventCalls == 2);
        camera.removeAnimators();
        CHECK(!camera.onEvent(event));
        skippedPtr->drop();
        ignoringPtr->drop();
        handlingPtr->drop();
        neverPtr->drop();
    }

    // onRegisterSceneNode: recalculates the matrices and returns 1, with or without a scene manager.
    {
        CCameraSceneNode other(2, vector3d<float>{0.0f, 0.0f, -5.0f}, vector3d<float>{0.0f, 0.0f, 0.0f}, false);
        CHECK(isIdentityMatrix(other.getViewMatrix()));
        CHECK(other.onRegisterSceneNode() == 1);
        CHECK(!isIdentityMatrix(other.getViewMatrix()));
        TestSceneManager manager;
        other.sceneManager = &manager;
        manager.activeCamera = &other;
        CHECK(other.onRegisterSceneNode() == 1);  // registerNodeForRendering is partial and does nothing visible
        manager.activeCamera = nullptr;  // the manager would drop its reference to the stack camera
        other.sceneManager = nullptr;
    }

    // Frustum tests and CSceneManager::isCulled, on a camera at the origin looking along +z.
    {
        CCameraSceneNode looking(3, vector3d<float>{0.0f, 0.0f, 0.0f}, vector3d<float>{0.0f, 0.0f, 10.0f}, false);
        looking.setFarValue(100.0f);
        looking.recalculateMatrices();
        const SViewFrustum& frustum = *looking.getViewFrustum();
        const glitch::core::aabbox3d<float> ahead{{-1.0f, -1.0f, 20.0f}, {1.0f, 1.0f, 22.0f}};
        const glitch::core::aabbox3d<float> behind{{-1.0f, -1.0f, -50.0f}, {1.0f, 1.0f, -48.0f}};
        const glitch::core::aabbox3d<float> farAside{{1000.0f, -1.0f, 20.0f}, {1001.0f, 1.0f, 22.0f}};
        const glitch::core::aabbox3d<float> beyondFar{{-1.0f, -1.0f, 500.0f}, {1.0f, 1.0f, 502.0f}};
        CHECK(frustum.intersects(ahead));
        CHECK(!frustum.intersects(behind));
        CHECK(!frustum.intersects(farAside));
        CHECK(!frustum.intersects(beyondFar));
        CHECK(frustum.intersects3(ahead));
        CHECK(!frustum.intersects3(behind));
        CHECK(!frustum.intersects3(farAside));
        CHECK(frustum.intersectsWithoutBoxTest3(ahead));
        CHECK(!frustum.intersectsWithoutBoxTest3(farAside));  // rejected by plane 2 or 3

        TestSceneManager manager;
        TestNode node;
        manager.activeCamera = &looking;
        node.automaticCulling = 2;
        node.transformedBoundingBox = farAside;
        node.flags = 0;  // the cached box is returned as it is
        CHECK(manager.cullingEnabled);  // the constructor writes 1 at +0x250 (0x58d908)
        // Culling off, or no active camera: never culled.
        manager.cullingEnabled = false;
        CHECK(!manager.isCulled(&node));
        manager.cullingEnabled = true;
        manager.activeCamera = nullptr;
        CHECK(!manager.isCulled(&node));
        manager.activeCamera = &looking;
        // Mode 2 (frustum intersects) and mode 8 (intersects3).
        CHECK(manager.isCulled(&node));
        node.transformedBoundingBox = ahead;
        CHECK(!manager.isCulled(&node));
        node.automaticCulling = 8;
        CHECK(!manager.isCulled(&node));
        node.transformedBoundingBox = behind;
        CHECK(manager.isCulled(&node));
        // Mode 1 (the node box against the frustum's box only).
        node.automaticCulling = 1;
        node.transformedBoundingBox = ahead;
        CHECK(!manager.isCulled(&node));
        node.transformedBoundingBox = farAside;
        CHECK(manager.isCulled(&node));
        // Any other mode is never culled.
        node.automaticCulling = 0;
        CHECK(!manager.isCulled(&node));
        manager.activeCamera = nullptr;  // the manager would drop its reference to the stack camera
    }

    if (failures == 0) {
        std::printf("camera_scene_node: ok\n");
    }
    return failures != 0;
}
