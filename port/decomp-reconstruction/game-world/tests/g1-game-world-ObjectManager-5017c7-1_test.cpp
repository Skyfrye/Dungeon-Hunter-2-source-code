// Test for batch g1-game-world-ObjectManager-5017c7-1 (part 2 of 4).
//
// Covered: IsPacketValid's sequence acceptance, the orphan list (null ignored), MarkForDeletion (no duplicates), the
// no-room add and remove with its flag, DelRoomObjects (every equal entry), ProcessNextGameObjectToStartUpdate (pop and
// ZoneEntered), ProcessAcknowledgedPacket and sProcessAcknowledgedPacket (pending packet erase), AskNetResendByObjectId
// (owner key), GetNumObjectsByType and GetObjectByType, sWritePacketData's branch without a level, and the bit order of
// SerializeGameObjectNetData for an empty, non-hosting packet.
//
// The ObjectManager storage is zero-filled, and only the containers the checks use are constructed in place. The
// object map m_objectMap (its value ObjectListItem is not declared yet) is never touched, and the manager is neither
// constructed nor destroyed. No virtual function of the manager is called. Fake objects are zero-filled storage; only
// their data members are read and written.
//
// Link stubs, because the owners are not linked into this test (the stubs record calls and return fixed values):
//   gAssertLevel, dword_99F764, dword_99F76C        the globals, defined here
//   ApplicationGetInstance, Application::GetCurrentLevel     the level comes from g_currentLevel
//   PlayerManager::IsLocalPlayerHosting             returns g_hosting
//   CPacketManager::SequenceMoreRecent              a > b (the test only needs an ordering)
//   NetBitStream ctor, dtor, WriteBit, WriteByte, WriteU32, WriteStream, SetRevertPoint, Revert   record their calls
//   ObjectHandle(ObjectBase*), operator GameObject*, operator Character*    plain pointer holders
//   ObjectBase::GetHandle, GameObject::ZoneEntered, NetStruct::Resend, NetStruct::SetEnabled, Character::IsMerchant
//   CMatching::Get                                  returns nullptr (only the hosting path calls it; not run here)
//   ObjectManager::GetObjectHandleByNetworkId, GetObjectsByType, IsObjectSerializable, IsRemotePlayerOfMember
//                                                   return the g_* fixtures below

#include <cstdint>
#include <cstdio>
#include <list>
#include <map>
#include <new>
#include <set>
#include <string>
#include <utility>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "net-transport/net_bit_stream.hpp"
#include "net-transport/net_struct.hpp"
#include "net-transport/packet_manager.hpp"

// ---- globals ----------------------------------------------------------------------------------------------------------

int gAssertLevel = 0;
static ObjectManager* g_test_dword_99F764 = nullptr;
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

// ---- recorded calls and fixtures (used by the stubs below) -------------------------------------------------------------

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

struct Event {
    char kind;          // 'B' WriteBit, 'Y' WriteByte, 'U' WriteU32, 'S' WriteStream
    std::uint32_t a;
    std::uint32_t b;
};

std::vector<Event> g_events;
int g_hosting = 0;                  // PlayerManager::IsLocalPlayerHosting
int g_zoneEntered = 0;              // GameObject::ZoneEntered calls
bool g_serializable = false;        // ObjectManager::IsObjectSerializable
ObjectBase* g_handleTarget = nullptr;   // object returned by GetObjectHandleByNetworkId
std::vector<Character*> g_typeObjects;  // collected by GetObjectsByType
Level* g_currentLevel = nullptr;

alignas(Application) unsigned char g_appStorage[sizeof(Application)];
alignas(Level) unsigned char g_levelStorage[sizeof(Level)];
alignas(PlayerManager) unsigned char g_playerStorage[sizeof(PlayerManager)];
alignas(ObjectManager) unsigned char g_managerStorage[sizeof(ObjectManager)];
alignas(NetBitStream) unsigned char g_streamStorage[sizeof(NetBitStream)];
alignas(GameObject) unsigned char g_objectStorage[2][sizeof(GameObject)];
alignas(Character) unsigned char g_characterStorage[2][sizeof(Character)];

