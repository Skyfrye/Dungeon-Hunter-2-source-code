#include "net-session-online/glx_player_http.hpp"

#include <algorithm>
#include <memory>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <string>
#include <vector>

#include "net-session-online/deps/xp_api.hpp"
#include "net-session-online/xp_api.hpp"

namespace {

// Null-safe view of a C string. The original would crash on null; the port sends an empty field.
std::string Text(const char* text) { return text != nullptr ? std::string(text) : std::string(); }

// Copies the request text into the inline buffer, cut to capacity - 1 bytes.
void StoreRequest(char* buffer, std::size_t capacity, const std::string& text) {
    std::memset(buffer, 0, capacity);
    std::memcpy(buffer, text.data(), std::min(text.size(), capacity - 1));
}

// The version string held in field414_ (the original's *(this+261)).
std::string VersionOf(const std::unique_ptr<char[]>& version) {
    return version ? std::string(version.get()) : std::string();
}

// Host of "scheme://host/path": the third '/'-separated field, then the text up to the next '/'.
// Uses the XP_API_PARSE_DATA offsets the original uses.
std::string HostOf(const std::string& url) {
    std::vector<char> urlBuf(url.begin(), url.end());
    urlBuf.push_back('\0');
    std::vector<char> field(url.size() + 1, 0);
    const std::int32_t start = XP_API_PARSE_DATA(urlBuf.data(), field.data(), 2, 47);
    if (start < 0) {
        return std::string();
    }
    const std::string rest = url.substr(static_cast<std::size_t>(start));
    std::vector<char> restBuf(rest.begin(), rest.end());
    restBuf.push_back('\0');
    std::vector<char> host(rest.size() + 1, 0);
    XP_API_PARSE_DATA(restBuf.data(), host.data(), 0, 47);
    return std::string(host.data());
}

// Stores the body as the owned post body, with its length.
void StorePostBody(std::unique_ptr<char[]>& body, std::int32_t& length, const std::string& text) {
    body.reset(new char[text.size() + 1]);
    std::memcpy(body.get(), text.c_str(), text.size() + 1);
    length = static_cast<std::int32_t>(text.size());
}

}  // namespace

// 0x82cf4c _ZN13GLXPlayerHttp12downloadFileEPcS0_S0_S0_ll
// Builds the GET request text, then calls Start() (vtable +0x48), as the original does.
// The response buffer is released and its length reset, as in the original.
void GLXPlayerHttp::downloadFile(const char* host, const char* path, const char* cookie, const char* referer,
                                 std::int32_t rangeStart, std::int32_t rangeEnd) {
    XP_DEBUG_OUT("GLXPlayerHttp::downloadFile()\n");
    std::string text = "GET " + Text(path) + " HTTP/1.1\r\n";
    text += "Host:" + Text(host) + "\r\n";
    if (referer != nullptr) {
        text += "Referer:" + Text(referer) + "\r\n";
    }
    text += "Accept:*/*\r\n";
    text += "User-Agent:Mozilla/4.0 (compatible; MSIE 5.00; Windows 98)\r\n";
    text += "Connection:Keep-Alive\r\n";
    if (cookie != nullptr) {
        text += "Set Cookie:0" + Text(cookie) + "\r\n";
    }
    if (rangeStart >= 0) {
        text += "Range: bytes=" + std::to_string(rangeStart) + "-";
        if (rangeStart < rangeEnd) {
            text += std::to_string(rangeEnd);
        }
        text += "\r\n";
    }
    text += "\r\n";
    StoreRequest(request_, sizeof request_, text);

    sendByPost_ = false;
    Start();  // vtable +0x48 is GLXPlayerHttp::Start (0x82ce08)
    response_.reset();
    responseLength_ = 0;
}

