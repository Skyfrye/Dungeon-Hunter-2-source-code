// Test for batch g1-game-app-pack12-35588a-0. Checks SearchFailCache::add (the list keeps up to 10 entries, then starts
// over), the TestCharPropId and TestCharTemplate predicates, the Script_Wait counter and duration (IsBlocking, Update,
// Execute), the name lookups of the unequip and unlock commands, and that the Execute bodies make the isTracingScriptCmd
// read. Exit status 0 means every check passed.
//
// Build: check_tu.sh --test <this file> <batch source>
// The command records are stubs defined below: their destructors free the name buffers, so a name given to a record is a
// heap copy.
//
// The batch source references functions of other classes (DebugSwitches, Application, Character, ItemInventory,
// vox-audio's VoxSoundManager, ObjectManager, ObjectHandle) and the ScriptCmdImpl base. Those are defined below as
// stubs. The Character pointers used here are pointers to a zeroed buffer, which the stubs never read. Each stub
// returns a value the test sets.
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "pydata-accessors/script_cmd.hpp"

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/SearchFailCache.hpp"
#include "dh2/Script_StopSound.hpp"
#include "dh2/Script_UnEquipHands.hpp"
#include "dh2/Script_UnEquipItemFromSlot.hpp"
#include "dh2/Script_UnlockCharacter.hpp"
#include "dh2/Script_Wait.hpp"
#include "dh2/Script_WaitCamera.hpp"
#include "dh2/Script_WaitDialog.hpp"
#include "dh2/TestCharPropId.hpp"
#include "dh2/TestCharTemplate.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/v2Controller.hpp"
#include "vox-audio/vox/sound_manager.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

int g_traceCalls = 0;   // DebugSwitches::GetInstance calls (one per trace read)
int g_dt = 0;           // Application::GetDt result
int g_charPropsId = -1;
int g_charTemplateId = -1;

// The two VoxSoundManager calls Script_StopSound::Execute makes. It publishes them through the null
// VoxSoundManager::s_instance (vox-audio declare it in .bss and only CreateInstance sets it, 0x36ca88, which is a
// skipped row), and the real bodies dereference that null `this`, so this test supplies the instance and the two
// calls: the stubs below stand in for the sound engine, the same seam the other singleton accessors in this tree use.
int g_stopMusicCalls = 0;
int g_stopMusicFade = -1;
int g_stopCalls = 0;
int g_stopSound = -1;
int g_stopFade = -1;

alignas(16) unsigned char g_appStorage[4096];   // stands in for the Application singleton; never read by the stubs
alignas(16) unsigned char g_debugStorage[64];   // stands in for the DebugSwitches singleton; never read by the stubs
alignas(16) unsigned char g_soundManagerStorage[512];  // stands in for the VoxSoundManager singleton

}  // namespace

// ---- Stubs for the functions the batch source references --------------------------------------------------------

DebugSwitches* DebugSwitches::GetInstance() {
    ++g_traceCalls;
    return reinterpret_cast<DebugSwitches*>(g_debugStorage);
}

bool DebugSwitches::GetSwitch(const std::string& /*name*/) {
    return false;
}

// VoxSoundManager: a non-null singleton over zeroed storage plus the two calls Script_StopSound::Execute makes.
// The real Stop/StopMusic bodies index the engine (sounds_, VoxEngine) that this test does not build, so they are
// replaced here exactly as the record destructors and the other class stubs are. The arguments are recorded.
VoxSoundManager* VoxSoundManager::s_instance =
    reinterpret_cast<VoxSoundManager*>(g_soundManagerStorage);

void VoxSoundManager::Stop(int sound, int fade_ms) {
    ++g_stopCalls;
    g_stopSound = sound;
    g_stopFade = fade_ms;
}

void VoxSoundManager::StopMusic(int fade_ms) {
    ++g_stopMusicCalls;
    g_stopMusicFade = fade_ms;
}

Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

int Application::GetDt() {
    return g_dt;
}

Level* Application::GetCurrentLevel() const {
    return nullptr;
}

int Character::SafeGetCharPropsId() {
    return g_charPropsId;
}

int Character::SafeGetCharPropsTemplateId() {
    return g_charTemplateId;
}

ItemInstance* ItemInventory::GetEquippedItem(unsigned int /*slot*/) {
    return nullptr;
}

int ItemInventory::GetItemIndex(const ItemInstance* /*item*/) const {
    return -1;
}

bool v2Controller::s_blocked = false;

void ScriptCmdImpl::Init() {}
void ScriptCmdImpl::Update() {}
ScriptCmdImpl::~ScriptCmdImpl() {}

