#include "net-transport/default_data_packet.hpp"

#include <cstring>

namespace {

// The original's wchar_t is 4 bytes (ARM). Wide characters are written as 32-bit little-endian
// units, so the byte layout does not depend on the host wchar_t size (2 bytes on Windows).
constexpr int kWideUnitBytes = 4;

char ToChar(std::uint8_t value) { return static_cast<char>(value); }
std::uint8_t ToByte(char value) { return static_cast<std::uint8_t>(value); }

void PutWideUnits(char* dst, const wchar_t* src, int count) {
    for (int i = 0; i < count; ++i) {
        const auto unit = static_cast<std::uint32_t>(src[i]);
        char* at = dst + i * kWideUnitBytes;
        at[0] = ToChar(static_cast<std::uint8_t>(unit));
        at[1] = ToChar(static_cast<std::uint8_t>(unit >> 8));
        at[2] = ToChar(static_cast<std::uint8_t>(unit >> 16));
        at[3] = ToChar(static_cast<std::uint8_t>(unit >> 24));
    }
}

void GetWideUnits(wchar_t* dst, const char* src, int count) {
    for (int i = 0; i < count; ++i) {
        const char* at = src + i * kWideUnitBytes;
        const std::uint32_t unit = static_cast<std::uint32_t>(ToByte(at[0])) |
                                   (static_cast<std::uint32_t>(ToByte(at[1])) << 8) |
                                   (static_cast<std::uint32_t>(ToByte(at[2])) << 16) |
                                   (static_cast<std::uint32_t>(ToByte(at[3])) << 24);
        dst[i] = static_cast<wchar_t>(unit);
    }
}

}  // namespace

// 0x84a988 / 0x84aa7c _ZN17DefaultDataPacketC1Ev / _ZN17DefaultDataPacketC2Ev
// Body zeroed, cursors and IP/port cleared, data type 1 (the member initialisers do this).
DefaultDataPacket::DefaultDataPacket() = default;

// 0x84a508 _ZN17DefaultDataPacketC1EP10DataPacket
// 0x84a5a4 _ZN17DefaultDataPacketC2EP10DataPacket is the same body (skipped at that address).
// The data type (vtable +0x74), body (+0x64) and length (+0x60) of the source come through the
// DataPacket virtuals, in the original order. The ip and port are cleared by the member
// initialisers, and the next-packet link is cleared last, as in the original. The member
// initialiser zeroes the body array first; the original leaves the bytes past the copied length
// as operator new gave them (not observable through the message accessors).
DefaultDataPacket::DefaultDataPacket(DataPacket* source) {
    data_type_ = source->getDataType();
    const char* body = source->getMessageBody();
    const int length = source->getMessageLen();
    setMessageBody(reinterpret_cast<const unsigned char*>(body), length);
    next_packet_ = nullptr;
}

// 0x84a740 / 0x84a7a8 _ZN17DefaultDataPacketD1Ev / _ZN17DefaultDataPacketD2Ev
// Frees the owned IP string. The base destructor runs after this body.
DefaultDataPacket::~DefaultDataPacket() {
    delete[] ip_;
    ip_ = nullptr;
}

// 0x849fcc _ZN17DefaultDataPacket14addQueryStringEPKcs
// Stub in the original: returns 0 and writes nothing.
int DefaultDataPacket::addQueryString(const char* value, std::int16_t length) {
    (void)value;
    (void)length;
    return 0;
}

// 0x849fd4 _ZN17DefaultDataPacket17addShortLenStringEPKcs
// Stub in the original: returns 0 and writes nothing.
int DefaultDataPacket::addShortLenString(const char* value, std::int16_t length) {
    (void)value;
    (void)length;
    return 0;
}

// 0x849fdc _ZN17DefaultDataPacket17getShortLenStringERPcRs
// Stub in the original: returns 0 and writes nothing.
int DefaultDataPacket::getShortLenString(char*& value, std::int16_t& length) {
    (void)value;
    (void)length;
    return 0;
}

// 0x849fe4 _ZN17DefaultDataPacket21addShortLenWideStringEPKwh
// Stub in the original: returns 0 and writes nothing.
int DefaultDataPacket::addShortLenWideString(const wchar_t* value, unsigned char length) {
    (void)value;
    (void)length;
    return 0;
}

// 0x849fec _ZN17DefaultDataPacket21getShortLenWideStringERPwRh
// Stub in the original: returns 0 and writes nothing.
int DefaultDataPacket::getShortLenWideString(wchar_t*& value, unsigned char& length) {
    (void)value;
    (void)length;
    return 0;
}

