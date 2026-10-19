; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0062e0b8, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::collada::CColladaDatabase, glitch::core::SAllocator<glitch::collada::CColladaDatabase, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada16CColladaDatabaseENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::collada::CColladaDatabase, glitch::core::SAllocator<glitch::collada::CColladaDatabase, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
0062e0b8  70 40 2d e9                                      push {r4, r5, r6, lr}
0062e0bc  04 40 90 e5                                      ldr r4, [r0, #4]
0062e0c0  00 50 90 e5                                      ldr r5, [r0]
0062e0c4  00 60 a0 e1                                      mov r6, r0
0062e0c8  05 00 54 e1                                      cmp r4, r5
0062e0cc  04 00 00 0a                                      beq #0x62e0e4
0062e0d0  08 40 44 e2                                      sub r4, r4, #8
0062e0d4  04 00 a0 e1                                      mov r0, r4
0062e0d8  e5 ac ff eb                                      bl #0x619474
0062e0dc  04 00 55 e1                                      cmp r5, r4
0062e0e0  fa ff ff 1a                                      bne #0x62e0d0
0062e0e4  00 00 96 e5                                      ldr r0, [r6]
0062e0e8  00 00 50 e3                                      cmp r0, #0
0062e0ec  00 00 00 0a                                      beq #0x62e0f4
0062e0f0  d6 88 f3 eb                                      bl #0x310450
0062e0f4  06 00 a0 e1                                      mov r0, r6
0062e0f8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0062ecac, declared_size=352, range_size=352, mode=arm
; class-group: std::vector<glitch::collada::CColladaDatabase, glitch::core::SAllocator<glitch::collada::CColladaDatabase, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada16CColladaDatabaseENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS2_
; demangled: std::vector<glitch::collada::CColladaDatabase, glitch::core::SAllocator<glitch::collada::CColladaDatabase, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::collada::CColladaDatabase const&)
; decoder-mode: arm
0062ecac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0062ecb0  48 00 90 e9                                      ldmib r0, {r3, r6}
0062ecb4  00 40 a0 e1                                      mov r4, r0
0062ecb8  01 50 a0 e1                                      mov r5, r1
0062ecbc  06 00 53 e1                                      cmp r3, r6
0062ecc0  0d 00 00 0a                                      beq #0x62ecfc
0062ecc4  00 20 91 e5                                      ldr r2, [r1]
0062ecc8  00 20 83 e5                                      str r2, [r3]
0062eccc  04 10 91 e5                                      ldr r1, [r1, #4]
0062ecd0  00 00 52 e3                                      cmp r2, #0
0062ecd4  04 10 83 e5                                      str r1, [r3, #4]
0062ecd8  03 00 00 0a                                      beq #0x62ecec
0062ecdc  04 30 92 e5                                      ldr r3, [r2, #4]
0062ece0  00 00 53 e3                                      cmp r3, #0
0062ece4  01 30 83 12                                      addne r3, r3, #1
0062ece8  04 30 82 15                                      strne r3, [r2, #4]
0062ecec  04 30 94 e5                                      ldr r3, [r4, #4]
0062ecf0  08 30 83 e2                                      add r3, r3, #8
0062ecf4  04 30 84 e5                                      str r3, [r4, #4]
0062ecf8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0062ecfc  00 30 90 e5                                      ldr r3, [r0]
0062ed00  06 30 63 e0                                      rsb r3, r3, r6
0062ed04  c3 31 a0 e1                                      asr r3, r3, #3
0062ed08  01 00 53 e3                                      cmp r3, #1
0062ed0c  03 70 83 20                                      addhs r7, r3, r3
0062ed10  01 70 83 32                                      addlo r7, r3, #1
0062ed14  1e 02 77 e3                                      cmn r7, #0xe0000001
0062ed18  37 00 00 9a                                      bls #0x62edfc
0062ed1c  07 70 e0 e3                                      mvn r7, #7
0062ed20  07 00 a0 e1                                      mov r0, r7
0062ed24  00 10 a0 e3                                      mov r1, #0
0062ed28  0e 86 f3 eb                                      bl #0x310568
0062ed2c  00 e0 94 e5                                      ldr lr, [r4]
0062ed30  00 80 a0 e1                                      mov r8, r0
0062ed34  06 a0 6e e0                                      rsb sl, lr, r6
0062ed38  ca a1 a0 e1                                      asr sl, sl, #3
0062ed3c  00 00 5a e3                                      cmp sl, #0
0062ed40  00 a0 a0 d1                                      movle sl, r0
0062ed44  11 00 00 da                                      ble #0x62ed90
0062ed48  0a 00 a0 e1                                      mov r0, sl
0062ed4c  00 c0 a0 e3                                      mov ip, #0
0062ed50  0e 10 a0 e1                                      mov r1, lr
0062ed54  0c 30 b1 e7                                      ldr r3, [r1, ip]!
0062ed58  08 20 a0 e1                                      mov r2, r8
0062ed5c  0c 30 a2 e7                                      str r3, [r2, ip]!
0062ed60  04 10 91 e5                                      ldr r1, [r1, #4]
0062ed64  00 00 53 e3                                      cmp r3, #0
0062ed68  08 c0 8c e2                                      add ip, ip, #8
0062ed6c  04 10 82 e5                                      str r1, [r2, #4]
0062ed70  03 00 00 0a                                      beq #0x62ed84
0062ed74  04 20 93 e5                                      ldr r2, [r3, #4]
0062ed78  00 00 52 e3                                      cmp r2, #0
0062ed7c  01 20 82 12                                      addne r2, r2, #1
0062ed80  04 20 83 15                                      strne r2, [r3, #4]
0062ed84  01 00 50 e2                                      subs r0, r0, #1
0062ed88  f0 ff ff 1a                                      bne #0x62ed50
0062ed8c  8a a1 88 e0                                      add sl, r8, sl, lsl #3
0062ed90  00 30 95 e5                                      ldr r3, [r5]
0062ed94  00 30 8a e5                                      str r3, [sl]
0062ed98  04 20 95 e5                                      ldr r2, [r5, #4]
0062ed9c  00 00 53 e3                                      cmp r3, #0
0062eda0  04 20 8a e5                                      str r2, [sl, #4]
0062eda4  03 00 00 0a                                      beq #0x62edb8
0062eda8  04 20 93 e5                                      ldr r2, [r3, #4]
0062edac  00 00 52 e3                                      cmp r2, #0
0062edb0  01 20 82 12                                      addne r2, r2, #1
0062edb4  04 20 83 15                                      strne r2, [r3, #4]
0062edb8  04 50 94 e5                                      ldr r5, [r4, #4]
0062edbc  00 60 94 e5                                      ldr r6, [r4]
0062edc0  08 a0 8a e2                                      add sl, sl, #8
0062edc4  06 00 55 e1                                      cmp r5, r6
0062edc8  05 00 00 0a                                      beq #0x62ede4
0062edcc  08 50 45 e2                                      sub r5, r5, #8
0062edd0  05 00 a0 e1                                      mov r0, r5
0062edd4  a6 a9 ff eb                                      bl #0x619474
0062edd8  05 00 56 e1                                      cmp r6, r5
0062eddc  fa ff ff 1a                                      bne #0x62edcc
0062ede0  00 60 94 e5                                      ldr r6, [r4]
0062ede4  06 00 a0 e1                                      mov r0, r6
0062ede8  07 70 88 e0                                      add r7, r8, r7
0062edec  97 85 f3 eb                                      bl #0x310450
0062edf0  08 70 84 e5                                      str r7, [r4, #8]
0062edf4  00 05 84 e8                                      stm r4, {r8, sl}
0062edf8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0062edfc  07 00 53 e1                                      cmp r3, r7
0062ee00  87 71 a0 91                                      lslls r7, r7, #3
0062ee04  c5 ff ff 9a                                      bls #0x62ed20
0062ee08  c3 ff ff ea                                      b #0x62ed1c

; FUNCTION 0x0062f994, declared_size=176, range_size=176, mode=arm
; class-group: std::vector<glitch::collada::CColladaDatabase, glitch::core::SAllocator<glitch::collada::CColladaDatabase, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada16CColladaDatabaseENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS2_RKSt12__false_type
; demangled: std::vector<glitch::collada::CColladaDatabase, glitch::core::SAllocator<glitch::collada::CColladaDatabase, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::collada::CColladaDatabase*, std::__false_type const&)
; decoder-mode: arm
0062f994  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0062f998  00 40 a0 e1                                      mov r4, r0
0062f99c  04 00 90 e5                                      ldr r0, [r0, #4]
0062f9a0  08 60 81 e2                                      add r6, r1, #8
0062f9a4  08 d0 4d e2                                      sub sp, sp, #8
0062f9a8  00 00 56 e1                                      cmp r6, r0
0062f9ac  01 80 a0 e1                                      mov r8, r1
0062f9b0  1d 00 00 0a                                      beq #0x62fa2c
0062f9b4  00 60 66 e0                                      rsb r6, r6, r0
0062f9b8  c6 61 a0 e1                                      asr r6, r6, #3
0062f9bc  00 00 56 e3                                      cmp r6, #0
0062f9c0  19 00 00 da                                      ble #0x62fa2c
0062f9c4  10 50 81 e2                                      add r5, r1, #0x10
0062f9c8  0d 70 a0 e1                                      mov r7, sp
0062f9cc  08 30 15 e5                                      ldr r3, [r5, #-8]
0062f9d0  0d 00 a0 e1                                      mov r0, sp
0062f9d4  00 30 8d e5                                      str r3, [sp]
0062f9d8  04 20 15 e5                                      ldr r2, [r5, #-4]
0062f9dc  00 00 53 e3                                      cmp r3, #0
0062f9e0  04 20 8d e5                                      str r2, [sp, #4]
0062f9e4  04 00 00 0a                                      beq #0x62f9fc
0062f9e8  04 20 93 e5                                      ldr r2, [r3, #4]
0062f9ec  00 00 52 e3                                      cmp r2, #0
0062f9f0  01 20 82 12                                      addne r2, r2, #1
0062f9f4  04 20 83 15                                      strne r2, [r3, #4]
0062f9f8  00 30 9d 15                                      ldrne r3, [sp]
0062f9fc  10 20 15 e5                                      ldr r2, [r5, #-0x10]
0062fa00  00 20 8d e5                                      str r2, [sp]
0062fa04  10 30 05 e5                                      str r3, [r5, #-0x10]
0062fa08  0c 20 15 e5                                      ldr r2, [r5, #-0xc]
0062fa0c  04 30 9d e5                                      ldr r3, [sp, #4]
0062fa10  04 20 8d e5                                      str r2, [sp, #4]
0062fa14  0c 30 05 e5                                      str r3, [r5, #-0xc]
0062fa18  95 a6 ff eb                                      bl #0x619474
0062fa1c  01 60 56 e2                                      subs r6, r6, #1
0062fa20  08 50 85 e2                                      add r5, r5, #8
0062fa24  e8 ff ff 1a                                      bne #0x62f9cc
0062fa28  04 00 94 e5                                      ldr r0, [r4, #4]
0062fa2c  08 00 40 e2                                      sub r0, r0, #8
0062fa30  04 00 84 e5                                      str r0, [r4, #4]
0062fa34  8e a6 ff eb                                      bl #0x619474
0062fa38  08 00 a0 e1                                      mov r0, r8
0062fa3c  08 d0 8d e2                                      add sp, sp, #8
0062fa40  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0062fb88, declared_size=208, range_size=208, mode=arm
; class-group: std::vector<glitch::collada::CColladaDatabase, glitch::core::SAllocator<glitch::collada::CColladaDatabase, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada16CColladaDatabaseENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS2_S9_RKSt12__false_type
; demangled: std::vector<glitch::collada::CColladaDatabase, glitch::core::SAllocator<glitch::collada::CColladaDatabase, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::collada::CColladaDatabase*, glitch::collada::CColladaDatabase*, std::__false_type const&)
; decoder-mode: arm
0062fb88  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0062fb8c  04 40 90 e5                                      ldr r4, [r0, #4]
0062fb90  08 d0 4d e2                                      sub sp, sp, #8
0062fb94  00 50 a0 e1                                      mov r5, r0
0062fb98  04 90 62 e0                                      rsb sb, r2, r4
0062fb9c  c9 91 a0 e1                                      asr sb, sb, #3
0062fba0  00 00 59 e3                                      cmp sb, #0
0062fba4  02 60 a0 e1                                      mov r6, r2
0062fba8  01 80 a0 e1                                      mov r8, r1
0062fbac  01 70 a0 d1                                      movle r7, r1
0062fbb0  1c 00 00 da                                      ble #0x62fc28
0062fbb4  09 70 a0 e1                                      mov r7, sb
0062fbb8  00 40 a0 e3                                      mov r4, #0
0062fbbc  0d a0 a0 e1                                      mov sl, sp
0062fbc0  06 10 a0 e1                                      mov r1, r6
0062fbc4  04 30 b1 e7                                      ldr r3, [r1, r4]!
0062fbc8  08 20 a0 e1                                      mov r2, r8
0062fbcc  0d 00 a0 e1                                      mov r0, sp
0062fbd0  00 30 8d e5                                      str r3, [sp]
0062fbd4  04 10 91 e5                                      ldr r1, [r1, #4]
0062fbd8  00 00 53 e3                                      cmp r3, #0
0062fbdc  04 10 8d e5                                      str r1, [sp, #4]
0062fbe0  04 00 00 0a                                      beq #0x62fbf8
0062fbe4  04 10 93 e5                                      ldr r1, [r3, #4]
0062fbe8  00 00 51 e3                                      cmp r1, #0
0062fbec  01 10 81 12                                      addne r1, r1, #1
0062fbf0  04 10 83 15                                      strne r1, [r3, #4]
0062fbf4  00 30 9d 15                                      ldrne r3, [sp]
0062fbf8  04 10 98 e7                                      ldr r1, [r8, r4]
0062fbfc  04 c0 9d e5                                      ldr ip, [sp, #4]
0062fc00  04 30 a2 e7                                      str r3, [r2, r4]!
0062fc04  04 30 92 e5                                      ldr r3, [r2, #4]
0062fc08  04 c0 82 e5                                      str ip, [r2, #4]
0062fc0c  0a 00 8d e8                                      stm sp, {r1, r3}
0062fc10  17 a6 ff eb                                      bl #0x619474
0062fc14  01 70 57 e2                                      subs r7, r7, #1
0062fc18  08 40 84 e2                                      add r4, r4, #8
0062fc1c  e7 ff ff 1a                                      bne #0x62fbc0
0062fc20  04 40 95 e5                                      ldr r4, [r5, #4]
0062fc24  89 71 88 e0                                      add r7, r8, sb, lsl #3
0062fc28  07 00 54 e1                                      cmp r4, r7
0062fc2c  05 00 00 0a                                      beq #0x62fc48
0062fc30  07 60 a0 e1                                      mov r6, r7
0062fc34  06 00 a0 e1                                      mov r0, r6
0062fc38  08 60 86 e2                                      add r6, r6, #8
0062fc3c  0c a6 ff eb                                      bl #0x619474
0062fc40  06 00 54 e1                                      cmp r4, r6
0062fc44  fa ff ff 1a                                      bne #0x62fc34
0062fc48  04 70 85 e5                                      str r7, [r5, #4]
0062fc4c  08 00 a0 e1                                      mov r0, r8
0062fc50  08 d0 8d e2                                      add sp, sp, #8
0062fc54  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
