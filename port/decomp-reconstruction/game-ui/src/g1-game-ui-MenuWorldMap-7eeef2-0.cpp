// MenuWorldMap bodies, batch g1-game-ui-MenuWorldMap-7eeef2-0.
// Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so. Offsets in comments are the original 32-bit ARM
// offsets (MenuWorldMap is 0x140 bytes there; the layout is in dh2/MenuWorldMap.hpp).
//
// Facts used here:
//   - The C1 and C2 constructors, and the D1 and D2 destructors, have identical bodies. One definition serves each pair.
//   - The D0 (deleting) destructors are compiler-generated (the delete expression emits them), so they are skipped.
//   - GameSWFUtils::GetAbsoluteBoundingRect returns {xmin, xmax, ymin, ymax}. Every "rect[2]" and "rect[3]" below is a
//     y coordinate. The locker ratio and the map clamps therefore use the map's height.
//   - The locker movies are looked up by the name "MapLimit" with one more byte appended: the loop counter 1..4 itself
//     (the SXTB of R6 before push_back in Init, at 0x43622c), not a digit such as '1'. The name is reproduced as the
//     binary builds it. Whether the shipping SWF has clips with those names is not checked here.
//   - The character field read as +0x4c in ZoomMap is gameswf::character::m_local_matrix (DH2 layout in the vendored
//     gameswf_character.h): a pointer to the matrix the map buttons are drawn with.
//   - glitch::SEvent is the canonical glitch-core-io record: EventType (+0x00), MouseInput X (+0x08), Y (+0x0c),
//     Wheel (float, +0x10) and Event (+0x14), as the original reads them.
//   - dword_9A59F4 is read and written only by InputHandler::drag, so it is a function-local static there, next to
//     the x anchor. Both are zero before the first drag.
//   - The touch fields TouchData::unk_0 and unk_2 are rewritten after each move's pinch or drag step (see below).
//   - Init returns 16556 on every path (the original leaves that value in r0), so Init keeps the int return.

#include "dh2/MenuWorldMap.hpp"

#include <array>
#include <cmath>
#include <cstring>
#include <iterator>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/CameraBase.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/CameraTarget.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/EvTouchScreenMove.hpp"
#include "dh2/EvTouchScreenPress.hpp"
#include "dh2/EventManager.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/IEvent.hpp"
#include "dh2/IEventReceiver.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Quest.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/ZoomHandler.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"
#include "gameswf/gameswf.h"
#include "gameswf/gameswf_character.h"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"

namespace {

// Row `row` of Arrays::WorldMapLockers. The rows are host Structs::WorldMapLocker objects (vptr, OnState, QuestID), so the
// table is read through the typed element pointer; the original's 12-byte stride and +4 / +8 offsets do not hold on a 64-bit host.
const Structs::WorldMapLocker& WorldMapLockerRow(std::size_t row) {
    return reinterpret_cast<const Structs::WorldMapLocker*>(Arrays::WorldMapLockers::members)[row];
}

// Distance of two touch points, computed with the same float steps as the original (dx * dx + dy * dy, then sqrt).
float TouchDistance(float ax, float ay, float bx, float by) {
    const float dx = ax - bx;
    const float dy = ay - by;
    return std::sqrt(dx * dx + dy * dy);
}

}  // namespace

// 0x435908 MenuWorldMap::RenderMap(gameswf::render_state&, void*)
// Display callback of the "MapButtons" movie. Empty in the original (a bare return).
void MenuWorldMap::RenderMap(gameswf::render_state& /*state*/, void* /*user*/) {}

