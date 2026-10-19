#include "net-session-online/glx_player_component.hpp"
#include "net-session-online/glx_player_observer.hpp"

#include <cstdio>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
// Observer stand-in: the component never calls it, so only registration is checked.
class NullObserver : public GLXPlayerObserver {};
}  // namespace

int main() {
    GLXPlayerComponent c;
    CHECK(c.GetGGI() == 0);
    CHECK(c.GetUID() == nullptr);

    c.SetGGI(42);
    CHECK(c.GetGGI() == 42);

    c.SetUID("player-1");
    CHECK(c.GetUID() != nullptr && std::string(c.GetUID()) == "player-1");
    // Replacing the id frees the old copy and keeps the new one.
    c.SetUID("p2");
    CHECK(std::string(c.GetUID()) == "p2");
    // A null id clears the stored string.
    c.SetUID(nullptr);
    CHECK(c.GetUID() == nullptr);

    NullObserver obs;
    c.RegisterObserver(&obs);

    if (failures == 0) std::printf("all checks passed\n");
    return failures == 0 ? 0 : 1;
}
