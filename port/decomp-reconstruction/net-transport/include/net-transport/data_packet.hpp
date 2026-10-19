// DataPacket: the message payload interface. Reconstructed from libDungeonHunter2.so
// (vtable _ZTV10DataPacket, 180 bytes, tools/decomp_vtable.py DataPacket).
//
// The base has no data members. Its vtable has the destructor pair at +0x00/+0x04, then the slots
// below in offset order. Only addBlob (+0x4c), getBlob (+0x50) and the four message-type slots
// (+0x9c..+0xa8) have bodies in the base; every other slot is pure in the original (null in the
// base vtable), and the concrete packets (DefaultDataPacket, DataPacketLobby) override them. The
// base declares them pure, so an instance is always one of those two classes.
//
// Parameter types follow the symbols; pointer arguments the code only reads are const (the
// symbols have no const there, which cannot change behaviour). The result types of slots whose
// pseudocode returns the callee's leftover r0 are void or int as their callers use them.
#pragma once

#include <cstddef>
#include <cstdint>

class DataPacket {
public:
    virtual ~DataPacket() = default;                    // 0x8491cc _ZN10DataPacketD1Ev (+0x00, +0x04)

    virtual int addByte(unsigned char value) = 0;                                    // +0x08
    virtual int getByte(unsigned char& value) = 0;                                   // +0x0c
    virtual int addInt(int value) = 0;                                               // +0x10
    virtual int getInt(int& value) = 0;                                              // +0x14
    virtual int addFloat(float value) = 0;                                           // +0x18
    virtual int getFloat(float& value) = 0;                                          // +0x1c
    virtual int addShort(std::int16_t value) = 0;                                    // +0x20
    virtual int getShort(std::int16_t& value) = 0;                                   // +0x24
    virtual int addByteLenString(const char* text, unsigned char length) = 0;        // +0x28
    virtual int getByteLenString(char*& text, unsigned char& length) = 0;            // +0x2c
    virtual int addByteLenWideString(const wchar_t* text, unsigned char length) = 0; // +0x30
    virtual int getByteLenWideString(wchar_t*& text, unsigned char& length) = 0;     // +0x34
    virtual int addQueryString(const char* text, std::int16_t length) = 0;          // +0x38
    virtual int addShortLenString(const char* text, std::int16_t length) = 0;        // +0x3c
    virtual int getShortLenString(char*& text, std::int16_t& length) = 0;            // +0x40
    virtual int addShortLenWideString(const wchar_t* text, unsigned char length) = 0;  // +0x44
    virtual int getShortLenWideString(wchar_t*& text, unsigned char& length) = 0;      // +0x48
    virtual int addBlob(char* data, std::int16_t length);        // +0x4c, 0x8491d0 _ZN10DataPacket7addBlobEPcs
    virtual int getBlob(char*& data, std::int16_t& length);      // +0x50, 0x8491d8 _ZN10DataPacket7getBlobERPcRs
    virtual void* addPacket(DataPacket* packet) = 0;             // +0x54 (returns the memcpy destination)
    virtual int getPacket(DataPacket*& packet) = 0;              // +0x58
    virtual void packMessage() = 0;                              // +0x5c
    virtual int getMessageLen() = 0;                             // +0x60 (message length in bytes)
    virtual char* getMessageBody() = 0;                          // +0x64 (message bytes)
    virtual void* setMessageBody(const unsigned char* data, int length) = 0;  // +0x68 (returns the memcpy destination)
    virtual DataPacket* getNextPacket() = 0;                     // +0x6c
    virtual void setNextPacket(DataPacket* next) = 0;            // +0x70
    virtual int getDataType() = 0;                               // +0x74
    virtual void setDataType(int type) = 0;                      // +0x78
    virtual int getPort() = 0;                                   // +0x7c
    virtual void setPort(int port) = 0;                          // +0x80
    virtual char* getIP() = 0;                                   // +0x84
    virtual char* setIP(const char* ip) = 0;                     // +0x88
    virtual bool IsSendByTcp() = 0;                              // +0x8c
    virtual bool IsSendByUdp() = 0;                              // +0x90
    virtual void* Packet2String(char* out, int& out_size) = 0;   // +0x94 (returns the memcpy destination)
    virtual int String2Packet(char* data, int size) = 0;         // +0x98

    virtual void InitMessage(int type);                 // +0x9c, 0x8491e0 _ZN10DataPacket11InitMessageEi (empty)
    virtual int GetMessageType();                       // +0xa0, 0x8491e4 _ZN10DataPacket14GetMessageTypeEv (-1)
    virtual void InitMMOMessage(std::int16_t type);     // +0xa4, 0x8491ec _ZN10DataPacket14InitMMOMessageEs (empty)
    virtual int GetMMOMessageType();                    // +0xa8, 0x8491f0 _ZN10DataPacket17GetMMOMessageTypeEv (-1)
};
