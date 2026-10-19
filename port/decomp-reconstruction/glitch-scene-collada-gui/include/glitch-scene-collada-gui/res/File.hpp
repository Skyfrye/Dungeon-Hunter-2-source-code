// glitch::res::FileReader: the reader the file loader (glitch::res::File::Init, glitch-video/tb/glitch_res_File.hpp) loads a file image through.
// Canonical declaration, residue pass ob (CResFileReader forwards its four slots to an IReadFile).
#pragma once

#include <cstdint>

namespace glitch::res {

// _ZTVN6glitch3res10FileReaderE: the four reader slots.
class FileReader {
public:
    virtual ~FileReader() = default;
    virtual std::int32_t tell() = 0;
    virtual std::int32_t read(void* buffer, std::uint32_t size) = 0;
    virtual std::int32_t seek(std::int32_t position, bool relative) = 0;
    virtual std::int32_t getSize() = 0;
};

}  // namespace glitch::res
