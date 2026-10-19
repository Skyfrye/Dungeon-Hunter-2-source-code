// Batch g1-game-app-global-f216b6-0 (<global>, part 1 of 22).
// Allocator forwarders, the hinted operator new overloads, the profiling markers, the config and save
// path helpers, and the CMessage factories GetNewInstance<T>(bool). Forwarders were checked against the
// listing (asm: B target). Declarations are in dh2/global/runtime_support.hpp and
// dh2/global/message_factory.hpp.
#include "dh2/global/message_factory.hpp"
#include "dh2/global/runtime_support.hpp"

#include "core-platform/memory.hpp"
#include "net-session-online/c_msg_attack_result.hpp"
#include "net-session-online/c_msg_drop_loot.hpp"
#include "net-session-online/c_msg_fixed.hpp"
#include "net-session-online/c_msg_quests_sync.hpp"

// 0x310440 CustomFree(void*)
// Not defined here: core-platform/src/memory.cpp has the single definition (std::free; asm: B free).

// 0x310448 LuaFree(void*)
// Asm: B CustomFree.
void LuaFree(void* p) {
    CustomFree(p);
}

// 0x3104fc LuaAlloc(unsigned int)
// Asm: B CustomAlloc(unsigned int).
void* LuaAlloc(unsigned int size) {
    return CustomAlloc(size);
}

// 0x31056c operator new[](unsigned int, MemoryHintState)
// Asm: B CustomAlloc(unsigned int). The hint is not used by the original's thunk.
void* operator new[](std::size_t size, MemoryHintState /*hint*/) {
    return CustomAlloc(static_cast<unsigned int>(size));
}

// 0x310570 operator new(unsigned int, MemoryHintState)
// Asm: B CustomAlloc(unsigned int). The hint is not used by the original's thunk.
void* operator new(std::size_t size, MemoryHintState /*hint*/) {
    return CustomAlloc(static_cast<unsigned int>(size));
}

// 0x3136b4 PushProfilingContext(char const*)
// Asm: BX LR only. Profiling markers are compiled out of the binary.
void PushProfilingContext(const char* /*name*/) {}

// 0x3136b8 PopProfilingContext(char const*)
// Asm: BX LR only.
void PopProfilingContext(const char* /*name*/) {}

// 0x31f4ec GetConfigFilePath(char*, char const*)
// Asm: BX LR only. The output buffer is not written in this build.
void GetConfigFilePath(char* /*out*/, const char* /*name*/) {}

// 0x31f4f0 GetSaveFilePath(char*, char const*)
// Asm: BX LR only. The output buffer is not written in this build.
void GetSaveFilePath(char* /*out*/, const char* /*name*/) {}

// Factories. Each original builds the object with operator new(size, hint 2), then runs the class
// constructor or the inline CMessage(name, bool) sequence. The host build uses the plain operator new,
// so the hint has no effect here.

// 0x328ad4 CMessage* GetNewInstance<CMsgControllerAction>(bool)
template <>
CMessage* GetNewInstance<CMsgControllerAction>(bool withSerial) {
    return new CMsgControllerAction(withSerial);
}

// 0x328afc CMessage* GetNewInstance<CMsgMenuReady>(bool)
// Asm: operator new(0x58, hint 2), then CMessage(name, bool), vptr, typeName_, sendMode_ = 1 (+0x2c). The
// explicit CMsgMenuReady(bool) constructor in c_msg_fixed.hpp makes the same stores. The base constructor is
// CMessage(const char*, bool) at 0x80a61c (its ledger row in net-session-online). The hint is not used by host new.
template <>
CMessage* GetNewInstance<CMsgMenuReady>(bool withSerial) {
    return new CMsgMenuReady(withSerial);
}

// 0x328b6c CMessage* GetNewInstance<CMsgAttackResult>(bool)
// Asm: operator new(0x84, hint 2), then CMessage(name, bool), vptr, typeName_, sendMode_ = 1 (+0x2c) and includeLocalMember_ = 0 (+0x33). The
// CMsgAttackResult(bool) constructor (c_msg_attack_result.hpp) makes the same stores.
template <>
CMessage* GetNewInstance<CMsgAttackResult>(bool withSerial) {
    return new CMsgAttackResult(withSerial);
}

// 0x328c5c CMessage* GetNewInstance<CMsgInitialSetup>(bool)
template <>
CMessage* GetNewInstance<CMsgInitialSetup>(bool withSerial) {
    return new CMsgInitialSetup(withSerial);
}

// 0x328d08 CMessage* GetNewInstance<CMsgDropLoot>(bool)
template <>
CMessage* GetNewInstance<CMsgDropLoot>(bool withSerial) {
    return new CMsgDropLoot(withSerial);
}

// 0x328d30 CMessage* GetNewInstance<CMsgAskResendAttributes>(bool)
// Asm: operator new(0x54, hint 2), then CMessage(name, bool), vptr, typeName_, sendMode_ = 0 (+0x2c) and flag32_ = 1
// (+0x32). The explicit CMsgAskResendAttributes(bool) constructor makes the same stores. The 0x54 allocation holds
// a 4-byte payload at +0x50, while the class payload_ here is 1 byte (GetDataSize 1); the payload size is a layout
// request for c_msg_fixed.hpp, not a behaviour of this factory.
template <>
CMessage* GetNewInstance<CMsgAskResendAttributes>(bool withSerial) {
    return new CMsgAskResendAttributes(withSerial);
}

// 0x328da8 CMessage* GetNewInstance<CMsgIsHost>(bool)
// Asm: operator new(0x54, hint 2), then CMessage(name, bool), vptr, typeName_, sendMode_ = 0 (+0x2c) and flag32_ = 1
// (+0x32). The explicit CMsgIsHost(bool) constructor makes the same stores.
template <>
CMessage* GetNewInstance<CMsgIsHost>(bool withSerial) {
    return new CMsgIsHost(withSerial);
}

// 0x329270 CMessage* GetNewInstance<CMsgQuestsSync>(bool)
template <>
CMessage* GetNewInstance<CMsgQuestsSync>(bool withSerial) {
    return new CMsgQuestsSync(withSerial);
}

// 0x329298 CMessage* GetNewInstance<CMsgGlobalDeath>(bool)
// Asm: operator new(0x50, hint 2), then CMessage(name, bool), vptr, typeName_, reliable_ = 1 (+0x30), sendMode_ = 1
// (+0x2c) and flag32_ = 1 (+0x32). The explicit CMsgGlobalDeath(bool) constructor makes the same stores.
template <>
CMessage* GetNewInstance<CMsgGlobalDeath>(bool withSerial) {
    return new CMsgGlobalDeath(withSerial);
}

// 0x3296ac CMessage* GetNewInstance<CMsgRaisedEvent>(bool)
// operator new(0x64, 2) and CMsgRaisedEvent::CMsgRaisedEvent(bool) (0x329630, c_msg_raised_event.hpp).
template <>
CMessage* GetNewInstance<CMsgRaisedEvent>(bool withSerial) {
    return new CMsgRaisedEvent(withSerial);
}

// 0x32a140 CMessage* GetNewInstance<CMsgStartGame>(bool)
// Asm: operator new(0x6c, hint 2), then CMessage(name, bool), vptr, typeName_, flag32_ = 1 (+0x32),
// includeLocalMember_ = 0 (+0x33) and sendMode_ = 1 (+0x2c). The explicit CMsgStartGame(bool) constructor makes the
// same stores.
template <>
CMessage* GetNewInstance<CMsgStartGame>(bool withSerial) {
    return new CMsgStartGame(withSerial);
}
