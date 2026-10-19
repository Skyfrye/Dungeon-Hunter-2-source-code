// glitch::video::CMaterialRendererManager. The manager IS the SIDedCollection<CMaterialRenderer> of the
// original (manager +0x00..+0x27, ctor base 0x5d7db0 / 0x5d7de4), so the port derives from the shared
// glitch::core::detail::SIDedCollection instance instead of standing in for it: the entry vector at
// +0x18..+0x20 is the collection's entries, and the two lookups below are the original's own get(id).
// Still not modelled: the technique, render-pass, name-map and parameter tables (the SSharedString
// red-black trees), which the rest of the class needs.
//
// The two lookups that were the batch:
//   0x5dd0e4 getMaterialInstance(uint16_t, bool)   the cached CMaterial of a renderer, or a new one
//   0x5d9af0 createMaterialInstance(E_MATERIAL_TYPE)  createMaterialRenderer, then allocate the material
//   0x5d7d40 SIDedCollection<CMaterialRenderer>::get, the inline lookup the callers write out by hand
//
// Layout decision for the renderer id (open question 1 of NOTES.md "dep-material-renderer-manager layout"):
//   The binary keeps the id at node +0x22 (getId 0x5d98c4 reads +34, createMR 0x5d8b28 writes +32). The
//   shared template puts it at SIdValue +0x1c (node +0x34) instead, because its SIdValue's id follows the
//   Props record at that record's size. For this collection the template's own layout wins over the
//   evidence: the port keeps the shared template unchanged and leaves the id at its template offset. That is
//   safe because NOTHING the port reconstructs here reads the id back: get(id) (both lookups below and
//   0x5d7d40 itself) indexes the entry vector and never touches the mapped record's id, and neither insert
//   (0x5dc548) nor getId (0x5d98c4) nor rename is reconstructed yet. Whichever worker reconstructs
//   insert/getId must therefore move the id to node +0x22 in the template (or give this collection its own
//   SIdValue); doing it here would change every other SIDedCollection instance.
#pragma once

#include "glitch-video/shader_parameter_def.hpp"
#include <cstdint>
#include <list>
#include <map>
#include <vector>

#include "glitch-shared/shared_string.hpp"

#include "glitch-core-io/core/sided_collection.hpp"
#include "glitch-shared/reference_counted.hpp"
#include "glitch-video/deps/intrusive_ptr.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_technique_maps_reader.hpp"
#include "glitch-video/tb/renderpass_srenderstate.hpp"

namespace glitch::collada {
class CColladaFactory;
}  // namespace glitch::collada

namespace glitch::io {
class IReadFile;
}  // namespace glitch::io

namespace glitch::video {

class IVideoDriver;
class CMaterial;
class CMaterialRendererManager;
class IMaterialTechniqueMapsReader;
class IShader;
enum E_MATERIAL_TYPE : int;
namespace detail::material {
struct SRenderState;  // material.hpp
}  // namespace detail::material
using E_SHADER_STAGE = int32_t;  // 0 = vertex, 1 = fragment (bindParameter 0x5da160 indexes the shader's two stage lists with it)

namespace detail::materialrenderermanager {
// Props record of the renderer collection (SIdValue derives from it; +0x00 of the node's mapped record).
// Evidence: the SIdValue ctor 0x5d7e34 writes +0x00 = 0, +0x04 = -1 and +0x08 = 17, and getMaterialInstance
// 0x5dd0e4 reads node +0x18 (this +0x00) and createMaterialRenderer 0x5d8b28 writes node +0x20 (this +0x08).
struct SProperties {
    boost::intrusive_ptr<CMaterial> material;  // +0x00 (node +0x18): the cached material instance, null when none
    uint32_t unk04 = 0xffffffffu;              // +0x04 (node +0x1c): -1 after construction, meaning not recovered
    uint16_t materialType = 17;                // +0x08 (node +0x20): E_MATERIAL_TYPE index of the renderer

