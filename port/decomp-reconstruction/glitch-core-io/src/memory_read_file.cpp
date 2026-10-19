#include "glitch-core-io/io/memory_read_file.hpp"

#include <cstring>

namespace glitch::io {

// 0x56ed1c _ZN6glitch2io15CMemoryReadFileC1Ev
CMemoryReadFile::CMemoryReadFile() = default;

// 0x56ed8c _ZN6glitch2io15CMemoryReadFileC2Ev (same body as the constructor above)
// Kept as the same constructor: the two symbols are the C1 and C2 copies.

// 0x56edfc _ZN6glitch2io15CMemoryReadFile3setEPvlPKc
void CMemoryReadFile::set(void* data, long length, const char* fileName) {
    buffer = data;
    size = length;
    position = 0;
    name = fileName ? fileName : "";
}

// 0x56f150 _ZNK6glitch2io15CMemoryReadFile5cloneEv
CMemoryReadFile* CMemoryReadFile::clone() const {
    CMemoryReadFile* copy = new CMemoryReadFile();
    copy->buffer = buffer;
    copy->owned = owned;
    copy->size = size;
    copy->position = position;
    copy->name = name;
    return copy;
}

// 0x56ecc4 _ZN6glitch2io15CMemoryReadFile4readEPvj
// count is signed in the listing. The copy is cut at the end of the block; nothing left gives 0.
std::int32_t CMemoryReadFile::read(void* destination, std::uint32_t count) {
    long n = static_cast<std::int32_t>(count);
    if (n + position > size) n = size - position;
    if (n <= 0) return 0;
    std::memcpy(destination, static_cast<const char*>(buffer) + position, static_cast<std::size_t>(n));
    position += n;
    return static_cast<std::int32_t>(n);
}

// 0x56ebac _ZN6glitch2io15CMemoryReadFile9readAsyncEPvjPFviiPNS0_9IReadFileES2_ES2_
bool CMemoryReadFile::readAsync(void* destination, std::uint32_t count, ReadAsyncCallBack callBack, void* context) {
    const std::int32_t n = read(destination, count);
    callBack(n, n == 0, this, context);
    return true;
}

// 0x56ebe0 _ZN6glitch2io15CMemoryReadFile9readAsyncEPvjlPFviiPNS0_9IReadFileES2_ES2_
bool CMemoryReadFile::readAsync(void* destination, std::uint32_t count, long newPosition, ReadAsyncCallBack callBack,
                                void* context) {
    seek(newPosition, false);
    const std::int32_t n = read(destination, count);
    callBack(n, n == 0, this, context);
    return true;
}

// 0x56f2ec _ZN6glitch2io15CMemoryReadFileC1EPvlPKcb
// 0x56f3b8 _ZN6glitch2io15CMemoryReadFileC2EPvlPKcb (same body)
CMemoryReadFile::CMemoryReadFile(void* data, long length, const char* fileName, bool takeOwnership)
    : buffer(data), size(length), name(fileName ? fileName : "") {
    if (takeOwnership) owned.reset(static_cast<char*>(data));
}

// 0x56f370 _ZN6glitch2io20createMemoryReadFileEPvlPKcb
CMemoryReadFile* createMemoryReadFile(void* data, long length, const char* fileName, bool takeOwnership) {
    return new CMemoryReadFile(data, length, fileName, takeOwnership);
}

}  // namespace glitch::io
