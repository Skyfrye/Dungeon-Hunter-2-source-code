; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007799e8, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::mesh_set*>
; alias: _ZN7gameswf5arrayIPNS_8mesh_setEE7reserveEi
; demangled: gameswf::array<gameswf::mesh_set*>::reserve(int)
; decoder-mode: arm
007799e8  10 40 2d e9                                      push {r4, lr}
007799ec  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007799f0  00 40 a0 e1                                      mov r4, r0
007799f4  00 00 53 e3                                      cmp r3, #0
007799f8  0f 00 00 1a                                      bne #0x779a3c
007799fc  00 00 51 e3                                      cmp r1, #0
00779a00  08 20 90 e5                                      ldr r2, [r0, #8]
00779a04  08 10 80 e5                                      str r1, [r0, #8]
00779a08  0c 00 00 1a                                      bne #0x779a40
00779a0c  00 00 90 e5                                      ldr r0, [r0]
00779a10  00 00 50 e3                                      cmp r0, #0
00779a14  01 00 00 0a                                      beq #0x779a20
00779a18  02 11 a0 e1                                      lsl r1, r2, #2
00779a1c  45 64 ff eb                                      bl #0x752b38
00779a20  00 30 a0 e3                                      mov r3, #0
00779a24  00 30 84 e5                                      str r3, [r4]
00779a28  10 80 bd e8                                      pop {r4, pc}
00779a2c  01 01 a0 e1                                      lsl r0, r1, #2
00779a30  0c 10 a0 e1                                      mov r1, ip
00779a34  58 64 ff eb                                      bl #0x752b9c
00779a38  00 00 84 e5                                      str r0, [r4]
00779a3c  10 80 bd e8                                      pop {r4, pc}
00779a40  00 c0 90 e5                                      ldr ip, [r0]
00779a44  00 00 5c e3                                      cmp ip, #0
00779a48  f7 ff ff 0a                                      beq #0x779a2c
00779a4c  0c 00 a0 e1                                      mov r0, ip
00779a50  01 11 a0 e1                                      lsl r1, r1, #2
00779a54  02 21 a0 e1                                      lsl r2, r2, #2
00779a58  53 64 ff eb                                      bl #0x752bac
00779a5c  00 00 84 e5                                      str r0, [r4]
00779a60  10 80 bd e8                                      pop {r4, pc}
