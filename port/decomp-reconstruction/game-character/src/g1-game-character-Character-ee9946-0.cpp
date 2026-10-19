// Batch g1-game-character-Character-ee9946-0: the Character constant predicates and getters, the
// virtual-dispatch camera check, the cached-OID lookup, and the focus, update-flag, FX scale and loot getters.
// Declarations come from dh2/Character.hpp.
//
// The focus object, the update flags, the FX scale and the loot read the members they name.
// CharAI::m_target (Character +0x408), CharStateMachine::m_stateFlags (Character +0x520) and the CharProperties
// sheets (m_baseProps.m_w18 at +0x5b0, m_props.m_w10 at +0x101c) are all public members of the Character bases.

#include <cstdint>

#include "dh2/Character.hpp"

namespace {

// The original tests bit `bit` of a flag word with a logical shift: (word >> bit) & 1.
bool FlagBit(std::uint32_t flags, unsigned int bit) {
    return ((flags >> bit) & 1u) != 0;
}

}  // namespace

// 0x3a2e1c _ZNK9Character11IsCharacterEv
bool Character::IsCharacter() const {
    return true;
}

// 0x3a2e24 _ZNK9Character14GetFocusObjectEv
// The word at Character +0x408 is CharAI +0x40, the AI target (CharAI::m_target).
GameObject* Character::GetFocusObject() const {
    return CharAI::m_target;
}

// 0x3a2e2c _ZNK9Character14IsUpdatingPathEv
// Bit 0x80 of the CharStateMachine flag word m_stateFlags (Character +0x520, CharStateMachine +0x24).
bool Character::IsUpdatingPath() const {
    return FlagBit(CharStateMachine::m_stateFlags, 7);
}

// 0x3a2e38 _ZNK9Character28IsUpdatingPositionFromVisualEv
// Bit 0x01 of m_stateFlags.
bool Character::IsUpdatingPositionFromVisual() const {
    return FlagBit(CharStateMachine::m_stateFlags, 0);
}

// 0x3a2e44 _ZNK9Character29IsUpdatingPositionFromPhysicsEv
// Bit 0x02 of m_stateFlags.
bool Character::IsUpdatingPositionFromPhysics() const {
    return FlagBit(CharStateMachine::m_stateFlags, 1);
}

// 0x3a2e50 _ZNK9Character28IsUpdatingRotationFromVisualEv
// Bit 0x04 of m_stateFlags.
bool Character::IsUpdatingRotationFromVisual() const {
    return FlagBit(CharStateMachine::m_stateFlags, 2);
}

// 0x3a2e5c _ZNK9Character29IsUpdatingRotationFromPhysicsEv
// Bit 0x08 of m_stateFlags.
bool Character::IsUpdatingRotationFromPhysics() const {
    return FlagBit(CharStateMachine::m_stateFlags, 3);
}

// 0x3a2e68 _ZNK9Character28IsUpdatingVisualWithRotationEv
// The inverse of bit 0x10 of m_stateFlags (EOR 0x10, then bit 4), so true when the bit is clear.
bool Character::IsUpdatingVisualWithRotation() const {
    return !FlagBit(CharStateMachine::m_stateFlags, 4);
}

// 0x3a2e78 _ZNK9Character25IsValidatingFloorPositionEv
// The inverse of bit 0x40 of m_stateFlags (EOR 0x40, then bit 6): 1 when the bit is clear, 0 when it is set.
int Character::IsValidatingFloorPosition() const {
    return FlagBit(CharStateMachine::m_stateFlags, 6) ? 0 : 1;
}

// 0x3a2e88 _ZNK9Character24IsValidatingCameraLimitsEv
// The original loads the vptr and calls the slot at byte offset 0x28 (IsPlayer) through it. That is the
// same dispatch as a virtual call to IsPlayer().
bool Character::IsValidatingCameraLimits() const {
    return IsPlayer();
}

// 0x3a2e9c _ZNK9Character10GetFXScaleEv
// The int at Character +0x5b0 is CharProperties +0x50, the base sheet word m_baseProps.m_w18. It is converted to
// float and multiplied by 0.01f (raw word 0x3C23D70A), and the result is returned in all three components.
Point3D<float> Character::GetFXScale() const {
    const float scale = static_cast<float>(CharProperties::m_baseProps.FX_Scale) * 0.01f;
    return Point3D<float>{scale, scale, scale};
}

// 0x3a2ecc _ZNK9Character15GetFXScaleValueEv
// Returns the base sheet word m_baseProps.m_w18 (Character +0x5b0), the same word GetFXScale scales.
int Character::GetFXScaleValue() const {
    return CharProperties::m_baseProps.FX_Scale;
}

// 0x3a2ed4 _ZNK9Character6IsDeadEv
bool Character::IsDead() const {
    return m_dead != 0;
}

// 0x3a2ee0 _ZNK9Character10IsAnimatedEv
bool Character::IsAnimated() const {
    return true;
}

// 0x3a2ee8 _ZNK9Character10IsObstacleEv
bool Character::IsObstacle() const {
    return true;
}

// 0x3a2ef0 _ZNK9Character17GetObstacleRadiusEv
// The original returns the float whose bit pattern is 0x42480000, which is 50.0f.
float Character::GetObstacleRadius() const {
    return 50.0f;
}

// 0x3a2efc _ZNK9Character19GetObstacleStrengthEv
// The original returns the float whose bit pattern is 0x41A00000, which is 20.0f.
float Character::GetObstacleStrength() const {
    return 20.0f;
}

// 0x3a2f08 _ZNK9Character13getUDTypeNameEv
const char* Character::getUDTypeName() const {
    return "Character";
}

// 0x3a2f48 _ZN9Character17HasCharOIDInCacheEi
// The original walks the red-black tree of s_cachedCharOIDs with a lower_bound search and then checks
// the key for equality. It returns the stored value, or 0 when the key is absent. That is std::map::find.
int Character::HasCharOIDInCache(int oid) {
    const auto it = s_cachedCharOIDs.find(oid);
    if (it == s_cachedCharOIDs.end()) {
        return 0;
    }
    return static_cast<int>(it->second);
}

// 0x3a2fcc _ZNK9Character7GetLootEv
// The int at Character +0x101c is CharProperties +0xabc, the final sheet word m_props.m_w10 (sheet offset 0x28).
int Character::GetLoot() const {
    return CharProperties::m_props.Loot;
}
