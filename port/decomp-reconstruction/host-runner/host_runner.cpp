// Host runner core: argument parsing, the fixed clock, the boot sequence (the Java classes' order) and the frame loop.
#include "host_runner.hpp"

#include <windows.h>

#include <cstdarg>
#include <thread>
#include <chrono>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <ctime>
#include <cstdint>
#include <io.h>
#include <fcntl.h>

extern "C" {
int appInit();
int appUpdate();
int appDestroy();
}
namespace glitch::os {
extern std::int64_t (*g_dh2HostMicrosecondsOverride)();
}

// ---- the game's wall-clock reads, replaced by the fixed clock ----
// time_util.cpp (TimeNow, _GetTime, OS_GetTime) read gettimeofday directly; the runner's definitions come first on the link line.
namespace {
bool g_fixedClock = false;
std::int64_t g_micros = 0;
}  // namespace

unsigned int TimeNow() {
    if (!g_fixedClock) return static_cast<unsigned int>(GetTickCount64());
    return static_cast<unsigned int>(g_micros / 1000);
}
double _GetTime() {
    if (!g_fixedClock) return static_cast<double>(GetTickCount64()) / 1000.0;
    return static_cast<double>(g_micros) / 1000000.0;
}
int OS_GetTime() { return static_cast<int>(TimeNow()); }

// LC_API_GET_RANDOM (core-platform/src/lc_api.cpp, 0x89cc9c) reseeds from time() on every call; with the fixed clock the runner gives it the
// clock's seconds instead, so a scripted session repeats exactly. Same generator: the first lrand48 after srand48(seed), plus the name's bytes.
int LC_API_GET_RANDOM(const char* name) {
    const long seed = g_fixedClock ? static_cast<long>(g_micros / 1000000) : static_cast<long>(std::time(nullptr));
    std::uint64_t x = (static_cast<std::uint64_t>(static_cast<std::uint32_t>(seed)) << 16) | 0x330Eu;
    x = (0x5DEECE66DULL * x + 0xBULL) & ((std::uint64_t{1} << 48) - 1);
    int value = static_cast<int>(x >> 17);
    if (name != nullptr) {
        for (const char* p = name; *p != 0; ++p) value += static_cast<signed char>(*p);
    }
    return value;
}

