// glitch::scene shared vocabulary: node type tags, enum-typed words, the intrusive link types the scene graph
// uses, and the forward declarations of the scene classes. Canonical header of the engine unification wave
// (u1-scene); every other header of this category includes it instead of declaring these names again.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; offsets in comments are the original ones):
//   - Node type tags are four-character codes stored as the little-endian word and compared as such
//     (ISceneNode::getType returns 0x6e6b6e75 "unkn"; getSceneNodeFromType(0x5f796e61 "any_") matches every node).
//   - Lists. ISceneNode keeps three lists. The children are linked intrusively: the child holds the link
//     (next +0x04, prev +0x08, the first words after the vptr), the parent holds a count (+0xf0) and the
//     sentinel (+0xf4 next, +0xf8 prev). The animator and binded-animator lists are circular lists of heap
//     nodes {next, prev, value} (GlitchAlloc(0xc), 0x598770 addAnimator) whose sentinel is the two-word
//     object embedded in the node (+0xfc and +0x104, the objects getAnimators/getBindedAnimators return).
//
// Port notes: pointers are host width (TRACK-B decision 2), so a link is 16 bytes on a 64-bit host and the
// list node {next, prev, value} is 24. Offsets stay as comments. The glitch types std::vector<T, SAllocator>
// and std::string with SAllocator are std::vector and std::string here.
#pragma once

#include <cstddef>
#include <cstdint>

namespace glitch {
class IReferenceCounted;
class IObject;
struct SEvent;
class IEventReceiver;
class IDevice;
}  // namespace glitch

namespace glitch::core {
template <typename T>
struct vector3d;
template <typename T>
struct aabbox3d;
template <typename T>
struct CMatrix4;
template <typename T>
struct triangle3d;
template <typename T>
struct line3d;
struct quaternion;
}  // namespace glitch::core

namespace glitch::io {
class IAttributes;
struct SAttributeReadWriteOptions;
class IAttributeExchangingObject;
class IReadFile;
class IWriteFile;
class IFileSystem;
}  // namespace glitch::io

namespace glitch::video {
class IVideoDriver;
class CMaterial;
class CMaterialRenderer;
class CMaterialVertexAttributeMap;
class CVertexStreams;
class ITexture;
class CLight;
class IBuffer;
}  // namespace glitch::video

namespace glitch::gui {
class IGUIEnvironment;
class ICursorControl;
}  // namespace glitch::gui

