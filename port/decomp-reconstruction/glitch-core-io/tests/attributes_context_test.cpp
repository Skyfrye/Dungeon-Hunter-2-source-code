// Group tree and name lookup of glitch::io::CAttributes.
#include <cmath>
#include <cstdio>
#include <string>

#include "glitch-core-io/io/attributes.hpp"
#include "glitch-core-io/io/scalar_attributes.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch;

int main() {
    io::CAttributes attrs(nullptr);
    CHECK(attrs.getGroupName().empty());
    CHECK(attrs.getGroupsCount() == 0);

    // Group "outer" holds one integer attribute "count" = 7.
    attrs.push("outer");
    CHECK(attrs.getGroupName() == "outer");
    auto* count = new io::CIntAttribute;
    count->name = "count";
    count->value = 7;
    attrs.currentAttributes().push_back(count);
    CHECK(attrs.getAttributeCount() == 1);
    CHECK(attrs.getInt("count") == 7);
    CHECK(attrs.existsAttribute("count"));
    CHECK(attrs.findAttribute("count") == 0);
    CHECK(attrs.getAttributeP("count") == count);
    CHECK(attrs.getAttributeType("count") == count->getType());

    // Missing names give the defaults of the original bodies.
    CHECK(!attrs.existsAttribute("nope"));
    CHECK(attrs.findAttribute("nope") == 0xffffffffu);
    CHECK(attrs.getInt("nope") == 0 && attrs.getFloat("nope") == 0.f);
    CHECK(attrs.getBool("nope") == false && attrs.getEnum("nope") == nullptr);
    CHECK(attrs.getAttributeType("nope") == 0x1e);
    CHECK(attrs.getColorf("nope").a == 1.f && attrs.getColorf("nope").r == 0.f);
    CHECK(attrs.getColor("nope").color == 0);
    CHECK(attrs.getQuaternion("nope").Y == 1.f && attrs.getQuaternion("nope").W == 0.f);
    CHECK(attrs.getPlane3d("nope").Normal.Y == 1.f && std::signbit(attrs.getPlane3d("nope").D));
    CHECK(attrs.getVector3d("nope").Z == 0.f && attrs.getRect("nope").LowerRightCorner.X == 0);
    CHECK(attrs.getUserPointer("nope") == nullptr);
    CHECK(attrs.getArray("nope").empty());
    CHECK(attrs.getString("nope").empty());
    CHECK(attrs.getMatrix("nope").M[0] == 1.f && attrs.getMatrix("nope").M[1] == 0.f);
    char buf[8] = "xxxx";
    attrs.getString("nope", buf);
    CHECK(buf[0] == '\0');

    // Named lookup returns the stored value when present.
    CHECK(attrs.getInt(0) == 7);
    CHECK(attrs.getAttributeName(0) != nullptr && std::string(attrs.getAttributeName(0)) == "count");

    // pop returns to the root; the root is a parent-less group, so a second pop is a no-op.
    attrs.pop();
    CHECK(attrs.getGroupName().empty());
    CHECK(attrs.getGroupsCount() == 1);
    attrs.pop();
    CHECK(attrs.getGroupName().empty());

    // setGroup walks into a child; push of an existing name reuses it.
    attrs.setGroup(0);
    CHECK(attrs.getGroupName() == "outer");
    CHECK(attrs.getInt("count") == 7);
    attrs.pop();
    attrs.push("outer");
    CHECK(attrs.getGroupsCount() == 0);
    attrs.pop();
    CHECK(attrs.getGroupsCount() == 1);

    // Index-based push names the group "group<index>"; two-argument push appends the index.
    attrs.push(3);
    CHECK(attrs.getGroupName() == "group3");
    attrs.pop();
    attrs.push("x", 2);
    CHECK(attrs.getGroupName() == "x2");
    attrs.pop();
    CHECK(attrs.getGroupsCount() == 3);
    attrs.setGroup(1);
    CHECK(attrs.getGroupName() == "group3");
    attrs.pop();

    // hasContext finds a direct child only.
    CHECK(attrs.group->hasContext("outer") != nullptr);
    CHECK(attrs.group->hasContext("nope") == nullptr);

    // clear drops the groups and their attributes, and returns to the root.
    attrs.push("outer");
    CHECK(attrs.getInt("count") == 7);
    attrs.clear();
    CHECK(attrs.getGroupName().empty());
    CHECK(attrs.getGroupsCount() == 0);
    CHECK(attrs.getAttributeCount() == 0);

    std::printf("%s\n", failures ? "attributes_context: FAILED" : "attributes_context: ok");
    return failures != 0;
}