// 0x849ff4 _ZN17DefaultDataPacket7addByteEh
int DefaultDataPacket::addByte(unsigned char value) {
    if (write_pos_ >= kBodySize) {
        return 0;
    }
    body_[write_pos_] = ToChar(value);
    ++write_pos_;
    return 1;
}

// 0x84a01c _ZN17DefaultDataPacket7getByteERh
// The original returns a pointer-typed 1 or NULL; this port returns 1 or 0.
int DefaultDataPacket::getByte(unsigned char& value) {
    if (read_pos_ < write_pos_) {
        value = ToByte(body_[read_pos_]);
        ++read_pos_;
        return 1;
    }
    value = 0;
    return 0;
}

// 0x84a060 _ZN17DefaultDataPacket8addShortEs
int DefaultDataPacket::addShort(std::int16_t value) {
    if (write_pos_ > kBodySize - 2) {
        return 0;
    }
    const auto bits = static_cast<std::uint16_t>(value);
    body_[write_pos_] = ToChar(static_cast<std::uint8_t>(bits >> 8));
    body_[write_pos_ + 1] = ToChar(static_cast<std::uint8_t>(bits));
    write_pos_ += 2;
    return 1;
}

// 0x84a0a4 _ZN17DefaultDataPacket8getShortERs
int DefaultDataPacket::getShort(std::int16_t& value) {
    value = 0;
    if (write_pos_ - 1 <= read_pos_) {
        return 0;
    }
    const std::uint16_t hi = ToByte(body_[read_pos_]);
    const std::uint16_t lo = ToByte(body_[read_pos_ + 1]);
    read_pos_ += 2;
    value = static_cast<std::int16_t>(static_cast<std::uint16_t>((hi << 8) | lo));
    return 1;
}

// 0x84a114 _ZN17DefaultDataPacket6addIntEi
int DefaultDataPacket::addInt(int value) {
    if (write_pos_ > kBodySize - 4) {
        return 0;
    }
    const auto bits = static_cast<std::uint32_t>(value);
    body_[write_pos_] = ToChar(static_cast<std::uint8_t>(bits >> 24));
    body_[write_pos_ + 1] = ToChar(static_cast<std::uint8_t>(bits >> 16));
    body_[write_pos_ + 2] = ToChar(static_cast<std::uint8_t>(bits >> 8));
    body_[write_pos_ + 3] = ToChar(static_cast<std::uint8_t>(bits));
    write_pos_ += 4;
    return 1;
}

// 0x84a17c _ZN17DefaultDataPacket6getIntERi
int DefaultDataPacket::getInt(int& value) {
    value = 0;
    if (write_pos_ - 3 <= read_pos_) {
        return 0;
    }
    const std::uint32_t bits = (static_cast<std::uint32_t>(ToByte(body_[read_pos_])) << 24) |
                               (static_cast<std::uint32_t>(ToByte(body_[read_pos_ + 1])) << 16) |
                               (static_cast<std::uint32_t>(ToByte(body_[read_pos_ + 2])) << 8) |
                               static_cast<std::uint32_t>(ToByte(body_[read_pos_ + 3]));
    read_pos_ += 4;
    value = static_cast<int>(bits);
    return 1;
}

// 0x84a224 _ZN17DefaultDataPacket8addFloatEf
// The float's bytes are written little-endian (low byte first), as in the original.
int DefaultDataPacket::addFloat(float value) {
    if (write_pos_ > kBodySize - 4) {
        return 0;
    }
    std::uint32_t bits = 0;
    std::memcpy(&bits, &value, sizeof(bits));
    body_[write_pos_] = ToChar(static_cast<std::uint8_t>(bits));
    body_[write_pos_ + 1] = ToChar(static_cast<std::uint8_t>(bits >> 8));
    body_[write_pos_ + 2] = ToChar(static_cast<std::uint8_t>(bits >> 16));
    body_[write_pos_ + 3] = ToChar(static_cast<std::uint8_t>(bits >> 24));
    write_pos_ += 4;
    return 1;
}

// 0x84a2a4 _ZN17DefaultDataPacket8getFloatERf
int DefaultDataPacket::getFloat(float& value) {
    value = 0.0f;
    if (write_pos_ - 3 <= read_pos_) {
        return 0;
    }
    const std::uint32_t bits = static_cast<std::uint32_t>(ToByte(body_[read_pos_])) |
                               (static_cast<std::uint32_t>(ToByte(body_[read_pos_ + 1])) << 8) |
                               (static_cast<std::uint32_t>(ToByte(body_[read_pos_ + 2])) << 16) |
                               (static_cast<std::uint32_t>(ToByte(body_[read_pos_ + 3])) << 24);
    read_pos_ += 4;
    std::memcpy(&value, &bits, sizeof(value));
    return 1;
}