    // 0x5d7c44 _ZN6glitch5video6detail23materialrenderermanager11SProperties8onRemoveEPvt
    // The hook the collection's remove (0x5d9f74) runs before it erases the entry: this record's material type
    // decides which slot of the manager's renderer-id table is reset to 0xffff, and only types inside the table's
    // 17 entries do anything (the listing is LDRH R3,[R0,#8]; CMP R3,#0x10; ADDLS R3,R1,R3,LSL#1;
    // MOVLS R2,#0xFFFFFFFF; STRHLS R2,[R3,#0x2C]). `owner` is the CMaterialRendererManager and `id`, the entry
    // being removed, is not read. The parameters are void*/uint16_t because that is the original's mangled
    // signature (onRemove(void*, unsigned short)).
    void onRemove(void* owner, uint16_t id);
};
}  // namespace detail::materialrenderermanager

// The manager's collection instance: the CMaterialRenderer entry vector, stride 8 (value +0x00, name-map node
// iterator +0x04). 0x5d7db0 / 0x5d7de4 are the collection constructors of this instance, 0x5d9ab0 its destructor.
using CMaterialRendererCollection = core::detail::SIDedCollection<boost::intrusive_ptr<CMaterialRenderer>, uint16_t, false,
                                                                   detail::materialrenderermanager::SProperties,
                                                                   core::detail::sidedcollection::SValueTraits>;

class CMaterialRendererManager : public CMaterialRendererCollection {
public:
    // Temporary id, passed by value as one word in the original. The word is a pointer: an SCreationState::SParameterDef
    // for a parameter id, a technique (STechnique, the payload of a technique list node) for a technique id
    // (bindParameter 0x5da83c reads technique +0x04 and +0x08 through it). The port keeps one host-width word.
    struct STemporaryID {
        uintptr_t value = 0;
    };

    // The reader of the material technique maps file (defined after this class).
    class CMaterialTechniqueMapLoadState;

    // The state of the technique being defined (SCreationState in the original). Its list heads
    // (+0x08..+0x34) are not modelled; only the name and the in-progress word are kept.
    class SCreationState {
    public:
        // One pink-bind record (the list node payload at node +0x08 in the original).
        struct SPinkBind {
            STemporaryID id;     // +0x08 (node +0x08)
            uint8_t flag = 0;    // +0x0c (node +0x0c), counter byte minus one
            uint16_t value = 0;  // +0x0e (node +0x0e), the ushort argument
        };
        // List node: next at +0x00, prev at +0x04, record at +0x08 (16 bytes in this port).
        struct SPinkBindNode {
            SPinkBindNode* next = nullptr;  // +0x00
            SPinkBindNode* prev = nullptr;  // +0x04
            SPinkBind data;                 // +0x08
        };

        // 0x5d7c5c. Partial: the constructor sets the name and the word at +0x04, links the pink sentinel at
        // +0x28/+0x2c and the pending-pass sentinel at +0x10/+0x14 to themselves (with the two cursors at +0x30
        // and +0x18) and stores the pink counter 0 at +0x24. Its remaining stores belong to list heads this
        // class does not model yet (+0x08/+0x0c, +0x1c/+0x20, +0x34..+0x40 and the zero words +0x44..+0x54).
        explicit SCreationState(char* name);
        ~SCreationState();
        SCreationState(const SCreationState&) = delete;
        SCreationState& operator=(const SCreationState&) = delete;

        // 0x5d9788. Adds a pink bind. Fills the node under the cursor when one exists, otherwise
        // appends a new node at the tail and moves the cursor to the end sentinel.
        void addPinkBind(STemporaryID id, uint16_t value);

