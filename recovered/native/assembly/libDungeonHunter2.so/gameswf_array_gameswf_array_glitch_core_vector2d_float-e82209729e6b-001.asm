; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d4104, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::array<glitch::core::vector2d<float> > >
; alias: _ZN7gameswf5arrayINS0_IN6glitch4core8vector2dIfEEEEE7reserveEi
; demangled: gameswf::array<gameswf::array<glitch::core::vector2d<float> > >::reserve(int)
; decoder-mode: arm
007d4104  10 40 2d e9                                      push {r4, lr}
007d4108  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007d410c  00 40 a0 e1                                      mov r4, r0
007d4110  00 00 53 e3                                      cmp r3, #0
007d4114  0f 00 00 1a                                      bne #0x7d4158
007d4118  00 00 51 e3                                      cmp r1, #0
007d411c  08 20 90 e5                                      ldr r2, [r0, #8]
007d4120  08 10 80 e5                                      str r1, [r0, #8]
007d4124  0c 00 00 1a                                      bne #0x7d415c
007d4128  00 00 90 e5                                      ldr r0, [r0]
007d412c  00 00 50 e3                                      cmp r0, #0
007d4130  01 00 00 0a                                      beq #0x7d413c
007d4134  02 12 a0 e1                                      lsl r1, r2, #4
007d4138  7e fa fd eb                                      bl #0x752b38
007d413c  00 30 a0 e3                                      mov r3, #0
007d4140  00 30 84 e5                                      str r3, [r4]
007d4144  10 80 bd e8                                      pop {r4, pc}
007d4148  01 02 a0 e1                                      lsl r0, r1, #4
007d414c  0c 10 a0 e1                                      mov r1, ip
007d4150  91 fa fd eb                                      bl #0x752b9c
007d4154  00 00 84 e5                                      str r0, [r4]
007d4158  10 80 bd e8                                      pop {r4, pc}
007d415c  00 c0 90 e5                                      ldr ip, [r0]
007d4160  00 00 5c e3                                      cmp ip, #0
007d4164  f7 ff ff 0a                                      beq #0x7d4148
007d4168  0c 00 a0 e1                                      mov r0, ip
007d416c  01 12 a0 e1                                      lsl r1, r1, #4
007d4170  02 22 a0 e1                                      lsl r2, r2, #4
007d4174  8c fa fd eb                                      bl #0x752bac
007d4178  00 00 84 e5                                      str r0, [r4]
007d417c  10 80 bd e8                                      pop {r4, pc}
