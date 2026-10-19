// glitch::io::CXMLWriter (IXMLWriter itself is declared in io/interfaces.hpp). Text is written as 4-byte code units
// (the original's wchar_t is 4 bytes), each little-endian. Layout of CXMLWriter from the
// original offsets: +0x08 the write file (reference counted), +0x0c indent depth,
// +0x10 flag (cleared by writeXMLHeader and writeClosingTag, set by writeText).
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/deps/glitch_core.hpp"
#include "glitch-core-io/io/interfaces.hpp"

namespace glitch::io {

class CXMLWriter : public IXMLWriter {
public:
    explicit CXMLWriter(IWriteFile* writeFile);  // 0x5763a4 (C2), 0x5763f4 (C1)
    ~CXMLWriter() override;                      // 0x576444 (D2), 0x576484 (D1)

    // Vtable order (tools/decomp_vtable.py glitch::io::CXMLWriter): +0x0c writeXMLHeader, +0x10 and +0x14
    // writeElement, +0x18 writeComment, +0x1c writeClosingTag, +0x20 writeText, +0x24 writeLineBreak.
    void writeXMLHeader() override;                         // 0x576b00
    void writeAttribute(const wchar_t* name, const wchar_t* value);  // 0x576694
    // 0x576988: five name/value pairs. An empty element closes with " />" (12 bytes at 0x8df070).
    void writeElement(const wchar_t* name, bool empty, const wchar_t* n1, const wchar_t* v1,
                      const wchar_t* n2, const wchar_t* v2, const wchar_t* n3, const wchar_t* v3,
                      const wchar_t* n4, const wchar_t* v4, const wchar_t* n5, const wchar_t* v5) override;
    // 0x576758: attribute pairs from two lists (the shorter length). Closes like the overload above.
    void writeElement(const wchar_t* name, bool empty, core::svector<core::stringw>& names,
                      core::svector<core::stringw>& values) override;
    void writeComment(const wchar_t* text) override;        // 0x5764c4
    void writeClosingTag(const wchar_t* name) override;     // 0x576590
    void writeText(const wchar_t* text) override;           // 0x576bb8: escapes & < > " (XMLWSChar)
    void writeLineBreak() override;                         // 0x57653c

    CXMLWriter(const CXMLWriter&) = delete;
    CXMLWriter& operator=(const CXMLWriter&) = delete;

    IWriteFile* file = nullptr;  // +0x08
    int indent = 0;              // +0x0c
    bool flag = false;           // +0x10
};

}  // namespace glitch::io
