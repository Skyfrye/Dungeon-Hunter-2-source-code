// libnativeinterface.so reconstruction (batch p1-core-platform-lib_libnativeinterface-fd1381-0, platform pass).
//
// Sources: the ARM listing recovered/native/assembly/libnativeinterface.so (named functions and the raw
// bytes of the unnamed ones, decoded with Capstone), the Ghidra export in
// recovered/native/decompiled/libnativeinterface.so (addresses there carry a 0x10000 base) and the original
// ELF itself (lib/armeabi/libnativeinterface.so), disassembled here with Capstone in Thumb mode. Every
// address comment is the ELF virtual address. The Hex-Rays export and the IDA database cover
// libDungeonHunter2.so only, so the .rodata reads below were taken from libnativeinterface.so directly.
//
// Stack-protector checks (__stack_chk_guard, __stack_chk_fail) are compiler output and are not reproduced.
// The Ghidra function signatures for CheckLicenseFile, FUN_00010b48 and storeLicenseKey are void, but the
// listing returns a value in r0 for each; the bodies here return that value.
//
// Resolved inputs (every row of this file used to be partial for these two; both are read from the original
// ELF and re-checked here):
//   - Byte order of entry(): the selector is the byte at ELF 0x1260. entry() loads the pointer in
//     .data.rel.ro at 0x3760, whose R_ARM_RELATIVE relocation has addend 4704 (relocations.csv), and tests
//     its FIRST BYTE with ldrb. That byte is 0x00 in the original ELF (re-read from lib/armeabi/
//     libnativeinterface.so: 0x1260 holds 00 01 00 00), so the flag is zero and the most-significant-byte-
//     first store below is the path the binary takes.
//   - Passphrase texts: g_license_passphrase_blob is defined in this file. The five 1024-byte texts were
//     copied byte for byte from .rodata 0x1274 + 1028 * i of the original ELF (the same five texts are
//     recorded in symbols/libnativeinterface.so/strings.csv), and the test checks their SHA-1. The .rodata
//     bytes were re-read and compared with these literals; the .data.rel.ro words are 0x1260 then
//     0x1274/0x1678/0x1a7c/0x1e80/0x2284, so the table base 0x3764 is the five texts.
//   - The fopen mode strings are at .rodata 0x1268 ("w") and 0x1270 ("r"); 0x1270 is the mode
//     CheckLicenseFile passes to fopen at 0xd4a, so that open is text mode and not "rb".
//
// Host-necessitated deviations, all named:
//   - wcslen (storeLicenseKey) is applied to the UTF-8 string from GetStringUTFChars, as the binary does. It
//     counts 32-bit units on Android (bionic wchar_t) and 16-bit units on Windows.
//   - fopen modes "r" and "w" are as in the binary; on Windows these are text mode.
//   - The four JNI rows cannot be run on this host (no JVM); their bodies are checked against the listing.

#include "core-platform/tb/nativeinterface_license.hpp"

#include <cctype>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <wchar.h>

const char* g_license_file_path = nullptr;  // 0x3888 (.bss, Ghidra label __data_start)
const char* g_license_str2 = nullptr;       // 0x388c (.bss)
const char* g_license_str3 = nullptr;       // 0x3890 (.bss)

