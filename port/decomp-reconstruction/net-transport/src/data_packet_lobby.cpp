#include "net-transport/data_packet_lobby.hpp"

#include <algorithm>
#include <cstring>
#include <new>

namespace {
constexpr std::size_t kInitialCapacity = 4096;  // 0x1000 in the original
}  // namespace

// 0x8491f8 _ZN15DataPacketLobby16addByteLenStringEPKch
// The original body is a constant return of 0.
int DataPacketLobby::addByteLenString(const char*, unsigned char) {
    return 0;
}

// 0x849200 _ZN15DataPacketLobby16getByteLenStringERPcRh
int DataPacketLobby::getByteLenString(char*&, unsigned char&) {
    return 0;
}

// 0x849208 _ZN15DataPacketLobby20addByteLenWideStringEPKwh
int DataPacketLobby::addByteLenWideString(const wchar_t*, unsigned char) {
    return 0;
}

// 0x849210 _ZN15DataPacketLobby20getByteLenWideStringERPwRh
int DataPacketLobby::getByteLenWideString(wchar_t*&, unsigned char&) {
    return 0;
}

// 0x849218 _ZN15DataPacketLobby21addShortLenWideStringEPKwh
int DataPacketLobby::addShortLenWideString(const wchar_t*, unsigned char) {
    return 0;
}

// 0x849220 _ZN15DataPacketLobby21getShortLenWideStringERPwRh
int DataPacketLobby::getShortLenWideString(wchar_t*&, unsigned char&) {
    return 0;
}

// 0x849228 _ZN15DataPacketLobby11InitMessageEi
// Writes the two type bytes 1 and 2, then the int through the virtual slots.
// The pseudocode returns the addInt result (leftover r0); the slot is void here.
void DataPacketLobby::InitMessage(int type) {
    addByte(1);
    addByte(2);
    addInt(type);
}

// 0x849270 _ZN15DataPacketLobby14InitMMOMessageEs
void DataPacketLobby::InitMMOMessage(std::int16_t type) {
    addShort(type);
}

// 0x849284 _ZN15DataPacketLobby14GetMessageTypeEv
int DataPacketLobby::GetMessageType() {
    int value = 0;
    getInt(value);
    return value;
}

// 0x8492b0 _ZN15DataPacketLobby17GetMMOMessageTypeEv
int DataPacketLobby::GetMMOMessageType() {
    std::int16_t value = 0;
    getShort(value);
    return value;
}

// 0x8492dc _ZN15DataPacketLobby10WillBeFullEi
bool DataPacketLobby::WillBeFull(std::size_t bytes) const {
    return static_cast<std::int32_t>(bytes) + position_ > capacity_;
}

// 0x8492f8 _ZN15DataPacketLobby7getByteERh
int DataPacketLobby::getByte(unsigned char& value) {
    if (position_ < length_) {
        value = buffer_[position_];
        ++position_;
        return 1;
    }
    value = 0;
    return 0;
}

// 0x849334 _ZN15DataPacketLobby8getShortERs
// Big-endian. Fails (and leaves the position) unless two bytes remain.
int DataPacketLobby::getShort(std::int16_t& value) {
    value = 0;
    if (position_ + 2 > length_) {
        return 0;
    }
    value = static_cast<std::int16_t>((buffer_[position_] << 8) | buffer_[position_ + 1]);
    position_ += 2;
    return 1;
}

// 0x84939c _ZN15DataPacketLobby6getIntERi
// Big-endian. Fails unless four bytes remain.
int DataPacketLobby::getInt(int& value) {
    value = 0;
    if (position_ + 4 > length_) {
        return 0;
    }
    std::uint32_t bits = (static_cast<std::uint32_t>(buffer_[position_]) << 24) |
                         (static_cast<std::uint32_t>(buffer_[position_ + 1]) << 16) |
                         (static_cast<std::uint32_t>(buffer_[position_ + 2]) << 8) |
                         static_cast<std::uint32_t>(buffer_[position_ + 3]);
    value = static_cast<int>(bits);
    position_ += 4;
    return 1;
}

