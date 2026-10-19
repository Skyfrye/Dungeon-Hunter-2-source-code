// Track B diagnostic, Android only, always on: a std::terminate handler that records WHERE an uncaught C++ exception was thrown.
// When __cxa_throw finds no handler it calls std::terminate from inside the throwing frame, so the stack at that moment still holds the
// throw site. The handler logs (tag DH2TERM and <external files dir>/dh2_term.txt) the exception type, what() and an unwinder backtrace
// (offsets into libDungeonHunter2.so: symbolise with llvm-addr2line -e libdh2-unstripped.so 0x<off>), then aborts so debuggerd writes its
// tombstone as well.
#ifdef __ANDROID__
#include <android/log.h>
#include <cxxabi.h>
#include <dlfcn.h>
#include <fcntl.h>
#include <unistd.h>
#include <unwind.h>

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <typeinfo>

namespace {

int g_fd = -1;

void out(const char* line) {
    __android_log_write(ANDROID_LOG_ERROR, "DH2TERM", line);
    if (g_fd >= 0) {
        size_t n = std::strlen(line);
        if (write(g_fd, line, n) < 0) {}
        if (write(g_fd, "\n", 1) < 0) {}
    }
}

struct Trace {
    int n;
};

_Unwind_Reason_Code step(struct _Unwind_Context* ctx, void* arg) {
    Trace* t = static_cast<Trace*>(arg);
    uintptr_t pc = _Unwind_GetIP(ctx);
    if (pc == 0) return _URC_END_OF_STACK;
    Dl_info info;
    char line[512];
    if (dladdr(reinterpret_cast<void*>(pc), &info) && info.dli_fname) {
        const char* base = std::strrchr(info.dli_fname, '/');
        base = base ? base + 1 : info.dli_fname;
        std::snprintf(line, sizeof line, "#%02d pc %08lx  %s (%s)", t->n, static_cast<unsigned long>(pc - reinterpret_cast<uintptr_t>(info.dli_fbase)), base,
                      info.dli_sname ? info.dli_sname : "?");
    } else {
        std::snprintf(line, sizeof line, "#%02d pc %p", t->n, reinterpret_cast<void*>(pc));
    }
    out(line);
    return ++t->n >= 60 ? _URC_END_OF_STACK : _URC_NO_REASON;
}

void onTerminate() {
    static bool busy = false;
    if (!busy) {
        busy = true;
        char cmd[256] = {0}, path[512];
        int f = open("/proc/self/cmdline", O_RDONLY);
        if (f >= 0) {
            if (read(f, cmd, sizeof cmd - 1) < 0) {}
            close(f);
        }
        std::snprintf(path, sizeof path, "/sdcard/Android/data/%s/files/dh2_term.txt", cmd);
        g_fd = open(path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
        char line[600];
        const std::type_info* ti = abi::__cxa_current_exception_type();
        if (ti) {
            int status = 0;
            char* dem = abi::__cxa_demangle(ti->name(), nullptr, nullptr, &status);
            std::snprintf(line, sizeof line, "uncaught exception of type %s", dem ? dem : ti->name());
            std::free(dem);
            out(line);
            try {
                throw;
            } catch (const std::exception& e) {
                std::snprintf(line, sizeof line, "what(): %s", e.what());
                out(line);
            } catch (...) {
                out("(not derived from std::exception)");
            }
        } else {
            out("std::terminate without a current exception");
        }
        Trace t = {0};
        _Unwind_Backtrace(step, &t);
        if (g_fd >= 0) fsync(g_fd);
    }
    std::abort();
}

struct Installer {
    Installer() { std::set_terminate(onTerminate); }
} g_installer;

}  // namespace
#endif