        // One pending render pass: the 52-byte SRenderPass record of the original (see
        // material_renderer_manager_layout.hpp, "SRenderPass").
        struct SRenderPass {
            uint32_t stateWords[8] = {};                  // +0x00..+0x1f, the 8 words copied from the state argument
                                                          // (the renderpass::SRenderState block, see tb/renderpass_srenderstate.hpp)
            glitch::IReferenceCounted* shader = nullptr;  // +0x20, counted
            int* bindings = nullptr;                      // +0x24, 8 bytes per entry, process-buffer block
            const SShaderParameterBinding* unknown28 = nullptr; // +0x28, the pass's shader parameter bindings (SShaderParameterBinding, 4 bytes each; commitCurrentMaterialImpl 0x5b74e8)
            uint16_t unknown2c = 0;                       // +0x2c, the number of bindings
            uint16_t unknown2e = 0;                       // +0x2e, meaning unknown
            uint8_t flag30 = 1;                           // +0x30, one when written by addRenderPass
        };
        // Pending pass list node: next at +0x00, prev at +0x04, record at +0x08.
        struct SPassNode {
            SPassNode* next = nullptr;  // +0x00
            SPassNode* prev = nullptr;  // +0x04
            SRenderPass pass;           // +0x08
        };

        // One parameter definition (the mapped value of the creation state's parameter map, node +0x14, 0x20 bytes in the
        // original). Its first 16 bytes ARE an SShaderParameterDef (CMaterialRenderer's constructor 0x5d3124 copies them as
        // such), so the port derives. Layout from addParameter 0x5dca40, endMaterialRenderer 0x5dddb4 and bindParameter 0x5da160.
        struct SParameterDef : SShaderParameterDef {
            SParameterDef* next = nullptr;  // +0x10: next definition in creation order (list head: SCreationState +0x4c)
            uint32_t id = 0xffffu;          // +0x14: the id endMaterialRenderer assigns; 0xffff before
            int32_t useCount = 0;           // +0x18: number of pass bindings that use the definition
            bool typeOpen = false;          // +0x1c: the type was left open (255) and is deduced from the bindings
            bool valueTypeOpen = false;     // +0x1d: the same for the value type
            bool countOpen = false;         // +0x1e: the same for the element count
        };
        // One entry of a pass's binding table: 8 bytes in the original (a byte at +0x00 and a word at +0x04). The word is an
        // SParameterDef* while byte +0x00 is 0 and the id of a global parameter (16 bits) when it is 1. The pass keeps this table
        // (SRenderPass::bindings) until endMaterialRenderer replaces it by the 16-bit id table the renderer carries.
        struct SPassBinding {
            uint8_t global = 0;  // +0x00
            union {
                SParameterDef* definition;  // +0x04 when global == 0
                uint16_t globalId;          // +0x04 when global == 1
            };
            SPassBinding() : definition(nullptr) {}
        };

        // 0x5dbac0: the technique of that name among the ones already made (the STechnique of its list node), null when none.
        STechnique* findTechnique(const char* name);
        // 0x5dc824: closes the technique being defined: copies the pending passes into a pass array of its own, appends the technique
        // (named after the name at +0x04) and clears the name. Null, and the name cleared, for a technique without passes; null with a log
        // line when no technique is open.
        STechnique* makeTechnique();
        // 0x5dca40: adds (or finds, unless `report`) a parameter definition of the open renderer; null when refused.
        SParameterDef* addParameter(const glitch::core::SSharedString& name, E_SHADER_PARAMETER_TYPE type,
                                    E_SHADER_PARAMETER_VALUE_TYPE valueType, uint32_t count, bool report);

        // 0x5d93e8. Partial: see the notes in glitch-video/src/tb_video-glitch_video_CMaterialRendererManager_SCreationS-0.cpp
        // (the shader binding count and the list sentinel setup are not reconstructed yet).
        void addRenderPass(glitch::IReferenceCounted* shader, const detail::renderpass::SRenderState& state,
                       const detail::material::SRenderState& materialState);  // materialState: unread by the body (symbol parity)

