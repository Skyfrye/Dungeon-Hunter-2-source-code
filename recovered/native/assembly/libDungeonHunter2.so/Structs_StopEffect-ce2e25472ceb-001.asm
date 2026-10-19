; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7254, declared_size=52, range_size=52, mode=arm
; class-group: Structs::StopEffect
; alias: _ZN7Structs10StopEffectD2Ev
; demangled: Structs::StopEffect::~StopEffect()
; decoder-mode: arm
004c7254  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7258  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c725c  10 40 2d e9                                      push {r4, lr}
004c7260  03 30 8f e0                                      add r3, pc, r3
004c7264  02 20 93 e7                                      ldr r2, [r3, r2]
004c7268  00 40 a0 e1                                      mov r4, r0
004c726c  08 20 82 e2                                      add r2, r2, #8
004c7270  00 20 80 e5                                      str r2, [r0]
004c7274  79 fe ff eb                                      bl #0x4c6c60
004c7278  04 00 a0 e1                                      mov r0, r4
004c727c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7280  30 d8 4c 00 9c 1b 00 00                          .byte 0x30, 0xd8, 0x4c, 0x00, 0x9c, 0x1b, 0x00, 0x00

; FUNCTION 0x004c7288, declared_size=52, range_size=52, mode=arm
; class-group: Structs::StopEffect
; alias: _ZN7Structs10StopEffectD1Ev
; demangled: Structs::StopEffect::~StopEffect()
; decoder-mode: arm
004c7288  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c728c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7290  10 40 2d e9                                      push {r4, lr}
004c7294  03 30 8f e0                                      add r3, pc, r3
004c7298  02 20 93 e7                                      ldr r2, [r3, r2]
004c729c  00 40 a0 e1                                      mov r4, r0
004c72a0  08 20 82 e2                                      add r2, r2, #8
004c72a4  00 20 80 e5                                      str r2, [r0]
004c72a8  6c fe ff eb                                      bl #0x4c6c60
004c72ac  04 00 a0 e1                                      mov r0, r4
004c72b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c72b4  fc d7 4c 00 9c 1b 00 00                          .byte 0xfc, 0xd7, 0x4c, 0x00, 0x9c, 0x1b, 0x00, 0x00

; FUNCTION 0x004c72bc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::StopEffect
; alias: _ZN7Structs10StopEffect8finalizeEv
; demangled: Structs::StopEffect::finalize()
; decoder-mode: arm
004c72bc  69 fe ff ea                                      b #0x4c6c68

; FUNCTION 0x004cdfbc, declared_size=28, range_size=28, mode=arm
; class-group: Structs::StopEffect
; alias: _ZN7Structs10StopEffectD0Ev
; demangled: Structs::StopEffect::~StopEffect()
; decoder-mode: arm
004cdfbc  10 40 2d e9                                      push {r4, lr}
004cdfc0  00 40 a0 e1                                      mov r4, r0
004cdfc4  af e4 ff eb                                      bl #0x4c7288
004cdfc8  04 00 a0 e1                                      mov r0, r4
004cdfcc  1b 09 f9 eb                                      bl #0x310440
004cdfd0  04 00 a0 e1                                      mov r0, r4
004cdfd4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005032f4, declared_size=120, range_size=120, mode=arm
; class-group: Structs::StopEffect
; alias: _ZN7Structs10StopEffect4readEP11IStreamBase
; demangled: Structs::StopEffect::read(IStreamBase*)
; decoder-mode: arm
005032f4  30 40 2d e9                                      push {r4, r5, lr}
005032f8  00 40 a0 e1                                      mov r4, r0
005032fc  0c d0 4d e2                                      sub sp, sp, #0xc
00503300  01 50 a0 e1                                      mov r5, r1
00503304  47 f1 ff eb                                      bl #0x4ff828
00503308  05 00 a0 e1                                      mov r0, r5
0050330c  08 10 84 e2                                      add r1, r4, #8
00503310  5e 57 fd eb                                      bl #0x459090
00503314  01 30 a0 e3                                      mov r3, #1
00503318  00 00 53 e3                                      cmp r3, #0
0050331c  04 30 8d e5                                      str r3, [sp, #4]
00503320  0f 00 00 1a                                      bne #0x503364
00503324  0a 30 84 e2                                      add r3, r4, #0xa
00503328  09 40 84 e2                                      add r4, r4, #9
0050332c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00503330  01 20 54 e5                                      ldrb r2, [r4, #-1]
00503334  03 00 54 e1                                      cmp r4, r3
00503338  02 20 21 e0                                      eor r2, r1, r2
0050333c  01 20 44 e5                                      strb r2, [r4, #-1]
00503340  01 10 d3 e5                                      ldrb r1, [r3, #1]
00503344  01 20 22 e0                                      eor r2, r2, r1
00503348  01 20 c3 e5                                      strb r2, [r3, #1]
0050334c  01 10 54 e5                                      ldrb r1, [r4, #-1]
00503350  01 30 43 e2                                      sub r3, r3, #1
00503354  01 20 22 e0                                      eor r2, r2, r1
00503358  01 20 44 e5                                      strb r2, [r4, #-1]
0050335c  01 40 84 e2                                      add r4, r4, #1
00503360  f1 ff ff 3a                                      blo #0x50332c
00503364  0c d0 8d e2                                      add sp, sp, #0xc
00503368  30 80 bd e8                                      pop {r4, r5, pc}
