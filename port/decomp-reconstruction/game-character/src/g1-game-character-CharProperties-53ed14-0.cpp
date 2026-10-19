// CharProperties sheet accessors, speed and opacity getters, XP and price modifiers, debug stubs and
// the default-sheet reset (batch g1-game-character-CharProperties-53ed14-0).
//
// Layout facts used here, from the 32-bit original and checked against its data and listings:
//   - A Structs::CharacterProperties sheet is 900 bytes: a vptr word, then 224 int32 words. Word N is
//     the member m_wN (offset 4*N), so m_w1..m_w224 are consecutive int32 members and nothing else.
//   - Property id i is stored in word m_w(i+1). The original reads sheet + m_dataOffsets[i] + 4, and
//     Structs::CharacterProperties::m_dataOffsets is the identity table 4*i for all 224 entries (896 bytes
//     of .data at 0x999cf0, read from the binary).
//   - m_props sits at +0xa94 of CharProperties. The raw field offsets in the getters map to named words:
//     +0xb50 m_w47 (walk), +0xb54 m_w48 (rotation), +0xb58 m_w49 (attack), +0xb5c m_w50 (opacity),
//     +0xdb8 m_w201 (XP modifier) and +0xdbc m_w202 (price modifier).
#include "dh2/CharProperties.hpp"

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "pydata-accessors/w7_arrays27.hpp"

// Engine assert level, declared in core-platform/memory.hpp. That header is not included here: it pulls
// core-platform/deps/glitch_core.hpp and the pydata MemoryHintState, which clash with the dh2 headers.
extern int gAssertLevel;

