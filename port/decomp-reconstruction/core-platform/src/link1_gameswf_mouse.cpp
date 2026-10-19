// The two mouse-handling globals of gameswf::sprite_instance (link-1; both were ledgered skipped in core-platform because
// the gameswf character class was not declared).
#include <cstring>

#include "gameswf/gameswf_sprite.h"

// 0x7a8c6c _Z19CanHandleMouseEventPN7gameswf9characterE
// Null gives 0. A character whose name does not contain "btn" answers with its mouse-handler flag (+0x9c). A character whose
// name contains "btn" answers 1, unless it is a sprite (virtual slot +0x08 is(AS_SPRITE), class id 2), which answers with
// its "enabled" flag (sprite_instance +0xea). The name is the string m_name points at (+0x44; the listing reads its heap
// pointer when the first byte is 0xff and the inline text otherwise, which is tu_string::c_str()). The listing calls
// LC_API_STRSTR_0, a thunk to strstr.
int CanHandleMouseEvent(gameswf::character* character) {
    if (!character) {
        return 0;
    }
    if (!std::strstr(character->get_name().c_str(), "btn")) {
        return character->m_has_mouse_handler;
    }
    if (character->is(gameswf::AS_SPRITE)) {
        return static_cast<gameswf::sprite_instance*>(character)->m_enabled;
    }
    return 1;
}

// 0x7a8cd8 _Z38sprite_can_handle_mouse_event_callbackPN7gameswf9characterE
// A one-instruction thunk: a branch to CanHandleMouseEvent (0x7a8c6c).
int sprite_can_handle_mouse_event_callback(gameswf::character* character) {
    return CanHandleMouseEvent(character);
}
