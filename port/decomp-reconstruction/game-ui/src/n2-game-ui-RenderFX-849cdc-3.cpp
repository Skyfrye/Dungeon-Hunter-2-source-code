// Batch n2-game-ui-RenderFX-849cdc-3 (RenderFX, part 4 of 4): the member and label setters, the animation and enable
// forms, the focus and input handling, the per-frame update, the event dispatch and the search index.
// The named forms (a name is looked up with Find first) and the animation wrappers only forward, so they are
// reconstructed. The bodies that read gameswf character fields that are not declared (the enabled byte at +0xea, the
// event record, the cursor and input state), the search index and the update loop are PARTIAL with the missing piece named.
#include "dh2/RenderFX.hpp"
#include "dh2/global/screen_size.hpp"

#include "gameswf/gameswf.h"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_sprite.h"
#include "gameswf/gameswf_action.h"
#include "gameswf/gameswf_log.h"
#include "vendor-gameswf/as_value.hpp"
#include "vendor-gameswf/gameswf_root.hpp"
#include "dh2/global/script_command_globals.hpp"
#include "dh2/global/GetLocalPosition.hpp"

#include <cmath>
#include <cstdio>
#include <cstdio>
#include <cstdlib>
#include <cstring>

int CanHandleMouseEvent(gameswf::character* character);  // 0x7a8c6c

namespace {
// A menu event for a character: the name of the character, the type and the controller, everything else zero. This is the record
// the callers in the binary fill field by field (SetFocus, Update, UpdateInput, UpdateCursor, MenuManager::mySendEvent).
RenderFX::Event MakeEvent(gameswf::character* target, RenderFX::EventType type, int controller) {
    RenderFX::Event event;
    std::memset(&event, 0, sizeof(event));
    event.target = target;
    event.name = target->get_name().c_str();
    event.type = type;
    event.controller = static_cast<unsigned int>(controller);
    return event;
}
}  // namespace

// 0x7ab6c8 RenderFX::SetMember(char const*, char const*, int): a number member of the named object.
void RenderFX::SetMember(const char* target, const char* name, int value) {
    gameswf::as_value number(static_cast<double>(value));
    SetMember(target, name, number);
}

// 0x7ab730 RenderFX::SetMember(char const*, char const*, char const*): a string member of the named object.
void RenderFX::SetMember(const char* target, const char* name, const char* value) {
    gameswf::as_value text;
    text.set_string(value);
    SetMember(target, name, text);
}

// 0x7ab784 RenderFX::Load(char const*, gameswf::player_context*)
// Remembers the file name, creates a player on the context (the default one when null) that points back at this RenderFX, sets
// the working directory to the folder of the file and loads the movie; the root movie becomes the context character.
void RenderFX::Load(const char* swfFile, gameswf::player_context* context) {
    if (context == nullptr) {
        context = s_default_context;
    }
    m_name = swfFile;
    m_player = new gameswf::player(context);
    m_player->m_render_fx = this;                       // player +0x94
    const char* cursor = swfFile + std::strlen(swfFile);
    for (int c = *cursor; c != '/'; c = *cursor) {
        if (c == '\\') {
            break;
        }
        if (swfFile > --cursor) {
            break;
        }
    }
    const int directoryLength = static_cast<int>(cursor + 1 - swfFile);
    if (directoryLength > 0) {
        ::tu_string directory(swfFile, directoryLength);
        m_player->set_workdir(directory.c_str());
    }
    m_root = m_player->load_file(swfFile).get_ptr();
    SetContext(m_root->m_movie.get_ptr());
}

// 0x7ab924 RenderFX::GotoFrame(gameswf::character*, char const*, bool): a movie clip goes to the labeled frame; on success it
// gets the play state (play when flag is set). Returns whether the label existed.
int RenderFX::GotoFrame(gameswf::character* character, const char* label, bool flag) {
    if (character == nullptr || !character->is(2)) {
        return 0;
    }
    ::tu_stringi name(label);
    if (!character->goto_labeled_frame(name)) {
        return 0;
    }
    character->set_play_state(flag ? gameswf::character::PLAY : gameswf::character::STOP);   // the original stores flag ^ 1
    return 1;
}

