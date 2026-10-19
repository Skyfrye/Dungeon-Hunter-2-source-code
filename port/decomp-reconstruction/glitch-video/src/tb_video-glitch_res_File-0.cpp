// Track B batch e1-glitch-video-glitch_res_File-0: glitch::res::File::Init().
//
// The original works on 32-bit addresses: file words hold addresses that are
// relative to the image base, and fixed-up words hold absolute addresses. This
// code keeps that arithmetic in std::uint32_t, so the control flow matches the
// Hex-Rays body exactly. A 64-bit host cannot hold its addresses in those
// words (TRACK-B decision 2), so the blocks the loader works in are placed in
// a 32-bit address space of their own (AddressSpace32, glitch_res_AddressSpace.hpp):
// Addr() gives the 32-bit address of a block's byte and Bytes()/Words() map an
// address back to the host. The fix-up then stores and compares exactly the words
// the original does, and the decoder reads the image through the same mapping.

#include <cstdint>
#include <cstring>

#include "glitch-video/tb/glitch_res_AddressSpace.hpp"
#include "glitch-video/tb/glitch_res_File.hpp"

namespace {

// Address of a host object, in the 32-bit address space of the file image.
inline std::uint32_t Addr(const void* p) {
    return glitch::res::AddressSpace32::toAddress(p);
}

// Host pointer for a 32-bit address (see the note at the top of this file).
inline std::uint8_t* Bytes(std::uint32_t addr) {
    return glitch::res::AddressSpace32::toPointer(addr);
}

inline std::uint32_t* Words(std::uint32_t addr) {
    return reinterpret_cast<std::uint32_t*>(glitch::res::AddressSpace32::toPointer(addr));
}

// Little-endian 32-bit and 16-bit field access into the file image at a byte offset.
inline std::uint32_t Rd32(const std::uint8_t* base, std::uint32_t off) {
    std::uint32_t v;
    std::memcpy(&v, base + off, sizeof v);
    return v;
}

inline void Wr32(std::uint8_t* base, std::uint32_t off, std::uint32_t v) {
    std::memcpy(base + off, &v, sizeof v);
}

inline std::uint16_t Rd16(const std::uint8_t* base, std::uint32_t off) {
    std::uint16_t v;
    std::memcpy(&v, base + off, sizeof v);
    return v;
}

inline void Wr16(std::uint8_t* base, std::uint32_t off, std::uint16_t v) {
    std::memcpy(base + off, &v, sizeof v);
}

// Word access at a 32-bit address (a location that is not inside the header).
inline std::uint32_t Rd32Addr(std::uint32_t addr) {
    std::uint32_t v;
    std::memcpy(&v, Bytes(addr), sizeof v);
    return v;
}

inline void Wr32Addr(std::uint32_t addr, std::uint32_t v) {
    std::memcpy(Bytes(addr), &v, sizeof v);
}

// Range search over rangeTable: finds k in [0, lastRecord] with
// key(k) < off < key(k+1). Stops at lastRecord when no range matches.
// rangeTable[2k+1] is key(k), rangeTable[2k+3] is key(k+1).
std::int32_t FindRange(const std::uint32_t* rangeTable, std::int32_t lastRecord, std::uint32_t off) {
    std::int32_t k = 0;
    for (;;) {
        if (k >= lastRecord) break;
        if (off > rangeTable[2 * k + 1] && off < rangeTable[2 * k + 3]) break;
        ++k;
    }
    return k;
}

}  // namespace