// Name lookups. ObjectManager::GetObjectByName records the name and the module it was given, and returns an empty handle,
// so no object is found and no Character is touched.
int g_lookupCalls = 0;
std::string g_lookupName;
int g_lookupModule = 0;

ObjectHandle::ObjectHandle() {}

ObjectBase* ObjectHandle::GetObject(bool /*assertFound*/) {
    return nullptr;
}

ObjectHandle::operator Character*() {
    std::abort();
}

ObjectHandle ObjectManager::GetObjectByName(char const* name, int flags, bool /*active*/, char const* /*type*/) {
    ++g_lookupCalls;
    g_lookupName = name != nullptr ? name : "";
    g_lookupModule = flags;
    return ObjectHandle();
}

// A heap copy of a name for a record (the record's destructor frees it).
char* CopyName(const char* text) {
    char* copy = static_cast<char*>(std::malloc(std::strlen(text) + 1));
    std::strcpy(copy, text);
    return copy;
}

// The command records. The test links these stubs instead of pydata-accessors/src/script_cmd_records.cpp, which needs most
// of StreamReader. The destructors free the name buffers they own, as the real ones do. finalize and read are not used.
namespace Structs {
ScriptCmd::~ScriptCmd() {}
void ScriptCmd::finalize() {}
void ScriptCmd::read(IStreamBase* /*stream*/) {}

StopSound::~StopSound() {}
void StopSound::finalize() {}
void StopSound::read(IStreamBase* /*stream*/) {}

UnEquipHands::~UnEquipHands() { std::free(Target); }
void UnEquipHands::finalize() {}
void UnEquipHands::read(IStreamBase* /*stream*/) {}

UnEquipItemFromSlot::~UnEquipItemFromSlot() { std::free(Target); }
void UnEquipItemFromSlot::finalize() {}
void UnEquipItemFromSlot::read(IStreamBase* /*stream*/) {}

UnlockCharacter::~UnlockCharacter() { std::free(Target); }
void UnlockCharacter::finalize() {}
void UnlockCharacter::read(IStreamBase* /*stream*/) {}

Wait::~Wait() {}
void Wait::finalize() {}
void Wait::read(IStreamBase* /*stream*/) {}
}  // namespace Structs

// A node pointer that is only compared, never dereferenced.
const PFGInnerNode* FakeNode(std::uintptr_t value) {
    return reinterpret_cast<const PFGInnerNode*>(value);
}