// 0x84943c _ZN15DataPacketLobby8getFloatERf
// The four bytes are read in order as a little-endian float (as the original copies them).
int DataPacketLobby::getFloat(float& value) {
    value = 0.0f;
    if (position_ + 4 > length_) {
        return 0;
    }
    std::uint32_t bits = static_cast<std::uint32_t>(buffer_[position_]) |
                         (static_cast<std::uint32_t>(buffer_[position_ + 1]) << 8) |
                         (static_cast<std::uint32_t>(buffer_[position_ + 2]) << 16) |
                         (static_cast<std::uint32_t>(buffer_[position_ + 3]) << 24);
    std::memcpy(&value, &bits, sizeof(value));
    position_ += 4;
    return 1;
}

// 0x8494c0 _ZN15DataPacketLobby13getMessageLenEv
int DataPacketLobby::getMessageLen() {
    return static_cast<int>(length_);
}

// 0x8494c8 _ZN15DataPacketLobby14getMessageBodyEv
char* DataPacketLobby::getMessageBody() {
    return reinterpret_cast<char*>(buffer_.get());
}

// 0x8494d0 _ZN15DataPacketLobby11packMessageEv
// Sets the length to the position and writes big-endian (length - 2) into the header.
// The pseudocode returns this (leftover r0); the slot is void.
void DataPacketLobby::packMessage() {
    length_ = position_;
    const auto body = static_cast<std::uint16_t>(length_ - 2);
    buffer_[0] = static_cast<std::uint8_t>(body >> 8);
    buffer_[1] = static_cast<std::uint8_t>(body);
}

// 0x8494fc _ZN15DataPacketLobby13getNextPacketEv
DataPacket* DataPacketLobby::getNextPacket() {
    return next_packet_;
}

// 0x849504 _ZN15DataPacketLobby13setNextPacketEP10DataPacket
// The pseudocode returns `this` unchanged in r0; the port returns nothing.
void DataPacketLobby::setNextPacket(DataPacket* packet) {
    next_packet_ = packet;
}

// 0x84950c _ZN15DataPacketLobby11IsSendByTcpEv
bool DataPacketLobby::IsSendByTcp() {
    return data_type_ == 1 || data_type_ == 3;
}

// 0x849524 _ZN15DataPacketLobby11IsSendByUdpEv
bool DataPacketLobby::IsSendByUdp() {
    return data_type_ == 2;
}

// 0x849538 _ZN15DataPacketLobby11getDataTypeEv
int DataPacketLobby::getDataType() {
    return data_type_;
}

// 0x849540 _ZN15DataPacketLobby11setDataTypeEi
void DataPacketLobby::setDataType(int type) {
    data_type_ = type;
}

// 0x849548 _ZN15DataPacketLobby7getPortEv
int DataPacketLobby::getPort() {
    return port_;
}

// 0x849550 _ZN15DataPacketLobby7setPortEi
void DataPacketLobby::setPort(int port) {
    port_ = port;
}

// 0x849558 _ZN15DataPacketLobby5getIPEv
char* DataPacketLobby::getIP() {
    return ip_.get();
}

// 0x849560 _ZN15DataPacketLobby13String2PacketEPci
// The 2-byte big-endian length is read at the current position and the position moves past it.
// If length + 1 >= size the call fails with -1 (position already moved). Otherwise the body is
// set through the vtable slot +0x68 (setMessageBody) from data + 2, as the original does, and
// length + 2 is returned. The length goes over as a signed int (sign-extended from 16 bits),
// as in the original; setMessageBody caps the copy at the buffer capacity.
int DataPacketLobby::String2Packet(char* data, int size) {
    const std::size_t at = position_;
    const auto hi = static_cast<std::uint8_t>(data[at]);
    const auto lo = static_cast<std::uint8_t>(data[at + 1]);
    position_ = at + 2;
    const auto n = static_cast<std::int16_t>((hi << 8) | lo);
    if (n + 1 >= size) {
        return -1;
    }
    setMessageBody(reinterpret_cast<const unsigned char*>(data + 2), static_cast<int>(n));
    return n + 2;
}

