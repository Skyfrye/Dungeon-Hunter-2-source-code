; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00779e7c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<unsigned short>
; alias: _ZN7gameswf5arrayItE7reserveEi
; demangled: gameswf::array<unsigned short>::reserve(int)
; decoder-mode: arm
00779e7c  10 40 2d e9                                      push {r4, lr}
00779e80  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00779e84  00 40 a0 e1                                      mov r4, r0
00779e88  00 00 53 e3                                      cmp r3, #0
00779e8c  0f 00 00 1a                                      bne #0x779ed0
00779e90  00 00 51 e3                                      cmp r1, #0
00779e94  08 20 90 e5                                      ldr r2, [r0, #8]
00779e98  08 10 80 e5                                      str r1, [r0, #8]
00779e9c  0c 00 00 1a                                      bne #0x779ed4
00779ea0  00 00 90 e5                                      ldr r0, [r0]
00779ea4  00 00 50 e3                                      cmp r0, #0
00779ea8  01 00 00 0a                                      beq #0x779eb4
00779eac  82 10 a0 e1                                      lsl r1, r2, #1
00779eb0  20 63 ff eb                                      bl #0x752b38
00779eb4  00 30 a0 e3                                      mov r3, #0
00779eb8  00 30 84 e5                                      str r3, [r4]
00779ebc  10 80 bd e8                                      pop {r4, pc}
00779ec0  81 00 a0 e1                                      lsl r0, r1, #1
00779ec4  0c 10 a0 e1                                      mov r1, ip
00779ec8  33 63 ff eb                                      bl #0x752b9c
00779ecc  00 00 84 e5                                      str r0, [r4]
00779ed0  10 80 bd e8                                      pop {r4, pc}
00779ed4  00 c0 90 e5                                      ldr ip, [r0]
00779ed8  00 00 5c e3                                      cmp ip, #0
00779edc  f7 ff ff 0a                                      beq #0x779ec0
00779ee0  0c 00 a0 e1                                      mov r0, ip
00779ee4  81 10 a0 e1                                      lsl r1, r1, #1
00779ee8  82 20 a0 e1                                      lsl r2, r2, #1
00779eec  2e 63 ff eb                                      bl #0x752bac
00779ef0  00 00 84 e5                                      str r0, [r4]
00779ef4  10 80 bd e8                                      pop {r4, pc}
