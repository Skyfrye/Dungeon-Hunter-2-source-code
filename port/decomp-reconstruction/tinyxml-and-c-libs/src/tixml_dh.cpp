#include "tinyxml-and-c-libs/tixml_dh.hpp"

#include "tinyxml-and-c-libs/tb/tixml_text.hpp"

// 0x518110 _ZN14TiXmlPrinterDH10VisitEnterERK12TiXmlElementPK14TiXmlAttribute
//
// Writes the start tag. Indentation is one indent per depth level. Each attribute goes on its own line:
// lineBreak, then one indent per level (the depth after the increment), then the attribute. A line break follows
// the attribute list in every case. An element with no child ends with " />" and a line break. An element whose
// only child is a text node that is not CDATA ends with ">" and sets simpleTextPrint instead of a line break.
// Any other element with children ends with ">" and a line break. Depth is incremented at the end, so the caller's
// VisitExit balances it. Always returns true.
//
// Partial: the attribute output calls the upstream TinyXML methods TiXmlAttribute::Next and
// TiXmlAttribute::Print. TinyXML is not vendored here, so they are declared in tb/tixml_attribute.hpp and not
// defined. The rest is reconstructed from the pseudocode and checked against the assembly (indent and lineBreak
// string objects, the ToText vtable slot, and the cdata byte at +0x40).
bool TiXmlPrinterDH::VisitEnter(const TiXmlElement& element, const TiXmlAttribute* firstAttribute) {
    for (int i = 0; i < depth; ++i) {
        buffer += indent;
    }
    buffer += "<";
    buffer += element.Value();
    ++depth;

    for (const TiXmlAttribute* attribute = firstAttribute; attribute != nullptr; attribute = attribute->Next()) {
        buffer += lineBreak;
        for (int i = 0; i < depth; ++i) {
            buffer += indent;
        }
        attribute->Print(nullptr, 0, &buffer);
    }
    buffer += lineBreak;
    --depth;

    if (const TiXmlNode* first = element.FirstChild()) {
        buffer += ">";
        const TiXmlText* text = first->ToText();
        if (text != nullptr && element.LastChild() == first && !text->CDATA()) {
            simpleTextPrint = true;
        } else {
            buffer += lineBreak;
        }
    } else {
        buffer += " />";
        buffer += lineBreak;
    }
    ++depth;
    return true;
}
