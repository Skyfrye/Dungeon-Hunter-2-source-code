#include "core-platform/misc_util.hpp"

#include <cstdint>
#include <cstdio>
#include <cstring>

#if defined(_WIN32)
#include <winsock2.h>
#else
#include <arpa/inet.h>
#include <netdb.h>
#endif

#include "core-platform/memory.hpp"

// 0x840000 _Z8in_cksumPti
// Internet checksum: 16-bit words in host byte order, a trailing odd byte added
// unshifted, two end-around folds, then the one's complement.
unsigned short in_cksum(const unsigned char* data, int length) {
    std::uint32_t sum = 0;
    int remaining = length;
    if (length >= 2) {
        const int words = (length - 2) / 2 + 1;
        for (int i = 0; i < words; ++i) {
            std::uint16_t w;
            std::memcpy(&w, data + 2 * i, sizeof w);
            sum += w;
        }
        remaining = (length - 2) - (words - 1) * 2;
        data += 2 * words;
    }
    if (remaining == 1) {
        sum += *data;
    }
    const std::uint32_t folded = (sum & 0xFFFFu) + (sum >> 16);
    return static_cast<unsigned short>(~(folded + (folded >> 16)) & 0xFFFFu);
}

// 0x3ef1b8 _Z12Color255To01R7Point3DIfE
// Divides X, Y and Z in place by 255.0f and returns the new Z (Hex-Rays and the
// IDA listing agree: three float divides through the same helper).
float Color255To01(Point3D<float>& color) {
    color.X = color.X / 255.0f;
    color.Y = color.Y / 255.0f;
    color.Z = color.Z / 255.0f;
    return color.Z;
}

// 0x827970 _Z9TransToIpRPc
// Resolves the host name and writes its first IPv4 address as text into a new
// 0x80-byte CustomAlloc buffer that replaces *host (Hex-Rays: CustomAlloc(0x80),
// memset, strcpy of inet_ntoa). The original returns nothing on a failed lookup.
void TransToIp(char** host) {
    hostent* entry = gethostbyname(*host);
    if (entry == nullptr) {
        return;
    }
    char* buffer = static_cast<char*>(CustomAlloc(128));
    *host = buffer;
    std::memset(buffer, 0, 128);
    in_addr address;
    std::memcpy(&address, entry->h_addr_list[0], sizeof address);
    std::snprintf(buffer, 128, "%s", inet_ntoa(address));
}
