// Batch g1-game-world-Module-b8ff02-0: 11 Module entries (constructors, destructors, serialization, properties,
// the XML choice and the level load). Declarations come from dh2/Module.hpp. PARTIAL bodies name their seam.

#include <cstdio>
#include <cstdlib>
#include <sstream>
#include <string>
#include <vector>

#include "dh2/GSLevel.hpp"                        // GSLevel::s_level
#include "dh2/GameObject.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/Level.hpp"
#include "dh2/Module.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PropertyMap.hpp"
#include "dh2/Random.hpp"
#include "dh2/RoomZone.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"  // dword_99F764, the ObjectManager instance

// core-platform/memory.hpp declares this too. Including it would pull a second glitch_core.hpp into this unit beside
// the one that Zone.hpp uses, so only the extern is repeated here.
extern int gAssertLevel;

// Static data. The original static initializer at 0x3888dc (Block.cpp) stores -1.0f in each of the three words.
Point3D<float> Module::UNINIT_FOG_COLOR = {-1.0f, -1.0f, -1.0f};
int Module::s_moduleId = 0;

// 0x389fa8 _ZN6ModuleC1EN10ObjectBase6GO_IDSE
// 0x38a100 _ZN6ModuleC2EN10ObjectBase6GO_IDSE (same body)
// The Decor constructor is inlined in the original: it sets Decor's +0x375 and +0x376 flags and the static flag. The
// members are default-constructed (empty strings, a null vector, an empty ObjectHandle). The module id comes from the
// running counter, which the constructor then advances.
Module::Module(GO_IDS id) : Decor(id) {
    m_floorMapPending = true;      // Decor +0x375
    m_isSolid = true;              // Decor +0x376
    m_static = true;               // ObjectBase +0x84
    unk_28 = 1;                    // ObjectBase +0x28
    m_fogColor = UNINIT_FOG_COLOR; // +0x3f0 .. +0x3f8
    m_visited = false;             // +0x3fc
    m_moduleId = s_moduleId;       // +0x40c
    s_moduleId = m_moduleId + 1;
}

// 0x38952c _ZN6ModuleD0Ev (deleting destructor) is skipped: the compiler generates it for delete (calls D1, then operator delete).
// 0x389444 _ZN6ModuleD1Ev (complete-object destructor)
// 0x389548 _ZN6ModuleD2Ev (base-object destructor, same body)
// The original clears the back pointer of the generated RoomZone (RoomZone +0x38c) when the handle still resolves to a
// RoomZone (GO_IDS 11). The string members, the vector and the handle are destroyed by their own destructors, and the
// Decor and GameObject destructors run after this body.
Module::~Module() {
    ObjectBase* object = m_roomZone.GetObject(false);
    if (object != nullptr && object->m_goId == 11) {  // GO_IDS 11 = RoomZone (global/object_factory.hpp)
        static_cast<RoomZone*>(object)->unk_38c = nullptr;
    }
}

// 0x388710 _ZN6Module9SerializeEP11IStreamBase
void Module::Serialize(IStreamBase* stream) {
    GameObject::Serialize(stream);
    stream->writeAs<bool>(m_visited);
}

// 0x388f00 _ZN6Module11DeserializeEP11IStreamBase
// Hex-Rays shows a RoomZone* return. The virtual slot is void, so the value left in r0 is not part of the behaviour.
void Module::Deserialize(IStreamBase* stream) {
    GameObject::Deserialize(stream);
    stream->readAs<bool>(m_visited);
    ObjectBase* object = m_roomZone.GetObject(false);
    if (object != nullptr && object->m_goId == 11) {  // GO_IDS 11 = RoomZone
        static_cast<RoomZone*>(object)->SetVisited(m_visited);
    }
}

// 0x388b20 _ZN6Module8InitPostEv
// Decor::InitPost, then, with a visual object: the transformed bounding box of its root node (ISceneNode vtable +0x34) is taken, a
// RoomZone named generated_roomzone_<4-digit counter> is spawned through the object manager (global, not saved) and, when the object
// is a RoomZone (GO id 11), its handle is kept (+0x400), the box becomes the room zone's bounds (Zone::InitWithBoundingBox) and the
// room zone points back at this module (RoomZone +0x38c).
void Module::InitPost() {
    Decor::InitPost();
    if (m_visualObject == nullptr) {  // +0x2d8
        return;
    }
    const glitch::core::aabbox3d<float>& box = m_visualObject->m_node->getTransformedBoundingBox();   // VisualObject +0x08, vtable +0x34

    static int unique_roomzone_id = 0;  // Module::InitPost()::unique_roomzone_id (.bss)
    char name[52];
    std::snprintf(name, sizeof(name), "generated_roomzone_%04d", unique_roomzone_id);
    ++unique_roomzone_id;

    ObjectHandle spawned = dword_99F764->Spawn("RoomZone", name, false, true);
    ObjectBase* object = spawned.GetObject(false);
    if (object == nullptr || object->m_goId != 11) {  // GO_IDS 11 = RoomZone
        return;
    }
    m_roomZone = spawned;  // +0x400, 12-byte handle copy
    RoomZone* room = static_cast<RoomZone*>(object);
    room->InitWithBoundingBox(box);
    room->unk_38c = this;  // RoomZone +0x38c, the owning Module
}

