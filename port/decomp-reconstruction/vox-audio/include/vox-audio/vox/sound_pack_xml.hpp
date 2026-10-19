// vox::VoxSoundPackXML: the parsed sound-pack tables and their accessors. Four vectors hold
// the records (sounds, groups, banks, events) and a case-insensitive map at +0x30 maps a sound
// name to its uid. LoadXML (w10-xml/sound_pack_xml_load.cpp) fills the tables from the
// sound-pack XML through the vendored TinyXML subset (vox-audio/vendor/tixml_dh.hpp).
//
// Layout (32-bit offsets, kept as comments): sounds_ +0x00 (68-byte records), groups_ +0x0c
// (56-byte records), banks_ +0x18 (40-byte records), events_ +0x24 (44-byte records) and
// sound_uids_ +0x30. Index accessors return 0 (or -1 for uids) when the index is out of range
// or the record's own uid does not match the index. Name accessors that the binary implements as
// tail calls return whatever the index accessor returns.
#pragma once

#include <cstdint>
#include <list>
#include <map>
#include <memory>
#include <string>
#include <vector>

#include "vox-audio/vox/string_compare.hpp"
#include "vox-audio/vox/voxengine_types.hpp"

namespace vox {

enum Vox3DSoundType : int;
enum FormatTypes : int;

// Bank record, 0x28 bytes: +0x00 uid, +0x04 priority behaviour, +0x08, +0x0c, name string at
// +0x10 (16 bytes), +0x20 and +0x24.
struct BankRecordXML {
    std::int32_t uid = 0;          // +0x00
    std::int32_t behavior = 0;     // +0x04
    std::int32_t field_08 = 0;     // +0x08
    std::int32_t field_0c = 0;     // +0x0c
    std::string name;              // +0x10 (SAllocator string in the original)
    std::int32_t field_20 = 0;     // +0x20
    std::int32_t field_24 = 0;     // +0x24
};

// Group record, 0x38 bytes: +0x00 uid, +0x18 name pointer, +0x1c name string, +0x30 and +0x34
// (the sound type).
struct GroupRecordXML {
    std::int32_t uid = 0;                    // +0x00
    std::int32_t unknown_04_[5] = {};        // +0x04..+0x17
    const char* name_ptr = nullptr;          // +0x18
    std::string name;                        // +0x1c (SAllocator string in the original)
    std::int32_t field_30 = 0;               // +0x30
    std::int32_t type = 0;                   // +0x34 (Vox3DSoundType)
};

// Event record, 0x2c bytes: +0x00 uid, +0x04 name, +0x10 sound uid vector, +0x1c, +0x1e and
// +0x20 (16-bit fields), +0x24 custom parameter count, +0x28 custom parameter array.
struct EventRecordXML {
    std::int32_t uid = 0;                          // +0x00
    const char* name = nullptr;                    // +0x04
    std::list<std::int32_t> used_sound_uids;       // +0x08: sounds taken out of sound_uids
    std::vector<std::int32_t> sound_uids;          // +0x10..+0x18
    std::int16_t field_1c = 0;                     // +0x1c: selection mode (0 random without repeat, 1 in order)
    std::int16_t field_1e = 0;                     // +0x1e: most sounds kept out of the pool
    std::int16_t field_20 = 0;                     // +0x20: percent chance of no sound (-1 uid)
    std::int16_t sequence_index = 0;               // +0x22: next index in mode 1
    std::int32_t custom_count = 0;                 // +0x24
    const char* const* custom_values = nullptr;    // +0x28
};

// Sound record, 0x44 bytes: +0x00 uid, +0x04 priority (the XML "priority" attribute; both
// GetEmitterInfo overloads report this same word as their emitter uid output, see NOTES.md
// wave 11), +0x08, +0x0c data name, +0x10, +0x14
// format (byte), +0x15 and +0x16 bytes, +0x17 emitter flag (byte), +0x18..+0x38 nine words,
// +0x3c custom parameter count, +0x40 custom parameter array. The +0x16 byte is the group index
// when the emitter is read and a flag when the data source is read.
struct SoundRecordXML {
    std::int32_t uid = 0;                          // +0x00
    std::int32_t emitter_uid = 0;                  // +0x04
    std::int32_t field_08 = 0;                     // +0x08
    const char* data_name = nullptr;               // +0x0c
    std::int32_t field_10 = 0;                     // +0x10
    std::int8_t format = 0;                        // +0x14
    std::int8_t field_15 = 0;                      // +0x15
    std::int8_t field_16 = 0;                      // +0x16
    std::int8_t emitter_flag = 0;                  // +0x17
    float emitter_values_[9] = {};                 // +0x18..+0x38 (floats in the loader)
    std::int32_t custom_count = 0;                 // +0x3c
    const char* const* custom_values = nullptr;    // +0x40
};

// Output of GetBankInfo(int, BankInfoXML&).
struct BankInfoXML {
    std::int32_t uid = 0;
    std::int32_t behavior = 0;
    std::int32_t field_08 = 0;
    std::int32_t field_0c = 0;
    std::int32_t field_24 = 0;
};

// Output of GetGroupInfo(int, GroupInfoXML&).
struct GroupInfoXML {
    std::int32_t uid = 0;
    const char* name = nullptr;
    std::int32_t field_30 = 0;
    std::int32_t type = 0;  // Vox3DSoundType
};

// Output of GetDataSourceInfo(int, DataSourceInfoXML&).
struct DataSourceInfoXML {
    std::int32_t uid = 0;
    std::int32_t field_08 = 0;
    const char* data_name = nullptr;
    std::int32_t format = 0;     // FormatTypes
    std::int32_t field_16 = 0;
    std::int32_t field_15 = 0;
    std::int32_t field_10 = 0;   // VoxSourceLoadingFlags
    std::int32_t custom_count = 0;
    const char* const* custom_values = nullptr;
};

// Output of GetEmitterInfo(int, EmitterInfoXML&). The original writes eighteen words; the
// nine sound-record words at +0x18..+0x38 and the count and array of +0x3c and +0x40 are kept
// apart here, so the structure is not a word-for-word copy.
struct EmitterInfoXML {
    std::int32_t uid = 0;
    std::int32_t field_08 = 0;
    std::int32_t emitter_uid = 0;
    std::int32_t group = 0;
    bool flag = false;                       // the byte at +0x10
    std::int32_t type = 0;                   // Vox3DSoundType, from the group
    const char* name = nullptr;              // from the group
    float values_[9] = {};                   // the sound record's +0x18..+0x38
    std::int32_t custom_count = 0;           // the sound record's +0x3c
    const char* const* custom_values = nullptr;  // the sound record's +0x40
};

// Output of GetEventInfo(int, EventInfoXML&).
struct EventInfoXML {
    std::int32_t uid = 0;
    const char* name = nullptr;
    const std::vector<std::int32_t>* sound_uids = nullptr;
    std::int32_t field_1c = 0;
    std::int16_t field_1e = 0;
    std::int16_t field_20 = 0;
    std::int32_t custom_count = 0;
    const char* const* custom_values = nullptr;
};

// Group definition the sound-pack loader fills (vox::GroupXMLDef, 56 bytes): uid at +0x00,
// a string at +0x04 and a second string at +0x1c, the group type at +0x34. What the two
// strings hold is not established. Only the constructors and the copy assignment are
// reconstructed here; the loader is not ported.
class GroupXMLDef {
public:
    GroupXMLDef();                                       // 0x88ade0
    GroupXMLDef(const GroupXMLDef& other);               // 0x88ae2c
    GroupXMLDef& operator=(const GroupXMLDef& other);    // 0x88b5f0

