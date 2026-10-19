// Owner K1: the material technique maps file: IMaterialTechniqueMapsReader::{getIdOrRef, processRenderer, processMapGroup, processRule,
// load}, the loader CMaterialRendererManager::CMaterialTechniqueMapLoadState and CMaterialRendererManager::loadMaterialTechniqueMaps.
//
// A technique maps file declares "map" and "group" ids, names renderers (by url / ref) and gives rules that remap one technique of a
// renderer to another per (map, group) pair. The state keeps a remap array per pair (one byte per technique of all renderers, each
// renderer's techniques at the offset kept in its record, SProperties::unk04) and postLoad turns them into the manager's tables.
#include <cstdio>
#include <cstring>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/core/shared_string_heap_ops.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-core-io/tb/glitch_io.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/material_technique_maps_reader.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

namespace {

using glitch::core::detail::SSharedStringData;
using State = CMaterialRendererManager::CMaterialTechniqueMapLoadState;

constexpr glitch::ELOG_LEVEL kError = glitch::ELL_ERROR;

// The static `attrs` table of getIdOrRef (ELF 0x957448): the attribute names "id" and "ref", the two "missing" messages, the two
// "empty" messages and the two "undeclared" messages processMapGroup reads.
const char* const kAttrs[8] = {"id",
                               "ref",
                               "missing id attribute",
                               "missing ref attribute",
                               "empty id attribute",
                               "empty ref attribute",
                               "undeclared map",
                               "undeclared group"};

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------------
// IMaterialTechniqueMapsReader

// 0x5dfa2c _ZN6glitch5video28IMaterialTechniqueMapsReader10getIdOrRefEPNS_2io13IIrrXMLReaderIcNS_17IReferenceCountedEEENS1_8E_ID_REFERb
const char* IMaterialTechniqueMapsReader::getIdOrRef(glitch::io::IIrrXMLReader<char, glitch::IReferenceCounted>* reader, E_ID_REF which,
                                                     bool& wildcard) {
    const char* value = reader->getAttributeValue(kAttrs[which]);  // reader vtable +0x24
    if (value == nullptr) {
        setError(kAttrs[which + 2], nullptr);
        return nullptr;
    }
    if (*value == '\0') {
        setError(kAttrs[which + 4], nullptr);
        return nullptr;
    }
    if (std::strcmp(value, "*") == 0) {
        wildcard = true;
        return nullptr;
    }
    if (std::strcmp(value, "\\*") == 0) ++value;  // an escaped star is the name "*"
    return value;
}

// 0x5dfbc4 _ZN6glitch5video28IMaterialTechniqueMapsReader15processRendererEPNS_2io13IIrrXMLReaderIcNS_17IReferenceCountedEEEPNS_7collada15CColladaFactoryE
// A renderer element is only valid outside another one. With a url ("file#id") the renderer is looked up by id and, when it is not
// there, its effect file is loaded and the effect constructed; with a ref only the lookup is done.
// Port guard: a url without '#' is a missing id here (the original forms a pointer from the failed search).
void IMaterialTechniqueMapsReader::processRenderer(glitch::io::IIrrXMLReader<char, glitch::IReferenceCounted>* reader,
                                                   glitch::collada::CColladaFactory* factory) {
    if (m_unknown10 != 0xffff) {
        m_error = true;
        printError("presence in wrong scope", nullptr);
        return;
    }
    const char* url = reader->getAttributeValue("url");
    if (url != nullptr) {
        const char* hash = std::strchr(url, '#');
        std::string file;
        const char* effect = nullptr;
        if (hash != nullptr) {
            file.assign(url, static_cast<size_t>(hash - url));
            effect = hash + 1;
        }
        const bool hasFile = hash != nullptr;
        m_unknown10 = effect != nullptr ? m_manager->getId(effect) : 0xffff;
        if (m_unknown10 == 0xffff && hasFile && !file.empty()) {
            collada::CColladaDatabase database(file.c_str(), factory != nullptr ? factory : &collada::CColladaDatabase::DefaultFactory);
            if (database.record == nullptr) {
                setError("effect file not found", file.c_str());
                collada::dropDatabase(database);
                return;
            }
            boost::intrusive_ptr<CMaterialRenderer> renderer(database.constructEffect(m_manager->m_driver, effect, nullptr));
            if (renderer) m_unknown10 = renderer->m_id;  // renderer +0x0c
            collada::dropDatabase(database);
        }
        if (m_unknown10 == 0xffff) setError("renderer not found", effect);
        return;
    }
    const char* ref = getIdOrRef(reader, 1, m_unknown14);  // the wildcard flag is the byte at +0x14
    if (ref != nullptr) {
        m_unknown10 = m_manager->getId(ref);
        if (m_unknown10 == 0xffff) setError("renderer not found", ref);
        return;
    }
    if (!m_unknown14) setError("missing url or ref attribute", nullptr);
}

// 0x5dfebc _ZN6glitch5video28IMaterialTechniqueMapsReader15processMapGroupENS1_11E_MAP_GROUPEPNS_2io13IIrrXMLReaderIcNS_17IReferenceCountedEEE
// A map / group element: while the group has no id yet, with the other group closed and no renderer open, its "id" declares it (and a
// map, group 0, registers its key); otherwise its "ref" must name a declared id, and when both groups are open the pair is registered.
void IMaterialTechniqueMapsReader::processMapGroup(E_MAP_GROUP group, glitch::io::IIrrXMLReader<char, glitch::IReferenceCounted>* reader) {
    const int other = (group + 1) & 1;
    if (m_mapIds[group] != -1) {
        m_error = true;
        printError("presence in wrong scope", nullptr);
        return;
    }
    if (m_mapIds[other] == -1 && m_unknown10 == 0xffff) {
        if (const char* name = getIdOrRef(reader, 0, m_mapGroupActive[group])) {
            m_mapIds[group] = getID(group, name);
            if (group == 0) {
                SMapGroupKey key;
                key.first = static_cast<uint32_t>(m_mapIds[0]);
                key.second = 0;
                insert(key);
            }
        }
        return;
    }
    const char* name = getIdOrRef(reader, 1, m_mapGroupActive[group]);
    if (name == nullptr) return;
    m_mapIds[group] = getID(group, name);
    if (m_mapIds[group] == -1) {
        setError(kAttrs[group + 6], name);
    } else if (m_mapIds[other] != -1) {
        SMapGroupKey key;
        key.first = static_cast<uint32_t>(m_mapIds[0]);
        key.second = static_cast<uint32_t>(m_mapIds[1]);
        insert(key);
    }
}

// 0x5e02b0 _ZN6glitch5video28IMaterialTechniqueMapsReader11processRuleEPNS_2io13IIrrXMLReaderIcNS_17IReferenceCountedEEE
// A rule element ("from" -> "to"): valid inside a renderer or inside a fully opened map / group pair. "*" for `from` means every technique
// (null). With a renderer open both names are looked up in its technique table, otherwise the rule is given without ids (255) and the
// state resolves the names per renderer.
void IMaterialTechniqueMapsReader::processRule(glitch::io::IIrrXMLReader<char, glitch::IReferenceCounted>* reader) {
    if ((!m_unknown14 && m_unknown10 == 0xffff) ||
        (!m_mapGroupActive[0] && !m_mapGroupActive[1] && (m_mapIds[0] == -1 || m_mapIds[1] == -1))) {
        m_error = true;
        printError("presence in wrong scope", nullptr);
        return;
    }
    const char* from = reader->getAttributeValue("from");
    const char* to = reader->getAttributeValue("to");
    if (from == nullptr || to == nullptr) {
        m_error = true;
        printError("missing rule attribute", from != nullptr ? "to" : "from");
        return;
    }
    if (std::strcmp(from, "*") == 0) {
        from = nullptr;
    } else if (std::strcmp(from, "\\*") == 0) {
        ++from;
    }
    uint8_t fromId = 0xff;
    uint8_t toId = 0xff;
    if (m_unknown10 == 0xffff) {
        processRule(from, 0xff, to, 0xff);  // vtable +0x20
        return;
    }
    if (getTechniqueIDs(m_unknown10, from, fromId, to, toId)) {
        processRule(from, fromId, to, toId);
    }
}

// 0x5e0478 _ZN6glitch5video28IMaterialTechniqueMapsReader4loadEPNS_2io9IReadFileEPNS_7collada15CColladaFactoryE
// Reads the file's elements in order. A renderer element's end closes the renderer scope. After the closing element of the document
// the state is finished: with any map declared, postLoad turns the arrays into the manager's tables; without, the ids are dropped.
int IMaterialTechniqueMapsReader::load(glitch::io::IReadFile* file, glitch::collada::CColladaFactory* factory) {
    if (file == nullptr) return 0;
    // The reader comes with one use, which the function gives back on every way out.
    struct SReaderUse {
        glitch::io::IXMLReaderUTF8* reader;
        ~SReaderUse() { reader->drop(); }
        glitch::io::IXMLReaderUTF8* operator->() const { return reader; }
        glitch::io::IXMLReaderUTF8* get() const { return reader; }
    };
    glitch::io::IXMLReaderUTF8* created = glitch::io::createIXMLReaderUTF8(file);
    if (created == nullptr) return 0;
    SReaderUse reader{created};
    if (!reader->read()) {
        os::Printer::log("empty document", kError);
        return 0;
    }
    for (;;) {
        if (reader->getNodeType() == 1 && std::strcmp(reader->getNodeName(), "GLITCHTECHNIQUEMAPS") == 0) break;
        if (!reader->read()) {
            os::Printer::log("not a Glitch Technique Maps file", kError);
            return 0;
        }
    }
    clearIDs(0);
    clearIDs(1);
    clear();
    getID(1, "default");
    bool declaredDefaultGroup = false;
    bool finished = false;
    while (reader->read() && !finished) {
        const char* name = reader->getNodeName();
        const int type = reader->getNodeType();
        if (type == 1) {  // element
            if (m_error) continue;
            if (std::strcmp(name, "map") == 0) {
                m_currentTag = "map";
                processMapGroup(0, reader.get());
            } else if (std::strcmp(name, "group") == 0) {
                m_currentTag = "group";
                processMapGroup(1, reader.get());
            } else if (std::strcmp(name, "renderer") == 0) {
                m_currentTag = "renderer";
                processRenderer(reader.get(), factory);
            } else if (std::strcmp(name, "rule") == 0) {
                m_currentTag = "rule";
                processRule(reader.get());
            } else if (std::strcmp(name, "default_group") == 0) {
                m_currentTag = "default_group";
                if (declaredDefaultGroup || getIDCount(1) > 1 || getIDCount(0) != 0) {
                    setError("misplaced default_group", nullptr);
                } else {
                    bool wildcard = false;
                    const char* id = getIdOrRef(reader.get(), 0, wildcard);
                    if (wildcard) {
                        setError("wildcard not allowed", nullptr);
                    } else {
                        clearIDs(1);
                        getID(1, id);
                        declaredDefaultGroup = true;
                    }
                }
            }
            continue;
        }
        if (type != 2) continue;  // not an end element
        if (std::strcmp(name, "map") == 0) {
            endMapGroup(0, "map");
        } else if (std::strcmp(name, "group") == 0) {
            endMapGroup(1, "group");
        } else if (std::strcmp(name, "renderer") == 0) {
            if (m_error && m_currentTag != nullptr && std::strcmp(m_currentTag, "renderer") == 0) {
                m_error = false;
                m_currentTag = nullptr;
            }
            m_unknown14 = false;
            m_unknown10 = 0xffff;
        } else if (std::strcmp(name, "rule") == 0) {
            if (m_error && m_currentTag != nullptr && std::strcmp(m_currentTag, "rule") == 0) {
                m_currentTag = nullptr;
                m_error = false;
            }
        } else {
            finished = std::strcmp(name, "GLITCHTECHNIQUEMAPS") == 0;
        }
    }
    if (getIDCount(0) != 0) {
        postLoad();
    } else {
        clearIDs(0);
        clearIDs(1);
    }
    return 1;
}

// ---------------------------------------------------------------------------------------------------------------------------
// CMaterialRendererManager::CMaterialTechniqueMapLoadState

// 0x5d7cd4 _ZNK6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState10getIDCountENS0_28IMaterialTechniqueMapsReader11E_MAP_GROUPE
int State::getIDCount(E_MAP_GROUP group) const { return static_cast<int>(m_manager->m_nameMaps[group].size()); }  // manager +0x60 + 0x18 * group

// 0x5d7ce8 _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState11endMapGroupENS0_28IMaterialTechniqueMapsReader11E_MAP_GROUPE
// The current key goes back to "none". (The original leaves `this` in r0; nothing reads the result.)
int State::endMapGroup(E_MAP_GROUP /*group*/) {
    m_current = m_maps.end();
    return 0;
}

// 0x5df180 _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState5getIDENS0_28IMaterialTechniqueMapsReader11E_MAP_GROUPEPKc
// The id of a name in the manager's name map of the group: a new name is entered with the next id (the map size).
int State::getID(E_MAP_GROUP group, const char* name) {
    auto& map = m_manager->m_nameMaps[group];
    SSharedStringData* record = glitch::core::detail::getSharedString(glitch::core::detail::sharedStringHeapTable(), name, false);
    const auto result = map.try_emplace(record, static_cast<uint32_t>(map.size()));
    if (result.second && record != nullptr) ++record->useCount;  // the key holds a use
    return static_cast<int>(result.first->second);
}

// 0x5dacd4 _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState8clearIDsENS0_28IMaterialTechniqueMapsReader11E_MAP_GROUPE
void State::clearIDs(E_MAP_GROUP group) { CMaterialRendererManager::clearNameMap(m_manager->m_nameMaps[group]); }

// 0x5d9918 _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState5clearEv
// Forgets the manager's remap tables: the driver stops using them (its manager copy is the manager again, no remap tables), and every
// renderer gets the offset of its techniques in the arrays, which are numbered in name order.
void State::clear() {
    CMaterialRendererManager& manager = *m_manager;
    IVideoDriver* driver = manager.m_driver;
    driver->m_rendererManagerCopy = driver->m_materialRendererManager;  // driver +0x104 = +0xdc
    driver->m_techniqueRemap = nullptr;                                  // driver +0x108
    manager.m_techniqueMapTable.clear();
    manager.m_techniqueMapBytes.clear();
    manager.m_mapNames[0].clear();
    manager.m_mapNames[1].clear();
    manager.m_techniqueTotal = 0;
    for (auto it = manager.ids.begin(); it != manager.ids.end(); ++it) {
        manager.getProperties(it->second.id)->unk04 = manager.m_techniqueTotal;  // node +0x1c
        const CMaterialRenderer* renderer = manager.get(it->second.id)->value.get();
        manager.m_techniqueTotal += renderer->m_techniqueCount;
    }
}

// 0x5db8e0 _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState6insertERKNS0_28IMaterialTechniqueMapsReader12SMapGroupKeyE
// A new (map, group) key gets a remap array that maps every technique of every renderer to itself; an existing one is kept. The key
// that matches the open ids becomes the current one.
void State::insert(const SMapGroupKey& key) {
    CMaterialRendererManager& manager = *m_manager;
    const auto result = m_maps.try_emplace(key);
    if (result.second) {
        std::vector<uint8_t>& array = result.first->second;
        array.assign(manager.m_techniqueTotal, 0);  // SSharedProcessBuffer::reset(manager +0x88)
        for (auto it = manager.ids.begin(); it != manager.ids.end(); ++it) {
            const uint32_t offset = manager.getProperties(it->second.id)->unk04;
            const CMaterialRenderer* renderer = manager.get(it->second.id)->value.get();
            for (uint8_t t = 0; t < renderer->m_techniqueCount; ++t) array[offset + t] = t;
        }
    }
    if (key.first == static_cast<uint32_t>(m_mapIds[0]) && key.second == static_cast<uint32_t>(m_mapIds[1])) m_current = result.first;
}

// 0x5dbc44 _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState9assignMapENSt4priv17_Rb_tree_iteratorISt4pairIKNS0_28IMaterialTechniqueMapsReader12SMapGroupKeyENS_4core19SSharedProcessArrayIhEEENS3_11_MapTraitsTISC_EEEEthh
// The remap array of the key, at the renderer's offset: one technique (or all of them, for technique 255) is set to `value`.
void State::assignMap(Map::iterator map, uint16_t renderer, uint8_t technique, uint8_t value) {
    CMaterialRendererManager& manager = *m_manager;
    uint8_t* base = map->second.data() + manager.getProperties(renderer)->unk04;
    if (technique == 255) {
        const CMaterialRenderer* r = manager.get(renderer)->value.get();
        for (uint8_t t = 0; t < r->m_techniqueCount; ++t) base[t] = value;
    } else {
        base[technique] = value;
    }
}

// 0x5dbcec _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState13processAssignENSt4priv17_Rb_tree_iteratorISt4pairIKNS0_28IMaterialTechniqueMapsReader12SMapGroupKeyENS_4core19SSharedProcessArrayIhEEENS3_11_MapTraitsTISC_EEEEPKchSM_h
// With a renderer open the ids are the caller's; without one the names are looked up in every renderer and each that has both is
// assigned.
void State::processAssign(Map::iterator map, const char* from, uint8_t fromId, const char* to, uint8_t toId) {
    CMaterialRendererManager& manager = *m_manager;
    if (m_unknown10 != 0xffff) {
        assignMap(map, m_unknown10, fromId, toId);
        return;
    }
    for (auto it = manager.ids.begin(); it != manager.ids.end(); ++it) {
        uint8_t first = 0xff;
        uint8_t second = 0xff;
        if (getTechniqueIDs(it->second.id, from, first, to, second)) assignMap(map, it->second.id, first, second);
    }
}

// 0x5dbe04 _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState11processRuleEPKchS4_h
// A rule inside an open (map, group) pair applies to that pair's array. With one group a wildcard the pairs with every id of that group
// are taken (a pair the file did not declare is skipped; the original reads the end node there), with both wildcards every pair.
void State::processRule(const char* from, uint8_t fromId, const char* to, uint8_t toId) {
    if (m_current != m_maps.end()) {
        processAssign(m_current, from, fromId, to, toId);
        return;
    }
    CMaterialRendererManager& manager = *m_manager;
    if (!m_mapGroupActive[0] || !m_mapGroupActive[1]) {
        const int wildGroup = m_mapGroupActive[0] ? 0 : 1;  // (flag 0 ^ 1): the group whose ids are walked
        SMapGroupKey key;
        key.first = static_cast<uint32_t>(m_mapIds[0]);
        key.second = static_cast<uint32_t>(m_mapIds[1]);
        for (const auto& entry : manager.m_nameMaps[wildGroup]) {
            (wildGroup == 0 ? key.first : key.second) = entry.second;
            const auto found = m_maps.find(key);
            if (found != m_maps.end()) processAssign(found, from, fromId, to, toId);
        }
        return;
    }
    for (auto it = m_maps.begin(); it != m_maps.end(); ++it) processAssign(it, from, fromId, to, toId);
}

// 0x5d901c _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState8postLoadEv
// Builds the manager's tables from the declared maps: one remap array per (map, group) pair, found by second + first * (group count),
// and the text of every map and group id.
void State::postLoad() {
    CMaterialRendererManager& manager = *m_manager;
    const size_t mapCount = manager.m_nameMaps[0].size();
    const size_t groupCount = manager.m_nameMaps[1].size();
    const size_t arrayBytes = manager.m_techniqueTotal;
    manager.m_techniqueMapTable.assign(mapCount * groupCount, nullptr);
    manager.m_techniqueMapBytes.assign(arrayBytes * m_maps.size(), 0);
    uint8_t* storage = manager.m_techniqueMapBytes.data();
    for (const auto& entry : m_maps) {
        manager.m_techniqueMapTable[entry.first.second + entry.first.first * groupCount] = storage;
        std::memcpy(storage, entry.second.data(), arrayBytes);
        storage += arrayBytes;
    }
    for (int group = 0; group < 2; ++group) {
        manager.m_mapNames[group].assign(manager.m_nameMaps[group].size(), nullptr);
        for (const auto& name : manager.m_nameMaps[group]) {
            manager.m_mapNames[group][name.second] = glitch::core::detail::sharedStringText(name.first);
        }
    }
}

// ---------------------------------------------------------------------------------------------------------------------------
// CMaterialRendererManager

// 0x5dc71c _ZN6glitch5video24CMaterialRendererManager25loadMaterialTechniqueMapsEPNS_2io9IReadFileEPNS_7collada15CColladaFactoryE
int CMaterialRendererManager::loadMaterialTechniqueMaps(glitch::io::IReadFile* file, glitch::collada::CColladaFactory* factory) {
    glitch::core::SScopedEnableProcessBufferHeapExcess excess(true);
    CMaterialTechniqueMapLoadState state(*this);  // allocProcessBuffer(0x38) and the constructor sequence
    const int result = state.load(file, factory);
    glitch::core::setProcessBufferHeapExcessEnabled(excess.previous);
    return result;
}

// 0x5dc7cc _ZN6glitch5video24CMaterialRendererManager25loadMaterialTechniqueMapsEPKcPNS_7collada15CColladaFactoryE
// The file is opened through the device's file system (driver +0xd4, +0x34, vtable +0x0c) and dropped after the load.
int CMaterialRendererManager::loadMaterialTechniqueMaps(const char* fileName, glitch::collada::CColladaFactory* factory) {
    glitch::io::IReadFile* file = m_driver->m_device->fileSystem->createAndOpenFile(fileName);
    if (file == nullptr) return 0;
    const int result = loadMaterialTechniqueMaps(file, factory);
    file->drop();
    return result;
}

// Drops the use every key of a name map holds on its shared string, then empties the map.
void CMaterialRendererManager::clearNameMap(std::map<const glitch::core::detail::SSharedStringData*, uint32_t>& map) {
    for (auto& entry : map) {
        SSharedStringData* key = const_cast<SSharedStringData*>(entry.first);
        if (key != nullptr && key->useCount-- == 1) {
            glitch::core::detail::releaseSharedString(glitch::core::detail::sharedStringHeapTable(), key);
        }
    }
    map.clear();
}

}  // namespace glitch::video
