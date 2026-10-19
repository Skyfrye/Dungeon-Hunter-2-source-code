#include "glitch-core-io/io/scalar_attributes.hpp"

#include <cstdio>
#include <cstring>
#include <cwchar>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::io;

int main() {
    CBoolAttribute b;
    CHECK(!b.getBool() && b.getInt() == 0 && b.getFloat() == 0.f);
    b.setInt(5);
    CHECK(b.getBool() && b.getInt() == 1 && b.getFloat() == 1.f);
    b.setFloat(0.f);
    CHECK(!b.getBool());
    b.setFloat(-0.25f);
    CHECK(b.getBool());
    CHECK(b.getType() == 3);

    CIntAttribute i;
    i.setFloat(7.9f);
    CHECK(i.getInt() == 7 && i.getFloat() == 7.f && i.getBool());
    i.setInt(0);
    CHECK(!i.getBool() && i.getType() == 0);

    CFloatAttribute f;
    f.setInt(3);
    CHECK(f.getFloat() == 3.f);
    CHECK(f.getInt() == 3);
    f.setFloat(-2.9f);
    CHECK(f.getInt() == -2 && f.getBool());
    CHECK(f.getType() == 1);
    CHECK(std::wcscmp(f.getTypeString(), L"float") == 0);

    static const char* const kChoices[] = {"zero", "One", "two", nullptr};
    CEnumAttribute e("mode", "two", kChoices, false);
    CHECK(e.getInt() == 2 && e.getFloat() == 2.f && e.getBool());
    CHECK(std::strcmp(e.getEnum(), "two") == 0 && e.literals.size() == 3u);
    e.setFloat(1.5f);
    CHECK(e.getInt() == 1 && e.getType() == 4 && std::strcmp(e.getEnum(), "One") == 0);
    e.setString("ONE");  // the index search ignores case
    CHECK(e.getInt() == 1);
    e.setInt(9);  // out of range: the value becomes empty
    CHECK(e.getString().empty());
    e.setInt(-1);
    CHECK(e.getString().empty());
    e.setEnum("zero", kChoices);  // appends the table again (it is never cleared)
    CHECK(e.literals.size() == 6u && e.getInt() == 0 && !e.getBool());
    CEnumAttribute empty;
    CHECK(empty.getInt() == -1);
    e.setString("a\xe9");  // bytes are sign-extended when widened
    CHECK(e.getStringW().size() == 2u && e.getStringW()[1] == static_cast<wchar_t>(-23));

    int marker = 0;
    CUserPointerAttribute p;
    CHECK(!p.getBool() && p.getType() == 0x1c);
    p.setUserPointer(&marker);
    CHECK(p.getBool() && p.getUserPointer() == &marker);
    CHECK(std::wcscmp(p.getTypeString(), L"userPointer") == 0);
    char text[64];
    p.getString(text);
    CUserPointerAttribute q;
    q.setString(text);
    CHECK(q.getUserPointer() == &marker);

    std::printf("%s\n", failures ? "scalar_attributes: FAILED" : "scalar_attributes: ok");
    return failures != 0;
}
