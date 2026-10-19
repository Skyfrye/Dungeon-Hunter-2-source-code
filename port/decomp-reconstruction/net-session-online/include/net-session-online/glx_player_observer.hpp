// GLXPlayerObserver: callback interface of the GLX player services. Slot names and order are the binary's, read from the
// vtables of the classes that implement it (CSignInGLLiveObserver, CMatchingGLLiveFriendObserver, CMatchingGLLiveMessageObserver,
// CXPlayerManager): +0x00 OnNetworkError(), +0x04 OnRequestTimeout(int), +0x08 OnRequestSuccess(int, char*, int),
// +0x0c OnRequestFailure(int, int), +0x10 OnDownloadError(int). _ZTV17GLXPlayerObserver is 28 bytes (seven slots); only
// OnDownloadError (0x52df0c, empty) has a body in the base, the other slots are pure in the binary and are inert defaults here.
//
// The original has no virtual destructor. One is added here so the observer can be owned through a base pointer; it is not
// counted in the slot numbers above.
#pragma once

#include <cstdint>

class GLXPlayerObserver {
public:
    virtual ~GLXPlayerObserver() = default;

    // +0x00. Called by the web component when a request fails at the transport level.
    virtual void OnNetworkError() {}
    // +0x04. Called as observer->OnRequestTimeout(requestId) when a request times out.
    virtual void OnRequestTimeout(std::int32_t /*requestId*/) {}
    // +0x08. Called with (function id, response text, text length) after a successful response.
    virtual void OnRequestSuccess(std::int32_t /*functionId*/, char* /*text*/, std::int32_t /*length*/) {}
    // +0x0c. Called with (function id, error code) on a failed response.
    virtual void OnRequestFailure(std::int32_t /*functionId*/, std::int32_t /*errorCode*/) {}
    // +0x10, 0x52df0c _ZN17GLXPlayerObserver15OnDownloadErrorEi. Empty in the original.
    virtual void OnDownloadError(std::int32_t /*code*/) {}
};
