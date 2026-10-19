// Batch e2-net-transport-NetStructByteArray-9de6f9-0 (net-transport, NetStructByteArray<N>, part 1 of 2).
// Declarations: include/net-transport/tb/net_struct_byte_array.hpp (the class template, N = 3, 30, 36
// from batch e1, and N = 64 added here).
//
// Layout (32-bit offsets, comments only): NetStructMember base +0x04 sizeBits_, +0x08 changeStamp_,
// +0x10 ackMask_, +0x14 sentMask_, +0x18 changeMask_, +0x1c changed_; value_ (ByteArray) at +0x20.
//
// SetValue: NetStructMemberType<ByteArray>::SetValue (0x36f264, batch e2-net-transport-NetStructMemberType-b42f13-0)
// deep-copies the bytes, so freeing the temporary ByteArray after SetValue is safe.

#include "net-transport/tb/net_struct_byte_array.hpp"

#include <cstring>
#include <vector>

// 0x370550 _ZN18NetStructByteArrayILj36EEC1E9ByteArray
// 0x370608 _ZN18NetStructByteArrayILj3EEC1E9ByteArray
// 0x3706c0 _ZN18NetStructByteArrayILj30EEC1E9ByteArray
// 0x7feeb8 _ZN18NetStructByteArrayILj64EEC1E9ByteArray
// Copies the initial bytes into a temporary ByteArray p (ByteArray::SetBuffer), sets the member fields
// (sizeBits_ = N * 8, changeStamp_ = 0, ackMask_ = sentMask_ = all ones, changeMask_ = 0, changed_ = false,
// value_ empty), calls NetStructMemberType<ByteArray>::SetValue(p) (non-virtual, the vptr is set by the
// C++ compiler for the base), then frees p's block when one was allocated.
template <unsigned N>
NetStructByteArray<N>::NetStructByteArray(const ByteArray& initial) {
    ByteArray p;
    p.data = nullptr;  // p[0]
    p.size = 0;        // p[1]
    p.SetBuffer(initial.data, static_cast<std::size_t>(initial.size));
    sizeBits_ = static_cast<int>(N * 8u);     // +0x04: 288, 24, 240, 512 for 36u, 3u, 30u, 64u
    changeStamp_ = 0;                         // +0x08 (QWORD)
    ackMask_ = 0xFFFFFFFFu;                   // +0x10
    sentMask_ = 0xFFFFFFFFu;                  // +0x14
    changeMask_ = 0;                          // +0x18
    changed_ = false;                         // +0x1c
    value_.data = nullptr;                    // +0x20
    value_.size = 0;                          // +0x24
    NetStructMemberType<ByteArray>::SetValue(p);  // 0x36f264 deep copy, see file header
    p.Free();  // if (p.data) CustomFree(p.data): the original's explicit release of the temporary
}

