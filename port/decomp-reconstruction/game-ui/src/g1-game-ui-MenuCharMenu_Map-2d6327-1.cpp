// MenuCharMenu_Map bodies, batch g1-game-ui-MenuCharMenu_Map-2d6327-1 (part 2 of 2 of MenuCharMenu_Map).
// Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so. Offsets in comments are the original 32-bit ARM
// offsets. Partial functions say in their comment which part is missing and what it waits on.
//
// Icon positions are glitch::core::vector3d<float> (DuplicateIcon takes that type). Map and object tests take
// Point3D<float>. Both are three floats, X, Y and Z, and are converted field by field.

#include <cstdio>
#include <cstdlib>
#include <string>
#include <utility>

#include "dh2/CameraLevel.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuCharMenu_Map.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/Level.hpp"
#include "dh2/SpawnPoint.hpp"
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/RoomZone.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/global/net_singletons.hpp"
#include "gameswf/gameswf_sprite.h"
#include "glitch-scene-collada-gui/scene/CEmptySceneNode.hpp"
#include "net-session-online/c_online.hpp"
#include <limits>
#include "dh2/Objective.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectListItem.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Quest.hpp"
#include "dh2/Vector3DFList.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"

// Global assert level (libDungeonHunter2.so gAssertLevel), declared as in HUDMinimap.cpp.
extern int gAssertLevel;

namespace {

// Point3D<float> to glitch::core::vector3d<float>, component by component.
glitch::core::vector3d<float> ToVector3d(const Point3D<float>& p) {
    return glitch::core::vector3d<float>{p.X, p.Y, p.Z};
}

// Per-node body of the ShowMapExitsIcons walk: the three checks the original runs on each object of
// ObjectManager::m_objectMap, in key order. levelEntryPointId is Level::m_entryPointId (Level +0x110) of the current level.
// The original resolves the node's handle again for each check; it is resolved once here, because nothing
// between the checks changes the object table. Types 12, 13 and 14 are GameObjects (they have a position),
// so the GameObject fields are read after the type test.
[[maybe_unused]] void ShowMapExitIconsForNode(MenuCharMenu_Map& menu, ObjectBase* node, int levelEntryPointId) {
    if (node == nullptr) {
        return;
    }
    ObjectBase* object = node->GetHandle().GetObject(false);

    // Type 13 (spawn object), with m_entryPointId (GameObject +0x374) equal to the level's, enabled (+0x8a),
    // inside the visited rooms. Icon 1.
    if (object != nullptr && static_cast<int>(object->m_goId) == 13) {
        GameObject* spawn = static_cast<GameObject*>(object);
        if (static_cast<SpawnPoint*>(object)->m_entrypointId == levelEntryPointId && object->m_enabled &&  // SpawnPoint +0x374 (W2)
            menu.IsInsideRooms(spawn->m_position, true)) {
            menu.DuplicateIcon(MenuCharMenu_Map::ICON_1, ToVector3d(spawn->m_position));
        }
    }

    // Type 14, enabled, inside the visited rooms. Icon 2.
    if (object != nullptr && static_cast<int>(object->m_goId) == 14) {
        GameObject* exitObject = static_cast<GameObject*>(object);
        if (object->m_enabled && menu.IsInsideRooms(exitObject->m_position, true)) {
            menu.DuplicateIcon(MenuCharMenu_Map::ICON_2, ToVector3d(exitObject->m_position));
        }
    }

    // Type 12, inside the visited rooms (no enabled test). Icon 12.
    if (object != nullptr && static_cast<int>(object->m_goId) == 12) {
        GameObject* exitObject = static_cast<GameObject*>(object);
        if (menu.IsInsideRooms(exitObject->m_position, true)) {
            menu.DuplicateIcon(MenuCharMenu_Map::ICON_12, ToVector3d(exitObject->m_position));
        }
    }
}

// Online branch of ShowPlayersIcons (the COnline flag is set; see ShowPlayersIcons). Every player id in the
// PlayerManager list gets an icon; the local player (its id is the local record's +0x670) gets icon 3 and
// moves m_playerPos, the others get icon 7. Records with no character are skipped.
[[maybe_unused]] void ShowOnlinePlayersIcons(MenuCharMenu_Map& menu) {
    PlayerManager* players = dword_99F76C;
    const int localInternalId = players->GetLocalPlayer(0, false)->unk_670;  // +0x670
    for (int internalId : players->m_playerIdList) {  // PlayerManager +0x6a8 (begin) .. +0x6ac (end)
        Character* character = players->GetPlayerByInternalID(internalId, false)->unk_660;  // +0x660
        if (character == nullptr) {
            continue;
        }
        if (internalId == localInternalId) {
            menu.DuplicateIcon(MenuCharMenu_Map::ICON_3, ToVector3d(character->m_position));
            menu.m_playerPos = character->m_position;
        } else {
            menu.DuplicateIcon(MenuCharMenu_Map::ICON_7, ToVector3d(character->m_position));
        }
    }
}

// Offline branch of ShowPlayersIcons: the local player at index 0 (the original passes the flag byte, which is
// zero on this path) gets icon 3 and sets m_playerPos, when its character exists.
[[maybe_unused]] void ShowOfflineLocalPlayerIcon(MenuCharMenu_Map& menu) {
    Character* character = dword_99F76C->GetLocalPlayer(0, true)->unk_660;  // +0x660
    if (character == nullptr) {
        return;
    }
    menu.DuplicateIcon(MenuCharMenu_Map::ICON_3, ToVector3d(character->m_position));
    menu.m_playerPos = character->m_position;
}

}  // namespace

