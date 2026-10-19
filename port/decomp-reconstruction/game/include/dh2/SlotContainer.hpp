// SlotContainer: an OpenableContainer that cycles through a list of slot entries. The "slots" property is a
// text list that InitPost parses into m_slotInfos. Update walks the list, and for each entry it sets the
// container's material to the entry's colour for the entry's duration.
// GO_IDS 8. Original 32-bit size not recovered: the last member ends at +0x743 (OpenableContainer is 0x714).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3a2bcc / 0x3a2c54, dtor 0x3a244c / 0x3a24f0 / 0x3a250c).
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"

#include "dh2/OpenableContainer.hpp"

namespace glitch {
namespace video {
class CMaterial;
}  // namespace video
}  // namespace glitch

class SlotContainer : public OpenableContainer {
public:
    // One entry of the slot cycle, parsed from the "slots" property. Original 32-bit size 0x14 (20).
    struct SlotInfo {
        std::int32_t m_numPowers;                                       // +0x00 first value of the entry; GetLootFixedNumPowers returns it
        std::int32_t m_duration;                                        // +0x04 how long the entry lasts; loaded into m_slotTimer
        float m_color[3];                                               // +0x08 colour of the entry, bytes of ItemInstance::GetColor divided by 255
    };

    explicit SlotContainer(ObjectBase::GO_IDS id);                      // 0x3a2bcc (C1) / 0x3a2c54 (C2)
    ~SlotContainer() override;                                          // 0x3a244c (D1), 0x3a24f0 (D0), 0x3a250c (D2)

    // Overrides of OpenableContainer / Container / GameObject slots, in vtable order.
    void DeclareProperties() override;                                  // slot 0x18: 0x3a2ce4 "slots"
    void InitPost() override;                                           // slot 0x1c: 0x3a2640 parses m_slots, then looks up the material by the visual's name
    void Update() override;                                             // slot 0x2c: 0x3a20d8 steps m_slotIndex when m_slotTimer runs out, while the state is not ACTIVATE or OPENED
    bool IsUpdatable() const override;                                  // slot 0x38: 0x3a2090 true
    int GetLootFixedNumPowers() const override;                         // slot 0xe0: 0x3a2098 m_numPowers of entry m_slotIndex, -1 when there are no entries

    // OpenableContainer occupies +0x00 .. +0x713.
    std::string m_slots;                                                // +0x714 property "slots", text of the entry list (24 bytes in the original)
    int m_slotIndex;                                                    // +0x72c index of the current entry in m_slotInfos, -1 before the first Update
    int m_slotTimer;                                                    // +0x730 time left on the current entry, -1 in the ctor
    std::vector<SlotInfo> m_slotInfos;                                  // +0x734 parsed entries (12 bytes: begin, end, capacity)
    boost::intrusive_ptr<glitch::video::CMaterial> m_material;          // +0x740 material whose effects follow the current entry colour
};
