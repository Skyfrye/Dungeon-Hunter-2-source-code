; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0063a0ec, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::collada::particle_system::CForceSceneNode*, glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch7collada15particle_system15CForceSceneNodeENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::collada::particle_system::CForceSceneNode*, glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode*, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0063a0ec  70 40 2d e9                                      push {r4, r5, r6, lr}
0063a0f0  14 00 90 e8                                      ldm r0, {r2, r4}
0063a0f4  ff 3f 0f e3                                      movw r3, #0xffff
0063a0f8  ff 3f 43 e3                                      movt r3, #0x3fff
0063a0fc  04 40 62 e0                                      rsb r4, r2, r4
0063a100  44 41 a0 e1                                      asr r4, r4, #2
0063a104  03 30 64 e0                                      rsb r3, r4, r3
0063a108  01 00 53 e1                                      cmp r3, r1
0063a10c  01 50 a0 e1                                      mov r5, r1
0063a110  08 00 00 3a                                      blo #0x63a138
0063a114  05 00 54 e1                                      cmp r4, r5
0063a118  04 00 84 20                                      addhs r0, r4, r4
0063a11c  05 00 84 30                                      addlo r0, r4, r5
0063a120  07 01 70 e3                                      cmn r0, #0xc0000001
0063a124  01 00 00 8a                                      bhi #0x63a130
0063a128  04 00 50 e1                                      cmp r0, r4
0063a12c  00 00 00 2a                                      bhs #0x63a134
0063a130  03 01 e0 e3                                      mvn r0, #0xc0000000
0063a134  70 80 bd e8                                      pop {r4, r5, r6, pc}
0063a138  08 00 9f e5                                      ldr r0, [pc, #8]
0063a13c  00 00 8f e0                                      add r0, pc, r0
0063a140  3e 3b 03 eb                                      bl #0x708e40
0063a144  f2 ff ff ea                                      b #0x63a114
; mapping-symbol data/literal pool
0063a148  2c 43 28 00                                      .byte 0x2c, 0x43, 0x28, 0x00

; FUNCTION 0x0063a714, declared_size=168, range_size=168, mode=arm
; class-group: std::vector<glitch::collada::particle_system::CForceSceneNode*, glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch7collada15particle_system15CForceSceneNodeENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE7reserveEj
; demangled: std::vector<glitch::collada::particle_system::CForceSceneNode*, glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode*, (glitch::memory::E_MEMORY_HINT)0> >::reserve(unsigned int)
; decoder-mode: arm
0063a714  70 40 2d e9                                      push {r4, r5, r6, lr}
0063a718  00 40 a0 e1                                      mov r4, r0
0063a71c  00 20 90 e5                                      ldr r2, [r0]
0063a720  08 00 90 e5                                      ldr r0, [r0, #8]
0063a724  08 d0 4d e2                                      sub sp, sp, #8
0063a728  04 10 8d e5                                      str r1, [sp, #4]
0063a72c  00 00 62 e0                                      rsb r0, r2, r0
0063a730  40 01 51 e1                                      cmp r1, r0, asr #2
0063a734  12 00 00 9a                                      bls #0x63a784
0063a738  07 01 71 e3                                      cmn r1, #0xc0000001
0063a73c  12 00 00 8a                                      bhi #0x63a78c
0063a740  04 30 94 e5                                      ldr r3, [r4, #4]
0063a744  00 00 52 e3                                      cmp r2, #0
0063a748  03 50 62 e0                                      rsb r5, r2, r3
0063a74c  45 51 a0 e1                                      asr r5, r5, #2
0063a750  12 00 00 0a                                      beq #0x63a7a0
0063a754  04 00 a0 e1                                      mov r0, r4
0063a758  04 10 8d e2                                      add r1, sp, #4
0063a75c  dd ff ff eb                                      bl #0x63a6d8
0063a760  00 60 a0 e1                                      mov r6, r0
0063a764  00 00 94 e5                                      ldr r0, [r4]
0063a768  38 57 f3 eb                                      bl #0x310450
0063a76c  04 30 9d e5                                      ldr r3, [sp, #4]
0063a770  05 51 86 e0                                      add r5, r6, r5, lsl #2
0063a774  04 50 84 e5                                      str r5, [r4, #4]
0063a778  03 31 86 e0                                      add r3, r6, r3, lsl #2
0063a77c  08 30 84 e5                                      str r3, [r4, #8]
0063a780  00 60 84 e5                                      str r6, [r4]
0063a784  08 d0 8d e2                                      add sp, sp, #8
0063a788  70 80 bd e8                                      pop {r4, r5, r6, pc}
0063a78c  24 00 9f e5                                      ldr r0, [pc, #0x24]
0063a790  00 00 8f e0                                      add r0, pc, r0
0063a794  a9 39 03 eb                                      bl #0x708e40
0063a798  00 20 94 e5                                      ldr r2, [r4]
0063a79c  e7 ff ff ea                                      b #0x63a740
0063a7a0  04 00 9d e5                                      ldr r0, [sp, #4]
0063a7a4  02 10 a0 e1                                      mov r1, r2
0063a7a8  00 01 a0 e1                                      lsl r0, r0, #2
0063a7ac  6d 57 f3 eb                                      bl #0x310568
0063a7b0  00 60 a0 e1                                      mov r6, r0
0063a7b4  ec ff ff ea                                      b #0x63a76c
; mapping-symbol data/literal pool
0063a7b8  d8 3c 28 00                                      .byte 0xd8, 0x3c, 0x28, 0x00

; FUNCTION 0x0063ade8, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<glitch::collada::particle_system::CForceSceneNode*, glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch7collada15particle_system15CForceSceneNodeENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS4_jRKS4_RKSt12__false_type
; demangled: std::vector<glitch::collada::particle_system::CForceSceneNode*, glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode*, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::collada::particle_system::CForceSceneNode**, unsigned int, glitch::collada::particle_system::CForceSceneNode* const&, std::__false_type const&)
; decoder-mode: arm
0063ade8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0063adec  00 c0 90 e5                                      ldr ip, [r0]
0063adf0  03 50 a0 e1                                      mov r5, r3
0063adf4  14 d0 4d e2                                      sub sp, sp, #0x14
0063adf8  0c 00 53 e1                                      cmp r3, ip
0063adfc  00 40 a0 e1                                      mov r4, r0
0063ae00  01 60 a0 e1                                      mov r6, r1
0063ae04  02 30 a0 e1                                      mov r3, r2
0063ae08  04 70 90 35                                      ldrlo r7, [r0, #4]
0063ae0c  0a 00 00 3a                                      blo #0x63ae3c
0063ae10  04 70 90 e5                                      ldr r7, [r0, #4]
0063ae14  07 00 55 e1                                      cmp r5, r7
0063ae18  07 00 00 2a                                      bhs #0x63ae3c
0063ae1c  00 c0 95 e5                                      ldr ip, [r5]
0063ae20  10 30 8d e2                                      add r3, sp, #0x10
0063ae24  08 c0 23 e5                                      str ip, [r3, #-8]!
0063ae28  0c c0 8d e2                                      add ip, sp, #0xc
0063ae2c  00 c0 8d e5                                      str ip, [sp]
0063ae30  ec ff ff eb                                      bl #0x63ade8
0063ae34  14 d0 8d e2                                      add sp, sp, #0x14
0063ae38  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0063ae3c  07 20 66 e0                                      rsb r2, r6, r7
0063ae40  42 81 a0 e1                                      asr r8, r2, #2
0063ae44  08 00 53 e1                                      cmp r3, r8
0063ae48  1c 00 00 2a                                      bhs #0x63aec0
0063ae4c  03 81 a0 e1                                      lsl r8, r3, #2
0063ae50  07 30 68 e0                                      rsb r3, r8, r7
0063ae54  07 00 53 e1                                      cmp r3, r7
0063ae58  07 a0 a0 01                                      moveq sl, r7
0063ae5c  05 00 00 0a                                      beq #0x63ae78
0063ae60  03 10 a0 e1                                      mov r1, r3
0063ae64  07 20 63 e0                                      rsb r2, r3, r7
0063ae68  07 00 a0 e1                                      mov r0, r7
0063ae6c  03 a0 a0 e1                                      mov sl, r3
0063ae70  7c 4e f3 eb                                      bl #0x30e868
0063ae74  04 30 94 e5                                      ldr r3, [r4, #4]
0063ae78  0a 20 66 e0                                      rsb r2, r6, sl
0063ae7c  08 30 83 e0                                      add r3, r3, r8
0063ae80  00 00 52 e3                                      cmp r2, #0
0063ae84  04 30 84 e5                                      str r3, [r4, #4]
0063ae88  02 00 00 da                                      ble #0x63ae98
0063ae8c  07 00 62 e0                                      rsb r0, r2, r7
0063ae90  06 10 a0 e1                                      mov r1, r6
0063ae94  27 4c f3 eb                                      bl #0x30df38
0063ae98  48 81 a0 e1                                      asr r8, r8, #2
0063ae9c  00 00 58 e3                                      cmp r8, #0
0063aea0  e3 ff ff da                                      ble #0x63ae34
0063aea4  00 20 a0 e3                                      mov r2, #0
0063aea8  00 10 95 e5                                      ldr r1, [r5]
0063aeac  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
0063aeb0  01 20 82 e2                                      add r2, r2, #1
0063aeb4  08 00 52 e1                                      cmp r2, r8
0063aeb8  fa ff ff 1a                                      bne #0x63aea8
0063aebc  dc ff ff ea                                      b #0x63ae34
0063aec0  03 30 68 e0                                      rsb r3, r8, r3
0063aec4  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
0063aec8  00 00 5a e3                                      cmp sl, #0
0063aecc  03 01 87 e0                                      add r0, r7, r3, lsl #2
0063aed0  05 00 00 da                                      ble #0x63aeec
0063aed4  00 10 a0 e3                                      mov r1, #0
0063aed8  00 c0 95 e5                                      ldr ip, [r5]
0063aedc  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
0063aee0  01 10 81 e2                                      add r1, r1, #1
0063aee4  0a 00 51 e1                                      cmp r1, sl
0063aee8  fa ff ff 1a                                      bne #0x63aed8
0063aeec  07 00 56 e1                                      cmp r6, r7
0063aef0  04 00 84 e5                                      str r0, [r4, #4]
0063aef4  02 00 00 0a                                      beq #0x63af04
0063aef8  06 10 a0 e1                                      mov r1, r6
0063aefc  59 4e f3 eb                                      bl #0x30e868
0063af00  04 00 94 e5                                      ldr r0, [r4, #4]
0063af04  08 01 80 e0                                      add r0, r0, r8, lsl #2
0063af08  00 00 58 e3                                      cmp r8, #0
0063af0c  04 00 84 e5                                      str r0, [r4, #4]
0063af10  c7 ff ff da                                      ble #0x63ae34
0063af14  00 30 a0 e3                                      mov r3, #0
0063af18  00 20 95 e5                                      ldr r2, [r5]
0063af1c  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
0063af20  01 30 83 e2                                      add r3, r3, #1
0063af24  03 00 58 e1                                      cmp r8, r3
0063af28  fa ff ff 1a                                      bne #0x63af18
0063af2c  c0 ff ff ea                                      b #0x63ae34

; FUNCTION 0x0063d998, declared_size=208, range_size=208, mode=arm
; class-group: std::vector<glitch::collada::particle_system::CForceSceneNode*, glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch7collada15particle_system15CForceSceneNodeENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS4_jRKS4_
; demangled: std::vector<glitch::collada::particle_system::CForceSceneNode*, glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode*, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::collada::particle_system::CForceSceneNode**, unsigned int, glitch::collada::particle_system::CForceSceneNode* const&)
; decoder-mode: arm
0063d998  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0063d99c  00 60 52 e2                                      subs r6, r2, #0
0063d9a0  10 d0 4d e2                                      sub sp, sp, #0x10
0063d9a4  00 50 a0 e1                                      mov r5, r0
0063d9a8  01 70 a0 e1                                      mov r7, r1
0063d9ac  03 40 a0 e1                                      mov r4, r3
0063d9b0  26 00 00 0a                                      beq #0x63da50
0063d9b4  00 50 90 e9                                      ldmib r0, {ip, lr}
0063d9b8  0e c0 6c e0                                      rsb ip, ip, lr
0063d9bc  4c 01 56 e1                                      cmp r6, ip, asr #2
0063d9c0  24 00 00 9a                                      bls #0x63da58
0063d9c4  06 10 a0 e1                                      mov r1, r6
0063d9c8  c7 f1 ff eb                                      bl #0x63a0ec
0063d9cc  00 91 a0 e1                                      lsl sb, r0, #2
0063d9d0  00 10 a0 e3                                      mov r1, #0
0063d9d4  09 00 a0 e1                                      mov r0, sb
0063d9d8  e2 4a f3 eb                                      bl #0x310568
0063d9dc  00 10 95 e5                                      ldr r1, [r5]
0063d9e0  00 80 a0 e1                                      mov r8, r0
0063d9e4  01 a0 57 e0                                      subs sl, r7, r1
0063d9e8  00 00 a0 01                                      moveq r0, r0
0063d9ec  02 00 00 0a                                      beq #0x63d9fc
0063d9f0  0a 20 a0 e1                                      mov r2, sl
0063d9f4  4f 41 f3 eb                                      bl #0x30df38
0063d9f8  0a 00 80 e0                                      add r0, r0, sl
0063d9fc  06 20 a0 e1                                      mov r2, r6
0063da00  00 30 a0 e3                                      mov r3, #0
0063da04  00 10 94 e5                                      ldr r1, [r4]
0063da08  01 20 52 e2                                      subs r2, r2, #1
0063da0c  03 10 80 e7                                      str r1, [r0, r3]
0063da10  04 30 83 e2                                      add r3, r3, #4
0063da14  fa ff ff 1a                                      bne #0x63da04
0063da18  04 30 95 e5                                      ldr r3, [r5, #4]
0063da1c  06 01 80 e0                                      add r0, r0, r6, lsl #2
0063da20  07 40 53 e0                                      subs r4, r3, r7
0063da24  00 60 a0 01                                      moveq r6, r0
0063da28  03 00 00 0a                                      beq #0x63da3c
0063da2c  07 10 a0 e1                                      mov r1, r7
0063da30  04 20 a0 e1                                      mov r2, r4
0063da34  3f 41 f3 eb                                      bl #0x30df38
0063da38  04 60 80 e0                                      add r6, r0, r4
0063da3c  00 00 95 e5                                      ldr r0, [r5]
0063da40  09 90 88 e0                                      add sb, r8, sb
0063da44  81 4a f3 eb                                      bl #0x310450
0063da48  40 02 85 e9                                      stmib r5, {r6, sb}
0063da4c  00 80 85 e5                                      str r8, [r5]
0063da50  10 d0 8d e2                                      add sp, sp, #0x10
0063da54  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0063da58  0c c0 8d e2                                      add ip, sp, #0xc
0063da5c  00 c0 8d e5                                      str ip, [sp]
0063da60  e0 f4 ff eb                                      bl #0x63ade8
0063da64  f9 ff ff ea                                      b #0x63da50

; FUNCTION 0x0063db08, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::collada::particle_system::CForceSceneNode*, glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch7collada15particle_system15CForceSceneNodeENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS4_
; demangled: std::vector<glitch::collada::particle_system::CForceSceneNode*, glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode*, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::collada::particle_system::CForceSceneNode* const&)
; decoder-mode: arm
0063db08  30 00 2d e9                                      push {r4, r5}
0063db0c  04 40 90 e5                                      ldr r4, [r0, #4]
0063db10  00 50 90 e5                                      ldr r5, [r0]
0063db14  02 30 a0 e1                                      mov r3, r2
0063db18  04 20 65 e0                                      rsb r2, r5, r4
0063db1c  42 21 a0 e1                                      asr r2, r2, #2
0063db20  02 00 51 e1                                      cmp r1, r2
0063db24  04 00 00 2a                                      bhs #0x63db3c
0063db28  01 51 85 e0                                      add r5, r5, r1, lsl #2
0063db2c  04 00 55 e1                                      cmp r5, r4
0063db30  04 50 80 15                                      strne r5, [r0, #4]
0063db34  30 00 bd e8                                      pop {r4, r5}
0063db38  1e ff 2f e1                                      bx lr
0063db3c  01 20 62 e0                                      rsb r2, r2, r1
0063db40  04 10 a0 e1                                      mov r1, r4
0063db44  30 00 bd e8                                      pop {r4, r5}
0063db48  92 ff ff ea                                      b #0x63d998
