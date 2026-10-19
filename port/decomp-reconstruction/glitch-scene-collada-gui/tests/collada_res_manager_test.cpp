// glitch::collada::CResFileManager and CResFile over a fake file system: unloading (by iterator, name, record table and all), the lookup of a
// loaded record by name and relative to a record (the folder archive added and removed around it), getReadFile for a plain file, the textures
// of the images through a replaceable factory, and the release of a record's buffers. The res::File loader is not reconstructed, so records are
// entered into the map by hand. Exit status is non-zero when a check fails.
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/io/memory_read_file.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/SMesh.hpp"
#include "glitch-video/null_driver.hpp"
#include "glitch-video/tb/glitch_res_File.hpp"
#include "glitch-video/texture.hpp"

using namespace glitch;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// A file system that knows only the calls the manager makes.
class FakeFileSystem : public io::IFileSystem {
public:
    std::vector<std::string> added;
    std::vector<std::string> removed;
    io::IReadFile* createAndOpenFile(const char* name) override {
        return new io::CMemoryReadFile(const_cast<char*>("data"), 4, name, false);
    }
    io::IReadFile* createMemoryReadFile(void*, int, const char*, bool) override { return nullptr; }
    io::IWriteFile* createAndWriteFile(const char*, bool) override { return nullptr; }
    bool addZipFileArchive(const char*, bool, bool) override { return false; }
    bool addFolderFileArchive(const char* name, bool, bool) override {
        added.push_back(name);
        return true;
    }
    bool addPakFileArchive(const char*, bool, bool) override { return false; }
    bool addObfuscationFileMap(const char*, unsigned char, glitch::core::stringc) override { return false; }
    bool removeFileArchive(const char* name) override {
        removed.push_back(name);
        return true;
    }
    const char* getWorkingDirectory() override { return ""; }
    bool changeWorkingDirectoryTo(const char*) override { return false; }
    glitch::core::stringc getAbsolutePath(const glitch::core::stringc& path) const override { return path.rfind("/abs/", 0) == 0 ? path : "/abs/" + path; }
    glitch::core::stringc getFileDir(const glitch::core::stringc& path) const override {
        const std::size_t slash = path.find_last_of("/\\");
        return slash == std::string::npos ? glitch::core::stringc() : path.substr(0, slash);
    }
    glitch::core::stringc getFileBasename(const glitch::core::stringc& path, bool) const override { return path; }
    io::IFileList* createFileList() const override { return nullptr; }
    bool existFile(const char*) const override { return false; }
    bool existFile(const glitch::core::stringc&) const override { return false; }
    io::IXMLReader* createXMLReader(const char*) override { return nullptr; }
    io::IXMLReader* createXMLReader(io::IReadFile*) override { return nullptr; }
    io::IXMLReaderUTF8* createXMLReaderUTF8(const char*) override { return nullptr; }
    io::IXMLReaderUTF8* createXMLReaderUTF8(io::IReadFile*) override { return nullptr; }
    io::IXMLWriter* createXMLWriter(const char*) override { return nullptr; }
    io::IXMLWriter* createXMLWriter(io::IWriteFile*) override { return nullptr; }
    io::IAttributes* createEmptyAttributes(video::IVideoDriver*) override { return nullptr; }
    void clear() override {}
};

class RecordingFactory : public collada::CResFactory {
public:
    std::vector<std::string> directories;
    std::vector<const collada::SImage*> images;
    boost::intrusive_ptr<video::ITexture> getTexture(collada::CResFile*, const glitch::core::stringc& directory, io::IReadFile*, video::CTextureManager*,
                                                     collada::SImage* image) override {
        directories.push_back(directory.c_str());
        images.push_back(image);
        return boost::intrusive_ptr<video::ITexture>();
    }
};

collada::CResFile* makeRecord(const std::string& name, collada::SColladaFileData* data, std::uint32_t refCount) {
    collada::CResFile* record = new collada::CResFile();
    record->name = name;
    record->fileName = record->name.c_str();
    record->data = data;
    record->refCount = refCount;
    return record;
}

}  // namespace

