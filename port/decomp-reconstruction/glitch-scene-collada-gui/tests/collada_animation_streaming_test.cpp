// glitch::collada::CAnimationStreamingManager, CAnimationBlock, SAnimationSegment::getData and SAnimationBlockSearchKey over a fake file
// system that serves the key data of two animation segments from memory: the key's clamping, the loading and fix-up of segment data, the sorted
// registry and the reuse of a registered block, the chain of neighbouring blocks, the freeing of a chain, the cache with its limit, eviction and
// release, and the unload of a file by the last handle (dropDatabase). Exit status is non-zero when a check fails.
#include <cstdio>
#include <cstdint>
#include <cstring>
#include <string>
#include <vector>

#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/io/memory_read_file.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/COnDemandReader.hpp"
#include "glitch-scene-collada-gui/collada/animation_track.hpp"
#include "glitch-scene-collada-gui/collada/animation_track_ex.hpp"
#include "glitch-video/null_driver.hpp"

using namespace glitch;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// The file all segments are read from: 8 bytes of padding, then {N = 1, count = 2, relative offset = 4, two floats}.
std::vector<std::uint8_t> g_file;

class FakeFileSystem : public io::IFileSystem {
public:
    int opened = 0;
    io::IReadFile* createAndOpenFile(const char* name) override {
        ++opened;
        return new io::CMemoryReadFile(g_file.data(), static_cast<long>(g_file.size()), name, false);
    }
    io::IReadFile* createMemoryReadFile(void*, int, const char*, bool) override { return nullptr; }
    io::IWriteFile* createAndWriteFile(const char*, bool) override { return nullptr; }
    bool addZipFileArchive(const char*, bool, bool) override { return false; }
    bool addFolderFileArchive(const char*, bool, bool) override { return true; }
    bool addPakFileArchive(const char*, bool, bool) override { return false; }
    bool addObfuscationFileMap(const char*, unsigned char, glitch::core::stringc) override { return false; }
    bool removeFileArchive(const char*) override { return true; }
    const char* getWorkingDirectory() override { return ""; }
    bool changeWorkingDirectoryTo(const char*) override { return false; }
    glitch::core::stringc getAbsolutePath(const glitch::core::stringc& path) const override { return path.rfind("/abs/", 0) == 0 ? path : "/abs/" + path; }
    glitch::core::stringc getFileDir(const glitch::core::stringc&) const override { return glitch::core::stringc(); }
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

void setSegment(collada::SAnimationSegment& segment, std::int32_t begin, std::int32_t end) {
    segment.begin = begin;
    segment.end = end;
    segment.data.offset = 8;
    segment.data.size = 20;
}

}  // namespace

