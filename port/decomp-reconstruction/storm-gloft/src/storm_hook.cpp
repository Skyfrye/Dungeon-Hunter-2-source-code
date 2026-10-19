// Reconstructed from libStormGLOFT.so (armeabi-v7a), 0x37134..0x395a4 and 0x371e4. JNI_OnLoad, the GOT patcher and the
// memory helpers. The original walked bionic's soinfo (dlopen handle fields +0x8c..+0xc0) and hooked ARM32 code through
// adbi / Android-Inline-Hook / HookZz; this arm64 build keeps the behaviour of the import hooks (GOT slot replacement
// through the ELF dynamic section) and leaves the machine-code hooks out (STORMGLOFT.md, "arm64").
#include "storm_gloft.hpp"
#include <android/log.h>
#include <elf.h>
#include <jni.h>
#include <link.h>
#include <sys/mman.h>
#include <cerrno>
#include <cstring>
#include <dlfcn.h>
#include <unistd.h>

#define SLOG(...) __android_log_print(ANDROID_LOG_INFO, "StormGLOFT", __VA_ARGS__)

int storm_my_width, storm_my_height, storm_orig_width, storm_orig_height;

static const char kStorm[] = "/data/data/com.gameloft.android.GAND.GloftD2SS/lib/libStormGLOFT.so";
static const char kGame[] = "/data/data/com.gameloft.android.GAND.GloftD2SS/lib/libDungeonHunter2.so";

// 0x37ce0: make every page of [addr, addr+len] rwx (mprotect 7).
int ChangePageProperty(unsigned long addr, unsigned int len) {
    unsigned long pg = (unsigned long)sysconf(_SC_PAGESIZE);
    unsigned long n = len / pg + 1;
    void* p = (void*)(addr & ~(pg - 1));
    for (unsigned long i = 0; i < n; ++i)
        if (mprotect(p, pg, PROT_READ | PROT_WRITE | PROT_EXEC) == -1) {
            SLOG("mprotect error:%s", strerror(errno));
            return 0;
        }
    return 1;
}

// 0x37d8c
int SafeMemRead(unsigned long addr, unsigned int len, char* out) {
    if (!out) { SLOG("pszOutBuffer is null"); return 0; }
    if (!ChangePageProperty(addr, len)) { SLOG("ChangePageProperty error"); return 0; }
    memcpy(out, (const void*)addr, len);
    SLOG("SafeMemRead success");
    return 1;
}

// 0x37ecc
int SafeMemWrite(unsigned long addr, unsigned int len, char* in) {
    if (!in) { SLOG("pszInBuffer is null"); return 0; }
    if (!ChangePageProperty(addr, len)) { SLOG("ChangePageProperty error"); return 0; }
    memcpy((void*)addr, in, len);
    SLOG("SafeMemWrite success");
    return 1;
}

static uintptr_t moduleBase(const char* lib) {
    struct Q { const char* name; uintptr_t base; } q = {strrchr(lib, '/') ? strrchr(lib, '/') + 1 : lib, 0};
    dl_iterate_phdr([](dl_phdr_info* i, size_t, void* d) {
        Q* q = (Q*)d;
        if (i->dlpi_name && strstr(i->dlpi_name, q->name)) { q->base = i->dlpi_addr; return 1; }
        return 0;
    }, &q);
    return q.base;
}

// 0x3800c: logs the four bytes at module base + offset, then overwrites them with the constant -476029947 (0xE3 ARM word,
// stored verbatim; meaningless as an arm64 opcode, so nothing in this build calls it).
int PatchOpcode(const char* lib, unsigned long offset) {
    SLOG("In ModifyIBored.");
    uintptr_t base = moduleBase(lib);
    if (!base) { SLOG("get module base address error."); return 0; }
    char cur[4] = {0, 0, 0, 0};
    unsigned long at = base + offset;
    if (SafeMemRead(at, 4, cur) == 1)
        for (int i = 0; i < 4; ++i) SLOG("Opcode[%02d]:0x%2X", i, (unsigned char)cur[i]);
    int32_t word = -476029947;
    if (SafeMemWrite(at, 4, (char*)&word) == 1) SLOG("patch success.");
    return 0;
}

