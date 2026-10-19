; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008636e0, declared_size=52, range_size=52, mode=arm
; class-group: vox::Handlable
; alias: _ZN3vox9HandlableD1Ev
; demangled: vox::Handlable::~Handlable()
; decoder-mode: arm
008636e0  24 30 9f e5                                      ldr r3, [pc, #0x24]
008636e4  24 20 9f e5                                      ldr r2, [pc, #0x24]
008636e8  10 40 2d e9                                      push {r4, lr}
008636ec  03 30 8f e0                                      add r3, pc, r3
008636f0  02 20 93 e7                                      ldr r2, [r3, r2]
008636f4  00 40 a0 e1                                      mov r4, r0
008636f8  08 20 82 e2                                      add r2, r2, #8
008636fc  18 20 80 e4                                      str r2, [r0], #0x18
00863700  a8 bf 00 eb                                      bl #0x8935a8
00863704  04 00 a0 e1                                      mov r0, r4
00863708  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0086370c  a4 13 13 00 34 47 00 00                          .byte 0xa4, 0x13, 0x13, 0x00, 0x34, 0x47, 0x00, 0x00

; FUNCTION 0x00865bf4, declared_size=48, range_size=48, mode=arm
; class-group: vox::Handlable
; alias: _ZN3vox9Handlable7ReleaseEv
; demangled: vox::Handlable::Release()
; decoder-mode: arm
00865bf4  70 40 2d e9                                      push {r4, r5, r6, lr}
00865bf8  18 50 80 e2                                      add r5, r0, #0x18
00865bfc  00 40 a0 e1                                      mov r4, r0
00865c00  05 00 a0 e1                                      mov r0, r5
00865c04  1c b6 00 eb                                      bl #0x89347c
00865c08  10 30 94 e5                                      ldr r3, [r4, #0x10]
00865c0c  05 00 a0 e1                                      mov r0, r5
00865c10  00 00 53 e3                                      cmp r3, #0
00865c14  01 30 43 c2                                      subgt r3, r3, #1
00865c18  10 30 84 c5                                      strgt r3, [r4, #0x10]
00865c1c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00865c20  14 b6 00 ea                                      b #0x893478

; FUNCTION 0x00865c24, declared_size=44, range_size=44, mode=arm
; class-group: vox::Handlable
; alias: _ZN3vox9Handlable6RetainEv
; demangled: vox::Handlable::Retain()
; decoder-mode: arm
00865c24  70 40 2d e9                                      push {r4, r5, r6, lr}
00865c28  18 50 80 e2                                      add r5, r0, #0x18
00865c2c  00 40 a0 e1                                      mov r4, r0
00865c30  05 00 a0 e1                                      mov r0, r5
00865c34  10 b6 00 eb                                      bl #0x89347c
00865c38  10 30 94 e5                                      ldr r3, [r4, #0x10]
00865c3c  05 00 a0 e1                                      mov r0, r5
00865c40  01 30 83 e2                                      add r3, r3, #1
00865c44  10 30 84 e5                                      str r3, [r4, #0x10]
00865c48  70 40 bd e8                                      pop {r4, r5, r6, lr}
00865c4c  09 b6 00 ea                                      b #0x893478

; FUNCTION 0x00869984, declared_size=60, range_size=60, mode=arm
; class-group: vox::Handlable
; alias: _ZN3vox9HandlableD0Ev
; demangled: vox::Handlable::~Handlable()
; decoder-mode: arm
00869984  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00869988  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0086998c  10 40 2d e9                                      push {r4, lr}
00869990  03 30 8f e0                                      add r3, pc, r3
00869994  02 20 93 e7                                      ldr r2, [r3, r2]
00869998  00 40 a0 e1                                      mov r4, r0
0086999c  08 20 82 e2                                      add r2, r2, #8
008699a0  18 20 80 e4                                      str r2, [r0], #0x18
008699a4  ff a6 00 eb                                      bl #0x8935a8
008699a8  04 00 a0 e1                                      mov r0, r4
008699ac  3f 92 ea eb                                      bl #0x30e2b0
008699b0  04 00 a0 e1                                      mov r0, r4
008699b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008699b8  00 b1 12 00 34 47 00 00                          .byte 0x00, 0xb1, 0x12, 0x00, 0x34, 0x47, 0x00, 0x00
