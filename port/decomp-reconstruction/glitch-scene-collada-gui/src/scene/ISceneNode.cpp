// Bodies of glitch::scene::ISceneNode (canonical class: scene/ISceneNode.hpp). This file replaces src/scene_node.cpp and
// src/tb_scene-collada-gui-glitch_scene_ISceneNode-0.cpp (the accessor and batch bodies of the earlier stand-in) and takes over
// the bodies that recon/slice_06.cpp wrote against recon_06::SceneNode (free functions over a stand-in with std::vector lists).
// The class is polymorphic now, so every virtual call of the pseudocode is a real virtual call.
//
// The comment before each function is `// 0xADDR symbol`. A function whose comment contains PARTIAL is ledgered partial.
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

#include <algorithm>
#include <cctype>
#include <cmath>
#include <cstdio>
#include <cstring>

#include "glitch-core-io/core/matrix4_base.hpp"
#include "glitch-core-io/core/matrix4_operators.hpp"
#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"

namespace glitch::scene {

// The five literals of the AutomaticCulling enum attribute (.data.rel.ro 0x9573a8 and 0x9573c0).
const char* const AutomaticCullingNames[] = {"false", "box", "frustum_box", "frustum_sphere", "frustum_box_3", nullptr};

namespace {

// LC_API_STRCASECMP_0: case-insensitive comparison, nonzero when the strings differ.
int caseInsensitiveCompare(const char* a, const char* b) {
    for (;; ++a, ++b) {
        const int ca = std::tolower(static_cast<unsigned char>(*a));
        const int cb = std::tolower(static_cast<unsigned char>(*b));
        if (ca != cb) return ca - cb;
        if (ca == 0) return 0;
    }
}

// The options word 2 selects the editor attributes (Camera Offset, Rendering Layer); the original compares the flag word for equality.
bool optionsAskForEditorAttributes(const io::SAttributeReadWriteOptions* options) {
    return options != nullptr && options->flags == 2;
}

}  // namespace

// 0x5990c0 _ZN6glitch5scene10ISceneNodeC2EiRKNS_4core8vector3dIfEERKNS2_10quaternionES6_ (base object)
// 0x599268 _ZN6glitch5scene10ISceneNodeC1EiRKNS_4core8vector3dIfEERKNS2_10quaternionES6_ (complete object)
// One C++ constructor covers both variants (they differ only in the virtual-base and vtable words). The sibling link,
// the name, both matrices (identity, flags set), the transformed box (-1..1), the three lists (self-linked) and the
// scalar members take their default member initializers; the arguments set id, position, rotation and scale. It ends
// with the base updateAbsolutePosition(false), which copies the relative matrix into the absolute one.
ISceneNode::ISceneNode(int nodeId, const core::vector3d<float>& nodePosition, const core::quaternion& nodeRotation,
                       const core::vector3d<float>& nodeScale)
    : position(nodePosition), rotation(nodeRotation), scale(nodeScale), id(nodeId) {
    ISceneNode::updateAbsolutePosition(false);
}

// 0x598b84 _ZN6glitch5scene10ISceneNodeD1Ev (complete object)
// 0x598cbc _ZN6glitch5scene10ISceneNodeD2Ev (base object, takes the VTT)
// 0x598ca0 _ZN6glitch5scene10ISceneNodeD0Ev (deleting; skipped, compiler-generated)
// Removes every child, drops the triangle selector, frees the binded-animator and animator list nodes (the references the
// nodes held are dropped by removeAnimators / removeBindedAnimators before the node dies, see onDelete), unlinks the children
// list and frees the name.
ISceneNode::~ISceneNode() {
    ISceneNode::removeAll();
    if (triangleSelector != nullptr) {
        triangleSelector->drop();
    }
    bindedAnimators.clear();
    animators.clear();
    // The remaining child links are cleared by removeAll above (count 0, sentinel self-linked).
}

// 0x5972a4 _ZNK6glitch5scene10ISceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Writes Name, Id, Position, Rotation, Scale, Visible, AutomaticCulling and IsDebugObject; with options flags 2 it also
// writes Camera Offset and Rendering Layer.
void ISceneNode::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    if (attributes == nullptr) return;
    attributes->addString("Name", name.c_str(), false);
    attributes->addInt("Id", id, false);
    attributes->addVector3d("Position", getPosition(), false);
    attributes->addQuaternion("Rotation", getRotation(), false);
    attributes->addVector3d("Scale", getScale(), false);
    attributes->addBool("Visible", (flags & ESNF_VISIBLE) != 0, false);
    attributes->addEnum("AutomaticCulling", static_cast<int>(automaticCulling), AutomaticCullingNames, false);
    attributes->addBool("IsDebugObject", isDebugObject(), false);
    if (optionsAskForEditorAttributes(options)) {
        attributes->addFloat("Camera Offset", getCameraOffset(), false);
        attributes->addInt("Rendering Layer", getRenderingLayer(), false);
    }
}

