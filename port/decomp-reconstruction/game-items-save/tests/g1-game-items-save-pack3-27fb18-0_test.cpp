// Test for batch g1-game-items-save-pack3-27fb18-0: Property::Property (0x399a88).
//
// Linked with g1-game-items-save-pack3-27fb18-0_property.cpp only. Property has six pure virtuals; the test subclass
// implements them with empty bodies, because the constructor does not call them. The checks are the offset (end - begin
// in bytes, stored in m_offset at +0x04) and the name copy (m_name at +0x08), for a short and a long name and for
// members at several offsets of one object.
// Not checked: the words at +0x18 and +0x1c, which the constructor does not write yet (see the companion file).

#include <cstdio>
#include <string>

#include "dh2/Property.hpp"

namespace {

class TestProperty : public Property {
public:
    TestProperty(const char* name, void* begin, void* end) : Property(name, begin, end) {}

    std::string ToString(void*) override { return std::string(); }
    int FromString(void*, const char*) override { return 0; }
    bool IsDefaultValue(void*) override { return true; }
    void SetToDefaultValue(void*) override {}
    int SetDefaultValueFromString(const char*) override { return 0; }
    Property* Clone() override { return nullptr; }
};

struct Owner {
    int first;     // offset 0
    int second;    // offset 4
    char tail[8];  // offset 8
};

int g_failures = 0;

void Check(bool condition, const char* what) {
    if (!condition) {
        std::fprintf(stderr, "FAIL: %s\n", what);
        ++g_failures;
    }
}

}  // namespace

int main() {
    Owner owner{};

    TestProperty first("first", &owner, &owner.first);
    Check(first.m_offset == 0, "offset of the first member is 0");
    Check(first.m_name == "first", "name is copied");

    TestProperty second("second", &owner, &owner.second);
    Check(second.m_offset == 4, "offset of the second member is 4");
    Check(second.m_name == "second", "second name is copied");

    TestProperty tail("tail", &owner, owner.tail);
    Check(tail.m_offset == 8, "offset of the tail array is 8");

    const char* longName = "a_property_name_longer_than_the_small_string_buffer";
    TestProperty longProperty(longName, &owner, &owner.second);
    Check(longProperty.m_name == longName, "a long name is copied in full");
    Check(longProperty.m_offset == 4, "long-name property keeps its offset");

    // The name is a copy: changing the source does not change the property.
    std::string source = "source";
    TestProperty copied(source.c_str(), &owner, &owner.first);
    source[0] = 'S';
    Check(copied.m_name == "source", "name is a copy, not a view");

    if (g_failures == 0) {
        std::printf("Property::Property test passed\n");
        return 0;
    }
    return 1;
}