namespace glitch::scene {

// Scene classes of this category, declared once here so that the canonical headers can refer to each other.
class ISceneNode;
class ISceneNodeAnimator;
class ITimeController;
class ITimelineController;
class ITriangleSelector;
class CTriangleSelector;
class COctTreeTriangleSelector;
class IMesh;
class IAnimatedMesh;
class CMesh;
class CMeshBuffer;
class IMeshSceneNode;
class CMeshSceneNode;
class ICameraSceneNode;
class CCameraSceneNode;
class CSceneManager;
class CEmptySceneNode;
class CBatchMesh;
class CBatchSceneNode;
class IMeshLoader;
class IMeshCache;
class IMeshWriter;
class ISceneNodeFactory;
class ISceneNodeAnimatorFactory;
class ISceneUserDataSerializer;
class IShadowReceiverTarget;
class ISegmentCompileCallback;
class ISplitSegmentChoiceCallback;
class SViewFrustum;

// ---------------------------------------------------------------------------------------------------------
// Enum-typed words. The binary names these as enums (E_SCENE_NODE_TYPE, E_CULLING_TYPE, ...) in the mangled symbols; the value of
// every one is a 32-bit word. E_SCENE_NODE_TYPE and E_SCENE_NODE_ANIMATOR_TYPE are real enums here, because the factory
// interfaces overload getCreateableSceneNode*TypeName on the enum and on unsigned int. E_CULLING_TYPE,
// E_SCENE_NODE_RENDER_PASS and EMESH_WRITER_TYPE are std::uint32_t typedefs: no overload depends on them, and game code passes
// plain integers for them.
// ---------------------------------------------------------------------------------------------------------
using E_CULLING_TYPE = std::uint32_t;
using E_SCENE_NODE_RENDER_PASS = std::uint32_t;

// The values registerNodeForRendering (0x58f348) switches on; renderLists (0x590660) draws them in the order 0, 1, 2, then the default
// list (passes 3, 4 and 8 with the batch flag), 5, 6, the transparent list (3 and 8). The names say who registers with the value, as
// the original names are not in the binary. 9 is the idle value the manager holds between frames.
constexpr E_SCENE_NODE_RENDER_PASS ESNRP_CAMERA = 0;          // CCameraSceneNode::onRegisterSceneNode: unsorted, duplicates refused
constexpr E_SCENE_NODE_RENDER_PASS ESNRP_LIGHT = 1;           // CLightSceneNode: sorted by distance, trimmed to the driver's light count
constexpr E_SCENE_NODE_RENDER_PASS ESNRP_PRE_SOLID = 2;       // unsorted, drawn after the lights and before the default list
constexpr E_SCENE_NODE_RENDER_PASS ESNRP_AUTOMATIC = 3;       // material decides: transparent technique -> transparent list, else default
constexpr E_SCENE_NODE_RENDER_PASS ESNRP_SOLID = 4;           // default list, sorted by sort order and material
constexpr E_SCENE_NODE_RENDER_PASS ESNRP_SHADOW_VOLUME = 5;   // render-data sorted; followed by the full-screen shadow quad
constexpr E_SCENE_NODE_RENDER_PASS ESNRP_SHADOW_MESH = 6;     // render-data sorted (ShadowSkinnedMeshSceneNode)
constexpr E_SCENE_NODE_RENDER_PASS ESNRP_SHADOW_RECEIVER = 7; // unsorted; drawn by drawShadowReceivers into each target
constexpr E_SCENE_NODE_RENDER_PASS ESNRP_TRANSPARENT = 8;     // transparent list, farthest first (default list while compiling)
constexpr E_SCENE_NODE_RENDER_PASS ESNRP_NONE = 9;            // the value outside a frame
using EMESH_WRITER_TYPE = std::uint32_t;

// Four-character type tag, packed the way the original compares it (first character in the low byte).
constexpr std::uint32_t fourcc(const char (&s)[5]) {
    return static_cast<std::uint32_t>(static_cast<std::uint8_t>(s[0])) |
           (static_cast<std::uint32_t>(static_cast<std::uint8_t>(s[1])) << 8) |
           (static_cast<std::uint32_t>(static_cast<std::uint8_t>(s[2])) << 16) |
           (static_cast<std::uint32_t>(static_cast<std::uint8_t>(s[3])) << 24);
}

// Node type tags seen in the getType bodies of the queue. The names follow the class that returns the tag.
enum E_SCENE_NODE_TYPE : std::uint32_t {
    ESNT_UNKNOWN = fourcc("unkn"),              // 0x6e6b6e75 ISceneNode::getType
    ESNT_ANY = fourcc("any_"),                  // 0x5f796e61 wildcard of getSceneNodeFromType
    ESNT_EMPTY = fourcc("emty"),                // 0x79746d65 CEmptySceneNode
    ESNT_DUMMY_TRANSFORMATION = fourcc("dmmy"), // 0x796d6d64
    ESNT_DAEN = fourcc("daen"),                 // 0x6e656164 collada::CSceneNode
    ESNT_DAE_MESH = fourcc("daem"),             // 0x6d656164 collada::CMeshSceneNode
    ESNT_DAE_SKINNED_MESH = fourcc("daes"),     // 0x73656164 collada::CSkinnedMeshSceneNode
    ESNT_DAE_MODULAR_SKINNED_MESH = fourcc("daeM"),  // 0x4d656164 collada::CModularSkinnedMeshSceneNode
    ESNT_DAE_ROOT = fourcc("daer"),             // 0x72656164 collada::CRootSceneNode
    ESNT_DAE_CAMERA = fourcc("daec"),           // 0x63656164 collada::CCameraSceneNode
    ESNT_DAE_FORCE = fourcc("daef"),            // 0x66656164 collada::particle_system::CForceSceneNode
    ESNT_DAE_GNPS = fourcc("daeg"),             // 0x67656164 collada::CGlitchNewParticleSystemSceneNode
    ESNT_DAE_PARTICLE = fourcc("daep"),         // 0x70656164 collada::CParticleSystemSceneNode
    ESNT_SCENE_MANAGER_ROOT = fourcc("smgr"),   // 0x72676d73 CSceneManagerRootNode
    ESNT_CAMERA = fourcc("cam_"),               // 0x5f6d6163 CCameraSceneNode
    ESNT_LIGHT = fourcc("lght"),                // 0x7468676c CLightSceneNode
    ESNT_MESH = fourcc("mesh"),                 // 0x6873656d CMeshSceneNode
    ESNT_BILLBOARD = fourcc("bill"),            // 0x6c6c6962 CBillboardSceneNode
    ESNT_BATCH = fourcc("basn"),                // 0x6e736162 CBatchSceneNode
    ESNT_ANIMATED_MESH = fourcc("amsh"),        // CAnimatedMeshSceneNode
    ESNT_TEXT = fourcc("text"),                 // text scene nodes
    ESNT_SKY_BOX = fourcc("sky_"),              // CSkyBoxSceneNode
    ESNT_TERRAIN = fourcc("terr"),              // CTerrainSceneNode
    ESNT_SHADOW_VOLUME = fourcc("shdw"),        // CShadowVolumeSceneNode
    ESNT_PARTICLE_SYSTEM = fourcc("ptcl"),      // particle system nodes
    ESNT_CUBE = fourcc("cube"),                 // 0x65627563 the factory's cube mesh node
    ESNT_SPHERE = fourcc("sphr"),               // 0x72687073 the factory's sphere mesh node
    ESNT_CAMERA_MAYA = fourcc("camM"),          // 0x4d6d6163 factory name "cameraMaya": a camera with the Maya animator
    ESNT_CAMERA_FPS = fourcc("camF"),           // 0x466d6163 factory name "cameraFPS": a camera with the FPS animator
};

// Animator type ids (ISceneNodeAnimator::getType): the nine entries of the CDefaultSceneNodeAnimatorFactory name table, in table
// order (the upstream ESceneNodeAnimatorTypes.h order), and the value 10 the base class returns and the factory clamps to.
enum E_SCENE_NODE_ANIMATOR_TYPE : std::uint32_t {
    ESNAT_FLY_CIRCLE = 0,
    ESNAT_FLY_STRAIGHT = 1,
    ESNAT_FOLLOW_SPLINE = 2,
    ESNAT_ROTATION = 3,
    ESNAT_TEXTURE = 4,
    ESNAT_DELETION = 5,
    ESNAT_COLLISION_RESPONSE = 6,
    ESNAT_CAMERA_FPS = 7,
    ESNAT_CAMERA_MAYA = 8,
    ESNAT_UNKNOWN = 10,
};

// ISceneNode::automaticCulling (+0x118): a bit set, named by the literal table the attribute code passes to addEnum
// (AutomaticCullingNames: "false", "box", "frustum_box", "frustum_sphere", "frustum_box_3"). CSceneManager::isCulled
// (0x58ab28) switches on 1, 2 and 8; the value 4 is the sphere mode, which isCulled does not test.
inline constexpr E_CULLING_TYPE ECULL_OFF = 0;
inline constexpr E_CULLING_TYPE ECULL_BOX = 1;                 // node box against the frustum box
inline constexpr E_CULLING_TYPE ECULL_FRUSTUM_BOX = 2;         // SViewFrustum::intersects (0x35bec8)
inline constexpr E_CULLING_TYPE ECULL_FRUSTUM_SPHERE = 4;
inline constexpr E_CULLING_TYPE ECULL_FRUSTUM_BOX_3 = 8;       // SViewFrustum::intersects3 (0x58aa8c)
// The five literals of the enum attribute, null terminated (two identical copies in .data.rel.ro, 0x9573a8 and 0x9573c0).
// Defined in src/scene/ISceneNode.cpp.
extern const char* const AutomaticCullingNames[];

// ---------------------------------------------------------------------------------------------------------
// Intrusive circular doubly linked list links.
// ---------------------------------------------------------------------------------------------------------

// A link: next at +0x00 and prev at +0x04 (32-bit). A null link is "not in a list".
struct SListLink {
    SListLink* next = nullptr;  // +0x00
    SListLink* prev = nullptr;  // +0x04
};

// A list head: a link that starts self-linked (empty). The ISceneNode constructor does this for the sentinels
// at +0xf4, +0xfc and +0x104 (0x5990c0: `*(a1 + 244) = a1 + 244; *(a1 + 248) = a1 + 244`).
struct SListHead : SListLink {
    SListHead() noexcept {
        next = this;
        prev = this;
    }
    SListHead(const SListHead&) = delete;
    SListHead& operator=(const SListHead&) = delete;
    bool empty() const noexcept { return next == this; }
};

// A heap node of the animator lists: {next, prev, value}, 12 bytes in the original.
template <typename T>
struct SListNode : SListLink {
    T value{};  // +0x08
};

// Iterator over a circular list of SListNode<T>. The sentinel is the end.
template <typename T>
class SNodeListIterator {
public:
    explicit SNodeListIterator(const SListLink* link) noexcept : link_(link) {}
    T& operator*() const { return static_cast<SListNode<T>*>(const_cast<SListLink*>(link_))->value; }
    T* operator->() const { return &**this; }
    SNodeListIterator& operator++() {
        link_ = link_->next;
        return *this;
    }
    bool operator==(const SNodeListIterator& o) const noexcept { return link_ == o.link_; }
    bool operator!=(const SNodeListIterator& o) const noexcept { return link_ != o.link_; }
    const SListLink* link() const noexcept { return link_; }

private:
    const SListLink* link_;
};

// The embedded list object that getAnimators and getBindedAnimators return: just the sentinel (next, prev).
template <typename T>
class SNodeList {
public:
    using iterator = SNodeListIterator<T>;
    SNodeList() = default;
    SNodeList(const SNodeList&) = delete;
    SNodeList& operator=(const SNodeList&) = delete;
    iterator begin() const noexcept { return iterator(head.next); }
    iterator end() const noexcept { return iterator(&head); }
    bool empty() const noexcept { return head.next == &head; }
    std::size_t size() const noexcept {
        std::size_t n = 0;
        for (const SListLink* l = head.next; l != &head; l = l->next) ++n;
        return n;
    }
    // Appends a new heap node at the tail (the original: GlitchAlloc(0xc), node->prev = old tail, tail->next = node).
    void pushBack(T value) {
        auto* node = new SListNode<T>();
        node->value = value;
        node->next = &head;
        node->prev = head.prev;
        head.prev->next = node;
        head.prev = node;
    }
    // Unlinks and frees the node whose value is `value`; false when it is not in the list.
    bool erase(T value) {
        for (SListLink* l = head.next; l != &head; l = l->next) {
            auto* node = static_cast<SListNode<T>*>(l);
            if (node->value == value) {
                l->prev->next = l->next;
                l->next->prev = l->prev;
                delete node;
                return true;
            }
        }
        return false;
    }
    // Frees every node and leaves the list empty (the original's GlitchFree loop then re-links the sentinel).
    void clear() {
        SListLink* l = head.next;
        while (l != &head) {
            SListLink* following = l->next;
            delete static_cast<SListNode<T>*>(l);
            l = following;
        }
        head.next = &head;
        head.prev = &head;
    }
    mutable SListHead head;  // +0x00 next, +0x04 prev
};

// The opaque user-property record an editor attaches to a node (ISceneNode::getUserProperty). The first word of
// the record is the property string, which getUserPropertyStr returns (0x65cd80).
struct SUserProperty {
    const char* text = nullptr;  // +0x00
};

}  // namespace glitch::scene
