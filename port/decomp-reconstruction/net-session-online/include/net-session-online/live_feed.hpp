// _LiveFeed: one entry of the GLX live-feed list (GLXPlayerUser +0x12c). The destructor is
// the only body reconstructed, and it shows two owned buffers at +0x00 and +0x04. Their
// names and the rest of the layout are not identified.
#pragma once

class _LiveFeed {
public:
    // Test seam. Not in the original: takes ownership of the two buffers.
    _LiveFeed(char* first, char* second) : first_(first), second_(second) {}

    // 0x83ab64 _ZN9_LiveFeedD1Ev: frees the first buffer, then the second, and clears both.
    ~_LiveFeed();

    char* FirstForTest() const { return first_; }
    char* SecondForTest() const { return second_; }

private:
    char* first_ = nullptr;   // +0x00 (new[] owned)
    char* second_ = nullptr;  // +0x04 (new[] owned)
};
