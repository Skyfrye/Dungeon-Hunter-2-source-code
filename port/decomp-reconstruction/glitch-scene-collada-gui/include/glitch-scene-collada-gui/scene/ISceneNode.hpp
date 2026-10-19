// glitch::scene::ISceneNode: the scene-graph node base. Canonical header of the engine unification wave (u1-scene).
// It replaces scene_node.hpp (a non-polymorphic accessor stand-in), layouts/scene.hpp (glitch::scene::ISceneNode as a
// layout struct), recon/slice_06.hpp and recon/slice_31.hpp (recon_06::SceneNode, recon_31::ISceneNode).
//
// Layout (original 32-bit offsets; the object is 0x130 bytes without its virtual base, which sits at +0x130 in the
// complete object: vbase offset 0x130 in the vtable header, see tools/decomp_vtable.py glitch::scene::ISceneNode):
//   +0x00 vptr (glitch::io::IAttributeExchangingObject, the primary base)
//   +0x04 sibling link: next, +0x08 prev. The children are linked intrusively through these words (addChild 0x598864
//         stores the child's own +0x04 / +0x08 into the parent's list; the child pointer is the link minus 4).
//         The constructor zeroes both words before the (empty) IObject constructor runs.
//   +0x0c name (STLport std::string, 24 bytes: 16-byte inline buffer, finish +0x1c, start +0x20)
//   +0x24 absolute transform (CMatrix4: 16 floats, flag byte at +0x64)
//   +0x68 relative transform (CMatrix4, flag byte at +0xa8)
//   +0xac position (3 floats)  +0xb8 rotation (quaternion)  +0xc8 scale (3 floats)
//   +0xd4 transformed bounding box (6 floats)
//   +0xec parent
//   +0xf0 child count, +0xf4 child list sentinel (next, prev)       getChildren() returns the object at +0xf0
//   +0xfc animator list sentinel                                     getAnimators() returns the object at +0xfc
//   +0x104 binded-animator list sentinel                             getBindedAnimators() returns the object at +0x104
//   +0x10c id, +0x110 scene manager, +0x114 triangle selector, +0x118 automatic culling mode, +0x11c flags,
//   +0x120 visible byte, +0x121 visible-in-parent byte, +0x124 game data, +0x128 camera offset, +0x12c rendering layer
//   +0x130 glitch::IReferenceCounted virtual base (vptr, then the count at +0x134; the complete-object constructor
//          sets it to 1)
//
// Slot table. `vptr+K` is the Hex-Rays call offset (getPosition is vptr+0xa0). tools/decomp_vtable.py prints this
// class's slots 0x0c higher (listing offset = K + 0x0c), because the vtable header carries three words first (the
// virtual-base offset 0x130, offset-to-top, typeinfo). So getPosition is K 0xa0 = listing +0xac, and the listing's +0xa0 is
// setScale (K 0x94). Verified slot by slot against the listing (all 61 slots, K 0x00 .. 0xf0, the three header words
// excluded); the declaration order below is the slot order, the numbers in the comments are K. IAttributeExchangingObject
// contributes K 0x00/0x04.
//
// Port notes: pointers are host width, so the layout above is the contract of the offsets, not of sizeof. The glitch
// std::string and std::vector (SAllocator) are std::string and std::vector. The IObject base (an empty class whose
// constructor and destructor are bare returns) is not declared.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/core/allocator.hpp"  // core::svector / stringc (STLPORT-DECISION.md section 6)

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/ITriangleSelector.hpp"
#include "glitch-scene-collada-gui/scene/scene_types.hpp"