    std::int32_t uid_ = 0;     // +0x00
    std::string name_;         // +0x04
    std::string label_;        // +0x1c
    std::int32_t type_ = 0;    // +0x34
};

// Sound loader record (vox::SoundXMLDef). The layout is the binary's (32-bit offsets): uid
// +0x00, priority +0x04, label +0x08, data file name +0x0c, loading flags +0x10, format +0x14
// (-1 until the attribute is read), bank +0x15, group +0x16, loop +0x17, nine floats
// +0x18..+0x38, custom parameter count +0x3c and the custom strings +0x40. The strings and the
// custom array are owned by the record, so copies are deep.
class SoundXMLDef {
public:
    SoundXMLDef() = default;
    SoundXMLDef(const SoundXMLDef& other) = default;
    SoundXMLDef& operator=(const SoundXMLDef& other) = default;
    ~SoundXMLDef();  // 0x889e98 (D1)

    std::int32_t uid_ = 0;                 // +0x00
    std::int32_t priority_ = 0;            // +0x04
    std::string label_;                    // +0x08
    std::string data_name_;                // +0x0c
    std::int32_t loading_flags_ = 0;       // +0x10
    std::int8_t format_ = -1;              // +0x14
    std::int8_t bank_ = 0;                 // +0x15
    std::int8_t group_ = 0;                // +0x16
    std::int8_t loop_ = 0;                 // +0x17
    float values_[9] = {};                 // +0x18..+0x38
    std::int32_t custom_count_ = 0;        // +0x3c
    std::vector<std::string> custom_;      // +0x40
};

// Event loader record (vox::EventXMLDef, 44 bytes): uid +0x00, name +0x04, the used list
// (sentinel at +0x08), the sound uid vector +0x10..+0x18, mode +0x1c, most-used count +0x1e,
// percent no-sound +0x20, sound count +0x22, custom count +0x24 and the custom strings +0x28.
// The binary copies the +0x28 pointer shallowly, which frees the block twice when a copy
// is destroyed. Here the copy is deep (see the copy operations in event_xml_def.cpp).
class EventXMLDef {
public:
    EventXMLDef() = default;
    EventXMLDef(const EventXMLDef& other);             // 0x88b1fc (C1)
    EventXMLDef& operator=(const EventXMLDef& other);  // 0x88b104
    ~EventXMLDef();                                    // 0x88a090 (D1)

