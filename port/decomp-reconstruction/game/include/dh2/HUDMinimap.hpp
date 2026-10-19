// HUDMinimap: the minimap menu ("menu_miniMap"), a MenuBase singleton (GetInstance). It owns the map camera
// (a CameraLevel built from the "MiniMap" CamAnimSet), the list of visited RoomZones, the icon movie characters
// with their Point3D positions, and a DebugCachedCharacter for the "RenderMap" clip.
// Original 32-bit size at least 0x41c (1052): the last member recovered here ends at that offset.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x41cbe0 / 0x41cd74, GetInstance 0x41cce0,
// Show 0x41c9e4, Hide 0x41b43c, Update 0x41c7b0, SetIconFrames 0x41cff4, UpdateIconPositions 0x41b9bc,
// CreateMapCamera 0x41be88, SetRoomVisibility 0x41d384).
#pragma once

#include <cstdint>
#include <list>

#include "dh2/DebugCachedCharacter.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/Point2D.hpp"
#include "dh2/Point3D.hpp"

class CameraBase;
class CameraLevel;
class GameObject;
class Level;
class RoomZone;

namespace gameswf {
class character;
class render_state;
}  // namespace gameswf

namespace glitch {
namespace scene {
class ISceneNode;
}  // namespace scene
}  // namespace glitch

class HUDMinimap : public MenuBase {
public:
    HUDMinimap(const char* name);                                       // 0x41cbe0 (C1), 0x41cd74 (C2)
    ~HUDMinimap() override;                                             // +0x00, +0x04: 0x41c17c (D1), 0x41c1f0 (D0), 0x41c20c (D2)

    static HUDMinimap* GetInstance();                                   // 0x41cce0 static local, built with "menu_miniMap"

    // Overrides of MenuBase slots, in vtable order. MenuBase's other slots (+0x08 .. +0x4c) are inherited.
    void Show() override;                                               // +0x0c 0x41c9e4
    void Hide() override;                                               // +0x10 0x41b43c
    void Update() override;                                             // +0x1c 0x41c7b0

    // New virtual slots of HUDMinimap, in vtable order.
    virtual void SetEnemies();                                          // +0x50 0x41b55c, empty
    virtual void SetObjects();                                          // +0x54 0x41b560, empty
    virtual void SetObjectives();                                       // +0x58 0x41b564, empty
    virtual void InitAllObjects();                                      // +0x5c 0x41b5ec
    virtual void SetObjectsVisibility(Level* level);                    // +0x60 0x41b8b4
    virtual void SetRoomVisibility(glitch::scene::ISceneNode* node);    // +0x64 0x41d384
    virtual void SetIconFrames(HUDMinimap* menu);                       // +0x68 0x41cff4
    virtual void HideAllIcons();                                        // +0x6c 0x41b628
    virtual void InitAllIcons();                                        // +0x70 0x41b568
    virtual void UpdateIconPositions(HUDMinimap* menu, gameswf::rect rect);  // +0x74 0x41b9bc
    virtual void RegisterDisplayCallback();                             // +0x78 0x41c058
    virtual void RegisterToMenuManager();                               // +0x7c 0x41c088
    virtual void InitAll();                                             // +0x80 0x41b404
    virtual void CreateMapCamera();                                     // +0x84 0x41be88
    virtual void DestroyMapCamera();                                    // +0x88 0x41b4a8
    virtual void EnableMapCamera();                                     // +0x8c 0x41be78
    virtual CameraBase* DisableMapCamera();                             // +0x90 0x41b4d8, returns EnableGameCamera through the vtable
    virtual CameraBase* EnableGameCamera();                             // +0x94 0x41be34
    virtual void ResetTranslation();                                    // +0x98 0x41b4ec

    // Non-virtual.
    Point2D<float> GetMapScreenCoord(const Point3D<float>& position, float scaleX, float scaleY,
                                     float offsetX, float offsetY);     // 0x41b790
    bool IsInsideVisitedRooms(const Point3D<float>& position);          // 0x41b868

    // Display callback registered as "RenderMap"; the user pointer is the HUDMinimap.
    static void RenderMap(gameswf::render_state& render, void* menu);   // 0x41c4a0

    // MenuBase occupies +0x00 .. +0xc3.
    bool unk_c4;                                                        // +0xc4 0 at construction; Show sets it, Hide clears it
    uint8_t pad_c5[3];                                                  // +0xc5 .. +0xc7
    int32_t unk_c8;                                                     // +0xc8 count for the unk_ec icons (UpdateIconPositions loop bound)
    int32_t unk_cc;                                                     // +0xcc count for the unk_13c icons
    int32_t unk_d0;                                                     // +0xd0 count for the unk_11c icons and the unk_3fc objects
    int32_t unk_d4;                                                     // +0xd4 count for the unk_fc icons and the unk_3dc objects
    int32_t unk_d8;                                                     // +0xd8 count for the unk_16c icons
    int32_t unk_dc;                                                     // +0xdc counter of the "MapIconsStatic<n>" names, 5 at the start of SetIconFrames
    CameraLevel* m_mapCam;                                              // +0xe0 map camera; the assert in CreateMapCamera names it m_mapCam
    std::list<RoomZone*> m_visitedRooms;                                // +0xe4 rooms that have been visited, rebuilt by SetRoomVisibility
    gameswf::character* unk_ec[4];                                      // +0xec icons, count unk_c8, SetIconFrames frame 3
    gameswf::character* unk_fc[8];                                      // +0xfc icons, count unk_d4, SetIconFrames frame 1
    gameswf::character* unk_11c[8];                                     // +0x11c icons, count unk_d0, SetIconFrames frame 2
    gameswf::character* unk_13c[12];                                    // +0x13c icons, count unk_cc, SetIconFrames frame 0
    gameswf::character* unk_16c[12];                                    // +0x16c icons, count unk_d8, SetIconFrames frame 4
    DebugCachedCharacter m_renderMap;                                   // +0x19c "RenderMap" clip
    Point3D<float> unk_1cc[4];                                          // +0x1cc positions of the unk_ec icons
    Point3D<float> unk_1fc[8];                                          // +0x1fc positions of the unk_fc icons
    Point3D<float> unk_25c[8];                                          // +0x25c positions of the unk_11c icons
    Point3D<float> unk_2bc[12];                                         // +0x2bc positions of the unk_13c icons
    Point3D<float> unk_34c[12];                                         // +0x34c positions of the unk_16c icons
    GameObject* unk_3dc[8];                                             // +0x3dc objects tested by SetObjectsVisibility with unk_d4
    GameObject* unk_3fc[8];                                             // +0x3fc objects tested by SetObjectsVisibility with unk_d0
};
