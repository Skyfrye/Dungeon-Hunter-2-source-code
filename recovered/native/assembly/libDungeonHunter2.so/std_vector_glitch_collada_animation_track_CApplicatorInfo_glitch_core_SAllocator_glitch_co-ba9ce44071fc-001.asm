; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065e748, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<glitch::collada::animation_track::CApplicatorInfo*, glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch7collada15animation_track15CApplicatorInfoENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS4_jRKS4_RKSt12__false_type
; demangled: std::vector<glitch::collada::animation_track::CApplicatorInfo*, glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo*, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::collada::animation_track::CApplicatorInfo**, unsigned int, glitch::collada::animation_track::CApplicatorInfo* const&, std::__false_type const&)
; decoder-mode: arm
0065e748  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0065e74c  00 c0 90 e5                                      ldr ip, [r0]
0065e750  03 50 a0 e1                                      mov r5, r3
0065e754  14 d0 4d e2                                      sub sp, sp, #0x14
0065e758  0c 00 53 e1                                      cmp r3, ip
0065e75c  00 40 a0 e1                                      mov r4, r0
0065e760  01 60 a0 e1                                      mov r6, r1
0065e764  02 30 a0 e1                                      mov r3, r2
0065e768  04 70 90 35                                      ldrlo r7, [r0, #4]
0065e76c  0a 00 00 3a                                      blo #0x65e79c
0065e770  04 70 90 e5                                      ldr r7, [r0, #4]
0065e774  07 00 55 e1                                      cmp r5, r7
0065e778  07 00 00 2a                                      bhs #0x65e79c
0065e77c  00 c0 95 e5                                      ldr ip, [r5]
0065e780  10 30 8d e2                                      add r3, sp, #0x10
0065e784  08 c0 23 e5                                      str ip, [r3, #-8]!
0065e788  0c c0 8d e2                                      add ip, sp, #0xc
0065e78c  00 c0 8d e5                                      str ip, [sp]
0065e790  ec ff ff eb                                      bl #0x65e748
0065e794  14 d0 8d e2                                      add sp, sp, #0x14
0065e798  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0065e79c  07 20 66 e0                                      rsb r2, r6, r7
0065e7a0  42 81 a0 e1                                      asr r8, r2, #2
0065e7a4  08 00 53 e1                                      cmp r3, r8
0065e7a8  1c 00 00 2a                                      bhs #0x65e820
0065e7ac  03 81 a0 e1                                      lsl r8, r3, #2
0065e7b0  07 30 68 e0                                      rsb r3, r8, r7
0065e7b4  07 00 53 e1                                      cmp r3, r7
0065e7b8  07 a0 a0 01                                      moveq sl, r7
0065e7bc  05 00 00 0a                                      beq #0x65e7d8
0065e7c0  03 10 a0 e1                                      mov r1, r3
0065e7c4  07 20 63 e0                                      rsb r2, r3, r7
0065e7c8  07 00 a0 e1                                      mov r0, r7
0065e7cc  03 a0 a0 e1                                      mov sl, r3
0065e7d0  24 c0 f2 eb                                      bl #0x30e868
0065e7d4  04 30 94 e5                                      ldr r3, [r4, #4]
0065e7d8  0a 20 66 e0                                      rsb r2, r6, sl
0065e7dc  08 30 83 e0                                      add r3, r3, r8
0065e7e0  00 00 52 e3                                      cmp r2, #0
0065e7e4  04 30 84 e5                                      str r3, [r4, #4]
0065e7e8  02 00 00 da                                      ble #0x65e7f8
0065e7ec  07 00 62 e0                                      rsb r0, r2, r7
0065e7f0  06 10 a0 e1                                      mov r1, r6
0065e7f4  cf bd f2 eb                                      bl #0x30df38
0065e7f8  48 81 a0 e1                                      asr r8, r8, #2
0065e7fc  00 00 58 e3                                      cmp r8, #0
0065e800  e3 ff ff da                                      ble #0x65e794
0065e804  00 20 a0 e3                                      mov r2, #0
0065e808  00 10 95 e5                                      ldr r1, [r5]
0065e80c  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
0065e810  01 20 82 e2                                      add r2, r2, #1
0065e814  08 00 52 e1                                      cmp r2, r8
0065e818  fa ff ff 1a                                      bne #0x65e808
0065e81c  dc ff ff ea                                      b #0x65e794
0065e820  03 30 68 e0                                      rsb r3, r8, r3
0065e824  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
0065e828  00 00 5a e3                                      cmp sl, #0
0065e82c  03 01 87 e0                                      add r0, r7, r3, lsl #2
0065e830  05 00 00 da                                      ble #0x65e84c
0065e834  00 10 a0 e3                                      mov r1, #0
0065e838  00 c0 95 e5                                      ldr ip, [r5]
0065e83c  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
0065e840  01 10 81 e2                                      add r1, r1, #1
0065e844  0a 00 51 e1                                      cmp r1, sl
0065e848  fa ff ff 1a                                      bne #0x65e838
0065e84c  07 00 56 e1                                      cmp r6, r7
0065e850  04 00 84 e5                                      str r0, [r4, #4]
0065e854  02 00 00 0a                                      beq #0x65e864
0065e858  06 10 a0 e1                                      mov r1, r6
0065e85c  01 c0 f2 eb                                      bl #0x30e868
0065e860  04 00 94 e5                                      ldr r0, [r4, #4]
0065e864  08 01 80 e0                                      add r0, r0, r8, lsl #2
0065e868  00 00 58 e3                                      cmp r8, #0
0065e86c  04 00 84 e5                                      str r0, [r4, #4]
0065e870  c7 ff ff da                                      ble #0x65e794
0065e874  00 30 a0 e3                                      mov r3, #0
0065e878  00 20 95 e5                                      ldr r2, [r5]
0065e87c  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
0065e880  01 30 83 e2                                      add r3, r3, #1
0065e884  03 00 58 e1                                      cmp r8, r3
0065e888  fa ff ff 1a                                      bne #0x65e878
0065e88c  c0 ff ff ea                                      b #0x65e794

; FUNCTION 0x0065e8f0, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::collada::animation_track::CApplicatorInfo*, glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch7collada15animation_track15CApplicatorInfoENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::collada::animation_track::CApplicatorInfo*, glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo*, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0065e8f0  70 40 2d e9                                      push {r4, r5, r6, lr}
0065e8f4  14 00 90 e8                                      ldm r0, {r2, r4}
0065e8f8  ff 3f 0f e3                                      movw r3, #0xffff
0065e8fc  ff 3f 43 e3                                      movt r3, #0x3fff
0065e900  04 40 62 e0                                      rsb r4, r2, r4
0065e904  44 41 a0 e1                                      asr r4, r4, #2
0065e908  03 30 64 e0                                      rsb r3, r4, r3
0065e90c  01 00 53 e1                                      cmp r3, r1
0065e910  01 50 a0 e1                                      mov r5, r1
0065e914  08 00 00 3a                                      blo #0x65e93c
0065e918  05 00 54 e1                                      cmp r4, r5
0065e91c  04 00 84 20                                      addhs r0, r4, r4
0065e920  05 00 84 30                                      addlo r0, r4, r5
0065e924  07 01 70 e3                                      cmn r0, #0xc0000001
0065e928  01 00 00 8a                                      bhi #0x65e934
0065e92c  04 00 50 e1                                      cmp r0, r4
0065e930  00 00 00 2a                                      bhs #0x65e938
0065e934  03 01 e0 e3                                      mvn r0, #0xc0000000
0065e938  70 80 bd e8                                      pop {r4, r5, r6, pc}
0065e93c  08 00 9f e5                                      ldr r0, [pc, #8]
0065e940  00 00 8f e0                                      add r0, pc, r0
0065e944  3d a9 02 eb                                      bl #0x708e40
0065e948  f2 ff ff ea                                      b #0x65e918
; mapping-symbol data/literal pool
0065e94c  28 fb 25 00                                      .byte 0x28, 0xfb, 0x25, 0x00

; FUNCTION 0x0065ec84, declared_size=208, range_size=208, mode=arm
; class-group: std::vector<glitch::collada::animation_track::CApplicatorInfo*, glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch7collada15animation_track15CApplicatorInfoENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS4_jRKS4_
; demangled: std::vector<glitch::collada::animation_track::CApplicatorInfo*, glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo*, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::collada::animation_track::CApplicatorInfo**, unsigned int, glitch::collada::animation_track::CApplicatorInfo* const&)
; decoder-mode: arm
0065ec84  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0065ec88  00 60 52 e2                                      subs r6, r2, #0
0065ec8c  10 d0 4d e2                                      sub sp, sp, #0x10
0065ec90  00 50 a0 e1                                      mov r5, r0
0065ec94  01 70 a0 e1                                      mov r7, r1
0065ec98  03 40 a0 e1                                      mov r4, r3
0065ec9c  26 00 00 0a                                      beq #0x65ed3c
0065eca0  00 50 90 e9                                      ldmib r0, {ip, lr}
0065eca4  0e c0 6c e0                                      rsb ip, ip, lr
0065eca8  4c 01 56 e1                                      cmp r6, ip, asr #2
0065ecac  24 00 00 9a                                      bls #0x65ed44
0065ecb0  06 10 a0 e1                                      mov r1, r6
0065ecb4  0d ff ff eb                                      bl #0x65e8f0
0065ecb8  00 91 a0 e1                                      lsl sb, r0, #2
0065ecbc  00 10 a0 e3                                      mov r1, #0
0065ecc0  09 00 a0 e1                                      mov r0, sb
0065ecc4  27 c6 f2 eb                                      bl #0x310568
0065ecc8  00 10 95 e5                                      ldr r1, [r5]
0065eccc  00 80 a0 e1                                      mov r8, r0
0065ecd0  01 a0 57 e0                                      subs sl, r7, r1
0065ecd4  00 00 a0 01                                      moveq r0, r0
0065ecd8  02 00 00 0a                                      beq #0x65ece8
0065ecdc  0a 20 a0 e1                                      mov r2, sl
0065ece0  94 bc f2 eb                                      bl #0x30df38
0065ece4  0a 00 80 e0                                      add r0, r0, sl
0065ece8  06 20 a0 e1                                      mov r2, r6
0065ecec  00 30 a0 e3                                      mov r3, #0
0065ecf0  00 10 94 e5                                      ldr r1, [r4]
0065ecf4  01 20 52 e2                                      subs r2, r2, #1
0065ecf8  03 10 80 e7                                      str r1, [r0, r3]
0065ecfc  04 30 83 e2                                      add r3, r3, #4
0065ed00  fa ff ff 1a                                      bne #0x65ecf0
0065ed04  04 30 95 e5                                      ldr r3, [r5, #4]
0065ed08  06 01 80 e0                                      add r0, r0, r6, lsl #2
0065ed0c  07 40 53 e0                                      subs r4, r3, r7
0065ed10  00 60 a0 01                                      moveq r6, r0
0065ed14  03 00 00 0a                                      beq #0x65ed28
0065ed18  07 10 a0 e1                                      mov r1, r7
0065ed1c  04 20 a0 e1                                      mov r2, r4
0065ed20  84 bc f2 eb                                      bl #0x30df38
0065ed24  04 60 80 e0                                      add r6, r0, r4
0065ed28  00 00 95 e5                                      ldr r0, [r5]
0065ed2c  09 90 88 e0                                      add sb, r8, sb
0065ed30  c6 c5 f2 eb                                      bl #0x310450
0065ed34  40 02 85 e9                                      stmib r5, {r6, sb}
0065ed38  00 80 85 e5                                      str r8, [r5]
0065ed3c  10 d0 8d e2                                      add sp, sp, #0x10
0065ed40  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0065ed44  0c c0 8d e2                                      add ip, sp, #0xc
0065ed48  00 c0 8d e5                                      str ip, [sp]
0065ed4c  7d fe ff eb                                      bl #0x65e748
0065ed50  f9 ff ff ea                                      b #0x65ed3c

; FUNCTION 0x0065ed54, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::collada::animation_track::CApplicatorInfo*, glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch7collada15animation_track15CApplicatorInfoENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS4_
; demangled: std::vector<glitch::collada::animation_track::CApplicatorInfo*, glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo*, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::collada::animation_track::CApplicatorInfo* const&)
; decoder-mode: arm
0065ed54  30 00 2d e9                                      push {r4, r5}
0065ed58  04 40 90 e5                                      ldr r4, [r0, #4]
0065ed5c  00 50 90 e5                                      ldr r5, [r0]
0065ed60  02 30 a0 e1                                      mov r3, r2
0065ed64  04 20 65 e0                                      rsb r2, r5, r4
0065ed68  42 21 a0 e1                                      asr r2, r2, #2
0065ed6c  02 00 51 e1                                      cmp r1, r2
0065ed70  04 00 00 2a                                      bhs #0x65ed88
0065ed74  01 51 85 e0                                      add r5, r5, r1, lsl #2
0065ed78  04 00 55 e1                                      cmp r5, r4
0065ed7c  04 50 80 15                                      strne r5, [r0, #4]
0065ed80  30 00 bd e8                                      pop {r4, r5}
0065ed84  1e ff 2f e1                                      bx lr
0065ed88  01 20 62 e0                                      rsb r2, r2, r1
0065ed8c  04 10 a0 e1                                      mov r1, r4
0065ed90  30 00 bd e8                                      pop {r4, r5}
0065ed94  ba ff ff ea                                      b #0x65ec84

; FUNCTION 0x0065fda8, declared_size=168, range_size=168, mode=arm
; class-group: std::vector<glitch::collada::animation_track::CApplicatorInfo*, glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch7collada15animation_track15CApplicatorInfoENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE7reserveEj
; demangled: std::vector<glitch::collada::animation_track::CApplicatorInfo*, glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo*, (glitch::memory::E_MEMORY_HINT)0> >::reserve(unsigned int)
; decoder-mode: arm
0065fda8  70 40 2d e9                                      push {r4, r5, r6, lr}
0065fdac  00 40 a0 e1                                      mov r4, r0
0065fdb0  00 20 90 e5                                      ldr r2, [r0]
0065fdb4  08 00 90 e5                                      ldr r0, [r0, #8]
0065fdb8  08 d0 4d e2                                      sub sp, sp, #8
0065fdbc  04 10 8d e5                                      str r1, [sp, #4]
0065fdc0  00 00 62 e0                                      rsb r0, r2, r0
0065fdc4  40 01 51 e1                                      cmp r1, r0, asr #2
0065fdc8  12 00 00 9a                                      bls #0x65fe18
0065fdcc  07 01 71 e3                                      cmn r1, #0xc0000001
0065fdd0  12 00 00 8a                                      bhi #0x65fe20
0065fdd4  04 30 94 e5                                      ldr r3, [r4, #4]
0065fdd8  00 00 52 e3                                      cmp r2, #0
0065fddc  03 50 62 e0                                      rsb r5, r2, r3
0065fde0  45 51 a0 e1                                      asr r5, r5, #2
0065fde4  12 00 00 0a                                      beq #0x65fe34
0065fde8  04 00 a0 e1                                      mov r0, r4
0065fdec  04 10 8d e2                                      add r1, sp, #4
0065fdf0  dd ff ff eb                                      bl #0x65fd6c
0065fdf4  00 60 a0 e1                                      mov r6, r0
0065fdf8  00 00 94 e5                                      ldr r0, [r4]
0065fdfc  93 c1 f2 eb                                      bl #0x310450
0065fe00  04 30 9d e5                                      ldr r3, [sp, #4]
0065fe04  05 51 86 e0                                      add r5, r6, r5, lsl #2
0065fe08  04 50 84 e5                                      str r5, [r4, #4]
0065fe0c  03 31 86 e0                                      add r3, r6, r3, lsl #2
0065fe10  08 30 84 e5                                      str r3, [r4, #8]
0065fe14  00 60 84 e5                                      str r6, [r4]
0065fe18  08 d0 8d e2                                      add sp, sp, #8
0065fe1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0065fe20  24 00 9f e5                                      ldr r0, [pc, #0x24]
0065fe24  00 00 8f e0                                      add r0, pc, r0
0065fe28  04 a4 02 eb                                      bl #0x708e40
0065fe2c  00 20 94 e5                                      ldr r2, [r4]
0065fe30  e7 ff ff ea                                      b #0x65fdd4
0065fe34  04 00 9d e5                                      ldr r0, [sp, #4]
0065fe38  02 10 a0 e1                                      mov r1, r2
0065fe3c  00 01 a0 e1                                      lsl r0, r0, #2
0065fe40  c8 c1 f2 eb                                      bl #0x310568
0065fe44  00 60 a0 e1                                      mov r6, r0
0065fe48  ec ff ff ea                                      b #0x65fe00
; mapping-symbol data/literal pool
0065fe4c  44 e6 25 00                                      .byte 0x44, 0xe6, 0x25, 0x00
