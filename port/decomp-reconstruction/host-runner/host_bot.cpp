// Scripted play helpers of the host runner: high-level commands that drive the hero through the game's own controller and HUD touch paths
// (walk with path-finding, hunt enemies, loot, load a level directly, seeded random play). Script lines: see HOST-RUNNER.md.
#include <cctype>
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <map>
#include <vector>
#include <sstream>
#include <set>
#include <string>
#include <typeinfo>

#include "dh2/SpawnPoint.hpp"
#include "dh2/Application.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "dh2/Character.hpp"
#include "dh2/GSLevel.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ItemObject.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/Level.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/OpenableContainer.hpp"
#include "dh2/DestructibleContainer.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PFRoom.hpp"
#include "dh2/PFFloor.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/ScriptManager.hpp"
#include "pydata-accessors/script_cmd.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/v2Controller.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/TriggerZoneExitLevel.hpp"
#include "dh2/CheckpointZone.hpp"
#include "dh2/TriggerZone.hpp"
#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/Door.hpp"
#include "dh2/Quest.hpp"
#include "dh2/QuestSavegame.hpp"
#include "dh2/PlayerSavegame.hpp"
#include <algorithm>
#include <filesystem>
#include "pydata-accessors/arrays.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_structs_5.hpp"
#include "host_runner.hpp"
#include "dh2/global/native_app_hud_level.hpp"
#include "net-transport/connection_manager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/global/native_player_actions.hpp"
#include "gameswf/gameswf_environment.h"
#include "vendor-gameswf/as_value.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "net-transport/tb/c_net_player_manager.hpp"
#include "net-session-online/c_online.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/tb/online_singleton.hpp"
#include "dh2/global/net_singletons.hpp"

extern "C" int appOnTouch(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8);

