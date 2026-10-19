// glitch::core::SScopedProcessArray<T>: a pointer to a process-buffer block that is released when the object goes away. The
// original object is one word (the block pointer); CTextureManager::getTexture hands the unique name it generates through one
// (getTexture's last argument, mangled glitch::core::SScopedProcessArray<char>&).
#pragma once

#include "glitch-core-io/core/process_buffer.hpp"

namespace glitch::core {

template <typename T>
class SScopedProcessArray {
public:
    SScopedProcessArray() = default;
    SScopedProcessArray(const SScopedProcessArray&) = delete;
    SScopedProcessArray& operator=(const SScopedProcessArray&) = delete;
    ~SScopedProcessArray() { reset(nullptr); }

    // Releases the held block (if any) and takes `block`.
    void reset(T* block) {
        if (m_block != nullptr) releaseProcessBuffer(m_block);
        m_block = block;
    }
    T* get() const { return m_block; }

private:
    T* m_block = nullptr;  // +0x00
};

}  // namespace glitch::core
