// Batch g1-game-items-save-pack7-8a9dd8-0 (owners Reward_Gold, Reward_Loot, Reward_XP and TrophyData; part 1 of 1).
// Reconstructed from the Hex-Rays pseudocode and the assembly of libDungeonHunter2.so. The layouts and the method
// declarations are dh2/Reward_Gold.hpp, dh2/Reward_Loot.hpp, dh2/Reward_XP.hpp, dh2/TrophyData.hpp and the base dh2/Reward.hpp.
//
// Notes:
//  * Each derived Compile writes the compiled flag (+0x08) and copies the pydata row (+0x0c) to the compiled copy (+0x14), then
//    returns this. Give reads the compiled copy, never the pydata row. The trace of Gold and XP reads the pydata row; the trace
//    of Loot reads the compiled copy, as the asm does (ldr r2, [r6, #0x14] before the name lookup).
//  * The owner is Reward::m_owner (+0x10), a Character. ItemInventory is a public base of Character at +0x37c, so the gold grant
//    is the qualified call m_owner->ItemInventory::AddGold. The stored amounts are Character::m_pendingGoldText (+0x1500) and
//    Character::m_pendingXPText (+0x1504).
//  * XP is record amount << 8. The shift is done on the unsigned word, so a negative amount wraps as the ARM LSL does.
//  * Deleting destructors (D0 at 0x4837d0, 0x483848, 0x4838c0, 0x37fa80) are compiler generated on the host: the delete
//    expression runs the complete-object destructor and releases the object. No body is written for them (see the ledger).
//  * __sFILE is the libc FILE on the target. The host FILE is another type, so the stream is converted to std::FILE* with
//    reinterpret_cast before fwrite and fprintf, as Reward.cpp does.
//  * The Reward_Loot trace is PARTIAL: the Loot line is not written (see its comment).

#include <cstdint>
#include <cstdio>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/ItemObject.hpp"
#include "dh2/Reward.hpp"
#include "dh2/Reward_Gold.hpp"
#include "dh2/Reward_Loot.hpp"
#include "dh2/Reward_XP.hpp"
#include "dh2/TrophyData.hpp"
#include "pydata-accessors/arrays.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace {

// Literal lengths the original passes to fwrite (the string table holds the text without its tab and newline).
static_assert(sizeof "\t  v2QuestRewardGiveGold\n" - 1 == 0x19, "Gold trace header length");
static_assert(sizeof "\t  v2QuestRewardGiveLoot\n" - 1 == 0x19, "Loot trace header length");
static_assert(sizeof "\t  v2QuestRewardGiveXP\n" - 1 == 0x17, "XP trace header length");

// The grant amount for a Reward_XP row: record +0x08 shifted left by 8 in 32-bit arithmetic.
std::int32_t XPFromRow(const Structs::v2QuestRewardStub* row) {
    return static_cast<std::int32_t>(static_cast<std::uint32_t>(row->Param1) << 8);
}

}  // namespace

// 0x482880 Reward_Gold::Compile()
// Sets the compiled flag (+0x08), copies the pydata row (+0x0c) to the compiled copy (+0x14) and returns this.
Reward* Reward_Gold::Compile() {
    m_compiled = true;          // +0x08
    m_compiledStub = m_pyData;  // +0x0c copied to +0x14
    return this;
}

// 0x482ad8 Reward_Gold::~Reward_Gold() (D1). The vtable store is compiler generated and the original then calls Reward::~Reward
// (D2, 0x4828e8), which is empty. The body here is empty for the same reason.
Reward_Gold::~Reward_Gold() {}

// 0x4831ec Reward_Gold::DBG_TraceDetailedRewardInformation(__sFILE*)
// Reads the pydata row (+0x0c). Writes the header with fwrite, then the type name (row +0x04, through
// PyDataConstants::getConstantName) and the gold amount (row +0x08). The return value is the count of the last fprintf.
int Reward_Gold::DBG_TraceDetailedRewardInformation(__sFILE* s) {
    std::FILE* out = reinterpret_cast<std::FILE*>(s);
    const Structs::v2QuestRewardStub* row = m_pyData;  // +0x0c
    static_cast<void>(std::fwrite("\t  v2QuestRewardGiveGold\n", 1, 0x19, out));
    const char* constantName =
        ApplicationGetInstance().m_pyDataConstants->getConstantName("v2QuestRewardType", row->Type);  // +0x04
    std::fprintf(out, "\t    Type        : %s\n", constantName);
    return std::fprintf(out, "\t    Gold        : %dG\n\n", row->Param1);  // +0x08
}

// 0x483480 Reward_Gold::Give()
// Not compiled: returns false (the compiled flag). Compiled: adds the compiled copy's amount (+0x08) to the owner's gold
// through ItemInventory::AddGold (the ItemInventory base at owner +0x37c), stores the same amount at owner +0x1500
// (Character::m_pendingGoldText) and returns true. The amount is read again after the call, as the original reads it.
bool Reward_Gold::Give() {
    if (!m_compiled) {
        return false;
    }
    m_owner->ItemInventory::AddGold(m_compiledStub->Param1);  // +0x08 of the compiled copy
    m_owner->m_pendingGoldText = m_compiledStub->Param1;      // owner +0x1500
    return true;
}

// 0x4837d0 Reward_Gold::~Reward_Gold() (D0). Compiler-generated deleting destructor: it runs ~Reward_Gold (D1) and then frees
// the object (the original calls CustomFree(this)). No body is written.

