// vox::SoundXMLDef and vox::EventXMLDef: destructors and the event record copy operations.
// The copies are deep. The binary copies the event's +0x28 pointer shallowly, so a copy and
// its source freed the same block; here the custom strings are copied with the record.
#include "vox-audio/vox/sound_pack_xml.hpp"

namespace vox {

// 0x889e98 _ZN3vox11SoundXMLDefD1Ev. The label, the file name and the custom array are owned
// by the record, so the member destructors make the frees the binary makes.
SoundXMLDef::~SoundXMLDef() = default;

// 0x88a090 _ZN3vox11EventXMLDefD1Ev. The used list, the sound uid vector, the name and the
// custom array are owned by the record; the member destructors free them.
EventXMLDef::~EventXMLDef() = default;

// 0x88b1fc _ZN3vox11EventXMLDefC1ERKS0_
EventXMLDef::EventXMLDef(const EventXMLDef& other)
    : uid_(other.uid_),
      name_(other.name_),
      used_(other.used_),
      sound_uids_(other.sound_uids_),
      mode_(other.mode_),
      max_used_(other.max_used_),
      no_sound_percent_(other.no_sound_percent_),
      sequence_count_(other.sequence_count_),
      custom_count_(other.custom_count_),
      custom_(other.custom_) {}

// 0x88b104 _ZN3vox11EventXMLDefaSERKS0_
EventXMLDef& EventXMLDef::operator=(const EventXMLDef& other) {
    if (this != &other) {
        uid_ = other.uid_;
        name_ = other.name_;
        used_ = other.used_;
        sound_uids_ = other.sound_uids_;
        mode_ = other.mode_;
        max_used_ = other.max_used_;
        no_sound_percent_ = other.no_sound_percent_;
        sequence_count_ = other.sequence_count_;
        custom_count_ = other.custom_count_;
        custom_ = other.custom_;
    }
    return *this;
}

}  // namespace vox
