; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f498, declared_size=8, range_size=8, mode=arm
; class-group: CMsgInitialSetup
; alias: _ZN16CMsgInitialSetup10GetDataPtrEv
; demangled: CMsgInitialSetup::GetDataPtr()
; decoder-mode: arm
0031f498  50 00 80 e2                                      add r0, r0, #0x50
0031f49c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f4a0, declared_size=8, range_size=8, mode=arm
; class-group: CMsgInitialSetup
; alias: _ZNK16CMsgInitialSetup11GetDataSizeEv
; demangled: CMsgInitialSetup::GetDataSize() const
; decoder-mode: arm
0031f4a0  0c 00 a0 e3                                      mov r0, #0xc
0031f4a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031ffdc, declared_size=52, range_size=52, mode=arm
; class-group: CMsgInitialSetup
; alias: _ZN16CMsgInitialSetupD1Ev
; demangled: CMsgInitialSetup::~CMsgInitialSetup()
; decoder-mode: arm
0031ffdc  24 30 9f e5                                      ldr r3, [pc, #0x24]
0031ffe0  24 20 9f e5                                      ldr r2, [pc, #0x24]
0031ffe4  10 40 2d e9                                      push {r4, lr}
0031ffe8  03 30 8f e0                                      add r3, pc, r3
0031ffec  02 20 93 e7                                      ldr r2, [r3, r2]
0031fff0  00 40 a0 e1                                      mov r4, r0
0031fff4  08 20 82 e2                                      add r2, r2, #8
0031fff8  00 20 80 e5                                      str r2, [r0]
0031fffc  64 a8 13 eb                                      bl #0x80a194
00320000  04 00 a0 e1                                      mov r0, r4
00320004  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00320008  a8 4a 67 00 a4 42 00 00                          .byte 0xa8, 0x4a, 0x67, 0x00, 0xa4, 0x42, 0x00, 0x00

; FUNCTION 0x003243fc, declared_size=60, range_size=60, mode=arm
; class-group: CMsgInitialSetup
; alias: _ZN16CMsgInitialSetupD0Ev
; demangled: CMsgInitialSetup::~CMsgInitialSetup()
; decoder-mode: arm
003243fc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00324400  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00324404  10 40 2d e9                                      push {r4, lr}
00324408  03 30 8f e0                                      add r3, pc, r3
0032440c  02 20 93 e7                                      ldr r2, [r3, r2]
00324410  00 40 a0 e1                                      mov r4, r0
00324414  08 20 82 e2                                      add r2, r2, #8
00324418  00 20 80 e5                                      str r2, [r0]
0032441c  5c 97 13 eb                                      bl #0x80a194
00324420  04 00 a0 e1                                      mov r0, r4
00324424  05 b0 ff eb                                      bl #0x310440
00324428  04 00 a0 e1                                      mov r0, r4
0032442c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00324430  88 06 67 00 a4 42 00 00                          .byte 0x88, 0x06, 0x67, 0x00, 0xa4, 0x42, 0x00, 0x00

; FUNCTION 0x00327974, declared_size=52, range_size=52, mode=arm
; class-group: CMsgInitialSetup
; alias: _ZN16CMsgInitialSetup13SetPropertiesEv
; demangled: CMsgInitialSetup::SetProperties()
; decoder-mode: arm
00327974  28 10 9f e5                                      ldr r1, [pc, #0x28]
00327978  10 40 2d e9                                      push {r4, lr}
0032797c  01 10 8f e0                                      add r1, pc, r1
00327980  00 40 a0 e1                                      mov r4, r0
00327984  10 20 81 e2                                      add r2, r1, #0x10
00327988  14 00 80 e2                                      add r0, r0, #0x14
0032798c  13 a4 ff eb                                      bl #0x3109e0
00327990  00 30 a0 e3                                      mov r3, #0
00327994  33 30 c4 e5                                      strb r3, [r4, #0x33]
00327998  01 30 a0 e3                                      mov r3, #1
0032799c  2c 30 84 e5                                      str r3, [r4, #0x2c]
003279a0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003279a4  2c 75 59 00                                      .byte 0x2c, 0x75, 0x59, 0x00

; FUNCTION 0x00328be4, declared_size=120, range_size=120, mode=arm
; class-group: CMsgInitialSetup
; alias: _ZN16CMsgInitialSetupC1Eb
; demangled: CMsgInitialSetup::CMsgInitialSetup(bool)
; decoder-mode: arm
00328be4  70 40 2d e9                                      push {r4, r5, r6, lr}
00328be8  60 60 9f e5                                      ldr r6, [pc, #0x60]
00328bec  01 20 a0 e1                                      mov r2, r1
00328bf0  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00328bf4  06 60 8f e0                                      add r6, pc, r6
00328bf8  06 10 a0 e1                                      mov r1, r6
00328bfc  00 40 a0 e1                                      mov r4, r0
00328c00  4e 86 13 eb                                      bl #0x80a540
00328c04  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00328c08  05 50 8f e0                                      add r5, pc, r5
00328c0c  00 30 a0 e3                                      mov r3, #0
00328c10  02 20 95 e7                                      ldr r2, [r5, r2]
00328c14  58 30 84 e5                                      str r3, [r4, #0x58]
00328c18  50 30 84 e5                                      str r3, [r4, #0x50]
00328c1c  08 20 82 e2                                      add r2, r2, #8
00328c20  00 20 84 e5                                      str r2, [r4]
00328c24  54 30 84 e5                                      str r3, [r4, #0x54]
00328c28  06 10 a0 e1                                      mov r1, r6
00328c2c  14 00 84 e2                                      add r0, r4, #0x14
00328c30  10 20 86 e2                                      add r2, r6, #0x10
00328c34  69 9f ff eb                                      bl #0x3109e0
00328c38  01 30 a0 e3                                      mov r3, #1
00328c3c  2c 30 84 e5                                      str r3, [r4, #0x2c]
00328c40  00 30 a0 e3                                      mov r3, #0
00328c44  33 30 c4 e5                                      strb r3, [r4, #0x33]
00328c48  04 00 a0 e1                                      mov r0, r4
00328c4c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00328c50  b4 62 59 00 88 be 66 00 a4 42 00 00              .byte 0xb4, 0x62, 0x59, 0x00, 0x88, 0xbe, 0x66, 0x00, 0xa4, 0x42, 0x00, 0x00
