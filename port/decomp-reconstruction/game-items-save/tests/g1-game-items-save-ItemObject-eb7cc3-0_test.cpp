// Test for batch g1-game-items-save-ItemObject-eb7cc3-0.
//
// The member functions need an ItemObject, and its constructor is not in this batch, so they are not run here. What runs
// is the static part: _OnItemCollected (projectile counter), _GetCurrentPlayerRRId and _GetNextPlayerRRId (round robin
// over the player count), with the counter and the round-robin storage. The engine pieces the batch source references
// (GameObject, ItemInventory, ItemInstance, the tooltip anim, SWFAnim, gameswf values, AnimController, CharStateMachine
// and the ItemObjectEngine helpers from the companion file) are stubbed here, and only the stubs the round robin uses
// record anything.

#include <cstddef>
#include <cstdint>

#include "dh2/AnimController.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/DebugCachedCharacter.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/ItemObject.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/SWFAnim.hpp"
#include "dh2/SWFAnimToolTip.hpp"
#include "gameswf/gameswf_value.h"
#include "pydata-accessors/w7_arrays_00.hpp"

// ---- Stubs for the engine pieces the batch source references ----

namespace {
int g_roundRobinCount = 1;  // what ItemObjectEngine::RoundRobinCount returns
}  // namespace

// The assert level the batch source reads (core-platform/memory.hpp declares it).
int gAssertLevel = 0;

// The tu_string members the header's inline code calls. They are defined in vendor-gameswf/src, which this test does not link.
void tu_string::resize(int) {}
void tu_string::operator+=(const char*) {}
void tu_string::operator+=(const tu_string&) {}
bool tu_string::operator==(const tu_string&) const { return false; }
int tu_string::utf8_char_count(const char*, int) { return 0; }

namespace ItemObjectEngine {
int FrameDt() { return 0; }
int RoundRobinCount() { return g_roundRobinCount; }
int ReceiverPlayerNumber(const Character*) { return 0; }
bool IsLocalPlayer(const Character*) { return false; }
void DropGlowFX(AnimatedFX*& fx) { fx = nullptr; }
}  // namespace ItemObjectEngine

std::uint8_t* Arrays::ItemAudioVisualTable::members = nullptr;
std::uint32_t Arrays::ItemAudioVisualTable::size = 0;

void GameObject::UpdateAbsoluteAABB() {}
void GameObject::Stop() {}
void GameObject::Update() {}
bool GameObject::IsAtDestination() const { return false; }

ItemInstance* ItemInventory::GetItem(unsigned int) { return nullptr; }
ItemInstance* ItemInventory::GetItem(unsigned int) const { return nullptr; }
int ItemInventory::GetNumItems() const { return 0; }
int ItemInventory::TransferItemTo(unsigned int, ItemInventory&, bool, bool) { return 0; }

void ItemInstance::UpdateLocalization() {}
int ItemInstance::GetColor() const { return 0; }
const Structs::Item* ItemInstance::GetItem() const { return nullptr; }

SWFAnimToolTip::SWFAnimToolTip() {}
bool SWFAnimToolTip::IsVisible() const { return false; }
void SWFAnimToolTip::FadeIn() {}
void SWFAnimToolTip::FadeOut(int) {}
void SWFAnimToolTip::Update() {}

void SWFAnim::BindText(const char*) {}
void SWFAnim::SetText(const char*) {}
void SWFAnim::SetTextColor(unsigned int, unsigned int) {}
void SWFAnim::SetPosition3D(const Point3D<float>&) {}

gameswf::character* DebugCachedCharacter::GetChar() { return nullptr; }
int RenderFX::InvokeASCallback(gameswf::character*, const char*, const gameswf::as_value*, int) { return 0; }

namespace gameswf {
void as_value::set_double(double) {}
void as_value::drop_refs() {}
}  // namespace gameswf

bool CharStateMachine::SM_IsMoving(bool) const { return false; }
bool AnimController::PlayClip(unsigned int, bool, int, unsigned int) { return false; }

// ---- Checks ----

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                                 \
    do {                                                                             \
        if (!(cond)) {                                                               \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);     \
            ++g_failures;                                                            \
        }                                                                            \
    } while (0)

void TestProjectileCounter() {
    ItemObject::s_numProjectiles = 3;
    ItemObject::_OnItemCollected(nullptr, nullptr);
    EXPECT(ItemObject::s_numProjectiles == 2);
    ItemObject::_OnItemCollected(nullptr, nullptr);
    ItemObject::_OnItemCollected(nullptr, nullptr);
    EXPECT(ItemObject::s_numProjectiles == 0);
    ItemObject::_OnItemCollected(nullptr, nullptr);
    EXPECT(ItemObject::s_numProjectiles == -1);  // the original decrements without a floor
}

void TestRoundRobin() {
    // Five players: the id returned is the current one, and the stored id advances modulo the count.
    g_roundRobinCount = 5;
    ItemObject::s_playerRRId = 4;
    EXPECT(ItemObject::_GetCurrentPlayerRRId() == 4);
    EXPECT(ItemObject::_GetNextPlayerRRId() == 4);
    EXPECT(ItemObject::s_playerRRId == 0);  // (4 + 1) % 5
    EXPECT(ItemObject::_GetCurrentPlayerRRId() == 0);
    EXPECT(ItemObject::_GetNextPlayerRRId() == 0);
    EXPECT(ItemObject::s_playerRRId == 1);
    EXPECT(ItemObject::_GetNextPlayerRRId() == 1);
    EXPECT(ItemObject::s_playerRRId == 2);

    // One player: the id stays at zero.
    g_roundRobinCount = 1;
    ItemObject::s_playerRRId = 0;
    EXPECT(ItemObject::_GetNextPlayerRRId() == 0);
    EXPECT(ItemObject::s_playerRRId == 0);
    EXPECT(ItemObject::_GetNextPlayerRRId() == 0);
    EXPECT(ItemObject::s_playerRRId == 0);

    // Four players, the sequence cycles through all of them.
    g_roundRobinCount = 4;
    ItemObject::s_playerRRId = 0;
    int seen[4] = {0, 0, 0, 0};
    for (int i = 0; i < 8; ++i) {
        ++seen[ItemObject::_GetNextPlayerRRId()];
    }
    EXPECT(seen[0] == 2 && seen[1] == 2 && seen[2] == 2 && seen[3] == 2);
}

}  // namespace

int main() {
    TestProjectileCounter();
    TestRoundRobin();
    if (g_failures == 0) {
        std::printf("ItemObject batch 0 test: all checks passed\n");
        return 0;
    }
    std::fprintf(stderr, "ItemObject batch 0 test: %d failure(s)\n", g_failures);
    return 1;
}