namespace dh2host {
void reportMissingCharacters();
namespace {

float g_scale = 1.0f;
int g_frame = 0;

// Touch in script coordinates (2400x1080 surface space).
void touch(int phase, int x, int y, int slot) {
    appOnTouch(phase, static_cast<int>(x * g_scale), static_cast<int>(y * g_scale), g_frame * 33, 1, 0, 0, slot);
}

// HUD buttons (2400x1080, from FIRST-BOOT.md).
const int kAtkX = 2052, kAtkY = 846, kSk1X = 1824, kSk1Y = 696, kSk2X = 2226, kSk2Y = 510, kPotX = 2226, kPotY = 108, kPauseX = 294, kPauseY = 322;

struct Rng {
    unsigned long long s = 88172645463325252ull;
    unsigned next() { s ^= s << 13; s ^= s >> 7; s ^= s << 17; return static_cast<unsigned>(s >> 11); }
    int range(int n) { return n <= 0 ? 0 : static_cast<int>(next() % static_cast<unsigned>(n)); }
};
Rng g_rng;

enum Mode { kNone, kHunt, kLoot, kExplore, kRandom, kExit, kWalkTo, kRoute };
// Route mode: the level's checkpoint zones in name order, then its enabled exit zones. The hero walks from one to the next (fighting what comes
// within 600 units), interacts when it stalls (doors, levers), and gives a waypoint up after 600 frames without progress.
struct Waypoint { std::string name; Point3D<float> pos; bool exit; GameObject* zone; };
bool g_ungate = false, g_heal = false, g_dlgWas = false;
int g_dlgRise = 0;
int g_dlgPeriod = 0, g_dlgStart = 0, g_dlgEnd = 0, g_dlgLast = -1000, g_dlgTaps = 0;  // Q6 dlgtap
int g_clickX = 0, g_clickY = 0, g_clickFrame = -1;   // a scheduled Flash click: down, move after 2 frames, up after 6
struct QueuedClick { int frame, x, y; };
std::vector<QueuedClick> g_clickQueue;                  // further scheduled clicks (rand: pause, then the pause menu's Continue)
int g_exitButtonY = 884;   // fast-travel panel: 884 = travel to the exit's level, 984 = world map
std::vector<Waypoint> g_route;
size_t g_routeIndex = 0;
int g_routeSince = 0, g_routeReached = 0, g_routeSkipped = 0;
float g_routeBest = 1e12f;
Point3D<float> g_walkTarget{0.0f, 0.0f, 0.0f};
int g_kills = 0;
int g_statFrame = 0;
unsigned long long g_statDraws = 0, g_statIndices = 0;
bool g_auto = false;   // autoplay helpers: tap through the death screen and skip cut scenes
int g_deadSince = -1, g_lastAutoTap = 0, g_deaths = 0, g_skips = 0;
float g_walked = 0.0f;   // distance the hero moved since the last levelstat reset
float g_lastX = 0.0f, g_lastY = 0.0f;
bool g_haveLast = false;
Mode g_mode = kNone;
int g_modeEnd = 0;
bool g_atkDown = false;
int g_lastSkill = 0, g_lastPotion = 0, g_lastMove = -100;
int g_exploreGoalFrame = 0;
float g_range = 3000.0f;
int g_stickDownUntil = 0, g_randNext = 0;

// Every registered object (ObjectManager::m_objectMap; the m_objects list is not filled in this build).
std::vector<ObjectBase*> allObjects() {
    std::vector<ObjectBase*> out;
    Application& app = ApplicationGetInstance();
    if (app.m_objectManager == nullptr) return out;
    for (auto& entry : app.m_objectManager->m_objectMap) {
        if (entry.second.m_object != nullptr) out.push_back(entry.second.m_object);
    }
    return out;
}

Character* hero() {
    Application& app = ApplicationGetInstance();
    if (!app.m_playerManager || !GSLevel::s_level) return nullptr;
    return app.m_playerManager->GetLocalPlayerCharacter();
}

float dist2d(const GameObject* a, const GameObject* b) {
    const float dx = a->m_position.X - b->m_position.X, dy = a->m_position.Y - b->m_position.Y;
    return std::sqrt(dx * dx + dy * dy);
}

std::map<const GameObject*, int> g_ignoreUntil;   // targets the hero could not get closer to, ignored until this frame
const GameObject* g_curTarget = nullptr;
float g_progressDist = 1e9f;
int g_progressFrame = 0;

// Gives up on a target the hero does not get closer to (no path, blocked): ignored for a while.
void trackProgress(Character* h, const GameObject* t, float d) {
    if (t != g_curTarget) { g_curTarget = t; g_progressDist = d; g_progressFrame = g_frame; return; }
    if (d < g_progressDist - 25.0f) { g_progressDist = d; g_progressFrame = g_frame; return; }
    if (g_frame - g_progressFrame > 90) { g_ignoreUntil[t] = g_frame + 900; g_curTarget = nullptr; (void)h; }
}

Character* nearestEnemy(Character* h, float maxd) {
    Application& app = ApplicationGetInstance();
    if (!app.m_objectManager) return nullptr;
    Character* best = nullptr;
    float bd = maxd;
    for (Character* o : app.m_objectManager->m_characters) {
        if (o == h || !o->m_enabled || !o->m_visible || o->IsDead()) continue;
        if (!h->AI_IsEnemy(o)) continue;
        auto ig = g_ignoreUntil.find(o);
        if (ig != g_ignoreUntil.end() && g_frame < ig->second) continue;
        const float d = dist2d(h, o);
        if (d < bd) { bd = d; best = o; }
    }
    return best;
}

GameObject* nearestLoot(Character* h, float maxd) {
    Application& app = ApplicationGetInstance();
    if (!app.m_objectManager) return nullptr;
    GameObject* best = nullptr;
    float bd = maxd;
    for (ObjectBase* ob : allObjects()) {
        if (!ob->m_enabled || !ob->m_visible) continue;
        GameObject* g = nullptr;
        if (auto* it = dynamic_cast<ItemObject*>(ob)) g = it;
        else if (auto* ch = dynamic_cast<OpenableContainer*>(ob)) g = ch;
        else if (auto* dc = dynamic_cast<DestructibleContainer*>(ob)) g = dc;
        if (!g) continue;
        auto ig = g_ignoreUntil.find(g);
        if (ig != g_ignoreUntil.end() && g_frame < ig->second) continue;
        const float d = dist2d(h, g);
        if (d < bd) { bd = d; best = g; }
    }
    return best;
}

void atkSet(bool down) {
    if (down == g_atkDown) return;
    g_atkDown = down;
    touch(down ? 1 : 0, kAtkX, kAtkY, 1);
}
void tapAt(int x, int y, int slot) { touch(1, x, y, slot); touch(0, x, y, slot); }

void moveTo(Character* h, const Point3D<float>& p) { h->m_controller->Cmd_MoveTo(p); }

// Navigation for far targets. The game's own search (GameObject::PathTo -> PFWorld::FindPath) is capped at m_maxPath nodes (30 by default),
// so a long move answers nothing. The runner keeps a 150-unit grid of the level's path-finding floor (PFWorld::GetFloorHeightAt, filled
// lazily), finds a grid path with a breadth-first search, and hands the game hops of about 450 units (Cmd_MoveTo, which then paths them).
struct NavGrid {
    const void* level = nullptr;
    float x0 = 0, y0 = 0, z = 0, step = 150.0f;
    int w = 0, hgt = 0;
    std::vector<signed char> cells;   // -1 unknown, 0 no floor, 1 floor
    std::vector<Point3D<float>> path;
    Point3D<float> pathGoal{1e9f, 1e9f, 0.0f};
    int pathFrame = -100000;
};
NavGrid g_nav;

bool navFloor(int i, int j) {
    if (i < 0 || j < 0 || i >= g_nav.w || j >= g_nav.hgt) return false;
    signed char& c = g_nav.cells[static_cast<size_t>(j) * g_nav.w + i];
    if (c < 0) {
        Point3D<float> p{g_nav.x0 + i * g_nav.step, g_nav.y0 + j * g_nav.step, g_nav.z};
        c = Singleton<PFWorld>::s_inst.GetFloorHeightAt(p, nullptr, nullptr, nullptr, nullptr, false) ? 1 : 0;
    }
    return c == 1;
}

bool navPlan(Character* h, const Point3D<float>& target) {
    PFWorld& w = Singleton<PFWorld>::s_inst;
    if (g_nav.level != GSLevel::s_level || g_nav.cells.empty()) {
        g_nav = NavGrid();
        g_nav.level = GSLevel::s_level;
        g_nav.x0 = w.m_boundsMin.X;
        g_nav.y0 = w.m_boundsMin.Y;
        g_nav.z = h->m_position.Z;
        g_nav.w = std::min(1200, static_cast<int>((w.m_boundsMax.X - w.m_boundsMin.X) / g_nav.step) + 1);
        g_nav.hgt = std::min(1200, static_cast<int>((w.m_boundsMax.Y - w.m_boundsMin.Y) / g_nav.step) + 1);
        if (g_nav.w <= 0 || g_nav.hgt <= 0) return false;
        g_nav.cells.assign(static_cast<size_t>(g_nav.w) * g_nav.hgt, -1);
    }
    g_nav.z = h->m_position.Z;
    auto cellOf = [](float v, float o) { return static_cast<int>(std::lround((v - o) / g_nav.step)); };
    const int si = cellOf(h->m_position.X, g_nav.x0), sj = cellOf(h->m_position.Y, g_nav.y0);
    int ti = cellOf(target.X, g_nav.x0), tj = cellOf(target.Y, g_nav.y0);
    // A target off the floor (an enemy on a ledge, a zone centre): the nearest floor cell within 5 cells.
    if (!navFloor(ti, tj)) {
        bool found = false;
        for (int r = 1; r <= 5 && !found; ++r)
            for (int dj = -r; dj <= r && !found; ++dj)
                for (int di = -r; di <= r && !found; ++di)
                    if (navFloor(ti + di, tj + dj)) { ti += di; tj += dj; found = true; }
        if (!found) return false;
    }
    std::vector<int> prev(static_cast<size_t>(g_nav.w) * g_nav.hgt, -2);
    std::vector<int> queue;
    queue.reserve(4096);
    const int start = sj * g_nav.w + si, goal = tj * g_nav.w + ti;
    if (si < 0 || sj < 0 || si >= g_nav.w || sj >= g_nav.hgt) return false;
    prev[start] = -1;
    queue.push_back(start);
    bool reached = false;
    for (size_t q = 0; q < queue.size() && queue.size() < 200000; ++q) {
        const int cur = queue[q];
        if (cur == goal) { reached = true; break; }
        const int ci = cur % g_nav.w, cj = cur / g_nav.w;
        static const int kDi[8] = {1, -1, 0, 0, 1, 1, -1, -1}, kDj[8] = {0, 0, 1, -1, 1, -1, 1, -1};
        for (int k = 0; k < 8; ++k) {
            const int ni = ci + kDi[k], nj = cj + kDj[k];
            if (ni < 0 || nj < 0 || ni >= g_nav.w || nj >= g_nav.hgt) continue;
            const int n = nj * g_nav.w + ni;
            if (prev[n] != -2 || !navFloor(ni, nj)) continue;
            if (k >= 4 && (!navFloor(ci + kDi[k], cj) || !navFloor(ci, cj + kDj[k]))) continue;   // no corner cutting
            prev[n] = cur;
            queue.push_back(n);
        }
    }
    g_nav.path.clear();
    if (!reached) return false;
    for (int c = goal; c >= 0; c = prev[c]) g_nav.path.push_back(Point3D<float>{g_nav.x0 + (c % g_nav.w) * g_nav.step, g_nav.y0 + (c / g_nav.w) * g_nav.step, h->m_position.Z});
    std::reverse(g_nav.path.begin(), g_nav.path.end());
    g_nav.pathGoal = target;
    return true;
}

void stepToward(Character* h, const Point3D<float>& target) {
    const float dx = target.X - h->m_position.X, dy = target.Y - h->m_position.Y;
    const float d = std::sqrt(dx * dx + dy * dy);
    if (d < 500.0f) {
        moveTo(h, target);
        return;
    }
    const float gx = g_nav.pathGoal.X - target.X, gy = g_nav.pathGoal.Y - target.Y;
    if (g_nav.path.empty() || gx * gx + gy * gy > 300.0f * 300.0f || g_frame - g_nav.pathFrame > 240) {
        g_nav.pathFrame = g_frame;
        navPlan(h, target);
    }
    if (!g_nav.path.empty()) {
        // The furthest path point within 450 units of the hero, starting from the point nearest to him.
        size_t best = 0;
        float bestD = 1e18f;
        for (size_t i = 0; i < g_nav.path.size(); ++i) {
            const float ex = g_nav.path[i].X - h->m_position.X, ey = g_nav.path[i].Y - h->m_position.Y;
            if (ex * ex + ey * ey < bestD) { bestD = ex * ex + ey * ey; best = i; }
        }
        size_t hop = best;
        while (hop + 1 < g_nav.path.size()) {
            const float ex = g_nav.path[hop + 1].X - h->m_position.X, ey = g_nav.path[hop + 1].Y - h->m_position.Y;
            if (ex * ex + ey * ey > 450.0f * 450.0f) break;
            ++hop;
        }
        moveTo(h, g_nav.path[hop]);
        return;
    }
    const float base = std::atan2(dy, dx);
    for (int k = 0; k < 9; ++k) {
        const float off = (k == 0 ? 0.0f : ((k + 1) / 2) * 0.35f * ((k & 1) ? 1.0f : -1.0f));
        for (float r : {700.0f, 400.0f}) {
            Point3D<float> p{h->m_position.X + r * std::cos(base + off), h->m_position.Y + r * std::sin(base + off), h->m_position.Z};
            if (Singleton<PFWorld>::s_inst.GetFloorHeightAt(p, nullptr, nullptr, nullptr, nullptr, false)) {
                moveTo(h, p);
                return;
            }
        }
    }
    moveTo(h, target);
}

void tickHunt(Character* h) {
    static Character* s_last = nullptr;
    if (s_last != nullptr) {
        // The character may have been deleted since (spawned monsters are): only touch it while it is still in the character list.
        bool live = false;
        for (Character* c : ApplicationGetInstance().m_objectManager->m_characters) live = live || c == s_last;
        if (!live) s_last = nullptr;
        else if (s_last->IsDead()) { ++g_kills; s_last = nullptr; }
    }
    Character* e = nearestEnemy(h, g_range);
    if (e != nullptr && dist2d(h, e) < 400.0f) s_last = e;
    if (g_frame % 120 == 0) std::fprintf(g_runnerOut, "[bot] hunt f=%d target=%s d=%.0f hero=(%.0f,%.0f) hp=%d\n", g_frame, e ? e->m_name.c_str() : "-", e ? dist2d(h, e) : -1.0f, h->m_position.X, h->m_position.Y, h->GetHP());
    if (!e) { atkSet(false); return; }
    const float d = dist2d(h, e);
    if (d > 170.0f) {
        atkSet(false);
        trackProgress(h, e, d);
        if (g_frame - g_lastMove >= 20) { stepToward(h, e->m_position); g_lastMove = g_frame; }
    } else {
        h->m_controller->Cmd_LookAt(e->m_position);
        atkSet(true);
        if (g_frame - g_lastSkill >= 50) {
            g_lastSkill = g_frame;
            const int which = g_rng.range(2);
            tapAt(which ? kSk1X : kSk2X, which ? kSk1Y : kSk2Y, 2);
        }
    }
    if (h->GetHP() * 100 < h->GetTotalHP() * 45 && g_frame - g_lastPotion > 120) { g_lastPotion = g_frame; tapAt(kPotX, kPotY, 3); }
}

void tickLoot(Character* h) {
    GameObject* g = nearestLoot(h, g_range);
    if (!g) { atkSet(false); return; }
    if (dist2d(h, g) > 140.0f) {
        atkSet(false);
        trackProgress(h, g, dist2d(h, g));
        if (g_frame - g_lastMove >= 20) { stepToward(h, g->m_position); g_lastMove = g_frame; }
    } else {
        atkSet(true);
    }
}

void tickExplore(Character* h) {
    if (g_frame >= g_exploreGoalFrame) {
        g_exploreGoalFrame = g_frame + 60 + g_rng.range(120);
        for (int tries = 0; tries < 12; ++tries) {
            const float a = static_cast<float>(g_rng.range(628)) / 100.0f, r = 200.0f + g_rng.range(1500);
            Point3D<float> p{h->m_position.X + r * std::cos(a), h->m_position.Y + r * std::sin(a), h->m_position.Z};
            if (Singleton<PFWorld>::s_inst.GetFloorHeightAt(p, nullptr, nullptr, nullptr, nullptr, false)) { moveTo(h, p); break; }
        }
    }
}

// Seeded random play: movement goals, stick drags, attack holds, skill/potion taps, rare pause taps.
void tickRandom(Character* h) {
    if (g_frame >= g_randNext) {
        g_randNext = g_frame + 5 + g_rng.range(40);
        switch (g_rng.range(10)) {
            case 0: case 1: case 2: g_exploreGoalFrame = 0; tickExplore(h); break;
            case 3: {
                atkSet(false);
                const float a = g_rng.range(628) / 100.0f;
                touch(1, 420, 830, 0);
                touch(2, 420 + static_cast<int>(110 * std::cos(a)), 830 + static_cast<int>(110 * std::sin(a)), 0);
                g_stickDownUntil = g_frame + 10 + g_rng.range(50);
            } break;
            case 4: case 5: atkSet(true); break;
            case 6: atkSet(false); break;
            case 7: tapAt(g_rng.range(2) ? kSk1X : kSk2X, g_rng.range(2) ? kSk1Y : kSk2Y, 2); break;
            case 8: tapAt(kPotX, kPotY, 3); break;
            case 9:
                if (g_rng.range(6) == 0) {
                    // Pause (the real button at (176,340), a click) and Continue in the pause menu a little later.
                    g_clickQueue.push_back({g_frame + 2, 176, 340});
                    g_clickQueue.push_back({g_frame + 40 + g_rng.range(60), 1190, 340});
                    g_randNext = g_frame + 160;
                } else {
                    tickHunt(h);
                }
                break;
        }
    }
    if (g_stickDownUntil && g_frame >= g_stickDownUntil) { g_stickDownUntil = 0; touch(0, 420, 830, 0); }
    if (g_frame % 20 == 0) tickHunt(h);
}


// ---- Campaign driver (owner P1): play the story like a player. Per level: hunt everything reachable, loot, route through the checkpoints to the exit, take the exit,
// tap through loading, repeat. Quest log and progress go to [campaign] lines.
bool g_campaign = false;
std::string g_cLevel;
int g_cShotNext = 0, g_cShotN = 0;
bool g_cRouteOnly = false, g_cWarp = false;
int g_cLevelUps = 0;
std::string g_cQuest;
bool g_cOnce = false;
int g_cMenuFrames = 0, g_cLastBack = 0;
int g_cBudget = 26000;
int g_cLastKills = 0, g_cKillFrame = 0;
int g_cPhase = 0, g_cPhaseStart = 0, g_cLevelStart = 0, g_cNoTarget = 0, g_cLastQuestLog = 0, g_cLastTap = 0, g_cRouteTries = 0, g_cEnd = 0;

void questLog(const char* tag) {
    Character* h = hero();
    QuestSavegame* qs = (h && h->m_savegame) ? h->m_savegame->SG_GetQuestSG() : nullptr;
    if (qs == nullptr) return;
    const int d = h->SG_GetGameDifficulty();
    std::string line;
    int n = 0;
    for (Quest* q : qs->m_quests[d]) {
        if (q == nullptr || q->m_state <= 1) continue;
        char b[160];
        std::snprintf(b, sizeof b, " %s=%d", q->m_name ? q->m_name : "?", q->m_state);
        line += b;
        ++n;
    }
    std::fprintf(g_runnerOut, "[quests] %s f=%d diff=%d total=%zu cur=%d prim=%d act=%d nonlocked=%d:%s\n", tag, g_frame, d, qs->m_quests[d].size(), qs->m_currentQuest[d],
                 qs->m_currentPrimaryQuest[d], qs->m_act[d], n, line.c_str());
}


// Screenshot (window runner only) into build/own-p1/shots/<level>/<name>.bmp.
void campaignShot(const std::string& level, const char* name) {
    if (g_screenshotHook == nullptr) return;
    std::string dir = "build/own-p1/shots/" + level;
    for (char& c : dir) if (c == '.') c = '_';
    std::error_code ec;
    std::filesystem::create_directories(dir, ec);
    g_screenshotHook((dir + "/" + name + ".bmp").c_str());
}

int g_routeFightSince = -1, g_touchSince = -1, g_touchFight = 0;
std::set<std::string> g_cVisited;
std::string exitTargetFile(TriggerZoneExitLevel* z) {
    const auto* levels = reinterpret_cast<const Structs::LevelDeclaration*>(Arrays::LevelList::members);
    if (levels == nullptr || z->m_levelIndex < 0 || static_cast<std::uint32_t>(z->m_levelIndex) >= Arrays::LevelList::size || levels[z->m_levelIndex].LevelFile == nullptr) return "?";
    return static_cast<const char*>(levels[z->m_levelIndex].LevelFile);
}
// Enabled exit zones, unvisited targets first (story order: lowest LevelList index first).
std::vector<TriggerZoneExitLevel*> sortedExits() {
    std::vector<TriggerZoneExitLevel*> v;
    for (ObjectBase* ob : allObjects())
        if (auto* z = dynamic_cast<TriggerZoneExitLevel*>(ob); z != nullptr && ob->m_enabled) v.push_back(z);
    std::stable_sort(v.begin(), v.end(), [](TriggerZoneExitLevel* a, TriggerZoneExitLevel* b) {
        const bool va = g_cVisited.count(exitTargetFile(a)) != 0, vb = g_cVisited.count(exitTargetFile(b)) != 0;
        if (va != vb) return !va;
        return a->m_levelIndex < b->m_levelIndex;
    });
    return v;
}

// The world map's job: the fast-travel destinations the hero has unlocked (Arrays::FastTravelList, Visible = SG_GetFastTravelIdUnlocked) that are not visited yet.
// Returns the LevelList file of the first one (lowest LevelList row first) and its entry point, or "" when there is none.
std::string worldMapNext(Character* h, int* entryPoint, bool log) {
    const auto* rows = reinterpret_cast<const Structs::FastTravelDestination*>(Arrays::FastTravelList::members);
    const auto* levels = reinterpret_cast<const Structs::LevelDeclaration*>(Arrays::LevelList::members);
    std::string best;
    int bestRow = 1 << 30, bestEntry = 0;
    for (std::uint32_t i = 0; rows != nullptr && i < Arrays::FastTravelList::size; ++i) {
        const bool unlocked = h->SG_GetFastTravelIdUnlocked(static_cast<int>(i), -1);
        const char* key = static_cast<const char*>(rows[i].LevelName);
        const int row = key != nullptr ? pydata::FindMemberName(Arrays::LevelList::m_memberNames, static_cast<int>(Arrays::LevelList::size), key) : -1;
        const char* file = (row >= 0 && levels[row].LevelFile) ? static_cast<const char*>(levels[row].LevelFile) : "?";
        const bool seen = g_cVisited.count(file) != 0;
        if (log) std::fprintf(g_runnerOut, "[worldmap] %u %s -> %s entry=%d unlocked=%d visited=%d\n", i, key ? key : "?", file, rows[i].EntryPointId, unlocked ? 1 : 0, seen ? 1 : 0);
        if (unlocked && !seen && row >= 0 && static_cast<int>(i) < bestRow) { bestRow = static_cast<int>(i); best = file; bestEntry = rows[i].EntryPointId; }   // FastTravelList order = the designers' story order
    }
    if (entryPoint) *entryPoint = bestEntry;
    return best;
}

// Warp the hero to the floor point nearest to (x,y): rings of growing radius, several height hints (the floors of a level lie at different heights).
bool warpNear(Character* h, float x, float y, float zExit) {
    const float zs[5] = {zExit, h->m_position.Z, 52.0f, 184.0f, 255.0f};
    for (float r = 0.0f; r <= 2400.0f; r += 150.0f)
        for (int a = 0; a < (r == 0.0f ? 1 : 16); ++a)
            for (float zh : zs) {
                Point3D<float> p{x + r * std::cos(a * 0.3927f), y + r * std::sin(a * 0.3927f), zh};
                float height = 0.0f;
                if (Singleton<PFWorld>::s_inst.GetFloorHeightAt(p, &height, nullptr, nullptr, nullptr, false)) {
                    p.Z = height;
                    h->Ctrl_WarpTo(p);
                    std::fprintf(g_runnerOut, "[campaign] warped to (%.0f,%.0f,%.0f), r=%.0f from the target\n", p.X, p.Y, p.Z, r);
                    return true;
                }
            }
    return false;
}

// Spend the attribute and skill points like the hero screen's '+' buttons (NativeStatsAssignPoint / NativeSkillsTrainSkill).
void spendPoints(int frame, Character* h) {
    (void)frame;
    for (int i = 0; i < 60 && h->PROPS_GetInt(148, false) > 0; ++i) { if (i % 2) h->IncStatEnd(); else h->IncStatStr(); }   // spend the points like the hero screen's '+' (NativeStatsAssignPoint)
    for (int i = 0, tries = 0; i < 40 && tries < 40 && h->PROPS_GetInt(157, false) > 0; ++tries) { if (h->IncSkill(tries % 3, false)) ++i; }
    std::fprintf(g_runnerOut, "[campaign] hero level %d str/end spent, points left stat=%d skill=%d hp=%d\n", h->PROPS_GetInt(19, false), h->PROPS_GetInt(148, false), h->PROPS_GetInt(157, false), h->GetTotalHP());
}

void campaignRoute(int frame, bool exitOnly = false, bool cpOnly = false) {
    g_route.clear();
    std::vector<Waypoint> exits;
    for (ObjectBase* ob : allObjects()) {
        if (auto* c = dynamic_cast<CheckpointZone*>(ob); c != nullptr && !exitOnly) g_route.push_back({ob->m_name, c->m_position, false, c});
    }
    for (TriggerZoneExitLevel* z : cpOnly ? std::vector<TriggerZoneExitLevel*>() : sortedExits()) {
        exits.push_back({z->m_name, z->m_position, true, z});
        std::fprintf(g_runnerOut, "[campaign] exit %s -> %s (index %d)%s\n", z->m_name.c_str(), exitTargetFile(z).c_str(), z->m_levelIndex, g_cVisited.count(exitTargetFile(z)) ? " visited" : "");
    }
    std::sort(g_route.begin(), g_route.end(), [](const Waypoint& a, const Waypoint& b) { return a.name < b.name; });
    if (cpOnly) {   // then every room of the level, nearest first: bosses, levers and scripted events wait in the rooms
        std::vector<Waypoint> rooms;
        for (ObjectBase* ob : allObjects())   // story triggers (cut scenes, boss arenas, ambushes) fire when the hero stands in their volume
            if (auto* tz = dynamic_cast<TriggerZone*>(ob); tz != nullptr && typeid(*ob) == typeid(TriggerZone) && ob->m_enabled && tz->m_absAabb[3] - tz->m_absAabb[0] < 3000.0f)
                rooms.push_back({"zone " + ob->m_name, tz->m_position, false, tz});
        for (PFRoom* room : Singleton<PFWorld>::s_inst.m_rooms)
            rooms.push_back({"room " + room->m_name, Point3D<float>{(room->m_boundsMin.X + room->m_boundsMax.X) * 0.5f, (room->m_boundsMin.Y + room->m_boundsMax.Y) * 0.5f, 0.0f}, false, nullptr});
        Character* hh = hero();
        float cx = hh ? hh->m_position.X : 0.0f, cy = hh ? hh->m_position.Y : 0.0f;
        while (!rooms.empty()) {
            size_t bi = 0;
            float bd = 1e18f;
            for (size_t i = 0; i < rooms.size(); ++i) {
                const float ddx = rooms[i].pos.X - cx, ddy = rooms[i].pos.Y - cy, dd = ddx * ddx + ddy * ddy;
                if (dd < bd) { bd = dd; bi = i; }
            }
            cx = rooms[bi].pos.X; cy = rooms[bi].pos.Y;
            g_route.push_back(rooms[bi]);
            rooms.erase(rooms.begin() + static_cast<long>(bi));
        }
    }
    g_route.insert(g_route.end(), exits.begin(), exits.end());
    for (const Waypoint& w : g_route) std::fprintf(g_runnerOut, "[route] waypoint %s%s at (%.0f,%.0f)\n", w.name.c_str(), w.exit ? " (exit)" : "", w.pos.X, w.pos.Y);
    g_exitButtonY = 884;
    g_routeIndex = 0;
    g_touchFight = 0;
    g_routeSince = frame;
    g_routeBest = 1e12f;
    g_routeReached = g_routeSkipped = 0;
    g_mode = kRoute;
    g_modeEnd = frame + 16000;
}

void campaignTick(int frame) {
    if (frame >= g_cEnd) { g_campaign = false; g_mode = kNone; atkSet(false); std::fprintf(g_runnerOut, "[campaign] end f=%d\n", frame); return; }
    Character* h = hero();
    Level* level = GSLevel::s_level;
    const bool ready = h != nullptr && level != nullptr && level->m_loadStep >= 38 && !h->IsDead();
    if (!ready) {
        if ((h == nullptr || (level != nullptr && level->m_loadStep < 38)) && frame - g_cLastTap > 100) { g_clickQueue.push_back({frame, 1200, 540}); g_cLastTap = frame; }
        return;
    }
    if (level->m_levelName != g_cLevel && g_cOnce && !g_cLevel.empty()) {   // one level per campaign command: the script loads the next one
        std::fprintf(g_runnerOut, "[campaign] LEFT %s for %s after %d frames, hero %d/%d hp, level %d, kills %d\n", g_cLevel.c_str(), level->m_levelName.c_str(), frame - g_cLevelStart, h->GetHP(), h->GetTotalHP(), h->PROPS_GetInt(19, false), g_kills);
        g_campaign = false; g_mode = kNone; atkSet(false);
        return;
    }
    if (level->m_levelName != g_cLevel) {
        g_cLevel = level->m_levelName;
        if (g_cVisited.insert(g_cLevel).second && g_cLevelUps > 0) {   // first visit: the hero levels up with the story (cheat switch of the debug build)
            botCommand(frame, "cheats 1");
            for (int i = 0; i < g_cLevelUps; ++i) botCommand(frame, "cheat LevelUp");
            spendPoints(frame, h);
        }
        g_cPhase = 1; g_cPhaseStart = g_cLevelStart = frame; g_cNoTarget = 0; g_cRouteTries = 0; g_cLastQuestLog = frame;
        g_range = 40000.0f;
        g_mode = kHunt; g_modeEnd = frame + 1000000;
        std::fprintf(g_runnerOut, "[campaign] enter %s f=%d hp=%d/%d gold=%d items=%zu\n", g_cLevel.c_str(), frame, h->GetHP(), h->GetTotalHP(), h->m_gold, h->m_items.size());
        questLog("enter");
        reportMissingCharacters();
        if (!g_cQuest.empty()) { botCommand(frame, "setquest " + g_cQuest + " 6"); g_cQuest.clear(); }
        std::fprintf(stderr, "\n[P1-LEVEL] %s\n", g_cLevel.c_str());
        g_cShotNext = frame + 60; g_cShotN = 0;
        if (!g_cRouteOnly) { g_cPhase = 5; g_cPhaseStart = frame; campaignRoute(frame, false, true); }   // first through the checkpoints (fights on the way), then clean up
        if (g_cRouteOnly) { g_cPhase = 3; g_cPhaseStart = frame; if (g_cWarp) { g_cRouteTries = 2; g_cPhase = 4; g_cPhaseStart = frame - 1000; } else { campaignRoute(frame); ++g_cRouteTries; } }
        return;
    }
    // A full-screen menu (merchant, hero screen, pause) that the bot opened by pressing attack next to an NPC: close it with the back button.
    if (MenuManager::GetInstance() != nullptr && MenuManager::GetInstance()->HasVisibleMenu()) {
        if (++g_cMenuFrames > 120 && frame - g_cLastBack > 90) {
            g_cLastBack = frame;
            std::fprintf(g_runnerOut, "[campaign] a menu is open at f=%d (%d frames): back button\n", frame, g_cMenuFrames);
            g_clickQueue.push_back({frame, 80, 56});
        }
        return;
    }
    g_cMenuFrames = 0;
    if (g_cShotNext && frame >= g_cShotNext) { campaignShot(g_cLevel, ("enter_" + std::to_string(frame - g_cLevelStart)).c_str()); g_cShotNext = (g_cShotN++ < 20) ? frame + 700 : 0; }
    if (frame - g_cLastQuestLog >= 3000) { g_cLastQuestLog = frame; questLog("periodic"); }
    if ((g_cPhase == 5 || g_cPhase == 1 || g_cPhase == 2) && frame - g_cLevelStart > g_cBudget) {   // level time budget: go for the exit
        std::fprintf(g_runnerOut, "[campaign] level time budget used in %s (phase %d): to the exit\n", g_cLevel.c_str(), g_cPhase);
        g_cPhase = 3; g_cPhaseStart = frame; campaignRoute(frame, true); ++g_cRouteTries;
        return;
    }
    const int inPhase = frame - g_cPhaseStart;
    if (g_cPhase == 5) {   // checkpoints
        if (g_mode != kRoute) {
            std::fprintf(g_runnerOut, "[campaign] checkpoints done f=%d reached=%d skipped=%d\n", frame, g_routeReached, g_routeSkipped);
            campaignShot(g_cLevel, "checkpoints_end");
            g_cPhase = 1; g_cPhaseStart = frame; g_cNoTarget = 0; g_cKillFrame = frame; g_mode = kHunt; g_modeEnd = frame + 1000000;
        }
    } else if (g_cPhase == 1) {   // hunt
        if (nearestEnemy(h, 40000.0f) == nullptr) ++g_cNoTarget; else g_cNoTarget = 0;
        if (g_kills != g_cLastKills) { g_cLastKills = g_kills; g_cKillFrame = frame; }
        if (g_cNoTarget > 240 || inPhase > 6000 || (inPhase > 1500 && frame - std::max(g_cKillFrame, g_cPhaseStart) > 1500)) {
            std::fprintf(g_runnerOut, "[campaign] hunt done f=%d (%d frames) kills=%d\n", frame, inPhase, g_kills);
            g_cPhase = 2; g_cPhaseStart = frame; g_cNoTarget = 0; g_mode = kLoot; g_modeEnd = frame + 1000000;
        }
    } else if (g_cPhase == 2) {   // loot
        if (nearestLoot(h, 40000.0f) == nullptr) ++g_cNoTarget; else g_cNoTarget = 0;
        if (g_cNoTarget > 120 || inPhase > 1800) {
            std::fprintf(g_runnerOut, "[campaign] loot done f=%d (%d frames) items=%zu gold=%d\n", frame, inPhase, h->m_items.size(), h->m_gold);
            g_cPhase = 3; g_cPhaseStart = frame; campaignRoute(frame); ++g_cRouteTries;
        }
    } else if (g_cPhase == 3) {   // route to the exit; the route command clears g_mode when the exit panel was pressed
        if (g_mode != kRoute) { g_cPhase = 4; g_cPhaseStart = frame; std::fprintf(g_runnerOut, "[campaign] route finished f=%d reached=%d skipped=%d\n", frame, g_routeReached, g_routeSkipped); campaignShot(g_cLevel, "route_end"); botCommand(frame, "near 2500"); if (!g_route.empty()) botCommand(frame, "nearxy " + std::to_string(g_route.back().pos.X) + " " + std::to_string(g_route.back().pos.Y) + " 2500"); }
    } else if (g_cPhase == 4) {   // waiting for the level change
        if (inPhase > 900) {
            std::fprintf(g_runnerOut, "[campaign] STUCK in %s f=%d after the route (try %d)\n", g_cLevel.c_str(), frame, g_cRouteTries);
            questLog("stuck");
            if (g_cRouteTries >= 6) { g_cPhase = 1; g_cPhaseStart = frame; g_cRouteTries = 0; g_mode = kHunt; g_modeEnd = frame + 1000000; }
            else {
                if (g_cRouteTries >= 1) {
                    int ep = 0;
                    const std::string next = worldMapNext(h, &ep, true);
                    if (!next.empty() && sortedExits().empty() || (!next.empty() && g_cVisited.count(exitTargetFile(sortedExits().front())) != 0)) {   // every exit leads back: take the world map
                        std::fprintf(g_runnerOut, "[campaign] WORLD MAP: no unvisited exit; travelling to %s (entry %d)\n", next.c_str(), ep);
                        ApplicationGetInstance().LoadLevel(next.c_str(), ep, 0, false, true, 0, false, 0, 0);
                        g_cPhase = 4; g_cPhaseStart = frame;
                        return;
                    }
                }
                if (g_cRouteTries >= 1) {   // blocked for real: warp next to the nearest enabled exit zone and report it
                    if (auto ex = sortedExits(); !ex.empty()) {
                        TriggerZoneExitLevel* z = ex.front();
                        std::fprintf(g_runnerOut, "[campaign] WARP to exit %s (%.0f,%.0f) -> %s from (%.0f,%.0f): route blocked\n", z->m_name.c_str(), z->m_position.X, z->m_position.Y, exitTargetFile(z).c_str(), h->m_position.X, h->m_position.Y);
                        warpNear(h, z->m_position.X, z->m_position.Y, z->m_position.Z);
                    }
                }
                g_cPhase = 3; g_cPhaseStart = frame; campaignRoute(frame, g_cRouteTries >= 1); ++g_cRouteTries;
            }
        }
    }
}

}  // namespace

// Called every frame before the game runs. Handles the timed modes.
void botTick(int frame, const Options& opt) {
    g_frame = frame;
    g_scale = opt.scriptScale;
    if (Character* w = hero()) {
        if (g_haveLast) {
            const float dx = w->m_position.X - g_lastX, dy = w->m_position.Y - g_lastY;
            const float step = std::sqrt(dx * dx + dy * dy);
            if (step < 400.0f) g_walked += step;  // a warp (spawn, respawn) is not walking
        }
        g_lastX = w->m_position.X;
        g_lastY = w->m_position.Y;
        g_haveLast = true;
    } else {
        g_haveLast = false;
    }
    if (g_clickFrame < 0 && !g_clickQueue.empty() && frame >= g_clickQueue.front().frame) {
        g_clickX = g_clickQueue.front().x;
        g_clickY = g_clickQueue.front().y;
        g_clickFrame = frame;
        g_clickQueue.erase(g_clickQueue.begin());
    }
    if (g_clickFrame >= 0) {
        if (frame == g_clickFrame) touch(1, g_clickX, g_clickY, 0);
        else if (frame == g_clickFrame + 2) touch(2, g_clickX, g_clickY, 0);
        else if (frame == g_clickFrame + 6) { touch(0, g_clickX, g_clickY, 0); g_clickFrame = -1; }
    }
    if (g_auto && frame - g_lastAutoTap > 45) {
        Character* a = hero();
        if (a != nullptr && a->IsDead()) {
            if (g_deadSince < 0) { g_deadSince = frame; ++g_deaths; }
            if (frame - g_deadSince > 90) { touch(1, 1200, 540, 0); touch(2, 1200, 540, 0); touch(0, 1200, 540, 0); g_lastAutoTap = frame; }
        } else {
            g_deadSince = -1;
            if (ScriptManager::s_inst.m_inCutScene) { touch(1, 160, 90, 0); touch(2, 160, 90, 0); touch(0, 160, 90, 0); g_lastAutoTap = frame; ++g_skips; }
        }
    }
    if (g_dlgPeriod > 0 && frame >= g_dlgStart && frame < g_dlgEnd) {  // Q6: tap through cut scene / dialogue like a player, only while one is showing
        const bool showing = !MenuMessageManager<DialogMsg, 1>::s_inst.m_queues[0].empty();
        if (showing && !g_dlgWas) g_dlgRise = frame;
        g_dlgWas = showing;
        if (showing && frame - g_dlgLast >= g_dlgPeriod && frame - g_dlgRise >= g_dlgPeriod) { touch(1, 1200, 540, 0); touch(0, 1200, 540, 0); g_dlgLast = frame; ++g_dlgTaps; std::fprintf(g_runnerOut, "[dlgtap] f=%d taps=%d cut=%d dq=%zu%c", frame, g_dlgTaps, ScriptManager::s_inst.m_inCutScene ? 1 : 0, MenuMessageManager<DialogMsg, 1>::s_inst.m_queues[0].size(), 10); }
    }
    if (g_heal) { if (Character* hh = hero()) if (hh->GetHP() < hh->GetTotalHP() / 2) hh->SetHP(hh->GetTotalHP()); }  // Q6: stands in for the potions a player drinks
    if (g_ungate && ScriptManager::s_inst.m_inCutScene) {  // Q6 experiment: the boss timers run during the cut scene once the boss is shown (stands in for an unknown original difference)
        for (Character* o : ApplicationGetInstance().m_objectManager->m_characters) {
            if (o->m_name.find("SwampKing") == std::string::npos || !o->m_visible) continue;
            ScriptManager::s_inst.m_inCutScene = false;
            o->CharTimers::Update();
            ScriptManager::s_inst.m_inCutScene = true;
        }
    }
    if (g_campaign) campaignTick(frame);
    if (g_mode == kNone) return;
    if (frame >= g_modeEnd) {
        atkSet(false);
        if (g_stickDownUntil) { g_stickDownUntil = 0; touch(0, 420, 830, 0); }
        std::fprintf(g_runnerOut, "[bot] mode ended at frame %d\n", frame);
        g_mode = kNone;
        return;
    }
    Character* h = hero();
    if (!h || h->IsDead()) return;
    if (g_mode == kRoute) {
        if (g_routeIndex >= g_route.size()) { g_mode = kNone; atkSet(false); return; }
        const Waypoint& w = g_route[g_routeIndex];
        const float dx = w.pos.X - h->m_position.X, dy = w.pos.Y - h->m_position.Y;
        const float d = std::sqrt(dx * dx + dy * dy);
        if (d < g_routeBest - 30.0f) { g_routeBest = d; g_routeSince = g_frame; }
        const bool touching = w.exit && w.zone != nullptr && w.zone->IsTouching(h);
        if (!touching) g_touchSince = -1;
        if (touching && g_touchFight < 1800 && nearestEnemy(h, 700.0f) != nullptr) {   // the panel does not show while enemies attack: finish them first
            ++g_touchFight;
            g_touchSince = -1;
            tickHunt(h);
            return;
        }
        if (touching) {
            // TriggerZoneExitLevel::Update shows the HUD fast-travel panel (DisplayFastTravel) while the hero touches the zone.
            atkSet(false);
            h->m_controller->Cmd_Stop();
            if (g_touchSince < 0) g_touchSince = g_frame;
            if (g_frame - g_touchSince < 60) return;   // the panel needs a few frames to show (after a warp the zone has not even updated yet)
            g_touchSince = -1;
            campaignShot(g_cLevel, ("exit_panel_" + std::to_string(g_frame)).c_str());
            std::fprintf(g_runnerOut, "[route] f=%d touching %s: pressing the fast-travel button at y=%d (shown=%d idx=%d unlocked=%d cut=%d)\n", g_frame, w.name.c_str(), g_exitButtonY, dynamic_cast<TriggerZoneExitLevel*>(w.zone) ? (dynamic_cast<TriggerZoneExitLevel*>(w.zone)->m_fastTravelShown ? 1 : 0) : -1, dynamic_cast<TriggerZoneExitLevel*>(w.zone) ? dynamic_cast<TriggerZoneExitLevel*>(w.zone)->m_levelIndex : -1, dynamic_cast<TriggerZoneExitLevel*>(w.zone) ? (dynamic_cast<TriggerZoneExitLevel*>(w.zone)->m_fastTravelUnlocked ? 1 : 0) : -1, ScriptManager::s_inst.m_inCutScene ? 1 : 0);
            g_clickX = 1206;
            g_clickY = g_exitButtonY;
            g_clickFrame = g_frame + 15;
            ++g_routeReached;
            ++g_routeIndex;
            g_mode = kNone;
            return;
        }
        const bool isRoom = w.name.compare(0, 5, "room ") == 0;
        const bool isZone = w.name.compare(0, 5, "zone ") == 0;
        const bool inZone = isZone && w.zone != nullptr && w.zone->IsTouching(h);
        if (inZone || (!isZone && d < (isRoom ? 700.0f : 200.0f)) || g_frame - g_routeSince > (isRoom ? 300 : 600)) {
            const bool reached = inZone || (!isZone && d < (isRoom ? 700.0f : 200.0f));
            std::fprintf(g_runnerOut, "[route] f=%d %s %s%s d=%.0f\n", g_frame, reached ? "reached" : "gave up on", w.name.c_str(), w.exit ? " (exit)" : "", d);
            reached ? ++g_routeReached : ++g_routeSkipped;
            ++g_routeIndex;
            g_routeBest = 1e12f;
            g_routeSince = g_frame;
            atkSet(false);
            return;
        }
        Character* e = nearestEnemy(h, 600.0f);
        if (e != nullptr) {   // a fight is not 'stalled' (but a fight that never ends is)
            if (g_routeFightSince < 0) g_routeFightSince = g_frame;
            if (g_frame - g_routeFightSince < 1500) g_routeSince = g_frame;
            tickHunt(h);
            return;
        }
        g_routeFightSince = -1;
        if (g_frame - g_routeSince > 150 && (g_frame / 40) % 3 == 0) { atkSet(true); return; }   // stalled: interact (door, lever, chest)
        atkSet(false);
        if (g_frame - g_routeSince > 150) {
            // Stalled: a detour. A random reachable floor point within 1500 units that is closer to the waypoint than the hero is.
            if (g_frame - g_lastMove >= 45) {
                for (int tries = 0; tries < 40; ++tries) {
                    const float a = static_cast<float>(g_rng.range(628)) / 100.0f, r = 300.0f + g_rng.range(1200);
                    Point3D<float> p{h->m_position.X + r * std::cos(a), h->m_position.Y + r * std::sin(a), h->m_position.Z};
                    const float pd = std::sqrt((w.pos.X - p.X) * (w.pos.X - p.X) + (w.pos.Y - p.Y) * (w.pos.Y - p.Y));
                    if (pd < d - 100.0f && Singleton<PFWorld>::s_inst.GetFloorHeightAt(p, nullptr, nullptr, nullptr, nullptr, false)) {
                        moveTo(h, p);
                        break;
                    }
                }
                g_lastMove = g_frame;
            }
            return;
        }
        if (g_frame - g_lastMove >= 20) { stepToward(h, Point3D<float>{w.pos.X, w.pos.Y, h->m_position.Z}); g_lastMove = g_frame; }
        return;
    }
    if (g_mode == kWalkTo) {
        if (g_frame - g_lastMove >= 20) { stepToward(h, Point3D<float>{g_walkTarget.X, g_walkTarget.Y, h->m_position.Z}); g_lastMove = g_frame; }
        return;
    }
    if (g_mode == kExit) {
        GameObject* best = nullptr;
        float bd = 1e12f;
        for (ObjectBase* ob : allObjects()) {
            auto* z = dynamic_cast<TriggerZoneExitLevel*>(ob);
            if (z == nullptr || !z->m_enabled) continue;
            const float d = dist2d(h, z);
            if (d < bd) { bd = d; best = z; }
        }
        if (best != nullptr && g_frame - g_lastMove >= 15) { stepToward(h, best->m_position); g_lastMove = g_frame; }
        return;
    }
    switch (g_mode) {
        case kHunt: tickHunt(h); break;
        case kLoot: tickLoot(h); break;
        case kExplore: tickExplore(h); break;
        case kRandom: tickRandom(h); break;
        default: break;
    }
}

// Commands that act once: goto, walkdir, loadlevel, hunt/loot/explore/rand N, enemies, objects, kill, atk.
void botCommand(int frame, const std::string& line) {
    g_frame = frame;
    std::istringstream ss(line);
    std::string cmd;
    ss >> cmd;
    Character* h = hero();
    if (cmd == "loadlevel") {
        std::string name;
        ss >> name;
        std::fprintf(g_runnerOut, "[bot] LoadLevel %s\n", name.c_str());
        ApplicationGetInstance().LoadLevel(name.c_str(), 0, 0, false, true, 0, false, 0, 0);
    } else if (cmd == "goto" && h) {
        float x, y;
        ss >> x >> y;
        moveTo(h, Point3D<float>{x, y, h->m_position.Z});
    } else if (cmd == "route") {
        int n = 6000;
        std::string how;
        ss >> n >> how;
        g_exitButtonY = how == "worldmap" ? 984 : 884;
        g_route.clear();
        std::vector<Waypoint> exits;
        for (ObjectBase* ob : allObjects()) {
            if (auto* c = dynamic_cast<CheckpointZone*>(ob)) g_route.push_back({ob->m_name, c->m_position, false, c});
            else if (auto* z = dynamic_cast<TriggerZoneExitLevel*>(ob); z != nullptr && ob->m_enabled) exits.push_back({ob->m_name, z->m_position, true, z});
        }
        std::sort(g_route.begin(), g_route.end(), [](const Waypoint& a, const Waypoint& b) { return a.name < b.name; });
        g_route.insert(g_route.end(), exits.begin(), exits.end());
        for (const Waypoint& w : g_route) std::fprintf(g_runnerOut, "[route] waypoint %s%s at (%.0f,%.0f)\n", w.name.c_str(), w.exit ? " (exit)" : "", w.pos.X, w.pos.Y);
        g_routeIndex = 0;
        g_routeSince = frame;
        g_routeBest = 1e12f;
        g_routeReached = g_routeSkipped = 0;
        g_mode = kRoute;
        g_modeEnd = frame + n;
    } else if (cmd == "walkto") {
        int n = 600;
        ss >> g_walkTarget.X >> g_walkTarget.Y >> n;
        g_mode = kWalkTo;
        g_modeEnd = frame + n;
    } else if (cmd == "walkdir" && h) {
        float x, y;
        ss >> x >> y;
        h->m_controller->Cmd_HeadTowards(Point3D<float>{x, y, 0.0f});
    } else if (cmd == "stop" && h) {
        h->m_controller->Cmd_Stop();
    } else if (cmd == "hunt" || cmd == "loot" || cmd == "explore" || cmd == "rand") {
        int seed = 1, n = 600;
        float range = 3000.0f;
        if (cmd == "rand") ss >> seed;
        ss >> n >> range;
        if (cmd == "rand") g_rng.s = 88172645463325252ull ^ (0x9E3779B97F4A7C15ull * static_cast<unsigned long long>(seed + 1));
        g_range = range;
        g_mode = cmd == "hunt" ? kHunt : cmd == "loot" ? kLoot : cmd == "explore" ? kExplore : kRandom;
        g_modeEnd = frame + n;
        g_exploreGoalFrame = 0;
        g_randNext = frame;
    } else if (cmd == "idle") {
        g_mode = kNone;
        atkSet(false);
    } else if (cmd == "mp") {
        // Multiplayer driver: the calls the menu's natives make (NativeConectionType, NativeCreateMultiplayerLobby, NativeSendRoomSearchRequest,
        // NativeConnectToServer, NativeStartMultiplayerGame), without the Flash menus. mp init <1 wifi|2 bluetooth|3 gllive>, mp create, mp search,
        // mp join <room index>, mp start, mp status.
        std::string sub;
        ss >> sub;
        OnlineGameState* st = OnlineSingleton<OnlineGameState>::GetInstance();
        PlayerManager* pm = ApplicationGetInstance().m_playerManager;
        if (sub == "init") {
            int mode = 1;
            ss >> mode;
            PlayerInfo* local = pm->GetLocalPlayer(0, false);
            if (local->unk_664 == -1) AssignSaveSlotToPlayer(0, 0);  // the call the character menu makes: m_lastSlot and the local player's slot
            st->Init(mode);
        } else if (sub == "create") {
            st->SetState(101);
        } else if (sub == "search") {
            st->SetState(102);
        } else if (sub == "join") {
            int index = 0;
            ss >> index;
            { PlayerInfo* joinLocal = pm->GetLocalPlayer(0, false); if (joinLocal->unk_664 == -1) joinLocal->unk_664 = 0; }
            std::vector<tRoomInfo> rooms = CMatching::Get()->GetRoomList();  // what the menu poll (NativeGetMultiplayerGameRooms) reads
            if (st->mode_ != 2) const_cast<std::vector<tRoomInfo>&>(st->RoomInfos()) = rooms;
            std::fprintf(g_runnerOut, "[mp] join index %d of %zu rooms\n", index, rooms.size());
            if (index >= 0 && static_cast<size_t>(index) < rooms.size()) {
                st->menuName30_ = reinterpret_cast<const char*>(static_cast<std::uintptr_t>(index));
                st->SetState(103);
            }
        } else if (sub == "leave") {
            if (CMatching* leaving = CMatching::Get()) leaving->LeaveRoom();  // what the in-game exit does before it goes to the main menu
        } else if (sub == "start") {
            // The network player records exist now (the gate is open): the slot the character menu would have chosen goes on the first local one.
            PlayerInfo* netLocal = pm->GetLocalPlayer(0, false);
            if (netLocal->unk_664 == -1) netLocal->unk_664 = 0;
            gameswf::as_value result, self;
            gameswf::fn_call call(&result, self, nullptr, 0, 0);
            NativeStartMultiplayerGame(call);
        }
        CMatching* m = CMatching::Get();
        std::fprintf(g_runnerOut, "[mp] f=%d cmd=%s mode=%d state=%d flag24=%d flag25=%d online=%d server=%d inRoom=%d members=%d players=%d localHost=%d\n", frame, sub.c_str(), st->mode_,
                     st->GetState(), st->flag24_, st->flag25_, ApplicationGetInstance().IsOnlineGame() ? 1 : 0, GetOnline()->IsServer() ? 1 : 0, m->IsInRoom() ? 1 : 0,
                     static_cast<int>(m->GetMemberIdList().size()), pm->GetNumPlayers(), CNetPlayerManager::GetInstance() != nullptr ? pm->IsLocalPlayerHosting() : -1);
        if (m != nullptr) {  // the matching object's member table and the connection manager's view of it
            std::fprintf(g_runnerOut, "[mp]   matching local=%d server=%d isServer=%d inRoom=%d count=%d table:", m->LocalMemberId(), m->ServerMemberId(), m->IsServer() ? 1 : 0, m->IsInRoom() ? 1 : 0, m->GetMemberCount());
            for (int mid : m->GetMemberIdList()) std::fprintf(g_runnerOut, " %d", mid);
            std::fprintf(g_runnerOut, " connections:");
            if (CConnectionManager* cm = CConnectionManager::GetInstance()) for (int cid : cm->GetConnMemberIdList(true)) std::fprintf(g_runnerOut, " %d(%d)", cid, cm->IsConnected(cid) ? 1 : 0);
            std::fprintf(g_runnerOut, "\n");
        }
        std::fprintf(g_runnerOut, "[mp]   manager questSyncBuffered=%d initialSetupDone=%d objectManager.unk_160=%d objectManager.initialized=%d allLoadingDone=%d allReadyToRoll=%d\n",
                     static_cast<int>(pm->m_questSyncBuffered), static_cast<int>(pm->m_initialSetupDone), ApplicationGetInstance().m_objectManager ? static_cast<int>(ApplicationGetInstance().m_objectManager->unk_160) : -1,
                     ApplicationGetInstance().m_objectManager ? static_cast<int>(ApplicationGetInstance().m_objectManager->m_initialized) : -1, pm->AllLoadingDone(), pm->AllReadyToRoll());
        for (int pi = 0; pi < pm->GetNumPlayers(); ++pi) {  // every player record: where its character stands on this instance
            PlayerInfo* record = pm->GetPlayer(pi, false);
            if (record != nullptr && !record->IsActive()) record = nullptr;
            Character* body = record != nullptr ? record->unk_660 : nullptr;
            std::fprintf(g_runnerOut, "[mp]   player %d internal=%d local=%d host=%d class=%d done=%d ready=%d ingame=%d char=%s pos=(%.0f,%.0f,%.0f) hp=%d dead=%d\n", pi, record ? record->unk_670 : -1, record ? static_cast<int>(record->unk_66c) : -1,
                         record ? static_cast<int>(record->IsHost()) : -1, record ? record->m_characterClass.GetValue() : -1, record ? static_cast<int>(record->m_doneLoading.GetValue()) : -1,
                         record ? static_cast<int>(record->m_readyToRoll.GetValue()) : -1, record ? static_cast<int>(record->m_ingame.GetValue()) : -1, body != nullptr ? "yes" : "no", body ? body->m_position.X : 0.0f,
                         body ? body->m_position.Y : 0.0f, body ? body->m_position.Z : 0.0f, body ? body->GetHP() : 0, body && body->IsDead() ? 1 : 0);
            if (body != nullptr) {
                // W2: what this instance shows of that hero: visibility, gold, potions and the item id in each of the nine equipment slots.
                char gear[160] = "";
                for (unsigned slot = 0; slot < 9; ++slot) {
                    ItemInstance* item = body->GetEquippedItem(slot);
                    std::snprintf(gear + std::strlen(gear), sizeof gear - std::strlen(gear), "%d ", item ? item->GetItemId() : -1);
                }
                std::fprintf(g_runnerOut, "[mp]     view visible=%d gold=%d potions=%d equipped=%s\n", body->m_visible ? 1 : 0, body->m_gold, body->GetNumPotions(), gear);
            }
        }
        if (st->mode_ != 0 && m != nullptr) {
            std::vector<tRoomInfo> rooms = m->GetRoomList();
            for (size_t i = 0; i < rooms.size(); ++i) std::fprintf(g_runnerOut, "[mp]   room %zu id=%lld name='%s'\n", i, static_cast<long long>(rooms[i].roomId), rooms[i].name.c_str());
        }
    } else if (cmd == "types") {
        std::map<std::string, int> histogram;
        for (ObjectBase* ob : allObjects()) ++histogram[typeid(*ob).name()];
        for (const auto& entry : histogram) std::fprintf(g_runnerOut, "[bot] type %s %d\n", entry.first.c_str(), entry.second);
    } else if (cmd == "enemies" && h) {
        std::fprintf(g_runnerOut, "[bot] cutscene=%d heroCtrlLocked=%d\n", ScriptManager::s_inst.m_inCutScene ? 1 : 0, 0);
        Application& app = ApplicationGetInstance();
        for (Character* o : app.m_objectManager->m_characters) {
            if (o == h) continue;
            std::fprintf(g_runnerOut, "[bot] char %s name='%s' pos=(%.0f,%.0f) d=%.0f hp=%d dead=%d en=%d vis=%d enemy=%d\n", typeid(*o).name(), o->m_name.c_str(), o->m_position.X, o->m_position.Y,
                         dist2d(h, o), o->GetHP(), o->IsDead() ? 1 : 0, o->m_enabled, o->m_visible, h->AI_IsEnemy(o) ? 1 : 0);
        }
    } else if (cmd == "scriptdump") {  // Q3: command classes of script <id>
        int id = 0;
        ss >> id;
        ScriptManager& sm = ScriptManager::s_inst;
        if (id >= 0 && static_cast<size_t>(id) < sm.m_cmds.size()) {
            const auto& sc = sm.m_cmds[static_cast<size_t>(id)];
            std::fprintf(g_runnerOut, "[bot] scriptdump %d '%s' cmds=%d state=%d module=%d\n", id, sm.GetNameFromID(id) ? sm.GetNameFromID(id) : "?", sc.m_count, sm.m_contexts[static_cast<size_t>(id)].m_state, sm.m_contexts[static_cast<size_t>(id)].m_module);
            for (int i = 0; i < sc.m_count; ++i) {
                const std::string tn = typeid(*sc.m_cmds[i]).name();
                std::string extra;
                void* a = sc.m_cmds[i]->m_args;
                char buf[200];
                if (a != nullptr) {
                    if (tn.find("ShowActor") != std::string::npos) { std::snprintf(buf, sizeof buf, " target=%s", static_cast<Structs::ShowActor*>(a)->Target); extra = buf; }
                    else if (tn.find("HideActor") != std::string::npos) { std::snprintf(buf, sizeof buf, " target=%s", static_cast<Structs::HideActor*>(a)->Target); extra = buf; }
                    else if (tn.find("SetActorPosition") != std::string::npos) { std::snprintf(buf, sizeof buf, " target=%s pos=%s", static_cast<Structs::SetActorPosition*>(a)->Target, static_cast<Structs::SetActorPosition*>(a)->Position); extra = buf; }
                    else if (tn.find("PlayActorAnim") != std::string::npos) { auto* q = static_cast<Structs::PlayActorAnim*>(a); std::snprintf(buf, sizeof buf, " target=%s anim=%d next=%d slot=%d wait=%d", q->Target, q->Anim, q->Next, q->Slot, q->Wait ? 1 : 0); extra = buf; }
                    else if (tn.find("PlayCamera") != std::string::npos) { auto* q = static_cast<Structs::PlayCamera*>(a); std::snprintf(buf, sizeof buf, " anim=%d wait=%d", q->Anim, q->Wait ? 1 : 0); extra = buf; }
                    else if (tn.find("ExecScript") != std::string::npos) { auto* q = static_cast<Structs::ExecScript*>(a); std::snprintf(buf, sizeof buf, " script=%d wait=%d", q->Script, q->Wait ? 1 : 0); extra = buf; }
                    else if (tn.find("PutCharacterInIdle") != std::string::npos) { std::snprintf(buf, sizeof buf, " target=%s", static_cast<Structs::PutCharacterInIdle*>(a)->Target); extra = buf; }
                    else if (tn.find("Script_Wait") != std::string::npos) { std::snprintf(buf, sizeof buf, " time=%d", static_cast<Structs::Wait*>(a)->Time); extra = buf; }
                }
                std::fprintf(g_runnerOut, "[bot]   cmd %d %s%s\n", i, tn.c_str(), extra.c_str());
            }
        }
    } else if (cmd == "timers") {  // Q3: the CharTimers slots of the characters whose name contains the argument
        std::string sub;
        ss >> sub;
        for (Character* o : ApplicationGetInstance().m_objectManager->m_characters) {
            if (o->m_name.find(sub) == std::string::npos) continue;
            std::fprintf(g_runnerOut, "[timers] f=%d '%s' slots=%zu", frame, o->m_name.c_str(), o->CharTimers::m_timers.size());
            for (const CharTimers::_Timer& t : o->CharTimers::m_timers)
                std::fprintf(g_runnerOut, " [%u a%d p%d rep%d int%u el%u ev%d]", t.m_id, t.m_active ? 1 : 0, t.m_paused ? 1 : 0, t.m_repeat, t.m_interval, t.m_elapsed, t.m_eventId);
            std::fprintf(g_runnerOut, "%c", 10);
        }
    } else if (cmd == "skilltab") {  // Q3: skills of the character whose name contains the argument: skill record and the AnimTable row it plays
        std::string sub;
        ss >> sub;
        for (Character* o : ApplicationGetInstance().m_objectManager->m_characters) {
            if (o->m_name.find(sub) == std::string::npos) continue;
            const auto* list = static_cast<const Structs::SkillList*>(o->GetCharSkillList());
            for (std::uint32_t i = 0; i < list->ListSize; ++i) {
                const auto* sk = static_cast<const Structs::Skill*>(o->GetCharSkill(static_cast<int>(i)));
                std::fprintf(g_runnerOut, "[skilltab] skill %u anim=%d moving=%d type=%d flags=0x%x script='%s'%c", i, sk->Anim, sk->AnimIsMoving ? 1 : 0, sk->Type, static_cast<unsigned>(sk->Flags), sk->Script ? static_cast<const char*>(sk->Script) : "", 10);
                const auto* tab = reinterpret_cast<const Structs::AnimTpl*>(Arrays::AnimTable::members);
                if (sk->Anim >= 0 && static_cast<std::uint32_t>(sk->Anim) < Arrays::AnimTable::size) {
                    const Structs::AnimTpl& r = tab[sk->Anim];
                    std::fprintf(g_runnerOut, "[skilltab]   row loop=%d steps=%u type=%d%c", r.Loop, r.StepsSize, r.Type, 10);
                    const auto* st = static_cast<const Structs::AnimStep*>(r.Steps);
                    for (std::uint32_t k = 0; k < r.StepsSize; ++k) {
                        const Structs::AnimStep& step = *reinterpret_cast<const Structs::AnimStep*>(reinterpret_cast<const char*>(st) + k * 56);
                        const char* nm = (step.Anim >= 0 && static_cast<std::uint32_t>(step.Anim) < Arrays::AnimDict::size) ? reinterpret_cast<const Structs::ColladaFile*>(Arrays::AnimDict::members + 12u * static_cast<std::uint32_t>(step.Anim))->Name : "-";
                        std::fprintf(g_runnerOut, "[skilltab]     step %u anim=%d '%s' speed=%.3f blendout=%d redir=%d%c", k, step.Anim, "?", step.Speed, step.BlendOut, step.Redir, 10);
                    }
                }
            }
        }
    } else if (cmd == "zonelist") {  // Q5: every TriggerZone with its script and position
        for (ObjectBase* ob : allObjects()) {
            auto* z = dynamic_cast<TriggerZone*>(ob);
            if (z == nullptr || z->m_script.empty()) continue;
            std::fprintf(g_runnerOut, "[zone] %s script=%s id=%d pos=(%.0f,%.0f)\n", ob->m_name.c_str(), z->m_script.c_str(), z->m_scriptId, z->m_position.X, z->m_position.Y);
        }
    } else if (cmd == "runscript") {  // Q5: runscript <script name> <object name for the module>: start a level script by name (e.g. Swamp_Serpent_Intro)
        std::string name, objName;
        ss >> name >> objName;
        int module = 0;
        for (ObjectBase* ob : allObjects())
            if (ob->m_name == objName) { module = ob->unk_64; break; }
        const int id = ScriptManager::s_inst.GetIDFromName(name.c_str(), true);
        std::fprintf(g_runnerOut, "[bot] runscript '%s' id=%d module=%d\n", name.c_str(), id, module);
        if (id >= 0) ScriptManager::s_inst.StartScript(id, module, false);
    } else if (cmd == "zoneinfo") {  // Q6: zoneinfo <name>: updating flag, entered, hero touching, absAabb
        std::string name;
        ss >> name;
        for (ObjectBase* ob : allObjects()) {
            auto* z = dynamic_cast<TriggerZone*>(ob);
            if (z == nullptr || ob->m_name != name) continue;
            std::fprintf(g_runnerOut, "[zoneinfo] f=%d %s en=%d upd=%d entered=%d touch=%d aabb=(%.0f,%.0f,%.0f)-(%.0f,%.0f,%.0f) hero=(%.0f,%.0f,%.0f)-(%.0f,%.0f,%.0f)\n", frame, name.c_str(), ob->m_enabled, static_cast<int>(ob->unk_85), z->m_entered ? 1 : 0,
                         h ? (z->IsTouching(h) ? 1 : 0) : -1, z->m_absAabb[0], z->m_absAabb[1], z->m_absAabb[2], z->m_absAabb[3], z->m_absAabb[4], z->m_absAabb[5],
                         h ? h->m_absAabb[0] : 0, h ? h->m_absAabb[1] : 0, h ? h->m_absAabb[2] : 0, h ? h->m_absAabb[3] : 0, h ? h->m_absAabb[4] : 0, h ? h->m_absAabb[5] : 0);
        }
    } else if (cmd == "conds") {  // Q6: every object with an activate/deactivate condition: enabled flag, tested flags
        for (ObjectBase* ob : allObjects()) {
            if (ob->m_enableCond.m_text.empty() && ob->m_disableCond.m_text.empty()) continue;
            std::fprintf(g_runnerOut, "[cond] %s en=%d act='%s' tested=%d list=%d dis='%s' tested=%d%c", ob->m_name.c_str(), ob->m_enabled, ob->m_enableCond.m_text.c_str(), ob->m_enableCond.m_tested ? 1 : 0, ob->m_enableCond.m_list != nullptr ? 1 : 0, ob->m_disableCond.m_text.c_str(), ob->m_disableCond.m_tested ? 1 : 0, 10);
        }
    } else if (cmd == "dlgtap") {  // Q6: dlgtap <period frames> <end frame>: tap (1200,540) every <period> frames while a cut scene or dialogue shows
        int period = 30, end = 100000;
        ss >> period >> end;
        g_dlgPeriod = period; g_dlgStart = frame; g_dlgEnd = end; g_dlgLast = -1000; g_dlgTaps = 0;
    } else if (cmd == "heal") {  // Q6: heal 1 / heal 0: keep the hero above 50 percent HP (potions)
        int on = 1;
        ss >> on;
        g_heal = on != 0;
    } else if (cmd == "ungate") {  // Q6 experiment
        int on = 1;
        ss >> on;
        g_ungate = on != 0;
    } else if (cmd == "zonescript") {  // Q3: start the enter script of the named TriggerZone (what the zone does when a player walks in)
        std::string name;
        ss >> name;
        for (ObjectBase* ob : allObjects()) {
            auto* z = dynamic_cast<TriggerZone*>(ob);
            if (z == nullptr || ob->m_name != name) continue;
            std::fprintf(g_runnerOut, "[bot] zonescript '%s' script='%s' id=%d entered=%d\n", name.c_str(), z->m_script.c_str(), z->m_scriptId, z->m_entered ? 1 : 0);
            z->SafeStartScriptOnlyOnce(z->m_scriptId);
        }
    } else if (cmd == "bossnow" && h) {  // Q3: one line per character whose name contains the argument: position, visibility, targetable byte, state machine state
        std::string sub;
        ss >> sub;
        for (Character* o : ApplicationGetInstance().m_objectManager->m_characters) {
            if (o->m_name.find(sub) == std::string::npos) continue;
            std::fprintf(g_runnerOut, "[boss] f=%d '%s' pos=(%.0f,%.0f,%.0f) d=%.0f hp=%d dead=%d en=%d vis=%d targetable=%d sm=%d smflags=0x%x aabb=(%.0f,%.0f,%.0f)-(%.0f,%.0f,%.0f) curSkill=%d step=%d/%d stack=%u begun=%d ended=%d cut=%d blk=%d ctlblk=%d aiPaused=%d autoCull=%d c2fc=%d hint=%d hflags=0x%x hdead=%d h4d=%d dq=%zu\n", frame, o->m_name.c_str(), o->m_position.X,
                         o->m_position.Y, o->m_position.Z, dist2d(h, o), o->GetHP(), o->IsDead() ? 1 : 0, o->m_enabled, o->m_visible, o->CharAI::unk_4d ? 1 : 0,
                         o->CharStateMachine::SM_GetState(), static_cast<unsigned>(o->CharStateMachine::m_stateFlags), o->m_absAabb[0], o->m_absAabb[1], o->m_absAabb[2], o->m_absAabb[3], o->m_absAabb[4], o->m_absAabb[5], o->CharAI::m_curSkill, o->CharAnimator::ANIM_GetStepIndex(), o->CharAnimator::ANIM_GetStepCount(), static_cast<unsigned>(o->CharAnimator::m_animStackIdx), o->CharAI::m_skillStepBegun ? 1 : 0, o->CharAI::m_skillStepEnded ? 1 : 0, ScriptManager::s_inst.m_inCutScene ? 1 : 0, v2Controller::s_blocked ? 1 : 0, o->m_controller->m_blocked ? 1 : 0, o->CharAI::m_updatePaused ? 1 : 0, o->m_visualObject != nullptr ? static_cast<int>(o->m_visualObject->m_node->automaticCulling) : -1, static_cast<int>(o->unk_2fc), h->IsInteractive(o) ? 1 : 0, static_cast<unsigned>(h->CharStateMachine::m_stateFlags), h->IsDead() ? 1 : 0, h->CharAI::unk_4d ? 1 : 0, MenuMessageManager<DialogMsg, 1>::s_inst.m_queues[0].size());
        }
    } else if (cmd == "objects" && h) {
        int n = 0;
        for (ObjectBase* ob : allObjects()) {
            if (dynamic_cast<ItemObject*>(ob) || dynamic_cast<OpenableContainer*>(ob)) {
                GameObject* g = static_cast<GameObject*>(ob);
                std::fprintf(g_runnerOut, "[bot] obj %s name='%s' pos=(%.0f,%.0f) d=%.0f en=%d vis=%d\n", typeid(*ob).name(), ob->m_name.c_str(), g->m_position.X, g->m_position.Y, dist2d(h, g),
                             ob->m_enabled, ob->m_visible);
                ++n;
            }
        }
        std::fprintf(g_runnerOut, "[bot] %d loot objects\n", n);
    } else if (cmd == "exit") {
        int n = 900;
        ss >> n;
        g_mode = kExit;
        g_modeEnd = frame + n;
    } else if (cmd == "levelstat") {
        // One line per level for the playthrough table: loaded, walked distance, enemies (alive/dead), loot objects left, exits, hero inventory.
        std::string tag;
        ss >> tag;
        Level* level = GSLevel::s_level;
        Application& app = ApplicationGetInstance();
        int alive = 0, dead = 0, lootLeft = 0, exits = 0;
        if (h != nullptr && app.m_objectManager != nullptr) {
            for (Character* o : app.m_objectManager->m_characters) {
                if (o == h || !h->AI_IsEnemy(o)) continue;
                if (o->IsDead()) ++dead; else if (o->m_enabled) ++alive;
            }
            for (ObjectBase* ob : allObjects()) {
                if (!ob->m_enabled) continue;
                if ((dynamic_cast<ItemObject*>(ob) || dynamic_cast<OpenableContainer*>(ob) || dynamic_cast<DestructibleContainer*>(ob)) && ob->m_visible) ++lootLeft;
                if (dynamic_cast<TriggerZoneExitLevel*>(ob)) ++exits;
            }
        }
        std::fprintf(g_runnerOut, "[levelstat] %s f=%d level=%s loadStep=%d hero=%s pos=(%.0f,%.0f) hp=%d/%d walked=%.0f enemiesAlive=%d enemiesDead=%d lootLeft=%d exits=%d route=%d/%d/%zu kills=%d deaths=%d skips=%d items=%d gold=%d draws/frame=%.1f indices/frame=%.0f\n",
                     tag.c_str(), frame, level ? level->m_levelName.c_str() : "-", level ? level->m_loadStep : -1, h ? "yes" : "no", h ? h->m_position.X : 0.0f,
                     h ? h->m_position.Y : 0.0f, h ? h->GetHP() : 0, h ? h->GetTotalHP() : 0, g_walked, alive, dead, lootLeft, exits,
                     g_routeReached, g_routeSkipped, g_route.size(), g_kills, g_deaths, g_skips, h ? static_cast<int>(h->m_items.size()) : 0, h ? h->m_gold : 0,
                     frame > g_statFrame ? static_cast<double>(g_drawCalls - g_statDraws) / (frame - g_statFrame) : 0.0,
                     frame > g_statFrame ? static_cast<double>(g_drawIndices - g_statIndices) / (frame - g_statFrame) : 0.0);
        g_statFrame = frame;
        g_statDraws = g_drawCalls;
        g_statIndices = g_drawIndices;
        g_walked = 0.0f;
        g_kills = 0;
        g_deaths = 0;
        g_skips = 0;
    } else if (cmd == "campaign") {
        int n = 100000;
        ss >> n;
        std::string opt;
        ss >> opt;
        if (opt.rfind("lvl", 0) == 0) { g_cLevelUps = std::atoi(opt.c_str() + 3); ss >> opt; }
        if (opt.size() > 1 && opt[0] == 'b' && std::isdigit(static_cast<unsigned char>(opt[1]))) { g_cBudget = std::atoi(opt.c_str() + 1); ss >> opt; }
        g_cOnce = false;
        if (opt == "once") { g_cOnce = true; ss >> opt; }
        if (opt.rfind("q:", 0) == 0) { g_cQuest = opt.substr(2); ss >> opt; }
        g_cRouteOnly = (opt == "route" || opt == "warp"); g_cWarp = (opt == "warp");
        g_campaign = true;
        g_auto = true;
        g_cEnd = frame + n;
        g_cLevel.clear();
    } else if (cmd == "tele" && h) {
        float x, y, z = h->m_position.Z;
        ss >> x >> y >> z;
        h->Ctrl_WarpTo(Point3D<float>{x, y, z});
    } else if (cmd == "quests" && h) {
        // Quest log of the hero for its game difficulty: every quest that is not Locked (0) / PostLocked (1), "name=state", and the current quest.
        std::string tag;
        ss >> tag;
        QuestSavegame* qs = h->m_savegame ? h->m_savegame->SG_GetQuestSG() : nullptr;
        if (qs != nullptr) {
            const int d = h->SG_GetGameDifficulty();
            std::string line;
            int n = 0;
            for (Quest* q : qs->m_quests[d]) {
                if (q == nullptr || q->m_state <= 1) continue;
                char b[160];
                std::snprintf(b, sizeof b, " %s=%d", q->m_name ? q->m_name : "?", q->m_state);
                line += b;
                ++n;
            }
            std::fprintf(g_runnerOut, "[quests] %s f=%d diff=%d total=%zu cur=%d prim=%d act=%d nonlocked=%d:%s\n", tag.c_str(), frame, d, qs->m_quests[d].size(), qs->m_currentQuest[d],
                         qs->m_currentPrimaryQuest[d], qs->m_act[d], n, line.c_str());
        }
    } else if (cmd == "sweepinfo") {   // owner P1: missing-character report plus a screenshot of the level the hero is in
        std::string tag;
        ss >> tag;
        Level* lv = GSLevel::s_level;
        if (lv != nullptr) {
            reportMissingCharacters();
            campaignShot(lv->m_levelName, tag.c_str());
        }
    } else if (cmd == "spend" && h) {
        spendPoints(frame, h);
    } else if (cmd == "scripts") {   // owner P1: every script context that is not finished (state 0 started, 1 executing), with its name and next command
        ScriptManager& sm = ScriptManager::s_inst;
        for (size_t i = 0; i < sm.m_contexts.size(); ++i) {
            const auto& c = sm.m_contexts[i];
            if (c.m_state == 2 || c.m_module == -1) continue;
            std::fprintf(g_runnerOut, "[bot] script %zu '%s' module=%d next=%d state=%d cmds=%d\n", i, sm.GetNameFromID(static_cast<int>(i)) ? sm.GetNameFromID(static_cast<int>(i)) : "?", c.m_module, c.m_nextCmd, c.m_state, i < sm.m_cmds.size() ? sm.m_cmds[i].m_count : -1);
        }
        std::fprintf(g_runnerOut, "[bot] scripts: %zu contexts, active=%d, cutscene=%d\n", sm.m_contexts.size(), sm.m_activeCount, sm.m_inCutScene ? 1 : 0);
    } else if (cmd == "setquest" && h) {   // owner P1: force a quest into a state (Quest::SetState, the debug route the story otherwise reaches through dialogs and zones)
        std::string name;
        int st = 6;
        ss >> name >> st;
        QuestSavegame* qs = h->m_savegame ? h->m_savegame->SG_GetQuestSG() : nullptr;
        if (qs != nullptr) {
            for (Quest* q : qs->m_quests[h->SG_GetGameDifficulty()])
                if (q != nullptr && q->m_name != nullptr && name == q->m_name) { q->SetState(st); std::fprintf(g_runnerOut, "[bot] quest %s -> state %d\n", q->m_name, q->m_state); }
        }
    } else if (cmd == "worldmap" && h) {
        int ep = 0;
        const std::string next = worldMapNext(h, &ep, true);
        std::fprintf(g_runnerOut, "[worldmap] next=%s entry=%d\n", next.c_str(), ep);
    } else if (cmd == "nearxy") {
        float cx = 0, cy = 0, r = 800.0f;
        ss >> cx >> cy >> r;
        for (ObjectBase* ob : allObjects()) {
            auto* g = dynamic_cast<GameObject*>(ob);
            if (g == nullptr || g == h) continue;
            const float ddx = g->m_position.X - cx, ddy = g->m_position.Y - cy;
            if (ddx * ddx + ddy * ddy > r * r) continue;
            std::fprintf(g_runnerOut, "[bot] nearxy %s name='%s' pos=(%.0f,%.0f) en=%d vis=%d aabb=(%.0f,%.0f,%.0f)-(%.0f,%.0f,%.0f)\n", typeid(*ob).name(), ob->m_name.c_str(), g->m_position.X, g->m_position.Y, ob->m_enabled ? 1 : 0, ob->m_visible ? 1 : 0, g->m_absAabb[0], g->m_absAabb[1], g->m_absAabb[2], g->m_absAabb[3], g->m_absAabb[4], g->m_absAabb[5]);
        }
    } else if (cmd == "near" && h) {
        float r = 800.0f;
        ss >> r;
        for (ObjectBase* ob : allObjects()) {
            auto* g = dynamic_cast<GameObject*>(ob);
            if (g == nullptr || g == h || dist2d(h, g) > r) continue;
            std::fprintf(g_runnerOut, "[bot] near %s name='%s' pos=(%.0f,%.0f) d=%.0f en=%d vis=%d goId=%d entry=%d\n", typeid(*ob).name(), ob->m_name.c_str(), g->m_position.X, g->m_position.Y,
                         dist2d(h, g), ob->m_enabled ? 1 : 0, ob->m_visible ? 1 : 0, static_cast<int>(ob->m_goId), dynamic_cast<SpawnPoint*>(g) != nullptr ? static_cast<SpawnPoint*>(g)->m_entrypointId : -1);
        }
        std::fprintf(g_runnerOut, "[bot] hero ooi=%s aabb (%.0f,%.0f,%.0f)-(%.0f,%.0f,%.0f)\n", h->m_objectOfInterest ? h->m_objectOfInterest->m_name.c_str() : "-", h->m_absAabb[0],
                     h->m_absAabb[1], h->m_absAabb[2], h->m_absAabb[3], h->m_absAabb[4], h->m_absAabb[5]);
        for (ObjectBase* ob : allObjects()) {
            auto* z = dynamic_cast<TriggerZoneExitLevel*>(ob);
            if (z == nullptr || dist2d(h, z) > r) continue;
            std::fprintf(g_runnerOut, "[bot] exitzone '%s' aabb (%.0f,%.0f,%.0f)-(%.0f,%.0f,%.0f) touching=%d level=%s\n", ob->m_name.c_str(), z->m_absAabb[0], z->m_absAabb[1], z->m_absAabb[2],
                         z->m_absAabb[3], z->m_absAabb[4], z->m_absAabb[5], z->IsTouching(h) ? 1 : 0, z->m_levelName.c_str());
        }
    } else if (cmd == "floor") {
        // Path-finding floor along a line: '#' floor, '.' none, every 100 units from (x1,y1) to (x2,y2).
        float x1, y1, x2, y2, z = -1e9f;
        ss >> x1 >> y1 >> x2 >> y2 >> z;
        const float len = std::sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));
        const int n = static_cast<int>(len / 100.0f) + 1;
        std::string line;
        for (int i = 0; i <= n && i < 400; ++i) {
            const float t = n ? static_cast<float>(i) / n : 0.0f;
            Point3D<float> p{x1 + (x2 - x1) * t, y1 + (y2 - y1) * t, z > -1e8f ? z : (h ? h->m_position.Z : 0.0f)};
            float height = 0.0f;
            line += Singleton<PFWorld>::s_inst.GetFloorHeightAt(p, &height, nullptr, nullptr, nullptr, false) ? '#' : (Singleton<PFWorld>::s_inst.GetFloorHeightAt(p, &height, nullptr, nullptr, nullptr, true) ? 'o' : '.');
        }
        std::fprintf(g_runnerOut, "[bot] floor (%.0f,%.0f)->(%.0f,%.0f): %s\n", x1, y1, x2, y2, line.c_str());
    } else if (cmd == "rooms" || cmd == "roomsall") {
        float x = 0.0f, y = 0.0f;
        ss >> x >> y;
        const bool all = cmd == "roomsall";
        int total = 0;
        for (PFRoom* room : Singleton<PFWorld>::s_inst.m_rooms) {
            ++total;
            if (!all && (x < room->m_boundsMin.X || x > room->m_boundsMax.X || y < room->m_boundsMin.Y || y > room->m_boundsMax.Y)) continue;
            std::fprintf(g_runnerOut, "[bot] room '%s' box (%.0f,%.0f,%.0f)-(%.0f,%.0f,%.0f) floors=%zu flags=0x%x\n", room->m_name.c_str(), room->m_boundsMin.X, room->m_boundsMin.Y,
                         room->m_boundsMin.Z, room->m_boundsMax.X, room->m_boundsMax.Y, room->m_boundsMax.Z, room->m_floors.size(), room->m_flags);
            for (PFFloor* fl : room->m_floors) {
                const bool hit = fl->GetFloorHeightAt(Point3D<float>{x, y, 0.0f}, nullptr, nullptr);
                std::fprintf(g_runnerOut, "[bot]   floor '%s' type=0x%x flags=0x%x tris=%d box (%.0f,%.0f)-(%.0f,%.0f) pos=(%.0f,%.0f) hit(%.0f,%.0f)=%d\n", fl->m_name.c_str(), fl->m_typeMask, fl->m_objectFlags,
                             fl->m_triangleCount, fl->m_boundsMin.X, fl->m_boundsMin.Y, fl->m_boundsMax.X, fl->m_boundsMax.Y, fl->m_position.X, fl->m_position.Y, x, y, hit ? 1 : 0);
            }
        }
        std::fprintf(g_runnerOut, "[bot] %d rooms in the world\n", total);
    } else if (cmd == "cheats") {
        // The cheat switch (handle_cheats_inGame, 0x9f640a, exported .bss byte). Nothing in the shipped binary writes it (its xrefs are the
        // three readers: Application::_Update, Level::_LoadProcess, SavegameManager::toggleOption), so a test build sets it from outside.
        int on = 1;
        ss >> on;
        handle_cheats_inGame = on != 0;
        std::fprintf(g_runnerOut, "[bot] handle_cheats_inGame = %d\n", on != 0 ? 1 : 0);
    } else if (cmd == "cheat") {
        // SavegameManager::toggleOption(name): what Application::_Update's debug touch regions call (GiveGold, LevelUp).
        std::string name;
        ss >> name;
        const int before = h ? h->GetLevel() : -1;
        ApplicationGetInstance().m_savegameManager->toggleOption(name.c_str());
        std::fprintf(g_runnerOut, "[bot] toggleOption(%s): hero level %d -> %d, gold %d\n", name.c_str(), before, h ? h->GetLevel() : -1, h ? h->m_gold : 0);
    } else if (cmd == "unequip" && h) {
        // Test helper: the local hero takes off the item in an equipment slot (ItemInventory::UnEquipItemFromSlot, the current set).
        unsigned slot = 1;
        ss >> slot;
        h->UnEquipItemFromSlot(slot);  // Character::UnEquipItemFromSlot (0x3a9eb0), the game's own path
        h->INV_UpdateSkin();
        std::fprintf(g_runnerOut, "[bot] unequipped slot %u\n", slot);
    } else if (cmd == "herostat" && h) {
        char skills[96] = "";
        for (unsigned i = 0; i < 8; ++i) std::snprintf(skills + std::strlen(skills), sizeof skills - std::strlen(skills), "%d ", h->SG_GetSkillLevel(i));
        std::fprintf(g_runnerOut, "[bot] hero level=%d hp=%d/%d gold=%d items=%zu skills=%s cutscene=%d visible=%d node=%d\n", h->GetLevel(), h->GetHP(), h->GetTotalHP(), h->m_gold,
                     h->m_items.size(), skills, ScriptManager::s_inst.m_inCutScene ? 1 : 0, h->m_visible ? 1 : 0,
                     (h->m_visualObject && h->m_visualObject->m_node) ? ((h->m_visualObject->m_node->flags & glitch::scene::ESNF_VISIBLE) ? 1 : 0) : -1);
    } else if (cmd == "skillinfo" && h) {
        // UI owner: skillinfo <skill> <lvl>: the Lua OnSkillInfo path the skill details of the hero screen use (AI_SkillInfo), then the display properties of the skill row from s_temp.
        unsigned skill = 0, lvl = 0;
        ss >> skill >> lvl;
        const auto* row = static_cast<const Structs::Skill*>(h->GetCharSkill(static_cast<int>(skill)));
        float info = -1.0f;
        h->AI_SkillInfo(skill, lvl, info);
        std::fprintf(g_runnerOut, "[bot] skillinfo skill=%u lvl=%u info=%.3f props(%u):", skill, lvl, info, row ? static_cast<unsigned>(row->DisplayPropsSize) : 0u);
        if (row != nullptr) {
            const auto* ids = static_cast<const std::int32_t*>(row->DisplayProps);
            for (std::uint32_t i = 0; i < row->DisplayPropsSize; ++i)
                std::fprintf(g_runnerOut, " %d=%d", ids[i], h->CharProperties::_GetProperty(CharProperties::s_temp, ids[i]));
        }
        std::fprintf(g_runnerOut, "\n");
        if (row != nullptr) {
            PyDataArrays* arr = ApplicationGetInstance().m_pyDataArrays;
            const int oidLevel = arr->GetOID("CharacterProperties", "SnS_Level");
            int cls = -1;
            if (skill == 0) cls = arr->GetOID("ClassTable", "Skill_Warrior_BashDown");
            std::fprintf(g_runnerOut, "[bot] skillinfo oidLevel=%d class=%d\n", oidLevel, cls);
            const auto* ids = static_cast<const std::int32_t*>(row->DisplayProps);
            for (int l = 0; l < 4; ++l) {
                h->CharProperties::PROPS_Set(oidLevel, l << 8);
                h->CharProperties::PROPS_ResetSheet(nullptr);
                h->CharProperties::PROPS_ApplyClass(cls, true);
                std::fprintf(g_runnerOut, "[bot] skillinfo direct lvl=%d m_props[SnS_Level]=%d s_temp:", l, h->CharProperties::_GetProperty(h->CharProperties::m_props, oidLevel));
                for (std::uint32_t i = 0; i < row->DisplayPropsSize; ++i)
                    std::fprintf(g_runnerOut, " %d=%d", ids[i], h->CharProperties::_GetProperty(CharProperties::s_temp, ids[i]));
                std::fprintf(g_runnerOut, "\n");
            }
        }
        {
            const auto& nt = Structs::CharacterProperties::m_dataNames;
            std::fprintf(g_runnerOut, "[bot] structnames CharacterProperties names=%p size=%d kCount=%d first=%s\n", static_cast<void*>(nt.names), nt.size, static_cast<int>(Structs::CharacterProperties::kCount), nt.names ? nt.names[0] : "-");
            std::fprintf(g_runnerOut, "[bot] GetOID Strength=%d ManaCost=%d\n", ApplicationGetInstance().m_pyDataArrays->GetOID("CharacterProperties", "Strength"), ApplicationGetInstance().m_pyDataArrays->GetOID("CharacterProperties", "SnS_ManaCost"));
        }
    } else if (cmd == "tpnear" && h) {
        // UI owner: tpnear <object name> [distance]: put the hero next to a named object (an NPC) so a script can tap it.
        std::string name;
        float dist = 120.0f;
        ss >> name >> dist;
        for (ObjectBase* ob : allObjects()) {
            auto* g = dynamic_cast<GameObject*>(ob);
            if (g == nullptr || ob->m_name != name) continue;
            h->SetPosition(Point3D<float>{g->m_position.X, g->m_position.Y - dist, g->m_position.Z}, true);
            std::fprintf(g_runnerOut, "[bot] tpnear %s -> (%.0f,%.0f,%.0f)\n", name.c_str(), g->m_position.X, g->m_position.Y - dist, g->m_position.Z);
            break;
        }
    } else if (cmd == "interact" && h) {
        // UI owner: interact <object name>: GameObject::Interact(hero) on a named object (what the HUD action button ends in).
        std::string name;
        ss >> name;
        for (ObjectBase* ob : allObjects()) {
            auto* g = dynamic_cast<GameObject*>(ob);
            if (g == nullptr || ob->m_name != name) continue;
            std::fprintf(g_runnerOut, "[bot] interact %s\n", name.c_str());
            g->Interact(h);
            break;
        }
    } else if (cmd == "badbools") {
        // Objects whose ObjectBase bool flags hold something other than 0/1 (uninitialised: ASan fills new blocks with 0xbe).
        for (ObjectBase* ob : allObjects()) {
            const auto vis = *reinterpret_cast<const unsigned char*>(&ob->m_visible);
            const auto en = *reinterpret_cast<const unsigned char*>(&ob->m_enabled);
            if (vis > 1 || en > 1)
                std::fprintf(g_runnerOut, "[bot] badbool %s name='%s' visible=%u enabled=%u\n", typeid(*ob).name(), ob->m_name.c_str(), vis, en);
        }
    } else if (cmd == "auto") {
        int on = 1;
        ss >> on;
        g_auto = on != 0;
    } else if (cmd == "levels") {
        const auto* levels = reinterpret_cast<const Structs::LevelDeclaration*>(Arrays::LevelList::members);
        for (std::uint32_t i = 0; levels != nullptr && i < Arrays::LevelList::size; ++i) {
            std::fprintf(g_runnerOut, "[bot] level %u file=%s hub=%d random=%d stable=%d state=%d\n", i,
                         levels[i].LevelFile ? static_cast<const char*>(levels[i].LevelFile) : "-", levels[i].Hub, levels[i].IsRandom ? 1 : 0,
                         levels[i].Dbg_IsStable ? 1 : 0, levels[i].LevelState);
        }
    } else if (cmd == "kill" && h) {
        h->m_controller->unk_009 = true;  // test helper: kill the hero (death/respawn flow)
        h->m_controller->Cmd_Kill(nullptr, false);
    } else if (cmd == "atk") {
        int on = 1;
        ss >> on;
        atkSet(on != 0);
    } else {
        std::fprintf(g_runnerOut, "[bot] unknown or unavailable command '%s'\n", line.c_str());
    }
    std::fflush(g_runnerOut);
}

}  // namespace dh2host
