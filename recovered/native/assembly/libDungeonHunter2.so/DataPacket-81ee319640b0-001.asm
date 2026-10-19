; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008491cc, declared_size=4, range_size=4, mode=arm
; class-group: DataPacket
; alias: _ZN10DataPacketD1Ev
; demangled: DataPacket::~DataPacket()
; decoder-mode: arm
008491cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x008491d0, declared_size=8, range_size=8, mode=arm
; class-group: DataPacket
; alias: _ZN10DataPacket7addBlobEPcs
; demangled: DataPacket::addBlob(char*, short)
; decoder-mode: arm
008491d0  00 00 a0 e3                                      mov r0, #0
008491d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008491d8, declared_size=8, range_size=8, mode=arm
; class-group: DataPacket
; alias: _ZN10DataPacket7getBlobERPcRs
; demangled: DataPacket::getBlob(char*&, short&)
; decoder-mode: arm
008491d8  00 00 a0 e3                                      mov r0, #0
008491dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x008491e0, declared_size=4, range_size=4, mode=arm
; class-group: DataPacket
; alias: _ZN10DataPacket11InitMessageEi
; demangled: DataPacket::InitMessage(int)
; decoder-mode: arm
008491e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x008491e4, declared_size=8, range_size=8, mode=arm
; class-group: DataPacket
; alias: _ZN10DataPacket14GetMessageTypeEv
; demangled: DataPacket::GetMessageType()
; decoder-mode: arm
008491e4  00 00 e0 e3                                      mvn r0, #0
008491e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008491ec, declared_size=4, range_size=4, mode=arm
; class-group: DataPacket
; alias: _ZN10DataPacket14InitMMOMessageEs
; demangled: DataPacket::InitMMOMessage(short)
; decoder-mode: arm
008491ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x008491f0, declared_size=8, range_size=8, mode=arm
; class-group: DataPacket
; alias: _ZN10DataPacket17GetMMOMessageTypeEv
; demangled: DataPacket::GetMMOMessageType()
; decoder-mode: arm
008491f0  00 00 e0 e3                                      mvn r0, #0
008491f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008496a0, declared_size=20, range_size=20, mode=arm
; class-group: DataPacket
; alias: _ZN10DataPacketD0Ev
; demangled: DataPacket::~DataPacket()
; decoder-mode: arm
008496a0  10 40 2d e9                                      push {r4, lr}
008496a4  00 40 a0 e1                                      mov r4, r0
008496a8  00 13 eb eb                                      bl #0x30e2b0
008496ac  04 00 a0 e1                                      mov r0, r4
008496b0  10 80 bd e8                                      pop {r4, pc}
