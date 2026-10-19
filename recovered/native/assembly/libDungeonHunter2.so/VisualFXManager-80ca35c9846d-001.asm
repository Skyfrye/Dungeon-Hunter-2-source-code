; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00493260, declared_size=100, range_size=100, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManagerC2Ev
; demangled: VisualFXManager::VisualFXManager()
; decoder-mode: arm
00493260  54 10 9f e5                                      ldr r1, [pc, #0x54]
00493264  54 c0 9f e5                                      ldr ip, [pc, #0x54]
00493268  00 20 a0 e3                                      mov r2, #0
0049326c  01 10 8f e0                                      add r1, pc, r1
00493270  0c c0 91 e7                                      ldr ip, [r1, ip]
00493274  04 40 2d e5                                      str r4, [sp, #-4]!
00493278  08 40 80 e2                                      add r4, r0, #8
0049327c  08 c0 8c e2                                      add ip, ip, #8
00493280  30 20 80 e5                                      str r2, [r0, #0x30]
00493284  00 c0 80 e5                                      str ip, [r0]
00493288  0c 40 80 e5                                      str r4, [r0, #0xc]
0049328c  04 20 c0 e5                                      strb r2, [r0, #4]
00493290  08 40 80 e5                                      str r4, [r0, #8]
00493294  10 20 80 e5                                      str r2, [r0, #0x10]
00493298  14 20 80 e5                                      str r2, [r0, #0x14]
0049329c  18 20 80 e5                                      str r2, [r0, #0x18]
004932a0  1c 20 80 e5                                      str r2, [r0, #0x1c]
004932a4  20 20 80 e5                                      str r2, [r0, #0x20]
004932a8  24 20 80 e5                                      str r2, [r0, #0x24]
004932ac  28 20 80 e5                                      str r2, [r0, #0x28]
004932b0  2c 20 80 e5                                      str r2, [r0, #0x2c]
004932b4  10 00 bd e8                                      ldm sp!, {r4}
004932b8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
004932bc  24 18 50 00 30 34 00 00                          .byte 0x24, 0x18, 0x50, 0x00, 0x30, 0x34, 0x00, 0x00

; FUNCTION 0x004932c4, declared_size=100, range_size=100, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManagerC1Ev
; demangled: VisualFXManager::VisualFXManager()
; decoder-mode: arm
004932c4  54 10 9f e5                                      ldr r1, [pc, #0x54]
004932c8  54 c0 9f e5                                      ldr ip, [pc, #0x54]
004932cc  00 20 a0 e3                                      mov r2, #0
004932d0  01 10 8f e0                                      add r1, pc, r1
004932d4  0c c0 91 e7                                      ldr ip, [r1, ip]
004932d8  04 40 2d e5                                      str r4, [sp, #-4]!
004932dc  08 40 80 e2                                      add r4, r0, #8
004932e0  08 c0 8c e2                                      add ip, ip, #8
004932e4  30 20 80 e5                                      str r2, [r0, #0x30]
004932e8  00 c0 80 e5                                      str ip, [r0]
004932ec  0c 40 80 e5                                      str r4, [r0, #0xc]
004932f0  04 20 c0 e5                                      strb r2, [r0, #4]
004932f4  08 40 80 e5                                      str r4, [r0, #8]
004932f8  10 20 80 e5                                      str r2, [r0, #0x10]
004932fc  14 20 80 e5                                      str r2, [r0, #0x14]
00493300  18 20 80 e5                                      str r2, [r0, #0x18]
00493304  1c 20 80 e5                                      str r2, [r0, #0x1c]
00493308  20 20 80 e5                                      str r2, [r0, #0x20]
0049330c  24 20 80 e5                                      str r2, [r0, #0x24]
00493310  28 20 80 e5                                      str r2, [r0, #0x28]
00493314  2c 20 80 e5                                      str r2, [r0, #0x2c]
00493318  10 00 bd e8                                      ldm sp!, {r4}
0049331c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00493320  c0 17 50 00 30 34 00 00                          .byte 0xc0, 0x17, 0x50, 0x00, 0x30, 0x34, 0x00, 0x00

; FUNCTION 0x00493328, declared_size=176, range_size=176, mode=arm
; class-group: VisualFXManager
; alias: _ZNK15VisualFXManager22DBG_GetAnimatedFXStatsERjS0_
; demangled: VisualFXManager::DBG_GetAnimatedFXStats(unsigned int&, unsigned int&) const
; decoder-mode: arm
00493328  00 30 a0 e3                                      mov r3, #0
0049332c  00 30 82 e5                                      str r3, [r2]
00493330  00 30 81 e5                                      str r3, [r1]
00493334  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
00493338  28 c0 90 e5                                      ldr ip, [r0, #0x28]
0049333c  2c 40 90 e5                                      ldr r4, [r0, #0x2c]
00493340  04 40 6c e0                                      rsb r4, ip, r4
00493344  c4 41 a0 e1                                      asr r4, r4, #3
00493348  04 71 84 e0                                      add r7, r4, r4, lsl #2
0049334c  07 72 87 e0                                      add r7, r7, r7, lsl #4
00493350  07 74 87 e0                                      add r7, r7, r7, lsl #8
00493354  07 78 87 e0                                      add r7, r7, r7, lsl #16
00493358  87 70 94 e0                                      adds r7, r4, r7, lsl #1
0049335c  1b 00 00 0a                                      beq #0x4933d0
00493360  03 50 a0 e1                                      mov r5, r3
00493364  03 60 a0 e1                                      mov r6, r3
00493368  03 c0 8c e0                                      add ip, ip, r3
0049336c  10 10 9c e9                                      ldmib ip, {r4, ip}
00493370  0c c0 64 e0                                      rsb ip, r4, ip
00493374  4c c1 85 e0                                      add ip, r5, ip, asr #2
00493378  00 c0 81 e5                                      str ip, [r1]
0049337c  28 50 90 e5                                      ldr r5, [r0, #0x28]
00493380  00 80 92 e5                                      ldr r8, [r2]
00493384  03 50 85 e0                                      add r5, r5, r3
00493388  10 c0 b5 e5                                      ldr ip, [r5, #0x10]!
0049338c  05 00 5c e1                                      cmp ip, r5
00493390  00 40 a0 03                                      moveq r4, #0
00493394  04 00 00 0a                                      beq #0x4933ac
00493398  00 40 a0 e3                                      mov r4, #0
0049339c  00 c0 9c e5                                      ldr ip, [ip]
004933a0  01 40 84 e2                                      add r4, r4, #1
004933a4  0c 00 55 e1                                      cmp r5, ip
004933a8  fb ff ff 1a                                      bne #0x49339c
004933ac  01 60 86 e2                                      add r6, r6, #1
004933b0  08 40 84 e0                                      add r4, r4, r8
004933b4  07 00 56 e1                                      cmp r6, r7
004933b8  00 40 82 e5                                      str r4, [r2]
004933bc  18 30 83 e2                                      add r3, r3, #0x18
004933c0  02 00 00 0a                                      beq #0x4933d0
004933c4  00 50 91 e5                                      ldr r5, [r1]
004933c8  28 c0 90 e5                                      ldr ip, [r0, #0x28]
004933cc  e5 ff ff ea                                      b #0x493368
004933d0  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
004933d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004933d8, declared_size=12, range_size=12, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager17_PreCacheAnimDictEv
; demangled: VisualFXManager::_PreCacheAnimDict()
; decoder-mode: arm
004933d8  01 30 a0 e3                                      mov r3, #1
004933dc  04 30 c0 e5                                      strb r3, [r0, #4]
004933e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004933e4, declared_size=164, range_size=164, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager13GetAnimFXDataENS_13AnimFXSetInfoEPNS_13AnimFXSetDataE
; demangled: VisualFXManager::GetAnimFXData(VisualFXManager::AnimFXSetInfo, VisualFXManager::AnimFXSetData*)
; decoder-mode: arm
004933e4  04 40 2d e5                                      str r4, [sp, #-4]!
004933e8  00 10 92 e5                                      ldr r1, [r2]
004933ec  04 c0 93 e5                                      ldr ip, [r3, #4]
004933f0  30 40 a0 e3                                      mov r4, #0x30
004933f4  10 10 91 e5                                      ldr r1, [r1, #0x10]
004933f8  94 1c 21 e0                                      mla r1, r4, ip, r1
004933fc  11 c0 d1 e5                                      ldrb ip, [r1, #0x11]
00493400  00 c0 c0 e5                                      strb ip, [r0]
00493404  10 c0 d1 e5                                      ldrb ip, [r1, #0x10]
00493408  01 c0 c0 e5                                      strb ip, [r0, #1]
0049340c  20 c0 d1 e5                                      ldrb ip, [r1, #0x20]
00493410  02 c0 c0 e5                                      strb ip, [r0, #2]
00493414  24 c0 91 e5                                      ldr ip, [r1, #0x24]
00493418  10 30 80 e5                                      str r3, [r0, #0x10]
0049341c  04 c0 80 e5                                      str ip, [r0, #4]
00493420  14 c0 91 e5                                      ldr ip, [r1, #0x14]
00493424  0c c0 80 e5                                      str ip, [r0, #0xc]
00493428  00 20 92 e5                                      ldr r2, [r2]
0049342c  14 20 92 e5                                      ldr r2, [r2, #0x14]
00493430  01 00 52 e3                                      cmp r2, #1
00493434  10 00 00 0a                                      beq #0x49347c
00493438  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0049343c  01 00 72 e3                                      cmn r2, #1
00493440  0a 00 00 0a                                      beq #0x493470
00493444  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00493448  01 00 73 e3                                      cmn r3, #1
0049344c  07 00 00 0a                                      beq #0x493470
00493450  00 00 52 e3                                      cmp r2, #0
00493454  08 30 80 05                                      streq r3, [r0, #8]
00493458  02 00 00 0a                                      beq #0x493468
0049345c  00 00 53 e3                                      cmp r3, #0
00493460  92 03 02 10                                      mulne r2, r2, r3
00493464  08 20 80 e5                                      str r2, [r0, #8]
00493468  10 00 bd e8                                      ldm sp!, {r4}
0049346c  1e ff 2f e1                                      bx lr
00493470  00 30 e0 e3                                      mvn r3, #0
00493474  08 30 80 e5                                      str r3, [r0, #8]
00493478  fa ff ff ea                                      b #0x493468
0049347c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00493480  08 30 80 e5                                      str r3, [r0, #8]
00493484  f7 ff ff ea                                      b #0x493468

; FUNCTION 0x004935b8, declared_size=152, range_size=152, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager16GetAnimFXSetDataEiiiPK10GameObjectPNS_13AnimFXSetDataE7Point3DIfES6_
; demangled: VisualFXManager::GetAnimFXSetData(int, int, int, GameObject const*, VisualFXManager::AnimFXSetData*, Point3D<float>, Point3D<float>)
; decoder-mode: arm
004935b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004935bc  30 00 a0 e3                                      mov r0, #0x30
004935c0  01 40 a0 e1                                      mov r4, r1
004935c4  00 10 a0 e3                                      mov r1, #0
004935c8  20 70 9d e5                                      ldr r7, [sp, #0x20]
004935cc  24 60 9d e5                                      ldr r6, [sp, #0x24]
004935d0  02 50 a0 e1                                      mov r5, r2
004935d4  03 80 a0 e1                                      mov r8, r3
004935d8  e4 f3 f9 eb                                      bl #0x310570
004935dc  00 20 a0 e3                                      mov r2, #0
004935e0  00 10 a0 e3                                      mov r1, #0
004935e4  24 20 80 e5                                      str r2, [r0, #0x24]
004935e8  00 10 c0 e5                                      strb r1, [r0]
004935ec  04 80 80 e5                                      str r8, [r0, #4]
004935f0  08 40 80 e5                                      str r4, [r0, #8]
004935f4  0c 50 80 e5                                      str r5, [r0, #0xc]
004935f8  18 10 9d e5                                      ldr r1, [sp, #0x18]
004935fc  10 20 80 e5                                      str r2, [r0, #0x10]
00493600  14 20 80 e5                                      str r2, [r0, #0x14]
00493604  18 20 80 e5                                      str r2, [r0, #0x18]
00493608  1c 20 80 e5                                      str r2, [r0, #0x1c]
0049360c  20 20 80 e5                                      str r2, [r0, #0x20]
00493610  28 10 80 e5                                      str r1, [r0, #0x28]
00493614  00 20 97 e5                                      ldr r2, [r7]
00493618  10 20 80 e5                                      str r2, [r0, #0x10]
0049361c  04 20 97 e5                                      ldr r2, [r7, #4]
00493620  14 20 80 e5                                      str r2, [r0, #0x14]
00493624  08 20 97 e5                                      ldr r2, [r7, #8]
00493628  18 20 80 e5                                      str r2, [r0, #0x18]
0049362c  00 20 96 e5                                      ldr r2, [r6]
00493630  1c 20 80 e5                                      str r2, [r0, #0x1c]
00493634  04 20 96 e5                                      ldr r2, [r6, #4]
00493638  20 20 80 e5                                      str r2, [r0, #0x20]
0049363c  08 20 96 e5                                      ldr r2, [r6, #8]
00493640  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00493644  24 20 80 e5                                      str r2, [r0, #0x24]
00493648  2c 10 80 e5                                      str r1, [r0, #0x2c]
0049364c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00494660, declared_size=408, range_size=408, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager21DropAnimatedFXSetByIDEi
; demangled: VisualFXManager::DropAnimatedFXSetByID(int)
; decoder-mode: arm
00494660  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00494664  80 41 9f e5                                      ldr r4, [pc, #0x180]
00494668  00 60 51 e2                                      subs r6, r1, #0
0049466c  6c d0 4d e2                                      sub sp, sp, #0x6c
00494670  00 50 a0 e1                                      mov r5, r0
00494674  04 40 8f e0                                      add r4, pc, r4
00494678  59 00 00 ba                                      blt #0x4947e4
0049467c  6c 31 9f e5                                      ldr r3, [pc, #0x16c]
00494680  03 30 94 e7                                      ldr r3, [r4, r3]
00494684  00 30 93 e5                                      ldr r3, [r3]
00494688  03 00 56 e1                                      cmp r6, r3
0049468c  54 00 00 aa                                      bge #0x4947e4
00494690  5c b1 9f e5                                      ldr fp, [pc, #0x15c]
00494694  18 90 a0 e3                                      mov sb, #0x18
00494698  1c 70 90 e5                                      ldr r7, [r0, #0x1c]
0049469c  0b e0 94 e7                                      ldr lr, [r4, fp]
004946a0  99 06 06 e0                                      mul r6, sb, r6
004946a4  08 80 9e e5                                      ldr r8, [lr, #8]
004946a8  06 20 97 e7                                      ldr r2, [r7, r6]
004946ac  00 c0 a0 e3                                      mov ip, #0
004946b0  0c 30 a0 e1                                      mov r3, ip
004946b4  08 20 92 e5                                      ldr r2, [r2, #8]
004946b8  60 80 8d e5                                      str r8, [sp, #0x60]
004946bc  00 80 9e e5                                      ldr r8, [lr]
004946c0  34 a0 8d e2                                      add sl, sp, #0x34
004946c4  58 80 8d e5                                      str r8, [sp, #0x58]
004946c8  04 80 9e e5                                      ldr r8, [lr, #4]
004946cc  06 e0 87 e0                                      add lr, r7, r6
004946d0  14 e0 8d e5                                      str lr, [sp, #0x14]
004946d4  58 e0 9d e5                                      ldr lr, [sp, #0x58]
004946d8  00 c0 8d e5                                      str ip, [sp]
004946dc  04 c0 8d e5                                      str ip, [sp, #4]
004946e0  4c e0 8d e5                                      str lr, [sp, #0x4c]
004946e4  60 e0 9d e5                                      ldr lr, [sp, #0x60]
004946e8  50 80 8d e5                                      str r8, [sp, #0x50]
004946ec  5c 80 8d e5                                      str r8, [sp, #0x5c]
004946f0  54 e0 8d e5                                      str lr, [sp, #0x54]
004946f4  58 e0 8d e2                                      add lr, sp, #0x58
004946f8  08 e0 8d e5                                      str lr, [sp, #8]
004946fc  4c e0 8d e2                                      add lr, sp, #0x4c
00494700  0c e0 8d e5                                      str lr, [sp, #0xc]
00494704  ab fb ff eb                                      bl #0x4935b8
00494708  14 10 9d e5                                      ldr r1, [sp, #0x14]
0049470c  00 80 a0 e1                                      mov r8, r0
00494710  0a 00 a0 e1                                      mov r0, sl
00494714  82 fc ff eb                                      bl #0x493924
00494718  05 10 a0 e1                                      mov r1, r5
0049471c  0a 20 a0 e1                                      mov r2, sl
00494720  08 30 a0 e1                                      mov r3, r8
00494724  09 00 8d e0                                      add r0, sp, sb
00494728  2d fb ff eb                                      bl #0x4933e4
0049472c  0a 00 a0 e1                                      mov r0, sl
00494730  68 fe ff eb                                      bl #0x4940d8
00494734  06 30 97 e7                                      ldr r3, [r7, r6]
00494738  04 20 98 e5                                      ldr r2, [r8, #4]
0049473c  30 c0 a0 e3                                      mov ip, #0x30
00494740  10 10 93 e5                                      ldr r1, [r3, #0x10]
00494744  28 30 95 e5                                      ldr r3, [r5, #0x28]
00494748  08 00 a0 e1                                      mov r0, r8
0049474c  9c 12 22 e0                                      mla r2, ip, r2, r1
00494750  04 20 92 e5                                      ldr r2, [r2, #4]
00494754  99 32 29 e0                                      mla sb, sb, r2, r3
00494758  38 ef f9 eb                                      bl #0x310440
0049475c  09 50 a0 e1                                      mov r5, sb
00494760  10 30 b5 e5                                      ldr r3, [r5, #0x10]!
00494764  05 00 53 e1                                      cmp r3, r5
00494768  1d 00 00 0a                                      beq #0x4947e4
0049476c  03 20 a0 e1                                      mov r2, r3
00494770  00 20 92 e5                                      ldr r2, [r2]
00494774  02 00 55 e1                                      cmp r5, r2
00494778  fc ff ff 1a                                      bne #0x494770
0049477c  08 30 93 e5                                      ldr r3, [r3, #8]
00494780  68 10 8d e2                                      add r1, sp, #0x68
00494784  04 00 89 e2                                      add r0, sb, #4
00494788  04 30 21 e5                                      str r3, [r1, #-4]!
0049478c  6f ff ff eb                                      bl #0x494550
00494790  05 00 a0 e1                                      mov r0, r5
00494794  1a fd ff eb                                      bl #0x493c04
00494798  0b 30 94 e7                                      ldr r3, [r4, fp]
0049479c  64 00 9d e5                                      ldr r0, [sp, #0x64]
004947a0  00 10 a0 e3                                      mov r1, #0
004947a4  00 c0 93 e5                                      ldr ip, [r3]
004947a8  04 20 93 e5                                      ldr r2, [r3, #4]
004947ac  08 30 93 e5                                      ldr r3, [r3, #8]
004947b0  34 c0 80 e5                                      str ip, [r0, #0x34]
004947b4  38 20 80 e5                                      str r2, [r0, #0x38]
004947b8  3c 30 80 e5                                      str r3, [r0, #0x3c]
004947bc  b7 f8 ff eb                                      bl #0x492aa0
004947c0  64 30 9d e5                                      ldr r3, [sp, #0x64]
004947c4  00 40 a0 e3                                      mov r4, #0
004947c8  01 10 a0 e3                                      mov r1, #1
004947cc  03 00 a0 e1                                      mov r0, r3
004947d0  28 40 83 e5                                      str r4, [r3, #0x28]
004947d4  b1 f8 ff eb                                      bl #0x492aa0
004947d8  04 10 a0 e1                                      mov r1, r4
004947dc  64 00 9d e5                                      ldr r0, [sp, #0x64]
004947e0  c2 f9 ff eb                                      bl #0x492ef0
004947e4  6c d0 8d e2                                      add sp, sp, #0x6c
004947e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
004947ec  1c 04 50 00 c4 06 00 00 2c 3f 00 00              .byte 0x1c, 0x04, 0x50, 0x00, 0xc4, 0x06, 0x00, 0x00, 0x2c, 0x3f, 0x00, 0x00

; FUNCTION 0x00494978, declared_size=316, range_size=316, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager14DropAnimatedFXERP10AnimatedFX
; demangled: VisualFXManager::DropAnimatedFX(AnimatedFX*&)
; decoder-mode: arm
00494978  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0049497c  00 30 91 e5                                      ldr r3, [r1]
00494980  24 61 9f e5                                      ldr r6, [pc, #0x124]
00494984  01 50 a0 e1                                      mov r5, r1
00494988  00 00 53 e3                                      cmp r3, #0
0049498c  06 60 8f e0                                      add r6, pc, r6
00494990  13 00 00 0a                                      beq #0x4949e4
00494994  04 20 d0 e5                                      ldrb r2, [r0, #4]
00494998  00 00 52 e3                                      cmp r2, #0
0049499c  11 00 00 0a                                      beq #0x4949e8
004949a0  08 30 93 e5                                      ldr r3, [r3, #8]
004949a4  00 00 53 e3                                      cmp r3, #0
004949a8  0a 00 00 ba                                      blt #0x4949d8
004949ac  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
004949b0  28 00 90 e5                                      ldr r0, [r0, #0x28]
004949b4  02 20 60 e0                                      rsb r2, r0, r2
004949b8  c2 21 a0 e1                                      asr r2, r2, #3
004949bc  02 11 82 e0                                      add r1, r2, r2, lsl #2
004949c0  01 12 81 e0                                      add r1, r1, r1, lsl #4
004949c4  01 14 81 e0                                      add r1, r1, r1, lsl #8
004949c8  01 18 81 e0                                      add r1, r1, r1, lsl #16
004949cc  81 20 82 e0                                      add r2, r2, r1, lsl #1
004949d0  02 00 53 e1                                      cmp r3, r2
004949d4  05 00 00 3a                                      blo #0x4949f0
004949d8  00 30 a0 e3                                      mov r3, #0
004949dc  00 30 85 e5                                      str r3, [r5]
004949e0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004949e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004949e8  00 20 81 e5                                      str r2, [r1]
004949ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004949f0  18 80 a0 e3                                      mov r8, #0x18
004949f4  98 03 28 e0                                      mla r8, r8, r3, r0
004949f8  08 70 a0 e1                                      mov r7, r8
004949fc  10 00 b7 e5                                      ldr r0, [r7, #0x10]!
00494a00  00 00 57 e1                                      cmp r7, r0
00494a04  07 00 00 0a                                      beq #0x494a28
00494a08  08 30 90 e5                                      ldr r3, [r0, #8]
00494a0c  00 20 95 e5                                      ldr r2, [r5]
00494a10  00 40 90 e5                                      ldr r4, [r0]
00494a14  03 00 52 e1                                      cmp r2, r3
00494a18  1c 00 00 0a                                      beq #0x494a90
00494a1c  04 00 a0 e1                                      mov r0, r4
00494a20  00 00 57 e1                                      cmp r7, r0
00494a24  f7 ff ff 1a                                      bne #0x494a08
00494a28  04 00 88 e2                                      add r0, r8, #4
00494a2c  05 10 a0 e1                                      mov r1, r5
00494a30  c6 fe ff eb                                      bl #0x494550
00494a34  00 30 95 e5                                      ldr r3, [r5]
00494a38  00 40 a0 e3                                      mov r4, #0
00494a3c  01 10 a0 e3                                      mov r1, #1
00494a40  03 00 a0 e1                                      mov r0, r3
00494a44  28 40 83 e5                                      str r4, [r3, #0x28]
00494a48  14 f8 ff eb                                      bl #0x492aa0
00494a4c  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00494a50  00 30 95 e5                                      ldr r3, [r5]
00494a54  04 10 a0 e1                                      mov r1, r4
00494a58  02 20 96 e7                                      ldr r2, [r6, r2]
00494a5c  03 00 a0 e1                                      mov r0, r3
00494a60  00 e0 92 e5                                      ldr lr, [r2]
00494a64  04 c0 92 e5                                      ldr ip, [r2, #4]
00494a68  08 20 92 e5                                      ldr r2, [r2, #8]
00494a6c  34 e0 83 e5                                      str lr, [r3, #0x34]
00494a70  38 c0 83 e5                                      str ip, [r3, #0x38]
00494a74  3c 20 83 e5                                      str r2, [r3, #0x3c]
00494a78  08 f8 ff eb                                      bl #0x492aa0
00494a7c  00 00 95 e5                                      ldr r0, [r5]
00494a80  04 10 a0 e1                                      mov r1, r4
00494a84  19 f9 ff eb                                      bl #0x492ef0
00494a88  00 40 85 e5                                      str r4, [r5]
00494a8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00494a90  04 30 90 e5                                      ldr r3, [r0, #4]
00494a94  0c 10 a0 e3                                      mov r1, #0xc
00494a98  00 40 83 e5                                      str r4, [r3]
00494a9c  04 30 84 e5                                      str r3, [r4, #4]
00494aa0  16 d1 09 eb                                      bl #0x708f00
00494aa4  04 00 a0 e1                                      mov r0, r4
00494aa8  dc ff ff ea                                      b #0x494a20
; mapping-symbol data/literal pool
00494aac  04 01 50 00 2c 3f 00 00                          .byte 0x04, 0x01, 0x50, 0x00, 0x2c, 0x3f, 0x00, 0x00

; FUNCTION 0x00494ad4, declared_size=308, range_size=308, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager10_GetAnimFXEi
; demangled: VisualFXManager::_GetAnimFX(int)
; decoder-mode: arm
00494ad4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00494ad8  18 a1 9f e5                                      ldr sl, [pc, #0x118]
00494adc  00 70 51 e2                                      subs r7, r1, #0
00494ae0  0c d0 4d e2                                      sub sp, sp, #0xc
00494ae4  0a a0 8f e0                                      add sl, pc, sl
00494ae8  03 00 00 aa                                      bge #0x494afc
00494aec  00 50 a0 e3                                      mov r5, #0
00494af0  05 00 a0 e1                                      mov r0, r5
00494af4  0c d0 8d e2                                      add sp, sp, #0xc
00494af8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00494afc  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
00494b00  03 30 9a e7                                      ldr r3, [sl, r3]
00494b04  00 30 93 e5                                      ldr r3, [r3]
00494b08  03 00 57 e1                                      cmp r7, r3
00494b0c  f6 ff ff aa                                      bge #0x494aec
00494b10  28 30 90 e5                                      ldr r3, [r0, #0x28]
00494b14  18 80 a0 e3                                      mov r8, #0x18
00494b18  98 37 28 e0                                      mla r8, r8, r7, r3
00494b1c  08 20 98 e5                                      ldr r2, [r8, #8]
00494b20  04 30 98 e5                                      ldr r3, [r8, #4]
00494b24  02 30 63 e0                                      rsb r3, r3, r2
00494b28  43 31 b0 e1                                      asrs r3, r3, #2
00494b2c  27 00 00 1a                                      bne #0x494bd0
00494b30  08 60 a0 e1                                      mov r6, r8
00494b34  10 40 b6 e5                                      ldr r4, [r6, #0x10]!
00494b38  06 00 54 e1                                      cmp r4, r6
00494b3c  05 00 00 0a                                      beq #0x494b58
00494b40  00 40 94 e5                                      ldr r4, [r4]
00494b44  01 30 83 e2                                      add r3, r3, #1
00494b48  04 00 56 e1                                      cmp r6, r4
00494b4c  fb ff ff 1a                                      bne #0x494b40
00494b50  05 00 53 e3                                      cmp r3, #5
00494b54  e4 ff ff 8a                                      bhi #0x494aec
00494b58  00 10 a0 e3                                      mov r1, #0
00494b5c  54 00 a0 e3                                      mov r0, #0x54
00494b60  82 ee f9 eb                                      bl #0x310570
00494b64  07 10 a0 e1                                      mov r1, r7
00494b68  00 50 a0 e1                                      mov r5, r0
00494b6c  00 f6 ff eb                                      bl #0x492374
00494b70  88 30 9f e5                                      ldr r3, [pc, #0x88]
00494b74  0c 00 a0 e3                                      mov r0, #0xc
00494b78  84 20 9f e5                                      ldr r2, [pc, #0x84]
00494b7c  03 10 9a e7                                      ldr r1, [sl, r3]
00494b80  00 c0 e0 e3                                      mvn ip, #0
00494b84  fe 35 a0 e3                                      mov r3, #0x3f800000
00494b88  00 10 91 e5                                      ldr r1, [r1]
00494b8c  02 20 8f e0                                      add r2, pc, r2
00494b90  90 17 27 e0                                      mla r7, r0, r7, r1
00494b94  05 00 a0 e1                                      mov r0, r5
00494b98  08 10 97 e5                                      ldr r1, [r7, #8]
00494b9c  00 c0 8d e5                                      str ip, [sp]
00494ba0  01 c0 a0 e3                                      mov ip, #1
00494ba4  04 c0 8d e5                                      str ip, [sp, #4]
00494ba8  6f f7 ff eb                                      bl #0x49296c
00494bac  06 00 a0 e1                                      mov r0, r6
00494bb0  bf ff ff eb                                      bl #0x494ab4
00494bb4  08 50 80 e5                                      str r5, [r0, #8]
00494bb8  14 30 98 e5                                      ldr r3, [r8, #0x14]
00494bbc  00 40 80 e5                                      str r4, [r0]
00494bc0  04 30 80 e5                                      str r3, [r0, #4]
00494bc4  00 00 83 e5                                      str r0, [r3]
00494bc8  14 00 88 e5                                      str r0, [r8, #0x14]
00494bcc  c7 ff ff ea                                      b #0x494af0
00494bd0  04 50 12 e5                                      ldr r5, [r2, #-4]
00494bd4  fe 15 a0 e3                                      mov r1, #0x3f800000
00494bd8  10 40 88 e2                                      add r4, r8, #0x10
00494bdc  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
00494be0  c8 76 ff eb                                      bl #0x472708
00494be4  08 30 98 e5                                      ldr r3, [r8, #8]
00494be8  04 00 a0 e1                                      mov r0, r4
00494bec  04 30 43 e2                                      sub r3, r3, #4
00494bf0  08 30 88 e5                                      str r3, [r8, #8]
00494bf4  ed ff ff ea                                      b #0x494bb0
; mapping-symbol data/literal pool
00494bf8  ac ff 4f 00 88 0b 00 00 b8 16 00 00 7c 6c 43 00  .byte 0xac, 0xff, 0x4f, 0x00, 0x88, 0x0b, 0x00, 0x00, 0xb8, 0x16, 0x00, 0x00, 0x7c, 0x6c, 0x43, 0x00

; FUNCTION 0x00494e3c, declared_size=612, range_size=612, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager14_FlushAnimDictEv
; demangled: VisualFXManager::_FlushAnimDict()
; decoder-mode: arm
00494e3c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00494e40  00 50 a0 e1                                      mov r5, r0
00494e44  0c d0 4d e2                                      sub sp, sp, #0xc
00494e48  00 40 a0 e1                                      mov r4, r0
00494e4c  08 60 b5 e5                                      ldr r6, [r5, #8]!
00494e50  03 00 00 ea                                      b #0x494e64
00494e54  08 10 86 e2                                      add r1, r6, #8
00494e58  04 00 a0 e1                                      mov r0, r4
00494e5c  c5 fe ff eb                                      bl #0x494978
00494e60  00 60 96 e5                                      ldr r6, [r6]
00494e64  05 00 56 e1                                      cmp r6, r5
00494e68  f9 ff ff 1a                                      bne #0x494e54
00494e6c  28 80 94 e5                                      ldr r8, [r4, #0x28]
00494e70  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00494e74  03 20 68 e0                                      rsb r2, r8, r3
00494e78  c2 21 a0 e1                                      asr r2, r2, #3
00494e7c  02 11 82 e0                                      add r1, r2, r2, lsl #2
00494e80  01 12 81 e0                                      add r1, r1, r1, lsl #4
00494e84  01 14 81 e0                                      add r1, r1, r1, lsl #8
00494e88  01 18 81 e0                                      add r1, r1, r1, lsl #16
00494e8c  81 20 82 e0                                      add r2, r2, r1, lsl #1
00494e90  00 00 52 e3                                      cmp r2, #0
00494e94  36 00 00 0a                                      beq #0x494f74
00494e98  00 90 a0 e3                                      mov sb, #0
00494e9c  09 b0 a0 e1                                      mov fp, sb
00494ea0  09 a0 a0 e1                                      mov sl, sb
00494ea4  09 80 88 e0                                      add r8, r8, sb
00494ea8  08 20 98 e5                                      ldr r2, [r8, #8]
00494eac  04 70 98 e5                                      ldr r7, [r8, #4]
00494eb0  02 30 67 e0                                      rsb r3, r7, r2
00494eb4  23 31 b0 e1                                      lsrs r3, r3, #2
00494eb8  0e 00 00 0a                                      beq #0x494ef8
00494ebc  00 60 a0 e3                                      mov r6, #0
00494ec0  06 31 97 e7                                      ldr r3, [r7, r6, lsl #2]
00494ec4  00 00 53 e3                                      cmp r3, #0
00494ec8  06 00 00 0a                                      beq #0x494ee8
00494ecc  03 00 a0 e1                                      mov r0, r3
00494ed0  00 30 93 e5                                      ldr r3, [r3]
00494ed4  0f e0 a0 e1                                      mov lr, pc
00494ed8  04 f0 93 e5                                      ldr pc, [r3, #4]
00494edc  06 a1 87 e7                                      str sl, [r7, r6, lsl #2]
00494ee0  08 20 98 e5                                      ldr r2, [r8, #8]
00494ee4  04 70 98 e5                                      ldr r7, [r8, #4]
00494ee8  01 60 86 e2                                      add r6, r6, #1
00494eec  02 30 67 e0                                      rsb r3, r7, r2
00494ef0  43 01 56 e1                                      cmp r6, r3, asr #2
00494ef4  f1 ff ff 3a                                      blo #0x494ec0
00494ef8  07 00 52 e1                                      cmp r2, r7
00494efc  08 70 88 15                                      strne r7, [r8, #8]
00494f00  10 60 b8 e5                                      ldr r6, [r8, #0x10]!
00494f04  08 00 56 e1                                      cmp r6, r8
00494f08  0a 00 00 0a                                      beq #0x494f38
00494f0c  08 30 96 e5                                      ldr r3, [r6, #8]
00494f10  00 00 53 e3                                      cmp r3, #0
00494f14  04 00 00 0a                                      beq #0x494f2c
00494f18  03 00 a0 e1                                      mov r0, r3
00494f1c  00 30 93 e5                                      ldr r3, [r3]
00494f20  0f e0 a0 e1                                      mov lr, pc
00494f24  04 f0 93 e5                                      ldr pc, [r3, #4]
00494f28  08 a0 86 e5                                      str sl, [r6, #8]
00494f2c  00 60 96 e5                                      ldr r6, [r6]
00494f30  08 00 56 e1                                      cmp r6, r8
00494f34  f4 ff ff 1a                                      bne #0x494f0c
00494f38  06 00 a0 e1                                      mov r0, r6
00494f3c  30 fb ff eb                                      bl #0x493c04
00494f40  28 80 94 e5                                      ldr r8, [r4, #0x28]
00494f44  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00494f48  01 b0 8b e2                                      add fp, fp, #1
00494f4c  18 90 89 e2                                      add sb, sb, #0x18
00494f50  03 20 68 e0                                      rsb r2, r8, r3
00494f54  c2 21 a0 e1                                      asr r2, r2, #3
00494f58  02 11 82 e0                                      add r1, r2, r2, lsl #2
00494f5c  01 12 81 e0                                      add r1, r1, r1, lsl #4
00494f60  01 14 81 e0                                      add r1, r1, r1, lsl #8
00494f64  01 18 81 e0                                      add r1, r1, r1, lsl #16
00494f68  81 20 82 e0                                      add r2, r2, r1, lsl #1
00494f6c  02 00 5b e1                                      cmp fp, r2
00494f70  cb ff ff 3a                                      blo #0x494ea4
00494f74  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00494f78  20 20 94 e5                                      ldr r2, [r4, #0x20]
00494f7c  02 00 61 e0                                      rsb r0, r1, r2
00494f80  c0 01 a0 e1                                      asr r0, r0, #3
00494f84  00 c1 80 e0                                      add ip, r0, r0, lsl #2
00494f88  0c c2 8c e0                                      add ip, ip, ip, lsl #4
00494f8c  0c c4 8c e0                                      add ip, ip, ip, lsl #8
00494f90  0c c8 8c e0                                      add ip, ip, ip, lsl #16
00494f94  8c 00 80 e0                                      add r0, r0, ip, lsl #1
00494f98  00 00 50 e3                                      cmp r0, #0
00494f9c  2b 00 00 0a                                      beq #0x495050
00494fa0  00 90 a0 e3                                      mov sb, #0
00494fa4  09 b0 a0 e1                                      mov fp, sb
00494fa8  09 70 a0 e1                                      mov r7, sb
00494fac  09 a0 81 e0                                      add sl, r1, sb
00494fb0  0a 80 a0 e1                                      mov r8, sl
00494fb4  10 60 b8 e5                                      ldr r6, [r8, #0x10]!
00494fb8  08 00 56 e1                                      cmp r6, r8
00494fbc  07 00 00 0a                                      beq #0x494fe0
00494fc0  08 00 96 e5                                      ldr r0, [r6, #8]
00494fc4  00 00 50 e3                                      cmp r0, #0
00494fc8  01 00 00 0a                                      beq #0x494fd4
00494fcc  1b ed f9 eb                                      bl #0x310440
00494fd0  08 70 86 e5                                      str r7, [r6, #8]
00494fd4  00 60 96 e5                                      ldr r6, [r6]
00494fd8  08 00 56 e1                                      cmp r6, r8
00494fdc  f7 ff ff 1a                                      bne #0x494fc0
00494fe0  04 60 9a e5                                      ldr r6, [sl, #4]
00494fe4  08 30 9a e5                                      ldr r3, [sl, #8]
00494fe8  06 00 53 e1                                      cmp r3, r6
00494fec  08 00 00 0a                                      beq #0x495014
00494ff0  00 00 96 e5                                      ldr r0, [r6]
00494ff4  00 00 50 e3                                      cmp r0, #0
00494ff8  02 00 00 0a                                      beq #0x495008
00494ffc  0f ed f9 eb                                      bl #0x310440
00495000  00 70 86 e5                                      str r7, [r6]
00495004  08 30 9a e5                                      ldr r3, [sl, #8]
00495008  04 60 86 e2                                      add r6, r6, #4
0049500c  03 00 56 e1                                      cmp r6, r3
00495010  f6 ff ff 1a                                      bne #0x494ff0
00495014  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00495018  20 20 94 e5                                      ldr r2, [r4, #0x20]
0049501c  01 b0 8b e2                                      add fp, fp, #1
00495020  18 90 89 e2                                      add sb, sb, #0x18
00495024  02 30 61 e0                                      rsb r3, r1, r2
00495028  c3 31 a0 e1                                      asr r3, r3, #3
0049502c  03 01 83 e0                                      add r0, r3, r3, lsl #2
00495030  00 02 80 e0                                      add r0, r0, r0, lsl #4
00495034  00 04 80 e0                                      add r0, r0, r0, lsl #8
00495038  00 08 80 e0                                      add r0, r0, r0, lsl #16
0049503c  80 30 83 e0                                      add r3, r3, r0, lsl #1
00495040  03 00 5b e1                                      cmp fp, r3
00495044  d8 ff ff 3a                                      blo #0x494fac
00495048  28 80 94 e5                                      ldr r8, [r4, #0x28]
0049504c  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00495050  03 00 58 e1                                      cmp r8, r3
00495054  06 00 00 0a                                      beq #0x495074
00495058  03 20 a0 e1                                      mov r2, r3
0049505c  08 10 a0 e1                                      mov r1, r8
00495060  28 00 84 e2                                      add r0, r4, #0x28
00495064  04 30 8d e2                                      add r3, sp, #4
00495068  59 ff ff eb                                      bl #0x494dd4
0049506c  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00495070  20 20 94 e5                                      ldr r2, [r4, #0x20]
00495074  02 00 51 e1                                      cmp r1, r2
00495078  02 00 00 0a                                      beq #0x495088
0049507c  1c 00 84 e2                                      add r0, r4, #0x1c
00495080  0d 30 a0 e1                                      mov r3, sp
00495084  21 fe ff eb                                      bl #0x494910
00495088  05 00 a0 e1                                      mov r0, r5
0049508c  dc fa ff eb                                      bl #0x493c04
00495090  00 30 a0 e3                                      mov r3, #0
00495094  04 30 c4 e5                                      strb r3, [r4, #4]
00495098  0c d0 8d e2                                      add sp, sp, #0xc
0049509c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x004950a0, declared_size=4, range_size=4, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager14FlushLibrariesEv
; demangled: VisualFXManager::FlushLibraries()
; decoder-mode: arm
004950a0  65 ff ff ea                                      b #0x494e3c

; FUNCTION 0x004950a4, declared_size=140, range_size=140, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManagerD1Ev
; demangled: VisualFXManager::~VisualFXManager()
; decoder-mode: arm
004950a4  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
004950a8  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
004950ac  70 40 2d e9                                      push {r4, r5, r6, lr}
004950b0  03 30 8f e0                                      add r3, pc, r3
004950b4  02 20 93 e7                                      ldr r2, [r3, r2]
004950b8  00 50 a0 e1                                      mov r5, r0
004950bc  00 40 a0 e1                                      mov r4, r0
004950c0  08 20 82 e2                                      add r2, r2, #8
004950c4  28 20 85 e4                                      str r2, [r5], #0x28
004950c8  f4 ff ff eb                                      bl #0x4950a0
004950cc  05 00 a0 e1                                      mov r0, r5
004950d0  e0 fb ff eb                                      bl #0x494058
004950d4  1c 00 84 e2                                      add r0, r4, #0x1c
004950d8  87 fc ff eb                                      bl #0x4942fc
004950dc  10 00 94 e5                                      ldr r0, [r4, #0x10]
004950e0  10 30 84 e2                                      add r3, r4, #0x10
004950e4  00 00 50 e3                                      cmp r0, #0
004950e8  05 00 00 0a                                      beq #0x495104
004950ec  08 10 93 e5                                      ldr r1, [r3, #8]
004950f0  01 10 60 e0                                      rsb r1, r0, r1
004950f4  03 10 c1 e3                                      bic r1, r1, #3
004950f8  80 00 51 e3                                      cmp r1, #0x80
004950fc  04 00 00 8a                                      bhi #0x495114
00495100  7e cf 09 eb                                      bl #0x708f00
00495104  08 00 84 e2                                      add r0, r4, #8
00495108  bd fa ff eb                                      bl #0x493c04
0049510c  04 00 a0 e1                                      mov r0, r4
00495110  70 80 bd e8                                      pop {r4, r5, r6, pc}
00495114  c9 ec f9 eb                                      bl #0x310440
00495118  08 00 84 e2                                      add r0, r4, #8
0049511c  b8 fa ff eb                                      bl #0x493c04
00495120  04 00 a0 e1                                      mov r0, r4
00495124  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00495128  e0 f9 4f 00 30 34 00 00                          .byte 0xe0, 0xf9, 0x4f, 0x00, 0x30, 0x34, 0x00, 0x00

; FUNCTION 0x00495130, declared_size=28, range_size=28, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManagerD0Ev
; demangled: VisualFXManager::~VisualFXManager()
; decoder-mode: arm
00495130  10 40 2d e9                                      push {r4, lr}
00495134  00 40 a0 e1                                      mov r4, r0
00495138  d9 ff ff eb                                      bl #0x4950a4
0049513c  04 00 a0 e1                                      mov r0, r4
00495140  be ec f9 eb                                      bl #0x310440
00495144  04 00 a0 e1                                      mov r0, r4
00495148  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0049514c, declared_size=140, range_size=140, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManagerD2Ev
; demangled: VisualFXManager::~VisualFXManager()
; decoder-mode: arm
0049514c  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00495150  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00495154  70 40 2d e9                                      push {r4, r5, r6, lr}
00495158  03 30 8f e0                                      add r3, pc, r3
0049515c  02 20 93 e7                                      ldr r2, [r3, r2]
00495160  00 50 a0 e1                                      mov r5, r0
00495164  00 40 a0 e1                                      mov r4, r0
00495168  08 20 82 e2                                      add r2, r2, #8
0049516c  28 20 85 e4                                      str r2, [r5], #0x28
00495170  ca ff ff eb                                      bl #0x4950a0
00495174  05 00 a0 e1                                      mov r0, r5
00495178  b6 fb ff eb                                      bl #0x494058
0049517c  1c 00 84 e2                                      add r0, r4, #0x1c
00495180  5d fc ff eb                                      bl #0x4942fc
00495184  10 00 94 e5                                      ldr r0, [r4, #0x10]
00495188  10 30 84 e2                                      add r3, r4, #0x10
0049518c  00 00 50 e3                                      cmp r0, #0
00495190  05 00 00 0a                                      beq #0x4951ac
00495194  08 10 93 e5                                      ldr r1, [r3, #8]
00495198  01 10 60 e0                                      rsb r1, r0, r1
0049519c  03 10 c1 e3                                      bic r1, r1, #3
004951a0  80 00 51 e3                                      cmp r1, #0x80
004951a4  04 00 00 8a                                      bhi #0x4951bc
004951a8  54 cf 09 eb                                      bl #0x708f00
004951ac  08 00 84 e2                                      add r0, r4, #8
004951b0  93 fa ff eb                                      bl #0x493c04
004951b4  04 00 a0 e1                                      mov r0, r4
004951b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
004951bc  9f ec f9 eb                                      bl #0x310440
004951c0  08 00 84 e2                                      add r0, r4, #8
004951c4  8e fa ff eb                                      bl #0x493c04
004951c8  04 00 a0 e1                                      mov r0, r4
004951cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004951d0  38 f9 4f 00 30 34 00 00                          .byte 0x38, 0xf9, 0x4f, 0x00, 0x30, 0x34, 0x00, 0x00

; FUNCTION 0x00495364, declared_size=204, range_size=204, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager16_BuildAnimFXDictEv
; demangled: VisualFXManager::_BuildAnimFXDict()
; decoder-mode: arm
00495364  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00495368  b4 a0 9f e5                                      ldr sl, [pc, #0xb4]
0049536c  b4 90 9f e5                                      ldr sb, [pc, #0xb4]
00495370  24 d0 4d e2                                      sub sp, sp, #0x24
00495374  0a a0 8f e0                                      add sl, pc, sl
00495378  09 30 9a e7                                      ldr r3, [sl, sb]
0049537c  00 30 93 e5                                      ldr r3, [r3]
00495380  00 00 53 e3                                      cmp r3, #0
00495384  24 00 00 0a                                      beq #0x49541c
00495388  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
0049538c  00 60 a0 e3                                      mov r6, #0
00495390  08 70 8d e2                                      add r7, sp, #8
00495394  04 20 8d e5                                      str r2, [sp, #4]
00495398  28 b0 80 e2                                      add fp, r0, #0x28
0049539c  06 40 a0 e1                                      mov r4, r6
004953a0  06 50 a0 e1                                      mov r5, r6
004953a4  10 80 87 e2                                      add r8, r7, #0x10
004953a8  10 00 00 ea                                      b #0x4953f0
004953ac  04 20 9d e5                                      ldr r2, [sp, #4]
004953b0  02 30 9a e7                                      ldr r3, [sl, r2]
004953b4  00 30 93 e5                                      ldr r3, [r3]
004953b8  06 30 83 e0                                      add r3, r3, r6
004953bc  08 30 93 e5                                      ldr r3, [r3, #8]
004953c0  08 30 8d e5                                      str r3, [sp, #8]
004953c4  07 10 a0 e1                                      mov r1, r7
004953c8  0b 00 a0 e1                                      mov r0, fp
004953cc  9b ff ff eb                                      bl #0x495240
004953d0  07 00 a0 e1                                      mov r0, r7
004953d4  eb fa ff eb                                      bl #0x493f88
004953d8  09 30 9a e7                                      ldr r3, [sl, sb]
004953dc  01 40 84 e2                                      add r4, r4, #1
004953e0  0c 60 86 e2                                      add r6, r6, #0xc
004953e4  00 30 93 e5                                      ldr r3, [r3]
004953e8  04 00 53 e1                                      cmp r3, r4
004953ec  0a 00 00 9a                                      bls #0x49541c
004953f0  00 00 54 e3                                      cmp r4, #0
004953f4  0c 50 8d e5                                      str r5, [sp, #0xc]
004953f8  10 50 8d e5                                      str r5, [sp, #0x10]
004953fc  14 50 8d e5                                      str r5, [sp, #0x14]
00495400  18 80 8d e5                                      str r8, [sp, #0x18]
00495404  1c 80 8d e5                                      str r8, [sp, #0x1c]
00495408  01 00 00 ba                                      blt #0x495414
0049540c  04 00 53 e1                                      cmp r3, r4
00495410  e5 ff ff ca                                      bgt #0x4953ac
00495414  08 50 8d e5                                      str r5, [sp, #8]
00495418  e9 ff ff ea                                      b #0x4953c4
0049541c  24 d0 8d e2                                      add sp, sp, #0x24
00495420  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00495424  1c f7 4f 00 88 0b 00 00 b8 16 00 00              .byte 0x1c, 0xf7, 0x4f, 0x00, 0x88, 0x0b, 0x00, 0x00, 0xb8, 0x16, 0x00, 0x00

; FUNCTION 0x00495430, declared_size=648, range_size=648, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager10GrabAnimFXEiP10GameObject
; demangled: VisualFXManager::GrabAnimFX(int, GameObject*)
; decoder-mode: arm
00495430  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00495434  60 42 9f e5                                      ldr r4, [pc, #0x260]
00495438  60 52 9f e5                                      ldr r5, [pc, #0x260]
0049543c  60 c2 9f e5                                      ldr ip, [pc, #0x260]
00495440  04 40 8f e0                                      add r4, pc, r4
00495444  05 30 94 e7                                      ldr r3, [r4, r5]
00495448  0c a0 94 e7                                      ldr sl, [r4, ip]
0049544c  84 d0 4d e2                                      sub sp, sp, #0x84
00495450  00 30 93 e5                                      ldr r3, [r3]
00495454  00 80 a0 e1                                      mov r8, r0
00495458  0a 00 a0 e1                                      mov r0, sl
0049545c  7c 30 8d e5                                      str r3, [sp, #0x7c]
00495460  01 70 a0 e1                                      mov r7, r1
00495464  02 90 a0 e1                                      mov sb, r2
00495468  06 89 fa eb                                      bl #0x337888
0049546c  34 12 9f e5                                      ldr r1, [pc, #0x234]
00495470  64 60 8d e2                                      add r6, sp, #0x64
00495474  60 20 8d e2                                      add r2, sp, #0x60
00495478  01 10 8f e0                                      add r1, pc, r1
0049547c  06 00 a0 e1                                      mov r0, r6
00495480  19 fb f9 eb                                      bl #0x3140ec
00495484  0a 00 a0 e1                                      mov r0, sl
00495488  06 10 a0 e1                                      mov r1, r6
0049548c  8d 8a fa eb                                      bl #0x337ec8
00495490  00 a0 a0 e1                                      mov sl, r0
00495494  78 00 9d e5                                      ldr r0, [sp, #0x78]
00495498  06 00 50 e1                                      cmp r0, r6
0049549c  06 00 00 0a                                      beq #0x4954bc
004954a0  00 00 50 e3                                      cmp r0, #0
004954a4  04 00 00 0a                                      beq #0x4954bc
004954a8  64 10 9d e5                                      ldr r1, [sp, #0x64]
004954ac  01 10 60 e0                                      rsb r1, r0, r1
004954b0  80 00 51 e3                                      cmp r1, #0x80
004954b4  0b 00 00 8a                                      bhi #0x4954e8
004954b8  90 ce 09 eb                                      bl #0x708f00
004954bc  00 00 5a e3                                      cmp sl, #0
004954c0  0b 00 00 1a                                      bne #0x4954f4
004954c4  00 60 a0 e3                                      mov r6, #0
004954c8  05 30 94 e7                                      ldr r3, [r4, r5]
004954cc  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
004954d0  06 00 a0 e1                                      mov r0, r6
004954d4  00 30 93 e5                                      ldr r3, [r3]
004954d8  03 00 52 e1                                      cmp r2, r3
004954dc  6d 00 00 1a                                      bne #0x495698
004954e0  84 d0 8d e2                                      add sp, sp, #0x84
004954e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004954e8  d4 eb f9 eb                                      bl #0x310440
004954ec  00 00 5a e3                                      cmp sl, #0
004954f0  f3 ff ff 0a                                      beq #0x4954c4
004954f4  00 00 57 e3                                      cmp r7, #0
004954f8  f1 ff ff ba                                      blt #0x4954c4
004954fc  a8 31 9f e5                                      ldr r3, [pc, #0x1a8]
00495500  03 30 94 e7                                      ldr r3, [r4, r3]
00495504  00 30 93 e5                                      ldr r3, [r3]
00495508  03 00 57 e1                                      cmp r7, r3
0049550c  ec ff ff aa                                      bge #0x4954c4
00495510  18 a0 a0 e3                                      mov sl, #0x18
00495514  1c b0 98 e5                                      ldr fp, [r8, #0x1c]
00495518  9a 07 0a e0                                      mul sl, sl, r7
0049551c  08 00 a0 e1                                      mov r0, r8
00495520  0a 30 9b e7                                      ldr r3, [fp, sl]
00495524  0a 10 8b e0                                      add r1, fp, sl
00495528  14 10 8d e5                                      str r1, [sp, #0x14]
0049552c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00495530  04 10 93 e5                                      ldr r1, [r3, #4]
00495534  66 fd ff eb                                      bl #0x494ad4
00495538  00 60 50 e2                                      subs r6, r0, #0
0049553c  e1 ff ff 0a                                      beq #0x4954c8
00495540  0a 20 9b e7                                      ldr r2, [fp, sl]
00495544  14 30 92 e5                                      ldr r3, [r2, #0x14]
00495548  02 00 53 e3                                      cmp r3, #2
0049554c  00 30 a0 13                                      movne r3, #0
00495550  4b 00 00 0a                                      beq #0x495684
00495554  54 11 9f e5                                      ldr r1, [pc, #0x154]
00495558  00 c0 a0 e3                                      mov ip, #0
0049555c  08 20 92 e5                                      ldr r2, [r2, #8]
00495560  01 00 94 e7                                      ldr r0, [r4, r1]
00495564  07 10 a0 e1                                      mov r1, r7
00495568  1c 70 8d e2                                      add r7, sp, #0x1c
0049556c  04 e0 90 e5                                      ldr lr, [r0, #4]
00495570  08 b0 90 e5                                      ldr fp, [r0, #8]
00495574  00 a0 90 e5                                      ldr sl, [r0]
00495578  04 c0 8d e5                                      str ip, [sp, #4]
0049557c  54 c0 8d e2                                      add ip, sp, #0x54
00495580  08 c0 8d e5                                      str ip, [sp, #8]
00495584  08 00 a0 e1                                      mov r0, r8
00495588  48 c0 8d e2                                      add ip, sp, #0x48
0049558c  4c e0 8d e5                                      str lr, [sp, #0x4c]
00495590  0c c0 8d e5                                      str ip, [sp, #0xc]
00495594  58 e0 8d e5                                      str lr, [sp, #0x58]
00495598  48 a0 8d e5                                      str sl, [sp, #0x48]
0049559c  54 a0 8d e5                                      str sl, [sp, #0x54]
004955a0  50 b0 8d e5                                      str fp, [sp, #0x50]
004955a4  5c b0 8d e5                                      str fp, [sp, #0x5c]
004955a8  00 90 8d e5                                      str sb, [sp]
004955ac  01 f8 ff eb                                      bl #0x4935b8
004955b0  14 10 9d e5                                      ldr r1, [sp, #0x14]
004955b4  00 a0 a0 e1                                      mov sl, r0
004955b8  07 00 a0 e1                                      mov r0, r7
004955bc  d8 f8 ff eb                                      bl #0x493924
004955c0  08 10 a0 e1                                      mov r1, r8
004955c4  0a 30 a0 e1                                      mov r3, sl
004955c8  07 20 a0 e1                                      mov r2, r7
004955cc  34 00 8d e2                                      add r0, sp, #0x34
004955d0  83 f7 ff eb                                      bl #0x4933e4
004955d4  14 20 9d e5                                      ldr r2, [sp, #0x14]
004955d8  07 00 a0 e1                                      mov r0, r7
004955dc  10 70 82 e2                                      add r7, r2, #0x10
004955e0  bc fa ff eb                                      bl #0x4940d8
004955e4  07 00 a0 e1                                      mov r0, r7
004955e8  89 f8 ff eb                                      bl #0x493814
004955ec  08 a0 80 e5                                      str sl, [r0, #8]
004955f0  14 10 9d e5                                      ldr r1, [sp, #0x14]
004955f4  00 30 a0 e1                                      mov r3, r0
004955f8  14 20 91 e5                                      ldr r2, [r1, #0x14]
004955fc  00 70 80 e5                                      str r7, [r0]
00495600  06 00 a0 e1                                      mov r0, r6
00495604  04 20 83 e5                                      str r2, [r3, #4]
00495608  00 30 82 e5                                      str r3, [r2]
0049560c  14 30 81 e5                                      str r3, [r1, #0x14]
00495610  28 90 86 e5                                      str sb, [r6, #0x28]
00495614  01 10 a0 e3                                      mov r1, #1
00495618  20 f5 ff eb                                      bl #0x492aa0
0049561c  06 00 a0 e1                                      mov r0, r6
00495620  01 10 a0 e3                                      mov r1, #1
00495624  1d f5 ff eb                                      bl #0x492aa0
00495628  06 00 a0 e1                                      mov r0, r6
0049562c  01 10 a0 e3                                      mov r1, #1
00495630  17 f4 ff eb                                      bl #0x492694
00495634  06 00 a0 e1                                      mov r0, r6
00495638  41 f4 ff eb                                      bl #0x492744
0049563c  38 e0 9d e5                                      ldr lr, [sp, #0x38]
00495640  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
00495644  34 10 dd e5                                      ldrb r1, [sp, #0x34]
00495648  00 e0 8d e5                                      str lr, [sp]
0049564c  00 e0 e0 e3                                      mvn lr, #0
00495650  00 c0 94 e7                                      ldr ip, [r4, r0]
00495654  04 e0 8d e5                                      str lr, [sp, #4]
00495658  44 e0 9d e5                                      ldr lr, [sp, #0x44]
0049565c  06 00 a0 e1                                      mov r0, r6
00495660  35 20 dd e5                                      ldrb r2, [sp, #0x35]
00495664  36 30 dd e5                                      ldrb r3, [sp, #0x36]
00495668  08 e0 8d e5                                      str lr, [sp, #8]
0049566c  0c c0 8d e5                                      str ip, [sp, #0xc]
00495670  05 f6 ff eb                                      bl #0x492e8c
00495674  06 00 a0 e1                                      mov r0, r6
00495678  01 10 a0 e3                                      mov r1, #1
0049567c  1b f6 ff eb                                      bl #0x492ef0
00495680  90 ff ff ea                                      b #0x4954c8
00495684  0c 00 92 e5                                      ldr r0, [r2, #0xc]
00495688  3c f8 ff eb                                      bl #0x493780
0049568c  0a 20 9b e7                                      ldr r2, [fp, sl]
00495690  00 30 a0 e1                                      mov r3, r0
00495694  ae ff ff ea                                      b #0x495554
00495698  1c e3 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0049569c  50 f6 4f 00 ac 40 00 00 84 08 00 00 d0 fb 43 00  .byte 0x50, 0xf6, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xd0, 0xfb, 0x43, 0x00
004956ac  c4 06 00 00 2c 3f 00 00 38 4c 00 00              .byte 0xc4, 0x06, 0x00, 0x00, 0x2c, 0x3f, 0x00, 0x00, 0x38, 0x4c, 0x00, 0x00

; FUNCTION 0x004956b8, declared_size=464, range_size=464, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager10PlayAnimFXEiRK7Point3DIfES3_PK10GameObjectPNS_10AnimFXDataE
; demangled: VisualFXManager::PlayAnimFX(int, Point3D<float> const&, Point3D<float> const&, GameObject const*, VisualFXManager::AnimFXData*)
; decoder-mode: arm
004956b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004956bc  b0 41 9f e5                                      ldr r4, [pc, #0x1b0]
004956c0  b0 71 9f e5                                      ldr r7, [pc, #0x1b0]
004956c4  b0 e1 9f e5                                      ldr lr, [pc, #0x1b0]
004956c8  04 40 8f e0                                      add r4, pc, r4
004956cc  07 c0 94 e7                                      ldr ip, [r4, r7]
004956d0  0e 50 94 e7                                      ldr r5, [r4, lr]
004956d4  3c d0 4d e2                                      sub sp, sp, #0x3c
004956d8  00 c0 9c e5                                      ldr ip, [ip]
004956dc  10 00 8d e5                                      str r0, [sp, #0x10]
004956e0  05 00 a0 e1                                      mov r0, r5
004956e4  14 30 8d e5                                      str r3, [sp, #0x14]
004956e8  34 c0 8d e5                                      str ip, [sp, #0x34]
004956ec  01 90 a0 e1                                      mov sb, r1
004956f0  02 80 a0 e1                                      mov r8, r2
004956f4  60 b0 9d e5                                      ldr fp, [sp, #0x60]
004956f8  64 60 9d e5                                      ldr r6, [sp, #0x64]
004956fc  61 88 fa eb                                      bl #0x337888
00495700  78 11 9f e5                                      ldr r1, [pc, #0x178]
00495704  1c a0 8d e2                                      add sl, sp, #0x1c
00495708  18 20 8d e2                                      add r2, sp, #0x18
0049570c  01 10 8f e0                                      add r1, pc, r1
00495710  0a 00 a0 e1                                      mov r0, sl
00495714  74 fa f9 eb                                      bl #0x3140ec
00495718  05 00 a0 e1                                      mov r0, r5
0049571c  0a 10 a0 e1                                      mov r1, sl
00495720  e8 89 fa eb                                      bl #0x337ec8
00495724  00 50 a0 e1                                      mov r5, r0
00495728  30 00 9d e5                                      ldr r0, [sp, #0x30]
0049572c  0a 00 50 e1                                      cmp r0, sl
00495730  06 00 00 0a                                      beq #0x495750
00495734  00 00 50 e3                                      cmp r0, #0
00495738  04 00 00 0a                                      beq #0x495750
0049573c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00495740  01 10 60 e0                                      rsb r1, r0, r1
00495744  80 00 51 e3                                      cmp r1, #0x80
00495748  39 00 00 8a                                      bhi #0x495834
0049574c  eb cd 09 eb                                      bl #0x708f00
00495750  00 00 55 e3                                      cmp r5, #0
00495754  06 00 00 1a                                      bne #0x495774
00495758  07 30 94 e7                                      ldr r3, [r4, r7]
0049575c  34 20 9d e5                                      ldr r2, [sp, #0x34]
00495760  00 30 93 e5                                      ldr r3, [r3]
00495764  03 00 52 e1                                      cmp r2, r3
00495768  40 00 00 1a                                      bne #0x495870
0049576c  3c d0 8d e2                                      add sp, sp, #0x3c
00495770  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00495774  10 00 9d e5                                      ldr r0, [sp, #0x10]
00495778  09 10 a0 e1                                      mov r1, sb
0049577c  d4 fc ff eb                                      bl #0x494ad4
00495780  00 50 50 e2                                      subs r5, r0, #0
00495784  f3 ff ff 0a                                      beq #0x495758
00495788  04 20 98 e5                                      ldr r2, [r8, #4]
0049578c  08 30 98 e5                                      ldr r3, [r8, #8]
00495790  00 10 98 e5                                      ldr r1, [r8]
00495794  38 20 85 e5                                      str r2, [r5, #0x38]
00495798  3c 30 85 e5                                      str r3, [r5, #0x3c]
0049579c  34 10 85 e5                                      str r1, [r5, #0x34]
004957a0  00 10 a0 e3                                      mov r1, #0
004957a4  bd f4 ff eb                                      bl #0x492aa0
004957a8  05 00 a0 e1                                      mov r0, r5
004957ac  14 10 9d e5                                      ldr r1, [sp, #0x14]
004957b0  e1 f5 ff eb                                      bl #0x492f3c
004957b4  05 00 a0 e1                                      mov r0, r5
004957b8  01 10 a0 e3                                      mov r1, #1
004957bc  b4 f3 ff eb                                      bl #0x492694
004957c0  05 00 a0 e1                                      mov r0, r5
004957c4  de f3 ff eb                                      bl #0x492744
004957c8  00 00 56 e3                                      cmp r6, #0
004957cc  1a 00 00 0a                                      beq #0x49583c
004957d0  ac 00 9f e5                                      ldr r0, [pc, #0xac]
004957d4  04 a0 96 e5                                      ldr sl, [r6, #4]
004957d8  08 c0 96 e5                                      ldr ip, [r6, #8]
004957dc  10 e0 96 e5                                      ldr lr, [r6, #0x10]
004957e0  00 80 94 e7                                      ldr r8, [r4, r0]
004957e4  02 30 d6 e5                                      ldrb r3, [r6, #2]
004957e8  00 10 d6 e5                                      ldrb r1, [r6]
004957ec  01 20 d6 e5                                      ldrb r2, [r6, #1]
004957f0  05 00 a0 e1                                      mov r0, r5
004957f4  00 a0 8d e5                                      str sl, [sp]
004957f8  00 50 8d e9                                      stmib sp, {ip, lr}
004957fc  0c 80 8d e5                                      str r8, [sp, #0xc]
00495800  a1 f5 ff eb                                      bl #0x492e8c
00495804  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00495808  1c 30 85 e5                                      str r3, [r5, #0x1c]
0049580c  00 00 5b e3                                      cmp fp, #0
00495810  03 00 00 0a                                      beq #0x495824
00495814  28 b0 85 e5                                      str fp, [r5, #0x28]
00495818  05 00 a0 e1                                      mov r0, r5
0049581c  01 10 a0 e3                                      mov r1, #1
00495820  9e f4 ff eb                                      bl #0x492aa0
00495824  05 00 a0 e1                                      mov r0, r5
00495828  01 10 a0 e3                                      mov r1, #1
0049582c  af f5 ff eb                                      bl #0x492ef0
00495830  c8 ff ff ea                                      b #0x495758
00495834  01 eb f9 eb                                      bl #0x310440
00495838  c4 ff ff ea                                      b #0x495750
0049583c  40 30 9f e5                                      ldr r3, [pc, #0x40]
00495840  01 10 a0 e3                                      mov r1, #1
00495844  fe c5 a0 e3                                      mov ip, #0x3f800000
00495848  03 e0 94 e7                                      ldr lr, [r4, r3]
0049584c  06 20 a0 e1                                      mov r2, r6
00495850  05 00 a0 e1                                      mov r0, r5
00495854  01 30 a0 e1                                      mov r3, r1
00495858  00 c0 8d e5                                      str ip, [sp]
0049585c  0c e0 8d e5                                      str lr, [sp, #0xc]
00495860  04 60 8d e5                                      str r6, [sp, #4]
00495864  08 60 8d e5                                      str r6, [sp, #8]
00495868  87 f5 ff eb                                      bl #0x492e8c
0049586c  e6 ff ff ea                                      b #0x49580c
00495870  a6 e2 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00495874  c8 f3 4f 00 ac 40 00 00 84 08 00 00 3c f9 43 00  .byte 0xc8, 0xf3, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x3c, 0xf9, 0x43, 0x00
00495884  38 4c 00 00                                      .byte 0x38, 0x4c, 0x00, 0x00

; FUNCTION 0x00495888, declared_size=512, range_size=512, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager13PlayAnimFXSetEiRK7Point3DIfES3_PK10GameObjectPNS_13AnimFXSetDataE
; demangled: VisualFXManager::PlayAnimFXSet(int, Point3D<float> const&, Point3D<float> const&, GameObject const*, VisualFXManager::AnimFXSetData*)
; decoder-mode: arm
00495888  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0049588c  ec c1 9f e5                                      ldr ip, [pc, #0x1ec]
00495890  00 00 51 e3                                      cmp r1, #0
00495894  74 d0 4d e2                                      sub sp, sp, #0x74
00495898  0c c0 8f e0                                      add ip, pc, ip
0049589c  00 60 a0 e1                                      mov r6, r0
004958a0  02 50 a0 e1                                      mov r5, r2
004958a4  03 40 a0 e1                                      mov r4, r3
004958a8  5a 00 00 ba                                      blt #0x495a18
004958ac  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
004958b0  03 30 9c e7                                      ldr r3, [ip, r3]
004958b4  00 30 93 e5                                      ldr r3, [r3]
004958b8  03 00 51 e1                                      cmp r1, r3
004958bc  55 00 00 aa                                      bge #0x495a18
004958c0  18 b0 a0 e3                                      mov fp, #0x18
004958c4  9b 01 0b e0                                      mul fp, fp, r1
004958c8  1c 90 90 e5                                      ldr sb, [r0, #0x1c]
004958cc  0b 20 99 e7                                      ldr r2, [sb, fp]
004958d0  0b 70 89 e0                                      add r7, sb, fp
004958d4  14 30 92 e5                                      ldr r3, [r2, #0x14]
004958d8  02 00 53 e3                                      cmp r3, #2
004958dc  5c 00 00 0a                                      beq #0x495a54
004958e0  00 00 a0 e3                                      mov r0, #0
004958e4  18 00 8d e5                                      str r0, [sp, #0x18]
004958e8  24 00 8d e5                                      str r0, [sp, #0x24]
004958ec  00 30 a0 e1                                      mov r3, r0
004958f0  04 c0 95 e5                                      ldr ip, [r5, #4]
004958f4  08 20 92 e5                                      ldr r2, [r2, #8]
004958f8  2c 80 8d e2                                      add r8, sp, #0x2c
004958fc  14 c0 8d e5                                      str ip, [sp, #0x14]
00495900  04 00 94 e5                                      ldr r0, [r4, #4]
00495904  08 e0 95 e5                                      ldr lr, [r5, #8]
00495908  00 a0 94 e5                                      ldr sl, [r4]
0049590c  1c 00 8d e5                                      str r0, [sp, #0x1c]
00495910  08 c0 94 e5                                      ldr ip, [r4, #8]
00495914  06 00 a0 e1                                      mov r0, r6
00495918  20 c0 8d e5                                      str ip, [sp, #0x20]
0049591c  00 c0 95 e5                                      ldr ip, [r5]
00495920  6c e0 8d e5                                      str lr, [sp, #0x6c]
00495924  58 a0 8d e5                                      str sl, [sp, #0x58]
00495928  64 c0 8d e5                                      str ip, [sp, #0x64]
0049592c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00495930  68 c0 8d e5                                      str ip, [sp, #0x68]
00495934  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00495938  5c c0 8d e5                                      str ip, [sp, #0x5c]
0049593c  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00495940  60 c0 8d e5                                      str ip, [sp, #0x60]
00495944  64 c0 8d e2                                      add ip, sp, #0x64
00495948  08 c0 8d e5                                      str ip, [sp, #8]
0049594c  58 c0 8d e2                                      add ip, sp, #0x58
00495950  0c c0 8d e5                                      str ip, [sp, #0xc]
00495954  98 c0 9d e5                                      ldr ip, [sp, #0x98]
00495958  00 c0 8d e5                                      str ip, [sp]
0049595c  9c c0 9d e5                                      ldr ip, [sp, #0x9c]
00495960  04 c0 8d e5                                      str ip, [sp, #4]
00495964  13 f7 ff eb                                      bl #0x4935b8
00495968  44 30 8d e2                                      add r3, sp, #0x44
0049596c  00 a0 a0 e1                                      mov sl, r0
00495970  07 10 a0 e1                                      mov r1, r7
00495974  08 00 a0 e1                                      mov r0, r8
00495978  14 30 8d e5                                      str r3, [sp, #0x14]
0049597c  e8 f7 ff eb                                      bl #0x493924
00495980  08 20 a0 e1                                      mov r2, r8
00495984  0a 30 a0 e1                                      mov r3, sl
00495988  06 10 a0 e1                                      mov r1, r6
0049598c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00495990  93 f6 ff eb                                      bl #0x4933e4
00495994  08 00 a0 e1                                      mov r0, r8
00495998  10 80 87 e2                                      add r8, r7, #0x10
0049599c  cd f9 ff eb                                      bl #0x4940d8
004959a0  08 00 a0 e1                                      mov r0, r8
004959a4  9a f7 ff eb                                      bl #0x493814
004959a8  08 a0 80 e5                                      str sl, [r0, #8]
004959ac  14 30 97 e5                                      ldr r3, [r7, #0x14]
004959b0  00 80 80 e5                                      str r8, [r0]
004959b4  04 30 80 e5                                      str r3, [r0, #4]
004959b8  00 00 83 e5                                      str r0, [r3]
004959bc  14 00 87 e5                                      str r0, [r7, #0x14]
004959c0  0b 30 99 e7                                      ldr r3, [sb, fp]
004959c4  18 c0 9d e5                                      ldr ip, [sp, #0x18]
004959c8  10 20 93 e5                                      ldr r2, [r3, #0x10]
004959cc  0c 30 82 e0                                      add r3, r2, ip
004959d0  04 30 93 e5                                      ldr r3, [r3, #4]
004959d4  01 00 73 e3                                      cmn r3, #1
004959d8  10 00 00 0a                                      beq #0x495a20
004959dc  04 30 97 e5                                      ldr r3, [r7, #4]
004959e0  24 00 9d e5                                      ldr r0, [sp, #0x24]
004959e4  00 31 93 e7                                      ldr r3, [r3, r0, lsl #2]
004959e8  00 10 d3 e5                                      ldrb r1, [r3]
004959ec  00 00 51 e3                                      cmp r1, #0
004959f0  0a 00 00 0a                                      beq #0x495a20
004959f4  98 c0 9d e5                                      ldr ip, [sp, #0x98]
004959f8  04 10 93 e5                                      ldr r1, [r3, #4]
004959fc  06 00 a0 e1                                      mov r0, r6
00495a00  00 c0 8d e5                                      str ip, [sp]
00495a04  9c c0 9d e5                                      ldr ip, [sp, #0x9c]
00495a08  05 20 a0 e1                                      mov r2, r5
00495a0c  04 30 a0 e1                                      mov r3, r4
00495a10  04 c0 8d e5                                      str ip, [sp, #4]
00495a14  9b ff ff eb                                      bl #0x495888
00495a18  74 d0 8d e2                                      add sp, sp, #0x74
00495a1c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00495a20  04 30 9a e5                                      ldr r3, [sl, #4]
00495a24  30 10 a0 e3                                      mov r1, #0x30
00495a28  98 c0 9d e5                                      ldr ip, [sp, #0x98]
00495a2c  91 23 23 e0                                      mla r3, r1, r3, r2
00495a30  06 00 a0 e1                                      mov r0, r6
00495a34  04 10 93 e5                                      ldr r1, [r3, #4]
00495a38  00 c0 8d e5                                      str ip, [sp]
00495a3c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00495a40  05 20 a0 e1                                      mov r2, r5
00495a44  04 30 a0 e1                                      mov r3, r4
00495a48  04 c0 8d e5                                      str ip, [sp, #4]
00495a4c  19 ff ff eb                                      bl #0x4956b8
00495a50  f0 ff ff ea                                      b #0x495a18
00495a54  0c 00 92 e5                                      ldr r0, [r2, #0xc]
00495a58  10 10 8d e5                                      str r1, [sp, #0x10]
00495a5c  47 f7 ff eb                                      bl #0x493780
00495a60  30 20 a0 e3                                      mov r2, #0x30
00495a64  92 00 02 e0                                      mul r2, r2, r0
00495a68  00 30 a0 e1                                      mov r3, r0
00495a6c  18 20 8d e5                                      str r2, [sp, #0x18]
00495a70  0b 20 99 e7                                      ldr r2, [sb, fp]
00495a74  10 10 9d e5                                      ldr r1, [sp, #0x10]
00495a78  24 00 8d e5                                      str r0, [sp, #0x24]
00495a7c  9b ff ff ea                                      b #0x4958f0
; mapping-symbol data/literal pool
00495a80  f8 f1 4f 00 c4 06 00 00                          .byte 0xf8, 0xf1, 0x4f, 0x00, 0xc4, 0x06, 0x00, 0x00

; FUNCTION 0x00495a88, declared_size=204, range_size=204, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager17PreCacheLibrariesEv
; demangled: VisualFXManager::PreCacheLibraries()
; decoder-mode: arm
00495a88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00495a8c  b0 40 9f e5                                      ldr r4, [pc, #0xb0]
00495a90  b0 60 9f e5                                      ldr r6, [pc, #0xb0]
00495a94  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
00495a98  04 40 8f e0                                      add r4, pc, r4
00495a9c  06 30 94 e7                                      ldr r3, [r4, r6]
00495aa0  02 70 94 e7                                      ldr r7, [r4, r2]
00495aa4  20 d0 4d e2                                      sub sp, sp, #0x20
00495aa8  00 30 93 e5                                      ldr r3, [r3]
00495aac  00 80 a0 e1                                      mov r8, r0
00495ab0  07 00 a0 e1                                      mov r0, r7
00495ab4  1c 30 8d e5                                      str r3, [sp, #0x1c]
00495ab8  72 87 fa eb                                      bl #0x337888
00495abc  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
00495ac0  04 50 8d e2                                      add r5, sp, #4
00495ac4  0d 20 a0 e1                                      mov r2, sp
00495ac8  01 10 8f e0                                      add r1, pc, r1
00495acc  05 00 a0 e1                                      mov r0, r5
00495ad0  85 f9 f9 eb                                      bl #0x3140ec
00495ad4  07 00 a0 e1                                      mov r0, r7
00495ad8  05 10 a0 e1                                      mov r1, r5
00495adc  f9 88 fa eb                                      bl #0x337ec8
00495ae0  00 70 a0 e1                                      mov r7, r0
00495ae4  18 00 9d e5                                      ldr r0, [sp, #0x18]
00495ae8  05 00 50 e1                                      cmp r0, r5
00495aec  06 00 00 0a                                      beq #0x495b0c
00495af0  00 00 50 e3                                      cmp r0, #0
00495af4  04 00 00 0a                                      beq #0x495b0c
00495af8  04 10 9d e5                                      ldr r1, [sp, #4]
00495afc  01 10 60 e0                                      rsb r1, r0, r1
00495b00  80 00 51 e3                                      cmp r1, #0x80
00495b04  0b 00 00 8a                                      bhi #0x495b38
00495b08  fc cc 09 eb                                      bl #0x708f00
00495b0c  00 00 57 e3                                      cmp r7, #0
00495b10  01 00 00 0a                                      beq #0x495b1c
00495b14  08 00 a0 e1                                      mov r0, r8
00495b18  2e f6 ff eb                                      bl #0x4933d8
00495b1c  06 30 94 e7                                      ldr r3, [r4, r6]
00495b20  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00495b24  00 30 93 e5                                      ldr r3, [r3]
00495b28  03 00 52 e1                                      cmp r2, r3
00495b2c  03 00 00 1a                                      bne #0x495b40
00495b30  20 d0 8d e2                                      add sp, sp, #0x20
00495b34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00495b38  40 ea f9 eb                                      bl #0x310440
00495b3c  f2 ff ff ea                                      b #0x495b0c
00495b40  f2 e1 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00495b44  f8 ef 4f 00 ac 40 00 00 84 08 00 00 80 f5 43 00  .byte 0xf8, 0xef, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x80, 0xf5, 0x43, 0x00

; FUNCTION 0x00495b54, declared_size=448, range_size=448, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager10PlayAnimFXEiRK7Point3DIfEPK10GameObjectPNS_10AnimFXDataE
; demangled: VisualFXManager::PlayAnimFX(int, Point3D<float> const&, GameObject const*, VisualFXManager::AnimFXData*)
; decoder-mode: arm
00495b54  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00495b58  a0 41 9f e5                                      ldr r4, [pc, #0x1a0]
00495b5c  a0 71 9f e5                                      ldr r7, [pc, #0x1a0]
00495b60  a0 e1 9f e5                                      ldr lr, [pc, #0x1a0]
00495b64  04 40 8f e0                                      add r4, pc, r4
00495b68  07 c0 94 e7                                      ldr ip, [r4, r7]
00495b6c  0e 60 94 e7                                      ldr r6, [r4, lr]
00495b70  3c d0 4d e2                                      sub sp, sp, #0x3c
00495b74  00 c0 9c e5                                      ldr ip, [ip]
00495b78  14 00 8d e5                                      str r0, [sp, #0x14]
00495b7c  06 00 a0 e1                                      mov r0, r6
00495b80  03 b0 a0 e1                                      mov fp, r3
00495b84  34 c0 8d e5                                      str ip, [sp, #0x34]
00495b88  01 90 a0 e1                                      mov sb, r1
00495b8c  02 80 a0 e1                                      mov r8, r2
00495b90  60 50 9d e5                                      ldr r5, [sp, #0x60]
00495b94  3b 87 fa eb                                      bl #0x337888
00495b98  6c 11 9f e5                                      ldr r1, [pc, #0x16c]
00495b9c  1c a0 8d e2                                      add sl, sp, #0x1c
00495ba0  18 20 8d e2                                      add r2, sp, #0x18
00495ba4  01 10 8f e0                                      add r1, pc, r1
00495ba8  0a 00 a0 e1                                      mov r0, sl
00495bac  4e f9 f9 eb                                      bl #0x3140ec
00495bb0  06 00 a0 e1                                      mov r0, r6
00495bb4  0a 10 a0 e1                                      mov r1, sl
00495bb8  c2 88 fa eb                                      bl #0x337ec8
00495bbc  00 60 a0 e1                                      mov r6, r0
00495bc0  30 00 9d e5                                      ldr r0, [sp, #0x30]
00495bc4  0a 00 50 e1                                      cmp r0, sl
00495bc8  06 00 00 0a                                      beq #0x495be8
00495bcc  00 00 50 e3                                      cmp r0, #0
00495bd0  04 00 00 0a                                      beq #0x495be8
00495bd4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00495bd8  01 10 60 e0                                      rsb r1, r0, r1
00495bdc  80 00 51 e3                                      cmp r1, #0x80
00495be0  36 00 00 8a                                      bhi #0x495cc0
00495be4  c5 cc 09 eb                                      bl #0x708f00
00495be8  00 00 56 e3                                      cmp r6, #0
00495bec  06 00 00 1a                                      bne #0x495c0c
00495bf0  07 30 94 e7                                      ldr r3, [r4, r7]
00495bf4  34 20 9d e5                                      ldr r2, [sp, #0x34]
00495bf8  00 30 93 e5                                      ldr r3, [r3]
00495bfc  03 00 52 e1                                      cmp r2, r3
00495c00  3d 00 00 1a                                      bne #0x495cfc
00495c04  3c d0 8d e2                                      add sp, sp, #0x3c
00495c08  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00495c0c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00495c10  09 10 a0 e1                                      mov r1, sb
00495c14  ae fb ff eb                                      bl #0x494ad4
00495c18  00 60 50 e2                                      subs r6, r0, #0
00495c1c  f3 ff ff 0a                                      beq #0x495bf0
00495c20  04 20 98 e5                                      ldr r2, [r8, #4]
00495c24  08 30 98 e5                                      ldr r3, [r8, #8]
00495c28  00 10 98 e5                                      ldr r1, [r8]
00495c2c  38 20 86 e5                                      str r2, [r6, #0x38]
00495c30  3c 30 86 e5                                      str r3, [r6, #0x3c]
00495c34  34 10 86 e5                                      str r1, [r6, #0x34]
00495c38  00 10 a0 e3                                      mov r1, #0
00495c3c  97 f3 ff eb                                      bl #0x492aa0
00495c40  06 00 a0 e1                                      mov r0, r6
00495c44  01 10 a0 e3                                      mov r1, #1
00495c48  91 f2 ff eb                                      bl #0x492694
00495c4c  06 00 a0 e1                                      mov r0, r6
00495c50  bb f2 ff eb                                      bl #0x492744
00495c54  00 00 55 e3                                      cmp r5, #0
00495c58  1a 00 00 0a                                      beq #0x495cc8
00495c5c  ac 00 9f e5                                      ldr r0, [pc, #0xac]
00495c60  04 a0 95 e5                                      ldr sl, [r5, #4]
00495c64  08 c0 95 e5                                      ldr ip, [r5, #8]
00495c68  10 e0 95 e5                                      ldr lr, [r5, #0x10]
00495c6c  00 80 94 e7                                      ldr r8, [r4, r0]
00495c70  02 30 d5 e5                                      ldrb r3, [r5, #2]
00495c74  00 10 d5 e5                                      ldrb r1, [r5]
00495c78  01 20 d5 e5                                      ldrb r2, [r5, #1]
00495c7c  06 00 a0 e1                                      mov r0, r6
00495c80  00 a0 8d e5                                      str sl, [sp]
00495c84  00 50 8d e9                                      stmib sp, {ip, lr}
00495c88  0c 80 8d e5                                      str r8, [sp, #0xc]
00495c8c  7e f4 ff eb                                      bl #0x492e8c
00495c90  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00495c94  1c 30 86 e5                                      str r3, [r6, #0x1c]
00495c98  00 00 5b e3                                      cmp fp, #0
00495c9c  03 00 00 0a                                      beq #0x495cb0
00495ca0  28 b0 86 e5                                      str fp, [r6, #0x28]
00495ca4  06 00 a0 e1                                      mov r0, r6
00495ca8  01 10 a0 e3                                      mov r1, #1
00495cac  7b f3 ff eb                                      bl #0x492aa0
00495cb0  06 00 a0 e1                                      mov r0, r6
00495cb4  01 10 a0 e3                                      mov r1, #1
00495cb8  8c f4 ff eb                                      bl #0x492ef0
00495cbc  cb ff ff ea                                      b #0x495bf0
00495cc0  de e9 f9 eb                                      bl #0x310440
00495cc4  c7 ff ff ea                                      b #0x495be8
00495cc8  40 30 9f e5                                      ldr r3, [pc, #0x40]
00495ccc  01 10 a0 e3                                      mov r1, #1
00495cd0  fe c5 a0 e3                                      mov ip, #0x3f800000
00495cd4  03 e0 94 e7                                      ldr lr, [r4, r3]
00495cd8  05 20 a0 e1                                      mov r2, r5
00495cdc  06 00 a0 e1                                      mov r0, r6
00495ce0  01 30 a0 e1                                      mov r3, r1
00495ce4  00 c0 8d e5                                      str ip, [sp]
00495ce8  0c e0 8d e5                                      str lr, [sp, #0xc]
00495cec  04 50 8d e5                                      str r5, [sp, #4]
00495cf0  08 50 8d e5                                      str r5, [sp, #8]
00495cf4  64 f4 ff eb                                      bl #0x492e8c
00495cf8  e6 ff ff ea                                      b #0x495c98
00495cfc  83 e1 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00495d00  2c ef 4f 00 ac 40 00 00 84 08 00 00 a4 f4 43 00  .byte 0x2c, 0xef, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xa4, 0xf4, 0x43, 0x00
00495d10  38 4c 00 00                                      .byte 0x38, 0x4c, 0x00, 0x00

; FUNCTION 0x00495d14, declared_size=496, range_size=496, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager13PlayAnimFXSetEiRK7Point3DIfEPK10GameObjectPNS_13AnimFXSetDataE
; demangled: VisualFXManager::PlayAnimFXSet(int, Point3D<float> const&, GameObject const*, VisualFXManager::AnimFXSetData*)
; decoder-mode: arm
00495d14  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00495d18  d8 71 9f e5                                      ldr r7, [pc, #0x1d8]
00495d1c  00 00 51 e3                                      cmp r1, #0
00495d20  74 d0 4d e2                                      sub sp, sp, #0x74
00495d24  07 70 8f e0                                      add r7, pc, r7
00495d28  00 50 a0 e1                                      mov r5, r0
00495d2c  02 40 a0 e1                                      mov r4, r2
00495d30  03 b0 a0 e1                                      mov fp, r3
00495d34  57 00 00 ba                                      blt #0x495e98
00495d38  bc 31 9f e5                                      ldr r3, [pc, #0x1bc]
00495d3c  03 30 97 e7                                      ldr r3, [r7, r3]
00495d40  00 30 93 e5                                      ldr r3, [r3]
00495d44  03 00 51 e1                                      cmp r1, r3
00495d48  52 00 00 aa                                      bge #0x495e98
00495d4c  18 90 a0 e3                                      mov sb, #0x18
00495d50  99 01 09 e0                                      mul sb, sb, r1
00495d54  1c a0 90 e5                                      ldr sl, [r0, #0x1c]
00495d58  09 20 9a e7                                      ldr r2, [sl, sb]
00495d5c  09 60 8a e0                                      add r6, sl, sb
00495d60  14 30 92 e5                                      ldr r3, [r2, #0x14]
00495d64  02 00 53 e3                                      cmp r3, #2
00495d68  57 00 00 0a                                      beq #0x495ecc
00495d6c  00 00 a0 e3                                      mov r0, #0
00495d70  18 00 8d e5                                      str r0, [sp, #0x18]
00495d74  24 00 8d e5                                      str r0, [sp, #0x24]
00495d78  00 30 a0 e1                                      mov r3, r0
00495d7c  7c 01 9f e5                                      ldr r0, [pc, #0x17c]
00495d80  04 c0 94 e5                                      ldr ip, [r4, #4]
00495d84  08 20 92 e5                                      ldr r2, [r2, #8]
00495d88  00 00 97 e7                                      ldr r0, [r7, r0]
00495d8c  08 70 94 e5                                      ldr r7, [r4, #8]
00495d90  08 e0 90 e5                                      ldr lr, [r0, #8]
00495d94  00 80 90 e5                                      ldr r8, [r0]
00495d98  04 00 90 e5                                      ldr r0, [r0, #4]
00495d9c  14 70 8d e5                                      str r7, [sp, #0x14]
00495da0  20 e0 8d e5                                      str lr, [sp, #0x20]
00495da4  1c 00 8d e5                                      str r0, [sp, #0x1c]
00495da8  00 e0 94 e5                                      ldr lr, [r4]
00495dac  68 c0 8d e5                                      str ip, [sp, #0x68]
00495db0  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00495db4  64 e0 8d e5                                      str lr, [sp, #0x64]
00495db8  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
00495dbc  6c c0 8d e5                                      str ip, [sp, #0x6c]
00495dc0  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00495dc4  05 00 a0 e1                                      mov r0, r5
00495dc8  58 80 8d e5                                      str r8, [sp, #0x58]
00495dcc  60 c0 8d e5                                      str ip, [sp, #0x60]
00495dd0  98 c0 9d e5                                      ldr ip, [sp, #0x98]
00495dd4  5c e0 8d e5                                      str lr, [sp, #0x5c]
00495dd8  00 18 8d e8                                      stm sp, {fp, ip}
00495ddc  64 c0 8d e2                                      add ip, sp, #0x64
00495de0  08 c0 8d e5                                      str ip, [sp, #8]
00495de4  58 c0 8d e2                                      add ip, sp, #0x58
00495de8  0c c0 8d e5                                      str ip, [sp, #0xc]
00495dec  f1 f5 ff eb                                      bl #0x4935b8
00495df0  2c 70 8d e2                                      add r7, sp, #0x2c
00495df4  44 e0 8d e2                                      add lr, sp, #0x44
00495df8  00 80 a0 e1                                      mov r8, r0
00495dfc  06 10 a0 e1                                      mov r1, r6
00495e00  07 00 a0 e1                                      mov r0, r7
00495e04  14 e0 8d e5                                      str lr, [sp, #0x14]
00495e08  c5 f6 ff eb                                      bl #0x493924
00495e0c  07 20 a0 e1                                      mov r2, r7
00495e10  08 30 a0 e1                                      mov r3, r8
00495e14  05 10 a0 e1                                      mov r1, r5
00495e18  14 00 9d e5                                      ldr r0, [sp, #0x14]
00495e1c  70 f5 ff eb                                      bl #0x4933e4
00495e20  07 00 a0 e1                                      mov r0, r7
00495e24  10 70 86 e2                                      add r7, r6, #0x10
00495e28  aa f8 ff eb                                      bl #0x4940d8
00495e2c  07 00 a0 e1                                      mov r0, r7
00495e30  77 f6 ff eb                                      bl #0x493814
00495e34  08 80 80 e5                                      str r8, [r0, #8]
00495e38  14 30 96 e5                                      ldr r3, [r6, #0x14]
00495e3c  00 70 80 e5                                      str r7, [r0]
00495e40  04 30 80 e5                                      str r3, [r0, #4]
00495e44  00 00 83 e5                                      str r0, [r3]
00495e48  14 00 86 e5                                      str r0, [r6, #0x14]
00495e4c  09 30 9a e7                                      ldr r3, [sl, sb]
00495e50  18 00 9d e5                                      ldr r0, [sp, #0x18]
00495e54  10 20 93 e5                                      ldr r2, [r3, #0x10]
00495e58  00 30 82 e0                                      add r3, r2, r0
00495e5c  04 30 93 e5                                      ldr r3, [r3, #4]
00495e60  01 00 73 e3                                      cmn r3, #1
00495e64  0d 00 00 0a                                      beq #0x495ea0
00495e68  24 10 9d e5                                      ldr r1, [sp, #0x24]
00495e6c  04 30 96 e5                                      ldr r3, [r6, #4]
00495e70  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00495e74  00 10 d3 e5                                      ldrb r1, [r3]
00495e78  00 00 51 e3                                      cmp r1, #0
00495e7c  07 00 00 0a                                      beq #0x495ea0
00495e80  04 10 93 e5                                      ldr r1, [r3, #4]
00495e84  05 00 a0 e1                                      mov r0, r5
00495e88  04 20 a0 e1                                      mov r2, r4
00495e8c  0b 30 a0 e1                                      mov r3, fp
00495e90  00 80 8d e5                                      str r8, [sp]
00495e94  9e ff ff eb                                      bl #0x495d14
00495e98  74 d0 8d e2                                      add sp, sp, #0x74
00495e9c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00495ea0  04 30 98 e5                                      ldr r3, [r8, #4]
00495ea4  30 10 a0 e3                                      mov r1, #0x30
00495ea8  14 70 9d e5                                      ldr r7, [sp, #0x14]
00495eac  91 23 23 e0                                      mla r3, r1, r3, r2
00495eb0  05 00 a0 e1                                      mov r0, r5
00495eb4  04 10 93 e5                                      ldr r1, [r3, #4]
00495eb8  04 20 a0 e1                                      mov r2, r4
00495ebc  0b 30 a0 e1                                      mov r3, fp
00495ec0  00 70 8d e5                                      str r7, [sp]
00495ec4  22 ff ff eb                                      bl #0x495b54
00495ec8  f2 ff ff ea                                      b #0x495e98
00495ecc  0c 00 92 e5                                      ldr r0, [r2, #0xc]
00495ed0  10 10 8d e5                                      str r1, [sp, #0x10]
00495ed4  29 f6 ff eb                                      bl #0x493780
00495ed8  30 20 a0 e3                                      mov r2, #0x30
00495edc  92 00 02 e0                                      mul r2, r2, r0
00495ee0  00 30 a0 e1                                      mov r3, r0
00495ee4  18 20 8d e5                                      str r2, [sp, #0x18]
00495ee8  09 20 9a e7                                      ldr r2, [sl, sb]
00495eec  10 10 9d e5                                      ldr r1, [sp, #0x10]
00495ef0  24 00 8d e5                                      str r0, [sp, #0x24]
00495ef4  a0 ff ff ea                                      b #0x495d7c
; mapping-symbol data/literal pool
00495ef8  6c ed 4f 00 c4 06 00 00 2c 3f 00 00              .byte 0x6c, 0xed, 0x4f, 0x00, 0xc4, 0x06, 0x00, 0x00, 0x2c, 0x3f, 0x00, 0x00

; FUNCTION 0x00495f04, declared_size=56, range_size=56, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager13PlayAnimFXSetEiPK10GameObjectPNS_13AnimFXSetDataE
; demangled: VisualFXManager::PlayAnimFXSet(int, GameObject const*, VisualFXManager::AnimFXSetData*)
; decoder-mode: arm
00495f04  04 e0 2d e5                                      str lr, [sp, #-4]!
00495f08  24 c0 9f e5                                      ldr ip, [pc, #0x24]
00495f0c  02 e0 a0 e1                                      mov lr, r2
00495f10  20 20 9f e5                                      ldr r2, [pc, #0x20]
00495f14  0c d0 4d e2                                      sub sp, sp, #0xc
00495f18  0c c0 8f e0                                      add ip, pc, ip
00495f1c  00 30 8d e5                                      str r3, [sp]
00495f20  02 20 9c e7                                      ldr r2, [ip, r2]
00495f24  0e 30 a0 e1                                      mov r3, lr
00495f28  79 ff ff eb                                      bl #0x495d14
00495f2c  0c d0 8d e2                                      add sp, sp, #0xc
00495f30  00 80 bd e8                                      ldm sp!, {pc}
; mapping-symbol data/literal pool
00495f34  78 eb 4f 00 2c 3f 00 00                          .byte 0x78, 0xeb, 0x4f, 0x00, 0x2c, 0x3f, 0x00, 0x00

; FUNCTION 0x00495f3c, declared_size=56, range_size=56, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager10PlayAnimFXEiPK10GameObjectPNS_10AnimFXDataE
; demangled: VisualFXManager::PlayAnimFX(int, GameObject const*, VisualFXManager::AnimFXData*)
; decoder-mode: arm
00495f3c  04 e0 2d e5                                      str lr, [sp, #-4]!
00495f40  24 c0 9f e5                                      ldr ip, [pc, #0x24]
00495f44  02 e0 a0 e1                                      mov lr, r2
00495f48  20 20 9f e5                                      ldr r2, [pc, #0x20]
00495f4c  0c d0 4d e2                                      sub sp, sp, #0xc
00495f50  0c c0 8f e0                                      add ip, pc, ip
00495f54  00 30 8d e5                                      str r3, [sp]
00495f58  02 20 9c e7                                      ldr r2, [ip, r2]
00495f5c  0e 30 a0 e1                                      mov r3, lr
00495f60  fb fe ff eb                                      bl #0x495b54
00495f64  0c d0 8d e2                                      add sp, sp, #0xc
00495f68  00 80 bd e8                                      ldm sp!, {pc}
; mapping-symbol data/literal pool
00495f6c  40 eb 4f 00 2c 3f 00 00                          .byte 0x40, 0xeb, 0x4f, 0x00, 0x2c, 0x3f, 0x00, 0x00

; FUNCTION 0x00495f74, declared_size=464, range_size=464, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager14PlayAnimFXStepEPNS_13AnimFXSetDataENS_10AnimFXDataE
; demangled: VisualFXManager::PlayAnimFXStep(VisualFXManager::AnimFXSetData*, VisualFXManager::AnimFXData)
; decoder-mode: arm
00495f74  08 d0 4d e2                                      sub sp, sp, #8
00495f78  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00495f7c  00 50 a0 e1                                      mov r5, r0
00495f80  01 40 a0 e1                                      mov r4, r1
00495f84  08 00 91 e5                                      ldr r0, [r1, #8]
00495f88  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
00495f8c  18 60 a0 e3                                      mov r6, #0x18
00495f90  08 d0 4d e2                                      sub sp, sp, #8
00495f94  96 10 26 e0                                      mla r6, r6, r0, r1
00495f98  24 30 8d e5                                      str r3, [sp, #0x24]
00495f9c  20 20 8d e5                                      str r2, [sp, #0x20]
00495fa0  04 10 94 e5                                      ldr r1, [r4, #4]
00495fa4  04 20 96 e5                                      ldr r2, [r6, #4]
00495fa8  8c 31 9f e5                                      ldr r3, [pc, #0x18c]
00495fac  01 21 92 e7                                      ldr r2, [r2, r1, lsl #2]
00495fb0  03 30 8f e0                                      add r3, pc, r3
00495fb4  00 20 d2 e5                                      ldrb r2, [r2]
00495fb8  00 00 52 e3                                      cmp r2, #0
00495fbc  17 00 00 0a                                      beq #0x496020
00495fc0  78 21 9f e5                                      ldr r2, [pc, #0x178]
00495fc4  1c 70 84 e2                                      add r7, r4, #0x1c
00495fc8  07 00 a0 e1                                      mov r0, r7
00495fcc  02 80 93 e7                                      ldr r8, [r3, r2]
00495fd0  08 10 a0 e1                                      mov r1, r8
00495fd4  e4 f2 f9 eb                                      bl #0x312b6c
00495fd8  00 00 50 e3                                      cmp r0, #0
00495fdc  36 00 00 0a                                      beq #0x4960bc
00495fe0  10 70 84 e2                                      add r7, r4, #0x10
00495fe4  08 10 a0 e1                                      mov r1, r8
00495fe8  07 00 a0 e1                                      mov r0, r7
00495fec  de f2 f9 eb                                      bl #0x312b6c
00495ff0  00 00 50 e3                                      cmp r0, #0
00495ff4  3c 00 00 1a                                      bne #0x4960ec
00495ff8  04 20 96 e5                                      ldr r2, [r6, #4]
00495ffc  04 10 94 e5                                      ldr r1, [r4, #4]
00496000  28 30 94 e5                                      ldr r3, [r4, #0x28]
00496004  05 00 a0 e1                                      mov r0, r5
00496008  01 11 92 e7                                      ldr r1, [r2, r1, lsl #2]
0049600c  07 20 a0 e1                                      mov r2, r7
00496010  04 10 91 e5                                      ldr r1, [r1, #4]
00496014  00 40 8d e5                                      str r4, [sp]
00496018  3d ff ff eb                                      bl #0x495d14
0049601c  22 00 00 ea                                      b #0x4960ac
00496020  18 21 9f e5                                      ldr r2, [pc, #0x118]
00496024  1c 70 84 e2                                      add r7, r4, #0x1c
00496028  07 00 a0 e1                                      mov r0, r7
0049602c  02 80 93 e7                                      ldr r8, [r3, r2]
00496030  08 10 a0 e1                                      mov r1, r8
00496034  cc f2 f9 eb                                      bl #0x312b6c
00496038  00 00 50 e3                                      cmp r0, #0
0049603c  0e 00 00 0a                                      beq #0x49607c
00496040  10 70 84 e2                                      add r7, r4, #0x10
00496044  08 10 a0 e1                                      mov r1, r8
00496048  07 00 a0 e1                                      mov r0, r7
0049604c  c6 f2 f9 eb                                      bl #0x312b6c
00496050  00 00 50 e3                                      cmp r0, #0
00496054  2d 00 00 0a                                      beq #0x496110
00496058  04 30 96 e5                                      ldr r3, [r6, #4]
0049605c  04 10 94 e5                                      ldr r1, [r4, #4]
00496060  05 00 a0 e1                                      mov r0, r5
00496064  28 20 94 e5                                      ldr r2, [r4, #0x28]
00496068  01 11 93 e7                                      ldr r1, [r3, r1, lsl #2]
0049606c  20 30 8d e2                                      add r3, sp, #0x20
00496070  04 10 91 e5                                      ldr r1, [r1, #4]
00496074  b0 ff ff eb                                      bl #0x495f3c
00496078  0b 00 00 ea                                      b #0x4960ac
0049607c  04 30 96 e5                                      ldr r3, [r6, #4]
00496080  04 20 94 e5                                      ldr r2, [r4, #4]
00496084  28 c0 94 e5                                      ldr ip, [r4, #0x28]
00496088  05 00 a0 e1                                      mov r0, r5
0049608c  02 11 93 e7                                      ldr r1, [r3, r2, lsl #2]
00496090  10 20 84 e2                                      add r2, r4, #0x10
00496094  07 30 a0 e1                                      mov r3, r7
00496098  04 10 91 e5                                      ldr r1, [r1, #4]
0049609c  00 c0 8d e5                                      str ip, [sp]
004960a0  20 c0 8d e2                                      add ip, sp, #0x20
004960a4  04 c0 8d e5                                      str ip, [sp, #4]
004960a8  82 fd ff eb                                      bl #0x4956b8
004960ac  08 d0 8d e2                                      add sp, sp, #8
004960b0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
004960b4  08 d0 8d e2                                      add sp, sp, #8
004960b8  1e ff 2f e1                                      bx lr
004960bc  04 30 96 e5                                      ldr r3, [r6, #4]
004960c0  04 20 94 e5                                      ldr r2, [r4, #4]
004960c4  28 c0 94 e5                                      ldr ip, [r4, #0x28]
004960c8  05 00 a0 e1                                      mov r0, r5
004960cc  02 11 93 e7                                      ldr r1, [r3, r2, lsl #2]
004960d0  10 20 84 e2                                      add r2, r4, #0x10
004960d4  07 30 a0 e1                                      mov r3, r7
004960d8  04 10 91 e5                                      ldr r1, [r1, #4]
004960dc  00 c0 8d e5                                      str ip, [sp]
004960e0  04 40 8d e5                                      str r4, [sp, #4]
004960e4  e7 fd ff eb                                      bl #0x495888
004960e8  ef ff ff ea                                      b #0x4960ac
004960ec  04 20 96 e5                                      ldr r2, [r6, #4]
004960f0  04 10 94 e5                                      ldr r1, [r4, #4]
004960f4  05 00 a0 e1                                      mov r0, r5
004960f8  04 30 a0 e1                                      mov r3, r4
004960fc  01 11 92 e7                                      ldr r1, [r2, r1, lsl #2]
00496100  28 20 94 e5                                      ldr r2, [r4, #0x28]
00496104  04 10 91 e5                                      ldr r1, [r1, #4]
00496108  7d ff ff eb                                      bl #0x495f04
0049610c  e6 ff ff ea                                      b #0x4960ac
00496110  04 20 96 e5                                      ldr r2, [r6, #4]
00496114  04 10 94 e5                                      ldr r1, [r4, #4]
00496118  28 30 94 e5                                      ldr r3, [r4, #0x28]
0049611c  20 c0 8d e2                                      add ip, sp, #0x20
00496120  01 11 92 e7                                      ldr r1, [r2, r1, lsl #2]
00496124  05 00 a0 e1                                      mov r0, r5
00496128  07 20 a0 e1                                      mov r2, r7
0049612c  04 10 91 e5                                      ldr r1, [r1, #4]
00496130  00 c0 8d e5                                      str ip, [sp]
00496134  86 fe ff eb                                      bl #0x495b54
00496138  db ff ff ea                                      b #0x4960ac
; mapping-symbol data/literal pool
0049613c  e0 ea 4f 00 2c 3f 00 00                          .byte 0xe0, 0xea, 0x4f, 0x00, 0x2c, 0x3f, 0x00, 0x00

; FUNCTION 0x00496144, declared_size=544, range_size=544, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager15_HandleSequenceEP10AnimatedFXPNS_13AnimFXSetDataEb
; demangled: VisualFXManager::_HandleSequence(AnimatedFX*, VisualFXManager::AnimFXSetData*, bool)
; decoder-mode: arm
00496144  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00496148  7c d0 4d e2                                      sub sp, sp, #0x7c
0049614c  14 10 8d e5                                      str r1, [sp, #0x14]
00496150  00 00 53 e3                                      cmp r3, #0
00496154  02 80 a0 e1                                      mov r8, r2
00496158  2c 20 92 15                                      ldrne r2, [r2, #0x2c]
0049615c  08 70 98 05                                      ldreq r7, [r8, #8]
00496160  00 60 a0 e1                                      mov r6, r0
00496164  08 70 92 15                                      ldrne r7, [r2, #8]
00496168  18 20 a0 e3                                      mov r2, #0x18
0049616c  92 07 07 e0                                      mul r7, r2, r7
00496170  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
00496174  07 10 92 e7                                      ldr r1, [r2, r7]
00496178  07 70 82 e0                                      add r7, r2, r7
0049617c  14 20 91 e5                                      ldr r2, [r1, #0x14]
00496180  01 00 52 e3                                      cmp r2, #1
00496184  15 00 00 0a                                      beq #0x4961e0
00496188  00 00 53 e3                                      cmp r3, #0
0049618c  0a 00 00 0a                                      beq #0x4961bc
00496190  2c 30 98 e5                                      ldr r3, [r8, #0x2c]
00496194  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
00496198  00 00 52 e3                                      cmp r2, #0
0049619c  04 00 00 0a                                      beq #0x4961b4
004961a0  01 30 a0 e3                                      mov r3, #1
004961a4  00 30 c2 e5                                      strb r3, [r2]
004961a8  14 10 9d e5                                      ldr r1, [sp, #0x14]
004961ac  2c 20 98 e5                                      ldr r2, [r8, #0x2c]
004961b0  e3 ff ff eb                                      bl #0x496144
004961b4  7c d0 8d e2                                      add sp, sp, #0x7c
004961b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004961bc  2c 20 98 e5                                      ldr r2, [r8, #0x2c]
004961c0  00 00 52 e3                                      cmp r2, #0
004961c4  fa ff ff 0a                                      beq #0x4961b4
004961c8  01 30 a0 e3                                      mov r3, #1
004961cc  00 30 c2 e5                                      strb r3, [r2]
004961d0  14 10 9d e5                                      ldr r1, [sp, #0x14]
004961d4  08 20 a0 e1                                      mov r2, r8
004961d8  d9 ff ff eb                                      bl #0x496144
004961dc  f4 ff ff ea                                      b #0x4961b4
004961e0  6c b0 8d e2                                      add fp, sp, #0x6c
004961e4  04 20 8d e2                                      add r2, sp, #4
004961e8  04 30 8b e2                                      add r3, fp, #4
004961ec  1c 20 8d e5                                      str r2, [sp, #0x1c]
004961f0  20 30 8d e5                                      str r3, [sp, #0x20]
004961f4  34 c0 8d e2                                      add ip, sp, #0x34
004961f8  07 a0 a0 e1                                      mov sl, r7
004961fc  10 50 ba e5                                      ldr r5, [sl, #0x10]!
00496200  04 20 82 e2                                      add r2, r2, #4
00496204  18 c0 8d e5                                      str ip, [sp, #0x18]
00496208  04 30 83 e2                                      add r3, r3, #4
0049620c  4c c0 8d e2                                      add ip, sp, #0x4c
00496210  2c 80 8d e5                                      str r8, [sp, #0x2c]
00496214  64 90 8d e2                                      add sb, sp, #0x64
00496218  28 20 8d e5                                      str r2, [sp, #0x28]
0049621c  24 c0 8d e5                                      str ip, [sp, #0x24]
00496220  03 80 a0 e1                                      mov r8, r3
00496224  0a 00 55 e1                                      cmp r5, sl
00496228  e1 ff ff 0a                                      beq #0x4961b4
0049622c  08 40 95 e5                                      ldr r4, [r5, #8]
00496230  00 00 54 e3                                      cmp r4, #0
00496234  2f 00 00 0a                                      beq #0x4962f8
00496238  00 30 d4 e5                                      ldrb r3, [r4]
0049623c  00 00 53 e3                                      cmp r3, #0
00496240  2c 00 00 0a                                      beq #0x4962f8
00496244  00 20 a0 e3                                      mov r2, #0
00496248  00 20 c4 e5                                      strb r2, [r4]
0049624c  00 20 97 e5                                      ldr r2, [r7]
00496250  04 30 94 e5                                      ldr r3, [r4, #4]
00496254  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00496258  01 30 83 e2                                      add r3, r3, #1
0049625c  02 00 53 e1                                      cmp r3, r2
00496260  30 00 00 ba                                      blt #0x496328
00496264  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00496268  00 00 53 e3                                      cmp r3, #0
0049626c  00 20 a0 d3                                      movle r2, #0
00496270  01 20 a0 c3                                      movgt r2, #1
00496274  01 00 73 e3                                      cmn r3, #1
00496278  00 10 a0 13                                      movne r1, #0
0049627c  01 10 a0 03                                      moveq r1, #1
00496280  01 10 92 e1                                      orrs r1, r2, r1
00496284  1d 00 00 0a                                      beq #0x496300
00496288  00 00 52 e3                                      cmp r2, #0
0049628c  01 30 43 12                                      subne r3, r3, #1
00496290  00 e0 a0 e3                                      mov lr, #0
00496294  0c 30 84 15                                      strne r3, [r4, #0xc]
00496298  04 e0 84 e5                                      str lr, [r4, #4]
0049629c  07 10 a0 e1                                      mov r1, r7
004962a0  18 00 9d e5                                      ldr r0, [sp, #0x18]
004962a4  9e f5 ff eb                                      bl #0x493924
004962a8  18 20 9d e5                                      ldr r2, [sp, #0x18]
004962ac  09 00 a0 e1                                      mov r0, sb
004962b0  06 10 a0 e1                                      mov r1, r6
004962b4  04 30 a0 e1                                      mov r3, r4
004962b8  49 f4 ff eb                                      bl #0x4933e4
004962bc  18 00 9d e5                                      ldr r0, [sp, #0x18]
004962c0  84 f7 ff eb                                      bl #0x4940d8
004962c4  20 20 9d e5                                      ldr r2, [sp, #0x20]
004962c8  00 c0 9b e5                                      ldr ip, [fp]
004962cc  00 e0 92 e5                                      ldr lr, [r2]
004962d0  0c 00 99 e8                                      ldm sb, {r2, r3}
004962d4  00 c0 8d e5                                      str ip, [sp]
004962d8  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
004962dc  04 10 a0 e1                                      mov r1, r4
004962e0  06 00 a0 e1                                      mov r0, r6
004962e4  00 e0 8c e5                                      str lr, [ip]
004962e8  00 e0 98 e5                                      ldr lr, [r8]
004962ec  28 c0 9d e5                                      ldr ip, [sp, #0x28]
004962f0  00 e0 8c e5                                      str lr, [ip]
004962f4  1e ff ff eb                                      bl #0x495f74
004962f8  00 50 95 e5                                      ldr r5, [r5]
004962fc  c8 ff ff ea                                      b #0x496224
00496300  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00496304  00 00 53 e3                                      cmp r3, #0
00496308  fa ff ff 0a                                      beq #0x4962f8
0049630c  06 00 a0 e1                                      mov r0, r6
00496310  14 10 9d e5                                      ldr r1, [sp, #0x14]
00496314  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00496318  01 30 a0 e3                                      mov r3, #1
0049631c  88 ff ff eb                                      bl #0x496144
00496320  00 50 95 e5                                      ldr r5, [r5]
00496324  be ff ff ea                                      b #0x496224
00496328  04 30 84 e5                                      str r3, [r4, #4]
0049632c  07 10 a0 e1                                      mov r1, r7
00496330  24 00 9d e5                                      ldr r0, [sp, #0x24]
00496334  7a f5 ff eb                                      bl #0x493924
00496338  04 30 a0 e1                                      mov r3, r4
0049633c  09 00 a0 e1                                      mov r0, sb
00496340  06 10 a0 e1                                      mov r1, r6
00496344  24 20 9d e5                                      ldr r2, [sp, #0x24]
00496348  25 f4 ff eb                                      bl #0x4933e4
0049634c  24 00 9d e5                                      ldr r0, [sp, #0x24]
00496350  60 f7 ff eb                                      bl #0x4940d8
00496354  20 30 9d e5                                      ldr r3, [sp, #0x20]
00496358  00 c0 9b e5                                      ldr ip, [fp]
0049635c  00 e0 93 e5                                      ldr lr, [r3]
00496360  da ff ff ea                                      b #0x4962d0

; FUNCTION 0x00496364, declared_size=108, range_size=108, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager18_HandleEndOfLoopCBEP10AnimatedFXPNS_13AnimFXSetDataE
; demangled: VisualFXManager::_HandleEndOfLoopCB(AnimatedFX*, VisualFXManager::AnimFXSetData*)
; decoder-mode: arm
00496364  70 00 2d e9                                      push {r4, r5, r6}
00496368  08 50 92 e5                                      ldr r5, [r2, #8]
0049636c  18 40 a0 e3                                      mov r4, #0x18
00496370  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
00496374  94 05 05 e0                                      mul r5, r4, r5
00496378  05 50 9c e7                                      ldr r5, [ip, r5]
0049637c  14 50 95 e5                                      ldr r5, [r5, #0x14]
00496380  01 00 55 e3                                      cmp r5, #1
00496384  0e 00 00 0a                                      beq #0x4963c4
00496388  2c 30 92 e5                                      ldr r3, [r2, #0x2c]
0049638c  00 00 53 e3                                      cmp r3, #0
00496390  07 00 00 0a                                      beq #0x4963b4
00496394  08 50 93 e5                                      ldr r5, [r3, #8]
00496398  01 60 a0 e3                                      mov r6, #1
0049639c  00 60 c3 e5                                      strb r6, [r3]
004963a0  94 05 04 e0                                      mul r4, r4, r5
004963a4  04 30 9c e7                                      ldr r3, [ip, r4]
004963a8  14 30 93 e5                                      ldr r3, [r3, #0x14]
004963ac  06 00 53 e1                                      cmp r3, r6
004963b0  01 00 00 0a                                      beq #0x4963bc
004963b4  70 00 bd e8                                      pop {r4, r5, r6}
004963b8  1e ff 2f e1                                      bx lr
004963bc  70 00 bd e8                                      pop {r4, r5, r6}
004963c0  5f ff ff ea                                      b #0x496144
004963c4  00 30 a0 e3                                      mov r3, #0
004963c8  70 00 bd e8                                      pop {r4, r5, r6}
004963cc  5c ff ff ea                                      b #0x496144

; FUNCTION 0x004963d0, declared_size=100, range_size=100, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager16__Anim_EndOfLoopEP10AnimatedFXPNS_13AnimFXSetDataE
; demangled: VisualFXManager::__Anim_EndOfLoop(AnimatedFX*, VisualFXManager::AnimFXSetData*)
; decoder-mode: arm
004963d0  70 40 2d e9                                      push {r4, r5, r6, lr}
004963d4  50 40 9f e5                                      ldr r4, [pc, #0x50]
004963d8  00 20 51 e2                                      subs r2, r1, #0
004963dc  00 50 a0 e1                                      mov r5, r0
004963e0  04 40 8f e0                                      add r4, pc, r4
004963e4  0e 00 00 0a                                      beq #0x496424
004963e8  40 60 9f e5                                      ldr r6, [pc, #0x40]
004963ec  00 10 a0 e1                                      mov r1, r0
004963f0  06 00 94 e7                                      ldr r0, [r4, r6]
004963f4  da ff ff eb                                      bl #0x496364
004963f8  06 40 94 e7                                      ldr r4, [r4, r6]
004963fc  08 60 84 e2                                      add r6, r4, #8
00496400  06 00 a0 e1                                      mov r0, r6
00496404  aa f9 ff eb                                      bl #0x494ab4
00496408  08 50 80 e5                                      str r5, [r0, #8]
0049640c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00496410  00 60 80 e5                                      str r6, [r0]
00496414  04 30 80 e5                                      str r3, [r0, #4]
00496418  00 00 83 e5                                      str r0, [r3]
0049641c  0c 00 84 e5                                      str r0, [r4, #0xc]
00496420  70 80 bd e8                                      pop {r4, r5, r6, pc}
00496424  04 60 9f e5                                      ldr r6, [pc, #4]
00496428  f2 ff ff ea                                      b #0x4963f8
; mapping-symbol data/literal pool
0049642c  b0 e6 4f 00 08 1b 00 00                          .byte 0xb0, 0xe6, 0x4f, 0x00, 0x08, 0x1b, 0x00, 0x00

; FUNCTION 0x00496434, declared_size=352, range_size=352, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager16RegisterFXToLoadEi
; demangled: VisualFXManager::RegisterFXToLoad(int)
; decoder-mode: arm
00496434  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00496438  3c 41 9f e5                                      ldr r4, [pc, #0x13c]
0049643c  3c 61 9f e5                                      ldr r6, [pc, #0x13c]
00496440  3c 81 9f e5                                      ldr r8, [pc, #0x13c]
00496444  04 40 8f e0                                      add r4, pc, r4
00496448  06 30 94 e7                                      ldr r3, [r4, r6]
0049644c  08 70 94 e7                                      ldr r7, [r4, r8]
00496450  4c d0 4d e2                                      sub sp, sp, #0x4c
00496454  00 30 93 e5                                      ldr r3, [r3]
00496458  00 a0 a0 e1                                      mov sl, r0
0049645c  07 00 a0 e1                                      mov r0, r7
00496460  44 30 8d e5                                      str r3, [sp, #0x44]
00496464  04 10 8d e5                                      str r1, [sp, #4]
00496468  06 85 fa eb                                      bl #0x337888
0049646c  14 11 9f e5                                      ldr r1, [pc, #0x114]
00496470  2c 50 8d e2                                      add r5, sp, #0x2c
00496474  10 20 8d e2                                      add r2, sp, #0x10
00496478  01 10 8f e0                                      add r1, pc, r1
0049647c  05 00 a0 e1                                      mov r0, r5
00496480  19 f7 f9 eb                                      bl #0x3140ec
00496484  07 00 a0 e1                                      mov r0, r7
00496488  05 10 a0 e1                                      mov r1, r5
0049648c  8d 86 fa eb                                      bl #0x337ec8
00496490  00 70 a0 e1                                      mov r7, r0
00496494  40 00 9d e5                                      ldr r0, [sp, #0x40]
00496498  05 00 50 e1                                      cmp r0, r5
0049649c  06 00 00 0a                                      beq #0x4964bc
004964a0  00 00 50 e3                                      cmp r0, #0
004964a4  04 00 00 0a                                      beq #0x4964bc
004964a8  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
004964ac  01 10 60 e0                                      rsb r1, r0, r1
004964b0  80 00 51 e3                                      cmp r1, #0x80
004964b4  11 00 00 8a                                      bhi #0x496500
004964b8  90 ca 09 eb                                      bl #0x708f00
004964bc  00 00 57 e3                                      cmp r7, #0
004964c0  07 00 00 0a                                      beq #0x4964e4
004964c4  04 30 9d e5                                      ldr r3, [sp, #4]
004964c8  00 00 53 e3                                      cmp r3, #0
004964cc  04 00 00 ba                                      blt #0x4964e4
004964d0  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
004964d4  02 20 94 e7                                      ldr r2, [r4, r2]
004964d8  00 20 92 e5                                      ldr r2, [r2]
004964dc  02 00 53 e1                                      cmp r3, r2
004964e0  08 00 00 ba                                      blt #0x496508
004964e4  06 30 94 e7                                      ldr r3, [r4, r6]
004964e8  44 20 9d e5                                      ldr r2, [sp, #0x44]
004964ec  00 30 93 e5                                      ldr r3, [r3]
004964f0  03 00 52 e1                                      cmp r2, r3
004964f4  1f 00 00 1a                                      bne #0x496578
004964f8  4c d0 8d e2                                      add sp, sp, #0x4c
004964fc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00496500  ce e7 f9 eb                                      bl #0x310440
00496504  ec ff ff ea                                      b #0x4964bc
00496508  08 70 94 e7                                      ldr r7, [r4, r8]
0049650c  14 50 8d e2                                      add r5, sp, #0x14
00496510  07 00 a0 e1                                      mov r0, r7
00496514  db 84 fa eb                                      bl #0x337888
00496518  70 10 9f e5                                      ldr r1, [pc, #0x70]
0049651c  0c 20 8d e2                                      add r2, sp, #0xc
00496520  05 00 a0 e1                                      mov r0, r5
00496524  01 10 8f e0                                      add r1, pc, r1
00496528  ef f6 f9 eb                                      bl #0x3140ec
0049652c  07 00 a0 e1                                      mov r0, r7
00496530  05 10 a0 e1                                      mov r1, r5
00496534  53 85 fa eb                                      bl #0x337a88
00496538  28 00 9d e5                                      ldr r0, [sp, #0x28]
0049653c  05 00 50 e1                                      cmp r0, r5
00496540  06 00 00 0a                                      beq #0x496560
00496544  00 00 50 e3                                      cmp r0, #0
00496548  04 00 00 0a                                      beq #0x496560
0049654c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00496550  01 10 60 e0                                      rsb r1, r0, r1
00496554  80 00 51 e3                                      cmp r1, #0x80
00496558  04 00 00 8a                                      bhi #0x496570
0049655c  67 ca 09 eb                                      bl #0x708f00
00496560  10 00 8a e2                                      add r0, sl, #0x10
00496564  04 10 8d e2                                      add r1, sp, #4
00496568  83 f7 ff eb                                      bl #0x49437c
0049656c  dc ff ff ea                                      b #0x4964e4
00496570  b2 e7 f9 eb                                      bl #0x310440
00496574  f9 ff ff ea                                      b #0x496560
00496578  64 df f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0049657c  4c e6 4f 00 ac 40 00 00 84 08 00 00 d0 eb 43 00  .byte 0x4c, 0xe6, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xd0, 0xeb, 0x43, 0x00
0049658c  88 0b 00 00 34 eb 43 00                          .byte 0x88, 0x0b, 0x00, 0x00, 0x34, 0xeb, 0x43, 0x00

; FUNCTION 0x00496594, declared_size=596, range_size=596, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager6UpdateEv
; demangled: VisualFXManager::Update()
; decoder-mode: arm
00496594  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00496598  30 62 9f e5                                      ldr r6, [pc, #0x230]
0049659c  30 82 9f e5                                      ldr r8, [pc, #0x230]
004965a0  30 22 9f e5                                      ldr r2, [pc, #0x230]
004965a4  06 60 8f e0                                      add r6, pc, r6
004965a8  08 30 96 e7                                      ldr r3, [r6, r8]
004965ac  02 70 96 e7                                      ldr r7, [r6, r2]
004965b0  2c d0 4d e2                                      sub sp, sp, #0x2c
004965b4  00 30 93 e5                                      ldr r3, [r3]
004965b8  00 50 a0 e1                                      mov r5, r0
004965bc  07 00 a0 e1                                      mov r0, r7
004965c0  24 30 8d e5                                      str r3, [sp, #0x24]
004965c4  af 84 fa eb                                      bl #0x337888
004965c8  0c 12 9f e5                                      ldr r1, [pc, #0x20c]
004965cc  0c 40 8d e2                                      add r4, sp, #0xc
004965d0  08 20 8d e2                                      add r2, sp, #8
004965d4  01 10 8f e0                                      add r1, pc, r1
004965d8  04 00 a0 e1                                      mov r0, r4
004965dc  c2 f6 f9 eb                                      bl #0x3140ec
004965e0  07 00 a0 e1                                      mov r0, r7
004965e4  04 10 a0 e1                                      mov r1, r4
004965e8  36 86 fa eb                                      bl #0x337ec8
004965ec  00 70 a0 e1                                      mov r7, r0
004965f0  20 00 9d e5                                      ldr r0, [sp, #0x20]
004965f4  04 00 50 e1                                      cmp r0, r4
004965f8  06 00 00 0a                                      beq #0x496618
004965fc  00 00 50 e3                                      cmp r0, #0
00496600  04 00 00 0a                                      beq #0x496618
00496604  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00496608  01 10 60 e0                                      rsb r1, r0, r1
0049660c  80 00 51 e3                                      cmp r1, #0x80
00496610  6b 00 00 8a                                      bhi #0x4967c4
00496614  39 ca 09 eb                                      bl #0x708f00
00496618  00 00 57 e3                                      cmp r7, #0
0049661c  06 00 00 1a                                      bne #0x49663c
00496620  08 30 96 e7                                      ldr r3, [r6, r8]
00496624  24 20 9d e5                                      ldr r2, [sp, #0x24]
00496628  00 30 93 e5                                      ldr r3, [r3]
0049662c  03 00 52 e1                                      cmp r2, r3
00496630  65 00 00 1a                                      bne #0x4967cc
00496634  2c d0 8d e2                                      add sp, sp, #0x2c
00496638  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0049663c  9c 01 9f e5                                      ldr r0, [pc, #0x19c]
00496640  00 00 8f e0                                      add r0, pc, r0
00496644  1a f4 f9 eb                                      bl #0x3136b4
00496648  28 70 95 e5                                      ldr r7, [r5, #0x28]
0049664c  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
00496650  03 30 67 e0                                      rsb r3, r7, r3
00496654  c3 31 a0 e1                                      asr r3, r3, #3
00496658  03 21 83 e0                                      add r2, r3, r3, lsl #2
0049665c  02 22 82 e0                                      add r2, r2, r2, lsl #4
00496660  02 24 82 e0                                      add r2, r2, r2, lsl #8
00496664  02 28 82 e0                                      add r2, r2, r2, lsl #16
00496668  82 30 83 e0                                      add r3, r3, r2, lsl #1
0049666c  00 00 53 e3                                      cmp r3, #0
00496670  16 00 00 0a                                      beq #0x4966d0
00496674  00 a0 a0 e3                                      mov sl, #0
00496678  0a 90 a0 e1                                      mov sb, sl
0049667c  0a 70 87 e0                                      add r7, r7, sl
00496680  10 40 b7 e5                                      ldr r4, [r7, #0x10]!
00496684  02 00 00 ea                                      b #0x496694
00496688  08 00 94 e5                                      ldr r0, [r4, #8]
0049668c  35 f2 ff eb                                      bl #0x492f68
00496690  00 40 94 e5                                      ldr r4, [r4]
00496694  04 00 57 e1                                      cmp r7, r4
00496698  fa ff ff 1a                                      bne #0x496688
0049669c  28 70 95 e5                                      ldr r7, [r5, #0x28]
004966a0  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
004966a4  01 90 89 e2                                      add sb, sb, #1
004966a8  18 a0 8a e2                                      add sl, sl, #0x18
004966ac  03 30 67 e0                                      rsb r3, r7, r3
004966b0  c3 31 a0 e1                                      asr r3, r3, #3
004966b4  03 21 83 e0                                      add r2, r3, r3, lsl #2
004966b8  02 22 82 e0                                      add r2, r2, r2, lsl #4
004966bc  02 24 82 e0                                      add r2, r2, r2, lsl #8
004966c0  02 28 82 e0                                      add r2, r2, r2, lsl #16
004966c4  82 30 83 e0                                      add r3, r3, r2, lsl #1
004966c8  03 00 59 e1                                      cmp sb, r3
004966cc  ea ff ff 3a                                      blo #0x49667c
004966d0  05 70 a0 e1                                      mov r7, r5
004966d4  08 40 b7 e5                                      ldr r4, [r7, #8]!
004966d8  07 00 54 e1                                      cmp r4, r7
004966dc  04 a0 8d 12                                      addne sl, sp, #4
004966e0  33 00 00 0a                                      beq #0x4967b4
004966e4  04 00 57 e1                                      cmp r7, r4
004966e8  31 00 00 0a                                      beq #0x4967b4
004966ec  08 30 94 e5                                      ldr r3, [r4, #8]
004966f0  03 00 a0 e1                                      mov r0, r3
004966f4  04 30 8d e5                                      str r3, [sp, #4]
004966f8  df ef ff eb                                      bl #0x49267c
004966fc  00 30 90 e5                                      ldr r3, [r0]
00496700  0f e0 a0 e1                                      mov lr, pc
00496704  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00496708  04 00 9d e5                                      ldr r0, [sp, #4]
0049670c  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
00496710  08 b0 93 e5                                      ldr fp, [r3, #8]
00496714  d8 ef ff eb                                      bl #0x49267c
00496718  00 30 90 e5                                      ldr r3, [r0]
0049671c  0f e0 a0 e1                                      mov lr, pc
00496720  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00496724  14 90 90 e5                                      ldr sb, [r0, #0x14]
00496728  04 00 9d e5                                      ldr r0, [sp, #4]
0049672c  d2 ef ff eb                                      bl #0x49267c
00496730  00 30 90 e5                                      ldr r3, [r0]
00496734  0f e0 a0 e1                                      mov lr, pc
00496738  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0049673c  04 30 90 e5                                      ldr r3, [r0, #4]
00496740  03 00 59 e1                                      cmp sb, r3
00496744  01 00 00 0a                                      beq #0x496750
00496748  04 00 9d e5                                      ldr r0, [sp, #4]
0049674c  e4 ef ff eb                                      bl #0x4926e4
00496750  04 00 9d e5                                      ldr r0, [sp, #4]
00496754  c8 ef ff eb                                      bl #0x49267c
00496758  09 20 a0 e1                                      mov r2, sb
0049675c  00 30 90 e5                                      ldr r3, [r0]
00496760  0b 10 a0 e1                                      mov r1, fp
00496764  0f e0 a0 e1                                      mov lr, pc
00496768  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0049676c  04 30 9d e5                                      ldr r3, [sp, #4]
00496770  24 30 d3 e5                                      ldrb r3, [r3, #0x24]
00496774  00 00 53 e3                                      cmp r3, #0
00496778  00 90 94 15                                      ldrne sb, [r4]
0049677c  09 00 00 1a                                      bne #0x4967a8
00496780  00 90 94 e5                                      ldr sb, [r4]
00496784  04 30 94 e5                                      ldr r3, [r4, #4]
00496788  04 00 a0 e1                                      mov r0, r4
0049678c  0c 10 a0 e3                                      mov r1, #0xc
00496790  00 90 83 e5                                      str sb, [r3]
00496794  04 30 89 e5                                      str r3, [sb, #4]
00496798  d8 c9 09 eb                                      bl #0x708f00
0049679c  05 00 a0 e1                                      mov r0, r5
004967a0  0a 10 a0 e1                                      mov r1, sl
004967a4  73 f8 ff eb                                      bl #0x494978
004967a8  09 40 a0 e1                                      mov r4, sb
004967ac  04 00 57 e1                                      cmp r7, r4
004967b0  cd ff ff 1a                                      bne #0x4966ec
004967b4  28 00 9f e5                                      ldr r0, [pc, #0x28]
004967b8  00 00 8f e0                                      add r0, pc, r0
004967bc  bd f3 f9 eb                                      bl #0x3136b8
004967c0  96 ff ff ea                                      b #0x496620
004967c4  1d e7 f9 eb                                      bl #0x310440
004967c8  92 ff ff ea                                      b #0x496618
004967cc  cf de f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004967d0  ec e4 4f 00 ac 40 00 00 84 08 00 00 74 ea 43 00  .byte 0xec, 0xe4, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x74, 0xea, 0x43, 0x00
004967e0  30 ea 43 00 b8 e8 43 00                          .byte 0x30, 0xea, 0x43, 0x00, 0xb8, 0xe8, 0x43, 0x00

; FUNCTION 0x004967e8, declared_size=364, range_size=364, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager19RegisterFXSetToLoadEi
; demangled: VisualFXManager::RegisterFXSetToLoad(int)
; decoder-mode: arm
004967e8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004967ec  48 41 9f e5                                      ldr r4, [pc, #0x148]
004967f0  48 71 9f e5                                      ldr r7, [pc, #0x148]
004967f4  48 21 9f e5                                      ldr r2, [pc, #0x148]
004967f8  04 40 8f e0                                      add r4, pc, r4
004967fc  07 30 94 e7                                      ldr r3, [r4, r7]
00496800  02 80 94 e7                                      ldr r8, [r4, r2]
00496804  24 d0 4d e2                                      sub sp, sp, #0x24
00496808  00 30 93 e5                                      ldr r3, [r3]
0049680c  00 50 a0 e1                                      mov r5, r0
00496810  08 00 a0 e1                                      mov r0, r8
00496814  1c 30 8d e5                                      str r3, [sp, #0x1c]
00496818  01 a0 a0 e1                                      mov sl, r1
0049681c  19 84 fa eb                                      bl #0x337888
00496820  20 11 9f e5                                      ldr r1, [pc, #0x120]
00496824  04 60 8d e2                                      add r6, sp, #4
00496828  0d 20 a0 e1                                      mov r2, sp
0049682c  01 10 8f e0                                      add r1, pc, r1
00496830  06 00 a0 e1                                      mov r0, r6
00496834  2c f6 f9 eb                                      bl #0x3140ec
00496838  08 00 a0 e1                                      mov r0, r8
0049683c  06 10 a0 e1                                      mov r1, r6
00496840  a0 85 fa eb                                      bl #0x337ec8
00496844  00 80 a0 e1                                      mov r8, r0
00496848  18 00 9d e5                                      ldr r0, [sp, #0x18]
0049684c  06 00 50 e1                                      cmp r0, r6
00496850  06 00 00 0a                                      beq #0x496870
00496854  00 00 50 e3                                      cmp r0, #0
00496858  04 00 00 0a                                      beq #0x496870
0049685c  04 10 9d e5                                      ldr r1, [sp, #4]
00496860  01 10 60 e0                                      rsb r1, r0, r1
00496864  80 00 51 e3                                      cmp r1, #0x80
00496868  30 00 00 8a                                      bhi #0x496930
0049686c  a3 c9 09 eb                                      bl #0x708f00
00496870  00 00 58 e3                                      cmp r8, #0
00496874  26 00 00 0a                                      beq #0x496914
00496878  00 00 5a e3                                      cmp sl, #0
0049687c  24 00 00 ba                                      blt #0x496914
00496880  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00496884  03 30 94 e7                                      ldr r3, [r4, r3]
00496888  00 30 93 e5                                      ldr r3, [r3]
0049688c  03 00 5a e1                                      cmp sl, r3
00496890  1f 00 00 aa                                      bge #0x496914
00496894  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00496898  18 20 a0 e3                                      mov r2, #0x18
0049689c  03 30 94 e7                                      ldr r3, [r4, r3]
004968a0  00 30 93 e5                                      ldr r3, [r3]
004968a4  92 3a 2a e0                                      mla sl, r2, sl, r3
004968a8  0c 30 9a e5                                      ldr r3, [sl, #0xc]
004968ac  00 00 53 e3                                      cmp r3, #0
004968b0  17 00 00 da                                      ble #0x496914
004968b4  00 60 a0 e3                                      mov r6, #0
004968b8  06 80 a0 e1                                      mov r8, r6
004968bc  07 00 00 ea                                      b #0x4968e0
004968c0  04 10 93 e5                                      ldr r1, [r3, #4]
004968c4  05 00 a0 e1                                      mov r0, r5
004968c8  d9 fe ff eb                                      bl #0x496434
004968cc  0c 30 9a e5                                      ldr r3, [sl, #0xc]
004968d0  01 80 88 e2                                      add r8, r8, #1
004968d4  30 60 86 e2                                      add r6, r6, #0x30
004968d8  08 00 53 e1                                      cmp r3, r8
004968dc  0c 00 00 da                                      ble #0x496914
004968e0  10 30 9a e5                                      ldr r3, [sl, #0x10]
004968e4  06 30 83 e0                                      add r3, r3, r6
004968e8  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
004968ec  01 00 52 e3                                      cmp r2, #1
004968f0  f2 ff ff 1a                                      bne #0x4968c0
004968f4  04 10 93 e5                                      ldr r1, [r3, #4]
004968f8  05 00 a0 e1                                      mov r0, r5
004968fc  b9 ff ff eb                                      bl #0x4967e8
00496900  0c 30 9a e5                                      ldr r3, [sl, #0xc]
00496904  01 80 88 e2                                      add r8, r8, #1
00496908  30 60 86 e2                                      add r6, r6, #0x30
0049690c  08 00 53 e1                                      cmp r3, r8
00496910  f2 ff ff ca                                      bgt #0x4968e0
00496914  07 30 94 e7                                      ldr r3, [r4, r7]
00496918  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0049691c  00 30 93 e5                                      ldr r3, [r3]
00496920  03 00 52 e1                                      cmp r2, r3
00496924  03 00 00 1a                                      bne #0x496938
00496928  24 d0 8d e2                                      add sp, sp, #0x24
0049692c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00496930  c2 e6 f9 eb                                      bl #0x310440
00496934  cd ff ff ea                                      b #0x496870
00496938  74 de f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0049693c  98 e2 4f 00 ac 40 00 00 84 08 00 00 1c e8 43 00  .byte 0x98, 0xe2, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x1c, 0xe8, 0x43, 0x00
0049694c  c4 06 00 00 70 39 00 00                          .byte 0xc4, 0x06, 0x00, 0x00, 0x70, 0x39, 0x00, 0x00

; FUNCTION 0x00496954, declared_size=592, range_size=592, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager16_BuildAnimFXSetsEv
; demangled: VisualFXManager::_BuildAnimFXSets()
; decoder-mode: arm
00496954  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00496958  38 12 9f e5                                      ldr r1, [pc, #0x238]
0049695c  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
00496960  20 30 90 e5                                      ldr r3, [r0, #0x20]
00496964  4c d0 4d e2                                      sub sp, sp, #0x4c
00496968  01 10 8f e0                                      add r1, pc, r1
0049696c  03 00 52 e1                                      cmp r2, r3
00496970  04 10 8d e5                                      str r1, [sp, #4]
00496974  00 a0 a0 e1                                      mov sl, r0
00496978  01 00 00 0a                                      beq #0x496984
0049697c  4c d0 8d e2                                      add sp, sp, #0x4c
00496980  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00496984  10 22 9f e5                                      ldr r2, [pc, #0x210]
00496988  02 30 91 e7                                      ldr r3, [r1, r2]
0049698c  14 20 8d e5                                      str r2, [sp, #0x14]
00496990  00 30 93 e5                                      ldr r3, [r3]
00496994  00 00 53 e3                                      cmp r3, #0
00496998  f7 ff ff 0a                                      beq #0x49697c
0049699c  2c 30 8d e2                                      add r3, sp, #0x2c
004969a0  08 30 8d e5                                      str r3, [sp, #8]
004969a4  f4 31 9f e5                                      ldr r3, [pc, #0x1f4]
004969a8  08 20 9d e5                                      ldr r2, [sp, #8]
004969ac  00 90 a0 e3                                      mov sb, #0
004969b0  03 30 91 e7                                      ldr r3, [r1, r3]
004969b4  1c 10 80 e2                                      add r1, r0, #0x1c
004969b8  18 10 8d e5                                      str r1, [sp, #0x18]
004969bc  08 10 9d e5                                      ldr r1, [sp, #8]
004969c0  10 20 82 e2                                      add r2, r2, #0x10
004969c4  10 20 8d e5                                      str r2, [sp, #0x10]
004969c8  04 10 81 e2                                      add r1, r1, #4
004969cc  44 20 8d e2                                      add r2, sp, #0x44
004969d0  1c 30 8d e5                                      str r3, [sp, #0x1c]
004969d4  09 70 a0 e1                                      mov r7, sb
004969d8  01 80 a0 e3                                      mov r8, #1
004969dc  20 10 8d e5                                      str r1, [sp, #0x20]
004969e0  24 20 8d e5                                      str r2, [sp, #0x24]
004969e4  0c 00 8d e5                                      str r0, [sp, #0xc]
004969e8  09 a0 a0 e1                                      mov sl, sb
004969ec  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
004969f0  10 10 9d e5                                      ldr r1, [sp, #0x10]
004969f4  30 70 8d e5                                      str r7, [sp, #0x30]
004969f8  00 50 93 e5                                      ldr r5, [r3]
004969fc  34 70 8d e5                                      str r7, [sp, #0x34]
00496a00  38 70 8d e5                                      str r7, [sp, #0x38]
00496a04  09 50 85 e0                                      add r5, r5, sb
00496a08  3c 10 8d e5                                      str r1, [sp, #0x3c]
00496a0c  40 10 8d e5                                      str r1, [sp, #0x40]
00496a10  2c 50 8d e5                                      str r5, [sp, #0x2c]
00496a14  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00496a18  00 00 51 e3                                      cmp r1, #0
00496a1c  24 00 00 0a                                      beq #0x496ab4
00496a20  07 40 a0 e1                                      mov r4, r7
00496a24  07 60 a0 e1                                      mov r6, r7
00496a28  10 30 95 e5                                      ldr r3, [r5, #0x10]
00496a2c  04 30 83 e0                                      add r3, r3, r4
00496a30  04 20 93 e5                                      ldr r2, [r3, #4]
00496a34  01 00 72 e3                                      cmn r2, #1
00496a38  19 00 00 0a                                      beq #0x496aa4
00496a3c  1c b0 93 e5                                      ldr fp, [r3, #0x1c]
00496a40  00 00 5b e3                                      cmp fp, #0
00496a44  2f 00 00 1a                                      bne #0x496b08
00496a48  0b 10 a0 e1                                      mov r1, fp
00496a4c  08 00 a0 e3                                      mov r0, #8
00496a50  c6 e6 f9 eb                                      bl #0x310570
00496a54  44 00 8d e5                                      str r0, [sp, #0x44]
00496a58  00 b0 c0 e5                                      strb fp, [r0]
00496a5c  10 30 95 e5                                      ldr r3, [r5, #0x10]
00496a60  04 30 83 e0                                      add r3, r3, r4
00496a64  04 20 93 e5                                      ldr r2, [r3, #4]
00496a68  44 30 9d e5                                      ldr r3, [sp, #0x44]
00496a6c  04 20 83 e5                                      str r2, [r3, #4]
00496a70  34 10 9d e5                                      ldr r1, [sp, #0x34]
00496a74  38 30 9d e5                                      ldr r3, [sp, #0x38]
00496a78  03 00 51 e1                                      cmp r1, r3
00496a7c  3d 00 00 0a                                      beq #0x496b78
00496a80  44 30 9d e5                                      ldr r3, [sp, #0x44]
00496a84  00 30 81 e5                                      str r3, [r1]
00496a88  34 30 9d e5                                      ldr r3, [sp, #0x34]
00496a8c  04 30 83 e2                                      add r3, r3, #4
00496a90  34 30 8d e5                                      str r3, [sp, #0x34]
00496a94  04 30 d5 e5                                      ldrb r3, [r5, #4]
00496a98  00 00 53 e3                                      cmp r3, #0
00496a9c  12 00 00 1a                                      bne #0x496aec
00496aa0  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00496aa4  01 60 86 e2                                      add r6, r6, #1
00496aa8  06 00 51 e1                                      cmp r1, r6
00496aac  30 40 84 e2                                      add r4, r4, #0x30
00496ab0  dc ff ff 8a                                      bhi #0x496a28
00496ab4  08 10 9d e5                                      ldr r1, [sp, #8]
00496ab8  18 00 9d e5                                      ldr r0, [sp, #0x18]
00496abc  c5 f5 ff eb                                      bl #0x4941d8
00496ac0  08 00 9d e5                                      ldr r0, [sp, #8]
00496ac4  83 f5 ff eb                                      bl #0x4940d8
00496ac8  04 10 9d e5                                      ldr r1, [sp, #4]
00496acc  14 20 9d e5                                      ldr r2, [sp, #0x14]
00496ad0  01 a0 8a e2                                      add sl, sl, #1
00496ad4  18 90 89 e2                                      add sb, sb, #0x18
00496ad8  02 30 91 e7                                      ldr r3, [r1, r2]
00496adc  00 30 93 e5                                      ldr r3, [r3]
00496ae0  0a 00 53 e1                                      cmp r3, sl
00496ae4  c0 ff ff 8a                                      bhi #0x4969ec
00496ae8  a3 ff ff ea                                      b #0x49697c
00496aec  10 30 95 e5                                      ldr r3, [r5, #0x10]
00496af0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00496af4  04 30 83 e0                                      add r3, r3, r4
00496af8  04 10 93 e5                                      ldr r1, [r3, #4]
00496afc  4c fe ff eb                                      bl #0x496434
00496b00  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00496b04  e6 ff ff ea                                      b #0x496aa4
00496b08  00 10 a0 e3                                      mov r1, #0
00496b0c  08 00 a0 e3                                      mov r0, #8
00496b10  96 e6 f9 eb                                      bl #0x310570
00496b14  44 00 8d e5                                      str r0, [sp, #0x44]
00496b18  00 80 c0 e5                                      strb r8, [r0]
00496b1c  10 30 95 e5                                      ldr r3, [r5, #0x10]
00496b20  04 30 83 e0                                      add r3, r3, r4
00496b24  04 20 93 e5                                      ldr r2, [r3, #4]
00496b28  44 30 9d e5                                      ldr r3, [sp, #0x44]
00496b2c  04 20 83 e5                                      str r2, [r3, #4]
00496b30  34 10 9d e5                                      ldr r1, [sp, #0x34]
00496b34  38 30 9d e5                                      ldr r3, [sp, #0x38]
00496b38  03 00 51 e1                                      cmp r1, r3
00496b3c  11 00 00 0a                                      beq #0x496b88
00496b40  44 30 9d e5                                      ldr r3, [sp, #0x44]
00496b44  00 30 81 e5                                      str r3, [r1]
00496b48  34 30 9d e5                                      ldr r3, [sp, #0x34]
00496b4c  04 30 83 e2                                      add r3, r3, #4
00496b50  34 30 8d e5                                      str r3, [sp, #0x34]
00496b54  04 30 d5 e5                                      ldrb r3, [r5, #4]
00496b58  00 00 53 e3                                      cmp r3, #0
00496b5c  cf ff ff 0a                                      beq #0x496aa0
00496b60  10 30 95 e5                                      ldr r3, [r5, #0x10]
00496b64  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00496b68  04 30 83 e0                                      add r3, r3, r4
00496b6c  04 10 93 e5                                      ldr r1, [r3, #4]
00496b70  1c ff ff eb                                      bl #0x4967e8
00496b74  c9 ff ff ea                                      b #0x496aa0
00496b78  20 00 9d e5                                      ldr r0, [sp, #0x20]
00496b7c  24 20 9d e5                                      ldr r2, [sp, #0x24]
00496b80  41 f6 ff eb                                      bl #0x49448c
00496b84  c2 ff ff ea                                      b #0x496a94
00496b88  20 00 9d e5                                      ldr r0, [sp, #0x20]
00496b8c  24 20 9d e5                                      ldr r2, [sp, #0x24]
00496b90  3d f6 ff eb                                      bl #0x49448c
00496b94  ee ff ff ea                                      b #0x496b54
; mapping-symbol data/literal pool
00496b98  28 e1 4f 00 c4 06 00 00 70 39 00 00              .byte 0x28, 0xe1, 0x4f, 0x00, 0xc4, 0x06, 0x00, 0x00, 0x70, 0x39, 0x00, 0x00

; FUNCTION 0x00496ba4, declared_size=52, range_size=52, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager17_BuildAnimLibraryEv
; demangled: VisualFXManager::_BuildAnimLibrary()
; decoder-mode: arm
00496ba4  10 40 2d e9                                      push {r4, lr}
00496ba8  28 20 90 e5                                      ldr r2, [r0, #0x28]
00496bac  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
00496bb0  00 40 a0 e1                                      mov r4, r0
00496bb4  03 00 52 e1                                      cmp r2, r3
00496bb8  00 00 00 0a                                      beq #0x496bc0
00496bbc  10 80 bd e8                                      pop {r4, pc}
00496bc0  01 30 a0 e3                                      mov r3, #1
00496bc4  04 30 c0 e5                                      strb r3, [r0, #4]
00496bc8  e5 f9 ff eb                                      bl #0x495364
00496bcc  04 00 a0 e1                                      mov r0, r4
00496bd0  10 40 bd e8                                      pop {r4, lr}
00496bd4  5e ff ff ea                                      b #0x496954

; FUNCTION 0x00496bd8, declared_size=204, range_size=204, mode=arm
; class-group: VisualFXManager
; alias: _ZN15VisualFXManager14BuildLibrariesEv
; demangled: VisualFXManager::BuildLibraries()
; decoder-mode: arm
00496bd8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00496bdc  b0 40 9f e5                                      ldr r4, [pc, #0xb0]
00496be0  b0 60 9f e5                                      ldr r6, [pc, #0xb0]
00496be4  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
00496be8  04 40 8f e0                                      add r4, pc, r4
00496bec  06 30 94 e7                                      ldr r3, [r4, r6]
00496bf0  02 70 94 e7                                      ldr r7, [r4, r2]
00496bf4  20 d0 4d e2                                      sub sp, sp, #0x20
00496bf8  00 30 93 e5                                      ldr r3, [r3]
00496bfc  00 80 a0 e1                                      mov r8, r0
00496c00  07 00 a0 e1                                      mov r0, r7
00496c04  1c 30 8d e5                                      str r3, [sp, #0x1c]
00496c08  1e 83 fa eb                                      bl #0x337888
00496c0c  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
00496c10  04 50 8d e2                                      add r5, sp, #4
00496c14  0d 20 a0 e1                                      mov r2, sp
00496c18  01 10 8f e0                                      add r1, pc, r1
00496c1c  05 00 a0 e1                                      mov r0, r5
00496c20  31 f5 f9 eb                                      bl #0x3140ec
00496c24  07 00 a0 e1                                      mov r0, r7
00496c28  05 10 a0 e1                                      mov r1, r5
00496c2c  a5 84 fa eb                                      bl #0x337ec8
00496c30  00 70 a0 e1                                      mov r7, r0
00496c34  18 00 9d e5                                      ldr r0, [sp, #0x18]
00496c38  05 00 50 e1                                      cmp r0, r5
00496c3c  06 00 00 0a                                      beq #0x496c5c
00496c40  00 00 50 e3                                      cmp r0, #0
00496c44  04 00 00 0a                                      beq #0x496c5c
00496c48  04 10 9d e5                                      ldr r1, [sp, #4]
00496c4c  01 10 60 e0                                      rsb r1, r0, r1
00496c50  80 00 51 e3                                      cmp r1, #0x80
00496c54  0b 00 00 8a                                      bhi #0x496c88
00496c58  a8 c8 09 eb                                      bl #0x708f00
00496c5c  00 00 57 e3                                      cmp r7, #0
00496c60  01 00 00 0a                                      beq #0x496c6c
00496c64  08 00 a0 e1                                      mov r0, r8
00496c68  cd ff ff eb                                      bl #0x496ba4
00496c6c  06 30 94 e7                                      ldr r3, [r4, r6]
00496c70  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00496c74  00 30 93 e5                                      ldr r3, [r3]
00496c78  03 00 52 e1                                      cmp r2, r3
00496c7c  03 00 00 1a                                      bne #0x496c90
00496c80  20 d0 8d e2                                      add sp, sp, #0x20
00496c84  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00496c88  ec e5 f9 eb                                      bl #0x310440
00496c8c  f2 ff ff ea                                      b #0x496c5c
00496c90  9e dd f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00496c94  a8 de 4f 00 ac 40 00 00 84 08 00 00 30 e4 43 00  .byte 0xa8, 0xde, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x30, 0xe4, 0x43, 0x00
