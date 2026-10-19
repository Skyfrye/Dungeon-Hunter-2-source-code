// Port settings (Track B, not in the original). See core-platform/port_settings.hpp.
#include "core-platform/port_settings.hpp"

#include <cctype>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <mutex>
#include <string>
#include <vector>

// The screen-fit globals read by the game (game/include/dh2/global/screen_size.hpp). Defined here so that every link group
// (library, tests, host runner, Android) has exactly one definition.
int g_dh2ScreenFitMode = 1;
int g_dh2HudScalePercent = 0;
int g_dh2EnemyBarFollow = 1;

namespace dh2port {
namespace {

struct Entry {
    const char* key;
    int* applied;
    int pending;
    int min, max;
};

int g_dynamicValues[64];  // applied values of keys that are not globals (per-element HUD sizes "hudelem.<style>.<index>")
std::vector<Entry>& Entries() {
    static std::vector<Entry> e = {
        {"screenfit", &g_dh2ScreenFitMode, 1, 0, 1},
        {"hudscale", &g_dh2HudScalePercent, 0, 0, 200},
        {"enemybar", &g_dh2EnemyBarFollow, 1, 0, 1},
    };
    return e;
}
std::vector<std::string>& DynamicKeys() {
    static std::vector<std::string> k;
    return k;
}
std::mutex g_lock;
bool g_dirty = false;
bool g_loaded = false;
std::string g_path;

Entry* Find(const char* key) {
    if (key == nullptr) {
        return nullptr;
    }
    for (Entry& e : Entries()) {
        if (std::strcmp(e.key, key) == 0) {
            return &e;
        }
    }
    return nullptr;
}

// Any other key (letters, digits, '.', '_', '-', at most 63 chars) is created on first use: an int in 0..400, default `fallback`.
Entry* FindOrCreate(const char* key, int fallback) {
    if (Entry* e = Find(key)) {
        return e;
    }
    if (key == nullptr || *key == '\0' || std::strlen(key) > 63 ||
        DynamicKeys().size() >= sizeof g_dynamicValues / sizeof g_dynamicValues[0]) {
        return nullptr;
    }
    for (const char* c = key; *c != '\0'; ++c) {
        if (!(std::isalnum(static_cast<unsigned char>(*c)) || *c == '.' || *c == '_' || *c == '-')) {
            return nullptr;
        }
    }
    DynamicKeys().reserve(sizeof g_dynamicValues / sizeof g_dynamicValues[0]);  // keeps c_str() stable
    DynamicKeys().emplace_back(key);
    int* slot = &g_dynamicValues[DynamicKeys().size() - 1];
    *slot = fallback;
    Entries().push_back(Entry{DynamicKeys().back().c_str(), slot, fallback, 0, 400});
    return &Entries().back();
}

int Clamp(const Entry& e, int v) {
    return v < e.min ? e.min : (v > e.max ? e.max : v);
}

std::string DefaultPath() {
#if defined(__ANDROID__)
    return "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files/dh2_port.cfg";
#else
    const char* env = std::getenv("DH2_PORT_CFG");
    return env != nullptr ? std::string(env) : std::string();
#endif
}

void SaveLocked() {
    if (g_path.empty()) {
        return;
    }
    std::FILE* f = std::fopen(g_path.c_str(), "w");
    if (f == nullptr) {
        return;
    }
    std::fputs("# Dungeon Hunter 2 Track B port settings (core-platform/port_settings.hpp)\n", f);
    for (const Entry& e : Entries()) {
        std::fprintf(f, "%s=%d\n", e.key, e.pending);
    }
    std::fclose(f);
}

}  // namespace

void Load() {
    std::lock_guard<std::mutex> guard(g_lock);
    g_path = DefaultPath();
    if (!g_path.empty()) {
        if (std::FILE* f = std::fopen(g_path.c_str(), "r")) {
            char line[256];
            while (std::fgets(line, sizeof line, f) != nullptr) {
                char* eq = std::strchr(line, '=');
                if (line[0] == '#' || eq == nullptr) {
                    continue;
                }
                *eq = '\0';
                char* end = eq;
                while (end > line && (end[-1] == ' ' || end[-1] == '\t')) {
                    *--end = '\0';
                }
                if (Entry* e = FindOrCreate(line, std::atoi(eq + 1))) {
                    e->pending = Clamp(*e, std::atoi(eq + 1));
                }
            }
            std::fclose(f);
        }
    }
    // DH2_SCREENFIT / DH2_HUDSCALE override the file for this run (host runner experiments; harmless on Android).
    for (Entry& e : Entries()) {
        char name[64] = "DH2_";
        std::size_t n = 4;
        for (const char* p = e.key; *p != '\0' && n + 1 < sizeof name; ++p) {
            name[n++] = static_cast<char>(std::toupper(static_cast<unsigned char>(*p)));
        }
        name[n] = '\0';
        if (const char* v = std::getenv(name)) {
            e.pending = Clamp(e, std::atoi(v));
        }
    }
    for (Entry& e : Entries()) {
        *e.applied = e.pending;  // first load: applied directly, before any frame ran
    }
    g_loaded = true;
    g_dirty = false;
}

int Get(const char* key, int fallback) {
    std::lock_guard<std::mutex> guard(g_lock);
    const Entry* e = Find(key);
    return e != nullptr ? e->pending : fallback;
}

void Set(const char* key, int value) {
    std::lock_guard<std::mutex> guard(g_lock);
    Entry* e = FindOrCreate(key, value);
    if (e == nullptr) {
        return;
    }
    value = Clamp(*e, value);
    if (e->pending == value) {
        return;
    }
    e->pending = value;
    g_dirty = true;
    SaveLocked();
}

bool Apply() {
    std::lock_guard<std::mutex> guard(g_lock);
    if (!g_dirty) {
        return false;
    }
    for (Entry& e : Entries()) {
        *e.applied = e.pending;
    }
    g_dirty = false;
    return true;
}

int ScreenFitMode() { return g_dh2ScreenFitMode; }
int HudScalePercentSetting() { return g_dh2HudScalePercent; }

}  // namespace dh2port
