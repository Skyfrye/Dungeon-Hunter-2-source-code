; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00588fe8, declared_size=192, range_size=192, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZNK6glitch5scene13CSceneManager19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CSceneManager::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00588fe8  70 40 2d e9                                      push {r4, r5, r6, lr}
00588fec  04 30 90 e5                                      ldr r3, [r0, #4]
00588ff0  00 20 91 e5                                      ldr r2, [r1]
00588ff4  10 d0 4d e2                                      sub sp, sp, #0x10
00588ff8  00 40 a0 e1                                      mov r4, r0
00588ffc  03 00 a0 e1                                      mov r0, r3
00589000  00 30 93 e5                                      ldr r3, [r3]
00589004  01 50 a0 e1                                      mov r5, r1
00589008  7c 60 92 e5                                      ldr r6, [r2, #0x7c]
0058900c  0f e0 a0 e1                                      mov lr, pc
00589010  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00589014  80 10 9f e5                                      ldr r1, [pc, #0x80]
00589018  00 20 a0 e1                                      mov r2, r0
0058901c  00 30 a0 e3                                      mov r3, #0
00589020  01 10 8f e0                                      add r1, pc, r1
00589024  05 00 a0 e1                                      mov r0, r5
00589028  36 ff 2f e1                                      blx r6
0058902c  04 30 94 e5                                      ldr r3, [r4, #4]
00589030  00 20 95 e5                                      ldr r2, [r5]
00589034  03 00 a0 e1                                      mov r0, r3
00589038  00 30 93 e5                                      ldr r3, [r3]
0058903c  4c 60 92 e5                                      ldr r6, [r2, #0x4c]
00589040  0f e0 a0 e1                                      mov lr, pc
00589044  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00589048  50 10 9f e5                                      ldr r1, [pc, #0x50]
0058904c  00 20 a0 e1                                      mov r2, r0
00589050  00 30 a0 e3                                      mov r3, #0
00589054  05 00 a0 e1                                      mov r0, r5
00589058  01 10 8f e0                                      add r1, pc, r1
0058905c  36 ff 2f e1                                      blx r6
00589060  0c 21 94 e5                                      ldr r2, [r4, #0x10c]
00589064  10 31 94 e5                                      ldr r3, [r4, #0x110]
00589068  00 10 a0 e3                                      mov r1, #0
0058906c  08 10 8d e5                                      str r1, [sp, #8]
00589070  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00589074  0c 00 8d e8                                      stm sp, {r2, r3}
00589078  08 31 94 e5                                      ldr r3, [r4, #0x108]
0058907c  05 00 a0 e1                                      mov r0, r5
00589080  01 10 8f e0                                      add r1, pc, r1
00589084  00 c0 95 e5                                      ldr ip, [r5]
00589088  04 21 94 e5                                      ldr r2, [r4, #0x104]
0058908c  0f e0 a0 e1                                      mov lr, pc
00589090  30 f1 9c e5                                      ldr pc, [ip, #0x130]
00589094  10 d0 8d e2                                      add sp, sp, #0x10
00589098  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0058909c  60 2d 34 00 70 37 34 00 10 64 35 00              .byte 0x60, 0x2d, 0x34, 0x00, 0x70, 0x37, 0x34, 0x00, 0x10, 0x64, 0x35, 0x00

; FUNCTION 0x005890a8, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager23notifyVisibilityChangedEv
; demangled: glitch::scene::CSceneManager::notifyVisibilityChanged()
; decoder-mode: arm
005890a8  01 30 a0 e3                                      mov r3, #1
005890ac  89 32 c0 e5                                      strb r3, [r0, #0x289]
005890b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005890b4, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager22notifyHierarchyChangedEv
; demangled: glitch::scene::CSceneManager::notifyHierarchyChanged()
; decoder-mode: arm
005890b4  01 30 a0 e3                                      mov r3, #1
005890b8  88 32 c0 e5                                      strb r3, [r0, #0x288]
005890bc  f9 ff ff ea                                      b #0x5890a8

; FUNCTION 0x005890c0, declared_size=104, range_size=104, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager15setActiveCameraEPNS0_16ICameraSceneNodeE
; demangled: glitch::scene::CSceneManager::setActiveCamera(glitch::scene::ICameraSceneNode*)
; decoder-mode: arm
005890c0  70 40 2d e9                                      push {r4, r5, r6, lr}
005890c4  e4 30 90 e5                                      ldr r3, [r0, #0xe4]
005890c8  00 40 a0 e1                                      mov r4, r0
005890cc  01 50 a0 e1                                      mov r5, r1
005890d0  01 00 53 e1                                      cmp r3, r1
005890d4  12 00 00 0a                                      beq #0x589124
005890d8  00 00 51 e3                                      cmp r1, #0
005890dc  06 00 00 0a                                      beq #0x5890fc
005890e0  00 30 91 e5                                      ldr r3, [r1]
005890e4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005890e8  03 30 81 e0                                      add r3, r1, r3
005890ec  04 20 93 e5                                      ldr r2, [r3, #4]
005890f0  01 20 82 e2                                      add r2, r2, #1
005890f4  04 20 83 e5                                      str r2, [r3, #4]
005890f8  e4 30 90 e5                                      ldr r3, [r0, #0xe4]
005890fc  00 00 53 e3                                      cmp r3, #0
00589100  03 00 00 0a                                      beq #0x589114
00589104  00 20 93 e5                                      ldr r2, [r3]
00589108  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0058910c  00 00 83 e0                                      add r0, r3, r0
00589110  1b 51 f6 eb                                      bl #0x31d584
00589114  04 00 a0 e1                                      mov r0, r4
00589118  e4 50 84 e5                                      str r5, [r4, #0xe4]
0058911c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00589120  e0 ff ff ea                                      b #0x5890a8
00589124  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00589128, declared_size=64, range_size=64, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager18registerSceneNodesERKSt6vectorIPNS0_10ISceneNodeENS_4core10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::scene::CSceneManager::registerSceneNodes(std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00589128  70 40 2d e9                                      push {r4, r5, r6, lr}
0058912c  00 40 91 e5                                      ldr r4, [r1]
00589130  04 30 91 e5                                      ldr r3, [r1, #4]
00589134  01 60 a0 e1                                      mov r6, r1
00589138  00 50 a0 e1                                      mov r5, r0
0058913c  03 00 54 e1                                      cmp r4, r3
00589140  07 00 00 0a                                      beq #0x589164
00589144  04 10 94 e4                                      ldr r1, [r4], #4
00589148  00 30 95 e5                                      ldr r3, [r5]
0058914c  05 00 a0 e1                                      mov r0, r5
00589150  0f e0 a0 e1                                      mov lr, pc
00589154  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00589158  04 30 96 e5                                      ldr r3, [r6, #4]
0058915c  03 00 54 e1                                      cmp r4, r3
00589160  f7 ff ff 1a                                      bne #0x589144
00589164  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00589168, declared_size=64, range_size=64, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager25registerSceneNodesCompileERKSt6vectorIPNS0_10ISceneNodeENS_4core10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::scene::CSceneManager::registerSceneNodesCompile(std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00589168  70 40 2d e9                                      push {r4, r5, r6, lr}
0058916c  00 40 91 e5                                      ldr r4, [r1]
00589170  04 30 91 e5                                      ldr r3, [r1, #4]
00589174  01 60 a0 e1                                      mov r6, r1
00589178  00 50 a0 e1                                      mov r5, r0
0058917c  03 00 54 e1                                      cmp r4, r3
00589180  07 00 00 0a                                      beq #0x5891a4
00589184  04 10 94 e4                                      ldr r1, [r4], #4
00589188  00 30 95 e5                                      ldr r3, [r5]
0058918c  05 00 a0 e1                                      mov r0, r5
00589190  0f e0 a0 e1                                      mov lr, pc
00589194  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00589198  04 30 96 e5                                      ldr r3, [r6, #4]
0058919c  03 00 54 e1                                      cmp r4, r3
005891a0  f7 ff ff 1a                                      bne #0x589184
005891a4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005891ac, declared_size=92, range_size=92, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager14setShadowColorENS_5video6SColorE
; demangled: glitch::scene::CSceneManager::setShadowColor(glitch::video::SColor)
; decoder-mode: arm
005891ac  21 cc a0 e1                                      lsr ip, r1, #0x18
005891b0  71 30 ef e6                                      uxtb r3, r1
005891b4  51 24 e7 e7                                      ubfx r2, r1, #8, #8
005891b8  51 18 e7 e7                                      ubfx r1, r1, #0x10, #8
005891bc  08 d0 4d e2                                      sub sp, sp, #8
005891c0  00 31 c0 e5                                      strb r3, [r0, #0x100]
005891c4  03 c1 c0 e5                                      strb ip, [r0, #0x103]
005891c8  02 11 c0 e5                                      strb r1, [r0, #0x102]
005891cc  01 21 c0 e5                                      strb r2, [r0, #0x101]
005891d0  f7 c0 c0 e5                                      strb ip, [r0, #0xf7]
005891d4  f6 10 c0 e5                                      strb r1, [r0, #0xf6]
005891d8  f5 20 c0 e5                                      strb r2, [r0, #0xf5]
005891dc  f4 30 c0 e5                                      strb r3, [r0, #0xf4]
005891e0  fb c0 c0 e5                                      strb ip, [r0, #0xfb]
005891e4  fa 10 c0 e5                                      strb r1, [r0, #0xfa]
005891e8  f9 20 c0 e5                                      strb r2, [r0, #0xf9]
005891ec  f8 30 c0 e5                                      strb r3, [r0, #0xf8]
005891f0  ff c0 c0 e5                                      strb ip, [r0, #0xff]
005891f4  fe 10 c0 e5                                      strb r1, [r0, #0xfe]
005891f8  fd 20 c0 e5                                      strb r2, [r0, #0xfd]
005891fc  fc 30 c0 e5                                      strb r3, [r0, #0xfc]
00589200  08 d0 8d e2                                      add sp, sp, #8
00589204  1e ff 2f e1                                      bx lr

; FUNCTION 0x00589208, declared_size=144, range_size=144, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager18getSceneNodeFromIdEiPNS0_10ISceneNodeE
; demangled: glitch::scene::CSceneManager::getSceneNodeFromId(int, glitch::scene::ISceneNode*)
; decoder-mode: arm
00589208  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0058920c  00 70 52 e2                                      subs r7, r2, #0
00589210  04 70 90 05                                      ldreq r7, [r0, #4]
00589214  00 50 a0 e1                                      mov r5, r0
00589218  01 60 a0 e1                                      mov r6, r1
0058921c  00 30 97 e5                                      ldr r3, [r7]
00589220  07 00 a0 e1                                      mov r0, r7
00589224  0f e0 a0 e1                                      mov lr, pc
00589228  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
0058922c  06 00 50 e1                                      cmp r0, r6
00589230  01 00 00 1a                                      bne #0x58923c
00589234  07 00 a0 e1                                      mov r0, r7
00589238  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058923c  f4 40 b7 e5                                      ldr r4, [r7, #0xf4]!
00589240  07 00 54 e1                                      cmp r4, r7
00589244  03 00 00 1a                                      bne #0x589258
00589248  0f 00 00 ea                                      b #0x58928c
0058924c  00 40 94 e5                                      ldr r4, [r4]
00589250  04 00 57 e1                                      cmp r7, r4
00589254  0c 00 00 0a                                      beq #0x58928c
00589258  00 30 95 e5                                      ldr r3, [r5]
0058925c  00 00 54 e3                                      cmp r4, #0
00589260  04 20 44 e2                                      sub r2, r4, #4
00589264  10 30 93 e5                                      ldr r3, [r3, #0x10]
00589268  04 20 a0 01                                      moveq r2, r4
0058926c  05 00 a0 e1                                      mov r0, r5
00589270  06 10 a0 e1                                      mov r1, r6
00589274  33 ff 2f e1                                      blx r3
00589278  00 00 50 e3                                      cmp r0, #0
0058927c  f2 ff ff 0a                                      beq #0x58924c
00589280  00 70 a0 e1                                      mov r7, r0
00589284  07 00 a0 e1                                      mov r0, r7
00589288  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058928c  00 70 a0 e3                                      mov r7, #0
00589290  07 00 a0 e1                                      mov r0, r7
00589294  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00589298, declared_size=144, range_size=144, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager20getSceneNodeFromTypeENS0_17E_SCENE_NODE_TYPEEPNS0_10ISceneNodeE
; demangled: glitch::scene::CSceneManager::getSceneNodeFromType(glitch::scene::E_SCENE_NODE_TYPE, glitch::scene::ISceneNode*)
; decoder-mode: arm
00589298  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0058929c  00 70 52 e2                                      subs r7, r2, #0
005892a0  04 70 90 05                                      ldreq r7, [r0, #4]
005892a4  00 60 a0 e1                                      mov r6, r0
005892a8  01 50 a0 e1                                      mov r5, r1
005892ac  00 30 97 e5                                      ldr r3, [r7]
005892b0  07 00 a0 e1                                      mov r0, r7
005892b4  0f e0 a0 e1                                      mov lr, pc
005892b8  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
005892bc  05 00 50 e1                                      cmp r0, r5
005892c0  07 00 00 0a                                      beq #0x5892e4
005892c4  61 3e 06 e3                                      movw r3, #0x6e61
005892c8  79 3f 45 e3                                      movt r3, #0x5f79
005892cc  03 00 55 e1                                      cmp r5, r3
005892d0  03 00 00 0a                                      beq #0x5892e4
005892d4  f4 40 b7 e5                                      ldr r4, [r7, #0xf4]!
005892d8  07 00 54 e1                                      cmp r4, r7
005892dc  05 00 00 1a                                      bne #0x5892f8
005892e0  00 70 a0 e3                                      mov r7, #0
005892e4  07 00 a0 e1                                      mov r0, r7
005892e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005892ec  00 40 94 e5                                      ldr r4, [r4]
005892f0  04 00 57 e1                                      cmp r7, r4
005892f4  f9 ff ff 0a                                      beq #0x5892e0
005892f8  00 30 96 e5                                      ldr r3, [r6]
005892fc  00 00 54 e3                                      cmp r4, #0
00589300  04 20 44 e2                                      sub r2, r4, #4
00589304  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00589308  04 20 a0 01                                      moveq r2, r4
0058930c  06 00 a0 e1                                      mov r0, r6
00589310  05 10 a0 e1                                      mov r1, r5
00589314  33 ff 2f e1                                      blx r3
00589318  00 00 50 e3                                      cmp r0, #0
0058931c  f2 ff ff 0a                                      beq #0x5892ec
00589320  00 70 a0 e1                                      mov r7, r0
00589324  ee ff ff ea                                      b #0x5892e4

; FUNCTION 0x00589328, declared_size=44, range_size=44, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager17postEventFromUserERKNS_6SEventE
; demangled: glitch::scene::CSceneManager::postEventFromUser(glitch::SEvent const&)
; decoder-mode: arm
00589328  10 40 2d e9                                      push {r4, lr}
0058932c  e4 30 90 e5                                      ldr r3, [r0, #0xe4]
00589330  00 00 53 e3                                      cmp r3, #0
00589334  04 00 00 0a                                      beq #0x58934c
00589338  03 00 a0 e1                                      mov r0, r3
0058933c  00 30 93 e5                                      ldr r3, [r3]
00589340  0f e0 a0 e1                                      mov lr, pc
00589344  00 f1 93 e5                                      ldr pc, [r3, #0x100]
00589348  10 80 bd e8                                      pop {r4, pc}
0058934c  03 00 a0 e1                                      mov r0, r3
00589350  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00589354, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager22setSceneNodeRenderPassENS0_24E_SCENE_NODE_RENDER_PASSE
; demangled: glitch::scene::CSceneManager::setSceneNodeRenderPass(glitch::scene::E_SCENE_NODE_RENDER_PASS)
; decoder-mode: arm
00589354  00 30 a0 e1                                      mov r3, r0
00589358  74 01 90 e5                                      ldr r0, [r0, #0x174]
0058935c  74 11 83 e5                                      str r1, [r3, #0x174]
00589360  1e ff 2f e1                                      bx lr

; FUNCTION 0x00589364, declared_size=92, range_size=92, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager9saveSceneEPKcPNS0_24ISceneUserDataSerializerE
; demangled: glitch::scene::CSceneManager::saveScene(char const*, glitch::scene::ISceneUserDataSerializer*)
; decoder-mode: arm
00589364  70 40 2d e9                                      push {r4, r5, r6, lr}
00589368  20 30 90 e5                                      ldr r3, [r0, #0x20]
0058936c  00 40 a0 e1                                      mov r4, r0
00589370  02 60 a0 e1                                      mov r6, r2
00589374  03 00 a0 e1                                      mov r0, r3
00589378  00 20 a0 e3                                      mov r2, #0
0058937c  00 30 93 e5                                      ldr r3, [r3]
00589380  0f e0 a0 e1                                      mov lr, pc
00589384  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00589388  00 50 50 e2                                      subs r5, r0, #0
0058938c  05 40 a0 01                                      moveq r4, r5
00589390  08 00 00 0a                                      beq #0x5893b8
00589394  04 00 a0 e1                                      mov r0, r4
00589398  00 30 94 e5                                      ldr r3, [r4]
0058939c  06 20 a0 e1                                      mov r2, r6
005893a0  05 10 a0 e1                                      mov r1, r5
005893a4  0f e0 a0 e1                                      mov lr, pc
005893a8  78 f0 93 e5                                      ldr pc, [r3, #0x78]
005893ac  00 40 a0 e1                                      mov r4, r0
005893b0  05 00 a0 e1                                      mov r0, r5
005893b4  72 50 f6 eb                                      bl #0x31d584
005893b8  04 00 a0 e1                                      mov r0, r4
005893bc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005893c0, declared_size=108, range_size=108, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZNK6glitch5scene13CSceneManager20getSceneNodeTypeNameENS0_17E_SCENE_NODE_TYPEE
; demangled: glitch::scene::CSceneManager::getSceneNodeTypeName(glitch::scene::E_SCENE_NODE_TYPE) const
; decoder-mode: arm
005893c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005893c4  cc 30 90 e5                                      ldr r3, [r0, #0xcc]
005893c8  d0 40 90 e5                                      ldr r4, [r0, #0xd0]
005893cc  00 60 a0 e1                                      mov r6, r0
005893d0  01 70 a0 e1                                      mov r7, r1
005893d4  04 40 63 e0                                      rsb r4, r3, r4
005893d8  44 41 a0 e1                                      asr r4, r4, #2
005893dc  01 40 44 e2                                      sub r4, r4, #1
005893e0  04 00 e0 e1                                      mvn r0, r4
005893e4  a0 0f a0 e1                                      lsr r0, r0, #0x1f
005893e8  00 00 50 e3                                      cmp r0, #0
005893ec  0d 00 00 0a                                      beq #0x589428
005893f0  04 51 a0 e1                                      lsl r5, r4, #2
005893f4  00 00 00 ea                                      b #0x5893fc
005893f8  cc 30 96 e5                                      ldr r3, [r6, #0xcc]
005893fc  05 30 93 e7                                      ldr r3, [r3, r5]
00589400  07 10 a0 e1                                      mov r1, r7
00589404  01 40 44 e2                                      sub r4, r4, #1
00589408  03 00 a0 e1                                      mov r0, r3
0058940c  00 30 93 e5                                      ldr r3, [r3]
00589410  0f e0 a0 e1                                      mov lr, pc
00589414  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00589418  00 00 54 e3                                      cmp r4, #0
0058941c  00 00 50 a3                                      cmpge r0, #0
00589420  04 50 45 e2                                      sub r5, r5, #4
00589424  f3 ff ff 0a                                      beq #0x5893f8
00589428  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0058942c, declared_size=120, range_size=120, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager12addSceneNodeEPKcPNS0_10ISceneNodeE
; demangled: glitch::scene::CSceneManager::addSceneNode(char const*, glitch::scene::ISceneNode*)
; decoder-mode: arm
0058942c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00589430  cc 30 90 e5                                      ldr r3, [r0, #0xcc]
00589434  d0 40 90 e5                                      ldr r4, [r0, #0xd0]
00589438  00 70 52 e2                                      subs r7, r2, #0
0058943c  04 70 90 05                                      ldreq r7, [r0, #4]
00589440  04 40 63 e0                                      rsb r4, r3, r4
00589444  44 41 a0 e1                                      asr r4, r4, #2
00589448  01 40 44 e2                                      sub r4, r4, #1
0058944c  00 60 a0 e1                                      mov r6, r0
00589450  04 00 e0 e1                                      mvn r0, r4
00589454  a0 0f a0 e1                                      lsr r0, r0, #0x1f
00589458  00 00 50 e3                                      cmp r0, #0
0058945c  01 80 a0 e1                                      mov r8, r1
00589460  0e 00 00 0a                                      beq #0x5894a0
00589464  04 51 a0 e1                                      lsl r5, r4, #2
00589468  00 00 00 ea                                      b #0x589470
0058946c  cc 30 96 e5                                      ldr r3, [r6, #0xcc]
00589470  05 30 93 e7                                      ldr r3, [r3, r5]
00589474  08 10 a0 e1                                      mov r1, r8
00589478  07 20 a0 e1                                      mov r2, r7
0058947c  03 00 a0 e1                                      mov r0, r3
00589480  00 30 93 e5                                      ldr r3, [r3]
00589484  0f e0 a0 e1                                      mov lr, pc
00589488  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0058948c  01 40 44 e2                                      sub r4, r4, #1
00589490  00 00 54 e3                                      cmp r4, #0
00589494  00 00 50 a3                                      cmpge r0, #0
00589498  04 50 45 e2                                      sub r5, r5, #4
0058949c  f2 ff ff 0a                                      beq #0x58946c
005894a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005894a4, declared_size=100, range_size=100, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZNK6glitch5scene13CSceneManager19getAnimatorTypeNameENS0_26E_SCENE_NODE_ANIMATOR_TYPEE
; demangled: glitch::scene::CSceneManager::getAnimatorTypeName(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE) const
; decoder-mode: arm
005894a4  70 40 2d e9                                      push {r4, r5, r6, lr}
005894a8  00 40 a0 e1                                      mov r4, r0
005894ac  d8 30 90 e5                                      ldr r3, [r0, #0xd8]
005894b0  dc 00 90 e5                                      ldr r0, [r0, #0xdc]
005894b4  01 60 a0 e1                                      mov r6, r1
005894b8  00 00 63 e0                                      rsb r0, r3, r0
005894bc  40 01 b0 e1                                      asrs r0, r0, #2
005894c0  00 50 a0 13                                      movne r5, #0
005894c4  07 00 00 0a                                      beq #0x5894e8
005894c8  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
005894cc  06 10 a0 e1                                      mov r1, r6
005894d0  03 00 a0 e1                                      mov r0, r3
005894d4  00 30 93 e5                                      ldr r3, [r3]
005894d8  0f e0 a0 e1                                      mov lr, pc
005894dc  20 f0 93 e5                                      ldr pc, [r3, #0x20]
005894e0  00 00 50 e3                                      cmp r0, #0
005894e4  00 00 00 0a                                      beq #0x5894ec
005894e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005894ec  d8 30 94 e5                                      ldr r3, [r4, #0xd8]
005894f0  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
005894f4  01 50 85 e2                                      add r5, r5, #1
005894f8  02 20 63 e0                                      rsb r2, r3, r2
005894fc  42 01 55 e1                                      cmp r5, r2, asr #2
00589500  f0 ff ff 3a                                      blo #0x5894c8
00589504  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00589508, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager15setAmbientLightERKNS_5video7SColorfE
; demangled: glitch::scene::CSceneManager::setAmbientLight(glitch::video::SColorf const&)
; decoder-mode: arm
00589508  41 cf 80 e2                                      add ip, r0, #0x104
0058950c  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
00589510  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00589514  1e ff 2f e1                                      bx lr

; FUNCTION 0x00589518, declared_size=32, range_size=32, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZNK6glitch5scene13CSceneManager22getCurrentRenderedNodeEPPvPi
; demangled: glitch::scene::CSceneManager::getCurrentRenderedNode(void**, int*) const
; decoder-mode: arm
00589518  00 00 51 e3                                      cmp r1, #0
0058951c  a0 30 90 15                                      ldrne r3, [r0, #0xa0]
00589520  00 30 81 15                                      strne r3, [r1]
00589524  00 00 52 e3                                      cmp r2, #0
00589528  a4 30 90 15                                      ldrne r3, [r0, #0xa4]
0058952c  00 30 82 15                                      strne r3, [r2]
00589530  9c 00 90 e5                                      ldr r0, [r0, #0x9c]
00589534  1e ff 2f e1                                      bx lr

; FUNCTION 0x00589538, declared_size=32, range_size=32, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZNK6glitch5scene13CSceneManager19getNextRenderedNodeEPPvPi
; demangled: glitch::scene::CSceneManager::getNextRenderedNode(void**, int*) const
; decoder-mode: arm
00589538  00 00 51 e3                                      cmp r1, #0
0058953c  ac 30 90 15                                      ldrne r3, [r0, #0xac]
00589540  00 30 81 15                                      strne r3, [r1]
00589544  00 00 52 e3                                      cmp r2, #0
00589548  b0 30 90 15                                      ldrne r3, [r0, #0xb0]
0058954c  00 30 82 15                                      strne r3, [r2]
00589550  a8 00 90 e5                                      ldr r0, [r0, #0xa8]
00589554  1e ff 2f e1                                      bx lr

; FUNCTION 0x00589558, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager16createMeshWriterENS0_17EMESH_WRITER_TYPEE
; demangled: glitch::scene::CSceneManager::createMeshWriter(glitch::scene::EMESH_WRITER_TYPE)
; decoder-mode: arm
00589558  00 00 a0 e3                                      mov r0, #0
0058955c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00589754, declared_size=128, range_size=128, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager26removeShadowReceiverTargetEN5boost13intrusive_ptrINS_5video8ITextureEEE
; demangled: glitch::scene::CSceneManager::removeShadowReceiverTarget(boost::intrusive_ptr<glitch::video::ITexture>)
; decoder-mode: arm
00589754  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00589758  90 40 90 e5                                      ldr r4, [r0, #0x90]
0058975c  94 30 90 e5                                      ldr r3, [r0, #0x94]
00589760  08 d0 4d e2                                      sub sp, sp, #8
00589764  00 50 a0 e1                                      mov r5, r0
00589768  03 00 54 e1                                      cmp r4, r3
0058976c  01 80 a0 e1                                      mov r8, r1
00589770  04 00 00 1a                                      bne #0x589788
00589774  14 00 00 ea                                      b #0x5897cc
00589778  94 30 95 e5                                      ldr r3, [r5, #0x94]
0058977c  04 40 84 e2                                      add r4, r4, #4
00589780  03 00 54 e1                                      cmp r4, r3
00589784  10 00 00 0a                                      beq #0x5897cc
00589788  00 30 94 e5                                      ldr r3, [r4]
0058978c  0c 60 93 e5                                      ldr r6, [r3, #0xc]
00589790  00 00 56 e3                                      cmp r6, #0
00589794  00 70 98 05                                      ldreq r7, [r8]
00589798  05 00 00 0a                                      beq #0x5897b4
0058979c  04 30 96 e5                                      ldr r3, [r6, #4]
005897a0  06 00 a0 e1                                      mov r0, r6
005897a4  01 30 83 e2                                      add r3, r3, #1
005897a8  04 30 86 e5                                      str r3, [r6, #4]
005897ac  00 70 98 e5                                      ldr r7, [r8]
005897b0  73 4f f6 eb                                      bl #0x31d584
005897b4  07 00 56 e1                                      cmp r6, r7
005897b8  ee ff ff 1a                                      bne #0x589778
005897bc  90 00 85 e2                                      add r0, r5, #0x90
005897c0  04 10 a0 e1                                      mov r1, r4
005897c4  04 20 8d e2                                      add r2, sp, #4
005897c8  c9 ff ff eb                                      bl #0x5896f4
005897cc  08 d0 8d e2                                      add sp, sp, #8
005897d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005897d4, declared_size=68, range_size=68, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager26removeShadowReceiverTargetEN5boost13intrusive_ptrINS0_21IShadowReceiverTargetEEE
; demangled: glitch::scene::CSceneManager::removeShadowReceiverTarget(boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>)
; decoder-mode: arm
005897d4  10 40 2d e9                                      push {r4, lr}
005897d8  00 40 a0 e1                                      mov r4, r0
005897dc  08 d0 4d e2                                      sub sp, sp, #8
005897e0  01 20 a0 e1                                      mov r2, r1
005897e4  04 30 8d e2                                      add r3, sp, #4
005897e8  94 10 94 e5                                      ldr r1, [r4, #0x94]
005897ec  90 00 90 e5                                      ldr r0, [r0, #0x90]
005897f0  5a ff ff eb                                      bl #0x589560
005897f4  94 30 94 e5                                      ldr r3, [r4, #0x94]
005897f8  00 10 a0 e1                                      mov r1, r0
005897fc  03 00 50 e1                                      cmp r0, r3
00589800  02 00 00 0a                                      beq #0x589810
00589804  90 00 84 e2                                      add r0, r4, #0x90
00589808  0d 20 a0 e1                                      mov r2, sp
0058980c  b8 ff ff eb                                      bl #0x5896f4
00589810  08 d0 8d e2                                      add sp, sp, #8
00589814  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00589888, declared_size=68, range_size=68, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager5clearEv
; demangled: glitch::scene::CSceneManager::clear()
; decoder-mode: arm
00589888  10 40 2d e9                                      push {r4, lr}
0058988c  04 30 90 e5                                      ldr r3, [r0, #4]
00589890  00 40 a0 e1                                      mov r4, r0
00589894  08 d0 4d e2                                      sub sp, sp, #8
00589898  03 00 a0 e1                                      mov r0, r3
0058989c  00 30 93 e5                                      ldr r3, [r3]
005898a0  0f e0 a0 e1                                      mov lr, pc
005898a4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
005898a8  90 10 94 e5                                      ldr r1, [r4, #0x90]
005898ac  94 20 94 e5                                      ldr r2, [r4, #0x94]
005898b0  02 00 51 e1                                      cmp r1, r2
005898b4  02 00 00 0a                                      beq #0x5898c4
005898b8  90 00 84 e2                                      add r0, r4, #0x90
005898bc  04 30 8d e2                                      add r3, sp, #4
005898c0  d4 ff ff eb                                      bl #0x589818
005898c4  08 d0 8d e2                                      add sp, sp, #8
005898c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00589b84, declared_size=124, range_size=124, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager9loadSceneEPKcPNS0_24ISceneUserDataSerializerE
; demangled: glitch::scene::CSceneManager::loadScene(char const*, glitch::scene::ISceneUserDataSerializer*)
; decoder-mode: arm
00589b84  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00589b88  20 30 90 e5                                      ldr r3, [r0, #0x20]
00589b8c  00 40 a0 e1                                      mov r4, r0
00589b90  02 60 a0 e1                                      mov r6, r2
00589b94  03 00 a0 e1                                      mov r0, r3
00589b98  00 30 93 e5                                      ldr r3, [r3]
00589b9c  01 70 a0 e1                                      mov r7, r1
00589ba0  0f e0 a0 e1                                      mov lr, pc
00589ba4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00589ba8  00 50 50 e2                                      subs r5, r0, #0
00589bac  0a 00 00 0a                                      beq #0x589bdc
00589bb0  00 30 94 e5                                      ldr r3, [r4]
00589bb4  06 20 a0 e1                                      mov r2, r6
00589bb8  05 10 a0 e1                                      mov r1, r5
00589bbc  04 00 a0 e1                                      mov r0, r4
00589bc0  0f e0 a0 e1                                      mov lr, pc
00589bc4  80 f0 93 e5                                      ldr pc, [r3, #0x80]
00589bc8  00 40 a0 e1                                      mov r4, r0
00589bcc  05 00 a0 e1                                      mov r0, r5
00589bd0  6b 4e f6 eb                                      bl #0x31d584
00589bd4  04 00 a0 e1                                      mov r0, r4
00589bd8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00589bdc  18 00 9f e5                                      ldr r0, [pc, #0x18]
00589be0  07 10 a0 e1                                      mov r1, r7
00589be4  03 20 a0 e3                                      mov r2, #3
00589be8  00 00 8f e0                                      add r0, pc, r0
00589bec  05 40 a0 e1                                      mov r4, r5
00589bf0  3c 04 02 eb                                      bl #0x60ace8
00589bf4  04 00 a0 e1                                      mov r0, r4
00589bf8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00589bfc  b8 58 35 00                                      .byte 0xb8, 0x58, 0x35, 0x00

; FUNCTION 0x00589d48, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager19getSceneNodeFromUIDEPKcPNS0_10ISceneNodeE
; demangled: glitch::scene::CSceneManager::getSceneNodeFromUID(char const*, glitch::scene::ISceneNode*)
; decoder-mode: arm
00589d48  00 00 52 e3                                      cmp r2, #0
00589d4c  04 20 90 05                                      ldreq r2, [r0, #4]
00589d50  02 00 a0 e1                                      mov r0, r2
00589d54  22 3a 00 ea                                      b #0x5985e4

; FUNCTION 0x00589d58, declared_size=144, range_size=144, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager20getSceneNodeFromNameEPKcPNS0_10ISceneNodeE
; demangled: glitch::scene::CSceneManager::getSceneNodeFromName(char const*, glitch::scene::ISceneNode*)
; decoder-mode: arm
00589d58  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00589d5c  00 70 52 e2                                      subs r7, r2, #0
00589d60  04 70 90 05                                      ldreq r7, [r0, #4]
00589d64  01 60 a0 e1                                      mov r6, r1
00589d68  00 50 a0 e1                                      mov r5, r0
00589d6c  00 30 97 e5                                      ldr r3, [r7]
00589d70  07 00 a0 e1                                      mov r0, r7
00589d74  0f e0 a0 e1                                      mov lr, pc
00589d78  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00589d7c  06 10 a0 e1                                      mov r1, r6
00589d80  58 12 f6 eb                                      bl #0x30e6e8
00589d84  00 00 50 e3                                      cmp r0, #0
00589d88  01 00 00 1a                                      bne #0x589d94
00589d8c  07 00 a0 e1                                      mov r0, r7
00589d90  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00589d94  f4 40 b7 e5                                      ldr r4, [r7, #0xf4]!
00589d98  07 00 54 e1                                      cmp r4, r7
00589d9c  03 00 00 1a                                      bne #0x589db0
00589da0  0e 00 00 ea                                      b #0x589de0
00589da4  00 40 94 e5                                      ldr r4, [r4]
00589da8  04 00 57 e1                                      cmp r7, r4
00589dac  0b 00 00 0a                                      beq #0x589de0
00589db0  00 30 95 e5                                      ldr r3, [r5]
00589db4  00 00 54 e3                                      cmp r4, #0
00589db8  04 20 44 e2                                      sub r2, r4, #4
00589dbc  18 30 93 e5                                      ldr r3, [r3, #0x18]
00589dc0  04 20 a0 01                                      moveq r2, r4
00589dc4  05 00 a0 e1                                      mov r0, r5
00589dc8  06 10 a0 e1                                      mov r1, r6
00589dcc  33 ff 2f e1                                      blx r3
00589dd0  00 00 50 e3                                      cmp r0, #0
00589dd4  f2 ff ff 0a                                      beq #0x589da4
00589dd8  00 70 a0 e1                                      mov r7, r0
00589ddc  ea ff ff ea                                      b #0x589d8c
00589de0  00 70 a0 e3                                      mov r7, #0
00589de4  e8 ff ff ea                                      b #0x589d8c

; FUNCTION 0x00589e18, declared_size=100, range_size=100, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager11setupCameraEv
; demangled: glitch::scene::CSceneManager::setupCamera()
; decoder-mode: arm
00589e18  10 40 2d e9                                      push {r4, lr}
00589e1c  e4 30 90 e5                                      ldr r3, [r0, #0xe4]
00589e20  00 20 a0 e3                                      mov r2, #0
00589e24  10 d0 4d e2                                      sub sp, sp, #0x10
00589e28  00 00 53 e3                                      cmp r3, #0
00589e2c  00 40 a0 e1                                      mov r4, r0
00589e30  f0 20 80 e5                                      str r2, [r0, #0xf0]
00589e34  e8 20 80 e5                                      str r2, [r0, #0xe8]
00589e38  ec 20 80 e5                                      str r2, [r0, #0xec]
00589e3c  0c 00 00 0a                                      beq #0x589e74
00589e40  03 00 a0 e1                                      mov r0, r3
00589e44  00 30 93 e5                                      ldr r3, [r3]
00589e48  0f e0 a0 e1                                      mov lr, pc
00589e4c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00589e50  e4 10 94 e5                                      ldr r1, [r4, #0xe4]
00589e54  04 00 8d e2                                      add r0, sp, #4
00589e58  c8 34 00 eb                                      bl #0x597180
00589e5c  08 20 9d e5                                      ldr r2, [sp, #8]
00589e60  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00589e64  04 10 9d e5                                      ldr r1, [sp, #4]
00589e68  ec 20 84 e5                                      str r2, [r4, #0xec]
00589e6c  f0 30 84 e5                                      str r3, [r4, #0xf0]
00589e70  e8 10 84 e5                                      str r1, [r4, #0xe8]
00589e74  10 d0 8d e2                                      add sp, sp, #0x10
00589e78  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00589e7c, declared_size=88, range_size=88, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager8drawInitEPNS_5video12IVideoDriverE
; demangled: glitch::scene::CSceneManager::drawInit(glitch::video::IVideoDriver*)
; decoder-mode: arm
00589e7c  70 40 2d e9                                      push {r4, r5, r6, lr}
00589e80  01 40 a0 e1                                      mov r4, r1
00589e84  40 10 9f e5                                      ldr r1, [pc, #0x40]
00589e88  45 5f 80 e2                                      add r5, r0, #0x114
00589e8c  14 40 80 e5                                      str r4, [r0, #0x14]
00589e90  00 20 a0 e3                                      mov r2, #0
00589e94  05 00 a0 e1                                      mov r0, r5
00589e98  01 10 8f e0                                      add r1, pc, r1
00589e9c  9e 84 ff eb                                      bl #0x56b11c
00589ea0  28 10 9f e5                                      ldr r1, [pc, #0x28]
00589ea4  00 30 94 e5                                      ldr r3, [r4]
00589ea8  05 00 a0 e1                                      mov r0, r5
00589eac  01 10 8f e0                                      add r1, pc, r1
00589eb0  a0 50 93 e5                                      ldr r5, [r3, #0xa0]
00589eb4  73 62 ff eb                                      bl #0x562888
00589eb8  80 10 a0 e3                                      mov r1, #0x80
00589ebc  00 20 a0 e1                                      mov r2, r0
00589ec0  04 00 a0 e1                                      mov r0, r4
00589ec4  35 ff 2f e1                                      blx r5
00589ec8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00589ecc  28 56 35 00 1c 56 35 00                          .byte 0x28, 0x56, 0x35, 0x00, 0x1c, 0x56, 0x35, 0x00

; FUNCTION 0x00589fa4, declared_size=204, range_size=204, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager25registerSceneNodesCompileEPNS0_10ISceneNodeE
; demangled: glitch::scene::CSceneManager::registerSceneNodesCompile(glitch::scene::ISceneNode*)
; decoder-mode: arm
00589fa4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00589fa8  00 50 51 e2                                      subs r5, r1, #0
00589fac  04 50 90 05                                      ldreq r5, [r0, #4]
00589fb0  05 00 a0 e1                                      mov r0, r5
00589fb4  b5 34 00 eb                                      bl #0x597290
00589fb8  04 60 95 e5                                      ldr r6, [r5, #4]
00589fbc  00 70 a0 e1                                      mov r7, r0
00589fc0  04 50 85 e2                                      add r5, r5, #4
00589fc4  00 40 a0 e1                                      mov r4, r0
00589fc8  00 00 55 e3                                      cmp r5, #0
00589fcc  05 30 a0 01                                      moveq r3, r5
00589fd0  04 30 45 12                                      subne r3, r5, #4
00589fd4  1c 31 93 e5                                      ldr r3, [r3, #0x11c]
00589fd8  01 00 13 e3                                      tst r3, #1
00589fdc  12 00 00 0a                                      beq #0x58a02c
00589fe0  00 00 55 e3                                      cmp r5, #0
00589fe4  05 30 a0 01                                      moveq r3, r5
00589fe8  04 30 45 12                                      subne r3, r5, #4
00589fec  03 00 a0 e1                                      mov r0, r3
00589ff0  00 30 93 e5                                      ldr r3, [r3]
00589ff4  0f e0 a0 e1                                      mov lr, pc
00589ff8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00589ffc  00 00 50 e3                                      cmp r0, #0
0058a000  09 00 00 0a                                      beq #0x58a02c
0058a004  00 00 55 e3                                      cmp r5, #0
0058a008  05 40 a0 01                                      moveq r4, r5
0058a00c  04 40 45 12                                      subne r4, r5, #4
0058a010  f4 50 94 e5                                      ldr r5, [r4, #0xf4]
0058a014  f4 60 84 e2                                      add r6, r4, #0xf4
0058a018  05 00 56 e1                                      cmp r6, r5
0058a01c  05 00 00 0a                                      beq #0x58a038
0058a020  07 00 54 e1                                      cmp r4, r7
0058a024  e7 ff ff 1a                                      bne #0x589fc8
0058a028  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058a02c  00 50 95 e5                                      ldr r5, [r5]
0058a030  05 00 56 e1                                      cmp r6, r5
0058a034  f9 ff ff 1a                                      bne #0x58a020
0058a038  04 00 57 e1                                      cmp r7, r4
0058a03c  0a 00 00 0a                                      beq #0x58a06c
0058a040  04 00 a0 e1                                      mov r0, r4
0058a044  91 34 00 eb                                      bl #0x597290
0058a048  04 50 94 e5                                      ldr r5, [r4, #4]
0058a04c  f4 60 80 e2                                      add r6, r0, #0xf4
0058a050  05 00 56 e1                                      cmp r6, r5
0058a054  00 40 a0 11                                      movne r4, r0
0058a058  f0 ff ff 1a                                      bne #0x58a020
0058a05c  00 00 57 e1                                      cmp r7, r0
0058a060  00 40 a0 e1                                      mov r4, r0
0058a064  f5 ff ff 1a                                      bne #0x58a040
0058a068  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058a06c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0058a7f0, declared_size=304, range_size=304, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager23addShadowReceiverTargetEN5boost13intrusive_ptrINS0_21IShadowReceiverTargetEEE
; demangled: glitch::scene::CSceneManager::addShadowReceiverTarget(boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>)
; decoder-mode: arm
0058a7f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0058a7f4  00 40 a0 e1                                      mov r4, r0
0058a7f8  08 d0 4d e2                                      sub sp, sp, #8
0058a7fc  01 50 a0 e1                                      mov r5, r1
0058a800  04 30 8d e2                                      add r3, sp, #4
0058a804  90 00 90 e5                                      ldr r0, [r0, #0x90]
0058a808  94 10 94 e5                                      ldr r1, [r4, #0x94]
0058a80c  05 20 a0 e1                                      mov r2, r5
0058a810  52 fb ff eb                                      bl #0x589560
0058a814  94 30 94 e5                                      ldr r3, [r4, #0x94]
0058a818  03 00 50 e1                                      cmp r0, r3
0058a81c  01 00 00 0a                                      beq #0x58a828
0058a820  08 d0 8d e2                                      add sp, sp, #8
0058a824  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058a828  98 60 94 e5                                      ldr r6, [r4, #0x98]
0058a82c  06 00 50 e1                                      cmp r0, r6
0058a830  09 00 00 0a                                      beq #0x58a85c
0058a834  00 30 95 e5                                      ldr r3, [r5]
0058a838  00 00 53 e3                                      cmp r3, #0
0058a83c  00 30 80 e5                                      str r3, [r0]
0058a840  04 20 93 15                                      ldrne r2, [r3, #4]
0058a844  01 20 82 12                                      addne r2, r2, #1
0058a848  04 20 83 15                                      strne r2, [r3, #4]
0058a84c  94 30 94 e5                                      ldr r3, [r4, #0x94]
0058a850  04 30 83 e2                                      add r3, r3, #4
0058a854  94 30 84 e5                                      str r3, [r4, #0x94]
0058a858  f0 ff ff ea                                      b #0x58a820
0058a85c  90 30 94 e5                                      ldr r3, [r4, #0x90]
0058a860  06 30 63 e0                                      rsb r3, r3, r6
0058a864  43 31 a0 e1                                      asr r3, r3, #2
0058a868  01 00 53 e3                                      cmp r3, #1
0058a86c  03 70 83 20                                      addhs r7, r3, r3
0058a870  01 70 83 32                                      addlo r7, r3, #1
0058a874  07 01 77 e3                                      cmn r7, #0xc0000001
0058a878  26 00 00 8a                                      bhi #0x58a918
0058a87c  07 00 53 e1                                      cmp r3, r7
0058a880  07 71 a0 91                                      lslls r7, r7, #2
0058a884  23 00 00 8a                                      bhi #0x58a918
0058a888  07 00 a0 e1                                      mov r0, r7
0058a88c  00 10 a0 e3                                      mov r1, #0
0058a890  34 17 f6 eb                                      bl #0x310568
0058a894  90 c0 94 e5                                      ldr ip, [r4, #0x90]
0058a898  00 80 a0 e1                                      mov r8, r0
0058a89c  06 60 6c e0                                      rsb r6, ip, r6
0058a8a0  46 61 a0 e1                                      asr r6, r6, #2
0058a8a4  00 00 56 e3                                      cmp r6, #0
0058a8a8  00 60 a0 d1                                      movle r6, r0
0058a8ac  0b 00 00 da                                      ble #0x58a8e0
0058a8b0  06 10 a0 e1                                      mov r1, r6
0058a8b4  00 20 a0 e3                                      mov r2, #0
0058a8b8  02 30 9c e7                                      ldr r3, [ip, r2]
0058a8bc  00 00 53 e3                                      cmp r3, #0
0058a8c0  02 30 88 e7                                      str r3, [r8, r2]
0058a8c4  04 00 93 15                                      ldrne r0, [r3, #4]
0058a8c8  04 20 82 e2                                      add r2, r2, #4
0058a8cc  01 00 80 12                                      addne r0, r0, #1
0058a8d0  04 00 83 15                                      strne r0, [r3, #4]
0058a8d4  01 10 51 e2                                      subs r1, r1, #1
0058a8d8  f6 ff ff 1a                                      bne #0x58a8b8
0058a8dc  06 61 88 e0                                      add r6, r8, r6, lsl #2
0058a8e0  00 30 95 e5                                      ldr r3, [r5]
0058a8e4  90 00 84 e2                                      add r0, r4, #0x90
0058a8e8  07 70 88 e0                                      add r7, r8, r7
0058a8ec  00 00 53 e3                                      cmp r3, #0
0058a8f0  00 30 86 e5                                      str r3, [r6]
0058a8f4  04 20 93 15                                      ldrne r2, [r3, #4]
0058a8f8  04 60 86 e2                                      add r6, r6, #4
0058a8fc  01 20 82 12                                      addne r2, r2, #1
0058a900  04 20 83 15                                      strne r2, [r3, #4]
0058a904  69 fc ff eb                                      bl #0x589ab0
0058a908  98 70 84 e5                                      str r7, [r4, #0x98]
0058a90c  94 60 84 e5                                      str r6, [r4, #0x94]
0058a910  90 80 84 e5                                      str r8, [r4, #0x90]
0058a914  c1 ff ff ea                                      b #0x58a820
0058a918  03 70 e0 e3                                      mvn r7, #3
0058a91c  d9 ff ff ea                                      b #0x58a888

; FUNCTION 0x0058ab28, declared_size=388, range_size=388, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZNK6glitch5scene13CSceneManager8isCulledEPKNS0_10ISceneNodeE
; demangled: glitch::scene::CSceneManager::isCulled(glitch::scene::ISceneNode const*) const
; decoder-mode: arm
0058ab28  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0058ab2c  50 32 d0 e5                                      ldrb r3, [r0, #0x250]
0058ab30  01 40 a0 e1                                      mov r4, r1
0058ab34  00 00 53 e3                                      cmp r3, #0
0058ab38  09 00 00 0a                                      beq #0x58ab64
0058ab3c  e4 50 90 e5                                      ldr r5, [r0, #0xe4]
0058ab40  00 00 55 e3                                      cmp r5, #0
0058ab44  06 00 00 0a                                      beq #0x58ab64
0058ab48  18 31 91 e5                                      ldr r3, [r1, #0x118]
0058ab4c  02 00 53 e3                                      cmp r3, #2
0058ab50  05 00 00 0a                                      beq #0x58ab6c
0058ab54  08 00 53 e3                                      cmp r3, #8
0058ab58  44 00 00 0a                                      beq #0x58ac70
0058ab5c  01 00 53 e3                                      cmp r3, #1
0058ab60  10 00 00 0a                                      beq #0x58aba8
0058ab64  00 00 a0 e3                                      mov r0, #0
0058ab68  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0058ab6c  00 30 95 e5                                      ldr r3, [r5]
0058ab70  05 00 a0 e1                                      mov r0, r5
0058ab74  0f e0 a0 e1                                      mov lr, pc
0058ab78  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0058ab7c  00 30 94 e5                                      ldr r3, [r4]
0058ab80  00 50 a0 e1                                      mov r5, r0
0058ab84  04 00 a0 e1                                      mov r0, r4
0058ab88  0f e0 a0 e1                                      mov lr, pc
0058ab8c  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0058ab90  00 10 a0 e1                                      mov r1, r0
0058ab94  05 00 a0 e1                                      mov r0, r5
0058ab98  ca 44 f7 eb                                      bl #0x35bec8
0058ab9c  01 00 20 e2                                      eor r0, r0, #1
0058aba0  70 00 ef e6                                      uxtb r0, r0
0058aba4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0058aba8  00 30 91 e5                                      ldr r3, [r1]
0058abac  01 00 a0 e1                                      mov r0, r1
0058abb0  0f e0 a0 e1                                      mov lr, pc
0058abb4  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0058abb8  00 30 95 e5                                      ldr r3, [r5]
0058abbc  00 20 a0 e1                                      mov r2, r0
0058abc0  05 00 a0 e1                                      mov r0, r5
0058abc4  00 90 92 e5                                      ldr sb, [r2]
0058abc8  14 80 92 e5                                      ldr r8, [r2, #0x14]
0058abcc  04 50 92 e5                                      ldr r5, [r2, #4]
0058abd0  08 70 92 e5                                      ldr r7, [r2, #8]
0058abd4  0c a0 92 e5                                      ldr sl, [r2, #0xc]
0058abd8  10 60 92 e5                                      ldr r6, [r2, #0x10]
0058abdc  0f e0 a0 e1                                      mov lr, pc
0058abe0  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0058abe4  00 40 a0 e1                                      mov r4, r0
0058abe8  78 10 94 e5                                      ldr r1, [r4, #0x78]
0058abec  09 00 a0 e1                                      mov r0, sb
0058abf0  6d 0f f6 eb                                      bl #0x30e9ac
0058abf4  00 00 50 e3                                      cmp r0, #0
0058abf8  1a 00 00 0a                                      beq #0x58ac68
0058abfc  05 00 a0 e1                                      mov r0, r5
0058ac00  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
0058ac04  68 0f f6 eb                                      bl #0x30e9ac
0058ac08  00 00 50 e3                                      cmp r0, #0
0058ac0c  15 00 00 0a                                      beq #0x58ac68
0058ac10  07 00 a0 e1                                      mov r0, r7
0058ac14  80 10 94 e5                                      ldr r1, [r4, #0x80]
0058ac18  63 0f f6 eb                                      bl #0x30e9ac
0058ac1c  00 00 50 e3                                      cmp r0, #0
0058ac20  10 00 00 0a                                      beq #0x58ac68
0058ac24  0a 00 a0 e1                                      mov r0, sl
0058ac28  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
0058ac2c  20 0e f6 eb                                      bl #0x30e4b4
0058ac30  00 00 50 e3                                      cmp r0, #0
0058ac34  0b 00 00 0a                                      beq #0x58ac68
0058ac38  06 00 a0 e1                                      mov r0, r6
0058ac3c  70 10 94 e5                                      ldr r1, [r4, #0x70]
0058ac40  1b 0e f6 eb                                      bl #0x30e4b4
0058ac44  00 00 50 e3                                      cmp r0, #0
0058ac48  06 00 00 0a                                      beq #0x58ac68
0058ac4c  08 00 a0 e1                                      mov r0, r8
0058ac50  74 10 94 e5                                      ldr r1, [r4, #0x74]
0058ac54  16 0e f6 eb                                      bl #0x30e4b4
0058ac58  00 00 50 e3                                      cmp r0, #0
0058ac5c  00 00 a0 e3                                      mov r0, #0
0058ac60  01 00 a0 13                                      movne r0, #1
0058ac64  0d 00 00 ea                                      b #0x58aca0
0058ac68  01 00 a0 e3                                      mov r0, #1
0058ac6c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0058ac70  00 30 95 e5                                      ldr r3, [r5]
0058ac74  05 00 a0 e1                                      mov r0, r5
0058ac78  0f e0 a0 e1                                      mov lr, pc
0058ac7c  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0058ac80  00 30 94 e5                                      ldr r3, [r4]
0058ac84  00 50 a0 e1                                      mov r5, r0
0058ac88  04 00 a0 e1                                      mov r0, r4
0058ac8c  0f e0 a0 e1                                      mov lr, pc
0058ac90  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0058ac94  00 10 a0 e1                                      mov r1, r0
0058ac98  05 00 a0 e1                                      mov r0, r5
0058ac9c  7a ff ff eb                                      bl #0x58aa8c
0058aca0  01 00 20 e2                                      eor r0, r0, #1
0058aca4  70 00 ef e6                                      uxtb r0, r0
0058aca8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0058ae20, declared_size=196, range_size=196, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager24registerSceneNodeFactoryEPNS0_17ISceneNodeFactoryE
; demangled: glitch::scene::CSceneManager::registerSceneNodeFactory(glitch::scene::ISceneNodeFactory*)
; decoder-mode: arm
0058ae20  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0058ae24  00 50 51 e2                                      subs r5, r1, #0
0058ae28  00 40 a0 e1                                      mov r4, r0
0058ae2c  0b 00 00 0a                                      beq #0x58ae60
0058ae30  04 30 95 e5                                      ldr r3, [r5, #4]
0058ae34  01 30 83 e2                                      add r3, r3, #1
0058ae38  04 30 85 e5                                      str r3, [r5, #4]
0058ae3c  d0 80 90 e5                                      ldr r8, [r0, #0xd0]
0058ae40  d4 30 90 e5                                      ldr r3, [r0, #0xd4]
0058ae44  03 00 58 e1                                      cmp r8, r3
0058ae48  05 00 00 0a                                      beq #0x58ae64
0058ae4c  00 50 88 e5                                      str r5, [r8]
0058ae50  d0 30 90 e5                                      ldr r3, [r0, #0xd0]
0058ae54  04 30 83 e2                                      add r3, r3, #4
0058ae58  d0 30 80 e5                                      str r3, [r0, #0xd0]
0058ae5c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058ae60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058ae64  cc 30 90 e5                                      ldr r3, [r0, #0xcc]
0058ae68  08 30 63 e0                                      rsb r3, r3, r8
0058ae6c  43 31 a0 e1                                      asr r3, r3, #2
0058ae70  01 00 53 e3                                      cmp r3, #1
0058ae74  03 70 83 20                                      addhs r7, r3, r3
0058ae78  01 70 83 32                                      addlo r7, r3, #1
0058ae7c  07 01 77 e3                                      cmn r7, #0xc0000001
0058ae80  13 00 00 9a                                      bls #0x58aed4
0058ae84  03 70 e0 e3                                      mvn r7, #3
0058ae88  00 10 a0 e3                                      mov r1, #0
0058ae8c  07 00 a0 e1                                      mov r0, r7
0058ae90  b4 15 f6 eb                                      bl #0x310568
0058ae94  cc 10 94 e5                                      ldr r1, [r4, #0xcc]
0058ae98  00 60 a0 e1                                      mov r6, r0
0058ae9c  01 80 58 e0                                      subs r8, r8, r1
0058aea0  00 80 a0 01                                      moveq r8, r0
0058aea4  02 00 00 0a                                      beq #0x58aeb4
0058aea8  08 20 a0 e1                                      mov r2, r8
0058aeac  21 0c f6 eb                                      bl #0x30df38
0058aeb0  08 80 80 e0                                      add r8, r0, r8
0058aeb4  04 50 88 e4                                      str r5, [r8], #4
0058aeb8  cc 00 94 e5                                      ldr r0, [r4, #0xcc]
0058aebc  07 70 86 e0                                      add r7, r6, r7
0058aec0  62 15 f6 eb                                      bl #0x310450
0058aec4  d4 70 84 e5                                      str r7, [r4, #0xd4]
0058aec8  d0 80 84 e5                                      str r8, [r4, #0xd0]
0058aecc  cc 60 84 e5                                      str r6, [r4, #0xcc]
0058aed0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058aed4  07 00 53 e1                                      cmp r3, r7
0058aed8  07 71 a0 91                                      lslls r7, r7, #2
0058aedc  e9 ff ff 9a                                      bls #0x58ae88
0058aee0  e7 ff ff ea                                      b #0x58ae84

; FUNCTION 0x0058b0a8, declared_size=680, range_size=680, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager19drawShadowReceiversEv
; demangled: glitch::scene::CSceneManager::drawShadowReceivers()
; decoder-mode: arm
0058b0a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0058b0ac  90 20 90 e5                                      ldr r2, [r0, #0x90]
0058b0b0  94 30 90 e5                                      ldr r3, [r0, #0x94]
0058b0b4  74 d0 4d e2                                      sub sp, sp, #0x74
0058b0b8  00 70 a0 e1                                      mov r7, r0
0058b0bc  03 00 52 e1                                      cmp r2, r3
0058b0c0  a0 00 00 0a                                      beq #0x58b348
0058b0c4  30 20 90 e5                                      ldr r2, [r0, #0x30]
0058b0c8  34 30 90 e5                                      ldr r3, [r0, #0x34]
0058b0cc  03 00 52 e1                                      cmp r2, r3
0058b0d0  9c 00 00 0a                                      beq #0x58b348
0058b0d4  e4 20 90 e5                                      ldr r2, [r0, #0xe4]
0058b0d8  14 20 8d e5                                      str r2, [sp, #0x14]
0058b0dc  00 30 92 e5                                      ldr r3, [r2]
0058b0e0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0058b0e4  03 30 82 e0                                      add r3, r2, r3
0058b0e8  04 20 93 e5                                      ldr r2, [r3, #4]
0058b0ec  01 20 82 e2                                      add r2, r2, #1
0058b0f0  04 20 83 e5                                      str r2, [r3, #4]
0058b0f4  14 30 90 e5                                      ldr r3, [r0, #0x14]
0058b0f8  03 00 a0 e1                                      mov r0, r3
0058b0fc  00 30 93 e5                                      ldr r3, [r3]
0058b100  0f e0 a0 e1                                      mov lr, pc
0058b104  d8 f0 93 e5                                      ldr pc, [r3, #0xd8]
0058b108  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0058b10c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0058b110  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0058b114  19 10 cd e5                                      strb r1, [sp, #0x19]
0058b118  1a 20 cd e5                                      strb r2, [sp, #0x1a]
0058b11c  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0058b120  18 00 cd e5                                      strb r0, [sp, #0x18]
0058b124  90 30 97 e5                                      ldr r3, [r7, #0x90]
0058b128  10 30 8d e5                                      str r3, [sp, #0x10]
0058b12c  94 30 97 e5                                      ldr r3, [r7, #0x94]
0058b130  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0058b134  03 00 5c e1                                      cmp ip, r3
0058b138  18 30 9d e5                                      ldr r3, [sp, #0x18]
0058b13c  6c 30 8d e5                                      str r3, [sp, #0x6c]
0058b140  72 00 00 0a                                      beq #0x58b310
0058b144  30 20 87 e2                                      add r2, r7, #0x30
0058b148  0c 20 8d e5                                      str r2, [sp, #0xc]
0058b14c  00 80 a0 e3                                      mov r8, #0
0058b150  24 a0 8d e2                                      add sl, sp, #0x24
0058b154  10 30 9d e5                                      ldr r3, [sp, #0x10]
0058b158  14 00 97 e5                                      ldr r0, [r7, #0x14]
0058b15c  00 50 93 e5                                      ldr r5, [r3]
0058b160  00 30 90 e5                                      ldr r3, [r0]
0058b164  1e e0 d5 e5                                      ldrb lr, [r5, #0x1e]
0058b168  1c 20 d5 e5                                      ldrb r2, [r5, #0x1c]
0058b16c  1f c0 d5 e5                                      ldrb ip, [r5, #0x1f]
0058b170  1d 10 d5 e5                                      ldrb r1, [r5, #0x1d]
0058b174  dc 30 93 e5                                      ldr r3, [r3, #0xdc]
0058b178  6a e0 cd e5                                      strb lr, [sp, #0x6a]
0058b17c  6b c0 cd e5                                      strb ip, [sp, #0x6b]
0058b180  68 20 cd e5                                      strb r2, [sp, #0x68]
0058b184  69 10 cd e5                                      strb r1, [sp, #0x69]
0058b188  68 10 9d e5                                      ldr r1, [sp, #0x68]
0058b18c  33 ff 2f e1                                      blx r3
0058b190  14 40 95 e5                                      ldr r4, [r5, #0x14]
0058b194  07 00 a0 e1                                      mov r0, r7
0058b198  04 10 a0 e1                                      mov r1, r4
0058b19c  c7 f7 ff eb                                      bl #0x5890c0
0058b1a0  05 00 a0 e1                                      mov r0, r5
0058b1a4  14 10 97 e5                                      ldr r1, [r7, #0x14]
0058b1a8  00 30 95 e5                                      ldr r3, [r5]
0058b1ac  0f e0 a0 e1                                      mov lr, pc
0058b1b0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0058b1b4  00 30 95 e5                                      ldr r3, [r5]
0058b1b8  05 00 a0 e1                                      mov r0, r5
0058b1bc  0f e0 a0 e1                                      mov lr, pc
0058b1c0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0058b1c4  00 90 50 e2                                      subs sb, r0, #0
0058b1c8  4a 00 00 da                                      ble #0x58b2f8
0058b1cc  01 b0 49 e2                                      sub fp, sb, #1
0058b1d0  00 60 a0 e3                                      mov r6, #0
0058b1d4  06 10 a0 e1                                      mov r1, r6
0058b1d8  05 00 a0 e1                                      mov r0, r5
0058b1dc  00 30 95 e5                                      ldr r3, [r5]
0058b1e0  0f e0 a0 e1                                      mov lr, pc
0058b1e4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0058b1e8  00 10 a0 e3                                      mov r1, #0
0058b1ec  00 30 94 e5                                      ldr r3, [r4]
0058b1f0  04 00 a0 e1                                      mov r0, r4
0058b1f4  0f e0 a0 e1                                      mov lr, pc
0058b1f8  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
0058b1fc  04 00 a0 e1                                      mov r0, r4
0058b200  1e e0 ff eb                                      bl #0x583280
0058b204  00 30 94 e5                                      ldr r3, [r4]
0058b208  04 00 a0 e1                                      mov r0, r4
0058b20c  0f e0 a0 e1                                      mov lr, pc
0058b210  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
0058b214  41 20 a0 e3                                      mov r2, #0x41
0058b218  00 10 a0 e1                                      mov r1, r0
0058b21c  0a 00 a0 e1                                      mov r0, sl
0058b220  64 80 cd e5                                      strb r8, [sp, #0x64]
0058b224  8f 0d f6 eb                                      bl #0x30e868
0058b228  24 00 9d e5                                      ldr r0, [sp, #0x24]
0058b22c  34 10 9d e5                                      ldr r1, [sp, #0x34]
0058b230  44 20 9d e5                                      ldr r2, [sp, #0x44]
0058b234  54 30 9d e5                                      ldr r3, [sp, #0x54]
0058b238  02 01 80 e2                                      add r0, r0, #0x80000000
0058b23c  02 11 81 e2                                      add r1, r1, #0x80000000
0058b240  02 21 82 e2                                      add r2, r2, #0x80000000
0058b244  02 31 83 e2                                      add r3, r3, #0x80000000
0058b248  24 00 8d e5                                      str r0, [sp, #0x24]
0058b24c  34 10 8d e5                                      str r1, [sp, #0x34]
0058b250  44 20 8d e5                                      str r2, [sp, #0x44]
0058b254  54 30 8d e5                                      str r3, [sp, #0x54]
0058b258  64 80 cd e5                                      strb r8, [sp, #0x64]
0058b25c  00 20 a0 e3                                      mov r2, #0
0058b260  04 00 a0 e1                                      mov r0, r4
0058b264  0a 10 a0 e1                                      mov r1, sl
0058b268  00 30 94 e5                                      ldr r3, [r4]
0058b26c  0f e0 a0 e1                                      mov lr, pc
0058b270  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
0058b274  04 00 a0 e1                                      mov r0, r4
0058b278  00 10 a0 e3                                      mov r1, #0
0058b27c  00 30 94 e5                                      ldr r3, [r4]
0058b280  0f e0 a0 e1                                      mov lr, pc
0058b284  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0058b288  05 00 a0 e1                                      mov r0, r5
0058b28c  14 10 97 e5                                      ldr r1, [r7, #0x14]
0058b290  00 30 95 e5                                      ldr r3, [r5]
0058b294  0f e0 a0 e1                                      mov lr, pc
0058b298  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0058b29c  14 30 97 e5                                      ldr r3, [r7, #0x14]
0058b2a0  03 10 a0 e3                                      mov r1, #3
0058b2a4  03 00 a0 e1                                      mov r0, r3
0058b2a8  00 30 93 e5                                      ldr r3, [r3]
0058b2ac  0f e0 a0 e1                                      mov lr, pc
0058b2b0  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
0058b2b4  0b 00 56 e1                                      cmp r6, fp
0058b2b8  00 30 a0 13                                      movne r3, #0
0058b2bc  01 30 a0 03                                      moveq r3, #1
0058b2c0  01 c0 a0 e3                                      mov ip, #1
0058b2c4  07 00 a0 e1                                      mov r0, r7
0058b2c8  07 10 a0 e3                                      mov r1, #7
0058b2cc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0058b2d0  00 c0 8d e5                                      str ip, [sp]
0058b2d4  01 60 86 e2                                      add r6, r6, #1
0058b2d8  01 ff ff eb                                      bl #0x58aee4
0058b2dc  00 30 95 e5                                      ldr r3, [r5]
0058b2e0  05 00 a0 e1                                      mov r0, r5
0058b2e4  14 10 97 e5                                      ldr r1, [r7, #0x14]
0058b2e8  0f e0 a0 e1                                      mov lr, pc
0058b2ec  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0058b2f0  06 00 59 e1                                      cmp sb, r6
0058b2f4  b6 ff ff 1a                                      bne #0x58b1d4
0058b2f8  10 20 9d e5                                      ldr r2, [sp, #0x10]
0058b2fc  94 30 97 e5                                      ldr r3, [r7, #0x94]
0058b300  04 20 82 e2                                      add r2, r2, #4
0058b304  03 00 52 e1                                      cmp r2, r3
0058b308  10 20 8d e5                                      str r2, [sp, #0x10]
0058b30c  90 ff ff 1a                                      bne #0x58b154
0058b310  14 30 97 e5                                      ldr r3, [r7, #0x14]
0058b314  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
0058b318  03 00 a0 e1                                      mov r0, r3
0058b31c  00 30 93 e5                                      ldr r3, [r3]
0058b320  0f e0 a0 e1                                      mov lr, pc
0058b324  dc f0 93 e5                                      ldr pc, [r3, #0xdc]
0058b328  07 00 a0 e1                                      mov r0, r7
0058b32c  14 10 9d e5                                      ldr r1, [sp, #0x14]
0058b330  62 f7 ff eb                                      bl #0x5890c0
0058b334  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0058b338  00 30 9c e5                                      ldr r3, [ip]
0058b33c  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0058b340  00 00 8c e0                                      add r0, ip, r0
0058b344  8e 48 f6 eb                                      bl #0x31d584
0058b348  74 d0 8d e2                                      add sp, sp, #0x74
0058b34c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0058b350, declared_size=124, range_size=124, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager17clearDeletionListEv
; demangled: glitch::scene::CSceneManager::clearDeletionList()
; decoder-mode: arm
0058b350  70 40 2d e9                                      push {r4, r5, r6, lr}
0058b354  c0 30 90 e5                                      ldr r3, [r0, #0xc0]
0058b358  c4 20 90 e5                                      ldr r2, [r0, #0xc4]
0058b35c  00 50 a0 e1                                      mov r5, r0
0058b360  02 00 53 e1                                      cmp r3, r2
0058b364  17 00 00 0a                                      beq #0x58b3c8
0058b368  02 20 63 e0                                      rsb r2, r3, r2
0058b36c  22 21 b0 e1                                      lsrs r2, r2, #2
0058b370  13 00 00 0a                                      beq #0x58b3c4
0058b374  00 40 a0 e3                                      mov r4, #0
0058b378  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0058b37c  03 00 a0 e1                                      mov r0, r3
0058b380  00 30 93 e5                                      ldr r3, [r3]
0058b384  0f e0 a0 e1                                      mov lr, pc
0058b388  68 f0 93 e5                                      ldr pc, [r3, #0x68]
0058b38c  c0 30 95 e5                                      ldr r3, [r5, #0xc0]
0058b390  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0058b394  01 40 84 e2                                      add r4, r4, #1
0058b398  00 20 93 e5                                      ldr r2, [r3]
0058b39c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0058b3a0  00 00 83 e0                                      add r0, r3, r0
0058b3a4  76 48 f6 eb                                      bl #0x31d584
0058b3a8  c4 20 95 e5                                      ldr r2, [r5, #0xc4]
0058b3ac  c0 30 95 e5                                      ldr r3, [r5, #0xc0]
0058b3b0  02 10 63 e0                                      rsb r1, r3, r2
0058b3b4  41 01 54 e1                                      cmp r4, r1, asr #2
0058b3b8  ee ff ff 3a                                      blo #0x58b378
0058b3bc  03 00 52 e1                                      cmp r2, r3
0058b3c0  00 00 00 0a                                      beq #0x58b3c8
0058b3c4  c4 30 85 e5                                      str r3, [r5, #0xc4]
0058b3c8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0058b4e0, declared_size=120, range_size=120, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager18addToDeletionQueueEPNS0_10ISceneNodeE
; demangled: glitch::scene::CSceneManager::addToDeletionQueue(glitch::scene::ISceneNode*)
; decoder-mode: arm
0058b4e0  04 e0 2d e5                                      str lr, [sp, #-4]!
0058b4e4  00 30 51 e2                                      subs r3, r1, #0
0058b4e8  1c d0 4d e2                                      sub sp, sp, #0x1c
0058b4ec  0c 10 8d e5                                      str r1, [sp, #0xc]
0058b4f0  0e 00 00 0a                                      beq #0x58b530
0058b4f4  00 20 93 e5                                      ldr r2, [r3]
0058b4f8  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0058b4fc  02 30 83 e0                                      add r3, r3, r2
0058b500  04 20 93 e5                                      ldr r2, [r3, #4]
0058b504  01 20 82 e2                                      add r2, r2, #1
0058b508  04 20 83 e5                                      str r2, [r3, #4]
0058b50c  c4 10 90 e5                                      ldr r1, [r0, #0xc4]
0058b510  c8 30 90 e5                                      ldr r3, [r0, #0xc8]
0058b514  03 00 51 e1                                      cmp r1, r3
0058b518  06 00 00 0a                                      beq #0x58b538
0058b51c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0058b520  00 30 81 e5                                      str r3, [r1]
0058b524  c4 30 90 e5                                      ldr r3, [r0, #0xc4]
0058b528  04 30 83 e2                                      add r3, r3, #4
0058b52c  c4 30 80 e5                                      str r3, [r0, #0xc4]
0058b530  1c d0 8d e2                                      add sp, sp, #0x1c
0058b534  00 80 bd e8                                      ldm sp!, {pc}
0058b538  01 c0 a0 e3                                      mov ip, #1
0058b53c  c0 00 80 e2                                      add r0, r0, #0xc0
0058b540  0c 20 8d e2                                      add r2, sp, #0xc
0058b544  14 30 8d e2                                      add r3, sp, #0x14
0058b548  04 c0 8d e5                                      str ip, [sp, #4]
0058b54c  00 c0 8d e5                                      str ip, [sp]
0058b550  9d ff ff eb                                      bl #0x58b3cc
0058b554  f5 ff ff ea                                      b #0x58b530

; FUNCTION 0x0058b558, declared_size=368, range_size=368, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager15collectAllNodesEPNS0_10ISceneNodeE
; demangled: glitch::scene::CSceneManager::collectAllNodes(glitch::scene::ISceneNode*)
; decoder-mode: arm
0058b558  70 40 2d e9                                      push {r4, r5, r6, lr}
0058b55c  18 d0 4d e2                                      sub sp, sp, #0x18
0058b560  0c 10 8d e5                                      str r1, [sp, #0xc]
0058b564  00 30 91 e5                                      ldr r3, [r1]
0058b568  00 40 a0 e1                                      mov r4, r0
0058b56c  01 00 a0 e1                                      mov r0, r1
0058b570  0f e0 a0 e1                                      mov lr, pc
0058b574  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
0058b578  65 3d 06 e3                                      movw r3, #0x6d65
0058b57c  74 39 47 e3                                      movt r3, #0x7974
0058b580  03 00 50 e1                                      cmp r0, r3
0058b584  23 00 00 0a                                      beq #0x58b618
0058b588  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0058b58c  03 00 a0 e1                                      mov r0, r3
0058b590  00 30 93 e5                                      ldr r3, [r3]
0058b594  0f e0 a0 e1                                      mov lr, pc
0058b598  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
0058b59c  64 3d 06 e3                                      movw r3, #0x6d64
0058b5a0  6d 39 47 e3                                      movt r3, #0x796d
0058b5a4  03 00 50 e1                                      cmp r0, r3
0058b5a8  1a 00 00 0a                                      beq #0x58b618
0058b5ac  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0058b5b0  03 00 a0 e1                                      mov r0, r3
0058b5b4  00 30 93 e5                                      ldr r3, [r3]
0058b5b8  0f e0 a0 e1                                      mov lr, pc
0058b5bc  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
0058b5c0  64 31 06 e3                                      movw r3, #0x6164
0058b5c4  65 3e 46 e3                                      movt r3, #0x6e65
0058b5c8  03 00 50 e1                                      cmp r0, r3
0058b5cc  11 00 00 0a                                      beq #0x58b618
0058b5d0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0058b5d4  03 00 a0 e1                                      mov r0, r3
0058b5d8  00 30 93 e5                                      ldr r3, [r3]
0058b5dc  0f e0 a0 e1                                      mov lr, pc
0058b5e0  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
0058b5e4  73 3d 06 e3                                      movw r3, #0x6d73
0058b5e8  67 32 47 e3                                      movt r3, #0x7267
0058b5ec  03 00 50 e1                                      cmp r0, r3
0058b5f0  08 00 00 0a                                      beq #0x58b618
0058b5f4  74 12 94 e5                                      ldr r1, [r4, #0x274]
0058b5f8  78 32 94 e5                                      ldr r3, [r4, #0x278]
0058b5fc  03 00 51 e1                                      cmp r1, r3
0058b600  28 00 00 0a                                      beq #0x58b6a8
0058b604  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0058b608  00 30 81 e5                                      str r3, [r1]
0058b60c  74 32 94 e5                                      ldr r3, [r4, #0x274]
0058b610  04 30 83 e2                                      add r3, r3, #4
0058b614  74 32 84 e5                                      str r3, [r4, #0x274]
0058b618  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0058b61c  9c 2e 00 eb                                      bl #0x597094
0058b620  00 30 90 e5                                      ldr r3, [r0]
0058b624  00 00 53 e1                                      cmp r3, r0
0058b628  08 00 00 0a                                      beq #0x58b650
0058b62c  80 12 94 e5                                      ldr r1, [r4, #0x280]
0058b630  84 32 94 e5                                      ldr r3, [r4, #0x284]
0058b634  03 00 51 e1                                      cmp r1, r3
0058b638  12 00 00 0a                                      beq #0x58b688
0058b63c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0058b640  00 30 81 e5                                      str r3, [r1]
0058b644  80 32 94 e5                                      ldr r3, [r4, #0x280]
0058b648  04 30 83 e2                                      add r3, r3, #4
0058b64c  80 32 84 e5                                      str r3, [r4, #0x280]
0058b650  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0058b654  f4 50 b6 e5                                      ldr r5, [r6, #0xf4]!
0058b658  06 00 55 e1                                      cmp r5, r6
0058b65c  07 00 00 0a                                      beq #0x58b680
0058b660  00 00 55 e3                                      cmp r5, #0
0058b664  05 10 a0 01                                      moveq r1, r5
0058b668  04 10 45 12                                      subne r1, r5, #4
0058b66c  04 00 a0 e1                                      mov r0, r4
0058b670  b8 ff ff eb                                      bl #0x58b558
0058b674  00 50 95 e5                                      ldr r5, [r5]
0058b678  05 00 56 e1                                      cmp r6, r5
0058b67c  f7 ff ff 1a                                      bne #0x58b660
0058b680  18 d0 8d e2                                      add sp, sp, #0x18
0058b684  70 80 bd e8                                      pop {r4, r5, r6, pc}
0058b688  01 c0 a0 e3                                      mov ip, #1
0058b68c  9f 0f 84 e2                                      add r0, r4, #0x27c
0058b690  0c 20 8d e2                                      add r2, sp, #0xc
0058b694  10 30 8d e2                                      add r3, sp, #0x10
0058b698  04 c0 8d e5                                      str ip, [sp, #4]
0058b69c  00 c0 8d e5                                      str ip, [sp]
0058b6a0  49 ff ff eb                                      bl #0x58b3cc
0058b6a4  e9 ff ff ea                                      b #0x58b650
0058b6a8  01 c0 a0 e3                                      mov ip, #1
0058b6ac  27 0e 84 e2                                      add r0, r4, #0x270
0058b6b0  0c 20 8d e2                                      add r2, sp, #0xc
0058b6b4  14 30 8d e2                                      add r3, sp, #0x14
0058b6b8  04 c0 8d e5                                      str ip, [sp, #4]
0058b6bc  00 c0 8d e5                                      str ip, [sp]
0058b6c0  41 ff ff eb                                      bl #0x58b3cc
0058b6c4  d3 ff ff ea                                      b #0x58b618

; FUNCTION 0x0058b6c8, declared_size=96, range_size=96, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager15collectAllNodesERKSt6vectorIPNS0_10ISceneNodeENS_4core10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::scene::CSceneManager::collectAllNodes(std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
0058b6c8  70 40 2d e9                                      push {r4, r5, r6, lr}
0058b6cc  70 32 90 e5                                      ldr r3, [r0, #0x270]
0058b6d0  74 22 90 e5                                      ldr r2, [r0, #0x274]
0058b6d4  00 50 a0 e1                                      mov r5, r0
0058b6d8  01 60 a0 e1                                      mov r6, r1
0058b6dc  02 00 53 e1                                      cmp r3, r2
0058b6e0  74 32 80 15                                      strne r3, [r0, #0x274]
0058b6e4  80 22 90 e5                                      ldr r2, [r0, #0x280]
0058b6e8  7c 32 90 e5                                      ldr r3, [r0, #0x27c]
0058b6ec  02 00 53 e1                                      cmp r3, r2
0058b6f0  80 32 80 15                                      strne r3, [r0, #0x280]
0058b6f4  00 40 91 e5                                      ldr r4, [r1]
0058b6f8  04 30 91 e5                                      ldr r3, [r1, #4]
0058b6fc  03 00 54 e1                                      cmp r4, r3
0058b700  05 00 00 0a                                      beq #0x58b71c
0058b704  04 10 94 e4                                      ldr r1, [r4], #4
0058b708  05 00 a0 e1                                      mov r0, r5
0058b70c  91 ff ff eb                                      bl #0x58b558
0058b710  04 30 96 e5                                      ldr r3, [r6, #4]
0058b714  03 00 54 e1                                      cmp r4, r3
0058b718  f9 ff ff 1a                                      bne #0x58b704
0058b71c  00 30 a0 e3                                      mov r3, #0
0058b720  88 32 c5 e5                                      strb r3, [r5, #0x288]
0058b724  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0058b728, declared_size=132, range_size=132, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager7drawAllERKSt6vectorIPNS0_10ISceneNodeENS_4core10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::scene::CSceneManager::drawAll(std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
0058b728  70 40 2d e9                                      push {r4, r5, r6, lr}
0058b72c  00 40 a0 e1                                      mov r4, r0
0058b730  01 50 a0 e1                                      mov r5, r1
0058b734  00 30 90 e5                                      ldr r3, [r0]
0058b738  14 10 90 e5                                      ldr r1, [r0, #0x14]
0058b73c  0f e0 a0 e1                                      mov lr, pc
0058b740  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0058b744  05 10 a0 e1                                      mov r1, r5
0058b748  04 00 a0 e1                                      mov r0, r4
0058b74c  dd ff ff eb                                      bl #0x58b6c8
0058b750  04 00 a0 e1                                      mov r0, r4
0058b754  00 30 94 e5                                      ldr r3, [r4]
0058b758  0f e0 a0 e1                                      mov lr, pc
0058b75c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0058b760  05 10 a0 e1                                      mov r1, r5
0058b764  04 00 a0 e1                                      mov r0, r4
0058b768  00 30 94 e5                                      ldr r3, [r4]
0058b76c  0f e0 a0 e1                                      mov lr, pc
0058b770  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0058b774  04 00 a0 e1                                      mov r0, r4
0058b778  00 30 94 e5                                      ldr r3, [r4]
0058b77c  0f e0 a0 e1                                      mov lr, pc
0058b780  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
0058b784  04 00 a0 e1                                      mov r0, r4
0058b788  00 30 94 e5                                      ldr r3, [r4]
0058b78c  14 10 94 e5                                      ldr r1, [r4, #0x14]
0058b790  0f e0 a0 e1                                      mov lr, pc
0058b794  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0058b798  09 30 a0 e3                                      mov r3, #9
0058b79c  45 0f 84 e2                                      add r0, r4, #0x114
0058b7a0  74 31 84 e5                                      str r3, [r4, #0x174]
0058b7a4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0058b7a8  eb fb ff ea                                      b #0x58a75c

; FUNCTION 0x0058b7ac, declared_size=72, range_size=72, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager15collectAllNodesEv
; demangled: glitch::scene::CSceneManager::collectAllNodes()
; decoder-mode: arm
0058b7ac  88 32 d0 e5                                      ldrb r3, [r0, #0x288]
0058b7b0  10 40 2d e9                                      push {r4, lr}
0058b7b4  00 00 53 e3                                      cmp r3, #0
0058b7b8  00 40 a0 e1                                      mov r4, r0
0058b7bc  0b 00 00 0a                                      beq #0x58b7f0
0058b7c0  70 32 90 e5                                      ldr r3, [r0, #0x270]
0058b7c4  74 22 90 e5                                      ldr r2, [r0, #0x274]
0058b7c8  02 00 53 e1                                      cmp r3, r2
0058b7cc  74 32 80 15                                      strne r3, [r0, #0x274]
0058b7d0  80 22 90 e5                                      ldr r2, [r0, #0x280]
0058b7d4  7c 32 90 e5                                      ldr r3, [r0, #0x27c]
0058b7d8  02 00 53 e1                                      cmp r3, r2
0058b7dc  80 32 80 15                                      strne r3, [r0, #0x280]
0058b7e0  04 10 94 e5                                      ldr r1, [r4, #4]
0058b7e4  5b ff ff eb                                      bl #0x58b558
0058b7e8  00 30 a0 e3                                      mov r3, #0
0058b7ec  88 32 c4 e5                                      strb r3, [r4, #0x288]
0058b7f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0058b7f4, declared_size=152, range_size=152, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager7drawAllEPNS0_10ISceneNodeE
; demangled: glitch::scene::CSceneManager::drawAll(glitch::scene::ISceneNode*)
; decoder-mode: arm
0058b7f4  70 40 2d e9                                      push {r4, r5, r6, lr}
0058b7f8  01 50 a0 e1                                      mov r5, r1
0058b7fc  00 30 90 e5                                      ldr r3, [r0]
0058b800  18 10 90 e5                                      ldr r1, [r0, #0x18]
0058b804  00 40 a0 e1                                      mov r4, r0
0058b808  0f e0 a0 e1                                      mov lr, pc
0058b80c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0058b810  00 00 55 e3                                      cmp r5, #0
0058b814  16 00 00 0a                                      beq #0x58b874
0058b818  04 00 a0 e1                                      mov r0, r4
0058b81c  00 30 94 e5                                      ldr r3, [r4]
0058b820  0f e0 a0 e1                                      mov lr, pc
0058b824  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0058b828  05 10 a0 e1                                      mov r1, r5
0058b82c  04 00 a0 e1                                      mov r0, r4
0058b830  00 30 94 e5                                      ldr r3, [r4]
0058b834  0f e0 a0 e1                                      mov lr, pc
0058b838  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0058b83c  04 00 a0 e1                                      mov r0, r4
0058b840  00 30 94 e5                                      ldr r3, [r4]
0058b844  0f e0 a0 e1                                      mov lr, pc
0058b848  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
0058b84c  04 00 a0 e1                                      mov r0, r4
0058b850  00 30 94 e5                                      ldr r3, [r4]
0058b854  18 10 94 e5                                      ldr r1, [r4, #0x18]
0058b858  0f e0 a0 e1                                      mov lr, pc
0058b85c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0058b860  09 30 a0 e3                                      mov r3, #9
0058b864  45 0f 84 e2                                      add r0, r4, #0x114
0058b868  74 31 84 e5                                      str r3, [r4, #0x174]
0058b86c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0058b870  b9 fb ff ea                                      b #0x58a75c
0058b874  88 32 d4 e5                                      ldrb r3, [r4, #0x288]
0058b878  00 00 53 e3                                      cmp r3, #0
0058b87c  e5 ff ff 0a                                      beq #0x58b818
0058b880  04 00 a0 e1                                      mov r0, r4
0058b884  c8 ff ff eb                                      bl #0x58b7ac
0058b888  e2 ff ff ea                                      b #0x58b818

; FUNCTION 0x0058b88c, declared_size=356, range_size=356, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager18registerSceneNodesEPNS0_10ISceneNodeE
; demangled: glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode*)
; decoder-mode: arm
0058b88c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0058b890  00 50 51 e2                                      subs r5, r1, #0
0058b894  00 80 a0 e1                                      mov r8, r0
0058b898  35 00 00 0a                                      beq #0x58b974
0058b89c  05 00 a0 e1                                      mov r0, r5
0058b8a0  7a 2e 00 eb                                      bl #0x597290
0058b8a4  04 60 95 e5                                      ldr r6, [r5, #4]
0058b8a8  00 70 a0 e1                                      mov r7, r0
0058b8ac  04 50 85 e2                                      add r5, r5, #4
0058b8b0  00 40 a0 e1                                      mov r4, r0
0058b8b4  00 00 55 e3                                      cmp r5, #0
0058b8b8  05 30 a0 01                                      moveq r3, r5
0058b8bc  04 30 45 12                                      subne r3, r5, #4
0058b8c0  1c 31 93 e5                                      ldr r3, [r3, #0x11c]
0058b8c4  01 00 13 e3                                      tst r3, #1
0058b8c8  19 00 00 0a                                      beq #0x58b934
0058b8cc  00 00 55 e3                                      cmp r5, #0
0058b8d0  05 10 a0 01                                      moveq r1, r5
0058b8d4  04 10 45 12                                      subne r1, r5, #4
0058b8d8  08 00 a0 e1                                      mov r0, r8
0058b8dc  91 fc ff eb                                      bl #0x58ab28
0058b8e0  00 00 50 e3                                      cmp r0, #0
0058b8e4  12 00 00 1a                                      bne #0x58b934
0058b8e8  00 00 55 e3                                      cmp r5, #0
0058b8ec  05 30 a0 01                                      moveq r3, r5
0058b8f0  04 30 45 12                                      subne r3, r5, #4
0058b8f4  03 00 a0 e1                                      mov r0, r3
0058b8f8  00 30 93 e5                                      ldr r3, [r3]
0058b8fc  0f e0 a0 e1                                      mov lr, pc
0058b900  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0058b904  00 00 50 e3                                      cmp r0, #0
0058b908  09 00 00 0a                                      beq #0x58b934
0058b90c  00 00 55 e3                                      cmp r5, #0
0058b910  05 40 a0 01                                      moveq r4, r5
0058b914  04 40 45 12                                      subne r4, r5, #4
0058b918  f4 50 94 e5                                      ldr r5, [r4, #0xf4]
0058b91c  f4 60 84 e2                                      add r6, r4, #0xf4
0058b920  05 00 56 e1                                      cmp r6, r5
0058b924  05 00 00 0a                                      beq #0x58b940
0058b928  07 00 54 e1                                      cmp r4, r7
0058b92c  e0 ff ff 1a                                      bne #0x58b8b4
0058b930  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058b934  00 50 95 e5                                      ldr r5, [r5]
0058b938  05 00 56 e1                                      cmp r6, r5
0058b93c  f9 ff ff 1a                                      bne #0x58b928
0058b940  04 00 57 e1                                      cmp r7, r4
0058b944  26 00 00 0a                                      beq #0x58b9e4
0058b948  04 00 a0 e1                                      mov r0, r4
0058b94c  4f 2e 00 eb                                      bl #0x597290
0058b950  04 50 94 e5                                      ldr r5, [r4, #4]
0058b954  f4 60 80 e2                                      add r6, r0, #0xf4
0058b958  05 00 56 e1                                      cmp r6, r5
0058b95c  00 40 a0 11                                      movne r4, r0
0058b960  f0 ff ff 1a                                      bne #0x58b928
0058b964  00 00 57 e1                                      cmp r7, r0
0058b968  00 40 a0 e1                                      mov r4, r0
0058b96c  f5 ff ff 1a                                      bne #0x58b948
0058b970  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058b974  88 32 d0 e5                                      ldrb r3, [r0, #0x288]
0058b978  00 00 53 e3                                      cmp r3, #0
0058b97c  19 00 00 1a                                      bne #0x58b9e8
0058b980  70 42 98 e5                                      ldr r4, [r8, #0x270]
0058b984  74 52 98 e5                                      ldr r5, [r8, #0x274]
0058b988  05 00 54 e1                                      cmp r4, r5
0058b98c  03 00 00 1a                                      bne #0x58b9a0
0058b990  f6 ff ff ea                                      b #0x58b970
0058b994  04 40 84 e2                                      add r4, r4, #4
0058b998  05 00 54 e1                                      cmp r4, r5
0058b99c  0f 00 00 0a                                      beq #0x58b9e0
0058b9a0  00 10 94 e5                                      ldr r1, [r4]
0058b9a4  1c 31 91 e5                                      ldr r3, [r1, #0x11c]
0058b9a8  01 00 13 e3                                      tst r3, #1
0058b9ac  f8 ff ff 0a                                      beq #0x58b994
0058b9b0  08 00 a0 e1                                      mov r0, r8
0058b9b4  5b fc ff eb                                      bl #0x58ab28
0058b9b8  00 00 50 e3                                      cmp r0, #0
0058b9bc  f4 ff ff 1a                                      bne #0x58b994
0058b9c0  00 30 94 e5                                      ldr r3, [r4]
0058b9c4  04 40 84 e2                                      add r4, r4, #4
0058b9c8  03 00 a0 e1                                      mov r0, r3
0058b9cc  00 30 93 e5                                      ldr r3, [r3]
0058b9d0  0f e0 a0 e1                                      mov lr, pc
0058b9d4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0058b9d8  05 00 54 e1                                      cmp r4, r5
0058b9dc  ef ff ff 1a                                      bne #0x58b9a0
0058b9e0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058b9e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058b9e8  6f ff ff eb                                      bl #0x58b7ac
0058b9ec  e3 ff ff ea                                      b #0x58b980

; FUNCTION 0x0058b9f0, declared_size=232, range_size=232, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager6updateEfb
; demangled: glitch::scene::CSceneManager::update(float, bool)
; decoder-mode: arm
0058b9f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0058b9f4  01 50 a0 e1                                      mov r5, r1
0058b9f8  32 13 a0 e3                                      mov r1, #0xc8000000
0058b9fc  00 40 a0 e1                                      mov r4, r0
0058ba00  ee 1a 41 e2                                      sub r1, r1, #0xee000
0058ba04  05 00 a0 e1                                      mov r0, r5
0058ba08  02 70 a0 e1                                      mov r7, r2
0058ba0c  5e 09 f6 eb                                      bl #0x30df8c
0058ba10  00 00 50 e3                                      cmp r0, #0
0058ba14  24 00 00 1a                                      bne #0x58baac
0058ba18  54 12 94 e5                                      ldr r1, [r4, #0x254]
0058ba1c  05 00 a0 e1                                      mov r0, r5
0058ba20  5f 0c f6 eb                                      bl #0x30eba4
0058ba24  54 02 84 e5                                      str r0, [r4, #0x254]
0058ba28  1c ca 0c eb                                      bl #0x8be2a0
0058ba2c  88 32 d4 e5                                      ldrb r3, [r4, #0x288]
0058ba30  00 60 a0 e1                                      mov r6, r0
0058ba34  00 00 53 e3                                      cmp r3, #0
0058ba38  23 00 00 1a                                      bne #0x58bacc
0058ba3c  00 00 57 e3                                      cmp r7, #0
0058ba40  12 00 00 0a                                      beq #0x58ba90
0058ba44  7c 32 94 e5                                      ldr r3, [r4, #0x27c]
0058ba48  80 22 94 e5                                      ldr r2, [r4, #0x280]
0058ba4c  02 20 63 e0                                      rsb r2, r3, r2
0058ba50  22 21 b0 e1                                      lsrs r2, r2, #2
0058ba54  13 00 00 0a                                      beq #0x58baa8
0058ba58  00 50 a0 e3                                      mov r5, #0
0058ba5c  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
0058ba60  06 10 a0 e1                                      mov r1, r6
0058ba64  01 50 85 e2                                      add r5, r5, #1
0058ba68  03 00 a0 e1                                      mov r0, r3
0058ba6c  00 30 93 e5                                      ldr r3, [r3]
0058ba70  0f e0 a0 e1                                      mov lr, pc
0058ba74  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0058ba78  7c 32 94 e5                                      ldr r3, [r4, #0x27c]
0058ba7c  80 22 94 e5                                      ldr r2, [r4, #0x280]
0058ba80  02 20 63 e0                                      rsb r2, r3, r2
0058ba84  42 01 55 e1                                      cmp r5, r2, asr #2
0058ba88  f3 ff ff 3a                                      blo #0x58ba5c
0058ba8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058ba90  04 30 94 e5                                      ldr r3, [r4, #4]
0058ba94  06 10 a0 e1                                      mov r1, r6
0058ba98  03 00 a0 e1                                      mov r0, r3
0058ba9c  00 30 93 e5                                      ldr r3, [r3]
0058baa0  0f e0 a0 e1                                      mov lr, pc
0058baa4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0058baa8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058baac  0c fd 01 eb                                      bl #0x60aee4
0058bab0  0a 0a f6 eb                                      bl #0x30e2e0
0058bab4  54 02 84 e5                                      str r0, [r4, #0x254]
0058bab8  f8 c9 0c eb                                      bl #0x8be2a0
0058babc  88 32 d4 e5                                      ldrb r3, [r4, #0x288]
0058bac0  00 60 a0 e1                                      mov r6, r0
0058bac4  00 00 53 e3                                      cmp r3, #0
0058bac8  db ff ff 0a                                      beq #0x58ba3c
0058bacc  04 00 a0 e1                                      mov r0, r4
0058bad0  35 ff ff eb                                      bl #0x58b7ac
0058bad4  d8 ff ff ea                                      b #0x58ba3c

; FUNCTION 0x0058bbc4, declared_size=440, range_size=440, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CSceneManager::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
0058bbc4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0058bbc8  98 51 9f e5                                      ldr r5, [pc, #0x198]
0058bbcc  98 91 9f e5                                      ldr sb, [pc, #0x198]
0058bbd0  04 80 90 e5                                      ldr r8, [r0, #4]
0058bbd4  05 50 8f e0                                      add r5, pc, r5
0058bbd8  09 30 95 e7                                      ldr r3, [r5, sb]
0058bbdc  58 d0 4d e2                                      sub sp, sp, #0x58
0058bbe0  88 21 9f e5                                      ldr r2, [pc, #0x188]
0058bbe4  00 30 93 e5                                      ldr r3, [r3]
0058bbe8  3c 70 8d e2                                      add r7, sp, #0x3c
0058bbec  02 20 8f e0                                      add r2, pc, r2
0058bbf0  54 30 8d e5                                      str r3, [sp, #0x54]
0058bbf4  00 c0 98 e5                                      ldr ip, [r8]
0058bbf8  00 30 91 e5                                      ldr r3, [r1]
0058bbfc  00 40 a0 e1                                      mov r4, r0
0058bc00  07 00 a0 e1                                      mov r0, r7
0058bc04  01 60 a0 e1                                      mov r6, r1
0058bc08  2c a0 9c e5                                      ldr sl, [ip, #0x2c]
0058bc0c  0f e0 a0 e1                                      mov lr, pc
0058bc10  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0058bc14  08 00 a0 e1                                      mov r0, r8
0058bc18  07 10 a0 e1                                      mov r1, r7
0058bc1c  3a ff 2f e1                                      blx sl
0058bc20  50 00 9d e5                                      ldr r0, [sp, #0x50]
0058bc24  07 00 50 e1                                      cmp r0, r7
0058bc28  02 00 00 0a                                      beq #0x58bc38
0058bc2c  00 00 50 e3                                      cmp r0, #0
0058bc30  00 00 00 0a                                      beq #0x58bc38
0058bc34  05 12 f6 eb                                      bl #0x310450
0058bc38  04 70 94 e5                                      ldr r7, [r4, #4]
0058bc3c  30 11 9f e5                                      ldr r1, [pc, #0x130]
0058bc40  00 30 96 e5                                      ldr r3, [r6]
0058bc44  00 20 97 e5                                      ldr r2, [r7]
0058bc48  01 10 8f e0                                      add r1, pc, r1
0058bc4c  06 00 a0 e1                                      mov r0, r6
0058bc50  50 80 92 e5                                      ldr r8, [r2, #0x50]
0058bc54  0f e0 a0 e1                                      mov lr, pc
0058bc58  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0058bc5c  00 10 a0 e1                                      mov r1, r0
0058bc60  07 00 a0 e1                                      mov r0, r7
0058bc64  38 ff 2f e1                                      blx r8
0058bc68  08 21 9f e5                                      ldr r2, [pc, #0x108]
0058bc6c  06 10 a0 e1                                      mov r1, r6
0058bc70  00 30 96 e5                                      ldr r3, [r6]
0058bc74  02 20 8f e0                                      add r2, pc, r2
0058bc78  0d 00 a0 e1                                      mov r0, sp
0058bc7c  0f e0 a0 e1                                      mov lr, pc
0058bc80  3c f1 93 e5                                      ldr pc, [r3, #0x13c]
0058bc84  0d 70 a0 e1                                      mov r7, sp
0058bc88  41 cf 84 e2                                      add ip, r4, #0x104
0058bc8c  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
0058bc90  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0058bc94  04 00 94 e5                                      ldr r0, [r4, #4]
0058bc98  00 60 a0 e3                                      mov r6, #0
0058bc9c  30 10 8d e2                                      add r1, sp, #0x30
0058bca0  00 30 90 e5                                      ldr r3, [r0]
0058bca4  fe 75 a0 e3                                      mov r7, #0x3f800000
0058bca8  a4 30 93 e5                                      ldr r3, [r3, #0xa4]
0058bcac  30 60 8d e5                                      str r6, [sp, #0x30]
0058bcb0  34 60 8d e5                                      str r6, [sp, #0x34]
0058bcb4  38 60 8d e5                                      str r6, [sp, #0x38]
0058bcb8  33 ff 2f e1                                      blx r3
0058bcbc  04 00 94 e5                                      ldr r0, [r4, #4]
0058bcc0  14 10 8d e2                                      add r1, sp, #0x14
0058bcc4  00 30 90 e5                                      ldr r3, [r0]
0058bcc8  9c 30 93 e5                                      ldr r3, [r3, #0x9c]
0058bccc  1c 60 8d e5                                      str r6, [sp, #0x1c]
0058bcd0  14 60 8d e5                                      str r6, [sp, #0x14]
0058bcd4  18 60 8d e5                                      str r6, [sp, #0x18]
0058bcd8  20 70 8d e5                                      str r7, [sp, #0x20]
0058bcdc  33 ff 2f e1                                      blx r3
0058bce0  04 00 94 e5                                      ldr r0, [r4, #4]
0058bce4  24 10 8d e2                                      add r1, sp, #0x24
0058bce8  00 30 90 e5                                      ldr r3, [r0]
0058bcec  94 30 93 e5                                      ldr r3, [r3, #0x94]
0058bcf0  2c 70 8d e5                                      str r7, [sp, #0x2c]
0058bcf4  24 70 8d e5                                      str r7, [sp, #0x24]
0058bcf8  28 70 8d e5                                      str r7, [sp, #0x28]
0058bcfc  33 ff 2f e1                                      blx r3
0058bd00  04 30 94 e5                                      ldr r3, [r4, #4]
0058bd04  01 10 a0 e3                                      mov r1, #1
0058bd08  03 00 a0 e1                                      mov r0, r3
0058bd0c  00 30 93 e5                                      ldr r3, [r3]
0058bd10  0f e0 a0 e1                                      mov lr, pc
0058bd14  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0058bd18  04 00 94 e5                                      ldr r0, [r4, #4]
0058bd1c  00 10 a0 e3                                      mov r1, #0
0058bd20  1d 2d 00 eb                                      bl #0x59719c
0058bd24  04 00 94 e5                                      ldr r0, [r4, #4]
0058bd28  00 10 a0 e3                                      mov r1, #0
0058bd2c  1c 2d 00 eb                                      bl #0x5971a4
0058bd30  04 30 94 e5                                      ldr r3, [r4, #4]
0058bd34  00 10 a0 e3                                      mov r1, #0
0058bd38  03 00 a0 e1                                      mov r0, r3
0058bd3c  00 30 93 e5                                      ldr r3, [r3]
0058bd40  0f e0 a0 e1                                      mov lr, pc
0058bd44  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
0058bd48  09 30 95 e7                                      ldr r3, [r5, sb]
0058bd4c  54 20 9d e5                                      ldr r2, [sp, #0x54]
0058bd50  00 30 93 e5                                      ldr r3, [r3]
0058bd54  03 00 52 e1                                      cmp r2, r3
0058bd58  01 00 00 1a                                      bne #0x58bd64
0058bd5c  58 d0 8d e2                                      add sp, sp, #0x58
0058bd60  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0058bd64  69 09 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0058bd68  bc 8e 40 00 ac 40 00 00 94 01 34 00 80 0b 34 00  .byte 0xbc, 0x8e, 0x40, 0x00, 0xac, 0x40, 0x00, 0x00, 0x94, 0x01, 0x34, 0x00, 0x80, 0x0b, 0x34, 0x00
0058bd78  1c 38 35 00                                      .byte 0x1c, 0x38, 0x35, 0x00

; FUNCTION 0x0058bdb0, declared_size=728, range_size=728, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager7getMeshEPNS_2io9IReadFileE
; demangled: glitch::scene::CSceneManager::getMesh(glitch::io::IReadFile*)
; decoder-mode: arm
0058bdb0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0058bdb4  bc 82 9f e5                                      ldr r8, [pc, #0x2bc]
0058bdb8  bc b2 9f e5                                      ldr fp, [pc, #0x2bc]
0058bdbc  3c d0 4d e2                                      sub sp, sp, #0x3c
0058bdc0  08 80 8f e0                                      add r8, pc, r8
0058bdc4  0b 30 98 e7                                      ldr r3, [r8, fp]
0058bdc8  00 60 52 e2                                      subs r6, r2, #0
0058bdcc  00 90 a0 e1                                      mov sb, r0
0058bdd0  00 30 93 e5                                      ldr r3, [r3]
0058bdd4  01 70 a0 e1                                      mov r7, r1
0058bdd8  34 30 8d e5                                      str r3, [sp, #0x34]
0058bddc  00 60 80 05                                      streq r6, [r0]
0058bde0  28 00 00 0a                                      beq #0x58be88
0058bde4  00 30 96 e5                                      ldr r3, [r6]
0058bde8  06 00 a0 e1                                      mov r0, r6
0058bdec  0f e0 a0 e1                                      mov lr, pc
0058bdf0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0058bdf4  1c 20 8d e2                                      add r2, sp, #0x1c
0058bdf8  08 20 8d e5                                      str r2, [sp, #8]
0058bdfc  00 10 a0 e1                                      mov r1, r0
0058be00  18 20 8d e2                                      add r2, sp, #0x18
0058be04  08 00 9d e5                                      ldr r0, [sp, #8]
0058be08  8b 68 f6 eb                                      bl #0x32603c
0058be0c  70 51 97 e5                                      ldr r5, [r7, #0x170]
0058be10  14 10 8d e2                                      add r1, sp, #0x14
0058be14  00 30 96 e5                                      ldr r3, [r6]
0058be18  00 20 95 e5                                      ldr r2, [r5]
0058be1c  06 00 a0 e1                                      mov r0, r6
0058be20  04 10 8d e5                                      str r1, [sp, #4]
0058be24  28 40 92 e5                                      ldr r4, [r2, #0x28]
0058be28  0f e0 a0 e1                                      mov lr, pc
0058be2c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0058be30  05 10 a0 e1                                      mov r1, r5
0058be34  00 20 a0 e1                                      mov r2, r0
0058be38  04 00 9d e5                                      ldr r0, [sp, #4]
0058be3c  34 ff 2f e1                                      blx r4
0058be40  14 30 9d e5                                      ldr r3, [sp, #0x14]
0058be44  00 00 53 e3                                      cmp r3, #0
0058be48  16 00 00 0a                                      beq #0x58bea8
0058be4c  00 30 89 e5                                      str r3, [sb]
0058be50  04 20 93 e5                                      ldr r2, [r3, #4]
0058be54  01 20 82 e2                                      add r2, r2, #1
0058be58  04 20 83 e5                                      str r2, [r3, #4]
0058be5c  14 00 9d e5                                      ldr r0, [sp, #0x14]
0058be60  00 00 50 e3                                      cmp r0, #0
0058be64  00 00 00 0a                                      beq #0x58be6c
0058be68  c5 45 f6 eb                                      bl #0x31d584
0058be6c  30 00 9d e5                                      ldr r0, [sp, #0x30]
0058be70  08 30 9d e5                                      ldr r3, [sp, #8]
0058be74  03 00 50 e1                                      cmp r0, r3
0058be78  02 00 00 0a                                      beq #0x58be88
0058be7c  00 00 50 e3                                      cmp r0, #0
0058be80  00 00 00 0a                                      beq #0x58be88
0058be84  71 11 f6 eb                                      bl #0x310450
0058be88  0b 30 98 e7                                      ldr r3, [r8, fp]
0058be8c  34 20 9d e5                                      ldr r2, [sp, #0x34]
0058be90  09 00 a0 e1                                      mov r0, sb
0058be94  00 30 93 e5                                      ldr r3, [r3]
0058be98  03 00 52 e1                                      cmp r2, r3
0058be9c  74 00 00 1a                                      bne #0x58c074
0058bea0  3c d0 8d e2                                      add sp, sp, #0x3c
0058bea4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0058bea8  30 10 9d e5                                      ldr r1, [sp, #0x30]
0058beac  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0058beb0  01 00 52 e1                                      cmp r2, r1
0058beb4  0e 00 00 0a                                      beq #0x58bef4
0058beb8  03 20 d1 e7                                      ldrb r2, [r1, r3]
0058bebc  03 10 81 e0                                      add r1, r1, r3
0058bec0  01 30 83 e2                                      add r3, r3, #1
0058bec4  72 00 ef e6                                      uxtb r0, r2
0058bec8  41 c0 40 e2                                      sub ip, r0, #0x41
0058becc  7c c0 ef e6                                      uxtb ip, ip
0058bed0  19 00 5c e3                                      cmp ip, #0x19
0058bed4  20 20 80 92                                      addls r2, r0, #0x20
0058bed8  72 20 ef 96                                      uxtbls r2, r2
0058bedc  00 20 c1 e5                                      strb r2, [r1]
0058bee0  30 10 9d e5                                      ldr r1, [sp, #0x30]
0058bee4  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0058bee8  02 20 61 e0                                      rsb r2, r1, r2
0058beec  02 00 53 e1                                      cmp r3, r2
0058bef0  f0 ff ff 3a                                      blo #0x58beb8
0058bef4  b4 30 97 e5                                      ldr r3, [r7, #0xb4]
0058bef8  b8 a0 97 e5                                      ldr sl, [r7, #0xb8]
0058befc  0a a0 63 e0                                      rsb sl, r3, sl
0058bf00  4a a1 a0 e1                                      asr sl, sl, #2
0058bf04  01 40 5a e2                                      subs r4, sl, #1
0058bf08  3b 00 00 4a                                      bmi #0x58bffc
0058bf0c  10 20 8d e2                                      add r2, sp, #0x10
0058bf10  04 41 a0 e1                                      lsl r4, r4, #2
0058bf14  00 50 a0 e3                                      mov r5, #0
0058bf18  0c 20 8d e5                                      str r2, [sp, #0xc]
0058bf1c  05 00 00 ea                                      b #0x58bf38
0058bf20  01 50 85 e2                                      add r5, r5, #1
0058bf24  0a 00 55 e1                                      cmp r5, sl
0058bf28  04 40 44 e2                                      sub r4, r4, #4
0058bf2c  32 00 00 0a                                      beq #0x58bffc
0058bf30  b4 30 97 e5                                      ldr r3, [r7, #0xb4]
0058bf34  30 10 9d e5                                      ldr r1, [sp, #0x30]
0058bf38  04 30 93 e7                                      ldr r3, [r3, r4]
0058bf3c  03 00 a0 e1                                      mov r0, r3
0058bf40  00 30 93 e5                                      ldr r3, [r3]
0058bf44  0f e0 a0 e1                                      mov lr, pc
0058bf48  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0058bf4c  00 00 50 e3                                      cmp r0, #0
0058bf50  f2 ff ff 0a                                      beq #0x58bf20
0058bf54  00 10 a0 e3                                      mov r1, #0
0058bf58  01 20 a0 e1                                      mov r2, r1
0058bf5c  00 30 96 e5                                      ldr r3, [r6]
0058bf60  06 00 a0 e1                                      mov r0, r6
0058bf64  0f e0 a0 e1                                      mov lr, pc
0058bf68  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0058bf6c  b4 30 97 e5                                      ldr r3, [r7, #0xb4]
0058bf70  06 20 a0 e1                                      mov r2, r6
0058bf74  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0058bf78  04 30 93 e7                                      ldr r3, [r3, r4]
0058bf7c  03 10 a0 e1                                      mov r1, r3
0058bf80  00 30 93 e5                                      ldr r3, [r3]
0058bf84  0f e0 a0 e1                                      mov lr, pc
0058bf88  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0058bf8c  10 30 9d e5                                      ldr r3, [sp, #0x10]
0058bf90  00 00 53 e3                                      cmp r3, #0
0058bf94  04 20 93 15                                      ldrne r2, [r3, #4]
0058bf98  01 20 82 12                                      addne r2, r2, #1
0058bf9c  04 20 83 15                                      strne r2, [r3, #4]
0058bfa0  14 00 9d e5                                      ldr r0, [sp, #0x14]
0058bfa4  14 30 8d e5                                      str r3, [sp, #0x14]
0058bfa8  00 00 50 e3                                      cmp r0, #0
0058bfac  00 00 00 0a                                      beq #0x58bfb4
0058bfb0  73 45 f6 eb                                      bl #0x31d584
0058bfb4  10 00 9d e5                                      ldr r0, [sp, #0x10]
0058bfb8  00 00 50 e3                                      cmp r0, #0
0058bfbc  00 00 00 0a                                      beq #0x58bfc4
0058bfc0  6f 45 f6 eb                                      bl #0x31d584
0058bfc4  14 30 9d e5                                      ldr r3, [sp, #0x14]
0058bfc8  00 00 53 e3                                      cmp r3, #0
0058bfcc  d3 ff ff 0a                                      beq #0x58bf20
0058bfd0  70 51 97 e5                                      ldr r5, [r7, #0x170]
0058bfd4  00 30 96 e5                                      ldr r3, [r6]
0058bfd8  06 00 a0 e1                                      mov r0, r6
0058bfdc  00 20 95 e5                                      ldr r2, [r5]
0058bfe0  0c 40 92 e5                                      ldr r4, [r2, #0xc]
0058bfe4  0f e0 a0 e1                                      mov lr, pc
0058bfe8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0058bfec  04 20 9d e5                                      ldr r2, [sp, #4]
0058bff0  00 10 a0 e1                                      mov r1, r0
0058bff4  05 00 a0 e1                                      mov r0, r5
0058bff8  34 ff 2f e1                                      blx r4
0058bffc  14 30 9d e5                                      ldr r3, [sp, #0x14]
0058c000  00 00 53 e3                                      cmp r3, #0
0058c004  10 00 00 0a                                      beq #0x58c04c
0058c008  06 00 a0 e1                                      mov r0, r6
0058c00c  00 30 96 e5                                      ldr r3, [r6]
0058c010  0f e0 a0 e1                                      mov lr, pc
0058c014  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0058c018  00 10 a0 e1                                      mov r1, r0
0058c01c  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
0058c020  01 20 a0 e3                                      mov r2, #1
0058c024  00 00 8f e0                                      add r0, pc, r0
0058c028  2e fb 01 eb                                      bl #0x60ace8
0058c02c  14 00 9d e5                                      ldr r0, [sp, #0x14]
0058c030  00 00 50 e3                                      cmp r0, #0
0058c034  00 00 89 e5                                      str r0, [sb]
0058c038  04 30 90 15                                      ldrne r3, [r0, #4]
0058c03c  01 30 83 12                                      addne r3, r3, #1
0058c040  04 30 80 15                                      strne r3, [r0, #4]
0058c044  14 00 9d 15                                      ldrne r0, [sp, #0x14]
0058c048  84 ff ff ea                                      b #0x58be60
0058c04c  06 00 a0 e1                                      mov r0, r6
0058c050  00 30 96 e5                                      ldr r3, [r6]
0058c054  0f e0 a0 e1                                      mov lr, pc
0058c058  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0058c05c  00 10 a0 e1                                      mov r1, r0
0058c060  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
0058c064  03 20 a0 e3                                      mov r2, #3
0058c068  00 00 8f e0                                      add r0, pc, r0
0058c06c  1d fb 01 eb                                      bl #0x60ace8
0058c070  ed ff ff ea                                      b #0x58c02c
0058c074  a5 08 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0058c078  d0 8c 40 00 ac 40 00 00 14 35 35 00 90 34 35 00  .byte 0xd0, 0x8c, 0x40, 0x00, 0xac, 0x40, 0x00, 0x00, 0x14, 0x35, 0x35, 0x00, 0x90, 0x34, 0x35, 0x00

; FUNCTION 0x0058c3cc, declared_size=216, range_size=216, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager21getSceneNodesFromTypeENS0_17E_SCENE_NODE_TYPEERSt6vectorIPNS0_10ISceneNodeENS_4core10SAllocatorIS5_LNS_6memory13E_MEMORY_HINTE0EEEES5_
; demangled: glitch::scene::CSceneManager::getSceneNodesFromType(glitch::scene::E_SCENE_NODE_TYPE, std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> >&, glitch::scene::ISceneNode*)
; decoder-mode: arm
0058c3cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0058c3d0  18 d0 4d e2                                      sub sp, sp, #0x18
0058c3d4  00 c0 53 e2                                      subs ip, r3, #0
0058c3d8  0c 30 8d e5                                      str r3, [sp, #0xc]
0058c3dc  04 c0 90 05                                      ldreq ip, [r0, #4]
0058c3e0  00 50 a0 e1                                      mov r5, r0
0058c3e4  01 70 a0 e1                                      mov r7, r1
0058c3e8  0c c0 8d 05                                      streq ip, [sp, #0xc]
0058c3ec  0c 00 a0 e1                                      mov r0, ip
0058c3f0  00 30 9c e5                                      ldr r3, [ip]
0058c3f4  02 80 a0 e1                                      mov r8, r2
0058c3f8  0f e0 a0 e1                                      mov lr, pc
0058c3fc  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
0058c400  07 00 50 e1                                      cmp r0, r7
0058c404  15 00 00 0a                                      beq #0x58c460
0058c408  61 3e 06 e3                                      movw r3, #0x6e61
0058c40c  79 3f 45 e3                                      movt r3, #0x5f79
0058c410  03 00 57 e1                                      cmp r7, r3
0058c414  11 00 00 0a                                      beq #0x58c460
0058c418  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0058c41c  f4 40 b6 e5                                      ldr r4, [r6, #0xf4]!
0058c420  06 00 54 e1                                      cmp r4, r6
0058c424  0b 00 00 0a                                      beq #0x58c458
0058c428  00 20 95 e5                                      ldr r2, [r5]
0058c42c  00 00 54 e3                                      cmp r4, #0
0058c430  04 30 44 e2                                      sub r3, r4, #4
0058c434  20 c0 92 e5                                      ldr ip, [r2, #0x20]
0058c438  04 30 a0 01                                      moveq r3, r4
0058c43c  05 00 a0 e1                                      mov r0, r5
0058c440  07 10 a0 e1                                      mov r1, r7
0058c444  08 20 a0 e1                                      mov r2, r8
0058c448  3c ff 2f e1                                      blx ip
0058c44c  00 40 94 e5                                      ldr r4, [r4]
0058c450  04 00 56 e1                                      cmp r6, r4
0058c454  f3 ff ff 1a                                      bne #0x58c428
0058c458  18 d0 8d e2                                      add sp, sp, #0x18
0058c45c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058c460  0a 00 98 e9                                      ldmib r8, {r1, r3}
0058c464  03 00 51 e1                                      cmp r1, r3
0058c468  05 00 00 0a                                      beq #0x58c484
0058c46c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0058c470  00 30 81 e5                                      str r3, [r1]
0058c474  04 30 98 e5                                      ldr r3, [r8, #4]
0058c478  04 30 83 e2                                      add r3, r3, #4
0058c47c  04 30 88 e5                                      str r3, [r8, #4]
0058c480  e4 ff ff ea                                      b #0x58c418
0058c484  01 c0 a0 e3                                      mov ip, #1
0058c488  08 00 a0 e1                                      mov r0, r8
0058c48c  0c 20 8d e2                                      add r2, sp, #0xc
0058c490  14 30 8d e2                                      add r3, sp, #0x14
0058c494  04 c0 8d e5                                      str ip, [sp, #4]
0058c498  00 c0 8d e5                                      str ip, [sp]
0058c49c  ca fb ff eb                                      bl #0x58b3cc
0058c4a0  dc ff ff ea                                      b #0x58c418

; FUNCTION 0x0058c4a4, declared_size=416, range_size=416, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager12readUserDataEPNS_2io13IIrrXMLReaderIwNS_17IReferenceCountedEEEPNS0_10ISceneNodeEPNS0_24ISceneUserDataSerializerE
; demangled: glitch::scene::CSceneManager::readUserData(glitch::io::IIrrXMLReader<wchar_t, glitch::IReferenceCounted>*, glitch::scene::ISceneNode*, glitch::scene::ISceneUserDataSerializer*)
; decoder-mode: arm
0058c4a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0058c4a8  8c 71 9f e5                                      ldr r7, [pc, #0x18c]
0058c4ac  8c 81 9f e5                                      ldr r8, [pc, #0x18c]
0058c4b0  bc d0 4d e2                                      sub sp, sp, #0xbc
0058c4b4  0c 20 8d e5                                      str r2, [sp, #0xc]
0058c4b8  a0 20 8d e2                                      add r2, sp, #0xa0
0058c4bc  04 00 8d e5                                      str r0, [sp, #4]
0058c4c0  01 40 a0 e1                                      mov r4, r1
0058c4c4  08 30 8d e5                                      str r3, [sp, #8]
0058c4c8  07 70 8f e0                                      add r7, pc, r7
0058c4cc  08 80 8f e0                                      add r8, pc, r8
0058c4d0  10 60 8d e2                                      add r6, sp, #0x10
0058c4d4  b0 90 8d e2                                      add sb, sp, #0xb0
0058c4d8  00 20 8d e5                                      str r2, [sp]
0058c4dc  58 50 8d e2                                      add r5, sp, #0x58
0058c4e0  b4 b0 8d e2                                      add fp, sp, #0xb4
0058c4e4  00 30 94 e5                                      ldr r3, [r4]
0058c4e8  04 00 a0 e1                                      mov r0, r4
0058c4ec  0f e0 a0 e1                                      mov lr, pc
0058c4f0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0058c4f4  00 00 50 e3                                      cmp r0, #0
0058c4f8  1c 00 00 0a                                      beq #0x58c570
0058c4fc  00 30 94 e5                                      ldr r3, [r4]
0058c500  04 00 a0 e1                                      mov r0, r4
0058c504  0f e0 a0 e1                                      mov lr, pc
0058c508  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0058c50c  00 30 94 e5                                      ldr r3, [r4]
0058c510  00 a0 a0 e1                                      mov sl, r0
0058c514  04 00 a0 e1                                      mov r0, r4
0058c518  0f e0 a0 e1                                      mov lr, pc
0058c51c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0058c520  01 00 50 e3                                      cmp r0, #1
0058c524  13 00 00 0a                                      beq #0x58c578
0058c528  02 00 50 e3                                      cmp r0, #2
0058c52c  ec ff ff 1a                                      bne #0x58c4e4
0058c530  0b 20 a0 e1                                      mov r2, fp
0058c534  08 10 a0 e1                                      mov r1, r8
0058c538  05 00 a0 e1                                      mov r0, r5
0058c53c  6e 66 f6 eb                                      bl #0x325efc
0058c540  0a 10 a0 e1                                      mov r1, sl
0058c544  05 00 a0 e1                                      mov r0, r5
0058c548  ad a7 fe eb                                      bl #0x536404
0058c54c  00 a0 a0 e1                                      mov sl, r0
0058c550  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
0058c554  05 00 50 e1                                      cmp r0, r5
0058c558  02 00 00 0a                                      beq #0x58c568
0058c55c  00 00 50 e3                                      cmp r0, #0
0058c560  00 00 00 0a                                      beq #0x58c568
0058c564  b9 0f f6 eb                                      bl #0x310450
0058c568  00 00 5a e3                                      cmp sl, #0
0058c56c  dc ff ff 0a                                      beq #0x58c4e4
0058c570  bc d0 8d e2                                      add sp, sp, #0xbc
0058c574  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0058c578  09 20 a0 e1                                      mov r2, sb
0058c57c  07 10 a0 e1                                      mov r1, r7
0058c580  06 00 a0 e1                                      mov r0, r6
0058c584  5c 66 f6 eb                                      bl #0x325efc
0058c588  0a 10 a0 e1                                      mov r1, sl
0058c58c  06 00 a0 e1                                      mov r0, r6
0058c590  9b a7 fe eb                                      bl #0x536404
0058c594  00 a0 a0 e1                                      mov sl, r0
0058c598  54 00 9d e5                                      ldr r0, [sp, #0x54]
0058c59c  06 00 50 e1                                      cmp r0, r6
0058c5a0  02 00 00 0a                                      beq #0x58c5b0
0058c5a4  00 00 50 e3                                      cmp r0, #0
0058c5a8  00 00 00 0a                                      beq #0x58c5b0
0058c5ac  a7 0f f6 eb                                      bl #0x310450
0058c5b0  00 00 5a e3                                      cmp sl, #0
0058c5b4  ca ff ff 0a                                      beq #0x58c4e4
0058c5b8  04 20 9d e5                                      ldr r2, [sp, #4]
0058c5bc  20 30 92 e5                                      ldr r3, [r2, #0x20]
0058c5c0  14 10 92 e5                                      ldr r1, [r2, #0x14]
0058c5c4  03 00 a0 e1                                      mov r0, r3
0058c5c8  00 30 93 e5                                      ldr r3, [r3]
0058c5cc  0f e0 a0 e1                                      mov lr, pc
0058c5d0  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0058c5d4  00 20 a0 e3                                      mov r2, #0
0058c5d8  02 30 a0 e1                                      mov r3, r2
0058c5dc  00 a0 a0 e1                                      mov sl, r0
0058c5e0  04 10 a0 e1                                      mov r1, r4
0058c5e4  00 00 9d e5                                      ldr r0, [sp]
0058c5e8  ca 91 ff eb                                      bl #0x570d18
0058c5ec  00 00 9d e5                                      ldr r0, [sp]
0058c5f0  0a 10 a0 e1                                      mov r1, sl
0058c5f4  c9 94 ff eb                                      bl #0x571920
0058c5f8  08 30 9d e5                                      ldr r3, [sp, #8]
0058c5fc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0058c600  00 00 53 e3                                      cmp r3, #0
0058c604  00 00 52 13                                      cmpne r2, #0
0058c608  04 00 00 1a                                      bne #0x58c620
0058c60c  0a 00 a0 e1                                      mov r0, sl
0058c610  db 43 f6 eb                                      bl #0x31d584
0058c614  00 00 9d e5                                      ldr r0, [sp]
0058c618  de 91 ff eb                                      bl #0x570d98
0058c61c  b0 ff ff ea                                      b #0x58c4e4
0058c620  02 10 a0 e1                                      mov r1, r2
0058c624  00 30 93 e5                                      ldr r3, [r3]
0058c628  08 00 9d e5                                      ldr r0, [sp, #8]
0058c62c  0a 20 a0 e1                                      mov r2, sl
0058c630  0f e0 a0 e1                                      mov lr, pc
0058c634  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0058c638  f3 ff ff ea                                      b #0x58c60c
; mapping-symbol data/literal pool
0058c63c  10 27 33 00 0c 2f 35 00                          .byte 0x10, 0x27, 0x33, 0x00, 0x0c, 0x2f, 0x35, 0x00

; FUNCTION 0x0058c644, declared_size=664, range_size=664, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager13readAnimatorsEPNS_2io13IIrrXMLReaderIwNS_17IReferenceCountedEEEPNS0_10ISceneNodeE
; demangled: glitch::scene::CSceneManager::readAnimators(glitch::io::IIrrXMLReader<wchar_t, glitch::IReferenceCounted>*, glitch::scene::ISceneNode*)
; decoder-mode: arm
0058c644  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0058c648  78 32 9f e5                                      ldr r3, [pc, #0x278]
0058c64c  78 c2 9f e5                                      ldr ip, [pc, #0x278]
0058c650  e4 d0 4d e2                                      sub sp, sp, #0xe4
0058c654  03 30 8f e0                                      add r3, pc, r3
0058c658  04 30 8d e5                                      str r3, [sp, #4]
0058c65c  0c 30 93 e7                                      ldr r3, [r3, ip]
0058c660  68 a2 9f e5                                      ldr sl, [pc, #0x268]
0058c664  68 92 9f e5                                      ldr sb, [pc, #0x268]
0058c668  00 30 93 e5                                      ldr r3, [r3]
0058c66c  ac e0 8d e2                                      add lr, sp, #0xac
0058c670  10 c0 8d e5                                      str ip, [sp, #0x10]
0058c674  dc 30 8d e5                                      str r3, [sp, #0xdc]
0058c678  58 32 9f e5                                      ldr r3, [pc, #0x258]
0058c67c  00 60 a0 e1                                      mov r6, r0
0058c680  01 40 a0 e1                                      mov r4, r1
0058c684  03 30 8f e0                                      add r3, pc, r3
0058c688  0c 20 8d e5                                      str r2, [sp, #0xc]
0058c68c  0a a0 8f e0                                      add sl, pc, sl
0058c690  14 30 8d e5                                      str r3, [sp, #0x14]
0058c694  09 90 8f e0                                      add sb, pc, sb
0058c698  1c 50 8d e2                                      add r5, sp, #0x1c
0058c69c  bc b0 8d e2                                      add fp, sp, #0xbc
0058c6a0  00 e0 8d e5                                      str lr, [sp]
0058c6a4  00 30 94 e5                                      ldr r3, [r4]
0058c6a8  04 00 a0 e1                                      mov r0, r4
0058c6ac  0f e0 a0 e1                                      mov lr, pc
0058c6b0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0058c6b4  00 00 50 e3                                      cmp r0, #0
0058c6b8  1d 00 00 0a                                      beq #0x58c734
0058c6bc  00 30 94 e5                                      ldr r3, [r4]
0058c6c0  04 00 a0 e1                                      mov r0, r4
0058c6c4  0f e0 a0 e1                                      mov lr, pc
0058c6c8  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0058c6cc  00 30 94 e5                                      ldr r3, [r4]
0058c6d0  00 70 a0 e1                                      mov r7, r0
0058c6d4  04 00 a0 e1                                      mov r0, r4
0058c6d8  0f e0 a0 e1                                      mov lr, pc
0058c6dc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0058c6e0  01 00 50 e3                                      cmp r0, #1
0058c6e4  1b 00 00 0a                                      beq #0x58c758
0058c6e8  02 00 50 e3                                      cmp r0, #2
0058c6ec  ec ff ff 1a                                      bne #0x58c6a4
0058c6f0  64 80 8d e2                                      add r8, sp, #0x64
0058c6f4  c0 20 8d e2                                      add r2, sp, #0xc0
0058c6f8  09 10 a0 e1                                      mov r1, sb
0058c6fc  08 00 a0 e1                                      mov r0, r8
0058c700  fd 65 f6 eb                                      bl #0x325efc
0058c704  07 10 a0 e1                                      mov r1, r7
0058c708  08 00 a0 e1                                      mov r0, r8
0058c70c  3c a7 fe eb                                      bl #0x536404
0058c710  00 70 a0 e1                                      mov r7, r0
0058c714  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
0058c718  08 00 50 e1                                      cmp r0, r8
0058c71c  02 00 00 0a                                      beq #0x58c72c
0058c720  00 00 50 e3                                      cmp r0, #0
0058c724  00 00 00 0a                                      beq #0x58c72c
0058c728  48 0f f6 eb                                      bl #0x310450
0058c72c  00 00 57 e3                                      cmp r7, #0
0058c730  db ff ff 0a                                      beq #0x58c6a4
0058c734  04 10 9d e5                                      ldr r1, [sp, #4]
0058c738  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0058c73c  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
0058c740  0c 30 91 e7                                      ldr r3, [r1, ip]
0058c744  00 30 93 e5                                      ldr r3, [r3]
0058c748  03 00 52 e1                                      cmp r2, r3
0058c74c  5c 00 00 1a                                      bne #0x58c8c4
0058c750  e4 d0 8d e2                                      add sp, sp, #0xe4
0058c754  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0058c758  0b 20 a0 e1                                      mov r2, fp
0058c75c  0a 10 a0 e1                                      mov r1, sl
0058c760  05 00 a0 e1                                      mov r0, r5
0058c764  e4 65 f6 eb                                      bl #0x325efc
0058c768  07 10 a0 e1                                      mov r1, r7
0058c76c  05 00 a0 e1                                      mov r0, r5
0058c770  23 a7 fe eb                                      bl #0x536404
0058c774  00 70 a0 e1                                      mov r7, r0
0058c778  60 00 9d e5                                      ldr r0, [sp, #0x60]
0058c77c  05 00 50 e1                                      cmp r0, r5
0058c780  02 00 00 0a                                      beq #0x58c790
0058c784  00 00 50 e3                                      cmp r0, #0
0058c788  00 00 00 0a                                      beq #0x58c790
0058c78c  2f 0f f6 eb                                      bl #0x310450
0058c790  00 00 57 e3                                      cmp r7, #0
0058c794  c2 ff ff 0a                                      beq #0x58c6a4
0058c798  20 30 96 e5                                      ldr r3, [r6, #0x20]
0058c79c  14 10 96 e5                                      ldr r1, [r6, #0x14]
0058c7a0  03 00 a0 e1                                      mov r0, r3
0058c7a4  00 30 93 e5                                      ldr r3, [r3]
0058c7a8  0f e0 a0 e1                                      mov lr, pc
0058c7ac  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0058c7b0  00 20 a0 e3                                      mov r2, #0
0058c7b4  00 80 a0 e1                                      mov r8, r0
0058c7b8  04 10 a0 e1                                      mov r1, r4
0058c7bc  02 30 a0 e1                                      mov r3, r2
0058c7c0  00 00 9d e5                                      ldr r0, [sp]
0058c7c4  53 91 ff eb                                      bl #0x570d18
0058c7c8  08 10 a0 e1                                      mov r1, r8
0058c7cc  00 00 9d e5                                      ldr r0, [sp]
0058c7d0  52 94 ff eb                                      bl #0x571920
0058c7d4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0058c7d8  00 00 51 e3                                      cmp r1, #0
0058c7dc  25 00 00 0a                                      beq #0x58c878
0058c7e0  c4 20 8d e2                                      add r2, sp, #0xc4
0058c7e4  08 20 8d e5                                      str r2, [sp, #8]
0058c7e8  00 30 98 e5                                      ldr r3, [r8]
0058c7ec  02 00 a0 e1                                      mov r0, r2
0058c7f0  08 10 a0 e1                                      mov r1, r8
0058c7f4  14 20 9d e5                                      ldr r2, [sp, #0x14]
0058c7f8  0f e0 a0 e1                                      mov lr, pc
0058c7fc  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0058c800  d8 30 96 e5                                      ldr r3, [r6, #0xd8]
0058c804  dc 20 96 e5                                      ldr r2, [r6, #0xdc]
0058c808  02 20 63 e0                                      rsb r2, r3, r2
0058c80c  03 00 52 e3                                      cmp r2, #3
0058c810  00 c0 a0 c3                                      movgt ip, #0
0058c814  0c 70 a0 c1                                      movgt r7, ip
0058c818  0f 00 00 da                                      ble #0x58c85c
0058c81c  07 31 93 e7                                      ldr r3, [r3, r7, lsl #2]
0058c820  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0058c824  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
0058c828  03 00 a0 e1                                      mov r0, r3
0058c82c  00 30 93 e5                                      ldr r3, [r3]
0058c830  0f e0 a0 e1                                      mov lr, pc
0058c834  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0058c838  d8 30 96 e5                                      ldr r3, [r6, #0xd8]
0058c83c  dc 20 96 e5                                      ldr r2, [r6, #0xdc]
0058c840  01 70 87 e2                                      add r7, r7, #1
0058c844  02 20 63 e0                                      rsb r2, r3, r2
0058c848  42 01 57 e1                                      cmp r7, r2, asr #2
0058c84c  0e 00 00 ba                                      blt #0x58c88c
0058c850  00 00 50 e3                                      cmp r0, #0
0058c854  00 70 a0 e1                                      mov r7, r0
0058c858  0e 00 00 1a                                      bne #0x58c898
0058c85c  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
0058c860  08 30 9d e5                                      ldr r3, [sp, #8]
0058c864  03 00 50 e1                                      cmp r0, r3
0058c868  02 00 00 0a                                      beq #0x58c878
0058c86c  00 00 50 e3                                      cmp r0, #0
0058c870  00 00 00 0a                                      beq #0x58c878
0058c874  f5 0e f6 eb                                      bl #0x310450
0058c878  08 00 a0 e1                                      mov r0, r8
0058c87c  40 43 f6 eb                                      bl #0x31d584
0058c880  00 00 9d e5                                      ldr r0, [sp]
0058c884  43 91 ff eb                                      bl #0x570d98
0058c888  85 ff ff ea                                      b #0x58c6a4
0058c88c  00 00 50 e3                                      cmp r0, #0
0058c890  e1 ff ff 0a                                      beq #0x58c81c
0058c894  00 70 a0 e1                                      mov r7, r0
0058c898  07 00 a0 e1                                      mov r0, r7
0058c89c  00 30 97 e5                                      ldr r3, [r7]
0058c8a0  08 10 a0 e1                                      mov r1, r8
0058c8a4  00 20 a0 e3                                      mov r2, #0
0058c8a8  0f e0 a0 e1                                      mov lr, pc
0058c8ac  04 f0 93 e5                                      ldr pc, [r3, #4]
0058c8b0  00 30 97 e5                                      ldr r3, [r7]
0058c8b4  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0058c8b8  00 00 87 e0                                      add r0, r7, r0
0058c8bc  30 43 f6 eb                                      bl #0x31d584
0058c8c0  e5 ff ff ea                                      b #0x58c85c
0058c8c4  91 06 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0058c8c8  3c 84 40 00 ac 40 00 00 4c 25 33 00 6c 2d 35 00  .byte 0x3c, 0x84, 0x40, 0x00, 0xac, 0x40, 0x00, 0x00, 0x4c, 0x25, 0x33, 0x00, 0x6c, 0x2d, 0x35, 0x00
0058c8d8  f4 62 33 00                                      .byte 0xf4, 0x62, 0x33, 0x00

; FUNCTION 0x0058c8dc, declared_size=392, range_size=392, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager13readMaterialsEPNS_2io13IIrrXMLReaderIwNS_17IReferenceCountedEEEPNS0_10ISceneNodeE
; demangled: glitch::scene::CSceneManager::readMaterials(glitch::io::IIrrXMLReader<wchar_t, glitch::IReferenceCounted>*, glitch::scene::ISceneNode*)
; decoder-mode: arm
0058c8dc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0058c8e0  74 71 9f e5                                      ldr r7, [pc, #0x174]
0058c8e4  74 81 9f e5                                      ldr r8, [pc, #0x174]
0058c8e8  bc d0 4d e2                                      sub sp, sp, #0xbc
0058c8ec  08 20 8d e5                                      str r2, [sp, #8]
0058c8f0  a0 20 8d e2                                      add r2, sp, #0xa0
0058c8f4  0c 00 8d e5                                      str r0, [sp, #0xc]
0058c8f8  01 40 a0 e1                                      mov r4, r1
0058c8fc  07 70 8f e0                                      add r7, pc, r7
0058c900  08 80 8f e0                                      add r8, pc, r8
0058c904  10 60 8d e2                                      add r6, sp, #0x10
0058c908  b0 90 8d e2                                      add sb, sp, #0xb0
0058c90c  04 20 8d e5                                      str r2, [sp, #4]
0058c910  58 50 8d e2                                      add r5, sp, #0x58
0058c914  b4 b0 8d e2                                      add fp, sp, #0xb4
0058c918  00 30 94 e5                                      ldr r3, [r4]
0058c91c  04 00 a0 e1                                      mov r0, r4
0058c920  0f e0 a0 e1                                      mov lr, pc
0058c924  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0058c928  00 00 50 e3                                      cmp r0, #0
0058c92c  1c 00 00 0a                                      beq #0x58c9a4
0058c930  00 30 94 e5                                      ldr r3, [r4]
0058c934  04 00 a0 e1                                      mov r0, r4
0058c938  0f e0 a0 e1                                      mov lr, pc
0058c93c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0058c940  00 30 94 e5                                      ldr r3, [r4]
0058c944  00 a0 a0 e1                                      mov sl, r0
0058c948  04 00 a0 e1                                      mov r0, r4
0058c94c  0f e0 a0 e1                                      mov lr, pc
0058c950  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0058c954  01 00 50 e3                                      cmp r0, #1
0058c958  13 00 00 0a                                      beq #0x58c9ac
0058c95c  02 00 50 e3                                      cmp r0, #2
0058c960  ec ff ff 1a                                      bne #0x58c918
0058c964  0b 20 a0 e1                                      mov r2, fp
0058c968  08 10 a0 e1                                      mov r1, r8
0058c96c  05 00 a0 e1                                      mov r0, r5
0058c970  61 65 f6 eb                                      bl #0x325efc
0058c974  0a 10 a0 e1                                      mov r1, sl
0058c978  05 00 a0 e1                                      mov r0, r5
0058c97c  a0 a6 fe eb                                      bl #0x536404
0058c980  00 a0 a0 e1                                      mov sl, r0
0058c984  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
0058c988  05 00 50 e1                                      cmp r0, r5
0058c98c  02 00 00 0a                                      beq #0x58c99c
0058c990  00 00 50 e3                                      cmp r0, #0
0058c994  00 00 00 0a                                      beq #0x58c99c
0058c998  ac 0e f6 eb                                      bl #0x310450
0058c99c  00 00 5a e3                                      cmp sl, #0
0058c9a0  dc ff ff 0a                                      beq #0x58c918
0058c9a4  bc d0 8d e2                                      add sp, sp, #0xbc
0058c9a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0058c9ac  09 20 a0 e1                                      mov r2, sb
0058c9b0  07 10 a0 e1                                      mov r1, r7
0058c9b4  06 00 a0 e1                                      mov r0, r6
0058c9b8  4f 65 f6 eb                                      bl #0x325efc
0058c9bc  0a 10 a0 e1                                      mov r1, sl
0058c9c0  06 00 a0 e1                                      mov r0, r6
0058c9c4  8e a6 fe eb                                      bl #0x536404
0058c9c8  00 a0 a0 e1                                      mov sl, r0
0058c9cc  54 00 9d e5                                      ldr r0, [sp, #0x54]
0058c9d0  06 00 50 e1                                      cmp r0, r6
0058c9d4  02 00 00 0a                                      beq #0x58c9e4
0058c9d8  00 00 50 e3                                      cmp r0, #0
0058c9dc  00 00 00 0a                                      beq #0x58c9e4
0058c9e0  9a 0e f6 eb                                      bl #0x310450
0058c9e4  00 00 5a e3                                      cmp sl, #0
0058c9e8  ca ff ff 0a                                      beq #0x58c918
0058c9ec  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0058c9f0  20 30 92 e5                                      ldr r3, [r2, #0x20]
0058c9f4  14 10 92 e5                                      ldr r1, [r2, #0x14]
0058c9f8  03 00 a0 e1                                      mov r0, r3
0058c9fc  00 30 93 e5                                      ldr r3, [r3]
0058ca00  0f e0 a0 e1                                      mov lr, pc
0058ca04  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0058ca08  00 20 a0 e3                                      mov r2, #0
0058ca0c  02 30 a0 e1                                      mov r3, r2
0058ca10  00 a0 a0 e1                                      mov sl, r0
0058ca14  04 10 a0 e1                                      mov r1, r4
0058ca18  04 00 9d e5                                      ldr r0, [sp, #4]
0058ca1c  bd 90 ff eb                                      bl #0x570d18
0058ca20  04 00 9d e5                                      ldr r0, [sp, #4]
0058ca24  0a 10 a0 e1                                      mov r1, sl
0058ca28  bc 93 ff eb                                      bl #0x571920
0058ca2c  08 30 9d e5                                      ldr r3, [sp, #8]
0058ca30  00 00 53 e3                                      cmp r3, #0
0058ca34  03 00 00 0a                                      beq #0x58ca48
0058ca38  00 30 93 e5                                      ldr r3, [r3]
0058ca3c  08 00 9d e5                                      ldr r0, [sp, #8]
0058ca40  0f e0 a0 e1                                      mov lr, pc
0058ca44  88 f0 93 e5                                      ldr pc, [r3, #0x88]
0058ca48  0a 00 a0 e1                                      mov r0, sl
0058ca4c  cc 42 f6 eb                                      bl #0x31d584
0058ca50  04 00 9d e5                                      ldr r0, [sp, #4]
0058ca54  cf 90 ff eb                                      bl #0x570d98
0058ca58  ae ff ff ea                                      b #0x58c918
; mapping-symbol data/literal pool
0058ca5c  dc 22 33 00 28 2b 35 00                          .byte 0xdc, 0x22, 0x33, 0x00, 0x28, 0x2b, 0x35, 0x00

; FUNCTION 0x0058ca64, declared_size=280, range_size=280, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZNK6glitch5scene13CSceneManager8isCulledERKNS_4core8aabbox3dIfEENS0_14E_CULLING_TYPEE
; demangled: glitch::scene::CSceneManager::isCulled(glitch::core::aabbox3d<float> const&, glitch::scene::E_CULLING_TYPE) const
; decoder-mode: arm
0058ca64  70 40 2d e9                                      push {r4, r5, r6, lr}
0058ca68  e4 30 90 e5                                      ldr r3, [r0, #0xe4]
0058ca6c  01 40 a0 e1                                      mov r4, r1
0058ca70  00 00 53 e3                                      cmp r3, #0
0058ca74  05 00 00 0a                                      beq #0x58ca90
0058ca78  02 00 52 e3                                      cmp r2, #2
0058ca7c  0e 00 00 0a                                      beq #0x58cabc
0058ca80  08 00 52 e3                                      cmp r2, #8
0058ca84  03 00 00 0a                                      beq #0x58ca98
0058ca88  01 00 52 e3                                      cmp r2, #1
0058ca8c  13 00 00 0a                                      beq #0x58cae0
0058ca90  00 00 a0 e3                                      mov r0, #0
0058ca94  70 80 bd e8                                      pop {r4, r5, r6, pc}
0058ca98  03 00 a0 e1                                      mov r0, r3
0058ca9c  00 30 93 e5                                      ldr r3, [r3]
0058caa0  0f e0 a0 e1                                      mov lr, pc
0058caa4  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0058caa8  04 10 a0 e1                                      mov r1, r4
0058caac  f6 f7 ff eb                                      bl #0x58aa8c
0058cab0  01 00 20 e2                                      eor r0, r0, #1
0058cab4  70 00 ef e6                                      uxtb r0, r0
0058cab8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0058cabc  03 00 a0 e1                                      mov r0, r3
0058cac0  00 30 93 e5                                      ldr r3, [r3]
0058cac4  0f e0 a0 e1                                      mov lr, pc
0058cac8  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0058cacc  04 10 a0 e1                                      mov r1, r4
0058cad0  fc 3c f7 eb                                      bl #0x35bec8
0058cad4  01 00 20 e2                                      eor r0, r0, #1
0058cad8  70 00 ef e6                                      uxtb r0, r0
0058cadc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0058cae0  03 00 a0 e1                                      mov r0, r3
0058cae4  00 30 93 e5                                      ldr r3, [r3]
0058cae8  0f e0 a0 e1                                      mov lr, pc
0058caec  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0058caf0  78 10 90 e5                                      ldr r1, [r0, #0x78]
0058caf4  00 50 a0 e1                                      mov r5, r0
0058caf8  00 00 94 e5                                      ldr r0, [r4]
0058cafc  aa 07 f6 eb                                      bl #0x30e9ac
0058cb00  00 00 50 e3                                      cmp r0, #0
0058cb04  1a 00 00 0a                                      beq #0x58cb74
0058cb08  04 00 94 e5                                      ldr r0, [r4, #4]
0058cb0c  7c 10 95 e5                                      ldr r1, [r5, #0x7c]
0058cb10  a5 07 f6 eb                                      bl #0x30e9ac
0058cb14  00 00 50 e3                                      cmp r0, #0
0058cb18  15 00 00 0a                                      beq #0x58cb74
0058cb1c  08 00 94 e5                                      ldr r0, [r4, #8]
0058cb20  80 10 95 e5                                      ldr r1, [r5, #0x80]
0058cb24  a0 07 f6 eb                                      bl #0x30e9ac
0058cb28  00 00 50 e3                                      cmp r0, #0
0058cb2c  10 00 00 0a                                      beq #0x58cb74
0058cb30  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0058cb34  6c 10 95 e5                                      ldr r1, [r5, #0x6c]
0058cb38  5d 06 f6 eb                                      bl #0x30e4b4
0058cb3c  00 00 50 e3                                      cmp r0, #0
0058cb40  0b 00 00 0a                                      beq #0x58cb74
0058cb44  10 00 94 e5                                      ldr r0, [r4, #0x10]
0058cb48  70 10 95 e5                                      ldr r1, [r5, #0x70]
0058cb4c  58 06 f6 eb                                      bl #0x30e4b4
0058cb50  00 00 50 e3                                      cmp r0, #0
0058cb54  06 00 00 0a                                      beq #0x58cb74
0058cb58  14 00 94 e5                                      ldr r0, [r4, #0x14]
0058cb5c  74 10 95 e5                                      ldr r1, [r5, #0x74]
0058cb60  53 06 f6 eb                                      bl #0x30e4b4
0058cb64  00 00 50 e3                                      cmp r0, #0
0058cb68  00 00 a0 e3                                      mov r0, #0
0058cb6c  01 00 a0 13                                      movne r0, #1
0058cb70  ce ff ff ea                                      b #0x58cab0
0058cb74  01 00 a0 e3                                      mov r0, #1
0058cb78  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0058cdd4, declared_size=1432, range_size=1432, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager14writeSceneNodeEPNS_2io10IXMLWriterEPKNS0_10ISceneNodeEPNS0_24ISceneUserDataSerializerE
; demangled: glitch::scene::CSceneManager::writeSceneNode(glitch::io::IXMLWriter*, glitch::scene::ISceneNode const*, glitch::scene::ISceneUserDataSerializer*)
; decoder-mode: arm
0058cdd4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0058cdd8  00 00 51 e3                                      cmp r1, #0
0058cddc  00 00 52 13                                      cmpne r2, #0
0058cde0  8c d0 4d e2                                      sub sp, sp, #0x8c
0058cde4  02 60 a0 e1                                      mov r6, r2
0058cde8  01 40 a0 e1                                      mov r4, r1
0058cdec  00 a0 a0 e1                                      mov sl, r0
0058cdf0  03 b0 a0 e1                                      mov fp, r3
0058cdf4  01 00 00 1a                                      bne #0x58ce00
0058cdf8  8c d0 8d e2                                      add sp, sp, #0x8c
0058cdfc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0058ce00  02 00 a0 e1                                      mov r0, r2
0058ce04  ec 28 00 eb                                      bl #0x5971bc
0058ce08  00 50 50 e2                                      subs r5, r0, #0
0058ce0c  f9 ff ff 1a                                      bne #0x58cdf8
0058ce10  04 30 9a e5                                      ldr r3, [sl, #4]
0058ce14  03 00 56 e1                                      cmp r6, r3
0058ce18  3a 01 00 0a                                      beq #0x58d308
0058ce1c  00 20 94 e5                                      ldr r2, [r4]
0058ce20  00 30 96 e5                                      ldr r3, [r6]
0058ce24  06 00 a0 e1                                      mov r0, r6
0058ce28  10 90 92 e5                                      ldr sb, [r2, #0x10]
0058ce2c  04 22 9a e5                                      ldr r2, [sl, #0x204]
0058ce30  30 70 8d e2                                      add r7, sp, #0x30
0058ce34  2c 20 8d e5                                      str r2, [sp, #0x2c]
0058ce38  4c 82 9a e5                                      ldr r8, [sl, #0x24c]
0058ce3c  0f e0 a0 e1                                      mov lr, pc
0058ce40  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
0058ce44  00 10 a0 e1                                      mov r1, r0
0058ce48  0a 00 a0 e1                                      mov r0, sl
0058ce4c  5b f1 ff eb                                      bl #0x5893c0
0058ce50  00 10 a0 e1                                      mov r1, r0
0058ce54  07 00 a0 e1                                      mov r0, r7
0058ce58  1a 65 f6 eb                                      bl #0x3262c8
0058ce5c  74 30 9d e5                                      ldr r3, [sp, #0x74]
0058ce60  04 00 a0 e1                                      mov r0, r4
0058ce64  28 00 8d e8                                      stm sp, {r3, r5}
0058ce68  08 50 8d e5                                      str r5, [sp, #8]
0058ce6c  0c 50 8d e5                                      str r5, [sp, #0xc]
0058ce70  10 50 8d e5                                      str r5, [sp, #0x10]
0058ce74  14 50 8d e5                                      str r5, [sp, #0x14]
0058ce78  18 50 8d e5                                      str r5, [sp, #0x18]
0058ce7c  1c 50 8d e5                                      str r5, [sp, #0x1c]
0058ce80  20 50 8d e5                                      str r5, [sp, #0x20]
0058ce84  05 20 a0 e1                                      mov r2, r5
0058ce88  08 30 a0 e1                                      mov r3, r8
0058ce8c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0058ce90  39 ff 2f e1                                      blx sb
0058ce94  74 00 9d e5                                      ldr r0, [sp, #0x74]
0058ce98  07 00 50 e1                                      cmp r0, r7
0058ce9c  02 00 00 0a                                      beq #0x58ceac
0058cea0  00 00 50 e3                                      cmp r0, #0
0058cea4  00 00 00 0a                                      beq #0x58ceac
0058cea8  68 0d f6 eb                                      bl #0x310450
0058ceac  04 00 a0 e1                                      mov r0, r4
0058ceb0  00 30 94 e5                                      ldr r3, [r4]
0058ceb4  0f e0 a0 e1                                      mov lr, pc
0058ceb8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0058cebc  04 00 a0 e1                                      mov r0, r4
0058cec0  00 30 94 e5                                      ldr r3, [r4]
0058cec4  0f e0 a0 e1                                      mov lr, pc
0058cec8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0058cecc  20 30 9a e5                                      ldr r3, [sl, #0x20]
0058ced0  14 10 9a e5                                      ldr r1, [sl, #0x14]
0058ced4  03 00 a0 e1                                      mov r0, r3
0058ced8  00 30 93 e5                                      ldr r3, [r3]
0058cedc  0f e0 a0 e1                                      mov lr, pc
0058cee0  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0058cee4  00 20 a0 e3                                      mov r2, #0
0058cee8  00 50 a0 e1                                      mov r5, r0
0058ceec  00 10 a0 e1                                      mov r1, r0
0058cef0  00 30 96 e5                                      ldr r3, [r6]
0058cef4  06 00 a0 e1                                      mov r0, r6
0058cef8  0f e0 a0 e1                                      mov lr, pc
0058cefc  00 f0 93 e5                                      ldr pc, [r3]
0058cf00  00 30 95 e5                                      ldr r3, [r5]
0058cf04  05 00 a0 e1                                      mov r0, r5
0058cf08  0f e0 a0 e1                                      mov lr, pc
0058cf0c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0058cf10  00 00 50 e3                                      cmp r0, #0
0058cf14  eb 00 00 1a                                      bne #0x58d2c8
0058cf18  00 30 96 e5                                      ldr r3, [r6]
0058cf1c  06 00 a0 e1                                      mov r0, r6
0058cf20  0f e0 a0 e1                                      mov lr, pc
0058cf24  88 f0 93 e5                                      ldr pc, [r3, #0x88]
0058cf28  00 00 50 e3                                      cmp r0, #0
0058cf2c  2a 00 00 0a                                      beq #0x58cfdc
0058cf30  14 30 9a e5                                      ldr r3, [sl, #0x14]
0058cf34  00 00 53 e3                                      cmp r3, #0
0058cf38  27 00 00 0a                                      beq #0x58cfdc
0058cf3c  10 14 9f e5                                      ldr r1, [pc, #0x410]
0058cf40  00 70 a0 e3                                      mov r7, #0
0058cf44  00 c0 94 e5                                      ldr ip, [r4]
0058cf48  04 00 a0 e1                                      mov r0, r4
0058cf4c  07 30 a0 e1                                      mov r3, r7
0058cf50  01 10 8f e0                                      add r1, pc, r1
0058cf54  00 70 8d e5                                      str r7, [sp]
0058cf58  04 70 8d e5                                      str r7, [sp, #4]
0058cf5c  08 70 8d e5                                      str r7, [sp, #8]
0058cf60  0c 70 8d e5                                      str r7, [sp, #0xc]
0058cf64  10 70 8d e5                                      str r7, [sp, #0x10]
0058cf68  14 70 8d e5                                      str r7, [sp, #0x14]
0058cf6c  18 70 8d e5                                      str r7, [sp, #0x18]
0058cf70  1c 70 8d e5                                      str r7, [sp, #0x1c]
0058cf74  20 70 8d e5                                      str r7, [sp, #0x20]
0058cf78  07 20 a0 e1                                      mov r2, r7
0058cf7c  0f e0 a0 e1                                      mov lr, pc
0058cf80  10 f0 9c e5                                      ldr pc, [ip, #0x10]
0058cf84  00 30 94 e5                                      ldr r3, [r4]
0058cf88  04 00 a0 e1                                      mov r0, r4
0058cf8c  0f e0 a0 e1                                      mov lr, pc
0058cf90  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0058cf94  00 00 00 ea                                      b #0x58cf9c
0058cf98  01 70 87 e2                                      add r7, r7, #1
0058cf9c  00 30 96 e5                                      ldr r3, [r6]
0058cfa0  06 00 a0 e1                                      mov r0, r6
0058cfa4  0f e0 a0 e1                                      mov lr, pc
0058cfa8  88 f0 93 e5                                      ldr pc, [r3, #0x88]
0058cfac  00 00 57 e1                                      cmp r7, r0
0058cfb0  f8 ff ff 3a                                      blo #0x58cf98
0058cfb4  9c 13 9f e5                                      ldr r1, [pc, #0x39c]
0058cfb8  04 00 a0 e1                                      mov r0, r4
0058cfbc  00 30 94 e5                                      ldr r3, [r4]
0058cfc0  01 10 8f e0                                      add r1, pc, r1
0058cfc4  0f e0 a0 e1                                      mov lr, pc
0058cfc8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0058cfcc  00 30 94 e5                                      ldr r3, [r4]
0058cfd0  04 00 a0 e1                                      mov r0, r4
0058cfd4  0f e0 a0 e1                                      mov lr, pc
0058cfd8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0058cfdc  06 00 a0 e1                                      mov r0, r6
0058cfe0  2b 28 00 eb                                      bl #0x597094
0058cfe4  00 30 90 e5                                      ldr r3, [r0]
0058cfe8  00 00 53 e1                                      cmp r3, r0
0058cfec  55 00 00 0a                                      beq #0x58d148
0058cff0  64 13 9f e5                                      ldr r1, [pc, #0x364]
0058cff4  00 30 a0 e3                                      mov r3, #0
0058cff8  00 c0 94 e5                                      ldr ip, [r4]
0058cffc  03 20 a0 e1                                      mov r2, r3
0058d000  01 10 8f e0                                      add r1, pc, r1
0058d004  00 30 8d e5                                      str r3, [sp]
0058d008  04 30 8d e5                                      str r3, [sp, #4]
0058d00c  08 30 8d e5                                      str r3, [sp, #8]
0058d010  0c 30 8d e5                                      str r3, [sp, #0xc]
0058d014  10 30 8d e5                                      str r3, [sp, #0x10]
0058d018  14 30 8d e5                                      str r3, [sp, #0x14]
0058d01c  18 30 8d e5                                      str r3, [sp, #0x18]
0058d020  1c 30 8d e5                                      str r3, [sp, #0x1c]
0058d024  20 30 8d e5                                      str r3, [sp, #0x20]
0058d028  04 00 a0 e1                                      mov r0, r4
0058d02c  0f e0 a0 e1                                      mov lr, pc
0058d030  10 f0 9c e5                                      ldr pc, [ip, #0x10]
0058d034  00 30 94 e5                                      ldr r3, [r4]
0058d038  04 00 a0 e1                                      mov r0, r4
0058d03c  0f e0 a0 e1                                      mov lr, pc
0058d040  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0058d044  06 00 a0 e1                                      mov r0, r6
0058d048  11 28 00 eb                                      bl #0x597094
0058d04c  0c 33 9f e5                                      ldr r3, [pc, #0x30c]
0058d050  00 70 90 e5                                      ldr r7, [r0]
0058d054  0a 90 a0 e1                                      mov sb, sl
0058d058  03 30 8f e0                                      add r3, pc, r3
0058d05c  28 b0 8d e5                                      str fp, [sp, #0x28]
0058d060  78 80 8d e2                                      add r8, sp, #0x78
0058d064  04 a0 a0 e1                                      mov sl, r4
0058d068  03 b0 a0 e1                                      mov fp, r3
0058d06c  24 00 00 ea                                      b #0x58d104
0058d070  05 00 a0 e1                                      mov r0, r5
0058d074  00 30 95 e5                                      ldr r3, [r5]
0058d078  0f e0 a0 e1                                      mov lr, pc
0058d07c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0058d080  08 30 97 e5                                      ldr r3, [r7, #8]
0058d084  00 20 95 e5                                      ldr r2, [r5]
0058d088  03 00 a0 e1                                      mov r0, r3
0058d08c  00 30 93 e5                                      ldr r3, [r3]
0058d090  7c 40 92 e5                                      ldr r4, [r2, #0x7c]
0058d094  0f e0 a0 e1                                      mov lr, pc
0058d098  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0058d09c  00 10 a0 e1                                      mov r1, r0
0058d0a0  09 00 a0 e1                                      mov r0, sb
0058d0a4  fe f0 ff eb                                      bl #0x5894a4
0058d0a8  0b 10 a0 e1                                      mov r1, fp
0058d0ac  00 20 a0 e1                                      mov r2, r0
0058d0b0  00 30 a0 e3                                      mov r3, #0
0058d0b4  05 00 a0 e1                                      mov r0, r5
0058d0b8  34 ff 2f e1                                      blx r4
0058d0bc  08 30 97 e5                                      ldr r3, [r7, #8]
0058d0c0  00 20 a0 e3                                      mov r2, #0
0058d0c4  05 10 a0 e1                                      mov r1, r5
0058d0c8  03 00 a0 e1                                      mov r0, r3
0058d0cc  00 30 93 e5                                      ldr r3, [r3]
0058d0d0  0f e0 a0 e1                                      mov lr, pc
0058d0d4  00 f0 93 e5                                      ldr pc, [r3]
0058d0d8  01 20 a0 e3                                      mov r2, #1
0058d0dc  00 30 a0 e3                                      mov r3, #0
0058d0e0  0a 10 a0 e1                                      mov r1, sl
0058d0e4  08 00 a0 e1                                      mov r0, r8
0058d0e8  96 92 ff eb                                      bl #0x571b48
0058d0ec  05 10 a0 e1                                      mov r1, r5
0058d0f0  08 00 a0 e1                                      mov r0, r8
0058d0f4  bf 94 ff eb                                      bl #0x5723f8
0058d0f8  08 00 a0 e1                                      mov r0, r8
0058d0fc  b1 92 ff eb                                      bl #0x571bc8
0058d100  00 70 97 e5                                      ldr r7, [r7]
0058d104  06 00 a0 e1                                      mov r0, r6
0058d108  e1 27 00 eb                                      bl #0x597094
0058d10c  00 00 57 e1                                      cmp r7, r0
0058d110  d6 ff ff 1a                                      bne #0x58d070
0058d114  48 12 9f e5                                      ldr r1, [pc, #0x248]
0058d118  0a 40 a0 e1                                      mov r4, sl
0058d11c  04 00 a0 e1                                      mov r0, r4
0058d120  00 30 94 e5                                      ldr r3, [r4]
0058d124  01 10 8f e0                                      add r1, pc, r1
0058d128  28 b0 9d e5                                      ldr fp, [sp, #0x28]
0058d12c  0f e0 a0 e1                                      mov lr, pc
0058d130  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0058d134  00 30 94 e5                                      ldr r3, [r4]
0058d138  04 00 a0 e1                                      mov r0, r4
0058d13c  09 a0 a0 e1                                      mov sl, sb
0058d140  0f e0 a0 e1                                      mov lr, pc
0058d144  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0058d148  00 00 5b e3                                      cmp fp, #0
0058d14c  3c 00 00 0a                                      beq #0x58d244
0058d150  00 30 9b e5                                      ldr r3, [fp]
0058d154  0b 00 a0 e1                                      mov r0, fp
0058d158  06 10 a0 e1                                      mov r1, r6
0058d15c  0f e0 a0 e1                                      mov lr, pc
0058d160  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0058d164  00 00 50 e3                                      cmp r0, #0
0058d168  28 00 8d e5                                      str r0, [sp, #0x28]
0058d16c  34 00 00 0a                                      beq #0x58d244
0058d170  f0 81 9f e5                                      ldr r8, [pc, #0x1f0]
0058d174  00 70 a0 e3                                      mov r7, #0
0058d178  04 00 a0 e1                                      mov r0, r4
0058d17c  08 80 8f e0                                      add r8, pc, r8
0058d180  00 30 94 e5                                      ldr r3, [r4]
0058d184  0f e0 a0 e1                                      mov lr, pc
0058d188  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0058d18c  00 c0 94 e5                                      ldr ip, [r4]
0058d190  08 10 a0 e1                                      mov r1, r8
0058d194  07 20 a0 e1                                      mov r2, r7
0058d198  07 30 a0 e1                                      mov r3, r7
0058d19c  04 00 a0 e1                                      mov r0, r4
0058d1a0  00 70 8d e5                                      str r7, [sp]
0058d1a4  04 70 8d e5                                      str r7, [sp, #4]
0058d1a8  08 70 8d e5                                      str r7, [sp, #8]
0058d1ac  0c 70 8d e5                                      str r7, [sp, #0xc]
0058d1b0  10 70 8d e5                                      str r7, [sp, #0x10]
0058d1b4  14 70 8d e5                                      str r7, [sp, #0x14]
0058d1b8  18 70 8d e5                                      str r7, [sp, #0x18]
0058d1bc  1c 70 8d e5                                      str r7, [sp, #0x1c]
0058d1c0  20 70 8d e5                                      str r7, [sp, #0x20]
0058d1c4  0f e0 a0 e1                                      mov lr, pc
0058d1c8  10 f0 9c e5                                      ldr pc, [ip, #0x10]
0058d1cc  78 90 8d e2                                      add sb, sp, #0x78
0058d1d0  04 00 a0 e1                                      mov r0, r4
0058d1d4  00 30 94 e5                                      ldr r3, [r4]
0058d1d8  0f e0 a0 e1                                      mov lr, pc
0058d1dc  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0058d1e0  01 20 a0 e3                                      mov r2, #1
0058d1e4  07 30 a0 e1                                      mov r3, r7
0058d1e8  04 10 a0 e1                                      mov r1, r4
0058d1ec  09 00 a0 e1                                      mov r0, sb
0058d1f0  54 92 ff eb                                      bl #0x571b48
0058d1f4  28 10 9d e5                                      ldr r1, [sp, #0x28]
0058d1f8  09 00 a0 e1                                      mov r0, sb
0058d1fc  7d 94 ff eb                                      bl #0x5723f8
0058d200  08 10 a0 e1                                      mov r1, r8
0058d204  04 00 a0 e1                                      mov r0, r4
0058d208  00 30 94 e5                                      ldr r3, [r4]
0058d20c  0f e0 a0 e1                                      mov lr, pc
0058d210  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0058d214  04 00 a0 e1                                      mov r0, r4
0058d218  00 30 94 e5                                      ldr r3, [r4]
0058d21c  0f e0 a0 e1                                      mov lr, pc
0058d220  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0058d224  00 30 94 e5                                      ldr r3, [r4]
0058d228  04 00 a0 e1                                      mov r0, r4
0058d22c  0f e0 a0 e1                                      mov lr, pc
0058d230  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0058d234  28 00 9d e5                                      ldr r0, [sp, #0x28]
0058d238  d1 40 f6 eb                                      bl #0x31d584
0058d23c  09 00 a0 e1                                      mov r0, sb
0058d240  60 92 ff eb                                      bl #0x571bc8
0058d244  06 00 a0 e1                                      mov r0, r6
0058d248  de 27 00 eb                                      bl #0x5971c8
0058d24c  04 70 90 e5                                      ldr r7, [r0, #4]
0058d250  07 00 00 ea                                      b #0x58d274
0058d254  00 00 57 e3                                      cmp r7, #0
0058d258  07 20 a0 01                                      moveq r2, r7
0058d25c  04 20 47 12                                      subne r2, r7, #4
0058d260  0a 00 a0 e1                                      mov r0, sl
0058d264  04 10 a0 e1                                      mov r1, r4
0058d268  0b 30 a0 e1                                      mov r3, fp
0058d26c  d8 fe ff eb                                      bl #0x58cdd4
0058d270  00 70 97 e5                                      ldr r7, [r7]
0058d274  06 00 a0 e1                                      mov r0, r6
0058d278  d2 27 00 eb                                      bl #0x5971c8
0058d27c  04 00 80 e2                                      add r0, r0, #4
0058d280  07 00 50 e1                                      cmp r0, r7
0058d284  f2 ff ff 1a                                      bne #0x58d254
0058d288  05 00 a0 e1                                      mov r0, r5
0058d28c  bc 40 f6 eb                                      bl #0x31d584
0058d290  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0058d294  04 00 a0 e1                                      mov r0, r4
0058d298  00 30 94 e5                                      ldr r3, [r4]
0058d29c  0f e0 a0 e1                                      mov lr, pc
0058d2a0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0058d2a4  04 00 a0 e1                                      mov r0, r4
0058d2a8  00 30 94 e5                                      ldr r3, [r4]
0058d2ac  0f e0 a0 e1                                      mov lr, pc
0058d2b0  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0058d2b4  04 00 a0 e1                                      mov r0, r4
0058d2b8  00 30 94 e5                                      ldr r3, [r4]
0058d2bc  0f e0 a0 e1                                      mov lr, pc
0058d2c0  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0058d2c4  cb fe ff ea                                      b #0x58cdf8
0058d2c8  78 70 8d e2                                      add r7, sp, #0x78
0058d2cc  01 20 a0 e3                                      mov r2, #1
0058d2d0  00 30 a0 e3                                      mov r3, #0
0058d2d4  04 10 a0 e1                                      mov r1, r4
0058d2d8  07 00 a0 e1                                      mov r0, r7
0058d2dc  19 92 ff eb                                      bl #0x571b48
0058d2e0  05 10 a0 e1                                      mov r1, r5
0058d2e4  07 00 a0 e1                                      mov r0, r7
0058d2e8  42 94 ff eb                                      bl #0x5723f8
0058d2ec  04 00 a0 e1                                      mov r0, r4
0058d2f0  00 30 94 e5                                      ldr r3, [r4]
0058d2f4  0f e0 a0 e1                                      mov lr, pc
0058d2f8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0058d2fc  07 00 a0 e1                                      mov r0, r7
0058d300  30 92 ff eb                                      bl #0x571bc8
0058d304  03 ff ff ea                                      b #0x58cf18
0058d308  bc 21 9a e5                                      ldr r2, [sl, #0x1bc]
0058d30c  04 00 a0 e1                                      mov r0, r4
0058d310  05 30 a0 e1                                      mov r3, r5
0058d314  2c 20 8d e5                                      str r2, [sp, #0x2c]
0058d318  00 c0 94 e5                                      ldr ip, [r4]
0058d31c  05 20 a0 e1                                      mov r2, r5
0058d320  00 50 8d e5                                      str r5, [sp]
0058d324  04 50 8d e5                                      str r5, [sp, #4]
0058d328  08 50 8d e5                                      str r5, [sp, #8]
0058d32c  0c 50 8d e5                                      str r5, [sp, #0xc]
0058d330  10 50 8d e5                                      str r5, [sp, #0x10]
0058d334  14 50 8d e5                                      str r5, [sp, #0x14]
0058d338  18 50 8d e5                                      str r5, [sp, #0x18]
0058d33c  1c 50 8d e5                                      str r5, [sp, #0x1c]
0058d340  20 50 8d e5                                      str r5, [sp, #0x20]
0058d344  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0058d348  0f e0 a0 e1                                      mov lr, pc
0058d34c  10 f0 9c e5                                      ldr pc, [ip, #0x10]
0058d350  d5 fe ff ea                                      b #0x58ceac
; mapping-symbol data/literal pool
0058d354  d8 24 35 00 68 24 35 00 00 24 35 00 20 59 33 00  .byte 0xd8, 0x24, 0x35, 0x00, 0x68, 0x24, 0x35, 0x00, 0x00, 0x24, 0x35, 0x00, 0x20, 0x59, 0x33, 0x00
0058d364  dc 22 35 00 5c 22 35 00                          .byte 0xdc, 0x22, 0x35, 0x00, 0x5c, 0x22, 0x35, 0x00

; FUNCTION 0x0058d36c, declared_size=104, range_size=104, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager9saveSceneEPNS_2io10IWriteFileEPNS0_24ISceneUserDataSerializerE
; demangled: glitch::scene::CSceneManager::saveScene(glitch::io::IWriteFile*, glitch::scene::ISceneUserDataSerializer*)
; decoder-mode: arm
0058d36c  00 00 51 e3                                      cmp r1, #0
0058d370  70 40 2d e9                                      push {r4, r5, r6, lr}
0058d374  00 50 a0 e1                                      mov r5, r0
0058d378  02 60 a0 e1                                      mov r6, r2
0058d37c  12 00 00 0a                                      beq #0x58d3cc
0058d380  20 30 90 e5                                      ldr r3, [r0, #0x20]
0058d384  03 00 a0 e1                                      mov r0, r3
0058d388  00 30 93 e5                                      ldr r3, [r3]
0058d38c  0f e0 a0 e1                                      mov lr, pc
0058d390  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0058d394  00 40 50 e2                                      subs r4, r0, #0
0058d398  0b 00 00 0a                                      beq #0x58d3cc
0058d39c  00 30 94 e5                                      ldr r3, [r4]
0058d3a0  0f e0 a0 e1                                      mov lr, pc
0058d3a4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0058d3a8  05 00 a0 e1                                      mov r0, r5
0058d3ac  04 10 a0 e1                                      mov r1, r4
0058d3b0  06 30 a0 e1                                      mov r3, r6
0058d3b4  04 20 95 e5                                      ldr r2, [r5, #4]
0058d3b8  85 fe ff eb                                      bl #0x58cdd4
0058d3bc  04 00 a0 e1                                      mov r0, r4
0058d3c0  6f 40 f6 eb                                      bl #0x31d584
0058d3c4  01 00 a0 e3                                      mov r0, #1
0058d3c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0058d3cc  00 00 a0 e3                                      mov r0, #0
0058d3d0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0058d758, declared_size=196, range_size=196, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager32registerSceneNodeAnimatorFactoryEPNS0_25ISceneNodeAnimatorFactoryE
; demangled: glitch::scene::CSceneManager::registerSceneNodeAnimatorFactory(glitch::scene::ISceneNodeAnimatorFactory*)
; decoder-mode: arm
0058d758  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0058d75c  00 50 51 e2                                      subs r5, r1, #0
0058d760  00 40 a0 e1                                      mov r4, r0
0058d764  0b 00 00 0a                                      beq #0x58d798
0058d768  04 30 95 e5                                      ldr r3, [r5, #4]
0058d76c  01 30 83 e2                                      add r3, r3, #1
0058d770  04 30 85 e5                                      str r3, [r5, #4]
0058d774  dc 80 90 e5                                      ldr r8, [r0, #0xdc]
0058d778  e0 30 90 e5                                      ldr r3, [r0, #0xe0]
0058d77c  03 00 58 e1                                      cmp r8, r3
0058d780  05 00 00 0a                                      beq #0x58d79c
0058d784  00 50 88 e5                                      str r5, [r8]
0058d788  dc 30 90 e5                                      ldr r3, [r0, #0xdc]
0058d78c  04 30 83 e2                                      add r3, r3, #4
0058d790  dc 30 80 e5                                      str r3, [r0, #0xdc]
0058d794  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058d798  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058d79c  d8 30 90 e5                                      ldr r3, [r0, #0xd8]
0058d7a0  08 30 63 e0                                      rsb r3, r3, r8
0058d7a4  43 31 a0 e1                                      asr r3, r3, #2
0058d7a8  01 00 53 e3                                      cmp r3, #1
0058d7ac  03 70 83 20                                      addhs r7, r3, r3
0058d7b0  01 70 83 32                                      addlo r7, r3, #1
0058d7b4  07 01 77 e3                                      cmn r7, #0xc0000001
0058d7b8  13 00 00 9a                                      bls #0x58d80c
0058d7bc  03 70 e0 e3                                      mvn r7, #3
0058d7c0  00 10 a0 e3                                      mov r1, #0
0058d7c4  07 00 a0 e1                                      mov r0, r7
0058d7c8  66 0b f6 eb                                      bl #0x310568
0058d7cc  d8 10 94 e5                                      ldr r1, [r4, #0xd8]
0058d7d0  00 60 a0 e1                                      mov r6, r0
0058d7d4  01 80 58 e0                                      subs r8, r8, r1
0058d7d8  00 80 a0 01                                      moveq r8, r0
0058d7dc  02 00 00 0a                                      beq #0x58d7ec
0058d7e0  08 20 a0 e1                                      mov r2, r8
0058d7e4  d3 01 f6 eb                                      bl #0x30df38
0058d7e8  08 80 80 e0                                      add r8, r0, r8
0058d7ec  04 50 88 e4                                      str r5, [r8], #4
0058d7f0  d8 00 94 e5                                      ldr r0, [r4, #0xd8]
0058d7f4  07 70 86 e0                                      add r7, r6, r7
0058d7f8  14 0b f6 eb                                      bl #0x310450
0058d7fc  e0 70 84 e5                                      str r7, [r4, #0xe0]
0058d800  dc 80 84 e5                                      str r8, [r4, #0xdc]
0058d804  d8 60 84 e5                                      str r6, [r4, #0xd8]
0058d808  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058d80c  07 00 53 e1                                      cmp r3, r7
0058d810  07 71 a0 91                                      lslls r7, r7, #2
0058d814  e9 ff ff 9a                                      bls #0x58d7c0
0058d818  e7 ff ff ea                                      b #0x58d7bc

; FUNCTION 0x0058d8ac, declared_size=92, range_size=92, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager21addExternalMeshLoaderEPNS0_11IMeshLoaderE
; demangled: glitch::scene::CSceneManager::addExternalMeshLoader(glitch::scene::IMeshLoader*)
; decoder-mode: arm
0058d8ac  04 e0 2d e5                                      str lr, [sp, #-4]!
0058d8b0  00 30 51 e2                                      subs r3, r1, #0
0058d8b4  0c d0 4d e2                                      sub sp, sp, #0xc
0058d8b8  04 10 8d e5                                      str r1, [sp, #4]
0058d8bc  0b 00 00 0a                                      beq #0x58d8f0
0058d8c0  04 20 93 e5                                      ldr r2, [r3, #4]
0058d8c4  01 20 82 e2                                      add r2, r2, #1
0058d8c8  04 20 83 e5                                      str r2, [r3, #4]
0058d8cc  b8 10 90 e5                                      ldr r1, [r0, #0xb8]
0058d8d0  bc 30 90 e5                                      ldr r3, [r0, #0xbc]
0058d8d4  03 00 51 e1                                      cmp r1, r3
0058d8d8  06 00 00 0a                                      beq #0x58d8f8
0058d8dc  04 30 9d e5                                      ldr r3, [sp, #4]
0058d8e0  00 30 81 e5                                      str r3, [r1]
0058d8e4  b8 30 90 e5                                      ldr r3, [r0, #0xb8]
0058d8e8  04 30 83 e2                                      add r3, r3, #4
0058d8ec  b8 30 80 e5                                      str r3, [r0, #0xb8]
0058d8f0  0c d0 8d e2                                      add sp, sp, #0xc
0058d8f4  00 80 bd e8                                      ldm sp!, {pc}
0058d8f8  b4 00 80 e2                                      add r0, r0, #0xb4
0058d8fc  04 20 8d e2                                      add r2, sp, #4
0058d900  c5 ff ff eb                                      bl #0x58d81c
0058d904  f9 ff ff ea                                      b #0x58d8f0

; FUNCTION 0x0058d908, declared_size=1096, range_size=1096, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManagerC1EPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS_2io11IFileSystemEEEPNS_3gui14ICursorControlEPNS0_10IMeshCacheEPNSC_15IGUIEnvironmentE
; demangled: glitch::scene::CSceneManager::CSceneManager(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::gui::ICursorControl*, glitch::scene::IMeshCache*, glitch::gui::IGUIEnvironment*)
; decoder-mode: arm
0058d908  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0058d90c  20 54 9f e5                                      ldr r5, [pc, #0x420]
0058d910  20 e4 9f e5                                      ldr lr, [pc, #0x420]
0058d914  20 c4 9f e5                                      ldr ip, [pc, #0x420]
0058d918  05 50 8f e0                                      add r5, pc, r5
0058d91c  0e e0 95 e7                                      ldr lr, [r5, lr]
0058d920  0c c0 95 e7                                      ldr ip, [r5, ip]
0058d924  01 70 a0 e3                                      mov r7, #1
0058d928  0c 60 9e e5                                      ldr r6, [lr, #0xc]
0058d92c  08 c0 8c e2                                      add ip, ip, #8
0058d930  90 72 80 e5                                      str r7, [r0, #0x290]
0058d934  00 60 80 e5                                      str r6, [r0]
0058d938  8c c2 80 e5                                      str ip, [r0, #0x28c]
0058d93c  0c c0 16 e5                                      ldr ip, [r6, #-0xc]
0058d940  10 e0 9e e5                                      ldr lr, [lr, #0x10]
0058d944  1c d0 4d e2                                      sub sp, sp, #0x1c
0058d948  00 40 a0 e1                                      mov r4, r0
0058d94c  0c e0 80 e7                                      str lr, [r0, ip]
0058d950  01 60 a0 e1                                      mov r6, r1
0058d954  02 80 a0 e1                                      mov r8, r2
0058d958  03 a0 a0 e1                                      mov sl, r3
0058d95c  0a 4e 04 eb                                      bl #0x6a118c
0058d960  d8 33 9f e5                                      ldr r3, [pc, #0x3d8]
0058d964  00 10 a0 e3                                      mov r1, #0
0058d968  0c 70 84 e2                                      add r7, r4, #0xc
0058d96c  03 30 95 e7                                      ldr r3, [r5, r3]
0058d970  08 10 84 e5                                      str r1, [r4, #8]
0058d974  0c 70 84 e5                                      str r7, [r4, #0xc]
0058d978  b4 20 83 e2                                      add r2, r3, #0xb4
0058d97c  1c 30 83 e2                                      add r3, r3, #0x1c
0058d980  8c 22 84 e5                                      str r2, [r4, #0x28c]
0058d984  00 30 84 e5                                      str r3, [r4]
0058d988  10 70 84 e5                                      str r7, [r4, #0x10]
0058d98c  14 60 84 e5                                      str r6, [r4, #0x14]
0058d990  18 60 84 e5                                      str r6, [r4, #0x18]
0058d994  d4 30 96 e5                                      ldr r3, [r6, #0xd4]
0058d998  99 0f a0 e3                                      mov r0, #0x264
0058d99c  a0 90 93 e5                                      ldr sb, [r3, #0xa0]
0058d9a0  9c b0 93 e5                                      ldr fp, [r3, #0x9c]
0058d9a4  00 9a fe eb                                      bl #0x5341ac
0058d9a8  09 20 a0 e1                                      mov r2, sb
0058d9ac  0b 10 a0 e1                                      mov r1, fp
0058d9b0  06 30 a0 e1                                      mov r3, r6
0058d9b4  00 50 a0 e1                                      mov r5, r0
0058d9b8  18 55 00 eb                                      bl #0x5a2e20
0058d9bc  1c 50 84 e5                                      str r5, [r4, #0x1c]
0058d9c0  00 30 98 e5                                      ldr r3, [r8]
0058d9c4  00 50 a0 e3                                      mov r5, #0
0058d9c8  00 80 a0 e3                                      mov r8, #0
0058d9cc  00 00 53 e3                                      cmp r3, #0
0058d9d0  20 30 84 e5                                      str r3, [r4, #0x20]
0058d9d4  04 20 93 15                                      ldrne r2, [r3, #4]
0058d9d8  05 10 a0 e1                                      mov r1, r5
0058d9dc  45 0f 84 e2                                      add r0, r4, #0x114
0058d9e0  01 20 82 12                                      addne r2, r2, #1
0058d9e4  04 20 83 15                                      strne r2, [r3, #4]
0058d9e8  44 30 9d e5                                      ldr r3, [sp, #0x44]
0058d9ec  28 a0 84 e5                                      str sl, [r4, #0x28]
0058d9f0  2c 50 84 e5                                      str r5, [r4, #0x2c]
0058d9f4  24 30 84 e5                                      str r3, [r4, #0x24]
0058d9f8  30 50 84 e5                                      str r5, [r4, #0x30]
0058d9fc  34 50 84 e5                                      str r5, [r4, #0x34]
0058da00  38 50 84 e5                                      str r5, [r4, #0x38]
0058da04  3c 50 84 e5                                      str r5, [r4, #0x3c]
0058da08  40 50 84 e5                                      str r5, [r4, #0x40]
0058da0c  44 50 84 e5                                      str r5, [r4, #0x44]
0058da10  48 50 84 e5                                      str r5, [r4, #0x48]
0058da14  4c 50 84 e5                                      str r5, [r4, #0x4c]
0058da18  50 50 84 e5                                      str r5, [r4, #0x50]
0058da1c  54 50 84 e5                                      str r5, [r4, #0x54]
0058da20  58 50 84 e5                                      str r5, [r4, #0x58]
0058da24  5c 50 84 e5                                      str r5, [r4, #0x5c]
0058da28  60 50 84 e5                                      str r5, [r4, #0x60]
0058da2c  64 50 84 e5                                      str r5, [r4, #0x64]
0058da30  68 50 84 e5                                      str r5, [r4, #0x68]
0058da34  6c 50 84 e5                                      str r5, [r4, #0x6c]
0058da38  70 50 84 e5                                      str r5, [r4, #0x70]
0058da3c  74 50 84 e5                                      str r5, [r4, #0x74]
0058da40  78 50 84 e5                                      str r5, [r4, #0x78]
0058da44  7c 50 84 e5                                      str r5, [r4, #0x7c]
0058da48  80 50 84 e5                                      str r5, [r4, #0x80]
0058da4c  84 50 84 e5                                      str r5, [r4, #0x84]
0058da50  88 50 84 e5                                      str r5, [r4, #0x88]
0058da54  8c 50 84 e5                                      str r5, [r4, #0x8c]
0058da58  90 50 84 e5                                      str r5, [r4, #0x90]
0058da5c  94 50 84 e5                                      str r5, [r4, #0x94]
0058da60  98 50 84 e5                                      str r5, [r4, #0x98]
0058da64  9c 50 84 e5                                      str r5, [r4, #0x9c]
0058da68  a0 50 84 e5                                      str r5, [r4, #0xa0]
0058da6c  a4 50 84 e5                                      str r5, [r4, #0xa4]
0058da70  a8 50 84 e5                                      str r5, [r4, #0xa8]
0058da74  ac 50 84 e5                                      str r5, [r4, #0xac]
0058da78  b0 50 84 e5                                      str r5, [r4, #0xb0]
0058da7c  b4 50 84 e5                                      str r5, [r4, #0xb4]
0058da80  b8 50 84 e5                                      str r5, [r4, #0xb8]
0058da84  bc 50 84 e5                                      str r5, [r4, #0xbc]
0058da88  c0 50 84 e5                                      str r5, [r4, #0xc0]
0058da8c  c4 50 84 e5                                      str r5, [r4, #0xc4]
0058da90  c8 50 84 e5                                      str r5, [r4, #0xc8]
0058da94  cc 50 84 e5                                      str r5, [r4, #0xcc]
0058da98  d0 50 84 e5                                      str r5, [r4, #0xd0]
0058da9c  d4 50 84 e5                                      str r5, [r4, #0xd4]
0058daa0  d8 50 84 e5                                      str r5, [r4, #0xd8]
0058daa4  dc 50 84 e5                                      str r5, [r4, #0xdc]
0058daa8  e0 50 84 e5                                      str r5, [r4, #0xe0]
0058daac  e4 50 84 e5                                      str r5, [r4, #0xe4]
0058dab0  e8 80 84 e5                                      str r8, [r4, #0xe8]
0058dab4  ec 80 84 e5                                      str r8, [r4, #0xec]
0058dab8  f0 80 84 e5                                      str r8, [r4, #0xf0]
0058dabc  04 81 84 e5                                      str r8, [r4, #0x104]
0058dac0  08 81 84 e5                                      str r8, [r4, #0x108]
0058dac4  0c 81 84 e5                                      str r8, [r4, #0x10c]
0058dac8  10 81 84 e5                                      str r8, [r4, #0x110]
0058dacc  29 54 ff eb                                      bl #0x562b78
0058dad0  40 30 9d e5                                      ldr r3, [sp, #0x40]
0058dad4  68 12 9f e5                                      ldr r1, [pc, #0x268]
0058dad8  14 20 8d e2                                      add r2, sp, #0x14
0058dadc  70 31 84 e5                                      str r3, [r4, #0x170]
0058dae0  09 30 a0 e3                                      mov r3, #9
0058dae4  74 31 84 e5                                      str r3, [r4, #0x174]
0058dae8  01 10 8f e0                                      add r1, pc, r1
0058daec  5e 0f 84 e2                                      add r0, r4, #0x178
0058daf0  01 61 f6 eb                                      bl #0x325efc
0058daf4  4c 12 9f e5                                      ldr r1, [pc, #0x24c]
0058daf8  10 20 8d e2                                      add r2, sp, #0x10
0058dafc  07 0d 84 e2                                      add r0, r4, #0x1c0
0058db00  01 10 8f e0                                      add r1, pc, r1
0058db04  fc 60 f6 eb                                      bl #0x325efc
0058db08  3c 12 9f e5                                      ldr r1, [pc, #0x23c]
0058db0c  0c 20 8d e2                                      add r2, sp, #0xc
0058db10  82 0f 84 e2                                      add r0, r4, #0x208
0058db14  01 10 8f e0                                      add r1, pc, r1
0058db18  f7 60 f6 eb                                      bl #0x325efc
0058db1c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0058db20  01 a0 a0 e3                                      mov sl, #1
0058db24  58 52 84 e5                                      str r5, [r4, #0x258]
0058db28  5c 52 84 e5                                      str r5, [r4, #0x25c]
0058db2c  60 52 84 e5                                      str r5, [r4, #0x260]
0058db30  64 52 84 e5                                      str r5, [r4, #0x264]
0058db34  68 52 84 e5                                      str r5, [r4, #0x268]
0058db38  6c 52 84 e5                                      str r5, [r4, #0x26c]
0058db3c  70 52 84 e5                                      str r5, [r4, #0x270]
0058db40  74 52 84 e5                                      str r5, [r4, #0x274]
0058db44  78 52 84 e5                                      str r5, [r4, #0x278]
0058db48  7c 52 84 e5                                      str r5, [r4, #0x27c]
0058db4c  80 52 84 e5                                      str r5, [r4, #0x280]
0058db50  84 52 84 e5                                      str r5, [r4, #0x284]
0058db54  8a 52 c4 e5                                      strb r5, [r4, #0x28a]
0058db58  54 82 84 e5                                      str r8, [r4, #0x254]
0058db5c  88 a2 c4 e5                                      strb sl, [r4, #0x288]
0058db60  89 a2 c4 e5                                      strb sl, [r4, #0x289]
0058db64  03 00 a0 e1                                      mov r0, r3
0058db68  7f 10 a0 e3                                      mov r1, #0x7f
0058db6c  00 30 93 e5                                      ldr r3, [r3]
0058db70  0f e0 a0 e1                                      mov lr, pc
0058db74  dc f1 93 e5                                      ldr pc, [r3, #0x1dc]
0058db78  05 10 a0 e1                                      mov r1, r5
0058db7c  15 0e a0 e3                                      mov r0, #0x150
0058db80  89 99 fe eb                                      bl #0x5341ac
0058db84  04 10 a0 e1                                      mov r1, r4
0058db88  00 50 a0 e1                                      mov r5, r0
0058db8c  37 f1 ff eb                                      bl #0x58a070
0058db90  10 20 94 e5                                      ldr r2, [r4, #0x10]
0058db94  04 30 85 e2                                      add r3, r5, #4
0058db98  04 50 84 e5                                      str r5, [r4, #4]
0058db9c  08 20 85 e5                                      str r2, [r5, #8]
0058dba0  00 30 82 e5                                      str r3, [r2]
0058dba4  10 30 84 e5                                      str r3, [r4, #0x10]
0058dba8  04 70 85 e5                                      str r7, [r5, #4]
0058dbac  08 20 94 e5                                      ldr r2, [r4, #8]
0058dbb0  14 30 94 e5                                      ldr r3, [r4, #0x14]
0058dbb4  50 a2 c4 e5                                      strb sl, [r4, #0x250]
0058dbb8  0a 20 82 e0                                      add r2, r2, sl
0058dbbc  08 20 84 e5                                      str r2, [r4, #8]
0058dbc0  00 00 53 e3                                      cmp r3, #0
0058dbc4  04 20 93 15                                      ldrne r2, [r3, #4]
0058dbc8  0a 20 82 10                                      addne r2, r2, sl
0058dbcc  04 20 83 15                                      strne r2, [r3, #4]
0058dbd0  28 30 94 e5                                      ldr r3, [r4, #0x28]
0058dbd4  00 00 53 e3                                      cmp r3, #0
0058dbd8  04 20 93 15                                      ldrne r2, [r3, #4]
0058dbdc  01 20 82 12                                      addne r2, r2, #1
0058dbe0  04 20 83 15                                      strne r2, [r3, #4]
0058dbe4  24 30 94 e5                                      ldr r3, [r4, #0x24]
0058dbe8  00 00 53 e3                                      cmp r3, #0
0058dbec  04 20 93 15                                      ldrne r2, [r3, #4]
0058dbf0  01 20 82 12                                      addne r2, r2, #1
0058dbf4  04 20 83 15                                      strne r2, [r3, #4]
0058dbf8  70 11 94 e5                                      ldr r1, [r4, #0x170]
0058dbfc  00 00 51 e3                                      cmp r1, #0
0058dc00  44 00 00 0a                                      beq #0x58dd18
0058dc04  04 30 91 e5                                      ldr r3, [r1, #4]
0058dc08  01 30 83 e2                                      add r3, r3, #1
0058dc0c  04 30 81 e5                                      str r3, [r1, #4]
0058dc10  00 10 a0 e3                                      mov r1, #0
0058dc14  1c 00 a0 e3                                      mov r0, #0x1c
0058dc18  63 99 fe eb                                      bl #0x5341ac
0058dc1c  14 20 94 e5                                      ldr r2, [r4, #0x14]
0058dc20  00 50 a0 e1                                      mov r5, r0
0058dc24  04 10 a0 e1                                      mov r1, r4
0058dc28  06 d8 04 eb                                      bl #0x6c3c48
0058dc2c  2c 50 84 e5                                      str r5, [r4, #0x2c]
0058dc30  00 10 a0 e3                                      mov r1, #0
0058dc34  10 00 a0 e3                                      mov r0, #0x10
0058dc38  5b 99 fe eb                                      bl #0x5341ac
0058dc3c  20 60 84 e2                                      add r6, r4, #0x20
0058dc40  04 10 a0 e1                                      mov r1, r4
0058dc44  06 20 a0 e1                                      mov r2, r6
0058dc48  00 50 a0 e1                                      mov r5, r0
0058dc4c  c3 ad 04 eb                                      bl #0x6b9360
0058dc50  b8 10 94 e5                                      ldr r1, [r4, #0xb8]
0058dc54  bc 30 94 e5                                      ldr r3, [r4, #0xbc]
0058dc58  08 50 8d e5                                      str r5, [sp, #8]
0058dc5c  03 00 51 e1                                      cmp r1, r3
0058dc60  28 00 00 0a                                      beq #0x58dd08
0058dc64  00 50 81 e5                                      str r5, [r1]
0058dc68  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
0058dc6c  04 30 83 e2                                      add r3, r3, #4
0058dc70  b8 30 84 e5                                      str r3, [r4, #0xb8]
0058dc74  00 10 a0 e3                                      mov r1, #0
0058dc78  20 00 a0 e3                                      mov r0, #0x20
0058dc7c  4a 99 fe eb                                      bl #0x5341ac
0058dc80  06 30 a0 e1                                      mov r3, r6
0058dc84  28 20 94 e5                                      ldr r2, [r4, #0x28]
0058dc88  00 50 a0 e1                                      mov r5, r0
0058dc8c  04 10 a0 e1                                      mov r1, r4
0058dc90  dc b4 04 eb                                      bl #0x6bb008
0058dc94  05 10 a0 e1                                      mov r1, r5
0058dc98  04 00 a0 e1                                      mov r0, r4
0058dc9c  5f f4 ff eb                                      bl #0x58ae20
0058dca0  05 00 a0 e1                                      mov r0, r5
0058dca4  36 3e f6 eb                                      bl #0x31d584
0058dca8  00 10 a0 e3                                      mov r1, #0
0058dcac  10 00 a0 e3                                      mov r0, #0x10
0058dcb0  3d 99 fe eb                                      bl #0x5341ac
0058dcb4  28 20 94 e5                                      ldr r2, [r4, #0x28]
0058dcb8  00 50 a0 e1                                      mov r5, r0
0058dcbc  04 10 a0 e1                                      mov r1, r4
0058dcc0  45 ae 04 eb                                      bl #0x6b95dc
0058dcc4  05 10 a0 e1                                      mov r1, r5
0058dcc8  04 00 a0 e1                                      mov r0, r4
0058dccc  a1 fe ff eb                                      bl #0x58d758
0058dcd0  05 00 a0 e1                                      mov r0, r5
0058dcd4  2a 3e f6 eb                                      bl #0x31d584
0058dcd8  00 30 a0 e3                                      mov r3, #0
0058dcdc  69 20 e0 e3                                      mvn r2, #0x69
0058dce0  06 30 cd e5                                      strb r3, [sp, #6]
0058dce4  07 20 cd e5                                      strb r2, [sp, #7]
0058dce8  04 30 cd e5                                      strb r3, [sp, #4]
0058dcec  05 30 cd e5                                      strb r3, [sp, #5]
0058dcf0  04 00 a0 e1                                      mov r0, r4
0058dcf4  04 10 9d e5                                      ldr r1, [sp, #4]
0058dcf8  2b ed ff eb                                      bl #0x5891ac
0058dcfc  04 00 a0 e1                                      mov r0, r4
0058dd00  1c d0 8d e2                                      add sp, sp, #0x1c
0058dd04  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0058dd08  b4 00 84 e2                                      add r0, r4, #0xb4
0058dd0c  08 20 8d e2                                      add r2, sp, #8
0058dd10  c1 fe ff eb                                      bl #0x58d81c
0058dd14  d6 ff ff ea                                      b #0x58dc74
0058dd18  18 00 a0 e3                                      mov r0, #0x18
0058dd1c  22 99 fe eb                                      bl #0x5341ac
0058dd20  06 10 a0 e1                                      mov r1, r6
0058dd24  00 50 a0 e1                                      mov r5, r0
0058dd28  e3 c1 04 eb                                      bl #0x6be4bc
0058dd2c  70 51 84 e5                                      str r5, [r4, #0x170]
0058dd30  b6 ff ff ea                                      b #0x58dc10
; mapping-symbol data/literal pool
0058dd34  78 71 40 00 40 2c 00 00 44 2b 00 00 3c 25 00 00  .byte 0x78, 0x71, 0x40, 0x00, 0x40, 0x2c, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x3c, 0x25, 0x00, 0x00
0058dd44  68 19 35 00 78 19 35 00 2c 02 35 00              .byte 0x68, 0x19, 0x35, 0x00, 0x78, 0x19, 0x35, 0x00, 0x2c, 0x02, 0x35, 0x00

; FUNCTION 0x0058dd50, declared_size=128, range_size=128, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager21createNewSceneManagerEb
; demangled: glitch::scene::CSceneManager::createNewSceneManager(bool)
; decoder-mode: arm
0058dd50  70 40 2d e9                                      push {r4, r5, r6, lr}
0058dd54  00 40 a0 e1                                      mov r4, r0
0058dd58  08 d0 4d e2                                      sub sp, sp, #8
0058dd5c  01 60 a0 e1                                      mov r6, r1
0058dd60  a5 0f a0 e3                                      mov r0, #0x294
0058dd64  00 10 a0 e3                                      mov r1, #0
0058dd68  0f 99 fe eb                                      bl #0x5341ac
0058dd6c  70 e1 94 e5                                      ldr lr, [r4, #0x170]
0058dd70  24 c0 94 e5                                      ldr ip, [r4, #0x24]
0058dd74  14 10 94 e5                                      ldr r1, [r4, #0x14]
0058dd78  28 30 94 e5                                      ldr r3, [r4, #0x28]
0058dd7c  20 20 84 e2                                      add r2, r4, #0x20
0058dd80  00 50 a0 e1                                      mov r5, r0
0058dd84  00 e0 8d e5                                      str lr, [sp]
0058dd88  04 c0 8d e5                                      str ip, [sp, #4]
0058dd8c  dd fe ff eb                                      bl #0x58d908
0058dd90  00 00 56 e3                                      cmp r6, #0
0058dd94  0a 00 00 0a                                      beq #0x58ddc4
0058dd98  04 30 95 e5                                      ldr r3, [r5, #4]
0058dd9c  00 20 93 e5                                      ldr r2, [r3]
0058dda0  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0058dda4  00 00 83 e0                                      add r0, r3, r0
0058dda8  f5 3d f6 eb                                      bl #0x31d584
0058ddac  04 30 94 e5                                      ldr r3, [r4, #4]
0058ddb0  03 00 a0 e1                                      mov r0, r3
0058ddb4  00 30 93 e5                                      ldr r3, [r3]
0058ddb8  0f e0 a0 e1                                      mov lr, pc
0058ddbc  c0 f0 93 e5                                      ldr pc, [r3, #0xc0]
0058ddc0  04 00 85 e5                                      str r0, [r5, #4]
0058ddc4  05 00 a0 e1                                      mov r0, r5
0058ddc8  08 d0 8d e2                                      add sp, sp, #8
0058ddcc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0058ddd0, declared_size=1040, range_size=1040, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManagerC2EPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS_2io11IFileSystemEEEPNS_3gui14ICursorControlEPNS0_10IMeshCacheEPNSC_15IGUIEnvironmentE
; demangled: glitch::scene::CSceneManager::CSceneManager(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::gui::ICursorControl*, glitch::scene::IMeshCache*, glitch::gui::IGUIEnvironment*)
; decoder-mode: arm
0058ddd0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0058ddd4  01 70 a0 e1                                      mov r7, r1
0058ddd8  18 d0 4d e2                                      sub sp, sp, #0x18
0058dddc  00 40 a0 e1                                      mov r4, r0
0058dde0  02 50 a0 e1                                      mov r5, r2
0058dde4  03 80 a0 e1                                      mov r8, r3
0058dde8  e7 4c 04 eb                                      bl #0x6a118c
0058ddec  00 20 97 e5                                      ldr r2, [r7]
0058ddf0  00 30 a0 e3                                      mov r3, #0
0058ddf4  0c 60 84 e2                                      add r6, r4, #0xc
0058ddf8  00 20 84 e5                                      str r2, [r4]
0058ddfc  04 c0 97 e5                                      ldr ip, [r7, #4]
0058de00  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
0058de04  03 10 a0 e1                                      mov r1, r3
0058de08  99 0f a0 e3                                      mov r0, #0x264
0058de0c  02 c0 84 e7                                      str ip, [r4, r2]
0058de10  00 20 94 e5                                      ldr r2, [r4]
0058de14  08 c0 97 e5                                      ldr ip, [r7, #8]
0058de18  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0058de1c  02 c0 84 e7                                      str ip, [r4, r2]
0058de20  08 30 84 e5                                      str r3, [r4, #8]
0058de24  0c 60 84 e5                                      str r6, [r4, #0xc]
0058de28  10 60 84 e5                                      str r6, [r4, #0x10]
0058de2c  14 50 84 e5                                      str r5, [r4, #0x14]
0058de30  18 50 84 e5                                      str r5, [r4, #0x18]
0058de34  d4 30 95 e5                                      ldr r3, [r5, #0xd4]
0058de38  a0 a0 93 e5                                      ldr sl, [r3, #0xa0]
0058de3c  9c 90 93 e5                                      ldr sb, [r3, #0x9c]
0058de40  d9 98 fe eb                                      bl #0x5341ac
0058de44  0a 20 a0 e1                                      mov r2, sl
0058de48  09 10 a0 e1                                      mov r1, sb
0058de4c  05 30 a0 e1                                      mov r3, r5
0058de50  00 70 a0 e1                                      mov r7, r0
0058de54  f1 53 00 eb                                      bl #0x5a2e20
0058de58  1c 70 84 e5                                      str r7, [r4, #0x1c]
0058de5c  00 30 98 e5                                      ldr r3, [r8]
0058de60  00 70 a0 e3                                      mov r7, #0
0058de64  00 80 a0 e3                                      mov r8, #0
0058de68  00 00 53 e3                                      cmp r3, #0
0058de6c  20 30 84 e5                                      str r3, [r4, #0x20]
0058de70  04 20 93 15                                      ldrne r2, [r3, #4]
0058de74  07 10 a0 e1                                      mov r1, r7
0058de78  45 0f 84 e2                                      add r0, r4, #0x114
0058de7c  01 20 82 12                                      addne r2, r2, #1
0058de80  04 20 83 15                                      strne r2, [r3, #4]
0058de84  40 30 9d e5                                      ldr r3, [sp, #0x40]
0058de88  01 a0 a0 e3                                      mov sl, #1
0058de8c  24 30 84 e5                                      str r3, [r4, #0x24]
0058de90  38 30 9d e5                                      ldr r3, [sp, #0x38]
0058de94  2c 70 84 e5                                      str r7, [r4, #0x2c]
0058de98  30 70 84 e5                                      str r7, [r4, #0x30]
0058de9c  28 30 84 e5                                      str r3, [r4, #0x28]
0058dea0  34 70 84 e5                                      str r7, [r4, #0x34]
0058dea4  38 70 84 e5                                      str r7, [r4, #0x38]
0058dea8  3c 70 84 e5                                      str r7, [r4, #0x3c]
0058deac  40 70 84 e5                                      str r7, [r4, #0x40]
0058deb0  44 70 84 e5                                      str r7, [r4, #0x44]
0058deb4  48 70 84 e5                                      str r7, [r4, #0x48]
0058deb8  4c 70 84 e5                                      str r7, [r4, #0x4c]
0058debc  50 70 84 e5                                      str r7, [r4, #0x50]
0058dec0  54 70 84 e5                                      str r7, [r4, #0x54]
0058dec4  58 70 84 e5                                      str r7, [r4, #0x58]
0058dec8  5c 70 84 e5                                      str r7, [r4, #0x5c]
0058decc  60 70 84 e5                                      str r7, [r4, #0x60]
0058ded0  64 70 84 e5                                      str r7, [r4, #0x64]
0058ded4  68 70 84 e5                                      str r7, [r4, #0x68]
0058ded8  6c 70 84 e5                                      str r7, [r4, #0x6c]
0058dedc  70 70 84 e5                                      str r7, [r4, #0x70]
0058dee0  74 70 84 e5                                      str r7, [r4, #0x74]
0058dee4  78 70 84 e5                                      str r7, [r4, #0x78]
0058dee8  7c 70 84 e5                                      str r7, [r4, #0x7c]
0058deec  80 70 84 e5                                      str r7, [r4, #0x80]
0058def0  84 70 84 e5                                      str r7, [r4, #0x84]
0058def4  88 70 84 e5                                      str r7, [r4, #0x88]
0058def8  8c 70 84 e5                                      str r7, [r4, #0x8c]
0058defc  90 70 84 e5                                      str r7, [r4, #0x90]
0058df00  94 70 84 e5                                      str r7, [r4, #0x94]
0058df04  98 70 84 e5                                      str r7, [r4, #0x98]
0058df08  9c 70 84 e5                                      str r7, [r4, #0x9c]
0058df0c  a0 70 84 e5                                      str r7, [r4, #0xa0]
0058df10  a4 70 84 e5                                      str r7, [r4, #0xa4]
0058df14  a8 70 84 e5                                      str r7, [r4, #0xa8]
0058df18  ac 70 84 e5                                      str r7, [r4, #0xac]
0058df1c  b0 70 84 e5                                      str r7, [r4, #0xb0]
0058df20  b4 70 84 e5                                      str r7, [r4, #0xb4]
0058df24  b8 70 84 e5                                      str r7, [r4, #0xb8]
0058df28  bc 70 84 e5                                      str r7, [r4, #0xbc]
0058df2c  c0 70 84 e5                                      str r7, [r4, #0xc0]
0058df30  c4 70 84 e5                                      str r7, [r4, #0xc4]
0058df34  c8 70 84 e5                                      str r7, [r4, #0xc8]
0058df38  cc 70 84 e5                                      str r7, [r4, #0xcc]
0058df3c  d0 70 84 e5                                      str r7, [r4, #0xd0]
0058df40  d4 70 84 e5                                      str r7, [r4, #0xd4]
0058df44  d8 70 84 e5                                      str r7, [r4, #0xd8]
0058df48  dc 70 84 e5                                      str r7, [r4, #0xdc]
0058df4c  e0 70 84 e5                                      str r7, [r4, #0xe0]
0058df50  e4 70 84 e5                                      str r7, [r4, #0xe4]
0058df54  e8 80 84 e5                                      str r8, [r4, #0xe8]
0058df58  ec 80 84 e5                                      str r8, [r4, #0xec]
0058df5c  f0 80 84 e5                                      str r8, [r4, #0xf0]
0058df60  04 81 84 e5                                      str r8, [r4, #0x104]
0058df64  08 81 84 e5                                      str r8, [r4, #0x108]
0058df68  0c 81 84 e5                                      str r8, [r4, #0x10c]
0058df6c  10 81 84 e5                                      str r8, [r4, #0x110]
0058df70  00 53 ff eb                                      bl #0x562b78
0058df74  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0058df78  54 12 9f e5                                      ldr r1, [pc, #0x254]
0058df7c  14 20 8d e2                                      add r2, sp, #0x14
0058df80  70 31 84 e5                                      str r3, [r4, #0x170]
0058df84  09 30 a0 e3                                      mov r3, #9
0058df88  74 31 84 e5                                      str r3, [r4, #0x174]
0058df8c  01 10 8f e0                                      add r1, pc, r1
0058df90  5e 0f 84 e2                                      add r0, r4, #0x178
0058df94  d8 5f f6 eb                                      bl #0x325efc
0058df98  38 12 9f e5                                      ldr r1, [pc, #0x238]
0058df9c  10 20 8d e2                                      add r2, sp, #0x10
0058dfa0  07 0d 84 e2                                      add r0, r4, #0x1c0
0058dfa4  01 10 8f e0                                      add r1, pc, r1
0058dfa8  d3 5f f6 eb                                      bl #0x325efc
0058dfac  28 12 9f e5                                      ldr r1, [pc, #0x228]
0058dfb0  0c 20 8d e2                                      add r2, sp, #0xc
0058dfb4  82 0f 84 e2                                      add r0, r4, #0x208
0058dfb8  01 10 8f e0                                      add r1, pc, r1
0058dfbc  ce 5f f6 eb                                      bl #0x325efc
0058dfc0  14 30 94 e5                                      ldr r3, [r4, #0x14]
0058dfc4  58 72 84 e5                                      str r7, [r4, #0x258]
0058dfc8  5c 72 84 e5                                      str r7, [r4, #0x25c]
0058dfcc  60 72 84 e5                                      str r7, [r4, #0x260]
0058dfd0  64 72 84 e5                                      str r7, [r4, #0x264]
0058dfd4  68 72 84 e5                                      str r7, [r4, #0x268]
0058dfd8  6c 72 84 e5                                      str r7, [r4, #0x26c]
0058dfdc  70 72 84 e5                                      str r7, [r4, #0x270]
0058dfe0  74 72 84 e5                                      str r7, [r4, #0x274]
0058dfe4  78 72 84 e5                                      str r7, [r4, #0x278]
0058dfe8  7c 72 84 e5                                      str r7, [r4, #0x27c]
0058dfec  80 72 84 e5                                      str r7, [r4, #0x280]
0058dff0  84 72 84 e5                                      str r7, [r4, #0x284]
0058dff4  8a 72 c4 e5                                      strb r7, [r4, #0x28a]
0058dff8  54 82 84 e5                                      str r8, [r4, #0x254]
0058dffc  88 a2 c4 e5                                      strb sl, [r4, #0x288]
0058e000  89 a2 c4 e5                                      strb sl, [r4, #0x289]
0058e004  03 00 a0 e1                                      mov r0, r3
0058e008  7f 10 a0 e3                                      mov r1, #0x7f
0058e00c  00 30 93 e5                                      ldr r3, [r3]
0058e010  0f e0 a0 e1                                      mov lr, pc
0058e014  dc f1 93 e5                                      ldr pc, [r3, #0x1dc]
0058e018  07 10 a0 e1                                      mov r1, r7
0058e01c  15 0e a0 e3                                      mov r0, #0x150
0058e020  61 98 fe eb                                      bl #0x5341ac
0058e024  04 10 a0 e1                                      mov r1, r4
0058e028  00 70 a0 e1                                      mov r7, r0
0058e02c  0f f0 ff eb                                      bl #0x58a070
0058e030  10 20 94 e5                                      ldr r2, [r4, #0x10]
0058e034  04 30 87 e2                                      add r3, r7, #4
0058e038  04 70 84 e5                                      str r7, [r4, #4]
0058e03c  08 20 87 e5                                      str r2, [r7, #8]
0058e040  00 30 82 e5                                      str r3, [r2]
0058e044  10 30 84 e5                                      str r3, [r4, #0x10]
0058e048  04 60 87 e5                                      str r6, [r7, #4]
0058e04c  08 20 94 e5                                      ldr r2, [r4, #8]
0058e050  14 30 94 e5                                      ldr r3, [r4, #0x14]
0058e054  50 a2 c4 e5                                      strb sl, [r4, #0x250]
0058e058  0a 20 82 e0                                      add r2, r2, sl
0058e05c  08 20 84 e5                                      str r2, [r4, #8]
0058e060  00 00 53 e3                                      cmp r3, #0
0058e064  04 20 93 15                                      ldrne r2, [r3, #4]
0058e068  0a 20 82 10                                      addne r2, r2, sl
0058e06c  04 20 83 15                                      strne r2, [r3, #4]
0058e070  28 30 94 e5                                      ldr r3, [r4, #0x28]
0058e074  00 00 53 e3                                      cmp r3, #0
0058e078  04 20 93 15                                      ldrne r2, [r3, #4]
0058e07c  01 20 82 12                                      addne r2, r2, #1
0058e080  04 20 83 15                                      strne r2, [r3, #4]
0058e084  24 30 94 e5                                      ldr r3, [r4, #0x24]
0058e088  00 00 53 e3                                      cmp r3, #0
0058e08c  04 20 93 15                                      ldrne r2, [r3, #4]
0058e090  01 20 82 12                                      addne r2, r2, #1
0058e094  04 20 83 15                                      strne r2, [r3, #4]
0058e098  70 11 94 e5                                      ldr r1, [r4, #0x170]
0058e09c  00 00 51 e3                                      cmp r1, #0
0058e0a0  44 00 00 0a                                      beq #0x58e1b8
0058e0a4  04 30 91 e5                                      ldr r3, [r1, #4]
0058e0a8  01 30 83 e2                                      add r3, r3, #1
0058e0ac  04 30 81 e5                                      str r3, [r1, #4]
0058e0b0  00 10 a0 e3                                      mov r1, #0
0058e0b4  1c 00 a0 e3                                      mov r0, #0x1c
0058e0b8  3b 98 fe eb                                      bl #0x5341ac
0058e0bc  14 20 94 e5                                      ldr r2, [r4, #0x14]
0058e0c0  00 50 a0 e1                                      mov r5, r0
0058e0c4  04 10 a0 e1                                      mov r1, r4
0058e0c8  de d6 04 eb                                      bl #0x6c3c48
0058e0cc  2c 50 84 e5                                      str r5, [r4, #0x2c]
0058e0d0  00 10 a0 e3                                      mov r1, #0
0058e0d4  10 00 a0 e3                                      mov r0, #0x10
0058e0d8  33 98 fe eb                                      bl #0x5341ac
0058e0dc  20 60 84 e2                                      add r6, r4, #0x20
0058e0e0  04 10 a0 e1                                      mov r1, r4
0058e0e4  06 20 a0 e1                                      mov r2, r6
0058e0e8  00 50 a0 e1                                      mov r5, r0
0058e0ec  9b ac 04 eb                                      bl #0x6b9360
0058e0f0  b8 10 94 e5                                      ldr r1, [r4, #0xb8]
0058e0f4  bc 30 94 e5                                      ldr r3, [r4, #0xbc]
0058e0f8  08 50 8d e5                                      str r5, [sp, #8]
0058e0fc  03 00 51 e1                                      cmp r1, r3
0058e100  28 00 00 0a                                      beq #0x58e1a8
0058e104  00 50 81 e5                                      str r5, [r1]
0058e108  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
0058e10c  04 30 83 e2                                      add r3, r3, #4
0058e110  b8 30 84 e5                                      str r3, [r4, #0xb8]
0058e114  00 10 a0 e3                                      mov r1, #0
0058e118  20 00 a0 e3                                      mov r0, #0x20
0058e11c  22 98 fe eb                                      bl #0x5341ac
0058e120  06 30 a0 e1                                      mov r3, r6
0058e124  28 20 94 e5                                      ldr r2, [r4, #0x28]
0058e128  00 50 a0 e1                                      mov r5, r0
0058e12c  04 10 a0 e1                                      mov r1, r4
0058e130  b4 b3 04 eb                                      bl #0x6bb008
0058e134  05 10 a0 e1                                      mov r1, r5
0058e138  04 00 a0 e1                                      mov r0, r4
0058e13c  37 f3 ff eb                                      bl #0x58ae20
0058e140  05 00 a0 e1                                      mov r0, r5
0058e144  0e 3d f6 eb                                      bl #0x31d584
0058e148  00 10 a0 e3                                      mov r1, #0
0058e14c  10 00 a0 e3                                      mov r0, #0x10
0058e150  15 98 fe eb                                      bl #0x5341ac
0058e154  28 20 94 e5                                      ldr r2, [r4, #0x28]
0058e158  00 50 a0 e1                                      mov r5, r0
0058e15c  04 10 a0 e1                                      mov r1, r4
0058e160  1d ad 04 eb                                      bl #0x6b95dc
0058e164  05 10 a0 e1                                      mov r1, r5
0058e168  04 00 a0 e1                                      mov r0, r4
0058e16c  79 fd ff eb                                      bl #0x58d758
0058e170  05 00 a0 e1                                      mov r0, r5
0058e174  02 3d f6 eb                                      bl #0x31d584
0058e178  00 30 a0 e3                                      mov r3, #0
0058e17c  69 20 e0 e3                                      mvn r2, #0x69
0058e180  06 30 cd e5                                      strb r3, [sp, #6]
0058e184  07 20 cd e5                                      strb r2, [sp, #7]
0058e188  04 30 cd e5                                      strb r3, [sp, #4]
0058e18c  05 30 cd e5                                      strb r3, [sp, #5]
0058e190  04 00 a0 e1                                      mov r0, r4
0058e194  04 10 9d e5                                      ldr r1, [sp, #4]
0058e198  03 ec ff eb                                      bl #0x5891ac
0058e19c  04 00 a0 e1                                      mov r0, r4
0058e1a0  18 d0 8d e2                                      add sp, sp, #0x18
0058e1a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0058e1a8  b4 00 84 e2                                      add r0, r4, #0xb4
0058e1ac  08 20 8d e2                                      add r2, sp, #8
0058e1b0  99 fd ff eb                                      bl #0x58d81c
0058e1b4  d6 ff ff ea                                      b #0x58e114
0058e1b8  18 00 a0 e3                                      mov r0, #0x18
0058e1bc  fa 97 fe eb                                      bl #0x5341ac
0058e1c0  05 10 a0 e1                                      mov r1, r5
0058e1c4  00 60 a0 e1                                      mov r6, r0
0058e1c8  bb c0 04 eb                                      bl #0x6be4bc
0058e1cc  70 61 84 e5                                      str r6, [r4, #0x170]
0058e1d0  b6 ff ff ea                                      b #0x58e0b0
; mapping-symbol data/literal pool
0058e1d4  c4 14 35 00 d4 14 35 00 88 fd 34 00              .byte 0xc4, 0x14, 0x35, 0x00, 0xd4, 0x14, 0x35, 0x00, 0x88, 0xfd, 0x34, 0x00

; FUNCTION 0x0058e1e0, declared_size=1416, range_size=1416, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager13readSceneNodeEPNS_2io13IIrrXMLReaderIwNS_17IReferenceCountedEEEPNS0_10ISceneNodeEPNS0_24ISceneUserDataSerializerE
; demangled: glitch::scene::CSceneManager::readSceneNode(glitch::io::IIrrXMLReader<wchar_t, glitch::IReferenceCounted>*, glitch::scene::ISceneNode*, glitch::scene::ISceneUserDataSerializer*)
; decoder-mode: arm
0058e1e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0058e1e4  5c 55 9f e5                                      ldr r5, [pc, #0x55c]
0058e1e8  5c 95 9f e5                                      ldr sb, [pc, #0x55c]
0058e1ec  00 40 51 e2                                      subs r4, r1, #0
0058e1f0  05 50 8f e0                                      add r5, pc, r5
0058e1f4  09 10 95 e7                                      ldr r1, [r5, sb]
0058e1f8  02 b0 a0 e1                                      mov fp, r2
0058e1fc  67 df 4d e2                                      sub sp, sp, #0x19c
0058e200  00 20 91 e5                                      ldr r2, [r1]
0058e204  00 60 a0 e1                                      mov r6, r0
0058e208  08 30 8d e5                                      str r3, [sp, #8]
0058e20c  94 21 8d e5                                      str r2, [sp, #0x194]
0058e210  3d 00 00 0a                                      beq #0x58e30c
0058e214  00 00 5b e3                                      cmp fp, #0
0058e218  0e 01 00 0a                                      beq #0x58e658
0058e21c  00 30 94 e5                                      ldr r3, [r4]
0058e220  04 00 a0 e1                                      mov r0, r4
0058e224  0f e0 a0 e1                                      mov lr, pc
0058e228  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0058e22c  07 2d 86 e2                                      add r2, r6, #0x1c0
0058e230  00 10 a0 e1                                      mov r1, r0
0058e234  02 00 a0 e1                                      mov r0, r2
0058e238  00 20 8d e5                                      str r2, [sp]
0058e23c  70 a0 fe eb                                      bl #0x536404
0058e240  00 00 50 e3                                      cmp r0, #0
0058e244  cb 00 00 1a                                      bne #0x58e578
0058e248  5e 3f 86 e2                                      add r3, r6, #0x178
0058e24c  10 30 8d e5                                      str r3, [sp, #0x10]
0058e250  00 20 a0 e3                                      mov r2, #0
0058e254  04 20 8d e5                                      str r2, [sp, #4]
0058e258  02 70 a0 e1                                      mov r7, r2
0058e25c  ec 34 9f e5                                      ldr r3, [pc, #0x4ec]
0058e260  ec 24 9f e5                                      ldr r2, [pc, #0x4ec]
0058e264  ec b4 9f e5                                      ldr fp, [pc, #0x4ec]
0058e268  03 30 8f e0                                      add r3, pc, r3
0058e26c  0c 30 8d e5                                      str r3, [sp, #0xc]
0058e270  e4 34 9f e5                                      ldr r3, [pc, #0x4e4]
0058e274  1c 20 8d e5                                      str r2, [sp, #0x1c]
0058e278  0b b0 8f e0                                      add fp, pc, fp
0058e27c  03 30 8f e0                                      add r3, pc, r3
0058e280  14 30 8d e5                                      str r3, [sp, #0x14]
0058e284  d4 34 9f e5                                      ldr r3, [pc, #0x4d4]
0058e288  03 30 8f e0                                      add r3, pc, r3
0058e28c  18 30 8d e5                                      str r3, [sp, #0x18]
0058e290  00 30 94 e5                                      ldr r3, [r4]
0058e294  04 00 a0 e1                                      mov r0, r4
0058e298  0f e0 a0 e1                                      mov lr, pc
0058e29c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0058e2a0  00 00 50 e3                                      cmp r0, #0
0058e2a4  10 00 00 0a                                      beq #0x58e2ec
0058e2a8  00 30 94 e5                                      ldr r3, [r4]
0058e2ac  04 00 a0 e1                                      mov r0, r4
0058e2b0  0f e0 a0 e1                                      mov lr, pc
0058e2b4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0058e2b8  01 00 50 e3                                      cmp r0, #1
0058e2bc  19 00 00 0a                                      beq #0x58e328
0058e2c0  02 00 50 e3                                      cmp r0, #2
0058e2c4  f1 ff ff 1a                                      bne #0x58e290
0058e2c8  00 30 94 e5                                      ldr r3, [r4]
0058e2cc  04 00 a0 e1                                      mov r0, r4
0058e2d0  0f e0 a0 e1                                      mov lr, pc
0058e2d4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0058e2d8  00 10 a0 e1                                      mov r1, r0
0058e2dc  00 00 9d e5                                      ldr r0, [sp]
0058e2e0  47 a0 fe eb                                      bl #0x536404
0058e2e4  00 00 50 e3                                      cmp r0, #0
0058e2e8  5a 00 00 0a                                      beq #0x58e458
0058e2ec  04 30 9d e5                                      ldr r3, [sp, #4]
0058e2f0  00 00 53 e3                                      cmp r3, #0
0058e2f4  04 00 00 0a                                      beq #0x58e30c
0058e2f8  08 00 9d e5                                      ldr r0, [sp, #8]
0058e2fc  07 10 a0 e1                                      mov r1, r7
0058e300  00 30 90 e5                                      ldr r3, [r0]
0058e304  0f e0 a0 e1                                      mov lr, pc
0058e308  08 f0 93 e5                                      ldr pc, [r3, #8]
0058e30c  09 30 95 e7                                      ldr r3, [r5, sb]
0058e310  94 21 9d e5                                      ldr r2, [sp, #0x194]
0058e314  00 30 93 e5                                      ldr r3, [r3]
0058e318  03 00 52 e1                                      cmp r2, r3
0058e31c  08 01 00 1a                                      bne #0x58e744
0058e320  67 df 8d e2                                      add sp, sp, #0x19c
0058e324  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0058e328  fc 80 8d e2                                      add r8, sp, #0xfc
0058e32c  16 2e 8d e2                                      add r2, sp, #0x160
0058e330  0b 10 a0 e1                                      mov r1, fp
0058e334  08 00 a0 e1                                      mov r0, r8
0058e338  ef 5e f6 eb                                      bl #0x325efc
0058e33c  00 30 94 e5                                      ldr r3, [r4]
0058e340  04 00 a0 e1                                      mov r0, r4
0058e344  0f e0 a0 e1                                      mov lr, pc
0058e348  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0058e34c  00 10 a0 e1                                      mov r1, r0
0058e350  08 00 a0 e1                                      mov r0, r8
0058e354  2a a0 fe eb                                      bl #0x536404
0058e358  00 a0 a0 e1                                      mov sl, r0
0058e35c  40 01 9d e5                                      ldr r0, [sp, #0x140]
0058e360  08 00 50 e1                                      cmp r0, r8
0058e364  02 00 00 0a                                      beq #0x58e374
0058e368  00 00 50 e3                                      cmp r0, #0
0058e36c  00 00 00 0a                                      beq #0x58e374
0058e370  36 08 f6 eb                                      bl #0x310450
0058e374  00 00 5a e3                                      cmp sl, #0
0058e378  1c 00 00 0a                                      beq #0x58e3f0
0058e37c  20 30 96 e5                                      ldr r3, [r6, #0x20]
0058e380  14 10 96 e5                                      ldr r1, [r6, #0x14]
0058e384  51 8f 8d e2                                      add r8, sp, #0x144
0058e388  03 00 a0 e1                                      mov r0, r3
0058e38c  00 30 93 e5                                      ldr r3, [r3]
0058e390  0f e0 a0 e1                                      mov lr, pc
0058e394  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0058e398  01 20 a0 e3                                      mov r2, #1
0058e39c  00 a0 a0 e1                                      mov sl, r0
0058e3a0  00 30 a0 e3                                      mov r3, #0
0058e3a4  04 10 a0 e1                                      mov r1, r4
0058e3a8  08 00 a0 e1                                      mov r0, r8
0058e3ac  59 8a ff eb                                      bl #0x570d18
0058e3b0  08 00 a0 e1                                      mov r0, r8
0058e3b4  0a 10 a0 e1                                      mov r1, sl
0058e3b8  58 8d ff eb                                      bl #0x571920
0058e3bc  00 00 57 e3                                      cmp r7, #0
0058e3c0  05 00 00 0a                                      beq #0x58e3dc
0058e3c4  00 30 97 e5                                      ldr r3, [r7]
0058e3c8  07 00 a0 e1                                      mov r0, r7
0058e3cc  0a 10 a0 e1                                      mov r1, sl
0058e3d0  00 20 a0 e3                                      mov r2, #0
0058e3d4  0f e0 a0 e1                                      mov lr, pc
0058e3d8  04 f0 93 e5                                      ldr pc, [r3, #4]
0058e3dc  0a 00 a0 e1                                      mov r0, sl
0058e3e0  67 3c f6 eb                                      bl #0x31d584
0058e3e4  08 00 a0 e1                                      mov r0, r8
0058e3e8  6a 8a ff eb                                      bl #0x570d98
0058e3ec  a7 ff ff ea                                      b #0x58e290
0058e3f0  b4 80 8d e2                                      add r8, sp, #0xb4
0058e3f4  57 2f 8d e2                                      add r2, sp, #0x15c
0058e3f8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0058e3fc  08 00 a0 e1                                      mov r0, r8
0058e400  bd 5e f6 eb                                      bl #0x325efc
0058e404  00 30 94 e5                                      ldr r3, [r4]
0058e408  04 00 a0 e1                                      mov r0, r4
0058e40c  0f e0 a0 e1                                      mov lr, pc
0058e410  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0058e414  00 10 a0 e1                                      mov r1, r0
0058e418  08 00 a0 e1                                      mov r0, r8
0058e41c  f8 9f fe eb                                      bl #0x536404
0058e420  00 a0 a0 e1                                      mov sl, r0
0058e424  f8 00 9d e5                                      ldr r0, [sp, #0xf8]
0058e428  08 00 50 e1                                      cmp r0, r8
0058e42c  02 00 00 0a                                      beq #0x58e43c
0058e430  00 00 50 e3                                      cmp r0, #0
0058e434  00 00 00 0a                                      beq #0x58e43c
0058e438  04 08 f6 eb                                      bl #0x310450
0058e43c  00 00 5a e3                                      cmp sl, #0
0058e440  0e 00 00 0a                                      beq #0x58e480
0058e444  06 00 a0 e1                                      mov r0, r6
0058e448  04 10 a0 e1                                      mov r1, r4
0058e44c  07 20 a0 e1                                      mov r2, r7
0058e450  21 f9 ff eb                                      bl #0x58c8dc
0058e454  8d ff ff ea                                      b #0x58e290
0058e458  00 30 94 e5                                      ldr r3, [r4]
0058e45c  04 00 a0 e1                                      mov r0, r4
0058e460  0f e0 a0 e1                                      mov lr, pc
0058e464  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0058e468  00 10 a0 e1                                      mov r1, r0
0058e46c  10 00 9d e5                                      ldr r0, [sp, #0x10]
0058e470  e3 9f fe eb                                      bl #0x536404
0058e474  00 00 50 e3                                      cmp r0, #0
0058e478  9b ff ff 1a                                      bne #0x58e2ec
0058e47c  83 ff ff ea                                      b #0x58e290
0058e480  6c 80 8d e2                                      add r8, sp, #0x6c
0058e484  56 2f 8d e2                                      add r2, sp, #0x158
0058e488  14 10 9d e5                                      ldr r1, [sp, #0x14]
0058e48c  08 00 a0 e1                                      mov r0, r8
0058e490  99 5e f6 eb                                      bl #0x325efc
0058e494  00 30 94 e5                                      ldr r3, [r4]
0058e498  04 00 a0 e1                                      mov r0, r4
0058e49c  0f e0 a0 e1                                      mov lr, pc
0058e4a0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0058e4a4  00 10 a0 e1                                      mov r1, r0
0058e4a8  08 00 a0 e1                                      mov r0, r8
0058e4ac  d4 9f fe eb                                      bl #0x536404
0058e4b0  00 a0 a0 e1                                      mov sl, r0
0058e4b4  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
0058e4b8  08 00 50 e1                                      cmp r0, r8
0058e4bc  02 00 00 0a                                      beq #0x58e4cc
0058e4c0  00 00 50 e3                                      cmp r0, #0
0058e4c4  00 00 00 0a                                      beq #0x58e4cc
0058e4c8  e0 07 f6 eb                                      bl #0x310450
0058e4cc  00 00 5a e3                                      cmp sl, #0
0058e4d0  04 00 00 0a                                      beq #0x58e4e8
0058e4d4  06 00 a0 e1                                      mov r0, r6
0058e4d8  04 10 a0 e1                                      mov r1, r4
0058e4dc  07 20 a0 e1                                      mov r2, r7
0058e4e0  57 f8 ff eb                                      bl #0x58c644
0058e4e4  69 ff ff ea                                      b #0x58e290
0058e4e8  24 80 8d e2                                      add r8, sp, #0x24
0058e4ec  55 2f 8d e2                                      add r2, sp, #0x154
0058e4f0  18 10 9d e5                                      ldr r1, [sp, #0x18]
0058e4f4  08 00 a0 e1                                      mov r0, r8
0058e4f8  7f 5e f6 eb                                      bl #0x325efc
0058e4fc  00 30 94 e5                                      ldr r3, [r4]
0058e500  04 00 a0 e1                                      mov r0, r4
0058e504  0f e0 a0 e1                                      mov lr, pc
0058e508  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0058e50c  00 10 a0 e1                                      mov r1, r0
0058e510  08 00 a0 e1                                      mov r0, r8
0058e514  ba 9f fe eb                                      bl #0x536404
0058e518  00 a0 a0 e1                                      mov sl, r0
0058e51c  68 00 9d e5                                      ldr r0, [sp, #0x68]
0058e520  08 00 50 e1                                      cmp r0, r8
0058e524  02 00 00 0a                                      beq #0x58e534
0058e528  00 00 50 e3                                      cmp r0, #0
0058e52c  00 00 00 0a                                      beq #0x58e534
0058e530  c6 07 f6 eb                                      bl #0x310450
0058e534  00 00 5a e3                                      cmp sl, #0
0058e538  40 00 00 1a                                      bne #0x58e640
0058e53c  00 30 94 e5                                      ldr r3, [r4]
0058e540  04 00 a0 e1                                      mov r0, r4
0058e544  0f e0 a0 e1                                      mov lr, pc
0058e548  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0058e54c  00 10 a0 e1                                      mov r1, r0
0058e550  00 00 9d e5                                      ldr r0, [sp]
0058e554  aa 9f fe eb                                      bl #0x536404
0058e558  00 00 50 e3                                      cmp r0, #0
0058e55c  54 00 00 0a                                      beq #0x58e6b4
0058e560  06 00 a0 e1                                      mov r0, r6
0058e564  04 10 a0 e1                                      mov r1, r4
0058e568  07 20 a0 e1                                      mov r2, r7
0058e56c  08 30 9d e5                                      ldr r3, [sp, #8]
0058e570  1a ff ff eb                                      bl #0x58e1e0
0058e574  45 ff ff ea                                      b #0x58e290
0058e578  00 30 94 e5                                      ldr r3, [r4]
0058e57c  4c 12 96 e5                                      ldr r1, [r6, #0x24c]
0058e580  04 00 a0 e1                                      mov r0, r4
0058e584  0f e0 a0 e1                                      mov lr, pc
0058e588  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0058e58c  5f 2f 8d e2                                      add r2, sp, #0x17c
0058e590  00 10 a0 e1                                      mov r1, r0
0058e594  02 00 a0 e1                                      mov r0, r2
0058e598  04 20 8d e5                                      str r2, [sp, #4]
0058e59c  ad 61 f6 eb                                      bl #0x326c58
0058e5a0  cc 30 96 e5                                      ldr r3, [r6, #0xcc]
0058e5a4  d0 80 96 e5                                      ldr r8, [r6, #0xd0]
0058e5a8  08 80 63 e0                                      rsb r8, r3, r8
0058e5ac  48 81 a0 e1                                      asr r8, r8, #2
0058e5b0  01 80 58 e2                                      subs r8, r8, #1
0058e5b4  5b 00 00 4a                                      bmi #0x58e728
0058e5b8  08 a1 a0 e1                                      lsl sl, r8, #2
0058e5bc  00 00 00 ea                                      b #0x58e5c4
0058e5c0  cc 30 96 e5                                      ldr r3, [r6, #0xcc]
0058e5c4  0a 30 93 e7                                      ldr r3, [r3, sl]
0058e5c8  90 11 9d e5                                      ldr r1, [sp, #0x190]
0058e5cc  0b 20 a0 e1                                      mov r2, fp
0058e5d0  03 00 a0 e1                                      mov r0, r3
0058e5d4  00 30 93 e5                                      ldr r3, [r3]
0058e5d8  0f e0 a0 e1                                      mov lr, pc
0058e5dc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0058e5e0  01 80 48 e2                                      sub r8, r8, #1
0058e5e4  00 00 58 e3                                      cmp r8, #0
0058e5e8  00 00 50 a3                                      cmpge r0, #0
0058e5ec  04 a0 4a e2                                      sub sl, sl, #4
0058e5f0  f2 ff ff 0a                                      beq #0x58e5c0
0058e5f4  00 00 50 e3                                      cmp r0, #0
0058e5f8  00 70 a0 e1                                      mov r7, r0
0058e5fc  49 00 00 0a                                      beq #0x58e728
0058e600  90 01 9d e5                                      ldr r0, [sp, #0x190]
0058e604  04 30 9d e5                                      ldr r3, [sp, #4]
0058e608  03 00 50 e1                                      cmp r0, r3
0058e60c  02 00 00 0a                                      beq #0x58e61c
0058e610  00 00 50 e3                                      cmp r0, #0
0058e614  00 00 00 0a                                      beq #0x58e61c
0058e618  8c 07 f6 eb                                      bl #0x310450
0058e61c  08 20 9d e5                                      ldr r2, [sp, #8]
0058e620  5e 3f 86 e2                                      add r3, r6, #0x178
0058e624  10 30 8d e5                                      str r3, [sp, #0x10]
0058e628  00 00 57 e3                                      cmp r7, #0
0058e62c  00 00 52 13                                      cmpne r2, #0
0058e630  00 20 a0 03                                      moveq r2, #0
0058e634  01 20 a0 13                                      movne r2, #1
0058e638  04 20 8d e5                                      str r2, [sp, #4]
0058e63c  06 ff ff ea                                      b #0x58e25c
0058e640  06 00 a0 e1                                      mov r0, r6
0058e644  04 10 a0 e1                                      mov r1, r4
0058e648  07 20 a0 e1                                      mov r2, r7
0058e64c  08 30 9d e5                                      ldr r3, [sp, #8]
0058e650  93 f7 ff eb                                      bl #0x58c4a4
0058e654  0d ff ff ea                                      b #0x58e290
0058e658  00 30 94 e5                                      ldr r3, [r4]
0058e65c  04 00 a0 e1                                      mov r0, r4
0058e660  0f e0 a0 e1                                      mov lr, pc
0058e664  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0058e668  5e 2f 86 e2                                      add r2, r6, #0x178
0058e66c  00 10 a0 e1                                      mov r1, r0
0058e670  02 00 a0 e1                                      mov r0, r2
0058e674  10 20 8d e5                                      str r2, [sp, #0x10]
0058e678  61 9f fe eb                                      bl #0x536404
0058e67c  00 00 50 e3                                      cmp r0, #0
0058e680  07 3d 86 02                                      addeq r3, r6, #0x1c0
0058e684  00 30 8d 05                                      streq r3, [sp]
0058e688  f0 fe ff 0a                                      beq #0x58e250
0058e68c  04 70 96 e5                                      ldr r7, [r6, #4]
0058e690  08 30 9d e5                                      ldr r3, [sp, #8]
0058e694  07 2d 86 e2                                      add r2, r6, #0x1c0
0058e698  00 20 8d e5                                      str r2, [sp]
0058e69c  00 00 53 e3                                      cmp r3, #0
0058e6a0  00 00 57 13                                      cmpne r7, #0
0058e6a4  00 30 a0 03                                      moveq r3, #0
0058e6a8  01 30 a0 13                                      movne r3, #1
0058e6ac  04 30 8d e5                                      str r3, [sp, #4]
0058e6b0  e9 fe ff ea                                      b #0x58e25c
0058e6b4  00 30 94 e5                                      ldr r3, [r4]
0058e6b8  04 00 a0 e1                                      mov r0, r4
0058e6bc  0f e0 a0 e1                                      mov lr, pc
0058e6c0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0058e6c4  00 10 a0 e1                                      mov r1, r0
0058e6c8  10 00 9d e5                                      ldr r0, [sp, #0x10]
0058e6cc  4c 9f fe eb                                      bl #0x536404
0058e6d0  00 00 50 e3                                      cmp r0, #0
0058e6d4  a1 ff ff 1a                                      bne #0x58e560
0058e6d8  00 30 94 e5                                      ldr r3, [r4]
0058e6dc  04 00 a0 e1                                      mov r0, r4
0058e6e0  0f e0 a0 e1                                      mov lr, pc
0058e6e4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0058e6e8  59 8f 8d e2                                      add r8, sp, #0x164
0058e6ec  00 10 a0 e1                                      mov r1, r0
0058e6f0  08 00 a0 e1                                      mov r0, r8
0058e6f4  57 61 f6 eb                                      bl #0x326c58
0058e6f8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0058e6fc  78 11 9d e5                                      ldr r1, [sp, #0x178]
0058e700  01 20 a0 e3                                      mov r2, #1
0058e704  03 00 8f e0                                      add r0, pc, r3
0058e708  76 f1 01 eb                                      bl #0x60ace8
0058e70c  78 01 9d e5                                      ldr r0, [sp, #0x178]
0058e710  08 00 50 e1                                      cmp r0, r8
0058e714  dd fe ff 0a                                      beq #0x58e290
0058e718  00 00 50 e3                                      cmp r0, #0
0058e71c  db fe ff 0a                                      beq #0x58e290
0058e720  4a 07 f6 eb                                      bl #0x310450
0058e724  d9 fe ff ea                                      b #0x58e290
0058e728  34 00 9f e5                                      ldr r0, [pc, #0x34]
0058e72c  90 11 9d e5                                      ldr r1, [sp, #0x190]
0058e730  01 20 a0 e3                                      mov r2, #1
0058e734  00 00 8f e0                                      add r0, pc, r0
0058e738  6a f1 01 eb                                      bl #0x60ace8
0058e73c  00 70 a0 e3                                      mov r7, #0
0058e740  ae ff ff ea                                      b #0x58e600
0058e744  f1 fe f5 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0058e748  a0 68 40 00 ac 40 00 00 c0 11 35 00 84 0e 35 00  .byte 0xa0, 0x68, 0x40, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x11, 0x35, 0x00, 0x84, 0x0e, 0x35, 0x00
0058e758  60 09 33 00 84 11 35 00 50 11 35 00 24 0e 35 00  .byte 0x60, 0x09, 0x33, 0x00, 0x84, 0x11, 0x35, 0x00, 0x50, 0x11, 0x35, 0x00, 0x24, 0x0e, 0x35, 0x00

; FUNCTION 0x0058e768, declared_size=188, range_size=188, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager9loadSceneEPNS_2io9IReadFileEPNS0_24ISceneUserDataSerializerE
; demangled: glitch::scene::CSceneManager::loadScene(glitch::io::IReadFile*, glitch::scene::ISceneUserDataSerializer*)
; decoder-mode: arm
0058e768  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0058e76c  00 70 51 e2                                      subs r7, r1, #0
0058e770  00 50 a0 e1                                      mov r5, r0
0058e774  02 60 a0 e1                                      mov r6, r2
0058e778  16 00 00 0a                                      beq #0x58e7d8
0058e77c  20 30 90 e5                                      ldr r3, [r0, #0x20]
0058e780  03 00 a0 e1                                      mov r0, r3
0058e784  00 30 93 e5                                      ldr r3, [r3]
0058e788  0f e0 a0 e1                                      mov lr, pc
0058e78c  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0058e790  00 40 50 e2                                      subs r4, r0, #0
0058e794  01 00 00 1a                                      bne #0x58e7a0
0058e798  14 00 00 ea                                      b #0x58e7f0
0058e79c  8f fe ff eb                                      bl #0x58e1e0
0058e7a0  00 30 94 e5                                      ldr r3, [r4]
0058e7a4  04 00 a0 e1                                      mov r0, r4
0058e7a8  0f e0 a0 e1                                      mov lr, pc
0058e7ac  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0058e7b0  00 00 50 e3                                      cmp r0, #0
0058e7b4  04 10 a0 e1                                      mov r1, r4
0058e7b8  05 00 a0 e1                                      mov r0, r5
0058e7bc  00 20 a0 e3                                      mov r2, #0
0058e7c0  06 30 a0 e1                                      mov r3, r6
0058e7c4  f4 ff ff 1a                                      bne #0x58e79c
0058e7c8  04 00 a0 e1                                      mov r0, r4
0058e7cc  6c 3b f6 eb                                      bl #0x31d584
0058e7d0  01 00 a0 e3                                      mov r0, #1
0058e7d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058e7d8  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0058e7dc  03 10 a0 e3                                      mov r1, #3
0058e7e0  00 00 8f e0                                      add r0, pc, r0
0058e7e4  2d f1 01 eb                                      bl #0x60aca0
0058e7e8  07 00 a0 e1                                      mov r0, r7
0058e7ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058e7f0  00 30 97 e5                                      ldr r3, [r7]
0058e7f4  07 00 a0 e1                                      mov r0, r7
0058e7f8  0f e0 a0 e1                                      mov lr, pc
0058e7fc  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0058e800  00 10 a0 e1                                      mov r1, r0
0058e804  14 00 9f e5                                      ldr r0, [pc, #0x14]
0058e808  03 20 a0 e3                                      mov r2, #3
0058e80c  00 00 8f e0                                      add r0, pc, r0
0058e810  34 f1 01 eb                                      bl #0x60ace8
0058e814  04 00 a0 e1                                      mov r0, r4
0058e818  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0058e81c  c0 0c 35 00 ac 0d 35 00                          .byte 0xc0, 0x0c, 0x35, 0x00, 0xac, 0x0d, 0x35, 0x00

; FUNCTION 0x0058e824, declared_size=736, range_size=736, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager7getMeshEPKc
; demangled: glitch::scene::CSceneManager::getMesh(char const*)
; decoder-mode: arm
0058e824  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0058e828  c0 52 9f e5                                      ldr r5, [pc, #0x2c0]
0058e82c  c0 82 9f e5                                      ldr r8, [pc, #0x2c0]
0058e830  01 70 a0 e1                                      mov r7, r1
0058e834  05 50 8f e0                                      add r5, pc, r5
0058e838  08 10 95 e7                                      ldr r1, [r5, r8]
0058e83c  70 31 97 e5                                      ldr r3, [r7, #0x170]
0058e840  3c d0 4d e2                                      sub sp, sp, #0x3c
0058e844  00 c0 91 e5                                      ldr ip, [r1]
0058e848  14 b0 8d e2                                      add fp, sp, #0x14
0058e84c  03 10 a0 e1                                      mov r1, r3
0058e850  34 c0 8d e5                                      str ip, [sp, #0x34]
0058e854  00 30 93 e5                                      ldr r3, [r3]
0058e858  00 a0 a0 e1                                      mov sl, r0
0058e85c  00 20 8d e5                                      str r2, [sp]
0058e860  0b 00 a0 e1                                      mov r0, fp
0058e864  0f e0 a0 e1                                      mov lr, pc
0058e868  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0058e86c  14 40 9d e5                                      ldr r4, [sp, #0x14]
0058e870  00 00 54 e3                                      cmp r4, #0
0058e874  0f 00 00 0a                                      beq #0x58e8b8
0058e878  00 40 8a e5                                      str r4, [sl]
0058e87c  04 30 94 e5                                      ldr r3, [r4, #4]
0058e880  01 30 83 e2                                      add r3, r3, #1
0058e884  04 30 84 e5                                      str r3, [r4, #4]
0058e888  14 00 9d e5                                      ldr r0, [sp, #0x14]
0058e88c  00 00 50 e3                                      cmp r0, #0
0058e890  00 00 00 0a                                      beq #0x58e898
0058e894  3a 3b f6 eb                                      bl #0x31d584
0058e898  08 30 95 e7                                      ldr r3, [r5, r8]
0058e89c  34 20 9d e5                                      ldr r2, [sp, #0x34]
0058e8a0  0a 00 a0 e1                                      mov r0, sl
0058e8a4  00 30 93 e5                                      ldr r3, [r3]
0058e8a8  03 00 52 e1                                      cmp r2, r3
0058e8ac  8e 00 00 1a                                      bne #0x58eaec
0058e8b0  3c d0 8d e2                                      add sp, sp, #0x3c
0058e8b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0058e8b8  20 30 97 e5                                      ldr r3, [r7, #0x20]
0058e8bc  00 10 9d e5                                      ldr r1, [sp]
0058e8c0  03 00 a0 e1                                      mov r0, r3
0058e8c4  00 30 93 e5                                      ldr r3, [r3]
0058e8c8  0f e0 a0 e1                                      mov lr, pc
0058e8cc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0058e8d0  00 90 50 e2                                      subs sb, r0, #0
0058e8d4  77 00 00 0a                                      beq #0x58eab8
0058e8d8  1c 00 8d e2                                      add r0, sp, #0x1c
0058e8dc  00 10 9d e5                                      ldr r1, [sp]
0058e8e0  18 20 8d e2                                      add r2, sp, #0x18
0058e8e4  0c 00 8d e5                                      str r0, [sp, #0xc]
0058e8e8  d3 5d f6 eb                                      bl #0x32603c
0058e8ec  30 10 9d e5                                      ldr r1, [sp, #0x30]
0058e8f0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0058e8f4  01 00 53 e1                                      cmp r3, r1
0058e8f8  0e 00 00 0a                                      beq #0x58e938
0058e8fc  04 30 d1 e7                                      ldrb r3, [r1, r4]
0058e900  04 10 81 e0                                      add r1, r1, r4
0058e904  01 40 84 e2                                      add r4, r4, #1
0058e908  73 20 ef e6                                      uxtb r2, r3
0058e90c  41 00 42 e2                                      sub r0, r2, #0x41
0058e910  70 00 ef e6                                      uxtb r0, r0
0058e914  19 00 50 e3                                      cmp r0, #0x19
0058e918  20 30 82 92                                      addls r3, r2, #0x20
0058e91c  73 30 ef 96                                      uxtbls r3, r3
0058e920  00 30 c1 e5                                      strb r3, [r1]
0058e924  30 10 9d e5                                      ldr r1, [sp, #0x30]
0058e928  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0058e92c  03 30 61 e0                                      rsb r3, r1, r3
0058e930  03 00 54 e1                                      cmp r4, r3
0058e934  f0 ff ff 3a                                      blo #0x58e8fc
0058e938  b4 30 97 e5                                      ldr r3, [r7, #0xb4]
0058e93c  b8 20 97 e5                                      ldr r2, [r7, #0xb8]
0058e940  02 20 63 e0                                      rsb r2, r3, r2
0058e944  42 21 a0 e1                                      asr r2, r2, #2
0058e948  01 40 52 e2                                      subs r4, r2, #1
0058e94c  3e 00 00 4a                                      bmi #0x58ea4c
0058e950  10 00 8d e2                                      add r0, sp, #0x10
0058e954  08 b0 8d e5                                      str fp, [sp, #8]
0058e958  04 41 a0 e1                                      lsl r4, r4, #2
0058e95c  0a b0 a0 e1                                      mov fp, sl
0058e960  00 60 a0 e3                                      mov r6, #0
0058e964  05 a0 a0 e1                                      mov sl, r5
0058e968  04 00 8d e5                                      str r0, [sp, #4]
0058e96c  02 50 a0 e1                                      mov r5, r2
0058e970  05 00 00 ea                                      b #0x58e98c
0058e974  01 60 86 e2                                      add r6, r6, #1
0058e978  05 00 56 e1                                      cmp r6, r5
0058e97c  04 40 44 e2                                      sub r4, r4, #4
0058e980  49 00 00 0a                                      beq #0x58eaac
0058e984  b4 30 97 e5                                      ldr r3, [r7, #0xb4]
0058e988  30 10 9d e5                                      ldr r1, [sp, #0x30]
0058e98c  04 30 93 e7                                      ldr r3, [r3, r4]
0058e990  03 00 a0 e1                                      mov r0, r3
0058e994  00 30 93 e5                                      ldr r3, [r3]
0058e998  0f e0 a0 e1                                      mov lr, pc
0058e99c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0058e9a0  00 00 50 e3                                      cmp r0, #0
0058e9a4  f2 ff ff 0a                                      beq #0x58e974
0058e9a8  00 10 a0 e3                                      mov r1, #0
0058e9ac  01 20 a0 e1                                      mov r2, r1
0058e9b0  00 30 99 e5                                      ldr r3, [sb]
0058e9b4  09 00 a0 e1                                      mov r0, sb
0058e9b8  0f e0 a0 e1                                      mov lr, pc
0058e9bc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0058e9c0  b4 30 97 e5                                      ldr r3, [r7, #0xb4]
0058e9c4  09 20 a0 e1                                      mov r2, sb
0058e9c8  04 00 9d e5                                      ldr r0, [sp, #4]
0058e9cc  04 30 93 e7                                      ldr r3, [r3, r4]
0058e9d0  03 10 a0 e1                                      mov r1, r3
0058e9d4  00 30 93 e5                                      ldr r3, [r3]
0058e9d8  0f e0 a0 e1                                      mov lr, pc
0058e9dc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0058e9e0  10 30 9d e5                                      ldr r3, [sp, #0x10]
0058e9e4  00 00 53 e3                                      cmp r3, #0
0058e9e8  04 20 93 15                                      ldrne r2, [r3, #4]
0058e9ec  01 20 82 12                                      addne r2, r2, #1
0058e9f0  04 20 83 15                                      strne r2, [r3, #4]
0058e9f4  14 00 9d e5                                      ldr r0, [sp, #0x14]
0058e9f8  14 30 8d e5                                      str r3, [sp, #0x14]
0058e9fc  00 00 50 e3                                      cmp r0, #0
0058ea00  00 00 00 0a                                      beq #0x58ea08
0058ea04  de 3a f6 eb                                      bl #0x31d584
0058ea08  10 00 9d e5                                      ldr r0, [sp, #0x10]
0058ea0c  00 00 50 e3                                      cmp r0, #0
0058ea10  00 00 00 0a                                      beq #0x58ea18
0058ea14  da 3a f6 eb                                      bl #0x31d584
0058ea18  14 30 9d e5                                      ldr r3, [sp, #0x14]
0058ea1c  00 00 53 e3                                      cmp r3, #0
0058ea20  d3 ff ff 0a                                      beq #0x58e974
0058ea24  70 31 97 e5                                      ldr r3, [r7, #0x170]
0058ea28  0a 50 a0 e1                                      mov r5, sl
0058ea2c  0b a0 a0 e1                                      mov sl, fp
0058ea30  08 b0 9d e5                                      ldr fp, [sp, #8]
0058ea34  03 00 a0 e1                                      mov r0, r3
0058ea38  00 10 9d e5                                      ldr r1, [sp]
0058ea3c  0b 20 a0 e1                                      mov r2, fp
0058ea40  00 30 93 e5                                      ldr r3, [r3]
0058ea44  0f e0 a0 e1                                      mov lr, pc
0058ea48  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0058ea4c  09 00 a0 e1                                      mov r0, sb
0058ea50  cb 3a f6 eb                                      bl #0x31d584
0058ea54  14 30 9d e5                                      ldr r3, [sp, #0x14]
0058ea58  00 00 53 e3                                      cmp r3, #0
0058ea5c  1c 00 00 0a                                      beq #0x58ead4
0058ea60  90 00 9f e5                                      ldr r0, [pc, #0x90]
0058ea64  00 10 9d e5                                      ldr r1, [sp]
0058ea68  01 20 a0 e3                                      mov r2, #1
0058ea6c  00 00 8f e0                                      add r0, pc, r0
0058ea70  9c f0 01 eb                                      bl #0x60ace8
0058ea74  14 30 9d e5                                      ldr r3, [sp, #0x14]
0058ea78  00 00 53 e3                                      cmp r3, #0
0058ea7c  00 30 8a e5                                      str r3, [sl]
0058ea80  04 20 93 15                                      ldrne r2, [r3, #4]
0058ea84  01 20 82 12                                      addne r2, r2, #1
0058ea88  04 20 83 15                                      strne r2, [r3, #4]
0058ea8c  30 00 9d e5                                      ldr r0, [sp, #0x30]
0058ea90  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0058ea94  03 00 50 e1                                      cmp r0, r3
0058ea98  7a ff ff 0a                                      beq #0x58e888
0058ea9c  00 00 50 e3                                      cmp r0, #0
0058eaa0  78 ff ff 0a                                      beq #0x58e888
0058eaa4  69 06 f6 eb                                      bl #0x310450
0058eaa8  76 ff ff ea                                      b #0x58e888
0058eaac  0a 50 a0 e1                                      mov r5, sl
0058eab0  0b a0 a0 e1                                      mov sl, fp
0058eab4  e4 ff ff ea                                      b #0x58ea4c
0058eab8  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0058eabc  00 10 9d e5                                      ldr r1, [sp]
0058eac0  03 20 a0 e3                                      mov r2, #3
0058eac4  00 00 8f e0                                      add r0, pc, r0
0058eac8  86 f0 01 eb                                      bl #0x60ace8
0058eacc  00 90 8a e5                                      str sb, [sl]
0058ead0  6c ff ff ea                                      b #0x58e888
0058ead4  24 00 9f e5                                      ldr r0, [pc, #0x24]
0058ead8  00 10 9d e5                                      ldr r1, [sp]
0058eadc  03 20 a0 e3                                      mov r2, #3
0058eae0  00 00 8f e0                                      add r0, pc, r0
0058eae4  7f f0 01 eb                                      bl #0x60ace8
0058eae8  e1 ff ff ea                                      b #0x58ea74
0058eaec  07 fe f5 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0058eaf0  5c 62 40 00 ac 40 00 00 cc 0a 35 00 14 0b 35 00  .byte 0x5c, 0x62, 0x40, 0x00, 0xac, 0x40, 0x00, 0x00, 0xcc, 0x0a, 0x35, 0x00, 0x14, 0x0b, 0x35, 0x00
0058eb00  18 0a 35 00                                      .byte 0x18, 0x0a, 0x35, 0x00

; FUNCTION 0x0058eb70, declared_size=912, range_size=912, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManagerD1Ev
; demangled: glitch::scene::CSceneManager::~CSceneManager()
; decoder-mode: arm
0058eb70  80 23 9f e5                                      ldr r2, [pc, #0x380]
0058eb74  80 33 9f e5                                      ldr r3, [pc, #0x380]
0058eb78  70 40 2d e9                                      push {r4, r5, r6, lr}
0058eb7c  02 20 8f e0                                      add r2, pc, r2
0058eb80  03 30 92 e7                                      ldr r3, [r2, r3]
0058eb84  00 40 a0 e1                                      mov r4, r0
0058eb88  08 d0 4d e2                                      sub sp, sp, #8
0058eb8c  b4 20 83 e2                                      add r2, r3, #0xb4
0058eb90  1c 30 83 e2                                      add r3, r3, #0x1c
0058eb94  00 30 80 e5                                      str r3, [r0]
0058eb98  8c 22 80 e5                                      str r2, [r0, #0x28c]
0058eb9c  eb f1 ff eb                                      bl #0x58b350
0058eba0  28 00 94 e5                                      ldr r0, [r4, #0x28]
0058eba4  00 00 50 e3                                      cmp r0, #0
0058eba8  00 00 00 0a                                      beq #0x58ebb0
0058ebac  74 3a f6 eb                                      bl #0x31d584
0058ebb0  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0058ebb4  00 00 50 e3                                      cmp r0, #0
0058ebb8  00 00 00 0a                                      beq #0x58ebc0
0058ebbc  70 3a f6 eb                                      bl #0x31d584
0058ebc0  24 00 94 e5                                      ldr r0, [r4, #0x24]
0058ebc4  00 00 50 e3                                      cmp r0, #0
0058ebc8  00 00 00 0a                                      beq #0x58ebd0
0058ebcc  6c 3a f6 eb                                      bl #0x31d584
0058ebd0  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
0058ebd4  b8 20 94 e5                                      ldr r2, [r4, #0xb8]
0058ebd8  02 20 63 e0                                      rsb r2, r3, r2
0058ebdc  22 21 b0 e1                                      lsrs r2, r2, #2
0058ebe0  08 00 00 0a                                      beq #0x58ec08
0058ebe4  00 50 a0 e3                                      mov r5, #0
0058ebe8  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0058ebec  64 3a f6 eb                                      bl #0x31d584
0058ebf0  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
0058ebf4  b8 20 94 e5                                      ldr r2, [r4, #0xb8]
0058ebf8  01 50 85 e2                                      add r5, r5, #1
0058ebfc  02 20 63 e0                                      rsb r2, r3, r2
0058ec00  42 01 55 e1                                      cmp r5, r2, asr #2
0058ec04  f7 ff ff 3a                                      blo #0x58ebe8
0058ec08  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
0058ec0c  00 00 53 e3                                      cmp r3, #0
0058ec10  03 00 00 0a                                      beq #0x58ec24
0058ec14  00 20 93 e5                                      ldr r2, [r3]
0058ec18  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0058ec1c  00 00 83 e0                                      add r0, r3, r0
0058ec20  57 3a f6 eb                                      bl #0x31d584
0058ec24  70 01 94 e5                                      ldr r0, [r4, #0x170]
0058ec28  00 30 a0 e3                                      mov r3, #0
0058ec2c  e4 30 84 e5                                      str r3, [r4, #0xe4]
0058ec30  03 00 50 e1                                      cmp r0, r3
0058ec34  00 00 00 0a                                      beq #0x58ec3c
0058ec38  51 3a f6 eb                                      bl #0x31d584
0058ec3c  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
0058ec40  d0 20 94 e5                                      ldr r2, [r4, #0xd0]
0058ec44  02 20 63 e0                                      rsb r2, r3, r2
0058ec48  22 21 b0 e1                                      lsrs r2, r2, #2
0058ec4c  08 00 00 0a                                      beq #0x58ec74
0058ec50  00 50 a0 e3                                      mov r5, #0
0058ec54  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0058ec58  49 3a f6 eb                                      bl #0x31d584
0058ec5c  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
0058ec60  d0 20 94 e5                                      ldr r2, [r4, #0xd0]
0058ec64  01 50 85 e2                                      add r5, r5, #1
0058ec68  02 20 63 e0                                      rsb r2, r3, r2
0058ec6c  42 01 55 e1                                      cmp r5, r2, asr #2
0058ec70  f7 ff ff 3a                                      blo #0x58ec54
0058ec74  d8 30 94 e5                                      ldr r3, [r4, #0xd8]
0058ec78  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
0058ec7c  02 20 63 e0                                      rsb r2, r3, r2
0058ec80  22 21 b0 e1                                      lsrs r2, r2, #2
0058ec84  08 00 00 0a                                      beq #0x58ecac
0058ec88  00 50 a0 e3                                      mov r5, #0
0058ec8c  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0058ec90  3b 3a f6 eb                                      bl #0x31d584
0058ec94  d8 30 94 e5                                      ldr r3, [r4, #0xd8]
0058ec98  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
0058ec9c  01 50 85 e2                                      add r5, r5, #1
0058eca0  02 20 63 e0                                      rsb r2, r3, r2
0058eca4  42 01 55 e1                                      cmp r5, r2, asr #2
0058eca8  f7 ff ff 3a                                      blo #0x58ec8c
0058ecac  04 50 a0 e1                                      mov r5, r4
0058ecb0  0c 30 b5 e5                                      ldr r3, [r5, #0xc]!
0058ecb4  05 00 53 e1                                      cmp r3, r5
0058ecb8  08 00 00 0a                                      beq #0x58ece0
0058ecbc  00 10 a0 e3                                      mov r1, #0
0058ecc0  00 00 00 ea                                      b #0x58ecc8
0058ecc4  02 30 a0 e1                                      mov r3, r2
0058ecc8  00 20 93 e5                                      ldr r2, [r3]
0058eccc  04 10 83 e5                                      str r1, [r3, #4]
0058ecd0  00 10 83 e5                                      str r1, [r3]
0058ecd4  02 00 55 e1                                      cmp r5, r2
0058ecd8  f9 ff ff 1a                                      bne #0x58ecc4
0058ecdc  05 30 a0 e1                                      mov r3, r5
0058ece0  04 20 94 e5                                      ldr r2, [r4, #4]
0058ece4  00 60 a0 e3                                      mov r6, #0
0058ece8  10 30 84 e5                                      str r3, [r4, #0x10]
0058ecec  0c 30 84 e5                                      str r3, [r4, #0xc]
0058ecf0  08 60 84 e5                                      str r6, [r4, #8]
0058ecf4  00 30 92 e5                                      ldr r3, [r2]
0058ecf8  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0058ecfc  00 00 82 e0                                      add r0, r2, r0
0058ed00  1f 3a f6 eb                                      bl #0x31d584
0058ed04  08 10 8d e2                                      add r1, sp, #8
0058ed08  27 0e 84 e2                                      add r0, r4, #0x270
0058ed0c  04 60 21 e5                                      str r6, [r1, #-4]!
0058ed10  19 f4 ff eb                                      bl #0x58bd7c
0058ed14  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0058ed18  06 00 50 e1                                      cmp r0, r6
0058ed1c  00 00 00 0a                                      beq #0x58ed24
0058ed20  17 3a f6 eb                                      bl #0x31d584
0058ed24  18 00 94 e5                                      ldr r0, [r4, #0x18]
0058ed28  00 00 50 e3                                      cmp r0, #0
0058ed2c  00 00 00 0a                                      beq #0x58ed34
0058ed30  13 3a f6 eb                                      bl #0x31d584
0058ed34  98 01 03 eb                                      bl #0x64f39c
0058ed38  e0 bb 02 eb                                      bl #0x63dcc0
0058ed3c  7c 02 94 e5                                      ldr r0, [r4, #0x27c]
0058ed40  00 00 50 e3                                      cmp r0, #0
0058ed44  00 00 00 0a                                      beq #0x58ed4c
0058ed48  c0 05 f6 eb                                      bl #0x310450
0058ed4c  70 02 94 e5                                      ldr r0, [r4, #0x270]
0058ed50  00 00 50 e3                                      cmp r0, #0
0058ed54  00 00 00 0a                                      beq #0x58ed5c
0058ed58  bc 05 f6 eb                                      bl #0x310450
0058ed5c  64 02 94 e5                                      ldr r0, [r4, #0x264]
0058ed60  00 00 50 e3                                      cmp r0, #0
0058ed64  00 00 00 0a                                      beq #0x58ed6c
0058ed68  b8 05 f6 eb                                      bl #0x310450
0058ed6c  58 02 94 e5                                      ldr r0, [r4, #0x258]
0058ed70  00 00 50 e3                                      cmp r0, #0
0058ed74  00 00 00 0a                                      beq #0x58ed7c
0058ed78  b4 05 f6 eb                                      bl #0x310450
0058ed7c  82 3f 84 e2                                      add r3, r4, #0x208
0058ed80  44 00 93 e5                                      ldr r0, [r3, #0x44]
0058ed84  03 00 50 e1                                      cmp r0, r3
0058ed88  02 00 00 0a                                      beq #0x58ed98
0058ed8c  00 00 50 e3                                      cmp r0, #0
0058ed90  00 00 00 0a                                      beq #0x58ed98
0058ed94  ad 05 f6 eb                                      bl #0x310450
0058ed98  07 3d 84 e2                                      add r3, r4, #0x1c0
0058ed9c  44 00 93 e5                                      ldr r0, [r3, #0x44]
0058eda0  03 00 50 e1                                      cmp r0, r3
0058eda4  02 00 00 0a                                      beq #0x58edb4
0058eda8  00 00 50 e3                                      cmp r0, #0
0058edac  00 00 00 0a                                      beq #0x58edb4
0058edb0  a6 05 f6 eb                                      bl #0x310450
0058edb4  5e 3f 84 e2                                      add r3, r4, #0x178
0058edb8  44 00 93 e5                                      ldr r0, [r3, #0x44]
0058edbc  03 00 50 e1                                      cmp r0, r3
0058edc0  02 00 00 0a                                      beq #0x58edd0
0058edc4  00 00 50 e3                                      cmp r0, #0
0058edc8  00 00 00 0a                                      beq #0x58edd0
0058edcc  9f 05 f6 eb                                      bl #0x310450
0058edd0  45 0f 84 e2                                      add r0, r4, #0x114
0058edd4  8f 55 ff eb                                      bl #0x564418
0058edd8  d8 00 94 e5                                      ldr r0, [r4, #0xd8]
0058eddc  00 00 50 e3                                      cmp r0, #0
0058ede0  00 00 00 0a                                      beq #0x58ede8
0058ede4  99 05 f6 eb                                      bl #0x310450
0058ede8  cc 00 94 e5                                      ldr r0, [r4, #0xcc]
0058edec  00 00 50 e3                                      cmp r0, #0
0058edf0  00 00 00 0a                                      beq #0x58edf8
0058edf4  95 05 f6 eb                                      bl #0x310450
0058edf8  c0 00 94 e5                                      ldr r0, [r4, #0xc0]
0058edfc  00 00 50 e3                                      cmp r0, #0
0058ee00  00 00 00 0a                                      beq #0x58ee08
0058ee04  91 05 f6 eb                                      bl #0x310450
0058ee08  b4 00 94 e5                                      ldr r0, [r4, #0xb4]
0058ee0c  00 00 50 e3                                      cmp r0, #0
0058ee10  00 00 00 0a                                      beq #0x58ee18
0058ee14  8d 05 f6 eb                                      bl #0x310450
0058ee18  90 00 84 e2                                      add r0, r4, #0x90
0058ee1c  34 eb ff eb                                      bl #0x589af4
0058ee20  84 00 84 e2                                      add r0, r4, #0x84
0058ee24  36 ff ff eb                                      bl #0x58eb04
0058ee28  78 00 84 e2                                      add r0, r4, #0x78
0058ee2c  a8 0c f7 eb                                      bl #0x3520d4
0058ee30  6c 00 94 e5                                      ldr r0, [r4, #0x6c]
0058ee34  00 00 50 e3                                      cmp r0, #0
0058ee38  00 00 00 0a                                      beq #0x58ee40
0058ee3c  83 05 f6 eb                                      bl #0x310450
0058ee40  60 00 94 e5                                      ldr r0, [r4, #0x60]
0058ee44  00 00 50 e3                                      cmp r0, #0
0058ee48  00 00 00 0a                                      beq #0x58ee50
0058ee4c  7f 05 f6 eb                                      bl #0x310450
0058ee50  54 00 94 e5                                      ldr r0, [r4, #0x54]
0058ee54  00 00 50 e3                                      cmp r0, #0
0058ee58  00 00 00 0a                                      beq #0x58ee60
0058ee5c  7b 05 f6 eb                                      bl #0x310450
0058ee60  48 00 94 e5                                      ldr r0, [r4, #0x48]
0058ee64  00 00 50 e3                                      cmp r0, #0
0058ee68  00 00 00 0a                                      beq #0x58ee70
0058ee6c  77 05 f6 eb                                      bl #0x310450
0058ee70  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0058ee74  00 00 50 e3                                      cmp r0, #0
0058ee78  00 00 00 0a                                      beq #0x58ee80
0058ee7c  73 05 f6 eb                                      bl #0x310450
0058ee80  30 00 94 e5                                      ldr r0, [r4, #0x30]
0058ee84  00 00 50 e3                                      cmp r0, #0
0058ee88  00 00 00 0a                                      beq #0x58ee90
0058ee8c  6f 05 f6 eb                                      bl #0x310450
0058ee90  20 00 94 e5                                      ldr r0, [r4, #0x20]
0058ee94  00 00 50 e3                                      cmp r0, #0
0058ee98  00 00 00 0a                                      beq #0x58eea0
0058ee9c  b8 39 f6 eb                                      bl #0x31d584
0058eea0  08 00 84 e2                                      add r0, r4, #8
0058eea4  04 30 90 e5                                      ldr r3, [r0, #4]
0058eea8  05 00 53 e1                                      cmp r3, r5
0058eeac  08 00 00 0a                                      beq #0x58eed4
0058eeb0  00 10 a0 e3                                      mov r1, #0
0058eeb4  00 00 00 ea                                      b #0x58eebc
0058eeb8  02 30 a0 e1                                      mov r3, r2
0058eebc  00 20 93 e5                                      ldr r2, [r3]
0058eec0  04 10 83 e5                                      str r1, [r3, #4]
0058eec4  00 10 83 e5                                      str r1, [r3]
0058eec8  02 00 55 e1                                      cmp r5, r2
0058eecc  f9 ff ff 1a                                      bne #0x58eeb8
0058eed0  05 30 a0 e1                                      mov r3, r5
0058eed4  08 30 80 e5                                      str r3, [r0, #8]
0058eed8  04 30 80 e5                                      str r3, [r0, #4]
0058eedc  00 30 a0 e3                                      mov r3, #0
0058eee0  08 30 84 e5                                      str r3, [r4, #8]
0058eee4  04 00 a0 e1                                      mov r0, r4
0058eee8  a9 48 04 eb                                      bl #0x6a1194
0058eeec  04 00 a0 e1                                      mov r0, r4
0058eef0  08 d0 8d e2                                      add sp, sp, #8
0058eef4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0058eef8  14 5f 40 00 3c 25 00 00                          .byte 0x14, 0x5f, 0x40, 0x00, 0x3c, 0x25, 0x00, 0x00

; FUNCTION 0x0058ef00, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManagerD0Ev
; demangled: glitch::scene::CSceneManager::~CSceneManager()
; decoder-mode: arm
0058ef00  10 40 2d e9                                      push {r4, lr}
0058ef04  00 40 a0 e1                                      mov r4, r0
0058ef08  18 ff ff eb                                      bl #0x58eb70
0058ef0c  04 00 a0 e1                                      mov r0, r4
0058ef10  e6 fc f5 eb                                      bl #0x30e2b0
0058ef14  04 00 a0 e1                                      mov r0, r4
0058ef18  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0058ef1c, declared_size=908, range_size=908, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManagerD2Ev
; demangled: glitch::scene::CSceneManager::~CSceneManager()
; decoder-mode: arm
0058ef1c  70 40 2d e9                                      push {r4, r5, r6, lr}
0058ef20  00 30 91 e5                                      ldr r3, [r1]
0058ef24  00 40 a0 e1                                      mov r4, r0
0058ef28  08 d0 4d e2                                      sub sp, sp, #8
0058ef2c  00 30 80 e5                                      str r3, [r0]
0058ef30  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0058ef34  04 20 91 e5                                      ldr r2, [r1, #4]
0058ef38  03 20 80 e7                                      str r2, [r0, r3]
0058ef3c  00 30 90 e5                                      ldr r3, [r0]
0058ef40  08 20 91 e5                                      ldr r2, [r1, #8]
0058ef44  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0058ef48  03 20 80 e7                                      str r2, [r0, r3]
0058ef4c  ff f0 ff eb                                      bl #0x58b350
0058ef50  28 00 94 e5                                      ldr r0, [r4, #0x28]
0058ef54  00 00 50 e3                                      cmp r0, #0
0058ef58  00 00 00 0a                                      beq #0x58ef60
0058ef5c  88 39 f6 eb                                      bl #0x31d584
0058ef60  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0058ef64  00 00 50 e3                                      cmp r0, #0
0058ef68  00 00 00 0a                                      beq #0x58ef70
0058ef6c  84 39 f6 eb                                      bl #0x31d584
0058ef70  24 00 94 e5                                      ldr r0, [r4, #0x24]
0058ef74  00 00 50 e3                                      cmp r0, #0
0058ef78  00 00 00 0a                                      beq #0x58ef80
0058ef7c  80 39 f6 eb                                      bl #0x31d584
0058ef80  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
0058ef84  b8 20 94 e5                                      ldr r2, [r4, #0xb8]
0058ef88  02 20 63 e0                                      rsb r2, r3, r2
0058ef8c  22 21 b0 e1                                      lsrs r2, r2, #2
0058ef90  08 00 00 0a                                      beq #0x58efb8
0058ef94  00 50 a0 e3                                      mov r5, #0
0058ef98  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0058ef9c  78 39 f6 eb                                      bl #0x31d584
0058efa0  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
0058efa4  b8 20 94 e5                                      ldr r2, [r4, #0xb8]
0058efa8  01 50 85 e2                                      add r5, r5, #1
0058efac  02 20 63 e0                                      rsb r2, r3, r2
0058efb0  42 01 55 e1                                      cmp r5, r2, asr #2
0058efb4  f7 ff ff 3a                                      blo #0x58ef98
0058efb8  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
0058efbc  00 00 53 e3                                      cmp r3, #0
0058efc0  03 00 00 0a                                      beq #0x58efd4
0058efc4  00 20 93 e5                                      ldr r2, [r3]
0058efc8  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0058efcc  00 00 83 e0                                      add r0, r3, r0
0058efd0  6b 39 f6 eb                                      bl #0x31d584
0058efd4  70 01 94 e5                                      ldr r0, [r4, #0x170]
0058efd8  00 30 a0 e3                                      mov r3, #0
0058efdc  e4 30 84 e5                                      str r3, [r4, #0xe4]
0058efe0  03 00 50 e1                                      cmp r0, r3
0058efe4  00 00 00 0a                                      beq #0x58efec
0058efe8  65 39 f6 eb                                      bl #0x31d584
0058efec  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
0058eff0  d0 20 94 e5                                      ldr r2, [r4, #0xd0]
0058eff4  02 20 63 e0                                      rsb r2, r3, r2
0058eff8  22 21 b0 e1                                      lsrs r2, r2, #2
0058effc  08 00 00 0a                                      beq #0x58f024
0058f000  00 50 a0 e3                                      mov r5, #0
0058f004  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0058f008  5d 39 f6 eb                                      bl #0x31d584
0058f00c  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
0058f010  d0 20 94 e5                                      ldr r2, [r4, #0xd0]
0058f014  01 50 85 e2                                      add r5, r5, #1
0058f018  02 20 63 e0                                      rsb r2, r3, r2
0058f01c  42 01 55 e1                                      cmp r5, r2, asr #2
0058f020  f7 ff ff 3a                                      blo #0x58f004
0058f024  d8 30 94 e5                                      ldr r3, [r4, #0xd8]
0058f028  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
0058f02c  02 20 63 e0                                      rsb r2, r3, r2
0058f030  22 21 b0 e1                                      lsrs r2, r2, #2
0058f034  08 00 00 0a                                      beq #0x58f05c
0058f038  00 50 a0 e3                                      mov r5, #0
0058f03c  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0058f040  4f 39 f6 eb                                      bl #0x31d584
0058f044  d8 30 94 e5                                      ldr r3, [r4, #0xd8]
0058f048  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
0058f04c  01 50 85 e2                                      add r5, r5, #1
0058f050  02 20 63 e0                                      rsb r2, r3, r2
0058f054  42 01 55 e1                                      cmp r5, r2, asr #2
0058f058  f7 ff ff 3a                                      blo #0x58f03c
0058f05c  04 50 a0 e1                                      mov r5, r4
0058f060  0c 30 b5 e5                                      ldr r3, [r5, #0xc]!
0058f064  05 00 53 e1                                      cmp r3, r5
0058f068  08 00 00 0a                                      beq #0x58f090
0058f06c  00 10 a0 e3                                      mov r1, #0
0058f070  00 00 00 ea                                      b #0x58f078
0058f074  02 30 a0 e1                                      mov r3, r2
0058f078  00 20 93 e5                                      ldr r2, [r3]
0058f07c  04 10 83 e5                                      str r1, [r3, #4]
0058f080  00 10 83 e5                                      str r1, [r3]
0058f084  02 00 55 e1                                      cmp r5, r2
0058f088  f9 ff ff 1a                                      bne #0x58f074
0058f08c  05 30 a0 e1                                      mov r3, r5
0058f090  04 20 94 e5                                      ldr r2, [r4, #4]
0058f094  00 60 a0 e3                                      mov r6, #0
0058f098  10 30 84 e5                                      str r3, [r4, #0x10]
0058f09c  0c 30 84 e5                                      str r3, [r4, #0xc]
0058f0a0  08 60 84 e5                                      str r6, [r4, #8]
0058f0a4  00 30 92 e5                                      ldr r3, [r2]
0058f0a8  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0058f0ac  00 00 82 e0                                      add r0, r2, r0
0058f0b0  33 39 f6 eb                                      bl #0x31d584
0058f0b4  08 10 8d e2                                      add r1, sp, #8
0058f0b8  27 0e 84 e2                                      add r0, r4, #0x270
0058f0bc  04 60 21 e5                                      str r6, [r1, #-4]!
0058f0c0  2d f3 ff eb                                      bl #0x58bd7c
0058f0c4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0058f0c8  06 00 50 e1                                      cmp r0, r6
0058f0cc  00 00 00 0a                                      beq #0x58f0d4
0058f0d0  2b 39 f6 eb                                      bl #0x31d584
0058f0d4  18 00 94 e5                                      ldr r0, [r4, #0x18]
0058f0d8  00 00 50 e3                                      cmp r0, #0
0058f0dc  00 00 00 0a                                      beq #0x58f0e4
0058f0e0  27 39 f6 eb                                      bl #0x31d584
0058f0e4  ac 00 03 eb                                      bl #0x64f39c
0058f0e8  f4 ba 02 eb                                      bl #0x63dcc0
0058f0ec  7c 02 94 e5                                      ldr r0, [r4, #0x27c]
0058f0f0  00 00 50 e3                                      cmp r0, #0
0058f0f4  00 00 00 0a                                      beq #0x58f0fc
0058f0f8  d4 04 f6 eb                                      bl #0x310450
0058f0fc  70 02 94 e5                                      ldr r0, [r4, #0x270]
0058f100  00 00 50 e3                                      cmp r0, #0
0058f104  00 00 00 0a                                      beq #0x58f10c
0058f108  d0 04 f6 eb                                      bl #0x310450
0058f10c  64 02 94 e5                                      ldr r0, [r4, #0x264]
0058f110  00 00 50 e3                                      cmp r0, #0
0058f114  00 00 00 0a                                      beq #0x58f11c
0058f118  cc 04 f6 eb                                      bl #0x310450
0058f11c  58 02 94 e5                                      ldr r0, [r4, #0x258]
0058f120  00 00 50 e3                                      cmp r0, #0
0058f124  00 00 00 0a                                      beq #0x58f12c
0058f128  c8 04 f6 eb                                      bl #0x310450
0058f12c  82 3f 84 e2                                      add r3, r4, #0x208
0058f130  44 00 93 e5                                      ldr r0, [r3, #0x44]
0058f134  03 00 50 e1                                      cmp r0, r3
0058f138  02 00 00 0a                                      beq #0x58f148
0058f13c  00 00 50 e3                                      cmp r0, #0
0058f140  00 00 00 0a                                      beq #0x58f148
0058f144  c1 04 f6 eb                                      bl #0x310450
0058f148  07 3d 84 e2                                      add r3, r4, #0x1c0
0058f14c  44 00 93 e5                                      ldr r0, [r3, #0x44]
0058f150  03 00 50 e1                                      cmp r0, r3
0058f154  02 00 00 0a                                      beq #0x58f164
0058f158  00 00 50 e3                                      cmp r0, #0
0058f15c  00 00 00 0a                                      beq #0x58f164
0058f160  ba 04 f6 eb                                      bl #0x310450
0058f164  5e 3f 84 e2                                      add r3, r4, #0x178
0058f168  44 00 93 e5                                      ldr r0, [r3, #0x44]
0058f16c  03 00 50 e1                                      cmp r0, r3
0058f170  02 00 00 0a                                      beq #0x58f180
0058f174  00 00 50 e3                                      cmp r0, #0
0058f178  00 00 00 0a                                      beq #0x58f180
0058f17c  b3 04 f6 eb                                      bl #0x310450
0058f180  45 0f 84 e2                                      add r0, r4, #0x114
0058f184  a3 54 ff eb                                      bl #0x564418
0058f188  d8 00 94 e5                                      ldr r0, [r4, #0xd8]
0058f18c  00 00 50 e3                                      cmp r0, #0
0058f190  00 00 00 0a                                      beq #0x58f198
0058f194  ad 04 f6 eb                                      bl #0x310450
0058f198  cc 00 94 e5                                      ldr r0, [r4, #0xcc]
0058f19c  00 00 50 e3                                      cmp r0, #0
0058f1a0  00 00 00 0a                                      beq #0x58f1a8
0058f1a4  a9 04 f6 eb                                      bl #0x310450
0058f1a8  c0 00 94 e5                                      ldr r0, [r4, #0xc0]
0058f1ac  00 00 50 e3                                      cmp r0, #0
0058f1b0  00 00 00 0a                                      beq #0x58f1b8
0058f1b4  a5 04 f6 eb                                      bl #0x310450
0058f1b8  b4 00 94 e5                                      ldr r0, [r4, #0xb4]
0058f1bc  00 00 50 e3                                      cmp r0, #0
0058f1c0  00 00 00 0a                                      beq #0x58f1c8
0058f1c4  a1 04 f6 eb                                      bl #0x310450
0058f1c8  90 00 84 e2                                      add r0, r4, #0x90
0058f1cc  48 ea ff eb                                      bl #0x589af4
0058f1d0  84 00 84 e2                                      add r0, r4, #0x84
0058f1d4  4a fe ff eb                                      bl #0x58eb04
0058f1d8  78 00 84 e2                                      add r0, r4, #0x78
0058f1dc  bc 0b f7 eb                                      bl #0x3520d4
0058f1e0  6c 00 94 e5                                      ldr r0, [r4, #0x6c]
0058f1e4  00 00 50 e3                                      cmp r0, #0
0058f1e8  00 00 00 0a                                      beq #0x58f1f0
0058f1ec  97 04 f6 eb                                      bl #0x310450
0058f1f0  60 00 94 e5                                      ldr r0, [r4, #0x60]
0058f1f4  00 00 50 e3                                      cmp r0, #0
0058f1f8  00 00 00 0a                                      beq #0x58f200
0058f1fc  93 04 f6 eb                                      bl #0x310450
0058f200  54 00 94 e5                                      ldr r0, [r4, #0x54]
0058f204  00 00 50 e3                                      cmp r0, #0
0058f208  00 00 00 0a                                      beq #0x58f210
0058f20c  8f 04 f6 eb                                      bl #0x310450
0058f210  48 00 94 e5                                      ldr r0, [r4, #0x48]
0058f214  00 00 50 e3                                      cmp r0, #0
0058f218  00 00 00 0a                                      beq #0x58f220
0058f21c  8b 04 f6 eb                                      bl #0x310450
0058f220  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0058f224  00 00 50 e3                                      cmp r0, #0
0058f228  00 00 00 0a                                      beq #0x58f230
0058f22c  87 04 f6 eb                                      bl #0x310450
0058f230  30 00 94 e5                                      ldr r0, [r4, #0x30]
0058f234  00 00 50 e3                                      cmp r0, #0
0058f238  00 00 00 0a                                      beq #0x58f240
0058f23c  83 04 f6 eb                                      bl #0x310450
0058f240  20 00 94 e5                                      ldr r0, [r4, #0x20]
0058f244  00 00 50 e3                                      cmp r0, #0
0058f248  00 00 00 0a                                      beq #0x58f250
0058f24c  cc 38 f6 eb                                      bl #0x31d584
0058f250  08 00 84 e2                                      add r0, r4, #8
0058f254  04 30 90 e5                                      ldr r3, [r0, #4]
0058f258  05 00 53 e1                                      cmp r3, r5
0058f25c  08 00 00 0a                                      beq #0x58f284
0058f260  00 10 a0 e3                                      mov r1, #0
0058f264  00 00 00 ea                                      b #0x58f26c
0058f268  02 30 a0 e1                                      mov r3, r2
0058f26c  00 20 93 e5                                      ldr r2, [r3]
0058f270  04 10 83 e5                                      str r1, [r3, #4]
0058f274  00 10 83 e5                                      str r1, [r3]
0058f278  02 00 55 e1                                      cmp r5, r2
0058f27c  f9 ff ff 1a                                      bne #0x58f268
0058f280  05 30 a0 e1                                      mov r3, r5
0058f284  08 30 80 e5                                      str r3, [r0, #8]
0058f288  04 30 80 e5                                      str r3, [r0, #4]
0058f28c  00 30 a0 e3                                      mov r3, #0
0058f290  08 30 84 e5                                      str r3, [r4, #8]
0058f294  04 00 a0 e1                                      mov r0, r4
0058f298  bd 47 04 eb                                      bl #0x6a1194
0058f29c  04 00 a0 e1                                      mov r0, r4
0058f2a0  08 d0 8d e2                                      add sp, sp, #8
0058f2a4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0058f348, declared_size=1604, range_size=1604, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager24registerNodeForRenderingEPNS0_10ISceneNodeERKN5boost13intrusive_ptrINS_5video9CMaterialEEEPvNS0_24E_SCENE_NODE_RENDER_PASSEPKNS_4core8vector3dIfEEi
; demangled: glitch::scene::CSceneManager::registerNodeForRendering(glitch::scene::ISceneNode*, boost::intrusive_ptr<glitch::video::CMaterial> const&, void*, glitch::scene::E_SCENE_NODE_RENDER_PASS, glitch::core::vector3d<float> const*, int)
; decoder-mode: arm
0058f348  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0058f34c  d4 d0 4d e2                                      sub sp, sp, #0xd4
0058f350  f0 c0 9d e5                                      ldr ip, [sp, #0xf0]
0058f354  00 40 a0 e1                                      mov r4, r0
0058f358  03 50 a0 e1                                      mov r5, r3
0058f35c  f4 80 9d e5                                      ldr r8, [sp, #0xf4]
0058f360  f8 60 9d e5                                      ldr r6, [sp, #0xf8]
0058f364  08 00 5c e3                                      cmp ip, #8
0058f368  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
0058f36c  32 00 00 ea                                      b #0x58f43c
0058f370  3c 00 00 ea                                      b #0x58f468
0058f374  57 00 00 ea                                      b #0x58f4d8
0058f378  6a 00 00 ea                                      b #0x58f528
0058f37c  76 00 00 ea                                      b #0x58f55c
0058f380  a2 00 00 ea                                      b #0x58f610
0058f384  e4 00 00 ea                                      b #0x58f71c
0058f388  c9 00 00 ea                                      b #0x58f6b4
0058f38c  d5 00 00 ea                                      b #0x58f6e8
0058f390  ff ff ff ea                                      b #0x58f394
0058f394  8a 32 d0 e5                                      ldrb r3, [r0, #0x28a]
0058f398  00 00 53 e3                                      cmp r3, #0
0058f39c  eb 00 00 0a                                      beq #0x58f750
0058f3a0  00 70 92 e5                                      ldr r7, [r2]
0058f3a4  78 40 80 e2                                      add r4, r0, #0x78
0058f3a8  00 00 57 e3                                      cmp r7, #0
0058f3ac  50 10 8d 05                                      streq r1, [sp, #0x50]
0058f3b0  54 50 8d 05                                      streq r5, [sp, #0x54]
0058f3b4  58 70 8d 05                                      streq r7, [sp, #0x58]
0058f3b8  08 00 00 0a                                      beq #0x58f3e0
0058f3bc  00 30 97 e5                                      ldr r3, [r7]
0058f3c0  01 30 83 e2                                      add r3, r3, #1
0058f3c4  00 30 87 e5                                      str r3, [r7]
0058f3c8  50 10 8d e5                                      str r1, [sp, #0x50]
0058f3cc  54 50 8d e5                                      str r5, [sp, #0x54]
0058f3d0  58 70 8d e5                                      str r7, [sp, #0x58]
0058f3d4  00 30 97 e5                                      ldr r3, [r7]
0058f3d8  01 30 83 e2                                      add r3, r3, #1
0058f3dc  00 30 87 e5                                      str r3, [r7]
0058f3e0  06 01 76 e3                                      cmn r6, #0x80000001
0058f3e4  5c 60 8d 15                                      strne r6, [sp, #0x5c]
0058f3e8  0c 01 00 0a                                      beq #0x58f820
0058f3ec  04 00 a0 e1                                      mov r0, r4
0058f3f0  50 10 8d e2                                      add r1, sp, #0x50
0058f3f4  17 0b f7 eb                                      bl #0x352058
0058f3f8  58 40 9d e5                                      ldr r4, [sp, #0x58]
0058f3fc  00 00 54 e3                                      cmp r4, #0
0058f400  08 00 00 0a                                      beq #0x58f428
0058f404  00 30 94 e5                                      ldr r3, [r4]
0058f408  01 30 43 e2                                      sub r3, r3, #1
0058f40c  00 00 53 e3                                      cmp r3, #0
0058f410  00 30 84 e5                                      str r3, [r4]
0058f414  03 00 00 1a                                      bne #0x58f428
0058f418  04 00 a0 e1                                      mov r0, r4
0058f41c  d5 f2 00 eb                                      bl #0x5cbf78
0058f420  04 00 a0 e1                                      mov r0, r4
0058f424  a1 fb f5 eb                                      bl #0x30e2b0
0058f428  00 00 57 e3                                      cmp r7, #0
0058f42c  36 00 00 0a                                      beq #0x58f50c
0058f430  07 00 a0 e1                                      mov r0, r7
0058f434  6b ea ff eb                                      bl #0x589de8
0058f438  33 00 00 ea                                      b #0x58f50c
0058f43c  40 35 9f e5                                      ldr r3, [pc, #0x540]
0058f440  00 00 a0 e3                                      mov r0, #0
0058f444  03 30 8f e0                                      add r3, pc, r3
0058f448  00 20 93 e5                                      ldr r2, [r3]
0058f44c  04 10 93 e5                                      ldr r1, [r3, #4]
0058f450  01 20 82 e2                                      add r2, r2, #1
0058f454  01 10 81 e2                                      add r1, r1, #1
0058f458  04 10 83 e5                                      str r1, [r3, #4]
0058f45c  00 20 83 e5                                      str r2, [r3]
0058f460  d4 d0 8d e2                                      add sp, sp, #0xd4
0058f464  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0058f468  3c c0 90 e5                                      ldr ip, [r0, #0x3c]
0058f46c  40 30 90 e5                                      ldr r3, [r0, #0x40]
0058f470  03 60 6c e0                                      rsb r6, ip, r3
0058f474  c6 61 b0 e1                                      asrs r6, r6, #3
0058f478  0a 00 00 0a                                      beq #0x58f4a8
0058f47c  00 20 9c e5                                      ldr r2, [ip]
0058f480  01 00 52 e1                                      cmp r2, r1
0058f484  00 20 a0 13                                      movne r2, #0
0058f488  03 00 00 1a                                      bne #0x58f49c
0058f48c  ea ff ff ea                                      b #0x58f43c
0058f490  82 01 9c e7                                      ldr r0, [ip, r2, lsl #3]
0058f494  01 00 50 e1                                      cmp r0, r1
0058f498  e7 ff ff 0a                                      beq #0x58f43c
0058f49c  01 20 82 e2                                      add r2, r2, #1
0058f4a0  06 00 52 e1                                      cmp r2, r6
0058f4a4  f9 ff ff 1a                                      bne #0x58f490
0058f4a8  44 20 94 e5                                      ldr r2, [r4, #0x44]
0058f4ac  a8 50 8d e5                                      str r5, [sp, #0xa8]
0058f4b0  a4 10 8d e5                                      str r1, [sp, #0xa4]
0058f4b4  02 00 53 e1                                      cmp r3, r2
0058f4b8  df 00 00 0a                                      beq #0x58f83c
0058f4bc  00 10 83 e5                                      str r1, [r3]
0058f4c0  a8 20 9d e5                                      ldr r2, [sp, #0xa8]
0058f4c4  04 20 83 e5                                      str r2, [r3, #4]
0058f4c8  40 30 94 e5                                      ldr r3, [r4, #0x40]
0058f4cc  08 30 83 e2                                      add r3, r3, #8
0058f4d0  40 30 84 e5                                      str r3, [r4, #0x40]
0058f4d4  0c 00 00 ea                                      b #0x58f50c
0058f4d8  70 60 8d e2                                      add r6, sp, #0x70
0058f4dc  06 00 a0 e1                                      mov r0, r6
0058f4e0  e8 20 84 e2                                      add r2, r4, #0xe8
0058f4e4  02 06 f7 eb                                      bl #0x350cf4
0058f4e8  4c c0 94 e5                                      ldr ip, [r4, #0x4c]
0058f4ec  50 30 94 e5                                      ldr r3, [r4, #0x50]
0058f4f0  03 00 5c e1                                      cmp ip, r3
0058f4f4  19 01 00 0a                                      beq #0x58f960
0058f4f8  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
0058f4fc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0058f500  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0058f504  10 30 83 e2                                      add r3, r3, #0x10
0058f508  4c 30 84 e5                                      str r3, [r4, #0x4c]
0058f50c  74 34 9f e5                                      ldr r3, [pc, #0x474]
0058f510  01 00 a0 e3                                      mov r0, #1
0058f514  03 30 8f e0                                      add r3, pc, r3
0058f518  00 20 93 e5                                      ldr r2, [r3]
0058f51c  00 20 82 e0                                      add r2, r2, r0
0058f520  00 20 83 e5                                      str r2, [r3]
0058f524  cd ff ff ea                                      b #0x58f460
0058f528  70 30 90 e5                                      ldr r3, [r0, #0x70]
0058f52c  74 20 90 e5                                      ldr r2, [r0, #0x74]
0058f530  a0 50 8d e5                                      str r5, [sp, #0xa0]
0058f534  9c 10 8d e5                                      str r1, [sp, #0x9c]
0058f538  02 00 53 e1                                      cmp r3, r2
0058f53c  f6 00 00 0a                                      beq #0x58f91c
0058f540  00 10 83 e5                                      str r1, [r3]
0058f544  a0 20 9d e5                                      ldr r2, [sp, #0xa0]
0058f548  04 20 83 e5                                      str r2, [r3, #4]
0058f54c  70 30 90 e5                                      ldr r3, [r0, #0x70]
0058f550  08 30 83 e2                                      add r3, r3, #8
0058f554  70 30 80 e5                                      str r3, [r0, #0x70]
0058f558  eb ff ff ea                                      b #0x58f50c
0058f55c  00 70 92 e5                                      ldr r7, [r2]
0058f560  00 00 57 e3                                      cmp r7, #0
0058f564  c4 00 00 0a                                      beq #0x58f87c
0058f568  07 00 a0 e1                                      mov r0, r7
0058f56c  14 10 8d e5                                      str r1, [sp, #0x14]
0058f570  10 20 8d e5                                      str r2, [sp, #0x10]
0058f574  ee d9 00 eb                                      bl #0x5c5d34
0058f578  04 30 97 e5                                      ldr r3, [r7, #4]
0058f57c  0c c0 a0 e3                                      mov ip, #0xc
0058f580  14 10 9d e5                                      ldr r1, [sp, #0x14]
0058f584  18 30 93 e5                                      ldr r3, [r3, #0x18]
0058f588  10 20 9d e5                                      ldr r2, [sp, #0x10]
0058f58c  9c 30 23 e0                                      mla r3, ip, r0, r3
0058f590  08 30 93 e5                                      ldr r3, [r3, #8]
0058f594  04 30 93 e5                                      ldr r3, [r3, #4]
0058f598  01 08 13 e3                                      tst r3, #0x10000
0058f59c  85 00 00 1a                                      bne #0x58f7b8
0058f5a0  00 70 92 e5                                      ldr r7, [r2]
0058f5a4  78 40 84 e2                                      add r4, r4, #0x78
0058f5a8  00 00 57 e3                                      cmp r7, #0
0058f5ac  b3 00 00 0a                                      beq #0x58f880
0058f5b0  00 30 97 e5                                      ldr r3, [r7]
0058f5b4  01 30 83 e2                                      add r3, r3, #1
0058f5b8  00 30 87 e5                                      str r3, [r7]
0058f5bc  40 10 8d e5                                      str r1, [sp, #0x40]
0058f5c0  44 50 8d e5                                      str r5, [sp, #0x44]
0058f5c4  48 70 8d e5                                      str r7, [sp, #0x48]
0058f5c8  00 30 97 e5                                      ldr r3, [r7]
0058f5cc  01 30 83 e2                                      add r3, r3, #1
0058f5d0  00 30 87 e5                                      str r3, [r7]
0058f5d4  06 01 76 e3                                      cmn r6, #0x80000001
0058f5d8  4c 60 8d 15                                      strne r6, [sp, #0x4c]
0058f5dc  ac 00 00 0a                                      beq #0x58f894
0058f5e0  04 00 a0 e1                                      mov r0, r4
0058f5e4  40 10 8d e2                                      add r1, sp, #0x40
0058f5e8  9a 0a f7 eb                                      bl #0x352058
0058f5ec  48 00 9d e5                                      ldr r0, [sp, #0x48]
0058f5f0  00 00 50 e3                                      cmp r0, #0
0058f5f4  00 00 00 0a                                      beq #0x58f5fc
0058f5f8  fa e9 ff eb                                      bl #0x589de8
0058f5fc  00 00 57 e3                                      cmp r7, #0
0058f600  c1 ff ff 0a                                      beq #0x58f50c
0058f604  07 00 a0 e1                                      mov r0, r7
0058f608  f6 e9 ff eb                                      bl #0x589de8
0058f60c  be ff ff ea                                      b #0x58f50c
0058f610  00 70 92 e5                                      ldr r7, [r2]
0058f614  00 00 57 e3                                      cmp r7, #0
0058f618  60 10 8d 05                                      streq r1, [sp, #0x60]
0058f61c  64 30 8d 05                                      streq r3, [sp, #0x64]
0058f620  68 70 8d 05                                      streq r7, [sp, #0x68]
0058f624  08 00 00 0a                                      beq #0x58f64c
0058f628  00 30 97 e5                                      ldr r3, [r7]
0058f62c  01 30 83 e2                                      add r3, r3, #1
0058f630  00 30 87 e5                                      str r3, [r7]
0058f634  60 10 8d e5                                      str r1, [sp, #0x60]
0058f638  64 50 8d e5                                      str r5, [sp, #0x64]
0058f63c  68 70 8d e5                                      str r7, [sp, #0x68]
0058f640  00 30 97 e5                                      ldr r3, [r7]
0058f644  01 30 83 e2                                      add r3, r3, #1
0058f648  00 30 87 e5                                      str r3, [r7]
0058f64c  06 01 76 e3                                      cmn r6, #0x80000001
0058f650  6c 60 8d 15                                      strne r6, [sp, #0x6c]
0058f654  81 00 00 0a                                      beq #0x58f860
0058f658  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
0058f65c  80 30 94 e5                                      ldr r3, [r4, #0x80]
0058f660  03 00 51 e1                                      cmp r1, r3
0058f664  b5 00 00 0a                                      beq #0x58f940
0058f668  60 30 9d e5                                      ldr r3, [sp, #0x60]
0058f66c  00 30 81 e5                                      str r3, [r1]
0058f670  64 30 9d e5                                      ldr r3, [sp, #0x64]
0058f674  04 30 81 e5                                      str r3, [r1, #4]
0058f678  68 30 9d e5                                      ldr r3, [sp, #0x68]
0058f67c  08 30 81 e5                                      str r3, [r1, #8]
0058f680  00 00 53 e3                                      cmp r3, #0
0058f684  00 20 93 15                                      ldrne r2, [r3]
0058f688  01 20 82 12                                      addne r2, r2, #1
0058f68c  00 20 83 15                                      strne r2, [r3]
0058f690  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
0058f694  0c 30 81 e5                                      str r3, [r1, #0xc]
0058f698  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
0058f69c  10 30 83 e2                                      add r3, r3, #0x10
0058f6a0  7c 30 84 e5                                      str r3, [r4, #0x7c]
0058f6a4  68 00 9d e5                                      ldr r0, [sp, #0x68]
0058f6a8  00 00 50 e3                                      cmp r0, #0
0058f6ac  d1 ff ff 1a                                      bne #0x58f5f8
0058f6b0  d1 ff ff ea                                      b #0x58f5fc
0058f6b4  64 30 90 e5                                      ldr r3, [r0, #0x64]
0058f6b8  68 20 90 e5                                      ldr r2, [r0, #0x68]
0058f6bc  90 50 8d e5                                      str r5, [sp, #0x90]
0058f6c0  8c 10 8d e5                                      str r1, [sp, #0x8c]
0058f6c4  02 00 53 e1                                      cmp r3, r2
0058f6c8  81 00 00 0a                                      beq #0x58f8d4
0058f6cc  00 10 83 e5                                      str r1, [r3]
0058f6d0  90 20 9d e5                                      ldr r2, [sp, #0x90]
0058f6d4  04 20 83 e5                                      str r2, [r3, #4]
0058f6d8  64 30 90 e5                                      ldr r3, [r0, #0x64]
0058f6dc  08 30 83 e2                                      add r3, r3, #8
0058f6e0  64 30 80 e5                                      str r3, [r0, #0x64]
0058f6e4  88 ff ff ea                                      b #0x58f50c
0058f6e8  34 30 90 e5                                      ldr r3, [r0, #0x34]
0058f6ec  38 20 90 e5                                      ldr r2, [r0, #0x38]
0058f6f0  88 50 8d e5                                      str r5, [sp, #0x88]
0058f6f4  84 10 8d e5                                      str r1, [sp, #0x84]
0058f6f8  02 00 53 e1                                      cmp r3, r2
0058f6fc  6b 00 00 0a                                      beq #0x58f8b0
0058f700  00 10 83 e5                                      str r1, [r3]
0058f704  88 20 9d e5                                      ldr r2, [sp, #0x88]
0058f708  04 20 83 e5                                      str r2, [r3, #4]
0058f70c  34 30 90 e5                                      ldr r3, [r0, #0x34]
0058f710  08 30 83 e2                                      add r3, r3, #8
0058f714  34 30 80 e5                                      str r3, [r0, #0x34]
0058f718  7b ff ff ea                                      b #0x58f50c
0058f71c  58 30 90 e5                                      ldr r3, [r0, #0x58]
0058f720  5c 20 90 e5                                      ldr r2, [r0, #0x5c]
0058f724  98 50 8d e5                                      str r5, [sp, #0x98]
0058f728  94 10 8d e5                                      str r1, [sp, #0x94]
0058f72c  02 00 53 e1                                      cmp r3, r2
0058f730  70 00 00 0a                                      beq #0x58f8f8
0058f734  00 10 83 e5                                      str r1, [r3]
0058f738  98 20 9d e5                                      ldr r2, [sp, #0x98]
0058f73c  04 20 83 e5                                      str r2, [r3, #4]
0058f740  58 30 90 e5                                      ldr r3, [r0, #0x58]
0058f744  08 30 83 e2                                      add r3, r3, #8
0058f748  58 30 80 e5                                      str r3, [r0, #0x58]
0058f74c  6e ff ff ea                                      b #0x58f50c
0058f750  00 30 92 e5                                      ldr r3, [r2]
0058f754  84 70 80 e2                                      add r7, r0, #0x84
0058f758  e8 20 80 e2                                      add r2, r0, #0xe8
0058f75c  00 00 53 e3                                      cmp r3, #0
0058f760  b0 30 8d e5                                      str r3, [sp, #0xb0]
0058f764  00 00 93 15                                      ldrne r0, [r3]
0058f768  2c 40 8d e2                                      add r4, sp, #0x2c
0058f76c  01 00 80 12                                      addne r0, r0, #1
0058f770  00 00 83 15                                      strne r0, [r3]
0058f774  b0 30 8d e2                                      add r3, sp, #0xb0
0058f778  04 00 a0 e1                                      mov r0, r4
0058f77c  20 01 8d e8                                      stm sp, {r5, r8}
0058f780  08 60 8d e5                                      str r6, [sp, #8]
0058f784  c0 15 f7 eb                                      bl #0x354e8c
0058f788  07 00 a0 e1                                      mov r0, r7
0058f78c  04 10 a0 e1                                      mov r1, r4
0058f790  f4 1c f7 eb                                      bl #0x356b68
0058f794  34 00 9d e5                                      ldr r0, [sp, #0x34]
0058f798  00 00 50 e3                                      cmp r0, #0
0058f79c  00 00 00 0a                                      beq #0x58f7a4
0058f7a0  90 e9 ff eb                                      bl #0x589de8
0058f7a4  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
0058f7a8  00 00 50 e3                                      cmp r0, #0
0058f7ac  56 ff ff 0a                                      beq #0x58f50c
0058f7b0  8c e9 ff eb                                      bl #0x589de8
0058f7b4  54 ff ff ea                                      b #0x58f50c
0058f7b8  8a 32 d4 e5                                      ldrb r3, [r4, #0x28a]
0058f7bc  00 00 53 e3                                      cmp r3, #0
0058f7c0  76 ff ff 1a                                      bne #0x58f5a0
0058f7c4  00 30 92 e5                                      ldr r3, [r2]
0058f7c8  18 70 8d e2                                      add r7, sp, #0x18
0058f7cc  e8 20 84 e2                                      add r2, r4, #0xe8
0058f7d0  00 00 53 e3                                      cmp r3, #0
0058f7d4  ac 30 8d e5                                      str r3, [sp, #0xac]
0058f7d8  00 00 93 15                                      ldrne r0, [r3]
0058f7dc  84 a0 84 e2                                      add sl, r4, #0x84
0058f7e0  ac 40 8d e2                                      add r4, sp, #0xac
0058f7e4  01 00 80 12                                      addne r0, r0, #1
0058f7e8  00 00 83 15                                      strne r0, [r3]
0058f7ec  04 30 a0 e1                                      mov r3, r4
0058f7f0  07 00 a0 e1                                      mov r0, r7
0058f7f4  20 01 8d e8                                      stm sp, {r5, r8}
0058f7f8  08 60 8d e5                                      str r6, [sp, #8]
0058f7fc  a2 15 f7 eb                                      bl #0x354e8c
0058f800  0a 00 a0 e1                                      mov r0, sl
0058f804  07 10 a0 e1                                      mov r1, r7
0058f808  d6 1c f7 eb                                      bl #0x356b68
0058f80c  07 00 a0 e1                                      mov r0, r7
0058f810  be f7 ff eb                                      bl #0x58d710
0058f814  04 00 a0 e1                                      mov r0, r4
0058f818  f2 04 f6 eb                                      bl #0x310be8
0058f81c  3a ff ff ea                                      b #0x58f50c
0058f820  50 30 9d e5                                      ldr r3, [sp, #0x50]
0058f824  03 00 a0 e1                                      mov r0, r3
0058f828  00 30 93 e5                                      ldr r3, [r3]
0058f82c  0f e0 a0 e1                                      mov lr, pc
0058f830  d8 f0 93 e5                                      ldr pc, [r3, #0xd8]
0058f834  5c 00 8d e5                                      str r0, [sp, #0x5c]
0058f838  eb fe ff ea                                      b #0x58f3ec
0058f83c  01 c0 a0 e3                                      mov ip, #1
0058f840  03 10 a0 e1                                      mov r1, r3
0058f844  3c 00 84 e2                                      add r0, r4, #0x3c
0058f848  a4 20 8d e2                                      add r2, sp, #0xa4
0058f84c  c8 30 8d e2                                      add r3, sp, #0xc8
0058f850  04 c0 8d e5                                      str ip, [sp, #4]
0058f854  00 c0 8d e5                                      str ip, [sp]
0058f858  a7 08 f7 eb                                      bl #0x351afc
0058f85c  2a ff ff ea                                      b #0x58f50c
0058f860  60 30 9d e5                                      ldr r3, [sp, #0x60]
0058f864  03 00 a0 e1                                      mov r0, r3
0058f868  00 30 93 e5                                      ldr r3, [r3]
0058f86c  0f e0 a0 e1                                      mov lr, pc
0058f870  d8 f0 93 e5                                      ldr pc, [r3, #0xd8]
0058f874  6c 00 8d e5                                      str r0, [sp, #0x6c]
0058f878  76 ff ff ea                                      b #0x58f658
0058f87c  78 40 80 e2                                      add r4, r0, #0x78
0058f880  00 30 a0 e3                                      mov r3, #0
0058f884  40 10 8d e5                                      str r1, [sp, #0x40]
0058f888  44 50 8d e5                                      str r5, [sp, #0x44]
0058f88c  48 30 8d e5                                      str r3, [sp, #0x48]
0058f890  4f ff ff ea                                      b #0x58f5d4
0058f894  40 30 9d e5                                      ldr r3, [sp, #0x40]
0058f898  03 00 a0 e1                                      mov r0, r3
0058f89c  00 30 93 e5                                      ldr r3, [r3]
0058f8a0  0f e0 a0 e1                                      mov lr, pc
0058f8a4  d8 f0 93 e5                                      ldr pc, [r3, #0xd8]
0058f8a8  4c 00 8d e5                                      str r0, [sp, #0x4c]
0058f8ac  4b ff ff ea                                      b #0x58f5e0
0058f8b0  01 c0 a0 e3                                      mov ip, #1
0058f8b4  03 10 a0 e1                                      mov r1, r3
0058f8b8  30 00 80 e2                                      add r0, r0, #0x30
0058f8bc  84 20 8d e2                                      add r2, sp, #0x84
0058f8c0  b4 30 8d e2                                      add r3, sp, #0xb4
0058f8c4  04 c0 8d e5                                      str ip, [sp, #4]
0058f8c8  00 c0 8d e5                                      str ip, [sp]
0058f8cc  8a 08 f7 eb                                      bl #0x351afc
0058f8d0  0d ff ff ea                                      b #0x58f50c
0058f8d4  01 c0 a0 e3                                      mov ip, #1
0058f8d8  03 10 a0 e1                                      mov r1, r3
0058f8dc  60 00 80 e2                                      add r0, r0, #0x60
0058f8e0  8c 20 8d e2                                      add r2, sp, #0x8c
0058f8e4  b8 30 8d e2                                      add r3, sp, #0xb8
0058f8e8  04 c0 8d e5                                      str ip, [sp, #4]
0058f8ec  00 c0 8d e5                                      str ip, [sp]
0058f8f0  e9 08 f7 eb                                      bl #0x351c9c
0058f8f4  04 ff ff ea                                      b #0x58f50c
0058f8f8  01 c0 a0 e3                                      mov ip, #1
0058f8fc  03 10 a0 e1                                      mov r1, r3
0058f900  54 00 80 e2                                      add r0, r0, #0x54
0058f904  94 20 8d e2                                      add r2, sp, #0x94
0058f908  bc 30 8d e2                                      add r3, sp, #0xbc
0058f90c  04 c0 8d e5                                      str ip, [sp, #4]
0058f910  00 c0 8d e5                                      str ip, [sp]
0058f914  e0 08 f7 eb                                      bl #0x351c9c
0058f918  fb fe ff ea                                      b #0x58f50c
0058f91c  01 c0 a0 e3                                      mov ip, #1
0058f920  03 10 a0 e1                                      mov r1, r3
0058f924  6c 00 80 e2                                      add r0, r0, #0x6c
0058f928  9c 20 8d e2                                      add r2, sp, #0x9c
0058f92c  c4 30 8d e2                                      add r3, sp, #0xc4
0058f930  04 c0 8d e5                                      str ip, [sp, #4]
0058f934  00 c0 8d e5                                      str ip, [sp]
0058f938  6f 08 f7 eb                                      bl #0x351afc
0058f93c  f2 fe ff ea                                      b #0x58f50c
0058f940  01 c0 a0 e3                                      mov ip, #1
0058f944  78 00 84 e2                                      add r0, r4, #0x78
0058f948  60 20 8d e2                                      add r2, sp, #0x60
0058f94c  c0 30 8d e2                                      add r3, sp, #0xc0
0058f950  04 c0 8d e5                                      str ip, [sp, #4]
0058f954  00 c0 8d e5                                      str ip, [sp]
0058f958  49 09 f7 eb                                      bl #0x351e84
0058f95c  50 ff ff ea                                      b #0x58f6a4
0058f960  0c 10 a0 e1                                      mov r1, ip
0058f964  48 00 84 e2                                      add r0, r4, #0x48
0058f968  01 c0 a0 e3                                      mov ip, #1
0058f96c  06 20 a0 e1                                      mov r2, r6
0058f970  cc 30 8d e2                                      add r3, sp, #0xcc
0058f974  04 c0 8d e5                                      str ip, [sp, #4]
0058f978  00 c0 8d e5                                      str ip, [sp]
0058f97c  e7 07 f7 eb                                      bl #0x351920
0058f980  e1 fe ff ea                                      b #0x58f50c
; mapping-symbol data/literal pool
0058f984  2c 74 46 00 5c 73 46 00                          .byte 0x2c, 0x74, 0x46, 0x00, 0x5c, 0x73, 0x46, 0x00

; FUNCTION 0x0058facc, declared_size=464, range_size=464, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager15compileInternalEPNS0_10ISceneNodeEPNS0_15CBatchSceneNodeEbPNS0_23ISegmentCompileCallbackEPNS0_27ISplitSegmentChoiceCallbackE
; demangled: glitch::scene::CSceneManager::compileInternal(glitch::scene::ISceneNode*, glitch::scene::CBatchSceneNode*, bool, glitch::scene::ISegmentCompileCallback*, glitch::scene::ISplitSegmentChoiceCallback*)
; decoder-mode: arm
0058facc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0058fad0  b8 61 9f e5                                      ldr r6, [pc, #0x1b8]
0058fad4  00 50 52 e2                                      subs r5, r2, #0
0058fad8  44 d0 4d e2                                      sub sp, sp, #0x44
0058fadc  06 60 8f e0                                      add r6, pc, r6
0058fae0  00 40 a0 e1                                      mov r4, r0
0058fae4  01 a0 a0 e1                                      mov sl, r1
0058fae8  03 b0 a0 e1                                      mov fp, r3
0058faec  60 00 00 0a                                      beq #0x58fc74
0058faf0  9c 31 9f e5                                      ldr r3, [pc, #0x19c]
0058faf4  9c 81 9f e5                                      ldr r8, [pc, #0x19c]
0058faf8  18 c0 94 e5                                      ldr ip, [r4, #0x18]
0058fafc  03 30 96 e7                                      ldr r3, [r6, r3]
0058fb00  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0058fb04  08 e0 96 e7                                      ldr lr, [r6, r8]
0058fb08  08 90 83 e2                                      add sb, r3, #8
0058fb0c  2c 90 8d e5                                      str sb, [sp, #0x2c]
0058fb10  68 90 9d e5                                      ldr sb, [sp, #0x68]
0058fb14  0c c0 8d e5                                      str ip, [sp, #0xc]
0058fb18  08 e0 8e e2                                      add lr, lr, #8
0058fb1c  38 90 8d e5                                      str sb, [sp, #0x38]
0058fb20  00 30 a0 e3                                      mov r3, #0
0058fb24  14 10 8d e2                                      add r1, sp, #0x14
0058fb28  04 c0 a0 e3                                      mov ip, #4
0058fb2c  2c 20 8d e2                                      add r2, sp, #0x2c
0058fb30  00 90 e0 e3                                      mvn sb, #0
0058fb34  00 e0 8d e5                                      str lr, [sp]
0058fb38  10 c0 8d e5                                      str ip, [sp, #0x10]
0058fb3c  3c 90 8d e5                                      str sb, [sp, #0x3c]
0058fb40  20 10 8d e5                                      str r1, [sp, #0x20]
0058fb44  08 20 8d e5                                      str r2, [sp, #8]
0058fb48  1c 10 8d e5                                      str r1, [sp, #0x1c]
0058fb4c  24 30 8d e5                                      str r3, [sp, #0x24]
0058fb50  30 50 8d e5                                      str r5, [sp, #0x30]
0058fb54  34 40 8d e5                                      str r4, [sp, #0x34]
0058fb58  04 50 8d e5                                      str r5, [sp, #4]
0058fb5c  18 30 8d e5                                      str r3, [sp, #0x18]
0058fb60  14 30 cd e5                                      strb r3, [sp, #0x14]
0058fb64  34 d2 80 e5                                      str sp, [r0, #0x234]
0058fb68  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0058fb6c  0d 70 a0 e1                                      mov r7, sp
0058fb70  38 22 83 e5                                      str r2, [r3, #0x238]
0058fb74  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0058fb78  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0058fb7c  3c 22 83 e5                                      str r2, [r3, #0x23c]
0058fb80  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0058fb84  65 eb ff eb                                      bl #0x58a920
0058fb88  00 30 94 e5                                      ldr r3, [r4]
0058fb8c  04 00 a0 e1                                      mov r0, r4
0058fb90  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0058fb94  0f e0 a0 e1                                      mov lr, pc
0058fb98  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0058fb9c  04 00 a0 e1                                      mov r0, r4
0058fba0  05 10 a0 e1                                      mov r1, r5
0058fba4  6b ee ff eb                                      bl #0x58b558
0058fba8  8a 92 d4 e5                                      ldrb sb, [r4, #0x28a]
0058fbac  00 00 59 e3                                      cmp sb, #0
0058fbb0  29 00 00 1a                                      bne #0x58fc5c
0058fbb4  01 30 a0 e3                                      mov r3, #1
0058fbb8  8a 32 c4 e5                                      strb r3, [r4, #0x28a]
0058fbbc  0a 10 a0 e1                                      mov r1, sl
0058fbc0  00 30 94 e5                                      ldr r3, [r4]
0058fbc4  04 00 a0 e1                                      mov r0, r4
0058fbc8  0f e0 a0 e1                                      mov lr, pc
0058fbcc  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0058fbd0  8a 92 c4 e5                                      strb sb, [r4, #0x28a]
0058fbd4  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0058fbd8  04 00 a0 e1                                      mov r0, r4
0058fbdc  00 30 94 e5                                      ldr r3, [r4]
0058fbe0  0f e0 a0 e1                                      mov lr, pc
0058fbe4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0058fbe8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0058fbec  03 00 a0 e1                                      mov r0, r3
0058fbf0  00 30 93 e5                                      ldr r3, [r3]
0058fbf4  0f e0 a0 e1                                      mov lr, pc
0058fbf8  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
0058fbfc  0d 00 a0 e1                                      mov r0, sp
0058fc00  f3 f5 ff eb                                      bl #0x58d3d4
0058fc04  18 20 94 e5                                      ldr r2, [r4, #0x18]
0058fc08  0b 10 a0 e1                                      mov r1, fp
0058fc0c  05 00 a0 e1                                      mov r0, r5
0058fc10  00 30 95 e5                                      ldr r3, [r5]
0058fc14  0f e0 a0 e1                                      mov lr, pc
0058fc18  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
0058fc1c  18 30 94 e5                                      ldr r3, [r4, #0x18]
0058fc20  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0058fc24  14 30 84 e5                                      str r3, [r4, #0x14]
0058fc28  c4 e8 ff eb                                      bl #0x589f40
0058fc2c  08 30 96 e7                                      ldr r3, [r6, r8]
0058fc30  24 20 9d e5                                      ldr r2, [sp, #0x24]
0058fc34  08 30 83 e2                                      add r3, r3, #8
0058fc38  00 00 52 e3                                      cmp r2, #0
0058fc3c  00 30 8d e5                                      str r3, [sp]
0058fc40  02 00 00 0a                                      beq #0x58fc50
0058fc44  14 00 87 e2                                      add r0, r7, #0x14
0058fc48  18 10 9d e5                                      ldr r1, [sp, #0x18]
0058fc4c  4e ff ff eb                                      bl #0x58f98c
0058fc50  05 00 a0 e1                                      mov r0, r5
0058fc54  44 d0 8d e2                                      add sp, sp, #0x44
0058fc58  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0058fc5c  0a 10 a0 e1                                      mov r1, sl
0058fc60  00 30 94 e5                                      ldr r3, [r4]
0058fc64  04 00 a0 e1                                      mov r0, r4
0058fc68  0f e0 a0 e1                                      mov lr, pc
0058fc6c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0058fc70  d7 ff ff ea                                      b #0x58fbd4
0058fc74  05 10 a0 e1                                      mov r1, r5
0058fc78  5a 0f a0 e3                                      mov r0, #0x168
0058fc7c  4a 91 fe eb                                      bl #0x5341ac
0058fc80  00 10 e0 e3                                      mvn r1, #0
0058fc84  00 50 a0 e1                                      mov r5, r0
0058fc88  dd bf ff eb                                      bl #0x57fc04
0058fc8c  97 ff ff ea                                      b #0x58faf0
; mapping-symbol data/literal pool
0058fc90  b4 4f 40 00 88 41 00 00 a8 40 00 00              .byte 0xb4, 0x4f, 0x40, 0x00, 0x88, 0x41, 0x00, 0x00, 0xa8, 0x40, 0x00, 0x00

; FUNCTION 0x0058fc9c, declared_size=48, range_size=48, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager7compileEPNS0_10ISceneNodeEPNS0_15CBatchSceneNodeEbPNS0_23ISegmentCompileCallbackEPNS0_27ISplitSegmentChoiceCallbackEj
; demangled: glitch::scene::CSceneManager::compile(glitch::scene::ISceneNode*, glitch::scene::CBatchSceneNode*, bool, glitch::scene::ISegmentCompileCallback*, glitch::scene::ISplitSegmentChoiceCallback*, unsigned int)
; decoder-mode: arm
0058fc9c  f0 00 2d e9                                      push {r4, r5, r6, r7}
0058fca0  10 40 9d e5                                      ldr r4, [sp, #0x10]
0058fca4  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
0058fca8  14 70 9d e5                                      ldr r7, [sp, #0x14]
0058fcac  18 50 9d e5                                      ldr r5, [sp, #0x18]
0058fcb0  01 60 a0 e3                                      mov r6, #1
0058fcb4  60 62 cc e5                                      strb r6, [ip, #0x260]
0058fcb8  5c 52 8c e5                                      str r5, [ip, #0x25c]
0058fcbc  10 40 8d e5                                      str r4, [sp, #0x10]
0058fcc0  14 70 8d e5                                      str r7, [sp, #0x14]
0058fcc4  f0 00 bd e8                                      pop {r4, r5, r6, r7}
0058fcc8  7f ff ff ea                                      b #0x58facc

; FUNCTION 0x0058fccc, declared_size=68, range_size=68, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager7compileEPNS0_10ISceneNodeEPNS0_15CBatchSceneNodeEbPNS0_23ISegmentCompileCallbackEPNS0_27ISplitSegmentChoiceCallbackENS_4core8vector3dIfEE
; demangled: glitch::scene::CSceneManager::compile(glitch::scene::ISceneNode*, glitch::scene::CBatchSceneNode*, bool, glitch::scene::ISegmentCompileCallback*, glitch::scene::ISplitSegmentChoiceCallback*, glitch::core::vector3d<float>)
; decoder-mode: arm
0058fccc  f0 00 2d e9                                      push {r4, r5, r6, r7}
0058fcd0  18 40 9d e5                                      ldr r4, [sp, #0x18]
0058fcd4  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
0058fcd8  10 60 9d e5                                      ldr r6, [sp, #0x10]
0058fcdc  00 70 94 e5                                      ldr r7, [r4]
0058fce0  14 50 9d e5                                      ldr r5, [sp, #0x14]
0058fce4  50 72 8c e5                                      str r7, [ip, #0x250]
0058fce8  04 70 94 e5                                      ldr r7, [r4, #4]
0058fcec  54 72 8c e5                                      str r7, [ip, #0x254]
0058fcf0  08 70 94 e5                                      ldr r7, [r4, #8]
0058fcf4  00 40 a0 e3                                      mov r4, #0
0058fcf8  60 42 cc e5                                      strb r4, [ip, #0x260]
0058fcfc  58 72 8c e5                                      str r7, [ip, #0x258]
0058fd00  10 60 8d e5                                      str r6, [sp, #0x10]
0058fd04  14 50 8d e5                                      str r5, [sp, #0x14]
0058fd08  f0 00 bd e8                                      pop {r4, r5, r6, r7}
0058fd0c  6e ff ff ea                                      b #0x58facc

; FUNCTION 0x0058fd10, declared_size=464, range_size=464, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager15compileInternalERKSt6vectorIPNS0_10ISceneNodeENS_4core10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEEPNS0_15CBatchSceneNodeEbPNS0_23ISegmentCompileCallbackEPNS0_27ISplitSegmentChoiceCallbackE
; demangled: glitch::scene::CSceneManager::compileInternal(std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> > const&, glitch::scene::CBatchSceneNode*, bool, glitch::scene::ISegmentCompileCallback*, glitch::scene::ISplitSegmentChoiceCallback*)
; decoder-mode: arm
0058fd10  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0058fd14  b8 51 9f e5                                      ldr r5, [pc, #0x1b8]
0058fd18  00 60 52 e2                                      subs r6, r2, #0
0058fd1c  44 d0 4d e2                                      sub sp, sp, #0x44
0058fd20  05 50 8f e0                                      add r5, pc, r5
0058fd24  00 40 a0 e1                                      mov r4, r0
0058fd28  01 a0 a0 e1                                      mov sl, r1
0058fd2c  03 b0 a0 e1                                      mov fp, r3
0058fd30  60 00 00 0a                                      beq #0x58feb8
0058fd34  9c 31 9f e5                                      ldr r3, [pc, #0x19c]
0058fd38  9c 81 9f e5                                      ldr r8, [pc, #0x19c]
0058fd3c  18 c0 94 e5                                      ldr ip, [r4, #0x18]
0058fd40  03 30 95 e7                                      ldr r3, [r5, r3]
0058fd44  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0058fd48  08 e0 95 e7                                      ldr lr, [r5, r8]
0058fd4c  08 90 83 e2                                      add sb, r3, #8
0058fd50  2c 90 8d e5                                      str sb, [sp, #0x2c]
0058fd54  68 90 9d e5                                      ldr sb, [sp, #0x68]
0058fd58  0c c0 8d e5                                      str ip, [sp, #0xc]
0058fd5c  08 e0 8e e2                                      add lr, lr, #8
0058fd60  38 90 8d e5                                      str sb, [sp, #0x38]
0058fd64  00 30 a0 e3                                      mov r3, #0
0058fd68  14 10 8d e2                                      add r1, sp, #0x14
0058fd6c  04 c0 a0 e3                                      mov ip, #4
0058fd70  2c 20 8d e2                                      add r2, sp, #0x2c
0058fd74  00 90 e0 e3                                      mvn sb, #0
0058fd78  00 e0 8d e5                                      str lr, [sp]
0058fd7c  10 c0 8d e5                                      str ip, [sp, #0x10]
0058fd80  3c 90 8d e5                                      str sb, [sp, #0x3c]
0058fd84  20 10 8d e5                                      str r1, [sp, #0x20]
0058fd88  08 20 8d e5                                      str r2, [sp, #8]
0058fd8c  1c 10 8d e5                                      str r1, [sp, #0x1c]
0058fd90  24 30 8d e5                                      str r3, [sp, #0x24]
0058fd94  30 60 8d e5                                      str r6, [sp, #0x30]
0058fd98  34 40 8d e5                                      str r4, [sp, #0x34]
0058fd9c  04 60 8d e5                                      str r6, [sp, #4]
0058fda0  18 30 8d e5                                      str r3, [sp, #0x18]
0058fda4  14 30 cd e5                                      strb r3, [sp, #0x14]
0058fda8  34 d2 80 e5                                      str sp, [r0, #0x234]
0058fdac  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0058fdb0  0d 70 a0 e1                                      mov r7, sp
0058fdb4  38 22 83 e5                                      str r2, [r3, #0x238]
0058fdb8  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0058fdbc  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0058fdc0  3c 22 83 e5                                      str r2, [r3, #0x23c]
0058fdc4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0058fdc8  d4 ea ff eb                                      bl #0x58a920
0058fdcc  00 30 94 e5                                      ldr r3, [r4]
0058fdd0  04 00 a0 e1                                      mov r0, r4
0058fdd4  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0058fdd8  0f e0 a0 e1                                      mov lr, pc
0058fddc  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0058fde0  04 00 a0 e1                                      mov r0, r4
0058fde4  0a 10 a0 e1                                      mov r1, sl
0058fde8  36 ee ff eb                                      bl #0x58b6c8
0058fdec  8a 92 d4 e5                                      ldrb sb, [r4, #0x28a]
0058fdf0  00 00 59 e3                                      cmp sb, #0
0058fdf4  29 00 00 1a                                      bne #0x58fea0
0058fdf8  01 30 a0 e3                                      mov r3, #1
0058fdfc  8a 32 c4 e5                                      strb r3, [r4, #0x28a]
0058fe00  0a 10 a0 e1                                      mov r1, sl
0058fe04  00 30 94 e5                                      ldr r3, [r4]
0058fe08  04 00 a0 e1                                      mov r0, r4
0058fe0c  0f e0 a0 e1                                      mov lr, pc
0058fe10  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0058fe14  8a 92 c4 e5                                      strb sb, [r4, #0x28a]
0058fe18  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0058fe1c  04 00 a0 e1                                      mov r0, r4
0058fe20  00 30 94 e5                                      ldr r3, [r4]
0058fe24  0f e0 a0 e1                                      mov lr, pc
0058fe28  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0058fe2c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0058fe30  03 00 a0 e1                                      mov r0, r3
0058fe34  00 30 93 e5                                      ldr r3, [r3]
0058fe38  0f e0 a0 e1                                      mov lr, pc
0058fe3c  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
0058fe40  0d 00 a0 e1                                      mov r0, sp
0058fe44  62 f5 ff eb                                      bl #0x58d3d4
0058fe48  18 20 94 e5                                      ldr r2, [r4, #0x18]
0058fe4c  0b 10 a0 e1                                      mov r1, fp
0058fe50  06 00 a0 e1                                      mov r0, r6
0058fe54  00 30 96 e5                                      ldr r3, [r6]
0058fe58  0f e0 a0 e1                                      mov lr, pc
0058fe5c  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
0058fe60  18 30 94 e5                                      ldr r3, [r4, #0x18]
0058fe64  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0058fe68  14 30 84 e5                                      str r3, [r4, #0x14]
0058fe6c  33 e8 ff eb                                      bl #0x589f40
0058fe70  08 30 95 e7                                      ldr r3, [r5, r8]
0058fe74  24 20 9d e5                                      ldr r2, [sp, #0x24]
0058fe78  08 30 83 e2                                      add r3, r3, #8
0058fe7c  00 00 52 e3                                      cmp r2, #0
0058fe80  00 30 8d e5                                      str r3, [sp]
0058fe84  02 00 00 0a                                      beq #0x58fe94
0058fe88  14 00 87 e2                                      add r0, r7, #0x14
0058fe8c  18 10 9d e5                                      ldr r1, [sp, #0x18]
0058fe90  bd fe ff eb                                      bl #0x58f98c
0058fe94  06 00 a0 e1                                      mov r0, r6
0058fe98  44 d0 8d e2                                      add sp, sp, #0x44
0058fe9c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0058fea0  0a 10 a0 e1                                      mov r1, sl
0058fea4  00 30 94 e5                                      ldr r3, [r4]
0058fea8  04 00 a0 e1                                      mov r0, r4
0058feac  0f e0 a0 e1                                      mov lr, pc
0058feb0  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0058feb4  d7 ff ff ea                                      b #0x58fe18
0058feb8  06 10 a0 e1                                      mov r1, r6
0058febc  5a 0f a0 e3                                      mov r0, #0x168
0058fec0  b9 90 fe eb                                      bl #0x5341ac
0058fec4  00 10 e0 e3                                      mvn r1, #0
0058fec8  00 60 a0 e1                                      mov r6, r0
0058fecc  4c bf ff eb                                      bl #0x57fc04
0058fed0  97 ff ff ea                                      b #0x58fd34
; mapping-symbol data/literal pool
0058fed4  70 4d 40 00 88 41 00 00 a8 40 00 00              .byte 0x70, 0x4d, 0x40, 0x00, 0x88, 0x41, 0x00, 0x00, 0xa8, 0x40, 0x00, 0x00

; FUNCTION 0x0058fee0, declared_size=48, range_size=48, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager7compileERKSt6vectorIPNS0_10ISceneNodeENS_4core10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEEPNS0_15CBatchSceneNodeEbPNS0_23ISegmentCompileCallbackEPNS0_27ISplitSegmentChoiceCallbackEj
; demangled: glitch::scene::CSceneManager::compile(std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> > const&, glitch::scene::CBatchSceneNode*, bool, glitch::scene::ISegmentCompileCallback*, glitch::scene::ISplitSegmentChoiceCallback*, unsigned int)
; decoder-mode: arm
0058fee0  f0 00 2d e9                                      push {r4, r5, r6, r7}
0058fee4  10 40 9d e5                                      ldr r4, [sp, #0x10]
0058fee8  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
0058feec  14 70 9d e5                                      ldr r7, [sp, #0x14]
0058fef0  18 50 9d e5                                      ldr r5, [sp, #0x18]
0058fef4  01 60 a0 e3                                      mov r6, #1
0058fef8  60 62 cc e5                                      strb r6, [ip, #0x260]
0058fefc  5c 52 8c e5                                      str r5, [ip, #0x25c]
0058ff00  10 40 8d e5                                      str r4, [sp, #0x10]
0058ff04  14 70 8d e5                                      str r7, [sp, #0x14]
0058ff08  f0 00 bd e8                                      pop {r4, r5, r6, r7}
0058ff0c  7f ff ff ea                                      b #0x58fd10

; FUNCTION 0x0058ff10, declared_size=68, range_size=68, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager7compileERKSt6vectorIPNS0_10ISceneNodeENS_4core10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEEPNS0_15CBatchSceneNodeEbPNS0_23ISegmentCompileCallbackEPNS0_27ISplitSegmentChoiceCallbackENS5_8vector3dIfEE
; demangled: glitch::scene::CSceneManager::compile(std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> > const&, glitch::scene::CBatchSceneNode*, bool, glitch::scene::ISegmentCompileCallback*, glitch::scene::ISplitSegmentChoiceCallback*, glitch::core::vector3d<float>)
; decoder-mode: arm
0058ff10  f0 00 2d e9                                      push {r4, r5, r6, r7}
0058ff14  18 40 9d e5                                      ldr r4, [sp, #0x18]
0058ff18  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
0058ff1c  10 60 9d e5                                      ldr r6, [sp, #0x10]
0058ff20  00 70 94 e5                                      ldr r7, [r4]
0058ff24  14 50 9d e5                                      ldr r5, [sp, #0x14]
0058ff28  50 72 8c e5                                      str r7, [ip, #0x250]
0058ff2c  04 70 94 e5                                      ldr r7, [r4, #4]
0058ff30  54 72 8c e5                                      str r7, [ip, #0x254]
0058ff34  08 70 94 e5                                      ldr r7, [r4, #8]
0058ff38  00 40 a0 e3                                      mov r4, #0
0058ff3c  60 42 cc e5                                      strb r4, [ip, #0x260]
0058ff40  58 72 8c e5                                      str r7, [ip, #0x258]
0058ff44  10 60 8d e5                                      str r6, [sp, #0x10]
0058ff48  14 50 8d e5                                      str r5, [sp, #0x14]
0058ff4c  f0 00 bd e8                                      pop {r4, r5, r6, r7}
0058ff50  6e ff ff ea                                      b #0x58fd10

; FUNCTION 0x00590660, declared_size=2144, range_size=2144, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager11renderListsEPNS_5video12IVideoDriverE
; demangled: glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver*)
; decoder-mode: arm
00590660  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00590664  00 50 a0 e3                                      mov r5, #0
00590668  a4 d0 4d e2                                      sub sp, sp, #0xa4
0059066c  01 60 a0 e1                                      mov r6, r1
00590670  3c 20 80 e2                                      add r2, r0, #0x3c
00590674  05 10 a0 e1                                      mov r1, r5
00590678  01 30 a0 e3                                      mov r3, #1
0059067c  00 40 a0 e1                                      mov r4, r0
00590680  00 50 8d e5                                      str r5, [sp]
00590684  16 ea ff eb                                      bl #0x58aee4
00590688  06 00 a0 e1                                      mov r0, r6
0059068c  fc 68 00 eb                                      bl #0x5aaa84
00590690  36 31 00 e3                                      movw r3, #0x136
00590694  b3 10 96 e1                                      ldrh r1, [r6, r3]
00590698  05 20 a0 e1                                      mov r2, r5
0059069c  41 3f 84 e2                                      add r3, r4, #0x104
005906a0  e4 00 96 e5                                      ldr r0, [r6, #0xe4]
005906a4  2a d0 00 eb                                      bl #0x5c4754
005906a8  48 00 94 e5                                      ldr r0, [r4, #0x48]
005906ac  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
005906b0  fc 27 9f e5                                      ldr r2, [pc, #0x7fc]
005906b4  03 10 60 e0                                      rsb r1, r0, r3
005906b8  41 12 a0 e1                                      asr r1, r1, #4
005906bc  01 00 51 e3                                      cmp r1, #1
005906c0  02 20 8f e0                                      add r2, pc, r2
005906c4  0c 20 8d e5                                      str r2, [sp, #0xc]
005906c8  02 00 00 9a                                      bls #0x5906d8
005906cc  3b 02 f7 eb                                      bl #0x350fc0
005906d0  48 00 94 e5                                      ldr r0, [r4, #0x48]
005906d4  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
005906d8  bc 23 d6 e1                                      ldrh r2, [r6, #0x3c]
005906dc  03 00 60 e0                                      rsb r0, r0, r3
005906e0  40 12 a0 e1                                      asr r1, r0, #4
005906e4  48 50 84 e2                                      add r5, r4, #0x48
005906e8  00 80 a0 e3                                      mov r8, #0
005906ec  02 00 51 e1                                      cmp r1, r2
005906f0  02 10 a0 21                                      movhs r1, r2
005906f4  00 a0 a0 e3                                      mov sl, #0
005906f8  00 b0 a0 e3                                      mov fp, #0
005906fc  05 00 a0 e1                                      mov r0, r5
00590700  78 20 8d e2                                      add r2, sp, #0x78
00590704  78 80 8d e5                                      str r8, [sp, #0x78]
00590708  7c 80 8d e5                                      str r8, [sp, #0x7c]
0059070c  f0 a8 cd e1                                      strd sl, fp, [sp, #0x80]
00590710  e8 04 f7 eb                                      bl #0x351ab8
00590714  4c c0 94 e5                                      ldr ip, [r4, #0x4c]
00590718  48 70 94 e5                                      ldr r7, [r4, #0x48]
0059071c  50 30 94 e5                                      ldr r3, [r4, #0x50]
00590720  01 e0 a0 e3                                      mov lr, #1
00590724  0c 70 67 e0                                      rsb r7, r7, ip
00590728  03 00 5c e1                                      cmp ip, r3
0059072c  6c 80 8d e5                                      str r8, [sp, #0x6c]
00590730  f0 a7 cd e1                                      strd sl, fp, [sp, #0x70]
00590734  47 72 a0 e1                                      asr r7, r7, #4
00590738  74 e1 84 e5                                      str lr, [r4, #0x174]
0059073c  68 80 8d e5                                      str r8, [sp, #0x68]
00590740  d3 01 00 0a                                      beq #0x590e94
00590744  68 30 8d e2                                      add r3, sp, #0x68
00590748  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0059074c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00590750  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00590754  10 30 83 e2                                      add r3, r3, #0x10
00590758  4c 30 84 e5                                      str r3, [r4, #0x4c]
0059075c  48 30 94 e5                                      ldr r3, [r4, #0x48]
00590760  a8 c0 94 e5                                      ldr ip, [r4, #0xa8]
00590764  ac 00 94 e5                                      ldr r0, [r4, #0xac]
00590768  04 20 93 e5                                      ldr r2, [r3, #4]
0059076c  b0 10 94 e5                                      ldr r1, [r4, #0xb0]
00590770  00 30 93 e5                                      ldr r3, [r3]
00590774  00 80 a0 e3                                      mov r8, #0
00590778  00 00 57 e3                                      cmp r7, #0
0059077c  9c c0 84 e5                                      str ip, [r4, #0x9c]
00590780  a0 00 84 e5                                      str r0, [r4, #0xa0]
00590784  a4 10 84 e5                                      str r1, [r4, #0xa4]
00590788  ac 20 84 e5                                      str r2, [r4, #0xac]
0059078c  a8 30 84 e5                                      str r3, [r4, #0xa8]
00590790  b0 80 84 e5                                      str r8, [r4, #0xb0]
00590794  16 00 00 0a                                      beq #0x5907f4
00590798  08 90 a0 e1                                      mov sb, r8
0059079c  00 00 00 ea                                      b #0x5907a4
005907a0  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
005907a4  00 20 95 e5                                      ldr r2, [r5]
005907a8  01 80 88 e2                                      add r8, r8, #1
005907ac  ac 10 94 e5                                      ldr r1, [r4, #0xac]
005907b0  08 02 82 e0                                      add r0, r2, r8, lsl #4
005907b4  08 c2 92 e7                                      ldr ip, [r2, r8, lsl #4]
005907b8  04 00 90 e5                                      ldr r0, [r0, #4]
005907bc  b0 20 94 e5                                      ldr r2, [r4, #0xb0]
005907c0  a8 c0 84 e5                                      str ip, [r4, #0xa8]
005907c4  ac 00 84 e5                                      str r0, [r4, #0xac]
005907c8  a4 20 84 e5                                      str r2, [r4, #0xa4]
005907cc  9c 30 84 e5                                      str r3, [r4, #0x9c]
005907d0  a0 10 84 e5                                      str r1, [r4, #0xa0]
005907d4  b0 90 84 e5                                      str sb, [r4, #0xb0]
005907d8  03 00 a0 e1                                      mov r0, r3
005907dc  00 30 93 e5                                      ldr r3, [r3]
005907e0  0f e0 a0 e1                                      mov lr, pc
005907e4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005907e8  08 00 57 e1                                      cmp r7, r8
005907ec  eb ff ff 1a                                      bne #0x5907a0
005907f0  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
005907f4  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
005907f8  ac c0 94 e5                                      ldr ip, [r4, #0xac]
005907fc  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
00590800  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
00590804  10 20 12 e5                                      ldr r2, [r2, #-0x10]
00590808  00 70 a0 e3                                      mov r7, #0
0059080c  9c 30 84 e5                                      str r3, [r4, #0x9c]
00590810  a0 c0 84 e5                                      str ip, [r4, #0xa0]
00590814  a4 00 84 e5                                      str r0, [r4, #0xa4]
00590818  a8 20 84 e5                                      str r2, [r4, #0xa8]
0059081c  ac 10 84 e5                                      str r1, [r4, #0xac]
00590820  b0 70 84 e5                                      str r7, [r4, #0xb0]
00590824  05 00 a0 e1                                      mov r0, r5
00590828  07 10 a0 e1                                      mov r1, r7
0059082c  58 20 8d e2                                      add r2, sp, #0x58
00590830  00 80 a0 e3                                      mov r8, #0
00590834  00 90 a0 e3                                      mov sb, #0
00590838  f0 86 cd e1                                      strd r8, sb, [sp, #0x60]
0059083c  58 70 8d e5                                      str r7, [sp, #0x58]
00590840  5c 70 8d e5                                      str r7, [sp, #0x5c]
00590844  9b 04 f7 eb                                      bl #0x351ab8
00590848  02 10 a0 e3                                      mov r1, #2
0059084c  01 30 a0 e3                                      mov r3, #1
00590850  04 00 a0 e1                                      mov r0, r4
00590854  6c 20 84 e2                                      add r2, r4, #0x6c
00590858  00 70 8d e5                                      str r7, [sp]
0059085c  a0 e9 ff eb                                      bl #0x58aee4
00590860  78 e0 94 e5                                      ldr lr, [r4, #0x78]
00590864  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
00590868  03 10 6e e0                                      rsb r1, lr, r3
0059086c  41 12 a0 e1                                      asr r1, r1, #4
00590870  01 00 51 e3                                      cmp r1, #1
00590874  03 00 00 9a                                      bls #0x590888
00590878  0e 00 a0 e1                                      mov r0, lr
0059087c  8a 1a f7 eb                                      bl #0x3572ac
00590880  78 e0 94 e5                                      ldr lr, [r4, #0x78]
00590884  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
00590888  80 10 94 e5                                      ldr r1, [r4, #0x80]
0059088c  00 20 a0 e3                                      mov r2, #0
00590890  03 50 6e e0                                      rsb r5, lr, r3
00590894  01 00 53 e1                                      cmp r3, r1
00590898  04 10 a0 e3                                      mov r1, #4
0059089c  74 11 84 e5                                      str r1, [r4, #0x174]
005908a0  55 51 a0 e1                                      asr r5, r5, r1
005908a4  48 20 8d e5                                      str r2, [sp, #0x48]
005908a8  4c 20 8d e5                                      str r2, [sp, #0x4c]
005908ac  50 20 8d e5                                      str r2, [sp, #0x50]
005908b0  54 20 8d e5                                      str r2, [sp, #0x54]
005908b4  78 70 84 e2                                      add r7, r4, #0x78
005908b8  6c 01 00 0a                                      beq #0x590e70
005908bc  00 20 83 e5                                      str r2, [r3]
005908c0  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
005908c4  04 20 83 e5                                      str r2, [r3, #4]
005908c8  50 20 9d e5                                      ldr r2, [sp, #0x50]
005908cc  08 20 83 e5                                      str r2, [r3, #8]
005908d0  00 00 52 e3                                      cmp r2, #0
005908d4  00 10 92 15                                      ldrne r1, [r2]
005908d8  01 10 81 12                                      addne r1, r1, #1
005908dc  00 10 82 15                                      strne r1, [r2]
005908e0  54 20 9d e5                                      ldr r2, [sp, #0x54]
005908e4  0c 20 83 e5                                      str r2, [r3, #0xc]
005908e8  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
005908ec  10 30 83 e2                                      add r3, r3, #0x10
005908f0  7c 30 84 e5                                      str r3, [r4, #0x7c]
005908f4  50 80 9d e5                                      ldr r8, [sp, #0x50]
005908f8  00 00 58 e3                                      cmp r8, #0
005908fc  04 00 00 0a                                      beq #0x590914
00590900  00 30 98 e5                                      ldr r3, [r8]
00590904  01 30 43 e2                                      sub r3, r3, #1
00590908  00 00 53 e3                                      cmp r3, #0
0059090c  00 30 88 e5                                      str r3, [r8]
00590910  2b 01 00 0a                                      beq #0x590dc4
00590914  78 e0 94 e5                                      ldr lr, [r4, #0x78]
00590918  a8 80 94 e5                                      ldr r8, [r4, #0xa8]
0059091c  ac c0 94 e5                                      ldr ip, [r4, #0xac]
00590920  00 30 9e e5                                      ldr r3, [lr]
00590924  04 10 9e e5                                      ldr r1, [lr, #4]
00590928  0c 20 9e e5                                      ldr r2, [lr, #0xc]
0059092c  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
00590930  00 00 55 e3                                      cmp r5, #0
00590934  9c 80 84 e5                                      str r8, [r4, #0x9c]
00590938  a0 c0 84 e5                                      str ip, [r4, #0xa0]
0059093c  a4 00 84 e5                                      str r0, [r4, #0xa4]
00590940  ac 10 84 e5                                      str r1, [r4, #0xac]
00590944  b0 20 84 e5                                      str r2, [r4, #0xb0]
00590948  a8 30 84 e5                                      str r3, [r4, #0xa8]
0059094c  18 00 00 0a                                      beq #0x5909b4
00590950  00 80 a0 e3                                      mov r8, #0
00590954  00 00 00 ea                                      b #0x59095c
00590958  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
0059095c  00 00 97 e5                                      ldr r0, [r7]
00590960  01 80 88 e2                                      add r8, r8, #1
00590964  ac 10 94 e5                                      ldr r1, [r4, #0xac]
00590968  08 22 80 e0                                      add r2, r0, r8, lsl #4
0059096c  08 e2 90 e7                                      ldr lr, [r0, r8, lsl #4]
00590970  04 c0 92 e5                                      ldr ip, [r2, #4]
00590974  0c 00 92 e5                                      ldr r0, [r2, #0xc]
00590978  b0 20 94 e5                                      ldr r2, [r4, #0xb0]
0059097c  a8 e0 84 e5                                      str lr, [r4, #0xa8]
00590980  b0 00 84 e5                                      str r0, [r4, #0xb0]
00590984  ac c0 84 e5                                      str ip, [r4, #0xac]
00590988  a4 20 84 e5                                      str r2, [r4, #0xa4]
0059098c  9c 30 84 e5                                      str r3, [r4, #0x9c]
00590990  a0 10 84 e5                                      str r1, [r4, #0xa0]
00590994  03 00 a0 e1                                      mov r0, r3
00590998  00 30 93 e5                                      ldr r3, [r3]
0059099c  0f e0 a0 e1                                      mov lr, pc
005909a0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005909a4  08 00 55 e1                                      cmp r5, r8
005909a8  ea ff ff 1a                                      bne #0x590958
005909ac  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
005909b0  78 e0 94 e5                                      ldr lr, [r4, #0x78]
005909b4  7c 20 94 e5                                      ldr r2, [r4, #0x7c]
005909b8  ac b0 94 e5                                      ldr fp, [r4, #0xac]
005909bc  b0 90 94 e5                                      ldr sb, [r4, #0xb0]
005909c0  10 10 42 e2                                      sub r1, r2, #0x10
005909c4  0c 00 91 e5                                      ldr r0, [r1, #0xc]
005909c8  04 50 91 e5                                      ldr r5, [r1, #4]
005909cc  10 80 12 e5                                      ldr r8, [r2, #-0x10]
005909d0  02 c0 6e e0                                      rsb ip, lr, r2
005909d4  00 10 a0 e3                                      mov r1, #0
005909d8  4c c2 b0 e1                                      asrs ip, ip, #4
005909dc  9c 30 84 e5                                      str r3, [r4, #0x9c]
005909e0  a0 b0 84 e5                                      str fp, [r4, #0xa0]
005909e4  a4 90 84 e5                                      str sb, [r4, #0xa4]
005909e8  a8 80 84 e5                                      str r8, [r4, #0xa8]
005909ec  ac 50 84 e5                                      str r5, [r4, #0xac]
005909f0  b0 00 84 e5                                      str r0, [r4, #0xb0]
005909f4  44 10 8d e5                                      str r1, [sp, #0x44]
005909f8  38 10 8d e5                                      str r1, [sp, #0x38]
005909fc  3c 10 8d e5                                      str r1, [sp, #0x3c]
00590a00  40 10 8d e5                                      str r1, [sp, #0x40]
00590a04  09 01 00 0a                                      beq #0x590e30
00590a08  0e 00 52 e1                                      cmp r2, lr
00590a0c  0f 00 00 0a                                      beq #0x590a50
00590a10  07 00 a0 e1                                      mov r0, r7
00590a14  0e 10 a0 e1                                      mov r1, lr
00590a18  94 30 8d e2                                      add r3, sp, #0x94
00590a1c  a5 18 f7 eb                                      bl #0x356cb8
00590a20  40 50 9d e5                                      ldr r5, [sp, #0x40]
00590a24  00 00 55 e3                                      cmp r5, #0
00590a28  08 00 00 0a                                      beq #0x590a50
00590a2c  00 30 95 e5                                      ldr r3, [r5]
00590a30  01 30 43 e2                                      sub r3, r3, #1
00590a34  00 00 53 e3                                      cmp r3, #0
00590a38  00 30 85 e5                                      str r3, [r5]
00590a3c  03 00 00 1a                                      bne #0x590a50
00590a40  05 00 a0 e1                                      mov r0, r5
00590a44  4b ed 00 eb                                      bl #0x5cbf78
00590a48  05 00 a0 e1                                      mov r0, r5
00590a4c  17 f6 f5 eb                                      bl #0x30e2b0
00590a50  54 20 94 e5                                      ldr r2, [r4, #0x54]
00590a54  58 50 94 e5                                      ldr r5, [r4, #0x58]
00590a58  00 30 a0 e3                                      mov r3, #0
00590a5c  00 30 8d e5                                      str r3, [sp]
00590a60  05 50 62 e0                                      rsb r5, r2, r5
00590a64  03 10 a0 e1                                      mov r1, r3
00590a68  d5 51 e7 e7                                      ubfx r5, r5, #3, #8
00590a6c  00 c0 96 e5                                      ldr ip, [r6]
00590a70  06 00 a0 e1                                      mov r0, r6
00590a74  03 20 a0 e1                                      mov r2, r3
00590a78  0f e0 a0 e1                                      mov lr, pc
00590a7c  d4 f0 9c e5                                      ldr pc, [ip, #0xd4]
00590a80  01 00 55 e3                                      cmp r5, #1
00590a84  d3 00 00 9a                                      bls #0x590dd8
00590a88  54 30 94 e5                                      ldr r3, [r4, #0x54]
00590a8c  58 20 94 e5                                      ldr r2, [r4, #0x58]
00590a90  03 00 a0 e1                                      mov r0, r3
00590a94  02 30 63 e0                                      rsb r3, r3, r2
00590a98  c3 11 a0 e1                                      asr r1, r3, #3
00590a9c  93 01 f7 eb                                      bl #0x3510f0
00590aa0  04 00 a0 e1                                      mov r0, r4
00590aa4  54 20 84 e2                                      add r2, r4, #0x54
00590aa8  05 10 a0 e3                                      mov r1, #5
00590aac  7e e8 ff eb                                      bl #0x58acac
00590ab0  01 30 a0 e3                                      mov r3, #1
00590ab4  00 30 8d e5                                      str r3, [sp]
00590ab8  03 10 a0 e1                                      mov r1, r3
00590abc  00 c0 96 e5                                      ldr ip, [r6]
00590ac0  06 00 a0 e1                                      mov r0, r6
00590ac4  03 20 a0 e1                                      mov r2, r3
00590ac8  0f e0 a0 e1                                      mov lr, pc
00590acc  d4 f0 9c e5                                      ldr pc, [ip, #0xd4]
00590ad0  0c b0 9d e5                                      ldr fp, [sp, #0xc]
00590ad4  dc 23 9f e5                                      ldr r2, [pc, #0x3dc]
00590ad8  dc 53 9f e5                                      ldr r5, [pc, #0x3dc]
00590adc  02 10 9b e7                                      ldr r1, [fp, r2]
00590ae0  05 30 9b e7                                      ldr r3, [fp, r5]
00590ae4  00 10 d1 e5                                      ldrb r1, [r1]
00590ae8  00 20 93 e5                                      ldr r2, [r3]
00590aec  08 10 c2 e5                                      strb r1, [r2, #8]
00590af0  00 00 93 e5                                      ldr r0, [r3]
00590af4  00 00 50 e3                                      cmp r0, #0
00590af8  ff 20 a0 03                                      moveq r2, #0xff
00590afc  01 00 00 0a                                      beq #0x590b08
00590b00  8b d4 00 eb                                      bl #0x5c5d34
00590b04  00 20 a0 e1                                      mov r2, r0
00590b08  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00590b0c  00 30 a0 e3                                      mov r3, #0
00590b10  05 10 90 e7                                      ldr r1, [r0, r5]
00590b14  06 00 a0 e1                                      mov r0, r6
00590b18  12 72 00 eb                                      bl #0x5ad368
00590b1c  06 00 a0 e1                                      mov r0, r6
00590b20  f4 10 84 e2                                      add r1, r4, #0xf4
00590b24  89 6f 00 eb                                      bl #0x5ac950
00590b28  60 00 94 e5                                      ldr r0, [r4, #0x60]
00590b2c  64 10 94 e5                                      ldr r1, [r4, #0x64]
00590b30  01 10 60 e0                                      rsb r1, r0, r1
00590b34  c1 11 a0 e1                                      asr r1, r1, #3
00590b38  71 30 ef e6                                      uxtb r3, r1
00590b3c  01 00 53 e3                                      cmp r3, #1
00590b40  00 00 00 9a                                      bls #0x590b48
00590b44  69 01 f7 eb                                      bl #0x3510f0
00590b48  06 10 a0 e3                                      mov r1, #6
00590b4c  60 20 84 e2                                      add r2, r4, #0x60
00590b50  04 00 a0 e1                                      mov r0, r4
00590b54  54 e8 ff eb                                      bl #0x58acac
00590b58  84 e0 94 e5                                      ldr lr, [r4, #0x84]
00590b5c  88 30 94 e5                                      ldr r3, [r4, #0x88]
00590b60  03 20 6e e0                                      rsb r2, lr, r3
00590b64  42 21 a0 e1                                      asr r2, r2, #2
00590b68  82 10 82 e0                                      add r1, r2, r2, lsl #1
00590b6c  01 12 81 e0                                      add r1, r1, r1, lsl #4
00590b70  01 14 81 e0                                      add r1, r1, r1, lsl #8
00590b74  01 18 81 e0                                      add r1, r1, r1, lsl #16
00590b78  01 11 82 e0                                      add r1, r2, r1, lsl #2
00590b7c  01 00 51 e3                                      cmp r1, #1
00590b80  03 00 00 9a                                      bls #0x590b94
00590b84  0e 00 a0 e1                                      mov r0, lr
00590b88  de 18 f7 eb                                      bl #0x356f08
00590b8c  84 e0 94 e5                                      ldr lr, [r4, #0x84]
00590b90  88 30 94 e5                                      ldr r3, [r4, #0x88]
00590b94  03 e0 6e e0                                      rsb lr, lr, r3
00590b98  4e e1 a0 e1                                      asr lr, lr, #2
00590b9c  8c 20 94 e5                                      ldr r2, [r4, #0x8c]
00590ba0  8e 50 8e e0                                      add r5, lr, lr, lsl #1
00590ba4  08 10 a0 e3                                      mov r1, #8
00590ba8  05 52 85 e0                                      add r5, r5, r5, lsl #4
00590bac  74 11 84 e5                                      str r1, [r4, #0x174]
00590bb0  05 54 85 e0                                      add r5, r5, r5, lsl #8
00590bb4  02 00 53 e1                                      cmp r3, r2
00590bb8  05 58 85 e0                                      add r5, r5, r5, lsl #16
00590bbc  00 20 a0 e3                                      mov r2, #0
00590bc0  00 10 a0 e3                                      mov r1, #0
00590bc4  05 51 8e e0                                      add r5, lr, r5, lsl #2
00590bc8  34 10 8d e5                                      str r1, [sp, #0x34]
00590bcc  24 20 8d e5                                      str r2, [sp, #0x24]
00590bd0  28 20 8d e5                                      str r2, [sp, #0x28]
00590bd4  2c 20 8d e5                                      str r2, [sp, #0x2c]
00590bd8  30 20 8d e5                                      str r2, [sp, #0x30]
00590bdc  84 60 84 e2                                      add r6, r4, #0x84
00590be0  99 00 00 0a                                      beq #0x590e4c
00590be4  00 20 83 e5                                      str r2, [r3]
00590be8  28 20 9d e5                                      ldr r2, [sp, #0x28]
00590bec  04 20 83 e5                                      str r2, [r3, #4]
00590bf0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00590bf4  08 20 83 e5                                      str r2, [r3, #8]
00590bf8  00 00 52 e3                                      cmp r2, #0
00590bfc  00 10 92 15                                      ldrne r1, [r2]
00590c00  01 10 81 12                                      addne r1, r1, #1
00590c04  00 10 82 15                                      strne r1, [r2]
00590c08  30 20 9d e5                                      ldr r2, [sp, #0x30]
00590c0c  0c 20 83 e5                                      str r2, [r3, #0xc]
00590c10  34 20 9d e5                                      ldr r2, [sp, #0x34]
00590c14  10 20 83 e5                                      str r2, [r3, #0x10]
00590c18  88 30 94 e5                                      ldr r3, [r4, #0x88]
00590c1c  14 30 83 e2                                      add r3, r3, #0x14
00590c20  88 30 84 e5                                      str r3, [r4, #0x88]
00590c24  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
00590c28  00 00 57 e3                                      cmp r7, #0
00590c2c  08 00 00 0a                                      beq #0x590c54
00590c30  00 30 97 e5                                      ldr r3, [r7]
00590c34  01 30 43 e2                                      sub r3, r3, #1
00590c38  00 00 53 e3                                      cmp r3, #0
00590c3c  00 30 87 e5                                      str r3, [r7]
00590c40  03 00 00 1a                                      bne #0x590c54
00590c44  07 00 a0 e1                                      mov r0, r7
00590c48  ca ec 00 eb                                      bl #0x5cbf78
00590c4c  07 00 a0 e1                                      mov r0, r7
00590c50  96 f5 f5 eb                                      bl #0x30e2b0
00590c54  84 e0 94 e5                                      ldr lr, [r4, #0x84]
00590c58  a8 70 94 e5                                      ldr r7, [r4, #0xa8]
00590c5c  ac c0 94 e5                                      ldr ip, [r4, #0xac]
00590c60  00 30 9e e5                                      ldr r3, [lr]
00590c64  04 10 9e e5                                      ldr r1, [lr, #4]
00590c68  0c 20 9e e5                                      ldr r2, [lr, #0xc]
00590c6c  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
00590c70  00 00 55 e3                                      cmp r5, #0
00590c74  9c 70 84 e5                                      str r7, [r4, #0x9c]
00590c78  a0 c0 84 e5                                      str ip, [r4, #0xa0]
00590c7c  a4 00 84 e5                                      str r0, [r4, #0xa4]
00590c80  ac 10 84 e5                                      str r1, [r4, #0xac]
00590c84  b0 20 84 e5                                      str r2, [r4, #0xb0]
00590c88  a8 30 84 e5                                      str r3, [r4, #0xa8]
00590c8c  1a 00 00 0a                                      beq #0x590cfc
00590c90  14 70 a0 e3                                      mov r7, #0x14
00590c94  00 80 a0 e3                                      mov r8, #0
00590c98  00 00 00 ea                                      b #0x590ca0
00590c9c  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00590ca0  00 00 96 e5                                      ldr r0, [r6]
00590ca4  ac 10 94 e5                                      ldr r1, [r4, #0xac]
00590ca8  b0 e0 94 e5                                      ldr lr, [r4, #0xb0]
00590cac  07 20 80 e0                                      add r2, r0, r7
00590cb0  07 c0 90 e7                                      ldr ip, [r0, r7]
00590cb4  0c 00 92 e5                                      ldr r0, [r2, #0xc]
00590cb8  04 20 92 e5                                      ldr r2, [r2, #4]
00590cbc  a4 e0 84 e5                                      str lr, [r4, #0xa4]
00590cc0  b0 00 84 e5                                      str r0, [r4, #0xb0]
00590cc4  a8 c0 84 e5                                      str ip, [r4, #0xa8]
00590cc8  ac 20 84 e5                                      str r2, [r4, #0xac]
00590ccc  9c 30 84 e5                                      str r3, [r4, #0x9c]
00590cd0  a0 10 84 e5                                      str r1, [r4, #0xa0]
00590cd4  03 00 a0 e1                                      mov r0, r3
00590cd8  01 80 88 e2                                      add r8, r8, #1
00590cdc  00 30 93 e5                                      ldr r3, [r3]
00590ce0  0f e0 a0 e1                                      mov lr, pc
00590ce4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00590ce8  08 00 55 e1                                      cmp r5, r8
00590cec  14 70 87 e2                                      add r7, r7, #0x14
00590cf0  e9 ff ff 1a                                      bne #0x590c9c
00590cf4  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00590cf8  84 e0 94 e5                                      ldr lr, [r4, #0x84]
00590cfc  88 20 94 e5                                      ldr r2, [r4, #0x88]
00590d00  ac a0 94 e5                                      ldr sl, [r4, #0xac]
00590d04  b0 80 94 e5                                      ldr r8, [r4, #0xb0]
00590d08  02 10 6e e0                                      rsb r1, lr, r2
00590d0c  41 11 a0 e1                                      asr r1, r1, #2
00590d10  14 50 42 e2                                      sub r5, r2, #0x14
00590d14  81 c0 81 e0                                      add ip, r1, r1, lsl #1
00590d18  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00590d1c  0c c2 8c e0                                      add ip, ip, ip, lsl #4
00590d20  14 70 12 e5                                      ldr r7, [r2, #-0x14]
00590d24  0c c4 8c e0                                      add ip, ip, ip, lsl #8
00590d28  04 50 95 e5                                      ldr r5, [r5, #4]
00590d2c  0c c8 8c e0                                      add ip, ip, ip, lsl #16
00590d30  9c 30 84 e5                                      str r3, [r4, #0x9c]
00590d34  0c c1 91 e0                                      adds ip, r1, ip, lsl #2
00590d38  00 30 a0 e3                                      mov r3, #0
00590d3c  00 10 a0 e3                                      mov r1, #0
00590d40  a0 a0 84 e5                                      str sl, [r4, #0xa0]
00590d44  a4 80 84 e5                                      str r8, [r4, #0xa4]
00590d48  a8 70 84 e5                                      str r7, [r4, #0xa8]
00590d4c  ac 50 84 e5                                      str r5, [r4, #0xac]
00590d50  b0 00 84 e5                                      str r0, [r4, #0xb0]
00590d54  1c 10 8d e5                                      str r1, [sp, #0x1c]
00590d58  20 30 8d e5                                      str r3, [sp, #0x20]
00590d5c  10 10 8d e5                                      str r1, [sp, #0x10]
00590d60  14 10 8d e5                                      str r1, [sp, #0x14]
00590d64  18 10 8d e5                                      str r1, [sp, #0x18]
00590d68  29 00 00 0a                                      beq #0x590e14
00590d6c  0e 00 52 e1                                      cmp r2, lr
00590d70  0f 00 00 0a                                      beq #0x590db4
00590d74  06 00 a0 e1                                      mov r0, r6
00590d78  0e 10 a0 e1                                      mov r1, lr
00590d7c  8c 30 8d e2                                      add r3, sp, #0x8c
00590d80  b5 18 f7 eb                                      bl #0x35705c
00590d84  18 50 9d e5                                      ldr r5, [sp, #0x18]
00590d88  00 00 55 e3                                      cmp r5, #0
00590d8c  08 00 00 0a                                      beq #0x590db4
00590d90  00 30 95 e5                                      ldr r3, [r5]
00590d94  01 30 43 e2                                      sub r3, r3, #1
00590d98  00 00 53 e3                                      cmp r3, #0
00590d9c  00 30 85 e5                                      str r3, [r5]
00590da0  03 00 00 1a                                      bne #0x590db4
00590da4  05 00 a0 e1                                      mov r0, r5
00590da8  72 ec 00 eb                                      bl #0x5cbf78
00590dac  05 00 a0 e1                                      mov r0, r5
00590db0  3e f5 f5 eb                                      bl #0x30e2b0
00590db4  04 00 a0 e1                                      mov r0, r4
00590db8  64 e9 ff eb                                      bl #0x58b350
00590dbc  a4 d0 8d e2                                      add sp, sp, #0xa4
00590dc0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00590dc4  08 00 a0 e1                                      mov r0, r8
00590dc8  6a ec 00 eb                                      bl #0x5cbf78
00590dcc  08 00 a0 e1                                      mov r0, r8
00590dd0  36 f5 f5 eb                                      bl #0x30e2b0
00590dd4  ce fe ff ea                                      b #0x590914
00590dd8  04 00 a0 e1                                      mov r0, r4
00590ddc  05 10 a0 e3                                      mov r1, #5
00590de0  54 20 84 e2                                      add r2, r4, #0x54
00590de4  b0 e7 ff eb                                      bl #0x58acac
00590de8  01 30 a0 e3                                      mov r3, #1
00590dec  00 30 8d e5                                      str r3, [sp]
00590df0  03 10 a0 e1                                      mov r1, r3
00590df4  00 c0 96 e5                                      ldr ip, [r6]
00590df8  06 00 a0 e1                                      mov r0, r6
00590dfc  03 20 a0 e1                                      mov r2, r3
00590e00  0f e0 a0 e1                                      mov lr, pc
00590e04  d4 f0 9c e5                                      ldr pc, [ip, #0xd4]
00590e08  00 00 55 e3                                      cmp r5, #0
00590e0c  45 ff ff 0a                                      beq #0x590b28
00590e10  2e ff ff ea                                      b #0x590ad0
00590e14  02 10 a0 e1                                      mov r1, r2
00590e18  06 00 a0 e1                                      mov r0, r6
00590e1c  0c 20 a0 e1                                      mov r2, ip
00590e20  10 30 8d e2                                      add r3, sp, #0x10
00590e24  b2 1b f7 eb                                      bl #0x357cf4
00590e28  18 50 9d e5                                      ldr r5, [sp, #0x18]
00590e2c  d5 ff ff ea                                      b #0x590d88
00590e30  02 10 a0 e1                                      mov r1, r2
00590e34  07 00 a0 e1                                      mov r0, r7
00590e38  0c 20 a0 e1                                      mov r2, ip
00590e3c  38 30 8d e2                                      add r3, sp, #0x38
00590e40  26 1a f7 eb                                      bl #0x3576e0
00590e44  40 50 9d e5                                      ldr r5, [sp, #0x40]
00590e48  f5 fe ff ea                                      b #0x590a24
00590e4c  01 c0 a0 e3                                      mov ip, #1
00590e50  03 10 a0 e1                                      mov r1, r3
00590e54  06 00 a0 e1                                      mov r0, r6
00590e58  24 20 8d e2                                      add r2, sp, #0x24
00590e5c  90 30 8d e2                                      add r3, sp, #0x90
00590e60  04 c0 8d e5                                      str ip, [sp, #4]
00590e64  00 c0 8d e5                                      str ip, [sp]
00590e68  ab 16 f7 eb                                      bl #0x35691c
00590e6c  6c ff ff ea                                      b #0x590c24
00590e70  01 c0 a0 e3                                      mov ip, #1
00590e74  03 10 a0 e1                                      mov r1, r3
00590e78  07 00 a0 e1                                      mov r0, r7
00590e7c  48 20 8d e2                                      add r2, sp, #0x48
00590e80  98 30 8d e2                                      add r3, sp, #0x98
00590e84  04 c0 8d e5                                      str ip, [sp, #4]
00590e88  00 c0 8d e5                                      str ip, [sp]
00590e8c  fc 03 f7 eb                                      bl #0x351e84
00590e90  97 fe ff ea                                      b #0x5908f4
00590e94  0c 10 a0 e1                                      mov r1, ip
00590e98  05 00 a0 e1                                      mov r0, r5
00590e9c  68 20 8d e2                                      add r2, sp, #0x68
00590ea0  9c 30 8d e2                                      add r3, sp, #0x9c
00590ea4  04 e0 8d e5                                      str lr, [sp, #4]
00590ea8  00 e0 8d e5                                      str lr, [sp]
00590eac  9b 02 f7 eb                                      bl #0x351920
00590eb0  29 fe ff ea                                      b #0x59075c
; mapping-symbol data/literal pool
00590eb4  d0 43 40 00 4c 16 00 00 04 24 00 00              .byte 0xd0, 0x43, 0x40, 0x00, 0x4c, 0x16, 0x00, 0x00, 0x04, 0x24, 0x00, 0x00

; FUNCTION 0x00590ec0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZTv0_n24_N6glitch5scene13CSceneManagerD0Ev
; demangled: virtual thunk to glitch::scene::CSceneManager::~CSceneManager()
; decoder-mode: arm
00590ec0  00 30 90 e5                                      ldr r3, [r0]
00590ec4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00590ec8  03 00 80 e0                                      add r0, r0, r3
00590ecc  0b f8 ff ea                                      b #0x58ef00

; FUNCTION 0x00590ed0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZTv0_n12_N6glitch5scene13CSceneManagerD0Ev
; demangled: virtual thunk to glitch::scene::CSceneManager::~CSceneManager()
; decoder-mode: arm
00590ed0  00 30 90 e5                                      ldr r3, [r0]
00590ed4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00590ed8  03 00 80 e0                                      add r0, r0, r3
00590edc  07 f8 ff ea                                      b #0x58ef00

; FUNCTION 0x00590ee0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZTv0_n24_N6glitch5scene13CSceneManagerD1Ev
; demangled: virtual thunk to glitch::scene::CSceneManager::~CSceneManager()
; decoder-mode: arm
00590ee0  00 30 90 e5                                      ldr r3, [r0]
00590ee4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00590ee8  03 00 80 e0                                      add r0, r0, r3
00590eec  1f f7 ff ea                                      b #0x58eb70

; FUNCTION 0x00590ef0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZTv0_n12_N6glitch5scene13CSceneManagerD1Ev
; demangled: virtual thunk to glitch::scene::CSceneManager::~CSceneManager()
; decoder-mode: arm
00590ef0  00 30 90 e5                                      ldr r3, [r0]
00590ef4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00590ef8  03 00 80 e0                                      add r0, r0, r3
00590efc  1b f7 ff ea                                      b #0x58eb70

; FUNCTION 0x00590f00, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZTv0_n20_N6glitch5scene13CSceneManager21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CSceneManager::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00590f00  00 30 90 e5                                      ldr r3, [r0]
00590f04  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00590f08  03 00 80 e0                                      add r0, r0, r3
00590f0c  2c eb ff ea                                      b #0x58bbc4

; FUNCTION 0x00590f10, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneManager
; alias: _ZTv0_n16_NK6glitch5scene13CSceneManager19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CSceneManager::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00590f10  00 30 90 e5                                      ldr r3, [r0]
00590f14  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00590f18  03 00 80 e0                                      add r0, r0, r3
00590f1c  31 e0 ff ea                                      b #0x588fe8
