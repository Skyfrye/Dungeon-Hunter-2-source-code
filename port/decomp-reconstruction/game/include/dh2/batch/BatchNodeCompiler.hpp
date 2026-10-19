// batch::BatchNodeCompiler: builds the batch scene node for a level's game objects. Compile hides the nobatch
// and decor nodes, creates the GOBatchSceneNode on first use and fills it from the objects that have a mesh.
// _MapMeshNode records the scene-node-to-object map that the segment callback reads. Free and Trim release
// the per-compile state. The class itself is not polymorphic. Its only vtable is the nested
// SGameObjectLinkedCallback, embedded at +0x04.
// Original 32-bit size 0x38 (56), from the operator new(56) site in Level::_LoadBatchInit (0x3f240c). That site writes
// the fields inline (no constructor symbol exists): m_compiled 0, the list and map empty, the callback vptr, m_batchNode null.
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x3f1a48, Free 0x3f1868, _MapMeshNode 0x3f5dcc,
// MakeNoBatchVisible 0x50cfa8, Trim 0x50dbbc, Compile 0x50dc84, callback 0x3ef180 / 0x3ef394 / 0x3efe58).
#pragma once

#include <cstdint>
#include <map>
#include <vector>

#include "glitch-video/compile_callbacks.hpp"

class GameObject;

namespace glitch {
namespace scene {
class CBatchMesh;
class CSceneManager;
struct SCompileInfo;
class ISceneNode;
}  // namespace scene
}  // namespace glitch

namespace batch {

class GOBatchSceneNode;

class BatchNodeCompiler {
public:
    // Segment callback for the batch mesh. It is embedded in BatchNodeCompiler at +0x04. The offsets on the members
    // below are relative to the callback, so the callback's +0x04 is the compiler's +0x08 and its +0x08 is the compiler's +0x0c.
    class SGameObjectLinkedCallback : public glitch::scene::ISegmentCompileCallback {
    public:
        // Complete dtor (slot 0x00, 0x3ef180) has an empty body. Deleting dtor (slot 0x04, 0x3ef394) stores the vptr and frees the object.
        ~SGameObjectLinkedCallback() override;
        // Looks up the current rendered node in the owner's m_nodeObjects and writes the GameObject* (or null)
        // into the segment. Then it sets the visible byte of that object. Slot 0x08: 0x3efe58.
        void operator()(glitch::scene::CBatchMesh* mesh, void* segmentData,
                        const glitch::scene::SCompileInfo& info) override;

        glitch::scene::CSceneManager* m_sceneManager;                   // +0x04 (BatchNodeCompiler +0x08), asked for the current rendered node
        BatchNodeCompiler* m_compiler;                                  // +0x08 (BatchNodeCompiler +0x0c), owner of m_nodeObjects
    };

    // Runs Free, erases m_nodeObjects, releases the m_gameObjects storage and resets the callback vptr. Non-virtual: the
    // class has no vtable of its own. 0x3f1a48.
    ~BatchNodeCompiler();

    // Drops the batch node reference, resets m_nodeObjects and the per-compile vector. 0x3f1868.
    void Free();
    // Records object for node in m_nodeObjects and recurses into the node's children. 0x3f5dcc.
    void _MapMeshNode(GameObject* object, glitch::scene::ISceneNode* node);
    // Sets the visibility of node and its children when the node name contains "nobatch". Returns true when the
    // node or a child matched. 0x50cfa8.
    bool MakeNoBatchVisible(glitch::scene::ISceneNode* node, bool visible);
    // Drops the m_gameObjects storage and the m_nodeObjects map. 0x50dbbc.
    void Trim();
    // Builds the batch node for the level and sets each object's batch state. quantize quantizes the batch mesh
    // components when the driver allows it. 0x50dc84.
    void Compile(bool quantize);

    // Original layout follows. Offsets are the original 32-bit ones; the host build may differ in size.
    bool m_compiled;                                                    // +0x00 set to 1 at the end of Compile
    SGameObjectLinkedCallback m_linkedCallback;                         // +0x04 segment callback (vptr, m_sceneManager, m_compiler)
    std::vector<GameObject*> m_gameObjects;                             // +0x10 begin, +0x14 end, +0x18 capacity; objects with a mesh
    std::map<const glitch::scene::ISceneNode*, GameObject*> m_nodeObjects;  // +0x1c header: color byte, root +0x20, leftmost +0x24, rightmost +0x28; +0x2c count
    uint8_t pad_30[4];                                                  // +0x30 not touched by the methods above
    GOBatchSceneNode* m_batchNode;                                      // +0x34 batch node, created by Compile on first use, dropped by Free
};

}  // namespace batch
