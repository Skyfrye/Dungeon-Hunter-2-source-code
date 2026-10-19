// Owner K1: the attribute (de)serializers of the material parameter owners: IMaterialParameters<CMaterial / CMaterialRenderer>::
// {serialize,deserialize}Attributes (0x5cdb3c, 0x5cd3ec, 0x5d6a60, 0x5d6080), and the object-level ones of CMaterial (0x5ce460, 0x5cda48),
// CMaterialRenderer (0x5d7378, 0x5d66f4).
//
// Every parameter becomes a group named after it, holding "Type" and "Value Type" (enum choice lists), "Array Size" and one attribute
// per element: "value" for a single element, "[n]" for an array (read back by index: the elements start at attribute 3). The element is
// written / read through the owner's typed accessors, one type per value type code: 1 int, 2..4 int vectors, 5 float, 6..8 float vectors,
// 11 matrix, 12..15 textures, 16 colour, 17 float colour, 18 light.
//
// Port notes: the original reads and writes the raw value bytes (so the deserializer sets no dirty marks); the port goes through the
// typed setters, which mark a material's parameters dirty. Both owners have the texture and light rows (the renderer's are bound by
// owner K1b in material_parameters_bind_r.cpp), so all element kinds are written and read.
#include <cstdio>
#include <cstring>
#include <string>

#include "glitch-core-io/core/shared_string_heap_ops.hpp"
#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-video/global_parameter_manager.hpp"
#include "glitch-video/light.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_parameters.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/video_names.hpp"

