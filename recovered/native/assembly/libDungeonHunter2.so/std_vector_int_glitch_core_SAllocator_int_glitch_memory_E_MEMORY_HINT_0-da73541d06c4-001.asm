; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00326124, declared_size=108, range_size=108, mode=arm
; class-group: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIiN6glitch4core10SAllocatorIiLNS0_6memory13E_MEMORY_HINTE0EEEEC1ERKS6_
; demangled: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >::vector(std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00326124  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00326128  88 00 91 e8                                      ldm r1, {r3, r7}
0032612c  01 60 a0 e1                                      mov r6, r1
00326130  00 10 a0 e3                                      mov r1, #0
00326134  07 70 63 e0                                      rsb r7, r3, r7
00326138  03 70 c7 e3                                      bic r7, r7, #3
0032613c  00 40 a0 e1                                      mov r4, r0
00326140  00 10 80 e5                                      str r1, [r0]
00326144  04 10 80 e5                                      str r1, [r0, #4]
00326148  08 10 80 e5                                      str r1, [r0, #8]
0032614c  07 00 a0 e1                                      mov r0, r7
00326150  04 a9 ff eb                                      bl #0x310568
00326154  07 70 80 e0                                      add r7, r0, r7
00326158  08 70 84 e5                                      str r7, [r4, #8]
0032615c  00 00 84 e5                                      str r0, [r4]
00326160  04 00 84 e5                                      str r0, [r4, #4]
00326164  22 00 96 e8                                      ldm r6, {r1, r5}
00326168  00 30 a0 e1                                      mov r3, r0
0032616c  05 00 51 e1                                      cmp r1, r5
00326170  03 00 00 0a                                      beq #0x326184
00326174  05 50 61 e0                                      rsb r5, r1, r5
00326178  05 20 a0 e1                                      mov r2, r5
0032617c  b9 a1 ff eb                                      bl #0x30e868
00326180  05 30 80 e0                                      add r3, r0, r5
00326184  04 30 84 e5                                      str r3, [r4, #4]
00326188  04 00 a0 e1                                      mov r0, r4
0032618c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00563c7c, declared_size=144, range_size=144, mode=arm
; class-group: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIiN6glitch4core10SAllocatorIiLNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPiRKiRKSt11__true_typejb.clone.6
; demangled: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(int*, int const&, std::__true_type const&, unsigned int, bool) [clone .clone.6]
; decoder-mode: arm
00563c7c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00563c80  00 40 a0 e1                                      mov r4, r0
00563c84  00 30 94 e5                                      ldr r3, [r4]
00563c88  04 00 90 e5                                      ldr r0, [r0, #4]
00563c8c  01 60 a0 e1                                      mov r6, r1
00563c90  02 80 a0 e1                                      mov r8, r2
00563c94  00 30 63 e0                                      rsb r3, r3, r0
00563c98  43 31 a0 e1                                      asr r3, r3, #2
00563c9c  01 00 53 e3                                      cmp r3, #1
00563ca0  03 70 83 20                                      addhs r7, r3, r3
00563ca4  01 70 83 32                                      addlo r7, r3, #1
00563ca8  07 01 77 e3                                      cmn r7, #0xc0000001
00563cac  14 00 00 8a                                      bhi #0x563d04
00563cb0  07 00 53 e1                                      cmp r3, r7
00563cb4  07 71 a0 91                                      lslls r7, r7, #2
00563cb8  11 00 00 8a                                      bhi #0x563d04
00563cbc  00 10 a0 e3                                      mov r1, #0
00563cc0  07 00 a0 e1                                      mov r0, r7
00563cc4  27 b2 f6 eb                                      bl #0x310568
00563cc8  00 10 94 e5                                      ldr r1, [r4]
00563ccc  00 50 a0 e1                                      mov r5, r0
00563cd0  01 60 56 e0                                      subs r6, r6, r1
00563cd4  00 60 a0 01                                      moveq r6, r0
00563cd8  02 00 00 0a                                      beq #0x563ce8
00563cdc  06 20 a0 e1                                      mov r2, r6
00563ce0  94 a8 f6 eb                                      bl #0x30df38
00563ce4  06 60 80 e0                                      add r6, r0, r6
00563ce8  00 30 98 e5                                      ldr r3, [r8]
00563cec  07 70 85 e0                                      add r7, r5, r7
00563cf0  04 30 86 e4                                      str r3, [r6], #4
00563cf4  00 00 94 e5                                      ldr r0, [r4]
00563cf8  d4 b1 f6 eb                                      bl #0x310450
00563cfc  e0 00 84 e8                                      stm r4, {r5, r6, r7}
00563d00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00563d04  03 70 e0 e3                                      mvn r7, #3
00563d08  eb ff ff ea                                      b #0x563cbc

; FUNCTION 0x0062ee0c, declared_size=144, range_size=144, mode=arm
; class-group: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIiN6glitch4core10SAllocatorIiLNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPiRKiRKSt11__true_typejb.clone.3
; demangled: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(int*, int const&, std::__true_type const&, unsigned int, bool) [clone .clone.3]
; decoder-mode: arm
0062ee0c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0062ee10  00 40 a0 e1                                      mov r4, r0
0062ee14  00 30 94 e5                                      ldr r3, [r4]
0062ee18  04 00 90 e5                                      ldr r0, [r0, #4]
0062ee1c  01 60 a0 e1                                      mov r6, r1
0062ee20  02 80 a0 e1                                      mov r8, r2
0062ee24  00 30 63 e0                                      rsb r3, r3, r0
0062ee28  43 31 a0 e1                                      asr r3, r3, #2
0062ee2c  01 00 53 e3                                      cmp r3, #1
0062ee30  03 70 83 20                                      addhs r7, r3, r3
0062ee34  01 70 83 32                                      addlo r7, r3, #1
0062ee38  07 01 77 e3                                      cmn r7, #0xc0000001
0062ee3c  14 00 00 8a                                      bhi #0x62ee94
0062ee40  07 00 53 e1                                      cmp r3, r7
0062ee44  07 71 a0 91                                      lslls r7, r7, #2
0062ee48  11 00 00 8a                                      bhi #0x62ee94
0062ee4c  00 10 a0 e3                                      mov r1, #0
0062ee50  07 00 a0 e1                                      mov r0, r7
0062ee54  c3 85 f3 eb                                      bl #0x310568
0062ee58  00 10 94 e5                                      ldr r1, [r4]
0062ee5c  00 50 a0 e1                                      mov r5, r0
0062ee60  01 60 56 e0                                      subs r6, r6, r1
0062ee64  00 60 a0 01                                      moveq r6, r0
0062ee68  02 00 00 0a                                      beq #0x62ee78
0062ee6c  06 20 a0 e1                                      mov r2, r6
0062ee70  30 7c f3 eb                                      bl #0x30df38
0062ee74  06 60 80 e0                                      add r6, r0, r6
0062ee78  00 30 98 e5                                      ldr r3, [r8]
0062ee7c  07 70 85 e0                                      add r7, r5, r7
0062ee80  04 30 86 e4                                      str r3, [r6], #4
0062ee84  00 00 94 e5                                      ldr r0, [r4]
0062ee88  70 85 f3 eb                                      bl #0x310450
0062ee8c  e0 00 84 e8                                      stm r4, {r5, r6, r7}
0062ee90  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0062ee94  03 70 e0 e3                                      mvn r7, #3
0062ee98  eb ff ff ea                                      b #0x62ee4c

; FUNCTION 0x0065fc28, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIiN6glitch4core10SAllocatorIiLNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0065fc28  70 40 2d e9                                      push {r4, r5, r6, lr}
0065fc2c  14 00 90 e8                                      ldm r0, {r2, r4}
0065fc30  ff 3f 0f e3                                      movw r3, #0xffff
0065fc34  ff 3f 43 e3                                      movt r3, #0x3fff
0065fc38  04 40 62 e0                                      rsb r4, r2, r4
0065fc3c  44 41 a0 e1                                      asr r4, r4, #2
0065fc40  03 30 64 e0                                      rsb r3, r4, r3
0065fc44  01 00 53 e1                                      cmp r3, r1
0065fc48  01 50 a0 e1                                      mov r5, r1
0065fc4c  08 00 00 3a                                      blo #0x65fc74
0065fc50  05 00 54 e1                                      cmp r4, r5
0065fc54  04 00 84 20                                      addhs r0, r4, r4
0065fc58  05 00 84 30                                      addlo r0, r4, r5
0065fc5c  07 01 70 e3                                      cmn r0, #0xc0000001
0065fc60  01 00 00 8a                                      bhi #0x65fc6c
0065fc64  04 00 50 e1                                      cmp r0, r4
0065fc68  00 00 00 2a                                      bhs #0x65fc70
0065fc6c  03 01 e0 e3                                      mvn r0, #0xc0000000
0065fc70  70 80 bd e8                                      pop {r4, r5, r6, pc}
0065fc74  08 00 9f e5                                      ldr r0, [pc, #8]
0065fc78  00 00 8f e0                                      add r0, pc, r0
0065fc7c  6f a4 02 eb                                      bl #0x708e40
0065fc80  f2 ff ff ea                                      b #0x65fc50
; mapping-symbol data/literal pool
0065fc84  f0 e7 25 00                                      .byte 0xf0, 0xe7, 0x25, 0x00

; FUNCTION 0x0065fe8c, declared_size=168, range_size=168, mode=arm
; class-group: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIiN6glitch4core10SAllocatorIiLNS0_6memory13E_MEMORY_HINTE0EEEE7reserveEj
; demangled: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >::reserve(unsigned int)
; decoder-mode: arm
0065fe8c  70 40 2d e9                                      push {r4, r5, r6, lr}
0065fe90  00 40 a0 e1                                      mov r4, r0
0065fe94  00 20 90 e5                                      ldr r2, [r0]
0065fe98  08 00 90 e5                                      ldr r0, [r0, #8]
0065fe9c  08 d0 4d e2                                      sub sp, sp, #8
0065fea0  04 10 8d e5                                      str r1, [sp, #4]
0065fea4  00 00 62 e0                                      rsb r0, r2, r0
0065fea8  40 01 51 e1                                      cmp r1, r0, asr #2
0065feac  12 00 00 9a                                      bls #0x65fefc
0065feb0  07 01 71 e3                                      cmn r1, #0xc0000001
0065feb4  12 00 00 8a                                      bhi #0x65ff04
0065feb8  04 30 94 e5                                      ldr r3, [r4, #4]
0065febc  00 00 52 e3                                      cmp r2, #0
0065fec0  03 50 62 e0                                      rsb r5, r2, r3
0065fec4  45 51 a0 e1                                      asr r5, r5, #2
0065fec8  12 00 00 0a                                      beq #0x65ff18
0065fecc  04 00 a0 e1                                      mov r0, r4
0065fed0  04 10 8d e2                                      add r1, sp, #4
0065fed4  dd ff ff eb                                      bl #0x65fe50
0065fed8  00 60 a0 e1                                      mov r6, r0
0065fedc  00 00 94 e5                                      ldr r0, [r4]
0065fee0  5a c1 f2 eb                                      bl #0x310450
0065fee4  04 30 9d e5                                      ldr r3, [sp, #4]
0065fee8  05 51 86 e0                                      add r5, r6, r5, lsl #2
0065feec  04 50 84 e5                                      str r5, [r4, #4]
0065fef0  03 31 86 e0                                      add r3, r6, r3, lsl #2
0065fef4  08 30 84 e5                                      str r3, [r4, #8]
0065fef8  00 60 84 e5                                      str r6, [r4]
0065fefc  08 d0 8d e2                                      add sp, sp, #8
0065ff00  70 80 bd e8                                      pop {r4, r5, r6, pc}
0065ff04  24 00 9f e5                                      ldr r0, [pc, #0x24]
0065ff08  00 00 8f e0                                      add r0, pc, r0
0065ff0c  cb a3 02 eb                                      bl #0x708e40
0065ff10  00 20 94 e5                                      ldr r2, [r4]
0065ff14  e7 ff ff ea                                      b #0x65feb8
0065ff18  04 00 9d e5                                      ldr r0, [sp, #4]
0065ff1c  02 10 a0 e1                                      mov r1, r2
0065ff20  00 01 a0 e1                                      lsl r0, r0, #2
0065ff24  8f c1 f2 eb                                      bl #0x310568
0065ff28  00 60 a0 e1                                      mov r6, r0
0065ff2c  ec ff ff ea                                      b #0x65fee4
; mapping-symbol data/literal pool
0065ff30  60 e5 25 00                                      .byte 0x60, 0xe5, 0x25, 0x00

; FUNCTION 0x0065ff5c, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIiN6glitch4core10SAllocatorIiLNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPijRKiRKSt12__false_type
; demangled: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(int*, unsigned int, int const&, std::__false_type const&)
; decoder-mode: arm
0065ff5c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0065ff60  00 c0 90 e5                                      ldr ip, [r0]
0065ff64  03 50 a0 e1                                      mov r5, r3
0065ff68  14 d0 4d e2                                      sub sp, sp, #0x14
0065ff6c  0c 00 53 e1                                      cmp r3, ip
0065ff70  00 40 a0 e1                                      mov r4, r0
0065ff74  01 60 a0 e1                                      mov r6, r1
0065ff78  02 30 a0 e1                                      mov r3, r2
0065ff7c  04 70 90 35                                      ldrlo r7, [r0, #4]
0065ff80  0a 00 00 3a                                      blo #0x65ffb0
0065ff84  04 70 90 e5                                      ldr r7, [r0, #4]
0065ff88  07 00 55 e1                                      cmp r5, r7
0065ff8c  07 00 00 2a                                      bhs #0x65ffb0
0065ff90  00 c0 95 e5                                      ldr ip, [r5]
0065ff94  10 30 8d e2                                      add r3, sp, #0x10
0065ff98  08 c0 23 e5                                      str ip, [r3, #-8]!
0065ff9c  0c c0 8d e2                                      add ip, sp, #0xc
0065ffa0  00 c0 8d e5                                      str ip, [sp]
0065ffa4  ec ff ff eb                                      bl #0x65ff5c
0065ffa8  14 d0 8d e2                                      add sp, sp, #0x14
0065ffac  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0065ffb0  07 20 66 e0                                      rsb r2, r6, r7
0065ffb4  42 81 a0 e1                                      asr r8, r2, #2
0065ffb8  08 00 53 e1                                      cmp r3, r8
0065ffbc  1c 00 00 2a                                      bhs #0x660034
0065ffc0  03 81 a0 e1                                      lsl r8, r3, #2
0065ffc4  07 30 68 e0                                      rsb r3, r8, r7
0065ffc8  07 00 53 e1                                      cmp r3, r7
0065ffcc  07 a0 a0 01                                      moveq sl, r7
0065ffd0  05 00 00 0a                                      beq #0x65ffec
0065ffd4  03 10 a0 e1                                      mov r1, r3
0065ffd8  07 20 63 e0                                      rsb r2, r3, r7
0065ffdc  07 00 a0 e1                                      mov r0, r7
0065ffe0  03 a0 a0 e1                                      mov sl, r3
0065ffe4  1f ba f2 eb                                      bl #0x30e868
0065ffe8  04 30 94 e5                                      ldr r3, [r4, #4]
0065ffec  0a 20 66 e0                                      rsb r2, r6, sl
0065fff0  08 30 83 e0                                      add r3, r3, r8
0065fff4  00 00 52 e3                                      cmp r2, #0
0065fff8  04 30 84 e5                                      str r3, [r4, #4]
0065fffc  02 00 00 da                                      ble #0x66000c
00660000  07 00 62 e0                                      rsb r0, r2, r7
00660004  06 10 a0 e1                                      mov r1, r6
00660008  ca b7 f2 eb                                      bl #0x30df38
0066000c  48 81 a0 e1                                      asr r8, r8, #2
00660010  00 00 58 e3                                      cmp r8, #0
00660014  e3 ff ff da                                      ble #0x65ffa8
00660018  00 20 a0 e3                                      mov r2, #0
0066001c  00 10 95 e5                                      ldr r1, [r5]
00660020  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
00660024  01 20 82 e2                                      add r2, r2, #1
00660028  08 00 52 e1                                      cmp r2, r8
0066002c  fa ff ff 1a                                      bne #0x66001c
00660030  dc ff ff ea                                      b #0x65ffa8
00660034  03 30 68 e0                                      rsb r3, r8, r3
00660038  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
0066003c  00 00 5a e3                                      cmp sl, #0
00660040  03 01 87 e0                                      add r0, r7, r3, lsl #2
00660044  05 00 00 da                                      ble #0x660060
00660048  00 10 a0 e3                                      mov r1, #0
0066004c  00 c0 95 e5                                      ldr ip, [r5]
00660050  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
00660054  01 10 81 e2                                      add r1, r1, #1
00660058  0a 00 51 e1                                      cmp r1, sl
0066005c  fa ff ff 1a                                      bne #0x66004c
00660060  07 00 56 e1                                      cmp r6, r7
00660064  04 00 84 e5                                      str r0, [r4, #4]
00660068  02 00 00 0a                                      beq #0x660078
0066006c  06 10 a0 e1                                      mov r1, r6
00660070  fc b9 f2 eb                                      bl #0x30e868
00660074  04 00 94 e5                                      ldr r0, [r4, #4]
00660078  08 01 80 e0                                      add r0, r0, r8, lsl #2
0066007c  00 00 58 e3                                      cmp r8, #0
00660080  04 00 84 e5                                      str r0, [r4, #4]
00660084  c7 ff ff da                                      ble #0x65ffa8
00660088  00 30 a0 e3                                      mov r3, #0
0066008c  00 20 95 e5                                      ldr r2, [r5]
00660090  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
00660094  01 30 83 e2                                      add r3, r3, #1
00660098  03 00 58 e1                                      cmp r8, r3
0066009c  fa ff ff 1a                                      bne #0x66008c
006600a0  c0 ff ff ea                                      b #0x65ffa8

; FUNCTION 0x006604a8, declared_size=192, range_size=192, mode=arm
; class-group: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIiN6glitch4core10SAllocatorIiLNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPijRKi
; demangled: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(int*, unsigned int, int const&)
; decoder-mode: arm
006604a8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006604ac  00 60 52 e2                                      subs r6, r2, #0
006604b0  10 d0 4d e2                                      sub sp, sp, #0x10
006604b4  00 50 a0 e1                                      mov r5, r0
006604b8  01 70 a0 e1                                      mov r7, r1
006604bc  03 40 a0 e1                                      mov r4, r3
006604c0  22 00 00 0a                                      beq #0x660550
006604c4  00 50 90 e9                                      ldmib r0, {ip, lr}
006604c8  0e c0 6c e0                                      rsb ip, ip, lr
006604cc  4c 01 56 e1                                      cmp r6, ip, asr #2
006604d0  20 00 00 9a                                      bls #0x660558
006604d4  06 10 a0 e1                                      mov r1, r6
006604d8  d2 fd ff eb                                      bl #0x65fc28
006604dc  00 91 a0 e1                                      lsl sb, r0, #2
006604e0  00 10 a0 e3                                      mov r1, #0
006604e4  09 00 a0 e1                                      mov r0, sb
006604e8  1e c0 f2 eb                                      bl #0x310568
006604ec  00 10 95 e5                                      ldr r1, [r5]
006604f0  00 80 a0 e1                                      mov r8, r0
006604f4  01 a0 57 e0                                      subs sl, r7, r1
006604f8  00 20 a0 01                                      moveq r2, r0
006604fc  02 00 00 0a                                      beq #0x66050c
00660500  0a 20 a0 e1                                      mov r2, sl
00660504  8b b6 f2 eb                                      bl #0x30df38
00660508  0a 20 80 e0                                      add r2, r0, sl
0066050c  06 10 a0 e1                                      mov r1, r6
00660510  00 30 a0 e3                                      mov r3, #0
00660514  00 c0 94 e5                                      ldr ip, [r4]
00660518  01 10 51 e2                                      subs r1, r1, #1
0066051c  03 c0 82 e7                                      str ip, [r2, r3]
00660520  04 30 83 e2                                      add r3, r3, #4
00660524  fa ff ff 1a                                      bne #0x660514
00660528  06 21 82 e0                                      add r2, r2, r6, lsl #2
0066052c  04 10 95 e5                                      ldr r1, [r5, #4]
00660530  07 00 a0 e1                                      mov r0, r7
00660534  7e fe ff eb                                      bl #0x65ff34
00660538  09 90 88 e0                                      add sb, r8, sb
0066053c  00 40 a0 e1                                      mov r4, r0
00660540  00 00 95 e5                                      ldr r0, [r5]
00660544  c1 bf f2 eb                                      bl #0x310450
00660548  10 02 85 e9                                      stmib r5, {r4, sb}
0066054c  00 80 85 e5                                      str r8, [r5]
00660550  10 d0 8d e2                                      add sp, sp, #0x10
00660554  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00660558  0c c0 8d e2                                      add ip, sp, #0xc
0066055c  00 c0 8d e5                                      str ip, [sp]
00660560  7d fe ff eb                                      bl #0x65ff5c
00660564  f9 ff ff ea                                      b #0x660550

; FUNCTION 0x00660568, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIiN6glitch4core10SAllocatorIiLNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKi
; demangled: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, int const&)
; decoder-mode: arm
00660568  30 00 2d e9                                      push {r4, r5}
0066056c  04 40 90 e5                                      ldr r4, [r0, #4]
00660570  00 50 90 e5                                      ldr r5, [r0]
00660574  02 30 a0 e1                                      mov r3, r2
00660578  04 20 65 e0                                      rsb r2, r5, r4
0066057c  42 21 a0 e1                                      asr r2, r2, #2
00660580  02 00 51 e1                                      cmp r1, r2
00660584  04 00 00 2a                                      bhs #0x66059c
00660588  01 51 85 e0                                      add r5, r5, r1, lsl #2
0066058c  04 00 55 e1                                      cmp r5, r4
00660590  04 50 80 15                                      strne r5, [r0, #4]
00660594  30 00 bd e8                                      pop {r4, r5}
00660598  1e ff 2f e1                                      bx lr
0066059c  01 20 62 e0                                      rsb r2, r2, r1
006605a0  04 10 a0 e1                                      mov r1, r4
006605a4  30 00 bd e8                                      pop {r4, r5}
006605a8  be ff ff ea                                      b #0x6604a8

; FUNCTION 0x006b00ac, declared_size=196, range_size=196, mode=arm
; class-group: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIiN6glitch4core10SAllocatorIiLNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPiRKiRKSt11__true_typejb
; demangled: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(int*, int const&, std::__true_type const&, unsigned int, bool)
; decoder-mode: arm
006b00ac  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b00b0  28 60 9d e5                                      ldr r6, [sp, #0x28]
006b00b4  01 90 a0 e1                                      mov sb, r1
006b00b8  02 40 a0 e1                                      mov r4, r2
006b00bc  06 10 a0 e1                                      mov r1, r6
006b00c0  00 50 a0 e1                                      mov r5, r0
006b00c4  2c b0 dd e5                                      ldrb fp, [sp, #0x2c]
006b00c8  d6 be fe eb                                      bl #0x65fc28
006b00cc  00 81 a0 e1                                      lsl r8, r0, #2
006b00d0  00 10 a0 e3                                      mov r1, #0
006b00d4  08 00 a0 e1                                      mov r0, r8
006b00d8  22 81 f1 eb                                      bl #0x310568
006b00dc  00 10 95 e5                                      ldr r1, [r5]
006b00e0  00 70 a0 e1                                      mov r7, r0
006b00e4  01 a0 59 e0                                      subs sl, sb, r1
006b00e8  00 00 a0 01                                      moveq r0, r0
006b00ec  15 00 00 1a                                      bne #0x6b0148
006b00f0  00 00 56 e3                                      cmp r6, #0
006b00f4  00 a0 a0 e1                                      mov sl, r0
006b00f8  07 00 00 0a                                      beq #0x6b011c
006b00fc  06 20 a0 e1                                      mov r2, r6
006b0100  00 30 a0 e3                                      mov r3, #0
006b0104  00 10 94 e5                                      ldr r1, [r4]
006b0108  01 20 52 e2                                      subs r2, r2, #1
006b010c  03 10 80 e7                                      str r1, [r0, r3]
006b0110  04 30 83 e2                                      add r3, r3, #4
006b0114  fa ff ff 1a                                      bne #0x6b0104
006b0118  06 a1 80 e0                                      add sl, r0, r6, lsl #2
006b011c  00 00 5b e3                                      cmp fp, #0
006b0120  02 00 00 1a                                      bne #0x6b0130
006b0124  04 40 95 e5                                      ldr r4, [r5, #4]
006b0128  09 40 54 e0                                      subs r4, r4, sb
006b012c  09 00 00 1a                                      bne #0x6b0158
006b0130  00 00 95 e5                                      ldr r0, [r5]
006b0134  08 80 87 e0                                      add r8, r7, r8
006b0138  c4 80 f1 eb                                      bl #0x310450
006b013c  08 80 85 e5                                      str r8, [r5, #8]
006b0140  80 04 85 e8                                      stm r5, {r7, sl}
006b0144  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
006b0148  0a 20 a0 e1                                      mov r2, sl
006b014c  79 77 f1 eb                                      bl #0x30df38
006b0150  0a 00 80 e0                                      add r0, r0, sl
006b0154  e5 ff ff ea                                      b #0x6b00f0
006b0158  0a 00 a0 e1                                      mov r0, sl
006b015c  09 10 a0 e1                                      mov r1, sb
006b0160  04 20 a0 e1                                      mov r2, r4
006b0164  73 77 f1 eb                                      bl #0x30df38
006b0168  04 a0 80 e0                                      add sl, r0, r4
006b016c  ef ff ff ea                                      b #0x6b0130

; FUNCTION 0x006f7970, declared_size=176, range_size=176, mode=arm
; class-group: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIiN6glitch4core10SAllocatorIiLNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPiRKiRKSt11__true_typejb.clone.1
; demangled: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(int*, int const&, std::__true_type const&, unsigned int, bool) [clone .clone.1]
; decoder-mode: arm
006f7970  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006f7974  00 40 a0 e1                                      mov r4, r0
006f7978  00 30 94 e5                                      ldr r3, [r4]
006f797c  04 00 90 e5                                      ldr r0, [r0, #4]
006f7980  01 60 a0 e1                                      mov r6, r1
006f7984  02 80 a0 e1                                      mov r8, r2
006f7988  00 30 63 e0                                      rsb r3, r3, r0
006f798c  43 31 a0 e1                                      asr r3, r3, #2
006f7990  01 00 53 e3                                      cmp r3, #1
006f7994  03 70 83 20                                      addhs r7, r3, r3
006f7998  01 70 83 32                                      addlo r7, r3, #1
006f799c  07 01 77 e3                                      cmn r7, #0xc0000001
006f79a0  11 00 00 8a                                      bhi #0x6f79ec
006f79a4  07 00 53 e1                                      cmp r3, r7
006f79a8  07 71 a0 91                                      lslls r7, r7, #2
006f79ac  0e 00 00 8a                                      bhi #0x6f79ec
006f79b0  00 10 a0 e3                                      mov r1, #0
006f79b4  07 00 a0 e1                                      mov r0, r7
006f79b8  ea 62 f0 eb                                      bl #0x310568
006f79bc  00 10 94 e5                                      ldr r1, [r4]
006f79c0  00 50 a0 e1                                      mov r5, r0
006f79c4  01 60 56 e0                                      subs r6, r6, r1
006f79c8  00 60 a0 01                                      moveq r6, r0
006f79cc  0f 00 00 1a                                      bne #0x6f7a10
006f79d0  00 30 98 e5                                      ldr r3, [r8]
006f79d4  07 70 85 e0                                      add r7, r5, r7
006f79d8  04 30 86 e4                                      str r3, [r6], #4
006f79dc  00 00 94 e5                                      ldr r0, [r4]
006f79e0  9a 62 f0 eb                                      bl #0x310450
006f79e4  e0 00 84 e8                                      stm r4, {r5, r6, r7}
006f79e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006f79ec  03 70 e0 e3                                      mvn r7, #3
006f79f0  00 10 a0 e3                                      mov r1, #0
006f79f4  07 00 a0 e1                                      mov r0, r7
006f79f8  da 62 f0 eb                                      bl #0x310568
006f79fc  00 10 94 e5                                      ldr r1, [r4]
006f7a00  00 50 a0 e1                                      mov r5, r0
006f7a04  01 60 56 e0                                      subs r6, r6, r1
006f7a08  00 60 a0 01                                      moveq r6, r0
006f7a0c  ef ff ff 0a                                      beq #0x6f79d0
006f7a10  06 20 a0 e1                                      mov r2, r6
006f7a14  47 59 f0 eb                                      bl #0x30df38
006f7a18  06 60 80 e0                                      add r6, r0, r6
006f7a1c  eb ff ff ea                                      b #0x6f79d0

; FUNCTION 0x006fb1c0, declared_size=176, range_size=176, mode=arm
; class-group: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIiN6glitch4core10SAllocatorIiLNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPiRKiRKSt11__true_typejb.clone.1
; demangled: std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(int*, int const&, std::__true_type const&, unsigned int, bool) [clone .clone.1]
; decoder-mode: arm
006fb1c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006fb1c4  00 40 a0 e1                                      mov r4, r0
006fb1c8  00 30 94 e5                                      ldr r3, [r4]
006fb1cc  04 00 90 e5                                      ldr r0, [r0, #4]
006fb1d0  01 60 a0 e1                                      mov r6, r1
006fb1d4  02 80 a0 e1                                      mov r8, r2
006fb1d8  00 30 63 e0                                      rsb r3, r3, r0
006fb1dc  43 31 a0 e1                                      asr r3, r3, #2
006fb1e0  01 00 53 e3                                      cmp r3, #1
006fb1e4  03 70 83 20                                      addhs r7, r3, r3
006fb1e8  01 70 83 32                                      addlo r7, r3, #1
006fb1ec  07 01 77 e3                                      cmn r7, #0xc0000001
006fb1f0  11 00 00 8a                                      bhi #0x6fb23c
006fb1f4  07 00 53 e1                                      cmp r3, r7
006fb1f8  07 71 a0 91                                      lslls r7, r7, #2
006fb1fc  0e 00 00 8a                                      bhi #0x6fb23c
006fb200  00 10 a0 e3                                      mov r1, #0
006fb204  07 00 a0 e1                                      mov r0, r7
006fb208  d6 54 f0 eb                                      bl #0x310568
006fb20c  00 10 94 e5                                      ldr r1, [r4]
006fb210  00 50 a0 e1                                      mov r5, r0
006fb214  01 60 56 e0                                      subs r6, r6, r1
006fb218  00 60 a0 01                                      moveq r6, r0
006fb21c  0f 00 00 1a                                      bne #0x6fb260
006fb220  00 30 98 e5                                      ldr r3, [r8]
006fb224  07 70 85 e0                                      add r7, r5, r7
006fb228  04 30 86 e4                                      str r3, [r6], #4
006fb22c  00 00 94 e5                                      ldr r0, [r4]
006fb230  86 54 f0 eb                                      bl #0x310450
006fb234  e0 00 84 e8                                      stm r4, {r5, r6, r7}
006fb238  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006fb23c  03 70 e0 e3                                      mvn r7, #3
006fb240  00 10 a0 e3                                      mov r1, #0
006fb244  07 00 a0 e1                                      mov r0, r7
006fb248  c6 54 f0 eb                                      bl #0x310568
006fb24c  00 10 94 e5                                      ldr r1, [r4]
006fb250  00 50 a0 e1                                      mov r5, r0
006fb254  01 60 56 e0                                      subs r6, r6, r1
006fb258  00 60 a0 01                                      moveq r6, r0
006fb25c  ef ff ff 0a                                      beq #0x6fb220
006fb260  06 20 a0 e1                                      mov r2, r6
006fb264  33 4b f0 eb                                      bl #0x30df38
006fb268  06 60 80 e0                                      add r6, r0, r6
006fb26c  eb ff ff ea                                      b #0x6fb220
