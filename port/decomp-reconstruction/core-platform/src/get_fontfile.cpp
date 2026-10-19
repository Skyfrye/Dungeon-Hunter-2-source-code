// 0x42b38c get_fontfile(char const*, bool, bool, char*, int): the font-file lookup of the gameswf glyph provider (the
// binary's global function, not gameswf::get_fontfile). Its own unit: it reaches the application's file system and
// savegame manager, which the plain fs callbacks do not.
#include <cstdio>
#include <cstring>
#include <string>

#include "core-platform/filesystem_base.hpp"
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/SavegameManager.hpp"
#include "glitch-core-io/os/device.hpp"

extern const char* RES_PATH;

namespace {

// The path through the file system's getAbsolutePath (device +0x34, vtable +0x34), copied back into the buffer.
void MakeAbsolute(char* buffer) {
    FileSystemBase* const fileSystem = static_cast<FileSystemBase*>(ApplicationGetInstance().m_device->fileSystem);
    const glitch::core::stringc absolute = fileSystem->getAbsolutePath(glitch::core::stringc(buffer));
    std::strcpy(buffer, absolute.c_str());
}

// The tail shared by the font-name branches: the absolute path, and whether a file with that name opens for reading.
bool AbsoluteFileExists(char* buffer) {
    MakeAbsolute(buffer);
    std::FILE* const file = std::fopen(buffer, "rb");
    if (file == nullptr) {
        return false;
    }
    std::fclose(file);
    return true;
}

}  // namespace

// _sans and _serif are the system Droid Sans; _typewriter picks the Droid face by the bold and italic flags; "Symbol" is the
// menu bitmap font (always reported found); "Arial" and the Chinese language use the WenQuanYi font, Korean nanumgothic,
// Japanese japanese.ttf, and any other name <RES_PATH>data/<name>.ttf. Those last branches report whether the file opens.
// The result is the original's int, as a bool. The first statement of the original is a DebugSwitches load and a read of the
// "isTracingMenuFS" switch whose value is not used.
bool get_fontfile(const char* name, bool is_bold, bool is_italic, char* buffer, int /*buffer_size*/) {
    DebugSwitches::s_inst.load();
    (void)DebugSwitches::s_inst.GetSwitch(std::string("isTracingMenuFS"));
    if (std::strcmp(name, "_sans") == 0 || std::strcmp(name, "_serif") == 0) {
        std::strcpy(buffer, "#/system/fonts/DroidSans.ttf");
        return true;
    }
    if (std::strcmp(name, "_typewriter") == 0) {
        if (is_bold) {
            std::strcpy(buffer, is_italic ? "#/system/DroidSerif-BoldItalic.ttf" : "#/system/DroidSans-Bold.ttf");
        } else {
            std::strcpy(buffer, is_italic ? "#/system/DroidSerif-Italic.ttf" : "#/system/DroidSans.ttf");
        }
        return true;
    }
    if (std::strcmp(name, "Symbol") == 0) {
        std::sprintf(buffer, "%sdata/menus/SCT_Font_3.fnt", RES_PATH);
        MakeAbsolute(buffer);
        return true;
    }
    if (std::strcmp(name, "Arial") != 0) {
        const int language = ApplicationGetInstance().m_savegameManager->getLanguage();
        if (language == 5) {
            std::sprintf(buffer, "%sdata/nanumgothic.ttf", RES_PATH);
            return AbsoluteFileExists(buffer);
        }
        if (language != 6) {
            if (language == 4) {
                std::sprintf(buffer, "%sdata/japanese.ttf", RES_PATH);
            } else {
                std::sprintf(buffer, "%sdata/%s.ttf", RES_PATH, name);
            }
            return AbsoluteFileExists(buffer);
        }
    }
    std::sprintf(buffer, "%sdata/wqy-zenhei.ttf", RES_PATH);
    return AbsoluteFileExists(buffer);
}
