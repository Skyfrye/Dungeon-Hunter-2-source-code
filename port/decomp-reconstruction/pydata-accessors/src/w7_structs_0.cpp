// Structs::v2Is* condition records for slice structs_0 (see w7_structs_0.hpp).
#include "pydata-accessors/w7_structs_0.hpp"

namespace Structs {

// 0x4c7d34 _ZN7Structs16v2IsQuestInStateD2Ev
// 0x4c7d68 _ZN7Structs16v2IsQuestInStateD1Ev
v2IsQuestInState::~v2IsQuestInState() {
}

// 0x4cdbb0 _ZN7Structs16v2IsQuestInStateD0Ev
void DeletingDestructor(v2IsQuestInState* self) {
    self->v2IsQuestInState::~v2IsQuestInState();
    CustomFree(self);
}

// 0x4c7d9c _ZN7Structs16v2IsQuestInState8finalizeEv
// thunk: b 0x4c7cc4, forwards to v2Condition::finalize
void v2IsQuestInState::finalize() {
    v2Condition::finalize();
}

// 0x505f24 _ZN7Structs16v2IsQuestInState4readEP11IStreamBase
// The listing's first call is Structs::v2Condition::read (BL 0x505b28), then the two int32 words at +0x8
// and +0xc. v2Condition::read is defined in e2-pydata-accessors-Structs-66b9bc-1.cpp, so the qualified call
// below is the listing's. Was partial while that body was believed missing; it exists.
void v2IsQuestInState::read(IStreamBase* stream) {
    v2Condition::read(stream);                          // +0x4, base read first
    Quest = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    State = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4c7da0 _ZN7Structs19v2IsQuestStateLowerD2Ev
// 0x4c7dd4 _ZN7Structs19v2IsQuestStateLowerD1Ev
v2IsQuestStateLower::~v2IsQuestStateLower() {
}

// 0x4cdaec _ZN7Structs19v2IsQuestStateLowerD0Ev
void DeletingDestructor(v2IsQuestStateLower* self) {
    self->v2IsQuestStateLower::~v2IsQuestStateLower();
    CustomFree(self);
}

// 0x4c7e08 _ZN7Structs19v2IsQuestStateLower8finalizeEv
// thunk: b 0x4c7cc4, forwards to v2Condition::finalize
void v2IsQuestStateLower::finalize() {
    v2Condition::finalize();
}

// 0x505e38 _ZN7Structs19v2IsQuestStateLower4readEP11IStreamBase
// Listing: Structs::v2Condition::read (BL 0x505b28), then +0x8 and +0xc readAs<int>. Same body as the other
// four roots. Was partial while v2Condition::read was believed missing; it is defined at 0x505b28.
void v2IsQuestStateLower::read(IStreamBase* stream) {
    v2Condition::read(stream);                          // +0x4, base read first
    Quest = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    State = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4c7e0c _ZN7Structs20v2IsQuestStateHigherD2Ev
// 0x4c7e40 _ZN7Structs20v2IsQuestStateHigherD1Ev
v2IsQuestStateHigher::~v2IsQuestStateHigher() {
}

// 0x4cda28 _ZN7Structs20v2IsQuestStateHigherD0Ev
void DeletingDestructor(v2IsQuestStateHigher* self) {
    self->v2IsQuestStateHigher::~v2IsQuestStateHigher();
    CustomFree(self);
}

// 0x4c7e74 _ZN7Structs20v2IsQuestStateHigher8finalizeEv
// thunk: b 0x4c7cc4, forwards to v2Condition::finalize
void v2IsQuestStateHigher::finalize() {
    v2Condition::finalize();
}

// 0x505d4c _ZN7Structs20v2IsQuestStateHigher4readEP11IStreamBase
// Listing: Structs::v2Condition::read (BL 0x505b28), then +0x8 and +0xc readAs<int>. Same body as the other
// four roots. Was partial while v2Condition::read was believed missing; it is defined at 0x505b28.
void v2IsQuestStateHigher::read(IStreamBase* stream) {
    v2Condition::read(stream);                          // +0x4, base read first
    Quest = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    State = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4c7e78 _ZN7Structs17v2IsPlayerInLevelD2Ev
// 0x4c7eac _ZN7Structs17v2IsPlayerInLevelD1Ev
v2IsPlayerInLevel::~v2IsPlayerInLevel() {
}

// 0x4cda0c _ZN7Structs17v2IsPlayerInLevelD0Ev
void DeletingDestructor(v2IsPlayerInLevel* self) {
    self->v2IsPlayerInLevel::~v2IsPlayerInLevel();
    CustomFree(self);
}

// 0x4c7ee0 _ZN7Structs17v2IsPlayerInLevel8finalizeEv
// thunk: b 0x4c7cc4, forwards to v2Condition::finalize
void v2IsPlayerInLevel::finalize() {
    v2Condition::finalize();
}

// 0x505c78 _ZN7Structs17v2IsPlayerInLevel4readEP11IStreamBase
// Listing: Structs::v2Condition::read (BL 0x505b28), then +0x8 and +0xc readAs<int>. Same body as the other
// four roots. Was partial while v2Condition::read was believed missing; it is defined at 0x505b28.
void v2IsPlayerInLevel::read(IStreamBase* stream) {
    v2Condition::read(stream);                          // +0x4, base read first
    Level = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    NotUsed1 = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4c8610 _ZN7Structs16v2IsEventInStateD2Ev
// 0x4c8644 _ZN7Structs16v2IsEventInStateD1Ev
v2IsEventInState::~v2IsEventInState() {
}

// 0x4cd99c _ZN7Structs16v2IsEventInStateD0Ev
void DeletingDestructor(v2IsEventInState* self) {
    self->v2IsEventInState::~v2IsEventInState();
    CustomFree(self);
}

// 0x4c8678 _ZN7Structs16v2IsEventInState8finalizeEv
// thunk: b 0x4c7cc4, forwards to v2Condition::finalize
void v2IsEventInState::finalize() {
    v2Condition::finalize();
}

// 0x505b98 _ZN7Structs16v2IsEventInState4readEP11IStreamBase
// Listing: Structs::v2Condition::read (BL 0x505b28), then +0x8 and +0xc readAs<int>. Matches the Hex-Rays
// body at this address: v2Condition::read(this, a2); readAs<int>(a2, this + 8); readAs<int>(a2, this + 12).
void v2IsEventInState::read(IStreamBase* stream) {
    v2Condition::read(stream);                          // +0x4, base read first
    Event = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    State = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4c7ee4 _ZN7Structs15v2IsQuestLockedD2Ev
// 0x4c7f18 _ZN7Structs15v2IsQuestLockedD1Ev
v2IsQuestLocked::~v2IsQuestLocked() {
}

// 0x4cdc3c _ZN7Structs15v2IsQuestLockedD0Ev
void DeletingDestructor(v2IsQuestLocked* self) {
    self->v2IsQuestLocked::~v2IsQuestLocked();
    CustomFree(self);
}

// 0x4c7f4c _ZN7Structs15v2IsQuestLocked8finalizeEv
// thunk: b 0x4c7d9c, forwards to v2IsQuestInState::finalize
void v2IsQuestLocked::finalize() {
    v2IsQuestInState::finalize();
}

// 0x506008 _ZN7Structs15v2IsQuestLocked4readEP11IStreamBase
// thunk: b 0x505f24, forwards to v2IsQuestInState::read (matches the listing; the target is reconstructed)
void v2IsQuestLocked::read(IStreamBase* stream) {
    v2IsQuestInState::read(stream);
}

// 0x4c7f50 _ZN7Structs15v2IsQuestActiveD2Ev
// 0x4c7f84 _ZN7Structs15v2IsQuestActiveD1Ev
v2IsQuestActive::~v2IsQuestActive() {
}

// 0x4cdc20 _ZN7Structs15v2IsQuestActiveD0Ev
void DeletingDestructor(v2IsQuestActive* self) {
    self->v2IsQuestActive::~v2IsQuestActive();
    CustomFree(self);
}

// 0x4c7fb8 _ZN7Structs15v2IsQuestActive8finalizeEv
// thunk: b 0x4c7d9c, forwards to v2IsQuestInState::finalize
void v2IsQuestActive::finalize() {
    v2IsQuestInState::finalize();
}

// 0x506004 _ZN7Structs15v2IsQuestActive4readEP11IStreamBase
// thunk: b 0x505f24, forwards to v2IsQuestInState::read (matches the listing; the target is reconstructed)
void v2IsQuestActive::read(IStreamBase* stream) {
    v2IsQuestInState::read(stream);
}

// 0x4c7fbc _ZN7Structs18v2IsQuestCompletedD2Ev
// 0x4c7ff0 _ZN7Structs18v2IsQuestCompletedD1Ev
v2IsQuestCompleted::~v2IsQuestCompleted() {
}

// 0x4cdc04 _ZN7Structs18v2IsQuestCompletedD0Ev
void DeletingDestructor(v2IsQuestCompleted* self) {
    self->v2IsQuestCompleted::~v2IsQuestCompleted();
    CustomFree(self);
}

// 0x4c8024 _ZN7Structs18v2IsQuestCompleted8finalizeEv
// thunk: b 0x4c7d9c, forwards to v2IsQuestInState::finalize
void v2IsQuestCompleted::finalize() {
    v2IsQuestInState::finalize();
}

// 0x506000 _ZN7Structs18v2IsQuestCompleted4readEP11IStreamBase
// thunk: b 0x505f24, forwards to v2IsQuestInState::read (matches the listing; the target is reconstructed)
void v2IsQuestCompleted::read(IStreamBase* stream) {
    v2IsQuestInState::read(stream);
}

// 0x4c8028 _ZN7Structs15v2IsQuestClosedD2Ev
// 0x4c805c _ZN7Structs15v2IsQuestClosedD1Ev
v2IsQuestClosed::~v2IsQuestClosed() {
}

// 0x4cdbe8 _ZN7Structs15v2IsQuestClosedD0Ev
void DeletingDestructor(v2IsQuestClosed* self) {
    self->v2IsQuestClosed::~v2IsQuestClosed();
    CustomFree(self);
}

// 0x4c8090 _ZN7Structs15v2IsQuestClosed8finalizeEv
// thunk: b 0x4c7d9c, forwards to v2IsQuestInState::finalize
void v2IsQuestClosed::finalize() {
    v2IsQuestInState::finalize();
}

// 0x505ffc _ZN7Structs15v2IsQuestClosed4readEP11IStreamBase
// thunk: b 0x505f24, forwards to v2IsQuestInState::read (matches the listing; the target is reconstructed)
void v2IsQuestClosed::read(IStreamBase* stream) {
    v2IsQuestInState::read(stream);
}

// 0x4c8094 _ZN7Structs19v2IsQuestPostClosedD2Ev
// 0x4c80c8 _ZN7Structs19v2IsQuestPostClosedD1Ev
v2IsQuestPostClosed::~v2IsQuestPostClosed() {
}

// 0x4cdbcc _ZN7Structs19v2IsQuestPostClosedD0Ev
void DeletingDestructor(v2IsQuestPostClosed* self) {
    self->v2IsQuestPostClosed::~v2IsQuestPostClosed();
    CustomFree(self);
}

// 0x4c80fc _ZN7Structs19v2IsQuestPostClosed8finalizeEv
// thunk: b 0x4c7d9c, forwards to v2IsQuestInState::finalize
void v2IsQuestPostClosed::finalize() {
    v2IsQuestInState::finalize();
}

// 0x505ff8 _ZN7Structs19v2IsQuestPostClosed4readEP11IStreamBase
// thunk: b 0x505f24, forwards to v2IsQuestInState::read (matches the listing; the target is reconstructed)
void v2IsQuestPostClosed::read(IStreamBase* stream) {
    v2IsQuestInState::read(stream);
}

// 0x4c8100 _ZN7Structs24v2IsQuestLowerThenLockedD2Ev
// 0x4c8134 _ZN7Structs24v2IsQuestLowerThenLockedD1Ev
v2IsQuestLowerThenLocked::~v2IsQuestLowerThenLocked() {
}

// 0x4cdb94 _ZN7Structs24v2IsQuestLowerThenLockedD0Ev
void DeletingDestructor(v2IsQuestLowerThenLocked* self) {
    self->v2IsQuestLowerThenLocked::~v2IsQuestLowerThenLocked();
    CustomFree(self);
}

// 0x4c8168 _ZN7Structs24v2IsQuestLowerThenLocked8finalizeEv
// thunk: b 0x4c7e08, forwards to v2IsQuestStateLower::finalize
void v2IsQuestLowerThenLocked::finalize() {
    v2IsQuestStateLower::finalize();
}

// 0x505f20 _ZN7Structs24v2IsQuestLowerThenLocked4readEP11IStreamBase
// thunk: b 0x505e38, forwards to v2IsQuestStateLower::read (matches the listing; the target is reconstructed)
void v2IsQuestLowerThenLocked::read(IStreamBase* stream) {
    v2IsQuestStateLower::read(stream);
}

// 0x4c816c _ZN7Structs27v2IsQuestLowerThenAvailableD2Ev
// 0x4c81a0 _ZN7Structs27v2IsQuestLowerThenAvailableD1Ev
v2IsQuestLowerThenAvailable::~v2IsQuestLowerThenAvailable() {
}

// 0x4cdb78 _ZN7Structs27v2IsQuestLowerThenAvailableD0Ev
void DeletingDestructor(v2IsQuestLowerThenAvailable* self) {
    self->v2IsQuestLowerThenAvailable::~v2IsQuestLowerThenAvailable();
    CustomFree(self);
}

// 0x4c81d4 _ZN7Structs27v2IsQuestLowerThenAvailable8finalizeEv
// thunk: b 0x4c7e08, forwards to v2IsQuestStateLower::finalize
void v2IsQuestLowerThenAvailable::finalize() {
    v2IsQuestStateLower::finalize();
}

// 0x505f1c _ZN7Structs27v2IsQuestLowerThenAvailable4readEP11IStreamBase
// thunk: b 0x505e38, forwards to v2IsQuestStateLower::read (matches the listing; the target is reconstructed)
void v2IsQuestLowerThenAvailable::read(IStreamBase* stream) {
    v2IsQuestStateLower::read(stream);
}

// 0x4c81d8 _ZN7Structs24v2IsQuestLowerThenActiveD2Ev
// 0x4c820c _ZN7Structs24v2IsQuestLowerThenActiveD1Ev
v2IsQuestLowerThenActive::~v2IsQuestLowerThenActive() {
}

// 0x4cdb5c _ZN7Structs24v2IsQuestLowerThenActiveD0Ev
void DeletingDestructor(v2IsQuestLowerThenActive* self) {
    self->v2IsQuestLowerThenActive::~v2IsQuestLowerThenActive();
    CustomFree(self);
}

// 0x4c8240 _ZN7Structs24v2IsQuestLowerThenActive8finalizeEv
// thunk: b 0x4c7e08, forwards to v2IsQuestStateLower::finalize
void v2IsQuestLowerThenActive::finalize() {
    v2IsQuestStateLower::finalize();
}

// 0x505f18 _ZN7Structs24v2IsQuestLowerThenActive4readEP11IStreamBase
// thunk: b 0x505e38, forwards to v2IsQuestStateLower::read (matches the listing; the target is reconstructed)
void v2IsQuestLowerThenActive::read(IStreamBase* stream) {
    v2IsQuestStateLower::read(stream);
}

// 0x4c8244 _ZN7Structs27v2IsQuestLowerThenCompletedD2Ev
// 0x4c8278 _ZN7Structs27v2IsQuestLowerThenCompletedD1Ev
v2IsQuestLowerThenCompleted::~v2IsQuestLowerThenCompleted() {
}

// 0x4cdb40 _ZN7Structs27v2IsQuestLowerThenCompletedD0Ev
void DeletingDestructor(v2IsQuestLowerThenCompleted* self) {
    self->v2IsQuestLowerThenCompleted::~v2IsQuestLowerThenCompleted();
    CustomFree(self);
}

// 0x4c82ac _ZN7Structs27v2IsQuestLowerThenCompleted8finalizeEv
// thunk: b 0x4c7e08, forwards to v2IsQuestStateLower::finalize
void v2IsQuestLowerThenCompleted::finalize() {
    v2IsQuestStateLower::finalize();
}

// 0x505f14 _ZN7Structs27v2IsQuestLowerThenCompleted4readEP11IStreamBase
// thunk: b 0x505e38, forwards to v2IsQuestStateLower::read (matches the listing; the target is reconstructed)
void v2IsQuestLowerThenCompleted::read(IStreamBase* stream) {
    v2IsQuestStateLower::read(stream);
}

// 0x4c82b0 _ZN7Structs24v2IsQuestLowerThenClosedD2Ev
// 0x4c82e4 _ZN7Structs24v2IsQuestLowerThenClosedD1Ev
v2IsQuestLowerThenClosed::~v2IsQuestLowerThenClosed() {
}

// 0x4cdb24 _ZN7Structs24v2IsQuestLowerThenClosedD0Ev
void DeletingDestructor(v2IsQuestLowerThenClosed* self) {
    self->v2IsQuestLowerThenClosed::~v2IsQuestLowerThenClosed();
    CustomFree(self);
}

// 0x4c8318 _ZN7Structs24v2IsQuestLowerThenClosed8finalizeEv
// thunk: b 0x4c7e08, forwards to v2IsQuestStateLower::finalize
void v2IsQuestLowerThenClosed::finalize() {
    v2IsQuestStateLower::finalize();
}

// 0x505f10 _ZN7Structs24v2IsQuestLowerThenClosed4readEP11IStreamBase
// thunk: b 0x505e38, forwards to v2IsQuestStateLower::read (matches the listing; the target is reconstructed)
void v2IsQuestLowerThenClosed::read(IStreamBase* stream) {
    v2IsQuestStateLower::read(stream);
}

// 0x4c831c _ZN7Structs28v2IsQuestLowerThenPostClosedD2Ev
// 0x4c8350 _ZN7Structs28v2IsQuestLowerThenPostClosedD1Ev
v2IsQuestLowerThenPostClosed::~v2IsQuestLowerThenPostClosed() {
}

// 0x4cdb08 _ZN7Structs28v2IsQuestLowerThenPostClosedD0Ev
void DeletingDestructor(v2IsQuestLowerThenPostClosed* self) {
    self->v2IsQuestLowerThenPostClosed::~v2IsQuestLowerThenPostClosed();
    CustomFree(self);
}

// 0x4c8384 _ZN7Structs28v2IsQuestLowerThenPostClosed8finalizeEv
// thunk: b 0x4c7e08, forwards to v2IsQuestStateLower::finalize
void v2IsQuestLowerThenPostClosed::finalize() {
    v2IsQuestStateLower::finalize();
}

// 0x505f0c _ZN7Structs28v2IsQuestLowerThenPostClosed4readEP11IStreamBase
// thunk: b 0x505e38, forwards to v2IsQuestStateLower::read (matches the listing; the target is reconstructed)
void v2IsQuestLowerThenPostClosed::read(IStreamBase* stream) {
    v2IsQuestStateLower::read(stream);
}

// 0x4c8388 _ZN7Structs25v2IsQuestHigherThenLockedD2Ev
// 0x4c83bc _ZN7Structs25v2IsQuestHigherThenLockedD1Ev
v2IsQuestHigherThenLocked::~v2IsQuestHigherThenLocked() {
}

// 0x4cdad0 _ZN7Structs25v2IsQuestHigherThenLockedD0Ev
void DeletingDestructor(v2IsQuestHigherThenLocked* self) {
    self->v2IsQuestHigherThenLocked::~v2IsQuestHigherThenLocked();
    CustomFree(self);
}

// 0x4c83f0 _ZN7Structs25v2IsQuestHigherThenLocked8finalizeEv
// thunk: b 0x4c7e74, forwards to v2IsQuestStateHigher::finalize
void v2IsQuestHigherThenLocked::finalize() {
    v2IsQuestStateHigher::finalize();
}

// 0x505e34 _ZN7Structs25v2IsQuestHigherThenLocked4readEP11IStreamBase
// thunk: b 0x505d4c, forwards to v2IsQuestStateHigher::read (matches the listing; the target is reconstructed)
void v2IsQuestHigherThenLocked::read(IStreamBase* stream) {
    v2IsQuestStateHigher::read(stream);
}

// 0x4c83f4 _ZN7Structs28v2IsQuestHigherThenAvailableD2Ev
// 0x4c8428 _ZN7Structs28v2IsQuestHigherThenAvailableD1Ev
v2IsQuestHigherThenAvailable::~v2IsQuestHigherThenAvailable() {
}

// 0x4cdab4 _ZN7Structs28v2IsQuestHigherThenAvailableD0Ev
void DeletingDestructor(v2IsQuestHigherThenAvailable* self) {
    self->v2IsQuestHigherThenAvailable::~v2IsQuestHigherThenAvailable();
    CustomFree(self);
}

// 0x4c845c _ZN7Structs28v2IsQuestHigherThenAvailable8finalizeEv
// thunk: b 0x4c7e74, forwards to v2IsQuestStateHigher::finalize
void v2IsQuestHigherThenAvailable::finalize() {
    v2IsQuestStateHigher::finalize();
}

// 0x505e30 _ZN7Structs28v2IsQuestHigherThenAvailable4readEP11IStreamBase
// thunk: b 0x505d4c, forwards to v2IsQuestStateHigher::read (matches the listing; the target is reconstructed)
void v2IsQuestHigherThenAvailable::read(IStreamBase* stream) {
    v2IsQuestStateHigher::read(stream);
}

// 0x4c8460 _ZN7Structs25v2IsQuestHigherThenActiveD2Ev
// 0x4c8494 _ZN7Structs25v2IsQuestHigherThenActiveD1Ev
v2IsQuestHigherThenActive::~v2IsQuestHigherThenActive() {
}

// 0x4cda98 _ZN7Structs25v2IsQuestHigherThenActiveD0Ev
void DeletingDestructor(v2IsQuestHigherThenActive* self) {
    self->v2IsQuestHigherThenActive::~v2IsQuestHigherThenActive();
    CustomFree(self);
}

// 0x4c84c8 _ZN7Structs25v2IsQuestHigherThenActive8finalizeEv
// thunk: b 0x4c7e74, forwards to v2IsQuestStateHigher::finalize
void v2IsQuestHigherThenActive::finalize() {
    v2IsQuestStateHigher::finalize();
}

// 0x505e2c _ZN7Structs25v2IsQuestHigherThenActive4readEP11IStreamBase
// thunk: b 0x505d4c, forwards to v2IsQuestStateHigher::read (matches the listing; the target is reconstructed)
void v2IsQuestHigherThenActive::read(IStreamBase* stream) {
    v2IsQuestStateHigher::read(stream);
}

// 0x4c84cc _ZN7Structs28v2IsQuestHigherThenCompletedD2Ev
// 0x4c8500 _ZN7Structs28v2IsQuestHigherThenCompletedD1Ev
v2IsQuestHigherThenCompleted::~v2IsQuestHigherThenCompleted() {
}

// 0x4cda7c _ZN7Structs28v2IsQuestHigherThenCompletedD0Ev
void DeletingDestructor(v2IsQuestHigherThenCompleted* self) {
    self->v2IsQuestHigherThenCompleted::~v2IsQuestHigherThenCompleted();
    CustomFree(self);
}

// 0x4c8534 _ZN7Structs28v2IsQuestHigherThenCompleted8finalizeEv
// thunk: b 0x4c7e74, forwards to v2IsQuestStateHigher::finalize
void v2IsQuestHigherThenCompleted::finalize() {
    v2IsQuestStateHigher::finalize();
}

// 0x505e28 _ZN7Structs28v2IsQuestHigherThenCompleted4readEP11IStreamBase
// thunk: b 0x505d4c, forwards to v2IsQuestStateHigher::read (matches the listing; the target is reconstructed)
void v2IsQuestHigherThenCompleted::read(IStreamBase* stream) {
    v2IsQuestStateHigher::read(stream);
}

// 0x4c8538 _ZN7Structs25v2IsQuestHigherThenClosedD2Ev
// 0x4c856c _ZN7Structs25v2IsQuestHigherThenClosedD1Ev
v2IsQuestHigherThenClosed::~v2IsQuestHigherThenClosed() {
}

// 0x4cda60 _ZN7Structs25v2IsQuestHigherThenClosedD0Ev
void DeletingDestructor(v2IsQuestHigherThenClosed* self) {
    self->v2IsQuestHigherThenClosed::~v2IsQuestHigherThenClosed();
    CustomFree(self);
}

// 0x4c85a0 _ZN7Structs25v2IsQuestHigherThenClosed8finalizeEv
// thunk: b 0x4c7e74, forwards to v2IsQuestStateHigher::finalize
void v2IsQuestHigherThenClosed::finalize() {
    v2IsQuestStateHigher::finalize();
}

// 0x505e24 _ZN7Structs25v2IsQuestHigherThenClosed4readEP11IStreamBase
// thunk: b 0x505d4c, forwards to v2IsQuestStateHigher::read (matches the listing; the target is reconstructed)
void v2IsQuestHigherThenClosed::read(IStreamBase* stream) {
    v2IsQuestStateHigher::read(stream);
}

// 0x4c85a4 _ZN7Structs29v2IsQuestHigherThenPostClosedD2Ev
// 0x4c85d8 _ZN7Structs29v2IsQuestHigherThenPostClosedD1Ev
v2IsQuestHigherThenPostClosed::~v2IsQuestHigherThenPostClosed() {
}

// 0x4cda44 _ZN7Structs29v2IsQuestHigherThenPostClosedD0Ev
void DeletingDestructor(v2IsQuestHigherThenPostClosed* self) {
    self->v2IsQuestHigherThenPostClosed::~v2IsQuestHigherThenPostClosed();
    CustomFree(self);
}

// 0x4c860c _ZN7Structs29v2IsQuestHigherThenPostClosed8finalizeEv
// thunk: b 0x4c7e74, forwards to v2IsQuestStateHigher::finalize
void v2IsQuestHigherThenPostClosed::finalize() {
    v2IsQuestStateHigher::finalize();
}

// 0x505e20 _ZN7Structs29v2IsQuestHigherThenPostClosed4readEP11IStreamBase
// thunk: b 0x505d4c, forwards to v2IsQuestStateHigher::read (matches the listing; the target is reconstructed)
void v2IsQuestHigherThenPostClosed::read(IStreamBase* stream) {
    v2IsQuestStateHigher::read(stream);
}

// 0x4c867c _ZN7Structs15v2IsEventActiveD2Ev
// 0x4c86b0 _ZN7Structs15v2IsEventActiveD1Ev
v2IsEventActive::~v2IsEventActive() {
}

// 0x4cd9f0 _ZN7Structs15v2IsEventActiveD0Ev
void DeletingDestructor(v2IsEventActive* self) {
    self->v2IsEventActive::~v2IsEventActive();
    CustomFree(self);
}

// 0x4c86e4 _ZN7Structs15v2IsEventActive8finalizeEv
// thunk: b 0x4c8678, forwards to v2IsEventInState::finalize
void v2IsEventActive::finalize() {
    v2IsEventInState::finalize();
}

// 0x505c74 _ZN7Structs15v2IsEventActive4readEP11IStreamBase
// thunk: b 0x505b98, forwards to v2IsEventInState::read (matches the listing; the target is reconstructed)
void v2IsEventActive::read(IStreamBase* stream) {
    v2IsEventInState::read(stream);
}

// 0x4c86e8 _ZN7Structs17v2IsEventInactiveD2Ev
// 0x4c871c _ZN7Structs17v2IsEventInactiveD1Ev
v2IsEventInactive::~v2IsEventInactive() {
}

// 0x4cd9d4 _ZN7Structs17v2IsEventInactiveD0Ev
void DeletingDestructor(v2IsEventInactive* self) {
    self->v2IsEventInactive::~v2IsEventInactive();
    CustomFree(self);
}

// 0x4c8750 _ZN7Structs17v2IsEventInactive8finalizeEv
// thunk: b 0x4c8678, forwards to v2IsEventInState::finalize
void v2IsEventInactive::finalize() {
    v2IsEventInState::finalize();
}

// 0x505c70 _ZN7Structs17v2IsEventInactive4readEP11IStreamBase
// thunk: b 0x505b98, forwards to v2IsEventInState::read (matches the listing; the target is reconstructed)
void v2IsEventInactive::read(IStreamBase* stream) {
    v2IsEventInState::read(stream);
}

// 0x4c8754 _ZN7Structs18v2IsEventCompletedD2Ev
// 0x4c8788 _ZN7Structs18v2IsEventCompletedD1Ev
v2IsEventCompleted::~v2IsEventCompleted() {
}

// 0x4cd9b8 _ZN7Structs18v2IsEventCompletedD0Ev
void DeletingDestructor(v2IsEventCompleted* self) {
    self->v2IsEventCompleted::~v2IsEventCompleted();
    CustomFree(self);
}

// 0x4c87bc _ZN7Structs18v2IsEventCompleted8finalizeEv
// thunk: b 0x4c8678, forwards to v2IsEventInState::finalize (v2IsEventCompleted derives from v2IsEventInState
// in w7_structs_0.hpp). Hex-Rays agrees: a single call to v2IsEventInState::finalize.
void v2IsEventCompleted::finalize() {
    v2IsEventInState::finalize();
}

// 0x505c6c _ZN7Structs18v2IsEventCompleted4readEP11IStreamBase
// thunk: b 0x505b98, forwards to v2IsEventInState::read. Hex-Rays agrees: a single call, no body of its own.
void v2IsEventCompleted::read(IStreamBase* stream) {
    v2IsEventInState::read(stream);
}

}  // namespace Structs
