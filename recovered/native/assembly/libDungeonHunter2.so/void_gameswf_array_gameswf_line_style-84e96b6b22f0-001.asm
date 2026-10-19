; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007619b8, declared_size=212, range_size=212, mode=arm
; class-group: void gameswf::array<gameswf::line_style>
; alias: _ZN7gameswf5arrayINS_10line_styleEE9push_backIS1_EEvRKT_
; demangled: void gameswf::array<gameswf::line_style>::push_back<gameswf::line_style>(gameswf::line_style const&)
; decoder-mode: arm
007619b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007619bc  04 30 90 e5                                      ldr r3, [r0, #4]
007619c0  08 20 90 e5                                      ldr r2, [r0, #8]
007619c4  b8 70 9f e5                                      ldr r7, [pc, #0xb8]
007619c8  01 80 83 e2                                      add r8, r3, #1
007619cc  02 00 58 e1                                      cmp r8, r2
007619d0  00 60 a0 e1                                      mov r6, r0
007619d4  07 70 8f e0                                      add r7, pc, r7
007619d8  01 50 a0 e1                                      mov r5, r1
007619dc  24 00 00 ca                                      bgt #0x761a74
007619e0  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
007619e4  6c 40 a0 e3                                      mov r4, #0x6c
007619e8  94 03 03 e0                                      mul r3, r4, r3
007619ec  02 20 97 e7                                      ldr r2, [r7, r2]
007619f0  00 40 96 e5                                      ldr r4, [r6]
007619f4  0c 10 85 e2                                      add r1, r5, #0xc
007619f8  08 20 82 e2                                      add r2, r2, #8
007619fc  03 20 84 e7                                      str r2, [r4, r3]
00761a00  03 40 84 e0                                      add r4, r4, r3
00761a04  b4 30 d5 e1                                      ldrh r3, [r5, #4]
00761a08  0c 00 84 e2                                      add r0, r4, #0xc
00761a0c  b4 30 c4 e1                                      strh r3, [r4, #4]
00761a10  b6 30 d5 e1                                      ldrh r3, [r5, #6]
00761a14  b6 30 c4 e1                                      strh r3, [r4, #6]
00761a18  b8 30 d5 e1                                      ldrh r3, [r5, #8]
00761a1c  b8 30 c4 e1                                      strh r3, [r4, #8]
00761a20  94 ff ff eb                                      bl #0x761878
00761a24  60 30 d5 e5                                      ldrb r3, [r5, #0x60]
00761a28  60 30 c4 e5                                      strb r3, [r4, #0x60]
00761a2c  61 30 d5 e5                                      ldrb r3, [r5, #0x61]
00761a30  61 30 c4 e5                                      strb r3, [r4, #0x61]
00761a34  62 30 d5 e5                                      ldrb r3, [r5, #0x62]
00761a38  62 30 c4 e5                                      strb r3, [r4, #0x62]
00761a3c  63 30 d5 e5                                      ldrb r3, [r5, #0x63]
00761a40  63 30 c4 e5                                      strb r3, [r4, #0x63]
00761a44  64 30 d5 e5                                      ldrb r3, [r5, #0x64]
00761a48  64 30 c4 e5                                      strb r3, [r4, #0x64]
00761a4c  65 30 d5 e5                                      ldrb r3, [r5, #0x65]
00761a50  65 30 c4 e5                                      strb r3, [r4, #0x65]
00761a54  66 30 d5 e5                                      ldrb r3, [r5, #0x66]
00761a58  66 30 c4 e5                                      strb r3, [r4, #0x66]
00761a5c  67 30 d5 e5                                      ldrb r3, [r5, #0x67]
00761a60  67 30 c4 e5                                      strb r3, [r4, #0x67]
00761a64  b8 56 d5 e1                                      ldrh r5, [r5, #0x68]
00761a68  b8 56 c4 e1                                      strh r5, [r4, #0x68]
00761a6c  04 80 86 e5                                      str r8, [r6, #4]
00761a70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00761a74  c8 10 88 e0                                      add r1, r8, r8, asr #1
00761a78  a3 fe ff eb                                      bl #0x76150c
00761a7c  04 30 96 e5                                      ldr r3, [r6, #4]
00761a80  d6 ff ff ea                                      b #0x7619e0
; mapping-symbol data/literal pool
00761a84  bc 30 23 00 30 25 00 00                          .byte 0xbc, 0x30, 0x23, 0x00, 0x30, 0x25, 0x00, 0x00
