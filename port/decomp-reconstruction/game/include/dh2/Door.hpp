// Door: a Zone with an open/close animation that blocks pathing while closed. Opened and closed
// through Lua ("Open", "Close") and replicated as one bit.
// Original 32-bit size 0x6d0 (1744).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3e8274).
#pragma once

#include <cstdint>
#include <string>

#include "net-transport/net_struct.hpp"

#include "dh2/Zone.hpp"

class IStreamBase;
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

class Door : public Zone {
public:
    // Stored in m_state and serialized as Door::DoorStates.
    enum DoorStates {
        DOOR_CLOSED = 0,
        DOOR_OPENED = 1,
        DOOR_CLOSING = 2,
        DOOR_OPENING = 3,
    };

    // Replicated state. Original 32-bit size 0x190 (400): NetStruct (0x130) plus three NetStructBool of 0x20 bytes.
    class NetStructDoor : public NetStruct {
    public:
        NetStructDoor();                                                // 0x3e80d4
        ~NetStructDoor() override;                                      // 0x3e83d4, 0x3e8798

        // NetStruct occupies +0x00 .. +0x12f.
        NetStructBool m_open;                                           // +0x130 state is OPENED or OPENING
        NetStructBool unk_150;                                          // +0x150 never touched outside the ctor
        NetStructBool unk_170;                                          // +0x170 never touched outside the ctor
    };

    explicit Door(ObjectBase::GO_IDS id);                               // 0x3e8274 / 0x3e8324
    ~Door() override;                                                   // 0x3e8658, 0x3e8824, 0x3e896c

    // Overrides of GameObject slots, in vtable order.
    const char* getUDTypeName() const override;                         // slot 0x08: 0x3e74b8 "Door"
    void createBindings(sfc::script::lua::Binder& binder) override;     // slot 0x0c: 0x3e74c8 binds "Open" and "Close"
    void Serialize(IStreamBase* stream) override;                       // slot 0x10: 0x3e7b74 writes m_state
    void Deserialize(IStreamBase* stream) override;                     // slot 0x14: 0x3e7a6c
    void DeclareProperties() override;                                  // slot 0x18: 0x3e8990 "data", "opened", "door_collision"
    void InitPost() override;                                           // slot 0x1c: 0x3e7da8 resolves m_doorIndex by name in Arrays::Doors
    void Update() override;                                             // slot 0x2c: 0x3e7560
    bool IsUpdatable() const override;                                  // slot 0x38: 0x3e7498 true
    void Enabled() override;                                            // slot 0x44: 0x3e7bd8
    void Disabled() override;                                           // slot 0x48: 0x3e7b94
    void PopulateOutgoingNetStruct(bool force) override;                // slot 0x4c: 0x3e8088
    void InterpretIncomingNetStruct(bool force) override;              // slot 0x50: 0x3e7828
    void InitFinal() override;                                          // slot 0x58: 0x3e7c1c
    bool IsAnimated() const override;                                   // slot 0x80: 0x3e74a0 true
    bool IsInteractive(GameObject* by) const override;                  // slot 0x88: 0x3e74a8 false
    bool IsZonable() const override;                                    // slot 0xc4: 0x3e74b0 true

    void Open(bool instant);                                            // 0x3e786c
    void Close(bool instant);                                           // 0x3e763c
    void Opened(bool silent);                                           // 0x3e7788 settles in DOOR_OPENED, lifts the filter and path block
    void Closed(bool silent);                                           // 0x3e7598 settles in DOOR_CLOSED

    static void _Open(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* user);    // 0x3e79a8
    static void _Close(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* user);   // 0x3e777c
    static void __Callback(glitch::scene::ITimelineController* controller, void* user);          // 0x3e8568
    static void __EventCallback(const glitch::collada::STriggeredEvent& event, void* user);      // 0x3e8450

    // Zone occupies +0x00 .. +0x387.
    std::string m_data;                                                 // +0x388 property "data" (24 bytes in the original), door name
    int m_doorIndex;                                                    // +0x3a0 index in Arrays::Doors, -1 when not found (not set by the ctor)
    bool m_opened;                                                      // +0x3a4 property "opened", initial state
    bool m_doorCollision;                                               // +0x3a5 property "door_collision", ctor sets true
    uint8_t pad_3a6[2];                                                 // +0x3a6
    DoorStates m_state;                                                 // +0x3a8
    bool m_moving;                                                      // +0x3ac set while the open/close animation plays
    uint8_t pad_3ad[3];                                                 // +0x3ad
    NetStructDoor m_netOut;                                             // +0x3b0 GameObject +0x100 points here
    NetStructDoor m_netIn;                                              // +0x540 GameObject +0x104 points here
};
