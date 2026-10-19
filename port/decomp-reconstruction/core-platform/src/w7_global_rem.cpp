// Reconstruction of the global_rem slice (17 rows of the <global> owner).
// Each function is listed with its ELF address and mangled symbol. The bodies
// follow the Hex-Rays export and the ARM listing. link-1: they call the game classes
// directly (the stand-in seams this file used are gone, see core-platform/w7_global_rem.hpp).

#include "core-platform/w7_global_rem.hpp"

#include <cstdio>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/Level.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/debug_trace.hpp"  // DBG_GetLoadingStepName
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/video_driver.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "vox-audio/vox/sound_manager.hpp"

// 0x340154 _Z21DBG_DisplayPointAsBoxRKN6glitch4core8vector3dIfEERKNS_5video6SColorEi
// Verified against the listing: the box is MinEdge = point - size/2 and MaxEdge = point + size/2
// (int division, then to float), the colour is passed straight through as the by-value SColor
// (the listing's byte-wise R | G<<8 | B<<16 | A<<24 pack is the 4-byte struct copy into r2), and
// the call is the virtual at IVideoDriver vtable +0x28, draw3DBox(aabbox3d<float> const&, SColor),
// on ApplicationGetInstance().m_device->videoDriver (hex dword_99F73C + 0x10; glitch::IDevice
// declares that word as videoDriver, so the owner is the IVideoDriver). Deviation (named): the
// original tail-calls draw3DBox and passes its int result (0x5a9990 forwards its own slot's
// result) back to the caller; glitch-video declares draw3DBox void, so this returns 0. No caller
// reads it (ObjectManager::Draw3D calls it as a statement).
int DBG_DisplayPointAsBox(const glitch::core::vector3d<float>& point, const glitch::video::SColor& color, int size) {
    const float half = static_cast<float>(size / 2);
    glitch::core::aabbox3d<float> box;
    box.MinEdge = glitch::core::vector3d<float>{point.X - half, point.Y - half, point.Z - half};
    box.MaxEdge = glitch::core::vector3d<float>{point.X + half, point.Y + half, point.Z + half};
    glitch::video::IVideoDriver* const driver = ApplicationGetInstance().m_device->videoDriver;
    driver->draw3DBox(box, color);
    return 0;
}

// 0x342478 _ZlsRSoR12ObjectHandle
// ObjectHandle::GetObject(bool) is called with false as the presence check and true for the object.
// The name is the string at +0x30 of the object (its data pointer is the word at +0x44 in the listing). The
// original writes it with _M_put_nowiden, which pads to the stream width as operator<< does, so
// operator<< matches it here.
std::ostream& operator<<(std::ostream& os, ObjectHandle& handle) {
    if (handle.GetObject(false)) {
        ObjectBase* object = handle.GetObject(true);
        os << object->m_name.c_str();
    }
    return os;
}

// 0x34b170 _ZrsRSiR12ObjectHandle
// Reads one whitespace-delimited name, then calls GetObjectByName(name, -1, true, nullptr) on the
// ObjectManager (Application +0x38, the listing's dword_99F764) and copies the handle back. The listing's
// third argument `&dword_0 + 1` is the integer 1, which is the bool `active`, and the fourth is 0 (null type).
std::istream& operator>>(std::istream& is, ObjectHandle& handle) {
    std::string name;
    is >> name;
    ObjectHandle found = ApplicationGetInstance().m_objectManager->GetObjectByName(name.c_str(), -1, true, nullptr);
    handle = found;
    return is;
}

// 0x3ef9fc _Z25DBG_DisplayLoadLevelStatsPKc
// Level::s_dbgLevelLoadCount is defined in game-app/src/statics_Level.cpp.
int DBG_DisplayLoadLevelStats(const char* nextLevelName) {
    std::puts("*******************************************************************");
    std::printf("Loaded a level for the %d time\n", Level::s_dbgLevelLoadCount);
    std::printf("Next level to be loaded is : %s \n", nextLevelName);
    return std::puts("*******************************************************************");
}

// 0x41f834 _Z18playerClassAsStrIDi
// The class id is 263 (warrior, base), 325 (+1) or 290 (+2) from the StrID table entry GAMEPLAYMENUS_CLASS_00 of the
// PyDataConstants (Application +0x2c, the listing's dword_99F758). With -1 the id is the class of the local player's
// character (PlayerManager::GetLocalPlayer(0, true), PlayerInfo +0x660, Character +0x13c8 as a 16-bit value);
// other ids return -1.
int playerClassAsStrID(int classId) {
    int v1 = classId;
    if (classId == -1) {
        Character* character = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, true)->unk_660;
        if (!character) {
            return -1;
        }
        v1 = character->m_charPropsId;
    }
    int result = ApplicationGetInstance().m_pyDataConstants->getConstant("StrID", "GAMEPLAYMENUS_CLASS_00");
    if (v1 != 263) {
        if (v1 == 325) {
            ++result;
        } else if (v1 == 290) {
            result += 2;
        } else {
            return -1;
        }
    }
    return result;
}

