; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00667ccc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CMaterialApplicatorInfo
; alias: _ZN6glitch7collada15animation_track23CMaterialApplicatorInfoD1Ev
; demangled: glitch::collada::animation_track::CMaterialApplicatorInfo::~CMaterialApplicatorInfo()
; decoder-mode: arm
00667ccc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00667d04, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CMaterialApplicatorInfo
; alias: _ZN6glitch7collada15animation_track23CMaterialApplicatorInfoD0Ev
; demangled: glitch::collada::animation_track::CMaterialApplicatorInfo::~CMaterialApplicatorInfo()
; decoder-mode: arm
00667d04  10 40 2d e9                                      push {r4, lr}
00667d08  00 40 a0 e1                                      mov r4, r0
00667d0c  67 99 f2 eb                                      bl #0x30e2b0
00667d10  04 00 a0 e1                                      mov r0, r4
00667d14  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00667ed0, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::animation_track::CMaterialApplicatorInfo
; alias: _ZNK6glitch7collada15animation_track23CMaterialApplicatorInfo5cloneEv
; demangled: glitch::collada::animation_track::CMaterialApplicatorInfo::clone() const
; decoder-mode: arm
00667ed0  70 40 2d e9                                      push {r4, r5, r6, lr}
00667ed4  00 10 a0 e3                                      mov r1, #0
00667ed8  00 50 a0 e1                                      mov r5, r0
00667edc  0c 00 a0 e3                                      mov r0, #0xc
00667ee0  b1 30 fb eb                                      bl #0x5341ac
00667ee4  24 40 9f e5                                      ldr r4, [pc, #0x24]
00667ee8  24 20 9f e5                                      ldr r2, [pc, #0x24]
00667eec  04 40 8f e0                                      add r4, pc, r4
00667ef0  02 20 94 e7                                      ldr r2, [r4, r2]
00667ef4  08 20 82 e2                                      add r2, r2, #8
00667ef8  00 20 80 e5                                      str r2, [r0]
00667efc  04 20 95 e5                                      ldr r2, [r5, #4]
00667f00  04 20 80 e5                                      str r2, [r0, #4]
00667f04  08 20 95 e5                                      ldr r2, [r5, #8]
00667f08  08 20 80 e5                                      str r2, [r0, #8]
00667f0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00667f10  a4 cb 32 00 00 0a 00 00                          .byte 0xa4, 0xcb, 0x32, 0x00, 0x00, 0x0a, 0x00, 0x00
