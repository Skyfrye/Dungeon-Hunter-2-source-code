; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065e600, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<void*, glitch::core::SAllocator<void*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPvN6glitch4core10SAllocatorIS0_LNS1_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS0_jRKS0_RKSt12__false_type
; demangled: std::vector<void*, glitch::core::SAllocator<void*, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(void**, unsigned int, void* const&, std::__false_type const&)
; decoder-mode: arm
0065e600  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0065e604  00 c0 90 e5                                      ldr ip, [r0]
0065e608  03 50 a0 e1                                      mov r5, r3
0065e60c  14 d0 4d e2                                      sub sp, sp, #0x14
0065e610  0c 00 53 e1                                      cmp r3, ip
0065e614  00 40 a0 e1                                      mov r4, r0
0065e618  01 60 a0 e1                                      mov r6, r1
0065e61c  02 30 a0 e1                                      mov r3, r2
0065e620  04 70 90 35                                      ldrlo r7, [r0, #4]
0065e624  0a 00 00 3a                                      blo #0x65e654
0065e628  04 70 90 e5                                      ldr r7, [r0, #4]
0065e62c  07 00 55 e1                                      cmp r5, r7
0065e630  07 00 00 2a                                      bhs #0x65e654
0065e634  00 c0 95 e5                                      ldr ip, [r5]
0065e638  10 30 8d e2                                      add r3, sp, #0x10
0065e63c  08 c0 23 e5                                      str ip, [r3, #-8]!
0065e640  0c c0 8d e2                                      add ip, sp, #0xc
0065e644  00 c0 8d e5                                      str ip, [sp]
0065e648  ec ff ff eb                                      bl #0x65e600
0065e64c  14 d0 8d e2                                      add sp, sp, #0x14
0065e650  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0065e654  07 20 66 e0                                      rsb r2, r6, r7
0065e658  42 81 a0 e1                                      asr r8, r2, #2
0065e65c  08 00 53 e1                                      cmp r3, r8
0065e660  1c 00 00 2a                                      bhs #0x65e6d8
0065e664  03 81 a0 e1                                      lsl r8, r3, #2
0065e668  07 30 68 e0                                      rsb r3, r8, r7
0065e66c  07 00 53 e1                                      cmp r3, r7
0065e670  07 a0 a0 01                                      moveq sl, r7
0065e674  05 00 00 0a                                      beq #0x65e690
0065e678  03 10 a0 e1                                      mov r1, r3
0065e67c  07 20 63 e0                                      rsb r2, r3, r7
0065e680  07 00 a0 e1                                      mov r0, r7
0065e684  03 a0 a0 e1                                      mov sl, r3
0065e688  76 c0 f2 eb                                      bl #0x30e868
0065e68c  04 30 94 e5                                      ldr r3, [r4, #4]
0065e690  0a 20 66 e0                                      rsb r2, r6, sl
0065e694  08 30 83 e0                                      add r3, r3, r8
0065e698  00 00 52 e3                                      cmp r2, #0
0065e69c  04 30 84 e5                                      str r3, [r4, #4]
0065e6a0  02 00 00 da                                      ble #0x65e6b0
0065e6a4  07 00 62 e0                                      rsb r0, r2, r7
0065e6a8  06 10 a0 e1                                      mov r1, r6
0065e6ac  21 be f2 eb                                      bl #0x30df38
0065e6b0  48 81 a0 e1                                      asr r8, r8, #2
0065e6b4  00 00 58 e3                                      cmp r8, #0
0065e6b8  e3 ff ff da                                      ble #0x65e64c
0065e6bc  00 20 a0 e3                                      mov r2, #0
0065e6c0  00 10 95 e5                                      ldr r1, [r5]
0065e6c4  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
0065e6c8  01 20 82 e2                                      add r2, r2, #1
0065e6cc  08 00 52 e1                                      cmp r2, r8
0065e6d0  fa ff ff 1a                                      bne #0x65e6c0
0065e6d4  dc ff ff ea                                      b #0x65e64c
0065e6d8  03 30 68 e0                                      rsb r3, r8, r3
0065e6dc  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
0065e6e0  00 00 5a e3                                      cmp sl, #0
0065e6e4  03 01 87 e0                                      add r0, r7, r3, lsl #2
0065e6e8  05 00 00 da                                      ble #0x65e704
0065e6ec  00 10 a0 e3                                      mov r1, #0
0065e6f0  00 c0 95 e5                                      ldr ip, [r5]
0065e6f4  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
0065e6f8  01 10 81 e2                                      add r1, r1, #1
0065e6fc  0a 00 51 e1                                      cmp r1, sl
0065e700  fa ff ff 1a                                      bne #0x65e6f0
0065e704  07 00 56 e1                                      cmp r6, r7
0065e708  04 00 84 e5                                      str r0, [r4, #4]
0065e70c  02 00 00 0a                                      beq #0x65e71c
0065e710  06 10 a0 e1                                      mov r1, r6
0065e714  53 c0 f2 eb                                      bl #0x30e868
0065e718  04 00 94 e5                                      ldr r0, [r4, #4]
0065e71c  08 01 80 e0                                      add r0, r0, r8, lsl #2
0065e720  00 00 58 e3                                      cmp r8, #0
0065e724  04 00 84 e5                                      str r0, [r4, #4]
0065e728  c7 ff ff da                                      ble #0x65e64c
0065e72c  00 30 a0 e3                                      mov r3, #0
0065e730  00 20 95 e5                                      ldr r2, [r5]
0065e734  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
0065e738  01 30 83 e2                                      add r3, r3, #1
0065e73c  03 00 58 e1                                      cmp r8, r3
0065e740  fa ff ff 1a                                      bne #0x65e730
0065e744  c0 ff ff ea                                      b #0x65e64c

; FUNCTION 0x0065e890, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<void*, glitch::core::SAllocator<void*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPvN6glitch4core10SAllocatorIS0_LNS1_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<void*, glitch::core::SAllocator<void*, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0065e890  70 40 2d e9                                      push {r4, r5, r6, lr}
0065e894  14 00 90 e8                                      ldm r0, {r2, r4}
0065e898  ff 3f 0f e3                                      movw r3, #0xffff
0065e89c  ff 3f 43 e3                                      movt r3, #0x3fff
0065e8a0  04 40 62 e0                                      rsb r4, r2, r4
0065e8a4  44 41 a0 e1                                      asr r4, r4, #2
0065e8a8  03 30 64 e0                                      rsb r3, r4, r3
0065e8ac  01 00 53 e1                                      cmp r3, r1
0065e8b0  01 50 a0 e1                                      mov r5, r1
0065e8b4  08 00 00 3a                                      blo #0x65e8dc
0065e8b8  05 00 54 e1                                      cmp r4, r5
0065e8bc  04 00 84 20                                      addhs r0, r4, r4
0065e8c0  05 00 84 30                                      addlo r0, r4, r5
0065e8c4  07 01 70 e3                                      cmn r0, #0xc0000001
0065e8c8  01 00 00 8a                                      bhi #0x65e8d4
0065e8cc  04 00 50 e1                                      cmp r0, r4
0065e8d0  00 00 00 2a                                      bhs #0x65e8d8
0065e8d4  03 01 e0 e3                                      mvn r0, #0xc0000000
0065e8d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0065e8dc  08 00 9f e5                                      ldr r0, [pc, #8]
0065e8e0  00 00 8f e0                                      add r0, pc, r0
0065e8e4  55 a9 02 eb                                      bl #0x708e40
0065e8e8  f2 ff ff ea                                      b #0x65e8b8
; mapping-symbol data/literal pool
0065e8ec  88 fb 25 00                                      .byte 0x88, 0xfb, 0x25, 0x00

; FUNCTION 0x0065eb70, declared_size=208, range_size=208, mode=arm
; class-group: std::vector<void*, glitch::core::SAllocator<void*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPvN6glitch4core10SAllocatorIS0_LNS1_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS0_jRKS0_
; demangled: std::vector<void*, glitch::core::SAllocator<void*, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(void**, unsigned int, void* const&)
; decoder-mode: arm
0065eb70  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0065eb74  00 60 52 e2                                      subs r6, r2, #0
0065eb78  10 d0 4d e2                                      sub sp, sp, #0x10
0065eb7c  00 50 a0 e1                                      mov r5, r0
0065eb80  01 70 a0 e1                                      mov r7, r1
0065eb84  03 40 a0 e1                                      mov r4, r3
0065eb88  26 00 00 0a                                      beq #0x65ec28
0065eb8c  00 50 90 e9                                      ldmib r0, {ip, lr}
0065eb90  0e c0 6c e0                                      rsb ip, ip, lr
0065eb94  4c 01 56 e1                                      cmp r6, ip, asr #2
0065eb98  24 00 00 9a                                      bls #0x65ec30
0065eb9c  06 10 a0 e1                                      mov r1, r6
0065eba0  3a ff ff eb                                      bl #0x65e890
0065eba4  00 91 a0 e1                                      lsl sb, r0, #2
0065eba8  00 10 a0 e3                                      mov r1, #0
0065ebac  09 00 a0 e1                                      mov r0, sb
0065ebb0  6c c6 f2 eb                                      bl #0x310568
0065ebb4  00 10 95 e5                                      ldr r1, [r5]
0065ebb8  00 80 a0 e1                                      mov r8, r0
0065ebbc  01 a0 57 e0                                      subs sl, r7, r1
0065ebc0  00 00 a0 01                                      moveq r0, r0
0065ebc4  02 00 00 0a                                      beq #0x65ebd4
0065ebc8  0a 20 a0 e1                                      mov r2, sl
0065ebcc  d9 bc f2 eb                                      bl #0x30df38
0065ebd0  0a 00 80 e0                                      add r0, r0, sl
0065ebd4  06 20 a0 e1                                      mov r2, r6
0065ebd8  00 30 a0 e3                                      mov r3, #0
0065ebdc  00 10 94 e5                                      ldr r1, [r4]
0065ebe0  01 20 52 e2                                      subs r2, r2, #1
0065ebe4  03 10 80 e7                                      str r1, [r0, r3]
0065ebe8  04 30 83 e2                                      add r3, r3, #4
0065ebec  fa ff ff 1a                                      bne #0x65ebdc
0065ebf0  04 30 95 e5                                      ldr r3, [r5, #4]
0065ebf4  06 01 80 e0                                      add r0, r0, r6, lsl #2
0065ebf8  07 40 53 e0                                      subs r4, r3, r7
0065ebfc  00 60 a0 01                                      moveq r6, r0
0065ec00  03 00 00 0a                                      beq #0x65ec14
0065ec04  07 10 a0 e1                                      mov r1, r7
0065ec08  04 20 a0 e1                                      mov r2, r4
0065ec0c  c9 bc f2 eb                                      bl #0x30df38
0065ec10  04 60 80 e0                                      add r6, r0, r4
0065ec14  00 00 95 e5                                      ldr r0, [r5]
0065ec18  09 90 88 e0                                      add sb, r8, sb
0065ec1c  0b c6 f2 eb                                      bl #0x310450
0065ec20  40 02 85 e9                                      stmib r5, {r6, sb}
0065ec24  00 80 85 e5                                      str r8, [r5]
0065ec28  10 d0 8d e2                                      add sp, sp, #0x10
0065ec2c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0065ec30  0c c0 8d e2                                      add ip, sp, #0xc
0065ec34  00 c0 8d e5                                      str ip, [sp]
0065ec38  70 fe ff eb                                      bl #0x65e600
0065ec3c  f9 ff ff ea                                      b #0x65ec28

; FUNCTION 0x0065ec40, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<void*, glitch::core::SAllocator<void*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPvN6glitch4core10SAllocatorIS0_LNS1_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS0_
; demangled: std::vector<void*, glitch::core::SAllocator<void*, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, void* const&)
; decoder-mode: arm
0065ec40  30 00 2d e9                                      push {r4, r5}
0065ec44  04 40 90 e5                                      ldr r4, [r0, #4]
0065ec48  00 50 90 e5                                      ldr r5, [r0]
0065ec4c  02 30 a0 e1                                      mov r3, r2
0065ec50  04 20 65 e0                                      rsb r2, r5, r4
0065ec54  42 21 a0 e1                                      asr r2, r2, #2
0065ec58  02 00 51 e1                                      cmp r1, r2
0065ec5c  04 00 00 2a                                      bhs #0x65ec74
0065ec60  01 51 85 e0                                      add r5, r5, r1, lsl #2
0065ec64  04 00 55 e1                                      cmp r5, r4
0065ec68  04 50 80 15                                      strne r5, [r0, #4]
0065ec6c  30 00 bd e8                                      pop {r4, r5}
0065ec70  1e ff 2f e1                                      bx lr
0065ec74  01 20 62 e0                                      rsb r2, r2, r1
0065ec78  04 10 a0 e1                                      mov r1, r4
0065ec7c  30 00 bd e8                                      pop {r4, r5}
0065ec80  ba ff ff ea                                      b #0x65eb70

; FUNCTION 0x0065fcc4, declared_size=168, range_size=168, mode=arm
; class-group: std::vector<void*, glitch::core::SAllocator<void*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPvN6glitch4core10SAllocatorIS0_LNS1_6memory13E_MEMORY_HINTE0EEEE7reserveEj
; demangled: std::vector<void*, glitch::core::SAllocator<void*, (glitch::memory::E_MEMORY_HINT)0> >::reserve(unsigned int)
; decoder-mode: arm
0065fcc4  70 40 2d e9                                      push {r4, r5, r6, lr}
0065fcc8  00 40 a0 e1                                      mov r4, r0
0065fccc  00 20 90 e5                                      ldr r2, [r0]
0065fcd0  08 00 90 e5                                      ldr r0, [r0, #8]
0065fcd4  08 d0 4d e2                                      sub sp, sp, #8
0065fcd8  04 10 8d e5                                      str r1, [sp, #4]
0065fcdc  00 00 62 e0                                      rsb r0, r2, r0
0065fce0  40 01 51 e1                                      cmp r1, r0, asr #2
0065fce4  12 00 00 9a                                      bls #0x65fd34
0065fce8  07 01 71 e3                                      cmn r1, #0xc0000001
0065fcec  12 00 00 8a                                      bhi #0x65fd3c
0065fcf0  04 30 94 e5                                      ldr r3, [r4, #4]
0065fcf4  00 00 52 e3                                      cmp r2, #0
0065fcf8  03 50 62 e0                                      rsb r5, r2, r3
0065fcfc  45 51 a0 e1                                      asr r5, r5, #2
0065fd00  12 00 00 0a                                      beq #0x65fd50
0065fd04  04 00 a0 e1                                      mov r0, r4
0065fd08  04 10 8d e2                                      add r1, sp, #4
0065fd0c  dd ff ff eb                                      bl #0x65fc88
0065fd10  00 60 a0 e1                                      mov r6, r0
0065fd14  00 00 94 e5                                      ldr r0, [r4]
0065fd18  cc c1 f2 eb                                      bl #0x310450
0065fd1c  04 30 9d e5                                      ldr r3, [sp, #4]
0065fd20  05 51 86 e0                                      add r5, r6, r5, lsl #2
0065fd24  04 50 84 e5                                      str r5, [r4, #4]
0065fd28  03 31 86 e0                                      add r3, r6, r3, lsl #2
0065fd2c  08 30 84 e5                                      str r3, [r4, #8]
0065fd30  00 60 84 e5                                      str r6, [r4]
0065fd34  08 d0 8d e2                                      add sp, sp, #8
0065fd38  70 80 bd e8                                      pop {r4, r5, r6, pc}
0065fd3c  24 00 9f e5                                      ldr r0, [pc, #0x24]
0065fd40  00 00 8f e0                                      add r0, pc, r0
0065fd44  3d a4 02 eb                                      bl #0x708e40
0065fd48  00 20 94 e5                                      ldr r2, [r4]
0065fd4c  e7 ff ff ea                                      b #0x65fcf0
0065fd50  04 00 9d e5                                      ldr r0, [sp, #4]
0065fd54  02 10 a0 e1                                      mov r1, r2
0065fd58  00 01 a0 e1                                      lsl r0, r0, #2
0065fd5c  01 c2 f2 eb                                      bl #0x310568
0065fd60  00 60 a0 e1                                      mov r6, r0
0065fd64  ec ff ff ea                                      b #0x65fd1c
; mapping-symbol data/literal pool
0065fd68  28 e7 25 00                                      .byte 0x28, 0xe7, 0x25, 0x00
