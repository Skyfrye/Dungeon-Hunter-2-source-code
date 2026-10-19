#include "net-transport/data_packet.hpp"

// 0x8491d0 _ZN10DataPacket7addBlobEPcs
int DataPacket::addBlob(char* data, std::int16_t length) {
    (void)data;
    (void)length;
    return 0;
}

// 0x8491d8 _ZN10DataPacket7getBlobERPcRs
int DataPacket::getBlob(char*& data, std::int16_t& length) {
    (void)data;
    (void)length;
    return 0;
}

// 0x8491e0 _ZN10DataPacket11InitMessageEi
void DataPacket::InitMessage(int type) {
    (void)type;
}

// 0x8491e4 _ZN10DataPacket14GetMessageTypeEv
int DataPacket::GetMessageType() {
    return -1;
}

// 0x8491ec _ZN10DataPacket14InitMMOMessageEs
void DataPacket::InitMMOMessage(std::int16_t type) {
    (void)type;
}

// 0x8491f0 _ZN10DataPacket17GetMMOMessageTypeEv
int DataPacket::GetMMOMessageType() {
    return -1;
}
