// Structs records, slice structs_3 (see include/pydata-accessors/w7_structs_3.hpp).
#include <cstring>

#include "pydata-accessors/array_element.hpp"
#include "pydata-accessors/element_table.hpp"
#include "pydata-accessors/struct_strides.hpp"
#include "pydata-accessors/w7_structs_2.hpp"  // Item family (superset layout)
#include "pydata-accessors/w7_structs_3.hpp"

namespace Structs {

// 0x4d4d38 _ZN7Structs8ArmorRefD2Ev
// 0x4d4e04 _ZN7Structs7BeltRefD2Ev
// 0x4d4ed0 _ZN7Structs7HelmRefD2Ev
// 0x4d4f9c _ZN7Structs8GloveRefD2Ev
// 0x4d5068 _ZN7Structs8BootsRefD2Ev
// 0x4d5134 _ZN7Structs8ValuableD2Ev
// 0x4d5200 _ZN7Structs6PotionD2Ev
// 0x4d52cc _ZN7Structs8GoldItemD2Ev
// 0x4d5398 _ZN7Structs4ItemD2Ev
// 0x4d5474 _ZN7Structs15ItemAudioVisualD2Ev
// 0x4d5418 _ZN7Structs15ItemAudioVisualD1Ev
ItemAudioVisual::~ItemAudioVisual() {
    if (Visual != nullptr) CustomFree(Visual);  // +0x10
}

// 0x4d5458 _ZN7Structs15ItemAudioVisualD0Ev
void DeletingDestructor(ItemAudioVisual* self) {
    self->ItemAudioVisual::~ItemAudioVisual();
    CustomFree(self);
}

// 0x4d53f0 _ZN7Structs15ItemAudioVisual8finalizeEv
void ItemAudioVisual::finalize() {
    if (Visual != nullptr) {
        CustomFree(Visual);
        VisualSize = 0;
        Visual = nullptr;
    }
}

// 0x4fc910 _ZN7Structs15ItemAudioVisual4readEP11IStreamBase
void ItemAudioVisual::read(IStreamBase* stream) {
    AudioDrop = StreamReader::readAs<std::int32_t>(stream);   // +0x4
    AudioPickup = StreamReader::readAs<std::int32_t>(stream);   // +0x8
    VisualSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    if (Visual != nullptr) CustomFree(Visual);               // +0x10
    Visual = ::operator new[](static_cast<std::size_t>(VisualSize) + 1, kPydataBufferHint);
    // The listing's readStringEx (BL 0x317454) reads only R0..R3: R1 the stream, R2 this destination, R3 the
    // length. The extra value Hex-Rays prints at the call site is a register residue, not an argument, so it is
    // not passed. The original leaves readStringEx's bool result in r0 and this read returns void, so that
    // residue is dropped (the string bytes and the NUL below are the same).
    StreamReader::readStringEx(stream, static_cast<char*>(Visual), VisualSize);
    static_cast<char*>(Visual)[VisualSize] = 0;
}

// 0x4d56fc _ZN7Structs17ItemBonusAttrListD2Ev
// 0x4d56a0 _ZN7Structs17ItemBonusAttrListD1Ev
ItemBonusAttrList::~ItemBonusAttrList() {
    if (list_entries != nullptr) CustomFree(list_entries);  // +0x8
}

// 0x4d56e0 _ZN7Structs17ItemBonusAttrListD0Ev
void DeletingDestructor(ItemBonusAttrList* self) {
    self->ItemBonusAttrList::~ItemBonusAttrList();
    CustomFree(self);
}

// 0x4d5678 _ZN7Structs17ItemBonusAttrList8finalizeEv
void ItemBonusAttrList::finalize() {
    if (list_entries != nullptr) {
        CustomFree(list_entries);
        list_entriesSize = 0;
        list_entries = nullptr;
    }
}

// 0x4ea954 _ZN7Structs17ItemBonusAttrList4readEP11IStreamBase
void ItemBonusAttrList::read(IStreamBase* stream) {
    list_entriesSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4 (count)
    if (list_entries != nullptr) CustomFree(list_entries);               // +0x8
    list_entries = ::operator new[](4 * static_cast<std::size_t>(list_entriesSize), kPydataBufferHint);
    auto* words = static_cast<std::int32_t*>(list_entries);
    for (std::uint32_t i = 0; i < list_entriesSize; ++i) {
        words[i] = StreamReader::readAs<std::int32_t>(stream);
    }
}

// 0x4d573c _ZN7Structs12ItemPowerRef8finalizeEv
void ItemPowerRef::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
}

