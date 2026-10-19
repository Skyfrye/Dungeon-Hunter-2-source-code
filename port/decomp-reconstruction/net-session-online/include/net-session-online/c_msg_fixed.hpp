// Fixed-size CMsg* message types. Each one is a CMessage whose wire payload is
// a fixed number of bytes at original offset +0x50. The payload field layout is
// not recovered, so it is kept as opaque bytes; see NOTES.md.
// SetProperties and the constructors that take a bool assign the class name to typeName_
// (the CMessage string at +0x14), as the original does.
#pragma once

#include <cstdint>

#include "net-session-online/c_message.hpp"
#include "net-session-online/c_msg_raised_event.hpp"

class CMsgIsHost : public CMessage {
public:
    // 0x328da8 GetNewInstance<CMsgIsHost>(bool) inlines this: CMessage(name, bool), then sendMode_ 0 (+0x2c)
    // and flag32_ 1 (+0x32).
    explicit CMsgIsHost(bool withSerial) : CMessage("CMsgIsHost", withSerial) {
        typeName_ = "CMsgIsHost";
        sendMode_ = 0;   // +0x2c
        flag32_ = true;  // +0x32
    }
    void* GetDataPtr() override { return payload_; }
    std::uint32_t GetDataSize() const override { return 4; }
    // 0x3278d4 _ZN10CMsgIsHost13SetPropertiesEv
    void SetProperties() {
        typeName_ = "CMsgIsHost";
        flag32_ = true;
        sendMode_ = 0;
    }

private:
    std::uint8_t payload_[4] = {};  // +0x50
};

class CMsgMenuReady : public CMessage {
public:
    // 0x328afc GetNewInstance<CMsgMenuReady>(bool) inlines this: CMessage(name, bool), then sendMode_ 1 (+0x2c).
    explicit CMsgMenuReady(bool withSerial) : CMessage("CMsgMenuReady", withSerial) {
        typeName_ = "CMsgMenuReady";
        sendMode_ = 1;  // +0x2c
    }
    void* GetDataPtr() override { return payload_; }
    std::uint32_t GetDataSize() const override { return 8; }
    // 0x3279e0 _ZN13CMsgMenuReady13SetPropertiesEv
    void SetProperties() {
        typeName_ = "CMsgMenuReady";
        sendMode_ = 1;
    }

private:
    std::uint8_t payload_[8] = {};  // +0x50
};

class CMsgAskResendAttributes : public CMessage {
public:
    // 0x328d30 GetNewInstance<CMsgAskResendAttributes>(bool) inlines this: CMessage(name, bool), then sendMode_ 0
    // (+0x2c) and flag32_ 1 (+0x32).
    explicit CMsgAskResendAttributes(bool withSerial) : CMessage("CMsgAskResendAttributes", withSerial) {
        typeName_ = "CMsgAskResendAttributes";
        sendMode_ = 0;   // +0x2c
        flag32_ = true;  // +0x32
    }
    void* GetDataPtr() override { return payload_; }
    std::uint32_t GetDataSize() const override { return 1; }
    // 0x327ad8 _ZN23CMsgAskResendAttributes13SetPropertiesEv
    void SetProperties() {
        typeName_ = "CMsgAskResendAttributes";
        flag32_ = true;
        sendMode_ = 0;
    }

private:
    std::uint8_t payload_[1] = {};  // +0x50
};

// CMsgScriptCmd: one script command shared with the other players. The payload is three 32-bit words at +0x50, written by the senders:
// ScriptManager::StartScript (command 0, script id, module), ScriptManager::SkipScript (command 1, script id, -1) and NativeStopMessage
// (command 3, -1, -1, the host skipping the dialog message) and Script_ExitCutSceneMode (command 1, script id -2, -1: the cut scene
// ends). The receiver is not in the tree yet.
class CMsgScriptCmd : public CMessage {
public:
    // 0x32a710 GetNewInstance<CMsgScriptCmd>(bool) inlines this: CMessage(name, bool), then sendMode_ 1 (+0x2c),
    // flag32_ 1 (+0x32), reliable_ 1 (+0x30) and includeLocalMember_ 1 (+0x33).
    explicit CMsgScriptCmd(bool withSerial) : CMessage("CMsgScriptCmd", withSerial) {
        typeName_ = "CMsgScriptCmd";
        sendMode_ = 1;
        flag32_ = true;
        reliable_ = true;
        includeLocalMember_ = true;
    }
    void* GetDataPtr() override { return &command_; }
    std::uint32_t GetDataSize() const override { return 12; }
    // 0x3279a8 _ZN13CMsgScriptCmd13SetPropertiesEv
    void SetProperties() {
        typeName_ = "CMsgScriptCmd";
        sendMode_ = 1;
        includeLocalMember_ = true;
        flag32_ = true;
        reliable_ = true;
    }