// 0x8495b8 _ZN15DataPacketLobby13Packet2StringEPcRi
// Writes the length as a big-endian 16-bit value (bytes at +0x11 and +0x10 of the original
// object), then the body. out_length becomes 2 + length. Returns the memcpy destination (out + 2).
void* DataPacketLobby::Packet2String(char* out, int& out_length) {
    out[0] = static_cast<char>((length_ >> 8) & 0xFF);
    out[1] = static_cast<char>(length_ & 0xFF);
    out_length = 2;
    void* const destination = out + 2;
    std::memcpy(destination, buffer_.get(), length_);
    out_length += static_cast<int>(length_);
    return destination;
}

// 0x849600 _ZN15DataPacketLobby14setMessageBodyEPhi
// Partial: the original copies size bytes into the buffer without a capacity check. This
// port copies at most capacity_ bytes and records that many as the length.
// Returns the memcpy destination (the buffer), as the original.
void* DataPacketLobby::setMessageBody(const unsigned char* data, int size) {
    const std::size_t copy = size > 0 ? static_cast<std::size_t>(std::min<std::int32_t>(size, capacity_)) : 0;
    if (copy != 0) {
        std::memcpy(buffer_.get(), data, copy);
    }
    position_ = 0;
    length_ = copy;
    return buffer_.get();
}

// 0x849624 _ZN15DataPacketLobbyD1Ev (D2 0x8496b4, D0 0x849684)
DataPacketLobby::~DataPacketLobby() = default;

// 0x849714 _ZN15DataPacketLobby5setIPEPc
// Partial: a null ip clears the stored address. The original would call STRNEW on null.
char* DataPacketLobby::setIP(const char* ip) {
    ip_.reset();
    if (ip == nullptr) {
        return nullptr;
    }
    const std::size_t n = std::strlen(ip);
    ip_.reset(new char[n + 1]);
    std::memcpy(ip_.get(), ip, n + 1);
    return ip_.get();
}

// 0x849748 _ZN15DataPacketLobby17getShortLenStringERPcRs
// The length is a signed short, as the original compares and copies it (the symbol takes short&).
// Returns 0 for an empty string as the original does, so an empty string reads as failure, and the
// position moves past the 2-byte header on every path. Partial: a negative length passes the
// original's bounds test and then asks operator new[] for a negative size (undefined); the port
// fails the call there instead.
int DataPacketLobby::getShortLenString(char*& text, std::int16_t& length) {
    length = static_cast<std::int16_t>((buffer_[position_] << 8) | buffer_[position_ + 1]);
    position_ += 2;
    if (length < 0) {
        return 0;
    }
    const std::size_t n = static_cast<std::size_t>(length);
    if (position_ + static_cast<std::int32_t>(n) > length_) {
        return 0;
    }
    if (n == 0) {
        text = nullptr;
        return 0;
    }
    text = new char[n + 1];
    std::memcpy(text, buffer_.get() + position_, n);
    text[n] = '\0';
    position_ += n;
    return 1;
}

// 0x84980c _ZN15DataPacketLobby7getBlobERPcRs
int DataPacketLobby::getBlob(char*& data, std::int16_t& length) {
    if (getShort(length) && length >= 0 && position_ + static_cast<std::int32_t>(length) <= capacity_) {
        const auto n = static_cast<std::size_t>(length);
        data = new char[n + 1];
        data[n] = '\0';
        if (n > 0) {
            std::memcpy(data, buffer_.get() + position_, n);
            position_ += n;
        }
        return 1;
    }
    data = nullptr;
    length = 0;
    return 0;
}

