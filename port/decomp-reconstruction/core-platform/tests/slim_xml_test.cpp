#include "core-platform/slim_xml.hpp"

#include <cstdio>
#include <cstring>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    const char xml[] =
        "<?xml version=\"1.0\"?>"
        "<root a=\"1\" b=\"two\">"
        "<item id=\"x\">hello</item>"
        "<item id=\"y\"/>"
        "<!-- note -->"
        "</root>";
    const unsigned len = static_cast<unsigned>(std::strlen(xml));

    // Parse and walk the tree.
    slim::XmlDocument doc;
    CHECK(doc.loadFromMemory(xml, len));
    CHECK(doc.type() == slim::kDocument);
    CHECK(doc.children().size() == 1);
    slim::XmlNode* root = doc.findChild("root");
    CHECK(root != nullptr);
    if (root == nullptr) {
        std::printf("slim_xml: FAILED (no root)\n");
        return 1;
    }
    CHECK(root->type() == slim::kElement);
    CHECK(root->parent() == &doc);
    CHECK(root->children().size() == 3);

    // Attributes keep their order and values.
    const slim::XmlAttribute* a = root->findAttribute("a");
    CHECK(a != nullptr && a->value == "1");
    const slim::XmlAttribute* b = root->findAttribute("b");
    CHECK(b != nullptr && b->value == "two");
    CHECK(root->findAttribute("missing") == nullptr);

    // Children, text and the first match.
    slim::XmlNode* first = root->findChild("item");
    CHECK(first != nullptr);
    if (first != nullptr) {
        CHECK(first->value_ == "hello");
        const slim::XmlAttribute* id = first->findAttribute("id");
        CHECK(id != nullptr && id->value == "x");
    }

    // Iterate the matching children with findFirstChild / findNextChild.
    slim::XmlNode::ChildIterator it;
    slim::XmlNode* i1 = root->findFirstChild("item", it);
    CHECK(i1 != nullptr && i1->findAttribute("id")->value == "x");
    slim::XmlNode* i2 = root->findNextChild("item", it);
    CHECK(i2 != nullptr && i2->findAttribute("id")->value == "y");
    CHECK(i2 != nullptr && i2->value_.empty());
    CHECK(root->findNextChild("item", it) == nullptr);
    CHECK(root->findChild("nothing") == nullptr);

    // The comment is a kComment child whose name_ is the body between "<!--" and "-->".
    slim::XmlNode* comment = nullptr;
    for (slim::XmlNode* child : root->children()) {
        if (child->type() == slim::kComment) {
            comment = child;
        }
    }
    CHECK(comment != nullptr && comment->name_ == " note ");

    // Writing the document back out, one node per line with tab indent.
    std::string out;
    doc.writeNode(out, -1);
    const std::string expected =
        "<root a=\"1\" b=\"two\">\r\n"
        "\t<item id=\"x\">hello</item>\r\n"
        "\t<item id=\"y\"/>\r\n"
        "\t<!-- note -->\r\n"
        "</root>\r\n";
    CHECK(out == expected);

    // Malformed input: mismatched closing tags leave an open element.
    slim::XmlDocument bad;
    CHECK(!bad.loadFromMemory("<a><b></a>", 10));
    // A stray closing tag at the top level is rejected.
    slim::XmlDocument stray;
    CHECK(!stray.loadFromMemory("</a>", 4));
    // Byte-order marks and short inputs are rejected before parsing.
    slim::XmlDocument utf8;
    CHECK(!utf8.loadFromMemory("\xEF\xBB\xBF<a/>", 7));
    slim::XmlDocument tiny;
    CHECK(!tiny.loadFromMemory("<a", 2));

    // A reload replaces the previous children.
    CHECK(doc.loadFromMemory("<x/>", 4));
    CHECK(doc.children().size() == 1 && doc.findChild("x") != nullptr && doc.findChild("root") == nullptr);

    // The stream loader is unsupported, the save stub reports success.
    CHECK(!slim::XmlDocument().loadFromStream());
    CHECK(slim::XmlDocument().save("x"));

    std::printf("%s\n", failures ? "slim_xml: FAILED" : "slim_xml: ok");
    return failures != 0;
}
