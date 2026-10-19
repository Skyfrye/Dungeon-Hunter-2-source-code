// gameswf pointer types for the DH2 build (Gameloft), replacing the tu_gc layer of gameswf r1714.
//
// r1714 declares gc_ptr<T>, gc_array<> and gc_object in gameswf.h through
// DECLARE_GC_TYPES(tu_gc::singlethreaded_refcount): every counted type derives from gc_object, which
// carries the collector's own count. The DH2 binary has no such layer. ref_counted
// (vendor-gameswf/ref_counted.hpp) has one vptr, an intrusive count and the weak proxy, and every owning
// pointer in the binary is a smart_ptr<T> (base/smart_ptr.h) that calls add_ref and drop_ref. The mangled
// names of the binary's containers say the same thing (array<smart_ptr<character>>).
//
// So upstream code that says gc_ptr<T> keeps compiling: gc_ptr<T> is a smart_ptr<T> with the extra
// accessors the tu_gc pointer had (get, reset, conversion to T*, operator*). It has the size of a
// pointer, like both of its ancestors. gc_array<gc_ptr<T>> is array<gc_ptr<T>>, the binary's
// array<smart_ptr<T>>.
//
// gc_object is gone. Nothing derives from it any more (ref_counted replaces it, counted_buffer has its
// own base), and the collector statistics have no counterpart.

#pragma once

#include "base/container.h"
#include "base/smart_ptr.h"
#include "vendor-gameswf/ref_counted.hpp"

namespace gameswf {

template <class T>
class gc_ptr : public smart_ptr<T> {
public:
	gc_ptr() {}
	gc_ptr(T* p) : smart_ptr<T>(p) {}
	gc_ptr(const gc_ptr& p) : smart_ptr<T>(p) {}
	gc_ptr(const smart_ptr<T>& p) : smart_ptr<T>(p) {}

	using smart_ptr<T>::operator=;
	gc_ptr& operator=(const gc_ptr& p) {
		smart_ptr<T>::operator=(static_cast<const smart_ptr<T>&>(p));
		return *this;
	}

	T* get() const { return this->get_ptr(); }
	T& operator*() const { return *this->get_ptr(); }
	operator T*() const { return this->get_ptr(); }
	void reset(T* p) { smart_ptr<T>::operator=(p); }
};

// gc_array<gc_ptr<T>> in r1714 is an array of contained_gc_ptr<T>, which also has get(). Here it is an array
// of gc_ptr<T>.
template <class T>
class gc_array;

// Stands in for tu_gc's collector class, whose debug_* statics the r1714 sources call on counted objects.
struct gc_collector {
	static int debug_get_ref_count(const ref_counted* object) { return object->get_ref_count(); }
	static void debug_decrement_ref_count(ref_counted* object) { object->drop_ref(); }
};

template <class T>
class gc_array<gc_ptr<T> > : public array<gc_ptr<T> > {};

}  // namespace gameswf
