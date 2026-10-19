// TriggerTrap: a ZoneEx that hurts the characters inside it. Its data (script, visual, sound, damager and
// hurt chance) comes from the Arrays::TriggerTraps row named by the "data" property. Objects that enter are
// queued in m_newVictims, damaged in Update when they are characters, and kept in m_victims until the activate animation ends. Summoned
// from Lua (GameObject::_SummonTriggerTrap) through Create.
// GO_IDS 15. Original 32-bit size 0x404 (1028), the operator new size of GetNewInstance<TriggerTrap>.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x39e670 / 0x39ecd4, dtor 0x39e480 / 0x39e56c / 0x39e58c).
#pragma once

#include <cstdint>
#include <set>
#include <string>

#include "dh2/ZoneEx.hpp"

namespace glitch {
namespace scene {
class ITimelineController;
}  // namespace scene
namespace collada {
struct STriggeredEvent;
}  // namespace collada
}  // namespace glitch

namespace sfc {
namespace script {
namespace lua {
class Arguments;
class ReturnValues;
class Binder;
}  // namespace lua
}  // namespace script
}  // namespace sfc

class TriggerTrap : public ZoneEx {
public:
    explicit TriggerTrap(ObjectBase::GO_IDS id);                        // 0x39e670 (C2) / 0x39ecd4 (C1)
    ~TriggerTrap() override;                                            // 0x39e480 (D1), 0x39e56c (D0), 0x39e58c (D2)

    // Overrides of ZoneEx / Zone / GameObject slots, in vtable order.
    const char* getUDTypeName() const override;                         // slot 0x08: 0x39cb1c "TriggerTrap"
    void createBindings(sfc::script::lua::Binder& binder) override;     // slot 0x0c: 0x39dd98 binds GetOwner, GetDamager and Remove
    void DeclareProperties() override;                                  // slot 0x18: 0x39e8ec, Zone's properties then "data"
    void InitPost() override;                                           // slot 0x1c: 0x39dee0 resolves m_dataIndex, loads the visual, script and sound
    void Update() override;                                             // slot 0x2c: 0x39eedc damages m_newVictims, then moves them into m_victims
    bool IsUpdatable() const override;                                  // slot 0x38: 0x39cadc true
    bool IsAnimated() const override;                                   // slot 0x80: 0x39cae4 true
    bool IsInteractive(GameObject* by) const override;                  // slot 0x88: 0x39caec false
    bool IsObstacle() const override;                                   // slot 0xb4: 0x39cafc true
    float GetObstacleRadius() const override;                           // slot 0xb8: 0x39cb04 150.0
    float GetObstacleStrength() const override;                         // slot 0xbc: 0x39cb10 10.0
    bool IsZonable() const override;                                    // slot 0xc4: 0x39caf4 true

    // New virtuals at vtable slots 0xd8 .. 0xf4 (not in ZoneEx or Zone).
    virtual int GetDataId() const;                                      // slot 0xd8: 0x39de6c index of "data" in Arrays::TriggerTraps, -1 when not found
    virtual const char* GetScript() const;                              // slot 0xdc: 0x39dbc0 script name of the data row, "" when m_dataIndex is -1
    virtual int GetVisual() const;                                      // slot 0xe0: 0x39dc08 visual index of the data row, -1 when m_dataIndex is -1
    virtual int GetDamagerId() const;                                   // slot 0xe4: 0x39dc40 m_damagerIndex when set, else the data row's damager
    virtual int GetHurtChance() const;                                  // slot 0xe8: 0x39dc90 m_damagerIndex when set, else the data row's hurt chance
    virtual int GetSound() const;                                       // slot 0xec: 0x39dce0 sound index of the data row, -1 when m_dataIndex is -1
    virtual void Activate();                                            // slot 0xf0: 0x39e198 plays "activate" and sets m_activated, or clears m_victims without a visual; then plays GetSound() when m_dataIndex is set
    virtual void SpecificUpdate();                                      // slot 0xf4: 0x39f2e8 TransferVictims, then Activate when victims are queued and m_activated is clear

    // ---- non-virtual ----
    bool CanTrigger(GameObject* other);                                 // 0x39ea9c calls the script's OnTrigger; true when there is no script or it does not refuse
    void TransferVictims();                                             // 0x39f168 queues objects inside the zone that CanTrigger accepts into m_newVictims

    static GameObject* Create(GameObject* owner, int trapIndex, int damagerIndex);  // 0x39e298 spawns a TriggerTrap row trapIndex, owned by owner

    static void _Remove(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* user);     // 0x39dd18
    static void _GetDamager(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* user); // 0x39ea64
    static void _GetOwner(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* user);   // 0x39ea90
    static void __Callback(glitch::scene::ITimelineController* controller, void* user);          // 0x39e738
    static void __EventCallback(const glitch::collada::STriggeredEvent& event, void* user);      // 0x39ec78

    // ZoneEx occupies +0x000 .. +0x3a7.
    std::string m_data;                                                 // +0x3a8 property "data", trap name looked up in Arrays::TriggerTraps (24 bytes in the original)
    int m_dataIndex;                                                    // +0x3c0 index in Arrays::TriggerTraps, -1 when not found; set by InitPost or Create
    bool m_activated;                                                   // +0x3c4 set by Activate while the activate animation plays
    uint8_t pad_3c5[3];                                                 // +0x3c5
    std::set<GameObject*> m_newVictims;                                 // +0x3c8 objects queued to be hit, filled by TransferVictims; Update damages them and moves them to m_victims (24 bytes in the original)
    std::set<GameObject*> m_victims;                                    // +0x3e0 objects hit during the current activation, cleared when it ends (24 bytes in the original)
    GameObject* m_owner;                                                // +0x3f8 object that spawned the trap (set by Create, returned by GetOwner)
    int m_damagerIndex;                                                 // +0x3fc index in Arrays::GameObjectDamager set by Create, -1 when the data row decides
    bool m_removing;                                                    // +0x400 set by _Remove; __Callback hides and deletes the trap when the remove animation ends
    bool m_idle;                                                        // +0x401 set once the "idle" animation has started
    uint8_t pad_402[2];                                                 // +0x402
};
