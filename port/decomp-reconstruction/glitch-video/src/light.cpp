#include "glitch-video/light.hpp"

#include <cfloat>
#include <cstring>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-video/deps/os_logging.hpp"

namespace glitch::video {

// 0x59fc40 _ZN6glitch5video6CLightC1ERKS1_PPNS0_21STransformationSourceE
// 0x59fd48 _ZN6glitch5video6CLightC2ERKS1_PPNS0_21STransformationSourceE
// Copies every field except the count (+0x00), the transformation slot (+0x50) and the flag
// at +0x54. The original copies +0x04..+0x4c as words, then +0x58 (halfword) and +0x5a (byte).
CLight::CLight(const CLight& source, STransformationSource** out) {
    m_refCount = 0;
    m_ambientColor = source.m_ambientColor;
    m_diffuseColor = source.m_diffuseColor;
    m_specularColor = source.m_specularColor;
    m_attenuation = source.m_attenuation;
    m_radius = source.m_radius;
    m_innerConeAngle = source.m_innerConeAngle;
    m_outerConeAngle = source.m_outerConeAngle;
    m_falloff = source.m_falloff;
    m_transformationSource.matrix = nullptr;
    m_transformationSource.attached = true;
    m_type = source.m_type;
    m_castShadows = source.m_castShadows;

    if (out) {
        *out = &m_transformationSource;
    } else {
        m_transformationSource.detach();
    }
}

// 0x59fe08 _ZN6glitch5video6CLightC1EPPNS0_21STransformationSourceE
// 0x59fef8 _ZN6glitch5video6CLightC2EPPNS0_21STransformationSourceE
CLight::CLight(STransformationSource** out) {
    m_refCount = 0;
    m_ambientColor = SColorf{0.0f, 0.0f, 0.0f, 1.0f};
    m_diffuseColor = SColorf{1.0f, 1.0f, 1.0f, 1.0f};
    m_specularColor = SColorf{1.0f, 1.0f, 1.0f, 1.0f};
    m_attenuation.X = 1.0f;
    m_attenuation.Y = 0.0f;
    m_attenuation.Z = 0.0f;
    m_radius = FLT_MAX;
    m_innerConeAngle = 0.0f;
    m_outerConeAngle = 40.0f;
    m_falloff = 2.0f;
    m_transformationSource.matrix = nullptr;
    m_transformationSource.attached = true;
    m_type = 0;
    m_castShadows = 1;

    if (out) {
        *out = &m_transformationSource;
    } else {
        m_transformationSource.detach();
    }
}

CLight::~CLight() {
    if (!m_transformationSource.attached) {
        delete m_transformationSource.matrix;  // the original pushes the block back onto the Matrix4Pool
    }
}

// 0x5846f8 _ZN6glitch5video21STransformationSource6detachEv
// Partial: the block comes from new, not from the global Matrix4Pool free list.
void STransformationSource::detach() {
    if (!attached) return;
    attached = false;
    const core::CMatrix4<float>* old = matrix;
    core::CMatrix4<float>* block = new core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY);
    if (old != nullptr) {
        std::memcpy(static_cast<void*>(block), static_cast<const void*>(old), 0x41);
    }
    matrix = block;
}

// 0x59fd00 _ZNK6glitch5video6CLight5cloneEPPNS0_21STransformationSourceE
// The original stores the new object's count as previous count + 1 (0 + 1).
boost::intrusive_ptr<CLight> CLight::clone(STransformationSource** out) const {
    CLight* copy = new CLight(*this, out);
    copy->m_refCount += 1;
    return boost::intrusive_ptr<CLight>(copy);
}

// 0x59feb8 _ZN6glitch5video6CLight8allocateEPPNS0_21STransformationSourceE
boost::intrusive_ptr<CLight> CLight::allocate(STransformationSource** out) {
    CLight* light = new CLight(out);
    light->m_refCount += 1;
    return boost::intrusive_ptr<CLight>(light);
}

// 0x59fc00 _ZN6glitch5video6CLight24setAbsoluteTransformationERKNS_4core9CMatrix4IfEE
int CLight::setAbsoluteTransformation(const glitch::core::CMatrix4<float>& transform) {
    if (m_transformationSource.attached) {
        os::Printer::log("Can not set absolute transform on light attached to a transformation source",
                         os::ELL_ERROR);
        return 0;
    }
    std::memcpy(static_cast<void*>(m_transformationSource.matrix), static_cast<const void*>(&transform), 0x41);
    return 1;
}

