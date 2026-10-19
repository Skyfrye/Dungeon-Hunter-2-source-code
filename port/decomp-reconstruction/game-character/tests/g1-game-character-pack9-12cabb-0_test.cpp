// Checks the CharState destructors (batch g1-game-character-pack9-12cabb-0) without the engine. The base-object
// destructor (0x3bffdc) is empty and the deleting destructor (0x3c0684) is left to the delete expression. The test
// derives a state that overrides the five pure virtual slots (a test double; the concrete CS* states are other batches)
// and checks that destroying it through a CharState pointer runs the derived destructor, the path the virtual
// destructor provides. It also checks the class shape the destructor relies on: polymorphic, abstract, virtual destructor.

#include <cstdio>
#include <type_traits>

#include "dh2/CharState.hpp"

static int failures = 0;
#define CHECK(c)                                                              \
    do {                                                                      \
        if (!(c)) {                                                           \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);          \
            ++failures;                                                       \
        }                                                                     \
    } while (0)

namespace {

// Counts the derived destructor runs. Only the destructor path is under test, so the slots do nothing.
int g_derivedDestroyed = 0;

class TestState : public CharState {
public:
    ~TestState() override { ++g_derivedDestroyed; }
    void OnInit(int, Character*, CharStateMachine*) override {}
    void OnFocus(int, Character*, CharStateMachine*, int, int, void*) override {}
    void OnBlur(int, Character*, CharStateMachine*, int) override {}
    void OnUpdate(int, Character*, CharStateMachine*) override {}
    void OnEvent(int, Character*, CharStateMachine*, int, void*) override {}
};

}  // namespace

static_assert(std::is_polymorphic<CharState>::value, "CharState has virtual functions");
static_assert(std::has_virtual_destructor<CharState>::value, "CharState destructor is virtual (D1 and D0 slots)");
static_assert(std::is_abstract<CharState>::value, "CharState has five pure virtual slots");
static_assert(!std::is_abstract<TestState>::value, "TestState overrides every pure virtual slot");

int main() {
    CHECK(std::is_polymorphic<CharState>::value);
    CHECK(std::has_virtual_destructor<CharState>::value);
    CHECK(std::is_abstract<CharState>::value);
    CHECK(!std::is_abstract<TestState>::value);

    // Heap object destroyed through the base pointer: the virtual destructor runs the derived one first.
    g_derivedDestroyed = 0;
    CharState* state = new TestState();
    delete state;
    CHECK(g_derivedDestroyed == 1);

    // Stack object destroyed at scope exit through the derived type.
    g_derivedDestroyed = 0;
    {
        TestState local;
        CharState& base = local;
        (void)base;
    }
    CHECK(g_derivedDestroyed == 1);

    if (failures == 0) {
        std::printf("g1-game-character-pack9-12cabb-0 test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-character-pack9-12cabb-0 test: %d failure(s)\n", failures);
    return 1;
}
