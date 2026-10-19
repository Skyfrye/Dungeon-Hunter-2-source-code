#include <cstdlib>
#include "glitch-video/material.hpp"

#include <cstring>
#include <new>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-video/material_parameters_part_1c.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

namespace {

using detail::SParameterEntry;
using Matrix = core::CMatrix4<float>;

// glitch::video::detail::SShaderParameterTypeInspection::ValueTypeSize: 19 bytes at 0x8e4ca4 + 0x... (ELF 0x8e2c24), read from the ELF.
constexpr uint8_t kValueTypeSize[19] = {1, 4, 8, 12, 16, 4, 8, 12, 16, 16, 36, 4, 4, 4, 4, 4, 4, 16, 4};

constexpr uint8_t kMatrixType = 11;

const Matrix& identityMatrix() {
    static const Matrix kIdentity(Matrix::EM4CONST_IDENTITY);
    return kIdentity;
}

// The 68 bytes of a matrix object as the original hashes and compares them: sixteen floats, the flag byte and three zero pad bytes.
void matrixBytes(const Matrix& m, uint8_t out[68]) {
    std::memcpy(out, m.M, 64);
    out[64] = m.flag ? 1 : 0;
    out[65] = out[66] = out[67] = 0;
}

// The shader of a pass (the pass keeps it as an IReferenceCounted pointer at +0x20).
const IShader* shaderOf(const SRenderPass& pass) { return static_cast<const IShader*>(pass.shader); }

// Number of parameter ids a pass lists: the per-stage counts at shader +0x2e and +0x36 less the two words at +0x2c and +0x34.
uint16_t passParameterCount(const SRenderPass& pass) {
    const IShader* s = shaderOf(pass);
    return static_cast<uint16_t>(s->m_stageParameters[1].count + s->m_stageParameters[0].count -
                                 s->m_stageParameters[0].field04 - s->m_stageParameters[1].field04);
}

// The parameter ids a pass lists: the array of uint16 the pass keeps at +0x24 (bit 15 marks an id the pass takes from the global
// parameters).
const uint16_t* passParameterIds(const SRenderPass& pass) { return reinterpret_cast<const uint16_t*>(pass.bindings); }

const SParameterEntry* entryOf(const CMaterial& m, uint16_t id) { return m.parameters.getParameterDef(id); }

const Matrix* matrixSlot(const CMaterial& m, const SParameterEntry& e, uint32_t index) {
    auto& slots = const_cast<CMaterial&>(m).parameters.matrixSlots();
    auto it = slots.find(e.valueOffset + 4u * index);
    return it == slots.end() ? nullptr : it->second;
}

// Texture (types 12..15) and light (18) parameters hold their 32-bit pointer in the value area of the original, so the material hash
// (updateParametersHashCode, 0x35364c), the order (compare) and the equality (areParametersEqual) all see which texture a material
// uses. The port keeps those pointers in SPointerSlots outside the value buffer, which left the value bytes zero: two materials that
// differed only in their texture hashed and compared equal, and the driver's draw batching (SceneManager SwitchBatching: same material
// or same material hash) merged them into one draw with the first one's texture (Rene drawn with the swamp environment atlas).
bool isPointerType(uint8_t type) { return (type >= 12 && type <= 15) || type == 18; }

uint32_t pointerWord(const CMaterial& m, const SParameterEntry& e, uint32_t index) {
    const detail::part1c::SPointerSlots* slots = const_cast<CMaterial&>(m).parameters.table().pointers;
    if (!slots) return 0;
    const uint32_t key = e.valueOffset + 4u * index;
    const void* pointer = nullptr;
    if (e.type == 18) {
        auto it = slots->lights.find(key);
        if (it != slots->lights.end()) pointer = it->second.get();
    } else {
        auto it = slots->textures.find(key);
        if (it != slots->textures.end()) pointer = it->second.get();
    }
    return static_cast<uint32_t>(reinterpret_cast<std::uintptr_t>(pointer));
}

}  // namespace

