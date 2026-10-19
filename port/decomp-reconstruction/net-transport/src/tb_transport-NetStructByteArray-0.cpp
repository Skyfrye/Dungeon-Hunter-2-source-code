// Batch e1-net-transport-NetStructByteArray-0 (net-transport, NetStructByteArray<N>).
// Declarations: include/net-transport/tb/net_struct_byte_array.hpp.
// Offsets are the original 32-bit ones (see the header comment).

#include "net-transport/tb/net_struct_byte_array.hpp"

#include <cstring>

// 0x36d398 _ZN18NetStructByteArrayILj30EE12GetBufferPtrEv
// 0x36d3b0 _ZN18NetStructByteArrayILj3EE12GetBufferPtrEv
// 0x36d3c8 _ZN18NetStructByteArrayILj36EE12GetBufferPtrEv
// Returns +0x20 (the ByteArray data pointer).
template <unsigned N>
const void* NetStructByteArray<N>::GetBufferPtr() const {
    return value_.data;  // +0x20
}

// 0x36d3a0 _ZN18NetStructByteArrayILj30EE13GetBufferSizeEv
// 0x36d3b8 _ZN18NetStructByteArrayILj3EE13GetBufferSizeEv
// 0x36d3d0 _ZN18NetStructByteArrayILj36EE13GetBufferSizeEv
// Returns +0x24 (the ByteArray size).
template <unsigned N>
int NetStructByteArray<N>::GetBufferSize() const {
    return value_.size;  // +0x24
}

// 0x36d3a8 _ZN18NetStructByteArrayILj30EE16GetMaxBufferSizeEv
// 0x36d3c0 _ZN18NetStructByteArrayILj3EE16GetMaxBufferSizeEv
// 0x36d3d8 _ZN18NetStructByteArrayILj36EE16GetMaxBufferSizeEv
// Returns the template size N (30, 3, 36).
template <unsigned N>
int NetStructByteArray<N>::GetMaxBufferSize() {
    return static_cast<int>(N);
}

// 0x36d76c _ZN18NetStructByteArrayILj30EE9GetBufferEPvi
// 0x36d730 _ZN18NetStructByteArrayILj3EE9GetBufferEPvi
// 0x36d6f4 _ZN18NetStructByteArrayILj36EE9GetBufferEPvi
// Copies the whole buffer to dst. Returns 0 when there is no data or the size is not positive.
// The second int argument is not read by the original (its register is reused for the size), so
// it is not used here. The copy is not capped to a caller size, as in the original.
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

// 0x36dc64 _ZN18NetStructByteArrayILj30EE5WriteER12NetBitStream
// 0x36dc34 _ZN18NetStructByteArrayILj3EE5WriteER12NetBitStream
// 0x36dc04 _ZN18NetStructByteArrayILj36EE5WriteER12NetBitStream
// WriteU32(size, 16 bits), then WriteByteArray(data, size). The original returns the value left in
// r0 by the void NetBitStream::WriteByteArray call. The port's Write is void (NetStructMember::Write),
// so that value is not reproduced.
template <unsigned N>
void NetStructByteArray<N>::Write(NetBitStream& stream) const {
    stream.WriteU32(static_cast<std::uint32_t>(value_.size), 16u);  // +0x24
    stream.WriteByteArray(value_.data, static_cast<std::uint32_t>(value_.size));  // +0x20, +0x24
}

// 0x36feb0 _ZN18NetStructByteArrayILj36EED1Ev
// 0x36fef8 _ZN18NetStructByteArrayILj3EED1Ev
// 0x36ff40 _ZN18NetStructByteArrayILj30EED1Ev
// Frees the data block at +0x20 when non-null and clears the pointer. The vptr store the original
// does before the free is done by the C++ compiler for the base class, so it is not written here.
template <unsigned N>
NetStructByteArray<N>::~NetStructByteArray() {
    void* data = value_.data;  // +0x20
    if (data) {
        CustomFree(data);
        value_.data = nullptr;  // +0x20
    }
}

// 0x36ffd0 _ZN18NetStructByteArrayILj36EE9SetBufferEPKvi
// 0x370258 _ZN18NetStructByteArrayILj3EE9SetBufferEPKvi
// Builds a temporary ByteArray p (data and size zero), fills it with ByteArray::SetBuffer, passes it
// to the Set virtual (vtable +0x1c), then frees p's data if one was allocated.
//
// The Set virtual is NetStructMemberType<ByteArray>::SetValue (0x36f264, e2-net-transport-NetStructMemberType-b42f13-0).
// It compares the old and new bytes, deep-copies p into value_ with ByteArray::SetBuffer and calls
// SetChanged(), so the member never aliases p's block and the release of p below is safe.
template <unsigned N>
void NetStructByteArray<N>::SetBuffer(const void* src, std::size_t size) {
    ByteArray p;
    p.data = nullptr;  // p[0]
    p.size = 0;        // p[1]
    p.SetBuffer(src, size);
    SetValue(p);       // vtable +0x1c: NetStructMemberType<ByteArray>::SetValue deep-copies p
    p.Free();  // if (p.data) CustomFree(p.data): the original's explicit release of the temporary
}

// Explicit instantiations for the sizes in the original.
template class NetStructByteArray<3u>;
template class NetStructByteArray<30u>;
template class NetStructByteArray<36u>;
