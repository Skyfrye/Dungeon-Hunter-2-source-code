// Test for the Objective_EventReceiver batch (game-items-save/src/g1-game-items-save-Objective_EventReceiver-4e7672-0.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// The batch source is linked with stand-ins for what other batches and categories provide: gAssertLevel; the Application
// singleton (its storage is zero-filled, only m_objectManager and the current level are set); EventManager::Attach and
// DelayedDetach (they record their arguments); the Objective base (constructor, destructor and the virtuals its vtable
// names); Character::HasCharOIDInCache (records its argument); and the two Compare tests, which match fake Character
// pointers by a table. The object manager's character list is a real std::list of those fake pointers. Nothing here is
// dereferenced as a Character.
//
// Checks: onEvent (forwarding, the completed and invalid cases, the consumed flag), Register and Unregister (the level
// argument, the receiver subobject, the priority, the flag, and the no-level path), DBG_TraceDetailedObjectiveInformation
// (its text, written to a temporary file), and HasEnemyOfTypeLoaded for both test classes (the count, the fallback to the
// cache, and the TestCharTemplate case that does not fall back).

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <list>
#include <map>
#include <new>
#include <string>

#include "core-platform/memory.hpp"
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/IEventReceiver.hpp"
#include "dh2/Level.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/Objective.hpp"
#include "dh2/Objective_EventReceiver.hpp"
#include "dh2/TestCharPropId.hpp"
#include "dh2/TestCharTemplate.hpp"

int gAssertLevel = 0;

namespace {

int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            ++g_failures;                                                        \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);                  \
        }                                                                        \
    } while (0)

// Stand-in state. The application and the level are zero-filled storage; the level is used only as an address.
alignas(16) unsigned char g_appStorage[sizeof(Application)];
alignas(16) unsigned char g_levelStorage[sizeof(Level)];
Level* g_level = nullptr;

int g_attachCalls = 0;
int g_detachCalls = 0;
int g_lastEventId = 0;
int g_lastPriority = -1;
IEventReceiver* g_lastReceiver = nullptr;

int g_cacheCalls = 0;
int g_cacheResult = 0;
int g_lastCacheArg = 0;

std::map<const Character*, int> g_propIds;
std::map<const Character*, int> g_templateIds;

void ResetRecords() {
    g_attachCalls = 0;
    g_detachCalls = 0;
    g_lastEventId = 0;
    g_lastPriority = -1;
    g_lastReceiver = nullptr;
    g_cacheCalls = 0;
    g_cacheResult = 0;
    g_lastCacheArg = 0;
}

// A test objective: GetPositions does nothing, and handleEvent records its arguments and returns handleResult.
class TestObjective : public Objective_EventReceiver {
public:
    void GetPositions(Vector3DFList&) const override {}
    bool handleEvent(const IEvent* event, const EventManager* manager) override {
        ++handleCalls;
        lastEvent = event;
        lastManager = manager;
        return handleResult;
    }

    int handleCalls = 0;
    bool handleResult = false;
    const IEvent* lastEvent = nullptr;
    const EventManager* lastManager = nullptr;
};

void CheckOnEvent() {
    ResetRecords();
    gAssertLevel = 0;
    TestObjective obj;
    obj.m_valid = true;
    obj.m_completed = false;
    obj.m_registered = false;
    obj.m_type = 3;
    obj.handleResult = true;

    const IEvent* event = reinterpret_cast<const IEvent*>(0x1234);
    const EventManager* manager = reinterpret_cast<const EventManager*>(0x5678);

    // Valid and not completed: handleEvent gets the arguments and its result is returned.
    CHECK(obj.onEvent(event, manager) == true);
    CHECK(obj.handleCalls == 1);
    CHECK(obj.lastEvent == event);
    CHECK(obj.lastManager == manager);

    obj.handleResult = false;
    CHECK(obj.onEvent(event, manager) == false);
    CHECK(obj.handleCalls == 2);

    // Completed: nothing is forwarded.
    obj.m_completed = true;
    CHECK(obj.onEvent(event, manager) == false);
    CHECK(obj.handleCalls == 2);

    // Invalid: nothing is forwarded, and the result is false at every assert level that does not stop.
    obj.m_completed = false;
    obj.m_valid = false;
    CHECK(obj.onEvent(event, manager) == false);
    CHECK(obj.handleCalls == 2);
    gAssertLevel = 1;  // prints the ASSERT line to stderr and goes on
    CHECK(obj.onEvent(event, manager) == false);
    CHECK(obj.handleCalls == 2);
    gAssertLevel = 0;
}

