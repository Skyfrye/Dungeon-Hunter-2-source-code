// Checks the MenuFX bodies of batch g1-game-ui-MenuFX-65b527-0 that run without the engine: the State constructor,
// the virtual forwarding, the stack and name searches, and the OnFSCommand forwarding to the top state.
// MenuFX is never constructed here (its constructor and the RenderFX base are not linked). Its storage is zeroed,
// and only its non-virtual bodies and qualified (non-virtual) calls run on it, so no vtable is needed.
#include <cstdio>
#include <cstring>

#include "dh2/MenuFX.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Test double: records the virtual calls the bodies under test make on a State.
struct RecordingState : MenuFX::State {
    explicit RecordingState(const char* name) : MenuFX::State(name) {}

    int updateCalls = 0;
    int backgroundCalls = 0;
    int fsCalls = 0;
    const char* lastCommand = nullptr;

    void Update() override { ++updateCalls; }
    void UpdateBackground() override { ++backgroundCalls; }
    void OnFSCommand(const char* command, const char*) override {
        ++fsCalls;
        lastCommand = command;
    }
};

void TestConstructor() {
    RecordingState st("menu_main");
    Check(std::strcmp(st.m_name, "menu_main") == 0, "State ctor copies the name into m_name");
    Check(st.m_characterProxy == nullptr, "State ctor nulls the character proxy");
    Check(st.m_character == nullptr, "State ctor nulls the cached character");
    Check(st.m_savedFocusProxy == nullptr, "State ctor nulls the saved focus proxy");
    Check(st.m_savedFocus == nullptr, "State ctor nulls the saved focus");
    Check(st.m_status == 0, "State ctor sets m_status to 0");

    // A name longer than the 64-byte buffer is truncated and still terminated.
    const char longName[] =
        "this_name_is_much_longer_than_the_sixty_four_byte_buffer_in_the_state_struct_xxxxxxxx";
    RecordingState longSt(longName);
    Check(std::strlen(longSt.m_name) == sizeof(longSt.m_name) - 1, "State ctor truncates a long name");
    Check(longSt.m_name[sizeof(longSt.m_name) - 1] == '\0', "State ctor terminates a long name");
}

void TestVirtualForwarding() {
    RecordingState st("fwd");
    MenuFX::State& base = st;

    base.Update(3);
    Check(st.updateCalls == 1, "State::Update(int) forwards to Update()");

    base.UpdateBackground(3);
    Check(st.backgroundCalls == 1, "State::UpdateBackground(int) forwards to UpdateBackground()");

    // The empty virtuals must link and do nothing. An Event is only bound by reference, never read.
    alignas(8) unsigned char eventStorage[16] = {};
    RenderFX::Event& event = *reinterpret_cast<RenderFX::Event*>(eventStorage);
    base.Create();
    base.Show();
    base.Hide();
    base.GotFocus();
    base.LostFocus();
    base.OnEvent(event);
    base.OnFSCommand("noop", "");
    Check(st.updateCalls == 1 && st.backgroundCalls == 1, "empty virtuals leave the forwarding counters alone");
    Check(base.CanHandleEvent(event), "State::CanHandleEvent returns true");
}

void TestGetCharacter() {
    RecordingState st("char");
    Check(st.GetCharacter() == nullptr, "GetCharacter returns null with no cached character");
}

void TestStackAndStateSearch() {
    // Zeroed storage stands in for a MenuFX object. Only m_states, m_stack and non-virtual bodies are used.
    alignas(MenuFX) unsigned char storage[sizeof(MenuFX)];
    std::memset(storage, 0, sizeof(storage));
    MenuFX* menu = reinterpret_cast<MenuFX*>(storage);

    RecordingState a("a");
    RecordingState b("b");
    RecordingState c("c");
    RecordingState d("d");

    // Empty stack: no current state, no membership, and the command reaches nothing.
    menu->m_stack.m_data = nullptr;
    menu->m_stack.m_size = 0;
    Check(menu->GetCurrentState() == nullptr, "GetCurrentState is null on an empty stack");
    Check(!menu->IsStateInStack(&a), "IsStateInStack is false on an empty stack");
    menu->MenuFX::OnFSCommand("show", "");
    Check(a.fsCalls == 0, "OnFSCommand on an empty stack reaches no state");

    // Stack a, b, c with c on top.
    MenuFX::State* stack[3] = {&a, &b, &c};
    menu->m_stack.m_data = stack;
    menu->m_stack.m_size = 3;
    Check(menu->GetCurrentState() == &c, "GetCurrentState returns the top of the stack");
    Check(menu->IsStateInStack(&a), "IsStateInStack finds the bottom entry");
    Check(menu->IsStateInStack(&b), "IsStateInStack finds a middle entry");
    Check(menu->IsStateInStack(&c), "IsStateInStack finds the top entry");
    Check(!menu->IsStateInStack(&d), "IsStateInStack rejects a state that is not on the stack");

    menu->MenuFX::OnFSCommand("show", "args");
    Check(c.fsCalls == 1 && std::strcmp(c.lastCommand, "show") == 0, "OnFSCommand reaches the top state");
    Check(a.fsCalls == 0 && b.fsCalls == 0, "OnFSCommand does not reach states below the top");

    // Name search over the registered states.
    MenuFX::State* registered[4] = {&a, &b, &c, &d};
    menu->m_states.m_data = registered;
    menu->m_states.m_size = 4;
    Check(menu->GetState("a") == &a, "GetState finds the first registered state");
    Check(menu->GetState("c") == &c, "GetState finds a later registered state");
    Check(menu->GetState("missing") == nullptr, "GetState returns null for an unknown name");
    menu->m_states.m_size = 0;
    Check(menu->GetState("a") == nullptr, "GetState returns null when no states are registered");
}

}  // namespace

int main() {
    TestConstructor();
    TestVirtualForwarding();
    TestGetCharacter();
    TestStackAndStateSearch();
    if (g_failures == 0) {
        std::printf("MenuFX batch test: all checks passed\n");
        return 0;
    }
    std::printf("MenuFX batch test: %d failure(s)\n", g_failures);
    return 1;
}
