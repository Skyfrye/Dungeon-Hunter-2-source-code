#include "tinyxml-and-c-libs/tixml_dh.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // An element with no attributes or children: "<root", a line break, " />", a line break. Depth ends at 1.
    TiXmlPrinterDH printer;
    TiXmlElement root("root");
    CHECK(printer.VisitEnter(root, nullptr));
    CHECK(printer.buffer == "<root\n />\n");
    CHECK(printer.depth == 1);

    // Indent is a tab (TiXmlPrinter::TiXmlPrinter), one per depth level.
    TiXmlPrinterDH nested;
    nested.depth = 2;
    TiXmlElement child("item");
    nested.VisitEnter(child, nullptr);
    CHECK(nested.buffer == "\t\t<item\n />\n");

    std::printf("%s\n", failures ? "tixml_dh: FAILED" : "tixml_dh: ok");
    return failures != 0;
}