// 0x371e4: replace the JUMP_SLOT of `symbol` in `lib`'s import table with `replacement`; returns the previous target
// (0 when the library or symbol is not found). arm64: R_AARCH64_JUMP_SLOT (1026) / GLOB_DAT (1025) in DT_JMPREL / DT_RELA.
int hook_import_function(const char* lib, const char* symbol, unsigned char* replacement) {
    if (!lib || !symbol || !replacement) return 0;
    struct Q { const char* name; const char* sym; void* repl; uintptr_t old; } q = {
        strrchr(lib, '/') ? strrchr(lib, '/') + 1 : lib, symbol, replacement, 0};
    dl_iterate_phdr([](dl_phdr_info* i, size_t, void* d) -> int {
        Q* q = (Q*)d;
        if (!i->dlpi_name || !strstr(i->dlpi_name, q->name)) return 0;
        const ElfW(Dyn)* dyn = nullptr;
        for (int k = 0; k < i->dlpi_phnum; ++k)
            if (i->dlpi_phdr[k].p_type == PT_DYNAMIC) dyn = (const ElfW(Dyn)*)(i->dlpi_addr + i->dlpi_phdr[k].p_vaddr);
        if (!dyn) return 1;
        const ElfW(Sym)* symtab = nullptr; const char* strtab = nullptr;
        const ElfW(Rela)* rel[2] = {nullptr, nullptr}; size_t relsz[2] = {0, 0};
        for (; dyn->d_tag != DT_NULL; ++dyn) {
            switch (dyn->d_tag) {
                case DT_SYMTAB: symtab = (const ElfW(Sym)*)dyn->d_un.d_ptr; break;
                case DT_STRTAB: strtab = (const char*)dyn->d_un.d_ptr; break;
                case DT_JMPREL: rel[0] = (const ElfW(Rela)*)dyn->d_un.d_ptr; break;
                case DT_PLTRELSZ: relsz[0] = dyn->d_un.d_val; break;
                case DT_RELA: rel[1] = (const ElfW(Rela)*)dyn->d_un.d_ptr; break;
                case DT_RELASZ: relsz[1] = dyn->d_un.d_val; break;
            }
        }
        // dynamic pointers are absolute in a loaded image on Android, relative on older linkers: normalise
        auto fix = [&](uintptr_t v) { return v < i->dlpi_addr ? v + i->dlpi_addr : v; };
        if (!symtab || !strtab) return 1;
        symtab = (const ElfW(Sym)*)fix((uintptr_t)symtab); strtab = (const char*)fix((uintptr_t)strtab);
        for (int t = 0; t < 2; ++t) {
            if (!rel[t]) continue;
            const ElfW(Rela)* r = (const ElfW(Rela)*)fix((uintptr_t)rel[t]);
            for (size_t n = 0; n < relsz[t] / sizeof(ElfW(Rela)); ++n) {
                unsigned ty = ELF64_R_TYPE(r[n].r_info);
                if (ty != 1026 /*JUMP_SLOT*/ && ty != 1025 /*GLOB_DAT*/) continue;
                if (strcmp(strtab + symtab[ELF64_R_SYM(r[n].r_info)].st_name, q->sym) != 0) continue;
                uintptr_t* slot = (uintptr_t*)(i->dlpi_addr + r[n].r_offset);
                ChangePageProperty((unsigned long)slot, sizeof(*slot));
                q->old = *slot;
                *slot = (uintptr_t)q->repl;
                return 1;
            }
        }
        return 1;
    }, &q);
    return (int)q.old;
}

// Where an inline hook would hand over the game's original natives (set by the ARM32-only hook layer; unset on arm64).
typedef int (*NativeFn)(void*, void*, int, int);
static NativeFn g_origSetPhone, g_origResize;
extern "C" {
// 0x395a4: DungeonHunter2.nativeSetPhone(w, h) wrapper: remember the device size, run the original at the design size.
int storm_nativeSetPhone(void* env, void* cls, int w, int h) {
    storm_my_width = w; storm_my_height = h;
    int r = g_origSetPhone ? g_origSetPhone(env, cls, storm_orig_width, storm_orig_height) : 0;
    getuid();
    return r;
}
// 0x39690: GameRenderer.nativeResize wrapper
int storm_nativeResize(void* env, void* cls, int, int) {
    int r = g_origResize ? g_origResize(env, cls, storm_orig_width, storm_orig_height) : 0;
    getuid();
    return r;
}
// 0x39754
int storm_nativeGetWidth() { getuid(); return storm_orig_width; }

// 0x3713c
jint JNI_OnLoad(JavaVM*, void*) {
    // original: hook_export_function(kStorm); hook_inline_function(kGame, 0x530dd0, false)  [ARM32 machine-code hooks]
    (void)kStorm;
    hook_import_function(kGame, "glShaderSource", (unsigned char*)my_glShaderSource);
    hook_import_function(kGame, "glGetString", (unsigned char*)my_glGetString);
    return JNI_VERSION_1_6;   // 0x10006
}
}