namespace glitch::video::detail {

namespace {

using V2i = core::vector2d<int32_t>;
using V3i = core::vector3d<int32_t>;
using V4i = core::vector4d<int32_t>;
using V2f = core::vector2d<float>;
using V3f = core::vector3d<float>;
using V4f = core::vector4d<float>;
using Matrix = core::CMatrix4<float>;
using TexturePtr = boost::intrusive_ptr<ITexture>;
using LightPtr = boost::intrusive_ptr<CLight>;

// The name of the element attribute: "value" for one element, "[n]" for an array.
std::string elementName(uint32_t count, uint32_t index) {
    if (count == 1) return "value";
    char text[24];
    std::snprintf(text, sizeof text, "[%u]", index);
    return text;
}

const char* textOf(const void* handle) {
    return glitch::core::detail::sharedStringText(static_cast<const glitch::core::detail::SSharedStringData*>(handle));
}

// Writes the group of one parameter: its definition and every element read through the owner's typed getters.
template <class Owner>
void writeParameter(io::IAttributes* a, const Owner& owner, uint16_t id, const void* nameHandle, uint32_t kind, uint32_t valueType,
                    uint32_t count) {
    a->push(textOf(nameHandle));  // IAttributes vtable +0x30
    a->addEnum("Type", static_cast<int>(kind), shaderParameterTypeNames(), true);
    a->addEnum("Value Type", static_cast<int>(valueType), shaderParameterValueTypeNames(), true);
    a->addInt("Array Size", static_cast<int>(count), true);
    for (uint32_t e = 0; e < count; ++e) {
        const std::string name = elementName(count, e);
        switch (valueType) {
            case 1: { int v = 0; owner.getParameter(id, e, v); a->addInt(name.c_str(), v, false); break; }
            case 2: { V2i v; owner.getParameter(id, e, v); a->addVector2di(name.c_str(), v, false); break; }
            case 3: { V3i v; owner.getParameter(id, e, v); a->addVector3di(name.c_str(), v, false); break; }
            case 4: { V4i v; owner.getParameter(id, e, v); a->addVector4di(name.c_str(), v, false); break; }
            case 5: { float v = 0; owner.getParameter(id, e, v); a->addFloat(name.c_str(), v, false); break; }
            case 6: { V2f v; owner.getParameter(id, e, v); a->addVector2d(name.c_str(), v, false); break; }
            case 7: { V3f v; owner.getParameter(id, e, v); a->addVector3d(name.c_str(), v, false); break; }
            case 8: { V4f v; owner.getParameter(id, e, v); a->addVector4d(name.c_str(), v, false); break; }
            case 11: { Matrix v; owner.getParameter(id, e, v); a->addMatrix(name.c_str(), v, false); break; }  // the identity for an empty slot
            case 12: case 13: case 14: case 15: {
                if constexpr (Owner::kPointerRows) {
                    TexturePtr v;
                    owner.getParameter(id, e, v);
                    a->addTexture(name.c_str(), v, false);
                }
                break;
            }
            case 16: { SColor v; owner.getParameter(id, e, v); a->addColor(name.c_str(), v, false); break; }
            case 17: { SColorf v; owner.getParameter(id, e, v); a->addColorf(name.c_str(), v, false); break; }
            case 18: {
                if constexpr (Owner::kPointerRows) {
                    LightPtr v;
                    owner.getParameter(id, e, v);
                    a->addLight(name.c_str(), v, false);
                }
                break;
            }
            default: break;  // no attribute for the other codes
        }
    }
    a->pop();  // +0x3c
}

// Reads the group of one parameter back: the element attributes by index (they follow the three definition attributes).
template <class Owner>
void readParameter(io::IAttributes* a, Owner& owner, uint16_t id, const void* nameHandle, uint32_t valueType, uint32_t count) {
    a->push(textOf(nameHandle));
    int attribute = 3;
    for (uint32_t e = 0; e < count; ++e, ++attribute) {
        switch (valueType) {
            case 1: owner.setParameter(id, e, a->getInt(attribute)); break;
            case 2: owner.setParameter(id, e, a->getVector2di(attribute)); break;
            case 3: owner.setParameter(id, e, a->getVector3di(attribute)); break;
            case 4: owner.setParameter(id, e, a->getVector4di(attribute)); break;
            case 5: owner.setParameter(id, e, a->getFloat(attribute)); break;
            case 6: owner.setParameter(id, e, a->getVector2d(attribute)); break;
            case 7: owner.setParameter(id, e, a->getVector3d(attribute)); break;
            case 8: owner.setParameter(id, e, a->getVector4d(attribute)); break;
            case 11: owner.setParameter(id, e, a->getMatrix(attribute)); break;
            case 12: case 13: case 14: case 15:
                if constexpr (Owner::kPointerRows) owner.setParameter(id, e, a->getTexture(attribute));
                break;
            case 16: owner.setParameter(id, e, a->getColor(attribute)); break;
            case 17: owner.setParameter(id, e, a->getColorf(attribute)); break;
            case 18:
                if constexpr (Owner::kPointerRows) owner.setParameter(id, e, a->getLight(attribute));
                break;
            default: break;
        }
    }
    a->pop();
}

// The typed accessors of an owner for the two generic loops above.
template <class P, bool kPointers>
struct SGetAccess {
    const P& p;
    static constexpr bool kPointerRows = kPointers;
    template <class T>
    bool getParameter(uint16_t id, uint32_t e, T& out) const { return p.getParameter(id, e, out); }
};
template <class P, bool kPointers>
struct SSetAccess {
    P& p;
    static constexpr bool kPointerRows = kPointers;
    template <class T>
    bool setParameter(uint16_t id, uint32_t e, const T& value) { return p.setParameter(id, e, value); }
};

}  // namespace

// The same loops for the global manager's file (it reaches them through these two names).
template <class Owner>
void writeParameterOf(io::IAttributes* a, const Owner& owner, uint16_t id, const void* nameHandle, uint32_t kind, uint32_t valueType,
                      uint32_t count) {
    writeParameter(a, owner, id, nameHandle, kind, valueType, count);
}
template <class Owner>
void readParameterOf(io::IAttributes* a, Owner& owner, uint16_t id, const void* nameHandle, uint32_t valueType, uint32_t count) {
    readParameter(a, owner, id, nameHandle, valueType, count);
}

// 0x5cdb3c / 0x5d6a60: every parameter of the owner's table, in table order.
template <typename Owner, bool kTrackDirty>
void IMaterialParameters<Owner, kTrackDirty>::serializeAttributes(io::IAttributes* attributes) const {
    const SParameterBlockHeader* header = kTrackDirty ? m_block : &m_header;
    if (header == nullptr || header->entries == nullptr) return;  // port guard: a material without a table
    SGetAccess<IMaterialParameters, true> access{*this};  // both owners have the texture and light rows now
    for (uint16_t i = 0; i < header->count; ++i) {
        const SParameterEntry& entry = header->entries[i];
        writeParameter(attributes, access, i, entry.name, entry.kind, entry.type, entry.count);
    }
}

// 0x5cd3ec / 0x5d6080
template <typename Owner, bool kTrackDirty>
void IMaterialParameters<Owner, kTrackDirty>::deserializeAttributes(io::IAttributes* attributes) {
    const SParameterBlockHeader* header = kTrackDirty ? m_block : &m_header;
    if (header == nullptr || header->entries == nullptr) return;
    SSetAccess<IMaterialParameters, true> access{*this};
    for (uint16_t i = 0; i < header->count; ++i) {
        const SParameterEntry& entry = header->entries[i];
        readParameter(attributes, access, i, entry.name, entry.type, entry.count);
    }
}

template void IMaterialParameters<CMaterial, true>::serializeAttributes(io::IAttributes*) const;
template void IMaterialParameters<CMaterial, true>::deserializeAttributes(io::IAttributes*);
template void IMaterialParameters<CMaterialRenderer, false>::serializeAttributes(io::IAttributes*) const;
template void IMaterialParameters<CMaterialRenderer, false>::deserializeAttributes(io::IAttributes*);

}  // namespace glitch::video::detail

