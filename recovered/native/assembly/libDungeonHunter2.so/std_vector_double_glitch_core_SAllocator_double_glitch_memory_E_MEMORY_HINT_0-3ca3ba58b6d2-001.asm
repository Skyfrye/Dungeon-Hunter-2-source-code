; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006d08bc, declared_size=340, range_size=340, mode=arm
; class-group: std::vector<double, glitch::core::SAllocator<double, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIdN6glitch4core10SAllocatorIdLNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPdjRKdRKSt12__false_type
; demangled: std::vector<double, glitch::core::SAllocator<double, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(double*, unsigned int, double const&, std::__false_type const&)
; decoder-mode: arm
006d08bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d08c0  00 c0 90 e5                                      ldr ip, [r0]
006d08c4  03 50 a0 e1                                      mov r5, r3
006d08c8  1c d0 4d e2                                      sub sp, sp, #0x1c
006d08cc  0c 00 53 e1                                      cmp r3, ip
006d08d0  00 40 a0 e1                                      mov r4, r0
006d08d4  01 60 a0 e1                                      mov r6, r1
006d08d8  02 30 a0 e1                                      mov r3, r2
006d08dc  04 70 90 35                                      ldrlo r7, [r0, #4]
006d08e0  0a 00 00 3a                                      blo #0x6d0910
006d08e4  04 70 90 e5                                      ldr r7, [r0, #4]
006d08e8  07 00 55 e1                                      cmp r5, r7
006d08ec  07 00 00 2a                                      bhs #0x6d0910
006d08f0  18 30 8d e2                                      add r3, sp, #0x18
006d08f4  d0 40 c5 e1                                      ldrd r4, r5, [r5]
006d08f8  14 c0 8d e2                                      add ip, sp, #0x14
006d08fc  f0 41 63 e1                                      strd r4, r5, [r3, #-0x10]!
006d0900  00 c0 8d e5                                      str ip, [sp]
006d0904  ec ff ff eb                                      bl #0x6d08bc
006d0908  1c d0 8d e2                                      add sp, sp, #0x1c
006d090c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d0910  07 20 66 e0                                      rsb r2, r6, r7
006d0914  c2 81 a0 e1                                      asr r8, r2, #3
006d0918  08 00 53 e1                                      cmp r3, r8
006d091c  1d 00 00 2a                                      bhs #0x6d0998
006d0920  83 81 a0 e1                                      lsl r8, r3, #3
006d0924  07 30 68 e0                                      rsb r3, r8, r7
006d0928  07 00 53 e1                                      cmp r3, r7
006d092c  07 a0 a0 01                                      moveq sl, r7
006d0930  05 00 00 0a                                      beq #0x6d094c
006d0934  03 10 a0 e1                                      mov r1, r3
006d0938  07 20 63 e0                                      rsb r2, r3, r7
006d093c  07 00 a0 e1                                      mov r0, r7
006d0940  03 a0 a0 e1                                      mov sl, r3
006d0944  c7 f7 f0 eb                                      bl #0x30e868
006d0948  04 30 94 e5                                      ldr r3, [r4, #4]
006d094c  0a 20 66 e0                                      rsb r2, r6, sl
006d0950  08 30 83 e0                                      add r3, r3, r8
006d0954  00 00 52 e3                                      cmp r2, #0
006d0958  04 30 84 e5                                      str r3, [r4, #4]
006d095c  02 00 00 da                                      ble #0x6d096c
006d0960  07 00 62 e0                                      rsb r0, r2, r7
006d0964  06 10 a0 e1                                      mov r1, r6
006d0968  72 f5 f0 eb                                      bl #0x30df38
006d096c  c8 81 a0 e1                                      asr r8, r8, #3
006d0970  00 00 58 e3                                      cmp r8, #0
006d0974  e3 ff ff da                                      ble #0x6d0908
006d0978  00 20 a0 e3                                      mov r2, #0
006d097c  82 11 a0 e1                                      lsl r1, r2, #3
006d0980  01 20 82 e2                                      add r2, r2, #1
006d0984  08 00 52 e1                                      cmp r2, r8
006d0988  d0 a0 c5 e1                                      ldrd sl, fp, [r5]
006d098c  f1 a0 86 e1                                      strd sl, fp, [r6, r1]
006d0990  f9 ff ff 1a                                      bne #0x6d097c
006d0994  db ff ff ea                                      b #0x6d0908
006d0998  03 30 68 e0                                      rsb r3, r8, r3
006d099c  53 90 bc e7                                      sbfx sb, r3, #0, #0x1d
006d09a0  00 00 59 e3                                      cmp sb, #0
006d09a4  83 01 87 e0                                      add r0, r7, r3, lsl #3
006d09a8  06 00 00 da                                      ble #0x6d09c8
006d09ac  00 10 a0 e3                                      mov r1, #0
006d09b0  81 c1 a0 e1                                      lsl ip, r1, #3
006d09b4  01 10 81 e2                                      add r1, r1, #1
006d09b8  09 00 51 e1                                      cmp r1, sb
006d09bc  d0 a0 c5 e1                                      ldrd sl, fp, [r5]
006d09c0  fc a0 87 e1                                      strd sl, fp, [r7, ip]
006d09c4  f9 ff ff 1a                                      bne #0x6d09b0
006d09c8  07 00 56 e1                                      cmp r6, r7
006d09cc  04 00 84 e5                                      str r0, [r4, #4]
006d09d0  02 00 00 0a                                      beq #0x6d09e0
006d09d4  06 10 a0 e1                                      mov r1, r6
006d09d8  a2 f7 f0 eb                                      bl #0x30e868
006d09dc  04 00 94 e5                                      ldr r0, [r4, #4]
006d09e0  88 01 80 e0                                      add r0, r0, r8, lsl #3
006d09e4  00 00 58 e3                                      cmp r8, #0
006d09e8  04 00 84 e5                                      str r0, [r4, #4]
006d09ec  c5 ff ff da                                      ble #0x6d0908
006d09f0  00 30 a0 e3                                      mov r3, #0
006d09f4  83 21 a0 e1                                      lsl r2, r3, #3
006d09f8  01 30 83 e2                                      add r3, r3, #1
006d09fc  03 00 58 e1                                      cmp r8, r3
006d0a00  d0 00 c5 e1                                      ldrd r0, r1, [r5]
006d0a04  f2 00 86 e1                                      strd r0, r1, [r6, r2]
006d0a08  f9 ff ff 1a                                      bne #0x6d09f4
006d0a0c  bd ff ff ea                                      b #0x6d0908

; FUNCTION 0x006d0b58, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<double, glitch::core::SAllocator<double, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIdN6glitch4core10SAllocatorIdLNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<double, glitch::core::SAllocator<double, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
006d0b58  70 40 2d e9                                      push {r4, r5, r6, lr}
006d0b5c  14 00 90 e8                                      ldm r0, {r2, r4}
006d0b60  ff 3f 0f e3                                      movw r3, #0xffff
006d0b64  ff 3f 41 e3                                      movt r3, #0x1fff
006d0b68  04 40 62 e0                                      rsb r4, r2, r4
006d0b6c  c4 41 a0 e1                                      asr r4, r4, #3
006d0b70  03 30 64 e0                                      rsb r3, r4, r3
006d0b74  01 00 53 e1                                      cmp r3, r1
006d0b78  01 50 a0 e1                                      mov r5, r1
006d0b7c  08 00 00 3a                                      blo #0x6d0ba4
006d0b80  05 00 54 e1                                      cmp r4, r5
006d0b84  04 00 84 20                                      addhs r0, r4, r4
006d0b88  05 00 84 30                                      addlo r0, r4, r5
006d0b8c  1e 02 70 e3                                      cmn r0, #0xe0000001
006d0b90  01 00 00 8a                                      bhi #0x6d0b9c
006d0b94  04 00 50 e1                                      cmp r0, r4
006d0b98  00 00 00 2a                                      bhs #0x6d0ba0
006d0b9c  0e 02 e0 e3                                      mvn r0, #0xe0000000
006d0ba0  70 80 bd e8                                      pop {r4, r5, r6, pc}
006d0ba4  08 00 9f e5                                      ldr r0, [pc, #8]
006d0ba8  00 00 8f e0                                      add r0, pc, r0
006d0bac  a3 e0 00 eb                                      bl #0x708e40
006d0bb0  f2 ff ff ea                                      b #0x6d0b80
; mapping-symbol data/literal pool
006d0bb4  c0 d8 1e 00                                      .byte 0xc0, 0xd8, 0x1e, 0x00

; FUNCTION 0x006d0c54, declared_size=168, range_size=168, mode=arm
; class-group: std::vector<double, glitch::core::SAllocator<double, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIdN6glitch4core10SAllocatorIdLNS0_6memory13E_MEMORY_HINTE0EEEE7reserveEj
; demangled: std::vector<double, glitch::core::SAllocator<double, (glitch::memory::E_MEMORY_HINT)0> >::reserve(unsigned int)
; decoder-mode: arm
006d0c54  70 40 2d e9                                      push {r4, r5, r6, lr}
006d0c58  00 40 a0 e1                                      mov r4, r0
006d0c5c  00 20 90 e5                                      ldr r2, [r0]
006d0c60  08 00 90 e5                                      ldr r0, [r0, #8]
006d0c64  08 d0 4d e2                                      sub sp, sp, #8
006d0c68  04 10 8d e5                                      str r1, [sp, #4]
006d0c6c  00 00 62 e0                                      rsb r0, r2, r0
006d0c70  c0 01 51 e1                                      cmp r1, r0, asr #3
006d0c74  12 00 00 9a                                      bls #0x6d0cc4
006d0c78  1e 02 71 e3                                      cmn r1, #0xe0000001
006d0c7c  12 00 00 8a                                      bhi #0x6d0ccc
006d0c80  04 30 94 e5                                      ldr r3, [r4, #4]
006d0c84  00 00 52 e3                                      cmp r2, #0
006d0c88  03 50 62 e0                                      rsb r5, r2, r3
006d0c8c  c5 51 a0 e1                                      asr r5, r5, #3
006d0c90  12 00 00 0a                                      beq #0x6d0ce0
006d0c94  04 00 a0 e1                                      mov r0, r4
006d0c98  04 10 8d e2                                      add r1, sp, #4
006d0c9c  dd ff ff eb                                      bl #0x6d0c18
006d0ca0  00 60 a0 e1                                      mov r6, r0
006d0ca4  00 00 94 e5                                      ldr r0, [r4]
006d0ca8  e8 fd f0 eb                                      bl #0x310450
006d0cac  04 30 9d e5                                      ldr r3, [sp, #4]
006d0cb0  85 51 86 e0                                      add r5, r6, r5, lsl #3
006d0cb4  04 50 84 e5                                      str r5, [r4, #4]
006d0cb8  83 31 86 e0                                      add r3, r6, r3, lsl #3
006d0cbc  08 30 84 e5                                      str r3, [r4, #8]
006d0cc0  00 60 84 e5                                      str r6, [r4]
006d0cc4  08 d0 8d e2                                      add sp, sp, #8
006d0cc8  70 80 bd e8                                      pop {r4, r5, r6, pc}
006d0ccc  24 00 9f e5                                      ldr r0, [pc, #0x24]
006d0cd0  00 00 8f e0                                      add r0, pc, r0
006d0cd4  59 e0 00 eb                                      bl #0x708e40
006d0cd8  00 20 94 e5                                      ldr r2, [r4]
006d0cdc  e7 ff ff ea                                      b #0x6d0c80
006d0ce0  04 00 9d e5                                      ldr r0, [sp, #4]
006d0ce4  02 10 a0 e1                                      mov r1, r2
006d0ce8  80 01 a0 e1                                      lsl r0, r0, #3
006d0cec  1d fe f0 eb                                      bl #0x310568
006d0cf0  00 60 a0 e1                                      mov r6, r0
006d0cf4  ec ff ff ea                                      b #0x6d0cac
; mapping-symbol data/literal pool
006d0cf8  98 d7 1e 00                                      .byte 0x98, 0xd7, 0x1e, 0x00

; FUNCTION 0x006d1518, declared_size=192, range_size=192, mode=arm
; class-group: std::vector<double, glitch::core::SAllocator<double, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIdN6glitch4core10SAllocatorIdLNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPdRKdRKSt11__true_typejb
; demangled: std::vector<double, glitch::core::SAllocator<double, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(double*, double const&, std::__true_type const&, unsigned int, bool)
; decoder-mode: arm
006d1518  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d151c  28 60 9d e5                                      ldr r6, [sp, #0x28]
006d1520  01 90 a0 e1                                      mov sb, r1
006d1524  02 40 a0 e1                                      mov r4, r2
006d1528  06 10 a0 e1                                      mov r1, r6
006d152c  00 50 a0 e1                                      mov r5, r0
006d1530  2c b0 dd e5                                      ldrb fp, [sp, #0x2c]
006d1534  87 fd ff eb                                      bl #0x6d0b58
006d1538  80 81 a0 e1                                      lsl r8, r0, #3
006d153c  00 10 a0 e3                                      mov r1, #0
006d1540  08 00 a0 e1                                      mov r0, r8
006d1544  07 fc f0 eb                                      bl #0x310568
006d1548  00 10 95 e5                                      ldr r1, [r5]
006d154c  00 70 a0 e1                                      mov r7, r0
006d1550  01 a0 59 e0                                      subs sl, sb, r1
006d1554  00 c0 a0 01                                      moveq ip, r0
006d1558  02 00 00 0a                                      beq #0x6d1568
006d155c  0a 20 a0 e1                                      mov r2, sl
006d1560  74 f2 f0 eb                                      bl #0x30df38
006d1564  0a c0 80 e0                                      add ip, r0, sl
006d1568  00 00 56 e3                                      cmp r6, #0
006d156c  0c a0 a0 e1                                      mov sl, ip
006d1570  07 00 00 0a                                      beq #0x6d1594
006d1574  06 20 a0 e1                                      mov r2, r6
006d1578  00 30 a0 e3                                      mov r3, #0
006d157c  01 20 52 e2                                      subs r2, r2, #1
006d1580  d0 00 c4 e1                                      ldrd r0, r1, [r4]
006d1584  f3 00 8c e1                                      strd r0, r1, [ip, r3]
006d1588  08 30 83 e2                                      add r3, r3, #8
006d158c  fa ff ff 1a                                      bne #0x6d157c
006d1590  86 a1 8c e0                                      add sl, ip, r6, lsl #3
006d1594  00 00 5b e3                                      cmp fp, #0
006d1598  05 00 00 0a                                      beq #0x6d15b4
006d159c  00 00 95 e5                                      ldr r0, [r5]
006d15a0  08 80 87 e0                                      add r8, r7, r8
006d15a4  a9 fb f0 eb                                      bl #0x310450
006d15a8  08 80 85 e5                                      str r8, [r5, #8]
006d15ac  80 04 85 e8                                      stm r5, {r7, sl}
006d15b0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d15b4  04 40 95 e5                                      ldr r4, [r5, #4]
006d15b8  09 40 54 e0                                      subs r4, r4, sb
006d15bc  f6 ff ff 0a                                      beq #0x6d159c
006d15c0  0a 00 a0 e1                                      mov r0, sl
006d15c4  09 10 a0 e1                                      mov r1, sb
006d15c8  04 20 a0 e1                                      mov r2, r4
006d15cc  59 f2 f0 eb                                      bl #0x30df38
006d15d0  04 a0 80 e0                                      add sl, r0, r4
006d15d4  f0 ff ff ea                                      b #0x6d159c

; FUNCTION 0x006d15d8, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<double, glitch::core::SAllocator<double, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIdN6glitch4core10SAllocatorIdLNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPdjRKd
; demangled: std::vector<double, glitch::core::SAllocator<double, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(double*, unsigned int, double const&)
; decoder-mode: arm
006d15d8  30 40 2d e9                                      push {r4, r5, lr}
006d15dc  00 40 52 e2                                      subs r4, r2, #0
006d15e0  14 d0 4d e2                                      sub sp, sp, #0x14
006d15e4  03 50 a0 e1                                      mov r5, r3
006d15e8  09 00 00 0a                                      beq #0x6d1614
006d15ec  04 e0 90 e5                                      ldr lr, [r0, #4]
006d15f0  08 c0 90 e5                                      ldr ip, [r0, #8]
006d15f4  0c c0 6e e0                                      rsb ip, lr, ip
006d15f8  cc 01 54 e1                                      cmp r4, ip, asr #3
006d15fc  06 00 00 9a                                      bls #0x6d161c
006d1600  03 20 a0 e1                                      mov r2, r3
006d1604  00 c0 a0 e3                                      mov ip, #0
006d1608  08 30 8d e2                                      add r3, sp, #8
006d160c  10 10 8d e8                                      stm sp, {r4, ip}
006d1610  c0 ff ff eb                                      bl #0x6d1518
006d1614  14 d0 8d e2                                      add sp, sp, #0x14
006d1618  30 80 bd e8                                      pop {r4, r5, pc}
006d161c  0c c0 8d e2                                      add ip, sp, #0xc
006d1620  00 c0 8d e5                                      str ip, [sp]
006d1624  a4 fc ff eb                                      bl #0x6d08bc
006d1628  f9 ff ff ea                                      b #0x6d1614
