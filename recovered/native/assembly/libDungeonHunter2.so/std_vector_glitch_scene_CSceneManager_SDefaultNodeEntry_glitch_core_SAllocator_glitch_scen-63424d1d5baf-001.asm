; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003518c0, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager17SDefaultNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
003518c0  70 40 2d e9                                      push {r4, r5, r6, lr}
003518c4  14 00 90 e8                                      ldm r0, {r2, r4}
003518c8  ff 3f 0f e3                                      movw r3, #0xffff
003518cc  ff 3f 40 e3                                      movt r3, #0xfff
003518d0  04 40 62 e0                                      rsb r4, r2, r4
003518d4  44 42 a0 e1                                      asr r4, r4, #4
003518d8  03 30 64 e0                                      rsb r3, r4, r3
003518dc  01 00 53 e1                                      cmp r3, r1
003518e0  01 50 a0 e1                                      mov r5, r1
003518e4  08 00 00 3a                                      blo #0x35190c
003518e8  05 00 54 e1                                      cmp r4, r5
003518ec  04 00 84 20                                      addhs r0, r4, r4
003518f0  05 00 84 30                                      addlo r0, r4, r5
003518f4  1f 02 70 e3                                      cmn r0, #0xf0000001
003518f8  01 00 00 8a                                      bhi #0x351904
003518fc  04 00 50 e1                                      cmp r0, r4
00351900  00 00 00 2a                                      bhs #0x351908
00351904  0f 02 e0 e3                                      mvn r0, #0xf0000000
00351908  70 80 bd e8                                      pop {r4, r5, r6, pc}
0035190c  08 00 9f e5                                      ldr r0, [pc, #8]
00351910  00 00 8f e0                                      add r0, pc, r0
00351914  49 dd 0e eb                                      bl #0x708e40
00351918  f2 ff ff ea                                      b #0x3518e8
; mapping-symbol data/literal pool
0035191c  58 cb 56 00                                      .byte 0x58, 0xcb, 0x56, 0x00

; FUNCTION 0x00351e84, declared_size=468, range_size=468, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager17SDefaultNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb
; demangled: std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::scene::CSceneManager::SDefaultNodeEntry*, glitch::scene::CSceneManager::SDefaultNodeEntry const&, std::__false_type const&, unsigned int, bool)
; decoder-mode: arm
00351e84  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00351e88  20 50 9d e5                                      ldr r5, [sp, #0x20]
00351e8c  01 40 a0 e1                                      mov r4, r1
00351e90  02 60 a0 e1                                      mov r6, r2
00351e94  05 10 a0 e1                                      mov r1, r5
00351e98  00 70 a0 e1                                      mov r7, r0
00351e9c  24 a0 dd e5                                      ldrb sl, [sp, #0x24]
00351ea0  86 fe ff eb                                      bl #0x3518c0
00351ea4  00 82 a0 e1                                      lsl r8, r0, #4
00351ea8  08 00 a0 e1                                      mov r0, r8
00351eac  00 10 a0 e3                                      mov r1, #0
00351eb0  ac f9 fe eb                                      bl #0x310568
00351eb4  00 30 97 e5                                      ldr r3, [r7]
00351eb8  00 90 a0 e1                                      mov sb, r0
00351ebc  04 c0 63 e0                                      rsb ip, r3, r4
00351ec0  4c c2 a0 e1                                      asr ip, ip, #4
00351ec4  00 00 5c e3                                      cmp ip, #0
00351ec8  00 30 a0 d1                                      movle r3, r0
00351ecc  12 00 00 da                                      ble #0x351f1c
00351ed0  0c 00 a0 e1                                      mov r0, ip
00351ed4  09 20 a0 e1                                      mov r2, sb
00351ed8  00 10 93 e5                                      ldr r1, [r3]
00351edc  00 10 82 e5                                      str r1, [r2]
00351ee0  04 10 93 e5                                      ldr r1, [r3, #4]
00351ee4  04 10 82 e5                                      str r1, [r2, #4]
00351ee8  08 10 93 e5                                      ldr r1, [r3, #8]
00351eec  00 00 51 e3                                      cmp r1, #0
00351ef0  08 10 82 e5                                      str r1, [r2, #8]
00351ef4  00 e0 91 15                                      ldrne lr, [r1]
00351ef8  01 e0 8e 12                                      addne lr, lr, #1
00351efc  00 e0 81 15                                      strne lr, [r1]
00351f00  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00351f04  01 00 50 e2                                      subs r0, r0, #1
00351f08  10 30 83 e2                                      add r3, r3, #0x10
00351f0c  0c 10 82 e5                                      str r1, [r2, #0xc]
00351f10  10 20 82 e2                                      add r2, r2, #0x10
00351f14  ef ff ff 1a                                      bne #0x351ed8
00351f18  0c 32 89 e0                                      add r3, sb, ip, lsl #4
00351f1c  01 00 55 e3                                      cmp r5, #1
00351f20  3e 00 00 0a                                      beq #0x352020
00351f24  55 10 bb e7                                      sbfx r1, r5, #0, #0x1c
00351f28  00 00 51 e3                                      cmp r1, #0
00351f2c  05 52 83 e0                                      add r5, r3, r5, lsl #4
00351f30  01 00 00 ca                                      bgt #0x351f3c
00351f34  0e 00 00 ea                                      b #0x351f74
00351f38  10 30 83 e2                                      add r3, r3, #0x10
00351f3c  00 20 96 e5                                      ldr r2, [r6]
00351f40  00 20 83 e5                                      str r2, [r3]
00351f44  04 20 96 e5                                      ldr r2, [r6, #4]
00351f48  04 20 83 e5                                      str r2, [r3, #4]
00351f4c  08 20 96 e5                                      ldr r2, [r6, #8]
00351f50  00 00 52 e3                                      cmp r2, #0
00351f54  08 20 83 e5                                      str r2, [r3, #8]
00351f58  00 00 92 15                                      ldrne r0, [r2]
00351f5c  01 00 80 12                                      addne r0, r0, #1
00351f60  00 00 82 15                                      strne r0, [r2]
00351f64  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00351f68  01 10 51 e2                                      subs r1, r1, #1
00351f6c  0c 20 83 e5                                      str r2, [r3, #0xc]
00351f70  f0 ff ff 1a                                      bne #0x351f38
00351f74  00 00 5a e3                                      cmp sl, #0
00351f78  04 60 97 15                                      ldrne r6, [r7, #4]
00351f7c  18 00 00 1a                                      bne #0x351fe4
00351f80  04 60 97 e5                                      ldr r6, [r7, #4]
00351f84  06 c0 64 e0                                      rsb ip, r4, r6
00351f88  4c c2 a0 e1                                      asr ip, ip, #4
00351f8c  00 00 5c e3                                      cmp ip, #0
00351f90  13 00 00 da                                      ble #0x351fe4
00351f94  0c 10 a0 e1                                      mov r1, ip
00351f98  05 30 a0 e1                                      mov r3, r5
00351f9c  00 20 94 e5                                      ldr r2, [r4]
00351fa0  00 20 83 e5                                      str r2, [r3]
00351fa4  04 20 94 e5                                      ldr r2, [r4, #4]
00351fa8  04 20 83 e5                                      str r2, [r3, #4]
00351fac  08 20 94 e5                                      ldr r2, [r4, #8]
00351fb0  00 00 52 e3                                      cmp r2, #0
00351fb4  08 20 83 e5                                      str r2, [r3, #8]
00351fb8  00 00 92 15                                      ldrne r0, [r2]
00351fbc  01 00 80 12                                      addne r0, r0, #1
00351fc0  00 00 82 15                                      strne r0, [r2]
00351fc4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00351fc8  01 10 51 e2                                      subs r1, r1, #1
00351fcc  10 40 84 e2                                      add r4, r4, #0x10
00351fd0  0c 20 83 e5                                      str r2, [r3, #0xc]
00351fd4  10 30 83 e2                                      add r3, r3, #0x10
00351fd8  ef ff ff 1a                                      bne #0x351f9c
00351fdc  04 60 97 e5                                      ldr r6, [r7, #4]
00351fe0  0c 52 85 e0                                      add r5, r5, ip, lsl #4
00351fe4  00 40 97 e5                                      ldr r4, [r7]
00351fe8  06 00 54 e1                                      cmp r4, r6
00351fec  06 00 a0 01                                      moveq r0, r6
00351ff0  05 00 00 0a                                      beq #0x35200c
00351ff4  10 60 46 e2                                      sub r6, r6, #0x10
00351ff8  08 00 86 e2                                      add r0, r6, #8
00351ffc  8e ff ff eb                                      bl #0x351e3c
00352000  06 00 54 e1                                      cmp r4, r6
00352004  fa ff ff 1a                                      bne #0x351ff4
00352008  00 00 97 e5                                      ldr r0, [r7]
0035200c  08 80 89 e0                                      add r8, sb, r8
00352010  0e f9 fe eb                                      bl #0x310450
00352014  20 01 87 e9                                      stmib r7, {r5, r8}
00352018  00 90 87 e5                                      str sb, [r7]
0035201c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00352020  00 20 96 e5                                      ldr r2, [r6]
00352024  10 50 83 e2                                      add r5, r3, #0x10
00352028  00 20 83 e5                                      str r2, [r3]
0035202c  04 20 96 e5                                      ldr r2, [r6, #4]
00352030  04 20 83 e5                                      str r2, [r3, #4]
00352034  08 20 96 e5                                      ldr r2, [r6, #8]
00352038  00 00 52 e3                                      cmp r2, #0
0035203c  08 20 83 e5                                      str r2, [r3, #8]
00352040  00 10 92 15                                      ldrne r1, [r2]
00352044  01 10 81 12                                      addne r1, r1, #1
00352048  00 10 82 15                                      strne r1, [r2]
0035204c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00352050  0c 20 83 e5                                      str r2, [r3, #0xc]
00352054  c6 ff ff ea                                      b #0x351f74

; FUNCTION 0x00352058, declared_size=124, range_size=124, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager17SDefaultNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::scene::CSceneManager::SDefaultNodeEntry const&)
; decoder-mode: arm
00352058  10 40 2d e9                                      push {r4, lr}
0035205c  18 00 90 e9                                      ldmib r0, {r3, r4}
00352060  10 d0 4d e2                                      sub sp, sp, #0x10
00352064  00 c0 a0 e1                                      mov ip, r0
00352068  04 00 53 e1                                      cmp r3, r4
0035206c  01 20 a0 e1                                      mov r2, r1
00352070  10 00 00 0a                                      beq #0x3520b8
00352074  00 10 91 e5                                      ldr r1, [r1]
00352078  00 10 83 e5                                      str r1, [r3]
0035207c  04 10 92 e5                                      ldr r1, [r2, #4]
00352080  04 10 83 e5                                      str r1, [r3, #4]
00352084  08 10 92 e5                                      ldr r1, [r2, #8]
00352088  08 10 83 e5                                      str r1, [r3, #8]
0035208c  00 00 51 e3                                      cmp r1, #0
00352090  00 00 91 15                                      ldrne r0, [r1]
00352094  01 00 80 12                                      addne r0, r0, #1
00352098  00 00 81 15                                      strne r0, [r1]
0035209c  0c 20 92 e5                                      ldr r2, [r2, #0xc]
003520a0  0c 20 83 e5                                      str r2, [r3, #0xc]
003520a4  04 30 9c e5                                      ldr r3, [ip, #4]
003520a8  10 30 83 e2                                      add r3, r3, #0x10
003520ac  04 30 8c e5                                      str r3, [ip, #4]
003520b0  10 d0 8d e2                                      add sp, sp, #0x10
003520b4  10 80 bd e8                                      pop {r4, pc}
003520b8  01 c0 a0 e3                                      mov ip, #1
003520bc  03 10 a0 e1                                      mov r1, r3
003520c0  0c 30 8d e2                                      add r3, sp, #0xc
003520c4  04 c0 8d e5                                      str ip, [sp, #4]
003520c8  00 c0 8d e5                                      str ip, [sp]
003520cc  6c ff ff eb                                      bl #0x351e84
003520d0  f6 ff ff ea                                      b #0x3520b0

; FUNCTION 0x003520d4, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager17SDefaultNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
003520d4  70 40 2d e9                                      push {r4, r5, r6, lr}
003520d8  04 40 90 e5                                      ldr r4, [r0, #4]
003520dc  00 50 90 e5                                      ldr r5, [r0]
003520e0  00 60 a0 e1                                      mov r6, r0
003520e4  05 00 54 e1                                      cmp r4, r5
003520e8  04 00 00 0a                                      beq #0x352100
003520ec  10 40 44 e2                                      sub r4, r4, #0x10
003520f0  08 00 84 e2                                      add r0, r4, #8
003520f4  50 ff ff eb                                      bl #0x351e3c
003520f8  04 00 55 e1                                      cmp r5, r4
003520fc  fa ff ff 1a                                      bne #0x3520ec
00352100  00 00 96 e5                                      ldr r0, [r6]
00352104  00 00 50 e3                                      cmp r0, #0
00352108  00 00 00 0a                                      beq #0x352110
0035210c  cf f8 fe eb                                      bl #0x310450
00352110  06 00 a0 e1                                      mov r0, r6
00352114  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00356cb8, declared_size=200, range_size=200, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager17SDefaultNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_SA_RKSt12__false_type
; demangled: std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::scene::CSceneManager::SDefaultNodeEntry*, glitch::scene::CSceneManager::SDefaultNodeEntry*, std::__false_type const&)
; decoder-mode: arm
00356cb8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00356cbc  04 40 90 e5                                      ldr r4, [r0, #4]
00356cc0  08 d0 4d e2                                      sub sp, sp, #8
00356cc4  00 50 a0 e1                                      mov r5, r0
00356cc8  04 90 62 e0                                      rsb sb, r2, r4
00356ccc  49 92 a0 e1                                      asr sb, sb, #4
00356cd0  00 00 59 e3                                      cmp sb, #0
00356cd4  02 60 a0 e1                                      mov r6, r2
00356cd8  01 a0 a0 e1                                      mov sl, r1
00356cdc  01 70 a0 d1                                      movle r7, r1
00356ce0  1a 00 00 da                                      ble #0x356d50
00356ce4  09 70 a0 e1                                      mov r7, sb
00356ce8  01 40 a0 e1                                      mov r4, r1
00356cec  04 80 8d e2                                      add r8, sp, #4
00356cf0  00 30 96 e5                                      ldr r3, [r6]
00356cf4  08 00 a0 e1                                      mov r0, r8
00356cf8  00 30 84 e5                                      str r3, [r4]
00356cfc  04 30 96 e5                                      ldr r3, [r6, #4]
00356d00  04 30 84 e5                                      str r3, [r4, #4]
00356d04  08 20 96 e5                                      ldr r2, [r6, #8]
00356d08  04 20 8d e5                                      str r2, [sp, #4]
00356d0c  00 00 52 e3                                      cmp r2, #0
00356d10  00 30 92 15                                      ldrne r3, [r2]
00356d14  01 30 83 12                                      addne r3, r3, #1
00356d18  00 30 82 15                                      strne r3, [r2]
00356d1c  04 20 9d 15                                      ldrne r2, [sp, #4]
00356d20  08 30 94 e5                                      ldr r3, [r4, #8]
00356d24  08 20 84 e5                                      str r2, [r4, #8]
00356d28  04 30 8d e5                                      str r3, [sp, #4]
00356d2c  42 ec ff eb                                      bl #0x351e3c
00356d30  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00356d34  01 70 57 e2                                      subs r7, r7, #1
00356d38  10 60 86 e2                                      add r6, r6, #0x10
00356d3c  0c 30 84 e5                                      str r3, [r4, #0xc]
00356d40  10 40 84 e2                                      add r4, r4, #0x10
00356d44  e9 ff ff 1a                                      bne #0x356cf0
00356d48  04 40 95 e5                                      ldr r4, [r5, #4]
00356d4c  09 72 8a e0                                      add r7, sl, sb, lsl #4
00356d50  04 00 57 e1                                      cmp r7, r4
00356d54  05 00 00 0a                                      beq #0x356d70
00356d58  07 60 a0 e1                                      mov r6, r7
00356d5c  08 00 86 e2                                      add r0, r6, #8
00356d60  10 60 86 e2                                      add r6, r6, #0x10
00356d64  34 ec ff eb                                      bl #0x351e3c
00356d68  04 00 56 e1                                      cmp r6, r4
00356d6c  fa ff ff 1a                                      bne #0x356d5c
00356d70  04 70 85 e5                                      str r7, [r5, #4]
00356d74  0a 00 a0 e1                                      mov r0, sl
00356d78  08 d0 8d e2                                      add sp, sp, #8
00356d7c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x003573e4, declared_size=764, range_size=764, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager17SDefaultNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type
; demangled: std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::scene::CSceneManager::SDefaultNodeEntry*, unsigned int, glitch::scene::CSceneManager::SDefaultNodeEntry const&, std::__false_type const&)
; decoder-mode: arm
003573e4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003573e8  00 c0 90 e5                                      ldr ip, [r0]
003573ec  28 d0 4d e2                                      sub sp, sp, #0x28
003573f0  03 40 a0 e1                                      mov r4, r3
003573f4  0c 00 53 e1                                      cmp r3, ip
003573f8  01 50 a0 e1                                      mov r5, r1
003573fc  04 60 90 35                                      ldrlo r6, [r0, #4]
00357400  18 00 00 3a                                      blo #0x357468
00357404  04 60 90 e5                                      ldr r6, [r0, #4]
00357408  06 00 53 e1                                      cmp r3, r6
0035740c  15 00 00 2a                                      bhs #0x357468
00357410  04 10 94 e5                                      ldr r1, [r4, #4]
00357414  08 30 93 e5                                      ldr r3, [r3, #8]
00357418  00 c0 94 e5                                      ldr ip, [r4]
0035741c  0c 10 8d e5                                      str r1, [sp, #0xc]
00357420  00 00 53 e3                                      cmp r3, #0
00357424  10 30 8d e5                                      str r3, [sp, #0x10]
00357428  08 c0 8d e5                                      str ip, [sp, #8]
0035742c  00 10 93 15                                      ldrne r1, [r3]
00357430  01 10 81 12                                      addne r1, r1, #1
00357434  00 10 83 15                                      strne r1, [r3]
00357438  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0035743c  08 40 8d e2                                      add r4, sp, #8
00357440  05 10 a0 e1                                      mov r1, r5
00357444  14 c0 8d e5                                      str ip, [sp, #0x14]
00357448  04 30 a0 e1                                      mov r3, r4
0035744c  24 c0 8d e2                                      add ip, sp, #0x24
00357450  00 c0 8d e5                                      str ip, [sp]
00357454  e2 ff ff eb                                      bl #0x3573e4
00357458  08 00 84 e2                                      add r0, r4, #8
0035745c  76 ea ff eb                                      bl #0x351e3c
00357460  28 d0 8d e2                                      add sp, sp, #0x28
00357464  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00357468  06 70 65 e0                                      rsb r7, r5, r6
0035746c  47 72 a0 e1                                      asr r7, r7, #4
00357470  07 00 52 e1                                      cmp r2, r7
00357474  51 00 00 2a                                      bhs #0x3575c0
00357478  02 92 a0 e1                                      lsl sb, r2, #4
0035747c  06 70 69 e0                                      rsb r7, sb, r6
00357480  49 c2 a0 e1                                      asr ip, sb, #4
00357484  00 00 5c e3                                      cmp ip, #0
00357488  06 30 a0 d1                                      movle r3, r6
0035748c  13 00 00 da                                      ble #0x3574e0
00357490  07 30 a0 e1                                      mov r3, r7
00357494  06 20 a0 e1                                      mov r2, r6
00357498  00 00 00 ea                                      b #0x3574a0
0035749c  10 20 82 e2                                      add r2, r2, #0x10
003574a0  00 10 93 e5                                      ldr r1, [r3]
003574a4  00 10 82 e5                                      str r1, [r2]
003574a8  04 10 93 e5                                      ldr r1, [r3, #4]
003574ac  04 10 82 e5                                      str r1, [r2, #4]
003574b0  08 10 93 e5                                      ldr r1, [r3, #8]
003574b4  00 00 51 e3                                      cmp r1, #0
003574b8  08 10 82 e5                                      str r1, [r2, #8]
003574bc  00 80 91 15                                      ldrne r8, [r1]
003574c0  01 80 88 12                                      addne r8, r8, #1
003574c4  00 80 81 15                                      strne r8, [r1]
003574c8  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003574cc  01 c0 5c e2                                      subs ip, ip, #1
003574d0  10 30 83 e2                                      add r3, r3, #0x10
003574d4  0c 10 82 e5                                      str r1, [r2, #0xc]
003574d8  ef ff ff 1a                                      bne #0x35749c
003574dc  04 30 90 e5                                      ldr r3, [r0, #4]
003574e0  07 80 65 e0                                      rsb r8, r5, r7
003574e4  48 82 a0 e1                                      asr r8, r8, #4
003574e8  09 30 83 e0                                      add r3, r3, sb
003574ec  00 00 58 e3                                      cmp r8, #0
003574f0  04 30 80 e5                                      str r3, [r0, #4]
003574f4  16 00 00 da                                      ble #0x357554
003574f8  20 a0 8d e2                                      add sl, sp, #0x20
003574fc  10 30 17 e5                                      ldr r3, [r7, #-0x10]
00357500  0a 00 a0 e1                                      mov r0, sl
00357504  10 30 06 e5                                      str r3, [r6, #-0x10]
00357508  0c 30 17 e5                                      ldr r3, [r7, #-0xc]
0035750c  0c 30 06 e5                                      str r3, [r6, #-0xc]
00357510  08 20 17 e5                                      ldr r2, [r7, #-8]
00357514  20 20 8d e5                                      str r2, [sp, #0x20]
00357518  00 00 52 e3                                      cmp r2, #0
0035751c  00 30 92 15                                      ldrne r3, [r2]
00357520  01 30 83 12                                      addne r3, r3, #1
00357524  00 30 82 15                                      strne r3, [r2]
00357528  08 30 16 e5                                      ldr r3, [r6, #-8]
0035752c  20 20 9d 15                                      ldrne r2, [sp, #0x20]
00357530  20 30 8d e5                                      str r3, [sp, #0x20]
00357534  08 20 06 e5                                      str r2, [r6, #-8]
00357538  3f ea ff eb                                      bl #0x351e3c
0035753c  04 30 17 e5                                      ldr r3, [r7, #-4]
00357540  01 80 58 e2                                      subs r8, r8, #1
00357544  10 70 47 e2                                      sub r7, r7, #0x10
00357548  04 30 06 e5                                      str r3, [r6, #-4]
0035754c  10 60 46 e2                                      sub r6, r6, #0x10
00357550  e9 ff ff 1a                                      bne #0x3574fc
00357554  49 62 a0 e1                                      asr r6, sb, #4
00357558  00 00 56 e3                                      cmp r6, #0
0035755c  bf ff ff da                                      ble #0x357460
00357560  1c 70 8d e2                                      add r7, sp, #0x1c
00357564  00 00 00 ea                                      b #0x35756c
00357568  10 50 85 e2                                      add r5, r5, #0x10
0035756c  00 30 94 e5                                      ldr r3, [r4]
00357570  07 00 a0 e1                                      mov r0, r7
00357574  00 30 85 e5                                      str r3, [r5]
00357578  04 30 94 e5                                      ldr r3, [r4, #4]
0035757c  04 30 85 e5                                      str r3, [r5, #4]
00357580  08 20 94 e5                                      ldr r2, [r4, #8]
00357584  1c 20 8d e5                                      str r2, [sp, #0x1c]
00357588  00 00 52 e3                                      cmp r2, #0
0035758c  00 30 92 15                                      ldrne r3, [r2]
00357590  01 30 83 12                                      addne r3, r3, #1
00357594  00 30 82 15                                      strne r3, [r2]
00357598  1c 20 9d 15                                      ldrne r2, [sp, #0x1c]
0035759c  08 30 95 e5                                      ldr r3, [r5, #8]
003575a0  08 20 85 e5                                      str r2, [r5, #8]
003575a4  1c 30 8d e5                                      str r3, [sp, #0x1c]
003575a8  23 ea ff eb                                      bl #0x351e3c
003575ac  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003575b0  01 60 56 e2                                      subs r6, r6, #1
003575b4  0c 30 85 e5                                      str r3, [r5, #0xc]
003575b8  ea ff ff 1a                                      bne #0x357568
003575bc  a7 ff ff ea                                      b #0x357460
003575c0  02 20 67 e0                                      rsb r2, r7, r2
003575c4  52 10 bb e7                                      sbfx r1, r2, #0, #0x1c
003575c8  00 00 51 e3                                      cmp r1, #0
003575cc  02 22 86 e0                                      add r2, r6, r2, lsl #4
003575d0  01 00 00 ca                                      bgt #0x3575dc
003575d4  0e 00 00 ea                                      b #0x357614
003575d8  10 60 86 e2                                      add r6, r6, #0x10
003575dc  00 30 94 e5                                      ldr r3, [r4]
003575e0  00 30 86 e5                                      str r3, [r6]
003575e4  04 30 94 e5                                      ldr r3, [r4, #4]
003575e8  04 30 86 e5                                      str r3, [r6, #4]
003575ec  08 30 94 e5                                      ldr r3, [r4, #8]
003575f0  00 00 53 e3                                      cmp r3, #0
003575f4  08 30 86 e5                                      str r3, [r6, #8]
003575f8  00 c0 93 15                                      ldrne ip, [r3]
003575fc  01 c0 8c 12                                      addne ip, ip, #1
00357600  00 c0 83 15                                      strne ip, [r3]
00357604  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00357608  01 10 51 e2                                      subs r1, r1, #1
0035760c  0c 30 86 e5                                      str r3, [r6, #0xc]
00357610  f0 ff ff 1a                                      bne #0x3575d8
00357614  00 00 57 e3                                      cmp r7, #0
00357618  04 20 80 e5                                      str r2, [r0, #4]
0035761c  07 22 82 d0                                      addle r2, r2, r7, lsl #4
00357620  04 20 80 d5                                      strle r2, [r0, #4]
00357624  8d ff ff da                                      ble #0x357460
00357628  07 c0 a0 e1                                      mov ip, r7
0035762c  05 30 a0 e1                                      mov r3, r5
00357630  00 00 00 ea                                      b #0x357638
00357634  10 20 82 e2                                      add r2, r2, #0x10
00357638  00 10 93 e5                                      ldr r1, [r3]
0035763c  00 10 82 e5                                      str r1, [r2]
00357640  04 10 93 e5                                      ldr r1, [r3, #4]
00357644  04 10 82 e5                                      str r1, [r2, #4]
00357648  08 10 93 e5                                      ldr r1, [r3, #8]
0035764c  00 00 51 e3                                      cmp r1, #0
00357650  08 10 82 e5                                      str r1, [r2, #8]
00357654  00 e0 91 15                                      ldrne lr, [r1]
00357658  01 e0 8e 12                                      addne lr, lr, #1
0035765c  00 e0 81 15                                      strne lr, [r1]
00357660  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00357664  01 c0 5c e2                                      subs ip, ip, #1
00357668  10 30 83 e2                                      add r3, r3, #0x10
0035766c  0c 10 82 e5                                      str r1, [r2, #0xc]
00357670  ef ff ff 1a                                      bne #0x357634
00357674  04 30 90 e5                                      ldr r3, [r0, #4]
00357678  18 60 8d e2                                      add r6, sp, #0x18
0035767c  07 32 83 e0                                      add r3, r3, r7, lsl #4
00357680  04 30 80 e5                                      str r3, [r0, #4]
00357684  00 00 00 ea                                      b #0x35768c
00357688  10 50 85 e2                                      add r5, r5, #0x10
0035768c  00 30 94 e5                                      ldr r3, [r4]
00357690  06 00 a0 e1                                      mov r0, r6
00357694  00 30 85 e5                                      str r3, [r5]
00357698  04 30 94 e5                                      ldr r3, [r4, #4]
0035769c  04 30 85 e5                                      str r3, [r5, #4]
003576a0  08 20 94 e5                                      ldr r2, [r4, #8]
003576a4  18 20 8d e5                                      str r2, [sp, #0x18]
003576a8  00 00 52 e3                                      cmp r2, #0
003576ac  00 30 92 15                                      ldrne r3, [r2]
003576b0  01 30 83 12                                      addne r3, r3, #1
003576b4  00 30 82 15                                      strne r3, [r2]
003576b8  18 20 9d 15                                      ldrne r2, [sp, #0x18]
003576bc  08 30 95 e5                                      ldr r3, [r5, #8]
003576c0  08 20 85 e5                                      str r2, [r5, #8]
003576c4  18 30 8d e5                                      str r3, [sp, #0x18]
003576c8  db e9 ff eb                                      bl #0x351e3c
003576cc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003576d0  01 70 57 e2                                      subs r7, r7, #1
003576d4  0c 30 85 e5                                      str r3, [r5, #0xc]
003576d8  ea ff ff 1a                                      bne #0x357688
003576dc  5f ff ff ea                                      b #0x357460

; FUNCTION 0x003576e0, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager17SDefaultNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS3_jRKS3_
; demangled: std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::scene::CSceneManager::SDefaultNodeEntry*, unsigned int, glitch::scene::CSceneManager::SDefaultNodeEntry const&)
; decoder-mode: arm
003576e0  30 40 2d e9                                      push {r4, r5, lr}
003576e4  00 40 52 e2                                      subs r4, r2, #0
003576e8  14 d0 4d e2                                      sub sp, sp, #0x14
003576ec  03 50 a0 e1                                      mov r5, r3
003576f0  09 00 00 0a                                      beq #0x35771c
003576f4  04 e0 90 e5                                      ldr lr, [r0, #4]
003576f8  08 c0 90 e5                                      ldr ip, [r0, #8]
003576fc  0c c0 6e e0                                      rsb ip, lr, ip
00357700  4c 02 54 e1                                      cmp r4, ip, asr #4
00357704  06 00 00 9a                                      bls #0x357724
00357708  03 20 a0 e1                                      mov r2, r3
0035770c  00 c0 a0 e3                                      mov ip, #0
00357710  08 30 8d e2                                      add r3, sp, #8
00357714  10 10 8d e8                                      stm sp, {r4, ip}
00357718  d9 e9 ff eb                                      bl #0x351e84
0035771c  14 d0 8d e2                                      add sp, sp, #0x14
00357720  30 80 bd e8                                      pop {r4, r5, pc}
00357724  0c c0 8d e2                                      add ip, sp, #0xc
00357728  00 c0 8d e5                                      str ip, [sp]
0035772c  2c ff ff eb                                      bl #0x3573e4
00357730  f9 ff ff ea                                      b #0x35771c

; FUNCTION 0x00357734, declared_size=76, range_size=76, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager17SDefaultNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS3_.clone.2
; demangled: std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::scene::CSceneManager::SDefaultNodeEntry const&) [clone .clone.2]
; decoder-mode: arm
00357734  10 40 2d e9                                      push {r4, lr}
00357738  00 c0 90 e5                                      ldr ip, [r0]
0035773c  04 20 90 e5                                      ldr r2, [r0, #4]
00357740  08 d0 4d e2                                      sub sp, sp, #8
00357744  01 30 a0 e1                                      mov r3, r1
00357748  02 40 6c e0                                      rsb r4, ip, r2
0035774c  44 42 b0 e1                                      asrs r4, r4, #4
00357750  06 00 00 0a                                      beq #0x357770
00357754  0c 00 52 e1                                      cmp r2, ip
00357758  02 00 00 0a                                      beq #0x357768
0035775c  0c 10 a0 e1                                      mov r1, ip
00357760  04 30 8d e2                                      add r3, sp, #4
00357764  53 fd ff eb                                      bl #0x356cb8
00357768  08 d0 8d e2                                      add sp, sp, #8
0035776c  10 80 bd e8                                      pop {r4, pc}
00357770  02 10 a0 e1                                      mov r1, r2
00357774  04 20 a0 e1                                      mov r2, r4
00357778  d8 ff ff eb                                      bl #0x3576e0
0035777c  f9 ff ff ea                                      b #0x357768
