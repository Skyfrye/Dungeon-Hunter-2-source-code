// boost::detail::crc_table_t<32, 79764919, true>: the 256-entry CRC-32 table used by the zip
// writer. The table is built on first use by init_table (0x6b50ec). Its values are the
// reflected CRC-32 table (polynomial 0xEDB88320), which the bit-level construction below
// reproduces: entry rev8(b) is the bit-reversed MSB-first CRC of byte b.
#pragma once

#include <cstdint>

namespace boost::detail {

class crc_table_t_32_79764919_true {
public:
    static void init_table();  // 0x6b50ec

    static std::uint32_t table_[256];  // _ZN5boost6detail11crc_table_tILj32ELj79764919ELb1EE6table_E
};

}  // namespace boost::detail