// 0x598058 _ZN6glitch5scene10ISceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// The reverse of the serializer. The Rotation attribute may be stored as a vector3d of degrees (converted with 0.017453
// and quaternion::set) or as a quaternion. Ends with updateAbsolutePosition(false).
void ISceneNode::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    if (attributes == nullptr) return;
    name = attributes->getString("Name");
    id = attributes->getInt("Id");
    setPosition(attributes->getVector3d("Position"));
    const wchar_t* rotationType = attributes->getAttributeTypeString("Rotation");
    if (rotationType != nullptr && std::wcscmp(L"vector3d", rotationType) == 0) {
        core::vector3d<float> degrees = attributes->getVector3d("Rotation");
        degrees.X = degrees.X * 0.017453f;
        degrees.Y = degrees.Y * 0.017453f;
        degrees.Z = degrees.Z * 0.017453f;
        core::quaternion q;
        q.set(degrees.X, degrees.Y, degrees.Z);
        setRotation(q);
    } else {
        setRotation(attributes->getQuaternion("Rotation"));
    }
    setScale(attributes->getVector3d("Scale"));
    setVisible(attributes->getBool("Visible"));
    automaticCulling = static_cast<E_CULLING_TYPE>(attributes->getEnum("AutomaticCulling", AutomaticCullingNames));
    setIsDebugObject(attributes->getBool("IsDebugObject"));
    if (optionsAskForEditorAttributes(options)) {
        setCameraOffset(attributes->getFloat("Camera Offset"));
        setRenderingLayer(attributes->getInt("Rendering Layer"));
    }
    updateAbsolutePosition(false);
}

// 0x596d08 _ZN6glitch5scene10ISceneNode19onRegisterSceneNodeEv
int ISceneNode::onRegisterSceneNode() {
    return 1;
}

// 0x596d6c _ZN6glitch5scene10ISceneNode9onAnimateEj
// When the animate bit is set (and, if the only-visible bit is set, the node is visible): every animator animates the node,
// the absolute position is updated without the children, the children animate, and the absolute-changed bit is cleared.
void ISceneNode::onAnimate(std::uint32_t timeMs) {
    const std::uint32_t f = flags;
    if (((f & ESNF_ANIMATE_ONLY_VISIBLE) == 0 || (f & ESNF_VISIBLE) != 0) && (f & ESNF_ANIMATE) != 0) {
        for (auto it = animators.begin(); it != animators.end(); ++it) {
            (*it)->animateNode(this, timeMs);
        }
        updateAbsolutePosition(false);
        for (ISceneNode* child : children) {
            child->onAnimate(timeMs);
        }
        flags &= ~static_cast<std::uint32_t>(ESNF_ABSOLUTE_CHANGED);
    }
}

// 0x596d10 _ZN6glitch5scene10ISceneNode12onUpdateTimeEj
void ISceneNode::onUpdateTime(std::uint32_t timeMs) {
    if ((flags & (ESNF_ANIMATE | ESNF_VISIBLE)) == (ESNF_ANIMATE | ESNF_VISIBLE)) {
        for (auto it = animators.begin(); it != animators.end(); ++it) {
            (*it)->updateTime(timeMs);
        }
    }
}

// 0x596e24 _ZNK6glitch5scene10ISceneNode20getRenderVertexCountEPv
std::uint32_t ISceneNode::getRenderVertexCount(void* /*unused*/) const {
    return 0xffffffffu;
}

// 0x596e2c _ZNK6glitch5scene10ISceneNode7getNameEv
const char* ISceneNode::getName() const {
    return name.c_str();
}

// 0x598a04 _ZN6glitch5scene10ISceneNode7setNameEPKc
void ISceneNode::setName(const char* newName) {
    name.assign(newName, newName + std::strlen(newName));
}

// 0x597f50 _ZN6glitch5scene10ISceneNode7setNameERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEE
void ISceneNode::setName(const core::stringc& newName) {
    if (&name != &newName) {
        name = newName;
    }
}

