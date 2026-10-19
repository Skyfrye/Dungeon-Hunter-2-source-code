// glitch::core::detail::SIDedCollection instantiations: id assignment, name lookup, the
// use-count rule of remove, force, removeAll order, and the shared invalid entry.
#include <cstdio>
#include <string>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/core/sided_collection.hpp"
#include "glitch-core-io/deps/glitch_core.hpp"

#include "io_video_fakes.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch;
using glitch::core::detail::SIDedCollection;
namespace sc = glitch::core::detail::sidedcollection;

// Stand-in for a per-entry property record (the Props argument of the instances).
struct TestProperties {
    int flags = 0;
};

// Stand-in for SShaderParameterDef: a 16-byte plain value without a reference count.
struct TestParameterDef {
    int a = 0, b = 0, c = 0, d = 0;
};
struct TestParameterTraits {
    template <class P>
    static bool isSet(const P& p) { return p.a != 0; }
    template <class P>
    static int useCount(const P&) { return 1; }
};

using TextureCollection = SIDedCollection<boost::intrusive_ptr<video::ITexture>, std::uint16_t, false, TestProperties, sc::SValueTraits>;
using ParameterCollection = SIDedCollection<TestParameterDef, std::uint16_t, false, TestProperties, TestParameterTraits>;

int main() {
    // Texture collection: ids are handed out in order; names map to ids; the invalid id is 0xffff.
    {
        TextureCollection tex;
        CHECK(tex.size() == 0);
        CHECK(tex.getNextId() == 0);
        video::ITexture* a = new io_test_fakes::FakeTexture();
        video::ITexture* b = new io_test_fakes::FakeTexture();
        const std::uint16_t idA = tex.add("stone", boost::intrusive_ptr<video::ITexture>(a, true));
        const std::uint16_t idB = tex.add("grass", boost::intrusive_ptr<video::ITexture>(b, true));
        CHECK(idA == 0 && idB == 1);
        CHECK(tex.size() == 2);
        CHECK(tex.getMaxID() == 1);
        CHECK(tex.getId("grass") == 1);
        CHECK(tex.getId("missing") == 0xffff);
        CHECK(tex.get(1)->value.get() == b);
        CHECK(tex.get(7)->value.get() == nullptr);  // out of range: the invalid entry
        tex.getProperties(0)->flags = 5;
        CHECK(tex.getProperties(0)->flags == 5);

        // Names are visited in key order (grass before stone).
        auto it = tex.idBegin();
        CHECK(it != tex.idEnd() && it->first.get() == std::string("grass"));

        // A value used by someone else is kept unless forced.
        a->referenceCounter = 2;
        CHECK(!tex.remove(0, false));
        CHECK(tex.size() == 2);
        CHECK(tex.remove(0, true));
        CHECK(tex.size() == 1);
        CHECK(tex.getNextId() == 0);  // the freed id is reused first
        CHECK(tex.getId("stone") == 0xffff);
        CHECK(tex.add("moss", boost::intrusive_ptr<video::ITexture>(new io_test_fakes::FakeTexture(), true)) == 0);

        // removeAll(false) removes only the unused values.
        b->referenceCounter = 1;
        const std::int16_t removed = tex.removeAll(false);
        CHECK(removed >= 1);
    }

    // Plain-value collection: removal clears the entry and the trailing unset entries are cut.
    {
        ParameterCollection params;
        TestParameterDef p1;
        p1.a = 1;
        TestParameterDef p2;
        p2.a = 2;
        CHECK(params.add("alpha", p1) == 0);
        CHECK(params.add("beta", p2) == 1);
        CHECK(params.size() == 2);
        CHECK(params.get(1)->value.a == 2);
        CHECK(params.remove(1, false));
        CHECK(params.size() == 1);
        CHECK(params.getMaxID() == 0);
        CHECK(!params.remove(1, false));  // already gone
    }

    // The other three intrusive instances (shader, shader code, material renderer) use the same
    // template; they are instantiated here so that every member compiles for each of them.
    {
        SIDedCollection<boost::intrusive_ptr<video::IShader>, std::uint16_t, false, TestProperties, sc::SValueTraits> shaders;
        SIDedCollection<boost::intrusive_ptr<video::IShaderCode>, std::uint16_t, false, sc::SEmptyProperties, sc::SValueTraits> codes;
        SIDedCollection<boost::intrusive_ptr<video::CMaterialRenderer>, std::uint16_t, false, TestProperties, sc::SValueTraits> renderers;
        CHECK(shaders.add("phong", boost::intrusive_ptr<video::IShader>(new io_test_fakes::FakeShader(), true)) == 0);
        CHECK(codes.getId("none") == 0xffff && renderers.size() == 0);
        CHECK(shaders.getId("phong") == 0);
    }

    std::printf("%s\n", failures ? "sided_collection: FAILED" : "sided_collection: ok");
    return failures != 0;
}
