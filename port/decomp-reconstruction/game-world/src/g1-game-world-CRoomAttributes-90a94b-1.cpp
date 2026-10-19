// Batch g1-game-world-CRoomAttributes-90a94b-1 (part 2 of 2): Copy, operator=, the bin setter and eraser, Clear,
// the destructor (complete and base object), the NetRoomAttributes constructor, the copy and default constructors
// and the two Serialize entry points. Declarations come from dh2/CRoomAttributes.hpp. Original 32-bit size 0x394.
//
// Functions whose only deviation is a stack temporary (see the note below):
//   - EraseAttributeBin (0x818948), Clear (0x818a28), SetAttributeBin (0x818cb0): the temporary SetChanged of the
//     pseudocode. The member's own SetValue, the bin SetBuffer calls and the SetEnabled call are reproduced.
//   - NetRoomAttributes constructor (0x818dac): the pseudocode tests each raw value before zeroing it, and calls
//     SetChanged when the raw value was not zero. The raw value is uninitialised memory there, so this can only
//     move NetStruct::s_changeCounter; the port's members start at zero, so that SetChanged is never made.
//
// The temporary SetChanged. EraseAttributeBin, Clear and SetAttributeBin build a member-sized temporary on the
// stack. They compare the new value with that temporary's value slot before the slot is written, and call
// NetStructMember::SetChanged on the temporary when they differ. The slot is never written before that compare, so
// the call depends on stack contents the pseudocode does not give. The temporary is discarded afterwards, so the
// call only increments NetStruct::s_changeCounter. The port omits it. The real member's value and change flag are
// set by its own SetValue (NetStructMemberType<uint32_t>::SetValue sets the flag when the value changes), which is
// reproduced.

#include "dh2/CRoomAttributes.hpp"

#include <cstddef>
#include <cstdint>

// 0x818900 _ZN15CRoomAttributes4CopyERKS_
// Clear() through the vptr (slot 4), then NetRoomAttributes::Copy with flags 15 (int, bin 0, bin 3 and 4, bin 1 and 2).
int CRoomAttributes::Copy(const CRoomAttributes& other) {
    Clear();
    return m_netRoomAttributes.Copy(other.m_netRoomAttributes, 15u);
}

// 0x81892c _ZN15CRoomAttributesaSERKS_
CRoomAttributes& CRoomAttributes::operator=(const CRoomAttributes& other) {
    if (this != &other) {
        CRoomAttributes::Copy(other);
    }
    return *this;
}

// 0x818948 _ZN15CRoomAttributes17EraseAttributeBinE20tROOM_ATTRIBUTES_BIN
// Empties bin attribute `attribute` through the byte array's vtable slot +0x28 (SetBuffer, 0x818290) with
// (nullptr, 0), then clears its active bit in m_binMask (+0x368 in CRoomAttributes, value at +0x388), through the
// mask's SetValue. The pseudocode's mask temporary only advances NetStruct::s_changeCounter (see the file comment).
void CRoomAttributes::EraseAttributeBin(tROOM_ATTRIBUTES_BIN attribute) {
    m_netRoomAttributes.m_binAttributes[attribute].SetBuffer(nullptr, 0);  // +0x278 + 40 * attribute
    const std::uint32_t mask = m_netRoomAttributes.m_binMask.GetValue() & ~(1u << attribute);
    m_netRoomAttributes.m_binMask.SetValue(mask);
}

// 0x818a28 _ZN15CRoomAttributes5ClearEv
// Erases the eight int attributes and the five bin attributes, zeroes the int mask (+0x340) and the bin mask
// (+0x368) through their SetValue, then disables the NetRoomAttributes block. The two mask temporaries of the
// pseudocode only advance NetStruct::s_changeCounter (see the file comment).
void CRoomAttributes::Clear() {
    EraseAttributeInt(ROOM_INT_ATTRIBUTE_0);
    EraseAttributeInt(ROOM_INT_ATTRIBUTE_1);
    EraseAttributeInt(ROOM_INT_ATTRIBUTE_2);
    EraseAttributeInt(ROOM_INT_ATTRIBUTE_3);
    EraseAttributeInt(ROOM_INT_ATTRIBUTE_4);
    EraseAttributeInt(ROOM_INT_ATTRIBUTE_5);
    EraseAttributeInt(ROOM_INT_ATTRIBUTE_6);
    EraseAttributeInt(ROOM_INT_ATTRIBUTE_7);
    EraseAttributeBin(ROOM_BIN_ATTRIBUTE_0);
    EraseAttributeBin(ROOM_BIN_ATTRIBUTE_1);
    EraseAttributeBin(ROOM_BIN_ATTRIBUTE_2);
    EraseAttributeBin(ROOM_BIN_ATTRIBUTE_3);
    EraseAttributeBin(ROOM_BIN_ATTRIBUTE_4);
    m_netRoomAttributes.m_intMask.SetValue(0u);
    m_netRoomAttributes.m_binMask.SetValue(0u);
    m_netRoomAttributes.SetEnabled(false);
}

// 0x818c14 _ZN15CRoomAttributesD1Ev
// Complete-object destructor. Clear() is a direct call; the NetRoomAttributes block is destroyed by its own
// destructor after this body, as the original calls ~NetRoomAttributes at the end.
CRoomAttributes::~CRoomAttributes() {
    CRoomAttributes::Clear();
}

