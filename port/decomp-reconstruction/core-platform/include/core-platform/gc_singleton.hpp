// GCSingleton<T>: the original's singleton base for the GameCenter class. The
// instance is taken from CustomAlloc and constructed in place.
#pragma once

#include "core-platform/memory.hpp"

#include <cstdio>
#include <cstdlib>
#include <new>

template <class T>
class GCSingleton {
public:
    virtual ~GCSingleton() {}  // 0x31f78c: the original's destructor body is empty

    // 0x32bd08 GCSingleton<GameCenter>::GetInstance(). Verified against the listing: the
    // allocation size 0x7c is the 32-bit sizeof(GameCenter), the constant the original
    // compiler emitted for the template's sizeof(T); the instance is stored before the null
    // check and the assert at GameCenter.h line 27 is reproduced. Deviations (named): the
    // constructor is skipped when the block is null, where the original constructs at
    // address 0 and faults; gAssertLevel 2 aborts, where the original writes address 0 (both
    // stop the process); and sizeof(T) is the host size of whichever GameCenter the singleton
    // is instantiated with (the deps stand-in today, the real class in the integrator's item).
    static T* GetInstance();

public:  // decision 9: Application::Quit deletes and clears the instance directly
    static T* m_instance;
};

template <class T>
T* GCSingleton<T>::m_instance = nullptr;

template <class T>
T* GCSingleton<T>::GetInstance() {
    if (m_instance == nullptr) {
        void* block = CustomAlloc(sizeof(T));
        if (block != nullptr) {
            m_instance = new (block) T();
        }
        if (m_instance == nullptr) {
            if (gAssertLevel == 2) {
                // The original writes to address 0 here to force a crash.
                std::abort();
            } else if (gAssertLevel == 1) {
                std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "m_instance != 0",
                             "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Multiplayer/GameCenter.h", 0x1b);
            }
        }
    }
    return m_instance;
}
