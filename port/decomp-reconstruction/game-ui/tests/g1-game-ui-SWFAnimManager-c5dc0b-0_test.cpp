// Checks the SWFAnimManager bodies of batch g1-game-ui-SWFAnimManager-c5dc0b-0 that run without the engine: the
// constructor, CloneAnim, DropAnim, FlushBank, FlushAll (bank order and release of each bank's storage), the destructor,
// GrabAnim over a bank that already holds a free anim, GrabAnim and ExtendBank when the movie clip is missing, and
// ExtendBank with a count that the bank already meets.
//
// The translation unit also refers to engine code (SWFAnim, DebugCachedCharacter, RenderFX, MenuManager, the gameswf
// sprite and string code). The definitions below are stubs for that code. The anim objects are real SWFAnimManager
// bookkeeping over stub SWFAnim objects: the stubs record each destruction and each SetVisible call.
//
// The global operator new and delete are replaced here to keep a table of live blocks. A bank's pointer array comes
// from std::allocator (operator new), so IsLive shows whether FlushAll released it.
#include <cstdio>
#include <cstdlib>
#include <memory>
#include <new>
#include <string>
#include <utility>
#include <vector>

#include "dh2/DebugCachedCharacter.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/SWFAnim.hpp"
#include "dh2/SWFAnimManager.hpp"
#include "dh2/VectorSet.hpp"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_sprite.h"

// ---- stubs for the engine code the translation unit refers to (the tested paths do not reach most of them) ----

int gAssertLevel = 0;

namespace {
std::vector<const SWFAnim*> g_deleted;                          // anims destroyed, in order
std::vector<std::pair<const SWFAnim*, bool>> g_visibility;      // SetVisible calls
const char* g_lastRefreshName = nullptr;                        // name given to DebugCachedCharacter::RefreshCache
MenuFX* g_lastRefreshMenu = nullptr;                            // menu given to RefreshCache
bool g_clipExists = false;                                      // whether RefreshCache finds the movie clip
MenuFX* g_hudRoot = nullptr;                                    // MenuManager::GetHUDRoot result
char g_menuStorage[64];                                         // stands in for a MenuFX / MenuManager (never read)
char g_charStorage[64];                                         // stands in for a gameswf::character (never read)
weak_proxy g_proxy;                                             // the proxy a found clip holds
}  // namespace

SWFAnim::SWFAnim(MenuFX* menu, gameswf::character*) : m_free(true), m_menu(menu) {}
SWFAnim::~SWFAnim() { g_deleted.push_back(this); }
void SWFAnim::SetVisible(bool visible) { g_visibility.emplace_back(this, visible); }

DebugCachedCharacter::DebugCachedCharacter() { m_character = nullptr; }
DebugCachedCharacter::~DebugCachedCharacter() {}
gameswf::character* DebugCachedCharacter::GetChar() { return m_character; }
void DebugCachedCharacter::RefreshCache(const char* path, MenuFX* menu, gameswf::character*) {
    g_lastRefreshName = path;
    g_lastRefreshMenu = menu;
    if (g_clipExists) {
        m_character = reinterpret_cast<gameswf::character*>(g_charStorage);
        m_characterProxy = &g_proxy;
    } else {
        m_character = nullptr;
    }
}

void gameswf::smart_ptr_proxy::operator=(weak_proxy* p) { m_proxy = p; }

gameswf::as_object* RenderFX::Find(const char*) { return nullptr; }

MenuManager* MenuManager::GetInstance() { return reinterpret_cast<MenuManager*>(g_menuStorage); }
MenuFX* MenuManager::GetHUDRoot() { return g_hudRoot; }

int gameswf::sprite_instance::get_highest_depth() { return 7; }

