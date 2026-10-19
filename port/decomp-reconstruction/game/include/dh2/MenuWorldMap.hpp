// MenuWorldMap: the "menu_FastTravel" page, a world map of the lockers (quest-gated fast-travel points).
// A singleton (GetInstance). The map is dragged and pinch-zoomed by touch. The touch input is the embedded
// InputHandler at +0xc4, which is also an IEventReceiver at +0xc8 that Show attaches to EventManager.
// Original 32-bit size: 0x140 (320) as far as the recovered members go.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x43641c, Init 0x4360ec, InputHandler::onEvent 0x4372bc).
#pragma once

#include <cstdint>
#include <map>

#include "dh2/IEventReceiver.hpp"
#include "dh2/MenuBase.hpp"
#include "glitch-core-io/os/event_receiver.hpp"  // glitch::SEvent and glitch::IEventReceiver, the canonical definitions

namespace gameswf {
class character;
class render_state;
}  // namespace gameswf

class IEvent;
class EventManager;

class MenuWorldMap : public MenuBase {
public:
    // One locker: 12 bytes. m_lockers[0] is never unlocked, m_lockers[1..3] take their quest from
    // Arrays::WorldMapLockers in Init.
    struct Locker {
        float m_ratio;                                                // +0x00 1 - |locator y offset / map height|, from the "MapLimit" movie; 1.0 when missing
        int32_t m_questId;                                            // +0x04 quest that gates the locker, -1 when unset
        int32_t m_requiredState;                                      // +0x08 quest state the player needs; compared in Unlock
    };

    // Touch input. Embedded at +0xc4 (original size 0x24). Its primary vtable (glitch::IEventReceiver) is at +0x00,
    // and the dh2 IEventReceiver subobject is at +0x04. The drag anchor and the is_dragging flag are function-local
    // statics in the original, so they are not members.
    class InputHandler : public glitch::IEventReceiver, public ::IEventReceiver {
    public:
        // One touch, keyed by its id in m_touches. Original 8 bytes. Fields [0] and [1] are set on press, or on a
        // move while they are still zero, and after every move they take that move's position (once the pinch or
        // drag step of the move has read them, so they hold the previous contact during the pinch). Fields [2] and
        // [3] are set on press and on every move.
        struct TouchData {
            int16_t unk_0;                                            // +0x00 x of the first contact
            int16_t unk_2;                                            // +0x02 y of the first contact
            int16_t unk_4;                                            // +0x04 x of the latest contact
            int16_t unk_6;                                            // +0x06 y of the latest contact
        };

        ~InputHandler() override;                                     // +0x00, +0x04: D1 0x436d9c, D0 0x436e48 (CustomFree)
        bool onEvent(const glitch::SEvent& event) override;           // +0x08 0x435d7c: press starts a drag, release ends it, move pans, wheel zooms
        bool onEvent(const IEvent* event, const EventManager* manager) override;  // +0x0c 0x4372bc: touch begin and end, one-touch pan, two-touch pinch

        void drag(bool begin, int x, int y);                          // 0x435a5c: begin only records the anchor; otherwise pans the owner by the delta
        void zoom(float delta);                                       // 0x435d74: ZoomMap on the owner

        // Touch id -> TouchData. An STLport _Rb_tree in the original (0x14 bytes: header at +0x08, count at +0x18).
        std::map<long, TouchData> m_touches;                          // +0x08
        uint8_t pad_1c[4];                                            // +0x1c
        MenuWorldMap* m_owner;                                        // +0x20 the menu, set by the MenuWorldMap constructor
    };

    MenuWorldMap();                                                   // 0x43641c (C1) / 0x436580 (C2), calls Init
    // Overrides in vtable slot order. Slots +0x08 .. +0x4c are MenuBase's (MenuBase occupies +0x00 .. +0xc3).
    ~MenuWorldMap() override;                                         // +0x00, +0x04: D1 0x436ee0, D0 0x436f90; D2 0x436fac
    void Show() override;                                             // +0x0c 0x4371d0: attaches the input handler, sets the map position from the limit movie, then Unlock
    void Hide() override;                                             // +0x10 0x435e50: detaches the input handler, restores the player camera

    static MenuWorldMap* GetInstance();                               // 0x4364f8, function-local static
    // Registers the menu, finds the "WorldMapLimit" and "MapButtons" movies, and builds the four lockers.
    // The original returns 16556 on every path.
    int Init();                                                       // 0x4360ec
    // Raises m_lockerIndex to the highest locker whose quest state is reached (m_lockers[1..3]).
    void Unlock();                                                    // 0x43705c
    // Adds the delta to m_mapX and m_mapY, clamps it to the limit movie, and moves the map buttons movie.
    void DragMap(int dx, int dy);                                     // 0x43590c
    // Clamps m_zoom to [m_zoomMin, m_zoomMax] and rescales the map buttons movie.
    void ZoomMap(float delta);                                        // 0x435ae8
    // Display callback for the "MapButtons" movie. Empty in the original.
    static void RenderMap(gameswf::render_state& state, void* user);  // 0x435908

    // MenuBase base (size 0xc4)                                      // +0x00
    InputHandler m_input;                                             // +0xc4 (0x24 bytes), see above
    gameswf::character* m_worldMapLimit;                              // +0xe8 "WorldMapLimit" movie: the rectangle the map is clamped to
    gameswf::character* m_mapButtons;                                 // +0xec "MapButtons" movie: the map that DragMap and ZoomMap move
    int32_t m_mapX;                                                   // +0xf0 map x, set from the limit rectangle in Show
    int32_t m_mapY;                                                   // +0xf4 map y, set from the limit rectangle in Show
    Locker m_lockers[4];                                              // +0xf8 (4 x 12 bytes)
    int32_t m_lockerIndex;                                            // +0x128 furthest unlocked locker; DragMap and ZoomMap read its m_ratio
    bool unk_12c;                                                     // +0x12c when set, Unlock forces m_lockerIndex to 3 and skips the quest checks
    uint8_t pad_12d[3];                                               // +0x12d .. +0x12f
    float m_zoom;                                                     // +0x130 current zoom scale, 1.0 at construction
    float m_zoomMin;                                                  // +0x134 lower zoom clamp, 1.0
    float m_zoomMax;                                                  // +0x138 upper zoom clamp, 1.5
    float m_zoomStep;                                                 // +0x13c zoom per wheel unit, 1/128
};
