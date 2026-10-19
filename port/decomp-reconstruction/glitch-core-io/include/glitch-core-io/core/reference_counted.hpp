// glitch::IReferenceCounted: the one definition of the reference-counted base used by every glitch
// category (core-io, video, scene) and by the game code. Canonical header of the engine unification
// wave (u1-core); glitch-shared/reference_counted.hpp and glitch-core-io/deps/glitch_core_objects.hpp
// forward here.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout):
//   vtable _ZTVN6glitch17IReferenceCountedE, 20 bytes (tools/decomp_vtable.py glitch::IReferenceCounted):
//          +0x00 D1 (empty body, 0x31d580),
//          +0x04 D0 deleting dtor (0x31fd58: sets the base vptr, then CustomFree(this)),
//          +0x08 onDelete (empty, 0x31d5cc).
//   object: +0x00 vptr, +0x04 reference counter (int), 8 bytes in all.
//   drop() (0x31d584, _ZNK...4dropEv, const): if (count-- != 1) return 0; else call vtable +0x08 (onDelete),
//          then vtable +0x04 (deleting dtor), return 1.
//   No IReferenceCounted constructor symbol exists: the base constructor is inlined into the derived
//          constructors, which store their vptr and set the counter to 1 at +0x04
//          (CMemoryWriteFile C1/C2 0x6b4d04 / 0x6b4d58, CPakReader C1 0x57002c). CFileSystem's constructor
//          zeroes it (0x56c058), so createFileSystem hands out an object with count 0.
//   Types that keep the count at +0x00 instead (CMaterial, CMaterialRenderer, CVertexStreams, CLight) do not
//          derive from this class; they are glitch-video's and have their own intrusive_ptr_add_ref/release.
//
// Port notes:
//   - The original frees through the deleting destructor (CustomFree); drop() uses delete, which runs the same
//     virtual deleting destructor.
//   - The counter is `mutable` because drop() is const (_ZNK).
//   - The class is deliberately header-only (drop() inline), so a test or a tool that includes only this header
//     needs no library.
#pragma once

namespace glitch {

class IReferenceCounted {
public:
    // vtable +0x00 (D1) and +0x04 (D0).
    virtual ~IReferenceCounted() = default;
    // vtable +0x08, 0x31d5cc. Called by drop() right before the object is deleted (empty in the base).
    virtual void onDelete() {}

    // 0x31d584 _ZNK6glitch17IReferenceCounted4dropEv
    // Decrements the count; on zero calls onDelete() and deletes the object.
    // Returns true when the object was deleted.
    bool drop() const {
        const int previous = referenceCounter;
        referenceCounter = previous - 1;
        if (previous != 1) return false;
        // The original calls the onDelete slot (+0x08) first, then the deleting destructor (+0x04).
        IReferenceCounted* self = const_cast<IReferenceCounted*>(this);
        self->onDelete();
        delete self;
        return true;
    }

    mutable int referenceCounter = 1;  // +0x04
};

}  // namespace glitch
