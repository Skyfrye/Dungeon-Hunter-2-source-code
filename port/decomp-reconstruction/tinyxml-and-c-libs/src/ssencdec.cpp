// SSEncDec blob encoding: the 6-bit text packing used for savegame and network blobs. The non-LC functions are at
// 0x82ac58 to 0x82b5e4 and the LC copies at 0x89c910 to 0x89d180. Each copy has its own key helpers, with the same
// table. The control flow of the encoder is kept as the pseudocode has it, including the goto to the trailing
// character.
//
// Two copies of the same packing code are shared through encodeBytes and decodeBlob. The first takes the key helper
// of its copy as a parameter. The non-LC functions pass the non-LC helpers, and the LC functions pass the LC helpers.
//
// Characters are signed. The original loads each blob byte with LDRSB (0x82b0d8 in the non-LC decoder), so a byte of
// 0x80 or more is negative. The key helpers compare the sign-extended value as an int, and return the key as signed
// char: the key is (signed char)(c + 4), (signed char)(c - 39) or (signed char)(c - 97). The caller sign-extends the
// returned key again (SXTB in the non-LC decoder, LSL #24 then ASR #24 in the LC copy). The decoder shifts the signed
// key: the right shift is arithmetic, as the original's ASR is, so a negative key sets the high bits of the next byte.
//
// Wrappers: LC_API_STRLEN_0 (0x30de54) is return strlen(a1) and LC_API_MEMSET_0 (0x30e460) is return memset(...).
// XP_API_STRLEN and XP_API_MEMSET are the same libc calls (net-session-online/src/xp_api.cpp). Here they are
// std::strlen and std::memset.
#include "tinyxml-and-c-libs/ssencdec.hpp"

#include <cstring>

namespace {

char keyToChar(int index) {
    if (index <= 25) return static_cast<char>(index + 97);
    if (index <= 51) return static_cast<char>(index + 39);
    if (index <= 61) return static_cast<char>(index - 4);
    return index == 62 ? '_' : '-';
}

// The key of one blob character, as signed char. The character is sign-extended to int before the comparisons, as the
// original's LDRSB and signed CMP do. A character of 0x80 or more is negative, so it takes the c <= 57 branch.
signed char charToKey(char c) {
    const int v = static_cast<signed char>(c);
    if (v == 45) return 63;
    if (v == 95) return 62;
    if (v > 57) {
        if (v > 90) return static_cast<signed char>(v - 97);
        return static_cast<signed char>(v - 39);
    }
    return static_cast<signed char>(v + 4);
}

// The packing loop shared by SSEncDec_ByteArray2Blob (0x82b498) and SSEncDec_ByteArray2BlobLC (0x89d034).
unsigned char* encodeBytes(const unsigned char* bytes, int length, char (*keyToCharFn)(int)) {
    const int v4 = 8 * length / 6;
    const int allocSize = v4 ? v4 + 3 : 2;
    const int v5 = v4 ? v4 + 2 : 1;
    unsigned char* out = new unsigned char[allocSize]();

    int v8 = 1;
    int v9 = 0;
    if (length > 0) {
        int v10 = 0;  // output index
        int v11 = 1;  // trails v10 by one
        int v12 = 8;  // bits left in the current input byte
        int v13 = 0;  // input index
        for (;;) {
            const int v15 = bytes[v13] >> (8 - v12);
            if (v12 <= 5) {
                if (length <= ++v13) {
                    out[v10] = static_cast<unsigned char>(keyToCharFn(v15 & 0x3F));
                    return out;
                }
                out[v10] = static_cast<unsigned char>(keyToCharFn((v15 | (bytes[v13] << v12)) & 0x3F));
                v12 += 2;
            } else {
                v12 -= 6;
                if (v12 == 0) {
                    ++v13;
                    v12 = 8;
                }
                out[v10] = static_cast<unsigned char>(keyToCharFn(v15 & 0x3F));
                v9 = v11;
                if (v13 >= length) {
                    v8 = (v12 == 8);
                    goto trailing;
                }
            }
            ++v10;
            ++v11;
        }
    }
    v8 = 1;
    v9 = 0;

trailing:
    if (v5 != 1 && v8) out[v9] = static_cast<unsigned char>(keyToCharFn(0));
    return out;
}

// The decoding loop shared by SSEncDec_Blob2ByteArray (0x82b074) and SSEncDec_Blob2ByteArrayLC (0x89cd60).
// The key is signed char, as in the original. The left shift is done on the unsigned bit pattern, which gives the same
// low byte as the original's LSL and avoids shifting a negative value. The right shift stays signed (arithmetic).
int decodeBlob(unsigned char** out, const char* blob, signed char (*charToKeyFn)(char)) {
    const std::size_t blobLength = std::strlen(blob);
    const int v4 = static_cast<int>((6 * blobLength) >> 3);
    unsigned char* v7 = new unsigned char[v4 + 1]();
    int v8 = 0;
    int i = 8;
    for (int v9 = 0; v9 < static_cast<int>(blobLength); ++v9) {
        const signed char key = charToKeyFn(blob[v9]);
        const int keyValue = static_cast<int>(key);
        v7[v8] = static_cast<unsigned char>(v7[v8] | (static_cast<unsigned int>(keyValue) << (8 - i)));
        if (i <= 6) {
            if (v8 < v4 - 1) {
                const int v12 = v7[++v8] | (keyValue >> i);
                i += 2;
                v7[v8] = static_cast<unsigned char>(v12);
            }
        } else {
            i -= 6;
        }
    }
    *out = v7;
    return v4;
}

}  // namespace