namespace dh2host {

static int g_frame = 0;
void (*g_screenshotHook)(const char* path) = nullptr;

void clockUseFixed(std::int64_t startMicros) {
    g_fixedClock = true;
    g_micros = startMicros;
    glitch::os::g_dh2HostMicrosecondsOverride = []() -> std::int64_t { return g_micros; };
}
void clockAdvance(int ms) { g_micros += static_cast<std::int64_t>(ms) * 1000; }
std::int64_t clockNowMicros() { return g_micros; }
int currentFrame() { return g_frame; }

void printUsage(const char* exe) {
    std::fprintf(stderr,
                 "usage: %s --data <game files dir> [--script file] [--frames N] [--dt ms] [--log-every N] [--out dir]\n"
                 "          [--size WxH] [--script-scale f] [--lang N] [--realtime] [--verbose] [--angle dir]\n"
                 "          [--audio-wav file] [--audio-out]\n",
                 exe);
}

bool parseArgs(int argc, char** argv, Options& o) {
    for (int i = 1; i < argc; ++i) {
        std::string a = argv[i];
        auto next = [&](const char* what) -> const char* {
            if (i + 1 >= argc) {
                std::fprintf(stderr, "missing value for %s\n", what);
                return nullptr;
            }
            return argv[++i];
        };
        const char* v = nullptr;
        if (a == "--data") { if (!(v = next("--data"))) return false; o.dataDir = v; }
        else if (a == "--script") { if (!(v = next("--script"))) return false; o.scriptPath = v; }
        else if (a == "--out") { if (!(v = next("--out"))) return false; o.outDir = v; }
        else if (a == "--frames") { if (!(v = next("--frames"))) return false; o.frames = std::atoi(v); }
        else if (a == "--dt") { if (!(v = next("--dt"))) return false; o.dtMs = std::atoi(v); }
        else if (a == "--log-every") { if (!(v = next("--log-every"))) return false; o.logEvery = std::atoi(v); }
        else if (a == "--script-scale") { if (!(v = next("--script-scale"))) return false; o.scriptScale = static_cast<float>(std::atof(v)); }
        else if (a == "--lang") { if (!(v = next("--lang"))) return false; o.language = std::atoi(v); }
        else if (a == "--angle") { if (!(v = next("--angle"))) return false; o.angleDir = v; }
        else if (a == "--size") {
            if (!(v = next("--size"))) return false;
            if (std::sscanf(v, "%dx%d", &o.width, &o.height) != 2) return false;
        }
        else if (a == "--audio-wav") { if (!(v = next("--audio-wav"))) return false; o.audioWav = v; }
        else if (a == "--audio-selftest") { if (!(v = next("--audio-selftest"))) return false; std::exit(audioSelfTest(v)); }
        else if (a == "--pace") o.pace = true;
        else if (a == "--audio-out") o.audioOut = true;
        else if (a == "--no-audio") o.audioOut = false;
        else if (a == "--realtime") o.realtime = true;
        else if (a == "--fixed") o.realtime = false;
        else if (a == "--verbose") o.verbose = true;
        else if (a == "--jni-log") g_jniLogCalls = true;
        else { std::fprintf(stderr, "unknown argument %s\n", a.c_str()); return false; }
    }
    if (o.dataDir.empty()) {
        std::fprintf(stderr, "--data is required\n");
        return false;
    }
    // The game may change directory, so every path the runner is given becomes absolute.
    char full[MAX_PATH];
    if (GetFullPathNameA(o.dataDir.c_str(), MAX_PATH, full, nullptr) != 0) o.dataDir = full;
    if (GetFullPathNameA(o.outDir.c_str(), MAX_PATH, full, nullptr) != 0) o.outDir = full;
    if (!o.audioWav.empty() && GetFullPathNameA(o.audioWav.c_str(), MAX_PATH, full, nullptr) != 0) o.audioWav = full;
    if (!o.scriptPath.empty() && GetFullPathNameA(o.scriptPath.c_str(), MAX_PATH, full, nullptr) != 0) o.scriptPath = full;
    return true;
}

// A crash report: exception code, faulting address and a raw backtrace as RVAs (symbolize with host-runner/symbolize.py <exe> <log>), written to
// the console and to the game log.
static void crashPrint(const char* fmt, ...) {
    va_list ap;
    va_start(ap, fmt);
    if (g_runnerOut != nullptr) {
        va_list cp;
        va_copy(cp, ap);
        std::vfprintf(g_runnerOut, fmt, cp);
        std::fflush(g_runnerOut);
        va_end(cp);
    }
    std::vfprintf(stderr, fmt, ap);
    va_end(ap);
}

extern "C" void dh2_pageheap_report(unsigned long long addr, void (*print)(const char*, ...), unsigned long long moduleBase) __attribute__((weak));

static LONG WINAPI crashFilter(EXCEPTION_POINTERS* info) {
    const unsigned long long loaded = reinterpret_cast<unsigned long long>(GetModuleHandleA(nullptr));
    const EXCEPTION_RECORD* r = info->ExceptionRecord;
    crashPrint("\n[crash] exception 0x%08lx at rva 0x%llx, frame %d\n", r->ExceptionCode, (unsigned long long)r->ExceptionAddress - loaded, g_frame);
    if (r->ExceptionCode == EXCEPTION_ACCESS_VIOLATION && r->NumberParameters >= 2) {
        crashPrint("[crash] access violation %s address 0x%llx\n", r->ExceptionInformation[0] ? "writing" : "reading",
                   (unsigned long long)r->ExceptionInformation[1]);
    }
    if (r->ExceptionCode == EXCEPTION_ACCESS_VIOLATION && r->NumberParameters >= 2 && dh2_pageheap_report != nullptr) {
        dh2_pageheap_report(r->ExceptionInformation[1], crashPrint, loaded);
    }
    void* frames[64];
    // Walk from the faulting context, not from this handler: RtlCaptureStackBackTrace would start in the filter.
    CONTEXT* ctx = info->ContextRecord;
    unsigned long long pc = ctx->Rip;
    unsigned long long sp = ctx->Rsp;
    int n = 0;
    frames[n++] = reinterpret_cast<void*>(pc);
    // Unwind with the exception tables (x64 SEH data is in every MinGW-w64 image).
    for (; n < 64; ++n) {
        DWORD64 imageBase = 0;
        PRUNTIME_FUNCTION fn = RtlLookupFunctionEntry(pc, &imageBase, nullptr);
        if (fn == nullptr && n == 1) {
            // The fault is not in code (a call through a bad pointer into data): the caller's return address is on top of the stack.
            pc = *reinterpret_cast<DWORD64*>(ctx->Rsp);
            ctx->Rsp += 8;
            ctx->Rip = pc;
            frames[n] = reinterpret_cast<void*>(pc);
            continue;
        }
        if (fn == nullptr) break;
        void* handlerData = nullptr;
        DWORD64 frameBase = 0;
        RtlVirtualUnwind(UNW_FLAG_NHANDLER, imageBase, pc, fn, ctx, &handlerData, &frameBase, nullptr);
        pc = ctx->Rip;
        sp = ctx->Rsp;
        if (pc == 0) break;
        frames[n] = reinterpret_cast<void*>(pc);
    }
    (void)sp;
    for (int i = 0; i < n; ++i) {
        const unsigned long long a = reinterpret_cast<unsigned long long>(frames[i]);
        if (a >= loaded && a < loaded + 0x10000000ull) crashPrint("[crash] #%d rva 0x%llx\n", i, a - loaded);
        else crashPrint("[crash] #%d abs 0x%llx\n", i, a);
    }
    return EXCEPTION_EXECUTE_HANDLER;
}

bool bootGame(const Options& opt) {
    SetUnhandledExceptionFilter(crashFilter);
    if (!opt.realtime) clockUseFixed(100000LL * 1000000LL);
    jniInstall(opt);
    // GameRenderer.nativeInit: g_appAlive == 0 -> appInit()
    if (appInit() != 0) return false;
    return true;
}

void runFrame() {
    appUpdate();
    ++g_frame;
}

void shutdownGame() { appDestroy(); audioClose(); }

// Splits the console from the game's own chatter (the game prints through _DEBUG_OUT to stdout and stderr): the chatter goes to <out>/game.log, the
// runner's lines keep the original stdout. Returns the FILE for runner lines.
FILE* splitConsole(const Options& opt) {
    CreateDirectoryA(opt.outDir.c_str(), nullptr);
    int saved = _dup(1);
    FILE* console = _fdopen(saved, "w");
    if (!opt.verbose) {
        std::string path = opt.outDir + "/game.log";
        std::freopen(path.c_str(), "w", stdout);
        std::freopen(path.c_str(), "a", stderr);
    }
    return console;
}

FILE* g_runnerOut = nullptr;

int runHeadlessLoop(const Options& opt) {
    g_runnerOut = splitConsole(opt);
    std::vector<ScriptEvent> script;
    if (!opt.scriptPath.empty() && !loadScript(opt.scriptPath, script)) {
        std::fprintf(g_runnerOut, "cannot read script %s\n", opt.scriptPath.c_str());
        return 2;
    }
    installNullGL();
    if (!bootGame(opt)) {
        std::fprintf(g_runnerOut, "boot failed\n");
        return 3;
    }
    std::fprintf(g_runnerOut, "[runner] booted; running %d frames at %d ms\n", opt.frames, opt.dtMs);
    std::fflush(g_runnerOut);
    bool quit = false;
    for (int f = 0; f < opt.frames && !quit; ++f) {
        const auto frameStart = std::chrono::steady_clock::now();
        scriptApplyFrame(script, f, opt, quit);
        int stepMs = opt.dtMs;
        if (const char* jit = std::getenv("DH2_DT_JITTER")) {  // Q6: "lo,hi" ms, one random step per frame (xorshift, seed DH2_DT_SEED)
            static unsigned long long s = std::getenv("DH2_DT_SEED") ? std::strtoull(std::getenv("DH2_DT_SEED"), nullptr, 10) * 2654435761ull + 88172645463325252ull : 88172645463325252ull;
            int lo = 28, hi = 40;
            std::sscanf(jit, "%d,%d", &lo, &hi);
            s ^= s << 13; s ^= s >> 7; s ^= s << 17;
            stepMs = lo + static_cast<int>((s >> 11) % static_cast<unsigned long long>(hi - lo + 1));
        }
        clockAdvance(stepMs);
        runFrame();
        if (opt.pace) {   // --pace: hold the wall clock to the game clock so the audio thread mixes what the game asked for in time
            static std::int64_t t0 = GetTickCount64();
            static std::int64_t f0 = f;
            std::int64_t due = t0 + (f - f0 + 1) * opt.dtMs, now = GetTickCount64();
            if (due > now) Sleep(static_cast<DWORD>(due - now));
        }
        if (opt.logEvery > 0 && f % opt.logEvery == 0) logState(f);
        // DH2_PACE=1: hold every frame to dtMs of wall time, so two instances talking over real sockets see each other in real time.
        if (std::getenv("DH2_PACE") != nullptr) {
            std::this_thread::sleep_until(frameStart + std::chrono::milliseconds(opt.dtMs));
        }
    }
    logState(g_frame);
    std::fprintf(g_runnerOut, "[runner] done after %d frames\n", g_frame);
    std::fflush(g_runnerOut);
    audioClose();
    return 0;
}

}  // namespace dh2host

// ---- POSIX functions the reconstruction calls that the Windows C runtime lacks ----
// lrand48 (ok2-Clustering.cpp, the k-means seeding): the POSIX drand48 family, X(n+1) = (0x5DEECE66D * X(n) + 0xB) mod 2^48 with the default seed
// 0x1234ABCD330E; it returns the high 31 bits.
extern "C" long lrand48(void) {
    static unsigned long long x = 0x1234ABCD330EULL;
    x = (0x5DEECE66DULL * x + 0xBULL) & 0xFFFFFFFFFFFFULL;
    return static_cast<long>(x >> 17);
}