// 0x4828bc Reward_Loot::Compile()
// Sets the compiled flag (+0x08), copies the pydata row (+0x0c) to the compiled copy (+0x14) and returns this.
Reward* Reward_Loot::Compile() {
    m_compiled = true;          // +0x08
    m_compiledStub = m_pyData;  // +0x0c copied to +0x14
    return this;
}

// 0x482a3c Reward_Loot::~Reward_Loot() (D1). The vtable store is compiler generated and the original then calls Reward::~Reward
// (D2, 0x4828e8), which is empty. The body here is empty for the same reason.
Reward_Loot::~Reward_Loot() {}

// 0x483088 Reward_Loot::DBG_TraceDetailedRewardInformation(__sFILE*)
// Prints the 25-byte header line, the Type line from the compiled copy (+0x14, word +0x04) and the Loot line: the name of the loot
// table row at the compiled copy's +0x0c index (Arrays::LootTable::m_memberNames), or "na" when the index is outside
// Arrays::LootTable::size. Returns the count of the Loot line. Like the original, this reads the compiled copy without a check.
// A reward that was never compiled reads whatever the slot holds, since Reward's constructor does not set +0x14.
int Reward_Loot::DBG_TraceDetailedRewardInformation(__sFILE* s) {
    std::FILE* out = reinterpret_cast<std::FILE*>(s);
    const Structs::v2QuestRewardStub* compiled = m_compiledStub;  // +0x14
    static_cast<void>(std::fwrite("\t  v2QuestRewardGiveLoot\n", 1, 0x19, out));
    const char* constantName =
        ApplicationGetInstance().m_pyDataConstants->getConstantName("v2QuestRewardType", compiled->Type);  // +0x04
    std::fprintf(out, "\t    Type        : %s\n", constantName);
    const std::int32_t lootIndex = compiled->Param2;  // +0x0c
    const char* lootName = (lootIndex < 0 || static_cast<std::uint32_t>(lootIndex) >= Arrays::LootTable::size)
                               ? "na"
                               : Arrays::LootTable::m_memberNames.names[lootIndex];
    return std::fprintf(out, "\t    Loot        : %s \n", lootName);
}

// 0x4832ec Reward_Loot::Give()
// Not compiled: returns false. Compiled: drops the loot table row named by the compiled copy's +0x0c word at the owner's
// position, through the 5-argument ItemObject::DropLootTable (dropper, killer and owner are the owner, unk_arg is -1), and
// returns true. The owner is read once, as the original reads it.
bool Reward_Loot::Give() {
    if (!m_compiled) {
        return false;
    }
    ItemObject::DropLootTable(m_compiledStub->Param2, m_owner, m_owner, m_owner, -1);  // +0x0c of the compiled copy
    return true;
}

// 0x483848 Reward_Loot::~Reward_Loot() (D0). Compiler-generated deleting destructor: it runs ~Reward_Loot (D1) and then frees
// the object (the original calls CustomFree(this)). No body is written.

// 0x482894 Reward_XP::Compile()
// Sets the compiled flag (+0x08), copies the pydata row (+0x0c) to the compiled copy (+0x14) and returns this.
Reward* Reward_XP::Compile() {
    m_compiled = true;          // +0x08
    m_compiledStub = m_pyData;  // +0x0c copied to +0x14
    return this;
}

// 0x482aa4 Reward_XP::~Reward_XP() (D1). The vtable store is compiler generated and the original then calls Reward::~Reward
// (D2, 0x4828e8), which is empty. The body here is empty for the same reason.
Reward_XP::~Reward_XP() {}

// 0x483160 Reward_XP::DBG_TraceDetailedRewardInformation(__sFILE*)
// Reads the pydata row (+0x0c). Writes the header with fwrite, then the type name (row +0x04) and the XP (row +0x08, printed
// with the XP suffix). The return value is the count of the last fprintf.
int Reward_XP::DBG_TraceDetailedRewardInformation(__sFILE* s) {
    std::FILE* out = reinterpret_cast<std::FILE*>(s);
    const Structs::v2QuestRewardStub* row = m_pyData;  // +0x0c
    static_cast<void>(std::fwrite("\t  v2QuestRewardGiveXP\n", 1, 0x17, out));
    const char* constantName =
        ApplicationGetInstance().m_pyDataConstants->getConstantName("v2QuestRewardType", row->Type);  // +0x04
    std::fprintf(out, "\t    Type        : %s\n", constantName);
    return std::fprintf(out, "\t    XP          : %dXP\n\n", row->Param1);  // +0x08
}

// 0x483420 Reward_XP::Give()
// Not compiled: returns false. Compiled: grants the compiled copy's amount << 8 through Character::_GiveXP (the owner, flag
// true). When the grant is made the same value is stored at owner +0x1504 (Character::m_pendingXPText). Returns true in
// either case, as the original does.
bool Reward_XP::Give() {
    if (!m_compiled) {
        return false;
    }
    if (m_owner->_GiveXP(XPFromRow(m_compiledStub), true)) {
        m_owner->m_pendingXPText = XPFromRow(m_compiledStub);  // owner +0x1504
    }
    return true;
}

// 0x4838c0 Reward_XP::~Reward_XP() (D0). Compiler-generated deleting destructor: it runs ~Reward_XP (D1) and then frees the
// object (the original calls CustomFree(this)). No body is written.

// 0x37f9cc TrophyData::~TrophyData() (D1). Empty (asm BX LR). The vtable store is compiler generated, and nothing else runs.
TrophyData::~TrophyData() {}

// 0x37fa80 TrophyData::~TrophyData() (D0). Compiler-generated deleting destructor: it stores the vtable and then frees the
// object with CustomFree(this). The host delete expression produces the same sequence. No body is written.