// 0x8498bc _ZN15DataPacketLobby18AllocateMoreMomeryEv
// Doubles the capacity and keeps the bytes up to the position.
bool DataPacketLobby::AllocateMoreMomery() {
    const std::size_t new_capacity = 2 * capacity_;
    std::unique_ptr<std::uint8_t[]> fresh(new (std::nothrow) std::uint8_t[new_capacity]());
    if (!fresh) {
        return false;
    }
    if (position_ != 0) {
        std::memcpy(fresh.get(), buffer_.get(), position_);
    }
    buffer_ = std::move(fresh);
    capacity_ = new_capacity;
    return true;
}

bool DataPacketLobby::EnsureRoom(std::size_t bytes) {
    while (WillBeFull(bytes)) {
        if (!AllocateMoreMomery()) {
            return false;
        }
    }
    return true;
}

// 0x849924 _ZN15DataPacketLobby9addPacketEP10DataPacket
// Verified against the Hex-Rays body and the ARM listing: the source's length (vptr +0x60) is
// checked against WillBeFull and one growth step (AllocateMoreMomery) is attempted; the length is
// then written big-endian at the position, the position advances by 2, the source's body (+0x64)
// is copied in and the position advances by the length. Returns the memcpy destination; the failed
// growth returns the XP_DEBUG_OUT result in the original (a logging result, null here).
// Deviations: the "addPacket failed : memory leak" XP_DEBUG_OUT trace on the failed growth is
// dropped, and the port's WillBeFull takes a size_t where the original passes the int length.
void* DataPacketLobby::addPacket(DataPacket* packet) {
    const std::size_t size = static_cast<std::size_t>(packet->getMessageLen());
    if (WillBeFull(size) && !AllocateMoreMomery()) {
        return nullptr;
    }
    buffer_[position_] = static_cast<std::uint8_t>(size >> 8);
    buffer_[position_ + 1] = static_cast<std::uint8_t>(size);
    position_ += 2;
    const char* body = packet->getMessageBody();
    void* const destination = buffer_.get() + position_;
    std::memcpy(destination, body, size);
    position_ += size;
    return destination;
}

// 0x8499d8 _ZN15DataPacketLobby17addShortLenStringEPKcs
// Partial: the original checks the body length alone against the capacity, with one growth step,
// so a write can run past the buffer. This port checks the 2-byte header too and grows until
// header and body fit (EnsureRoom), so the write cannot run past the buffer.
int DataPacketLobby::addShortLenString(const char* text, std::int16_t length) {
    if (text == nullptr || length == 0) {
        return 0;
    }
    const auto n = static_cast<std::size_t>(static_cast<std::uint16_t>(length));
    if (!EnsureRoom(n + 2)) {
        return 0;
    }
    buffer_[position_] = static_cast<std::uint8_t>(n >> 8);
    buffer_[position_ + 1] = static_cast<std::uint8_t>(n);
    position_ += 2;
    std::memcpy(buffer_.get() + position_, text, n);
    position_ += n;
    return 1;
}

// 0x849a68 _ZN15DataPacketLobby14addQueryStringEPKcs
int DataPacketLobby::addQueryString(const char* text, std::int16_t length) {
    if (text == nullptr || length == 0) {
        return 0;
    }
    const auto n = static_cast<std::size_t>(static_cast<std::uint16_t>(length));
    if (!EnsureRoom(n)) {
        return 0;
    }
    std::memcpy(buffer_.get() + position_, text, n);
    position_ += n;
    return 1;
}

// 0x849ad8 _ZN15DataPacketLobby7addBlobEPcs
// A null pointer or a negative length writes an empty blob (a zero length short).
int DataPacketLobby::addBlob(char* data, std::int16_t length) {
    const bool empty = data == nullptr || length < 0;
    const std::size_t n = empty ? 0 : static_cast<std::size_t>(length);
    if (!EnsureRoom(n + 2)) {
        return 0;
    }
    addShort(static_cast<std::int16_t>(n));
    if (n != 0) {
        std::memcpy(buffer_.get() + position_, data, n);
        position_ += n;
    }
    return 1;
}

