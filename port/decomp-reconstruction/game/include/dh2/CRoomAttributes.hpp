// CRoomAttributes: the room settings that travel with a server record. Eight int attributes and five
// byte-array attributes, each with an active bit. Changes are replicated through the NetStruct block
// m_netRoomAttributes.
// Original 32-bit size 0x394 (916): vptr at +0x00, the NetRoomAttributes block (908 bytes) at +0x08.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x819184, Copy 0x819050, dtor 0x818c14).
//
// The attribute id enums are global types (mangled without a class scope). Their enumerator names are
// ours; the values are the table indices used by the active masks.
#pragma once

#include <cstdint>

#include "net-transport/net_bit_stream.hpp"
#include "net-transport/net_struct.hpp"
#include "net-transport/tb/net_struct_byte_array.hpp"
#include "net-transport/tb/net_struct_int.hpp"

// Int attribute id, 0..7 (the index into NetRoomAttributes::m_intAttributes).
enum tROOM_ATTRIBUTES_INT : std::int32_t {
    ROOM_INT_ATTRIBUTE_0 = 0,
    ROOM_INT_ATTRIBUTE_1 = 1,
    ROOM_INT_ATTRIBUTE_2 = 2,
    ROOM_INT_ATTRIBUTE_3 = 3,
    ROOM_INT_ATTRIBUTE_4 = 4,
    ROOM_INT_ATTRIBUTE_5 = 5,
    ROOM_INT_ATTRIBUTE_6 = 6,
    ROOM_INT_ATTRIBUTE_7 = 7,
};

// Byte attribute id, 0..4 (the index into NetRoomAttributes::m_binAttributes).
enum tROOM_ATTRIBUTES_BIN : std::int32_t {
    ROOM_BIN_ATTRIBUTE_0 = 0,
    ROOM_BIN_ATTRIBUTE_1 = 1,
    ROOM_BIN_ATTRIBUTE_2 = 2,
    ROOM_BIN_ATTRIBUTE_3 = 3,
    ROOM_BIN_ATTRIBUTE_4 = 4,
};

class CRoomAttributes {
public:
    // Replicated attribute block. Original 32-bit size 0x38c (908). The NetStruct base occupies
    // +0x00 .. +0x12f. Offsets below are relative to this block; CRoomAttributes offset = block + 0x08.
    class NetRoomAttributes : public NetStruct {
    public:
        NetRoomAttributes();                                            // 0x818dac
        ~NetRoomAttributes() override;                                  // 0x8180f4 (D1), 0x8181bc (D0)

        // NetRoomAttributes::Copy 0x8186ac. flags selects the groups copied: 0x1 int attributes,
        // 0x2 bin attribute 0, 0x4 bin attributes 3 and 4, 0x8 bin attributes 1 and 2.
        int Copy(const NetRoomAttributes& other, unsigned int flags);  // 0x8186ac

        NetStructInt<32> m_intAttributes[8];                            // +0x130 (CRoomAttributes +0x138), 40 bytes each, value at +0x20
        NetStructByteArray<256> m_binAttributes[5];                     // +0x270 (CRoomAttributes +0x278), 40 bytes each, value at +0x20
        NetStructUInt<8> m_intMask;                                     // +0x338 (CRoomAttributes +0x340), bit i = int attribute i active
        NetStructUInt<5> m_binMask;                                     // +0x360 (CRoomAttributes +0x368), bit i = bin attribute i active
        uint8_t pad_388[4];                                             // +0x388 (CRoomAttributes +0x390)
    };

    // Virtual slots, in vtable order. Slots 0 and 1 are the destructor.
    virtual ~CRoomAttributes();                                         // slot 0: 0x818c14 (D1), 0x818c70 (D2); slot 1: 0x818c54 (D0)
    virtual int SetAttributeInt(tROOM_ATTRIBUTES_INT attribute, int value);                  // slot 2: 0x818544
    virtual void SetAttributeBin(tROOM_ATTRIBUTES_BIN attribute, const void* data, unsigned int size);  // slot 3: 0x818cb0 (void: the original returns the SetBuffer leftover, no caller reads it)
    virtual void Clear();                                               // slot 4: 0x818a28, also called by Copy through vptr +0x10
    virtual int HasChanged();                                           // slot 5: 0x817ee8
    virtual int Resend();                                               // slot 6: 0x817e4c
    virtual void Reload();                                              // slot 7: 0x817d78 (empty)

    CRoomAttributes();                                                  // 0x819184 (C1), 0x8191c0 (C2): NetRoomAttributes ctor, then Clear()
    CRoomAttributes(const CRoomAttributes& other);                      // 0x819050 (C1), 0x819094 (C2): NetRoomAttributes ctor, then Copy
    CRoomAttributes& operator=(const CRoomAttributes& other);           // 0x81892c
    int Copy(const CRoomAttributes& other);                             // 0x818900: Clear() through the vptr, then NetRoomAttributes::Copy with flags 15

    bool IsAttibuteActive(tROOM_ATTRIBUTES_INT attribute);              // 0x817d7c (sic, original spelling)
    bool IsAttibuteActive(tROOM_ATTRIBUTES_BIN attribute);              // 0x817d94 (sic, original spelling)
    int GetAttributeInt(tROOM_ATTRIBUTES_INT attribute);                // 0x817dac, reads with no active check
    int GetAttributeBin(tROOM_ATTRIBUTES_BIN attribute, void* out, unsigned int size);  // 0x817dbc, returns the stored byte count
    int GetMaxBufferSize(tROOM_ATTRIBUTES_BIN attribute);               // 0x817e00, table CSWTCH.280 = {64, 256, 256, 256, 256} (.rodata 0x90c27c)
    int EraseAttributeInt(tROOM_ATTRIBUTES_INT attribute);              // 0x8183e0
    void EraseAttributeBin(tROOM_ATTRIBUTES_BIN attribute);             // 0x818948 (void: the original returns the SetValue leftover, no caller reads it)

    int AreChangesAcknowledged();                                       // 0x817e54
    bool Serialize(int memberId, int packetId, NetBitStream& stream);   // 0x817ebc
    void Serialize(NetBitStream& stream, unsigned int flags);           // 0x8190d8
    void Serialize(char* buffer, unsigned int size, unsigned int flags); // 0x81912c
    int Unserialize(NetBitStream& stream);                              // 0x817e5c
    void Unserialize(char* buffer, unsigned int size);                  // 0x817e6c
    int Unserialize(int memberId, NetBitStream& stream);                // 0x817fec, the first argument is passed to NetStruct::ConditionalLoad
    void ProcessAcknowledgedPacket(int memberId, int packetId);         // 0x817ef0
    void ProcessLostPacket(int memberId, int packetId);                 // 0x817ef8

    // +0x00 vptr (the virtual slots above).
    uint8_t pad_04[4];                                                  // +0x04
    NetRoomAttributes m_netRoomAttributes;                              // +0x08, 908 bytes, see the nested class
};
