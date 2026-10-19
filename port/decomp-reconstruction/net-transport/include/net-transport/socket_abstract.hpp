// CSocketAbstract: common part of the socket wrappers (CSocket and its users).
// Reconstructed from libDungeonHunter2.so pseudocode.
//
// Original layout (32-bit offsets):
//   +0x04 fd (socket handle)
//   +0x08 valid flag, set by Assign
//   +0x0a connected flag, copied from IsConnected() by Assign
#pragma once

class CSocketAbstract {
public:
    virtual ~CSocketAbstract() = default;               // 0x827b18 _ZN15CSocketAbstractD1Ev
    // 0x827b1c _ZN15CSocketAbstract6AssignEij
    // Adopts an existing handle, records whether it is connected, and applies the options.
    virtual void Assign(int handle, unsigned int options);

    // Accessors for tests; the original reads the fields directly.
    int Handle() const { return handle_; }
    bool IsValid() const { return valid_; }
    bool IsConnectedFlag() const { return connected_; }

protected:
    // Vtable slot 0 in the original (CSocket::SetSocketOptions).
    virtual int SetSocketOptions(unsigned int options) = 0;
    // Vtable slot +0x14 in the original (CSocket::IsConnected).
    virtual bool IsConnected() const = 0;

    int handle_ = -1;                // +0x04
    bool valid_ = false;             // +0x08
    bool can_open_ = true;           // +0x09 (CSocket::OpenUDP / OpenTCP check it; the CSocket constructor sets it)
    bool connected_ = false;         // +0x0a
};