        char* m_name = nullptr;      // +0x00
        bool m_nameOwned = false;    // port: the name is a process-buffer block this state releases (beginMaterialRenderer sets it)
        glitch::core::SSharedString m_techniqueName;  // +0x04, the name of the technique being defined; null when none is open
        // +0x24 byte, the pink counter. The record flag is this counter minus one. Other fields
        // of the original (+0x08..+0x23) are not modelled.
        uint8_t m_pinkCounter24 = 0;
        // +0x28 (next) and +0x2c (prev): the sentinel of the pink-bind list. The sentinel is the end
        // of the list. Initially both point at the sentinel itself.
        SPinkBindNode m_pinkSentinel;
        // +0x30: the cursor used by addPinkBind (points at a node or at the sentinel).
        SPinkBindNode* m_pinkCursor = nullptr;
        // +0x10 (next) and +0x14 (prev): sentinel of the pending pass list, linked to itself by the
        // constructor (0x5d7c5c writes +0x10 and +0x14 = &sentinel).
        SPassNode m_passSentinel;
        // +0x18: pass-list cursor (node reused by the next addRenderPass, or the last node written).
        SPassNode* m_passCursor = nullptr;
        // +0x08/+0x0c: the technique list (std::list<STechnique> in the original, self-linked by the ctor 0x5d7c5c).
        detail::material_renderer_manager::STechniqueList m_techniques;
        // +0x1c/+0x20: the list of pass arrays the techniques point at (nodes of 0x0c bytes holding the array pointer at
        // node +0x08; makeTechnique 0x5dc824 appends, the destructor 0x5dafe8 releases them). Each holds the passes of one technique.
        std::list<std::vector<glitch::video::SRenderPass>> m_passArrays;
        // +0x25: the number of techniques made so far (beginTechnique refuses more than 32).
        uint8_t m_flag25 = 0;
        // +0x34..+0x48: the parameter map (std::map<SSharedString, SParameterDef>), keyed by the interned name record (interned
        // names are equal exactly when the records are). Mapped values stay put, so SParameterDef* and STemporaryID stay valid.
        std::map<const glitch::core::detail::SSharedStringData*, SParameterDef> m_parameters;
        // +0x4c / +0x50: first and last definition in creation order (addParameter 0x5dca40 appends, endMaterialRenderer walks).
        SParameterDef* m_firstParameter = nullptr;
        SParameterDef* m_lastParameter = nullptr;
        // +0x54: running total of 8-byte binding entries of the open technique (addRenderPass adds to it).
        uint32_t m_bindingTotal = 0;
    };

    // 0x5d8f24 (C1) / 0x5d8fa0 (C2). The base, the driver, the -1 fill of the +0x2c table, the two name-map headers
    // (+0x50, +0x68) and the words at +0x80..+0x94 (m_aux*, the last 0xffff).
    explicit CMaterialRendererManager(IVideoDriver* driver);
    // 0x5db180 (D1): releases the binding tables of the open creation state, deletes it, clears every renderer's driver pointer, frees
    // the array at +0x8c and clears the two name maps; the collection base follows.
    ~CMaterialRendererManager();

    // Empties a name map, dropping the use every key holds on its shared string (the std::map destructor of the original does that).
    static void clearNameMap(std::map<const glitch::core::detail::SSharedStringData*, uint32_t>& map);

    // 0x5d7cf4: returns the id when a creation state is open and the id is not zero, otherwise 0.
    uintptr_t getTechnique(STemporaryID id) const;
    // 0x5d7d14: the same test and result as getTechnique.
    uintptr_t getParameterDef(STemporaryID id) const;

