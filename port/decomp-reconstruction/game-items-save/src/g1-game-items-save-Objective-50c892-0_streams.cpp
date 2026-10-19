// Companion of batch g1-game-items-save-Objective-50c892-0: the two stream bodies of Objective, _loadData (0x47ab3c)
// and _saveData (0x47ab74). They need dh2/StreamReader.hpp and dh2/IStreamBase.hpp, which cannot share a translation
// unit with pydata-accessors/structs_records.hpp (the main file needs it for m_pyData). See the notes in
// g1-game-items-save-Objective-50c892-0.cpp.

#include "dh2/IStreamBase.hpp"
#include "dh2/Objective.hpp"
#include "dh2/StreamReader.hpp"

// 0x47ab3c _ZN9Objective9_loadDataEP11IStreamBase
void Objective::_loadData(IStreamBase* stream) {
    m_completed = StreamReader::readAs<bool>(stream);  // +0x14
}

// 0x47ab74 _ZN9Objective9_saveDataEP11IStreamBase
void Objective::_saveData(IStreamBase* stream) {
    StreamReader::writeAs<bool>(stream, m_completed);  // +0x14
}
