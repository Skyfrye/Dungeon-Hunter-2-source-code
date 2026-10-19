// Bodies of glitch::collada::CResFileReader (canonical class: collada/CColladaDatabase.hpp). The four forwarders wrap the
// IReadFile at +0x04; the free functions of recon/slice_21.cpp stay as the stand-in path that its test exercises.
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"

#include "glitch-core-io/io/interfaces.hpp"

namespace glitch::collada {

// 0x657818 _ZN6glitch7collada14CResFileReader4tellEv
// Forwards to the wrapped file's position slot (IReadFile +0x24).
std::int32_t CResFileReader::tell() {
    return static_cast<std::int32_t>(file->getPos());
}

// 0x657834 _ZN6glitch7collada14CResFileReader4readEPvj
// Forwards to the wrapped file's read slot (IReadFile +0x0c).
std::int32_t CResFileReader::read(void* buffer, std::uint32_t size) {
    return file->read(buffer, size);
}

// 0x657850 _ZN6glitch7collada14CResFileReader4seekElb
// Forwards to the wrapped file's seek slot (IReadFile +0x18); the bool result is returned as 0 or 1.
std::int32_t CResFileReader::seek(std::int32_t position, bool relative) {
    return file->seek(position, relative) ? 1 : 0;
}

// 0x65786c _ZN6glitch7collada14CResFileReader7getSizeEv
// Forwards to the wrapped file's size slot (IReadFile +0x20).
std::int32_t CResFileReader::getSize() {
    return static_cast<std::int32_t>(file->getSize());
}

}  // namespace glitch::collada
