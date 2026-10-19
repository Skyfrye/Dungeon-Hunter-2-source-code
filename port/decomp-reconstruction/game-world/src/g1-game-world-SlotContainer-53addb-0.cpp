// Batch g1-game-world-SlotContainer-53addb-0 (part 1 of 1): the SlotContainer methods of libDungeonHunter2.so, in address
// order: IsUpdatable, GetLootFixedNumPowers, Update, the destructors, InitPost, the constructors and DeclareProperties.
// Declarations come from dh2/SlotContainer.hpp, which needs no change for this batch. Offsets in comments are the original
// 32-bit ones.
//
// The scene manager is reached through the device: the global dword_99F73C is Singleton<Application>::s_inst +0x10 (m_device), and the device's +0x1c is the SceneManager
// (DeviceSceneManager()). The separator read in the "slots" parse is the standard formatted extraction (leading whitespace skipped); the original's STLport
// std::istream::_M_formatted_get(char&) does the same.
//
// Slot list. The "slots" property text is a run of entries "<numPowers><sep><duration><sep>". Each number is read with
// operator>>, and one separator character follows it. The loop runs while the stream is not at end of text (the original's
// (state & eofbit) == 0 test). The stream is only read when the text is not empty, as in the original.

#include <cstddef>
#include <sstream>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/SlotContainer.hpp"

namespace {


// One colour channel of ItemInstance::GetColor: byte `shift / 8` of the packed value, divided by 255. The original converts
// the byte to float, divides by the double 255.0 and stores the result as float, so the division is done in double here too.
float ColourChannel(int packed, unsigned int shift) {
    const unsigned int byte = (static_cast<unsigned int>(packed) >> shift) & 0xFFu;
    return static_cast<float>(static_cast<double>(byte) / 255.0);
}

}  // namespace

// 0x3a2090 _ZNK13SlotContainer11IsUpdatableEv
// Constant true. Container returns false.
bool SlotContainer::IsUpdatable() const {
    return true;
}

// 0x3a2098 _ZNK13SlotContainer21GetLootFixedNumPowersEv
// m_numPowers (+0x00) of the current entry, m_slotInfos[m_slotIndex], and -1 when the list is empty. The index (+0x72c) is -1 only before the first Update (InitFinal runs one), where the original
// reads the word in front of the entry array (outside the array); the port returns -1 for that case.
int SlotContainer::GetLootFixedNumPowers() const {
    if (m_slotInfos.empty() || m_slotIndex < 0) {  // +0x734 .. +0x738 empty, +0x72c index
        return -1;
    }
    return m_slotInfos[static_cast<std::size_t>(m_slotIndex)].m_numPowers;
}

// 0x3a20d8 _ZN13SlotContainer6UpdateEv
// Does nothing when the list is empty or the container is ACTIVATE or OPENED (state 3 or 4, the original's unsigned (state - 3) > 1 test). Otherwise the timer loses Application::GetDt()
// milliseconds. When it is not positive, the index steps forward and wraps to 0 after the last entry, and the timer is reloaded from that entry's duration. When the material is set, the entry colour
// is applied to it with SceneManager::SetMaterialEffects(material, colour, 0.1, -1.0) on the device's scene manager. The original's int return is not part of the void declaration.
void SlotContainer::Update() {
    if (m_slotInfos.empty()) {
        return;
    }
    if (m_state == STATE_ACTIVATE || m_state == STATE_OPENED) {  // +0x394
        return;
    }
    m_slotTimer -= ApplicationGetInstance().GetDt();  // +0x730
    if (m_slotTimer > 0) {
        return;
    }
    ++m_slotIndex;  // +0x72c
    if (m_slotIndex >= static_cast<int>(m_slotInfos.size())) {
        m_slotIndex = 0;
    }
    const SlotInfo& entry = m_slotInfos[static_cast<std::size_t>(m_slotIndex)];
    m_slotTimer = entry.m_duration;  // +0x730
    if (m_material) {  // +0x740
        DeviceSceneManager()->SetMaterialEffects(
            m_material, glitch::core::vector3d<float>{entry.m_color[0], entry.m_color[1], entry.m_color[2]}, 0.1f, -1.0f);
    }
}

// 0x3a244c _ZN13SlotContainerD1Ev   (complete-object destructor)
// 0x3a250c _ZN13SlotContainerD2Ev   (base-object destructor, the same body)
// Empty body. The original resets the vtables, releases m_material, destroys m_slotInfos, frees the m_slots buffer and then
// runs OpenableContainer::~OpenableContainer. The implicit destructor chain does the same, in reverse declaration order.
// 0x3a24f0 _ZN13SlotContainerD0Ev is the compiler's deleting destructor and is not written here (see the ledger).
SlotContainer::~SlotContainer() {}

// 0x3a2640 _ZN13SlotContainer8InitPostEv
// OpenableContainer::InitPost first. When the "slots" text is not empty, its entries are parsed into m_slotInfos (the format is in the file comment). Each entry takes numPowers as the first
// number, duration as the second, and the colour ItemInstance::GetColor(numPowers) split into three bytes, each divided by 255 (red from bits 16..23, green from 8..15, blue from 0..7). Entries
// are appended in order, as the original's push-back does. With a visual, m_material is then replaced by SceneManager::GetMaterial(visual node, "GL_", true) of the device's scene manager
// (the first material whose name matches). The original's return value is not part of the void declaration.
void SlotContainer::InitPost() {
    OpenableContainer::InitPost();
    if (!m_slots.empty()) {  // *(this+457) != *(this+458) in the original
        std::istringstream in(m_slots);
        int numPowers = -1;  // +0x00 of the entry, read first
        int duration = 0;    // +0x04 of the entry, read second
        char separator = 0;
        while (!in.eof()) {
            in >> numPowers;
            in >> separator;
            in >> duration;
            if (!in.eof()) {
                in >> separator;
            }

            SlotInfo entry{};
            entry.m_numPowers = numPowers;
            entry.m_duration = duration;
            const int color = ItemInstance::GetColor(numPowers);
            entry.m_color[0] = ColourChannel(color, 16);  // BYTE2
            entry.m_color[1] = ColourChannel(color, 8);   // BYTE1
            entry.m_color[2] = ColourChannel(color, 0);   // BYTE0
            m_slotInfos.push_back(entry);
        }
    }
    if (m_visualObject != nullptr) {  // +0x2d8
        m_material = DeviceSceneManager()->GetMaterial(m_visualObject->m_node, "GL_", true);  // +0x740
    }
}


// 0x3a2bcc _ZN13SlotContainerC1EN10ObjectBase6GO_IDSE
// 0x3a2c54 _ZN13SlotContainerC2EN10ObjectBase6GO_IDSE
// The two constructors have the same body. The id goes to OpenableContainer(id). The vtables and the empty "slots" string are implicit. The two words the original sets after the base call are the
// index and the timer, both -1 (+0x72c, +0x730). The entry vector and the material start empty and null (+0x734 .. +0x73c,
// +0x740).
SlotContainer::SlotContainer(ObjectBase::GO_IDS id) : OpenableContainer(id) {
    m_slotIndex = -1;  // +0x72c
    m_slotTimer = -1;  // +0x730
}

// 0x3a2ce4 _ZN13SlotContainer17DeclarePropertiesEv
// OpenableContainer::DeclareProperties first (the properties of Container and of OpenableContainer), then "slots", a string
// property with an empty default, bound to m_slots.
void SlotContainer::DeclareProperties() {
    OpenableContainer::DeclareProperties();
    AddProperty("slots", m_slots);
}
