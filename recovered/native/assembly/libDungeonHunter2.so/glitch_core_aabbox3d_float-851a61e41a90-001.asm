; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035c150, declared_size=280, range_size=280, mode=arm
; class-group: glitch::core::aabbox3d<float>
; alias: _ZN6glitch4core8aabbox3dIfE14addInternalBoxERKS2_
; demangled: glitch::core::aabbox3d<float>::addInternalBox(glitch::core::aabbox3d<float> const&)
; decoder-mode: arm
0035c150  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0035c154  0c 80 91 e5                                      ldr r8, [r1, #0xc]
0035c158  00 40 a0 e1                                      mov r4, r0
0035c15c  01 50 a0 e1                                      mov r5, r1
0035c160  0c 10 90 e5                                      ldr r1, [r0, #0xc]
0035c164  08 00 a0 e1                                      mov r0, r8
0035c168  62 c8 fe eb                                      bl #0x30e2f8
0035c16c  10 70 95 e5                                      ldr r7, [r5, #0x10]
0035c170  00 00 50 e3                                      cmp r0, #0
0035c174  14 60 95 e5                                      ldr r6, [r5, #0x14]
0035c178  10 10 94 e5                                      ldr r1, [r4, #0x10]
0035c17c  0c 80 84 15                                      strne r8, [r4, #0xc]
0035c180  07 00 a0 e1                                      mov r0, r7
0035c184  5b c8 fe eb                                      bl #0x30e2f8
0035c188  00 00 50 e3                                      cmp r0, #0
0035c18c  14 10 94 e5                                      ldr r1, [r4, #0x14]
0035c190  10 70 84 15                                      strne r7, [r4, #0x10]
0035c194  06 00 a0 e1                                      mov r0, r6
0035c198  56 c8 fe eb                                      bl #0x30e2f8
0035c19c  00 00 50 e3                                      cmp r0, #0
0035c1a0  00 10 94 e5                                      ldr r1, [r4]
0035c1a4  14 60 84 15                                      strne r6, [r4, #0x14]
0035c1a8  08 00 a0 e1                                      mov r0, r8
0035c1ac  56 c9 fe eb                                      bl #0x30e70c
0035c1b0  00 00 50 e3                                      cmp r0, #0
0035c1b4  04 10 94 e5                                      ldr r1, [r4, #4]
0035c1b8  00 80 84 15                                      strne r8, [r4]
0035c1bc  07 00 a0 e1                                      mov r0, r7
0035c1c0  51 c9 fe eb                                      bl #0x30e70c
0035c1c4  00 00 50 e3                                      cmp r0, #0
0035c1c8  08 10 94 e5                                      ldr r1, [r4, #8]
0035c1cc  04 70 84 15                                      strne r7, [r4, #4]
0035c1d0  06 00 a0 e1                                      mov r0, r6
0035c1d4  4c c9 fe eb                                      bl #0x30e70c
0035c1d8  00 00 50 e3                                      cmp r0, #0
0035c1dc  08 60 84 15                                      strne r6, [r4, #8]
0035c1e0  00 70 95 e5                                      ldr r7, [r5]
0035c1e4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0035c1e8  08 60 95 e5                                      ldr r6, [r5, #8]
0035c1ec  07 00 a0 e1                                      mov r0, r7
0035c1f0  40 c8 fe eb                                      bl #0x30e2f8
0035c1f4  04 50 95 e5                                      ldr r5, [r5, #4]
0035c1f8  00 00 50 e3                                      cmp r0, #0
0035c1fc  10 10 94 e5                                      ldr r1, [r4, #0x10]
0035c200  0c 70 84 15                                      strne r7, [r4, #0xc]
0035c204  05 00 a0 e1                                      mov r0, r5
0035c208  3a c8 fe eb                                      bl #0x30e2f8
0035c20c  00 00 50 e3                                      cmp r0, #0
0035c210  14 10 94 e5                                      ldr r1, [r4, #0x14]
0035c214  10 50 84 15                                      strne r5, [r4, #0x10]
0035c218  06 00 a0 e1                                      mov r0, r6
0035c21c  35 c8 fe eb                                      bl #0x30e2f8
0035c220  00 00 50 e3                                      cmp r0, #0
0035c224  00 10 94 e5                                      ldr r1, [r4]
0035c228  14 60 84 15                                      strne r6, [r4, #0x14]
0035c22c  07 00 a0 e1                                      mov r0, r7
0035c230  35 c9 fe eb                                      bl #0x30e70c
0035c234  00 00 50 e3                                      cmp r0, #0
0035c238  04 10 94 e5                                      ldr r1, [r4, #4]
0035c23c  00 70 84 15                                      strne r7, [r4]
0035c240  05 00 a0 e1                                      mov r0, r5
0035c244  30 c9 fe eb                                      bl #0x30e70c
0035c248  00 00 50 e3                                      cmp r0, #0
0035c24c  04 50 84 15                                      strne r5, [r4, #4]
0035c250  08 10 94 e5                                      ldr r1, [r4, #8]
0035c254  06 00 a0 e1                                      mov r0, r6
0035c258  2b c9 fe eb                                      bl #0x30e70c
0035c25c  00 00 50 e3                                      cmp r0, #0
0035c260  08 60 84 15                                      strne r6, [r4, #8]
0035c264  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00585638, declared_size=372, range_size=372, mode=arm
; class-group: glitch::core::aabbox3d<float>
; alias: _ZNK6glitch4core8aabbox3dIfE8getEdgesEPNS0_8vector3dIfEE
; demangled: glitch::core::aabbox3d<float>::getEdges(glitch::core::vector3d<float>*) const
; decoder-mode: arm
00585638  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0058563c  0c b0 90 e5                                      ldr fp, [r0, #0xc]
00585640  0c d0 4d e2                                      sub sp, sp, #0xc
00585644  01 40 a0 e1                                      mov r4, r1
00585648  00 50 a0 e1                                      mov r5, r0
0058564c  00 10 90 e5                                      ldr r1, [r0]
00585650  0b 00 a0 e1                                      mov r0, fp
00585654  52 25 f6 eb                                      bl #0x30eba4
00585658  3f 14 a0 e3                                      mov r1, #0x3f000000
0058565c  c2 25 f6 eb                                      bl #0x30ed6c
00585660  10 70 95 e5                                      ldr r7, [r5, #0x10]
00585664  04 10 95 e5                                      ldr r1, [r5, #4]
00585668  00 80 a0 e1                                      mov r8, r0
0058566c  07 00 a0 e1                                      mov r0, r7
00585670  4b 25 f6 eb                                      bl #0x30eba4
00585674  3f 14 a0 e3                                      mov r1, #0x3f000000
00585678  bb 25 f6 eb                                      bl #0x30ed6c
0058567c  14 60 95 e5                                      ldr r6, [r5, #0x14]
00585680  08 10 95 e5                                      ldr r1, [r5, #8]
00585684  00 90 a0 e1                                      mov sb, r0
00585688  06 00 a0 e1                                      mov r0, r6
0058568c  44 25 f6 eb                                      bl #0x30eba4
00585690  3f 14 a0 e3                                      mov r1, #0x3f000000
00585694  b4 25 f6 eb                                      bl #0x30ed6c
00585698  0b 10 a0 e1                                      mov r1, fp
0058569c  00 a0 a0 e1                                      mov sl, r0
005856a0  08 00 a0 e1                                      mov r0, r8
005856a4  40 23 f6 eb                                      bl #0x30e3ac
005856a8  07 10 a0 e1                                      mov r1, r7
005856ac  00 00 8d e5                                      str r0, [sp]
005856b0  09 00 a0 e1                                      mov r0, sb
005856b4  3c 23 f6 eb                                      bl #0x30e3ac
005856b8  06 10 a0 e1                                      mov r1, r6
005856bc  00 b0 a0 e1                                      mov fp, r0
005856c0  0a 00 a0 e1                                      mov r0, sl
005856c4  38 23 f6 eb                                      bl #0x30e3ac
005856c8  00 10 9d e5                                      ldr r1, [sp]
005856cc  04 00 8d e5                                      str r0, [sp, #4]
005856d0  08 00 a0 e1                                      mov r0, r8
005856d4  32 25 f6 eb                                      bl #0x30eba4
005856d8  0b 10 a0 e1                                      mov r1, fp
005856dc  00 70 a0 e1                                      mov r7, r0
005856e0  09 00 a0 e1                                      mov r0, sb
005856e4  2e 25 f6 eb                                      bl #0x30eba4
005856e8  04 10 9d e5                                      ldr r1, [sp, #4]
005856ec  00 50 a0 e1                                      mov r5, r0
005856f0  0a 00 a0 e1                                      mov r0, sl
005856f4  2a 25 f6 eb                                      bl #0x30eba4
005856f8  0b 10 a0 e1                                      mov r1, fp
005856fc  00 60 a0 e1                                      mov r6, r0
00585700  08 00 84 e5                                      str r0, [r4, #8]
00585704  00 70 84 e5                                      str r7, [r4]
00585708  09 00 a0 e1                                      mov r0, sb
0058570c  04 50 84 e5                                      str r5, [r4, #4]
00585710  25 23 f6 eb                                      bl #0x30e3ac
00585714  0c 30 84 e2                                      add r3, r4, #0xc
00585718  0c 70 84 e5                                      str r7, [r4, #0xc]
0058571c  08 60 83 e5                                      str r6, [r3, #8]
00585720  04 10 9d e5                                      ldr r1, [sp, #4]
00585724  00 90 a0 e1                                      mov sb, r0
00585728  04 00 83 e5                                      str r0, [r3, #4]
0058572c  0a 00 a0 e1                                      mov r0, sl
00585730  1d 23 f6 eb                                      bl #0x30e3ac
00585734  18 20 84 e2                                      add r2, r4, #0x18
00585738  24 30 84 e2                                      add r3, r4, #0x24
0058573c  18 70 84 e5                                      str r7, [r4, #0x18]
00585740  08 00 82 e5                                      str r0, [r2, #8]
00585744  04 50 82 e5                                      str r5, [r2, #4]
00585748  24 70 84 e5                                      str r7, [r4, #0x24]
0058574c  08 00 83 e5                                      str r0, [r3, #8]
00585750  04 90 83 e5                                      str sb, [r3, #4]
00585754  00 10 9d e5                                      ldr r1, [sp]
00585758  00 a0 a0 e1                                      mov sl, r0
0058575c  08 00 a0 e1                                      mov r0, r8
00585760  11 23 f6 eb                                      bl #0x30e3ac
00585764  30 c0 84 e2                                      add ip, r4, #0x30
00585768  3c 10 84 e2                                      add r1, r4, #0x3c
0058576c  48 20 84 e2                                      add r2, r4, #0x48
00585770  54 30 84 e2                                      add r3, r4, #0x54
00585774  30 00 84 e5                                      str r0, [r4, #0x30]
00585778  08 60 8c e5                                      str r6, [ip, #8]
0058577c  04 50 8c e5                                      str r5, [ip, #4]
00585780  3c 00 84 e5                                      str r0, [r4, #0x3c]
00585784  08 60 81 e5                                      str r6, [r1, #8]
00585788  04 90 81 e5                                      str sb, [r1, #4]
0058578c  48 00 84 e5                                      str r0, [r4, #0x48]
00585790  04 50 82 e5                                      str r5, [r2, #4]
00585794  08 a0 82 e5                                      str sl, [r2, #8]
00585798  54 00 84 e5                                      str r0, [r4, #0x54]
0058579c  08 a0 83 e5                                      str sl, [r3, #8]
005857a0  04 90 83 e5                                      str sb, [r3, #4]
005857a4  0c d0 8d e2                                      add sp, sp, #0xc
005857a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00585970, declared_size=408, range_size=408, mode=arm
; class-group: glitch::core::aabbox3d<float>
; alias: _ZNK6glitch4core8aabbox3dIfE26intersectsWithLine_impl_1dEffffRfS3_
; demangled: glitch::core::aabbox3d<float>::intersectsWithLine_impl_1d(float, float, float, float, float&, float&) const
; decoder-mode: arm
00585970  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00585974  28 40 9d e5                                      ldr r4, [sp, #0x28]
00585978  01 60 a0 e1                                      mov r6, r1
0058597c  03 10 a0 e1                                      mov r1, r3
00585980  04 00 a0 e1                                      mov r0, r4
00585984  03 50 a0 e1                                      mov r5, r3
00585988  02 70 a0 e1                                      mov r7, r2
0058598c  86 22 f6 eb                                      bl #0x30e3ac
00585990  04 10 a0 e1                                      mov r1, r4
00585994  00 b0 a0 e1                                      mov fp, r0
00585998  05 00 a0 e1                                      mov r0, r5
0058599c  5a 23 f6 eb                                      bl #0x30e70c
005859a0  00 00 50 e3                                      cmp r0, #0
005859a4  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
005859a8  30 a0 9d e5                                      ldr sl, [sp, #0x30]
005859ac  35 00 00 0a                                      beq #0x585a88
005859b0  05 00 a0 e1                                      mov r0, r5
005859b4  07 10 a0 e1                                      mov r1, r7
005859b8  4e 22 f6 eb                                      bl #0x30e2f8
005859bc  00 00 50 e3                                      cmp r0, #0
005859c0  3a 00 00 1a                                      bne #0x585ab0
005859c4  04 00 a0 e1                                      mov r0, r4
005859c8  06 10 a0 e1                                      mov r1, r6
005859cc  4e 23 f6 eb                                      bl #0x30e70c
005859d0  00 00 50 e3                                      cmp r0, #0
005859d4  35 00 00 1a                                      bne #0x585ab0
005859d8  05 00 a0 e1                                      mov r0, r5
005859dc  06 10 a0 e1                                      mov r1, r6
005859e0  49 23 f6 eb                                      bl #0x30e70c
005859e4  00 00 50 e3                                      cmp r0, #0
005859e8  00 90 a0 03                                      moveq sb, #0
005859ec  05 00 00 0a                                      beq #0x585a08
005859f0  05 10 a0 e1                                      mov r1, r5
005859f4  06 00 a0 e1                                      mov r0, r6
005859f8  6b 22 f6 eb                                      bl #0x30e3ac
005859fc  0b 10 a0 e1                                      mov r1, fp
00585a00  a3 24 f6 eb                                      bl #0x30ec94
00585a04  00 90 a0 e1                                      mov sb, r0
00585a08  04 00 a0 e1                                      mov r0, r4
00585a0c  07 10 a0 e1                                      mov r1, r7
00585a10  38 22 f6 eb                                      bl #0x30e2f8
00585a14  00 00 50 e3                                      cmp r0, #0
00585a18  07 00 a0 11                                      movne r0, r7
00585a1c  37 00 00 0a                                      beq #0x585b00
00585a20  05 10 a0 e1                                      mov r1, r5
00585a24  60 22 f6 eb                                      bl #0x30e3ac
00585a28  0b 10 a0 e1                                      mov r1, fp
00585a2c  98 24 f6 eb                                      bl #0x30ec94
00585a30  00 40 a0 e1                                      mov r4, r0
00585a34  00 00 98 e5                                      ldr r0, [r8]
00585a38  09 10 a0 e1                                      mov r1, sb
00585a3c  32 23 f6 eb                                      bl #0x30e70c
00585a40  00 00 50 e3                                      cmp r0, #0
00585a44  00 90 88 15                                      strne sb, [r8]
00585a48  00 50 9a e5                                      ldr r5, [sl]
00585a4c  04 10 a0 e1                                      mov r1, r4
00585a50  05 00 a0 e1                                      mov r0, r5
00585a54  27 22 f6 eb                                      bl #0x30e2f8
00585a58  00 00 50 e3                                      cmp r0, #0
00585a5c  05 40 a0 01                                      moveq r4, r5
00585a60  00 40 8a 15                                      strne r4, [sl]
00585a64  00 00 98 e5                                      ldr r0, [r8]
00585a68  04 10 a0 e1                                      mov r1, r4
00585a6c  21 22 f6 eb                                      bl #0x30e2f8
00585a70  00 00 50 e3                                      cmp r0, #0
00585a74  00 00 a0 e3                                      mov r0, #0
00585a78  01 00 a0 13                                      movne r0, #1
00585a7c  01 00 20 e2                                      eor r0, r0, #1
00585a80  70 00 ef e6                                      uxtb r0, r0
00585a84  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00585a88  04 00 a0 e1                                      mov r0, r4
00585a8c  07 10 a0 e1                                      mov r1, r7
00585a90  18 22 f6 eb                                      bl #0x30e2f8
00585a94  00 00 50 e3                                      cmp r0, #0
00585a98  04 00 00 1a                                      bne #0x585ab0
00585a9c  05 00 a0 e1                                      mov r0, r5
00585aa0  06 10 a0 e1                                      mov r1, r6
00585aa4  18 23 f6 eb                                      bl #0x30e70c
00585aa8  00 00 50 e3                                      cmp r0, #0
00585aac  01 00 00 0a                                      beq #0x585ab8
00585ab0  00 00 a0 e3                                      mov r0, #0
00585ab4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00585ab8  05 00 a0 e1                                      mov r0, r5
00585abc  07 10 a0 e1                                      mov r1, r7
00585ac0  0c 22 f6 eb                                      bl #0x30e2f8
00585ac4  00 00 50 e3                                      cmp r0, #0
00585ac8  00 90 a0 03                                      moveq sb, #0
00585acc  05 00 00 0a                                      beq #0x585ae8
00585ad0  05 10 a0 e1                                      mov r1, r5
00585ad4  07 00 a0 e1                                      mov r0, r7
00585ad8  33 22 f6 eb                                      bl #0x30e3ac
00585adc  0b 10 a0 e1                                      mov r1, fp
00585ae0  6b 24 f6 eb                                      bl #0x30ec94
00585ae4  00 90 a0 e1                                      mov sb, r0
00585ae8  04 00 a0 e1                                      mov r0, r4
00585aec  06 10 a0 e1                                      mov r1, r6
00585af0  05 23 f6 eb                                      bl #0x30e70c
00585af4  00 00 50 e3                                      cmp r0, #0
00585af8  06 00 a0 11                                      movne r0, r6
00585afc  c7 ff ff 1a                                      bne #0x585a20
00585b00  fe 45 a0 e3                                      mov r4, #0x3f800000
00585b04  ca ff ff ea                                      b #0x585a34

; FUNCTION 0x00585b08, declared_size=176, range_size=176, mode=arm
; class-group: glitch::core::aabbox3d<float>
; alias: _ZNK6glitch4core8aabbox3dIfE21intersectsWithSegmentERKNS0_6line3dIfEERfS7_
; demangled: glitch::core::aabbox3d<float>::intersectsWithSegment(glitch::core::line3d<float> const&, float&, float&) const
; decoder-mode: arm
00585b08  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00585b0c  03 60 a0 e1                                      mov r6, r3
00585b10  00 30 a0 e3                                      mov r3, #0
00585b14  00 30 82 e5                                      str r3, [r2]
00585b18  fe 35 a0 e3                                      mov r3, #0x3f800000
00585b1c  00 30 86 e5                                      str r3, [r6]
00585b20  01 50 a0 e1                                      mov r5, r1
00585b24  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00585b28  14 d0 4d e2                                      sub sp, sp, #0x14
00585b2c  00 10 90 e5                                      ldr r1, [r0]
00585b30  00 30 95 e5                                      ldr r3, [r5]
00585b34  02 70 a0 e1                                      mov r7, r2
00585b38  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00585b3c  00 40 a0 e1                                      mov r4, r0
00585b40  00 c0 8d e5                                      str ip, [sp]
00585b44  04 70 8d e5                                      str r7, [sp, #4]
00585b48  08 60 8d e5                                      str r6, [sp, #8]
00585b4c  87 ff ff eb                                      bl #0x585970
00585b50  00 00 50 e3                                      cmp r0, #0
00585b54  02 00 00 1a                                      bne #0x585b64
00585b58  00 00 a0 e3                                      mov r0, #0
00585b5c  14 d0 8d e2                                      add sp, sp, #0x14
00585b60  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00585b64  10 c0 95 e5                                      ldr ip, [r5, #0x10]
00585b68  04 10 94 e5                                      ldr r1, [r4, #4]
00585b6c  10 20 94 e5                                      ldr r2, [r4, #0x10]
00585b70  04 30 95 e5                                      ldr r3, [r5, #4]
00585b74  04 00 a0 e1                                      mov r0, r4
00585b78  00 c0 8d e5                                      str ip, [sp]
00585b7c  04 70 8d e5                                      str r7, [sp, #4]
00585b80  08 60 8d e5                                      str r6, [sp, #8]
00585b84  79 ff ff eb                                      bl #0x585970
00585b88  00 00 50 e3                                      cmp r0, #0
00585b8c  f1 ff ff 0a                                      beq #0x585b58
00585b90  14 c0 95 e5                                      ldr ip, [r5, #0x14]
00585b94  08 10 94 e5                                      ldr r1, [r4, #8]
00585b98  14 20 94 e5                                      ldr r2, [r4, #0x14]
00585b9c  08 30 95 e5                                      ldr r3, [r5, #8]
00585ba0  04 00 a0 e1                                      mov r0, r4
00585ba4  00 c0 8d e5                                      str ip, [sp]
00585ba8  04 70 8d e5                                      str r7, [sp, #4]
00585bac  08 60 8d e5                                      str r6, [sp, #8]
00585bb0  6e ff ff eb                                      bl #0x585970
00585bb4  e8 ff ff ea                                      b #0x585b5c
