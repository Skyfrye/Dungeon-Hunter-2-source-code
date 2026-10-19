// TriggerZone: a Trigger zone that runs scripts when a player enters and leaves, with one-player and
// all-player variants. Its marker effect is shown while one player stands inside. is_door_closed names a
// Door, and while that door is opened or opening the zone does nothing. Used as the base of
// TriggerZoneExitLevel.
// Original 32-bit size not recorded in class-facts. The members below are known through +0x7d3.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x39b890 / 0x39b990, dtor 0x39b754 / 0x39b7e8 / 0x39b804).
#pragma once

#include <cstdint>
#include <string>

#include "dh2/Trigger.hpp"

class AnimatedFX;

class TriggerZone : public Trigger {
public:
    explicit TriggerZone(ObjectBase::GO_IDS id);                        // 0x39b890 (C1) / 0x39b990 (C2); hasPhysics false, playerOnly true
    ~TriggerZone() override;                                            // 0x39b754 (D1), 0x39b7e8 (D0), 0x39b804 (D2)

    // Overrides of Trigger / GameObject slots, in vtable order.
    void DeclareProperties() override;                                  // slot 0x18: 0x39bfa4 "scope", "triggertype", "cineID", the script strings and "is_door_closed"
    void InitPost() override;                                           // slot 0x1c: 0x39c0a8 resolves the script and effect ids and the door, sets Trigger::unk_3bc
    void Update() override;                                             // slot 0x2c: 0x39b458 runs the enter, move-out and all-player scripts from the player count
    void Draw() const override;                                         // slot 0x30: 0x39bd70 debug box when the isDisplayingBoundingBox switch is set
    void setUpdating(bool updating) override;                           // slot 0x3c: 0x39b26c stores updating in ObjectBase::unk_85, clears m_entered when false

    // Non-virtual.
    bool IsDoorClosedActivated() const;                                 // 0x39b27c true while the door named by "is_door_closed" is DOOR_OPENED or DOOR_OPENING
    void SafeStartScriptOnlyOnce(int scriptId) const;                   // 0x39b2a0 starts scriptId unless ScriptManager reports it running; no-op for -1 (void: callers ignore the result)
    void HideMarker();                                                  // 0x39b2f4 drops m_effectOnePlayerFX
    void ShowMarker();                                                  // 0x39b354 grabs the effect at m_effectOnePlayerIndex into m_effectOnePlayerFX and plays it

    // Trigger occupies +0x000 .. +0x717.
    int m_scope;                                                        // +0x718 property "scope"
    int m_triggerType;                                                  // +0x71c property "triggertype"
    int m_cineId;                                                       // +0x720 property "cineID"
    std::string m_script;                                               // +0x724 property "script", run when a player enters
    int m_scriptId;                                                     // +0x73c ScriptManager id of m_script, -1 until InitPost
    std::string m_scriptMoveOut;                                        // +0x740 property "script_move_out", run when the one-player visitor leaves
    int m_scriptMoveOutId;                                              // +0x758 ScriptManager id of m_scriptMoveOut, -1 until InitPost
    std::string m_scriptAllPlayer;                                      // +0x75c property "script_all_player", run when every player is inside
    int m_scriptAllPlayerId;                                            // +0x774 ScriptManager id of m_scriptAllPlayer, -1 until InitPost
    std::string m_scriptAllPlayerMoveOut;                               // +0x778 property "script_all_player_move_out", run when the all-player condition ends
    int m_scriptAllPlayerMoveOutId;                                     // +0x790 ScriptManager id of m_scriptAllPlayerMoveOut, -1 until InitPost
    std::string m_effectOnePlayer;                                      // +0x794 property "effect_one_player", an AnimatedEffectTable name
    int m_effectOnePlayerIndex;                                         // +0x7ac index in Arrays::AnimatedEffectTable, -1 until InitPost
    AnimatedFX* m_effectOnePlayerFX;                                    // +0x7b0 marker effect while ShowMarker is active (named in the ShowMarker assertion)
    bool m_entered;                                                     // +0x7b4 set when the enter script runs; cleared by setUpdating(false) and when the zone empties
    bool m_markerShown;                                                 // +0x7b5 set by Update with ShowMarker, cleared with HideMarker
    uint8_t pad_7b6[2];                                                 // +0x7b6
    GameObject* m_doorObject;                                           // +0x7b8 object named by "is_door_closed", GO id 2 checked; its Door m_state is at +0x3a8
    std::string m_doorName;                                             // +0x7bc property "is_door_closed", the door's object name
};
