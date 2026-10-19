#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/deps/stream_reader.hpp"
#include "read_bytes_stream.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    static char idle[] = "idle", walk[] = "walk";
    static char* animNames[] = {idle, walk, walk};
    Arrays::AnimDict::m_memberNames = {animNames, 3};
    CHECK(Arrays::GetMemberIDByString<Arrays::AnimDict>("idle") == 0);
    CHECK(Arrays::GetMemberIDByString<Arrays::AnimDict>("walk") == 1);   // first duplicate wins
    CHECK(Arrays::GetMemberIDByString<Arrays::AnimDict>("run") == -1);
    CHECK(Arrays::GetMemberIDByString<Arrays::AnimDict>("") == -1);

    static char soundA[] = "a";
    static char* soundNames[] = {soundA};
    Arrays::Sounds::m_memberNames = {soundNames, 0};                  // empty table
    CHECK(Arrays::GetMemberIDByString<Arrays::Sounds>("a") == -1);

    static char sx[] = "x", sy[] = "y", sz[] = "z";
    static char* sag[] = {sx, sy, sz};
    Structs::SoundAutoGen::m_dataNames = {sag, 3};
    CHECK(Structs::GetMemberIDByString<Structs::SoundAutoGen>("y") == 1);
    CHECK(Structs::GetMemberIDByString<Structs::SoundAutoGen>("z") == -1);  // count is 2

    static char lname[] = "name", lother[] = "other";
    static char* lang[] = {lname, lother};
    Structs::LangSheetList::m_dataNames = {lang, 2};
    CHECK(Structs::GetMemberIDByString<Structs::LangSheetList>("name") == 0);
    CHECK(Structs::GetMemberIDByString<Structs::LangSheetList>("other") == -1);  // count is 1

    // readNames: count 2 (little-endian), then "abc" and "" (length-prefixed).
    struct Bytes : ReadBytesStream {
        const unsigned char* p; std::size_t left;
        bool ReadBytes(void* dst, std::size_t n) override {
            if (n > left) return false;
            std::memcpy(dst, p, n); p += n; left -= n; return true;
        }
    };
    static const unsigned char data[] = {2,0,0,0, 3,0,0,0, 'a','b','c', 0,0,0,0};
    Bytes in; in.p = data; in.left = sizeof data;
    Arrays::Sounds::m_memberNames = {nullptr, 2};
    Arrays::Sounds::readNames(&in);
    CHECK(Arrays::Sounds::m_memberNames.names != nullptr);
    CHECK(std::strcmp(Arrays::Sounds::m_memberNames.names[0], "abc") == 0);
    CHECK(std::strcmp(Arrays::Sounds::m_memberNames.names[1], "") == 0);
    CHECK(Arrays::GetMemberIDByString<Arrays::Sounds>("abc") == 0);
    Arrays::Sounds::finalizeNames();
    CHECK(Arrays::Sounds::m_memberNames.names == nullptr);

    std::printf("%s\n", failures ? "member_ids: FAILED" : "member_ids: ok");
    return failures != 0;
}
