; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00498cdc, declared_size=36, range_size=36, mode=arm
; class-group: SWFAnimToolTip
; alias: _ZNK14SWFAnimToolTip9IsVisibleEv
; demangled: SWFAnimToolTip::IsVisible() const
; decoder-mode: arm
00498cdc  04 30 90 e5                                      ldr r3, [r0, #4]
00498ce0  00 00 53 e3                                      cmp r3, #0
00498ce4  03 00 00 0a                                      beq #0x498cf8
00498ce8  08 00 90 e5                                      ldr r0, [r0, #8]
00498cec  00 00 50 e3                                      cmp r0, #0
00498cf0  00 00 00 0a                                      beq #0x498cf8
00498cf4  f8 f7 ff ea                                      b #0x496cdc
00498cf8  00 00 a0 e3                                      mov r0, #0
00498cfc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00498d00, declared_size=24, range_size=24, mode=arm
; class-group: SWFAnimToolTip
; alias: _ZN14SWFAnimToolTip10IsAnimOverEv
; demangled: SWFAnimToolTip::IsAnimOver()
; decoder-mode: arm
00498d00  10 40 2d e9                                      push {r4, lr}
00498d04  08 00 90 e5                                      ldr r0, [r0, #8]
00498d08  f8 f7 ff eb                                      bl #0x496cf0
00498d0c  01 00 20 e2                                      eor r0, r0, #1
00498d10  70 00 ef e6                                      uxtb r0, r0
00498d14  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00498d18, declared_size=8, range_size=8, mode=arm
; class-group: SWFAnimToolTip
; alias: _ZN14SWFAnimToolTip8PlayAnimEPKc
; demangled: SWFAnimToolTip::PlayAnim(char const*)
; decoder-mode: arm
00498d18  08 00 90 e5                                      ldr r0, [r0, #8]
00498d1c  fc f7 ff ea                                      b #0x496d14

; FUNCTION 0x00498d20, declared_size=24, range_size=24, mode=arm
; class-group: SWFAnimToolTip
; alias: _ZN14SWFAnimToolTip9DoFadeOutEv
; demangled: SWFAnimToolTip::DoFadeOut()
; decoder-mode: arm
00498d20  0c 10 9f e5                                      ldr r1, [pc, #0xc]
00498d24  03 30 a0 e3                                      mov r3, #3
00498d28  04 30 80 e5                                      str r3, [r0, #4]
00498d2c  01 10 8f e0                                      add r1, pc, r1
00498d30  f8 ff ff ea                                      b #0x498d18
; mapping-symbol data/literal pool
00498d34  c4 c3 43 00                                      .byte 0xc4, 0xc3, 0x43, 0x00

; FUNCTION 0x00498d38, declared_size=44, range_size=44, mode=arm
; class-group: SWFAnimToolTip
; alias: _ZN14SWFAnimToolTip7FadeOutEi
; demangled: SWFAnimToolTip::FadeOut(int)
; decoder-mode: arm
00498d38  04 20 90 e5                                      ldr r2, [r0, #4]
00498d3c  01 20 42 e2                                      sub r2, r2, #1
00498d40  01 00 52 e3                                      cmp r2, #1
00498d44  1e ff 2f 81                                      bxhi lr
00498d48  00 20 90 e5                                      ldr r2, [r0]
00498d4c  00 00 52 e3                                      cmp r2, #0
00498d50  1e ff 2f c1                                      bxgt lr
00498d54  00 00 51 e3                                      cmp r1, #0
00498d58  00 10 80 e5                                      str r1, [r0]
00498d5c  1e ff 2f a1                                      bxge lr
00498d60  ee ff ff ea                                      b #0x498d20

; FUNCTION 0x00498d64, declared_size=136, range_size=136, mode=arm
; class-group: SWFAnimToolTip
; alias: _ZN14SWFAnimToolTip6FadeInEv
; demangled: SWFAnimToolTip::FadeIn()
; decoder-mode: arm
00498d64  70 40 2d e9                                      push {r4, r5, r6, lr}
00498d68  04 20 90 e5                                      ldr r2, [r0, #4]
00498d6c  68 30 9f e5                                      ldr r3, [pc, #0x68]
00498d70  00 40 a0 e1                                      mov r4, r0
00498d74  00 00 52 e3                                      cmp r2, #0
00498d78  03 00 52 13                                      cmpne r2, #3
00498d7c  03 30 8f e0                                      add r3, pc, r3
00498d80  0b 00 00 1a                                      bne #0x498db4
00498d84  08 20 90 e5                                      ldr r2, [r0, #8]
00498d88  00 00 52 e3                                      cmp r2, #0
00498d8c  0b 00 00 0a                                      beq #0x498dc0
00498d90  48 10 9f e5                                      ldr r1, [pc, #0x48]
00498d94  01 50 a0 e3                                      mov r5, #1
00498d98  04 00 a0 e1                                      mov r0, r4
00498d9c  01 10 8f e0                                      add r1, pc, r1
00498da0  04 50 84 e5                                      str r5, [r4, #4]
00498da4  db ff ff eb                                      bl #0x498d18
00498da8  05 10 a0 e1                                      mov r1, r5
00498dac  08 00 94 e5                                      ldr r0, [r4, #8]
00498db0  c3 f7 ff eb                                      bl #0x496cc4
00498db4  00 30 a0 e3                                      mov r3, #0
00498db8  00 30 84 e5                                      str r3, [r4]
00498dbc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00498dc0  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00498dc4  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00498dc8  02 00 93 e7                                      ldr r0, [r3, r2]
00498dcc  01 10 8f e0                                      add r1, pc, r1
00498dd0  b6 ff ff eb                                      bl #0x498cb0
00498dd4  08 00 84 e5                                      str r0, [r4, #8]
00498dd8  ec ff ff ea                                      b #0x498d90
; mapping-symbol data/literal pool
00498ddc  14 bd 4f 00 74 c3 43 00 80 14 00 00 34 c3 43 00  .byte 0x14, 0xbd, 0x4f, 0x00, 0x74, 0xc3, 0x43, 0x00, 0x80, 0x14, 0x00, 0x00, 0x34, 0xc3, 0x43, 0x00

; FUNCTION 0x00498dec, declared_size=56, range_size=56, mode=arm
; class-group: SWFAnimToolTip
; alias: _ZN14SWFAnimToolTipD1Ev
; demangled: SWFAnimToolTip::~SWFAnimToolTip()
; decoder-mode: arm
00498dec  10 40 2d e9                                      push {r4, lr}
00498df0  24 30 9f e5                                      ldr r3, [pc, #0x24]
00498df4  24 20 9f e5                                      ldr r2, [pc, #0x24]
00498df8  00 40 a0 e1                                      mov r4, r0
00498dfc  03 30 8f e0                                      add r3, pc, r3
00498e00  02 00 93 e7                                      ldr r0, [r3, r2]
00498e04  08 10 94 e5                                      ldr r1, [r4, #8]
00498e08  82 f9 ff eb                                      bl #0x497418
00498e0c  00 30 a0 e3                                      mov r3, #0
00498e10  08 30 84 e5                                      str r3, [r4, #8]
00498e14  04 00 a0 e1                                      mov r0, r4
00498e18  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00498e1c  94 bc 4f 00 80 14 00 00                          .byte 0x94, 0xbc, 0x4f, 0x00, 0x80, 0x14, 0x00, 0x00

; FUNCTION 0x00498e24, declared_size=56, range_size=56, mode=arm
; class-group: SWFAnimToolTip
; alias: _ZN14SWFAnimToolTipD2Ev
; demangled: SWFAnimToolTip::~SWFAnimToolTip()
; decoder-mode: arm
00498e24  10 40 2d e9                                      push {r4, lr}
00498e28  24 30 9f e5                                      ldr r3, [pc, #0x24]
00498e2c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00498e30  00 40 a0 e1                                      mov r4, r0
00498e34  03 30 8f e0                                      add r3, pc, r3
00498e38  02 00 93 e7                                      ldr r0, [r3, r2]
00498e3c  08 10 94 e5                                      ldr r1, [r4, #8]
00498e40  74 f9 ff eb                                      bl #0x497418
00498e44  00 30 a0 e3                                      mov r3, #0
00498e48  08 30 84 e5                                      str r3, [r4, #8]
00498e4c  04 00 a0 e1                                      mov r0, r4
00498e50  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00498e54  5c bc 4f 00 80 14 00 00                          .byte 0x5c, 0xbc, 0x4f, 0x00, 0x80, 0x14, 0x00, 0x00

; FUNCTION 0x00498e5c, declared_size=212, range_size=212, mode=arm
; class-group: SWFAnimToolTip
; alias: _ZN14SWFAnimToolTip6UpdateEv
; demangled: SWFAnimToolTip::Update()
; decoder-mode: arm
00498e5c  70 40 2d e9                                      push {r4, r5, r6, lr}
00498e60  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00498e64  04 20 90 e5                                      ldr r2, [r0, #4]
00498e68  00 40 a0 e1                                      mov r4, r0
00498e6c  03 30 8f e0                                      add r3, pc, r3
00498e70  03 00 52 e3                                      cmp r2, #3
00498e74  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
00498e78  07 00 00 ea                                      b #0x498e9c
00498e7c  1e 00 00 ea                                      b #0x498efc
00498e80  13 00 00 ea                                      b #0x498ed4
00498e84  05 00 00 ea                                      b #0x498ea0
00498e88  ff ff ff ea                                      b #0x498e8c
00498e8c  9b ff ff eb                                      bl #0x498d00
00498e90  00 00 50 e3                                      cmp r0, #0
00498e94  00 30 a0 13                                      movne r3, #0
00498e98  04 30 84 15                                      strne r3, [r4, #4]
00498e9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00498ea0  00 50 90 e5                                      ldr r5, [r0]
00498ea4  00 00 55 e3                                      cmp r5, #0
00498ea8  fb ff ff da                                      ble #0x498e9c
00498eac  70 20 9f e5                                      ldr r2, [pc, #0x70]
00498eb0  02 00 93 e7                                      ldr r0, [r3, r2]
00498eb4  ec 19 fa eb                                      bl #0x31f66c
00498eb8  05 00 60 e0                                      rsb r0, r0, r5
00498ebc  00 00 50 e3                                      cmp r0, #0
00498ec0  00 00 84 e5                                      str r0, [r4]
00498ec4  f4 ff ff ca                                      bgt #0x498e9c
00498ec8  04 00 a0 e1                                      mov r0, r4
00498ecc  70 40 bd e8                                      pop {r4, r5, r6, lr}
00498ed0  92 ff ff ea                                      b #0x498d20
00498ed4  89 ff ff eb                                      bl #0x498d00
00498ed8  00 00 50 e3                                      cmp r0, #0
00498edc  ee ff ff 0a                                      beq #0x498e9c
00498ee0  40 10 9f e5                                      ldr r1, [pc, #0x40]
00498ee4  04 00 a0 e1                                      mov r0, r4
00498ee8  01 10 8f e0                                      add r1, pc, r1
00498eec  89 ff ff eb                                      bl #0x498d18
00498ef0  02 30 a0 e3                                      mov r3, #2
00498ef4  04 30 84 e5                                      str r3, [r4, #4]
00498ef8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00498efc  08 10 90 e5                                      ldr r1, [r0, #8]
00498f00  00 00 51 e3                                      cmp r1, #0
00498f04  e4 ff ff 0a                                      beq #0x498e9c
00498f08  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00498f0c  02 00 93 e7                                      ldr r0, [r3, r2]
00498f10  40 f9 ff eb                                      bl #0x497418
00498f14  00 30 a0 e3                                      mov r3, #0
00498f18  08 30 84 e5                                      str r3, [r4, #8]
00498f1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00498f20  24 bc 4f 00 f4 37 00 00 d8 2b 43 00 80 14 00 00  .byte 0x24, 0xbc, 0x4f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xd8, 0x2b, 0x43, 0x00, 0x80, 0x14, 0x00, 0x00

; FUNCTION 0x00498f30, declared_size=196, range_size=196, mode=arm
; class-group: SWFAnimToolTip
; alias: _ZN14SWFAnimToolTipC1Ev
; demangled: SWFAnimToolTip::SWFAnimToolTip()
; decoder-mode: arm
00498f30  30 40 2d e9                                      push {r4, r5, lr}
00498f34  00 30 a0 e3                                      mov r3, #0
00498f38  94 50 9f e5                                      ldr r5, [pc, #0x94]
00498f3c  08 30 80 e5                                      str r3, [r0, #8]
00498f40  00 30 80 e5                                      str r3, [r0]
00498f44  04 30 80 e5                                      str r3, [r0, #4]
00498f48  88 10 9f e5                                      ldr r1, [pc, #0x88]
00498f4c  88 30 9f e5                                      ldr r3, [pc, #0x88]
00498f50  05 50 8f e0                                      add r5, pc, r5
00498f54  00 40 a0 e1                                      mov r4, r0
00498f58  0c d0 4d e2                                      sub sp, sp, #0xc
00498f5c  03 00 95 e7                                      ldr r0, [r5, r3]
00498f60  01 10 8f e0                                      add r1, pc, r1
00498f64  51 ff ff eb                                      bl #0x498cb0
00498f68  00 00 50 e3                                      cmp r0, #0
00498f6c  08 00 84 e5                                      str r0, [r4, #8]
00498f70  02 00 00 0a                                      beq #0x498f80
00498f74  04 00 a0 e1                                      mov r0, r4
00498f78  0c d0 8d e2                                      add sp, sp, #0xc
00498f7c  30 80 bd e8                                      pop {r4, r5, pc}
00498f80  58 30 9f e5                                      ldr r3, [pc, #0x58]
00498f84  03 30 95 e7                                      ldr r3, [r5, r3]
00498f88  00 30 93 e5                                      ldr r3, [r3]
00498f8c  02 00 53 e3                                      cmp r3, #2
00498f90  00 00 80 05                                      streq r0, [r0]
00498f94  f6 ff ff 0a                                      beq #0x498f74
00498f98  01 00 53 e3                                      cmp r3, #1
00498f9c  f4 ff ff 1a                                      bne #0x498f74
00498fa0  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00498fa4  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00498fa8  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00498fac  00 00 95 e7                                      ldr r0, [r5, r0]
00498fb0  38 30 9f e5                                      ldr r3, [pc, #0x38]
00498fb4  0d c0 a0 e3                                      mov ip, #0xd
00498fb8  01 10 8f e0                                      add r1, pc, r1
00498fbc  02 20 8f e0                                      add r2, pc, r2
00498fc0  03 30 8f e0                                      add r3, pc, r3
00498fc4  a8 00 80 e2                                      add r0, r0, #0xa8
00498fc8  00 c0 8d e5                                      str ip, [sp]
00498fcc  0c d4 f9 eb                                      bl #0x30e004
00498fd0  e7 ff ff ea                                      b #0x498f74
; mapping-symbol data/literal pool
00498fd4  40 bb 4f 00 a0 c1 43 00 80 14 00 00 c0 39 00 00  .byte 0x40, 0xbb, 0x4f, 0x00, 0xa0, 0xc1, 0x43, 0x00, 0x80, 0x14, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
00498fe4  c0 19 00 00 20 54 42 00 5c c1 43 00 68 c1 43 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x20, 0x54, 0x42, 0x00, 0x5c, 0xc1, 0x43, 0x00, 0x68, 0xc1, 0x43, 0x00

; FUNCTION 0x00498ff4, declared_size=196, range_size=196, mode=arm
; class-group: SWFAnimToolTip
; alias: _ZN14SWFAnimToolTipC2Ev
; demangled: SWFAnimToolTip::SWFAnimToolTip()
; decoder-mode: arm
00498ff4  30 40 2d e9                                      push {r4, r5, lr}
00498ff8  00 30 a0 e3                                      mov r3, #0
00498ffc  94 50 9f e5                                      ldr r5, [pc, #0x94]
00499000  08 30 80 e5                                      str r3, [r0, #8]
00499004  00 30 80 e5                                      str r3, [r0]
00499008  04 30 80 e5                                      str r3, [r0, #4]
0049900c  88 10 9f e5                                      ldr r1, [pc, #0x88]
00499010  88 30 9f e5                                      ldr r3, [pc, #0x88]
00499014  05 50 8f e0                                      add r5, pc, r5
00499018  00 40 a0 e1                                      mov r4, r0
0049901c  0c d0 4d e2                                      sub sp, sp, #0xc
00499020  03 00 95 e7                                      ldr r0, [r5, r3]
00499024  01 10 8f e0                                      add r1, pc, r1
00499028  20 ff ff eb                                      bl #0x498cb0
0049902c  00 00 50 e3                                      cmp r0, #0
00499030  08 00 84 e5                                      str r0, [r4, #8]
00499034  02 00 00 0a                                      beq #0x499044
00499038  04 00 a0 e1                                      mov r0, r4
0049903c  0c d0 8d e2                                      add sp, sp, #0xc
00499040  30 80 bd e8                                      pop {r4, r5, pc}
00499044  58 30 9f e5                                      ldr r3, [pc, #0x58]
00499048  03 30 95 e7                                      ldr r3, [r5, r3]
0049904c  00 30 93 e5                                      ldr r3, [r3]
00499050  02 00 53 e3                                      cmp r3, #2
00499054  00 00 80 05                                      streq r0, [r0]
00499058  f6 ff ff 0a                                      beq #0x499038
0049905c  01 00 53 e3                                      cmp r3, #1
00499060  f4 ff ff 1a                                      bne #0x499038
00499064  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00499068  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0049906c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00499070  00 00 95 e7                                      ldr r0, [r5, r0]
00499074  38 30 9f e5                                      ldr r3, [pc, #0x38]
00499078  0d c0 a0 e3                                      mov ip, #0xd
0049907c  01 10 8f e0                                      add r1, pc, r1
00499080  02 20 8f e0                                      add r2, pc, r2
00499084  03 30 8f e0                                      add r3, pc, r3
00499088  a8 00 80 e2                                      add r0, r0, #0xa8
0049908c  00 c0 8d e5                                      str ip, [sp]
00499090  db d3 f9 eb                                      bl #0x30e004
00499094  e7 ff ff ea                                      b #0x499038
; mapping-symbol data/literal pool
00499098  7c ba 4f 00 dc c0 43 00 80 14 00 00 c0 39 00 00  .byte 0x7c, 0xba, 0x4f, 0x00, 0xdc, 0xc0, 0x43, 0x00, 0x80, 0x14, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
004990a8  c0 19 00 00 5c 53 42 00 98 c0 43 00 a4 c0 43 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x5c, 0x53, 0x42, 0x00, 0x98, 0xc0, 0x43, 0x00, 0xa4, 0xc0, 0x43, 0x00
