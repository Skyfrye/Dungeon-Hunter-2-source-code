// License helpers of libnativeinterface.so (batch p1-core-platform-lib_libnativeinterface-fd1381-0).
//
// Free functions and file-level data shared by the reconstruction and its test. Addresses are ELF virtual
// addresses of libnativeinterface.so. Definitions: core-platform/src/p1-core-platform-lib_libnativeinterface-fd1381-0.cpp.
#pragma once

#include <jni.h>

#include <cstddef>
#include <cstdint>

#include "core-platform/tb/sha1_context.hpp"

// File-level strings that the checkLicenseFile JNI wrapper sets before CheckLicenseFile runs (.bss 0x3888,
// 0x388c, 0x3890). g_license_file_path is the license file name (Ghidra label __data_start); the other two are
// the second and third Java string arguments.
extern const char* g_license_file_path;
extern const char* g_license_str2;
extern const char* g_license_str3;

// Five passphrase texts, indexed by the remainder of the derived value modulo 5. The original table is the
// six-pointer .data.rel.ro block at ELF 0x3760: the slot at 0x3760 holds the pointer to the byte-order flag
// byte at 0x1260, and the five slots from 0x3764 point at the 1024-byte .rodata texts at 0x1274 + 1028 * i.
// The .cpp defines this table by copying those five texts byte for byte; nothing defines it outside the tree.
extern const char* const g_license_passphrase_blob[5];

extern "C" {

// 0x924 FUN_00010924: SHA-1 of length bytes at data. The five digest words are written to out[0..19] through the
// byte-order helper (see the note on the flag in the source file).
void FUN_00010924(const void* data, uint8_t* out, uint32_t length);

// 0x9a0 FUN_000109a0: sum of the hexadecimal digit values of text, scanned from the last character backwards.
int FUN_000109a0(const char* text);

// 0xaf8 FUN_00010af8: writes the 20 digest bytes as 40 lowercase hex digits and a NUL to out.
void FUN_00010af8(const uint8_t* digest, char* out);

// 0xb48 FUN_00010b48: derives the passphrase from first and second. Stores the passphrase pointer in *out and
// returns its length.
size_t FUN_00010b48(const char* first, const char* second, const char** out);

// 0xd20 CheckLicenseFile: true when the license file holds the 20-byte digest of the derived passphrase.
bool CheckLicenseFile();

// JNI exports of com.samsung.zirconia.NativeInterface.
JNIEXPORT jboolean JNICALL Java_com_samsung_zirconia_NativeInterface_checkLicenseFile2(JNIEnv* env, jclass cls,
                                                                                        jstring str, jstring str2);
JNIEXPORT jboolean JNICALL Java_com_samsung_zirconia_NativeInterface_checkLicenseFile(JNIEnv* env, jclass cls,
                                                                                      jstring path, jstring str2,
                                                                                      jstring str3);
JNIEXPORT jstring JNICALL Java_com_samsung_zirconia_NativeInterface_doPassphraseTest(JNIEnv* env, jclass cls,
                                                                                     jstring str, jstring str2);
JNIEXPORT jboolean JNICALL Java_com_samsung_zirconia_NativeInterface_storeLicenseKey(JNIEnv* env, jclass cls,
                                                                                      jstring path, jbyteArray key,
                                                                                      jstring text);

}  // extern "C"
