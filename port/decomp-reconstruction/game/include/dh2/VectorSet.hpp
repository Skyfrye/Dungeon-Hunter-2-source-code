// VectorSet<T>: a vector that holds each value at most once. push_back_unique searches the storage first and
// appends only when the value is absent. Used with int, AnimatedFX* and SWFAnim* (SWFAnimManager::FlushBank).
// The storage is the three-pointer std::vector layout of the original (STLport): begin, end, end of storage.
// Original 32-bit size 0x0c (12). Only the pointer names are reconstructed; the 64-bit build uses 8-byte pointers.
// The storage comes from std::allocator<T>. This batch has no destructor for the set, so the owner releases the
// storage with std::allocator<T>().deallocate(m_start, m_endOfStorage - m_start).
#pragma once

class AnimatedFX;
class SWFAnim;

template <typename T>
class VectorSet {
public:
    // Instantiations: VectorSet<int>::push_back_unique 0x49437c, VectorSet<AnimatedFX*> 0x494550,
    // VectorSet<SWFAnim*> 0x49777c. Each is a 264-byte function. The three are declared as explicit specializations
    // below and defined in game-app/src/g1-game-app-pack13-4d9327-0.cpp.
    void push_back_unique(const T& value);

    T* m_start;                                                         // +0x00 first element
    T* m_finish;                                                        // +0x04 one past the last element
    T* m_endOfStorage;                                                  // +0x08 one past the allocated storage
};

template <> void VectorSet<int>::push_back_unique(const int& value);                          // 0x49437c
template <> void VectorSet<AnimatedFX*>::push_back_unique(AnimatedFX* const& value);          // 0x494550
template <> void VectorSet<SWFAnim*>::push_back_unique(SWFAnim* const& value);                // 0x49777c
