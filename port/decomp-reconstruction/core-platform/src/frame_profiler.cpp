// Frame-time statistics and long-frame sampler (Track B diagnostic, see core-platform/frame_prof.hpp).
// Every 5 s: "DH2PROF stats n= avg= max= >25 >33 >50 >100" for the appUpdate duration and the frame-to-frame period.
// A period over 50 ms: "DH2PROF long period=.. update=.. cats(...)" followed by the stack samples of the watchdog thread
// ("module+offset" frames, symbolise with llvm-addr2line against the unstripped library).
#include "core-platform/frame_prof.hpp"

#if defined(__ANDROID__)

#include <android/log.h>
#include <dlfcn.h>
#include <pthread.h>
#include <signal.h>
#include <sys/syscall.h>
#include <time.h>
#include <ucontext.h>
#include <unistd.h>

#include <cstdio>
#include <cstring>

namespace dh2prof {

std::atomic<std::uint64_t> g_catNs[kCatCount];
std::atomic<std::uint32_t> g_catCount[kCatCount];

std::uint64_t nowNs() {
    timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return static_cast<std::uint64_t>(ts.tv_sec) * 1000000000ull + static_cast<std::uint64_t>(ts.tv_nsec);
}

namespace {

const char* const kCatNames[kCatCount] = {"ioOpen", "ioRead", "glCompile", "glLink", "texUpload", "texDecode", "log", "batch", "other"};
constexpr std::uint64_t kLongNs = 50ull * 1000000ull;         // log threshold
constexpr std::uint64_t kSampleAfterNs = 28ull * 1000000ull;  // the watchdog starts sampling this long after the frame began
// The gap between samples grows (6 ms + 1.5 ms per sample taken) so 28 samples span about 0.7 s: the 400 ms level-load stalls
// were only covered for their first 110 ms by 14 samples at a fixed 6 ms.
constexpr std::uint64_t kSampleEveryNs = 6ull * 1000000ull;
constexpr std::uint64_t kSampleGrowNs = 1500000ull;
constexpr int kMaxSamples = 28;
constexpr int kMaxFrames = 24;

// Every line goes to logcat (tag DH2PROF) and to <files>/dh2_prof.txt (bounded: at 1 MB it is renamed dh2_prof.old), so a play session on
// a phone can be read afterwards even when logcat has scrolled.
const char* const kProfFile = "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files/dh2_prof.txt";
std::FILE* g_profFile = nullptr;
long g_profBytes = 0;

void emit(const char* line) {
    __android_log_write(ANDROID_LOG_INFO, "DH2PROF", line);
    if (g_profFile == nullptr) {
        g_profFile = std::fopen(kProfFile, "a");
        if (g_profFile == nullptr) return;
        std::fseek(g_profFile, 0, SEEK_END);
        g_profBytes = std::ftell(g_profFile);
    }
    timespec rt;
    clock_gettime(CLOCK_REALTIME, &rt);
    const int n = std::fprintf(g_profFile, "%lld.%03ld %s\n", static_cast<long long>(rt.tv_sec), rt.tv_nsec / 1000000, line);
    std::fflush(g_profFile);
    if (n > 0) g_profBytes += n;
    if (g_profBytes > (1 << 20)) {
        std::fclose(g_profFile);
        g_profFile = nullptr;
        char old[256];
        std::snprintf(old, sizeof old, "%s", kProfFile);
        std::strcpy(old + std::strlen(old) - 3, "old");
        std::rename(kProfFile, old);
        g_profBytes = 0;
    }
}

struct Sample {
    std::uint64_t t;  // ns since the period began
    bool inUpdate;
    int n;
    std::uintptr_t pc[kMaxFrames];
};

Sample g_samples[kMaxSamples];
std::atomic<int> g_nSamples{0};
std::atomic<std::uint64_t> g_periodStart{0};  // start of the current appUpdate call
std::atomic<bool> g_inUpdate{false};
pid_t g_gameTid = 0;
bool g_started = false;
std::uint64_t g_prevStart = 0;
std::uint64_t g_prevUpdateNs = 0;
std::uint64_t g_updateStart = 0;
std::uint64_t g_nextReport = 0;

// Statistics for the 5 s window.
struct Stat {
    int n = 0, over25 = 0, over33 = 0, over50 = 0, over100 = 0;
    double sum = 0;
    double max = 0;
    void add(double ms) {
        ++n;
        sum += ms;
        if (ms > max) max = ms;
        if (ms > 25) ++over25;
        if (ms > 33.4) ++over33;
        if (ms > 50) ++over50;
        if (ms > 100) ++over100;
    }
};
Stat g_update, g_period;

void profHandler(int, siginfo_t*, void* ctx) {
    const int idx = g_nSamples.load(std::memory_order_relaxed);
    if (idx >= kMaxSamples) return;
    Sample& s = g_samples[idx];
    ucontext_t* uc = static_cast<ucontext_t*>(ctx);
    s.t = nowNs() - g_periodStart.load(std::memory_order_relaxed);
    s.inUpdate = g_inUpdate.load(std::memory_order_relaxed);
    int n = 0;
    s.pc[n++] = uc->uc_mcontext.pc;
    s.pc[n++] = uc->uc_mcontext.regs[30];
    std::uintptr_t sp = uc->uc_mcontext.sp;
    std::uintptr_t fp = uc->uc_mcontext.regs[29];
    // Frame-pointer walk: fp -> {previous fp, return address}; stay in a sane window above sp and strictly increasing.
    while (n < kMaxFrames && fp > sp && fp - sp < (8u << 20) && (fp & 7) == 0) {
        const std::uintptr_t* f = reinterpret_cast<const std::uintptr_t*>(fp);
        const std::uintptr_t next = f[0];
        const std::uintptr_t ret = f[1];
        if (ret == 0) break;
        s.pc[n++] = ret;
        if (next <= fp) break;
        fp = next;
    }
    s.n = n;
    g_nSamples.store(idx + 1, std::memory_order_release);
}

void* watchdog(void*) {
    std::uint64_t lastSample = 0;
    for (;;) {
        timespec ts{0, 3000000};
        nanosleep(&ts, nullptr);
        const std::uint64_t start = g_periodStart.load(std::memory_order_relaxed);
        if (start == 0 || g_gameTid == 0) continue;
        const std::uint64_t now = nowNs();
        const std::uint64_t age = now - start;
        if (age < kSampleAfterNs || age > 3000000000ull) continue;
        if (g_nSamples.load(std::memory_order_acquire) >= kMaxSamples) continue;
        if (now - lastSample < kSampleEveryNs + kSampleGrowNs * static_cast<std::uint64_t>(g_nSamples.load(std::memory_order_relaxed))) continue;
        lastSample = now;
        syscall(SYS_tgkill, getpid(), g_gameTid, SIGPROF);
    }
    return nullptr;
}

void logSymbol(char* out, size_t cap, std::uintptr_t pc) {
    Dl_info info;
    if (pc && dladdr(reinterpret_cast<void*>(pc), &info) && info.dli_fname) {
        const char* base = std::strrchr(info.dli_fname, '/');
        base = base ? base + 1 : info.dli_fname;
        if (info.dli_sname) {
            std::snprintf(out, cap, "%s%s%s+0x%lx", std::strcmp(base, "libDungeonHunter2.so") == 0 ? "" : base, std::strcmp(base, "libDungeonHunter2.so") == 0 ? "" : "!", info.dli_sname, static_cast<unsigned long>(pc - reinterpret_cast<std::uintptr_t>(info.dli_saddr)));
        } else {
            std::snprintf(out, cap, "%s+0x%lx", base, static_cast<unsigned long>(pc - reinterpret_cast<std::uintptr_t>(info.dli_fbase)));
        }
    } else {
        std::snprintf(out, cap, "0x%lx", static_cast<unsigned long>(pc));
    }
}

void reportLong(std::uint64_t periodNs, std::uint64_t updateNs) {
    char line[2600];
    int p = std::snprintf(line, sizeof line, "long period=%.1fms update=%.1fms cats:", periodNs / 1e6, updateNs / 1e6);
    for (int c = 0; c < kCatCount; ++c) {
        const std::uint64_t ns = g_catNs[c].load(std::memory_order_relaxed);
        if (ns > 500000ull && p < 1300) {
            p += std::snprintf(line + p, sizeof line - p, " %s=%.1fms/%u", kCatNames[c], ns / 1e6, g_catCount[c].load(std::memory_order_relaxed));
        }
    }
    emit(line);
    const int n = g_nSamples.load(std::memory_order_acquire);
    for (int i = 0; i < n && i < kMaxSamples; ++i) {
        const Sample& s = g_samples[i];
        int q = std::snprintf(line, sizeof line, "  s%d t=%.1fms %s:", i, s.t / 1e6, s.inUpdate ? "update" : "outside");
        for (int k = 0; k < s.n && k < 14; ++k) {
            char sym[160];
            logSymbol(sym, sizeof sym, s.pc[k]);
            q += std::snprintf(line + q, sizeof line - q, " %s%s", k ? "< " : "", sym);
            if (q > 2300) break;
        }
        emit(line);
    }
}

void report(const char* what, const Stat& s) {
    char line[200];
    std::snprintf(line, sizeof line, "stats %s n=%d avg=%.2f max=%.1f >25=%d >33=%d >50=%d >100=%d", what, s.n, s.n ? s.sum / s.n : 0.0, s.max,
                  s.over25, s.over33, s.over50, s.over100);
    emit(line);
}

}  // namespace

void frameBegin() {
    const std::uint64_t now = nowNs();
    if (!g_started) {
        g_started = true;
        g_gameTid = gettid();
        struct sigaction sa;
        std::memset(&sa, 0, sizeof sa);
        sa.sa_sigaction = profHandler;
        sa.sa_flags = SA_SIGINFO | SA_RESTART;
        sigaction(SIGPROF, &sa, nullptr);
        pthread_t t;
        if (pthread_create(&t, nullptr, watchdog, nullptr) == 0) pthread_detach(t);
        g_nextReport = now + 5000000000ull;
    }
    if (g_prevStart != 0) {
        const std::uint64_t period = now - g_prevStart;
        if (period < 3000000000ull) {
            g_period.add(period / 1e6);
            if (period >= kLongNs) reportLong(period, g_prevUpdateNs);
        }
    }
    g_nSamples.store(0, std::memory_order_release);
    for (int c = 0; c < kCatCount; ++c) {
        g_catNs[c].store(0, std::memory_order_relaxed);
        g_catCount[c].store(0, std::memory_order_relaxed);
    }
    g_prevStart = now;
    g_updateStart = now;
    g_periodStart.store(now, std::memory_order_relaxed);
    g_inUpdate.store(true, std::memory_order_relaxed);
}

void frameEnd() {
    const std::uint64_t now = nowNs();
    g_inUpdate.store(false, std::memory_order_relaxed);
    g_prevUpdateNs = now - g_updateStart;
    g_update.add(g_prevUpdateNs / 1e6);
    // Category spikes: a single category over 4 ms in one frame is logged even when the frame itself is not over 50 ms.
    {
        std::uint64_t worst = 0;
        for (int c = 0; c < kCatCount; ++c) {
            if (c == kOther || c == kLog) continue;
            const std::uint64_t ns = g_catNs[c].load(std::memory_order_relaxed);
            if (ns > worst) worst = ns;
        }
        if (worst > 4000000ull) {
            char line[400];
            int p = std::snprintf(line, sizeof line, "spike update=%.1fms cats:", g_prevUpdateNs / 1e6);
            for (int c = 0; c < kCatCount; ++c) {
                const std::uint64_t ns = g_catNs[c].load(std::memory_order_relaxed);
                if (ns > 500000ull) p += std::snprintf(line + p, sizeof line - p, " %s=%.1fms/%u", kCatNames[c], ns / 1e6, g_catCount[c].load(std::memory_order_relaxed));
            }
            emit(line);
        }
    }
    if (now >= g_nextReport) {
        report("update", g_update);
        report("period", g_period);
        g_update = Stat();
        g_period = Stat();
        g_nextReport = now + 5000000000ull;
    }
}

}  // namespace dh2prof

#endif
