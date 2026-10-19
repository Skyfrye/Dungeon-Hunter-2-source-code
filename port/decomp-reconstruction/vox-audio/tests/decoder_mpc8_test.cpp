// vox::DecoderMPC8::DestroyCursor: a null cursor is ignored; otherwise the cursor's virtual
// destructor runs and its storage is released.
#include <cstdio>
#include <new>

#include "vox-audio/vox/decoder_mpc8.hpp"
#include "vox-audio/vox/memory.hpp"

namespace {
int g_failures = 0;
#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__,   \
                         __LINE__, #cond);                                \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)

int g_destroyed = 0;

class CountingCursor final : public vox::DecoderCursorInterface {
public:
    ~CountingCursor() override { ++g_destroyed; }
    int Decode(void*, int) override { return 0; }
    int Seek(unsigned int) override { return 0; }
    bool HasData() override { return false; }
};
// A concrete subclass is kept so this test links without the cursor's demuxer symbols; the
// library's DecoderMPC8 is concrete now that CreateNewCursor (0x8704ac) is installed.
class ConcreteMPC8 final : public vox::DecoderMPC8 {
public:
    using vox::DecoderMPC8::DecoderMPC8;
    vox::DecoderCursorInterface* CreateNewCursor(vox::StreamCursorInterface*) override { return nullptr; }
};
}  // namespace

int main() {
    vox::DecoderMPC8Params params;
    ConcreteMPC8 decoder(&params);

    decoder.DestroyCursor(nullptr);
    CHECK(g_destroyed == 0);

    void* storage = VoxAlloc(sizeof(CountingCursor));
    auto* cursor = new (storage) CountingCursor();
    decoder.DestroyCursor(cursor);
    CHECK(g_destroyed == 1);

    std::printf("decoder_mpc8_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
