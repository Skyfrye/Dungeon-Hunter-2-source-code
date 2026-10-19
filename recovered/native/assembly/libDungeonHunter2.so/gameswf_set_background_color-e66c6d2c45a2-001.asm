; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00759c78, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::set_background_color
; alias: _ZN7gameswf20set_background_color7executeEPNS_9characterE
; demangled: gameswf::set_background_color::execute(gameswf::character*)
; decoder-mode: arm
00759c78  70 40 2d e9                                      push {r4, r5, r6, lr}
00759c7c  00 50 a0 e1                                      mov r5, r0
00759c80  00 30 91 e5                                      ldr r3, [r1]
00759c84  01 00 a0 e1                                      mov r0, r1
00759c88  01 40 a0 e1                                      mov r4, r1
00759c8c  0f e0 a0 e1                                      mov lr, pc
00759c90  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
00759c94  43 14 a0 e3                                      mov r1, #0x43000000
00759c98  7f 18 81 e2                                      add r1, r1, #0x7f0000
00759c9c  32 d4 ee eb                                      bl #0x30ed6c
00759ca0  3f 14 a0 e3                                      mov r1, #0x3f000000
00759ca4  be d3 ee eb                                      bl #0x30eba4
00759ca8  07 d2 ee eb                                      bl #0x30e4cc
00759cac  07 00 c5 e5                                      strb r0, [r5, #7]
00759cb0  04 10 85 e2                                      add r1, r5, #4
00759cb4  04 00 a0 e1                                      mov r0, r4
00759cb8  00 30 94 e5                                      ldr r3, [r4]
00759cbc  0f e0 a0 e1                                      mov lr, pc
00759cc0  ec f0 93 e5                                      ldr pc, [r3, #0xec]
00759cc4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00759cc8, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::set_background_color
; alias: _ZN7gameswf20set_background_color13execute_stateEPNS_9characterE
; demangled: gameswf::set_background_color::execute_state(gameswf::character*)
; decoder-mode: arm
00759cc8  10 40 2d e9                                      push {r4, lr}
00759ccc  00 30 90 e5                                      ldr r3, [r0]
00759cd0  0f e0 a0 e1                                      mov lr, pc
00759cd4  08 f0 93 e5                                      ldr pc, [r3, #8]
00759cd8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00759fec, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::set_background_color
; alias: _ZN7gameswf20set_background_colorD1Ev
; demangled: gameswf::set_background_color::~set_background_color()
; decoder-mode: arm
00759fec  1e ff 2f e1                                      bx lr

; FUNCTION 0x0075a018, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::set_background_color
; alias: _ZN7gameswf20set_background_colorD0Ev
; demangled: gameswf::set_background_color::~set_background_color()
; decoder-mode: arm
0075a018  10 40 2d e9                                      push {r4, lr}
0075a01c  00 40 a0 e1                                      mov r4, r0
0075a020  a2 d0 ee eb                                      bl #0x30e2b0
0075a024  04 00 a0 e1                                      mov r0, r4
0075a028  10 80 bd e8                                      pop {r4, pc}
