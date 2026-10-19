; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d797c, declared_size=148, range_size=148, mode=arm
; class-group: glitch::video::SRenderState
; alias: _ZN6glitch5video12SRenderStateC1Ev
; demangled: glitch::video::SRenderState::SRenderState()
; decoder-mode: arm
005d797c  30 00 2d e9                                      push {r4, r5}
005d7980  07 47 a0 e3                                      mov r4, #0x1c0000
005d7984  0f 4c 84 e2                                      add r4, r4, #0xf00
005d7988  07 c0 03 e3                                      movw ip, #0x3007
005d798c  0c cb 8c e1                                      orr ip, ip, ip, lsl #22
005d7990  08 40 80 e5                                      str r4, [r0, #8]
005d7994  01 41 00 e3                                      movw r4, #0x101
005d7998  00 20 a0 e3                                      mov r2, #0
005d799c  fe 15 a0 e3                                      mov r1, #0x3f800000
005d79a0  00 50 a0 e3                                      mov r5, #0
005d79a4  ff 44 84 e3                                      orr r4, r4, #0xff000000
005d79a8  0c c0 80 e5                                      str ip, [r0, #0xc]
005d79ac  ff cc e0 e3                                      mvn ip, #0xff00
005d79b0  30 50 80 e5                                      str r5, [r0, #0x30]
005d79b4  38 10 80 e5                                      str r1, [r0, #0x38]
005d79b8  10 20 80 e5                                      str r2, [r0, #0x10]
005d79bc  10 10 80 e8                                      stm r0, {r4, ip}
005d79c0  14 20 c0 e5                                      strb r2, [r0, #0x14]
005d79c4  15 20 c0 e5                                      strb r2, [r0, #0x15]
005d79c8  16 20 c0 e5                                      strb r2, [r0, #0x16]
005d79cc  17 20 c0 e5                                      strb r2, [r0, #0x17]
005d79d0  18 20 c0 e5                                      strb r2, [r0, #0x18]
005d79d4  19 20 c0 e5                                      strb r2, [r0, #0x19]
005d79d8  1a 20 c0 e5                                      strb r2, [r0, #0x1a]
005d79dc  1b 20 c0 e5                                      strb r2, [r0, #0x1b]
005d79e0  1c 10 80 e5                                      str r1, [r0, #0x1c]
005d79e4  20 50 80 e5                                      str r5, [r0, #0x20]
005d79e8  24 10 80 e5                                      str r1, [r0, #0x24]
005d79ec  28 10 80 e5                                      str r1, [r0, #0x28]
005d79f0  2c 10 80 e5                                      str r1, [r0, #0x2c]
005d79f4  34 10 80 e5                                      str r1, [r0, #0x34]
005d79f8  3c 20 80 e5                                      str r2, [r0, #0x3c]
005d79fc  40 20 80 e5                                      str r2, [r0, #0x40]
005d7a00  44 20 80 e5                                      str r2, [r0, #0x44]
005d7a04  48 20 80 e5                                      str r2, [r0, #0x48]
005d7a08  30 00 bd e8                                      pop {r4, r5}
005d7a0c  1e ff 2f e1                                      bx lr
