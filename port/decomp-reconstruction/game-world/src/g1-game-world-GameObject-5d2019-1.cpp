// Batch g1-game-world-GameObject-5d2019-1 (GameObject, part 2 of 8).
// Layout and declarations: dh2/GameObject.hpp. Member offsets are kept as comments; the world
// AABB, local AABB and position are indexed by name, never by raw offset.
//
// Hex-Rays and the disassembly use the soft-float ABI (__aeabi_f* calls), so a float result comes
// back in r0 as its bit pattern. That is why some float methods show an integer literal in the
// pseudocode (GetOpacity returns the bits of 1.0f).

#include <cmath>
#include <cstring>

#include "dh2/Character.hpp"
#include "dh2/Application.hpp"
#include "dh2/Level.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/VisualObject.hpp"
#include "glitch-scene-collada-gui/scene_node.hpp"

// 0x340114 GameObject::GetObstacleStrength() const
float GameObject::GetObstacleStrength() const {
    return 0.0f;
}

// 0x34011c GameObject::GetOpacity() const
float GameObject::GetOpacity() const {
    return 1.0f;
}

// 0x340124 GameObject::getUDTypeName() const
const char* GameObject::getUDTypeName() const {
    return "GameObject";
}

// 0x3883a8 GameObject::IsAnimated() const
bool GameObject::IsAnimated() const {
    return false;
}

// 0x3883b0 GameObject::IsInteractive(GameObject*) const
// The base object is never interactive; the argument is not read.
bool GameObject::IsInteractive(GameObject* /*other*/) const {
    return false;
}

// 0x3883b8 GameObject::IsZonable() const
// +0x2ed m_alwaysVisible. The original returns the byte XOR 1, so the result is true unless the
// byte is exactly 1.
bool GameObject::IsZonable() const {
    return (m_alwaysVisible ^ 1) != 0;
}

// 0x38aac0 GameObject::IsUpdatable() const
bool GameObject::IsUpdatable() const {
    return true;
}

// 0x38aac8 GameObject::UpdateAbsoluteAABB()
// The original first copies the local box into the world box and then adds the position on each
// axis. The copies are overwritten before anything reads them, so the result is the sum below.
// The pseudocode returns a float (the last sum left in r0); the header declares void.
void GameObject::UpdateAbsoluteAABB() {
    m_absAabb[0] = m_relAabb[0] + m_position.X;   // min x
    m_absAabb[1] = m_relAabb[1] + m_position.Y;   // min y
    m_absAabb[2] = m_relAabb[2] + m_position.Z;   // min z
    m_absAabb[3] = m_relAabb[3] + m_position.X;   // max x
    m_absAabb[4] = m_relAabb[4] + m_position.Y;   // max y
    m_absAabb[5] = m_relAabb[5] + m_position.Z;   // max z
}

// 0x38ab60 GameObject::MeetCondition() const
bool GameObject::MeetCondition() const {
    return true;
}

// 0x38ab68 GameObject::IsTouching(Point3D<float> const&) const
// Inclusive test of the point against the world AABB (min at m_absAabb[0..2], max at [3..5]).
bool GameObject::IsTouching(const Point3D<float>& point) const {
    return m_absAabb[0] <= point.X && point.X <= m_absAabb[3]
        && m_absAabb[1] <= point.Y && point.Y <= m_absAabb[4]
        && m_absAabb[2] <= point.Z && point.Z <= m_absAabb[5];
}

// 0x38ac0c GameObject::IsNearby(Point3D<float> const&, float) const
// The world AABB grown by margin * 100 on every side. X and Y reject a point outside the grown
// box; Z must lie inside the grown interval (closed on both ends).
bool GameObject::IsNearby(const Point3D<float>& point, float margin) const {
    const float grow = margin * -100.0f;   // -margin * 100 on the min side
    const float shrink = margin * 100.0f;  // +margin * 100 on the max side
    if (m_absAabb[0] + grow > point.X) return false;
    if (m_absAabb[3] + shrink < point.X) return false;
    if (m_absAabb[1] + grow > point.Y) return false;
    if (m_absAabb[4] + shrink < point.Y) return false;
    return m_absAabb[2] + grow <= point.Z && m_absAabb[5] + shrink >= point.Z;
}

// 0x38ad30 GameObject::IsInteractiveEx(GameObject*) const
// The original calls its own IsInteractive (vtable slot +0x88) and, when that is true, asks
// GetInteractionType (slot +0x90) whether the type is not -1.
bool GameObject::IsInteractiveEx(GameObject* other) const {
    const bool interactive = IsInteractive(other);
    if (interactive) return GetInteractionType(other) != -1;
    return interactive;
}

// 0x38ad74 GameObject::GetInteractionType(GameObject*) const
// -1 means no interaction.
int GameObject::GetInteractionType(GameObject* /*other*/) const {
    return -1;
}

// 0x38ad7c GameObject::GetInteractionRadius() const
// Half of the smaller of the local box's x and y extents.
float GameObject::GetInteractionRadius() const {
    float v1 = m_relAabb[3] - m_relAabb[0];   // max x - min x
    const float dy = m_relAabb[4] - m_relAabb[1];   // max y - min y
    if (v1 > dy) v1 = dy;
    return v1 * 0.5f;
}

// 0x38adc8 GameObject::SetScale(Point3D<float> const&)
void GameObject::SetScale(const Point3D<float>& scale) {
    m_scale = scale;   // +0x120 .. +0x12c
}

