// Slice 00 reconstruction: glitch::debugger::CTweakable, scene culling helpers,
// the synchronized animator blender, and the glitch::gui element/environment
// base functions. Types here are minimal stand-ins named after the originals.
// Field offsets are kept as comments; the layout is not ABI compatible with
// the original binary and only the recovered behaviour is meant to be kept.
#pragma once

#include <cstdint>
#include <map>
#include <string>
#include <vector>

#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/SViewFrustum.hpp"

namespace glitch::collada::recon_00 {

// ---------------------------------------------------------------------------
// glitch::debugger::CTweakable
// ---------------------------------------------------------------------------
class Tweakable;

class TweakableMapping {
public:
    // glitch::debugger::CTweakable::SMapping(E_ATTRIBUTE_TYPE, void*)
    // 0x32d088 _ZN6glitch8debugger10CTweakable8SMappingC1ENS_2io16E_ATTRIBUTE_TYPEEPv
    TweakableMapping() = default;
    TweakableMapping(int type, void* value);

    // 0x320294 _ZN6glitch8debugger10CTweakable8SMappingaSERKS2_
    TweakableMapping& operator=(const TweakableMapping& other);

    int type = 0;            // +0x00
    void* value = nullptr;   // +0x04
    std::string name;        // +0x08
    std::string text;        // +0x20
};

class Tweakable {
public:
    // 0x32cfc8 _ZN6glitch8debugger10CTweakableC2EPNS_7IDeviceE
    explicit Tweakable(void* device);
    // 0x32a088 / 0x404ab0 (D1 / D2 share one body)
    virtual ~Tweakable();

    // 0x31f420 _ZN6glitch8debugger10CTweakable10onSetValueERKSs (empty)
    virtual void onSetValue(const std::string& value);

    // 0x31f410 _ZNK6glitch8debugger10CTweakable15getInstanceNameEv
    int getInstanceName() const;
    // 0x31f418 _ZNK6glitch8debugger10CTweakable6getXMLEv
    // Original returns the address of the xml-name member (this+0x70).
    const std::string& getXML() const;

    // 0x32bb98 _ZN6glitch8debugger10CTweakable20registerVariableNameEPKc
    void registerVariableName(const char* name);
    // 0x32eeb8 _ZN6glitch8debugger10CTweakable16registerVariableEPKcRNS_5video6SColorE
    void registerVariable(const char* name, glitch::video::SColor& value);
    // 0x32ef4c _ZN6glitch8debugger10CTweakable16registerVariableEPKcRf
    void registerVariable(const char* name, float& value);
    // 0x32efe0 _ZN6glitch8debugger10CTweakable16registerVariableEPKcRi
    void registerVariable(const char* name, int& value);

    // 0x328994 _ZN6glitch8debugger10CTweakable11writeValuesEPNS_2io10IWriteFileE
    // Partial: XML writer is not part of this slice; writes nothing yet.
    void writeValues(void* writeFile);
    // 0x32b3b4 _ZN6glitch8debugger10CTweakable8setValueERNS_2io11CAttributesEi
    // Partial: the 10-way type switch depends on CAttributes getters; not mapped.
    void* setValue(void* attributes, int index);
    // 0x32b650 _ZN6glitch8debugger10CTweakable9loadGroupERNS_2io11CAttributesEb.clone.25
    // Partial: attribute-group recursion; the attribute walker is not mapped.
    int loadGroup(void* attributes, bool flag);
    // 0x32b6b8 _ZN6glitch8debugger10CTweakable7loadXMLEPKcb
    // Partial: file read and XML attribute reader are not mapped.
    void loadXML(const char* file, bool flag);

    // +0x04 original std::map<std::string, SMapping>
    std::map<std::string, TweakableMapping> mappings;
    // +0x1c original group name list (push_back target of registerVariableName)
    std::vector<std::string> names;
    // +0x54 root group name (assigned from the loaded XML)
    std::string rootGroup;
    // +0x68 instance name id (returned by getInstanceName)
    int instanceName = 0;
    // +0x6c device pointer (IDevice*)
    void* device = nullptr;
    // +0x70 xml file name (returned by getXML)
    std::string xmlName;
};

// glitch::ISharedObject<glitch::io::CFile>::drop() const
// 0x34f038 _ZNK6glitch13ISharedObjectINS_2io5CFileEE4dropEv
template <class T>
class ISharedObject {
public:
    void drop() const {
        if (refcount-- == 1) {
            delete static_cast<T*>(const_cast<ISharedObject*>(this));
        }
    }
    mutable std::int32_t refcount = 1;  // +0x00
};

// ---------------------------------------------------------------------------
// glitch::scene::SViewFrustum and culling helpers
// ---------------------------------------------------------------------------
// glitch::scene::SViewFrustum: the canonical view frustum (scene/SViewFrustum.hpp). The stand-in
// ViewFrustum / FrustumPlane are retired; the box and planes are the canonical members (plane3d Normal / D).

// glitch::collada::CSceneNodeAnimatorSynchronizedBlender / SynchronizedSet: canonical classes in
// collada/CSceneNodeAnimatorSynchronizedBlender.hpp and collada/CSceneNodeAnimatorSynchronizedSet.hpp.

// ---------------------------------------------------------------------------
// Small free-standing bodies
// ---------------------------------------------------------------------------

// glitch::scene::CBatchMeshExt<GameObject*>::saveSegmentExtraData(...) const
// 0x50cf04 _ZNK6glitch5scene13CBatchMeshExtIP10GameObjectE20saveSegmentExtraDataEPKvPNS_2io10IWriteFileENS_2os8E_ENDIANE
// Original is an empty body.
class BatchMeshExtExtraData {
public:
    void saveSegmentExtraData(const void* segment, void* writeFile, int endian) const;
};

// glitch::CIrrFactory: the canonical class in irr_factory.hpp.

}  // namespace glitch::collada::recon_00
