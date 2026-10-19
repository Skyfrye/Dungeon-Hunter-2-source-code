; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00557894, declared_size=88, range_size=88, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Column, glitch::core::SAllocator<glitch::gui::CGUITable::Column, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable6ColumnENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::gui::CGUITable::Column, glitch::core::SAllocator<glitch::gui::CGUITable::Column, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00557894  70 40 2d e9                                      push {r4, r5, r6, lr}
00557898  04 40 90 e5                                      ldr r4, [r0, #4]
0055789c  00 50 90 e5                                      ldr r5, [r0]
005578a0  00 60 a0 e1                                      mov r6, r0
005578a4  05 00 54 e1                                      cmp r4, r5
005578a8  09 00 00 0a                                      beq #0x5578d4
005578ac  54 40 44 e2                                      sub r4, r4, #0x54
005578b0  44 30 94 e5                                      ldr r3, [r4, #0x44]
005578b4  04 00 53 e1                                      cmp r3, r4
005578b8  03 00 a0 e1                                      mov r0, r3
005578bc  02 00 00 0a                                      beq #0x5578cc
005578c0  00 00 53 e3                                      cmp r3, #0
005578c4  00 00 00 0a                                      beq #0x5578cc
005578c8  e0 e2 f6 eb                                      bl #0x310450
005578cc  04 00 55 e1                                      cmp r5, r4
005578d0  f5 ff ff 1a                                      bne #0x5578ac
005578d4  00 00 96 e5                                      ldr r0, [r6]
005578d8  00 00 50 e3                                      cmp r0, #0
005578dc  00 00 00 0a                                      beq #0x5578e4
005578e0  da e2 f6 eb                                      bl #0x310450
005578e4  06 00 a0 e1                                      mov r0, r6
005578e8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005578ec, declared_size=324, range_size=324, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Column, glitch::core::SAllocator<glitch::gui::CGUITable::Column, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable6ColumnENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb.clone.5
; demangled: std::vector<glitch::gui::CGUITable::Column, glitch::core::SAllocator<glitch::gui::CGUITable::Column, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::gui::CGUITable::Column*, glitch::gui::CGUITable::Column const&, std::__false_type const&, unsigned int, bool) [clone .clone.5]
; decoder-mode: arm
005578ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005578f0  00 50 90 e8                                      ldm r0, {ip, lr}
005578f4  00 40 a0 e1                                      mov r4, r0
005578f8  3d 0f 0c e3                                      movw r0, #0xcf3d
005578fc  0e c0 6c e0                                      rsb ip, ip, lr
00557900  f3 0c 43 e3                                      movt r0, #0x3cf3
00557904  4c c1 a0 e1                                      asr ip, ip, #2
00557908  90 0c 0c e0                                      mul ip, r0, ip
0055790c  c3 00 03 e3                                      movw r0, #0x30c3
00557910  01 00 5c e3                                      cmp ip, #1
00557914  0c e0 8c 20                                      addhs lr, ip, ip
00557918  01 e0 8c 32                                      addlo lr, ip, #1
0055791c  00 06 80 e1                                      orr r0, r0, r0, lsl #12
00557920  00 00 5e e1                                      cmp lr, r0
00557924  14 d0 4d e2                                      sub sp, sp, #0x14
00557928  01 90 a0 e1                                      mov sb, r1
0055792c  02 50 a0 e1                                      mov r5, r2
00557930  03 80 a0 e1                                      mov r8, r3
00557934  01 00 00 8a                                      bhi #0x557940
00557938  0e 00 5c e1                                      cmp ip, lr
0055793c  30 00 00 9a                                      bls #0x557a04
00557940  03 70 e0 e3                                      mvn r7, #3
00557944  00 10 a0 e3                                      mov r1, #0
00557948  07 00 a0 e1                                      mov r0, r7
0055794c  05 e3 f6 eb                                      bl #0x310568
00557950  00 60 a0 e1                                      mov r6, r0
00557954  08 30 8d e2                                      add r3, sp, #8
00557958  00 c0 a0 e3                                      mov ip, #0
0055795c  00 00 94 e5                                      ldr r0, [r4]
00557960  09 10 a0 e1                                      mov r1, sb
00557964  06 20 a0 e1                                      mov r2, r6
00557968  00 c0 8d e5                                      str ip, [sp]
0055796c  a6 f9 ff eb                                      bl #0x55600c
00557970  00 a0 a0 e1                                      mov sl, r0
00557974  40 00 8a e5                                      str r0, [sl, #0x40]
00557978  44 00 8a e5                                      str r0, [sl, #0x44]
0055797c  44 10 95 e5                                      ldr r1, [r5, #0x44]
00557980  40 20 95 e5                                      ldr r2, [r5, #0x40]
00557984  28 39 f7 eb                                      bl #0x325e2c
00557988  48 30 95 e5                                      ldr r3, [r5, #0x48]
0055798c  00 00 58 e3                                      cmp r8, #0
00557990  54 b0 8a e2                                      add fp, sl, #0x54
00557994  48 30 8a e5                                      str r3, [sl, #0x48]
00557998  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
0055799c  4c 30 8a e5                                      str r3, [sl, #0x4c]
005579a0  50 30 95 e5                                      ldr r3, [r5, #0x50]
005579a4  50 30 8a e5                                      str r3, [sl, #0x50]
005579a8  18 00 00 0a                                      beq #0x557a10
005579ac  04 50 94 e5                                      ldr r5, [r4, #4]
005579b0  00 80 94 e5                                      ldr r8, [r4]
005579b4  08 00 55 e1                                      cmp r5, r8
005579b8  0a 00 00 0a                                      beq #0x5579e8
005579bc  54 50 45 e2                                      sub r5, r5, #0x54
005579c0  44 30 95 e5                                      ldr r3, [r5, #0x44]
005579c4  05 00 53 e1                                      cmp r3, r5
005579c8  03 00 a0 e1                                      mov r0, r3
005579cc  02 00 00 0a                                      beq #0x5579dc
005579d0  00 00 53 e3                                      cmp r3, #0
005579d4  00 00 00 0a                                      beq #0x5579dc
005579d8  9c e2 f6 eb                                      bl #0x310450
005579dc  05 00 58 e1                                      cmp r8, r5
005579e0  f5 ff ff 1a                                      bne #0x5579bc
005579e4  00 80 94 e5                                      ldr r8, [r4]
005579e8  08 00 a0 e1                                      mov r0, r8
005579ec  07 70 86 e0                                      add r7, r6, r7
005579f0  96 e2 f6 eb                                      bl #0x310450
005579f4  08 70 84 e5                                      str r7, [r4, #8]
005579f8  40 08 84 e8                                      stm r4, {r6, fp}
005579fc  14 d0 8d e2                                      add sp, sp, #0x14
00557a00  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00557a04  54 70 a0 e3                                      mov r7, #0x54
00557a08  97 0e 07 e0                                      mul r7, r7, lr
00557a0c  cc ff ff ea                                      b #0x557944
00557a10  04 10 94 e5                                      ldr r1, [r4, #4]
00557a14  0b 20 a0 e1                                      mov r2, fp
00557a18  09 00 a0 e1                                      mov r0, sb
00557a1c  0c 30 8d e2                                      add r3, sp, #0xc
00557a20  00 80 8d e5                                      str r8, [sp]
00557a24  78 f9 ff eb                                      bl #0x55600c
00557a28  00 b0 a0 e1                                      mov fp, r0
00557a2c  de ff ff ea                                      b #0x5579ac

; FUNCTION 0x00557a30, declared_size=112, range_size=112, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Column, glitch::core::SAllocator<glitch::gui::CGUITable::Column, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable6ColumnENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::gui::CGUITable::Column, glitch::core::SAllocator<glitch::gui::CGUITable::Column, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::gui::CGUITable::Column const&)
; decoder-mode: arm
00557a30  70 40 2d e9                                      push {r4, r5, r6, lr}
00557a34  04 40 90 e5                                      ldr r4, [r0, #4]
00557a38  08 30 90 e5                                      ldr r3, [r0, #8]
00557a3c  00 60 a0 e1                                      mov r6, r0
00557a40  01 50 a0 e1                                      mov r5, r1
00557a44  03 00 54 e1                                      cmp r4, r3
00557a48  0f 00 00 0a                                      beq #0x557a8c
00557a4c  40 40 84 e5                                      str r4, [r4, #0x40]
00557a50  44 40 84 e5                                      str r4, [r4, #0x44]
00557a54  04 00 a0 e1                                      mov r0, r4
00557a58  44 10 91 e5                                      ldr r1, [r1, #0x44]
00557a5c  40 20 95 e5                                      ldr r2, [r5, #0x40]
00557a60  f1 38 f7 eb                                      bl #0x325e2c
00557a64  48 30 95 e5                                      ldr r3, [r5, #0x48]
00557a68  48 30 84 e5                                      str r3, [r4, #0x48]
00557a6c  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
00557a70  4c 30 84 e5                                      str r3, [r4, #0x4c]
00557a74  50 30 95 e5                                      ldr r3, [r5, #0x50]
00557a78  50 30 84 e5                                      str r3, [r4, #0x50]
00557a7c  04 30 96 e5                                      ldr r3, [r6, #4]
00557a80  54 30 83 e2                                      add r3, r3, #0x54
00557a84  04 30 86 e5                                      str r3, [r6, #4]
00557a88  70 80 bd e8                                      pop {r4, r5, r6, pc}
00557a8c  04 10 a0 e1                                      mov r1, r4
00557a90  05 20 a0 e1                                      mov r2, r5
00557a94  01 30 a0 e3                                      mov r3, #1
00557a98  70 40 bd e8                                      pop {r4, r5, r6, lr}
00557a9c  92 ff ff ea                                      b #0x5578ec

; FUNCTION 0x00558088, declared_size=124, range_size=124, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Column, glitch::core::SAllocator<glitch::gui::CGUITable::Column, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable6ColumnENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_SA_RKSt12__false_type
; demangled: std::vector<glitch::gui::CGUITable::Column, glitch::core::SAllocator<glitch::gui::CGUITable::Column, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::gui::CGUITable::Column*, glitch::gui::CGUITable::Column*, std::__false_type const&)
; decoder-mode: arm
00558088  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0055808c  04 30 90 e5                                      ldr r3, [r0, #4]
00558090  10 d0 4d e2                                      sub sp, sp, #0x10
00558094  01 50 a0 e1                                      mov r5, r1
00558098  00 40 a0 e1                                      mov r4, r0
0055809c  03 10 a0 e1                                      mov r1, r3
005580a0  02 00 a0 e1                                      mov r0, r2
005580a4  00 c0 a0 e3                                      mov ip, #0
005580a8  05 20 a0 e1                                      mov r2, r5
005580ac  0c 30 8d e2                                      add r3, sp, #0xc
005580b0  00 c0 8d e5                                      str ip, [sp]
005580b4  d3 ff ff eb                                      bl #0x558008
005580b8  04 70 94 e5                                      ldr r7, [r4, #4]
005580bc  00 80 a0 e1                                      mov r8, r0
005580c0  00 00 57 e1                                      cmp r7, r0
005580c4  0a 00 00 0a                                      beq #0x5580f4
005580c8  00 60 a0 e1                                      mov r6, r0
005580cc  44 30 96 e5                                      ldr r3, [r6, #0x44]
005580d0  06 00 53 e1                                      cmp r3, r6
005580d4  03 00 a0 e1                                      mov r0, r3
005580d8  54 60 86 e2                                      add r6, r6, #0x54
005580dc  02 00 00 0a                                      beq #0x5580ec
005580e0  00 00 53 e3                                      cmp r3, #0
005580e4  00 00 00 0a                                      beq #0x5580ec
005580e8  d8 e0 f6 eb                                      bl #0x310450
005580ec  06 00 57 e1                                      cmp r7, r6
005580f0  f5 ff ff 1a                                      bne #0x5580cc
005580f4  04 80 84 e5                                      str r8, [r4, #4]
005580f8  05 00 a0 e1                                      mov r0, r5
005580fc  10 d0 8d e2                                      add sp, sp, #0x10
00558100  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00558104, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Column, glitch::core::SAllocator<glitch::gui::CGUITable::Column, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable6ColumnENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_RKSt12__false_type
; demangled: std::vector<glitch::gui::CGUITable::Column, glitch::core::SAllocator<glitch::gui::CGUITable::Column, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::gui::CGUITable::Column*, std::__false_type const&)
; decoder-mode: arm
00558104  30 40 2d e9                                      push {r4, r5, lr}
00558108  04 30 90 e5                                      ldr r3, [r0, #4]
0055810c  00 50 a0 e1                                      mov r5, r0
00558110  54 00 81 e2                                      add r0, r1, #0x54
00558114  03 00 50 e1                                      cmp r0, r3
00558118  14 d0 4d e2                                      sub sp, sp, #0x14
0055811c  01 40 a0 e1                                      mov r4, r1
00558120  06 00 00 0a                                      beq #0x558140
00558124  03 10 a0 e1                                      mov r1, r3
00558128  00 c0 a0 e3                                      mov ip, #0
0055812c  04 20 a0 e1                                      mov r2, r4
00558130  0c 30 8d e2                                      add r3, sp, #0xc
00558134  00 c0 8d e5                                      str ip, [sp]
00558138  b2 ff ff eb                                      bl #0x558008
0055813c  04 00 95 e5                                      ldr r0, [r5, #4]
00558140  54 30 40 e2                                      sub r3, r0, #0x54
00558144  04 30 85 e5                                      str r3, [r5, #4]
00558148  44 00 93 e5                                      ldr r0, [r3, #0x44]
0055814c  03 00 50 e1                                      cmp r0, r3
00558150  02 00 00 0a                                      beq #0x558160
00558154  00 00 50 e3                                      cmp r0, #0
00558158  00 00 00 0a                                      beq #0x558160
0055815c  bb e0 f6 eb                                      bl #0x310450
00558160  04 00 a0 e1                                      mov r0, r4
00558164  14 d0 8d e2                                      add sp, sp, #0x14
00558168  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00558264, declared_size=380, range_size=380, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Column, glitch::core::SAllocator<glitch::gui::CGUITable::Column, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable6ColumnENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type.clone.14
; demangled: std::vector<glitch::gui::CGUITable::Column, glitch::core::SAllocator<glitch::gui::CGUITable::Column, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::gui::CGUITable::Column*, unsigned int, glitch::gui::CGUITable::Column const&, std::__false_type const&) [clone .clone.14]
; decoder-mode: arm
00558264  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00558268  00 30 90 e5                                      ldr r3, [r0]
0055826c  7c d0 4d e2                                      sub sp, sp, #0x7c
00558270  00 40 a0 e1                                      mov r4, r0
00558274  02 00 53 e1                                      cmp r3, r2
00558278  02 50 a0 e1                                      mov r5, r2
0055827c  01 70 a0 e1                                      mov r7, r1
00558280  1a 00 00 8a                                      bhi #0x5582f0
00558284  04 60 90 e5                                      ldr r6, [r0, #4]
00558288  06 00 52 e1                                      cmp r2, r6
0055828c  18 00 00 2a                                      bhs #0x5582f4
00558290  0c 60 8d e2                                      add r6, sp, #0xc
00558294  44 10 92 e5                                      ldr r1, [r2, #0x44]
00558298  06 00 a0 e1                                      mov r0, r6
0055829c  40 20 92 e5                                      ldr r2, [r2, #0x40]
005582a0  4c 60 8d e5                                      str r6, [sp, #0x4c]
005582a4  50 60 8d e5                                      str r6, [sp, #0x50]
005582a8  df 36 f7 eb                                      bl #0x325e2c
005582ac  50 30 95 e5                                      ldr r3, [r5, #0x50]
005582b0  48 e0 95 e5                                      ldr lr, [r5, #0x48]
005582b4  4c c0 95 e5                                      ldr ip, [r5, #0x4c]
005582b8  04 00 a0 e1                                      mov r0, r4
005582bc  07 10 a0 e1                                      mov r1, r7
005582c0  06 20 a0 e1                                      mov r2, r6
005582c4  54 e0 8d e5                                      str lr, [sp, #0x54]
005582c8  58 c0 8d e5                                      str ip, [sp, #0x58]
005582cc  5c 30 8d e5                                      str r3, [sp, #0x5c]
005582d0  e3 ff ff eb                                      bl #0x558264
005582d4  50 00 9d e5                                      ldr r0, [sp, #0x50]
005582d8  06 00 50 e1                                      cmp r0, r6
005582dc  25 00 00 0a                                      beq #0x558378
005582e0  00 00 50 e3                                      cmp r0, #0
005582e4  23 00 00 0a                                      beq #0x558378
005582e8  58 e0 f6 eb                                      bl #0x310450
005582ec  21 00 00 ea                                      b #0x558378
005582f0  04 60 90 e5                                      ldr r6, [r0, #4]
005582f4  06 80 67 e0                                      rsb r8, r7, r6
005582f8  3d 3f 0c e3                                      movw r3, #0xcf3d
005582fc  48 81 a0 e1                                      asr r8, r8, #2
00558300  f3 3c 43 e3                                      movt r3, #0x3cf3
00558304  93 08 08 e0                                      mul r8, r3, r8
00558308  01 00 58 e3                                      cmp r8, #1
0055830c  1b 00 00 8a                                      bhi #0x558380
00558310  54 b0 a0 e3                                      mov fp, #0x54
00558314  01 a0 68 e2                                      rsb sl, r8, #1
00558318  9b 6a 2a e0                                      mla sl, fp, sl, r6
0055831c  00 90 a0 e3                                      mov sb, #0
00558320  06 00 a0 e1                                      mov r0, r6
00558324  0a 10 a0 e1                                      mov r1, sl
00558328  05 20 a0 e1                                      mov r2, r5
0055832c  6c 30 8d e2                                      add r3, sp, #0x6c
00558330  00 90 8d e5                                      str sb, [sp]
00558334  19 f7 ff eb                                      bl #0x555fa0
00558338  0a 20 a0 e1                                      mov r2, sl
0055833c  04 a0 84 e5                                      str sl, [r4, #4]
00558340  06 10 a0 e1                                      mov r1, r6
00558344  70 30 8d e2                                      add r3, sp, #0x70
00558348  07 00 a0 e1                                      mov r0, r7
0055834c  00 90 8d e5                                      str sb, [sp]
00558350  2d f7 ff eb                                      bl #0x55600c
00558354  04 30 94 e5                                      ldr r3, [r4, #4]
00558358  07 00 a0 e1                                      mov r0, r7
0055835c  06 10 a0 e1                                      mov r1, r6
00558360  9b 38 28 e0                                      mla r8, fp, r8, r3
00558364  05 20 a0 e1                                      mov r2, r5
00558368  04 80 84 e5                                      str r8, [r4, #4]
0055836c  74 30 8d e2                                      add r3, sp, #0x74
00558370  00 90 8d e5                                      str sb, [sp]
00558374  9f ff ff eb                                      bl #0x5581f8
00558378  7c d0 8d e2                                      add sp, sp, #0x7c
0055837c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00558380  54 a0 46 e2                                      sub sl, r6, #0x54
00558384  00 80 a0 e3                                      mov r8, #0
00558388  06 10 a0 e1                                      mov r1, r6
0055838c  06 20 a0 e1                                      mov r2, r6
00558390  60 30 8d e2                                      add r3, sp, #0x60
00558394  0a 00 a0 e1                                      mov r0, sl
00558398  00 80 8d e5                                      str r8, [sp]
0055839c  1a f7 ff eb                                      bl #0x55600c
005583a0  04 30 94 e5                                      ldr r3, [r4, #4]
005583a4  0a 10 a0 e1                                      mov r1, sl
005583a8  06 20 a0 e1                                      mov r2, r6
005583ac  54 30 83 e2                                      add r3, r3, #0x54
005583b0  04 30 84 e5                                      str r3, [r4, #4]
005583b4  07 00 a0 e1                                      mov r0, r7
005583b8  64 30 8d e2                                      add r3, sp, #0x64
005583bc  00 80 8d e5                                      str r8, [sp]
005583c0  69 ff ff eb                                      bl #0x55816c
005583c4  07 00 a0 e1                                      mov r0, r7
005583c8  05 20 a0 e1                                      mov r2, r5
005583cc  54 10 87 e2                                      add r1, r7, #0x54
005583d0  68 30 8d e2                                      add r3, sp, #0x68
005583d4  00 80 8d e5                                      str r8, [sp]
005583d8  86 ff ff eb                                      bl #0x5581f8
005583dc  e5 ff ff ea                                      b #0x558378
