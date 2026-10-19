// Scripted input for the host runner: parses the script file and feeds the game the way the Java side does (GameGLSurfaceView.nativeOnTouch ->
// appOnTouch, DungeonHunter2.nativeKeyDown/Up). See host_runner.hpp for the line format.
#include <algorithm>
#include <cstdio>
#include <cstdlib>
#include <fstream>
#include <sstream>

#include "core-platform/tb/android_jni_platform.hpp"
#include "host_runner.hpp"

extern "C" {
int appOnTouch(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeKeyDown(JNIEnv*, jclass, jint);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeKeyUp(JNIEnv*, jclass, jint);
}

#include "dh2/global/screen_size.hpp"

namespace dh2host {

bool loadScript(const std::string& path, std::vector<ScriptEvent>& out) {
    std::ifstream in(path);
    if (!in) return false;
    std::string line;
    while (std::getline(in, line)) {
        // "#" starts a comment at the start of a word ("/#3" inside a tapclip path is a display-list index)
        for (size_t hash = line.find('#'); hash != std::string::npos; hash = line.find('#', hash + 1)) {
            if (hash == 0 || line[hash - 1] == ' ' || line[hash - 1] == '	') {
                line.resize(hash);
                break;
            }
        }
        std::istringstream ss(line);
        int frame;
        std::string cmd;
        if (!(ss >> frame >> cmd)) continue;
        if (cmd == "tap") {
            int x, y, hold = 2;
            ss >> x >> y;
            ss >> hold;
            out.push_back({frame, 0, 1, x, y, 0, ""});
            out.push_back({frame + std::max(hold, 1), 0, 0, x, y, 0, ""});
        } else if (cmd == "click") {  // a finger press the way the Flash buttons want it: down, a move on the spot, up (a bare tap is too short for some of them)
            int x, y, slot = 0;
            ss >> x >> y;
            ss >> slot;
            out.push_back({frame, 0, 1, x, y, slot, ""});
            out.push_back({frame + 2, 0, 2, x, y, slot, ""});
            out.push_back({frame + 6, 0, 0, x, y, slot, ""});
        } else if (cmd == "down" || cmd == "move" || cmd == "up") {
            int x, y, slot = 0;
            ss >> x >> y;
            ss >> slot;
            out.push_back({frame, 0, cmd == "down" ? 1 : cmd == "move" ? 2 : 0, x, y, slot, ""});
        } else if (cmd == "drag") {
            int x1, y1, x2, y2, n, hold = 0;
            ss >> x1 >> y1 >> x2 >> y2 >> n;
            ss >> hold;
            n = std::max(n, 1);
            out.push_back({frame, 0, 1, x1, y1, 0, ""});
            for (int i = 1; i <= n; ++i) out.push_back({frame + i, 0, 2, x1 + (x2 - x1) * i / n, y1 + (y2 - y1) * i / n, 0, ""});
            out.push_back({frame + n + hold + 1, 0, 0, x2, y2, 0, ""});
        } else if (cmd == "key") {
            int code;
            ss >> code;
            out.push_back({frame, 1, 1, code, 0, 0, ""});
            out.push_back({frame + 1, 1, 0, code, 0, 0, ""});
        } else if (cmd == "log") {
            std::string rest;
            std::getline(ss, rest);
            out.push_back({frame, 2, 0, 0, 0, 0, rest});
        } else if (cmd == "shot") {
            std::string name;
            ss >> name;
            out.push_back({frame, 3, 0, 0, 0, 0, name});
        } else if (cmd == "tapclip") {  // tap the centre of a named menu clip (path as in ui_layouts.txt), wherever the layout put it
            std::string path;
            ss >> path;
            out.push_back({frame, 7, 0, 0, 0, 0, path});
        } else if (cmd == "probe") {
            out.push_back({frame, 5, 0, 0, 0, 0, ""});
        } else if (cmd == "quit") {
            out.push_back({frame, 4, 0, 0, 0, 0, ""});
        } else if (cmd == "mp" || cmd == "goto" || cmd == "walkdir" || cmd == "stop" || cmd == "hunt" || cmd == "loot" || cmd == "explore" || cmd == "rand" || cmd == "idle" ||
                   cmd == "loadlevel" || cmd == "enemies" || cmd == "bossnow" || cmd == "runscript" || cmd == "zonelist" || cmd == "zonescript" || cmd == "ungate" || cmd == "heal" || cmd == "dlgtap" || cmd == "conds" || cmd == "zoneinfo" || cmd == "skilltab" || cmd == "timers" || cmd == "scriptdump" || cmd == "objects" || cmd == "kill" || cmd == "unequip" || cmd == "atk" || cmd == "levels" || cmd == "exit" || cmd == "levelstat" || cmd == "types" || cmd == "auto" || cmd == "badbools" || cmd == "cheats" || cmd == "cheat" || cmd == "herostat" || cmd == "skillinfo" || cmd == "tpnear" || cmd == "interact" || cmd == "walkto" || cmd == "near" || cmd == "setquest" || cmd == "scripts" || cmd == "spend" || cmd == "sweepinfo" || cmd == "nearxy" || cmd == "route" || cmd == "floor" || cmd == "rooms" || cmd == "roomsall" || cmd == "campaign" || cmd == "quests" || cmd == "tele") {
            out.push_back({frame, 6, 0, 0, 0, 0, line.substr(line.find(cmd))});
        } else {
            std::fprintf(stderr, "script: unknown command '%s'\n", cmd.c_str());
        }
    }
    std::stable_sort(out.begin(), out.end(), [](const ScriptEvent& a, const ScriptEvent& b) { return a.frame < b.frame; });
    return true;
}

void scriptApplyFrame(const std::vector<ScriptEvent>& events, int frame, const Options& opt, bool& quit) {
    botTick(frame, opt);
    static int pendingUpFrame = -1, pendingX = 0, pendingY = 0;
    if (pendingUpFrame == frame) {
        appOnTouch(0, pendingX, pendingY, frame * 33, 1, 0, 0, 0);
        pendingUpFrame = -1;
    }
    for (const ScriptEvent& e : events) {
        if (e.frame != frame) continue;
        switch (e.kind) {
            case 0:  // a3.. = the arguments of nativeOnTouch: (phase, x, y, ..., slot in the last word)
                appOnTouch(e.a, static_cast<int>(e.x * opt.scriptScale), static_cast<int>(e.y * opt.scriptScale), frame * 33, 1, 0, 0, e.slot);
                break;
            case 1:
                if (e.a) Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeKeyDown(nullptr, nullptr, e.x);
                else Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeKeyUp(nullptr, nullptr, e.x);
                break;
            case 2:
                std::fprintf(g_runnerOut, "[script] frame %d:%s\n", frame, e.text.c_str());
                break;
            case 3:
                if (g_screenshotHook) g_screenshotHook((opt.outDir + "/" + e.text + ".bmp").c_str());
                else std::fprintf(g_runnerOut, "[script] shot %s ignored (no window)\n", e.text.c_str());
                break;
            case 4:
                quit = true;
                break;
            case 5:
                logProbe(frame);
                break;
            case 6:
                botCommand(frame, e.text);
                break;
            case 7: {
                int x = 0, y = 0;
                if (MenuClipSurfaceCenter(e.text.c_str(), &x, &y)) {
                    std::fprintf(g_runnerOut, "[script] tapclip %s -> (%d,%d)\n", e.text.c_str(), x, y);
                    appOnTouch(1, x, y, frame * 33, 1, 0, 0, 0);
                    pendingUpFrame = frame + 2;
                    pendingX = x;
                    pendingY = y;
                } else {
                    std::fprintf(g_runnerOut, "[script] tapclip %s: not on screen\n", e.text.c_str());
                }
                break;
            }
        }
    }
}

}  // namespace dh2host
