; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d6050, declared_size=164, range_size=164, mode=arm
; class-group: render_handler_glitch::TransformState
; alias: _ZN21render_handler_glitch14TransformStateC1Ev
; demangled: render_handler_glitch::TransformState::TransformState()
; decoder-mode: arm
007d6050  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d6054  00 60 a0 e3                                      mov r6, #0
007d6058  40 80 a0 e3                                      mov r8, #0x40
007d605c  00 40 a0 e1                                      mov r4, r0
007d6060  fe 55 a0 e3                                      mov r5, #0x3f800000
007d6064  01 70 a0 e3                                      mov r7, #1
007d6068  06 10 a0 e1                                      mov r1, r6
007d606c  08 20 a0 e1                                      mov r2, r8
007d6070  40 60 c0 e5                                      strb r6, [r0, #0x40]
007d6074  f9 e0 ec eb                                      bl #0x30e460
007d6078  06 10 a0 e1                                      mov r1, r6
007d607c  08 20 a0 e1                                      mov r2, r8
007d6080  00 50 84 e5                                      str r5, [r4]
007d6084  14 50 84 e5                                      str r5, [r4, #0x14]
007d6088  28 50 84 e5                                      str r5, [r4, #0x28]
007d608c  3c 50 84 e5                                      str r5, [r4, #0x3c]
007d6090  40 70 c4 e5                                      strb r7, [r4, #0x40]
007d6094  84 60 c4 e5                                      strb r6, [r4, #0x84]
007d6098  44 00 84 e2                                      add r0, r4, #0x44
007d609c  ef e0 ec eb                                      bl #0x30e460
007d60a0  44 50 84 e5                                      str r5, [r4, #0x44]
007d60a4  58 50 84 e5                                      str r5, [r4, #0x58]
007d60a8  6c 50 84 e5                                      str r5, [r4, #0x6c]
007d60ac  80 50 84 e5                                      str r5, [r4, #0x80]
007d60b0  84 70 c4 e5                                      strb r7, [r4, #0x84]
007d60b4  c8 60 c4 e5                                      strb r6, [r4, #0xc8]
007d60b8  08 20 a0 e1                                      mov r2, r8
007d60bc  88 00 84 e2                                      add r0, r4, #0x88
007d60c0  06 10 a0 e1                                      mov r1, r6
007d60c4  e5 e0 ec eb                                      bl #0x30e460
007d60c8  c4 50 84 e5                                      str r5, [r4, #0xc4]
007d60cc  c8 70 c4 e5                                      strb r7, [r4, #0xc8]
007d60d0  d8 60 84 e5                                      str r6, [r4, #0xd8]
007d60d4  88 50 84 e5                                      str r5, [r4, #0x88]
007d60d8  9c 50 84 e5                                      str r5, [r4, #0x9c]
007d60dc  b0 50 84 e5                                      str r5, [r4, #0xb0]
007d60e0  cc 60 84 e5                                      str r6, [r4, #0xcc]
007d60e4  d0 60 84 e5                                      str r6, [r4, #0xd0]
007d60e8  d4 60 84 e5                                      str r6, [r4, #0xd4]
007d60ec  04 00 a0 e1                                      mov r0, r4
007d60f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