int main() {
    // SearchFailCache::add. Ten entries are kept. The 11th add appends, because 10 entries is not more than 10. The
    // 12th add finds 11 entries, so the list starts over and keeps only the new entry.
    {
        SearchFailCache cache;
        for (std::uint32_t i = 0; i < 10; ++i) {
            SearchFailCache::Entry e{FakeNode(i), FakeNode(i + 100), i + 200};
            cache.add(e);
        }
        EXPECT(cache.m_entries.size() == 10u);

        SearchFailCache::Entry e10{FakeNode(10), FakeNode(110), 210};
        cache.add(e10);
        EXPECT(cache.m_entries.size() == 11u);

        SearchFailCache::Entry e11{FakeNode(11), FakeNode(111), 211};
        cache.add(e11);
        EXPECT(cache.m_entries.size() == 1u);
        EXPECT(cache.m_entries[0].m_start == FakeNode(11));
        EXPECT(cache.m_entries[0].m_goal == FakeNode(111));
        EXPECT(cache.m_entries[0].m_flags == 211u);

        // The entry added after the restart is appended normally.
        SearchFailCache::Entry e12{FakeNode(12), FakeNode(112), 212};
        cache.add(e12);
        EXPECT(cache.m_entries.size() == 2u);
        EXPECT(cache.m_entries[1].m_start == FakeNode(12));
    }

    // TestCharPropId and TestCharTemplate: a null character never matches. Otherwise the id is compared with the
    // character's SafeGetCharPropsId or SafeGetCharPropsTemplateId.
    {
        alignas(16) char storage[64] = {};
        Character* character = reinterpret_cast<Character*>(storage);
        g_charPropsId = 7;
        g_charTemplateId = 9;

        EXPECT(!TestCharPropId::Compare(7, nullptr));
        EXPECT(TestCharPropId::Compare(7, character));
        EXPECT(!TestCharPropId::Compare(8, character));

        EXPECT(!TestCharTemplate::Compare(9, nullptr));
        EXPECT(TestCharTemplate::Compare(9, character));
        EXPECT(!TestCharTemplate::Compare(7, character));
    }

    // Script_Wait. IsBlocking holds while the counter is below the duration, Update adds the frame time, and Execute
    // resets the counter and copies the duration from the record (m_w2).
    {
        Script_Wait wait;
        wait.m_elapsed = 0;
        wait.m_duration = 300;
        EXPECT(wait.IsBlocking());

        g_dt = 120;
        wait.Update();
        EXPECT(wait.m_elapsed == 120);
        wait.Update();
        EXPECT(wait.m_elapsed == 240);
        EXPECT(wait.IsBlocking());

        wait.Update();
        EXPECT(wait.m_elapsed == 360);
        EXPECT(!wait.IsBlocking());

        Structs::Wait record;
        record.Time = 450;
        wait.m_args = &record;
        const int before = g_traceCalls;
        wait.Execute(false, 0);
        EXPECT(wait.m_elapsed == 0);
        EXPECT(wait.m_duration == 450);
        EXPECT(g_traceCalls == before + 1);
        EXPECT(wait.IsBlocking());
    }

    // The Execute bodies make the isTracingScriptCmd read first. The unequip and unlock commands look their character up
    // by the record name, which the ObjectManager stub records. "All" unlocks every controller without a lookup. The
    // StopSound body reads its record, but its ObjectManager and VoxSoundManager calls are still missing (partial).
    {
        Structs::StopSound stopRecord;
        stopRecord.FadeoutTime = 7;
        stopRecord.IsMusic = false;
        stopRecord.SoundID = 9;
        Script_StopSound stop;
        stop.m_args = &stopRecord;

        Structs::UnEquipHands handsRecord;
        handsRecord.Target = CopyName("Hero");
        Script_UnEquipHands hands;
        hands.m_args = &handsRecord;

        Structs::UnEquipItemFromSlot slotRecord;
        slotRecord.SlotID = 2;
        slotRecord.Target = CopyName("Villain");
        Script_UnEquipItemFromSlot slot;
        slot.m_args = &slotRecord;

        Structs::UnlockCharacter unlockAllRecord;
        unlockAllRecord.Target = CopyName("All");
        Script_UnlockCharacter unlockAll;
        unlockAll.m_args = &unlockAllRecord;

        Structs::UnlockCharacter unlockNamedRecord;
        unlockNamedRecord.Target = CopyName("Hero");
        Script_UnlockCharacter unlockNamed;
        unlockNamed.m_args = &unlockNamedRecord;

        Script_WaitCamera camera;
        Script_WaitDialog dialog;

        const int before = g_traceCalls;

        stop.Execute(false, 0);
        EXPECT(g_traceCalls == before + 1);
        EXPECT(g_stopCalls == 1);           // m_w3 (music flag, +0x0c) is false
        EXPECT(g_stopSound == 9);           // the record's sound id (m_w4, +0x10)
        EXPECT(g_stopFade == 7);            // the record's fade (m_w2, +0x08)
        EXPECT(g_stopMusicCalls == 0);

        g_lookupCalls = 0;
        hands.Execute(false, 5);
        EXPECT(g_traceCalls == before + 2);
        EXPECT(g_lookupCalls == 1);
        EXPECT(g_lookupName == "Hero");
        EXPECT(g_lookupModule == 5);

        slot.Execute(false, 6);
        EXPECT(g_traceCalls == before + 3);
        EXPECT(g_lookupCalls == 2);
        EXPECT(g_lookupName == "Villain");
        EXPECT(g_lookupModule == 6);

        v2Controller::s_blocked = true;
        unlockAll.Execute(false, 7);
        EXPECT(g_traceCalls == before + 4);
        EXPECT(!v2Controller::s_blocked);
        EXPECT(g_lookupCalls == 2);  // "All" does not look an object up

        v2Controller::s_blocked = true;
        unlockNamed.Execute(false, 8);
        EXPECT(g_traceCalls == before + 5);
        EXPECT(v2Controller::s_blocked);  // a named character leaves the global block alone
        EXPECT(g_lookupCalls == 3);
        EXPECT(g_lookupName == "Hero");

        camera.Execute(false, 0);
        dialog.Execute(false, 0);
        EXPECT(g_traceCalls == before + 7);

        EXPECT(!stop.IsBlocking());
        EXPECT(!hands.IsBlocking());
        EXPECT(!slot.IsBlocking());
        EXPECT(!unlockAll.IsBlocking());
    }

    if (g_failures == 0) {
        std::printf("g1-game-app-pack12-35588a-0 test: all checks passed\n");
    } else {
        std::printf("g1-game-app-pack12-35588a-0 test: %d failure(s)\n", g_failures);
    }
    return g_failures == 0 ? 0 : 1;
}
