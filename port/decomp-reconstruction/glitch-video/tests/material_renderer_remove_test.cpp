// SIDedCollection<intrusive_ptr<CMaterialRenderer>, ...>::remove (0x5d9f74) and removeAll(bool) (0x5da080): the entry's
// SProperties::onRemove hook (0x5d7c44) runs before the node is erased and resets the manager's renderer-id slot of the
// entry's material type.
#include <cstdint>
#include <cstdio>

#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_renderer_manager.hpp"

static int failures = 0;
#define CHECK(c)                                                       \
    do {                                                               \
        if (!(c)) {                                                    \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);   \
            ++failures;                                                \
        }                                                              \
    } while (0)

using namespace glitch::video;

int main() {
    CMaterialRendererManager manager(nullptr);
    boost::intrusive_ptr<CMaterialRenderer> renderer(new CMaterialRenderer(), true);  // one use here, one in the collection
    const uint16_t id = manager.insert("effect", renderer, false);
    manager.getProperties(id)->materialType = 3;
    manager.m_materialTypeIds[3] = id;

    // Two holders: a plain remove refuses, a forced one removes and the hook clears the manager's slot for type 3.
    CHECK(!manager.remove(id, false));
    CHECK(manager.m_materialTypeIds[3] == id);
    CHECK(manager.remove(id, true));
    CHECK(manager.m_materialTypeIds[3] == 0xffffu);
    CHECK(manager.size() == 0u);

    // removeAll(true) drops every entry and reports how many.
    boost::intrusive_ptr<CMaterialRenderer> a(new CMaterialRenderer(), true);
    boost::intrusive_ptr<CMaterialRenderer> b(new CMaterialRenderer(), true);
    const uint16_t idA = manager.insert("a", a, false);
    const uint16_t idB = manager.insert("b", b, false);
    manager.getProperties(idA)->materialType = 1;
    manager.getProperties(idB)->materialType = 2;
    manager.m_materialTypeIds[1] = idA;
    manager.m_materialTypeIds[2] = idB;
    CHECK(manager.removeAll(true) == 2u);
    CHECK(manager.m_materialTypeIds[1] == 0xffffu && manager.m_materialTypeIds[2] == 0xffffu);

    // A type past the 17-entry table changes nothing.
    boost::intrusive_ptr<CMaterialRenderer> c(new CMaterialRenderer(), true);
    const uint16_t idC = manager.insert("c", c, false);
    manager.getProperties(idC)->materialType = 40;
    manager.m_materialTypeIds[0] = 7;
    CHECK(manager.remove(idC, true));
    CHECK(manager.m_materialTypeIds[0] == 7);

    if (failures == 0) std::printf("material_renderer_remove_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
