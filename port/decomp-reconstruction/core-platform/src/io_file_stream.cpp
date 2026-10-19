// IFileStream (dh2/IFileStream.hpp): the one non-compiler-generated member.
#include "dh2/IFileStream.hpp"

// 0x34eb60 IFileStream::skip(unsigned long long)
// Asm: the vtable is loaded once, slot +0x20 (seek) is kept in r5 and slot +0x24 (tell) is called; the sum of the 64-bit
// position and the argument goes to seek.
void IFileStream::skip(std::uint64_t n) {
    seek(tell() + n);
}
