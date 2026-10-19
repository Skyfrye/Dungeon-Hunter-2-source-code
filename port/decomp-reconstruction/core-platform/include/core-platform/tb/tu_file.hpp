// gameswf::tu_file, the file stream class of the vendored gameswf library
// (vendor-gameswf/upstream/gameswf-r1714/base/tu_file.h). Only the constructor that
// core-platform calls is declared here. The listing allocates 0x28 bytes for the object
// (file_opener, 0x7a9954); the members are not recovered in this tree, so the complete
// class belongs to the vendor-gameswf owner.
#pragma once

namespace gameswf {
class tu_file {
public:
    // Mangled _ZN7gameswf7tu_fileC1EPKcS2_ (name, mode)
    tu_file(const char* name, const char* mode);
};
}  // namespace gameswf
