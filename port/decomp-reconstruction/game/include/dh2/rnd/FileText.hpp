// rnd::ReadFileText: reads a whole file through the device file system (the original's inline sequence in RandomGenerator::GetFiles,
// LoadRuleFile and Tile::SetModuleMVXProperties: openFile, size, read, a NUL after the last byte, closeFile). Defined in
// game-app/src/g1-game-app-rnd-8b06ae-1.cpp. Returns false (and an empty text) when the file does not open; the original dereferences
// the null stream there.
#pragma once

#include <string>

namespace rnd {

bool ReadFileText(const char* path, std::string& text);

}  // namespace rnd