// gameswf string and log code that the inline tu_string constructor and the gameswf headers refer to.
void tu_string::resize(int) {}
int tu_string::utf8_char_count(const char*, int) { return 0; }
bool tu_string::operator==(const tu_string&) const { return false; }
void tu_string::operator+=(const tu_string&) {}
void tu_string::operator+=(const char*) {}
namespace gameswf {
bool get_verbose_action() { return false; }
void log_msg(const char*, ...) {}
void free_internal(void* p, unsigned int) { std::free(p); }
ref_counted::ref_counted() {}
ref_counted::~ref_counted() {}
}  // namespace gameswf

// The explicit specialization the header declares (the game build defines it in game-app; the test has its own).
template <>
void VectorSet<SWFAnim*>::push_back_unique(SWFAnim* const& value) {
    for (SWFAnim** p = m_start; p != m_finish; ++p) {
        if (*p == value) {
            return;
        }
    }
    if (m_finish == m_endOfStorage) {
        const std::size_t used = static_cast<std::size_t>(m_finish - m_start);
        const std::size_t capacity = static_cast<std::size_t>(m_endOfStorage - m_start);
        const std::size_t grown = capacity ? 2 * capacity : 1;
        std::allocator<SWFAnim*> alloc;
        SWFAnim** storage = alloc.allocate(grown);
        for (std::size_t i = 0; i < used; ++i) {
            storage[i] = m_start[i];
        }
        if (m_start) {
            alloc.deallocate(m_start, capacity);
        }
        m_start = storage;
        m_finish = storage + used;
        m_endOfStorage = storage + grown;
    }
    *m_finish++ = value;
}

// ---- live-block tracking: a static table of the blocks from operator new that are not yet deleted ----

namespace {
constexpr std::size_t kMaxLive = static_cast<std::size_t>(1) << 16;
void* g_live[kMaxLive];
std::size_t g_liveCount = 0;

void TrackLive(void* p) {
    if (p != nullptr && g_liveCount < kMaxLive) {
        g_live[g_liveCount++] = p;
    }
}

void UntrackLive(void* p) {
    for (std::size_t i = g_liveCount; i-- > 0;) {
        if (g_live[i] == p) {
            g_live[i] = g_live[--g_liveCount];
            return;
        }
    }
}

// Compares addresses only; a freed address is never dereferenced.
bool IsLive(const void* p) {
    for (std::size_t i = 0; i < g_liveCount; ++i) {
        if (g_live[i] == p) {
            return true;
        }
    }
    return false;
}
}  // namespace

void* operator new(std::size_t size) {
    void* p = std::malloc(size != 0 ? size : 1);
    if (p == nullptr) {
        throw std::bad_alloc();
    }
    TrackLive(p);
    return p;
}

void operator delete(void* p) noexcept {
    if (p != nullptr) {
        UntrackLive(p);
        std::free(p);
    }
}

void operator delete(void* p, std::size_t) noexcept { operator delete(p); }

// ---- checks ----

namespace {
int g_failures = 0;

#define CHECK(cond)                                                                   \
    do {                                                                              \
        if (!(cond)) {                                                                \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);      \
            ++g_failures;                                                             \
        }                                                                             \
    } while (0)

std::size_t BankSize(const VectorSet<SWFAnim*>& bank) {
    return static_cast<std::size_t>(bank.m_finish - bank.m_start);
}

void ResetStubs() {
    g_deleted.clear();
    g_visibility.clear();
    g_lastRefreshName = nullptr;
    g_lastRefreshMenu = nullptr;
    g_clipExists = false;
    g_hudRoot = nullptr;
}
}  // namespace

