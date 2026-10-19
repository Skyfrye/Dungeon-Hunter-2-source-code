// glitch::collada::CColladaDatabase::getAnimationTrackEx (0x611ae0), reconstructed by residue pass ob: the choice of the track class of an
// animation. It replaces the "skipped" row and the interim read of SAnimation +0x14 in CAnimationSet.
//
// The track is chosen by the type of the animation's first channel (SChannel +0x08):
//   1 position, 2/3/4 position x/y/z, 5 quaternion, 6..9 quaternion angle, 10 scale, 11/12/13 scale x/y/z: a CVirtualEx track whose key
//     width follows the animation's offset / scale record (SAnimation +0x1c: 0 char, 1 short, 2 float; no record means float; any other
//     value gives no track);
//   14 CWeightEx; 16 the light colour track (unsigned char keys); 20 CVisibilityEx; 0x57 .. 0x5b CTextureTransformEx;
//   0x1c .. 0x20, 0x22 .. 0x26, 0x28 .. 0x38, 0x3b .. 0x42, 0x44 .. 0x46 CFloatEx; 0x21, 0x27, 0x39, 0x3a, 0x43 CVector3dEx;
//   0x56 a material parameter (below); every other type gives no track.
// A material parameter track (type 0x56) depends on the first keyframe record (SAnimation +0x08): its word at +0x10 is the value kind (1
// colour bytes, 6 floats) and the word at +0x14 the number of components of the parameter. Floats: 1 component is one of the tracks of
// the static table animatorsEx (row = component count of the default value record - 1, column from its mask: 1 -> 1, 2 -> 2, 4 -> 3,
// 8 -> 4, any other mask 0), 2, 3 and 4 components are the whole-value tracks. Colour bytes: 3 and 4 components are the whole-value
// tracks; 1 component (with more than one component in the default value record) is the colour component the record's mask names.
//
// A comment `// 0xADDR symbol` precedes the function.
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/animation_track.hpp"
#include "glitch-scene-collada-gui/collada/animation_track_ex.hpp"

