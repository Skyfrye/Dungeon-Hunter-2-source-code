#include "glitch-video/material_renderer_manager.hpp"

#include <cstring>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/core/shared_string_heap_ops.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"  // 0x5d8b28 loads DefaultEffects.bdae and calls constructEffect
#include "glitch-video/material.hpp"
#include "glitch-video/deps/os_logging.hpp"
#include "glitch-video/material_renderer_manager_layout.hpp"

namespace glitch::video {

// 0x5d7c44 _ZN6glitch5video6detail23materialrenderermanager11SProperties8onRemoveEPvt
// Verified instruction by instruction (six instructions): LDRH R3,[R0,#8] reads this record's materialType,
// CMP R3,#0x10 bounds it by the 17-entry table, ADDLS R3,R1,R3,LSL#1 forms owner + 2*type, MOVLS/STRHLS write
// 0xffff at [R3,#0x2c], and the entry id (the second parameter) is never read. Deviation: the table lives in the
// manager's own member instead of at manager +0x2c. The shared SIDedCollection template (glitch-shared/sid_collection.hpp)
// calls this hook from remove() before it erases the node, as 0x5d9f74 does; material_renderer_remove_test covers it.
void detail::materialrenderermanager::SProperties::onRemove(void* owner, uint16_t /*id*/) {
    if (materialType >= materialrenderermanager_layout::kMaterialTypeCount) return;
    static_cast<CMaterialRendererManager*>(owner)->m_materialTypeIds[materialType] =
        materialrenderermanager_layout::kNoId;
}

namespace {
// The E_MATERIAL_TYPE name table createMaterialRenderer walks. The original reaches it through
// glitch::video::getStringsInternal(E_MATERIAL_TYPE*) (0x5df898, three instructions: LDR R0,=table - 0x5DF8A4;
// ADD R0,PC,R0; BX LR), which returns the address of its function-local static table at 0x957400. The 17 words
// there are 0x8e13a0, 0x8e13b8, 0x8e13d8, 0x8e1400, 0x8e1420, 0x8e0b10, 0x8e1448, 0x8e1460, 0x8e1480,
// 0x8e14b8, 0x8e14e8, 0x8e1520, 0x8e1538, 0x8e1550, 0x8e1578, 0x8e1598, 0x8e15c0 followed by a null word;
// each pointer was read with get_bytes and holds the string of that index. Index 5 is 0x8e0b10, the exact
// literal "**** TODO ****" the decompile compares against, which is why that type has no effect.
// Port deviation: glitch-video's E_* enum types are int32_t aliases (video_types.hpp) and E_MATERIAL_TYPE is
// only a forward-declared enum (material_renderer_manager.hpp), so the getStringsInternal overloads cannot be
// told apart and the accessor cannot be declared (its own row 0x5df898 stays skipped). The identical table is
// written here file-locally, the same treatment light.cpp gives E_LIGHT_TYPE and ISceneNode.cpp gives
// AutomaticCullingNames.
constexpr const char* const kMaterialTypeNames[materialrenderermanager_layout::kMaterialTypeCount] = {
    "Unlit Non Textured",                                       // 0
    "Unlit Non Textured Blend",                                 // 1
    "Unlit Non Textured Blend Material Color",                  // 2
    "Unlit Non Textured No Depth",                              // 3
    "Unlit Non Textured Blend No Depth",                        // 4
    "**** TODO ****",                                           // 5: no effect in DefaultEffects.bdae
    "Unlit Textured Blend",                                     // 6
    "Unlit Textured Blend No Depth",                            // 7
    "Unlit Textured Additive Blend No Depth No Culling",        // 8
    "Unlit Textured Blend Texture Alpha No Culling",            // 9
    "Unlit Textured Blend Texture Alpha No Culling No Depth",   // 10
    "Unlit Textured No Depth",                                  // 11
    "Unlit Cube Map No Depth",                                  // 12
    "Unlit Textured Blend Color Filter",                        // 13
    "Unlit Multi Textured Blend",                               // 14
    "Unlit Two Texture Lerp No Matrices",                       // 15
    "Force Commit Texture",                                     // 16
};

// The SEntry the two lookups share: the entry at the id, or the collection's shared Invalid entry when the id
// is past the end (get(id), 0x5d7d40 / the inline copy). The value of the Invalid entry is null, so reading it
// is the same observable result as the original's "null for an id past the end". A null pointer is never
// returned by the template's get(id); the check is kept so the helpers are safe to read.
template <class Manager>
auto* rendererEntry(Manager& manager, uint16_t id) {
    auto* entry = manager.get(id);
    return (entry != nullptr && entry->value) ? entry : nullptr;
}

// The renderer a just-created id maps to, or null. The original reaches it as *(entries + 8 * id) and does not
// range check it, because the only caller passes an id constructEffect returned for a renderer it just put in
// this collection; the port reads the entry with the collection's range-checked get(id) and drops the write for
// an id past the end, where the original would read past the vector (see the note in createMaterialRenderer).
template <class Manager>
CMaterialRenderer* rendererAt(Manager& manager, uint16_t id) {
    auto* entry = rendererEntry(manager, id);
    return entry != nullptr ? entry->value.get() : nullptr;
}
}  // namespace

// Port spelling of the collection's out-of-line get (0x5d7d40, the copy of the lookup the callers inline).
// id >= (end - begin) >> 3 gives the collection's shared Invalid entry, whose value is null; the original
// hands that entry out and the callers read its (null) value, which is the same observable result as the
// port's null result. The port reads the value through the shared template's get(id) (see the header for
// where this differs from the binary and why the difference cannot be observed here).
boost::intrusive_ptr<CMaterialRenderer> CMaterialRendererManager::getMaterialRenderer(uint16_t id) const {
    const SEntry* entry = rendererEntry(*this, id);
    if (entry == nullptr) {
        return boost::intrusive_ptr<CMaterialRenderer>();
    }
    return entry->value;
}

// 0x5d8b28 _ZN6glitch5video24CMaterialRendererManager22createMaterialRendererENS0_15E_MATERIAL_TYPEE
// Written against the listing (0x5d8b28, 70 instructions) and Hex-Rays. The id of the type is the table entry at
// +0x2c + 2*type: ADD R8,#0x14 (the original's addend 20 is the table's byte offset 0x2c divided by 2, because
// the LDRH below uses a scale of 4), ADD R3,R0,R8,LSL#1; LDRH R6,[R3,#4]. 0xffff means "no renderer yet" and
// the cached id is returned as-is otherwise (loc_5D8B54: MOV R0,R6; POP). On the miss path:
//   * the database is a stack CColladaDatabase over "DefaultEffects.bdae" and the static DefaultFactory
//     (LDR R1,=(aDefaulteffects-0x5D8B78); LDR R2,=DefaultFactory; BL 0x60f25c).
//   * the 17 types are walked in index order with the driver table cursor R5 starting at this (ADD R5,#2 per
//     step, so [R5,#0x2C] is this+0x2c+2*i) and the bound CMP R4,#0x11.
//   * a type is skipped when its table slot is already taken (LDRH R3,[R5,#0x2C]; CMP R3,R6; BNE next) or when
//     its name is the TODO literal (getStringsInternal(0) 0x5df898, LDR [R0,R4,LSL#2], LC_API_STRCMP_0 against
//     "**** TODO ****" and BEQ next on equality).
//   * the rest go through CColladaDatabase::constructEffect(driver, name, 0) (the const overload 0x61b10c,
//     called with the database in R1, the driver read from the manager at +0x28, the name at index R4 and a
//     null root), the returned renderer's parameter count (LDRH R3,[R3,#0xC] = CMaterialRenderer +0x0e) becomes
//     the cached id in the table slot, and the type index is written into the renderer record at node +0x20
//     (LDR R2,[R7,#0x18]; ADD R3,R2,R3,LSL#3; LDR R3,[R3,#4]; STRH R4,[R3,#0x20]) -- that is SProperties +0x08
//     through the entry's name-map node iterator, the spelling getProperties(id) gives.
//   * the loop ends at 17, the database is dropped (BL 0x619474) and the table slot is read back.
// Deviations, all named: (a) the type index past the last of the 17 table entries is refused with 0xffff before
// the read, where the original loads 2 bytes from manager + 2*type + 0x30 past the table (SProperties::onRemove
// 0x5d7c44 bounds exactly the same table with CMP #0x10, and the word past it is the driver pointer at +0x28 with
// the two name-map header words +0x50/+0x54 following, none of which is a renderer id); (b) the port's collection
// is std::vector-backed, so the original's unchecked entries + 8*id read is done with the collection's
// range-checked get(id) and rendererAt drops the store for an id past the end (the original would read past the
// vector there; only a renderer just created by constructEffect can be returned, so no in-range id is refused);
// (c) the TODO comparison is std::strcmp on the identical file-local table (see above), since the E_MATERIAL_TYPE
// accessor of the original cannot be declared; (d) the local database is dropped through collada::dropDatabase
// (the port's spelling of ~CColladaDatabase 0x619474, which is a helper there because the class is a pointer
// pair); (e) the null-renderer and null-iterator guards are the port's and stand in for the original's unchecked
// dereferences, which cannot be reached with an in-range id.
uint16_t CMaterialRendererManager::createMaterialRenderer(E_MATERIAL_TYPE type) {
    // The original's index: the E_MATERIAL_TYPE is a plain int word in the argument (CMP R3,#0x10 bounds it).
    const uint16_t typeIndex = static_cast<uint16_t>(type);
    if (typeIndex >= materialrenderermanager_layout::kMaterialTypeCount) {
        return materialrenderermanager_layout::kNoId;
    }
    const uint16_t cachedId = m_materialTypeIds[typeIndex];
    if (cachedId != materialrenderermanager_layout::kNoId) {
        return cachedId;
    }
    collada::CColladaDatabase effects("DefaultEffects.bdae", &collada::CColladaDatabase::DefaultFactory);
    for (uint16_t index = 0; index < materialrenderermanager_layout::kMaterialTypeCount; ++index) {
        if (m_materialTypeIds[index] != materialrenderermanager_layout::kNoId) continue;
        if (std::strcmp(kMaterialTypeNames[index], "**** TODO ****") == 0) continue;
        boost::intrusive_ptr<CMaterialRenderer> renderer(
            effects.constructEffect(m_driver, kMaterialTypeNames[index], nullptr));
        if (!renderer) continue;
        // The halfword at +0x0c of the renderer (LDRH R3,[R3,#0xC]; Hex-Rays *((_WORD *)renderer + 6)) is its id in the manager's
        // collection: m_id. (Reading the parameter count at +0x0e here cached the count as the id, so several types shared one
        // wrong renderer and the 2D textured materials ended up without a texture parameter: the interrupt splash drew white.)
        const uint16_t id = renderer->m_id;
        m_materialTypeIds[index] = id;
        // SProperties +0x08 of the renderer record, the layout the note in material_renderer_manager_layout.hpp
        // fixes. The original dereferences the node iterator without a check; the port skips the store when the
        // entry was not created (getProperties would index past the vector).
        if (detail::materialrenderermanager::SProperties* props = getProperties(id)) {
            props->materialType = index;
        }
    }
    collada::dropDatabase(effects);
    return m_materialTypeIds[typeIndex];
}

// 0x5d7c5c _ZN6glitch5video24CMaterialRendererManager14SCreationStateC1EPc
// Verified against the listing (0x5d7c5c, 26 pseudocode lines). Reconstructed here: the name at +0x00, the
// in-progress word at +0x04 = 0, the pink counter byte at +0x24 = 0, the pink sentinel at +0x28/+0x2c linked to
// itself with the cursor at +0x30 pointing at the sentinel, and now the pending-pass sentinel at +0x10/+0x14
// linked to itself with the pass cursor at +0x18 = 0 (the header said this was still missing).
// H1 pass: the list heads the listing writes are the C++ containers of the port, each self-initialised to the empty
// state the listing stores: m_techniques (+0x08/+0x0c), m_passArrays (+0x1c/+0x20) and the parameter map with its
// first/last definitions (+0x34..+0x50). The zero words at +0x25, +0x38, +0x44, +0x4c, +0x50 and +0x54 are the
// default member initialisers of m_flag25, the map, m_firstParameter, m_lastParameter and m_bindingTotal.
// Deviation (named): the binary's raw list-head words are not reproduced at their offsets; the containers replace them.
CMaterialRendererManager::SCreationState::SCreationState(char* name) : m_name(name) {
    m_pinkSentinel.next = &m_pinkSentinel;
    m_pinkSentinel.prev = &m_pinkSentinel;
    m_pinkCursor = &m_pinkSentinel;
    m_passSentinel.next = &m_passSentinel;
    m_passSentinel.prev = &m_passSentinel;
    m_passCursor = nullptr;
}

// 0x5dafe8 _ZN6glitch5video24CMaterialRendererManager14SCreationStateD1Ev
// Drops the shader of every pass of every technique made so far, releases the name text (the process-buffer block the manager
// allocated; the port only releases a name it was told it owns), the pass arrays, the parameter map (each key and each definition
// drops its name), the pink-bind nodes, the pending pass list (each node drops its shader) and the technique list (each node
// drops its name), then the name of the technique being defined. The binding tables that passes still point at (they are
// replaced and released by endMaterialRenderer) are not freed here: the original's SRenderPass destructor is not recovered.
CMaterialRendererManager::SCreationState::~SCreationState() {
    for (const detail::material_renderer_manager::STechniqueNode* n = m_techniques.begin(); n != m_techniques.end(); n = n->next) {
        for (uint8_t i = 0; i < n->technique.passCount; ++i) {
            if (n->technique.passes[i].shader != nullptr) n->technique.passes[i].shader->drop();
        }
    }
    if (m_nameOwned && m_name != nullptr) glitch::core::releaseProcessBuffer(m_name);
    m_name = nullptr;
    m_passArrays.clear();
    for (auto& entry : m_parameters) {  // the key's use (taken by addParameter); the definition drops its own name
        glitch::core::detail::SSharedStringData* key = const_cast<glitch::core::detail::SSharedStringData*>(entry.first);
        if (key != nullptr && key->useCount-- == 1) {
            glitch::core::detail::releaseSharedString(glitch::core::detail::sharedStringHeapTable(), key);
        }
    }
    m_parameters.clear();
    m_firstParameter = m_lastParameter = nullptr;
    SPinkBindNode* pink = m_pinkSentinel.next;
    while (pink != &m_pinkSentinel) {
        SPinkBindNode* next = pink->next;
        delete pink;
        pink = next;
    }
    m_pinkSentinel.next = m_pinkSentinel.prev = &m_pinkSentinel;
    for (SPassNode* p = m_passSentinel.next; p != &m_passSentinel;) {
        SPassNode* next = p->next;
        if (p->pass.shader != nullptr) p->pass.shader->drop();
        delete p;
        p = next;
    }
    m_passSentinel.next = m_passSentinel.prev = &m_passSentinel;
    for (detail::material_renderer_manager::STechniqueNode* n = m_techniques.head.next; n != &m_techniques.head;) {
        detail::material_renderer_manager::STechniqueNode* next = n->next;
        glitch::core::detail::SSharedStringData* name = static_cast<glitch::core::detail::SSharedStringData*>(n->technique.name);
        if (name != nullptr && name->useCount-- == 1) {
            glitch::core::detail::releaseSharedString(glitch::core::detail::sharedStringHeapTable(), name);
        }
        delete n;
        n = next;
    }
    m_techniques.head.next = m_techniques.head.prev = &m_techniques.head;
    glitch::core::detail::SSharedStringData* open = m_techniqueName.data();
    if (open != nullptr && open->useCount-- == 1) {
        glitch::core::detail::releaseSharedString(glitch::core::detail::sharedStringHeapTable(), open);
    }
}

// 0x5d9788 _ZN6glitch5video24CMaterialRendererManager14SCreationState11addPinkBindENS1_12STemporaryIDEt
void CMaterialRendererManager::SCreationState::addPinkBind(STemporaryID id, uint16_t value) {
    const uint8_t flag = static_cast<uint8_t>(m_pinkCounter24 - 1);
    if (m_pinkCursor == &m_pinkSentinel) {
        // The cursor is at the end: append a node at the tail.
        SPinkBindNode* node = new SPinkBindNode();
        node->data.flag = flag;
        node->data.value = value;
        node->data.id = id;
        SPinkBindNode* tail = m_pinkSentinel.prev;
        node->next = &m_pinkSentinel;
        node->prev = tail;
        tail->next = node;
        m_pinkSentinel.prev = node;
        m_pinkCursor = &m_pinkSentinel;
    } else {
        // Reuse the node under the cursor and advance the cursor.
        SPinkBindNode* node = m_pinkCursor;
        node->data.id = id;
        node->data.value = value;
        node->data.flag = flag;
        m_pinkCursor = node->next;
    }
}

// 0x5d8f24 _ZN6glitch5video24CMaterialRendererManagerC1EPNS0_12IVideoDriverE
// 0x5d8fa0 _ZN6glitch5video24CMaterialRendererManagerC2EPNS0_12IVideoDriverE
// Verified against the listing: the SIDedCollection base constructor is first (0x5d7db0; the port's base member
// initializers give the same empty map, empty vector, next id 0 and count 0), then the driver at +0x28 and the
// renderer-id table at +0x2c, which LC_API_MEMSET_0(this + 44, -1, 0x22) fills with 0xffff (the port's ctor body
// does that now). Partial: the ctor also initialises the headers of the two SSharedString -> uint32 name maps at
// +0x50 (color byte +0x50, parent +0x54, left/right +0x58/+0x5c to the header itself, count +0x60) and +0x68
// (the same at +0x68/+0x6c/+0x70/+0x74/+0x78), the words at +0x80, +0x84, +0x88 and +0x8c to 0, and the uint16 at
// +0x94 to 0xffff (the id of the renderer being built) -- none of those members exist in the port yet.
CMaterialRendererManager::CMaterialRendererManager(IVideoDriver* driver) : m_driver(driver) {
    for (uint16_t& id : m_materialTypeIds) id = materialrenderermanager_layout::kNoId;
}

// 0x5d7cf4 _ZNK6glitch5video24CMaterialRendererManager12getTechniqueENS1_12STemporaryIDE
uintptr_t CMaterialRendererManager::getTechnique(STemporaryID id) const {
    return (m_creationState != nullptr && id.value != 0) ? id.value : 0;
}

// 0x5d7d14 _ZNK6glitch5video24CMaterialRendererManager15getParameterDefENS1_12STemporaryIDE
uintptr_t CMaterialRendererManager::getParameterDef(STemporaryID id) const {
    return (m_creationState != nullptr && id.value != 0) ? id.value : 0;
}

// 0x5dd0e4 _ZN6glitch5video24CMaterialRendererManager19getMaterialInstanceEtb
// id 0xffff is not looked up at all, so the result is null. Otherwise the entry of the id is taken and its
// value (the renderer) is used to allocate a material on the miss path: CMaterial::allocate(renderer, nullptr, 0)
// -- a null name and technique 0, i.e. the default-state overload 0x5cc0a0 -- and the result is cached in the
// record the collection maps the id to (entry node +0x18, the +0x00 field of SProperties). On the hit path the
// cached material is returned, and `flag` (the bool of the mangled name) selects CMaterial::reset(nullptr).
// The original reaches the record as entry->iterator->second (node +0x18) read as a CMaterial**;
// getProperties(id) is the template's spelling of exactly that address (0x5d7e20 returns node +24).
boost::intrusive_ptr<CMaterial> CMaterialRendererManager::getMaterialInstance(uint16_t id, bool flag) {
    if (id == 0xffff) {
        return boost::intrusive_ptr<CMaterial>();
    }
    // The entry the cache lives in. For an id past the end this is the collection's Invalid entry, whose value
    // is null: the original then reads the mapped record of that shared entry (getProperties has no range
    // check) and would store the new material in it. The port skips that undefined store and returns null,
    // which is the result the caller sees either way; see the note in the header.
    SEntry* entry = rendererEntry(*this, id);
    if (entry == nullptr) {
        return boost::intrusive_ptr<CMaterial>();
    }
    detail::materialrenderermanager::SProperties* const props = getProperties(id);  // 0x5d7e20: node +0x18, the record itself
    if (props->material) {
        if (flag) {
            props->material->reset(nullptr);  // 0x5cbc3c
        }
        return props->material;
    }
    boost::intrusive_ptr<CMaterial> material =
        CMaterial::allocate(entry->value, nullptr, 0);  // 0x5cc0a0, null name and technique 0
    props->material = material;
    return material;
}

// 0x5d9af0 _ZN6glitch5video24CMaterialRendererManager22createMaterialInstanceENS0_15E_MATERIAL_TYPEE
// The renderer of the type is created on first use (createMaterialRenderer 0x5d8b28, out of scope here), its
// entry is taken (out-of-range ids reach the collection's Invalid entry, whose value is null, as in the
// original), and one material is allocated on it with a null name and technique 0. Unlike getMaterialInstance
// this allocates every time; it does not touch the record's cached material.
boost::intrusive_ptr<CMaterial> CMaterialRendererManager::createMaterialInstance(E_MATERIAL_TYPE type) {
    const uint16_t id = createMaterialRenderer(type);
    // The renderer of the entry: null for an id past the end, which allocate accepts (the original passes the
    // value of the collection's Invalid entry, also null).
    SEntry* entry = rendererEntry(*this, id);
    return CMaterial::allocate(entry != nullptr ? entry->value : boost::intrusive_ptr<CMaterialRenderer>(),
                               nullptr, 0);  // 0x5cc0a0, null name and technique 0
}

// 0x5db15c _ZN6glitch5video24CMaterialRendererManager18clearCreationStateEv
// H1 pass: the state destructor, then the process buffer release of the same block, then the pointer is cleared.
void CMaterialRendererManager::clearCreationState() {
    if (SCreationState* state = m_creationState) {
        state->~SCreationState();
        glitch::core::releaseProcessBuffer(state);  // the listing: destructor, then releaseProcessBuffer on the same block
    }
    m_creationState = nullptr;
}

// 0x5dc058 _ZNK6glitch5video24CMaterialRendererManager19isCreatingTechniqueEPKc
// Verified against the listing: the creation state (this +0x90, read as *((_DWORD*)this + 36)) is null ->
// false; its in-progress word at +0x04 is set -> true; otherwise, when a name is given, the name is logged at
// level 3 (ELL_ERROR) and false is returned. No deviation left: the log is the original's (os::Printer::log
// 0x60aca0, the two-argument overload, with the caller's name as the text).
bool CMaterialRendererManager::isCreatingTechnique(const char* name) const {
    if (m_creationState == nullptr) {
        return false;
    }
    if (m_creationState->m_techniqueName.data() != nullptr) {
        return true;
    }
    if (name == nullptr) {
        return false;
    }
    os::Printer::log(name, glitch::ELL_ERROR);
    return false;
}

}  // namespace glitch::video
