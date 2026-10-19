// Batch g1-game-world-ObjectBase-670ee4-0 (part 1 of 2): 20 ObjectBase methods. Covered: the type tests, the
// updating and visible flags, the enable and disable transitions, the net and handle accessors, Delete, the
// culling and disable-condition tests, and the stream pair. Declarations come from dh2/ObjectBase.hpp.
//
// Layout used here (original 32-bit offsets, kept in ObjectBase.hpp):
//   +0x80 m_visible, +0x81 m_markedForDeletion, +0x82 m_deleteMode, +0x85 unk_85 (the updating flag),
//   +0x86 m_cullState, +0x8a m_enabled, +0x8c m_enableCond, +0xb0 m_disableCond, +0x2c m_handle,
//   +0x110 m_netOwnerId, +0x118 unk_118.

#include <cstdint>
#include <cstring>

#include "dh2/ObjectBase.hpp"
#include "dh2/Application.hpp"
#include "dh2/CameraBase.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/ConditionData.hpp"
#include "dh2/Level.hpp"
#include "dh2/Character.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/global/ctrl_camera.hpp"            // ApplicationGetInstance (the Application singleton)
#include "dh2/global/ObjectManagerInstance.hpp"  // dword_99F764, the ObjectManager instance
#include "dh2/global/net_singletons.hpp"          // GetOnlineGameFlag
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/SViewFrustum.hpp"

// 0x33dcc8 _ZNK10ObjectBase12IsGameObjectEv
bool ObjectBase::IsGameObject() const {
    return false;
}

// 0x33dcd0 _ZNK10ObjectBase11IsCharacterEv
bool ObjectBase::IsCharacter() const {
    return false;
}

// 0x33dcd8 _ZNK10ObjectBase8IsPlayerEv
bool ObjectBase::IsPlayer() const {
    return false;
}

// 0x33dce0 _ZNK10ObjectBase6IsDeadEv
bool ObjectBase::IsDead() const {
    return false;
}

// 0x33dce8 _ZNK10ObjectBase11IsUpdatableEv
bool ObjectBase::IsUpdatable() const {
    return false;
}

// 0x33dcf0 _ZN10ObjectBase11setUpdatingEb
void ObjectBase::setUpdating(bool updating) {
    unk_85 = static_cast<std::uint8_t>(updating);  // +0x85: the argument is stored as is
}

// 0x33dcf8 _ZN10ObjectBase10SetVisibleEb
void ObjectBase::SetVisible(bool visible) {
    // +0x80 gets m_enabled (+0x8a) when visible is set, and 0 otherwise.
    m_visible = visible && m_enabled;
}

// 0x33dd08 _ZN10ObjectBase25PopulateOutgoingNetStructEb
void ObjectBase::PopulateOutgoingNetStruct(bool force) {
    (void)force;  // empty in the original
}

// 0x33dd0c _ZN10ObjectBase26InterpretIncomingNetStructEb
void ObjectBase::InterpretIncomingNetStruct(bool force) {
    (void)force;  // empty in the original
}

// 0x33dd10 _ZNK10ObjectBase17IsRemotelyUpdatedEv
bool ObjectBase::IsRemotelyUpdated() const {
    if (m_netOwnerId == -1) {  // +0x110
        return unk_118 != 0;   // +0x118
    }
    return true;
}

// 0x33dd2c _ZN10ObjectBase9GetHandleEv
ObjectHandle ObjectBase::GetHandle() {
    // Refresh the cache generation (ObjectManager +0x78), then return a copy of the handle (12 bytes).
    m_handle->m_generation = static_cast<std::uint32_t>(dword_99F764->m_generation);
    return *m_handle;
}

// 0x33dd70 _ZNK10ObjectBase9GetHandleEv
ObjectHandle ObjectBase::GetHandle() const {
    // Same code as the non-const form in the original. The handle is reached through the pointer at +0x2c.
    m_handle->m_generation = static_cast<std::uint32_t>(dword_99F764->m_generation);
    return *m_handle;
}

// 0x33ddb4 _ZN10ObjectBase6DeleteEv
void ObjectBase::Delete() {
    m_deleteMode = 2;         // +0x82 (stored first, as in the original)
    m_markedForDeletion = 1;  // +0x81
}

// 0x33ddc8 _ZN10ObjectBase9SetEnableEb
void ObjectBase::SetEnable(bool enable) {
    if (m_enabled == enable) {  // +0x8a unchanged: nothing else runs
        return;
    }
    m_enabled = enable;
    if (enable) {
        Enabled();   // vtable +0x44
    } else {
        Disabled();  // vtable +0x48
    }
}

