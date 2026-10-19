#pragma once

// Name tables behind the Arrays/Structs accessors (PyData loader fills them).
// Arrays::X tables are m_memberNames/size. Structs::X tables are m_dataNames with a count.
#include <cstdint>
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_structs_1.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_3.hpp"
#include "pydata-accessors/w7_structs_5.hpp"
#include "pydata-accessors/arrays.hpp"

namespace Arrays {
// The Arrays::X classes (m_memberNames, finalizeNames, readNames, skipNames and the table storage) are declared once,
// in arrays.hpp.
template <class T>
int GetMemberIDByString(const char* name);

}  // namespace Arrays

namespace Structs {
// The Structs name tables are members of the record classes themselves (m_dataNames and kCount); the record
// headers are included above.
template <class T>
int GetMemberIDByString(const char* name);

}  // namespace Structs
