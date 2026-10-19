// Batch v1-vendor-gameswf-gameswf_bitmap_info-d3c4c6-0: gameswf::bitmap_info.
//
// The class is upstream gameswf r1714 (gameswf/gameswf.h, struct bitmap_info). The DH2 binary's
// class has more virtuals than upstream. Those are declared in gameswf.h with "// DH2:" markers, and
// their bodies are here. layout() and activate() are upstream inline bodies that match the binary
// (both are bx lr), so they are not redefined here; their ledger rows point at the upstream header.
//
// The DH2 vtable has 16 slots and no get_data or get_bpp. Upstream still declares those two; the
// batch does not touch them. get_width and get_height (slots 9 and 10) are upstream inlines with
// ledger rows in vendor-gameswf/ledger.csv, so they are not defined here either.
//
// Layout dependency: bitmap_info derives from gameswf::ref_counted. Its DH2 version is in
// vendor-gameswf/include/vendor-gameswf/ref_counted.hpp (12 bytes, vptr +0x00). The member bodies
// here do not touch any field of bitmap_info, so no bitmap_info layout is needed.

#include "gameswf/gameswf.h"

namespace gameswf {

// 0x7737d4 gameswf::bitmap_info::unlayout()
// vtable slot 3 (+0x0c). Empty body (bx lr).
void bitmap_info::unlayout() {
}

// 0x7737dc gameswf::bitmap_info::set_writable()
// vtable slot 5 (+0x14). Empty body (bx lr).
void bitmap_info::set_writable() {
}

// 0x7737e0 gameswf::bitmap_info::lock()
// vtable slot 6 (+0x18). Returns 0 (MOV R0, #0; BX LR).
void* bitmap_info::lock() {
	return nullptr;
}

// 0x7737e8 gameswf::bitmap_info::unlock()
// vtable slot 7 (+0x1c). Empty body (bx lr).
void bitmap_info::unlock() {
}

// 0x7737ec gameswf::bitmap_info::set_texture(glitch::video::ITexture*)
// vtable slot 8 (+0x20). Empty body (bx lr): the texture pointer is not stored.
void bitmap_info::set_texture(glitch::video::ITexture* /*texture*/) {
}

// 0x773800 gameswf::bitmap_info::set_min_filter(gameswf::bitmap_info::filter_mode)
// partial: vtable slot 11 (+0x2c). The body is empty (bx lr), so nothing is stored. The filter_mode
// enumerators are not recovered, so gameswf.h declares it as an empty placeholder enum and the
// parameter type is incomplete. Replace the placeholder with the real enumerators when they are known.
void bitmap_info::set_min_filter(filter_mode /*mode*/) {
}

// 0x773804 gameswf::bitmap_info::set_mag_filter(gameswf::bitmap_info::filter_mode)
// partial: vtable slot 12 (+0x30). Same as set_min_filter: empty body (bx lr), filter_mode enumerators
// not recovered.
void bitmap_info::set_mag_filter(filter_mode /*mode*/) {
}

// 0x773808 gameswf::bitmap_info::is_layout() const
// vtable slot 13 (+0x34). Returns 0 (MOV R0, #0; BX LR). Hex-Rays gives int as the return type.
int bitmap_info::is_layout() const {
	return 0;
}

// 0x773810 gameswf::bitmap_info::get_internal_width() const
// vtable slot 14 (+0x38). PUSH {R4,LR}; loads the vptr and calls vtable slot 9 (+0x24), which is the
// virtual get_width(), with this as the argument, then returns its result. The call is virtual, so a
// subclass override of get_width() is used.
int bitmap_info::get_internal_width() const {
	return get_width();
}

// 0x773824 gameswf::bitmap_info::get_internal_height() const
// vtable slot 15 (+0x3c). Same as get_internal_width, but calls vtable slot 10 (+0x28), the virtual
// get_height().
int bitmap_info::get_internal_height() const {
	return get_height();
}

// 0x7739a8 gameswf::bitmap_info::~bitmap_info()   [D1, complete-object destructor]
// vtable slot 0 (+0x00). The DH2 body stores the bitmap_info vtable into the vptr (vtable + 8), calls
// the base destructor gameswf::ref_counted::~ref_counted() (D2) and returns. The empty user-provided
// body below gives the same sequence: the compiler sets the vptr and calls the base destructor.
bitmap_info::~bitmap_info() {
}

// 0x773cbc gameswf::bitmap_info::~bitmap_info()   [D0, deleting destructor]: not rebuilt.
// Compiler-generated: it runs D1, then operator delete (LC_API_FREE_0 at the call site in the binary).
// C++ delete on a bitmap_info* produces it from the virtual destructor above.

}  // namespace gameswf
