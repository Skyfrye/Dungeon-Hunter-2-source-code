// Batch v1-vendor-gameswf-gameswf_ref_counted-0eb785-0: gameswf::ref_counted (DH2 version).
//
// The class is declared in vendor-gameswf/include/vendor-gameswf/ref_counted.hpp, which replaces the
// upstream struct in gameswf/gameswf.h. Bodies follow the ARM listings (tools/decomp_asm.py) and the
// Hex-Rays pseudocode. Where the pseudocode is looser, the listing decides: add_ref returns nothing,
// and get_weak_proxy returns the proxy in r0.

#include <new>

#include "core-platform/memory.hpp"  // operator new(std::size_t, swf::MemHint), 0x752ba8
#include "vendor-gameswf/ref_counted.hpp"

namespace gameswf {

// 0x759c04 gameswf::ref_counted::ref_counted()   [C2]
// 0x759c34 gameswf::ref_counted::ref_counted()   [C1, same body]
// The count (+0x04) and the proxy pointer (+0x08) are zeroed. The vptr is set by the compiler.
ref_counted::ref_counted() : m_ref_count(0), m_weak_proxy(nullptr) {}

// 0x759c64 gameswf::ref_counted::add_ref() const
// +0x04 += 1.
void ref_counted::add_ref() const {
	++m_ref_count;
}

// 0x75a240 gameswf::ref_counted::drop_ref()
// +0x04 -= 1. When the count reaches zero, the listing tail-calls destruct<ref_counted> (0x75a214).
void ref_counted::drop_ref() {
	if (--m_ref_count == 0) {
		destruct<ref_counted>(this);
	}
}

// 0x75a88c gameswf::ref_counted::get_weak_proxy() const
// When +0x08 is set, it is returned. Otherwise the proxy is created: an 8-byte block from
// operator new(8, swf::MemHint) with hint 0, holding count 0 and m_alive set (the placement
// constructor stores the same two fields). The object then takes one reference (count 1). The
// allocation is not checked for null, as in the binary.
weak_proxy* ref_counted::get_weak_proxy() const {
	if (m_weak_proxy != nullptr) {
		return m_weak_proxy;
	}
	void* block = ::operator new(8, swf::MEM_UNRECOVERED);
	weak_proxy* proxy = new (block) weak_proxy();
	m_weak_proxy = proxy;
	proxy->add_ref();
	return proxy;
}

// 0x75dbe4 gameswf::ref_counted::detach_weak_proxy()
// With a proxy: m_alive = false (byte +4), the proxy count drops, and at zero the proxy is freed
// with free_internal(proxy, 0). Then +0x08 is cleared. Without a proxy this does nothing.
void ref_counted::detach_weak_proxy() {
	weak_proxy* proxy = m_weak_proxy;
	if (proxy != nullptr) {
		proxy->notify_object_died();
		if (--proxy->m_ref_count == 0) {
			free_internal(proxy, 0);
		}
		m_weak_proxy = nullptr;
	}
}

// 0x75dc28 gameswf::ref_counted::~ref_counted()   [D1, complete object]
// 0x75dca4 gameswf::ref_counted::~ref_counted()   [D2, base object]: same body, so this one
// definition covers both.
// The vptr is set by the compiler. A live proxy is marked dead and its count drops, and at zero it is
// freed with free_internal(proxy, 0). +0x08 is not cleared, because the object is going away.
ref_counted::~ref_counted() {
	weak_proxy* proxy = m_weak_proxy;
	if (proxy != nullptr) {
		proxy->notify_object_died();
		if (--proxy->m_ref_count == 0) {
			free_internal(proxy, 0);
		}
	}
}

// 0x75dc88 gameswf::ref_counted::~ref_counted()   [D0, deleting destructor]: not rebuilt.
// Compiler-generated: it runs D1 and then operator delete (LC_API_FREE_0 at 0x30e2b0). C++ delete
// produces it from the class above.

}  // namespace gameswf
