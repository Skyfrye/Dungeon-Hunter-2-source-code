#include "glitch-core-io/io/irr_xml_file_read_callback.hpp"

namespace glitch::io {

// 0x572524 _ZN6glitch2io23CIrrXMLFileReadCallBackD1Ev (the deleting variant at 0x5732ac is compiler generated)
CIrrXMLFileReadCallBack::~CIrrXMLFileReadCallBack() {
    if (file) file->drop();
}

// 0x57255c _ZN6glitch2io23CIrrXMLFileReadCallBack4readEPvi
// Returns the byte count of the wrapped file's read.
int CIrrXMLFileReadCallBack::read(void* buffer, int size) {
    return file->read(buffer, static_cast<unsigned int>(size));
}

// 0x572578 _ZNK6glitch2io23CIrrXMLFileReadCallBack7getSizeEv
long CIrrXMLFileReadCallBack::getSize() const {
    return file->getSize();
}

}  // namespace glitch::io
