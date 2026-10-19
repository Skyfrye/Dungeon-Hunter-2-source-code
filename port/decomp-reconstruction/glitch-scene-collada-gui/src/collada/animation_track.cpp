// Bodies and instantiations of the glitch::collada::animation_track templates (canonical header: collada/animation_track.hpp). This file
// replaces the per-instantiation stand-ins of the recon_07 .. recon_16, recon_28 and recon_v2 wave 05 .. 12 slices, the e2 packs, the tb_*
// animation_track files and generated_stubs.hpp.
//
// The section "explicit instantiations" at the end lists, as the original binary does, one instantiation per (value, mixin) pair of the
// CVirtualEx track classes (48, with all their members, the vtable and getInstance()) and every static helper symbol of the
// CInterpreter / CInterpreterQuaternion / CInterpreterQuaternionAngle / CApplyValueEx / CInputReader templates. The list comes from the
// queue rows of the category (address, mangled symbol and demangled name of each); the addresses of the rows are in
// ledger.d/scene-animation-track.csv.
//
// A comment `// 0xADDR symbol` precedes each hand-written function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/collada/animation_track.hpp"

#include "glitch-video/light.hpp"

namespace glitch::collada::animation_track {

// 0x6130d4 _ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getBlendedValueExEPvPfiS6_
// The first key with a non-zero weight is the start (a single key with weight 1 is returned as is); every later key with a non-zero weight
// is slerped in with the weight divided by the running total.
void CBlender<core::quaternion, 1, core::quaternion>::getBlendedValueEx(void* values, float* weights, int count, void* out) {
    const core::quaternion* keys = static_cast<const core::quaternion*>(values);
    core::quaternion result;  // (0, 0, 0, 1): +0x00 .. +0x0c
    result.X = 0.0f;
    result.Y = 0.0f;
    result.Z = 0.0f;
    result.W = 1.0f;
    float total;
    int next;
    if (count <= 0) {
        next = 1;
        total = 0.0f;
    } else {
        int first = 0;
        bool found = true;
        if (weights[0] == 0.0f) {
            // Skip the leading zero weights.
            const float* weight = weights;
            float current;
            do {
                ++first;
                if (first == count) {
                    found = false;
                    break;
                }
                current = weight[1];
                ++weight;
            } while (current == 0.0f);
        }
        if (!found) {
            next = count + 1;
            total = 0.0f;
        } else {
            total = weights[first];
            result = keys[first];
            if (total == 1.0f) {
                *static_cast<core::quaternion*>(out) = result;
                return;
            }
            next = first + 1;
        }
    }
    for (int index = next; index < count; ++index) {
        const float weight = weights[index];
        if (weight == 0.0f) {
            continue;
        }
        total = total + weight;
        const core::quaternion current = keys[index];
        result = core::quaternion::slerp(result, current, weight / total);
    }
    *static_cast<core::quaternion*>(out) = result;
}

// 0x613378 _ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E13getAddedValueExEPvPfiS6_
// The product of slerp(identity, key, weight): a positive weight uses the key, a negative weight the key with x, y, z negated and the
// opposite weight; a zero weight is skipped.
void CBlender<core::quaternion, 1, core::quaternion>::getAddedValueEx(void* values, float* weights, int count, void* out) {
    const core::quaternion* keys = static_cast<const core::quaternion*>(values);
    core::quaternion accumulated;  // v48 .. v51
    accumulated.X = 0.0f;
    accumulated.Y = 0.0f;
    accumulated.Z = 0.0f;
    accumulated.W = 1.0f;
    core::quaternion identity;
    identity.X = 0.0f;
    identity.Y = 0.0f;
    identity.Z = 0.0f;
    identity.W = 1.0f;
    for (int index = 0; index < count; ++index) {
        const float weight = weights[index];
        if (!(weight <= 0.0f)) {
            const core::quaternion key = keys[index];
            const core::quaternion step = core::quaternion::slerp(identity, key, weight);
            accumulated = accumulated * step;
        } else if (!(weight >= 0.0f)) {
            core::quaternion key = keys[index];
            key.X = -key.X;
            key.Y = -key.Y;
            key.Z = -key.Z;
            const core::quaternion step = core::quaternion::slerp(identity, key, -weight);
            accumulated = accumulated * step;
        }
    }
    *static_cast<core::quaternion*>(out) = accumulated;
}

// 0x60dfc0 _ZN6glitch7collada15animation_track11CApplicatorINS1_11SLightColorEE12applyValueExEPvS5_PNS1_15CApplicatorInfoE
// The byte colour divided by 255 goes to the diffuse colour of the light (+0x14 .. +0x1c); the alpha (+0x20) is set to 1.0.
void CApplicator<SLightColor>::applyValueEx(void* light, void* value, CApplicatorInfo*) {
    video::CLight* target = static_cast<video::CLight*>(light);
    const std::uint8_t* color = static_cast<const std::uint8_t*>(value);
    const float red = static_cast<float>(color[0]) / 255.0f;
    const float green = static_cast<float>(color[1]) / 255.0f;
    const float blue = static_cast<float>(color[2]) / 255.0f;
    target->m_diffuseColor.r = red;    // +0x14
    target->m_diffuseColor.b = blue;   // +0x1c
    target->m_diffuseColor.a = 1.0f;   // +0x20
    target->m_diffuseColor.g = green;  // +0x18
}

// 0x60eeb4 _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEE13retrieveValueEPvSB_
// The diffuse colour of the light (the source) * 255, truncated, to the three bytes.
void CLightColorMixin<unsigned char>::retrieve(const void* source, void* out) {
    const video::CLight* light = static_cast<const video::CLight*>(source);
    std::uint8_t* color = static_cast<std::uint8_t*>(out);
    color[0] = static_cast<std::uint8_t>(detail::floatToUnsigned(light->m_diffuseColor.r * 255.0f));  // +0x14
    color[1] = static_cast<std::uint8_t>(detail::floatToUnsigned(light->m_diffuseColor.g * 255.0f));  // +0x18
    color[2] = static_cast<std::uint8_t>(detail::floatToUnsigned(light->m_diffuseColor.b * 255.0f));  // +0x1c
}

// ---------------------------------------------------------------------------------------------------------------------------------
// ---- explicit instantiations: the track classes and static helpers of the binary (generated from the queue rows) ----

template class CVirtualEx<CApplyValueEx<float [2], CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, -1, float> > >;
template class CVirtualEx<CApplyValueEx<float [2], CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, 0, float> > >;
template class CVirtualEx<CApplyValueEx<float [2], CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, 1, float> > >;
template class CVirtualEx<CApplyValueEx<float [3], CMixin<float, 3, SMaterialSetParam<SAnimationTypes<float [3], float [3]> >, -1, float> > >;
template class CVirtualEx<CApplyValueEx<float [3], CMixin<float, 3, SMaterialSetParam<SAnimationTypes<float [3], float [3]> >, 0, float> > >;
template class CVirtualEx<CApplyValueEx<float [4], CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, -1, float> > >;
template class CVirtualEx<CApplyValueEx<float [4], CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 0, float> > >;
template class CVirtualEx<CApplyValueEx<float [4], CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 1, float> > >;
template class CVirtualEx<CApplyValueEx<float [4], CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 2, float> > >;
template class CVirtualEx<CApplyValueEx<float [4], CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 3, float> > >;
template class CVirtualEx<CApplyValueEx<float, CMixin<float, 1, SMaterialSetParam<SAnimationTypes<float, float> >, -1, float> > >;
template class CVirtualEx<CApplyValueEx<core::quaternion, CSceneNodeQuaternionAngleMixin<char> > >;
template class CVirtualEx<CApplyValueEx<core::quaternion, CSceneNodeQuaternionAngleMixin<float> > >;
template class CVirtualEx<CApplyValueEx<core::quaternion, CSceneNodeQuaternionAngleMixin<short> > >;
template class CVirtualEx<CApplyValueEx<core::quaternion, CSceneNodeQuaternionMixin<char> > >;
template class CVirtualEx<CApplyValueEx<core::quaternion, CSceneNodeQuaternionMixin<float> > >;
template class CVirtualEx<CApplyValueEx<core::quaternion, CSceneNodeQuaternionMixin<short> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CLightColorMixin<unsigned char> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionXEx<char>, 0, char> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionXEx<float>, 0, float> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionXEx<short>, 0, short> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionYEx<char>, 1, char> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionYEx<float>, 1, float> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionYEx<short>, 1, short> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionZEx<char>, 2, char> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionZEx<float>, 2, float> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionZEx<short>, 2, short> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<char> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<float> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<short> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleXEx<char>, 0, char> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleXEx<float>, 0, float> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleXEx<short>, 0, short> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleYEx<char>, 1, char> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleYEx<float>, 1, float> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleYEx<short>, 1, short> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleZEx<char>, 2, char> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleZEx<float>, 2, float> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleZEx<short>, 2, short> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodeScaleMixin<char> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodeScaleMixin<float> > >;
template class CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodeScaleMixin<short> > >;
template class CVirtualEx<CApplyValueEx<unsigned char [3], CMixin<unsigned char, 3, SMaterialSetParam<SAnimationTypes<unsigned char [3], video::SColor> >, -1, unsigned char> > >;
template class CVirtualEx<CApplyValueEx<unsigned char [4], CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, -1, unsigned char> > >;
template class CVirtualEx<CApplyValueEx<unsigned char [4], CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 0, unsigned char> > >;
template class CVirtualEx<CApplyValueEx<unsigned char [4], CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 1, unsigned char> > >;
template class CVirtualEx<CApplyValueEx<unsigned char [4], CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 2, unsigned char> > >;
template class CVirtualEx<CApplyValueEx<unsigned char [4], CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 3, unsigned char> > >;

template int CApplyValueEx<float [2], CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, -1, float> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<float [2], CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, -1, float> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<float [2], CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, -1, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<float [2], CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, -1, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<float [2], CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, 0, float> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<float [2], CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, 0, float> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<float [2], CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, 0, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<float [2], CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, 1, float> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<float [2], CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, 1, float> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<float [2], CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, 1, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<float [3], CMixin<float, 3, SMaterialSetParam<SAnimationTypes<float [3], float [3]> >, -1, float> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<float [3], CMixin<float, 3, SMaterialSetParam<SAnimationTypes<float [3], float [3]> >, -1, float> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<float [3], CMixin<float, 3, SMaterialSetParam<SAnimationTypes<float [3], float [3]> >, -1, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<float [3], CMixin<float, 3, SMaterialSetParam<SAnimationTypes<float [3], float [3]> >, -1, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<float [3], CMixin<float, 3, SMaterialSetParam<SAnimationTypes<float [3], float [3]> >, 0, float> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<float [3], CMixin<float, 3, SMaterialSetParam<SAnimationTypes<float [3], float [3]> >, 0, float> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<float [3], CMixin<float, 3, SMaterialSetParam<SAnimationTypes<float [3], float [3]> >, 0, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<float [4], CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, -1, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<float [4], CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, -1, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<float [4], CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 0, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<float [4], CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 1, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<float [4], CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 2, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<float [4], CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 3, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<float, CMixin<float, 1, SMaterialSetParam<SAnimationTypes<float, float> >, -1, float> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<float, CMixin<float, 1, SMaterialSetParam<SAnimationTypes<float, float> >, -1, float> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<float, CMixin<float, 1, SMaterialSetParam<SAnimationTypes<float, float> >, -1, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<float, CMixin<float, 1, SMaterialSetParam<SAnimationTypes<float, float> >, -1, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionAngleMixin<char> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionAngleMixin<char> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionAngleMixin<char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionAngleMixin<char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionAngleMixin<float> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionAngleMixin<float> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionAngleMixin<float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionAngleMixin<float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionAngleMixin<short> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionAngleMixin<short> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionAngleMixin<short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionAngleMixin<short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionMixin<char> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionMixin<char> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionMixin<char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionMixin<char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionMixin<float> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionMixin<float> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionMixin<float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionMixin<float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionMixin<short> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionMixin<short> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionMixin<short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::quaternion, CSceneNodeQuaternionMixin<short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CLightColorMixin<unsigned char> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CLightColorMixin<unsigned char> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CLightColorMixin<unsigned char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CLightColorMixin<unsigned char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionXEx<char>, 0, char> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionXEx<char>, 0, char> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionXEx<char>, 0, char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionXEx<char>, 0, char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionXEx<float>, 0, float> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionXEx<float>, 0, float> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionXEx<float>, 0, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionXEx<float>, 0, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionXEx<short>, 0, short> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionXEx<short>, 0, short> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionXEx<short>, 0, short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionXEx<short>, 0, short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionYEx<char>, 1, char> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionYEx<char>, 1, char> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionYEx<char>, 1, char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionYEx<char>, 1, char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionYEx<float>, 1, float> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionYEx<float>, 1, float> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionYEx<float>, 1, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionYEx<float>, 1, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionYEx<short>, 1, short> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionYEx<short>, 1, short> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionYEx<short>, 1, short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionYEx<short>, 1, short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionZEx<char>, 2, char> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionZEx<char>, 2, char> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionZEx<char>, 2, char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionZEx<char>, 2, char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionZEx<float>, 2, float> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionZEx<float>, 2, float> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionZEx<float>, 2, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionZEx<float>, 2, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionZEx<short>, 2, short> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionZEx<short>, 2, short> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionZEx<short>, 2, short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionZEx<short>, 2, short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<char> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<char> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<float> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<float> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<short> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<short> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleXEx<char>, 0, char> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleXEx<char>, 0, char> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleXEx<char>, 0, char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleXEx<char>, 0, char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleXEx<float>, 0, float> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleXEx<float>, 0, float> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleXEx<float>, 0, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleXEx<float>, 0, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleXEx<short>, 0, short> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleXEx<short>, 0, short> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleXEx<short>, 0, short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleXEx<short>, 0, short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleYEx<char>, 1, char> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleYEx<char>, 1, char> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleYEx<char>, 1, char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleYEx<char>, 1, char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleYEx<float>, 1, float> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleYEx<float>, 1, float> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleYEx<float>, 1, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleYEx<float>, 1, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleYEx<short>, 1, short> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleYEx<short>, 1, short> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleYEx<short>, 1, short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleYEx<short>, 1, short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleZEx<char>, 2, char> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleZEx<char>, 2, char> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleZEx<char>, 2, char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleZEx<char>, 2, char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleZEx<float>, 2, float> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleZEx<float>, 2, float> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleZEx<float>, 2, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleZEx<float>, 2, float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleZEx<short>, 2, short> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleZEx<short>, 2, short> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleZEx<short>, 2, short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleComponentMixin<CSceneNodeScaleZEx<short>, 2, short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleMixin<char> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleMixin<char> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleMixin<char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleMixin<char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleMixin<float> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleMixin<float> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleMixin<float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleMixin<float> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleMixin<short> >::applyAddedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleMixin<short> >::applyBlendedValueEx(void*, float*, int, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleMixin<short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<core::vector3d<float>, CSceneNodeScaleMixin<short> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<unsigned char [3], CMixin<unsigned char, 3, SMaterialSetParam<SAnimationTypes<unsigned char [3], video::SColor> >, -1, unsigned char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<unsigned char [3], CMixin<unsigned char, 3, SMaterialSetParam<SAnimationTypes<unsigned char [3], video::SColor> >, -1, unsigned char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<unsigned char [4], CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, -1, unsigned char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<unsigned char [4], CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, -1, unsigned char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, void*, CApplicatorInfo*);
template int CApplyValueEx<unsigned char [4], CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 0, unsigned char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<unsigned char [4], CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 1, unsigned char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<unsigned char [4], CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 2, unsigned char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template int CApplyValueEx<unsigned char [4], CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 3, unsigned char> >::applyKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*, CApplicatorInfo*);
template CInputReader<char, float, 1>::CInputReader(const SAnimationAccessor&);
template CInputReader<char, float, 3>::CInputReader(const SAnimationAccessor&);
template CInputReader<char, float, 4>::CInputReader(const SAnimationAccessor&);
template CInputReader<short, float, 1>::CInputReader(const SAnimationAccessor&);
template CInputReader<short, float, 3>::CInputReader(const SAnimationAccessor&);
template CInputReader<short, float, 4>::CInputReader(const SAnimationAccessor&);
template void CInterpreter<CMixin<float, 1, SMaterialSetParam<SAnimationTypes<float, float> >, -1, float>, float, 1, SUseDefaultLerp<float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<float, 1, SMaterialSetParam<SAnimationTypes<float, float> >, -1, float>, float, 1, SUseDefaultLerp<float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, -1, float>, float, 2, SUseDefaultLerp<float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, -1, float>, float, 2, SUseDefaultLerp<float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, 0, float>, float, 2, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, 0, float>, float, 2, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, 0, float>, float, 2, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, 0, float>, float, 2, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, 1, float>, float, 2, SUseDefaultValues<1, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, 1, float>, float, 2, SUseDefaultValues<1, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, 1, float>, float, 2, SUseDefaultValues<1, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CMixin<float, 2, SMaterialSetParam<SAnimationTypes<float [2], float [2]> >, 1, float>, float, 2, SUseDefaultValues<1, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CMixin<float, 3, SMaterialSetParam<SAnimationTypes<float [3], float [3]> >, -1, float>, float, 3, SUseDefaultLerp<float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<float, 3, SMaterialSetParam<SAnimationTypes<float [3], float [3]> >, -1, float>, float, 3, SUseDefaultLerp<float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<float, 3, SMaterialSetParam<SAnimationTypes<float [3], float [3]> >, 0, float>, float, 3, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<float, 3, SMaterialSetParam<SAnimationTypes<float [3], float [3]> >, 0, float>, float, 3, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<float, 3, SMaterialSetParam<SAnimationTypes<float [3], float [3]> >, 0, float>, float, 3, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CMixin<float, 3, SMaterialSetParam<SAnimationTypes<float [3], float [3]> >, 0, float>, float, 3, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CMixin<float, 3, SSceneNodePosition, -1, float>, float, 3, SUseDefaultLerp<char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<float, 3, SSceneNodePosition, -1, float>, float, 3, SUseDefaultLerp<char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<float, 3, SSceneNodePosition, -1, float>, float, 3, SUseDefaultLerp<char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CMixin<float, 3, SSceneNodePosition, -1, float>, float, 3, SUseDefaultLerp<char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CMixin<float, 3, SSceneNodePosition, -1, float>, float, 3, SUseDefaultLerp<float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<float, 3, SSceneNodePosition, -1, float>, float, 3, SUseDefaultLerp<float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<float, 3, SSceneNodePosition, -1, float>, float, 3, SUseDefaultLerp<short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<float, 3, SSceneNodePosition, -1, float>, float, 3, SUseDefaultLerp<short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<float, 3, SSceneNodePosition, -1, float>, float, 3, SUseDefaultLerp<short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CMixin<float, 3, SSceneNodePosition, -1, float>, float, 3, SUseDefaultLerp<short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, -1, float>, float, 4, SUseDefaultLerp<float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, -1, float>, float, 4, SUseDefaultLerp<float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 0, float>, float, 4, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 0, float>, float, 4, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 0, float>, float, 4, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 0, float>, float, 4, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 1, float>, float, 4, SUseDefaultValues<1, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 1, float>, float, 4, SUseDefaultValues<1, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 1, float>, float, 4, SUseDefaultValues<1, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 1, float>, float, 4, SUseDefaultValues<1, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 2, float>, float, 4, SUseDefaultValues<2, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 2, float>, float, 4, SUseDefaultValues<2, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 2, float>, float, 4, SUseDefaultValues<2, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 2, float>, float, 4, SUseDefaultValues<2, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 3, float>, float, 4, SUseDefaultValues<3, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 3, float>, float, 4, SUseDefaultValues<3, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 3, float>, float, 4, SUseDefaultValues<3, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float [4], float [4]> >, 3, float>, float, 4, SUseDefaultValues<3, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CMixin<unsigned char, 3, SLightColor, -1, unsigned char>, unsigned char, 3, SUseDefaultLerp<unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<unsigned char, 3, SLightColor, -1, unsigned char>, unsigned char, 3, SUseDefaultLerp<unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<unsigned char, 3, SMaterialSetParam<SAnimationTypes<unsigned char [3], video::SColor> >, -1, unsigned char>, unsigned char, 3, SUseDefaultLerp<unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<unsigned char, 3, SMaterialSetParam<SAnimationTypes<unsigned char [3], video::SColor> >, -1, unsigned char>, unsigned char, 3, SUseDefaultLerp<unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, -1, unsigned char>, unsigned char, 4, SUseDefaultLerp<unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, -1, unsigned char>, unsigned char, 4, SUseDefaultLerp<unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 0, unsigned char>, unsigned char, 4, SUseDefaultValues<0, unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 0, unsigned char>, unsigned char, 4, SUseDefaultValues<0, unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 0, unsigned char>, unsigned char, 4, SUseDefaultValues<0, unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 0, unsigned char>, unsigned char, 4, SUseDefaultValues<0, unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 1, unsigned char>, unsigned char, 4, SUseDefaultValues<1, unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 1, unsigned char>, unsigned char, 4, SUseDefaultValues<1, unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 1, unsigned char>, unsigned char, 4, SUseDefaultValues<1, unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 1, unsigned char>, unsigned char, 4, SUseDefaultValues<1, unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 2, unsigned char>, unsigned char, 4, SUseDefaultValues<2, unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 2, unsigned char>, unsigned char, 4, SUseDefaultValues<2, unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 2, unsigned char>, unsigned char, 4, SUseDefaultValues<2, unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 2, unsigned char>, unsigned char, 4, SUseDefaultValues<2, unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 3, unsigned char>, unsigned char, 4, SUseDefaultValues<3, unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 3, unsigned char>, unsigned char, 4, SUseDefaultValues<3, unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 3, unsigned char>, unsigned char, 4, SUseDefaultValues<3, unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char [4], video::SColor> >, 3, unsigned char>, unsigned char, 4, SUseDefaultValues<3, unsigned char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodePositionXEx<char>, float, 3, SUseDefaultValues<0, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodePositionXEx<char>, float, 3, SUseDefaultValues<0, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodePositionXEx<char>, float, 3, SUseDefaultValues<0, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodePositionXEx<char>, float, 3, SUseDefaultValues<0, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodePositionXEx<float>, float, 3, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodePositionXEx<float>, float, 3, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodePositionXEx<float>, float, 3, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodePositionXEx<float>, float, 3, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodePositionXEx<short>, float, 3, SUseDefaultValues<0, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodePositionXEx<short>, float, 3, SUseDefaultValues<0, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodePositionXEx<short>, float, 3, SUseDefaultValues<0, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodePositionXEx<short>, float, 3, SUseDefaultValues<0, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodePositionYEx<char>, float, 3, SUseDefaultValues<1, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodePositionYEx<char>, float, 3, SUseDefaultValues<1, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodePositionYEx<char>, float, 3, SUseDefaultValues<1, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodePositionYEx<char>, float, 3, SUseDefaultValues<1, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodePositionYEx<float>, float, 3, SUseDefaultValues<1, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodePositionYEx<float>, float, 3, SUseDefaultValues<1, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodePositionYEx<float>, float, 3, SUseDefaultValues<1, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodePositionYEx<float>, float, 3, SUseDefaultValues<1, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodePositionYEx<short>, float, 3, SUseDefaultValues<1, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodePositionYEx<short>, float, 3, SUseDefaultValues<1, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodePositionYEx<short>, float, 3, SUseDefaultValues<1, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodePositionYEx<short>, float, 3, SUseDefaultValues<1, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodePositionZEx<char>, float, 3, SUseDefaultValues<2, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodePositionZEx<char>, float, 3, SUseDefaultValues<2, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodePositionZEx<char>, float, 3, SUseDefaultValues<2, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodePositionZEx<char>, float, 3, SUseDefaultValues<2, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodePositionZEx<float>, float, 3, SUseDefaultValues<2, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodePositionZEx<float>, float, 3, SUseDefaultValues<2, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodePositionZEx<float>, float, 3, SUseDefaultValues<2, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodePositionZEx<float>, float, 3, SUseDefaultValues<2, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodePositionZEx<short>, float, 3, SUseDefaultValues<2, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodePositionZEx<short>, float, 3, SUseDefaultValues<2, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodePositionZEx<short>, float, 3, SUseDefaultValues<2, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodePositionZEx<short>, float, 3, SUseDefaultValues<2, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodeQuaternionAngleMixin<char>, float, 4, SUseDefaultValues<3, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodeQuaternionAngleMixin<char>, float, 4, SUseDefaultValues<3, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodeQuaternionAngleMixin<float>, float, 4, SUseDefaultValues<3, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodeQuaternionAngleMixin<float>, float, 4, SUseDefaultValues<3, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodeQuaternionAngleMixin<short>, float, 4, SUseDefaultValues<3, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodeQuaternionAngleMixin<short>, float, 4, SUseDefaultValues<3, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodeQuaternionMixin<char>, float, 4, SUseDefaultLerp<char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodeQuaternionMixin<char>, float, 4, SUseDefaultLerp<char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodeQuaternionMixin<float>, float, 4, SUseDefaultLerp<float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodeQuaternionMixin<short>, float, 4, SUseDefaultLerp<short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodeQuaternionMixin<short>, float, 4, SUseDefaultLerp<short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodeScaleMixin<char>, float, 3, SUseDefaultLerp<char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleMixin<char>, float, 3, SUseDefaultLerp<char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleMixin<char>, float, 3, SUseDefaultLerp<char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodeScaleMixin<char>, float, 3, SUseDefaultLerp<char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodeScaleMixin<float>, float, 3, SUseDefaultLerp<float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleMixin<float>, float, 3, SUseDefaultLerp<float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleMixin<short>, float, 3, SUseDefaultLerp<short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleMixin<short>, float, 3, SUseDefaultLerp<short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleMixin<short>, float, 3, SUseDefaultLerp<short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodeScaleMixin<short>, float, 3, SUseDefaultLerp<short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodeScaleXEx<char>, float, 3, SUseDefaultValues<0, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleXEx<char>, float, 3, SUseDefaultValues<0, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleXEx<char>, float, 3, SUseDefaultValues<0, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodeScaleXEx<char>, float, 3, SUseDefaultValues<0, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodeScaleXEx<float>, float, 3, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleXEx<float>, float, 3, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleXEx<float>, float, 3, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodeScaleXEx<float>, float, 3, SUseDefaultValues<0, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodeScaleXEx<short>, float, 3, SUseDefaultValues<0, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleXEx<short>, float, 3, SUseDefaultValues<0, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleXEx<short>, float, 3, SUseDefaultValues<0, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodeScaleXEx<short>, float, 3, SUseDefaultValues<0, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodeScaleYEx<char>, float, 3, SUseDefaultValues<1, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleYEx<char>, float, 3, SUseDefaultValues<1, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleYEx<char>, float, 3, SUseDefaultValues<1, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodeScaleYEx<char>, float, 3, SUseDefaultValues<1, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodeScaleYEx<float>, float, 3, SUseDefaultValues<1, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleYEx<float>, float, 3, SUseDefaultValues<1, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleYEx<float>, float, 3, SUseDefaultValues<1, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodeScaleYEx<float>, float, 3, SUseDefaultValues<1, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodeScaleYEx<short>, float, 3, SUseDefaultValues<1, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleYEx<short>, float, 3, SUseDefaultValues<1, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleYEx<short>, float, 3, SUseDefaultValues<1, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodeScaleYEx<short>, float, 3, SUseDefaultValues<1, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodeScaleZEx<char>, float, 3, SUseDefaultValues<2, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleZEx<char>, float, 3, SUseDefaultValues<2, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleZEx<char>, float, 3, SUseDefaultValues<2, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodeScaleZEx<char>, float, 3, SUseDefaultValues<2, char> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodeScaleZEx<float>, float, 3, SUseDefaultValues<2, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleZEx<float>, float, 3, SUseDefaultValues<2, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleZEx<float>, float, 3, SUseDefaultValues<2, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodeScaleZEx<float>, float, 3, SUseDefaultValues<2, float> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreter<CSceneNodeScaleZEx<short>, float, 3, SUseDefaultValues<2, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleZEx<short>, float, 3, SUseDefaultValues<2, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreter<CSceneNodeScaleZEx<short>, float, 3, SUseDefaultValues<2, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreter<CSceneNodeScaleZEx<short>, float, 3, SUseDefaultValues<2, short> >::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreterQuaternion<CSceneNodeQuaternionMixin<char>, char>::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreterQuaternion<CSceneNodeQuaternionMixin<char>, char>::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreterQuaternion<CSceneNodeQuaternionMixin<float>, float>::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreterQuaternion<CSceneNodeQuaternionMixin<float>, float>::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreterQuaternion<CSceneNodeQuaternionMixin<short>, short>::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreterQuaternion<CSceneNodeQuaternionMixin<short>, short>::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreterQuaternionAngle<CSceneNodeQuaternionAngleMixin<char>, char>::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreterQuaternionAngle<CSceneNodeQuaternionAngleMixin<char>, char>::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreterQuaternionAngle<CSceneNodeQuaternionAngleMixin<char>, char>::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreterQuaternionAngle<CSceneNodeQuaternionAngleMixin<char>, char>::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreterQuaternionAngle<CSceneNodeQuaternionAngleMixin<float>, float>::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreterQuaternionAngle<CSceneNodeQuaternionAngleMixin<float>, float>::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreterQuaternionAngle<CSceneNodeQuaternionAngleMixin<float>, float>::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreterQuaternionAngle<CSceneNodeQuaternionAngleMixin<float>, float>::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);
template void CInterpreterQuaternionAngle<CSceneNodeQuaternionAngleMixin<short>, short>::getKeyBasedValueEx(const SAnimationAccessor&, int, int, float, void*);
template void CInterpreterQuaternionAngle<CSceneNodeQuaternionAngleMixin<short>, short>::getKeyBasedValueEx(const SAnimationAccessor&, int, int, int, float, void*);
template void CInterpreterQuaternionAngle<CSceneNodeQuaternionAngleMixin<short>, short>::getKeyBasedValueEx(const SAnimationAccessor&, int, int, void*);
template void CInterpreterQuaternionAngle<CSceneNodeQuaternionAngleMixin<short>, short>::getKeyBasedValueEx(const SAnimationAccessor&, int, void*);

}  // namespace glitch::collada::animation_track
