// TestCharTemplate: a character test that matches a character by its property template id
// (Character::SafeGetCharPropsTemplateId). No instance data was recovered: the only method reads no
// member. Layout size not recovered (no operator new size in class-facts, no vtable).
// Reconstructed from libDungeonHunter2.so pseudocode (Compare 0x47b05c).
#pragma once

class Character;

class TestCharTemplate {
public:
    // The decompiled pseudocode takes the template id as its first argument and the character as its
    // second, and reads no instance field. Recorded as static; see open questions.
    static bool Compare(int templateId, Character* character);      // 0x47b05c
};
