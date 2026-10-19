// glitch::res::File: the record that fixes up a loaded BRES file image.
//
// The record is embedded in its owner (CResFile at +0x24 in
// glitch-scene-collada-gui, whose first word is the header block). Offsets in
// the comments are the original 32-bit offsets. Only the members that
// glitch::res::File::Init() reads or writes are named here; the rest stay
// unmodelled.
#pragma once

#include <cstdint>

namespace glitch {
namespace res {

class FileReader;  // glitch-scene-collada-gui/res/File.hpp: the reader the second Init overload loads through

class File {
public:
    std::uint8_t* header = nullptr;               // +0x00 BRES header block, points into the file image
    std::uint32_t unk_0x04 = 0;                   // +0x04 not touched by Init()
    std::uint32_t* pointerTable = nullptr;        // +0x08 caller table of 32-bit words; non-null selects the external-fixup path
    std::uint32_t blockSize = 0;                  // +0x0c copy of header+0x0c (size of the primary block)
    std::uint32_t unk_0x10 = 0;                   // +0x10 copy of header+0x2c (role not confirmed)
    std::uint32_t rangeCount = 0;                 // +0x14 copy of header+0x30; number of records in rangeTable
    std::uint32_t localLimit = 0;                 // +0x18 blockSize - (header+0x2c) - (header+0x38); role not confirmed
    const std::uint32_t* rangeTable = nullptr;    // +0x1c caller table of range records; record k key is word 2k+1
    const std::uint32_t* rangeTargets = nullptr;  // +0x20 caller table; one 32-bit target per range record
    std::uint32_t unk_0x28 = 0;                   // +0x28 copy of header+0x38 (role not confirmed)
    bool separateRanges = false;                  // +0x24 header+0x34 != 0: every range record has its own block (set by Init(FileReader*))

    // 0x69a40c _ZN6glitch3res4File4InitEv
    int Init();
    // 0x657fa0 _ZN6glitch3res4File4InitEPv and 0x69a880 _ZN6glitch3res4File4InitEPNS0_10FileReaderE: the file image in memory / read through a
    // reader (src/ok2-res.cpp). Both return 0 on success and 1 on failure. Declared for glitch::collada::CResFile.
    int Init(void* memory);
    int Init(FileReader* reader);

    // Shared statics. Declared inline (C++17) so every translation unit that
    // includes this header refers to one object.
    inline static std::uint32_t SizeOfHeader = 0;                           // _ZN6glitch3res4File12SizeOfHeaderE
    inline static std::uint8_t* ExternalFilePtr[2] = {nullptr, nullptr};   // _ZN6glitch3res4File15ExternalFilePtrE
    // Stored as an address-space offset (headerSize + 4 * count), not a host pointer.
    inline static std::uint32_t ExternalFileOffsetTableSize[2] = {0, 0};   // _ZN6glitch3res4File27ExternalFileOffsetTableSizeE
};

}  // namespace res
}  // namespace glitch
