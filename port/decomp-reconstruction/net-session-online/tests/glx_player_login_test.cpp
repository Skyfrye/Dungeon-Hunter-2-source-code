#include "net-session-online/glx_player_login.hpp"
#include "net-session-online/xp_api.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    GLXPlayerLogin login;
    CHECK(login.getAPNSIP() == nullptr);
    CHECK(login.getAPNSPort() == 0);
    CHECK(login.getAPNSPrivateKeyPassword() == nullptr);
    CHECK(login.getProductListCount() == 0);
    CHECK(login.getProductGGI(0) == -1);
    CHECK(login.getProductName(0) == 0);
    CHECK(!login.ShouldSendKeepAlive());        // disabled

    login.SetAPNSIPForTest("push.example");
    login.SetAPNSPortForTest(2195);
    CHECK(std::strcmp(login.getAPNSIP(), "push.example") == 0);
    CHECK(login.getAPNSPort() == 2195);

    login.SetProductsForTest({11, 12}, {21, 22}, {"31", "32"});
    CHECK(login.getProductListCount() == 2);
    CHECK(login.getProductGGI(1) == 12);
    CHECK(login.getProductID(0) == 21);
    CHECK(std::strcmp(login.getProductName(1), "32") == 0);
    CHECK(login.getProductID(2) == -1);
    CHECK(login.getProductGGI(-1) == -1);

    // XP_API_GET_TIME is the real millisecond clock now: a keep-alive stamped just now is not due, one stamped more than the
    // 90000 ms interval ago is.
    login.SetKeepAliveForTest(true, static_cast<std::int32_t>(XP_API_GET_TIME()));
    CHECK(!login.ShouldSendKeepAlive());
    login.SetKeepAliveForTest(true, static_cast<std::int32_t>(XP_API_GET_TIME()) - 100000);
    CHECK(login.ShouldSendKeepAlive());

    std::printf("%s\n", failures ? "glx_player_login: FAILED" : "glx_player_login: ok");
    return failures != 0;
}
