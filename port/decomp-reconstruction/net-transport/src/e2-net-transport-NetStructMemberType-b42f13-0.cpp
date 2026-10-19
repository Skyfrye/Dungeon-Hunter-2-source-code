// Batch e2-net-transport-NetStructMemberType-b42f13-0: part 2 of the NetStructMemberType<T>
// instantiations (ByteArray, std::string, float, uint and bool Erase, float and CNetworkId accessors).
//
// Part 1 (int, unsigned int, bool GetValue/TestValue/SetValue, int Erase) is in
// tb_transport-NetStructMemberType-0.cpp. The explicit specializations are declared in
// include/net-transport/net_struct.hpp, after the template.
//
// Member layout: value_ at +0x20 for every instantiation in this batch except bool, whose value is the
// byte at +0x1d (class specialization in net_struct.hpp).

#include <cstring>
#include <string>

#include "net-transport/net_struct.hpp"

// 0x36dd7c NetStructMemberType<unsigned int>::Erase(NetBitStream &)
// Saves the value, calls NetStructMember::Load and restores the saved value. Same shape and same void
// return as the int form (0x36dd64): the pseudocode's int is Load's leftover R0, the slot is called as void
// by NetStruct::LoadInternal, and there is no direct caller.
template <>
void NetStructMemberType<std::uint32_t>::Erase(NetBitStream& stream) {
    const std::uint32_t saved = value_;                 // LDR R5, [R0, #0x20]
    NetStructMember::Load(stream);                      // BL NetStructMember::Load (0x81510c)
    value_ = saved;                                     // STR R5, [R4, #0x20]
}

// 0x36dd94 NetStructMemberType<bool>::Erase(NetBitStream &)
// Saves the byte at +0x1d, calls NetStructMember::Load and restores that byte. value_ is that byte (class
// specialization in net_struct.hpp). Void return, as the int form.
void NetStructMemberType<bool>::Erase(NetBitStream& stream) {
    const bool saved = value_;                          // LDRB R5, [R0, #0x1d]
    NetStructMember::Load(stream);                      // BL NetStructMember::Load (0x81510c)
    value_ = saved;                                     // STRB R5, [R4, #0x1d]
}

// 0x36f264 NetStructMemberType<ByteArray>::SetValue(ByteArray const&)
// Compares the current bytes with the new ones (size first, then memcmp over the current size). When
// they differ, it deep-copies the new bytes into value_ and marks the member changed. The original's
// int return is the memcmp result on the unchanged path, which is always 0 there, so the port returns
// void. The self-assignment guard matches the original's (a2 != this + 0x20) check.
template <>
void NetStructMemberType<ByteArray>::SetValue(const ByteArray& value) {
    const std::int32_t size = value_.size;  // +0x24
    if (size != value.size ||
        (size != 0 && std::memcmp(value_.data, value.data, static_cast<std::size_t>(size)) != 0)) {
        if (&value != &value_) {
            value_.SetBuffer(value.data, static_cast<std::size_t>(value.size));  // ByteArray::SetBuffer
        }
        SetChanged();  // NetStructMember::SetChanged (0x814f84)
    }
}

// 0x36fc4c NetStructMemberType<std::string>::SetValue(std::string const&)
// The original compares the lengths and then memcmp's the bytes, which is std::string equality. When
// they differ it assigns the new string (_M_assign) and calls SetChanged. The port uses the same
// operators. The int return is not kept (see the ByteArray form).
template <>
void NetStructMemberType<std::string>::SetValue(const std::string& value) {
    if (value_ != value) {  // +0x20
        value_ = value;     // +0x20 (std::string::_M_assign in the original)
        SetChanged();       // NetStructMember::SetChanged (0x814f84)
    }
}

// 0x36ff88 NetStructMemberType<ByteArray>::~NetStructMemberType() (D2, base destructor)
// 0x370778 NetStructMemberType<ByteArray>::~NetStructMemberType() (D0, deleting destructor)
// The original resets the vptr to NetStructMemberType<ByteArray>'s vtable (off_963868), frees the value
// buffer (+0x20) with CustomFree when it is non-null and nulls the pointer. The deleting form 0x370778 does
// the same, resets the vptr to NetStructMember's vtable and frees the object with CustomFree; the port's
// delete expression runs this destructor through the virtual slot and then operator delete, which is the
// same sequence. ByteArray::~ByteArray frees the block again only when the pointer is still set, so the
// buffer is released exactly once.
template <>
NetStructMemberType<ByteArray>::~NetStructMemberType() {
    if (value_.data) {          // +0x20
        CustomFree(value_.data);
        value_.data = nullptr;  // +0x20
    }
}