// The five passphrase texts of the original .rodata, copied byte for byte: 1024 characters each at
// 0x1274 + 1028 * i, followed by the literal's NUL and three alignment bytes. The pointers are the
// five .data.rel.ro slots at 0x3764 (the slot at 0x3760 before them points at the byte-order flag).
// FUN_00010b48 reads at most 0x200 + ((s3 * s3) & 0x1ff) <= 1023 bytes from an offset of at most 511,
// so it never leaves the 1024 characters. The test checks each text against its SHA-1.
namespace {

// .rodata 0x1274
const char kPassphraseText0[] =
    "When William McKinley won the presidential election in November 1896, the question of Hawaii's annexation to t"
    "he U.S. was again opened. The previous president, Grover Cleveland, was a friend of Queen Liliuokalani. He had"
    " remained opposed to annexation until the end of his term, but McKinley was open to persuasion by U.S. expansi"
    "onists and by annexationists from Hawaii. He agreed to meet with a committee of annexationists from Hawaii, Lo"
    "rrin Thurston, Francis Hatch and William Kinney. After negotiations, in June 1897, McKinley agreed to a treaty"
    " of annexation with these representatives of the Republic of Hawaii.[29] The president then submitted the trea"
    "ty to the U.S. Senate for approval. Despite some opposition in the islands, the Newlands Resolution was passed"
    " by the House June 15, 1898, by a vote of 209 to 91, and by the Senate on July 6, 1898, by a vote of 42 to 21,"
    " annexing Hawaii as a U.S. territory. Its legality continues to be questioned because it was a United States G"
    "overnment resolution, not a treaty"
    ;

// .rodata 0x1678
const char kPassphraseText1[] =
    "Samsung has sixteen products that have dominated the world's market share, including: DRAM, color cathode-ray "
    "tube TVs (CPT, CDT), SRAM, TFT-LCD glass substrates, TFT-LCD, STN-LCD, tuner, CDMA handset, color television ("
    "CTV), monitor, flash memory, LCD Driver IC (LDI), PDP module, PCB for handheld (mobile phone plates), Flame Re"
    "tardant ABS, and Dimethyl Formamide (DMF).[12] Plus in the Television market, Samsung and LG make the only scr"
    "eens for LCD TFT televisions and then later sell them on to the other companies. According to Interbrand and B"
    "usinessWeek, Samsung's brand value ranked 43rd (USD 5.2billion) in 2000, 42nd (USD 6.4 billion) in 2001, 34th "
    "(USD 8.3 billion) in 2002, 25th (USD 10.8 billion) in 2003, 21st (USD 12.5 billion) in 2004, and 20th (14.9 bi"
    "llion) in 2005 among top global companies. In terms of export that directly contributes to the Korean economy,"
    " Samsung took up 18.1% of the all exports with USD 31.2 billion in 2000 and 20.7% with USD 52.7 billion in 200"
    "4. In addition, Samsung's tax paym"
    ;

// .rodata 0x1a7c
const char kPassphraseText2[] =
    "Situated among the inland prefectures of the Northern portion of the Kanto region, Tochigi is contiguous with "
    "the four prefectures of Ibaraki, Gunma, Saitama, and Fukushima. The climate of Tochigi may be classified as a "
    "humid temperate zone in which there are broad variations in temperature. Winters are arid with dry winds, whil"
    "e summers are humid and puncuated with frequent thunderstorms. The population of Tochigi as of March, 2007, wa"
    "s approximately 2,014,900 and was increasing up until 2005.[citation needed] In 2006, the population started t"
    "o decrease mirroring that of the nation's population decrease. About 500,000 people live in the prefectural ca"
    "pital city of Utsunomiya, with the remainder dispersed over 14 other cities and 17 towns.[citation needed] Sit"
    "uated in the center of the prefecture is the largest open plain in the Kanto region. To the north stand the mo"
    "untains Shirane (2,578 m), Nantai (2,484 m) and Nasudake (1,917 m). Originating in this region are the Kinugaw"
    "a, Nakagawa, and Watarase Rivers, "
    ;

// .rodata 0x1e80
const char kPassphraseText3[] =
    "A touchscreen is a display which can detect the presence and location of a touch within the display area. The "
    "term generally refers to touch or contact to the display of the device by a finger or hand. Touchscreens can a"
    "lso sense other passive objects, such as a stylus. However, if the object sensed is active, as with a light pe"
    "n, the term touchscreen is generally not applicable. The ability to interact directly with a display typically"
    " indicates the presence of a touchscreen. Until the early 1980s, most consumer touchscreens could only sense o"
    "ne point of contact at a time, and few have had the capability to sense how hard one is touching. This is star"
    "ting to change with the commercialisation of multi-touch technology. The touchscreen has two main attributes. "
    "First, it enables one to interact with what is displayed directly on the screen, where it is displayed, rather"
    " than indirectly with a mouse or touchpad. Secondly, it lets one do so without requiring any intermediate devi"
    "ce, again, such as a stylus that n"
    ;

// .rodata 0x2284
const char kPassphraseText4[] =
    "Calligraphy has arguably become the most venerated form of Islamic art because it provides a link between the "
    "languages of the Muslims with the religion of Islam. The holy book of Islam, the Qur'an, has played an importa"
    "nt role in the development and evolution of the Arabic language, and by extension, calligraphy in the Arabic a"
    "lphabet. Proverbs and complete passages from the Qur'an are still active sources for Islamic calligraphy. The "
    "Arabic alphabet consists of 28 letters and 18 different forms of writing. The Diwani script is a cursive style"
    " of Arabic calligraphy developed during the reign of the early Ottoman Turks (16th and early 17th centuries). "
    "It was invented by Housam Roumi and reached its height of popularity under Suleyman I the Magnificent (1520-66"
    "). As decorative as it was communicative, Diwani was distinguished by the complexity of the line within the le"
    "tter and the close juxtaposition of the letters within the word. A variation of the Diwani, the Diwani Al Jali"
    ", is characterized by its abundanc"
    ;

}  // namespace

