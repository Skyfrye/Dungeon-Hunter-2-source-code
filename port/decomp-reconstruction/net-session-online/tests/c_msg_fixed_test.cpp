#include "net-session-online/c_msg_fixed.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CMsgIsHost host(true);  // explicit bool constructor (GetNewInstance<CMsgIsHost>(bool))
    CHECK(host.GetDataSize() == 4);
    CHECK(host.GetDataPtr() != nullptr);
    host.SetProperties();

    CMsgRaisedEvent raised(true);  // the canonical class (c_msg_raised_event.hpp) has the bool constructor
    CHECK(raised.GetDataSize() == 0x14);
    raised.SetProperties();
    CHECK(raised.IsReliable());

    CMsgGlobalDeath death(true);  // explicit bool constructor (GetNewInstance<CMsgGlobalDeath>(bool))
    CHECK(death.GetDataSize() == 0);
    death.SetProperties();
    CHECK(death.IsReliable());

    std::printf("%s\n", failures ? "c_msg_fixed: FAILED" : "c_msg_fixed: ok");
    return failures != 0;
}
