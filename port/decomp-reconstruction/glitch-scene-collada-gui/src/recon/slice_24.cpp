// Slice 24 reconstruction (glitch init steps).
#include "glitch-scene-collada-gui/recon/slice_24.hpp"

namespace glitch {

int InitializationCount = 0;

// 0x6a0f08 _ZN6glitch22getInitializationStepsEv
std::vector<void (*)(bool)>* getInitializationSteps() {
    static std::vector<void (*)(bool)> steps;
    return &steps;
}

// 0x6a0f90 _ZN6glitch4exitEv
bool exit() {
    if (--InitializationCount != 0) {
        return false;
    }
    std::vector<void (*)(bool)>& steps = *getInitializationSteps();
    for (std::size_t i = steps.size(); i-- > 0;) {
        steps[i](false);
    }
    return InitializationCount == 0;
}

// 0x6a1024 _ZN6glitch4initEv
char* init() {
    int count = InitializationCount;
    if (count == 0) {
        std::vector<void (*)(bool)>& steps = *getInitializationSteps();
        const std::size_t size = steps.size();
        for (std::size_t i = 0; i < size; ++i) {
            steps[i](true);
        }
        count = InitializationCount;
    }
    const int next = count + 1;
    InitializationCount = next;
    return next == 1 ? reinterpret_cast<char*>(1) : nullptr;
}

// 0x6a10b0 _ZN6glitch16registerInitStepEPFvbE
int registerInitStep(void (*step)(bool)) {
    std::vector<void (*)(bool)>& steps = *getInitializationSteps();
    steps.push_back(step);
    return static_cast<int>(steps.size());
}

}  // namespace glitch