// 0x5cbf78 _ZN6glitch5video9CMaterialD1Ev (D0 0x5cc144)
CMaterial::~CMaterial() {
    if (m_renderer) {
        dropParameters();
        if (m_renderer->m_driver) {
            m_renderer->m_driver->onMaterialDestroyed(this);  // driver vtable +0x210
        }
    }
}

// 0x5cbc70 _ZN6glitch5video9CMaterialC1ERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEEPKcRKNS1_23SStateWithoutRenderStateEPKhPKNS0_6detail8material12SRenderStateE
// 0x5cbe58 (C2) is the same body. The block is laid out as vectors; the hash words of every technique start with the shader id of its
// first pass folded into the top byte.
CMaterial::CMaterial(const boost::intrusive_ptr<CMaterialRenderer>& renderer, const char* name, const SStateWithoutRenderState& state,
                     const uint8_t* values, const detail::material::SRenderState* renderState)
    : m_refCount(0),
      m_renderer(renderer),
      m_technique(state.technique),
      m_dirtyParameters(state.dirtyParameters),
      m_dirtyHashes(state.dirtyHashes),
      m_remapSet(state.remapSet) {
    m_hasName = name != nullptr;
    if (name) {
        m_nameText = name;
    }
    m_values.assign(m_renderer->m_valueBufferSize, 0);
    m_hashStorage.assign(m_renderer->m_techniqueCount, 0);
    m_hashCodes = m_hashStorage.data();  // +0x18
    attachParameters(&m_renderer->parameters.headerForTest(), m_values.data());
    init(values, renderState, false);
    for (uint32_t i = 0; i < m_renderer->m_techniqueCount; ++i) {
        const uint16_t id = shaderOf(*m_renderer->m_techniques[i].passes)->m_id;
        m_hashCodes[i] = (m_hashCodes[i] & 0xFFFFFFu) | ((static_cast<uint32_t>(id & 0xFFu) ^ static_cast<uint32_t>(id >> 8)) << 24);
    }
}

// 0x5cbfec _ZN6glitch5video9CMaterial8allocateERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEEPKcRKNS1_23SStateWithoutRenderStateEPKhPKNS0_6detail8material12SRenderStateE
// The block (renderer value size + 36 + 4 * techniques + render-state block size) is the object plus its vectors; a missing value pointer
// selects the renderer's default values. Returns the material with count 1.
boost::intrusive_ptr<CMaterial> CMaterial::allocate(const boost::intrusive_ptr<CMaterialRenderer>& renderer, const char* name,
                                                    const SStateWithoutRenderState& state, const uint8_t* values,
                                                    const detail::material::SRenderState* renderState) {
    CMaterial* material = new CMaterial(renderer, name, state, values ? values : renderer->parameters.valueBuffer(), renderState);
    return boost::intrusive_ptr<CMaterial>(material, true);
}

// 0x5cc0a0 _ZN6glitch5video9CMaterial8allocateERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEEPKch
// A default state (technique `technique`'s ordinal is written by the 16-byte argument: 0, all dirty bits set, remap set 0 -- the
// parameter is the name; the technique byte of the argument is 0) and the renderer's default values.
boost::intrusive_ptr<CMaterial> CMaterial::allocate(const boost::intrusive_ptr<CMaterialRenderer>& renderer, const char* name, uint8_t) {
    SStateWithoutRenderState state;
    state.technique = 0;
    state.dirtyParameters = 0xFFFFFFFFu;
    state.dirtyHashes = 0xFFFFFFFFu;
    state.remapSet = 0;
    return allocate(renderer, name, state, renderer->parameters.valueBuffer(), nullptr);
}

