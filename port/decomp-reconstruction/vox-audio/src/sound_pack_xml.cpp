// vox::VoxSoundPackXML accessors. The name-based wrappers in the binary are tail calls to the
// index-based accessors (or to the uid lookups), so they forward the same way here.
#include "vox-audio/vox/sound_pack_xml.hpp"

#include <cstddef>

namespace vox {

namespace {

// strcasecmp(a, b) == 0 for ASCII names, as the original compares event names.
bool EqualIgnoreCase(const char* a, const char* b) {
    for (;; ++a, ++b) {
        int ca = static_cast<unsigned char>(*a);
        int cb = static_cast<unsigned char>(*b);
        if (ca >= 'A' && ca <= 'Z') ca += 'a' - 'A';
        if (cb >= 'A' && cb <= 'Z') cb += 'a' - 'A';
        if (ca != cb) return false;
        if (ca == 0) return true;
    }
}

}  // namespace

// Number of sound table slots. Not a symbol of the original: the same number as 0x36c7b0 reads
// from the table vector (begin and end at +0x64 and +0x68), through the STL type instead of bytes.
int VoxSoundPackXML::GetSoundCount() const { return static_cast<int>(sounds_.size()); }
int VoxSoundPackXML::GetBankCount() const { return static_cast<int>(banks_.size()); }

// 0x889498 _ZNK3vox15VoxSoundPackXML11GetBankInfoEiRiS1_RNS_20PriorityBankBehaviorE
int VoxSoundPackXML::GetBankInfo(int index, int& field_0c, int& field_08,
                                 PriorityBankBehavior& behavior) const {
    if (index < 0 || static_cast<std::size_t>(index) >= banks_.size()) {
        return 0;
    }
    const BankRecordXML& rec = banks_[index];
    if (rec.uid != index) {
        return 0;
    }
    field_0c = rec.field_0c;
    field_08 = rec.field_08;
    behavior = static_cast<PriorityBankBehavior>(rec.behavior);
    return 1;
}

// 0x88952c _ZNK3vox15VoxSoundPackXML11GetBankInfoEiRNS_11BankInfoXMLE
int VoxSoundPackXML::GetBankInfo(int index, BankInfoXML& out) const {
    if (index < 0 || static_cast<std::size_t>(index) >= banks_.size() ||
        banks_[index].uid != index) {
        return 0;
    }
    const BankRecordXML& rec = banks_[index];
    out.uid = index;
    out.field_08 = rec.field_08;
    out.field_0c = rec.field_0c;
    out.behavior = rec.behavior;
    out.field_24 = rec.field_24;
    return 1;
}

// 0x8895d4 _ZNK3vox15VoxSoundPackXML12GetGroupInfoEiRPKcRNS_14Vox3DSoundTypeE
int VoxSoundPackXML::GetGroupInfo(int index, const char*& name, Vox3DSoundType& type) const {
    if (index < 0 || static_cast<std::size_t>(index) >= groups_.size() ||
        groups_[index].uid != index) {
        return 0;
    }
    name = groups_[index].name_ptr;
    type = static_cast<Vox3DSoundType>(groups_[index].type);
    return 1;
}

// 0x889658 _ZNK3vox15VoxSoundPackXML12GetGroupInfoEiRNS_12GroupInfoXMLE
int VoxSoundPackXML::GetGroupInfo(int index, GroupInfoXML& out) const {
    if (index < 0 || static_cast<std::size_t>(index) >= groups_.size() ||
        groups_[index].uid != index) {
        return 0;
    }
    const GroupRecordXML& rec = groups_[index];
    out.uid = index;
    out.name = rec.name_ptr;
    out.field_30 = rec.field_30;
    out.type = rec.type;
    return 1;
}

// 0x8896f4 _ZNK3vox15VoxSoundPackXML17GetDataSourceInfoEiRPKcRNS_11FormatTypesERiS6_RNS_21VoxSourceLoadingFlagsE
int VoxSoundPackXML::GetDataSourceInfo(int index, const char*& name, FormatTypes& format,
                                       int& field_16, int& field_15,
                                       VoxSourceLoadingFlags& flags) const {
    if (index < 0 || static_cast<std::size_t>(index) >= sounds_.size() ||
        sounds_[index].uid != index) {
        return 0;
    }
    const SoundRecordXML& rec = sounds_[index];
    name = rec.data_name;
    format = static_cast<FormatTypes>(rec.format);
    field_16 = rec.field_16;
    field_15 = rec.field_15;
    flags = static_cast<VoxSourceLoadingFlags>(rec.field_10);
    return 1;
}

// 0x8897ac _ZNK3vox15VoxSoundPackXML17GetDataSourceInfoEiRNS_17DataSourceInfoXMLE
int VoxSoundPackXML::GetDataSourceInfo(int index, DataSourceInfoXML& out) const {
    if (index < 0 || static_cast<std::size_t>(index) >= sounds_.size() ||
        sounds_[index].uid != index) {
        return 0;
    }
    const SoundRecordXML& rec = sounds_[index];
    out.uid = index;
    out.field_08 = rec.field_08;
    out.data_name = rec.data_name;
    out.format = rec.format;
    out.field_16 = rec.field_16;
    out.field_15 = rec.field_15;
    out.field_10 = rec.field_10;
    out.custom_count = rec.custom_count;
    out.custom_values = rec.custom_values;
    return 1;
}

// 0x889894 _ZNK3vox15VoxSoundPackXML14GetEmitterInfoEiRiS1_RbRNS_14Vox3DSoundTypeERPKc
// The group index is stored before the group lookup, so it is set even when the lookup fails.
int VoxSoundPackXML::GetEmitterInfo(int index, int& emitter_uid, int& group, bool& flag,
                                    Vox3DSoundType& type, const char*& name) const {
    if (index < 0 || static_cast<std::size_t>(index) >= sounds_.size() ||
        sounds_[index].uid != index) {
        return 0;
    }
    const SoundRecordXML& rec = sounds_[index];
    group = rec.field_16;
    if (GetGroupInfo(rec.field_16, name, type) == 0) {
        return 0;
    }
    emitter_uid = rec.emitter_uid;
    flag = rec.emitter_flag != 0;
    return 1;
}

// 0x88993c _ZNK3vox15VoxSoundPackXML14GetEmitterInfoEiRNS_14EmitterInfoXMLE
int VoxSoundPackXML::GetEmitterInfo(int index, EmitterInfoXML& out) const {
    if (index < 0 || static_cast<std::size_t>(index) >= sounds_.size() ||
        sounds_[index].uid != index) {
        return 0;
    }
    const SoundRecordXML& rec = sounds_[index];
    const char* group_name = nullptr;
    Vox3DSoundType group_type = {};
    if (GetGroupInfo(rec.field_16, group_name, group_type) == 0) {
        return 0;
    }
    out.uid = rec.uid;
    out.field_08 = rec.field_08;
    out.emitter_uid = rec.emitter_uid;
    out.group = rec.field_16;
    out.flag = rec.emitter_flag != 0;
    out.type = static_cast<std::int32_t>(group_type);
    out.name = group_name;
    for (int i = 0; i < 9; ++i) {
        out.values_[i] = rec.emitter_values_[i];
    }
    out.custom_count = rec.custom_count;
    out.custom_values = rec.custom_values;
    return 1;
}

// 0x889ac8 _ZN3vox15VoxSoundPackXML19GetSoundCustomParamEiiRPKc (not const in the binary)
bool VoxSoundPackXML::GetSoundCustomParam(int index, int param, const char*& value) {
    if (index < 0 || static_cast<std::size_t>(index) >= sounds_.size()) {
        return false;
    }
    const SoundRecordXML& rec = sounds_[index];
    const bool found = param < rec.custom_count;
    value = found ? rec.custom_values[param] : nullptr;
    return found;
}

// 0x889b34 _ZNK3vox15VoxSoundPackXML12GetEventInfoEiRNS_12EventInfoXMLE
int VoxSoundPackXML::GetEventInfo(int index, EventInfoXML& out) const {
    if (index < 0 || static_cast<std::size_t>(index) >= events_.size() ||
        events_[index].uid != index) {
        return 0;
    }
    const EventRecordXML& rec = events_[index];
    out.uid = index;
    out.name = rec.name;
    out.sound_uids = &rec.sound_uids;
    out.field_1c = rec.field_1c;
    out.field_1e = rec.field_1e;
    out.field_20 = rec.field_20;
    out.custom_count = rec.custom_count;
    out.custom_values = rec.custom_values;
    return 1;
}

// 0x889c04 _ZN3vox15VoxSoundPackXML12GetEventSizeEi (not const in the binary). Returns the
// number of sound uids the event lists, or -1.
int VoxSoundPackXML::GetEventSize(int index) {
    if (index < 0 || static_cast<std::size_t>(index) >= events_.size()) {
        return -1;
    }
    return static_cast<int>(events_[index].sound_uids.size());
}

// 0x889c54 _ZN3vox15VoxSoundPackXML19GetEventCustomParamEiiRPKc (not const in the binary)
bool VoxSoundPackXML::GetEventCustomParam(int index, int param, const char*& value) {
    if (index < 0 || static_cast<std::size_t>(index) >= events_.size()) {
        return false;
    }
    const EventRecordXML& rec = events_[index];
    const bool found = param < rec.custom_count;
    value = found ? rec.custom_values[param] : nullptr;
    return found;
}

// 0x88a3f4 _ZNK3vox15VoxSoundPackXML11GetEventUidEPKc: the first event whose name matches
// case-insensitively. Returns -1 when none does.
int VoxSoundPackXML::GetEventUid(const char* name) const {
    for (const EventRecordXML& rec : events_) {
        if (EqualIgnoreCase(rec.name, name)) {
            return rec.uid;
        }
    }
    return -1;
}

// 0x88a464 _ZN3vox15VoxSoundPackXML19GetEventCustomParamEPKciRS2_ (tail call)
bool VoxSoundPackXML::GetEventCustomParam(const char* name, int param, const char*& value) {
    return GetEventCustomParam(GetEventUid(name), param, value);
}

// 0x88a490 _ZN3vox15VoxSoundPackXML12GetEventSizeEPKc (tail call)
int VoxSoundPackXML::GetEventSize(const char* name) {
    return GetEventSize(GetEventUid(name));
}

// 0x88a4ac _ZNK3vox15VoxSoundPackXML12GetEventInfoEPKcRNS_12EventInfoXMLE (tail call)
int VoxSoundPackXML::GetEventInfo(const char* name, EventInfoXML& out) const {
    return GetEventInfo(GetEventUid(name), out);
}

// 0x88a55c _ZNK3vox15VoxSoundPackXML11GetSoundUidEPKc: map lookup, -1 when absent.
int VoxSoundPackXML::GetSoundUid(const char* name) const {
    const auto it = sound_uids_.find(name);
    if (it == sound_uids_.end()) {
        return -1;
    }
    return it->second;
}

// 0x88a590 _ZN3vox15VoxSoundPackXML19GetSoundCustomParamEPKciRS2_ (tail call)
bool VoxSoundPackXML::GetSoundCustomParam(const char* name, int param, const char*& value) {
    return GetSoundCustomParam(GetSoundUid(name), param, value);
}

// 0x88a5bc _ZNK3vox15VoxSoundPackXML14GetEmitterInfoEPKcRNS_14EmitterInfoXMLE (tail call)
int VoxSoundPackXML::GetEmitterInfo(const char* name, EmitterInfoXML& out) const {
    return GetEmitterInfo(GetSoundUid(name), out);
}

// 0x88a5e0 _ZNK3vox15VoxSoundPackXML14GetEmitterInfoEPKcRiS3_S3_RbRNS_14Vox3DSoundTypeERS2_
// (tail call). The sound uid is written to sound_uid before the forward.
int VoxSoundPackXML::GetEmitterInfo(const char* name, int& sound_uid, int& emitter_uid, int& group,
                                    bool& flag, Vox3DSoundType& type, const char*& out_name) const {
    const int uid = GetSoundUid(name);
    sound_uid = uid;
    return GetEmitterInfo(uid, emitter_uid, group, flag, type, out_name);
}

// 0x88a62c _ZNK3vox15VoxSoundPackXML17GetDataSourceInfoEPKcRNS_17DataSourceInfoXMLE (tail call)
int VoxSoundPackXML::GetDataSourceInfo(const char* name, DataSourceInfoXML& out) const {
    return GetDataSourceInfo(GetSoundUid(name), out);
}

// 0x88a650 _ZNK3vox15VoxSoundPackXML17GetDataSourceInfoEPKcRiRS2_RNS_11FormatTypesES3_S3_RNS_21VoxSourceLoadingFlagsE
// (tail call). The sound uid is written to sound_uid before the forward.
int VoxSoundPackXML::GetDataSourceInfo(const char* name, int& sound_uid, const char*& data_name,
                                       FormatTypes& format, int& field_16, int& field_15,
                                       VoxSourceLoadingFlags& flags) const {
    const int uid = GetSoundUid(name);
    sound_uid = uid;
    return GetDataSourceInfo(uid, data_name, format, field_16, field_15, flags);
}

// 0x88b8b8 _ZNK3vox15VoxSoundPackXML11GetGroupUidEPKc: first group with an equal name, -1 when none.
int VoxSoundPackXML::GetGroupUid(const char* name) const {
    for (const GroupRecordXML& rec : groups_) {
        if (rec.name == name) {
            return rec.uid;
        }
    }
    return -1;
}

// 0x88b960 _ZNK3vox15VoxSoundPackXML12GetGroupInfoEPKcRNS_12GroupInfoXMLE (tail call)
int VoxSoundPackXML::GetGroupInfo(const char* name, GroupInfoXML& out) const {
    return GetGroupInfo(GetGroupUid(name), out);
}

// 0x88b984 _ZNK3vox15VoxSoundPackXML12GetGroupInfoEPKcRiRS2_RNS_14Vox3DSoundTypeE (tail call)
int VoxSoundPackXML::GetGroupInfo(const char* name, int& group_uid, const char*& group_name,
                                  Vox3DSoundType& type) const {
    const int uid = GetGroupUid(name);
    group_uid = uid;
    return GetGroupInfo(uid, group_name, type);
}

// 0x88b9b8 _ZNK3vox15VoxSoundPackXML10GetBankUidEPKc: first bank with an equal name, -1 when none.
int VoxSoundPackXML::GetBankUid(const char* name) const {
    for (const BankRecordXML& rec : banks_) {
        if (rec.name == name) {
            return rec.uid;
        }
    }
    return -1;
}

// 0x88ba5c _ZNK3vox15VoxSoundPackXML11GetBankInfoEPKcRNS_11BankInfoXMLE (tail call)
int VoxSoundPackXML::GetBankInfo(const char* name, BankInfoXML& out) const {
    return GetBankInfo(GetBankUid(name), out);
}

// 0x88ba80 _ZNK3vox15VoxSoundPackXML11GetBankInfoEPKcRiS3_S3_RNS_20PriorityBankBehaviorE
// (tail call). The bank uid is written to bank_uid before the forward.
int VoxSoundPackXML::GetBankInfo(const char* name, int& bank_uid, int& field_0c, int& field_08,
                                 PriorityBankBehavior& behavior) const {
    const int uid = GetBankUid(name);
    bank_uid = uid;
    return GetBankInfo(uid, field_0c, field_08, behavior);
}

}  // namespace vox
