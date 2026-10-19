// glitch::gui::ICursorControl: the mouse cursor interface (visibility, position, reference rectangle). Canonical header of the scene-owner wave
// (gui family). It replaces the ControlStandIn of recon/slice_23.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py glitch::gui::ICursorControl, 56 bytes): glitch::IReferenceCounted is
// the primary base (K 0x00 / 0x04 destructors, 0x08 onDelete) and the nine pure slots K 0x0c .. 0x2c are Irrlicht's: setVisible, isVisible,
// setPosition (float position, then x / y floats), setPosition (int position, then x / y ints), getPosition, getRelativePosition (the position as
// a fraction of the reference rectangle, returned by value through the hidden result pointer: CSceneNodeAnimatorCameraFPS::animateNode 0x6c7f1c
// calls K 0x28 with a result slot of two floats), setReferenceRect. The implementer is the device (the Android / Win32 cursor control).
#pragma once

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-shared/glitch_core.hpp"

namespace glitch::gui {

class ICursorControl : public IReferenceCounted {
public:
    // 0x69ffe4 (D1), 0x6a0500 (D0 copy): empty.
    ~ICursorControl() override;

    virtual void setVisible(bool visible) = 0;                                  // K 0x0c
    virtual bool isVisible() const = 0;                                         // K 0x10
    virtual void setPosition(const core::position2d<float>& position) = 0;      // K 0x14
    virtual void setPosition(float x, float y) = 0;                             // K 0x18
    virtual void setPosition(const core::position2d<int>& position) = 0;       // K 0x1c
    virtual void setPosition(int x, int y) = 0;                                 // K 0x20
    virtual core::position2d<int> getPosition() = 0;                           // K 0x24 (by value through the hidden result pointer: CAndroidOSDevice::CCursorControl::getPosition 0x6a0164 writes the two words into it)
    virtual core::position2d<float> getRelativePosition() = 0;                  // K 0x28
    virtual void setReferenceRect(core::rect<int>* rect = nullptr) = 0;         // K 0x2c
};

}  // namespace glitch::gui
