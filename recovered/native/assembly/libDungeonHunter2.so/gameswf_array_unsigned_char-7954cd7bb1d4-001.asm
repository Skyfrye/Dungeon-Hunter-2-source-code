; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075722c, declared_size=116, range_size=116, mode=arm
; class-group: gameswf::array<unsigned char>
; alias: _ZN7gameswf5arrayIhE7reserveEi
; demangled: gameswf::array<unsigned char>::reserve(int)
; decoder-mode: arm
0075722c  10 40 2d e9                                      push {r4, lr}
00757230  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00757234  00 40 a0 e1                                      mov r4, r0
00757238  00 00 53 e3                                      cmp r3, #0
0075723c  0f 00 00 1a                                      bne #0x757280
00757240  00 00 51 e3                                      cmp r1, #0
00757244  08 20 90 e5                                      ldr r2, [r0, #8]
00757248  08 10 84 e5                                      str r1, [r4, #8]
0075724c  0c 00 00 1a                                      bne #0x757284
00757250  00 00 90 e5                                      ldr r0, [r0]
00757254  00 00 50 e3                                      cmp r0, #0
00757258  01 00 00 0a                                      beq #0x757264
0075725c  02 10 a0 e1                                      mov r1, r2
00757260  34 ee ff eb                                      bl #0x752b38
00757264  00 30 a0 e3                                      mov r3, #0
00757268  00 30 84 e5                                      str r3, [r4]
0075726c  10 80 bd e8                                      pop {r4, pc}
00757270  01 00 a0 e1                                      mov r0, r1
00757274  0e 10 a0 e1                                      mov r1, lr
00757278  47 ee ff eb                                      bl #0x752b9c
0075727c  00 00 84 e5                                      str r0, [r4]
00757280  10 80 bd e8                                      pop {r4, pc}
00757284  00 e0 90 e5                                      ldr lr, [r0]
00757288  00 00 5e e3                                      cmp lr, #0
0075728c  f7 ff ff 0a                                      beq #0x757270
00757290  0e 00 a0 e1                                      mov r0, lr
00757294  44 ee ff eb                                      bl #0x752bac
00757298  00 00 84 e5                                      str r0, [r4]
0075729c  10 80 bd e8                                      pop {r4, pc}
