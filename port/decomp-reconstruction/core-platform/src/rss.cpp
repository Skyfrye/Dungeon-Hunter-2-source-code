#include "core-platform/rss.hpp"

#include "core-platform/slim_xml.hpp"

#include <cassert>

// 0x842464 rss::write(slim::XmlNode*) const: the original returns at once.
void rss::write(slim::XmlNode*) const {}

// 0x844050 rss::read(slim::XmlNode const*)
// Verified against the listing: the null argument asserts, then one channel is appended per
// "channel" child in document order (the original resizes the vector to size + 1 with a
// default channel and reads into the new last element; emplace_back is the same) through the
// real channel::read (0x843e64, net-session-online/src/channel.cpp). Deviation (named): the
// listing's int result, the last findNextChild return, is always null when the loop ends, so
// the void return drops nothing; the assert is assert() here, where the original calls
// __assert2 unconditionally.
void rss::read(const slim::XmlNode* node) {
    assert(node != nullptr);
    slim::XmlNode::ChildIterator it;
    for (const slim::XmlNode* child = node->findFirstChild("channel", it); child != nullptr;
         child = node->findNextChild("channel", it)) {
        emplace_back();
        back().read(child);
    }
}
