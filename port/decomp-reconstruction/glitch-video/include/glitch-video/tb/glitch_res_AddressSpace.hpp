// glitch::res::AddressSpace32: the 32-bit address space a BRES file image is relocated in (TRACK-B decision 2).
//
// The original loader (glitch::res::File::Init) turns the offsets stored in a file into absolute 32-bit addresses by adding the
// address of the memory the file was read into. A 64-bit host cannot store its addresses in those 32-bit file words. So every block
// the loader allocates (the file image, the pointer table, the range blocks) is registered here and gets a 32-bit "virtual" base
// address; the loader does its fix-up arithmetic on these addresses exactly as the original does on real ones, and the decoder
// (glitch-scene-collada-gui, collada/BdaeDecode) turns an address back into a host pointer with toPointer(). The addresses start
// above zero, so a null word stays null.
#pragma once

#include <cstddef>
#include <cstdint>

namespace glitch {
namespace res {

class AddressSpace32 {
public:
    // Registers [block, block + size) and returns its 32-bit base address. A block that is registered already (the same start) keeps
    // its address, and its size becomes the larger of the two.
    static std::uint32_t map(const void* block, std::size_t size);
    // Removes the block that starts at `block` (no effect when it is not registered).
    static void unmap(const void* block);
    // The 32-bit address of a host pointer inside a registered block (or one past its end); 0 for null or an unregistered pointer.
    static std::uint32_t toAddress(const void* pointer);
    // The host pointer of a 32-bit address inside a registered block (or one past its end); null for 0 or an unmapped address.
    static std::uint8_t* toPointer(std::uint32_t address);
    // The number of bytes from `address` to the end of its block (0 when unmapped); the decoder bounds its reads with it.
    static std::size_t bytesAfter(std::uint32_t address);
    // The block that holds `address` (end address included): its 32-bit base, host start and size. False when unmapped.
    // The number of blocks registered (a loader that does not give its blocks back leaves them here).
    static std::size_t blockCount();
    static bool lookup(std::uint32_t address, std::uint32_t& base, std::uint8_t*& host, std::size_t& size);
};

}  // namespace res
}  // namespace glitch
