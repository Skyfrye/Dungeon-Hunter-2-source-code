// Savegame: the slot file manager. It keeps the file name, a StreamBuffer cache of the file (m_stream) and a
// table of named sections (m_sections). Each section records its file offset and size and a load and a save
// callback. Writes go through a queue of Jobs (s_jobList) that UpdateJobs drains one step per call.
// Original 32-bit size 0x3c (60), the operator new size in class-facts. Vtable _ZTV8Savegame (16 bytes): two
// destructor slots and no other virtuals.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x315ed8 C1 / 0x315f48 C2, dtors 0x313dfc D1 /
// 0x313ea4 D2 / 0x313e88 D0). The std::string (24 bytes) and std::map (20 bytes) sizes are the 32-bit ones.
#pragma once

#include <cstdint>
#include <list>
#include <map>
#include <string>

class IStreamBase;
class StreamBuffer;

class Savegame {
public:
    // Section callbacks: stream (m_stream, or the StreamBuffer the caller passes) and the section's user pointer.
    using SectionCallback = void (*)(IStreamBase* stream, void* user);

    // One named section. Original 32-bit size 0x18 (24). Stored as the mapped value of m_sections.
    struct SectionInfo {
        std::uint64_t m_offset;                                         // +0x00 start of the section in the file (64-bit position)
        std::uint32_t m_size;                                           // +0x08 length in bytes (unsigned int in the file)
        SectionCallback m_onLoad;                                       // +0x0c called by load() on the stream
        SectionCallback m_onSave;                                       // +0x10 called by saveAll() to write the section
        void* m_user;                                                   // +0x14 passed to both callbacks
    };

    // A queued file operation. Original 32-bit size 0x20 (32); the list node adds two links (node size 40).
    class Job {
    public:
        // Default: the static s_currentJob starts zeroed (.bss). The original has no constructor symbol for it.
        Job() = default;
        Job(const Job& other);                                          // 0x3145e0 (C1): empty name, then copy(other)
        ~Job();                                                         // 0x313c90 (D1)
        void finish();                                                  // 0x313720: deletes the stream when owned, then clears the job
        // 0x313cdc: releases the job's own stream when owned, then takes other's stream, name, kind and owned flag.
        // The original clears other's owned flag, so the stream moves to the copy. That is why m_ownsStream is mutable.
        void copy(const Job& other);

        IStreamBase* m_stream = nullptr;                                // +0x00 file stream; deleted through its virtual dtor when m_ownsStream is set
        std::string m_filename;                                         // +0x04 file name (24 bytes, compared by AddJob)
        uint8_t m_kind = 0;                                             // +0x1c job kind: 0 writes the slot file, nonzero backs it up; AddJob drops a queued job with the same name and kind
        mutable bool m_ownsStream = false;                              // +0x1d the job deletes m_stream when it is released; copies move it from the source
        uint8_t pad_1e[2];                                              // +0x1e
    };

    Savegame(const char* name, bool flag);                              // 0x315ed8 (C1), 0x315f48 (C2); flag is stored at +0x38
    virtual ~Savegame();                                                // slot 0x00: 0x313dfc (D1), 0x313ea4 (D2); slot 0x04: 0x313e88 (D0)

    // Section table and file cache.
    void load(const char* section, SectionCallback onLoad, SectionCallback onSave, void* user);             // 0x315848
    void initSectionInfo(const char* section, SectionCallback onLoad, SectionCallback onSave, void* user);  // 0x315904
    void reset();                                                       // 0x3163c0: clears m_sections, then saveAll()
    void saveAll();                                                     // 0x315fb8: queues the file write
    void _cacheFile(StreamBuffer* source);                              // 0x315ad0: source null opens m_filename, otherwise caches source

    // Job queue. The queue and the current job are static.
    static void AddJob(Job& job);                                       // 0x315110: replaces a queued job with the same name and kind
    static void FlushJobs(const char* name);                            // 0x314cfc: runs UpdateJobs until it reports idle
    static bool UpdateJobs();                                           // 0x314734: one step of the current job; false while idle
    static void DeleteAllSlotFiles(int slot);                           // 0x313fb0: deletes the "dh2_%03u" files of one slot

    static std::list<Job> s_jobList;                                    // queued jobs (sentinel list, not part of the object)
    static Job s_currentJob;                                            // the job UpdateJobs works on

    // Savegame occupies +0x00 .. +0x3b.
    std::string m_filename;                                             // +0x04 slot file name (24 bytes in the original); _cacheFile appends ".bak"
    IStreamBase* m_stream;                                              // +0x1c StreamBuffer cache of the file, replaced by _cacheFile
    std::map<std::string, SectionInfo> m_sections;                      // +0x20 sections by name; header node and count take 20 bytes in the original
    uint8_t pad_34[4];                                                  // +0x34 not touched by the recovered code
    bool unk_38;                                                        // +0x38 constructor argument 2; when false, _cacheFile reads the section table
    uint8_t pad_39[3];                                                  // +0x39
};
