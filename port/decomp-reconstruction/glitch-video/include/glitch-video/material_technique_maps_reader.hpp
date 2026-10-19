// glitch::video::IMaterialTechniqueMapsReader: base of the material technique map loader.
// Only the state set by the constructor and setError is laid out here. The virtual error
// hook (vtable +0x28) and the parsing paths are not reconstructed yet.
#pragma once

#include <cstdint>

#include "glitch-core-io/io/interfaces.hpp"

namespace glitch::video {

class CMaterialRendererManager;

}  // namespace glitch::video
namespace glitch::collada {
class CColladaFactory;
}  // namespace glitch::collada
namespace glitch::video {

class IMaterialTechniqueMapsReader {
public:
    // E_MAP_GROUP values 0 and 1 index the two map-group slots (see endMapGroup, not reconstructed).
    using E_MAP_GROUP = int32_t;

    // 0x5df8ec (C1) and 0x5df94c (C2): both bodies are the same. The vtable pointer is implicit.
    explicit IMaterialTechniqueMapsReader(CMaterialRendererManager& manager);
    virtual ~IMaterialTechniqueMapsReader() = default;

    // The key of a technique map: the pair (map id, group id) of the two map groups ("map" and "group" elements of the file). The state
    // keeps one technique remap array per key.
    struct SMapGroupKey {
        uint32_t first = 0;   // +0x00, the id in the first group (map)
        uint32_t second = 0;  // +0x04, the id in the second group (group), 0 while the second group is not open
        bool operator<(const SMapGroupKey& other) const {
            return first < other.first || (first == other.first && second < other.second);
        }
    };
    // Which attribute getIdOrRef reads: 0 = "id" (a declaration), 1 = "ref" (a reference).
    using E_ID_REF = int32_t;

    // The slots of the state class (vtable of CMaterialRendererManager::CMaterialTechniqueMapLoadState, +0x08..+0x24; the base has them
    // null). Names from that class's vtable.
    virtual int getIDCount(E_MAP_GROUP group) const = 0;                                    // +0x08
    virtual int getID(E_MAP_GROUP group, const char* name) = 0;                              // +0x0c
    virtual void clearIDs(E_MAP_GROUP group) = 0;                                            // +0x10
    virtual void clear() = 0;                                                                // +0x14
    virtual void insert(const SMapGroupKey& key) = 0;                                        // +0x18
    virtual int endMapGroup(E_MAP_GROUP group) = 0;                                          // +0x1c
    virtual void processRule(const char* from, uint8_t fromId, const char* to, uint8_t toId) = 0;  // +0x20
    virtual void postLoad() = 0;                                                             // +0x24
    // 0x5dfb08 (vtable +0x28): logs "<message>:<detail>" (or the message alone when there is no detail) at error level, with the
    // current tag (m_currentTag, e.g. "map", "rule") as the text.
    virtual void printError(const char* message, const char* detail);

    // 0x5df8c8: sets the error flag (this +0x16) and, when the message is non-null, calls the virtual error hook (printError).
    void setError(const char* message, const char* detail);
    // 0x5dfa2c: reads the "id" (0) or "ref" (1) attribute of the current element. Null, with the wildcard flag set, for "*"; null with an
    // error for a missing or empty attribute; "\*" stands for a literal "*".
    const char* getIdOrRef(glitch::io::IIrrXMLReader<char, glitch::IReferenceCounted>* reader, E_ID_REF which, bool& wildcard);
    // 0x5dfbc4: a renderer element (url="file#id" or ref="id"): finds the renderer, loading its effect file when it is not there yet.
    void processRenderer(glitch::io::IIrrXMLReader<char, glitch::IReferenceCounted>* reader, glitch::collada::CColladaFactory* factory);
    // 0x5dfebc: a map or group element: declares (id) or opens (ref) the group.
    void processMapGroup(E_MAP_GROUP group, glitch::io::IIrrXMLReader<char, glitch::IReferenceCounted>* reader);
    // 0x5e02b0: a rule element (from, to): the technique ids for the renderer under construction, then the state's rule slot.
    void processRule(glitch::io::IIrrXMLReader<char, glitch::IReferenceCounted>* reader);
    // 0x5e0478: reads a technique maps file through the virtual slots below; 1 when the document was read (0: no document or not a
    // Glitch Technique Maps file).
    int load(glitch::io::IReadFile* file, glitch::collada::CColladaFactory* factory);
    // 0x5df9b4: closes a map group: when the error flag is set for this tag the error is cleared, the group's id and active flag are
    // reset and the virtual at +0x1c runs (its result is returned).
    int endMapGroup(E_MAP_GROUP group, const char* tag)
        asm("_ZN6glitch5video28IMaterialTechniqueMapsReader11endMapGroupENS1_11E_MAP_GROUPEPKc");
    // 0x5e0018: looks up the technique ids of two names in the renderer's technique table (the first may be null: id 0xff). A name
    // the renderer does not have is an error ("unknown technique name", "<name> in renderer <renderer>") unless the reader is
    // between renderers (+0x10 == 0xffff with +0x15 set); returns false then.
    bool getTechniqueIDs(uint16_t rendererId, const char* firstName, uint8_t& firstId, const char* secondName, uint8_t& secondId);

    CMaterialRendererManager* m_manager = nullptr;  // +0x04
    int32_t m_mapIds[2] = {-1, -1};                 // +0x08 and +0x0c, one id per map group, -1 when unset
    uint16_t m_unknown10 = 0xFFFF;                  // +0x10, not identified
    bool m_mapGroupActive[2] = {false, false};      // +0x12 and +0x13, cleared by endMapGroup
    bool m_unknown14 = false;                       // +0x14, not identified
    bool m_unknown15 = true;                        // +0x15, not identified
    bool m_error = false;                           // +0x16, set by setError
    const char* m_currentTag = nullptr;             // +0x18, the element being processed ("map", "group", "renderer", "rule", ...)
};

}  // namespace glitch::video
