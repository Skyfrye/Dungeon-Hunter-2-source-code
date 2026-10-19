// Port deviation (UI12, TRACK-B.md decision 15; not in the original): hand-written layout rules for menu pages.
//
// The menu movies are stretched over the whole surface exactly as the 2012 binary did (MenuFlash2DCamera::Update, scale mode 0), so
// every element sits where the original put it and edges reach the screen edges. On a screen ratio that ui_layouts.txt has a section
// for, the rules of that section restore the SHAPE of the elements they name; nothing else is touched, and nothing is decided by code.
// Any other ratio, or the port setting screenfit = 0: pure stretch.
//
// ui_layouts.txt (data/port/ in the files dir; shipped in the APK as assets/dh2port/ui_layouts.txt, copied by DataSetup):
//   [ratio 2.20-2.40]                            a section: surface width/height in this range (both ends included)
//   menu_MainMenu/btn_MENU_OPTIONS  shape  anchor=right
//   menu_CharacterSheetNew/buttons/#3  shape  anchor=center  scale=1.1  dx=-8  dy=0
//   menu_splash/#0  cover
// A path is the page state's name followed by clip names down the display lists; "#N" names the N-th clip of a display list (for
// unnamed clips), "*" matches any one clip. Operations, all about the clip's bound point named by `anchor` (center by default;
// left, right, top, bottom, top-left, top-right, bottom-left, bottom-right):
//   shape  the clip is scaled back against the stretch so it looks as on a 16:9 screen (x scaled by 1/r when the screen is wider than
//          16:9, y scaled by r when it is taller; r = (W/H) / (16/9));
//   cover  the other axis is scaled up instead, so a picture keeps its shape and covers the screen (cropped);
//   keep   no change (documents that the stretch is wanted for that clip).
//   amount=a applies only that share of the correction (r^a: amount=0.5 on a picture = half cropped, half stretched);
//   anchor= / edge= also take "x,y" fractions (anchor: of the clip's bound, edge: of the stage);
//   grow   (a flag) the clip also takes its section's scale= (a header option: [ratio 1.00-1.45 scale=1.25]); given to pages that
//          have room to spare, so their buttons get bigger on that screen while dense pages keep the 16:9 size;
//   scale=k multiplies the result uniformly; dx/dy move the clip in stage pixels (after the stretch).
// The clip's timeline matrix is remembered and the rule re-applied every frame, so animations stay correct; a path that is not found
// does nothing. The same pass runs before the hit test (MenuPageLayoutForCursor), so taps land on what is drawn.
//
// Authoring aid: the port setting dumpui=1 (the "!" dialog's Save mark sets it) or DH2_FIT_DEBUG=1 prints every clip path of the
// visible pages with its bound (logcat tag DH2FIT on Android, stderr on the host runner).
#include <cmath>
#include <cstdarg>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <vector>

#if defined(__ANDROID__)
#include <android/log.h>
#endif

#include "core-platform/port_settings.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/global/screen_size.hpp"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_root.h"
#include "gameswf/gameswf_sprite.h"

extern const char* RES_PATH;  // the files dir (core-platform app_entry; the runner's --data)

