// glitch::scene::CSceneManager: the scene manager (there is no ISceneManager class in the binary: no symbol, no vtable,
// and CSceneManager's own vtable carries every slot). Canonical header of the engine unification wave (u1-scene), reworked by
// the scene owner pass (R3b). It replaces scene_nodes.hpp (CSceneManager with a handful of members), layouts/scene.hpp (a
// flags-only struct), recon/slice_06.hpp (recon_06::SceneManager) and recon/slice_31.hpp (recon_31::CSceneManager, nested node
// entries). The game class SceneManager (game/include/dh2/SceneManager.hpp) derives from this one.
//
// Layout (original 32-bit offsets; constructor 0x58d908 / 0x58ddd0, destructor 0x58eb70 / 0x58ef1c; the object is 0x294 bytes):
//   +0x00 vptr (glitch::io::IAttributeExchangingObject, the primary base)
//   +0x04 the root node (CSceneManagerRootNode, created by the constructor)
//   +0x08 child count, +0x0c / +0x10 child list sentinel: the root node is linked here through its own sibling link
//   +0x14 video driver (a reference is held), +0x18 the same pointer again (the destructor drops this one), +0x1c CBatchDriver
//         (new 0x264 bytes, created by the constructor from the device's screen size)
//   +0x20 file system (intrusive pointer), +0x24 GUI environment (held), +0x28 cursor control (held)
//   +0x2c CSceneCollisionManager (new 0x1c bytes)
//   +0x30 .. +0x8f render lists, 12 bytes each (begin, end, capacity): shadow receiver nodes (+0x30, pass 7), camera nodes (+0x3c,
//         pass 0), light nodes (+0x48, pass 1), shadow volume nodes (+0x54, pass 5), shadow mesh nodes (+0x60, pass 6), pre-solid
//         nodes (+0x6c, pass 2), default entries (+0x78, passes 3, 4 and 8), transparent entries (+0x84, passes 3 and 8)
//   +0x90 shadow receiver targets (vector of intrusive pointers)
//   +0x9c .. +0xa4 the node being rendered (node, user data, sort order), +0xa8 .. +0xb0 the one after it
//   +0xb4 external mesh loaders, +0xc0 deletion queue, +0xcc scene node factories, +0xd8 animator factories (vectors)
//   +0xe4 active camera (a reference is held), +0xe8 camera position (setupCamera)
//   +0xf4 shadow colours (4 words), +0x104 ambient light (4 floats), +0x114 CAttributes (embedded, 92 bytes)
//   +0x170 mesh cache (a use is held), +0x174 render pass (starts at 9), +0x178 / +0x1c0 / +0x208 three wide strings (72 bytes
//         each): the scene file element names "i" (root), "n" (node) and the attribute name "t" (type)
//   +0x250 culling enabled byte, +0x254 time, +0x258 / +0x264 two vectors the destructor frees (nothing else touches them)
//   +0x270 / +0x27c the node lists collectAllNodes fills (render, animated)
//   +0x288 hierarchy-changed byte, +0x289 visibility-changed byte, +0x28a batch-compile byte
//   +0x28c glitch::IReferenceCounted virtual base (vptr, then the count at +0x290)
//
// Slots (vptr+K; tools/decomp_vtable.py prints K + 0x0c for this class because a virtual-base offset heads the vtable):
// the order of the virtual declarations below is the slot order.
//
// Port notes: pointers are host width (TRACK-B decision 2). The glitch std::vector (SAllocator) is std::vector. The render
// lists are std::vector as well; the original keeps a sentinel entry at the end of a list while it is being rendered, so do
// the port's lists (renderList appends it and removes it again).
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/core/allocator.hpp"  // core::svector / stringc (STLPORT-DECISION.md section 6)

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-core-io/io/attributes.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-scene-collada-gui/scene/SceneFactories.hpp"
#include "glitch-scene-collada-gui/scene/scene_types.hpp"

namespace glitch::video {
class CBatchDriver;
}