// 0x5cbd90 _ZN6glitch5video9CMaterial24allocateProcessBufferHeapERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEEPKcRKNS1_23SStateWithoutRenderStateEPKhPKNS0_6detail8material12SRenderStateE
// The block comes from the process buffer heap (allocProcessBuffer). Returns null when the heap cannot give it. The port constructs the
// object in the block; its vectors still use the global allocator.
CMaterial* CMaterial::allocateProcessBufferHeap(const boost::intrusive_ptr<CMaterialRenderer>& renderer, const char* name,
                                                const SStateWithoutRenderState& state, const uint8_t* values,
                                                const detail::material::SRenderState* renderState) {
    // Host deviation (first boot): the process buffer heap hands out 4-byte aligned words with a header word in front, and the host CMaterial needs
    // 8/16-byte alignment. Rounding the pointer up made releaseProcessBuffer(material) read a header that was not there (heap corruption in
    // IVideoDriver::setMaterial). The block comes from the general allocator instead; releaseProcessBuffer frees such a pointer with free().
    void* aligned = std::malloc(sizeof(CMaterial));
    if (!aligned) {
        return nullptr;
    }
    return new (aligned) CMaterial(renderer, name, state, values ? values : renderer->parameters.valueBuffer(), renderState);
}

// 0x5cbe0c _ZNK6glitch5video9CMaterial9cloneHeapEPKc
// allocateProcessBufferHeap with this material's renderer, header state and values; the name defaults to this material's own.
CMaterial* CMaterial::cloneHeap(const char* name) const {
    if (!name && m_hasName) {
        name = m_nameText.c_str();
    }
    SStateWithoutRenderState state;
    state.technique = m_technique;
    state.dirtyParameters = m_dirtyParameters;
    state.dirtyHashes = m_dirtyHashes;
    state.remapSet = m_remapSet;
    CMaterial* copy = allocateProcessBufferHeap(m_renderer, name, state, m_values.data(), nullptr);
    if (copy) {
        copy->init(m_values.data(), nullptr, true, &parameters, nullptr);
    }
    return copy;
}

// 0x5cc0e8 _ZNK6glitch5video9CMaterial5cloneEPKc
// A copy with count 1: the same renderer, header state, values and render state; the name defaults to this material's own.
boost::intrusive_ptr<CMaterial> CMaterial::clone(const char* name) const {
    if (!name && m_hasName) {
        name = m_nameText.c_str();
    }
    SStateWithoutRenderState state;
    state.technique = m_technique;
    state.dirtyParameters = m_dirtyParameters;
    state.dirtyHashes = m_dirtyHashes;
    state.remapSet = m_remapSet;
    boost::intrusive_ptr<CMaterial> copy = allocate(m_renderer, name, state, m_values.data(), nullptr);
    copy->init(m_values.data(), nullptr, true, &parameters, nullptr);
    return copy;
}

// 0x5cbbe0 _ZN6glitch5video9CMaterial4initEPKhPKNS0_6detail8material12SRenderStateEb
// When the renderer has parameters: optionally drops the current ones, copies the renderer's value size from `values` and takes the
// pointers held in the copied values (matrices, textures, lights) from the renderer's defaults.
void CMaterial::init(const uint8_t* values, const detail::material::SRenderState* renderState, bool dropOld) {
    init(values, renderState, dropOld, nullptr, m_renderer ? &m_renderer->parameters : nullptr);
}

