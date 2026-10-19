; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00557c4c, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Row, glitch::core::SAllocator<glitch::gui::CGUITable::Row, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable3RowENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::gui::CGUITable::Row, glitch::core::SAllocator<glitch::gui::CGUITable::Row, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00557c4c  70 40 2d e9                                      push {r4, r5, r6, lr}
00557c50  04 40 90 e5                                      ldr r4, [r0, #4]
00557c54  00 50 90 e5                                      ldr r5, [r0]
00557c58  00 60 a0 e1                                      mov r6, r0
00557c5c  05 00 54 e1                                      cmp r4, r5
00557c60  04 00 00 0a                                      beq #0x557c78
00557c64  0c 40 44 e2                                      sub r4, r4, #0xc
00557c68  04 00 a0 e1                                      mov r0, r4
00557c6c  d8 ff ff eb                                      bl #0x557bd4
00557c70  04 00 55 e1                                      cmp r5, r4
00557c74  fa ff ff 1a                                      bne #0x557c64
00557c78  00 00 96 e5                                      ldr r0, [r6]
00557c7c  00 00 50 e3                                      cmp r0, #0
00557c80  00 00 00 0a                                      beq #0x557c88
00557c84  f1 e1 f6 eb                                      bl #0x310450
00557c88  06 00 a0 e1                                      mov r0, r6
00557c8c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00557e44, declared_size=388, range_size=388, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Row, glitch::core::SAllocator<glitch::gui::CGUITable::Row, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable3RowENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb.clone.7
; demangled: std::vector<glitch::gui::CGUITable::Row, glitch::core::SAllocator<glitch::gui::CGUITable::Row, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::gui::CGUITable::Row*, glitch::gui::CGUITable::Row const&, std::__false_type const&, unsigned int, bool) [clone .clone.7]
; decoder-mode: arm
00557e44  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00557e48  00 50 90 e8                                      ldm r0, {ip, lr}
00557e4c  01 40 a0 e1                                      mov r4, r1
00557e50  0c d0 4d e2                                      sub sp, sp, #0xc
00557e54  0e c0 6c e0                                      rsb ip, ip, lr
00557e58  4c c1 a0 e1                                      asr ip, ip, #2
00557e5c  00 50 a0 e1                                      mov r5, r0
00557e60  0c 11 8c e0                                      add r1, ip, ip, lsl #2
00557e64  55 05 05 e3                                      movw r0, #0x5555
00557e68  01 12 81 e0                                      add r1, r1, r1, lsl #4
00557e6c  00 07 80 e1                                      orr r0, r0, r0, lsl #14
00557e70  01 14 81 e0                                      add r1, r1, r1, lsl #8
00557e74  04 30 8d e5                                      str r3, [sp, #4]
00557e78  01 18 81 e0                                      add r1, r1, r1, lsl #16
00557e7c  00 20 8d e5                                      str r2, [sp]
00557e80  81 c0 8c e0                                      add ip, ip, r1, lsl #1
00557e84  01 00 5c e3                                      cmp ip, #1
00557e88  0c 30 8c 20                                      addhs r3, ip, ip
00557e8c  01 30 8c 32                                      addlo r3, ip, #1
00557e90  00 00 53 e1                                      cmp r3, r0
00557e94  01 00 00 8a                                      bhi #0x557ea0
00557e98  03 00 5c e1                                      cmp ip, r3
00557e9c  46 00 00 9a                                      bls #0x557fbc
00557ea0  03 b0 e0 e3                                      mvn fp, #3
00557ea4  0b 00 a0 e1                                      mov r0, fp
00557ea8  00 10 a0 e3                                      mov r1, #0
00557eac  ad e1 f6 eb                                      bl #0x310568
00557eb0  00 a0 95 e5                                      ldr sl, [r5]
00557eb4  00 80 a0 e1                                      mov r8, r0
00557eb8  04 30 6a e0                                      rsb r3, sl, r4
00557ebc  43 31 a0 e1                                      asr r3, r3, #2
00557ec0  03 91 83 e0                                      add sb, r3, r3, lsl #2
00557ec4  09 92 89 e0                                      add sb, sb, sb, lsl #4
00557ec8  09 94 89 e0                                      add sb, sb, sb, lsl #8
00557ecc  09 98 89 e0                                      add sb, sb, sb, lsl #16
00557ed0  89 90 83 e0                                      add sb, r3, sb, lsl #1
00557ed4  00 00 59 e3                                      cmp sb, #0
00557ed8  00 90 a0 d1                                      movle sb, r0
00557edc  09 00 00 da                                      ble #0x557f08
00557ee0  09 70 a0 e1                                      mov r7, sb
00557ee4  00 60 a0 e3                                      mov r6, #0
00557ee8  06 00 88 e0                                      add r0, r8, r6
00557eec  06 10 8a e0                                      add r1, sl, r6
00557ef0  b7 fb ff eb                                      bl #0x556dd4
00557ef4  01 70 57 e2                                      subs r7, r7, #1
00557ef8  0c 60 86 e2                                      add r6, r6, #0xc
00557efc  f9 ff ff 1a                                      bne #0x557ee8
00557f00  0c 30 a0 e3                                      mov r3, #0xc
00557f04  93 89 29 e0                                      mla sb, r3, sb, r8
00557f08  09 00 a0 e1                                      mov r0, sb
00557f0c  00 10 9d e5                                      ldr r1, [sp]
00557f10  af fb ff eb                                      bl #0x556dd4
00557f14  04 30 9d e5                                      ldr r3, [sp, #4]
00557f18  0c 90 89 e2                                      add sb, sb, #0xc
00557f1c  00 00 53 e3                                      cmp r3, #0
00557f20  0f 00 00 0a                                      beq #0x557f64
00557f24  04 60 95 e5                                      ldr r6, [r5, #4]
00557f28  00 40 95 e5                                      ldr r4, [r5]
00557f2c  04 00 56 e1                                      cmp r6, r4
00557f30  06 00 a0 01                                      moveq r0, r6
00557f34  05 00 00 0a                                      beq #0x557f50
00557f38  0c 60 46 e2                                      sub r6, r6, #0xc
00557f3c  06 00 a0 e1                                      mov r0, r6
00557f40  23 ff ff eb                                      bl #0x557bd4
00557f44  06 00 54 e1                                      cmp r4, r6
00557f48  fa ff ff 1a                                      bne #0x557f38
00557f4c  00 00 95 e5                                      ldr r0, [r5]
00557f50  0b b0 88 e0                                      add fp, r8, fp
00557f54  3d e1 f6 eb                                      bl #0x310450
00557f58  00 0b 85 e8                                      stm r5, {r8, sb, fp}
00557f5c  0c d0 8d e2                                      add sp, sp, #0xc
00557f60  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00557f64  04 60 95 e5                                      ldr r6, [r5, #4]
00557f68  06 30 64 e0                                      rsb r3, r4, r6
00557f6c  43 31 a0 e1                                      asr r3, r3, #2
00557f70  03 a1 83 e0                                      add sl, r3, r3, lsl #2
00557f74  0a a2 8a e0                                      add sl, sl, sl, lsl #4
00557f78  0a a4 8a e0                                      add sl, sl, sl, lsl #8
00557f7c  0a a8 8a e0                                      add sl, sl, sl, lsl #16
00557f80  8a a0 83 e0                                      add sl, r3, sl, lsl #1
00557f84  00 00 5a e3                                      cmp sl, #0
00557f88  e6 ff ff da                                      ble #0x557f28
00557f8c  0a 70 a0 e1                                      mov r7, sl
00557f90  09 60 a0 e1                                      mov r6, sb
00557f94  06 00 a0 e1                                      mov r0, r6
00557f98  04 10 a0 e1                                      mov r1, r4
00557f9c  8c fb ff eb                                      bl #0x556dd4
00557fa0  01 70 57 e2                                      subs r7, r7, #1
00557fa4  0c 40 84 e2                                      add r4, r4, #0xc
00557fa8  0c 60 86 e2                                      add r6, r6, #0xc
00557fac  f8 ff ff 1a                                      bne #0x557f94
00557fb0  0c 30 a0 e3                                      mov r3, #0xc
00557fb4  93 9a 29 e0                                      mla sb, r3, sl, sb
00557fb8  d9 ff ff ea                                      b #0x557f24
00557fbc  0c b0 a0 e3                                      mov fp, #0xc
00557fc0  9b 03 0b e0                                      mul fp, fp, r3
00557fc4  b6 ff ff ea                                      b #0x557ea4

; FUNCTION 0x00557fc8, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Row, glitch::core::SAllocator<glitch::gui::CGUITable::Row, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable3RowENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::gui::CGUITable::Row, glitch::core::SAllocator<glitch::gui::CGUITable::Row, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::gui::CGUITable::Row const&)
; decoder-mode: arm
00557fc8  10 40 2d e9                                      push {r4, lr}
00557fcc  08 10 90 e9                                      ldmib r0, {r3, ip}
00557fd0  00 40 a0 e1                                      mov r4, r0
00557fd4  01 20 a0 e1                                      mov r2, r1
00557fd8  0c 00 53 e1                                      cmp r3, ip
00557fdc  05 00 00 0a                                      beq #0x557ff8
00557fe0  03 00 a0 e1                                      mov r0, r3
00557fe4  7a fb ff eb                                      bl #0x556dd4
00557fe8  04 30 94 e5                                      ldr r3, [r4, #4]
00557fec  0c 30 83 e2                                      add r3, r3, #0xc
00557ff0  04 30 84 e5                                      str r3, [r4, #4]
00557ff4  10 80 bd e8                                      pop {r4, pc}
00557ff8  03 10 a0 e1                                      mov r1, r3
00557ffc  01 30 a0 e3                                      mov r3, #1
00558000  10 40 bd e8                                      pop {r4, lr}
00558004  8e ff ff ea                                      b #0x557e44

; FUNCTION 0x005586dc, declared_size=148, range_size=148, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Row, glitch::core::SAllocator<glitch::gui::CGUITable::Row, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable3RowENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_SA_RKSt12__false_type
; demangled: std::vector<glitch::gui::CGUITable::Row, glitch::core::SAllocator<glitch::gui::CGUITable::Row, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::gui::CGUITable::Row*, glitch::gui::CGUITable::Row*, std::__false_type const&)
; decoder-mode: arm
005586dc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005586e0  04 40 90 e5                                      ldr r4, [r0, #4]
005586e4  00 50 a0 e1                                      mov r5, r0
005586e8  02 80 a0 e1                                      mov r8, r2
005586ec  04 30 62 e0                                      rsb r3, r2, r4
005586f0  43 31 a0 e1                                      asr r3, r3, #2
005586f4  01 70 a0 e1                                      mov r7, r1
005586f8  03 a1 83 e0                                      add sl, r3, r3, lsl #2
005586fc  0a a2 8a e0                                      add sl, sl, sl, lsl #4
00558700  0a a4 8a e0                                      add sl, sl, sl, lsl #8
00558704  0a a8 8a e0                                      add sl, sl, sl, lsl #16
00558708  8a a0 83 e0                                      add sl, r3, sl, lsl #1
0055870c  00 00 5a e3                                      cmp sl, #0
00558710  01 a0 a0 d1                                      movle sl, r1
00558714  0a 00 00 da                                      ble #0x558744
00558718  0a 60 a0 e1                                      mov r6, sl
0055871c  00 40 a0 e3                                      mov r4, #0
00558720  04 00 87 e0                                      add r0, r7, r4
00558724  04 10 88 e0                                      add r1, r8, r4
00558728  41 ff ff eb                                      bl #0x558434
0055872c  01 60 56 e2                                      subs r6, r6, #1
00558730  0c 40 84 e2                                      add r4, r4, #0xc
00558734  f9 ff ff 1a                                      bne #0x558720
00558738  0c 30 a0 e3                                      mov r3, #0xc
0055873c  93 7a 2a e0                                      mla sl, r3, sl, r7
00558740  04 40 95 e5                                      ldr r4, [r5, #4]
00558744  0a 00 54 e1                                      cmp r4, sl
00558748  05 00 00 0a                                      beq #0x558764
0055874c  0a 60 a0 e1                                      mov r6, sl
00558750  06 00 a0 e1                                      mov r0, r6
00558754  0c 60 86 e2                                      add r6, r6, #0xc
00558758  1d fd ff eb                                      bl #0x557bd4
0055875c  06 00 54 e1                                      cmp r4, r6
00558760  fa ff ff 1a                                      bne #0x558750
00558764  04 a0 85 e5                                      str sl, [r5, #4]
00558768  07 00 a0 e1                                      mov r0, r7
0055876c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00558864, declared_size=116, range_size=116, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Row, glitch::core::SAllocator<glitch::gui::CGUITable::Row, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable3RowENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_RKSt12__false_type
; demangled: std::vector<glitch::gui::CGUITable::Row, glitch::core::SAllocator<glitch::gui::CGUITable::Row, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::gui::CGUITable::Row*, std::__false_type const&)
; decoder-mode: arm
00558864  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00558868  00 70 a0 e1                                      mov r7, r0
0055886c  04 00 90 e5                                      ldr r0, [r0, #4]
00558870  0c 30 81 e2                                      add r3, r1, #0xc
00558874  01 60 a0 e1                                      mov r6, r1
00558878  00 00 53 e1                                      cmp r3, r0
0055887c  10 00 00 0a                                      beq #0x5588c4
00558880  00 30 63 e0                                      rsb r3, r3, r0
00558884  43 31 a0 e1                                      asr r3, r3, #2
00558888  03 41 83 e0                                      add r4, r3, r3, lsl #2
0055888c  04 42 84 e0                                      add r4, r4, r4, lsl #4
00558890  04 44 84 e0                                      add r4, r4, r4, lsl #8
00558894  04 48 84 e0                                      add r4, r4, r4, lsl #16
00558898  84 40 83 e0                                      add r4, r3, r4, lsl #1
0055889c  00 00 54 e3                                      cmp r4, #0
005588a0  07 00 00 da                                      ble #0x5588c4
005588a4  01 00 a0 e1                                      mov r0, r1
005588a8  0c 50 80 e2                                      add r5, r0, #0xc
005588ac  05 10 a0 e1                                      mov r1, r5
005588b0  df fe ff eb                                      bl #0x558434
005588b4  01 40 54 e2                                      subs r4, r4, #1
005588b8  05 00 a0 e1                                      mov r0, r5
005588bc  f9 ff ff 1a                                      bne #0x5588a8
005588c0  04 00 97 e5                                      ldr r0, [r7, #4]
005588c4  0c 00 40 e2                                      sub r0, r0, #0xc
005588c8  04 00 87 e5                                      str r0, [r7, #4]
005588cc  c0 fc ff eb                                      bl #0x557bd4
005588d0  06 00 a0 e1                                      mov r0, r6
005588d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0055ac64, declared_size=408, range_size=408, mode=arm
; class-group: std::vector<glitch::gui::CGUITable::Row, glitch::core::SAllocator<glitch::gui::CGUITable::Row, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable3RowENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type.clone.8
; demangled: std::vector<glitch::gui::CGUITable::Row, glitch::core::SAllocator<glitch::gui::CGUITable::Row, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::gui::CGUITable::Row*, unsigned int, glitch::gui::CGUITable::Row const&, std::__false_type const&) [clone .clone.8]
; decoder-mode: arm
0055ac64  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0055ac68  00 30 90 e5                                      ldr r3, [r0]
0055ac6c  10 d0 4d e2                                      sub sp, sp, #0x10
0055ac70  00 40 a0 e1                                      mov r4, r0
0055ac74  02 00 53 e1                                      cmp r3, r2
0055ac78  02 70 a0 e1                                      mov r7, r2
0055ac7c  01 80 a0 e1                                      mov r8, r1
0055ac80  0d 00 00 8a                                      bhi #0x55acbc
0055ac84  04 50 90 e5                                      ldr r5, [r0, #4]
0055ac88  05 00 52 e1                                      cmp r2, r5
0055ac8c  0b 00 00 2a                                      bhs #0x55acc0
0055ac90  04 50 8d e2                                      add r5, sp, #4
0055ac94  02 10 a0 e1                                      mov r1, r2
0055ac98  05 00 a0 e1                                      mov r0, r5
0055ac9c  4c f0 ff eb                                      bl #0x556dd4
0055aca0  04 00 a0 e1                                      mov r0, r4
0055aca4  08 10 a0 e1                                      mov r1, r8
0055aca8  05 20 a0 e1                                      mov r2, r5
0055acac  ec ff ff eb                                      bl #0x55ac64
0055acb0  05 00 a0 e1                                      mov r0, r5
0055acb4  c6 f3 ff eb                                      bl #0x557bd4
0055acb8  49 00 00 ea                                      b #0x55ade4
0055acbc  04 50 90 e5                                      ldr r5, [r0, #4]
0055acc0  05 30 68 e0                                      rsb r3, r8, r5
0055acc4  43 31 a0 e1                                      asr r3, r3, #2
0055acc8  03 91 83 e0                                      add sb, r3, r3, lsl #2
0055accc  09 92 89 e0                                      add sb, sb, sb, lsl #4
0055acd0  09 94 89 e0                                      add sb, sb, sb, lsl #8
0055acd4  09 98 89 e0                                      add sb, sb, sb, lsl #16
0055acd8  89 90 83 e0                                      add sb, r3, sb, lsl #1
0055acdc  01 00 59 e3                                      cmp sb, #1
0055ace0  21 00 00 9a                                      bls #0x55ad6c
0055ace4  0c 10 45 e2                                      sub r1, r5, #0xc
0055ace8  01 a0 a0 e1                                      mov sl, r1
0055acec  01 60 a0 e3                                      mov r6, #1
0055acf0  00 00 00 ea                                      b #0x55acf8
0055acf4  0c 10 45 e2                                      sub r1, r5, #0xc
0055acf8  05 00 a0 e1                                      mov r0, r5
0055acfc  34 f0 ff eb                                      bl #0x556dd4
0055ad00  01 60 56 e2                                      subs r6, r6, #1
0055ad04  0c 50 85 e2                                      add r5, r5, #0xc
0055ad08  f9 ff ff 1a                                      bne #0x55acf4
0055ad0c  0a 30 68 e0                                      rsb r3, r8, sl
0055ad10  43 31 a0 e1                                      asr r3, r3, #2
0055ad14  04 50 94 e5                                      ldr r5, [r4, #4]
0055ad18  03 21 83 e0                                      add r2, r3, r3, lsl #2
0055ad1c  02 22 82 e0                                      add r2, r2, r2, lsl #4
0055ad20  0c 50 85 e2                                      add r5, r5, #0xc
0055ad24  02 24 82 e0                                      add r2, r2, r2, lsl #8
0055ad28  04 50 84 e5                                      str r5, [r4, #4]
0055ad2c  02 28 82 e0                                      add r2, r2, r2, lsl #16
0055ad30  82 40 83 e0                                      add r4, r3, r2, lsl #1
0055ad34  00 00 54 e3                                      cmp r4, #0
0055ad38  07 00 00 da                                      ble #0x55ad5c
0055ad3c  00 00 00 ea                                      b #0x55ad44
0055ad40  05 a0 a0 e1                                      mov sl, r5
0055ad44  0c 50 4a e2                                      sub r5, sl, #0xc
0055ad48  0a 00 a0 e1                                      mov r0, sl
0055ad4c  05 10 a0 e1                                      mov r1, r5
0055ad50  b7 f5 ff eb                                      bl #0x558434
0055ad54  01 40 54 e2                                      subs r4, r4, #1
0055ad58  f8 ff ff 1a                                      bne #0x55ad40
0055ad5c  08 00 a0 e1                                      mov r0, r8
0055ad60  07 10 a0 e1                                      mov r1, r7
0055ad64  b2 f5 ff eb                                      bl #0x558434
0055ad68  1d 00 00 ea                                      b #0x55ade4
0055ad6c  01 30 69 e2                                      rsb r3, sb, #1
0055ad70  0c a0 a0 e3                                      mov sl, #0xc
0055ad74  9a 53 2a e0                                      mla sl, sl, r3, r5
0055ad78  0a 30 65 e0                                      rsb r3, r5, sl
0055ad7c  43 31 a0 e1                                      asr r3, r3, #2
0055ad80  03 61 83 e0                                      add r6, r3, r3, lsl #2
0055ad84  06 62 86 e0                                      add r6, r6, r6, lsl #4
0055ad88  06 64 86 e0                                      add r6, r6, r6, lsl #8
0055ad8c  06 68 86 e0                                      add r6, r6, r6, lsl #16
0055ad90  86 60 83 e0                                      add r6, r3, r6, lsl #1
0055ad94  00 00 56 e3                                      cmp r6, #0
0055ad98  05 00 00 da                                      ble #0x55adb4
0055ad9c  05 00 a0 e1                                      mov r0, r5
0055ada0  07 10 a0 e1                                      mov r1, r7
0055ada4  0a f0 ff eb                                      bl #0x556dd4
0055ada8  01 60 56 e2                                      subs r6, r6, #1
0055adac  0c 50 85 e2                                      add r5, r5, #0xc
0055adb0  f9 ff ff 1a                                      bne #0x55ad9c
0055adb4  01 00 59 e3                                      cmp sb, #1
0055adb8  04 a0 84 e5                                      str sl, [r4, #4]
0055adbc  0a 00 00 1a                                      bne #0x55adec
0055adc0  08 10 a0 e1                                      mov r1, r8
0055adc4  0a 00 a0 e1                                      mov r0, sl
0055adc8  01 f0 ff eb                                      bl #0x556dd4
0055adcc  04 30 94 e5                                      ldr r3, [r4, #4]
0055add0  08 00 a0 e1                                      mov r0, r8
0055add4  07 10 a0 e1                                      mov r1, r7
0055add8  0c 30 83 e2                                      add r3, r3, #0xc
0055addc  04 30 84 e5                                      str r3, [r4, #4]
0055ade0  93 f5 ff eb                                      bl #0x558434
0055ade4  10 d0 8d e2                                      add sp, sp, #0x10
0055ade8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0055adec  0c 30 a0 e3                                      mov r3, #0xc
0055adf0  93 a9 2a e0                                      mla sl, r3, sb, sl
0055adf4  04 a0 84 e5                                      str sl, [r4, #4]
0055adf8  f9 ff ff ea                                      b #0x55ade4
