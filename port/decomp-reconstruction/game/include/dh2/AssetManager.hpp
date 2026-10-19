// AssetManager: the process-wide cache of loaded textures and scene nodes, keyed by name. Reached
// through the static GetAssetManager() singleton. The singleton is built inline on its first call,
// and its destructor is registered with atexit. The class has no vtable.
// Original 32-bit size not recovered (the fields end at +0x4c).
// Reconstructed from libDungeonHunter2.so pseudocode (GetAssetManager 0x50a564, dtor 0x50aa4c).
//
// Layout notes: each std::map member is an SGI-style red-black tree header of 0x14 bytes
// (+0x00 color, +0x04 root, +0x08 leftmost, +0x0c rightmost, +0x10 node count). The header of the
// SceneNode map sits at +0x00, the Texture map header at +0x18 and the ISceneNode map header at +0x38.
// The singleton's self-pointers (leftmost and rightmost of the SceneNode map) point back at +0x00.
#pragma once

#include <cstdint>
#include <map>
#include <string>

#include "glitch-core-io/boost/intrusive_ptr.hpp"

namespace glitch {
class IReferenceCounted;
namespace scene {
class ISceneNode;
}  // namespace scene
namespace video {
class ITexture;
}  // namespace video
}  // namespace glitch

class AssetManager {
public:
    // Texture map value. Its vtable has two destructor slots. Built by std::map::operator[] in loadTexture.
    class Texture {
    public:
        virtual ~Texture();                                             // slot 0: 0x50a70c (D1); slot 1: 0x50a74c (D0)

        // Texture occupies +0x00 .. +0x0b. Size not recovered.
        int32_t unk_04;                                                 // +0x04 flags level: loadTexture keeps the lowest flags it is given here; clearTexture drops the entry when its flags are at most this
        glitch::IReferenceCounted* m_texture;                           // +0x08 texture object, released with drop()
    };

    // SceneNode map value. Its vtable has two destructor slots.
    class SceneNode {
    public:
        virtual ~SceneNode();                                           // slot 0: 0x50a474 (D1); slot 1: 0x50a794 (D0)

        // SceneNode occupies +0x00 .. +0x0b. Size not recovered.
        int32_t unk_04;                                                 // +0x04 flags level read by clearSceneNode, which drops the entry when the argument is at most this
        glitch::scene::ISceneNode* m_sceneNode;                         // +0x08 scene node object; released through its IReferenceCounted base
    };

    ~AssetManager();                                                    // 0x50aa4c (complete dtor, registered with atexit)

    static AssetManager* GetAssetManager();                             // 0x50a564, singleton; s_wireFrame is file-scope, not a member

    void ToggleWireFrame();                                             // 0x50a4c4
    glitch::scene::ISceneNode* loadSceneNode(const char* first, const char* second, bool flag, int option);  // 0x50a504: returns SceneManager::LoadScene's node (null on failure)
    void preloadSceneNode(const char* first, const char* second, bool flag, int option);  // 0x50a540
    int getFirstAsset(std::string& name);                               // 0x50b020
    int getNextAsset(std::string& name);                                // 0x50addc

    boost::intrusive_ptr<glitch::video::ITexture> loadTexture(const char* name, int flags);  // 0x50bdb4
    void preloadTexture(const char* name, int flags);                   // 0x50bef0
    void dropTexture(const char* name);                                 // 0x50bf28
    void dropTexture(boost::intrusive_ptr<glitch::video::ITexture> texture);                // 0x50c124
    void clearTexture(int flags);                                       // 0x50c02c

    void dropSceneNode(const std::string& name);                        // 0x50c8a0
    void dropSceneNode(const char* sceneName, const char* nodeName);    // 0x50ca2c, joins the two names with '#'
    void clearSceneNode(int flags);                                     // 0x50c918
    void clear(int flags);                                              // 0x50ca0c, clearSceneNode then clearTexture

    // Map of named SceneNode values. Header at +0x00.
    std::map<std::string, SceneNode> m_sceneNodes;                      // +0x00 (header 0x14 bytes)
    uint8_t pad_14[4];                                                  // +0x14

    // Map of named Texture values. Header at +0x18.
    std::map<std::string, Texture> m_textures;                          // +0x18 (header 0x14 bytes)
    uint8_t pad_2c[4];                                                  // +0x2c

    // Walk position used by getFirstAsset and getNextAsset.
    std::map<std::string, Texture>::iterator m_textureCursor;           // +0x30 position in m_textures
    std::map<std::string, SceneNode>::iterator m_sceneNodeCursor;       // +0x34 position in m_sceneNodes

    // Map of named ISceneNode pointers. Header at +0x38. Its writer is not in this batch.
    std::map<std::string, glitch::scene::ISceneNode*> m_loadedScenes;   // +0x38 (header 0x14 bytes)
};
