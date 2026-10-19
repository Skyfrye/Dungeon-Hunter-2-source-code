// Test for batch g1-game-app-GSKeyboard-b78115-0. Runs the query state (QueryString, Update, GetLastString,
// ClearString, Dtor, Draw, the constructor) against stubs for the engine objects it calls: OnScreenKeyboard,
// MenuManager, StateMachine, Application and the StateBase slots. Exit status 0 means every check passed.
#include <cstdio>
#include <cstring>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/GSKeyboard.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/OnScreenKeyboard.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/global/ctrl_camera.hpp"

// Globals defined in other batches in the original. The test defines them so the batch source links alone.
int gAssertLevel = 0;
bool OnScreenKeyboard::s_isOver = false;

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Calls recorded by the stubs below.
struct Calls {
    int keyboardClear = 0;
    int keyboardRelease = 0;
    int getStringCalls = 0;
    bool getStringResult = true;
    std::string getStringTitle;
    char* getStringBuffer = nullptr;
    unsigned int getStringMax = 0;
    std::string getStringInitial;
    int menuUpdates = 0;
    bool menuUpdateArg = true;
    int pushCount = 0;
    const void* pushedState = nullptr;
    bool pushedOwned = true;
    const void* pushMachine = nullptr;
    int popCount = 0;
    const void* popState = nullptr;
    const void* popMachine = nullptr;
    int drawCount = 0;
    const void* drawMachine = nullptr;
};

Calls g_calls;

// Storage for the engine objects the batch only passes around. They are never constructed; the stubs ignore them.
alignas(StateMachine) unsigned char g_machineStorage[sizeof(StateMachine)];
alignas(MenuManager) unsigned char g_menuStorage[sizeof(MenuManager)];
alignas(Application) unsigned char g_appStorage[sizeof(Application)];

void ResetCalls() {
    g_calls = Calls();
}

}  // namespace

// ----- Stubs for the engine symbols the batch calls -----

void OnScreenKeyboard::ClearString() {
    ++g_calls.keyboardClear;
}

void OnScreenKeyboard::ReleaseKeyboard() {
    ++g_calls.keyboardRelease;
}

bool OnScreenKeyboard::GetString(const char* title, char* outBuffer, unsigned int maxLength, const char* initialText) {
    ++g_calls.getStringCalls;
    g_calls.getStringTitle = title;
    g_calls.getStringBuffer = outBuffer;
    g_calls.getStringMax = maxLength;
    g_calls.getStringInitial = initialText;
    return g_calls.getStringResult;
}

MenuManager* MenuManager::GetInstance() {
    return reinterpret_cast<MenuManager*>(g_menuStorage);
}

void MenuManager::Update(bool hudOnly) {
    ++g_calls.menuUpdates;
    g_calls.menuUpdateArg = hudOnly;
}

void StateMachine::RecurseDraw() const {
    ++g_calls.drawCount;
    g_calls.drawMachine = this;
}

void StateMachine::PushState(StateBase* state, bool owned) {
    ++g_calls.pushCount;
    g_calls.pushedState = state;
    g_calls.pushedOwned = owned;
    g_calls.pushMachine = this;
}

void StateMachine::PopState(StateBase* state) {
    ++g_calls.popCount;
    g_calls.popState = state;
    g_calls.popMachine = this;
}

Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

// StateBase slots that the StateBase and GSKeyboard vtables refer to, and the base destructor call. All are bare in
// the original (StateBase is an empty base).
StateBase::~StateBase() {}
void StateBase::Ctor(const StateMachine* /*machine*/) {}
void StateBase::Dtor(const StateMachine* /*machine*/) {}
void StateBase::Update(StateMachine* /*machine*/, double /*dt*/) {}
void StateBase::Draw(const StateMachine* /*machine*/) {}
void StateBase::Pause(const StateMachine* /*machine*/) {}
void StateBase::Resume(const StateMachine* /*machine*/) {}
void StateBase::Draw2D(const StateMachine* /*machine*/) {}
void StateBase::Sleep(const StateMachine* /*machine*/) {}
void StateBase::WakeUp(const StateMachine* /*machine*/) {}