// 0x33de04 _ZN10ObjectBase7EnabledEv
void ObjectBase::Enabled() {
    SetVisible(true);   // vtable +0x40
    setUpdating(true);  // vtable +0x3c
}

// 0x33de34 _ZN10ObjectBase8DisabledEv
void ObjectBase::Disabled() {
    setUpdating(false);  // vtable +0x3c
    SetVisible(false);   // vtable +0x40
}

// 0x33de90 _ZN10ObjectBase21TestCullingBeforeUpdateERK4aabbIfE
// In an online game the virtual IsRemotelyUpdated() (+0x54) is called first and its result is dropped. The cull state (+0x86) steps 0 -> 1 on the first
// call (true); any other value than 1 returns true. Without a level the state becomes 2 (true). Otherwise the six planes of the level camera's view frustum
// (Level +0x128 CameraLevel, CameraBase +0x08 the glitch camera, ICameraSceneNode::getViewFrustum) are tested in order against the box (six floats: min x, y, z,
// then max x, y, z; aabb<float> has no definition in the tree, so the floats are read from the reference): each plane takes the corner of the box that lies
// furthest on its inside (the minimum of an axis when the normal component is not negative, else the maximum), and a plane distance above zero for that
// corner culls the object (false). When no plane culls it the state becomes 2 and the result is true.
bool ObjectBase::TestCullingBeforeUpdate(const aabb<float>& box) {
    if (GetOnlineGameFlag()) {
        IsRemotelyUpdated();
    }
    if (m_cullState == 0) {  // +0x86
        m_cullState = 1;
        return true;
    }
    if (m_cullState != 1) {
        return true;
    }
    float corners[6];
    std::memcpy(corners, &box, sizeof corners);
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr) {
        m_cullState = 2;
        return true;
    }
    const glitch::scene::SViewFrustum* frustum = level->m_camera->m_camera->getViewFrustum();
    for (int plane = 0; plane < 6; ++plane) {
        const glitch::core::plane3d<float>& p = frustum->planes[plane];
        const float x = p.Normal.X >= 0.0f ? corners[0] : corners[3];
        const float y = p.Normal.Y >= 0.0f ? corners[1] : corners[4];
        const float z = p.Normal.Z >= 0.0f ? corners[2] : corners[5];
        if (p.Normal.X * x + p.Normal.Y * y + p.Normal.Z * z + p.D > 0.0f) {
            return false;
        }
    }
    m_cullState = 2;
    return true;
}

// 0x33e0f8 _ZN10ObjectBase11DeserializeEP11IStreamBase
void ObjectBase::Deserialize(IStreamBase* stream) {
    // The original calls IStreamBase::readAs<bool>(bool&) for +0x80 and again for +0x8a (asm at 0x33e0f8).
    stream->readAs<bool>(m_visible);  // +0x80
    stream->readAs<bool>(m_enabled);  // +0x8a
    m_enableCond.SetAsTested(false);  // +0x8c
    m_disableCond.SetAsTested(false); // +0xb0
}

// 0x33e1f0 _ZN10ObjectBase9SerializeEP11IStreamBase
void ObjectBase::Serialize(IStreamBase* stream) {
    // The original calls IStreamBase::writeAs<bool>(bool const&) for +0x80 and +0x8a (asm at 0x33e1f0).
    stream->writeAs<bool>(m_visible);  // +0x80
    stream->writeAs<bool>(m_enabled);  // +0x8a
}

// 0x33e61c _ZN10ObjectBase20TestDisableConditionEb
// The local player's character (PlayerManager::GetLocalPlayer(0, true), PlayerInfo +0x660) gates the test: a character whose savegame
// (+0x14e8) is missing or not quest synced (PlayerSavegame +0x14) leaves the object as it is (m_enabled is returned). Otherwise a
// disable condition that is not yet tested (+0xd0) and has a list (+0xcc) is evaluated; when it is false the object is disabled and
// the condition is marked tested when asked to.
bool ObjectBase::TestDisableCondition(bool markTested) {
    Character* localPlayer = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
    if (localPlayer != nullptr) {
        PlayerSavegame* savegame = localPlayer->m_savegame;
        if (savegame == nullptr || !savegame->m_questSynced) {
            return m_enabled;
        }
    }
    if (m_disableCond.m_tested || m_disableCond.m_list == nullptr) {  // +0xd0 (m_tested), +0xcc (m_list)
        return m_enabled;
    }
    if (!m_disableCond.IsTrue()) {
        SetEnable(false);
        if (markTested) {
            m_disableCond.SetAsTested(true);
        }
    }
    return m_enabled;
}

