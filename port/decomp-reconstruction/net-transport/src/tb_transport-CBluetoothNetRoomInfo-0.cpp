// CBluetoothNetRoomInfo: constructor and destructor. Batch r1n-net-transport-pack0-34ed2e-0 (redo pass).
//
// The base NetStruct, the NetStructString<256u> member and the NetStructInt<32u> member are real now, so
// the members are declared in the class (tb/bluetooth_net_room_info.hpp) and the field stores of the
// original are the member initialisers. The layout comments are in that header.

#include "net-transport/tb/bluetooth_net_room_info.hpp"

// 0x800d7c CBluetoothNetRoomInfo::CBluetoothNetRoomInfo()
// Partial: re-verified in the ARM listing 0x800d7c. The base NetStruct ctor, the empty std::string
// temporary and NetStructString<256u>(name_) at +0x130, the field stores (STR #0x20 -> sizeBits +0x16c,
// STRD 0 -> +0x170, STR -1 -> +0x178 and +0x17c, STR 0 -> +0x180, STRB 0 -> +0x184, vptr +0x168) and
// the name_-then-value_ DeclareMember order all match the port.
// Missing: `LDR R2,[R4,#0x188]` at 0x800e10 reads value_'s value word before the store that zeroes it,
// and `CMP R2,#0` at 0x800e2c selects the non-zero path (STR R2,[R4,#0x188] plus SetChanged on the
// member at +0x168). Nothing in this constructor writes +0x188 before that load, so the branch depends
// on whatever word the allocator handed back. The member itself is fully built by then (the field
// stores at 0x800e3c..0x800e50 and the vptr store at 0x800e44 are unconditional and precede the branch),
// so SetChanged on the non-zero path does exactly what a normal change would: stamp changeStamp_ from
// NetStruct::s_changeCounter, copy the change mask into the ack and sent masks and set changed_, with
// the module-level counter advanced - after which the value word is 0 again either way. The value_
// member is modelled, but that branch and its SetChanged side effect are not reproducible: the port's
// value_ starts at 0, so it always takes the set-to-zero-only path, which is the deterministic (and
// only well-defined) outcome.
CBluetoothNetRoomInfo::CBluetoothNetRoomInfo()
    : NetStruct(), name_(std::string()) {
    if (value_.GetValue() != 0) {
        value_.SetValue(0);
        value_.SetChanged();
    }
    DeclareMember(&name_);
    DeclareMember(&value_);
}

// 0x801a0c CBluetoothNetRoomInfo::~CBluetoothNetRoomInfo()
// Reconstructed. The original sets the vptrs of the members and the base (so the inlined destructors
// run in the right order) and then frees the name string and the NetStruct packet-history map. Those
// are the member and base destructors here, so the body is defaulted.
CBluetoothNetRoomInfo::~CBluetoothNetRoomInfo() = default;
