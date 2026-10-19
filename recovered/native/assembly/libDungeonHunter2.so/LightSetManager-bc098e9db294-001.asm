; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003541d4, declared_size=660, range_size=660, mode=arm
; class-group: LightSetManager
; alias: _ZN15LightSetManageraSERKS_
; demangled: LightSetManager::operator=(LightSetManager const&)
; decoder-mode: arm
003541d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003541d8  01 70 a0 e1                                      mov r7, r1
003541dc  04 30 97 e4                                      ldr r3, [r7], #4
003541e0  78 62 9f e5                                      ldr r6, [pc, #0x278]
003541e4  00 a0 a0 e1                                      mov sl, r0
003541e8  14 d0 4d e2                                      sub sp, sp, #0x14
003541ec  01 50 a0 e1                                      mov r5, r1
003541f0  00 40 a0 e1                                      mov r4, r0
003541f4  04 30 8a e4                                      str r3, [sl], #4
003541f8  00 80 a0 e3                                      mov r8, #0
003541fc  06 60 8f e0                                      add r6, pc, r6
00354200  08 00 8a e0                                      add r0, sl, r8
00354204  07 00 50 e1                                      cmp r0, r7
00354208  18 80 88 e2                                      add r8, r8, #0x18
0035420c  02 00 00 0a                                      beq #0x35421c
00354210  14 10 97 e5                                      ldr r1, [r7, #0x14]
00354214  10 20 97 e5                                      ldr r2, [r7, #0x10]
00354218  f0 f1 fe eb                                      bl #0x3109e0
0035421c  60 00 58 e3                                      cmp r8, #0x60
00354220  18 70 87 e2                                      add r7, r7, #0x18
00354224  f5 ff ff 1a                                      bne #0x354200
00354228  64 c0 84 e2                                      add ip, r4, #0x64
0035422c  64 e0 85 e2                                      add lr, r5, #0x64
00354230  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00354234  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00354238  24 12 9f e5                                      ldr r1, [pc, #0x224]
0035423c  00 30 9e e5                                      ldr r3, [lr]
00354240  00 90 a0 e3                                      mov sb, #0
00354244  04 10 8d e5                                      str r1, [sp, #4]
00354248  78 20 84 e2                                      add r2, r4, #0x78
0035424c  00 30 8c e5                                      str r3, [ip]
00354250  78 30 85 e2                                      add r3, r5, #0x78
00354254  08 20 8d e5                                      str r2, [sp, #8]
00354258  0c 30 8d e5                                      str r3, [sp, #0xc]
0035425c  09 b0 a0 e1                                      mov fp, sb
00354260  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00354264  08 20 9d e5                                      ldr r2, [sp, #8]
00354268  00 70 a0 e3                                      mov r7, #0
0035426c  09 a0 81 e0                                      add sl, r1, sb
00354270  09 80 82 e0                                      add r8, r2, sb
00354274  07 20 9a e7                                      ldr r2, [sl, r7]
00354278  04 70 87 e2                                      add r7, r7, #4
0035427c  00 00 52 e3                                      cmp r2, #0
00354280  00 30 92 15                                      ldrne r3, [r2]
00354284  01 30 83 12                                      addne r3, r3, #1
00354288  00 30 82 15                                      strne r3, [r2]
0035428c  00 30 98 e5                                      ldr r3, [r8]
00354290  00 20 88 e5                                      str r2, [r8]
00354294  04 80 88 e2                                      add r8, r8, #4
00354298  00 00 53 e3                                      cmp r3, #0
0035429c  03 00 a0 e1                                      mov r0, r3
003542a0  0f 00 00 0a                                      beq #0x3542e4
003542a4  00 20 93 e5                                      ldr r2, [r3]
003542a8  01 20 42 e2                                      sub r2, r2, #1
003542ac  00 00 52 e3                                      cmp r2, #0
003542b0  00 20 83 e5                                      str r2, [r3]
003542b4  0a 00 00 1a                                      bne #0x3542e4
003542b8  54 20 d3 e5                                      ldrb r2, [r3, #0x54]
003542bc  00 00 52 e3                                      cmp r2, #0
003542c0  05 00 00 1a                                      bne #0x3542dc
003542c4  04 10 9d e5                                      ldr r1, [sp, #4]
003542c8  01 20 96 e7                                      ldr r2, [r6, r1]
003542cc  50 10 93 e5                                      ldr r1, [r3, #0x50]
003542d0  00 c0 92 e5                                      ldr ip, [r2]
003542d4  00 c0 81 e5                                      str ip, [r1]
003542d8  00 10 82 e5                                      str r1, [r2]
003542dc  50 b0 83 e5                                      str fp, [r3, #0x50]
003542e0  56 f0 fe eb                                      bl #0x310440
003542e4  14 00 57 e3                                      cmp r7, #0x14
003542e8  e1 ff ff 1a                                      bne #0x354274
003542ec  14 90 89 e2                                      add sb, sb, #0x14
003542f0  50 00 59 e3                                      cmp sb, #0x50
003542f4  d9 ff ff 1a                                      bne #0x354260
003542f8  64 b1 9f e5                                      ldr fp, [pc, #0x164]
003542fc  00 70 a0 e3                                      mov r7, #0
00354300  c8 80 84 e2                                      add r8, r4, #0xc8
00354304  c8 a0 85 e2                                      add sl, r5, #0xc8
00354308  07 90 a0 e1                                      mov sb, r7
0035430c  07 20 9a e7                                      ldr r2, [sl, r7]
00354310  04 70 87 e2                                      add r7, r7, #4
00354314  00 00 52 e3                                      cmp r2, #0
00354318  00 30 92 15                                      ldrne r3, [r2]
0035431c  01 30 83 12                                      addne r3, r3, #1
00354320  00 30 82 15                                      strne r3, [r2]
00354324  00 30 98 e5                                      ldr r3, [r8]
00354328  00 20 88 e5                                      str r2, [r8]
0035432c  04 80 88 e2                                      add r8, r8, #4
00354330  00 00 53 e3                                      cmp r3, #0
00354334  03 00 a0 e1                                      mov r0, r3
00354338  0d 00 00 0a                                      beq #0x354374
0035433c  00 20 93 e5                                      ldr r2, [r3]
00354340  01 20 42 e2                                      sub r2, r2, #1
00354344  00 00 52 e3                                      cmp r2, #0
00354348  00 20 83 e5                                      str r2, [r3]
0035434c  08 00 00 1a                                      bne #0x354374
00354350  54 20 d3 e5                                      ldrb r2, [r3, #0x54]
00354354  00 00 52 e3                                      cmp r2, #0
00354358  0b 20 96 07                                      ldreq r2, [r6, fp]
0035435c  50 10 93 05                                      ldreq r1, [r3, #0x50]
00354360  00 c0 92 05                                      ldreq ip, [r2]
00354364  00 c0 81 05                                      streq ip, [r1]
00354368  00 10 82 05                                      streq r1, [r2]
0035436c  50 90 83 e5                                      str sb, [r3, #0x50]
00354370  32 f0 fe eb                                      bl #0x310440
00354374  14 00 57 e3                                      cmp r7, #0x14
00354378  e3 ff ff 1a                                      bne #0x35430c
0035437c  dc c0 84 e2                                      add ip, r4, #0xdc
00354380  dc 00 85 e2                                      add r0, r5, #0xdc
00354384  00 30 a0 e3                                      mov r3, #0
00354388  03 20 80 e0                                      add r2, r0, r3
0035438c  04 10 92 e5                                      ldr r1, [r2, #4]
00354390  03 20 8c e0                                      add r2, ip, r3
00354394  08 30 83 e2                                      add r3, r3, #8
00354398  40 00 53 e3                                      cmp r3, #0x40
0035439c  04 10 82 e5                                      str r1, [r2, #4]
003543a0  f8 ff ff 1a                                      bne #0x354388
003543a4  47 3f 84 e2                                      add r3, r4, #0x11c
003543a8  47 2f 85 e2                                      add r2, r5, #0x11c
003543ac  5b 0f 84 e2                                      add r0, r4, #0x16c
003543b0  04 10 92 e5                                      ldr r1, [r2, #4]
003543b4  04 10 83 e5                                      str r1, [r3, #4]
003543b8  08 10 92 e5                                      ldr r1, [r2, #8]
003543bc  08 10 83 e5                                      str r1, [r3, #8]
003543c0  0c 10 92 e5                                      ldr r1, [r2, #0xc]
003543c4  0c 10 83 e5                                      str r1, [r3, #0xc]
003543c8  10 10 92 e5                                      ldr r1, [r2, #0x10]
003543cc  14 20 82 e2                                      add r2, r2, #0x14
003543d0  10 10 83 e5                                      str r1, [r3, #0x10]
003543d4  14 30 83 e2                                      add r3, r3, #0x14
003543d8  00 00 53 e1                                      cmp r3, r0
003543dc  f3 ff ff 1a                                      bne #0x3543b0
003543e0  6c 31 95 e5                                      ldr r3, [r5, #0x16c]
003543e4  19 0e 84 e2                                      add r0, r4, #0x190
003543e8  19 1e 85 e2                                      add r1, r5, #0x190
003543ec  6c 31 84 e5                                      str r3, [r4, #0x16c]
003543f0  70 31 95 e5                                      ldr r3, [r5, #0x170]
003543f4  70 31 84 e5                                      str r3, [r4, #0x170]
003543f8  74 31 95 e5                                      ldr r3, [r5, #0x174]
003543fc  74 31 84 e5                                      str r3, [r4, #0x174]
00354400  78 31 95 e5                                      ldr r3, [r5, #0x178]
00354404  78 31 84 e5                                      str r3, [r4, #0x178]
00354408  7c 31 95 e5                                      ldr r3, [r5, #0x17c]
0035440c  7c 31 84 e5                                      str r3, [r4, #0x17c]
00354410  80 31 95 e5                                      ldr r3, [r5, #0x180]
00354414  80 31 84 e5                                      str r3, [r4, #0x180]
00354418  84 31 95 e5                                      ldr r3, [r5, #0x184]
0035441c  84 31 84 e5                                      str r3, [r4, #0x184]
00354420  88 31 95 e5                                      ldr r3, [r5, #0x188]
00354424  88 31 84 e5                                      str r3, [r4, #0x188]
00354428  8c 31 95 e5                                      ldr r3, [r5, #0x18c]
0035442c  8c 31 84 e5                                      str r3, [r4, #0x18c]
00354430  22 ff ff eb                                      bl #0x3540c0
00354434  9c 31 d5 e5                                      ldrb r3, [r5, #0x19c]
00354438  04 00 a0 e1                                      mov r0, r4
0035443c  9c 31 c4 e5                                      strb r3, [r4, #0x19c]
00354440  9d 31 d5 e5                                      ldrb r3, [r5, #0x19d]
00354444  9d 31 c4 e5                                      strb r3, [r4, #0x19d]
00354448  9e 31 d5 e5                                      ldrb r3, [r5, #0x19e]
0035444c  9e 31 c4 e5                                      strb r3, [r4, #0x19e]
00354450  a0 31 95 e5                                      ldr r3, [r5, #0x1a0]
00354454  a0 31 84 e5                                      str r3, [r4, #0x1a0]
00354458  14 d0 8d e2                                      add sp, sp, #0x14
0035445c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00354460  94 08 64 00 c0 3c 00 00                          .byte 0x94, 0x08, 0x64, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x0040c3cc, declared_size=64, range_size=64, mode=arm
; class-group: LightSetManager
; alias: _ZN15LightSetManager21GetLightSetIdFromNameESs
; demangled: LightSetManager::GetLightSetIdFromName(std::basic_string<char, std::char_traits<char>, std::allocator<char> >)
; decoder-mode: arm
0040c3cc  70 40 2d e9                                      push {r4, r5, r6, lr}
0040c3d0  14 60 91 e5                                      ldr r6, [r1, #0x14]
0040c3d4  00 50 a0 e1                                      mov r5, r0
0040c3d8  00 40 a0 e3                                      mov r4, #0
0040c3dc  18 10 95 e5                                      ldr r1, [r5, #0x18]
0040c3e0  06 00 a0 e1                                      mov r0, r6
0040c3e4  cc 07 fc eb                                      bl #0x30e31c
0040c3e8  00 00 50 e3                                      cmp r0, #0
0040c3ec  04 00 00 0a                                      beq #0x40c404
0040c3f0  01 40 84 e2                                      add r4, r4, #1
0040c3f4  04 00 54 e3                                      cmp r4, #4
0040c3f8  18 50 85 e2                                      add r5, r5, #0x18
0040c3fc  f6 ff ff 1a                                      bne #0x40c3dc
0040c400  00 40 a0 e3                                      mov r4, #0
0040c404  04 00 a0 e1                                      mov r0, r4
0040c408  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0040c40c, declared_size=280, range_size=280, mode=arm
; class-group: LightSetManager
; alias: _ZN15LightSetManager8GetLightEii
; demangled: LightSetManager::GetLight(int, int)
; decoder-mode: arm
0040c40c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0040c410  e8 40 9f e5                                      ldr r4, [pc, #0xe8]
0040c414  03 00 51 e3                                      cmp r1, #3
0040c418  0c d0 4d e2                                      sub sp, sp, #0xc
0040c41c  04 40 8f e0                                      add r4, pc, r4
0040c420  01 50 a0 e1                                      mov r5, r1
0040c424  00 70 a0 e1                                      mov r7, r0
0040c428  02 60 a0 e1                                      mov r6, r2
0040c42c  08 00 00 9a                                      bls #0x40c454
0040c430  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0040c434  03 30 94 e7                                      ldr r3, [r4, r3]
0040c438  00 30 93 e5                                      ldr r3, [r3]
0040c43c  02 00 53 e3                                      cmp r3, #2
0040c440  00 30 a0 03                                      moveq r3, #0
0040c444  00 30 83 05                                      streq r3, [r3]
0040c448  01 00 00 0a                                      beq #0x40c454
0040c44c  01 00 53 e3                                      cmp r3, #1
0040c450  1d 00 00 0a                                      beq #0x40c4cc
0040c454  04 00 56 e3                                      cmp r6, #4
0040c458  08 00 00 9a                                      bls #0x40c480
0040c45c  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0040c460  03 30 94 e7                                      ldr r3, [r4, r3]
0040c464  00 30 93 e5                                      ldr r3, [r3]
0040c468  02 00 53 e3                                      cmp r3, #2
0040c46c  00 30 a0 03                                      moveq r3, #0
0040c470  00 30 83 05                                      streq r3, [r3]
0040c474  01 00 00 0a                                      beq #0x40c480
0040c478  01 00 53 e3                                      cmp r3, #1
0040c47c  05 00 00 0a                                      beq #0x40c498
0040c480  05 51 85 e0                                      add r5, r5, r5, lsl #2
0040c484  06 60 85 e0                                      add r6, r5, r6
0040c488  1e 00 86 e2                                      add r0, r6, #0x1e
0040c48c  00 01 87 e0                                      add r0, r7, r0, lsl #2
0040c490  0c d0 8d e2                                      add sp, sp, #0xc
0040c494  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0040c498  68 00 9f e5                                      ldr r0, [pc, #0x68]
0040c49c  68 10 9f e5                                      ldr r1, [pc, #0x68]
0040c4a0  68 20 9f e5                                      ldr r2, [pc, #0x68]
0040c4a4  00 00 94 e7                                      ldr r0, [r4, r0]
0040c4a8  64 30 9f e5                                      ldr r3, [pc, #0x64]
0040c4ac  75 c0 a0 e3                                      mov ip, #0x75
0040c4b0  01 10 8f e0                                      add r1, pc, r1
0040c4b4  02 20 8f e0                                      add r2, pc, r2
0040c4b8  03 30 8f e0                                      add r3, pc, r3
0040c4bc  a8 00 80 e2                                      add r0, r0, #0xa8
0040c4c0  00 c0 8d e5                                      str ip, [sp]
0040c4c4  ce 06 fc eb                                      bl #0x30e004
0040c4c8  ec ff ff ea                                      b #0x40c480
0040c4cc  34 00 9f e5                                      ldr r0, [pc, #0x34]
0040c4d0  40 10 9f e5                                      ldr r1, [pc, #0x40]
0040c4d4  40 20 9f e5                                      ldr r2, [pc, #0x40]
0040c4d8  00 00 94 e7                                      ldr r0, [r4, r0]
0040c4dc  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0040c4e0  74 c0 a0 e3                                      mov ip, #0x74
0040c4e4  01 10 8f e0                                      add r1, pc, r1
0040c4e8  02 20 8f e0                                      add r2, pc, r2
0040c4ec  03 30 8f e0                                      add r3, pc, r3
0040c4f0  a8 00 80 e2                                      add r0, r0, #0xa8
0040c4f4  00 c0 8d e5                                      str ip, [sp]
0040c4f8  c1 06 fc eb                                      bl #0x30e004
0040c4fc  d4 ff ff ea                                      b #0x40c454
; mapping-symbol data/literal pool
0040c500  74 86 58 00 c0 39 00 00 c0 19 00 00 28 1f 4b 00  .byte 0x74, 0x86, 0x58, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x28, 0x1f, 0x4b, 0x00
0040c510  14 b8 4b 00 c8 b7 4b 00 f4 1e 4b 00 60 b7 4b 00  .byte 0x14, 0xb8, 0x4b, 0x00, 0xc8, 0xb7, 0x4b, 0x00, 0xf4, 0x1e, 0x4b, 0x00, 0x60, 0xb7, 0x4b, 0x00
0040c520  94 b7 4b 00                                      .byte 0x94, 0xb7, 0x4b, 0x00

; FUNCTION 0x0040c524, declared_size=180, range_size=180, mode=arm
; class-group: LightSetManager
; alias: _ZN15LightSetManager14AddStaticLightEPN6glitch5scene15CLightSceneNodeE
; demangled: LightSetManager::AddStaticLight(glitch::scene::CLightSceneNode*)
; decoder-mode: arm
0040c524  30 40 2d e9                                      push {r4, r5, lr}
0040c528  88 21 90 e5                                      ldr r2, [r0, #0x188]
0040c52c  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0040c530  0c d0 4d e2                                      sub sp, sp, #0xc
0040c534  06 00 52 e3                                      cmp r2, #6
0040c538  00 40 a0 e1                                      mov r4, r0
0040c53c  01 50 a0 e1                                      mov r5, r1
0040c540  03 30 8f e0                                      add r3, pc, r3
0040c544  08 00 00 da                                      ble #0x40c56c
0040c548  74 10 9f e5                                      ldr r1, [pc, #0x74]
0040c54c  01 10 93 e7                                      ldr r1, [r3, r1]
0040c550  00 10 91 e5                                      ldr r1, [r1]
0040c554  02 00 51 e3                                      cmp r1, #2
0040c558  00 30 a0 03                                      moveq r3, #0
0040c55c  00 30 83 05                                      streq r3, [r3]
0040c560  01 00 00 0a                                      beq #0x40c56c
0040c564  01 00 51 e3                                      cmp r1, #1
0040c568  06 00 00 0a                                      beq #0x40c588
0040c56c  82 21 84 e0                                      add r2, r4, r2, lsl #3
0040c570  e0 50 82 e5                                      str r5, [r2, #0xe0]
0040c574  88 31 94 e5                                      ldr r3, [r4, #0x188]
0040c578  01 30 83 e2                                      add r3, r3, #1
0040c57c  88 31 84 e5                                      str r3, [r4, #0x188]
0040c580  0c d0 8d e2                                      add sp, sp, #0xc
0040c584  30 80 bd e8                                      pop {r4, r5, pc}
0040c588  38 00 9f e5                                      ldr r0, [pc, #0x38]
0040c58c  38 10 9f e5                                      ldr r1, [pc, #0x38]
0040c590  38 20 9f e5                                      ldr r2, [pc, #0x38]
0040c594  00 00 93 e7                                      ldr r0, [r3, r0]
0040c598  34 30 9f e5                                      ldr r3, [pc, #0x34]
0040c59c  02 20 8f e0                                      add r2, pc, r2
0040c5a0  6b c0 a0 e3                                      mov ip, #0x6b
0040c5a4  01 10 8f e0                                      add r1, pc, r1
0040c5a8  a8 00 80 e2                                      add r0, r0, #0xa8
0040c5ac  03 30 8f e0                                      add r3, pc, r3
0040c5b0  00 c0 8d e5                                      str ip, [sp]
0040c5b4  92 06 fc eb                                      bl #0x30e004
0040c5b8  88 21 94 e5                                      ldr r2, [r4, #0x188]
0040c5bc  ea ff ff ea                                      b #0x40c56c
; mapping-symbol data/literal pool
0040c5c0  50 85 58 00 c0 39 00 00 c0 19 00 00 34 1e 4b 00  .byte 0x50, 0x85, 0x58, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x34, 0x1e, 0x4b, 0x00
0040c5d0  64 b7 4b 00 d4 b6 4b 00                          .byte 0x64, 0xb7, 0x4b, 0x00, 0xd4, 0xb6, 0x4b, 0x00

; FUNCTION 0x0040c5d8, declared_size=216, range_size=216, mode=arm
; class-group: LightSetManager
; alias: _ZN15LightSetManager14AddActiveLightE12ObjectHandlePN6glitch5scene15CLightSceneNodeE
; demangled: LightSetManager::AddActiveLight(ObjectHandle, glitch::scene::CLightSceneNode*)
; decoder-mode: arm
0040c5d8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0040c5dc  1c d0 4d e2                                      sub sp, sp, #0x1c
0040c5e0  00 40 a0 e1                                      mov r4, r0
0040c5e4  0c 00 8d e2                                      add r0, sp, #0xc
0040c5e8  0e 00 80 e8                                      stm r0, {r1, r2, r3}
0040c5ec  8c 31 94 e5                                      ldr r3, [r4, #0x18c]
0040c5f0  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
0040c5f4  01 50 a0 e1                                      mov r5, r1
0040c5f8  02 00 53 e3                                      cmp r3, #2
0040c5fc  02 20 8f e0                                      add r2, pc, r2
0040c600  10 60 9d e5                                      ldr r6, [sp, #0x10]
0040c604  14 70 9d e5                                      ldr r7, [sp, #0x14]
0040c608  08 00 00 da                                      ble #0x40c630
0040c60c  88 10 9f e5                                      ldr r1, [pc, #0x88]
0040c610  01 10 92 e7                                      ldr r1, [r2, r1]
0040c614  00 10 91 e5                                      ldr r1, [r1]
0040c618  02 00 51 e3                                      cmp r1, #2
0040c61c  00 20 a0 03                                      moveq r2, #0
0040c620  00 20 82 05                                      streq r2, [r2]
0040c624  01 00 00 0a                                      beq #0x40c630
0040c628  01 00 51 e3                                      cmp r1, #1
0040c62c  0b 00 00 0a                                      beq #0x40c660
0040c630  14 20 a0 e3                                      mov r2, #0x14
0040c634  92 43 23 e0                                      mla r3, r2, r3, r4
0040c638  30 20 9d e5                                      ldr r2, [sp, #0x30]
0040c63c  2c 71 83 e5                                      str r7, [r3, #0x12c]
0040c640  28 61 83 e5                                      str r6, [r3, #0x128]
0040c644  20 21 83 e5                                      str r2, [r3, #0x120]
0040c648  24 51 83 e5                                      str r5, [r3, #0x124]
0040c64c  8c 31 94 e5                                      ldr r3, [r4, #0x18c]
0040c650  01 30 83 e2                                      add r3, r3, #1
0040c654  8c 31 84 e5                                      str r3, [r4, #0x18c]
0040c658  1c d0 8d e2                                      add sp, sp, #0x1c
0040c65c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0040c660  38 00 9f e5                                      ldr r0, [pc, #0x38]
0040c664  38 10 9f e5                                      ldr r1, [pc, #0x38]
0040c668  38 30 9f e5                                      ldr r3, [pc, #0x38]
0040c66c  00 00 92 e7                                      ldr r0, [r2, r0]
0040c670  34 20 9f e5                                      ldr r2, [pc, #0x34]
0040c674  03 30 8f e0                                      add r3, pc, r3
0040c678  61 c0 a0 e3                                      mov ip, #0x61
0040c67c  01 10 8f e0                                      add r1, pc, r1
0040c680  a8 00 80 e2                                      add r0, r0, #0xa8
0040c684  02 20 8f e0                                      add r2, pc, r2
0040c688  00 c0 8d e5                                      str ip, [sp]
0040c68c  5c 06 fc eb                                      bl #0x30e004
0040c690  8c 31 94 e5                                      ldr r3, [r4, #0x18c]
0040c694  e5 ff ff ea                                      b #0x40c630
; mapping-symbol data/literal pool
0040c698  94 84 58 00 c0 39 00 00 c0 19 00 00 5c 1d 4b 00  .byte 0x94, 0x84, 0x58, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x5c, 0x1d, 0x4b, 0x00
0040c6a8  0c b6 4b 00 ac b6 4b 00                          .byte 0x0c, 0xb6, 0x4b, 0x00, 0xac, 0xb6, 0x4b, 0x00

; FUNCTION 0x0040c6b0, declared_size=476, range_size=476, mode=arm
; class-group: LightSetManager
; alias: _ZN15LightSetManager21GetClosestStaticLightE7Point3DIfE
; demangled: LightSetManager::GetClosestStaticLight(Point3D<float>)
; decoder-mode: arm
0040c6b0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0040c6b4  88 21 90 e5                                      ldr r2, [r0, #0x188]
0040c6b8  b4 31 9f e5                                      ldr r3, [pc, #0x1b4]
0040c6bc  1c d0 4d e2                                      sub sp, sp, #0x1c
0040c6c0  00 00 52 e3                                      cmp r2, #0
0040c6c4  00 40 a0 e1                                      mov r4, r0
0040c6c8  01 50 a0 e1                                      mov r5, r1
0040c6cc  03 30 8f e0                                      add r3, pc, r3
0040c6d0  43 00 00 da                                      ble #0x40c7e4
0040c6d4  08 30 91 e5                                      ldr r3, [r1, #8]
0040c6d8  0c 30 8d e5                                      str r3, [sp, #0xc]
0040c6dc  04 50 91 e5                                      ldr r5, [r1, #4]
0040c6e0  00 b0 91 e5                                      ldr fp, [r1]
0040c6e4  10 50 8d e5                                      str r5, [sp, #0x10]
0040c6e8  00 20 e0 e3                                      mvn r2, #0
0040c6ec  28 9b 06 e3                                      movw sb, #0x6b28
0040c6f0  04 60 a0 e1                                      mov r6, r4
0040c6f4  00 50 a0 e3                                      mov r5, #0
0040c6f8  14 20 8d e5                                      str r2, [sp, #0x14]
0040c6fc  6e 9e 44 e3                                      movt sb, #0x4e6e
0040c700  e0 30 96 e5                                      ldr r3, [r6, #0xe0]
0040c704  08 60 86 e2                                      add r6, r6, #8
0040c708  03 00 a0 e1                                      mov r0, r3
0040c70c  00 30 93 e5                                      ldr r3, [r3]
0040c710  0f e0 a0 e1                                      mov lr, pc
0040c714  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0040c718  0b 10 a0 e1                                      mov r1, fp
0040c71c  00 30 a0 e1                                      mov r3, r0
0040c720  00 00 90 e5                                      ldr r0, [r0]
0040c724  04 a0 93 e5                                      ldr sl, [r3, #4]
0040c728  08 70 93 e5                                      ldr r7, [r3, #8]
0040c72c  1e 07 fc eb                                      bl #0x30e3ac
0040c730  10 10 9d e5                                      ldr r1, [sp, #0x10]
0040c734  00 80 a0 e1                                      mov r8, r0
0040c738  0a 00 a0 e1                                      mov r0, sl
0040c73c  1a 07 fc eb                                      bl #0x30e3ac
0040c740  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0040c744  00 a0 a0 e1                                      mov sl, r0
0040c748  07 00 a0 e1                                      mov r0, r7
0040c74c  16 07 fc eb                                      bl #0x30e3ac
0040c750  08 10 a0 e1                                      mov r1, r8
0040c754  00 70 a0 e1                                      mov r7, r0
0040c758  08 00 a0 e1                                      mov r0, r8
0040c75c  82 09 fc eb                                      bl #0x30ed6c
0040c760  0a 10 a0 e1                                      mov r1, sl
0040c764  00 80 a0 e1                                      mov r8, r0
0040c768  0a 00 a0 e1                                      mov r0, sl
0040c76c  7e 09 fc eb                                      bl #0x30ed6c
0040c770  00 10 a0 e1                                      mov r1, r0
0040c774  08 00 a0 e1                                      mov r0, r8
0040c778  09 09 fc eb                                      bl #0x30eba4
0040c77c  07 10 a0 e1                                      mov r1, r7
0040c780  00 80 a0 e1                                      mov r8, r0
0040c784  07 00 a0 e1                                      mov r0, r7
0040c788  77 09 fc eb                                      bl #0x30ed6c
0040c78c  00 10 a0 e1                                      mov r1, r0
0040c790  08 00 a0 e1                                      mov r0, r8
0040c794  02 09 fc eb                                      bl #0x30eba4
0040c798  41 08 fc eb                                      bl #0x30e8a4
0040c79c  87 06 fc eb                                      bl #0x30e1c0
0040c7a0  be 07 fc eb                                      bl #0x30e6a0
0040c7a4  00 70 a0 e1                                      mov r7, r0
0040c7a8  07 10 a0 e1                                      mov r1, r7
0040c7ac  09 00 a0 e1                                      mov r0, sb
0040c7b0  d0 06 fc eb                                      bl #0x30e2f8
0040c7b4  00 00 50 e3                                      cmp r0, #0
0040c7b8  14 50 8d 15                                      strne r5, [sp, #0x14]
0040c7bc  88 31 94 e5                                      ldr r3, [r4, #0x188]
0040c7c0  01 50 85 e2                                      add r5, r5, #1
0040c7c4  07 90 a0 11                                      movne sb, r7
0040c7c8  05 00 53 e1                                      cmp r3, r5
0040c7cc  cb ff ff ca                                      bgt #0x40c700
0040c7d0  14 20 9d e5                                      ldr r2, [sp, #0x14]
0040c7d4  82 41 84 e0                                      add r4, r4, r2, lsl #3
0040c7d8  dc 00 84 e2                                      add r0, r4, #0xdc
0040c7dc  1c d0 8d e2                                      add sp, sp, #0x1c
0040c7e0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0040c7e4  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
0040c7e8  02 20 93 e7                                      ldr r2, [r3, r2]
0040c7ec  00 20 92 e5                                      ldr r2, [r2]
0040c7f0  02 00 52 e3                                      cmp r2, #2
0040c7f4  04 00 00 0a                                      beq #0x40c80c
0040c7f8  01 00 52 e3                                      cmp r2, #1
0040c7fc  07 00 00 0a                                      beq #0x40c820
0040c800  00 30 e0 e3                                      mvn r3, #0
0040c804  14 30 8d e5                                      str r3, [sp, #0x14]
0040c808  f0 ff ff ea                                      b #0x40c7d0
0040c80c  00 30 a0 e3                                      mov r3, #0
0040c810  00 20 e0 e3                                      mvn r2, #0
0040c814  00 30 83 e5                                      str r3, [r3]
0040c818  14 20 8d e5                                      str r2, [sp, #0x14]
0040c81c  eb ff ff ea                                      b #0x40c7d0
0040c820  54 00 9f e5                                      ldr r0, [pc, #0x54]
0040c824  54 10 9f e5                                      ldr r1, [pc, #0x54]
0040c828  54 20 9f e5                                      ldr r2, [pc, #0x54]
0040c82c  00 00 93 e7                                      ldr r0, [r3, r0]
0040c830  50 30 9f e5                                      ldr r3, [pc, #0x50]
0040c834  02 20 8f e0                                      add r2, pc, r2
0040c838  44 c0 a0 e3                                      mov ip, #0x44
0040c83c  03 30 8f e0                                      add r3, pc, r3
0040c840  01 10 8f e0                                      add r1, pc, r1
0040c844  a8 00 80 e2                                      add r0, r0, #0xa8
0040c848  00 c0 8d e5                                      str ip, [sp]
0040c84c  ec 05 fc eb                                      bl #0x30e004
0040c850  08 20 95 e5                                      ldr r2, [r5, #8]
0040c854  88 31 94 e5                                      ldr r3, [r4, #0x188]
0040c858  0c 20 8d e5                                      str r2, [sp, #0xc]
0040c85c  00 b0 95 e5                                      ldr fp, [r5]
0040c860  04 50 95 e5                                      ldr r5, [r5, #4]
0040c864  00 00 53 e3                                      cmp r3, #0
0040c868  10 50 8d e5                                      str r5, [sp, #0x10]
0040c86c  9d ff ff ca                                      bgt #0x40c6e8
0040c870  e2 ff ff ea                                      b #0x40c800
; mapping-symbol data/literal pool
0040c874  c4 83 58 00 c0 39 00 00 c0 19 00 00 98 1b 4b 00  .byte 0xc4, 0x83, 0x58, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x98, 0x1b, 0x4b, 0x00
0040c884  2c b5 4b 00 44 b4 4b 00                          .byte 0x2c, 0xb5, 0x4b, 0x00, 0x44, 0xb4, 0x4b, 0x00

; FUNCTION 0x0040c9a8, declared_size=536, range_size=536, mode=arm
; class-group: LightSetManager
; alias: _ZN15LightSetManager13ApplySettingsEiRN5boost13intrusive_ptrIN6glitch5video9CMaterialEEERSt6vectorIbSaIbEE
; demangled: LightSetManager::ApplySettings(int, boost::intrusive_ptr<glitch::video::CMaterial>&, std::vector<bool, std::allocator<bool> >&)
; decoder-mode: arm
0040c9a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0040c9ac  1c d0 4d e2                                      sub sp, sp, #0x1c
0040c9b0  10 60 8d e2                                      add r6, sp, #0x10
0040c9b4  00 c0 93 e5                                      ldr ip, [r3]
0040c9b8  03 50 a0 e1                                      mov r5, r3
0040c9bc  00 40 a0 e3                                      mov r4, #0
0040c9c0  04 30 93 e5                                      ldr r3, [r3, #4]
0040c9c4  6c a9 06 e3                                      movw sl, #0x696c
0040c9c8  08 00 8d e5                                      str r0, [sp, #8]
0040c9cc  00 10 8d e5                                      str r1, [sp]
0040c9d0  04 00 86 e2                                      add r0, r6, #4
0040c9d4  06 10 86 e2                                      add r1, r6, #6
0040c9d8  02 b0 a0 e1                                      mov fp, r2
0040c9dc  67 a8 46 e3                                      movt sl, #0x6867
0040c9e0  04 80 a0 e1                                      mov r8, r4
0040c9e4  01 70 a0 e3                                      mov r7, #1
0040c9e8  04 00 8d e5                                      str r0, [sp, #4]
0040c9ec  0c 10 8d e5                                      str r1, [sp, #0xc]
0040c9f0  03 20 84 e0                                      add r2, r4, r3
0040c9f4  c2 1f a0 e1                                      asr r1, r2, #0x1f
0040c9f8  00 00 52 e3                                      cmp r2, #0
0040c9fc  1f 00 82 e2                                      add r0, r2, #0x1f
0040ca00  a1 1d a0 e1                                      lsr r1, r1, #0x1b
0040ca04  02 00 a0 a1                                      movge r0, r2
0040ca08  c0 02 a0 e1                                      asr r0, r0, #5
0040ca0c  01 20 82 e0                                      add r2, r2, r1
0040ca10  1f 20 02 e2                                      and r2, r2, #0x1f
0040ca14  01 20 52 e0                                      subs r2, r2, r1
0040ca18  00 01 8c e0                                      add r0, ip, r0, lsl #2
0040ca1c  04 00 40 42                                      submi r0, r0, #4
0040ca20  00 10 90 e5                                      ldr r1, [r0]
0040ca24  20 20 82 42                                      addmi r2, r2, #0x20
0040ca28  17 12 11 e0                                      ands r1, r1, r7, lsl r2
0040ca2c  21 00 00 1a                                      bne #0x40cab8
0040ca30  01 40 84 e2                                      add r4, r4, #1
0040ca34  04 00 54 e3                                      cmp r4, #4
0040ca38  ec ff ff 1a                                      bne #0x40c9f0
0040ca3c  10 60 8d e2                                      add r6, sp, #0x10
0040ca40  6c 99 06 e3                                      movw sb, #0x696c
0040ca44  04 20 86 e2                                      add r2, r6, #4
0040ca48  06 00 86 e2                                      add r0, r6, #6
0040ca4c  67 98 46 e3                                      movt sb, #0x6867
0040ca50  00 40 a0 e3                                      mov r4, #0
0040ca54  01 70 a0 e3                                      mov r7, #1
0040ca58  00 20 8d e5                                      str r2, [sp]
0040ca5c  04 00 8d e5                                      str r0, [sp, #4]
0040ca60  03 30 84 e0                                      add r3, r4, r3
0040ca64  c3 2f a0 e1                                      asr r2, r3, #0x1f
0040ca68  00 00 53 e3                                      cmp r3, #0
0040ca6c  1f 10 83 e2                                      add r1, r3, #0x1f
0040ca70  a2 2d a0 e1                                      lsr r2, r2, #0x1b
0040ca74  03 10 a0 a1                                      movge r1, r3
0040ca78  c1 12 a0 e1                                      asr r1, r1, #5
0040ca7c  02 30 83 e0                                      add r3, r3, r2
0040ca80  1f 30 03 e2                                      and r3, r3, #0x1f
0040ca84  02 30 53 e0                                      subs r3, r3, r2
0040ca88  01 11 8c e0                                      add r1, ip, r1, lsl #2
0040ca8c  04 10 41 42                                      submi r1, r1, #4
0040ca90  00 a0 91 e5                                      ldr sl, [r1]
0040ca94  20 30 83 42                                      addmi r3, r3, #0x20
0040ca98  17 a3 1a e0                                      ands sl, sl, r7, lsl r3
0040ca9c  27 00 00 0a                                      beq #0x40cb40
0040caa0  01 40 84 e2                                      add r4, r4, #1
0040caa4  04 00 54 e3                                      cmp r4, #4
0040caa8  3f 00 00 0a                                      beq #0x40cbac
0040caac  00 c0 95 e5                                      ldr ip, [r5]
0040cab0  04 30 95 e5                                      ldr r3, [r5, #4]
0040cab4  e9 ff ff ea                                      b #0x40ca60
0040cab8  04 20 a0 e1                                      mov r2, r4
0040cabc  00 10 9d e5                                      ldr r1, [sp]
0040cac0  08 00 9d e5                                      ldr r0, [sp, #8]
0040cac4  50 fe ff eb                                      bl #0x40c40c
0040cac8  04 10 9d e5                                      ldr r1, [sp, #4]
0040cacc  00 90 a0 e1                                      mov sb, r0
0040cad0  74 03 02 e3                                      movw r0, #0x2374
0040cad4  00 30 9b e5                                      ldr r3, [fp]
0040cad8  b0 00 c1 e1                                      strh r0, [r1]
0040cadc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0040cae0  30 20 88 e2                                      add r2, r8, #0x30
0040cae4  15 20 cd e5                                      strb r2, [sp, #0x15]
0040cae8  00 20 a0 e3                                      mov r2, #0
0040caec  00 20 c0 e5                                      strb r2, [r0]
0040caf0  00 a0 86 e5                                      str sl, [r6]
0040caf4  06 10 a0 e1                                      mov r1, r6
0040caf8  04 00 93 e5                                      ldr r0, [r3, #4]
0040cafc  00 20 a0 e3                                      mov r2, #0
0040cb00  61 19 07 eb                                      bl #0x5d308c
0040cb04  ff 1f 0f e3                                      movw r1, #0xffff
0040cb08  01 00 50 e1                                      cmp r0, r1
0040cb0c  28 00 00 0a                                      beq #0x40cbb4
0040cb10  00 20 99 e5                                      ldr r2, [sb]
0040cb14  00 10 a0 e1                                      mov r1, r0
0040cb18  09 30 a0 e1                                      mov r3, sb
0040cb1c  00 00 52 e3                                      cmp r2, #0
0040cb20  23 00 00 0a                                      beq #0x40cbb4
0040cb24  00 00 9b e5                                      ldr r0, [fp]
0040cb28  00 20 a0 e3                                      mov r2, #0
0040cb2c  8a 07 07 eb                                      bl #0x5ce95c
0040cb30  01 80 88 e2                                      add r8, r8, #1
0040cb34  04 30 95 e5                                      ldr r3, [r5, #4]
0040cb38  00 c0 95 e5                                      ldr ip, [r5]
0040cb3c  bb ff ff ea                                      b #0x40ca30
0040cb40  00 00 9d e5                                      ldr r0, [sp]
0040cb44  74 13 02 e3                                      movw r1, #0x2374
0040cb48  00 30 9b e5                                      ldr r3, [fp]
0040cb4c  b0 10 c0 e1                                      strh r1, [r0]
0040cb50  04 10 9d e5                                      ldr r1, [sp, #4]
0040cb54  30 20 88 e2                                      add r2, r8, #0x30
0040cb58  15 20 cd e5                                      strb r2, [sp, #0x15]
0040cb5c  00 a0 c1 e5                                      strb sl, [r1]
0040cb60  00 90 86 e5                                      str sb, [r6]
0040cb64  04 00 93 e5                                      ldr r0, [r3, #4]
0040cb68  06 10 a0 e1                                      mov r1, r6
0040cb6c  0a 20 a0 e1                                      mov r2, sl
0040cb70  45 19 07 eb                                      bl #0x5d308c
0040cb74  ff 2f 0f e3                                      movw r2, #0xffff
0040cb78  02 00 50 e1                                      cmp r0, r2
0040cb7c  00 10 a0 e1                                      mov r1, r0
0040cb80  08 00 9d e5                                      ldr r0, [sp, #8]
0040cb84  32 30 84 e2                                      add r3, r4, #0x32
0040cb88  0a 20 a0 e1                                      mov r2, sl
0040cb8c  03 31 80 e0                                      add r3, r0, r3, lsl #2
0040cb90  c2 ff ff 0a                                      beq #0x40caa0
0040cb94  00 00 9b e5                                      ldr r0, [fp]
0040cb98  01 40 84 e2                                      add r4, r4, #1
0040cb9c  6e 07 07 eb                                      bl #0x5ce95c
0040cba0  04 00 54 e3                                      cmp r4, #4
0040cba4  01 80 88 e2                                      add r8, r8, #1
0040cba8  bf ff ff 1a                                      bne #0x40caac
0040cbac  1c d0 8d e2                                      add sp, sp, #0x1c
0040cbb0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0040cbb4  04 30 95 e5                                      ldr r3, [r5, #4]
0040cbb8  00 c0 95 e5                                      ldr ip, [r5]
0040cbbc  9b ff ff ea                                      b #0x40ca30

; FUNCTION 0x0040cbc0, declared_size=272, range_size=272, mode=arm
; class-group: LightSetManager
; alias: _ZN15LightSetManager14ResetLightSetsEv
; demangled: LightSetManager::ResetLightSets()
; decoder-mode: arm
0040cbc0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0040cbc4  fc a0 9f e5                                      ldr sl, [pc, #0xfc]
0040cbc8  fc 90 9f e5                                      ldr sb, [pc, #0xfc]
0040cbcc  00 80 a0 e3                                      mov r8, #0
0040cbd0  00 b0 a0 e1                                      mov fp, r0
0040cbd4  00 70 a0 e1                                      mov r7, r0
0040cbd8  00 50 a0 e1                                      mov r5, r0
0040cbdc  08 60 a0 e1                                      mov r6, r8
0040cbe0  0a a0 8f e0                                      add sl, pc, sl
0040cbe4  00 40 a0 e3                                      mov r4, #0
0040cbe8  04 20 85 e0                                      add r2, r5, r4
0040cbec  78 30 92 e5                                      ldr r3, [r2, #0x78]
0040cbf0  14 40 84 e2                                      add r4, r4, #0x14
0040cbf4  78 60 82 e5                                      str r6, [r2, #0x78]
0040cbf8  00 00 53 e3                                      cmp r3, #0
0040cbfc  03 00 a0 e1                                      mov r0, r3
0040cc00  0d 00 00 0a                                      beq #0x40cc3c
0040cc04  00 20 93 e5                                      ldr r2, [r3]
0040cc08  01 20 42 e2                                      sub r2, r2, #1
0040cc0c  00 00 52 e3                                      cmp r2, #0
0040cc10  00 20 83 e5                                      str r2, [r3]
0040cc14  08 00 00 1a                                      bne #0x40cc3c
0040cc18  54 20 d3 e5                                      ldrb r2, [r3, #0x54]
0040cc1c  00 00 52 e3                                      cmp r2, #0
0040cc20  09 20 9a 07                                      ldreq r2, [sl, sb]
0040cc24  50 10 93 05                                      ldreq r1, [r3, #0x50]
0040cc28  00 c0 92 05                                      ldreq ip, [r2]
0040cc2c  00 c0 81 05                                      streq ip, [r1]
0040cc30  00 10 82 05                                      streq r1, [r2]
0040cc34  50 60 83 e5                                      str r6, [r3, #0x50]
0040cc38  00 0e fc eb                                      bl #0x310440
0040cc3c  50 00 54 e3                                      cmp r4, #0x50
0040cc40  e8 ff ff 1a                                      bne #0x40cbe8
0040cc44  01 80 88 e2                                      add r8, r8, #1
0040cc48  05 00 58 e3                                      cmp r8, #5
0040cc4c  04 50 85 e2                                      add r5, r5, #4
0040cc50  e3 ff ff 1a                                      bne #0x40cbe4
0040cc54  70 60 9f e5                                      ldr r6, [pc, #0x70]
0040cc58  00 40 a0 e3                                      mov r4, #0
0040cc5c  04 50 a0 e1                                      mov r5, r4
0040cc60  c8 30 97 e5                                      ldr r3, [r7, #0xc8]
0040cc64  01 40 84 e2                                      add r4, r4, #1
0040cc68  c8 50 87 e5                                      str r5, [r7, #0xc8]
0040cc6c  00 00 53 e3                                      cmp r3, #0
0040cc70  03 00 a0 e1                                      mov r0, r3
0040cc74  0d 00 00 0a                                      beq #0x40ccb0
0040cc78  00 20 93 e5                                      ldr r2, [r3]
0040cc7c  01 20 42 e2                                      sub r2, r2, #1
0040cc80  00 00 52 e3                                      cmp r2, #0
0040cc84  00 20 83 e5                                      str r2, [r3]
0040cc88  08 00 00 1a                                      bne #0x40ccb0
0040cc8c  54 20 d3 e5                                      ldrb r2, [r3, #0x54]
0040cc90  00 00 52 e3                                      cmp r2, #0
0040cc94  06 20 9a 07                                      ldreq r2, [sl, r6]
0040cc98  50 10 93 05                                      ldreq r1, [r3, #0x50]
0040cc9c  00 c0 92 05                                      ldreq ip, [r2]
0040cca0  00 c0 81 05                                      streq ip, [r1]
0040cca4  00 10 82 05                                      streq r1, [r2]
0040cca8  50 50 83 e5                                      str r5, [r3, #0x50]
0040ccac  e3 0d fc eb                                      bl #0x310440
0040ccb0  05 00 54 e3                                      cmp r4, #5
0040ccb4  04 70 87 e2                                      add r7, r7, #4
0040ccb8  e8 ff ff 1a                                      bne #0x40cc60
0040ccbc  00 30 a0 e3                                      mov r3, #0
0040ccc0  a0 31 8b e5                                      str r3, [fp, #0x1a0]
0040ccc4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0040ccc8  b0 7e 58 00 c0 3c 00 00                          .byte 0xb0, 0x7e, 0x58, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x0040ccd0, declared_size=400, range_size=400, mode=arm
; class-group: LightSetManager
; alias: _ZN15LightSetManagerD1Ev
; demangled: LightSetManager::~LightSetManager()
; decoder-mode: arm
0040ccd0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0040ccd4  00 50 a0 e1                                      mov r5, r0
0040ccd8  90 01 90 e5                                      ldr r0, [r0, #0x190]
0040ccdc  74 71 9f e5                                      ldr r7, [pc, #0x174]
0040cce0  00 00 50 e3                                      cmp r0, #0
0040cce4  07 70 8f e0                                      add r7, pc, r7
0040cce8  00 00 00 0a                                      beq #0x40ccf0
0040ccec  d7 0d fc eb                                      bl #0x310450
0040ccf0  47 4f 95 e2                                      adds r4, r5, #0x11c
0040ccf4  06 00 00 0a                                      beq #0x40cd14
0040ccf8  5b 6f 85 e2                                      add r6, r5, #0x16c
0040ccfc  14 30 36 e5                                      ldr r3, [r6, #-0x14]!
0040cd00  06 00 a0 e1                                      mov r0, r6
0040cd04  0f e0 a0 e1                                      mov lr, pc
0040cd08  00 f0 93 e5                                      ldr pc, [r3]
0040cd0c  04 00 56 e1                                      cmp r6, r4
0040cd10  f9 ff ff 1a                                      bne #0x40ccfc
0040cd14  dc 60 95 e2                                      adds r6, r5, #0xdc
0040cd18  05 00 00 0a                                      beq #0x40cd34
0040cd1c  08 30 34 e5                                      ldr r3, [r4, #-8]!
0040cd20  04 00 a0 e1                                      mov r0, r4
0040cd24  0f e0 a0 e1                                      mov lr, pc
0040cd28  00 f0 93 e5                                      ldr pc, [r3]
0040cd2c  06 00 54 e1                                      cmp r4, r6
0040cd30  f9 ff ff 1a                                      bne #0x40cd1c
0040cd34  c8 40 95 e2                                      adds r4, r5, #0xc8
0040cd38  16 00 00 0a                                      beq #0x40cd98
0040cd3c  18 a1 9f e5                                      ldr sl, [pc, #0x118]
0040cd40  00 80 a0 e3                                      mov r8, #0
0040cd44  04 30 16 e5                                      ldr r3, [r6, #-4]
0040cd48  00 00 53 e3                                      cmp r3, #0
0040cd4c  0e 00 00 0a                                      beq #0x40cd8c
0040cd50  00 20 93 e5                                      ldr r2, [r3]
0040cd54  03 00 a0 e1                                      mov r0, r3
0040cd58  01 20 42 e2                                      sub r2, r2, #1
0040cd5c  00 00 52 e3                                      cmp r2, #0
0040cd60  00 20 83 e5                                      str r2, [r3]
0040cd64  08 00 00 1a                                      bne #0x40cd8c
0040cd68  54 20 d3 e5                                      ldrb r2, [r3, #0x54]
0040cd6c  00 00 52 e3                                      cmp r2, #0
0040cd70  0a 20 97 07                                      ldreq r2, [r7, sl]
0040cd74  50 10 93 05                                      ldreq r1, [r3, #0x50]
0040cd78  00 c0 92 05                                      ldreq ip, [r2]
0040cd7c  00 c0 81 05                                      streq ip, [r1]
0040cd80  00 10 82 05                                      streq r1, [r2]
0040cd84  50 80 83 e5                                      str r8, [r3, #0x50]
0040cd88  ac 0d fc eb                                      bl #0x310440
0040cd8c  04 60 46 e2                                      sub r6, r6, #4
0040cd90  04 00 56 e1                                      cmp r6, r4
0040cd94  ea ff ff 1a                                      bne #0x40cd44
0040cd98  78 60 95 e2                                      adds r6, r5, #0x78
0040cd9c  16 00 00 0a                                      beq #0x40cdfc
0040cda0  b4 a0 9f e5                                      ldr sl, [pc, #0xb4]
0040cda4  00 80 a0 e3                                      mov r8, #0
0040cda8  04 30 14 e5                                      ldr r3, [r4, #-4]
0040cdac  00 00 53 e3                                      cmp r3, #0
0040cdb0  0e 00 00 0a                                      beq #0x40cdf0
0040cdb4  00 20 93 e5                                      ldr r2, [r3]
0040cdb8  03 00 a0 e1                                      mov r0, r3
0040cdbc  01 20 42 e2                                      sub r2, r2, #1
0040cdc0  00 00 52 e3                                      cmp r2, #0
0040cdc4  00 20 83 e5                                      str r2, [r3]
0040cdc8  08 00 00 1a                                      bne #0x40cdf0
0040cdcc  54 20 d3 e5                                      ldrb r2, [r3, #0x54]
0040cdd0  00 00 52 e3                                      cmp r2, #0
0040cdd4  0a 20 97 07                                      ldreq r2, [r7, sl]
0040cdd8  50 10 93 05                                      ldreq r1, [r3, #0x50]
0040cddc  00 c0 92 05                                      ldreq ip, [r2]
0040cde0  00 c0 81 05                                      streq ip, [r1]
0040cde4  00 10 82 05                                      streq r1, [r2]
0040cde8  50 80 83 e5                                      str r8, [r3, #0x50]
0040cdec  93 0d fc eb                                      bl #0x310440
0040cdf0  04 40 44 e2                                      sub r4, r4, #4
0040cdf4  06 00 54 e1                                      cmp r4, r6
0040cdf8  ea ff ff 1a                                      bne #0x40cda8
0040cdfc  04 60 95 e2                                      adds r6, r5, #4
0040ce00  64 40 85 12                                      addne r4, r5, #0x64
0040ce04  03 00 00 1a                                      bne #0x40ce18
0040ce08  10 00 00 ea                                      b #0x40ce50
0040ce0c  3b f0 0b eb                                      bl #0x708f00
0040ce10  06 00 54 e1                                      cmp r4, r6
0040ce14  0d 00 00 0a                                      beq #0x40ce50
0040ce18  18 40 44 e2                                      sub r4, r4, #0x18
0040ce1c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0040ce20  04 00 53 e1                                      cmp r3, r4
0040ce24  f9 ff ff 0a                                      beq #0x40ce10
0040ce28  00 00 53 e3                                      cmp r3, #0
0040ce2c  f7 ff ff 0a                                      beq #0x40ce10
0040ce30  00 10 94 e5                                      ldr r1, [r4]
0040ce34  03 00 a0 e1                                      mov r0, r3
0040ce38  01 10 63 e0                                      rsb r1, r3, r1
0040ce3c  80 00 51 e3                                      cmp r1, #0x80
0040ce40  f1 ff ff 9a                                      bls #0x40ce0c
0040ce44  7d 0d fc eb                                      bl #0x310440
0040ce48  06 00 54 e1                                      cmp r4, r6
0040ce4c  f1 ff ff 1a                                      bne #0x40ce18
0040ce50  05 00 a0 e1                                      mov r0, r5
0040ce54  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0040ce58  ac 7d 58 00 c0 3c 00 00                          .byte 0xac, 0x7d, 0x58, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x0040ce60, declared_size=400, range_size=400, mode=arm
; class-group: LightSetManager
; alias: _ZN15LightSetManagerD2Ev
; demangled: LightSetManager::~LightSetManager()
; decoder-mode: arm
0040ce60  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0040ce64  00 50 a0 e1                                      mov r5, r0
0040ce68  90 01 90 e5                                      ldr r0, [r0, #0x190]
0040ce6c  74 71 9f e5                                      ldr r7, [pc, #0x174]
0040ce70  00 00 50 e3                                      cmp r0, #0
0040ce74  07 70 8f e0                                      add r7, pc, r7
0040ce78  00 00 00 0a                                      beq #0x40ce80
0040ce7c  73 0d fc eb                                      bl #0x310450
0040ce80  47 4f 95 e2                                      adds r4, r5, #0x11c
0040ce84  06 00 00 0a                                      beq #0x40cea4
0040ce88  5b 6f 85 e2                                      add r6, r5, #0x16c
0040ce8c  14 30 36 e5                                      ldr r3, [r6, #-0x14]!
0040ce90  06 00 a0 e1                                      mov r0, r6
0040ce94  0f e0 a0 e1                                      mov lr, pc
0040ce98  00 f0 93 e5                                      ldr pc, [r3]
0040ce9c  04 00 56 e1                                      cmp r6, r4
0040cea0  f9 ff ff 1a                                      bne #0x40ce8c
0040cea4  dc 60 95 e2                                      adds r6, r5, #0xdc
0040cea8  05 00 00 0a                                      beq #0x40cec4
0040ceac  08 30 34 e5                                      ldr r3, [r4, #-8]!
0040ceb0  04 00 a0 e1                                      mov r0, r4
0040ceb4  0f e0 a0 e1                                      mov lr, pc
0040ceb8  00 f0 93 e5                                      ldr pc, [r3]
0040cebc  06 00 54 e1                                      cmp r4, r6
0040cec0  f9 ff ff 1a                                      bne #0x40ceac
0040cec4  c8 40 95 e2                                      adds r4, r5, #0xc8
0040cec8  16 00 00 0a                                      beq #0x40cf28
0040cecc  18 a1 9f e5                                      ldr sl, [pc, #0x118]
0040ced0  00 80 a0 e3                                      mov r8, #0
0040ced4  04 30 16 e5                                      ldr r3, [r6, #-4]
0040ced8  00 00 53 e3                                      cmp r3, #0
0040cedc  0e 00 00 0a                                      beq #0x40cf1c
0040cee0  00 20 93 e5                                      ldr r2, [r3]
0040cee4  03 00 a0 e1                                      mov r0, r3
0040cee8  01 20 42 e2                                      sub r2, r2, #1
0040ceec  00 00 52 e3                                      cmp r2, #0
0040cef0  00 20 83 e5                                      str r2, [r3]
0040cef4  08 00 00 1a                                      bne #0x40cf1c
0040cef8  54 20 d3 e5                                      ldrb r2, [r3, #0x54]
0040cefc  00 00 52 e3                                      cmp r2, #0
0040cf00  0a 20 97 07                                      ldreq r2, [r7, sl]
0040cf04  50 10 93 05                                      ldreq r1, [r3, #0x50]
0040cf08  00 c0 92 05                                      ldreq ip, [r2]
0040cf0c  00 c0 81 05                                      streq ip, [r1]
0040cf10  00 10 82 05                                      streq r1, [r2]
0040cf14  50 80 83 e5                                      str r8, [r3, #0x50]
0040cf18  48 0d fc eb                                      bl #0x310440
0040cf1c  04 60 46 e2                                      sub r6, r6, #4
0040cf20  04 00 56 e1                                      cmp r6, r4
0040cf24  ea ff ff 1a                                      bne #0x40ced4
0040cf28  78 60 95 e2                                      adds r6, r5, #0x78
0040cf2c  16 00 00 0a                                      beq #0x40cf8c
0040cf30  b4 a0 9f e5                                      ldr sl, [pc, #0xb4]
0040cf34  00 80 a0 e3                                      mov r8, #0
0040cf38  04 30 14 e5                                      ldr r3, [r4, #-4]
0040cf3c  00 00 53 e3                                      cmp r3, #0
0040cf40  0e 00 00 0a                                      beq #0x40cf80
0040cf44  00 20 93 e5                                      ldr r2, [r3]
0040cf48  03 00 a0 e1                                      mov r0, r3
0040cf4c  01 20 42 e2                                      sub r2, r2, #1
0040cf50  00 00 52 e3                                      cmp r2, #0
0040cf54  00 20 83 e5                                      str r2, [r3]
0040cf58  08 00 00 1a                                      bne #0x40cf80
0040cf5c  54 20 d3 e5                                      ldrb r2, [r3, #0x54]
0040cf60  00 00 52 e3                                      cmp r2, #0
0040cf64  0a 20 97 07                                      ldreq r2, [r7, sl]
0040cf68  50 10 93 05                                      ldreq r1, [r3, #0x50]
0040cf6c  00 c0 92 05                                      ldreq ip, [r2]
0040cf70  00 c0 81 05                                      streq ip, [r1]
0040cf74  00 10 82 05                                      streq r1, [r2]
0040cf78  50 80 83 e5                                      str r8, [r3, #0x50]
0040cf7c  2f 0d fc eb                                      bl #0x310440
0040cf80  04 40 44 e2                                      sub r4, r4, #4
0040cf84  06 00 54 e1                                      cmp r4, r6
0040cf88  ea ff ff 1a                                      bne #0x40cf38
0040cf8c  04 60 95 e2                                      adds r6, r5, #4
0040cf90  64 40 85 12                                      addne r4, r5, #0x64
0040cf94  03 00 00 1a                                      bne #0x40cfa8
0040cf98  10 00 00 ea                                      b #0x40cfe0
0040cf9c  d7 ef 0b eb                                      bl #0x708f00
0040cfa0  06 00 54 e1                                      cmp r4, r6
0040cfa4  0d 00 00 0a                                      beq #0x40cfe0
0040cfa8  18 40 44 e2                                      sub r4, r4, #0x18
0040cfac  14 30 94 e5                                      ldr r3, [r4, #0x14]
0040cfb0  04 00 53 e1                                      cmp r3, r4
0040cfb4  f9 ff ff 0a                                      beq #0x40cfa0
0040cfb8  00 00 53 e3                                      cmp r3, #0
0040cfbc  f7 ff ff 0a                                      beq #0x40cfa0
0040cfc0  00 10 94 e5                                      ldr r1, [r4]
0040cfc4  03 00 a0 e1                                      mov r0, r3
0040cfc8  01 10 63 e0                                      rsb r1, r3, r1
0040cfcc  80 00 51 e3                                      cmp r1, #0x80
0040cfd0  f1 ff ff 9a                                      bls #0x40cf9c
0040cfd4  19 0d fc eb                                      bl #0x310440
0040cfd8  06 00 54 e1                                      cmp r4, r6
0040cfdc  f1 ff ff 1a                                      bne #0x40cfa8
0040cfe0  05 00 a0 e1                                      mov r0, r5
0040cfe4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0040cfe8  1c 7c 58 00 c0 3c 00 00                          .byte 0x1c, 0x7c, 0x58, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x0040cff0, declared_size=888, range_size=888, mode=arm
; class-group: LightSetManager
; alias: _ZN15LightSetManager15InitLightFilterERSt6vectorIbSaIbEEb
; demangled: LightSetManager::InitLightFilter(std::vector<bool, std::allocator<bool> >&, bool)
; decoder-mode: arm
0040cff0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0040cff4  48 10 91 e9                                      ldmib r1, {r3, r6, ip}
0040cff8  00 70 91 e5                                      ldr r7, [r1]
0040cffc  02 50 a0 e1                                      mov r5, r2
0040d000  0c 20 63 e0                                      rsb r2, r3, ip
0040d004  06 90 67 e0                                      rsb sb, r7, r6
0040d008  89 21 82 e0                                      add r2, r2, sb, lsl #3
0040d00c  05 00 52 e3                                      cmp r2, #5
0040d010  b0 d0 4d e2                                      sub sp, sp, #0xb0
0040d014  01 40 a0 e1                                      mov r4, r1
0040d018  66 00 00 8a                                      bhi #0x40d1b8
0040d01c  05 80 72 e2                                      rsbs r8, r2, #5
0040d020  78 c0 8d e5                                      str ip, [sp, #0x78]
0040d024  74 60 8d e5                                      str r6, [sp, #0x74]
0040d028  45 00 00 0a                                      beq #0x40d144
0040d02c  10 10 91 e5                                      ldr r1, [r1, #0x10]
0040d030  01 70 67 e0                                      rsb r7, r7, r1
0040d034  87 31 63 e0                                      rsb r3, r3, r7, lsl #3
0040d038  03 30 62 e0                                      rsb r3, r2, r3
0040d03c  03 00 58 e1                                      cmp r8, r3
0040d040  78 00 00 8a                                      bhi #0x40d228
0040d044  54 70 8d e2                                      add r7, sp, #0x54
0040d048  07 00 a0 e1                                      mov r0, r7
0040d04c  08 10 84 e2                                      add r1, r4, #8
0040d050  08 20 a0 e1                                      mov r2, r8
0040d054  5c 60 8d e5                                      str r6, [sp, #0x5c]
0040d058  60 c0 8d e5                                      str ip, [sp, #0x60]
0040d05c  64 60 8d e5                                      str r6, [sp, #0x64]
0040d060  68 c0 8d e5                                      str ip, [sp, #0x68]
0040d064  3f fe ff eb                                      bl #0x40c968
0040d068  ac c0 8d e2                                      add ip, sp, #0xac
0040d06c  07 30 a0 e1                                      mov r3, r7
0040d070  08 00 8d e2                                      add r0, sp, #8
0040d074  64 10 8d e2                                      add r1, sp, #0x64
0040d078  5c 20 8d e2                                      add r2, sp, #0x5c
0040d07c  00 c0 8d e5                                      str ip, [sp]
0040d080  00 c0 a0 e3                                      mov ip, #0
0040d084  04 c0 8d e5                                      str ip, [sp, #4]
0040d088  3c fc ff eb                                      bl #0x40c180
0040d08c  08 20 a0 e1                                      mov r2, r8
0040d090  4c 00 8d e2                                      add r0, sp, #0x4c
0040d094  74 10 8d e2                                      add r1, sp, #0x74
0040d098  78 60 9d e5                                      ldr r6, [sp, #0x78]
0040d09c  74 70 9d e5                                      ldr r7, [sp, #0x74]
0040d0a0  30 fe ff eb                                      bl #0x40c968
0040d0a4  50 20 9d e5                                      ldr r2, [sp, #0x50]
0040d0a8  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0040d0ac  02 20 66 e0                                      rsb r2, r6, r2
0040d0b0  03 30 67 e0                                      rsb r3, r7, r3
0040d0b4  83 31 82 e0                                      add r3, r2, r3, lsl #3
0040d0b8  00 00 53 e3                                      cmp r3, #0
0040d0bc  09 00 00 da                                      ble #0x40d0e8
0040d0c0  01 10 a0 e3                                      mov r1, #1
0040d0c4  00 20 97 e5                                      ldr r2, [r7]
0040d0c8  1f 00 56 e3                                      cmp r6, #0x1f
0040d0cc  11 26 c2 e1                                      bic r2, r2, r1, lsl r6
0040d0d0  01 60 86 12                                      addne r6, r6, #1
0040d0d4  00 20 87 e5                                      str r2, [r7]
0040d0d8  00 60 a0 03                                      moveq r6, #0
0040d0dc  04 70 87 02                                      addeq r7, r7, #4
0040d0e0  01 30 53 e2                                      subs r3, r3, #1
0040d0e4  f6 ff ff 1a                                      bne #0x40d0c4
0040d0e8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0040d0ec  08 10 94 e5                                      ldr r1, [r4, #8]
0040d0f0  03 80 88 e0                                      add r8, r8, r3
0040d0f4  c8 3f a0 e1                                      asr r3, r8, #0x1f
0040d0f8  00 00 58 e3                                      cmp r8, #0
0040d0fc  a3 3d a0 e1                                      lsr r3, r3, #0x1b
0040d100  1f 20 88 e2                                      add r2, r8, #0x1f
0040d104  08 20 a0 a1                                      movge r2, r8
0040d108  03 80 88 e0                                      add r8, r8, r3
0040d10c  c2 22 a0 e1                                      asr r2, r2, #5
0040d110  1f 80 08 e2                                      and r8, r8, #0x1f
0040d114  03 80 58 e0                                      subs r8, r8, r3
0040d118  02 21 81 e0                                      add r2, r1, r2, lsl #2
0040d11c  04 30 94 45                                      ldrmi r3, [r4, #4]
0040d120  00 70 94 45                                      ldrmi r7, [r4]
0040d124  04 30 94 55                                      ldrpl r3, [r4, #4]
0040d128  00 70 94 55                                      ldrpl r7, [r4]
0040d12c  08 20 84 e5                                      str r2, [r4, #8]
0040d130  20 80 88 42                                      addmi r8, r8, #0x20
0040d134  04 20 42 42                                      submi r2, r2, #4
0040d138  0c 80 84 45                                      strmi r8, [r4, #0xc]
0040d13c  08 20 84 45                                      strmi r2, [r4, #8]
0040d140  0c 80 84 55                                      strpl r8, [r4, #0xc]
0040d144  00 20 a0 e3                                      mov r2, #0
0040d148  01 c0 a0 e3                                      mov ip, #1
0040d14c  03 30 82 e0                                      add r3, r2, r3
0040d150  c3 1f a0 e1                                      asr r1, r3, #0x1f
0040d154  00 00 53 e3                                      cmp r3, #0
0040d158  a1 1d a0 e1                                      lsr r1, r1, #0x1b
0040d15c  1f 00 83 e2                                      add r0, r3, #0x1f
0040d160  03 00 a0 a1                                      movge r0, r3
0040d164  01 30 83 e0                                      add r3, r3, r1
0040d168  1f 30 03 e2                                      and r3, r3, #0x1f
0040d16c  01 30 53 e0                                      subs r3, r3, r1
0040d170  20 30 83 42                                      addmi r3, r3, #0x20
0040d174  1c 33 a0 e1                                      lsl r3, ip, r3
0040d178  c0 02 a0 e1                                      asr r0, r0, #5
0040d17c  01 20 82 e2                                      add r2, r2, #1
0040d180  00 71 87 e0                                      add r7, r7, r0, lsl #2
0040d184  04 70 47 42                                      submi r7, r7, #4
0040d188  00 10 97 e5                                      ldr r1, [r7]
0040d18c  00 00 55 e3                                      cmp r5, #0
0040d190  03 30 81 11                                      orrne r3, r1, r3
0040d194  03 30 c1 01                                      biceq r3, r1, r3
0040d198  05 00 52 e3                                      cmp r2, #5
0040d19c  00 30 87 e5                                      str r3, [r7]
0040d1a0  02 00 00 0a                                      beq #0x40d1b0
0040d1a4  04 30 94 e5                                      ldr r3, [r4, #4]
0040d1a8  00 70 94 e5                                      ldr r7, [r4]
0040d1ac  e6 ff ff ea                                      b #0x40d14c
0040d1b0  b0 d0 8d e2                                      add sp, sp, #0xb0
0040d1b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0040d1b8  a4 00 8d e2                                      add r0, sp, #0xa4
0040d1bc  9c 10 8d e2                                      add r1, sp, #0x9c
0040d1c0  05 20 a0 e3                                      mov r2, #5
0040d1c4  9c 70 8d e5                                      str r7, [sp, #0x9c]
0040d1c8  a0 30 8d e5                                      str r3, [sp, #0xa0]
0040d1cc  e5 fd ff eb                                      bl #0x40c968
0040d1d0  a4 60 9d e5                                      ldr r6, [sp, #0xa4]
0040d1d4  08 c0 94 e5                                      ldr ip, [r4, #8]
0040d1d8  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0040d1dc  94 60 8d e5                                      str r6, [sp, #0x94]
0040d1e0  a8 60 9d e5                                      ldr r6, [sp, #0xa8]
0040d1e4  84 10 8d e2                                      add r1, sp, #0x84
0040d1e8  8c 20 8d e2                                      add r2, sp, #0x8c
0040d1ec  94 30 8d e2                                      add r3, sp, #0x94
0040d1f0  7c 00 8d e2                                      add r0, sp, #0x7c
0040d1f4  8c c0 8d e5                                      str ip, [sp, #0x8c]
0040d1f8  90 e0 8d e5                                      str lr, [sp, #0x90]
0040d1fc  98 60 8d e5                                      str r6, [sp, #0x98]
0040d200  88 e0 8d e5                                      str lr, [sp, #0x88]
0040d204  84 c0 8d e5                                      str ip, [sp, #0x84]
0040d208  3b fc ff eb                                      bl #0x40c2fc
0040d20c  80 20 9d e5                                      ldr r2, [sp, #0x80]
0040d210  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
0040d214  04 30 94 e5                                      ldr r3, [r4, #4]
0040d218  0c 20 84 e5                                      str r2, [r4, #0xc]
0040d21c  08 10 84 e5                                      str r1, [r4, #8]
0040d220  00 70 94 e5                                      ldr r7, [r4]
0040d224  c6 ff ff ea                                      b #0x40d144
0040d228  1f 90 82 e2                                      add sb, r2, #0x1f
0040d22c  02 00 58 e1                                      cmp r8, r2
0040d230  08 20 89 20                                      addhs r2, sb, r8
0040d234  02 20 89 30                                      addlo r2, sb, r2
0040d238  a2 92 a0 e1                                      lsr sb, r2, #5
0040d23c  09 10 a0 e1                                      mov r1, sb
0040d240  00 20 a0 e3                                      mov r2, #0
0040d244  10 00 84 e2                                      add r0, r4, #0x10
0040d248  bb 9c fe eb                                      bl #0x3b453c
0040d24c  04 c0 94 e5                                      ldr ip, [r4, #4]
0040d250  00 e0 94 e5                                      ldr lr, [r4]
0040d254  6c 60 8d e2                                      add r6, sp, #0x6c
0040d258  48 c0 8d e5                                      str ip, [sp, #0x48]
0040d25c  74 c0 9d e5                                      ldr ip, [sp, #0x74]
0040d260  00 70 a0 e1                                      mov r7, r0
0040d264  44 10 8d e2                                      add r1, sp, #0x44
0040d268  3c c0 8d e5                                      str ip, [sp, #0x3c]
0040d26c  78 c0 9d e5                                      ldr ip, [sp, #0x78]
0040d270  3c 20 8d e2                                      add r2, sp, #0x3c
0040d274  34 30 8d e2                                      add r3, sp, #0x34
0040d278  40 c0 8d e5                                      str ip, [sp, #0x40]
0040d27c  06 00 a0 e1                                      mov r0, r6
0040d280  00 c0 a0 e3                                      mov ip, #0
0040d284  38 c0 8d e5                                      str ip, [sp, #0x38]
0040d288  44 e0 8d e5                                      str lr, [sp, #0x44]
0040d28c  34 70 8d e5                                      str r7, [sp, #0x34]
0040d290  19 fc ff eb                                      bl #0x40c2fc
0040d294  70 30 9d e5                                      ldr r3, [sp, #0x70]
0040d298  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
0040d29c  08 20 a0 e1                                      mov r2, r8
0040d2a0  01 c0 a0 e3                                      mov ip, #1
0040d2a4  00 00 91 e5                                      ldr r0, [r1]
0040d2a8  1f 00 53 e3                                      cmp r3, #0x1f
0040d2ac  01 20 42 e2                                      sub r2, r2, #1
0040d2b0  1c 03 c0 e1                                      bic r0, r0, ip, lsl r3
0040d2b4  01 30 83 12                                      addne r3, r3, #1
0040d2b8  00 00 81 e5                                      str r0, [r1]
0040d2bc  00 30 a0 03                                      moveq r3, #0
0040d2c0  04 10 81 02                                      addeq r1, r1, #4
0040d2c4  00 00 52 e3                                      cmp r2, #0
0040d2c8  f5 ff ff 1a                                      bne #0x40d2a4
0040d2cc  74 e0 9d e5                                      ldr lr, [sp, #0x74]
0040d2d0  08 30 94 e5                                      ldr r3, [r4, #8]
0040d2d4  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0040d2d8  24 e0 8d e5                                      str lr, [sp, #0x24]
0040d2dc  78 e0 9d e5                                      ldr lr, [sp, #0x78]
0040d2e0  14 a0 8d e2                                      add sl, sp, #0x14
0040d2e4  06 10 a0 e1                                      mov r1, r6
0040d2e8  08 20 a0 e1                                      mov r2, r8
0040d2ec  0a 00 a0 e1                                      mov r0, sl
0040d2f0  28 e0 8d e5                                      str lr, [sp, #0x28]
0040d2f4  1c 30 8d e5                                      str r3, [sp, #0x1c]
0040d2f8  20 c0 8d e5                                      str ip, [sp, #0x20]
0040d2fc  99 fd ff eb                                      bl #0x40c968
0040d300  0a 30 a0 e1                                      mov r3, sl
0040d304  2c 00 8d e2                                      add r0, sp, #0x2c
0040d308  1c 20 8d e2                                      add r2, sp, #0x1c
0040d30c  24 10 8d e2                                      add r1, sp, #0x24
0040d310  f9 fb ff eb                                      bl #0x40c2fc
0040d314  00 00 94 e5                                      ldr r0, [r4]
0040d318  30 30 9d e5                                      ldr r3, [sp, #0x30]
0040d31c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0040d320  00 00 50 e3                                      cmp r0, #0
0040d324  0c 30 84 e5                                      str r3, [r4, #0xc]
0040d328  08 20 84 e5                                      str r2, [r4, #8]
0040d32c  05 00 00 0a                                      beq #0x40d348
0040d330  10 10 94 e5                                      ldr r1, [r4, #0x10]
0040d334  01 10 60 e0                                      rsb r1, r0, r1
0040d338  03 10 c1 e3                                      bic r1, r1, #3
0040d33c  80 00 51 e3                                      cmp r1, #0x80
0040d340  06 00 00 8a                                      bhi #0x40d360
0040d344  ed ee 0b eb                                      bl #0x708f00
0040d348  09 91 87 e0                                      add sb, r7, sb, lsl #2
0040d34c  00 30 a0 e3                                      mov r3, #0
0040d350  10 90 84 e5                                      str sb, [r4, #0x10]
0040d354  04 30 84 e5                                      str r3, [r4, #4]
0040d358  00 70 84 e5                                      str r7, [r4]
0040d35c  78 ff ff ea                                      b #0x40d144
0040d360  36 0c fc eb                                      bl #0x310440
0040d364  f7 ff ff ea                                      b #0x40d348

; FUNCTION 0x0040d368, declared_size=440, range_size=440, mode=arm
; class-group: LightSetManager
; alias: _ZN15LightSetManager8SetLightEiiRKN5boost13intrusive_ptrIN6glitch5video6CLightEEE
; demangled: LightSetManager::SetLight(int, int, boost::intrusive_ptr<glitch::video::CLight> const&)
; decoder-mode: arm
0040d368  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0040d36c  84 41 9f e5                                      ldr r4, [pc, #0x184]
0040d370  03 00 51 e3                                      cmp r1, #3
0040d374  08 d0 4d e2                                      sub sp, sp, #8
0040d378  04 40 8f e0                                      add r4, pc, r4
0040d37c  01 50 a0 e1                                      mov r5, r1
0040d380  00 60 a0 e1                                      mov r6, r0
0040d384  02 70 a0 e1                                      mov r7, r2
0040d388  03 80 a0 e1                                      mov r8, r3
0040d38c  08 00 00 9a                                      bls #0x40d3b4
0040d390  64 31 9f e5                                      ldr r3, [pc, #0x164]
0040d394  03 30 94 e7                                      ldr r3, [r4, r3]
0040d398  00 30 93 e5                                      ldr r3, [r3]
0040d39c  02 00 53 e3                                      cmp r3, #2
0040d3a0  00 30 a0 03                                      moveq r3, #0
0040d3a4  00 30 83 05                                      streq r3, [r3]
0040d3a8  01 00 00 0a                                      beq #0x40d3b4
0040d3ac  01 00 53 e3                                      cmp r3, #1
0040d3b0  36 00 00 0a                                      beq #0x40d490
0040d3b4  04 00 57 e3                                      cmp r7, #4
0040d3b8  08 00 00 9a                                      bls #0x40d3e0
0040d3bc  38 31 9f e5                                      ldr r3, [pc, #0x138]
0040d3c0  03 30 94 e7                                      ldr r3, [r4, r3]
0040d3c4  00 30 93 e5                                      ldr r3, [r3]
0040d3c8  02 00 53 e3                                      cmp r3, #2
0040d3cc  00 30 a0 03                                      moveq r3, #0
0040d3d0  00 30 83 05                                      streq r3, [r3]
0040d3d4  01 00 00 0a                                      beq #0x40d3e0
0040d3d8  01 00 53 e3                                      cmp r3, #1
0040d3dc  38 00 00 0a                                      beq #0x40d4c4
0040d3e0  05 21 a0 e1                                      lsl r2, r5, #2
0040d3e4  05 10 82 e0                                      add r1, r2, r5
0040d3e8  07 30 81 e0                                      add r3, r1, r7
0040d3ec  1e 30 83 e2                                      add r3, r3, #0x1e
0040d3f0  03 31 96 e7                                      ldr r3, [r6, r3, lsl #2]
0040d3f4  00 00 98 e5                                      ldr r0, [r8]
0040d3f8  05 50 82 e0                                      add r5, r2, r5
0040d3fc  00 00 53 e1                                      cmp r3, r0
0040d400  01 10 86 10                                      addne r1, r6, r1
0040d404  07 10 81 10                                      addne r1, r1, r7
0040d408  01 30 a0 13                                      movne r3, #1
0040d40c  64 30 c1 15                                      strbne r3, [r1, #0x64]
0040d410  00 30 98 15                                      ldrne r3, [r8]
0040d414  07 70 85 e0                                      add r7, r5, r7
0040d418  1e 70 87 e2                                      add r7, r7, #0x1e
0040d41c  00 00 53 e3                                      cmp r3, #0
0040d420  00 10 93 15                                      ldrne r1, [r3]
0040d424  01 10 81 12                                      addne r1, r1, #1
0040d428  00 10 83 15                                      strne r1, [r3]
0040d42c  07 01 96 e7                                      ldr r0, [r6, r7, lsl #2]
0040d430  07 31 86 e7                                      str r3, [r6, r7, lsl #2]
0040d434  00 00 50 e3                                      cmp r0, #0
0040d438  12 00 00 0a                                      beq #0x40d488
0040d43c  00 30 90 e5                                      ldr r3, [r0]
0040d440  01 30 43 e2                                      sub r3, r3, #1
0040d444  00 00 53 e3                                      cmp r3, #0
0040d448  00 30 80 e5                                      str r3, [r0]
0040d44c  0d 00 00 1a                                      bne #0x40d488
0040d450  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
0040d454  00 00 53 e3                                      cmp r3, #0
0040d458  05 00 00 1a                                      bne #0x40d474
0040d45c  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
0040d460  50 20 90 e5                                      ldr r2, [r0, #0x50]
0040d464  03 30 94 e7                                      ldr r3, [r4, r3]
0040d468  00 10 93 e5                                      ldr r1, [r3]
0040d46c  00 10 82 e5                                      str r1, [r2]
0040d470  00 20 83 e5                                      str r2, [r3]
0040d474  00 30 a0 e3                                      mov r3, #0
0040d478  50 30 80 e5                                      str r3, [r0, #0x50]
0040d47c  08 d0 8d e2                                      add sp, sp, #8
0040d480  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0040d484  ed 0b fc ea                                      b #0x310440
0040d488  08 d0 8d e2                                      add sp, sp, #8
0040d48c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0040d490  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
0040d494  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
0040d498  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0040d49c  00 00 94 e7                                      ldr r0, [r4, r0]
0040d4a0  68 30 9f e5                                      ldr r3, [pc, #0x68]
0040d4a4  7b c0 a0 e3                                      mov ip, #0x7b
0040d4a8  01 10 8f e0                                      add r1, pc, r1
0040d4ac  02 20 8f e0                                      add r2, pc, r2
0040d4b0  03 30 8f e0                                      add r3, pc, r3
0040d4b4  a8 00 80 e2                                      add r0, r0, #0xa8
0040d4b8  00 c0 8d e5                                      str ip, [sp]
0040d4bc  d0 02 fc eb                                      bl #0x30e004
0040d4c0  bb ff ff ea                                      b #0x40d3b4
0040d4c4  38 00 9f e5                                      ldr r0, [pc, #0x38]
0040d4c8  44 10 9f e5                                      ldr r1, [pc, #0x44]
0040d4cc  44 20 9f e5                                      ldr r2, [pc, #0x44]
0040d4d0  00 00 94 e7                                      ldr r0, [r4, r0]
0040d4d4  40 30 9f e5                                      ldr r3, [pc, #0x40]
0040d4d8  7c c0 a0 e3                                      mov ip, #0x7c
0040d4dc  01 10 8f e0                                      add r1, pc, r1
0040d4e0  02 20 8f e0                                      add r2, pc, r2
0040d4e4  03 30 8f e0                                      add r3, pc, r3
0040d4e8  a8 00 80 e2                                      add r0, r0, #0xa8
0040d4ec  00 c0 8d e5                                      str ip, [sp]
0040d4f0  c3 02 fc eb                                      bl #0x30e004
0040d4f4  b9 ff ff ea                                      b #0x40d3e0
; mapping-symbol data/literal pool
0040d4f8  18 77 58 00 c0 39 00 00 c0 3c 00 00 c0 19 00 00  .byte 0x18, 0x77, 0x58, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0040d508  30 0f 4b 00 9c a7 4b 00 d0 a7 4b 00 fc 0e 4b 00  .byte 0x30, 0x0f, 0x4b, 0x00, 0x9c, 0xa7, 0x4b, 0x00, 0xd0, 0xa7, 0x4b, 0x00, 0xfc, 0x0e, 0x4b, 0x00
0040d518  e8 a7 4b 00 9c a7 4b 00                          .byte 0xe8, 0xa7, 0x4b, 0x00, 0x9c, 0xa7, 0x4b, 0x00

; FUNCTION 0x0040d520, declared_size=128, range_size=128, mode=arm
; class-group: LightSetManager
; alias: _ZN15LightSetManager16SetDummyLightOffEiRKN5boost13intrusive_ptrIN6glitch5video6CLightEEE
; demangled: LightSetManager::SetDummyLightOff(int, boost::intrusive_ptr<glitch::video::CLight> const&)
; decoder-mode: arm
0040d520  00 30 92 e5                                      ldr r3, [r2]
0040d524  32 10 81 e2                                      add r1, r1, #0x32
0040d528  68 20 9f e5                                      ldr r2, [pc, #0x68]
0040d52c  00 00 53 e3                                      cmp r3, #0
0040d530  00 c0 93 15                                      ldrne ip, [r3]
0040d534  02 20 8f e0                                      add r2, pc, r2
0040d538  01 c0 8c 12                                      addne ip, ip, #1
0040d53c  00 c0 83 15                                      strne ip, [r3]
0040d540  01 c1 90 e7                                      ldr ip, [r0, r1, lsl #2]
0040d544  01 31 80 e7                                      str r3, [r0, r1, lsl #2]
0040d548  00 00 5c e3                                      cmp ip, #0
0040d54c  1e ff 2f 01                                      bxeq lr
0040d550  00 30 9c e5                                      ldr r3, [ip]
0040d554  01 30 43 e2                                      sub r3, r3, #1
0040d558  00 00 53 e3                                      cmp r3, #0
0040d55c  00 30 8c e5                                      str r3, [ip]
0040d560  1e ff 2f 11                                      bxne lr
0040d564  54 30 dc e5                                      ldrb r3, [ip, #0x54]
0040d568  00 00 53 e3                                      cmp r3, #0
0040d56c  05 00 00 1a                                      bne #0x40d588
0040d570  24 30 9f e5                                      ldr r3, [pc, #0x24]
0040d574  50 10 9c e5                                      ldr r1, [ip, #0x50]
0040d578  03 30 92 e7                                      ldr r3, [r2, r3]
0040d57c  00 20 93 e5                                      ldr r2, [r3]
0040d580  00 20 81 e5                                      str r2, [r1]
0040d584  00 10 83 e5                                      str r1, [r3]
0040d588  00 30 a0 e3                                      mov r3, #0
0040d58c  0c 00 a0 e1                                      mov r0, ip
0040d590  50 30 8c e5                                      str r3, [ip, #0x50]
0040d594  a9 0b fc ea                                      b #0x310440
; mapping-symbol data/literal pool
0040d598  5c 75 58 00 c0 3c 00 00                          .byte 0x5c, 0x75, 0x58, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x0040d5a0, declared_size=564, range_size=564, mode=arm
; class-group: LightSetManager
; alias: _ZN15LightSetManager6UpdateEv
; demangled: LightSetManager::Update()
; decoder-mode: arm
0040d5a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0040d5a4  18 52 9f e5                                      ldr r5, [pc, #0x218]
0040d5a8  18 22 9f e5                                      ldr r2, [pc, #0x218]
0040d5ac  5c d0 4d e2                                      sub sp, sp, #0x5c
0040d5b0  05 50 8f e0                                      add r5, pc, r5
0040d5b4  02 30 95 e7                                      ldr r3, [r5, r2]
0040d5b8  08 20 8d e5                                      str r2, [sp, #8]
0040d5bc  88 21 90 e5                                      ldr r2, [r0, #0x188]
0040d5c0  00 30 93 e5                                      ldr r3, [r3]
0040d5c4  00 40 a0 e1                                      mov r4, r0
0040d5c8  00 00 52 e3                                      cmp r2, #0
0040d5cc  54 30 8d e5                                      str r3, [sp, #0x54]
0040d5d0  6f 00 00 da                                      ble #0x40d794
0040d5d4  8c 31 90 e5                                      ldr r3, [r0, #0x18c]
0040d5d8  00 00 53 e3                                      cmp r3, #0
0040d5dc  6c 00 00 da                                      ble #0x40d794
0040d5e0  e4 31 9f e5                                      ldr r3, [pc, #0x1e4]
0040d5e4  3c 60 8d e2                                      add r6, sp, #0x3c
0040d5e8  03 70 95 e7                                      ldr r7, [r5, r3]
0040d5ec  07 00 a0 e1                                      mov r0, r7
0040d5f0  a4 a8 fc eb                                      bl #0x337888
0040d5f4  06 00 a0 e1                                      mov r0, r6
0040d5f8  16 10 a0 e3                                      mov r1, #0x16
0040d5fc  4c 60 8d e5                                      str r6, [sp, #0x4c]
0040d600  50 60 8d e5                                      str r6, [sp, #0x50]
0040d604  1c 10 fc eb                                      bl #0x31167c
0040d608  c0 11 9f e5                                      ldr r1, [pc, #0x1c0]
0040d60c  15 20 a0 e3                                      mov r2, #0x15
0040d610  50 00 9d e5                                      ldr r0, [sp, #0x50]
0040d614  01 10 8f e0                                      add r1, pc, r1
0040d618  92 04 fc eb                                      bl #0x30e868
0040d61c  15 30 80 e2                                      add r3, r0, #0x15
0040d620  4c 30 8d e5                                      str r3, [sp, #0x4c]
0040d624  00 30 a0 e3                                      mov r3, #0
0040d628  15 30 c0 e5                                      strb r3, [r0, #0x15]
0040d62c  06 10 a0 e1                                      mov r1, r6
0040d630  07 00 a0 e1                                      mov r0, r7
0040d634  13 a9 fc eb                                      bl #0x337a88
0040d638  50 30 9d e5                                      ldr r3, [sp, #0x50]
0040d63c  01 00 20 e2                                      eor r0, r0, #1
0040d640  70 70 ef e6                                      uxtb r7, r0
0040d644  06 00 53 e1                                      cmp r3, r6
0040d648  07 00 00 0a                                      beq #0x40d66c
0040d64c  00 00 53 e3                                      cmp r3, #0
0040d650  05 00 00 0a                                      beq #0x40d66c
0040d654  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0040d658  01 10 63 e0                                      rsb r1, r3, r1
0040d65c  80 00 51 e3                                      cmp r1, #0x80
0040d660  53 00 00 8a                                      bhi #0x40d7b4
0040d664  03 00 a0 e1                                      mov r0, r3
0040d668  24 ee 0b eb                                      bl #0x708f00
0040d66c  00 00 57 e3                                      cmp r7, #0
0040d670  47 00 00 0a                                      beq #0x40d794
0040d674  8c 31 94 e5                                      ldr r3, [r4, #0x18c]
0040d678  00 00 53 e3                                      cmp r3, #0
0040d67c  44 00 00 da                                      ble #0x40d794
0040d680  30 70 8d e2                                      add r7, sp, #0x30
0040d684  24 30 8d e2                                      add r3, sp, #0x24
0040d688  18 20 8d e2                                      add r2, sp, #0x18
0040d68c  04 60 a0 e1                                      mov r6, r4
0040d690  00 a0 a0 e3                                      mov sl, #0
0040d694  07 b0 a0 e1                                      mov fp, r7
0040d698  0c 30 8d e5                                      str r3, [sp, #0xc]
0040d69c  10 20 8d e5                                      str r2, [sp, #0x10]
0040d6a0  14 50 8d e5                                      str r5, [sp, #0x14]
0040d6a4  24 21 96 e5                                      ldr r2, [r6, #0x124]
0040d6a8  07 30 a0 e1                                      mov r3, r7
0040d6ac  0b 00 a0 e1                                      mov r0, fp
0040d6b0  04 20 83 e4                                      str r2, [r3], #4
0040d6b4  28 21 96 e5                                      ldr r2, [r6, #0x128]
0040d6b8  04 20 87 e5                                      str r2, [r7, #4]
0040d6bc  2c 21 96 e5                                      ldr r2, [r6, #0x12c]
0040d6c0  0b 70 a0 e1                                      mov r7, fp
0040d6c4  04 20 83 e5                                      str r2, [r3, #4]
0040d6c8  05 ca fc eb                                      bl #0x33fee4
0040d6cc  00 30 50 e2                                      subs r3, r0, #0
0040d6d0  29 00 00 0a                                      beq #0x40d77c
0040d6d4  60 21 93 e5                                      ldr r2, [r3, #0x160]
0040d6d8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0040d6dc  04 00 a0 e1                                      mov r0, r4
0040d6e0  24 20 8d e5                                      str r2, [sp, #0x24]
0040d6e4  64 21 93 e5                                      ldr r2, [r3, #0x164]
0040d6e8  28 20 8d e5                                      str r2, [sp, #0x28]
0040d6ec  68 31 93 e5                                      ldr r3, [r3, #0x168]
0040d6f0  2c 30 8d e5                                      str r3, [sp, #0x2c]
0040d6f4  ed fb ff eb                                      bl #0x40c6b0
0040d6f8  20 81 96 e5                                      ldr r8, [r6, #0x120]
0040d6fc  04 30 90 e5                                      ldr r3, [r0, #4]
0040d700  00 20 98 e5                                      ldr r2, [r8]
0040d704  03 00 a0 e1                                      mov r0, r3
0040d708  00 30 93 e5                                      ldr r3, [r3]
0040d70c  a4 20 92 e5                                      ldr r2, [r2, #0xa4]
0040d710  00 20 8d e5                                      str r2, [sp]
0040d714  0f e0 a0 e1                                      mov lr, pc
0040d718  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0040d71c  41 14 a0 e3                                      mov r1, #0x41000000
0040d720  00 50 a0 e1                                      mov r5, r0
0040d724  0a 16 81 e2                                      add r1, r1, #0xa00000
0040d728  04 00 90 e5                                      ldr r0, [r0, #4]
0040d72c  1c 05 fc eb                                      bl #0x30eba4
0040d730  41 14 a0 e3                                      mov r1, #0x41000000
0040d734  00 90 a0 e1                                      mov sb, r0
0040d738  0a 16 81 e2                                      add r1, r1, #0xa00000
0040d73c  08 00 95 e5                                      ldr r0, [r5, #8]
0040d740  17 05 fc eb                                      bl #0x30eba4
0040d744  41 14 a0 e3                                      mov r1, #0x41000000
0040d748  00 30 a0 e1                                      mov r3, r0
0040d74c  0a 16 81 e2                                      add r1, r1, #0xa00000
0040d750  00 00 95 e5                                      ldr r0, [r5]
0040d754  04 30 8d e5                                      str r3, [sp, #4]
0040d758  11 05 fc eb                                      bl #0x30eba4
0040d75c  04 30 9d e5                                      ldr r3, [sp, #4]
0040d760  18 00 8d e5                                      str r0, [sp, #0x18]
0040d764  1c 90 8d e5                                      str sb, [sp, #0x1c]
0040d768  20 30 8d e5                                      str r3, [sp, #0x20]
0040d76c  08 00 a0 e1                                      mov r0, r8
0040d770  10 10 9d e5                                      ldr r1, [sp, #0x10]
0040d774  00 20 9d e5                                      ldr r2, [sp]
0040d778  32 ff 2f e1                                      blx r2
0040d77c  8c 31 94 e5                                      ldr r3, [r4, #0x18c]
0040d780  01 a0 8a e2                                      add sl, sl, #1
0040d784  14 60 86 e2                                      add r6, r6, #0x14
0040d788  0a 00 53 e1                                      cmp r3, sl
0040d78c  c4 ff ff ca                                      bgt #0x40d6a4
0040d790  14 50 9d e5                                      ldr r5, [sp, #0x14]
0040d794  08 20 9d e5                                      ldr r2, [sp, #8]
0040d798  02 30 95 e7                                      ldr r3, [r5, r2]
0040d79c  54 20 9d e5                                      ldr r2, [sp, #0x54]
0040d7a0  00 30 93 e5                                      ldr r3, [r3]
0040d7a4  03 00 52 e1                                      cmp r2, r3
0040d7a8  04 00 00 1a                                      bne #0x40d7c0
0040d7ac  5c d0 8d e2                                      add sp, sp, #0x5c
0040d7b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0040d7b4  03 00 a0 e1                                      mov r0, r3
0040d7b8  20 0b fc eb                                      bl #0x310440
0040d7bc  aa ff ff ea                                      b #0x40d66c
0040d7c0  d2 02 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0040d7c4  e0 74 58 00 ac 40 00 00 84 08 00 00 ac 23 4b 00  .byte 0xe0, 0x74, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xac, 0x23, 0x4b, 0x00

; FUNCTION 0x0040d7d4, declared_size=724, range_size=724, mode=arm
; class-group: LightSetManager
; alias: _ZN15LightSetManagerC1Ev
; demangled: LightSetManager::LightSetManager()
; decoder-mode: arm
0040d7d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0040d7d8  b4 52 9f e5                                      ldr r5, [pc, #0x2b4]
0040d7dc  04 30 80 e2                                      add r3, r0, #4
0040d7e0  0c d0 4d e2                                      sub sp, sp, #0xc
0040d7e4  00 70 a0 e3                                      mov r7, #0
0040d7e8  00 40 a0 e1                                      mov r4, r0
0040d7ec  04 30 8d e5                                      str r3, [sp, #4]
0040d7f0  03 60 a0 e1                                      mov r6, r3
0040d7f4  07 80 a0 e1                                      mov r8, r7
0040d7f8  05 50 8f e0                                      add r5, pc, r5
0040d7fc  10 60 86 e5                                      str r6, [r6, #0x10]
0040d800  14 60 86 e5                                      str r6, [r6, #0x14]
0040d804  06 00 a0 e1                                      mov r0, r6
0040d808  10 10 a0 e3                                      mov r1, #0x10
0040d80c  9a 0f fc eb                                      bl #0x31167c
0040d810  10 30 96 e5                                      ldr r3, [r6, #0x10]
0040d814  18 70 87 e2                                      add r7, r7, #0x18
0040d818  60 00 57 e3                                      cmp r7, #0x60
0040d81c  00 80 c3 e5                                      strb r8, [r3]
0040d820  18 60 86 e2                                      add r6, r6, #0x18
0040d824  f4 ff ff 1a                                      bne #0x40d7fc
0040d828  78 30 84 e2                                      add r3, r4, #0x78
0040d82c  c8 10 84 e2                                      add r1, r4, #0xc8
0040d830  00 20 a0 e3                                      mov r2, #0
0040d834  00 20 83 e5                                      str r2, [r3]
0040d838  04 20 83 e5                                      str r2, [r3, #4]
0040d83c  08 20 83 e5                                      str r2, [r3, #8]
0040d840  0c 20 83 e5                                      str r2, [r3, #0xc]
0040d844  10 20 83 e5                                      str r2, [r3, #0x10]
0040d848  14 30 83 e2                                      add r3, r3, #0x14
0040d84c  01 00 53 e1                                      cmp r3, r1
0040d850  f7 ff ff 1a                                      bne #0x40d834
0040d854  3c 02 9f e5                                      ldr r0, [pc, #0x23c]
0040d858  02 10 a0 e1                                      mov r1, r2
0040d85c  d4 30 84 e2                                      add r3, r4, #0xd4
0040d860  00 00 95 e7                                      ldr r0, [r5, r0]
0040d864  c8 20 84 e5                                      str r2, [r4, #0xc8]
0040d868  cc 20 84 e5                                      str r2, [r4, #0xcc]
0040d86c  d0 20 84 e5                                      str r2, [r4, #0xd0]
0040d870  d4 20 84 e5                                      str r2, [r4, #0xd4]
0040d874  08 00 80 e2                                      add r0, r0, #8
0040d878  04 20 83 e5                                      str r2, [r3, #4]
0040d87c  01 70 a0 e1                                      mov r7, r1
0040d880  dc 20 84 e2                                      add r2, r4, #0xdc
0040d884  02 30 a0 e1                                      mov r3, r2
0040d888  01 00 a3 e7                                      str r0, [r3, r1]!
0040d88c  08 10 81 e2                                      add r1, r1, #8
0040d890  40 00 51 e3                                      cmp r1, #0x40
0040d894  04 70 83 e5                                      str r7, [r3, #4]
0040d898  f9 ff ff 1a                                      bne #0x40d884
0040d89c  f8 31 9f e5                                      ldr r3, [pc, #0x1f8]
0040d8a0  47 6f 84 e2                                      add r6, r4, #0x11c
0040d8a4  5b af 84 e2                                      add sl, r4, #0x16c
0040d8a8  03 80 95 e7                                      ldr r8, [r5, r3]
0040d8ac  08 80 88 e2                                      add r8, r8, #8
0040d8b0  00 80 86 e5                                      str r8, [r6]
0040d8b4  04 70 86 e5                                      str r7, [r6, #4]
0040d8b8  08 00 86 e2                                      add r0, r6, #8
0040d8bc  07 10 a0 e1                                      mov r1, r7
0040d8c0  14 60 86 e2                                      add r6, r6, #0x14
0040d8c4  16 c7 fc eb                                      bl #0x33f524
0040d8c8  0a 00 56 e1                                      cmp r6, sl
0040d8cc  f7 ff ff 1a                                      bne #0x40d8b0
0040d8d0  00 30 a0 e3                                      mov r3, #0
0040d8d4  84 31 84 e5                                      str r3, [r4, #0x184]
0040d8d8  78 31 84 e5                                      str r3, [r4, #0x178]
0040d8dc  7c 31 84 e5                                      str r3, [r4, #0x17c]
0040d8e0  80 31 84 e5                                      str r3, [r4, #0x180]
0040d8e4  b4 31 9f e5                                      ldr r3, [pc, #0x1b4]
0040d8e8  00 24 02 e3                                      movw r2, #0x2400
0040d8ec  74 29 4c e3                                      movt r2, #0xc974
0040d8f0  01 10 a0 e3                                      mov r1, #1
0040d8f4  74 21 84 e5                                      str r2, [r4, #0x174]
0040d8f8  9d 11 c4 e5                                      strb r1, [r4, #0x19d]
0040d8fc  6c 21 84 e5                                      str r2, [r4, #0x16c]
0040d900  70 21 84 e5                                      str r2, [r4, #0x170]
0040d904  88 71 84 e5                                      str r7, [r4, #0x188]
0040d908  8c 71 84 e5                                      str r7, [r4, #0x18c]
0040d90c  90 71 84 e5                                      str r7, [r4, #0x190]
0040d910  94 71 84 e5                                      str r7, [r4, #0x194]
0040d914  98 71 84 e5                                      str r7, [r4, #0x198]
0040d918  9c 11 c4 e5                                      strb r1, [r4, #0x19c]
0040d91c  9e 71 c4 e5                                      strb r7, [r4, #0x19e]
0040d920  a0 71 84 e5                                      str r7, [r4, #0x1a0]
0040d924  04 90 a0 e1                                      mov sb, r4
0040d928  00 40 8d e5                                      str r4, [sp]
0040d92c  07 b0 a0 e1                                      mov fp, r7
0040d930  07 a0 a0 e1                                      mov sl, r7
0040d934  03 40 a0 e1                                      mov r4, r3
0040d938  14 30 a0 e3                                      mov r3, #0x14
0040d93c  93 0b 07 e0                                      mul r7, r3, fp
0040d940  00 80 9d e5                                      ldr r8, [sp]
0040d944  78 70 87 e2                                      add r7, r7, #0x78
0040d948  00 60 a0 e3                                      mov r6, #0
0040d94c  07 70 88 e0                                      add r7, r8, r7
0040d950  00 00 97 e5                                      ldr r0, [r7]
0040d954  00 a0 87 e5                                      str sl, [r7]
0040d958  00 00 50 e3                                      cmp r0, #0
0040d95c  0d 00 00 0a                                      beq #0x40d998
0040d960  00 30 90 e5                                      ldr r3, [r0]
0040d964  01 30 43 e2                                      sub r3, r3, #1
0040d968  00 00 53 e3                                      cmp r3, #0
0040d96c  00 30 80 e5                                      str r3, [r0]
0040d970  08 00 00 1a                                      bne #0x40d998
0040d974  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
0040d978  00 00 53 e3                                      cmp r3, #0
0040d97c  04 30 95 07                                      ldreq r3, [r5, r4]
0040d980  50 20 90 05                                      ldreq r2, [r0, #0x50]
0040d984  00 10 93 05                                      ldreq r1, [r3]
0040d988  00 10 82 05                                      streq r1, [r2]
0040d98c  00 20 83 05                                      streq r2, [r3]
0040d990  50 a0 80 e5                                      str sl, [r0, #0x50]
0040d994  a9 0a fc eb                                      bl #0x310440
0040d998  06 30 89 e0                                      add r3, sb, r6
0040d99c  64 a0 c3 e5                                      strb sl, [r3, #0x64]
0040d9a0  c8 00 98 e5                                      ldr r0, [r8, #0xc8]
0040d9a4  c8 a0 88 e5                                      str sl, [r8, #0xc8]
0040d9a8  00 00 50 e3                                      cmp r0, #0
0040d9ac  0d 00 00 0a                                      beq #0x40d9e8
0040d9b0  00 30 90 e5                                      ldr r3, [r0]
0040d9b4  01 30 43 e2                                      sub r3, r3, #1
0040d9b8  00 00 53 e3                                      cmp r3, #0
0040d9bc  00 30 80 e5                                      str r3, [r0]
0040d9c0  08 00 00 1a                                      bne #0x40d9e8
0040d9c4  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
0040d9c8  00 00 53 e3                                      cmp r3, #0
0040d9cc  04 30 95 07                                      ldreq r3, [r5, r4]
0040d9d0  50 20 90 05                                      ldreq r2, [r0, #0x50]
0040d9d4  00 10 93 05                                      ldreq r1, [r3]
0040d9d8  00 10 82 05                                      streq r1, [r2]
0040d9dc  00 20 83 05                                      streq r2, [r3]
0040d9e0  50 a0 80 e5                                      str sl, [r0, #0x50]
0040d9e4  95 0a fc eb                                      bl #0x310440
0040d9e8  01 60 86 e2                                      add r6, r6, #1
0040d9ec  05 00 56 e3                                      cmp r6, #5
0040d9f0  04 80 88 e2                                      add r8, r8, #4
0040d9f4  04 70 87 e2                                      add r7, r7, #4
0040d9f8  d4 ff ff 1a                                      bne #0x40d950
0040d9fc  01 b0 8b e2                                      add fp, fp, #1
0040da00  04 00 5b e3                                      cmp fp, #4
0040da04  05 90 89 e2                                      add sb, sb, #5
0040da08  ca ff ff 1a                                      bne #0x40d938
0040da0c  90 30 9f e5                                      ldr r3, [pc, #0x90]
0040da10  00 40 9d e5                                      ldr r4, [sp]
0040da14  03 50 95 e7                                      ldr r5, [r5, r3]
0040da18  00 60 95 e5                                      ldr r6, [r5]
0040da1c  06 00 a0 e1                                      mov r0, r6
0040da20  0b 01 fc eb                                      bl #0x30de54
0040da24  06 10 a0 e1                                      mov r1, r6
0040da28  00 20 86 e0                                      add r2, r6, r0
0040da2c  04 00 9d e5                                      ldr r0, [sp, #4]
0040da30  ea 0b fc eb                                      bl #0x3109e0
0040da34  04 60 95 e5                                      ldr r6, [r5, #4]
0040da38  06 00 a0 e1                                      mov r0, r6
0040da3c  04 01 fc eb                                      bl #0x30de54
0040da40  06 10 a0 e1                                      mov r1, r6
0040da44  00 20 86 e0                                      add r2, r6, r0
0040da48  1c 00 84 e2                                      add r0, r4, #0x1c
0040da4c  e3 0b fc eb                                      bl #0x3109e0
0040da50  08 60 95 e5                                      ldr r6, [r5, #8]
0040da54  06 00 a0 e1                                      mov r0, r6
0040da58  fd 00 fc eb                                      bl #0x30de54
0040da5c  06 10 a0 e1                                      mov r1, r6
0040da60  00 20 86 e0                                      add r2, r6, r0
0040da64  34 00 84 e2                                      add r0, r4, #0x34
0040da68  dc 0b fc eb                                      bl #0x3109e0
0040da6c  0c 50 95 e5                                      ldr r5, [r5, #0xc]
0040da70  05 00 a0 e1                                      mov r0, r5
0040da74  f6 00 fc eb                                      bl #0x30de54
0040da78  05 10 a0 e1                                      mov r1, r5
0040da7c  00 20 85 e0                                      add r2, r5, r0
0040da80  4c 00 84 e2                                      add r0, r4, #0x4c
0040da84  d5 0b fc eb                                      bl #0x3109e0
0040da88  04 00 a0 e1                                      mov r0, r4
0040da8c  0c d0 8d e2                                      add sp, sp, #0xc
0040da90  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0040da94  98 72 58 00 b8 44 00 00 a0 36 00 00 c0 3c 00 00  .byte 0x98, 0x72, 0x58, 0x00, 0xb8, 0x44, 0x00, 0x00, 0xa0, 0x36, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00
0040daa4  a4 0b 00 00                                      .byte 0xa4, 0x0b, 0x00, 0x00

; FUNCTION 0x0040daa8, declared_size=724, range_size=724, mode=arm
; class-group: LightSetManager
; alias: _ZN15LightSetManagerC2Ev
; demangled: LightSetManager::LightSetManager()
; decoder-mode: arm
0040daa8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0040daac  b4 52 9f e5                                      ldr r5, [pc, #0x2b4]
0040dab0  04 30 80 e2                                      add r3, r0, #4
0040dab4  0c d0 4d e2                                      sub sp, sp, #0xc
0040dab8  00 70 a0 e3                                      mov r7, #0
0040dabc  00 40 a0 e1                                      mov r4, r0
0040dac0  04 30 8d e5                                      str r3, [sp, #4]
0040dac4  03 60 a0 e1                                      mov r6, r3
0040dac8  07 80 a0 e1                                      mov r8, r7
0040dacc  05 50 8f e0                                      add r5, pc, r5
0040dad0  10 60 86 e5                                      str r6, [r6, #0x10]
0040dad4  14 60 86 e5                                      str r6, [r6, #0x14]
0040dad8  06 00 a0 e1                                      mov r0, r6
0040dadc  10 10 a0 e3                                      mov r1, #0x10
0040dae0  e5 0e fc eb                                      bl #0x31167c
0040dae4  10 30 96 e5                                      ldr r3, [r6, #0x10]
0040dae8  18 70 87 e2                                      add r7, r7, #0x18
0040daec  60 00 57 e3                                      cmp r7, #0x60
0040daf0  00 80 c3 e5                                      strb r8, [r3]
0040daf4  18 60 86 e2                                      add r6, r6, #0x18
0040daf8  f4 ff ff 1a                                      bne #0x40dad0
0040dafc  78 30 84 e2                                      add r3, r4, #0x78
0040db00  c8 10 84 e2                                      add r1, r4, #0xc8
0040db04  00 20 a0 e3                                      mov r2, #0
0040db08  00 20 83 e5                                      str r2, [r3]
0040db0c  04 20 83 e5                                      str r2, [r3, #4]
0040db10  08 20 83 e5                                      str r2, [r3, #8]
0040db14  0c 20 83 e5                                      str r2, [r3, #0xc]
0040db18  10 20 83 e5                                      str r2, [r3, #0x10]
0040db1c  14 30 83 e2                                      add r3, r3, #0x14
0040db20  01 00 53 e1                                      cmp r3, r1
0040db24  f7 ff ff 1a                                      bne #0x40db08
0040db28  3c 02 9f e5                                      ldr r0, [pc, #0x23c]
0040db2c  02 10 a0 e1                                      mov r1, r2
0040db30  d4 30 84 e2                                      add r3, r4, #0xd4
0040db34  00 00 95 e7                                      ldr r0, [r5, r0]
0040db38  c8 20 84 e5                                      str r2, [r4, #0xc8]
0040db3c  cc 20 84 e5                                      str r2, [r4, #0xcc]
0040db40  d0 20 84 e5                                      str r2, [r4, #0xd0]
0040db44  d4 20 84 e5                                      str r2, [r4, #0xd4]
0040db48  08 00 80 e2                                      add r0, r0, #8
0040db4c  04 20 83 e5                                      str r2, [r3, #4]
0040db50  01 70 a0 e1                                      mov r7, r1
0040db54  dc 20 84 e2                                      add r2, r4, #0xdc
0040db58  02 30 a0 e1                                      mov r3, r2
0040db5c  01 00 a3 e7                                      str r0, [r3, r1]!
0040db60  08 10 81 e2                                      add r1, r1, #8
0040db64  40 00 51 e3                                      cmp r1, #0x40
0040db68  04 70 83 e5                                      str r7, [r3, #4]
0040db6c  f9 ff ff 1a                                      bne #0x40db58
0040db70  f8 31 9f e5                                      ldr r3, [pc, #0x1f8]
0040db74  47 6f 84 e2                                      add r6, r4, #0x11c
0040db78  5b af 84 e2                                      add sl, r4, #0x16c
0040db7c  03 80 95 e7                                      ldr r8, [r5, r3]
0040db80  08 80 88 e2                                      add r8, r8, #8
0040db84  00 80 86 e5                                      str r8, [r6]
0040db88  04 70 86 e5                                      str r7, [r6, #4]
0040db8c  08 00 86 e2                                      add r0, r6, #8
0040db90  07 10 a0 e1                                      mov r1, r7
0040db94  14 60 86 e2                                      add r6, r6, #0x14
0040db98  61 c6 fc eb                                      bl #0x33f524
0040db9c  0a 00 56 e1                                      cmp r6, sl
0040dba0  f7 ff ff 1a                                      bne #0x40db84
0040dba4  00 30 a0 e3                                      mov r3, #0
0040dba8  84 31 84 e5                                      str r3, [r4, #0x184]
0040dbac  78 31 84 e5                                      str r3, [r4, #0x178]
0040dbb0  7c 31 84 e5                                      str r3, [r4, #0x17c]
0040dbb4  80 31 84 e5                                      str r3, [r4, #0x180]
0040dbb8  b4 31 9f e5                                      ldr r3, [pc, #0x1b4]
0040dbbc  00 24 02 e3                                      movw r2, #0x2400
0040dbc0  74 29 4c e3                                      movt r2, #0xc974
0040dbc4  01 10 a0 e3                                      mov r1, #1
0040dbc8  74 21 84 e5                                      str r2, [r4, #0x174]
0040dbcc  9d 11 c4 e5                                      strb r1, [r4, #0x19d]
0040dbd0  6c 21 84 e5                                      str r2, [r4, #0x16c]
0040dbd4  70 21 84 e5                                      str r2, [r4, #0x170]
0040dbd8  88 71 84 e5                                      str r7, [r4, #0x188]
0040dbdc  8c 71 84 e5                                      str r7, [r4, #0x18c]
0040dbe0  90 71 84 e5                                      str r7, [r4, #0x190]
0040dbe4  94 71 84 e5                                      str r7, [r4, #0x194]
0040dbe8  98 71 84 e5                                      str r7, [r4, #0x198]
0040dbec  9c 11 c4 e5                                      strb r1, [r4, #0x19c]
0040dbf0  9e 71 c4 e5                                      strb r7, [r4, #0x19e]
0040dbf4  a0 71 84 e5                                      str r7, [r4, #0x1a0]
0040dbf8  04 90 a0 e1                                      mov sb, r4
0040dbfc  00 40 8d e5                                      str r4, [sp]
0040dc00  07 b0 a0 e1                                      mov fp, r7
0040dc04  07 a0 a0 e1                                      mov sl, r7
0040dc08  03 40 a0 e1                                      mov r4, r3
0040dc0c  14 30 a0 e3                                      mov r3, #0x14
0040dc10  93 0b 07 e0                                      mul r7, r3, fp
0040dc14  00 80 9d e5                                      ldr r8, [sp]
0040dc18  78 70 87 e2                                      add r7, r7, #0x78
0040dc1c  00 60 a0 e3                                      mov r6, #0
0040dc20  07 70 88 e0                                      add r7, r8, r7
0040dc24  00 00 97 e5                                      ldr r0, [r7]
0040dc28  00 a0 87 e5                                      str sl, [r7]
0040dc2c  00 00 50 e3                                      cmp r0, #0
0040dc30  0d 00 00 0a                                      beq #0x40dc6c
0040dc34  00 30 90 e5                                      ldr r3, [r0]
0040dc38  01 30 43 e2                                      sub r3, r3, #1
0040dc3c  00 00 53 e3                                      cmp r3, #0
0040dc40  00 30 80 e5                                      str r3, [r0]
0040dc44  08 00 00 1a                                      bne #0x40dc6c
0040dc48  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
0040dc4c  00 00 53 e3                                      cmp r3, #0
0040dc50  04 30 95 07                                      ldreq r3, [r5, r4]
0040dc54  50 20 90 05                                      ldreq r2, [r0, #0x50]
0040dc58  00 10 93 05                                      ldreq r1, [r3]
0040dc5c  00 10 82 05                                      streq r1, [r2]
0040dc60  00 20 83 05                                      streq r2, [r3]
0040dc64  50 a0 80 e5                                      str sl, [r0, #0x50]
0040dc68  f4 09 fc eb                                      bl #0x310440
0040dc6c  06 30 89 e0                                      add r3, sb, r6
0040dc70  64 a0 c3 e5                                      strb sl, [r3, #0x64]
0040dc74  c8 00 98 e5                                      ldr r0, [r8, #0xc8]
0040dc78  c8 a0 88 e5                                      str sl, [r8, #0xc8]
0040dc7c  00 00 50 e3                                      cmp r0, #0
0040dc80  0d 00 00 0a                                      beq #0x40dcbc
0040dc84  00 30 90 e5                                      ldr r3, [r0]
0040dc88  01 30 43 e2                                      sub r3, r3, #1
0040dc8c  00 00 53 e3                                      cmp r3, #0
0040dc90  00 30 80 e5                                      str r3, [r0]
0040dc94  08 00 00 1a                                      bne #0x40dcbc
0040dc98  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
0040dc9c  00 00 53 e3                                      cmp r3, #0
0040dca0  04 30 95 07                                      ldreq r3, [r5, r4]
0040dca4  50 20 90 05                                      ldreq r2, [r0, #0x50]
0040dca8  00 10 93 05                                      ldreq r1, [r3]
0040dcac  00 10 82 05                                      streq r1, [r2]
0040dcb0  00 20 83 05                                      streq r2, [r3]
0040dcb4  50 a0 80 e5                                      str sl, [r0, #0x50]
0040dcb8  e0 09 fc eb                                      bl #0x310440
0040dcbc  01 60 86 e2                                      add r6, r6, #1
0040dcc0  05 00 56 e3                                      cmp r6, #5
0040dcc4  04 80 88 e2                                      add r8, r8, #4
0040dcc8  04 70 87 e2                                      add r7, r7, #4
0040dccc  d4 ff ff 1a                                      bne #0x40dc24
0040dcd0  01 b0 8b e2                                      add fp, fp, #1
0040dcd4  04 00 5b e3                                      cmp fp, #4
0040dcd8  05 90 89 e2                                      add sb, sb, #5
0040dcdc  ca ff ff 1a                                      bne #0x40dc0c
0040dce0  90 30 9f e5                                      ldr r3, [pc, #0x90]
0040dce4  00 40 9d e5                                      ldr r4, [sp]
0040dce8  03 50 95 e7                                      ldr r5, [r5, r3]
0040dcec  00 60 95 e5                                      ldr r6, [r5]
0040dcf0  06 00 a0 e1                                      mov r0, r6
0040dcf4  56 00 fc eb                                      bl #0x30de54
0040dcf8  06 10 a0 e1                                      mov r1, r6
0040dcfc  00 20 86 e0                                      add r2, r6, r0
0040dd00  04 00 9d e5                                      ldr r0, [sp, #4]
0040dd04  35 0b fc eb                                      bl #0x3109e0
0040dd08  04 60 95 e5                                      ldr r6, [r5, #4]
0040dd0c  06 00 a0 e1                                      mov r0, r6
0040dd10  4f 00 fc eb                                      bl #0x30de54
0040dd14  06 10 a0 e1                                      mov r1, r6
0040dd18  00 20 86 e0                                      add r2, r6, r0
0040dd1c  1c 00 84 e2                                      add r0, r4, #0x1c
0040dd20  2e 0b fc eb                                      bl #0x3109e0
0040dd24  08 60 95 e5                                      ldr r6, [r5, #8]
0040dd28  06 00 a0 e1                                      mov r0, r6
0040dd2c  48 00 fc eb                                      bl #0x30de54
0040dd30  06 10 a0 e1                                      mov r1, r6
0040dd34  00 20 86 e0                                      add r2, r6, r0
0040dd38  34 00 84 e2                                      add r0, r4, #0x34
0040dd3c  27 0b fc eb                                      bl #0x3109e0
0040dd40  0c 50 95 e5                                      ldr r5, [r5, #0xc]
0040dd44  05 00 a0 e1                                      mov r0, r5
0040dd48  41 00 fc eb                                      bl #0x30de54
0040dd4c  05 10 a0 e1                                      mov r1, r5
0040dd50  00 20 85 e0                                      add r2, r5, r0
0040dd54  4c 00 84 e2                                      add r0, r4, #0x4c
0040dd58  20 0b fc eb                                      bl #0x3109e0
0040dd5c  04 00 a0 e1                                      mov r0, r4
0040dd60  0c d0 8d e2                                      add sp, sp, #0xc
0040dd64  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0040dd68  c4 6f 58 00 b8 44 00 00 a0 36 00 00 c0 3c 00 00  .byte 0xc4, 0x6f, 0x58, 0x00, 0xb8, 0x44, 0x00, 0x00, 0xa0, 0x36, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00
0040dd78  a4 0b 00 00                                      .byte 0xa4, 0x0b, 0x00, 0x00