void CMaterial::init(const uint8_t* values, const detail::material::SRenderState*, bool dropOld,
                     const detail::IMaterialParameters<CMaterial, true>* sourceMaterial,
                     const detail::IMaterialParameters<CMaterialRenderer, false>* sourceRenderer) {
    if (m_renderer->m_parameterCount == 0 && m_renderer->parameters.parameterHeader().count == 0) {
        return;
    }
    if (dropOld) {
        dropParameters();
    }
    if (values && !m_values.empty()) {
        std::memcpy(m_values.data(), values, m_values.size());  // +0x20
    }
    // grabParameters: the slots (matrix copies, texture and light references) of the source.
    const uint16_t count = m_renderer->parameters.parameterHeader().count;
    for (uint16_t id = 0; id < count; ++id) {
        const SParameterEntry* entry = parameters.getParameterDef(id);
        if (!entry) {
            continue;
        }
        if (entry->type == kMatrixType) {
            for (uint32_t i = 0; i < entry->count; ++i) {
                const uint32_t key = entry->valueOffset + 4u * i;
                const Matrix* src = nullptr;
                if (sourceMaterial) {
                    auto& slots = const_cast<detail::IMaterialParameters<CMaterial, true>*>(sourceMaterial)->matrixSlots();
                    auto it = slots.find(key);
                    src = it == slots.end() ? nullptr : it->second;
                } else if (sourceRenderer) {
                    auto& slots = const_cast<detail::IMaterialParameters<CMaterialRenderer, false>*>(sourceRenderer)->matrixSlots();
                    auto it = slots.find(key);
                    src = it == slots.end() ? nullptr : it->second;
                }
                if (src) {
                    detail::setMatrixParameter(parameters.matrixSlots()[key], *src);
                }
            }
        } else if (entry->type >= 12 && entry->type <= 15) {
            detail::part1c::SPointerSlots* dst = parameters.table().pointers;
            const detail::part1c::SPointerSlots* src = nullptr;
            if (sourceMaterial) {
                src = const_cast<detail::IMaterialParameters<CMaterial, true>*>(sourceMaterial)->table().pointers;
            }
            // A renderer's default texture and light slots are never set (the renderer has no pointer-slot view in the port), so
            // there is nothing to copy from it.
            if (dst && src) {
                for (uint32_t i = 0; i < entry->count; ++i) {
                    const uint32_t key = entry->valueOffset + 4u * i;
                    auto t = src->textures.find(key);
                    if (t != src->textures.end()) dst->textures[key] = t->second;
                    auto l = src->lights.find(key);
                    if (l != src->lights.end()) dst->lights[key] = l->second;
                }
            }
        }
    }
}

// 0x5cbc3c _ZN6glitch5video9CMaterial5resetEPKNS0_6detail8material12SRenderStateE
// Puts the header back to its post-construction state and reloads the renderer's default values.
void CMaterial::reset(const detail::material::SRenderState* renderState) {
    m_remapSet = 0;
    m_dirtyParameters = 0xFFFFFFFFu;
    m_technique = 0;
    m_dirtyHashes = 0xFFFFFFFFu;
    init(m_renderer->parameters.valueBuffer(), renderState, true);
}

// 0x5cbba4 detail::IMaterialParameters<CMaterial, ISharedMemoryBlockHeader<CMaterial>>::dropParameters
void CMaterial::dropParameters() {
    const uint16_t count = m_renderer ? m_renderer->parameters.parameterHeader().count : 0;
    for (uint16_t i = 0; i < count; ++i) {
        dropParameter(i);
    }
}

// 0x5cba30 detail::IMaterialParameters<CMaterial, ISharedMemoryBlockHeader<CMaterial>>::dropParameter
// Matrix entries (type 11) return their matrices to the pool and null the slots; texture and light entries (12..15) drop their references;
// other types are untouched. (Type 0x12, a counted matrix reference, has no port counterpart.)
void CMaterial::dropParameter(uint16_t index) {
    const SParameterEntry* entry = parameters.getParameterDef(index);
    if (!entry) {
        return;
    }
    switch (entry->type) {
        case 11: {
            const Matrix identity(Matrix::EM4CONST_IDENTITY);
            for (uint32_t i = 0; i < entry->count; ++i) {
                auto& slots = parameters.matrixSlots();
                auto it = slots.find(entry->valueOffset + 4u * i);
                if (it != slots.end() && it->second) {
                    detail::setMatrixParameter(it->second, identity);  // an identity source releases the slot to the pool
                }
            }
            break;
        }
        case 12:
        case 13:
        case 14:
        case 15: {
            detail::part1c::SPointerSlots* slots = parameters.table().pointers;
            if (slots) {
                for (uint32_t i = 0; i < entry->count; ++i) {
                    slots->textures.erase(entry->valueOffset + 4u * i);
                    slots->lights.erase(entry->valueOffset + 4u * i);
                }
            }
            break;
        }
        default:
            break;
    }
}

