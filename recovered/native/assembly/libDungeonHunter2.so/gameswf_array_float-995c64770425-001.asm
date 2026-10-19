; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00779df0, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<float>
; alias: _ZN7gameswf5arrayIfE7reserveEi
; demangled: gameswf::array<float>::reserve(int)
; decoder-mode: arm
00779df0  10 40 2d e9                                      push {r4, lr}
00779df4  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00779df8  00 40 a0 e1                                      mov r4, r0
00779dfc  00 00 53 e3                                      cmp r3, #0
00779e00  0f 00 00 1a                                      bne #0x779e44
00779e04  00 00 51 e3                                      cmp r1, #0
00779e08  08 20 90 e5                                      ldr r2, [r0, #8]
00779e0c  08 10 80 e5                                      str r1, [r0, #8]
00779e10  0c 00 00 1a                                      bne #0x779e48
00779e14  00 00 90 e5                                      ldr r0, [r0]
00779e18  00 00 50 e3                                      cmp r0, #0
00779e1c  01 00 00 0a                                      beq #0x779e28
00779e20  02 11 a0 e1                                      lsl r1, r2, #2
00779e24  43 63 ff eb                                      bl #0x752b38
00779e28  00 30 a0 e3                                      mov r3, #0
00779e2c  00 30 84 e5                                      str r3, [r4]
00779e30  10 80 bd e8                                      pop {r4, pc}
00779e34  01 01 a0 e1                                      lsl r0, r1, #2
00779e38  0c 10 a0 e1                                      mov r1, ip
00779e3c  56 63 ff eb                                      bl #0x752b9c
00779e40  00 00 84 e5                                      str r0, [r4]
00779e44  10 80 bd e8                                      pop {r4, pc}
00779e48  00 c0 90 e5                                      ldr ip, [r0]
00779e4c  00 00 5c e3                                      cmp ip, #0
00779e50  f7 ff ff 0a                                      beq #0x779e34
00779e54  0c 00 a0 e1                                      mov r0, ip
00779e58  01 11 a0 e1                                      lsl r1, r1, #2
00779e5c  02 21 a0 e1                                      lsl r2, r2, #2
00779e60  51 63 ff eb                                      bl #0x752bac
00779e64  00 00 84 e5                                      str r0, [r4]
00779e68  10 80 bd e8                                      pop {r4, pc}
