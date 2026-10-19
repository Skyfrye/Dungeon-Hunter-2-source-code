// boost::intrusive_ptr: the one definition, the counting form (TRACK-B decision 1). Canonical header of the
// engine unification wave (u1-core); the non-counting stubs of glitch-video and glitch-scene-collada-gui
// (deps/intrusive_ptr.hpp) are retired in favour of this one.
//
// For the glitch reference-counted types (glitch::IReferenceCounted: count at +0x04, released with drop())
// the add and release functions are found here. The glitch types that keep the count at +0x00
// (CMaterial, CMaterialRenderer, CVertexStreams, CLight) define their own intrusive_ptr_add_ref and
// intrusive_ptr_release next to the class; they are found by argument-dependent lookup.
//
// Evidence: the out-of-line instances in the binary are ~intrusive_ptr (ITexture 0x41742c, IShader,
// IShaderCode, IBuffer, CVertexStreams, CMaterial, CMaterialRenderer, CMaterialVertexAttributeMap, CLight,
// CMeshBuffer), operator=(intrusive_ptr const&) (ITexture 0x384df8, IBuffer, CLight) and operator=(T*)
// (CImage 0x603414). Constructors, comparison and get() are inline in the callers.
//   - Copy and assignment add a use to the new object and then drop the old one.
//   - The destructor drops the held object.
//   - There are no move operations: the binary is C++03, so every copy of a pointer adds a use and every
//     destruction drops one.
//   - intrusive_ptr(T*) takes over the reference it is given (an IReferenceCounted object is born with
//     count 1), as every constructor site in the listings does; the two-argument form with add_ref = true
//     is boost's and adds a use.
//
// The out-of-line destructors of the count-at-+0x00 instances were re-read from the listings against this
// template (all four bodies are the same shape: load the pointer, test it, post-decrement the word at
// +0x00, and at zero run the destructor and release the block):
//   0x310be8 ~intrusive_ptr<CMaterial>:            ~CMaterial (0x5cbf78) then CustomFree (0x310440)
//   0x351e3c ~intrusive_ptr<const CMaterial>:      the same body as 0x310be8
//   0x3522b8 ~intrusive_ptr<CMaterialRenderer>:    ~CMaterialRenderer (0x5d4aa0) then CustomFree
//   0x35eb90 ~intrusive_ptr<const CVertexStreams>: ~CVertexStreams (0x5a0a1c) then CustomFree
// The objects are allocated with operator new[]/new (core-platform/memory.cpp), whose release is free(),
// and CustomFree is `a tail call to free` (memory.cpp), so this template's
// `if (px) intrusive_ptr_release(px);` with the per-class `if (--count == 0) delete p;` reproduces the
// listing exactly for those four. The CLight instances (0x5aa3c8, 0x5b9118, 0x5bb650) additionally push
// the matrix at +0x50 onto glitch::memory::Matrix4Pool and clear +0x50 before the free, which this port
// does not model (the pool and its allocation path are not in the tree); those three rows stay partial.
#pragma once

#include <cstddef>
#include <type_traits>
#include <utility>

#include "glitch-core-io/core/reference_counted.hpp"

namespace boost {

// Found by argument-dependent lookup for glitch types.
inline void intrusive_ptr_add_ref(const glitch::IReferenceCounted* p) { ++p->referenceCounter; }
inline void intrusive_ptr_release(const glitch::IReferenceCounted* p) { p->drop(); }

template <typename T>
class intrusive_ptr {
public:
    using element_type = T;

    intrusive_ptr() = default;
    intrusive_ptr(std::nullptr_t) {}  // NOLINT
    intrusive_ptr(T* p) : px(p) {}    // NOLINT: implicit like the original's call sites; takes the reference, no add-ref
    // boost's two-argument form: add_ref = true adds a use to p.
    intrusive_ptr(T* p, bool add_ref) : px(p) {
        if (px && add_ref) intrusive_ptr_add_ref(px);
    }
    intrusive_ptr(const intrusive_ptr& other) : px(other.px) {
        if (px) intrusive_ptr_add_ref(px);
    }
    // Upcast, adds a use. Constrained like boost's, so an unrelated pointee is not a viable conversion: without
    // this, `intrusive_ptr<CMesh>` converts to both `intrusive_ptr<IMesh>` and `intrusive_ptr<CMeshBuffer>`
    // through the same user-defined constructor and every overload set with both (scene::scale,
    // recalculateNormals, transform) becomes ambiguous.
    template <typename U, typename = std::enable_if_t<std::is_convertible<U*, T*>::value>>
    intrusive_ptr(const intrusive_ptr<U>& other) : px(other.get()) {  // NOLINT: upcast, adds a use
        if (px) intrusive_ptr_add_ref(px);
    }
    ~intrusive_ptr() {  // 0x41742c for ITexture
        if (px) intrusive_ptr_release(px);
    }
    // 0x384df8 (ITexture): adds a use to the new object, then drops the old one.
    intrusive_ptr& operator=(const intrusive_ptr& rhs) {
        T* newPx = rhs.px;
        if (newPx) intrusive_ptr_add_ref(newPx);
        T* oldPx = px;
        px = newPx;
        if (oldPx) intrusive_ptr_release(oldPx);
        return *this;
    }
    // 0x603414 (CImage): assigns a raw pointer. The new object gets a use and the old one is dropped.
    intrusive_ptr& operator=(T* rhs) {
        if (rhs) intrusive_ptr_add_ref(rhs);
        T* oldPx = px;
        px = rhs;
        if (oldPx) intrusive_ptr_release(oldPx);
        return *this;
    }
    intrusive_ptr& operator=(std::nullptr_t) {
        reset();
        return *this;
    }

    void reset() { intrusive_ptr().swap(*this); }
    void reset(T* rhs) { intrusive_ptr(rhs).swap(*this); }
    void swap(intrusive_ptr& other) noexcept { std::swap(px, other.px); }
    // Gives up the held pointer without dropping it.
    T* detach() {
        T* p = px;
        px = nullptr;
        return p;
    }

    T* get() const { return px; }
    T* operator->() const { return px; }
    T& operator*() const { return *px; }
    explicit operator bool() const { return px != nullptr; }
    bool operator!() const { return px == nullptr; }

    T* px = nullptr;
};

template <typename T, typename U>
inline bool operator==(const intrusive_ptr<T>& a, const intrusive_ptr<U>& b) { return a.get() == b.get(); }
template <typename T, typename U>
inline bool operator!=(const intrusive_ptr<T>& a, const intrusive_ptr<U>& b) { return a.get() != b.get(); }
template <typename T>
inline bool operator==(const intrusive_ptr<T>& a, std::nullptr_t) { return a.get() == nullptr; }
template <typename T>
inline bool operator!=(const intrusive_ptr<T>& a, std::nullptr_t) { return a.get() != nullptr; }
template <typename T, typename U>
inline bool operator==(const intrusive_ptr<T>& a, U* b) { return a.get() == b; }
template <typename T, typename U>
inline bool operator!=(const intrusive_ptr<T>& a, U* b) { return a.get() != b; }
template <typename T, typename U>
inline bool operator==(T* a, const intrusive_ptr<U>& b) { return a == b.get(); }
template <typename T, typename U>
inline bool operator!=(T* a, const intrusive_ptr<U>& b) { return a != b.get(); }
template <typename T>
inline bool operator<(const intrusive_ptr<T>& a, const intrusive_ptr<T>& b) { return a.get() < b.get(); }
template <typename T>
inline void swap(intrusive_ptr<T>& a, intrusive_ptr<T>& b) noexcept { a.swap(b); }

}  // namespace boost