    std::int32_t uid_ = 0;                          // +0x00
    std::string name_;                              // +0x04
    std::list<std::int32_t> used_;                  // +0x08
    std::vector<std::int32_t> sound_uids_;          // +0x10..+0x18
    std::int16_t mode_ = 0;                         // +0x1c
    std::int16_t max_used_ = 0;                     // +0x1e
    std::int16_t no_sound_percent_ = 0;             // +0x20
    std::int16_t sequence_count_ = 0;               // +0x22
    std::int32_t custom_count_ = 0;                 // +0x24
    std::vector<std::string> custom_;               // +0x28
};

// Bank loader record (vox::BankXMLDef, 40 bytes): uid +0x00, behaviour +0x04, max playbacks
// +0x08, threshold +0x0c and the name string +0x10.
class BankXMLDef {
public:
    std::int32_t uid_ = 0;             // +0x00
    std::int32_t behavior_ = 0;        // +0x04
    std::int32_t max_playbacks_ = 0;   // +0x08
    std::int32_t threshold_ = 0;       // +0x0c
    std::string name_;                 // +0x10
};

// Everything one LoadXML call parses. The record tables point into these strings and arrays,
// so the pack keeps this object alive through a shared pointer (copies of the pack share it).
struct XmlLoadedTables {
    std::vector<SoundXMLDef> sounds;
    std::vector<GroupXMLDef> groups;
    std::vector<BankXMLDef> banks;
    std::vector<EventXMLDef> events;
    std::list<std::vector<const char*>> custom_pointers;  // stable custom arrays for the records
    std::list<std::string> labels;  // stable keys for the sound uid map (a stale uid can rewrite a record's label)
};

class VoxSoundPackXML {
public:
    VoxSoundPackXML() = default;
    ~VoxSoundPackXML();  // 0x88c2cc (D1) and 0x88c36c (D2)
    // 0x88ec4c and 0x88ecc4: the state is the member defaults, then LoadXML runs.
    explicit VoxSoundPackXML(const char* path);
    // 0x88d344: clears the tables, reads the file and parses it (see xml_loader.cpp). Returns
    // 1 when the file was read, 0 when it could not be opened or read.
    int LoadXML(const char* path);

    // Index accessors.
    int GetBankInfo(int index, int& field_0c, int& field_08, PriorityBankBehavior& behavior) const;  // 0x889498
    int GetBankInfo(int index, BankInfoXML& out) const;                                               // 0x88952c
    int GetGroupInfo(int index, const char*& name, Vox3DSoundType& type) const;                       // 0x8895d4
    int GetGroupInfo(int index, GroupInfoXML& out) const;                                             // 0x889658
    int GetDataSourceInfo(int index, const char*& name, FormatTypes& format, int& field_16,
                          int& field_15, VoxSourceLoadingFlags& flags) const;                         // 0x8896f4
    int GetDataSourceInfo(int index, DataSourceInfoXML& out) const;                                   // 0x8897ac
    int GetEmitterInfo(int index, int& emitter_uid, int& group, bool& flag, Vox3DSoundType& type,
                       const char*& name) const;                                                      // 0x889894
    int GetEmitterInfo(int index, EmitterInfoXML& out) const;                                         // 0x88993c
    bool GetSoundCustomParam(int index, int param, const char*& value);                         // 0x889ac8
    int GetEventInfo(int index, EventInfoXML& out) const;                                             // 0x889b34
    int GetEventSize(int index);                                                                // 0x889c04
    bool GetEventCustomParam(int index, int param, const char*& value);                         // 0x889c54