namespace {

// ---- logging ---------------------------------------------------------------------------------------------------------------------
void Log(const char* fmt, ...) {
    char line[640];
    va_list ap;
    va_start(ap, fmt);
    std::vsnprintf(line, sizeof line, fmt, ap);
    va_end(ap);
#if defined(__ANDROID__)
    __android_log_print(ANDROID_LOG_INFO, "DH2FIT", "%s", line);
#else
    // stdout: the runner sends stdout ("w") and stderr ("a") into the same game.log through two FILE streams, and buffered stdout
    // overwrites what stderr wrote at the same offsets.
    std::fputs(line, stdout);
    std::fputc('\n', stdout);
    std::fflush(stdout);
#endif
}

// ---- rules ------------------------------------------------------------------------------------------------------------------------
enum Op { kKeep = 0, kShape = 1, kCover = 2 };

struct Rule {
    std::vector<std::string> path;  // [0] = state name, then clip names / "#N" / "*"
    Op op = kKeep;
    float ax = 0.5f, ay = 0.5f;     // anchor in the bound, 0..1
    float scale = 1.0f;
    bool grow = false;              // takes the section's scale= (pages with room to spare on that screen)
    float amount = 1.0f;            // share of the ratio correction applied (0..1; 0.5 = half shape, half stretch)
    float dx = 0.0f, dy = 0.0f;     // stage pixels
    bool edge = false;              // pivot = a stage point (ex, ey in 0..1 of the stage) instead of the clip's own bound
    float ex = 0.5f, ey = 0.5f;
    std::string pivot;              // pivot = the anchor point of this sibling's bound (a group shares one pivot)
};

struct Section {
    float lo = 0.0f, hi = 0.0f;
    float scale = 1.0f;             // [ratio lo-hi scale=k]: multiplies every rule's scale (bigger elements on a tablet-shaped screen)
    std::vector<Rule> rules;
};

std::vector<Section> g_sections;
bool g_loaded = false;

std::string Trim(const std::string& s) {
    size_t a = 0, b = s.size();
    while (a < b && (s[a] == ' ' || s[a] == '\t' || s[a] == '\r' || s[a] == '\n')) ++a;
    while (b > a && (s[b - 1] == ' ' || s[b - 1] == '\t' || s[b - 1] == '\r' || s[b - 1] == '\n')) --b;
    return s.substr(a, b - a);
}

bool ParseAnchor(const std::string& v, float& ax, float& ay) {
    struct A { const char* n; float x, y; };
    static const A kA[] = {{"center", 0.5f, 0.5f}, {"left", 0.0f, 0.5f}, {"right", 1.0f, 0.5f}, {"top", 0.5f, 0.0f},
                           {"bottom", 0.5f, 1.0f}, {"top-left", 0.0f, 0.0f}, {"top-right", 1.0f, 0.0f},
                           {"bottom-left", 0.0f, 1.0f}, {"bottom-right", 1.0f, 1.0f}};
    for (const A& a : kA) {
        if (v == a.n) {
            ax = a.x;
            ay = a.y;
            return true;
        }
    }
    // "x,y" fractions (0..1) of the bound (anchor=) or of the stage (edge=)
    float x = 0.0f, y = 0.0f;
    char tail = 0;
    if (std::sscanf(v.c_str(), "%f,%f%c", &x, &y, &tail) == 2) {
        ax = x;
        ay = y;
        return true;
    }
    return false;
}

// "#" starts a comment unless it is a "/#N" path index.
std::string StripComment(const std::string& in) {
    for (size_t p = in.find('#'); p != std::string::npos; p = in.find('#', p + 1)) {
        const bool index = p > 0 && (in[p - 1] == '/' || in[p - 1] == '=') && p + 1 < in.size() && in[p + 1] >= '0' && in[p + 1] <= '9';
        if (!index) return in.substr(0, p);
    }
    return in;
}

void Load() {
    g_loaded = true;
    g_sections.clear();
    std::string path = RES_PATH != nullptr ? RES_PATH : "";
    if (!path.empty() && path.back() != '/' && path.back() != '\\') {
        path += '/';
    }
    path += "data/port/ui_layouts.txt";
    std::FILE* f = std::fopen(path.c_str(), "r");
    if (f == nullptr) {
        Log("FITDBG no layout rules (%s): pure stretch", path.c_str());
        return;
    }
    char buf[512];
    int lineNo = 0;
    while (std::fgets(buf, sizeof buf, f) != nullptr) {
        ++lineNo;
        const std::string line = Trim(StripComment(buf));
        if (line.empty()) {
            continue;
        }
        if (line[0] == '[') {
            Section s;
            if (std::sscanf(line.c_str(), "[ratio %f-%f", &s.lo, &s.hi) == 2) {
                const size_t sc = line.find("scale=");
                if (sc != std::string::npos) s.scale = static_cast<float>(std::atof(line.c_str() + sc + 6));
                if (s.scale <= 0.0f) s.scale = 1.0f;
                g_sections.push_back(s);
            } else {
                Log("FITDBG ui_layouts.txt:%d bad section '%s'", lineNo, line.c_str());
            }
            continue;
        }
        if (g_sections.empty()) {
            Log("FITDBG ui_layouts.txt:%d rule outside a section", lineNo);
            continue;
        }
        std::vector<std::string> words;
        size_t i = 0;
        while (i < line.size()) {
            while (i < line.size() && (line[i] == ' ' || line[i] == '\t')) ++i;
            size_t j = i;
            while (j < line.size() && line[j] != ' ' && line[j] != '\t') ++j;
            if (j > i) words.push_back(line.substr(i, j - i));
            i = j;
        }
        if (words.size() < 2) {
            Log("FITDBG ui_layouts.txt:%d needs '<path> <op>'", lineNo);
            continue;
        }
        Rule r;
        const std::string& p = words[0];
        for (size_t a = 0;;) {
            const size_t b = p.find('/', a);
            r.path.push_back(p.substr(a, b == std::string::npos ? std::string::npos : b - a));
            if (b == std::string::npos) break;
            a = b + 1;
        }
        if (words[1] == "shape") {
            r.op = kShape;
        } else if (words[1] == "cover") {
            r.op = kCover;
        } else if (words[1] == "keep") {
            r.op = kKeep;
        } else {
            Log("FITDBG ui_layouts.txt:%d unknown op '%s'", lineNo, words[1].c_str());
            continue;
        }
        bool ok = true;
        for (size_t k = 2; k < words.size(); ++k) {
            const size_t eq = words[k].find('=');
            const std::string key = eq == std::string::npos ? words[k] : words[k].substr(0, eq);
            const std::string val = eq == std::string::npos ? "" : words[k].substr(eq + 1);
            if (key == "anchor") {
                ok = ok && ParseAnchor(val, r.ax, r.ay);
            } else if (key == "edge") {
                r.edge = true;
                ok = ok && ParseAnchor(val, r.ex, r.ey);
            } else if (key == "pivot") {
                r.pivot = val;
            } else if (key == "scale") {
                r.scale = static_cast<float>(std::atof(val.c_str()));
            } else if (key == "grow" && eq == std::string::npos) {
                r.grow = true;
            } else if (key == "amount") {
                r.amount = static_cast<float>(std::atof(val.c_str()));
                ok = ok && r.amount >= 0.0f && r.amount <= 1.0f;
            } else if (key == "dx") {
                r.dx = static_cast<float>(std::atof(val.c_str()));
            } else if (key == "dy") {
                r.dy = static_cast<float>(std::atof(val.c_str()));
            } else {
                ok = false;
            }
        }
        if (!ok || r.scale <= 0.0f) {
            Log("FITDBG ui_layouts.txt:%d bad option in '%s'", lineNo, line.c_str());
            continue;
        }
        g_sections.back().rules.push_back(r);
    }
    std::fclose(f);
    size_t n = 0;
    for (const Section& s : g_sections) n += s.rules.size();
    Log("FITDBG loaded %d sections, %d rules from %s", static_cast<int>(g_sections.size()), static_cast<int>(n), path.c_str());
}

const Section* SectionFor(float ratio) {
    for (const Section& s : g_sections) {
        if (ratio >= s.lo - 1e-3f && ratio <= s.hi + 1e-3f) {
            return &s;
        }
    }
    return nullptr;
}

// ---- per-clip base / written tracking (animations rewrite matrices; a rewrite becomes the new base) -------------------------------
struct Entry {
    gameswf::character* character;  // identity only
    const MenuFX* movie;
    bool active, seen;
    gameswf::matrix base, written;
};
constexpr int kMaxEntries = 512;
Entry g_entries[kMaxEntries];
int g_entryCount = 0;
const MenuFX* g_currentMovie = nullptr;

// Entries are kept for the whole run: a page that is popped and pushed again still carries the matrix this code wrote, and the entry
// is what tells it apart from a timeline placement (otherwise the shape would be applied twice). A freed clip's address may be reused;
// the new clip's matrix then differs from `written` and is taken as its base. When the table is full, entries not seen in the
// current pass are dropped.
Entry* FindEntry(gameswf::character* c) {
    for (int i = 0; i < g_entryCount; ++i) {
        if (g_entries[i].character == c) return &g_entries[i];
    }
    if (g_entryCount >= kMaxEntries) {
        int kept = 0;
        for (int i = 0; i < g_entryCount; ++i) {
            if (g_entries[i].seen) g_entries[kept++] = g_entries[i];
        }
        g_entryCount = kept;
    }
    if (g_entryCount >= kMaxEntries) return nullptr;
    Entry& e = g_entries[g_entryCount++];
    e.character = c;
    e.movie = g_currentMovie;
    e.active = e.seen = false;
    return &e;
}

// Restores the timeline matrix (if this code wrote the current one) and returns it in `base`.
Entry* Base(gameswf::character* c, gameswf::matrix& base) {
    Entry* e = FindEntry(c);
    const gameswf::matrix current = c->get_matrix();
    if (e == nullptr) {
        base = current;
        return nullptr;
    }
    e->seen = true;
    const bool ours = e->active && std::memcmp(&current, &e->written, sizeof current) == 0;
    // Moved by the game: the scale part is still the one written here and only the translation changed (MenuFX::SetPosition while
    // a skill icon is dragged, Dragable::ResetPosition putting back a matrix saved after the layout). The move is added to the
    // remembered base, so the clip lands where the game put it and its shape is not restored a second time (it would shrink on
    // every move until it disappears).
    const bool moved = !ours && current.m_[0][0] == e->written.m_[0][0] && current.m_[0][1] == e->written.m_[0][1] &&
                       current.m_[1][0] == e->written.m_[1][0] && current.m_[1][1] == e->written.m_[1][1] &&
                       (e->written.m_[0][0] != e->base.m_[0][0] || e->written.m_[1][1] != e->base.m_[1][1] ||
                        e->written.m_[0][1] != e->base.m_[0][1] || e->written.m_[1][0] != e->base.m_[1][0]);
    if (ours) {
        c->set_matrix(e->base);
    } else if (moved) {
        e->base.m_[0][2] += current.m_[0][2] - e->written.m_[0][2];
        e->base.m_[1][2] += current.m_[1][2] - e->written.m_[1][2];
        c->set_matrix(e->base);
    } else {
        e->base = current;
    }
    e->active = false;
    base = e->base;
    return e;
}

// ---- applying ----------------------------------------------------------------------------------------------------------------------
gameswf::character* Child(gameswf::character* parent, const std::string& seg, int which);
float g_r = 1.0f;            // (W/H) / (16/9) of the surface
float g_sectionScale = 1.0f; // the section's scale=

void Apply(gameswf::character* c, const Rule& rule) {
    if (c == nullptr || !c->is(1) || c->get_parent() == nullptr) return;
    gameswf::matrix base;
    Entry* e = Base(c, base);
    if (rule.op == kKeep && rule.scale == 1.0f && rule.dx == 0.0f && rule.dy == 0.0f) return;
    float sx = 1.0f, sy = 1.0f;
    const float r = rule.amount == 1.0f ? g_r : std::pow(g_r, rule.amount);
    if (rule.op == kShape) {
        if (r > 1.0f) sx = 1.0f / r; else sy = r;
    } else if (rule.op == kCover) {
        if (r > 1.0f) sy = r; else sx = 1.0f / r;
    }
    const float k = rule.scale * (rule.op == kShape && rule.grow ? g_sectionScale : 1.0f);
    sx *= k;
    sy *= k;
    // Pivot: a stage point (edge=), the anchor point of a sibling's bound (pivot=), or the anchor point of the clip's own bound.
    float px = 0.0f, py = 0.0f;
    gameswf::character* pivotClip = c;
    if (!rule.pivot.empty()) {
        gameswf::character* sib = Child(c->get_parent(), rule.pivot, 0);
        if (sib != nullptr) pivotClip = sib;
    }
    if (rule.edge) {
        gameswf::root* root = c->get_root();
        if (root == nullptr || root->m_def.get_ptr() == nullptr) return;
        const gameswf::rect& st = root->m_def->m_frame_size;
        const gameswf::point stagePt(static_cast<float>(st.m_x_min) + (static_cast<float>(st.m_x_max) - static_cast<float>(st.m_x_min)) * rule.ex,
                                     static_cast<float>(st.m_y_min) + (static_cast<float>(st.m_y_max) - static_cast<float>(st.m_y_min)) * rule.ey);
        gameswf::point local;
        c->get_parent()->get_world_matrix()->transform_by_inverse(&local, stagePt);
        px = local.m_x;
        py = local.m_y;
    } else {
        gameswf::rect b;
        if (pivotClip != c) {
            // the sibling's bound under ITS timeline matrix (it may carry a rule of its own)
            Entry* pe = FindEntry(pivotClip);
            const gameswf::matrix cur = pivotClip->get_matrix();
            const bool ours = pe != nullptr && pe->active && std::memcmp(&cur, &pe->written, sizeof cur) == 0;
            if (ours) pivotClip->set_matrix(pe->base);
            pivotClip->get_bound(&b);
            if (ours) pivotClip->set_matrix(pe->written);
        } else {
            c->get_bound(&b);  // parent space, base matrix
        }
        const float x0 = static_cast<float>(b.m_x_min), x1 = static_cast<float>(b.m_x_max);
        const float y0 = static_cast<float>(b.m_y_min), y1 = static_cast<float>(b.m_y_max);
        px = x0 + (x1 - x0) * rule.ax;
        py = y0 + (y1 - y0) * rule.ay;
    }
    gameswf::matrix m = base;
    m.m_[0][0] = base.m_[0][0] * sx;
    m.m_[0][1] = base.m_[0][1] * sx;
    m.m_[1][0] = base.m_[1][0] * sy;
    m.m_[1][1] = base.m_[1][1] * sy;
    m.m_[0][2] = px + sx * (base.m_[0][2] - px);
    m.m_[1][2] = py + sy * (base.m_[1][2] - py);
    if (rule.dx != 0.0f || rule.dy != 0.0f) {
        const gameswf::matrix* pw = c->get_parent()->get_world_matrix();  // stage pixels -> parent space
        const float kx = std::fabs(static_cast<float>(pw->m_[0][0])) > 1e-6f ? static_cast<float>(pw->m_[0][0]) : 1.0f;
        const float ky = std::fabs(static_cast<float>(pw->m_[1][1])) > 1e-6f ? static_cast<float>(pw->m_[1][1]) : 1.0f;
        m.m_[0][2] += rule.dx * 20.0f / kx;
        m.m_[1][2] += rule.dy * 20.0f / ky;
    }
    c->set_matrix(m);
    if (e != nullptr) {
        e->written = c->get_matrix();
        e->active = true;
    }
}

gameswf::character* Child(gameswf::character* parent, const std::string& seg, int which) {
    if (parent == nullptr || !parent->is(2)) return nullptr;
    auto* s = static_cast<gameswf::sprite_instance*>(parent);
    if (seg.size() > 1 && seg[0] == '#') {
        const int idx = std::atoi(seg.c_str() + 1);
        return which == 0 && idx >= 0 && idx < s->m_display_list.size() ? s->m_display_list.get_character(idx) : nullptr;
    }
    int found = 0;
    for (int i = 0; i < s->m_display_list.size(); ++i) {
        gameswf::character* ch = s->m_display_list.get_character(i);
        if (ch == nullptr) continue;
        if (seg == "*" || std::strcmp(ch->get_name().c_str(), seg.c_str()) == 0) {
            if (found++ == which) return ch;
        }
    }
    return nullptr;
}

// Walks the rule's path below `node` (segment index k) and applies it to every match ("*" fans out).
void ApplyPath(gameswf::character* node, const Rule& rule, size_t k) {
    if (k == rule.path.size()) {
        Apply(node, rule);
        return;
    }
    const std::string& seg = rule.path[k];
    if (seg == "*") {
        for (int w = 0;; ++w) {
            gameswf::character* c = Child(node, seg, w);
            if (c == nullptr) break;
            ApplyPath(c, rule, k + 1);
        }
        return;
    }
    gameswf::character* c = Child(node, seg, 0);
    if (c != nullptr) ApplyPath(c, rule, k + 1);
}

// ---- dump --------------------------------------------------------------------------------------------------------------------------
int g_dumpLeft = 0;

void DumpTree(gameswf::character* node, const std::string& path, int depth) {
    if (node == nullptr || !node->is(2) || depth > 3) return;
    auto* s = static_cast<gameswf::sprite_instance*>(node);
    for (int i = 0; i < s->m_display_list.size(); ++i) {
        gameswf::character* c = s->m_display_list.get_character(i);
        if (c == nullptr || !c->is(1)) continue;
        const std::string name = c->get_name().c_str();
        const std::string p = path + "/" + (name.empty() ? "#" + std::to_string(i) : name);
        gameswf::rect b;
        c->get_bound(&b);
        c->get_parent()->get_world_matrix()->transform(&b);  // stage space
        Log("FITDBG path %s vis=%d stage=(%.0f,%.0f)-(%.0f,%.0f)", p.c_str(), c->m_visible ? 1 : 0, b.m_x_min / 20.0f, b.m_y_min / 20.0f,
            b.m_x_max / 20.0f, b.m_y_max / 20.0f);
        DumpTree(c, p, depth + 1);
    }
}

bool IsHudState(const char* name) {
    return name != nullptr && (std::strncmp(name, "menu_HUD_", 9) == 0 || std::strcmp(name, "menu_DebugHUD") == 0);
}

void LayoutState(MenuFX::State* state, const Section* section, bool dump) {
    if (state == nullptr) return;
    gameswf::character* page = state->GetCharacter();
    if (page == nullptr) return;
    if (dump) {
        Log("FITDBG page %s", state->m_name);
        DumpTree(page, state->m_name, 0);
    }
    if (section == nullptr) return;
    for (const Rule& rule : section->rules) {
        if (rule.path.empty() || rule.path[0] != state->m_name) continue;
        if (rule.path.size() == 1) {
            Apply(page, rule);
        } else {
            ApplyPath(page, rule, 1);
        }
    }
}

}  // namespace

