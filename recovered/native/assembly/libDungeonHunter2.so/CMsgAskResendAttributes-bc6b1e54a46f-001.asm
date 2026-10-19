; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f4dc, declared_size=8, range_size=8, mode=arm
; class-group: CMsgAskResendAttributes
; alias: _ZN23CMsgAskResendAttributes10GetDataPtrEv
; demangled: CMsgAskResendAttributes::GetDataPtr()
; decoder-mode: arm
0031f4dc  50 00 80 e2                                      add r0, r0, #0x50
0031f4e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f4e4, declared_size=8, range_size=8, mode=arm
; class-group: CMsgAskResendAttributes
; alias: _ZNK23CMsgAskResendAttributes11GetDataSizeEv
; demangled: CMsgAskResendAttributes::GetDataSize() const
; decoder-mode: arm
0031f4e4  01 00 a0 e3                                      mov r0, #1
0031f4e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031fed8, declared_size=52, range_size=52, mode=arm
; class-group: CMsgAskResendAttributes
; alias: _ZN23CMsgAskResendAttributesD1Ev
; demangled: CMsgAskResendAttributes::~CMsgAskResendAttributes()
; decoder-mode: arm
0031fed8  24 30 9f e5                                      ldr r3, [pc, #0x24]
0031fedc  24 20 9f e5                                      ldr r2, [pc, #0x24]
0031fee0  10 40 2d e9                                      push {r4, lr}
0031fee4  03 30 8f e0                                      add r3, pc, r3
0031fee8  02 20 93 e7                                      ldr r2, [r3, r2]
0031feec  00 40 a0 e1                                      mov r4, r0
0031fef0  08 20 82 e2                                      add r2, r2, #8
0031fef4  00 20 80 e5                                      str r2, [r0]
0031fef8  a5 a8 13 eb                                      bl #0x80a194
0031fefc  04 00 a0 e1                                      mov r0, r4
0031ff00  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031ff04  ac 4b 67 00 b4 29 00 00                          .byte 0xac, 0x4b, 0x67, 0x00, 0xb4, 0x29, 0x00, 0x00

; FUNCTION 0x003244ec, declared_size=60, range_size=60, mode=arm
; class-group: CMsgAskResendAttributes
; alias: _ZN23CMsgAskResendAttributesD0Ev
; demangled: CMsgAskResendAttributes::~CMsgAskResendAttributes()
; decoder-mode: arm
003244ec  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003244f0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003244f4  10 40 2d e9                                      push {r4, lr}
003244f8  03 30 8f e0                                      add r3, pc, r3
003244fc  02 20 93 e7                                      ldr r2, [r3, r2]
00324500  00 40 a0 e1                                      mov r4, r0
00324504  08 20 82 e2                                      add r2, r2, #8
00324508  00 20 80 e5                                      str r2, [r0]
0032450c  20 97 13 eb                                      bl #0x80a194
00324510  04 00 a0 e1                                      mov r0, r4
00324514  c9 af ff eb                                      bl #0x310440
00324518  04 00 a0 e1                                      mov r0, r4
0032451c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00324520  98 05 67 00 b4 29 00 00                          .byte 0x98, 0x05, 0x67, 0x00, 0xb4, 0x29, 0x00, 0x00

; FUNCTION 0x00327ad8, declared_size=52, range_size=52, mode=arm
; class-group: CMsgAskResendAttributes
; alias: _ZN23CMsgAskResendAttributes13SetPropertiesEv
; demangled: CMsgAskResendAttributes::SetProperties()
; decoder-mode: arm
00327ad8  28 10 9f e5                                      ldr r1, [pc, #0x28]
00327adc  10 40 2d e9                                      push {r4, lr}
00327ae0  01 10 8f e0                                      add r1, pc, r1
00327ae4  00 40 a0 e1                                      mov r4, r0
00327ae8  17 20 81 e2                                      add r2, r1, #0x17
00327aec  14 00 80 e2                                      add r0, r0, #0x14
00327af0  ba a3 ff eb                                      bl #0x3109e0
00327af4  01 30 a0 e3                                      mov r3, #1
00327af8  32 30 c4 e5                                      strb r3, [r4, #0x32]
00327afc  00 30 a0 e3                                      mov r3, #0
00327b00  2c 30 84 e5                                      str r3, [r4, #0x2c]
00327b04  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00327b08  50 74 59 00                                      .byte 0x50, 0x74, 0x59, 0x00