namespace glitch::video {

// 0x5ce460 _ZNK6glitch5video9CMaterial19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// The material's name, its renderer's name, the BDAE file that holds the renderer's effect (searched among the loaded resource files;
// empty when none has it), the renderer's technique names as the choices of "BaseTechnique", and the parameters in a group.
void CMaterial::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) const {
    attributes->addString("Name", m_hasName ? m_nameText.c_str() : nullptr, true);  // +0x1c, SData text (+4)
    const char* rendererName = m_renderer->m_name;
    attributes->addString("Material Renderer", rendererName, true);
    std::string file;
    if (collada::CResFileManager::Inst != nullptr) {
        for (auto& entry : collada::CResFileManager::Inst->files) {
            collada::CColladaDatabase database;
            database.record = entry.second;
            database.factory = &collada::CColladaDatabase::DefaultFactory;
            if (entry.second != nullptr && entry.second->data != nullptr && entry.second->data->tables != nullptr &&
                collada::getEffect(database.tables(), rendererName) != nullptr) {
                file = entry.first;
                break;
            }
        }
    }
    attributes->addString("BDAE File", file.c_str(), true);
    // The technique names, null terminated, as the choices of the "BaseTechnique" enum.
    std::vector<const char*> choices;
    for (uint8_t t = 0; t < m_renderer->m_techniqueCount; ++t) {
        choices.push_back(glitch::core::detail::sharedStringText(
            static_cast<const glitch::core::detail::SSharedStringData*>(m_renderer->m_techniques[t].name)));
    }
    choices.push_back(nullptr);
    attributes->addEnum("BaseTechnique", static_cast<int>(m_technique), choices.data(), false);
    attributes->push("Parameters");
    parameters.serializeAttributes(attributes);
    attributes->pop();
}

// 0x5cda48 _ZN6glitch5video9CMaterial21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// The base technique by its name, then the parameters group.
void CMaterial::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) {
    const char* technique = attributes->getEnum("BaseTechnique");  // IAttributes vtable +0xfc: the chosen text
    m_technique = m_renderer->getTechniqueID(technique);
    attributes->push("Parameters");
    parameters.deserializeAttributes(attributes);
    attributes->pop();
}

// 0x5d7378 _ZNK6glitch5video17CMaterialRenderer19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CMaterialRenderer::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    attributes->addString("Name", m_name, true);
    attributes->push("Parameter Defaults");
    parameters.serializeAttributes(attributes);
    attributes->pop();
    attributes->push("Techniques");
    for (uint8_t t = 0; t < m_techniqueCount; ++t) {
        const STechnique& technique = m_techniques[t];
        attributes->push(glitch::core::detail::sharedStringText(static_cast<const glitch::core::detail::SSharedStringData*>(technique.name)));
        for (uint8_t p = 0; p < technique.passCount; ++p) {
            char text[16];
            std::snprintf(text, sizeof text, "Pass %u", static_cast<unsigned>(p));
            attributes->push(text);
            technique.passes[p].serializeAttributes(attributes, options);
            attributes->pop();
        }
        attributes->pop();
    }
    attributes->pop();
}

