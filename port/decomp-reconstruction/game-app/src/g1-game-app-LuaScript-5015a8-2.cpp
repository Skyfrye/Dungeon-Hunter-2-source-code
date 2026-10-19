// LuaScript Lua callbacks, batch g1-game-app-LuaScript-5015a8-2 (part 3 of 3), redo r2a-game-app-LuaScript-5015a8-1.
//
// Every callback here takes sfc::script::lua::Arguments and sfc::script::lua::ReturnValues (dh2/sfc/script/lua). The
// value rules the callbacks apply are in luascript_g1 (below), and they are tested by
// tests/g1-game-app-LuaScript-5015a8-2_test.cpp and tests/r2a-game-app-LuaScript-5015a8-1_test.cpp.
//
// The pydata and object globals the callbacks read are Application members, reached through ApplicationGetInstance()
// (dh2/Application.hpp). Singleton<Application>::s_inst is 0x99f72c:
//   dword_99F758 = s_inst +0x2c = Application::m_pyDataConstants (PyDataConstants, pydata-accessors w7_pydata12.hpp)
//   dword_99F75C = s_inst +0x30 = Application::m_pyDataArrays    (PyDataArrays, pydata-accessors w7_pydata12.hpp)
//   dword_99F764 = s_inst +0x38 = Application::m_objectManager   (ObjectManager, dh2/ObjectManager.hpp)
// All three are declared in dh2/Application.hpp.
//
// Status of the callbacks below (redo): reconstructed: _FromFixed, _CallPyScript, _Include, _GetCurrentLevelRange,
// _GetPyCst, _GetPyStruct, _GetPyOID, _BitXOr, _BitNot. partial: _GetGameObjectsByType (the object walk) and
// _SetGameType (the store to Level +0x150).

#include <cmath>
#include <cstddef>
#include <cstring>
#include <limits>
#include <optional>
#include <utility>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectListItem.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/LuaScript.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"  // dword_99F764, the ObjectManager instance
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"

#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace luascript_g1 {

// Float-to-integer conversions as the ARM target performs them: out-of-range values saturate and NaN gives 0.
int FloatToInt32(float value) {
    if (std::isnan(value)) return 0;
    if (value >= 2147483648.0f) return std::numeric_limits<int>::max();
    if (value <= -2147483648.0f) return std::numeric_limits<int>::min();
    return static_cast<int>(value);
}

unsigned FloatToUInt32(float value) {
    if (std::isnan(value) || value <= 0.0f) return 0u;
    if (value >= 4294967296.0f) return 0xFFFFFFFFu;
    return static_cast<unsigned>(value);
}

struct FixedParts {
    int integer;   // pushed first: (int)value >> 8 (arithmetic shift, as the ARM compiler emits)
    float scaled;  // pushed second: (float)(int)value * 2^-8, a single-precision multiply (exact)
};

// _FromFixed arithmetic. Hex-Rays prints the multiplier as 0.0039062, but the asm is `MOV R1,#0x3B800000;
// BL __aeabi_fmul`. 0x3B800000 is 2^-8 exactly (0.00390625f), so the product is exact and stays single precision.
FixedParts SplitFixed(float value) {
    const int raw = FloatToInt32(value);
    FixedParts parts{};
    parts.integer = raw >> 8;
    parts.scaled = static_cast<float>(raw) * 0.00390625f;
    return parts;
}

// _BitXOr: (int)args[1] ^ (int)args[0].
int BitXOr(float first, float second) {
    return FloatToInt32(second) ^ FloatToInt32(first);
}

// _BitNot: ~(int)args[0].
int BitNot(float first) {
    return ~FloatToInt32(first);
}

// Selector of _GetCurrentLevelRange: the first argument truncated to int when it is a number, else 0.
int LevelRangeSelector(bool firstIsNumber, float firstValue) {
    return firstIsNumber ? FloatToInt32(firstValue) : 0;
}

// Pair pushed for a selector. The six ints are the Structs::LevelDeclaration fields m_w12..m_w17 (+0x30..+0x44,
// pydata-accessors structs_records.hpp). They are plain ints so the rule can be tested without the accessor's
// out-of-line object code. Selector 1 gives (m_w16, m_w13) = (+0x40, +0x34), 2 gives (m_w17, m_w14) = (+0x44, +0x38),
// and 0 gives (m_w15, m_w12) = (+0x3c, +0x30). Any other selector pushes nothing.
std::optional<std::pair<int, int>> LevelRangeFor(int selector, int w12, int w13, int w14, int w15, int w16, int w17) {
    switch (selector) {
        case 1: return std::make_pair(w16, w13);
        case 2: return std::make_pair(w17, w14);
        case 0: return std::make_pair(w15, w12);
        default: return std::nullopt;
    }
}

// Pair pushed by _GetCurrentLevelRange when the current level has no list index (m_levelListIndex == -1).
constexpr std::pair<int, int> kNoLevelRange{-1, -1};

