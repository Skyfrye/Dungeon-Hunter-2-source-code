; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0053eb34, declared_size=208, range_size=208, mode=arm
; class-group: std::vector<glitch::gui::CGUIFont::SFontArea, glitch::core::SAllocator<glitch::gui::CGUIFont::SFontArea, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui8CGUIFont9SFontAreaENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb.clone.6
; demangled: std::vector<glitch::gui::CGUIFont::SFontArea, glitch::core::SAllocator<glitch::gui::CGUIFont::SFontArea, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::gui::CGUIFont::SFontArea*, glitch::gui::CGUIFont::SFontArea const&, std::__false_type const&, unsigned int, bool) [clone .clone.6]
; decoder-mode: arm
0053eb34  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0053eb38  00 50 a0 e1                                      mov r5, r0
0053eb3c  00 30 95 e5                                      ldr r3, [r5]
0053eb40  04 00 90 e5                                      ldr r0, [r0, #4]
0053eb44  01 80 a0 e1                                      mov r8, r1
0053eb48  02 90 a0 e1                                      mov sb, r2
0053eb4c  00 30 63 e0                                      rsb r3, r3, r0
0053eb50  43 32 a0 e1                                      asr r3, r3, #4
0053eb54  01 00 53 e3                                      cmp r3, #1
0053eb58  03 a0 83 20                                      addhs sl, r3, r3
0053eb5c  01 a0 83 32                                      addlo sl, r3, #1
0053eb60  1f 02 7a e3                                      cmn sl, #0xf0000001
0053eb64  24 00 00 8a                                      bhi #0x53ebfc
0053eb68  0a 00 53 e1                                      cmp r3, sl
0053eb6c  0a a2 a0 91                                      lslls sl, sl, #4
0053eb70  21 00 00 8a                                      bhi #0x53ebfc
0053eb74  0a 00 a0 e1                                      mov r0, sl
0053eb78  00 10 a0 e3                                      mov r1, #0
0053eb7c  79 46 f7 eb                                      bl #0x310568
0053eb80  00 70 95 e5                                      ldr r7, [r5]
0053eb84  00 40 a0 e1                                      mov r4, r0
0053eb88  08 80 67 e0                                      rsb r8, r7, r8
0053eb8c  48 82 a0 e1                                      asr r8, r8, #4
0053eb90  00 00 58 e3                                      cmp r8, #0
0053eb94  00 80 a0 d1                                      movle r8, r0
0053eb98  09 00 00 da                                      ble #0x53ebc4
0053eb9c  08 60 a0 e1                                      mov r6, r8
0053eba0  00 e0 a0 e3                                      mov lr, #0
0053eba4  0e c0 84 e0                                      add ip, r4, lr
0053eba8  0e 30 87 e0                                      add r3, r7, lr
0053ebac  01 60 56 e2                                      subs r6, r6, #1
0053ebb0  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0053ebb4  10 e0 8e e2                                      add lr, lr, #0x10
0053ebb8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0053ebbc  f8 ff ff 1a                                      bne #0x53eba4
0053ebc0  08 82 84 e0                                      add r8, r4, r8, lsl #4
0053ebc4  0f 00 99 e8                                      ldm sb, {r0, r1, r2, r3}
0053ebc8  0f 00 88 e8                                      stm r8, {r0, r1, r2, r3}
0053ebcc  04 00 95 e5                                      ldr r0, [r5, #4]
0053ebd0  00 20 95 e5                                      ldr r2, [r5]
0053ebd4  10 80 88 e2                                      add r8, r8, #0x10
0053ebd8  0a a0 84 e0                                      add sl, r4, sl
0053ebdc  02 00 50 e1                                      cmp r0, r2
0053ebe0  10 30 40 12                                      subne r3, r0, #0x10
0053ebe4  03 30 62 10                                      rsbne r3, r2, r3
0053ebe8  23 32 e0 11                                      mvnne r3, r3, lsr #4
0053ebec  03 02 80 10                                      addne r0, r0, r3, lsl #4
0053ebf0  16 46 f7 eb                                      bl #0x310450
0053ebf4  10 05 85 e8                                      stm r5, {r4, r8, sl}
0053ebf8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0053ebfc  0f a0 e0 e3                                      mvn sl, #0xf
0053ec00  db ff ff ea                                      b #0x53eb74