namespace glitch::scene {

// ISceneNode::flags (+0x11c). Names follow the bodies that read and write each bit; 0x60f is the constructor value.
enum ESceneNodeFlags : std::uint32_t {
    ESNF_VISIBLE = 0x001,             // effective visibility; set when visible and visibleInParent, cleared otherwise
    ESNF_SCALE_CHANGED = 0x002,       // setScale (0x5970c4)
    ESNF_ROTATION_CHANGED = 0x004,    // setRotation (0x5970f4)
    ESNF_POSITION_CHANGED = 0x008,    // setPosition (0x59712c)
    ESNF_RELATIVE_UPDATED = 0x010,    // getRelativeTransformation rebuilt the matrix (cleared by updateAbsolutePosition)
    ESNF_ABSOLUTE_CHANGED = 0x020,    // the absolute matrix was recomputed this frame (cleared at the end of onAnimate)
    ESNF_PARENT_CHANGED = 0x040,      // setParent (0x5971e0)
    ESNF_DEBUG_OBJECT = 0x080,        // isDebugObject / setIsDebugObject
    ESNF_BOX_DIRTY = 0x100,           // transformedBoundingBox needs recomputing (getTransformedBoundingBox)
    ESNF_ANIMATE = 0x200,             // onAnimate and onUpdateTime run only while set
    ESNF_ANIMATE_ONLY_VISIBLE = 0x400,  // onAnimate: when set the node animates only while visible
    ESNF_SHADOW_CASTER = 0x800,       // IMeshSceneNode::setNodeHierarchyAsShadowCaster
    ESNF_INITIAL = 0x60f,             // the constructor value (0x5990c0: `*(a1 + 284) = 1551`)
};

// The child list object at +0xf0: a count and the sentinel of the intrusive circular list. getChildren() returns it.
class SChildList {
public:
    class iterator {
    public:
        explicit iterator(const SListLink* link) noexcept : link_(link) {}
        inline ISceneNode* operator*() const;  // defined after ISceneNode: the child is the link minus 4
        iterator& operator++() {
            link_ = link_->next;
            return *this;
        }
        bool operator==(const iterator& o) const noexcept { return link_ == o.link_; }
        bool operator!=(const iterator& o) const noexcept { return link_ != o.link_; }

    private:
        const SListLink* link_;
    };

    SChildList() = default;
    SChildList(const SChildList&) = delete;
    SChildList& operator=(const SChildList&) = delete;

    iterator begin() const noexcept { return iterator(sentinel.next); }
    iterator end() const noexcept { return iterator(&sentinel); }
    bool empty() const noexcept { return sentinel.next == &sentinel; }
    std::size_t size() const noexcept { return count; }

    std::uint32_t count = 0;      // +0x00 (node +0xf0)
    mutable SListHead sentinel;   // +0x04 next, +0x08 prev (node +0xf4, +0xf8)
};

class ISceneNode : public io::IAttributeExchangingObject, public SListLink, public virtual glitch::IReferenceCounted {
public:
    // 0x5990c0 (base-object constructor) and 0x599268 (complete-object constructor): one C++ constructor. Sets both
    // transforms to identity (flags set), the position, rotation and scale arguments, the box (-1..1), the empty lists,
    // the id, flags 0x60f, visible bytes 1, then calls updateAbsolutePosition(false).
    ISceneNode(int id, const core::vector3d<float>& position, const core::quaternion& rotation,
               const core::vector3d<float>& scale);

    // K 0x00 / 0x04 (IAttributeExchangingObject's slots), 0x5972a4 and 0x598058. PARTIAL, see recon/slice_32.cpp: the
    // attribute writers and readers are not reconstructed.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    // K 0x08 / 0x0c: 0x598b84 (D1), 0x598cbc (D2, base object), 0x598ca0 (D0, skipped).
    ~ISceneNode() override;

