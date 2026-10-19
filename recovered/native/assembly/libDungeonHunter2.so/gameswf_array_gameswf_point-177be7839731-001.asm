; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0078560c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::point>
; alias: _ZN7gameswf5arrayINS_5pointEE7reserveEi
; demangled: gameswf::array<gameswf::point>::reserve(int)
; decoder-mode: arm
0078560c  10 40 2d e9                                      push {r4, lr}
00785610  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00785614  00 40 a0 e1                                      mov r4, r0
00785618  00 00 53 e3                                      cmp r3, #0
0078561c  0f 00 00 1a                                      bne #0x785660
00785620  00 00 51 e3                                      cmp r1, #0
00785624  08 20 90 e5                                      ldr r2, [r0, #8]
00785628  08 10 80 e5                                      str r1, [r0, #8]
0078562c  0c 00 00 1a                                      bne #0x785664
00785630  00 00 90 e5                                      ldr r0, [r0]
00785634  00 00 50 e3                                      cmp r0, #0
00785638  01 00 00 0a                                      beq #0x785644
0078563c  82 11 a0 e1                                      lsl r1, r2, #3
00785640  3c 35 ff eb                                      bl #0x752b38
00785644  00 30 a0 e3                                      mov r3, #0
00785648  00 30 84 e5                                      str r3, [r4]
0078564c  10 80 bd e8                                      pop {r4, pc}
00785650  81 01 a0 e1                                      lsl r0, r1, #3
00785654  0c 10 a0 e1                                      mov r1, ip
00785658  4f 35 ff eb                                      bl #0x752b9c
0078565c  00 00 84 e5                                      str r0, [r4]
00785660  10 80 bd e8                                      pop {r4, pc}
00785664  00 c0 90 e5                                      ldr ip, [r0]
00785668  00 00 5c e3                                      cmp ip, #0
0078566c  f7 ff ff 0a                                      beq #0x785650
00785670  0c 00 a0 e1                                      mov r0, ip
00785674  81 11 a0 e1                                      lsl r1, r1, #3
00785678  82 21 a0 e1                                      lsl r2, r2, #3
0078567c  4a 35 ff eb                                      bl #0x752bac
00785680  00 00 84 e5                                      str r0, [r4]
00785684  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00787e80, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::array<gameswf::point>
; alias: _ZN7gameswf5arrayINS_5pointEED1Ev
; demangled: gameswf::array<gameswf::point>::~array()
; decoder-mode: arm
00787e80  10 40 2d e9                                      push {r4, lr}
00787e84  04 20 90 e5                                      ldr r2, [r0, #4]
00787e88  00 40 a0 e1                                      mov r4, r0
00787e8c  00 00 52 e3                                      cmp r2, #0
00787e90  05 00 00 da                                      ble #0x787eac
00787e94  00 10 a0 e3                                      mov r1, #0
00787e98  04 00 a0 e1                                      mov r0, r4
00787e9c  04 10 84 e5                                      str r1, [r4, #4]
00787ea0  d9 f5 ff eb                                      bl #0x78560c
00787ea4  04 00 a0 e1                                      mov r0, r4
00787ea8  10 80 bd e8                                      pop {r4, pc}
00787eac  f8 ff ff aa                                      bge #0x787e94
00787eb0  00 00 a0 e3                                      mov r0, #0
00787eb4  82 31 a0 e1                                      lsl r3, r2, #3
00787eb8  00 10 94 e5                                      ldr r1, [r4]
00787ebc  01 20 92 e2                                      adds r2, r2, #1
00787ec0  03 c0 81 e0                                      add ip, r1, r3
00787ec4  03 00 81 e7                                      str r0, [r1, r3]
00787ec8  04 00 8c e5                                      str r0, [ip, #4]
00787ecc  08 30 83 e2                                      add r3, r3, #8
00787ed0  f8 ff ff 1a                                      bne #0x787eb8
00787ed4  00 10 a0 e3                                      mov r1, #0
00787ed8  04 00 a0 e1                                      mov r0, r4
00787edc  04 10 84 e5                                      str r1, [r4, #4]
00787ee0  c9 f5 ff eb                                      bl #0x78560c
00787ee4  04 00 a0 e1                                      mov r0, r4
00787ee8  10 80 bd e8                                      pop {r4, pc}
