// Owner K2: glitch::res. The on-demand block loaders (onDemand<T>::get for the six instances of the binary and the two
// onDemandPointer<T>::operator= instances) and the two File::Init overloads that fix up a BRES file image.
#include <cstdint>
#include <cstring>
#include <new>
#include <utility>

#include "core-platform/memory.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/res/File.hpp"
#include "glitch-scene-collada-gui/res/onDemand.hpp"
#include "glitch-video/tb/glitch_res_AddressSpace.hpp"
#include "glitch-video/tb/glitch_res_File.hpp"

namespace glitch::collada {
struct SAnimationData;
template <typename T>
struct SSkinData;
}  // namespace glitch::collada

namespace glitch::res {

// 0x645250 (char), 0x6452bc (unsigned int), 0x645328 (unsigned short), 0x60b66c (collada::SAnimationData), 0x663bd0
// (collada::SSkinData<float>), 0x663c3c (std::pair<float, unsigned short>): one body for all of them. The returned pointer takes a use
// of the block; a block without data gets `size & ~3` bytes (rounded up here, see getOnDemand) which the reader fills from the file
// (reader slot +0x08, read(size, offset, buffer)).
template <typename T>
onDemandPointer<T> onDemand<T>::get(onDemandReader& reader) {
    return getOnDemand<T>(this, reader);
}

template onDemandPointer<char> onDemand<char>::get(onDemandReader&);
template onDemandPointer<unsigned int> onDemand<unsigned int>::get(onDemandReader&);
template onDemandPointer<unsigned short> onDemand<unsigned short>::get(onDemandReader&);
template onDemandPointer<collada::SAnimationData> onDemand<collada::SAnimationData>::get(onDemandReader&);
template onDemandPointer<collada::SSkinData<float>> onDemand<collada::SSkinData<float>>::get(onDemandReader&);
template onDemandPointer<std::pair<float, unsigned short>> onDemand<std::pair<float, unsigned short>>::get(onDemandReader&);

// 0x6bc76c / 0x6bc824: onDemandPointer<unsigned int>::operator= and onDemandPointer<unsigned short>::operator= are the inline template
// member of onDemand.hpp (a use of the new block is taken, the old block is released and its data freed with the last use, then the
// pointer is replaced); these instantiations give the out-of-line copies the binary has.
template class onDemandPointer<unsigned int>;
template class onDemandPointer<unsigned short>;

namespace {

// Address of a host object, in the 32-bit address space of the file image (TRACK-B decision 2: the stored words are 32 bits wide, as in the
// file; the blocks the loader allocates are placed in AddressSpace32 by map() below, which gives them their 32-bit addresses).
inline std::uint32_t Addr(const void* pointer) {
    return AddressSpace32::toAddress(pointer);
}

// Places a block the loader allocated in the 32-bit address space, and answers its pointer (so the allocation reads as before).
template <typename T>
inline T* placed(T* block, std::size_t bytes) {
    AddressSpace32::map(block, bytes);
    return block;
}

}  // namespace

// 0x657fa0 _ZN6glitch3res4File4InitEPv
// Initialises a temporary record on the file image (when there is one), copies it into this record and answers 0 when the
// image was fixed up (or was already) and 1 when it was not.
int File::Init(void* memory) {
    File local;
    bool ok = false;
    if (memory != nullptr) {
        local.header = static_cast<std::uint8_t*>(memory);
        // The image is the whole file in memory: header +0x0c is its size.
        AddressSpace32::map(memory, *reinterpret_cast<const std::uint32_t*>(static_cast<const std::uint8_t*>(memory) + 0x0c));
        ok = local.Init() == 0;
    }
    unk_0x04 = ok ? 1u : 0u;  // +0x04 (a byte)
    header = static_cast<std::uint8_t*>(memory);
    pointerTable = local.pointerTable;  // +0x08
    unk_0x28 = local.unk_0x28;          // +0x28
    blockSize = local.blockSize;        // +0x0c
    unk_0x10 = local.unk_0x10;          // +0x10
    rangeCount = local.rangeCount;      // +0x14
    localLimit = local.localLimit;      // +0x18
    rangeTable = local.rangeTable;      // +0x1c
    rangeTargets = local.rangeTargets;  // +0x20
    separateRanges = local.separateRanges;  // +0x24
    return !ok;
}

// 0x69a880 _ZN6glitch3res4File4InitEPNS0_10FileReaderE
// Loads a BRES file through a reader and fixes it up: the 60 byte header is read (a file with a zero image base names a file it
// depends on at header +0x24: its name, longer than one character, is loaded through CResFileManager::get first), the pointer
// word table (header +0x10 words) and the rest of the image (header size minus the table and the header's own two sizes) are read
// into new blocks, the range records (8 bytes each: a size and a key) are read and their blocks are made -- one block per record
// when header +0x34 is set, otherwise one block for all of them with every record's target placed at its key offset from the
// first -- and the record is then initialised on the image as File::Init() does. The pointer table is freed afterwards. Returns 0
// when the image was fixed up and 1 when it was not. The stored targets are 32-bit addresses (decision 2).
int File::Init(FileReader* reader) {
    blockSize = static_cast<std::uint32_t>(reader->getSize());  // +0x0c
    std::uint32_t* headerCopy = reinterpret_cast<std::uint32_t*>(new std::uint8_t[0x3c]);
    reader->read(headerCopy, 60);
    const std::int32_t nameOffset = static_cast<std::int32_t>(headerCopy[9]);  // header +0x24
    if (headerCopy[5] == 0) {                                                  // header +0x14: the image base
        std::int32_t nameLength = 0;
        reader->seek(nameOffset, false);
        reader->read(&nameLength, 4);
        if (nameLength > 1) {
            char name[256];
            reader->seek(nameOffset + 4, false);
            reader->read(name, static_cast<std::uint32_t>((nameLength + 3) & ~3));
            collada::CResFileManager::Inst->get(name, true);
        }
    }
    reader->seek(60, false);
    const std::uint32_t pointerBytes = headerCopy[4] * 4u;  // header +0x10 words
    unk_0x10 = headerCopy[11];                              // +0x10 = header +0x2c
    rangeCount = headerCopy[12];                            // +0x14 = header +0x30
    localLimit = blockSize - pointerBytes - unk_0x10 - headerCopy[14];  // +0x18, header +0x38
    separateRanges = headerCopy[13] != 0;                   // +0x24 = header +0x34 != 0
    std::uint32_t* pointerWords = placed(reinterpret_cast<std::uint32_t*>(new std::uint8_t[pointerBytes]), pointerBytes);
    std::uint8_t* image =
        placed(static_cast<std::uint8_t*>(GlitchAlloc(localLimit, static_cast<glitch::memory::E_MEMORY_HINT>(1024))), localLimit);
    std::memcpy(image, headerCopy, 0x3c);
    reader->read(pointerWords, pointerBytes);
    reader->read(image + 60, localLimit - 60);
    rangeTargets = nullptr;  // +0x20
    if (static_cast<std::int32_t>(unk_0x10) > 0) {
        std::uint32_t* targets = new std::uint32_t[rangeCount];
        rangeTargets = targets;
        std::uint32_t* table = new std::uint32_t[2u * rangeCount];  // +0x1c, 8 bytes per record
        rangeTable = table;
        reader->read(table, 8u * rangeCount);
        if (separateRanges) {
            for (std::int32_t k = 0; k < static_cast<std::int32_t>(rangeCount); ++k) {
                std::uint8_t* block = placed(new std::uint8_t[table[2 * k]], table[2 * k]);
                targets[k] = Addr(block);
                reader->read(block, table[2 * k]);
            }
        } else {
            const std::uint32_t sharedBytes = unk_0x10 - 8u * rangeCount;
            std::uint8_t* shared = placed(new std::uint8_t[sharedBytes], sharedBytes);
            targets[0] = Addr(shared);
            reader->read(shared, sharedBytes);
            for (std::int32_t k = 1; k < static_cast<std::int32_t>(rangeCount); ++k) {
                targets[k] = targets[0] + table[2 * k + 1] - table[1];
            }
        }
    }
    delete[] reinterpret_cast<std::uint8_t*>(headerCopy);
    // The record the image is fixed up on: this record's range tables and flag, the new image and the pointer table.
    File local;
    local.unk_0x04 = 0;
    local.rangeTable = rangeTable;
    local.rangeTargets = rangeTargets;
    local.separateRanges = separateRanges;
    local.header = image;
    local.pointerTable = pointerWords;
    bool ok = false;
    if (image != nullptr) {
        ok = local.Init() == 0;
    }
    header = local.header;
    unk_0x28 = local.unk_0x28;
    unk_0x04 = ok ? 1u : 0u;
    pointerTable = local.pointerTable;
    blockSize = local.blockSize;
    unk_0x10 = local.unk_0x10;
    rangeCount = local.rangeCount;
    localLimit = local.localLimit;
    rangeTable = local.rangeTable;
    rangeTargets = local.rangeTargets;
    separateRanges = local.separateRanges;
    AddressSpace32::unmap(pointerWords);
    delete[] reinterpret_cast<std::uint8_t*>(pointerWords);
    pointerTable = nullptr;  // +0x08
    return ok ? 0 : 1;
}

}  // namespace glitch::res