// 0x35364c _ZNK6glitch5video9CMaterial11getHashCodeEv
uint32_t CMaterial::getHashCode() const {
    const int32_t technique = getTechnique();
    if (((m_dirtyHashes >> technique) & 1u) != 0) {
        updateHashCode(static_cast<uint8_t>(technique));
    }
    return m_hashCodes[technique];
}

// 0x3537b0 _ZNK6glitch5video9CMaterialeqERKS1_
bool CMaterial::operator==(const CMaterial& other) const {
    const int32_t technique = getTechnique();
    const int32_t otherTechnique = other.getTechnique();
    return equals(static_cast<uint8_t>(technique), other, static_cast<uint8_t>(otherTechnique));
}

// 0x3537e4 _ZNK6glitch5video9CMaterialltERKS1_
bool CMaterial::operator<(const CMaterial& other) const {
    const int32_t technique = getTechnique();
    const int32_t otherTechnique = other.getTechnique();

    if (((m_dirtyHashes >> technique) & 1u) != 0) {
        updateHashCode(static_cast<uint8_t>(technique));
    }
    const uint32_t hash = m_hashCodes[technique];

    if (((other.m_dirtyHashes >> otherTechnique) & 1u) != 0) {
        other.updateHashCode(static_cast<uint8_t>(otherTechnique));
    }
    const uint32_t otherHash = other.m_hashCodes[otherTechnique];

    bool greaterOrEqual = hash >= otherHash;
    if (hash == otherHash) {
        const uint8_t count = getTechniqueParameterCount(technique);
        const uint8_t otherCount = other.getTechniqueParameterCount(otherTechnique);
        greaterOrEqual = count >= otherCount;
        if (count == otherCount) {
            return compare(static_cast<uint8_t>(technique), count, other, static_cast<uint8_t>(otherTechnique));
        }
    }
    return !greaterOrEqual;
}

// 0x5aa4a8 _ZN6glitch5video9CMaterial22unsetParametersDirtyEh
// Clears the parameter dirty bit; when the hash bit is also set and the technique has exactly one pass, refreshes the parameter hash.
// The original returns what the compiler left in r0 (the material, or the hash updater's result); the port returns void.
void CMaterial::unsetParametersDirty(uint8_t parameterIndex) {
    const uint32_t bit = 1u << parameterIndex;
    if ((m_dirtyParameters & bit) == 0) {
        return;
    }
    m_dirtyParameters &= ~bit;

    if ((m_dirtyHashes & bit) != 0) {
        const int32_t technique = getTechnique();
        if (getTechniqueParameterCount(technique) == 1) {
            updateParametersHashCode(parameterIndex);
        }
    }
}

// 0x5c5d7c _ZNK6glitch5video9CMaterial23getRenderStateBlockSizeERKNS0_17CMaterialRendererE
uint32_t CMaterial::getRenderStateBlockSize(const CMaterialRenderer&) {
    return 0;
}

// 0x5c5d84 _ZN6glitch5video9CMaterial22setRenderStateInternalEhhRKNS0_6detail8material12SRenderStateE
void CMaterial::setRenderStateInternal(uint8_t, uint8_t, const detail::material::SRenderState&) {}

// The pass count is the byte at +4 of the renderer's 12-byte technique entry (0x5c5d34 caller, 0x5aa4a8).
uint8_t CMaterial::getTechniqueParameterCount(int32_t technique) const {
    return m_renderer ? m_renderer->m_techniques[technique].passCount : 0;
}

// 0x5c5fd8 _ZNK6glitch5video9CMaterial14updateHashCodeEh
// More than one pass: the hash is -1. Otherwise refresh the parameter hash when its dirty bit is set, then the render-state nibble when
// the pass has its flag byte set. Clears the hash dirty bit.
void CMaterial::updateHashCode(uint8_t technique) const {
    const int32_t current = getTechnique();
    const STechniqueEntry* table = m_renderer->m_techniques;
    if (table[current].passCount > 1) {
        m_hashCodes[technique] = 0xFFFFFFFFu;
        m_dirtyHashes &= ~(1u << technique);
        return;
    }
    if (((m_dirtyParameters >> technique) & 1u) != 0) {
        updateParametersHashCode(technique);
    }
    if (table[technique].passCount <= 1 && table[technique].passes[0].flag30 == 0) {
        m_dirtyHashes &= ~(1u << technique);
        return;
    }
    updateRenderStateHashCode(technique);
    m_dirtyHashes &= ~(1u << technique);
}

