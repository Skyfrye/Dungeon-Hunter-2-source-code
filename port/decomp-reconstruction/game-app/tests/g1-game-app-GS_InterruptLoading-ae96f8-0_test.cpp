// Test for batch g1-game-app-GS_InterruptLoading-ae96f8-0. The test includes the batch source, so it can reach the
// file-local state of the original (firstframe, accumulatedTime, currentProgress) and the splash file helpers. The
// engine symbols the batch references are stubbed here, so the test links without the engine. Pass no extra sources
// to check_tu.sh --test: the batch source comes in through the include. Exit status 0 means every check passed.
#include <cstdio>
#include <cstring>

#include "../src/g1-game-app-GS_InterruptLoading-ae96f8-0.cpp"

namespace {

int g_failures = 0;
int g_dt = 0;             // Application::GetDt
int g_language = 0;       // SavegameManager::getLanguage
int g_savegameTag = 0;    // address stands in for the SavegameManager object

// A concrete texture for the splash reference. ITexture is abstract; the splash is released through the canonical
// glitch::IReferenceCounted::drop (inline in its header), so the count is checked on the object itself.
class TestTexture : public glitch::video::ITexture {
public:
    TestTexture() : glitch::video::ITexture("splash", nullptr, glitch::video::STextureDesc{}) {}
    bool bindImpl(bool) override { return false; }
    void unbindImpl() override {}
    uint8_t* mapImpl(uint8_t, glitch::video::E_TEXTURE_CUBE_MAP_FACE, uint8_t) override { return nullptr; }
    void unmapImpl() const override {}
    uint8_t* getMappedPtr() const override { return nullptr; }
    void generateMipmapsImpl() override {}
};

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// The batch reads only Application fields and calls GetDt, so storage without a constructed Application is enough.
Application* PlaceholderApp() {
    alignas(Application) static unsigned char storage[sizeof(Application)];
    return reinterpret_cast<Application*>(storage);
}

void ResetState() {
    firstframe = 0;
    accumulatedTime = 0;
    currentProgress = 0;
    g_dt = 0;
    g_language = 0;
    Width_Screen = 960;
    Musicplayerpause = false;
    JAVA_SOUNDS = false;
    Resume_Sound_Interrupt = false;
    InterLoad = false;
    m_loadBackground = nullptr;
    PlaceholderApp()->m_savegameManager = reinterpret_cast<SavegameManager*>(&g_savegameTag);
    PlaceholderApp()->m_pauseMenuPushed = false;
}

}  // namespace

// ---- stubs for the engine symbols the batch references ----

void _DEBUG_OUT(const char*, ...) {}

// 0x5338e8 nativeResumeMusicBG (core-platform/src/p1-core-platform-global-f216b6-3.cpp). The batch's Dtor calls it
// whenever Musicplayerpause is set, so TestDtorReleasesSplashAndClearsFlags reaches it. The real body is the Android
// JNI bridge, `mEnv->functions->CallStaticVoidMethod(mEnv, mClassMusicplayer, mMethodResumeMusicBG)`, and mEnv is null
// in a host test (Java_com_gameloft_android_GAND_GloftD2SS_Musicplayer_nativeInitplayer never runs), so the
// unconditional dereference the original performs faults. The bridge is a test seam: this no-op stands in for it and
// the Dtor behaviour the test checks (Musicplayerpause cleared, Resume_Sound_Interrupt raised) is unaffected.
extern "C" void nativeResumeMusicBG() {}

Application& ApplicationGetInstance() {
    return *PlaceholderApp();
}

int Application::GetDt() {
    return g_dt;
}

int SavegameManager::getLanguage() const {
    return g_language;
}

// The StateBase vtable is emitted with the base subobject, so every StateBase slot must be defined.
StateBase::~StateBase() {}
void StateBase::Ctor(const StateMachine*) {}
void StateBase::Dtor(const StateMachine*) {}
void StateBase::Update(StateMachine*, double) {}
void StateBase::Draw(const StateMachine*) {}
void StateBase::Pause(const StateMachine*) {}
void StateBase::Resume(const StateMachine*) {}
void StateBase::Draw2D(const StateMachine*) {}
void StateBase::Sleep(const StateMachine*) {}
void StateBase::WakeUp(const StateMachine*) {}

int Width_Screen = 960;
bool Musicplayerpause = false;
bool JAVA_SOUNDS = false;
bool Resume_Sound_Interrupt = false;

