// SpawnPoint: a GameObject placed in the level data that positions an object (and starts its script) when
// the level places it. It is object type 13 (GetNewInstance<SpawnPoint> passes GO_IDS 13). Level::GetSpawnPoint
// finds the type-13 object used for the level's entry point (see Level.hpp).
// Original 32-bit size 0x394 (916), from GetNewInstance<SpawnPoint>'s operator new(0x394). GameObject occupies
// +0x00 .. +0x373; the three members below follow it.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x3ea388 / 0x3ea3fc, dtors 0x3ea2cc / 0x3ea320 /
// 0x3ea33c, DeclareProperties 0x3ea554, InitPost 0x3ea28c, PlaceObject 0x3ea22c).
#pragma once

#include <string>

#include "dh2/GameObject.hpp"

class SpawnPoint : public GameObject {
public:
    explicit SpawnPoint(ObjectBase::GO_IDS id);                         // 0x3ea388 (C1), 0x3ea3fc (C2)
    ~SpawnPoint() override;                                             // 0x3ea2cc (D1), 0x3ea320 (D0, deleting), 0x3ea33c (D2)

    // Overrides of GameObject slots, in vtable order.
    void DeclareProperties() override;                                  // slot 6  (+0x18): 0x3ea554, declares "entrypointID" and "script"
    void InitPost() override;                                           // slot 7  (+0x1c): 0x3ea28c, GameObject::InitPost, then m_scriptId = GetIDFromName(m_script)
    bool IsUpdatable() const override;                                  // slot 14 (+0x38): 0x3ea20c, false
    bool IsAnimated() const override;                                   // slot 32 (+0x80): 0x3ea21c, false
    bool IsInteractive(GameObject* other) const override;               // slot 34 (+0x88): 0x3ea224, false
    bool IsZonable() const override;                                    // slot 49 (+0xc4): 0x3ea214, false

    // Places an object on this spawn point: copies m_position and m_rotation to it, then starts the script
    // m_scriptId when that id is not -1 (ScriptManager::StartScript).
    void PlaceObject(GameObject* object);                               // 0x3ea22c

    // SpawnPoint's own members (GameObject ends at +0x374).
    int m_entrypointId;                                                 // +0x374 property "entrypointID", -1 from the constructor
    std::string m_script;                                               // +0x378 property "script", the Lua script name (24 bytes)
    int m_scriptId;                                                     // +0x390 index from ScriptManager::GetIDFromName(m_script), -1 until InitPost
};
