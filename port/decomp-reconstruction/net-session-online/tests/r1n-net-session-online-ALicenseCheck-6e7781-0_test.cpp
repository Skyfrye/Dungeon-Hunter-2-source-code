// Tests for the ALicenseCheck batch r1n-net-session-online-ALicenseCheck-6e7781-0:
// getHost, getPhpAddress, LoadRMS and SaveRMS (the parts that run without a JVM).
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "net-session-online/a_license_check.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

const char* kRmsFile = "./iglu.bin";

std::vector<unsigned char> ReadAll(const char* path) {
    std::vector<unsigned char> out;
    std::FILE* f = std::fopen(path, "rb");
    if (f == nullptr) {
        return out;
    }
    unsigned char chunk[4096];
    std::size_t n = 0;
    while ((n = std::fread(chunk, 1, sizeof(chunk), f)) > 0) {
        out.insert(out.end(), chunk, chunk + n);
    }
    std::fclose(f);
    return out;
}

void WriteAll(const char* path, const std::vector<unsigned char>& data) {
    std::FILE* f = std::fopen(path, "wb");
    if (f == nullptr) {
        return;
    }
    std::fwrite(data.data(), 1, data.size(), f);
    std::fclose(f);
}

// The checksum of SaveRMS and LoadRMS: a signed char sum over [205312, 410112).
bool ChecksumMatches(const std::vector<unsigned char>& file) {
    char sum = 0;
    for (std::size_t i = 205312; i != 410112; ++i) {
        sum = static_cast<char>(sum + static_cast<char>(file[i]));
    }
    return sum == static_cast<char>(file[410240]);
}

}  // namespace

int main() {
    // getHost takes the field after two '/' separators, up to the next '/'.
    {
        char url[] = "http://lobby.example.com/php/game.php";
        char* host = ALicenseCheck::getHost(url);
        CHECK(std::strcmp(host, "lobby.example.com") == 0);
        delete[] host;

        char bare[] = "http://host";
        char* bareHost = ALicenseCheck::getHost(bare);
        CHECK(std::strcmp(bareHost, "host") == 0);
        delete[] bareHost;
    }

    // getPhpAddress keeps the text from the '/' before the field after three separators.
    {
        char url[] = "http://lobby.example.com/php/game.php";
        char* php = ALicenseCheck::getPhpAddress(url);
        CHECK(std::strcmp(php, "/php/game.php") == 0);
        delete[] php;

        // No third separator: the port starts at 0 (the original reads before the string).
        char bare[] = "http://host";
        char* barePhp = ALicenseCheck::getPhpAddress(bare);
        CHECK(std::strcmp(barePhp, "http://host") == 0);
        delete[] barePhp;
    }

    // Long fields: the scratch parse is sized to the input, and the copies are clamped to 255.
    {
        std::string longHost = "http://" + std::string(600, 'a') + "/x.php";
        std::vector<char> hostUrl(longHost.begin(), longHost.end());
        hostUrl.push_back('\0');
        char* host = ALicenseCheck::getHost(hostUrl.data());
        CHECK(std::strlen(host) == 255);
        CHECK(host[0] == 'a' && host[254] == 'a');
        delete[] host;

        std::string longPhp = "http://host/" + std::string(600, 'b');
        std::vector<char> phpUrl(longPhp.begin(), longPhp.end());
        phpUrl.push_back('\0');
        char* host2 = ALicenseCheck::getHost(phpUrl.data());
        CHECK(std::strcmp(host2, "host") == 0);
        delete[] host2;
        char* php = ALicenseCheck::getPhpAddress(phpUrl.data());
        CHECK(std::strlen(php) == 255);
        CHECK(php[0] == '/' && php[1] == 'b');
        delete[] php;
    }

    // LoadRMS and SaveRMS. A valid save writes the header bytes the listing sets, a checksum over
    // the middle of the file, and loads back. Changing KEY or IMEI, or one checksummed byte,
    // makes the load fail. A missing file fails.
    ALicenseCheck::SetRMS_PATH(".");
    std::strcpy(ALicenseCheck::KEY, "Q");
    std::strcpy(ALicenseCheck::IMEI, "123456789012345");
    ALicenseCheck::SaveRMS(true);
    std::vector<unsigned char> file = ReadAll(kRmsFile);
    CHECK(file.size() == 0x80000);
    if (file.size() == 0x80000) {
        CHECK(file[1024] == 2);
        CHECK(file[8204] >= 4);    // key block base
        CHECK(file[8272] >= 4);    // key block stride
        CHECK(file[24656] >= 4);   // count block stride
        CHECK(file[57356] >= 4);   // IMEI block base
        CHECK(file[57424] >= 4);   // IMEI block stride
        CHECK(ChecksumMatches(file));

        // One checksummed byte changed: the checksum fails.
        std::vector<unsigned char> tampered = file;
        tampered[250000] = static_cast<unsigned char>(tampered[250000] + 1);
        WriteAll(kRmsFile, tampered);
        CHECK(!ALicenseCheck::LoadRMS());
        WriteAll(kRmsFile, file);
    }

    // A changed IMEI or KEY fails the matching block check.
    std::strcpy(ALicenseCheck::IMEI, "923456789012345");
    CHECK(!ALicenseCheck::LoadRMS());
    std::strcpy(ALicenseCheck::IMEI, "123456789012345");
    std::strcpy(ALicenseCheck::KEY, "R");
    CHECK(!ALicenseCheck::LoadRMS());
    std::strcpy(ALicenseCheck::KEY, "Q");

    // An invalid save zeroes the key stride.
    ALicenseCheck::SaveRMS(false);
    file = ReadAll(kRmsFile);
    CHECK(file.size() == 0x80000);
    if (file.size() == 0x80000) {
        CHECK(file[8272] == 0);
    }

    std::remove(kRmsFile);
    ALicenseCheck::SetRMS_PATH("/nonexistent-license-dir");
    CHECK(!ALicenseCheck::LoadRMS());

    ALicenseCheck::LOGGER("license batch %d\n", 1);

    std::printf("%s\n", failures ? "r1n-net-session-online-ALicenseCheck: FAILED"
                                  : "r1n-net-session-online-ALicenseCheck: ok");
    return failures != 0;
}
