#include "net-session-online/lcx_player_http.hpp"

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

bool StartsWith(const std::string& text, const std::string& prefix) {
    return text.compare(0, prefix.size(), prefix) == 0;
}

bool EndsWith(const std::string& text, const std::string& suffix) {
    return text.size() >= suffix.size() &&
           text.compare(text.size() - suffix.size(), suffix.size(), suffix) == 0;
}

}  // namespace

int main() {
    // GET: url?query&v=<version> HTTP/1.1, then the (stand-in, empty) Host line.
    LCXPlayerHttp http("lobby.local", "3", nullptr);
    http.sendByGet("/lobby", "q=1");
    std::string request = http.GetRequestData();
    CHECK(StartsWith(request, "GET /lobby?q=1&v=3 HTTP/1.1\r\n"));
    CHECK(EndsWith(request, "\r\n\r\n"));
    CHECK(http.GetRequestLength() == request.size());
    CHECK(http.GetResponseLen() == 0);

    // GET with no version or PHP address: the no-version form uses the URL as the target.
    LCXPlayerHttp noVer("lobby.local", "3", nullptr);
    noVer.sendByGetWithNoVer("/x", "y=2");
    request = noVer.GetRequestData();
    CHECK(StartsWith(request, "GET /x?y=2 HTTP/1.1\r\n"));
    CHECK(EndsWith(request, "User-Agent: \r\n\r\n"));

    LCXPlayerHttp withPhp("lobby.local", "3", "/php/script.php");
    withPhp.sendByGetWithNoVer("/x", "y=2");
    CHECK(StartsWith(withPhp.GetRequestData(), "GET /php/script.php?y=2 HTTP/1.1\r\n"));

    // POST: the request head is followed by the query with &v=<version> appended.
    LCXPlayerHttp post("lobby.local", "3", nullptr);
    post.sendByPost("/lobby", "q=1");
    request = post.GetRequestData();
    CHECK(StartsWith(request, "POST /lobby HTTP/1.1\r\n"));
    CHECK(StartsWith(request.substr(request.find("Content-length: ")), "Content-length: 7\r\n"));
    CHECK(EndsWith(request, "q=1&v=3"));
    CHECK(post.GetRequestLength() == request.size());

    // downloadFile: the Range line appears only when the start is positive.
    LCXPlayerHttp download("cdn.local", "3", nullptr);
    download.downloadFile("cdn.local", "/a.bin", "ck", "ref", 10, 20);
    request = download.GetRequestData();
    CHECK(StartsWith(request, "GET /a.bin HTTP/1.1\r\n"));
    CHECK(request.find("Referer:ref\r\n") != std::string::npos);
    CHECK(request.find("Set Cookie:0ck\r\n") != std::string::npos);
    CHECK(request.find("Range: bytes=10-20\r\n") != std::string::npos);
    CHECK(EndsWith(request, "\r\n\r\n"));

    download.downloadFile("cdn.local", "/a.bin", nullptr, nullptr, 0, 0);
    CHECK(std::string(download.GetRequestData()).find("Range:") == std::string::npos);

    // sendVideoByPost: size is replaced by the total post length.
    LCXPlayerHttp video("lobby.local", "3", nullptr);
    std::int32_t size = 5;
    video.sendVideoByPost("/up", "q=1", "VIDEO", size, "clip.avi");
    request = video.GetRequestData();
    CHECK(StartsWith(request, "POST /up?q=1&v=3 HTTP/1.1\r\n"));
    CHECK(request.find("filename=\"clip.avi\"") != std::string::npos);
    CHECK(request.find("VIDEO") != std::string::npos);
    CHECK(EndsWith(request, "\r\n------GL_HTTP_POST_AVI--\r\n"));
    CHECK(static_cast<std::size_t>(size) == request.size());
    CHECK(video.GetRequestLength() == static_cast<std::uint32_t>(size));

    // SetResponseData copies exactly size bytes and keeps the length.
    LCXPlayerHttp response(nullptr, nullptr, nullptr);
    response.SetResponseData("abcdef", 3);
    CHECK(std::strncmp(response.GetResponse(), "abc", 3) == 0);
    CHECK(response.GetResponseLen() == 3);

    std::printf("%s\n", failures ? "lcx_player_http: FAILED" : "lcx_player_http: ok");
    return failures != 0;
}
