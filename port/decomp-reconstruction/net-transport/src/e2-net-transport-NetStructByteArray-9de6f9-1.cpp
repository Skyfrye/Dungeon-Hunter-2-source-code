// Batch e2-net-transport-NetStructByteArray-9de6f9-1 (net-transport, NetStructByteArray<256u>, part 2 of 2).
// Declarations: include/net-transport/tb/net_struct_byte_array.hpp (the class template).
//
// The member bodies of the generic template live in the e1 and part 1 files, which instantiate
// N = 3, 30, 36 and 64. N = 256 is written here as explicit member specializations, so this file
// is the only definition of each <256u> member. Nothing else in the port instantiates
// NetStructByteArray<256u> (the room bin attributes use a plain std::vector), so no other translation
// unit needs these declarations.
//
// Layout (32-bit offsets, comments only): NetStructMember base +0x04 sizeBits_ (2048 = 256 * 8),
// +0x08 changeStamp_, +0x10 ackMask_, +0x14 sentMask_, +0x18 changeMask_, +0x1c changed_;
// value_ (ByteArray) at +0x20 (data pointer), +0x24 (size).
//
// SetValue: NetStructMemberType<ByteArray>::SetValue (0x36f264, batch e2-net-transport-NetStructMemberType-b42f13-0)
// deep-copies the bytes, so freeing the temporary ByteArray after SetValue is safe.

#include "net-transport/tb/net_struct_byte_array.hpp"

#include <cstring>
#include <vector>

// 0x817e20 _ZN18NetStructByteArrayILj256EE13GetBufferSizeEv
// Returns the size at +0x24.
template <>
int NetStructByteArray<256u>::GetBufferSize() const {
    return value_.size;  // +0x24
}

// 0x817e3c _ZN18NetStructByteArrayILj256EE12GetBufferPtrEv
// Returns the data pointer at +0x20.
template <>
const void* NetStructByteArray<256u>::GetBufferPtr() const {
    return value_.data;  // +0x20
}

// 0x817e44 _ZN18NetStructByteArrayILj256EE16GetMaxBufferSizeEv
// Static; returns the template size N (256).
template <>
int NetStructByteArray<256u>::GetMaxBufferSize() {
    return 256;
}

// 0x817f80 _ZN18NetStructByteArrayILj256EE9GetBufferEPvi
// Same body as the other instances: returns 0 when there is no data or the size is not positive,
// otherwise copies the whole buffer to dst and returns the size (re-read after the copy).
// The int argument is never read by the original.
template <>
int NetStructByteArray<256u>::GetBuffer(void* dst, int) const {
    const void* data = value_.data;  // +0x20
    if (!data) {
        return 0;
    }
    int size = value_.size;  // +0x24
    if (size <= 0) {
        return 0;
    }
    std::memcpy(dst, data, static_cast<std::size_t>(size));
    return value_.size;  // +0x24
}

// 0x817fbc _ZN18NetStructByteArrayILj256EE5WriteER12NetBitStream
// WriteU32(size, 16 bits), then WriteByteArray(data, size). Void return, as in the other instances.
template <>
void NetStructByteArray<256u>::Write(NetBitStream& stream) const {
    stream.WriteU32(static_cast<std::uint32_t>(value_.size), 16u);  // +0x24
    stream.WriteByteArray(value_.data, static_cast<std::uint32_t>(value_.size));  // +0x20, +0x24
}

// 0x818090 _ZN18NetStructByteArrayILj256EED0Ev
// Deleting destructor (D0): see the ledger row. Compiler-generated; the port's delete goes through
// the virtual destructor, which is the complete destructor below.

// 0x8181d8 _ZN18NetStructByteArrayILj256EEC1E9ByteArray
// Copies the initial bytes into a temporary ByteArray p (ByteArray::SetBuffer), sets the member fields
// (sizeBits_ = 2048, changeStamp_ = 0, ackMask_ = sentMask_ = all ones, changeMask_ = 0, changed_ = false,
// value_ empty), calls NetStructMemberType<ByteArray>::SetValue(p) (non-virtual, the vptr is set by the
// C++ compiler for the base), then frees p's block when one was allocated.
template <>
NetStructByteArray<256u>::NetStructByteArray(const ByteArray& initial) {
    ByteArray p;
    p.data = nullptr;  // p[0]
    p.size = 0;        // p[1]
    p.SetBuffer(initial.data, static_cast<std::size_t>(initial.size));
    sizeBits_ = 256 * 8;                          // +0x04: 2048
    changeStamp_ = 0;                             // +0x08 (QWORD)
    ackMask_ = 0xFFFFFFFFu;                       // +0x10
    sentMask_ = 0xFFFFFFFFu;                      // +0x14
    changeMask_ = 0;                              // +0x18
    changed_ = false;                             // +0x1c
    value_.data = nullptr;                        // +0x20
    value_.size = 0;                              // +0x24
    NetStructMemberType<ByteArray>::SetValue(p);  // 0x36f264 deep copy
    p.Free();  // if (p.data) CustomFree(p.data): the original's explicit release of the temporary
}

// 0x818290 _ZN18NetStructByteArrayILj256EE9SetBufferEPKvi
// A temporary ByteArray is filled with ByteArray::SetBuffer, passed to the Set virtual (vtable +0x1c,
// the deep ByteArray SetValue), then freed.
template <>
void NetStructByteArray<256u>::SetBuffer(const void* src, std::size_t size) {
    ByteArray p;
    p.data = nullptr;  // p[0]
    p.size = 0;        // p[1]
    p.SetBuffer(src, size);
    SetValue(p);       // vtable +0x1c (virtual)
    p.Free();  // if (p.data) CustomFree(p.data): the original's explicit release of the temporary
}

// 0x8182e0 _ZN18NetStructByteArrayILj256EE4ReadER12NetBitStream
// Reads a 16-bit byte count, then that many bytes, then SetValue on a temporary ByteArray holding them.
// The same body as 0x3702f8 (the e1 file): ReadU32(16), ReadByteArray into the fixed stack buffer v7
// (256 bytes here), p = {nullptr, nullptr}, ByteArray::SetBuffer(v7, count), the SetValue virtual
// (vtable +0x1c), CustomFree(p.data).
// PARTIAL: identical to the other instances - the 16-bit count is not bounded by 256, so a count above
// 256 makes the original write past v7. ReadByteArray_BitSize gates on the stream carrying count * 8
// bits and writes nothing when it does not, so the overflow needs a stream that really carries the
// bytes and is then deterministic; the stack-smashing guard aborts. The port reads the count into a
// heap vector instead, so in-range counts match exactly and the out-of-range write is not reproduced.
template <>
void NetStructByteArray<256u>::Read(NetBitStream& stream) {
    std::uint32_t count = stream.ReadU32(16u);
    std::vector<std::uint8_t> bytes(count);
    stream.ReadByteArray(bytes.data(), count);
    ByteArray p;
    p.data = nullptr;  // p[0]
    p.size = 0;        // p[1]
    p.SetBuffer(bytes.data(), count);
    SetValue(p);       // vtable +0x1c (virtual)
    p.Free();  // if (p.data) CustomFree(p.data): the original's explicit release of the temporary
}

// 0x818398 _ZN18NetStructByteArrayILj256EED1Ev
// Complete-object destructor: frees the data block at +0x20 when non-null and clears the pointer.
// The vptr store before the free is done by the C++ compiler for the base, as in the other instances.
template <>
NetStructByteArray<256u>::~NetStructByteArray() {
    void* data = value_.data;  // +0x20
    if (data) {
        CustomFree(data);
        value_.data = nullptr;  // +0x20
    }
}
