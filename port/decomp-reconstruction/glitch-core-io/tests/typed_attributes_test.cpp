#include "glitch-core-io/io/scalar_attributes.hpp"
#include "glitch-core-io/io/typed_attributes.hpp"

#include "io_video_fakes.hpp"

#include <cstdio>
#include <cwchar>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::io;

int main() {
    CColorAttribute color;
    CColorfAttribute colorf;
    CVector2DAttribute v2;
    CVector3DIAttribute v3i;
    CQuaternionAttribute quat;
    CTriangleAttribute tri;
    CRectAttribute rect;
    CLightAttribute light;

    CHECK(color.getType() == 5);
    CHECK(colorf.getType() == 6 && std::wcscmp(colorf.getTypeString(), L"colorf") == 0);
    CHECK(v2.getType() == 7 && std::wcscmp(v2.getTypeString(), L"vector2d") == 0);
    CHECK(v3i.getType() == 0xb && std::wcscmp(v3i.getTypeString(), L"vector3di") == 0);
    CHECK(quat.getType() == 0x10 && std::wcscmp(quat.getTypeString(), L"quaternion") == 0);
    CHECK(tri.getType() == 0x13 && std::wcscmp(tri.getTypeString(), L"triangle") == 0);
    CHECK(rect.getType() == 0xe);
    CHECK(light.getType() == 0x1b);

    // The integer view round-trips: setInt stores the bytes as unit floats and
    // getInt packs them back (rotated by one byte, as the original does).
    CColorfAttribute colorInt("ci", glitch::video::SColorf{0.f, 0.f, 0.f, 0.f}, false);
    colorInt.setInt(0x11223344);
    CHECK(colorInt.floatValues.size() == 4);
    CHECK(colorInt.getInt() == 0x11223344);
    CHECK(colorInt.floatValues[0] > 0.2f && colorInt.floatValues[0] < 0.21f);  // 0x33 / 255
    CColorAttribute colorPacked("cp", glitch::video::SColorf{0.f, 0.f, 0.f, 0.f}, false);
    colorPacked.setFloat(static_cast<float>(0x00112233));  // exact in float; truncates to int
    CHECK(colorPacked.getInt() == 0x00112233);

    // CStringAttribute: wide after construction (isWide), narrow once isWide is cleared.
    CStringAttribute text("name", L"12", false);
    CHECK(text.name == "name" && text.getType() == 2);
    CHECK(text.getString() == "12" && text.getInt() == 12);
    CHECK(text.getFloat() == 12.f && !text.getBool());
    text.setInt(-3);
    CHECK(text.getStringW() == L"-3" && text.getInt() == -3);
    text.isWide = false;
    text.setString("TRUE");
    CHECK(text.getBool() && text.narrow == "TRUE");
    text.setInt(77);
    CHECK(text.narrow == "77" && text.getStringW() == L"77");
    text.setString(L"2.5");
    CHECK(text.getFloat() == 2.5f);
    text.setFloat(0.5f);
    CHECK(text.narrow == "0.5");

    // CLightAttribute and CTextureAttribute without a value: null, and the empty text.
    char lightText[8] = {'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x'};
    light.getString(lightText);
    CHECK(lightText[0] == '\0' && !light.getLight());
    CTextureAttribute texture;
    CHECK(!texture.getTexture() && !texture.getBool());
    CBinaryAttribute binary;
    CHECK(binary.getType() == 0x19);

    // The texture attribute holds a reference on its driver until it is destroyed.
    io_test_fakes::TestNullDriver nullDriver;  // count 1, stays on the stack
    glitch::video::IVideoDriver& driver = nullDriver.get();
    {
        CTextureAttribute held("tex", boost::intrusive_ptr<glitch::video::ITexture>{}, &driver, false);
        CHECK(driver.referenceCounter == 2 && held.driver == &driver);
    }
    CHECK(driver.referenceCounter == 1);

    // CVector2DAttribute::getMatrix is the identity with the flag set.
    CVector2DAttribute vec2("v", glitch::core::vector2d<float>{3.f, 4.f}, false);
    const glitch::core::CMatrix4<float> identity = vec2.getMatrix();
    CHECK(identity.M[0] == 1.f && identity.M[5] == 1.f && identity.M[10] == 1.f && identity.M[15] == 1.f);
    CHECK(identity.M[12] == 0.f && identity.flag);

    // getTransposed: out[i] = in[(i % 4) * 4 + i / 4], flag copied.
    glitch::core::CMatrix4<float> src{};
    for (int i = 0; i < 16; ++i) src.M[i] = static_cast<float>(i);
    src.flag = true;
    glitch::core::CMatrix4<float> dst{};
    src.getTransposed(dst);
    CHECK(dst.M[1] == 4.f && dst.M[4] == 1.f && dst.M[14] == 11.f && dst.M[3] == 12.f);
    CHECK(dst.flag);

    // CStringWArrayAttribute keeps its name, its flag and a copy of the array argument.
    CStringWArrayAttribute strings("arr", glitch::core::svector<glitch::core::stringw>{L"a"}, true);
    CHECK(strings.name == "arr" && strings.flag && strings.array.size() == 1 && strings.array[0] == L"a");

    // CVector3DAttribute::getMatrix is a translation: the components at M[12..14].
    CVector3DAttribute moved("t", glitch::core::vector3d<float>{1.f, 2.f, 3.f}, false);
    const glitch::core::CMatrix4<float> translation = moved.getMatrix();
    CHECK(translation.M[12] == 1.f && translation.M[13] == 2.f && translation.M[14] == 3.f);
    CHECK(translation.M[0] == 1.f && translation.M[5] == 1.f && !translation.flag);

    // CFloatAttribute: text parsed with fast_atof_move; wide text from the stream.
    CFloatAttribute fl("f", 0.f, false);
    fl.setString("2.5");
    CHECK(fl.value == 2.5f && fl.getStringW() == L"2.5");

    std::printf("%s\n", failures ? "typed_attributes: FAILED" : "typed_attributes: ok");
    return failures != 0;
}