// 0x45440c _ZN16MenuCharMenu_MapD2Ev
// Base-object destructor with the same body as the D1 complete-object destructor at 0x454368 (the Hex-Rays pseudocode is identical).
// One C++ destructor serves both forms, as for HUDMinimap, so there is no definition in this file. The single
// definition of MenuCharMenu_Map::~MenuCharMenu_Map() is in game-ui/src/g1-game-ui-MenuCharMenu_Map-2d6327-0.cpp
// (the 0x454368 row). A second definition here fails to link ("multiple definition") when both parts are built.

// 0x454504 _ZN16MenuCharMenu_Map13DuplicateIconENS_9EIconTypeERKN6glitch4core8vector3dIfEE
// The map dummy (m_mapIconsDummy, +0xf8) is cloned under the name "MapIcon_<n>" at the highest depth of its parent sprite, the
// clone goes to movie frame 13 for types 14..17 (the type own frame otherwise), and (clone, position) is recorded in
// m_icons[type]. For a type past ICON_COUNT the original reports the failed assert and then writes past the end of m_icons
// (undefined behaviour); this rebuild stops after the report.
void MenuCharMenu_Map::DuplicateIcon(EIconType type, const glitch::core::vector3d<float>& pos) {
    const int iconType = static_cast<int>(type);
    if (iconType > 17) {  // ICON_COUNT is 18
        if (gAssertLevel == 2) {
            std::abort();  // the original writes address 0 here to force a crash
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "iconType < ICON_COUNT",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\CharacterMenu\\MenuCharMenu_Map.cpp", 625);
        }
        return;
    }

    static int s_nextIconIndex = 0;  // MenuCharMenu_Map::DuplicateIcon(...)::i, post-incremented
    char buffer[100];
    std::snprintf(buffer, sizeof(buffer), "MapIcon_%d", s_nextIconIndex++);
    const std::string name = buffer;
    gameswf::character* dummy = m_mapIconsDummy;
    gameswf::sprite_instance* parent = static_cast<gameswf::sprite_instance*>(dummy->get_parent());
    const int depth = parent->get_highest_depth();
    gameswf::character* clone = dummy->clone_display_object(::tu_string(name.c_str()), depth);  // vtable +0xd4
    clone->goto_frame((iconType >= 14 && iconType <= 17) ? 13 : iconType);                             // vtable +0x14c
    m_icons[iconType].push_back(std::make_pair(clone, pos));
}

