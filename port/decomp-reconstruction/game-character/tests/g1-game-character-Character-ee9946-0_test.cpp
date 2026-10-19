// Test for batch g1-game-character-Character-ee9946-0.
//
// No Character is constructed (its constructor belongs to another batch). The storage is zero-filled and
// only non-virtual qualified calls are made, so no vtable is read. Character::s_cachedCharOIDs is defined
// here because the batch that owns that static is not linked into this test.
// Not covered: IsValidatingCameraLimits (a virtual call to IsPlayer through the vptr) and the partial
// getters (GetFocusObject, the IsUpdating* flag predicates, IsValidatingFloorPosition, GetFXScale,
// GetFXScaleValue, GetLoot), whose placeholder bodies are not behaviour.

#include <cstdio>
#include <cstring>
#include <map>

#include "dh2/Character.hpp"

std::map<int, unsigned int> Character::s_cachedCharOIDs;

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

Character* Storage() {
    return reinterpret_cast<Character*>(g_storage);
}

}  // namespace

int main() {
    std::memset(g_storage, 0, sizeof g_storage);
    Character* ch = Storage();

    // Constant predicates and getters.
    EXPECT(ch->Character::IsCharacter() == true);
    EXPECT(ch->Character::IsAnimated() == true);
    EXPECT(ch->Character::IsObstacle() == true);
    EXPECT(ch->Character::GetObstacleRadius() == 50.0f);     // 0x42480000
    EXPECT(ch->Character::GetObstacleStrength() == 20.0f);   // 0x41A00000
    EXPECT(std::strcmp(ch->Character::getUDTypeName(), "Character") == 0);

    // IsDead reads the byte at +0x1449 (m_dead).
    EXPECT(ch->Character::IsDead() == false);
    ch->m_dead = 1;
    EXPECT(ch->Character::IsDead() == true);
    ch->m_dead = 0;
    EXPECT(ch->Character::IsDead() == false);

    // HasCharOIDInCache: find semantics. Absent keys give 0. A present key gives its stored value, even 0.
    EXPECT(Character::HasCharOIDInCache(7) == 0);  // empty map
    Character::s_cachedCharOIDs[7] = 3u;
    Character::s_cachedCharOIDs[-2] = 1u;
    Character::s_cachedCharOIDs[100] = 0u;
    EXPECT(Character::HasCharOIDInCache(7) == 3);
    EXPECT(Character::HasCharOIDInCache(-2) == 1);
    EXPECT(Character::HasCharOIDInCache(100) == 0);
    EXPECT(Character::HasCharOIDInCache(8) == 0);      // between two keys
    EXPECT(Character::HasCharOIDInCache(-3) == 0);     // below the smallest key
    EXPECT(Character::HasCharOIDInCache(1000) == 0);   // above the largest key
    Character::s_cachedCharOIDs.clear();
    EXPECT(Character::HasCharOIDInCache(7) == 0);

    if (g_failures == 0) {
        std::printf("g1-game-character-Character-ee9946-0: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-character-Character-ee9946-0: %d failure(s)\n", g_failures);
    return 1;
}