// 0x4ecdc8 _ZN7Structs12ItemPowerRef4readEP11IStreamBase
// The table elements are AttrBonusEntry (vtable off_96B368, see 0x4fef00). Each element is constructed (vptr
// stored), then each element's read (vtable slot +0xc) runs in order, before the trailing words are read. Listing
// stride 16 (Structs::ListingStride::AttrBonusEntry), kept in the stride word; the host elements are
// sizeof(AttrBonusEntry) and reached through the typed pointer.
void ItemPowerRef::read(IStreamBase* stream) {
    StreamReader::readAs<std::int8_t>(stream, &Palette);   // +0x4
    SpecialEffect = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    AttrBonusListSize = StreamReader::readAs<std::uint32_t>(stream); // +0xc
    pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);     // +0x10 (old table)
    AttrBonusList = pydata::NewAndReadElementTable<Structs::AttrBonusEntry>(ListingStride::AttrBonusEntry, AttrBonusListSize, stream);
    Description = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    GoldBonusMultiplier = StreamReader::readAs<std::int32_t>(stream);  // +0x18
    SortingOrder = StreamReader::readAs<std::int32_t>(stream);  // +0x1c
    GoldBonus = StreamReader::readAs<std::int32_t>(stream);  // +0x20
    AttrMonopoly = StreamReader::readAs<std::int32_t>(stream);  // +0x24
}

