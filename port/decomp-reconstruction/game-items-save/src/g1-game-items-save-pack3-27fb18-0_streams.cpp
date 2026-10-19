// Companion of batch g1-game-items-save-pack3-27fb18-0: the two stream bodies of Objective_SavedQty, _loadData (0x47ab54)
// and _saveData (0x47ab84). They need dh2/StreamReader.hpp, which cannot share a translation unit with
// pydata-accessors/structs_records.hpp (the main file needs it for the row). The same split is used by
// g1-game-items-save-Objective-50c892-0_streams.cpp.

#include "dh2/IStreamBase.hpp"
#include "dh2/Objective_SavedQty.hpp"
#include "dh2/StreamReader.hpp"

// 0x47ab54 Objective_SavedQty::_loadData(IStreamBase*)
// The base objective reads its own fields first. The quantity is then read as an int (+0x20).
void Objective_SavedQty::_loadData(IStreamBase* stream) {
    Objective::_loadData(stream);
    m_currentQty = StreamReader::readAs<int>(stream);  // +0x20
}

// 0x47ab84 Objective_SavedQty::_saveData(IStreamBase*)
// The base objective writes its own fields first. The quantity is then written as an int (+0x20).
void Objective_SavedQty::_saveData(IStreamBase* stream) {
    Objective::_saveData(stream);
    StreamReader::writeAs<int>(stream, m_currentQty);  // +0x20
}
