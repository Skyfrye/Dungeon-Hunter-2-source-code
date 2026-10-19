// Bodies of glitch::collada::CSceneNode (canonical class: collada/CSceneNode.hpp). This file replaces the CSceneNode accessors of
// src/collada_scene_accessors.cpp, src/tb_scene-collada-gui-glitch_collada_CSceneNode-0.cpp (stand-in computeBoundingBox bodies)
// and the stub_65cd1c getType of generated_stubs.hpp.
#include "glitch-scene-collada-gui/collada/CSceneNode.hpp"

namespace glitch::collada {

namespace {

// The child types whose boxes the collada nodes fold into their own: 'daem', 'daes', 'daeM' (the mesh-like nodes).
bool isMeshLikeType(scene::E_SCENE_NODE_TYPE type) {
    return type == scene::ESNT_DAE_MESH || type == scene::ESNT_DAE_SKINNED_MESH || type == scene::ESNT_DAE_MODULAR_SKINNED_MESH;
}

}  // namespace

// 0x65d150 _ZN6glitch7collada10CSceneNodeC1ERKNS0_16CColladaDatabaseEPNS0_5SNodeE (complete object)
// 0x65d2b4 _ZN6glitch7collada10CSceneNodeC2ERKNS0_16CColladaDatabaseEPNS0_5SNodeE (base object, takes the VTT)
// CEmptySceneNode(-1), the database copied (a use on the record), the uid word set to the empty string, the record stored; with a
// record the node takes its name (ISceneNode::setName), position, rotation and scale.
CSceneNode::CSceneNode(const CColladaDatabase& source, SNode* record) : CEmptySceneNode(-1) {
    copyDatabase(database, source);  // +0x14c / +0x150
    uid = "";                        // +0x148
    node = record;                   // +0x154
    if (record != nullptr) {
        setName(record->name);
        setPosition(core::vector3d<float>{record->translation[0], record->translation[1], record->translation[2]});
        setRotation(core::quaternion{record->rotation[0], record->rotation[1], record->rotation[2], record->rotation[3]});
        setScale(core::vector3d<float>{record->scale[0], record->scale[1], record->scale[2]});
    }
}

// 0x35c444 _ZN6glitch7collada10CSceneNodeD1Ev (0x60ce44 is a clone of it, 0x65af4c is the base-object form D2; D0 0x35c4e0 is skipped)
// Resets the vtables, destroys the CColladaDatabase at +0x14c (drops the record's use) and runs the CEmptySceneNode destructor.
CSceneNode::~CSceneNode() {
    dropDatabase(database);
}

// 0x65cd28 _ZNK6glitch7collada10CSceneNode6getUIDEv
// The record's uid, "" when the node has no record.
const char* CSceneNode::getUID() const {
    return node != nullptr ? node->id : "";
}

// 0x65cd4c _ZNK6glitch7collada10CSceneNode10getScopeIDEv
// The record's scope id, "" when the node has no record.
const char* CSceneNode::getScopeID() const {
    return node != nullptr ? node->scopeId : "";
}

// 0x65cd70 _ZNK6glitch7collada10CSceneNode15getUserPropertyEv
// The record's user-property block, null when the node has no record.
const scene::SUserProperty* CSceneNode::getUserProperty() const {
    return node != nullptr ? node->userProperty : nullptr;
}

// 0x65cd80 _ZNK6glitch7collada10CSceneNode18getUserPropertyStrEv
// The first word of the user-property block (its text), null when there is no record or no block.
const char* CSceneNode::getUserPropertyStr() const {
    if (node != nullptr && node->userProperty != nullptr) {
        return node->userProperty->text;
    }
    return nullptr;
}

// 0x65cd1c _ZNK6glitch7collada10CSceneNode7getTypeEv
scene::E_SCENE_NODE_TYPE CSceneNode::getType() const {
    return scene::ESNT_DAEN;
}

// 0x65cc2c _ZN6glitch7collada10CSceneNode14resetTransformEb
// With a record: position, rotation and scale are set back to the record's values (virtual calls, K 0xa4, 0x9c, 0x94). When
// `recurse` is set, every child gets resetTransform(true) (K 0xe0).
void CSceneNode::resetTransform(bool recurse) {
    if (node != nullptr) {
        setPosition(core::vector3d<float>{node->translation[0], node->translation[1], node->translation[2]});
        setRotation(core::quaternion{node->rotation[0], node->rotation[1], node->rotation[2], node->rotation[3]});
        setScale(core::vector3d<float>{node->scale[0], node->scale[1], node->scale[2]});
    }
    if (recurse) {
        for (scene::ISceneNode* child : getChildren()) {
            child->resetTransform(true);
        }
    }
}

// 0x65cda8 _ZN6glitch7collada10CSceneNode18computeBoundingBoxEv
// The union of the children's boxes in this node's space. A child counts when its type is 'daem', 'daes', 'daeM' or 'daen'; a 'daen'
// child first recomputes its own box. The first contributing child's box (moved by its relative transformation, transformBoxEx)
// replaces the box at +0x130; later ones are moved the same way and added (addInternalBox). The original returns the last call's
// result in r0, which no caller reads.
void CSceneNode::computeBoundingBox() {
    bool haveBox = false;
    for (scene::ISceneNode* child : getChildren()) {
        const scene::E_SCENE_NODE_TYPE type = child->getType();
        if (!isMeshLikeType(type) && type != scene::ESNT_DAEN) {
            continue;
        }
        if (type == scene::ESNT_DAEN) {
            static_cast<CSceneNode*>(child)->computeBoundingBox();  // K 0xf4
        }
        if (haveBox) {
            core::aabbox3d<float> childBox = child->getBoundingBox();
            child->getRelativeTransformation().transformBoxEx(childBox);
            boundingBox.addInternalBox(childBox);
        } else {
            boundingBox = child->getBoundingBox();
            haveBox = true;
            child->getRelativeTransformation().transformBoxEx(boundingBox);
        }
    }
}

// 0x65cf8c _ZNK6glitch7collada10CSceneNode18computeBoundingBoxERNS_4core8aabbox3dIfEE
// The union of the children's transformed boxes in `box`. 'daem', 'daes' and 'daeM' children contribute getTransformedBoundingBox();
// a 'daen' child contributes its own computeBoundingBox(local) over a unit box when that returns true. The first contribution
// replaces `box`, later ones are added. Returns true when anything contributed.
bool CSceneNode::computeBoundingBox(core::aabbox3d<float>& box) const {
    bool haveBox = false;
    for (scene::ISceneNode* child : getChildren()) {
        const scene::E_SCENE_NODE_TYPE type = child->getType();
        if (isMeshLikeType(type)) {
            const core::aabbox3d<float>& childBox = child->getTransformedBoundingBox();  // K 0x34
            if (haveBox) {
                box.addInternalBox(childBox);
            } else {
                box = childBox;
                haveBox = true;
            }
        } else if (type == scene::ESNT_DAEN) {
            core::aabbox3d<float> local{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};
            if (static_cast<const CSceneNode*>(child)->computeBoundingBox(local)) {
                if (haveBox) {
                    box.addInternalBox(local);
                } else {
                    box = local;
                    haveBox = true;
                }
            }
        }
    }
    return haveBox;
}

}  // namespace glitch::collada