// 0x7aba04 RenderFX::PlayAnim(gameswf::character*, char const*, int): plays the animation from its label (the flag argument
// is not used by the original; GotoFrame is always called with play set).
int RenderFX::PlayAnim(gameswf::character* character, const char* anim, int /*flag*/) {
    return GotoFrame(character, anim, true);
}

// 0x7aba0c RenderFX::SetEnabled(gameswf::character*, bool): a movie clip changes its enabled byte (+0xea) and plays the
// "disabled" or "activated" (or, when that label is missing, "focus_out") animation, unless input is locked (flag 0x40).
int RenderFX::SetEnabled(gameswf::character* character, bool enabled) {
    int result = 0;
    if (character != nullptr) {
        result = character->is(2);
        if (result) {
            gameswf::sprite_instance* sprite = static_cast<gameswf::sprite_instance*>(character);
            if (sprite->m_enabled == enabled || (m_flags & 0x40) != 0) {
                sprite->m_enabled = enabled;
            } else if (!enabled) {
                result = PlayAnim(character, "disabled", 0);
                sprite->m_enabled = false;
            } else {
                result = PlayAnim(character, "activated", 0);
                if (!result) {
                    result = PlayAnim(character, "focus_out", 0);
                }
                sprite->m_enabled = enabled;
            }
        }
    }
    return result;
}

// 0x7abac8 RenderFX::SetEnabled(char const*, bool): SetEnabled of the named character.
int RenderFX::SetEnabled(const char* name, bool enabled) {
    return SetEnabled(static_cast<gameswf::character*>(Find(name)), enabled);
}

// 0x7abaec RenderFX::GotoFrame(char const*, char const*, bool): GotoFrame of the named character with a label.
int RenderFX::GotoFrame(const char* name, const char* label, bool flag) {
    return GotoFrame(static_cast<gameswf::character*>(Find(name)), label, flag);
}

// 0x7abb18 RenderFX::PlayAnim(char const*, char const*, int): plays the named character's animation (see PlayAnim above).
int RenderFX::PlayAnim(const char* name, const char* anim, int /*flag*/) {
    return GotoFrame(name, anim, true);
}

// 0x7abe0c RenderFX::InvokeASCallback(gameswf::character*, char const*, gameswf::as_value const*, int)
// Calls the named ActionScript method on the character, in the environment of the character (or of its parent when the
// character is not a movie clip). Returns 1 when a call was made.
int RenderFX::InvokeASCallback(gameswf::character* character, const char* name, const gameswf::as_value* args, int count) {
    if (character == nullptr) {
        return 0;
    }
    gameswf::character* owner = character;
    if (!character->is(2)) {
        gameswf::character* parent = character->get_parent();   // +0x3c weak pointer
        if (parent == nullptr || !parent->is(2)) {
            return 0;
        }
        owner = parent;
    }
    ::smart_ptr<gameswf::character> hold(character);
    gameswf::call_method(owner->get_environment(), character, name, args, count);
    return 1;
}