    // ---- the creation interface (K1 wave) ----
    // 0x5dbb48: the technique of that name in the renderer under construction (the STechnique payload of its list node), null when
    // there is none or no renderer is being built.
    STechnique* getTechniqueID(const char* name) const;
    // 0x5dbb60: the value the name maps to in name map `group` (0 or 1), -1 when the name is not interned or not mapped.
    int32_t getNameID(const char* name, int group) const;
    // 0x5dbc04: the definition of that parameter name in the renderer under construction, null when none.
    SCreationState::SParameterDef* getParameterIDInternal(const glitch::core::SSharedString& name) const;
    // 0x631b58: getParameterIDInternal on the interned name of the text (looked up, never created).
    SCreationState::SParameterDef* getParameterID(const char* name) const;
    // 0x5dcd64: adds a parameter to the open renderer (refusing texture type/value type mixes); null with no renderer open.
    SCreationState::SParameterDef* addParameterInternal(const glitch::core::SSharedString& name, E_SHADER_PARAMETER_TYPE type,
                                                        E_SHADER_PARAMETER_VALUE_TYPE valueType, uint32_t count, bool report);
    // 0x5dd80c / 0x5dd664: open and close a technique; endTechnique returns the STechnique made (null on failure).
    int beginTechnique(const char* name, bool exact);
    STechnique* endTechnique(bool autoBind, uint16_t lightBase);
    // 0x5ddaec: opens a renderer definition under `name` (made unique with a letter suffix unless `exact`).
    int beginMaterialRenderer(const char* name, bool exact);
    // 0x5dddb4: closes the renderer definition and returns its id (the pink wireframe renderer's when the definition is invalid).
    uint16_t endMaterialRenderer();
    // 0x5dcf2c / 0x5dcf90 / 0x5dd088: add a pass to the open technique, by shader, shader id or shader name.
    int addRenderPass(const boost::intrusive_ptr<const IShader>& shader, const detail::renderpass::SRenderState& state,
                      const detail::material::SRenderState& materialState);
    int addRenderPass(uint16_t shaderId, const detail::renderpass::SRenderState& state, const detail::material::SRenderState& materialState);
    int addRenderPass(const char* shaderName, const detail::renderpass::SRenderState& state,
                      const detail::material::SRenderState& materialState);
    // 0x5dd250: binds an unbound shader parameter of the pass automatically, adding a parameter when needed; returns the next light id.
    uint16_t autoAddAndBindParameter(SRenderPass& pass, uint16_t parameter, E_SHADER_STAGE stage, uint16_t lightId, uint16_t lightBase);
    // 0x5da160 / 0x5da5a0 / 0x5da6f0 / 0x5da83c / 0x631bc4: bind a (global) parameter to a shader parameter of a pass.
    int bindParameter(const SShaderParameterDef* parameter, uint16_t globalId, E_SHADER_PARAMETER_TYPE type, SRenderPass& pass,
                      uint16_t shaderParameter, E_SHADER_STAGE stage);
    int bindGlobalParameter(uint16_t globalId, E_SHADER_PARAMETER_TYPE type, STemporaryID technique, uint8_t pass,
                            uint16_t shaderParameter, E_SHADER_STAGE stage);
    int bindGlobalParameter(uint16_t globalId, STemporaryID technique, uint8_t pass, uint16_t shaderParameter, E_SHADER_STAGE stage);
    int bindParameter(STemporaryID parameter, E_SHADER_PARAMETER_TYPE type, STemporaryID technique, uint8_t pass,
                      uint16_t shaderParameter, E_SHADER_STAGE stage);
    int bindParameter(STemporaryID parameter, STemporaryID technique, uint8_t pass, uint16_t shaderParameter, E_SHADER_STAGE stage);
    // 0x5d9db8 / 0x5d9e94: drop the cached material instance of a renderer nobody else uses (of every renderer).
    void clearUnusedInstance(uint16_t id);
    // 0x5dad20: drops every batch baker (the global BakerMap and every shader of every renderer's passes) and the driver's.
    void removeAllBatchBaker();
    // 0x5d9bd8 / 0x5dcdd4 / 0x5ddac0: the pink wireframe fallback shader, render pass and technique.
    boost::intrusive_ptr<IShader> createPinkWireFrameShader();
    void createPinkWireFrameRenderPass();
    STechnique* createPinkWireFrameTechnique(const char* name);
    // 0x5dc71c / 0x5dc7cc: load a material technique maps file (reader 0x5df8ec ... load).
    int loadMaterialTechniqueMaps(glitch::io::IReadFile* file, glitch::collada::CColladaFactory* factory);
    int loadMaterialTechniqueMaps(const char* fileName, glitch::collada::CColladaFactory* factory);