// 0x5d66f4 _ZN6glitch5video17CMaterialRenderer21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// The parameter defaults first (the group is read as it stands, outside a "Parameter Defaults" push, as in the listing), then each
// technique's passes.
void CMaterialRenderer::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    parameters.deserializeAttributes(attributes);
    attributes->push("Techniques");
    for (uint8_t t = 0; t < m_techniqueCount; ++t) {
        const STechnique& technique = m_techniques[t];
        attributes->push(glitch::core::detail::sharedStringText(static_cast<const glitch::core::detail::SSharedStringData*>(technique.name)));
        for (uint8_t p = 0; p < technique.passCount; ++p) {
            char text[16];
            std::snprintf(text, sizeof text, "Pass %u", static_cast<unsigned>(p));
            attributes->push(text);
            const_cast<SRenderPass&>(technique.passes[p]).deserializeAttributes(attributes, options);
            attributes->pop();
        }
        attributes->pop();
    }
    attributes->pop();
}

}  // namespace glitch::video

// ---------------------------------------------------------------------------------------------------------------------------
// Owner G: CGlobalMaterialParameterManager
namespace glitch::video {

namespace {

namespace p1a = detail::part1a;
namespace p1b = detail::part1b;

// The typed element access of the global manager's store. Numeric rows are the part 1a getters and the part 1b setters; the light rows
// are part 1b; the texture and matrix slots are read and written in place (a pointer slot is sizeof(void*) bytes in the port's value
// buffer), with the use counting of the part 1b hooks.
struct SGlobalAccess {
    CGlobalMaterialParameterManager& m;
    static constexpr bool kPointerRows = true;