GameObject* Obj(int i) { return reinterpret_cast<GameObject*>(g_objectStorage[i]); }
Character* Chr(int i) { return reinterpret_cast<Character*>(g_characterStorage[i]); }
Level* Lvl() { return reinterpret_cast<Level*>(g_levelStorage); }
ObjectManager* Mgr() { return reinterpret_cast<ObjectManager*>(g_managerStorage); }
NetBitStream& Stream() { return *reinterpret_cast<NetBitStream*>(g_streamStorage); }

// The containers the checks use, constructed in place. The other members stay zero.
void ConstructContainers() {
    ObjectManager* m = Mgr();
    new (&m->m_objects) std::list<ObjectBase*>();
    new (&m->unk_3c) std::list<ObjectBase*>();
    new (&m->m_roomZones) std::list<std::list<GameObject*>*>();
    new (&m->m_noRoomObjects) std::list<GameObject*>();
    new (&m->unk_90) std::list<GameObject*>();
    new (&m->unk_98) std::map<int, std::list<int>>();
    new (&m->unk_100) std::list<ObjectBase*>();
    new (&m->unk_108) std::map<std::int16_t, std::list<ObjectBase*>>();
    new (&m->unk_128) std::list<int>();
    new (&m->unk_148) std::map<int, int>();
    new (&m->unk_164) std::map<std::int16_t, std::set<std::int16_t>>();
    new (&m->unk_17c) std::map<std::int16_t, std::set<std::int16_t>>();
    new (&m->unk_194) std::map<std::int16_t, std::set<std::int16_t>>();
    new (&m->unk_b0) std::map<int, std::int16_t>();
    new (&m->unk_e0) std::map<int, std::int16_t>();
}

void ResetEvents() { g_events.clear(); }

}  // namespace

// ---- link stubs -------------------------------------------------------------------------------------------------------

Application& ApplicationGetInstance() { return *reinterpret_cast<Application*>(g_appStorage); }
Level* Application::GetCurrentLevel() const { return g_currentLevel; }

int PlayerManager::IsLocalPlayerHosting() { return g_hosting; }

bool CPacketManager::SequenceMoreRecent(std::uint32_t a, std::uint32_t b) { return a > b; }

NetBitStream::NetBitStream(std::uint32_t) {}
NetBitStream::~NetBitStream() {}
void NetBitStream::WriteBit(std::uint32_t bit) { g_events.push_back({'B', bit, 0}); }
void NetBitStream::WriteByte(std::uint8_t value, std::uint32_t bits) { g_events.push_back({'Y', value, bits}); }
void NetBitStream::WriteU32(std::uint32_t value, std::uint32_t bits) { g_events.push_back({'U', value, bits}); }
void NetBitStream::WriteStream(const NetBitStream&) { g_events.push_back({'S', 0, 0}); }
void NetBitStream::SetRevertPoint() {}
void NetBitStream::Revert() {}

ObjectHandle::ObjectHandle(ObjectBase* object) : m_id(0), m_cached(object), m_generation(0) {}
ObjectHandle::operator GameObject*() { return static_cast<GameObject*>(m_cached); }
ObjectHandle::operator Character*() { return static_cast<Character*>(m_cached); }

ObjectHandle ObjectBase::GetHandle() { return ObjectHandle(this); }
void GameObject::ZoneEntered() { ++g_zoneEntered; }
void NetStruct::Resend() {}
unsigned char* NetStruct::SetEnabled(bool) { return nullptr; }
bool Character::IsMerchant() const { return false; }

// DELIBERATE TEST STUB, not a real object. CMatching is abstract here (LocalMemberId, ServerMemberId and MemberBit
// are pure virtual) and this port's CMatching vtable order is a known defect (see the KNOWN DEFECT block in
// net-session-online/include/net-session-online/c_matching_base.hpp), so no usable CMatching object can be built in
// this file. Because tests link with -Wl,--allow-multiple-definition and the FIRST definition wins, this stub also
// disables the library's real CMatching::Get for the whole executable. The batch's one call,
// `CMatching::Get()->LocalMemberId()` in SerializeGameObjectNetData (src/g1-game-world-ObjectManager-5017c7-1.cpp),
// sits in the `hosting` branch, and the checks below never set a local player as hosting, so it is not reached
// today; a later check that does would dereference null and fault.
CMatching* CMatching::Get() { return nullptr; }

