// glitch::IOSOperator and glitch::COSOperator: the operating system interface (clipboard, system information) the GUI edit box and the GUI
// environment use. Canonical header of the scene-owner wave. It replaces the IOSOperator / COSOperator stand-ins of platform_stubs.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; COSOperator constructors 0x6a0d78 (C1) / 0x6a0e20 (C2), destructors 0x6a0cd8 / 0x6a0d2c;
// IOSOperator destructors 0x6a0c7c / 0x6a0cc4): glitch::IReferenceCounted is the primary base (vptr, count at +0x04, set to 1 by the constructor).
//   IOSOperator slots: K 0x0c getOperationSystemVersion, 0x10 copyToClipboard, 0x14 getTextFromClipboard, 0x18 getProcessorSpeedMHz,
//   0x1c getSystemMemory (all const, pure).
//   COSOperator: +0x08 OperationSystem (STLport wide string, 72 bytes: the text of the constructor argument widened).
#pragma once

#include <cstdint>
#include <string>

#include "glitch-core-io/core/reference_counted.hpp"

namespace glitch {

class IOSOperator : public IReferenceCounted {
public:
    // 0x6a0c7c (D1), 0x6a0cc4 (D0 copy): empty.
    ~IOSOperator() override;

    virtual const wchar_t* getOperationSystemVersion() const = 0;                                       // K 0x0c
    virtual void copyToClipboard(const char* text) const = 0;                                           // K 0x10
    virtual const char* getTextFromClipboard() const = 0;                                               // K 0x14
    virtual bool getProcessorSpeedMHz(std::uint32_t* mhz) const = 0;                                    // K 0x18
    virtual bool getSystemMemory(std::uint32_t* totalBytes, std::uint32_t* availableBytes) const = 0;   // K 0x1c
};

class COSOperator : public IOSOperator {
public:
    // 0x6a0d78 (C1) / 0x6a0e20 (C2): the operating system name is stored widened.
    explicit COSOperator(const char* osversion = nullptr);
    // 0x6a0cd8 (D1), 0x6a0d2c (D0 copy): frees the string.
    ~COSOperator() override;

    const wchar_t* getOperationSystemVersion() const override;                    // 0x6a0c80: the text of the wide string
    void copyToClipboard(const char* text) const override;                        // 0x6a0c88: empty
    const char* getTextFromClipboard() const override;                            // 0x6a0c8c: null
    bool getProcessorSpeedMHz(std::uint32_t* mhz) const override;                 // 0x6a0c94: false
    bool getSystemMemory(std::uint32_t* totalBytes, std::uint32_t* availableBytes) const override;  // 0x6a0c9c: false

    std::wstring operatingSystem;  // +0x08 (start +0x4c)
};

}  // namespace glitch
