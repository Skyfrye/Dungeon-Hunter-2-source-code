// Free <global> helpers that act on glitch::scene::ISceneNode (batch g1-game-app-global-f216b6-19). They walk
// the scene graph and set the flags the game uses on its visual nodes. The node is the engine class, forward-
// declared here: glitch-scene-collada-gui owns its layout, and these helpers only pass the pointer on.
#pragma once

namespace glitch::scene {
class ISceneNode;
}  // namespace glitch::scene

void SetWireFrame(glitch::scene::ISceneNode* node, bool wireframe);             // 0x50a4c0 (empty in the original)
void SetLodBiasOnAllTextures(float bias);                                        // 0x50e394 (empty in the original)
int SetNodeToSelfIlluminated(glitch::scene::ISceneNode* node);                   // 0x50e398
int SetNodeVisibleRecur(glitch::scene::ISceneNode* node, bool visible);          // 0x50e41c
bool IsNodeMesh(glitch::scene::ISceneNode* node);                                // 0x50e514
