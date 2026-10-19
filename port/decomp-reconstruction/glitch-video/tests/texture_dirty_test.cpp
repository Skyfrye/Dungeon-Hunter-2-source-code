// Dirty-bit bitmap of ITexture::setDataDirty, ITexture::unmap lock counting, and
// CTextureManager::removeTexture list handling.
#include "glitch-video/texture.hpp"
#include "glitch-video/texture_manager.hpp"
#include "video_test_types.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    using namespace glitch::video;

    // Two mip levels, one face: bitmap words start after mip index 2 (levels + 1 == index 3).
    int32_t levels[8] = {0, 0, 0, 0, 0, 0, 0, 0};
    test::TestTexture tex;
    tex.m_levelSizes = levels;
    tex.m_mipCount3e = 2;
    tex.m_flags38 = 0;  // not cube
    tex.m_flags3f = 0;  // per-mip sizes, no range
    tex.m_dirtyFlags40 = 0;  // the constructor marks everything dirty
    tex.setDataDirty(false);
    CHECK(tex.m_dirtyFlags40 == 0);
    CHECK(levels[3] == 0);

    tex.setDataDirty(true);
    CHECK((tex.m_dirtyFlags40 & 1) != 0);
    CHECK(static_cast<uint32_t>(levels[3]) == 0xffffffffu);

    // Range form: bits at 0 and mipCount for each face (one face here: bit 0 only).
    int32_t range[8] = {0, 0, 0, 0, 0, 0, 0, 0};
    test::TestTexture ranged;
    ranged.m_levelSizes = range;
    ranged.m_mipCount3e = 3;
    ranged.m_flags3f = 2;
    ranged.setDataDirty(true);
    CHECK(range[4] == 1);

    // Cube form: six faces, bits at 0, 2, 4, 6, 8, 10 for mipCount 2.
    int32_t cube[8] = {0, 0, 0, 0, 0, 0, 0, 0};
    test::TestTexture cubeTex;
    cubeTex.m_levelSizes = cube;
    cubeTex.m_mipCount3e = 2;
    cubeTex.m_flags38 = 2;
    cubeTex.m_flags3f = 2;
    cubeTex.setDataDirty(true);
    CHECK(static_cast<uint32_t>(cube[3]) == ((1u << 0) | (1u << 2) | (1u << 4) | (1u << 6) | (1u << 8) | (1u << 10)));

    // unmap: a count above one decrements, otherwise the state clears.
    test::TestTexture locked;
    locked.m_lockCount42 = 2;
    locked.m_flags3f = 0x40;
    locked.unmap();
    CHECK((locked.m_lockCount42 & 0x1f) == 1);
    CHECK((locked.m_flags3f & 0x40) != 0);
    locked.unmap();
    CHECK(locked.m_lockCount42 == 0);
    CHECK((locked.m_flags3f & 0x40) == 0);

    // removeTexture: the texture leaves the list and the id collection (found by name), its placeholder is cleared
    // and the pointer comes back. A texture the collection does not hold reports nullptr, and the list entry is
    // still taken off. The collection holds the only use of the heap texture, so the removal frees it.
    CTextureManager manager;
    auto* a = new test::TestTexture();
    a->m_flags38 = 1;
    boost::intrusive_ptr<ITexture> held(a, false);  // takes the constructor's use
    manager.insert("test", held, false);            // the collection's use
    held.reset();                                   // the collection is now the only holder
    test::TestTexture b;
    b.m_name = "other";
    manager.m_textures = {a, &b};
    manager.m_placeHolders[1] = a;
    ITexture* raw = a;
    CHECK(manager.removeTexture(raw) == raw);
    CHECK(manager.m_textures.size() == 1 && manager.m_textures[0] == &b);
    CHECK(manager.m_placeHolders[1] == nullptr);
    CHECK(manager.size() == 0);
    CHECK(manager.removeTexture(&b) == nullptr);    // not in the collection; still taken off the list
    CHECK(manager.m_textures.empty());
    CHECK(manager.removeTexture(nullptr) == nullptr);

    std::printf("%s\n", failures ? "texture_dirty: FAILED" : "texture_dirty: ok");
    return failures != 0;
}
