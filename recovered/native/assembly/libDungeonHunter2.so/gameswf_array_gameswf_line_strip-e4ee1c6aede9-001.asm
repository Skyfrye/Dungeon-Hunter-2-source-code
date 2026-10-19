; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00779d74, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::line_strip*>
; alias: _ZN7gameswf5arrayIPNS_10line_stripEE7reserveEi
; demangled: gameswf::array<gameswf::line_strip*>::reserve(int)
; decoder-mode: arm
00779d74  10 40 2d e9                                      push {r4, lr}
00779d78  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00779d7c  00 40 a0 e1                                      mov r4, r0
00779d80  00 00 53 e3                                      cmp r3, #0
00779d84  0f 00 00 1a                                      bne #0x779dc8
00779d88  00 00 51 e3                                      cmp r1, #0
00779d8c  08 20 90 e5                                      ldr r2, [r0, #8]
00779d90  08 10 80 e5                                      str r1, [r0, #8]
00779d94  0c 00 00 1a                                      bne #0x779dcc
00779d98  00 00 90 e5                                      ldr r0, [r0]
00779d9c  00 00 50 e3                                      cmp r0, #0
00779da0  01 00 00 0a                                      beq #0x779dac
00779da4  02 11 a0 e1                                      lsl r1, r2, #2
00779da8  62 63 ff eb                                      bl #0x752b38
00779dac  00 30 a0 e3                                      mov r3, #0
00779db0  00 30 84 e5                                      str r3, [r4]
00779db4  10 80 bd e8                                      pop {r4, pc}
00779db8  01 01 a0 e1                                      lsl r0, r1, #2
00779dbc  0c 10 a0 e1                                      mov r1, ip
00779dc0  75 63 ff eb                                      bl #0x752b9c
00779dc4  00 00 84 e5                                      str r0, [r4]
00779dc8  10 80 bd e8                                      pop {r4, pc}
00779dcc  00 c0 90 e5                                      ldr ip, [r0]
00779dd0  00 00 5c e3                                      cmp ip, #0
00779dd4  f7 ff ff 0a                                      beq #0x779db8
00779dd8  0c 00 a0 e1                                      mov r0, ip
00779ddc  01 11 a0 e1                                      lsl r1, r1, #2
00779de0  02 21 a0 e1                                      lsl r2, r2, #2
00779de4  70 63 ff eb                                      bl #0x752bac
00779de8  00 00 84 e5                                      str r0, [r4]
00779dec  10 80 bd e8                                      pop {r4, pc}