    template <class T>
    bool getParameter(uint16_t id, uint32_t e, T& out) const { return p1a::getParameter(m.table(), id, e, out) != 0; }
    bool getParameter(uint16_t id, uint32_t e, core::CMatrix4<float>& out) const {
        const core::CMatrix4<float>* slot = nullptr;
        if (!readSlot(id, e, slot)) return false;
        detail::getMatrixParameter(slot, out);
        return true;
    }
    bool getParameter(uint16_t id, uint32_t e, boost::intrusive_ptr<ITexture>& out) const {
        ITexture* slot = nullptr;
        if (!readSlot(id, e, slot)) return false;
        out = boost::intrusive_ptr<ITexture>(slot, true);
        return true;
    }
    bool getParameter(uint16_t id, uint32_t e, boost::intrusive_ptr<CLight>& out) const {
        CLight* light = nullptr;
        if (!p1b::getParameter(m.store(), id, e, light)) return false;
        out = boost::intrusive_ptr<CLight>(light, true);
        return true;
    }
    template <class T>
    bool setParameter(uint16_t id, uint32_t e, const T& value) { return p1b::setParameter(m.store(), id, e, value) != 0; }
    bool setParameter(uint16_t id, uint32_t e, const core::CMatrix4<float>& value) {
        core::CMatrix4<float>* slot = nullptr;
        if (!readSlot(id, e, slot)) return false;
        detail::setMatrixParameter(slot, value);
        return writeSlot(id, e, slot);
    }
    bool setParameter(uint16_t id, uint32_t e, const boost::intrusive_ptr<ITexture>& value) {
        ITexture* texture = value.get();
        return p1b::setParameter(m.store(), id, e, texture) != 0;
    }
    bool setParameter(uint16_t id, uint32_t e, const boost::intrusive_ptr<CLight>& value) {
        CLight* light = value.get();
        return p1b::setParameter(m.store(), id, e, light) != 0;
    }

private:
    template <class P>
    bool readSlot(uint16_t id, uint32_t e, P& slot) const {
        const auto& store = m.store();
        if (id >= store.entries.size() || e >= store.entries[id].count) return false;
        const size_t at = store.entries[id].offset + static_cast<size_t>(e) * sizeof(void*);
        if (at + sizeof(void*) > store.values.size()) return false;
        std::memcpy(&slot, store.values.data() + at, sizeof(void*));
        return true;
    }
    template <class P>
    bool writeSlot(uint16_t id, uint32_t e, P slot) {
        auto& store = m.store();
        const size_t at = store.entries[id].offset + static_cast<size_t>(e) * sizeof(void*);
        std::memcpy(store.values.data() + at, &slot, sizeof(void*));
        return true;
    }
};

}  // namespace

// 0x5bcc80 (IMaterialParameters<G>::serializeAttributes)
void CGlobalMaterialParameterManager::serializeParameters(io::IAttributes* a) const {
    SGlobalAccess access{const_cast<CGlobalMaterialParameterManager&>(*this)};
    for (auto it = m_defs.idBegin(); it != m_defs.idEnd(); ++it) {
        const auto* entry = m_defs.get(it->second.id);
        if (entry->value.name == nullptr) continue;  // port guard: the original reads through the invalid entry
        detail::writeParameterOf(a, access, it->second.id, entry->value.name, entry->value.parameterType, entry->value.valueType,
                                 entry->value.count);
    }
}

// 0x5bda94 (IMaterialParameters<G>::deserializeAttributes)
void CGlobalMaterialParameterManager::deserializeParameters(io::IAttributes* a) {
    SGlobalAccess access{*this};
    for (auto it = m_defs.idBegin(); it != m_defs.idEnd(); ++it) {
        const auto* entry = m_defs.get(it->second.id);
        if (entry->value.name == nullptr) continue;
        detail::readParameterOf(a, access, it->second.id, entry->value.name, entry->value.valueType, entry->value.count);
    }
}

// 0x5bd608 _ZNK6glitch5video31CGlobalMaterialParameterManager19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGlobalMaterialParameterManager::serializeAttributes(io::IAttributes* a, io::SAttributeReadWriteOptions* options) const {
    if (options != nullptr && (options->flags & 2) != 0) {
        serializeParameters(a);
        return;
    }
    a->push("Definitions");
    a->addInt("ParameterCount", m_defs.size(), false);  // +0x26, the live count
    unsigned index = 0;
    for (auto it = m_defs.idBegin(); it != m_defs.idEnd(); ++it, ++index) {
        char group[16];
        std::snprintf(group, sizeof group, "Param_%u", index);
        a->push(group);
        const auto* entry = m_defs.get(it->second.id);
        const bool set = entry->value.name != nullptr;
        a->addString("Name", set ? glitch::core::detail::sharedStringText(entry->value.name) : nullptr, false);
        a->addEnum("Type", set ? entry->value.parameterType : 0, shaderParameterTypeNames(), false);
        a->addEnum("ValueType", set ? entry->value.valueType : 0, shaderParameterValueTypeNames(), false);
        a->addInt("ArraySize", set ? static_cast<int>(entry->value.count) : 0, false);
        a->pop();
    }
    a->pop();
    a->push("Content");
    serializeParameters(a);
    a->pop();
}

// 0x5be198 _ZN6glitch5video31CGlobalMaterialParameterManager21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// The definitions are re-created (addParameter with the size argument 255), then the values read back into them.
void CGlobalMaterialParameterManager::deserializeAttributes(io::IAttributes* a, io::SAttributeReadWriteOptions* options) {
    if (options != nullptr && (options->flags & 2) != 0) {
        deserializeParameters(a);
        return;
    }
    a->push("Definitions");
    const int count = a->getInt("ParameterCount");  // IAttributes vtable +0x58
    for (int index = 0; index < count; ++index) {
        char group[16];
        std::snprintf(group, sizeof group, "Param_%u", static_cast<unsigned>(index));
        a->push(group);
        const std::string name = a->getString("Name");
        const int type = a->getEnum("Type", shaderParameterTypeNames());           // vtable +0x100
        const int valueType = a->getEnum("ValueType", shaderParameterValueTypeNames());
        const int size = a->getInt("ArraySize");
        addParameter(name.c_str(), type, valueType, static_cast<uint32_t>(size), 255);
        a->pop();
    }
    a->pop();
    a->push("Content");
    deserializeParameters(a);
    a->pop();
}

}  // namespace glitch::video
