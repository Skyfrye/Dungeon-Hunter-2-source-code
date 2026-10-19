// Test for batch g1-game-world-CameraBase-b32e3c-0.
//
// Covers the logic that runs without the engine: the constructor's null words, the active-camera reset in the
// destructor, the empty virtual hooks, the null-camera branches (the zero vector is read from the Vec3f_Origin global),
// the camera branches of the vector getters and GetCenterOffset, and SetData's setter calls.
//
// The scene-node classes come from the glitch-scene-collada-gui library, which the test links. FakeCamera derives from
// the canonical ICameraSceneNode, overrides the pure slots, returns a test-owned 4x4 matrix from
// getAbsoluteTransformation (the camera's absolute transform), and records every setter the batch calls, in order.
// Vec3f_Origin is defined here, as dh2/global/Vec3f_Origin.hpp says the integrator defines it once.

#include <cstdio>

#include "dh2/CameraBase.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "glitch-scene-collada-gui/scene_nodes.hpp"

// The shared zero vector. The test reads it through a changed value once, to show the null-camera getters read the global.
Point3D<float> Vec3f_Origin{0.0f, 0.0f, 0.0f};

namespace {

using V3 = glitch::core::vector3d<float>;
using M4 = glitch::core::CMatrix4<float>;

int g_failures = 0;

// The absolute transform that the ISceneNode::getAbsoluteTransformation stub returns.
float g_absolute[16] = {};

// Setter calls recorded by FakeCamera, in call order.
enum CallCode { kSetFOV, kSetAspect, kSetNear, kSetFar, kSetUp };
int g_calls[8] = {};
int g_callCount = 0;
float g_fov = 0.0f;
float g_aspect = 0.0f;
float g_near = 0.0f;
float g_far = 0.0f;
V3 g_up{0.0f, 0.0f, 0.0f};

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// Exposes the protected words for inspection and attaches a camera.
struct Probe : CameraBase {
    bool NodeNull() const { return m_node == nullptr; }
    bool CameraNull() const { return m_camera == nullptr; }
    void SetCamera(glitch::scene::ICameraSceneNode* camera) { m_camera = camera; }
};

bool IsZero(const Point3D<float>& v) {
    return v.X == 0.0f && v.Y == 0.0f && v.Z == 0.0f;
}

bool SameVec(const Point3D<float>& a, const Point3D<float>& b) {
    return a.X == b.X && a.Y == b.Y && a.Z == b.Z;
}

// A camera node that records the setters the batch calls. Its other slots are inert.
class FakeCamera : public glitch::scene::ICameraSceneNode {
public:
    FakeCamera() : glitch::scene::ICameraSceneNode(0, V3{}, V3{}, V3{1.0f, 1.0f, 1.0f}) {}

    void render(void*) override {}
    const glitch::core::aabbox3d<float>& getBoundingBox() const override { return box_; }
    const M4& getAbsoluteTransformation() const override {
        for (int i = 0; i < 16; ++i) {
            absolute_.M[i] = g_absolute[i];
        }
        return absolute_;
    }
    void setProjectionMatrix(const M4&, bool) override {}
    const M4& getProjectionMatrix() const override { return matrix_; }
    const M4& getViewMatrix() const override { return matrix_; }
    bool onEvent(const glitch::SEvent&) override { return false; }
    void setTarget(const V3&) override {}
    const V3& getTarget() const override { return zero_; }
    void setUpVector(const V3& up) override {
        record(kSetUp);
        g_up = up;
    }
    const V3& getUpVector() const override { return zero_; }
    float getNearValue() const override { return 0.0f; }
    float getFarValue() const override { return 0.0f; }
    float getAspectRatio() const override { return 0.0f; }
    float getFOV() const override { return 0.0f; }
    bool getFarToInifinity() override { return false; }
    void setNearValue(float value) override {
        record(kSetNear);
        g_near = value;
    }
    void setFarValue(float value) override {
        record(kSetFar);
        g_far = value;
    }
    void setAspectRatio(float value) override {
        record(kSetAspect);
        g_aspect = value;
    }
    void setFOV(float value) override {
        record(kSetFOV);
        g_fov = value;
    }
    void setFarToInifinity(bool) override {}
    const glitch::scene::SViewFrustum* getViewFrustum() const override { return nullptr; }
    void setInputReceiverEnabled(bool) override {}
    bool isInputReceiverEnabled() const override { return false; }

private:
    static void record(CallCode code) { g_calls[g_callCount++] = code; }

    M4 matrix_;
    mutable M4 absolute_;  // filled from g_absolute on each call
    V3 zero_{0.0f, 0.0f, 0.0f};
    glitch::core::aabbox3d<float> box_{};
};

}  // namespace

