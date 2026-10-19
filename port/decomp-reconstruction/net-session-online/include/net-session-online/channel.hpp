// channel: one feed channel read from a slim XML node. Layout (original 32-bit offsets,
// kept as comments): three strings (title, link, description) and a vector of item at +0x48.
// The original's std::string is 0x18 bytes, so the strings sit at +0x00, +0x18 and +0x30.
#pragma once

#include <cstddef>
#include <string>
#include <vector>

#include "core-platform/slim_xml.hpp"
#include "net-session-online/item.hpp"

class channel {
public:
    // 0x843c60 _ZN7channelC1Ev: every field starts empty.
    channel() = default;
    // 0x8436e4 _ZN7channelC1ERKS_: copies the three strings and the item vector.
    channel(const channel& other) = default;
    // 0x83fa7c _ZN7channelD1Ev: destroys the item vector, then the strings.
    ~channel() = default;

    // 0x8435ec _ZN7channelaSERKS_: each field is copied unless this is the same object.
    channel& operator=(const channel& other);

    // 0x842468 _ZNK7channel5writeEPN4slim7XmlNodeE: empty in the binary (a bare return).
    void write(slim::XmlNode* node) const;

    // 0x843e64 _ZN7channel4readEPKN4slim7XmlNodeE
    // Partial: the original asserts on a null node (kept as abort) and returns the last
    // findNextChild result, which is not reproduced (void here). The item cursor is the binary's
    // slim::XmlNode::ChildIterator (core-platform/slim_xml.hpp).
    void read(const slim::XmlNode* node);

    // Test seams. Not in the original.
    const std::string& TitleForTest() const { return title_; }
    const std::string& LinkForTest() const { return link_; }
    std::size_t ItemCountForTest() const { return items_.size(); }
    const item& ItemForTest(std::size_t index) const { return items_[index]; }

private:
    std::string title_;        // +0x00  tag "title"
    std::string link_;         // +0x18  tag "link"
    std::string description_;  // +0x30  tag "description"
    std::vector<item> items_;  // +0x48  one entry per "item" child
};
