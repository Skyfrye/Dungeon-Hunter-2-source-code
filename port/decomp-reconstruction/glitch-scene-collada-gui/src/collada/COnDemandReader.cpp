// Bodies of glitch::collada::COnDemandReader (canonical class: collada/COnDemandReader.hpp). This file replaces the address-named
// stand-ins of src/recon/slice_07.cpp.
#include "glitch-scene-collada-gui/collada/COnDemandReader.hpp"

#include "glitch-core-io/io/interfaces.hpp"

namespace glitch::collada {

// 0x60b2b4 _ZN6glitch7collada15COnDemandReaderD1Ev
COnDemandReader::~COnDemandReader() = default;

// 0x60b2b8 _ZN6glitch7collada15COnDemandReader4readEiiPv
std::int32_t COnDemandReader::read(std::int32_t size, std::int32_t offset, void* buffer) {
    file->seek(offset, false);  // vtable +0x18
    return file->read(buffer, static_cast<std::uint32_t>(size));  // vtable +0x0c
}

// 0x60b304 _ZN6glitch7collada15COnDemandReader4readEiiPvPFviiS2_S2_ES2_
std::int32_t COnDemandReader::read(std::int32_t size, std::int32_t offset, void* buffer, void (*)(int, int, void*, void*), void*) {
    file->seek(offset, false);  // vtable +0x18
    return file->read(buffer, static_cast<std::uint32_t>(size));  // vtable +0x0c
}

}  // namespace glitch::collada
