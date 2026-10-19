; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00556dd4, declared_size=204, range_size=204, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Cell, glitch::core::SAllocator<glitch::gui::CGUITable::Cell, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable4CellENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEEC1ERKS9_
; demangled: std::vector<glitch::gui::CGUITable::Cell, glitch::core::SAllocator<glitch::gui::CGUITable::Cell, (glitch::memory::E_MEMORY_HINT)0> >::vector(std::vector<glitch::gui::CGUITable::Cell, glitch::core::SAllocator<glitch::gui::CGUITable::Cell, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00556dd4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00556dd8  04 20 91 e5                                      ldr r2, [r1, #4]
00556ddc  00 30 91 e5                                      ldr r3, [r1]
00556de0  00 40 a0 e3                                      mov r4, #0
00556de4  00 80 a0 e1                                      mov r8, r0
00556de8  02 70 63 e0                                      rsb r7, r3, r2
00556dec  c7 71 a0 e1                                      asr r7, r7, #3
00556df0  01 50 a0 e1                                      mov r5, r1
00556df4  87 70 87 e0                                      add r7, r7, r7, lsl #1
00556df8  00 40 80 e5                                      str r4, [r0]
00556dfc  87 71 87 e0                                      add r7, r7, r7, lsl #3
00556e00  04 40 80 e5                                      str r4, [r0, #4]
00556e04  87 34 a0 e1                                      lsl r3, r7, #9
00556e08  03 70 67 e0                                      rsb r7, r7, r3
00556e0c  07 79 87 e0                                      add r7, r7, r7, lsl #18
00556e10  98 30 a0 e3                                      mov r3, #0x98
00556e14  00 70 67 e2                                      rsb r7, r7, #0
00556e18  93 07 07 e0                                      mul r7, r3, r7
00556e1c  08 40 80 e5                                      str r4, [r0, #8]
00556e20  04 10 a0 e1                                      mov r1, r4
00556e24  07 00 a0 e1                                      mov r0, r7
00556e28  ce e5 f6 eb                                      bl #0x310568
00556e2c  07 70 80 e0                                      add r7, r0, r7
00556e30  08 70 88 e5                                      str r7, [r8, #8]
00556e34  00 00 88 e5                                      str r0, [r8]
00556e38  04 00 88 e5                                      str r0, [r8, #4]
00556e3c  80 04 95 e8                                      ldm r5, {r7, sl}
00556e40  00 60 a0 e1                                      mov r6, r0
00556e44  00 30 a0 e1                                      mov r3, r0
00556e48  0a a0 67 e0                                      rsb sl, r7, sl
00556e4c  ca a1 a0 e1                                      asr sl, sl, #3
00556e50  8a a0 8a e0                                      add sl, sl, sl, lsl #1
00556e54  8a a1 8a e0                                      add sl, sl, sl, lsl #3
00556e58  8a 24 a0 e1                                      lsl r2, sl, #9
00556e5c  02 a0 6a e0                                      rsb sl, sl, r2
00556e60  0a a9 8a e0                                      add sl, sl, sl, lsl #18
00556e64  00 a0 6a e2                                      rsb sl, sl, #0
00556e68  04 00 5a e1                                      cmp sl, r4
00556e6c  08 00 00 da                                      ble #0x556e94
00556e70  0a 50 a0 e1                                      mov r5, sl
00556e74  04 00 86 e0                                      add r0, r6, r4
00556e78  04 10 87 e0                                      add r1, r7, r4
00556e7c  83 fc ff eb                                      bl #0x556090
00556e80  01 50 55 e2                                      subs r5, r5, #1
00556e84  98 40 84 e2                                      add r4, r4, #0x98
00556e88  f9 ff ff 1a                                      bne #0x556e74
00556e8c  98 30 a0 e3                                      mov r3, #0x98
00556e90  93 6a 23 e0                                      mla r3, r3, sl, r6
00556e94  04 30 88 e5                                      str r3, [r8, #4]
00556e98  08 00 a0 e1                                      mov r0, r8
00556e9c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00557bd4, declared_size=120, range_size=120, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Cell, glitch::core::SAllocator<glitch::gui::CGUITable::Cell, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable4CellENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::gui::CGUITable::Cell, glitch::core::SAllocator<glitch::gui::CGUITable::Cell, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00557bd4  70 40 2d e9                                      push {r4, r5, r6, lr}
00557bd8  04 40 90 e5                                      ldr r4, [r0, #4]
00557bdc  00 50 90 e5                                      ldr r5, [r0]
00557be0  00 60 a0 e1                                      mov r6, r0
00557be4  05 00 54 e1                                      cmp r4, r5
00557be8  11 00 00 0a                                      beq #0x557c34
00557bec  98 40 44 e2                                      sub r4, r4, #0x98
00557bf0  48 20 84 e2                                      add r2, r4, #0x48
00557bf4  44 30 92 e5                                      ldr r3, [r2, #0x44]
00557bf8  02 00 53 e1                                      cmp r3, r2
00557bfc  03 00 a0 e1                                      mov r0, r3
00557c00  02 00 00 0a                                      beq #0x557c10
00557c04  00 00 53 e3                                      cmp r3, #0
00557c08  00 00 00 0a                                      beq #0x557c10
00557c0c  0f e2 f6 eb                                      bl #0x310450
00557c10  44 30 94 e5                                      ldr r3, [r4, #0x44]
00557c14  04 00 53 e1                                      cmp r3, r4
00557c18  03 00 a0 e1                                      mov r0, r3
00557c1c  02 00 00 0a                                      beq #0x557c2c
00557c20  00 00 53 e3                                      cmp r3, #0
00557c24  00 00 00 0a                                      beq #0x557c2c
00557c28  08 e2 f6 eb                                      bl #0x310450
00557c2c  04 00 55 e1                                      cmp r5, r4
00557c30  ed ff ff 1a                                      bne #0x557bec
00557c34  00 00 96 e5                                      ldr r0, [r6]
00557c38  00 00 50 e3                                      cmp r0, #0
00557c3c  00 00 00 0a                                      beq #0x557c44
00557c40  02 e2 f6 eb                                      bl #0x310450
00557c44  06 00 a0 e1                                      mov r0, r6
00557c48  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00558434, declared_size=680, range_size=680, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Cell, glitch::core::SAllocator<glitch::gui::CGUITable::Cell, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable4CellENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEEaSERKS9_
; demangled: std::vector<glitch::gui::CGUITable::Cell, glitch::core::SAllocator<glitch::gui::CGUITable::Cell, (glitch::memory::E_MEMORY_HINT)0> >::operator=(std::vector<glitch::gui::CGUITable::Cell, glitch::core::SAllocator<glitch::gui::CGUITable::Cell, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00558434  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00558438  00 00 51 e1                                      cmp r1, r0
0055843c  14 d0 4d e2                                      sub sp, sp, #0x14
00558440  01 90 a0 e1                                      mov sb, r1
00558444  00 40 a0 e1                                      mov r4, r0
00558448  49 00 00 0a                                      beq #0x558574
0055844c  04 30 91 e5                                      ldr r3, [r1, #4]
00558450  00 80 91 e5                                      ldr r8, [r1]
00558454  00 60 90 e5                                      ldr r6, [r0]
00558458  08 20 90 e5                                      ldr r2, [r0, #8]
0055845c  03 50 68 e0                                      rsb r5, r8, r3
00558460  c5 51 a0 e1                                      asr r5, r5, #3
00558464  02 20 66 e0                                      rsb r2, r6, r2
00558468  c2 21 a0 e1                                      asr r2, r2, #3
0055846c  85 50 85 e0                                      add r5, r5, r5, lsl #1
00558470  82 20 82 e0                                      add r2, r2, r2, lsl #1
00558474  85 51 85 e0                                      add r5, r5, r5, lsl #3
00558478  82 21 82 e0                                      add r2, r2, r2, lsl #3
0055847c  85 c4 a0 e1                                      lsl ip, r5, #9
00558480  82 14 a0 e1                                      lsl r1, r2, #9
00558484  0c 50 65 e0                                      rsb r5, r5, ip
00558488  01 20 62 e0                                      rsb r2, r2, r1
0055848c  05 59 85 e0                                      add r5, r5, r5, lsl #18
00558490  02 29 82 e0                                      add r2, r2, r2, lsl #18
00558494  00 50 65 e2                                      rsb r5, r5, #0
00558498  00 20 62 e2                                      rsb r2, r2, #0
0055849c  02 00 55 e1                                      cmp r5, r2
005584a0  05 b0 a0 e1                                      mov fp, r5
005584a4  68 00 00 8a                                      bhi #0x55864c
005584a8  04 20 90 e5                                      ldr r2, [r0, #4]
005584ac  02 a0 66 e0                                      rsb sl, r6, r2
005584b0  ca a1 a0 e1                                      asr sl, sl, #3
005584b4  04 20 8d e5                                      str r2, [sp, #4]
005584b8  8a a0 8a e0                                      add sl, sl, sl, lsl #1
005584bc  8a a1 8a e0                                      add sl, sl, sl, lsl #3
005584c0  8a 24 a0 e1                                      lsl r2, sl, #9
005584c4  02 a0 6a e0                                      rsb sl, sl, r2
005584c8  0a a9 8a e0                                      add sl, sl, sl, lsl #18
005584cc  00 a0 6a e2                                      rsb sl, sl, #0
005584d0  0a 00 55 e1                                      cmp r5, sl
005584d4  29 00 00 8a                                      bhi #0x558580
005584d8  00 00 55 e3                                      cmp r5, #0
005584dc  0a 00 00 da                                      ble #0x55850c
005584e0  00 70 a0 e3                                      mov r7, #0
005584e4  07 00 86 e0                                      add r0, r6, r7
005584e8  07 10 88 e0                                      add r1, r8, r7
005584ec  bb ff ff eb                                      bl #0x5583e0
005584f0  01 b0 5b e2                                      subs fp, fp, #1
005584f4  98 70 87 e2                                      add r7, r7, #0x98
005584f8  f9 ff ff 1a                                      bne #0x5584e4
005584fc  98 30 a0 e3                                      mov r3, #0x98
00558500  93 65 26 e0                                      mla r6, r3, r5, r6
00558504  04 30 94 e5                                      ldr r3, [r4, #4]
00558508  04 30 8d e5                                      str r3, [sp, #4]
0055850c  04 20 9d e5                                      ldr r2, [sp, #4]
00558510  02 00 56 e1                                      cmp r6, r2
00558514  12 00 00 0a                                      beq #0x558564
00558518  48 20 86 e2                                      add r2, r6, #0x48
0055851c  44 30 92 e5                                      ldr r3, [r2, #0x44]
00558520  02 00 53 e1                                      cmp r3, r2
00558524  03 00 a0 e1                                      mov r0, r3
00558528  02 00 00 0a                                      beq #0x558538
0055852c  00 00 53 e3                                      cmp r3, #0
00558530  00 00 00 0a                                      beq #0x558538
00558534  c5 df f6 eb                                      bl #0x310450
00558538  44 30 96 e5                                      ldr r3, [r6, #0x44]
0055853c  06 00 53 e1                                      cmp r3, r6
00558540  03 00 a0 e1                                      mov r0, r3
00558544  98 60 86 e2                                      add r6, r6, #0x98
00558548  02 00 00 0a                                      beq #0x558558
0055854c  00 00 53 e3                                      cmp r3, #0
00558550  00 00 00 0a                                      beq #0x558558
00558554  bd df f6 eb                                      bl #0x310450
00558558  04 30 9d e5                                      ldr r3, [sp, #4]
0055855c  03 00 56 e1                                      cmp r6, r3
00558560  ec ff ff 1a                                      bne #0x558518
00558564  00 60 94 e5                                      ldr r6, [r4]
00558568  98 30 a0 e3                                      mov r3, #0x98
0055856c  93 65 26 e0                                      mla r6, r3, r5, r6
00558570  04 60 84 e5                                      str r6, [r4, #4]
00558574  04 00 a0 e1                                      mov r0, r4
00558578  14 d0 8d e2                                      add sp, sp, #0x14
0055857c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00558580  98 20 a0 e3                                      mov r2, #0x98
00558584  92 8a 2a e0                                      mla sl, r2, sl, r8
00558588  0a 70 68 e0                                      rsb r7, r8, sl
0055858c  c7 71 a0 e1                                      asr r7, r7, #3
00558590  87 70 87 e0                                      add r7, r7, r7, lsl #1
00558594  87 71 87 e0                                      add r7, r7, r7, lsl #3
00558598  87 24 a0 e1                                      lsl r2, r7, #9
0055859c  02 70 67 e0                                      rsb r7, r7, r2
005585a0  07 79 87 e0                                      add r7, r7, r7, lsl #18
005585a4  00 70 67 e2                                      rsb r7, r7, #0
005585a8  00 00 57 e3                                      cmp r7, #0
005585ac  04 80 9d d5                                      ldrle r8, [sp, #4]
005585b0  13 00 00 da                                      ble #0x558604
005585b4  00 a0 a0 e3                                      mov sl, #0
005585b8  0a 00 86 e0                                      add r0, r6, sl
005585bc  0a 10 88 e0                                      add r1, r8, sl
005585c0  86 ff ff eb                                      bl #0x5583e0
005585c4  01 70 57 e2                                      subs r7, r7, #1
005585c8  98 a0 8a e2                                      add sl, sl, #0x98
005585cc  f9 ff ff 1a                                      bne #0x5585b8
005585d0  40 01 94 e8                                      ldm r4, {r6, r8}
005585d4  00 10 99 e5                                      ldr r1, [sb]
005585d8  98 a0 a0 e3                                      mov sl, #0x98
005585dc  08 20 66 e0                                      rsb r2, r6, r8
005585e0  c2 21 a0 e1                                      asr r2, r2, #3
005585e4  04 30 99 e5                                      ldr r3, [sb, #4]
005585e8  82 20 82 e0                                      add r2, r2, r2, lsl #1
005585ec  82 21 82 e0                                      add r2, r2, r2, lsl #3
005585f0  82 04 a0 e1                                      lsl r0, r2, #9
005585f4  00 20 62 e0                                      rsb r2, r2, r0
005585f8  02 29 82 e0                                      add r2, r2, r2, lsl #18
005585fc  00 20 62 e2                                      rsb r2, r2, #0
00558600  9a 12 2a e0                                      mla sl, sl, r2, r1
00558604  03 70 6a e0                                      rsb r7, sl, r3
00558608  c7 71 a0 e1                                      asr r7, r7, #3
0055860c  87 70 87 e0                                      add r7, r7, r7, lsl #1
00558610  87 71 87 e0                                      add r7, r7, r7, lsl #3
00558614  87 34 a0 e1                                      lsl r3, r7, #9
00558618  03 70 67 e0                                      rsb r7, r7, r3
0055861c  07 79 87 e0                                      add r7, r7, r7, lsl #18
00558620  00 70 67 e2                                      rsb r7, r7, #0
00558624  00 00 57 e3                                      cmp r7, #0
00558628  ce ff ff da                                      ble #0x558568
0055862c  00 60 a0 e3                                      mov r6, #0
00558630  06 00 88 e0                                      add r0, r8, r6
00558634  06 10 8a e0                                      add r1, sl, r6
00558638  94 f6 ff eb                                      bl #0x556090
0055863c  01 70 57 e2                                      subs r7, r7, #1
00558640  98 60 86 e2                                      add r6, r6, #0x98
00558644  f9 ff ff 1a                                      bne #0x558630
00558648  c5 ff ff ea                                      b #0x558564
0055864c  10 10 8d e2                                      add r1, sp, #0x10
00558650  08 20 a0 e1                                      mov r2, r8
00558654  04 50 21 e5                                      str r5, [r1, #-4]!
00558658  c1 f9 ff eb                                      bl #0x556d64
0055865c  04 70 94 e5                                      ldr r7, [r4, #4]
00558660  00 80 94 e5                                      ldr r8, [r4]
00558664  00 60 a0 e1                                      mov r6, r0
00558668  08 00 57 e1                                      cmp r7, r8
0055866c  12 00 00 0a                                      beq #0x5586bc
00558670  98 70 47 e2                                      sub r7, r7, #0x98
00558674  48 20 87 e2                                      add r2, r7, #0x48
00558678  44 30 92 e5                                      ldr r3, [r2, #0x44]
0055867c  02 00 53 e1                                      cmp r3, r2
00558680  03 00 a0 e1                                      mov r0, r3
00558684  02 00 00 0a                                      beq #0x558694
00558688  00 00 53 e3                                      cmp r3, #0
0055868c  00 00 00 0a                                      beq #0x558694
00558690  6e df f6 eb                                      bl #0x310450
00558694  44 30 97 e5                                      ldr r3, [r7, #0x44]
00558698  07 00 53 e1                                      cmp r3, r7
0055869c  03 00 a0 e1                                      mov r0, r3
005586a0  02 00 00 0a                                      beq #0x5586b0
005586a4  00 00 53 e3                                      cmp r3, #0
005586a8  00 00 00 0a                                      beq #0x5586b0
005586ac  67 df f6 eb                                      bl #0x310450
005586b0  07 00 58 e1                                      cmp r8, r7
005586b4  ed ff ff 1a                                      bne #0x558670
005586b8  00 70 94 e5                                      ldr r7, [r4]
005586bc  07 00 a0 e1                                      mov r0, r7
005586c0  62 df f6 eb                                      bl #0x310450
005586c4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005586c8  98 20 a0 e3                                      mov r2, #0x98
005586cc  00 60 84 e5                                      str r6, [r4]
005586d0  92 63 23 e0                                      mla r3, r2, r3, r6
005586d4  08 30 84 e5                                      str r3, [r4, #8]
005586d8  a2 ff ff ea                                      b #0x558568

; FUNCTION 0x00559414, declared_size=452, range_size=452, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Cell, glitch::core::SAllocator<glitch::gui::CGUITable::Cell, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable4CellENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb.clone.10
; demangled: std::vector<glitch::gui::CGUITable::Cell, glitch::core::SAllocator<glitch::gui::CGUITable::Cell, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::gui::CGUITable::Cell*, glitch::gui::CGUITable::Cell const&, std::__false_type const&, unsigned int, bool) [clone .clone.10]
; decoder-mode: arm
00559414  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00559418  00 50 90 e8                                      ldm r0, {ip, lr}
0055941c  0c d0 4d e2                                      sub sp, sp, #0xc
00559420  04 30 8d e5                                      str r3, [sp, #4]
00559424  0e c0 6c e0                                      rsb ip, ip, lr
00559428  cc c1 a0 e1                                      asr ip, ip, #3
0055942c  00 50 a0 e1                                      mov r5, r0
00559430  8c c0 8c e0                                      add ip, ip, ip, lsl #1
00559434  6b 08 02 e3                                      movw r0, #0x286b
00559438  8c c1 8c e0                                      add ip, ip, ip, lsl #3
0055943c  af 01 40 e3                                      movt r0, #0x1af
00559440  8c 34 a0 e1                                      lsl r3, ip, #9
00559444  03 c0 6c e0                                      rsb ip, ip, r3
00559448  0c c9 8c e0                                      add ip, ip, ip, lsl #18
0055944c  00 c0 6c e2                                      rsb ip, ip, #0
00559450  01 00 5c e3                                      cmp ip, #1
00559454  0c 30 8c 20                                      addhs r3, ip, ip
00559458  01 30 8c 32                                      addlo r3, ip, #1
0055945c  00 00 53 e1                                      cmp r3, r0
00559460  01 40 a0 e1                                      mov r4, r1
00559464  00 20 8d e5                                      str r2, [sp]
00559468  01 00 00 8a                                      bhi #0x559474
0055946c  03 00 5c e1                                      cmp ip, r3
00559470  55 00 00 9a                                      bls #0x5595cc
00559474  77 b0 e0 e3                                      mvn fp, #0x77
00559478  0b 00 a0 e1                                      mov r0, fp
0055947c  00 10 a0 e3                                      mov r1, #0
00559480  38 dc f6 eb                                      bl #0x310568
00559484  00 a0 95 e5                                      ldr sl, [r5]
00559488  00 80 a0 e1                                      mov r8, r0
0055948c  04 90 6a e0                                      rsb sb, sl, r4
00559490  c9 91 a0 e1                                      asr sb, sb, #3
00559494  89 90 89 e0                                      add sb, sb, sb, lsl #1
00559498  89 91 89 e0                                      add sb, sb, sb, lsl #3
0055949c  89 34 a0 e1                                      lsl r3, sb, #9
005594a0  03 90 69 e0                                      rsb sb, sb, r3
005594a4  09 99 89 e0                                      add sb, sb, sb, lsl #18
005594a8  00 90 69 e2                                      rsb sb, sb, #0
005594ac  00 00 59 e3                                      cmp sb, #0
005594b0  00 90 a0 d1                                      movle sb, r0
005594b4  09 00 00 da                                      ble #0x5594e0
005594b8  09 70 a0 e1                                      mov r7, sb
005594bc  00 60 a0 e3                                      mov r6, #0
005594c0  06 00 88 e0                                      add r0, r8, r6
005594c4  06 10 8a e0                                      add r1, sl, r6
005594c8  f0 f2 ff eb                                      bl #0x556090
005594cc  01 70 57 e2                                      subs r7, r7, #1
005594d0  98 60 86 e2                                      add r6, r6, #0x98
005594d4  f9 ff ff 1a                                      bne #0x5594c0
005594d8  98 30 a0 e3                                      mov r3, #0x98
005594dc  93 89 29 e0                                      mla sb, r3, sb, r8
005594e0  09 00 a0 e1                                      mov r0, sb
005594e4  00 10 9d e5                                      ldr r1, [sp]
005594e8  e8 f2 ff eb                                      bl #0x556090
005594ec  04 30 9d e5                                      ldr r3, [sp, #4]
005594f0  98 90 89 e2                                      add sb, sb, #0x98
005594f4  00 00 53 e3                                      cmp r3, #0
005594f8  1c 00 00 0a                                      beq #0x559570
005594fc  04 60 95 e5                                      ldr r6, [r5, #4]
00559500  00 40 95 e5                                      ldr r4, [r5]
00559504  04 00 56 e1                                      cmp r6, r4
00559508  06 00 a0 01                                      moveq r0, r6
0055950c  12 00 00 0a                                      beq #0x55955c
00559510  98 60 46 e2                                      sub r6, r6, #0x98
00559514  48 20 86 e2                                      add r2, r6, #0x48
00559518  44 30 92 e5                                      ldr r3, [r2, #0x44]
0055951c  02 00 53 e1                                      cmp r3, r2
00559520  03 00 a0 e1                                      mov r0, r3
00559524  02 00 00 0a                                      beq #0x559534
00559528  00 00 53 e3                                      cmp r3, #0
0055952c  00 00 00 0a                                      beq #0x559534
00559530  c6 db f6 eb                                      bl #0x310450
00559534  44 30 96 e5                                      ldr r3, [r6, #0x44]
00559538  06 00 53 e1                                      cmp r3, r6
0055953c  03 00 a0 e1                                      mov r0, r3
00559540  02 00 00 0a                                      beq #0x559550
00559544  00 00 53 e3                                      cmp r3, #0
00559548  00 00 00 0a                                      beq #0x559550
0055954c  bf db f6 eb                                      bl #0x310450
00559550  06 00 54 e1                                      cmp r4, r6
00559554  ed ff ff 1a                                      bne #0x559510
00559558  00 00 95 e5                                      ldr r0, [r5]
0055955c  0b b0 88 e0                                      add fp, r8, fp
00559560  ba db f6 eb                                      bl #0x310450
00559564  00 0b 85 e8                                      stm r5, {r8, sb, fp}
00559568  0c d0 8d e2                                      add sp, sp, #0xc
0055956c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00559570  04 60 95 e5                                      ldr r6, [r5, #4]
00559574  06 30 64 e0                                      rsb r3, r4, r6
00559578  c3 31 a0 e1                                      asr r3, r3, #3
0055957c  83 30 83 e0                                      add r3, r3, r3, lsl #1
00559580  83 31 83 e0                                      add r3, r3, r3, lsl #3
00559584  83 a4 a0 e1                                      lsl sl, r3, #9
00559588  0a a0 63 e0                                      rsb sl, r3, sl
0055958c  0a a9 8a e0                                      add sl, sl, sl, lsl #18
00559590  00 a0 6a e2                                      rsb sl, sl, #0
00559594  00 00 5a e3                                      cmp sl, #0
00559598  d8 ff ff da                                      ble #0x559500
0055959c  0a 70 a0 e1                                      mov r7, sl
005595a0  09 60 a0 e1                                      mov r6, sb
005595a4  06 00 a0 e1                                      mov r0, r6
005595a8  04 10 a0 e1                                      mov r1, r4
005595ac  b7 f2 ff eb                                      bl #0x556090
005595b0  01 70 57 e2                                      subs r7, r7, #1
005595b4  98 40 84 e2                                      add r4, r4, #0x98
005595b8  98 60 86 e2                                      add r6, r6, #0x98
005595bc  f8 ff ff 1a                                      bne #0x5595a4
005595c0  98 30 a0 e3                                      mov r3, #0x98
005595c4  93 9a 29 e0                                      mla sb, r3, sl, sb
005595c8  cb ff ff ea                                      b #0x5594fc
005595cc  98 b0 a0 e3                                      mov fp, #0x98
005595d0  9b 03 0b e0                                      mul fp, fp, r3
005595d4  a7 ff ff ea                                      b #0x559478

; FUNCTION 0x005595d8, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Cell, glitch::core::SAllocator<glitch::gui::CGUITable::Cell, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable4CellENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::gui::CGUITable::Cell, glitch::core::SAllocator<glitch::gui::CGUITable::Cell, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::gui::CGUITable::Cell const&)
; decoder-mode: arm
005595d8  10 40 2d e9                                      push {r4, lr}
005595dc  08 10 90 e9                                      ldmib r0, {r3, ip}
005595e0  00 40 a0 e1                                      mov r4, r0
005595e4  01 20 a0 e1                                      mov r2, r1
005595e8  0c 00 53 e1                                      cmp r3, ip
005595ec  05 00 00 0a                                      beq #0x559608
005595f0  03 00 a0 e1                                      mov r0, r3
005595f4  a5 f2 ff eb                                      bl #0x556090
005595f8  04 30 94 e5                                      ldr r3, [r4, #4]
005595fc  98 30 83 e2                                      add r3, r3, #0x98
00559600  04 30 84 e5                                      str r3, [r4, #4]
00559604  10 80 bd e8                                      pop {r4, pc}
00559608  03 10 a0 e1                                      mov r1, r3
0055960c  01 30 a0 e3                                      mov r3, #1
00559610  10 40 bd e8                                      pop {r4, lr}
00559614  7e ff ff ea                                      b #0x559414

; FUNCTION 0x00559618, declared_size=168, range_size=168, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Cell, glitch::core::SAllocator<glitch::gui::CGUITable::Cell, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable4CellENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_RKSt12__false_type
; demangled: std::vector<glitch::gui::CGUITable::Cell, glitch::core::SAllocator<glitch::gui::CGUITable::Cell, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::gui::CGUITable::Cell*, std::__false_type const&)
; decoder-mode: arm
00559618  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0055961c  04 30 90 e5                                      ldr r3, [r0, #4]
00559620  98 20 81 e2                                      add r2, r1, #0x98
00559624  00 70 a0 e1                                      mov r7, r0
00559628  03 00 52 e1                                      cmp r2, r3
0055962c  01 60 a0 e1                                      mov r6, r1
00559630  11 00 00 0a                                      beq #0x55967c
00559634  03 40 62 e0                                      rsb r4, r2, r3
00559638  c4 41 a0 e1                                      asr r4, r4, #3
0055963c  84 40 84 e0                                      add r4, r4, r4, lsl #1
00559640  84 41 84 e0                                      add r4, r4, r4, lsl #3
00559644  84 24 a0 e1                                      lsl r2, r4, #9
00559648  02 40 64 e0                                      rsb r4, r4, r2
0055964c  04 49 84 e0                                      add r4, r4, r4, lsl #18
00559650  00 40 64 e2                                      rsb r4, r4, #0
00559654  00 00 54 e3                                      cmp r4, #0
00559658  07 00 00 da                                      ble #0x55967c
0055965c  01 00 a0 e1                                      mov r0, r1
00559660  98 50 80 e2                                      add r5, r0, #0x98
00559664  05 10 a0 e1                                      mov r1, r5
00559668  5c fb ff eb                                      bl #0x5583e0
0055966c  01 40 54 e2                                      subs r4, r4, #1
00559670  05 00 a0 e1                                      mov r0, r5
00559674  f9 ff ff 1a                                      bne #0x559660
00559678  04 30 97 e5                                      ldr r3, [r7, #4]
0055967c  98 40 43 e2                                      sub r4, r3, #0x98
00559680  04 40 87 e5                                      str r4, [r7, #4]
00559684  50 30 43 e2                                      sub r3, r3, #0x50
00559688  44 00 93 e5                                      ldr r0, [r3, #0x44]
0055968c  03 00 50 e1                                      cmp r0, r3
00559690  02 00 00 0a                                      beq #0x5596a0
00559694  00 00 50 e3                                      cmp r0, #0
00559698  00 00 00 0a                                      beq #0x5596a0
0055969c  6b db f6 eb                                      bl #0x310450
005596a0  44 00 94 e5                                      ldr r0, [r4, #0x44]
005596a4  04 00 50 e1                                      cmp r0, r4
005596a8  02 00 00 0a                                      beq #0x5596b8
005596ac  00 00 50 e3                                      cmp r0, #0
005596b0  00 00 00 0a                                      beq #0x5596b8
005596b4  65 db f6 eb                                      bl #0x310450
005596b8  06 00 a0 e1                                      mov r0, r6
005596bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0055a770, declared_size=420, range_size=420, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Cell, glitch::core::SAllocator<glitch::gui::CGUITable::Cell, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable4CellENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type.clone.11
; demangled: std::vector<glitch::gui::CGUITable::Cell, glitch::core::SAllocator<glitch::gui::CGUITable::Cell, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::gui::CGUITable::Cell*, unsigned int, glitch::gui::CGUITable::Cell const&, std::__false_type const&) [clone .clone.11]
; decoder-mode: arm
0055a770  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0055a774  00 30 90 e5                                      ldr r3, [r0]
0055a778  98 d0 4d e2                                      sub sp, sp, #0x98
0055a77c  00 40 a0 e1                                      mov r4, r0
0055a780  02 00 53 e1                                      cmp r3, r2
0055a784  02 70 a0 e1                                      mov r7, r2
0055a788  01 80 a0 e1                                      mov r8, r1
0055a78c  0d 00 00 8a                                      bhi #0x55a7c8
0055a790  04 50 90 e5                                      ldr r5, [r0, #4]
0055a794  05 00 52 e1                                      cmp r2, r5
0055a798  0b 00 00 2a                                      bhs #0x55a7cc
0055a79c  02 10 a0 e1                                      mov r1, r2
0055a7a0  0d 00 a0 e1                                      mov r0, sp
0055a7a4  39 ee ff eb                                      bl #0x556090
0055a7a8  04 00 a0 e1                                      mov r0, r4
0055a7ac  08 10 a0 e1                                      mov r1, r8
0055a7b0  0d 20 a0 e1                                      mov r2, sp
0055a7b4  ed ff ff eb                                      bl #0x55a770
0055a7b8  0d 00 a0 e1                                      mov r0, sp
0055a7bc  0d 50 a0 e1                                      mov r5, sp
0055a7c0  f2 f4 ff eb                                      bl #0x557b90
0055a7c4  4c 00 00 ea                                      b #0x55a8fc
0055a7c8  04 50 90 e5                                      ldr r5, [r0, #4]
0055a7cc  05 90 68 e0                                      rsb sb, r8, r5
0055a7d0  c9 91 a0 e1                                      asr sb, sb, #3
0055a7d4  89 90 89 e0                                      add sb, sb, sb, lsl #1
0055a7d8  89 91 89 e0                                      add sb, sb, sb, lsl #3
0055a7dc  89 34 a0 e1                                      lsl r3, sb, #9
0055a7e0  03 90 69 e0                                      rsb sb, sb, r3
0055a7e4  09 99 89 e0                                      add sb, sb, sb, lsl #18
0055a7e8  00 90 69 e2                                      rsb sb, sb, #0
0055a7ec  01 00 59 e3                                      cmp sb, #1
0055a7f0  22 00 00 9a                                      bls #0x55a880
0055a7f4  98 10 45 e2                                      sub r1, r5, #0x98
0055a7f8  01 a0 a0 e1                                      mov sl, r1
0055a7fc  01 60 a0 e3                                      mov r6, #1
0055a800  00 00 00 ea                                      b #0x55a808
0055a804  98 10 45 e2                                      sub r1, r5, #0x98
0055a808  05 00 a0 e1                                      mov r0, r5
0055a80c  1f ee ff eb                                      bl #0x556090
0055a810  01 60 56 e2                                      subs r6, r6, #1
0055a814  98 50 85 e2                                      add r5, r5, #0x98
0055a818  f9 ff ff 1a                                      bne #0x55a804
0055a81c  0a 60 68 e0                                      rsb r6, r8, sl
0055a820  c6 61 a0 e1                                      asr r6, r6, #3
0055a824  04 50 94 e5                                      ldr r5, [r4, #4]
0055a828  86 60 86 e0                                      add r6, r6, r6, lsl #1
0055a82c  86 61 86 e0                                      add r6, r6, r6, lsl #3
0055a830  98 50 85 e2                                      add r5, r5, #0x98
0055a834  86 34 a0 e1                                      lsl r3, r6, #9
0055a838  03 60 66 e0                                      rsb r6, r6, r3
0055a83c  06 69 86 e0                                      add r6, r6, r6, lsl #18
0055a840  00 60 66 e2                                      rsb r6, r6, #0
0055a844  00 00 56 e3                                      cmp r6, #0
0055a848  04 50 84 e5                                      str r5, [r4, #4]
0055a84c  07 00 00 da                                      ble #0x55a870
0055a850  00 00 00 ea                                      b #0x55a858
0055a854  04 a0 a0 e1                                      mov sl, r4
0055a858  98 40 4a e2                                      sub r4, sl, #0x98
0055a85c  0a 00 a0 e1                                      mov r0, sl
0055a860  04 10 a0 e1                                      mov r1, r4
0055a864  dd f6 ff eb                                      bl #0x5583e0
0055a868  01 60 56 e2                                      subs r6, r6, #1
0055a86c  f8 ff ff 1a                                      bne #0x55a854
0055a870  08 00 a0 e1                                      mov r0, r8
0055a874  07 10 a0 e1                                      mov r1, r7
0055a878  d8 f6 ff eb                                      bl #0x5583e0
0055a87c  1e 00 00 ea                                      b #0x55a8fc
0055a880  01 30 69 e2                                      rsb r3, sb, #1
0055a884  98 a0 a0 e3                                      mov sl, #0x98
0055a888  9a 53 2a e0                                      mla sl, sl, r3, r5
0055a88c  0a 60 65 e0                                      rsb r6, r5, sl
0055a890  c6 61 a0 e1                                      asr r6, r6, #3
0055a894  86 60 86 e0                                      add r6, r6, r6, lsl #1
0055a898  86 61 86 e0                                      add r6, r6, r6, lsl #3
0055a89c  86 34 a0 e1                                      lsl r3, r6, #9
0055a8a0  03 60 66 e0                                      rsb r6, r6, r3
0055a8a4  06 69 86 e0                                      add r6, r6, r6, lsl #18
0055a8a8  00 60 66 e2                                      rsb r6, r6, #0
0055a8ac  00 00 56 e3                                      cmp r6, #0
0055a8b0  05 00 00 da                                      ble #0x55a8cc
0055a8b4  05 00 a0 e1                                      mov r0, r5
0055a8b8  07 10 a0 e1                                      mov r1, r7
0055a8bc  f3 ed ff eb                                      bl #0x556090
0055a8c0  01 60 56 e2                                      subs r6, r6, #1
0055a8c4  98 50 85 e2                                      add r5, r5, #0x98
0055a8c8  f9 ff ff 1a                                      bne #0x55a8b4
0055a8cc  01 00 59 e3                                      cmp sb, #1
0055a8d0  04 a0 84 e5                                      str sl, [r4, #4]
0055a8d4  0a 00 00 1a                                      bne #0x55a904
0055a8d8  08 10 a0 e1                                      mov r1, r8
0055a8dc  0a 00 a0 e1                                      mov r0, sl
0055a8e0  ea ed ff eb                                      bl #0x556090
0055a8e4  04 30 94 e5                                      ldr r3, [r4, #4]
0055a8e8  08 00 a0 e1                                      mov r0, r8
0055a8ec  07 10 a0 e1                                      mov r1, r7
0055a8f0  98 30 83 e2                                      add r3, r3, #0x98
0055a8f4  04 30 84 e5                                      str r3, [r4, #4]
0055a8f8  b8 f6 ff eb                                      bl #0x5583e0
0055a8fc  98 d0 8d e2                                      add sp, sp, #0x98
0055a900  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0055a904  98 30 a0 e3                                      mov r3, #0x98
0055a908  93 a9 2a e0                                      mla sl, r3, sb, sl
0055a90c  04 a0 84 e5                                      str sl, [r4, #4]
0055a910  f9 ff ff ea                                      b #0x55a8fc
