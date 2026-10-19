// Pure helpers for gameswf::array<T>::push_back (DH2 build, 0x7619b8, member template in base/container.h).
//
// Used by vendor-gameswf/src/v1-vendor-gameswf-pack4-6d36ef-0.cpp. No gameswf or core types here, so the batch test
// compiles this header on its own (tests/v1-vendor-gameswf-pack4-6d36ef-0_test.cpp).
#pragma once

namespace gameswf {
namespace dh2 {

// The binary calls reserve only when the new element count is above the buffer size (m_buffer_size).
inline bool array_push_needs_reserve(int new_size, int buffer_size)
{
	return new_size > buffer_size;
}

// The capacity passed to reserve: new_size + (new_size >> 1), the same growth as upstream resize().
inline int array_push_reserve_size(int new_size)
{
	return new_size + (new_size >> 1);
}

}  // namespace dh2
}  // namespace gameswf