void CheckRegistration() {
    ResetRecords();
    gAssertLevel = 0;
    TestObjective obj;
    obj.m_valid = true;
    obj.m_completed = false;
    obj.m_registered = false;
    obj.m_type = 42;
    const IEventReceiver* receiverSubobject = static_cast<IEventReceiver*>(&obj);

    // No level: Register does nothing and leaves the flag alone.
    g_level = nullptr;
    obj.Register();
    CHECK(g_attachCalls == 0);
    CHECK(!obj.m_registered);

    // With a level: the type is the event id, the receiver is the IEventReceiver subobject, priority 0, and the flag is set.
    g_level = reinterpret_cast<Level*>(g_levelStorage);
    obj.Register();
    CHECK(g_attachCalls == 1);
    CHECK(g_lastEventId == 42);
    CHECK(g_lastReceiver == receiverSubobject);
    CHECK(g_lastPriority == 0);
    CHECK(obj.m_registered);

    // Unregister on the level: DelayedDetach gets the same id and receiver, and the flag is cleared.
    obj.Unregister();
    CHECK(g_detachCalls == 1);
    CHECK(g_lastEventId == 42);
    CHECK(g_lastReceiver == receiverSubobject);
    CHECK(!obj.m_registered);

    // An invalid objective does not register.
    obj.m_valid = false;
    obj.Register();
    CHECK(g_attachCalls == 1);
    CHECK(!obj.m_registered);
    obj.m_valid = true;

    // No level on Unregister: the flag stays as it was.
    g_level = nullptr;
    obj.m_registered = true;
    obj.Unregister();
    CHECK(g_detachCalls == 1);
    CHECK(obj.m_registered);

    // No level on Register with the assert printing: nothing is attached, the flag stays clear, and nothing stops.
    gAssertLevel = 1;
    obj.m_registered = false;
    obj.Register();
    CHECK(g_attachCalls == 1);
    CHECK(!obj.m_registered);
    gAssertLevel = 0;
    g_level = nullptr;
}

void CheckTrace() {
    TestObjective obj;
    obj.m_valid = true;
    obj.m_registered = false;

    std::FILE* file = std::tmpfile();
    CHECK(file != nullptr);
    if (file == nullptr) {
        return;
    }
    const int returned = obj.DBG_TraceDetailedObjectiveInformation(reinterpret_cast<__sFILE*>(file));
    std::fflush(file);
    std::rewind(file);

    char buffer[512] = {};
    const std::size_t got = std::fread(buffer, 1, sizeof(buffer) - 1, file);
    std::fclose(file);

    const char expected[] =
        "\t    isValid : true(if false ==> means objective cannot be completed in this level.)\n"
        "\t    isRegistered : false\n\n";
    CHECK(got == std::strlen(expected));
    CHECK(std::strcmp(buffer, expected) == 0);
    CHECK(returned == static_cast<int>(std::strlen("\t    isRegistered : false\n\n")));
}

// The objects of the object manager. Their address is the id source for the Compare stand-ins.
Character* const kCharA = reinterpret_cast<Character*>(0x1000);
Character* const kCharB = reinterpret_cast<Character*>(0x2000);
Character* const kCharC = reinterpret_cast<Character*>(0x3000);

