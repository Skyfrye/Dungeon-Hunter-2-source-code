// Small network and math helpers from the original's utility code.
#pragma once

#include "core-platform/deps/game_types.hpp"

// 0x840000 in_cksum(unsigned short*, int): the Internet one's-complement checksum.
unsigned short in_cksum(const unsigned char* data, int length);

// 0x3ef1b8 Color255To01(Point3D<float>&): divides all three components by 255.
float Color255To01(Point3D<float>& color);

// 0x827970 TransToIp(char*&).
void TransToIp(char** host);

// 0x3cb46c SafeDelete<T>(T*&): deletes the object (through its virtual destructor)
// and clears the pointer. The original calls the deleting destructor slot.
template <typename T>
void SafeDelete(T*& ptr) {
    if (ptr != nullptr) {
        delete ptr;
        ptr = nullptr;
    }
}
