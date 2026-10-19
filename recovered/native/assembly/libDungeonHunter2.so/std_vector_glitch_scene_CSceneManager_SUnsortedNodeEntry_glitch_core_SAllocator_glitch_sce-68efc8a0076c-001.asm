; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00351178, declared_size=448, range_size=448, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager18SUnsortedNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type
; demangled: std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::scene::CSceneManager::SUnsortedNodeEntry*, unsigned int, glitch::scene::CSceneManager::SUnsortedNodeEntry const&, std::__false_type const&)
; decoder-mode: arm
00351178  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0035117c  00 40 90 e5                                      ldr r4, [r0]
00351180  1c d0 4d e2                                      sub sp, sp, #0x1c
00351184  00 c0 a0 e1                                      mov ip, r0
00351188  04 00 53 e1                                      cmp r3, r4
0035118c  01 50 a0 e1                                      mov r5, r1
00351190  02 40 a0 e1                                      mov r4, r2
00351194  04 60 90 35                                      ldrlo r6, [r0, #4]
00351198  0c 00 00 3a                                      blo #0x3511d0
0035119c  04 60 90 e5                                      ldr r6, [r0, #4]
003511a0  06 00 53 e1                                      cmp r3, r6
003511a4  09 00 00 2a                                      bhs #0x3511d0
003511a8  04 c0 93 e5                                      ldr ip, [r3, #4]
003511ac  00 e0 93 e5                                      ldr lr, [r3]
003511b0  0c 30 8d e2                                      add r3, sp, #0xc
003511b4  10 c0 8d e5                                      str ip, [sp, #0x10]
003511b8  14 c0 8d e2                                      add ip, sp, #0x14
003511bc  0c e0 8d e5                                      str lr, [sp, #0xc]
003511c0  00 c0 8d e5                                      str ip, [sp]
003511c4  eb ff ff eb                                      bl #0x351178
003511c8  1c d0 8d e2                                      add sp, sp, #0x1c
003511cc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003511d0  06 20 65 e0                                      rsb r2, r5, r6
003511d4  c2 21 a0 e1                                      asr r2, r2, #3
003511d8  02 00 54 e1                                      cmp r4, r2
003511dc  02 70 a0 e1                                      mov r7, r2
003511e0  2b 00 00 2a                                      bhs #0x351294
003511e4  84 41 a0 e1                                      lsl r4, r4, #3
003511e8  06 20 64 e0                                      rsb r2, r4, r6
003511ec  c4 71 a0 e1                                      asr r7, r4, #3
003511f0  00 00 57 e3                                      cmp r7, #0
003511f4  06 00 a0 d1                                      movle r0, r6
003511f8  0a 00 00 da                                      ble #0x351228
003511fc  00 80 a0 e3                                      mov r8, #0
00351200  02 00 a0 e1                                      mov r0, r2
00351204  08 a0 b0 e7                                      ldr sl, [r0, r8]!
00351208  06 10 a0 e1                                      mov r1, r6
0035120c  01 70 57 e2                                      subs r7, r7, #1
00351210  08 a0 a1 e7                                      str sl, [r1, r8]!
00351214  04 00 90 e5                                      ldr r0, [r0, #4]
00351218  08 80 88 e2                                      add r8, r8, #8
0035121c  04 00 81 e5                                      str r0, [r1, #4]
00351220  f6 ff ff 1a                                      bne #0x351200
00351224  04 00 9c e5                                      ldr r0, [ip, #4]
00351228  02 10 65 e0                                      rsb r1, r5, r2
0035122c  c1 11 a0 e1                                      asr r1, r1, #3
00351230  04 00 80 e0                                      add r0, r0, r4
00351234  00 00 51 e3                                      cmp r1, #0
00351238  04 00 8c e5                                      str r0, [ip, #4]
0035123c  07 00 00 da                                      ble #0x351260
00351240  08 00 12 e5                                      ldr r0, [r2, #-8]
00351244  01 10 51 e2                                      subs r1, r1, #1
00351248  08 00 06 e5                                      str r0, [r6, #-8]
0035124c  04 00 12 e5                                      ldr r0, [r2, #-4]
00351250  08 20 42 e2                                      sub r2, r2, #8
00351254  04 00 06 e5                                      str r0, [r6, #-4]
00351258  08 60 46 e2                                      sub r6, r6, #8
0035125c  f7 ff ff 1a                                      bne #0x351240
00351260  c4 41 a0 e1                                      asr r4, r4, #3
00351264  00 00 54 e3                                      cmp r4, #0
00351268  d6 ff ff da                                      ble #0x3511c8
0035126c  00 20 a0 e3                                      mov r2, #0
00351270  00 00 93 e5                                      ldr r0, [r3]
00351274  82 11 85 e0                                      add r1, r5, r2, lsl #3
00351278  82 01 85 e7                                      str r0, [r5, r2, lsl #3]
0035127c  04 00 93 e5                                      ldr r0, [r3, #4]
00351280  01 20 82 e2                                      add r2, r2, #1
00351284  04 00 52 e1                                      cmp r2, r4
00351288  04 00 81 e5                                      str r0, [r1, #4]
0035128c  f7 ff ff 1a                                      bne #0x351270
00351290  cc ff ff ea                                      b #0x3511c8
00351294  04 40 62 e0                                      rsb r4, r2, r4
00351298  54 a0 bc e7                                      sbfx sl, r4, #0, #0x1d
0035129c  00 00 5a e3                                      cmp sl, #0
003512a0  84 41 86 e0                                      add r4, r6, r4, lsl #3
003512a4  08 00 00 da                                      ble #0x3512cc
003512a8  00 10 a0 e3                                      mov r1, #0
003512ac  00 80 93 e5                                      ldr r8, [r3]
003512b0  81 01 86 e0                                      add r0, r6, r1, lsl #3
003512b4  81 81 86 e7                                      str r8, [r6, r1, lsl #3]
003512b8  04 80 93 e5                                      ldr r8, [r3, #4]
003512bc  01 10 81 e2                                      add r1, r1, #1
003512c0  0a 00 51 e1                                      cmp r1, sl
003512c4  04 80 80 e5                                      str r8, [r0, #4]
003512c8  f7 ff ff 1a                                      bne #0x3512ac
003512cc  00 00 52 e3                                      cmp r2, #0
003512d0  82 21 84 d0                                      addle r2, r4, r2, lsl #3
003512d4  04 40 8c e5                                      str r4, [ip, #4]
003512d8  04 20 8c d5                                      strle r2, [ip, #4]
003512dc  b9 ff ff da                                      ble #0x3511c8
003512e0  00 60 a0 e3                                      mov r6, #0
003512e4  05 00 a0 e1                                      mov r0, r5
003512e8  06 80 b0 e7                                      ldr r8, [r0, r6]!
003512ec  04 10 a0 e1                                      mov r1, r4
003512f0  01 20 52 e2                                      subs r2, r2, #1
003512f4  06 80 a1 e7                                      str r8, [r1, r6]!
003512f8  04 00 90 e5                                      ldr r0, [r0, #4]
003512fc  08 60 86 e2                                      add r6, r6, #8
00351300  04 00 81 e5                                      str r0, [r1, #4]
00351304  f6 ff ff 1a                                      bne #0x3512e4
00351308  04 10 9c e5                                      ldr r1, [ip, #4]
0035130c  87 11 81 e0                                      add r1, r1, r7, lsl #3
00351310  04 10 8c e5                                      str r1, [ip, #4]
00351314  00 00 93 e5                                      ldr r0, [r3]
00351318  82 11 85 e0                                      add r1, r5, r2, lsl #3
0035131c  82 01 85 e7                                      str r0, [r5, r2, lsl #3]
00351320  04 00 93 e5                                      ldr r0, [r3, #4]
00351324  01 20 82 e2                                      add r2, r2, #1
00351328  02 00 57 e1                                      cmp r7, r2
0035132c  04 00 81 e5                                      str r0, [r1, #4]
00351330  f7 ff ff 1a                                      bne #0x351314
00351334  a3 ff ff ea                                      b #0x3511c8

; FUNCTION 0x00351780, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager18SUnsortedNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00351780  70 40 2d e9                                      push {r4, r5, r6, lr}
00351784  14 00 90 e8                                      ldm r0, {r2, r4}
00351788  ff 3f 0f e3                                      movw r3, #0xffff
0035178c  ff 3f 41 e3                                      movt r3, #0x1fff
00351790  04 40 62 e0                                      rsb r4, r2, r4
00351794  c4 41 a0 e1                                      asr r4, r4, #3
00351798  03 30 64 e0                                      rsb r3, r4, r3
0035179c  01 00 53 e1                                      cmp r3, r1
003517a0  01 50 a0 e1                                      mov r5, r1
003517a4  08 00 00 3a                                      blo #0x3517cc
003517a8  05 00 54 e1                                      cmp r4, r5
003517ac  04 00 84 20                                      addhs r0, r4, r4
003517b0  05 00 84 30                                      addlo r0, r4, r5
003517b4  1e 02 70 e3                                      cmn r0, #0xe0000001
003517b8  01 00 00 8a                                      bhi #0x3517c4
003517bc  04 00 50 e1                                      cmp r0, r4
003517c0  00 00 00 2a                                      bhs #0x3517c8
003517c4  0e 02 e0 e3                                      mvn r0, #0xe0000000
003517c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003517cc  08 00 9f e5                                      ldr r0, [pc, #8]
003517d0  00 00 8f e0                                      add r0, pc, r0
003517d4  99 dd 0e eb                                      bl #0x708e40
003517d8  f2 ff ff ea                                      b #0x3517a8
; mapping-symbol data/literal pool
003517dc  98 cc 56 00                                      .byte 0x98, 0xcc, 0x56, 0x00

; FUNCTION 0x00351afc, declared_size=332, range_size=332, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager18SUnsortedNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb
; demangled: std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::scene::CSceneManager::SUnsortedNodeEntry*, glitch::scene::CSceneManager::SUnsortedNodeEntry const&, std::__false_type const&, unsigned int, bool)
; decoder-mode: arm
00351afc  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00351b00  28 50 9d e5                                      ldr r5, [sp, #0x28]
00351b04  01 40 a0 e1                                      mov r4, r1
00351b08  02 60 a0 e1                                      mov r6, r2
00351b0c  05 10 a0 e1                                      mov r1, r5
00351b10  00 70 a0 e1                                      mov r7, r0
00351b14  2c a0 dd e5                                      ldrb sl, [sp, #0x2c]
00351b18  18 ff ff eb                                      bl #0x351780
00351b1c  80 81 a0 e1                                      lsl r8, r0, #3
00351b20  08 00 a0 e1                                      mov r0, r8
00351b24  00 10 a0 e3                                      mov r1, #0
00351b28  8e fa fe eb                                      bl #0x310568
00351b2c  00 c0 97 e5                                      ldr ip, [r7]
00351b30  00 90 a0 e1                                      mov sb, r0
00351b34  04 e0 6c e0                                      rsb lr, ip, r4
00351b38  ce e1 a0 e1                                      asr lr, lr, #3
00351b3c  00 00 5e e3                                      cmp lr, #0
00351b40  00 e0 a0 d1                                      movle lr, r0
00351b44  0b 00 00 da                                      ble #0x351b78
00351b48  0e 10 a0 e1                                      mov r1, lr
00351b4c  00 00 a0 e3                                      mov r0, #0
00351b50  0c 20 a0 e1                                      mov r2, ip
00351b54  00 b0 b2 e7                                      ldr fp, [r2, r0]!
00351b58  09 30 a0 e1                                      mov r3, sb
00351b5c  01 10 51 e2                                      subs r1, r1, #1
00351b60  00 b0 a3 e7                                      str fp, [r3, r0]!
00351b64  04 20 92 e5                                      ldr r2, [r2, #4]
00351b68  08 00 80 e2                                      add r0, r0, #8
00351b6c  04 20 83 e5                                      str r2, [r3, #4]
00351b70  f6 ff ff 1a                                      bne #0x351b50
00351b74  8e e1 89 e0                                      add lr, sb, lr, lsl #3
00351b78  01 00 55 e3                                      cmp r5, #1
00351b7c  2b 00 00 0a                                      beq #0x351c30
00351b80  55 00 bc e7                                      sbfx r0, r5, #0, #0x1d
00351b84  00 00 50 e3                                      cmp r0, #0
00351b88  85 51 8e e0                                      add r5, lr, r5, lsl #3
00351b8c  08 00 00 da                                      ble #0x351bb4
00351b90  00 30 a0 e3                                      mov r3, #0
00351b94  00 10 96 e5                                      ldr r1, [r6]
00351b98  83 21 8e e0                                      add r2, lr, r3, lsl #3
00351b9c  83 11 8e e7                                      str r1, [lr, r3, lsl #3]
00351ba0  04 10 96 e5                                      ldr r1, [r6, #4]
00351ba4  01 30 83 e2                                      add r3, r3, #1
00351ba8  00 00 53 e1                                      cmp r3, r0
00351bac  04 10 82 e5                                      str r1, [r2, #4]
00351bb0  f7 ff ff 1a                                      bne #0x351b94
00351bb4  00 00 5a e3                                      cmp sl, #0
00351bb8  04 00 97 15                                      ldrne r0, [r7, #4]
00351bbc  10 00 00 1a                                      bne #0x351c04
00351bc0  04 00 97 e5                                      ldr r0, [r7, #4]
00351bc4  00 c0 64 e0                                      rsb ip, r4, r0
00351bc8  cc c1 a0 e1                                      asr ip, ip, #3
00351bcc  00 00 5c e3                                      cmp ip, #0
00351bd0  0b 00 00 da                                      ble #0x351c04
00351bd4  0c 10 a0 e1                                      mov r1, ip
00351bd8  04 20 a0 e1                                      mov r2, r4
00351bdc  0a 00 b2 e7                                      ldr r0, [r2, sl]!
00351be0  05 30 a0 e1                                      mov r3, r5
00351be4  01 10 51 e2                                      subs r1, r1, #1
00351be8  0a 00 a3 e7                                      str r0, [r3, sl]!
00351bec  04 20 92 e5                                      ldr r2, [r2, #4]
00351bf0  08 a0 8a e2                                      add sl, sl, #8
00351bf4  04 20 83 e5                                      str r2, [r3, #4]
00351bf8  f6 ff ff 1a                                      bne #0x351bd8
00351bfc  04 00 97 e5                                      ldr r0, [r7, #4]
00351c00  8c 51 85 e0                                      add r5, r5, ip, lsl #3
00351c04  00 30 97 e5                                      ldr r3, [r7]
00351c08  08 80 89 e0                                      add r8, sb, r8
00351c0c  00 00 53 e1                                      cmp r3, r0
00351c10  08 20 40 12                                      subne r2, r0, #8
00351c14  02 30 63 10                                      rsbne r3, r3, r2
00351c18  a3 31 e0 11                                      mvnne r3, r3, lsr #3
00351c1c  83 01 80 10                                      addne r0, r0, r3, lsl #3
00351c20  0a fa fe eb                                      bl #0x310450
00351c24  20 01 87 e9                                      stmib r7, {r5, r8}
00351c28  00 90 87 e5                                      str sb, [r7]
00351c2c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00351c30  00 30 96 e5                                      ldr r3, [r6]
00351c34  08 50 8e e2                                      add r5, lr, #8
00351c38  00 30 8e e5                                      str r3, [lr]
00351c3c  04 30 96 e5                                      ldr r3, [r6, #4]
00351c40  04 30 8e e5                                      str r3, [lr, #4]
00351c44  da ff ff ea                                      b #0x351bb4

; FUNCTION 0x00351c48, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager18SUnsortedNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS3_jRKS3_
; demangled: std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::scene::CSceneManager::SUnsortedNodeEntry*, unsigned int, glitch::scene::CSceneManager::SUnsortedNodeEntry const&)
; decoder-mode: arm
00351c48  30 40 2d e9                                      push {r4, r5, lr}
00351c4c  00 40 52 e2                                      subs r4, r2, #0
00351c50  14 d0 4d e2                                      sub sp, sp, #0x14
00351c54  03 50 a0 e1                                      mov r5, r3
00351c58  09 00 00 0a                                      beq #0x351c84
00351c5c  04 e0 90 e5                                      ldr lr, [r0, #4]
00351c60  08 c0 90 e5                                      ldr ip, [r0, #8]
00351c64  0c c0 6e e0                                      rsb ip, lr, ip
00351c68  cc 01 54 e1                                      cmp r4, ip, asr #3
00351c6c  06 00 00 9a                                      bls #0x351c8c
00351c70  03 20 a0 e1                                      mov r2, r3
00351c74  00 c0 a0 e3                                      mov ip, #0
00351c78  08 30 8d e2                                      add r3, sp, #8
00351c7c  10 10 8d e8                                      stm sp, {r4, ip}
00351c80  9d ff ff eb                                      bl #0x351afc
00351c84  14 d0 8d e2                                      add sp, sp, #0x14
00351c88  30 80 bd e8                                      pop {r4, r5, pc}
00351c8c  0c c0 8d e2                                      add ip, sp, #0xc
00351c90  00 c0 8d e5                                      str ip, [sp]
00351c94  37 fd ff eb                                      bl #0x351178
00351c98  f9 ff ff ea                                      b #0x351c84

; FUNCTION 0x00352ef0, declared_size=52, range_size=52, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager18SUnsortedNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS3_.clone.6
; demangled: std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::scene::CSceneManager::SUnsortedNodeEntry const&) [clone .clone.6]
; decoder-mode: arm
00352ef0  30 00 2d e9                                      push {r4, r5}
00352ef4  30 00 90 e8                                      ldm r0, {r4, r5}
00352ef8  01 30 a0 e1                                      mov r3, r1
00352efc  05 20 64 e0                                      rsb r2, r4, r5
00352f00  c2 21 b0 e1                                      asrs r2, r2, #3
00352f04  03 00 00 0a                                      beq #0x352f18
00352f08  04 00 55 e1                                      cmp r5, r4
00352f0c  04 40 80 15                                      strne r4, [r0, #4]
00352f10  30 00 bd e8                                      pop {r4, r5}
00352f14  1e ff 2f e1                                      bx lr
00352f18  05 10 a0 e1                                      mov r1, r5
00352f1c  30 00 bd e8                                      pop {r4, r5}
00352f20  48 fb ff ea                                      b #0x351c48
