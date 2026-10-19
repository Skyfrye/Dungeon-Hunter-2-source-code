// One line of game state per call: state machine top, level, local player position/HP and the number of live characters.
#include <typeinfo>
#include <set>
#include <string>
#include <filesystem>
#include <system_error>
#include <cstdio>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/GSLevel.hpp"
#include "dh2/HUDControls.hpp"
#include "dh2/Level.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/StateBase.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PFFloor.hpp"
#include "dh2/Singleton.hpp"
#include <cmath>
#include "host_runner.hpp"

namespace dh2host {

void logState(int frame) {
    Application& app = ApplicationGetInstance();
    const char* top = "-";
    int depth = 0;
    if (app.m_stateMachine != nullptr) {
        depth = static_cast<int>(app.m_stateMachine->m_stack.size());
        if (depth > 0 && app.m_stateMachine->m_stack.back().state != nullptr) top = typeid(*app.m_stateMachine->m_stack.back().state).name();
    }
    const char* levelName = "-";
    Level* level = GSLevel::s_level;
    if (level != nullptr) levelName = level->m_levelName.c_str();

    char player[160] = "player=none";
    int chars = 0;
    if (app.m_objectManager != nullptr) chars = static_cast<int>(app.m_objectManager->m_characters.size());
    if (app.m_playerManager != nullptr && level != nullptr) {
        Character* c = app.m_playerManager->GetLocalPlayerCharacter();
        if (c != nullptr) {
            std::snprintf(player, sizeof player, "player pos=(%.1f,%.1f,%.1f) hp=%d/%d dead=%d csm=%d", c->m_position.X, c->m_position.Y, c->m_position.Z,
                          c->GetHP(), c->GetTotalHP(), c->IsDead() ? 1 : 0, c->SM_GetState());
        }
    }
    std::fprintf(g_runnerOut, "[state] f=%d t=%lldms dt=%d states=%d top=%s level=%s chars=%d %s\n", frame, (long long)(clockNowMicros() / 1000), app.m_dt, depth,
                 top, levelName, chars, player);
    std::fflush(g_runnerOut);
}

// Movement diagnostics around the local player: heading, path-finding flags, the walkable ring, and the characters within 250 units.
void logProbe(int frame) {
    Application& app = ApplicationGetInstance();
    if (app.m_playerManager == nullptr || GSLevel::s_level == nullptr) return;
    Character* c = app.m_playerManager->GetLocalPlayerCharacter();
    if (c == nullptr) return;
    PFWorld& w = Singleton<PFWorld>::s_inst;
    std::fprintf(g_runnerOut, "[probe] f=%d pos=(%.1f,%.1f,%.1f) heading=(%.2f,%.2f,%.2f) hasHeading=%d moving=%d validateDir=%d pfFlags=0x%x moveFlags=%u radius=%.1f pfpos=(%.1f,%.1f,%.1f)\n", frame,
                 c->m_position.X, c->m_position.Y, c->m_position.Z, c->m_heading.X, c->m_heading.Y, c->m_heading.Z, c->m_hasHeading, c->m_moving, c->m_validateDirection,
                 c->m_pfObject.m_flags, c->m_pfObject.m_moveFlags, c->m_pfObject.m_radius, c->m_pfObject.m_pos.X, c->m_pfObject.m_pos.Y, c->m_pfObject.m_pos.Z);
    for (float r : {10.0f, 40.0f, 100.0f}) {
        char ring[64] = {0};
        for (int i = 0; i < 16; ++i) {
            const float a = i * 3.14159265f / 8.0f;
            Point3D<float> p{c->m_position.X + r * std::cos(a), c->m_position.Y + r * std::sin(a), c->m_position.Z};
            ring[i] = w.GetFloorHeightAt(p, nullptr, nullptr, nullptr, nullptr, false) ? '#' : '.';
        }
        std::fprintf(g_runnerOut, "[probe]   floor ring r=%.0f (angle 0..360 step 22.5, + = x, then y): %s\n", r, ring);
    }
    Point3D<float> dir = c->m_heading;
    const bool ok = w.ValidateDirection(dir, c->m_pfObject);
    std::fprintf(g_runnerOut, "[probe]   ValidateDirection(heading) -> %d, dir=(%.2f,%.2f,%.2f)\n", ok ? 1 : 0, dir.X, dir.Y, dir.Z);
    if (app.m_objectManager != nullptr) {
        for (Character* o : app.m_objectManager->m_characters) {
            if (o == c) continue;
            const float dx = o->m_position.X - c->m_position.X, dy = o->m_position.Y - c->m_position.Y;
            if (dx * dx + dy * dy < 250.0f * 250.0f)
                std::fprintf(g_runnerOut, "[probe]   near %s at (%.1f,%.1f) d=%.0f hp=%d dead=%d\n", typeid(*o).name(), o->m_position.X, o->m_position.Y, std::sqrt(dx * dx + dy * dy), o->GetHP(), o->IsDead() ? 1 : 0);
        }
    }
    std::fflush(g_runnerOut);
}

// ---- Missing-asset log (owner P1, DH2_HOST_RUNNER only): every failed file lookup, with level and caller, to build/own-p1/missing/<level>.txt.
void recordMissing(const char* kind, const char* name, void* caller) {
    static std::set<std::string> seen;
    const char* levelName = "boot";
    Level* level = GSLevel::s_level;
    if (level != nullptr && !level->m_levelName.empty()) levelName = level->m_levelName.c_str();
    std::string key = std::string(levelName) + "|" + kind + "|" + name;
    if (!seen.insert(key).second) return;
    std::string lv = levelName;
    for (char& ch : lv) if (ch == '.' || ch == '/' || ch == '\\') ch = '_';
    std::error_code ec;
    std::filesystem::create_directories("build/own-p1/missing", ec);
    if (std::FILE* f = std::fopen(("build/own-p1/missing/" + lv + ".txt").c_str(), "a")) {
        std::fprintf(f, "%s\t%s\tcaller=%p\n", kind, name, caller);
        std::fclose(f);
    }
}

// Characters of the loaded level that have no table row or no model (original: RD_Bandit1 etc. are absent from every data set).
void reportMissingCharacters() {
    Application& app = ApplicationGetInstance();
    if (app.m_objectManager == nullptr) return;
    for (Character* o : app.m_objectManager->m_characters) {
        if (o == nullptr) continue;
        const bool noRow = o->m_charPropsId < 0, noVis = o->m_visualObject == nullptr;
        if (noRow || noVis) {
            std::string what = o->m_name + " charpropsname=" + o->m_charPropsName + (noRow ? " NO-TABLE-ROW" : "") + (noVis ? " NO-VISUAL" : "");
            recordMissing("character", what.c_str(), nullptr);
        }
    }
}

}  // namespace dh2host
