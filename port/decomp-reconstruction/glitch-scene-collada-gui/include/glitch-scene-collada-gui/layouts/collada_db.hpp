// Layouts of glitch::collada::CColladaDatabase and the COLLADA resource, factory, file-manager and streaming classes: forwarding
// header. The records (SAnimation .. SEmitter), the table holder (SDatabaseTables), CResFile, CColladaDatabase, CResFactory,
// CResFileReader, CResFileManager and CAnimationStreamingManager are defined once in collada/CColladaDatabase.hpp (engine
// unification wave, u1-scene); this header only keeps the include path and the guard of the old layout header.
//
// The container words of SDatabaseTables are vectors in the canonical header (the host model), not count/base pairs: recon
// sources that read `tables->segments->count` or `animationCount` use the vector members instead.
#ifndef GLITCH_SCENE_COLLADA_GUI_LAYOUTS_COLLADA_DB_HPP
#define GLITCH_SCENE_COLLADA_GUI_LAYOUTS_COLLADA_DB_HPP

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"

namespace glitch::collada {
class CAnimationBlock;
class CColladaFactory;
}  // namespace glitch::collada

#endif  // GLITCH_SCENE_COLLADA_GUI_LAYOUTS_COLLADA_DB_HPP
