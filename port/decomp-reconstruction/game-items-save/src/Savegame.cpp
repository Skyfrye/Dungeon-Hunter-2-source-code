// Batch g1-game-items-save-Savegame-c870a2-0 (owner Savegame, part 1 of 1): the slot file manager, its section table, the
// file cache, the job queue and the save and delete paths.
// Declarations come from dh2/Savegame.hpp. Shared conventions in this file:
//  * Savefile calls. The original reaches the savefile file system through the object at dword_99F73C + 0x34 (IDevice +0x34, a
//    FileSystemWin32 at runtime; dh2/global/savefile_fs.hpp). The helpers below name the vtable slot each call stands for. The
//    handles openSavefile returns are FileSystemWin32::_FileHandle, an IFileStream, so they are IStreamBase.
//  * Buffer blocks. The job buffer's block vector is read through net-transport's Buffer accessors (block_vector_size, block).
//  * Asserts. gAssertLevel 2 stops the program (the original stores to address 0), 1 prints the ASSERT line and goes on.
//  * Statics. s_jobList and s_currentJob live in .bss (0x99f8c8, 0x99f8d0). The function-local statics of UpdateJobs are
//    .bss except numSections, which is .data. numSections holds the section count read from the job buffer's first word.
//  * Return values. The original returns 16556 from saveAll and the value of saveAll from reset, FlushJobs returns a
//    non-zero leftover when nothing matches, and Job::finish returns its this pointer. Callers in the tree ignore these,
//    so the declarations stay void and the values are not reproduced.
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <list>
#include <map>
#include <string>
#include <vector>

#include "core-platform/memory.hpp"          // gAssertLevel
#include "dh2/IStreamBase.hpp"
#include "dh2/Savegame.hpp"
#include "dh2/StreamBuffer.hpp"
#include "dh2/StreamReader.hpp"
#include "dh2/global/runtime_support.hpp"   // PushProfilingContext, PopProfilingContext
#include "dh2/global/savefile_fs.hpp"

