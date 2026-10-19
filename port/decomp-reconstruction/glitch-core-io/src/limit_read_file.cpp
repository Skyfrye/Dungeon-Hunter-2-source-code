#include "glitch-core-io/io/limit_read_file.hpp"

namespace glitch::io {

// 0x6b49c4 _ZN6glitch2io14CLimitReadFileC1EPNS0_9IReadFileElPKc
// 0x6b4aa8 _ZN6glitch2io14CLimitReadFileC2EPNS0_9IReadFileElPKc (same body)
// The wrapped file is replaced by its clone (the constructor calls the clone slot).
CLimitReadFile::CLimitReadFile(IReadFile* base, long limit, const char* fileName)
    : name(fileName ? fileName : ""), size(limit), file(base) {
    if (file) file = file->clone();
    init(nullptr);
}

// 0x6b4810 _ZN6glitch2io14CLimitReadFileC1EPNS0_9IReadFileElPKcS5_
// 0x6b4918 _ZN6glitch2io14CLimitReadFileC2EPNS0_9IReadFileElPKcS5_ (same body)
// The wrapped file is replaced by its clone (slot +0x1c), then init takes the window.
CLimitReadFile::CLimitReadFile(IReadFile* base, long limit, const char* fileName, const char* name2)
    : name(fileName ? fileName : ""), size(limit), file(base) {
    if (file) file = file->clone();
    init(name2);
}

// 0x6b4740 _ZN6glitch2io14CLimitReadFile4initEPKc
// The window starts at the wrapped file's position (slot +0x24) and is size bytes long. The
// wrapped file is seeked to the start (relative = false) and position is set to the start.
// The full name is the second name when it is given (assigned); otherwise it is appended:
// the wrapped file's full path (slot +0x2c), a slash and the name.
void CLimitReadFile::init(const char* name2) {
    if (!file) return;
    start = file->getPos();
    end = start + size;
    file->seek(start, false);
    position = start;
    if (name2) {
        fullName.assign(name2);
    } else {
        fullName += file->getFullPath();
        fullName += "/";
        fullName += name;
    }
}

// 0x6b48bc _ZNK6glitch2io14CLimitReadFile5cloneEv
// The copy is built over this reader's wrapped file (cloned again by its constructor) and
// gets this reader's name and full name (the original passes both character pointers, the
// full name as the second name). It then takes the window and position of this reader.
IReadFile* CLimitReadFile::clone() const {
    auto* copy = new CLimitReadFile(file, size, name.c_str(), fullName.c_str());
    copy->end = end;
    copy->start = start;
    copy->position = position;
    return copy;
}

// 0x6b4bcc _ZN6glitch2io14CLimitReadFileD1Ev (D2 at 0x6b4b54 is the same body)
CLimitReadFile::~CLimitReadFile() {
    if (file) file->drop();
}

// 0x6b4a70 _ZN6glitch2io19createLimitReadFileEPKcPNS0_9IReadFileEl
IReadFile* createLimitReadFile(const char* name, IReadFile* file, long size) {
    return new CLimitReadFile(file, size, name);
}

}  // namespace glitch::io
