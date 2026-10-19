#include "glitch-video/global_parameter_manager.hpp"

#include <cstddef>
#include <cstring>

#include "glitch-core-io/core/shared_string_heap_ops.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-video/material_parameters_part_1b.hpp"

namespace glitch::video {

namespace {

// SShaderParameterTypeInspection::ValueTypeSize (ELF 0x8e2ca4, 19 bytes). The pointer-valued types (11 matrix pointer,
// 12..15 textures, 18 light) are 4 bytes in the original; the port stores host-width pointers in the value buffer.
std::uint32_t valueTypeSize(std::uint32_t valueType) {
    static const std::uint8_t kSizes[19] = {1, 4, 8, 12, 16, 4, 8, 12, 16, 16, 0x24, 4, 4, 4, 4, 4, 4, 16, 4};
    if (valueType == 11 || (valueType >= 12 && valueType <= 15) || valueType == 18) return sizeof(void*);
    return valueType < 19 ? kSizes[valueType] : 0;
}

// The shared-string record release: the original's SSharedStringHeapEntry::SData::release (the last-use free).
void dropName(glitch::core::detail::SSharedStringData* data) {
    if (data != nullptr && data->useCount-- == 1) {
        glitch::core::detail::releaseSharedString(glitch::core::detail::sharedStringHeapTable(), data);
    }
}

}  // namespace

// SEntry copy (0x5ba064 / 0x5ba010): the name is shared with a use taken, the other fields are copied.
SShaderParameterDef::SShaderParameterDef(const SShaderParameterDef& other)
    : name(other.name),
      parameterType(other.parameterType),
      valueType(other.valueType),
      arg(other.arg),
      count(other.count),
      offset(other.offset) {
    if (name != nullptr) ++name->useCount;
}

// SEntry::set (0x5bc620): the new name gets a use, replaces the old one (which is released at zero), the fields are copied.
SShaderParameterDef& SShaderParameterDef::operator=(const SShaderParameterDef& other) {
    glitch::core::detail::SSharedStringData* incoming = other.name;
    if (incoming != nullptr) ++incoming->useCount;
    glitch::core::detail::SSharedStringData* old = name;
    name = incoming;
    dropName(old);
    parameterType = other.parameterType;
    valueType = other.valueType;
    arg = other.arg;
    count = other.count;
    offset = other.offset;
    return *this;
}

// 0x5ba5f8 _ZN6glitch5video19SShaderParameterDefD1Ev: drops the name, releasing the record when that was the last use.
SShaderParameterDef::~SShaderParameterDef() { dropName(name); }

// 0x5b9e50 _ZN6glitch5video31CGlobalMaterialParameterManagerC1EPNS0_12IVideoDriverE / 0x5b9e8c C2
CGlobalMaterialParameterManager::CGlobalMaterialParameterManager(IVideoDriver* driver) : m_driver(driver) {}

// 0x5bb560 _ZN6glitch5video31CGlobalMaterialParameterManagerD1Ev / 0x5bb588 D2: the value buffer, then the collection (each
// definition's name is released); the members do both.
CGlobalMaterialParameterManager::~CGlobalMaterialParameterManager() = default;

// 0x5bb378 _ZNK6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefE...5getIdEPKc
uint16_t CGlobalMaterialParameterManager::getId(const char* name) const { return m_defs.getId(name); }

// 0x5b9d2c _ZN6glitch5video31CGlobalMaterialParameterManager12grabInternalEt
// The entry's name-map node holds the user count in its property word.
void CGlobalMaterialParameterManager::grabInternal(uint16_t id) { ++m_defs.getProperties(id)->unk00; }

// 0x5b9d4c _ZN6glitch5video31CGlobalMaterialParameterManager12dropInternalEt
void CGlobalMaterialParameterManager::dropInternal(uint16_t id) { --m_defs.getProperties(id)->unk00; }

// 0x5bc374 _ZN6glitch5video31CGlobalMaterialParameterManager12addParameterEPKcNS0_23E_SHADER_PARAMETER_TYPEENS0_29E_SHADER_PARAMETER_VALUE_TYPEEjh
uint16_t CGlobalMaterialParameterManager::addParameter(const char* name, E_SHADER_PARAMETER_TYPE type,
                                                       E_SHADER_PARAMETER_VALUE_TYPE valueType, uint32_t count,
                                                       uint8_t size) {
    if (name == nullptr || *name == 0) {
        glitch::os::Printer::log("addParameter", "invalid parameter name", glitch::os::ELL_ERROR);
        return 0xffff;
    }
    uint16_t id = m_defs.getId(name);
    if (id != 0xffff) {
        glitch::os::Printer::log("Global parameter exists already", name, glitch::os::ELL_WARNING);
        return id;
    }
    if (type == 255) {
        glitch::os::Printer::log(name, "unknown parameter type", glitch::os::ELL_ERROR);
        return id;
    }
    if (valueType == 255) {
        glitch::os::Printer::log(name, "unknown parameter value type", glitch::os::ELL_ERROR);
        return id;
    }
    if (count == 0) {
        glitch::os::Printer::log(name, "null array size", glitch::os::ELL_ERROR);
        return id;
    }
    // Room for the new value: the buffer doubles (from 1) until it holds the used bytes plus this value's size.
    std::vector<std::uint8_t>& values = store().values;
    const std::uint32_t used = static_cast<std::uint32_t>(values.size());
    std::uint32_t capacity = m_valueCapacity;
    const std::uint32_t newEnd = valueTypeSize(static_cast<std::uint32_t>(valueType)) + used;
    if (capacity < newEnd) {
        if (capacity == 0) {
            if (newEnd <= 1) {
                capacity = 1;
            } else {
                capacity = 1;
                do capacity *= 2; while (newEnd > capacity);
            }
        } else {
            do capacity *= 2; while (newEnd > capacity);
        }
        m_valueCapacity = capacity;  // a zero-filled block of that size takes the old bytes
    }
    values.resize(newEnd, 0);  // +0x30 = start + newEnd
    m_packed = m_flag38 != 0 ? static_cast<uint8_t>(capacity == newEnd) : 0;
    // The name: interned (create form), a use held by the temporary definition, which the collection copies.
    glitch::core::detail::SSharedStringData* data =
        glitch::core::detail::getSharedString(glitch::core::detail::sharedStringHeapTable(), name, false);
    SShaderParameterDef def;
    def.name = data;
    if (data != nullptr) ++data->useCount;
    def.parameterType = static_cast<uint16_t>(type);
    def.valueType = static_cast<uint8_t>(valueType);
    def.arg = size;
    def.count = count;
    def.offset = used;
    id = m_defs.insert(data != nullptr ? data->text() : nullptr, def, false);
    // Port bookkeeping: the matching store entry (value type, element count, offset) for the typed accessors.
    defineEntry(id, static_cast<std::uint8_t>(valueType), count, used);
    store().entries[id].unk04 = static_cast<std::uint16_t>(type);
    store().entries[id].unk07 = size;
    return id;
}

// 0x5ba820 _ZN6glitch5video31CGlobalMaterialParameterManager4packEv
// Moves the value bytes into an exactly sized block when the flag at +0x38 allows it and the buffer is not packed yet.
void CGlobalMaterialParameterManager::pack() {
    if (m_flag38 == 0 || m_packed != 0) return;
    std::vector<std::uint8_t>& values = store().values;
    m_valueCapacity = static_cast<std::uint32_t>(values.size());  // the new block holds exactly the used bytes
    values.shrink_to_fit();
    m_packed = 1;
}

// 0x5ba8a0 _ZN6glitch5video31CGlobalMaterialParameterManager14setAutoPackingEb
void CGlobalMaterialParameterManager::setAutoPacking(bool enable) {
    const uint8_t previous = m_autoPacking;
    if (static_cast<uint8_t>(enable) != previous) {
        m_autoPacking = static_cast<uint8_t>(enable);
        if (enable && previous == 0) {
            pack();
        }
    }
}

// 0x5c0f64 _ZN6glitch5video6detail30globalmaterialparametermanager10SPropeties8onRemoveEPvt
// A thunk to IMaterialParameters<CGlobalMaterialParameterManager>::dropParameter(id) on the collection's owner (the manager).
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Winvalid-offsetof"
void detail::globalmaterialparametermanager::SPropeties::onRemove(void* owner, uint16_t id) {
    auto* manager = reinterpret_cast<CGlobalMaterialParameterManager*>(static_cast<char*>(owner) -
                                                                       offsetof(CGlobalMaterialParameterManager, m_defs));
    detail::part1b::dropParameter(manager->store(), id);
}
#pragma GCC diagnostic pop

// 0x5c0f60 _ZN6glitch5video31CGlobalMaterialParameterManager15clearParametersEv -> dropParameters 0x5c0edc
void CGlobalMaterialParameterManager::clearParameters() {
    for (auto it = m_defs.idBegin(); it != m_defs.idEnd(); ++it) {
        detail::part1b::dropParameter(store(), it->second.id);
    }
}

void CGlobalMaterialParameterManager::syncEntries() {
    for (std::size_t id = 0; id < store().entries.size(); ++id) {
        if (id >= m_defs.entries.size() || !detail::globalmaterialparametermanager::SValueTraits::isSet(m_defs.entries[id].value)) {
            store().entries[id] = detail::part1a::SParamEntry{};
        }
    }
}

// 0x5c11dc _ZN6glitch5video31CGlobalMaterialParameterManager12removeUnusedEv
int CGlobalMaterialParameterManager::removeUnused() {
    const int removed = m_defs.removeAll(false);
    if (removed != 0) {
        syncEntries();
        m_flag38 = 0;
        if (m_autoPacking != 0) pack();
    }
    return removed;
}

// 0x5c1220 _ZN6glitch5video31CGlobalMaterialParameterManager9removeAllEv
int CGlobalMaterialParameterManager::removeAll() {
    const int removed = m_defs.removeAll(false);
    if (removed != 0) {
        syncEntries();
        m_flag38 = 0;
        if (m_autoPacking != 0) pack();
    }
    return removed;
}

// 0x5c126c _ZN6glitch5video31CGlobalMaterialParameterManager6removeEt
int CGlobalMaterialParameterManager::remove(uint16_t id) {
    const int removed = m_defs.remove(id, false) ? 1 : 0;
    if (removed != 0) {
        syncEntries();
        m_flag38 = 0;
        if (m_autoPacking != 0) pack();
    }
    return removed;
}

}  // namespace glitch::video

// The collection instance of the global manager: every member of the shared template (ctor, size / idBegin / idEnd / get,
// getNextId, getProperties, getMaxID, SIdValue and SName members, SEntry members, getId, insert, rename, remove,
// removeAll, the destructor) is instantiated for SShaderParameterDef so that the bodies are checked and emitted.
template class glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false,
                                                     glitch::video::detail::globalmaterialparametermanager::SPropeties,
                                                     glitch::video::detail::globalmaterialparametermanager::SValueTraits>;