    // Name accessors. The lookups return -1 when the name is not found; the wrappers return
    // what the index accessor they tail-call returns.
    int GetEventUid(const char* name) const;                                                          // 0x88a3f4
    bool GetEventCustomParam(const char* name, int param, const char*& value);                  // 0x88a464
    int GetEventSize(const char* name);                                                         // 0x88a490
    int GetEventInfo(const char* name, EventInfoXML& out) const;                                      // 0x88a4ac
    int GetSoundUid(const char* name) const;                                                          // 0x88a55c
    bool GetSoundCustomParam(const char* name, int param, const char*& value);                  // 0x88a590
    int GetEmitterInfo(const char* name, EmitterInfoXML& out) const;                                  // 0x88a5bc
    int GetEmitterInfo(const char* name, int& sound_uid, int& emitter_uid, int& group, bool& flag,
                       Vox3DSoundType& type, const char*& out_name) const;                            // 0x88a5e0
    int GetDataSourceInfo(const char* name, DataSourceInfoXML& out) const;                            // 0x88a62c
    int GetDataSourceInfo(const char* name, int& sound_uid, const char*& data_name, FormatTypes& format,
                          int& field_16, int& field_15, VoxSourceLoadingFlags& flags) const;         // 0x88a650
    int GetGroupUid(const char* name) const;                                                          // 0x88b8b8
    int GetGroupInfo(const char* name, GroupInfoXML& out) const;                                      // 0x88b960
    int GetGroupInfo(const char* name, int& group_uid, const char*& group_name,
                     Vox3DSoundType& type) const;                                                     // 0x88b984
    int GetBankUid(const char* name) const;                                                           // 0x88b9b8
    int GetBankInfo(const char* name, BankInfoXML& out) const;                                        // 0x88ba5c
    int GetBankInfo(const char* name, int& bank_uid, int& field_0c, int& field_08,
                    PriorityBankBehavior& behavior) const;                                            // 0x88ba80

    // Number of sound table slots: the size of the vector the loader resized to the XML "sounds"
    // count. The original has no such accessor; 0x36c7b0 takes the same number as the byte
    // difference of the table vector's begin and end pointers (its +0x64 and +0x68 members), and
    // VoxSoundManager::sound_count_ (+0x1C) is what it stores there.
    int GetSoundCount() const;
    // The number of bank records (the banks vector at +0x18, 40 bytes each): VoxSoundManager::Initialize counts them from the raw
    // vector words.
    int GetBankCount() const;

    // Event selection and reset. The used list (+0x08) keeps the sounds taken out of the pool.
    int GetEventSoundUid(int index, int& sound_uid);                            // 0x88bb6c
    int GetEventSoundUid(const char* name, int& sound_uid);                     // 0x88bdac
    int ResetEvent(int index);                                                  // 0x88be28
    int ResetEvent(const char* name);                                           // 0x88bf10
    int GetEmitterInfoFromSoundOrEvent(const char* name, EmitterInfoXML& out);  // 0x88bdd0
    void GetGroupMask(const char* name, int& mask) const;                       // 0x88cc14

    // Test access: the tables are filled directly by the tests.
    friend struct VoxSoundPackXMLTestAccess;

private:
    std::vector<SoundRecordXML> sounds_;                            // +0x00
    std::vector<GroupRecordXML> groups_;                            // +0x0c
    std::vector<BankRecordXML> banks_;                              // +0x18
    std::vector<EventRecordXML> events_;                            // +0x24
    std::map<const char*, std::int32_t, c8stringcomp> sound_uids_;  // +0x30
    vox::VoxMap<vox::VoxString, std::int32_t, StringComp> group_masks_;   // +0x48
    std::shared_ptr<const XmlLoadedTables> loaded_;                 // port: keeps the loader strings alive
};

}  // namespace vox
