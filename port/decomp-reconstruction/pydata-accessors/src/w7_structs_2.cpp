// Structs::X destructors, finalize and read for slice structs_2 (pydata-accessors wave 7).
// Bodies follow the Hex-Rays pseudocode (tools/decomp_extract.py --address). Each function carries its
// address and mangled symbol. Declarations are in include/pydata-accessors/w7_structs_2.hpp.
//
// Element arrays: a pointer field points at element data. The 8 bytes before it hold the stride and the
// count (the listing's new[](stride * count + 8) block). Every element table is built, read and destroyed through
// pydata::NewElementTable / ReadElementTable / DeleteElementTable (element_table.hpp): the elements are host objects
// constructed in place, reached through a typed pointer, and the original 32-bit stride (Structs::ListingStride,
// struct_strides.hpp) is only written to the stride word. A host record is never addressed with the 32-bit stride.
//
// PlayEffect and ExecScript are declared in script_cmd.hpp without these methods.
#include "pydata-accessors/w7_structs_2.hpp"

#include <cstddef>
#include <cstdint>
#include <cstring>
#include <tuple>

#include "pydata-accessors/element_table.hpp"
#include "pydata-accessors/struct_strides.hpp"

namespace Structs {
namespace {

// new[](4 * count, 1) of int32 words, each read with readAs<int> in order.
void* ReadInt32Array(IStreamBase* stream, std::uint32_t count) {
    auto* data = static_cast<std::int32_t*>(::operator new[](std::size_t{4} * count, kPydataBufferHint));
    for (std::uint32_t i = 0; i < count; ++i) {
        data[i] = StreamReader::readAs<std::int32_t>(stream);
    }
    return data;
}

// The string read of the listing: free the old buffer if any (not zeroed), allocate len + 1, read len
// bytes with hint 0, then store the terminating zero at buf[len].
void ReadStringField(IStreamBase* stream, void*& slot, std::uint32_t len) {
    if (slot != nullptr) CustomFree(slot);
    auto* buf = static_cast<char*>(::operator new[](std::size_t{len} + 1, kPydataBufferHint));
    slot = buf;
    StreamReader::readStringEx(stream, buf, len);
    buf[len] = 0;
}

// Shared bodies of the ItemBase-derived records (WeaponRef, RangedWeaponRef, ShieldRef, JewelryRef,
// ArmorRef, Valuable, Potion, GoldItem, Item). All of them use m_w1, m_w2 (ItemBase), m_w19, m_w20.

// finalize, before ItemBase::finalize: frees m_w2 and m_w20 and zeroes the words the listing zeroes.
template <class T>
void FinalizeItemRefWords(T& self) {
    if (self.IconName != nullptr) {  // +0x8
        CustomFree(self.IconName);
        self.IconNameSize = 0;  // +0x4
        self.IconName = nullptr;
    }
    if (self.ModularModule != nullptr) {  // +0x50
        CustomFree(self.ModularModule);
        self.ModularModuleSize = 0;  // +0x4c
        self.ModularModule = nullptr;
    }
}

// destructor body: frees m_w2 and m_w20 (no zeroing), the base destructor runs after it.
template <class T>
void ReleaseItemRefWords(T& self) {
    if (self.IconName != nullptr) CustomFree(self.IconName);  // +0x8
    if (self.ModularModule != nullptr) CustomFree(self.ModularModule);  // +0x50
}

// read body shared by the family: words 17..40 (+0x44..+0xa0). Each class's read runs ItemBase::read(stream)
// (the listing's BL 0x4ec47c, defined in tb_accessors-Structs-0.cpp) before calling this helper, because a
// qualified base call needs an object and this helper is a free function. Verified against every call site
// (WeaponRef 0x4f7b18, RangedWeaponRef 0x4f83c0, ShieldRef 0x4f8c68, JewelryRef 0x4f9510, ArmorRef 0x4f9db8,
// Valuable 0x4fa670, Potion 0x4faf18, GoldItem 0x4fb7c0): each is `ItemBase::read(this, a2)` first, then
// +0x44..+0xa0 in order. The readStringEx "5th 64-bit argument" Hex-Rays prints is a register residue the
// callee (0x317454) never reads, so it is not passed.
// The words +0x44..+0xa0 of every ItemBase-derived record, in file order. The members are named per class in the
// original header (items_pystruct.h), so each class supplies its own list; the read below is shared.

inline auto ItemRefMembers(Item& s) {
    return std::tie(s.Name, s.Material, s.ModularModuleSize, s.ModularModule, s.AudioVisualID, s.Type, s.BaseStat, s.BaseProp, s.BaseElement, s.EquipmentSlottingType, s.Value, s.GoldValueMultiplier, s.LevelRequirement, s.StrengthRequirement, s.DexterityRequirement, s.EnduranceRequirement, s.EnergyRequirement, s.ClassRequirement, s.Param1, s.Param2, s.Param3, s.Param4, s.Param5, s.Param6);
}

inline auto ItemRefMembers(GoldItem& s) {
    return std::tie(s.Name, s.Material, s.ModularModuleSize, s.ModularModule, s.AudioVisualID, s.Type, s.Unused10, s.Unused11, s.Unused12, s.EquipmentSlottingType, s.MinValue, s.MaxValue, s.Unused1, s.Unused2, s.Unused3, s.Unused4, s.Unused5, s.Unused6, s.Unused7, s.Unused8, s.Unused9, s.Param4, s.Param5, s.Param6);
}

inline auto ItemRefMembers(Potion& s) {
    return std::tie(s.Name, s.Material, s.ModularModuleSize, s.ModularModule, s.AudioVisualID, s.Type, s.Unused10, s.Unused11, s.Unused12, s.EquipmentSlottingType, s.Value, s.GoldValueMultiplier, s.HP_Recovery_Percentage, s.HP_Recovery_Minimum, s.MP_Recovery_Percentage, s.MP_Recovery_Minimum, s.Unused1, s.Unused2, s.Unused3, s.Unused4, s.Unused5, s.Param4, s.Param5, s.Param6);
}

inline auto ItemRefMembers(Valuable& s) {
    return std::tie(s.Name, s.Material, s.ModularModuleSize, s.ModularModule, s.AudioVisualID, s.Type, s.Unused10, s.Unused11, s.Unused12, s.EquipmentSlottingType, s.Value, s.GoldValueMultiplier, s.LevelRequirement, s.StrengthRequirement, s.DexterityRequirement, s.EnduranceRequirement, s.EnergyRequirement, s.ClassRequirement, s.Param1, s.Param2, s.Param3, s.Param4, s.Param5, s.Param6);
}

inline auto ItemRefMembers(ArmorRef& s) {
    return std::tie(s.Name, s.Material, s.ModularModuleSize, s.ModularModule, s.AudioVisualID, s.Type, s.Unused10, s.Unused11, s.Unused12, s.EquipmentSlottingType, s.Value, s.GoldValueMultiplier, s.LevelRequirement, s.StrengthRequirement, s.DexterityRequirement, s.EnduranceRequirement, s.EnergyRequirement, s.ClassRequirement, s.ArmorRating, s.Unused1, s.Unused2, s.Param4, s.Param5, s.Param6);
}

inline auto ItemRefMembers(JewelryRef& s) {
    return std::tie(s.Name, s.Material, s.ModularModuleSize, s.ModularModule, s.AudioVisualID, s.Type, s.Unused10, s.Unused11, s.Unused12, s.EquipmentSlottingType, s.Value, s.GoldValueMultiplier, s.LevelRequirement, s.StrengthRequirement, s.DexterityRequirement, s.EnduranceRequirement, s.EnergyRequirement, s.ClassRequirement, s.Unused1, s.Unused2, s.Unused3, s.Param4, s.Param5, s.Param6);
}

inline auto ItemRefMembers(ShieldRef& s) {
    return std::tie(s.Name, s.Material, s.ModularModuleSize, s.ModularModule, s.AudioVisualID, s.Type, s.Unused10, s.Unused11, s.Unused12, s.EquipmentSlottingType, s.Value, s.GoldValueMultiplier, s.LevelRequirement, s.StrengthRequirement, s.DexterityRequirement, s.EnduranceRequirement, s.EnergyRequirement, s.ClassRequirement, s.ArmorRating, s.BlockModifier, s.Unused1, s.Param4, s.Param5, s.Param6);
}

inline auto ItemRefMembers(RangedWeaponRef& s) {
    return std::tie(s.Name, s.Material, s.ModularModuleSize, s.ModularModule, s.AudioVisualID, s.Type, s.BaseStat, s.BaseProp, s.BaseElement, s.EquipmentSlottingType, s.Value, s.GoldValueMultiplier, s.LevelRequirement, s.StrengthRequirement, s.DexterityRequirement, s.EnduranceRequirement, s.EnergyRequirement, s.ClassRequirement, s.minDamage, s.maxDamage, s.DmgType, s.minRange, s.maxRange, s.ProjectileID);
}

inline auto ItemRefMembers(WeaponRef& s) {
    return std::tie(s.Name, s.Material, s.ModularModuleSize, s.ModularModule, s.AudioVisualID, s.Type, s.BaseStat, s.BaseProp, s.BaseElement, s.EquipmentSlottingType, s.Value, s.GoldValueMultiplier, s.LevelRequirement, s.StrengthRequirement, s.DexterityRequirement, s.EnduranceRequirement, s.EnergyRequirement, s.ClassRequirement, s.minDamage, s.maxDamage, s.DmgType, s.Param4, s.maxRange, s.Param6);
}

template <class T>
void ReadItemRefWords(T& self, IStreamBase* stream) {
    auto w = ItemRefMembers(self);
    std::get<0>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x44
    std::get<1>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x48
    std::get<2>(w) = StreamReader::readAs<std::uint32_t>(stream);  // +0x4c, length of the string
    ReadStringField(stream, std::get<3>(w), std::get<2>(w));  // +0x50
    std::get<4>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x54
    std::get<5>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x58
    std::get<6>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x5c
    std::get<7>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x60
    std::get<8>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x64
    std::get<9>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x68
    std::get<10>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x6c
    std::get<11>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x70
    std::get<12>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x74
    std::get<13>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x78
    std::get<14>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x7c
    std::get<15>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x80
    std::get<16>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x84
    std::get<17>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x88
    std::get<18>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x8c
    std::get<19>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x90
    std::get<20>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x94
    std::get<21>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x98
    std::get<22>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0x9c
    std::get<23>(w) = StreamReader::readAs<std::int32_t>(stream);  // +0xa0
}

}  // namespace

// ---------------------------------------------------------------- v2QuestAutomatic (base v2QuestObjectiveStub)

// 0x4d0054 _ZN7Structs16v2QuestAutomatic8finalizeEv
void v2QuestAutomatic::finalize() {
    if (Str1 != nullptr) {  // +0x14
        CustomFree(Str1);
        Str1Size = 0;  // +0x10
        Str1 = nullptr;
    }
    if (Str2 != nullptr) {  // +0x1c
        CustomFree(Str2);
        Str2Size = 0;  // +0x18
        Str2 = nullptr;
    }
    v2QuestObjectiveStub::finalize();
}

// 0x4d01e0 _ZN7Structs16v2QuestAutomaticD2Ev
// 0x4d016c _ZN7Structs16v2QuestAutomaticD1Ev
// The base destructor (implicit, runs after this body) frees m_w5 and m_w7 again, as the listing does.
v2QuestAutomatic::~v2QuestAutomatic() {
    if (Str1 != nullptr) CustomFree(Str1);  // +0x14
    if (Str2 != nullptr) CustomFree(Str2);  // +0x1c
}

// 0x4d01c4 _ZN7Structs16v2QuestAutomaticD0Ev
void DeletingDestructor(v2QuestAutomatic* self) {
    self->v2QuestAutomatic::~v2QuestAutomatic();
    CustomFree(self);
}

// 0x504a90 _ZN7Structs16v2QuestAutomatic4readEP11IStreamBase
// thunk: the whole body is `B _ZN7Structs20v2QuestObjectiveStub4readEP11IStreamBase` (0x504818), so this is a
// forwarder with no body of its own. Hex-Rays prints the same single call. v2QuestAutomatic derives from
// v2QuestObjectiveStub (w7_structs_2.hpp), so the qualified call compiles.
void v2QuestAutomatic::read(IStreamBase* stream) {
    v2QuestObjectiveStub::read(stream);
}

// ---------------------------------------------------------------- v2Quest (no base in the listing)

// 0x4d06c0 _ZN7Structs7v2QuestD2Ev
// 0x4d04dc _ZN7Structs7v2QuestD1Ev
// The listing calls the three subobject destructors (+0xa0, +0x68, +0x3c) after the array frees. The port
// declares them as members in that order, so the compiler destroys them in the same order after this body.


// ---------------------------------------------------------------- v2CondAnd (no base)

// 0x4d09b4 _ZN7Structs9v2CondAnd8finalizeEv
void v2CondAnd::finalize() {
    if (Conds != nullptr) {  // +0x8
        pydata::DeleteElementTable<v2ConditionStub>(Conds);
        CondsSize = 0;  // +0x4
        Conds = nullptr;
    }
}

// 0x505970 _ZN7Structs9v2CondAnd4readEP11IStreamBase
// Count word (+0x4), then the old v2ConditionStub table (+0x8) is destroyed, a new one of count elements is built
// (listing stride 16, vtable off_96A318 = v2ConditionStub) and every element reads itself; the word at +0xc comes
// last. The original returns that last readAs result; read is void here.
void v2CondAnd::read(IStreamBase* stream) {
    CondsSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    pydata::DeleteElementTable<v2ConditionStub>(Conds);  // +0x8
    Conds = pydata::NewAndReadElementTable<v2ConditionStub>(ListingStride::v2ConditionStub, CondsSize, stream);
    Type = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4d0ab0 _ZN7Structs9v2CondAndD2Ev
// 0x4d0a18 _ZN7Structs9v2CondAndD1Ev
v2CondAnd::~v2CondAnd() {
    pydata::DeleteElementTable<v2ConditionStub>(Conds);  // +0x8, v2ConditionStub elements, listing stride 16
}

// 0x4d0a94 _ZN7Structs9v2CondAndD0Ev
void DeletingDestructor(v2CondAnd* self) {
    self->v2CondAnd::~v2CondAnd();
    CustomFree(self);
}

// ---------------------------------------------------------------- SpawnGroup (no base)

// 0x4d0b2c _ZN7Structs10SpawnGroup8finalizeEv
void SpawnGroup::finalize() {
    if (Spawns != nullptr) {  // +0x10
        pydata::DeleteElementTable<SpawnInfo>(Spawns);
        SpawnsSize = 0;  // +0xc
        Spawns = nullptr;
    }
}

// 0x4eb244 _ZN7Structs10SpawnGroup4readEP11IStreamBase
void SpawnGroup::read(IStreamBase* stream) {
    ActiveSpotOnly = StreamReader::readAs<bool>(stream);  // +0x4
    Delay = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    SpawnsSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    pydata::DeleteElementTable<SpawnInfo>(Spawns);  // +0x10
    Spawns = pydata::NewAndReadElementTable<SpawnInfo>(ListingStride::SpawnInfo, SpawnsSize, stream);
}

// 0x4d0c28 _ZN7Structs10SpawnGroupD2Ev
// 0x4d0b90 _ZN7Structs10SpawnGroupD1Ev
SpawnGroup::~SpawnGroup() {
    pydata::DeleteElementTable<SpawnInfo>(Spawns);  // +0x10, SpawnInfo elements, listing stride 16
}

// 0x4d0c0c _ZN7Structs10SpawnGroupD0Ev
void DeletingDestructor(SpawnGroup* self) {
    self->SpawnGroup::~SpawnGroup();
    CustomFree(self);
}

// ---------------------------------------------------------------- CharSounds (no base)

// 0x4d0ca4 _ZN7Structs10CharSounds8finalizeEv
void CharSounds::finalize() {
    if (Die != nullptr) {  // +0x8
        CustomFree(Die);
        DieSize = 0;  // +0x4
        Die = nullptr;
    }
    if (Hurt != nullptr) {  // +0x10
        CustomFree(Hurt);
        HurtSize = 0;  // +0xc
        Hurt = nullptr;
    }
    if (ImpactVsFlesh != nullptr) {  // +0x18
        CustomFree(ImpactVsFlesh);
        ImpactVsFleshSize = 0;  // +0x14
        ImpactVsFlesh = nullptr;
    }
    if (ImpactVsMetal != nullptr) {  // +0x20
        CustomFree(ImpactVsMetal);
        ImpactVsMetalSize = 0;  // +0x1c
        ImpactVsMetal = nullptr;
    }
}

// 0x4eade4 _ZN7Structs10CharSounds4readEP11IStreamBase
void CharSounds::read(IStreamBase* stream) {
    DieSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    if (Die != nullptr) CustomFree(Die);  // +0x8
    Die = ReadInt32Array(stream, DieSize);
    HurtSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    if (Hurt != nullptr) CustomFree(Hurt);  // +0x10
    Hurt = ReadInt32Array(stream, HurtSize);
    ImpactVsFleshSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x14
    if (ImpactVsFlesh != nullptr) CustomFree(ImpactVsFlesh);  // +0x18
    ImpactVsFlesh = ReadInt32Array(stream, ImpactVsFleshSize);
    ImpactVsMetalSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x1c
    if (ImpactVsMetal != nullptr) CustomFree(ImpactVsMetal);  // +0x20
    ImpactVsMetal = ReadInt32Array(stream, ImpactVsMetalSize);
    IsFlesh = StreamReader::readAs<bool>(stream);  // +0x24
    IsMetallic = StreamReader::readAs<bool>(stream);  // +0x25
}

// 0x4d0dac _ZN7Structs10CharSoundsD2Ev
// 0x4d0d20 _ZN7Structs10CharSoundsD1Ev
CharSounds::~CharSounds() {
    if (Die != nullptr) CustomFree(Die);  // +0x8
    if (Hurt != nullptr) CustomFree(Hurt);  // +0x10
    if (ImpactVsFlesh != nullptr) CustomFree(ImpactVsFlesh);  // +0x18
    if (ImpactVsMetal != nullptr) CustomFree(ImpactVsMetal);  // +0x20
}

// 0x4d0d90 _ZN7Structs10CharSoundsD0Ev
void DeletingDestructor(CharSounds* self) {
    self->CharSounds::~CharSounds();
    CustomFree(self);
}

// ---------------------------------------------------------------- Sound (no base)

// 0x4d0e1c _ZN7Structs5Sound8finalizeEv
void Sound::finalize() {
    if (FileName != nullptr) {  // +0x10
        CustomFree(FileName);
        FileNameSize = 0;  // +0xc
        FileName = nullptr;
    }
}

// 0x4eb89c _ZN7Structs5Sound4readEP11IStreamBase
void Sound::read(IStreamBase* stream) {
    Bank = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Channel = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    FileNameSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    ReadStringField(stream, FileName, FileNameSize);  // +0x10
    Format = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    Group = StreamReader::readAs<std::int32_t>(stream);  // +0x18
    LoadType = StreamReader::readAs<std::int32_t>(stream);  // +0x1c
    Priority = StreamReader::readAs<std::int32_t>(stream);  // +0x20
    Repeat = StreamReader::readAs<std::int32_t>(stream);  // +0x24
    Volume = StreamReader::readAs<std::int32_t>(stream);  // +0x28
}

// 0x4d0ea0 _ZN7Structs5SoundD2Ev
// 0x4d0e44 _ZN7Structs5SoundD1Ev
Sound::~Sound() {
    if (FileName != nullptr) CustomFree(FileName);  // +0x10
}

// 0x4d0e84 _ZN7Structs5SoundD0Ev
void DeletingDestructor(Sound* self) {
    self->Sound::~Sound();
    CustomFree(self);
}

// ---------------------------------------------------------------- SoundGroup (no base)

// 0x4d0ee0 _ZN7Structs10SoundGroup8finalizeEv
void SoundGroup::finalize() {
    if (EnteringBus != nullptr) {  // +0x8
        CustomFree(EnteringBus);
        EnteringBusSize = 0;  // +0x4
        EnteringBus = nullptr;
    }
}

// 0x4eb784 _ZN7Structs10SoundGroup4readEP11IStreamBase
void SoundGroup::read(IStreamBase* stream) {
    EnteringBusSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    ReadStringField(stream, EnteringBus, EnteringBusSize);  // +0x8
    Positioning3D = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4d0f64 _ZN7Structs10SoundGroupD2Ev
// 0x4d0f08 _ZN7Structs10SoundGroupD1Ev
SoundGroup::~SoundGroup() {
    if (EnteringBus != nullptr) CustomFree(EnteringBus);  // +0x8
}

// 0x4d0f48 _ZN7Structs10SoundGroupD0Ev
void DeletingDestructor(SoundGroup* self) {
    self->SoundGroup::~SoundGroup();
    CustomFree(self);
}

// ---------------------------------------------------------------- HideHUD (base HideFlash)

// 0x4d30ec _ZN7Structs7HideHUD8finalizeEv
void HideHUD::finalize() {
    if (Name != nullptr) {  // +0x10, HideFlash field
        CustomFree(Name);
        NameSize = 0;  // +0xc
        Name = nullptr;
    }
    HideFlash::finalize();
}

// 0x5021b4 _ZN7Structs7HideHUD4readEP11IStreamBase
// Forwarder: the listing is a 4-byte thunk to HideFlash::read (b #0x...), which is the whole body.
void HideHUD::read(IStreamBase* stream) {
    HideFlash::read(stream);
}

// 0x4d322c _ZN7Structs7HideHUDD2Ev
// 0x4d31c8 _ZN7Structs7HideHUDD1Ev
// The base destructor (implicit, runs after this body) frees m_w4 again, as the listing does.
HideHUD::~HideHUD() {
    if (Name != nullptr) CustomFree(Name);  // +0x10
}

// 0x4d3210 _ZN7Structs7HideHUDD0Ev
void DeletingDestructor(HideHUD* self) {
    self->HideHUD::~HideHUD();
    CustomFree(self);
}

// ---------------------------------------------------------------- ShowHUD (base ShowFlash)

// 0x4d32a4 _ZN7Structs7ShowHUD8finalizeEv
void ShowHUD::finalize() {
    if (Name != nullptr) {  // +0x10, ShowFlash field
        CustomFree(Name);
        NameSize = 0;  // +0xc
        Name = nullptr;
    }
    ShowFlash::finalize();
}

// 0x5022e0 _ZN7Structs7ShowHUD4readEP11IStreamBase
// Forwarder: the listing is a 4-byte thunk to ShowFlash::read, which is the whole body.
void ShowHUD::read(IStreamBase* stream) {
    ShowFlash::read(stream);
}

// 0x4d33e4 _ZN7Structs7ShowHUDD2Ev
// 0x4d3380 _ZN7Structs7ShowHUDD1Ev
// The base destructor (implicit, runs after this body) frees m_w4 again, as the listing does.
ShowHUD::~ShowHUD() {
    if (Name != nullptr) CustomFree(Name);  // +0x10
}

// 0x4d33c8 _ZN7Structs7ShowHUDD0Ev
void DeletingDestructor(ShowHUD* self) {
    self->ShowHUD::~ShowHUD();
    CustomFree(self);
}

// ---------------------------------------------------------------- SceneFile (no base)

// 0x4d3ab8 _ZN7Structs9SceneFile8finalizeEv
void SceneFile::finalize() {
    if (Name != nullptr) {  // +0x8
        CustomFree(Name);
        NameSize = 0;  // +0x4
        Name = nullptr;
    }
}

// 0x4dd4ec _ZN7Structs9SceneFile4readEP11IStreamBase
// The listing returns the readStringEx result (a bool); the port's read returns void.
void SceneFile::read(IStreamBase* stream) {
    NameSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    ReadStringField(stream, Name, NameSize);  // +0x8
}

// 0x4d3b3c _ZN7Structs9SceneFileD2Ev
// 0x4d3ae0 _ZN7Structs9SceneFileD1Ev
SceneFile::~SceneFile() {
    if (Name != nullptr) CustomFree(Name);  // +0x8
}

// 0x4d3b20 _ZN7Structs9SceneFileD0Ev
void DeletingDestructor(SceneFile* self) {
    self->SceneFile::~SceneFile();
    CustomFree(self);
}

// ---------------------------------------------------------------- ItemTypeListList (no base)

// 0x4d3b7c _ZN7Structs16ItemTypeListList8finalizeEv
void ItemTypeListList::finalize() {
    if (list_entries != nullptr) {  // +0x8
        CustomFree(list_entries);
        list_entriesSize = 0;  // +0x4
        list_entries = nullptr;
    }
}

// 0x4dd2c4 _ZN7Structs16ItemTypeListList4readEP11IStreamBase
void ItemTypeListList::read(IStreamBase* stream) {
    list_entriesSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    if (list_entries != nullptr) CustomFree(list_entries);  // +0x8
    auto* bytes = static_cast<std::int8_t*>(::operator new[](list_entriesSize, kPydataBufferHint));
    list_entries = bytes;
    for (std::uint32_t i = 0; i < list_entriesSize; ++i) {
        StreamReader::readAs<std::int8_t>(stream, &bytes[i]);
    }
}

// 0x4d3c00 _ZN7Structs16ItemTypeListListD2Ev
// 0x4d3ba4 _ZN7Structs16ItemTypeListListD1Ev
ItemTypeListList::~ItemTypeListList() {
    if (list_entries != nullptr) CustomFree(list_entries);  // +0x8
}

// 0x4d3be4 _ZN7Structs16ItemTypeListListD0Ev
void DeletingDestructor(ItemTypeListList* self) {
    self->ItemTypeListList::~ItemTypeListList();
    CustomFree(self);
}

// ---------------------------------------------------------------- Merchant (no base)

// 0x4d3c40 _ZN7Structs8Merchant8finalizeEv
void Merchant::finalize() {
    if (MerchandiseList != nullptr) {  // +0x10
        pydata::DeleteElementTable<MerchandiseListEntry>(MerchandiseList);
        MerchandiseListSize = 0;  // +0xc
        MerchandiseList = nullptr;
    }
}

// 0x4ff604 _ZN7Structs8Merchant4readEP11IStreamBase
void Merchant::read(IStreamBase* stream) {
    BuyMultiplier = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    SellMultiplier = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    MerchandiseListSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    pydata::DeleteElementTable<MerchandiseListEntry>(MerchandiseList);  // +0x10
    MerchandiseList = pydata::NewAndReadElementTable<MerchandiseListEntry>(ListingStride::MerchandiseListEntry, MerchandiseListSize, stream);
}

// 0x4d3d44 _ZN7Structs8MerchantD2Ev
// 0x4d3ca8 _ZN7Structs8MerchantD1Ev
Merchant::~Merchant() {
    pydata::DeleteElementTable<MerchandiseListEntry>(MerchandiseList);  // +0x10, MerchandiseListEntry elements, listing stride 12
}

// 0x4d3d28 _ZN7Structs8MerchantD0Ev
void DeletingDestructor(Merchant* self) {
    self->Merchant::~Merchant();
    CustomFree(self);
}

// ---------------------------------------------------------------- TileOffsetList (no base)

// 0x4d3dc4 _ZN7Structs14TileOffsetList8finalizeEv
void TileOffsetList::finalize() {
    if (list_entries != nullptr) {  // +0x8
        pydata::DeleteElementTable<TileOffset>(list_entries);
        list_entriesSize = 0;  // +0x4
        list_entries = nullptr;
    }
}

// 0x4dc4e0 _ZN7Structs14TileOffsetList4readEP11IStreamBase
void TileOffsetList::read(IStreamBase* stream) {
    list_entriesSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    pydata::DeleteElementTable<TileOffset>(list_entries);  // +0x8
    list_entries = pydata::NewAndReadElementTable<TileOffset>(ListingStride::TileOffset, list_entriesSize, stream);
}

// 0x4d3ec0 _ZN7Structs14TileOffsetListD2Ev
// 0x4d3e28 _ZN7Structs14TileOffsetListD1Ev
TileOffsetList::~TileOffsetList() {
    pydata::DeleteElementTable<TileOffset>(list_entries);  // +0x8, TileOffset elements, listing stride 8
}

// 0x4d3ea4 _ZN7Structs14TileOffsetListD0Ev
void DeletingDestructor(TileOffsetList* self) {
    self->TileOffsetList::~TileOffsetList();
    CustomFree(self);
}

// ---------------------------------------------------------------- NumProbList (no base)

// 0x4d3f3c _ZN7Structs11NumProbList8finalizeEv
void NumProbList::finalize() {
    if (list_entries != nullptr) {  // +0x8
        pydata::DeleteElementTable<NumProb>(list_entries);
        list_entriesSize = 0;  // +0x4
        list_entries = nullptr;
    }
}

// 0x4dc638 _ZN7Structs11NumProbList4readEP11IStreamBase
void NumProbList::read(IStreamBase* stream) {
    list_entriesSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    pydata::DeleteElementTable<NumProb>(list_entries);  // +0x8
    list_entries = pydata::NewAndReadElementTable<NumProb>(ListingStride::NumProb, list_entriesSize, stream);
}

// 0x4d4038 _ZN7Structs11NumProbListD2Ev
// 0x4d3fa0 _ZN7Structs11NumProbListD1Ev
NumProbList::~NumProbList() {
    pydata::DeleteElementTable<NumProb>(list_entries);  // +0x8, NumProb elements, listing stride 8
}

// 0x4d401c _ZN7Structs11NumProbListD0Ev
void DeletingDestructor(NumProbList* self) {
    self->NumProbList::~NumProbList();
    CustomFree(self);
}

// ---------------------------------------------------------------- ItemListEntryList (no base)

// 0x4d40b4 _ZN7Structs17ItemListEntryList8finalizeEv
void ItemListEntryList::finalize() {
    if (list_entries != nullptr) {  // +0x8
        pydata::DeleteElementTable<ItemListEntry>(list_entries);
        list_entriesSize = 0;  // +0x4
        list_entries = nullptr;
    }
}

// 0x4d41b8 _ZN7Structs17ItemListEntryListD2Ev
// 0x4d411c _ZN7Structs17ItemListEntryListD1Ev
ItemListEntryList::~ItemListEntryList() {
    pydata::DeleteElementTable<ItemListEntry>(list_entries);  // +0x8, ItemListEntry elements, listing stride 12
}

// 0x4d419c _ZN7Structs17ItemListEntryListD0Ev
void DeletingDestructor(ItemListEntryList* self) {
    self->ItemListEntryList::~ItemListEntryList();
    CustomFree(self);
}

// ---------------------------------------------------------------- Loot (no base)

// 0x4d4238 _ZN7Structs4Loot8finalizeEv
void Loot::finalize() {
    if (RandomLootEntries != nullptr) {  // +0x10
        pydata::DeleteElementTable<LootEntry>(RandomLootEntries);
        RandomLootEntriesSize = 0;  // +0xc
        RandomLootEntries = nullptr;
    }
    if (FixedLootEntries != nullptr) {  // +0x18
        pydata::DeleteElementTable<LootEntry>(FixedLootEntries);
        FixedLootEntriesSize = 0;  // +0x14
        FixedLootEntries = nullptr;
    }
    if (SubLoots != nullptr) {  // +0x20
        CustomFree(SubLoots);
        SubLootsSize = 0;  // +0x1c
        SubLoots = nullptr;
    }
}

// 0x4d4414 _ZN7Structs4LootD2Ev
// 0x4d4318 _ZN7Structs4LootD1Ev
Loot::~Loot() {
    pydata::DeleteElementTable<LootEntry>(RandomLootEntries);  // +0x10, LootEntry elements, listing stride 36
    pydata::DeleteElementTable<LootEntry>(FixedLootEntries);  // +0x18, LootEntry elements, listing stride 36
    if (SubLoots != nullptr) CustomFree(SubLoots);  // +0x20
}

// 0x4d43f8 _ZN7Structs4LootD0Ev
void DeletingDestructor(Loot* self) {
    self->Loot::~Loot();
    CustomFree(self);
}

// ---------------------------------------------------------------- ItemBase family (base ItemBase)

// 0x4d451c _ZN7Structs9WeaponRef8finalizeEv
void WeaponRef::finalize() {
    FinalizeItemRefWords(*this);
    ItemBase::finalize();
}

// 0x4f7b18 _ZN7Structs9WeaponRef4readEP11IStreamBase
// Listing: ItemBase::read (BL 0x4ec47c) first, then words 17..40 (+0x44..+0xa0) via ReadItemRefWords.
void WeaponRef::read(IStreamBase* stream) {
    ItemBase::read(stream);  // +0x4..+0x40, base read first
    ReadItemRefWords(*this, stream);
}

// 0x4d4a08 _ZN7Structs9WeaponRefD2Ev
// 0x4d4994 _ZN7Structs9WeaponRefD1Ev
// The base destructor (implicit, runs after this body) frees m_w2 again, as the listing does.
WeaponRef::~WeaponRef() {
    ReleaseItemRefWords(*this);
}

// 0x4d49ec _ZN7Structs9WeaponRefD0Ev
void DeletingDestructor(WeaponRef* self) {
    self->WeaponRef::~WeaponRef();
    CustomFree(self);
}

// 0x4d4568 _ZN7Structs15RangedWeaponRef8finalizeEv
void RangedWeaponRef::finalize() {
    FinalizeItemRefWords(*this);
    ItemBase::finalize();
}

// 0x4f83c0 _ZN7Structs15RangedWeaponRef4readEP11IStreamBase
// Listing: forwards to ReadItemRefWords, which runs ItemBase::read (0x4ec47c) then words 17..40.
void RangedWeaponRef::read(IStreamBase* stream) {
    ItemBase::read(stream);  // +0x4..+0x40, base read first
    ReadItemRefWords(*this, stream);
}

// 0x4d4ad4 _ZN7Structs15RangedWeaponRefD2Ev
// 0x4d4a60 _ZN7Structs15RangedWeaponRefD1Ev
RangedWeaponRef::~RangedWeaponRef() {
    ReleaseItemRefWords(*this);
}

// 0x4d4ab8 _ZN7Structs15RangedWeaponRefD0Ev
void DeletingDestructor(RangedWeaponRef* self) {
    self->RangedWeaponRef::~RangedWeaponRef();
    CustomFree(self);
}

// 0x4d45b4 _ZN7Structs9ShieldRef8finalizeEv
void ShieldRef::finalize() {
    FinalizeItemRefWords(*this);
    ItemBase::finalize();
}

// 0x4f8c68 _ZN7Structs9ShieldRef4readEP11IStreamBase
// Listing: forwards to ReadItemRefWords, which runs ItemBase::read (0x4ec47c) then words 17..40.
void ShieldRef::read(IStreamBase* stream) {
    ItemBase::read(stream);  // +0x4..+0x40, base read first
    ReadItemRefWords(*this, stream);
}

// 0x4d4ba0 _ZN7Structs9ShieldRefD2Ev
// 0x4d4b2c _ZN7Structs9ShieldRefD1Ev
ShieldRef::~ShieldRef() {
    ReleaseItemRefWords(*this);
}

// 0x4d4b84 _ZN7Structs9ShieldRefD0Ev
void DeletingDestructor(ShieldRef* self) {
    self->ShieldRef::~ShieldRef();
    CustomFree(self);
}

// 0x4d4600 _ZN7Structs10JewelryRef8finalizeEv
void JewelryRef::finalize() {
    FinalizeItemRefWords(*this);
    ItemBase::finalize();
}

// 0x4f9510 _ZN7Structs10JewelryRef4readEP11IStreamBase
// Listing: forwards to ReadItemRefWords, which runs ItemBase::read (0x4ec47c) then words 17..40.
void JewelryRef::read(IStreamBase* stream) {
    ItemBase::read(stream);  // +0x4..+0x40, base read first
    ReadItemRefWords(*this, stream);
}

// 0x4d4c6c _ZN7Structs10JewelryRefD2Ev
// 0x4d4bf8 _ZN7Structs10JewelryRefD1Ev
JewelryRef::~JewelryRef() {
    ReleaseItemRefWords(*this);
}

// 0x4d4c50 _ZN7Structs10JewelryRefD0Ev
void DeletingDestructor(JewelryRef* self) {
    self->JewelryRef::~JewelryRef();
    CustomFree(self);
}

// 0x4d464c _ZN7Structs8ArmorRef8finalizeEv
void ArmorRef::finalize() {
    FinalizeItemRefWords(*this);
    ItemBase::finalize();
}

// 0x4f9db8 _ZN7Structs8ArmorRef4readEP11IStreamBase
// Listing: forwards to ReadItemRefWords, which runs ItemBase::read (0x4ec47c) then words 17..40.
void ArmorRef::read(IStreamBase* stream) {
    ItemBase::read(stream);  // +0x4..+0x40, base read first
    ReadItemRefWords(*this, stream);
}

// 0x4d4698 _ZN7Structs7BeltRef8finalizeEv
void BeltRef::finalize() {
    ArmorRef::finalize();
}

// 0x4fa660 _ZN7Structs7BeltRef4readEP11IStreamBase
// Listing: forwarder to ArmorRef::read (BL 0x4f9db8), which is reconstructed.
void BeltRef::read(IStreamBase* stream) {
    ArmorRef::read(stream);
}

// 0x4d46e4 _ZN7Structs7HelmRef8finalizeEv
void HelmRef::finalize() {
    ArmorRef::finalize();
}

// 0x4fa664 _ZN7Structs7HelmRef4readEP11IStreamBase
// Listing: forwarder to ArmorRef::read (BL 0x4f9db8), which is reconstructed.
void HelmRef::read(IStreamBase* stream) {
    ArmorRef::read(stream);
}

// 0x4d4730 _ZN7Structs8GloveRef8finalizeEv
void GloveRef::finalize() {
    ArmorRef::finalize();
}

// 0x4fa668 _ZN7Structs8GloveRef4readEP11IStreamBase
// Listing: forwarder to ArmorRef::read (BL 0x4f9db8), which is reconstructed.
void GloveRef::read(IStreamBase* stream) {
    ArmorRef::read(stream);
}

// 0x4d477c _ZN7Structs8BootsRef8finalizeEv
void BootsRef::finalize() {
    ArmorRef::finalize();
}

// 0x4fa66c _ZN7Structs8BootsRef4readEP11IStreamBase
// Listing: forwarder to ArmorRef::read (BL 0x4f9db8), which is reconstructed.
void BootsRef::read(IStreamBase* stream) {
    ArmorRef::read(stream);
}

// 0x4d47c8 _ZN7Structs8Valuable8finalizeEv
void Valuable::finalize() {
    FinalizeItemRefWords(*this);
    ItemBase::finalize();
}

// 0x4fa670 _ZN7Structs8Valuable4readEP11IStreamBase
// Listing: forwards to ReadItemRefWords, which runs ItemBase::read (0x4ec47c) then words 17..40.
void Valuable::read(IStreamBase* stream) {
    ItemBase::read(stream);  // +0x4..+0x40, base read first
    ReadItemRefWords(*this, stream);
}

// 0x4d4814 _ZN7Structs6Potion8finalizeEv
void Potion::finalize() {
    FinalizeItemRefWords(*this);
    ItemBase::finalize();
}

// 0x4faf18 _ZN7Structs6Potion4readEP11IStreamBase
// Listing: forwards to ReadItemRefWords, which runs ItemBase::read (0x4ec47c) then words 17..40.
void Potion::read(IStreamBase* stream) {
    ItemBase::read(stream);  // +0x4..+0x40, base read first
    ReadItemRefWords(*this, stream);
}

// 0x4d4860 _ZN7Structs8GoldItem8finalizeEv
void GoldItem::finalize() {
    FinalizeItemRefWords(*this);
    ItemBase::finalize();
}

// 0x4fb7c0 _ZN7Structs8GoldItem4readEP11IStreamBase
// Listing: forwards to ReadItemRefWords, which runs ItemBase::read (0x4ec47c) then words 17..40.
void GoldItem::read(IStreamBase* stream) {
    ItemBase::read(stream);  // +0x4..+0x40, base read first
    ReadItemRefWords(*this, stream);
}

// 0x4d48ac _ZN7Structs4Item8finalizeEv
void Item::finalize() {
    FinalizeItemRefWords(*this);
    ItemBase::finalize();
}

}  // namespace Structs