    // 0x5db15c. Partial: deletes the creation state; the process-buffer release is a plain delete.
    void clearCreationState();
    // 0x5dc058. True while a technique is open with its in-progress word set; with no open technique and a
    // non-null name the name is logged at level 3 and false is returned.
    bool isCreatingTechnique(const char* name) const;

    // 0x5d8b28: the id of the renderer of a built-in type (created on first use). Reconstructed in
    // material_renderer_manager.cpp: the +0x2c table entry is returned when it is set, otherwise
    // "DefaultEffects.bdae" is loaded through a collada::CColladaDatabase and every type whose name is not
    // "**** TODO ****" and whose slot is free is built with CColladaDatabase::constructEffect (0x61b10c), its
    // id cached in the table and the type index stored in the renderer's record (SProperties +0x08). The name
    // table of the original's video::getStringsInternal(E_MATERIAL_TYPE*) 0x5df898 is file-local there, because
    // that accessor cannot be declared while E_MATERIAL_TYPE is only forward-declared.
    uint16_t createMaterialRenderer(E_MATERIAL_TYPE type);
    // 0x5d9af0 _ZN6glitch5video24CMaterialRendererManager22createMaterialInstanceENS0_15E_MATERIAL_TYPEE
    // Creates the renderer of that type when there is none yet, then allocates one material on it with a null
    // name and technique 0 (CMaterial::allocate 0x5cc0a0, which takes the renderer's default values). Null when
    // the entry of the resulting id is unset, i.e. for an id past the entry vector.
    boost::intrusive_ptr<CMaterial> createMaterialInstance(E_MATERIAL_TYPE type);
    // 0x5dd0e4 _ZN6glitch5video24CMaterialRendererManager19getMaterialInstanceEtb (ObjectManager::Draw3D passes
    // the renderer id and true). The renderer entry's cached material, allocated and cached on the first call;
    // `flag` selects CMaterial::reset(nullptr) on the hit path. Null for id 0xffff or an id past the vector.
    boost::intrusive_ptr<CMaterial> getMaterialInstance(uint16_t id, bool flag);
    // Port spelling of the inline lookup the original inlines at every call site (0x5d7d40 is the collection's
    // get, the out-of-line copy of it): entry value of the eight-byte entry at +0x18 + 8*id, null for an id past
    // the end (the collection's shared Invalid entry holds a null value). Callers keep this signature.
    boost::intrusive_ptr<CMaterialRenderer> getMaterialRenderer(uint16_t id) const;
    // 0x5ddd28 _ZN6glitch5video24CMaterialRendererManager35createPinkWireFrameMaterialRendererEPKc: the renderer the collada factory falls back to
    // when an effect cannot be loaded (a pink wireframe). Declared for glitch::collada::CColladaFactory::createMaterialRenderer
    // (0x636c8c); the body is a glitch-video row (skipped: the technique and pass tables of the manager are not modelled) and is a link stub.
    boost::intrusive_ptr<CMaterialRenderer> createPinkWireFrameMaterialRenderer(const char* name);
    // 0x5d9e94 _ZN6glitch5video24CMaterialRendererManager20clearUnusedInstancesEv (glitch-video ledger: skipped). Walks the name map and
    // calls clearUnusedInstance(id) on every entry; SceneManager::clear (0x354468) calls it. Declared for that caller.
    void clearUnusedInstances();