// 0x59770c _ZNK6glitch5scene10ISceneNode25getTransformedBoundingBoxEv
// When the box-dirty bit is set the local box (vptr+0x30) is copied, transformed by the absolute matrix and the bit cleared.
const core::aabbox3d<float>& ISceneNode::getTransformedBoundingBox() const {
    if ((flags & ESNF_BOX_DIRTY) == 0) {
        return transformedBoundingBox;
    }
    transformedBoundingBox = getBoundingBox();
    absoluteTransform.transformBoxEx(transformedBoundingBox);
    flags &= ~static_cast<std::uint32_t>(ESNF_BOX_DIRTY);
    return transformedBoundingBox;
}

// 0x35a8e0 _ZNK6glitch5scene10ISceneNode25getAbsoluteTransformationEv
const core::CMatrix4<float>& ISceneNode::getAbsoluteTransformation() const {
    return absoluteTransform;
}

// 0x599444 _ZN6glitch5scene10ISceneNode25setAbsoluteTransformationERNS_4core8CMatrix4IfEE
// Stores the matrix as the absolute one, derives the relative matrix (the parent's inverse times it, or a copy without a
// parent), takes the position from its translation, the scale from the row lengths and the rotation from the normalized
// rows, and raises the absolute-changed bit. The position, rotation and scale are stored directly (no changed bits).
void ISceneNode::setAbsoluteTransformation(core::CMatrix4<float>& matrix) {
    absoluteTransform = matrix;
    if (parent != nullptr) {
        core::CMatrix4<float> inverse;
        inverse.flag = false;
        parent->getAbsoluteTransformation().getInverse(inverse);
        relativeTransform = inverse * matrix;
    } else {
        relativeTransform = absoluteTransform;
    }
    const core::CMatrix4<float>& rel = relativeTransform;
    position = core::vector3d<float>{rel.M[12], rel.M[13], rel.M[14]};

    core::CMatrix4<float> rotationMatrix;
    for (float& v : rotationMatrix.M) v = 0.0f;
    rotationMatrix.M[15] = 1.0f;
    rotationMatrix.flag = false;
    const int rows[3] = {0, 4, 8};
    float lengths[3] = {};
    for (int r = 0; r < 3; ++r) {
        const float x = rel.M[rows[r]], y = rel.M[rows[r] + 1], z = rel.M[rows[r] + 2];
        lengths[r] = std::sqrt((x * x + y * y) + z * z);
        const float inverseLength = 1.0f / lengths[r];
        rotationMatrix.M[rows[r]] = inverseLength * x;
        rotationMatrix.M[rows[r] + 1] = inverseLength * y;
        rotationMatrix.M[rows[r] + 2] = inverseLength * z;
    }
    scale = core::vector3d<float>{lengths[0], lengths[1], lengths[2]};
    rotation = rotationMatrix;
    flags |= ESNF_ABSOLUTE_CHANGED;
}

// 0x598908 _ZNK6glitch5scene10ISceneNode25getRelativeTransformationEv
// Rebuilds the relative matrix from the rotation and scale when bits 1 and 2 are set, then writes the translation from the
// position, clears the matrix flag, clears the changed bits and sets bit 4.
const core::CMatrix4<float>& ISceneNode::getRelativeTransformation() const {
    const std::uint32_t current = flags;
    if ((current & (ESNF_SCALE_CHANGED | ESNF_ROTATION_CHANGED | ESNF_POSITION_CHANGED)) == 0) {
        return relativeTransform;
    }
    if ((current & (ESNF_SCALE_CHANGED | ESNF_ROTATION_CHANGED)) != 0) {
        core::CMatrix4<float> rebuilt;
        rebuilt.flag = false;
        rotation.getMatrix_transposed(rebuilt);
        relativeTransform = rebuilt;
        if (scale.X != 1.0f || scale.Y != 1.0f || scale.Z != 1.0f) {
            relativeTransform.postScale(scale);
        }
    }
    relativeTransform.M[12] = position.X;
    relativeTransform.M[13] = position.Y;
    relativeTransform.M[14] = position.Z;
    relativeTransform.flag = false;
    flags = (flags & 0xFFFFFFE1u) | ESNF_RELATIVE_UPDATED;
    return relativeTransform;
}

// 0x59901c _ZN6glitch5scene10ISceneNode25setRelativeTransformationERKNS_4core8CMatrix4IfEE
// Position from the translation (setPosition, vptr+0xa4), rotation from the matrix (setRotation, +0x9c), scale from the
// row lengths (setScale, +0x94), then the matrix is stored and the changed bits are cleared (bit 4 set).
void ISceneNode::setRelativeTransformation(const core::CMatrix4<float>& matrix) {
    setPosition(core::vector3d<float>{matrix.M[12], matrix.M[13], matrix.M[14]});
    core::quaternion q;
    q = matrix;
    setRotation(q);
    setScale(matrix.getScale());
    relativeTransform = matrix;
    flags = (flags & 0xFFFFFFE1u) | ESNF_RELATIVE_UPDATED;
}