    // Payload (original 32-bit offsets).
    std::int32_t command_ = 0;    // +0x50 0 start script, 1 skip script, 3 skip the dialog message
    std::int32_t scriptId_ = 0;   // +0x54 the script id, -1 when the command has none
    std::int32_t module_ = 0;     // +0x58 the module of a started script, -1 otherwise
};

class CMsgStartGame : public CMessage {
public:
    // 0x32a140 GetNewInstance<CMsgStartGame>(bool) inlines this: CMessage(name, bool), then flag32_ 1 (+0x32),
    // includeLocalMember_ 0 (+0x33) and sendMode_ 1 (+0x2c).
    explicit CMsgStartGame(bool withSerial) : CMessage("CMsgStartGame", withSerial) {
        typeName_ = "CMsgStartGame";
        flag32_ = true;
        includeLocalMember_ = false;
        sendMode_ = 1;
    }
    void* GetDataPtr() override { return payload_; }
    std::uint32_t GetDataSize() const override { return 28; }
    // 0x327aa0 _ZN13CMsgStartGame13SetPropertiesEv
    void SetProperties() {
        typeName_ = "CMsgStartGame";
        includeLocalMember_ = false;
        flag32_ = true;
        sendMode_ = 1;
    }

    // The payload at +0x50 (28 bytes), named from MultiplayerCallback::HandleStartGameMessage (reader) and HandlePlayerJoined (writer).
    struct Fields {
        std::int32_t levelListIndex;   // +0x50 index into Arrays::LevelList
        std::int32_t entryPointId;     // +0x54 (0 from the host)
        std::uint8_t resume;           // +0x58
        std::uint8_t useSpawnPoint;    // +0x59
        std::uint8_t pad_5a[2];        // +0x5a
        std::int32_t difficulty;       // +0x5c
        std::int32_t seed;             // +0x60
        std::int32_t syncedSeed;       // +0x64
        std::int32_t hostMatchingId;   // +0x68 matching member id of the player who starts the game, -1 for everybody
    };
    Fields& Payload() { return *reinterpret_cast<Fields*>(payload_); }

private:
    alignas(4) std::uint8_t payload_[28] = {};  // +0x50
};

class CMsgInitialSetup : public CMessage {
public:
    // 0x328be4 _ZN16CMsgInitialSetupC1Eb
    explicit CMsgInitialSetup(bool withSerial) : CMessage("CMsgInitialSetup", withSerial) {
        typeName_ = "CMsgInitialSetup";
        includeLocalMember_ = false;
        sendMode_ = 1;
    }
    void* GetDataPtr() override { return payload_; }
    std::uint32_t GetDataSize() const override { return 12; }
    // 0x327974 _ZN16CMsgInitialSetup13SetPropertiesEv
    void SetProperties() {
        typeName_ = "CMsgInitialSetup";
        includeLocalMember_ = false;
        sendMode_ = 1;
    }

private:
    std::uint8_t payload_[12] = {};  // +0x50
};

class CMsgSpawnObject : public CMessage {
public:
    // 0x32a66c _ZN15CMsgSpawnObjectC1Eb
    explicit CMsgSpawnObject(bool withSerial) : CMessage("CMsgSpawnObject", withSerial) {
        typeName_ = "CMsgSpawnObject";
        flag32_ = true;                // +0x32 (the original's 16-bit store also clears +0x33)
        includeLocalMember_ = false;   // +0x33
        sendMode_ = 0;                 // +0x2c
    }
    void* GetDataPtr() override { return &objectId_; }
    std::uint32_t GetDataSize() const override { return 28; }
    // 0x32789c _ZN15CMsgSpawnObject13SetPropertiesEv
    void SetProperties() {
        typeName_ = "CMsgSpawnObject";
        flag32_ = true;
        includeLocalMember_ = false;
        sendMode_ = 0;
    }

