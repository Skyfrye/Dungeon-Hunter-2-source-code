// vox::GroupXMLDef: constructors and copy assignment (the sound-pack group record).
#include "vox-audio/vox/sound_pack_xml.hpp"

namespace vox {

// 0x88ade0 _ZN3vox11GroupXMLDefC1Ev
GroupXMLDef::GroupXMLDef() = default;

// 0x88ae2c _ZN3vox11GroupXMLDefC1ERKS0_
GroupXMLDef::GroupXMLDef(const GroupXMLDef& other)
    : uid_(other.uid_), name_(other.name_), label_(other.label_), type_(other.type_) {}

// 0x88b5f0 _ZN3vox11GroupXMLDefaSERKS0_: the strings are assigned unless they are the
// same object; the type is copied in every case.
GroupXMLDef& GroupXMLDef::operator=(const GroupXMLDef& other) {
    uid_ = other.uid_;
    if (this != &other) {
        name_ = other.name_;
        label_ = other.label_;
    }
    type_ = other.type_;
    return *this;
}

}  // namespace vox
