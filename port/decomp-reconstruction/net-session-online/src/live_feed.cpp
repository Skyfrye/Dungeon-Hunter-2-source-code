#include "net-session-online/live_feed.hpp"

// 0x83ab64 _ZN9_LiveFeedD1Ev
_LiveFeed::~_LiveFeed() {
    delete[] first_;
    first_ = nullptr;
    delete[] second_;
    second_ = nullptr;
}