// The light-type name table both (de)serializers hand to addEnum/getEnum. The original reaches it through
// video::getStringsInternal(E_LIGHT_TYPE*) (0x5a18a8, three instructions: it returns the address of its
// function-local static table at 0x99b5fc). The five words there are 0x8c2788, 0x8dfc90, 0x8dfc98, 0x8dfca8
// and null, i.e. "Point", "Spot", "Directional", "Ambient" and the terminator.
// Port deviation: glitch-video's E_* enum types are int32_t aliases (video_types.hpp), so the getStringsInternal
// overloads cannot be told apart and the function is not declared (its row 0x5a18a8 stays skipped). The identical
// table is therefore written here, the same treatment ISceneNode::serializeAttributes gives AutomaticCullingNames.
namespace {
const char* const kLightTypeNames[] = {"Point", "Spot", "Directional", "Ambient", nullptr};
}  // namespace

// 0x59ffa8 _ZNK6glitch5video6CLight19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Ten writes, verified one by one against the listing: "Type" as an enum (addEnum, slot +0xf4, value is the
// zero-extended uint16 at +0x58 and the choices are the table above), "AmbientColor" (+0x04), "DiffuseColor"
// (+0x14) and "SpecularColor" (+0x24) as addColorf (slot +0x130, the four words passed by value), "Attenuation"
// (+0x34) as addVector3d (slot +0x1a8, the address passed), "Radius" (+0x40), "InnerConeAngle" (+0x44),
// "OuterConeAngle" (+0x48) and "Falloff" (+0x4c) as addFloat (slot +0x64) and "CastShadows" (+0x5a) as addBool
// (slot +0xd8, the byte zero-extended). Every call passes a literal 0 as its flag; the options argument is unused.
// Deviation: the null guard is the port's (the original dereferences attributes and would crash).
void CLight::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) const {
    if (attributes == nullptr) return;
    attributes->addEnum("Type", static_cast<int>(m_type), kLightTypeNames, false);
    attributes->addColorf("AmbientColor", m_ambientColor, false);
    attributes->addColorf("DiffuseColor", m_diffuseColor, false);
    attributes->addColorf("SpecularColor", m_specularColor, false);
    attributes->addVector3d("Attenuation", m_attenuation, false);
    attributes->addFloat("Radius", m_radius, false);
    attributes->addFloat("InnerConeAngle", m_innerConeAngle, false);
    attributes->addFloat("OuterConeAngle", m_outerConeAngle, false);
    attributes->addFloat("Falloff", m_falloff, false);
    attributes->addBool("CastShadows", m_castShadows != 0, false);
}

// 0x5a015c _ZN6glitch5video6CLight21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// The reverse of the writer, in the same order and from the same ten names: getEnum (slot +0x100) whose int result
// lands in the uint16 at +0x58, getColorf (slot +0x13c, the result written word by word to +0x04, +0x14 and
// +0x24), getVector3d (slot +0x1b4, three words to +0x34..+0x3c), four getFloat (slot +0x70) into +0x40, +0x44,
// +0x48 and +0x4c, and getBool (slot +0xe4) whose byte lands at +0x5a. The listing returns the getBool result;
// the port keeps the void signature of the interface (the return type is not in the mangled name, and the only
// caller, CLightSceneNode::deserializeAttributes, ignores it).
// Deviation: the null guard is the port's (the original dereferences attributes and would crash).
void CLight::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) {
    if (attributes == nullptr) return;
    m_type = static_cast<uint16_t>(attributes->getEnum("Type", kLightTypeNames));
    m_ambientColor = attributes->getColorf("AmbientColor");
    m_diffuseColor = attributes->getColorf("DiffuseColor");
    m_specularColor = attributes->getColorf("SpecularColor");
    m_attenuation = attributes->getVector3d("Attenuation");
    m_radius = attributes->getFloat("Radius");
    m_innerConeAngle = attributes->getFloat("InnerConeAngle");
    m_outerConeAngle = attributes->getFloat("OuterConeAngle");
    m_falloff = attributes->getFloat("Falloff");
    m_castShadows = attributes->getBool("CastShadows") ? 1 : 0;
}

}  // namespace glitch::video
