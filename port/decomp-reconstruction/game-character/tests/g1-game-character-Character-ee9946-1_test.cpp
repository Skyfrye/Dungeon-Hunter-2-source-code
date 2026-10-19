// Test for batch g1-game-character-Character-ee9946-1.
//
// No Character is constructed. Its storage is zero-filled and only non-virtual members are called. The getters reach
// the table-id words through CharProperties::PROPS_Get and HasLoot through GetLoot. Both are defined in other batches
// (CharProperties-53ed14-0 and Character-ee9946-0), which this test does not link, so the test defines stubs:
// PROPS_Get returns the four raw words the test sets (ids 0..3) and records every id it is asked for and whether
// useTemp was set; GetLoot returns the value the test sets.
//
// The tables are byte blocks holding host Structs::AIProps, Structs::AIFactions and Structs::CharAnim elements, sized
// with sizeof of the host element. The element classes have virtual functions whose bodies are not linked here, so
// the elements are read and written through typed pointers and never constructed or destroyed.
//
// GetCharModelId returns the word when it indexes Arrays::ModelDict (below its size), otherwise -1. The test sets the size
// of the dictionary (kModelRows) itself.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <vector>

#include "dh2/Character.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

// Table storage is owned by pydata-accessors, which is not linked into this test.
std::uint8_t* Arrays::AITable::members = nullptr;
std::uint32_t Arrays::AITable::size = 0;
std::uint8_t* Arrays::AIFactionTable::members = nullptr;
std::uint32_t Arrays::AIFactionTable::size = 0;
std::uint8_t* Arrays::CharAnimTable::members = nullptr;
std::uint32_t Arrays::CharAnimTable::size = 0;

namespace {

// Raw property words for the stub PROPS_Get: ids 0..3 are the AI faction, AI, animation table and model words.
std::int32_t g_raw[4] = {0, 0, 0, 0};
int g_asked[4] = {0, 0, 0, 0};
bool g_askedTemp = false;
int g_loot = -1;

}  // namespace

// Stub for CharProperties::PROPS_Get (batch CharProperties-53ed14-0 owns the real one).
int CharProperties::PROPS_Get(int propId, bool useTemp) const {
    if (useTemp) {
        g_askedTemp = true;
    }
    if (propId < 0 || propId > 3) {
        return -1;
    }
    ++g_asked[propId];
    return g_raw[propId];
}

// Stub for Character::GetLoot (batch Character-ee9946-0 owns the real one).
int Character::GetLoot() const {
    return g_loot;
}

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

alignas(Character) unsigned char g_storage[sizeof(Character)];

Character* Obj() {
    return reinterpret_cast<Character*>(g_storage);
}

constexpr std::size_t kAIRows = 9;      // AI rows 0..8; the fallback row is 8
constexpr std::size_t kFactions = 12;   // AI faction rows; the fallback id is 10
constexpr std::size_t kAnimRows = 40;   // animation table rows; the fallback id is 17
constexpr std::uint32_t kModelRows = 200;  // Arrays::ModelDict::size for the test; the fallback is -1

void SetRaw(std::int32_t faction, std::int32_t ai, std::int32_t anim, std::int32_t model) {
    g_raw[0] = faction;
    g_raw[1] = ai;
    g_raw[2] = anim;
    g_raw[3] = model;
}

void ResetAsked() {
    for (int& n : g_asked) {
        n = 0;
    }
    g_askedTemp = false;
}

Structs::AIProps* AIRowAt(std::vector<std::uint8_t>& table, std::size_t index) {
    return reinterpret_cast<Structs::AIProps*>(table.data()) + index;
}

// Each id getter asks PROPS_Get for its own word, from m_props (useTemp false), and returns the word when it is in range.
void TestIdWords() {
    ResetAsked();
    Arrays::ModelDict::size = kModelRows;
    SetRaw(3, 5, 7, 4);
    EXPECT(Obj()->GetCharAIFactionId() == 3);
    EXPECT(Obj()->GetCharAIId() == 5);
    EXPECT(Obj()->GetCharAnimTableId() == 7);
    EXPECT(Obj()->GetCharModelId() == 4);
    EXPECT(g_asked[0] == 1 && g_asked[1] == 1 && g_asked[2] == 1 && g_asked[3] == 1);
    EXPECT(!g_askedTemp);
}