namespace {

StateMachine* g_machine = nullptr;

// Clears the call record and the keyboard flags. The statics (title, text, buffers) are left as they are.
void ResetKeyboard() {
    GSKeyboard::s_inst.m_querying = false;
    OnScreenKeyboard::s_isOver = false;
    ResetCalls();
}

void TestConstructor() {
    ResetCalls();
    std::strcpy(GSKeyboard::s_strBuffer1, "stale");
    std::strcpy(GSKeyboard::s_strBuffer2, "stale");
    {
        GSKeyboard local;
        Check(!local.m_querying, "constructor clears m_querying");
        Check(GSKeyboard::s_strBuffer1[0] == 0, "constructor clears the first buffer");
        Check(GSKeyboard::s_strBuffer2[0] == 0, "constructor clears the second buffer");
    }
}

void TestCtorSlotDoesNothing() {
    ResetKeyboard();
    GSKeyboard::s_inst.m_querying = true;
    GSKeyboard::s_inst.Ctor(g_machine);
    Check(GSKeyboard::s_inst.m_querying, "Ctor slot leaves m_querying alone");
    GSKeyboard::s_inst.m_querying = false;
}

void TestQueryStringDefault() {
    ResetKeyboard();
    std::strcpy(GSKeyboard::s_strBuffer1, "old");
    GSKeyboard::QueryString("Name", 200, "abc", false);

    Check(GSKeyboard::s_strBuffer == GSKeyboard::s_strBuffer1, "a title other than GLPassword uses the first buffer");
    Check(std::strcmp(GSKeyboard::s_strBuffer1, "abc") == 0, "keepBuffer false resets the buffer to the initial text");
    Check(GSKeyboard::s_tmpSize == 0x64, "maximum length clamps to 100");
    Check(GSKeyboard::s_tmpTitle == "Name", "title is stored");
    Check(GSKeyboard::s_tmpValue == "abc", "current text is stored");
    Check(g_calls.pushCount == 1, "QueryString pushes once");
    Check(g_calls.pushedState == &GSKeyboard::s_inst, "the keyboard state is pushed");
    Check(!g_calls.pushedOwned, "the keyboard state is pushed unowned");
    Check(g_calls.pushMachine == g_machine, "the push goes to the application's state machine");
}

void TestQueryStringPasswordKeepsBuffer() {
    ResetKeyboard();
    std::strcpy(GSKeyboard::s_strBuffer2, "kept");
    GSKeyboard::QueryString("GLPassword", 8, "ignored", true);

    Check(GSKeyboard::s_strBuffer == GSKeyboard::s_strBuffer2, "GLPassword uses the second buffer");
    Check(std::strcmp(GSKeyboard::s_strBuffer2, "kept") == 0, "keepBuffer true leaves the buffer text");
    Check(GSKeyboard::s_tmpValue == "kept", "the current text is copied from the buffer, not the initial text");
    Check(GSKeyboard::s_tmpSize == 8, "a length under 100 is kept as given");
    Check(GSKeyboard::GetLastString() == GSKeyboard::s_strBuffer2, "GetLastString returns the second buffer for GLPassword");
}

void TestQueryStringNullInitialText() {
    ResetKeyboard();
    std::strcpy(GSKeyboard::s_strBuffer1, "old");
    GSKeyboard::QueryString("Other", 5, nullptr, false);

    Check(GSKeyboard::s_strBuffer1[0] == 0, "a null initial text leaves the reset buffer empty");
    Check(GSKeyboard::s_tmpValue.empty(), "a null initial text gives an empty current text");
    Check(GSKeyboard::s_tmpSize == 5, "a length under 100 is kept as given");
    Check(GSKeyboard::GetLastString() == GSKeyboard::s_strBuffer1, "GetLastString returns the first buffer for other titles");
}

void TestGetLastStringLengthCheck() {
    ResetKeyboard();
    // A title that is only a prefix of GLPassword is not the password buffer.
    GSKeyboard::QueryString("GLPass", 8, "", false);
    Check(GSKeyboard::GetLastString() == GSKeyboard::s_strBuffer1, "a title that is not exactly GLPassword uses the first buffer");
}

void TestClearString() {
    ResetKeyboard();
    GSKeyboard::QueryString("GLPassword", 10, "pw", false);
    std::strcpy(GSKeyboard::s_strBuffer1, "x");
    std::strcpy(GSKeyboard::s_strBuffer2, "y");
    ResetCalls();

    GSKeyboard::ClearString();
    Check(g_calls.keyboardClear == 1, "ClearString clears the on-screen keyboard's text");
    Check(GSKeyboard::s_tmpTitle.empty(), "ClearString empties the title");
    Check(GSKeyboard::s_tmpValue.empty(), "ClearString empties the current text");
    Check(GSKeyboard::s_strBuffer1[0] == 0 && GSKeyboard::s_strBuffer2[0] == 0, "ClearString zeroes both buffers");
}

void TestUpdateLifecycle() {
    ResetKeyboard();
    GSKeyboard::QueryString("Name", 20, "hi", false);
    ResetCalls();
    g_calls.getStringResult = true;

    // First update opens the keyboard with the statics as the arguments; the length is the stored length plus one.
    GSKeyboard::s_inst.Update(g_machine, 0.0);
    Check(GSKeyboard::s_inst.m_querying, "the first update sets m_querying");
    Check(g_calls.getStringCalls == 1, "the first update opens the keyboard once");
    Check(g_calls.getStringTitle == "Name", "GetString gets the stored title");
    Check(g_calls.getStringBuffer == GSKeyboard::s_strBuffer1, "GetString writes into the query buffer");
    Check(g_calls.getStringMax == 21, "GetString gets the stored length plus one");
    Check(g_calls.getStringInitial == "hi", "GetString gets the stored initial text");
    Check(g_calls.popCount == 0, "no pop while the keyboard opens");

    // Keyboard still open: the menus keep running with hudOnly false, nothing is popped.
    OnScreenKeyboard::s_isOver = false;
    GSKeyboard::s_inst.Update(g_machine, 0.0);
    Check(g_calls.menuUpdates == 1 && g_calls.menuUpdateArg == false, "menus update with hudOnly false while typing");
    Check(g_calls.getStringCalls == 1, "the keyboard is not reopened while typing");
    Check(GSKeyboard::s_inst.m_querying, "m_querying stays set while typing");
    Check(g_calls.popCount == 0, "no pop while typing");

    // Keyboard closed: the flag is cleared and this state is popped.
    OnScreenKeyboard::s_isOver = true;
    GSKeyboard::s_inst.Update(g_machine, 0.0);
    Check(!GSKeyboard::s_inst.m_querying, "m_querying is cleared when the keyboard closes");
    Check(g_calls.popCount == 1, "the state is popped once when the keyboard closes");
    Check(g_calls.popState == nullptr, "the pop uses the null state (top of stack)");
    Check(g_calls.popMachine == g_machine, "the pop goes to the state machine that ran the update");
    Check(g_calls.menuUpdates == 1, "no menu update after the keyboard closes");
}

void TestUpdateOpenFails() {
    ResetKeyboard();
    GSKeyboard::QueryString("Name", 20, "", false);
    ResetCalls();
    g_calls.getStringResult = false;

    GSKeyboard::s_inst.Update(g_machine, 0.0);
    Check(!GSKeyboard::s_inst.m_querying, "a failed open clears m_querying");
    Check(g_calls.getStringCalls == 1, "a failed open calls GetString once");
    Check(g_calls.popCount == 1, "a failed open pops the state at once");
    Check(g_calls.popMachine == g_machine, "a failed open pops the state machine that ran the update");
    Check(g_calls.menuUpdates == 0, "a failed open does not update the menus");
    g_calls.getStringResult = true;
}

void TestDtorReleasesKeyboard() {
    ResetKeyboard();
    GSKeyboard::s_inst.m_querying = true;
    GSKeyboard::s_inst.Dtor(g_machine);
    Check(!GSKeyboard::s_inst.m_querying, "Dtor clears m_querying");
    Check(g_calls.keyboardRelease == 1, "Dtor releases the on-screen keyboard");
}

void TestDraw() {
    ResetKeyboard();
    GSKeyboard::s_inst.Draw(g_machine);
    Check(g_calls.drawCount == 1, "Draw recurses the draw through the machine once");
    Check(g_calls.drawMachine == g_machine, "Draw recurses through the machine it is given");
}

}  // namespace

int main() {
    ApplicationGetInstance().m_stateMachine = reinterpret_cast<StateMachine*>(g_machineStorage);
    g_machine = ApplicationGetInstance().m_stateMachine;

    TestConstructor();
    TestCtorSlotDoesNothing();
    TestQueryStringDefault();
    TestQueryStringPasswordKeepsBuffer();
    TestQueryStringNullInitialText();
    TestGetLastStringLengthCheck();
    TestClearString();
    TestUpdateLifecycle();
    TestUpdateOpenFails();
    TestDtorReleasesKeyboard();
    TestDraw();

    if (g_failures == 0) {
        std::printf("g1-game-app-GSKeyboard-b78115-0 tests passed\n");
        return 0;
    }
    std::printf("%d check(s) failed\n", g_failures);
    return 1;
}
