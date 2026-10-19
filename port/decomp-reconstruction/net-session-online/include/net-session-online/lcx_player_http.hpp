// LCXPlayerHttp: the lobby-side HTTP request builder. It derives from the socket observer
// (the constructor and the destructor store the observer vtable) and owns one LCX socket.
// The request builders below follow the original's text; see each comment for what is
// partial.
//
// Layout (original 32-bit offsets, kept as comments; confirmed against the ARM ctor):
//   +0x00 vptr                              +0x04 socket (LCXPlayerSocket*, owned)
//   +0x08 inline request buffer (0x400 bytes)
//   +0x408 response text (owned)            +0x40c response length (int)
//   +0x410 server address (owned)           +0x414 PHP script version (owned)
//   +0x418 PHP address (owned)              +0x41c post body (owned)
//   +0x420 post body length (int)           +0x424 send-by-post flag (byte)
#pragma once

#include <cstdint>
#include <memory>

#include "net-session-online/lcx_player_socket.hpp"

class LCXPlayerHttp : public LCXPlayerSocketObserver {
public:
    // 0x89d950 and 0x89d9f8 _ZN13LCXPlayerHttpC1EPcS0_S0_ (C2 is the same body).
    // Partial: the socket comes from LCXPlayerSocketFactory, which is partial.
    LCXPlayerHttp(const char* serverAddress, const char* phpScriptVersion, const char* phpAddress);
    // 0x89d4fc _ZN13LCXPlayerHttpD1Ev: calls Cancel (0x89d42c), then deletes the socket.
    // D2 (0x89d5e0) has the same body; D0 (0x89d5c4) is the deleting variant.
    ~LCXPlayerHttp() override;
    LCXPlayerHttp(const LCXPlayerHttp&) = delete;
    LCXPlayerHttp& operator=(const LCXPlayerHttp&) = delete;

    // 0x89d3ac _ZN13LCXPlayerHttp14GetRequestDataEv
    const char* GetRequestData() const override { return sendByPost_ ? postBody_.get() : request_; }
    // 0x89d414 _ZN13LCXPlayerHttp11GetResponseEv
    const char* GetResponse() const { return response_.get(); }
    // 0x89d41c _ZN13LCXPlayerHttp14GetResponseLenEv
    std::int32_t GetResponseLen() const { return responseLength_; }
    // 0x89d424 _ZN13LCXPlayerHttp14SetResponseLenEi
    void SetResponseLen(std::int32_t length) override { responseLength_ = length; }
    // 0x89d484 _ZN13LCXPlayerHttp16GetRequestLengthEv
    // The post body length when sending by POST, otherwise the length of the inline text.
    std::int32_t GetRequestLength() const override;

    // 0x89d3c0 _ZN13LCXPlayerHttp13UpdateRequestEv: runs one receive step of the socket.
    void UpdateRequest();
    // 0x89d3dc _ZN13LCXPlayerHttp12IsInProgressEv: the socket's IsInProgress (0 without a socket).
    bool IsInProgress() const;
    // 0x89d3f8 _ZN13LCXPlayerHttp15IsErrorOccurredEv: the socket's IsErrorOccurred (false without a socket).
    bool IsErrorOccurred() const;
    // 0x89d42c _ZN13LCXPlayerHttp6CancelEv: cancels the socket, then frees the post body and
    // the response and clears the response length. The original leaves the pointers set.
    void Cancel();

    // 0x89d4a0 _ZN13LCXPlayerHttp15SetResponseDataEPci
    // Copies size bytes into a new owned buffer and terminates it. size is assumed >= 0.
    void SetResponseData(const char* data, std::int32_t size) override;
    // 0x89dd70 _ZN13LCXPlayerHttp12downloadFileEPcS0_S0_S0_ll
    // Builds a GET with Range when from > 0. The original appends without a bound; the
    // port stops at the 0x400-byte buffer. The response is cleared and the socket started.
    void downloadFile(const char* server, const char* object, const char* cookie,
                      const char* referer, long from, long to);
    // 0x89d6a8 _ZN13LCXPlayerHttp18sendByGetWithNoVerEPcS0_. Partial: the User-Agent is empty
    // (see the cpp). The Host value follows the two LC_API_PARSE_DATA calls.
    void sendByGetWithNoVer(const char* url, const char* query);
    // 0x89e2e8 _ZN13LCXPlayerHttp9sendByGetEPcS0_. Partial: the Host value is a stand-in.
    void sendByGet(const char* url, const char* query);
    // 0x89e048 _ZN13LCXPlayerHttp10sendByPostEPcS0_. Partial: the original appends "&v=<version>"
    // to the caller's query in place; the port copies it.
    void sendByPost(const char* url, const char* query);
    // 0x89daa0 _ZN13LCXPlayerHttp15sendVideoByPostEPcS0_S0_RiS0_. Partial: the caller's query is
    // copied, not appended in place. On return size holds the total length of the multipart post.
    void sendVideoByPost(const char* url, const char* query, const char* data, std::int32_t& size,
                         const char* videoId);

    // Not in the original: test seams.
    void SetRequestForTest(const char* text);
    void SetPostForTest(const char* body, std::int32_t length, bool byPost);
    void SetResponseForTest(const char* text);

private:
    LCXPlayerSocket* socket_ = nullptr;                   // +0x04
    char request_[0x400] = {};                            // +0x08
    std::unique_ptr<char[]> response_;                    // +0x408
    std::int32_t responseLength_ = 0;                     // +0x40c
    std::unique_ptr<char[]> serverAddress_;               // +0x410
    std::unique_ptr<char[]> phpScriptVersion_;            // +0x414
    std::unique_ptr<char[]> phpAddress_;                  // +0x418
    std::unique_ptr<char[]> postBody_;                    // +0x41c
    std::int32_t postLength_ = 0;                         // +0x420
    bool sendByPost_ = false;                             // +0x424
};
