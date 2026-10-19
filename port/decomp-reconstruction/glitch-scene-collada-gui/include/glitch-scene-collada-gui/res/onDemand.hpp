// glitch::res on-demand data: the blocks of a loaded COLLADA file whose contents are read from the file when first used, the counted
// pointers to them, and the reader interface. Canonical header, residue pass ob (the block and the pointer used to live in
// collada/CSkinnedMesh.hpp).
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; onDemand<char>::get 0x645250, onDemand<unsigned int>::get 0x6452bc,
// onDemand<unsigned short>::get 0x645328, CMeshBuffer::~CMeshBuffer 0x6bc8c4, CMesh::CMesh 0x645588):
//   a block of the file is {+0x00 use count, +0x04 byte offset in the file, +0x08 byte size, +0x0c the loaded data (null until read)}; the
//   block itself belongs to the file and is never freed by its users. get(block, reader) takes a use and, when the data is not loaded yet,
//   allocates `size & ~3` bytes with operator new[] and fills them through the reader's slot +0x08 read(size, offset, buffer). A holder drops its
//   use with `(*count)-- == 1`: at zero the data is freed with operator delete[] and the pointer cleared.
//   The reader is glitch::res::onDemandReader (abstract: its two read slots at +0x08 / +0x0c are pure) with the implementation
//   glitch::collada::COnDemandReader (collada/COnDemandReader.hpp).
#pragma once

#include <cstddef>
#include <cstdint>

namespace glitch::res {

struct SOnDemandBlock {
    std::int32_t count = 0;        // +0x00
    std::uint32_t offset = 0;      // +0x04 byte offset of the data in the file
    std::uint32_t size = 0;        // +0x08 byte size of the data
    void* data = nullptr;          // +0x0c the loaded data (an operator new[] byte array), null until read
};

// glitch::res::onDemandReader: reads `size` bytes at `offset` of the file into `buffer`.
class onDemandReader {
public:
    virtual ~onDemandReader() = default;
    // vtable +0x08.
    virtual std::int32_t read(std::int32_t size, std::int32_t offset, void* buffer) = 0;
    // vtable +0x0c: the same with a completion callback (void (*)(int, int, void*, void*)) and its user data.
    virtual std::int32_t read(std::int32_t size, std::int32_t offset, void* buffer, void (*callback)(int, int, void*, void*),
                              void* userData) = 0;
};

// glitch::res::onDemandPointer<T>: a counted pointer to a block. Copying takes a use; dropping the last use frees the loaded data.
template <typename T>
class onDemandPointer {
public:
    onDemandPointer() = default;
    // Takes a use of the block.
    explicit onDemandPointer(SOnDemandBlock* b) : block(b) {
        if (block != nullptr) ++block->count;
    }
    onDemandPointer(const onDemandPointer& other) : block(other.block) {
        if (block != nullptr) ++block->count;
    }
    onDemandPointer& operator=(const onDemandPointer& other) {
        if (other.block != nullptr) ++other.block->count;
        release();
        block = other.block;
        return *this;
    }
    ~onDemandPointer() { release(); }

    SOnDemandBlock* get() const { return block; }
    explicit operator bool() const { return block != nullptr; }
    // The loaded data as the element type (null when the block is not loaded).
    T* data() const { return block != nullptr ? static_cast<T*>(block->data) : nullptr; }
    void reset() {
        release();
        block = nullptr;
    }

private:
    void release() {
        if (block != nullptr && block->count-- == 1) {
            delete[] static_cast<std::uint8_t*>(block->data);
            block->data = nullptr;
        }
    }
    SOnDemandBlock* block = nullptr;
};

// glitch::res::onDemand<T>: the block type of the original (the layout of SOnDemandBlock) with its get(reader) member, which returns the
// pointer to the block with its data loaded. The instances the binary has: char, unsigned int, unsigned short, collada::SAnimationData,
// collada::SSkinData<float> and std::pair<float, unsigned short> (src/ok2-res.cpp). A block is addressed as an SOnDemandBlock elsewhere.
template <typename T>
struct onDemand : SOnDemandBlock {
    onDemandPointer<T> get(onDemandReader& reader);  // 0x645250 (char) / 0x6452bc (unsigned int) / 0x645328 (unsigned short) / ...
};

// 0x645250 / 0x6452bc / 0x645328 onDemand<char / unsigned int / unsigned short>::get(block, reader): the pointer to the block with its data
// loaded. Host deviations, named: a null block gives a null pointer (the original reads through it), and the array is allocated rounded UP to
// a multiple of 4 (the original rounds down, which a size that is not a multiple of 4 would overrun).
template <typename T>
onDemandPointer<T> getOnDemand(SOnDemandBlock* block, onDemandReader& reader) {
    onDemandPointer<T> result(block);
    if (block != nullptr && block->data == nullptr) {
        block->data = new std::uint8_t[(static_cast<std::size_t>(block->size) + 3u) & ~static_cast<std::size_t>(3u)];
        reader.read(static_cast<std::int32_t>(block->size), static_cast<std::int32_t>(block->offset), block->data);
    }
    return result;
}

}  // namespace glitch::res
