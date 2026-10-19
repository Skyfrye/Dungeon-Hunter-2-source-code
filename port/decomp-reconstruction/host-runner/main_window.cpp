// dh2_win_window: the host runner with a real window and a GLES2 context (ANGLE). Mouse = touch, F12 = screenshot, Esc = quit.
#include "host_runner.hpp"

int main(int argc, char** argv) {
    dh2host::Options opt;
    opt.audioOut = true;   // sound on the default output device unless --no-audio
    opt.realtime = true;   // the window runs on the wall clock unless --fixed is given
    opt.frames = 0;        // 0 = until the window is closed
    opt.logEvery = 120;
    if (!dh2host::parseArgs(argc, argv, opt)) {
        dh2host::printUsage(argv[0]);
        return 1;
    }
    return dh2host::runWindowLoop(opt);
}