// 0x596ec4 _ZN6glitch5scene10ISceneNode10setVisibleEb
void ISceneNode::setVisible(bool newVisible) {
    if (visible == newVisible) return;
    visible = newVisible;
    const std::uint32_t before = flags & ESNF_VISIBLE;
    if (newVisible && visibleInParent) {
        flags |= ESNF_VISIBLE;
    } else {
        flags &= ~static_cast<std::uint32_t>(ESNF_VISIBLE);
    }
    if (before != (flags & ESNF_VISIBLE)) {
        for (ISceneNode* child : children) {
            child->notifyVisibilityChanged((flags & ESNF_VISIBLE) != 0);
        }
    }
}

// 0x596f5c _ZNK6glitch5scene10ISceneNode5getIDEv
int ISceneNode::getID() const {
    return id;
}

// 0x596f64 _ZN6glitch5scene10ISceneNode5setIDEi
void ISceneNode::setID(int newId) {
    id = newId;
}

// 0x596fe4 _ZNK6glitch5scene10ISceneNode6getUIDEv
const char* ISceneNode::getUID() const {
    return "";
}

// 0x596ff4 _ZNK6glitch5scene10ISceneNode10getScopeIDEv
const char* ISceneNode::getScopeID() const {
    return "";
}

// 0x598864 _ZN6glitch5scene10ISceneNode8addChildEPS0_
// Takes a reference on the child, detaches it from its old parent (remove()), links it at the tail of the child list,
// sets its parent, tells the scene manager and notifies the child of this node's visibility.
void ISceneNode::addChild(ISceneNode* child) {
    if (child == this || child == nullptr) return;
    ++child->referenceCounter;
    child->remove();
    SListLink* childLink = static_cast<SListLink*>(child);
    SListLink* tail = children.sentinel.prev;
    childLink->prev = tail;
    tail->next = childLink;
    children.sentinel.prev = childLink;
    childLink->next = &children.sentinel;
    ++children.count;
    child->setParent(this);
    if (sceneManager != nullptr) {
        sceneManager->notifyHierarchyChanged();
    }
    child->notifyVisibilityChanged((flags & ESNF_VISIBLE) != 0);
}

// 0x597004 _ZN6glitch5scene10ISceneNode11removeChildEPS0_
bool ISceneNode::removeChild(ISceneNode* child) {
    if (child->parent != this) return false;
    SListLink* childLink = static_cast<SListLink*>(child);
    if (childLink->next != nullptr) {
        childLink->prev->next = childLink->next;
        childLink->next->prev = childLink->prev;
    }
    --children.count;
    childLink->prev = nullptr;
    childLink->next = nullptr;
    child->parent = nullptr;
    child->drop();
    return true;
}

// 0x5987e8 _ZN6glitch5scene10ISceneNode9removeAllEv
void ISceneNode::removeAll() {
    SListLink* link = children.sentinel.next;
    while (link != &children.sentinel) {
        SListLink* following = link->next;
        ISceneNode* child = static_cast<ISceneNode*>(link);
        link->prev = nullptr;
        link->next = nullptr;
        child->parent = nullptr;
        child->drop();
        link = following;
    }
    children.sentinel.next = &children.sentinel;
    children.sentinel.prev = &children.sentinel;
    children.count = 0;
    if (sceneManager != nullptr) {
        sceneManager->notifyHierarchyChanged();
    }
}

// 0x59706c _ZN6glitch5scene10ISceneNode6removeEv
void ISceneNode::remove() {
    if (parent != nullptr) {
        parent->removeChild(this);
    }
}

// 0x598770 _ZN6glitch5scene10ISceneNode11addAnimatorEPNS0_18ISceneNodeAnimatorE
void ISceneNode::addAnimator(ISceneNodeAnimator* animator) {
    if (animator == nullptr) return;
    animators.pushBack(animator);
    ++animator->referenceCounter;
    animator->onBind(this);
    if (sceneManager != nullptr) {
        sceneManager->notifyHierarchyChanged();
    }
}

