// SSEncDec: the game's 6-bit text encoding for blobs (0x82ac58 to 0x82b5e4), and its second copy with the
// LC suffix (0x89c910 to 0x89d180). Both copies use the same key table, which the Java Encoder
// (port/android-java/.../GLUtils/Encoder.java) also has:
//   key 0..25 -> 'a'..'z', 26..51 -> 'A'..'Z', 52..61 -> '0'..'9', 62 -> '_', 63 -> '-'
// The key of a character is the inverse: 'a'..'z' -> 0..25, 'A'..'Z' -> 26..51, '0'..'9' -> 52..61.
//
// Ownership: the functions that return a buffer allocate it with new[]. The caller frees it with delete[].
#pragma once

char SSEncDec_GetCharFromKeyByIndex(int index);
// The key of a character is signed char (the original sign-extends it). A character of 0x80 or more is negative.
signed char SSEncDec_GetKeyFromChar(char c);
char SSEncDec_GetCharFromKeyByIndexLC(int index);
signed char SSEncDec_GetKeyFromCharLC(char c);

// Encodes length bytes. The buffer is zero-filled, and holds the bytes the original allocates (v4 + 3, or 2 when
// length is 0).
unsigned char* SSEncDec_ByteArray2Blob(const unsigned char* bytes, int length);

// Decodes a blob into *out (new[], size (6 * strlen) / 8 + 1) and returns the decoded length.
int SSEncDec_Blob2ByteArray(unsigned char** out, const char* blob);

unsigned char* SSEncDec_String2Blob(const char* s);
char* SSEncDec_Blob2String(const char* blob);

unsigned char* SSEncDec_ByteArray2BlobLC(const unsigned char* bytes, int length);
int SSEncDec_Blob2ByteArrayLC(unsigned char** out, const char* blob);
char* SSEncDec_String2BlobLC(const char* s);
char* SSEncDec_Blob2StringLC(const char* blob);
