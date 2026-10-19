// Debug trace helpers of the <global> code that Application::_Update runs once when a debug switch is set. The bodies are
// in core-platform (w7_global_01.cpp, w7_global_02.cpp; skipped there).
#pragma once

namespace glitch::scene {
class ISceneNode;
}

int DBG_DisplayLoadLevelStats(const char* nextLevelName);  // 0x3ef9fc
namespace glitch::core { template <class T> struct vector3d; }
namespace glitch::video { struct SColor; }
int DBG_DisplayPointAsBox(const glitch::core::vector3d<float>& point, const glitch::video::SColor& color, int size);  // 0x340154
const char* DBG_GetLoadingStepName(int step);   // 0x3ef18c (table s_LoadingStepsNames; "unknown" for a negative step)
void DBG_TraceAllLoadedResfileInformation();   // 0x50e228
void DBG_TraceAllLoadedTextureInformation();   // 0x50e2b8
void DBG_TraceSceneNode(glitch::scene::ISceneNode* node, int depth, bool (*filter)(glitch::scene::ISceneNode*));       // 0x50e7c4
void DBG_TraceSceneNodePolyStats(glitch::scene::ISceneNode* node, int depth, bool (*filter)(glitch::scene::ISceneNode*));  // 0x51073c