// 0x43590c MenuWorldMap::DragMap(int, int)
// Adds the delta to m_mapX and m_mapY, clamps both to the limit movie, and moves the map buttons movie. X is kept in
// [limit.xmin - |limit width - buttons width|, limit.xmin]. Y is kept in [limit.ymax, (|limit height - buttons height|
// + limit.ymax) * ratio], where ratio is the current locker's m_ratio. The original's branch structure is kept.
void MenuWorldMap::DragMap(int dx, int dy) {
    m_mapX = m_mapX + dx;  // +0xf0
    m_mapY += dy;          // +0xf4

    const std::array<float, 4> limit = GameSWFUtils::GetAbsoluteBoundingRect(m_worldMapLimit);
    const std::array<float, 4> buttons = GameSWFUtils::GetAbsoluteBoundingRect(m_mapButtons);
    const float ratio = m_lockers[m_lockerIndex].m_ratio;  // +0x128 index, Locker +0x00

    const int maxX = static_cast<int>(limit[0]);
    const int minX = maxX - static_cast<int>(std::fabs((limit[1] - limit[0]) - (buttons[1] - buttons[0])));
    if (minX <= m_mapX) {
        if (maxX < m_mapX) {
            m_mapX = maxX;
        }
    } else {
        m_mapX = minX;
    }

    const int maxY = static_cast<int>(limit[3]);
    const int capY = static_cast<int>(
        static_cast<float>(static_cast<int>(std::fabs((limit[3] - limit[2]) - (buttons[3] - buttons[2]))) +
                           static_cast<int>(limit[3])) *
        ratio);
    if (maxY <= m_mapY) {
        if (capY < m_mapY) {
            m_mapY = capY;
        }
    } else {
        m_mapY = maxY;
    }

    m_menu->SetPosition(m_mapButtons, m_mapX, m_mapY);
}

// 0x435a5c MenuWorldMap::InputHandler::drag(bool, int, int)
// A begin only records the anchor (x in displacement, y in dword_9A59F4). Otherwise the owner is panned by the
// distance from the anchor, and the anchor moves to the new point.
void MenuWorldMap::InputHandler::drag(bool begin, int x, int y) {
    static int displacement = 0;  // drag(bool,int,int)::displacement, the x anchor
    static int anchorY = 0;       // dword_9A59F4, the y anchor (read and written only here)
    if (!begin) {
        m_owner->DragMap(x - displacement, y - anchorY);
    }
    displacement = x;
    anchorY = y;
}

// 0x435ae8 MenuWorldMap::ZoomMap(float)
// The zoom moves by delta times m_zoomStep and is clamped to [m_zoomMin, m_zoomMax]. Nothing changes when the zoom is
// already at a limit and the step leaves it further out. Otherwise the map buttons matrix is rebuilt with the new
// scale, and the map is dragged so that the limit's centre keeps its place relative to the buttons. The original
// returns an int that no caller reads (1 on the early exits), so this one is void.
void MenuWorldMap::ZoomMap(float delta) {
    const float current = m_zoom;
    const float next = current + delta * m_zoomStep;
    if (current == m_zoomMin && !(next > m_zoomMin)) {
        return;
    }
    if (current == m_zoomMax && !(next < m_zoomMax)) {
        return;
    }

    float zoom = m_zoomMin;
    if (next >= m_zoomMin) {
        zoom = next;
    }
    if (m_zoomMax < zoom) {
        zoom = m_zoomMax;
    }
    m_zoom = zoom;

    // Buttons rectangle before the matrix change, and the locker ratio that scales the y extent.
    const std::array<float, 4> oldButtons = GameSWFUtils::GetAbsoluteBoundingRect(m_mapButtons);
    const float ratio = m_lockers[m_lockerIndex].m_ratio;
    const float oldYMaxScaled = ratio * oldButtons[3];

    // The matrix at +0x4c of the buttons movie, scaled about the origin (rotation kept).
    gameswf::matrix matrix = *m_mapButtons->m_local_matrix;
    const float rotation = matrix.get_rotation();
    matrix.set_scale_rotation(m_zoom, m_zoom, rotation);
    m_mapButtons->set_matrix(matrix);

    const std::array<float, 4> buttons = GameSWFUtils::GetAbsoluteBoundingRect(m_mapButtons);
    const float yMaxScaled = ratio * buttons[3];
    const std::array<float, 4> limit = GameSWFUtils::GetAbsoluteBoundingRect(m_worldMapLimit);

    const float centreX = (limit[1] - limit[0]) * 0.5f + limit[0];
    const float dx = (centreX - ((centreX - oldButtons[0]) / (oldButtons[1] - oldButtons[0])) *
                                    (buttons[1] - buttons[0])) -
                     oldButtons[0];

    const float centreY = limit[2] + (limit[3] - limit[2]) * 0.5f;
    const float dy = (centreY - ((centreY - oldYMaxScaled) / (oldYMaxScaled - oldButtons[2])) *
                                    (yMaxScaled - buttons[2])) -
                     oldYMaxScaled;

    DragMap(static_cast<int>(dx), static_cast<int>(dy));
}

