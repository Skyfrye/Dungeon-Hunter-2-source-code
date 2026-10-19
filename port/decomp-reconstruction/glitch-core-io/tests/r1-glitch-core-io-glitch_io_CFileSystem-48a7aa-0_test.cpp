// CFileSystem: the constructor's refcount, clear() dropping each archive reader once, the archive
// search in existFile, and getFileBasename when a dot lies before the separator.
#include "glitch-core-io/io/file_system.hpp"
#include "glitch-core-io/io/pak_reader.hpp"
#include "glitch-core-io/io/unzip_reader.hpp"
#include "glitch-core-io/io/zip_reader.hpp"

#include <cstdio>
#include <string>

#define CHECK(c)                                                       \
    do {                                                               \
        if (!(c)) {                                                    \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);   \
            ++failures;                                                \
        }                                                              \
    } while (0)

using namespace glitch::io;

namespace {

// The archive lists are protected in CFileSystem; a derived class fills them for the test.
struct FileSystemUnderTest : CFileSystem {
    void addZip(CZipReader* reader) { zipReaders.push_back(reader); }
    void addPak(CPakReader* reader) { pakReaders.push_back(reader); }
    void addUnZip(CUnZipReader* reader) { unZipReaders.push_back(reader); }
    std::size_t listSize() const { return zipReaders.size() + pakReaders.size() + unZipReaders.size(); }
};

}  // namespace

int main() {
    int failures = 0;

    // Constructor: the refcount is 0 (as the original stores it) and the lists are empty.
    {
        FileSystemUnderTest fs;
        CHECK(fs.referenceCounter == 0);
        CHECK(fs.listSize() == 0);
        fs.clear();  // clearing an empty file system does nothing
        CHECK(fs.listSize() == 0);
    }
    {
        IFileSystem* created = createFileSystem();
        CHECK(created != nullptr);
        if (created) {
            CHECK(created->referenceCounter == 0);
            delete created;  // drop() on a count of 0 would not delete the object
        }
    }

    // clear(): each reader loses the one reference the list held; the reader survives while
    // another reference is held, and the lists are emptied.
    {
        FileSystemUnderTest fs;
        CZipReader* zip = new CZipReader();
        CPakReader* pak = new CPakReader();
        CUnZipReader* unzip = new CUnZipReader(nullptr, "assets", false, true);
        zip->referenceCounter = 2;   // one from the list, one held by the test
        pak->referenceCounter = 2;
        unzip->referenceCounter = 2;
        fs.addZip(zip);
        fs.addPak(pak);
        fs.addUnZip(unzip);
        CHECK(fs.listSize() == 3);

        fs.clear();
        CHECK(fs.listSize() == 0);
        CHECK(zip->referenceCounter == 1);
        CHECK(pak->referenceCounter == 1);
        CHECK(unzip->referenceCounter == 1);
        zip->drop();
        pak->drop();
        unzip->drop();
    }

    // The destructor clears the lists the same way.
    {
        CZipReader* zip = new CZipReader();
        zip->referenceCounter = 2;
        FileSystemUnderTest* fs = new FileSystemUnderTest();
        fs->addZip(zip);
        delete fs;
        CHECK(zip->referenceCounter == 1);
        zip->drop();
    }

    // existFile: an empty file system finds no file; a name in a pak list is found without the
    // file being on disk.
    {
        FileSystemUnderTest fs;
        CHECK(fs.existFile("glitch_core_io_no_such_file_cfs.tmp") == 0);
        CHECK(fs.existFile(glitch::core::stringc("glitch_core_io_no_such_file_cfs.tmp")) == 0);

        CPakReader* pak = new CPakReader();
        pak->ignoreCase = false;
        SPakFileEntry entry;
        entry.simpleFileName = "pak_only_cfs.txt";
        entry.pos = 0;
        entry.length = 1;
        pak->entries.push_back(entry);
        fs.addPak(pak);
        CHECK(fs.existFile("pak_only_cfs.txt") == 1);
        CHECK(fs.existFile("pak_missing_cfs.txt") == 0);
        CUnZipReader* unzip = new CUnZipReader(nullptr, "assets", false, true);
        fs.addUnZip(unzip);
        CHECK(fs.existFile("glitch_core_io_no_such_file_cfs.tmp") == 0);
    }

    // getFileBasename: a dot before the last separator keeps the rest after the separator when the
    // extension is dropped (the original's unsigned count wraps and is clamped).
    {
        FileSystemUnderTest fs;
        CHECK(fs.getFileBasename("a.b/c", false) == "c");
        CHECK(fs.getFileBasename("a/b.c/d", false) == "d");
        CHECK(fs.getFileBasename("a.b/c.d", true) == "c.d");
        CHECK(fs.getFileBasename("a.b/c.d", false) == "c");
        CHECK(fs.getFileBasename("a/b/c.txt", false) == "c");
        CHECK(fs.getFileBasename("c.txt", false) == "c");
        CHECK(fs.getFileBasename("noext", false) == "noext");
        CHECK(fs.getFileBasename(".txt", false).empty());
        CHECK(fs.getFileBasename("dir/", true).empty());
    }

    if (failures == 0) std::printf("file_system_cfs_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
