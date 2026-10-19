// DefaultDataPacket: the concrete DataPacket with a fixed 4096-byte message body, a read
// cursor and a write cursor, and big-endian integer and length-prefixed string helpers.
// Reconstructed from the pseudocode of libDungeonHunter2.so (vtable _ZTV17DefaultDataPacket).
// The original 32-bit member offsets (from `this`) are given as comments only.
#pragma once

#include <cstddef>
#include <cstdint>

#include "net-transport/data_packet.hpp"

class DefaultDataPacket : public DataPacket {
public:
    static constexpr int kBodySize = 0x1000;  // message body capacity in bytes

    // 0x84a988 / 0x84aa7c _ZN17DefaultDataPacketC1Ev, _ZN17DefaultDataPacketC2Ev
    DefaultDataPacket();
    // 0x84a508 / 0x84a5a4 _ZN17DefaultDataPacketC1EP10DataPacket, _ZN17DefaultDataPacketC2EP10DataPacket
    // Copies the source's data type, body and length through the DataPacket virtuals.
    explicit DefaultDataPacket(DataPacket* source);
    // 0x84a740 / 0x84a7a8 _ZN17DefaultDataPacketD1Ev, _ZN17DefaultDataPacketD2Ev
    ~DefaultDataPacket() override;
    DefaultDataPacket(const DefaultDataPacket&) = delete;
    DefaultDataPacket& operator=(const DefaultDataPacket&) = delete;

    // Writers append at the write cursor and return 1, or 0 when the body has no room.
    // Readers consume at the read cursor and return 1, or 0 when the data is short.
    // The 2-byte, 4-byte and length-prefixed integers are big-endian; floats are little-endian,
    // as in the original. Every method below overrides its DataPacket slot (see data_packet.hpp).
    int addQueryString(const char* value, std::int16_t length) override;             // 0x849fcc (stub)
    int addShortLenString(const char* value, std::int16_t length) override;          // 0x849fd4 (stub)
    int getShortLenString(char*& value, std::int16_t& length) override;              // 0x849fdc (stub)
    int addShortLenWideString(const wchar_t* value, unsigned char length) override;  // 0x849fe4 (stub)
    int getShortLenWideString(wchar_t*& value, unsigned char& length) override;      // 0x849fec (stub)
    int addByte(unsigned char value) override;                                       // 0x849ff4
    int getByte(unsigned char& value) override;                                      // 0x84a01c
    int addShort(std::int16_t value) override;                                       // 0x84a060
    int getShort(std::int16_t& value) override;                                      // 0x84a0a4
    int addInt(int value) override;                                                  // 0x84a114
    int getInt(int& value) override;                                                 // 0x84a17c
    int addFloat(float value) override;                                              // 0x84a224
    int getFloat(float& value) override;                                             // 0x84a2a4
    int addByteLenString(const char* value, unsigned char length) override;          // 0x84a6c4
    int getByteLenString(char*& value, unsigned char& length) override;              // 0x84a8e0
    int addByteLenWideString(const wchar_t* value, unsigned char length) override;   // 0x84a640
    int getByteLenWideString(wchar_t*& value, unsigned char& length) override;       // 0x84a830

    // 0x84a9fc _ZN17DefaultDataPacket9getPacketERP10DataPacket (returns 1; see the ledger)
    int getPacket(DataPacket*& packet) override;
    // 0x84a460 _ZN17DefaultDataPacket9addPacketEP10DataPacket (partial, vtable +0x54): appends the
    // source's message as a big-endian 2-byte length and its body.
    void* addPacket(DataPacket* packet) override;
    // 0x84a344 packMessage: empty in the original.
    void packMessage() override;
    int getMessageLen() override;                                                    // 0x84a330
    char* getMessageBody() override;                                                 // 0x84a33c
    // 0x84a4dc _ZN17DefaultDataPacket14setMessageBodyEPhi: copies `length` bytes into the body
    // and resets the cursors (read 0, write length). Not bounded by kBodySize, as in the original.
    void* setMessageBody(const unsigned char* data, int length) override;
    DataPacket* getNextPacket() override;                                            // 0x84a348
    void setNextPacket(DataPacket* next) override;                                   // 0x84a354
    bool IsSendByTcp() override;                                                     // 0x84a360
    bool IsSendByUdp() override;                                                     // 0x84a37c
    int getDataType() override;                                                      // 0x84a394
    void setDataType(int type) override;                                             // 0x84a3a0
    int getPort() override;                                                          // 0x84a3ac
    void setPort(int port) override;                                                 // 0x84a3b8
    char* getIP() override;                                                          // 0x84a3c4
    char* setIP(const char* ip) override;                                            // 0x84a7f4
    void* Packet2String(char* out, int& out_size) override;                         // 0x84a410
    int String2Packet(char* data, int size) override;                                // 0x84a3d0

private:
    char body_[kBodySize] = {};                 // +0x04..+0x1003 message body (zeroed)
    int read_pos_ = 0;                          // +0x1004 read cursor (byte index)
    int write_pos_ = 0;                         // +0x1008 write cursor = message length
    DataPacket* next_packet_ = nullptr;         // +0x100c next packet in a chain
    int data_type_ = 1;                         // +0x1010 1 and 3 send by TCP, 2 by UDP
    char* ip_ = nullptr;                        // +0x1014 owned copy of the address string
    int port_ = 0;                              // +0x1018
};
