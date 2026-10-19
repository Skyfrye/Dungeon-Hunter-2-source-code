; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a4d5c, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_sound
; alias: _ZNK7gameswf8as_sound2isEi
; demangled: gameswf::as_sound::is(int) const
; decoder-mode: arm
007a4d5c  12 00 51 e3                                      cmp r1, #0x12
007a4d60  01 00 a0 03                                      moveq r0, #1
007a4d64  1e ff 2f 01                                      bxeq lr
007a4d68  01 00 71 e2                                      rsbs r0, r1, #1
007a4d6c  00 00 a0 33                                      movlo r0, #0
007a4d70  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a4da8, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::as_sound
; alias: _ZN7gameswf8as_sound5clearEv
; demangled: gameswf::as_sound::clear()
; decoder-mode: arm
007a4da8  10 40 2d e9                                      push {r4, lr}
007a4dac  3c 30 d0 e5                                      ldrb r3, [r0, #0x3c]
007a4db0  00 40 a0 e1                                      mov r4, r0
007a4db4  00 00 53 e3                                      cmp r3, #0
007a4db8  09 00 00 0a                                      beq #0x7a4de4
007a4dbc  38 30 90 e5                                      ldr r3, [r0, #0x38]
007a4dc0  00 00 53 e3                                      cmp r3, #0
007a4dc4  06 00 00 ba                                      blt #0x7a4de4
007a4dc8  74 5f ff eb                                      bl #0x77cba0
007a4dcc  00 30 50 e2                                      subs r3, r0, #0
007a4dd0  03 00 00 0a                                      beq #0x7a4de4
007a4dd4  00 30 93 e5                                      ldr r3, [r3]
007a4dd8  38 10 94 e5                                      ldr r1, [r4, #0x38]
007a4ddc  0f e0 a0 e1                                      mov lr, pc
007a4de0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007a4de4  00 30 e0 e3                                      mvn r3, #0
007a4de8  38 30 84 e5                                      str r3, [r4, #0x38]
007a4dec  00 30 a0 e3                                      mov r3, #0
007a4df0  3c 30 c4 e5                                      strb r3, [r4, #0x3c]
007a4df4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007a4df8, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::as_sound
; alias: _ZN7gameswf8as_soundD1Ev
; demangled: gameswf::as_sound::~as_sound()
; decoder-mode: arm
007a4df8  50 30 9f e5                                      ldr r3, [pc, #0x50]
007a4dfc  50 20 9f e5                                      ldr r2, [pc, #0x50]
007a4e00  10 40 2d e9                                      push {r4, lr}
007a4e04  03 30 8f e0                                      add r3, pc, r3
007a4e08  02 20 93 e7                                      ldr r2, [r3, r2]
007a4e0c  00 40 a0 e1                                      mov r4, r0
007a4e10  08 20 82 e2                                      add r2, r2, #8
007a4e14  00 20 80 e5                                      str r2, [r0]
007a4e18  e2 ff ff eb                                      bl #0x7a4da8
007a4e1c  40 00 94 e5                                      ldr r0, [r4, #0x40]
007a4e20  00 00 50 e3                                      cmp r0, #0
007a4e24  05 00 00 0a                                      beq #0x7a4e40
007a4e28  00 10 90 e5                                      ldr r1, [r0]
007a4e2c  01 10 41 e2                                      sub r1, r1, #1
007a4e30  00 00 51 e3                                      cmp r1, #0
007a4e34  00 10 80 e5                                      str r1, [r0]
007a4e38  00 00 00 1a                                      bne #0x7a4e40
007a4e3c  3d b7 fe eb                                      bl #0x752b38
007a4e40  04 00 a0 e1                                      mov r0, r4
007a4e44  14 13 ff eb                                      bl #0x769a9c
007a4e48  04 00 a0 e1                                      mov r0, r4
007a4e4c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007a4e50  8c fc 1e 00 b0 2a 00 00                          .byte 0x8c, 0xfc, 0x1e, 0x00, 0xb0, 0x2a, 0x00, 0x00

; FUNCTION 0x007a4e58, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::as_sound
; alias: _ZN7gameswf8as_soundD0Ev
; demangled: gameswf::as_sound::~as_sound()
; decoder-mode: arm
007a4e58  10 40 2d e9                                      push {r4, lr}
007a4e5c  00 40 a0 e1                                      mov r4, r0
007a4e60  e4 ff ff eb                                      bl #0x7a4df8
007a4e64  04 00 a0 e1                                      mov r0, r4
007a4e68  10 a5 ed eb                                      bl #0x30e2b0
007a4e6c  04 00 a0 e1                                      mov r0, r4
007a4e70  10 80 bd e8                                      pop {r4, pc}
