; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00411e54, declared_size=4, range_size=4, mode=arm
; class-group: Dragable
; alias: _ZN8DragableD2Ev
; demangled: Dragable::~Dragable()
; decoder-mode: arm
00411e54  1e ff 2f e1                                      bx lr

; FUNCTION 0x00411e58, declared_size=4, range_size=4, mode=arm
; class-group: Dragable
; alias: _ZN8DragableD1Ev
; demangled: Dragable::~Dragable()
; decoder-mode: arm
00411e58  1e ff 2f e1                                      bx lr

; FUNCTION 0x00412084, declared_size=20, range_size=20, mode=arm
; class-group: Dragable
; alias: _ZN8Dragable9SendEventEi
; demangled: Dragable::SendEvent(int)
; decoder-mode: arm
00412084  00 30 a0 e1                                      mov r3, r0
00412088  08 20 90 e5                                      ldr r2, [r0, #8]
0041208c  01 00 a0 e1                                      mov r0, r1
00412090  04 10 93 e5                                      ldr r1, [r3, #4]
00412094  be ff ff ea                                      b #0x411f94

; FUNCTION 0x004124c4, declared_size=476, range_size=476, mode=arm
; class-group: Dragable
; alias: _ZN8DragableC1EP6MenuFXPN7gameswf9characterES4_
; demangled: Dragable::Dragable(MenuFX*, gameswf::character*, gameswf::character*)
; decoder-mode: arm
004124c4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004124c8  b8 51 9f e5                                      ldr r5, [pc, #0x1b8]
004124cc  b8 61 9f e5                                      ldr r6, [pc, #0x1b8]
004124d0  00 40 a0 e1                                      mov r4, r0
004124d4  05 50 8f e0                                      add r5, pc, r5
004124d8  06 e0 95 e7                                      ldr lr, [r5, r6]
004124dc  fe c5 a0 e3                                      mov ip, #0x3f800000
004124e0  02 70 a0 e1                                      mov r7, r2
004124e4  00 00 9e e5                                      ldr r0, [lr]
004124e8  00 20 a0 e3                                      mov r2, #0
004124ec  30 d0 4d e2                                      sub sp, sp, #0x30
004124f0  04 10 84 e5                                      str r1, [r4, #4]
004124f4  4c c0 84 e5                                      str ip, [r4, #0x4c]
004124f8  3c c0 84 e5                                      str ip, [r4, #0x3c]
004124fc  50 20 84 e5                                      str r2, [r4, #0x50]
00412500  40 20 84 e5                                      str r2, [r4, #0x40]
00412504  44 20 84 e5                                      str r2, [r4, #0x44]
00412508  48 20 84 e5                                      str r2, [r4, #0x48]
0041250c  08 70 84 e5                                      str r7, [r4, #8]
00412510  0c 80 84 e2                                      add r8, r4, #0xc
00412514  2c 00 8d e5                                      str r0, [sp, #0x2c]
00412518  08 10 a0 e1                                      mov r1, r8
0041251c  00 20 97 e5                                      ldr r2, [r7]
00412520  07 00 a0 e1                                      mov r0, r7
00412524  03 90 a0 e1                                      mov sb, r3
00412528  0f e0 a0 e1                                      mov lr, pc
0041252c  2c f1 92 e5                                      ldr pc, [r2, #0x12c]
00412530  08 00 a0 e1                                      mov r0, r8
00412534  1b 0d 0e eb                                      bl #0x7959a8
00412538  08 a0 94 e5                                      ldr sl, [r4, #8]
0041253c  00 00 59 e3                                      cmp sb, #0
00412540  b4 39 da e1                                      ldrh r3, [sl, #0x94]
00412544  38 30 84 e5                                      str r3, [r4, #0x38]
00412548  37 00 00 0a                                      beq #0x41262c
0041254c  09 10 a0 e1                                      mov r1, sb
00412550  0d 00 a0 e1                                      mov r0, sp
00412554  48 11 00 eb                                      bl #0x416a7c
00412558  0d 80 a0 e1                                      mov r8, sp
0041255c  20 c0 84 e2                                      add ip, r4, #0x20
00412560  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
00412564  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00412568  08 a0 94 e5                                      ldr sl, [r4, #8]
0041256c  00 30 a0 e3                                      mov r3, #0
00412570  1c 30 84 e5                                      str r3, [r4, #0x1c]
00412574  4c 30 9a e5                                      ldr r3, [sl, #0x4c]
00412578  14 80 8d e2                                      add r8, sp, #0x14
0041257c  08 00 93 e5                                      ldr r0, [r3, #8]
00412580  d1 ef fb eb                                      bl #0x30e4cc
00412584  30 00 84 e5                                      str r0, [r4, #0x30]
00412588  4c 30 9a e5                                      ldr r3, [sl, #0x4c]
0041258c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00412590  cd ef fb eb                                      bl #0x30e4cc
00412594  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
00412598  34 00 84 e5                                      str r0, [r4, #0x34]
0041259c  03 a0 95 e7                                      ldr sl, [r5, r3]
004125a0  0a 00 a0 e1                                      mov r0, sl
004125a4  b7 94 fc eb                                      bl #0x337888
004125a8  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
004125ac  10 20 8d e2                                      add r2, sp, #0x10
004125b0  08 00 a0 e1                                      mov r0, r8
004125b4  01 10 8f e0                                      add r1, pc, r1
004125b8  cb 06 fc eb                                      bl #0x3140ec
004125bc  0a 00 a0 e1                                      mov r0, sl
004125c0  08 10 a0 e1                                      mov r1, r8
004125c4  2f 95 fc eb                                      bl #0x337a88
004125c8  28 00 9d e5                                      ldr r0, [sp, #0x28]
004125cc  08 00 50 e1                                      cmp r0, r8
004125d0  06 00 00 0a                                      beq #0x4125f0
004125d4  00 00 50 e3                                      cmp r0, #0
004125d8  04 00 00 0a                                      beq #0x4125f0
004125dc  14 10 9d e5                                      ldr r1, [sp, #0x14]
004125e0  01 10 60 e0                                      rsb r1, r0, r1
004125e4  80 00 51 e3                                      cmp r1, #0x80
004125e8  23 00 00 8a                                      bhi #0x41267c
004125ec  43 da 0b eb                                      bl #0x708f00
004125f0  4c 30 97 e5                                      ldr r3, [r7, #0x4c]
004125f4  06 60 95 e7                                      ldr r6, [r5, r6]
004125f8  3c c0 84 e2                                      add ip, r4, #0x3c
004125fc  03 50 a0 e1                                      mov r5, r3
00412600  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
00412604  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00412608  03 00 95 e8                                      ldm r5, {r0, r1}
0041260c  03 00 8c e8                                      stm ip, {r0, r1}
00412610  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00412614  00 30 96 e5                                      ldr r3, [r6]
00412618  04 00 a0 e1                                      mov r0, r4
0041261c  03 00 52 e1                                      cmp r2, r3
00412620  17 00 00 1a                                      bne #0x412684
00412624  30 d0 8d e2                                      add sp, sp, #0x30
00412628  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0041262c  64 20 9f e5                                      ldr r2, [pc, #0x64]
00412630  00 30 a0 e3                                      mov r3, #0
00412634  28 30 84 e5                                      str r3, [r4, #0x28]
00412638  02 20 95 e7                                      ldr r2, [r5, r2]
0041263c  20 30 84 e5                                      str r3, [r4, #0x20]
00412640  00 00 92 e5                                      ldr r0, [r2]
00412644  c6 f0 fb eb                                      bl #0x30e964
00412648  41 14 a0 e3                                      mov r1, #0x41000000
0041264c  0a 16 81 e2                                      add r1, r1, #0xa00000
00412650  c5 f1 fb eb                                      bl #0x30ed6c
00412654  40 30 9f e5                                      ldr r3, [pc, #0x40]
00412658  24 00 84 e5                                      str r0, [r4, #0x24]
0041265c  03 30 95 e7                                      ldr r3, [r5, r3]
00412660  00 00 93 e5                                      ldr r0, [r3]
00412664  be f0 fb eb                                      bl #0x30e964
00412668  41 14 a0 e3                                      mov r1, #0x41000000
0041266c  0a 16 81 e2                                      add r1, r1, #0xa00000
00412670  bd f1 fb eb                                      bl #0x30ed6c
00412674  2c 00 84 e5                                      str r0, [r4, #0x2c]
00412678  bb ff ff ea                                      b #0x41256c
0041267c  6f f7 fb eb                                      bl #0x310440
00412680  da ff ff ea                                      b #0x4125f0
00412684  21 ef fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00412688  bc 25 58 00 ac 40 00 00 84 08 00 00 dc 59 4b 00  .byte 0xbc, 0x25, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xdc, 0x59, 0x4b, 0x00
00412698  c4 25 00 00 f8 22 00 00                          .byte 0xc4, 0x25, 0x00, 0x00, 0xf8, 0x22, 0x00, 0x00

; FUNCTION 0x00412984, declared_size=292, range_size=292, mode=arm
; class-group: Dragable
; alias: _ZN8Dragable13ResetPositionEv
; demangled: Dragable::ResetPosition()
; decoder-mode: arm
00412984  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00412988  08 51 9f e5                                      ldr r5, [pc, #0x108]
0041298c  08 61 9f e5                                      ldr r6, [pc, #0x108]
00412990  24 d0 4d e2                                      sub sp, sp, #0x24
00412994  05 50 8f e0                                      add r5, pc, r5
00412998  06 30 95 e7                                      ldr r3, [r5, r6]
0041299c  00 40 a0 e1                                      mov r4, r0
004129a0  3c 10 80 e2                                      add r1, r0, #0x3c
004129a4  00 30 93 e5                                      ldr r3, [r3]
004129a8  08 00 90 e5                                      ldr r0, [r0, #8]
004129ac  1c 30 8d e5                                      str r3, [sp, #0x1c]
004129b0  10 fe ff eb                                      bl #0x4121f8
004129b4  08 70 94 e5                                      ldr r7, [r4, #8]
004129b8  04 80 94 e5                                      ldr r8, [r4, #4]
004129bc  3c 00 87 e2                                      add r0, r7, #0x3c
004129c0  df cd fd eb                                      bl #0x386144
004129c4  00 20 a0 e3                                      mov r2, #0
004129c8  02 30 a0 e1                                      mov r3, r2
004129cc  40 10 97 e5                                      ldr r1, [r7, #0x40]
004129d0  08 00 a0 e1                                      mov r0, r8
004129d4  29 55 0e eb                                      bl #0x7a7e80
004129d8  00 20 a0 e3                                      mov r2, #0
004129dc  02 30 a0 e1                                      mov r3, r2
004129e0  03 00 94 e9                                      ldmib r4, {r0, r1}
004129e4  25 55 0e eb                                      bl #0x7a7e80
004129e8  08 30 94 e5                                      ldr r3, [r4, #8]
004129ec  02 10 a0 e3                                      mov r1, #2
004129f0  03 00 a0 e1                                      mov r0, r3
004129f4  00 30 93 e5                                      ldr r3, [r3]
004129f8  0f e0 a0 e1                                      mov lr, pc
004129fc  08 f0 93 e5                                      ldr pc, [r3, #8]
00412a00  00 00 50 e3                                      cmp r0, #0
00412a04  1b 00 00 0a                                      beq #0x412a78
00412a08  08 70 94 e5                                      ldr r7, [r4, #8]
00412a0c  38 20 94 e5                                      ldr r2, [r4, #0x38]
00412a10  b4 39 d7 e1                                      ldrh r3, [r7, #0x94]
00412a14  03 00 52 e1                                      cmp r2, r3
00412a18  16 00 00 0a                                      beq #0x412a78
00412a1c  3c 00 87 e2                                      add r0, r7, #0x3c
00412a20  c7 cd fd eb                                      bl #0x386144
00412a24  74 30 9f e5                                      ldr r3, [pc, #0x74]
00412a28  40 a0 97 e5                                      ldr sl, [r7, #0x40]
00412a2c  04 70 8d e2                                      add r7, sp, #4
00412a30  03 80 95 e7                                      ldr r8, [r5, r3]
00412a34  a8 a0 8a e2                                      add sl, sl, #0xa8
00412a38  08 00 a0 e1                                      mov r0, r8
00412a3c  91 93 fc eb                                      bl #0x337888
00412a40  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
00412a44  0d 20 a0 e1                                      mov r2, sp
00412a48  07 00 a0 e1                                      mov r0, r7
00412a4c  01 10 8f e0                                      add r1, pc, r1
00412a50  a5 05 fc eb                                      bl #0x3140ec
00412a54  07 10 a0 e1                                      mov r1, r7
00412a58  08 00 a0 e1                                      mov r0, r8
00412a5c  09 94 fc eb                                      bl #0x337a88
00412a60  07 00 a0 e1                                      mov r0, r7
00412a64  fa 15 fc eb                                      bl #0x318254
00412a68  0a 00 a0 e1                                      mov r0, sl
00412a6c  38 20 94 e5                                      ldr r2, [r4, #0x38]
00412a70  08 10 94 e5                                      ldr r1, [r4, #8]
00412a74  2b 0b 0d eb                                      bl #0x755728
00412a78  06 30 95 e7                                      ldr r3, [r5, r6]
00412a7c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00412a80  00 30 93 e5                                      ldr r3, [r3]
00412a84  03 00 52 e1                                      cmp r2, r3
00412a88  01 00 00 1a                                      bne #0x412a94
00412a8c  24 d0 8d e2                                      add sp, sp, #0x24
00412a90  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00412a94  1d ee fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00412a98  fc 20 58 00 ac 40 00 00 84 08 00 00 44 55 4b 00  .byte 0xfc, 0x20, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x44, 0x55, 0x4b, 0x00

; FUNCTION 0x00412b00, declared_size=1480, range_size=1480, mode=arm
; class-group: Dragable
; alias: _ZN8Dragable7OnEventERN8RenderFX5EventE
; demangled: Dragable::OnEvent(RenderFX::Event&)
; decoder-mode: arm
00412b00  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00412b04  94 45 9f e5                                      ldr r4, [pc, #0x594]
00412b08  94 55 9f e5                                      ldr r5, [pc, #0x594]
00412b0c  01 60 a0 e1                                      mov r6, r1
00412b10  04 40 8f e0                                      add r4, pc, r4
00412b14  05 30 94 e7                                      ldr r3, [r4, r5]
00412b18  00 10 91 e5                                      ldr r1, [r1]
00412b1c  08 20 90 e5                                      ldr r2, [r0, #8]
00412b20  00 30 93 e5                                      ldr r3, [r3]
00412b24  bc d0 4d e2                                      sub sp, sp, #0xbc
00412b28  02 00 51 e1                                      cmp r1, r2
00412b2c  00 70 a0 e1                                      mov r7, r0
00412b30  b4 30 8d e5                                      str r3, [sp, #0xb4]
00412b34  00 60 a0 13                                      movne r6, #0
00412b38  07 00 00 0a                                      beq #0x412b5c
00412b3c  05 30 94 e7                                      ldr r3, [r4, r5]
00412b40  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
00412b44  06 00 a0 e1                                      mov r0, r6
00412b48  00 30 93 e5                                      ldr r3, [r3]
00412b4c  03 00 52 e1                                      cmp r2, r3
00412b50  51 01 00 1a                                      bne #0x41309c
00412b54  bc d0 8d e2                                      add sp, sp, #0xbc
00412b58  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00412b5c  44 15 9f e5                                      ldr r1, [pc, #0x544]
00412b60  88 a0 8d e2                                      add sl, sp, #0x88
00412b64  a0 80 8d e2                                      add r8, sp, #0xa0
00412b68  01 90 94 e7                                      ldr sb, [r4, r1]
00412b6c  10 10 8d e5                                      str r1, [sp, #0x10]
00412b70  09 00 a0 e1                                      mov r0, sb
00412b74  43 93 fc eb                                      bl #0x337888
00412b78  2c 15 9f e5                                      ldr r1, [pc, #0x52c]
00412b7c  54 20 8d e2                                      add r2, sp, #0x54
00412b80  0a 00 a0 e1                                      mov r0, sl
00412b84  01 10 8f e0                                      add r1, pc, r1
00412b88  57 05 fc eb                                      bl #0x3140ec
00412b8c  0a 10 a0 e1                                      mov r1, sl
00412b90  09 00 a0 e1                                      mov r0, sb
00412b94  bb 93 fc eb                                      bl #0x337a88
00412b98  0a 00 a0 e1                                      mov r0, sl
00412b9c  ac 15 fc eb                                      bl #0x318254
00412ba0  00 a0 96 e5                                      ldr sl, [r6]
00412ba4  00 30 a0 e3                                      mov r3, #0
00412ba8  38 30 cd e5                                      strb r3, [sp, #0x38]
00412bac  39 30 cd e5                                      strb r3, [sp, #0x39]
00412bb0  00 20 9a e5                                      ldr r2, [sl]
00412bb4  08 00 a0 e1                                      mov r0, r8
00412bb8  0b 10 a0 e3                                      mov r1, #0xb
00412bbc  20 b0 92 e5                                      ldr fp, [r2, #0x20]
00412bc0  01 20 a0 e3                                      mov r2, #1
00412bc4  a0 20 cd e5                                      strb r2, [sp, #0xa0]
00412bc8  a1 30 cd e5                                      strb r3, [sp, #0xa1]
00412bcc  50 fc 0c eb                                      bl #0x751d14
00412bd0  d0 3a dd e1                                      ldrsb r3, [sp, #0xa0]
00412bd4  d4 14 9f e5                                      ldr r1, [pc, #0x4d4]
00412bd8  0c 20 a0 e3                                      mov r2, #0xc
00412bdc  01 00 73 e3                                      cmn r3, #1
00412be0  01 00 88 12                                      addne r0, r8, #1
00412be4  ac 00 9d 05                                      ldreq r0, [sp, #0xac]
00412be8  01 10 8f e0                                      add r1, pc, r1
00412bec  1d ef fb eb                                      bl #0x30e868
00412bf0  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
00412bf4  00 20 e0 e3                                      mvn r2, #0
00412bf8  38 90 8d e2                                      add sb, sp, #0x38
00412bfc  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
00412c00  23 2c a0 e1                                      lsr r2, r3, #0x18
00412c04  1f 20 c0 e7                                      bfc r2, #0, #1
00412c08  b0 30 8d e5                                      str r3, [sp, #0xb0]
00412c0c  0a 00 a0 e1                                      mov r0, sl
00412c10  b3 20 cd e5                                      strb r2, [sp, #0xb3]
00412c14  08 10 a0 e1                                      mov r1, r8
00412c18  09 20 a0 e1                                      mov r2, sb
00412c1c  3b ff 2f e1                                      blx fp
00412c20  d0 3a dd e1                                      ldrsb r3, [sp, #0xa0]
00412c24  01 00 73 e3                                      cmn r3, #1
00412c28  ad 00 00 0a                                      beq #0x412ee4
00412c2c  09 00 a0 e1                                      mov r0, sb
00412c30  4a 13 0e eb                                      bl #0x797960
00412c34  00 00 50 e3                                      cmp r0, #0
00412c38  11 00 00 1a                                      bne #0x412c84
00412c3c  08 30 96 e5                                      ldr r3, [r6, #8]
00412c40  06 00 53 e3                                      cmp r3, #6
00412c44  0c 00 00 0a                                      beq #0x412c7c
00412c48  07 00 53 e3                                      cmp r3, #7
00412c4c  07 00 00 0a                                      beq #0x412c70
00412c50  05 00 53 e3                                      cmp r3, #5
00412c54  1b 00 00 0a                                      beq #0x412cc8
00412c58  8b 67 00 eb                                      bl #0x42ca8c
00412c5c  f4 67 00 eb                                      bl #0x42cc34
00412c60  00 60 a0 e3                                      mov r6, #0
00412c64  09 00 a0 e1                                      mov r0, sb
00412c68  2d 11 0e eb                                      bl #0x797124
00412c6c  b2 ff ff ea                                      b #0x412b3c
00412c70  07 00 a0 e1                                      mov r0, r7
00412c74  42 ff ff eb                                      bl #0x412984
00412c78  f6 ff ff ea                                      b #0x412c58
00412c7c  01 60 a0 e3                                      mov r6, #1
00412c80  f7 ff ff ea                                      b #0x412c64
00412c84  10 20 9d e5                                      ldr r2, [sp, #0x10]
00412c88  70 70 8d e2                                      add r7, sp, #0x70
00412c8c  00 60 a0 e3                                      mov r6, #0
00412c90  02 80 94 e7                                      ldr r8, [r4, r2]
00412c94  08 00 a0 e1                                      mov r0, r8
00412c98  fa 92 fc eb                                      bl #0x337888
00412c9c  10 14 9f e5                                      ldr r1, [pc, #0x410]
00412ca0  50 20 8d e2                                      add r2, sp, #0x50
00412ca4  07 00 a0 e1                                      mov r0, r7
00412ca8  01 10 8f e0                                      add r1, pc, r1
00412cac  0e 05 fc eb                                      bl #0x3140ec
00412cb0  08 00 a0 e1                                      mov r0, r8
00412cb4  07 10 a0 e1                                      mov r1, r7
00412cb8  72 93 fc eb                                      bl #0x337a88
00412cbc  07 00 a0 e1                                      mov r0, r7
00412cc0  63 15 fc eb                                      bl #0x318254
00412cc4  e6 ff ff ea                                      b #0x412c64
00412cc8  00 30 96 e5                                      ldr r3, [r6]
00412ccc  28 10 8d e2                                      add r1, sp, #0x28
00412cd0  03 00 a0 e1                                      mov r0, r3
00412cd4  00 30 93 e5                                      ldr r3, [r3]
00412cd8  0f e0 a0 e1                                      mov lr, pc
00412cdc  2c f1 93 e5                                      ldr pc, [r3, #0x12c]
00412ce0  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00412ce4  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00412ce8  30 80 9d e5                                      ldr r8, [sp, #0x30]
00412cec  0a 00 a0 e1                                      mov r0, sl
00412cf0  ab ef fb eb                                      bl #0x30eba4
00412cf4  10 10 96 e5                                      ldr r1, [r6, #0x10]
00412cf8  00 b0 a0 e1                                      mov fp, r0
00412cfc  08 00 a0 e1                                      mov r0, r8
00412d00  a7 ef fb eb                                      bl #0x30eba4
00412d04  1c 10 97 e5                                      ldr r1, [r7, #0x1c]
00412d08  48 00 8d e5                                      str r0, [sp, #0x48]
00412d0c  20 20 97 e5                                      ldr r2, [r7, #0x20]
00412d10  02 00 51 e3                                      cmp r1, #2
00412d14  28 10 97 e5                                      ldr r1, [r7, #0x28]
00412d18  24 c0 97 e5                                      ldr ip, [r7, #0x24]
00412d1c  00 30 a0 e1                                      mov r3, r0
00412d20  14 10 8d e5                                      str r1, [sp, #0x14]
00412d24  2c 10 97 e5                                      ldr r1, [r7, #0x2c]
00412d28  18 10 8d e5                                      str r1, [sp, #0x18]
00412d2c  70 00 00 0a                                      beq #0x412ef4
00412d30  0a 10 a0 e1                                      mov r1, sl
00412d34  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00412d38  9b ed fb eb                                      bl #0x30e3ac
00412d3c  bf 14 a0 e3                                      mov r1, #0xbf000000
00412d40  09 f0 fb eb                                      bl #0x30ed6c
00412d44  0b 10 a0 e1                                      mov r1, fp
00412d48  95 ef fb eb                                      bl #0x30eba4
00412d4c  08 10 a0 e1                                      mov r1, r8
00412d50  00 a0 a0 e1                                      mov sl, r0
00412d54  34 00 9d e5                                      ldr r0, [sp, #0x34]
00412d58  44 a0 8d e5                                      str sl, [sp, #0x44]
00412d5c  92 ed fb eb                                      bl #0x30e3ac
00412d60  bf 14 a0 e3                                      mov r1, #0xbf000000
00412d64  00 f0 fb eb                                      bl #0x30ed6c
00412d68  48 10 9d e5                                      ldr r1, [sp, #0x48]
00412d6c  8c ef fb eb                                      bl #0x30eba4
00412d70  41 14 a0 e3                                      mov r1, #0x41000000
00412d74  00 80 a0 e1                                      mov r8, r0
00412d78  0a 16 81 e2                                      add r1, r1, #0xa00000
00412d7c  0a 00 a0 e1                                      mov r0, sl
00412d80  48 80 8d e5                                      str r8, [sp, #0x48]
00412d84  c2 ef fb eb                                      bl #0x30ec94
00412d88  cf ed fb eb                                      bl #0x30e4cc
00412d8c  41 14 a0 e3                                      mov r1, #0x41000000
00412d90  0a 16 81 e2                                      add r1, r1, #0xa00000
00412d94  00 a0 a0 e1                                      mov sl, r0
00412d98  08 00 a0 e1                                      mov r0, r8
00412d9c  bc ef fb eb                                      bl #0x30ec94
00412da0  c9 ed fb eb                                      bl #0x30e4cc
00412da4  04 b0 97 e5                                      ldr fp, [r7, #4]
00412da8  00 80 96 e5                                      ldr r8, [r6]
00412dac  00 30 a0 e1                                      mov r3, r0
00412db0  0a 20 a0 e1                                      mov r2, sl
00412db4  08 10 a0 e1                                      mov r1, r8
00412db8  0b 00 a0 e1                                      mov r0, fp
00412dbc  8b 5d 0e eb                                      bl #0x7aa3f0
00412dc0  00 30 96 e5                                      ldr r3, [r6]
00412dc4  ec 02 9f e5                                      ldr r0, [pc, #0x2ec]
00412dc8  44 30 93 e5                                      ldr r3, [r3, #0x44]
00412dcc  00 00 8f e0                                      add r0, pc, r0
00412dd0  d0 20 d3 e1                                      ldrsb r2, [r3]
00412dd4  01 00 72 e3                                      cmn r2, #1
00412dd8  01 10 83 12                                      addne r1, r3, #1
00412ddc  0c 10 93 05                                      ldreq r1, [r3, #0xc]
00412de0  09 20 a0 e3                                      mov r2, #9
00412de4  a4 ef fb eb                                      bl #0x30ec7c
00412de8  00 00 50 e3                                      cmp r0, #0
00412dec  a2 ff ff 1a                                      bne #0x412c7c
00412df0  40 01 97 e9                                      ldmib r7, {r6, r8}
00412df4  06 00 a0 e1                                      mov r0, r6
00412df8  ab 53 0e eb                                      bl #0x7a7cac
00412dfc  b8 22 9f e5                                      ldr r2, [pc, #0x2b8]
00412e00  00 30 a0 e1                                      mov r3, r0
00412e04  08 10 a0 e1                                      mov r1, r8
00412e08  02 20 94 e7                                      ldr r2, [r4, r2]
00412e0c  06 00 a0 e1                                      mov r0, r6
00412e10  1a 54 0e eb                                      bl #0x7a7e80
00412e14  40 01 97 e9                                      ldmib r7, {r6, r8}
00412e18  3c 00 88 e2                                      add r0, r8, #0x3c
00412e1c  c8 cc fd eb                                      bl #0x386144
00412e20  98 32 9f e5                                      ldr r3, [pc, #0x298]
00412e24  40 10 98 e5                                      ldr r1, [r8, #0x40]
00412e28  06 00 a0 e1                                      mov r0, r6
00412e2c  03 20 94 e7                                      ldr r2, [r4, r3]
00412e30  08 30 97 e5                                      ldr r3, [r7, #8]
00412e34  11 54 0e eb                                      bl #0x7a7e80
00412e38  08 20 97 e5                                      ldr r2, [r7, #8]
00412e3c  02 10 a0 e3                                      mov r1, #2
00412e40  02 00 a0 e1                                      mov r0, r2
00412e44  00 30 92 e5                                      ldr r3, [r2]
00412e48  b4 69 d2 e1                                      ldrh r6, [r2, #0x94]
00412e4c  0f e0 a0 e1                                      mov lr, pc
00412e50  08 f0 93 e5                                      ldr pc, [r3, #8]
00412e54  00 00 50 e3                                      cmp r0, #0
00412e58  87 ff ff 0a                                      beq #0x412c7c
00412e5c  08 80 97 e5                                      ldr r8, [r7, #8]
00412e60  01 60 86 e2                                      add r6, r6, #1
00412e64  3c 00 88 e2                                      add r0, r8, #0x3c
00412e68  b5 cc fd eb                                      bl #0x386144
00412e6c  40 b0 98 e5                                      ldr fp, [r8, #0x40]
00412e70  a8 b0 8b e2                                      add fp, fp, #0xa8
00412e74  0b 00 a0 e1                                      mov r0, fp
00412e78  62 08 0d eb                                      bl #0x755008
00412e7c  06 00 50 e1                                      cmp r0, r6
00412e80  00 30 a0 e1                                      mov r3, r0
00412e84  7c ff ff 0a                                      beq #0x412c7c
00412e88  10 10 9d e5                                      ldr r1, [sp, #0x10]
00412e8c  04 30 8d e5                                      str r3, [sp, #4]
00412e90  58 80 8d e2                                      add r8, sp, #0x58
00412e94  01 a0 94 e7                                      ldr sl, [r4, r1]
00412e98  01 60 a0 e3                                      mov r6, #1
00412e9c  0a 00 a0 e1                                      mov r0, sl
00412ea0  78 92 fc eb                                      bl #0x337888
00412ea4  18 12 9f e5                                      ldr r1, [pc, #0x218]
00412ea8  4c 20 8d e2                                      add r2, sp, #0x4c
00412eac  08 00 a0 e1                                      mov r0, r8
00412eb0  01 10 8f e0                                      add r1, pc, r1
00412eb4  8c 04 fc eb                                      bl #0x3140ec
00412eb8  08 10 a0 e1                                      mov r1, r8
00412ebc  0a 00 a0 e1                                      mov r0, sl
00412ec0  f0 92 fc eb                                      bl #0x337a88
00412ec4  08 00 a0 e1                                      mov r0, r8
00412ec8  e1 14 fc eb                                      bl #0x318254
00412ecc  04 30 9d e5                                      ldr r3, [sp, #4]
00412ed0  0b 00 a0 e1                                      mov r0, fp
00412ed4  08 10 97 e5                                      ldr r1, [r7, #8]
00412ed8  03 20 a0 e1                                      mov r2, r3
00412edc  11 0a 0d eb                                      bl #0x755728
00412ee0  5f ff ff ea                                      b #0x412c64
00412ee4  ac 00 9d e5                                      ldr r0, [sp, #0xac]
00412ee8  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
00412eec  11 ff 0c eb                                      bl #0x752b38
00412ef0  4d ff ff ea                                      b #0x412c2c
00412ef4  02 10 a0 e1                                      mov r1, r2
00412ef8  0c 00 a0 e1                                      mov r0, ip
00412efc  08 20 8d e5                                      str r2, [sp, #8]
00412f00  04 30 8d e5                                      str r3, [sp, #4]
00412f04  0c c0 8d e5                                      str ip, [sp, #0xc]
00412f08  27 ed fb eb                                      bl #0x30e3ac
00412f0c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00412f10  1c 00 8d e5                                      str r0, [sp, #0x1c]
00412f14  18 00 9d e5                                      ldr r0, [sp, #0x18]
00412f18  23 ed fb eb                                      bl #0x30e3ac
00412f1c  20 00 8d e5                                      str r0, [sp, #0x20]
00412f20  20 10 9d e5                                      ldr r1, [sp, #0x20]
00412f24  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00412f28  f2 ec fb eb                                      bl #0x30e2f8
00412f2c  00 00 50 e3                                      cmp r0, #0
00412f30  1c 10 9d 05                                      ldreq r1, [sp, #0x1c]
00412f34  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00412f38  08 20 9d e5                                      ldr r2, [sp, #8]
00412f3c  04 30 9d e5                                      ldr r3, [sp, #4]
00412f40  20 10 8d 05                                      streq r1, [sp, #0x20]
00412f44  0c 00 a0 e1                                      mov r0, ip
00412f48  02 10 a0 e1                                      mov r1, r2
00412f4c  04 30 8d e5                                      str r3, [sp, #4]
00412f50  08 20 8d e5                                      str r2, [sp, #8]
00412f54  14 ed fb eb                                      bl #0x30e3ac
00412f58  3f 14 a0 e3                                      mov r1, #0x3f000000
00412f5c  82 ef fb eb                                      bl #0x30ed6c
00412f60  08 20 9d e5                                      ldr r2, [sp, #8]
00412f64  00 10 a0 e1                                      mov r1, r0
00412f68  02 00 a0 e1                                      mov r0, r2
00412f6c  0c ef fb eb                                      bl #0x30eba4
00412f70  14 10 9d e5                                      ldr r1, [sp, #0x14]
00412f74  24 00 8d e5                                      str r0, [sp, #0x24]
00412f78  18 00 9d e5                                      ldr r0, [sp, #0x18]
00412f7c  0a ed fb eb                                      bl #0x30e3ac
00412f80  3f 14 a0 e3                                      mov r1, #0x3f000000
00412f84  78 ef fb eb                                      bl #0x30ed6c
00412f88  00 10 a0 e1                                      mov r1, r0
00412f8c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00412f90  03 ef fb eb                                      bl #0x30eba4
00412f94  3f 14 a0 e3                                      mov r1, #0x3f000000
00412f98  1c 00 8d e5                                      str r0, [sp, #0x1c]
00412f9c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00412fa0  71 ef fb eb                                      bl #0x30ed6c
00412fa4  24 10 9d e5                                      ldr r1, [sp, #0x24]
00412fa8  18 00 8d e5                                      str r0, [sp, #0x18]
00412fac  0b 00 a0 e1                                      mov r0, fp
00412fb0  fd ec fb eb                                      bl #0x30e3ac
00412fb4  04 30 9d e5                                      ldr r3, [sp, #4]
00412fb8  00 b0 a0 e1                                      mov fp, r0
00412fbc  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00412fc0  03 00 a0 e1                                      mov r0, r3
00412fc4  f8 ec fb eb                                      bl #0x30e3ac
00412fc8  18 10 9d e5                                      ldr r1, [sp, #0x18]
00412fcc  14 00 8d e5                                      str r0, [sp, #0x14]
00412fd0  14 20 9d e5                                      ldr r2, [sp, #0x14]
00412fd4  01 00 a0 e1                                      mov r0, r1
00412fd8  44 b0 8d e5                                      str fp, [sp, #0x44]
00412fdc  48 20 8d e5                                      str r2, [sp, #0x48]
00412fe0  61 ef fb eb                                      bl #0x30ed6c
00412fe4  0b 10 a0 e1                                      mov r1, fp
00412fe8  00 20 a0 e1                                      mov r2, r0
00412fec  0b 00 a0 e1                                      mov r0, fp
00412ff0  08 20 8d e5                                      str r2, [sp, #8]
00412ff4  5c ef fb eb                                      bl #0x30ed6c
00412ff8  00 30 a0 e1                                      mov r3, r0
00412ffc  14 00 9d e5                                      ldr r0, [sp, #0x14]
00413000  04 30 8d e5                                      str r3, [sp, #4]
00413004  00 10 a0 e1                                      mov r1, r0
00413008  57 ef fb eb                                      bl #0x30ed6c
0041300c  04 30 9d e5                                      ldr r3, [sp, #4]
00413010  00 10 a0 e1                                      mov r1, r0
00413014  03 00 a0 e1                                      mov r0, r3
00413018  e1 ee fb eb                                      bl #0x30eba4
0041301c  08 20 9d e5                                      ldr r2, [sp, #8]
00413020  00 10 a0 e1                                      mov r1, r0
00413024  02 00 a0 e1                                      mov r0, r2
00413028  b7 ed fb eb                                      bl #0x30e70c
0041302c  00 00 50 e3                                      cmp r0, #0
00413030  08 00 00 1a                                      bne #0x413058
00413034  0b 10 a0 e1                                      mov r1, fp
00413038  24 00 9d e5                                      ldr r0, [sp, #0x24]
0041303c  d8 ee fb eb                                      bl #0x30eba4
00413040  14 10 9d e5                                      ldr r1, [sp, #0x14]
00413044  00 b0 a0 e1                                      mov fp, r0
00413048  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0041304c  d4 ee fb eb                                      bl #0x30eba4
00413050  48 00 8d e5                                      str r0, [sp, #0x48]
00413054  35 ff ff ea                                      b #0x412d30
00413058  44 00 8d e2                                      add r0, sp, #0x44
0041305c  7d fc ff eb                                      bl #0x412258
00413060  18 10 9d e5                                      ldr r1, [sp, #0x18]
00413064  00 80 a0 e1                                      mov r8, r0
00413068  00 00 90 e5                                      ldr r0, [r0]
0041306c  3e ef fb eb                                      bl #0x30ed6c
00413070  00 00 88 e5                                      str r0, [r8]
00413074  18 10 9d e5                                      ldr r1, [sp, #0x18]
00413078  04 00 98 e5                                      ldr r0, [r8, #4]
0041307c  3a ef fb eb                                      bl #0x30ed6c
00413080  04 00 88 e5                                      str r0, [r8, #4]
00413084  48 30 9d e5                                      ldr r3, [sp, #0x48]
00413088  44 b0 9d e5                                      ldr fp, [sp, #0x44]
0041308c  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00413090  14 30 8d e5                                      str r3, [sp, #0x14]
00413094  30 80 9d e5                                      ldr r8, [sp, #0x30]
00413098  e5 ff ff ea                                      b #0x413034
0041309c  9b ec fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004130a0  80 1f 58 00 ac 40 00 00 84 08 00 00 0c 54 4b 00  .byte 0x80, 0x1f, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x0c, 0x54, 0x4b, 0x00
004130b0  48 54 4b 00 e8 52 4b 00 74 52 4b 00 20 37 00 00  .byte 0x48, 0x54, 0x4b, 0x00, 0xe8, 0x52, 0x4b, 0x00, 0x74, 0x52, 0x4b, 0x00, 0x20, 0x37, 0x00, 0x00
004130c0  a4 2e 00 00 e0 50 4b 00                          .byte 0xa4, 0x2e, 0x00, 0x00, 0xe0, 0x50, 0x4b, 0x00

; FUNCTION 0x00413240, declared_size=436, range_size=436, mode=arm
; class-group: Dragable
; alias: _ZN8DragableC2EP6MenuFXPN7gameswf9characterES4_
; demangled: Dragable::Dragable(MenuFX*, gameswf::character*, gameswf::character*)
; decoder-mode: arm
00413240  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00413244  90 51 9f e5                                      ldr r5, [pc, #0x190]
00413248  90 61 9f e5                                      ldr r6, [pc, #0x190]
0041324c  00 40 a0 e1                                      mov r4, r0
00413250  05 50 8f e0                                      add r5, pc, r5
00413254  06 e0 95 e7                                      ldr lr, [r5, r6]
00413258  fe c5 a0 e3                                      mov ip, #0x3f800000
0041325c  02 70 a0 e1                                      mov r7, r2
00413260  00 00 9e e5                                      ldr r0, [lr]
00413264  00 20 a0 e3                                      mov r2, #0
00413268  30 d0 4d e2                                      sub sp, sp, #0x30
0041326c  04 10 84 e5                                      str r1, [r4, #4]
00413270  4c c0 84 e5                                      str ip, [r4, #0x4c]
00413274  3c c0 84 e5                                      str ip, [r4, #0x3c]
00413278  50 20 84 e5                                      str r2, [r4, #0x50]
0041327c  40 20 84 e5                                      str r2, [r4, #0x40]
00413280  44 20 84 e5                                      str r2, [r4, #0x44]
00413284  48 20 84 e5                                      str r2, [r4, #0x48]
00413288  08 70 84 e5                                      str r7, [r4, #8]
0041328c  0c 80 84 e2                                      add r8, r4, #0xc
00413290  2c 00 8d e5                                      str r0, [sp, #0x2c]
00413294  08 10 a0 e1                                      mov r1, r8
00413298  00 20 97 e5                                      ldr r2, [r7]
0041329c  07 00 a0 e1                                      mov r0, r7
004132a0  03 90 a0 e1                                      mov sb, r3
004132a4  0f e0 a0 e1                                      mov lr, pc
004132a8  2c f1 92 e5                                      ldr pc, [r2, #0x12c]
004132ac  08 00 a0 e1                                      mov r0, r8
004132b0  bc 09 0e eb                                      bl #0x7959a8
004132b4  08 a0 94 e5                                      ldr sl, [r4, #8]
004132b8  00 00 59 e3                                      cmp sb, #0
004132bc  b4 39 da e1                                      ldrh r3, [sl, #0x94]
004132c0  38 30 84 e5                                      str r3, [r4, #0x38]
004132c4  2f 00 00 0a                                      beq #0x413388
004132c8  09 10 a0 e1                                      mov r1, sb
004132cc  0d 00 a0 e1                                      mov r0, sp
004132d0  e9 0d 00 eb                                      bl #0x416a7c
004132d4  0d 80 a0 e1                                      mov r8, sp
004132d8  20 c0 84 e2                                      add ip, r4, #0x20
004132dc  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
004132e0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
004132e4  08 a0 94 e5                                      ldr sl, [r4, #8]
004132e8  00 30 a0 e3                                      mov r3, #0
004132ec  1c 30 84 e5                                      str r3, [r4, #0x1c]
004132f0  4c 30 9a e5                                      ldr r3, [sl, #0x4c]
004132f4  14 80 8d e2                                      add r8, sp, #0x14
004132f8  08 00 93 e5                                      ldr r0, [r3, #8]
004132fc  72 ec fb eb                                      bl #0x30e4cc
00413300  30 00 84 e5                                      str r0, [r4, #0x30]
00413304  4c 30 9a e5                                      ldr r3, [sl, #0x4c]
00413308  14 00 93 e5                                      ldr r0, [r3, #0x14]
0041330c  6e ec fb eb                                      bl #0x30e4cc
00413310  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
00413314  34 00 84 e5                                      str r0, [r4, #0x34]
00413318  03 a0 95 e7                                      ldr sl, [r5, r3]
0041331c  0a 00 a0 e1                                      mov r0, sl
00413320  58 91 fc eb                                      bl #0x337888
00413324  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
00413328  10 20 8d e2                                      add r2, sp, #0x10
0041332c  08 00 a0 e1                                      mov r0, r8
00413330  01 10 8f e0                                      add r1, pc, r1
00413334  6c 03 fc eb                                      bl #0x3140ec
00413338  08 10 a0 e1                                      mov r1, r8
0041333c  0a 00 a0 e1                                      mov r0, sl
00413340  d0 91 fc eb                                      bl #0x337a88
00413344  08 00 a0 e1                                      mov r0, r8
00413348  c1 13 fc eb                                      bl #0x318254
0041334c  4c 30 97 e5                                      ldr r3, [r7, #0x4c]
00413350  06 60 95 e7                                      ldr r6, [r5, r6]
00413354  3c c0 84 e2                                      add ip, r4, #0x3c
00413358  03 50 a0 e1                                      mov r5, r3
0041335c  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
00413360  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00413364  03 00 95 e8                                      ldm r5, {r0, r1}
00413368  03 00 8c e8                                      stm ip, {r0, r1}
0041336c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00413370  00 30 96 e5                                      ldr r3, [r6]
00413374  04 00 a0 e1                                      mov r0, r4
00413378  03 00 52 e1                                      cmp r2, r3
0041337c  15 00 00 1a                                      bne #0x4133d8
00413380  30 d0 8d e2                                      add sp, sp, #0x30
00413384  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00413388  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0041338c  00 30 a0 e3                                      mov r3, #0
00413390  28 30 84 e5                                      str r3, [r4, #0x28]
00413394  02 20 95 e7                                      ldr r2, [r5, r2]
00413398  20 30 84 e5                                      str r3, [r4, #0x20]
0041339c  00 00 92 e5                                      ldr r0, [r2]
004133a0  6f ed fb eb                                      bl #0x30e964
004133a4  41 14 a0 e3                                      mov r1, #0x41000000
004133a8  0a 16 81 e2                                      add r1, r1, #0xa00000
004133ac  6e ee fb eb                                      bl #0x30ed6c
004133b0  38 30 9f e5                                      ldr r3, [pc, #0x38]
004133b4  24 00 84 e5                                      str r0, [r4, #0x24]
004133b8  03 30 95 e7                                      ldr r3, [r5, r3]
004133bc  00 00 93 e5                                      ldr r0, [r3]
004133c0  67 ed fb eb                                      bl #0x30e964
004133c4  41 14 a0 e3                                      mov r1, #0x41000000
004133c8  0a 16 81 e2                                      add r1, r1, #0xa00000
004133cc  66 ee fb eb                                      bl #0x30ed6c
004133d0  2c 00 84 e5                                      str r0, [r4, #0x2c]
004133d4  c3 ff ff ea                                      b #0x4132e8
004133d8  cc eb fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004133dc  40 18 58 00 ac 40 00 00 84 08 00 00 60 4c 4b 00  .byte 0x40, 0x18, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x60, 0x4c, 0x4b, 0x00
004133ec  c4 25 00 00 f8 22 00 00                          .byte 0xc4, 0x25, 0x00, 0x00, 0xf8, 0x22, 0x00, 0x00