// 0x7abf34 RenderFX::SendEvent(RenderFX::Event&)
// The listener sees the event first; unless it consumed it (unk_24), the event type selects the ActionScript callback of the
// target. A release also records the menu the known buttons lead to (lastOpenMenuID).
int RenderFX::SendEvent(Event& event) {
    m_eventListener->OnEvent(event);
    int result = 0;
    if (event.unk_24 == 0) {
        switch (static_cast<unsigned int>(event.type)) {
            case EVENT_FOCUS_IN:
                result = InvokeASCallback(event.target, "on_focus_in", nullptr, 0);
                break;
            case EVENT_FOCUS_OUT:
                result = InvokeASCallback(event.target, "on_focus_out", nullptr, 0);
                break;
            case EVENT_CLICKED:
                result = InvokeASCallback(event.target, "on_clicked", nullptr, 0);
                break;
            case EVENT_PRESS:
                result = InvokeASCallback(event.target, "onPress", nullptr, 0);
                break;
            case EVENT_RELEASE:
                InvokeASCallback(event.target, "onRelease", nullptr, 0);
                if (std::strcmp(event.name, "btnDelete") == 0) {
                    lastOpenMenuID = 19;
                }
                if (std::strcmp(event.name, "btn_GAMEPLAYMENUS_ACCEPT") == 0 || std::strcmp(event.name, "btn_GAMEPLAYMENUS_REFUSE") == 0) {
                    lastOpenMenuID = 1;
                }
                if (std::strcmp(event.name, "btn_Legend") == 0) {
                    lastOpenMenuID = 20;
                }
                result = std::strcmp(event.name, "btn_deadzone");
                if (result == 0) {
                    lastOpenMenuID = 12;
                }
                break;
            case EVENT_RELEASE_OUTSIDE:
                result = InvokeASCallback(event.target, "onReleaseOutside", nullptr, 0);
                break;
            case EVENT_ROLL_OVER:
                result = InvokeASCallback(event.target, "onRollOver", nullptr, 0);
                break;
            case EVENT_ROLL_OUT:
                result = InvokeASCallback(event.target, "onRollOut", nullptr, 0);
                break;
            case EVENT_DRAG_OVER:
                result = InvokeASCallback(event.target, "onDragOver", nullptr, 0);
                break;
            case EVENT_DRAG_OUT:
                result = InvokeASCallback(event.target, "onDragOut", nullptr, 0);
                break;
            default:
                break;
        }
    }
    return result;
}

// 0x7ac228 RenderFX::SetFocus(gameswf::character*, int)
// Moves the focus of a controller. The old focus (an enabled movie clip) plays "focus_out" and is sent a focus-out event; the new
// one is offered to the listener first (CanHandleEvent) and plays "focus_in" with a focus-in event, or the focus is dropped again.
// Nothing happens while input is locked (flag 0x40).
void RenderFX::SetFocus(gameswf::character* character, int controller) {
    gameswf::character* old = m_controllers[controller].m_characters[0].get_ptr();
    if (character == old) {
        return;
    }
    if ((m_flags & 0x40) == 0 && old != nullptr && old->is(2) && static_cast<gameswf::sprite_instance*>(old)->m_enabled) {
        PlayAnim(old, "focus_out", 0);
        Event event = MakeEvent(old, EVENT_FOCUS_OUT, controller);
        SendEvent(event);
    }
    m_controllers[controller].m_characters[0] = character;
    if ((m_flags & 0x40) == 0 && character != nullptr) {
        Event event = MakeEvent(character, EVENT_FOCUS_IN, controller);
        if (m_eventListener->CanHandleEvent(event)) {
            PlayAnim(character, "focus_in", 0);
            SendEvent(event);
        } else {
            m_controllers[controller].m_characters[0] = nullptr;
        }
    }
}

// 0x7ac410 RenderFX::ResetFocus(int): clears the focus and the drag target of a controller.
void RenderFX::ResetFocus(int controller) {
    SetFocus(static_cast<gameswf::character*>(nullptr), controller);
    m_controllers[controller].m_characters[4] = nullptr;
}

// 0x7ac498 RenderFX::SetFocus(char const*, int): SetFocus of the named character.
void RenderFX::SetFocus(const char* name, int flag) {
    SetFocus(static_cast<gameswf::character*>(Find(name)), flag);
}

