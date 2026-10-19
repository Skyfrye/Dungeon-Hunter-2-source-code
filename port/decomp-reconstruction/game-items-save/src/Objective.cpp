// Batch g1-game-items-save-Objective-50c892-0 (owner Objective, part 1 of 1).
// Reconstructed from the Hex-Rays pseudocode and the assembly of libDungeonHunter2.so. The layout and the method
// declarations are dh2/Objective.hpp. The m_pyData row is Structs::v2QuestObjectiveStub (pydata-accessors).
//
// Notes:
//  * The process singleton is ApplicationGetInstance(). The listing reads Singleton<Application>::s_inst at +0x2c
//    (m_pyDataConstants, dword_99F758 in the listing) and +0x34 (m_stringManager, dword_99F760).
//  * ScriptManager::s_inst +0x08 (dword_9A5FE4 in the listing) is ScriptManager::m_loadedCount. SetIsCompleted
//    adds it to the row's script number.
//  * The row fields are the v2QuestObjective base members m_w2 (+0x08, the description string id) and m_w3
//    (+0x0c, the script number).
//  * C1 (0x47bd8c) and C2 (0x47be00) have the same body, and so do D1 (0x47a378) and D2 (0x47a1e4). Each pair has one
//    definition below. The scalar deleting destructor (D0, 0x47a8b0) is compiler generated (see the ledger).
//  * __sFILE is the libc FILE on the target. The host FILE is another type, so the stream is converted to std::FILE*
//    with reinterpret_cast before fwrite and fprintf. GameEvent passes stdout through the same cast, so the value
//    round-trips.
//  * _loadData and _saveData (0x47ab3c, 0x47ab74) use StreamReader::readAs<bool>/writeAs<bool>. Their bodies are in
//    g1-game-items-save-Objective-50c892-0_streams.cpp: dh2/StreamReader.hpp and dh2/IStreamBase.hpp cannot share a
//    translation unit with pydata-accessors/structs_records.hpp, which this file needs (the pydata stream stand-in
//    in deps/stream_reader.hpp defines the same two classes). The same split is used by ItemInventory batch 3.

#include "dh2/Objective.hpp"

#include <cstdio>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/StringManager.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// 0x47bd8c _ZN9ObjectiveC1Ev (C1). C2 at 0x47be00 has the same body.
// The vtable store is compiler generated. The listing stores the constant, then the flags and the two links.
Objective::Objective() {
    m_type = ApplicationGetInstance().m_pyDataConstants->getConstant("v2QuestObjectiveType", "Invalid");  // +0x04
    m_completed = false;  // +0x14
    m_valid = false;      // +0x08
    m_pyData = nullptr;   // +0x0c
    m_owner = nullptr;    // +0x10
}

// 0x47a378 _ZN9ObjectiveD1Ev (D1). D2 at 0x47a1e4 has the same body. The vtable store is compiler generated.
Objective::~Objective() {}

// 0x47a8b0 _ZN9ObjectiveD0Ev is the scalar deleting destructor. Compiler generated: it calls ~Objective and then frees
// the object (the original calls CustomFree(this)). No body is written.

// 0x47ba10 _ZN9Objective14SetIsCompletedEv
void Objective::SetIsCompleted() {
    if (m_completed) {  // +0x14
        return;
    }
    Structs::v2QuestObjectiveStub* row = m_pyData;  // +0x0c
    m_completed = true;
    const int scriptNumber = row->OnComplete;  // row +0x0c
    if (scriptNumber < 0) {
        return;
    }
    ScriptManager::s_inst.StartScript(scriptNumber + ScriptManager::s_inst.m_loadedCount, -1, false);
}

// 0x479f6c _ZN9Objective7CompileEv. Empty in the base class (asm BX LR); the subclasses rebuild their targets.
void Objective::Compile() {}

// 0x479f70 _ZN9Objective17InvalidateCompileEv
void Objective::InvalidateCompile() {
    m_completed = false;  // +0x14
    m_valid = false;      // +0x08
}

// 0x479f80 _ZN9Objective22InstallObjectiveMarkerEii. Empty (asm BX LR).
void Objective::InstallObjectiveMarker(int /*markerKind*/, int /*markerIndex*/) {}

// 0x479f84 _ZN9Objective21RemoveObjectiveMarkerEv. Empty (asm BX LR).
void Objective::RemoveObjectiveMarker() {}

// 0x47a37c _ZN9Objective10_resetDataEv
void Objective::_resetData() {
    m_completed = false;  // +0x14
}

// 0x47a3a0 _ZNK9Objective12GetDescStrIdEv
int Objective::GetDescStrId() const {
    return m_pyData->Desc;  // row +0x08
}

// 0x47b9b8 _ZNK9Objective10GetDescStrEv
const char* Objective::GetDescStr() const {
    const int descStrId = GetDescStrId();
    if (descStrId <= 0) {
        return "";
    }
    return ApplicationGetInstance().m_stringManager->getString(descStrId);
}

// 0x47e8e4 _ZNK9Objective7GetDescEv
std::string Objective::GetDesc() const {
    return std::string(GetDescStr());
}

// 0x47b7ac _ZNK9Objective37DBG_TraceDetailedObjectiveInformationEP7__sFILE
int Objective::DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const {
    std::FILE* out = reinterpret_cast<std::FILE*>(stream);
    static_cast<void>(std::fwrite("\t  Unimplemented Trace for Objective\n", 1, 0x25, out));
    const char* constantName =
        ApplicationGetInstance().m_pyDataConstants->getConstantName("v2QuestObjectiveType", m_type);  // +0x04
    return std::fprintf(out, "\t    Type : %s\n\n", constantName);
}