// 0x84a6c4 _ZN17DefaultDataPacket16addByteLenStringEPKch
// One length byte, then the characters. A null string or zero length writes the length byte and
// advances the cursor without copying, as in the original.
int DefaultDataPacket::addByteLenString(const char* value, unsigned char length) {
    if (write_pos_ > kBodySize - static_cast<int>(length)) {
        return 0;
    }
    const int start = write_pos_;
    body_[start] = ToChar(length);
    write_pos_ = start + 1;
    if (length != 0 && value != nullptr) {
        std::memcpy(body_ + start + 1, value, length);
    }
    write_pos_ = start + 1 + static_cast<int>(length);
    return 1;
}

// 0x84a8e0 _ZN17DefaultDataPacket16getByteLenStringERPcRh
// The length byte is consumed before the bounds check, so a failed read still moves the cursor.
int DefaultDataPacket::getByteLenString(char*& value, unsigned char& length) {
    length = ToByte(body_[read_pos_]);
    read_pos_ += 1;
    if (read_pos_ > write_pos_ - static_cast<int>(length)) {
        return 0;
    }
    char* buffer = new char[static_cast<std::size_t>(length) + 1];
    value = buffer;
    if (length != 0) {
        std::memcpy(buffer, body_ + read_pos_, length);
    }
    buffer[length] = '\0';
    read_pos_ += static_cast<int>(length);
    return 1;
}

// 0x84a640 _ZN17DefaultDataPacket20addByteLenWideStringEPKwh
// One length byte (in characters), then the characters as 32-bit units (see kWideUnitBytes).
int DefaultDataPacket::addByteLenWideString(const wchar_t* value, unsigned char length) {
    const int bytes = kWideUnitBytes * static_cast<int>(length);
    if (write_pos_ > kBodySize - bytes) {
        return 0;
    }
    const int start = write_pos_;
    body_[start] = ToChar(length);
    write_pos_ = start + 1;
    if (length != 0 && value != nullptr) {
        PutWideUnits(body_ + start + 1, value, length);
    }
    write_pos_ = start + 1 + bytes;
    return 1;
}

// 0x84a830 _ZN17DefaultDataPacket20getByteLenWideStringERPwRh
// As getByteLenString: the length byte is consumed before the bounds check.
int DefaultDataPacket::getByteLenWideString(wchar_t*& value, unsigned char& length) {
    length = ToByte(body_[read_pos_]);
    read_pos_ += 1;
    const int bytes = kWideUnitBytes * static_cast<int>(length);
    if (read_pos_ > write_pos_ - bytes) {
        return 0;
    }
    wchar_t* buffer = new wchar_t[static_cast<std::size_t>(length) + 1];
    value = buffer;
    if (length != 0) {
        GetWideUnits(buffer, body_ + read_pos_, length);
    }
    buffer[length] = L'\0';
    read_pos_ += bytes;
    return 1;
}

// 0x84a9fc _ZN17DefaultDataPacket9getPacketERP10DataPacket
// Returns the result of the setMessageBody call made through the new packet's vtable (+0x68): the
// memcpy destination, the new packet's body, as the 32-bit value the original hands back.
// Reads two bytes of length and a body without a bounds check, as in the original.
int DefaultDataPacket::getPacket(DataPacket*& packet) {
    auto* created = new DefaultDataPacket();
    packet = created;
    const int start = read_pos_;
    const std::uint16_t bits = static_cast<std::uint16_t>((ToByte(body_[start]) << 8) | ToByte(body_[start + 1]));
    const int length = static_cast<std::int16_t>(bits);
    read_pos_ = start + 2;
    void* const result = created->setMessageBody(reinterpret_cast<const unsigned char*>(body_ + start + 2), length);
    read_pos_ = start + 2 + length;
    return static_cast<int>(reinterpret_cast<std::uintptr_t>(result));
}

// 0x84a460 _ZN17DefaultDataPacket9addPacketEP10DataPacket
// Returns the memcpy destination (body + cursor after the two length bytes), as the original.
// Not bounded by kBodySize, as in the original. The length (vtable +0x60) is read first, then the
// two big-endian length bytes are written and the cursor moves past them, then the body (+0x64)
// is read and copied.
void* DefaultDataPacket::addPacket(DataPacket* packet) {
    const int length = packet->getMessageLen();
    body_[write_pos_] = ToChar(static_cast<std::uint8_t>(length >> 8));
    body_[write_pos_ + 1] = ToChar(static_cast<std::uint8_t>(length));
    write_pos_ += 2;
    const char* body = packet->getMessageBody();
    void* const destination = body_ + write_pos_;
    std::memcpy(destination, body, static_cast<std::size_t>(length));
    write_pos_ += length;
    return destination;
}

