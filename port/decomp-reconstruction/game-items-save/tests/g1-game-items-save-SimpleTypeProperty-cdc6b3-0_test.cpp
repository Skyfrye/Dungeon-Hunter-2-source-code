// Test for batch g1-game-items-save-SimpleTypeProperty-cdc6b3-0 (part 1). Returns non-zero on failure.
//
// Covers the bool and std::string instances, which have every slot in this batch. The vector3d and dimension2d instances
// are not built here: their ToString and Clone slots, and their constructors, are in other batches.
//
// Link shims for code that is in other batches (this test does not test their behaviour):
//   Property::Property (0x399a88, Property batch): m_offset = end - begin, m_name = name.
//   SimpleTypeProperty<bool> constructor (parts 2 and 3): Property(name, object, field), m_defaultValue = defaultValue.
//   CustomAlloc (core-platform memory): malloc.
// The text conversions (StrToObj and ObjToStr for bool) are core-platform's real code, linked from obj_str.cpp, and the
// debug output it uses comes from debug_out.cpp.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <new>
#include <string>

#include "dh2/SimpleTypeProperty.hpp"

void* CustomAlloc(unsigned size) {
    return std::malloc(size);
}

Property::Property(const char* name, void* begin, void* end)
    : m_offset(static_cast<std::int32_t>(static_cast<char*>(end) - static_cast<char*>(begin))), m_name(name) {}

template <>
SimpleTypeProperty<bool>::SimpleTypeProperty(void* object, const char* name, bool* field, bool defaultValue)
    : Property(name, object, field), m_defaultValue(defaultValue) {}

namespace {

int g_failures = 0;

#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            std::fprintf(stderr, "FAIL line %d: %s\n", __LINE__, #cond); \
            ++g_failures;                                              \
        }                                                              \
    } while (0)

// The owning object. The members sit at their real host offsets, so m_offset is taken from the pointers.
struct Holder {
    bool flag = false;
    std::string text = "hello";
};

std::int32_t OffsetOf(const void* object, const void* member) {
    return static_cast<std::int32_t>(static_cast<const char*>(member) - static_cast<const char*>(object));
}

// Frees a Clone result. Property has no virtual destructor, so the exact type is destroyed and then freed.
template <typename T>
void Destroy(T* object) {
    object->~T();
    ::operator delete(object);
}

void TestBool() {
    Holder h;
    SimpleTypeProperty<bool> flag(&h, "flag", &h.flag, true);
    CHECK(flag.m_offset == OffsetOf(&h, &h.flag));
    CHECK(flag.m_name == "flag");
    CHECK(flag.m_defaultValue == true);

    CHECK(!flag.IsDefaultValue(&h));  // value false, default true
    flag.SetToDefaultValue(&h);
    CHECK(h.flag == true);
    CHECK(flag.IsDefaultValue(&h));

    CHECK(flag.ToString(&h) == "1");
    CHECK(flag.FromString(&h, "0") == 0);
    CHECK(h.flag == false);
    CHECK(flag.ToString(&h) == "0");
    CHECK(flag.FromString(&h, "7") == 1);  // atoi("7") != 0
    CHECK(h.flag == true);

    CHECK(flag.SetDefaultValueFromString("0") == 0);
    CHECK(flag.m_defaultValue == false);
    CHECK(!flag.IsDefaultValue(&h));  // value true, default false
    flag.SetToDefaultValue(&h);
    CHECK(h.flag == false);
    CHECK(flag.IsDefaultValue(&h));

    SimpleTypeProperty<bool>* copy = flag.Clone();
    CHECK(copy != &flag);
    CHECK(copy->m_offset == flag.m_offset);
    CHECK(copy->m_name == "flag");
    CHECK(copy->m_defaultValue == false);
    CHECK(copy->IsDefaultValue(&h));
    Destroy(copy);
}

void TestString() {
    Holder h;
    SimpleTypeProperty<std::string> text(&h, "text", &h.text, "dflt");
    CHECK(text.m_offset == OffsetOf(&h, &h.text));
    CHECK(text.m_name == "text");
    CHECK(text.m_defaultValue == "dflt");

    CHECK(text.ToString(&h) == "hello");
    CHECK(!text.IsDefaultValue(&h));
    text.SetToDefaultValue(&h);
    CHECK(h.text == "dflt");
    CHECK(text.IsDefaultValue(&h));

    text.FromString(&h, "abc");  // the int result is 0 by design (PARTIAL), so it is not checked
    CHECK(h.text == "abc");
    CHECK(text.ToString(&h) == "abc");
    text.FromString(&h, "");
    CHECK(h.text.empty());

    text.SetDefaultValueFromString("zz");
    CHECK(text.m_defaultValue == "zz");
    CHECK(!text.IsDefaultValue(&h));  // value "" , default "zz"

    // operator= copies the offset, the name and the default value.
    SimpleTypeProperty<std::string> other(&h, "other", &h.text, "q");
    other = text;
    CHECK(other.m_offset == text.m_offset);
    CHECK(other.m_name == "text");
    CHECK(other.m_defaultValue == "zz");
    other = other;  // self-assignment leaves the values unchanged
    CHECK(other.m_name == "text" && other.m_defaultValue == "zz");

    // Clone copies the offset, the name and the default value into a new object.
    SimpleTypeProperty<std::string>* copy = text.Clone();
    CHECK(copy != &text);
    CHECK(copy->m_offset == text.m_offset);
    CHECK(copy->m_name == "text");
    CHECK(copy->m_defaultValue == "zz");
    CHECK(copy->ToString(&h) == "");
    Destroy(copy);
}

}  // namespace

int main() {
    TestBool();
    TestString();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("SimpleTypeProperty cdc6b3-0: all checks passed\n");
    return 0;
}
