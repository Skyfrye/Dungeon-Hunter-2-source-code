; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00325d9c, declared_size=144, range_size=144, mode=arm
; class-group: std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIfN6glitch4core10SAllocatorIfLNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPfRKfRKSt11__true_typejb.clone.35
; demangled: std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(float*, float const&, std::__true_type const&, unsigned int, bool) [clone .clone.35]
; decoder-mode: arm
00325d9c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00325da0  00 40 a0 e1                                      mov r4, r0
00325da4  00 30 94 e5                                      ldr r3, [r4]
00325da8  04 00 90 e5                                      ldr r0, [r0, #4]
00325dac  01 60 a0 e1                                      mov r6, r1
00325db0  02 80 a0 e1                                      mov r8, r2
00325db4  00 30 63 e0                                      rsb r3, r3, r0
00325db8  43 31 a0 e1                                      asr r3, r3, #2
00325dbc  01 00 53 e3                                      cmp r3, #1
00325dc0  03 70 83 20                                      addhs r7, r3, r3
00325dc4  01 70 83 32                                      addlo r7, r3, #1
00325dc8  07 01 77 e3                                      cmn r7, #0xc0000001
00325dcc  14 00 00 8a                                      bhi #0x325e24
00325dd0  07 00 53 e1                                      cmp r3, r7
00325dd4  07 71 a0 91                                      lslls r7, r7, #2
00325dd8  11 00 00 8a                                      bhi #0x325e24
00325ddc  00 10 a0 e3                                      mov r1, #0
00325de0  07 00 a0 e1                                      mov r0, r7
00325de4  df a9 ff eb                                      bl #0x310568
00325de8  00 10 94 e5                                      ldr r1, [r4]
00325dec  00 50 a0 e1                                      mov r5, r0
00325df0  01 60 56 e0                                      subs r6, r6, r1
00325df4  00 60 a0 01                                      moveq r6, r0
00325df8  02 00 00 0a                                      beq #0x325e08
00325dfc  06 20 a0 e1                                      mov r2, r6
00325e00  4c a0 ff eb                                      bl #0x30df38
00325e04  06 60 80 e0                                      add r6, r0, r6
00325e08  00 30 98 e5                                      ldr r3, [r8]
00325e0c  07 70 85 e0                                      add r7, r5, r7
00325e10  04 30 86 e4                                      str r3, [r6], #4
00325e14  00 00 94 e5                                      ldr r0, [r4]
00325e18  8c a9 ff eb                                      bl #0x310450
00325e1c  e0 00 84 e8                                      stm r4, {r5, r6, r7}
00325e20  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00325e24  03 70 e0 e3                                      mvn r7, #3
00325e28  eb ff ff ea                                      b #0x325ddc

; FUNCTION 0x00326190, declared_size=108, range_size=108, mode=arm
; class-group: std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIfN6glitch4core10SAllocatorIfLNS0_6memory13E_MEMORY_HINTE0EEEEC1ERKS6_
; demangled: std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >::vector(std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00326190  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00326194  88 00 91 e8                                      ldm r1, {r3, r7}
00326198  01 60 a0 e1                                      mov r6, r1
0032619c  00 10 a0 e3                                      mov r1, #0
003261a0  07 70 63 e0                                      rsb r7, r3, r7
003261a4  03 70 c7 e3                                      bic r7, r7, #3
003261a8  00 40 a0 e1                                      mov r4, r0
003261ac  00 10 80 e5                                      str r1, [r0]
003261b0  04 10 80 e5                                      str r1, [r0, #4]
003261b4  08 10 80 e5                                      str r1, [r0, #8]
003261b8  07 00 a0 e1                                      mov r0, r7
003261bc  e9 a8 ff eb                                      bl #0x310568
003261c0  07 70 80 e0                                      add r7, r0, r7
003261c4  08 70 84 e5                                      str r7, [r4, #8]
003261c8  00 00 84 e5                                      str r0, [r4]
003261cc  04 00 84 e5                                      str r0, [r4, #4]
003261d0  22 00 96 e8                                      ldm r6, {r1, r5}
003261d4  00 30 a0 e1                                      mov r3, r0
003261d8  05 00 51 e1                                      cmp r1, r5
003261dc  03 00 00 0a                                      beq #0x3261f0
003261e0  05 50 61 e0                                      rsb r5, r1, r5
003261e4  05 20 a0 e1                                      mov r2, r5
003261e8  9e a1 ff eb                                      bl #0x30e868
003261ec  05 30 80 e0                                      add r3, r0, r5
003261f0  04 30 84 e5                                      str r3, [r4, #4]
003261f4  04 00 a0 e1                                      mov r0, r4
003261f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00368748, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIfN6glitch4core10SAllocatorIfLNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPfjRKfRKSt12__false_type
; demangled: std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(float*, unsigned int, float const&, std::__false_type const&)
; decoder-mode: arm
00368748  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0036874c  00 c0 90 e5                                      ldr ip, [r0]
00368750  03 50 a0 e1                                      mov r5, r3
00368754  14 d0 4d e2                                      sub sp, sp, #0x14
00368758  0c 00 53 e1                                      cmp r3, ip
0036875c  00 40 a0 e1                                      mov r4, r0
00368760  01 60 a0 e1                                      mov r6, r1
00368764  02 30 a0 e1                                      mov r3, r2
00368768  04 70 90 35                                      ldrlo r7, [r0, #4]
0036876c  0a 00 00 3a                                      blo #0x36879c
00368770  04 70 90 e5                                      ldr r7, [r0, #4]
00368774  07 00 55 e1                                      cmp r5, r7
00368778  07 00 00 2a                                      bhs #0x36879c
0036877c  00 c0 95 e5                                      ldr ip, [r5]
00368780  10 30 8d e2                                      add r3, sp, #0x10
00368784  08 c0 23 e5                                      str ip, [r3, #-8]!
00368788  0c c0 8d e2                                      add ip, sp, #0xc
0036878c  00 c0 8d e5                                      str ip, [sp]
00368790  ec ff ff eb                                      bl #0x368748
00368794  14 d0 8d e2                                      add sp, sp, #0x14
00368798  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0036879c  07 20 66 e0                                      rsb r2, r6, r7
003687a0  42 81 a0 e1                                      asr r8, r2, #2
003687a4  08 00 53 e1                                      cmp r3, r8
003687a8  1c 00 00 2a                                      bhs #0x368820
003687ac  03 81 a0 e1                                      lsl r8, r3, #2
003687b0  07 30 68 e0                                      rsb r3, r8, r7
003687b4  07 00 53 e1                                      cmp r3, r7
003687b8  07 a0 a0 01                                      moveq sl, r7
003687bc  05 00 00 0a                                      beq #0x3687d8
003687c0  03 10 a0 e1                                      mov r1, r3
003687c4  07 20 63 e0                                      rsb r2, r3, r7
003687c8  07 00 a0 e1                                      mov r0, r7
003687cc  03 a0 a0 e1                                      mov sl, r3
003687d0  24 98 fe eb                                      bl #0x30e868
003687d4  04 30 94 e5                                      ldr r3, [r4, #4]
003687d8  0a 20 66 e0                                      rsb r2, r6, sl
003687dc  08 30 83 e0                                      add r3, r3, r8
003687e0  00 00 52 e3                                      cmp r2, #0
003687e4  04 30 84 e5                                      str r3, [r4, #4]
003687e8  02 00 00 da                                      ble #0x3687f8
003687ec  07 00 62 e0                                      rsb r0, r2, r7
003687f0  06 10 a0 e1                                      mov r1, r6
003687f4  cf 95 fe eb                                      bl #0x30df38
003687f8  48 81 a0 e1                                      asr r8, r8, #2
003687fc  00 00 58 e3                                      cmp r8, #0
00368800  e3 ff ff da                                      ble #0x368794
00368804  00 20 a0 e3                                      mov r2, #0
00368808  00 10 95 e5                                      ldr r1, [r5]
0036880c  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
00368810  01 20 82 e2                                      add r2, r2, #1
00368814  08 00 52 e1                                      cmp r2, r8
00368818  fa ff ff 1a                                      bne #0x368808
0036881c  dc ff ff ea                                      b #0x368794
00368820  03 30 68 e0                                      rsb r3, r8, r3
00368824  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
00368828  00 00 5a e3                                      cmp sl, #0
0036882c  03 01 87 e0                                      add r0, r7, r3, lsl #2
00368830  05 00 00 da                                      ble #0x36884c
00368834  00 10 a0 e3                                      mov r1, #0
00368838  00 c0 95 e5                                      ldr ip, [r5]
0036883c  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
00368840  01 10 81 e2                                      add r1, r1, #1
00368844  0a 00 51 e1                                      cmp r1, sl
00368848  fa ff ff 1a                                      bne #0x368838
0036884c  07 00 56 e1                                      cmp r6, r7
00368850  04 00 84 e5                                      str r0, [r4, #4]
00368854  02 00 00 0a                                      beq #0x368864
00368858  06 10 a0 e1                                      mov r1, r6
0036885c  01 98 fe eb                                      bl #0x30e868
00368860  04 00 94 e5                                      ldr r0, [r4, #4]
00368864  08 01 80 e0                                      add r0, r0, r8, lsl #2
00368868  00 00 58 e3                                      cmp r8, #0
0036886c  04 00 84 e5                                      str r0, [r4, #4]
00368870  c7 ff ff da                                      ble #0x368794
00368874  00 30 a0 e3                                      mov r3, #0
00368878  00 20 95 e5                                      ldr r2, [r5]
0036887c  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
00368880  01 30 83 e2                                      add r3, r3, #1
00368884  03 00 58 e1                                      cmp r8, r3
00368888  fa ff ff 1a                                      bne #0x368878
0036888c  c0 ff ff ea                                      b #0x368794

; FUNCTION 0x00368890, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIfN6glitch4core10SAllocatorIfLNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00368890  70 40 2d e9                                      push {r4, r5, r6, lr}
00368894  14 00 90 e8                                      ldm r0, {r2, r4}
00368898  ff 3f 0f e3                                      movw r3, #0xffff
0036889c  ff 3f 43 e3                                      movt r3, #0x3fff
003688a0  04 40 62 e0                                      rsb r4, r2, r4
003688a4  44 41 a0 e1                                      asr r4, r4, #2
003688a8  03 30 64 e0                                      rsb r3, r4, r3
003688ac  01 00 53 e1                                      cmp r3, r1
003688b0  01 50 a0 e1                                      mov r5, r1
003688b4  08 00 00 3a                                      blo #0x3688dc
003688b8  05 00 54 e1                                      cmp r4, r5
003688bc  04 00 84 20                                      addhs r0, r4, r4
003688c0  05 00 84 30                                      addlo r0, r4, r5
003688c4  07 01 70 e3                                      cmn r0, #0xc0000001
003688c8  01 00 00 8a                                      bhi #0x3688d4
003688cc  04 00 50 e1                                      cmp r0, r4
003688d0  00 00 00 2a                                      bhs #0x3688d8
003688d4  03 01 e0 e3                                      mvn r0, #0xc0000000
003688d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003688dc  08 00 9f e5                                      ldr r0, [pc, #8]
003688e0  00 00 8f e0                                      add r0, pc, r0
003688e4  55 81 0e eb                                      bl #0x708e40
003688e8  f2 ff ff ea                                      b #0x3688b8
; mapping-symbol data/literal pool
003688ec  88 5b 55 00                                      .byte 0x88, 0x5b, 0x55, 0x00

; FUNCTION 0x00368a88, declared_size=216, range_size=216, mode=arm
; class-group: std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIfN6glitch4core10SAllocatorIfLNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPfjRKf
; demangled: std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(float*, unsigned int, float const&)
; decoder-mode: arm
00368a88  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00368a8c  00 60 52 e2                                      subs r6, r2, #0
00368a90  10 d0 4d e2                                      sub sp, sp, #0x10
00368a94  00 50 a0 e1                                      mov r5, r0
00368a98  01 70 a0 e1                                      mov r7, r1
00368a9c  03 40 a0 e1                                      mov r4, r3
00368aa0  1e 00 00 0a                                      beq #0x368b20
00368aa4  00 50 90 e9                                      ldmib r0, {ip, lr}
00368aa8  0e c0 6c e0                                      rsb ip, ip, lr
00368aac  4c 01 56 e1                                      cmp r6, ip, asr #2
00368ab0  1c 00 00 9a                                      bls #0x368b28
00368ab4  06 10 a0 e1                                      mov r1, r6
00368ab8  74 ff ff eb                                      bl #0x368890
00368abc  00 91 a0 e1                                      lsl sb, r0, #2
00368ac0  00 10 a0 e3                                      mov r1, #0
00368ac4  09 00 a0 e1                                      mov r0, sb
00368ac8  a6 9e fe eb                                      bl #0x310568
00368acc  00 10 95 e5                                      ldr r1, [r5]
00368ad0  00 80 a0 e1                                      mov r8, r0
00368ad4  01 a0 57 e0                                      subs sl, r7, r1
00368ad8  00 00 a0 01                                      moveq r0, r0
00368adc  15 00 00 1a                                      bne #0x368b38
00368ae0  06 20 a0 e1                                      mov r2, r6
00368ae4  00 30 a0 e3                                      mov r3, #0
00368ae8  00 10 94 e5                                      ldr r1, [r4]
00368aec  01 20 52 e2                                      subs r2, r2, #1
00368af0  03 10 80 e7                                      str r1, [r0, r3]
00368af4  04 30 83 e2                                      add r3, r3, #4
00368af8  fa ff ff 1a                                      bne #0x368ae8
00368afc  04 30 95 e5                                      ldr r3, [r5, #4]
00368b00  06 61 80 e0                                      add r6, r0, r6, lsl #2
00368b04  07 40 53 e0                                      subs r4, r3, r7
00368b08  0e 00 00 1a                                      bne #0x368b48
00368b0c  00 00 95 e5                                      ldr r0, [r5]
00368b10  09 90 88 e0                                      add sb, r8, sb
00368b14  4d 9e fe eb                                      bl #0x310450
00368b18  40 02 85 e9                                      stmib r5, {r6, sb}
00368b1c  00 80 85 e5                                      str r8, [r5]
00368b20  10 d0 8d e2                                      add sp, sp, #0x10
00368b24  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00368b28  0c c0 8d e2                                      add ip, sp, #0xc
00368b2c  00 c0 8d e5                                      str ip, [sp]
00368b30  04 ff ff eb                                      bl #0x368748
00368b34  f9 ff ff ea                                      b #0x368b20
00368b38  0a 20 a0 e1                                      mov r2, sl
00368b3c  fd 94 fe eb                                      bl #0x30df38
00368b40  0a 00 80 e0                                      add r0, r0, sl
00368b44  e5 ff ff ea                                      b #0x368ae0
00368b48  06 00 a0 e1                                      mov r0, r6
00368b4c  07 10 a0 e1                                      mov r1, r7
00368b50  04 20 a0 e1                                      mov r2, r4
00368b54  f7 94 fe eb                                      bl #0x30df38
00368b58  04 60 80 e0                                      add r6, r0, r4
00368b5c  ea ff ff ea                                      b #0x368b0c

; FUNCTION 0x00368b60, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIfN6glitch4core10SAllocatorIfLNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKf
; demangled: std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, float const&)
; decoder-mode: arm
00368b60  30 00 2d e9                                      push {r4, r5}
00368b64  04 40 90 e5                                      ldr r4, [r0, #4]
00368b68  00 50 90 e5                                      ldr r5, [r0]
00368b6c  02 30 a0 e1                                      mov r3, r2
00368b70  04 20 65 e0                                      rsb r2, r5, r4
00368b74  42 21 a0 e1                                      asr r2, r2, #2
00368b78  02 00 51 e1                                      cmp r1, r2
00368b7c  04 00 00 2a                                      bhs #0x368b94
00368b80  01 51 85 e0                                      add r5, r5, r1, lsl #2
00368b84  04 00 55 e1                                      cmp r5, r4
00368b88  04 50 80 15                                      strne r5, [r0, #4]
00368b8c  30 00 bd e8                                      pop {r4, r5}
00368b90  1e ff 2f e1                                      bx lr
00368b94  01 20 62 e0                                      rsb r2, r2, r1
00368b98  04 10 a0 e1                                      mov r1, r4
00368b9c  30 00 bd e8                                      pop {r4, r5}
00368ba0  b8 ff ff ea                                      b #0x368a88

; FUNCTION 0x00404a20, declared_size=144, range_size=144, mode=arm
; class-group: std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIfN6glitch4core10SAllocatorIfLNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPfRKfRKSt11__true_typejb.clone.9
; demangled: std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(float*, float const&, std::__true_type const&, unsigned int, bool) [clone .clone.9]
; decoder-mode: arm
00404a20  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00404a24  00 40 a0 e1                                      mov r4, r0
00404a28  00 30 94 e5                                      ldr r3, [r4]
00404a2c  04 00 90 e5                                      ldr r0, [r0, #4]
00404a30  01 60 a0 e1                                      mov r6, r1
00404a34  02 80 a0 e1                                      mov r8, r2
00404a38  00 30 63 e0                                      rsb r3, r3, r0
00404a3c  43 31 a0 e1                                      asr r3, r3, #2
00404a40  01 00 53 e3                                      cmp r3, #1
00404a44  03 70 83 20                                      addhs r7, r3, r3
00404a48  01 70 83 32                                      addlo r7, r3, #1
00404a4c  07 01 77 e3                                      cmn r7, #0xc0000001
00404a50  14 00 00 8a                                      bhi #0x404aa8
00404a54  07 00 53 e1                                      cmp r3, r7
00404a58  07 71 a0 91                                      lslls r7, r7, #2
00404a5c  11 00 00 8a                                      bhi #0x404aa8
00404a60  00 10 a0 e3                                      mov r1, #0
00404a64  07 00 a0 e1                                      mov r0, r7
00404a68  be 2e fc eb                                      bl #0x310568
00404a6c  00 10 94 e5                                      ldr r1, [r4]
00404a70  00 50 a0 e1                                      mov r5, r0
00404a74  01 60 56 e0                                      subs r6, r6, r1
00404a78  00 60 a0 01                                      moveq r6, r0
00404a7c  02 00 00 0a                                      beq #0x404a8c
00404a80  06 20 a0 e1                                      mov r2, r6
00404a84  2b 25 fc eb                                      bl #0x30df38
00404a88  06 60 80 e0                                      add r6, r0, r6
00404a8c  00 30 98 e5                                      ldr r3, [r8]
00404a90  07 70 85 e0                                      add r7, r5, r7
00404a94  04 30 86 e4                                      str r3, [r6], #4
00404a98  00 00 94 e5                                      ldr r0, [r4]
00404a9c  6b 2e fc eb                                      bl #0x310450
00404aa0  e0 00 84 e8                                      stm r4, {r5, r6, r7}
00404aa4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00404aa8  03 70 e0 e3                                      mvn r7, #3
00404aac  eb ff ff ea                                      b #0x404a60

; FUNCTION 0x0040e434, declared_size=144, range_size=144, mode=arm
; class-group: std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIfN6glitch4core10SAllocatorIfLNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPfRKfRKSt11__true_typejb.clone.9
; demangled: std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(float*, float const&, std::__true_type const&, unsigned int, bool) [clone .clone.9]
; decoder-mode: arm
0040e434  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0040e438  00 40 a0 e1                                      mov r4, r0
0040e43c  00 30 94 e5                                      ldr r3, [r4]
0040e440  04 00 90 e5                                      ldr r0, [r0, #4]
0040e444  01 60 a0 e1                                      mov r6, r1
0040e448  02 80 a0 e1                                      mov r8, r2
0040e44c  00 30 63 e0                                      rsb r3, r3, r0
0040e450  43 31 a0 e1                                      asr r3, r3, #2
0040e454  01 00 53 e3                                      cmp r3, #1
0040e458  03 70 83 20                                      addhs r7, r3, r3
0040e45c  01 70 83 32                                      addlo r7, r3, #1
0040e460  07 01 77 e3                                      cmn r7, #0xc0000001
0040e464  14 00 00 8a                                      bhi #0x40e4bc
0040e468  07 00 53 e1                                      cmp r3, r7
0040e46c  07 71 a0 91                                      lslls r7, r7, #2
0040e470  11 00 00 8a                                      bhi #0x40e4bc
0040e474  00 10 a0 e3                                      mov r1, #0
0040e478  07 00 a0 e1                                      mov r0, r7
0040e47c  39 08 fc eb                                      bl #0x310568
0040e480  00 10 94 e5                                      ldr r1, [r4]
0040e484  00 50 a0 e1                                      mov r5, r0
0040e488  01 60 56 e0                                      subs r6, r6, r1
0040e48c  00 60 a0 01                                      moveq r6, r0
0040e490  02 00 00 0a                                      beq #0x40e4a0
0040e494  06 20 a0 e1                                      mov r2, r6
0040e498  a6 fe fb eb                                      bl #0x30df38
0040e49c  06 60 80 e0                                      add r6, r0, r6
0040e4a0  00 30 98 e5                                      ldr r3, [r8]
0040e4a4  07 70 85 e0                                      add r7, r5, r7
0040e4a8  04 30 86 e4                                      str r3, [r6], #4
0040e4ac  00 00 94 e5                                      ldr r0, [r4]
0040e4b0  e6 07 fc eb                                      bl #0x310450
0040e4b4  e0 00 84 e8                                      stm r4, {r5, r6, r7}
0040e4b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0040e4bc  03 70 e0 e3                                      mvn r7, #3
0040e4c0  eb ff ff ea                                      b #0x40e474

; FUNCTION 0x00563d0c, declared_size=144, range_size=144, mode=arm
; class-group: std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIfN6glitch4core10SAllocatorIfLNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPfRKfRKSt11__true_typejb.clone.5
; demangled: std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(float*, float const&, std::__true_type const&, unsigned int, bool) [clone .clone.5]
; decoder-mode: arm
00563d0c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00563d10  00 40 a0 e1                                      mov r4, r0
00563d14  00 30 94 e5                                      ldr r3, [r4]
00563d18  04 00 90 e5                                      ldr r0, [r0, #4]
00563d1c  01 60 a0 e1                                      mov r6, r1
00563d20  02 80 a0 e1                                      mov r8, r2
00563d24  00 30 63 e0                                      rsb r3, r3, r0
00563d28  43 31 a0 e1                                      asr r3, r3, #2
00563d2c  01 00 53 e3                                      cmp r3, #1
00563d30  03 70 83 20                                      addhs r7, r3, r3
00563d34  01 70 83 32                                      addlo r7, r3, #1
00563d38  07 01 77 e3                                      cmn r7, #0xc0000001
00563d3c  14 00 00 8a                                      bhi #0x563d94
00563d40  07 00 53 e1                                      cmp r3, r7
00563d44  07 71 a0 91                                      lslls r7, r7, #2
00563d48  11 00 00 8a                                      bhi #0x563d94
00563d4c  00 10 a0 e3                                      mov r1, #0
00563d50  07 00 a0 e1                                      mov r0, r7
00563d54  03 b2 f6 eb                                      bl #0x310568
00563d58  00 10 94 e5                                      ldr r1, [r4]
00563d5c  00 50 a0 e1                                      mov r5, r0
00563d60  01 60 56 e0                                      subs r6, r6, r1
00563d64  00 60 a0 01                                      moveq r6, r0
00563d68  02 00 00 0a                                      beq #0x563d78
00563d6c  06 20 a0 e1                                      mov r2, r6
00563d70  70 a8 f6 eb                                      bl #0x30df38
00563d74  06 60 80 e0                                      add r6, r0, r6
00563d78  00 30 98 e5                                      ldr r3, [r8]
00563d7c  07 70 85 e0                                      add r7, r5, r7
00563d80  04 30 86 e4                                      str r3, [r6], #4
00563d84  00 00 94 e5                                      ldr r0, [r4]
00563d88  b0 b1 f6 eb                                      bl #0x310450
00563d8c  e0 00 84 e8                                      stm r4, {r5, r6, r7}
00563d90  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00563d94  03 70 e0 e3                                      mvn r7, #3
00563d98  eb ff ff ea                                      b #0x563d4c
