// item: one entry of the XML item list read from the slim tree. The twelve string fields
// are in the original's order. The original's std::string is 0x18 bytes, so field i sits at
// +0x18 * i (+0x00 .. +0x107). Field names come from the XML tags that item::read fills.
#pragma once

#include <string>

#include "core-platform/slim_xml.hpp"

class item {
public:
    // 0x843cd8 _ZN4itemC1Ev: every field starts empty.
    item() = default;
    // 0x842d70 _ZN4itemC1ERKS_: copies the twelve fields in order.
    item(const item& other) = default;
    // 0x83f6e4 _ZN4itemD1Ev: destroys the fields in reverse order.
    ~item() = default;

    // 0x842608 _ZN4itemaSERKS_: copies each field unless this is the same object.
    item& operator=(const item& other);

    // 0x842a88 _ZN4item4readEPKN4slim7XmlNodeE
    // Partial: the original asserts on a null node (kept as abort). Each tag replaces its
    // field only when present. The original's button_right access is written through a
    // string-typed pointer in the Hex-Rays output. It is read here at the same text offset as
    // the other tags (+0x2c), which is inferred and not checked against the binary.
    void read(const slim::XmlNode* node);

    // 0x84246c _ZNK4item5writeEPN4slim7XmlNodeE: empty in the binary (a bare return).
    void write(slim::XmlNode* node) const;

    // Not in the original: test seam returning field i (0 = "id" .. 11 = "button_right").
    const std::string& FieldForTest(int index) const;

private:
    std::string id_;             // +0x00  tag "id"
    std::string title_;          // +0x18  tag "title"
    std::string description_;    // +0x30  tag "description"
    std::string link_;           // +0x48  tag "link"
    std::string attachmentId_;   // +0x60  tag "attachment_id"
    std::string fileType_;       // +0x78  tag "fileType"
    std::string fileSize_;       // +0x90  tag "fileSize"
    std::string width_;          // +0xa8  tag "width"
    std::string height_;         // +0xc0  tag "height"
    std::string times_;          // +0xd8  tag "times"
    std::string buttonLeft_;     // +0xf0  tag "button_left"
    std::string buttonRight_;    // +0x108 tag "button_right"
};