namespace glitch::scene {

class CSceneCollisionManager;

class CSceneManager : public io::IAttributeExchangingObject, public virtual glitch::IReferenceCounted {
public:
    // Entries of the render lists (registerNodeForRendering). Sizes in the original: 8, 8, 0x10, 0x10, 0x10 and 0x14 bytes.
    // The first word of every entry is the node, the second the user data the caller passed.
    struct SUnsortedNodeEntry {
        ISceneNode* node = nullptr;   // +0x00
        void* userData = nullptr;     // +0x04
    };
    // Sorted by the user data, ascending, as unsigned words (the heapsort instance 0x3510f0 / 0x35104c compares +0x04).
    struct SRenderDataSortNodeEntry {
        ISceneNode* node = nullptr;   // +0x00
        void* userData = nullptr;     // +0x04
        bool operator<(const SRenderDataSortNodeEntry& other) const {
            return reinterpret_cast<std::uintptr_t>(userData) < reinterpret_cast<std::uintptr_t>(other.userData);
        }
    };
    struct SDefaultNodeEntry {
        // 0x350c98
        SDefaultNodeEntry(ISceneNode* node, boost::intrusive_ptr<video::CMaterial> material, void* userData,
                          int sortOrder);
        // 0x3539e8: larger sort order first, then the material hash, then the vertex count of the node.
        bool operator<(const SDefaultNodeEntry& other) const;

        ISceneNode* node = nullptr;                               // +0x00
        void* userData = nullptr;                                 // +0x04
        boost::intrusive_ptr<video::CMaterial> material;          // +0x08
        int sortOrder = 0;                                        // +0x0c
    };
    struct SDistanceNodeEntry {
        // 0x350cf4
        SDistanceNodeEntry(ISceneNode* node, const core::vector3d<float>& position, void* userData);
        SDistanceNodeEntry() = default;
        // The heapsort instance 0x350f00 / 0x350fc0 compares the distance (+0x08) as doubles, ascending.
        bool operator<(const SDistanceNodeEntry& other) const { return distance < other.distance; }

        ISceneNode* node = nullptr;   // +0x00
        void* userData = nullptr;     // +0x04
        double distance = 0.0;        // +0x08 squared distance minus half the squared box extent (stored as a double)
    };
    struct STransparentNodeEntry {
        // 0x354e8c
        STransparentNodeEntry(ISceneNode* node, const core::vector3d<float>& position,
                              boost::intrusive_ptr<video::CMaterial> material, void* userData,
                              const core::vector3d<float>* transformed, int sortOrder);
        STransparentNodeEntry() = default;
        // 0x58d710
        ~STransparentNodeEntry();
        // 0x3538ac: larger sort order first, then the farthest first, then the material, then the vertex count.
        bool operator<(const STransparentNodeEntry& other) const;

        ISceneNode* node = nullptr;                               // +0x00
        void* userData = nullptr;                                 // +0x04
        boost::intrusive_ptr<video::CMaterial> material;          // +0x08
        int sortOrder = 0;                                        // +0x0c
        float distance = 0.0f;                                    // +0x10
    };

    // 0x58d908 (C1, complete object) and 0x58ddd0 (C2, base object): one C++ constructor. The driver is optional here (the
    // original dereferences it): without one nothing of the driver, the batch driver and the stencil setup is touched.
    CSceneManager(video::IVideoDriver* driver, const boost::intrusive_ptr<io::IFileSystem>& fileSystem,
                  gui::ICursorControl* cursorControl, IMeshCache* meshCache, gui::IGUIEnvironment* guiEnvironment);

    // K 0x00 / 0x04: 0x588fe8 and 0x58bbc4.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    // K 0x08 / 0x0c: 0x58eb70 (D1), 0x58ef1c (D2), 0x58ef00 (D0, skipped).
    ~CSceneManager() override;

