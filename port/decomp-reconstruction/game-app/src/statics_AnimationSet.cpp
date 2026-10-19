// Storage of the static data members of AnimationSet that its header declares and no batch defined (link-1). One translation unit per
// class, so a program links the constructors these members need only when it uses the class.
#include "dh2/Animation.hpp"
#include "dh2/AnimationSet.hpp"

// 0x9a22ec, 48 bytes. The static initializer (0x364cf8) builds the "Invalid" name string at +0x00 (an STLport string, not
// modelled in Animation yet), points the collada database at CColladaDatabase::DefaultFactory (+0x1c) and stores -1 in +0x20
// (clip id) and +0x24 (use count); +0x28 and +0x2c are zero.
namespace {
Animation MakeInvalidAnimation() {
    Animation animation{};
    animation.unk_20 = -1;
    animation.m_useCount = -1;
    return animation;
}
}  // namespace
Animation AnimationSet::s_invalidAnim = MakeInvalidAnimation();
