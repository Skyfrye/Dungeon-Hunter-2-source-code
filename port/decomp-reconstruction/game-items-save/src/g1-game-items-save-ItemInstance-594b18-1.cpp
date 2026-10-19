// Batch g1-game-items-save-ItemInstance-594b18-1 (owner ItemInstance, part 2 of 2).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so, checked against dh2/ItemInstance.hpp and the pydata
// records (Structs::Item, Structs::CharacterProperties, Structs::ItemPowerRef). Part 1
// (g1-game-items-save-ItemInstance-594b18-0.cpp) holds the accessors and the defaulted destructor.
//
// Shared conventions in this file:
//  * Rows. Arrays::ItemTable, Arrays::CharacterTable and Arrays::ItemPowerTable rows are reached as elements of the typed
//    table (TableRow below), never by stepping the 32-bit listing strides (164, 900 and 40) on bytes.
//  * Text. A StrID string is PyDataConstants::getConstant("StrID", key) for the id and StringManager::getString(id) for the
//    text (StrIdText). StringManager::parse appends its formatted text to the out argument: the original's _M_append calls
//    before its final assign show it, and the callers below rely on it.
//  * Pydata fields. Structs::Item m_w17 (+0x44) name string id, m_w18 (+0x48) second string id, m_w22 (+0x58) item type,
//    m_w29..m_w34 (+0x74..+0x88) requirements, m_w35 (+0x8c) armour rating and m_w36 (+0x90) block rating, both shifted
//    right by 8. Structs::CharacterProperties m_w6 (+0x18) the class display string id. Structs::ItemPowerRef m_w3 (+0x0c)
//    the value count, m_w5 (+0x14) the description string id, m_w7 (+0x1c) the value compared by the insertion step.
//  * Asserts follow the other batches: gAssertLevel 2 aborts (the original writes to address 0), 1 prints the ASSERT line.
//  * Global text tags of _UpdateName (IDA, read-only): femaleTag = "[f]", femalePluralTag = "[fs]", malePluralTag = "[s]",
//    isAfterTag = "[a]", maleFemaleDelimiter = "#". The copies below are the same strings.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <utility>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/VarArgs.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/item_instance.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_3.hpp"

namespace {

const char kItemInstanceSource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInstance.cpp";

// The original's ASSERT(expr) at ItemInstance.cpp:line. Level 2 aborts; level 1 prints and the caller goes on.
void ItemInstanceAssert(const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();  // the original writes to address 0 here
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kItemInstanceSource, line);
    }
}

const char kFemaleTag[] = "[f]";
const char kFemalePluralTag[] = "[fs]";
const char kMalePluralTag[] = "[s]";
const char kIsAfterTag[] = "[a]";
const char kMaleFemaleDelimiter[] = "#";

// Typed row of a pydata table: element `index` of the host-stride table whose element 0 is `members`.
template <class Row>
const Row* TableRow(const std::uint8_t* members, int index) {
    return reinterpret_cast<const Row*>(members) + index;
}

// Text of a StrID key: the id comes from PyDataConstants::getConstant("StrID", key), the text from StringManager::getString.
const char* StrIdText(const char* key) {
    const int id = ApplicationGetPyDataConstants()->getConstant("StrID", key);
    return ApplicationGetStringManager()->getString(id);
}

// CharacterTable row of requirement class 1 to 9. The original reads the word at members + row * 900 + 24 for these rows:
// 263, 264, 265 (classes 1 to 3), 325, 327, 326 (classes 4 to 6) and 290, 292, 291 (classes 7 to 9). The +24 word is
// Structs::CharacterProperties::m_w6, the class display string id.
const int kClassCharacterRow[10] = {-1, 263, 264, 265, 325, 327, 326, 290, 292, 291};

// Offset of the first maleFemaleDelimiter at or after `from`, or 0 when there is none. The original stores NULL in that
// case and reads it back as 0, so a delimiter at offset 0 is also reported as 0.
int FindDelimiter(const char* text, int from) {
    const char* hit = std::strstr(text + from, kMaleFemaleDelimiter);
    return hit != nullptr ? static_cast<int>(hit - text) : 0;
}

}  // namespace

// 0x3faab0 ItemInstance::~ItemInstance() (D0, deleting destructor)
// Skipped: compiler-generated. delete on the virtual destructor runs ~ItemInstance() and then CustomFree(this), which is
// what the original's D0 does. Nothing is defined here.

// 0x3faacc ItemInstance::~ItemInstance() (D2, complete-object destructor)
// Same C++ destructor as 0x3faa64 (D1). It is defaulted in g1-game-items-save-ItemInstance-594b18-0.cpp, which is the one
// definition. The implicit member destruction runs m_powers, m_requirements, m_stats and m_name, as the original does.