// 0x818c54 _ZN15CRoomAttributesD0Ev
// skipped: the compiler-generated deleting destructor (~CRoomAttributes() followed by CustomFree(this)). A delete
// expression produces it, so no source is written.

// 0x818c70 _ZN15CRoomAttributesD2Ev
// Base object destructor: the same body as D1 (0x818c14), one definition serves both.

// 0x818cb0 _ZN15CRoomAttributes15SetAttributeBinE20tROOM_ATTRIBUTES_BINPKvj
// Sets the active bit of `attribute` in m_binMask (the mask's SetValue flags the change), then copies the bytes
// into bin attribute `attribute` through the byte array's vtable slot +0x28 (SetBuffer, 0x818290). The
// pseudocode's mask temporary only advances NetStruct::s_changeCounter (see the file comment).
void CRoomAttributes::SetAttributeBin(tROOM_ATTRIBUTES_BIN attribute, const void* data, unsigned int size) {
    const std::uint32_t mask = m_netRoomAttributes.m_binMask.GetValue() | (1u << attribute);
    m_netRoomAttributes.m_binMask.SetValue(mask);
    m_netRoomAttributes.m_binAttributes[attribute].SetBuffer(data, size);  // +0x278 + 40 * attribute
}

// 0x818dac _ZN15CRoomAttributes17NetRoomAttributesC1Ev
// The eight int attributes and the two masks are zeroed through SetValue(0), the step the pseudocode inlines.
// Their values start at zero here, so the change flag that the original can set for a nonzero raw value (a
// stack/heap word it never initialises, which only advances NetStruct::s_changeCounter) is not set.
//
// The member constructors set the field layout the pseudocode writes: the NetStructInt<32> and NetStructUInt<N>
// bodies set the size in bits, the change stamp (0), the two -1 masks and the change mask (0). Each bin attribute
// is built from an empty ByteArray, as the original does with its local p. The ByteArray temporary releases its
// block on destruction, which is the original's `if (p) CustomFree(p)`.
CRoomAttributes::NetRoomAttributes::NetRoomAttributes()
    : NetStruct(),
      m_binAttributes{NetStructByteArray<256>(ByteArray()), NetStructByteArray<256>(ByteArray()),
                      NetStructByteArray<256>(ByteArray()), NetStructByteArray<256>(ByteArray()),
                      NetStructByteArray<256>(ByteArray())} {
    // +0x130 .. +0x26f: int attributes 0..7 (40 bytes each), value zeroed.
    for (NetStructInt<32>& attribute : m_intAttributes) {
        attribute.SetValue(0);
    }

    // The int mask (+0x338) and the bin mask (+0x360) are zeroed the same way, after the bin attributes.
    m_intMask.SetValue(0u);
    m_binMask.SetValue(0u);

    // Declare every member in the original order: the eight int attributes, the five bin attributes,
    // the int mask (+0x338) and the bin mask (+0x360).
    DeclareMember(&m_intAttributes[0]);
    DeclareMember(&m_intAttributes[1]);
    DeclareMember(&m_intAttributes[2]);
    DeclareMember(&m_intAttributes[3]);
    DeclareMember(&m_intAttributes[4]);
    DeclareMember(&m_intAttributes[5]);
    DeclareMember(&m_intAttributes[6]);
    DeclareMember(&m_intAttributes[7]);
    DeclareMember(&m_binAttributes[0]);
    DeclareMember(&m_binAttributes[1]);
    DeclareMember(&m_binAttributes[2]);
    DeclareMember(&m_binAttributes[3]);
    DeclareMember(&m_binAttributes[4]);
    DeclareMember(&m_intMask);
    DeclareMember(&m_binMask);
}

// 0x819050 _ZN15CRoomAttributesC1ERKS_ and 0x819094 _ZN15CRoomAttributesC2ERKS_
// The NetRoomAttributes block is built by its member initialiser, then Copy (a direct call) fills it. The two
// variants are the complete and base object constructors of one C++ constructor.
CRoomAttributes::CRoomAttributes(const CRoomAttributes& other) {
    CRoomAttributes::Copy(other);
}

// 0x8190d8 _ZN15CRoomAttributes9SerializeER12NetBitStreamj
// Copies the block into a temporary NetRoomAttributes with the given flags, then serializes the temporary with the
// NetStruct entry point (member id -1, packet id -1). The temporary is built by the NetRoomAttributes constructor
// (partial, see 0x818dac).
void CRoomAttributes::Serialize(NetBitStream& stream, unsigned int flags) {
    NetRoomAttributes block;
    block.Copy(m_netRoomAttributes, flags);
    block.NetStruct::Serialize(stream, -1, -1);
}

// 0x81912c _ZN15CRoomAttributes9SerializeEPcjj
// Serializes into a NetBitStream of `size` bytes, then copies the stream buffer to the caller's buffer.
void CRoomAttributes::Serialize(char* buffer, unsigned int size, unsigned int flags) {
    NetBitStream stream(size);
    CRoomAttributes::Serialize(stream, flags);
    stream.GetBuffer(buffer, size);
}

// 0x819184 _ZN15CRoomAttributesC1Ev and 0x8191c0 _ZN15CRoomAttributesC2Ev
// The NetRoomAttributes block is built by its member initialiser, then Clear() (direct call). The two variants are
// the complete and base object constructors of one C++ constructor.
CRoomAttributes::CRoomAttributes() {
    CRoomAttributes::Clear();
}
