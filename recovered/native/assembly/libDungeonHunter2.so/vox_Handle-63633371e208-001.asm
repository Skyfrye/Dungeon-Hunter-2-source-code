; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003691e4, declared_size=4, range_size=4, mode=arm
; class-group: vox::Handle
; alias: _ZN3vox6HandleD1Ev
; demangled: vox::Handle::~Handle()
; decoder-mode: arm
003691e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003691e8, declared_size=12, range_size=12, mode=arm
; class-group: vox::Handle
; alias: _ZNK3vox6Handle5GetIdEv
; demangled: vox::Handle::GetId() const
; decoder-mode: arm
003691e8  0c 10 90 e5                                      ldr r1, [r0, #0xc]
003691ec  08 00 90 e5                                      ldr r0, [r0, #8]
003691f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003691f4, declared_size=8, range_size=8, mode=arm
; class-group: vox::Handle
; alias: _ZNK3vox6Handle16GetObjectPointerEv
; demangled: vox::Handle::GetObjectPointer() const
; decoder-mode: arm
003691f4  18 00 90 e5                                      ldr r0, [r0, #0x18]
003691f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003691fc, declared_size=20, range_size=20, mode=arm
; class-group: vox::Handle
; alias: _ZNK3vox6Handle12GetTimeStampERjS1_
; demangled: vox::Handle::GetTimeStamp(unsigned int&, unsigned int&) const
; decoder-mode: arm
003691fc  10 30 90 e5                                      ldr r3, [r0, #0x10]
00369200  00 30 81 e5                                      str r3, [r1]
00369204  14 30 90 e5                                      ldr r3, [r0, #0x14]
00369208  00 30 82 e5                                      str r3, [r2]
0036920c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00369210, declared_size=12, range_size=12, mode=arm
; class-group: vox::Handle
; alias: _ZN3vox6Handle12SetTimeStampEjj
; demangled: vox::Handle::SetTimeStamp(unsigned int, unsigned int)
; decoder-mode: arm
00369210  14 20 80 e5                                      str r2, [r0, #0x14]
00369214  10 10 80 e5                                      str r1, [r0, #0x10]
00369218  1e ff 2f e1                                      bx lr

; FUNCTION 0x003694a0, declared_size=52, range_size=52, mode=arm
; class-group: vox::Handle
; alias: _ZN3vox6HandleD0Ev
; demangled: vox::Handle::~Handle()
; decoder-mode: arm
003694a0  24 30 9f e5                                      ldr r3, [pc, #0x24]
003694a4  24 20 9f e5                                      ldr r2, [pc, #0x24]
003694a8  10 40 2d e9                                      push {r4, lr}
003694ac  03 30 8f e0                                      add r3, pc, r3
003694b0  02 20 93 e7                                      ldr r2, [r3, r2]
003694b4  00 40 a0 e1                                      mov r4, r0
003694b8  08 20 82 e2                                      add r2, r2, #8
003694bc  00 20 80 e5                                      str r2, [r0]
003694c0  de 9b fe eb                                      bl #0x310440
003694c4  04 00 a0 e1                                      mov r0, r4
003694c8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003694cc  e4 b5 62 00 24 09 00 00                          .byte 0xe4, 0xb5, 0x62, 0x00, 0x24, 0x09, 0x00, 0x00

; FUNCTION 0x00863110, declared_size=52, range_size=52, mode=arm
; class-group: vox::Handle
; alias: _ZNK3vox6HandleeqERKS0_
; demangled: vox::Handle::operator==(vox::Handle const&) const
; decoder-mode: arm
00863110  08 c0 90 e5                                      ldr ip, [r0, #8]
00863114  08 20 91 e5                                      ldr r2, [r1, #8]
00863118  00 30 a0 e3                                      mov r3, #0
0086311c  02 00 5c e1                                      cmp ip, r2
00863120  01 00 00 0a                                      beq #0x86312c
00863124  01 00 03 e2                                      and r0, r3, #1
00863128  1e ff 2f e1                                      bx lr
0086312c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00863130  0c 20 91 e5                                      ldr r2, [r1, #0xc]
00863134  02 00 50 e1                                      cmp r0, r2
00863138  01 30 a0 03                                      moveq r3, #1
0086313c  01 00 03 e2                                      and r0, r3, #1
00863140  1e ff 2f e1                                      bx lr