// 0x4548ac _ZN16MenuCharMenu_Map19ShowObjectivesIconsEv
// For the local player's current quest (when it is in range), each objective's GetPositions list gets an icon 0.
void MenuCharMenu_Map::ShowObjectivesIcons() {
    const int currentQuest = dword_99F76C->GetLocalPlayer(0, true)->unk_660->SG_GetCurrentQuest(-1);
    const int numQuests = dword_99F76C->GetLocalPlayer(0, true)->unk_660->SG_GetNumQuests(-1);
    // Hex-Rays: v6 = CurrentQuest < -1; if (CurrentQuest != -1) v6 = CurrentQuest < NumQuests.
    const bool inRange = (currentQuest != -1) ? (currentQuest < numQuests) : (currentQuest < -1);
    if (!inRange) {
        return;
    }
    Quest* quest = dword_99F76C->GetLocalPlayer(0, true)->unk_660->SG_GetQuestByID(currentQuest, -1);
    if (quest == nullptr) {
        return;
    }
    const int objectiveCount = quest->m_objectives.m_count;  // Quest +0x2c
    if (objectiveCount <= 0) {
        return;
    }
    for (int i = 0; i != objectiveCount; ++i) {
        Objective* objective = quest->m_objectives.m_objectives[i];  // ObjectiveList +0x04
        Vector3DFList positions;
        objective->GetPositions(positions);  // vtable +0x20
        for (int j = 0; j < positions.getCount(); ++j) {
            DuplicateIcon(ICON_0, positions[j]);
        }
    }
}

// 0x454a08 _ZN16MenuCharMenu_Map16ShowPlayersIconsEv
// Online (the COnline flag): every player in the PlayerManager list gets an icon, the local one icon 3 (and sets m_playerPos).
// Offline: the local player alone.
void MenuCharMenu_Map::ShowPlayersIcons() {
    if (GetOnline()->IsOnlineGame()) {
        ShowOnlinePlayersIcons(*this);
    } else {
        ShowOfflineLocalPlayerIcon(*this);
    }
}

// 0x454b8c _ZN16MenuCharMenu_Map18ShowRoomExitsIconsEv
// Walks the exits of the level's PFWorld (PFWorld::m_exitPositions, +0x84 .. +0x88, 16 bytes each). An exit whose
// position is in a visited room, and whose point 3000 units beyond in its direction is in an unvisited room, gets an
// icon at that position with the floor height. The direction and icon come from the exit kind:
//   EXIT_EAST (2): +X, icon 16      EXIT_WEST (3): -X, icon 17
//   EXIT_SOUTH (1): -Y, icon 15     any other kind: +Y, icon 14
void MenuCharMenu_Map::ShowRoomExitsIcons() {
    for (const auto& exitEntry : PFWorld::s_inst.m_exitPositions) {
        float dirX = 0.0f;
        float dirY = 0.0f;
        EIconType icon = ICON_14;
        switch (exitEntry.first) {
            case PFWorld::EXIT_EAST:
                dirX = 1.0f;
                dirY = 0.0f;
                icon = ICON_16;
                break;
            case PFWorld::EXIT_WEST:
                dirX = -1.0f;
                dirY = 0.0f;
                icon = ICON_17;
                break;
            case PFWorld::EXIT_SOUTH:
                dirX = 0.0f;
                dirY = -1.0f;
                icon = ICON_15;
                break;
            default:
                dirX = 0.0f;
                dirY = 1.0f;
                icon = ICON_14;
                break;
        }

        const glitch::core::vector3d<float>& exitPos = exitEntry.second;
        const float x = exitPos.X;
        const float y = exitPos.Y;
        const float z = exitPos.Z;
        if (!IsInsideRooms(Point3D<float>{x, y, z}, true)) {
            continue;
        }
        // The original's (float)(dir * 3000.0) is exact for dir in {-1, 0, 1}.
        const Point3D<float> beyond{dirX * 3000.0f + x, dirY * 3000.0f + y, z};
        if (!IsInsideRooms(beyond, false)) {
            continue;
        }
        // Floor height at (x, y, 0). The output starts at 0 and stays 0 when no floor is found.
        float height = 0.0f;
        const Point3D<float> ground{x, y, 0.0f};
        PFWorld::s_inst.GetFloorHeightAt(ground, &height, nullptr, nullptr, nullptr, false);
        DuplicateIcon(icon, glitch::core::vector3d<float>{x, y, height});
    }
}

