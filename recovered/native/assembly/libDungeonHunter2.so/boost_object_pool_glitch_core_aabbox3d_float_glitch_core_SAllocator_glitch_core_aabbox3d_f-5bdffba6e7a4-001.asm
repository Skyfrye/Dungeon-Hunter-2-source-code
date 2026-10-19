; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0057b36c, declared_size=108, range_size=108, mode=arm
; class-group: boost::object_pool<glitch::core::aabbox3d<float>, glitch::core::SAllocator<glitch::core::aabbox3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZN5boost11object_poolIN6glitch4core8aabbox3dIfEENS2_10SAllocatorIS4_LNS1_6memory13E_MEMORY_HINTE0EEEE9constructEv.clone.3
; demangled: boost::object_pool<glitch::core::aabbox3d<float>, glitch::core::SAllocator<glitch::core::aabbox3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::construct() [clone .clone.3]
; decoder-mode: arm
0057b36c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0057b370  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0057b374  10 40 2d e9                                      push {r4, lr}
0057b378  03 30 8f e0                                      add r3, pc, r3
0057b37c  02 20 93 e7                                      ldr r2, [r3, r2]
0057b380  00 00 92 e5                                      ldr r0, [r2]
0057b384  00 00 50 e3                                      cmp r0, #0
0057b388  0d 00 00 0a                                      beq #0x57b3c4
0057b38c  00 30 90 e5                                      ldr r3, [r0]
0057b390  00 30 82 e5                                      str r3, [r2]
0057b394  00 00 50 e3                                      cmp r0, #0
0057b398  08 00 00 0a                                      beq #0x57b3c0
0057b39c  bf 24 a0 e3                                      mov r2, #0xbf000000
0057b3a0  02 25 82 e2                                      add r2, r2, #0x800000
0057b3a4  fe 35 a0 e3                                      mov r3, #0x3f800000
0057b3a8  08 20 80 e5                                      str r2, [r0, #8]
0057b3ac  14 30 80 e5                                      str r3, [r0, #0x14]
0057b3b0  00 20 80 e5                                      str r2, [r0]
0057b3b4  04 20 80 e5                                      str r2, [r0, #4]
0057b3b8  0c 30 80 e5                                      str r3, [r0, #0xc]
0057b3bc  10 30 80 e5                                      str r3, [r0, #0x10]
0057b3c0  10 80 bd e8                                      pop {r4, pc}
0057b3c4  02 00 a0 e1                                      mov r0, r2
0057b3c8  99 f9 ff eb                                      bl #0x579a34
0057b3cc  f0 ff ff ea                                      b #0x57b394
; mapping-symbol data/literal pool
0057b3d0  18 97 41 00 60 20 00 00                          .byte 0x18, 0x97, 0x41, 0x00, 0x60, 0x20, 0x00, 0x00

; FUNCTION 0x006724d8, declared_size=160, range_size=160, mode=arm
; class-group: boost::object_pool<glitch::core::aabbox3d<float>, glitch::core::SAllocator<glitch::core::aabbox3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZN5boost11object_poolIN6glitch4core8aabbox3dIfEENS2_10SAllocatorIS4_LNS1_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: boost::object_pool<glitch::core::aabbox3d<float>, glitch::core::SAllocator<glitch::core::aabbox3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::~object_pool()
; decoder-mode: arm
006724d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006724dc  04 40 90 e5                                      ldr r4, [r0, #4]
006724e0  00 60 a0 e1                                      mov r6, r0
006724e4  00 00 54 e3                                      cmp r4, #0
006724e8  20 00 00 0a                                      beq #0x672570
006724ec  0c 70 90 e5                                      ldr r7, [r0, #0xc]
006724f0  08 80 90 e5                                      ldr r8, [r0, #8]
006724f4  04 50 a0 e3                                      mov r5, #4
006724f8  07 00 a0 e1                                      mov r0, r7
006724fc  05 10 a0 e1                                      mov r1, r5
00672500  89 71 f2 eb                                      bl #0x30eb2c
00672504  05 30 a0 e1                                      mov r3, r5
00672508  00 50 51 e2                                      subs r5, r1, #0
0067250c  03 00 a0 e1                                      mov r0, r3
00672510  f9 ff ff 1a                                      bne #0x6724fc
00672514  03 10 a0 e1                                      mov r1, r3
00672518  07 00 a0 e1                                      mov r0, r7
0067251c  ca 71 f2 eb                                      bl #0x30ec4c
00672520  04 30 a0 e1                                      mov r3, r4
00672524  00 51 a0 e1                                      lsl r5, r0, #2
00672528  04 80 48 e2                                      sub r8, r8, #4
0067252c  08 20 83 e0                                      add r2, r3, r8
00672530  04 10 42 e2                                      sub r1, r2, #4
00672534  04 00 51 e1                                      cmp r1, r4
00672538  08 80 93 e7                                      ldr r8, [r3, r8]
0067253c  04 70 12 e5                                      ldr r7, [r2, #-4]
00672540  04 00 00 0a                                      beq #0x672558
00672544  05 30 84 e0                                      add r3, r4, r5
00672548  05 30 83 e0                                      add r3, r3, r5
0067254c  03 20 65 e0                                      rsb r2, r5, r3
00672550  02 00 51 e1                                      cmp r1, r2
00672554  fb ff ff 1a                                      bne #0x672548
00672558  04 00 a0 e1                                      mov r0, r4
0067255c  bb 77 f2 eb                                      bl #0x310450
00672560  00 30 57 e2                                      subs r3, r7, #0
00672564  03 40 a0 11                                      movne r4, r3
00672568  ee ff ff 1a                                      bne #0x672528
0067256c  04 70 86 e5                                      str r7, [r6, #4]
00672570  06 00 a0 e1                                      mov r0, r6
00672574  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
