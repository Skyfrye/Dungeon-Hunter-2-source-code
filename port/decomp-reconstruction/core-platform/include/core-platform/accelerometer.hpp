// AccelerometerBase: last reading, its min/max tracking and the derived angles.
// Field offsets are from the original (Hex-Rays, word index times four).
#pragma once

class AccelerometerBase {
public:
    AccelerometerBase();                         // 0x33da0c / 0x33da64
    virtual ~AccelerometerBase() = default;      // compiler-generated
    virtual void clear();                        // 0x33d720
    virtual void update(double dt);              // 0x33d744: thunk to clear()
    virtual void moved(float x, float y, float z);  // 0x33d8dc

private:
    void _calcAngles();                          // 0x33d798

    float x_ = 0;          // +0x04
    float y_ = 0;          // +0x08
    float z_ = 0;          // +0x0c
    float prevX_ = 0;      // +0x10 (copied from x_ by clear)
    float prevY_ = 0;      // +0x14 (copied from y_ by clear)
    float prevZ_ = 0;      // +0x18 (copied from z_ by clear)
    float minX_ = 0;       // +0x1c (seeded from z_ by clear; lowered by moved)
    float minY_ = 0;       // +0x20 (lowered by moved)
    float minZ_ = 0;       // +0x24 (lowered by moved)
    float maxX_ = 0;      // +0x28 (seeded from z_ by clear; raised by moved)
    float maxY_ = 0;      // +0x2c (raised by moved)
    float maxZ_ = 0;      // +0x30 (raised by moved)
    float prevAngleX_ = 0;  // +0x34 (previous angleX_)
    float angleX_ = 0;      // +0x38 atan2(y, x)
    float prevAngleY_ = 0;  // +0x3c (previous angleY_)
    float angleY_ = 0;      // +0x40 atan2(z, y)
    float angleXCopy_ = 0;  // +0x44 (angleX_ after its update)
    float angleZ_ = 0;      // +0x48 atan2(x, z)
};

class AccelerometerIPhone : public AccelerometerBase {
public:
    AccelerometerIPhone();                       // 0x33dbf8 / 0x33dc2c
    void moved(float x, float y, float z) override;  // 0x33db64: sign-flipped sample
};
