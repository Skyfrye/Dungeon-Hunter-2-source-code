// Host check for CMaterialRendererManager::SCreationState::addPinkBind (0x5d9788).
#include <cstdio>

#include "glitch-video/material_renderer_manager.hpp"

using glitch::video::CMaterialRendererManager;

int main() {
    CMaterialRendererManager::SCreationState state(nullptr);
    state.m_pinkCounter24 = 3;  // flag written is counter - 1

    CMaterialRendererManager::STemporaryID a;
    a.value = 7;
    CMaterialRendererManager::STemporaryID b;
    b.value = 9;

    // Empty list: two appends, cursor stays at the sentinel.
    state.addPinkBind(a, 100);
    state.addPinkBind(b, 200);
    int failures = 0;
    auto* first = state.m_pinkSentinel.next;
    if (first == &state.m_pinkSentinel || first->next->next != &state.m_pinkSentinel) ++failures;
    if (first->data.id.value != 7 || first->data.value != 100 || first->data.flag != 2) ++failures;
    if (state.m_pinkCursor != &state.m_pinkSentinel) ++failures;

    // Cursor on the first node: the next call overwrites it and moves the cursor to the second node.
    state.m_pinkCursor = first;
    state.m_pinkCounter24 = 0;
    state.addPinkBind(b, 300);
    if (first->data.id.value != 9 || first->data.value != 300 || first->data.flag != 0xff) ++failures;
    if (state.m_pinkCursor != first->next) ++failures;
    if (state.m_pinkSentinel.prev->data.value != 200) ++failures;

    std::printf("pink_bind_test: %s (%d failures)\n", failures ? "FAIL" : "ok", failures);
    return failures ? 1 : 0;
}