// 0x7ac4bc RenderFX::UpdateInput(int, int)
// Keyboard or pad navigation of one controller. directions: 1 up, 2 down, 4 left, 8 right, 0x10 click. The focused character first
// receives an update-input event (type 3) that a listener can consume; otherwise the nearest button ("btn", flags 3) in the
// requested direction takes the focus (distances weigh the other axis 10 times less when a pure direction is held), or a click plays
// the "clicked" animation and parks the focus in the controller's click holder.
void RenderFX::UpdateInput(int directions, int controller) {
    Controller& record = m_controllers[controller];
    ::smart_ptr<gameswf::character> focus(record.m_characters[0].get_ptr());
    if (focus.get_ptr() == nullptr) {
        return;
    }
    if (directions == 0 || record.m_characters[3].get_ptr() != nullptr) {
        return;
    }
    Event event = MakeEvent(focus.get_ptr(), EVENT_UPDATE_INPUT, controller);
    event.unk_1c = directions;
    SendEvent(event);
    if (event.unk_24 != 0) {
        return;
    }
    const gameswf::matrix* origin = focus->get_world_matrix();
    const float originX = origin->m_[0][2];
    const float originY = origin->m_[1][2];
    const float weightX = (directions & 0xC) != 0 ? 1.0f : 10.0f;
    const float weightY = ((directions & 1) != 0 || (directions & 2) != 0) ? 1.0f : 10.0f;
    CharacterArray* buttons = FindCharacters(m_context, "btn", 3);
    gameswf::character* up = nullptr;
    gameswf::character* down = nullptr;
    gameswf::character* left = nullptr;
    gameswf::character* right = nullptr;
    float upDistance = 2147500000.0f;
    float downDistance = 2147500000.0f;
    float leftDistance = 2147500000.0f;
    float rightDistance = 2147500000.0f;
    for (int i = 0; i < buttons->count; ++i) {
        gameswf::character* button = buttons->data[i];
        const gameswf::matrix* position = button->get_world_matrix();
        const float dx = weightX * (position->m_[0][2] - originX);
        const float dy = weightY * (position->m_[1][2] - originY);
        const float distance = dx * dx + dy * dy;
        if (dy < 0.0f && std::fabs(dy) > 0.0f && distance < upDistance) {
            upDistance = distance;
            up = button;
        }
        if (dy > 0.0f && std::fabs(dy) > 0.0f && downDistance > distance) {
            downDistance = distance;
            down = button;
        }
        if (dx < 0.0f && std::fabs(dx) > 0.0f && leftDistance > distance) {
            leftDistance = distance;
            left = button;
        }
        if (dx > 0.0f && std::fabs(dx) > 0.0f && distance < rightDistance) {
            rightDistance = distance;
            right = button;
        }
    }
    if ((directions & 1) != 0 && up != nullptr) {
        SetFocus(up, controller);
    } else if ((directions & 2) != 0 && down != nullptr) {
        SetFocus(down, controller);
    } else if ((directions & 4) != 0 && left != nullptr) {
        SetFocus(left, controller);
    } else if ((directions & 8) != 0 && right != nullptr) {
        SetFocus(right, controller);
    } else if ((directions & 0x10) != 0 && m_eventListener != nullptr && (m_flags & 0x40) == 0) {
        PlayAnim(focus.get_ptr(), "clicked", 0);
        record.m_characters[3] = focus.get_ptr();
    }
}

