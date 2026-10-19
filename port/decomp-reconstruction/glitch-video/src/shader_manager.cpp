#include "glitch-video/shader_manager.hpp"

#include <algorithm>
#include <cstring>

#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/generic_baker.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

// 0x5e5704 _ZN6glitch5video14IShaderManagerC1Ev / 0x5e5770 C2: the collection constructor, the vtable, the driver and the
// three search-path vector words zeroed, and the base path text ".". The member initialisers give exactly that.
IShaderManager::IShaderManager() = default;

// 0x5e67c4 _ZN6glitch5video14IShaderManagerD1Ev / 0x5e683c D2: frees the path text, the search-path vector and the
// collection (each value released). The deleting variant 0x5e6820 calls D1 and frees the object.
IShaderManager::~IShaderManager() = default;

// 0x5e78dc _ZN6glitch5video14IShaderManager4initEPNS0_12IVideoDriverEb
// Stores the driver, takes the working directory of the driver's file system (device +0x34, file system vtable +0x2c)
// as the base path and, when asked, adds it to the search paths (appended). The original holds a use of the file system
// across the call and returns the result of dropping it.
// Port guard: a driver without a device or without a file system skips the path (the original dereferences both).
int IShaderManager::init(IVideoDriver* driver, bool addDefaultSearchPath) {
    m_driver = driver;  // +0x2c
    io::IFileSystem* fileSystem =
        (driver != nullptr && driver->m_device != nullptr) ? driver->m_device->fileSystem : nullptr;
    if (fileSystem == nullptr) return 0;
    ++fileSystem->referenceCounter;
    const char* path = fileSystem->getWorkingDirectory();  // file system vtable +0x2c
    m_name.assign(path, path + std::strlen(path));         // _M_assign(+0x3c, path, path + strlen)
    if (addDefaultSearchPath) {
        addShaderSearchPath(m_name.c_str(), false);
    }
    return fileSystem->drop() ? 1 : 0;
}

// 0x5e67b0 _ZN6glitch5video14IShaderManager19removeUnusedShadersEv: SIDedCollection::removeAll(false).
int IShaderManager::removeUnusedShaders() { return m_shaders.removeAll(false); }

// 0x5e5b2c _ZN6glitch5video14IShaderManager29clearDriverSpecificResourcesEv
// Walks the name map in key order and calls slot +0x14 (releaseDriverSpecificResources) on every shader's entry.
void IShaderManager::clearDriverSpecificResources() {
    for (auto it = m_shaders.idBegin(); it != m_shaders.idEnd(); ++it) {
        const auto* entry = m_shaders.get(it->second.id);
        entry->value->releaseDriverSpecificResources();  // the original reads the invalid entry's null value for a stale id
    }
}

// 0x5e562c _ZNK6glitch5video14IShaderManager16createBatchBakerEPKNS0_7IShaderE
// A new CGenericBaker (0x18 bytes) on the shader, returned with one use taken.
boost::intrusive_ptr<CGenericBaker> IShaderManager::createBatchBaker(const IShader* shader) const {
    return boost::intrusive_ptr<CGenericBaker>(new CGenericBaker(shader), true);  // a new baker has count 0
}

// 0x5e4798 _ZNK6glitch5video14IShaderManager13getBatchBakerEt
// The cached baker of entry id; one is created through createBatchBaker (vtable +0x18) and cached on first use. A null
// result for an out-of-range or unset entry.
boost::intrusive_ptr<IBatchBaker> IShaderManager::getBatchBaker(uint16_t id) const {
    const auto* entry = m_shaders.get(id);
    if (!entry->value) {
        return boost::intrusive_ptr<IBatchBaker>();
    }
    auto* properties = const_cast<SShaderProperties*>(m_shaders.getProperties(id));
    if (properties->batchBaker) {
        return properties->batchBaker;
    }
    boost::intrusive_ptr<IBatchBaker> created = createBatchBaker(entry->value.get());
    properties->batchBaker = created;
    return properties->batchBaker;
}

// 0x5e4878 _ZN6glitch5video14IShaderManager16removeBatchBakerEt
// Clears the cached baker of a set entry (dropping it) and returns 1; 0 for an unset or out-of-range entry.
int IShaderManager::removeBatchBaker(uint16_t id) {
    const auto* entry = m_shaders.get(id);
    if (!entry->value) {
        return 0;
    }
    m_shaders.getProperties(id)->batchBaker = nullptr;
    return 1;
}

// 0x5e7298 _ZN6glitch5video14IShaderManager9addShaderERKN5boost13intrusive_ptrINS0_7IShaderEEE
// Inserts the shader under its own name (the name pointer at IShader +0x20) as an unmanaged key. Returns 1.
int IShaderManager::addShader(const boost::intrusive_ptr<IShader>& shader) {
    m_shaders.insert(shader->m_name.c_str(), shader, false);
    return 1;
}

// 0x5e7510 _ZN6glitch5video14IShaderManager9addShaderEPKcRKN5boost13intrusive_ptrINS0_7IShaderEEE
// Inserts the shader under a copy of the name (a new[] block the key then owns). Returns 1.
int IShaderManager::addShader(const char* name, const boost::intrusive_ptr<IShader>& shader) {
    const size_t length = std::strlen(name);
    char* copy = new char[length + 1];
    std::strcpy(copy, name);
    copy[length] = 0;
    m_shaders.insert(copy, shader, true);
    return 1;
}

// 0x5e771c _ZN6glitch5video14IShaderManager19addShaderSearchPathEPKcb
// atFront: the path is searched for from the front and, when absent, inserted at the front of the list. Otherwise it is
// searched for from the back and appended when absent.
void IShaderManager::addShaderSearchPath(const char* path, bool atFront) {
    const std::string text(path);
    if (atFront) {
        if (std::find(m_searchPaths.begin(), m_searchPaths.end(), text) != m_searchPaths.end()) return;
        m_searchPaths.insert(m_searchPaths.begin(), text);
    } else {
        if (std::find(m_searchPaths.rbegin(), m_searchPaths.rend(), text) != m_searchPaths.rend()) return;
        m_searchPaths.push_back(text);
    }
}

}  // namespace glitch::video
