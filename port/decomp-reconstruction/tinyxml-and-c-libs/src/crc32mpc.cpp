// 0x8960f4 crc32mpc: the CRC-32 (reflected polynomial 0xEDB88320, initial value 0, as zlib's crc32) that the Musepack
// stream-info reader (libmpcdec streaminfo.c) calls to check a block. The binary's copy is a private C function with the
// name crc32mpc; the vendored streaminfo.c names it mpc_crc32, and the build renames it (dh2_vendor_mpc,
// -Dmpc_crc32=crc32mpc). The table is built on first use, as in the original (a "computed" flag word, then 256 words).
//
// The declaration the library uses is `unsigned long mpc_crc32(unsigned char *buf, int len)`, so the return type here is
// unsigned long: the 32-bit ARM original returns the same register, and on an LP64 host the caller reads a full word.
extern "C" unsigned long crc32mpc(unsigned char* buf, int len);

namespace {

unsigned int g_crcTableComputed = 0;
unsigned int g_crcTable[256];

}  // namespace

extern "C" unsigned long crc32mpc(unsigned char* buf, int len) {
    if (!g_crcTableComputed) {
        for (unsigned int n = 0; n < 256; ++n) {
            unsigned int c = n;
            for (int k = 0; k < 8; ++k) {
                c = (c & 1) ? (c >> 1) ^ 0xEDB88320u : c >> 1;
            }
            g_crcTable[n] = c;
        }
        g_crcTableComputed = 1;
    }
    unsigned int crc = 0xFFFFFFFFu;
    for (int i = 0; i < len; ++i) {
        crc = g_crcTable[(crc ^ buf[i]) & 0xFFu] ^ (crc >> 8);
    }
    return static_cast<unsigned long>(~crc);
}