// 0x435d74 MenuWorldMap::InputHandler::zoom(float)
void MenuWorldMap::InputHandler::zoom(float delta) {
    m_owner->ZoomMap(delta);
}

// 0x435d7c MenuWorldMap::InputHandler::onEvent(glitch::SEvent const&)
// Mouse input. Type 0 is not handled. Event 0 (left button down) starts a drag, 3 (button up) ends it, 6 (move) pans
// while a drag is on, and 7 (wheel) zooms. Handled events return true.
bool MenuWorldMap::InputHandler::onEvent(const glitch::SEvent& event) {
    static bool is_dragging = false;  // onEvent(glitch::SEvent const&)::is_dragging

    if (event.EventType == glitch::EET_GUI_EVENT) {  // type 0 is not handled (the original tests it for zero)
        return false;
    }
    switch (event.MouseInput.Event) {
    case glitch::EMIE_LMOUSE_PRESSED_DOWN:  // 0
        is_dragging = true;
        drag(true, event.MouseInput.X, event.MouseInput.Y);
        return true;
    case glitch::EMIE_LMOUSE_LEFT_UP:  // 3
        is_dragging = false;
        return true;
    case glitch::EMIE_MOUSE_MOVED:  // 6
        if (is_dragging) {
            drag(false, event.MouseInput.X, event.MouseInput.Y);
        }
        return true;
    case glitch::EMIE_MOUSE_WHEEL:  // 7
        zoom(event.MouseInput.Wheel);
        return true;
    default:
        return false;
    }
}

// 0x435e50 MenuWorldMap::Hide()
// Detaches the touch input from the EventManager, points the level camera back at the local player when there is a
// level and a player character, and hands the zoom handler the level camera (null without a level). Then MenuBase::Hide.
void MenuWorldMap::Hide() {
    dword_99F740->Detach(4, static_cast<::IEventReceiver*>(&m_input));
    dword_99F740->Detach(5, static_cast<::IEventReceiver*>(&m_input));

    Level* level = Singleton<Application>::s_inst.GetCurrentLevel();
    CameraLevel* camera = nullptr;
    if (level != nullptr) {
        camera = level->m_camera;  // Level +0x128
        Character* character = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
        if (camera != nullptr && character != nullptr) {
            static_cast<CameraTarget*>(camera)->SetTarget(character, 0);
            static_cast<CameraBase*>(camera)->SetActive();
            static_cast<CameraBase*>(camera)->Update();  // vtable +0x10
        }
    } else {
        dword_99F76C->GetLocalPlayer(0, true);  // result unused in the original
    }
    Singleton<Application>::s_inst.m_zoomHandler->setCamera(camera);
    MenuBase::Hide();
}

// 0x4360ec MenuWorldMap::Init()
// Registers the menu, finds the "WorldMapLimit" and "MapButtons" movies, and builds the four lockers. Each locker's
// ratio comes from the movie "MapLimit" plus the byte i (see the file comment), measured against the map buttons'
// y extent. Lockers 1..3 take their required state and quest id from the WorldMapLockers table. The original returns
// 16556 on every path.
int MenuWorldMap::Init() {
    MenuManager::GetInstance()->RegisterMenu(this);
    RenderFX* renderFX = m_menu;
    if (renderFX != nullptr) {
        m_worldMapLimit = renderFX->Find("WorldMapLimit", GetCurrentMenuContext());
        m_mapButtons = renderFX->Find("MapButtons", GetCurrentMenuContext());

        const std::array<float, 4> buttons = GameSWFUtils::GetAbsoluteBoundingRect(m_mapButtons);
        const float buttonsYMin = buttons[2];
        const float buttonsYMax = buttons[3];

        Locker* locker = m_lockers;
        for (int i = 1; i != 5; ++i) {
            std::string name = "MapLimit";
            name.push_back(static_cast<char>(i));
            gameswf::character* movie = renderFX->Find(name.c_str(), GetCurrentMenuContext());
            if (movie != nullptr) {
                const std::array<float, 4> rect = GameSWFUtils::GetAbsoluteBoundingRect(movie);
                locker->m_ratio = 1.0f - std::fabs((rect[2] - buttonsYMin) / (buttonsYMax - buttonsYMin));
            } else {
                locker->m_ratio = 1.0f;
            }
            locker->m_requiredState = -1;
            locker->m_questId = -1;
            ++locker;
        }

        m_lockers[1].m_requiredState = WorldMapLockerRow(0).OnState;
        m_lockers[1].m_questId = WorldMapLockerRow(0).QuestID;
        m_lockers[2].m_requiredState = WorldMapLockerRow(1).OnState;
        m_lockers[2].m_questId = WorldMapLockerRow(1).QuestID;
        m_lockers[3].m_requiredState = WorldMapLockerRow(2).OnState;
        m_lockers[3].m_questId = WorldMapLockerRow(2).QuestID;
    }
    return 16556;
}

