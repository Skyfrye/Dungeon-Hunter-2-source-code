#include "glitch-core-io/boost/crc_table.hpp"

namespace boost::detail {

std::uint32_t crc_table_t_32_79764919_true::table_[256] = {};

namespace {

std::uint32_t reverseBits(std::uint32_t value, int bits) {
    std::uint32_t out = 0;
    for (int i = 0; i < bits; ++i) {
        if (value & 1) out |= 1u << (bits - 1 - i);
        value >>= 1;
    }
    return out;
}

}  // namespace

// 0x6b50ec _ZN5boost6detail11crc_table_tILj32ELj79764919ELb1EE10init_tableEv
void crc_table_t_32_79764919_true::init_table() {
    static bool didInit = false;
    if (didInit) return;
    for (std::uint32_t byte = 0; byte < 256; ++byte) {
        // MSB-first CRC of the byte with polynomial 0x04C11DB7.
        std::uint32_t crc = 0;
        for (std::uint32_t mask = 0x80; mask != 0; mask >>= 1) {
            if (byte & mask) crc ^= 0x80000000u;
            crc = (static_cast<std::int32_t>(crc) < 0) ? ((crc << 1) ^ 0x04C11DB7u) : (crc << 1);
        }
        table_[reverseBits(byte, 8)] = reverseBits(crc, 32);
    }
    didInit = true;
}

}  // namespace boost::detail