int main() {
    SCreationParameters parameters;
    std::memset(parameters.bytes, 0, sizeof(parameters.bytes));
    IDevice device(parameters);
    FakeFileSystem fileSystem;
    device.fileSystem = &fileSystem;
    video::CNullDriver driver(static_cast<IDevice*>(nullptr));
    device.videoDriver = &driver;
    struct DeviceDetach { IDevice& d; ~DeviceDetach() { d.fileSystem = nullptr; d.videoDriver = nullptr; } } detach{device};  // ~IDevice drops both; they are stack objects here
    device.referenceCounter = 100;  // the manager takes a use of the device

    collada::SDatabaseTables tables;
    collada::SColladaFileData fileData;
    fileData.tables = &tables;
    fileData.headerSize = 24;
    fileData.offsetEntries = 5;
    fileData.externalFlags = -1;

    {
        collada::CResFileManager manager(&device);
        CHECK(collada::CResFileManager::Inst == &manager && manager.resFactory == &collada::CResFileManager::DefaultResFactory);

        // Unload: by name, a record with other users, forced, a missing name, by table and all.
        manager.files["/abs/a.bdae"] = makeRecord("/abs/a.bdae", &fileData, 1);
        CHECK(manager.unload("/abs/missing.bdae", false) == 3);
        CHECK(manager.unload("a.bdae", false) == 0 && manager.files.empty());  // the name is made absolute first
        collada::CResFile* shared = makeRecord("/abs/b.bdae", &fileData, 2);
        manager.files["/abs/b.bdae"] = shared;
        CHECK(manager.unload("b.bdae", false) == 2 && manager.files.size() == 1);
        CHECK(manager.unload(reinterpret_cast<const collada::SCollada*>(&tables), true) == 1 && manager.files.empty());
        CHECK(shared->refCount == 1);  // the map's use is gone, the other user keeps the record
        delete shared;
        CHECK(manager.unload(reinterpret_cast<const collada::SCollada*>(&tables), false) == 3);
        manager.files["/abs/c.bdae"] = makeRecord("/abs/c.bdae", &fileData, 1);
        collada::CResFile* held = makeRecord("/abs/d.bdae", &fileData, 2);
        manager.files["/abs/d.bdae"] = held;
        CHECK(manager.unloadAll() == 1 && manager.files.size() == 1);  // only the record without other users goes
        CHECK(manager.unload("d.bdae", true) == 1);
        delete held;

        // A loaded record is found by name and re-selects the loader state; the lookup does not create.
        manager.files["/abs/e.bdae"] = makeRecord("/abs/e.bdae", &fileData, 1);
        res::File::SizeOfHeader = 7;
        CHECK(manager.get("e.bdae", false) == manager.files["/abs/e.bdae"]);
        CHECK(res::File::ExternalFilePtr[1] == reinterpret_cast<std::uint8_t*>(&fileData) && res::File::ExternalFileOffsetTableSize[1] == 7u + 4u * 5u);
        CHECK(res::File::SizeOfHeader == 24u);
        CHECK(manager.get("nothing.bdae", false) == nullptr);
        CHECK(manager.autoUnloadEnabled);  // restored after each lookup

        // A name relative to a record: its directory is a folder archive for the duration of the lookup.
        collada::CResFile* nested = makeRecord("/abs/models/f.bdae", &fileData, 1);
        manager.files["/abs/g.bdae"] = makeRecord("/abs/g.bdae", &fileData, 1);
        CHECK(manager.get(nested, "g.bdae", false) == manager.files["/abs/g.bdae"]);
        CHECK(fileSystem.added.size() == 1 && fileSystem.added[0] == "/abs/models/" && fileSystem.removed.size() == 1 &&
              fileSystem.removed[0] == "/abs/models/");
        collada::CResFile* flat = makeRecord("f.bdae", &fileData, 1);
        CHECK(manager.get(flat, "g.bdae", false) == manager.files["/abs/g.bdae"] && fileSystem.added.size() == 1);  // no directory: by name alone
        delete nested;
        delete flat;

        // getReadFile for a plain file: the file itself with a use; zip loading is switched off by the first use.
        io::CMemoryReadFile plain(const_cast<char*>("abcd"), 4, "plain.bdae", false);
        CHECK(manager.zipLoadingEnabled);
        io::IReadFile* read = manager.getReadFile(&plain);
        CHECK(read == &plain && plain.referenceCounter == 2 && !manager.zipLoadingEnabled);
        --plain.referenceCounter;

        // The textures of the images are asked of the factory, with the directory of the file.
        RecordingFactory factory;
        manager.resFactory = &factory;
        collada::SImage images[2];
        images[0].name = "a";
        images[1].name = "b";
        tables.images.push_back(&images[0]);
        tables.images.push_back(&images[1]);
        collada::CResFile* textured = makeRecord("/abs/tex/t.bdae", &fileData, 1);
        manager.updateExternalResources(textured, nullptr);
        CHECK(factory.images.size() == 2 && factory.images[0] == &images[0] && factory.images[1] == &images[1]);
        CHECK(factory.directories[0] == "/abs/tex" && images[0].imageData == nullptr);
        delete textured;
        tables.images.clear();
    }
    CHECK(collada::CResFileManager::Inst == nullptr);

    if (failures == 0) {
        std::printf("collada_res_manager_test: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