// 0x389e04 _ZN6Module17DeclarePropertiesEv
void Module::DeclareProperties() {
    Decor::DeclareProperties();
    PropertyMap::AddProperty<std::string>("mgp", m_mgp);
    PropertyMap::AddProperty<std::string>("mvp", m_mvp);
    PropertyMap::AddProperty<std::string>("alt_mgp", m_altMgp);
    PropertyMap::AddProperty<std::string>("alt_mvp", m_altMvp);
    PropertyMap::AddProperty<std::string>("alt_prob", m_altProb);
    PropertyMap::AddProperty<Point3D<float>>("fog_color", m_fogColor, UNINIT_FOG_COLOR);
}

// 0x38a38c _ZNK6Module11_ChooseXmlsERSsS0_
// Copies m_mgp and m_mvp into the outputs. When either alternate is empty it returns 16556 right away. Otherwise it
// builds three parallel lists: the lines of alt_mgp (then m_mgp last), the lines of alt_mvp (then m_mvp last), and the
// percentages. The percentages are the lines of alt_prob, then 100 minus their sum, or, when alt_prob is empty, 100 / n
// for each of the n main xml names. A count mismatch fires the original ASSERT(false) (Block.cpp line 189). Then one
// roll in [0, 100) (GetRandom clone 0x388c58, which is GetRandom(range, false) on the ordinary stream) chooses the first
// index whose running total exceeds the roll, and that index's names are written to the outputs. With no index chosen
// the outputs keep the primary names. The function returns 16556 on every path.
// The original reads the lists at the chosen index without a check. Here an index past the end of a list keeps the
// primary name, which only matters after a count mismatch.
int Module::_ChooseXmls(std::string& mgp, std::string& mvp) const {
    if (&mgp != &m_mgp) {
        mgp = m_mgp;
    }
    if (&mvp != &m_mvp) {
        mvp = m_mvp;
    }
    if (m_altMgp.empty() || m_altMvp.empty()) {
        return 16556;
    }

    std::vector<std::string> mgpList;
    {
        std::istringstream lines(m_altMgp);
        std::string line;
        while (std::getline(lines, line)) {
            mgpList.push_back(line);
        }
    }
    mgpList.push_back(m_mgp);

    std::vector<std::string> mvpList;
    {
        std::istringstream lines(m_altMvp);
        std::string line;
        while (std::getline(lines, line)) {
            mvpList.push_back(line);
        }
    }
    mvpList.push_back(m_mvp);

    std::vector<int> probabilities;
    if (!m_altProb.empty()) {
        std::istringstream lines(m_altProb);
        std::string line;
        int sum = 0;
        while (std::getline(lines, line)) {
            const int value = std::atoi(line.c_str());
            probabilities.push_back(value);
            sum += value;
        }
        probabilities.push_back(100 - sum);
    } else {
        const int count = static_cast<int>(mgpList.size());
        const int share = 100 / count;  // count is at least 1: m_mgp is always the last entry
        for (int j = 0; j < count; ++j) {
            probabilities.push_back(share);
        }
    }

    const std::size_t count = mgpList.size();
    if (count != probabilities.size() || count != mvpList.size()) {
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "false",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Block.cpp", 189);
        }
    }

    const int roll = static_cast<int>(Random::GetRandom(100, false));

    // Index of the chosen entry. count (no valid index) means nothing is written and the primary names stay.
    std::size_t picked = count;
    if (count != 0 && !probabilities.empty()) {
        int cumulative = probabilities[0];
        if (roll >= probabilities[0]) {
            for (std::size_t k = 1; k < count && k < probabilities.size(); ++k) {
                cumulative += probabilities[k];
                if (cumulative > roll) {
                    picked = k;
                    break;
                }
            }
        } else {
            picked = 0;
        }
    }
    if (picked < count) {
        mgp = mgpList[picked];
        if (picked < mvpList.size()) {
            mvp = mvpList[picked];
        }
    }
    return 16556;
}

// 0x38a88c _ZNK6Module10LoadModuleEv
// PARTIAL. When GSLevel::s_level is null the original asserts "lvl" (Block.cpp line 84) and then dereferences the null
// level (a fault at gAssertLevel 0 and 1, a null store at 2). This build asserts with the same messages and returns,
// because a member call on a null Level has no defined behaviour. Everything after the check is reconstructed.
void Module::LoadModule() const {
    Level* level = GSLevel::s_level;
    if (level == nullptr) {
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "lvl",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Block.cpp", 84);
        }
        return;  // SEAM: the original faults here. See the comment above.
    }

    level->SetObjectModuleId(m_moduleId);  // +0x40c
    level->m_moduleOffset = m_position;    // GameObject +0x160 copied into Level +0x160

    std::string mgp;
    std::string mvp;
    _ChooseXmls(mgp, mvp);
    if (!mgp.empty()) {
        int loaded = 0;
        do {
            loaded = level->LoadFile(mgp, std::string("Module"));
        } while (!loaded);
    }
    if (!mvp.empty()) {
        int loaded = 0;
        do {
            loaded = level->LoadFile(mvp, std::string("Module"));
        } while (!loaded);
    }

    level->m_moduleOffset = Point3D<float>{0.0f, 0.0f, 0.0f};  // +0x160 .. +0x168
    level->SetObjectModuleId(-1);
}
