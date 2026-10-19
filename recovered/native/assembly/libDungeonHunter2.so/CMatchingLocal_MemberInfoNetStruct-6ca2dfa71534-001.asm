; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00806258, declared_size=120, range_size=120, mode=arm
; class-group: CMatchingLocal::MemberInfoNetStruct
; alias: _ZN14CMatchingLocal19MemberInfoNetStructD1Ev
; demangled: CMatchingLocal::MemberInfoNetStruct::~MemberInfoNetStruct()
; decoder-mode: arm
00806258  70 40 2d e9                                      push {r4, r5, r6, lr}
0080625c  60 30 9f e5                                      ldr r3, [pc, #0x60]
00806260  60 20 9f e5                                      ldr r2, [pc, #0x60]
00806264  60 10 9f e5                                      ldr r1, [pc, #0x60]
00806268  03 30 8f e0                                      add r3, pc, r3
0080626c  00 40 a0 e1                                      mov r4, r0
00806270  01 10 93 e7                                      ldr r1, [r3, r1]
00806274  1c 01 90 e5                                      ldr r0, [r0, #0x11c]
00806278  02 20 93 e7                                      ldr r2, [r3, r2]
0080627c  08 10 81 e2                                      add r1, r1, #8
00806280  00 00 50 e3                                      cmp r0, #0
00806284  08 20 82 e2                                      add r2, r2, #8
00806288  30 21 84 e5                                      str r2, [r4, #0x130]
0080628c  00 10 84 e5                                      str r1, [r4]
00806290  58 21 84 e5                                      str r2, [r4, #0x158]
00806294  08 00 00 0a                                      beq #0x8062bc
00806298  43 5f 84 e2                                      add r5, r4, #0x10c
0080629c  05 00 a0 e1                                      mov r0, r5
008062a0  10 11 94 e5                                      ldr r1, [r4, #0x110]
008062a4  49 ab ed eb                                      bl #0x370fd0
008062a8  00 30 a0 e3                                      mov r3, #0
008062ac  18 51 84 e5                                      str r5, [r4, #0x118]
008062b0  1c 31 84 e5                                      str r3, [r4, #0x11c]
008062b4  14 51 84 e5                                      str r5, [r4, #0x114]
008062b8  10 31 84 e5                                      str r3, [r4, #0x110]
008062bc  04 00 a0 e1                                      mov r0, r4
008062c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008062c4  28 e8 18 00 a8 10 00 00 c4 43 00 00              .byte 0x28, 0xe8, 0x18, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x00806344, declared_size=128, range_size=128, mode=arm
; class-group: CMatchingLocal::MemberInfoNetStruct
; alias: _ZN14CMatchingLocal19MemberInfoNetStructD0Ev
; demangled: CMatchingLocal::MemberInfoNetStruct::~MemberInfoNetStruct()
; decoder-mode: arm
00806344  70 40 2d e9                                      push {r4, r5, r6, lr}
00806348  68 30 9f e5                                      ldr r3, [pc, #0x68]
0080634c  68 20 9f e5                                      ldr r2, [pc, #0x68]
00806350  68 10 9f e5                                      ldr r1, [pc, #0x68]
00806354  03 30 8f e0                                      add r3, pc, r3
00806358  00 40 a0 e1                                      mov r4, r0
0080635c  01 10 93 e7                                      ldr r1, [r3, r1]
00806360  1c 01 90 e5                                      ldr r0, [r0, #0x11c]
00806364  02 20 93 e7                                      ldr r2, [r3, r2]
00806368  08 10 81 e2                                      add r1, r1, #8
0080636c  00 00 50 e3                                      cmp r0, #0
00806370  08 20 82 e2                                      add r2, r2, #8
00806374  30 21 84 e5                                      str r2, [r4, #0x130]
00806378  00 10 84 e5                                      str r1, [r4]
0080637c  58 21 84 e5                                      str r2, [r4, #0x158]
00806380  08 00 00 0a                                      beq #0x8063a8
00806384  43 5f 84 e2                                      add r5, r4, #0x10c
00806388  05 00 a0 e1                                      mov r0, r5
0080638c  10 11 94 e5                                      ldr r1, [r4, #0x110]
00806390  0e ab ed eb                                      bl #0x370fd0
00806394  00 30 a0 e3                                      mov r3, #0
00806398  18 51 84 e5                                      str r5, [r4, #0x118]
0080639c  1c 31 84 e5                                      str r3, [r4, #0x11c]
008063a0  14 51 84 e5                                      str r5, [r4, #0x114]
008063a4  10 31 84 e5                                      str r3, [r4, #0x110]
008063a8  04 00 a0 e1                                      mov r0, r4
008063ac  23 28 ec eb                                      bl #0x310440
008063b0  04 00 a0 e1                                      mov r0, r4
008063b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008063b8  3c e7 18 00 a8 10 00 00 c4 43 00 00              .byte 0x3c, 0xe7, 0x18, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x00806b98, declared_size=276, range_size=276, mode=arm
; class-group: CMatchingLocal::MemberInfoNetStruct
; alias: _ZN14CMatchingLocal19MemberInfoNetStructC1Ev
; demangled: CMatchingLocal::MemberInfoNetStruct::MemberInfoNetStruct()
; decoder-mode: arm
00806b98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00806b9c  f4 50 9f e5                                      ldr r5, [pc, #0xf4]
00806ba0  38 d0 4d e2                                      sub sp, sp, #0x38
00806ba4  00 40 a0 e1                                      mov r4, r0
00806ba8  51 33 00 eb                                      bl #0x8138f4
00806bac  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
00806bb0  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
00806bb4  05 50 8f e0                                      add r5, pc, r5
00806bb8  02 20 95 e7                                      ldr r2, [r5, r2]
00806bbc  50 11 94 e5                                      ldr r1, [r4, #0x150]
00806bc0  03 30 95 e7                                      ldr r3, [r5, r3]
00806bc4  08 20 82 e2                                      add r2, r2, #8
00806bc8  00 70 a0 e3                                      mov r7, #0
00806bcc  00 60 a0 e3                                      mov r6, #0
00806bd0  4e cf a0 e3                                      mov ip, #0x138
00806bd4  fc 60 84 e1                                      strd r6, r7, [r4, ip]
00806bd8  00 00 51 e3                                      cmp r1, #0
00806bdc  00 00 e0 e3                                      mvn r0, #0
00806be0  00 10 a0 e3                                      mov r1, #0
00806be4  08 30 83 e2                                      add r3, r3, #8
00806be8  00 20 84 e5                                      str r2, [r4]
00806bec  20 20 a0 e3                                      mov r2, #0x20
00806bf0  34 21 84 e5                                      str r2, [r4, #0x134]
00806bf4  44 01 84 e5                                      str r0, [r4, #0x144]
00806bf8  30 31 84 e5                                      str r3, [r4, #0x130]
00806bfc  40 01 84 e5                                      str r0, [r4, #0x140]
00806c00  48 11 84 e5                                      str r1, [r4, #0x148]
00806c04  4c 11 c4 e5                                      strb r1, [r4, #0x14c]
00806c08  13 7e 84 02                                      addeq r7, r4, #0x130
00806c0c  03 00 00 0a                                      beq #0x806c20
00806c10  13 7e 84 e2                                      add r7, r4, #0x130
00806c14  50 11 84 e5                                      str r1, [r4, #0x150]
00806c18  07 00 a0 e1                                      mov r0, r7
00806c1c  d8 38 00 eb                                      bl #0x814f84
00806c20  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00806c24  1c 80 8d e2                                      add r8, sp, #0x1c
00806c28  08 00 a0 e1                                      mov r0, r8
00806c2c  03 30 95 e7                                      ldr r3, [r5, r3]
00806c30  56 6f 84 e2                                      add r6, r4, #0x158
00806c34  08 30 83 e2                                      add r3, r3, #8
00806c38  30 31 84 e5                                      str r3, [r4, #0x130]
00806c3c  d0 d5 ff eb                                      bl #0x7fc384
00806c40  08 e0 a0 e1                                      mov lr, r8
00806c44  0d c0 a0 e1                                      mov ip, sp
00806c48  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00806c4c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00806c50  07 00 9e e8                                      ldm lr, {r0, r1, r2}
00806c54  07 00 8c e8                                      stm ip, {r0, r1, r2}
00806c58  0d 10 a0 e1                                      mov r1, sp
00806c5c  06 00 a0 e1                                      mov r0, r6
00806c60  1a fd ff eb                                      bl #0x8060d0
00806c64  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00806c68  07 10 a0 e1                                      mov r1, r7
00806c6c  04 00 a0 e1                                      mov r0, r4
00806c70  03 30 95 e7                                      ldr r3, [r5, r3]
00806c74  08 30 83 e2                                      add r3, r3, #8
00806c78  58 31 84 e5                                      str r3, [r4, #0x158]
00806c7c  72 31 00 eb                                      bl #0x81324c
00806c80  04 00 a0 e1                                      mov r0, r4
00806c84  06 10 a0 e1                                      mov r1, r6
00806c88  6f 31 00 eb                                      bl #0x81324c
00806c8c  04 00 a0 e1                                      mov r0, r4
00806c90  38 d0 8d e2                                      add sp, sp, #0x38
00806c94  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00806c98  dc de 18 00 c4 3f 00 00 84 29 00 00 c8 10 00 00  .byte 0xdc, 0xde, 0x18, 0x00, 0xc4, 0x3f, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00
00806ca8  f0 28 00 00                                      .byte 0xf0, 0x28, 0x00, 0x00
