; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005437e8, declared_size=460, range_size=460, mode=arm
; class-group: std::vector<glitch::gui::CGUIListBox::ListItem, glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui11CGUIListBox8ListItemENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type.clone.9
; demangled: std::vector<glitch::gui::CGUIListBox::ListItem, glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::gui::CGUIListBox::ListItem*, unsigned int, glitch::gui::CGUIListBox::ListItem const&, std::__false_type const&) [clone .clone.9]
; decoder-mode: arm
005437e8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005437ec  00 30 90 e5                                      ldr r3, [r0]
005437f0  6c d0 4d e2                                      sub sp, sp, #0x6c
005437f4  00 50 a0 e1                                      mov r5, r0
005437f8  02 00 53 e1                                      cmp r3, r2
005437fc  02 40 a0 e1                                      mov r4, r2
00543800  01 60 a0 e1                                      mov r6, r1
00543804  1d 00 00 8a                                      bhi #0x543880
00543808  04 80 90 e5                                      ldr r8, [r0, #4]
0054380c  08 00 52 e1                                      cmp r2, r8
00543810  1b 00 00 2a                                      bhs #0x543884
00543814  44 10 92 e5                                      ldr r1, [r2, #0x44]
00543818  0d 00 a0 e1                                      mov r0, sp
0054381c  40 20 92 e5                                      ldr r2, [r2, #0x40]
00543820  40 d0 8d e5                                      str sp, [sp, #0x40]
00543824  44 d0 8d e5                                      str sp, [sp, #0x44]
00543828  7f 89 f7 eb                                      bl #0x325e2c
0054382c  48 30 94 e5                                      ldr r3, [r4, #0x48]
00543830  0d a0 a0 e1                                      mov sl, sp
00543834  4c 40 84 e2                                      add r4, r4, #0x4c
00543838  51 80 8d e2                                      add r8, sp, #0x51
0054383c  48 30 8d e5                                      str r3, [sp, #0x48]
00543840  00 70 a0 e3                                      mov r7, #0
00543844  05 00 48 e2                                      sub r0, r8, #5
00543848  07 10 84 e0                                      add r1, r4, r7
0054384c  05 20 a0 e3                                      mov r2, #5
00543850  05 70 87 e2                                      add r7, r7, #5
00543854  03 2c f7 eb                                      bl #0x30e868
00543858  14 00 57 e3                                      cmp r7, #0x14
0054385c  05 80 88 e2                                      add r8, r8, #5
00543860  f7 ff ff 1a                                      bne #0x543844
00543864  05 00 a0 e1                                      mov r0, r5
00543868  06 10 a0 e1                                      mov r1, r6
0054386c  0d 20 a0 e1                                      mov r2, sp
00543870  dc ff ff eb                                      bl #0x5437e8
00543874  0d 00 a0 e1                                      mov r0, sp
00543878  ba fa ff eb                                      bl #0x542368
0054387c  27 00 00 ea                                      b #0x543920
00543880  04 80 90 e5                                      ldr r8, [r0, #4]
00543884  08 30 66 e0                                      rsb r3, r6, r8
00543888  c3 32 a0 e1                                      asr r3, r3, #5
0054388c  03 71 83 e0                                      add r7, r3, r3, lsl #2
00543890  07 72 87 e0                                      add r7, r7, r7, lsl #4
00543894  07 74 87 e0                                      add r7, r7, r7, lsl #8
00543898  07 78 87 e0                                      add r7, r7, r7, lsl #16
0054389c  87 70 83 e0                                      add r7, r3, r7, lsl #1
005438a0  01 00 57 e3                                      cmp r7, #1
005438a4  1f 00 00 8a                                      bhi #0x543928
005438a8  01 10 67 e2                                      rsb r1, r7, #1
005438ac  04 20 a0 e1                                      mov r2, r4
005438b0  08 00 a0 e1                                      mov r0, r8
005438b4  7e ff ff eb                                      bl #0x5436b4
005438b8  64 30 8d e2                                      add r3, sp, #0x64
005438bc  00 20 a0 e1                                      mov r2, r0
005438c0  04 00 85 e5                                      str r0, [r5, #4]
005438c4  08 10 a0 e1                                      mov r1, r8
005438c8  06 00 a0 e1                                      mov r0, r6
005438cc  9d ff ff eb                                      bl #0x543748
005438d0  04 30 95 e5                                      ldr r3, [r5, #4]
005438d4  60 20 a0 e3                                      mov r2, #0x60
005438d8  01 00 57 e3                                      cmp r7, #1
005438dc  92 37 27 e0                                      mla r7, r2, r7, r3
005438e0  04 70 85 e5                                      str r7, [r5, #4]
005438e4  0d 00 00 1a                                      bne #0x543920
005438e8  04 00 56 e1                                      cmp r6, r4
005438ec  03 00 00 0a                                      beq #0x543900
005438f0  06 00 a0 e1                                      mov r0, r6
005438f4  44 10 94 e5                                      ldr r1, [r4, #0x44]
005438f8  40 20 94 e5                                      ldr r2, [r4, #0x40]
005438fc  27 7e f7 eb                                      bl #0x3231a0
00543900  48 30 94 e5                                      ldr r3, [r4, #0x48]
00543904  4c c0 86 e2                                      add ip, r6, #0x4c
00543908  4c 40 84 e2                                      add r4, r4, #0x4c
0054390c  48 30 86 e5                                      str r3, [r6, #0x48]
00543910  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
00543914  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00543918  00 30 94 e5                                      ldr r3, [r4]
0054391c  00 30 8c e5                                      str r3, [ip]
00543920  6c d0 8d e2                                      add sp, sp, #0x6c
00543924  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00543928  08 10 a0 e1                                      mov r1, r8
0054392c  60 80 48 e2                                      sub r8, r8, #0x60
00543930  01 20 a0 e1                                      mov r2, r1
00543934  60 30 8d e2                                      add r3, sp, #0x60
00543938  08 00 a0 e1                                      mov r0, r8
0054393c  81 ff ff eb                                      bl #0x543748
00543940  08 30 66 e0                                      rsb r3, r6, r8
00543944  c3 32 a0 e1                                      asr r3, r3, #5
00543948  04 20 95 e5                                      ldr r2, [r5, #4]
0054394c  03 a1 83 e0                                      add sl, r3, r3, lsl #2
00543950  0a a2 8a e0                                      add sl, sl, sl, lsl #4
00543954  60 20 82 e2                                      add r2, r2, #0x60
00543958  0a a4 8a e0                                      add sl, sl, sl, lsl #8
0054395c  04 20 85 e5                                      str r2, [r5, #4]
00543960  0a a8 8a e0                                      add sl, sl, sl, lsl #16
00543964  8a a0 83 e0                                      add sl, r3, sl, lsl #1
00543968  00 00 5a e3                                      cmp sl, #0
0054396c  dd ff ff da                                      ble #0x5438e8
00543970  60 50 48 e2                                      sub r5, r8, #0x60
00543974  08 00 a0 e1                                      mov r0, r8
00543978  44 10 95 e5                                      ldr r1, [r5, #0x44]
0054397c  40 20 95 e5                                      ldr r2, [r5, #0x40]
00543980  06 7e f7 eb                                      bl #0x3231a0
00543984  48 30 95 e5                                      ldr r3, [r5, #0x48]
00543988  ac 70 85 e2                                      add r7, r5, #0xac
0054398c  4c c0 85 e2                                      add ip, r5, #0x4c
00543990  a8 30 85 e5                                      str r3, [r5, #0xa8]
00543994  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
00543998  0f 00 a7 e8                                      stm r7!, {r0, r1, r2, r3}
0054399c  00 30 9c e5                                      ldr r3, [ip]
005439a0  01 a0 5a e2                                      subs sl, sl, #1
005439a4  05 80 a0 e1                                      mov r8, r5
005439a8  00 30 87 e5                                      str r3, [r7]
005439ac  cd ff ff 0a                                      beq #0x5438e8
005439b0  ee ff ff ea                                      b #0x543970

; FUNCTION 0x0054414c, declared_size=88, range_size=88, mode=arm
; class-group: std::vector<glitch::gui::CGUIListBox::ListItem, glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui11CGUIListBox8ListItemENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::gui::CGUIListBox::ListItem, glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
0054414c  70 40 2d e9                                      push {r4, r5, r6, lr}
00544150  04 40 90 e5                                      ldr r4, [r0, #4]
00544154  00 50 90 e5                                      ldr r5, [r0]
00544158  00 60 a0 e1                                      mov r6, r0
0054415c  05 00 54 e1                                      cmp r4, r5
00544160  09 00 00 0a                                      beq #0x54418c
00544164  60 40 44 e2                                      sub r4, r4, #0x60
00544168  44 30 94 e5                                      ldr r3, [r4, #0x44]
0054416c  04 00 53 e1                                      cmp r3, r4
00544170  03 00 a0 e1                                      mov r0, r3
00544174  02 00 00 0a                                      beq #0x544184
00544178  00 00 53 e3                                      cmp r3, #0
0054417c  00 00 00 0a                                      beq #0x544184
00544180  b2 30 f7 eb                                      bl #0x310450
00544184  04 00 55 e1                                      cmp r5, r4
00544188  f5 ff ff 1a                                      bne #0x544164
0054418c  00 00 96 e5                                      ldr r0, [r6]
00544190  00 00 50 e3                                      cmp r0, #0
00544194  00 00 00 0a                                      beq #0x54419c
00544198  ac 30 f7 eb                                      bl #0x310450
0054419c  06 00 a0 e1                                      mov r0, r6
005441a0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005441a4, declared_size=220, range_size=220, mode=arm
; class-group: std::vector<glitch::gui::CGUIListBox::ListItem, glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui11CGUIListBox8ListItemENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_SA_RKSt12__false_type
; demangled: std::vector<glitch::gui::CGUIListBox::ListItem, glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::gui::CGUIListBox::ListItem*, glitch::gui::CGUIListBox::ListItem*, std::__false_type const&)
; decoder-mode: arm
005441a4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005441a8  04 40 90 e5                                      ldr r4, [r0, #4]
005441ac  00 80 a0 e1                                      mov r8, r0
005441b0  02 50 a0 e1                                      mov r5, r2
005441b4  04 30 62 e0                                      rsb r3, r2, r4
005441b8  c3 32 a0 e1                                      asr r3, r3, #5
005441bc  01 a0 a0 e1                                      mov sl, r1
005441c0  03 91 83 e0                                      add sb, r3, r3, lsl #2
005441c4  09 92 89 e0                                      add sb, sb, sb, lsl #4
005441c8  09 94 89 e0                                      add sb, sb, sb, lsl #8
005441cc  09 98 89 e0                                      add sb, sb, sb, lsl #16
005441d0  89 90 83 e0                                      add sb, r3, sb, lsl #1
005441d4  00 00 59 e3                                      cmp sb, #0
005441d8  01 90 a0 d1                                      movle sb, r1
005441dc  17 00 00 da                                      ble #0x544240
005441e0  09 70 a0 e1                                      mov r7, sb
005441e4  01 60 a0 e1                                      mov r6, r1
005441e8  00 00 00 ea                                      b #0x5441f0
005441ec  60 50 85 e2                                      add r5, r5, #0x60
005441f0  05 00 56 e1                                      cmp r6, r5
005441f4  06 00 a0 e1                                      mov r0, r6
005441f8  02 00 00 0a                                      beq #0x544208
005441fc  44 10 95 e5                                      ldr r1, [r5, #0x44]
00544200  40 20 95 e5                                      ldr r2, [r5, #0x40]
00544204  e5 7b f7 eb                                      bl #0x3231a0
00544208  48 30 95 e5                                      ldr r3, [r5, #0x48]
0054420c  4c c0 86 e2                                      add ip, r6, #0x4c
00544210  4c 40 85 e2                                      add r4, r5, #0x4c
00544214  48 30 86 e5                                      str r3, [r6, #0x48]
00544218  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
0054421c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00544220  00 30 94 e5                                      ldr r3, [r4]
00544224  01 70 57 e2                                      subs r7, r7, #1
00544228  60 60 86 e2                                      add r6, r6, #0x60
0054422c  00 30 8c e5                                      str r3, [ip]
00544230  ed ff ff 1a                                      bne #0x5441ec
00544234  60 30 a0 e3                                      mov r3, #0x60
00544238  93 a9 29 e0                                      mla sb, r3, sb, sl
0054423c  04 40 98 e5                                      ldr r4, [r8, #4]
00544240  09 00 54 e1                                      cmp r4, sb
00544244  0a 00 00 0a                                      beq #0x544274
00544248  09 50 a0 e1                                      mov r5, sb
0054424c  44 30 95 e5                                      ldr r3, [r5, #0x44]
00544250  05 00 53 e1                                      cmp r3, r5
00544254  03 00 a0 e1                                      mov r0, r3
00544258  60 50 85 e2                                      add r5, r5, #0x60
0054425c  02 00 00 0a                                      beq #0x54426c
00544260  00 00 53 e3                                      cmp r3, #0
00544264  00 00 00 0a                                      beq #0x54426c
00544268  78 30 f7 eb                                      bl #0x310450
0054426c  05 00 54 e1                                      cmp r4, r5
00544270  f5 ff ff 1a                                      bne #0x54424c
00544274  04 90 88 e5                                      str sb, [r8, #4]
00544278  0a 00 a0 e1                                      mov r0, sl
0054427c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005442e4, declared_size=172, range_size=172, mode=arm
; class-group: std::vector<glitch::gui::CGUIListBox::ListItem, glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui11CGUIListBox8ListItemENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_RKSt12__false_type
; demangled: std::vector<glitch::gui::CGUIListBox::ListItem, glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::gui::CGUIListBox::ListItem*, std::__false_type const&)
; decoder-mode: arm
005442e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005442e8  04 30 90 e5                                      ldr r3, [r0, #4]
005442ec  60 20 81 e2                                      add r2, r1, #0x60
005442f0  00 70 a0 e1                                      mov r7, r0
005442f4  03 00 52 e1                                      cmp r2, r3
005442f8  01 80 a0 e1                                      mov r8, r1
005442fc  19 00 00 0a                                      beq #0x544368
00544300  03 20 62 e0                                      rsb r2, r2, r3
00544304  c2 22 a0 e1                                      asr r2, r2, #5
00544308  02 61 82 e0                                      add r6, r2, r2, lsl #2
0054430c  06 62 86 e0                                      add r6, r6, r6, lsl #4
00544310  06 64 86 e0                                      add r6, r6, r6, lsl #8
00544314  06 68 86 e0                                      add r6, r6, r6, lsl #16
00544318  86 60 82 e0                                      add r6, r2, r6, lsl #1
0054431c  00 00 56 e3                                      cmp r6, #0
00544320  10 00 00 da                                      ble #0x544368
00544324  01 40 a0 e1                                      mov r4, r1
00544328  a4 10 94 e5                                      ldr r1, [r4, #0xa4]
0054432c  a0 20 94 e5                                      ldr r2, [r4, #0xa0]
00544330  04 00 a0 e1                                      mov r0, r4
00544334  99 7b f7 eb                                      bl #0x3231a0
00544338  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
0054433c  ac 50 84 e2                                      add r5, r4, #0xac
00544340  4c c0 84 e2                                      add ip, r4, #0x4c
00544344  48 30 84 e5                                      str r3, [r4, #0x48]
00544348  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
0054434c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00544350  00 30 95 e5                                      ldr r3, [r5]
00544354  01 60 56 e2                                      subs r6, r6, #1
00544358  60 40 84 e2                                      add r4, r4, #0x60
0054435c  00 30 8c e5                                      str r3, [ip]
00544360  f0 ff ff 1a                                      bne #0x544328
00544364  04 30 97 e5                                      ldr r3, [r7, #4]
00544368  60 30 43 e2                                      sub r3, r3, #0x60
0054436c  04 30 87 e5                                      str r3, [r7, #4]
00544370  44 00 93 e5                                      ldr r0, [r3, #0x44]
00544374  03 00 50 e1                                      cmp r0, r3
00544378  02 00 00 0a                                      beq #0x544388
0054437c  00 00 50 e3                                      cmp r0, #0
00544380  00 00 00 0a                                      beq #0x544388
00544384  31 30 f7 eb                                      bl #0x310450
00544388  08 00 a0 e1                                      mov r0, r8
0054438c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005451a4, declared_size=352, range_size=352, mode=arm
; class-group: std::vector<glitch::gui::CGUIListBox::ListItem, glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui11CGUIListBox8ListItemENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb.clone.8
; demangled: std::vector<glitch::gui::CGUIListBox::ListItem, glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::gui::CGUIListBox::ListItem*, glitch::gui::CGUIListBox::ListItem const&, std::__false_type const&, unsigned int, bool) [clone .clone.8]
; decoder-mode: arm
005451a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005451a8  00 50 90 e8                                      ldm r0, {ip, lr}
005451ac  14 d0 4d e2                                      sub sp, sp, #0x14
005451b0  00 10 8d e5                                      str r1, [sp]
005451b4  0e c0 6c e0                                      rsb ip, ip, lr
005451b8  cc c2 a0 e1                                      asr ip, ip, #5
005451bc  00 40 a0 e1                                      mov r4, r0
005451c0  0c 11 8c e0                                      add r1, ip, ip, lsl #2
005451c4  aa 0a 0a e3                                      movw r0, #0xaaaa
005451c8  01 12 81 e0                                      add r1, r1, r1, lsl #4
005451cc  00 05 80 e1                                      orr r0, r0, r0, lsl #10
005451d0  01 14 81 e0                                      add r1, r1, r1, lsl #8
005451d4  04 30 8d e5                                      str r3, [sp, #4]
005451d8  01 18 81 e0                                      add r1, r1, r1, lsl #16
005451dc  02 50 a0 e1                                      mov r5, r2
005451e0  81 c0 8c e0                                      add ip, ip, r1, lsl #1
005451e4  01 00 5c e3                                      cmp ip, #1
005451e8  0c 30 8c 20                                      addhs r3, ip, ip
005451ec  01 30 8c 32                                      addlo r3, ip, #1
005451f0  00 00 53 e1                                      cmp r3, r0
005451f4  01 00 00 8a                                      bhi #0x545200
005451f8  03 00 5c e1                                      cmp ip, r3
005451fc  36 00 00 9a                                      bls #0x5452dc
00545200  3f 70 e0 e3                                      mvn r7, #0x3f
00545204  00 10 a0 e3                                      mov r1, #0
00545208  07 00 a0 e1                                      mov r0, r7
0054520c  d5 2c f7 eb                                      bl #0x310568
00545210  0c b0 8d e2                                      add fp, sp, #0xc
00545214  00 20 a0 e1                                      mov r2, r0
00545218  0b 30 a0 e1                                      mov r3, fp
0054521c  00 10 9d e5                                      ldr r1, [sp]
00545220  00 60 a0 e1                                      mov r6, r0
00545224  00 00 94 e5                                      ldr r0, [r4]
00545228  46 f9 ff eb                                      bl #0x543748
0054522c  00 80 a0 e1                                      mov r8, r0
00545230  40 00 88 e5                                      str r0, [r8, #0x40]
00545234  44 00 88 e5                                      str r0, [r8, #0x44]
00545238  44 10 95 e5                                      ldr r1, [r5, #0x44]
0054523c  40 20 95 e5                                      ldr r2, [r5, #0x40]
00545240  f9 82 f7 eb                                      bl #0x325e2c
00545244  48 30 95 e5                                      ldr r3, [r5, #0x48]
00545248  4c 90 85 e2                                      add sb, r5, #0x4c
0054524c  4c a0 88 e2                                      add sl, r8, #0x4c
00545250  48 30 88 e5                                      str r3, [r8, #0x48]
00545254  00 50 a0 e3                                      mov r5, #0
00545258  05 00 8a e0                                      add r0, sl, r5
0054525c  05 10 89 e0                                      add r1, sb, r5
00545260  05 20 a0 e3                                      mov r2, #5
00545264  05 50 85 e2                                      add r5, r5, #5
00545268  7e 25 f7 eb                                      bl #0x30e868
0054526c  14 00 55 e3                                      cmp r5, #0x14
00545270  f8 ff ff 1a                                      bne #0x545258
00545274  04 30 9d e5                                      ldr r3, [sp, #4]
00545278  60 80 88 e2                                      add r8, r8, #0x60
0054527c  00 00 53 e3                                      cmp r3, #0
00545280  18 00 00 0a                                      beq #0x5452e8
00545284  04 50 94 e5                                      ldr r5, [r4, #4]
00545288  00 a0 94 e5                                      ldr sl, [r4]
0054528c  0a 00 55 e1                                      cmp r5, sl
00545290  0a 00 00 0a                                      beq #0x5452c0
00545294  60 50 45 e2                                      sub r5, r5, #0x60
00545298  44 30 95 e5                                      ldr r3, [r5, #0x44]
0054529c  05 00 53 e1                                      cmp r3, r5
005452a0  03 00 a0 e1                                      mov r0, r3
005452a4  02 00 00 0a                                      beq #0x5452b4
005452a8  00 00 53 e3                                      cmp r3, #0
005452ac  00 00 00 0a                                      beq #0x5452b4
005452b0  66 2c f7 eb                                      bl #0x310450
005452b4  05 00 5a e1                                      cmp sl, r5
005452b8  f5 ff ff 1a                                      bne #0x545294
005452bc  00 a0 94 e5                                      ldr sl, [r4]
005452c0  0a 00 a0 e1                                      mov r0, sl
005452c4  07 70 86 e0                                      add r7, r6, r7
005452c8  60 2c f7 eb                                      bl #0x310450
005452cc  08 70 84 e5                                      str r7, [r4, #8]
005452d0  40 01 84 e8                                      stm r4, {r6, r8}
005452d4  14 d0 8d e2                                      add sp, sp, #0x14
005452d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005452dc  60 70 a0 e3                                      mov r7, #0x60
005452e0  97 03 07 e0                                      mul r7, r7, r3
005452e4  c6 ff ff ea                                      b #0x545204
005452e8  08 20 a0 e1                                      mov r2, r8
005452ec  00 00 9d e5                                      ldr r0, [sp]
005452f0  0b 30 a0 e1                                      mov r3, fp
005452f4  04 10 94 e5                                      ldr r1, [r4, #4]
005452f8  12 f9 ff eb                                      bl #0x543748
005452fc  00 80 a0 e1                                      mov r8, r0
00545300  df ff ff ea                                      b #0x545284

; FUNCTION 0x005453f8, declared_size=136, range_size=136, mode=arm
; class-group: std::vector<glitch::gui::CGUIListBox::ListItem, glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui11CGUIListBox8ListItemENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::gui::CGUIListBox::ListItem, glitch::core::SAllocator<glitch::gui::CGUIListBox::ListItem, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::gui::CGUIListBox::ListItem const&)
; decoder-mode: arm
005453f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005453fc  04 40 90 e5                                      ldr r4, [r0, #4]
00545400  08 30 90 e5                                      ldr r3, [r0, #8]
00545404  00 50 a0 e1                                      mov r5, r0
00545408  01 60 a0 e1                                      mov r6, r1
0054540c  03 00 54 e1                                      cmp r4, r3
00545410  15 00 00 0a                                      beq #0x54546c
00545414  40 40 84 e5                                      str r4, [r4, #0x40]
00545418  44 40 84 e5                                      str r4, [r4, #0x44]
0054541c  04 00 a0 e1                                      mov r0, r4
00545420  40 20 96 e5                                      ldr r2, [r6, #0x40]
00545424  44 10 91 e5                                      ldr r1, [r1, #0x44]
00545428  7f 82 f7 eb                                      bl #0x325e2c
0054542c  48 30 96 e5                                      ldr r3, [r6, #0x48]
00545430  4c 70 84 e2                                      add r7, r4, #0x4c
00545434  4c 60 86 e2                                      add r6, r6, #0x4c
00545438  48 30 84 e5                                      str r3, [r4, #0x48]
0054543c  00 40 a0 e3                                      mov r4, #0
00545440  04 00 87 e0                                      add r0, r7, r4
00545444  04 10 86 e0                                      add r1, r6, r4
00545448  05 20 a0 e3                                      mov r2, #5
0054544c  05 40 84 e2                                      add r4, r4, #5
00545450  04 25 f7 eb                                      bl #0x30e868
00545454  14 00 54 e3                                      cmp r4, #0x14
00545458  f8 ff ff 1a                                      bne #0x545440
0054545c  04 30 95 e5                                      ldr r3, [r5, #4]
00545460  60 30 83 e2                                      add r3, r3, #0x60
00545464  04 30 85 e5                                      str r3, [r5, #4]
00545468  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0054546c  04 10 a0 e1                                      mov r1, r4
00545470  06 20 a0 e1                                      mov r2, r6
00545474  01 30 a0 e3                                      mov r3, #1
00545478  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0054547c  48 ff ff ea                                      b #0x5451a4
