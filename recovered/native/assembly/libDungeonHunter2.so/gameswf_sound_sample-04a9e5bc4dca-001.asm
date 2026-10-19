; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0077cb5c, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::sound_sample
; alias: _ZNK7gameswf12sound_sample2isEi
; demangled: gameswf::sound_sample::is(int) const
; decoder-mode: arm
0077cb5c  0d 00 51 e3                                      cmp r1, #0xd
0077cb60  01 00 a0 03                                      moveq r0, #1
0077cb64  1e ff 2f 01                                      bxeq lr
0077cb68  0a 00 51 e3                                      cmp r1, #0xa
0077cb6c  00 00 a0 13                                      movne r0, #0
0077cb70  01 00 a0 03                                      moveq r0, #1
0077cb74  1e ff 2f e1                                      bx lr

; FUNCTION 0x0077cfa0, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::sound_sample
; alias: _ZN7gameswf12sound_sampleD1Ev
; demangled: gameswf::sound_sample::~sound_sample()
; decoder-mode: arm
0077cfa0  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0077cfa4  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0077cfa8  10 40 2d e9                                      push {r4, lr}
0077cfac  03 30 8f e0                                      add r3, pc, r3
0077cfb0  02 20 93 e7                                      ldr r2, [r3, r2]
0077cfb4  40 30 9f e5                                      ldr r3, [pc, #0x40]
0077cfb8  00 40 a0 e1                                      mov r4, r0
0077cfbc  08 20 82 e2                                      add r2, r2, #8
0077cfc0  00 20 80 e5                                      str r2, [r0]
0077cfc4  03 30 9f e7                                      ldr r3, [pc, r3]
0077cfc8  00 00 53 e3                                      cmp r3, #0
0077cfcc  04 00 00 0a                                      beq #0x77cfe4
0077cfd0  03 00 a0 e1                                      mov r0, r3
0077cfd4  20 10 94 e5                                      ldr r1, [r4, #0x20]
0077cfd8  00 30 93 e5                                      ldr r3, [r3]
0077cfdc  0f e0 a0 e1                                      mov lr, pc
0077cfe0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0077cfe4  04 00 a0 e1                                      mov r0, r4
0077cfe8  a2 83 ff eb                                      bl #0x75de78
0077cfec  04 00 a0 e1                                      mov r0, r4
0077cff0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0077cff4  e4 7a 21 00 a4 0f 00 00 e8 f9 27 00              .byte 0xe4, 0x7a, 0x21, 0x00, 0xa4, 0x0f, 0x00, 0x00, 0xe8, 0xf9, 0x27, 0x00

; FUNCTION 0x0077d000, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::sound_sample
; alias: _ZN7gameswf12sound_sampleD0Ev
; demangled: gameswf::sound_sample::~sound_sample()
; decoder-mode: arm
0077d000  10 40 2d e9                                      push {r4, lr}
0077d004  00 40 a0 e1                                      mov r4, r0
0077d008  e4 ff ff eb                                      bl #0x77cfa0
0077d00c  04 00 a0 e1                                      mov r0, r4
0077d010  a6 44 ee eb                                      bl #0x30e2b0
0077d014  04 00 a0 e1                                      mov r0, r4
0077d018  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077d01c, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::sound_sample
; alias: _ZN7gameswf12sound_sampleD2Ev
; demangled: gameswf::sound_sample::~sound_sample()
; decoder-mode: arm
0077d01c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0077d020  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0077d024  10 40 2d e9                                      push {r4, lr}
0077d028  03 30 8f e0                                      add r3, pc, r3
0077d02c  02 20 93 e7                                      ldr r2, [r3, r2]
0077d030  40 30 9f e5                                      ldr r3, [pc, #0x40]
0077d034  00 40 a0 e1                                      mov r4, r0
0077d038  08 20 82 e2                                      add r2, r2, #8
0077d03c  00 20 80 e5                                      str r2, [r0]
0077d040  03 30 9f e7                                      ldr r3, [pc, r3]
0077d044  00 00 53 e3                                      cmp r3, #0
0077d048  04 00 00 0a                                      beq #0x77d060
0077d04c  03 00 a0 e1                                      mov r0, r3
0077d050  20 10 94 e5                                      ldr r1, [r4, #0x20]
0077d054  00 30 93 e5                                      ldr r3, [r3]
0077d058  0f e0 a0 e1                                      mov lr, pc
0077d05c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0077d060  04 00 a0 e1                                      mov r0, r4
0077d064  83 83 ff eb                                      bl #0x75de78
0077d068  04 00 a0 e1                                      mov r0, r4
0077d06c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0077d070  68 7a 21 00 a4 0f 00 00 6c f9 27 00              .byte 0x68, 0x7a, 0x21, 0x00, 0xa4, 0x0f, 0x00, 0x00, 0x6c, 0xf9, 0x27, 0x00