// 0x849b6c _ZN15DataPacketLobby8addFloatEf
// Writes the float bits as four little-endian bytes, low byte first.
int DataPacketLobby::addFloat(float value) {
    if (!EnsureRoom(4)) {
        return 0;
    }
    std::uint32_t bits;
    std::memcpy(&bits, &value, sizeof(bits));
    for (std::size_t i = 0; i < 4; ++i) {
        buffer_[position_ + i] = static_cast<std::uint8_t>(bits >> (8 * i));
    }
    position_ += 4;
    return 1;
}

// 0x849bfc _ZN15DataPacketLobby6addIntEi
int DataPacketLobby::addInt(int value) {
    if (!EnsureRoom(4)) {
        return 0;
    }
    const auto bits = static_cast<std::uint32_t>(value);
    buffer_[position_] = static_cast<std::uint8_t>(bits >> 24);
    buffer_[position_ + 1] = static_cast<std::uint8_t>(bits >> 16);
    buffer_[position_ + 2] = static_cast<std::uint8_t>(bits >> 8);
    buffer_[position_ + 3] = static_cast<std::uint8_t>(bits);
    position_ += 4;
    return 1;
}

// 0x849c78 _ZN15DataPacketLobby8addShortEs
int DataPacketLobby::addShort(std::int16_t value) {
    if (!EnsureRoom(2)) {
        return 0;
    }
    const auto bits = static_cast<std::uint16_t>(value);
    buffer_[position_] = static_cast<std::uint8_t>(bits >> 8);
    buffer_[position_ + 1] = static_cast<std::uint8_t>(bits);
    position_ += 2;
    return 1;
}

// 0x849cd4 _ZN15DataPacketLobby7addByteEh
int DataPacketLobby::addByte(unsigned char value) {
    if (!EnsureRoom(1)) {
        return 0;
    }
    buffer_[position_] = value;
    position_ += 1;
    return 1;
}

// 0x849d20 _ZN15DataPacketLobbyC1EP10DataPacket (C2 0x849dcc, same body)
// The data type (vptr +0x74), body (+0x64) and length (+0x60) come from the source through the
// DataPacket virtuals, in the original order. The body goes through setMessageBody, which caps
// the copy at the 4096-byte capacity; the original copies unchecked, so only a source longer
// than the capacity (undefined in the original) differs.
DataPacketLobby::DataPacketLobby(DataPacket* source)
    : buffer_(std::make_unique<std::uint8_t[]>(kInitialCapacity)),
      data_type_(source->getDataType()) {
    const char* body = source->getMessageBody();
    const int length = source->getMessageLen();
    setMessageBody(reinterpret_cast<const unsigned char*>(body), length);
}

// 0x849e78 _ZN15DataPacketLobbyC1Ev (C2 0x849f5c, same body)
DataPacketLobby::DataPacketLobby()
    : buffer_(std::make_unique<std::uint8_t[]>(kInitialCapacity)) {}

// 0x849ee8 _ZN15DataPacketLobby9getPacketERP10DataPacket
// Creates a packet from the next length-prefixed blob. As in the original, the body length
// is not checked against the source buffer.
int DataPacketLobby::getPacket(DataPacket*& packet) {
    auto* created = new DataPacketLobby();
    packet = created;
    const auto hi = buffer_[position_];
    const auto lo = buffer_[position_ + 1];
    position_ += 2;
    const auto n = static_cast<std::int16_t>((hi << 8) | lo);
    const int result = created->addBlob(reinterpret_cast<char*>(buffer_.get() + position_), n);
    position_ += static_cast<std::size_t>(n);
    return result;
}
