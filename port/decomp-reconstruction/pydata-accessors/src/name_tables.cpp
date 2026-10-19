// Shared bodies of the Arrays::X::finalizeNames / readNames / skipNames family.
// The original functions are identical apart from the table they address.
#include "pydata-accessors/member_names.hpp"

namespace pydata {

void FinalizeNameTable(NameTable& table) {
    if (table.names == nullptr) return;
    for (int i = 0; i < table.size; ++i) {
        if (table.names[i] != nullptr) CustomFree(table.names[i]);
    }
    CustomFree(table.names);
    table.names = nullptr;
}

void ReadNameTable(NameTable& table, IStreamBase* stream) {
    FinalizeNameTable(table);
    const std::uint32_t count = StreamReader::readAs<std::uint32_t>(stream);
    if (table.size != static_cast<int>(count)) return;
    // The original allocates the pointer array before the zero-count check.
    table.names = static_cast<char**>(::operator new[](count * sizeof(char*), kPydataBufferHint));
    for (std::uint32_t i = 0; i < count; ++i) {
        const std::uint32_t len = StreamReader::readAs<std::uint32_t>(stream);
        char* buf = static_cast<char*>(::operator new[](len + 1, kPydataBufferHint));
        table.names[i] = buf;
        StreamReader::readStringEx(stream, buf, len);
        buf[len] = 0;
    }
}

}  // namespace pydata
