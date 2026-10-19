// MenuFX: a RenderFX that drives a stack of menu States (one gameswf movie per MenuFX).
// Original 32-bit size: 0x124 (292, operator new(292) in MenuManager::LoadSWFFile).
// Offsets in comments are original 32-bit ARM offsets (host pointers are wider).
// MenuFX::State is the per-menu-page base of MenuBase and lives in this header.
#pragma once

#include <cstdint>

#include "dh2/RenderFX.hpp"

namespace gameswf {
class character;
}  // namespace gameswf

class MenuFX : public RenderFX, public RenderFX::EventListener {
public:
    // Base of every menu page (MenuBase derives from it). Original size 0x5c (92).
    class State {
    public:
        explicit State(const char* name);                     // 0x421f80
        virtual ~State();                                     // slot +0x00, +0x04 (0x421db4, 0x421e2c)
        virtual void Create();                                // +0x08  0x41f3cc
        virtual void Show();                                  // +0x0c  0x41f3d0
        virtual void Hide();                                  // +0x10  0x41f3d4
        virtual void GotFocus();                              // +0x14  0x41f3d8
        virtual void LostFocus();                             // +0x18  0x41f3dc
        virtual void Update();                                // +0x1c  0x41f3e0
        virtual void Update(int dt);                          // +0x20  0x41b3a4
        virtual void UpdateBackground();                      // +0x24  0x41b3b8
        virtual void UpdateBackground(int dt);                // +0x28  0x41b3bc
        virtual void OnEvent(RenderFX::Event& e);             // +0x2c  0x41f3e4
        virtual void OnFSCommand(const char* command, const char* args);  // +0x30  0x41f3e8
        virtual bool CanHandleEvent(RenderFX::Event& e);      // +0x34  0x41f3ec

        gameswf::character* GetCharacter() const;            // 0x42db28

        // vptr                                               // +0x00
        MenuFX* m_menu;                                       // +0x04  owning MenuFX, set by RegisterState
        char m_name[64];                                      // +0x08  strcpy'd in the ctor; menu movie name
        void* m_characterProxy;                               // +0x48  gameswf::weak_ptr<character>: proxy
        gameswf::character* m_character;                      // +0x4c  ... cached pointer; the menu's movie clip
        void* m_savedFocusProxy;                              // +0x50  gameswf::weak_ptr<character>: proxy
        gameswf::character* m_savedFocus;                     // +0x54  ... focused character saved in SetMenu
        int32_t m_status;                                     // +0x58  1 shown, 2 hiding, 3 focus back, 4 focus_out
    };

    // gameswf::array<State*> as laid out by gameswf: data, size, capacity, static-buffer flag.
    struct StateArray {
        State** m_data;          // +0x00
        int32_t m_size;          // +0x04
        int32_t m_capacity;      // +0x08
        bool m_staticBuffer;     // +0x0c
    };

    MenuFX();                                                 // 0x7a86e4
    ~MenuFX() override;                                       // slot +0x00, +0x04 (0x7abc68, 0x7abd2c)
    // slot +0x08 Load and +0x14 UpdateCursor are inherited from RenderFX.
    void Unload() override;                                   // +0x0c  0x7abbbc
    void Update(int dt, bool a) override;                     // +0x10  0x7ad88c
    // The three virtuals below are new primary slots and also override RenderFX::EventListener
    // (thunks at secondary vtable +0x3c/+0x40/+0x44).
    void OnEvent(RenderFX::Event& e) override;                // +0x18  0x7adf20
    void OnFSCommand(const char* command, const char* args) override;  // +0x1c  0x7a7f00
    bool CanHandleEvent(RenderFX::Event& e) override;         // +0x20  0x7adee0
    virtual void SetFocusDefault();                           // +0x24  0x7ac444
    virtual void PushMenu(const char* name);                  // +0x28  0x7ae6a4
    virtual void SwitchMenu(const char* name);                // +0x2c  0x7ae69c
    virtual void PopMenu();                                   // +0x30  0x7ae808

    State* GetCurrentState();                                 // 0x7a7f30  top of m_stack or null
    bool IsStateInStack(State* state);                        // 0x7a7f4c
    State* GetState(const char* name);                        // 0x7a82c4
    void PopAll();                                            // 0x7abb20
    State* GetStateHandler(gameswf::character* target);       // 0x7addb0
    void RegisterState(State* state, const char* movieName);  // 0x7adf50
    void RegisterStates(State** states, int count);           // 0x7adff0
    void SetMenu(const char* name, bool push);                // 0x7ae284  (SwitchMenu: push=false)

    // RenderFX base (size 0x100)                             // +0x00
    // EventListener subobject (vptr only)                    // +0x100
    StateArray m_states;                                      // +0x104  every registered State
    StateArray m_stack;                                       // +0x114  active menu stack (top = current)
};
