#include "net-session-online/glx_player_message.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    GLXPlayerMessage msg;
    CHECK(msg.getMsgListCount() == 0);
    CHECK(msg.getMsgID(0) == -1);
    CHECK(msg.getMsgTitle(0) == nullptr);
    CHECK(msg.getMsgCount(1, 0) == 0);          // cleared box
    CHECK(msg.getMsgCount(3, 0) == -1);          // unknown type
    CHECK(msg.getMsgCount(1, 3) == -1);          // box out of range
    CHECK(msg.getMySentMsgCount() == 0);

    msg.SetCountForTest(3);
    msg.SetMessageForTest(0, 100, 1, "7", false, "first");
    msg.SetMessageForTest(1, 101, 2, "8", true, "second");
    msg.SetMessageForTest(2, 102, 1, "9", false, nullptr);
    CHECK(msg.getMsgID(1) == 101);
    CHECK(msg.getMsgType(1) == 2);
    CHECK(std::strcmp(msg.getMsgSender(2), "9") == 0);
    CHECK(std::strcmp(msg.getMsgTitle(0), "first") == 0);
    CHECK(msg.getMsgTitle(3) == nullptr);
    CHECK(msg.getMsgReadState(1));
    CHECK(!msg.getMsgReadState(0));
    CHECK(msg.getMsgSenderNumber(0) == nullptr);   // not set by the seam: default
    CHECK(msg.getMsgCreatedTime(0) == nullptr);

    msg.SetBoxCountForTest(2, 1, 5);
    CHECK(msg.getMsgCount(2, 1) == 5);
    CHECK(msg.getMsgCount(2, 0) == 0);
    msg.SetBoxCountForTest(0x20, 2, 4);
    CHECK(msg.getMsgCount(0x20, 2) == 4);
    msg.clearMsgCount();
    CHECK(msg.getMsgCount(2, 1) == 0);
    CHECK(msg.getMsgCount(0x20, 2) == 0);

    CHECK(msg.getCurrentMsgPosition() == -1);    // no current id yet
    CHECK(msg.getCurrentMsgID() == -1);          // the ctor (0x8368e0) stores -1 at +0x64

    // processMsgCount (0x834ffc), processMsgHeaderList (0x835744), processMySentMsgHeaderList
    // (0x835480), clearMessageList (0x8351cc), getMsgDesUserName (0x835124).
    {
        GLXPlayerMessage parsed;
        char counts[] = "0^1^2^3|0^4^5^6|0^0^0^0|0^0^0^0|0^0^0^0|0^7^8^9";
        parsed.processMsgCount(counts);
        CHECK(parsed.getMsgCount(1, 0) == 1);
        CHECK(parsed.getMsgCount(2, 2) == 6);
        CHECK(parsed.getMsgCount(0x20, 2) == 9);

        char headers[] = "x|2|y|1^1^first^9^4^55^1|2^0^second^8^3^56^0";
        parsed.processMsgHeaderList(headers);
        CHECK(parsed.getMsgListCount() == 2);
        CHECK(parsed.getMsgID(1) == 2);
        CHECK(parsed.getMsgType(0) == 1);
        CHECK(std::strcmp(parsed.getMsgTitle(0), "first") == 0);
        CHECK(std::strcmp(parsed.getMsgSender(0), "9") == 0);
        CHECK(std::strcmp(parsed.getMsgSenderNumber(1), "3") == 0);
        CHECK(std::strcmp(parsed.getMsgCreatedTime(0), "55") == 0);
        CHECK(parsed.getMsgReadState(0) && !parsed.getMsgReadState(1));

        char sent[] = "x|1|y|7^sent title^1,2^u1,u2^99";
        parsed.processMySentMsgHeaderList(sent);
        CHECK(parsed.getMsgListCount() == 1);
        CHECK(parsed.getMsgID(0) == 7);
        CHECK(std::strcmp(parsed.getMsgDesUserNumberList(0), "1,2") == 0);
        char* first = parsed.getMsgDesUserName(0, 1);
        CHECK(std::strcmp(first, "u2") == 0);
        delete[] first;

        parsed.clearMessageList();
        CHECK(parsed.getMsgListCount() == 0);
        CHECK(parsed.getMsgTitle(0) == nullptr);
    }

    std::printf("%s\n", failures ? "glx_player_message: FAILED" : "glx_player_message: ok");
    return failures != 0;
}