// 0x4218e4 _Z16playerClassAsStrv
// The class names are "mage" (290), "rogue" (325) and "warrior" (263), read from the local player's character
// (PlayerManager::GetLocalPlayer(0, true), PlayerInfo +0x660, Character +0x13c8 as a 16-bit value).
const char* playerClassAsStr() {
    Character* character = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, true)->unk_660;
    if (!character) {
        return nullptr;
    }
    const int classId = character->m_charPropsId;
    if (classId == 290) {
        return "mage";
    }
    if (classId != 325) {
        if (classId == 263) {
            return "warrior";
        }
        return nullptr;
    }
    return "rogue";
}

// 0x429c10 _Z24DisplayBuildInfoOnSplashv
// Body is a bare return (BX LR in the listing).
void DisplayBuildInfoOnSplash() {}

// 0x429c14 _Z21HideBuildInfoOnSplashv
// Body is a bare return (BX LR in the listing).
void HideBuildInfoOnSplash() {}

// 0x433d00 _Z15ParsePlayerNameRKSs
// When the local player has a character (PlayerInfo +0x660), the name is the "$player" substitution of the input through
// StringManager::parse (Application +0x34, the listing's dword_99F760), with the pattern "^$" and the character's
// SG_GetPlayerName; otherwise the input is copied. The meaning of the "^$" argument is not recovered.
std::string ParsePlayerName(const std::string& name) {
    std::string out;
    PlayerManager* players = ApplicationGetInstance().m_playerManager;
    if (players->GetLocalPlayer(0, true)->unk_660 != nullptr) {
        Character* character = players->GetLocalPlayer(0, true)->unk_660;
        ApplicationGetInstance().m_stringManager->parse(out, "^$", name.c_str(), "$player", character->SG_GetPlayerName());
    } else {
        out = name;
    }
    return out;
}

// 0x43a8f0 _Z17UpdateSavedValuesv
// Reads the "AutoOrientation" option and applies it to the orientation, both on Singleton<Application>::s_inst
// (Application::GetSavedOption 0x320e44, Application::ResetOrientation 0x31f748, which is empty).
void UpdateSavedValues() {
    int savedOption = ApplicationGetInstance().GetSavedOption("AutoOrientation");
    ApplicationGetInstance().ResetOrientation(savedOption);
}

// 0x43acb4 _Z21NatvieResumeAllSoundsRKN7gameswf7fn_callE
// Resumes all sounds when VoxSoundManager::s_instance (0x9a238c) exists. The listing returns the instance
// pointer's register when there is no instance and ResumeAllSounds' leftover r0 otherwise; nothing reads the result.
int NatvieResumeAllSounds(const gameswf::fn_call& call) {
    (void)call;
    VoxSoundManager* instance = VoxSoundManager::s_instance;
    if (instance != nullptr) {
        instance->ResumeAllSounds();
    }
    return 0;
}

// 0x957434 s_LoadingStepsNames (file-local, 36 string pointers in .data.rel.ro): the names of the loading steps,
// indexed by the step number. The first entry is the literal "LS__FirstLS__ThreadFirst" (two enum names glued by the
// stringising macro in the original source). The last, "LS__Count", is the one-past-the-end step.
static const char* const s_LoadingStepsNames[36] = {
    "LS__FirstLS__ThreadFirst",
    "LS_LoadingScreen",
    "LS_LevelProperties",
    "LS_SavegameCheck",
    "LS_VisualFX",
    "LS_PhysicalWorld",
    "LS_File",
    "LS_ScriptsLoad",
    "LS_PlayerInit",
    "LS_ObjectsInit",
    "LS_ResumeGame",
    "LS_Floor",
    "LS_Quests",
    "LS_ScriptsInit",
    "LS_Player",
    "LS_LevelInit",
    "LS_FinalInit",
    "LS_CharStates",
    "LS_TextureBias",
    "LS_Camera",
    "LS_InitBatch",
    "LS_ListBatch",
    "LS_MapBatch",
    "LS_CompileBatch",
    "LS_CleanBatch",
    "LS_AssignBatchToRooms",
    "LS_PreloadGlyphs",
    "LS_PreCacheObjects",
    "LS_CompileQuests",
    "LS_UpdateLevel",
    "LS_Final",
    "LS_ThreadJoin",
    "LS_MultiplayerWait",
    "LS_Wait",
    "LS_HUD",
    "LS__Count",
};

// 0x3ef18c _Z22DBG_GetLoadingStepNamei
// "unknown" for a negative step, else the table entry (no upper bound check, as in the original).
const char* DBG_GetLoadingStepName(int step) {
    if (step < 0) {
        return "unknown";
    }
    return s_LoadingStepsNames[step];
}
