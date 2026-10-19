// AnimatedFX: a VisualObject that plays a visual-FX animation once or for a number of loops, and reports
// the end of each loop back to VisualFXManager. Original 32-bit layout ends at +0x50 (SetAnimFX stores the setData pointer there; the ctor touches up
// to +0x4c); the original allocation size is not recorded.
// Vtable (16 bytes): slots 0/1 are the destructors (complete and deleting).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x4922e0 / 0x492374).
#pragma once

#include <cstdint>

class VisualObject;
class AnimController;
class GameObject;
template <typename T> struct Point3D;
namespace glitch {
namespace collada {
class ISceneNodeAnimator;
}  // namespace collada
namespace scene {
class ITimelineController;
}  // namespace scene
}  // namespace glitch

class AnimatedFX {
public:
    // Called at the end of each loop with the FX set data (VisualFXManager::AnimFXSetData*) it was started with.
    typedef void (*EndOfLoopCallback)(AnimatedFX* fx, void* setData);

    explicit AnimatedFX(int id);                                             // 0x4922e0 / 0x492374
    virtual ~AnimatedFX();                                                   // slot 0/1: 0x49245c (D1), 0x492408 (D2), 0x492950 (D0)

    void SetSpeed(float speed);                                              // 0x4924b0
    bool HasCompleted() const;                                               // 0x4924e0
    AnimController* GetAnimController();                                     // 0x492550
    void SetEndPoint(const Point3D<float>& position);                        // 0x492560
    glitch::collada::ISceneNodeAnimator* GetAnimator();                      // 0x49267c
    void SetLooping(bool looping);                                           // 0x492694
    void SetEnd();                                                           // 0x4926e4
    void SetStart();                                                         // 0x492744
    void _HandleLoopEnd();                                                   // 0x4927a4
    static void _CBLoop(glitch::scene::ITimelineController* controller, void* user);  // 0x4928a4
    void SetScale(const Point3D<float>& scale);                              // 0x4928ac
    void ForceMaterial(int material);                                        // 0x4928c8 asserts; the body is not reached
    void Load(const char* name, const char* animName, float speed, int loopCount, bool selfIlluminated);  // 0x49296c
    void SyncIrrData(bool push);                                             // 0x492aa0
    void SetAnimFX(bool rotateWithOwner, bool rotateWithOwnerOnPush, bool scaleWithOwner, float speed, int loopCount,
                   void* setData, EndOfLoopCallback endOfLoop);             // 0x492e8c
    void SetVisible(bool visible);                                           // 0x492ef0
    void SetRotation(const Point3D<float>& rotation);                        // 0x492f3c
    void Update();                                                           // 0x492f68

    // +0x00 vptr
    EndOfLoopCallback m_endOfLoop;                                           // +0x04 called by _HandleLoopEnd; the ctor clears it (the original leaves it unset)
    int unk_08;                                                              // +0x08 the constructor argument, meaning unknown
    const char* m_name;                                                      // +0x0c Load: resource name, copied into a std::string for VisualObject
    const char* m_animName;                                                  // +0x10 Load: animation name, copied into a std::string for VisualObject
    int m_loopCount;                                                         // +0x14 Load: loops left, _HandleLoopEnd counts it down
    bool m_looping;                                                          // +0x18 SetLooping
    uint8_t pad_19[3];                                                       // +0x19
    int unk_1c;                                                              // +0x1c -1 in the ctor; Update counts it down by the frame time (ms) and zeroes the loop count at expiry
    float m_speed;                                                           // +0x20 SetSpeed, default 1.0f
    bool unk_24;                                                             // +0x24 visibility flag, true in the ctor; SetVisible stores it, Update tests it
    uint8_t pad_25[3];                                                       // +0x25
    GameObject* unk_28;                                                      // +0x28 owner GameObject* (name m_owner: SyncIrrData 0x492aa0, SetEndPoint 0x492560, Update 0x492f68); AddMultiplayerHighlight stores the owning Character
    VisualObject* m_visual;                                                  // +0x2c the FX visual, deleted by the destructor
    bool unk_30;                                                             // +0x30 SetAnimFX rotateWithOwner: SyncIrrData takes the rotation from the owner
    bool unk_31;                                                             // +0x31 SetAnimFX rotateWithOwnerOnPush: SyncIrrData(push) takes the rotation from the owner; gates the setData walk
    bool unk_32;                                                             // +0x32 SetAnimFX scaleWithOwner; cleared by SetScale before the scaling is applied
    uint8_t pad_33[1];                                                       // +0x33
    int unk_34;                                                              // +0x34 float bit pattern: x of the position offset (Vec3f_Origin copy; SyncIrrData adds it); name pending
    int unk_38;                                                              // +0x38 float bit pattern: y of the position offset; name pending
    int unk_3c;                                                              // +0x3c float bit pattern: z of the position offset; name pending
    int unk_40;                                                              // +0x40 float bit pattern: rotation x (CopyFloatBits in SetRotation); Point3D<float> m_rotation (rename suggestion)
    int unk_44;                                                              // +0x44 float bit pattern: rotation y; part of m_rotation
    int unk_48;                                                              // +0x48 float bit pattern: rotation z; part of m_rotation
    bool unk_4c;                                                             // +0x4c m_rotationSet (rename suggestion): SetRotation sets it, SyncIrrData tests it
    void* m_setData;                                                         // +0x50 VisualFXManager::AnimFXSetData* stored by SetAnimFX; Update tests it for non-null
};
