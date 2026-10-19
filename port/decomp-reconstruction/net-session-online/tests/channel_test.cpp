#include "net-session-online/channel.hpp"

#include <cstdio>
#include <cstring>
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
    slim::XmlDocument doc;
    slim::XmlNode* root = doc.addChild("channel", slim::kElement);
    AddText(root, "title", "News");
    AddText(root, "link", "http://example/news");
    AddText(root, "description", "Daily");
    slim::XmlNode* first = root->addChild("item", slim::kElement);
    AddText(first, "id", "a1");
    AddText(first, "title", "First");
    slim::XmlNode* second = root->addChild("item", slim::kElement);
    AddText(second, "id", "b2");

    channel c;
    c.read(root);
    CHECK(c.TitleForTest() == "News");
    CHECK(c.LinkForTest() == "http://example/news");
    CHECK(c.ItemCountForTest() == 2);
    CHECK(c.ItemForTest(0).FieldForTest(0) == "a1");     // id
    CHECK(c.ItemForTest(0).FieldForTest(1) == "First");  // title
    CHECK(c.ItemForTest(1).FieldForTest(0) == "b2");

    channel copy(c);
    CHECK(copy.ItemCountForTest() == 2);
    channel assigned;
    assigned = c;
    CHECK(assigned.TitleForTest() == "News");
    assigned = assigned;  // self-assignment keeps the value
    CHECK(assigned.TitleForTest() == "News");

    if (failures == 0) std::printf("channel_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