// 0x43641c MenuWorldMap::MenuWorldMap()   (C1)
// 0x436580 MenuWorldMap::MenuWorldMap()   (C2): identical body. One definition serves both.
// The base is "menu_FastTravel". The input handler gets its owner, the lockers and the zoom constants are set, and Init
// runs. The original leaves m_worldMapLimit and m_mapButtons unwritten here (Init sets them); they start null.
MenuWorldMap::MenuWorldMap() : MenuBase("menu_FastTravel") {
    m_input.m_owner = this;  // +0xe4
    m_worldMapLimit = nullptr;
    m_mapButtons = nullptr;
    m_mapX = 0;
    m_mapY = 0;
    for (Locker& locker : m_lockers) {
        locker.m_ratio = 0.0f;
        locker.m_questId = 0;
        locker.m_requiredState = 0;
    }
    m_lockerIndex = 0;
    unk_12c = false;
    m_zoom = 1.0f;
    m_zoomMin = 1.0f;
    m_zoomMax = 1.5f;
    m_zoomStep = 1.0f / 128.0f;
    Init();
}

// 0x4364f8 MenuWorldMap::GetInstance()
// Function-local static, constructed on first use. The guard, the constructor call and the atexit registration are what
// the compiler emits for such a static.
MenuWorldMap* MenuWorldMap::GetInstance() {
    static MenuWorldMap instance;
    return &instance;
}

// 0x436d9c MenuWorldMap::InputHandler::~InputHandler()   (D1)
// The touch map is erased and the vptrs are set to the class's own. Its base destructors are empty, so an empty body
// with the map as a member gives the same result. D0 (0x436e48) is the deleting variant, skipped (see the ledger).
MenuWorldMap::InputHandler::~InputHandler() {}

// 0x436ee0 MenuWorldMap::~MenuWorldMap()   (D1)
// 0x436fac MenuWorldMap::~MenuWorldMap()   (D2): identical body. One definition serves both.
// The input handler's touch map is erased (the member destructor), then MenuBase::~MenuBase runs.
MenuWorldMap::~MenuWorldMap() {}

// 0x43705c MenuWorldMap::Unlock()
// With the debug flag at +0x12c set, the highest locker is forced to 3 and the quest checks are skipped. Otherwise each
// of lockers 1..3 whose quest (of the local player) is found, and whose required state the quest has reached, raises
// m_lockerIndex to its index. Each such hit also loads the debug switches and reads "isTracingWorldMapLockers".
void MenuWorldMap::Unlock() {
    if (unk_12c) {
        m_lockerIndex = 3;
        return;
    }

    Character* character = dword_99F76C->GetLocalPlayer(0, false)->unk_660;
    for (int i = 1; i != 4; ++i) {
        const Locker& locker = m_lockers[i];
        Quest* quest = character->SG_GetQuestByID(locker.m_questId, -1);
        if (quest != nullptr && locker.m_requiredState <= quest->m_state) {
            m_lockerIndex = (i < m_lockerIndex) ? m_lockerIndex : i;
            DebugSwitches::s_inst.load();
            DebugSwitches::s_inst.GetSwitch("isTracingWorldMapLockers");  // result unused in the original
        }
    }
}