// Called by MenuManager::Draw for every movie after its camera update and before Render, and before the hit test. `hudMovie`: the slot-3
// movie, whose HUD states are laid out by HudAnchorUpdate (its other pages, the pause page and its dialogs, take rules here).
void MenuPageLayoutUpdate(MenuFX* movie, bool hudMovie) {
    if (movie == nullptr) return;
    if (!g_loaded) Load();
    g_currentMovie = movie;
    if (dh2port::Get("dumpui", 0) != 0) {
        dh2port::Set("dumpui", 0);
        g_dumpLeft = 4;  // the four movies, once each
        Log("FITDBG dump begin surface=%dx%d ratio=%.3f", Width_Screen, Height_Screen,
            Height_Screen > 0 ? static_cast<float>(Width_Screen) / static_cast<float>(Height_Screen) : 0.0f);
    }
    // DH2_FIT_DEBUG (host runner): dump a movie's pages whenever the set of its visible pages changes, 20 frames after the change
    // (opening animations have settled by then).
    bool dump = g_dumpLeft > 0;
    if (std::getenv("DH2_FIT_DEBUG") != nullptr) {
        static const MenuFX* movies[8] = {};
        static std::string lastSig[8];
        static int settle[8] = {};
        std::string sig;
        for (int s = 0; s < movie->m_stack.m_size; ++s) {
            if (movie->m_stack.m_data[s] != nullptr) sig += std::string(movie->m_stack.m_data[s]->m_name) + ",";
        }
        if (movie->GetCurrentState() != nullptr) sig += std::string("|") + movie->GetCurrentState()->m_name;
        int slot = -1;
        for (int k = 0; k < 8; ++k) {
            if (movies[k] == movie) slot = k;
        }
        for (int k = 0; k < 8 && slot < 0; ++k) {
            if (movies[k] == nullptr) {
                movies[k] = movie;
                slot = k;
            }
        }
        if (slot < 0) slot = 7;
        if (sig != lastSig[slot]) {
            lastSig[slot] = sig;
            settle[slot] = 20;
        } else if (settle[slot] > 0 && --settle[slot] == 0) {
            dump = true;
        }
    }
    for (int i = 0; i < g_entryCount; ++i) {
        if (g_entries[i].movie == movie) g_entries[i].seen = false;
    }
    const float ratio = Height_Screen > 0 ? static_cast<float>(Width_Screen) / static_cast<float>(Height_Screen) : 16.0f / 9.0f;
    g_r = ratio / (16.0f / 9.0f);
    const Section* section = ScreenUsesAspectFit() ? SectionFor(ratio) : nullptr;
    g_sectionScale = section != nullptr ? section->scale : 1.0f;
    MenuFX::StateArray& stack = movie->m_stack;
    bool currentDone = false;
    MenuFX::State* current = movie->GetCurrentState();
    for (int s = 0; s < stack.m_size; ++s) {
        MenuFX::State* state = stack.m_data[s];
        if (state == nullptr || (hudMovie && IsHudState(state->m_name))) continue;
        LayoutState(state, section, dump);
        currentDone = currentDone || state == current;
    }
    if (current != nullptr && !currentDone && !(hudMovie && IsHudState(current->m_name))) {
        LayoutState(current, section, dump);
    }
    if (g_dumpLeft > 0) --g_dumpLeft;
}

