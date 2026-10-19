// LevelMap: the world-map view for one map id. Load hides the other menus and pushes the world map menu
// onto the MenuManager; Unload pops it again. Update and Draw forward to the MenuManager with hudOnly false.
// Original 32-bit size 0x8 (8): the vptr and m_levelId. The vtable is 16 bytes: offset-to-top and typeinfo,
// then the two destructor slots.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3f9c94, Load 0x3f9d30, Unload 0x3f9d0c).
#pragma once

class LevelMap {
public:
    explicit LevelMap(int levelId);                 // 0x3f9c6c (C2) / 0x3f9c94 (C1)
    virtual ~LevelMap();                            // slot +0x00 0x3f9cc0 (D1), slot +0x04 0x3f9d5c (D0); 0x3f9cbc (D2) is empty

    void Draw() const;                              // 0x3f9ce4: MenuManager::Draw(false)
    void Update();                                  // 0x3f9cf8: MenuManager::Update(false)
    void Unload();                                  // 0x3f9d0c: pops the MenuWorldMap menu
    void Load();                                    // 0x3f9d30: hides all menus, then pushes the MenuWorldMap menu

    // LevelMap occupies +0x00 .. +0x07.
    int m_levelId;                                  // +0x04 map id from the ctor argument; no method reads it
};