namespace glitch::collada {

using namespace animation_track;

namespace {

using Vector3 = core::vector3d<float>;

// One trait per scene node track family; Track<K> is the CVirtualEx class for the key type K.
template <class K> struct PositionTrack { using Type = CVirtualEx<CApplyValueEx<Vector3, CSceneNodePositionMixin<K>>>; };
template <class K> struct PositionXTrack { using Type = CVirtualEx<CApplyValueEx<Vector3, CSceneNodePositionComponentMixin<CSceneNodePositionXEx<K>, 0, K>>>; };
template <class K> struct PositionYTrack { using Type = CVirtualEx<CApplyValueEx<Vector3, CSceneNodePositionComponentMixin<CSceneNodePositionYEx<K>, 1, K>>>; };
template <class K> struct PositionZTrack { using Type = CVirtualEx<CApplyValueEx<Vector3, CSceneNodePositionComponentMixin<CSceneNodePositionZEx<K>, 2, K>>>; };
template <class K> struct QuaternionTrack { using Type = CVirtualEx<CApplyValueEx<core::quaternion, CSceneNodeQuaternionMixin<K>>>; };
template <class K> struct QuaternionAngleTrack { using Type = CVirtualEx<CApplyValueEx<core::quaternion, CSceneNodeQuaternionAngleMixin<K>>>; };
template <class K> struct ScaleTrack { using Type = CVirtualEx<CApplyValueEx<Vector3, CSceneNodeScaleMixin<K>>>; };
template <class K> struct ScaleXTrack { using Type = CVirtualEx<CApplyValueEx<Vector3, CSceneNodeScaleComponentMixin<CSceneNodeScaleXEx<K>, 0, K>>>; };
template <class K> struct ScaleYTrack { using Type = CVirtualEx<CApplyValueEx<Vector3, CSceneNodeScaleComponentMixin<CSceneNodeScaleYEx<K>, 1, K>>>; };
template <class K> struct ScaleZTrack { using Type = CVirtualEx<CApplyValueEx<Vector3, CSceneNodeScaleComponentMixin<CSceneNodeScaleZEx<K>, 2, K>>>; };

// The track of family F for the key width of the offset / scale record.
template <template <class> class F>
IAnimationTrackEx* byKeyWidth(const SAnimationOffsetScale* offsetScale) {
    if (offsetScale == nullptr) {
        return F<float>::Type::getInstance();
    }
    switch (offsetScale->type) {
        case 0:
            return F<char>::Type::getInstance();
        case 1:
            return F<short>::Type::getInstance();
        case 2:
            return F<float>::Type::getInstance();
        default:
            return nullptr;
    }
}

// Material parameter tracks.
template <class A, int N, int Component>
using FloatMaterialTrack = CVirtualEx<CApplyValueEx<A, CMixin<float, N, SMaterialSetParam<SAnimationTypes<A, A>>, Component, float>>>;
template <class A, int N, int Component>
using ByteMaterialTrack =
    CVirtualEx<CApplyValueEx<A, CMixin<unsigned char, N, SMaterialSetParam<SAnimationTypes<A, video::SColor>>, Component, unsigned char>>>;

// The static table animatorsEx: five columns per component count (whole value, then the components); the entries the original never
// fills are null.
struct SAnimatorsEx {
    IAnimationTrackEx* entries[20] = {};
    SAnimatorsEx() {
        entries[0] = FloatMaterialTrack<float, 1, -1>::getInstance();
        entries[1] = FloatMaterialTrack<float, 1, -1>::getInstance();
        entries[5] = FloatMaterialTrack<float[2], 2, -1>::getInstance();
        entries[6] = FloatMaterialTrack<float[2], 2, 0>::getInstance();
        entries[7] = FloatMaterialTrack<float[2], 2, 1>::getInstance();
        entries[10] = FloatMaterialTrack<float[3], 3, -1>::getInstance();
        entries[11] = FloatMaterialTrack<float[3], 3, 0>::getInstance();
        entries[12] = FloatMaterialTrack<float[3], 3, 0>::getInstance();  // as the listing: the same object for the 2nd and 3rd component
        entries[13] = FloatMaterialTrack<float[3], 3, 0>::getInstance();
        entries[15] = FloatMaterialTrack<float[4], 4, -1>::getInstance();
        entries[16] = FloatMaterialTrack<float[4], 4, 0>::getInstance();
        entries[17] = FloatMaterialTrack<float[4], 4, 1>::getInstance();
        entries[18] = FloatMaterialTrack<float[4], 4, 2>::getInstance();
        entries[19] = FloatMaterialTrack<float[4], 4, 3>::getInstance();
    }
};

// CSWTCH.6121: the column of the table for the mask of the component animated.
int maskColumn(std::uint32_t mask) {
    switch (mask) {
        case 1: return 1;
        case 2: return 2;
        case 4: return 3;
        case 8: return 4;
        default: return 0;
    }
}

IAnimationTrackEx* materialTrack(const SAnimation* animation) {
    const SAnimationKeyframe* keyframe = animation->keyframes;
    if (keyframe == nullptr) {
        return nullptr;
    }
    const SAnimationDefaultValue* defaults = animation->defaultValue;
    if (keyframe->unk_10 != 1) {
        if (keyframe->unk_10 != 6) {
            return nullptr;
        }
        switch (keyframe->unk_14) {
            case 1: {
                static const SAnimatorsEx animatorsEx;
                if (defaults == nullptr || defaults->unk_04 < 1 || defaults->unk_04 > 4) {
                    return nullptr;  // host guard: the original indexes the table with the unchecked count
                }
                return animatorsEx.entries[5 * (defaults->unk_04 - 1) + maskColumn(defaults->unk_00)];
            }
            case 2:
                return FloatMaterialTrack<float[2], 2, -1>::getInstance();
            case 3:
                return FloatMaterialTrack<float[3], 3, -1>::getInstance();
            case 4:
                return FloatMaterialTrack<float[4], 4, -1>::getInstance();
            default:
                return nullptr;
        }
    }
    switch (keyframe->unk_14) {
        case 3:
            return ByteMaterialTrack<unsigned char[3], 3, -1>::getInstance();
        case 4:
            return ByteMaterialTrack<unsigned char[4], 4, -1>::getInstance();
        case 1:
            if (defaults != nullptr && defaults->unk_04 > 1) {
                switch (defaults->unk_00) {
                    case 1: return ByteMaterialTrack<unsigned char[4], 4, 0>::getInstance();
                    case 2: return ByteMaterialTrack<unsigned char[4], 4, 1>::getInstance();
                    case 4: return ByteMaterialTrack<unsigned char[4], 4, 2>::getInstance();
                    case 8: return ByteMaterialTrack<unsigned char[4], 4, 3>::getInstance();
                    case 0xF: return ByteMaterialTrack<unsigned char[4], 4, -1>::getInstance();
                    default: return nullptr;
                }
            }
            return nullptr;
        default:
            return nullptr;
    }
}

}  // namespace

// 0x611ae0 _ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE
IAnimationTrackEx* CColladaDatabase::getAnimationTrackEx(const SAnimation* animation) {
    if (animation == nullptr || animation->channels == nullptr) {
        return nullptr;
    }
    const SAnimationOffsetScale* scale = animation->offsetScale;
    const std::uint32_t type = animation->channels->type;
    switch (type) {
        case 1: return byKeyWidth<PositionTrack>(scale);
        case 2: return byKeyWidth<PositionXTrack>(scale);
        case 3: return byKeyWidth<PositionYTrack>(scale);
        case 4: return byKeyWidth<PositionZTrack>(scale);
        case 5: return byKeyWidth<QuaternionTrack>(scale);
        case 6:
        case 7:
        case 8:
        case 9: return byKeyWidth<QuaternionAngleTrack>(scale);
        case 10: return byKeyWidth<ScaleTrack>(scale);
        case 11: return byKeyWidth<ScaleXTrack>(scale);
        case 12: return byKeyWidth<ScaleYTrack>(scale);
        case 13: return byKeyWidth<ScaleZTrack>(scale);
        case 14: return &CWeightEx::s_Instance;
        case 16: return CVirtualEx<CApplyValueEx<Vector3, CLightColorMixin<unsigned char>>>::getInstance();
        case 20: return &CVisibilityEx::s_Instance;
        case 0x56: return materialTrack(animation);
        case 0x57:
        case 0x58:
        case 0x59:
        case 0x5A:
        case 0x5B: return &CTextureTransformEx::s_Instance;
        case 0x21:
        case 0x27:
        case 0x39:
        case 0x3A:
        case 0x43: return &CVector3dEx::s_Instance;
        default:
            break;
    }
    if ((type >= 0x1C && type <= 0x20) || (type >= 0x22 && type <= 0x26) || (type >= 0x28 && type <= 0x38) || (type >= 0x3B && type <= 0x42) ||
        (type >= 0x44 && type <= 0x46)) {
        return &CFloatEx::s_Instance;
    }
    return nullptr;
}

}  // namespace glitch::collada
