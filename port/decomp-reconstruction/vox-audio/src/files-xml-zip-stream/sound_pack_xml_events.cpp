// vox::VoxSoundPackXML event selection and reset, the sound-or-event emitter lookup, the
// group mask. The constructor and LoadXML are in w10-xml/sound_pack_xml_load.cpp. The event
// state is the one the binary keeps in each event record: the used list at +0x08, the
// counters at +0x1c..+0x20 and the mode 1 index at +0x22.
#include <cstddef>

#include "vox-audio/vox/random48.hpp"
#include "vox-audio/vox/sound_pack_xml.hpp"

namespace vox {

// 0x88bb6c _ZN3vox15VoxSoundPackXML16GetEventSoundUidEiRi
int VoxSoundPackXML::GetEventSoundUid(int index, int& sound_uid) {
    if (index < 0 || static_cast<std::size_t>(index) >= events_.size()) {
        return 0;
    }
    EventRecordXML& ev = events_[static_cast<std::size_t>(index)];
    const int count = static_cast<int>(ev.sound_uids.size());
    if (count <= 0) {
        return 0;
    }

    // The percent chance of no sound. The lrand48 call comes before the mode test.
    if (static_cast<int>(Lrand48() % 100) >= ev.field_20) {
        sound_uid = -1;
        return 1;
    }

    if (ev.field_1c == 0) {
        // Random without repetition: move the picked sound from the pool to the used list,
        // filling the hole with the last pool entry.
        const std::size_t pick = static_cast<std::size_t>(Lrand48() % count);
        sound_uid = ev.sound_uids[pick];
        ev.used_sound_uids.push_back(sound_uid);
        ev.sound_uids[pick] = ev.sound_uids.back();
        ev.sound_uids.pop_back();

        // When more sounds are used than the limit, or the pool is empty, the oldest used
        // sound goes back to the pool.
        const int used = static_cast<int>(ev.used_sound_uids.size());
        if (ev.field_1e < used || ev.sound_uids.empty()) {
            ev.sound_uids.push_back(ev.used_sound_uids.front());
            ev.used_sound_uids.pop_front();
        }
        return 1;
    }
    if (ev.field_1c != 1) {
        // Other modes return without a sound (the uid is left as it was).
        return 1;
    }

    // Mode 1: in order, wrapping at the end of the pool.
    int seq = ev.sequence_index;
    if (seq >= count) {
        seq = 0;
    }
    ev.sequence_index = static_cast<std::int16_t>(seq + 1);
    sound_uid = ev.sound_uids[static_cast<std::size_t>(seq)];
    return 1;
}

// 0x88bdac _ZN3vox15VoxSoundPackXML16GetEventSoundUidEPKcRi
int VoxSoundPackXML::GetEventSoundUid(const char* name, int& sound_uid) {
    return GetEventSoundUid(GetEventUid(name), sound_uid);
}

// 0x88be28 _ZN3vox15VoxSoundPackXML10ResetEventEi. The binary stores the event record
// count (as a 16-bit value) in the mode 1 index; the used sounds go back to the pool
// front to back.
int VoxSoundPackXML::ResetEvent(int index) {
    if (index < 0 || static_cast<std::size_t>(index) >= events_.size()) {
        return 0;
    }
    EventRecordXML& ev = events_[static_cast<std::size_t>(index)];
    ev.sequence_index = static_cast<std::int16_t>(events_.size());
    while (!ev.used_sound_uids.empty()) {
        ev.sound_uids.push_back(ev.used_sound_uids.front());
        ev.used_sound_uids.pop_front();
    }
    return 1;
}

// 0x88bf10 _ZN3vox15VoxSoundPackXML10ResetEventEPKc
int VoxSoundPackXML::ResetEvent(const char* name) { return ResetEvent(GetEventUid(name)); }

// 0x88bdd0 _ZN3vox15VoxSoundPackXML30GetEmitterInfoFromSoundOrEventEPKcRNS_14EmitterInfoXMLE
int VoxSoundPackXML::GetEmitterInfoFromSoundOrEvent(const char* name, EmitterInfoXML& out) {
    if (GetEmitterInfo(name, out)) {
        return 1;
    }
    int sound_uid = 0;
    const int result = GetEventSoundUid(name, sound_uid);
    if (result) {
        return GetEmitterInfo(sound_uid, out);
    }
    return result;
}

// 0x88cc14 _ZNK3vox15VoxSoundPackXML12GetGroupMaskEPKcRi: the mask is 0 for a name that
// is not in the map at +0x48.
void VoxSoundPackXML::GetGroupMask(const char* name, int& mask) const {
    const auto it = group_masks_.find(vox::VoxString(name));
    mask = it == group_masks_.end() ? 0 : it->second;
}

}  // namespace vox
