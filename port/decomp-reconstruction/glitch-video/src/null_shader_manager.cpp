#include "glitch-video/null_shader_manager.hpp"

#include "glitch-video/null_driver.hpp"

namespace glitch::video {

CNullShaderManager::CNullShaderManager(CNullDriver* driver) { m_driver = driver; }

// 0x5b9b80 _ZN6glitch5video18CNullShaderManagerD1Ev / 0x5b9cf0 D0: the vtable is set and the base destructor runs.
CNullShaderManager::~CNullShaderManager() = default;

// 0x5b9bb4 _ZN6glitch5video18CNullShaderManager17createEmptyShaderEPKc
boost::intrusive_ptr<IShader> CNullShaderManager::createEmptyShader(const char*) {
    // A CNullShader (0x50 bytes) on the manager's driver (+0x2c), returned with one use taken.
    return boost::intrusive_ptr<IShader>(new CNullShader(static_cast<CNullDriver*>(m_driver)), true);  // a new shader has count 0
}

// 0x5b9bf4 _ZN6glitch5video18CNullShaderManager12createShaderEPKc
// The id lookup is the collection's getId; a missing name makes a CNullShader (id = the collection's next free id, the
// name, the driver at +0x2c) and adds it under the name (IShaderManager::addShader with a copied key).
boost::intrusive_ptr<IShader> CNullShaderManager::createShader(const char* name) {
    const uint16_t id = m_shaders.getId(name);
    if (id == 0xffff) {
        boost::intrusive_ptr<IShader> shader(
            new CNullShader(m_shaders.getNextId(), name, static_cast<CNullDriver*>(m_driver)), true);  // count 0 -> 1
        addShader(name, shader);
        return shader;
    }
    return m_shaders.get(id)->value;
}

// 0x5b9cec _ZN6glitch5video18CNullShaderManager19removeUnusedShadersEv
int CNullShaderManager::removeUnusedShaders() { return IShaderManager::removeUnusedShaders(); }

}  // namespace glitch::video