// 0x5986e8 _ZN6glitch5scene10ISceneNode14removeAnimatorEPNS0_18ISceneNodeAnimatorE
void ISceneNode::removeAnimator(ISceneNodeAnimator* animator) {
    for (SListLink* l = animators.head.next; l != &animators.head; l = l->next) {
        auto* node = static_cast<SListNode<ISceneNodeAnimator*>*>(l);
        if (node->value == animator) {
            animator->onUnbind(this);
            animator->drop();
            l->prev->next = l->next;
            l->next->prev = l->prev;
            delete node;
            if (sceneManager != nullptr) {
                sceneManager->notifyHierarchyChanged();
            }
            return;
        }
    }
}

// 0x598658 _ZN6glitch5scene10ISceneNode15removeAnimatorsEv
void ISceneNode::removeAnimators() {
    for (auto it = animators.begin(); it != animators.end(); ++it) {
        ISceneNodeAnimator* animator = *it;
        animator->onUnbind(this);
        animator->drop();
    }
    animators.clear();
    if (sceneManager != nullptr) {
        sceneManager->notifyHierarchyChanged();
    }
}

// 0x597d58 _ZN6glitch5scene10ISceneNode18addBindedAnimatorEPNS0_18ISceneNodeAnimatorE
// Adds the animator at the tail unless it is already in the list; the list holds a reference.
void ISceneNode::addBindedAnimator(ISceneNodeAnimator* animator) {
    if (animator == nullptr) return;
    for (auto it = bindedAnimators.begin(); it != bindedAnimators.end(); ++it) {
        if (*it == animator) return;
    }
    ++animator->referenceCounter;
    bindedAnimators.pushBack(animator);
}

// 0x597fe4 _ZN6glitch5scene10ISceneNode21removeBindedAnimatorEPNS0_18ISceneNodeAnimatorE
void ISceneNode::removeBindedAnimator(ISceneNodeAnimator* animator) {
    for (SListLink* l = bindedAnimators.head.next; l != &bindedAnimators.head; l = l->next) {
        auto* node = static_cast<SListNode<ISceneNodeAnimator*>*>(l);
        if (node->value == animator) {
            animator->onUnbind(this);
            animator->drop();
            l->prev->next = l->next;
            l->next->prev = l->prev;
            delete node;
            return;
        }
    }
}

// 0x597f68 _ZN6glitch5scene10ISceneNode22removeBindedAnimatorsEv
void ISceneNode::removeBindedAnimators() {
    for (auto it = bindedAnimators.begin(); it != bindedAnimators.end(); ++it) {
        ISceneNodeAnimator* animator = *it;
        animator->onUnbind(this);
        animator->drop();
    }
    bindedAnimators.clear();
}

// 0x5970a4 _ZNK6glitch5scene10ISceneNode11getMaterialEj
// The base node has no materials: the original writes a null reference into the result slot.
boost::intrusive_ptr<video::CMaterial> ISceneNode::getMaterial(std::uint32_t /*index*/) const {
    return boost::intrusive_ptr<video::CMaterial>();
}

// 0x5970b0 _ZNK6glitch5scene10ISceneNode16getMaterialCountEv
std::uint32_t ISceneNode::getMaterialCount() const {
    return 0;
}

// 0x5970b8 _ZN6glitch5scene10ISceneNode21notifyMaterialChangedEv
void ISceneNode::notifyMaterialChanged() {}

// 0x5970bc _ZNK6glitch5scene10ISceneNode8getScaleEv
const core::vector3d<float>& ISceneNode::getScale() const {
    return scale;
}

// 0x5970c4 _ZN6glitch5scene10ISceneNode8setScaleERKNS_4core8vector3dIfEE
void ISceneNode::setScale(const core::vector3d<float>& value) {
    scale = value;
    flags |= ESNF_SCALE_CHANGED;
}

// 0x5970ec _ZNK6glitch5scene10ISceneNode11getRotationEv
const core::quaternion& ISceneNode::getRotation() const {
    return rotation;
}

// 0x5970f4 _ZN6glitch5scene10ISceneNode11setRotationERKNS_4core10quaternionE
void ISceneNode::setRotation(const core::quaternion& value) {
    rotation = value;
    flags |= ESNF_ROTATION_CHANGED;
}

// 0x597124 _ZNK6glitch5scene10ISceneNode11getPositionEv
const core::vector3d<float>& ISceneNode::getPosition() const {
    return position;
}

// 0x59712c _ZN6glitch5scene10ISceneNode11setPositionERKNS_4core8vector3dIfEE
void ISceneNode::setPosition(const core::vector3d<float>& value) {
    position = value;
    flags |= ESNF_POSITION_CHANGED;
}

// 0x5971d0 _ZNK6glitch5scene10ISceneNode15getUserPropertyEv
const SUserProperty* ISceneNode::getUserProperty() const {
    return nullptr;
}