    // K 0x10, 0x596d08: returns 1.
    virtual int onRegisterSceneNode();
    // K 0x14, 0x596d6c: runs every animator, updateAbsolutePosition(false), then the children.
    virtual void onAnimate(std::uint32_t timeMs);
    // K 0x18, 0x596d10: runs the animators' updateTime when the animate bits are set.
    virtual void onUpdateTime(std::uint32_t timeMs);
    // K 0x1c: pure. Draws the node.
    virtual void render(void* renderContext) = 0;
    // K 0x20, 0x596e24: returns 0xffffffff.
    virtual std::uint32_t getRenderVertexCount(void* unused) const;
    // K 0x24, 0x596e2c: the characters of the name (the std::string start pointer at +0x20).
    virtual const char* getName() const;
    // K 0x28 / 0x2c, 0x598a04 and 0x597f50.
    virtual void setName(const char* name);
    virtual void setName(const core::stringc& name);
    // K 0x30: pure. The local bounding box.
    virtual const core::aabbox3d<float>& getBoundingBox() const = 0;
    // K 0x34, 0x59770c: the local box transformed by the absolute matrix, recomputed when ESNF_BOX_DIRTY is set.
    virtual const core::aabbox3d<float>& getTransformedBoundingBox() const;
    // K 0x38, 0x35a8e0: the absolute matrix (+0x24).
    virtual const core::CMatrix4<float>& getAbsoluteTransformation() const;
    // K 0x3c, 0x599444: stores the matrix, derives the relative matrix, position, scale and rotation from it.
    virtual void setAbsoluteTransformation(core::CMatrix4<float>& matrix);
    // K 0x40, 0x598908: the relative matrix (+0x68), rebuilt from position, rotation and scale when they changed.
    virtual const core::CMatrix4<float>& getRelativeTransformation() const;
    // K 0x44, 0x59901c: stores the matrix and decomposes it into position, rotation and scale.
    virtual void setRelativeTransformation(const core::CMatrix4<float>& matrix);
    // K 0x48, 0x596ec4.
    virtual void setVisible(bool visible);
    // K 0x4c / 0x50, 0x596f5c and 0x596f64.
    virtual int getID() const;
    virtual void setID(int id);
    // K 0x54 / 0x58, 0x596fe4 and 0x596ff4: both return "".
    virtual const char* getUID() const;
    virtual const char* getScopeID() const;
    // K 0x5c, 0x598864: takes a reference on the child, detaches it from its old parent, links it, sets its parent and
    // notifies the scene manager. The original returns the result of the child's notifyVisibilityChanged tail call.
    virtual void addChild(ISceneNode* child);
    // K 0x60, 0x597004: unlinks the child if this node is its parent and drops the reference; false otherwise.
    virtual bool removeChild(ISceneNode* child);
    // K 0x64, 0x5987e8: unlinks and drops every child.
    virtual void removeAll();
    // K 0x68, 0x59706c: removes this node from its parent (parent->removeChild(this)).
    virtual void remove();
    // K 0x6c .. 0x80: the animator lists (nodes {next, prev, value}, a reference held per animator).
    virtual void addAnimator(ISceneNodeAnimator* animator);         // 0x598770
    virtual void removeAnimator(ISceneNodeAnimator* animator);      // 0x5986e8
    virtual void removeAnimators();                                 // 0x598658
    virtual void addBindedAnimator(ISceneNodeAnimator* animator);   // 0x597d58
    virtual void removeBindedAnimator(ISceneNodeAnimator* animator);  // 0x597fe4
    virtual void removeBindedAnimators();                           // 0x597f68
    // K 0x84, 0x5970a4: the original writes a null intrusive_ptr into its result slot.
    virtual boost::intrusive_ptr<video::CMaterial> getMaterial(std::uint32_t index) const;
    // K 0x88, 0x5970b0: returns 0.
    virtual std::uint32_t getMaterialCount() const;
    // K 0x8c, 0x5970b8: empty.
    virtual void notifyMaterialChanged();
    // K 0x90 .. 0xa4: the transform components.
    virtual const core::vector3d<float>& getScale() const;                  // 0x5970bc
    virtual void setScale(const core::vector3d<float>& scale);              // 0x5970c4
    virtual const core::quaternion& getRotation() const;                    // 0x5970ec
    virtual void setRotation(const core::quaternion& rotation);             // 0x5970f4
    virtual const core::vector3d<float>& getPosition() const;               // 0x597124 (vptr+0xa0)
    virtual void setPosition(const core::vector3d<float>& position);        // 0x59712c
    // K 0xa8 / 0xac, 0x5971d0 and 0x5971d8: both return null in the base (collada::CSceneNode overrides them).
    virtual const SUserProperty* getUserProperty() const;
    virtual const char* getUserPropertyStr() const;
    // K 0xb0 / 0xb4, 0x597254 and 0x59725c (drops the old selector, takes a reference on the new one).
    virtual ITriangleSelector* getTriangleSelector() const;
    virtual void setTriangleSelector(ITriangleSelector* selector);
    // K 0xb8, 0x597c60: absolute = parent absolute * relative (mult34), or a copy of the relative matrix without a parent.
    virtual void updateAbsolutePosition(bool includeChildren);
    // K 0xbc, 0x597298: returns 'unkn' (0x6e6b6e75).
    virtual E_SCENE_NODE_TYPE getType() const;
    // K 0xc0, 0x5974c4: returns null.
    virtual ISceneNode* clone();
    // K 0xc4 .. 0xd8: game data, camera offset, rendering layer (plain stores and loads).
    virtual void setGameData(void* data);                  // 0x5974cc
    virtual void* getGameData() const;                     // 0x5974d4
    virtual void setCameraOffset(float offset);            // 0x5974dc
    virtual float getCameraOffset() const;                 // 0x5974e4
    virtual void setRenderingLayer(std::int32_t layer);    // 0x5974ec
    virtual std::int32_t getRenderingLayer() const;        // 0x5974f4
    // K 0xdc, 0x5974fc: empty.
    virtual void onMaterialChanged();
    // K 0xe0, 0x597544: empty.
    virtual void resetTransform(bool keepTransform);
    // K 0xe4, 0x597500: forwards to every child (child vptr+0xe4).
    virtual void setNodeHierarchyAsShadowCaster(bool enabled);
    // K 0xe8, 0x596ce0: IReferenceCounted::onDelete override. Calls removeBindedAnimators and removeAnimators.
    void onDelete() override;
    // K 0xec, 0x596e34: latches visibleInParent, updates the visible bit and tells the children when it changed.
    virtual void notifyVisibilityChanged(bool visibleInParent);
    // K 0xf0, 0x596ec0: empty.
    virtual void onChangedSceneManager();

