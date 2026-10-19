// glitch::io::CIrrXMLFileReadCallBack: adapts an IReadFile to the IrrXML callback
// interface. Layout: +0x00 vtable, +0x04 the read file (reference counted, released in the
// destructor).
#pragma once

#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/io/read_file.hpp"

namespace glitch::io {

class CIrrXMLFileReadCallBack : public IFileReadCallBack {
public:
    explicit CIrrXMLFileReadCallBack(IReadFile* readFile) : file(readFile) {}
    ~CIrrXMLFileReadCallBack() override;  // 0x572524 (D1); the deleting variant is 0x5732ac

    int read(void* buffer, int size) override;  // 0x57255c: forwards to the file's read slot and returns its count
    // 0x572578: returns the wrapped file's size (IReadFile slot +0x20). long is the IReadFile
    // return type and 32 bits on the target platforms, the same width as the pseudocode's int.
    long getSize() const override;

    CIrrXMLFileReadCallBack(const CIrrXMLFileReadCallBack&) = delete;
    CIrrXMLFileReadCallBack& operator=(const CIrrXMLFileReadCallBack&) = delete;

    IReadFile* file = nullptr;  // +0x04
};

}  // namespace glitch::io
