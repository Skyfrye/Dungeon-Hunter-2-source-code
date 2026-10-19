// TestCharPropId: a character test that matches a character by its property id (Character::SafeGetCharPropsId).
// No instance data was recovered: the only method reads no member. Layout size not recovered
// (no operator new size in class-facts, no vtable).
// Reconstructed from libDungeonHunter2.so pseudocode (Compare 0x47b820).
#pragma once

class Character;

class TestCharPropId {
public:
    // The decompiled pseudocode takes the id as its first argument and the character as its second,
    // and reads no instance field. Recorded as static; see open questions.
    static bool Compare(int propId, Character* character);          // 0x47b820
};
