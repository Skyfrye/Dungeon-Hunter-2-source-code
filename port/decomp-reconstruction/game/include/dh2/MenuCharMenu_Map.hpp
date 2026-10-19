// MenuCharMenu_Map: the map sheet ("menu_MapSheet"), a function-local singleton (GetInstance). It draws the
// level map with an interactive map camera (a CameraLevel) and places icons for the player, monsters,
// merchants, quest objectives, room exits and map exits on it.
// Original 32-bit size: not recovered (static singleton); the members end at +0x1ec.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x453e28 / 0x453ccc, dtor 0x45440c).
#pragma once

#include <cstdint>
#include <list>
#include <utility>
#include <vector>

#include "dh2/MenuBase.hpp"
#include "dh2/Point3D.hpp"
#include "glitch-shared/glitch_core.hpp"

class CameraLevel;
class RoomZone;

namespace gameswf {
class character;
struct render_state;
}  // namespace gameswf

class MenuCharMenu_Map : public MenuBase {
public:
    // Icon categories, one std::vector per value in m_icons. Only the values with a named use are described.
    enum EIconType {
        ICON_0 = 0,                 // ShowObjectivesIcons, and the four debug bounding-box corners in Show
        ICON_1 = 1,                 // ShowMapExitsIcons, for objects of type 13
        ICON_2 = 2,                 // ShowMapExitsIcons, for objects of type 14
        ICON_3 = 3,                 // ShowPlayersIcons, the local player
        ICON_4 = 4,                 // ShowNpcIcons, Character::IsMonster
        ICON_5 = 5,
        ICON_6 = 6,
        ICON_7 = 7,                 // ShowPlayersIcons, the other players
        ICON_8 = 8,
        ICON_9 = 9,
        ICON_10 = 10,               // ShowNpcIcons, a Character with the flag byte at +762 set and +763 clear
        ICON_11 = 11,               // ShowNpcIcons, Character::IsMerchant
        ICON_12 = 12,               // ShowMapExitsIcons, for objects of type 12
        ICON_13 = 13,               // movie frame used for the room-exit icons (see RenderIconType)
        ICON_14 = 14,               // ShowRoomExitsIcons, exit kind 0
        ICON_15 = 15,               // ShowRoomExitsIcons, exit kind 1
        ICON_16 = 16,               // ShowRoomExitsIcons, exit kind 2
        ICON_17 = 17,               // ShowRoomExitsIcons, exit kind 3
        ICON_COUNT = 18,            // named in the assert text of RenderIconType and DuplicateIcon
    };

    MenuCharMenu_Map();                                                 // 0x453ccc / 0x453e28
    ~MenuCharMenu_Map() override;                                       // +0x00, +0x04 (0x454368, 0x4543f0); D2 0x45440c

    static MenuCharMenu_Map* GetInstance();                             // 0x453da4
    static void RenderMap(gameswf::render_state& state, void* user);    // 0x454108, display callback; user is the menu

    // Overrides of MenuBase slots, in vtable order.
    void Show() override;                                               // +0x0c 0x455138
    void Hide() override;                                               // +0x10 0x4537c0

    // Non-virtual methods.
    void Init();                                                        // 0x453c3c registers the menu, caches three movie clips
    void CreateMapCamera();                                             // 0x45351c
    void DestroyMapCamera();                                            // 0x453488
    void UpdateMapCamera();                                             // 0x45310c clamps the camera target to m_mapBoundsMin..m_mapBoundsMax
    void ResetZoom();                                                   // 0x45387c forwards to ZoomHandler::ResetZoom

    void ShowLevelName();                                               // 0x45335c
    void ShowPlayersIcons();                                            // 0x454a08
    void ShowNpcIcons();                                                // 0x454fb8
    void ShowMapExitsIcons();                                           // 0x454d5c
    void ShowRoomExitsIcons();                                          // 0x454b8c
    void ShowObjectivesIcons();                                         // 0x4548ac

    void ClearAllIcons();                                               // 0x453334
    void ClearIconType(EIconType type);                                 // 0x453224
    void DuplicateIcon(EIconType type, const glitch::core::vector3d<float>& pos);  // 0x454504
    void RenderAllIcons(const gameswf::rect& rect);                     // 0x454030
    void RenderIconType(EIconType type, const gameswf::rect& rect, float minScale);  // 0x453974
    glitch::core::vector2d<float> GetMapScreenCoord(const Point3D<float>& pos, float width, float height,
                                                    float centerX, float centerY);  // 0x45389c

    bool IsInsideRooms(const Point3D<float>& pos, bool visited) const;  // 0x453be8 tests m_visitedRooms when visited, else m_unvisitedRooms
    bool IsPointInsideRenderZone(int x, int y);                         // 0x4533ec tests against the bounds of m_renderMap

    // MenuBase occupies +0x00 .. +0xc3.
    std::list<RoomZone*> m_visitedRooms;                                // +0xc4 list head (8 bytes), RoomZone* per node; Show fills it with visited zones
    std::list<RoomZone*> m_unvisitedRooms;                              // +0xcc list head (8 bytes), the zones not yet visited
    Point3D<float> m_mapBoundsMin;                                      // +0xd4 bounding box of the visited rooms, built in Show
    Point3D<float> m_mapBoundsMax;                                      // +0xe0
    Point3D<float> m_playerPos;                                         // +0xec local player position, set by ShowPlayersIcons
    gameswf::character* m_mapIconsDummy;                                // +0xf8 "MapIconsDummy", the sprite the icons are added to
    gameswf::character* m_mapName;                                      // +0xfc "MapName", the text field ShowLevelName fills
    gameswf::character* m_renderMap;                                    // +0x100 "RenderMap", the clip whose rect bounds the map
    std::vector<std::pair<gameswf::character*, glitch::core::vector3d<float>>> m_icons[ICON_COUNT];  // +0x104, 12 bytes per icon type
    float m_iconBaseScale;                                              // +0x1dc set to 1.19921875 by the ctor, base scale of the icons (RenderIconType)
    float m_iconMinScale;                                               // +0x1e0 set to 0.3984375 by the ctor, minimum scale for icon types 0..3, 7..9 (RenderAllIcons)
    bool unk_1e4;                                                       // +0x1e4 cleared by the ctor. A Track A note (IDA 0x43aa58) says a caller stores an argument here; no reads in the class
    CameraLevel* m_mapCamera;                                           // +0x1e8 map camera, operator new(0xa8), created by CreateMapCamera
};