// 0x3facdc ItemInstance::_UpdateReqs()
// The Hex-Rays return value (the row or the parse result) is not used: the header declares void and no caller reads it.
void ItemInstance::_UpdateReqs() {
    m_requirements.assign("");
    const Structs::Item* row = GetItem();
    if (row->LevelRequirement == 0 && row->StrengthRequirement == 0 && row->DexterityRequirement == 0 && row->EnduranceRequirement == 0 && row->EnergyRequirement == 0 && row->ClassRequirement == 0) {
        return;
    }
    if (row->Type == 14) {
        return;
    }

    StringManager* strings = ApplicationGetStringManager();
    m_requirements.assign(StrIdText("INGAME_REQUIREMENTS"));
    const char* separator = StrIdText("GLOBAL_LIST_SEPERATOR");

    bool wrote = false;  // v12: a requirement line has been written
    if (row->LevelRequirement != 0) {  // +0x74
        strings->parse(m_requirements, StrIdText("INGAME_REQUIRES_LEVEL"), row->LevelRequirement);
        wrote = true;
    }
    if (row->StrengthRequirement != 0) {  // +0x78
        if (wrote) m_requirements += separator;
        strings->parse(m_requirements, StrIdText("INGAME_REQUIRES_STRENGTH"), row->StrengthRequirement);
        wrote = true;
    }
    if (row->DexterityRequirement != 0) {  // +0x7c
        if (wrote) m_requirements += separator;
        strings->parse(m_requirements, StrIdText("INGAME_REQUIRES_DEXTERITY"), row->DexterityRequirement);
        wrote = true;
    }
    if (row->EnduranceRequirement != 0) {  // +0x80
        if (wrote) m_requirements += separator;
        strings->parse(m_requirements, StrIdText("INGAME_REQUIRES_ENDURANCE"), row->EnduranceRequirement);
        wrote = true;
    }
    if (row->EnergyRequirement != 0) {  // +0x84
        if (wrote) m_requirements += separator;
        strings->parse(m_requirements, StrIdText("INGAME_REQUIRES_ENERGY"), row->EnergyRequirement);
        wrote = true;
    }
    if (row->ClassRequirement != 0) {  // +0x88 class
        if (wrote) m_requirements += separator;
        const char* format = StrIdText("INGAME_REQUIRES_CLASS");
        // PARTIAL: a class id outside 1..9 leaves the original's class name variable uninitialised, so the class line is
        // not written for it here. Classes 1..9 follow kClassCharacterRow.
        if (row->ClassRequirement >= 1 && row->ClassRequirement <= 9) {
            const int nameId = TableRow<Structs::CharacterProperties>(Arrays::CharacterTable::members,
                                                                      kClassCharacterRow[row->ClassRequirement])
                                   ->ClassString;
            strings->parse(m_requirements, format, strings->getString(nameId));
        }
    }
}

// 0x3fb290 ItemInstance::_UpdateStats()
// The Hex-Rays return value is not used (see _UpdateReqs).
void ItemInstance::_UpdateStats() {
    m_stats.assign("");
    const Structs::Item* row = GetItem();
    const unsigned int itemType = static_cast<unsigned int>(row->Type);  // +0x58
    if (itemType > 0xC) {
        return;
    }
    const unsigned int typeBit = 1u << itemType;
    StringManager* strings = ApplicationGetStringManager();
    if ((typeBit & 0x1780u) != 0) {
        // Types 7, 8, 9, 10 and 12: armour rating only.
        strings->parse(m_stats, StrIdText("GAMEPLAYMENUS_ARMOR_RATING"), row->Param1 >> 8);
        return;
    }
    if ((typeBit & 0x40u) != 0) {
        // Type 6: armour rating, a space, block rating.
        strings->parse(m_stats, StrIdText("GAMEPLAYMENUS_ARMOR_RATING"), row->Param1 >> 8);
        m_stats.append(" ");  // _M_append(v1, " ", ""): one space
        strings->parse(m_stats, StrIdText("GAMEPLAYMENUS_BLOCK_RATING"), row->Param2 >> 8);
        return;
    }
    if ((typeBit & 0x3Fu) != 0) {
        // Types 0 to 5: damage description with the armour and block rating as its two values.
        strings->parse(m_stats, StrIdText("GAMEPLAYMENUS_DAMAGE_DESC"), row->Param1 >> 8, row->Param2 >> 8);
    }
}

// 0x3fb570 ItemInstance::PowerInfo::swap(ItemInstance::PowerInfo&)
// Swaps m_powerId and m_desc. unk_04 stays in place, as the original's xor swap of the first word shows.
void ItemInstance::PowerInfo::swap(PowerInfo& other) {
    std::swap(m_powerId, other.m_powerId);
    m_desc.swap(other.m_desc);
}