    // K 0x10 .. 0x20: searches of the node tree below `start` (the root when null).
    virtual ISceneNode* getSceneNodeFromId(int id, ISceneNode* start);                                  // 0x589208
    virtual ISceneNode* getSceneNodeFromUID(const char* uid, ISceneNode* start);                        // 0x589d48
    virtual ISceneNode* getSceneNodeFromName(const char* name, ISceneNode* start);                      // 0x589d58
    virtual ISceneNode* getSceneNodeFromType(E_SCENE_NODE_TYPE type, ISceneNode* start);               // 0x589298
    virtual void getSceneNodesFromType(E_SCENE_NODE_TYPE type, core::svector<ISceneNode*>& out,
                                       ISceneNode* start);                                              // 0x58c3cc
    // K 0x24, 0x58f348: files the node into the list for `pass`; false when it is not registered.
    virtual bool registerNodeForRendering(ISceneNode* node, const boost::intrusive_ptr<video::CMaterial>& material,
                                          void* userData, E_SCENE_NODE_RENDER_PASS pass,
                                          const core::vector3d<float>* position, int sortOrder);
    // K 0x28 .. 0x34: registration of a node tree and of a node vector, for rendering and for compiling.
    virtual void registerSceneNodes(ISceneNode* node);                                                  // 0x58b88c
    virtual void registerSceneNodes(const core::svector<ISceneNode*>& nodes);                             // 0x589128
    virtual void registerSceneNodesCompile(ISceneNode* node);                                           // 0x589fa4
    virtual void registerSceneNodesCompile(const core::svector<ISceneNode*>& nodes);                      // 0x589168
    // K 0x38 / 0x3c, 0x58b728 and 0x58b7f4: the frame (drawInit, collect, setupCamera, register, shadows, renderLists).
    virtual void drawAll(const core::svector<ISceneNode*>& nodes);
    virtual void drawAll(ISceneNode* node);
    // K 0x40 .. 0x4c.
    virtual void drawInit(video::IVideoDriver* driver);                                                 // 0x589e7c
    virtual void setupCamera();                                                                         // 0x589e18
    virtual void renderLists(video::IVideoDriver* driver);                                              // 0x590660
    virtual void drawShadowReceivers();                                                                 // 0x58b0a8
    // K 0x50 .. 0x5c: the four compile overloads (node vector or node tree; segment size as a vector3d or an unsigned).
    virtual CBatchSceneNode* compile(const core::svector<ISceneNode*>& nodes, CBatchSceneNode* batch, bool flag,
                                     ISegmentCompileCallback* compileCallback,
                                     ISplitSegmentChoiceCallback* choiceCallback,
                                     core::vector3d<float> segmentSize);                                // 0x58ff10
    virtual CBatchSceneNode* compile(const core::svector<ISceneNode*>& nodes, CBatchSceneNode* batch, bool flag,
                                     ISegmentCompileCallback* compileCallback,
                                     ISplitSegmentChoiceCallback* choiceCallback,
                                     std::uint32_t maxIndexCount);                                      // 0x58fee0
    virtual CBatchSceneNode* compile(ISceneNode* node, CBatchSceneNode* batch, bool flag,
                                     ISegmentCompileCallback* compileCallback,
                                     ISplitSegmentChoiceCallback* choiceCallback,
                                     core::vector3d<float> segmentSize);                                // 0x58fccc
    virtual CBatchSceneNode* compile(ISceneNode* node, CBatchSceneNode* batch, bool flag,
                                     ISegmentCompileCallback* compileCallback,
                                     ISplitSegmentChoiceCallback* choiceCallback,
                                     std::uint32_t maxIndexCount);                                      // 0x58fc9c
    // K 0x60 .. 0x84.
    virtual void update(float elapsed, bool updateAnimators);                                           // 0x58b9f0
    virtual bool postEventFromUser(const glitch::SEvent& event);                                        // 0x589328
    virtual void clear();                                                                               // 0x589888
    virtual ISceneNode* addSceneNode(const char* typeName, ISceneNode* parent);                         // 0x58942c
    virtual CSceneManager* createNewSceneManager(bool copyRoot);                                        // 0x58dd50
    virtual bool saveScene(const char* fileName, ISceneUserDataSerializer* userData);                   // 0x589364
    virtual bool saveScene(io::IWriteFile* file, ISceneUserDataSerializer* userData);                   // 0x58d36c
    virtual bool loadScene(const char* fileName, ISceneUserDataSerializer* userData);                   // 0x589b84
    virtual bool loadScene(io::IReadFile* file, ISceneUserDataSerializer* userData);                    // 0x58e768
    virtual IMeshWriter* createMeshWriter(EMESH_WRITER_TYPE type);                                      // 0x589558 (returns null)
    // K 0x88: the vtable entry is the imported __cxa_pure_virtual in the binary (a null word in the image), and the game's
    // SceneManager implements it (listing +0x94). createNewSceneManager (0x58dd50) still constructs a CSceneManager itself, so
    // the port keeps the class concrete: calling this on a plain CSceneManager ends the program, as the pure call does there.
    // The parameter type is not recoverable from CSceneManager itself; the game class passes its SkinnedMeshSceneNodeEx.
    virtual void registerSkinnedMesh(void* skinnedMeshNode);

