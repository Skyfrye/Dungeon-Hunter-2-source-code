// UserProperties: key/value pairs parsed from a text block of "key=value" lines. A value wrapped in "%22"
// markers is unquoted. The key token is found with the ctype_ table. AddProperty stores into the map.
// Original 32-bit size not recorded (no operator new for it in class-facts). The map header at +0x04 ends
// at +0x18. Vtable _ZTV14UserProperties is 16 bytes: two destructor slots and no others.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x319158 C1 / 0x3191b0 C2; dtors 0x318178 D1,
// 0x3181f4 D2, 0x3181d8 D0).
#pragma once

#include <cstdint>
#include <map>
#include <string>

class UserProperties {
public:
    UserProperties(const char* props);                                  // 0x319158 (C1), 0x3191b0 (C2); parses props when it is not null
    virtual ~UserProperties();                                          // slot 0x00: 0x318178 (D1); slot 0x04: 0x3181d8 (D0, frees the object); 0x3181f4 (D2)

    void AddProperty(const char* key, const char* value);               // 0x318e18: m_properties[key] = value

public:
    void _ParseProperties(const char* props);                           // 0x31903c: splits on '\n' and parses each line; asserts when props is null
    void _ParseLine(char* line);                                        // 0x318fe4: splits at the first '='; a line without one is parsed as a key alone
    void _ParseKeyValue(char* key, char* value);                        // 0x318e5c: finds the key token, NUL-terminates it, unwraps a "%22" quoted value, then AddProperty

    // vptr                                                             // +0x00
    // Map header node at +0x04: color, parent (+0x08), leftmost (+0x0c), rightmost (+0x10), node count (+0x14).
    // The header node and count take 20 bytes in the original.
    std::map<std::string, std::string> m_properties;                    // +0x04
};
