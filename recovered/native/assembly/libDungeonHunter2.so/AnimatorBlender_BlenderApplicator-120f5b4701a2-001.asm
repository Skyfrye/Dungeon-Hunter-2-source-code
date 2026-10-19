; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00366768, declared_size=52, range_size=52, mode=arm
; class-group: AnimatorBlender::BlenderApplicator
; alias: _ZN15AnimatorBlender17BlenderApplicatorD1Ev
; demangled: AnimatorBlender::BlenderApplicator::~BlenderApplicator()
; decoder-mode: arm
00366768  24 30 9f e5                                      ldr r3, [pc, #0x24]
0036676c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00366770  10 40 2d e9                                      push {r4, lr}
00366774  03 30 8f e0                                      add r3, pc, r3
00366778  02 20 93 e7                                      ldr r2, [r3, r2]
0036677c  00 40 a0 e1                                      mov r4, r0
00366780  08 20 82 e2                                      add r2, r2, #8
00366784  00 20 80 e5                                      str r2, [r0]
00366788  38 f8 ff eb                                      bl #0x364870
0036678c  04 00 a0 e1                                      mov r0, r4
00366790  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00366794  1c e3 62 00 e0 4a 00 00                          .byte 0x1c, 0xe3, 0x62, 0x00, 0xe0, 0x4a, 0x00, 0x00

; FUNCTION 0x00366888, declared_size=480, range_size=480, mode=arm
; class-group: AnimatorBlender::BlenderApplicator
; alias: _ZN15AnimatorBlender17BlenderApplicator11AnimateNodeEj
; demangled: AnimatorBlender::BlenderApplicator::AnimateNode(unsigned int)
; decoder-mode: arm
00366888  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0036688c  00 40 a0 e1                                      mov r4, r0
00366890  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00366894  b4 01 9f e5                                      ldr r0, [pc, #0x1b4]
00366898  3c d0 4d e2                                      sub sp, sp, #0x3c
0036689c  00 30 a0 e3                                      mov r3, #0
003668a0  00 00 8f e0                                      add r0, pc, r0
003668a4  01 00 72 e3                                      cmn r2, #1
003668a8  2c 30 84 e5                                      str r3, [r4, #0x2c]
003668ac  10 00 8d e5                                      str r0, [sp, #0x10]
003668b0  0c 10 8d e5                                      str r1, [sp, #0xc]
003668b4  2c 30 8d e5                                      str r3, [sp, #0x2c]
003668b8  30 30 8d e5                                      str r3, [sp, #0x30]
003668bc  34 30 8d e5                                      str r3, [sp, #0x34]
003668c0  24 30 84 e5                                      str r3, [r4, #0x24]
003668c4  28 30 84 e5                                      str r3, [r4, #0x28]
003668c8  5e 00 00 0a                                      beq #0x366a48
003668cc  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003668d0  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
003668d4  28 20 93 e5                                      ldr r2, [r3, #0x28]
003668d8  01 30 62 e0                                      rsb r3, r2, r1
003668dc  03 00 53 e3                                      cmp r3, #3
003668e0  58 00 00 da                                      ble #0x366a48
003668e4  68 31 9f e5                                      ldr r3, [pc, #0x168]
003668e8  68 11 9f e5                                      ldr r1, [pc, #0x168]
003668ec  00 60 a0 e3                                      mov r6, #0
003668f0  18 30 8d e5                                      str r3, [sp, #0x18]
003668f4  60 31 9f e5                                      ldr r3, [pc, #0x160]
003668f8  14 10 8d e5                                      str r1, [sp, #0x14]
003668fc  2c 70 8d e2                                      add r7, sp, #0x2c
00366900  03 30 8f e0                                      add r3, pc, r3
00366904  1c 30 8d e5                                      str r3, [sp, #0x1c]
00366908  50 31 9f e5                                      ldr r3, [pc, #0x150]
0036690c  03 30 8f e0                                      add r3, pc, r3
00366910  20 30 8d e5                                      str r3, [sp, #0x20]
00366914  48 31 9f e5                                      ldr r3, [pc, #0x148]
00366918  03 30 8f e0                                      add r3, pc, r3
0036691c  24 30 8d e5                                      str r3, [sp, #0x24]
00366920  23 00 00 ea                                      b #0x3669b4
00366924  07 20 a0 e1                                      mov r2, r7
00366928  05 00 a0 e1                                      mov r0, r5
0036692c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00366930  c3 f6 ff eb                                      bl #0x364444
00366934  3c a0 94 e5                                      ldr sl, [r4, #0x3c]
00366938  28 10 95 e5                                      ldr r1, [r5, #0x28]
0036693c  01 60 86 e2                                      add r6, r6, #1
00366940  34 30 9a e5                                      ldr r3, [sl, #0x34]
00366944  08 80 93 e7                                      ldr r8, [r3, r8]
00366948  08 00 a0 e1                                      mov r0, r8
0036694c  06 a1 fe eb                                      bl #0x30ed6c
00366950  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
00366954  00 b0 a0 e1                                      mov fp, r0
00366958  08 00 a0 e1                                      mov r0, r8
0036695c  02 a1 fe eb                                      bl #0x30ed6c
00366960  24 10 95 e5                                      ldr r1, [r5, #0x24]
00366964  00 90 a0 e1                                      mov sb, r0
00366968  08 00 a0 e1                                      mov r0, r8
0036696c  fe a0 fe eb                                      bl #0x30ed6c
00366970  00 10 a0 e1                                      mov r1, r0
00366974  24 00 94 e5                                      ldr r0, [r4, #0x24]
00366978  89 a0 fe eb                                      bl #0x30eba4
0036697c  0b 10 a0 e1                                      mov r1, fp
00366980  24 00 84 e5                                      str r0, [r4, #0x24]
00366984  28 00 94 e5                                      ldr r0, [r4, #0x28]
00366988  85 a0 fe eb                                      bl #0x30eba4
0036698c  09 10 a0 e1                                      mov r1, sb
00366990  28 00 84 e5                                      str r0, [r4, #0x28]
00366994  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00366998  81 a0 fe eb                                      bl #0x30eba4
0036699c  2c 00 84 e5                                      str r0, [r4, #0x2c]
003669a0  2c 30 9a e5                                      ldr r3, [sl, #0x2c]
003669a4  28 20 9a e5                                      ldr r2, [sl, #0x28]
003669a8  03 30 62 e0                                      rsb r3, r2, r3
003669ac  43 01 56 e1                                      cmp r6, r3, asr #2
003669b0  24 00 00 aa                                      bge #0x366a48
003669b4  06 51 92 e7                                      ldr r5, [r2, r6, lsl #2]
003669b8  06 81 a0 e1                                      lsl r8, r6, #2
003669bc  00 30 95 e5                                      ldr r3, [r5]
003669c0  05 00 a0 e1                                      mov r0, r5
003669c4  0f e0 a0 e1                                      mov lr, pc
003669c8  44 f0 93 e5                                      ldr pc, [r3, #0x44]
003669cc  00 c0 95 e5                                      ldr ip, [r5]
003669d0  04 20 90 e5                                      ldr r2, [r0, #4]
003669d4  07 30 a0 e1                                      mov r3, r7
003669d8  05 00 a0 e1                                      mov r0, r5
003669dc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003669e0  0f e0 a0 e1                                      mov lr, pc
003669e4  7c f0 9c e5                                      ldr pc, [ip, #0x7c]
003669e8  05 00 a0 e1                                      mov r0, r5
003669ec  db 09 00 eb                                      bl #0x369160
003669f0  00 50 50 e2                                      subs r5, r0, #0
003669f4  ca ff ff 1a                                      bne #0x366924
003669f8  10 00 9d e5                                      ldr r0, [sp, #0x10]
003669fc  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00366a00  0c 30 90 e7                                      ldr r3, [r0, ip]
00366a04  00 30 93 e5                                      ldr r3, [r3]
00366a08  02 00 53 e3                                      cmp r3, #2
00366a0c  00 50 85 05                                      streq r5, [r5]
00366a10  c3 ff ff 0a                                      beq #0x366924
00366a14  01 00 53 e3                                      cmp r3, #1
00366a18  c1 ff ff 1a                                      bne #0x366924
00366a1c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00366a20  18 10 9d e5                                      ldr r1, [sp, #0x18]
00366a24  8a c1 00 e3                                      movw ip, #0x18a
00366a28  24 30 9d e5                                      ldr r3, [sp, #0x24]
00366a2c  01 00 92 e7                                      ldr r0, [r2, r1]
00366a30  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00366a34  20 20 9d e5                                      ldr r2, [sp, #0x20]
00366a38  a8 00 80 e2                                      add r0, r0, #0xa8
00366a3c  00 c0 8d e5                                      str ip, [sp]
00366a40  6f 9d fe eb                                      bl #0x30e004
00366a44  b6 ff ff ea                                      b #0x366924
00366a48  3c d0 8d e2                                      add sp, sp, #0x3c
00366a4c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00366a50  f0 e1 62 00 c0 19 00 00 c0 39 00 00 d8 7a 55 00  .byte 0xf0, 0xe1, 0x62, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xd8, 0x7a, 0x55, 0x00
00366a60  1c 6a 57 00 e0 a4 55 00                          .byte 0x1c, 0x6a, 0x57, 0x00, 0xe0, 0xa4, 0x55, 0x00

; FUNCTION 0x00366a68, declared_size=280, range_size=280, mode=arm
; class-group: AnimatorBlender::BlenderApplicator
; alias: _ZN15AnimatorBlender17BlenderApplicator10ResetDeltaEj
; demangled: AnimatorBlender::BlenderApplicator::ResetDelta(unsigned int)
; decoder-mode: arm
00366a68  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00366a6c  08 30 90 e5                                      ldr r3, [r0, #8]
00366a70  f0 a0 9f e5                                      ldr sl, [pc, #0xf0]
00366a74  1c d0 4d e2                                      sub sp, sp, #0x1c
00366a78  00 00 53 e3                                      cmp r3, #0
00366a7c  00 50 a0 e1                                      mov r5, r0
00366a80  01 70 a0 e1                                      mov r7, r1
00366a84  0a a0 8f e0                                      add sl, pc, sl
00366a88  1f 00 00 0a                                      beq #0x366b0c
00366a8c  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00366a90  28 20 93 e5                                      ldr r2, [r3, #0x28]
00366a94  70 30 93 e5                                      ldr r3, [r3, #0x70]
00366a98  03 41 92 e7                                      ldr r4, [r2, r3, lsl #2]
00366a9c  00 30 94 e5                                      ldr r3, [r4]
00366aa0  04 00 a0 e1                                      mov r0, r4
00366aa4  0f e0 a0 e1                                      mov lr, pc
00366aa8  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00366aac  00 80 a0 e1                                      mov r8, r0
00366ab0  04 00 a0 e1                                      mov r0, r4
00366ab4  a9 09 00 eb                                      bl #0x369160
00366ab8  00 60 50 e2                                      subs r6, r0, #0
00366abc  14 00 00 0a                                      beq #0x366b14
00366ac0  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00366ac4  00 30 a0 e3                                      mov r3, #0
00366ac8  14 30 8d e5                                      str r3, [sp, #0x14]
00366acc  01 00 71 e3                                      cmn r1, #1
00366ad0  0c 30 8d e5                                      str r3, [sp, #0xc]
00366ad4  10 30 8d e5                                      str r3, [sp, #0x10]
00366ad8  05 00 00 0a                                      beq #0x366af4
00366adc  04 00 a0 e1                                      mov r0, r4
00366ae0  10 20 98 e5                                      ldr r2, [r8, #0x10]
00366ae4  00 c0 94 e5                                      ldr ip, [r4]
00366ae8  0c 30 8d e2                                      add r3, sp, #0xc
00366aec  0f e0 a0 e1                                      mov lr, pc
00366af0  7c f0 9c e5                                      ldr pc, [ip, #0x7c]
00366af4  00 00 56 e3                                      cmp r6, #0
00366af8  03 00 00 0a                                      beq #0x366b0c
00366afc  06 00 a0 e1                                      mov r0, r6
00366b00  07 10 a0 e1                                      mov r1, r7
00366b04  0c 20 8d e2                                      add r2, sp, #0xc
00366b08  6f f6 ff eb                                      bl #0x3644cc
00366b0c  1c d0 8d e2                                      add sp, sp, #0x1c
00366b10  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00366b14  50 30 9f e5                                      ldr r3, [pc, #0x50]
00366b18  03 30 9a e7                                      ldr r3, [sl, r3]
00366b1c  00 30 93 e5                                      ldr r3, [r3]
00366b20  02 00 53 e3                                      cmp r3, #2
00366b24  00 60 86 05                                      streq r6, [r6]
00366b28  e4 ff ff 0a                                      beq #0x366ac0
00366b2c  01 00 53 e3                                      cmp r3, #1
00366b30  e2 ff ff 1a                                      bne #0x366ac0
00366b34  34 00 9f e5                                      ldr r0, [pc, #0x34]
00366b38  34 10 9f e5                                      ldr r1, [pc, #0x34]
00366b3c  34 20 9f e5                                      ldr r2, [pc, #0x34]
00366b40  00 00 9a e7                                      ldr r0, [sl, r0]
00366b44  30 30 9f e5                                      ldr r3, [pc, #0x30]
00366b48  67 c1 00 e3                                      movw ip, #0x167
00366b4c  01 10 8f e0                                      add r1, pc, r1
00366b50  02 20 8f e0                                      add r2, pc, r2
00366b54  03 30 8f e0                                      add r3, pc, r3
00366b58  a8 00 80 e2                                      add r0, r0, #0xa8
00366b5c  00 c0 8d e5                                      str ip, [sp]
00366b60  27 9d fe eb                                      bl #0x30e004
00366b64  d5 ff ff ea                                      b #0x366ac0
; mapping-symbol data/literal pool
00366b68  0c e0 62 00 c0 39 00 00 c0 19 00 00 8c 78 55 00  .byte 0x0c, 0xe0, 0x62, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x8c, 0x78, 0x55, 0x00
00366b78  d8 67 57 00 a4 a2 55 00                          .byte 0xd8, 0x67, 0x57, 0x00, 0xa4, 0xa2, 0x55, 0x00

; FUNCTION 0x00366b80, declared_size=268, range_size=268, mode=arm
; class-group: AnimatorBlender::BlenderApplicator
; alias: _ZN15AnimatorBlender17BlenderApplicator10SetRefNodeEPN6glitch5scene10ISceneNodeE
; demangled: AnimatorBlender::BlenderApplicator::SetRefNode(glitch::scene::ISceneNode*)
; decoder-mode: arm
00366b80  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00366b84  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00366b88  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
00366b8c  0c d0 4d e2                                      sub sp, sp, #0xc
00366b90  00 00 52 e3                                      cmp r2, #0
00366b94  00 40 a0 e1                                      mov r4, r0
00366b98  01 50 a0 e1                                      mov r5, r1
00366b9c  03 30 8f e0                                      add r3, pc, r3
00366ba0  1e 00 00 0a                                      beq #0x366c20
00366ba4  04 00 a0 e1                                      mov r0, r4
00366ba8  05 10 a0 e1                                      mov r1, r5
00366bac  e2 f6 ff eb                                      bl #0x36473c
00366bb0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00366bb4  2c 70 93 e5                                      ldr r7, [r3, #0x2c]
00366bb8  28 30 93 e5                                      ldr r3, [r3, #0x28]
00366bbc  07 70 63 e0                                      rsb r7, r3, r7
00366bc0  47 71 b0 e1                                      asrs r7, r7, #2
00366bc4  13 00 00 0a                                      beq #0x366c18
00366bc8  00 60 a0 e3                                      mov r6, #0
00366bcc  08 00 00 ea                                      b #0x366bf4
00366bd0  00 30 91 e5                                      ldr r3, [r1]
00366bd4  01 60 86 e2                                      add r6, r6, #1
00366bd8  05 10 a0 e1                                      mov r1, r5
00366bdc  0f e0 a0 e1                                      mov lr, pc
00366be0  08 f0 93 e5                                      ldr pc, [r3, #8]
00366be4  07 00 56 e1                                      cmp r6, r7
00366be8  0a 00 00 0a                                      beq #0x366c18
00366bec  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00366bf0  28 30 93 e5                                      ldr r3, [r3, #0x28]
00366bf4  06 01 93 e7                                      ldr r0, [r3, r6, lsl #2]
00366bf8  58 09 00 eb                                      bl #0x369160
00366bfc  00 10 50 e2                                      subs r1, r0, #0
00366c00  f2 ff ff 1a                                      bne #0x366bd0
00366c04  04 00 a0 e1                                      mov r0, r4
00366c08  01 60 86 e2                                      add r6, r6, #1
00366c0c  ca f6 ff eb                                      bl #0x36473c
00366c10  07 00 56 e1                                      cmp r6, r7
00366c14  f4 ff ff 1a                                      bne #0x366bec
00366c18  0c d0 8d e2                                      add sp, sp, #0xc
00366c1c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00366c20  50 10 9f e5                                      ldr r1, [pc, #0x50]
00366c24  01 10 93 e7                                      ldr r1, [r3, r1]
00366c28  00 10 91 e5                                      ldr r1, [r1]
00366c2c  02 00 51 e3                                      cmp r1, #2
00366c30  00 20 82 05                                      streq r2, [r2]
00366c34  da ff ff 0a                                      beq #0x366ba4
00366c38  01 00 51 e3                                      cmp r1, #1
00366c3c  d8 ff ff 1a                                      bne #0x366ba4
00366c40  34 00 9f e5                                      ldr r0, [pc, #0x34]
00366c44  34 10 9f e5                                      ldr r1, [pc, #0x34]
00366c48  34 20 9f e5                                      ldr r2, [pc, #0x34]
00366c4c  00 00 93 e7                                      ldr r0, [r3, r0]
00366c50  30 30 9f e5                                      ldr r3, [pc, #0x30]
00366c54  13 ce a0 e3                                      mov ip, #0x130
00366c58  01 10 8f e0                                      add r1, pc, r1
00366c5c  02 20 8f e0                                      add r2, pc, r2
00366c60  03 30 8f e0                                      add r3, pc, r3
00366c64  a8 00 80 e2                                      add r0, r0, #0xa8
00366c68  00 c0 8d e5                                      str ip, [sp]
00366c6c  e4 9c fe eb                                      bl #0x30e004
00366c70  cb ff ff ea                                      b #0x366ba4
; mapping-symbol data/literal pool
00366c74  f4 de 62 00 c0 39 00 00 c0 19 00 00 80 77 55 00  .byte 0xf4, 0xde, 0x62, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x80, 0x77, 0x55, 0x00
00366c84  fc a1 55 00 98 a1 55 00                          .byte 0xfc, 0xa1, 0x55, 0x00, 0x98, 0xa1, 0x55, 0x00

; FUNCTION 0x003671c8, declared_size=60, range_size=60, mode=arm
; class-group: AnimatorBlender::BlenderApplicator
; alias: _ZN15AnimatorBlender17BlenderApplicatorD0Ev
; demangled: AnimatorBlender::BlenderApplicator::~BlenderApplicator()
; decoder-mode: arm
003671c8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003671cc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003671d0  10 40 2d e9                                      push {r4, lr}
003671d4  03 30 8f e0                                      add r3, pc, r3
003671d8  02 20 93 e7                                      ldr r2, [r3, r2]
003671dc  00 40 a0 e1                                      mov r4, r0
003671e0  08 20 82 e2                                      add r2, r2, #8
003671e4  00 20 80 e5                                      str r2, [r0]
003671e8  a0 f5 ff eb                                      bl #0x364870
003671ec  04 00 a0 e1                                      mov r0, r4
003671f0  92 a4 fe eb                                      bl #0x310440
003671f4  04 00 a0 e1                                      mov r0, r4
003671f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003671fc  bc d8 62 00 e0 4a 00 00                          .byte 0xbc, 0xd8, 0x62, 0x00, 0xe0, 0x4a, 0x00, 0x00