// 0x7ac924 RenderFX::UpdateCursor(RenderFX::Cursor&, int)
// One pointer (mouse or touch) of controller `controller`. The cursor character follows the pointer. When the controller is enabled
// and not locked, the pointer position is mapped to the logical coordinates and hit-tested against the context (or the root
// movie, flag 4); the focus, the roll over/out, press, drag, release and click events of the characters that can handle the mouse
// are sent. flags (m_flags): 1 no focus loss on a release outside, 4 hit-test from the root movie, 0x10 and 0x80 focus on hover
// rules, 0x20 locks input while a click is pending, 0x40 menus without animations or events.
void RenderFX::UpdateCursor(Cursor& cursor, int controller) {
    if (static_cast<unsigned int>(controller) > 3) {
        return;
    }
    Controller& record = m_controllers[controller];
    const float previousX = record.m_cursor.x;
    const float previousY = record.m_cursor.y;
    const int previousState = record.m_cursor.state;
    record.m_cursor = cursor;
    gameswf::point logical;
    logical.m_x = cursor.x;
    logical.m_y = cursor.y;
    m_root->m_pointer_x = cursor.x;                    // root +0x48
    m_root->m_pointer_y = cursor.y;                    // root +0x4c
    m_root->m_active_controller = controller;          // root +0x50
    m_root->screen_to_logical(logical);
    const float localX = logical.m_x;
    const float localY = logical.m_y;
    if (record.m_characters[2].get_ptr() != nullptr) {  // the cursor character
        gameswf::matrix matrix;
        float translateX = (localX * 20.0f + (localY * 20.0f) * matrix.m_[1][0]) + 0.0f;
        if (translateX < -3.4028e38f || translateX > 3.4028e38f) {
            translateX = 0.0f;
        }
        matrix.m_[0][2] = translateX;
        float translateY = (localY * 20.0f + (localX * 20.0f) * matrix.m_[0][1]) + matrix.m_[1][2];
        if (translateY < -3.4028e38f || translateY > 3.4028e38f) {
            translateY = 0.0f;
        }
        matrix.m_[1][2] = translateY;
        matrix.set_scale_rotation(1.0f, 1.0f, cursor.angle);
        record.m_characters[2]->set_matrix(matrix);
    }
    if (!record.m_enabled) {
        return;
    }
    if (m_context == nullptr || ((m_flags & 0x20) != 0 && record.m_characters[3].get_ptr() != nullptr)) {
        return;
    }
    m_root->notify_mouse_state(static_cast<int>(localX), static_cast<int>(localY), 0);
    bool justPressed = false;
    bool released = false;
    bool moved = false;
    if (cursor.state != 0) {
        justPressed = previousState == 0;
        moved = cursor.x != previousX || cursor.y != previousY;
    } else {
        released = previousState != 0;
    }
    // The hit test: the topmost character under the pointer that handles mouse events (point in twips).
    gameswf::character* searchRoot = (m_flags & 4) != 0 ? m_root->m_movie.get_ptr() : m_context;
    ::smart_ptr<gameswf::character> holdRoot(searchRoot);
    const float twipsX = localX * 20.0f;
    const float twipsY = localY * 20.0f;
    if (ScreenUsesAspectFit()) {
        MenuPageLayoutForCursor(this);  // Port deviation (UI12): hit-test the laid-out page, not the timeline's placement
    }
    ::smart_ptr<gameswf::character> hit(searchRoot->get_topmost_mouse_entity(twipsX, twipsY));
    if (justPressed && std::getenv("DH2_FIT_DEBUG") != nullptr) {
        std::fprintf(stderr, "FITDBG press fx=%p surface=(%g,%g) local=(%g,%g) hit=%s%c", static_cast<void*>(this), cursor.x, cursor.y, localX, localY,
                     hit.get_ptr() != nullptr ? hit->get_name().c_str() : "(none)", 10);
    }
    if (HudCustomizeOverlayHit(this, cursor.x, cursor.y, justPressed)) {
        hit = nullptr;  // Port addition (UI6): a touch on the size medallions of the HUD customise page goes nowhere else
    }
    if (ScreenUsesStickZone()) {
        // Port deviation (UI4; TRACK-B.md decision 15): a touch in the bottom-left zone of the surface that hits nothing (or only the stick's pad)
        // grabs the virtual stick.
        gameswf::character* stick = HudStickZoneTarget(this, cursor.x, cursor.y, hit.get_ptr());
        if (stick) {
            hit = stick;
        }
    }
    ::smart_ptr<gameswf::character> oldFocus(record.m_characters[0].get_ptr());
    bool setFocus;
    if (record.m_characters[4].get_ptr() != nullptr) {
        setFocus = (m_flags & 0x80) != 0 && hit.get_ptr() != nullptr && moved;
    } else {
        setFocus = !(!justPressed && (m_flags & 0x10) != 0 && ((m_flags & 0x80) == 0 || !moved || hit.get_ptr() == nullptr));
    }
    if (setFocus) {
        SetFocus(hit.get_ptr(), controller);
    }
    if (justPressed || released) {
        if (record.m_characters[0].get_ptr() != record.m_characters[3].get_ptr()) {
            record.m_characters[3] = nullptr;
        }
    }
    if (record.m_characters[4].get_ptr() != nullptr && !CanHandleMouseEvent(record.m_characters[4].get_ptr())) {
        record.m_characters[4] = nullptr;
    }
    // An event for `character` with the pointer position local to `local`, offered to the listener first.
    auto sendLocal = [&](gameswf::character* target, EventType type, gameswf::character* local, bool offer) {
        Event event = MakeEvent(target, type, controller);
        const gameswf::point position = GetLocalPosition(local, localX, localY);
        event.cursorState = cursor.state;
        event.x = position.m_x;
        event.y = position.m_y;
        if (!offer || m_eventListener->CanHandleEvent(event)) {
            SendEvent(event);
        }
    };
    if (oldFocus.get_ptr() != record.m_characters[0].get_ptr()) {
        gameswf::character* hover = record.m_characters[1].get_ptr();
        if (hover != nullptr && CanHandleMouseEvent(hover)) {
            sendLocal(hover, EVENT_ROLL_OUT, hover, true);
        }
        if (hit.get_ptr() != nullptr && CanHandleMouseEvent(hit.get_ptr())) {
            sendLocal(hit.get_ptr(), EVENT_ROLL_OVER, hit.get_ptr(), true);
        }
    }
    if (moved) {
        gameswf::character* current = record.m_characters[0].get_ptr();
        if (current != nullptr) {
            gameswf::character* compare = current;
            bool tryDragOver = true;
            if (current == record.m_characters[1].get_ptr()) {
                if (hit.get_ptr() == current) {
                    tryDragOver = false;
                } else {
                    if (CanHandleMouseEvent(current)) {
                        sendLocal(record.m_characters[0].get_ptr(), EVENT_DRAG_OUT, record.m_characters[0].get_ptr(), true);
                    }
                    compare = record.m_characters[0].get_ptr();
                    tryDragOver = compare != record.m_characters[1].get_ptr();
                }
            }
            if (tryDragOver && hit.get_ptr() == compare && CanHandleMouseEvent(hit.get_ptr())) {
                sendLocal(record.m_characters[0].get_ptr(), EVENT_DRAG_OVER, record.m_characters[0].get_ptr(), true);
            }
        }
    }
    record.m_characters[1] = hit.get_ptr();
    gameswf::character* focused = record.m_characters[0].get_ptr();
    if (focused == nullptr) {
        return;
    }
    ::smart_ptr<gameswf::character> holdFocus(focused);
    if (!CanHandleMouseEvent(focused)) {
        return;
    }
    // The pointer position in the local space of the focused character.
    gameswf::matrix inverse;
    inverse.set_inverse(*focused->get_world_matrix());
    const float focusX = (twipsX * inverse.m_[0][0] + twipsY * inverse.m_[0][1]) + inverse.m_[0][2];
    const float focusY = (twipsX * inverse.m_[1][0] + twipsY * inverse.m_[1][1]) + inverse.m_[1][2];
    // An event for the focused character at the local position, sent without asking the listener.
    auto sendFocus = [&](EventType type) {
        Event event = MakeEvent(focused, type, controller);
        event.cursorState = cursor.state;
        event.x = focusX;
        event.y = focusY;
        SendEvent(event);
    };
    if (justPressed) {
        if ((m_flags & 1) == 0 && hit.get_ptr() == nullptr) {
            ResetFocus(controller);
            return;
        }
        if ((m_flags & 0x40) == 0) {
            PlayAnim(focused, "pressed", 0);
        }
        sendFocus(EVENT_PRESS);
        record.m_characters[4] = focused;
        return;
    }
    if (!released) {
        if (!moved) {
            if ((m_flags & 1) != 0 || hit.get_ptr() != nullptr || record.m_characters[4].get_ptr() != nullptr) {
                return;
            }
            ResetFocus(controller);
            return;
        }
        if ((m_flags & 0x40) == 0) {
            sendFocus(static_cast<EventType>(5));   // a drag
        }
        record.m_characters[4] = focused;
        return;
    }
    if ((m_flags & 1) == 0 && hit.get_ptr() != focused) {
        sendFocus(EVENT_RELEASE_OUTSIDE);
        ResetFocus(controller);
        record.m_characters[4] = nullptr;
        return;
    }
    Event release = MakeEvent(focused, EVENT_RELEASE, controller);
    release.cursorState = cursor.state;
    release.x = focusX;
    release.y = focusY;
    if (m_eventListener->CanHandleEvent(release)) {
        bool sendClicked = false;
        if ((m_flags & 0x40) != 0) {
            SendEvent(release);
            sendClicked = true;
        } else if (PlayAnim(focused, "released", 0)) {
            SendEvent(release);
            record.m_characters[3] = focused;
        } else {
            const int played = PlayAnim(focused, "clicked", 0);
            SendEvent(release);
            if (!played) {
                sendClicked = true;
            } else {
                record.m_characters[3] = focused;
            }
        }
        if (sendClicked) {
            sendFocus(EVENT_CLICKED);
        }
    }
    record.m_characters[4] = nullptr;
}