int main() {
    MenuFX* menu = reinterpret_cast<MenuFX*>(g_menuStorage);

    // Constructor: an empty map. CloneAnim is a stub that returns null.
    {
        ResetStubs();
        SWFAnimManager mgr;
        CHECK(mgr.m_banks.empty());
        SWFAnim anim(menu, nullptr);
        CHECK(mgr.CloneAnim(anim) == nullptr);
    }

    // DropAnim hides the anim (SetVisible false) and marks it free; a null anim is ignored.
    {
        ResetStubs();
        SWFAnimManager mgr;
        SWFAnim* anim = new SWFAnim(menu, nullptr);
        anim->m_free = false;
        mgr.DropAnim(anim);
        CHECK(anim->m_free);
        CHECK(g_visibility.size() == 1);
        CHECK(g_visibility.size() == 1 && g_visibility[0].first == anim && g_visibility[0].second == false);
        mgr.DropAnim(nullptr);
        CHECK(g_visibility.size() == 1);
        delete anim;
    }

    // FlushBank deletes every anim of the bank and empties it (the storage stays). push_back_unique ignores a repeat.
    {
        ResetStubs();
        SWFAnimManager mgr;
        VectorSet<SWFAnim*> bank = {};
        SWFAnim* a1 = new SWFAnim(menu, nullptr);
        SWFAnim* a2 = new SWFAnim(menu, nullptr);
        bank.push_back_unique(a1);
        bank.push_back_unique(a2);
        bank.push_back_unique(a1);
        CHECK(BankSize(bank) == 2);
        mgr.FlushBank(bank);
        CHECK(g_deleted.size() == 2);
        CHECK(BankSize(bank) == 0);
        CHECK(bank.m_start != nullptr);  // storage kept, as in the original
        std::allocator<SWFAnim*>().deallocate(bank.m_start, static_cast<std::size_t>(bank.m_endOfStorage - bank.m_start));
    }

    // FlushAll empties every bank in key order and leaves the map empty.
    {
        ResetStubs();
        SWFAnimManager mgr;
        SWFAnim* b1 = new SWFAnim(menu, nullptr);
        SWFAnim* a1 = new SWFAnim(menu, nullptr);
        SWFAnim* a2 = new SWFAnim(menu, nullptr);
        mgr.m_banks["b"].push_back_unique(b1);
        mgr.m_banks["a"].push_back_unique(a1);
        mgr.m_banks["a"].push_back_unique(a2);
        mgr.FlushAll();
        CHECK(g_deleted.size() == 3);
        CHECK(g_deleted.size() == 3 && g_deleted[0] == a1 && g_deleted[1] == a2 && g_deleted[2] == b1);
        CHECK(mgr.m_banks.empty());
    }

    // FlushAll also releases each bank's pointer array, as the original's map erase does with the node. The arrays are
    // live before the flush (this checks the tracking) and not live after it.
    {
        ResetStubs();
        SWFAnimManager mgr;
        SWFAnim* a1 = new SWFAnim(menu, nullptr);
        SWFAnim* b1 = new SWFAnim(menu, nullptr);
        mgr.m_banks["a"].push_back_unique(a1);
        mgr.m_banks["b"].push_back_unique(b1);
        SWFAnim** arrayA = mgr.m_banks["a"].m_start;
        SWFAnim** arrayB = mgr.m_banks["b"].m_start;
        CHECK(IsLive(arrayA));
        CHECK(IsLive(arrayB));
        mgr.FlushAll();
        CHECK(g_deleted.size() == 2);
        CHECK(!IsLive(arrayA));
        CHECK(!IsLive(arrayB));
        CHECK(mgr.m_banks.empty());
    }

    // The destructor (D1 through the deleting destructor) frees what the manager still holds, and the storage of its banks.
    {
        ResetStubs();
        SWFAnimManager* mgr = new SWFAnimManager();
        SWFAnim* held = new SWFAnim(menu, nullptr);
        mgr->m_banks["held"].push_back_unique(held);
        SWFAnim** heldArray = mgr->m_banks["held"].m_start;
        CHECK(IsLive(heldArray));
        delete mgr;
        CHECK(g_deleted.size() == 1 && g_deleted[0] == held);
        CHECK(!IsLive(heldArray));
    }

    // GrabAnim over a bank that already exists: the first free anim is handed out and marked in use.
    {
        ResetStubs();
        SWFAnimManager mgr;
        SWFAnim* busy = new SWFAnim(menu, nullptr);
        busy->m_free = false;
        SWFAnim* freeAnim = new SWFAnim(menu, nullptr);
        mgr.m_banks["hud"].push_back_unique(busy);
        mgr.m_banks["hud"].push_back_unique(freeAnim);
        SWFAnim* got = mgr.GrabAnim("hud", menu, 1);
        CHECK(got == freeAnim);
        CHECK(freeAnim->m_free == false);
        CHECK(g_lastRefreshName == nullptr);  // the bank existed: no movie clip was looked up
        // Every anim is now in use. A count of zero gives null without extending the bank.
        SWFAnim* none = mgr.GrabAnim("hud", menu, 0);
        CHECK(none == nullptr);
        CHECK(BankSize(mgr.m_banks["hud"]) == 2);
        // mgr owns both anims: its destructor deletes them (checked by the count of destructions).
        mgr.FlushAll();
        CHECK(g_deleted.size() == 2);
    }

    // GrabAnim for a name with no bank and no movie clip: nothing is created, the lookup is made, null comes back.
    // The empty bank entry is left in the map, as operator[] leaves it in the original.
    {
        ResetStubs();
        SWFAnimManager mgr;
        g_clipExists = false;
        SWFAnim* got = mgr.GrabAnim("cannon", menu, 1);
        CHECK(got == nullptr);
        CHECK(g_lastRefreshName != nullptr && std::string(g_lastRefreshName) == "cannon");
        CHECK(g_lastRefreshMenu == menu);
        CHECK(mgr.m_banks.size() == 1);
        CHECK(BankSize(mgr.m_banks["cannon"]) == 0);
    }

    // ExtendBank with a count of zero or less does nothing; a missing clip creates no bank.
    {
        ResetStubs();
        SWFAnimManager mgr;
        CHECK(mgr.ExtendBank("none", menu, 0) == nullptr);
        CHECK(mgr.ExtendBank("none", menu, -3) == nullptr);
        CHECK(mgr.m_banks.empty());
        CHECK(mgr.ExtendBank("nope", menu, 2) == nullptr);
        CHECK(mgr.m_banks.empty());
    }

    // ExtendBank when the bank already holds at least count anims: nothing is added.
    {
        ResetStubs();
        SWFAnimManager mgr;
        SWFAnim* a1 = new SWFAnim(menu, nullptr);
        SWFAnim* a2 = new SWFAnim(menu, nullptr);
        mgr.m_banks["row"].push_back_unique(a1);
        mgr.m_banks["row"].push_back_unique(a2);
        CHECK(mgr.ExtendBank("row", menu, 2) == nullptr);
        CHECK(BankSize(mgr.m_banks["row"]) == 2);
        CHECK(g_lastRefreshName == nullptr);
        mgr.FlushAll();
        CHECK(g_deleted.size() == 2);
    }

    // A missing bank with a movie clip: the first anim is built from the clip, handed out, and the bank holds it.
    {
        ResetStubs();
        SWFAnimManager mgr;
        g_clipExists = true;
        SWFAnim* got = mgr.GrabAnim("torch", menu, 1);
        CHECK(got != nullptr);
        CHECK(got != nullptr && got->m_free == false);
        CHECK(g_lastRefreshName != nullptr && std::string(g_lastRefreshName) == "torch");
        CHECK(BankSize(mgr.m_banks["torch"]) == 1);
        mgr.FlushAll();
        CHECK(g_deleted.size() == 1);
    }

    // The one-argument GrabAnim takes the HUD root of MenuManager and a count of one.
    {
        ResetStubs();
        SWFAnimManager mgr;
        g_clipExists = true;
        g_hudRoot = menu;
        SWFAnim* got = mgr.GrabAnim("hudclip");
        CHECK(got != nullptr);
        CHECK(g_lastRefreshMenu == menu);
        mgr.FlushAll();
    }

    if (g_failures == 0) {
        std::printf("SWFAnimManager tests passed\n");
        return 0;
    }
    std::printf("SWFAnimManager tests: %d failure(s)\n", g_failures);
    return 1;
}