    // The host object's own layout is the port's (base first, then these members); the offsets are the
    // ORIGINAL object's, kept for reference only and never used for host pointer arithmetic.
    IVideoDriver* m_driver = nullptr;               // +0x28
    SCreationState* m_creationState = nullptr;      // +0x90, open technique state (null when none)
    // +0x2c of the original: one uint16 renderer id per E_MATERIAL_TYPE, 17 entries, 0xffff when the type has no
    // renderer yet. The constructor fills all 17 with 0xffff (LC_API_MEMSET_0(this + 44, -1, 0x22) at 0x5d8f24),
    // createMaterialRenderer 0x5d8b28 writes entry type, and SProperties::onRemove 0x5d7c44 resets it.
    uint16_t m_materialTypeIds[17] = {};
    // +0x50 / +0x68: headers of two empty SSharedString name maps (colour byte 0, left/right at the header, count 0).
    struct SMapHeader {
        uint8_t color = 0;
        void* parent = nullptr;
        void* left = nullptr;
        void* right = nullptr;
        uint32_t count = 0;
    };
    // The two name maps (SSharedString -> uint32), keyed by the interned name record: m_nameMaps[group] is the map at +0x50 + 0x18 * group.
    std::map<const glitch::core::detail::SSharedStringData*, uint32_t> m_nameMaps[2];  // +0x50, +0x68
    // The technique remap tables of the technique-map load state (postLoad 0x5d901c builds them, clear 0x5d9918 resets them):
    std::vector<const char*> m_mapNames[2];           // +0x80, +0x84: the text of the name of every id of the two map groups
    uint32_t m_techniqueTotal = 0;                    // +0x88: the number of techniques of all renderers together
    std::vector<const uint8_t*> m_techniqueMapTable;  // +0x8c: one remap array per (map, group) pair, index second + first * (group count)
    std::vector<uint8_t> m_techniqueMapBytes;         // the storage of those arrays (the original keeps them in the +0x8c block)
    uint16_t m_buildingId = 0xffff; // +0x94, the id of the renderer being built
};

// The reader of the material technique maps file, as the manager's loader (CMaterialTechniqueMapLoadState, vtable 0x978160, 0x38 bytes
// in the original): the two map groups' ids live in the manager's two name maps, and the state keeps one technique remap array per
// (map, group) key, filled by the rules of the file and turned into the manager's tables by postLoad.
class CMaterialRendererManager::CMaterialTechniqueMapLoadState : public IMaterialTechniqueMapsReader {
public:
    using Map = std::map<SMapGroupKey, std::vector<uint8_t>>;

    // The constructor sequence loadMaterialTechniqueMaps (0x5dc71c) inlines: the base, the empty map and the current key at the end.
    explicit CMaterialTechniqueMapLoadState(CMaterialRendererManager& manager) : IMaterialTechniqueMapsReader(manager) {
        m_current = m_maps.end();
    }
    ~CMaterialTechniqueMapLoadState() override = default;  // 0x5d7f90 (D1): the map is the members' destructor

    int getIDCount(E_MAP_GROUP group) const override;                                        // 0x5d7cd4
    int getID(E_MAP_GROUP group, const char* name) override;                                 // 0x5df180
    void clearIDs(E_MAP_GROUP group) override;                                               // 0x5dacd4
    void clear() override;                                                                   // 0x5d9918
    void insert(const SMapGroupKey& key) override;                                           // 0x5db8e0
    int endMapGroup(E_MAP_GROUP group) override;                                             // 0x5d7ce8
    void processRule(const char* from, uint8_t fromId, const char* to, uint8_t toId) override;  // 0x5dbe04
    void postLoad() override;                                                                // 0x5d901c

    // 0x5dbc44: sets the remap of one technique (255: every technique) of a renderer to `value` in the array of the map.
    void assignMap(Map::iterator map, uint16_t renderer, uint8_t technique, uint8_t value);
    // 0x5dbcec: the rule `from` -> `to` for the renderer under construction, or for every renderer (names looked up in each).
    void processAssign(Map::iterator map, const char* from, uint8_t fromId, const char* to, uint8_t toId);

    Map m_maps;          // +0x1c
    Map::iterator m_current;  // +0x34: the entry of the open (map, group) pair, the end of the map when there is none
};

}  // namespace glitch::video
