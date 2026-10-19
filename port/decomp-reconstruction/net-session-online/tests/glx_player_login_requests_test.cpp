#include "net-session-online/glx_player_login.hpp"

#include <cstdio>
#include <cstring>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Captures the request text that the senders hand to SendByGet.
class CapturingLogin : public GLXPlayerLogin {
public:
    std::int32_t SendByGet(char* request) override { last = request; return 1; }
    std::string last;
};

int main() {
    CapturingLogin login;
    login.SetGGI(42);
    login.SetUID("abc");

    login.SendGetLobbyServer();
    CHECK(login.last == "f|107|i|42|u|abc|");

    login.SendKeepAlive();
    CHECK(login.last == "f|16|i|42|u|abc|");

    login.SendGetAPNSInfo(5);
    CHECK(login.last == "f|83|i|42|u|abc|t|5|");

    login.SendGameInvitationGetLobbyServer("friend");
    CHECK(login.last == "f|108|i|42|u|abc|cn|friend|");

    login.SendGetProductInfo("list");
    CHECK(login.last == "f|95|i|42|u|abc|l|list|");

    // Logout clears the keep-alive flag before it sends.
    login.SetKeepAliveForTest(true, 0);
    login.SendLogout();
    CHECK(login.last == "f|17|i|42|u|abc|");
    CHECK(!login.KeepAliveEnabled());

    // With keep-alive off, KeepAlive sends nothing.
    login.last.clear();
    login.KeepAlive();
    CHECK(login.last.empty());

    // A missing user id is sent as an empty string.
    CapturingLogin anonymous;
    anonymous.SetGGI(7);
    anonymous.SendGetLobbyServer();
    CHECK(anonymous.last == "f|107|i|7|u||");

    // clearProductInfo empties the product lists.
    CapturingLogin products;
    products.SetProductsForTest({1, 2}, {3, 4}, {"5", "6"});
    CHECK(products.getProductListCount() == 2);
    products.clearProductInfo();
    CHECK(products.getProductListCount() == 0);

    std::printf("%s\n", failures ? "glx_player_login_requests: FAILED" : "glx_player_login_requests: ok");
    return failures != 0;
}