// 0x82d444 _ZN13GLXPlayerHttp10sendByPostEPcS0_
// Partial: the request line and headers go to the inline buffer, the body (headers + "query&v=version")
// to the owned post body, then Start() (vtable +0x48). The original appends
// "&v=" to the caller's buffer in place; the port leaves the caller's buffer alone.
void GLXPlayerHttp::sendByPost(const char* url, const char* query) {
    XP_DEBUG_OUT("GLXPlayerHttp::sendByPost()\n");
    if (url == nullptr || query == nullptr) {
        XP_DEBUG_OUT("GLXPlayerHttp::sendByPost() invalid parameters\n");
        return;
    }
    const std::string address(url);
    const std::string body = std::string(query) + "&v=" + VersionOf(field414_);
    const std::string header = "POST " + address + " HTTP/1.1\r\nHost: " + HostOf(address) +
                               "\r\nContent-type: application/x-www-form-urlencoded\r\nContent-length: " +
                               std::to_string(body.size()) + "\r\n\r\n";
    StoreRequest(request_, sizeof request_, header);

    response_.reset();
    responseLength_ = 0;
    StorePostBody(postBody_, postLength_, header + body);
    sendByPost_ = true;
    Start();  // vtable +0x48
    response_.reset();  // the original frees the response again after the call and zeroes its length
    responseLength_ = 0;
}

// 0x82d6e0 _ZN13GLXPlayerHttp15sendVideoByPostEPcS0_S0_RiS0_
// Partial: multipart/form-data POST with an AVI part. The header and multipart body go to the owned post
// body; the inline buffer is not used. On return *length holds the total post length, as in the original.
// Then Start() (vtable +0x48). The response is released only after Start(), as in the original.
// The original's return value (the freed response pointer) is not returned.
void GLXPlayerHttp::sendVideoByPost(const char* url, const char* query, const char* data, std::int32_t* length,
                                    const char* fileName) {
    const std::string address = Text(url);
    const std::string host = HostOf(address);
    const std::string part = std::string("------GL_HTTP_POST_AVI\r\nContent-Disposition: form-data; name=\"file\"; "
                                         "filename=\"") +
                             Text(fileName) + "\"\r\nContent-Type: video/avi\r\n\r\n";
    const std::string trailer = "\r\n------GL_HTTP_POST_AVI--\r\n";
    const auto dataLength = static_cast<std::size_t>(*length);
    std::string multipart = part;
    multipart.append(data != nullptr ? data : "", dataLength);
    multipart += trailer;

    const std::string body = Text(query) + "&v=" + VersionOf(field414_);
    const std::string header = "POST " + address + "?" + body + " HTTP/1.1\r\nHost: " + host +
                               "\r\nAccept: */*\r\nContent-Type: multipart/form-data; "
                               "boundary=----GL_HTTP_POST_AVI\r\nContent-length: " +
                               std::to_string(multipart.size()) +
                               "\r\nProxy-Connection: Keep-Alive\r\nPragma: no-cache\r\n\r\n";

    StorePostBody(postBody_, postLength_, header + multipart);
    *length = postLength_;
    sendByPost_ = true;
    Start();  // vtable +0x48
    response_.reset();
    responseLength_ = 0;
}

// 0x82d9ac _ZN13GLXPlayerHttp9sendByGetEPcS0_
// Builds "GET url?query&v=version" with the Host header, then Start() (vtable +0x48).
void GLXPlayerHttp::sendByGet(const char* url, const char* query) {
    XP_DEBUG_OUT("GLXPlayerHttp::sendByGet()\n");
    if (url == nullptr || query == nullptr) {
        XP_DEBUG_OUT("GLXPlayerHttp::sendByGet() invalid parameters\n");
        return;
    }
    const std::string address(url);
    const std::string text = "GET " + address + "?" + query + "&v=" + VersionOf(field414_) + " HTTP/1.1\r\n" +
                             "Host: " + HostOf(address) + "\r\n\r\n";
    StoreRequest(request_, sizeof request_, text);
    sendByPost_ = false;
    Start();  // vtable +0x48
    response_.reset();
    responseLength_ = 0;
}

// 0x82dc3c _ZN13GLXPlayerHttp18sendByGetWithNoVerEPcS0_
// As sendByGet without the "&v=" version field. The original's trace string says sendByGet and
// is kept. Then Start() (vtable +0x48).
void GLXPlayerHttp::sendByGetWithNoVer(const char* url, const char* query) {
    XP_DEBUG_OUT("GLXPlayerHttp::sendByGet()\n");
    if (url == nullptr || query == nullptr) {
        XP_DEBUG_OUT("GLXPlayerHttp::sendByGet() invalid parameters\n");
        return;
    }
    const std::string address(url);
    const std::string text = "GET " + address + "?" + query + " HTTP/1.1\r\n" + "Host: " + HostOf(address) +
                             "\r\n\r\n";
    StoreRequest(request_, sizeof request_, text);
    sendByPost_ = false;
    Start();  // vtable +0x48
    response_.reset();
    responseLength_ = 0;
}
