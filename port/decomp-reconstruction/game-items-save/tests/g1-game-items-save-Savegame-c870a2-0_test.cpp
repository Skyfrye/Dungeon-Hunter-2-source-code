// Test for the Savegame batch g1-game-items-save-Savegame-c870a2-0 (game-items-save/src/g1-game-items-save-Savegame-c870a2-0.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source> port/decomp-reconstruction/net-transport/src/stream_buffer.cpp port/decomp-reconstruction/net-transport/src/buffer.cpp
// Returns non-zero when a check fails.
//
// The savefile directory (RES_PATH) does not exist, so every open fails, and the checks cover the parts that run without it:
// Job ownership (copy, finish, the destructor), the queue's dedupe by name and kind, the idle and drain paths of UpdateJobs
// and FlushJobs, the section table (initSectionInfo, load), the destructor's release of the cache, and saveAll's buffer
// layout (count, size, name, data) read back from the queued write job. StreamBuffer is the real net-transport class. The
// StreamReader and IStreamBase helpers are little-endian stand-ins for the game-app definitions.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <iterator>
#include <string>

#include "dh2/IStreamBase.hpp"
#include "dh2/Savegame.hpp"
#include "dh2/StreamBuffer.hpp"
#include "dh2/StreamReader.hpp"
#include "dh2/global/runtime_support.hpp"

// Engine symbols the batch references. The game build defines them in game-app and core-platform.
int gAssertLevel = 0;
void PushProfilingContext(const char*) {}
void PopProfilingContext(const char*) {}

IStreamBase::~IStreamBase() {}
void IStreamBase::seekWrite(std::uint64_t pos) { seek(pos); }
std::uint64_t IStreamBase::tellWrite() const { return tell(); }

template <>
void IStreamBase::readAs<unsigned int>(unsigned int& value) {
    unsigned char b[4] = {0, 0, 0, 0};
    read(b, 4);
    value = static_cast<unsigned int>(b[0]) | (static_cast<unsigned int>(b[1]) << 8) |
            (static_cast<unsigned int>(b[2]) << 16) | (static_cast<unsigned int>(b[3]) << 24);
}

template <>
unsigned int StreamReader::readAs<unsigned int>(IStreamBase* stream) {
    unsigned int value = 0;
    stream->readAs<unsigned int>(value);
    return value;
}

template <>
void StreamReader::writeAs<unsigned int>(IStreamBase* stream, const unsigned int* value) {
    const unsigned int v = *value;
    unsigned char b[4] = {static_cast<unsigned char>(v), static_cast<unsigned char>(v >> 8),
                          static_cast<unsigned char>(v >> 16), static_cast<unsigned char>(v >> 24)};
    stream->write(b, 4);
}

bool StreamReader::readStringEx(IStreamBase* stream, char* dst, std::uint64_t len) {
    return stream->read(dst, len) == len;
}

bool StreamReader::writeStringEx(IStreamBase* stream, const char* src, std::uint64_t len) {
    stream->write(src, len);
    return true;
}

namespace {

int g_failures = 0;
int g_deleted = 0;        // ByteStream destructions
int g_loadCalls = 0;
IStreamBase* g_loadStream = nullptr;
void* g_loadUser = nullptr;
int g_saveCalls = 0;

#define CHECK(cond)                                                  \
    do {                                                             \
        if (!(cond)) {                                               \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);      \
            ++g_failures;                                            \
        }                                                            \
    } while (0)

// A StreamBuffer that counts its own deletion. UpdateJobs reads the job buffer's block vector, so a job stream is a real
// StreamBuffer, as in the game.
class ByteStream : public StreamBuffer {
public:
    ~ByteStream() override { ++g_deleted; }
};

void OnLoad(IStreamBase* stream, void* user) {
    ++g_loadCalls;
    g_loadStream = stream;
    g_loadUser = user;
}

// The section writer: five bytes of data.
void OnSave(IStreamBase* stream, void* user) {
    (void)user;
    ++g_saveCalls;
    stream->write("hello", 5);
}

}  // namespace