// The fallbacks: a negative word, and a word at or past the table size (the AI table has 9 rows, the faction table 12,
// the animation table 40).
void TestIdFallbacks() {
    SetRaw(0, -1, 0, 0);
    EXPECT(Obj()->GetCharAIId() == 8);
    SetRaw(0, static_cast<std::int32_t>(kAIRows), 0, 0);
    EXPECT(Obj()->GetCharAIId() == 8);
    SetRaw(0, 0x7fffffff, 0, 0);
    EXPECT(Obj()->GetCharAIId() == 8);
    SetRaw(0, 0, 0, 0);
    EXPECT(Obj()->GetCharAIId() == 0);

    SetRaw(-1, 0, 0, 0);
    EXPECT(Obj()->GetCharAIFactionId() == 10);
    SetRaw(static_cast<std::int32_t>(kFactions), 0, 0, 0);
    EXPECT(Obj()->GetCharAIFactionId() == 10);
    SetRaw(static_cast<std::int32_t>(kFactions - 1), 0, 0, 0);
    EXPECT(Obj()->GetCharAIFactionId() == 11);

    SetRaw(0, 0, -1, 0);
    EXPECT(Obj()->GetCharAnimTableId() == 17);
    SetRaw(0, 0, static_cast<std::int32_t>(kAnimRows), 0);
    EXPECT(Obj()->GetCharAnimTableId() == 17);
    SetRaw(0, 0, static_cast<std::int32_t>(kAnimRows - 1), 0);
    EXPECT(Obj()->GetCharAnimTableId() == 39);

    // GetCharModelId: a negative word, or a word at or past the dictionary size, gives -1. Any other word passes through.
    Arrays::ModelDict::size = kModelRows;
    SetRaw(0, 0, 0, -1);
    EXPECT(Obj()->GetCharModelId() == -1);
    SetRaw(0, 0, 0, 0);
    EXPECT(Obj()->GetCharModelId() == 0);
    SetRaw(0, 0, 0, 123);
    EXPECT(Obj()->GetCharModelId() == 123);
    SetRaw(0, 0, 0, static_cast<std::int32_t>(kModelRows - 1));
    EXPECT(Obj()->GetCharModelId() == static_cast<int>(kModelRows - 1));
    SetRaw(0, 0, 0, static_cast<std::int32_t>(kModelRows));
    EXPECT(Obj()->GetCharModelId() == -1);
}

// The AI row is the one the id selects: row 3 for word 3, the fallback row 8 for an out-of-range word.
void TestRowWalk(std::vector<std::uint8_t>& ai) {
    AIRowAt(ai, 0)->Type = 4;
    AIRowAt(ai, 3)->Type = 2;
    AIRowAt(ai, 8)->Type = 6;

    SetRaw(0, 3, 0, 0);
    EXPECT(Obj()->GetCharAI() == reinterpret_cast<const Structs::AIProps*>(ai.data()) + 3);
    EXPECT(Obj()->GetCharType() == 2);
    EXPECT(Obj()->IsFollower());
    EXPECT(!Obj()->IsMonster());

    SetRaw(0, 99, 0, 0);
    EXPECT(Obj()->GetCharAI() == reinterpret_cast<const Structs::AIProps*>(ai.data()) + 8);
    EXPECT(Obj()->GetCharType() == 6);
    EXPECT(Obj()->IsNPC());

    for (std::size_t r = 0; r < kAIRows; ++r) {
        AIRowAt(ai, r)->Type = 0;
    }
}

// The type predicates on row 3 for every type value the row can hold.
void TestTypePredicates(std::vector<std::uint8_t>& ai) {
    SetRaw(0, 3, 0, 0);
    for (int type = -1; type <= 10; ++type) {
        AIRowAt(ai, 3)->Type = type;
        EXPECT(Obj()->GetCharType() == type);
        EXPECT(Obj()->IsMonster() == (type == 4));
        EXPECT(Obj()->IsFollower() == (type == 2));
        EXPECT(Obj()->IsFaerie() == (type == 3));
        EXPECT(Obj()->IsSummoned() == (type == 5));
        EXPECT(Obj()->IsMerchant() == (type == 7));
        EXPECT(Obj()->IsInvisibleMan() == (type == 9));
        EXPECT(Obj()->IsCleaner() == (type == 8));
        // IsNPC: type 6, or a merchant, or a cleaner.
        EXPECT(Obj()->IsNPC() == (type == 6 || type == 7 || type == 8));
    }
    AIRowAt(ai, 3)->Type = 0;
}

