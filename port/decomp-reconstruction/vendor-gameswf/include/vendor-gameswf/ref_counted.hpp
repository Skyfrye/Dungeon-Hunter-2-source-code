// gameswf::ref_counted as the DH2 binary has it (Gameloft). This replaces the upstream struct in
// vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf.h, which derives from gc_object and
// weak_pointee_mixin. Neither base exists in the binary: the constructor makes no base calls and
// the object has a single vptr.
//
// Layout, 12 bytes: vptr +0x00, m_ref_count +0x04 (intrusive count), m_weak_proxy +0x08.
// The weak proxy is a raw 8-byte block with the same two fields as weak_proxy in base/weak_ptr.h:
// int m_ref_count +0 and bool m_alive +4. It is allocated with operator new(8, swf::MemHint) and
// freed with gameswf::free_internal, not delete.
//
// The vtable has only the two destructor slots (D1 and D0), so there are no other virtual methods.
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-gameswf_ref_counted-0eb785-0.cpp

#pragma once

#include <cstddef>

#include "base/weak_ptr.h"  // weak_proxy (upstream)
#include "vendor-gameswf/gameswf_alloc.hpp"  // operator new(size, swf::MemHint), free_internal

namespace gameswf {

// Destroys an object whose count reached zero. This is 0x75a214, destruct<ref_counted> (lib-gameswf
// queue). It is not defined by this batch.
template <class T>
void destruct(const T* object);

// Destroys an array of count objects that was allocated as one block (the binary's delete[] for gameswf-heap arrays, e.g.
// 0x7b21a8 for array<grid_entry_box<float, bool>*>): the elements are destroyed from the last to the first, then the block
// is released with free_internal.
template <class T>
void destructa(const T* objects, unsigned int count);

// 0x752b38 gameswf::free_internal(void*, unsigned int) (lib-gameswf queue). It is not defined by this
// batch. The second argument is 0 at every call site in this batch.
void free_internal(void* p, unsigned int size);

struct ref_counted {
	// DH2: every counted object lives on the gameswf heap: the binary allocates with operator new(size, MemHint 0) and
	// DH2: destruct<ref_counted> (0x75a214) releases the block with free_internal. The class-level forms make a plain `new T` of
	// DH2: any derived class the same allocation, so the r1714 code that says `new as_object(...)` pairs with destruct<>.
	static void* operator new(std::size_t size) { return ::operator new(size, swf::MEM_UNRECOVERED); }
	static void* operator new(std::size_t size, swf::MemHint hint) { return ::operator new(size, hint); }
	static void* operator new(std::size_t, void* where) noexcept { return where; }  // placement, hidden by the forms above otherwise
	static void operator delete(void* p) { if (p != nullptr) { free_internal(p, 0); } }
	static void operator delete(void* p, swf::MemHint) { if (p != nullptr) { free_internal(p, 0); } }
	static void operator delete(void*, void*) noexcept {}

	ref_counted();                       // 0x759c04 (C2), 0x759c34 (C1)
	virtual ~ref_counted();              // 0x75dc28 (D1), 0x75dca4 (D2); D0 0x75dc88 is compiler-generated
	void add_ref() const;                // 0x759c64
	void drop_ref();                     // 0x75a240
	weak_proxy* get_weak_proxy() const;  // 0x75a88c
	void detach_weak_proxy();            // 0x75dbe4
	int get_ref_count() const { return m_ref_count; }  // not a binary function: the pool code reads +0x04 inline

private:
	mutable int m_ref_count;             // +0x04
	mutable weak_proxy* m_weak_proxy;    // +0x08
};

}  // namespace gameswf
