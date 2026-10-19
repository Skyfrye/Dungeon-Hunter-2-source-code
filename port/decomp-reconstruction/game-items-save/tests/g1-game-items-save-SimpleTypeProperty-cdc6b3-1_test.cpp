// Test for batch g1-game-items-save-SimpleTypeProperty-cdc6b3-1.
//
// The batch members run on a SimpleTypeProperty over a plain owner object. The Property constructor and the
// SimpleTypeProperty<T> constructors are in other batches, so this file defines them (test stand-ins). The link-only
// dependencies of the batch are stood in here too: CustomAlloc (core-platform/memory.cpp), the operator new(size_t,
// MemoryHintState) that the Clone bodies call (0x310570, game-app/src/g1-game-app-global-f216b6-0.cpp), and
// Point3D<float>::operator== (its batch). StrToObj and ObjToStr come from core-platform/src/obj_str.cpp, which the
// test build links.
//
// The batch's Clone for dimension2d<float> and vector3d<float> copy-constructs those types, so the link also needs their
// vtable slots, which are in the sibling batches cdc6b3-0 and cdc6b3-2. Only the int and Point3D<float> members are run here.
//
// Build and run (from port/decomp-reconstruction), one command line:
//   bash tools/trackb/check_tu.sh --test game-items-save/tests/g1-game-items-save-SimpleTypeProperty-cdc6b3-1_test.cpp
//     game-items-save/src/g1-game-items-save-SimpleTypeProperty-cdc6b3-1.cpp
//     game-items-save/src/g1-game-items-save-SimpleTypeProperty-cdc6b3-0.cpp
//     game-items-save/src/g1-game-items-save-SimpleTypeProperty-cdc6b3-2.cpp
//     core-platform/src/obj_str.cpp core-platform/src/debug_out.cpp

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <new>
#include <string>

#include "core-platform/deps/glitch_core.hpp"
#include "core-platform/memory.hpp"
#include "dh2/Point3D.hpp"
#include "dh2/Property.hpp"
#include "dh2/SimpleTypeProperty.hpp"
#include "dh2/global/runtime_support.hpp"  // operator new(size_t, MemoryHintState), the overload the Clone bodies call

// ---- Stand-ins for the dependencies outside the batch ----

void* CustomAlloc(unsigned size) {
    return std::malloc(size);
}

// Definition of the declaration in dh2/global/runtime_support.hpp (game-app, 0x310570, which forwards to CustomAlloc).
void* operator new(std::size_t size, MemoryHintState) {
    return std::malloc(size);
}

// Component-wise equality within 0.0001, as the header describes Point3D<float>::operator== (0x312b6c).
template <>
bool Point3D<float>::operator==(const Point3D& other) const {
    return std::fabs(X - other.X) <= 0.0001f && std::fabs(Y - other.Y) <= 0.0001f && std::fabs(Z - other.Z) <= 0.0001f;
}

Property::Property(const char* name, void* begin, void* end)
    : m_offset(static_cast<std::int32_t>(static_cast<char*>(end) - static_cast<char*>(begin))), m_name(name) {}

template <>
SimpleTypeProperty<int>::SimpleTypeProperty(void* object, const char* name, int* field, int defaultValue)
    : Property(name, object, field), m_defaultValue(defaultValue) {}

template <>
SimpleTypeProperty<Point3D<float>>::SimpleTypeProperty(void* object, const char* name, Point3D<float>* field,
                                                       Point3D<float> defaultValue)
    : Property(name, object, field), m_defaultValue(defaultValue) {}

// ---- Test body ----

namespace {

int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// The owner: a plain object holding one member of each type under test.
// float, dimension2d<float> and vector3d<float> are not constructed here. Their vtables would reference slots that are
// in the sibling batches (cdc6b3-0 and cdc6b3-2), which this test does not link, so they are left to those tests.
struct TestOwner {
    int i;
    Point3D<float> p;
};

void TestInt(TestOwner& owner) {
    owner.i = 7;
    SimpleTypeProperty<int> prop(&owner, "i", &owner.i, 7);
    CHECK(prop.m_offset == 0);
    CHECK(prop.m_name == "i");

    // IsDefaultValue and SetToDefaultValue.
    CHECK(prop.IsDefaultValue(&owner));
    owner.i = 3;
    CHECK(!prop.IsDefaultValue(&owner));
    prop.SetToDefaultValue(&owner);
    CHECK(owner.i == 7);

    // FromString zeroes the member, then parses; the parsed value is returned.
    CHECK(prop.FromString(&owner, "42") == 42);
    CHECK(owner.i == 42);
    CHECK(prop.ToString(&owner) == "42");

    // SetDefaultValueFromString parses into the default and returns it.
    CHECK(prop.SetDefaultValueFromString("9") == 9);
    CHECK(prop.m_defaultValue == 9);
    CHECK(!prop.IsDefaultValue(&owner));  // owner.i is still 42
    owner.i = 9;
    CHECK(prop.IsDefaultValue(&owner));

    // Virtual dispatch through the base class.
    Property* base = &prop;
    owner.i = 1;
    CHECK(!base->IsDefaultValue(&owner));
    base->SetToDefaultValue(&owner);
    CHECK(owner.i == 9);

    // Clone copies the offset, the name and the default into a new object.
    SimpleTypeProperty<int>* copy = prop.Clone();
    CHECK(copy != nullptr);
    if (copy != nullptr) {
        CHECK(copy->m_offset == prop.m_offset);
        CHECK(copy->m_name == "i");
        CHECK(copy->m_defaultValue == 9);
        CHECK(copy->IsDefaultValue(&owner));
        copy->~SimpleTypeProperty<int>();
        std::free(copy);
    }
}

void TestPoint3D(TestOwner& owner) {
    Point3D<float> def;
    def.X = 1.0f;
    def.Y = 2.0f;
    def.Z = 3.0f;
    owner.p = def;
    SimpleTypeProperty<Point3D<float>> prop(&owner, "p", &owner.p, def);
    CHECK(prop.IsDefaultValue(&owner));
    owner.p.Y = 5.0f;
    CHECK(!prop.IsDefaultValue(&owner));
    prop.SetToDefaultValue(&owner);
    CHECK(owner.p.X == 1.0f && owner.p.Y == 2.0f && owner.p.Z == 3.0f);
    CHECK(!prop.ToString(&owner).empty());

    // The default is zeroed, then parsed. The return is 0 (the batch marks this partial), so only the value is checked.
    prop.SetDefaultValueFromString("7,8,9");
    CHECK(prop.m_defaultValue.X == 7.0f && prop.m_defaultValue.Y == 8.0f && prop.m_defaultValue.Z == 9.0f);

    // FromString zeroes the member, then parses "4,5,6" into it.
    prop.FromString(&owner, "4,5,6");
    CHECK(owner.p.X == 4.0f && owner.p.Y == 5.0f && owner.p.Z == 6.0f);

    SimpleTypeProperty<Point3D<float>>* copy = prop.Clone();
    CHECK(copy != nullptr);
    if (copy != nullptr) {
        CHECK(copy->m_defaultValue.Z == 9.0f);
        copy->~SimpleTypeProperty<Point3D<float>>();
        std::free(copy);
    }
}

}  // namespace

int main() {
    TestOwner owner{};
    TestInt(owner);
    TestPoint3D(owner);
    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-items-save-SimpleTypeProperty-cdc6b3-1: all checks passed\n");
    return 0;
}