// 0x3704e8 NetStructMemberType<ByteArray>::Erase(NetBitStream &)
// Copies the value into a temporary ByteArray (ByteArray::SetBuffer), loads from the stream into the member
// (NetStructMember::Load, which reaches SetValue and so SetChanged), then restores the old bytes into
// the member with ByteArray::SetBuffer directly, which does not call SetChanged. The temporary's block is
// freed (by its destructor here).
template <>
void NetStructMemberType<ByteArray>::Erase(NetBitStream& stream) {
    ByteArray saved;                                                          // p
    saved.SetBuffer(value_.data, static_cast<std::size_t>(value_.size));      // ByteArray::SetBuffer(&p, +0x20, +0x24)
    NetStructMember::Load(stream);                                            // BL NetStructMember::Load (0x81510c)
    if (&value_ != &saved) {
        value_.SetBuffer(saved.data, static_cast<std::size_t>(saved.size));   // ByteArray::SetBuffer(this + 0x20, p, size)
    }
}

// 0x37111c NetStructMemberType<std::string>::~NetStructMemberType() (D2, base destructor)
// skipped: the original resets the vptr and destroys the std::string at +0x20. The port's implicit
// destructor does the same through the std::string member.

// 0x3711f4 NetStructMemberType<std::string>::~NetStructMemberType() (D0, deleting destructor)
// skipped: the compiler generates it. It destroys the std::string and frees the object, as in the
// original (CustomFree) through the virtual destructor.

// 0x371ae8 NetStructMemberType<std::string>::Erase(NetBitStream &)
// Copies the string, loads from the stream into the member (NetStructMember::Load, which reaches SetValue and
// so SetChanged), then restores the old string with _M_assign directly, which does not call SetChanged.
// The copy is destroyed at the end.
template <>
void NetStructMemberType<std::string>::Erase(NetBitStream& stream) {
    const std::string saved = value_;       // std::string::string(&v5, this + 0x20)
    NetStructMember::Load(stream);          // BL NetStructMember::Load (0x81510c)
    if (&value_ != &saved) {
        value_ = saved;                     // std::string::_M_assign(this + 0x20, ...)
    }
}

// 0x3a3574 NetStructMemberType<float>::~NetStructMemberType() (D1, base destructor)
// skipped: the body is a bare return. The implicit destructor does the same.

// 0x3a364c NetStructMemberType<float>::GetValue() const
// Pseudocode returns a1 + 32, and the assembly is ADD R0, R0, #0x20; BX LR. The result is the address
// of value_, so the port returns a const reference.
template <>
const float& NetStructMemberType<float>::GetValue() const {
    return value_;  // +0x20
}

// 0x3a36dc NetStructMemberType<float>::TestValue(float const&)
// Always true (MOV R0, #1; BX LR). The argument is not read, as for the other instantiations.
template <>
bool NetStructMemberType<float>::TestValue(const float& /*value*/) const {
    return true;
}

// 0x3a3798 NetStructMemberType<float>::~NetStructMemberType() (D0, deleting destructor)
// skipped: the compiler generates it. The original sets the vptr and calls CustomFree, which the
// virtual destructor of NetStructMember covers.

// 0x3a3c30 NetStructMemberType<float>::SetValue(float const&)
// Pseudocode: result = (value_ == *value); if (!result) { value_ = *value; SetChanged(); }. The port
// writes the same test. The original returns the int result, and the port returns void (see above).
template <>
void NetStructMemberType<float>::SetValue(const float& value) {
    if (!(value_ == value)) {  // +0x20
        value_ = value;        // +0x20
        SetChanged();          // NetStructMember::SetChanged (0x814f84)
    }
}

// 0x3a3e4c NetStructMemberType<float>::Erase(NetBitStream &)
// Same shape and same void return as the int Erase (0x36dd64).
template <>
void NetStructMemberType<float>::Erase(NetBitStream& stream) {
    const float saved = value_;                         // LDR R5, [R0, #0x20]
    NetStructMember::Load(stream);                      // BL NetStructMember::Load (0x81510c)
    value_ = saved;                                     // STR R5, [R4, #0x20]
}

// 0x801b80 NetStructMemberType<CNetworkId>::~NetStructMemberType() (D1, base destructor)
// skipped: the original is a bare return. CNetworkId has a trivial destructor, so the implicit one
// is the same.

// 0x801b84 NetStructMemberType<CNetworkId>::GetValue() const
// ADD R0, R0, #0x20; BX LR. Returns the address of value_, as for the other instantiations.
template <>
const CNetworkId& NetStructMemberType<CNetworkId>::GetValue() const {
    return value_;  // +0x20
}

// 0x801b8c NetStructMemberType<CNetworkId>::TestValue(CNetworkId const&)
// Always true (MOV R0, #1; BX LR).
template <>
bool NetStructMemberType<CNetworkId>::TestValue(const CNetworkId& /*value*/) const {
    return true;
}

// 0x801b94 NetStructMemberType<CNetworkId>::~NetStructMemberType() (D0, deleting destructor)
// skipped: the compiler generates it. The original sets the vptr and calls CustomFree, which the
// virtual destructor of NetStructMember covers.