// _GetGameObjectsByType selection. matches[i] is true when the i-th node in tree order has a non-zero object id
// (node +0x2c), resolves to a non-null GameObject, and that object's class name equals the requested name. The first
// `skip` matches are passed over, then matches are picked until 15 have been picked (the original loop stops once the
// pushed count passes 14).
constexpr std::size_t kMaxTypeMatches = 15;
std::vector<std::size_t> SelectTypeMatches(const std::vector<bool>& matches, unsigned skip) {
    std::vector<std::size_t> picked;
    unsigned skipped = 0;
    for (std::size_t i = 0; i < matches.size(); ++i) {
        if (!matches[i]) continue;
        if (skip <= skipped) {
            picked.push_back(i);
            if (picked.size() >= kMaxTypeMatches) break;
        } else {
            ++skipped;
        }
    }
    return picked;
}

// _SetGameType accepts 0..3. The assert text "gt < Constants::GameTypes::COUNT" gives COUNT = 4.
constexpr unsigned kGameTypesCount = 4;
bool IsValidGameType(unsigned value) {
    return value < kGameTypesCount;
}

}  // namespace luascript_g1

namespace {

// Value::m_type tags (Value.hpp): 3 is a number, 4 is a string.
constexpr int kLuaTypeNumber = 3;
constexpr int kLuaTypeString = 4;

}  // namespace

// 0x37ee84 LuaScript::_FromFixed(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// With one or more arguments: pushes SplitFixed(args[0]).integer (the value shifted right by 8), then
// SplitFixed(args[0]).scaled as a number. The original reads args[0] again for the second push and gets the same value.
void LuaScript::_FromFixed(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                           void* /*self*/) {
    if (args.m_values->empty()) {
        return;
    }
    const luascript_g1::FixedParts parts = luascript_g1::SplitFixed(args[0].getNumber());
    ret.pushInteger(parts.integer);
    ret.pushNumber(parts.scaled);
}

// 0x37ef3c LuaScript::_CallPyScript(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// With one or more arguments and a string args[0]: id = ScriptManager::s_inst.GetIDFromName(name, true). When id is not
// -1 and the script is not running (IsScriptRunning(id) is false), StartScript(id, -1, false) runs. IsScriptRunning is
// not called when id is -1. The original's int result is dropped by the void binding.
void LuaScript::_CallPyScript(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                              void* /*self*/) {
    if (args.m_values->empty() || args[0].m_type != kLuaTypeString) {
        return;
    }
    const int id = ScriptManager::s_inst.GetIDFromName(args[0].getString(), true);
    if (id == -1 || ScriptManager::s_inst.IsScriptRunning(id)) {
        return;
    }
    ScriptManager::s_inst.StartScript(id, -1, false);
}

// 0x37efe4 LuaScript::_Include(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// With one or more arguments and a string args[0]: the LuaScript (self) loads that file through Load. The original
// returns Load's result, which the void binding drops.
void LuaScript::_Include(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* self) {
    if (args.m_values->empty() || args[0].m_type != kLuaTypeString) {
        return;
    }
    static_cast<LuaScript*>(self)->Load(args[0].getString());
}

// 0x37f03c LuaScript::_GetGameObjectsByType(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The skip count is FloatToUInt32(args[1]) when there are two or more arguments and args[1] is a number. The class name is
// args[0], and nothing is pushed without a string argument. The walk goes through ObjectManager::m_objectMap in key order.
// Each object (its handle resolved) whose PropertyMap::GetThisClassName equals the name is pushed with pushUserData, after
// the first `skip` matches. The walk stops once 15 objects are pushed.
void LuaScript::_GetGameObjectsByType(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                                      void* /*self*/) {
    unsigned int skip = 0;
    if (args.m_values->size() > 1 && args[1].m_type == kLuaTypeNumber) {
        skip = luascript_g1::FloatToUInt32(args[1].getNumber());
    }
    if (args.m_values->empty() || args[0].m_type != kLuaTypeString) {
        return;
    }
    const char* className = args[0].getString();
    unsigned int matches = 0;
    unsigned int pushed = 0;
    for (auto& entry : dword_99F764->m_objectMap) {
        if (pushed > 14) {
            break;
        }
        ObjectBase* base = entry.second.m_object;
        if (base == nullptr) {
            continue;
        }
        ObjectHandle handle = base->GetHandle();
        GameObject* object = handle;
        if (object == nullptr || std::strcmp(object->GetThisClassName(), className) != 0) {
            continue;
        }
        if (skip <= matches) {
            ret.pushUserData(object);
            ++pushed;
        } else {
            ++matches;
        }
    }
}

