// Test for g1-game-items-save-SimpleTypeProperty-cdc6b3-2.cpp. It links that source with core-platform's obj_str.cpp and
// debug_out.cpp, so the real ObjToStr and StrToObj run. The pieces that belong to other batches are defined here: the
// Property constructor, CustomAlloc and CustomFree (malloc and free), Point3D<float>::operator==, the generic constructors
// of float, Point2D<int> and std::vector<Point3D<float>>, and the virtual slots of float and std::string that this batch
// does not define. The stubs for those slots abort if called. The copy constructor (Clone) and the default constructor of
// std::string pull their vtables into the link, which is why they are needed.

#include <cmath>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <string>
#include <vector>

#include "core-platform/obj_str.hpp"
#include "dh2/Point2D.hpp"
#include "dh2/Point3D.hpp"
#include "dh2/Property.hpp"
#include "dh2/SimpleTypeProperty.hpp"

namespace {
int failures = 0;
#define CHECK(c)                                                              \
    do {                                                                      \
        if (!(c)) {                                                           \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);          \
            ++failures;                                                       \
        }                                                                     \
    } while (0)
}  // namespace

using FloatProperty = SimpleTypeProperty<float>;
using Point2DIntProperty = SimpleTypeProperty<Point2D<int>>;
using PointVectorProperty = SimpleTypeProperty<std::vector<Point3D<float>>>;
using StringProperty = SimpleTypeProperty<std::string>;

// ---- Pieces of other batches -------------------------------------------------------------------------------------

Property::Property(const char* name, void* begin, void* end)
    : m_offset(static_cast<std::int32_t>(static_cast<char*>(end) - static_cast<char*>(begin))), m_name(name) {}

void* CustomAlloc(unsigned size) { return std::malloc(size); }
void CustomFree(void* p) { std::free(p); }

template <>
bool Point3D<float>::operator==(const Point3D<float>& other) const {
    return std::fabs(X - other.X) <= 0.0001f && std::fabs(Y - other.Y) <= 0.0001f && std::fabs(Z - other.Z) <= 0.0001f;
}

template <>
SimpleTypeProperty<float>::SimpleTypeProperty(void* object, const char* name, float* field, float defaultValue)
    : Property(name, object, field), m_defaultValue(defaultValue) {}

template <>
SimpleTypeProperty<Point2D<int>>::SimpleTypeProperty(void* object, const char* name, Point2D<int>* field,
                                                     Point2D<int> defaultValue)
    : Property(name, object, field), m_defaultValue(defaultValue) {}

template <>
SimpleTypeProperty<std::vector<Point3D<float>>>::SimpleTypeProperty(void* object, const char* name,
                                                                    std::vector<Point3D<float>>* field,
                                                                    std::vector<Point3D<float>> defaultValue)
    : Property(name, object, field), m_defaultValue(defaultValue) {}

// Slots of float and std::string that belong to other batches. Not called by the tests.
template <> bool FloatProperty::IsDefaultValue(void*) { std::abort(); }
template <> void FloatProperty::SetToDefaultValue(void*) { std::abort(); }
template <> std::string StringProperty::ToString(void*) { std::abort(); }
template <> int StringProperty::FromString(void*, const char*) { std::abort(); }
template <> bool StringProperty::IsDefaultValue(void*) { std::abort(); }
template <> void StringProperty::SetToDefaultValue(void*) { std::abort(); }
template <> int StringProperty::SetDefaultValueFromString(const char*) { std::abort(); }
template <> StringProperty* StringProperty::Clone() { std::abort(); }

// ---- Tests -------------------------------------------------------------------------------------------------------

struct Host {
    int tag;
    float f;
    Point2D<int> pos;
    std::vector<Point3D<float>> points;
};

