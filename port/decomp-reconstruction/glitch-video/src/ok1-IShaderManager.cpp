// Owner K1: IShaderManager::serializeShader (0x5e59ac) and IShaderManager::loadShader (0x5e72bc): shaders as .shd XML attribute files.
#include <cstdio>
#include <cstring>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/io/xml_attributes.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/shader_manager.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

namespace {

constexpr int kPathBuffer = 250;  // allocProcessBuffer(elf_hash_bucket + 0x1e)

// strcmp(name + length - 4, ".shd") != 0: the name does not end with ".shd" (a shorter name does not either).
bool lacksShaderExtension(const char* name) {
    const size_t length = std::strlen(name);
    return length < 4 || std::strcmp(name + length - 4, ".shd") != 0;
}

}  // namespace

// 0x5e59ac _ZN6glitch5video14IShaderManager15serializeShaderEN5boost13intrusive_ptrINS0_7IShaderEEEPKc
// Writes the shader's attributes to "<base path>/<name>.shd" (the extension is added unless the name has it) through the device's
// file system: an XML writer, an empty attribute set that the shader fills (vtable +0x0c) and the attribute writer.
bool IShaderManager::serializeShader(boost::intrusive_ptr<IShader> shader, const char* name) {
    glitch::core::SScopedEnableProcessBufferHeapExcess excess(true);
    char* path = reinterpret_cast<char*>(glitch::core::allocProcessBuffer(kPathBuffer));
    glitch::io::IFileSystem* fileSystem = m_driver->m_device->fileSystem;  // driver +0xd4 -> +0x34
    if (fileSystem != nullptr) ++fileSystem->referenceCounter;
    if (lacksShaderExtension(name)) {
        std::sprintf(path, "%s/%s.shd", m_name.c_str(), name);
    } else {
        std::sprintf(path, "%s/%s", m_name.c_str(), name);
    }
    bool result = false;
    glitch::io::IXMLWriter* writer = fileSystem->createXMLWriter(path);  // vtable +0x5c
    if (writer != nullptr) {
        glitch::io::IAttributes* attributes = fileSystem->createEmptyAttributes(m_driver);  // vtable +0x64
        if (attributes != nullptr) {
            {
                glitch::io::CXMLAttributesWriter attributesWriter(writer, true, nullptr);
                writer->drop();
                shader->serializeAttributes(attributes);  // IShader vtable +0x0c
                attributesWriter.write(attributes);
            }
            attributes->drop();
            result = true;
        } else {
            writer->drop();
        }
    }
    if (fileSystem != nullptr) fileSystem->drop();
    if (path != nullptr) glitch::core::releaseProcessBuffer(path);
    glitch::core::setProcessBufferHeapExcessEnabled(excess.previous);
    return result;
}

// 0x5e72bc _ZN6glitch5video14IShaderManager10loadShaderEPKc
// Looks for "<search path>/<name>" in every search path and keeps the last file that exists (the original opens each match and
// drops none of them; the port drops the ones it passes over). A name with the ".shd" extension is made into an empty shader
// (vtable +0x14, createEmptyShader), read as an XML attribute file into an attribute set, handed to the shader (vtable +0x10,
// deserializeAttributes) and added to the manager. The opened file is not dropped, as in the original.
bool IShaderManager::loadShader(const char* name) {
    glitch::core::SScopedEnableProcessBufferHeapExcess excess(true);
    char* path = reinterpret_cast<char*>(glitch::core::allocProcessBuffer(kPathBuffer));
    glitch::io::IFileSystem* fileSystem = m_driver->m_device->fileSystem;
    if (fileSystem != nullptr) ++fileSystem->referenceCounter;
    glitch::io::IReadFile* file = nullptr;
    for (const std::string& searchPath : m_searchPaths) {
        std::sprintf(path, "%s/%s", searchPath.c_str(), name);
        if (fileSystem->existFile(path)) {  // vtable +0x44
            if (file != nullptr) file->drop();
            file = fileSystem->createAndOpenFile(path);  // vtable +0x0c
        }
    }
    bool result = false;
    boost::intrusive_ptr<IShader> shader;
    if (file != nullptr && !lacksShaderExtension(name)) shader = createEmptyShader(name);
    if (shader) {
        glitch::io::IXMLReader* reader = fileSystem->createXMLReader(file);  // vtable +0x50
        if (reader != nullptr) {
            glitch::io::IAttributes* attributes = fileSystem->createEmptyAttributes(m_driver);
            if (attributes != nullptr) {
                {
                    glitch::io::CXMLAttributesReader attributesReader(
                        static_cast<glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>*>(reader), false, nullptr);
                    reader->drop();
                    attributesReader.read(attributes);
                }
                result = true;
                shader->deserializeAttributes(attributes);
                addShader(shader);
                attributes->drop();
            } else {
                reader->drop();
            }
        }
    }
    if (fileSystem != nullptr) fileSystem->drop();
    if (path != nullptr) glitch::core::releaseProcessBuffer(path);
    glitch::core::setProcessBufferHeapExcessEnabled(excess.previous);
    return result;
}

}  // namespace glitch::video