// RenderFX::UpdateCursor: the same pass before the hit test (a page whose timeline re-places clips is back at its authored matrices
// at Update time).
void MenuPageLayoutForCursor(const RenderFX* fx) {
    MenuManager* manager = MenuManager::GetInstance();
    if (fx == nullptr || manager == nullptr || manager->m_multiMenuManager == nullptr) return;
    for (int slot = 0; slot < 4; ++slot) {
        MenuFX* movie = manager->m_multiMenuManager->m_menuFX[slot];
        if (movie != nullptr && static_cast<const RenderFX*>(movie) == fx) {
            MenuPageLayoutUpdate(movie, slot == 3);
            return;
        }
    }
}

// Host-runner helper (tools/trackb/ui_walk.py, script command `tapclip <path>`): the centre of the clip named by `path`
// ("menu_State/child/#N/...") on the visible pages, in surface pixels. False when the path is not on screen.
bool MenuClipSurfaceCenter(const char* path, int* x, int* y) {
    MenuManager* manager = MenuManager::GetInstance();
    if (path == nullptr || manager == nullptr || manager->m_multiMenuManager == nullptr) return false;
    Rule r;
    const std::string p = path;
    for (size_t a = 0;;) {
        const size_t b = p.find('/', a);
        r.path.push_back(p.substr(a, b == std::string::npos ? std::string::npos : b - a));
        if (b == std::string::npos) break;
        a = b + 1;
    }
    for (int slot = 0; slot < 4; ++slot) {
        MenuFX* movie = manager->m_multiMenuManager->m_menuFX[slot];
        if (movie == nullptr) continue;
        std::vector<MenuFX::State*> states;
        for (int s = 0; s < movie->m_stack.m_size; ++s) states.push_back(movie->m_stack.m_data[s]);
        states.push_back(movie->GetCurrentState());
        for (MenuFX::State* st : states) {
            if (st == nullptr || r.path[0] != st->m_name || st->GetCharacter() == nullptr) continue;
            gameswf::character* c = st->GetCharacter();
            for (size_t k = 1; k < r.path.size() && c != nullptr; ++k) c = Child(c, r.path[k], 0);
            if (c == nullptr || c->get_parent() == nullptr) continue;
            gameswf::rect b;
            c->get_bound(&b);
            c->get_parent()->get_world_matrix()->transform(&b);  // stage twips
            gameswf::root* root = movie->GetRoot();
            if (root == nullptr || root->m_def.get_ptr() == nullptr) continue;
            const gameswf::rect& stage = root->m_def->m_frame_size;
            const float sw = static_cast<float>(stage.m_x_max) - static_cast<float>(stage.m_x_min);
            const float sh = static_cast<float>(stage.m_y_max) - static_cast<float>(stage.m_y_min);
            const float cx = (static_cast<float>(b.m_x_min) + static_cast<float>(b.m_x_max)) * 0.5f;
            const float cy = (static_cast<float>(b.m_y_min) + static_cast<float>(b.m_y_max)) * 0.5f;
            *x = FlashBoxOffsetX(root) + static_cast<int>((cx - static_cast<float>(stage.m_x_min)) / sw * static_cast<float>(FlashBoxWidth(root)));
            *y = FlashBoxOffsetY(root) + static_cast<int>((cy - static_cast<float>(stage.m_y_min)) / sh * static_cast<float>(FlashBoxHeight(root)));
            return true;
        }
    }
    return false;
}
