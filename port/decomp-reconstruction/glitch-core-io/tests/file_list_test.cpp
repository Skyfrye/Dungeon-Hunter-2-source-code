// CFileList entry accessors and FileEntry copy semantics.
#include "glitch-core-io/io/file_list.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using glitch::io::CFileList;

int main() {
    CFileList list;
    CHECK(list.getFileCount() == 0);
    CHECK(list.getFileName(0) == nullptr);
    CHECK(list.isDirectory(0) == false);

    CFileList::FileEntry dir;
    dir.Name = "saves";
    dir.FullName = "data/saves";
    dir.ID = 7;
    dir.isDirectory = true;
    list.Files.push_back(dir);

    // copy constructor and assignment copy every field
    CFileList::FileEntry copied(dir);
    CHECK(copied.Name == "saves" && copied.FullName == "data/saves" && copied.ID == 7 && copied.isDirectory);
    CFileList::FileEntry assigned;
    assigned = copied;
    CHECK(assigned.Name == "saves" && assigned.ID == 7 && assigned.isDirectory);
    assigned = assigned;   // self assignment keeps the value
    CHECK(assigned.Name == "saves");

    CFileList::FileEntry file;
    file.Name = "level.dat";
    file.ID = 9;
    list.Files.push_back(file);

    CHECK(list.getFileCount() == 2);
    CHECK(std::strcmp(list.getFileName(0), "saves") == 0);
    CHECK(std::strcmp(list.getFileName(1), "level.dat") == 0);
    CHECK(list.getFileName(2) == nullptr);
    CHECK(list.isDirectory(0) && !list.isDirectory(1));
    CHECK(!list.isDirectory(2));

    // full names: path, slash when the path is longer than 3 characters, then the name
    CFileList listed;
    listed.Path = "data/dir";
    CFileList::FileEntry item;
    item.Name = "a.dat";
    listed.Files.push_back(item);
    CHECK(std::strcmp(listed.getFullFileName(0), "data/dir/a.dat") == 0);
    CHECK(listed.getFullFileName(1) == nullptr);
    listed.Path = "d";
    CHECK(std::strcmp(listed.getFullFileName(0), "da.dat") == 0);

    if (failures == 0) std::printf("file_list_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
