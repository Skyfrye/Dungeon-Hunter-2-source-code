// ObjectManager, part 4 of 4 (batch g1-game-world-ObjectManager-5017c7-3).
// Reconstructed from the Hex-Rays pseudocode and the disassembly of libDungeonHunter2.so. Offsets in comments are the
// original 32-bit ones.

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "dh2/GameObject.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/Point3D.hpp"
#include "tinyxml-and-c-libs/tixml_dh.hpp"

// The global assert level (gAssertLevel at 0x99f914). It is declared here as in the other ObjectManager parts.
extern int gAssertLevel;

namespace {

// The source path the original's ASSERT messages print (ObjectManager.cpp in the Visual Studio project).
const char kObjectManagerSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ObjectManager\\ObjectManager.cpp";

// The original ASSERT(expression) at line. Level 2 stops the program (the original stores to address 0 to crash);
// level 1 prints the message and the function goes on.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kObjectManagerSource, line);
    }
}

}  // namespace

// 0x34b724 ObjectManager::Spawn(char const*,char const*,bool,bool)
// The original returns its own return slot, the ObjectHandle, which this version returns by value.
// Disassembly: GetNewObject(type, name, -1, silent) is called with flags -1 and the fourth parameter as its active flag.
// Then, when the handle resolves:
//   InitProperties and LoadDefaultProperties on the object's PropertyMap (+0x04), SetName(name),
//   m_gameType (+0x48) = type,
//   when the third parameter is false: InitPost() (vtable +0x1c), then TestEnableCondition(true),
//   when IsUpdatable() (vtable +0x38) is true: the object is appended to m_spawnList (+0x34).
// The parameter names follow the header; the disassembly fixes the positions: the third parameter gates the init pair and the fourth feeds
// GetNewObject's active flag. Objects are created through GetNewObject (0x34b520).
ObjectHandle ObjectManager::Spawn(char const* type, char const* name, bool active, bool silent) {
    ObjectHandle handle = GetNewObject(type, name, -1, silent);
    if (handle.GetObject(false) != nullptr) {
        handle.GetObject(true)->PropertyMap::InitProperties();
        handle.GetObject(true)->PropertyMap::LoadDefaultProperties();
        handle.GetObject(true)->SetName(name);
        handle.GetObject(true)->m_gameType.assign(type);
        if (!active) {
            handle.GetObject(true)->InitPost();
            handle.GetObject(true)->TestEnableCondition(true);
        }
        if (handle.GetObject(true)->IsUpdatable()) {
            m_spawnList.push_back(handle.GetObject(false));
        }
    }
    return handle;
}

// 0x34b868 ObjectManager::LoadFromXML(TiXmlElement*,char const*,Point3D<float> const&,int)
// A null element fails ASSERT(element) at line 524 and returns. The element's "gametype" and "name" attributes must both exist, and a non-null type filter must equal the game type; otherwise
// nothing is created. The name "_prim_PlayerLight" becomes "<name>_S" and the flags -1 (every other name is kept: the original's sprintf results for them are dead). The object is made with
// GetNewObject(gametype, name, flags, true); a null object ends the function. Otherwise its properties are initialised, the "template" attribute (when present) becomes its property template,
// the defaults and then the element's overrides are loaded, a LevelConfig also runs InitPost, and a GameObject is moved to its position plus pos (SetPosition(position, true)). The original
// returns an int that is a leftover of the paths above (the strcmp result, the name pointer or the SetPosition register); no caller depends on it, so the function is void.
void ObjectManager::LoadFromXML(TiXmlElement* element, char const* type, Point3D<float> const& pos, int flags) {
    if (element == nullptr) {
        ReportAssert("element", 524);
        return;
    }
    const char* gameType = element->Attribute("gametype");
    const char* name = element->Attribute("name");
    if (name == nullptr || gameType == nullptr) {
        return;
    }
    if (type != nullptr && std::strcmp(type, gameType) != 0) {
        return;
    }
    std::string objectName(name);
    if (std::strcmp(name, "_prim_PlayerLight") == 0) {
        objectName += "_S";
        flags = -1;
    }
    ObjectHandle handle = GetNewObject(gameType, objectName.c_str(), flags, true);
    if (handle.GetObject(false) == nullptr) {
        return;
    }
    handle.GetObject(true)->PropertyMap::InitProperties();
    if (const char* templateName = element->Attribute("template")) {
        handle.GetObject(true)->PropertyMap::SetTemplate(std::string(templateName));
    }
    handle.GetObject(true)->PropertyMap::LoadDefaultProperties();
    handle.GetObject(true)->PropertyMap::LoadOverridesFromXML(element);
    if (std::strcmp(gameType, "LevelConfig") == 0) {
        handle.GetObject(true)->InitPost();
    }
    if (handle.GetObject(true)->IsGameObject()) {
        GameObject* gameObject = handle;
        const Point3D<float> position{gameObject->m_position.X + pos.X, gameObject->m_position.Y + pos.Y,
                                      gameObject->m_position.Z + pos.Z};
        gameObject->SetPosition(position, true);
    }
}

// 0x34bbe4 ObjectManager::LoadFromXML(TiXmlElement*,char const*)
// The original zeroes a Point3D (memset of 12 bytes) and calls the 5-argument overload with flags -1; this version does the same. The int the original returns is the other overload's leftover value (see 0x34b868).
void ObjectManager::LoadFromXML(TiXmlElement* element, char const* type) {
    Point3D<float> origin{0.0f, 0.0f, 0.0f};  // memset(v4, 0, 12)
    LoadFromXML(element, type, origin, -1);
}
