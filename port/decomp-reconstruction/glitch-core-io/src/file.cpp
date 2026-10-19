#include "glitch-core-io/io/file.hpp"

#include <stdexcept>

namespace glitch::io {

// 0x56c9e8 _ZN6glitch2io5CFileC1EP7__sFILEPKcb
// 0x56c960 _ZN6glitch2io5CFileC2EP7__sFILEPKcb (same body)
// Re-decompiled 0x56c960: *(this+0) = 0, *(this+4) = handle, the name string is built at +0x08,
// the flag byte is stored at +0x24, then find_last_of (the clone 0x56c844, whose bitmap holds '/'
// 0x2f and '\\' 0x5c, searched from the end) gives sep; when sep != -1 the code throws
// out_of_range("basic_string") if sep + 1 >= size, otherwise it writes name.data() + sep + 1 to
// +0x20. The port's body is exactly that.
// PARTIAL, exact missing item: when the name has no separator the listing never writes +0x20, so the
// original's base-name offset is whatever the allocation held (uninitialised); the port's 0 is one
// value that uninitialised block could hold, not recovered behaviour. The in-range path (some
// separator, not the last character) and the out_of_range throw are the same.
CFile::CFile(std::FILE* handle, const char* fileName, bool obfuscatedFlag)
    : file(handle), name(fileName ? fileName : "") {
    obfuscated = obfuscatedFlag;
    std::size_t sep = name.find_last_of("/\\");
    if (sep != std::string::npos) {
        // STLport's substr(pos) throws only for pos > size(); pos == size() (a name that ends with the separator, e.g. a
        // directory that fopen opened on Linux/Android) yields the empty base name. The earlier `<=` test threw there and
        // aborted the Android boot at the main menu (CMesh opening a database source name that reduced to the data root).
        if (sep + 1 > name.size()) throw std::out_of_range("basic_string");
        baseNameOffset = sep + 1;
    }
}

// 0x56d108 _ZN6glitch2io5CFileD1Ev (D2 at 0x56d144 is the same body)
CFile::~CFile() {
    if (file) std::fclose(file);
}

}  // namespace glitch::io
