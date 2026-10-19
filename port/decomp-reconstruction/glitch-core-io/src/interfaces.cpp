#include "glitch-core-io/io/interfaces.hpp"

namespace glitch::io {

// 0x350c7c _ZNK6glitch2io26IAttributeExchangingObject19serializeAttributesEPNS0_11IAttributesEPNS0_26SAttributeReadWriteOptionsE
void IAttributeExchangingObject::serializeAttributes(IAttributes*, SAttributeReadWriteOptions*) const {}

// 0x350c80 _ZN6glitch2io26IAttributeExchangingObject21deserializeAttributesEPNS0_11IAttributesEPNS0_26SAttributeReadWriteOptionsE
void IAttributeExchangingObject::deserializeAttributes(IAttributes*, SAttributeReadWriteOptions*) {}

}  // namespace glitch::io
