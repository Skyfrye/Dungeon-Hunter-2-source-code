// MenuFlash2DCamera: the 2D camera for a front-end MenuFX. It keeps the MenuFX it frames, an optional clip
// character whose absolute bounds limit the pan, and a position that eases toward a target on every Update.
// Original 32-bit size 0x34 (52). No base class. The vtable (_ZTV17MenuFlash2DCamera, 16 bytes) holds only the
// two destructors.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x42cc50 / 0x42ccd0, Update 0x42cd84,
// SetLimitClip 0x42cf30).
#pragma once

#include <cstdint>

class MenuFX;

namespace gameswf {
class character;
}  // namespace gameswf

class MenuFlash2DCamera {
public:
    explicit MenuFlash2DCamera(MenuFX* menu);                           // 0x42cc50 (C2), 0x42ccd0 (C1)
    virtual ~MenuFlash2DCamera();                                       // 0x42ca88 (D1, empty), 0x42cd50 (D0, frees)

    void Update();                                                      // 0x42cd84
    void SetLimitClip(gameswf::character* clip);                        // 0x42cf30

    // Vptr at +0x00 is the implicit one.
    MenuFX* m_menu;                                                     // +0x04 the menu whose viewport and bounds are set
    gameswf::character* m_limitClip;                                    // +0x08 set by SetLimitClip, null when no limit
    float m_clipMinX;                                                   // +0x0c GetAbsoluteBoundingRect()[0], xmin
    float m_clipMaxX;                                                   // +0x10 GetAbsoluteBoundingRect()[1], xmax
    float m_clipMinY;                                                   // +0x14 GetAbsoluteBoundingRect()[2], ymin
    float m_clipMaxY;                                                   // +0x18 GetAbsoluteBoundingRect()[3], ymax
    std::int32_t m_centerX;                                             // +0x1c Width_Screen / 2, set by the ctor
    std::int32_t m_centerY;                                             // +0x20 Height_Screen / 2, set by the ctor
    std::int32_t m_x;                                                   // +0x24 current x, eased toward m_targetX
    std::int32_t m_y;                                                   // +0x28 current y, eased toward m_targetY
    std::int32_t m_targetX;                                             // +0x2c
    std::int32_t m_targetY;                                             // +0x30
};