// 0x5c5d88 _ZNK6glitch5video9CMaterial24updateParametersHashCodeEh
// Hashes (h = byte + 13 * h) the stored values of every non-global parameter of the technique's first pass: entries of kind 2 into a
// 16-bit accumulator, matrices (68 bytes per slot, the identity for a null slot) and plain values into the byte accumulator. The
// accumulators go into bits 12..23 and 0..7 of the technique's hash word.
void CMaterial::updateParametersHashCode(uint8_t technique) const {
    const SRenderPass& pass = *m_renderer->m_techniques[technique].passes;
    const uint16_t* ids = passParameterIds(pass);
    const uint16_t count = passParameterCount(pass);
    const uint8_t* values = m_values.data();
    uint16_t wide = 0;
    uint32_t narrow = 0;
    for (uint16_t k = 0; k < count; ++k) {
        const uint16_t id = ids[k];
        if (id & 0x8000u) {
            continue;
        }
        const SParameterEntry* entry = entryOf(*this, id);
        if (!entry) {
            continue;
        }
        if (entry->kind == 2) {
            const uint8_t* p = values + entry->valueOffset;
            for (uint32_t i = 0; i < 4u * entry->count; ++i) {
                wide = static_cast<uint16_t>(p[i] + 13 * wide);
            }
        } else if (entry->kind == 11 || entry->kind == 15) {
            continue;
        } else if (isPointerType(entry->type)) {
            for (uint32_t e = 0; e < entry->count; ++e) {
                const uint32_t word = pointerWord(*this, *entry, e);
                for (int b = 0; b < 4; ++b) {
                    narrow = ((word >> (8 * b)) & 0xFFu) + 13 * narrow;
                }
            }
        } else if (entry->type != kMatrixType) {
            const uint8_t* p = values + entry->valueOffset;
            for (uint32_t i = 0; i < entry->count * kValueTypeSize[entry->type]; ++i) {
                narrow = p[i] + 13 * narrow;
            }
        } else {
            for (uint32_t m = 0; m < entry->count; ++m) {
                const Matrix* slot = matrixSlot(*this, *entry, m);
                uint8_t bytes[68];
                matrixBytes(slot ? *slot : identityMatrix(), bytes);
                for (int i = 0; i < 68; ++i) {
                    narrow = bytes[i] + 13 * narrow;
                }
            }
        }
    }
    m_hashCodes[technique] = static_cast<uint8_t>(narrow) | (m_hashCodes[technique] & 0xFF000F00u) | ((static_cast<uint32_t>(wide) & 0xFFFu) << 12);
}

// 0x5c5fa4 _ZNK6glitch5video9CMaterial24updateRenderStateHashCodeEh
// Bits 8..11 of the hash word: the low nibble of the first byte of the technique's first pass state.
void CMaterial::updateRenderStateHashCode(uint8_t technique) const {
    const uint8_t first = static_cast<uint8_t>(m_renderer->m_techniques[technique].passes[0].stateWords[0] & 0xFFu);
    m_hashCodes[technique] = (m_hashCodes[technique] & 0xFFFFF0FFu) | (static_cast<uint32_t>(first & 0xFu) << 8);
}