ObjectHandle ObjectManager::GetObjectHandleByNetworkId(int) { return ObjectHandle(g_handleTarget); }
void ObjectManager::GetObjectsByType(char const*, std::list<Character*>& out) const {
    for (Character* c : g_typeObjects) {
        out.push_back(c);
    }
}
bool ObjectManager::IsObjectSerializable(ObjectBase*, int) { return g_serializable; }
bool ObjectManager::IsRemotePlayerOfMember(int, Character*) { return false; }

// ---- checks -----------------------------------------------------------------------------------------------------------

namespace {

void TestIsPacketValid() {
    ObjectManager* m = Mgr();
    EXPECT(m->IsPacketValid(1, 5));      // unseen member: accepted and recorded
    EXPECT(!m->IsPacketValid(1, 3));     // older sequence: rejected, nothing stored
    EXPECT(m->IsPacketValid(1, 7));      // newer sequence: accepted and stored
    EXPECT(!m->IsPacketValid(1, 6));     // now older than the stored 7
    EXPECT(m->IsPacketValid(2, 1));      // another member is independent
    EXPECT(m->unk_148.size() == 2);
    EXPECT(m->unk_148[1] == 7);
}

void TestOrphanAndDeletionLists() {
    ObjectManager* m = Mgr();
    m->AddOrphanRenderObjectToDelete(nullptr);
    EXPECT(m->m_objects.empty());        // null is ignored
    m->AddOrphanRenderObjectToDelete(Obj(0));
    EXPECT(m->m_objects.size() == 1);
    m->m_objects.clear();                // cleared here: FlushAll would delete the fake object

    m->MarkForDeletion(Obj(0));
    m->MarkForDeletion(Obj(0));          // no duplicate
    EXPECT(m->unk_3c.size() == 1);
    m->MarkForDeletion(Obj(1));
    EXPECT(m->unk_3c.size() == 2);
    m->unk_3c.clear();
}

void TestNoRoomObjects() {
    ObjectManager* m = Mgr();
    Obj(0)->unk_2f8 = 0;
    m->AddNoRoomObject(Obj(0));
    EXPECT(m->m_noRoomObjects.size() == 1);
    EXPECT(Obj(0)->unk_2f8 == 1);
    m->AddNoRoomObject(Obj(0));          // flag already set: no second entry
    EXPECT(m->m_noRoomObjects.size() == 1);
    m->RemoveNoRoomObject(Obj(0));
    EXPECT(m->m_noRoomObjects.empty());
    EXPECT(Obj(0)->unk_2f8 == 0);
    m->RemoveNoRoomObject(Obj(0));       // not listed: nothing changes
    EXPECT(m->m_noRoomObjects.empty());
}

void TestDelRoomObjects() {
    ObjectManager* m = Mgr();
    std::list<GameObject*> room1;
    std::list<GameObject*> room2;
    m->m_roomZones.push_back(&room1);
    m->m_roomZones.push_back(&room2);
    m->m_roomZones.push_back(&room1);
    m->DelRoomObjects(&room1);
    EXPECT(m->m_roomZones.size() == 1);
    EXPECT(m->m_roomZones.front() == &room2);
    m->m_roomZones.clear();
}

void TestProcessNextGameObjectToStartUpdate() {
    ObjectManager* m = Mgr();
    g_zoneEntered = 0;
    m->unk_90.push_back(Obj(0));
    m->unk_90.push_back(Obj(1));
    m->ProcessNextGameObjectToStartUpdate();
    EXPECT(g_zoneEntered == 1);
    EXPECT(m->unk_90.size() == 1);
    EXPECT(m->unk_90.front() == Obj(1));
    m->ProcessNextGameObjectToStartUpdate();
    EXPECT(g_zoneEntered == 2);
    EXPECT(m->unk_90.empty());
    m->ProcessNextGameObjectToStartUpdate();   // empty list: nothing happens
    EXPECT(g_zoneEntered == 2);
}

void TestAcknowledgedPacket() {
    ObjectManager* m = Mgr();
    m->unk_98[4] = std::list<int>{7, 9, 7};
    m->ProcessAcknowledgedPacket(4, 7);          // first occurrence of 7 is removed
    EXPECT((m->unk_98[4] == std::list<int>{9, 7}));
    m->ProcessAcknowledgedPacket(4, 42);         // not pending: unchanged
    EXPECT((m->unk_98[4] == std::list<int>{9, 7}));
    m->ProcessAcknowledgedPacket(5, 1);          // no key: nothing inserted
    EXPECT(m->unk_98.find(5) == m->unk_98.end());

    dword_99F764 = m;
    ObjectManager::sProcessAcknowledgedPacket(4, 9);   // forwards to dword_99F764
    EXPECT((m->unk_98[4] == std::list<int>{7}));
    dword_99F764 = nullptr;
    ObjectManager::sProcessAcknowledgedPacket(4, 7);   // no instance: nothing happens
    EXPECT((m->unk_98[4] == std::list<int>{7}));
    m->unk_98.clear();
}

void TestAskNetResend() {
    ObjectManager* m = Mgr();
    Obj(0)->m_netOwnerId = 3;
    g_handleTarget = Obj(0);
    m->AskNetResendByObjectId(77);
    EXPECT(m->unk_194.count(3) == 1);
    EXPECT(m->unk_194[3].count(77) == 1);
    m->AskNetResendByObjectId(77);               // set insertion is idempotent
    EXPECT(m->unk_194[3].size() == 1);
    m->unk_194.clear();
    g_handleTarget = nullptr;
}

void TestObjectsByType() {
    ObjectManager* m = Mgr();
    g_typeObjects = {Chr(0), Chr(1)};
    EXPECT(m->GetNumObjectsByType("Probe") == 2);
    ObjectHandle first = m->GetObjectByType("Probe");
    EXPECT(first.m_cached == static_cast<ObjectBase*>(Chr(0)));
    g_typeObjects.clear();
    EXPECT(m->GetNumObjectsByType("Probe") == 0);
    ObjectHandle none = m->GetObjectByType("Probe");
    EXPECT(none.m_cached == nullptr);
}

void TestWritePacketDataWithoutLevel() {
    ResetEvents();
    dword_99F764 = Mgr();
    g_currentLevel = nullptr;
    EXPECT(ObjectManager::sWritePacketData(1, 2, Stream()) == 0);
    EXPECT(g_events.size() == 1 && g_events[0].kind == 'B' && g_events[0].a == 0);

    ResetEvents();
    Lvl()->m_loadStep = 10;                      // not past step 35
    g_currentLevel = Lvl();
    EXPECT(ObjectManager::sWritePacketData(1, 2, Stream()) == 0);
    EXPECT(g_events.size() == 1 && g_events[0].kind == 'B' && g_events[0].a == 0);
    dword_99F764 = nullptr;
}

// An empty, non-hosting packet: the level byte, the member bit (0), the count (0), the sub-stream, the removal from
// unk_128 with a 0 bit, and the empty resend set (a 0 bit).
void TestSerializeEmptyPacket() {
    ObjectManager* m = Mgr();
    ResetEvents();
    Lvl()->m_levelListIndex = 5;
    Lvl()->m_loadStep = 38;
    g_currentLevel = Lvl();
    g_hosting = 0;
    dword_99F76C = reinterpret_cast<PlayerManager*>(g_playerStorage);
    m->SerializeGameObjectNetData(9, 12, Stream());
    const std::vector<Event> expected = {
        {'Y', 5, 8}, {'B', 0, 0}, {'U', 0, 16}, {'S', 0, 0}, {'B', 0, 0}, {'B', 0, 0},
    };
    EXPECT(g_events.size() == expected.size());
    if (g_events.size() == expected.size()) {
        for (std::size_t i = 0; i < expected.size(); ++i) {
            EXPECT(g_events[i].kind == expected[i].kind);
            EXPECT(g_events[i].a == expected[i].a);
            EXPECT(g_events[i].b == expected[i].b);
        }
    }
    EXPECT(m->unk_108[9].empty());
    dword_99F76C = nullptr;
}

}  // namespace

int main() {
    ConstructContainers();
    dword_99F764 = nullptr;
    TestIsPacketValid();
    TestOrphanAndDeletionLists();
    TestNoRoomObjects();
    TestDelRoomObjects();
    TestProcessNextGameObjectToStartUpdate();
    TestAcknowledgedPacket();
    TestAskNetResend();
    TestObjectsByType();
    TestWritePacketDataWithoutLevel();
    TestSerializeEmptyPacket();
    if (g_failures == 0) {
        std::printf("ObjectManager part 2: all checks passed\n");
        return 0;
    }
    std::printf("ObjectManager part 2: %d check(s) failed\n", g_failures);
    return 1;
}
