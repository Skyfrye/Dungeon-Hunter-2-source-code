// GLXPlayerWebComponent: the web request base of the GLX player services. A
// request is sent as a GET or POST through a request client. The response comes
// back as text with '|'-separated tokens, read with the response cursor set by
// StartResponseParser.
//
// Layout (original 32-bit offsets, kept as comments; the GLXPlayerComponent base
// occupies +0x00..+0x0f):
//   +0x10 owned string (zeroed by the ctor, freed by the dtor; role not identified)
//   +0x14 owned string (same)     +0x18 owned string (same)
//   +0x1c service URL (owned, set by LoadConfig)
//   +0x20 request client (GLXPlayerHttp, 0x428 bytes; the ctors of the derived services
//         create it with the three owned strings)
//   +0x24 response cursor (points into the response text)
//   +0x28 response function id (set by StartResponseParser, cleared by Cancel)
//   +0x2c enabled flag (byte)
//   +0x34 request start time (XP_API_GET_TIME)
//   +0x38 request id, -1 when idle
//
// The request client's vtable slots as the web component calls them (the port calls the
// GLXPlayerHttp methods of the same role): +0x18 GetResponse, +0x1c GetResponseLen,
// +0x24 send by GET, +0x28 send by POST, +0x34 UpdateRequest, +0x38 Cancel, +0x3c
// IsInProgress, +0x40 IsErrorOccurred. Slot +0x44 is not identified.
//
// Virtual slots (after the base dtors at slots 0 and 1): +0x08 Update,
// +0x0c SendByGet, +0x10 SendByPost, +0x14 Cancel, +0x18 OnUpdateParse,
// +0x1c OnUpdateSuccess, +0x20 OnUpdateFailure, +0x24 LoadConfig.
#pragma once

#include <cstdint>
#include <memory>

#include "net-session-online/glx_player_component.hpp"
#include "net-session-online/glx_player_http.hpp"

class GLXPlayerWebComponent : public GLXPlayerComponent {
public:
    GLXPlayerWebComponent();                                    // 0x8320d0 C1, 0x832134 C2
    ~GLXPlayerWebComponent() override;                          // 0x831f14 D1, 0x832000 D2
    GLXPlayerWebComponent(const GLXPlayerWebComponent&) = delete;
    GLXPlayerWebComponent& operator=(const GLXPlayerWebComponent&) = delete;

    // Partial bodies: see each function in the .cpp for the part that is not reconstructed.
    virtual void Update();                                      // 0x831dfc
    virtual std::int32_t SendByGet(char* request);              // 0x831cd4 (returns 1)
    virtual std::int32_t SendByPost(char* request);             // 0x831bd4 (returns 1)
    virtual void Cancel();                                      // 0x831c88
    virtual void OnUpdateParse();                               // 0x8319b0
    virtual void LoadConfig();                                  // 0x8315c4

    // 0x831588 _ZN21GLXPlayerWebComponent15OnUpdateSuccessEi
    // Calls observer slot 2 with the arg, the response text and its length.
    virtual void OnUpdateSuccess(std::int32_t arg);
    // 0x83197c _ZN21GLXPlayerWebComponent15OnUpdateFailureEi
    // Reads the next response token as an int and passes it to observer slot 3.
    virtual bool OnUpdateFailure(std::int32_t code);

    // 0x83155c _ZN21GLXPlayerWebComponent19StartResponseParserEPci
    void StartResponseParser(const char* response, std::int32_t functionId);
    // 0x831568 _ZN21GLXPlayerWebComponent13GetFunctionIDEci
    // 'f' gives id, 'g' gives id + 500, any other kind gives -1. Static here
    // because the original ignores its this pointer.
    static std::int32_t GetFunctionID(char kind, std::int32_t id);
    // 0x831744 _ZN21GLXPlayerWebComponent20GetNextResponseTokenEPc
    // Copies the next '|'-separated token into out (at least 256 bytes) and
    // advances the cursor. An empty token gives "".
    char* GetNextResponseToken(char* out);
    // 0x8317dc _ZN21GLXPlayerWebComponent22IsNextResponseIntTokenEi
    bool IsNextResponseIntToken(std::int32_t expected);
    // 0x83186c _ZN21GLXPlayerWebComponent25IsNextResponseStringTokenEPKc
    bool IsNextResponseStringToken(const char* expected);
    // 0x8318fc _ZN21GLXPlayerWebComponent23GetNextResponseIntTokenEv
    std::int32_t GetNextResponseIntToken();

    // Not in the original: test seams to read the parser state back.
    const char* ResponseCursorForTest() const { return cursor_; }
    std::int32_t FunctionIdForTest() const { return functionId_; }
    std::int32_t RequestIdForTest() const { return requestId_; }
    bool EnabledForTest() const { return enabled_; }

protected:
    std::unique_ptr<char[]> string10_;   // +0x10
    std::unique_ptr<char[]> string14_;   // +0x14
    std::unique_ptr<char[]> string18_;   // +0x18
    std::unique_ptr<char[]> url_;        // +0x1c
    std::unique_ptr<GLXPlayerHttp> requestClient_;  // +0x20 (the 0x428-byte GLXPlayerHttp)
    const char* cursor_ = nullptr;       // +0x24
    std::int32_t functionId_ = 0;        // +0x28
    bool enabled_ = false;               // +0x2c
    std::uint32_t requestTime_ = 0;      // +0x34
    std::int32_t requestId_ = -1;        // +0x38
};
