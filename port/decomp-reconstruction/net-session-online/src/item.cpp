#include "net-session-online/item.hpp"

#include <cstdlib>

// 0x842608 _ZN4itemaSERKS_
item& item::operator=(const item& other) {
    if (this != &other) {
        id_ = other.id_;
        title_ = other.title_;
        description_ = other.description_;
        link_ = other.link_;
        attachmentId_ = other.attachmentId_;
        fileType_ = other.fileType_;
        fileSize_ = other.fileSize_;
        width_ = other.width_;
        height_ = other.height_;
        times_ = other.times_;
        buttonLeft_ = other.buttonLeft_;
        buttonRight_ = other.buttonRight_;
    }
    return *this;
}

// 0x842a88 _ZN4item4readEPKN4slim7XmlNodeE
void item::read(const slim::XmlNode* node) {
    if (node == nullptr) {
        std::abort();  // the original calls _assert2()
    }
    struct Field {
        const char* tag;
        std::string* field;
    };
    const Field fields[] = {
        {"id", &id_},
        {"title", &title_},
        {"description", &description_},
        {"link", &link_},
        {"attachment_id", &attachmentId_},
        {"fileType", &fileType_},
        {"fileSize", &fileSize_},
        {"width", &width_},
        {"height", &height_},
        {"times", &times_},
        {"button_left", &buttonLeft_},
        {"button_right", &buttonRight_},
    };
    for (const Field& entry : fields) {
        if (const slim::XmlNode* child = node->findChild(entry.tag)) {
            *entry.field = child->value_.c_str();
        }
    }
}

// 0x84246c _ZNK4item5writeEPN4slim7XmlNodeE
// The binary's body is a bare return.
void item::write(slim::XmlNode* /*node*/) const {}

// Not in the original: test seam.
const std::string& item::FieldForTest(int index) const {
    const std::string* const fields[] = {
        &id_, &title_, &description_, &link_, &attachmentId_, &fileType_,
        &fileSize_, &width_, &height_, &times_, &buttonLeft_, &buttonRight_,
    };
    return *fields[index];
}