    // Payload (original 32-bit offsets, 28 bytes). Character::InterpretIncomingNetStruct asks the owner to send an object again with
    // objectId_ = the object's ObjectBase +0x108 id, unk_54..unk_64 zero and unk_68 set. GameObject::_Summon announces a summoned
    // character with objectId_ = its network id, unk_54 = the character type (Arrays::CharacterTable row), unk_58 = the summoner's
    // network id, (unk_5c, unk_60, unk_64) = its position, and unk_68 = 0.
    std::int32_t objectId_ = 0;      // +0x50
    std::int32_t unk_54 = 0;         // +0x54
    std::int32_t unk_58 = 0;         // +0x58
    float unk_5c = 0.0f;             // +0x5c
    float unk_60 = 0.0f;             // +0x60
    float unk_64 = 0.0f;             // +0x64
    std::uint8_t unk_68 = 0;         // +0x68
    std::uint8_t pad_69[3] = {};     // +0x69
};

// CMsgRaisedEvent has one definition: c_msg_raised_event.hpp (the typed payload, the constructor and Create).
// CMsgControllerAction: one controller command of a player, replayed on the other players by v2NetController::Update
// (0x40939c). The payload starts at +0x50 and is 20 bytes; the reader and the senders use three fields:
//   +0x50 byte   action: 0 attack the object, 1 begin skill, 2 end skill, 3 set faerie (then slot +0x44), 4 slot +0x48,
//                5 use object of interest (slot +0x50 with the object)
//   +0x52 word   the network id of the object (actions 0 and 5) or the skill / faerie id (actions 1 to 3)
//   +0x54 byte   the network id of the sending character (ObjectBase +0x108, low byte); the reader drops a message
//                whose sender is not the character it controls
class CMsgControllerAction : public CMessage {
public:
    // 0x328a64 _ZN20CMsgControllerActionC1Eb
    // The original does not touch the local-member flag here, so the base value stays.
    explicit CMsgControllerAction(bool withSerial) : CMessage("CMsgControllerAction", withSerial) {
        typeName_ = "CMsgControllerAction";
        sendMode_ = 1;
    }
    void* GetDataPtr() override { return &action_; }
    std::uint32_t GetDataSize() const override { return 20; }
    // 0x327a74 _ZN20CMsgControllerAction13SetPropertiesEv
    void SetProperties() {
        typeName_ = "CMsgControllerAction";
        sendMode_ = 1;
    }

    // Payload (original 32-bit offsets). The constructor leaves it zeroed (the allocation is zero-filled).
    std::uint8_t action_ = 0;       // +0x50
    std::uint8_t unk_51 = 0;        // +0x51
    std::uint16_t targetId_ = 0;    // +0x52
    std::uint8_t senderId_ = 0;     // +0x54
    std::uint8_t unk_55[15] = {};   // +0x55 .. +0x63: sent with the message, never read
};

// CMsgAttackResult has one definition: c_msg_attack_result.hpp (the typed payload, the constructor and Create).

// CMsgGlobalDeath has no payload: GetDataPtr is the base CMessage one.
class CMsgGlobalDeath : public CMessage {
public:
    // 0x329298 GetNewInstance<CMsgGlobalDeath>(bool) inlines this: CMessage(name, bool), then reliable_ 1 (+0x30),
    // sendMode_ 1 (+0x2c) and flag32_ 1 (+0x32).
    explicit CMsgGlobalDeath(bool withSerial) : CMessage("CMsgGlobalDeath", withSerial) {
        typeName_ = "CMsgGlobalDeath";
        reliable_ = true;
        sendMode_ = 1;
        flag32_ = true;
    }
    std::uint32_t GetDataSize() const override { return 0; }
    // 0x327868 _ZN15CMsgGlobalDeath13SetPropertiesEv
    void SetProperties() {
        typeName_ = "CMsgGlobalDeath";
        reliable_ = true;
        sendMode_ = 1;
        flag32_ = true;
    }
};
