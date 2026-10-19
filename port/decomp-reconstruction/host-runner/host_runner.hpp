// Windows host runner: shared declarations (see reports/decomp-reconstruction/HOST-RUNNER.md).
#pragma once

#include <cstdint>
#include <cstdio>
#include <string>
#include <vector>

namespace dh2host {

struct Options {
    std::string dataDir;            // game data directory (the "files" folder of the Android data); never in git
    std::string scriptPath;         // scripted input file (optional)
    std::string outDir = ".";       // screenshots and logs
    int width = 1280;               // surface size (appInit uses it for any width other than 800/854/960)
    int height = 720;
    int frames = 600;               // frames to run (headless; the window runs until it is closed or this many frames pass when > 0)
    int dtMs = 33;                  // fixed timestep: milliseconds of game time per frame
    int logEvery = 30;              // state line every N frames (0 = never)
    float scriptScale = 1.0f;       // multiplies the touch coordinates of the script (scripts are written for a 2400x1080 surface)
    int language = 0;               // GLMediaPlayer.detectPhoneLang result (0 English; the saved "Language" option still overrides it)
    bool realtime = false;          // windowed: use the wall clock instead of the fixed timestep
    bool verbose = false;           // keep the game's own _DEBUG_OUT chatter
    std::string audioWav;           // --audio-wav <file>: write the mixed output (what the vox driver hands to AudioTrack.write) to a WAV file
    bool pace = false;              // --pace: headless runs at wall-clock speed (one frame per --dt ms) so audio lines up with the game
    bool audioOut = false;          // --audio-out: play it on the default Windows output device (the window runner turns it on unless --no-audio)
    std::string angleDir;           // windowed: directory with ANGLE libEGL.dll / libGLESv2.dll (default: next to the exe, then PATH)
};

bool parseArgs(int argc, char** argv, Options& opt);
void printUsage(const char* exe);

// ---- fake JNI layer (host_jni.cpp): the Java side of the Android build as seen by the natives ----
// Installs a JavaVM/JNIEnv whose GLMediaPlayer / DungeonHunter2 / GLResLoader static methods answer from the host, runs JNI_OnLoad, the three
// nativeInit natives and nativeSetPhone, in the order the Java classes do.
void jniInstall(const Options& opt);
// ---- host audio sink for the fake AudioTrack (host_audio.cpp) ----
void audioOpen(const Options& opt);
void audioPlay(bool on);
int audioWrite(const void* data, int bytes);
void audioClose();
int audioSelfTest(const std::string& soundsDir);   // host_audio_selftest.cpp: decode every .wav/.vxn with the vox decoders
extern bool g_jniLogCalls;  // log every Java static method the natives call

// ---- clock (host_runner.cpp) ----
void clockUseFixed(std::int64_t startMicros);
void clockAdvance(int ms);
std::int64_t clockNowMicros();

// ---- boot and frame loop (host_runner.cpp) ----
bool bootGame(const Options& opt);   // jniInstall + GameRenderer.nativeInit (appInit) with the options' size
void runFrame();                     // one appUpdate (GameRenderer.nativeRender)
void shutdownGame();
int currentFrame();

// ---- scripted input (host_script.cpp) ----
// Lines (frame numbers are absolute frame indexes from the first frame, 0-based):
//   <frame> tap <x> <y> [hold_frames]            touch down, release after hold_frames (default 2)
//   <frame> down <x> <y> [slot]                  touch down
//   <frame> move <x> <y> [slot]                  touch moved
//   <frame> click <x> <y> [slot]                 down, move on the spot after 2 frames, up after 6 (use for Flash buttons)
//   <frame> up <x> <y> [slot]                    touch up
//   <frame> drag <x1> <y1> <x2> <y2> <frames> [hold]   down at (x1,y1), linear moves, stays at (x2,y2) for hold frames, then up
//   <frame> key <code>                           DungeonHunter2.nativeKeyDown then nativeKeyUp
//   <frame> log <text...>                        print a marker line
//   <frame> shot <name>                          windowed: save a screenshot (BMP) to outDir
//   <frame> quit                                 stop the run
// '#' starts a comment. Coordinates are surface pixels (the game's own touch coordinates).
struct ScriptEvent {
    int frame;
    int kind;   // 0 touch phase (a = phase 1 down / 2 move / 0 up), 1 key, 2 log, 3 shot, 4 quit, 5 probe
    int a, x, y, slot;
    std::string text;
};
bool loadScript(const std::string& path, std::vector<ScriptEvent>& out);
void scriptApplyFrame(const std::vector<ScriptEvent>& events, int frame, const Options& opt, bool& quit);
extern void (*g_screenshotHook)(const char* path);   // set by the window runner

// ---- headless GL (host_gl_null.cpp): a function table that accepts every call and answers the start-up queries ----
void installNullGL();
extern unsigned long long g_drawCalls, g_drawIndices;   // headless draw counters (host_gl_null.cpp)

// ---- state log (host_state_log.cpp) ----
void logState(int frame);
void logProbe(int frame);
void botTick(int frame, const Options& opt);                 // host_bot.cpp: timed play modes (hunt, loot, explore, rand)
void botCommand(int frame, const std::string& line);         // host_bot.cpp: goto, loadlevel, hunt N, ...   // movement diagnostics around the local player (script command `probe`)

extern std::FILE* g_runnerOut;                      // runner lines (the game's chatter goes to <out>/game.log)
std::FILE* splitConsole(const Options& opt);

// Loops: the headless one (host_runner.cpp) and the windowed one (host_window.cpp).
int runHeadlessLoop(const Options& opt);
int runWindowLoop(const Options& opt);

}  // namespace dh2host