// 0x3fb754 ItemInstance::_UpdateName()
// The name is the formatted name text, cut at its gender tag, joined with the gender segment of the second text. The
// segment index is 0 for no tag, 1 for [f], 2 for [s] and 3 for [fs]. The second text is split at '#' into four
// segments; a segment with no delimiter on either side falls back to the text up to its end offset, as the original does.
void ItemInstance::_UpdateName() {
    m_name.assign("");
    const Structs::Item* row = GetItem();
    if (row->Name == -1) {  // +0x44 name string id
        return;
    }
    StringManager* strings = ApplicationGetStringManager();
    const char* nameText = strings->getString(row->Name);  // the name template (String in the original)

    // Gender tag of the name template: [f] first, then [fs], then [s].
    const char* tag = std::strstr(nameText, kFemaleTag);
    int gender = 0;            // v1
    bool genderFlag = false;   // v6: set for the two female tags
    if (tag != nullptr) {
        gender = 0;
        genderFlag = true;
    } else {
        tag = std::strstr(nameText, kFemalePluralTag);
        if (tag != nullptr) {
            gender = 1;
            genderFlag = true;
        } else {
            tag = std::strstr(nameText, kMalePluralTag);
            gender = tag != nullptr ? 1 : 0;
            genderFlag = false;
        }
    }

    // The second text (+0x48) and its segment.
    const char* after = nullptr;  // v8
    if (row->Material != -1) {
        after = strings->getString(row->Material);
    }
    std::string suffix;           // v37: the selected segment of the second text
    bool tagInside = false;       // v26: the isAfter tag is found after the first character
    if (after != nullptr) {
        const char* isAfter = std::strstr(after, kIsAfterTag);  // v9
        std::size_t tagOffset = 0;                              // v11
        if (isAfter != nullptr) {
            tagInside = (after != isAfter);
            tagOffset = static_cast<std::size_t>(isAfter - after);
        }

        int segment = gender != 0 ? 2 : 0;  // v1 is 0 or 2 here
        if (genderFlag) {
            segment += 1;  // v27
        }

        // Delimiter offsets: bounds[0] = -1, bounds[1..3] = up to three '#' positions (0 when absent), bounds[4] = end.
        const int length = static_cast<int>(std::strlen(after));
        int bounds[5] = {-1, 0, 0, 0, 0};
        if (length > 0) {
            bounds[1] = FindDelimiter(after, 0);
            for (int slot = 1; slot <= 2 && bounds[slot] != 0 && bounds[slot] + 1 < length; ++slot) {
                bounds[slot + 1] = FindDelimiter(after, bounds[slot] + 1);
            }
        }
        bounds[4] = tagInside ? static_cast<int>(tagOffset) : length;  // v30[2]

        const std::string afterText(after);
        const int start = bounds[segment];
        const int stop = bounds[segment + 1];
        if (start != 0 && stop != 0) {
            // Text between the delimiters: from start + 1 for stop - start - 1 characters. A negative count wraps to a
            // large size_t and std::string::append clamps it, as the original's append does.
            suffix.append(afterText, static_cast<std::size_t>(start + 1),
                          static_cast<std::size_t>(stop - start - 1));
        } else {
            suffix.append(afterText, 0, static_cast<std::size_t>(bounds[4]));
        }
    }

    // The formatted name, kept up to its gender tag (the whole text when there is none).
    std::string formatted;
    strings->parse(formatted, nameText, m_value);
    const std::size_t cut = tag != nullptr ? static_cast<std::size_t>(tag - nameText) : formatted.size();
    const std::string prefix = formatted.substr(0, cut);

    // The original joins the two parts with one space when the second text exists. With the [a] tag inside, it appends
    // the prefix and then " " + suffix. Without it, it appends suffix + " " and then the prefix. The space is
    // _M_appendT(" ", " " + 1) in the original: the clone at 0x3fa868 appends exactly one character.
    if (tagInside) {
        m_name.append(prefix);
        if (after != nullptr) {
            m_name.append(" ");
            m_name.append(suffix);
        }
    } else {
        if (after != nullptr) {
            m_name.append(suffix);
            m_name.append(" ");
        }
        m_name.append(prefix);
    }
}

// 0x3fbc58 ItemInstance::SetValue(int)
void ItemInstance::SetValue(int value) {
    m_value = value;
    _UpdateName();
}

