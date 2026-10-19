; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00779cf8, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::mesh*>
; alias: _ZN7gameswf5arrayIPNS_4meshEE7reserveEi
; demangled: gameswf::array<gameswf::mesh*>::reserve(int)
; decoder-mode: arm
00779cf8  10 40 2d e9                                      push {r4, lr}
00779cfc  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00779d00  00 40 a0 e1                                      mov r4, r0
00779d04  00 00 53 e3                                      cmp r3, #0
00779d08  0f 00 00 1a                                      bne #0x779d4c
00779d0c  00 00 51 e3                                      cmp r1, #0
00779d10  08 20 90 e5                                      ldr r2, [r0, #8]
00779d14  08 10 80 e5                                      str r1, [r0, #8]
00779d18  0c 00 00 1a                                      bne #0x779d50
00779d1c  00 00 90 e5                                      ldr r0, [r0]
00779d20  00 00 50 e3                                      cmp r0, #0
00779d24  01 00 00 0a                                      beq #0x779d30
00779d28  02 11 a0 e1                                      lsl r1, r2, #2
00779d2c  81 63 ff eb                                      bl #0x752b38
00779d30  00 30 a0 e3                                      mov r3, #0
00779d34  00 30 84 e5                                      str r3, [r4]
00779d38  10 80 bd e8                                      pop {r4, pc}
00779d3c  01 01 a0 e1                                      lsl r0, r1, #2
00779d40  0c 10 a0 e1                                      mov r1, ip
00779d44  94 63 ff eb                                      bl #0x752b9c
00779d48  00 00 84 e5                                      str r0, [r4]
00779d4c  10 80 bd e8                                      pop {r4, pc}
00779d50  00 c0 90 e5                                      ldr ip, [r0]
00779d54  00 00 5c e3                                      cmp ip, #0
00779d58  f7 ff ff 0a                                      beq #0x779d3c
00779d5c  0c 00 a0 e1                                      mov r0, ip
00779d60  01 11 a0 e1                                      lsl r1, r1, #2
00779d64  02 21 a0 e1                                      lsl r2, r2, #2
00779d68  8f 63 ff eb                                      bl #0x752bac
00779d6c  00 00 84 e5                                      str r0, [r4]
00779d70  10 80 bd e8                                      pop {r4, pc}