// 0x454d5c _ZN16MenuCharMenu_Map17ShowMapExitsIconsEv
// Runs ShowMapExitIconsForNode on every object of ObjectManager::m_objectMap in key order, with the current level's entry
// point id (Level +0x110). The original reads that id only inside the type 13 check, so a missing level is handled here
// by passing 0; the original would fault on that path.
void MenuCharMenu_Map::ShowMapExitsIcons() {
    const Level* level = ApplicationGetInstance().GetCurrentLevel();
    const int entryPointId = (level != nullptr) ? level->m_entryPointId : 0;
    for (auto& entry : dword_99F764->m_objectMap) {
        ShowMapExitIconsForNode(*this, entry.second.m_object, entryPointId);
    }
}

// 0x454fb8 _ZN16MenuCharMenu_Map12ShowNpcIconsEv
// Walks ObjectManager::m_characters. A character with a visual object that is visible, with its m_visible flag set,
// that is not dead and is inside the visited rooms, gets:
//   a monster: icon 4
//   the flag byte at +0x2fa set and the one at +0x2fb clear: icon 10
//   a merchant: icon 11
void MenuCharMenu_Map::ShowNpcIcons() {
    for (Character* character : dword_99F764->m_characters) {  // ObjectManager +0x60
        if (character == nullptr) {
            continue;
        }
        if (character->m_visualObject == nullptr || !character->m_visualObject->IsVisible()) {  // +0x2d8
            continue;
        }
        if (!character->m_visible) {  // ObjectBase +0x80
            continue;
        }
        if (character->IsDead()) {  // vtable +0x34
            continue;
        }
        if (!IsInsideRooms(character->m_position, true)) {  // +0x160
            continue;
        }
        const glitch::core::vector3d<float> pos = ToVector3d(character->m_position);
        if (character->IsMonster()) {
            DuplicateIcon(ICON_4, pos);
            continue;
        }
        if (character->unk_2fa != 0 && character->unk_2fb == 0) {  // GameObject +0x2fa, +0x2fb
            DuplicateIcon(ICON_10, pos);
            continue;
        }
        if (character->IsMerchant()) {
            DuplicateIcon(ICON_11, pos);
        }
    }
}

