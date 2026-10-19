#include "net-session-online/glx_player_message.hpp"

#include <cstdio>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Captures the request text that the senders hand to SendByGet.
class CapturingMessage : public GLXPlayerMessage {
public:
    std::int32_t SendByGet(char* request) override { last = request; return 1; }
    std::string last;
};

int main() {
    CapturingMessage m;
    m.SetGGI(9);
    m.SetUID("u1");

    m.SendGetMySentMessageCount();
    CHECK(m.last == "f|91|i|9|u|u1|");

    m.SendGetMySentMessageHeader(3, 10);
    CHECK(m.last == "f|92|i|9|u|u1|a|3|c|10|");

    m.SendDeleteMessage(77);
    CHECK(m.last == "f|78|i|9|u|u1|m|77|");

    m.SendDelMySentMessage(5);
    CHECK(m.last == "f|94|i|9|u|u1|m|5|");

    // Reading stores the id as the current message id.
    m.SendReadMessage(12);
    CHECK(m.last == "f|76|i|9|u|u1|m|12|");
    CHECK(m.getCurrentMsgID() == 12);

    m.SendReadMySentMessage(40);
    CHECK(m.last == "f|93|i|9|u|u1|m|40|");
    CHECK(m.getCurrentMsgID() == 40);

    std::printf("%s\n", failures ? "glx_player_message_requests: FAILED" : "glx_player_message_requests: ok");
    return failures != 0;
}
