// MenuConfirmBase: base of the modal confirm dialogs. Original 32-bit size: 0xc8 (200).
// The constructor registers the menu with MenuManager.
#pragma once

#include <cstdint>

#include "dh2/MenuBase.hpp"

class MenuConfirmBase : public MenuBase {
public:
    explicit MenuConfirmBase(const char* name);               // 0x42ab24 / 0x42ab6c
    ~MenuConfirmBase() override;                              // +0x00, +0x04 (0x42a998, 0x42a9cc)
    void Show() override;                                     // +0x0c  0x42a95c  unregisters the menu below
    void Hide() override;                                     // +0x10  0x42a92c  re-registers the menu below

    // MenuBase base (size 0xc4)                              // +0x00
    uint32_t m_savedFlags;                                    // +0xc4  RenderFX flags word (+0xf8) captured in Show
};