    // Non-virtual members (direct calls in the original).
    void notifyVisibilityChanged();                                                  // 0x5890a8
    void notifyHierarchyChanged();                                                   // 0x5890b4 (also raises the visibility flag)
    void setActiveCamera(ICameraSceneNode* camera);                                  // 0x5890c0
    void setShadowColor(video::SColor color);                                        // 0x5891ac (all four slots)
    E_SCENE_NODE_RENDER_PASS setSceneNodeRenderPass(E_SCENE_NODE_RENDER_PASS pass);  // 0x589354 (returns the previous pass)
    const char* getSceneNodeTypeName(E_SCENE_NODE_TYPE type) const;                  // 0x5893c0
    const char* getAnimatorTypeName(E_SCENE_NODE_ANIMATOR_TYPE type) const;         // 0x5894a4
    void setAmbientLight(const video::SColorf& color);                               // 0x589508
    // 0x589518 and 0x589538: the node being rendered / the one after it (as the node word the original returns; a host
    // pointer here, so the type is pointer-sized), with its user data and its sort order through the two out parameters.
    std::uintptr_t getCurrentRenderedNode(void** userData, std::int32_t* sortOrder) const;
    std::uintptr_t getNextRenderedNode(void** userData, std::int32_t* sortOrder) const;
    void removeShadowReceiverTarget(boost::intrusive_ptr<video::ITexture> texture);  // 0x589754
    void removeShadowReceiverTarget(boost::intrusive_ptr<IShadowReceiverTarget> target);  // 0x5897d4
    void addShadowReceiverTarget(boost::intrusive_ptr<IShadowReceiverTarget> target);     // 0x58a7f0
    bool isCulled(const ISceneNode* node) const;                                     // 0x58ab28
    bool isCulled(const core::aabbox3d<float>& box, E_CULLING_TYPE culling) const;   // 0x58ca64
    void registerSceneNodeFactory(ISceneNodeFactory* factory);                       // 0x58ae20
    void registerSceneNodeAnimatorFactory(ISceneNodeAnimatorFactory* factory);       // 0x58d758
    void addExternalMeshLoader(IMeshLoader* loader);                                 // 0x58d8ac
    void clearDeletionList();                                                        // 0x58b350
    void addToDeletionQueue(ISceneNode* node);                                       // 0x58b4e0
    void collectAllNodes();                                                          // 0x58b7ac
    void collectAllNodes(ISceneNode* node);                                          // 0x58b558
    void collectAllNodes(const core::svector<ISceneNode*>& nodes);                     // 0x58b6c8
    boost::intrusive_ptr<IAnimatedMesh> getMesh(io::IReadFile* file);                // 0x58bdb0
    boost::intrusive_ptr<IAnimatedMesh> getMesh(const char* fileName);               // 0x58e824
    void readUserData(io::IXMLReader* reader, ISceneNode* node, ISceneUserDataSerializer* userData);  // 0x58c4a4
    void readAnimators(io::IXMLReader* reader, ISceneNode* node);                    // 0x58c644
    void readMaterials(io::IXMLReader* reader, ISceneNode* node);                    // 0x58c8dc
    void readSceneNode(io::IXMLReader* reader, ISceneNode* parent, ISceneUserDataSerializer* userData);  // 0x58e1e0 (no answer in the original)
    void writeSceneNode(io::IXMLWriter* writer, const ISceneNode* node, ISceneUserDataSerializer* userData);    // 0x58cdd4
    CBatchSceneNode* compileInternal(const core::svector<ISceneNode*>& nodes, CBatchSceneNode* batch, bool flag,
                                     ISegmentCompileCallback* compileCallback,
                                     ISplitSegmentChoiceCallback* choiceCallback);                       // 0x58fd10
    CBatchSceneNode* compileInternal(ISceneNode* node, CBatchSceneNode* batch, bool flag,
                                     ISegmentCompileCallback* compileCallback,
                                     ISplitSegmentChoiceCallback* choiceCallback);                       // 0x58facc

    // Draws one render list: sets the render pass, appends a sentinel entry, calls ISceneNode::render(userData) on every entry
    // in turn while the current / next node words track the entry and its successor, then empties the list (`clearList`) or
    // removes the sentinel only. With `cull`, entries whose node isCulled are skipped. 0x58aee4 (SUnsortedNodeEntry); the
    // SRenderDataSortNodeEntry instance exists in the binary only as the clones 0x353c7c and 0x58acac (never culls); 0x353f50 is
    // the SUnsortedNodeEntry clone with the cull test removed.
    template <typename Entry>
    void renderList(E_SCENE_NODE_RENDER_PASS pass, core::svector<Entry>& list, bool clearList, bool cull);

