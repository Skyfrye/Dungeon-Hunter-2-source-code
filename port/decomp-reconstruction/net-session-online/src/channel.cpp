#include "net-session-online/channel.hpp"

#include <cstdlib>

// 0x8435ec _ZN7channelaSERKS_
channel& channel::operator=(const channel& other) {
    if (this != &other) {
        title_ = other.title_;
        link_ = other.link_;
        description_ = other.description_;
    }
    items_ = other.items_;
    return *this;
}

// 0x842468 _ZNK7channel5writeEPN4slim7XmlNodeE
// The binary's body is a bare return.
void channel::write(slim::XmlNode* /*node*/) const {}

// 0x843e64 _ZN7channel4readEPKN4slim7XmlNodeE
void channel::read(const slim::XmlNode* node) {
    if (node == nullptr) {
        std::abort();  // the original calls _assert2()
    }
    if (const slim::XmlNode* child = node->findChild("title")) {
        title_ = child->value_.c_str();
    }
    if (const slim::XmlNode* child = node->findChild("link")) {
        link_ = child->value_.c_str();
    }
    if (const slim::XmlNode* child = node->findChild("description")) {
        description_ = child->value_.c_str();
    }
    slim::XmlNode::ChildIterator cursor;
    for (const slim::XmlNode* entry = node->findFirstChild("item", cursor); entry != nullptr;
         entry = node->findNextChild("item", cursor)) {
        // The original grows the vector by one element (resize to size + 1), then reads into
        // the new last element. item is 0x120 bytes, so the element count is the size.
        items_.emplace_back();
        items_.back().read(entry);
    }
}