// 0x7ad68c RenderFX::Update(int, bool)
// Advances the root by dt milliseconds. Then, unless input is locked, every controller whose "clicked" holder (slot 3) has
// stopped playing sends a clicked event and drops the holder.
void RenderFX::Update(int dt, bool a) {
    ::smart_ptr<gameswf::root> root(m_player->get_root());
    root->advance(static_cast<float>(dt) / 1000.0f, a);
    if ((m_flags & 0x40) == 0) {
        for (int i = 0; i != 4; ++i) {
            gameswf::character* holder = m_controllers[i].m_characters[3].get_ptr();
            if (holder != nullptr && holder->get_play_state() == gameswf::character::STOP) {
                Event event = MakeEvent(holder, EVENT_CLICKED, i);
                SendEvent(event);
                m_controllers[i].m_characters[3] = nullptr;
            }
        }
    }
}

// 0x7ad7e8 RenderFX::InvokeASCallback(char const*, char const*, gameswf::as_value const*, int): the named character's callback.
int RenderFX::InvokeASCallback(const char* name, const char* function, const gameswf::as_value* args, int count) {
    return InvokeASCallback(static_cast<gameswf::character*>(Find(name)), function, args, count);
}

// 0x7add94 RenderFX::GetSearchIndex(): the search index at RenderFX +0x14, initialized from this on every call.
RenderFX::SearchIndex* RenderFX::GetSearchIndex() {
    m_searchIndex.Init(*this);
    return &m_searchIndex;
}

// 0x7ae6ac RenderFX::SetTexture(char const*, glitch::video::ITexture*, bool)
// Replaces the named character by a bitmap character that shows the texture. With `flag` the bitmap gets the bounds of the
// old character, transformed by the inverse of its local matrix.
void RenderFX::SetTexture(const char* name, glitch::video::ITexture* texture, bool flag) {
    gameswf::as_object* object = Find(name);
    if (object == nullptr) {
        return;
    }
    gameswf::character* character = static_cast<gameswf::character*>(object);
    gameswf::bitmap_info* bitmapInfo = gameswf::s_render_handler->create_bitmap_info_texture(texture);
    gameswf::bitmap_character* bitmap;
    if (flag) {
        gameswf::rect bounds;
        character->get_bound(&bounds);                       // slot +0x12c
        gameswf::matrix inverse;
        inverse.set_inverse(*character->m_local_matrix);     // +0x4c
        inverse.transform(&bounds);
        bitmap = new gameswf::bitmap_character(character->m_player.get_ptr(), bitmapInfo, &bounds);
    } else {
        bitmap = new gameswf::bitmap_character(character->m_player.get_ptr(), bitmapInfo, nullptr);
    }
    character->replace_me(bitmap);                           // slot +0xac
}
