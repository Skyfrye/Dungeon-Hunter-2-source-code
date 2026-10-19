// PriorityBankManager::AddEmitter: admission, the three eviction behaviours and the victim's
// bank flag and stop.
#include <cstdio>

#include "vox-audio/vox/emitter_obj.hpp"
#include "vox-audio/vox/priority_bank.hpp"

namespace {
int g_failures = 0;
#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__,   \
                         __LINE__, #cond);                                \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)
}  // namespace

int main() {
    // Behaviour 1, two slots, minimum priority 0.
    {
        vox::PriorityBankManager m(1);
        CHECK(m.SetPriorityBank(0, 0, 2, 1));
        vox::EmitterObj a, b, d;
        a.priority_ = 3;
        b.priority_ = 5;
        d.priority_ = 2;

        CHECK(!m.AddEmitter(0, nullptr));
        CHECK(!m.AddEmitter(1, &a));    // bank index out of range
        CHECK(!m.AddEmitter(-1, &a));
        CHECK(m.AddEmitter(0, &a));     // room
        CHECK(a.in_bank_ == false);     // the bank does not set the flag on the new entry
        CHECK(m.AddEmitter(0, &b));     // room

        // Full bank: priority 4 evicts the lowest entry below 4 (a, priority 3).
        vox::EmitterObj fresh;
        fresh.priority_ = 4;
        CHECK(m.AddEmitter(0, &fresh));
        CHECK(a.state_set_ == 3);       // victim stopped with a zero fade
        CHECK(a.in_bank_ == false);

        // Full bank, nothing below priority 2: refused.
        CHECK(!m.AddEmitter(0, &d));
    }

    // Behaviour 0: the first entry is evicted to make room.
    {
        vox::PriorityBankManager m(1);
        CHECK(m.SetPriorityBank(0, 0, 1, 0));
        vox::EmitterObj first, second;
        first.priority_ = 1;
        second.priority_ = 1;
        CHECK(m.AddEmitter(0, &first));
        CHECK(m.AddEmitter(0, &second));
        CHECK(first.state_set_ == 3);
        CHECK(first.in_bank_ == false);
    }

    // Behaviour 3 appends while the admission gate has room, and an emitter already in a bank
    // is refused. The gate refuses a full bank before the listing's append is reached.
    {
        vox::PriorityBankManager m(1);
        CHECK(m.SetPriorityBank(0, 0, 2, 3));
        vox::EmitterObj x, y, z;
        x.priority_ = 2;
        y.priority_ = 2;
        z.priority_ = 2;
        CHECK(m.AddEmitter(0, &x));
        CHECK(m.AddEmitter(0, &y));
        CHECK(!m.AddEmitter(0, &z));
        x.in_bank_ = true;
        CHECK(!m.AddEmitter(0, &x));
    }

    if (g_failures == 0) {
        std::puts("priority_bank_add_emitter_test: ok");
        return 0;
    }
    std::fprintf(stderr, "priority_bank_add_emitter_test: %d failure(s)\n", g_failures);
    return 1;
}