// 0x5971d8 _ZNK6glitch5scene10ISceneNode18getUserPropertyStrEv
const char* ISceneNode::getUserPropertyStr() const {
    return nullptr;
}

// 0x597254 _ZNK6glitch5scene10ISceneNode19getTriangleSelectorEv
ITriangleSelector* ISceneNode::getTriangleSelector() const {
    return triangleSelector;
}

// 0x59725c _ZN6glitch5scene10ISceneNode19setTriangleSelectorEPNS0_17ITriangleSelectorE
void ISceneNode::setTriangleSelector(ITriangleSelector* selector) {
    if (triangleSelector != nullptr) {
        triangleSelector->drop();
    }
    triangleSelector = selector;
    if (selector != nullptr) {
        ++selector->referenceCounter;
    }
}

// 0x597c60 _ZN6glitch5scene10ISceneNode22updateAbsolutePositionEb
// With a parent: absolute = parent absolute * relative (mult34) when the parent's absolute-changed bit or one of this
// node's relative/parent bits is set. Without a parent: a copy of the relative matrix. Then the children, if asked.
void ISceneNode::updateAbsolutePosition(bool includeChildren) {
    if (parent != nullptr) {
        if ((parent->flags & ESNF_ABSOLUTE_CHANGED) != 0 || (flags & 0x5Eu) != 0) {
            const core::CMatrix4<float>& parentAbsolute = parent->getAbsoluteTransformation();
            const core::CMatrix4<float>& relative = getRelativeTransformation();
            core::detail::mult34(parentAbsolute, relative, absoluteTransform);
            flags = (flags & 0xFFFFFE8Fu) | 0x120u;
        }
    } else if ((flags & 0x5Eu) != 0) {
        absoluteTransform = getRelativeTransformation();
        flags = (flags & 0xFFFFFE8Fu) | 0x120u;
    }
    if (includeChildren) {
        for (ISceneNode* child : children) {
            child->updateAbsolutePosition(true);
        }
    }
}

// 0x597298 _ZNK6glitch5scene10ISceneNode7getTypeEv
// 0x6e6b6e75 is the four-character code "unkn".
E_SCENE_NODE_TYPE ISceneNode::getType() const {
    return ESNT_UNKNOWN;
}

// 0x5974c4 _ZN6glitch5scene10ISceneNode5cloneEv
ISceneNode* ISceneNode::clone() {
    return nullptr;
}

// 0x5974cc _ZN6glitch5scene10ISceneNode11setGameDataEPv
void ISceneNode::setGameData(void* data) {
    gameData = data;
}

// 0x5974d4 _ZNK6glitch5scene10ISceneNode11getGameDataEv
void* ISceneNode::getGameData() const {
    return gameData;
}

// 0x5974dc _ZN6glitch5scene10ISceneNode15setCameraOffsetEf
void ISceneNode::setCameraOffset(float offset) {
    cameraOffset = offset;
}

// 0x5974e4 _ZNK6glitch5scene10ISceneNode15getCameraOffsetEv
float ISceneNode::getCameraOffset() const {
    return cameraOffset;
}

// 0x5974ec _ZN6glitch5scene10ISceneNode17setRenderingLayerEi
void ISceneNode::setRenderingLayer(std::int32_t layer) {
    renderingLayer = layer;
}

// 0x5974f4 _ZNK6glitch5scene10ISceneNode17getRenderingLayerEv
std::int32_t ISceneNode::getRenderingLayer() const {
    return renderingLayer;
}

// 0x5974fc _ZN6glitch5scene10ISceneNode17onMaterialChangedEv
void ISceneNode::onMaterialChanged() {}

// 0x597544 _ZN6glitch5scene10ISceneNode14resetTransformEb
void ISceneNode::resetTransform(bool /*keepTransform*/) {}

// 0x597500 _ZN6glitch5scene10ISceneNode30setNodeHierarchyAsShadowCasterEb
void ISceneNode::setNodeHierarchyAsShadowCaster(bool enabled) {
    for (ISceneNode* child : children) {
        child->setNodeHierarchyAsShadowCaster(enabled);
    }
}

// 0x596ce0 _ZN6glitch5scene10ISceneNode8onDeleteEv
// IReferenceCounted::onDelete override: releases the binded animators (vptr+0x80), then the animators (vptr+0x74).
void ISceneNode::onDelete() {
    removeBindedAnimators();
    removeAnimators();
}

