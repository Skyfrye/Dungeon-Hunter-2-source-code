; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00608fdc, declared_size=416, range_size=416, mode=arm
; class-group: glitch::core::vector2d<float>* glitch::core
; alias: _ZN6glitch4core13copyComponentINS0_8vector2dIfEENS2_IsEENS0_27STransformTexCoordComponentEEEPT_S7_jPKT0_jtRKT1_
; demangled: glitch::core::vector2d<float>* glitch::core::copyComponent<glitch::core::vector2d<float>, glitch::core::vector2d<short>, glitch::core::STransformTexCoordComponent>(glitch::core::vector2d<float>*, unsigned int, glitch::core::vector2d<short> const*, unsigned int, unsigned short, glitch::core::STransformTexCoordComponent const&)
; decoder-mode: arm
00608fdc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00608fe0  14 d0 4d e2                                      sub sp, sp, #0x14
00608fe4  3c 40 9d e5                                      ldr r4, [sp, #0x3c]
00608fe8  08 00 8d e5                                      str r0, [sp, #8]
00608fec  01 50 a0 e1                                      mov r5, r1
00608ff0  40 10 d4 e5                                      ldrb r1, [r4, #0x40]
00608ff4  02 60 a0 e1                                      mov r6, r2
00608ff8  b8 23 dd e1                                      ldrh r2, [sp, #0x38]
00608ffc  00 00 51 e3                                      cmp r1, #0
00609000  03 b0 a0 e1                                      mov fp, r3
00609004  0c 20 8d e5                                      str r2, [sp, #0xc]
00609008  25 00 00 0a                                      beq #0x6090a4
0060900c  00 00 52 e3                                      cmp r2, #0
00609010  20 00 00 0a                                      beq #0x609098
00609014  0c 80 9d e5                                      ldr r8, [sp, #0xc]
00609018  08 70 9d e5                                      ldr r7, [sp, #8]
0060901c  f0 00 d6 e1                                      ldrsh r0, [r6]
00609020  4f 16 f4 eb                                      bl #0x30e964
00609024  44 30 94 e5                                      ldr r3, [r4, #0x44]
00609028  01 80 48 e2                                      sub r8, r8, #1
0060902c  78 80 ff e6                                      uxth r8, r8
00609030  00 10 93 e5                                      ldr r1, [r3]
00609034  4c 17 f4 eb                                      bl #0x30ed6c
00609038  48 30 94 e5                                      ldr r3, [r4, #0x48]
0060903c  00 10 93 e5                                      ldr r1, [r3]
00609040  d7 16 f4 eb                                      bl #0x30eba4
00609044  00 00 87 e5                                      str r0, [r7]
00609048  f2 00 d6 e1                                      ldrsh r0, [r6, #2]
0060904c  44 16 f4 eb                                      bl #0x30e964
00609050  44 30 94 e5                                      ldr r3, [r4, #0x44]
00609054  0b 60 86 e0                                      add r6, r6, fp
00609058  04 10 93 e5                                      ldr r1, [r3, #4]
0060905c  42 17 f4 eb                                      bl #0x30ed6c
00609060  48 30 94 e5                                      ldr r3, [r4, #0x48]
00609064  04 10 93 e5                                      ldr r1, [r3, #4]
00609068  cd 16 f4 eb                                      bl #0x30eba4
0060906c  00 00 58 e3                                      cmp r8, #0
00609070  04 00 87 e5                                      str r0, [r7, #4]
00609074  05 70 87 e0                                      add r7, r7, r5
00609078  e7 ff ff 1a                                      bne #0x60901c
0060907c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00609080  01 30 42 e2                                      sub r3, r2, #1
00609084  73 30 ff e6                                      uxth r3, r3
00609088  93 55 25 e0                                      mla r5, r3, r5, r5
0060908c  08 30 9d e5                                      ldr r3, [sp, #8]
00609090  05 30 83 e0                                      add r3, r3, r5
00609094  08 30 8d e5                                      str r3, [sp, #8]
00609098  08 00 9d e5                                      ldr r0, [sp, #8]
0060909c  14 d0 8d e2                                      add sp, sp, #0x14
006090a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006090a4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006090a8  00 00 53 e3                                      cmp r3, #0
006090ac  f9 ff ff 0a                                      beq #0x609098
006090b0  03 80 a0 e1                                      mov r8, r3
006090b4  08 70 9d e5                                      ldr r7, [sp, #8]
006090b8  00 00 00 ea                                      b #0x6090c0
006090bc  0b 60 86 e0                                      add r6, r6, fp
006090c0  f0 00 d6 e1                                      ldrsh r0, [r6]
006090c4  26 16 f4 eb                                      bl #0x30e964
006090c8  00 90 a0 e1                                      mov sb, r0
006090cc  f2 00 d6 e1                                      ldrsh r0, [r6, #2]
006090d0  23 16 f4 eb                                      bl #0x30e964
006090d4  00 10 94 e5                                      ldr r1, [r4]
006090d8  00 a0 a0 e1                                      mov sl, r0
006090dc  09 00 a0 e1                                      mov r0, sb
006090e0  21 17 f4 eb                                      bl #0x30ed6c
006090e4  10 10 94 e5                                      ldr r1, [r4, #0x10]
006090e8  00 30 a0 e1                                      mov r3, r0
006090ec  0a 00 a0 e1                                      mov r0, sl
006090f0  04 30 8d e5                                      str r3, [sp, #4]
006090f4  1c 17 f4 eb                                      bl #0x30ed6c
006090f8  04 30 9d e5                                      ldr r3, [sp, #4]
006090fc  00 10 a0 e1                                      mov r1, r0
00609100  01 80 48 e2                                      sub r8, r8, #1
00609104  03 00 a0 e1                                      mov r0, r3
00609108  a5 16 f4 eb                                      bl #0x30eba4
0060910c  20 10 94 e5                                      ldr r1, [r4, #0x20]
00609110  a3 16 f4 eb                                      bl #0x30eba4
00609114  00 00 87 e5                                      str r0, [r7]
00609118  04 10 94 e5                                      ldr r1, [r4, #4]
0060911c  09 00 a0 e1                                      mov r0, sb
00609120  11 17 f4 eb                                      bl #0x30ed6c
00609124  14 10 94 e5                                      ldr r1, [r4, #0x14]
00609128  00 90 a0 e1                                      mov sb, r0
0060912c  0a 00 a0 e1                                      mov r0, sl
00609130  0d 17 f4 eb                                      bl #0x30ed6c
00609134  00 10 a0 e1                                      mov r1, r0
00609138  09 00 a0 e1                                      mov r0, sb
0060913c  98 16 f4 eb                                      bl #0x30eba4
00609140  24 10 94 e5                                      ldr r1, [r4, #0x24]
00609144  96 16 f4 eb                                      bl #0x30eba4
00609148  78 80 ff e6                                      uxth r8, r8
0060914c  00 00 58 e3                                      cmp r8, #0
00609150  04 00 87 e5                                      str r0, [r7, #4]
00609154  05 70 87 e0                                      add r7, r7, r5
00609158  d7 ff ff 1a                                      bne #0x6090bc
0060915c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00609160  01 30 42 e2                                      sub r3, r2, #1
00609164  73 30 ff e6                                      uxth r3, r3
00609168  93 55 25 e0                                      mla r5, r3, r5, r5
0060916c  08 30 9d e5                                      ldr r3, [sp, #8]
00609170  05 30 83 e0                                      add r3, r3, r5
00609174  08 30 8d e5                                      str r3, [sp, #8]
00609178  c6 ff ff ea                                      b #0x609098

; FUNCTION 0x0060917c, declared_size=364, range_size=364, mode=arm
; class-group: glitch::core::vector2d<float>* glitch::core
; alias: _ZN6glitch4core15copyComponentSFINS0_8vector2dIfEENS0_27STransformTexCoordComponentEEEPT_S6_jPKhjNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEtRT0_
; demangled: glitch::core::vector2d<float>* glitch::core::copyComponentSF<glitch::core::vector2d<float>, glitch::core::STransformTexCoordComponent>(glitch::core::vector2d<float>*, unsigned int, unsigned char const*, unsigned int, glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE, unsigned short, glitch::core::STransformTexCoordComponent&)
; decoder-mode: arm
0060917c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00609180  0c d0 4d e2                                      sub sp, sp, #0xc
00609184  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00609188  02 80 a0 e1                                      mov r8, r2
0060918c  b4 23 dd e1                                      ldrh r2, [sp, #0x34]
00609190  02 00 5c e3                                      cmp ip, #2
00609194  00 60 a0 e1                                      mov r6, r0
00609198  01 50 a0 e1                                      mov r5, r1
0060919c  03 70 a0 e1                                      mov r7, r3
006091a0  38 40 9d e5                                      ldr r4, [sp, #0x38]
006091a4  04 20 8d e5                                      str r2, [sp, #4]
006091a8  04 00 00 0a                                      beq #0x6091c0
006091ac  06 00 5c e3                                      cmp ip, #6
006091b0  0f 00 00 0a                                      beq #0x6091f4
006091b4  06 00 a0 e1                                      mov r0, r6
006091b8  0c d0 8d e2                                      add sp, sp, #0xc
006091bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006091c0  04 00 a0 e1                                      mov r0, r4
006091c4  00 10 a0 e3                                      mov r1, #0
006091c8  a9 fd ff eb                                      bl #0x608874
006091cc  04 c0 9d e5                                      ldr ip, [sp, #4]
006091d0  06 00 a0 e1                                      mov r0, r6
006091d4  05 10 a0 e1                                      mov r1, r5
006091d8  08 20 a0 e1                                      mov r2, r8
006091dc  07 30 a0 e1                                      mov r3, r7
006091e0  30 c0 8d e5                                      str ip, [sp, #0x30]
006091e4  34 40 8d e5                                      str r4, [sp, #0x34]
006091e8  0c d0 8d e2                                      add sp, sp, #0xc
006091ec  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006091f0  79 ff ff ea                                      b #0x608fdc
006091f4  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
006091f8  00 00 53 e3                                      cmp r3, #0
006091fc  2a 00 00 1a                                      bne #0x6092ac
00609200  04 20 9d e5                                      ldr r2, [sp, #4]
00609204  00 00 52 e3                                      cmp r2, #0
00609208  e9 ff ff 0a                                      beq #0x6091b4
0060920c  02 90 a0 e1                                      mov sb, r2
00609210  00 a0 a0 e1                                      mov sl, r0
00609214  00 00 98 e5                                      ldr r0, [r8]
00609218  00 10 94 e5                                      ldr r1, [r4]
0060921c  d2 16 f4 eb                                      bl #0x30ed6c
00609220  10 10 94 e5                                      ldr r1, [r4, #0x10]
00609224  00 b0 a0 e1                                      mov fp, r0
00609228  04 00 98 e5                                      ldr r0, [r8, #4]
0060922c  ce 16 f4 eb                                      bl #0x30ed6c
00609230  00 10 a0 e1                                      mov r1, r0
00609234  0b 00 a0 e1                                      mov r0, fp
00609238  59 16 f4 eb                                      bl #0x30eba4
0060923c  20 10 94 e5                                      ldr r1, [r4, #0x20]
00609240  57 16 f4 eb                                      bl #0x30eba4
00609244  00 00 8a e5                                      str r0, [sl]
00609248  00 00 98 e5                                      ldr r0, [r8]
0060924c  04 10 94 e5                                      ldr r1, [r4, #4]
00609250  c5 16 f4 eb                                      bl #0x30ed6c
00609254  14 10 94 e5                                      ldr r1, [r4, #0x14]
00609258  00 b0 a0 e1                                      mov fp, r0
0060925c  04 00 98 e5                                      ldr r0, [r8, #4]
00609260  c1 16 f4 eb                                      bl #0x30ed6c
00609264  00 10 a0 e1                                      mov r1, r0
00609268  0b 00 a0 e1                                      mov r0, fp
0060926c  4c 16 f4 eb                                      bl #0x30eba4
00609270  24 10 94 e5                                      ldr r1, [r4, #0x24]
00609274  4a 16 f4 eb                                      bl #0x30eba4
00609278  01 90 49 e2                                      sub sb, sb, #1
0060927c  79 90 ff e6                                      uxth sb, sb
00609280  00 00 59 e3                                      cmp sb, #0
00609284  04 00 8a e5                                      str r0, [sl, #4]
00609288  07 80 88 e0                                      add r8, r8, r7
0060928c  05 a0 8a e0                                      add sl, sl, r5
00609290  df ff ff 1a                                      bne #0x609214
00609294  04 c0 9d e5                                      ldr ip, [sp, #4]
00609298  01 30 4c e2                                      sub r3, ip, #1
0060929c  73 30 ff e6                                      uxth r3, r3
006092a0  93 55 25 e0                                      mla r5, r3, r5, r5
006092a4  05 60 86 e0                                      add r6, r6, r5
006092a8  c1 ff ff ea                                      b #0x6091b4
006092ac  04 20 9d e5                                      ldr r2, [sp, #4]
006092b0  00 00 52 e3                                      cmp r2, #0
006092b4  be ff ff 0a                                      beq #0x6091b4
006092b8  00 30 a0 e1                                      mov r3, r0
006092bc  00 10 98 e5                                      ldr r1, [r8]
006092c0  01 20 52 e2                                      subs r2, r2, #1
006092c4  00 10 83 e5                                      str r1, [r3]
006092c8  04 10 98 e5                                      ldr r1, [r8, #4]
006092cc  07 80 88 e0                                      add r8, r8, r7
006092d0  04 10 83 e5                                      str r1, [r3, #4]
006092d4  05 30 83 e0                                      add r3, r3, r5
006092d8  f7 ff ff 1a                                      bne #0x6092bc
006092dc  04 30 9d e5                                      ldr r3, [sp, #4]
006092e0  93 65 26 e0                                      mla r6, r3, r5, r6
006092e4  b2 ff ff ea                                      b #0x6091b4
