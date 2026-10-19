; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00351338, declared_size=468, range_size=468, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager18SDistanceNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type
; demangled: std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::scene::CSceneManager::SDistanceNodeEntry*, unsigned int, glitch::scene::CSceneManager::SDistanceNodeEntry const&, std::__false_type const&)
; decoder-mode: arm
00351338  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0035133c  00 90 a0 e1                                      mov sb, r0
00351340  00 00 90 e5                                      ldr r0, [r0]
00351344  2c d0 4d e2                                      sub sp, sp, #0x2c
00351348  03 c0 a0 e1                                      mov ip, r3
0035134c  00 00 53 e1                                      cmp r3, r0
00351350  01 60 a0 e1                                      mov r6, r1
00351354  02 b0 a0 e1                                      mov fp, r2
00351358  04 80 99 35                                      ldrlo r8, [sb, #4]
0035135c  0e 00 00 3a                                      blo #0x35139c
00351360  04 80 99 e5                                      ldr r8, [sb, #4]
00351364  08 00 53 e1                                      cmp r3, r8
00351368  0b 00 00 2a                                      bhs #0x35139c
0035136c  10 e0 8d e2                                      add lr, sp, #0x10
00351370  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00351374  24 c0 8d e2                                      add ip, sp, #0x24
00351378  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
0035137c  09 00 a0 e1                                      mov r0, sb
00351380  06 10 a0 e1                                      mov r1, r6
00351384  0b 20 a0 e1                                      mov r2, fp
00351388  0e 30 a0 e1                                      mov r3, lr
0035138c  00 c0 8d e5                                      str ip, [sp]
00351390  e8 ff ff eb                                      bl #0x351338
00351394  2c d0 8d e2                                      add sp, sp, #0x2c
00351398  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0035139c  08 70 66 e0                                      rsb r7, r6, r8
003513a0  47 72 a0 e1                                      asr r7, r7, #4
003513a4  07 00 5b e1                                      cmp fp, r7
003513a8  0c 70 8d e5                                      str r7, [sp, #0xc]
003513ac  2f 00 00 2a                                      bhs #0x351470
003513b0  0b b2 a0 e1                                      lsl fp, fp, #4
003513b4  08 a0 6b e0                                      rsb sl, fp, r8
003513b8  4b 52 a0 e1                                      asr r5, fp, #4
003513bc  00 00 55 e3                                      cmp r5, #0
003513c0  08 30 a0 d1                                      movle r3, r8
003513c4  0c 00 00 da                                      ble #0x3513fc
003513c8  06 70 a0 e1                                      mov r7, r6
003513cc  00 40 a0 e3                                      mov r4, #0
003513d0  0c 60 a0 e1                                      mov r6, ip
003513d4  04 c0 88 e0                                      add ip, r8, r4
003513d8  04 30 8a e0                                      add r3, sl, r4
003513dc  01 50 55 e2                                      subs r5, r5, #1
003513e0  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
003513e4  10 40 84 e2                                      add r4, r4, #0x10
003513e8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003513ec  f8 ff ff 1a                                      bne #0x3513d4
003513f0  04 30 99 e5                                      ldr r3, [sb, #4]
003513f4  06 c0 a0 e1                                      mov ip, r6
003513f8  07 60 a0 e1                                      mov r6, r7
003513fc  0a 50 66 e0                                      rsb r5, r6, sl
00351400  45 52 a0 e1                                      asr r5, r5, #4
00351404  0b 30 83 e0                                      add r3, r3, fp
00351408  00 00 55 e3                                      cmp r5, #0
0035140c  04 30 89 e5                                      str r3, [sb, #4]
00351410  0b 00 00 da                                      ble #0x351444
00351414  08 70 a0 e1                                      mov r7, r8
00351418  0c 40 a0 e1                                      mov r4, ip
0035141c  0a 80 a0 e1                                      mov r8, sl
00351420  10 c0 47 e2                                      sub ip, r7, #0x10
00351424  10 30 48 e2                                      sub r3, r8, #0x10
00351428  01 50 55 e2                                      subs r5, r5, #1
0035142c  03 80 a0 e1                                      mov r8, r3
00351430  0c 70 a0 e1                                      mov r7, ip
00351434  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00351438  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0035143c  f7 ff ff 1a                                      bne #0x351420
00351440  04 c0 a0 e1                                      mov ip, r4
00351444  4b 72 a0 e1                                      asr r7, fp, #4
00351448  00 00 57 e3                                      cmp r7, #0
0035144c  d0 ff ff da                                      ble #0x351394
00351450  00 50 a0 e3                                      mov r5, #0
00351454  05 42 86 e0                                      add r4, r6, r5, lsl #4
00351458  01 50 85 e2                                      add r5, r5, #1
0035145c  07 00 55 e1                                      cmp r5, r7
00351460  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
00351464  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00351468  f9 ff ff 1a                                      bne #0x351454
0035146c  c8 ff ff ea                                      b #0x351394
00351470  0b b0 67 e0                                      rsb fp, r7, fp
00351474  5b a0 bb e7                                      sbfx sl, fp, #0, #0x1c
00351478  00 00 5a e3                                      cmp sl, #0
0035147c  0b b2 88 e0                                      add fp, r8, fp, lsl #4
00351480  06 00 00 da                                      ble #0x3514a0
00351484  00 50 a0 e3                                      mov r5, #0
00351488  05 42 88 e0                                      add r4, r8, r5, lsl #4
0035148c  01 50 85 e2                                      add r5, r5, #1
00351490  0a 00 55 e1                                      cmp r5, sl
00351494  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
00351498  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0035149c  f9 ff ff 1a                                      bne #0x351488
003514a0  00 00 57 e3                                      cmp r7, #0
003514a4  07 72 8b d0                                      addle r7, fp, r7, lsl #4
003514a8  04 b0 89 e5                                      str fp, [sb, #4]
003514ac  04 70 89 d5                                      strle r7, [sb, #4]
003514b0  b7 ff ff da                                      ble #0x351394
003514b4  00 40 a0 e3                                      mov r4, #0
003514b8  0c 50 a0 e1                                      mov r5, ip
003514bc  04 c0 8b e0                                      add ip, fp, r4
003514c0  04 30 86 e0                                      add r3, r6, r4
003514c4  01 70 57 e2                                      subs r7, r7, #1
003514c8  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
003514cc  10 40 84 e2                                      add r4, r4, #0x10
003514d0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003514d4  f8 ff ff 1a                                      bne #0x3514bc
003514d8  04 30 99 e5                                      ldr r3, [sb, #4]
003514dc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003514e0  05 c0 a0 e1                                      mov ip, r5
003514e4  02 32 83 e0                                      add r3, r3, r2, lsl #4
003514e8  04 30 89 e5                                      str r3, [sb, #4]
003514ec  0c 50 9d e5                                      ldr r5, [sp, #0xc]
003514f0  07 42 86 e0                                      add r4, r6, r7, lsl #4
003514f4  01 70 87 e2                                      add r7, r7, #1
003514f8  07 00 55 e1                                      cmp r5, r7
003514fc  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
00351500  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00351504  f9 ff ff 1a                                      bne #0x3514f0
00351508  a1 ff ff ea                                      b #0x351394

; FUNCTION 0x00351720, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager18SDistanceNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00351720  70 40 2d e9                                      push {r4, r5, r6, lr}
00351724  14 00 90 e8                                      ldm r0, {r2, r4}
00351728  ff 3f 0f e3                                      movw r3, #0xffff
0035172c  ff 3f 40 e3                                      movt r3, #0xfff
00351730  04 40 62 e0                                      rsb r4, r2, r4
00351734  44 42 a0 e1                                      asr r4, r4, #4
00351738  03 30 64 e0                                      rsb r3, r4, r3
0035173c  01 00 53 e1                                      cmp r3, r1
00351740  01 50 a0 e1                                      mov r5, r1
00351744  08 00 00 3a                                      blo #0x35176c
00351748  05 00 54 e1                                      cmp r4, r5
0035174c  04 00 84 20                                      addhs r0, r4, r4
00351750  05 00 84 30                                      addlo r0, r4, r5
00351754  1f 02 70 e3                                      cmn r0, #0xf0000001
00351758  01 00 00 8a                                      bhi #0x351764
0035175c  04 00 50 e1                                      cmp r0, r4
00351760  00 00 00 2a                                      bhs #0x351768
00351764  0f 02 e0 e3                                      mvn r0, #0xf0000000
00351768  70 80 bd e8                                      pop {r4, r5, r6, pc}
0035176c  08 00 9f e5                                      ldr r0, [pc, #8]
00351770  00 00 8f e0                                      add r0, pc, r0
00351774  b1 dd 0e eb                                      bl #0x708e40
00351778  f2 ff ff ea                                      b #0x351748
; mapping-symbol data/literal pool
0035177c  f8 cc 56 00                                      .byte 0xf8, 0xcc, 0x56, 0x00

; FUNCTION 0x00351920, declared_size=324, range_size=324, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager18SDistanceNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb
; demangled: std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::scene::CSceneManager::SDistanceNodeEntry*, glitch::scene::CSceneManager::SDistanceNodeEntry const&, std::__false_type const&, unsigned int, bool)
; decoder-mode: arm
00351920  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00351924  0c d0 4d e2                                      sub sp, sp, #0xc
00351928  30 b0 9d e5                                      ldr fp, [sp, #0x30]
0035192c  02 40 a0 e1                                      mov r4, r2
00351930  34 20 dd e5                                      ldrb r2, [sp, #0x34]
00351934  01 a0 a0 e1                                      mov sl, r1
00351938  0b 10 a0 e1                                      mov r1, fp
0035193c  00 90 a0 e1                                      mov sb, r0
00351940  04 20 8d e5                                      str r2, [sp, #4]
00351944  75 ff ff eb                                      bl #0x351720
00351948  00 10 a0 e3                                      mov r1, #0
0035194c  00 02 a0 e1                                      lsl r0, r0, #4
00351950  00 00 8d e5                                      str r0, [sp]
00351954  03 fb fe eb                                      bl #0x310568
00351958  00 70 99 e5                                      ldr r7, [sb]
0035195c  00 50 a0 e1                                      mov r5, r0
00351960  0a 80 67 e0                                      rsb r8, r7, sl
00351964  48 82 a0 e1                                      asr r8, r8, #4
00351968  00 00 58 e3                                      cmp r8, #0
0035196c  00 60 a0 d1                                      movle r6, r0
00351970  09 00 00 da                                      ble #0x35199c
00351974  08 60 a0 e1                                      mov r6, r8
00351978  00 e0 a0 e3                                      mov lr, #0
0035197c  0e c0 85 e0                                      add ip, r5, lr
00351980  0e 30 87 e0                                      add r3, r7, lr
00351984  01 60 56 e2                                      subs r6, r6, #1
00351988  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0035198c  10 e0 8e e2                                      add lr, lr, #0x10
00351990  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00351994  f8 ff ff 1a                                      bne #0x35197c
00351998  08 62 85 e0                                      add r6, r5, r8, lsl #4
0035199c  01 00 5b e3                                      cmp fp, #1
003519a0  2b 00 00 0a                                      beq #0x351a54
003519a4  5b 70 bb e7                                      sbfx r7, fp, #0, #0x1c
003519a8  00 00 57 e3                                      cmp r7, #0
003519ac  0b 82 86 e0                                      add r8, r6, fp, lsl #4
003519b0  06 00 00 da                                      ble #0x3519d0
003519b4  00 e0 a0 e3                                      mov lr, #0
003519b8  0e c2 86 e0                                      add ip, r6, lr, lsl #4
003519bc  01 e0 8e e2                                      add lr, lr, #1
003519c0  07 00 5e e1                                      cmp lr, r7
003519c4  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
003519c8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003519cc  f9 ff ff 1a                                      bne #0x3519b8
003519d0  04 30 9d e5                                      ldr r3, [sp, #4]
003519d4  00 00 53 e3                                      cmp r3, #0
003519d8  04 00 99 15                                      ldrne r0, [sb, #4]
003519dc  0f 00 00 1a                                      bne #0x351a20
003519e0  04 00 99 e5                                      ldr r0, [sb, #4]
003519e4  00 60 6a e0                                      rsb r6, sl, r0
003519e8  46 62 a0 e1                                      asr r6, r6, #4
003519ec  00 00 56 e3                                      cmp r6, #0
003519f0  0a 00 00 da                                      ble #0x351a20
003519f4  04 e0 9d e5                                      ldr lr, [sp, #4]
003519f8  06 40 a0 e1                                      mov r4, r6
003519fc  0e c0 88 e0                                      add ip, r8, lr
00351a00  0e 30 8a e0                                      add r3, sl, lr
00351a04  01 40 54 e2                                      subs r4, r4, #1
00351a08  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00351a0c  10 e0 8e e2                                      add lr, lr, #0x10
00351a10  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00351a14  f8 ff ff 1a                                      bne #0x3519fc
00351a18  04 00 99 e5                                      ldr r0, [sb, #4]
00351a1c  06 82 88 e0                                      add r8, r8, r6, lsl #4
00351a20  00 30 99 e5                                      ldr r3, [sb]
00351a24  00 00 53 e1                                      cmp r3, r0
00351a28  10 20 40 12                                      subne r2, r0, #0x10
00351a2c  02 30 63 10                                      rsbne r3, r3, r2
00351a30  23 32 e0 11                                      mvnne r3, r3, lsr #4
00351a34  03 02 80 10                                      addne r0, r0, r3, lsl #4
00351a38  84 fa fe eb                                      bl #0x310450
00351a3c  00 20 9d e5                                      ldr r2, [sp]
00351a40  20 01 89 e8                                      stm sb, {r5, r8}
00351a44  02 30 85 e0                                      add r3, r5, r2
00351a48  08 30 89 e5                                      str r3, [sb, #8]
00351a4c  0c d0 8d e2                                      add sp, sp, #0xc
00351a50  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00351a54  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00351a58  10 80 86 e2                                      add r8, r6, #0x10
00351a5c  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
00351a60  da ff ff ea                                      b #0x3519d0

; FUNCTION 0x00351a64, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager18SDistanceNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS3_jRKS3_
; demangled: std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::scene::CSceneManager::SDistanceNodeEntry*, unsigned int, glitch::scene::CSceneManager::SDistanceNodeEntry const&)
; decoder-mode: arm
00351a64  30 40 2d e9                                      push {r4, r5, lr}
00351a68  00 40 52 e2                                      subs r4, r2, #0
00351a6c  14 d0 4d e2                                      sub sp, sp, #0x14
00351a70  03 50 a0 e1                                      mov r5, r3
00351a74  09 00 00 0a                                      beq #0x351aa0
00351a78  04 e0 90 e5                                      ldr lr, [r0, #4]
00351a7c  08 c0 90 e5                                      ldr ip, [r0, #8]
00351a80  0c c0 6e e0                                      rsb ip, lr, ip
00351a84  4c 02 54 e1                                      cmp r4, ip, asr #4
00351a88  06 00 00 9a                                      bls #0x351aa8
00351a8c  03 20 a0 e1                                      mov r2, r3
00351a90  00 c0 a0 e3                                      mov ip, #0
00351a94  08 30 8d e2                                      add r3, sp, #8
00351a98  10 10 8d e8                                      stm sp, {r4, ip}
00351a9c  9f ff ff eb                                      bl #0x351920
00351aa0  14 d0 8d e2                                      add sp, sp, #0x14
00351aa4  30 80 bd e8                                      pop {r4, r5, pc}
00351aa8  0c c0 8d e2                                      add ip, sp, #0xc
00351aac  00 c0 8d e5                                      str ip, [sp]
00351ab0  20 fe ff eb                                      bl #0x351338
00351ab4  f9 ff ff ea                                      b #0x351aa0

; FUNCTION 0x00351ab8, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager18SDistanceNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS3_
; demangled: std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::scene::CSceneManager::SDistanceNodeEntry const&)
; decoder-mode: arm
00351ab8  30 00 2d e9                                      push {r4, r5}
00351abc  04 40 90 e5                                      ldr r4, [r0, #4]
00351ac0  00 50 90 e5                                      ldr r5, [r0]
00351ac4  02 30 a0 e1                                      mov r3, r2
00351ac8  04 20 65 e0                                      rsb r2, r5, r4
00351acc  42 22 a0 e1                                      asr r2, r2, #4
00351ad0  02 00 51 e1                                      cmp r1, r2
00351ad4  04 00 00 2a                                      bhs #0x351aec
00351ad8  01 52 85 e0                                      add r5, r5, r1, lsl #4
00351adc  04 00 55 e1                                      cmp r5, r4
00351ae0  04 50 80 15                                      strne r5, [r0, #4]
00351ae4  30 00 bd e8                                      pop {r4, r5}
00351ae8  1e ff 2f e1                                      bx lr
00351aec  01 20 62 e0                                      rsb r2, r2, r1
00351af0  04 10 a0 e1                                      mov r1, r4
00351af4  30 00 bd e8                                      pop {r4, r5}
00351af8  d9 ff ff ea                                      b #0x351a64
