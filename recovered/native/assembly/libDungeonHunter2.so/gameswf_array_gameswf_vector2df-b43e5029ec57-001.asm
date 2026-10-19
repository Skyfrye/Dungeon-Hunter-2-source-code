; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d4208, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::vector2df>
; alias: _ZN7gameswf5arrayINS_9vector2dfEE7reserveEi
; demangled: gameswf::array<gameswf::vector2df>::reserve(int)
; decoder-mode: arm
007d4208  10 40 2d e9                                      push {r4, lr}
007d420c  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007d4210  00 40 a0 e1                                      mov r4, r0
007d4214  00 00 53 e3                                      cmp r3, #0
007d4218  0f 00 00 1a                                      bne #0x7d425c
007d421c  00 00 51 e3                                      cmp r1, #0
007d4220  08 20 90 e5                                      ldr r2, [r0, #8]
007d4224  08 10 80 e5                                      str r1, [r0, #8]
007d4228  0c 00 00 1a                                      bne #0x7d4260
007d422c  00 00 90 e5                                      ldr r0, [r0]
007d4230  00 00 50 e3                                      cmp r0, #0
007d4234  01 00 00 0a                                      beq #0x7d4240
007d4238  82 11 a0 e1                                      lsl r1, r2, #3
007d423c  3d fa fd eb                                      bl #0x752b38
007d4240  00 30 a0 e3                                      mov r3, #0
007d4244  00 30 84 e5                                      str r3, [r4]
007d4248  10 80 bd e8                                      pop {r4, pc}
007d424c  81 01 a0 e1                                      lsl r0, r1, #3
007d4250  0c 10 a0 e1                                      mov r1, ip
007d4254  50 fa fd eb                                      bl #0x752b9c
007d4258  00 00 84 e5                                      str r0, [r4]
007d425c  10 80 bd e8                                      pop {r4, pc}
007d4260  00 c0 90 e5                                      ldr ip, [r0]
007d4264  00 00 5c e3                                      cmp ip, #0
007d4268  f7 ff ff 0a                                      beq #0x7d424c
007d426c  0c 00 a0 e1                                      mov r0, ip
007d4270  81 11 a0 e1                                      lsl r1, r1, #3
007d4274  82 21 a0 e1                                      lsl r2, r2, #3
007d4278  4b fa fd eb                                      bl #0x752bac
007d427c  00 00 84 e5                                      str r0, [r4]
007d4280  10 80 bd e8                                      pop {r4, pc}