namespace {

// The source names the original's ASSERT lines print.
const char kSavegameSource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\Savegame.cpp";
const char kStreamBufferSource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources/Core/Irrlicht/../../Utils/StreamBuffer.h";
const char kStreamReaderSource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\/StreamReader.h";

// The original's ASSERT(expr) at file:line. gAssertLevel 2 stops the program, 1 prints the line and goes on.
void ReportAssert(const char* expr, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();  // the original writes to address 0 here
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

// PARTIAL SEAMS (layout request: IDevice +0x34, the savefile file system). Each one names the FileSystemWin32 vtable slot
// it stands in for. See the file comment.

// +0x94 openSavefile(name, writable). The handle is a FileSystemWin32::_FileHandle, an IFileStream (an IStreamBase). Savegame
// calls Savegame::FlushJobs(name) first, in openSavefile itself in the original (0x34fee4); the callers here have run it already.
IStreamBase* OpenSavefile(const char* name, bool writable) {
    return SavefileFileSystem().openSavefile(name, writable);
}

// +0x78 closeFile(IFileStream*&): the original deletes the stream and clears the caller's pointer.
void CloseFile(IStreamBase*& handle) {
    delete handle;
    handle = nullptr;
}

// +0x74 getSavefilesPath().
const char* GetSavefilesPath() {
    return SavefileFileSystem().getSavefilesPath();
}

// +0x80 getFilesMatching(dir, pattern, out). Appends the matching names to out.
void GetFilesMatching(const char* dir, const char* pattern, std::vector<std::string>& out) {
    SavefileFileSystem().getFilesMatching(dir, pattern, out);
}

// +0x9c deleteSavefile(name). True when the file was removed.
bool DeleteSavefile(const char* name) {
    return SavefileFileSystem().deleteSavefile(name);
}

// +0xa0 backupSavefile(src, dst). True when the copy was made.
bool BackupSavefile(const char* src, const char* dst) {
    return SavefileFileSystem().backupSavefile(src, dst);
}

// The job buffer keeps its blocks in Buffer::blocks_, a vector with a trailing nullptr sentinel; the original reads its begin and
// end words directly. Buffer exposes them through block_vector_size() and block().
std::size_t BlockVectorEntries(const StreamBuffer* buffer) {
    return buffer->buffer_.block_vector_size();
}

const std::uint8_t* BlockData(const StreamBuffer* buffer, int block) {
    return buffer->buffer_.block(static_cast<std::size_t>(block));
}

// The section table at the head of a savegame stream (the LABEL_14 path of _cacheFile). The stream holds a uint32 count
// at position 0. Each section is a uint32 data size, a 4-byte name, then the data. A name already in m_sections keeps its
// callbacks and gets the new offset and size. A new name gets empty callbacks. Reading stops at the end of the stream.
void ReadSectionTable(Savegame& save) {
    IStreamBase* stream = save.m_stream;
    if (stream == nullptr || stream->size() <= 3) {
        return;
    }
    stream->seek(0);
    const std::uint32_t count = StreamReader::readAs<unsigned int>(stream);
    for (std::uint32_t i = 0; i < count; ++i) {
        const std::uint64_t entry = stream->tell();
        if (stream->size() <= entry) {
            break;
        }
        const std::uint32_t size = StreamReader::readAs<unsigned int>(stream);
        char name[5] = {0, 0, 0, 0, 0};
        StreamReader::readStringEx(stream, name, 4);
        const std::uint64_t offset = stream->tell();
        const std::string key(name);
        auto it = save.m_sections.find(key);
        if (it == save.m_sections.end()) {
            Savegame::SectionInfo& info = save.m_sections[key];
            info.m_offset = offset;
            info.m_size = size;
            info.m_onLoad = nullptr;
            info.m_onSave = nullptr;
            info.m_user = nullptr;
        } else {
            it->second.m_offset = offset;
            it->second.m_size = size;
        }
        stream->seek(offset + size);
    }
}

}  // namespace

std::list<Savegame::Job> Savegame::s_jobList;  // 0x99f8c8 (.bss): the queue. The original's sentinel node is the list head.
Savegame::Job Savegame::s_currentJob;          // 0x99f8d0 (.bss, 32 bytes): the job UpdateJobs works on

// 0x313720 _ZN8Savegame3Job6finishEv
// Deletes the stream when the job owns it, then clears the stream and the owned flag. The name and kind stay.
void Savegame::Job::finish() {
    if (m_ownsStream && m_stream != nullptr) {  // +0x1d, +0x00
        delete m_stream;                       // vtable slot +0x04, the deleting destructor
    }
    m_ownsStream = false;
    m_stream = nullptr;
}

// 0x313c90 _ZN8Savegame3JobD1Ev
// Same release as finish(). The name is destroyed by its own destructor, as the original's _M_deallocate_block call does.
Savegame::Job::~Job() {
    if (m_ownsStream && m_stream != nullptr) {
        delete m_stream;
    }
    m_ownsStream = false;
    m_stream = nullptr;
}

// 0x313cdc _ZN8Savegame3Job4copyERKS0_
// Releases this job's stream when owned, then takes the other job's stream, name and kind. The other job gives up the
// stream: its owned flag is cleared, so the stream is deleted once, by this copy. The original clears the stream word
// before it reads the source, so a self-copy ends with no stream.
void Savegame::Job::copy(const Job& other) {
    if (m_ownsStream && m_stream != nullptr) {
        delete m_stream;
    }
    m_ownsStream = false;
    m_stream = nullptr;
    m_stream = other.m_stream;
    if (this != &other) {
        m_filename = other.m_filename;
    }
    m_ownsStream = other.m_ownsStream;
    m_kind = other.m_kind;
    other.m_ownsStream = false;
}

// 0x3145e0 _ZN8Savegame3JobC1ERKS0_
// The name starts empty and the owned flag is clear, then copy() takes the other job's stream and kind.
Savegame::Job::Job(const Job& other) {
    copy(other);
}

// 0x313dfc _ZN8SavegameD1Ev
// The base-object copy 0x313ea4 (D2) has the same body and is not written again. The deleting copy 0x313e88 (D0) is the
// compiler's delete this, after this body.
Savegame::~Savegame() {
    delete m_stream;
    m_stream = nullptr;
    m_sections.clear();
}

// 0x313fb0 _ZN8Savegame18DeleteAllSlotFilesEi
// PARTIAL: the listing and the deletes go through the savefile seams (layout request: IDevice +0x34).
// Lists the slot's "dh2_%03u" files in the savefile directory and deletes each one.
void Savegame::DeleteAllSlotFiles(int slot) {
    char pattern[32];
    std::snprintf(pattern, sizeof pattern, "dh2_%03u", static_cast<unsigned int>(slot));
    std::vector<std::string> files;
    GetFilesMatching(GetSavefilesPath(), pattern, files);
    for (const std::string& file : files) {
        DeleteSavefile(file.c_str());
    }
}

// 0x314734 _ZN8Savegame10UpdateJobsEv
// PARTIAL: the savefile opens, the backup and the block writes go through the savefile seams, and the block count and
// block data go through the buffer seams (layout requests: IDevice +0x34 and the net-transport Buffer accessor).
// One step of the current job. Returns true while a job is busy, false when the queue is idle. Reentry returns false.
//   Kind 0 (the write job, its stream owns the buffer): the first step reads the count word of the buffer into numSections
//   and writes -1 in its place. Each step writes one block to the savefile. After block 0 the count is written back, and
//   after the last block the file's first word is set to numSections and the file is closed.
//   Kind nonzero (the backup job, no stream): when the existing file's first word is not -1, the file is copied to
//   name + ".bak". The job then finishes.
bool Savegame::UpdateJobs() {
    static bool inQueue = false;                // UpdateJobs()::inQueue (.bss)
    static int count = 0;                       // UpdateJobs()::count (.bss): the block index in progress
    static int max_count = 0;                   // UpdateJobs()::max_count (.bss): the number of blocks
    static IStreamBase* filestream = nullptr;   // UpdateJobs()::filestream (.bss): the savefile being written
    static std::uint32_t numSections = 0;       // UpdateJobs()::numSections (.data): the buffer's count word

    if (inQueue) {
        return false;
    }
    inQueue = true;
    // The original's goto labels become returns from this lambda, so the flags are cleared once below.
    const bool result = []() -> bool {
        if (s_currentJob.m_stream == nullptr) {
            if (s_jobList.empty()) {
                return false;
            }
            s_currentJob.copy(s_jobList.front());
            s_jobList.pop_front();
            if (s_currentJob.m_kind != 0) {
                std::uint32_t marker = 0xFFFFFFFFu;  // the original's int -1
                IStreamBase* handle = OpenSavefile(s_currentJob.m_filename.c_str(), false);
                if (handle != nullptr) {
                    handle->readAs<unsigned int>(marker);
                    CloseFile(handle);
                    if (marker != 0xFFFFFFFFu) {
                        const std::string backup = s_currentJob.m_filename + ".bak";
                        BackupSavefile(s_currentJob.m_filename.c_str(), backup.c_str());
                    }
                }
                s_currentJob.finish();
                return true;
            }
            count = 0;
            max_count = static_cast<int>(BlockVectorEntries(static_cast<StreamBuffer*>(s_currentJob.m_stream))) - 1;
            filestream = OpenSavefile(s_currentJob.m_filename.c_str(), true);
            if (filestream == nullptr) {
                ReportAssert("false", kSavegameSource, 118);
                s_currentJob.finish();
                return true;
            }
        }

        if (count == 0) {
            // The count word of the buffer goes to numSections, and -1 takes its place while the file is written.
            s_currentJob.m_stream->seek(0);
            if (s_currentJob.m_stream->read(&numSections, 4) != 4) {
                ReportAssert("bytesRead == sizeof(T)", kStreamReaderSource, 80);
            }
            std::uint32_t marker = 0xFFFFFFFFu;
            s_currentJob.m_stream->seekWrite(0);
            StreamReader::writeAs<unsigned int>(s_currentJob.m_stream, &marker);
        }

        const int block = count;
        StreamBuffer* buffer = static_cast<StreamBuffer*>(s_currentJob.m_stream);
        const std::uint8_t* data = BlockData(buffer, block);
        const std::uint32_t size = buffer->size(block);
        filestream->write(data, size);

        if (block == 0) {
            s_currentJob.m_stream->seekWrite(0);
            StreamReader::writeAs<unsigned int>(s_currentJob.m_stream, &numSections);
        }
        count = block + 1;
        if (count != max_count) {
            return true;
        }
        filestream->seek(0);
        StreamReader::writeAs<unsigned int>(filestream, &numSections);
        CloseFile(filestream);
        s_currentJob.finish();
        return true;
    }();
    inQueue = false;
    return result;
}

// 0x314cfc _ZN8Savegame9FlushJobsEPKc
// With no name, drains the queue. With a name, drains when the current job or the first queued job with that name is
// found, and does nothing otherwise. The drain runs UpdateJobs until it reports idle.
void Savegame::FlushJobs(const char* name) {
    if (name == nullptr) {
        while (UpdateJobs()) {
        }
        return;
    }
    if (s_currentJob.m_filename == name) {
        while (UpdateJobs()) {
        }
        return;
    }
    for (const Job& job : s_jobList) {
        if (job.m_filename == name) {
            while (UpdateJobs()) {
            }
            return;
        }
    }
}

// 0x315110 _ZN8Savegame6AddJobERNS_3JobE
// Drops every queued job with the same name and kind, then queues a copy of job. The copy takes job's stream, so job no
// longer owns it.
void Savegame::AddJob(Job& job) {
    for (auto it = s_jobList.begin(); it != s_jobList.end();) {
        if (it->m_kind == job.m_kind && it->m_filename == job.m_filename) {
            it = s_jobList.erase(it);
        } else {
            ++it;
        }
    }
    s_jobList.push_back(job);
}

// 0x315848 _ZN8Savegame4loadEPKcPFvP11IStreamBasePvES6_S4_
// Sets the section's callbacks and user pointer. A new section gets offset 0 and size 0. An existing section that has
// data is sought to its offset on the cache stream, and onLoad is called with the stream and the user pointer.
void Savegame::load(const char* section, SectionCallback onLoad, SectionCallback onSave, void* user) {
    const std::string key(section);
    auto it = m_sections.find(key);
    if (it == m_sections.end()) {
        SectionInfo& info = m_sections[key];
        info.m_offset = 0;
        info.m_onLoad = onLoad;
        info.m_onSave = onSave;
        info.m_user = user;
        info.m_size = 0;
        return;
    }
    SectionInfo& info = it->second;
    info.m_onSave = onSave;
    info.m_onLoad = onLoad;
    info.m_user = user;
    if (info.m_size != 0 && m_stream != nullptr) {
        m_stream->seek(info.m_offset);
        if (onLoad != nullptr) {
            onLoad(m_stream, user);
        }
    }
}

// 0x315904 _ZN8Savegame15initSectionInfoEPKcPFvP11IStreamBasePvES6_S4_
// Registers a section's callbacks and user pointer without touching the cache. A new section gets offset 0 and size 0.
void Savegame::initSectionInfo(const char* section, SectionCallback onLoad, SectionCallback onSave, void* user) {
    const std::string key(section);
    auto it = m_sections.find(key);
    if (it == m_sections.end()) {
        SectionInfo& info = m_sections[key];
        info.m_offset = 0;
        info.m_onLoad = onLoad;
        info.m_onSave = onSave;
        info.m_user = user;
        info.m_size = 0;
        return;
    }
    SectionInfo& info = it->second;
    info.m_user = user;
    info.m_onSave = onSave;
    info.m_onLoad = onLoad;
}

// 0x315ad0 _ZN8Savegame10_cacheFileEP12StreamBuffer
// PARTIAL: the null-source branch opens the slot and its .bak copy through the savefile seam (layout request: IDevice +0x34).
// A source buffer is copied into the cache (the saveAll path needs no seam). Without the flag (unk_38 false) the section
// table is read from the cache. When the cache is missing or its first word is -1, the .bak copy is tried.
void Savegame::_cacheFile(StreamBuffer* source) {
    delete m_stream;
    m_stream = nullptr;
    if (source != nullptr) {
        source->seek(0);
        source->seekWrite(0);
        m_stream = new StreamBuffer(source);
    } else {
        IStreamBase* handle = OpenSavefile(m_filename.c_str(), false);
        if (handle != nullptr) {
            m_stream = new StreamBuffer(handle);
            CloseFile(handle);
        }
    }
    if (unk_38) {
        return;
    }
    if (m_stream != nullptr) {
        if (m_stream->size() > 3 && StreamReader::readAs<unsigned int>(m_stream) != 0xFFFFFFFFu) {
            ReadSectionTable(*this);
            return;
        }
        delete m_stream;
        m_stream = nullptr;
    }
    const std::string backup = m_filename + ".bak";
    IStreamBase* handle = OpenSavefile(backup.c_str(), false);
    if (handle == nullptr) {
        return;  // no cache stream is left, so the section table is not read
    }
    m_stream = new StreamBuffer(handle);
    CloseFile(handle);
    if (StreamReader::readAs<unsigned int>(m_stream) != 0xFFFFFFFFu) {
        ReadSectionTable(*this);
        return;
    }
    delete m_stream;
    m_stream = nullptr;
}

// 0x315ed8 _ZN8SavegameC1EPKcb
// PARTIAL: the constructor reads the slot through _cacheFile(nullptr), which goes through the savefile seam. The C2 copy
// 0x315f48 has the same body and is not written again.
Savegame::Savegame(const char* name, bool flag)
    : m_filename(name), m_stream(nullptr), m_sections(), unk_38(flag) {
    _cacheFile(nullptr);
}

// 0x315fb8 _ZN8Savegame7saveAllEv
// The cache-copy branch of the section writer asserts ASSERT(static_) on the cache buffer's sized flag (StreamBuffer +0x2c).
// Writes the slot into a new buffer and queues it. The buffer starts with a -1 placeholder that becomes the section count
// once the sections are written. Each section is a uint32 size, a 4-byte name, then the data from its onSave callback. A
// section with no callback copies the cache's bytes at its offset, or writes zeros when there is no cache. The job for the
// existing file (kind 1) is queued first, then the buffer (kind 0, owned by the job).
void Savegame::saveAll() {
    PushProfilingContext("Savegame::saveAll");
    Job backupJob;
    backupJob.m_filename = m_filename;
    backupJob.m_kind = 1;
    AddJob(backupJob);

    StreamBuffer* buffer = new StreamBuffer();
    std::uint32_t placeholder = 0xFFFFFFFFu;
    StreamReader::writeAs<unsigned int>(buffer, &placeholder);

    for (auto& entry : m_sections) {
        SectionInfo& info = entry.second;
        const std::uint64_t sizeField = buffer->tellWrite();
        std::uint32_t zero = 0;
        StreamReader::writeAs<unsigned int>(buffer, &zero);
        StreamReader::writeStringEx(buffer, entry.first.c_str(), 4);
        const std::uint64_t dataStart = buffer->tellWrite();
        if (info.m_onSave != nullptr) {
            info.m_onSave(buffer, info.m_user);
        } else if (m_stream != nullptr) {
            const StreamBuffer* cache = static_cast<StreamBuffer*>(m_stream);
            if (!cache->buffer_.sized()) {
                ReportAssert("static_", kStreamBufferSource, 130);
            }
            buffer->write(cache->buffer_.FirstBlock() + static_cast<std::uint32_t>(info.m_offset), info.m_size);
        } else {
            std::vector<std::uint8_t> zeros(info.m_size, 0);
            buffer->write(zeros.data(), info.m_size);
        }
        const std::uint64_t dataEnd = buffer->tellWrite();
        const std::uint32_t size = static_cast<std::uint32_t>(dataEnd - dataStart);
        buffer->seekWrite(sizeField);
        StreamReader::writeAs<unsigned int>(buffer, &size);
        buffer->seekWrite(dataEnd);
    }

    const std::uint64_t endPos = buffer->tellWrite();
    buffer->seekWrite(0);
    const std::uint32_t sectionCount = static_cast<std::uint32_t>(m_sections.size());
    StreamReader::writeAs<unsigned int>(buffer, &sectionCount);
    buffer->seekWrite(endPos);
    _cacheFile(buffer);

    Job job;
    job.m_filename = m_filename;
    job.m_kind = 0;
    job.m_stream = buffer;
    job.m_ownsStream = true;
    AddJob(job);
    PopProfilingContext("Savegame::saveAll");
}

// 0x3163c0 _ZN8Savegame5resetEv
// Clears the section table, then queues a save.
void Savegame::reset() {
    if (!m_sections.empty()) {
        m_sections.clear();
    }
    saveAll();
}
