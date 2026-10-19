; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00646d70, declared_size=112, range_size=112, mode=arm
; class-group: std::vector<glitch::collada::CModularSkinnedMesh::SModule, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada19CModularSkinnedMesh7SModuleENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_SA_RKSt12__false_type
; demangled: std::vector<glitch::collada::CModularSkinnedMesh::SModule, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::collada::CModularSkinnedMesh::SModule*, glitch::collada::CModularSkinnedMesh::SModule*, std::__false_type const&)
; decoder-mode: arm
00646d70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00646d74  04 30 90 e5                                      ldr r3, [r0, #4]
00646d78  10 d0 4d e2                                      sub sp, sp, #0x10
00646d7c  01 50 a0 e1                                      mov r5, r1
00646d80  00 40 a0 e1                                      mov r4, r0
00646d84  03 10 a0 e1                                      mov r1, r3
00646d88  02 00 a0 e1                                      mov r0, r2
00646d8c  00 c0 a0 e3                                      mov ip, #0
00646d90  05 20 a0 e1                                      mov r2, r5
00646d94  0c 30 8d e2                                      add r3, sp, #0xc
00646d98  00 c0 8d e5                                      str ip, [sp]
00646d9c  d6 ff ff eb                                      bl #0x646cfc
00646da0  04 70 94 e5                                      ldr r7, [r4, #4]
00646da4  00 80 a0 e1                                      mov r8, r0
00646da8  00 00 57 e1                                      cmp r7, r0
00646dac  07 00 00 0a                                      beq #0x646dd0
00646db0  00 60 a0 e1                                      mov r6, r0
00646db4  04 00 96 e5                                      ldr r0, [r6, #4]
00646db8  08 60 86 e2                                      add r6, r6, #8
00646dbc  00 00 50 e3                                      cmp r0, #0
00646dc0  00 00 00 0a                                      beq #0x646dc8
00646dc4  ee 59 f3 eb                                      bl #0x31d584
00646dc8  06 00 57 e1                                      cmp r7, r6
00646dcc  f8 ff ff 1a                                      bne #0x646db4
00646dd0  04 80 84 e5                                      str r8, [r4, #4]
00646dd4  05 00 a0 e1                                      mov r0, r5
00646dd8  10 d0 8d e2                                      add sp, sp, #0x10
00646ddc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00646eb8, declared_size=464, range_size=464, mode=arm
; class-group: std::vector<glitch::collada::CModularSkinnedMesh::SModule, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada19CModularSkinnedMesh7SModuleENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type
; demangled: std::vector<glitch::collada::CModularSkinnedMesh::SModule, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::collada::CModularSkinnedMesh::SModule*, unsigned int, glitch::collada::CModularSkinnedMesh::SModule const&, std::__false_type const&)
; decoder-mode: arm
00646eb8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00646ebc  00 c0 90 e5                                      ldr ip, [r0]
00646ec0  03 40 a0 e1                                      mov r4, r3
00646ec4  20 d0 4d e2                                      sub sp, sp, #0x20
00646ec8  0c 00 53 e1                                      cmp r3, ip
00646ecc  01 50 a0 e1                                      mov r5, r1
00646ed0  04 30 90 35                                      ldrlo r3, [r0, #4]
00646ed4  13 00 00 3a                                      blo #0x646f28
00646ed8  04 30 90 e5                                      ldr r3, [r0, #4]
00646edc  03 00 54 e1                                      cmp r4, r3
00646ee0  10 00 00 2a                                      bhs #0x646f28
00646ee4  0a 00 94 e8                                      ldm r4, {r1, r3}
00646ee8  1c c0 8d e2                                      add ip, sp, #0x1c
00646eec  00 00 53 e3                                      cmp r3, #0
00646ef0  08 10 8d e5                                      str r1, [sp, #8]
00646ef4  0c 30 8d e5                                      str r3, [sp, #0xc]
00646ef8  04 10 93 15                                      ldrne r1, [r3, #4]
00646efc  01 10 81 12                                      addne r1, r1, #1
00646f00  04 10 83 15                                      strne r1, [r3, #4]
00646f04  05 10 a0 e1                                      mov r1, r5
00646f08  08 30 8d e2                                      add r3, sp, #8
00646f0c  00 c0 8d e5                                      str ip, [sp]
00646f10  e8 ff ff eb                                      bl #0x646eb8
00646f14  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00646f18  00 00 50 e3                                      cmp r0, #0
00646f1c  57 00 00 0a                                      beq #0x647080
00646f20  97 59 f3 eb                                      bl #0x31d584
00646f24  55 00 00 ea                                      b #0x647080
00646f28  03 c0 65 e0                                      rsb ip, r5, r3
00646f2c  cc c1 a0 e1                                      asr ip, ip, #3
00646f30  0c 00 52 e1                                      cmp r2, ip
00646f34  0c 80 a0 e1                                      mov r8, ip
00646f38  23 00 00 2a                                      bhs #0x646fcc
00646f3c  82 61 a0 e1                                      lsl r6, r2, #3
00646f40  03 10 66 e0                                      rsb r1, r6, r3
00646f44  c6 e1 a0 e1                                      asr lr, r6, #3
00646f48  00 00 5e e3                                      cmp lr, #0
00646f4c  03 20 a0 d1                                      movle r2, r3
00646f50  0e 00 00 da                                      ble #0x646f90
00646f54  00 70 a0 e3                                      mov r7, #0
00646f58  01 20 a0 e1                                      mov r2, r1
00646f5c  07 80 b2 e7                                      ldr r8, [r2, r7]!
00646f60  03 c0 a0 e1                                      mov ip, r3
00646f64  07 80 ac e7                                      str r8, [ip, r7]!
00646f68  04 20 92 e5                                      ldr r2, [r2, #4]
00646f6c  08 70 87 e2                                      add r7, r7, #8
00646f70  00 00 52 e3                                      cmp r2, #0
00646f74  04 20 8c e5                                      str r2, [ip, #4]
00646f78  04 c0 92 15                                      ldrne ip, [r2, #4]
00646f7c  01 c0 8c 12                                      addne ip, ip, #1
00646f80  04 c0 82 15                                      strne ip, [r2, #4]
00646f84  01 e0 5e e2                                      subs lr, lr, #1
00646f88  f2 ff ff 1a                                      bne #0x646f58
00646f8c  04 20 90 e5                                      ldr r2, [r0, #4]
00646f90  06 20 82 e0                                      add r2, r2, r6
00646f94  04 20 80 e5                                      str r2, [r0, #4]
00646f98  00 70 a0 e3                                      mov r7, #0
00646f9c  03 20 a0 e1                                      mov r2, r3
00646fa0  05 00 a0 e1                                      mov r0, r5
00646fa4  18 30 8d e2                                      add r3, sp, #0x18
00646fa8  00 70 8d e5                                      str r7, [sp]
00646fac  8b ff ff eb                                      bl #0x646de0
00646fb0  05 00 a0 e1                                      mov r0, r5
00646fb4  06 10 85 e0                                      add r1, r5, r6
00646fb8  04 20 a0 e1                                      mov r2, r4
00646fbc  14 30 8d e2                                      add r3, sp, #0x14
00646fc0  00 70 8d e5                                      str r7, [sp]
00646fc4  a2 ff ff eb                                      bl #0x646e54
00646fc8  2c 00 00 ea                                      b #0x647080
00646fcc  02 20 6c e0                                      rsb r2, ip, r2
00646fd0  52 70 bc e7                                      sbfx r7, r2, #0, #0x1d
00646fd4  00 00 57 e3                                      cmp r7, #0
00646fd8  82 21 83 e0                                      add r2, r3, r2, lsl #3
00646fdc  0c 00 00 da                                      ble #0x647014
00646fe0  00 60 a0 e3                                      mov r6, #0
00646fe4  00 10 94 e5                                      ldr r1, [r4]
00646fe8  03 e0 a0 e1                                      mov lr, r3
00646fec  06 10 ae e7                                      str r1, [lr, r6]!
00646ff0  04 10 94 e5                                      ldr r1, [r4, #4]
00646ff4  08 60 86 e2                                      add r6, r6, #8
00646ff8  00 00 51 e3                                      cmp r1, #0
00646ffc  04 10 8e e5                                      str r1, [lr, #4]
00647000  04 e0 91 15                                      ldrne lr, [r1, #4]
00647004  01 e0 8e 12                                      addne lr, lr, #1
00647008  04 e0 81 15                                      strne lr, [r1, #4]
0064700c  01 70 57 e2                                      subs r7, r7, #1
00647010  f3 ff ff 1a                                      bne #0x646fe4
00647014  00 00 5c e3                                      cmp ip, #0
00647018  04 20 80 e5                                      str r2, [r0, #4]
0064701c  0e 00 00 da                                      ble #0x64705c
00647020  00 70 a0 e3                                      mov r7, #0
00647024  05 10 a0 e1                                      mov r1, r5
00647028  07 60 b1 e7                                      ldr r6, [r1, r7]!
0064702c  02 e0 a0 e1                                      mov lr, r2
00647030  07 60 ae e7                                      str r6, [lr, r7]!
00647034  04 10 91 e5                                      ldr r1, [r1, #4]
00647038  08 70 87 e2                                      add r7, r7, #8
0064703c  00 00 51 e3                                      cmp r1, #0
00647040  04 10 8e e5                                      str r1, [lr, #4]
00647044  04 e0 91 15                                      ldrne lr, [r1, #4]
00647048  01 e0 8e 12                                      addne lr, lr, #1
0064704c  04 e0 81 15                                      strne lr, [r1, #4]
00647050  01 c0 5c e2                                      subs ip, ip, #1
00647054  f2 ff ff 1a                                      bne #0x647024
00647058  04 20 90 e5                                      ldr r2, [r0, #4]
0064705c  88 21 82 e0                                      add r2, r2, r8, lsl #3
00647060  04 20 80 e5                                      str r2, [r0, #4]
00647064  03 10 a0 e1                                      mov r1, r3
00647068  00 c0 a0 e3                                      mov ip, #0
0064706c  05 00 a0 e1                                      mov r0, r5
00647070  04 20 a0 e1                                      mov r2, r4
00647074  10 30 8d e2                                      add r3, sp, #0x10
00647078  00 c0 8d e5                                      str ip, [sp]
0064707c  74 ff ff eb                                      bl #0x646e54
00647080  20 d0 8d e2                                      add sp, sp, #0x20
00647084  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006471a0, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::collada::CModularSkinnedMesh::SModule, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada19CModularSkinnedMesh7SModuleENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::collada::CModularSkinnedMesh::SModule, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
006471a0  70 40 2d e9                                      push {r4, r5, r6, lr}
006471a4  14 00 90 e8                                      ldm r0, {r2, r4}
006471a8  ff 3f 0f e3                                      movw r3, #0xffff
006471ac  ff 3f 41 e3                                      movt r3, #0x1fff
006471b0  04 40 62 e0                                      rsb r4, r2, r4
006471b4  c4 41 a0 e1                                      asr r4, r4, #3
006471b8  03 30 64 e0                                      rsb r3, r4, r3
006471bc  01 00 53 e1                                      cmp r3, r1
006471c0  01 50 a0 e1                                      mov r5, r1
006471c4  08 00 00 3a                                      blo #0x6471ec
006471c8  05 00 54 e1                                      cmp r4, r5
006471cc  04 00 84 20                                      addhs r0, r4, r4
006471d0  05 00 84 30                                      addlo r0, r4, r5
006471d4  1e 02 70 e3                                      cmn r0, #0xe0000001
006471d8  01 00 00 8a                                      bhi #0x6471e4
006471dc  04 00 50 e1                                      cmp r0, r4
006471e0  00 00 00 2a                                      bhs #0x6471e8
006471e4  0e 02 e0 e3                                      mvn r0, #0xe0000000
006471e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
006471ec  08 00 9f e5                                      ldr r0, [pc, #8]
006471f0  00 00 8f e0                                      add r0, pc, r0
006471f4  11 07 03 eb                                      bl #0x708e40
006471f8  f2 ff ff ea                                      b #0x6471c8
; mapping-symbol data/literal pool
006471fc  78 72 27 00                                      .byte 0x78, 0x72, 0x27, 0x00

; FUNCTION 0x00647200, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::collada::CModularSkinnedMesh::SModule, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada19CModularSkinnedMesh7SModuleENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE19_M_clear_after_moveEv
; demangled: std::vector<glitch::collada::CModularSkinnedMesh::SModule, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule, (glitch::memory::E_MEMORY_HINT)0> >::_M_clear_after_move()
; decoder-mode: arm
00647200  70 40 2d e9                                      push {r4, r5, r6, lr}
00647204  00 60 a0 e1                                      mov r6, r0
00647208  00 50 96 e5                                      ldr r5, [r6]
0064720c  04 00 90 e5                                      ldr r0, [r0, #4]
00647210  05 00 50 e1                                      cmp r0, r5
00647214  08 00 00 0a                                      beq #0x64723c
00647218  00 40 a0 e1                                      mov r4, r0
0064721c  04 00 14 e5                                      ldr r0, [r4, #-4]
00647220  08 40 44 e2                                      sub r4, r4, #8
00647224  00 00 50 e3                                      cmp r0, #0
00647228  00 00 00 0a                                      beq #0x647230
0064722c  d4 58 f3 eb                                      bl #0x31d584
00647230  04 00 55 e1                                      cmp r5, r4
00647234  f8 ff ff 1a                                      bne #0x64721c
00647238  00 00 96 e5                                      ldr r0, [r6]
0064723c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00647240  82 24 f3 ea                                      b #0x310450

; FUNCTION 0x00647244, declared_size=76, range_size=76, mode=arm
; class-group: std::vector<glitch::collada::CModularSkinnedMesh::SModule, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada19CModularSkinnedMesh7SModuleENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::collada::CModularSkinnedMesh::SModule, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00647244  70 40 2d e9                                      push {r4, r5, r6, lr}
00647248  04 40 90 e5                                      ldr r4, [r0, #4]
0064724c  00 50 90 e5                                      ldr r5, [r0]
00647250  00 60 a0 e1                                      mov r6, r0
00647254  05 00 54 e1                                      cmp r4, r5
00647258  06 00 00 0a                                      beq #0x647278
0064725c  04 00 14 e5                                      ldr r0, [r4, #-4]
00647260  08 40 44 e2                                      sub r4, r4, #8
00647264  00 00 50 e3                                      cmp r0, #0
00647268  00 00 00 0a                                      beq #0x647270
0064726c  c4 58 f3 eb                                      bl #0x31d584
00647270  04 00 55 e1                                      cmp r5, r4
00647274  f8 ff ff 1a                                      bne #0x64725c
00647278  00 00 96 e5                                      ldr r0, [r6]
0064727c  00 00 50 e3                                      cmp r0, #0
00647280  00 00 00 0a                                      beq #0x647288
00647284  71 24 f3 eb                                      bl #0x310450
00647288  06 00 a0 e1                                      mov r0, r6
0064728c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00647590, declared_size=404, range_size=404, mode=arm
; class-group: std::vector<glitch::collada::CModularSkinnedMesh::SModule, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada19CModularSkinnedMesh7SModuleENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS3_jRKS3_
; demangled: std::vector<glitch::collada::CModularSkinnedMesh::SModule, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::collada::CModularSkinnedMesh::SModule*, unsigned int, glitch::collada::CModularSkinnedMesh::SModule const&)
; decoder-mode: arm
00647590  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00647594  00 70 52 e2                                      subs r7, r2, #0
00647598  10 d0 4d e2                                      sub sp, sp, #0x10
0064759c  00 60 a0 e1                                      mov r6, r0
006475a0  01 50 a0 e1                                      mov r5, r1
006475a4  03 40 a0 e1                                      mov r4, r3
006475a8  4d 00 00 0a                                      beq #0x6476e4
006475ac  00 50 90 e9                                      ldmib r0, {ip, lr}
006475b0  0e c0 6c e0                                      rsb ip, ip, lr
006475b4  cc 01 57 e1                                      cmp r7, ip, asr #3
006475b8  4b 00 00 9a                                      bls #0x6476ec
006475bc  07 10 a0 e1                                      mov r1, r7
006475c0  f6 fe ff eb                                      bl #0x6471a0
006475c4  80 81 a0 e1                                      lsl r8, r0, #3
006475c8  08 00 a0 e1                                      mov r0, r8
006475cc  00 10 a0 e3                                      mov r1, #0
006475d0  e4 23 f3 eb                                      bl #0x310568
006475d4  00 e0 96 e5                                      ldr lr, [r6]
006475d8  00 a0 a0 e1                                      mov sl, r0
006475dc  05 90 6e e0                                      rsb sb, lr, r5
006475e0  c9 91 a0 e1                                      asr sb, sb, #3
006475e4  00 00 59 e3                                      cmp sb, #0
006475e8  00 90 a0 d1                                      movle sb, r0
006475ec  0f 00 00 da                                      ble #0x647630
006475f0  09 10 a0 e1                                      mov r1, sb
006475f4  00 00 a0 e3                                      mov r0, #0
006475f8  0e 30 a0 e1                                      mov r3, lr
006475fc  00 c0 b3 e7                                      ldr ip, [r3, r0]!
00647600  0a 20 a0 e1                                      mov r2, sl
00647604  00 c0 a2 e7                                      str ip, [r2, r0]!
00647608  04 30 93 e5                                      ldr r3, [r3, #4]
0064760c  08 00 80 e2                                      add r0, r0, #8
00647610  00 00 53 e3                                      cmp r3, #0
00647614  04 30 82 e5                                      str r3, [r2, #4]
00647618  04 20 93 15                                      ldrne r2, [r3, #4]
0064761c  01 20 82 12                                      addne r2, r2, #1
00647620  04 20 83 15                                      strne r2, [r3, #4]
00647624  01 10 51 e2                                      subs r1, r1, #1
00647628  f2 ff ff 1a                                      bne #0x6475f8
0064762c  89 91 8a e0                                      add sb, sl, sb, lsl #3
00647630  01 00 57 e3                                      cmp r7, #1
00647634  30 00 00 0a                                      beq #0x6476fc
00647638  57 10 bc e7                                      sbfx r1, r7, #0, #0x1d
0064763c  00 00 51 e3                                      cmp r1, #0
00647640  87 71 89 e0                                      add r7, sb, r7, lsl #3
00647644  0c 00 00 da                                      ble #0x64767c
00647648  00 00 a0 e3                                      mov r0, #0
0064764c  00 30 94 e5                                      ldr r3, [r4]
00647650  09 20 a0 e1                                      mov r2, sb
00647654  00 30 a2 e7                                      str r3, [r2, r0]!
00647658  04 30 94 e5                                      ldr r3, [r4, #4]
0064765c  08 00 80 e2                                      add r0, r0, #8
00647660  00 00 53 e3                                      cmp r3, #0
00647664  04 30 82 e5                                      str r3, [r2, #4]
00647668  04 20 93 15                                      ldrne r2, [r3, #4]
0064766c  01 20 82 12                                      addne r2, r2, #1
00647670  04 20 83 15                                      strne r2, [r3, #4]
00647674  01 10 51 e2                                      subs r1, r1, #1
00647678  f3 ff ff 1a                                      bne #0x64764c
0064767c  04 e0 96 e5                                      ldr lr, [r6, #4]
00647680  0e e0 65 e0                                      rsb lr, r5, lr
00647684  ce e1 a0 e1                                      asr lr, lr, #3
00647688  00 00 5e e3                                      cmp lr, #0
0064768c  0f 00 00 da                                      ble #0x6476d0
00647690  0e 10 a0 e1                                      mov r1, lr
00647694  00 00 a0 e3                                      mov r0, #0
00647698  05 30 a0 e1                                      mov r3, r5
0064769c  00 c0 b3 e7                                      ldr ip, [r3, r0]!
006476a0  07 20 a0 e1                                      mov r2, r7
006476a4  00 c0 a2 e7                                      str ip, [r2, r0]!
006476a8  04 30 93 e5                                      ldr r3, [r3, #4]
006476ac  08 00 80 e2                                      add r0, r0, #8
006476b0  00 00 53 e3                                      cmp r3, #0
006476b4  04 30 82 e5                                      str r3, [r2, #4]
006476b8  04 20 93 15                                      ldrne r2, [r3, #4]
006476bc  01 20 82 12                                      addne r2, r2, #1
006476c0  04 20 83 15                                      strne r2, [r3, #4]
006476c4  01 10 51 e2                                      subs r1, r1, #1
006476c8  f2 ff ff 1a                                      bne #0x647698
006476cc  8e 71 87 e0                                      add r7, r7, lr, lsl #3
006476d0  06 00 a0 e1                                      mov r0, r6
006476d4  08 80 8a e0                                      add r8, sl, r8
006476d8  c8 fe ff eb                                      bl #0x647200
006476dc  80 01 86 e9                                      stmib r6, {r7, r8}
006476e0  00 a0 86 e5                                      str sl, [r6]
006476e4  10 d0 8d e2                                      add sp, sp, #0x10
006476e8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006476ec  0c c0 8d e2                                      add ip, sp, #0xc
006476f0  00 c0 8d e5                                      str ip, [sp]
006476f4  ef fd ff eb                                      bl #0x646eb8
006476f8  f9 ff ff ea                                      b #0x6476e4
006476fc  00 30 94 e5                                      ldr r3, [r4]
00647700  08 70 89 e2                                      add r7, sb, #8
00647704  00 30 89 e5                                      str r3, [sb]
00647708  04 30 94 e5                                      ldr r3, [r4, #4]
0064770c  00 00 53 e3                                      cmp r3, #0
00647710  04 30 89 e5                                      str r3, [sb, #4]
00647714  04 20 93 15                                      ldrne r2, [r3, #4]
00647718  01 20 82 12                                      addne r2, r2, #1
0064771c  04 20 83 15                                      strne r2, [r3, #4]
00647720  d5 ff ff ea                                      b #0x64767c

; FUNCTION 0x00647724, declared_size=80, range_size=80, mode=arm
; class-group: std::vector<glitch::collada::CModularSkinnedMesh::SModule, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada19CModularSkinnedMesh7SModuleENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS3_
; demangled: std::vector<glitch::collada::CModularSkinnedMesh::SModule, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::collada::CModularSkinnedMesh::SModule const&)
; decoder-mode: arm
00647724  10 40 2d e9                                      push {r4, lr}
00647728  10 10 90 e8                                      ldm r0, {r4, ip}
0064772c  02 30 a0 e1                                      mov r3, r2
00647730  08 d0 4d e2                                      sub sp, sp, #8
00647734  0c 20 64 e0                                      rsb r2, r4, ip
00647738  c2 21 a0 e1                                      asr r2, r2, #3
0064773c  02 00 51 e1                                      cmp r1, r2
00647740  07 00 00 2a                                      bhs #0x647764
00647744  81 11 84 e0                                      add r1, r4, r1, lsl #3
00647748  0c 00 51 e1                                      cmp r1, ip
0064774c  02 00 00 0a                                      beq #0x64775c
00647750  0c 20 a0 e1                                      mov r2, ip
00647754  04 30 8d e2                                      add r3, sp, #4
00647758  84 fd ff eb                                      bl #0x646d70
0064775c  08 d0 8d e2                                      add sp, sp, #8
00647760  10 80 bd e8                                      pop {r4, pc}
00647764  01 20 62 e0                                      rsb r2, r2, r1
00647768  0c 10 a0 e1                                      mov r1, ip
0064776c  87 ff ff eb                                      bl #0x647590
00647770  f9 ff ff ea                                      b #0x64775c