namespace {

// Source locations of the original's ASSERT lines (Windows project paths, kept verbatim).
constexpr char kCharPropsCpp[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Properties\\CharProperties.cpp";
constexpr char kCharPropsSheetH[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\/AI/../Properties/CharProperties.h";

constexpr int kPropertyCount = 224;  // property ids 0..223

// Original assert handling. Level 2 writes to address 0, which crashes; the rebuild aborts. Level 1
// prints "ASSERT(%s) FAILED: %s:%d" to stderr and carries on. Any other level stays silent.
[[noreturn]] void CrashOnAssert() { std::abort(); }

void ReportAssert(const char* condition, const char* file, int line) {
    std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", condition, file, line);
}

// Word of property `propId` in a sheet: property i is m_w(i+1). The caller checks the range first.
// Relies on m_w1..m_w224 being consecutive int32 members; the test checks their addresses.
std::int32_t& PropertyWord(Structs::CharacterProperties& sheet, int propId) {
    return (&sheet.AIFaction)[propId];
}

const std::int32_t& PropertyWord(const Structs::CharacterProperties& sheet, int propId) {
    return (&sheet.AIFaction)[propId];
}

// The original returns a float in r0 (soft-float ABI), and the header keeps the int shape of these
// getters. They therefore return the float's bit pattern, as the original's LODWORD does.
std::int32_t FloatBits(float f) {
    std::int32_t bits = 0;
    std::memcpy(&bits, &f, sizeof bits);
    return bits;
}

// Speed-style property: raw / 256 (exact, the original multiplies by 0x3b800000), times 0.01, plus 1.0.
// The three float operations keep the original's order.
float SpeedScale(std::int32_t raw) {
    float v = static_cast<float>(raw) * (1.0f / 256.0f);
    v = v * 0.01f;
    v = v + 1.0f;
    return v;
}

// XP and price modifiers: ((bonus + 25600) / 100 * amount) >> 8, in the original's 32-bit arithmetic.
std::int32_t ScaleByBonus(std::int32_t bonus, std::int32_t amount) {
    const std::int32_t scale = static_cast<std::int32_t>(static_cast<std::uint32_t>(bonus) + 25600u) / 100;
    const std::int32_t product =
        static_cast<std::int32_t>(static_cast<std::uint32_t>(scale) * static_cast<std::uint32_t>(amount));
    return product >> 8;
}

// Row `row` of the character table. Arrays::CharacterTable::members is a block of host
// Structs::CharacterProperties records (w7_arrays27.hpp; Character::_InitEquipment and the -1 batch read it the
// same way). The original's 900-byte rows are one host record each, so the original's `members + 900` is row 1.
// Row 0 is the default sheet and row 1 the type sheet. The original does not check the table size for these
// reads, and neither does this.
const Structs::CharacterProperties& CharTableRow(int row) {
    return reinterpret_cast<const Structs::CharacterProperties*>(Arrays::CharacterTable::members)[row];
}

}  // namespace

// 0x3af76c CharProperties::PROPS_Get(int,bool) const [clone]
// 0x3bd130 CharProperties::PROPS_Get(int,bool) const [clone]
// Both clones have the same code. The compiler specialised them for useTemp == false: they read m_props
// and never read the bool. The binary has no generic PROPS_Get symbol (symtab lists only these two local clones),
// so the useTemp == true path (s_temp, per the header) has no body in this batch and the bool is unverified.
// PARTIAL for that reason; the body is exact for the clones' path.
int CharProperties::PROPS_Get(int propId, bool useTemp) const {
    (void)useTemp;
    return _GetProperty(m_props, propId);
}

// 0x3b55d4 CharProperties::PROPS_GetFromSheet(int,Structs::CharacterProperties *) const
int CharProperties::PROPS_GetFromSheet(int propId, Structs::CharacterProperties* sheet) const {
    if (sheet != nullptr) {
        return _GetProperty(*sheet, propId);
    }
    if (gAssertLevel == 2) {
        CrashOnAssert();  // the original stores through the null sheet here
    } else if (gAssertLevel == 1) {
        ReportAssert("sheet", kCharPropsSheetH, 311);
    }
    return -1;
}

// 0x3de6c4 CharProperties::PROPS_GetWalkSpeed(void) const
int CharProperties::PROPS_GetWalkSpeed() const {
    float v = SpeedScale(m_props.Speed_Modifier_Walk);
    if (!(v > 0.0f)) {
        v = 0.0f;
    }
    return FloatBits(v);
}

// 0x3de708 CharProperties::PROPS_GetRotationSpeed(void) const
int CharProperties::PROPS_GetRotationSpeed() const {
    float v = SpeedScale(m_props.Speed_Modifier_Rotation);
    if (!(v > 0.0f)) {
        v = 0.0f;
    }
    return FloatBits(v);
}

// 0x3de74c CharProperties::PROPS_GetAttackSpeed(void) const
int CharProperties::PROPS_GetAttackSpeed() const {
    float v = SpeedScale(m_props.Speed_Modifier_Attack);
    if (!(v > 0.0f)) {
        v = 0.0f;
    }
    return FloatBits(v);
}

// 0x3de790 CharProperties::PROPS_GetOpacity(void) const
// Clamped to [0, 1]: a value at or above 1 becomes 1, and a value not above 0 becomes 0.
int CharProperties::PROPS_GetOpacity() const {
    float v = SpeedScale(m_props.Opacity_Modifier);
    if (v > 0.0f) {
        if (v >= 1.0f) {
            v = 1.0f;
        }
    } else {
        v = 0.0f;
    }
    return FloatBits(v);
}

// 0x3de7ec CharProperties::PROPS_GetModifiedXP(int) const
int CharProperties::PROPS_GetModifiedXP(int xp) const {
    return ScaleByBonus(m_props.Special_Bonus_To_XP, xp);
}

// 0x3de814 CharProperties::PROPS_GetModifiedPrice(int) const
int CharProperties::PROPS_GetModifiedPrice(int price) const {
    return ScaleByBonus(m_props.Special_Merchant_Price, price);
}

// 0x3de83c CharProperties::PROPS_RemoveDot(int) (empty in the shipped build)
void CharProperties::PROPS_RemoveDot(int /*element*/) {}

// 0x3de840 CharProperties::DBG_PROPS_DumpToFile(char const*,bool) const (empty in the shipped build)
void CharProperties::DBG_PROPS_DumpToFile(const char* /*path*/, bool /*flag*/) const {}

// 0x3de844 CharProperties::DBG_PROPS_Print(int,int) const (empty in the shipped build)
void CharProperties::DBG_PROPS_Print(int /*a*/, int /*b*/) const {}

// 0x3de848 CharProperties::DBG_PROPS_GetName(int) const
// The original returns word 5 (the name pointer) of record propId in Structs::CharacterProperties::m_dataNames.
// The host table is a pydata::NameTable whose names are in record order, so that is names[propId]. The original
// reads with no range check; an id outside the table returns nullptr here (the original reads past the table).
const char* CharProperties::DBG_PROPS_GetName(int propId) const {
    const pydata::NameTable& names = Structs::CharacterProperties::m_dataNames;
    if (propId < 0 || propId >= names.size || names.names == nullptr) {
        return nullptr;
    }
    return names.names[propId];
}

// 0x3dec0c CharProperties::SetCharacter(Character*)
void CharProperties::SetCharacter(Character* c) {
    if (c == nullptr) {
        if (gAssertLevel == 2) {
            CrashOnAssert();  // the original writes to address 0 here
        } else if (gAssertLevel == 1) {
            ReportAssert("c", kCharPropsCpp, 327);
        }
    }
    m_character = c;
}

// 0x3deca0 CharProperties::_SetProperty(Structs::CharacterProperties&,int,int)
// Out-of-range ids are not stored. Level 2 crashes, level 1 prints the assert line.
void CharProperties::_SetProperty(Structs::CharacterProperties& sheet, int propId, int value) {
    if (propId >= 0) {
        if (propId <= kPropertyCount - 1) {
            PropertyWord(sheet, propId) = value;
            return;
        }
        if (gAssertLevel == 2) {
            CrashOnAssert();
        } else if (gAssertLevel == 1) {
            ReportAssert("idx < size", kCharPropsCpp, 276);
        }
        return;
    }
    if (gAssertLevel == 2) {
        CrashOnAssert();
    } else if (gAssertLevel == 1) {
        ReportAssert("idx >= 0", kCharPropsCpp, 275);
    }
}

// 0x3dedb4 CharProperties::_GetProperty(Structs::CharacterProperties const&,int) const
// Out-of-range ids return -1. Level 2 crashes, level 1 prints the assert line.
int CharProperties::_GetProperty(const Structs::CharacterProperties& sheet, int propId) const {
    if (propId < 0) {
        if (gAssertLevel == 2) {
            CrashOnAssert();
        } else if (gAssertLevel == 1) {
            ReportAssert("idx >= 0", kCharPropsCpp, 259);
        }
        return -1;
    }
    if (propId <= kPropertyCount - 1) {
        return PropertyWord(sheet, propId);
    }
    if (gAssertLevel == 2) {
        CrashOnAssert();
    } else if (gAssertLevel == 1) {
        ReportAssert("idx < size", kCharPropsCpp, 260);
    }
    return -1;
}

// 0x3deed8 CharProperties::_GetType(int) const
// Reads property propId of the type sheet (table row 1). An unresolved lookup (-1, a bad id or no row) gives 16.
int CharProperties::_GetType(int propId) const {
    const int result = _GetProperty(CharTableRow(1), propId);
    if (result == -1) {
        return 16;
    }
    return result;
}

// 0x3def10 CharProperties::_GetDefault(int) const
// Reads property propId of the default sheet (table row 0).
int CharProperties::_GetDefault(int propId) const {
    return _GetProperty(CharTableRow(0), propId);
}

// 0x3def34 CharProperties::_ResetProperties(Structs::CharacterProperties&)
// Copies the default of every property into the sheet. The original returns the last default in r0; the void
// header drops it. Nothing reads that value.
void CharProperties::_ResetProperties(Structs::CharacterProperties& sheet) {
    for (int i = 0; i != kPropertyCount; ++i) {
        PropertyWord(sheet, i) = _GetDefault(i);
    }
}

// 0x3def84 CharProperties::PROPS_ResetSheet(Structs::CharacterProperties*)
// A null sheet resets s_temp instead. Then the sheet is reset to the defaults (_ResetProperties).
void CharProperties::PROPS_ResetSheet(Structs::CharacterProperties* sheet) {
    if (sheet == nullptr) {
        sheet = &s_temp;
    }
    _ResetProperties(*sheet);
}