void CheckHasEnemyOfTypeLoaded() {
    ResetRecords();
    gAssertLevel = 0;

    // Prop ids 5, 5, 9. Template ids 100, 100, 200.
    g_propIds = {{kCharA, 5}, {kCharB, 5}, {kCharC, 9}};
    g_templateIds = {{kCharA, 100}, {kCharB, 100}, {kCharC, 200}};

    // An object manager whose character list holds the three objects. Only m_objectManager and m_characters are used.
    alignas(ObjectManager) static unsigned char managerStorage[sizeof(ObjectManager)];
    ObjectManager* manager = reinterpret_cast<ObjectManager*>(managerStorage);
    new (&manager->m_characters) std::list<Character*>();
    manager->m_characters.push_back(kCharA);
    manager->m_characters.push_back(kCharB);
    manager->m_characters.push_back(kCharC);
    ApplicationGetInstance().m_objectManager = manager;

    // TestCharPropId: two characters have prop id 5, so the count is 2 and the cache is not consulted.
    CHECK((Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharPropId>(5, 0)) == 2);
    CHECK(g_cacheCalls == 0);

    // TestCharPropId: no character has prop id 7, so the result is the cache result for id 7.
    g_cacheResult = 1;
    CHECK((Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharPropId>(7, 0)) == 1);
    CHECK(g_cacheCalls == 1);
    CHECK(g_lastCacheArg == 7);

    g_cacheResult = 0;
    CHECK((Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharPropId>(7, 0)) == 0);

    // TestCharTemplate: two characters have template id 100.
    ResetRecords();
    CHECK((Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharTemplate>(100, 0)) == 2);
    CHECK(g_cacheCalls == 0);

    // TestCharTemplate: no match returns the count (0) and does not consult the cache, even when the cache has the id.
    g_cacheResult = 1;
    CHECK((Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharTemplate>(300, 0)) == 0);
    CHECK(g_cacheCalls == 0);

    // A single match from the template side.
    CHECK((Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharTemplate>(200, 0)) == 1);

    manager->m_characters.~list();
    ApplicationGetInstance().m_objectManager = nullptr;
    g_cacheResult = 0;
}

}  // namespace

// ----- Stand-ins for what other batches and categories provide -----

Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

Level* Application::GetCurrentLevel() const {
    return g_level;
}

bool EventManager::Attach(int eventId, IEventReceiver* receiver, int priority) {
    ++g_attachCalls;
    g_lastEventId = eventId;
    g_lastReceiver = receiver;
    g_lastPriority = priority;
    return true;
}

bool EventManager::DelayedDetach(int eventId, IEventReceiver* receiver) {
    ++g_detachCalls;
    g_lastEventId = eventId;
    g_lastReceiver = receiver;
    return true;
}

int Character::HasCharOIDInCache(int oid) {
    ++g_cacheCalls;
    g_lastCacheArg = oid;
    return g_cacheResult;
}

bool TestCharPropId::Compare(int propId, Character* character) {
    if (character == nullptr) {
        return false;
    }
    const auto it = g_propIds.find(character);
    return it != g_propIds.end() && it->second == propId;
}

bool TestCharTemplate::Compare(int templateId, Character* character) {
    if (character == nullptr) {
        return false;
    }
    const auto it = g_templateIds.find(character);
    return it != g_templateIds.end() && it->second == templateId;
}

// Objective base: the constructor and the virtuals named by the vtable. The batch sets the fields the checks read.
Objective::Objective() {}
Objective::~Objective() {}
void Objective::Compile() {}
int Objective::DBG_TraceDetailedObjectiveInformation(__sFILE*) const { return 0; }
void Objective::InstallObjectiveMarker(int, int) {}
void Objective::RemoveObjectiveMarker() {}
std::string Objective::GetDesc() const { return std::string(); }
void Objective::_loadData(IStreamBase*) {}
void Objective::_saveData(IStreamBase*) {}
void Objective::_resetData() {}

int main() {
    CheckOnEvent();
    CheckRegistration();
    CheckTrace();
    CheckHasEnemyOfTypeLoaded();
    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("all checks passed\n");
    return 0;
}
