// gameswf::smart_ptr_proxy (Gameloft, not in gameswf r1714).
//
// The DH2 smart pointer to a weak_proxy. It owns one proxy reference: operator= drops the old one
// (the proxy is freed with gameswf::free_internal when its count reaches zero, not deleted) and takes
// one for the new one. The count is the int at +0 of weak_proxy (base/weak_ptr.h), which grants
// access with `friend class gameswf::smart_ptr_proxy` (DH2 line in that header).
//
// Layout: one pointer at +0x00. Only operator=(weak_proxy*) is recovered (0x41fe84). The destructor,
// the copy operations and the weak_ptr<T> that embeds this class are not in batch
// v1-vendor-gameswf-pack0-157e56-0. Body: vendor-gameswf/src/v1-vendor-gameswf-pack0-157e56-0.cpp.

#pragma once

#include "base/weak_ptr.h"  // weak_proxy (upstream); DH2 friend declaration for this class

namespace gameswf {

class smart_ptr_proxy {
public:
	// 0x41fe84 gameswf::smart_ptr_proxy::operator=(gameswf::weak_proxy*). Passing nullptr releases the
	// held proxy (the binary's constant-folded clones at 0x43c404 and 0x7c1330 do this).
	void operator=(weak_proxy* p);

	// Reads the held proxy (the binary reads +0x00 inline in weak_ptr::get_ptr and check_proxy).
	weak_proxy* get_proxy() const { return m_proxy; }

private:
	weak_proxy* m_proxy = nullptr;  // +0x00
};

}  // namespace gameswf