// 0x596e34 _ZN6glitch5scene10ISceneNode23notifyVisibilityChangedEb
void ISceneNode::notifyVisibilityChanged(bool newVisibleInParent) {
    const std::uint32_t before = flags & ESNF_VISIBLE;
    visibleInParent = newVisibleInParent;
    if (visible && newVisibleInParent) {
        flags |= ESNF_VISIBLE;
    } else {
        flags &= ~static_cast<std::uint32_t>(ESNF_VISIBLE);
    }
    if (before != (flags & ESNF_VISIBLE)) {
        for (ISceneNode* child : children) {
            child->notifyVisibilityChanged((flags & ESNF_VISIBLE) != 0);
        }
    }
}

// 0x596ec0 _ZN6glitch5scene10ISceneNode21onChangedSceneManagerEv
void ISceneNode::onChangedSceneManager() {}

// 0x597154 _ZN6glitch5scene10ISceneNode11setPositionEfff
void ISceneNode::setPosition(float x, float y, float z) {
    setPosition(core::vector3d<float>{x, y, z});
}

// 0x597180 _ZNK6glitch5scene10ISceneNode19getAbsolutePositionEv
core::vector3d<float> ISceneNode::getAbsolutePosition() const {
    return core::vector3d<float>{absoluteTransform.M[12], absoluteTransform.M[13], absoluteTransform.M[14]};
}

// 0x597290 _ZNK6glitch5scene10ISceneNode9getParentEv
ISceneNode* ISceneNode::getParent() const {
    return parent;
}

// 0x5971e0 _ZN6glitch5scene10ISceneNode9setParentEPS0_
void ISceneNode::setParent(ISceneNode* newParent) {
    ++referenceCounter;
    remove();
    parent = newParent;
    flags |= ESNF_PARENT_CHANGED;
    if (newParent != nullptr && sceneManager != newParent->sceneManager) {
        setSceneManager(newParent->sceneManager);
    }
    drop();
}

// 0x588e30 _ZN6glitch5scene10ISceneNode15setSceneManagerEPNS0_13CSceneManagerE
void ISceneNode::setSceneManager(CSceneManager* manager) {
    sceneManager = manager;
    for (ISceneNode* child : children) {
        child->setSceneManager(manager);
    }
    onChangedSceneManager();
}

// 0x597094 _ZNK6glitch5scene10ISceneNode12getAnimatorsEv
const SNodeList<ISceneNodeAnimator*>& ISceneNode::getAnimators() const {
    return animators;
}

// 0x59709c _ZNK6glitch5scene10ISceneNode18getBindedAnimatorsEv
const SNodeList<ISceneNodeAnimator*>& ISceneNode::getBindedAnimators() const {
    return bindedAnimators;
}

// 0x5971c8 _ZNK6glitch5scene10ISceneNode11getChildrenEv
const SChildList& ISceneNode::getChildren() const {
    return children;
}

// 0x59719c _ZN6glitch5scene10ISceneNode19setAutomaticCullingENS0_14E_CULLING_TYPEE
void ISceneNode::setAutomaticCulling(E_CULLING_TYPE culling) {
    automaticCulling = culling;
}

// 0x5971a4 _ZN6glitch5scene10ISceneNode16setIsDebugObjectEb
void ISceneNode::setIsDebugObject(bool debug) {
    if (debug) {
        flags |= ESNF_DEBUG_OBJECT;
    } else {
        flags &= ~static_cast<std::uint32_t>(ESNF_DEBUG_OBJECT);
    }
}

// 0x5971bc _ZNK6glitch5scene10ISceneNode13isDebugObjectEv
bool ISceneNode::isDebugObject() const {
    return (flags & ESNF_DEBUG_OBJECT) != 0;
}

// 0x596f6c _ZN6glitch5scene10ISceneNode20getSceneNodeFromTypeENS0_17E_SCENE_NODE_TYPEE
ISceneNode* ISceneNode::getSceneNodeFromType(E_SCENE_NODE_TYPE type) {
    if (getType() == type || type == ESNT_ANY) return this;
    for (ISceneNode* child : children) {
        if (ISceneNode* found = child->getSceneNodeFromType(type)) return found;
    }
    return nullptr;
}

// 0x598dd4 _ZN6glitch5scene10ISceneNode21getSceneNodesFromTypeENS0_17E_SCENE_NODE_TYPEERSt6vectorIPS1_NS_4core10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEE
void ISceneNode::getSceneNodesFromType(E_SCENE_NODE_TYPE type, core::svector<ISceneNode*>& out) {
    if (getType() == type || type == ESNT_ANY) {
        out.push_back(this);
    }
    for (ISceneNode* child : children) {
        child->getSceneNodesFromType(type, out);
    }
}

