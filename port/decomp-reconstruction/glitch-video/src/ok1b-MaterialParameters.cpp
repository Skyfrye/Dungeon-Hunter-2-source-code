// IMaterialParameters members of owners M (CMaterial) and R (CMaterialRenderer) that act on the whole parameter table:
// grabParameters, dropParameter / dropParameters (R), initParametersToIdentity, and the R view with pointer slots. Owner K1b.
//
// Original model: the value area holds, for a matrix parameter, a pointer to a pooled CMatrix4 (null = identity), and for a texture
// or light parameter the counted pointer, each 4 bytes. The port keeps matrices in the owner's slot map (keyed by the original byte
// offset of the slot) and textures and lights in SPointerSlots (same key), so the walks below act on those maps. The pool is the
// one of detail::setMatrixParameter (an identity source releases a set slot to it).
#include <cstdint>
#include <cstring>
#include <map>
#include <memory>

#include "glitch-video/light.hpp"
#include "glitch-video/material_parameters.hpp"
#include "glitch-video/material_parameters_part_1c.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/texture.hpp"

namespace glitch::video::detail {

namespace {

using Matrix = core::CMatrix4<float>;
using SlotMap = std::map<uint32_t, Matrix*>;

constexpr uint32_t kSlotBytes = 4;  // the original's pointer slot size, the key step of the slot maps

// The matrix of a slot goes back to the pool and the slot is cleared (an identity source releases a set slot).
void releaseMatrix(Matrix*& slot) {
    if (slot == nullptr) return;
    const Matrix identity(Matrix::EM4CONST_IDENTITY);
    setMatrixParameter(slot, identity);
}

// 0x5cb8dc / 0x5d47b4: the matrix slots of the table become private copies (each non-null pointer is replaced by a new pool matrix
// copied from it); the counted texture and light slots need nothing (they were counted when the maps were copied).
template <class Entry>
void grabEntries(uint16_t count, Entry&& entryOf, SlotMap& matrices) {
    for (uint16_t id = 0; id < count; ++id) {
        const SParameterEntry* entry = entryOf(id);
        if (entry == nullptr || entry->type != 11) continue;
        for (uint32_t i = 0; i < entry->count; ++i) {
            const auto it = matrices.find(entry->valueOffset + kSlotBytes * i);
            if (it != matrices.end() && it->second != nullptr) it->second = new Matrix(*it->second);
        }
    }
}

// 0x5d48f8: the matrices of a matrix entry go to the pool (the slots are cleared), the references of a texture or light entry are dropped.
void dropEntry(const SParameterEntry& entry, SlotMap& matrices, part1c::SPointerSlots* pointers) {
    switch (entry.type) {
        case 11:
            for (uint32_t i = 0; i < entry.count; ++i) {
                const auto it = matrices.find(entry.valueOffset + kSlotBytes * i);
                if (it != matrices.end()) releaseMatrix(it->second);
            }
            break;
        case 12:
        case 13:
        case 14:
        case 15:
        case 18:
            if (pointers != nullptr) {
                for (uint32_t i = 0; i < entry.count; ++i) {
                    const uint32_t key = entry.valueOffset + kSlotBytes * i;
                    if (entry.type == 18) {
                        pointers->lights.erase(key);
                    } else {
                        pointers->textures.erase(key);
                    }
                }
            }
            break;
        default:
            break;
    }
}

void storeWord(uint8_t* at, uint32_t word) { std::memcpy(at, &word, sizeof word); }

// 0x5cca58 / 0x5d5b88: the first element of the entry takes its identity value. Type 0: a zero byte. 1..7: zero words (as many as the
// type has components). 8 and 17: four floats of 1.0. 16: four 0xff bytes. 11: the matrix goes back to the pool (the original leaves the
// slot pointing at it; the port clears it). 12..15 and 18: the reference is released (the slot is emptied).
void initEntryToIdentity(uint8_t* values, const SParameterEntry& entry, SlotMap& matrices, part1c::SPointerSlots* pointers) {
    constexpr uint32_t kOne = 0x3f800000u;
    uint8_t* at = values + entry.valueOffset;
    switch (entry.type) {
        case 0: *at = 0; break;
        case 1: case 5: storeWord(at, 0); break;
        case 2: case 6: storeWord(at, 0); storeWord(at + 4, 0); break;
        case 3: case 7: storeWord(at, 0); storeWord(at + 4, 0); storeWord(at + 8, 0); break;
        case 4: storeWord(at, 0); storeWord(at + 4, 0); storeWord(at + 8, 0); storeWord(at + 12, 0); break;
        case 8: case 17:
            storeWord(at, kOne); storeWord(at + 4, kOne); storeWord(at + 8, kOne); storeWord(at + 12, kOne);
            break;
        case 11: {
            const auto it = matrices.find(entry.valueOffset);
            if (it != matrices.end()) releaseMatrix(it->second);
            break;
        }
        case 12: case 13: case 14: case 15:
            if (pointers != nullptr) pointers->textures.erase(entry.valueOffset);
            break;
        case 16: std::memset(at, 0xff, 4); break;
        case 18:
            if (pointers != nullptr) pointers->lights.erase(entry.valueOffset);
            break;
        default: break;
    }
}

}  // namespace

// ---- R (CMaterialRenderer): the inline header, the value buffer and the pointer slots.

// The view of the renderer's table for the part 1c rows: the header, the value buffer (+0x24) and the pointer slot maps; the
// renderer has no dirty words.
template <>
part1c::SParameterTable IMaterialParameters<CMaterialRenderer, false>::table() {
    part1c::SParameterTable t;
    t.header = &m_header;
    t.values = m_values;
    if (!m_pointers) m_pointers = std::make_shared<part1c::SPointerSlots>();
    t.pointers = m_pointers.get();
    return t;
}

template <>
part1c::SParameterTable IMaterialParameters<CMaterialRenderer, false>::table() const {
    return const_cast<IMaterialParameters*>(this)->table();
}

// 0x5d47b4 IMaterialParameters<CMaterialRenderer, ...>::grabParameters()
template <>
void IMaterialParameters<CMaterialRenderer, false>::grabParameters() {
    grabEntries(m_header.count, [this](uint16_t id) { return getParameterDef(id); }, m_matrixSlots);
}

// 0x5d48f8 IMaterialParameters<CMaterialRenderer, ...>::dropParameter(unsigned short)
template <>
void IMaterialParameters<CMaterialRenderer, false>::dropParameter(uint16_t id) {
    const SParameterEntry* entry = getParameterDef(id);
    if (entry == nullptr) return;
    dropEntry(*entry, m_matrixSlots, m_pointers.get());
}

// 0x5d4a68 IMaterialParameters<CMaterialRenderer, ...>::dropParameters()
template <>
void IMaterialParameters<CMaterialRenderer, false>::dropParameters() {
    for (uint16_t id = 0; id < m_header.count; ++id) dropParameter(id);
}

// 0x5d5b88 IMaterialParameters<CMaterialRenderer, ...>::initParametersToIdentity()
template <>
void IMaterialParameters<CMaterialRenderer, false>::initParametersToIdentity() {
    if (m_values == nullptr) return;
    for (uint16_t id = 0; id < m_header.count; ++id) {
        const SParameterEntry* entry = getParameterDef(id);
        if (entry != nullptr) initEntryToIdentity(m_values, *entry, m_matrixSlots, m_pointers.get());
    }
}

// ---- M (CMaterial): the table is the renderer's, reached through the block pointer.

// 0x5cb8dc IMaterialParameters<CMaterial, ...>::grabParameters()
template <>
void IMaterialParameters<CMaterial, true>::grabParameters() {
    if (m_block == nullptr) return;
    grabEntries(m_block->count, [this](uint16_t id) { return getParameterDef(id); }, m_matrixSlots);
}

// 0x5cca58 IMaterialParameters<CMaterial, ...>::initParametersToIdentity()
template <>
void IMaterialParameters<CMaterial, true>::initParametersToIdentity() {
    if (m_block == nullptr || m_values == nullptr) return;
    for (uint16_t id = 0; id < m_block->count; ++id) {
        const SParameterEntry* entry = getParameterDef(id);
        if (entry != nullptr) initEntryToIdentity(m_values, *entry, m_matrixSlots, m_pointers.get());
    }
}

// dropParameter / dropParameters of M are CMaterial::dropParameter / dropParameters (material.cpp), so they are not specialized here.

}  // namespace glitch::video::detail
