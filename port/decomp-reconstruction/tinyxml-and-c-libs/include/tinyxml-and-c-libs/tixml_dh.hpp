// DH2: the game's TiXmlPrinterDH, the printer subclass that writes element start tags. The TinyXML classes are
// the vendored upstream TinyXML 2.5.3 (tinyxml-and-c-libs/upstream/tinyxml-2.5.3/tinyxml.h): the one definition of
// TiXmlElement, TiXmlPrinter and the rest. The DH2 changes to tinyxml.h are marked // DH2:.
#pragma once

#include "tinyxml.h"

// Game subclass. VisitEnter(element, attributes) writes the start tag into the buffer: indentation, "<name",
// attributes (each on its own line), and then either " />" or ">" with a line break, or the simpleTextPrint flag.
class TiXmlPrinterDH : public TiXmlPrinter {
public:
    using TiXmlPrinter::TiXmlPrinter;
    bool VisitEnter(const TiXmlElement& element, const TiXmlAttribute* firstAttribute) override;
};