// The savefile directory the device file system uses is RES_PATH. A directory that does not exist makes every open fail, which is
// the "no savefile" case these checks cover, without writing files.
extern const char* RES_PATH;

int main() {
    RES_PATH = "dh2_savegame_test_no_such_dir/";
    // 1. Copy takes the stream from its source; the source keeps the name and kind but not the ownership.
    {
        g_deleted = 0;
        Savegame::Job a;
        a.m_stream = new ByteStream();
        a.m_ownsStream = true;
        a.m_filename = "dh2_001";
        a.m_kind = 0;
        {
            Savegame::Job b(a);
            CHECK(!a.m_ownsStream);
            CHECK(b.m_ownsStream);
            CHECK(b.m_stream == a.m_stream);
            CHECK(b.m_filename == "dh2_001");
            CHECK(b.m_kind == 0);
            CHECK(g_deleted == 0);
            b.finish();  // owned: the stream is deleted once and cleared
            CHECK(g_deleted == 1);
            CHECK(b.m_stream == nullptr && !b.m_ownsStream);
        }
        CHECK(g_deleted == 1);
        a.m_stream = nullptr;  // deleted through b
    }

    // 2. copy() moves ownership into the target; the target's destructor deletes the stream once.
    {
        g_deleted = 0;
        Savegame::Job owner;
        owner.m_stream = new ByteStream();
        owner.m_ownsStream = true;
        {
            Savegame::Job target;
            target.copy(owner);
            CHECK(target.m_ownsStream);
            CHECK(!owner.m_ownsStream);
            CHECK(g_deleted == 0);
        }
        CHECK(g_deleted == 1);
        owner.m_stream = nullptr;
    }

    // 3. AddJob replaces a queued job with the same name and kind (its stream is deleted); a different kind is kept.
    {
        g_deleted = 0;
        CHECK(Savegame::s_jobList.empty());
        Savegame::Job first;
        first.m_filename = "dh2_002";
        first.m_kind = 0;
        first.m_stream = new ByteStream();
        first.m_ownsStream = true;
        Savegame::AddJob(first);
        CHECK(Savegame::s_jobList.size() == 1);
        CHECK(!first.m_ownsStream);

        Savegame::Job second;
        second.m_filename = "dh2_002";
        second.m_kind = 0;
        second.m_stream = new ByteStream();  // a write job always carries its buffer
        second.m_ownsStream = true;
        Savegame::AddJob(second);
        CHECK(Savegame::s_jobList.size() == 1);
        CHECK(g_deleted == 1);

        Savegame::Job other;
        other.m_filename = "dh2_002";
        other.m_kind = 1;
        Savegame::AddJob(other);
        CHECK(Savegame::s_jobList.size() == 2);
        CHECK(Savegame::s_jobList.back().m_kind == 1);

        // A name that is not queued leaves the queue alone.
        Savegame::FlushJobs("dh2_999");
        CHECK(Savegame::s_jobList.size() == 2);
    }
    Savegame::FlushJobs(nullptr);  // drains both jobs: each one finishes with no savefile
    CHECK(Savegame::s_jobList.empty());
    CHECK(!Savegame::UpdateJobs());
    CHECK(Savegame::UpdateJobs() == false);

    // 4. Section table: initSectionInfo registers callbacks; load on a section with no data calls nothing.
    {
        Savegame save("dh2_003.sav", false);
        CHECK(save.m_stream == nullptr);
        CHECK(save.m_filename == "dh2_003.sav");
        save.initSectionInfo("INFO", OnLoad, OnSave, nullptr);
        CHECK(save.m_sections.size() == 1);
        CHECK(save.m_sections.at("INFO").m_onLoad == OnLoad);
        CHECK(save.m_sections.at("INFO").m_onSave == OnSave);
        CHECK(save.m_sections.at("INFO").m_size == 0);

        int tag = 7;
        g_loadCalls = 0;
        save.load("INFO", OnLoad, OnSave, &tag);
        CHECK(g_loadCalls == 0);  // size 0: no seek and no callback
        CHECK(save.m_sections.at("INFO").m_user == &tag);

        // With data in the cache, load seeks to the section and calls onLoad with the cache and the user pointer.
        g_deleted = 0;
        save.m_sections.at("INFO").m_size = 4;
        save.m_sections.at("INFO").m_offset = 2;
        save.m_stream = new ByteStream();
        {
            const std::uint8_t zeros[16] = {0};
            save.m_stream->write(zeros, 16);
        }
        save.load("INFO", OnLoad, OnSave, &tag);
        CHECK(g_loadCalls == 1);
        CHECK(g_loadStream == save.m_stream);
        CHECK(g_loadUser == &tag);
        CHECK(save.m_stream->tell() == 2);

        // A new section gets offset 0 and size 0.
        save.load("DATA", nullptr, OnSave, nullptr);
        CHECK(save.m_sections.size() == 2);
        CHECK(save.m_sections.at("DATA").m_offset == 0);
        CHECK(save.m_sections.at("DATA").m_size == 0);
    }
    CHECK(g_deleted == 1);  // the cache is released by the destructor above

    // 5. The destructor deletes the cache stream.
    {
        g_deleted = 0;
        Savegame* sg = new Savegame("dh2_005.sav", true);
        CHECK(sg->unk_38);
        sg->m_stream = new ByteStream();
        delete sg;
        CHECK(g_deleted == 1);
    }

    // 6. saveAll queues the existing-file backup (kind 1) and the buffer (kind 0). The buffer holds the section count, the
    // data size, the 4-byte name and the data. The read-back of the cache gives the data offset and size.
    {
        Savegame::FlushJobs(nullptr);
        Savegame save("dh2_004.sav", false);
        save.initSectionInfo("DATA", nullptr, OnSave, nullptr);
        g_saveCalls = 0;
        save.saveAll();
        CHECK(g_saveCalls == 1);
        CHECK(Savegame::s_jobList.size() == 2);

        auto first = Savegame::s_jobList.begin();
        CHECK(first->m_kind == 1);
        CHECK(first->m_filename == "dh2_004.sav");
        CHECK(!first->m_ownsStream && first->m_stream == nullptr);

        auto last = std::prev(Savegame::s_jobList.end());
        CHECK(last->m_kind == 0);
        CHECK(last->m_filename == "dh2_004.sav");
        CHECK(last->m_ownsStream && last->m_stream != nullptr);
        IStreamBase* buffer = last->m_stream;
        buffer->seek(0);
        CHECK(StreamReader::readAs<unsigned int>(buffer) == 1);  // section count
        CHECK(StreamReader::readAs<unsigned int>(buffer) == 5);  // data size
        char name[5] = {0, 0, 0, 0, 0};
        StreamReader::readStringEx(buffer, name, 4);
        CHECK(std::string(name) == "DATA");
        char data[6] = {0, 0, 0, 0, 0, 0};
        buffer->read(data, 5);
        CHECK(std::string(data) == "hello");
        CHECK(buffer->size() == 17);

        CHECK(save.m_sections.at("DATA").m_offset == 12);
        CHECK(save.m_sections.at("DATA").m_size == 5);
        CHECK(save.m_sections.at("DATA").m_onSave == OnSave);

        // reset clears the sections and queues again. The same names and kinds replace the queued jobs.
        save.reset();
        CHECK(save.m_sections.empty());
        CHECK(Savegame::s_jobList.size() == 2);
        Savegame::FlushJobs(nullptr);
        CHECK(Savegame::s_jobList.empty());
    }

    // 7. The savefile seams answer "absent", so the slot listing deletes nothing and the constructor loads nothing.
    Savegame::DeleteAllSlotFiles(7);
    {
        Savegame save("dh2_006.sav", true);
        CHECK(save.m_stream == nullptr);
        StreamBuffer source;
        const unsigned int word = 0x01020304u;
        StreamReader::writeAs<unsigned int>(&source, &word);
        save._cacheFile(&source);
        CHECK(save.m_stream != nullptr);
        CHECK(save.m_stream != nullptr && save.m_stream->size() == 4);
    }

    std::printf(g_failures == 0 ? "Savegame batch test: all checks passed\n" : "Savegame batch test: %d check(s) failed\n",
                g_failures);
    return g_failures == 0 ? 0 : 1;
}
