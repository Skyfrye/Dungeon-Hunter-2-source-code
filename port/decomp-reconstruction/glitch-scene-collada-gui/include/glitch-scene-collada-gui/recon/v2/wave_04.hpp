// Wave 04 reconstruction (partial-row rerun). Functions take the pseudocode
// `this` as their first argument. Namespace recon_v2_04 avoids the old recon_NN
// files. Layouts come only from layouts/collada_db.hpp (see brief).
#ifndef GLITCH_SCENE_COLLADA_GUI_RECON_V2_WAVE_04_HPP
#define GLITCH_SCENE_COLLADA_GUI_RECON_V2_WAVE_04_HPP

#include "glitch-scene-collada-gui/layouts/collada_db.hpp"

namespace glitch::collada::recon_v2_04 {

// Stand-ins for glitch::collada::CResFileManager::load. The class layout does not
// declare the method, and no allowed header defines it. The test file supplies
// definitions. Arguments follow the pseudocode call sites.
CResFile* resFileManagerLoadName(CResFileManager* self, const char* name, int a3, int a4);
CResFile* resFileManagerLoadFile(CResFileManager* self, glitch::io::IReadFile* file, int a3, int a4, bool flag);

// (0x60b918 CAnimationStreamingManager::release is canonical in src/collada/CAnimationStreaming.cpp.)

// 0x60f25c and 0x60f2b0 are two identical overloads of the same constructor body.
// The name is the one from the pseudocode. Each one is a separate function here.
CColladaDatabase* ctor_0x60f25c(CColladaDatabase* self, const char* a2, CColladaFactory* a3);
CColladaDatabase* ctor_0x60f2b0(CColladaDatabase* self, const char* a2, CColladaFactory* a3);
CColladaDatabase* ctor_0x60f304(CColladaDatabase* self, glitch::io::IReadFile* a2, bool a3, CColladaFactory* a4);
CColladaDatabase* ctor_0x60f364(CColladaDatabase* self, glitch::io::IReadFile* a2, bool a3, CColladaFactory* a4);
CColladaDatabase* ctor_0x60f3c4(CColladaDatabase* self, glitch::io::IReadFile* a2, CColladaFactory* a3);
CColladaDatabase* ctor_0x60f42c(CColladaDatabase* self, glitch::io::IReadFile* a2, CColladaFactory* a3);

}  // namespace glitch::collada::recon_v2_04

#endif  // GLITCH_SCENE_COLLADA_GUI_RECON_V2_WAVE_04_HPP
