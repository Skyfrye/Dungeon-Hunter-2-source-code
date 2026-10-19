; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0066a1f0, declared_size=188, range_size=188, mode=arm
; class-group: bool glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExIiLi1000EEEbiRKNS_3res6vectorIiEEiRi
; demangled: bool glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int, 1000>(int, glitch::res::vector<int> const&, int, int&) const
; decoder-mode: arm
0066a1f0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066a1f4  00 50 a0 e1                                      mov r5, r0
0066a1f8  03 00 a0 e1                                      mov r0, r3
0066a1fc  02 40 a0 e1                                      mov r4, r2
0066a200  01 b0 a0 e1                                      mov fp, r1
0066a204  d6 91 f2 eb                                      bl #0x30e964
0066a208  00 70 94 e5                                      ldr r7, [r4]
0066a20c  00 a0 a0 e1                                      mov sl, r0
0066a210  01 70 47 e2                                      sub r7, r7, #1
0066a214  00 00 57 e3                                      cmp r7, #0
0066a218  0d 00 00 da                                      ble #0x66a254
0066a21c  04 90 94 e5                                      ldr sb, [r4, #4]
0066a220  01 80 a0 e3                                      mov r8, #1
0066a224  07 60 88 e0                                      add r6, r8, r7
0066a228  c6 60 a0 e1                                      asr r6, r6, #1
0066a22c  06 01 99 e7                                      ldr r0, [sb, r6, lsl #2]
0066a230  cb 91 f2 eb                                      bl #0x30e964
0066a234  00 10 a0 e1                                      mov r1, r0
0066a238  0a 00 a0 e1                                      mov r0, sl
0066a23c  32 91 f2 eb                                      bl #0x30e70c
0066a240  00 00 50 e3                                      cmp r0, #0
0066a244  01 70 46 12                                      subne r7, r6, #1
0066a248  01 80 86 02                                      addeq r8, r6, #1
0066a24c  07 00 58 e1                                      cmp r8, r7
0066a250  f3 ff ff da                                      ble #0x66a224
0066a254  28 30 9d e5                                      ldr r3, [sp, #0x28]
0066a258  00 70 83 e5                                      str r7, [r3]
0066a25c  04 30 94 e5                                      ldr r3, [r4, #4]
0066a260  07 01 93 e7                                      ldr r0, [r3, r7, lsl #2]
0066a264  be 91 f2 eb                                      bl #0x30e964
0066a268  00 10 a0 e1                                      mov r1, r0
0066a26c  0a 00 a0 e1                                      mov r0, sl
0066a270  45 8f f2 eb                                      bl #0x30df8c
0066a274  00 00 50 e3                                      cmp r0, #0
0066a278  00 70 a0 13                                      movne r7, #0
0066a27c  03 00 00 1a                                      bne #0x66a290
0066a280  00 30 94 e5                                      ldr r3, [r4]
0066a284  01 30 43 e2                                      sub r3, r3, #1
0066a288  03 70 57 e0                                      subs r7, r7, r3
0066a28c  01 70 a0 13                                      movne r7, #1
0066a290  05 00 a0 e1                                      mov r0, r5
0066a294  0b 10 a0 e1                                      mov r1, fp
0066a298  ff fe ff eb                                      bl #0x669e9c
0066a29c  00 00 50 e3                                      cmp r0, #0
0066a2a0  00 00 a0 03                                      moveq r0, #0
0066a2a4  01 00 07 12                                      andne r0, r7, #1
0066a2a8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0066a2ac, declared_size=188, range_size=188, mode=arm
; class-group: bool glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExIiLi1000EEEbiRKNS_3res6vectorIiEEiRiRf
; demangled: bool glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int, 1000>(int, glitch::res::vector<int> const&, int, int&, float&) const
; decoder-mode: arm
0066a2ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066a2b0  14 d0 4d e2                                      sub sp, sp, #0x14
0066a2b4  38 40 9d e5                                      ldr r4, [sp, #0x38]
0066a2b8  02 70 a0 e1                                      mov r7, r2
0066a2bc  03 60 a0 e1                                      mov r6, r3
0066a2c0  00 40 8d e5                                      str r4, [sp]
0066a2c4  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
0066a2c8  c8 ff ff eb                                      bl #0x66a1f0
0066a2cc  00 80 50 e2                                      subs r8, r0, #0
0066a2d0  1b 00 00 0a                                      beq #0x66a344
0066a2d4  00 b0 94 e5                                      ldr fp, [r4]
0066a2d8  04 90 97 e5                                      ldr sb, [r7, #4]
0066a2dc  00 70 a0 e3                                      mov r7, #0
0066a2e0  fe a5 a0 e3                                      mov sl, #0x3f800000
0066a2e4  0b 01 99 e7                                      ldr r0, [sb, fp, lsl #2]
0066a2e8  9d 91 f2 eb                                      bl #0x30e964
0066a2ec  76 90 f2 eb                                      bl #0x30e4cc
0066a2f0  00 40 a0 e1                                      mov r4, r0
0066a2f4  06 00 60 e0                                      rsb r0, r0, r6
0066a2f8  99 91 f2 eb                                      bl #0x30e964
0066a2fc  01 b0 8b e2                                      add fp, fp, #1
0066a300  00 60 a0 e1                                      mov r6, r0
0066a304  0b 01 99 e7                                      ldr r0, [sb, fp, lsl #2]
0066a308  95 91 f2 eb                                      bl #0x30e964
0066a30c  6e 90 f2 eb                                      bl #0x30e4cc
0066a310  00 00 64 e0                                      rsb r0, r4, r0
0066a314  92 91 f2 eb                                      bl #0x30e964
0066a318  00 10 a0 e1                                      mov r1, r0
0066a31c  06 00 a0 e1                                      mov r0, r6
0066a320  5b 92 f2 eb                                      bl #0x30ec94
0066a324  07 10 a0 e1                                      mov r1, r7
0066a328  00 00 85 e5                                      str r0, [r5]
0066a32c  00 40 a0 e1                                      mov r4, r0
0066a330  f5 90 f2 eb                                      bl #0x30e70c
0066a334  00 00 50 e3                                      cmp r0, #0
0066a338  07 40 a0 11                                      movne r4, r7
0066a33c  03 00 00 0a                                      beq #0x66a350
0066a340  00 40 85 e5                                      str r4, [r5]
0066a344  08 00 a0 e1                                      mov r0, r8
0066a348  14 d0 8d e2                                      add sp, sp, #0x14
0066a34c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066a350  04 00 a0 e1                                      mov r0, r4
0066a354  0a 10 a0 e1                                      mov r1, sl
0066a358  eb 90 f2 eb                                      bl #0x30e70c
0066a35c  00 00 50 e3                                      cmp r0, #0
0066a360  0a 40 a0 01                                      moveq r4, sl
0066a364  f5 ff ff ea                                      b #0x66a340

; FUNCTION 0x0066a368, declared_size=556, range_size=556, mode=arm
; class-group: bool glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoIiLi1000EEEbRKNS_3res6vectorIiEEiRii
; demangled: bool glitch::collada::SAnimationAccessor::findKeyFrameNo<int, 1000>(glitch::res::vector<int> const&, int, int&, int) const
; decoder-mode: arm
0066a368  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066a36c  02 00 a0 e1                                      mov r0, r2
0066a370  0c d0 4d e2                                      sub sp, sp, #0xc
0066a374  01 40 a0 e1                                      mov r4, r1
0066a378  03 b0 a0 e1                                      mov fp, r3
0066a37c  78 91 f2 eb                                      bl #0x30e964
0066a380  00 50 94 e5                                      ldr r5, [r4]
0066a384  30 80 9d e5                                      ldr r8, [sp, #0x30]
0066a388  04 70 94 e5                                      ldr r7, [r4, #4]
0066a38c  01 50 45 e2                                      sub r5, r5, #1
0066a390  c8 8f c8 e1                                      bic r8, r8, r8, asr #31
0066a394  05 00 58 e1                                      cmp r8, r5
0066a398  05 80 a0 a1                                      movge r8, r5
0066a39c  00 60 a0 e1                                      mov r6, r0
0066a3a0  08 01 97 e7                                      ldr r0, [r7, r8, lsl #2]
0066a3a4  6e 91 f2 eb                                      bl #0x30e964
0066a3a8  06 10 a0 e1                                      mov r1, r6
0066a3ac  d1 8f f2 eb                                      bl #0x30e2f8
0066a3b0  00 00 50 e3                                      cmp r0, #0
0066a3b4  00 a0 a0 e3                                      mov sl, #0
0066a3b8  01 a0 a0 13                                      movne sl, #1
0066a3bc  7a a0 ef e6                                      uxtb sl, sl
0066a3c0  00 00 5a e3                                      cmp sl, #0
0066a3c4  08 21 a0 e1                                      lsl r2, r8, #2
0066a3c8  2e 00 00 0a                                      beq #0x66a488
0066a3cc  00 00 58 e3                                      cmp r8, #0
0066a3d0  01 80 48 c2                                      subgt r8, r8, #1
0066a3d4  2b 00 00 da                                      ble #0x66a488
0066a3d8  05 00 58 e1                                      cmp r8, r5
0066a3dc  6a 00 00 aa                                      bge #0x66a58c
0066a3e0  08 01 97 e7                                      ldr r0, [r7, r8, lsl #2]
0066a3e4  5e 91 f2 eb                                      bl #0x30e964
0066a3e8  00 10 a0 e1                                      mov r1, r0
0066a3ec  06 00 a0 e1                                      mov r0, r6
0066a3f0  c5 90 f2 eb                                      bl #0x30e70c
0066a3f4  00 00 50 e3                                      cmp r0, #0
0066a3f8  00 a0 a0 e3                                      mov sl, #0
0066a3fc  01 a0 a0 13                                      movne sl, #1
0066a400  08 31 a0 e1                                      lsl r3, r8, #2
0066a404  7a a0 ef e6                                      uxtb sl, sl
0066a408  08 90 a0 e1                                      mov sb, r8
0066a40c  00 00 5a e3                                      cmp sl, #0
0066a410  53 00 00 0a                                      beq #0x66a564
0066a414  00 00 55 e3                                      cmp r5, #0
0066a418  0c 00 00 da                                      ble #0x66a450
0066a41c  01 a0 a0 e3                                      mov sl, #1
0066a420  05 80 8a e0                                      add r8, sl, r5
0066a424  c8 80 a0 e1                                      asr r8, r8, #1
0066a428  08 01 97 e7                                      ldr r0, [r7, r8, lsl #2]
0066a42c  4c 91 f2 eb                                      bl #0x30e964
0066a430  00 10 a0 e1                                      mov r1, r0
0066a434  06 00 a0 e1                                      mov r0, r6
0066a438  b3 90 f2 eb                                      bl #0x30e70c
0066a43c  00 00 50 e3                                      cmp r0, #0
0066a440  01 50 48 12                                      subne r5, r8, #1
0066a444  01 a0 88 02                                      addeq sl, r8, #1
0066a448  05 00 5a e1                                      cmp sl, r5
0066a44c  f3 ff ff da                                      ble #0x66a420
0066a450  00 50 8b e5                                      str r5, [fp]
0066a454  04 30 94 e5                                      ldr r3, [r4, #4]
0066a458  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0066a45c  40 91 f2 eb                                      bl #0x30e964
0066a460  00 10 a0 e1                                      mov r1, r0
0066a464  06 00 a0 e1                                      mov r0, r6
0066a468  c7 8e f2 eb                                      bl #0x30df8c
0066a46c  00 00 50 e3                                      cmp r0, #0
0066a470  39 00 00 1a                                      bne #0x66a55c
0066a474  00 00 94 e5                                      ldr r0, [r4]
0066a478  01 00 40 e2                                      sub r0, r0, #1
0066a47c  05 00 50 e0                                      subs r0, r0, r5
0066a480  01 00 a0 13                                      movne r0, #1
0066a484  32 00 00 ea                                      b #0x66a554
0066a488  08 00 55 e1                                      cmp r5, r8
0066a48c  1f 00 00 da                                      ble #0x66a510
0066a490  01 90 88 e2                                      add sb, r8, #1
0066a494  09 01 97 e7                                      ldr r0, [r7, sb, lsl #2]
0066a498  00 20 8d e5                                      str r2, [sp]
0066a49c  30 91 f2 eb                                      bl #0x30e964
0066a4a0  06 10 a0 e1                                      mov r1, r6
0066a4a4  04 00 8d e5                                      str r0, [sp, #4]
0066a4a8  97 90 f2 eb                                      bl #0x30e70c
0066a4ac  00 20 9d e5                                      ldr r2, [sp]
0066a4b0  09 31 a0 e1                                      lsl r3, sb, #2
0066a4b4  00 00 50 e3                                      cmp r0, #0
0066a4b8  03 10 a0 e1                                      mov r1, r3
0066a4bc  08 90 a0 01                                      moveq sb, r8
0066a4c0  02 30 a0 01                                      moveq r3, r2
0066a4c4  d0 ff ff 0a                                      beq #0x66a40c
0066a4c8  09 00 55 e1                                      cmp r5, sb
0066a4cc  11 00 00 da                                      ble #0x66a518
0066a4d0  01 80 89 e2                                      add r8, sb, #1
0066a4d4  08 01 97 e7                                      ldr r0, [r7, r8, lsl #2]
0066a4d8  00 30 8d e5                                      str r3, [sp]
0066a4dc  20 91 f2 eb                                      bl #0x30e964
0066a4e0  06 10 a0 e1                                      mov r1, r6
0066a4e4  88 90 f2 eb                                      bl #0x30e70c
0066a4e8  00 a0 50 e2                                      subs sl, r0, #0
0066a4ec  b9 ff ff 1a                                      bne #0x66a3d8
0066a4f0  04 10 9d e5                                      ldr r1, [sp, #4]
0066a4f4  06 00 a0 e1                                      mov r0, r6
0066a4f8  83 90 f2 eb                                      bl #0x30e70c
0066a4fc  00 00 50 e3                                      cmp r0, #0
0066a500  01 a0 a0 13                                      movne sl, #1
0066a504  00 30 9d e5                                      ldr r3, [sp]
0066a508  7a a0 ef e6                                      uxtb sl, sl
0066a50c  be ff ff ea                                      b #0x66a40c
0066a510  08 90 a0 e1                                      mov sb, r8
0066a514  08 11 a0 e1                                      lsl r1, r8, #2
0066a518  01 30 a0 e1                                      mov r3, r1
0066a51c  09 80 a0 e1                                      mov r8, sb
0066a520  00 80 8b e5                                      str r8, [fp]
0066a524  04 20 94 e5                                      ldr r2, [r4, #4]
0066a528  03 00 92 e7                                      ldr r0, [r2, r3]
0066a52c  0c 91 f2 eb                                      bl #0x30e964
0066a530  00 10 a0 e1                                      mov r1, r0
0066a534  06 00 a0 e1                                      mov r0, r6
0066a538  93 8e f2 eb                                      bl #0x30df8c
0066a53c  00 00 50 e3                                      cmp r0, #0
0066a540  05 00 00 1a                                      bne #0x66a55c
0066a544  00 00 94 e5                                      ldr r0, [r4]
0066a548  01 00 40 e2                                      sub r0, r0, #1
0066a54c  08 00 50 e0                                      subs r0, r0, r8
0066a550  01 00 a0 13                                      movne r0, #1
0066a554  0c d0 8d e2                                      add sp, sp, #0xc
0066a558  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066a55c  00 00 a0 e3                                      mov r0, #0
0066a560  fb ff ff ea                                      b #0x66a554
0066a564  01 20 89 e2                                      add r2, sb, #1
0066a568  02 01 97 e7                                      ldr r0, [r7, r2, lsl #2]
0066a56c  00 30 8d e5                                      str r3, [sp]
0066a570  fb 90 f2 eb                                      bl #0x30e964
0066a574  06 10 a0 e1                                      mov r1, r6
0066a578  63 90 f2 eb                                      bl #0x30e70c
0066a57c  00 00 50 e3                                      cmp r0, #0
0066a580  00 30 9d e5                                      ldr r3, [sp]
0066a584  a2 ff ff 1a                                      bne #0x66a414
0066a588  e3 ff ff ea                                      b #0x66a51c
0066a58c  08 31 a0 e1                                      lsl r3, r8, #2
0066a590  e2 ff ff ea                                      b #0x66a520

; FUNCTION 0x0066a594, declared_size=76, range_size=76, mode=arm
; class-group: bool glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExIiLi1000EEEbiRKNS_3res6vectorIiEEiRii
; demangled: bool glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int, 1000>(int, glitch::res::vector<int> const&, int, int&, int) const
; decoder-mode: arm
0066a594  70 40 2d e9                                      push {r4, r5, r6, lr}
0066a598  08 d0 4d e2                                      sub sp, sp, #8
0066a59c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0066a5a0  01 40 a0 e1                                      mov r4, r1
0066a5a4  02 10 a0 e1                                      mov r1, r2
0066a5a8  03 20 a0 e1                                      mov r2, r3
0066a5ac  18 30 9d e5                                      ldr r3, [sp, #0x18]
0066a5b0  00 50 a0 e1                                      mov r5, r0
0066a5b4  00 c0 8d e5                                      str ip, [sp]
0066a5b8  6a ff ff eb                                      bl #0x66a368
0066a5bc  04 10 a0 e1                                      mov r1, r4
0066a5c0  00 60 a0 e1                                      mov r6, r0
0066a5c4  05 00 a0 e1                                      mov r0, r5
0066a5c8  33 fe ff eb                                      bl #0x669e9c
0066a5cc  00 00 50 e3                                      cmp r0, #0
0066a5d0  00 00 a0 03                                      moveq r0, #0
0066a5d4  01 00 06 12                                      andne r0, r6, #1
0066a5d8  08 d0 8d e2                                      add sp, sp, #8
0066a5dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0066a5e0, declared_size=240, range_size=240, mode=arm
; class-group: bool glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExIiLi1000EEEbiRKNS_3res6vectorIiEEiRiRfi
; demangled: bool glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int, 1000>(int, glitch::res::vector<int> const&, int, int&, float&, int) const
; decoder-mode: arm
0066a5e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066a5e4  14 d0 4d e2                                      sub sp, sp, #0x14
0066a5e8  38 80 9d e5                                      ldr r8, [sp, #0x38]
0066a5ec  40 c0 9d e5                                      ldr ip, [sp, #0x40]
0066a5f0  02 50 a0 e1                                      mov r5, r2
0066a5f4  01 60 a0 e1                                      mov r6, r1
0066a5f8  03 20 a0 e1                                      mov r2, r3
0066a5fc  05 10 a0 e1                                      mov r1, r5
0066a600  03 40 a0 e1                                      mov r4, r3
0066a604  08 30 a0 e1                                      mov r3, r8
0066a608  00 70 a0 e1                                      mov r7, r0
0066a60c  00 c0 8d e5                                      str ip, [sp]
0066a610  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
0066a614  53 ff ff eb                                      bl #0x66a368
0066a618  06 10 a0 e1                                      mov r1, r6
0066a61c  00 90 a0 e1                                      mov sb, r0
0066a620  07 00 a0 e1                                      mov r0, r7
0066a624  1c fe ff eb                                      bl #0x669e9c
0066a628  00 00 50 e3                                      cmp r0, #0
0066a62c  00 60 a0 03                                      moveq r6, #0
0066a630  01 60 09 12                                      andne r6, sb, #1
0066a634  00 00 56 e3                                      cmp r6, #0
0066a638  1b 00 00 0a                                      beq #0x66a6ac
0066a63c  00 b0 98 e5                                      ldr fp, [r8]
0066a640  04 90 95 e5                                      ldr sb, [r5, #4]
0066a644  00 50 a0 e3                                      mov r5, #0
0066a648  fe 75 a0 e3                                      mov r7, #0x3f800000
0066a64c  0b 01 99 e7                                      ldr r0, [sb, fp, lsl #2]
0066a650  c3 90 f2 eb                                      bl #0x30e964
0066a654  9c 8f f2 eb                                      bl #0x30e4cc
0066a658  00 80 a0 e1                                      mov r8, r0
0066a65c  04 00 60 e0                                      rsb r0, r0, r4
0066a660  bf 90 f2 eb                                      bl #0x30e964
0066a664  01 b0 8b e2                                      add fp, fp, #1
0066a668  00 40 a0 e1                                      mov r4, r0
0066a66c  0b 01 99 e7                                      ldr r0, [sb, fp, lsl #2]
0066a670  bb 90 f2 eb                                      bl #0x30e964
0066a674  94 8f f2 eb                                      bl #0x30e4cc
0066a678  00 00 68 e0                                      rsb r0, r8, r0
0066a67c  b8 90 f2 eb                                      bl #0x30e964
0066a680  00 10 a0 e1                                      mov r1, r0
0066a684  04 00 a0 e1                                      mov r0, r4
0066a688  81 91 f2 eb                                      bl #0x30ec94
0066a68c  05 10 a0 e1                                      mov r1, r5
0066a690  00 00 8a e5                                      str r0, [sl]
0066a694  00 40 a0 e1                                      mov r4, r0
0066a698  1b 90 f2 eb                                      bl #0x30e70c
0066a69c  00 00 50 e3                                      cmp r0, #0
0066a6a0  05 40 a0 11                                      movne r4, r5
0066a6a4  03 00 00 0a                                      beq #0x66a6b8
0066a6a8  00 40 8a e5                                      str r4, [sl]
0066a6ac  06 00 a0 e1                                      mov r0, r6
0066a6b0  14 d0 8d e2                                      add sp, sp, #0x14
0066a6b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066a6b8  04 00 a0 e1                                      mov r0, r4
0066a6bc  07 10 a0 e1                                      mov r1, r7
0066a6c0  11 90 f2 eb                                      bl #0x30e70c
0066a6c4  00 00 50 e3                                      cmp r0, #0
0066a6c8  07 40 a0 01                                      moveq r4, r7
0066a6cc  f5 ff ff ea                                      b #0x66a6a8

; FUNCTION 0x0066a6d0, declared_size=184, range_size=184, mode=arm
; class-group: bool glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoIhLi30EEEbRKNS_3res6vectorIiEEiRi
; demangled: bool glitch::collada::SAnimationAccessor::findKeyFrameNo<unsigned char, 30>(glitch::res::vector<int> const&, int, int&) const
; decoder-mode: arm
0066a6d0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066a6d4  02 00 a0 e1                                      mov r0, r2
0066a6d8  01 40 a0 e1                                      mov r4, r1
0066a6dc  03 b0 a0 e1                                      mov fp, r3
0066a6e0  9f 90 f2 eb                                      bl #0x30e964
0066a6e4  55 15 05 e3                                      movw r1, #0x5555
0066a6e8  05 12 44 e3                                      movt r1, #0x4205
0066a6ec  00 90 a0 e1                                      mov sb, r0
0066a6f0  67 91 f2 eb                                      bl #0x30ec94
0066a6f4  00 50 94 e5                                      ldr r5, [r4]
0066a6f8  00 80 a0 e1                                      mov r8, r0
0066a6fc  01 50 45 e2                                      sub r5, r5, #1
0066a700  00 00 55 e3                                      cmp r5, #0
0066a704  0c 00 00 da                                      ble #0x66a73c
0066a708  04 a0 94 e5                                      ldr sl, [r4, #4]
0066a70c  01 60 a0 e3                                      mov r6, #1
0066a710  05 70 86 e0                                      add r7, r6, r5
0066a714  c7 00 da e7                                      ldrb r0, [sl, r7, asr #1]
0066a718  91 90 f2 eb                                      bl #0x30e964
0066a71c  08 10 a0 e1                                      mov r1, r8
0066a720  f4 8e f2 eb                                      bl #0x30e2f8
0066a724  c7 70 a0 e1                                      asr r7, r7, #1
0066a728  00 00 50 e3                                      cmp r0, #0
0066a72c  01 50 47 12                                      subne r5, r7, #1
0066a730  01 60 87 02                                      addeq r6, r7, #1
0066a734  05 00 56 e1                                      cmp r6, r5
0066a738  f4 ff ff da                                      ble #0x66a710
0066a73c  00 50 8b e5                                      str r5, [fp]
0066a740  04 30 94 e5                                      ldr r3, [r4, #4]
0066a744  05 00 d3 e7                                      ldrb r0, [r3, r5]
0066a748  85 90 f2 eb                                      bl #0x30e964
0066a74c  55 15 05 e3                                      movw r1, #0x5555
0066a750  05 12 44 e3                                      movt r1, #0x4205
0066a754  84 91 f2 eb                                      bl #0x30ed6c
0066a758  00 10 a0 e1                                      mov r1, r0
0066a75c  09 00 a0 e1                                      mov r0, sb
0066a760  09 8e f2 eb                                      bl #0x30df8c
0066a764  00 00 50 e3                                      cmp r0, #0
0066a768  01 00 00 0a                                      beq #0x66a774
0066a76c  00 00 a0 e3                                      mov r0, #0
0066a770  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066a774  00 00 94 e5                                      ldr r0, [r4]
0066a778  01 00 40 e2                                      sub r0, r0, #1
0066a77c  00 00 55 e0                                      subs r0, r5, r0
0066a780  01 00 a0 13                                      movne r0, #1
0066a784  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0066a788, declared_size=60, range_size=60, mode=arm
; class-group: bool glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExIhLi30EEEbiRKNS_3res6vectorIiEEiRi
; demangled: bool glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned char, 30>(int, glitch::res::vector<int> const&, int, int&) const
; decoder-mode: arm
0066a788  70 40 2d e9                                      push {r4, r5, r6, lr}
0066a78c  01 40 a0 e1                                      mov r4, r1
0066a790  02 10 a0 e1                                      mov r1, r2
0066a794  03 20 a0 e1                                      mov r2, r3
0066a798  10 30 9d e5                                      ldr r3, [sp, #0x10]
0066a79c  00 50 a0 e1                                      mov r5, r0
0066a7a0  ca ff ff eb                                      bl #0x66a6d0
0066a7a4  04 10 a0 e1                                      mov r1, r4
0066a7a8  00 60 a0 e1                                      mov r6, r0
0066a7ac  05 00 a0 e1                                      mov r0, r5
0066a7b0  b9 fd ff eb                                      bl #0x669e9c
0066a7b4  00 00 50 e3                                      cmp r0, #0
0066a7b8  00 00 a0 03                                      moveq r0, #0
0066a7bc  01 00 06 12                                      andne r0, r6, #1
0066a7c0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0066a7c4, declared_size=208, range_size=208, mode=arm
; class-group: bool glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExIhLi30EEEbiRKNS_3res6vectorIiEEiRiRf
; demangled: bool glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned char, 30>(int, glitch::res::vector<int> const&, int, int&, float&) const
; decoder-mode: arm
0066a7c4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0066a7c8  10 d0 4d e2                                      sub sp, sp, #0x10
0066a7cc  30 40 9d e5                                      ldr r4, [sp, #0x30]
0066a7d0  02 70 a0 e1                                      mov r7, r2
0066a7d4  03 60 a0 e1                                      mov r6, r3
0066a7d8  00 40 8d e5                                      str r4, [sp]
0066a7dc  34 50 9d e5                                      ldr r5, [sp, #0x34]
0066a7e0  e8 ff ff eb                                      bl #0x66a788
0066a7e4  00 80 50 e2                                      subs r8, r0, #0
0066a7e8  20 00 00 0a                                      beq #0x66a870
0066a7ec  00 30 94 e5                                      ldr r3, [r4]
0066a7f0  04 70 97 e5                                      ldr r7, [r7, #4]
0066a7f4  00 a0 a0 e3                                      mov sl, #0
0066a7f8  fe 95 a0 e3                                      mov sb, #0x3f800000
0066a7fc  03 00 f7 e7                                      ldrb r0, [r7, r3]!
0066a800  57 90 f2 eb                                      bl #0x30e964
0066a804  55 15 05 e3                                      movw r1, #0x5555
0066a808  05 12 44 e3                                      movt r1, #0x4205
0066a80c  56 91 f2 eb                                      bl #0x30ed6c
0066a810  2d 8f f2 eb                                      bl #0x30e4cc
0066a814  00 40 a0 e1                                      mov r4, r0
0066a818  06 00 60 e0                                      rsb r0, r0, r6
0066a81c  50 90 f2 eb                                      bl #0x30e964
0066a820  00 60 a0 e1                                      mov r6, r0
0066a824  01 00 d7 e5                                      ldrb r0, [r7, #1]
0066a828  4d 90 f2 eb                                      bl #0x30e964
0066a82c  55 15 05 e3                                      movw r1, #0x5555
0066a830  05 12 44 e3                                      movt r1, #0x4205
0066a834  4c 91 f2 eb                                      bl #0x30ed6c
0066a838  23 8f f2 eb                                      bl #0x30e4cc
0066a83c  00 00 64 e0                                      rsb r0, r4, r0
0066a840  47 90 f2 eb                                      bl #0x30e964
0066a844  00 10 a0 e1                                      mov r1, r0
0066a848  06 00 a0 e1                                      mov r0, r6
0066a84c  10 91 f2 eb                                      bl #0x30ec94
0066a850  0a 10 a0 e1                                      mov r1, sl
0066a854  00 00 85 e5                                      str r0, [r5]
0066a858  00 40 a0 e1                                      mov r4, r0
0066a85c  aa 8f f2 eb                                      bl #0x30e70c
0066a860  00 00 50 e3                                      cmp r0, #0
0066a864  0a 40 a0 11                                      movne r4, sl
0066a868  03 00 00 0a                                      beq #0x66a87c
0066a86c  00 40 85 e5                                      str r4, [r5]
0066a870  08 00 a0 e1                                      mov r0, r8
0066a874  10 d0 8d e2                                      add sp, sp, #0x10
0066a878  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0066a87c  04 00 a0 e1                                      mov r0, r4
0066a880  09 10 a0 e1                                      mov r1, sb
0066a884  a0 8f f2 eb                                      bl #0x30e70c
0066a888  00 00 50 e3                                      cmp r0, #0
0066a88c  09 40 a0 01                                      moveq r4, sb
0066a890  f5 ff ff ea                                      b #0x66a86c

; FUNCTION 0x0066a894, declared_size=468, range_size=468, mode=arm
; class-group: bool glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoIhLi30EEEbRKNS_3res6vectorIiEEiRii
; demangled: bool glitch::collada::SAnimationAccessor::findKeyFrameNo<unsigned char, 30>(glitch::res::vector<int> const&, int, int&, int) const
; decoder-mode: arm
0066a894  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066a898  1c d0 4d e2                                      sub sp, sp, #0x1c
0066a89c  10 00 8d e5                                      str r0, [sp, #0x10]
0066a8a0  02 00 a0 e1                                      mov r0, r2
0066a8a4  04 20 8d e5                                      str r2, [sp, #4]
0066a8a8  01 40 a0 e1                                      mov r4, r1
0066a8ac  08 30 8d e5                                      str r3, [sp, #8]
0066a8b0  2b 90 f2 eb                                      bl #0x30e964
0066a8b4  55 15 05 e3                                      movw r1, #0x5555
0066a8b8  05 12 44 e3                                      movt r1, #0x4205
0066a8bc  0c 00 8d e5                                      str r0, [sp, #0xc]
0066a8c0  f3 90 f2 eb                                      bl #0x30ec94
0066a8c4  00 60 94 e5                                      ldr r6, [r4]
0066a8c8  40 50 9d e5                                      ldr r5, [sp, #0x40]
0066a8cc  04 80 94 e5                                      ldr r8, [r4, #4]
0066a8d0  01 60 46 e2                                      sub r6, r6, #1
0066a8d4  c5 5f c5 e1                                      bic r5, r5, r5, asr #31
0066a8d8  06 00 55 e1                                      cmp r5, r6
0066a8dc  06 50 a0 a1                                      movge r5, r6
0066a8e0  00 70 a0 e1                                      mov r7, r0
0066a8e4  05 00 d8 e7                                      ldrb r0, [r8, r5]
0066a8e8  1d 90 f2 eb                                      bl #0x30e964
0066a8ec  07 10 a0 e1                                      mov r1, r7
0066a8f0  80 8e f2 eb                                      bl #0x30e2f8
0066a8f4  00 00 50 e3                                      cmp r0, #0
0066a8f8  00 a0 a0 e3                                      mov sl, #0
0066a8fc  01 a0 a0 13                                      movne sl, #1
0066a900  7a a0 ef e6                                      uxtb sl, sl
0066a904  00 00 5a e3                                      cmp sl, #0
0066a908  17 00 00 0a                                      beq #0x66a96c
0066a90c  00 00 55 e3                                      cmp r5, #0
0066a910  01 50 45 c2                                      subgt r5, r5, #1
0066a914  14 00 00 da                                      ble #0x66a96c
0066a918  06 00 55 e1                                      cmp r5, r6
0066a91c  4f 00 00 aa                                      bge #0x66aa60
0066a920  05 00 d8 e7                                      ldrb r0, [r8, r5]
0066a924  0e 90 f2 eb                                      bl #0x30e964
0066a928  00 10 a0 e1                                      mov r1, r0
0066a92c  07 00 a0 e1                                      mov r0, r7
0066a930  75 8f f2 eb                                      bl #0x30e70c
0066a934  00 00 50 e3                                      cmp r0, #0
0066a938  00 a0 a0 e3                                      mov sl, #0
0066a93c  01 a0 a0 13                                      movne sl, #1
0066a940  05 b0 a0 e1                                      mov fp, r5
0066a944  7a a0 ef e6                                      uxtb sl, sl
0066a948  05 90 a0 e1                                      mov sb, r5
0066a94c  00 00 5a e3                                      cmp sl, #0
0066a950  39 00 00 0a                                      beq #0x66aa3c
0066a954  10 00 9d e5                                      ldr r0, [sp, #0x10]
0066a958  0c 00 9d e9                                      ldmib sp, {r2, r3}
0066a95c  04 10 a0 e1                                      mov r1, r4
0066a960  1c d0 8d e2                                      add sp, sp, #0x1c
0066a964  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066a968  58 ff ff ea                                      b #0x66a6d0
0066a96c  05 00 56 e1                                      cmp r6, r5
0066a970  16 00 00 ca                                      bgt #0x66a9d0
0066a974  05 90 a0 e1                                      mov sb, r5
0066a978  09 b0 a0 e1                                      mov fp, sb
0066a97c  09 50 a0 e1                                      mov r5, sb
0066a980  08 30 9d e5                                      ldr r3, [sp, #8]
0066a984  00 50 83 e5                                      str r5, [r3]
0066a988  04 30 94 e5                                      ldr r3, [r4, #4]
0066a98c  0b 00 d3 e7                                      ldrb r0, [r3, fp]
0066a990  f3 8f f2 eb                                      bl #0x30e964
0066a994  55 15 05 e3                                      movw r1, #0x5555
0066a998  05 12 44 e3                                      movt r1, #0x4205
0066a99c  f2 90 f2 eb                                      bl #0x30ed6c
0066a9a0  00 10 a0 e1                                      mov r1, r0
0066a9a4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0066a9a8  77 8d f2 eb                                      bl #0x30df8c
0066a9ac  00 00 50 e3                                      cmp r0, #0
0066a9b0  00 00 a0 13                                      movne r0, #0
0066a9b4  03 00 00 1a                                      bne #0x66a9c8
0066a9b8  00 00 94 e5                                      ldr r0, [r4]
0066a9bc  01 00 40 e2                                      sub r0, r0, #1
0066a9c0  00 00 55 e0                                      subs r0, r5, r0
0066a9c4  01 00 a0 13                                      movne r0, #1
0066a9c8  1c d0 8d e2                                      add sp, sp, #0x1c
0066a9cc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066a9d0  01 90 85 e2                                      add sb, r5, #1
0066a9d4  09 00 d8 e7                                      ldrb r0, [r8, sb]
0066a9d8  e1 8f f2 eb                                      bl #0x30e964
0066a9dc  07 10 a0 e1                                      mov r1, r7
0066a9e0  14 00 8d e5                                      str r0, [sp, #0x14]
0066a9e4  48 8f f2 eb                                      bl #0x30e70c
0066a9e8  00 00 50 e3                                      cmp r0, #0
0066a9ec  09 b0 a0 e1                                      mov fp, sb
0066a9f0  05 b0 a0 01                                      moveq fp, r5
0066a9f4  0b 90 a0 01                                      moveq sb, fp
0066a9f8  d3 ff ff 0a                                      beq #0x66a94c
0066a9fc  09 00 56 e1                                      cmp r6, sb
0066aa00  dc ff ff da                                      ble #0x66a978
0066aa04  01 50 89 e2                                      add r5, sb, #1
0066aa08  05 00 d8 e7                                      ldrb r0, [r8, r5]
0066aa0c  d4 8f f2 eb                                      bl #0x30e964
0066aa10  07 10 a0 e1                                      mov r1, r7
0066aa14  3c 8f f2 eb                                      bl #0x30e70c
0066aa18  00 a0 50 e2                                      subs sl, r0, #0
0066aa1c  bd ff ff 1a                                      bne #0x66a918
0066aa20  14 10 9d e5                                      ldr r1, [sp, #0x14]
0066aa24  07 00 a0 e1                                      mov r0, r7
0066aa28  37 8f f2 eb                                      bl #0x30e70c
0066aa2c  00 00 50 e3                                      cmp r0, #0
0066aa30  01 a0 a0 13                                      movne sl, #1
0066aa34  7a a0 ef e6                                      uxtb sl, sl
0066aa38  c3 ff ff ea                                      b #0x66a94c
0066aa3c  09 80 88 e0                                      add r8, r8, sb
0066aa40  01 00 d8 e5                                      ldrb r0, [r8, #1]
0066aa44  c6 8f f2 eb                                      bl #0x30e964
0066aa48  07 10 a0 e1                                      mov r1, r7
0066aa4c  2e 8f f2 eb                                      bl #0x30e70c
0066aa50  00 00 50 e3                                      cmp r0, #0
0066aa54  09 50 a0 01                                      moveq r5, sb
0066aa58  c8 ff ff 0a                                      beq #0x66a980
0066aa5c  bc ff ff ea                                      b #0x66a954
0066aa60  05 b0 a0 e1                                      mov fp, r5
0066aa64  c5 ff ff ea                                      b #0x66a980

; FUNCTION 0x0066aa68, declared_size=76, range_size=76, mode=arm
; class-group: bool glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExIhLi30EEEbiRKNS_3res6vectorIiEEiRii
; demangled: bool glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned char, 30>(int, glitch::res::vector<int> const&, int, int&, int) const
; decoder-mode: arm
0066aa68  70 40 2d e9                                      push {r4, r5, r6, lr}
0066aa6c  08 d0 4d e2                                      sub sp, sp, #8
0066aa70  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0066aa74  01 40 a0 e1                                      mov r4, r1
0066aa78  02 10 a0 e1                                      mov r1, r2
0066aa7c  03 20 a0 e1                                      mov r2, r3
0066aa80  18 30 9d e5                                      ldr r3, [sp, #0x18]
0066aa84  00 50 a0 e1                                      mov r5, r0
0066aa88  00 c0 8d e5                                      str ip, [sp]
0066aa8c  80 ff ff eb                                      bl #0x66a894
0066aa90  04 10 a0 e1                                      mov r1, r4
0066aa94  00 60 a0 e1                                      mov r6, r0
0066aa98  05 00 a0 e1                                      mov r0, r5
0066aa9c  fe fc ff eb                                      bl #0x669e9c
0066aaa0  00 00 50 e3                                      cmp r0, #0
0066aaa4  00 00 a0 03                                      moveq r0, #0
0066aaa8  01 00 06 12                                      andne r0, r6, #1
0066aaac  08 d0 8d e2                                      add sp, sp, #8
0066aab0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0066aab4, declared_size=260, range_size=260, mode=arm
; class-group: bool glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExIhLi30EEEbiRKNS_3res6vectorIiEEiRiRfi
; demangled: bool glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned char, 30>(int, glitch::res::vector<int> const&, int, int&, float&, int) const
; decoder-mode: arm
0066aab4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0066aab8  10 d0 4d e2                                      sub sp, sp, #0x10
0066aabc  30 80 9d e5                                      ldr r8, [sp, #0x30]
0066aac0  38 c0 9d e5                                      ldr ip, [sp, #0x38]
0066aac4  02 50 a0 e1                                      mov r5, r2
0066aac8  01 60 a0 e1                                      mov r6, r1
0066aacc  03 20 a0 e1                                      mov r2, r3
0066aad0  05 10 a0 e1                                      mov r1, r5
0066aad4  03 40 a0 e1                                      mov r4, r3
0066aad8  08 30 a0 e1                                      mov r3, r8
0066aadc  00 70 a0 e1                                      mov r7, r0
0066aae0  00 c0 8d e5                                      str ip, [sp]
0066aae4  34 a0 9d e5                                      ldr sl, [sp, #0x34]
0066aae8  69 ff ff eb                                      bl #0x66a894
0066aaec  06 10 a0 e1                                      mov r1, r6
0066aaf0  00 90 a0 e1                                      mov sb, r0
0066aaf4  07 00 a0 e1                                      mov r0, r7
0066aaf8  e7 fc ff eb                                      bl #0x669e9c
0066aafc  00 00 50 e3                                      cmp r0, #0
0066ab00  00 60 a0 03                                      moveq r6, #0
0066ab04  01 60 09 12                                      andne r6, sb, #1
0066ab08  00 00 56 e3                                      cmp r6, #0
0066ab0c  20 00 00 0a                                      beq #0x66ab94
0066ab10  00 30 98 e5                                      ldr r3, [r8]
0066ab14  04 50 95 e5                                      ldr r5, [r5, #4]
0066ab18  00 80 a0 e3                                      mov r8, #0
0066ab1c  fe 95 a0 e3                                      mov sb, #0x3f800000
0066ab20  03 00 f5 e7                                      ldrb r0, [r5, r3]!
0066ab24  8e 8f f2 eb                                      bl #0x30e964
0066ab28  55 15 05 e3                                      movw r1, #0x5555
0066ab2c  05 12 44 e3                                      movt r1, #0x4205
0066ab30  8d 90 f2 eb                                      bl #0x30ed6c
0066ab34  64 8e f2 eb                                      bl #0x30e4cc
0066ab38  00 70 a0 e1                                      mov r7, r0
0066ab3c  04 00 60 e0                                      rsb r0, r0, r4
0066ab40  87 8f f2 eb                                      bl #0x30e964
0066ab44  00 40 a0 e1                                      mov r4, r0
0066ab48  01 00 d5 e5                                      ldrb r0, [r5, #1]
0066ab4c  84 8f f2 eb                                      bl #0x30e964
0066ab50  55 15 05 e3                                      movw r1, #0x5555
0066ab54  05 12 44 e3                                      movt r1, #0x4205
0066ab58  83 90 f2 eb                                      bl #0x30ed6c
0066ab5c  5a 8e f2 eb                                      bl #0x30e4cc
0066ab60  00 00 67 e0                                      rsb r0, r7, r0
0066ab64  7e 8f f2 eb                                      bl #0x30e964
0066ab68  00 10 a0 e1                                      mov r1, r0
0066ab6c  04 00 a0 e1                                      mov r0, r4
0066ab70  47 90 f2 eb                                      bl #0x30ec94
0066ab74  08 10 a0 e1                                      mov r1, r8
0066ab78  00 00 8a e5                                      str r0, [sl]
0066ab7c  00 40 a0 e1                                      mov r4, r0
0066ab80  e1 8e f2 eb                                      bl #0x30e70c
0066ab84  00 00 50 e3                                      cmp r0, #0
0066ab88  08 40 a0 11                                      movne r4, r8
0066ab8c  03 00 00 0a                                      beq #0x66aba0
0066ab90  00 40 8a e5                                      str r4, [sl]
0066ab94  06 00 a0 e1                                      mov r0, r6
0066ab98  10 d0 8d e2                                      add sp, sp, #0x10
0066ab9c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0066aba0  04 00 a0 e1                                      mov r0, r4
0066aba4  09 10 a0 e1                                      mov r1, sb
0066aba8  d7 8e f2 eb                                      bl #0x30e70c
0066abac  00 00 50 e3                                      cmp r0, #0
0066abb0  09 40 a0 01                                      moveq r4, sb
0066abb4  f5 ff ff ea                                      b #0x66ab90

; FUNCTION 0x0066abb8, declared_size=192, range_size=192, mode=arm
; class-group: bool glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoItLi30EEEbRKNS_3res6vectorIiEEiRi
; demangled: bool glitch::collada::SAnimationAccessor::findKeyFrameNo<unsigned short, 30>(glitch::res::vector<int> const&, int, int&) const
; decoder-mode: arm
0066abb8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066abbc  02 00 a0 e1                                      mov r0, r2
0066abc0  01 40 a0 e1                                      mov r4, r1
0066abc4  03 b0 a0 e1                                      mov fp, r3
0066abc8  65 8f f2 eb                                      bl #0x30e964
0066abcc  55 15 05 e3                                      movw r1, #0x5555
0066abd0  05 12 44 e3                                      movt r1, #0x4205
0066abd4  00 90 a0 e1                                      mov sb, r0
0066abd8  2d 90 f2 eb                                      bl #0x30ec94
0066abdc  00 60 94 e5                                      ldr r6, [r4]
0066abe0  00 80 a0 e1                                      mov r8, r0
0066abe4  01 60 46 e2                                      sub r6, r6, #1
0066abe8  00 00 56 e3                                      cmp r6, #0
0066abec  0d 00 00 da                                      ble #0x66ac28
0066abf0  04 a0 94 e5                                      ldr sl, [r4, #4]
0066abf4  01 70 a0 e3                                      mov r7, #1
0066abf8  06 50 87 e0                                      add r5, r7, r6
0066abfc  c5 50 a0 e1                                      asr r5, r5, #1
0066ac00  85 30 a0 e1                                      lsl r3, r5, #1
0066ac04  b3 00 9a e1                                      ldrh r0, [sl, r3]
0066ac08  55 8f f2 eb                                      bl #0x30e964
0066ac0c  08 10 a0 e1                                      mov r1, r8
0066ac10  b8 8d f2 eb                                      bl #0x30e2f8
0066ac14  00 00 50 e3                                      cmp r0, #0
0066ac18  01 60 45 12                                      subne r6, r5, #1
0066ac1c  01 70 85 02                                      addeq r7, r5, #1
0066ac20  06 00 57 e1                                      cmp r7, r6
0066ac24  f3 ff ff da                                      ble #0x66abf8
0066ac28  00 60 8b e5                                      str r6, [fp]
0066ac2c  04 20 94 e5                                      ldr r2, [r4, #4]
0066ac30  86 30 a0 e1                                      lsl r3, r6, #1
0066ac34  b3 00 92 e1                                      ldrh r0, [r2, r3]
0066ac38  49 8f f2 eb                                      bl #0x30e964
0066ac3c  55 15 05 e3                                      movw r1, #0x5555
0066ac40  05 12 44 e3                                      movt r1, #0x4205
0066ac44  48 90 f2 eb                                      bl #0x30ed6c
0066ac48  00 10 a0 e1                                      mov r1, r0
0066ac4c  09 00 a0 e1                                      mov r0, sb
0066ac50  cd 8c f2 eb                                      bl #0x30df8c
0066ac54  00 00 50 e3                                      cmp r0, #0
0066ac58  01 00 00 0a                                      beq #0x66ac64
0066ac5c  00 00 a0 e3                                      mov r0, #0
0066ac60  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066ac64  00 00 94 e5                                      ldr r0, [r4]
0066ac68  01 00 40 e2                                      sub r0, r0, #1
0066ac6c  00 00 56 e0                                      subs r0, r6, r0
0066ac70  01 00 a0 13                                      movne r0, #1
0066ac74  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0066ac78, declared_size=60, range_size=60, mode=arm
; class-group: bool glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExItLi30EEEbiRKNS_3res6vectorIiEEiRi
; demangled: bool glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned short, 30>(int, glitch::res::vector<int> const&, int, int&) const
; decoder-mode: arm
0066ac78  70 40 2d e9                                      push {r4, r5, r6, lr}
0066ac7c  01 40 a0 e1                                      mov r4, r1
0066ac80  02 10 a0 e1                                      mov r1, r2
0066ac84  03 20 a0 e1                                      mov r2, r3
0066ac88  10 30 9d e5                                      ldr r3, [sp, #0x10]
0066ac8c  00 50 a0 e1                                      mov r5, r0
0066ac90  c8 ff ff eb                                      bl #0x66abb8
0066ac94  04 10 a0 e1                                      mov r1, r4
0066ac98  00 60 a0 e1                                      mov r6, r0
0066ac9c  05 00 a0 e1                                      mov r0, r5
0066aca0  7d fc ff eb                                      bl #0x669e9c
0066aca4  00 00 50 e3                                      cmp r0, #0
0066aca8  00 00 a0 03                                      moveq r0, #0
0066acac  01 00 06 12                                      andne r0, r6, #1
0066acb0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0066acb4, declared_size=216, range_size=216, mode=arm
; class-group: bool glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExItLi30EEEbiRKNS_3res6vectorIiEEiRiRf
; demangled: bool glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned short, 30>(int, glitch::res::vector<int> const&, int, int&, float&) const
; decoder-mode: arm
0066acb4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0066acb8  10 d0 4d e2                                      sub sp, sp, #0x10
0066acbc  30 40 9d e5                                      ldr r4, [sp, #0x30]
0066acc0  02 70 a0 e1                                      mov r7, r2
0066acc4  03 60 a0 e1                                      mov r6, r3
0066acc8  00 40 8d e5                                      str r4, [sp]
0066accc  34 50 9d e5                                      ldr r5, [sp, #0x34]
0066acd0  e8 ff ff eb                                      bl #0x66ac78
0066acd4  00 80 50 e2                                      subs r8, r0, #0
0066acd8  22 00 00 0a                                      beq #0x66ad68
0066acdc  00 a0 94 e5                                      ldr sl, [r4]
0066ace0  04 70 97 e5                                      ldr r7, [r7, #4]
0066ace4  00 90 a0 e3                                      mov sb, #0
0066ace8  8a 30 a0 e1                                      lsl r3, sl, #1
0066acec  b3 00 97 e1                                      ldrh r0, [r7, r3]
0066acf0  1b 8f f2 eb                                      bl #0x30e964
0066acf4  55 15 05 e3                                      movw r1, #0x5555
0066acf8  05 12 44 e3                                      movt r1, #0x4205
0066acfc  1a 90 f2 eb                                      bl #0x30ed6c
0066ad00  f1 8d f2 eb                                      bl #0x30e4cc
0066ad04  00 40 a0 e1                                      mov r4, r0
0066ad08  06 00 60 e0                                      rsb r0, r0, r6
0066ad0c  14 8f f2 eb                                      bl #0x30e964
0066ad10  8a 70 87 e0                                      add r7, r7, sl, lsl #1
0066ad14  00 60 a0 e1                                      mov r6, r0
0066ad18  b2 00 d7 e1                                      ldrh r0, [r7, #2]
0066ad1c  10 8f f2 eb                                      bl #0x30e964
0066ad20  55 15 05 e3                                      movw r1, #0x5555
0066ad24  05 12 44 e3                                      movt r1, #0x4205
0066ad28  0f 90 f2 eb                                      bl #0x30ed6c
0066ad2c  e6 8d f2 eb                                      bl #0x30e4cc
0066ad30  00 00 64 e0                                      rsb r0, r4, r0
0066ad34  0a 8f f2 eb                                      bl #0x30e964
0066ad38  00 10 a0 e1                                      mov r1, r0
0066ad3c  06 00 a0 e1                                      mov r0, r6
0066ad40  d3 8f f2 eb                                      bl #0x30ec94
0066ad44  09 10 a0 e1                                      mov r1, sb
0066ad48  00 00 85 e5                                      str r0, [r5]
0066ad4c  00 40 a0 e1                                      mov r4, r0
0066ad50  6d 8e f2 eb                                      bl #0x30e70c
0066ad54  00 00 50 e3                                      cmp r0, #0
0066ad58  fe 65 a0 e3                                      mov r6, #0x3f800000
0066ad5c  09 40 a0 11                                      movne r4, sb
0066ad60  03 00 00 0a                                      beq #0x66ad74
0066ad64  00 40 85 e5                                      str r4, [r5]
0066ad68  08 00 a0 e1                                      mov r0, r8
0066ad6c  10 d0 8d e2                                      add sp, sp, #0x10
0066ad70  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0066ad74  04 00 a0 e1                                      mov r0, r4
0066ad78  06 10 a0 e1                                      mov r1, r6
0066ad7c  62 8e f2 eb                                      bl #0x30e70c
0066ad80  00 00 50 e3                                      cmp r0, #0
0066ad84  06 40 a0 01                                      moveq r4, r6
0066ad88  f5 ff ff ea                                      b #0x66ad64

; FUNCTION 0x0066b130, declared_size=504, range_size=504, mode=arm
; class-group: bool glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoItLi30EEEbRKNS_3res6vectorIiEEiRii
; demangled: bool glitch::collada::SAnimationAccessor::findKeyFrameNo<unsigned short, 30>(glitch::res::vector<int> const&, int, int&, int) const
; decoder-mode: arm
0066b130  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066b134  24 d0 4d e2                                      sub sp, sp, #0x24
0066b138  18 00 8d e5                                      str r0, [sp, #0x18]
0066b13c  02 00 a0 e1                                      mov r0, r2
0066b140  0c 20 8d e5                                      str r2, [sp, #0xc]
0066b144  01 40 a0 e1                                      mov r4, r1
0066b148  10 30 8d e5                                      str r3, [sp, #0x10]
0066b14c  04 8e f2 eb                                      bl #0x30e964
0066b150  55 15 05 e3                                      movw r1, #0x5555
0066b154  05 12 44 e3                                      movt r1, #0x4205
0066b158  14 00 8d e5                                      str r0, [sp, #0x14]
0066b15c  cc 8e f2 eb                                      bl #0x30ec94
0066b160  00 60 94 e5                                      ldr r6, [r4]
0066b164  48 50 9d e5                                      ldr r5, [sp, #0x48]
0066b168  04 80 94 e5                                      ldr r8, [r4, #4]
0066b16c  01 60 46 e2                                      sub r6, r6, #1
0066b170  c5 5f c5 e1                                      bic r5, r5, r5, asr #31
0066b174  06 00 55 e1                                      cmp r5, r6
0066b178  06 50 a0 a1                                      movge r5, r6
0066b17c  85 30 a0 e1                                      lsl r3, r5, #1
0066b180  08 30 8d e5                                      str r3, [sp, #8]
0066b184  00 70 a0 e1                                      mov r7, r0
0066b188  b3 00 98 e1                                      ldrh r0, [r8, r3]
0066b18c  f4 8d f2 eb                                      bl #0x30e964
0066b190  07 10 a0 e1                                      mov r1, r7
0066b194  57 8c f2 eb                                      bl #0x30e2f8
0066b198  00 00 50 e3                                      cmp r0, #0
0066b19c  00 a0 a0 e3                                      mov sl, #0
0066b1a0  01 a0 a0 13                                      movne sl, #1
0066b1a4  7a a0 ef e6                                      uxtb sl, sl
0066b1a8  00 00 5a e3                                      cmp sl, #0
0066b1ac  19 00 00 0a                                      beq #0x66b218
0066b1b0  00 00 55 e3                                      cmp r5, #0
0066b1b4  01 50 45 c2                                      subgt r5, r5, #1
0066b1b8  85 30 a0 c1                                      lslgt r3, r5, #1
0066b1bc  15 00 00 da                                      ble #0x66b218
0066b1c0  06 00 55 e1                                      cmp r5, r6
0066b1c4  55 00 00 aa                                      bge #0x66b320
0066b1c8  b3 00 98 e1                                      ldrh r0, [r8, r3]
0066b1cc  03 90 a0 e1                                      mov sb, r3
0066b1d0  e3 8d f2 eb                                      bl #0x30e964
0066b1d4  00 10 a0 e1                                      mov r1, r0
0066b1d8  07 00 a0 e1                                      mov r0, r7
0066b1dc  4a 8d f2 eb                                      bl #0x30e70c
0066b1e0  00 00 50 e3                                      cmp r0, #0
0066b1e4  00 a0 a0 e3                                      mov sl, #0
0066b1e8  01 a0 a0 13                                      movne sl, #1
0066b1ec  7a a0 ef e6                                      uxtb sl, sl
0066b1f0  05 b0 a0 e1                                      mov fp, r5
0066b1f4  00 00 5a e3                                      cmp sl, #0
0066b1f8  3d 00 00 0a                                      beq #0x66b2f4
0066b1fc  18 00 9d e5                                      ldr r0, [sp, #0x18]
0066b200  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0066b204  10 30 9d e5                                      ldr r3, [sp, #0x10]
0066b208  04 10 a0 e1                                      mov r1, r4
0066b20c  24 d0 8d e2                                      add sp, sp, #0x24
0066b210  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066b214  67 fe ff ea                                      b #0x66abb8
0066b218  05 00 56 e1                                      cmp r6, r5
0066b21c  1c 00 00 da                                      ble #0x66b294
0066b220  01 b0 85 e2                                      add fp, r5, #1
0066b224  8b 90 a0 e1                                      lsl sb, fp, #1
0066b228  b9 00 98 e1                                      ldrh r0, [r8, sb]
0066b22c  cc 8d f2 eb                                      bl #0x30e964
0066b230  07 10 a0 e1                                      mov r1, r7
0066b234  1c 00 8d e5                                      str r0, [sp, #0x1c]
0066b238  33 8d f2 eb                                      bl #0x30e70c
0066b23c  00 00 50 e3                                      cmp r0, #0
0066b240  09 30 a0 e1                                      mov r3, sb
0066b244  32 00 00 0a                                      beq #0x66b314
0066b248  0b 00 56 e1                                      cmp r6, fp
0066b24c  12 00 00 da                                      ble #0x66b29c
0066b250  01 50 8b e2                                      add r5, fp, #1
0066b254  85 30 a0 e1                                      lsl r3, r5, #1
0066b258  b3 00 98 e1                                      ldrh r0, [r8, r3]
0066b25c  04 30 8d e5                                      str r3, [sp, #4]
0066b260  bf 8d f2 eb                                      bl #0x30e964
0066b264  07 10 a0 e1                                      mov r1, r7
0066b268  27 8d f2 eb                                      bl #0x30e70c
0066b26c  00 a0 50 e2                                      subs sl, r0, #0
0066b270  04 30 9d e5                                      ldr r3, [sp, #4]
0066b274  d1 ff ff 1a                                      bne #0x66b1c0
0066b278  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0066b27c  07 00 a0 e1                                      mov r0, r7
0066b280  21 8d f2 eb                                      bl #0x30e70c
0066b284  00 00 50 e3                                      cmp r0, #0
0066b288  01 a0 a0 13                                      movne sl, #1
0066b28c  7a a0 ef e6                                      uxtb sl, sl
0066b290  d7 ff ff ea                                      b #0x66b1f4
0066b294  05 b0 a0 e1                                      mov fp, r5
0066b298  85 30 a0 e1                                      lsl r3, r5, #1
0066b29c  03 90 a0 e1                                      mov sb, r3
0066b2a0  0b 50 a0 e1                                      mov r5, fp
0066b2a4  10 30 9d e5                                      ldr r3, [sp, #0x10]
0066b2a8  00 50 83 e5                                      str r5, [r3]
0066b2ac  04 30 94 e5                                      ldr r3, [r4, #4]
0066b2b0  b9 00 93 e1                                      ldrh r0, [r3, sb]
0066b2b4  aa 8d f2 eb                                      bl #0x30e964
0066b2b8  55 15 05 e3                                      movw r1, #0x5555
0066b2bc  05 12 44 e3                                      movt r1, #0x4205
0066b2c0  a9 8e f2 eb                                      bl #0x30ed6c
0066b2c4  00 10 a0 e1                                      mov r1, r0
0066b2c8  14 00 9d e5                                      ldr r0, [sp, #0x14]
0066b2cc  2e 8b f2 eb                                      bl #0x30df8c
0066b2d0  00 00 50 e3                                      cmp r0, #0
0066b2d4  00 00 a0 13                                      movne r0, #0
0066b2d8  03 00 00 1a                                      bne #0x66b2ec
0066b2dc  00 00 94 e5                                      ldr r0, [r4]
0066b2e0  01 00 40 e2                                      sub r0, r0, #1
0066b2e4  00 00 55 e0                                      subs r0, r5, r0
0066b2e8  01 00 a0 13                                      movne r0, #1
0066b2ec  24 d0 8d e2                                      add sp, sp, #0x24
0066b2f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066b2f4  8b 80 88 e0                                      add r8, r8, fp, lsl #1
0066b2f8  b2 00 d8 e1                                      ldrh r0, [r8, #2]
0066b2fc  98 8d f2 eb                                      bl #0x30e964
0066b300  07 10 a0 e1                                      mov r1, r7
0066b304  00 8d f2 eb                                      bl #0x30e70c
0066b308  00 00 50 e3                                      cmp r0, #0
0066b30c  ba ff ff 1a                                      bne #0x66b1fc
0066b310  e2 ff ff ea                                      b #0x66b2a0
0066b314  08 90 9d e5                                      ldr sb, [sp, #8]
0066b318  05 b0 a0 e1                                      mov fp, r5
0066b31c  b4 ff ff ea                                      b #0x66b1f4
0066b320  03 90 a0 e1                                      mov sb, r3
0066b324  de ff ff ea                                      b #0x66b2a4

; FUNCTION 0x0066b328, declared_size=76, range_size=76, mode=arm
; class-group: bool glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExItLi30EEEbiRKNS_3res6vectorIiEEiRii
; demangled: bool glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned short, 30>(int, glitch::res::vector<int> const&, int, int&, int) const
; decoder-mode: arm
0066b328  70 40 2d e9                                      push {r4, r5, r6, lr}
0066b32c  08 d0 4d e2                                      sub sp, sp, #8
0066b330  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0066b334  01 40 a0 e1                                      mov r4, r1
0066b338  02 10 a0 e1                                      mov r1, r2
0066b33c  03 20 a0 e1                                      mov r2, r3
0066b340  18 30 9d e5                                      ldr r3, [sp, #0x18]
0066b344  00 50 a0 e1                                      mov r5, r0
0066b348  00 c0 8d e5                                      str ip, [sp]
0066b34c  77 ff ff eb                                      bl #0x66b130
0066b350  04 10 a0 e1                                      mov r1, r4
0066b354  00 60 a0 e1                                      mov r6, r0
0066b358  05 00 a0 e1                                      mov r0, r5
0066b35c  ce fa ff eb                                      bl #0x669e9c
0066b360  00 00 50 e3                                      cmp r0, #0
0066b364  00 00 a0 03                                      moveq r0, #0
0066b368  01 00 06 12                                      andne r0, r6, #1
0066b36c  08 d0 8d e2                                      add sp, sp, #8
0066b370  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0066b550, declared_size=268, range_size=268, mode=arm
; class-group: bool glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExItLi30EEEbiRKNS_3res6vectorIiEEiRiRfi
; demangled: bool glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned short, 30>(int, glitch::res::vector<int> const&, int, int&, float&, int) const
; decoder-mode: arm
0066b550  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0066b554  10 d0 4d e2                                      sub sp, sp, #0x10
0066b558  30 80 9d e5                                      ldr r8, [sp, #0x30]
0066b55c  38 c0 9d e5                                      ldr ip, [sp, #0x38]
0066b560  02 50 a0 e1                                      mov r5, r2
0066b564  01 60 a0 e1                                      mov r6, r1
0066b568  03 20 a0 e1                                      mov r2, r3
0066b56c  05 10 a0 e1                                      mov r1, r5
0066b570  03 40 a0 e1                                      mov r4, r3
0066b574  08 30 a0 e1                                      mov r3, r8
0066b578  00 70 a0 e1                                      mov r7, r0
0066b57c  00 c0 8d e5                                      str ip, [sp]
0066b580  34 a0 9d e5                                      ldr sl, [sp, #0x34]
0066b584  e9 fe ff eb                                      bl #0x66b130
0066b588  06 10 a0 e1                                      mov r1, r6
0066b58c  00 90 a0 e1                                      mov sb, r0
0066b590  07 00 a0 e1                                      mov r0, r7
0066b594  40 fa ff eb                                      bl #0x669e9c
0066b598  00 00 50 e3                                      cmp r0, #0
0066b59c  00 60 a0 03                                      moveq r6, #0
0066b5a0  01 60 09 12                                      andne r6, sb, #1
0066b5a4  00 00 56 e3                                      cmp r6, #0
0066b5a8  22 00 00 0a                                      beq #0x66b638
0066b5ac  00 80 98 e5                                      ldr r8, [r8]
0066b5b0  04 70 95 e5                                      ldr r7, [r5, #4]
0066b5b4  00 90 a0 e3                                      mov sb, #0
0066b5b8  88 30 a0 e1                                      lsl r3, r8, #1
0066b5bc  b3 00 97 e1                                      ldrh r0, [r7, r3]
0066b5c0  e7 8c f2 eb                                      bl #0x30e964
0066b5c4  55 15 05 e3                                      movw r1, #0x5555
0066b5c8  05 12 44 e3                                      movt r1, #0x4205
0066b5cc  e6 8d f2 eb                                      bl #0x30ed6c
0066b5d0  bd 8b f2 eb                                      bl #0x30e4cc
0066b5d4  00 50 a0 e1                                      mov r5, r0
0066b5d8  04 00 60 e0                                      rsb r0, r0, r4
0066b5dc  e0 8c f2 eb                                      bl #0x30e964
0066b5e0  88 70 87 e0                                      add r7, r7, r8, lsl #1
0066b5e4  00 40 a0 e1                                      mov r4, r0
0066b5e8  b2 00 d7 e1                                      ldrh r0, [r7, #2]
0066b5ec  dc 8c f2 eb                                      bl #0x30e964
0066b5f0  55 15 05 e3                                      movw r1, #0x5555
0066b5f4  05 12 44 e3                                      movt r1, #0x4205
0066b5f8  db 8d f2 eb                                      bl #0x30ed6c
0066b5fc  b2 8b f2 eb                                      bl #0x30e4cc
0066b600  00 00 65 e0                                      rsb r0, r5, r0
0066b604  d6 8c f2 eb                                      bl #0x30e964
0066b608  00 10 a0 e1                                      mov r1, r0
0066b60c  04 00 a0 e1                                      mov r0, r4
0066b610  9f 8d f2 eb                                      bl #0x30ec94
0066b614  09 10 a0 e1                                      mov r1, sb
0066b618  00 00 8a e5                                      str r0, [sl]
0066b61c  00 40 a0 e1                                      mov r4, r0
0066b620  39 8c f2 eb                                      bl #0x30e70c
0066b624  00 00 50 e3                                      cmp r0, #0
0066b628  fe 55 a0 e3                                      mov r5, #0x3f800000
0066b62c  09 40 a0 11                                      movne r4, sb
0066b630  03 00 00 0a                                      beq #0x66b644
0066b634  00 40 8a e5                                      str r4, [sl]
0066b638  06 00 a0 e1                                      mov r0, r6
0066b63c  10 d0 8d e2                                      add sp, sp, #0x10
0066b640  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0066b644  04 00 a0 e1                                      mov r0, r4
0066b648  05 10 a0 e1                                      mov r1, r5
0066b64c  2e 8c f2 eb                                      bl #0x30e70c
0066b650  00 00 50 e3                                      cmp r0, #0
0066b654  05 40 a0 01                                      moveq r4, r5
0066b658  f5 ff ff ea                                      b #0x66b634