int main() {
    // std::string default constructor: empty name and default, and m_offset is 0 in this port.
    {
        StringProperty s;
        CHECK(s.m_name.empty());
        CHECK(s.m_defaultValue.empty());
        CHECK(s.m_offset == 0);
    }

    Host host{};

    // Point2D<int>: IsDefaultValue, SetToDefaultValue, the two parsers, ToString and Clone.
    host.pos = Point2D<int>{0, 0};
    Point2DIntProperty pos(&host, "pos", &host.pos, Point2D<int>{0, 0});
    CHECK(pos.m_offset == static_cast<std::int32_t>(reinterpret_cast<char*>(&host.pos) - reinterpret_cast<char*>(&host)));
    CHECK(pos.IsDefaultValue(&host));
    host.pos = Point2D<int>{0, 1};
    CHECK(!pos.IsDefaultValue(&host));
    pos.SetToDefaultValue(&host);
    CHECK(host.pos.X == 0 && host.pos.Y == 0);
    CHECK(pos.IsDefaultValue(&host));

    // The comparison is done on floats: 16777217 converts to 16777216.0f, so it equals a default of 16777216.
    host.pos = Point2D<int>{16777217, 0};
    pos.m_defaultValue = Point2D<int>{16777216, 0};
    CHECK(pos.IsDefaultValue(&host));
    pos.m_defaultValue = Point2D<int>{16777216, 1};
    CHECK(!pos.IsDefaultValue(&host));

    // SetDefaultValueFromString clears the default before parsing, so a one-field text leaves Y at 0.
    pos.m_defaultValue = Point2D<int>{5, 9};
    pos.SetDefaultValueFromString("7");
    CHECK(pos.m_defaultValue.X == 7 && pos.m_defaultValue.Y == 0);
    pos.SetDefaultValueFromString("3,4");
    CHECK(pos.m_defaultValue.X == 3 && pos.m_defaultValue.Y == 4);

    // FromString clears the member before parsing.
    host.pos = Point2D<int>{8, 8};
    pos.FromString(&host, "5");
    CHECK(host.pos.X == 5 && host.pos.Y == 0);
    pos.FromString(&host, "2,6");
    CHECK(host.pos.X == 2 && host.pos.Y == 6);
    CHECK(pos.ToString(&host) == "2,6");

    // Clone: a new object with the same offset, name and default.
    Point2DIntProperty* pcopy = pos.Clone();
    CHECK(pcopy != &pos);
    CHECK(pcopy->m_offset == pos.m_offset);
    CHECK(pcopy->m_name == "pos");
    CHECK(pcopy->m_defaultValue.X == 3 && pcopy->m_defaultValue.Y == 4);
    CHECK(pcopy->ToString(&host) == "2,6");
    pcopy->~Point2DIntProperty();
    CustomFree(pcopy);

    // float: ToString, FromString, SetDefaultValueFromString and Clone.
    FloatProperty fl(&host, "f", &host.f, 1.0f);
    host.f = 2.5f;
    CHECK(fl.ToString(&host) == "2.500000");
    fl.FromString(&host, "4.25");
    CHECK(host.f == 4.25f);
    fl.SetDefaultValueFromString("1.5");
    CHECK(fl.m_defaultValue == 1.5f);
    FloatProperty* fcopy = fl.Clone();
    CHECK(fcopy != &fl);
    CHECK(fcopy->m_offset == fl.m_offset);
    CHECK(fcopy->m_name == "f");
    CHECK(fcopy->m_defaultValue == 1.5f);
    CHECK(fcopy->ToString(&host) == "4.250000");
    fcopy->~FloatProperty();
    CustomFree(fcopy);

    // std::vector<Point3D<float>>: SetToDefaultValue, IsDefaultValue, the cleared parsers, ToString and Clone.
    host.points = std::vector<Point3D<float>>{Point3D<float>{4.0f, 5.0f, 6.0f}};
    PointVectorProperty pts(&host, "points", &host.points, std::vector<Point3D<float>>{Point3D<float>{1.0f, 2.0f, 3.0f}});
    CHECK(!pts.IsDefaultValue(&host));
    pts.SetToDefaultValue(&host);
    CHECK(host.points.size() == 1 && host.points[0].X == 1.0f && host.points[0].Z == 3.0f);
    CHECK(pts.IsDefaultValue(&host));
    // The original's ObjToStr for this type writes nothing, so the text is empty here.
    CHECK(pts.ToString(&host).empty());
    // FromString clears the member; the vector StrToObj is a debug stub that parses nothing.
    pts.FromString(&host, "1,2,3");
    CHECK(host.points.empty());
    pts.m_defaultValue = std::vector<Point3D<float>>{Point3D<float>{1.0f, 2.0f, 3.0f}};
    pts.SetDefaultValueFromString("9,9,9");
    CHECK(pts.m_defaultValue.empty());
    pts.m_defaultValue = std::vector<Point3D<float>>{Point3D<float>{7.0f, 8.0f, 9.0f}};
    PointVectorProperty* vcopy = pts.Clone();
    CHECK(vcopy != &pts);
    CHECK(vcopy->m_offset == pts.m_offset);
    CHECK(vcopy->m_defaultValue.size() == 1 && vcopy->m_defaultValue[0].X == 7.0f);
    vcopy->~PointVectorProperty();
    CustomFree(vcopy);

    if (failures == 0) {
        std::printf("SimpleTypeProperty<T> batch 2 test: all checks passed\n");
        return 0;
    }
    std::printf("SimpleTypeProperty<T> batch 2 test: %d failure(s)\n", failures);
    return 1;
}
