// The .bdae file records at their 32-bit file layout, and the step that decodes a loaded image into the host-width records of
// collada/CColladaDatabase.hpp (TRACK-B decision 2: file data is decoded at its 32-bit layout, never cast to a host struct).
//
// The original maps the file image, glitch::res::File::Init() relocates it in place (the offsets of the pointer table become
// absolute 32-bit addresses) and every table is then read through those addresses as the record structs of the program. A 64-bit host
// cannot hold such addresses in the file words, so Init() works in a 32-bit address space of its own (glitch-video/tb/glitch_res_AddressSpace.hpp)
// and this decoder reads the relocated image through it, record by record, at the 32-bit layouts below, into host-width records.
// Words that the original later replaces by pointers (CResFileManager::postLoadProcess: the effect of a material, the image of a sampler, the
// geometries of a morph) stay indices in the decoded records and are replaced by the same stage, as in the original.
//
// File layout of the image (header, 0x3c bytes): +0x00 "BRES", +0x04 u16 byte-order word (0xfffe), +0x06 u16 flags (bit 15: fixed up), +0x08 header
// size, +0x0c image size, +0x10 number of pointer words, +0x14 image base (0, or the sign bit for a file that refers to another one), +0x18
// pointer table, +0x1c .., +0x20 the table holder (SDatabaseTables), +0x24 the name of the file this one depends on, +0x28 size of the local
// block, +0x2c size of the range region, +0x30 number of ranges, +0x34 whether every range has a block of its own, +0x38 size of the
// on-demand tail. Layouts of the records: see the comments of the decoders in src/collada/CResFileDecode.cpp and of the host records.
#pragma once

#include <cstdint>
#include <memory>
#include <string>

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"

namespace glitch::collada {

// Decodes the relocated image whose header is at `header` (a pointer into the 32-bit address space of glitch::res::AddressSpace32, as
// glitch::res::File::Init() leaves it) into host records. Returns the holder of the records (null on failure, with `error` set to the
// reason) and sets `data` to the header record whose `tables` is the table holder; both live as long as the returned holder. Every read is
// bounds-checked against the blocks of the address space, so a damaged file fails instead of reading past its image.
std::shared_ptr<void> decodeBdae(const std::uint8_t* header, SColladaFileData*& data, std::string* error = nullptr);

}  // namespace glitch::collada