// 0x82ac58 _Z30SSEncDec_GetCharFromKeyByIndexi
char SSEncDec_GetCharFromKeyByIndex(int index) {
    return keyToChar(index);
}

// 0x82ac9c _Z23SSEncDec_GetKeyFromCharc
signed char SSEncDec_GetKeyFromChar(char c) {
    return charToKey(c);
}

// 0x89c910 _Z32SSEncDec_GetCharFromKeyByIndexLCi
char SSEncDec_GetCharFromKeyByIndexLC(int index) {
    return keyToChar(index);
}

// 0x89c958 _Z25SSEncDec_GetKeyFromCharLCc
signed char SSEncDec_GetKeyFromCharLC(char c) {
    return charToKey(c);
}

// 0x82b498 _Z23SSEncDec_ByteArray2BlobPhi
unsigned char* SSEncDec_ByteArray2Blob(const unsigned char* bytes, int length) {
    return encodeBytes(bytes, length, &SSEncDec_GetCharFromKeyByIndex);
}

// 0x82b074 _Z23SSEncDec_Blob2ByteArrayPPhPc
// Returns the decoded length, (6 * strlen(blob)) / 8. *out is a new[] buffer of that length plus one.
int SSEncDec_Blob2ByteArray(unsigned char** out, const char* blob) {
    return decodeBlob(out, blob, &SSEncDec_GetKeyFromChar);
}

// 0x82b5c8 _Z20SSEncDec_String2BlobPc
unsigned char* SSEncDec_String2Blob(const char* s) {
    return SSEncDec_ByteArray2Blob(reinterpret_cast<const unsigned char*>(s), static_cast<int>(std::strlen(s)));
}

// 0x82b5e4 _Z20SSEncDec_Blob2StringPc
// Partial: the original first allocates strlen(blob) bytes with new[] and zeroes them, then replaces the pointer with
// the buffer from Blob2ByteArray. The first buffer is leaked there. That allocation is not reproduced. It has no
// other effect, and the returned buffer is the same.
char* SSEncDec_Blob2String(const char* blob) {
    unsigned char* out = nullptr;
    SSEncDec_Blob2ByteArray(&out, blob);
    return reinterpret_cast<char*>(out);
}

// 0x89d034 _Z25SSEncDec_ByteArray2BlobLCPhi
unsigned char* SSEncDec_ByteArray2BlobLC(const unsigned char* bytes, int length) {
    return encodeBytes(bytes, length, &SSEncDec_GetCharFromKeyByIndexLC);
}

// 0x89cd60 _Z25SSEncDec_Blob2ByteArrayLCPPhPc
int SSEncDec_Blob2ByteArrayLC(unsigned char** out, const char* blob) {
    return decodeBlob(out, blob, &SSEncDec_GetKeyFromCharLC);
}

// 0x89d164 _Z22SSEncDec_String2BlobLCPc
char* SSEncDec_String2BlobLC(const char* s) {
    return reinterpret_cast<char*>(
        SSEncDec_ByteArray2BlobLC(reinterpret_cast<const unsigned char*>(s), static_cast<int>(std::strlen(s))));
}

// 0x89d180 _Z22SSEncDec_Blob2StringLCPc
// Partial: the same leaked first allocation as SSEncDec_Blob2String (0x82b5e4). It is not reproduced.
char* SSEncDec_Blob2StringLC(const char* blob) {
    unsigned char* out = nullptr;
    SSEncDec_Blob2ByteArrayLC(&out, blob);
    return reinterpret_cast<char*>(out);
}