int main() {
    g_file.assign(28, 0);
    const std::int32_t words[3] = {1, 2, 4};
    std::memcpy(g_file.data() + 8, words, sizeof words);
    const float payload[2] = {1.5f, -2.5f};
    std::memcpy(g_file.data() + 20, payload, sizeof payload);

    SCreationParameters parameters;
    std::memset(parameters.bytes, 0, sizeof(parameters.bytes));
    IDevice device(parameters);
    FakeFileSystem fileSystem;
    device.fileSystem = &fileSystem;
    video::CNullDriver driver(static_cast<IDevice*>(nullptr));
    device.videoDriver = &driver;
    struct DeviceDetach { IDevice& d; ~DeviceDetach() { d.fileSystem = nullptr; d.videoDriver = nullptr; } } detach{device};  // ~IDevice drops both; they are stack objects here
    device.referenceCounter = 100;

    collada::SAnimation animation;
    collada::SDatabaseTables tables;
    tables.sourceName = "anim.bdae";
    tables.animations.push_back(&animation);
    tables.animationRange.start = 0;
    tables.animationRange.end = 99;
    tables.segments.resize(2);
    setSegment(tables.segments[0], 0, 49);
    setSegment(tables.segments[1], 50, 99);
    collada::SColladaFileData fileData;
    fileData.tables = &tables;

    collada::CResFileManager manager(&device);
    manager.autoUnloadEnabled = false;  // switched on again for the last check
    collada::CAnimationStreamingManager streaming;
    CHECK(collada::CAnimationStreamingManager::Instance == &streaming);

    collada::CResFile record;
    record.name = "/abs/anim.bdae";
    record.fileName = record.name.c_str();
    record.data = &fileData;
    record.refCount = 2;
    collada::CColladaDatabase database;
    database.record = &record;

    // The key: no clip library gives the whole-animation record, and the time is clamped into it.
    {
        collada::SAnimationBlockSearchKey key(database, 0, 500);
        CHECK(key.clip == &tables.animationRange && key.time == 99 && record.refCount == 3);
        collada::SAnimationBlockSearchKey early(database, 0, -5);
        CHECK(early.time == 0);
        collada::dropDatabase(key.database);
        collada::dropDatabase(early.database);
        CHECK(record.refCount == 2);
    }

    // The segment data: loaded through the reader, the entry fixed up to the payload; the second user shares it.
    {
        io::CMemoryReadFile file(g_file.data(), static_cast<long>(g_file.size()), "anim.bdae", false);
        collada::COnDemandReader reader(&file);
        collada::SAnimationDataHolder* first = tables.segments[1].getData(reader);
        CHECK(first == &tables.segments[1].data && first->count == 1 && first->buffer != nullptr);
        CHECK(first->buffer[0].count == 2 && static_cast<const float*>(first->buffer[0].data)[0] == 1.5f &&
              static_cast<const float*>(first->buffer[0].data)[1] == -2.5f);
        collada::SAnimationDataHolder* second = tables.segments[1].getData(reader);
        CHECK(second == first && first->count == 2);
        first->drop();
        first->drop();
        CHECK(first->count == 0 && first->data == nullptr && first->buffer == nullptr);
    }

    // The registry builds a block for a key and reuses it for a time inside its segment.
    collada::SAnimationBlockSearchKey key(database, 0, 10);
    collada::CAnimationBlock* held = nullptr;
    streaming.cacheLimit = 100;
    streaming.getAnimationBlock(key, held);
    CHECK(held != nullptr && held->segment == &tables.segments[0] && held->range == &tables.animationRange);
    CHECK(held->dataHolder == &tables.segments[0].data && held->dataHolder->buffer != nullptr);
    CHECK(streaming.registry.size() == 2);  // the held block, and the block after it that the second use loaded
    CHECK(held->refCount == 2 && held->next != nullptr && held->next != held && held->next->previous == held);
    CHECK(held->next->segment == &tables.segments[1]);
    CHECK(streaming.cacheUsage == 40 && streaming.cacheEntries.size() == 2);  // both blocks' data are cached

    // getBlock walks the chain: a time in the next segment finds the next block, one before the first finds nothing.
    collada::SAnimationBlockSearchKey later(database, 0, 70);
    CHECK(held->getBlock(later) == held->next);
    collada::SAnimationBlockSearchKey inside(database, 0, 20);
    CHECK(held->getBlock(inside) == held);
    collada::SAnimationBlockSearchKey other = inside;
    other.clip = nullptr;
    CHECK(held->getBlock(other) == nullptr);
    CHECK(held->next->getBlock(inside) == held);  // backwards through the previous link
    // The same key again is answered by the held block without touching the registry; a time in the next segment replaces the held block.
    collada::CAnimationBlock* again = held;
    streaming.getAnimationBlock(inside, again);
    CHECK(again == held && held->refCount == 2);  // the use taken for the new slot value is the one the old slot value gave up
    collada::CAnimationBlock* moved = held;
    streaming.getAnimationBlock(later, moved);
    CHECK(moved == held->next && held->refCount == 1 && moved->refCount == 2);
    CHECK(moved->next == held && held->previous == moved);  // the second block's own next block is the first (the clip wraps)

    // The cache: one more block over the same segment shares the data (no second entry); checkMemoryUsage evicts only entries nobody else holds.
    streaming.cacheLimit = 5;
    streaming.checkMemoryUsage();  // both data are in use: nothing to evict, a warning is logged
    CHECK(streaming.cacheEntries.size() == 2 && streaming.cacheUsage == 40);

    // Freeing: the user drops its last use of the second block; both blocks go and the registry empties.
    moved->drop();  // the second block holds its last user use: it is freed, and the first with it
    held = nullptr;
    moved = nullptr;
    CHECK(streaming.registry.empty());
    streaming.cacheLimit = 5;
    streaming.checkMemoryUsage();  // the cache holds the only use of both data: both go
    CHECK(streaming.cacheEntries.empty() && streaming.cacheUsage == 0);
    CHECK(tables.segments[0].data.data == nullptr && tables.segments[1].data.count == 0);

    // release(): the entries of a file go with it. Two blocks cached for the file, one for another name.
    streaming.cacheLimit = 100;
    {
        collada::SAnimationBlockSearchKey fresh(database, 0, 10);
        collada::CAnimationBlock* block = nullptr;
        streaming.getAnimationBlock(fresh, block);
        CHECK(block != nullptr && streaming.cacheEntries.size() >= 1);
        const std::size_t entries = streaming.cacheEntries.size();
        streaming.cacheEntries.push_back({4, nullptr, "other.bdae"});
        streaming.cacheUsage += 4;
        streaming.release(&database);
        CHECK(streaming.cacheEntries.size() == 1 && streaming.cacheEntries[0].fileName == std::string("other.bdae") && entries >= 1);
        CHECK(streaming.cacheUsage == 4);
        streaming.cacheEntries.clear();
        streaming.cacheUsage = 0;
        block->drop();
        collada::dropDatabase(fresh.database);
    }
    CHECK(streaming.registry.empty());

    // The last handle of an automatically unloaded file: the streaming cache forgets the file and the manager unloads (deletes) the record.
    manager.autoUnloadEnabled = true;
    collada::CResFile* loaded = new collada::CResFile();
    loaded->name = "/abs/gone.bdae";
    loaded->fileName = loaded->name.c_str();
    loaded->data = &fileData;
    loaded->refCount = 2;  // the manager's map and one handle
    manager.files["/abs/gone.bdae"] = loaded;
    collada::CColladaDatabase handle;
    handle.record = loaded;
    collada::dropDatabase(handle);
    CHECK(handle.record == nullptr && manager.files.empty());

    // getAnimationTrackEx: the track by channel type, key width and material parameter shape.
    {
        using namespace collada::animation_track;
        collada::SChannel channel;
        collada::SAnimation anim;
        anim.channels = &channel;
        channel.type = 1;
        CHECK(collada::CColladaDatabase::getAnimationTrackEx(&anim) ==
              (CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<float>>>::getInstance()));
        collada::SAnimationOffsetScale scale;
        anim.offsetScale = &scale;
        scale.type = 0;
        CHECK(collada::CColladaDatabase::getAnimationTrackEx(&anim) ==
              (CVirtualEx<CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<char>>>::getInstance()));
        scale.type = 7;
        CHECK(collada::CColladaDatabase::getAnimationTrackEx(&anim) == nullptr);
        channel.type = 14;
        CHECK(collada::CColladaDatabase::getAnimationTrackEx(&anim) == &CWeightEx::s_Instance);
        channel.type = 0x30;
        CHECK(collada::CColladaDatabase::getAnimationTrackEx(&anim) == &CFloatEx::s_Instance);
        channel.type = 0x27;
        CHECK(collada::CColladaDatabase::getAnimationTrackEx(&anim) == &CVector3dEx::s_Instance);
        channel.type = 15;
        CHECK(collada::CColladaDatabase::getAnimationTrackEx(&anim) == nullptr);
        channel.type = 0x56;
        collada::SAnimationKeyframe keyframe;
        keyframe.unk_10 = 6;
        keyframe.unk_14 = 3;
        anim.keyframes = &keyframe;
        CHECK(collada::CColladaDatabase::getAnimationTrackEx(&anim) ==
              (CVirtualEx<CApplyValueEx<float[3], CMixin<float, 3, SMaterialSetParam<SAnimationTypes<float[3], float[3]>>, -1, float>>>::getInstance()));
    }

    collada::CAnimationStreamingManager::Instance = nullptr;
    if (failures == 0) {
        std::printf("collada_animation_streaming_test: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
