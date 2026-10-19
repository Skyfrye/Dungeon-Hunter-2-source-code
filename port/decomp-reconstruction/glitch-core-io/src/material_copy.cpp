#include "glitch-core-io/core/material_copy.hpp"

#include "glitch-video/light.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/texture.hpp"

namespace glitch::core {

namespace {

using glitch::video::CMaterial;
using glitch::video::detail::SParameterEntry;

// The entry of parameter `id` in the material's renderer table (null when the id is past the table): the renderer's header word +0x0e
// is the count and +0x20 the 16-byte entries.
const SParameterEntry* entryOf(const CMaterial& material, unsigned short id) {
    return material.m_renderer->parameters.getParameterDef(id);
}

// One element of a parameter through the typed getter of the source and setter of the destination.
template <class T>
void copyElement(const CMaterial& source, unsigned short sourceId, CMaterial& destination, unsigned short destinationId,
                 unsigned index) {
    T value{};
    source.parameters.getParameter<T>(sourceId, index, value);
    destination.parameters.setParameter<T>(destinationId, index, value);
}

template <class T>
T readElement(const CMaterial& material, unsigned short id, unsigned index) {
    T value{};
    material.parameters.getParameter<T>(id, index, value);
    return value;
}

// An identity matrix with its flag set: the starting value of the matrix cases of copyParameter and compareParameter.
glitch::core::CMatrix4<float> flaggedIdentity() {
    glitch::core::CMatrix4<float> m{};
    m.M[0] = m.M[5] = m.M[10] = m.M[15] = 1.0f;
    m.flag = true;
    return m;
}

}  // namespace

// 0x6a18b4 _ZN6glitch4core13copyParameterERKN5boost13intrusive_ptrINS_5video9CMaterialEEEtRKNS2_IKS4_EEt
// The source entry (value type at entry +0x06, element count at +0x08) selects the typed pair; the destination entry gives the other
// count; the smaller of the two counts is copied element by element. Value types: 1 int, 2 vector2d<int>, 3 vector3d<int>, 4
// vector4d<int>, 5 float, 6 vector2d<float>, 7 vector3d<float>, 8 vector4d<float>, 11 matrix (identity flagged start), 12..15 texture,
// 16 SColor, 17 SColorf, 18 light; 9, 10 and the rest copy nothing.
bool copyParameter(const boost::intrusive_ptr<CMaterial>& destination, unsigned short destinationId,
                   const boost::intrusive_ptr<const CMaterial>& source, unsigned short sourceId) {
    const SParameterEntry* sourceEntry = entryOf(*source, sourceId);
    const SParameterEntry* destinationEntry = entryOf(*destination, destinationId);
    unsigned count = destinationEntry->count;
    if (count >= sourceEntry->count) count = sourceEntry->count;
    CMaterial& to = *destination;
    const CMaterial& from = *source;
    for (unsigned i = 0; i < count; ++i) {
        switch (sourceEntry->type) {
            case 1:
                copyElement<int>(from, sourceId, to, destinationId, i);
                break;
            case 2:
                copyElement<glitch::core::vector2d<int>>(from, sourceId, to, destinationId, i);
                break;
            case 3:
                copyElement<glitch::core::vector3d<int>>(from, sourceId, to, destinationId, i);
                break;
            case 4:
                copyElement<glitch::core::vector4d<int>>(from, sourceId, to, destinationId, i);
                break;
            case 5:
                copyElement<float>(from, sourceId, to, destinationId, i);
                break;
            case 6:
                copyElement<glitch::core::vector2d<float>>(from, sourceId, to, destinationId, i);
                break;
            case 7:
                copyElement<glitch::core::vector3d<float>>(from, sourceId, to, destinationId, i);
                break;
            case 8:
                copyElement<glitch::core::vector4d<float>>(from, sourceId, to, destinationId, i);
                break;
            case 11: {
                glitch::core::CMatrix4<float> matrix = flaggedIdentity();
                from.parameters.getParameter(sourceId, i, matrix);
                to.parameters.setParameter(destinationId, i, matrix);
                break;
            }
            case 12:
            case 13:
            case 14:
            case 15:
                copyElement<boost::intrusive_ptr<glitch::video::ITexture>>(from, sourceId, to, destinationId, i);
                break;
            case 16:
                copyElement<glitch::video::SColor>(from, sourceId, to, destinationId, i);
                break;
            case 17:
                copyElement<glitch::video::SColorf>(from, sourceId, to, destinationId, i);
                break;
            case 18:
                copyElement<boost::intrusive_ptr<glitch::video::CLight>>(from, sourceId, to, destinationId, i);
                break;
            default:
                break;
        }
    }
    return true;
}

// 0x6a1d9c _ZN6glitch4core22copyMaterialParametersERKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS2_IKS4_EE
// The pass id lists (the uint16 arrays the first passes of the two materials' techniques keep at +0x24) are walked together for the two
// stages of the destination pass's shader; the count of each stage is the shader's. An id past a renderer's table (a global id, bit 15)
// has no entry and is skipped.
void copyMaterialParameters(const boost::intrusive_ptr<CMaterial>& destination,
                            const boost::intrusive_ptr<const CMaterial>& source) {
    const glitch::video::STechnique& destinationTechnique = destination->m_renderer->m_techniques[destination->getTechnique()];
    const glitch::video::STechnique& sourceTechnique = source->m_renderer->m_techniques[source->getTechnique()];
    const glitch::video::SRenderPass& destinationPass = *destinationTechnique.passes;
    const unsigned short* destinationIds = reinterpret_cast<const unsigned short*>(destinationPass.bindings);
    const unsigned short* sourceIds = reinterpret_cast<const unsigned short*>(sourceTechnique.passes->bindings);
    const auto* shader = static_cast<const glitch::video::IShader*>(destinationPass.shader);
    for (int stage = 0; stage < 2; ++stage) {
        // Host-found overrun (guard-page heap run of the level load): the listing (0x6a1d9c) walks the stage's whole `count` of ids, but a pass keeps
        // only count - field04 ids per stage (the first field04 parameters of the stage are the automatic ones, as CGenericBaker::initParameters
        // already reads it; the renderer allocates exactly that many, 8 of 12 in the first batch of the first level). The binary therefore reads
        // field04 ids past the list (the next heap block) and, for the second stage, starts it field04 ids late. Here the walk stops at the list.
        const unsigned short count = static_cast<unsigned short>(shader->m_stageParameters[stage].count - shader->m_stageParameters[stage].field04);
        if (count != 0) {
            for (unsigned short k = 0; k < count; ++k) {
                const unsigned short destinationId = destinationIds[k];
                const unsigned short sourceId = sourceIds[k];
                const SParameterEntry* destinationEntry = entryOf(*destination, destinationId);
                const SParameterEntry* sourceEntry = entryOf(*source, sourceId);
                if (destinationEntry != nullptr && sourceEntry != nullptr) {
                    copyParameter(destination, destinationId, source, sourceId);
                }
            }
            sourceIds += count;
            destinationIds += count;
        }
    }
}

// 0x6a38e4 _ZN6glitch4core16compareParameterERKN5boost13intrusive_ptrINS_5video9CMaterialEEEtS8_t
bool compareParameter(const boost::intrusive_ptr<const CMaterial>& first, unsigned short firstId,
                      const boost::intrusive_ptr<const CMaterial>& second, unsigned short secondId) {
    const SParameterEntry* secondEntry = entryOf(*second, secondId);
    const SParameterEntry* firstEntry = entryOf(*first, firstId);
    const unsigned count = secondEntry->count;
    if (count != firstEntry->count) return false;
    const unsigned type = secondEntry->type;
    if (type != firstEntry->type) return false;
    if (count == 0) return true;
    const CMaterial& a = *first;
    const CMaterial& b = *second;
    for (unsigned i = 0; i < count; ++i) {
        switch (type) {
            case 1:
                if (readElement<int>(a, firstId, i) != readElement<int>(b, secondId, i)) return false;
                break;
            case 2: {
                const auto x = readElement<glitch::core::vector2d<int>>(b, secondId, i);
                const auto y = readElement<glitch::core::vector2d<int>>(a, firstId, i);
                if (x.X != y.X || x.Y != y.Y) return false;
                break;
            }
            case 3: {
                const auto x = readElement<glitch::core::vector3d<int>>(b, secondId, i);
                const auto y = readElement<glitch::core::vector3d<int>>(a, firstId, i);
                if (y.X != x.X || y.Y != x.Y || y.Z != x.Z) return false;
                break;
            }
            case 4:
                // As in the original: one int (the vector4d<int> case is the next value type).
                if (readElement<int>(a, firstId, i) != readElement<int>(b, secondId, i)) return false;
                break;
            case 5: {
                // As in the original: compared as vector4d<int> (the float case does not exist).
                const auto x = readElement<glitch::core::vector4d<int>>(b, secondId, i);
                const auto y = readElement<glitch::core::vector4d<int>>(a, firstId, i);
                if (y.X != x.X || y.Y != x.Y || y.Z != x.Z || y.W != x.W) return false;
                break;
            }
            case 6: {
                const auto x = readElement<glitch::core::vector2d<float>>(b, secondId, i);
                const auto y = readElement<glitch::core::vector2d<float>>(a, firstId, i);
                if (x.X != y.X || x.Y != y.Y) return false;
                break;
            }
            case 7: {
                const auto x = readElement<glitch::core::vector3d<float>>(b, secondId, i);
                const auto y = readElement<glitch::core::vector3d<float>>(a, firstId, i);
                if (y.X != x.X || y.Y != x.Y || y.Z != x.Z) return false;
                break;
            }
            case 8: {
                const auto x = readElement<glitch::core::vector4d<float>>(b, secondId, i);
                const auto y = readElement<glitch::core::vector4d<float>>(a, firstId, i);
                if (y.X != x.X || y.Y != x.Y || y.Z != x.Z || y.W != x.W) return false;
                break;
            }
            case 11: {
                glitch::core::CMatrix4<float> x = flaggedIdentity();
                glitch::core::CMatrix4<float> y = flaggedIdentity();
                b.parameters.getParameter(secondId, i, x);
                a.parameters.getParameter(firstId, i, y);
                if (x.flag && y.flag) break;
                for (int k = 0; k < 16; ++k) {
                    if (y.M[k] != x.M[k]) return false;
                }
                break;
            }
            case 12:
            case 13:
            case 14:
            case 15:
                if (readElement<boost::intrusive_ptr<glitch::video::ITexture>>(b, secondId, i).get() !=
                    readElement<boost::intrusive_ptr<glitch::video::ITexture>>(a, firstId, i).get()) {
                    return false;
                }
                break;
            case 16:
                if (readElement<glitch::video::SColor>(a, firstId, i).color != readElement<glitch::video::SColor>(b, secondId, i).color) {
                    return false;
                }
                break;
            case 17: {
                // SColorf starts at (0, 0, 0, 1); equal within 1e-6 per component.
                glitch::video::SColorf x{0.f, 0.f, 0.f, 1.f};
                glitch::video::SColorf y{0.f, 0.f, 0.f, 1.f};
                b.parameters.getParameter<glitch::video::SColorf>(secondId, i, y);
                a.parameters.getParameter<glitch::video::SColorf>(firstId, i, x);
                const float eps = 0.000001f;
                if (x.r > y.r + eps || x.r < y.r - eps || x.g > y.g + eps || x.g < y.g - eps || x.b > y.b + eps ||
                    x.b < y.b - eps || x.a > y.a + eps || x.a < y.a - eps) {
                    return false;
                }
                break;
            }
            case 18:
                if (readElement<boost::intrusive_ptr<glitch::video::CLight>>(b, secondId, i).get() !=
                    readElement<boost::intrusive_ptr<glitch::video::CLight>>(a, firstId, i).get()) {
                    return false;
                }
                break;
            default:
                break;
        }
    }
    return true;
}

}  // namespace glitch::core