    // Members, in offset order. The base class occupies +0x00 (its vptr).
    ISceneNode* rootNode = nullptr;                          // +0x04
    SChildList rootChildren;                                 // +0x08 count, +0x0c sentinel
    video::IVideoDriver* driver = nullptr;                   // +0x14 (a reference is held)
    video::IVideoDriver* driverCopy = nullptr;               // +0x18 (the destructor drops this word)
    video::CBatchDriver* batchDriver = nullptr;              // +0x1c
    boost::intrusive_ptr<io::IFileSystem> fileSystem;        // +0x20
    gui::IGUIEnvironment* guiEnvironment = nullptr;          // +0x24 (held)
    gui::ICursorControl* cursorControl = nullptr;            // +0x28 (held)
    CSceneCollisionManager* collisionManager = nullptr;      // +0x2c
    core::svector<SUnsortedNodeEntry> shadowReceiverNodes;     // +0x30 pass 7 (drawShadowReceivers renders it)
    core::svector<SUnsortedNodeEntry> cameraNodes;             // +0x3c pass 0 (duplicates are refused)
    core::svector<SDistanceNodeEntry> lightNodes;              // +0x48 pass 1
    core::svector<SRenderDataSortNodeEntry> shadowVolumeNodes;  // +0x54 pass 5
    core::svector<SRenderDataSortNodeEntry> shadowMeshNodes;   // +0x60 pass 6
    core::svector<SUnsortedNodeEntry> preSolidNodes;           // +0x6c pass 2
    core::svector<SDefaultNodeEntry> defaultNodes;             // +0x78 passes 3, 4 and 8 (while compiling)
    core::svector<STransparentNodeEntry> transparentNodes;     // +0x84 passes 3 and 8
    core::svector<boost::intrusive_ptr<IShadowReceiverTarget>> shadowReceiverTargets;  // +0x90
    ISceneNode* currentNode = nullptr;                       // +0x9c (returned by getCurrentRenderedNode)
    void* currentUserData = nullptr;                         // +0xa0
    std::int32_t currentSortOrder = 0;                       // +0xa4
    ISceneNode* nextNode = nullptr;                          // +0xa8 (returned by getNextRenderedNode)
    void* nextUserData = nullptr;                            // +0xac
    std::int32_t nextSortOrder = 0;                          // +0xb0
    core::svector<IMeshLoader*> externalMeshLoaders;           // +0xb4
    core::svector<ISceneNode*> deletionQueue;                  // +0xc0
    core::svector<ISceneNodeFactory*> sceneNodeFactories;      // +0xcc
    core::svector<ISceneNodeAnimatorFactory*> sceneNodeAnimatorFactories;  // +0xd8
    ICameraSceneNode* activeCamera = nullptr;                // +0xe4 (a reference is held)
    core::vector3d<float> cameraPosition;                    // +0xe8 (setupCamera)
    video::SColor shadowColors[4];                           // +0xf4 .. +0x103
    video::SColorf ambientLight;                             // +0x104 .. +0x113
    io::CAttributes attributes{nullptr};                     // +0x114 embedded glitch::io::CAttributes (92 bytes; the constructor passes a null driver)
    IMeshCache* meshCache = nullptr;                         // +0x170 (a use is held)
    E_SCENE_NODE_RENDER_PASS renderPass = ESNRP_NONE;        // +0x174
    std::wstring rootElementName{L"i"};                      // +0x178 the scene file's root element
    std::wstring nodeElementName{L"n"};                      // +0x1c0 a node element
    std::wstring typeAttributeName{L"t"};                    // +0x208 the node element's type attribute
    bool cullingEnabled = true;                              // +0x250 (isCulled returns false when clear)
    float time = 0.0f;                                       // +0x254
    core::svector<void*> unusedListA;                          // +0x258 (freed by the destructor, never filled by the engine)
    core::svector<void*> unusedListB;                          // +0x264 (same)
    core::svector<ISceneNode*> renderNodes;                    // +0x270 begin, +0x274 end, +0x278 capacity (collectAllNodes)
    core::svector<ISceneNode*> animatedNodes;                  // +0x27c begin, +0x280 end, +0x284 capacity (nodes with animators)
    bool hierarchyChanged = true;                            // +0x288
    bool visibilityChanged = true;                           // +0x289
    bool batchCompiling = false;                             // +0x28a set while compileInternal runs: transparent passes use the default list
};

}  // namespace glitch::scene