// 0x37f1f0 LuaScript::_GetCurrentLevelRange(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The current level's row in Arrays::LevelList is Level::m_levelListIndex (+0x3c). When it is -1, the binding pushes -1
// twice. Otherwise the selector is the first argument truncated to int when it is a number (0 otherwise). The pair from
// LevelRangeFor is pushed in order: selector 1 gives (m_w16, m_w13), 2 gives (m_w17, m_w14), 0 gives (m_w15, m_w12), and
// any other selector pushes nothing. The row fields are the Structs::LevelDeclaration members (+0x30..+0x44 in the 32-bit
// layout), read through the typed element pointer the pydata port uses. Like the original, the current level is not
// null-checked.
void LuaScript::_GetCurrentLevelRange(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                                      void* /*self*/) {
    const int levelIndex = ApplicationGetInstance().GetCurrentLevel()->m_levelListIndex;
    if (levelIndex == -1) {
        ret.pushInteger(-1);
        ret.pushInteger(-1);
        return;
    }
    const bool firstIsNumber = !args.m_values->empty() && args[0].m_type == kLuaTypeNumber;
    const float first = firstIsNumber ? args[0].getNumber() : 0.0f;
    const int selector = luascript_g1::LevelRangeSelector(firstIsNumber, first);
    const auto* rows =
        static_cast<const Structs::LevelDeclaration*>(static_cast<const void*>(Arrays::LevelList::members));
    const Structs::LevelDeclaration& row = rows[levelIndex];
    const auto range = luascript_g1::LevelRangeFor(selector, row.MonsterLvlMax, row.MonsterLvlMaxHard, row.MonsterLvlMaxNightmare, row.MonsterLvlMin, row.MonsterLvlMinHard,
                                                   row.MonsterLvlMinNightmare);
    if (range) {
        ret.pushInteger(range->first);
        ret.pushInteger(range->second);
    }
}

// 0x37f354 LuaScript::_GetPyCst(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// With two or more arguments and both of the first two strings: pushes PyDataConstants::getConstant(args[0], args[1])
// through Application::m_pyDataConstants. Nothing is pushed otherwise.
void LuaScript::_GetPyCst(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                          void* /*self*/) {
    if (args.m_values->size() <= 1 || args[0].m_type != kLuaTypeString || args[1].m_type != kLuaTypeString) {
        return;
    }
    PyDataConstants* constants = ApplicationGetInstance().m_pyDataConstants;
    ret.pushInteger(constants->getConstant(args[0].getString(), args[1].getString()));
}

// 0x37f4a8 LuaScript::_GetPyStruct(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Same binding as _GetPyOID: with two or more arguments and both of the first two strings, pushes
// PyDataArrays::GetOID(args[0], args[1]) through Application::m_pyDataArrays. The original calls GetOID here too.
void LuaScript::_GetPyStruct(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                             void* /*self*/) {
    if (args.m_values->size() <= 1 || args[0].m_type != kLuaTypeString || args[1].m_type != kLuaTypeString) {
        return;
    }
    PyDataArrays* arrays = ApplicationGetInstance().m_pyDataArrays;
    ret.pushInteger(arrays->GetOID(args[0].getString(), args[1].getString()));
}

// 0x37f5fc LuaScript::_GetPyOID(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Same body as _GetPyStruct: PyDataArrays::GetOID(args[0], args[1]) pushed as an integer, with the same guards.
void LuaScript::_GetPyOID(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                          void* /*self*/) {
    if (args.m_values->size() <= 1 || args[0].m_type != kLuaTypeString || args[1].m_type != kLuaTypeString) {
        return;
    }
    PyDataArrays* arrays = ApplicationGetInstance().m_pyDataArrays;
    ret.pushInteger(arrays->GetOID(args[0].getString(), args[1].getString()));
}

// 0x37f750 LuaScript::_BitXOr(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Exactly two arguments, both numbers: pushes luascript_g1::BitXOr(args[0], args[1]) as an integer.
void LuaScript::_BitXOr(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                        void* /*self*/) {
    if (args.m_values->size() != 2 || args[0].m_type != kLuaTypeNumber || args[1].m_type != kLuaTypeNumber) {
        return;
    }
    ret.pushInteger(luascript_g1::BitXOr(args[0].getNumber(), args[1].getNumber()));
}

// 0x37f814 LuaScript::_BitNot(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Exactly one argument, a number: pushes luascript_g1::BitNot(args[0]) as an integer.
void LuaScript::_BitNot(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                        void* /*self*/) {
    if (args.m_values->size() != 1 || args[0].m_type != kLuaTypeNumber) {
        return;
    }
    ret.pushInteger(luascript_g1::BitNot(args[0].getNumber()));
}

// 0x37f878 LuaScript::_SetGameType(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// With a number args[0]: gt = FloatToUInt32(args[0]). When gt is a valid game type (0..3) and the current level exists, gt is stored at Level
// +0x150 (the word is typed void* in Level.hpp because the character code compares it with null; the value goes in as an integer). The
// original's second read of args[0] yields the same value, so its gAssertLevel branches (ASSERT gt < Constants::GameTypes::COUNT, Level.h:494)
// cannot run and are not written.
void LuaScript::_SetGameType(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                             void* /*self*/) {
    if (args.m_values->empty() || args[0].m_type != kLuaTypeNumber) {
        return;
    }
    const unsigned int gameType = luascript_g1::FloatToUInt32(args[0].getNumber());
    if (!luascript_g1::IsValidGameType(gameType)) {
        return;
    }
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr) {
        return;
    }
    level->unk_150 = reinterpret_cast<void*>(static_cast<std::uintptr_t>(gameType));
}

