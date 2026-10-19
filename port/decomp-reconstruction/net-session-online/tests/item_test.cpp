#include "net-session-online/item.hpp"

#include <cstdio>
#include <string>

#include "core-platform/slim_xml.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Adds <name>text</name> under parent. The trees are built with addChild, as the parser builds them.
static slim::XmlNode* AddText(slim::XmlNode* parent, const char* name, const std::string& text) {
    slim::XmlNode* child = parent->addChild(name, slim::kElement);
    child->value_ = text;
    return child;
}

int main() {
    slim::XmlDocument node;
    AddText(&node, "id", "item-7");
    AddText(&node, "title", "Sword");
    AddText(&node, "button_right", "Close");

    item a;
    a.read(&node);
    CHECK(a.FieldForTest(0) == "item-7");
    CHECK(a.FieldForTest(1) == "Sword");
    CHECK(a.FieldForTest(2).empty());        // no "description" child: field kept
    CHECK(a.FieldForTest(11) == "Close");

    // Copy and assignment carry all twelve fields.
    item b(a);
    CHECK(b.FieldForTest(1) == "Sword");
    CHECK(b.FieldForTest(11) == "Close");
    item c;
    c = b;
    CHECK(c.FieldForTest(0) == "item-7");
    c = c;  // self-assignment keeps the value
    CHECK(c.FieldForTest(0) == "item-7");

    // A second read only replaces the fields whose tags are present.
    slim::XmlDocument only_link;
    AddText(&only_link, "link", "http://x");
    c.read(&only_link);
    CHECK(c.FieldForTest(0) == "item-7");
    CHECK(c.FieldForTest(3) == "http://x");

    // write is a no-op in the binary.
    c.write(&node);
    CHECK(c.FieldForTest(1) == "Sword");

    if (failures == 0) std::printf("all checks passed\n");
    return failures == 0 ? 0 : 1;
}