// 0x84a344 _ZN17DefaultDataPacket11packMessageEv
// Empty in the original.
void DefaultDataPacket::packMessage() {}

// 0x84a330 _ZN17DefaultDataPacket13getMessageLenEv
int DefaultDataPacket::getMessageLen() {
    return write_pos_;
}

// 0x84a33c _ZN17DefaultDataPacket14getMessageBodyEv
char* DefaultDataPacket::getMessageBody() {
    return body_;
}

// 0x84a4dc _ZN17DefaultDataPacket14setMessageBodyEPhi
// Returns the memcpy destination (the body), as the original. The copy is not bounded by
// kBodySize (as in the original), so a length above 4096 overflows the body. String2Packet
// passes a wire length up to 65535, so the caller must check it.
void* DefaultDataPacket::setMessageBody(const unsigned char* data, int length) {
    void* const destination = body_;
    std::memcpy(destination, data, static_cast<std::size_t>(length));
    read_pos_ = 0;
    write_pos_ = length;
    return destination;
}

// 0x84a348 _ZN17DefaultDataPacket13getNextPacketEv
DataPacket* DefaultDataPacket::getNextPacket() {
    return next_packet_;
}

// 0x84a354 _ZN17DefaultDataPacket13setNextPacketEP10DataPacket
void DefaultDataPacket::setNextPacket(DataPacket* next) {
    next_packet_ = next;
}

// 0x84a360 _ZN17DefaultDataPacket11IsSendByTcpEv
// Data types 1 and 3 are sent by TCP.
bool DefaultDataPacket::IsSendByTcp() {
    return data_type_ == 1 || data_type_ == 3;
}

// 0x84a37c _ZN17DefaultDataPacket11IsSendByUdpEv
bool DefaultDataPacket::IsSendByUdp() {
    return data_type_ == 2;
}

// 0x84a394 _ZN17DefaultDataPacket11getDataTypeEv
int DefaultDataPacket::getDataType() {
    return data_type_;
}

// 0x84a3a0 _ZN17DefaultDataPacket11setDataTypeEi
void DefaultDataPacket::setDataType(int type) {
    data_type_ = type;
}

// 0x84a3ac _ZN17DefaultDataPacket7getPortEv
int DefaultDataPacket::getPort() {
    return port_;
}

// 0x84a3b8 _ZN17DefaultDataPacket7setPortEi
void DefaultDataPacket::setPort(int port) {
    port_ = port;
}

// 0x84a3c4 _ZN17DefaultDataPacket5getIPEv
char* DefaultDataPacket::getIP() {
    return ip_;
}

// 0x84a7f4 _ZN17DefaultDataPacket5setIPEPc
// Frees the old string, stores an owned copy (XP_API_STRNEW) and returns it, as the original.
// A null argument stores nullptr (XP_API_STRNEW(NULL) is strlen of null in the original, a crash).
char* DefaultDataPacket::setIP(const char* ip) {
    delete[] ip_;
    ip_ = nullptr;
    if (ip != nullptr) {
        const std::size_t size = std::strlen(ip) + 1;
        ip_ = new char[size];
        std::memcpy(ip_, ip, size);
    }
    return ip_;
}

// 0x84a410 _ZN17DefaultDataPacket13Packet2StringEPcRi
// Writes a big-endian 2-byte length, then the body; out_size is 2 + length. Returns the memcpy
// destination (out + 2), as the original.
void* DefaultDataPacket::Packet2String(char* out, int& out_size) {
    out[0] = ToChar(static_cast<std::uint8_t>(write_pos_ >> 8));
    out[1] = ToChar(static_cast<std::uint8_t>(write_pos_));
    out_size = 2;
    void* const destination = out + 2;
    std::memcpy(destination, body_, static_cast<std::size_t>(write_pos_));
    out_size += write_pos_;
    return destination;
}

// 0x84a3d0 _ZN17DefaultDataPacket13String2PacketEPci
// Reads a big-endian 2-byte length, then calls setMessageBody with the bytes that follow.
// Returns -1 when the length does not fit in `size`, otherwise length + 2.
int DefaultDataPacket::String2Packet(char* data, int size) {
    const int length = (ToByte(data[0]) << 8) | ToByte(data[1]);
    if (length + 1 >= size) {
        return -1;
    }
    setMessageBody(reinterpret_cast<const unsigned char*>(data + 2), length);
    return length + 2;
}
