// glitch::io::CUnzipReadFile. See include/glitch-core-io/io/unzip_read_file.hpp.
#include "glitch-core-io/io/unzip_read_file.hpp"

namespace glitch::io {

// 0x5779cc _ZN6glitch2io14CUnzipReadFileC1ERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPKc
CUnzipReadFile::CUnzipReadFile(const core::stringc& folderPath, const char* entryName)
    : CReadFile(folderPath.c_str(), false), name(entryName ? entryName : "") {}

// 0x576db8 _ZNK6glitch2io14CUnzipReadFile11getFileNameEv
const char* CUnzipReadFile::getFileName() const { return name.c_str(); }

}  // namespace glitch::io