// 0x4d5f38 _ZN7Structs11ItemPowerAR8finalizeEv
void ItemPowerAR::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1a0 _ZN7Structs11ItemPowerAR4readEP11IStreamBase
void ItemPowerAR::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d658c _ZN7Structs18ItemPowerAirDamage8finalizeEv
void ItemPowerAirDamage::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1dc _ZN7Structs18ItemPowerAirDamage4readEP11IStreamBase
void ItemPowerAirDamage::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d68ec _ZN7Structs17ItemPowerAllStats8finalizeEv
void ItemPowerAllStats::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1fc _ZN7Structs17ItemPowerAllStats4readEP11IStreamBase
void ItemPowerAllStats::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d607c _ZN7Structs14ItemPowerArmor8finalizeEv
void ItemPowerArmor::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1ac _ZN7Structs14ItemPowerArmor4readEP11IStreamBase
void ItemPowerArmor::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d59bc _ZN7Structs23ItemPowerAxeDamageBonus8finalizeEv
void ItemPowerAxeDamageBonus::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed16c _ZN7Structs23ItemPowerAxeDamageBonus4readEP11IStreamBase
void ItemPowerAxeDamageBonus::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d60e8 _ZN7Structs14ItemPowerBlock8finalizeEv
void ItemPowerBlock::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1b0 _ZN7Structs14ItemPowerBlock4readEP11IStreamBase
void ItemPowerBlock::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d61c0 _ZN7Structs17ItemPowerCritical8finalizeEv
void ItemPowerCritical::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1b8 _ZN7Structs17ItemPowerCritical4readEP11IStreamBase
void ItemPowerCritical::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d5ecc _ZN7Structs11ItemPowerDR8finalizeEv
void ItemPowerDR::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed19c _ZN7Structs11ItemPowerDR4readEP11IStreamBase
void ItemPowerDR::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d58e4 _ZN7Structs26ItemPowerDaggerDamageBonus8finalizeEv
void ItemPowerDaggerDamageBonus::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed164 _ZN7Structs26ItemPowerDaggerDamageBonus4readEP11IStreamBase
void ItemPowerDaggerDamageBonus::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d6010 _ZN7Structs15ItemPowerDamage8finalizeEv
void ItemPowerDamage::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1a8 _ZN7Structs15ItemPowerDamage4readEP11IStreamBase
void ItemPowerDamage::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d6814 _ZN7Structs18ItemPowerDexterity8finalizeEv
void ItemPowerDexterity::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1f4 _ZN7Structs18ItemPowerDexterity4readEP11IStreamBase
void ItemPowerDexterity::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d6154 _ZN7Structs14ItemPowerDodge8finalizeEv
void ItemPowerDodge::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1b4 _ZN7Structs14ItemPowerDodge4readEP11IStreamBase
void ItemPowerDodge::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d6664 _ZN7Structs20ItemPowerEarthDamage8finalizeEv
void ItemPowerEarthDamage::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1e4 _ZN7Structs20ItemPowerEarthDamage4readEP11IStreamBase
void ItemPowerEarthDamage::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d64b4 _ZN7Structs23ItemPowerEarthDotDamage8finalizeEv
void ItemPowerEarthDotDamage::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1d4 _ZN7Structs23ItemPowerEarthDotDamage4readEP11IStreamBase
void ItemPowerEarthDotDamage::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d6520 _ZN7Structs25ItemPowerElectricalDamage8finalizeEv
void ItemPowerElectricalDamage::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1d8 _ZN7Structs25ItemPowerElectricalDamage4readEP11IStreamBase
void ItemPowerElectricalDamage::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d67a8 _ZN7Structs18ItemPowerEndurance8finalizeEv
void ItemPowerEndurance::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1f0 _ZN7Structs18ItemPowerEndurance4readEP11IStreamBase
void ItemPowerEndurance::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d673c _ZN7Structs15ItemPowerEnergy8finalizeEv
void ItemPowerEnergy::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1ec _ZN7Structs15ItemPowerEnergy4readEP11IStreamBase
void ItemPowerEnergy::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d66d0 _ZN7Structs19ItemPowerFireDamage8finalizeEv
void ItemPowerFireDamage::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1e8 _ZN7Structs19ItemPowerFireDamage4readEP11IStreamBase
void ItemPowerFireDamage::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d63dc _ZN7Structs22ItemPowerFireDotDamage8finalizeEv
void ItemPowerFireDotDamage::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1cc _ZN7Structs22ItemPowerFireDotDamage4readEP11IStreamBase
void ItemPowerFireDotDamage::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d6370 _ZN7Structs11ItemPowerHP8finalizeEv
void ItemPowerHP::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1c8 _ZN7Structs11ItemPowerHP4readEP11IStreamBase
void ItemPowerHP::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d6298 _ZN7Structs16ItemPowerHPRegen8finalizeEv
void ItemPowerHPRegen::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1c0 _ZN7Structs16ItemPowerHPRegen4readEP11IStreamBase
void ItemPowerHPRegen::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d5bd8 _ZN7Structs18ItemPowerLifeLeech8finalizeEv
void ItemPowerLifeLeech::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed180 _ZN7Structs18ItemPowerLifeLeech4readEP11IStreamBase
void ItemPowerLifeLeech::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d6304 _ZN7Structs11ItemPowerMP8finalizeEv
void ItemPowerMP::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1c4 _ZN7Structs11ItemPowerMP4readEP11IStreamBase
void ItemPowerMP::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d622c _ZN7Structs16ItemPowerMPRegen8finalizeEv
void ItemPowerMPRegen::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1bc _ZN7Structs16ItemPowerMPRegen4readEP11IStreamBase
void ItemPowerMPRegen::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d5950 _ZN7Structs24ItemPowerMaceDamageBonus8finalizeEv
void ItemPowerMaceDamageBonus::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed168 _ZN7Structs24ItemPowerMaceDamageBonus4readEP11IStreamBase
void ItemPowerMaceDamageBonus::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d5b6c _ZN7Structs18ItemPowerManaLeech8finalizeEv
void ItemPowerManaLeech::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed17c _ZN7Structs18ItemPowerManaLeech4readEP11IStreamBase
void ItemPowerManaLeech::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d5878 _ZN7Structs25ItemPowerRangeDamageBonus8finalizeEv
void ItemPowerRangeDamageBonus::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed160 _ZN7Structs25ItemPowerRangeDamageBonus4readEP11IStreamBase
void ItemPowerRangeDamageBonus::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d5d1c _ZN7Structs18ItemPowerResistAir8finalizeEv
void ItemPowerResistAir::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed18c _ZN7Structs18ItemPowerResistAir4readEP11IStreamBase
void ItemPowerResistAir::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d5c44 _ZN7Structs18ItemPowerResistAll8finalizeEv
void ItemPowerResistAll::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed184 _ZN7Structs18ItemPowerResistAll4readEP11IStreamBase
void ItemPowerResistAll::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d5df4 _ZN7Structs20ItemPowerResistEarth8finalizeEv
void ItemPowerResistEarth::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed194 _ZN7Structs20ItemPowerResistEarth4readEP11IStreamBase
void ItemPowerResistEarth::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d5cb0 _ZN7Structs25ItemPowerResistElectrical8finalizeEv
void ItemPowerResistElectrical::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed188 _ZN7Structs25ItemPowerResistElectrical4readEP11IStreamBase
void ItemPowerResistElectrical::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d5e60 _ZN7Structs19ItemPowerResistFire8finalizeEv
void ItemPowerResistFire::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed198 _ZN7Structs19ItemPowerResistFire4readEP11IStreamBase
void ItemPowerResistFire::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d5d88 _ZN7Structs20ItemPowerResistWater8finalizeEv
void ItemPowerResistWater::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed190 _ZN7Structs20ItemPowerResistWater4readEP11IStreamBase
void ItemPowerResistWater::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d5b00 _ZN7Structs22ItemPowerSpellCritical8finalizeEv
void ItemPowerSpellCritical::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed178 _ZN7Structs22ItemPowerSpellCritical4readEP11IStreamBase
void ItemPowerSpellCritical::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d5a94 _ZN7Structs19ItemPowerSpellToHit8finalizeEv
void ItemPowerSpellToHit::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed174 _ZN7Structs19ItemPowerSpellToHit4readEP11IStreamBase
void ItemPowerSpellToHit::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d580c _ZN7Structs25ItemPowerStaffDamageBonus8finalizeEv
void ItemPowerStaffDamageBonus::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed15c _ZN7Structs25ItemPowerStaffDamageBonus4readEP11IStreamBase
void ItemPowerStaffDamageBonus::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d6880 _ZN7Structs17ItemPowerStrength8finalizeEv
void ItemPowerStrength::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1f8 _ZN7Structs17ItemPowerStrength4readEP11IStreamBase
void ItemPowerStrength::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d5a28 _ZN7Structs25ItemPowerSwordDamageBonus8finalizeEv
void ItemPowerSwordDamageBonus::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed170 _ZN7Structs25ItemPowerSwordDamageBonus4readEP11IStreamBase
void ItemPowerSwordDamageBonus::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d5fa4 _ZN7Structs14ItemPowerToHit8finalizeEv
void ItemPowerToHit::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1a4 _ZN7Structs14ItemPowerToHit4readEP11IStreamBase
void ItemPowerToHit::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d57a0 _ZN7Structs24ItemPowerWandDamageBonus8finalizeEv
void ItemPowerWandDamageBonus::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed158 _ZN7Structs24ItemPowerWandDamageBonus4readEP11IStreamBase
void ItemPowerWandDamageBonus::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d65f8 _ZN7Structs20ItemPowerWaterDamage8finalizeEv
void ItemPowerWaterDamage::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1e0 _ZN7Structs20ItemPowerWaterDamage4readEP11IStreamBase
void ItemPowerWaterDamage::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

// 0x4d6448 _ZN7Structs23ItemPowerWaterDotDamage8finalizeEv
void ItemPowerWaterDotDamage::finalize() {
    if (AttrBonusList != nullptr) {
        pydata::DeleteElementTable<Structs::AttrBonusEntry>(AttrBonusList);
        AttrBonusListSize = 0;
        AttrBonusList = nullptr;
    }
    ItemPowerRef::finalize();
}

// thunk: b 0x4ecdc8, forwards to ItemPowerRef::read
// 0x4ed1d0 _ZN7Structs23ItemPowerWaterDotDamage4readEP11IStreamBase
void ItemPowerWaterDotDamage::read(IStreamBase* stream) {
    ItemPowerRef::read(stream);
}

}  // namespace Structs
