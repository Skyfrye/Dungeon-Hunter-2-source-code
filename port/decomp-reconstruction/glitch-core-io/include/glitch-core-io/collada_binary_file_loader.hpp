// glitch::scene::CColladaBinaryFileLoader: the canonical class (a glitch::scene::IMeshLoader) is declared in
// glitch-scene-collada-gui/scene/CColladaBinaryFileLoader.hpp, where its other members live. This header used to hold a copy
// with the constructor only (no base class); it forwards so that glitch-core-io/src/collada_binary_file_loader.cpp, which still
// defines the constructor (0x6b9310 C2 / 0x6b9360 C1), compiles against the one definition.
#pragma once

#include "glitch-scene-collada-gui/scene/CColladaBinaryFileLoader.hpp"