int main() {
    EXPECT(CameraBase::s_activeCamera == nullptr);

    // Constructor: both node words are null.
    Probe probe;
    EXPECT(probe.NodeNull());
    EXPECT(probe.CameraNull());

    // Null camera: both vector getters return the global Vec3f_Origin. Change the global once so the check shows
    // the getters read it rather than a copy of zero.
    EXPECT(IsZero(probe.GetCameraLookAtVec()));
    EXPECT(IsZero(probe.GetCameraUpVec()));
    Vec3f_Origin = Point3D<float>{7.0f, 8.0f, 9.0f};
    EXPECT(SameVec(probe.GetCameraLookAtVec(), Point3D<float>{7.0f, 8.0f, 9.0f}));
    EXPECT(SameVec(probe.GetCameraUpVec(), Point3D<float>{7.0f, 8.0f, 9.0f}));
    Vec3f_Origin = Point3D<float>{0.0f, 0.0f, 0.0f};

    // Null camera: SetData calls no setter, and GetCenterOffset returns false without writing the offset.
    probe.SetData(60.0f, 1.5f, 0.1f, 1000.0f, true);
    EXPECT(g_callCount == 0);
    Point3D<float> offset{7.0f, 8.0f, 9.0f};
    EXPECT(probe.GetCenterOffset(offset, 1.0f) == false);
    EXPECT(offset.X == 7.0f && offset.Y == 8.0f && offset.Z == 9.0f);

    // With a camera: row 1 of the absolute transform is words 4..6, row 2 is words 8..10.
    for (int i = 0; i < 16; ++i) {
        g_absolute[i] = static_cast<float>(i);
    }
    FakeCamera camera;
    probe.SetCamera(&camera);
    EXPECT(SameVec(probe.GetCameraLookAtVec(), Point3D<float>{4.0f, 5.0f, 6.0f}));
    EXPECT(SameVec(probe.GetCameraUpVec(), Point3D<float>{8.0f, 9.0f, 10.0f}));

    // With a camera: GetCenterOffset returns true and writes (m[4], m[5], 0). The listing normalises and scales that
    // offset in place when m[4]^2 + m[5]^2 reaches 0.0001, and that scale is 0 for this fake camera (it reports FOV 0,
    // so the listing's half-angle is 0 and its tan(angle) - tan(angle - half) is 0), so these checks use the unscaled
    // branch: the two words below keep the squared sum under the threshold and the offset is written unchanged.
    g_absolute[4] = 0.001f;
    g_absolute[5] = 0.002f;
    offset = Point3D<float>{7.0f, 8.0f, 9.0f};
    EXPECT(probe.GetCenterOffset(offset, 1.0f) == true);
    EXPECT(SameVec(offset, Point3D<float>{0.001f, 0.002f, 0.0f}));
    g_absolute[4] = 0.0f;
    g_absolute[5] = 0.0f;
    EXPECT(probe.GetCenterOffset(offset, 1.0f) == true);
    EXPECT(SameVec(offset, Point3D<float>{0.0f, 0.0f, 0.0f}));
    for (int i = 0; i < 16; ++i) {
        g_absolute[i] = static_cast<float>(i);
    }

    // SetData with a camera: setFOV, setAspectRatio, setNearValue, setFarValue, then setUpVector (0, 0, 1).
    g_callCount = 0;
    probe.SetData(60.0f, 1.5f, 0.1f, 1000.0f, false);
    EXPECT(g_callCount == 5);
    EXPECT(g_calls[0] == kSetFOV);
    EXPECT(g_calls[1] == kSetAspect);
    EXPECT(g_calls[2] == kSetNear);
    EXPECT(g_calls[3] == kSetFar);
    EXPECT(g_calls[4] == kSetUp);
    EXPECT(g_fov == 60.0f);
    EXPECT(g_aspect == 1.5f);
    EXPECT(g_near == 0.1f);
    EXPECT(g_far == 1000.0f);
    EXPECT(g_up.X == 0.0f && g_up.Y == 0.0f && g_up.Z == 1.0f);
    probe.SetCamera(nullptr);

    // The virtual hooks are empty: they do not change the active camera.
    CameraBase* before = CameraBase::s_activeCamera;
    probe.Activated();
    probe.Deactivated();
    probe.Update();
    EXPECT(CameraBase::s_activeCamera == before);

    // Destructor of the active camera resets s_activeCamera (the deleting destructor runs D1 first).
    CameraBase* heap = new Probe;
    CameraBase::s_activeCamera = heap;
    delete heap;
    EXPECT(CameraBase::s_activeCamera == nullptr);

    // Destructor of a camera that is not active leaves the active camera alone.
    Probe active;
    CameraBase::s_activeCamera = &active;
    CameraBase* other = new Probe;
    delete other;
    EXPECT(CameraBase::s_activeCamera == &active);
    CameraBase::s_activeCamera = nullptr;

    if (g_failures == 0) {
        std::printf("g1-game-world-CameraBase-b32e3c-0 test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-world-CameraBase-b32e3c-0 test: %d failure(s)\n", g_failures);
    return 1;
}
