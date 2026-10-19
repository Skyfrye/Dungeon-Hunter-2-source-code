; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00700ef8, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::scene::CShadowVolumeSceneNode::SShadowVolume, glitch::core::SAllocator<glitch::scene::CShadowVolumeSceneNode::SShadowVolume, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene22CShadowVolumeSceneNode13SShadowVolumeENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::scene::CShadowVolumeSceneNode::SShadowVolume, glitch::core::SAllocator<glitch::scene::CShadowVolumeSceneNode::SShadowVolume, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00700ef8  70 40 2d e9                                      push {r4, r5, r6, lr}
00700efc  04 40 90 e5                                      ldr r4, [r0, #4]
00700f00  00 50 90 e5                                      ldr r5, [r0]
00700f04  00 60 a0 e1                                      mov r6, r0
00700f08  05 00 54 e1                                      cmp r4, r5
00700f0c  04 00 00 0a                                      beq #0x700f24
00700f10  4c 40 44 e2                                      sub r4, r4, #0x4c
00700f14  04 00 a0 e1                                      mov r0, r4
00700f18  c9 ff ff eb                                      bl #0x700e44
00700f1c  04 00 55 e1                                      cmp r5, r4
00700f20  fa ff ff 1a                                      bne #0x700f10
00700f24  00 00 96 e5                                      ldr r0, [r6]
00700f28  00 00 50 e3                                      cmp r0, #0
00700f2c  00 00 00 0a                                      beq #0x700f34
00700f30  46 3d f0 eb                                      bl #0x310450
00700f34  06 00 a0 e1                                      mov r0, r6
00700f38  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00700f3c, declared_size=152, range_size=152, mode=arm
; class-group: std::vector<glitch::scene::CShadowVolumeSceneNode::SShadowVolume, glitch::core::SAllocator<glitch::scene::CShadowVolumeSceneNode::SShadowVolume, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene22CShadowVolumeSceneNode13SShadowVolumeENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_SA_RKSt12__false_type
; demangled: std::vector<glitch::scene::CShadowVolumeSceneNode::SShadowVolume, glitch::core::SAllocator<glitch::scene::CShadowVolumeSceneNode::SShadowVolume, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::scene::CShadowVolumeSceneNode::SShadowVolume*, glitch::scene::CShadowVolumeSceneNode::SShadowVolume*, std::__false_type const&)
; decoder-mode: arm
00700f3c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00700f40  04 40 90 e5                                      ldr r4, [r0, #4]
00700f44  00 50 a0 e1                                      mov r5, r0
00700f48  02 80 a0 e1                                      mov r8, r2
00700f4c  04 a0 62 e0                                      rsb sl, r2, r4
00700f50  4a a1 a0 e1                                      asr sl, sl, #2
00700f54  01 70 a0 e1                                      mov r7, r1
00700f58  8a a0 8a e0                                      add sl, sl, sl, lsl #1
00700f5c  8a a1 8a e0                                      add sl, sl, sl, lsl #3
00700f60  8a 34 a0 e1                                      lsl r3, sl, #9
00700f64  03 a0 6a e0                                      rsb sl, sl, r3
00700f68  0a a9 8a e0                                      add sl, sl, sl, lsl #18
00700f6c  00 a0 6a e2                                      rsb sl, sl, #0
00700f70  00 00 5a e3                                      cmp sl, #0
00700f74  01 a0 a0 d1                                      movle sl, r1
00700f78  0a 00 00 da                                      ble #0x700fa8
00700f7c  0a 60 a0 e1                                      mov r6, sl
00700f80  00 40 a0 e3                                      mov r4, #0
00700f84  04 00 87 e0                                      add r0, r7, r4
00700f88  04 10 88 e0                                      add r1, r8, r4
00700f8c  54 ff ff eb                                      bl #0x700ce4
00700f90  01 60 56 e2                                      subs r6, r6, #1
00700f94  4c 40 84 e2                                      add r4, r4, #0x4c
00700f98  f9 ff ff 1a                                      bne #0x700f84
00700f9c  4c 30 a0 e3                                      mov r3, #0x4c
00700fa0  93 7a 2a e0                                      mla sl, r3, sl, r7
00700fa4  04 40 95 e5                                      ldr r4, [r5, #4]
00700fa8  0a 00 54 e1                                      cmp r4, sl
00700fac  05 00 00 0a                                      beq #0x700fc8
00700fb0  0a 60 a0 e1                                      mov r6, sl
00700fb4  06 00 a0 e1                                      mov r0, r6
00700fb8  4c 60 86 e2                                      add r6, r6, #0x4c
00700fbc  a0 ff ff eb                                      bl #0x700e44
00700fc0  06 00 54 e1                                      cmp r4, r6
00700fc4  fa ff ff 1a                                      bne #0x700fb4
00700fc8  04 a0 85 e5                                      str sl, [r5, #4]
00700fcc  07 00 a0 e1                                      mov r0, r7
00700fd0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00701164, declared_size=320, range_size=320, mode=arm
; class-group: std::vector<glitch::scene::CShadowVolumeSceneNode::SShadowVolume, glitch::core::SAllocator<glitch::scene::CShadowVolumeSceneNode::SShadowVolume, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene22CShadowVolumeSceneNode13SShadowVolumeENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::scene::CShadowVolumeSceneNode::SShadowVolume, glitch::core::SAllocator<glitch::scene::CShadowVolumeSceneNode::SShadowVolume, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::scene::CShadowVolumeSceneNode::SShadowVolume const&)
; decoder-mode: arm
00701164  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00701168  00 60 a0 e1                                      mov r6, r0
0070116c  08 40 96 e5                                      ldr r4, [r6, #8]
00701170  04 00 90 e5                                      ldr r0, [r0, #4]
00701174  01 a0 a0 e1                                      mov sl, r1
00701178  04 00 50 e1                                      cmp r0, r4
0070117c  04 00 00 0a                                      beq #0x701194
00701180  01 f6 ff eb                                      bl #0x6fe98c
00701184  04 30 96 e5                                      ldr r3, [r6, #4]
00701188  4c 30 83 e2                                      add r3, r3, #0x4c
0070118c  04 30 86 e5                                      str r3, [r6, #4]
00701190  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00701194  00 20 96 e5                                      ldr r2, [r6]
00701198  d7 30 05 e3                                      movw r3, #0x50d7
0070119c  5e 33 40 e3                                      movt r3, #0x35e
007011a0  04 20 62 e0                                      rsb r2, r2, r4
007011a4  42 21 a0 e1                                      asr r2, r2, #2
007011a8  82 20 82 e0                                      add r2, r2, r2, lsl #1
007011ac  82 21 82 e0                                      add r2, r2, r2, lsl #3
007011b0  82 14 a0 e1                                      lsl r1, r2, #9
007011b4  01 20 62 e0                                      rsb r2, r2, r1
007011b8  02 29 82 e0                                      add r2, r2, r2, lsl #18
007011bc  00 20 62 e2                                      rsb r2, r2, #0
007011c0  01 00 52 e3                                      cmp r2, #1
007011c4  02 10 82 20                                      addhs r1, r2, r2
007011c8  01 10 82 32                                      addlo r1, r2, #1
007011cc  03 00 51 e1                                      cmp r1, r3
007011d0  2e 00 00 9a                                      bls #0x701290
007011d4  2b 90 e0 e3                                      mvn sb, #0x2b
007011d8  09 00 a0 e1                                      mov r0, sb
007011dc  00 10 a0 e3                                      mov r1, #0
007011e0  e0 3c f0 eb                                      bl #0x310568
007011e4  00 80 96 e5                                      ldr r8, [r6]
007011e8  00 70 a0 e1                                      mov r7, r0
007011ec  04 b0 68 e0                                      rsb fp, r8, r4
007011f0  4b b1 a0 e1                                      asr fp, fp, #2
007011f4  8b b0 8b e0                                      add fp, fp, fp, lsl #1
007011f8  8b b1 8b e0                                      add fp, fp, fp, lsl #3
007011fc  8b 34 a0 e1                                      lsl r3, fp, #9
00701200  03 b0 6b e0                                      rsb fp, fp, r3
00701204  0b b9 8b e0                                      add fp, fp, fp, lsl #18
00701208  00 b0 6b e2                                      rsb fp, fp, #0
0070120c  00 00 5b e3                                      cmp fp, #0
00701210  00 b0 a0 d1                                      movle fp, r0
00701214  09 00 00 da                                      ble #0x701240
00701218  0b 50 a0 e1                                      mov r5, fp
0070121c  00 40 a0 e3                                      mov r4, #0
00701220  04 00 87 e0                                      add r0, r7, r4
00701224  04 10 88 e0                                      add r1, r8, r4
00701228  d7 f5 ff eb                                      bl #0x6fe98c
0070122c  01 50 55 e2                                      subs r5, r5, #1
00701230  4c 40 84 e2                                      add r4, r4, #0x4c
00701234  f9 ff ff 1a                                      bne #0x701220
00701238  4c 30 a0 e3                                      mov r3, #0x4c
0070123c  93 7b 2b e0                                      mla fp, r3, fp, r7
00701240  0b 00 a0 e1                                      mov r0, fp
00701244  0a 10 a0 e1                                      mov r1, sl
00701248  cf f5 ff eb                                      bl #0x6fe98c
0070124c  04 40 96 e5                                      ldr r4, [r6, #4]
00701250  00 50 96 e5                                      ldr r5, [r6]
00701254  4c b0 8b e2                                      add fp, fp, #0x4c
00701258  05 00 54 e1                                      cmp r4, r5
0070125c  05 00 00 0a                                      beq #0x701278
00701260  4c 40 44 e2                                      sub r4, r4, #0x4c
00701264  04 00 a0 e1                                      mov r0, r4
00701268  f5 fe ff eb                                      bl #0x700e44
0070126c  04 00 55 e1                                      cmp r5, r4
00701270  fa ff ff 1a                                      bne #0x701260
00701274  00 50 96 e5                                      ldr r5, [r6]
00701278  05 00 a0 e1                                      mov r0, r5
0070127c  09 90 87 e0                                      add sb, r7, sb
00701280  72 3c f0 eb                                      bl #0x310450
00701284  08 90 86 e5                                      str sb, [r6, #8]
00701288  80 08 86 e8                                      stm r6, {r7, fp}
0070128c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00701290  01 00 52 e1                                      cmp r2, r1
00701294  ce ff ff 8a                                      bhi #0x7011d4
00701298  4c 90 a0 e3                                      mov sb, #0x4c
0070129c  99 01 09 e0                                      mul sb, sb, r1
007012a0  cc ff ff ea                                      b #0x7011d8