// 0x353684 _ZNK6glitch5video9CMaterial6equalsEhRKS1_h
// Equal hash words, the same pass count, the same first shader, equal pass states and shaders pass by pass, and equal parameters.
bool CMaterial::equals(uint8_t technique, const CMaterial& other, uint8_t otherTechnique) const {
    if (((m_dirtyHashes >> technique) & 1u) != 0) {
        updateHashCode(technique);
    }
    const uint32_t hash = m_hashCodes[technique];
    if (((other.m_dirtyHashes >> otherTechnique) & 1u) != 0) {
        other.updateHashCode(otherTechnique);
    }
    if (hash != other.m_hashCodes[otherTechnique]) {
        return false;
    }
    const STechniqueEntry& a = m_renderer->m_techniques[technique];
    const STechniqueEntry& b = other.m_renderer->m_techniques[otherTechnique];
    const uint8_t passCount = a.passCount;
    if (b.passCount != passCount) {
        return false;
    }
    if (passCount == 0) {
        return areParametersEqual(technique, passCount, other, otherTechnique);
    }
    if (a.passes[0].shader != b.passes[0].shader) {
        return false;
    }
    for (uint32_t i = 0;; ++i) {
        if (std::memcmp(a.passes[i].stateWords, b.passes[i].stateWords, 0x20) != 0) {
            return false;
        }
        if (i + 1 == passCount) {
            return areParametersEqual(technique, passCount, other, otherTechnique);
        }
        if (a.passes[i + 1].shader != b.passes[i + 1].shader) {
            return false;
        }
    }
}

// 0x5ca72c _ZNK6glitch5video9CMaterial18areParametersEqualEhhRKS1_h
// For every pass: every non-global parameter pair must have the same type and equal values (matrices compare as floats, a null slot
// being the identity; two flagged matrices are equal without comparing).
bool CMaterial::areParametersEqual(uint8_t technique, uint8_t passCount, const CMaterial& other, uint8_t otherTechnique) const {
    if (passCount == 0) {
        return true;
    }
    const STechniqueEntry& a = m_renderer->m_techniques[technique];
    const STechniqueEntry& b = other.m_renderer->m_techniques[otherTechnique];
    for (uint32_t p = 0; p < passCount; ++p) {
        const uint16_t* idsA = passParameterIds(a.passes[p]);
        const uint16_t* idsB = passParameterIds(b.passes[p]);
        const uint16_t count = passParameterCount(a.passes[p]);
        for (uint16_t k = 0; k < count; ++k) {
            if ((idsA[k] & 0x8000u) || (idsB[k] & 0x8000u)) {
                continue;
            }
            const SParameterEntry* ea = entryOf(*this, idsA[k]);
            const SParameterEntry* eb = entryOf(other, idsB[k]);
            if (!ea || !eb) {
                continue;
            }
            if (ea->type != eb->type) {
                return false;
            }
            if (isPointerType(ea->type)) {
                for (uint32_t e = 0; e < ea->count; ++e) {
                    if (pointerWord(*this, *ea, e) != pointerWord(other, *eb, e)) {
                        return false;
                    }
                }
                continue;
            }
            if (ea->type != kMatrixType) {
                if (std::memcmp(m_values.data() + ea->valueOffset, other.m_values.data() + eb->valueOffset,
                                ea->count * kValueTypeSize[ea->type]) != 0) {
                    return false;
                }
                continue;
            }
            for (uint32_t m = 0; m < ea->count; ++m) {
                const Matrix* sa = matrixSlot(*this, *ea, m);
                const Matrix* sb = matrixSlot(other, *eb, m);
                if (!sa && !sb) {
                    continue;
                }
                if (sa && sb && sa->flag && sb->flag) {
                    continue;
                }
                const Matrix* pa = sa ? sa : &identityMatrix();
                const Matrix* pb = sb ? sb : &identityMatrix();
                if (!sa && sb->flag) {
                    continue;  // the flagged side is the identity already
                }
                if (!sb && sa->flag) {
                    continue;
                }
                for (int i = 0; i < 16; ++i) {
                    if (pa->M[i] != pb->M[i]) {
                        return false;
                    }
                }
            }
        }
    }
    return true;
}