// 0x3fbc60 ItemInstance::AddPower(int, int)
// The difficulty variant: 1 picks power id + 1 when its name is the base name plus "_Hard", 2 picks id + 2 when its name is the
// base name plus "_VeryHard" (names from Arrays::ItemPowerTable::m_memberNames). The power is pushed with the row's value (m_w7).
// A row with values (m_w3 != 0) builds its description with StringManager::parseEx over a VarArgs list, one variant per entry of
// the row's AttrBonusEntry table (the value as a float scaled by 1/256, the value >> 8 as an int); a row without values copies
// the string m_w5. The new power is then moved into value order by the insertion step.
void ItemInstance::AddPower(int powerId, int variant) {
    const int powerCount = static_cast<int>(Arrays::ItemPowerTable::size);
    if (powerId < 0 || powerId >= powerCount) {
        ItemInstanceAssert("powerId >= 0 && powerId < (int)Arrays::ItemPowerTable::size", 606);
        // The original goes on and reads the table past its end (undefined here). Nothing is added.
        return;
    }

    int id = powerId;
    if (variant == 1 || variant == 2) {
        const int variantId = powerId + variant;
        char variantName[64];
        std::strcpy(variantName, Arrays::ItemPowerTable::m_memberNames.names[powerId]);
        std::strcpy(&variantName[std::strlen(variantName)], variant == 1 ? "_Hard" : "_VeryHard");
        if (std::strcmp(variantName, Arrays::ItemPowerTable::m_memberNames.names[variantId]) == 0) {
            id = variantId;
        }
    }
    const Structs::ItemPowerRef* row = TableRow<Structs::ItemPowerRef>(Arrays::ItemPowerTable::members, id);
    PowerInfo info;
    info.m_powerId = id;
    info.unk_04 = row->SortingOrder;  // +0x1c, the ItemPowerTable value
    m_powers.push_back(info);

    if (row->AttrBonusListSize != 0) {
        VarArgs args;
        const auto* values = static_cast<const Structs::AttrBonusEntry*>(row->AttrBonusList);
        for (std::uint32_t k = 0; k < row->AttrBonusListSize; ++k) {
            VarArgs::Variant entry;
            entry.number = static_cast<float>(values[k].Bonus) * 0.00390625f;
            entry.integer = values[k].Bonus >> 8;
            entry.text = nullptr;
            args.m_variants.push_back(entry);
        }
        ApplicationGetStringManager()->parseEx(m_powers.back().m_desc, ApplicationGetStringManager()->getString(row->Description), args);
    } else {
        m_powers.back().m_desc.assign(ApplicationGetStringManager()->getString(row->Description));
    }

    // Insertion step on the value, compared by position. PowerInfo::swap does not move unk_04, so this pass compares the
    // values at their positions while it swaps the ids and descriptions, as the original does.
    const std::size_t count = m_powers.size();
    if (count != 1 && m_powers[count - 2].unk_04 > m_powers[count - 1].unk_04) {
        std::size_t k = count - 1;
        while (true) {
            m_powers[k].swap(m_powers[k - 1]);
            if (k - 1 == 0) {
                break;
            }
            --k;
            if (!(m_powers[k - 1].unk_04 > m_powers[k].unk_04)) {
                break;
            }
        }
    }
}

// 0x3fc1b4 ItemInstance::UpdateLocalization()
void ItemInstance::UpdateLocalization() {
    _UpdateName();
    _UpdateStats();
    _UpdateReqs();
    const int numPowers = GetNumPowers();
    std::vector<int> powerIds(static_cast<std::size_t>(numPowers));
    for (int i = 0; i != numPowers; ++i) {
        powerIds[static_cast<std::size_t>(i)] = GetPowerId(static_cast<unsigned int>(i));
    }
    m_powers.erase(m_powers.begin(), m_powers.end());
    for (int i = 0; i != numPowers; ++i) {
        AddPower(powerIds[static_cast<std::size_t>(i)], -1);
    }
}

// 0x3fc26c ItemInstance::ItemInstance(int, unsigned int)   (C1)
// 0x3fc494 ItemInstance::ItemInstance(int, unsigned int)   (C2, same body; one C++ constructor covers both)
ItemInstance::ItemInstance(int itemId, unsigned int qty)
    : m_itemId(itemId),
      m_qty(static_cast<std::int16_t>(qty)),
      m_value(0),
      m_pickUpType(-1),
      unk_68(true),
      unk_69(false) {
    if (itemId < 0 || Arrays::ItemTable::size == 0) {
        ItemInstanceAssert("itemId >= 0 && Arrays::ItemTable::size", 84);
    }
    _UpdateName();
    _UpdateStats();
    _UpdateReqs();
}

// 0x3fc3e0 ItemInstance::Split(int)
ItemInstance* ItemInstance::Split(int qty) {
    if (!IsStackable() || qty <= 0 || qty >= m_qty) {
        return nullptr;
    }
    AddQty(-qty);
    ItemInstance* created = new ItemInstance(m_itemId, static_cast<unsigned int>(qty));
    created->SetValue(m_value);
    created->unk_68 = false;
    const int numPowers = GetNumPowers();
    for (int i = 0; i < numPowers; ++i) {
        created->AddPower(GetPowerId(static_cast<unsigned int>(i)), -1);
    }
    created->unk_68 = unk_68;  // the new instance takes this instance's flag
    return created;
}