// 0x455138 _ZN16MenuCharMenu_Map4ShowEv
// The RenderMap callback is registered and MenuBase::Show runs. With a map root node and a local character: the root is made
// visible, the room zones are split into the visited and unvisited lists, the map bounds are the union of the boxes of the root
// children whose centre lies in a visited room (each child gets visible = that result), widened by their own size on every side
// (z cleared), the icons and the level name are rebuilt (plus four debug corner icons under the switch), and the map camera is
// created.
void MenuCharMenu_Map::Show() {
    m_menu->RegisterDisplayCallback("RenderMap", &MenuCharMenu_Map::RenderMap, this);  // MenuFX base at this+4
    MenuBase::Show();
    glitch::scene::CEmptySceneNode* mapRoot = DeviceSceneManager()->m_nodeMapRoot;
    if (mapRoot == nullptr) {
        return;
    }
    mapRoot->setVisible(true);  // ISceneNode vtable +0x48
    if (dword_99F76C->GetLocalPlayer(0, true)->unk_660 == nullptr) {
        return;
    }
    m_visitedRooms.clear();
    m_unvisitedRooms.clear();
    for (RoomZone* room : dword_99F764->unk_24) {  // ObjectManager +0x24
        if (room->HasBeenVisited()) {
            m_visitedRooms.push_back(room);
        } else {
            m_unvisitedRooms.push_back(room);
        }
    }
    const float kFloatMax = std::numeric_limits<float>::max();
    m_mapBoundsMax.Z = -kFloatMax;
    m_mapBoundsMin.X = kFloatMax;
    m_mapBoundsMax.X = -kFloatMax;
    m_mapBoundsMax.Y = -kFloatMax;
    m_mapBoundsMin.Y = kFloatMax;
    m_mapBoundsMin.Z = kFloatMax;
    const glitch::scene::SChildList& children = mapRoot->getChildren();
    if (children.empty()) {
        m_mapBoundsMin.X = 0.0f;
        m_mapBoundsMax.X = 0.0f;
    } else {
        for (glitch::scene::ISceneNode* child : children) {
            const glitch::core::aabbox3d<float>& box = child->getTransformedBoundingBox();  // vtable +0x34
            const float minX = box.MinEdge.X;
            const float minY = box.MinEdge.Y;
            const float minZ = box.MinEdge.Z;
            const float maxX = box.MaxEdge.X;
            const float maxY = box.MaxEdge.Y;
            const float maxZ = box.MaxEdge.Z;
            const Point3D<float> center{(minX + maxX) * 0.5f, (minY + maxY) * 0.5f, (minZ + maxZ) * 0.5f};
            const bool inside = IsInsideRooms(center, true);
            child->setVisible(inside);  // vtable +0x48
            if (inside) {
                m_mapBoundsMin.X = minX < m_mapBoundsMin.X ? minX : m_mapBoundsMin.X;
                m_mapBoundsMin.Y = minY < m_mapBoundsMin.Y ? minY : m_mapBoundsMin.Y;
                m_mapBoundsMax.X = maxX > m_mapBoundsMax.X ? maxX : m_mapBoundsMax.X;
                m_mapBoundsMax.Y = maxY > m_mapBoundsMax.Y ? maxY : m_mapBoundsMax.Y;
            }
        }
        if (m_mapBoundsMax.X < m_mapBoundsMin.X) {
            m_mapBoundsMin.X = 0.0f;
            m_mapBoundsMax.X = 0.0f;
        }
    }
    if (m_mapBoundsMin.Y > m_mapBoundsMax.Y) {
        m_mapBoundsMin.Y = 0.0f;
        m_mapBoundsMax.Y = 0.0f;
    }
    m_mapBoundsMin.Z = 0.0f;
    m_mapBoundsMax.Z = 0.0f;
    const float sizeX = m_mapBoundsMax.X - m_mapBoundsMin.X;
    const float sizeY = m_mapBoundsMax.Y - m_mapBoundsMin.Y;
    m_mapBoundsMin.X = m_mapBoundsMin.X - sizeX;
    m_mapBoundsMin.Y = m_mapBoundsMin.Y - sizeY;
    m_mapBoundsMax.X = m_mapBoundsMax.X + sizeX;
    m_mapBoundsMax.Y = m_mapBoundsMax.Y + sizeY;
    ClearAllIcons();
    ShowPlayersIcons();
    ShowNpcIcons();
    ShowMapExitsIcons();
    ShowRoomExitsIcons();
    ShowObjectivesIcons();
    ShowLevelName();
    DebugSwitches::GetInstance()->load();
    if (DebugSwitches::GetInstance()->GetSwitch("isDisplayingMiniMapBoundingBox")) {
        DuplicateIcon(ICON_0, glitch::core::vector3d<float>{m_mapBoundsMin.X, m_mapBoundsMax.Y, 0.0f});
        DuplicateIcon(ICON_0, glitch::core::vector3d<float>{m_mapBoundsMin.X, m_mapBoundsMin.Y, 0.0f});
        DuplicateIcon(ICON_0, glitch::core::vector3d<float>{m_mapBoundsMax.X, m_mapBoundsMax.Y, 0.0f});
        DuplicateIcon(ICON_0, glitch::core::vector3d<float>{m_mapBoundsMax.X, m_mapBoundsMin.Y, 0.0f});
    }
    CreateMapCamera();
}
