// Test for batch g1-game-world-SlotContainer-53addb-0.
//
// The bodies need the engine (Application::GetDt, the device's scene manager, ItemInstance::GetColor and the base
// constructors), so nothing from the .cpp is linked here. This test checks the rules those bodies apply to their inputs:
//   - Update: the state gate (no step in ACTIVATE or OPENED), the timer that loses GetDt each tick, the index that moves on
//     when the timer runs out and wraps after the last entry, and the timer reloaded from the new entry's duration.
//   - GetLootFixedNumPowers: -1 for an empty list, otherwise the numPowers of the current entry.
//   - InitPost colour: bytes 2, 1 and 0 of the packed colour, each divided by 255.
//   - InitPost parse: "<numPowers><sep><duration><sep>" entries, read until the end of the text.
// The helpers below repeat the loops of the bodies in plain form. They use the SlotInfo type and the State enumerators of
// dh2/SlotContainer.hpp, so the layout that the rules rely on is the header's.

#include <cmath>
#include <cstddef>
#include <cstdio>
#include <sstream>
#include <string>
#include <vector>

#include "dh2/SlotContainer.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

using Entry = SlotContainer::SlotInfo;

// Update: the state gate of the original, unsigned (state - 3) > 1, which is the same as "not ACTIVATE and not OPENED".
bool Stepping(int state) {
    return static_cast<unsigned int>(state - 3) > 1u;
}

// Update after the gate (0x3a20d8): one tick of dt milliseconds on the timer and the index.
void Tick(int& timer, int& index, const std::vector<Entry>& entries, int dt) {
    if (entries.empty()) {
        return;
    }
    timer -= dt;
    if (timer > 0) {
        return;
    }
    ++index;
    if (index >= static_cast<int>(entries.size())) {
        index = 0;
    }
    timer = entries[static_cast<std::size_t>(index)].m_duration;
}

// GetLootFixedNumPowers (0x3a2098): -1 for an empty list, otherwise the entry's numPowers.
int LootPowers(const std::vector<Entry>& entries, int index) {
    if (entries.empty() || index < 0) {
        return -1;
    }
    return entries[static_cast<std::size_t>(index)].m_numPowers;
}

// One colour channel of InitPost: byte shift/8 of the packed GetColor value, divided by 255.
float Channel(int packed, unsigned int shift) {
    const unsigned int byte = (static_cast<unsigned int>(packed) >> shift) & 0xFFu;
    return static_cast<float>(static_cast<double>(byte) / 255.0);
}

// The entry loop of InitPost (0x3a2640). Colours are left at zero here.
std::vector<Entry> ParseSlots(const std::string& text) {
    std::vector<Entry> out;
    if (text.empty()) {  // the original only parses a non-empty "slots" text
        return out;
    }
    std::istringstream in(text);
    int numPowers = -1;
    int duration = 0;
    char separator = 0;
    while (!in.eof()) {
        in >> numPowers;
        in >> separator;
        in >> duration;
        if (!in.eof()) {
            in >> separator;
        }
        Entry entry{};
        entry.m_numPowers = numPowers;
        entry.m_duration = duration;
        out.push_back(entry);
    }
    return out;
}

bool NearlyEqual(float a, float b) {
    return std::fabs(a - b) < 1e-6f;
}

}  // namespace

int main() {
    // The state gate: ACTIVATE (3) and OPENED (4) are the only states that do not step.
    EXPECT(static_cast<int>(Container::STATE_ACTIVATE) == 3);
    EXPECT(static_cast<int>(Container::STATE_OPENED) == 4);
    for (int state = -1; state <= 6; ++state) {
        const bool expected = !(state == 3 || state == 4);
        EXPECT(Stepping(state) == expected);
    }

    // Update: the timer and index walk through three entries of durations 100, 200 and 300, then wrap.
    {
        const std::vector<Entry> entries = {Entry{1, 100, {0, 0, 0}}, Entry{2, 200, {0, 0, 0}}, Entry{3, 300, {0, 0, 0}}};
        int timer = -1;  // the constructor's value
        int index = -1;
        Tick(timer, index, entries, 100);  // -101: the first entry starts
        EXPECT(index == 0 && timer == 100);
        Tick(timer, index, entries, 50);  // 50: still the first entry
        EXPECT(index == 0 && timer == 50);
        Tick(timer, index, entries, 50);  // 0 is not positive: the second entry starts
        EXPECT(index == 1 && timer == 200);
        Tick(timer, index, entries, 199);  // 1: still the second entry
        EXPECT(index == 1 && timer == 1);
        Tick(timer, index, entries, 1);  // 0: the third entry starts
        EXPECT(index == 2 && timer == 300);
        Tick(timer, index, entries, 300);  // 0: the index wraps to the first entry
        EXPECT(index == 0 && timer == 100);
    }

    // Update on an empty list changes nothing.
    {
        const std::vector<Entry> none;
        int timer = -1;
        int index = -1;
        Tick(timer, index, none, 1000);
        EXPECT(timer == -1 && index == -1);
    }

    // GetLootFixedNumPowers.
    {
        const std::vector<Entry> entries = {Entry{4, 10, {0, 0, 0}}, Entry{2, 20, {0, 0, 0}}};
        EXPECT(LootPowers(std::vector<Entry>{}, 0) == -1);
        EXPECT(LootPowers(entries, 0) == 4);
        EXPECT(LootPowers(entries, 1) == 2);
        EXPECT(LootPowers(entries, -1) == -1);  // before the first Update
    }

    // Colour channels: bytes 2, 1 and 0 of the packed value.
    {
        const int packed = 0x00FF8001;
        EXPECT(NearlyEqual(Channel(packed, 16), 1.0f));
        EXPECT(NearlyEqual(Channel(packed, 8), 128.0f / 255.0f));
        EXPECT(NearlyEqual(Channel(packed, 0), 1.0f / 255.0f));
        EXPECT(Channel(0, 16) == 0.0f && Channel(0, 8) == 0.0f && Channel(0, 0) == 0.0f);
        EXPECT(NearlyEqual(Channel(-1, 16), 1.0f));  // all bits set: the bytes are taken unsigned
    }

    // The entry parse. A single entry, two entries, and an empty text (which the original does not parse).
    {
        EXPECT(ParseSlots("").empty());

        const std::vector<Entry> one = ParseSlots("7,5");
        EXPECT(one.size() == 1);
        if (one.size() == 1) {
            EXPECT(one[0].m_numPowers == 7 && one[0].m_duration == 5);
        }

        const std::vector<Entry> two = ParseSlots("3,10,2,20");
        EXPECT(two.size() == 2);
        if (two.size() == 2) {
            EXPECT(two[0].m_numPowers == 3 && two[0].m_duration == 10);
            EXPECT(two[1].m_numPowers == 2 && two[1].m_duration == 20);
        }
    }

    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("SlotContainer rules: all checks passed\n");
    return 0;
}
