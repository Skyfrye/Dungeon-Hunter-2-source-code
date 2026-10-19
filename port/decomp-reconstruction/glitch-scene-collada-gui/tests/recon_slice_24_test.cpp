// Slice 24 test: init steps run once in order on the first init, and reverse order on the last exit.
#include <vector>

#include "glitch-scene-collada-gui/recon/slice_24.hpp"

namespace {

std::vector<int> calls;

void stepA(bool on) { calls.push_back(on ? 1 : -1); }
void stepB(bool on) { calls.push_back(on ? 2 : -2); }

}  // namespace

int main() {
    if (glitch::registerInitStep(stepA) != 1) return 1;
    if (glitch::registerInitStep(stepB) != 2) return 1;

    if (glitch::init() == nullptr) return 1;  // first init reports success
    if (calls.size() != 2 || calls[0] != 1 || calls[1] != 2) return 1;

    if (glitch::init() != nullptr) return 1;  // nested init does not rerun steps
    if (calls.size() != 2) return 1;

    if (glitch::exit()) return 1;             // nested exit: count 2 -> 1, no steps
    if (glitch::exit() != true) return 1;     // last exit: steps run in reverse with false
    if (calls.size() != 4 || calls[2] != -2 || calls[3] != -1) return 1;

    return 0;
}
