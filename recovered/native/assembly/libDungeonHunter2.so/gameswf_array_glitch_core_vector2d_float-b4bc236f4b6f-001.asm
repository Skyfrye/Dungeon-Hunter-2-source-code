; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d4088, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<glitch::core::vector2d<float> >
; alias: _ZN7gameswf5arrayIN6glitch4core8vector2dIfEEE7reserveEi
; demangled: gameswf::array<glitch::core::vector2d<float> >::reserve(int)
; decoder-mode: arm
007d4088  10 40 2d e9                                      push {r4, lr}
007d408c  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007d4090  00 40 a0 e1                                      mov r4, r0
007d4094  00 00 53 e3                                      cmp r3, #0
007d4098  0f 00 00 1a                                      bne #0x7d40dc
007d409c  00 00 51 e3                                      cmp r1, #0
007d40a0  08 20 90 e5                                      ldr r2, [r0, #8]
007d40a4  08 10 80 e5                                      str r1, [r0, #8]
007d40a8  0c 00 00 1a                                      bne #0x7d40e0
007d40ac  00 00 90 e5                                      ldr r0, [r0]
007d40b0  00 00 50 e3                                      cmp r0, #0
007d40b4  01 00 00 0a                                      beq #0x7d40c0
007d40b8  82 11 a0 e1                                      lsl r1, r2, #3
007d40bc  9d fa fd eb                                      bl #0x752b38
007d40c0  00 30 a0 e3                                      mov r3, #0
007d40c4  00 30 84 e5                                      str r3, [r4]
007d40c8  10 80 bd e8                                      pop {r4, pc}
007d40cc  81 01 a0 e1                                      lsl r0, r1, #3
007d40d0  0c 10 a0 e1                                      mov r1, ip
007d40d4  b0 fa fd eb                                      bl #0x752b9c
007d40d8  00 00 84 e5                                      str r0, [r4]
007d40dc  10 80 bd e8                                      pop {r4, pc}
007d40e0  00 c0 90 e5                                      ldr ip, [r0]
007d40e4  00 00 5c e3                                      cmp ip, #0
007d40e8  f7 ff ff 0a                                      beq #0x7d40cc
007d40ec  0c 00 a0 e1                                      mov r0, ip
007d40f0  81 11 a0 e1                                      lsl r1, r1, #3
007d40f4  82 21 a0 e1                                      lsl r2, r2, #3
007d40f8  ab fa fd eb                                      bl #0x752bac
007d40fc  00 00 84 e5                                      str r0, [r4]
007d4100  10 80 bd e8                                      pop {r4, pc}
