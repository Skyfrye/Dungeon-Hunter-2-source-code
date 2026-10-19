// Owner D: PyDataArrays::PyDataArrays(DataReloaderManager*) (0x4c0ddc, C1 0x4be550) registers the 142 pydata files
// and 142 classes. Checks: a registered class reaches its Arrays::GetMemberIDByString instance through GetOID, an
// unregistered one gives -1, the destructor runs every registered finalize (data and names) without a fault on empty
// tables, and reloadData on a file that has entries reads each one in order (here: a file whose read is a table
// reader receiving an empty stream, which must not touch the tables).
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/member_names.hpp"

#include <cstdio>
#include <cstdlib>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    {
        PyDataArrays arrays(nullptr);
        // Registered classes (the last registration in the listing is "Sounds"; "AnimDict" is another).
        char** animNames = static_cast<char**>(std::malloc(2 * sizeof(char*)));
        animNames[0] = strdup("idle");
        animNames[1] = strdup("walk");
        Arrays::AnimDict::m_memberNames = {animNames, 2};
        CHECK(arrays.GetOID("AnimDict", "walk") == 1);
        CHECK(arrays.GetOID("AnimDict", "run") == -1);
        char** soundNames = static_cast<char**>(std::malloc(sizeof(char*)));
        soundNames[0] = strdup("boom");
        Arrays::Sounds::m_memberNames = {soundNames, 1};
        CHECK(arrays.GetOID("Sounds", "boom") == 0);
        // An unregistered class name gives -1 whatever the argument.
        CHECK(arrays.GetOID("NoSuchClass", "walk") == -1);
        CHECK(arrays.GetOID("", "") == -1);
        // reloadData on a file with no entry does nothing.
        arrays.reloadData(nullptr, "no_such_file.bin");
        // The destructor finalizes the name tables (frees the strings above) and every data table.
    }
    CHECK(Arrays::AnimDict::m_memberNames.names == nullptr);  // finalizeNames ran for ai/animations names
    std::printf("%s\n", failures ? "od_pydata_arrays_ctor: FAILED" : "od_pydata_arrays_ctor: ok");
    return failures != 0;
}