namespace glitch {
namespace res {

// 0x69a40c _ZN6glitch3res4File4InitEv
// H1 pass: checked against the Hex-Rays body (flag word, both fix-up levels, range searches, no-table tail).
int File::Init() {
    std::uint8_t* const hdr = header;
    if (Addr(hdr) == 0) {
        // A caller that did not place the image in the address space (the whole file in one block).
        glitch::res::AddressSpace32::map(hdr, Rd32(hdr, 0x0c));
    }
    const std::uint32_t hdrAddr = Addr(hdr);

    // Copies taken from the header, before the magic check (as in the original).
    blockSize = Rd32(hdr, 0x0c);                                   // +0x0c = header+0x0c
    unk_0x10 = Rd32(hdr, 0x2c);                                    // +0x10 = header+0x2c
    rangeCount = Rd32(hdr, 0x30);                                  // +0x14 = header+0x30
    unk_0x28 = Rd32(hdr, 0x38);                                    // +0x28 = header+0x38
    localLimit = blockSize - Rd32(hdr, 0x2c) - Rd32(hdr, 0x38);    // +0x18

    const std::uint32_t base = Rd32(hdr, 0x14);                    // header+0x14: image base, sign bit selects the slot
    ExternalFilePtr[base >> 31] = hdr;

    if (hdr[0] != 'B' || hdr[1] != 'R' || hdr[2] != 'E' || hdr[3] != 'S') {
        return -1;
    }

    // Header flag bit 15 marks a block that is already fixed up.
    const std::uint16_t flags = Rd16(hdr, 0x06);
    if ((flags & 0x8000u) != 0) {
        return 0;
    }
    Wr16(hdr, 0x06, static_cast<std::uint16_t>((flags & 0x7fffu) | 0x8000u));

    const std::uint32_t count = Rd32(hdr, 0x10);                   // header+0x10: number of pointer words

    if (pointerTable != nullptr) {
        // Caller supplied a pointer table: fix up each word with the external-file rules.
        std::uint32_t* const table = pointerTable;
        const std::uint32_t headerSize = Rd32(hdr, 0x08);
        Wr32(hdr, 0x18, Addr(table));                              // *(header+0x18) = table
        SizeOfHeader = headerSize;
        const std::uint32_t tableEnd = headerSize + 4 * count;     // end of the offset table
        ExternalFileOffsetTableSize[base >> 31] = tableEnd;

        for (std::uint32_t i = 0; i < count; ++i) {
            const std::uint32_t raw = table[i];                    // v13
            std::uint32_t extBase = base;                          // v12
            std::uint32_t off = raw - base;                        // v15
            std::uint32_t regionEnd = tableEnd;                    // v16
            std::uint8_t* regionBase = hdr;                        // v50
            bool external = false;                                 // v49

            if (off > blockSize) {
                // The word points into another file: use that file's slot.
                off = raw;
                regionEnd = ExternalFileOffsetTableSize[raw >> 31];
                external = true;
                regionBase = ExternalFilePtr[raw >> 31];
                extBase = raw & 0x80000000u;
            }

            if (regionEnd > off) {
                table[i] = Addr(regionBase) + raw - extBase;
            } else if (off <= localLimit) {
                table[i] = Addr(regionBase) + SizeOfHeader - regionEnd - extBase + raw;
            } else {
                // Offset is past the local block: map it through the range table.
                const std::int32_t lastRange = static_cast<std::int32_t>(rangeCount) - 1;
                const std::int32_t rangeCountSigned = static_cast<std::int32_t>(rangeCount);
                // The listing shifts a signed value here ((-4 - limit + off) >> 3), so the shift is signed too:
                // an offset in (limit, limit + 4] gives a negative bound and the entry is skipped.
                const std::int32_t rangeBound = static_cast<std::int32_t>(off - localLimit - 4u) >> 3;
                if (rangeCountSigned >= rangeBound) {
                    continue;
                }
                const std::int32_t k = FindRange(rangeTable, lastRange, off);
                const std::uint32_t delta = rangeTargets[k] - rangeTable[2 * k + 1];  // v24
                table[i] = delta + raw;
                const std::uint32_t v46 = Rd32Addr(delta + raw);
                if (v46 - base > localLimit) {
                    // The original repeats the same range search here; it gives the same k.
                    Wr32Addr(delta + raw, rangeTargets[k] - rangeTable[2 * k + 1] + v46);
                    continue;
                }
            }

            // Second level: the word at table[i] is itself a reference (not for external
            // references or for entry 0).
            if (external || i == 0) {
                continue;
            }
            std::uint32_t* const target = Words(table[i]);         // v30
            const std::uint32_t w = *target;                       // v33
            std::uint32_t off2 = w - base;                         // v34
            std::uint32_t extBase2 = base;                         // v31
            std::uint8_t* region2 = hdr;                           // v36
            std::uint32_t end2 = tableEnd;                         // v47

            if (off2 > blockSize) {
                off2 = w;
                const std::uint32_t idx = w >> 31;
                region2 = ExternalFilePtr[idx];
                end2 = ExternalFileOffsetTableSize[idx];
                extBase2 = w & 0x80000000u;
            }

            if (end2 > off2) {
                *target = Addr(region2) + w - extBase2;
            } else if (off2 <= localLimit) {
                *target = Addr(region2) + SizeOfHeader - end2 - extBase2 + w;
            } else {
                std::uint32_t j = 0;
                while (j < rangeCount && rangeTable[2 * j + 1] != off2) {
                    ++j;
                }
                *target = rangeTargets[j] - off2 + w;
            }
        }
        return 0;
    }

    // No caller table: convert the file's own offset table (at header+0x18) in place.
    // Entry 0 is an absolute word, entries after it are followed one hop further.
    const std::uint32_t tblOff = Rd32(hdr, 0x18);
    Wr32(hdr, 0x18, hdrAddr + tblOff);                             // *(header+0x18) += header

    for (std::uint32_t idx = 0; idx < count; ++idx) {
        const std::uint32_t slotOff = tblOff + 4 * idx;
        const std::uint32_t v44 = Rd32(hdr, slotOff);
        Wr32(hdr, slotOff, hdrAddr + v44);
        if (idx == 0) {
            continue;
        }
        const std::uint32_t v42 = Rd32(hdr, v44);
        Wr32(hdr, v44, hdrAddr + v42);
    }
    return 0;
}

}  // namespace res
}  // namespace glitch
