#include "glitch-video/material_technique_maps_reader.hpp"

#include <cstring>
#include <string>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_renderer_manager.hpp"

namespace glitch::video {

// 0x5df8ec _ZN6glitch5video28IMaterialTechniqueMapsReaderC1ERNS0_24CMaterialRendererManagerE
// 0x5df94c _ZN6glitch5video28IMaterialTechniqueMapsReaderC2ERNS0_24CMaterialRendererManagerE
IMaterialTechniqueMapsReader::IMaterialTechniqueMapsReader(CMaterialRendererManager& manager)
    : m_manager(&manager),
      m_unknown10(0xFFFF),
      m_unknown15(true) {
    m_mapIds[0] = -1;
    m_mapIds[1] = -1;
    m_mapGroupActive[0] = false;
    m_mapGroupActive[1] = false;
    m_unknown14 = false;
    m_error = false;
    m_currentTag = nullptr;
}

// 0x5df8c8 _ZN6glitch5video28IMaterialTechniqueMapsReader8setErrorEPKcS3_
void IMaterialTechniqueMapsReader::setError(const char* message, const char* detail) {
    m_error = true;
    if (message != nullptr) printError(message, detail);
}

// 0x5df9b4 _ZN6glitch5video28IMaterialTechniqueMapsReader11endMapGroupENS1_11E_MAP_GROUPEPKc
int IMaterialTechniqueMapsReader::endMapGroup(E_MAP_GROUP group, const char* tag) {
    if (m_error && tag == m_currentTag) {
        m_currentTag = nullptr;
        m_error = false;
    }
    m_mapIds[group] = -1;
    m_mapGroupActive[group] = false;
    return endMapGroup(group);  // vtable +0x1c
}

// 0x5dfb08 _ZN6glitch5video28IMaterialTechniqueMapsReader10printErrorEPKcS3_
void IMaterialTechniqueMapsReader::printError(const char* message, const char* detail) {
    if (detail != nullptr && *detail != '\0') {
        const size_t size = std::strlen(message) + std::strlen(detail) + 3;
        char* text = reinterpret_cast<char*>(glitch::core::allocProcessBuffer(static_cast<int>(size)));
        std::strcpy(text, message);
        const size_t length = std::strlen(text);
        text[length] = ':';
        text[length + 1] = '\0';
        std::strcat(text, detail);
        os::Printer::log(m_currentTag, text, ELL_ERROR);
        if (text != nullptr) glitch::core::releaseProcessBuffer(text);
    } else {
        os::Printer::log(m_currentTag, message, ELL_ERROR);
    }
}

// 0x5e0018 _ZN6glitch5video28IMaterialTechniqueMapsReader15getTechniqueIDsEtPKcRhS3_S4_
bool IMaterialTechniqueMapsReader::getTechniqueIDs(uint16_t rendererId, const char* firstName, uint8_t& firstId,
                                                   const char* secondName, uint8_t& secondId) {
    constexpr uint8_t kNoTechnique = 0xff;
    const boost::intrusive_ptr<CMaterialRenderer> renderer = m_manager->getMaterialRenderer(rendererId);
    const bool quiet = m_unknown10 == 0xffff && m_unknown15;
    auto fail = [&](const char* name) {
        if (quiet) return;
        const std::string text = std::string(name) + " in renderer " + renderer->m_name;
        setError("unknown technique name", text.c_str());
    };
    if (firstName != nullptr) {
        firstId = renderer->getTechniqueID(firstName);
        if (firstId == kNoTechnique) {
            fail(firstName);
            return false;
        }
    } else {
        firstId = 0xff;
    }
    secondId = renderer->getTechniqueID(secondName);
    if (secondId == kNoTechnique) {
        fail(secondName);
        return false;
    }
    return true;
}

}  // namespace glitch::video
