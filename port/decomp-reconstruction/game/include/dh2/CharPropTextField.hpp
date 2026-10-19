// CharPropTextField: binds a gameswf text character to a character property. The ctor reads the
// property name from the source character: the text after its first '_' gives the property id, and
// its third character (name[2]) gives the mode letter. Update() writes the current property value into the text.
// Original 32-bit size not recovered. The ctor and Update touch +0x00 to +0x08 only.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x41f8f0 / 0x41f978, Update 0x422aa8).
// No vtable: this class is not polymorphic.
#pragma once

#include <cstdint>

class RenderFX;
namespace gameswf { class character; }

class CharPropTextField {
public:
    // source is the text character whose name is parsed. target is the character that gets the text
    // (the ctor falls back to source when target is null).
    CharPropTextField(gameswf::character* source, gameswf::character* target); // 0x41f8f0 (C1), 0x41f978 (C2)

    void Update(RenderFX* renderFx);                                    // 0x422aa8

    int m_propId;                                                       // +0x00 CharProperties id from the name, -1 when the name has no '_'
    int m_kind;                                                         // +0x04 mode: name[2] when it is 'b' (bonus), 'i' or 'p', otherwise '_' (also '_' when the name has no '_').
    gameswf::character* m_target;                                       // +0x08 character that receives the text (defaults to source)
};
