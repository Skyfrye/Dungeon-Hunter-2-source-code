// Bodies of glitch::IOSOperator and glitch::COSOperator (canonical classes: os/COSOperator.hpp). This file replaces the OS operator bodies of
// platform_stubs.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/os/COSOperator.hpp"

#include "glitch-core-io/core/strings.hpp"

namespace glitch {

// 0x6a0c7c _ZN6glitch11IOSOperatorD1Ev (D0 0x6a0cc4 skipped)
IOSOperator::~IOSOperator() = default;

// 0x6a0d78 _ZN6glitch11COSOperatorC1EPKc (C2 0x6a0e20)
COSOperator::COSOperator(const char* osversion) : operatingSystem(core::stringc2stringw(osversion)) {}

// 0x6a0cd8 _ZN6glitch11COSOperatorD1Ev (D0 0x6a0d2c skipped)
COSOperator::~COSOperator() = default;

// 0x6a0c80 _ZNK6glitch11COSOperator25getOperationSystemVersionEv
const wchar_t* COSOperator::getOperationSystemVersion() const {
    return operatingSystem.c_str();
}

// 0x6a0c88 _ZNK6glitch11COSOperator15copyToClipboardEPKc
void COSOperator::copyToClipboard(const char*) const {}

// 0x6a0c8c _ZNK6glitch11COSOperator20getTextFromClipboardEv
const char* COSOperator::getTextFromClipboard() const {
    return nullptr;
}

// 0x6a0c94 _ZNK6glitch11COSOperator20getProcessorSpeedMHzEPj
bool COSOperator::getProcessorSpeedMHz(std::uint32_t*) const {
    return false;
}

// 0x6a0c9c _ZNK6glitch11COSOperator15getSystemMemoryEPjS1_
bool COSOperator::getSystemMemory(std::uint32_t*, std::uint32_t*) const {
    return false;
}

}  // namespace glitch