// 0x4371d0 MenuWorldMap::Show()
// Registers the map's display callback, attaches the touch input (events 4 and 5), clears the level camera on the zoom
// handler, resets the zoom and the map position from the limit movie, unlocks the lockers and shows the base menu.
void MenuWorldMap::Show() {
    m_menu->RegisterDisplayCallback("MapButtons", &MenuWorldMap::RenderMap, this);
    dword_99F740->Attach(4, static_cast<::IEventReceiver*>(&m_input), 0);
    dword_99F740->Attach(5, static_cast<::IEventReceiver*>(&m_input), 0);
    Singleton<Application>::s_inst.m_zoomHandler->setCamera(nullptr);

    m_zoom = 1.0f;
    const std::array<float, 4> limit = GameSWFUtils::GetAbsoluteBoundingRect(m_worldMapLimit);
    m_mapX = static_cast<int>(limit[0]);
    m_mapY = static_cast<int>(limit[3]);
    m_menu->SetPosition(m_mapButtons, m_mapX, m_mapY);

    m_lockerIndex = 0;
    Unlock();
    MenuBase::Show();
}

// 0x4372bc MenuWorldMap::InputHandler::onEvent(IEvent const*, EventManager const*)
// Touch input (events 4 and 5). A press (flag set) records the touch's four fields and starts the drag. A release
// erases the touch. Both return whether more than one touch is down.
//
// A move fills in the touch's first contact when it is still zero, sets its latest contact to the move, and then
// either pans the map (one touch) or zooms by the change in the spread of the first two touches (two or more). The
// spread is measured from the first contact and from the latest contact of the first two entries in key order. After
// that step, the move's first contact is set to the move's position, so the next move measures from here. The move
// returns true only in the zoom case. Other events return false.
bool MenuWorldMap::InputHandler::onEvent(const IEvent* a2, const EventManager* /*manager*/) {
    switch (a2->getEventID()) {
    case EvTouchScreenPress::kEventId: {  // 4
        const auto* press = static_cast<const EvTouchScreenPress*>(a2);
        if (press->pressed) {
            TouchData& touch = m_touches[press->id];
            touch.unk_0 = press->x;
            touch.unk_2 = press->y;
            touch.unk_4 = press->x;
            touch.unk_6 = press->y;
            drag(true, press->x, press->y);
        } else {
            const auto it = m_touches.find(press->id);
            if (it != m_touches.end()) {
                m_touches.erase(it);
            }
        }
        return m_touches.size() > 1;
    }
    case EvTouchScreenMove::kEventId: {  // 5
        const auto* move = static_cast<const EvTouchScreenMove*>(a2);
        TouchData& touch = m_touches[move->id];
        if (touch.unk_0 == 0 && touch.unk_2 == 0) {
            touch.unk_0 = move->x;
            touch.unk_2 = move->y;
        }
        touch.unk_4 = move->x;
        touch.unk_6 = move->y;

        bool zoomed = false;
        if (m_touches.size() <= 1) {
            drag(false, move->x, move->y);
        } else {
            const auto first = m_touches.begin();
            const auto second = std::next(first);
            const TouchData& a = first->second;
            const TouchData& b = second->second;
            const float startSpread = TouchDistance(a.unk_0, a.unk_2, b.unk_0, b.unk_2);
            const float latestSpread = TouchDistance(a.unk_4, a.unk_6, b.unk_4, b.unk_6);
            zoom(latestSpread - startSpread);
            zoomed = true;
        }

        touch.unk_0 = move->x;
        touch.unk_2 = move->y;
        return zoomed;
    }
    default:
        return false;
    }
}

// 0x436e48 MenuWorldMap::InputHandler::~InputHandler()   (D0, deleting variant)
// Skipped: the compiler emits the deleting destructor (the D1 body, then CustomFree) for a delete expression. The
// InputHandler is embedded in MenuWorldMap, so no delete expression applies to it.

// 0x436f90 MenuWorldMap::~MenuWorldMap()   (D0, deleting variant)
// Skipped: the compiler emits the deleting destructor (the D1 body, then CustomFree) for a delete expression.