    // Non-virtual members (direct calls in the original).
    // 0x597154: calls setPosition(vector3d) through the vtable (K 0xa4).
    void setPosition(float x, float y, float z);
    // 0x597180: the translation column of the absolute matrix.
    core::vector3d<float> getAbsolutePosition() const;
    // 0x597290.
    ISceneNode* getParent() const;
    // 0x5971e0: takes a use on this node, detaches it (remove()), stores the parent, sets ESNF_PARENT_CHANGED, adopts the
    // parent's scene manager (setSceneManager) and drops the use.
    void setParent(ISceneNode* parent);
    // 0x588e30: stores the scene manager (+0x110), recurses over the children, then calls onChangedSceneManager.
    void setSceneManager(CSceneManager* manager);
    // 0x597094 / 0x59709c / 0x5971c8: the embedded list objects.
    const SNodeList<ISceneNodeAnimator*>& getAnimators() const;
    const SNodeList<ISceneNodeAnimator*>& getBindedAnimators() const;
    const SChildList& getChildren() const;
    // 0x59719c: stores the culling mode (E_CULLING_TYPE).
    void setAutomaticCulling(E_CULLING_TYPE culling);
    // 0x5971a4 / 0x5971bc: bit 7 of the flags.
    void setIsDebugObject(bool debug);
    bool isDebugObject() const;
    // The type-, name-, uid- and scope-id searches of the subtree (0x596f6c, 0x598398 .. 0x5985e4, 0x598dd4).
    ISceneNode* getSceneNodeFromType(E_SCENE_NODE_TYPE type);
    void getSceneNodesFromType(E_SCENE_NODE_TYPE type, core::svector<ISceneNode*>& out);
    const ISceneNode* getSceneNodeFromName(const char* name) const;   // 0x598480
    ISceneNode* getSceneNodeFromName(const char* name);               // 0x5984f4
    const ISceneNode* getSceneNodeFromUID(const char* uid) const;     // 0x598568
    ISceneNode* getSceneNodeFromUID(const char* uid);                 // 0x5985e4
    const ISceneNode* getSceneNodeFromScopeID(const char* scopeId) const;  // 0x598398
    ISceneNode* getSceneNodeFromScopeID(const char* scopeId);         // 0x59840c
    // 0x597dcc: copies name, transforms, id, culling and flags from `other`, clones its children and animators.
    void cloneMembers(ISceneNode* other);
    // 0x598a2c: prints "uid=%s name=%s scope=%s type=%c%c%c%c" for the subtree to the Printer.
    void logTree(int depth, int maxDepth);

    // Members, in offset order. The base classes occupy +0x00 .. +0x08 (vptr and the sibling link).
    core::stringc name;                                      // +0x0c
    core::CMatrix4<float> absoluteTransform{core::CMatrix4<float>::EM4CONST_IDENTITY};          // +0x24
    mutable core::CMatrix4<float> relativeTransform{core::CMatrix4<float>::EM4CONST_IDENTITY};  // +0x68
    core::vector3d<float> position;                          // +0xac
    core::quaternion rotation;                               // +0xb8
    core::vector3d<float> scale;                             // +0xc8
    mutable core::aabbox3d<float> transformedBoundingBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};  // +0xd4
    ISceneNode* parent = nullptr;                            // +0xec
    SChildList children;                                     // +0xf0 count, +0xf4 sentinel
    SNodeList<ISceneNodeAnimator*> animators;                // +0xfc
    SNodeList<ISceneNodeAnimator*> bindedAnimators;          // +0x104
    int id = 0;                                              // +0x10c
    CSceneManager* sceneManager = nullptr;                   // +0x110
    ITriangleSelector* triangleSelector = nullptr;           // +0x114 (reference held)
    E_CULLING_TYPE automaticCulling = 0;                     // +0x118
    mutable std::uint32_t flags = ESNF_INITIAL;              // +0x11c
    bool visible = true;                                     // +0x120
    bool visibleInParent = true;                             // +0x121
    void* gameData = nullptr;                                // +0x124
    float cameraOffset = 0.0f;                               // +0x128
    std::int32_t renderingLayer = 0;                         // +0x12c
};

// The child of a list link: the link is the child's own +0x04 sibling link, which is a base subobject here.
inline ISceneNode* SChildList::iterator::operator*() const {
    return static_cast<ISceneNode*>(const_cast<SListLink*>(link_));
}

}  // namespace glitch::scene
