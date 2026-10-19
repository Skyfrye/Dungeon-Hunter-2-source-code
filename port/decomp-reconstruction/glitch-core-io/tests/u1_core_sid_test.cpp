// Engine unification wave u1-core: the one SIDedCollection (glitch-shared/sid_collection.hpp), spelled with the
// original instance names (glitch-core-io/core/sided_collection.hpp). The mapped SIdValue derives from the
// instance's Props record and puts the id after it: IShaderCode (empty Props) at +0x00, IShader (4-byte Props) at
// +0x04, CMaterialRenderer (10-byte Props) at +0x0a, ITexture (0x1c-byte Props) at +0x1c, as the SIdValue
// constructors and getId read it (0x6e08b0, 0x5e5490, 0x5d7e34, 0x5e85b4).
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <cstdio>
#include <string>
#include <type_traits>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/core/sided_collection.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace sc = glitch::core::detail::sidedcollection;
using glitch::core::detail::SIDedCollection;

namespace {

struct Obj : glitch::IReferenceCounted {
    static int alive;
    Obj() { ++alive; }
    ~Obj() override { --alive; }
};
int Obj::alive = 0;

#pragma pack(push, 1)
struct ShaderProps {  // 4 bytes
    std::uint32_t program = 0;
};
struct RendererProps {  // 10 bytes: dword 0, dword -1, ushort 17
    std::uint32_t a = 0;
    std::uint32_t b = 0xffffffffu;
    std::uint16_t kind = 17;
};
struct TextureProps {  // 0x1c bytes: a string header and the int 39
    unsigned char header[0x18] = {};
    std::int32_t format = 39;
};
#pragma pack(pop)

using Codes = SIDedCollection<boost::intrusive_ptr<Obj>, std::uint16_t, false, sc::SEmptyProperties, sc::SValueTraits>;
using Shaders = SIDedCollection<boost::intrusive_ptr<Obj>, std::uint16_t, false, ShaderProps, sc::SValueTraits>;
using Renderers = SIDedCollection<boost::intrusive_ptr<Obj>, std::uint16_t, false, RendererProps, sc::SValueTraits>;
using Textures = SIDedCollection<boost::intrusive_ptr<Obj>, std::uint16_t, false, TextureProps, sc::SValueTraits>;

// Byte offset of the id inside the SIdValue.
template <class Collection>
std::size_t idOffset() {
    typename Collection::SIdValue v(0x1234);
    const auto* base = reinterpret_cast<const unsigned char*>(&v);
    std::uint16_t id = 0;
    for (std::size_t i = 0; i + 1 < sizeof v; ++i) {
        std::uint16_t candidate;
        std::memcpy(&candidate, base + i, 2);
        if (candidate == 0x1234) {
            id = candidate;
            return i;
        }
    }
    (void)id;
    return static_cast<std::size_t>(-1);
}

}  // namespace

int main() {
    // The id sits at the end of the Props record, instance by instance.
    CHECK(idOffset<Codes>() == 0);
    CHECK(idOffset<Shaders>() == 4);
    CHECK(idOffset<Renderers>() == 10);
    CHECK(idOffset<Textures>() == 0x1c);
    static_assert(std::is_empty<sc::SEmptyProperties>::value, "SEmptyProperties is empty");

    // The Props subobject is node +0x18 itself: getProperties hands out the SIdValue address.
    {
        Renderers renderers;
        const std::uint16_t id = renderers.add("sky", boost::intrusive_ptr<Obj>(new Obj()));
        CHECK(id == 0);
        RendererProps* props = renderers.getProperties(id);
        CHECK(props->kind == 17 && props->b == 0xffffffffu);
        props->a = 5;
        CHECK(renderers.getProperties(0)->a == 5);
        CHECK(static_cast<void*>(props) == static_cast<void*>(&renderers.entries[0].iterator->second));
    }

    // insert / rename (0x5ea53c, 0x5e9348) on the shared template, the way the managers call them.
    {
        Textures textures;
        char* owned = new char[6];
        std::strcpy(owned, "stone");
        CHECK(textures.insert(owned, boost::intrusive_ptr<Obj>(new Obj()), true) == 0);  // the key owns the name
        CHECK(textures.insert("grass", boost::intrusive_ptr<Obj>(new Obj()), false) == 1);
        CHECK(textures.getId("stone") == 0 && textures.getId("grass") == 1);
        CHECK(textures.getProperties(0)->format == 39);
        CHECK(!textures.rename(1, "stone", false));        // the new name exists
        CHECK(textures.rename(1, "moss", false));
        CHECK(textures.getId("moss") == 1 && textures.getId("grass") == 0xffff);
        CHECK(textures.size() == 2 && textures.getNextId() == 2);
        // The entries hold the only reference: the use count is 1 and remove(id) succeeds.
        CHECK(textures.remove(0));
        CHECK(textures.getNextId() == 0 && textures.getId("stone") == 0xffff);
        CHECK(Obj::alive == 1);
    }
    CHECK(Obj::alive == 0);

    // Counting is the intrusive_ptr's: an outside holder blocks remove(id) until forced.
    {
        Codes codes;
        boost::intrusive_ptr<Obj> keep(new Obj());
        codes.add("a", keep);
        CHECK(keep->referenceCounter == 2);
        CHECK(!codes.remove(0, false));
        CHECK(codes.remove(0, true));
        CHECK(keep->referenceCounter == 1);
    }
    CHECK(Obj::alive == 0);

    if (failures == 0) std::printf("u1_core_sid_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