// .data.rel.ro 0x3764: the table FUN_00010b48 indexes with ((s2 * s2) & 0x1ff) % 5.
const char* const g_license_passphrase_blob[5] = {
    kPassphraseText0, kPassphraseText1, kPassphraseText2, kPassphraseText3, kPassphraseText4};

namespace {

// Byte at ELF 0x1260, the value the .data.rel.ro pointer at 0x3760 points at: 0x00 in the original ELF (the
// relocation addend 4704 is that address, and the byte is read there). Zero selects the big-endian store in
// entry().
const uint8_t kRodataWordOrderFlag = 0x00;

inline uint32_t rotl32(uint32_t x, int n) {
    return (x << n) | (x >> (32 - n));
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------
// SHA-1 (ELF 0xedc, 0xf14, 0x1128, 0x118c, 0x123c). Structure follows the listing; the 80 rounds use the
// standard f and K values of the four groups, and the test checks the result against FIPS 180 digests.
// ---------------------------------------------------------------------------------------------------------

// 0xedc SHA1Reset
void SHA1Reset(SHA1Context* context) {
    context->length_low = 0;
    context->digest[0] = 0x67452301u;
    context->length_high = 0;
    context->message_block_index = 0;
    context->digest[1] = 0xefcdab89u;
    context->computed = 0;
    context->corrupted = 0;
    context->digest[2] = 0x98badcfeu;
    context->digest[3] = 0x10325476u;
    context->digest[4] = 0xc3d2e1f0u;
}

// 0xf14 SHA1ProcessMessageBlock
void SHA1ProcessMessageBlock(SHA1Context* context) {
    uint32_t w[80];
    for (int t = 0; t < 16; ++t) {  // +0x1c: big-endian words of the message block
        const uint8_t* p = context->message_block + 4 * t;
        w[t] = (uint32_t(p[0]) << 24) | (uint32_t(p[1]) << 16) | (uint32_t(p[2]) << 8) | uint32_t(p[3]);
    }
    for (int t = 16; t < 80; ++t) {
        w[t] = rotl32(w[t - 3] ^ w[t - 8] ^ w[t - 14] ^ w[t - 16], 1);
    }

    uint32_t a = context->digest[0];
    uint32_t b = context->digest[1];
    uint32_t c = context->digest[2];
    uint32_t d = context->digest[3];
    uint32_t e = context->digest[4];
    for (int t = 0; t < 80; ++t) {
        uint32_t f;
        uint32_t k;
        if (t < 20) {
            f = (b & c) | (~b & d);
            k = 0x5a827999u;
        } else if (t < 40) {
            f = b ^ c ^ d;
            k = 0x6ed9eba1u;
        } else if (t < 60) {
            f = (b & c) | (b & d) | (c & d);
            k = 0x8f1bbcdcu;
        } else {
            f = b ^ c ^ d;
            k = 0xca62c1d6u;
        }
        const uint32_t temp = rotl32(a, 5) + f + e + k + w[t];
        e = d;
        d = c;
        c = rotl32(b, 30);
        b = a;
        a = temp;
    }
    context->digest[0] += a;
    context->digest[1] += b;
    context->digest[2] += c;
    context->digest[3] += d;
    context->digest[4] += e;
    context->message_block_index = 0;
}

// 0x1128 SHA1Input
void SHA1Input(SHA1Context* context, const uint8_t* bytes, uint32_t length) {
    if (length == 0) {
        return;
    }
    if (context->computed != 0 || context->corrupted != 0) {
        context->corrupted = 1;
        return;
    }
    do {
        context->message_block[context->message_block_index++] = *bytes;
        context->length_low += 8;
        if (context->length_low == 0) {
            context->length_high += 1;
            if (context->length_high == 0) {
                context->corrupted = 1;
            }
        }
        if (context->message_block_index == 64) {
            SHA1ProcessMessageBlock(context);
        }
        if (--length == 0 || context->corrupted != 0) {
            break;
        }
        ++bytes;
    } while (true);
}

// 0x118c SHA1PadMessage
void SHA1PadMessage(SHA1Context* context) {
    if (context->message_block_index < 56) {
        context->message_block[context->message_block_index++] = 0x80;
        while (context->message_block_index < 56) {
            context->message_block[context->message_block_index++] = 0;
        }
    } else {
        context->message_block[context->message_block_index++] = 0x80;
        while (context->message_block_index < 64) {
            context->message_block[context->message_block_index++] = 0;
        }
        SHA1ProcessMessageBlock(context);
        while (context->message_block_index < 56) {
            context->message_block[context->message_block_index++] = 0;
        }
    }

    // +0x54..+0x5b: message length in bits, big-endian, high word first.
    const uint32_t high = context->length_high;
    context->message_block[56] = static_cast<uint8_t>(high >> 24);
    context->message_block[57] = static_cast<uint8_t>(high >> 16);
    context->message_block[58] = static_cast<uint8_t>(high >> 8);
    context->message_block[59] = static_cast<uint8_t>(high);
    const uint32_t low = context->length_low;
    context->message_block[60] = static_cast<uint8_t>(low >> 24);
    context->message_block[61] = static_cast<uint8_t>(low >> 16);
    context->message_block[62] = static_cast<uint8_t>(low >> 8);
    context->message_block[63] = static_cast<uint8_t>(low);
    SHA1ProcessMessageBlock(context);
}

// 0x123c SHA1Result
int SHA1Result(SHA1Context* context) {
    int result = 0;
    if (context->corrupted == 0) {
        result = 1;
        if (context->computed == 0) {
            SHA1PadMessage(context);
            context->computed = 1;
            result = 1;
        }
    }
    return result;
}

// ---------------------------------------------------------------------------------------------------------
// Derivation helpers (ELF 0x8e4, 0x924, 0x9a0, 0xaf8, 0xb48).
// ---------------------------------------------------------------------------------------------------------

// 0x8e4 entry (the ELF entry symbol as Ghidra labels it). Stores a 32-bit word as four bytes. Zero in the flag
// byte stores the most significant byte first; any other value stores the least significant byte first. The
// listing is ldr r2,[pc]; add r2,pc; ldr r2,[r2]; ldrb r2,[r2]; cmp r2,#0; bne (little endian) -- the pointer
// is the .data.rel.ro slot at 0x3760, its relocation addend is 4704 (0x1260) and the byte read there is 0x00,
// so the big-endian arm below is the one the binary takes. Verified against the listing and the original ELF.
static void entry(uint8_t* out, uint32_t value) {
    if (kRodataWordOrderFlag != 0) {
        out[0] = static_cast<uint8_t>(value);
        out[1] = static_cast<uint8_t>(value >> 8);
        out[2] = static_cast<uint8_t>(value >> 16);
        out[3] = static_cast<uint8_t>(value >> 24);
    } else {
        out[0] = static_cast<uint8_t>(value >> 24);
        out[1] = static_cast<uint8_t>(value >> 16);
        out[2] = static_cast<uint8_t>(value >> 8);
        out[3] = static_cast<uint8_t>(value);
    }
}

// 0x924 FUN_00010924: SHA-1 of length bytes at data. Each of the five context words goes to out at +0, +4,
// +8, +0xc and +0x10 through entry(). The listing has the argument order (data, out, length) and the five
// calls as `adds r0, r5, #4*i; ldr r1, [r4, #4*i]; bl entry`, and the digest is stored big-endian because the
// byte at 0x1260 is zero. Tested against FIPS 180 digests.
void FUN_00010924(const void* data, uint8_t* out, uint32_t length) {
    SHA1Context context;
    SHA1Reset(&context);
    SHA1Input(&context, static_cast<const uint8_t*>(data), length);
    SHA1Result(&context);
    entry(out + 0x00, context.digest[0]);
    entry(out + 0x04, context.digest[1]);
    entry(out + 0x08, context.digest[2]);
    entry(out + 0x0c, context.digest[3]);
    entry(out + 0x10, context.digest[4]);
}

// 0x9a0 FUN_000109a0: scans text from the last character to the first, after tolower. Characters up to '/'
// add 0. Digits add 0-9. Any other character adds c - 0x57, so a-f add 10-15 and the rest add larger values.
int FUN_000109a0(const char* text) {
    int sum = 0;
    for (int i = static_cast<int>(strlen(text)) - 1; i >= 0; --i) {
        const uint32_t c = static_cast<uint32_t>(std::tolower(static_cast<unsigned char>(text[i])));
        uint32_t v = 0;
        if (c > 0x2f) {
            v = c - 0x30;
            if (v > 9) {
                v = c - 0x57;
            }
        }
        sum = static_cast<int>(static_cast<uint32_t>(sum) + v);
    }
    return sum;
}

// 0xaf8 FUN_00010af8: each digest byte as two lowercase hex digits, then a NUL at out[40].
void FUN_00010af8(const uint8_t* digest, char* out) {
    char pair[3] = {0, 0, 0};
    for (int i = 0; i < 20; ++i) {
        std::snprintf(pair, sizeof pair, "%02x", static_cast<unsigned>(digest[i]));
        out[2 * i] = pair[0];
        out[2 * i + 1] = pair[1];
    }
    out[40] = '\0';
}

// 0xb48 FUN_00010b48. Both inputs are hashed as the listing does:
//   a = copy of first, up to 31 characters (32-byte buffer); s2 = hex digit sum of hex(SHA-1(a)).
//   b = second, hashed;               s3 = hex digit sum of hex(b).
//   r = (s2 * s2) & 0x1ff; *out = passphrase[r % 5] + r; returns ((s3 * s3) & 0x1ff) + 0x200 - r.
// The listing matches call for call, including the 32-byte zeroed copy, the 41-byte hex buffers, the single
// multiply for the square, the shift-pair masks (& 0x1ff), the __aeabi_uidivmod by 5 that picks the table
// entry (base 0x3764) and the add of r to the pointer. The table is defined in this file, so nothing is
// extern; the digest byte order is big-endian because the byte at 0x1260 is zero.
size_t FUN_00010b48(const char* first, const char* second, const char** out) {
    char first_copy[32] = {};
    strncpy(first_copy, first, 0x1f);
    uint8_t digest1[20] = {};
    FUN_00010924(first_copy, digest1, static_cast<uint32_t>(strlen(first_copy)));
    char hex1[41] = {};
    FUN_00010af8(digest1, hex1);
    const int s2 = FUN_000109a0(hex1);

    uint8_t digest2[20] = {};
    FUN_00010924(second, digest2, static_cast<uint32_t>(strlen(second)));
    char hex2[41] = {};
    FUN_00010af8(digest2, hex2);
    const int s3 = FUN_000109a0(hex2);

    const uint32_t r = (static_cast<uint32_t>(s2) * static_cast<uint32_t>(s2)) & 0x1ffu;
    *out = g_license_passphrase_blob[r % 5] + r;
    return static_cast<size_t>(((static_cast<uint32_t>(s3) * static_cast<uint32_t>(s3)) & 0x1ffu) + 0x200u - r);
}

// ---------------------------------------------------------------------------------------------------------
// License file and JNI natives (ELF 0x920, 0x9d0, 0xc60, 0xd20, 0xe2c).
// ---------------------------------------------------------------------------------------------------------

// 0xd20 CheckLicenseFile. Verified line by line against the ARM listing (recovered/native/assembly/
// libnativeinterface.so/global-functions-3d6ca95892b3-001.asm, FUNCTION 0x00000d20) and the original ELF.
// The fopen mode is the pc-relative load at 0xd36, which reaches 0x1270; the bytes there in the original ELF
// are 72 00 00 00, i.e. "r" (text mode) and NOT "rb". The rest of the call chain, in listing order: fread
// (0xd68 -> PLT 0x878) of 20 bytes, fclose (0x89c), the != 20 bail-out that sets the result to 0 (0xdfa),
// FUN_00010b48(g_license_str2 at .bss 0x388c, g_license_str3 at .bss 0x3890, &derived) (0xd80 -> 0xb48),
// strlen x2 (0x8cc) summed into r6 as len2 + n + len3, malloc(total + 1) (0xda0 -> 0x83c), strncpy(dest,
// derived, n) (0x860), dest[n] = 0 (strb at 0xdb2), strcat str2 then str3 (0x854), FUN_00010924(dest, digest,
// total) (0xdd6 -> 0x924), memcmp(stored, digest, 20) (0x86c), memset (0x890) then free (0x8d8), and r0 = r4.
// The rsbs/adcs pair at 0xde6 computes r4 = (memcmp == 0) as a byte, which is what the body returns.
// The two former blockers are resolved by reading the original ELF: the byte-order flag byte at 0x1260 is 0x00
// (so entry() stores the digest big-endian) and the five passphrase texts at 0x1274 + 1028 * i match this
// file's literals byte for byte (verified with Python/hashlib against the .rodata bytes; the test's five SHA-1
// values are those bytes). Deviation: the "r" open is text mode on Windows and mangles CR, LF and Ctrl-Z
// bytes (on Android it is not); the test derives a pair whose digest has none of them, so the positive read
// still runs there. This host has no JVM, so the three globals can only be checked against the listing.
bool CheckLicenseFile() {
    uint8_t stored[20] = {};
    bool matched = false;
    FILE* file = fopen(g_license_file_path, "r");
    if (file == nullptr) {
        return false;
    }
    const size_t got = fread(stored, 1, 20, file);
    fclose(file);
    if (got != 20) {
        return false;
    }

    const char* derived = nullptr;
    const size_t n = FUN_00010b48(g_license_str2, g_license_str3, &derived);
    const size_t len2 = strlen(g_license_str2);
    const size_t len3 = strlen(g_license_str3);
    const uint32_t total = static_cast<uint32_t>(len2 + n + len3);
    const size_t alloc_size = static_cast<size_t>(total) + 1;
    char* dest = static_cast<char*>(malloc(alloc_size));
    strncpy(dest, derived, n);
    dest[n] = '\0';
    strcat(dest, g_license_str2);
    strcat(dest, g_license_str3);

    uint8_t digest[20] = {};
    FUN_00010924(dest, digest, total);
    matched = memcmp(stored, digest, 20) == 0;
    memset(dest, 0, alloc_size);
    free(dest);
    return matched;
}

// 0x920 Java_com_samsung_zirconia_NativeInterface_checkLicenseFile2. The listing returns 1 and reads no
// arguments.
extern "C" JNIEXPORT jboolean JNICALL Java_com_samsung_zirconia_NativeInterface_checkLicenseFile2(
    JNIEnv* env, jclass cls, jstring str, jstring str2) {
    (void)env;
    (void)cls;
    (void)str;
    (void)str2;
    return JNI_TRUE;
}

// 0x9d0 Java_com_samsung_zirconia_NativeInterface_storeLicenseKey. Calls, in order: GetStringUTFChars(path),
// GetArrayLength(key) with the result unused, GetByteArrayElements(key), GetStringUTFChars(text), wcslen, then
// FUN_00010924 over the text. Writes the 20 key bytes and the 20-byte digest to the file named by path.
// Returns JNI_TRUE only when the file opened. The listing has that order (vtable slots 0x2a4, 0x2ac, 0x2e0,
// 0x2a4, 0x300 with mode 2 = JNI_ABORT for the array), releases each pointer only when it is non-null and
// keeps the fopen result in r0. Deviations: wcslen counts 16-bit units on Windows and 32-bit on Android (the
// binary is Android code) and the JNI path is not runnable here (no JVM).
extern "C" JNIEXPORT jboolean JNICALL Java_com_samsung_zirconia_NativeInterface_storeLicenseKey(
    JNIEnv* env, jclass cls, jstring path, jbyteArray key, jstring text) {
    (void)cls;
    const char* filename = env->GetStringUTFChars(path, nullptr);
    (void)env->GetArrayLength(key);
    jbyte* elements = env->GetByteArrayElements(key, nullptr);
    const char* wide = env->GetStringUTFChars(text, nullptr);

    uint8_t digest[20] = {};
    const size_t wide_length = wcslen(reinterpret_cast<const wchar_t*>(wide));
    FUN_00010924(wide, digest, static_cast<uint32_t>(wide_length));

    jboolean status = JNI_FALSE;
    FILE* file = fopen(filename, "w");
    if (file != nullptr) {
        fwrite(elements, 1, 20, file);
        fwrite(digest, 1, 20, file);
        fclose(file);
        status = JNI_TRUE;
    }
    if (filename != nullptr) {
        env->ReleaseStringUTFChars(path, filename);
    }
    if (elements != nullptr) {
        env->ReleaseByteArrayElements(key, elements, JNI_ABORT);
    }
    if (wide != nullptr) {
        env->ReleaseStringUTFChars(text, wide);
    }
    return status;
}

// 0xc60 Java_com_samsung_zirconia_NativeInterface_doPassphraseTest. Derives the passphrase from both strings and
// returns it as a new Java string. The listing is GetStringUTFChars x2 (slot 0x2a4), FUN_00010b48, malloc(n+1),
// memset, strncpy, NewStringUTF (slot 0x29c), memset + free of the buffer, then ReleaseStringUTFChars on the
// two saved pointers (slot 0x2a8) and the NewStringUTF result in r0. Deviation: the JNI path is not runnable
// here (no JVM); the derivation it calls is tested directly.
extern "C" JNIEXPORT jstring JNICALL Java_com_samsung_zirconia_NativeInterface_doPassphraseTest(
    JNIEnv* env, jclass cls, jstring str, jstring str2) {
    (void)cls;
    const char* first = env->GetStringUTFChars(str, nullptr);
    const char* second = env->GetStringUTFChars(str2, nullptr);

    const char* derived = nullptr;
    const size_t n = FUN_00010b48(first, second, &derived);
    const size_t size = n + 1;
    char* dest = static_cast<char*>(malloc(size));
    memset(dest, 0, size);
    strncpy(dest, derived, n);

    jstring result = env->NewStringUTF(dest);
    if (dest != nullptr) {
        memset(dest, 0, size);
        free(dest);
    }
    if (first != nullptr) {
        env->ReleaseStringUTFChars(str, first);
    }
    if (second != nullptr) {
        env->ReleaseStringUTFChars(str2, second);
    }
    return result;
}

// 0xe2c Java_com_samsung_zirconia_NativeInterface_checkLicenseFile. Verified call for call against the ARM
// listing (FUNCTION 0x00000e2c): GetStringUTFChars (vtable slot 0x2a4, isCopy = 0) on path (0xe4a), str2
// (0xe5c) and str3 (0xe6a), each result stored into the file-level .bss globals 0x3888, 0x388c and 0x3890
// (the base in r5 is the pc-relative 0x3888); then CheckLicenseFile (0xe6e -> 0xd20), whose byte result is
// kept as r6 = r0 & 0xff (lsls/lsrs #0x18 at 0xe74/0xe76); then each global is tested for non-null and
// released through vtable slot 0x2a8 with the global itself as the third argument -- the listing loads it into
// r2 for the test at 0xe72 and r2 is still live at the call, so the saved pointer is the argument -- and then
// cleared (str r3 = 0 at 0xe8c, 0xea8, 0xec4). r0 = r6 is the return. Deviation: the JNI path is not runnable
// here (no JVM); its callee CheckLicenseFile is tested directly.
extern "C" JNIEXPORT jboolean JNICALL Java_com_samsung_zirconia_NativeInterface_checkLicenseFile(
    JNIEnv* env, jclass cls, jstring path, jstring str2, jstring str3) {
    (void)cls;
    g_license_file_path = env->GetStringUTFChars(path, nullptr);
    g_license_str2 = env->GetStringUTFChars(str2, nullptr);
    g_license_str3 = env->GetStringUTFChars(str3, nullptr);

    const jboolean result = CheckLicenseFile() ? JNI_TRUE : JNI_FALSE;

    if (g_license_file_path != nullptr) {
        env->ReleaseStringUTFChars(path, g_license_file_path);
        g_license_file_path = nullptr;
    }
    if (g_license_str2 != nullptr) {
        env->ReleaseStringUTFChars(str2, g_license_str2);
        g_license_str2 = nullptr;
    }
    if (g_license_str3 != nullptr) {
        env->ReleaseStringUTFChars(str3, g_license_str3);
        g_license_str3 = nullptr;
    }
    return result;
}
