#include "net-session-online/glx_player_http.hpp"

#include <cstdio>
#include <cstring>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    GLXPlayerHttp http;

    http.sendByGet("http://h/p", "q");
    CHECK(std::string(http.GetRequestData()) == "GET http://h/p?q&v= HTTP/1.1\r\nHost: h\r\n\r\n");
    CHECK(!http.IsSendByPost());

    http.sendByGetWithNoVer("http://h/p", "q");
    CHECK(std::string(http.GetRequestData()) == "GET http://h/p?q HTTP/1.1\r\nHost: h\r\n\r\n");

    http.sendByPost("http://h/p", "q");
    CHECK(http.IsSendByPost());
    const std::string post(http.GetRequestData(), http.GetRequestLength());
    CHECK(post.rfind("POST http://h/p HTTP/1.1\r\nHost: h\r\n", 0) == 0);
    CHECK(post.find("Content-length: 4\r\n\r\nq&v=") != std::string::npos);

    http.downloadFile("h", "/x", nullptr, nullptr, 5, 9);
    CHECK(!http.IsSendByPost());
    const std::string get(http.GetRequestData());
    CHECK(get.rfind("GET /x HTTP/1.1\r\nHost:h\r\n", 0) == 0);
    CHECK(get.find("Range: bytes=5-9\r\n") != std::string::npos);
    CHECK(get.size() >= 4 && get.compare(get.size() - 4, 4, "\r\n\r\n") == 0);

    return failures == 0 ? 0 : 1;
}
