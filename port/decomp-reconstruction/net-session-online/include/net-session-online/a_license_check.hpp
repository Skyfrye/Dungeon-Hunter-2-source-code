// ALicenseCheck: the Android license check. Its state is all static: the JNI class and
// method ids, the device id (IMEI), the key (KEY), the encrypted config values (EKEY, EPID,
// SERVER), the response code (UCODE), the RMS directory (RMS_PATH) and the HTTP client.
//
// The JNI calls go through the real JNIEnv (shared/include/jni.h) of the calling thread (NVThreadGetCurrentJNIEnv);
// without a JVM (the host builds) the functions that need one leave their output empty. ConfigFile is core-platform's, the
// SSEncDec blob codec is tinyxml-and-c-libs', and LC_API_PARSE_DATA is core-platform's.
//
// Static data layout: the binary keeps these in .bss (ALicenseCheck::KEY, IMEI, ...).
// Sizes follow the symbol sizes: EKEY, EPID, KEY and IMEI are 255 bytes, SERVER 512.
#pragma once

#include <cstdint>

#include <jni.h>

class LCXPlayerHttp;

class ALicenseCheck {
public:
    // 0x89a6e4 _ZN13ALicenseCheck14ValidateNativeEv: empty in the binary.
    static void ValidateNative();
    // 0x89a6e8 _ZN13ALicenseCheck6LOGGEREPKcz: formats and prints. The Android log call
    // (tag "LicenseCheck") is dropped on Windows.
    static void LOGGER(const char* fmt, ...);
    // 0x89a798 _ZN13ALicenseCheck11currentTimeEv: milliseconds since the epoch, as an int.
    static int currentTime();
    // 0x89a7d8 _ZN13ALicenseCheck16createUniqueCodeEv: a value in [1111, 9999].
    static int createUniqueCode();
    // 0x89a820 _ZN13ALicenseCheck3XOREPKcS1_Pc: XORs value with the repeating key into output.
    static void XOR(const char* value, const char* key, char* output);
    // 0x89a8e0 _ZN13ALicenseCheck15CallJNIFuncCharEP7_jclassP10_jmethodIDPciS4_
    static void CallJNIFuncChar(jclass javaClass, jmethodID javaMethod, char* out, int max,
                                char* param);
    // 0x89a9a4 _ZN13ALicenseCheck15CallJNIFuncCharEP7_jclassP10_jmethodIDPci
    static void CallJNIFuncChar(jclass javaClass, jmethodID javaMethod, char* out, int max);
    // 0x89aed4 _ZN13ALicenseCheck15CallJNIFuncVoidEP7_jclassP10_jmethodID
    static void CallJNIFuncVoid(jclass javaClass, jmethodID javaMethod);
    // 0x89aa38 _ZN13ALicenseCheck10LoadConfigEv
    static void LoadConfig();
    // 0x89ab08 _ZN13ALicenseCheck4InitEP7_JNIEnvP7_jclass
    static void Init(JNIEnv* env, jclass game);
    // 0x89acfc _ZN13ALicenseCheck7getIMEIEPci
    static void getIMEI(char* out, int max);
    // 0x89aef4 _ZN13ALicenseCheck7DestroyEv
    static void Destroy();
    // 0x89af5c _ZN13ALicenseCheck13getPhpAddressEPc: a new[] copy of the URL from the PHP
    // script part on.
    static char* getPhpAddress(char* url);
    // 0x89b044 _ZN13ALicenseCheck7getHostEPc: a new[] copy of the host part of the URL.
    static char* getHost(char* url);
    // 0x89b16c _ZN13ALicenseCheck10initXPlayerEv
    static void initXPlayer();
    // 0x89b200 _ZN13ALicenseCheck11SetRMS_PATHEPKc
    static void SetRMS_PATH(const char* path);
    // 0x89b25c _ZN13ALicenseCheck7LoadRMSEv
    static bool LoadRMS();
    // 0x89b65c _ZN13ALicenseCheck7SaveRMSEb
    static void SaveRMS(bool valid);
    // 0x89bacc _ZN13ALicenseCheck16validateResponseEPc
    static void validateResponse(char* response);
    // 0x89bc38 _ZN13ALicenseCheck16sendRequestByGetEv
    static void sendRequestByGet();
    // 0x89bdc0 _ZN13ALicenseCheck14ValidateServerEb
    static void ValidateServer(bool sendTracking);

    static jclass cGame;
    static jclass cContext;
    static jmethodID mLicense;
    static jmethodID mFileConfig;
    static jmethodID mKEY;
    static jmethodID mInstance;

    static char EKEY[255];
    static char EPID[255];
    static char SERVER[512];
    static char KEY[255];
    static char IMEI[255];
    static int UCODE;
    static char* RMS_PATH;
    static LCXPlayerHttp* m_http;
};
