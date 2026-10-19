// Batch g1-game-world-LevelMap-f6cfca-0: the whole of LevelMap, the world-map view for one map id. The constructor,
// the destructors, Draw, Update, Load and Unload. Declarations come from dh2/LevelMap.hpp, which already declares every
// method here and the m_levelId member at +0x04. Original 32-bit size 0x8.
//
// The original emits C1 and C2 with the same body, and D1 and D2 with the same body, so one C++ definition covers each
// pair. The deleting destructor D0 at 0x3f9d5c is compiler-generated and has no definition here.
//
// Hex-Rays gives Update, Load and Unload a non-void return type. Each returns the r0 left by its last call, and
// MenuManager::Update, HideAll, PushMenu and PopMenu are void in dh2/MenuManager.hpp. The functions are void here.
// MenuManager::GetInstance is a plain read of a global, and MenuWorldMap::GetInstance is a function-local static, so
// the repeated GetInstance calls below have no effect beyond the ones the original makes.

#include "dh2/LevelMap.hpp"

#include "dh2/MenuManager.hpp"
#include "dh2/MenuWorldMap.hpp"

// 0x3f9c6c LevelMap::LevelMap(int)   (C2, _ZN8LevelMapC2Ei)
// 0x3f9c94 LevelMap::LevelMap(int)   (C1, _ZN8LevelMapC1Ei): same body, covered by this definition.
// The compiler stores the vptr at +0x00. The map id goes to +0x04.
LevelMap::LevelMap(int levelId)
    : m_levelId(levelId) {  // +0x04
}

// 0x3f9cbc LevelMap::~LevelMap()   (D2, _ZN8LevelMapD2Ev)
// 0x3f9cc0 LevelMap::~LevelMap()   (D1, _ZN8LevelMapD1Ev): both bodies are empty in the original, so one definition
// covers both. The original has no other member to destroy and no base class.
LevelMap::~LevelMap() {
}

// 0x3f9ce4 LevelMap::Draw() const
// MenuManager::Draw(false): the whole menu stack draws, not only the HUD.
void LevelMap::Draw() const {
    MenuManager::GetInstance()->Draw(false);
}

// 0x3f9cf8 LevelMap::Update()
// MenuManager::Update(false): the whole menu stack updates, not only the HUD.
void LevelMap::Update() {
    MenuManager::GetInstance()->Update(false);
}

// 0x3f9d0c LevelMap::Unload()
// Pops the MenuWorldMap menu from the MenuManager. Nothing happens when the MenuWorldMap singleton is null.
void LevelMap::Unload() {
    MenuWorldMap* worldMap = MenuWorldMap::GetInstance();
    if (worldMap != nullptr) {
        MenuManager::GetInstance()->PopMenu(worldMap);
    }
}

// 0x3f9d30 LevelMap::Load()
// Hides every menu on the MenuManager, then pushes the MenuWorldMap menu. The push is skipped when the MenuWorldMap
// singleton is null.
void LevelMap::Load() {
    MenuManager::GetInstance()->HideAll();
    MenuWorldMap* worldMap = MenuWorldMap::GetInstance();
    if (worldMap != nullptr) {
        MenuManager::GetInstance()->PushMenu(worldMap);
    }
}

// 0x3f9d5c LevelMap::~LevelMap()   (D0, _ZN8LevelMapD0Ev)
// Skipped: the compiler generates the deleting destructor for `delete`. It runs ~LevelMap() and then CustomFree(this).