// 0x5ca3fc _ZNK6glitch5video9CMaterial7compareEhhRKS1_h
// Ordering of the first pass shader ids, then pass by pass: parameter values (kind-2 entries word by word, others by memcmp of the
// first differing entry), the first byte of the pass state, and the next pass's shader id. Returns 1 when this orders before `other`.
bool CMaterial::compare(uint8_t technique, uint8_t passCount, const CMaterial& other, uint8_t otherTechnique) const {
    if (passCount == 0) {
        return false;
    }
    const STechniqueEntry& a = m_renderer->m_techniques[technique];
    const STechniqueEntry& b = other.m_renderer->m_techniques[otherTechnique];
    const uint32_t idThis = shaderOf(a.passes[0])->m_id;
    const uint32_t idOther = shaderOf(b.passes[0])->m_id;
    if (idOther > idThis) {
        return true;
    }
    if (idOther < idThis) {
        return false;
    }
    for (uint32_t p = 0;; ++p) {
        const SRenderPass& passA = a.passes[p];
        const SRenderPass& passB = b.passes[p];
        const uint16_t* idsA = passParameterIds(passA);
        const uint16_t* idsB = passParameterIds(passB);
        const uint16_t count = passParameterCount(passA);
        int result = 0;
        for (uint16_t k = 0; k < count; ++k) {
            if ((idsA[k] & 0x8000u) || (idsB[k] & 0x8000u)) {
                continue;
            }
            const SParameterEntry* ea = entryOf(*this, idsA[k]);
            const SParameterEntry* eb = entryOf(other, idsB[k]);
            if (!ea || !eb) {
                continue;
            }
            if (ea->kind != 2) {
                if (result == 0) {
                    if (ea->type == kMatrixType) {
                        for (uint32_t m = 0; m < ea->count; ++m) {
                            const Matrix* sa = matrixSlot(*this, *ea, m);
                            const Matrix* sb = matrixSlot(other, *eb, m);
                            uint8_t bytesA[68];
                            uint8_t bytesB[68];
                            matrixBytes(sa ? *sa : identityMatrix(), bytesA);
                            matrixBytes(sb ? *sb : identityMatrix(), bytesB);
                            result = std::memcmp(bytesA, bytesB, 68);  // the original keeps the last element's result
                        }
                    } else if (isPointerType(ea->type)) {
                        for (uint32_t e = 0; e < ea->count; ++e) {
                            const uint32_t wa = pointerWord(*this, *ea, e);
                            const uint32_t wb = pointerWord(other, *eb, e);
                            result = wa < wb ? -1 : (wa > wb ? 1 : 0);
                            if (result != 0) break;
                        }
                    } else {
                        result = std::memcmp(m_values.data() + ea->valueOffset, other.m_values.data() + eb->valueOffset,
                                             ea->count * kValueTypeSize[ea->type]);
                    }
                }
                continue;
            }
            // Kind 2: the 4-byte words, unsigned, first difference decides (this smaller: 1, larger: 0).
            for (uint32_t w = 0; w < ea->count; ++w) {
                uint32_t wordA;
                uint32_t wordB;
                std::memcpy(&wordA, m_values.data() + ea->valueOffset + 4u * w, 4);
                std::memcpy(&wordB, other.m_values.data() + eb->valueOffset + 4u * w, 4);
                if (wordA < wordB) {
                    return true;
                }
                if (wordA > wordB) {
                    return false;
                }
            }
        }
        const int stateA = static_cast<int>(passA.stateWords[0] & 0xFFu);
        const int stateB = static_cast<int>(passB.stateWords[0] & 0xFFu);
        if (stateA - stateB < 0) {
            return true;
        }
        if (stateA != stateB) {
            return false;
        }
        if (result < 0) {
            return true;
        }
        if (result != 0 || p + 1 == passCount) {
            return false;
        }
        const uint32_t nextThis = shaderOf(a.passes[p + 1])->m_id;
        const uint32_t nextOther = shaderOf(b.passes[p + 1])->m_id;
        if (nextThis < nextOther) {
            return true;
        }
        if (nextThis > nextOther) {
            return false;
        }
    }
}

}  // namespace glitch::video
