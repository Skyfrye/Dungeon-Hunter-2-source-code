// Process buffer heap: sizes, block carving, merging on release, the dump, the excess
// fallback and the rule that the heap cannot be resized while blocks are in use.
#include <cstdint>
#include "glitch-core-io/core/process_buffer.hpp"

#include <cstdio>
#include <string>
#include <vector>

#define CHECK(c)                                                       \
    do {                                                               \
        if (!(c)) {                                                    \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);   \
            ++failures;                                                \
        }                                                              \
    } while (0)

namespace {

class RecordingLogger : public glitch::os::ILogger {
public:
    glitch::os::ELOG_LEVEL getLogLevel() const override { return glitch::os::ELL_DEBUG; }
    void setLogLevel(glitch::os::ELOG_LEVEL) override {}
    void log(const char* text, glitch::os::ELOG_LEVEL) override { lines.push_back(text); }
    void log(const char* text, const char*, glitch::os::ELOG_LEVEL) override { lines.push_back(text); }
    void log(const wchar_t*, glitch::os::ELOG_LEVEL) override {}
    void log(const wchar_t*, const wchar_t*, glitch::os::ELOG_LEVEL) override {}
    void vlogf(glitch::os::ELOG_LEVEL, const char*, std::va_list) override {}
    std::vector<std::string> lines;
};

}  // namespace

int main() {
    using namespace glitch::core;
    int failures = 0;

    CHECK(getProcessBufferHeapSize() == 0);
    setProcessBufferHeapSize(64);
    CHECK(getProcessBufferHeapSize() == 64);
    CHECK(getProcessBufferHeapAvailableMemory() == 56);

    // Three blocks of 4 bytes. The binary takes 3 words each (header, one data word, footer); TRACK-B.md decision 14 rounds every
    // block to a multiple of 4 words (16 bytes) so that every payload is 16-byte aligned: 4 words each here.
    int* a = allocProcessBuffer(4);
    int* b = allocProcessBuffer(4);
    int* c = allocProcessBuffer(4);
    CHECK(a && b && c);
    CHECK(b == a + 4 && c == b + 4);
    CHECK(reinterpret_cast<std::uintptr_t>(a) % 16 == 0 && reinterpret_cast<std::uintptr_t>(b) % 16 == 0);
    CHECK(getProcessBufferHeapAvailableMemory() == 56 - 48);

    // The heap cannot be resized while blocks are in use.
    setProcessBufferHeapSize(128);
    CHECK(getProcessBufferHeapSize() == 64);

    RecordingLogger logger;
    dumpProcessBufferAllocations(&logger, glitch::os::ELL_DEBUG);
    CHECK(logger.lines.size() == 3);
    if (logger.lines.size() == 3) {
        CHECK(logger.lines[0].find(":        8") != std::string::npos);  // (header - 2) * 4 with the 4-word block (decision 14)
    }

    // Releasing the middle block leaves a free block between two allocated ones.
    releaseProcessBuffer(b);
    // Releasing the first block merges it with the free middle block.
    releaseProcessBuffer(a);
    // Releasing the last block gives the whole range back to the top.
    releaseProcessBuffer(c);
    CHECK(getProcessBufferHeapAvailableMemory() == 56);

    logger.lines.clear();
    dumpProcessBufferAllocations(&logger, glitch::os::ELL_DEBUG);
    CHECK(logger.lines.empty());

    // A request larger than the heap fails unless excess is enabled (the static initializer
    // enables it, so turn it off first).
    setProcessBufferHeapExcessEnabled(false);
    CHECK(allocProcessBuffer(1000) == nullptr);
    setProcessBufferHeapExcessEnabled(true);
    int* big = allocProcessBuffer(1000);
    CHECK(big != nullptr);
    releaseProcessBuffer(big);  // freed with free(), not returned to the heap
    setProcessBufferHeapExcessEnabled(false);
    CHECK(getProcessBufferHeapAvailableMemory() == 56);

    // Shared blocks: a count of one at the word before the data, released on reset.
    setProcessBufferHeapSize(64);
    SSharedProcessBuffer shared;
    shared.reset(8);
    CHECK(shared.data != nullptr && shared.data[-1] == 1);
    shared.reset(16);
    CHECK(shared.data != nullptr && shared.data[-1] == 1);
    shared.reset(0);
    CHECK(shared.data == nullptr);

    // The scoped enable records the previous state and turns excess on.
    setProcessBufferHeapExcessEnabled(false);
    {
        SScopedEnableProcessBufferHeapExcess scope(false);
        CHECK(!scope.previous);
        CHECK(isProcessBufferHeapExcessEnabled());
    }
    setProcessBufferHeapExcessEnabled(false);

    setProcessBufferHeapSize(0);
    CHECK(getProcessBufferHeapSize() == 0);
    if (failures == 0) std::printf("process buffer heap: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
