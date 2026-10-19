// Test for the batch r1n-net-session-online-pack0-ae5040-0: item::read (0x842a88).
// The twelve tags map to the twelve string fields in the order of the ARM listing (the fields
// are 0x18 bytes apart: id at +0x00 ... button_left at +0xf0, button_right at +0x108, the child
// text is read at +0x2c of each XML node).
#include <cstdio>
#include <string>

#include "core-platform/slim_xml.hpp"
#include "net-session-online/item.hpp"

static int failures = 0;
#define CHECK(c)                                                          \
    do {                                                                  \
        if (!(c)) {                                                       \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);       \
            ++failures;                                                   \
        }                                                                 \
    } while (0)

// Adds <name>text</name> under parent. The trees are built with addChild, as the parser builds them.
static slim::XmlNode* AddText(slim::XmlNode* parent, const char* name, const std::string& text) {
    slim::XmlNode* child = parent->addChild(name, slim::kElement);
    child->value_ = text;
    return child;
}

int main() {
    static const char* const kTags[12] = {
        "id",     "title",       "description", "link",   "attachment_id", "fileType",
        "fileSize", "width",     "height",      "times",  "button_left",   "button_right",
    };

    slim::XmlDocument node;
    for (int i = 0; i < 12; ++i) {
        AddText(&node, kTags[i], "v" + std::to_string(i));
    }
    item full;
    full.read(&node);
    for (int i = 0; i < 12; ++i) {
        CHECK(full.FieldForTest(i) == "v" + std::to_string(i));
    }

    // A node with no tags leaves every field empty (the original only copies found children).
    slim::XmlDocument bare;
    item empty;
    empty.read(&bare);
    CHECK(empty.FieldForTest(0).empty());
    CHECK(empty.FieldForTest(11).empty());

    std::printf(failures == 0 ? "OK\n" : "FAILED\n");
    return failures == 0 ? 0 : 1;
}
