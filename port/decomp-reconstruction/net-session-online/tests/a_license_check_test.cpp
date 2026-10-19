#include <cstdio>
#include <cstring>

#include "net-session-online/a_license_check.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // XOR is its own inverse. The key has no byte equal to the value bytes it meets, so the
    // encoded text has no NUL.
    char enc[32] = {};
    ALicenseCheck::XOR("HELLO", "Q", enc);
    char dec[32] = {};
    ALicenseCheck::XOR(enc, "Q", dec);
    CHECK(std::strcmp(dec, "HELLO") == 0);

    CHECK(ALicenseCheck::currentTime() > 0);
    const int code = ALicenseCheck::createUniqueCode();
    CHECK(code >= 1111 && code <= 9999);

    char host[] = "http://lobby.example.com/php/game.php";
    char* hostPart = ALicenseCheck::getHost(host);
    CHECK(std::strcmp(hostPart, "lobby.example.com") == 0);
    delete[] hostPart;

    char url[] = "http://lobby.example.com/php/game.php";
    char* php = ALicenseCheck::getPhpAddress(url);
    CHECK(std::strcmp(php, "/php/game.php") == 0);
    delete[] php;

    // CallJNIFuncChar has no JVM here, so the output stays empty.
    char out[8];
    std::memset(out, 'x', sizeof(out));
    ALicenseCheck::CallJNIFuncChar(nullptr, nullptr, out, sizeof(out));
    CHECK(out[0] == '\0');
    char imei[16];
    std::memset(imei, 'x', sizeof(imei));
    ALicenseCheck::getIMEI(imei, sizeof(imei));
    CHECK(imei[0] == '\0');

    ALicenseCheck::ValidateNative();
    ALicenseCheck::LOGGER("license %d\n", 1);
    ALicenseCheck::Init(nullptr, nullptr);
    CHECK(ALicenseCheck::cGame == nullptr);

    // RMS round trip: a valid save must load back, and a changed IMEI must not.
    ALicenseCheck::SetRMS_PATH(".");
    std::strcpy(ALicenseCheck::KEY, "Q");
    std::strcpy(ALicenseCheck::IMEI, "123456789012345");
    ALicenseCheck::SaveRMS(true);
    CHECK(ALicenseCheck::LoadRMS());
    std::strcpy(ALicenseCheck::IMEI, "923456789012345");
    CHECK(!ALicenseCheck::LoadRMS());
    std::remove("./iglu.bin");

    ALicenseCheck::SetRMS_PATH("/nonexistent-license-dir");
    CHECK(!ALicenseCheck::LoadRMS());

    ALicenseCheck::Destroy();
    CHECK(ALicenseCheck::RMS_PATH == nullptr);
    CHECK(ALicenseCheck::m_http == nullptr);

    std::printf("%s\n", failures ? "a_license_check: FAILED" : "a_license_check: ok");
    return failures != 0;
}
