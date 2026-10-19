/* Stand-in for libStormGLOFT.so (arm32 only in the original APK; libDungeonHunter2.so does not link it, the Java class just loads it).
 * First-boot debugging aid: on load it installs a guest-side crash handler that logs pc, lr, sp and a stack-scan backtrace of
 * addresses inside libDungeonHunter2.so (as offsets, symbolize with tools/trackb/boot/symbolize.sh), because the Android
 * ndk_translation tombstone has no guest registers for a jump to a non-executable address. */
#define _GNU_SOURCE
#include <android/log.h>
#include <link.h>
#include <signal.h>
#include <stdint.h>
#include <pthread.h>
#include <stdio.h>
#include <string.h>
#include <ucontext.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdarg.h>

static uintptr_t g_base, g_end;

static int phdr_cb(struct dl_phdr_info* info, size_t sz, void* data) {
    (void)sz; (void)data;
    if (info->dlpi_name && strstr(info->dlpi_name, "libDungeonHunter2.so")) {
        g_base = info->dlpi_addr;
        for (int i = 0; i < info->dlpi_phnum; i++)
            if (info->dlpi_phdr[i].p_type == PT_LOAD) {
                uintptr_t e = info->dlpi_addr + info->dlpi_phdr[i].p_vaddr + info->dlpi_phdr[i].p_memsz;
                if (e > g_end) g_end = e;
            }
    }
    return 0;
}

/* Always-on crash record: the same lines also go to <external files dir>/dh2_native_crash.txt (the app's own directory, writable under scoped
 * storage), which DataSetup picks up on the next launch and shows / copies into dh2_crash.txt. Opened lazily inside the handler. */
static int g_cfd = -2;
static void crash_open(void) {
    if (g_cfd != -2) return;
    char cmd[256] = {0}, path[512];
    int f = open("/proc/self/cmdline", O_RDONLY);
    if (f >= 0) { read(f, cmd, sizeof cmd - 1); close(f); }
    snprintf(path, sizeof path, "/sdcard/Android/data/%s/files/dh2_native_crash.txt", cmd);
    g_cfd = open(path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
}
static void LOGE(const char* fmt, ...) {
    char line[700];
    va_list ap; va_start(ap, fmt); vsnprintf(line, sizeof line - 1, fmt, ap); va_end(ap);
    __android_log_write(ANDROID_LOG_ERROR, "DH2CRASH", line);
    if (g_cfd >= 0) { size_t n = strlen(line); line[n] = 10; write(g_cfd, line, n + 1); }
}

static void handler(int sig, siginfo_t* si, void* ctx) {
    static volatile int busy;
    signal(sig, SIG_DFL);
    if (busy++) return;
    ucontext_t* uc = (ucontext_t*)ctx;
    crash_open();
    uintptr_t pc = uc->uc_mcontext.pc, lr = uc->uc_mcontext.regs[30], sp = uc->uc_mcontext.sp, fp = uc->uc_mcontext.regs[29];
    dl_iterate_phdr(phdr_cb, 0);
    LOGE("signal %d code %d addr %p  base %p", sig, si->si_code, si->si_addr, (void*)g_base);
    LOGE("pc %p (off 0x%lx)  lr %p (off 0x%lx)  sp %p  fp %p", (void*)pc, (unsigned long)(pc - g_base), (void*)lr,
         (unsigned long)(lr - g_base), (void*)sp, (void*)fp);
    for (int i = 0; i < 31; i += 4)
        LOGE("x%-2d %016lx x%-2d %016lx x%-2d %016lx x%-2d %016lx", i, (unsigned long)uc->uc_mcontext.regs[i], i + 1,
             (unsigned long)uc->uc_mcontext.regs[i + 1], i + 2, (unsigned long)uc->uc_mcontext.regs[i + 2], i + 3,
             (unsigned long)(i + 3 < 31 ? uc->uc_mcontext.regs[i + 3] : 0));
    int n = 0;
    for (uintptr_t* p = (uintptr_t*)sp; n < 40 && (uintptr_t)p < sp + 16384; p++) {
        uintptr_t v = *p;
        if (v >= g_base && v < g_end) { LOGE("stack %p: off 0x%lx", (void*)p, (unsigned long)(v - g_base)); n++; }
    }
}

/* The game prints diagnostics with printf (stdout is /dev/null in an Android app): forward stdout and stderr to logcat. */
static void* pump(void* arg) {
    int fd = (int)(intptr_t)arg;
    char buf[2048];
    char chunk[4096];
    size_t n = 0;
    for (;;) {
        /* read in chunks: a byte per read() made the pump slower than the game's unbuffered printf and let the pipe fill (the writer then blocks) */
        ssize_t r = read(fd, chunk, sizeof chunk);
        if (r <= 0) break;
        for (ssize_t i = 0; i < r; i++) {
            char c = chunk[i];
            if (c == '\n' || n == sizeof buf - 1) { buf[n] = 0; __android_log_write(ANDROID_LOG_INFO, "DH2STDOUT", buf); n = 0; }
            else buf[n++] = c;
        }
    }
    return 0;
}

__attribute__((constructor)) static void install(void) {
    int fds[2];
    if (pipe(fds) == 0) {
        fcntl(fds[1], 1031 /* F_SETPIPE_SZ */, 1 << 20);
        dup2(fds[1], 1);
        dup2(fds[1], 2);
        setvbuf(stdout, 0, _IONBF, 0);
        setvbuf(stderr, 0, _IONBF, 0);
        pthread_t t;
        pthread_create(&t, 0, pump, (void*)(intptr_t)fds[0]);
        printf("stdout pump up\n");
    }
    struct sigaction sa;
    memset(&sa, 0, sizeof sa);
    sa.sa_sigaction = handler;
    sa.sa_flags = SA_SIGINFO | SA_NODEFER;
    LOGE("crash handler installed");
    int sigs[] = {SIGSEGV, SIGBUS, SIGILL, SIGFPE, SIGABRT, SIGTRAP};
    for (unsigned i = 0; i < sizeof sigs / sizeof *sigs; i++) { int r = sigaction(sigs[i], &sa, 0); LOGE("sigaction %d -> %d", sigs[i], r); }
}