// 0x38ade4 GameObject::IsBatchVisible() const
// With a visual object, the flags word of the visual's root node (VisualObject +0x08, then the ISceneNode flags at +0x11c) bit 0. The node pointer is a RootSceneNode, which derives from
// the glitch node at offset 0, so it is viewed as glitch::scene::ISceneNode. Without a visual object the result is m_inZone (+0x2f0).
bool GameObject::IsBatchVisible() const {
    if (m_visualObject) {
        const auto* node = reinterpret_cast<const glitch::scene::ISceneNode*>(m_visualObject->m_node);
        return (node->flags & 1u) != 0;
    }
    return m_inZone != 0;
}

// 0x38ae2c GameObject::UpdateIdleSound()
// Needs the sound manager. A muted object (+0x373) stops its idle sound (+0x372 cleared, fade 1000) when it is playing. Otherwise, when the current level is loaded (Level::m_loadStep == 38)
// and the first local player has a character, the object measures its distance to that character against AudioConstants.CameraMaxDistance. A playing sound whose range is positive and not greater
// than the distance is stopped (Stop3D, fade 1000, at the character's position and the range). A sound that is not playing, while the distance is below a positive range, starts as a
// looping 3D sound at the object's position (Play3D(id, position, true, 1, -1, -1)).
void GameObject::UpdateIdleSound() {
    VoxSoundManager* sound = VoxSoundManager::s_instance;
    if (sound == nullptr) {
        return;
    }
    if (m_idleSoundMuted) {
        if (m_idleSoundPlaying) {
            m_idleSoundPlaying = 0;
            sound->Stop(m_idleSoundId, 1000);
        }
        return;
    }
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr) {
        return;
    }
    Character* player = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
    if (player == nullptr || level->m_loadStep != 38) {
        return;
    }
    const float range = static_cast<float>(ApplicationGetPyDataConstants()->getConstant("AudioConstants", "CameraMaxDistance"));
    const Point3D<float> listener = player->m_position;
    const float dx = m_position.X - listener.X;
    const float dy = m_position.Y - listener.Y;
    const float dz = m_position.Z - listener.Z;
    const float distance = std::sqrt((dx * dx + dy * dy) + dz * dz);
    bool start = !m_idleSoundPlaying;
    if (!start && range <= distance && range > 0.0f) {
        m_idleSoundPlaying = 0;
        Point3D<float> stopPosition = listener;
        sound->Stop3D(m_idleSoundId, 1000, &stopPosition, range);
        start = !m_idleSoundPlaying;
    }
    if (start && range > distance && range > 0.0f) {
        m_idleSoundPlaying = 1;
        const glitch::core::vector3d<float> at{m_position.X, m_position.Y, m_position.Z};
        sound->Play3D(m_idleSoundId, at, true, 1, -1.0f, -1.0f);
    }
}

// 0x38b0f0 GameObject::SetVisible(bool)
// m_visible (+0x80) becomes the enabled flag (+0x8a) when visible is set, and 0 otherwise. The
// visual object then re-syncs its scene node.
void GameObject::SetVisible(bool visible) {
    m_visible = visible ? m_enabled : 0;
    if (m_visualObject) m_visualObject->SyncVisibility();
}

// 0x38b110 GameObject::SetRelativeAABB(aabb<float> const&, bool)
// aabb<T> is forward-declared in the game headers but never defined in the tree, so the box is read as
// the six floats the original reads: +0, +4, +8 (min xyz) and +0x0c, +0x10, +0x14 (max xyz). The memcpy
// copies those bytes of the reference, which needs no member names. The bool is not read by the original
// (the register is reused), so the body ignores it.
void GameObject::SetRelativeAABB(const aabb<float>& box, bool /*update*/) {
    float src[6];
    std::memcpy(src, &box, sizeof src);

    for (int i = 0; i < 6; ++i) m_relAabb[i] = src[i];

    // A box with no x and y extent marks the object as zero-sized (+0x2f9). The flag is only set.
    if (m_relAabb[3] - m_relAabb[0] == 0.0f && m_relAabb[4] - m_relAabb[1] == 0.0f)
        m_zeroSizeAabb = 1;

    // Boxes narrower than 10 units in x or y get 5 units of slack on each side of that axis.
    if (src[3] - src[0] < 10.0f) {
        m_relAabb[0] = src[0] - 5.0f;
        m_relAabb[3] = m_relAabb[3] + 5.0f;
    }
    if (m_relAabb[4] - m_relAabb[1] < 10.0f) {
        m_relAabb[1] = m_relAabb[1] - 5.0f;
        m_relAabb[4] = m_relAabb[4] + 5.0f;
    }

    UpdateAbsoluteAABB();
    UpdatePFObject();
}

// 0x38b228 GameObject::GetInteractionSpot() const
// The "interaction_position" node of the visual object is looked up once and cached in
// m_interactionSpotNode (the cache flag is m_interactionSpotCached, +0x2ec). The node's absolute
// position is returned; without a node the object's target position is returned.
Point3D<float> GameObject::GetInteractionSpot() const {
    glitch::scene::ISceneNode* spot = nullptr;
    if (m_interactionSpotCached) {
        spot = m_interactionSpotNode;
    } else {
        m_interactionSpotCached = 1;
        if (m_visualObject) spot = m_visualObject->GetSpecificNode("interaction_position");
        m_interactionSpotNode = spot;
    }
    if (spot) {
        const glitch::core::vector3d<float> absolute = spot->getAbsolutePosition();
        return Point3D<float>{absolute.X, absolute.Y, absolute.Z};
    }
    return GetTargetPosition();
}
