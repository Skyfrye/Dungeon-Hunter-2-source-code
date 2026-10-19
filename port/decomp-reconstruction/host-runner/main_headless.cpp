// dh2_win_headless: boots the reconstructed game on the host without a window (GL calls go to the empty function table) and runs it with a fixed
// timestep and scripted input. See reports/decomp-reconstruction/HOST-RUNNER.md.
#include "host_runner.hpp"

int main(int argc, char** argv) {
    dh2host::Options opt;
    if (!dh2host::parseArgs(argc, argv, opt)) {
        dh2host::printUsage(argv[0]);
        return 1;
    }
    return dh2host::runHeadlessLoop(opt);
}
