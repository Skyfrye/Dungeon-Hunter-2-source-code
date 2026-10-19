#pragma once

// The PyData name tables (Track B: one definition). Arrays::X holds m_memberNames; every Structs record class holds
// m_dataNames and kCount (declared in the record class itself, structs_records.hpp and w7_structs_*.hpp, since a
// record and its name table are the same original class). The PyData loader fills them.
#include "pydata-accessors/deps/stream_reader.hpp"

namespace pydata {
struct NameTable {
    char** names = nullptr;  // owned array of owned C strings, ordered, duplicates allowed
    int size = 0;
};

// Index of the first of the first `count` names equal to `name`, or -1.
int FindMemberName(const NameTable& table, int count, const char* name);
// Original finalizeNames(): frees each name, then the array, and clears it.
void FinalizeNameTable(NameTable& table);
// Original readNames()/skipNames(): count, check against size, then length-prefixed strings.
void ReadNameTable(NameTable& table, IStreamBase* stream);
}  // namespace pydata