namespace {

void TestOnEventConsumesNothing() {
    GS_InterruptLoading splash;
    Check(splash.onEvent(nullptr, nullptr) == false, "onEvent returns false");
}

void TestCtorSetsFlags() {
    ResetState();
    GS_InterruptLoading splash;
    firstframe = 5;
    InterLoad = false;
    splash.Ctor(nullptr);
    Check(firstframe == 0, "Ctor resets firstframe to 0");
    Check(InterLoad, "Ctor sets InterLoad");
}

void TestDtorReleasesSplashAndClearsFlags() {
    ResetState();
    GS_InterruptLoading splash;
    static TestTexture texture;
    texture.referenceCounter = 1;            // reference count 1
    m_loadBackground = &texture;             // reference count 2
    InterLoad = true;
    Musicplayerpause = true;
    JAVA_SOUNDS = true;
    PlaceholderApp()->m_pauseMenuPushed = true;

    splash.Dtor(nullptr);

    Check(m_loadBackground.get() == nullptr, "Dtor releases m_loadBackground");
    Check(texture.referenceCounter == 1, "Dtor drops the splash texture once (count back to 1)");
    Check(!InterLoad, "Dtor clears InterLoad");
    Check(!Musicplayerpause, "Dtor clears Musicplayerpause");
    Check(Resume_Sound_Interrupt, "Dtor sets Resume_Sound_Interrupt under JAVA_SOUNDS");
    Check(!PlaceholderApp()->m_pauseMenuPushed, "Dtor clears Application::m_pauseMenuPushed");
}

void TestDtorWithoutJavaSounds() {
    ResetState();
    GS_InterruptLoading splash;
    Musicplayerpause = false;
    JAVA_SOUNDS = false;
    splash.Dtor(nullptr);
    Check(!Resume_Sound_Interrupt, "Dtor leaves Resume_Sound_Interrupt alone without JAVA_SOUNDS");
    Check(m_loadBackground.get() == nullptr, "Dtor with no splash texture leaves m_loadBackground null");
}

void TestUpdateFrameCounter() {
    // firstframe is the first-frame latch the batch body shares with Draw. The ARM ladder counts it up over the two
    // warm-up frames (firstframe <= 1 takes loc_417A48's `ADD R3,R3,#1; STR R3,[R2]`) and the work path taken at
    // firstframe == 1 joins that same increment, so the latch settles at 2 and holds - the state Draw gates on
    // (0x41747c/0x417484: the spinner frame is drawn only while firstframe > 1). The checks below pin that sequence.
    ResetState();
    GS_InterruptLoading splash;

    splash.Update(nullptr, 0.0);
    Check(firstframe == 1, "frame 0 Update counts up to 1");

    splash.Update(nullptr, 0.0);
    Check(firstframe == 2, "frame 1 Update counts up to 2");

    splash.Update(nullptr, 0.0);
    Check(firstframe == 2, "a later Update leaves firstframe alone");
}

void TestDrawSpinnerDoesNotAdvanceBeforeFirstFrame() {
    ResetState();
    GS_InterruptLoading splash;
    g_dt = 100;
    firstframe = 0;
    splash.Draw(nullptr);
    Check(accumulatedTime == 0 && currentProgress == 0, "Draw with firstframe 0 leaves the spinner alone");
    firstframe = 1;
    splash.Draw(nullptr);
    Check(accumulatedTime == 0 && currentProgress == 0, "Draw with firstframe 1 leaves the spinner alone");
}

void TestDrawSpinnerAdvance() {
    ResetState();
    GS_InterruptLoading splash;
    firstframe = 2;

    g_dt = 10;
    splash.Draw(nullptr);
    Check(accumulatedTime == 10 && currentProgress == 0, "spinner keeps 10 ms without advancing");

    splash.Draw(nullptr);  // 20
    splash.Draw(nullptr);  // 30, over 25
    Check(accumulatedTime == 0 && currentProgress == 1, "spinner advances one cell past 25 ms");

    accumulatedTime = 0;
    currentProgress = 0;
    g_dt = 25;
    splash.Draw(nullptr);
    Check(accumulatedTime == 25 && currentProgress == 0, "exactly 25 ms does not advance the spinner");

    accumulatedTime = 0;
    currentProgress = 3;
    g_dt = 26;
    splash.Draw(nullptr);
    Check(accumulatedTime == 0 && currentProgress == 0, "spinner wraps from cell 3 to cell 0");
}

void TestSplashFiles() {
    Check(std::strcmp(SplashFileForWidth(854), "data/3d/textures/splash_final_droid.tga") == 0,
          "854 wide uses the droid splash");
    Check(std::strcmp(SplashFileForWidth(800), "data/3d/textures/splash_final_i9000.tga") == 0,
          "800 wide uses the i9000 splash");
    Check(std::strcmp(SplashFileForWidth(960), "data/3d/textures/splash_final.tga") == 0,
          "960 wide uses the default splash");
    Check(std::strcmp(SplashFileForWidth(1280), "data/3d/textures/splash_final.tga") == 0,
          "other widths use the default splash");
    Check(std::strcmp(LanguageSplashFile(4), "data/3d/textures/splash_final_jp.tga") == 0,
          "language 4 uses the Japanese splash");
    Check(std::strcmp(LanguageSplashFile(5), "data/3d/textures/splash_final_kor.tga") == 0,
          "language 5 uses the Korean splash");
    Check(LanguageSplashFile(0) == nullptr && LanguageSplashFile(1) == nullptr,
          "other languages keep the width splash");
}

}  // namespace

int main() {
    TestOnEventConsumesNothing();
    TestCtorSetsFlags();
    TestDtorReleasesSplashAndClearsFlags();
    TestDtorWithoutJavaSounds();
    TestUpdateFrameCounter();
    TestDrawSpinnerDoesNotAdvanceBeforeFirstFrame();
    TestDrawSpinnerAdvance();
    TestSplashFiles();

    m_loadBackground = nullptr;  // release any texture a check left behind before exit
    if (g_failures == 0) {
        std::printf("GS_InterruptLoading tests passed\n");
        return 0;
    }
    std::printf("%d GS_InterruptLoading test(s) failed\n", g_failures);
    return 1;
}