// 0x3702f8 _ZN18NetStructByteArrayILj36EE4ReadER12NetBitStream
// 0x3703b0 _ZN18NetStructByteArrayILj3EE4ReadER12NetBitStream
// 0x370430 _ZN18NetStructByteArrayILj30EE4ReadER12NetBitStream
// 0x7fee00 _ZN18NetStructByteArrayILj64EE4ReadER12NetBitStream
// Reads a 16-bit byte count, then that many bytes, then SetValue on a temporary ByteArray holding them.
// Verified against Hex-Rays 0x3702f8 and the ARM listing: ReadU32(16) into the count, ReadByteArray into
// the fixed stack buffer v7 (frame offset +0x08, 36 bytes for N = 36; 8 for 3u, 32 for 30u, 64 for 64u -
// the Hex-Rays frame size shows each), then p = {nullptr, nullptr}, ByteArray::SetBuffer(v7, count), the
// SetValue virtual (vtable +0x1c) and CustomFree(p.data) when p[0] is non-null.
// PARTIAL: the count is not bounded by N, so on a count above N the original writes count bytes into an
// N-byte stack buffer. That overflow is deterministic, not merely undefined: ReadByteArray_BitSize gates
// on write_pos_ - read_pos_ < count * 8 and returns without writing anything when the stream is short,
// so the overflow only happens when the stream really carries the count bytes, and then the copy runs
// count bytes unconditionally. A peer that sends count = N+1 with N+1 bytes in the stream reaches it;
// the stack-smashing guard then aborts the process in the original. The port reads the count into a heap
// vector, so in-range counts match exactly and an out-of-range count is handled without the overflow.
// Reproducing the overflow would mean deliberately writing past a fixed stack buffer, which this port
// does not do; the row stays partial for that one case.
template <unsigned N>
void NetStructByteArray<N>::Read(NetBitStream& stream) {
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

// 0x7fe874 _ZN18NetStructByteArrayILj64EE12GetBufferPtrEv
// Returns the data pointer at +0x20.
template <unsigned N>
const void* NetStructByteArray<N>::GetBufferPtr() const {
    return value_.data;  // +0x20
}

// 0x7fe87c _ZN18NetStructByteArrayILj64EE13GetBufferSizeEv
// Returns the size at +0x24.
template <unsigned N>
int NetStructByteArray<N>::GetBufferSize() const {
    return value_.size;  // +0x24
}

// 0x7fe884 _ZN18NetStructByteArrayILj64EE16GetMaxBufferSizeEv
// Returns the template size N (64 here).
template <unsigned N>
int NetStructByteArray<N>::GetMaxBufferSize() {
    return static_cast<int>(N);
}

// 0x7feb04 _ZN18NetStructByteArrayILj64EE9GetBufferEPvi
// Same body as the other instances (see the e1 batch): copies the whole buffer to dst, returns the size.
// Returns 0 when there is no data or the size is not positive. The int argument is never read.
template <unsigned N>
int NetStructByteArray<N>::GetBuffer(void* dst, int) const {
    const void* data = value_.data;  // +0x20
    if (!data) {
        return 0;
    }
    int size = value_.size;  // +0x24
    if (size <= 0) {
        return 0;
    }
    std::memcpy(dst, data, static_cast<std::size_t>(size));
    return value_.size;  // +0x24, re-read after the copy as in the original
}

// 0x7febfc _ZN18NetStructByteArrayILj64EE5WriteER12NetBitStream
// WriteU32(size, 16 bits), then WriteByteArray(data, size). Void return, as in the e1 instances.
template <unsigned N>
void NetStructByteArray<N>::Write(NetBitStream& stream) const {
    stream.WriteU32(static_cast<std::uint32_t>(value_.size), 16u);  // +0x24
    stream.WriteByteArray(value_.data, static_cast<std::uint32_t>(value_.size));  // +0x20, +0x24
}

// 0x7fef70 _ZN18NetStructByteArrayILj64EED1Ev
// Complete-object destructor: frees the data block at +0x20 when non-null and clears the pointer.
// The vptr store before the free is done by the C++ compiler for the base, as in the e1 instances.
// The deleting form 0x7ff0bc (D0, which also calls operator delete on this) is compiler-generated, see
// the ledger.
template <unsigned N>
NetStructByteArray<N>::~NetStructByteArray() {
    void* data = value_.data;  // +0x20
    if (data) {
        CustomFree(data);
        value_.data = nullptr;  // +0x20
    }
}

// 0x7fefb8 _ZN18NetStructByteArrayILj64EE9SetBufferEPKvi
// Same as the e1 instances (see tb_transport-NetStructByteArray-0.cpp, 0x3702a8 for 30u): a temporary
// ByteArray is filled with ByteArray::SetBuffer, passed to the Set virtual (vtable +0x1c), then freed.
template <unsigned N>
void NetStructByteArray<N>::SetBuffer(const void* src, std::size_t size) {
    ByteArray p;
    p.data = nullptr;  // p[0]
    p.size = 0;        // p[1]
    p.SetBuffer(src, size);
    SetValue(p);       // vtable +0x1c
    p.Free();  // if (p.data) CustomFree(p.data): the original's explicit release of the temporary
}

// Instantiations. N = 64 is instantiated for the whole class (every member above is defined here).
// N = 3, 30 and 36 have their other members in tb_transport-NetStructByteArray-0.cpp, so only the
// constructor and Read from this batch are instantiated for them.
template class NetStructByteArray<64u>;
template NetStructByteArray<3u>::NetStructByteArray(const ByteArray&);
template NetStructByteArray<30u>::NetStructByteArray(const ByteArray&);
template NetStructByteArray<36u>::NetStructByteArray(const ByteArray&);
template void NetStructByteArray<3u>::Read(NetBitStream&);
template void NetStructByteArray<30u>::Read(NetBitStream&);
template void NetStructByteArray<36u>::Read(NetBitStream&);
