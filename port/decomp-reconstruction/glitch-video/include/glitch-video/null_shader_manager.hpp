// glitch::video::CNullShaderManager: creates CNullShader objects for the null driver. Derives from IShaderManager and adds
// nothing to it (0x54 bytes in the original: operator new(0x54) in CNullDriver's constructor 0x5b9840, then the
// IShaderManager constructor and the vtable 0x978208).
//
// Vtable: +0x00/+0x04 own destructors (0x5b9b80 D1, 0x5b9cf0 deleting), +0x08 init (the base's), +0x0c own
// removeUnusedShaders (0x5b9cec, the base's body), +0x10 base clearDriverSpecificResources, +0x14 own createEmptyShader
// (0x5b9bb4), +0x18 base createBatchBaker. createShader (0x5b9bf4) is not virtual.
#pragma once

#include <cstdint>

#include "glitch-video/deps/intrusive_ptr.hpp"
#include "glitch-video/null_shader.hpp"
#include "glitch-video/shader_manager.hpp"

namespace glitch::video {

class CNullDriver;

class CNullShaderManager : public IShaderManager {
public:
    // The original has no out-of-line constructor (it is inlined into CNullDriver's). The driver argument is a port
    // helper for code that builds a manager on its own: it stands for the IShaderManager::init call the driver makes.
    explicit CNullShaderManager(CNullDriver* driver = nullptr);
    ~CNullShaderManager() override;  // 0x5b9b80 (D1), 0x5b9cf0 (D0)

    // 0x5b9bb4: a new unnamed shader on the manager's driver, the name argument is not used.
    boost::intrusive_ptr<IShader> createEmptyShader(const char* name) override;  // +0x14
    // 0x5b9bf4: returns the existing shader for the name or creates one under the collection's next id and adds it.
    boost::intrusive_ptr<IShader> createShader(const char* name);
    // 0x5b9cec: the base's body (SIDedCollection::removeAll(false)).
    int removeUnusedShaders() override;  // +0x0c
};

}  // namespace glitch::video