// The three flag predicates on the flag word of row 3: bits 1, 2 and 3 of m_w5.
void TestFlagBits(std::vector<std::uint8_t>& ai) {
    SetRaw(0, 3, 0, 0);
    for (int flags = 0; flags < 16; ++flags) {
        AIRowAt(ai, 3)->Flags = flags;
        EXPECT(Obj()->IsMiniBoss() == (((flags >> 1) & 1) != 0));
        EXPECT(Obj()->IsBoss() == (((flags >> 2) & 1) != 0));
        EXPECT(Obj()->IsCharSitting() == (((flags >> 3) & 1) != 0));
    }
    // Bit 0 is none of the three flags.
    AIRowAt(ai, 3)->Flags = 1;
    EXPECT(!Obj()->IsMiniBoss());
    EXPECT(!Obj()->IsBoss());
    EXPECT(!Obj()->IsCharSitting());
    // All bits set: all three.
    AIRowAt(ai, 3)->Flags = -1;
    EXPECT(Obj()->IsMiniBoss());
    EXPECT(Obj()->IsBoss());
    EXPECT(Obj()->IsCharSitting());
    // Only the sign bit: none of the three (the original shifts logically).
    AIRowAt(ai, 3)->Flags = static_cast<std::int32_t>(0x80000000u);
    EXPECT(!Obj()->IsMiniBoss());
    EXPECT(!Obj()->IsBoss());
    EXPECT(!Obj()->IsCharSitting());
    AIRowAt(ai, 3)->Flags = 0;
}

// The faction and animation rows: the typed pointer is the table base plus the id, one host element per id.
void TestTables(std::vector<std::uint8_t>& faction, std::vector<std::uint8_t>& anim) {
    const std::uint8_t* factionBase = faction.data();
    const std::uint8_t* animBase = anim.data();

    SetRaw(5, 0, 7, 0);
    EXPECT(Obj()->GetCharAIFaction() == reinterpret_cast<const Structs::AIFactions*>(faction.data()) + 5);
    EXPECT(reinterpret_cast<const std::uint8_t*>(Obj()->GetCharAIFaction()) - factionBase ==
           static_cast<std::ptrdiff_t>(5 * sizeof(Structs::AIFactions)));
    EXPECT(Obj()->GetCharAnimTable() == reinterpret_cast<const Structs::CharAnim*>(anim.data()) + 7);
    EXPECT(reinterpret_cast<const std::uint8_t*>(Obj()->GetCharAnimTable()) - animBase ==
           static_cast<std::ptrdiff_t>(7 * sizeof(Structs::CharAnim)));

    // Out-of-range ids: the faction fallback 10, the animation fallback 17.
    SetRaw(-1, 0, -1, 0);
    EXPECT(Obj()->GetCharAIFaction() == reinterpret_cast<const Structs::AIFactions*>(faction.data()) + 10);
    EXPECT(Obj()->GetCharAnimTable() == reinterpret_cast<const Structs::CharAnim*>(anim.data()) + 17);
    EXPECT(reinterpret_cast<const std::uint8_t*>(Obj()->GetCharAnimTable()) - animBase ==
           static_cast<std::ptrdiff_t>(17 * sizeof(Structs::CharAnim)));
}

void TestHasLoot() {
    g_loot = -1;
    EXPECT(!Obj()->HasLoot());
    g_loot = 0;
    EXPECT(Obj()->HasLoot());
    g_loot = 5;
    EXPECT(Obj()->HasLoot());
    g_loot = -1;
}

}  // namespace

int main() {
    std::vector<std::uint8_t> ai(kAIRows * sizeof(Structs::AIProps), 0);
    std::vector<std::uint8_t> faction(kFactions * sizeof(Structs::AIFactions), 0);
    std::vector<std::uint8_t> anim(kAnimRows * sizeof(Structs::CharAnim), 0);

    Arrays::AITable::members = ai.data();
    Arrays::AITable::size = static_cast<std::uint32_t>(kAIRows);
    Arrays::AIFactionTable::members = faction.data();
    Arrays::AIFactionTable::size = static_cast<std::uint32_t>(kFactions);
    Arrays::CharAnimTable::members = anim.data();
    Arrays::CharAnimTable::size = static_cast<std::uint32_t>(kAnimRows);

    TestIdWords();
    TestIdFallbacks();
    TestRowWalk(ai);
    TestTypePredicates(ai);
    TestFlagBits(ai);
    TestTables(faction, anim);
    TestHasLoot();

    Arrays::AITable::members = nullptr;
    Arrays::AITable::size = 0;
    Arrays::AIFactionTable::members = nullptr;
    Arrays::AIFactionTable::size = 0;
    Arrays::CharAnimTable::members = nullptr;
    Arrays::CharAnimTable::size = 0;

    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("all checks passed\n");
    return 0;
}