// 0x598480 _ZNK6glitch5scene10ISceneNode20getSceneNodeFromNameEPKc (const) and 0x5984f4 (non-const): same body.
const ISceneNode* ISceneNode::getSceneNodeFromName(const char* nodeName) const {
    return const_cast<ISceneNode*>(this)->getSceneNodeFromName(nodeName);
}
ISceneNode* ISceneNode::getSceneNodeFromName(const char* nodeName) {
    if (caseInsensitiveCompare(getName(), nodeName) == 0) return this;
    for (ISceneNode* child : children) {
        if (ISceneNode* found = child->getSceneNodeFromName(nodeName)) return found;
    }
    return nullptr;
}

// 0x598568 _ZNK6glitch5scene10ISceneNode17getSceneNodeFromUIDEPKc (const) and 0x5985e4 (non-const).
const ISceneNode* ISceneNode::getSceneNodeFromUID(const char* uid) const {
    return const_cast<ISceneNode*>(this)->getSceneNodeFromUID(uid);
}
ISceneNode* ISceneNode::getSceneNodeFromUID(const char* uid) {
    if (caseInsensitiveCompare(getUID(), uid) == 0) return this;
    for (ISceneNode* child : getChildren()) {
        if (ISceneNode* found = child->getSceneNodeFromUID(uid)) return found;
    }
    return nullptr;
}

// 0x598398 _ZNK6glitch5scene10ISceneNode22getSceneNodeFromScopeIDEPKc (const) and 0x59840c (non-const).
const ISceneNode* ISceneNode::getSceneNodeFromScopeID(const char* scopeId) const {
    return const_cast<ISceneNode*>(this)->getSceneNodeFromScopeID(scopeId);
}
ISceneNode* ISceneNode::getSceneNodeFromScopeID(const char* scopeId) {
    if (caseInsensitiveCompare(getScopeID(), scopeId) == 0) return this;
    for (ISceneNode* child : children) {
        if (ISceneNode* found = child->getSceneNodeFromScopeID(scopeId)) return found;
    }
    return nullptr;
}

// 0x597dcc _ZN6glitch5scene10ISceneNode12cloneMembersEPS1_
// Copies the name, both matrices, position, rotation, scale, id, the triangle selector (setTriangleSelector, vptr+0xb4),
// the culling mode and the flags; the scene manager is cleared. The children are cloned (vptr+0xc0) and added (vptr+0x5c),
// the animators cloned (vptr+0x18) and added (vptr+0x6c); every clone's extra reference is dropped.
void ISceneNode::cloneMembers(ISceneNode* other) {
    if (&name != &other->name) {
        name = other->name;
    }
    absoluteTransform = other->absoluteTransform;
    relativeTransform = other->relativeTransform;
    position = other->position;
    rotation = other->rotation;
    scale = other->scale;
    id = other->id;
    setTriangleSelector(other->triangleSelector);
    automaticCulling = other->automaticCulling;
    sceneManager = nullptr;
    flags = other->flags;
    for (ISceneNode* child : other->children) {
        ISceneNode* cloned = child->clone();
        addChild(cloned);
        if (cloned != nullptr) cloned->drop();
    }
    for (auto it = other->animators.begin(); it != other->animators.end(); ++it) {
        ISceneNodeAnimator* cloned = (*it)->createClone();
        if (cloned != nullptr) {
            addAnimator(cloned);
            cloned->drop();
        }
    }
}

// 0x598a2c _ZN6glitch5scene10ISceneNode7logTreeEii
// Prints one line per node, indented by the depth, down to maxDepth (0 means unlimited).
void ISceneNode::logTree(int depth, int maxDepth) {
    const bool atLimit = maxDepth != 0 && depth >= maxDepth;
    if (atLimit) return;
    char buffer[256];
    const int indent = std::min(std::max(depth, 0), 255);
    std::memset(buffer, ' ', static_cast<std::size_t>(indent));
    const std::uint32_t type = getType();
    std::snprintf(&buffer[indent], static_cast<std::size_t>(256 - indent), "uid=%s name=%s scope=%s type=%c%c%c%c", getUID(),
                  name.c_str(), getScopeID(), static_cast<char>(type & 0xff), static_cast<char>((type >> 8) & 0xff),
                  static_cast<char>((type >> 16) & 0xff), static_cast<char>((type >> 24) & 0xff));
    os::Printer::print("%s", buffer);
    for (ISceneNode* child : children) {
        child->logTree(depth + 1, maxDepth);
    }
}

}  // namespace glitch::scene
