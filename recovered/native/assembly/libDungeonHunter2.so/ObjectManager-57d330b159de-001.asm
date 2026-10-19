; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034024c, declared_size=4, range_size=4, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager6Draw2DEv
; demangled: ObjectManager::Draw2D()
; decoder-mode: arm
0034024c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00340250, declared_size=36, range_size=36, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager18DoOnlineStateFlushEv
; demangled: ObjectManager::DoOnlineStateFlush()
; decoder-mode: arm
00340250  00 31 b0 e5                                      ldr r3, [r0, #0x100]!
00340254  00 10 a0 e3                                      mov r1, #0
00340258  02 00 00 ea                                      b #0x340268
0034025c  08 20 93 e5                                      ldr r2, [r3, #8]
00340260  19 11 c2 e5                                      strb r1, [r2, #0x119]
00340264  00 30 93 e5                                      ldr r3, [r3]
00340268  03 00 50 e1                                      cmp r0, r3
0034026c  fa ff ff 1a                                      bne #0x34025c
00340270  1e ff 2f e1                                      bx lr

; FUNCTION 0x00340274, declared_size=128, range_size=128, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager20DoRemoteUpdateUpdateEf
; demangled: ObjectManager::DoRemoteUpdateUpdate(float)
; decoder-mode: arm
00340274  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00340278  00 70 a0 e1                                      mov r7, r0
0034027c  00 51 b7 e5                                      ldr r5, [r7, #0x100]!
00340280  01 80 a0 e1                                      mov r8, r1
00340284  00 90 e0 e3                                      mvn sb, #0
00340288  05 00 57 e1                                      cmp r7, r5
0034028c  00 a0 a0 e3                                      mov sl, #0
00340290  16 00 00 0a                                      beq #0x3402f0
00340294  08 40 95 e5                                      ldr r4, [r5, #8]
00340298  00 30 94 e5                                      ldr r3, [r4]
0034029c  04 00 a0 e1                                      mov r0, r4
003402a0  0f e0 a0 e1                                      mov lr, pc
003402a4  54 f0 93 e5                                      ldr pc, [r3, #0x54]
003402a8  42 14 a0 e3                                      mov r1, #0x42000000
003402ac  00 00 50 e3                                      cmp r0, #0
003402b0  12 17 81 e2                                      add r1, r1, #0x480000
003402b4  0a 00 00 0a                                      beq #0x3402e4
003402b8  14 61 94 e5                                      ldr r6, [r4, #0x114]
003402bc  06 00 a0 e1                                      mov r0, r6
003402c0  7b 38 ff eb                                      bl #0x30e4b4
003402c4  00 00 50 e3                                      cmp r0, #0
003402c8  06 10 a0 e1                                      mov r1, r6
003402cc  08 00 a0 e1                                      mov r0, r8
003402d0  14 a1 84 15                                      strne sl, [r4, #0x114]
003402d4  10 91 84 15                                      strne sb, [r4, #0x110]
003402d8  01 00 00 1a                                      bne #0x3402e4
003402dc  30 3a ff eb                                      bl #0x30eba4
003402e0  14 01 84 e5                                      str r0, [r4, #0x114]
003402e4  00 50 95 e5                                      ldr r5, [r5]
003402e8  05 00 57 e1                                      cmp r7, r5
003402ec  e8 ff ff 1a                                      bne #0x340294
003402f0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x003402f4, declared_size=16, range_size=16, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager24GetNetworkIdByObjectBaseEPK10ObjectBase
; demangled: ObjectManager::GetNetworkIdByObjectBase(ObjectBase const*)
; decoder-mode: arm
003402f4  00 00 51 e3                                      cmp r1, #0
003402f8  00 00 e0 03                                      mvneq r0, #0
003402fc  08 01 91 15                                      ldrne r0, [r1, #0x108]
00340300  1e ff 2f e1                                      bx lr

; FUNCTION 0x00340304, declared_size=56, range_size=56, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager19DBG_DumpRoomObjectsEv
; demangled: ObjectManager::DBG_DumpRoomObjects()
; decoder-mode: arm
00340304  80 10 b0 e5                                      ldr r1, [r0, #0x80]!
00340308  00 00 51 e1                                      cmp r1, r0
0034030c  1e ff 2f 01                                      bxeq lr
00340310  08 20 91 e5                                      ldr r2, [r1, #8]
00340314  00 30 92 e5                                      ldr r3, [r2]
00340318  02 00 53 e1                                      cmp r3, r2
0034031c  02 00 00 0a                                      beq #0x34032c
00340320  00 30 93 e5                                      ldr r3, [r3]
00340324  03 00 52 e1                                      cmp r2, r3
00340328  fc ff ff 1a                                      bne #0x340320
0034032c  00 10 91 e5                                      ldr r1, [r1]
00340330  01 00 50 e1                                      cmp r0, r1
00340334  f5 ff ff 1a                                      bne #0x340310
00340338  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034064c, declared_size=96, range_size=96, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager12DoCharAIInitEv
; demangled: ObjectManager::DoCharAIInit()
; decoder-mode: arm
0034064c  70 40 2d e9                                      push {r4, r5, r6, lr}
00340650  00 60 a0 e1                                      mov r6, r0
00340654  2c 40 b6 e5                                      ldr r4, [r6, #0x2c]!
00340658  04 00 56 e1                                      cmp r6, r4
0034065c  0a 00 00 0a                                      beq #0x34068c
00340660  08 50 94 e5                                      ldr r5, [r4, #8]
00340664  00 00 55 e2                                      subs r0, r5, #0
00340668  04 00 00 0a                                      beq #0x340680
0034066c  00 30 95 e5                                      ldr r3, [r5]
00340670  0f e0 a0 e1                                      mov lr, pc
00340674  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00340678  00 00 50 e3                                      cmp r0, #0
0034067c  03 00 00 1a                                      bne #0x340690
00340680  00 40 94 e5                                      ldr r4, [r4]
00340684  04 00 56 e1                                      cmp r6, r4
00340688  f4 ff ff 1a                                      bne #0x340660
0034068c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00340690  f2 5f 85 e2                                      add r5, r5, #0x3c8
00340694  05 00 a0 e1                                      mov r0, r5
00340698  b7 3d 02 eb                                      bl #0x3cfd7c
0034069c  05 00 a0 e1                                      mov r0, r5
003406a0  cf 3d 02 eb                                      bl #0x3cfde4
003406a4  00 40 94 e5                                      ldr r4, [r4]
003406a8  f5 ff ff ea                                      b #0x340684

; FUNCTION 0x003406ac, declared_size=128, range_size=128, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager12ObjectReInitEv
; demangled: ObjectManager::ObjectReInit()
; decoder-mode: arm
003406ac  70 40 2d e9                                      push {r4, r5, r6, lr}
003406b0  00 60 a0 e1                                      mov r6, r0
003406b4  2c 50 b6 e5                                      ldr r5, [r6, #0x2c]!
003406b8  00 10 a0 e3                                      mov r1, #0
003406bc  05 00 56 e1                                      cmp r6, r5
003406c0  11 00 00 0a                                      beq #0x34070c
003406c4  08 40 95 e5                                      ldr r4, [r5, #8]
003406c8  00 00 54 e3                                      cmp r4, #0
003406cc  8c 00 84 e2                                      add r0, r4, #0x8c
003406d0  09 00 00 0a                                      beq #0x3406fc
003406d4  92 f5 ff eb                                      bl #0x33dd24
003406d8  00 10 a0 e3                                      mov r1, #0
003406dc  b0 00 84 e2                                      add r0, r4, #0xb0
003406e0  8f f5 ff eb                                      bl #0x33dd24
003406e4  00 30 94 e5                                      ldr r3, [r4]
003406e8  04 00 a0 e1                                      mov r0, r4
003406ec  0f e0 a0 e1                                      mov lr, pc
003406f0  24 f0 93 e5                                      ldr pc, [r3, #0x24]
003406f4  00 00 50 e3                                      cmp r0, #0
003406f8  04 00 00 1a                                      bne #0x340710
003406fc  00 50 95 e5                                      ldr r5, [r5]
00340700  05 00 56 e1                                      cmp r6, r5
00340704  00 10 a0 e3                                      mov r1, #0
00340708  ed ff ff 1a                                      bne #0x3406c4
0034070c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00340710  f2 4f 84 e2                                      add r4, r4, #0x3c8
00340714  04 00 a0 e1                                      mov r0, r4
00340718  97 3d 02 eb                                      bl #0x3cfd7c
0034071c  04 00 a0 e1                                      mov r0, r4
00340720  af 3d 02 eb                                      bl #0x3cfde4
00340724  00 50 95 e5                                      ldr r5, [r5]
00340728  f4 ff ff ea                                      b #0x340700

; FUNCTION 0x0034072c, declared_size=116, range_size=116, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager24DeleteRandomOnlineObjectEv
; demangled: ObjectManager::DeleteRandomOnlineObject()
; decoder-mode: arm
0034072c  70 40 2d e9                                      push {r4, r5, r6, lr}
00340730  00 30 a0 e1                                      mov r3, r0
00340734  00 41 b3 e5                                      ldr r4, [r3, #0x100]!
00340738  00 50 a0 e1                                      mov r5, r0
0034073c  03 00 54 e1                                      cmp r4, r3
00340740  03 00 e0 03                                      mvneq r0, #3
00340744  05 00 00 0a                                      beq #0x340760
00340748  00 00 a0 e3                                      mov r0, #0
0034074c  00 40 94 e5                                      ldr r4, [r4]
00340750  01 00 80 e2                                      add r0, r0, #1
00340754  04 00 53 e1                                      cmp r3, r4
00340758  fb ff ff 1a                                      bne #0x34074c
0034075c  04 00 40 e2                                      sub r0, r0, #4
00340760  00 10 a0 e3                                      mov r1, #0
00340764  09 fe ff eb                                      bl #0x33ff90
00340768  00 31 95 e5                                      ldr r3, [r5, #0x100]
0034076c  04 10 80 e2                                      add r1, r0, #4
00340770  00 20 a0 e3                                      mov r2, #0
00340774  04 00 00 ea                                      b #0x34078c
00340778  01 00 52 e1                                      cmp r2, r1
0034077c  08 00 93 e5                                      ldr r0, [r3, #8]
00340780  04 00 00 0a                                      beq #0x340798
00340784  00 30 93 e5                                      ldr r3, [r3]
00340788  01 20 82 e2                                      add r2, r2, #1
0034078c  03 00 54 e1                                      cmp r4, r3
00340790  f8 ff ff 1a                                      bne #0x340778
00340794  70 80 bd e8                                      pop {r4, r5, r6, pc}
00340798  70 40 bd e8                                      pop {r4, r5, r6, lr}
0034079c  84 f5 ff ea                                      b #0x33ddb4

; FUNCTION 0x003407a0, declared_size=96, range_size=96, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager26GetObjectHandleByNetworkIdEi
; demangled: ObjectManager::GetObjectHandleByNetworkId(int)
; decoder-mode: arm
003407a0  10 40 2d e9                                      push {r4, lr}
003407a4  00 31 b1 e5                                      ldr r3, [r1, #0x100]!
003407a8  00 40 a0 e1                                      mov r4, r0
003407ac  03 00 51 e1                                      cmp r1, r3
003407b0  08 00 00 0a                                      beq #0x3407d8
003407b4  08 00 93 e5                                      ldr r0, [r3, #8]
003407b8  00 00 50 e3                                      cmp r0, #0
003407bc  02 00 00 0a                                      beq #0x3407cc
003407c0  08 c1 90 e5                                      ldr ip, [r0, #0x108]
003407c4  0c 00 52 e1                                      cmp r2, ip
003407c8  07 00 00 0a                                      beq #0x3407ec
003407cc  00 30 93 e5                                      ldr r3, [r3]
003407d0  03 00 51 e1                                      cmp r1, r3
003407d4  f6 ff ff 1a                                      bne #0x3407b4
003407d8  04 00 a0 e1                                      mov r0, r4
003407dc  00 10 a0 e3                                      mov r1, #0
003407e0  4f fb ff eb                                      bl #0x33f524
003407e4  04 00 a0 e1                                      mov r0, r4
003407e8  10 80 bd e8                                      pop {r4, pc}
003407ec  00 10 a0 e1                                      mov r1, r0
003407f0  04 00 a0 e1                                      mov r0, r4
003407f4  4c f5 ff eb                                      bl #0x33dd2c
003407f8  04 00 a0 e1                                      mov r0, r4
003407fc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00340848, declared_size=256, range_size=256, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager13CanSendUpdateEP10ObjectBase
; demangled: ObjectManager::CanSendUpdate(ObjectBase*)
; decoder-mode: arm
00340848  30 40 2d e9                                      push {r4, r5, lr}
0034084c  00 50 51 e2                                      subs r5, r1, #0
00340850  14 d0 4d e2                                      sub sp, sp, #0x14
00340854  1e 00 00 0a                                      beq #0x3408d4
00340858  00 30 95 e5                                      ldr r3, [r5]
0034085c  05 00 a0 e1                                      mov r0, r5
00340860  0f e0 a0 e1                                      mov lr, pc
00340864  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00340868  00 00 50 e3                                      cmp r0, #0
0034086c  18 00 00 1a                                      bne #0x3408d4
00340870  00 31 95 e5                                      ldr r3, [r5, #0x100]
00340874  00 00 53 e3                                      cmp r3, #0
00340878  15 00 00 0a                                      beq #0x3408d4
0034087c  04 40 8d e2                                      add r4, sp, #4
00340880  04 00 a0 e1                                      mov r0, r4
00340884  05 10 a0 e1                                      mov r1, r5
00340888  27 f5 ff eb                                      bl #0x33dd2c
0034088c  04 00 a0 e1                                      mov r0, r4
00340890  af fd ff eb                                      bl #0x33ff54
00340894  00 40 50 e2                                      subs r4, r0, #0
00340898  02 00 00 0a                                      beq #0x3408a8
0034089c  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
003408a0  00 00 53 e3                                      cmp r3, #0
003408a4  0d 00 00 da                                      ble #0x3408e0
003408a8  01 00 a0 e3                                      mov r0, #1
003408ac  09 00 00 ea                                      b #0x3408d8
003408b0  4f 0e 84 e2                                      add r0, r4, #0x4f0
003408b4  0c 00 80 e2                                      add r0, r0, #0xc
003408b8  40 fe 01 eb                                      bl #0x3c01c0
003408bc  00 00 50 e3                                      cmp r0, #0
003408c0  19 00 00 0a                                      beq #0x34092c
003408c4  04 00 a0 e1                                      mov r0, r4
003408c8  5e 92 01 eb                                      bl #0x3a5248
003408cc  00 00 50 e3                                      cmp r0, #0
003408d0  15 00 00 0a                                      beq #0x34092c
003408d4  00 00 a0 e3                                      mov r0, #0
003408d8  14 d0 8d e2                                      add sp, sp, #0x14
003408dc  30 80 bd e8                                      pop {r4, r5, pc}
003408e0  00 30 94 e5                                      ldr r3, [r4]
003408e4  0f e0 a0 e1                                      mov lr, pc
003408e8  48 f1 93 e5                                      ldr pc, [r3, #0x148]
003408ec  00 00 50 e3                                      cmp r0, #0
003408f0  f7 ff ff 0a                                      beq #0x3408d4
003408f4  52 3d a0 e3                                      mov r3, #0x1480
003408f8  03 30 d4 e7                                      ldrb r3, [r4, r3]
003408fc  00 00 53 e3                                      cmp r3, #0
00340900  f3 ff ff 1a                                      bne #0x3408d4
00340904  04 00 a0 e1                                      mov r0, r4
00340908  ed 89 01 eb                                      bl #0x3a30c4
0034090c  00 00 50 e3                                      cmp r0, #0
00340910  ef ff ff 1a                                      bne #0x3408d4
00340914  00 30 94 e5                                      ldr r3, [r4]
00340918  04 00 a0 e1                                      mov r0, r4
0034091c  0f e0 a0 e1                                      mov lr, pc
00340920  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00340924  00 00 50 e3                                      cmp r0, #0
00340928  e0 ff ff 1a                                      bne #0x3408b0
0034092c  04 00 a0 e1                                      mov r0, r4
00340930  00 30 94 e5                                      ldr r3, [r4]
00340934  0f e0 a0 e1                                      mov lr, pc
00340938  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0034093c  01 00 20 e2                                      eor r0, r0, #1
00340940  70 00 ef e6                                      uxtb r0, r0
00340944  e3 ff ff ea                                      b #0x3408d8

; FUNCTION 0x00340948, declared_size=172, range_size=172, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager22IsRemotePlayerOfMemberEiP9Character
; demangled: ObjectManager::IsRemotePlayerOfMember(int, Character*)
; decoder-mode: arm
00340948  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0034094c  98 60 9f e5                                      ldr r6, [pc, #0x98]
00340950  00 70 52 e2                                      subs r7, r2, #0
00340954  01 40 a0 e1                                      mov r4, r1
00340958  06 60 8f e0                                      add r6, pc, r6
0034095c  1e 00 00 0a                                      beq #0x3409dc
00340960  dd 3d 13 eb                                      bl #0x8100dc
00340964  04 10 a0 e1                                      mov r1, r4
00340968  f8 48 13 eb                                      bl #0x812d50
0034096c  00 30 90 e5                                      ldr r3, [r0]
00340970  04 20 90 e5                                      ldr r2, [r0, #4]
00340974  00 50 a0 e1                                      mov r5, r0
00340978  02 20 63 e0                                      rsb r2, r3, r2
0034097c  22 21 b0 e1                                      lsrs r2, r2, #2
00340980  15 00 00 0a                                      beq #0x3409dc
00340984  64 10 9f e5                                      ldr r1, [pc, #0x64]
00340988  00 20 a0 e3                                      mov r2, #0
0034098c  02 40 a0 e1                                      mov r4, r2
00340990  01 60 96 e7                                      ldr r6, [r6, r1]
00340994  02 11 93 e7                                      ldr r1, [r3, r2, lsl #2]
00340998  40 00 96 e5                                      ldr r0, [r6, #0x40]
0034099c  00 20 a0 e3                                      mov r2, #0
003409a0  82 b5 00 eb                                      bl #0x36dfb0
003409a4  60 36 90 e5                                      ldr r3, [r0, #0x660]
003409a8  01 40 84 e2                                      add r4, r4, #1
003409ac  04 20 a0 e1                                      mov r2, r4
003409b0  00 00 53 e3                                      cmp r3, #0
003409b4  03 00 00 0a                                      beq #0x3409c8
003409b8  08 31 93 e5                                      ldr r3, [r3, #0x108]
003409bc  08 11 97 e5                                      ldr r1, [r7, #0x108]
003409c0  03 00 51 e1                                      cmp r1, r3
003409c4  06 00 00 0a                                      beq #0x3409e4
003409c8  00 30 95 e5                                      ldr r3, [r5]
003409cc  04 10 95 e5                                      ldr r1, [r5, #4]
003409d0  01 10 63 e0                                      rsb r1, r3, r1
003409d4  41 01 54 e1                                      cmp r4, r1, asr #2
003409d8  ed ff ff 3a                                      blo #0x340994
003409dc  00 00 a0 e3                                      mov r0, #0
003409e0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003409e4  01 00 a0 e3                                      mov r0, #1
003409e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003409ec  38 41 65 00 f4 37 00 00                          .byte 0x38, 0x41, 0x65, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003409f4, declared_size=464, range_size=464, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager20IsObjectSerializableEP10ObjectBasei
; demangled: ObjectManager::IsObjectSerializable(ObjectBase*, int)
; decoder-mode: arm
003409f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003409f8  bc 41 9f e5                                      ldr r4, [pc, #0x1bc]
003409fc  00 50 51 e2                                      subs r5, r1, #0
00340a00  10 d0 4d e2                                      sub sp, sp, #0x10
00340a04  00 70 a0 e1                                      mov r7, r0
00340a08  04 40 8f e0                                      add r4, pc, r4
00340a0c  02 60 a0 e1                                      mov r6, r2
00340a10  39 00 00 0a                                      beq #0x340afc
00340a14  5e f3 12 eb                                      bl #0x7fd794
00340a18  e5 f2 12 eb                                      bl #0x7fd5b4
00340a1c  00 00 50 e3                                      cmp r0, #0
00340a20  06 00 00 0a                                      beq #0x340a40
00340a24  10 31 95 e5                                      ldr r3, [r5, #0x110]
00340a28  01 00 73 e3                                      cmn r3, #1
00340a2c  03 00 00 0a                                      beq #0x340a40
00340a30  03 00 56 e1                                      cmp r6, r3
00340a34  01 00 00 0a                                      beq #0x340a40
00340a38  01 00 a0 e3                                      mov r0, #1
00340a3c  2f 00 00 ea                                      b #0x340b00
00340a40  19 31 d5 e5                                      ldrb r3, [r5, #0x119]
00340a44  00 00 53 e3                                      cmp r3, #0
00340a48  2b 00 00 0a                                      beq #0x340afc
00340a4c  00 31 95 e5                                      ldr r3, [r5, #0x100]
00340a50  00 00 53 e3                                      cmp r3, #0
00340a54  28 00 00 0a                                      beq #0x340afc
00340a58  00 30 95 e5                                      ldr r3, [r5]
00340a5c  05 00 a0 e1                                      mov r0, r5
00340a60  0f e0 a0 e1                                      mov lr, pc
00340a64  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00340a68  00 00 50 e3                                      cmp r0, #0
00340a6c  22 00 00 1a                                      bne #0x340afc
00340a70  18 31 d5 e5                                      ldrb r3, [r5, #0x118]
00340a74  00 00 53 e3                                      cmp r3, #0
00340a78  1f 00 00 1a                                      bne #0x340afc
00340a7c  10 31 95 e5                                      ldr r3, [r5, #0x110]
00340a80  03 00 56 e1                                      cmp r6, r3
00340a84  1c 00 00 0a                                      beq #0x340afc
00340a88  04 80 8d e2                                      add r8, sp, #4
00340a8c  08 00 a0 e1                                      mov r0, r8
00340a90  05 10 a0 e1                                      mov r1, r5
00340a94  a4 f4 ff eb                                      bl #0x33dd2c
00340a98  08 00 a0 e1                                      mov r0, r8
00340a9c  2c fd ff eb                                      bl #0x33ff54
00340aa0  00 80 50 e2                                      subs r8, r0, #0
00340aa4  e3 ff ff 0a                                      beq #0x340a38
00340aa8  1c 31 98 e5                                      ldr r3, [r8, #0x11c]
00340aac  00 00 53 e3                                      cmp r3, #0
00340ab0  14 00 00 da                                      ble #0x340b08
00340ab4  00 01 95 e5                                      ldr r0, [r5, #0x100]
00340ab8  6f 4a 13 eb                                      bl #0x81347c
00340abc  1c 31 98 e5                                      ldr r3, [r8, #0x11c]
00340ac0  00 00 53 e3                                      cmp r3, #0
00340ac4  01 30 43 c2                                      subgt r3, r3, #1
00340ac8  1c 31 88 c5                                      strgt r3, [r8, #0x11c]
00340acc  01 00 a0 c3                                      movgt r0, #1
00340ad0  0a 00 00 ca                                      bgt #0x340b00
00340ad4  d7 ff ff ea                                      b #0x340a38
00340ad8  4f 0e 88 e2                                      add r0, r8, #0x4f0
00340adc  0c 00 80 e2                                      add r0, r0, #0xc
00340ae0  b6 fd 01 eb                                      bl #0x3c01c0
00340ae4  00 00 50 e3                                      cmp r0, #0
00340ae8  19 00 00 0a                                      beq #0x340b54
00340aec  08 00 a0 e1                                      mov r0, r8
00340af0  d4 91 01 eb                                      bl #0x3a5248
00340af4  00 00 50 e3                                      cmp r0, #0
00340af8  15 00 00 0a                                      beq #0x340b54
00340afc  00 00 a0 e3                                      mov r0, #0
00340b00  10 d0 8d e2                                      add sp, sp, #0x10
00340b04  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00340b08  00 30 98 e5                                      ldr r3, [r8]
00340b0c  0f e0 a0 e1                                      mov lr, pc
00340b10  48 f1 93 e5                                      ldr pc, [r3, #0x148]
00340b14  00 00 50 e3                                      cmp r0, #0
00340b18  f7 ff ff 0a                                      beq #0x340afc
00340b1c  52 3d a0 e3                                      mov r3, #0x1480
00340b20  03 30 d8 e7                                      ldrb r3, [r8, r3]
00340b24  00 00 53 e3                                      cmp r3, #0
00340b28  f3 ff ff 1a                                      bne #0x340afc
00340b2c  08 00 a0 e1                                      mov r0, r8
00340b30  63 89 01 eb                                      bl #0x3a30c4
00340b34  00 00 50 e3                                      cmp r0, #0
00340b38  ef ff ff 1a                                      bne #0x340afc
00340b3c  00 30 98 e5                                      ldr r3, [r8]
00340b40  08 00 a0 e1                                      mov r0, r8
00340b44  0f e0 a0 e1                                      mov lr, pc
00340b48  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00340b4c  00 00 50 e3                                      cmp r0, #0
00340b50  e0 ff ff 1a                                      bne #0x340ad8
00340b54  00 30 98 e5                                      ldr r3, [r8]
00340b58  08 00 a0 e1                                      mov r0, r8
00340b5c  0f e0 a0 e1                                      mov lr, pc
00340b60  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00340b64  00 00 50 e3                                      cmp r0, #0
00340b68  b2 ff ff 0a                                      beq #0x340a38
00340b6c  06 01 13 eb                                      bl #0x800f8c
00340b70  5a f6 12 eb                                      bl #0x7fe4e0
00340b74  00 20 50 e2                                      subs r2, r0, #0
00340b78  06 00 00 0a                                      beq #0x340b98
00340b7c  07 00 a0 e1                                      mov r0, r7
00340b80  06 10 a0 e1                                      mov r1, r6
00340b84  08 20 a0 e1                                      mov r2, r8
00340b88  6e ff ff eb                                      bl #0x340948
00340b8c  01 00 20 e2                                      eor r0, r0, #1
00340b90  70 00 ef e6                                      uxtb r0, r0
00340b94  d9 ff ff ea                                      b #0x340b00
00340b98  20 30 9f e5                                      ldr r3, [pc, #0x20]
00340b9c  08 10 a0 e1                                      mov r1, r8
00340ba0  03 30 94 e7                                      ldr r3, [r4, r3]
00340ba4  40 00 93 e5                                      ldr r0, [r3, #0x40]
00340ba8  be b8 00 eb                                      bl #0x36eea8
00340bac  6c 36 d0 e5                                      ldrb r3, [r0, #0x66c]
00340bb0  01 00 53 e3                                      cmp r3, #1
00340bb4  f0 ff ff 0a                                      beq #0x340b7c
00340bb8  cf ff ff ea                                      b #0x340afc
; mapping-symbol data/literal pool
00340bbc  88 40 65 00 f4 37 00 00                          .byte 0x88, 0x40, 0x65, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00340bc4, declared_size=28, range_size=28, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager18NetworkUnInitLevelEv
; demangled: ObjectManager::NetworkUnInitLevel()
; decoder-mode: arm
00340bc4  10 40 2d e9                                      push {r4, lr}
00340bc8  00 40 a0 e1                                      mov r4, r0
00340bcc  03 00 a0 e3                                      mov r0, #3
00340bd0  ba 51 13 eb                                      bl #0x8152c0
00340bd4  00 30 a0 e3                                      mov r3, #0
00340bd8  ac 31 c4 e5                                      strb r3, [r4, #0x1ac]
00340bdc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00340be0, declared_size=116, range_size=116, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager16NetworkInitLevelEv
; demangled: ObjectManager::NetworkInitLevel()
; decoder-mode: arm
00340be0  10 40 2d e9                                      push {r4, lr}
00340be4  08 d0 4d e2                                      sub sp, sp, #8
00340be8  00 40 a0 e1                                      mov r4, r0
00340bec  e8 f2 12 eb                                      bl #0x7fd794
00340bf0  05 30 d0 e5                                      ldrb r3, [r0, #5]
00340bf4  44 00 9f e5                                      ldr r0, [pc, #0x44]
00340bf8  00 00 53 e3                                      cmp r3, #0
00340bfc  00 00 8f e0                                      add r0, pc, r0
00340c00  0a 00 00 0a                                      beq #0x340c30
00340c04  38 30 9f e5                                      ldr r3, [pc, #0x38]
00340c08  38 c0 9f e5                                      ldr ip, [pc, #0x38]
00340c0c  03 10 90 e7                                      ldr r1, [r0, r3]
00340c10  34 30 9f e5                                      ldr r3, [pc, #0x34]
00340c14  0c c0 90 e7                                      ldr ip, [r0, ip]
00340c18  03 20 90 e7                                      ldr r2, [r0, r3]
00340c1c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00340c20  00 c0 8d e5                                      str ip, [sp]
00340c24  03 30 90 e7                                      ldr r3, [r0, r3]
00340c28  03 00 a0 e3                                      mov r0, #3
00340c2c  89 51 13 eb                                      bl #0x815258
00340c30  01 30 a0 e3                                      mov r3, #1
00340c34  ac 31 c4 e5                                      strb r3, [r4, #0x1ac]
00340c38  08 d0 8d e2                                      add sp, sp, #8
00340c3c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00340c40  94 3e 65 00 7c 1c 00 00 40 2a 00 00 5c 16 00 00  .byte 0x94, 0x3e, 0x65, 0x00, 0x7c, 0x1c, 0x00, 0x00, 0x40, 0x2a, 0x00, 0x00, 0x5c, 0x16, 0x00, 0x00
00340c50  c4 08 00 00                                      .byte 0xc4, 0x08, 0x00, 0x00

; FUNCTION 0x00340c54, declared_size=84, range_size=84, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager14GetObjectByPtrEP10ObjectBase
; demangled: ObjectManager::GetObjectByPtr(ObjectBase*)
; decoder-mode: arm
00340c54  70 40 2d e9                                      push {r4, r5, r6, lr}
00340c58  02 60 a0 e1                                      mov r6, r2
00340c5c  10 d0 4d e2                                      sub sp, sp, #0x10
00340c60  00 40 a0 e1                                      mov r4, r0
00340c64  28 fa ff eb                                      bl #0x33f50c
00340c68  00 00 56 e3                                      cmp r6, #0
00340c6c  0a 00 00 0a                                      beq #0x340c9c
00340c70  06 10 a0 e1                                      mov r1, r6
00340c74  0d 00 a0 e1                                      mov r0, sp
00340c78  2b f4 ff eb                                      bl #0x33dd2c
00340c7c  00 00 9d e5                                      ldr r0, [sp]
00340c80  08 10 9d e5                                      ldr r1, [sp, #8]
00340c84  04 20 9d e5                                      ldr r2, [sp, #4]
00340c88  04 30 a0 e1                                      mov r3, r4
00340c8c  04 00 83 e4                                      str r0, [r3], #4
00340c90  0d 50 a0 e1                                      mov r5, sp
00340c94  04 10 83 e5                                      str r1, [r3, #4]
00340c98  04 20 84 e5                                      str r2, [r4, #4]
00340c9c  04 00 a0 e1                                      mov r0, r4
00340ca0  10 d0 8d e2                                      add sp, sp, #0x10
00340ca4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0034163c, declared_size=96, range_size=96, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager11UpdateRoomsEv
; demangled: ObjectManager::UpdateRooms()
; decoder-mode: arm
0034163c  70 40 2d e9                                      push {r4, r5, r6, lr}
00341640  00 40 a0 e1                                      mov r4, r0
00341644  00 50 a0 e1                                      mov r5, r0
00341648  44 00 9f e5                                      ldr r0, [pc, #0x44]
0034164c  00 00 8f e0                                      add r0, pc, r0
00341650  17 48 ff eb                                      bl #0x3136b4
00341654  00 30 a0 e3                                      mov r3, #0
00341658  f8 30 84 e5                                      str r3, [r4, #0xf8]
0034165c  24 40 b5 e5                                      ldr r4, [r5, #0x24]!
00341660  05 00 00 ea                                      b #0x34167c
00341664  08 30 94 e5                                      ldr r3, [r4, #8]
00341668  03 00 a0 e1                                      mov r0, r3
0034166c  00 30 93 e5                                      ldr r3, [r3]
00341670  0f e0 a0 e1                                      mov lr, pc
00341674  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00341678  00 40 94 e5                                      ldr r4, [r4]
0034167c  04 00 55 e1                                      cmp r5, r4
00341680  f7 ff ff 1a                                      bne #0x341664
00341684  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00341688  00 00 8f e0                                      add r0, pc, r0
0034168c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00341690  08 48 ff ea                                      b #0x3136b8
; mapping-symbol data/literal pool
00341694  2c ec 57 00 f0 eb 57 00                          .byte 0x2c, 0xec, 0x57, 0x00, 0xf0, 0xeb, 0x57, 0x00

; FUNCTION 0x0034169c, declared_size=48, range_size=48, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager22ForceEverythingVisibleEv
; demangled: ObjectManager::ForceEverythingVisible()
; decoder-mode: arm
0034169c  70 40 2d e9                                      push {r4, r5, r6, lr}
003416a0  00 30 a0 e3                                      mov r3, #0
003416a4  f8 30 80 e5                                      str r3, [r0, #0xf8]
003416a8  00 50 a0 e1                                      mov r5, r0
003416ac  24 40 b5 e5                                      ldr r4, [r5, #0x24]!
003416b0  02 00 00 ea                                      b #0x3416c0
003416b4  08 00 94 e5                                      ldr r0, [r4, #8]
003416b8  99 55 01 eb                                      bl #0x396d24
003416bc  00 40 94 e5                                      ldr r4, [r4]
003416c0  04 00 55 e1                                      cmp r5, r4
003416c4  fa ff ff 1a                                      bne #0x3416b4
003416c8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003419a8, declared_size=548, range_size=548, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager23GetDynamicFogColorAtPosERK7Point3DIfEf
; demangled: ObjectManager::GetDynamicFogColorAtPos(Point3D<float> const&, float)
; decoder-mode: arm
003419a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003419ac  01 50 a0 e1                                      mov r5, r1
003419b0  42 14 a0 e3                                      mov r1, #0x42000000
003419b4  14 d0 4d e2                                      sub sp, sp, #0x14
003419b8  00 40 a0 e1                                      mov r4, r0
003419bc  32 17 81 e2                                      add r1, r1, #0xc80000
003419c0  03 00 a0 e1                                      mov r0, r3
003419c4  02 70 a0 e1                                      mov r7, r2
003419c8  e7 34 ff eb                                      bl #0x30ed6c
003419cc  f0 21 9f e5                                      ldr r2, [pc, #0x1f0]
003419d0  00 30 a0 e3                                      mov r3, #0
003419d4  00 b0 a0 e1                                      mov fp, r0
003419d8  08 20 8d e5                                      str r2, [sp, #8]
003419dc  68 20 85 e2                                      add r2, r5, #0x68
003419e0  04 20 8d e5                                      str r2, [sp, #4]
003419e4  08 30 84 e5                                      str r3, [r4, #8]
003419e8  00 30 84 e5                                      str r3, [r4]
003419ec  04 30 84 e5                                      str r3, [r4, #4]
003419f0  08 30 9d e5                                      ldr r3, [sp, #8]
003419f4  cc 21 9f e5                                      ldr r2, [pc, #0x1cc]
003419f8  03 30 8f e0                                      add r3, pc, r3
003419fc  08 30 8d e5                                      str r3, [sp, #8]
00341a00  68 60 95 e5                                      ldr r6, [r5, #0x68]
00341a04  04 30 9d e5                                      ldr r3, [sp, #4]
00341a08  0c 20 8d e5                                      str r2, [sp, #0xc]
00341a0c  06 00 53 e1                                      cmp r3, r6
00341a10  28 00 00 0a                                      beq #0x341ab8
00341a14  08 50 96 e5                                      ldr r5, [r6, #8]
00341a18  00 10 97 e5                                      ldr r1, [r7]
00341a1c  60 01 95 e5                                      ldr r0, [r5, #0x160]
00341a20  61 32 ff eb                                      bl #0x30e3ac
00341a24  04 10 97 e5                                      ldr r1, [r7, #4]
00341a28  00 a0 a0 e1                                      mov sl, r0
00341a2c  64 01 95 e5                                      ldr r0, [r5, #0x164]
00341a30  5d 32 ff eb                                      bl #0x30e3ac
00341a34  08 10 97 e5                                      ldr r1, [r7, #8]
00341a38  00 90 a0 e1                                      mov sb, r0
00341a3c  68 01 95 e5                                      ldr r0, [r5, #0x168]
00341a40  59 32 ff eb                                      bl #0x30e3ac
00341a44  0a 10 a0 e1                                      mov r1, sl
00341a48  00 80 a0 e1                                      mov r8, r0
00341a4c  0a 00 a0 e1                                      mov r0, sl
00341a50  c5 34 ff eb                                      bl #0x30ed6c
00341a54  09 10 a0 e1                                      mov r1, sb
00341a58  00 a0 a0 e1                                      mov sl, r0
00341a5c  09 00 a0 e1                                      mov r0, sb
00341a60  c1 34 ff eb                                      bl #0x30ed6c
00341a64  00 10 a0 e1                                      mov r1, r0
00341a68  0a 00 a0 e1                                      mov r0, sl
00341a6c  4c 34 ff eb                                      bl #0x30eba4
00341a70  08 10 a0 e1                                      mov r1, r8
00341a74  00 a0 a0 e1                                      mov sl, r0
00341a78  08 00 a0 e1                                      mov r0, r8
00341a7c  ba 34 ff eb                                      bl #0x30ed6c
00341a80  00 10 a0 e1                                      mov r1, r0
00341a84  0a 00 a0 e1                                      mov r0, sl
00341a88  45 34 ff eb                                      bl #0x30eba4
00341a8c  a4 31 ff eb                                      bl #0x30e124
00341a90  00 80 a0 e1                                      mov r8, r0
00341a94  08 10 a0 e1                                      mov r1, r8
00341a98  0b 00 a0 e1                                      mov r0, fp
00341a9c  84 32 ff eb                                      bl #0x30e4b4
00341aa0  00 00 50 e3                                      cmp r0, #0
00341aa4  21 00 00 1a                                      bne #0x341b30
00341aa8  00 60 96 e5                                      ldr r6, [r6]
00341aac  04 30 9d e5                                      ldr r3, [sp, #4]
00341ab0  06 00 53 e1                                      cmp r3, r6
00341ab4  d6 ff ff 1a                                      bne #0x341a14
00341ab8  00 60 94 e5                                      ldr r6, [r4]
00341abc  43 14 a0 e3                                      mov r1, #0x43000000
00341ac0  7f 18 81 e2                                      add r1, r1, #0x7f0000
00341ac4  06 00 a0 e1                                      mov r0, r6
00341ac8  0a 32 ff eb                                      bl #0x30e2f8
00341acc  04 50 94 e5                                      ldr r5, [r4, #4]
00341ad0  00 00 50 e3                                      cmp r0, #0
00341ad4  43 64 a0 13                                      movne r6, #0x43000000
00341ad8  7f 68 86 12                                      addne r6, r6, #0x7f0000
00341adc  43 14 a0 e3                                      mov r1, #0x43000000
00341ae0  05 00 a0 e1                                      mov r0, r5
00341ae4  00 60 84 e5                                      str r6, [r4]
00341ae8  7f 18 81 e2                                      add r1, r1, #0x7f0000
00341aec  01 32 ff eb                                      bl #0x30e2f8
00341af0  08 60 94 e5                                      ldr r6, [r4, #8]
00341af4  00 00 50 e3                                      cmp r0, #0
00341af8  43 54 a0 13                                      movne r5, #0x43000000
00341afc  7f 58 85 12                                      addne r5, r5, #0x7f0000
00341b00  43 14 a0 e3                                      mov r1, #0x43000000
00341b04  06 00 a0 e1                                      mov r0, r6
00341b08  04 50 84 e5                                      str r5, [r4, #4]
00341b0c  7f 18 81 e2                                      add r1, r1, #0x7f0000
00341b10  f8 31 ff eb                                      bl #0x30e2f8
00341b14  00 00 50 e3                                      cmp r0, #0
00341b18  43 64 a0 13                                      movne r6, #0x43000000
00341b1c  7f 68 86 12                                      addne r6, r6, #0x7f0000
00341b20  08 60 84 e5                                      str r6, [r4, #8]
00341b24  04 00 a0 e1                                      mov r0, r4
00341b28  14 d0 8d e2                                      add sp, sp, #0x14
00341b2c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00341b30  08 20 9d e5                                      ldr r2, [sp, #8]
00341b34  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00341b38  3f 0e 85 e2                                      add r0, r5, #0x3f0
00341b3c  03 10 92 e7                                      ldr r1, [r2, r3]
00341b40  09 44 ff eb                                      bl #0x312b6c
00341b44  00 00 50 e3                                      cmp r0, #0
00341b48  08 10 a0 e1                                      mov r1, r8
00341b4c  0b 00 a0 e1                                      mov r0, fp
00341b50  d4 ff ff 1a                                      bne #0x341aa8
00341b54  14 32 ff eb                                      bl #0x30e3ac
00341b58  0b 10 a0 e1                                      mov r1, fp
00341b5c  4c 34 ff eb                                      bl #0x30ec94
00341b60  f4 13 95 e5                                      ldr r1, [r5, #0x3f4]
00341b64  00 80 a0 e1                                      mov r8, r0
00341b68  7f 34 ff eb                                      bl #0x30ed6c
00341b6c  f8 13 95 e5                                      ldr r1, [r5, #0x3f8]
00341b70  00 a0 a0 e1                                      mov sl, r0
00341b74  08 00 a0 e1                                      mov r0, r8
00341b78  7b 34 ff eb                                      bl #0x30ed6c
00341b7c  f0 13 95 e5                                      ldr r1, [r5, #0x3f0]
00341b80  00 90 a0 e1                                      mov sb, r0
00341b84  08 00 a0 e1                                      mov r0, r8
00341b88  77 34 ff eb                                      bl #0x30ed6c
00341b8c  00 10 a0 e1                                      mov r1, r0
00341b90  00 00 94 e5                                      ldr r0, [r4]
00341b94  02 34 ff eb                                      bl #0x30eba4
00341b98  0a 10 a0 e1                                      mov r1, sl
00341b9c  00 00 84 e5                                      str r0, [r4]
00341ba0  04 00 94 e5                                      ldr r0, [r4, #4]
00341ba4  fe 33 ff eb                                      bl #0x30eba4
00341ba8  09 10 a0 e1                                      mov r1, sb
00341bac  04 00 84 e5                                      str r0, [r4, #4]
00341bb0  08 00 94 e5                                      ldr r0, [r4, #8]
00341bb4  fa 33 ff eb                                      bl #0x30eba4
00341bb8  08 00 84 e5                                      str r0, [r4, #8]
00341bbc  00 60 96 e5                                      ldr r6, [r6]
00341bc0  b9 ff ff ea                                      b #0x341aac
; mapping-symbol data/literal pool
00341bc4  98 30 65 00 98 24 00 00                          .byte 0x98, 0x30, 0x65, 0x00, 0x98, 0x24, 0x00, 0x00

; FUNCTION 0x003426b0, declared_size=240, range_size=240, mode=arm
; class-group: ObjectManager
; alias: _ZNK13ObjectManager16GetObjectsByTypeEPKcRSt4listIP9CharacterSaIS4_EE
; demangled: ObjectManager::GetObjectsByType(char const*, std::list<Character*, std::allocator<Character*> >&) const
; decoder-mode: arm
003426b0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003426b4  14 d0 4d e2                                      sub sp, sp, #0x14
003426b8  04 50 8d e2                                      add r5, sp, #4
003426bc  00 60 a0 e1                                      mov r6, r0
003426c0  05 00 a0 e1                                      mov r0, r5
003426c4  01 40 a0 e1                                      mov r4, r1
003426c8  02 70 a0 e1                                      mov r7, r2
003426cc  0c 80 86 e2                                      add r8, r6, #0xc
003426d0  8d f3 ff eb                                      bl #0x33f50c
003426d4  14 60 96 e5                                      ldr r6, [r6, #0x14]
003426d8  06 00 58 e1                                      cmp r8, r6
003426dc  20 00 00 0a                                      beq #0x342764
003426e0  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
003426e4  00 00 50 e3                                      cmp r0, #0
003426e8  12 00 00 0a                                      beq #0x342738
003426ec  04 00 80 e2                                      add r0, r0, #4
003426f0  15 39 07 eb                                      bl #0x510b4c
003426f4  04 10 a0 e1                                      mov r1, r4
003426f8  07 2f ff eb                                      bl #0x30e31c
003426fc  00 00 50 e3                                      cmp r0, #0
00342700  0c 00 00 1a                                      bne #0x342738
00342704  10 30 96 e5                                      ldr r3, [r6, #0x10]
00342708  05 00 a0 e1                                      mov r0, r5
0034270c  04 30 8d e5                                      str r3, [sp, #4]
00342710  0f f6 ff eb                                      bl #0x33ff54
00342714  00 a0 a0 e1                                      mov sl, r0
00342718  07 00 a0 e1                                      mov r0, r7
0034271c  db ff ff eb                                      bl #0x342690
00342720  08 a0 80 e5                                      str sl, [r0, #8]
00342724  04 30 97 e5                                      ldr r3, [r7, #4]
00342728  00 70 80 e5                                      str r7, [r0]
0034272c  04 30 80 e5                                      str r3, [r0, #4]
00342730  00 00 83 e5                                      str r0, [r3]
00342734  04 00 87 e5                                      str r0, [r7, #4]
00342738  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0034273c  00 00 52 e3                                      cmp r2, #0
00342740  01 00 00 1a                                      bne #0x34274c
00342744  08 00 00 ea                                      b #0x34276c
00342748  03 20 a0 e1                                      mov r2, r3
0034274c  08 30 92 e5                                      ldr r3, [r2, #8]
00342750  00 00 53 e3                                      cmp r3, #0
00342754  fb ff ff 1a                                      bne #0x342748
00342758  02 60 a0 e1                                      mov r6, r2
0034275c  06 00 58 e1                                      cmp r8, r6
00342760  de ff ff 1a                                      bne #0x3426e0
00342764  14 d0 8d e2                                      add sp, sp, #0x14
00342768  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0034276c  04 30 96 e5                                      ldr r3, [r6, #4]
00342770  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00342774  01 00 56 e1                                      cmp r6, r1
00342778  05 00 00 1a                                      bne #0x342794
0034277c  03 60 a0 e1                                      mov r6, r3
00342780  04 30 93 e5                                      ldr r3, [r3, #4]
00342784  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00342788  06 00 52 e1                                      cmp r2, r6
0034278c  fa ff ff 0a                                      beq #0x34277c
00342790  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00342794  02 00 53 e1                                      cmp r3, r2
00342798  03 60 a0 11                                      movne r6, r3
0034279c  cd ff ff ea                                      b #0x3426d8

; FUNCTION 0x003427a0, declared_size=336, range_size=336, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager14AddRoomObjectsEPSt4listIP10GameObjectSaIS2_EE
; demangled: ObjectManager::AddRoomObjects(std::list<GameObject*, std::allocator<GameObject*> >*)
; decoder-mode: arm
003427a0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003427a4  20 61 9f e5                                      ldr r6, [pc, #0x120]
003427a8  00 50 51 e2                                      subs r5, r1, #0
003427ac  14 d0 4d e2                                      sub sp, sp, #0x14
003427b0  00 70 a0 e1                                      mov r7, r0
003427b4  06 60 8f e0                                      add r6, pc, r6
003427b8  21 00 00 0a                                      beq #0x342844
003427bc  07 40 a0 e1                                      mov r4, r7
003427c0  80 30 b4 e5                                      ldr r3, [r4, #0x80]!
003427c4  04 00 53 e1                                      cmp r3, r4
003427c8  11 00 00 0a                                      beq #0x342814
003427cc  08 20 93 e5                                      ldr r2, [r3, #8]
003427d0  02 00 55 e1                                      cmp r5, r2
003427d4  03 00 00 0a                                      beq #0x3427e8
003427d8  00 30 93 e5                                      ldr r3, [r3]
003427dc  03 00 54 e1                                      cmp r4, r3
003427e0  f9 ff ff 1a                                      bne #0x3427cc
003427e4  04 30 a0 e1                                      mov r3, r4
003427e8  04 00 53 e1                                      cmp r3, r4
003427ec  08 00 00 0a                                      beq #0x342814
003427f0  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
003427f4  03 30 96 e7                                      ldr r3, [r6, r3]
003427f8  00 30 93 e5                                      ldr r3, [r3]
003427fc  02 00 53 e3                                      cmp r3, #2
00342800  00 30 a0 03                                      moveq r3, #0
00342804  00 30 83 05                                      streq r3, [r3]
00342808  01 00 00 0a                                      beq #0x342814
0034280c  01 00 53 e3                                      cmp r3, #1
00342810  20 00 00 0a                                      beq #0x342898
00342814  0c 30 a0 e3                                      mov r3, #0xc
00342818  10 00 8d e2                                      add r0, sp, #0x10
0034281c  04 30 20 e5                                      str r3, [r0, #-4]!
00342820  a6 19 0f eb                                      bl #0x708ec0
00342824  08 50 80 e5                                      str r5, [r0, #8]
00342828  84 30 97 e5                                      ldr r3, [r7, #0x84]
0034282c  00 40 80 e5                                      str r4, [r0]
00342830  04 30 80 e5                                      str r3, [r0, #4]
00342834  00 00 83 e5                                      str r0, [r3]
00342838  84 00 87 e5                                      str r0, [r7, #0x84]
0034283c  14 d0 8d e2                                      add sp, sp, #0x14
00342840  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00342844  84 30 9f e5                                      ldr r3, [pc, #0x84]
00342848  03 30 96 e7                                      ldr r3, [r6, r3]
0034284c  00 30 93 e5                                      ldr r3, [r3]
00342850  02 00 53 e3                                      cmp r3, #2
00342854  00 50 85 05                                      streq r5, [r5]
00342858  d7 ff ff 0a                                      beq #0x3427bc
0034285c  01 00 53 e3                                      cmp r3, #1
00342860  d5 ff ff 1a                                      bne #0x3427bc
00342864  68 00 9f e5                                      ldr r0, [pc, #0x68]
00342868  68 10 9f e5                                      ldr r1, [pc, #0x68]
0034286c  68 20 9f e5                                      ldr r2, [pc, #0x68]
00342870  00 00 96 e7                                      ldr r0, [r6, r0]
00342874  64 30 9f e5                                      ldr r3, [pc, #0x64]
00342878  09 c9 00 e3                                      movw ip, #0x909
0034287c  01 10 8f e0                                      add r1, pc, r1
00342880  02 20 8f e0                                      add r2, pc, r2
00342884  03 30 8f e0                                      add r3, pc, r3
00342888  a8 00 80 e2                                      add r0, r0, #0xa8
0034288c  00 c0 8d e5                                      str ip, [sp]
00342890  db 2d ff eb                                      bl #0x30e004
00342894  c8 ff ff ea                                      b #0x3427bc
00342898  34 00 9f e5                                      ldr r0, [pc, #0x34]
0034289c  40 10 9f e5                                      ldr r1, [pc, #0x40]
003428a0  40 20 9f e5                                      ldr r2, [pc, #0x40]
003428a4  00 00 96 e7                                      ldr r0, [r6, r0]
003428a8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003428ac  0a c9 00 e3                                      movw ip, #0x90a
003428b0  01 10 8f e0                                      add r1, pc, r1
003428b4  02 20 8f e0                                      add r2, pc, r2
003428b8  03 30 8f e0                                      add r3, pc, r3
003428bc  a8 00 80 e2                                      add r0, r0, #0xa8
003428c0  00 c0 8d e5                                      str ip, [sp]
003428c4  ce 2d ff eb                                      bl #0x30e004
003428c8  d1 ff ff ea                                      b #0x342814
; mapping-symbol data/literal pool
003428cc  dc 22 65 00 c0 39 00 00 c0 19 00 00 5c bb 57 00  .byte 0xdc, 0x22, 0x65, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x5c, 0xbb, 0x57, 0x00
003428dc  88 17 58 00 14 da 57 00 28 bb 57 00 34 da 57 00  .byte 0x88, 0x17, 0x58, 0x00, 0x14, 0xda, 0x57, 0x00, 0x28, 0xbb, 0x57, 0x00, 0x34, 0xda, 0x57, 0x00
003428ec  e0 d9 57 00                                      .byte 0xe0, 0xd9, 0x57, 0x00

; FUNCTION 0x00342f30, declared_size=536, range_size=536, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager13IsPacketValidEii
; demangled: ObjectManager::IsPacketValid(int, int)
; decoder-mode: arm
00342f30  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00342f34  4c c1 90 e5                                      ldr ip, [r0, #0x14c]
00342f38  34 d0 4d e2                                      sub sp, sp, #0x34
00342f3c  00 60 a0 e1                                      mov r6, r0
00342f40  00 00 5c e3                                      cmp ip, #0
00342f44  01 40 a0 e1                                      mov r4, r1
00342f48  02 70 a0 e1                                      mov r7, r2
00342f4c  52 5f 80 e2                                      add r5, r0, #0x148
00342f50  36 00 00 0a                                      beq #0x343030
00342f54  05 10 a0 e1                                      mov r1, r5
00342f58  0c 30 a0 e1                                      mov r3, ip
00342f5c  00 00 00 ea                                      b #0x342f64
00342f60  02 30 a0 e1                                      mov r3, r2
00342f64  10 20 93 e5                                      ldr r2, [r3, #0x10]
00342f68  04 00 52 e1                                      cmp r2, r4
00342f6c  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
00342f70  08 20 93 a5                                      ldrge r2, [r3, #8]
00342f74  01 30 a0 b1                                      movlt r3, r1
00342f78  03 10 a0 e1                                      mov r1, r3
00342f7c  00 00 52 e3                                      cmp r2, #0
00342f80  f6 ff ff 1a                                      bne #0x342f60
00342f84  03 00 55 e1                                      cmp r5, r3
00342f88  4b 00 00 0a                                      beq #0x3430bc
00342f8c  10 20 93 e5                                      ldr r2, [r3, #0x10]
00342f90  04 00 52 e1                                      cmp r2, r4
00342f94  25 00 00 ca                                      bgt #0x343030
00342f98  03 00 55 e1                                      cmp r5, r3
00342f9c  46 00 00 0a                                      beq #0x3430bc
00342fa0  00 00 5c e3                                      cmp ip, #0
00342fa4  05 20 a0 11                                      movne r2, r5
00342fa8  01 00 00 1a                                      bne #0x342fb4
00342fac  63 00 00 ea                                      b #0x343140
00342fb0  03 c0 a0 e1                                      mov ip, r3
00342fb4  10 30 9c e5                                      ldr r3, [ip, #0x10]
00342fb8  04 00 53 e1                                      cmp r3, r4
00342fbc  0c 30 9c b5                                      ldrlt r3, [ip, #0xc]
00342fc0  08 30 9c a5                                      ldrge r3, [ip, #8]
00342fc4  02 c0 a0 b1                                      movlt ip, r2
00342fc8  0c 20 a0 e1                                      mov r2, ip
00342fcc  00 00 53 e3                                      cmp r3, #0
00342fd0  f6 ff ff 1a                                      bne #0x342fb0
00342fd4  0c 00 55 e1                                      cmp r5, ip
00342fd8  03 00 00 0a                                      beq #0x342fec
00342fdc  10 20 9c e5                                      ldr r2, [ip, #0x10]
00342fe0  0c 30 a0 e1                                      mov r3, ip
00342fe4  04 00 52 e1                                      cmp r2, r4
00342fe8  09 00 00 da                                      ble #0x343014
00342fec  08 30 8d e2                                      add r3, sp, #8
00342ff0  00 e0 a0 e3                                      mov lr, #0
00342ff4  20 00 8d e2                                      add r0, sp, #0x20
00342ff8  05 10 a0 e1                                      mov r1, r5
00342ffc  24 20 8d e2                                      add r2, sp, #0x24
00343000  0c e0 8d e5                                      str lr, [sp, #0xc]
00343004  24 c0 8d e5                                      str ip, [sp, #0x24]
00343008  08 40 8d e5                                      str r4, [sp, #8]
0034300c  ea fe ff eb                                      bl #0x342bbc
00343010  20 30 9d e5                                      ldr r3, [sp, #0x20]
00343014  14 10 93 e5                                      ldr r1, [r3, #0x14]
00343018  07 00 a0 e1                                      mov r0, r7
0034301c  e1 48 13 eb                                      bl #0x8153a8
00343020  00 00 50 e3                                      cmp r0, #0
00343024  03 00 00 1a                                      bne #0x343038
00343028  34 d0 8d e2                                      add sp, sp, #0x34
0034302c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00343030  05 30 a0 e1                                      mov r3, r5
00343034  d7 ff ff ea                                      b #0x342f98
00343038  4c c1 96 e5                                      ldr ip, [r6, #0x14c]
0034303c  00 00 5c e3                                      cmp ip, #0
00343040  05 c0 a0 01                                      moveq ip, r5
00343044  0a 00 00 0a                                      beq #0x343074
00343048  05 20 a0 e1                                      mov r2, r5
0034304c  00 00 00 ea                                      b #0x343054
00343050  03 c0 a0 e1                                      mov ip, r3
00343054  10 30 9c e5                                      ldr r3, [ip, #0x10]
00343058  04 00 53 e1                                      cmp r3, r4
0034305c  0c 30 9c b5                                      ldrlt r3, [ip, #0xc]
00343060  08 30 9c a5                                      ldrge r3, [ip, #8]
00343064  02 c0 a0 b1                                      movlt ip, r2
00343068  0c 20 a0 e1                                      mov r2, ip
0034306c  00 00 53 e3                                      cmp r3, #0
00343070  f6 ff ff 1a                                      bne #0x343050
00343074  0c 00 55 e1                                      cmp r5, ip
00343078  03 00 00 0a                                      beq #0x34308c
0034307c  10 20 9c e5                                      ldr r2, [ip, #0x10]
00343080  0c 30 a0 e1                                      mov r3, ip
00343084  04 00 52 e1                                      cmp r2, r4
00343088  08 00 00 da                                      ble #0x3430b0
0034308c  0d 30 a0 e1                                      mov r3, sp
00343090  00 e0 a0 e3                                      mov lr, #0
00343094  05 10 a0 e1                                      mov r1, r5
00343098  18 00 8d e2                                      add r0, sp, #0x18
0034309c  1c 20 8d e2                                      add r2, sp, #0x1c
003430a0  10 40 8d e8                                      stm sp, {r4, lr}
003430a4  1c c0 8d e5                                      str ip, [sp, #0x1c]
003430a8  c3 fe ff eb                                      bl #0x342bbc
003430ac  18 30 9d e5                                      ldr r3, [sp, #0x18]
003430b0  14 70 83 e5                                      str r7, [r3, #0x14]
003430b4  01 00 a0 e3                                      mov r0, #1
003430b8  da ff ff ea                                      b #0x343028
003430bc  00 00 5c e3                                      cmp ip, #0
003430c0  05 c0 a0 01                                      moveq ip, r5
003430c4  0a 00 00 0a                                      beq #0x3430f4
003430c8  05 20 a0 e1                                      mov r2, r5
003430cc  00 00 00 ea                                      b #0x3430d4
003430d0  03 c0 a0 e1                                      mov ip, r3
003430d4  10 30 9c e5                                      ldr r3, [ip, #0x10]
003430d8  04 00 53 e1                                      cmp r3, r4
003430dc  0c 30 9c b5                                      ldrlt r3, [ip, #0xc]
003430e0  08 30 9c a5                                      ldrge r3, [ip, #8]
003430e4  02 c0 a0 b1                                      movlt ip, r2
003430e8  0c 20 a0 e1                                      mov r2, ip
003430ec  00 00 53 e3                                      cmp r3, #0
003430f0  f6 ff ff 1a                                      bne #0x3430d0
003430f4  0c 00 55 e1                                      cmp r5, ip
003430f8  03 00 00 0a                                      beq #0x34310c
003430fc  10 20 9c e5                                      ldr r2, [ip, #0x10]
00343100  0c 30 a0 e1                                      mov r3, ip
00343104  04 00 52 e1                                      cmp r2, r4
00343108  e8 ff ff da                                      ble #0x3430b0
0034310c  28 00 8d e2                                      add r0, sp, #0x28
00343110  10 30 8d e2                                      add r3, sp, #0x10
00343114  00 e0 a0 e3                                      mov lr, #0
00343118  05 10 a0 e1                                      mov r1, r5
0034311c  2c 20 8d e2                                      add r2, sp, #0x2c
00343120  10 40 8d e5                                      str r4, [sp, #0x10]
00343124  14 e0 8d e5                                      str lr, [sp, #0x14]
00343128  2c c0 8d e5                                      str ip, [sp, #0x2c]
0034312c  a2 fe ff eb                                      bl #0x342bbc
00343130  28 30 9d e5                                      ldr r3, [sp, #0x28]
00343134  01 00 a0 e3                                      mov r0, #1
00343138  14 70 83 e5                                      str r7, [r3, #0x14]
0034313c  b9 ff ff ea                                      b #0x343028
00343140  05 c0 a0 e1                                      mov ip, r5
00343144  a2 ff ff ea                                      b #0x342fd4

; FUNCTION 0x00343188, declared_size=56, range_size=56, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager29AddOrphanRenderObjectToDeleteEP10ObjectBase
; demangled: ObjectManager::AddOrphanRenderObjectToDelete(ObjectBase*)
; decoder-mode: arm
00343188  70 40 2d e9                                      push {r4, r5, r6, lr}
0034318c  00 60 51 e2                                      subs r6, r1, #0
00343190  00 40 a0 e1                                      mov r4, r0
00343194  08 00 00 0a                                      beq #0x3431bc
00343198  04 50 80 e2                                      add r5, r0, #4
0034319c  05 00 a0 e1                                      mov r0, r5
003431a0  f0 ff ff eb                                      bl #0x343168
003431a4  08 60 80 e5                                      str r6, [r0, #8]
003431a8  08 30 94 e5                                      ldr r3, [r4, #8]
003431ac  00 50 80 e5                                      str r5, [r0]
003431b0  04 30 80 e5                                      str r3, [r0, #4]
003431b4  00 00 83 e5                                      str r0, [r3]
003431b8  08 00 84 e5                                      str r0, [r4, #8]
003431bc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003431c0, declared_size=312, range_size=312, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager21AssignObjectNetworkIdEP10ObjectBase
; demangled: ObjectManager::AssignObjectNetworkId(ObjectBase*)
; decoder-mode: arm
003431c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003431c4  00 50 a0 e1                                      mov r5, r0
003431c8  01 40 a0 e1                                      mov r4, r1
003431cc  70 e9 12 eb                                      bl #0x7fd794
003431d0  05 30 d0 e5                                      ldrb r3, [r0, #5]
003431d4  10 61 9f e5                                      ldr r6, [pc, #0x110]
003431d8  00 00 53 e3                                      cmp r3, #0
003431dc  06 60 8f e0                                      add r6, pc, r6
003431e0  23 00 00 0a                                      beq #0x343274
003431e4  44 70 94 e5                                      ldr r7, [r4, #0x44]
003431e8  00 11 9f e5                                      ldr r1, [pc, #0x100]
003431ec  07 00 a0 e1                                      mov r0, r7
003431f0  01 10 8f e0                                      add r1, pc, r1
003431f4  76 2e ff eb                                      bl #0x30ebd4
003431f8  07 00 50 e1                                      cmp r0, r7
003431fc  33 00 00 0a                                      beq #0x3432d0
00343200  00 30 94 e5                                      ldr r3, [r4]
00343204  04 00 a0 e1                                      mov r0, r4
00343208  0f e0 a0 e1                                      mov lr, pc
0034320c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00343210  00 00 50 e3                                      cmp r0, #0
00343214  17 00 00 1a                                      bne #0x343278
00343218  3c 01 95 e5                                      ldr r0, [r5, #0x13c]
0034321c  01 30 80 e2                                      add r3, r0, #1
00343220  3c 31 85 e5                                      str r3, [r5, #0x13c]
00343224  05 00 80 e2                                      add r0, r0, #5
00343228  04 00 50 e3                                      cmp r0, #4
0034322c  08 01 84 e5                                      str r0, [r4, #0x108]
00343230  1f 00 00 ca                                      bgt #0x3432b4
00343234  01 6c 85 e2                                      add r6, r5, #0x100
00343238  06 00 a0 e1                                      mov r0, r6
0034323c  c9 ff ff eb                                      bl #0x343168
00343240  08 40 80 e5                                      str r4, [r0, #8]
00343244  04 31 95 e5                                      ldr r3, [r5, #0x104]
00343248  00 60 80 e5                                      str r6, [r0]
0034324c  04 30 80 e5                                      str r3, [r0, #4]
00343250  00 00 83 e5                                      str r0, [r3]
00343254  04 01 85 e5                                      str r0, [r5, #0x104]
00343258  00 31 94 e5                                      ldr r3, [r4, #0x100]
0034325c  00 00 53 e3                                      cmp r3, #0
00343260  03 00 00 0a                                      beq #0x343274
00343264  54 30 95 e5                                      ldr r3, [r5, #0x54]
00343268  01 30 83 e2                                      add r3, r3, #1
0034326c  54 30 85 e5                                      str r3, [r5, #0x54]
00343270  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00343274  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00343278  e4 34 01 e3                                      movw r3, #0x14e4
0034327c  03 30 d4 e7                                      ldrb r3, [r4, r3]
00343280  00 00 53 e3                                      cmp r3, #0
00343284  05 00 00 0a                                      beq #0x3432a0
00343288  40 01 95 e5                                      ldr r0, [r5, #0x140]
0034328c  01 30 80 e2                                      add r3, r0, #1
00343290  27 0c 80 e2                                      add r0, r0, #0x2700
00343294  40 31 85 e5                                      str r3, [r5, #0x140]
00343298  11 00 80 e2                                      add r0, r0, #0x11
0034329c  e1 ff ff ea                                      b #0x343228
003432a0  04 00 a0 e1                                      mov r0, r4
003432a4  80 7f 01 eb                                      bl #0x3a30ac
003432a8  00 00 50 e3                                      cmp r0, #0
003432ac  d9 ff ff 0a                                      beq #0x343218
003432b0  f4 ff ff ea                                      b #0x343288
003432b4  38 30 9f e5                                      ldr r3, [pc, #0x38]
003432b8  01 10 a0 e3                                      mov r1, #1
003432bc  03 30 96 e7                                      ldr r3, [r6, r3]
003432c0  00 30 93 e5                                      ldr r3, [r3]
003432c4  fc 30 84 e5                                      str r3, [r4, #0xfc]
003432c8  30 f3 ff eb                                      bl #0x33ff90
003432cc  d8 ff ff ea                                      b #0x343234
003432d0  10 00 80 e2                                      add r0, r0, #0x10
003432d4  6e 2b ff eb                                      bl #0x30e094
003432d8  38 31 95 e5                                      ldr r3, [r5, #0x138]
003432dc  01 00 80 e2                                      add r0, r0, #1
003432e0  01 30 83 e2                                      add r3, r3, #1
003432e4  38 31 85 e5                                      str r3, [r5, #0x138]
003432e8  ce ff ff ea                                      b #0x343228
; mapping-symbol data/literal pool
003432ec  b4 18 65 00 58 d1 57 00 10 0b 00 00              .byte 0xb4, 0x18, 0x65, 0x00, 0x58, 0xd1, 0x57, 0x00, 0x10, 0x0b, 0x00, 0x00

; FUNCTION 0x003432f8, declared_size=116, range_size=116, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager15MarkForDeletionEP10ObjectBase
; demangled: ObjectManager::MarkForDeletion(ObjectBase*)
; decoder-mode: arm
003432f8  30 40 2d e9                                      push {r4, r5, lr}
003432fc  00 40 a0 e1                                      mov r4, r0
00343300  3c 30 b4 e5                                      ldr r3, [r4, #0x3c]!
00343304  0c d0 4d e2                                      sub sp, sp, #0xc
00343308  00 50 a0 e1                                      mov r5, r0
0034330c  04 00 53 e1                                      cmp r3, r4
00343310  06 00 00 0a                                      beq #0x343330
00343314  08 20 93 e5                                      ldr r2, [r3, #8]
00343318  01 00 52 e1                                      cmp r2, r1
0034331c  03 00 00 0a                                      beq #0x343330
00343320  00 30 93 e5                                      ldr r3, [r3]
00343324  03 00 54 e1                                      cmp r4, r3
00343328  f9 ff ff 1a                                      bne #0x343314
0034332c  04 30 a0 e1                                      mov r3, r4
00343330  03 00 54 e1                                      cmp r4, r3
00343334  01 00 00 0a                                      beq #0x343340
00343338  0c d0 8d e2                                      add sp, sp, #0xc
0034333c  30 80 bd e8                                      pop {r4, r5, pc}
00343340  04 00 a0 e1                                      mov r0, r4
00343344  04 10 8d e5                                      str r1, [sp, #4]
00343348  86 ff ff eb                                      bl #0x343168
0034334c  04 10 9d e5                                      ldr r1, [sp, #4]
00343350  08 10 80 e5                                      str r1, [r0, #8]
00343354  40 30 95 e5                                      ldr r3, [r5, #0x40]
00343358  00 40 80 e5                                      str r4, [r0]
0034335c  04 30 80 e5                                      str r3, [r0, #4]
00343360  00 00 83 e5                                      str r0, [r3]
00343364  40 00 85 e5                                      str r0, [r5, #0x40]
00343368  f2 ff ff ea                                      b #0x343338

; FUNCTION 0x0034336c, declared_size=228, range_size=228, mode=arm
; class-group: ObjectManager
; alias: _ZNK13ObjectManager16GetLightBaseListERSt4listIP9LightBaseSaIS2_EE
; demangled: ObjectManager::GetLightBaseList(std::list<LightBase*, std::allocator<LightBase*> >&) const
; decoder-mode: arm
0034336c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00343370  d4 70 9f e5                                      ldr r7, [pc, #0xd4]
00343374  14 40 90 e5                                      ldr r4, [r0, #0x14]
00343378  08 d0 4d e2                                      sub sp, sp, #8
0034337c  01 60 a0 e1                                      mov r6, r1
00343380  0c 50 80 e2                                      add r5, r0, #0xc
00343384  07 70 8f e0                                      add r7, pc, r7
00343388  0c a0 a0 e3                                      mov sl, #0xc
0034338c  04 80 8d e2                                      add r8, sp, #4
00343390  04 00 55 e1                                      cmp r5, r4
00343394  1d 00 00 0a                                      beq #0x343410
00343398  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0034339c  00 00 50 e3                                      cmp r0, #0
003433a0  0f 00 00 0a                                      beq #0x3433e4
003433a4  04 00 80 e2                                      add r0, r0, #4
003433a8  e7 35 07 eb                                      bl #0x510b4c
003433ac  07 10 a0 e1                                      mov r1, r7
003433b0  d9 2b ff eb                                      bl #0x30e31c
003433b4  00 00 50 e3                                      cmp r0, #0
003433b8  09 00 00 1a                                      bne #0x3433e4
003433bc  08 00 a0 e1                                      mov r0, r8
003433c0  2c 90 94 e5                                      ldr sb, [r4, #0x2c]
003433c4  04 a0 8d e5                                      str sl, [sp, #4]
003433c8  bc 16 0f eb                                      bl #0x708ec0
003433cc  08 90 80 e5                                      str sb, [r0, #8]
003433d0  04 30 96 e5                                      ldr r3, [r6, #4]
003433d4  00 60 80 e5                                      str r6, [r0]
003433d8  04 30 80 e5                                      str r3, [r0, #4]
003433dc  00 00 83 e5                                      str r0, [r3]
003433e0  04 00 86 e5                                      str r0, [r6, #4]
003433e4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003433e8  00 00 52 e3                                      cmp r2, #0
003433ec  01 00 00 1a                                      bne #0x3433f8
003433f0  08 00 00 ea                                      b #0x343418
003433f4  03 20 a0 e1                                      mov r2, r3
003433f8  08 30 92 e5                                      ldr r3, [r2, #8]
003433fc  00 00 53 e3                                      cmp r3, #0
00343400  fb ff ff 1a                                      bne #0x3433f4
00343404  02 40 a0 e1                                      mov r4, r2
00343408  04 00 55 e1                                      cmp r5, r4
0034340c  e1 ff ff 1a                                      bne #0x343398
00343410  08 d0 8d e2                                      add sp, sp, #8
00343414  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00343418  04 30 94 e5                                      ldr r3, [r4, #4]
0034341c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00343420  01 00 54 e1                                      cmp r4, r1
00343424  05 00 00 1a                                      bne #0x343440
00343428  03 40 a0 e1                                      mov r4, r3
0034342c  04 30 93 e5                                      ldr r3, [r3, #4]
00343430  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00343434  04 00 52 e1                                      cmp r2, r4
00343438  fa ff ff 0a                                      beq #0x343428
0034343c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00343440  03 00 52 e1                                      cmp r2, r3
00343444  03 40 a0 11                                      movne r4, r3
00343448  d0 ff ff ea                                      b #0x343390
; mapping-symbol data/literal pool
0034344c  dc cf 57 00                                      .byte 0xdc, 0xcf, 0x57, 0x00

; FUNCTION 0x00344184, declared_size=84, range_size=84, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager15AddNoRoomObjectEP10GameObject
; demangled: ObjectManager::AddNoRoomObject(GameObject*)
; decoder-mode: arm
00344184  30 40 2d e9                                      push {r4, r5, lr}
00344188  f8 32 d1 e5                                      ldrb r3, [r1, #0x2f8]
0034418c  0c d0 4d e2                                      sub sp, sp, #0xc
00344190  01 40 a0 e1                                      mov r4, r1
00344194  00 00 53 e3                                      cmp r3, #0
00344198  00 50 a0 e1                                      mov r5, r0
0034419c  0b 00 00 1a                                      bne #0x3441d0
003441a0  0c 30 a0 e3                                      mov r3, #0xc
003441a4  08 00 8d e2                                      add r0, sp, #8
003441a8  04 30 20 e5                                      str r3, [r0, #-4]!
003441ac  43 13 0f eb                                      bl #0x708ec0
003441b0  08 40 80 e5                                      str r4, [r0, #8]
003441b4  8c 30 95 e5                                      ldr r3, [r5, #0x8c]
003441b8  88 20 85 e2                                      add r2, r5, #0x88
003441bc  0c 00 80 e8                                      stm r0, {r2, r3}
003441c0  00 00 83 e5                                      str r0, [r3]
003441c4  01 30 a0 e3                                      mov r3, #1
003441c8  8c 00 85 e5                                      str r0, [r5, #0x8c]
003441cc  f8 32 c4 e5                                      strb r3, [r4, #0x2f8]
003441d0  0c d0 8d e2                                      add sp, sp, #0xc
003441d4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x003454dc, declared_size=80, range_size=80, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager27FlushAllOrphanRenderObjectsEv
; demangled: ObjectManager::FlushAllOrphanRenderObjects()
; decoder-mode: arm
003454dc  70 40 2d e9                                      push {r4, r5, r6, lr}
003454e0  00 50 a0 e1                                      mov r5, r0
003454e4  04 40 b5 e5                                      ldr r4, [r5, #4]!
003454e8  00 60 a0 e3                                      mov r6, #0
003454ec  04 00 55 e1                                      cmp r5, r4
003454f0  0a 00 00 0a                                      beq #0x345520
003454f4  08 30 94 e5                                      ldr r3, [r4, #8]
003454f8  00 00 53 e3                                      cmp r3, #0
003454fc  04 00 00 0a                                      beq #0x345514
00345500  03 00 a0 e1                                      mov r0, r3
00345504  00 30 93 e5                                      ldr r3, [r3]
00345508  0f e0 a0 e1                                      mov lr, pc
0034550c  04 f0 93 e5                                      ldr pc, [r3, #4]
00345510  08 60 84 e5                                      str r6, [r4, #8]
00345514  00 40 94 e5                                      ldr r4, [r4]
00345518  04 00 55 e1                                      cmp r5, r4
0034551c  f4 ff ff 1a                                      bne #0x3454f4
00345520  05 00 a0 e1                                      mov r0, r5
00345524  70 40 bd e8                                      pop {r4, r5, r6, lr}
00345528  4f ff ff ea                                      b #0x34526c

; FUNCTION 0x0034552c, declared_size=936, range_size=936, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager8InitPostEv
; demangled: ObjectManager::InitPost()
; decoder-mode: arm
0034552c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00345530  74 53 9f e5                                      ldr r5, [pc, #0x374]
00345534  24 d0 4d e2                                      sub sp, sp, #0x24
00345538  00 40 a0 e1                                      mov r4, r0
0034553c  05 50 8f e0                                      add r5, pc, r5
00345540  1c 60 95 e5                                      ldr r6, [r5, #0x1c]
00345544  01 60 16 e2                                      ands r6, r6, #1
00345548  34 00 00 0a                                      beq #0x345620
0034554c  5c 53 9f e5                                      ldr r5, [pc, #0x35c]
00345550  05 50 8f e0                                      add r5, pc, r5
00345554  24 60 95 e5                                      ldr r6, [r5, #0x24]
00345558  01 60 16 e2                                      ands r6, r6, #1
0034555c  38 00 00 0a                                      beq #0x345644
00345560  10 60 8d e2                                      add r6, sp, #0x10
00345564  06 00 a0 e1                                      mov r0, r6
00345568  e7 e7 ff eb                                      bl #0x33f50c
0034556c  7c 20 94 e5                                      ldr r2, [r4, #0x7c]
00345570  00 00 52 e3                                      cmp r2, #0
00345574  08 00 00 1a                                      bne #0x34559c
00345578  34 33 9f e5                                      ldr r3, [pc, #0x334]
0034557c  68 20 94 e5                                      ldr r2, [r4, #0x68]
00345580  03 30 8f e0                                      add r3, pc, r3
00345584  28 20 83 e5                                      str r2, [r3, #0x28]
00345588  14 20 94 e5                                      ldr r2, [r4, #0x14]
0034558c  20 20 83 e5                                      str r2, [r3, #0x20]
00345590  7c 20 94 e5                                      ldr r2, [r4, #0x7c]
00345594  01 20 82 e2                                      add r2, r2, #1
00345598  7c 20 84 e5                                      str r2, [r4, #0x7c]
0034559c  14 53 9f e5                                      ldr r5, [pc, #0x314]
003455a0  68 10 84 e2                                      add r1, r4, #0x68
003455a4  05 50 8f e0                                      add r5, pc, r5
003455a8  28 30 95 e5                                      ldr r3, [r5, #0x28]
003455ac  03 00 51 e1                                      cmp r1, r3
003455b0  63 00 00 0a                                      beq #0x345744
003455b4  01 00 52 e3                                      cmp r2, #1
003455b8  b0 00 00 0a                                      beq #0x345880
003455bc  f8 52 9f e5                                      ldr r5, [pc, #0x2f8]
003455c0  0c 10 84 e2                                      add r1, r4, #0xc
003455c4  05 50 8f e0                                      add r5, pc, r5
003455c8  20 30 95 e5                                      ldr r3, [r5, #0x20]
003455cc  03 00 51 e1                                      cmp r1, r3
003455d0  4c 00 00 0a                                      beq #0x345708
003455d4  03 00 52 e3                                      cmp r2, #3
003455d8  70 00 00 0a                                      beq #0x3457a0
003455dc  04 00 52 e3                                      cmp r2, #4
003455e0  20 00 00 0a                                      beq #0x345668
003455e4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003455e8  00 00 52 e3                                      cmp r2, #0
003455ec  01 00 00 1a                                      bne #0x3455f8
003455f0  5d 00 00 ea                                      b #0x34576c
003455f4  03 20 a0 e1                                      mov r2, r3
003455f8  08 30 92 e5                                      ldr r3, [r2, #8]
003455fc  00 00 53 e3                                      cmp r3, #0
00345600  fb ff ff 1a                                      bne #0x3455f4
00345604  02 30 a0 e1                                      mov r3, r2
00345608  b0 22 9f e5                                      ldr r2, [pc, #0x2b0]
0034560c  00 00 a0 e3                                      mov r0, #0
00345610  02 20 8f e0                                      add r2, pc, r2
00345614  20 30 82 e5                                      str r3, [r2, #0x20]
00345618  24 d0 8d e2                                      add sp, sp, #0x24
0034561c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00345620  1c 70 85 e2                                      add r7, r5, #0x1c
00345624  07 00 a0 e1                                      mov r0, r7
00345628  4f 24 ff eb                                      bl #0x30e76c
0034562c  00 00 50 e3                                      cmp r0, #0
00345630  c5 ff ff 0a                                      beq #0x34554c
00345634  20 60 85 e5                                      str r6, [r5, #0x20]
00345638  07 00 a0 e1                                      mov r0, r7
0034563c  fe 24 ff eb                                      bl #0x30ea3c
00345640  c1 ff ff ea                                      b #0x34554c
00345644  24 70 85 e2                                      add r7, r5, #0x24
00345648  07 00 a0 e1                                      mov r0, r7
0034564c  46 24 ff eb                                      bl #0x30e76c
00345650  00 00 50 e3                                      cmp r0, #0
00345654  c1 ff ff 0a                                      beq #0x345560
00345658  28 60 85 e5                                      str r6, [r5, #0x28]
0034565c  07 00 a0 e1                                      mov r0, r7
00345660  f5 24 ff eb                                      bl #0x30ea3c
00345664  bd ff ff ea                                      b #0x345560
00345668  2c 50 93 e5                                      ldr r5, [r3, #0x2c]
0034566c  00 00 55 e3                                      cmp r5, #0
00345670  db ff ff 0a                                      beq #0x3455e4
00345674  48 02 9f e5                                      ldr r0, [pc, #0x248]
00345678  5c 10 95 e5                                      ldr r1, [r5, #0x5c]
0034567c  00 00 8f e0                                      add r0, pc, r0
00345680  18 24 ff eb                                      bl #0x30e6e8
00345684  00 00 50 e3                                      cmp r0, #0
00345688  6c 00 00 1a                                      bne #0x345840
0034568c  0c 30 a0 e3                                      mov r3, #0xc
00345690  20 00 8d e2                                      add r0, sp, #0x20
00345694  04 30 20 e5                                      str r3, [r0, #-4]!
00345698  08 0e 0f eb                                      bl #0x708ec0
0034569c  08 50 80 e5                                      str r5, [r0, #8]
003456a0  28 30 94 e5                                      ldr r3, [r4, #0x28]
003456a4  24 20 84 e2                                      add r2, r4, #0x24
003456a8  0c 00 80 e8                                      stm r0, {r2, r3}
003456ac  00 00 83 e5                                      str r0, [r3]
003456b0  28 00 84 e5                                      str r0, [r4, #0x28]
003456b4  05 00 a0 e1                                      mov r0, r5
003456b8  61 45 01 eb                                      bl #0x396c44
003456bc  ac 30 d5 e5                                      ldrb r3, [r5, #0xac]
003456c0  00 00 53 e3                                      cmp r3, #0
003456c4  53 00 00 1a                                      bne #0x345818
003456c8  a8 30 95 e5                                      ldr r3, [r5, #0xa8]
003456cc  00 00 53 e3                                      cmp r3, #0
003456d0  50 00 00 0a                                      beq #0x345818
003456d4  44 60 84 e2                                      add r6, r4, #0x44
003456d8  06 00 a0 e1                                      mov r0, r6
003456dc  a1 f6 ff eb                                      bl #0x343168
003456e0  08 50 80 e5                                      str r5, [r0, #8]
003456e4  48 20 94 e5                                      ldr r2, [r4, #0x48]
003456e8  d8 31 9f e5                                      ldr r3, [pc, #0x1d8]
003456ec  00 60 80 e5                                      str r6, [r0]
003456f0  04 20 80 e5                                      str r2, [r0, #4]
003456f4  03 30 8f e0                                      add r3, pc, r3
003456f8  00 00 82 e5                                      str r0, [r2]
003456fc  48 00 84 e5                                      str r0, [r4, #0x48]
00345700  20 30 93 e5                                      ldr r3, [r3, #0x20]
00345704  b6 ff ff ea                                      b #0x3455e4
00345708  01 20 82 e2                                      add r2, r2, #1
0034570c  04 00 52 e3                                      cmp r2, #4
00345710  7c 20 84 e5                                      str r2, [r4, #0x7c]
00345714  01 00 a0 13                                      movne r0, #1
00345718  be ff ff 1a                                      bne #0x345618
0034571c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00345720  2c 00 84 e2                                      add r0, r4, #0x2c
00345724  20 30 85 e5                                      str r3, [r5, #0x20]
00345728  cf fe ff eb                                      bl #0x34526c
0034572c  44 00 84 e2                                      add r0, r4, #0x44
00345730  cd fe ff eb                                      bl #0x34526c
00345734  34 00 84 e2                                      add r0, r4, #0x34
00345738  cb fe ff eb                                      bl #0x34526c
0034573c  00 00 a0 e3                                      mov r0, #0
00345740  b4 ff ff ea                                      b #0x345618
00345744  01 00 52 e3                                      cmp r2, #1
00345748  9b ff ff 1a                                      bne #0x3455bc
0034574c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00345750  02 20 a0 e3                                      mov r2, #2
00345754  7c 20 84 e5                                      str r2, [r4, #0x7c]
00345758  20 30 85 e5                                      str r3, [r5, #0x20]
0034575c  7c 20 94 e5                                      ldr r2, [r4, #0x7c]
00345760  01 20 82 e2                                      add r2, r2, #1
00345764  7c 20 84 e5                                      str r2, [r4, #0x7c]
00345768  93 ff ff ea                                      b #0x3455bc
0034576c  04 10 93 e5                                      ldr r1, [r3, #4]
00345770  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00345774  03 00 50 e1                                      cmp r0, r3
00345778  05 00 00 1a                                      bne #0x345794
0034577c  01 30 a0 e1                                      mov r3, r1
00345780  04 10 91 e5                                      ldr r1, [r1, #4]
00345784  0c 20 91 e5                                      ldr r2, [r1, #0xc]
00345788  02 00 53 e1                                      cmp r3, r2
0034578c  fa ff ff 0a                                      beq #0x34577c
00345790  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00345794  02 00 51 e1                                      cmp r1, r2
00345798  01 30 a0 11                                      movne r3, r1
0034579c  99 ff ff ea                                      b #0x345608
003457a0  04 40 8d e2                                      add r4, sp, #4
003457a4  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
003457a8  04 00 a0 e1                                      mov r0, r4
003457ac  5c e7 ff eb                                      bl #0x33f524
003457b0  08 20 9d e5                                      ldr r2, [sp, #8]
003457b4  04 60 86 e2                                      add r6, r6, #4
003457b8  04 30 9d e5                                      ldr r3, [sp, #4]
003457bc  04 20 86 e4                                      str r2, [r6], #4
003457c0  08 20 94 e5                                      ldr r2, [r4, #8]
003457c4  10 40 8d e2                                      add r4, sp, #0x10
003457c8  04 00 a0 e1                                      mov r0, r4
003457cc  00 10 a0 e3                                      mov r1, #0
003457d0  00 20 86 e5                                      str r2, [r6]
003457d4  10 30 8d e5                                      str r3, [sp, #0x10]
003457d8  78 e9 ff eb                                      bl #0x33fdc0
003457dc  00 00 50 e3                                      cmp r0, #0
003457e0  0a 00 00 0a                                      beq #0x345810
003457e4  01 10 a0 e3                                      mov r1, #1
003457e8  04 00 a0 e1                                      mov r0, r4
003457ec  73 e9 ff eb                                      bl #0x33fdc0
003457f0  00 30 90 e5                                      ldr r3, [r0]
003457f4  0f e0 a0 e1                                      mov lr, pc
003457f8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003457fc  01 10 a0 e3                                      mov r1, #1
00345800  04 00 a0 e1                                      mov r0, r4
00345804  6d e9 ff eb                                      bl #0x33fdc0
00345808  00 10 a0 e3                                      mov r1, #0
0034580c  b0 e3 ff eb                                      bl #0x33e6d4
00345810  20 30 95 e5                                      ldr r3, [r5, #0x20]
00345814  72 ff ff ea                                      b #0x3455e4
00345818  d0 30 d5 e5                                      ldrb r3, [r5, #0xd0]
0034581c  00 00 53 e3                                      cmp r3, #0
00345820  1d 00 00 1a                                      bne #0x34589c
00345824  cc 30 95 e5                                      ldr r3, [r5, #0xcc]
00345828  00 00 53 e3                                      cmp r3, #0
0034582c  a8 ff ff 1a                                      bne #0x3456d4
00345830  94 30 9f e5                                      ldr r3, [pc, #0x94]
00345834  03 30 8f e0                                      add r3, pc, r3
00345838  20 30 93 e5                                      ldr r3, [r3, #0x20]
0034583c  68 ff ff ea                                      b #0x3455e4
00345840  00 30 95 e5                                      ldr r3, [r5]
00345844  05 00 a0 e1                                      mov r0, r5
00345848  0f e0 a0 e1                                      mov lr, pc
0034584c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00345850  00 00 50 e3                                      cmp r0, #0
00345854  98 ff ff 0a                                      beq #0x3456bc
00345858  2c 60 84 e2                                      add r6, r4, #0x2c
0034585c  06 00 a0 e1                                      mov r0, r6
00345860  40 f6 ff eb                                      bl #0x343168
00345864  08 50 80 e5                                      str r5, [r0, #8]
00345868  30 30 94 e5                                      ldr r3, [r4, #0x30]
0034586c  00 60 80 e5                                      str r6, [r0]
00345870  04 30 80 e5                                      str r3, [r0, #4]
00345874  00 00 83 e5                                      str r0, [r3]
00345878  30 00 84 e5                                      str r0, [r4, #0x30]
0034587c  8e ff ff ea                                      b #0x3456bc
00345880  08 00 93 e5                                      ldr r0, [r3, #8]
00345884  00 14 01 eb                                      bl #0x38a88c
00345888  28 30 95 e5                                      ldr r3, [r5, #0x28]
0034588c  00 30 93 e5                                      ldr r3, [r3]
00345890  28 30 85 e5                                      str r3, [r5, #0x28]
00345894  7c 20 94 e5                                      ldr r2, [r4, #0x7c]
00345898  47 ff ff ea                                      b #0x3455bc
0034589c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003458a0  03 30 8f e0                                      add r3, pc, r3
003458a4  20 30 93 e5                                      ldr r3, [r3, #0x20]
003458a8  4d ff ff ea                                      b #0x3455e4
; mapping-symbol data/literal pool
003458ac  00 c9 65 00 ec c8 65 00 bc c8 65 00 98 c8 65 00  .byte 0x00, 0xc9, 0x65, 0x00, 0xec, 0xc8, 0x65, 0x00, 0xbc, 0xc8, 0x65, 0x00, 0x98, 0xc8, 0x65, 0x00
003458bc  78 c8 65 00 2c c8 65 00 f4 ac 57 00 48 c7 65 00  .byte 0x78, 0xc8, 0x65, 0x00, 0x2c, 0xc8, 0x65, 0x00, 0xf4, 0xac, 0x57, 0x00, 0x48, 0xc7, 0x65, 0x00
003458cc  08 c6 65 00 9c c5 65 00                          .byte 0x08, 0xc6, 0x65, 0x00, 0x9c, 0xc5, 0x65, 0x00

; FUNCTION 0x00345954, declared_size=248, range_size=248, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager19HandleNoRoomObjectsEv
; demangled: ObjectManager::HandleNoRoomObjects()
; decoder-mode: arm
00345954  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00345958  88 50 80 e2                                      add r5, r0, #0x88
0034595c  00 70 a0 e1                                      mov r7, r0
00345960  05 00 a0 e1                                      mov r0, r5
00345964  ea ff ff eb                                      bl #0x345914
00345968  14 40 97 e5                                      ldr r4, [r7, #0x14]
0034596c  0c 60 87 e2                                      add r6, r7, #0xc
00345970  04 00 56 e1                                      cmp r6, r4
00345974  16 00 00 0a                                      beq #0x3459d4
00345978  2c 80 94 e5                                      ldr r8, [r4, #0x2c]
0034597c  00 00 58 e3                                      cmp r8, #0
00345980  08 00 00 0a                                      beq #0x3459a8
00345984  00 30 98 e5                                      ldr r3, [r8]
00345988  08 00 a0 e1                                      mov r0, r8
0034598c  0f e0 a0 e1                                      mov lr, pc
00345990  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00345994  00 00 50 e3                                      cmp r0, #0
00345998  02 00 00 0a                                      beq #0x3459a8
0034599c  f4 32 98 e5                                      ldr r3, [r8, #0x2f4]
003459a0  00 00 53 e3                                      cmp r3, #0
003459a4  18 00 00 0a                                      beq #0x345a0c
003459a8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003459ac  00 00 52 e3                                      cmp r2, #0
003459b0  01 00 00 1a                                      bne #0x3459bc
003459b4  07 00 00 ea                                      b #0x3459d8
003459b8  03 20 a0 e1                                      mov r2, r3
003459bc  08 30 92 e5                                      ldr r3, [r2, #8]
003459c0  00 00 53 e3                                      cmp r3, #0
003459c4  fb ff ff 1a                                      bne #0x3459b8
003459c8  02 40 a0 e1                                      mov r4, r2
003459cc  04 00 56 e1                                      cmp r6, r4
003459d0  e8 ff ff 1a                                      bne #0x345978
003459d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003459d8  04 30 94 e5                                      ldr r3, [r4, #4]
003459dc  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003459e0  01 00 54 e1                                      cmp r4, r1
003459e4  05 00 00 1a                                      bne #0x345a00
003459e8  03 40 a0 e1                                      mov r4, r3
003459ec  04 30 93 e5                                      ldr r3, [r3, #4]
003459f0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003459f4  04 00 52 e1                                      cmp r2, r4
003459f8  fa ff ff 0a                                      beq #0x3459e8
003459fc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00345a00  02 00 53 e1                                      cmp r3, r2
00345a04  03 40 a0 11                                      movne r4, r3
00345a08  d8 ff ff ea                                      b #0x345970
00345a0c  88 30 97 e5                                      ldr r3, [r7, #0x88]
00345a10  05 00 53 e1                                      cmp r3, r5
00345a14  08 00 00 0a                                      beq #0x345a3c
00345a18  08 20 93 e5                                      ldr r2, [r3, #8]
00345a1c  02 00 58 e1                                      cmp r8, r2
00345a20  03 00 00 0a                                      beq #0x345a34
00345a24  00 30 93 e5                                      ldr r3, [r3]
00345a28  03 00 55 e1                                      cmp r5, r3
00345a2c  f9 ff ff 1a                                      bne #0x345a18
00345a30  05 30 a0 e1                                      mov r3, r5
00345a34  05 00 53 e1                                      cmp r3, r5
00345a38  da ff ff 1a                                      bne #0x3459a8
00345a3c  08 10 a0 e1                                      mov r1, r8
00345a40  07 00 a0 e1                                      mov r0, r7
00345a44  ce f9 ff eb                                      bl #0x344184
00345a48  d6 ff ff ea                                      b #0x3459a8

; FUNCTION 0x00345bcc, declared_size=84, range_size=84, mode=arm
; class-group: ObjectManager
; alias: _ZNK13ObjectManager19GetNumObjectsByTypeEPKc
; demangled: ObjectManager::GetNumObjectsByType(char const*) const
; decoder-mode: arm
00345bcc  30 40 2d e9                                      push {r4, r5, lr}
00345bd0  0c d0 4d e2                                      sub sp, sp, #0xc
00345bd4  0d 20 a0 e1                                      mov r2, sp
00345bd8  00 d0 8d e5                                      str sp, [sp]
00345bdc  04 d0 8d e5                                      str sp, [sp, #4]
00345be0  b2 f2 ff eb                                      bl #0x3426b0
00345be4  00 30 9d e5                                      ldr r3, [sp]
00345be8  0d 40 a0 e1                                      mov r4, sp
00345bec  04 00 53 e1                                      cmp r3, r4
00345bf0  00 50 a0 03                                      moveq r5, #0
00345bf4  04 00 00 0a                                      beq #0x345c0c
00345bf8  00 50 a0 e3                                      mov r5, #0
00345bfc  00 30 93 e5                                      ldr r3, [r3]
00345c00  01 50 85 e2                                      add r5, r5, #1
00345c04  04 00 53 e1                                      cmp r3, r4
00345c08  fb ff ff 1a                                      bne #0x345bfc
00345c0c  0d 00 a0 e1                                      mov r0, sp
00345c10  dd ff ff eb                                      bl #0x345b8c
00345c14  05 00 a0 e1                                      mov r0, r5
00345c18  0c d0 8d e2                                      add sp, sp, #0xc
00345c1c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00345c20, declared_size=116, range_size=116, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager15GetObjectByTypeEPKc
; demangled: ObjectManager::GetObjectByType(char const*)
; decoder-mode: arm
00345c20  30 40 2d e9                                      push {r4, r5, lr}
00345c24  0c d0 4d e2                                      sub sp, sp, #0xc
00345c28  00 50 a0 e1                                      mov r5, r0
00345c2c  01 00 a0 e1                                      mov r0, r1
00345c30  02 10 a0 e1                                      mov r1, r2
00345c34  0d 20 a0 e1                                      mov r2, sp
00345c38  00 d0 8d e5                                      str sp, [sp]
00345c3c  04 d0 8d e5                                      str sp, [sp, #4]
00345c40  9a f2 ff eb                                      bl #0x3426b0
00345c44  00 20 9d e5                                      ldr r2, [sp]
00345c48  0d 40 a0 e1                                      mov r4, sp
00345c4c  04 00 52 e1                                      cmp r2, r4
00345c50  0b 00 00 0a                                      beq #0x345c84
00345c54  02 30 a0 e1                                      mov r3, r2
00345c58  00 30 93 e5                                      ldr r3, [r3]
00345c5c  04 00 53 e1                                      cmp r3, r4
00345c60  fc ff ff 1a                                      bne #0x345c58
00345c64  08 10 92 e5                                      ldr r1, [r2, #8]
00345c68  05 00 a0 e1                                      mov r0, r5
00345c6c  2c e6 ff eb                                      bl #0x33f524
00345c70  0d 00 a0 e1                                      mov r0, sp
00345c74  c4 ff ff eb                                      bl #0x345b8c
00345c78  05 00 a0 e1                                      mov r0, r5
00345c7c  0c d0 8d e2                                      add sp, sp, #0xc
00345c80  30 80 bd e8                                      pop {r4, r5, pc}
00345c84  05 00 a0 e1                                      mov r0, r5
00345c88  00 10 a0 e3                                      mov r1, #0
00345c8c  24 e6 ff eb                                      bl #0x33f524
00345c90  f6 ff ff ea                                      b #0x345c70

; FUNCTION 0x00345e30, declared_size=212, range_size=212, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager22AskNetResendByObjectIdEi
; demangled: ObjectManager::AskNetResendByObjectId(int)
; decoder-mode: arm
00345e30  70 40 2d e9                                      push {r4, r5, r6, lr}
00345e34  20 d0 4d e2                                      sub sp, sp, #0x20
00345e38  04 60 8d e2                                      add r6, sp, #4
00345e3c  01 40 a0 e1                                      mov r4, r1
00345e40  04 20 a0 e1                                      mov r2, r4
00345e44  00 10 a0 e1                                      mov r1, r0
00345e48  00 50 a0 e1                                      mov r5, r0
00345e4c  06 00 a0 e1                                      mov r0, r6
00345e50  52 ea ff eb                                      bl #0x3407a0
00345e54  06 00 a0 e1                                      mov r0, r6
00345e58  21 e8 ff eb                                      bl #0x33fee4
00345e5c  10 31 90 e5                                      ldr r3, [r0, #0x110]
00345e60  20 60 8d e2                                      add r6, sp, #0x20
00345e64  65 5f 85 e2                                      add r5, r5, #0x194
00345e68  08 30 26 e5                                      str r3, [r6, #-8]!
00345e6c  05 00 a0 e1                                      mov r0, r5
00345e70  06 10 a0 e1                                      mov r1, r6
00345e74  a2 ff ff eb                                      bl #0x345d04
00345e78  04 30 90 e5                                      ldr r3, [r0, #4]
00345e7c  00 00 53 e3                                      cmp r3, #0
00345e80  14 00 00 0a                                      beq #0x345ed8
00345e84  00 10 a0 e1                                      mov r1, r0
00345e88  74 c0 bf e6                                      sxth ip, r4
00345e8c  00 00 00 ea                                      b #0x345e94
00345e90  02 30 a0 e1                                      mov r3, r2
00345e94  f0 21 d3 e1                                      ldrsh r2, [r3, #0x10]
00345e98  0c 00 52 e1                                      cmp r2, ip
00345e9c  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
00345ea0  08 20 93 a5                                      ldrge r2, [r3, #8]
00345ea4  01 30 a0 b1                                      movlt r3, r1
00345ea8  03 10 a0 e1                                      mov r1, r3
00345eac  00 00 52 e3                                      cmp r2, #0
00345eb0  f6 ff ff 1a                                      bne #0x345e90
00345eb4  03 00 50 e1                                      cmp r0, r3
00345eb8  08 00 00 0a                                      beq #0x345ee0
00345ebc  f0 21 d3 e1                                      ldrsh r2, [r3, #0x10]
00345ec0  0c 00 52 e1                                      cmp r2, ip
00345ec4  03 00 00 ca                                      bgt #0x345ed8
00345ec8  03 00 50 e1                                      cmp r0, r3
00345ecc  03 00 00 0a                                      beq #0x345ee0
00345ed0  20 d0 8d e2                                      add sp, sp, #0x20
00345ed4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00345ed8  00 30 a0 e1                                      mov r3, r0
00345edc  f9 ff ff ea                                      b #0x345ec8
00345ee0  06 10 a0 e1                                      mov r1, r6
00345ee4  05 00 a0 e1                                      mov r0, r5
00345ee8  85 ff ff eb                                      bl #0x345d04
00345eec  1e 20 8d e2                                      add r2, sp, #0x1e
00345ef0  00 10 a0 e1                                      mov r1, r0
00345ef4  10 00 8d e2                                      add r0, sp, #0x10
00345ef8  be 41 cd e1                                      strh r4, [sp, #0x1e]
00345efc  a4 fa ff eb                                      bl #0x344994
00345f00  f2 ff ff ea                                      b #0x345ed0

; FUNCTION 0x00345fbc, declared_size=212, range_size=212, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager14DelRoomObjectsEPSt4listIP10GameObjectSaIS2_EE
; demangled: ObjectManager::DelRoomObjects(std::list<GameObject*, std::allocator<GameObject*> >*)
; decoder-mode: arm
00345fbc  70 40 2d e9                                      push {r4, r5, r6, lr}
00345fc0  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
00345fc4  00 40 51 e2                                      subs r4, r1, #0
00345fc8  08 d0 4d e2                                      sub sp, sp, #8
00345fcc  00 50 a0 e1                                      mov r5, r0
00345fd0  03 30 8f e0                                      add r3, pc, r3
00345fd4  12 00 00 0a                                      beq #0x346024
00345fd8  80 00 b5 e5                                      ldr r0, [r5, #0x80]!
00345fdc  00 00 55 e1                                      cmp r5, r0
00345fe0  06 00 00 0a                                      beq #0x346000
00345fe4  08 30 90 e5                                      ldr r3, [r0, #8]
00345fe8  00 60 90 e5                                      ldr r6, [r0]
00345fec  03 00 54 e1                                      cmp r4, r3
00345ff0  04 00 00 0a                                      beq #0x346008
00345ff4  06 00 a0 e1                                      mov r0, r6
00345ff8  00 00 55 e1                                      cmp r5, r0
00345ffc  f8 ff ff 1a                                      bne #0x345fe4
00346000  08 d0 8d e2                                      add sp, sp, #8
00346004  70 80 bd e8                                      pop {r4, r5, r6, pc}
00346008  04 30 90 e5                                      ldr r3, [r0, #4]
0034600c  0c 10 a0 e3                                      mov r1, #0xc
00346010  00 60 83 e5                                      str r6, [r3]
00346014  04 30 86 e5                                      str r3, [r6, #4]
00346018  b8 0b 0f eb                                      bl #0x708f00
0034601c  06 00 a0 e1                                      mov r0, r6
00346020  f4 ff ff ea                                      b #0x345ff8
00346024  50 20 9f e5                                      ldr r2, [pc, #0x50]
00346028  02 20 93 e7                                      ldr r2, [r3, r2]
0034602c  00 20 92 e5                                      ldr r2, [r2]
00346030  02 00 52 e3                                      cmp r2, #2
00346034  00 40 84 05                                      streq r4, [r4]
00346038  e6 ff ff 0a                                      beq #0x345fd8
0034603c  01 00 52 e3                                      cmp r2, #1
00346040  e4 ff ff 1a                                      bne #0x345fd8
00346044  34 00 9f e5                                      ldr r0, [pc, #0x34]
00346048  34 10 9f e5                                      ldr r1, [pc, #0x34]
0034604c  34 20 9f e5                                      ldr r2, [pc, #0x34]
00346050  00 00 93 e7                                      ldr r0, [r3, r0]
00346054  30 30 9f e5                                      ldr r3, [pc, #0x30]
00346058  12 c9 00 e3                                      movw ip, #0x912
0034605c  01 10 8f e0                                      add r1, pc, r1
00346060  02 20 8f e0                                      add r2, pc, r2
00346064  03 30 8f e0                                      add r3, pc, r3
00346068  a8 00 80 e2                                      add r0, r0, #0xa8
0034606c  00 c0 8d e5                                      str ip, [sp]
00346070  e3 1f ff eb                                      bl #0x30e004
00346074  d7 ff ff ea                                      b #0x345fd8
; mapping-symbol data/literal pool
00346078  c0 ea 64 00 c0 39 00 00 c0 19 00 00 7c 83 57 00  .byte 0xc0, 0xea, 0x64, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x7c, 0x83, 0x57, 0x00
00346088  a8 df 57 00 34 a2 57 00                          .byte 0xa8, 0xdf, 0x57, 0x00, 0x34, 0xa2, 0x57, 0x00

; FUNCTION 0x003460cc, declared_size=80, range_size=80, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager34ProcessNextGameObjectToStartUpdateEv
; demangled: ObjectManager::ProcessNextGameObjectToStartUpdate()
; decoder-mode: arm
003460cc  10 40 2d e9                                      push {r4, lr}
003460d0  00 30 a0 e1                                      mov r3, r0
003460d4  00 40 a0 e1                                      mov r4, r0
003460d8  90 00 b3 e5                                      ldr r0, [r3, #0x90]!
003460dc  03 00 50 e1                                      cmp r0, r3
003460e0  0c 00 00 0a                                      beq #0x346118
003460e4  08 30 90 e5                                      ldr r3, [r0, #8]
003460e8  00 00 53 e3                                      cmp r3, #0
003460ec  02 00 00 0a                                      beq #0x3460fc
003460f0  03 00 a0 e1                                      mov r0, r3
003460f4  85 19 01 eb                                      bl #0x38c710
003460f8  90 00 94 e5                                      ldr r0, [r4, #0x90]
003460fc  00 30 90 e5                                      ldr r3, [r0]
00346100  04 20 90 e5                                      ldr r2, [r0, #4]
00346104  0c 10 a0 e3                                      mov r1, #0xc
00346108  00 30 82 e5                                      str r3, [r2]
0034610c  04 20 83 e5                                      str r2, [r3, #4]
00346110  10 40 bd e8                                      pop {r4, lr}
00346114  79 0b 0f ea                                      b #0x708f00
00346118  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00346178, declared_size=268, range_size=268, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager25ProcessAcknowledgedPacketEii
; demangled: ObjectManager::ProcessAcknowledgedPacket(int, int)
; decoder-mode: arm
00346178  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0034617c  00 70 a0 e1                                      mov r7, r0
00346180  00 41 b7 e5                                      ldr r4, [r7, #0x100]!
00346184  01 50 a0 e1                                      mov r5, r1
00346188  02 60 a0 e1                                      mov r6, r2
0034618c  04 00 57 e1                                      cmp r7, r4
00346190  00 80 a0 e1                                      mov r8, r0
00346194  05 10 a0 e1                                      mov r1, r5
00346198  06 20 a0 e1                                      mov r2, r6
0034619c  0c 00 00 0a                                      beq #0x3461d4
003461a0  08 30 94 e5                                      ldr r3, [r4, #8]
003461a4  00 31 93 e5                                      ldr r3, [r3, #0x100]
003461a8  00 00 53 e3                                      cmp r3, #0
003461ac  03 00 a0 e1                                      mov r0, r3
003461b0  02 00 00 0a                                      beq #0x3461c0
003461b4  00 30 93 e5                                      ldr r3, [r3]
003461b8  0f e0 a0 e1                                      mov lr, pc
003461bc  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003461c0  00 40 94 e5                                      ldr r4, [r4]
003461c4  05 10 a0 e1                                      mov r1, r5
003461c8  06 20 a0 e1                                      mov r2, r6
003461cc  04 00 57 e1                                      cmp r7, r4
003461d0  f2 ff ff 1a                                      bne #0x3461a0
003461d4  9c 30 98 e5                                      ldr r3, [r8, #0x9c]
003461d8  98 80 88 e2                                      add r8, r8, #0x98
003461dc  00 00 53 e3                                      cmp r3, #0
003461e0  24 00 00 0a                                      beq #0x346278
003461e4  08 10 a0 e1                                      mov r1, r8
003461e8  00 00 00 ea                                      b #0x3461f0
003461ec  02 30 a0 e1                                      mov r3, r2
003461f0  10 20 93 e5                                      ldr r2, [r3, #0x10]
003461f4  05 00 52 e1                                      cmp r2, r5
003461f8  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
003461fc  08 20 93 a5                                      ldrge r2, [r3, #8]
00346200  01 30 a0 b1                                      movlt r3, r1
00346204  03 10 a0 e1                                      mov r1, r3
00346208  00 00 52 e3                                      cmp r2, #0
0034620c  f6 ff ff 1a                                      bne #0x3461ec
00346210  03 00 58 e1                                      cmp r8, r3
00346214  19 00 00 0a                                      beq #0x346280
00346218  10 20 93 e5                                      ldr r2, [r3, #0x10]
0034621c  05 00 52 e1                                      cmp r2, r5
00346220  14 00 00 ca                                      bgt #0x346278
00346224  03 00 58 e1                                      cmp r8, r3
00346228  14 00 00 0a                                      beq #0x346280
0034622c  14 00 b3 e5                                      ldr r0, [r3, #0x14]!
00346230  03 00 50 e1                                      cmp r0, r3
00346234  11 00 00 0a                                      beq #0x346280
00346238  08 20 90 e5                                      ldr r2, [r0, #8]
0034623c  06 00 52 e1                                      cmp r2, r6
00346240  03 00 00 0a                                      beq #0x346254
00346244  00 00 90 e5                                      ldr r0, [r0]
00346248  00 00 53 e1                                      cmp r3, r0
0034624c  f9 ff ff 1a                                      bne #0x346238
00346250  03 00 a0 e1                                      mov r0, r3
00346254  03 00 50 e1                                      cmp r0, r3
00346258  08 00 00 0a                                      beq #0x346280
0034625c  00 30 90 e5                                      ldr r3, [r0]
00346260  04 20 90 e5                                      ldr r2, [r0, #4]
00346264  0c 10 a0 e3                                      mov r1, #0xc
00346268  00 30 82 e5                                      str r3, [r2]
0034626c  04 20 83 e5                                      str r2, [r3, #4]
00346270  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00346274  21 0b 0f ea                                      b #0x708f00
00346278  08 30 a0 e1                                      mov r3, r8
0034627c  e8 ff ff ea                                      b #0x346224
00346280  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00346284, declared_size=52, range_size=52, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager26sProcessAcknowledgedPacketEii
; demangled: ObjectManager::sProcessAcknowledgedPacket(int, int)
; decoder-mode: arm
00346284  24 30 9f e5                                      ldr r3, [pc, #0x24]
00346288  24 20 9f e5                                      ldr r2, [pc, #0x24]
0034628c  00 c0 a0 e1                                      mov ip, r0
00346290  03 30 8f e0                                      add r3, pc, r3
00346294  02 00 93 e7                                      ldr r0, [r3, r2]
00346298  01 20 a0 e1                                      mov r2, r1
0034629c  38 00 90 e5                                      ldr r0, [r0, #0x38]
003462a0  00 00 50 e3                                      cmp r0, #0
003462a4  1e ff 2f 01                                      bxeq lr
003462a8  0c 10 a0 e1                                      mov r1, ip
003462ac  b1 ff ff ea                                      b #0x346178
; mapping-symbol data/literal pool
003462b0  00 e8 64 00 f4 37 00 00                          .byte 0x00, 0xe8, 0x64, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003462b8, declared_size=92, range_size=92, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager18RemoveNoRoomObjectEP10GameObject
; demangled: ObjectManager::RemoveNoRoomObject(GameObject*)
; decoder-mode: arm
003462b8  10 40 2d e9                                      push {r4, lr}
003462bc  88 30 b0 e5                                      ldr r3, [r0, #0x88]!
003462c0  01 40 a0 e1                                      mov r4, r1
003462c4  00 00 53 e1                                      cmp r3, r0
003462c8  06 00 00 0a                                      beq #0x3462e8
003462cc  08 20 93 e5                                      ldr r2, [r3, #8]
003462d0  04 00 52 e1                                      cmp r2, r4
003462d4  03 00 00 0a                                      beq #0x3462e8
003462d8  00 30 93 e5                                      ldr r3, [r3]
003462dc  03 00 50 e1                                      cmp r0, r3
003462e0  f9 ff ff 1a                                      bne #0x3462cc
003462e4  00 30 a0 e1                                      mov r3, r0
003462e8  03 00 50 e1                                      cmp r0, r3
003462ec  07 00 00 0a                                      beq #0x346310
003462f0  04 10 93 e8                                      ldm r3, {r2, ip}
003462f4  03 00 a0 e1                                      mov r0, r3
003462f8  0c 10 a0 e3                                      mov r1, #0xc
003462fc  00 20 8c e5                                      str r2, [ip]
00346300  04 c0 82 e5                                      str ip, [r2, #4]
00346304  fd 0a 0f eb                                      bl #0x708f00
00346308  00 30 a0 e3                                      mov r3, #0
0034630c  f8 32 c4 e5                                      strb r3, [r4, #0x2f8]
00346310  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00346510, declared_size=2916, range_size=2916, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager26SerializeGameObjectNetDataEiiR12NetBitStream
; demangled: ObjectManager::SerializeGameObjectNetData(int, int, NetBitStream&)
; decoder-mode: arm
00346510  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00346514  48 5b 9f e5                                      ldr r5, [pc, #0xb48]
00346518  bc d0 4d e2                                      sub sp, sp, #0xbc
0034651c  0c 00 8d e5                                      str r0, [sp, #0xc]
00346520  40 0b 9f e5                                      ldr r0, [pc, #0xb40]
00346524  05 50 8f e0                                      add r5, pc, r5
00346528  03 b0 a0 e1                                      mov fp, r3
0034652c  00 40 95 e7                                      ldr r4, [r5, r0]
00346530  34 10 8d e5                                      str r1, [sp, #0x34]
00346534  20 20 8d e5                                      str r2, [sp, #0x20]
00346538  04 00 a0 e1                                      mov r0, r4
0034653c  14 64 ff eb                                      bl #0x31f594
00346540  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00346544  3c 10 d0 e5                                      ldrb r1, [r0, #0x3c]
00346548  08 20 a0 e3                                      mov r2, #8
0034654c  59 3f 83 e2                                      add r3, r3, #0x164
00346550  0b 00 a0 e1                                      mov r0, fp
00346554  08 30 8d e5                                      str r3, [sp, #8]
00346558  e2 1f 13 eb                                      bl #0x80e4e8
0034655c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00346560  34 70 8d e2                                      add r7, sp, #0x34
00346564  94 c0 8d e2                                      add ip, sp, #0x94
00346568  5f 2f 82 e2                                      add r2, r2, #0x17c
0034656c  07 10 a0 e1                                      mov r1, r7
00346570  08 00 9d e5                                      ldr r0, [sp, #8]
00346574  18 c0 8d e5                                      str ip, [sp, #0x18]
00346578  10 20 8d e5                                      str r2, [sp, #0x10]
0034657c  94 c0 8d e5                                      str ip, [sp, #0x94]
00346580  98 c0 8d e5                                      str ip, [sp, #0x98]
00346584  de fd ff eb                                      bl #0x345d04
00346588  07 10 a0 e1                                      mov r1, r7
0034658c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00346590  db fd ff eb                                      bl #0x345d04
00346594  10 00 90 e5                                      ldr r0, [r0, #0x10]
00346598  2c 00 8d e5                                      str r0, [sp, #0x2c]
0034659c  40 00 94 e5                                      ldr r0, [r4, #0x40]
003465a0  b3 a2 00 eb                                      bl #0x36f074
003465a4  00 00 50 e3                                      cmp r0, #0
003465a8  6e 00 00 0a                                      beq #0x346768
003465ac  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003465b0  28 31 b1 e5                                      ldr r3, [r1, #0x128]!
003465b4  01 00 53 e1                                      cmp r3, r1
003465b8  09 00 00 0a                                      beq #0x3465e4
003465bc  34 00 9d e5                                      ldr r0, [sp, #0x34]
003465c0  08 20 93 e5                                      ldr r2, [r3, #8]
003465c4  00 00 52 e1                                      cmp r2, r0
003465c8  05 00 00 0a                                      beq #0x3465e4
003465cc  00 30 93 e5                                      ldr r3, [r3]
003465d0  03 00 51 e1                                      cmp r1, r3
003465d4  51 01 00 0a                                      beq #0x346b20
003465d8  08 20 93 e5                                      ldr r2, [r3, #8]
003465dc  00 00 52 e1                                      cmp r2, r0
003465e0  f9 ff ff 1a                                      bne #0x3465cc
003465e4  03 00 51 e1                                      cmp r1, r3
003465e8  5e 00 00 0a                                      beq #0x346768
003465ec  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003465f0  07 10 a0 e1                                      mov r1, r7
003465f4  98 00 83 e2                                      add r0, r3, #0x98
003465f8  23 fd ff eb                                      bl #0x345a8c
003465fc  00 40 a0 e1                                      mov r4, r0
00346600  f4 f6 ff eb                                      bl #0x3441d8
00346604  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00346608  00 30 a0 e1                                      mov r3, r0
0034660c  01 10 a0 e3                                      mov r1, #1
00346610  08 c0 80 e5                                      str ip, [r0, #8]
00346614  04 20 94 e5                                      ldr r2, [r4, #4]
00346618  00 40 80 e5                                      str r4, [r0]
0034661c  0b 00 a0 e1                                      mov r0, fp
00346620  04 20 83 e5                                      str r2, [r3, #4]
00346624  00 30 82 e5                                      str r3, [r2]
00346628  04 30 84 e5                                      str r3, [r4, #4]
0034662c  7e 1f 13 eb                                      bl #0x80e42c
00346630  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00346634  b4 c0 91 e5                                      ldr ip, [r1, #0xb4]
00346638  b0 10 81 e2                                      add r1, r1, #0xb0
0034663c  00 00 5c e3                                      cmp ip, #0
00346640  34 e0 9d 05                                      ldreq lr, [sp, #0x34]
00346644  01 c0 a0 01                                      moveq ip, r1
00346648  0b 00 00 0a                                      beq #0x34667c
0034664c  34 e0 9d e5                                      ldr lr, [sp, #0x34]
00346650  01 20 a0 e1                                      mov r2, r1
00346654  00 00 00 ea                                      b #0x34665c
00346658  03 c0 a0 e1                                      mov ip, r3
0034665c  10 30 9c e5                                      ldr r3, [ip, #0x10]
00346660  0e 00 53 e1                                      cmp r3, lr
00346664  0c 30 9c b5                                      ldrlt r3, [ip, #0xc]
00346668  08 30 9c a5                                      ldrge r3, [ip, #8]
0034666c  02 c0 a0 b1                                      movlt ip, r2
00346670  0c 20 a0 e1                                      mov r2, ip
00346674  00 00 53 e3                                      cmp r3, #0
00346678  f6 ff ff 1a                                      bne #0x346658
0034667c  0c 00 51 e1                                      cmp r1, ip
00346680  03 00 00 0a                                      beq #0x346694
00346684  10 20 9c e5                                      ldr r2, [ip, #0x10]
00346688  0c 30 a0 e1                                      mov r3, ip
0034668c  0e 00 52 e1                                      cmp r2, lr
00346690  08 00 00 da                                      ble #0x3466b8
00346694  84 30 8d e2                                      add r3, sp, #0x84
00346698  ac c0 8d e5                                      str ip, [sp, #0xac]
0034669c  b0 00 8d e2                                      add r0, sp, #0xb0
003466a0  00 c0 a0 e3                                      mov ip, #0
003466a4  ac 20 8d e2                                      add r2, sp, #0xac
003466a8  84 e0 8d e5                                      str lr, [sp, #0x84]
003466ac  b8 c8 cd e1                                      strh ip, [sp, #0x88]
003466b0  19 f4 ff eb                                      bl #0x34371c
003466b4  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
003466b8  14 10 d3 e5                                      ldrb r1, [r3, #0x14]
003466bc  0b 00 a0 e1                                      mov r0, fp
003466c0  08 20 a0 e3                                      mov r2, #8
003466c4  87 1f 13 eb                                      bl #0x80e4e8
003466c8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003466cc  e4 c0 91 e5                                      ldr ip, [r1, #0xe4]
003466d0  e0 10 81 e2                                      add r1, r1, #0xe0
003466d4  00 00 5c e3                                      cmp ip, #0
003466d8  34 e0 9d 05                                      ldreq lr, [sp, #0x34]
003466dc  01 c0 a0 01                                      moveq ip, r1
003466e0  0b 00 00 0a                                      beq #0x346714
003466e4  34 e0 9d e5                                      ldr lr, [sp, #0x34]
003466e8  01 20 a0 e1                                      mov r2, r1
003466ec  00 00 00 ea                                      b #0x3466f4
003466f0  03 c0 a0 e1                                      mov ip, r3
003466f4  10 30 9c e5                                      ldr r3, [ip, #0x10]
003466f8  03 00 5e e1                                      cmp lr, r3
003466fc  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
00346700  08 30 9c d5                                      ldrle r3, [ip, #8]
00346704  02 c0 a0 c1                                      movgt ip, r2
00346708  0c 20 a0 e1                                      mov r2, ip
0034670c  00 00 53 e3                                      cmp r3, #0
00346710  f6 ff ff 1a                                      bne #0x3466f0
00346714  0c 00 51 e1                                      cmp r1, ip
00346718  03 00 00 0a                                      beq #0x34672c
0034671c  10 20 9c e5                                      ldr r2, [ip, #0x10]
00346720  0c 30 a0 e1                                      mov r3, ip
00346724  0e 00 52 e1                                      cmp r2, lr
00346728  08 00 00 da                                      ble #0x346750
0034672c  7c 30 8d e2                                      add r3, sp, #0x7c
00346730  a4 c0 8d e5                                      str ip, [sp, #0xa4]
00346734  a8 00 8d e2                                      add r0, sp, #0xa8
00346738  00 c0 a0 e3                                      mov ip, #0
0034673c  a4 20 8d e2                                      add r2, sp, #0xa4
00346740  7c e0 8d e5                                      str lr, [sp, #0x7c]
00346744  b0 c8 cd e1                                      strh ip, [sp, #0x80]
00346748  f3 f3 ff eb                                      bl #0x34371c
0034674c  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
00346750  b4 21 d3 e1                                      ldrh r2, [r3, #0x14]
00346754  01 10 a0 e3                                      mov r1, #1
00346758  1c 10 8d e5                                      str r1, [sp, #0x1c]
0034675c  01 20 82 e0                                      add r2, r2, r1
00346760  b4 21 c3 e1                                      strh r2, [r3, #0x14]
00346764  04 00 00 ea                                      b #0x34677c
00346768  00 10 a0 e3                                      mov r1, #0
0034676c  0b 00 a0 e1                                      mov r0, fp
00346770  2d 1f 13 eb                                      bl #0x80e42c
00346774  00 10 a0 e3                                      mov r1, #0
00346778  1c 10 8d e5                                      str r1, [sp, #0x1c]
0034677c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00346780  07 10 a0 e1                                      mov r1, r7
00346784  42 2f 82 e2                                      add r2, r2, #0x108
00346788  02 00 a0 e1                                      mov r0, r2
0034678c  24 20 8d e5                                      str r2, [sp, #0x24]
00346790  c5 fa ff eb                                      bl #0x3452ac
00346794  10 20 9b e5                                      ldr r2, [fp, #0x10]
00346798  00 40 a0 e1                                      mov r4, r0
0034679c  00 60 90 e5                                      ldr r6, [r0]
003467a0  07 30 12 e2                                      ands r3, r2, #7
003467a4  a2 11 a0 e1                                      lsr r1, r2, #3
003467a8  01 30 a0 13                                      movne r3, #1
003467ac  57 1e 61 e2                                      rsb r1, r1, #0x570
003467b0  01 10 63 e0                                      rsb r1, r3, r1
003467b4  00 00 51 e3                                      cmp r1, #0
003467b8  1c 02 00 da                                      ble #0x347030
003467bc  3c 80 8d e2                                      add r8, sp, #0x3c
003467c0  08 00 a0 e1                                      mov r0, r8
003467c4  4f 20 13 eb                                      bl #0x80e908
003467c8  04 00 56 e1                                      cmp r6, r4
003467cc  8c 01 00 1a                                      bne #0x346e04
003467d0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003467d4  00 00 53 e3                                      cmp r3, #0
003467d8  9c 01 00 1a                                      bne #0x346e50
003467dc  0c 90 9d e5                                      ldr sb, [sp, #0xc]
003467e0  0c a0 9d e5                                      ldr sl, [sp, #0xc]
003467e4  00 61 b9 e5                                      ldr r6, [sb, #0x100]!
003467e8  14 b0 8d e5                                      str fp, [sp, #0x14]
003467ec  28 80 8d e5                                      str r8, [sp, #0x28]
003467f0  09 00 56 e1                                      cmp r6, sb
003467f4  08 b0 9d e5                                      ldr fp, [sp, #8]
003467f8  2a 00 00 0a                                      beq #0x3468a8
003467fc  07 10 a0 e1                                      mov r1, r7
00346800  0b 00 a0 e1                                      mov r0, fp
00346804  08 80 96 e5                                      ldr r8, [r6, #8]
00346808  3d fd ff eb                                      bl #0x345d04
0034680c  04 40 90 e5                                      ldr r4, [r0, #4]
00346810  00 50 a0 e1                                      mov r5, r0
00346814  08 11 98 e5                                      ldr r1, [r8, #0x108]
00346818  00 00 54 e3                                      cmp r4, #0
0034681c  ab 00 00 0a                                      beq #0x346ad0
00346820  71 10 bf e6                                      sxth r1, r1
00346824  00 20 a0 e1                                      mov r2, r0
00346828  00 00 00 ea                                      b #0x346830
0034682c  03 40 a0 e1                                      mov r4, r3
00346830  f0 31 d4 e1                                      ldrsh r3, [r4, #0x10]
00346834  01 00 53 e1                                      cmp r3, r1
00346838  0c 30 94 b5                                      ldrlt r3, [r4, #0xc]
0034683c  08 30 94 a5                                      ldrge r3, [r4, #8]
00346840  02 40 a0 b1                                      movlt r4, r2
00346844  04 20 a0 e1                                      mov r2, r4
00346848  00 00 53 e3                                      cmp r3, #0
0034684c  f6 ff ff 1a                                      bne #0x34682c
00346850  04 00 55 e1                                      cmp r5, r4
00346854  02 00 00 0a                                      beq #0x346864
00346858  f0 31 d4 e1                                      ldrsh r3, [r4, #0x10]
0034685c  01 00 53 e1                                      cmp r3, r1
00346860  9a 00 00 ca                                      bgt #0x346ad0
00346864  08 10 a0 e1                                      mov r1, r8
00346868  0a 00 a0 e1                                      mov r0, sl
0034686c  34 20 9d e5                                      ldr r2, [sp, #0x34]
00346870  5f e8 ff eb                                      bl #0x3409f4
00346874  00 10 50 e2                                      subs r1, r0, #0
00346878  9b 00 00 0a                                      beq #0x346aec
0034687c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00346880  38 f2 ff eb                                      bl #0x343168
00346884  08 80 80 e5                                      str r8, [r0, #8]
00346888  98 30 9d e5                                      ldr r3, [sp, #0x98]
0034688c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00346890  0c 00 80 e8                                      stm r0, {r2, r3}
00346894  00 00 83 e5                                      str r0, [r3]
00346898  98 00 8d e5                                      str r0, [sp, #0x98]
0034689c  00 60 96 e5                                      ldr r6, [r6]
003468a0  09 00 56 e1                                      cmp r6, sb
003468a4  d4 ff ff 1a                                      bne #0x3467fc
003468a8  18 30 9d e5                                      ldr r3, [sp, #0x18]
003468ac  94 50 9d e5                                      ldr r5, [sp, #0x94]
003468b0  14 b0 9d e5                                      ldr fp, [sp, #0x14]
003468b4  28 80 9d e5                                      ldr r8, [sp, #0x28]
003468b8  03 00 55 e1                                      cmp r5, r3
003468bc  03 00 a0 01                                      moveq r0, r3
003468c0  05 00 00 0a                                      beq #0x3468dc
003468c4  18 20 9d e5                                      ldr r2, [sp, #0x18]
003468c8  05 30 a0 e1                                      mov r3, r5
003468cc  00 30 93 e5                                      ldr r3, [r3]
003468d0  02 00 53 e1                                      cmp r3, r2
003468d4  fc ff ff 1a                                      bne #0x3468cc
003468d8  18 00 9d e5                                      ldr r0, [sp, #0x18]
003468dc  8c a0 8d e2                                      add sl, sp, #0x8c
003468e0  00 90 a0 e3                                      mov sb, #0
003468e4  b4 c0 8d e2                                      add ip, sp, #0xb4
003468e8  28 b0 8d e5                                      str fp, [sp, #0x28]
003468ec  8c a0 8d e5                                      str sl, [sp, #0x8c]
003468f0  90 a0 8d e5                                      str sl, [sp, #0x90]
003468f4  09 30 a0 e1                                      mov r3, sb
003468f8  14 90 8d e5                                      str sb, [sp, #0x14]
003468fc  30 c0 8d e5                                      str ip, [sp, #0x30]
00346900  00 b0 a0 e1                                      mov fp, r0
00346904  0c 00 00 ea                                      b #0x34693c
00346908  0a 00 a0 e1                                      mov r0, sl
0034690c  04 30 8d e5                                      str r3, [sp, #4]
00346910  14 f2 ff eb                                      bl #0x343168
00346914  08 40 80 e5                                      str r4, [r0, #8]
00346918  90 20 9d e5                                      ldr r2, [sp, #0x90]
0034691c  04 30 9d e5                                      ldr r3, [sp, #4]
00346920  00 a0 80 e5                                      str sl, [r0]
00346924  04 20 80 e5                                      str r2, [r0, #4]
00346928  03 60 a0 e1                                      mov r6, r3
0034692c  00 00 82 e5                                      str r0, [r2]
00346930  90 00 8d e5                                      str r0, [sp, #0x90]
00346934  00 50 95 e5                                      ldr r5, [r5]
00346938  06 30 a0 e1                                      mov r3, r6
0034693c  0b 00 55 e1                                      cmp r5, fp
00346940  8c 00 00 0a                                      beq #0x346b78
00346944  00 00 59 e3                                      cmp sb, #0
00346948  08 40 95 e5                                      ldr r4, [r5, #8]
0034694c  ed ff ff 1a                                      bne #0x346908
00346950  08 00 a0 e1                                      mov r0, r8
00346954  04 30 8d e5                                      str r3, [sp, #4]
00346958  ac 1e 13 eb                                      bl #0x80e410
0034695c  08 61 94 e5                                      ldr r6, [r4, #0x108]
00346960  04 30 9d e5                                      ldr r3, [sp, #4]
00346964  06 30 63 e0                                      rsb r3, r3, r6
00346968  01 00 53 e3                                      cmp r3, #1
0034696c  7d 00 00 0a                                      beq #0x346b68
00346970  08 00 a0 e1                                      mov r0, r8
00346974  01 10 a0 e3                                      mov r1, #1
00346978  ab 1e 13 eb                                      bl #0x80e42c
0034697c  08 00 a0 e1                                      mov r0, r8
00346980  06 10 a0 e1                                      mov r1, r6
00346984  10 20 a0 e3                                      mov r2, #0x10
00346988  13 1f 13 eb                                      bl #0x80e5dc
0034698c  08 20 a0 e3                                      mov r2, #8
00346990  08 00 a0 e1                                      mov r0, r8
00346994  f8 10 d4 e5                                      ldrb r1, [r4, #0xf8]
00346998  d2 1e 13 eb                                      bl #0x80e4e8
0034699c  08 00 9d e5                                      ldr r0, [sp, #8]
003469a0  07 10 a0 e1                                      mov r1, r7
003469a4  d6 fc ff eb                                      bl #0x345d04
003469a8  04 30 90 e5                                      ldr r3, [r0, #4]
003469ac  00 00 53 e3                                      cmp r3, #0
003469b0  5e 00 00 0a                                      beq #0x346b30
003469b4  00 10 a0 e1                                      mov r1, r0
003469b8  76 c0 bf e6                                      sxth ip, r6
003469bc  00 00 00 ea                                      b #0x3469c4
003469c0  02 30 a0 e1                                      mov r3, r2
003469c4  f0 21 d3 e1                                      ldrsh r2, [r3, #0x10]
003469c8  0c 00 52 e1                                      cmp r2, ip
003469cc  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
003469d0  08 20 93 a5                                      ldrge r2, [r3, #8]
003469d4  01 30 a0 b1                                      movlt r3, r1
003469d8  03 10 a0 e1                                      mov r1, r3
003469dc  00 00 52 e3                                      cmp r2, #0
003469e0  f6 ff ff 1a                                      bne #0x3469c0
003469e4  03 00 50 e1                                      cmp r0, r3
003469e8  21 00 00 0a                                      beq #0x346a74
003469ec  f0 21 d3 e1                                      ldrsh r2, [r3, #0x10]
003469f0  0c 00 52 e1                                      cmp r2, ip
003469f4  4d 00 00 ca                                      bgt #0x346b30
003469f8  03 00 50 e1                                      cmp r0, r3
003469fc  1c 00 00 0a                                      beq #0x346a74
00346a00  00 01 94 e5                                      ldr r0, [r4, #0x100]
00346a04  9c 32 13 eb                                      bl #0x81347c
00346a08  07 10 a0 e1                                      mov r1, r7
00346a0c  08 00 9d e5                                      ldr r0, [sp, #8]
00346a10  bb fc ff eb                                      bl #0x345d04
00346a14  04 30 90 e5                                      ldr r3, [r0, #4]
00346a18  76 c0 ff e6                                      uxth ip, r6
00346a1c  00 00 53 e3                                      cmp r3, #0
00346a20  7c c0 bf 16                                      sxthne ip, ip
00346a24  00 10 a0 11                                      movne r1, r0
00346a28  01 00 00 1a                                      bne #0x346a34
00346a2c  10 00 00 ea                                      b #0x346a74
00346a30  02 30 a0 e1                                      mov r3, r2
00346a34  f0 21 d3 e1                                      ldrsh r2, [r3, #0x10]
00346a38  0c 00 52 e1                                      cmp r2, ip
00346a3c  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
00346a40  08 20 93 a5                                      ldrge r2, [r3, #8]
00346a44  01 30 a0 b1                                      movlt r3, r1
00346a48  03 10 a0 e1                                      mov r1, r3
00346a4c  00 00 52 e3                                      cmp r2, #0
00346a50  f6 ff ff 1a                                      bne #0x346a30
00346a54  03 00 50 e1                                      cmp r0, r3
00346a58  05 00 00 0a                                      beq #0x346a74
00346a5c  f0 21 d3 e1                                      ldrsh r2, [r3, #0x10]
00346a60  0c 00 52 e1                                      cmp r2, ip
00346a64  02 00 00 ca                                      bgt #0x346a74
00346a68  30 10 9d e5                                      ldr r1, [sp, #0x30]
00346a6c  b4 30 8d e5                                      str r3, [sp, #0xb4]
00346a70  86 fd ff eb                                      bl #0x346090
00346a74  00 30 94 e5                                      ldr r3, [r4]
00346a78  04 00 a0 e1                                      mov r0, r4
00346a7c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00346a80  0f e0 a0 e1                                      mov lr, pc
00346a84  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00346a88  00 01 94 e5                                      ldr r0, [r4, #0x100]
00346a8c  01 10 a0 e3                                      mov r1, #1
00346a90  f5 32 13 eb                                      bl #0x81366c
00346a94  00 31 94 e5                                      ldr r3, [r4, #0x100]
00346a98  08 10 a0 e1                                      mov r1, r8
00346a9c  34 20 9d e5                                      ldr r2, [sp, #0x34]
00346aa0  03 00 a0 e1                                      mov r0, r3
00346aa4  00 c0 93 e5                                      ldr ip, [r3]
00346aa8  20 30 9d e5                                      ldr r3, [sp, #0x20]
00346aac  0f e0 a0 e1                                      mov lr, pc
00346ab0  08 f0 9c e5                                      ldr pc, [ip, #8]
00346ab4  58 30 9d e5                                      ldr r3, [sp, #0x58]
00346ab8  00 00 53 e3                                      cmp r3, #0
00346abc  1d 00 00 1a                                      bne #0x346b38
00346ac0  14 10 9d e5                                      ldr r1, [sp, #0x14]
00346ac4  01 10 81 e2                                      add r1, r1, #1
00346ac8  14 10 8d e5                                      str r1, [sp, #0x14]
00346acc  98 ff ff ea                                      b #0x346934
00346ad0  08 10 a0 e1                                      mov r1, r8
00346ad4  0a 00 a0 e1                                      mov r0, sl
00346ad8  34 20 9d e5                                      ldr r2, [sp, #0x34]
00346adc  c4 e7 ff eb                                      bl #0x3409f4
00346ae0  00 10 50 e2                                      subs r1, r0, #0
00346ae4  05 40 a0 e1                                      mov r4, r5
00346ae8  63 ff ff 1a                                      bne #0x34687c
00346aec  04 00 55 e1                                      cmp r5, r4
00346af0  04 00 00 0a                                      beq #0x346b08
00346af4  00 31 98 e5                                      ldr r3, [r8, #0x100]
00346af8  00 00 53 e3                                      cmp r3, #0
00346afc  5e ff ff 1a                                      bne #0x34687c
00346b00  00 60 96 e5                                      ldr r6, [r6]
00346b04  65 ff ff ea                                      b #0x3468a0
00346b08  00 01 98 e5                                      ldr r0, [r8, #0x100]
00346b0c  00 00 50 e3                                      cmp r0, #0
00346b10  61 ff ff 0a                                      beq #0x34689c
00346b14  d4 32 13 eb                                      bl #0x81366c
00346b18  00 60 96 e5                                      ldr r6, [r6]
00346b1c  5f ff ff ea                                      b #0x3468a0
00346b20  01 30 a0 e1                                      mov r3, r1
00346b24  03 00 51 e1                                      cmp r1, r3
00346b28  af fe ff 1a                                      bne #0x3465ec
00346b2c  0d ff ff ea                                      b #0x346768
00346b30  00 30 a0 e1                                      mov r3, r0
00346b34  af ff ff ea                                      b #0x3469f8
00346b38  08 00 a0 e1                                      mov r0, r8
00346b3c  3e 1f 13 eb                                      bl #0x80e83c
00346b40  0a 00 a0 e1                                      mov r0, sl
00346b44  87 f1 ff eb                                      bl #0x343168
00346b48  08 40 80 e5                                      str r4, [r0, #8]
00346b4c  90 30 9d e5                                      ldr r3, [sp, #0x90]
00346b50  01 90 a0 e3                                      mov sb, #1
00346b54  00 a0 80 e5                                      str sl, [r0]
00346b58  04 30 80 e5                                      str r3, [r0, #4]
00346b5c  00 00 83 e5                                      str r0, [r3]
00346b60  90 00 8d e5                                      str r0, [sp, #0x90]
00346b64  72 ff ff ea                                      b #0x346934
00346b68  08 00 a0 e1                                      mov r0, r8
00346b6c  09 10 a0 e1                                      mov r1, sb
00346b70  2d 1e 13 eb                                      bl #0x80e42c
00346b74  84 ff ff ea                                      b #0x34698c
00346b78  28 b0 9d e5                                      ldr fp, [sp, #0x28]
00346b7c  10 20 a0 e3                                      mov r2, #0x10
00346b80  14 10 9d e5                                      ldr r1, [sp, #0x14]
00346b84  0b 00 a0 e1                                      mov r0, fp
00346b88  93 1e 13 eb                                      bl #0x80e5dc
00346b8c  0b 00 a0 e1                                      mov r0, fp
00346b90  08 10 a0 e1                                      mov r1, r8
00346b94  6e 20 13 eb                                      bl #0x80ed54
00346b98  07 10 a0 e1                                      mov r1, r7
00346b9c  24 00 9d e5                                      ldr r0, [sp, #0x24]
00346ba0  c1 f9 ff eb                                      bl #0x3452ac
00346ba4  b0 f9 ff eb                                      bl #0x34526c
00346ba8  00 00 59 e3                                      cmp sb, #0
00346bac  9c 00 00 1a                                      bne #0x346e24
00346bb0  0c 50 9d e5                                      ldr r5, [sp, #0xc]
00346bb4  28 01 b5 e5                                      ldr r0, [r5, #0x128]!
00346bb8  00 00 55 e1                                      cmp r5, r0
00346bbc  07 00 00 0a                                      beq #0x346be0
00346bc0  08 30 90 e5                                      ldr r3, [r0, #8]
00346bc4  34 20 9d e5                                      ldr r2, [sp, #0x34]
00346bc8  00 40 90 e5                                      ldr r4, [r0]
00346bcc  03 00 52 e1                                      cmp r2, r3
00346bd0  56 00 00 0a                                      beq #0x346d30
00346bd4  04 00 a0 e1                                      mov r0, r4
00346bd8  00 00 55 e1                                      cmp r5, r0
00346bdc  f7 ff ff 1a                                      bne #0x346bc0
00346be0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00346be4  00 00 52 e3                                      cmp r2, #0
00346be8  64 00 00 0a                                      beq #0x346d80
00346bec  01 10 a0 e3                                      mov r1, #1
00346bf0  0b 00 a0 e1                                      mov r0, fp
00346bf4  0c 1e 13 eb                                      bl #0x80e42c
00346bf8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00346bfc  e4 c0 93 e5                                      ldr ip, [r3, #0xe4]
00346c00  e0 10 83 e2                                      add r1, r3, #0xe0
00346c04  00 00 5c e3                                      cmp ip, #0
00346c08  34 e0 9d 05                                      ldreq lr, [sp, #0x34]
00346c0c  01 c0 a0 01                                      moveq ip, r1
00346c10  0b 00 00 0a                                      beq #0x346c44
00346c14  34 e0 9d e5                                      ldr lr, [sp, #0x34]
00346c18  01 20 a0 e1                                      mov r2, r1
00346c1c  00 00 00 ea                                      b #0x346c24
00346c20  03 c0 a0 e1                                      mov ip, r3
00346c24  10 30 9c e5                                      ldr r3, [ip, #0x10]
00346c28  0e 00 53 e1                                      cmp r3, lr
00346c2c  0c 30 9c b5                                      ldrlt r3, [ip, #0xc]
00346c30  08 30 9c a5                                      ldrge r3, [ip, #8]
00346c34  02 c0 a0 b1                                      movlt ip, r2
00346c38  0c 20 a0 e1                                      mov r2, ip
00346c3c  00 00 53 e3                                      cmp r3, #0
00346c40  f6 ff ff 1a                                      bne #0x346c20
00346c44  0c 00 51 e1                                      cmp r1, ip
00346c48  ec 00 00 0a                                      beq #0x347000
00346c4c  10 20 9c e5                                      ldr r2, [ip, #0x10]
00346c50  0c 30 a0 e1                                      mov r3, ip
00346c54  0e 00 52 e1                                      cmp r2, lr
00346c58  e8 00 00 ca                                      bgt #0x347000
00346c5c  14 10 d3 e5                                      ldrb r1, [r3, #0x14]
00346c60  0b 00 a0 e1                                      mov r0, fp
00346c64  08 20 a0 e3                                      mov r2, #8
00346c68  1e 1e 13 eb                                      bl #0x80e4e8
00346c6c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00346c70  00 00 51 e3                                      cmp r1, #0
00346c74  47 00 00 da                                      ble #0x346d98
00346c78  0b 00 a0 e1                                      mov r0, fp
00346c7c  01 10 a0 e3                                      mov r1, #1
00346c80  e9 1d 13 eb                                      bl #0x80e42c
00346c84  0b 00 a0 e1                                      mov r0, fp
00346c88  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00346c8c  10 20 a0 e3                                      mov r2, #0x10
00346c90  51 1e 13 eb                                      bl #0x80e5dc
00346c94  10 00 9d e5                                      ldr r0, [sp, #0x10]
00346c98  07 10 a0 e1                                      mov r1, r7
00346c9c  18 fc ff eb                                      bl #0x345d04
00346ca0  08 40 90 e5                                      ldr r4, [r0, #8]
00346ca4  10 00 9d e5                                      ldr r0, [sp, #0x10]
00346ca8  07 10 a0 e1                                      mov r1, r7
00346cac  14 fc ff eb                                      bl #0x345d04
00346cb0  00 00 54 e1                                      cmp r4, r0
00346cb4  11 00 00 0a                                      beq #0x346d00
00346cb8  10 20 a0 e3                                      mov r2, #0x10
00346cbc  0b 00 a0 e1                                      mov r0, fp
00346cc0  f0 11 d4 e1                                      ldrsh r1, [r4, #0x10]
00346cc4  44 1e 13 eb                                      bl #0x80e5dc
00346cc8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00346ccc  00 00 52 e3                                      cmp r2, #0
00346cd0  01 00 00 1a                                      bne #0x346cdc
00346cd4  1c 00 00 ea                                      b #0x346d4c
00346cd8  03 20 a0 e1                                      mov r2, r3
00346cdc  08 30 92 e5                                      ldr r3, [r2, #8]
00346ce0  00 00 53 e3                                      cmp r3, #0
00346ce4  fb ff ff 1a                                      bne #0x346cd8
00346ce8  10 00 9d e5                                      ldr r0, [sp, #0x10]
00346cec  07 10 a0 e1                                      mov r1, r7
00346cf0  02 40 a0 e1                                      mov r4, r2
00346cf4  02 fc ff eb                                      bl #0x345d04
00346cf8  00 00 54 e1                                      cmp r4, r0
00346cfc  ed ff ff 1a                                      bne #0x346cb8
00346d00  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00346d04  fd 30 d2 e5                                      ldrb r3, [r2, #0xfd]
00346d08  00 00 53 e3                                      cmp r3, #0
00346d0c  28 00 00 1a                                      bne #0x346db4
00346d10  0a 00 a0 e1                                      mov r0, sl
00346d14  54 f9 ff eb                                      bl #0x34526c
00346d18  08 00 a0 e1                                      mov r0, r8
00346d1c  9b 1e 13 eb                                      bl #0x80e790
00346d20  18 00 9d e5                                      ldr r0, [sp, #0x18]
00346d24  50 f9 ff eb                                      bl #0x34526c
00346d28  bc d0 8d e2                                      add sp, sp, #0xbc
00346d2c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00346d30  04 30 90 e5                                      ldr r3, [r0, #4]
00346d34  0c 10 a0 e3                                      mov r1, #0xc
00346d38  00 40 83 e5                                      str r4, [r3]
00346d3c  04 30 84 e5                                      str r3, [r4, #4]
00346d40  6e 08 0f eb                                      bl #0x708f00
00346d44  04 00 a0 e1                                      mov r0, r4
00346d48  a2 ff ff ea                                      b #0x346bd8
00346d4c  04 30 94 e5                                      ldr r3, [r4, #4]
00346d50  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00346d54  01 00 54 e1                                      cmp r4, r1
00346d58  05 00 00 1a                                      bne #0x346d74
00346d5c  03 40 a0 e1                                      mov r4, r3
00346d60  04 30 93 e5                                      ldr r3, [r3, #4]
00346d64  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00346d68  02 00 54 e1                                      cmp r4, r2
00346d6c  fa ff ff 0a                                      beq #0x346d5c
00346d70  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00346d74  02 00 53 e1                                      cmp r3, r2
00346d78  03 40 a0 11                                      movne r4, r3
00346d7c  c8 ff ff ea                                      b #0x346ca4
00346d80  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00346d84  0b 00 a0 e1                                      mov r0, fp
00346d88  a7 1d 13 eb                                      bl #0x80e42c
00346d8c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00346d90  00 00 51 e3                                      cmp r1, #0
00346d94  b7 ff ff ca                                      bgt #0x346c78
00346d98  0b 00 a0 e1                                      mov r0, fp
00346d9c  00 10 a0 e3                                      mov r1, #0
00346da0  a1 1d 13 eb                                      bl #0x80e42c
00346da4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00346da8  fd 30 d2 e5                                      ldrb r3, [r2, #0xfd]
00346dac  00 00 53 e3                                      cmp r3, #0
00346db0  d6 ff ff 0a                                      beq #0x346d10
00346db4  ee d3 12 eb                                      bl #0x7fbd74
00346db8  00 20 a0 e3                                      mov r2, #0
00346dbc  00 10 a0 e1                                      mov r1, r0
00346dc0  5c 00 8d e2                                      add r0, sp, #0x5c
00346dc4  2e d9 12 eb                                      bl #0x7fd284
00346dc8  60 30 9d e5                                      ldr r3, [sp, #0x60]
00346dcc  04 20 13 e5                                      ldr r2, [r3, #-4]
00346dd0  34 30 9d e5                                      ldr r3, [sp, #0x34]
00346dd4  03 00 52 e1                                      cmp r2, r3
00346dd8  9b 00 00 0a                                      beq #0x34704c
00346ddc  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
00346de0  00 00 50 e3                                      cmp r0, #0
00346de4  c9 ff ff 0a                                      beq #0x346d10
00346de8  64 10 9d e5                                      ldr r1, [sp, #0x64]
00346dec  01 10 60 e0                                      rsb r1, r0, r1
00346df0  03 10 c1 e3                                      bic r1, r1, #3
00346df4  80 00 51 e3                                      cmp r1, #0x80
00346df8  8a 00 00 8a                                      bhi #0x347028
00346dfc  3f 08 0f eb                                      bl #0x708f00
00346e00  c2 ff ff ea                                      b #0x346d10
00346e04  07 10 a0 e1                                      mov r1, r7
00346e08  24 00 9d e5                                      ldr r0, [sp, #0x24]
00346e0c  26 f9 ff eb                                      bl #0x3452ac
00346e10  07 10 a0 e1                                      mov r1, r7
00346e14  00 50 90 e5                                      ldr r5, [r0]
00346e18  24 00 9d e5                                      ldr r0, [sp, #0x24]
00346e1c  22 f9 ff eb                                      bl #0x3452ac
00346e20  ad fe ff ea                                      b #0x3468dc
00346e24  07 10 a0 e1                                      mov r1, r7
00346e28  24 00 9d e5                                      ldr r0, [sp, #0x24]
00346e2c  1e f9 ff eb                                      bl #0x3452ac
00346e30  0a 10 a0 e1                                      mov r1, sl
00346e34  8e fd ff eb                                      bl #0x346474
00346e38  0a 00 a0 e1                                      mov r0, sl
00346e3c  0a f9 ff eb                                      bl #0x34526c
00346e40  0b 00 a0 e1                                      mov r0, fp
00346e44  00 10 a0 e3                                      mov r1, #0
00346e48  77 1d 13 eb                                      bl #0x80e42c
00346e4c  86 ff ff ea                                      b #0x346c6c
00346e50  4d e8 12 eb                                      bl #0x800f8c
00346e54  00 30 90 e5                                      ldr r3, [r0]
00346e58  0f e0 a0 e1                                      mov lr, pc
00346e5c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00346e60  04 32 9f e5                                      ldr r3, [pc, #0x204]
00346e64  28 00 8d e5                                      str r0, [sp, #0x28]
00346e68  03 50 95 e7                                      ldr r5, [r5, r3]
00346e6c  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
00346e70  18 30 95 e5                                      ldr r3, [r5, #0x18]
00346e74  02 30 63 e0                                      rsb r3, r3, r2
00346e78  43 31 a0 e1                                      asr r3, r3, #2
00346e7c  03 61 83 e0                                      add r6, r3, r3, lsl #2
00346e80  06 62 86 e0                                      add r6, r6, r6, lsl #4
00346e84  06 64 86 e0                                      add r6, r6, r6, lsl #8
00346e88  06 68 86 e0                                      add r6, r6, r6, lsl #16
00346e8c  86 60 83 e0                                      add r6, r3, r6, lsl #1
00346e90  00 00 56 e3                                      cmp r6, #0
00346e94  20 00 00 da                                      ble #0x346f1c
00346e98  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
00346e9c  00 40 a0 e3                                      mov r4, #0
00346ea0  03 30 8f e0                                      add r3, pc, r3
00346ea4  14 30 8d e5                                      str r3, [sp, #0x14]
00346ea8  02 00 00 ea                                      b #0x346eb8
00346eac  01 40 84 e2                                      add r4, r4, #1
00346eb0  06 00 54 e1                                      cmp r4, r6
00346eb4  18 00 00 0a                                      beq #0x346f1c
00346eb8  04 10 a0 e1                                      mov r1, r4
00346ebc  05 00 a0 e1                                      mov r0, r5
00346ec0  49 3b 04 eb                                      bl #0x455bec
00346ec4  00 00 50 e3                                      cmp r0, #0
00346ec8  f7 ff ff 0a                                      beq #0x346eac
00346ecc  04 10 a0 e1                                      mov r1, r4
00346ed0  05 00 a0 e1                                      mov r0, r5
00346ed4  59 3b 04 eb                                      bl #0x455c40
00346ed8  00 90 a0 e1                                      mov sb, r0
00346edc  b6 10 13 eb                                      bl #0x80b1bc
00346ee0  01 10 a0 e3                                      mov r1, #1
00346ee4  00 a0 a0 e1                                      mov sl, r0
00346ee8  14 00 9d e5                                      ldr r0, [sp, #0x14]
00346eec  d4 0c 13 eb                                      bl #0x80a244
00346ef0  04 c0 a0 e3                                      mov ip, #4
00346ef4  54 40 80 e5                                      str r4, [r0, #0x54]
00346ef8  58 90 80 e5                                      str sb, [r0, #0x58]
00346efc  50 c0 80 e5                                      str ip, [r0, #0x50]
00346f00  00 10 a0 e1                                      mov r1, r0
00346f04  34 20 9d e5                                      ldr r2, [sp, #0x34]
00346f08  0a 00 a0 e1                                      mov r0, sl
00346f0c  01 40 84 e2                                      add r4, r4, #1
00346f10  c9 1c 13 eb                                      bl #0x80e23c
00346f14  06 00 54 e1                                      cmp r4, r6
00346f18  e6 ff ff 1a                                      bne #0x346eb8
00346f1c  0c 90 9d e5                                      ldr sb, [sp, #0xc]
00346f20  68 60 8d e2                                      add r6, sp, #0x68
00346f24  08 a0 a0 e1                                      mov sl, r8
00346f28  00 41 b9 e5                                      ldr r4, [sb, #0x100]!
00346f2c  06 00 a0 e1                                      mov r0, r6
00346f30  04 00 59 e1                                      cmp sb, r4
00346f34  25 00 00 0a                                      beq #0x346fd0
00346f38  08 50 94 e5                                      ldr r5, [r4, #8]
00346f3c  00 10 55 e2                                      subs r1, r5, #0
00346f40  1e 00 00 0a                                      beq #0x346fc0
00346f44  00 31 95 e5                                      ldr r3, [r5, #0x100]
00346f48  00 00 53 e3                                      cmp r3, #0
00346f4c  1b 00 00 0a                                      beq #0x346fc0
00346f50  75 db ff eb                                      bl #0x33dd2c
00346f54  06 00 a0 e1                                      mov r0, r6
00346f58  fd e3 ff eb                                      bl #0x33ff54
00346f5c  00 80 50 e2                                      subs r8, r0, #0
00346f60  0e 00 00 0a                                      beq #0x346fa0
00346f64  00 30 98 e5                                      ldr r3, [r8]
00346f68  0f e0 a0 e1                                      mov lr, pc
00346f6c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00346f70  00 00 50 e3                                      cmp r0, #0
00346f74  28 10 9d e5                                      ldr r1, [sp, #0x28]
00346f78  08 20 a0 e1                                      mov r2, r8
00346f7c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00346f80  02 00 00 0a                                      beq #0x346f90
00346f84  6f e6 ff eb                                      bl #0x340948
00346f88  00 00 50 e3                                      cmp r0, #0
00346f8c  0b 00 00 0a                                      beq #0x346fc0
00346f90  08 00 a0 e1                                      mov r0, r8
00346f94  4a 70 01 eb                                      bl #0x3a30c4
00346f98  00 00 50 e3                                      cmp r0, #0
00346f9c  07 00 00 1a                                      bne #0x346fc0
00346fa0  18 00 9d e5                                      ldr r0, [sp, #0x18]
00346fa4  6f f0 ff eb                                      bl #0x343168
00346fa8  08 50 80 e5                                      str r5, [r0, #8]
00346fac  98 30 9d e5                                      ldr r3, [sp, #0x98]
00346fb0  18 20 9d e5                                      ldr r2, [sp, #0x18]
00346fb4  0c 00 80 e8                                      stm r0, {r2, r3}
00346fb8  00 00 83 e5                                      str r0, [r3]
00346fbc  98 00 8d e5                                      str r0, [sp, #0x98]
00346fc0  00 40 94 e5                                      ldr r4, [r4]
00346fc4  06 00 a0 e1                                      mov r0, r6
00346fc8  04 00 59 e1                                      cmp sb, r4
00346fcc  d9 ff ff 1a                                      bne #0x346f38
00346fd0  18 10 9d e5                                      ldr r1, [sp, #0x18]
00346fd4  94 50 9d e5                                      ldr r5, [sp, #0x94]
00346fd8  0a 80 a0 e1                                      mov r8, sl
00346fdc  01 00 55 e1                                      cmp r5, r1
00346fe0  01 00 a0 01                                      moveq r0, r1
00346fe4  3c fe ff 0a                                      beq #0x3468dc
00346fe8  18 20 9d e5                                      ldr r2, [sp, #0x18]
00346fec  05 30 a0 e1                                      mov r3, r5
00346ff0  00 30 93 e5                                      ldr r3, [r3]
00346ff4  02 00 53 e1                                      cmp r3, r2
00346ff8  fc ff ff 1a                                      bne #0x346ff0
00346ffc  35 fe ff ea                                      b #0x3468d8
00347000  74 30 8d e2                                      add r3, sp, #0x74
00347004  9c c0 8d e5                                      str ip, [sp, #0x9c]
00347008  a0 00 8d e2                                      add r0, sp, #0xa0
0034700c  00 c0 a0 e3                                      mov ip, #0
00347010  9c 20 8d e2                                      add r2, sp, #0x9c
00347014  74 e0 8d e5                                      str lr, [sp, #0x74]
00347018  b8 c7 cd e1                                      strh ip, [sp, #0x78]
0034701c  be f1 ff eb                                      bl #0x34371c
00347020  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
00347024  0c ff ff ea                                      b #0x346c5c
00347028  04 25 ff eb                                      bl #0x310440
0034702c  37 ff ff ea                                      b #0x346d10
00347030  0b 00 a0 e1                                      mov r0, fp
00347034  00 10 a0 e3                                      mov r1, #0
00347038  10 20 a0 e3                                      mov r2, #0x10
0034703c  66 1d 13 eb                                      bl #0x80e5dc
00347040  18 00 9d e5                                      ldr r0, [sp, #0x18]
00347044  88 f8 ff eb                                      bl #0x34526c
00347048  36 ff ff ea                                      b #0x346d28
0034704c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00347050  7e e4 ff eb                                      bl #0x340250
00347054  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00347058  00 30 a0 e3                                      mov r3, #0
0034705c  fd 30 cc e5                                      strb r3, [ip, #0xfd]
00347060  5d ff ff ea                                      b #0x346ddc
; mapping-symbol data/literal pool
00347064  6c e5 64 00 f4 37 00 00 20 1a 00 00 20 80 57 00  .byte 0x6c, 0xe5, 0x64, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x20, 0x1a, 0x00, 0x00, 0x20, 0x80, 0x57, 0x00

; FUNCTION 0x00347074, declared_size=140, range_size=140, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager16sWritePacketDataEiiR12NetBitStream
; demangled: ObjectManager::sWritePacketData(int, int, NetBitStream&)
; decoder-mode: arm
00347074  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00347078  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0034707c  00 70 a0 e1                                      mov r7, r0
00347080  74 00 9f e5                                      ldr r0, [pc, #0x74]
00347084  03 30 8f e0                                      add r3, pc, r3
00347088  01 60 a0 e1                                      mov r6, r1
0034708c  00 40 93 e7                                      ldr r4, [r3, r0]
00347090  02 50 a0 e1                                      mov r5, r2
00347094  04 00 a0 e1                                      mov r0, r4
00347098  3d 61 ff eb                                      bl #0x31f594
0034709c  00 00 50 e3                                      cmp r0, #0
003470a0  0f 00 00 0a                                      beq #0x3470e4
003470a4  30 31 90 e5                                      ldr r3, [r0, #0x130]
003470a8  23 00 53 e3                                      cmp r3, #0x23
003470ac  0c 00 00 da                                      ble #0x3470e4
003470b0  38 30 94 e5                                      ldr r3, [r4, #0x38]
003470b4  00 00 53 e3                                      cmp r3, #0
003470b8  09 00 00 0a                                      beq #0x3470e4
003470bc  05 00 a0 e1                                      mov r0, r5
003470c0  01 10 a0 e3                                      mov r1, #1
003470c4  d8 1c 13 eb                                      bl #0x80e42c
003470c8  38 00 94 e5                                      ldr r0, [r4, #0x38]
003470cc  07 10 a0 e1                                      mov r1, r7
003470d0  06 20 a0 e1                                      mov r2, r6
003470d4  05 30 a0 e1                                      mov r3, r5
003470d8  0c fd ff eb                                      bl #0x346510
003470dc  01 00 a0 e3                                      mov r0, #1
003470e0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003470e4  05 00 a0 e1                                      mov r0, r5
003470e8  00 10 a0 e3                                      mov r1, #0
003470ec  ce 1c 13 eb                                      bl #0x80e42c
003470f0  00 00 a0 e3                                      mov r0, #0
003470f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003470f8  0c da 64 00 f4 37 00 00                          .byte 0x0c, 0xda, 0x64, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00347100, declared_size=604, range_size=604, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager19InitModulesFogColorERKSt6vectorI7Point3DIfESaIS2_EEi
; demangled: ObjectManager::InitModulesFogColor(std::vector<Point3D<float>, std::allocator<Point3D<float> > > const&, int)
; decoder-mode: arm
00347100  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00347104  00 c0 91 e5                                      ldr ip, [r1]
00347108  04 30 91 e5                                      ldr r3, [r1, #4]
0034710c  00 60 a0 e1                                      mov r6, r0
00347110  3c 52 9f e5                                      ldr r5, [pc, #0x23c]
00347114  03 30 6c e0                                      rsb r3, ip, r3
00347118  43 31 a0 e1                                      asr r3, r3, #2
0034711c  05 50 8f e0                                      add r5, pc, r5
00347120  03 01 83 e0                                      add r0, r3, r3, lsl #2
00347124  34 d0 4d e2                                      sub sp, sp, #0x34
00347128  00 02 80 e0                                      add r0, r0, r0, lsl #4
0034712c  00 04 80 e0                                      add r0, r0, r0, lsl #8
00347130  00 08 80 e0                                      add r0, r0, r0, lsl #16
00347134  80 30 83 e0                                      add r3, r3, r0, lsl #1
00347138  00 00 53 e3                                      cmp r3, #0
0034713c  01 00 00 1a                                      bne #0x347148
00347140  34 d0 8d e2                                      add sp, sp, #0x34
00347144  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00347148  20 30 8d e2                                      add r3, sp, #0x20
0034714c  0c 30 8d e5                                      str r3, [sp, #0xc]
00347150  03 00 a0 e1                                      mov r0, r3
00347154  64 30 a0 e3                                      mov r3, #0x64
00347158  93 02 03 e0                                      mul r3, r3, r2
0034715c  04 30 8d e5                                      str r3, [sp, #4]
00347160  d4 ec ff eb                                      bl #0x3424b8
00347164  24 10 9d e5                                      ldr r1, [sp, #0x24]
00347168  20 00 9d e5                                      ldr r0, [sp, #0x20]
0034716c  14 e8 ff eb                                      bl #0x3411c4
00347170  06 30 a0 e1                                      mov r3, r6
00347174  68 40 b3 e5                                      ldr r4, [r3, #0x68]!
00347178  00 10 a0 e3                                      mov r1, #0
0034717c  14 10 8d e5                                      str r1, [sp, #0x14]
00347180  03 00 54 e1                                      cmp r4, r3
00347184  18 10 8d e5                                      str r1, [sp, #0x18]
00347188  1c 10 8d e5                                      str r1, [sp, #0x1c]
0034718c  03 00 00 0a                                      beq #0x3471a0
00347190  00 40 94 e5                                      ldr r4, [r4]
00347194  01 10 81 e2                                      add r1, r1, #1
00347198  04 00 53 e1                                      cmp r3, r4
0034719c  fb ff ff 1a                                      bne #0x347190
003471a0  00 70 a0 e3                                      mov r7, #0
003471a4  14 00 8d e2                                      add r0, sp, #0x14
003471a8  2c 20 8d e2                                      add r2, sp, #0x2c
003471ac  2c 70 8d e5                                      str r7, [sp, #0x2c]
003471b0  9e fc ff eb                                      bl #0x346430
003471b4  68 30 96 e5                                      ldr r3, [r6, #0x68]
003471b8  14 10 9d e5                                      ldr r1, [sp, #0x14]
003471bc  03 00 00 ea                                      b #0x3471d0
003471c0  08 20 93 e5                                      ldr r2, [r3, #8]
003471c4  07 20 81 e7                                      str r2, [r1, r7]
003471c8  00 30 93 e5                                      ldr r3, [r3]
003471cc  04 70 87 e2                                      add r7, r7, #4
003471d0  03 00 54 e1                                      cmp r4, r3
003471d4  f9 ff ff 1a                                      bne #0x3471c0
003471d8  68 30 96 e5                                      ldr r3, [r6, #0x68]
003471dc  14 00 9d e5                                      ldr r0, [sp, #0x14]
003471e0  18 10 9d e5                                      ldr r1, [sp, #0x18]
003471e4  08 40 93 e5                                      ldr r4, [r3, #8]
003471e8  04 20 a0 e1                                      mov r2, r4
003471ec  48 ec ff eb                                      bl #0x342314
003471f0  24 20 9d e5                                      ldr r2, [sp, #0x24]
003471f4  20 30 9d e5                                      ldr r3, [sp, #0x20]
003471f8  18 b0 9d e5                                      ldr fp, [sp, #0x18]
003471fc  14 70 9d e5                                      ldr r7, [sp, #0x14]
00347200  02 30 63 e0                                      rsb r3, r3, r2
00347204  43 31 a0 e1                                      asr r3, r3, #2
00347208  07 00 5b e1                                      cmp fp, r7
0034720c  03 21 83 e0                                      add r2, r3, r3, lsl #2
00347210  02 22 82 e0                                      add r2, r2, r2, lsl #4
00347214  02 24 82 e0                                      add r2, r2, r2, lsl #8
00347218  02 28 82 e0                                      add r2, r2, r2, lsl #16
0034721c  82 20 83 e0                                      add r2, r3, r2, lsl #1
00347220  08 20 8d e5                                      str r2, [sp, #8]
00347224  3b 00 00 0a                                      beq #0x347318
00347228  28 31 9f e5                                      ldr r3, [pc, #0x128]
0034722c  00 30 8d e5                                      str r3, [sp]
00347230  00 60 97 e5                                      ldr r6, [r7]
00347234  60 01 94 e5                                      ldr r0, [r4, #0x160]
00347238  04 70 87 e2                                      add r7, r7, #4
0034723c  60 11 96 e5                                      ldr r1, [r6, #0x160]
00347240  59 1c ff eb                                      bl #0x30e3ac
00347244  64 11 96 e5                                      ldr r1, [r6, #0x164]
00347248  00 a0 a0 e1                                      mov sl, r0
0034724c  64 01 94 e5                                      ldr r0, [r4, #0x164]
00347250  55 1c ff eb                                      bl #0x30e3ac
00347254  68 11 96 e5                                      ldr r1, [r6, #0x168]
00347258  00 90 a0 e1                                      mov sb, r0
0034725c  68 01 94 e5                                      ldr r0, [r4, #0x168]
00347260  51 1c ff eb                                      bl #0x30e3ac
00347264  0a 10 a0 e1                                      mov r1, sl
00347268  00 80 a0 e1                                      mov r8, r0
0034726c  0a 00 a0 e1                                      mov r0, sl
00347270  bd 1e ff eb                                      bl #0x30ed6c
00347274  09 10 a0 e1                                      mov r1, sb
00347278  00 a0 a0 e1                                      mov sl, r0
0034727c  09 00 a0 e1                                      mov r0, sb
00347280  b9 1e ff eb                                      bl #0x30ed6c
00347284  00 10 a0 e1                                      mov r1, r0
00347288  0a 00 a0 e1                                      mov r0, sl
0034728c  44 1e ff eb                                      bl #0x30eba4
00347290  08 10 a0 e1                                      mov r1, r8
00347294  00 a0 a0 e1                                      mov sl, r0
00347298  08 00 a0 e1                                      mov r0, r8
0034729c  b2 1e ff eb                                      bl #0x30ed6c
003472a0  00 10 a0 e1                                      mov r1, r0
003472a4  0a 00 a0 e1                                      mov r0, sl
003472a8  3d 1e ff eb                                      bl #0x30eba4
003472ac  9c 1b ff eb                                      bl #0x30e124
003472b0  00 30 9d e5                                      ldr r3, [sp]
003472b4  00 a0 a0 e1                                      mov sl, r0
003472b8  3f 0e 86 e2                                      add r0, r6, #0x3f0
003472bc  03 10 95 e7                                      ldr r1, [r5, r3]
003472c0  20 80 9d e5                                      ldr r8, [sp, #0x20]
003472c4  28 2e ff eb                                      bl #0x312b6c
003472c8  00 00 50 e3                                      cmp r0, #0
003472cc  0a 00 a0 e1                                      mov r0, sl
003472d0  0d 00 00 0a                                      beq #0x34730c
003472d4  7c 1c ff eb                                      bl #0x30e4cc
003472d8  04 10 9d e5                                      ldr r1, [sp, #4]
003472dc  f0 1b ff eb                                      bl #0x30e2a4
003472e0  08 10 9d e5                                      ldr r1, [sp, #8]
003472e4  86 1d ff eb                                      bl #0x30e904
003472e8  0c 30 a0 e3                                      mov r3, #0xc
003472ec  93 01 01 e0                                      mul r1, r3, r1
003472f0  01 30 98 e7                                      ldr r3, [r8, r1]
003472f4  01 80 88 e0                                      add r8, r8, r1
003472f8  f0 33 86 e5                                      str r3, [r6, #0x3f0]
003472fc  04 30 98 e5                                      ldr r3, [r8, #4]
00347300  f4 33 86 e5                                      str r3, [r6, #0x3f4]
00347304  08 30 98 e5                                      ldr r3, [r8, #8]
00347308  f8 33 86 e5                                      str r3, [r6, #0x3f8]
0034730c  0b 00 57 e1                                      cmp r7, fp
00347310  c6 ff ff 1a                                      bne #0x347230
00347314  14 b0 9d e5                                      ldr fp, [sp, #0x14]
00347318  00 00 5b e3                                      cmp fp, #0
0034731c  06 00 00 0a                                      beq #0x34733c
00347320  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00347324  01 10 6b e0                                      rsb r1, fp, r1
00347328  03 10 c1 e3                                      bic r1, r1, #3
0034732c  80 00 51 e3                                      cmp r1, #0x80
00347330  04 00 00 8a                                      bhi #0x347348
00347334  0b 00 a0 e1                                      mov r0, fp
00347338  f0 06 0f eb                                      bl #0x708f00
0034733c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00347340  75 fb ff eb                                      bl #0x34611c
00347344  7d ff ff ea                                      b #0x347140
00347348  0b 00 a0 e1                                      mov r0, fp
0034734c  3b 24 ff eb                                      bl #0x310440
00347350  f9 ff ff ea                                      b #0x34733c
; mapping-symbol data/literal pool
00347354  74 d9 64 00 98 24 00 00                          .byte 0x74, 0xd9, 0x64, 0x00, 0x98, 0x24, 0x00, 0x00

; FUNCTION 0x0034735c, declared_size=2612, range_size=2612, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager21LoadGameObjectNetDataEiiR12NetBitStream
; demangled: ObjectManager::LoadGameObjectNetData(int, int, NetBitStream&)
; decoder-mode: arm
0034735c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00347360  08 ca 9f e5                                      ldr ip, [pc, #0xa08]
00347364  08 ea 9f e5                                      ldr lr, [pc, #0xa08]
00347368  94 d0 4d e2                                      sub sp, sp, #0x94
0034736c  0c c0 8f e0                                      add ip, pc, ip
00347370  0c 00 8d e5                                      str r0, [sp, #0xc]
00347374  0e 00 9c e7                                      ldr r0, [ip, lr]
00347378  18 e0 8d e5                                      str lr, [sp, #0x18]
0034737c  10 c0 8d e5                                      str ip, [sp, #0x10]
00347380  44 10 8d e5                                      str r1, [sp, #0x44]
00347384  02 70 a0 e1                                      mov r7, r2
00347388  03 40 a0 e1                                      mov r4, r3
0034738c  80 60 ff eb                                      bl #0x31f594
00347390  00 50 50 e2                                      subs r5, r0, #0
00347394  05 00 00 0a                                      beq #0x3473b0
00347398  04 00 a0 e1                                      mov r0, r4
0034739c  08 10 a0 e3                                      mov r1, #8
003473a0  6f 1c 13 eb                                      bl #0x80e564
003473a4  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
003473a8  03 00 50 e1                                      cmp r0, r3
003473ac  01 00 00 0a                                      beq #0x3473b8
003473b0  94 d0 8d e2                                      add sp, sp, #0x94
003473b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003473b8  74 60 8d e2                                      add r6, sp, #0x74
003473bc  04 00 a0 e1                                      mov r0, r4
003473c0  74 60 8d e5                                      str r6, [sp, #0x74]
003473c4  78 60 8d e5                                      str r6, [sp, #0x78]
003473c8  32 1c 13 eb                                      bl #0x80e498
003473cc  00 00 50 e3                                      cmp r0, #0
003473d0  1c 00 8d 05                                      streq r0, [sp, #0x1c]
003473d4  ff af 0f 03                                      movweq sl, #0xffff
003473d8  83 01 00 1a                                      bne #0x3479ec
003473dc  04 00 a0 e1                                      mov r0, r4
003473e0  10 10 a0 e3                                      mov r1, #0x10
003473e4  91 1c 13 eb                                      bl #0x80e630
003473e8  00 50 50 e2                                      subs r5, r0, #0
003473ec  de 00 00 0a                                      beq #0x34776c
003473f0  07 20 a0 e1                                      mov r2, r7
003473f4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003473f8  44 10 9d e5                                      ldr r1, [sp, #0x44]
003473fc  cb ee ff eb                                      bl #0x342f30
00347400  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00347404  14 00 8d e5                                      str r0, [sp, #0x14]
00347408  00 00 53 e3                                      cmp r3, #0
0034740c  44 b0 8d 02                                      addeq fp, sp, #0x44
00347410  ef 01 00 1a                                      bne #0x347bd4
00347414  00 00 55 e3                                      cmp r5, #0
00347418  3f 02 00 da                                      ble #0x347d1c
0034741c  54 39 9f e5                                      ldr r3, [pc, #0x954]
00347420  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00347424  0c e0 9d e5                                      ldr lr, [sp, #0xc]
00347428  40 30 8d e5                                      str r3, [sp, #0x40]
0034742c  48 39 9f e5                                      ldr r3, [pc, #0x948]
00347430  48 19 9f e5                                      ldr r1, [pc, #0x948]
00347434  48 29 9f e5                                      ldr r2, [pc, #0x948]
00347438  03 30 8f e0                                      add r3, pc, r3
0034743c  34 30 8d e5                                      str r3, [sp, #0x34]
00347440  40 39 9f e5                                      ldr r3, [pc, #0x940]
00347444  00 70 a0 e3                                      mov r7, #0
00347448  5f cf 8c e2                                      add ip, ip, #0x17c
0034744c  03 30 8f e0                                      add r3, pc, r3
00347450  38 30 8d e5                                      str r3, [sp, #0x38]
00347454  30 39 9f e5                                      ldr r3, [pc, #0x930]
00347458  65 ef 8e e2                                      add lr, lr, #0x194
0034745c  24 b0 8d e5                                      str fp, [sp, #0x24]
00347460  03 30 8f e0                                      add r3, pc, r3
00347464  2c 10 8d e5                                      str r1, [sp, #0x2c]
00347468  30 20 8d e5                                      str r2, [sp, #0x30]
0034746c  3c 30 8d e5                                      str r3, [sp, #0x3c]
00347470  20 c0 8d e5                                      str ip, [sp, #0x20]
00347474  28 e0 8d e5                                      str lr, [sp, #0x28]
00347478  07 80 a0 e1                                      mov r8, r7
0034747c  48 90 8d e2                                      add sb, sp, #0x48
00347480  05 a0 a0 e1                                      mov sl, r5
00347484  06 b0 a0 e1                                      mov fp, r6
00347488  04 00 a0 e1                                      mov r0, r4
0034748c  01 1c 13 eb                                      bl #0x80e498
00347490  00 00 50 e3                                      cmp r0, #0
00347494  01 70 87 02                                      addeq r7, r7, #1
00347498  be 00 00 1a                                      bne #0x347798
0034749c  08 10 a0 e3                                      mov r1, #8
003474a0  04 00 a0 e1                                      mov r0, r4
003474a4  2e 1c 13 eb                                      bl #0x80e564
003474a8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003474ac  07 20 a0 e1                                      mov r2, r7
003474b0  00 60 a0 e1                                      mov r6, r0
003474b4  09 00 a0 e1                                      mov r0, sb
003474b8  b8 e4 ff eb                                      bl #0x3407a0
003474bc  09 00 a0 e1                                      mov r0, sb
003474c0  00 10 a0 e3                                      mov r1, #0
003474c4  3d e2 ff eb                                      bl #0x33fdc0
003474c8  00 50 50 e2                                      subs r5, r0, #0
003474cc  03 00 00 0a                                      beq #0x3474e0
003474d0  f8 30 d5 e5                                      ldrb r3, [r5, #0xf8]
003474d4  06 00 53 e1                                      cmp r3, r6
003474d8  00 30 a0 03                                      moveq r3, #0
003474dc  10 00 00 0a                                      beq #0x347524
003474e0  01 60 46 e2                                      sub r6, r6, #1
003474e4  03 00 56 e3                                      cmp r6, #3
003474e8  06 f1 8f 90                                      addls pc, pc, r6, lsl #2
003474ec  7e 00 00 ea                                      b #0x3476ec
003474f0  75 00 00 ea                                      b #0x3476cc
003474f4  94 00 00 ea                                      b #0x34774c
003474f8  6b 00 00 ea                                      b #0x3476ac
003474fc  ff ff ff ea                                      b #0x347500
00347500  00 10 a0 e3                                      mov r1, #0
00347504  18 07 00 e3                                      movw r0, #0x718
00347508  18 24 ff eb                                      bl #0x310570
0034750c  01 30 a0 e3                                      mov r3, #1
00347510  14 10 a0 e3                                      mov r1, #0x14
00347514  00 20 a0 e3                                      mov r2, #0
00347518  00 50 a0 e1                                      mov r5, r0
0034751c  88 46 01 eb                                      bl #0x398f44
00347520  01 30 a0 e3                                      mov r3, #1
00347524  04 c1 95 e5                                      ldr ip, [r5, #0x104]
00347528  00 00 5c e3                                      cmp ip, #0
0034752c  09 00 00 0a                                      beq #0x347558
00347530  00 00 53 e3                                      cmp r3, #0
00347534  9c 00 00 1a                                      bne #0x3477ac
00347538  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0034753c  00 00 5e e3                                      cmp lr, #0
00347540  ae 00 00 1a                                      bne #0x347800
00347544  0c 00 a0 e1                                      mov r0, ip
00347548  00 30 9c e5                                      ldr r3, [ip]
0034754c  04 10 a0 e1                                      mov r1, r4
00347550  0f e0 a0 e1                                      mov lr, pc
00347554  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00347558  01 80 88 e2                                      add r8, r8, #1
0034755c  08 00 5a e1                                      cmp sl, r8
00347560  c8 ff ff 1a                                      bne #0x347488
00347564  0b 60 a0 e1                                      mov r6, fp
00347568  24 b0 9d e5                                      ldr fp, [sp, #0x24]
0034756c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00347570  0b 10 a0 e1                                      mov r1, fp
00347574  e2 f9 ff eb                                      bl #0x345d04
00347578  10 30 90 e5                                      ldr r3, [r0, #0x10]
0034757c  00 50 a0 e1                                      mov r5, r0
00347580  00 00 53 e3                                      cmp r3, #0
00347584  8b 01 00 1a                                      bne #0x347bb8
00347588  28 00 9d e5                                      ldr r0, [sp, #0x28]
0034758c  0b 10 a0 e1                                      mov r1, fp
00347590  db f9 ff eb                                      bl #0x345d04
00347594  10 30 90 e5                                      ldr r3, [r0, #0x10]
00347598  00 50 a0 e1                                      mov r5, r0
0034759c  00 00 53 e3                                      cmp r3, #0
003475a0  bb 01 00 1a                                      bne #0x347c94
003475a4  74 50 9d e5                                      ldr r5, [sp, #0x74]
003475a8  6c 70 8d e2                                      add r7, sp, #0x6c
003475ac  20 80 9d e5                                      ldr r8, [sp, #0x20]
003475b0  07 00 00 ea                                      b #0x3475d4
003475b4  0b 10 a0 e1                                      mov r1, fp
003475b8  08 00 a0 e1                                      mov r0, r8
003475bc  d0 f9 ff eb                                      bl #0x345d04
003475c0  08 20 85 e2                                      add r2, r5, #8
003475c4  00 10 a0 e1                                      mov r1, r0
003475c8  07 00 a0 e1                                      mov r0, r7
003475cc  f0 f4 ff eb                                      bl #0x344994
003475d0  00 50 95 e5                                      ldr r5, [r5]
003475d4  06 00 55 e1                                      cmp r5, r6
003475d8  f5 ff ff 1a                                      bne #0x3475b4
003475dc  04 00 a0 e1                                      mov r0, r4
003475e0  ac 1b 13 eb                                      bl #0x80e498
003475e4  00 00 50 e3                                      cmp r0, #0
003475e8  9b 01 00 1a                                      bne #0x347c5c
003475ec  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003475f0  00 00 50 e3                                      cmp r0, #0
003475f4  82 01 00 1a                                      bne #0x347c04
003475f8  04 00 a0 e1                                      mov r0, r4
003475fc  a5 1b 13 eb                                      bl #0x80e498
00347600  00 00 50 e3                                      cmp r0, #0
00347604  1d 00 00 0a                                      beq #0x347680
00347608  14 00 9d e5                                      ldr r0, [sp, #0x14]
0034760c  00 00 50 e3                                      cmp r0, #0
00347610  1a 00 00 0a                                      beq #0x347680
00347614  04 00 a0 e1                                      mov r0, r4
00347618  10 10 a0 e3                                      mov r1, #0x10
0034761c  03 1c 13 eb                                      bl #0x80e630
00347620  00 70 50 e2                                      subs r7, r0, #0
00347624  15 00 00 da                                      ble #0x347680
00347628  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0034762c  00 50 a0 e3                                      mov r5, #0
00347630  64 a0 8d e2                                      add sl, sp, #0x64
00347634  59 8f 81 e2                                      add r8, r1, #0x164
00347638  8e 90 8d e2                                      add sb, sp, #0x8e
0034763c  0c 60 8d e5                                      str r6, [sp, #0xc]
00347640  10 10 a0 e3                                      mov r1, #0x10
00347644  04 00 a0 e1                                      mov r0, r4
00347648  f8 1b 13 eb                                      bl #0x80e630
0034764c  0b 10 a0 e1                                      mov r1, fp
00347650  00 60 a0 e1                                      mov r6, r0
00347654  08 00 a0 e1                                      mov r0, r8
00347658  a9 f9 ff eb                                      bl #0x345d04
0034765c  01 50 85 e2                                      add r5, r5, #1
00347660  00 10 a0 e1                                      mov r1, r0
00347664  09 20 a0 e1                                      mov r2, sb
00347668  0a 00 a0 e1                                      mov r0, sl
0034766c  be 68 cd e1                                      strh r6, [sp, #0x8e]
00347670  c7 f4 ff eb                                      bl #0x344994
00347674  05 00 57 e1                                      cmp r7, r5
00347678  f0 ff ff 1a                                      bne #0x347640
0034767c  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00347680  74 00 9d e5                                      ldr r0, [sp, #0x74]
00347684  06 00 50 e1                                      cmp r0, r6
00347688  01 00 00 1a                                      bne #0x347694
0034768c  47 ff ff ea                                      b #0x3473b0
00347690  04 00 a0 e1                                      mov r0, r4
00347694  00 40 90 e5                                      ldr r4, [r0]
00347698  0c 10 a0 e3                                      mov r1, #0xc
0034769c  17 06 0f eb                                      bl #0x708f00
003476a0  06 00 54 e1                                      cmp r4, r6
003476a4  f9 ff ff 1a                                      bne #0x347690
003476a8  40 ff ff ea                                      b #0x3473b0
003476ac  00 10 a0 e3                                      mov r1, #0
003476b0  6d 0e a0 e3                                      mov r0, #0x6d0
003476b4  ad 23 ff eb                                      bl #0x310570
003476b8  02 10 a0 e3                                      mov r1, #2
003476bc  00 50 a0 e1                                      mov r5, r0
003476c0  eb 82 02 eb                                      bl #0x3e8274
003476c4  01 30 a0 e3                                      mov r3, #1
003476c8  95 ff ff ea                                      b #0x347524
003476cc  00 10 a0 e3                                      mov r1, #0
003476d0  90 0f 01 e3                                      movw r0, #0x1f90
003476d4  a5 23 ff eb                                      bl #0x310570
003476d8  00 10 a0 e3                                      mov r1, #0
003476dc  00 50 a0 e1                                      mov r5, r0
003476e0  b3 8a 01 eb                                      bl #0x3aa1b4
003476e4  01 30 a0 e3                                      mov r3, #1
003476e8  8d ff ff ea                                      b #0x347524
003476ec  10 10 9d e5                                      ldr r1, [sp, #0x10]
003476f0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
003476f4  00 30 91 e7                                      ldr r3, [r1, r0]
003476f8  00 60 93 e5                                      ldr r6, [r3]
003476fc  02 00 56 e3                                      cmp r6, #2
00347700  00 30 a0 03                                      moveq r3, #0
00347704  00 30 83 05                                      streq r3, [r3]
00347708  01 30 a0 03                                      moveq r3, #1
0034770c  84 ff ff 0a                                      beq #0x347524
00347710  01 00 56 e3                                      cmp r6, #1
00347714  01 30 a0 13                                      movne r3, #1
00347718  81 ff ff 1a                                      bne #0x347524
0034771c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00347720  30 20 9d e5                                      ldr r2, [sp, #0x30]
00347724  86 ce a0 e3                                      mov ip, #0x860
00347728  34 10 9d e5                                      ldr r1, [sp, #0x34]
0034772c  02 00 93 e7                                      ldr r0, [r3, r2]
00347730  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00347734  38 20 9d e5                                      ldr r2, [sp, #0x38]
00347738  a8 00 80 e2                                      add r0, r0, #0xa8
0034773c  00 c0 8d e5                                      str ip, [sp]
00347740  2f 1a ff eb                                      bl #0x30e004
00347744  06 30 a0 e1                                      mov r3, r6
00347748  75 ff ff ea                                      b #0x347524
0034774c  00 10 a0 e3                                      mov r1, #0
00347750  6f 0e a0 e3                                      mov r0, #0x6f0
00347754  85 23 ff eb                                      bl #0x310570
00347758  14 10 a0 e3                                      mov r1, #0x14
0034775c  00 50 a0 e1                                      mov r5, r0
00347760  dd 63 01 eb                                      bl #0x3a06dc
00347764  01 30 a0 e3                                      mov r3, #1
00347768  6d ff ff ea                                      b #0x347524
0034776c  74 00 9d e5                                      ldr r0, [sp, #0x74]
00347770  06 00 50 e1                                      cmp r0, r6
00347774  01 00 00 1a                                      bne #0x347780
00347778  0c ff ff ea                                      b #0x3473b0
0034777c  04 00 a0 e1                                      mov r0, r4
00347780  00 40 90 e5                                      ldr r4, [r0]
00347784  0c 10 a0 e3                                      mov r1, #0xc
00347788  dc 05 0f eb                                      bl #0x708f00
0034778c  06 00 54 e1                                      cmp r4, r6
00347790  f9 ff ff 1a                                      bne #0x34777c
00347794  05 ff ff ea                                      b #0x3473b0
00347798  04 00 a0 e1                                      mov r0, r4
0034779c  10 10 a0 e3                                      mov r1, #0x10
003477a0  a2 1b 13 eb                                      bl #0x80e630
003477a4  00 70 a0 e1                                      mov r7, r0
003477a8  3b ff ff ea                                      b #0x34749c
003477ac  0c 00 a0 e1                                      mov r0, ip
003477b0  00 30 9c e5                                      ldr r3, [ip]
003477b4  04 10 a0 e1                                      mov r1, r4
003477b8  0f e0 a0 e1                                      mov lr, pc
003477bc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003477c0  14 20 9d e5                                      ldr r2, [sp, #0x14]
003477c4  00 00 52 e3                                      cmp r2, #0
003477c8  07 00 00 0a                                      beq #0x3477ec
003477cc  0b 00 a0 e1                                      mov r0, fp
003477d0  5c ee ff eb                                      bl #0x343148
003477d4  b8 70 c0 e1                                      strh r7, [r0, #8]
003477d8  78 30 9d e5                                      ldr r3, [sp, #0x78]
003477dc  00 b0 80 e5                                      str fp, [r0]
003477e0  04 30 80 e5                                      str r3, [r0, #4]
003477e4  00 00 83 e5                                      str r0, [r3]
003477e8  78 00 8d e5                                      str r0, [sp, #0x78]
003477ec  05 00 a0 e1                                      mov r0, r5
003477f0  00 30 95 e5                                      ldr r3, [r5]
003477f4  0f e0 a0 e1                                      mov lr, pc
003477f8  04 f0 93 e5                                      ldr pc, [r3, #4]
003477fc  55 ff ff ea                                      b #0x347558
00347800  04 10 a0 e1                                      mov r1, r4
00347804  44 20 9d e5                                      ldr r2, [sp, #0x44]
00347808  0c 00 a0 e1                                      mov r0, ip
0034780c  00 c0 9c e5                                      ldr ip, [ip]
00347810  0f e0 a0 e1                                      mov lr, pc
00347814  14 f0 9c e5                                      ldr pc, [ip, #0x14]
00347818  00 60 a0 e1                                      mov r6, r0
0034781c  dc d7 12 eb                                      bl #0x7fd794
00347820  63 d7 12 eb                                      bl #0x7fd5b4
00347824  00 00 50 e3                                      cmp r0, #0
00347828  51 00 00 1a                                      bne #0x347974
0034782c  00 30 95 e5                                      ldr r3, [r5]
00347830  05 00 a0 e1                                      mov r0, r5
00347834  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00347838  0f e0 a0 e1                                      mov lr, pc
0034783c  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00347840  40 20 9d e5                                      ldr r2, [sp, #0x40]
00347844  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00347848  02 30 9c e7                                      ldr r3, [ip, r2]
0034784c  44 20 9d e5                                      ldr r2, [sp, #0x44]
00347850  00 30 93 e5                                      ldr r3, [r3]
00347854  10 21 85 e5                                      str r2, [r5, #0x110]
00347858  00 20 a0 e3                                      mov r2, #0
0034785c  03 00 56 e1                                      cmp r6, r3
00347860  14 21 85 e5                                      str r2, [r5, #0x114]
00347864  20 00 00 0a                                      beq #0x3478ec
00347868  20 00 9d e5                                      ldr r0, [sp, #0x20]
0034786c  24 10 9d e5                                      ldr r1, [sp, #0x24]
00347870  23 f9 ff eb                                      bl #0x345d04
00347874  04 30 90 e5                                      ldr r3, [r0, #4]
00347878  00 00 53 e3                                      cmp r3, #0
0034787c  1d 01 00 0a                                      beq #0x347cf8
00347880  00 10 a0 e1                                      mov r1, r0
00347884  77 c0 bf e6                                      sxth ip, r7
00347888  00 00 00 ea                                      b #0x347890
0034788c  02 30 a0 e1                                      mov r3, r2
00347890  f0 21 d3 e1                                      ldrsh r2, [r3, #0x10]
00347894  0c 00 52 e1                                      cmp r2, ip
00347898  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
0034789c  08 20 93 a5                                      ldrge r2, [r3, #8]
003478a0  01 30 a0 b1                                      movlt r3, r1
003478a4  03 10 a0 e1                                      mov r1, r3
003478a8  00 00 52 e3                                      cmp r2, #0
003478ac  f6 ff ff 1a                                      bne #0x34788c
003478b0  03 00 50 e1                                      cmp r0, r3
003478b4  0c 00 00 0a                                      beq #0x3478ec
003478b8  f0 21 d3 e1                                      ldrsh r2, [r3, #0x10]
003478bc  0c 00 52 e1                                      cmp r2, ip
003478c0  0c 01 00 ca                                      bgt #0x347cf8
003478c4  03 00 50 e1                                      cmp r0, r3
003478c8  07 00 00 0a                                      beq #0x3478ec
003478cc  0b 00 a0 e1                                      mov r0, fp
003478d0  1c ee ff eb                                      bl #0x343148
003478d4  b8 70 c0 e1                                      strh r7, [r0, #8]
003478d8  78 30 9d e5                                      ldr r3, [sp, #0x78]
003478dc  00 b0 80 e5                                      str fp, [r0]
003478e0  04 30 80 e5                                      str r3, [r0, #4]
003478e4  00 00 83 e5                                      str r0, [r3]
003478e8  78 00 8d e5                                      str r0, [sp, #0x78]
003478ec  28 00 9d e5                                      ldr r0, [sp, #0x28]
003478f0  24 10 9d e5                                      ldr r1, [sp, #0x24]
003478f4  02 f9 ff eb                                      bl #0x345d04
003478f8  04 30 90 e5                                      ldr r3, [r0, #4]
003478fc  00 00 53 e3                                      cmp r3, #0
00347900  aa 00 00 0a                                      beq #0x347bb0
00347904  00 10 a0 e1                                      mov r1, r0
00347908  77 c0 bf e6                                      sxth ip, r7
0034790c  00 00 00 ea                                      b #0x347914
00347910  02 30 a0 e1                                      mov r3, r2
00347914  f0 21 d3 e1                                      ldrsh r2, [r3, #0x10]
00347918  0c 00 52 e1                                      cmp r2, ip
0034791c  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
00347920  08 20 93 a5                                      ldrge r2, [r3, #8]
00347924  01 30 a0 b1                                      movlt r3, r1
00347928  03 10 a0 e1                                      mov r1, r3
0034792c  00 00 52 e3                                      cmp r2, #0
00347930  f6 ff ff 1a                                      bne #0x347910
00347934  03 00 50 e1                                      cmp r0, r3
00347938  06 ff ff 0a                                      beq #0x347558
0034793c  f0 21 d3 e1                                      ldrsh r2, [r3, #0x10]
00347940  0c 00 52 e1                                      cmp r2, ip
00347944  99 00 00 ca                                      bgt #0x347bb0
00347948  03 00 50 e1                                      cmp r0, r3
0034794c  01 ff ff 0a                                      beq #0x347558
00347950  0b 00 a0 e1                                      mov r0, fp
00347954  fb ed ff eb                                      bl #0x343148
00347958  b8 70 c0 e1                                      strh r7, [r0, #8]
0034795c  78 30 9d e5                                      ldr r3, [sp, #0x78]
00347960  00 b0 80 e5                                      str fp, [r0]
00347964  04 30 80 e5                                      str r3, [r0, #4]
00347968  00 00 83 e5                                      str r0, [r3]
0034796c  78 00 8d e5                                      str r0, [sp, #0x78]
00347970  f8 fe ff ea                                      b #0x347558
00347974  10 31 95 e5                                      ldr r3, [r5, #0x110]
00347978  01 00 73 e3                                      cmn r3, #1
0034797c  df 00 00 0a                                      beq #0x347d00
00347980  44 20 9d e5                                      ldr r2, [sp, #0x44]
00347984  03 00 52 e1                                      cmp r2, r3
00347988  a7 ff ff 0a                                      beq #0x34782c
0034798c  00 30 95 e5                                      ldr r3, [r5]
00347990  05 00 a0 e1                                      mov r0, r5
00347994  0f e0 a0 e1                                      mov lr, pc
00347998  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0034799c  00 00 50 e3                                      cmp r0, #0
003479a0  ec fe ff 0a                                      beq #0x347558
003479a4  00 30 95 e5                                      ldr r3, [r5]
003479a8  05 00 a0 e1                                      mov r0, r5
003479ac  0f e0 a0 e1                                      mov lr, pc
003479b0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003479b4  00 00 50 e3                                      cmp r0, #0
003479b8  e6 fe ff 0a                                      beq #0x347558
003479bc  10 10 9d e5                                      ldr r1, [sp, #0x10]
003479c0  18 00 9d e5                                      ldr r0, [sp, #0x18]
003479c4  01 20 a0 e3                                      mov r2, #1
003479c8  00 30 91 e7                                      ldr r3, [r1, r0]
003479cc  00 10 a0 e3                                      mov r1, #0
003479d0  40 00 93 e5                                      ldr r0, [r3, #0x40]
003479d4  a7 9a 00 eb                                      bl #0x36e478
003479d8  60 36 90 e5                                      ldr r3, [r0, #0x660]
003479dc  08 31 93 e5                                      ldr r3, [r3, #0x108]
003479e0  03 00 57 e1                                      cmp r7, r3
003479e4  90 ff ff 1a                                      bne #0x34782c
003479e8  da fe ff ea                                      b #0x347558
003479ec  04 00 a0 e1                                      mov r0, r4
003479f0  08 10 a0 e3                                      mov r1, #8
003479f4  da 1a 13 eb                                      bl #0x80e564
003479f8  00 80 a0 e1                                      mov r8, r0
003479fc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00347a00  08 a0 a0 e1                                      mov sl, r8
00347a04  b4 c0 90 e5                                      ldr ip, [r0, #0xb4]
00347a08  b0 50 80 e2                                      add r5, r0, #0xb0
00347a0c  00 00 5c e3                                      cmp ip, #0
00347a10  64 00 00 0a                                      beq #0x347ba8
00347a14  44 00 9d e5                                      ldr r0, [sp, #0x44]
00347a18  05 10 a0 e1                                      mov r1, r5
00347a1c  0c 30 a0 e1                                      mov r3, ip
00347a20  00 00 00 ea                                      b #0x347a28
00347a24  02 30 a0 e1                                      mov r3, r2
00347a28  10 20 93 e5                                      ldr r2, [r3, #0x10]
00347a2c  00 00 52 e1                                      cmp r2, r0
00347a30  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
00347a34  08 20 93 a5                                      ldrge r2, [r3, #8]
00347a38  01 30 a0 b1                                      movlt r3, r1
00347a3c  03 10 a0 e1                                      mov r1, r3
00347a40  00 00 52 e3                                      cmp r2, #0
00347a44  f6 ff ff 1a                                      bne #0x347a24
00347a48  03 00 55 e1                                      cmp r5, r3
00347a4c  bf 00 00 0a                                      beq #0x347d50
00347a50  10 20 93 e5                                      ldr r2, [r3, #0x10]
00347a54  00 00 52 e1                                      cmp r2, r0
00347a58  52 00 00 ca                                      bgt #0x347ba8
00347a5c  03 00 55 e1                                      cmp r5, r3
00347a60  ba 00 00 0a                                      beq #0x347d50
00347a64  00 00 5c e3                                      cmp ip, #0
00347a68  b5 00 00 0a                                      beq #0x347d44
00347a6c  44 e0 9d e5                                      ldr lr, [sp, #0x44]
00347a70  05 20 a0 e1                                      mov r2, r5
00347a74  00 00 00 ea                                      b #0x347a7c
00347a78  03 c0 a0 e1                                      mov ip, r3
00347a7c  10 30 9c e5                                      ldr r3, [ip, #0x10]
00347a80  0e 00 53 e1                                      cmp r3, lr
00347a84  0c 30 9c b5                                      ldrlt r3, [ip, #0xc]
00347a88  08 30 9c a5                                      ldrge r3, [ip, #8]
00347a8c  02 c0 a0 b1                                      movlt ip, r2
00347a90  0c 20 a0 e1                                      mov r2, ip
00347a94  00 00 53 e3                                      cmp r3, #0
00347a98  f6 ff ff 1a                                      bne #0x347a78
00347a9c  0c 00 55 e1                                      cmp r5, ip
00347aa0  03 00 00 0a                                      beq #0x347ab4
00347aa4  10 20 9c e5                                      ldr r2, [ip, #0x10]
00347aa8  0c 30 a0 e1                                      mov r3, ip
00347aac  0e 00 52 e1                                      cmp r2, lr
00347ab0  09 00 00 da                                      ble #0x347adc
00347ab4  5c 30 8d e2                                      add r3, sp, #0x5c
00347ab8  84 c0 8d e5                                      str ip, [sp, #0x84]
00347abc  88 00 8d e2                                      add r0, sp, #0x88
00347ac0  00 c0 a0 e3                                      mov ip, #0
00347ac4  05 10 a0 e1                                      mov r1, r5
00347ac8  84 20 8d e2                                      add r2, sp, #0x84
00347acc  5c e0 8d e5                                      str lr, [sp, #0x5c]
00347ad0  b0 c6 cd e1                                      strh ip, [sp, #0x60]
00347ad4  10 ef ff eb                                      bl #0x34371c
00347ad8  88 30 9d e5                                      ldr r3, [sp, #0x88]
00347adc  f4 31 d3 e1                                      ldrsh r3, [r3, #0x14]
00347ae0  78 90 bf e6                                      sxth sb, r8
00347ae4  09 00 53 e1                                      cmp r3, sb
00347ae8  70 00 00 ba                                      blt #0x347cb0
00347aec  0c e0 9d e5                                      ldr lr, [sp, #0xc]
00347af0  b4 c0 9e e5                                      ldr ip, [lr, #0xb4]
00347af4  00 00 5c e3                                      cmp ip, #0
00347af8  8e 00 00 0a                                      beq #0x347d38
00347afc  44 e0 9d e5                                      ldr lr, [sp, #0x44]
00347b00  05 20 a0 e1                                      mov r2, r5
00347b04  00 00 00 ea                                      b #0x347b0c
00347b08  03 c0 a0 e1                                      mov ip, r3
00347b0c  10 30 9c e5                                      ldr r3, [ip, #0x10]
00347b10  0e 00 53 e1                                      cmp r3, lr
00347b14  0c 30 9c b5                                      ldrlt r3, [ip, #0xc]
00347b18  08 30 9c a5                                      ldrge r3, [ip, #8]
00347b1c  02 c0 a0 b1                                      movlt ip, r2
00347b20  0c 20 a0 e1                                      mov r2, ip
00347b24  00 00 53 e3                                      cmp r3, #0
00347b28  f6 ff ff 1a                                      bne #0x347b08
00347b2c  0c 00 55 e1                                      cmp r5, ip
00347b30  03 00 00 0a                                      beq #0x347b44
00347b34  10 20 9c e5                                      ldr r2, [ip, #0x10]
00347b38  0c 30 a0 e1                                      mov r3, ip
00347b3c  0e 00 52 e1                                      cmp r2, lr
00347b40  09 00 00 da                                      ble #0x347b6c
00347b44  54 30 8d e2                                      add r3, sp, #0x54
00347b48  7c c0 8d e5                                      str ip, [sp, #0x7c]
00347b4c  05 10 a0 e1                                      mov r1, r5
00347b50  00 c0 a0 e3                                      mov ip, #0
00347b54  80 00 8d e2                                      add r0, sp, #0x80
00347b58  7c 20 8d e2                                      add r2, sp, #0x7c
00347b5c  54 e0 8d e5                                      str lr, [sp, #0x54]
00347b60  b8 c5 cd e1                                      strh ip, [sp, #0x58]
00347b64  ec ee ff eb                                      bl #0x34371c
00347b68  80 30 9d e5                                      ldr r3, [sp, #0x80]
00347b6c  f4 31 d3 e1                                      ldrsh r3, [r3, #0x14]
00347b70  09 00 53 e1                                      cmp r3, sb
00347b74  01 e0 a0 13                                      movne lr, #1
00347b78  1c e0 8d 15                                      strne lr, [sp, #0x1c]
00347b7c  16 fe ff 1a                                      bne #0x3473dc
00347b80  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00347b84  e0 00 81 e2                                      add r0, r1, #0xe0
00347b88  44 10 8d e2                                      add r1, sp, #0x44
00347b8c  bf ef ff eb                                      bl #0x343a90
00347b90  b0 30 d0 e1                                      ldrh r3, [r0]
00347b94  01 20 a0 e3                                      mov r2, #1
00347b98  1c 20 8d e5                                      str r2, [sp, #0x1c]
00347b9c  02 30 83 e0                                      add r3, r3, r2
00347ba0  b0 30 c0 e1                                      strh r3, [r0]
00347ba4  0c fe ff ea                                      b #0x3473dc
00347ba8  05 30 a0 e1                                      mov r3, r5
00347bac  aa ff ff ea                                      b #0x347a5c
00347bb0  00 30 a0 e1                                      mov r3, r0
00347bb4  63 ff ff ea                                      b #0x347948
00347bb8  04 10 90 e5                                      ldr r1, [r0, #4]
00347bbc  42 f8 ff eb                                      bl #0x345ccc
00347bc0  00 30 a0 e3                                      mov r3, #0
00347bc4  10 30 85 e5                                      str r3, [r5, #0x10]
00347bc8  28 00 85 e9                                      stmib r5, {r3, r5}
00347bcc  0c 50 85 e5                                      str r5, [r5, #0xc]
00347bd0  6c fe ff ea                                      b #0x347588
00347bd4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00347bd8  44 b0 8d e2                                      add fp, sp, #0x44
00347bdc  0b 10 a0 e1                                      mov r1, fp
00347be0  b0 00 8c e2                                      add r0, ip, #0xb0
00347be4  a9 ef ff eb                                      bl #0x343a90
00347be8  f0 30 d0 e1                                      ldrsh r3, [r0]
00347bec  7a a0 bf e6                                      sxth sl, sl
00347bf0  0a 00 53 e1                                      cmp r3, sl
00347bf4  00 a0 a0 13                                      movne sl, #0
00347bf8  01 a0 a0 03                                      moveq sl, #1
00347bfc  14 a0 8d e5                                      str sl, [sp, #0x14]
00347c00  03 fe ff ea                                      b #0x347414
00347c04  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00347c08  c8 50 81 e2                                      add r5, r1, #0xc8
00347c0c  05 00 a0 e1                                      mov r0, r5
00347c10  0b 10 a0 e1                                      mov r1, fp
00347c14  9d ef ff eb                                      bl #0x343a90
00347c18  f0 30 d0 e1                                      ldrsh r3, [r0]
00347c1c  00 00 53 e3                                      cmp r3, #0
00347c20  74 fe ff ba                                      blt #0x3475f8
00347c24  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00347c28  0b 10 a0 e1                                      mov r1, fp
00347c2c  e0 00 82 e2                                      add r0, r2, #0xe0
00347c30  96 ef ff eb                                      bl #0x343a90
00347c34  0b 10 a0 e1                                      mov r1, fp
00347c38  b0 70 d0 e1                                      ldrh r7, [r0]
00347c3c  05 00 a0 e1                                      mov r0, r5
00347c40  92 ef ff eb                                      bl #0x343a90
00347c44  b0 30 d0 e1                                      ldrh r3, [r0]
00347c48  03 00 57 e1                                      cmp r7, r3
00347c4c  0c c0 9d 05                                      ldreq ip, [sp, #0xc]
00347c50  01 30 a0 03                                      moveq r3, #1
00347c54  60 31 cc 05                                      strbeq r3, [ip, #0x160]
00347c58  66 fe ff ea                                      b #0x3475f8
00347c5c  0c e0 9d e5                                      ldr lr, [sp, #0xc]
00347c60  08 10 a0 e3                                      mov r1, #8
00347c64  04 00 a0 e1                                      mov r0, r4
00347c68  c8 50 8e e2                                      add r5, lr, #0xc8
00347c6c  3c 1a 13 eb                                      bl #0x80e564
00347c70  0b 10 a0 e1                                      mov r1, fp
00347c74  00 70 a0 e1                                      mov r7, r0
00347c78  05 00 a0 e1                                      mov r0, r5
00347c7c  83 ef ff eb                                      bl #0x343a90
00347c80  05 00 a0 e1                                      mov r0, r5
00347c84  0b 10 a0 e1                                      mov r1, fp
00347c88  80 ef ff eb                                      bl #0x343a90
00347c8c  b0 70 c0 e1                                      strh r7, [r0]
00347c90  55 fe ff ea                                      b #0x3475ec
00347c94  04 10 90 e5                                      ldr r1, [r0, #4]
00347c98  0b f8 ff eb                                      bl #0x345ccc
00347c9c  00 30 a0 e3                                      mov r3, #0
00347ca0  10 30 85 e5                                      str r3, [r5, #0x10]
00347ca4  28 00 85 e9                                      stmib r5, {r3, r5}
00347ca8  0c 50 85 e5                                      str r5, [r5, #0xc]
00347cac  3c fe ff ea                                      b #0x3475a4
00347cb0  44 b0 8d e2                                      add fp, sp, #0x44
00347cb4  0b 10 a0 e1                                      mov r1, fp
00347cb8  05 00 a0 e1                                      mov r0, r5
00347cbc  73 ef ff eb                                      bl #0x343a90
00347cc0  b0 80 c0 e1                                      strh r8, [r0]
00347cc4  0c e0 9d e5                                      ldr lr, [sp, #0xc]
00347cc8  0b 10 a0 e1                                      mov r1, fp
00347ccc  e0 00 8e e2                                      add r0, lr, #0xe0
00347cd0  6e ef ff eb                                      bl #0x343a90
00347cd4  00 10 a0 e3                                      mov r1, #0
00347cd8  b0 10 c0 e1                                      strh r1, [r0]
00347cdc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00347ce0  0b 10 a0 e1                                      mov r1, fp
00347ce4  c8 00 82 e2                                      add r0, r2, #0xc8
00347ce8  68 ef ff eb                                      bl #0x343a90
00347cec  00 30 e0 e3                                      mvn r3, #0
00347cf0  b0 30 c0 e1                                      strh r3, [r0]
00347cf4  7c ff ff ea                                      b #0x347aec
00347cf8  00 30 a0 e1                                      mov r3, r0
00347cfc  f0 fe ff ea                                      b #0x3478c4
00347d00  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00347d04  05 10 a0 e1                                      mov r1, r5
00347d08  ce e2 ff eb                                      bl #0x340848
00347d0c  00 00 50 e3                                      cmp r0, #0
00347d10  c5 fe ff 0a                                      beq #0x34782c
00347d14  10 31 95 e5                                      ldr r3, [r5, #0x110]
00347d18  18 ff ff ea                                      b #0x347980
00347d1c  0c e0 9d e5                                      ldr lr, [sp, #0xc]
00347d20  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00347d24  5f ef 8e e2                                      add lr, lr, #0x17c
00347d28  65 0f 80 e2                                      add r0, r0, #0x194
00347d2c  20 e0 8d e5                                      str lr, [sp, #0x20]
00347d30  28 00 8d e5                                      str r0, [sp, #0x28]
00347d34  0c fe ff ea                                      b #0x34756c
00347d38  44 e0 9d e5                                      ldr lr, [sp, #0x44]
00347d3c  05 c0 a0 e1                                      mov ip, r5
00347d40  79 ff ff ea                                      b #0x347b2c
00347d44  44 e0 9d e5                                      ldr lr, [sp, #0x44]
00347d48  05 c0 a0 e1                                      mov ip, r5
00347d4c  52 ff ff ea                                      b #0x347a9c
00347d50  44 10 8d e2                                      add r1, sp, #0x44
00347d54  05 00 a0 e1                                      mov r0, r5
00347d58  4c ef ff eb                                      bl #0x343a90
00347d5c  00 10 e0 e3                                      mvn r1, #0
00347d60  b0 10 c0 e1                                      strh r1, [r0]
00347d64  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00347d68  b4 c0 92 e5                                      ldr ip, [r2, #0xb4]
00347d6c  3c ff ff ea                                      b #0x347a64
; mapping-symbol data/literal pool
00347d70  24 d7 64 00 f4 37 00 00 5c 2e 00 00 a0 6f 57 00  .byte 0x24, 0xd7, 0x64, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x5c, 0x2e, 0x00, 0x00, 0xa0, 0x6f, 0x57, 0x00
00347d80  c0 39 00 00 c0 19 00 00 1c 71 57 00 38 8e 57 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x1c, 0x71, 0x57, 0x00, 0x38, 0x8e, 0x57, 0x00

; FUNCTION 0x00347d90, declared_size=92, range_size=92, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager15sReadPacketDataEiiR12NetBitStream
; demangled: ObjectManager::sReadPacketData(int, int, NetBitStream&)
; decoder-mode: arm
00347d90  70 40 2d e9                                      push {r4, r5, r6, lr}
00347d94  00 60 a0 e1                                      mov r6, r0
00347d98  02 00 a0 e1                                      mov r0, r2
00347d9c  02 40 a0 e1                                      mov r4, r2
00347da0  01 50 a0 e1                                      mov r5, r1
00347da4  bb 19 13 eb                                      bl #0x80e498
00347da8  34 30 9f e5                                      ldr r3, [pc, #0x34]
00347dac  00 00 50 e3                                      cmp r0, #0
00347db0  03 30 8f e0                                      add r3, pc, r3
00347db4  09 00 00 0a                                      beq #0x347de0
00347db8  28 20 9f e5                                      ldr r2, [pc, #0x28]
00347dbc  02 30 93 e7                                      ldr r3, [r3, r2]
00347dc0  38 00 93 e5                                      ldr r0, [r3, #0x38]
00347dc4  00 00 50 e3                                      cmp r0, #0
00347dc8  04 00 00 0a                                      beq #0x347de0
00347dcc  06 10 a0 e1                                      mov r1, r6
00347dd0  05 20 a0 e1                                      mov r2, r5
00347dd4  04 30 a0 e1                                      mov r3, r4
00347dd8  70 40 bd e8                                      pop {r4, r5, r6, lr}
00347ddc  5e fd ff ea                                      b #0x34735c
00347de0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00347de4  e0 cc 64 00 f4 37 00 00                          .byte 0xe0, 0xcc, 0x64, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00347dec, declared_size=232, range_size=232, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager16IsOnlineDeferredEP10ObjectBase
; demangled: ObjectManager::IsOnlineDeferred(ObjectBase*)
; decoder-mode: arm
00347dec  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00347df0  14 d0 4d e2                                      sub sp, sp, #0x14
00347df4  01 50 a0 e1                                      mov r5, r1
00347df8  00 70 a0 e1                                      mov r7, r0
00347dfc  62 e4 12 eb                                      bl #0x800f8c
00347e00  00 30 90 e5                                      ldr r3, [r0]
00347e04  00 10 a0 e1                                      mov r1, r0
00347e08  04 00 8d e2                                      add r0, sp, #4
00347e0c  0f e0 a0 e1                                      mov lr, pc
00347e10  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00347e14  04 60 9d e5                                      ldr r6, [sp, #4]
00347e18  08 30 9d e5                                      ldr r3, [sp, #8]
00347e1c  06 00 a0 e1                                      mov r0, r6
00347e20  03 00 56 e1                                      cmp r6, r3
00347e24  19 00 00 0a                                      beq #0x347e90
00347e28  42 7f 87 e2                                      add r7, r7, #0x108
00347e2c  06 10 a0 e1                                      mov r1, r6
00347e30  07 00 a0 e1                                      mov r0, r7
00347e34  1c f5 ff eb                                      bl #0x3452ac
00347e38  06 10 a0 e1                                      mov r1, r6
00347e3c  00 40 90 e5                                      ldr r4, [r0]
00347e40  07 00 a0 e1                                      mov r0, r7
00347e44  18 f5 ff eb                                      bl #0x3452ac
00347e48  00 00 54 e1                                      cmp r4, r0
00347e4c  05 00 00 0a                                      beq #0x347e68
00347e50  08 30 94 e5                                      ldr r3, [r4, #8]
00347e54  03 00 55 e1                                      cmp r5, r3
00347e58  02 00 00 0a                                      beq #0x347e68
00347e5c  00 40 94 e5                                      ldr r4, [r4]
00347e60  04 00 50 e1                                      cmp r0, r4
00347e64  f9 ff ff 1a                                      bne #0x347e50
00347e68  07 00 a0 e1                                      mov r0, r7
00347e6c  06 10 a0 e1                                      mov r1, r6
00347e70  0d f5 ff eb                                      bl #0x3452ac
00347e74  00 00 54 e1                                      cmp r4, r0
00347e78  10 00 00 1a                                      bne #0x347ec0
00347e7c  08 30 9d e5                                      ldr r3, [sp, #8]
00347e80  04 60 86 e2                                      add r6, r6, #4
00347e84  03 00 56 e1                                      cmp r6, r3
00347e88  e7 ff ff 1a                                      bne #0x347e2c
00347e8c  04 00 9d e5                                      ldr r0, [sp, #4]
00347e90  00 40 a0 e3                                      mov r4, #0
00347e94  00 00 50 e3                                      cmp r0, #0
00347e98  05 00 00 0a                                      beq #0x347eb4
00347e9c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00347ea0  01 10 60 e0                                      rsb r1, r0, r1
00347ea4  03 10 c1 e3                                      bic r1, r1, #3
00347ea8  80 00 51 e3                                      cmp r1, #0x80
00347eac  06 00 00 8a                                      bhi #0x347ecc
00347eb0  12 04 0f eb                                      bl #0x708f00
00347eb4  04 00 a0 e1                                      mov r0, r4
00347eb8  14 d0 8d e2                                      add sp, sp, #0x14
00347ebc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00347ec0  01 40 a0 e3                                      mov r4, #1
00347ec4  04 00 9d e5                                      ldr r0, [sp, #4]
00347ec8  f1 ff ff ea                                      b #0x347e94
00347ecc  5b 21 ff eb                                      bl #0x310440
00347ed0  f7 ff ff ea                                      b #0x347eb4

; FUNCTION 0x00347fd0, declared_size=1652, range_size=1652, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager15ForceFullUpdateEv
; demangled: ObjectManager::ForceFullUpdate()
; decoder-mode: arm
00347fd0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00347fd4  a4 d0 4d e2                                      sub sp, sp, #0xa4
00347fd8  00 50 a0 e1                                      mov r5, r0
00347fdc  ec d5 12 eb                                      bl #0x7fd794
00347fe0  05 30 d0 e5                                      ldrb r3, [r0, #5]
00347fe4  50 66 9f e5                                      ldr r6, [pc, #0x650]
00347fe8  00 00 53 e3                                      cmp r3, #0
00347fec  06 60 8f e0                                      add r6, pc, r6
00347ff0  be 00 00 0a                                      beq #0x3482f0
00347ff4  18 31 95 e5                                      ldr r3, [r5, #0x118]
00347ff8  00 00 53 e3                                      cmp r3, #0
00347ffc  e9 00 00 1a                                      bne #0x3483a8
00348000  a4 63 ff eb                                      bl #0x320e98
00348004  34 30 90 e5                                      ldr r3, [r0, #0x34]
00348008  03 30 43 e2                                      sub r3, r3, #3
0034800c  01 00 53 e3                                      cmp r3, #1
00348010  f2 00 00 9a                                      bls #0x3483e0
00348014  dc e3 12 eb                                      bl #0x800f8c
00348018  00 10 a0 e1                                      mov r1, r0
0034801c  00 30 90 e5                                      ldr r3, [r0]
00348020  20 00 8d e2                                      add r0, sp, #0x20
00348024  0f e0 a0 e1                                      mov lr, pc
00348028  88 f0 93 e5                                      ldr pc, [r3, #0x88]
0034802c  20 40 9d e5                                      ldr r4, [sp, #0x20]
00348030  24 00 9d e5                                      ldr r0, [sp, #0x24]
00348034  00 00 54 e1                                      cmp r4, r0
00348038  a4 00 00 0a                                      beq #0x3482d0
0034803c  fc 35 9f e5                                      ldr r3, [pc, #0x5fc]
00348040  64 c0 8d e2                                      add ip, sp, #0x64
00348044  2c 20 8d e2                                      add r2, sp, #0x2c
00348048  03 b0 96 e7                                      ldr fp, [r6, r3]
0034804c  68 30 8d e2                                      add r3, sp, #0x68
00348050  08 10 8d e8                                      stm sp, {r3, ip}
00348054  70 30 8d e2                                      add r3, sp, #0x70
00348058  6c c0 8d e2                                      add ip, sp, #0x6c
0034805c  08 20 8d e5                                      str r2, [sp, #8]
00348060  0c 30 8d e5                                      str r3, [sp, #0xc]
00348064  10 c0 8d e5                                      str ip, [sp, #0x10]
00348068  34 20 8d e2                                      add r2, sp, #0x34
0034806c  80 30 8d e2                                      add r3, sp, #0x80
00348070  7c c0 8d e2                                      add ip, sp, #0x7c
00348074  04 40 84 e2                                      add r4, r4, #4
00348078  4a 9f 85 e2                                      add sb, r5, #0x128
0034807c  b0 70 85 e2                                      add r7, r5, #0xb0
00348080  e0 80 85 e2                                      add r8, r5, #0xe0
00348084  c8 a0 85 e2                                      add sl, r5, #0xc8
00348088  14 20 8d e5                                      str r2, [sp, #0x14]
0034808c  18 30 8d e5                                      str r3, [sp, #0x18]
00348090  1c c0 8d e5                                      str ip, [sp, #0x1c]
00348094  05 60 a0 e1                                      mov r6, r5
00348098  40 00 9b e5                                      ldr r0, [fp, #0x40]
0034809c  fe 97 00 eb                                      bl #0x36e09c
003480a0  04 20 14 e5                                      ldr r2, [r4, #-4]
003480a4  a0 31 90 e5                                      ldr r3, [r0, #0x1a0]
003480a8  03 00 52 e1                                      cmp r2, r3
003480ac  81 00 00 0a                                      beq #0x3482b8
003480b0  09 00 a0 e1                                      mov r0, sb
003480b4  47 f0 ff eb                                      bl #0x3441d8
003480b8  04 30 14 e5                                      ldr r3, [r4, #-4]
003480bc  08 30 80 e5                                      str r3, [r0, #8]
003480c0  2c 31 96 e5                                      ldr r3, [r6, #0x12c]
003480c4  00 90 80 e5                                      str sb, [r0]
003480c8  04 30 80 e5                                      str r3, [r0, #4]
003480cc  00 00 83 e5                                      str r0, [r3]
003480d0  b4 c0 96 e5                                      ldr ip, [r6, #0xb4]
003480d4  2c 01 86 e5                                      str r0, [r6, #0x12c]
003480d8  00 00 5c e3                                      cmp ip, #0
003480dc  ab 00 00 0a                                      beq #0x348390
003480e0  04 50 14 e5                                      ldr r5, [r4, #-4]
003480e4  07 10 a0 e1                                      mov r1, r7
003480e8  0c 30 a0 e1                                      mov r3, ip
003480ec  00 00 00 ea                                      b #0x3480f4
003480f0  02 30 a0 e1                                      mov r3, r2
003480f4  10 20 93 e5                                      ldr r2, [r3, #0x10]
003480f8  05 00 52 e1                                      cmp r2, r5
003480fc  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
00348100  08 20 93 a5                                      ldrge r2, [r3, #8]
00348104  01 30 a0 b1                                      movlt r3, r1
00348108  03 10 a0 e1                                      mov r1, r3
0034810c  00 00 52 e3                                      cmp r2, #0
00348110  f6 ff ff 1a                                      bne #0x3480f0
00348114  03 00 57 e1                                      cmp r7, r3
00348118  76 00 00 0a                                      beq #0x3482f8
0034811c  10 20 93 e5                                      ldr r2, [r3, #0x10]
00348120  05 00 52 e1                                      cmp r2, r5
00348124  07 30 a0 c1                                      movgt r3, r7
00348128  03 00 57 e1                                      cmp r7, r3
0034812c  71 00 00 0a                                      beq #0x3482f8
00348130  00 00 5c e3                                      cmp ip, #0
00348134  07 20 a0 11                                      movne r2, r7
00348138  01 00 00 1a                                      bne #0x348144
0034813c  2f 01 00 ea                                      b #0x348600
00348140  03 c0 a0 e1                                      mov ip, r3
00348144  10 30 9c e5                                      ldr r3, [ip, #0x10]
00348148  03 00 55 e1                                      cmp r5, r3
0034814c  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
00348150  08 30 9c d5                                      ldrle r3, [ip, #8]
00348154  02 c0 a0 c1                                      movgt ip, r2
00348158  0c 20 a0 e1                                      mov r2, ip
0034815c  00 00 53 e3                                      cmp r3, #0
00348160  f6 ff ff 1a                                      bne #0x348140
00348164  0c 00 57 e1                                      cmp r7, ip
00348168  03 00 00 0a                                      beq #0x34817c
0034816c  10 20 9c e5                                      ldr r2, [ip, #0x10]
00348170  0c 30 a0 e1                                      mov r3, ip
00348174  02 00 55 e1                                      cmp r5, r2
00348178  09 00 00 aa                                      bge #0x3481a4
0034817c  3c 30 8d e2                                      add r3, sp, #0x3c
00348180  74 c0 8d e5                                      str ip, [sp, #0x74]
00348184  78 00 8d e2                                      add r0, sp, #0x78
00348188  00 c0 a0 e3                                      mov ip, #0
0034818c  07 10 a0 e1                                      mov r1, r7
00348190  74 20 8d e2                                      add r2, sp, #0x74
00348194  3c 50 8d e5                                      str r5, [sp, #0x3c]
00348198  b0 c4 cd e1                                      strh ip, [sp, #0x40]
0034819c  5e ed ff eb                                      bl #0x34371c
003481a0  78 30 9d e5                                      ldr r3, [sp, #0x78]
003481a4  b4 21 d3 e1                                      ldrh r2, [r3, #0x14]
003481a8  01 20 82 e2                                      add r2, r2, #1
003481ac  b4 21 c3 e1                                      strh r2, [r3, #0x14]
003481b0  e4 c0 96 e5                                      ldr ip, [r6, #0xe4]
003481b4  00 00 5c e3                                      cmp ip, #0
003481b8  71 00 00 0a                                      beq #0x348384
003481bc  04 50 14 e5                                      ldr r5, [r4, #-4]
003481c0  08 20 a0 e1                                      mov r2, r8
003481c4  00 00 00 ea                                      b #0x3481cc
003481c8  03 c0 a0 e1                                      mov ip, r3
003481cc  10 30 9c e5                                      ldr r3, [ip, #0x10]
003481d0  03 00 55 e1                                      cmp r5, r3
003481d4  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
003481d8  08 30 9c d5                                      ldrle r3, [ip, #8]
003481dc  02 c0 a0 c1                                      movgt ip, r2
003481e0  0c 20 a0 e1                                      mov r2, ip
003481e4  00 00 53 e3                                      cmp r3, #0
003481e8  f6 ff ff 1a                                      bne #0x3481c8
003481ec  0c 00 58 e1                                      cmp r8, ip
003481f0  03 00 00 0a                                      beq #0x348204
003481f4  10 20 9c e5                                      ldr r2, [ip, #0x10]
003481f8  0c 30 a0 e1                                      mov r3, ip
003481fc  05 00 52 e1                                      cmp r2, r5
00348200  09 00 00 da                                      ble #0x34822c
00348204  14 30 9d e5                                      ldr r3, [sp, #0x14]
00348208  6c c0 8d e5                                      str ip, [sp, #0x6c]
0034820c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00348210  00 c0 a0 e3                                      mov ip, #0
00348214  08 10 a0 e1                                      mov r1, r8
00348218  10 20 9d e5                                      ldr r2, [sp, #0x10]
0034821c  34 50 8d e5                                      str r5, [sp, #0x34]
00348220  b8 c3 cd e1                                      strh ip, [sp, #0x38]
00348224  3c ed ff eb                                      bl #0x34371c
00348228  70 30 9d e5                                      ldr r3, [sp, #0x70]
0034822c  00 20 a0 e3                                      mov r2, #0
00348230  b4 21 c3 e1                                      strh r2, [r3, #0x14]
00348234  cc c0 96 e5                                      ldr ip, [r6, #0xcc]
00348238  00 00 5c e3                                      cmp ip, #0
0034823c  56 00 00 0a                                      beq #0x34839c
00348240  04 50 14 e5                                      ldr r5, [r4, #-4]
00348244  0a 20 a0 e1                                      mov r2, sl
00348248  00 00 00 ea                                      b #0x348250
0034824c  03 c0 a0 e1                                      mov ip, r3
00348250  10 30 9c e5                                      ldr r3, [ip, #0x10]
00348254  05 00 53 e1                                      cmp r3, r5
00348258  0c 30 9c b5                                      ldrlt r3, [ip, #0xc]
0034825c  08 30 9c a5                                      ldrge r3, [ip, #8]
00348260  02 c0 a0 b1                                      movlt ip, r2
00348264  0c 20 a0 e1                                      mov r2, ip
00348268  00 00 53 e3                                      cmp r3, #0
0034826c  f6 ff ff 1a                                      bne #0x34824c
00348270  0c 00 5a e1                                      cmp sl, ip
00348274  03 00 00 0a                                      beq #0x348288
00348278  10 20 9c e5                                      ldr r2, [ip, #0x10]
0034827c  0c 30 a0 e1                                      mov r3, ip
00348280  02 00 55 e1                                      cmp r5, r2
00348284  09 00 00 aa                                      bge #0x3482b0
00348288  08 30 9d e5                                      ldr r3, [sp, #8]
0034828c  64 c0 8d e5                                      str ip, [sp, #0x64]
00348290  00 00 9d e5                                      ldr r0, [sp]
00348294  00 c0 a0 e3                                      mov ip, #0
00348298  0a 10 a0 e1                                      mov r1, sl
0034829c  04 20 9d e5                                      ldr r2, [sp, #4]
003482a0  2c 50 8d e5                                      str r5, [sp, #0x2c]
003482a4  b0 c3 cd e1                                      strh ip, [sp, #0x30]
003482a8  1b ed ff eb                                      bl #0x34371c
003482ac  68 30 9d e5                                      ldr r3, [sp, #0x68]
003482b0  00 20 e0 e3                                      mvn r2, #0
003482b4  b4 21 c3 e1                                      strh r2, [r3, #0x14]
003482b8  24 30 9d e5                                      ldr r3, [sp, #0x24]
003482bc  04 20 a0 e1                                      mov r2, r4
003482c0  04 40 84 e2                                      add r4, r4, #4
003482c4  03 00 52 e1                                      cmp r2, r3
003482c8  72 ff ff 1a                                      bne #0x348098
003482cc  20 00 9d e5                                      ldr r0, [sp, #0x20]
003482d0  00 00 50 e3                                      cmp r0, #0
003482d4  05 00 00 0a                                      beq #0x3482f0
003482d8  28 10 9d e5                                      ldr r1, [sp, #0x28]
003482dc  01 10 60 e0                                      rsb r1, r0, r1
003482e0  03 10 c1 e3                                      bic r1, r1, #3
003482e4  80 00 51 e3                                      cmp r1, #0x80
003482e8  c6 00 00 8a                                      bhi #0x348608
003482ec  03 03 0f eb                                      bl #0x708f00
003482f0  a4 d0 8d e2                                      add sp, sp, #0xa4
003482f4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003482f8  00 00 5c e3                                      cmp ip, #0
003482fc  07 c0 a0 01                                      moveq ip, r7
00348300  0a 00 00 0a                                      beq #0x348330
00348304  07 20 a0 e1                                      mov r2, r7
00348308  00 00 00 ea                                      b #0x348310
0034830c  03 c0 a0 e1                                      mov ip, r3
00348310  10 30 9c e5                                      ldr r3, [ip, #0x10]
00348314  03 00 55 e1                                      cmp r5, r3
00348318  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
0034831c  08 30 9c d5                                      ldrle r3, [ip, #8]
00348320  02 c0 a0 c1                                      movgt ip, r2
00348324  0c 20 a0 e1                                      mov r2, ip
00348328  00 00 53 e3                                      cmp r3, #0
0034832c  f6 ff ff 1a                                      bne #0x34830c
00348330  0c 00 57 e1                                      cmp r7, ip
00348334  03 00 00 0a                                      beq #0x348348
00348338  10 20 9c e5                                      ldr r2, [ip, #0x10]
0034833c  0c 30 a0 e1                                      mov r3, ip
00348340  02 00 55 e1                                      cmp r5, r2
00348344  09 00 00 aa                                      bge #0x348370
00348348  44 30 8d e2                                      add r3, sp, #0x44
0034834c  7c c0 8d e5                                      str ip, [sp, #0x7c]
00348350  18 00 9d e5                                      ldr r0, [sp, #0x18]
00348354  00 c0 a0 e3                                      mov ip, #0
00348358  07 10 a0 e1                                      mov r1, r7
0034835c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00348360  44 50 8d e5                                      str r5, [sp, #0x44]
00348364  b8 c4 cd e1                                      strh ip, [sp, #0x48]
00348368  eb ec ff eb                                      bl #0x34371c
0034836c  80 30 9d e5                                      ldr r3, [sp, #0x80]
00348370  00 20 a0 e3                                      mov r2, #0
00348374  b4 21 c3 e1                                      strh r2, [r3, #0x14]
00348378  e4 c0 96 e5                                      ldr ip, [r6, #0xe4]
0034837c  00 00 5c e3                                      cmp ip, #0
00348380  8d ff ff 1a                                      bne #0x3481bc
00348384  04 50 14 e5                                      ldr r5, [r4, #-4]
00348388  08 c0 a0 e1                                      mov ip, r8
0034838c  96 ff ff ea                                      b #0x3481ec
00348390  04 50 14 e5                                      ldr r5, [r4, #-4]
00348394  07 30 a0 e1                                      mov r3, r7
00348398  62 ff ff ea                                      b #0x348128
0034839c  04 50 14 e5                                      ldr r5, [r4, #-4]
003483a0  0a c0 a0 e1                                      mov ip, sl
003483a4  b1 ff ff ea                                      b #0x348270
003483a8  42 4f 85 e2                                      add r4, r5, #0x108
003483ac  04 00 a0 e1                                      mov r0, r4
003483b0  0c 11 95 e5                                      ldr r1, [r5, #0x10c]
003483b4  46 f5 ff eb                                      bl #0x3458d4
003483b8  00 30 a0 e3                                      mov r3, #0
003483bc  18 31 85 e5                                      str r3, [r5, #0x118]
003483c0  0c 31 85 e5                                      str r3, [r5, #0x10c]
003483c4  14 41 85 e5                                      str r4, [r5, #0x114]
003483c8  10 41 85 e5                                      str r4, [r5, #0x110]
003483cc  b1 62 ff eb                                      bl #0x320e98
003483d0  34 30 90 e5                                      ldr r3, [r0, #0x34]
003483d4  03 30 43 e2                                      sub r3, r3, #3
003483d8  01 00 53 e3                                      cmp r3, #1
003483dc  0c ff ff 8a                                      bhi #0x348014
003483e0  4a 4f 85 e2                                      add r4, r5, #0x128
003483e4  04 00 a0 e1                                      mov r0, r4
003483e8  7a ef ff eb                                      bl #0x3441d8
003483ec  01 30 a0 e3                                      mov r3, #1
003483f0  08 30 80 e5                                      str r3, [r0, #8]
003483f4  2c 31 95 e5                                      ldr r3, [r5, #0x12c]
003483f8  00 40 80 e5                                      str r4, [r0]
003483fc  b0 10 85 e2                                      add r1, r5, #0xb0
00348400  04 30 80 e5                                      str r3, [r0, #4]
00348404  00 00 83 e5                                      str r0, [r3]
00348408  b4 c0 95 e5                                      ldr ip, [r5, #0xb4]
0034840c  2c 01 85 e5                                      str r0, [r5, #0x12c]
00348410  00 00 5c e3                                      cmp ip, #0
00348414  77 00 00 0a                                      beq #0x3485f8
00348418  01 40 a0 e1                                      mov r4, r1
0034841c  0c 30 a0 e1                                      mov r3, ip
00348420  00 00 00 ea                                      b #0x348428
00348424  02 30 a0 e1                                      mov r3, r2
00348428  10 20 93 e5                                      ldr r2, [r3, #0x10]
0034842c  00 00 52 e3                                      cmp r2, #0
00348430  0c 20 93 d5                                      ldrle r2, [r3, #0xc]
00348434  08 20 93 c5                                      ldrgt r2, [r3, #8]
00348438  04 30 a0 d1                                      movle r3, r4
0034843c  03 40 a0 e1                                      mov r4, r3
00348440  00 00 52 e3                                      cmp r2, #0
00348444  f6 ff ff 1a                                      bne #0x348424
00348448  03 00 51 e1                                      cmp r1, r3
0034844c  6f 00 00 0a                                      beq #0x348610
00348450  10 20 93 e5                                      ldr r2, [r3, #0x10]
00348454  01 00 52 e3                                      cmp r2, #1
00348458  66 00 00 ca                                      bgt #0x3485f8
0034845c  03 00 51 e1                                      cmp r1, r3
00348460  6a 00 00 0a                                      beq #0x348610
00348464  00 00 5c e3                                      cmp ip, #0
00348468  01 20 a0 11                                      movne r2, r1
0034846c  01 00 00 1a                                      bne #0x348478
00348470  6f 00 00 ea                                      b #0x348634
00348474  03 c0 a0 e1                                      mov ip, r3
00348478  10 30 9c e5                                      ldr r3, [ip, #0x10]
0034847c  00 00 53 e3                                      cmp r3, #0
00348480  0c 30 9c d5                                      ldrle r3, [ip, #0xc]
00348484  08 30 9c c5                                      ldrgt r3, [ip, #8]
00348488  02 c0 a0 d1                                      movle ip, r2
0034848c  0c 20 a0 e1                                      mov r2, ip
00348490  00 00 53 e3                                      cmp r3, #0
00348494  f6 ff ff 1a                                      bne #0x348474
00348498  0c 00 51 e1                                      cmp r1, ip
0034849c  03 00 00 0a                                      beq #0x3484b0
003484a0  10 20 9c e5                                      ldr r2, [ip, #0x10]
003484a4  0c 30 a0 e1                                      mov r3, ip
003484a8  01 00 52 e3                                      cmp r2, #1
003484ac  09 00 00 da                                      ble #0x3484d8
003484b0  5c 30 8d e2                                      add r3, sp, #0x5c
003484b4  01 e0 a0 e3                                      mov lr, #1
003484b8  94 c0 8d e5                                      str ip, [sp, #0x94]
003484bc  98 00 8d e2                                      add r0, sp, #0x98
003484c0  00 c0 a0 e3                                      mov ip, #0
003484c4  94 20 8d e2                                      add r2, sp, #0x94
003484c8  5c e0 8d e5                                      str lr, [sp, #0x5c]
003484cc  b0 c6 cd e1                                      strh ip, [sp, #0x60]
003484d0  91 ec ff eb                                      bl #0x34371c
003484d4  98 30 9d e5                                      ldr r3, [sp, #0x98]
003484d8  b4 21 d3 e1                                      ldrh r2, [r3, #0x14]
003484dc  01 20 82 e2                                      add r2, r2, #1
003484e0  b4 21 c3 e1                                      strh r2, [r3, #0x14]
003484e4  e4 c0 95 e5                                      ldr ip, [r5, #0xe4]
003484e8  e0 10 85 e2                                      add r1, r5, #0xe0
003484ec  00 00 5c e3                                      cmp ip, #0
003484f0  01 c0 a0 01                                      moveq ip, r1
003484f4  0a 00 00 0a                                      beq #0x348524
003484f8  01 20 a0 e1                                      mov r2, r1
003484fc  00 00 00 ea                                      b #0x348504
00348500  03 c0 a0 e1                                      mov ip, r3
00348504  10 30 9c e5                                      ldr r3, [ip, #0x10]
00348508  00 00 53 e3                                      cmp r3, #0
0034850c  0c 30 9c d5                                      ldrle r3, [ip, #0xc]
00348510  08 30 9c c5                                      ldrgt r3, [ip, #8]
00348514  02 c0 a0 d1                                      movle ip, r2
00348518  0c 20 a0 e1                                      mov r2, ip
0034851c  00 00 53 e3                                      cmp r3, #0
00348520  f6 ff ff 1a                                      bne #0x348500
00348524  0c 00 51 e1                                      cmp r1, ip
00348528  03 00 00 0a                                      beq #0x34853c
0034852c  10 20 9c e5                                      ldr r2, [ip, #0x10]
00348530  0c 30 a0 e1                                      mov r3, ip
00348534  01 00 52 e3                                      cmp r2, #1
00348538  09 00 00 da                                      ble #0x348564
0034853c  54 30 8d e2                                      add r3, sp, #0x54
00348540  01 e0 a0 e3                                      mov lr, #1
00348544  8c c0 8d e5                                      str ip, [sp, #0x8c]
00348548  90 00 8d e2                                      add r0, sp, #0x90
0034854c  00 c0 a0 e3                                      mov ip, #0
00348550  8c 20 8d e2                                      add r2, sp, #0x8c
00348554  54 e0 8d e5                                      str lr, [sp, #0x54]
00348558  b8 c5 cd e1                                      strh ip, [sp, #0x58]
0034855c  6e ec ff eb                                      bl #0x34371c
00348560  90 30 9d e5                                      ldr r3, [sp, #0x90]
00348564  00 20 a0 e3                                      mov r2, #0
00348568  b4 21 c3 e1                                      strh r2, [r3, #0x14]
0034856c  cc c0 95 e5                                      ldr ip, [r5, #0xcc]
00348570  c8 10 85 e2                                      add r1, r5, #0xc8
00348574  00 00 5c e3                                      cmp ip, #0
00348578  01 c0 a0 01                                      moveq ip, r1
0034857c  0a 00 00 0a                                      beq #0x3485ac
00348580  01 20 a0 e1                                      mov r2, r1
00348584  00 00 00 ea                                      b #0x34858c
00348588  03 c0 a0 e1                                      mov ip, r3
0034858c  10 30 9c e5                                      ldr r3, [ip, #0x10]
00348590  00 00 53 e3                                      cmp r3, #0
00348594  0c 30 9c d5                                      ldrle r3, [ip, #0xc]
00348598  08 30 9c c5                                      ldrgt r3, [ip, #8]
0034859c  02 c0 a0 d1                                      movle ip, r2
003485a0  0c 20 a0 e1                                      mov r2, ip
003485a4  00 00 53 e3                                      cmp r3, #0
003485a8  f6 ff ff 1a                                      bne #0x348588
003485ac  0c 00 51 e1                                      cmp r1, ip
003485b0  03 00 00 0a                                      beq #0x3485c4
003485b4  10 20 9c e5                                      ldr r2, [ip, #0x10]
003485b8  0c 30 a0 e1                                      mov r3, ip
003485bc  01 00 52 e3                                      cmp r2, #1
003485c0  09 00 00 da                                      ble #0x3485ec
003485c4  4c 30 8d e2                                      add r3, sp, #0x4c
003485c8  01 e0 a0 e3                                      mov lr, #1
003485cc  84 c0 8d e5                                      str ip, [sp, #0x84]
003485d0  88 00 8d e2                                      add r0, sp, #0x88
003485d4  00 c0 a0 e3                                      mov ip, #0
003485d8  84 20 8d e2                                      add r2, sp, #0x84
003485dc  4c e0 8d e5                                      str lr, [sp, #0x4c]
003485e0  b0 c5 cd e1                                      strh ip, [sp, #0x50]
003485e4  4c ec ff eb                                      bl #0x34371c
003485e8  88 30 9d e5                                      ldr r3, [sp, #0x88]
003485ec  00 20 e0 e3                                      mvn r2, #0
003485f0  b4 21 c3 e1                                      strh r2, [r3, #0x14]
003485f4  3d ff ff ea                                      b #0x3482f0
003485f8  01 30 a0 e1                                      mov r3, r1
003485fc  96 ff ff ea                                      b #0x34845c
00348600  07 c0 a0 e1                                      mov ip, r7
00348604  d6 fe ff ea                                      b #0x348164
00348608  8c 1f ff eb                                      bl #0x310440
0034860c  37 ff ff ea                                      b #0x3482f0
00348610  a0 30 8d e2                                      add r3, sp, #0xa0
00348614  01 20 a0 e3                                      mov r2, #1
00348618  04 20 23 e5                                      str r2, [r3, #-4]!
0034861c  01 00 a0 e1                                      mov r0, r1
00348620  03 10 a0 e1                                      mov r1, r3
00348624  19 ed ff eb                                      bl #0x343a90
00348628  00 20 a0 e3                                      mov r2, #0
0034862c  b0 20 c0 e1                                      strh r2, [r0]
00348630  ab ff ff ea                                      b #0x3484e4
00348634  01 c0 a0 e1                                      mov ip, r1
00348638  96 ff ff ea                                      b #0x348498
; mapping-symbol data/literal pool
0034863c  a4 ca 64 00 f4 37 00 00                          .byte 0xa4, 0xca, 0x64, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00348644, declared_size=224, range_size=224, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager17ProcessLostPacketEii
; demangled: ObjectManager::ProcessLostPacket(int, int)
; decoder-mode: arm
00348644  70 40 2d e9                                      push {r4, r5, r6, lr}
00348648  9c 30 90 e5                                      ldr r3, [r0, #0x9c]
0034864c  00 40 a0 e1                                      mov r4, r0
00348650  98 50 80 e2                                      add r5, r0, #0x98
00348654  00 00 53 e3                                      cmp r3, #0
00348658  24 00 00 0a                                      beq #0x3486f0
0034865c  05 60 a0 e1                                      mov r6, r5
00348660  03 00 a0 e1                                      mov r0, r3
00348664  00 00 00 ea                                      b #0x34866c
00348668  0c 00 a0 e1                                      mov r0, ip
0034866c  10 c0 90 e5                                      ldr ip, [r0, #0x10]
00348670  01 00 5c e1                                      cmp ip, r1
00348674  0c c0 90 b5                                      ldrlt ip, [r0, #0xc]
00348678  08 c0 90 a5                                      ldrge ip, [r0, #8]
0034867c  06 00 a0 b1                                      movlt r0, r6
00348680  00 60 a0 e1                                      mov r6, r0
00348684  00 00 5c e3                                      cmp ip, #0
00348688  f6 ff ff 1a                                      bne #0x348668
0034868c  00 00 55 e1                                      cmp r5, r0
00348690  18 00 00 0a                                      beq #0x3486f8
00348694  10 c0 90 e5                                      ldr ip, [r0, #0x10]
00348698  01 00 5c e1                                      cmp ip, r1
0034869c  13 00 00 ca                                      bgt #0x3486f0
003486a0  00 00 55 e1                                      cmp r5, r0
003486a4  13 00 00 0a                                      beq #0x3486f8
003486a8  14 10 b0 e5                                      ldr r1, [r0, #0x14]!
003486ac  00 00 51 e1                                      cmp r1, r0
003486b0  10 00 00 0a                                      beq #0x3486f8
003486b4  08 c0 91 e5                                      ldr ip, [r1, #8]
003486b8  02 00 5c e1                                      cmp ip, r2
003486bc  03 00 00 0a                                      beq #0x3486d0
003486c0  00 10 91 e5                                      ldr r1, [r1]
003486c4  01 00 50 e1                                      cmp r0, r1
003486c8  f9 ff ff 1a                                      bne #0x3486b4
003486cc  00 10 a0 e1                                      mov r1, r0
003486d0  00 00 51 e1                                      cmp r1, r0
003486d4  11 00 00 0a                                      beq #0x348720
003486d8  a8 20 94 e5                                      ldr r2, [r4, #0xa8]
003486dc  00 00 52 e3                                      cmp r2, #0
003486e0  05 00 00 1a                                      bne #0x3486fc
003486e4  04 00 a0 e1                                      mov r0, r4
003486e8  70 40 bd e8                                      pop {r4, r5, r6, lr}
003486ec  37 fe ff ea                                      b #0x347fd0
003486f0  05 00 a0 e1                                      mov r0, r5
003486f4  e9 ff ff ea                                      b #0x3486a0
003486f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003486fc  03 10 a0 e1                                      mov r1, r3
00348700  05 00 a0 e1                                      mov r0, r5
00348704  10 f5 ff eb                                      bl #0x345b4c
00348708  00 30 a0 e3                                      mov r3, #0
0034870c  a4 50 84 e5                                      str r5, [r4, #0xa4]
00348710  a8 30 84 e5                                      str r3, [r4, #0xa8]
00348714  a0 50 84 e5                                      str r5, [r4, #0xa0]
00348718  9c 30 84 e5                                      str r3, [r4, #0x9c]
0034871c  f0 ff ff ea                                      b #0x3486e4
00348720  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00348724, declared_size=52, range_size=52, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager18sProcessLostPacketEii
; demangled: ObjectManager::sProcessLostPacket(int, int)
; decoder-mode: arm
00348724  24 30 9f e5                                      ldr r3, [pc, #0x24]
00348728  24 20 9f e5                                      ldr r2, [pc, #0x24]
0034872c  00 c0 a0 e1                                      mov ip, r0
00348730  03 30 8f e0                                      add r3, pc, r3
00348734  02 00 93 e7                                      ldr r0, [r3, r2]
00348738  01 20 a0 e1                                      mov r2, r1
0034873c  38 00 90 e5                                      ldr r0, [r0, #0x38]
00348740  00 00 50 e3                                      cmp r0, #0
00348744  1e ff 2f 01                                      bxeq lr
00348748  0c 10 a0 e1                                      mov r1, ip
0034874c  bc ff ff ea                                      b #0x348644
; mapping-symbol data/literal pool
00348750  60 c3 64 00 f4 37 00 00                          .byte 0x60, 0xc3, 0x64, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00348988, declared_size=1308, range_size=1308, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager6Draw3DEv
; demangled: ObjectManager::Draw3D()
; decoder-mode: arm
00348988  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034898c  fc 54 9f e5                                      ldr r5, [pc, #0x4fc]
00348990  fc 24 9f e5                                      ldr r2, [pc, #0x4fc]
00348994  41 df 4d e2                                      sub sp, sp, #0x104
00348998  05 50 8f e0                                      add r5, pc, r5
0034899c  02 30 95 e7                                      ldr r3, [r5, r2]
003489a0  1c 40 8d e2                                      add r4, sp, #0x1c
003489a4  00 60 a0 e3                                      mov r6, #0
003489a8  00 30 93 e5                                      ldr r3, [r3]
003489ac  e4 b4 9f e5                                      ldr fp, [pc, #0x4e4]
003489b0  00 70 a0 e1                                      mov r7, r0
003489b4  06 10 a0 e1                                      mov r1, r6
003489b8  10 20 8d e5                                      str r2, [sp, #0x10]
003489bc  04 00 a0 e1                                      mov r0, r4
003489c0  40 20 a0 e3                                      mov r2, #0x40
003489c4  fc 30 8d e5                                      str r3, [sp, #0xfc]
003489c8  a4 16 ff eb                                      bl #0x30e460
003489cc  06 10 a0 e1                                      mov r1, r6
003489d0  40 20 a0 e3                                      mov r2, #0x40
003489d4  04 00 a0 e1                                      mov r0, r4
003489d8  a0 16 ff eb                                      bl #0x30e460
003489dc  0b 20 95 e7                                      ldr r2, [r5, fp]
003489e0  fe 35 a0 e3                                      mov r3, #0x3f800000
003489e4  01 10 a0 e3                                      mov r1, #1
003489e8  10 20 92 e5                                      ldr r2, [r2, #0x10]
003489ec  58 30 8d e5                                      str r3, [sp, #0x58]
003489f0  1c 30 8d e5                                      str r3, [sp, #0x1c]
003489f4  30 30 8d e5                                      str r3, [sp, #0x30]
003489f8  44 30 8d e5                                      str r3, [sp, #0x44]
003489fc  5c 10 cd e5                                      strb r1, [sp, #0x5c]
00348a00  10 30 92 e5                                      ldr r3, [r2, #0x10]
00348a04  04 20 a0 e1                                      mov r2, r4
00348a08  0c 60 87 e2                                      add r6, r7, #0xc
00348a0c  03 00 a0 e1                                      mov r0, r3
00348a10  00 30 93 e5                                      ldr r3, [r3]
00348a14  0f e0 a0 e1                                      mov lr, pc
00348a18  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00348a1c  14 40 97 e5                                      ldr r4, [r7, #0x14]
00348a20  04 00 56 e1                                      cmp r6, r4
00348a24  14 00 00 0a                                      beq #0x348a7c
00348a28  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00348a2c  00 00 53 e3                                      cmp r3, #0
00348a30  06 00 00 0a                                      beq #0x348a50
00348a34  80 20 d3 e5                                      ldrb r2, [r3, #0x80]
00348a38  00 00 52 e3                                      cmp r2, #0
00348a3c  03 00 00 0a                                      beq #0x348a50
00348a40  03 00 a0 e1                                      mov r0, r3
00348a44  00 30 93 e5                                      ldr r3, [r3]
00348a48  0f e0 a0 e1                                      mov lr, pc
00348a4c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00348a50  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00348a54  00 00 52 e3                                      cmp r2, #0
00348a58  01 00 00 1a                                      bne #0x348a64
00348a5c  f6 00 00 ea                                      b #0x348e3c
00348a60  03 20 a0 e1                                      mov r2, r3
00348a64  08 30 92 e5                                      ldr r3, [r2, #8]
00348a68  00 00 53 e3                                      cmp r3, #0
00348a6c  fb ff ff 1a                                      bne #0x348a60
00348a70  02 40 a0 e1                                      mov r4, r2
00348a74  04 00 56 e1                                      cmp r6, r4
00348a78  ea ff ff 1a                                      bne #0x348a28
00348a7c  18 34 9f e5                                      ldr r3, [pc, #0x418]
00348a80  e4 40 8d e2                                      add r4, sp, #0xe4
00348a84  03 60 95 e7                                      ldr r6, [r5, r3]
00348a88  06 00 a0 e1                                      mov r0, r6
00348a8c  7d bb ff eb                                      bl #0x337888
00348a90  08 14 9f e5                                      ldr r1, [pc, #0x408]
00348a94  e0 20 8d e2                                      add r2, sp, #0xe0
00348a98  04 00 a0 e1                                      mov r0, r4
00348a9c  01 10 8f e0                                      add r1, pc, r1
00348aa0  91 2d ff eb                                      bl #0x3140ec
00348aa4  06 00 a0 e1                                      mov r0, r6
00348aa8  04 10 a0 e1                                      mov r1, r4
00348aac  f5 bb ff eb                                      bl #0x337a88
00348ab0  00 60 a0 e1                                      mov r6, r0
00348ab4  f8 00 9d e5                                      ldr r0, [sp, #0xf8]
00348ab8  04 00 50 e1                                      cmp r0, r4
00348abc  06 00 00 0a                                      beq #0x348adc
00348ac0  00 00 50 e3                                      cmp r0, #0
00348ac4  04 00 00 0a                                      beq #0x348adc
00348ac8  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
00348acc  01 10 60 e0                                      rsb r1, r0, r1
00348ad0  80 00 51 e3                                      cmp r1, #0x80
00348ad4  e5 00 00 8a                                      bhi #0x348e70
00348ad8  08 01 0f eb                                      bl #0x708f00
00348adc  00 00 56 e3                                      cmp r6, #0
00348ae0  cd 00 00 0a                                      beq #0x348e1c
00348ae4  0b 30 95 e7                                      ldr r3, [r5, fp]
00348ae8  10 30 93 e5                                      ldr r3, [r3, #0x10]
00348aec  10 60 93 e5                                      ldr r6, [r3, #0x10]
00348af0  ff 3f 0f e3                                      movw r3, #0xffff
00348af4  dc 40 96 e5                                      ldr r4, [r6, #0xdc]
00348af8  be 22 d4 e1                                      ldrh r2, [r4, #0x2e]
00348afc  03 00 52 e1                                      cmp r2, r3
00348b00  dc 00 00 0a                                      beq #0x348e78
00348b04  dc 30 8d e2                                      add r3, sp, #0xdc
00348b08  03 00 a0 e1                                      mov r0, r3
00348b0c  14 30 8d e5                                      str r3, [sp, #0x14]
00348b10  04 10 a0 e1                                      mov r1, r4
00348b14  01 30 a0 e3                                      mov r3, #1
00348b18  71 51 0a eb                                      bl #0x5dd0e4
00348b1c  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
00348b20  00 00 50 e3                                      cmp r0, #0
00348b24  ff 20 a0 03                                      moveq r2, #0xff
00348b28  01 00 00 0a                                      beq #0x348b34
00348b2c  80 f4 09 eb                                      bl #0x5c5d34
00348b30  00 20 a0 e1                                      mov r2, r0
00348b34  00 30 a0 e3                                      mov r3, #0
00348b38  06 00 a0 e1                                      mov r0, r6
00348b3c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00348b40  08 92 09 eb                                      bl #0x5ad368
00348b44  00 20 e0 e3                                      mvn r2, #0
00348b48  00 30 a0 e3                                      mov r3, #0
00348b4c  d9 20 cd e5                                      strb r2, [sp, #0xd9]
00348b50  7f 20 a0 e3                                      mov r2, #0x7f
00348b54  da 30 cd e5                                      strb r3, [sp, #0xda]
00348b58  db 20 cd e5                                      strb r2, [sp, #0xdb]
00348b5c  d8 30 cd e5                                      strb r3, [sp, #0xd8]
00348b60  24 40 b7 e5                                      ldr r4, [r7, #0x24]!
00348b64  60 80 8d e2                                      add r8, sp, #0x60
00348b68  05 90 a0 e1                                      mov sb, r5
00348b6c  13 00 00 ea                                      b #0x348bc0
00348b70  08 20 94 e5                                      ldr r2, [r4, #8]
00348b74  00 30 96 e5                                      ldr r3, [r6]
00348b78  06 00 a0 e1                                      mov r0, r6
00348b7c  3c 11 92 e5                                      ldr r1, [r2, #0x13c]
00348b80  2c a1 92 e5                                      ldr sl, [r2, #0x12c]
00348b84  30 51 92 e5                                      ldr r5, [r2, #0x130]
00348b88  34 e1 92 e5                                      ldr lr, [r2, #0x134]
00348b8c  38 c1 92 e5                                      ldr ip, [r2, #0x138]
00348b90  40 21 92 e5                                      ldr r2, [r2, #0x140]
00348b94  28 30 93 e5                                      ldr r3, [r3, #0x28]
00348b98  70 10 8d e5                                      str r1, [sp, #0x70]
00348b9c  74 20 8d e5                                      str r2, [sp, #0x74]
00348ba0  60 a0 8d e5                                      str sl, [sp, #0x60]
00348ba4  64 50 8d e5                                      str r5, [sp, #0x64]
00348ba8  68 e0 8d e5                                      str lr, [sp, #0x68]
00348bac  6c c0 8d e5                                      str ip, [sp, #0x6c]
00348bb0  08 10 a0 e1                                      mov r1, r8
00348bb4  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
00348bb8  33 ff 2f e1                                      blx r3
00348bbc  00 40 94 e5                                      ldr r4, [r4]
00348bc0  04 00 57 e1                                      cmp r7, r4
00348bc4  e9 ff ff 1a                                      bne #0x348b70
00348bc8  0b 00 99 e7                                      ldr r0, [sb, fp]
00348bcc  70 5a ff eb                                      bl #0x31f594
00348bd0  28 31 90 e5                                      ldr r3, [r0, #0x128]
00348bd4  00 a0 a0 e3                                      mov sl, #0
00348bd8  00 b0 e0 e3                                      mvn fp, #0
00348bdc  08 30 93 e5                                      ldr r3, [r3, #8]
00348be0  cc 70 8d e2                                      add r7, sp, #0xcc
00348be4  09 50 a0 e1                                      mov r5, sb
00348be8  03 00 a0 e1                                      mov r0, r3
00348bec  00 30 93 e5                                      ldr r3, [r3]
00348bf0  0f e0 a0 e1                                      mov lr, pc
00348bf4  44 f1 93 e5                                      ldr pc, [r3, #0x144]
00348bf8  7f c0 a0 e3                                      mov ip, #0x7f
00348bfc  00 80 a0 e1                                      mov r8, r0
00348c00  db c0 cd e5                                      strb ip, [sp, #0xdb]
00348c04  4c 30 88 e2                                      add r3, r8, #0x4c
00348c08  2c c0 88 e2                                      add ip, r8, #0x2c
00348c0c  da a0 cd e5                                      strb sl, [sp, #0xda]
00348c10  d9 a0 cd e5                                      strb sl, [sp, #0xd9]
00348c14  d8 b0 cd e5                                      strb fp, [sp, #0xd8]
00348c18  0c c0 8d e5                                      str ip, [sp, #0xc]
00348c1c  08 30 8d e5                                      str r3, [sp, #8]
00348c20  0c 90 88 e2                                      add sb, r8, #0xc
00348c24  06 00 a0 e1                                      mov r0, r6
00348c28  6c 10 88 e2                                      add r1, r8, #0x6c
00348c2c  00 30 96 e5                                      ldr r3, [r6]
00348c30  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
00348c34  00 40 a0 e3                                      mov r4, #0
00348c38  0f e0 a0 e1                                      mov lr, pc
00348c3c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00348c40  7f c0 a0 e3                                      mov ip, #0x7f
00348c44  07 30 a0 e1                                      mov r3, r7
00348c48  08 10 9d e5                                      ldr r1, [sp, #8]
00348c4c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00348c50  09 00 a0 e1                                      mov r0, sb
00348c54  db c0 cd e5                                      strb ip, [sp, #0xdb]
00348c58  d8 60 8d e2                                      add r6, sp, #0xd8
00348c5c  da b0 cd e5                                      strb fp, [sp, #0xda]
00348c60  d9 a0 cd e5                                      strb sl, [sp, #0xd9]
00348c64  d8 a0 cd e5                                      strb sl, [sp, #0xd8]
00348c68  cc 40 8d e5                                      str r4, [sp, #0xcc]
00348c6c  d0 40 8d e5                                      str r4, [sp, #0xd0]
00348c70  d4 40 8d e5                                      str r4, [sp, #0xd4]
00348c74  57 e2 ff eb                                      bl #0x3415d8
00348c78  3c 20 88 e2                                      add r2, r8, #0x3c
00348c7c  07 00 a0 e1                                      mov r0, r7
00348c80  04 20 8d e5                                      str r2, [sp, #4]
00348c84  c0 70 8d e2                                      add r7, sp, #0xc0
00348c88  06 10 a0 e1                                      mov r1, r6
00348c8c  64 20 a0 e3                                      mov r2, #0x64
00348c90  2f dd ff eb                                      bl #0x340154
00348c94  07 30 a0 e1                                      mov r3, r7
00348c98  04 20 9d e5                                      ldr r2, [sp, #4]
00348c9c  08 10 9d e5                                      ldr r1, [sp, #8]
00348ca0  09 00 a0 e1                                      mov r0, sb
00348ca4  c0 40 8d e5                                      str r4, [sp, #0xc0]
00348ca8  c4 40 8d e5                                      str r4, [sp, #0xc4]
00348cac  c8 40 8d e5                                      str r4, [sp, #0xc8]
00348cb0  48 e2 ff eb                                      bl #0x3415d8
00348cb4  5c 30 88 e2                                      add r3, r8, #0x5c
00348cb8  07 00 a0 e1                                      mov r0, r7
00348cbc  06 10 a0 e1                                      mov r1, r6
00348cc0  b4 70 8d e2                                      add r7, sp, #0xb4
00348cc4  64 20 a0 e3                                      mov r2, #0x64
00348cc8  00 30 8d e5                                      str r3, [sp]
00348ccc  20 dd ff eb                                      bl #0x340154
00348cd0  07 30 a0 e1                                      mov r3, r7
00348cd4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00348cd8  00 10 9d e5                                      ldr r1, [sp]
00348cdc  09 00 a0 e1                                      mov r0, sb
00348ce0  b4 40 8d e5                                      str r4, [sp, #0xb4]
00348ce4  b8 40 8d e5                                      str r4, [sp, #0xb8]
00348ce8  bc 40 8d e5                                      str r4, [sp, #0xbc]
00348cec  39 e2 ff eb                                      bl #0x3415d8
00348cf0  07 00 a0 e1                                      mov r0, r7
00348cf4  06 10 a0 e1                                      mov r1, r6
00348cf8  a8 70 8d e2                                      add r7, sp, #0xa8
00348cfc  64 20 a0 e3                                      mov r2, #0x64
00348d00  13 dd ff eb                                      bl #0x340154
00348d04  07 30 a0 e1                                      mov r3, r7
00348d08  06 00 9d e8                                      ldm sp, {r1, r2}
00348d0c  09 00 a0 e1                                      mov r0, sb
00348d10  1c 80 88 e2                                      add r8, r8, #0x1c
00348d14  a8 40 8d e5                                      str r4, [sp, #0xa8]
00348d18  ac 40 8d e5                                      str r4, [sp, #0xac]
00348d1c  b0 40 8d e5                                      str r4, [sp, #0xb0]
00348d20  2c e2 ff eb                                      bl #0x3415d8
00348d24  07 00 a0 e1                                      mov r0, r7
00348d28  06 10 a0 e1                                      mov r1, r6
00348d2c  9c 70 8d e2                                      add r7, sp, #0x9c
00348d30  64 20 a0 e3                                      mov r2, #0x64
00348d34  06 dd ff eb                                      bl #0x340154
00348d38  7f c0 a0 e3                                      mov ip, #0x7f
00348d3c  07 30 a0 e1                                      mov r3, r7
00348d40  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00348d44  08 10 9d e5                                      ldr r1, [sp, #8]
00348d48  08 00 a0 e1                                      mov r0, r8
00348d4c  db c0 cd e5                                      strb ip, [sp, #0xdb]
00348d50  d9 b0 cd e5                                      strb fp, [sp, #0xd9]
00348d54  d8 a0 cd e5                                      strb sl, [sp, #0xd8]
00348d58  da b0 cd e5                                      strb fp, [sp, #0xda]
00348d5c  9c 40 8d e5                                      str r4, [sp, #0x9c]
00348d60  a0 40 8d e5                                      str r4, [sp, #0xa0]
00348d64  a4 40 8d e5                                      str r4, [sp, #0xa4]
00348d68  1a e2 ff eb                                      bl #0x3415d8
00348d6c  07 00 a0 e1                                      mov r0, r7
00348d70  06 10 a0 e1                                      mov r1, r6
00348d74  90 70 8d e2                                      add r7, sp, #0x90
00348d78  64 20 a0 e3                                      mov r2, #0x64
00348d7c  f4 dc ff eb                                      bl #0x340154
00348d80  07 30 a0 e1                                      mov r3, r7
00348d84  08 10 9d e5                                      ldr r1, [sp, #8]
00348d88  04 20 9d e5                                      ldr r2, [sp, #4]
00348d8c  08 00 a0 e1                                      mov r0, r8
00348d90  90 40 8d e5                                      str r4, [sp, #0x90]
00348d94  94 40 8d e5                                      str r4, [sp, #0x94]
00348d98  98 40 8d e5                                      str r4, [sp, #0x98]
00348d9c  0d e2 ff eb                                      bl #0x3415d8
00348da0  07 00 a0 e1                                      mov r0, r7
00348da4  06 10 a0 e1                                      mov r1, r6
00348da8  84 70 8d e2                                      add r7, sp, #0x84
00348dac  64 20 a0 e3                                      mov r2, #0x64
00348db0  e7 dc ff eb                                      bl #0x340154
00348db4  07 30 a0 e1                                      mov r3, r7
00348db8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00348dbc  00 10 9d e5                                      ldr r1, [sp]
00348dc0  08 00 a0 e1                                      mov r0, r8
00348dc4  84 40 8d e5                                      str r4, [sp, #0x84]
00348dc8  88 40 8d e5                                      str r4, [sp, #0x88]
00348dcc  8c 40 8d e5                                      str r4, [sp, #0x8c]
00348dd0  00 e2 ff eb                                      bl #0x3415d8
00348dd4  07 00 a0 e1                                      mov r0, r7
00348dd8  06 10 a0 e1                                      mov r1, r6
00348ddc  64 20 a0 e3                                      mov r2, #0x64
00348de0  78 70 8d e2                                      add r7, sp, #0x78
00348de4  da dc ff eb                                      bl #0x340154
00348de8  06 00 9d e8                                      ldm sp, {r1, r2}
00348dec  07 30 a0 e1                                      mov r3, r7
00348df0  08 00 a0 e1                                      mov r0, r8
00348df4  80 40 8d e5                                      str r4, [sp, #0x80]
00348df8  78 40 8d e5                                      str r4, [sp, #0x78]
00348dfc  7c 40 8d e5                                      str r4, [sp, #0x7c]
00348e00  f4 e1 ff eb                                      bl #0x3415d8
00348e04  07 00 a0 e1                                      mov r0, r7
00348e08  06 10 a0 e1                                      mov r1, r6
00348e0c  64 20 a0 e3                                      mov r2, #0x64
00348e10  cf dc ff eb                                      bl #0x340154
00348e14  14 00 9d e5                                      ldr r0, [sp, #0x14]
00348e18  72 1f ff eb                                      bl #0x310be8
00348e1c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00348e20  02 30 95 e7                                      ldr r3, [r5, r2]
00348e24  fc 20 9d e5                                      ldr r2, [sp, #0xfc]
00348e28  00 30 93 e5                                      ldr r3, [r3]
00348e2c  03 00 52 e1                                      cmp r2, r3
00348e30  15 00 00 1a                                      bne #0x348e8c
00348e34  41 df 8d e2                                      add sp, sp, #0x104
00348e38  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00348e3c  04 30 94 e5                                      ldr r3, [r4, #4]
00348e40  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00348e44  04 00 51 e1                                      cmp r1, r4
00348e48  05 00 00 1a                                      bne #0x348e64
00348e4c  03 40 a0 e1                                      mov r4, r3
00348e50  04 30 93 e5                                      ldr r3, [r3, #4]
00348e54  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00348e58  04 00 52 e1                                      cmp r2, r4
00348e5c  fa ff ff 0a                                      beq #0x348e4c
00348e60  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00348e64  03 00 52 e1                                      cmp r2, r3
00348e68  03 40 a0 11                                      movne r4, r3
00348e6c  eb fe ff ea                                      b #0x348a20
00348e70  72 1d ff eb                                      bl #0x310440
00348e74  18 ff ff ea                                      b #0x348adc
00348e78  04 00 a0 e1                                      mov r0, r4
00348e7c  01 10 a0 e3                                      mov r1, #1
00348e80  28 3f 0a eb                                      bl #0x5d8b28
00348e84  00 20 a0 e1                                      mov r2, r0
00348e88  1d ff ff ea                                      b #0x348b04
00348e8c  1f 15 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00348e90  f8 c0 64 00 ac 40 00 00 f4 37 00 00 84 08 00 00  .byte 0xf8, 0xc0, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
00348ea0  8c 6e 57 00                                      .byte 0x8c, 0x6e, 0x57, 0x00

; FUNCTION 0x00348ea4, declared_size=924, range_size=924, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager6RemoveE12ObjectHandle
; demangled: ObjectManager::Remove(ObjectHandle)
; decoder-mode: arm
00348ea4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00348ea8  20 d0 4d e2                                      sub sp, sp, #0x20
00348eac  04 40 8d e2                                      add r4, sp, #4
00348eb0  00 50 a0 e1                                      mov r5, r0
00348eb4  04 00 a0 e1                                      mov r0, r4
00348eb8  0e 00 84 e8                                      stm r4, {r1, r2, r3}
00348ebc  08 dc ff eb                                      bl #0x33fee4
00348ec0  00 70 50 e2                                      subs r7, r0, #0
00348ec4  1a 00 00 0a                                      beq #0x348f34
00348ec8  f4 02 97 e5                                      ldr r0, [r7, #0x2f4]
00348ecc  00 00 50 e3                                      cmp r0, #0
00348ed0  01 00 00 0a                                      beq #0x348edc
00348ed4  07 10 a0 e1                                      mov r1, r7
00348ed8  7b 36 01 eb                                      bl #0x3968cc
00348edc  05 00 a0 e1                                      mov r0, r5
00348ee0  07 10 a0 e1                                      mov r1, r7
00348ee4  f3 f4 ff eb                                      bl #0x3462b8
00348ee8  05 20 a0 e1                                      mov r2, r5
00348eec  90 00 b2 e5                                      ldr r0, [r2, #0x90]!
00348ef0  02 00 50 e1                                      cmp r0, r2
00348ef4  06 00 00 0a                                      beq #0x348f14
00348ef8  08 30 90 e5                                      ldr r3, [r0, #8]
00348efc  03 00 57 e1                                      cmp r7, r3
00348f00  03 00 00 0a                                      beq #0x348f14
00348f04  00 00 90 e5                                      ldr r0, [r0]
00348f08  00 00 52 e1                                      cmp r2, r0
00348f0c  f9 ff ff 1a                                      bne #0x348ef8
00348f10  02 00 a0 e1                                      mov r0, r2
00348f14  00 00 52 e1                                      cmp r2, r0
00348f18  05 00 00 0a                                      beq #0x348f34
00348f1c  00 30 90 e5                                      ldr r3, [r0]
00348f20  04 20 90 e5                                      ldr r2, [r0, #4]
00348f24  0c 10 a0 e3                                      mov r1, #0xc
00348f28  00 30 82 e5                                      str r3, [r2]
00348f2c  04 20 83 e5                                      str r2, [r3, #4]
00348f30  f2 ff 0e eb                                      bl #0x708f00
00348f34  04 00 a0 e1                                      mov r0, r4
00348f38  00 10 a0 e3                                      mov r1, #0
00348f3c  9f db ff eb                                      bl #0x33fdc0
00348f40  05 80 a0 e1                                      mov r8, r5
00348f44  00 a0 a0 e1                                      mov sl, r0
00348f48  2c 00 b8 e5                                      ldr r0, [r8, #0x2c]!
00348f4c  00 00 58 e1                                      cmp r8, r0
00348f50  06 00 00 0a                                      beq #0x348f70
00348f54  08 30 90 e5                                      ldr r3, [r0, #8]
00348f58  00 60 90 e5                                      ldr r6, [r0]
00348f5c  03 00 5a e1                                      cmp sl, r3
00348f60  61 00 00 0a                                      beq #0x3490ec
00348f64  06 00 a0 e1                                      mov r0, r6
00348f68  00 00 58 e1                                      cmp r8, r0
00348f6c  f8 ff ff 1a                                      bne #0x348f54
00348f70  04 00 a0 e1                                      mov r0, r4
00348f74  f6 db ff eb                                      bl #0x33ff54
00348f78  05 80 a0 e1                                      mov r8, r5
00348f7c  00 a0 a0 e1                                      mov sl, r0
00348f80  70 00 b8 e5                                      ldr r0, [r8, #0x70]!
00348f84  00 00 58 e1                                      cmp r8, r0
00348f88  06 00 00 0a                                      beq #0x348fa8
00348f8c  08 30 90 e5                                      ldr r3, [r0, #8]
00348f90  00 60 90 e5                                      ldr r6, [r0]
00348f94  03 00 5a e1                                      cmp sl, r3
00348f98  5a 00 00 0a                                      beq #0x349108
00348f9c  06 00 a0 e1                                      mov r0, r6
00348fa0  00 00 58 e1                                      cmp r8, r0
00348fa4  f8 ff ff 1a                                      bne #0x348f8c
00348fa8  04 00 a0 e1                                      mov r0, r4
00348fac  e8 db ff eb                                      bl #0x33ff54
00348fb0  00 a0 50 e2                                      subs sl, r0, #0
00348fb4  0c 00 00 0a                                      beq #0x348fec
00348fb8  05 80 a0 e1                                      mov r8, r5
00348fbc  60 00 b8 e5                                      ldr r0, [r8, #0x60]!
00348fc0  00 00 58 e1                                      cmp r8, r0
00348fc4  06 00 00 0a                                      beq #0x348fe4
00348fc8  08 30 90 e5                                      ldr r3, [r0, #8]
00348fcc  00 60 90 e5                                      ldr r6, [r0]
00348fd0  03 00 5a e1                                      cmp sl, r3
00348fd4  52 00 00 0a                                      beq #0x349124
00348fd8  06 00 a0 e1                                      mov r0, r6
00348fdc  00 00 58 e1                                      cmp r8, r0
00348fe0  f8 ff ff 1a                                      bne #0x348fc8
00348fe4  f2 0f 8a e2                                      add r0, sl, #0x3c8
00348fe8  02 28 02 eb                                      bl #0x3d2ff8
00348fec  04 00 a0 e1                                      mov r0, r4
00348ff0  00 10 a0 e3                                      mov r1, #0
00348ff4  71 db ff eb                                      bl #0x33fdc0
00348ff8  00 80 50 e2                                      subs r8, r0, #0
00348ffc  02 00 00 0a                                      beq #0x34900c
00349000  f4 30 98 e5                                      ldr r3, [r8, #0xf4]
00349004  05 00 53 e3                                      cmp r3, #5
00349008  7c 00 00 0a                                      beq #0x349200
0034900c  e0 d1 12 eb                                      bl #0x7fd794
00349010  05 30 d0 e5                                      ldrb r3, [r0, #5]
00349014  00 00 53 e3                                      cmp r3, #0
00349018  0c a0 85 02                                      addeq sl, r5, #0xc
0034901c  0d 00 00 0a                                      beq #0x349058
00349020  05 90 a0 e1                                      mov sb, r5
00349024  00 61 b9 e5                                      ldr r6, [sb, #0x100]!
00349028  0c a0 85 e2                                      add sl, r5, #0xc
0034902c  05 00 00 ea                                      b #0x349048
00349030  08 80 96 e5                                      ldr r8, [r6, #8]
00349034  13 db ff eb                                      bl #0x33fc88
00349038  18 30 90 e5                                      ldr r3, [r0, #0x18]
0034903c  03 00 58 e1                                      cmp r8, r3
00349040  4e 00 00 0a                                      beq #0x349180
00349044  00 60 96 e5                                      ldr r6, [r6]
00349048  09 00 56 e1                                      cmp r6, sb
0034904c  0a 00 a0 e1                                      mov r0, sl
00349050  04 10 a0 e1                                      mov r1, r4
00349054  f5 ff ff 1a                                      bne #0x349030
00349058  50 30 95 e5                                      ldr r3, [r5, #0x50]
0034905c  01 30 43 e2                                      sub r3, r3, #1
00349060  50 30 85 e5                                      str r3, [r5, #0x50]
00349064  fc 32 d7 e5                                      ldrb r3, [r7, #0x2fc]
00349068  00 00 53 e3                                      cmp r3, #0
0034906c  33 00 00 0a                                      beq #0x349140
00349070  04 10 a0 e1                                      mov r1, r4
00349074  0a 00 a0 e1                                      mov r0, sl
00349078  02 db ff eb                                      bl #0x33fc88
0034907c  18 10 90 e5                                      ldr r1, [r0, #0x18]
00349080  05 00 a0 e1                                      mov r0, r5
00349084  3f e8 ff eb                                      bl #0x343188
00349088  10 30 95 e5                                      ldr r3, [r5, #0x10]
0034908c  04 00 9d e5                                      ldr r0, [sp, #4]
00349090  00 00 53 e3                                      cmp r3, #0
00349094  0f 00 00 0a                                      beq #0x3490d8
00349098  0a 10 a0 e1                                      mov r1, sl
0034909c  00 00 00 ea                                      b #0x3490a4
003490a0  02 30 a0 e1                                      mov r3, r2
003490a4  10 20 93 e5                                      ldr r2, [r3, #0x10]
003490a8  02 00 50 e1                                      cmp r0, r2
003490ac  0c 20 93 c5                                      ldrgt r2, [r3, #0xc]
003490b0  08 20 93 d5                                      ldrle r2, [r3, #8]
003490b4  01 30 a0 c1                                      movgt r3, r1
003490b8  03 10 a0 e1                                      mov r1, r3
003490bc  00 00 52 e3                                      cmp r2, #0
003490c0  f6 ff ff 1a                                      bne #0x3490a0
003490c4  03 00 5a e1                                      cmp sl, r3
003490c8  02 00 00 0a                                      beq #0x3490d8
003490cc  10 20 93 e5                                      ldr r2, [r3, #0x10]
003490d0  02 00 50 e1                                      cmp r0, r2
003490d4  24 00 00 aa                                      bge #0x34916c
003490d8  78 30 95 e5                                      ldr r3, [r5, #0x78]
003490dc  01 30 83 e2                                      add r3, r3, #1
003490e0  78 30 85 e5                                      str r3, [r5, #0x78]
003490e4  20 d0 8d e2                                      add sp, sp, #0x20
003490e8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003490ec  04 30 90 e5                                      ldr r3, [r0, #4]
003490f0  0c 10 a0 e3                                      mov r1, #0xc
003490f4  00 60 83 e5                                      str r6, [r3]
003490f8  04 30 86 e5                                      str r3, [r6, #4]
003490fc  7f ff 0e eb                                      bl #0x708f00
00349100  06 00 a0 e1                                      mov r0, r6
00349104  97 ff ff ea                                      b #0x348f68
00349108  04 30 90 e5                                      ldr r3, [r0, #4]
0034910c  0c 10 a0 e3                                      mov r1, #0xc
00349110  00 60 83 e5                                      str r6, [r3]
00349114  04 30 86 e5                                      str r3, [r6, #4]
00349118  78 ff 0e eb                                      bl #0x708f00
0034911c  06 00 a0 e1                                      mov r0, r6
00349120  9e ff ff ea                                      b #0x348fa0
00349124  04 30 90 e5                                      ldr r3, [r0, #4]
00349128  0c 10 a0 e3                                      mov r1, #0xc
0034912c  00 60 83 e5                                      str r6, [r3]
00349130  04 30 86 e5                                      str r3, [r6, #4]
00349134  71 ff 0e eb                                      bl #0x708f00
00349138  06 00 a0 e1                                      mov r0, r6
0034913c  a6 ff ff ea                                      b #0x348fdc
00349140  04 10 a0 e1                                      mov r1, r4
00349144  0a 00 a0 e1                                      mov r0, sl
00349148  ce da ff eb                                      bl #0x33fc88
0034914c  18 30 90 e5                                      ldr r3, [r0, #0x18]
00349150  00 00 53 e3                                      cmp r3, #0
00349154  cb ff ff 0a                                      beq #0x349088
00349158  03 00 a0 e1                                      mov r0, r3
0034915c  00 30 93 e5                                      ldr r3, [r3]
00349160  0f e0 a0 e1                                      mov lr, pc
00349164  04 f0 93 e5                                      ldr pc, [r3, #4]
00349168  c6 ff ff ea                                      b #0x349088
0034916c  20 10 8d e2                                      add r1, sp, #0x20
00349170  04 30 21 e5                                      str r3, [r1, #-4]!
00349174  0a 00 a0 e1                                      mov r0, sl
00349178  76 fb ff eb                                      bl #0x347f58
0034917c  d5 ff ff ea                                      b #0x3490d8
00349180  10 90 8d e2                                      add sb, sp, #0x10
00349184  08 10 a0 e1                                      mov r1, r8
00349188  09 00 a0 e1                                      mov r0, sb
0034918c  e6 d2 ff eb                                      bl #0x33dd2c
00349190  09 00 a0 e1                                      mov r0, sb
00349194  6e db ff eb                                      bl #0x33ff54
00349198  00 30 50 e2                                      subs r3, r0, #0
0034919c  04 00 00 0a                                      beq #0x3491b4
003491a0  00 30 93 e5                                      ldr r3, [r3]
003491a4  0f e0 a0 e1                                      mov lr, pc
003491a8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003491ac  00 00 50 e3                                      cmp r0, #0
003491b0  0a 00 00 1a                                      bne #0x3491e0
003491b4  08 91 98 e5                                      ldr sb, [r8, #0x108]
003491b8  12 8e 85 e2                                      add r8, r5, #0x120
003491bc  08 00 a0 e1                                      mov r0, r8
003491c0  e0 e7 ff eb                                      bl #0x343148
003491c4  79 90 ff e6                                      uxth sb, sb
003491c8  b8 90 c0 e1                                      strh sb, [r0, #8]
003491cc  24 31 95 e5                                      ldr r3, [r5, #0x124]
003491d0  00 80 80 e5                                      str r8, [r0]
003491d4  04 30 80 e5                                      str r3, [r0, #4]
003491d8  00 00 83 e5                                      str r0, [r3]
003491dc  24 01 85 e5                                      str r0, [r5, #0x124]
003491e0  00 30 96 e5                                      ldr r3, [r6]
003491e4  04 20 96 e5                                      ldr r2, [r6, #4]
003491e8  06 00 a0 e1                                      mov r0, r6
003491ec  0c 10 a0 e3                                      mov r1, #0xc
003491f0  00 30 82 e5                                      str r3, [r2]
003491f4  04 20 83 e5                                      str r2, [r3, #4]
003491f8  40 ff 0e eb                                      bl #0x708f00
003491fc  95 ff ff ea                                      b #0x349058
00349200  05 a0 a0 e1                                      mov sl, r5
00349204  68 00 ba e5                                      ldr r0, [sl, #0x68]!
00349208  00 00 5a e1                                      cmp sl, r0
0034920c  7e ff ff 0a                                      beq #0x34900c
00349210  08 30 90 e5                                      ldr r3, [r0, #8]
00349214  00 60 90 e5                                      ldr r6, [r0]
00349218  03 00 58 e1                                      cmp r8, r3
0034921c  06 00 a0 11                                      movne r0, r6
00349220  f8 ff ff 1a                                      bne #0x349208
00349224  04 30 90 e5                                      ldr r3, [r0, #4]
00349228  0c 10 a0 e3                                      mov r1, #0xc
0034922c  00 60 83 e5                                      str r6, [r3]
00349230  04 30 86 e5                                      str r3, [r6, #4]
00349234  31 ff 0e eb                                      bl #0x708f00
00349238  06 00 a0 e1                                      mov r0, r6
0034923c  f1 ff ff ea                                      b #0x349208

; FUNCTION 0x00349240, declared_size=748, range_size=748, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager10FakeRemoveE12ObjectHandle
; demangled: ObjectManager::FakeRemove(ObjectHandle)
; decoder-mode: arm
00349240  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00349244  18 d0 4d e2                                      sub sp, sp, #0x18
00349248  04 40 8d e2                                      add r4, sp, #4
0034924c  00 50 a0 e1                                      mov r5, r0
00349250  04 00 a0 e1                                      mov r0, r4
00349254  0e 00 84 e8                                      stm r4, {r1, r2, r3}
00349258  21 db ff eb                                      bl #0x33fee4
0034925c  00 60 a0 e1                                      mov r6, r0
00349260  f4 02 90 e5                                      ldr r0, [r0, #0x2f4]
00349264  01 30 a0 e3                                      mov r3, #1
00349268  81 30 c6 e5                                      strb r3, [r6, #0x81]
0034926c  00 00 50 e3                                      cmp r0, #0
00349270  01 00 00 0a                                      beq #0x34927c
00349274  06 10 a0 e1                                      mov r1, r6
00349278  93 35 01 eb                                      bl #0x3968cc
0034927c  05 00 a0 e1                                      mov r0, r5
00349280  06 10 a0 e1                                      mov r1, r6
00349284  0b f4 ff eb                                      bl #0x3462b8
00349288  05 20 a0 e1                                      mov r2, r5
0034928c  90 00 b2 e5                                      ldr r0, [r2, #0x90]!
00349290  02 00 50 e1                                      cmp r0, r2
00349294  06 00 00 0a                                      beq #0x3492b4
00349298  08 30 90 e5                                      ldr r3, [r0, #8]
0034929c  03 00 56 e1                                      cmp r6, r3
003492a0  03 00 00 0a                                      beq #0x3492b4
003492a4  00 00 90 e5                                      ldr r0, [r0]
003492a8  00 00 52 e1                                      cmp r2, r0
003492ac  f9 ff ff 1a                                      bne #0x349298
003492b0  02 00 a0 e1                                      mov r0, r2
003492b4  00 00 52 e1                                      cmp r2, r0
003492b8  05 00 00 0a                                      beq #0x3492d4
003492bc  00 30 90 e5                                      ldr r3, [r0]
003492c0  04 20 90 e5                                      ldr r2, [r0, #4]
003492c4  0c 10 a0 e3                                      mov r1, #0xc
003492c8  00 30 82 e5                                      str r3, [r2]
003492cc  04 20 83 e5                                      str r2, [r3, #4]
003492d0  0a ff 0e eb                                      bl #0x708f00
003492d4  04 00 a0 e1                                      mov r0, r4
003492d8  00 10 a0 e3                                      mov r1, #0
003492dc  b7 da ff eb                                      bl #0x33fdc0
003492e0  05 70 a0 e1                                      mov r7, r5
003492e4  00 80 a0 e1                                      mov r8, r0
003492e8  2c 00 b7 e5                                      ldr r0, [r7, #0x2c]!
003492ec  00 00 57 e1                                      cmp r7, r0
003492f0  06 00 00 0a                                      beq #0x349310
003492f4  08 30 90 e5                                      ldr r3, [r0, #8]
003492f8  00 60 90 e5                                      ldr r6, [r0]
003492fc  03 00 58 e1                                      cmp r8, r3
00349300  58 00 00 0a                                      beq #0x349468
00349304  06 00 a0 e1                                      mov r0, r6
00349308  00 00 57 e1                                      cmp r7, r0
0034930c  f8 ff ff 1a                                      bne #0x3492f4
00349310  04 00 a0 e1                                      mov r0, r4
00349314  0e db ff eb                                      bl #0x33ff54
00349318  05 70 a0 e1                                      mov r7, r5
0034931c  00 80 a0 e1                                      mov r8, r0
00349320  70 00 b7 e5                                      ldr r0, [r7, #0x70]!
00349324  00 00 57 e1                                      cmp r7, r0
00349328  06 00 00 0a                                      beq #0x349348
0034932c  08 30 90 e5                                      ldr r3, [r0, #8]
00349330  00 60 90 e5                                      ldr r6, [r0]
00349334  03 00 58 e1                                      cmp r8, r3
00349338  51 00 00 0a                                      beq #0x349484
0034933c  06 00 a0 e1                                      mov r0, r6
00349340  00 00 57 e1                                      cmp r7, r0
00349344  f8 ff ff 1a                                      bne #0x34932c
00349348  04 00 a0 e1                                      mov r0, r4
0034934c  00 db ff eb                                      bl #0x33ff54
00349350  00 80 50 e2                                      subs r8, r0, #0
00349354  0e 00 00 0a                                      beq #0x349394
00349358  05 70 a0 e1                                      mov r7, r5
0034935c  60 00 b7 e5                                      ldr r0, [r7, #0x60]!
00349360  00 00 57 e1                                      cmp r7, r0
00349364  06 00 00 0a                                      beq #0x349384
00349368  08 30 90 e5                                      ldr r3, [r0, #8]
0034936c  00 60 90 e5                                      ldr r6, [r0]
00349370  03 00 58 e1                                      cmp r8, r3
00349374  49 00 00 0a                                      beq #0x3494a0
00349378  06 00 a0 e1                                      mov r0, r6
0034937c  00 00 57 e1                                      cmp r7, r0
00349380  f8 ff ff 1a                                      bne #0x349368
00349384  f2 0f 88 e2                                      add r0, r8, #0x3c8
00349388  1a 27 02 eb                                      bl #0x3d2ff8
0034938c  08 00 a0 e1                                      mov r0, r8
00349390  d8 74 01 eb                                      bl #0x3a66f8
00349394  04 00 a0 e1                                      mov r0, r4
00349398  00 10 a0 e3                                      mov r1, #0
0034939c  87 da ff eb                                      bl #0x33fdc0
003493a0  00 70 50 e2                                      subs r7, r0, #0
003493a4  02 00 00 0a                                      beq #0x3493b4
003493a8  f4 30 97 e5                                      ldr r3, [r7, #0xf4]
003493ac  05 00 53 e3                                      cmp r3, #5
003493b0  4d 00 00 0a                                      beq #0x3494ec
003493b4  04 00 a0 e1                                      mov r0, r4
003493b8  00 10 a0 e3                                      mov r1, #0
003493bc  7f da ff eb                                      bl #0x33fdc0
003493c0  05 70 a0 e1                                      mov r7, r5
003493c4  00 80 a0 e1                                      mov r8, r0
003493c8  00 01 b7 e5                                      ldr r0, [r7, #0x100]!
003493cc  00 00 57 e1                                      cmp r7, r0
003493d0  06 00 00 0a                                      beq #0x3493f0
003493d4  08 30 90 e5                                      ldr r3, [r0, #8]
003493d8  00 60 90 e5                                      ldr r6, [r0]
003493dc  03 00 58 e1                                      cmp r8, r3
003493e0  35 00 00 0a                                      beq #0x3494bc
003493e4  06 00 a0 e1                                      mov r0, r6
003493e8  00 00 57 e1                                      cmp r7, r0
003493ec  f8 ff ff 1a                                      bne #0x3493d4
003493f0  10 30 95 e5                                      ldr r3, [r5, #0x10]
003493f4  04 00 9d e5                                      ldr r0, [sp, #4]
003493f8  00 00 53 e3                                      cmp r3, #0
003493fc  0c 60 85 02                                      addeq r6, r5, #0xc
00349400  10 00 00 0a                                      beq #0x349448
00349404  0c 60 85 e2                                      add r6, r5, #0xc
00349408  06 10 a0 e1                                      mov r1, r6
0034940c  00 00 00 ea                                      b #0x349414
00349410  02 30 a0 e1                                      mov r3, r2
00349414  10 20 93 e5                                      ldr r2, [r3, #0x10]
00349418  02 00 50 e1                                      cmp r0, r2
0034941c  0c 20 93 c5                                      ldrgt r2, [r3, #0xc]
00349420  08 20 93 d5                                      ldrle r2, [r3, #8]
00349424  01 30 a0 c1                                      movgt r3, r1
00349428  03 10 a0 e1                                      mov r1, r3
0034942c  00 00 52 e3                                      cmp r2, #0
00349430  f6 ff ff 1a                                      bne #0x349410
00349434  03 00 56 e1                                      cmp r6, r3
00349438  02 00 00 0a                                      beq #0x349448
0034943c  10 20 93 e5                                      ldr r2, [r3, #0x10]
00349440  02 00 50 e1                                      cmp r0, r2
00349444  23 00 00 aa                                      bge #0x3494d8
00349448  04 10 a0 e1                                      mov r1, r4
0034944c  06 00 a0 e1                                      mov r0, r6
00349450  0c da ff eb                                      bl #0x33fc88
00349454  18 10 90 e5                                      ldr r1, [r0, #0x18]
00349458  05 00 a0 e1                                      mov r0, r5
0034945c  49 e7 ff eb                                      bl #0x343188
00349460  18 d0 8d e2                                      add sp, sp, #0x18
00349464  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00349468  04 30 90 e5                                      ldr r3, [r0, #4]
0034946c  0c 10 a0 e3                                      mov r1, #0xc
00349470  00 60 83 e5                                      str r6, [r3]
00349474  04 30 86 e5                                      str r3, [r6, #4]
00349478  a0 fe 0e eb                                      bl #0x708f00
0034947c  06 00 a0 e1                                      mov r0, r6
00349480  a0 ff ff ea                                      b #0x349308
00349484  04 30 90 e5                                      ldr r3, [r0, #4]
00349488  0c 10 a0 e3                                      mov r1, #0xc
0034948c  00 60 83 e5                                      str r6, [r3]
00349490  04 30 86 e5                                      str r3, [r6, #4]
00349494  99 fe 0e eb                                      bl #0x708f00
00349498  06 00 a0 e1                                      mov r0, r6
0034949c  a7 ff ff ea                                      b #0x349340
003494a0  04 30 90 e5                                      ldr r3, [r0, #4]
003494a4  0c 10 a0 e3                                      mov r1, #0xc
003494a8  00 60 83 e5                                      str r6, [r3]
003494ac  04 30 86 e5                                      str r3, [r6, #4]
003494b0  92 fe 0e eb                                      bl #0x708f00
003494b4  06 00 a0 e1                                      mov r0, r6
003494b8  af ff ff ea                                      b #0x34937c
003494bc  04 30 90 e5                                      ldr r3, [r0, #4]
003494c0  0c 10 a0 e3                                      mov r1, #0xc
003494c4  00 60 83 e5                                      str r6, [r3]
003494c8  04 30 86 e5                                      str r3, [r6, #4]
003494cc  8b fe 0e eb                                      bl #0x708f00
003494d0  06 00 a0 e1                                      mov r0, r6
003494d4  c3 ff ff ea                                      b #0x3493e8
003494d8  18 10 8d e2                                      add r1, sp, #0x18
003494dc  04 30 21 e5                                      str r3, [r1, #-4]!
003494e0  06 00 a0 e1                                      mov r0, r6
003494e4  9b fa ff eb                                      bl #0x347f58
003494e8  d6 ff ff ea                                      b #0x349448
003494ec  05 80 a0 e1                                      mov r8, r5
003494f0  68 00 b8 e5                                      ldr r0, [r8, #0x68]!
003494f4  00 00 58 e1                                      cmp r8, r0
003494f8  ad ff ff 0a                                      beq #0x3493b4
003494fc  08 30 90 e5                                      ldr r3, [r0, #8]
00349500  00 60 90 e5                                      ldr r6, [r0]
00349504  03 00 57 e1                                      cmp r7, r3
00349508  06 00 a0 11                                      movne r0, r6
0034950c  f8 ff ff 1a                                      bne #0x3494f4
00349510  04 30 90 e5                                      ldr r3, [r0, #4]
00349514  0c 10 a0 e3                                      mov r1, #0xc
00349518  00 60 83 e5                                      str r6, [r3]
0034951c  04 30 86 e5                                      str r3, [r6, #4]
00349520  76 fe 0e eb                                      bl #0x708f00
00349524  06 00 a0 e1                                      mov r0, r6
00349528  f1 ff ff ea                                      b #0x3494f4

; FUNCTION 0x003496b8, declared_size=1116, range_size=1116, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager5FlushEv
; demangled: ObjectManager::Flush()
; decoder-mode: arm
003496b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003496bc  00 40 a0 e1                                      mov r4, r0
003496c0  08 d0 4d e2                                      sub sp, sp, #8
003496c4  60 50 80 e2                                      add r5, r0, #0x60
003496c8  60 60 90 e5                                      ldr r6, [r0, #0x60]
003496cc  04 00 00 ea                                      b #0x3496e4
003496d0  08 00 96 e5                                      ldr r0, [r6, #8]
003496d4  e4 08 01 eb                                      bl #0x38ba6c
003496d8  08 00 96 e5                                      ldr r0, [r6, #8]
003496dc  b4 d1 ff eb                                      bl #0x33ddb4
003496e0  00 60 96 e5                                      ldr r6, [r6]
003496e4  06 00 55 e1                                      cmp r5, r6
003496e8  f8 ff ff 1a                                      bne #0x3496d0
003496ec  60 60 94 e5                                      ldr r6, [r4, #0x60]
003496f0  04 00 00 ea                                      b #0x349708
003496f4  08 00 96 e5                                      ldr r0, [r6, #8]
003496f8  00 00 50 e3                                      cmp r0, #0
003496fc  f2 0f 80 12                                      addne r0, r0, #0x3c8
00349700  11 07 02 eb                                      bl #0x3cb34c
00349704  00 60 96 e5                                      ldr r6, [r6]
00349708  06 00 55 e1                                      cmp r5, r6
0034970c  f8 ff ff 1a                                      bne #0x3496f4
00349710  14 60 94 e5                                      ldr r6, [r4, #0x14]
00349714  0c 70 84 e2                                      add r7, r4, #0xc
00349718  00 80 a0 e3                                      mov r8, #0
0034971c  07 00 56 e1                                      cmp r6, r7
00349720  1e 00 00 0a                                      beq #0x3497a0
00349724  2c 30 96 e5                                      ldr r3, [r6, #0x2c]
00349728  00 00 53 e3                                      cmp r3, #0
0034972c  04 00 00 0a                                      beq #0x349744
00349730  03 00 a0 e1                                      mov r0, r3
00349734  00 30 93 e5                                      ldr r3, [r3]
00349738  0f e0 a0 e1                                      mov lr, pc
0034973c  04 f0 93 e5                                      ldr pc, [r3, #4]
00349740  2c 80 86 e5                                      str r8, [r6, #0x2c]
00349744  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00349748  00 00 52 e3                                      cmp r2, #0
0034974c  05 00 00 0a                                      beq #0x349768
00349750  02 60 a0 e1                                      mov r6, r2
00349754  08 30 96 e5                                      ldr r3, [r6, #8]
00349758  00 00 53 e3                                      cmp r3, #0
0034975c  ee ff ff 0a                                      beq #0x34971c
00349760  03 60 a0 e1                                      mov r6, r3
00349764  fa ff ff ea                                      b #0x349754
00349768  04 30 96 e5                                      ldr r3, [r6, #4]
0034976c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00349770  01 00 56 e1                                      cmp r6, r1
00349774  05 00 00 1a                                      bne #0x349790
00349778  03 60 a0 e1                                      mov r6, r3
0034977c  04 30 93 e5                                      ldr r3, [r3, #4]
00349780  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00349784  06 00 52 e1                                      cmp r2, r6
00349788  fa ff ff 0a                                      beq #0x349778
0034978c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00349790  03 00 52 e1                                      cmp r2, r3
00349794  03 60 a0 11                                      movne r6, r3
00349798  07 00 56 e1                                      cmp r6, r7
0034979c  e0 ff ff 1a                                      bne #0x349724
003497a0  90 00 84 e2                                      add r0, r4, #0x90
003497a4  5a f0 ff eb                                      bl #0x345914
003497a8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003497ac  00 00 53 e3                                      cmp r3, #0
003497b0  ce 00 00 1a                                      bne #0x349af0
003497b4  05 00 a0 e1                                      mov r0, r5
003497b8  04 60 a0 e1                                      mov r6, r4
003497bc  f2 f0 ff eb                                      bl #0x345b8c
003497c0  68 00 b6 e5                                      ldr r0, [r6, #0x68]!
003497c4  06 00 50 e1                                      cmp r0, r6
003497c8  01 00 00 1a                                      bne #0x3497d4
003497cc  06 00 00 ea                                      b #0x3497ec
003497d0  05 00 a0 e1                                      mov r0, r5
003497d4  00 50 90 e5                                      ldr r5, [r0]
003497d8  0c 10 a0 e3                                      mov r1, #0xc
003497dc  c7 fd 0e eb                                      bl #0x708f00
003497e0  06 00 55 e1                                      cmp r5, r6
003497e4  f9 ff ff 1a                                      bne #0x3497d0
003497e8  06 00 a0 e1                                      mov r0, r6
003497ec  6c 00 84 e5                                      str r0, [r4, #0x6c]
003497f0  68 00 84 e5                                      str r0, [r4, #0x68]
003497f4  04 60 a0 e1                                      mov r6, r4
003497f8  01 0c 84 e2                                      add r0, r4, #0x100
003497fc  9a ee ff eb                                      bl #0x34526c
00349800  20 01 b6 e5                                      ldr r0, [r6, #0x120]!
00349804  00 00 56 e1                                      cmp r6, r0
00349808  01 00 00 1a                                      bne #0x349814
0034980c  05 00 00 ea                                      b #0x349828
00349810  05 00 a0 e1                                      mov r0, r5
00349814  00 50 90 e5                                      ldr r5, [r0]
00349818  0c 10 a0 e3                                      mov r1, #0xc
0034981c  b7 fd 0e eb                                      bl #0x708f00
00349820  05 00 56 e1                                      cmp r6, r5
00349824  f9 ff ff 1a                                      bne #0x349810
00349828  18 31 94 e5                                      ldr r3, [r4, #0x118]
0034982c  24 61 84 e5                                      str r6, [r4, #0x124]
00349830  20 61 84 e5                                      str r6, [r4, #0x120]
00349834  00 00 53 e3                                      cmp r3, #0
00349838  a2 00 00 1a                                      bne #0x349ac8
0034983c  74 31 94 e5                                      ldr r3, [r4, #0x174]
00349840  00 00 53 e3                                      cmp r3, #0
00349844  08 00 00 0a                                      beq #0x34986c
00349848  59 5f 84 e2                                      add r5, r4, #0x164
0034984c  05 00 a0 e1                                      mov r0, r5
00349850  68 11 94 e5                                      ldr r1, [r4, #0x168]
00349854  aa f1 ff eb                                      bl #0x345f04
00349858  00 30 a0 e3                                      mov r3, #0
0034985c  70 51 84 e5                                      str r5, [r4, #0x170]
00349860  74 31 84 e5                                      str r3, [r4, #0x174]
00349864  6c 51 84 e5                                      str r5, [r4, #0x16c]
00349868  68 31 84 e5                                      str r3, [r4, #0x168]
0034986c  8c 31 94 e5                                      ldr r3, [r4, #0x18c]
00349870  00 00 53 e3                                      cmp r3, #0
00349874  08 00 00 0a                                      beq #0x34989c
00349878  5f 5f 84 e2                                      add r5, r4, #0x17c
0034987c  05 00 a0 e1                                      mov r0, r5
00349880  80 11 94 e5                                      ldr r1, [r4, #0x180]
00349884  9e f1 ff eb                                      bl #0x345f04
00349888  00 30 a0 e3                                      mov r3, #0
0034988c  88 51 84 e5                                      str r5, [r4, #0x188]
00349890  8c 31 84 e5                                      str r3, [r4, #0x18c]
00349894  84 51 84 e5                                      str r5, [r4, #0x184]
00349898  80 31 84 e5                                      str r3, [r4, #0x180]
0034989c  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
003498a0  00 00 53 e3                                      cmp r3, #0
003498a4  08 00 00 0a                                      beq #0x3498cc
003498a8  65 5f 84 e2                                      add r5, r4, #0x194
003498ac  05 00 a0 e1                                      mov r0, r5
003498b0  98 11 94 e5                                      ldr r1, [r4, #0x198]
003498b4  92 f1 ff eb                                      bl #0x345f04
003498b8  00 30 a0 e3                                      mov r3, #0
003498bc  a0 51 84 e5                                      str r5, [r4, #0x1a0]
003498c0  a4 31 84 e5                                      str r3, [r4, #0x1a4]
003498c4  9c 51 84 e5                                      str r5, [r4, #0x19c]
003498c8  98 31 84 e5                                      str r3, [r4, #0x198]
003498cc  4a 0f 84 e2                                      add r0, r4, #0x128
003498d0  5d f0 ff eb                                      bl #0x345a4c
003498d4  04 60 a0 e1                                      mov r6, r4
003498d8  13 0e 84 e2                                      add r0, r4, #0x130
003498dc  5a f0 ff eb                                      bl #0x345a4c
003498e0  80 00 b6 e5                                      ldr r0, [r6, #0x80]!
003498e4  00 00 56 e1                                      cmp r6, r0
003498e8  01 00 00 1a                                      bne #0x3498f4
003498ec  05 00 00 ea                                      b #0x349908
003498f0  05 00 a0 e1                                      mov r0, r5
003498f4  00 50 90 e5                                      ldr r5, [r0]
003498f8  0c 10 a0 e3                                      mov r1, #0xc
003498fc  7f fd 0e eb                                      bl #0x708f00
00349900  05 00 56 e1                                      cmp r6, r5
00349904  f9 ff ff 1a                                      bne #0x3498f0
00349908  88 50 84 e2                                      add r5, r4, #0x88
0034990c  05 00 a0 e1                                      mov r0, r5
00349910  84 60 84 e5                                      str r6, [r4, #0x84]
00349914  80 60 84 e5                                      str r6, [r4, #0x80]
00349918  fd ef ff eb                                      bl #0x345914
0034991c  05 10 a0 e1                                      mov r1, r5
00349920  04 00 a0 e1                                      mov r0, r4
00349924  9d e3 ff eb                                      bl #0x3427a0
00349928  58 31 94 e5                                      ldr r3, [r4, #0x158]
0034992c  00 50 a0 e3                                      mov r5, #0
00349930  38 51 84 e5                                      str r5, [r4, #0x138]
00349934  05 00 53 e1                                      cmp r3, r5
00349938  3c 51 84 e5                                      str r5, [r4, #0x13c]
0034993c  40 51 84 e5                                      str r5, [r4, #0x140]
00349940  57 00 00 1a                                      bne #0x349aa4
00349944  08 10 8d e2                                      add r1, sp, #8
00349948  00 50 a0 e3                                      mov r5, #0
0034994c  04 50 21 e5                                      str r5, [r1, #-4]!
00349950  07 00 a0 e1                                      mov r0, r7
00349954  60 51 c4 e5                                      strb r5, [r4, #0x160]
00349958  f3 fe ff eb                                      bl #0x34952c
0034995c  01 30 a0 e3                                      mov r3, #1
00349960  4c 30 84 e5                                      str r3, [r4, #0x4c]
00349964  3c 00 84 e2                                      add r0, r4, #0x3c
00349968  58 50 84 e5                                      str r5, [r4, #0x58]
0034996c  50 50 84 e5                                      str r5, [r4, #0x50]
00349970  54 50 84 e5                                      str r5, [r4, #0x54]
00349974  3c ee ff eb                                      bl #0x34526c
00349978  2c 00 84 e2                                      add r0, r4, #0x2c
0034997c  3a ee ff eb                                      bl #0x34526c
00349980  44 00 84 e2                                      add r0, r4, #0x44
00349984  38 ee ff eb                                      bl #0x34526c
00349988  34 00 84 e2                                      add r0, r4, #0x34
0034998c  36 ee ff eb                                      bl #0x34526c
00349990  04 60 a0 e1                                      mov r6, r4
00349994  70 00 84 e2                                      add r0, r4, #0x70
00349998  7b f0 ff eb                                      bl #0x345b8c
0034999c  24 00 b6 e5                                      ldr r0, [r6, #0x24]!
003499a0  06 00 50 e1                                      cmp r0, r6
003499a4  01 00 00 1a                                      bne #0x3499b0
003499a8  06 00 00 ea                                      b #0x3499c8
003499ac  05 00 a0 e1                                      mov r0, r5
003499b0  00 50 90 e5                                      ldr r5, [r0]
003499b4  0c 10 a0 e3                                      mov r1, #0xc
003499b8  50 fd 0e eb                                      bl #0x708f00
003499bc  06 00 55 e1                                      cmp r5, r6
003499c0  f9 ff ff 1a                                      bne #0x3499ac
003499c4  06 00 a0 e1                                      mov r0, r6
003499c8  00 50 a0 e3                                      mov r5, #0
003499cc  28 00 84 e5                                      str r0, [r4, #0x28]
003499d0  24 00 84 e5                                      str r0, [r4, #0x24]
003499d4  7c 50 84 e5                                      str r5, [r4, #0x7c]
003499d8  04 00 a0 e1                                      mov r0, r4
003499dc  be ee ff eb                                      bl #0x3454dc
003499e0  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
003499e4  05 00 53 e1                                      cmp r3, r5
003499e8  07 00 00 0a                                      beq #0x349a0c
003499ec  98 60 84 e2                                      add r6, r4, #0x98
003499f0  06 00 a0 e1                                      mov r0, r6
003499f4  9c 10 94 e5                                      ldr r1, [r4, #0x9c]
003499f8  53 f0 ff eb                                      bl #0x345b4c
003499fc  a4 60 84 e5                                      str r6, [r4, #0xa4]
00349a00  a8 50 84 e5                                      str r5, [r4, #0xa8]
00349a04  a0 60 84 e5                                      str r6, [r4, #0xa0]
00349a08  9c 50 84 e5                                      str r5, [r4, #0x9c]
00349a0c  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
00349a10  00 00 53 e3                                      cmp r3, #0
00349a14  08 00 00 0a                                      beq #0x349a3c
00349a18  b0 50 84 e2                                      add r5, r4, #0xb0
00349a1c  05 00 a0 e1                                      mov r0, r5
00349a20  b4 10 94 e5                                      ldr r1, [r4, #0xb4]
00349a24  56 f1 ff eb                                      bl #0x345f84
00349a28  00 30 a0 e3                                      mov r3, #0
00349a2c  bc 50 84 e5                                      str r5, [r4, #0xbc]
00349a30  c0 30 84 e5                                      str r3, [r4, #0xc0]
00349a34  b8 50 84 e5                                      str r5, [r4, #0xb8]
00349a38  b4 30 84 e5                                      str r3, [r4, #0xb4]
00349a3c  d8 30 94 e5                                      ldr r3, [r4, #0xd8]
00349a40  00 00 53 e3                                      cmp r3, #0
00349a44  08 00 00 0a                                      beq #0x349a6c
00349a48  c8 50 84 e2                                      add r5, r4, #0xc8
00349a4c  05 00 a0 e1                                      mov r0, r5
00349a50  cc 10 94 e5                                      ldr r1, [r4, #0xcc]
00349a54  4a f1 ff eb                                      bl #0x345f84
00349a58  00 30 a0 e3                                      mov r3, #0
00349a5c  d4 50 84 e5                                      str r5, [r4, #0xd4]
00349a60  d8 30 84 e5                                      str r3, [r4, #0xd8]
00349a64  d0 50 84 e5                                      str r5, [r4, #0xd0]
00349a68  cc 30 84 e5                                      str r3, [r4, #0xcc]
00349a6c  f0 30 94 e5                                      ldr r3, [r4, #0xf0]
00349a70  00 00 53 e3                                      cmp r3, #0
00349a74  08 00 00 0a                                      beq #0x349a9c
00349a78  e0 50 84 e2                                      add r5, r4, #0xe0
00349a7c  05 00 a0 e1                                      mov r0, r5
00349a80  e4 10 94 e5                                      ldr r1, [r4, #0xe4]
00349a84  3e f1 ff eb                                      bl #0x345f84
00349a88  00 30 a0 e3                                      mov r3, #0
00349a8c  f0 30 84 e5                                      str r3, [r4, #0xf0]
00349a90  ec 50 84 e5                                      str r5, [r4, #0xec]
00349a94  e8 50 84 e5                                      str r5, [r4, #0xe8]
00349a98  e4 30 84 e5                                      str r3, [r4, #0xe4]
00349a9c  08 d0 8d e2                                      add sp, sp, #8
00349aa0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00349aa4  52 6f 84 e2                                      add r6, r4, #0x148
00349aa8  06 00 a0 e1                                      mov r0, r6
00349aac  4c 11 94 e5                                      ldr r1, [r4, #0x14c]
00349ab0  77 f0 ff eb                                      bl #0x345c94
00349ab4  54 61 84 e5                                      str r6, [r4, #0x154]
00349ab8  58 51 84 e5                                      str r5, [r4, #0x158]
00349abc  50 61 84 e5                                      str r6, [r4, #0x150]
00349ac0  4c 51 84 e5                                      str r5, [r4, #0x14c]
00349ac4  9e ff ff ea                                      b #0x349944
00349ac8  42 5f 84 e2                                      add r5, r4, #0x108
00349acc  05 00 a0 e1                                      mov r0, r5
00349ad0  0c 11 94 e5                                      ldr r1, [r4, #0x10c]
00349ad4  7e ef ff eb                                      bl #0x3458d4
00349ad8  00 30 a0 e3                                      mov r3, #0
00349adc  14 51 84 e5                                      str r5, [r4, #0x114]
00349ae0  18 31 84 e5                                      str r3, [r4, #0x118]
00349ae4  10 51 84 e5                                      str r5, [r4, #0x110]
00349ae8  0c 31 84 e5                                      str r3, [r4, #0x10c]
00349aec  52 ff ff ea                                      b #0x34983c
00349af0  07 00 a0 e1                                      mov r0, r7
00349af4  10 10 94 e5                                      ldr r1, [r4, #0x10]
00349af8  f5 f8 ff eb                                      bl #0x347ed4
00349afc  00 30 a0 e3                                      mov r3, #0
00349b00  1c 30 84 e5                                      str r3, [r4, #0x1c]
00349b04  14 70 84 e5                                      str r7, [r4, #0x14]
00349b08  10 30 84 e5                                      str r3, [r4, #0x10]
00349b0c  18 70 84 e5                                      str r7, [r4, #0x18]
00349b10  27 ff ff ea                                      b #0x3497b4

; FUNCTION 0x00349b14, declared_size=860, range_size=860, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManagerD1Ev
; demangled: ObjectManager::~ObjectManager()
; decoder-mode: arm
00349b14  4c 33 9f e5                                      ldr r3, [pc, #0x34c]
00349b18  4c 23 9f e5                                      ldr r2, [pc, #0x34c]
00349b1c  70 40 2d e9                                      push {r4, r5, r6, lr}
00349b20  03 30 8f e0                                      add r3, pc, r3
00349b24  02 20 93 e7                                      ldr r2, [r3, r2]
00349b28  00 40 a0 e1                                      mov r4, r0
00349b2c  08 20 82 e2                                      add r2, r2, #8
00349b30  00 20 80 e5                                      str r2, [r0]
00349b34  df fe ff eb                                      bl #0x3496b8
00349b38  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
00349b3c  00 00 53 e3                                      cmp r3, #0
00349b40  08 00 00 0a                                      beq #0x349b68
00349b44  65 5f 84 e2                                      add r5, r4, #0x194
00349b48  05 00 a0 e1                                      mov r0, r5
00349b4c  98 11 94 e5                                      ldr r1, [r4, #0x198]
00349b50  eb f0 ff eb                                      bl #0x345f04
00349b54  00 30 a0 e3                                      mov r3, #0
00349b58  a0 51 84 e5                                      str r5, [r4, #0x1a0]
00349b5c  a4 31 84 e5                                      str r3, [r4, #0x1a4]
00349b60  9c 51 84 e5                                      str r5, [r4, #0x19c]
00349b64  98 31 84 e5                                      str r3, [r4, #0x198]
00349b68  8c 31 94 e5                                      ldr r3, [r4, #0x18c]
00349b6c  00 00 53 e3                                      cmp r3, #0
00349b70  08 00 00 0a                                      beq #0x349b98
00349b74  5f 5f 84 e2                                      add r5, r4, #0x17c
00349b78  05 00 a0 e1                                      mov r0, r5
00349b7c  80 11 94 e5                                      ldr r1, [r4, #0x180]
00349b80  df f0 ff eb                                      bl #0x345f04
00349b84  00 30 a0 e3                                      mov r3, #0
00349b88  88 51 84 e5                                      str r5, [r4, #0x188]
00349b8c  8c 31 84 e5                                      str r3, [r4, #0x18c]
00349b90  84 51 84 e5                                      str r5, [r4, #0x184]
00349b94  80 31 84 e5                                      str r3, [r4, #0x180]
00349b98  74 31 94 e5                                      ldr r3, [r4, #0x174]
00349b9c  00 00 53 e3                                      cmp r3, #0
00349ba0  08 00 00 0a                                      beq #0x349bc8
00349ba4  59 5f 84 e2                                      add r5, r4, #0x164
00349ba8  05 00 a0 e1                                      mov r0, r5
00349bac  68 11 94 e5                                      ldr r1, [r4, #0x168]
00349bb0  d3 f0 ff eb                                      bl #0x345f04
00349bb4  00 30 a0 e3                                      mov r3, #0
00349bb8  70 51 84 e5                                      str r5, [r4, #0x170]
00349bbc  74 31 84 e5                                      str r3, [r4, #0x174]
00349bc0  6c 51 84 e5                                      str r5, [r4, #0x16c]
00349bc4  68 31 84 e5                                      str r3, [r4, #0x168]
00349bc8  58 31 94 e5                                      ldr r3, [r4, #0x158]
00349bcc  00 00 53 e3                                      cmp r3, #0
00349bd0  9a 00 00 1a                                      bne #0x349e40
00349bd4  13 0e 84 e2                                      add r0, r4, #0x130
00349bd8  9b ef ff eb                                      bl #0x345a4c
00349bdc  4a 0f 84 e2                                      add r0, r4, #0x128
00349be0  99 ef ff eb                                      bl #0x345a4c
00349be4  20 01 94 e5                                      ldr r0, [r4, #0x120]
00349be8  12 6e 84 e2                                      add r6, r4, #0x120
00349bec  06 00 50 e1                                      cmp r0, r6
00349bf0  01 00 00 1a                                      bne #0x349bfc
00349bf4  06 00 00 ea                                      b #0x349c14
00349bf8  05 00 a0 e1                                      mov r0, r5
00349bfc  00 50 90 e5                                      ldr r5, [r0]
00349c00  0c 10 a0 e3                                      mov r1, #0xc
00349c04  bd fc 0e eb                                      bl #0x708f00
00349c08  06 00 55 e1                                      cmp r5, r6
00349c0c  f9 ff ff 1a                                      bne #0x349bf8
00349c10  06 00 a0 e1                                      mov r0, r6
00349c14  20 01 84 e5                                      str r0, [r4, #0x120]
00349c18  04 00 86 e5                                      str r0, [r6, #4]
00349c1c  18 31 94 e5                                      ldr r3, [r4, #0x118]
00349c20  00 00 53 e3                                      cmp r3, #0
00349c24  7b 00 00 1a                                      bne #0x349e18
00349c28  01 0c 84 e2                                      add r0, r4, #0x100
00349c2c  8e ed ff eb                                      bl #0x34526c
00349c30  f0 30 94 e5                                      ldr r3, [r4, #0xf0]
00349c34  00 00 53 e3                                      cmp r3, #0
00349c38  08 00 00 0a                                      beq #0x349c60
00349c3c  e0 50 84 e2                                      add r5, r4, #0xe0
00349c40  05 00 a0 e1                                      mov r0, r5
00349c44  e4 10 94 e5                                      ldr r1, [r4, #0xe4]
00349c48  cd f0 ff eb                                      bl #0x345f84
00349c4c  00 30 a0 e3                                      mov r3, #0
00349c50  ec 50 84 e5                                      str r5, [r4, #0xec]
00349c54  f0 30 84 e5                                      str r3, [r4, #0xf0]
00349c58  e8 50 84 e5                                      str r5, [r4, #0xe8]
00349c5c  e4 30 84 e5                                      str r3, [r4, #0xe4]
00349c60  d8 30 94 e5                                      ldr r3, [r4, #0xd8]
00349c64  00 00 53 e3                                      cmp r3, #0
00349c68  08 00 00 0a                                      beq #0x349c90
00349c6c  c8 50 84 e2                                      add r5, r4, #0xc8
00349c70  05 00 a0 e1                                      mov r0, r5
00349c74  cc 10 94 e5                                      ldr r1, [r4, #0xcc]
00349c78  c1 f0 ff eb                                      bl #0x345f84
00349c7c  00 30 a0 e3                                      mov r3, #0
00349c80  d4 50 84 e5                                      str r5, [r4, #0xd4]
00349c84  d8 30 84 e5                                      str r3, [r4, #0xd8]
00349c88  d0 50 84 e5                                      str r5, [r4, #0xd0]
00349c8c  cc 30 84 e5                                      str r3, [r4, #0xcc]
00349c90  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
00349c94  00 00 53 e3                                      cmp r3, #0
00349c98  08 00 00 0a                                      beq #0x349cc0
00349c9c  b0 50 84 e2                                      add r5, r4, #0xb0
00349ca0  05 00 a0 e1                                      mov r0, r5
00349ca4  b4 10 94 e5                                      ldr r1, [r4, #0xb4]
00349ca8  b5 f0 ff eb                                      bl #0x345f84
00349cac  00 30 a0 e3                                      mov r3, #0
00349cb0  bc 50 84 e5                                      str r5, [r4, #0xbc]
00349cb4  c0 30 84 e5                                      str r3, [r4, #0xc0]
00349cb8  b8 50 84 e5                                      str r5, [r4, #0xb8]
00349cbc  b4 30 84 e5                                      str r3, [r4, #0xb4]
00349cc0  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00349cc4  00 00 53 e3                                      cmp r3, #0
00349cc8  48 00 00 1a                                      bne #0x349df0
00349ccc  90 00 84 e2                                      add r0, r4, #0x90
00349cd0  0f ef ff eb                                      bl #0x345914
00349cd4  88 00 84 e2                                      add r0, r4, #0x88
00349cd8  0d ef ff eb                                      bl #0x345914
00349cdc  80 00 94 e5                                      ldr r0, [r4, #0x80]
00349ce0  80 60 84 e2                                      add r6, r4, #0x80
00349ce4  06 00 50 e1                                      cmp r0, r6
00349ce8  01 00 00 1a                                      bne #0x349cf4
00349cec  06 00 00 ea                                      b #0x349d0c
00349cf0  05 00 a0 e1                                      mov r0, r5
00349cf4  00 50 90 e5                                      ldr r5, [r0]
00349cf8  0c 10 a0 e3                                      mov r1, #0xc
00349cfc  7f fc 0e eb                                      bl #0x708f00
00349d00  06 00 55 e1                                      cmp r5, r6
00349d04  f9 ff ff 1a                                      bne #0x349cf0
00349d08  06 00 a0 e1                                      mov r0, r6
00349d0c  80 00 84 e5                                      str r0, [r4, #0x80]
00349d10  04 00 86 e5                                      str r0, [r6, #4]
00349d14  70 00 84 e2                                      add r0, r4, #0x70
00349d18  9b ef ff eb                                      bl #0x345b8c
00349d1c  68 00 94 e5                                      ldr r0, [r4, #0x68]
00349d20  68 60 84 e2                                      add r6, r4, #0x68
00349d24  00 00 56 e1                                      cmp r6, r0
00349d28  01 00 00 1a                                      bne #0x349d34
00349d2c  05 00 00 ea                                      b #0x349d48
00349d30  05 00 a0 e1                                      mov r0, r5
00349d34  00 50 90 e5                                      ldr r5, [r0]
00349d38  0c 10 a0 e3                                      mov r1, #0xc
00349d3c  6f fc 0e eb                                      bl #0x708f00
00349d40  05 00 56 e1                                      cmp r6, r5
00349d44  f9 ff ff 1a                                      bne #0x349d30
00349d48  68 60 84 e5                                      str r6, [r4, #0x68]
00349d4c  60 00 84 e2                                      add r0, r4, #0x60
00349d50  04 60 86 e5                                      str r6, [r6, #4]
00349d54  8c ef ff eb                                      bl #0x345b8c
00349d58  44 00 84 e2                                      add r0, r4, #0x44
00349d5c  42 ed ff eb                                      bl #0x34526c
00349d60  3c 00 84 e2                                      add r0, r4, #0x3c
00349d64  40 ed ff eb                                      bl #0x34526c
00349d68  34 00 84 e2                                      add r0, r4, #0x34
00349d6c  3e ed ff eb                                      bl #0x34526c
00349d70  2c 00 84 e2                                      add r0, r4, #0x2c
00349d74  3c ed ff eb                                      bl #0x34526c
00349d78  24 00 94 e5                                      ldr r0, [r4, #0x24]
00349d7c  24 60 84 e2                                      add r6, r4, #0x24
00349d80  06 00 50 e1                                      cmp r0, r6
00349d84  01 00 00 1a                                      bne #0x349d90
00349d88  06 00 00 ea                                      b #0x349da8
00349d8c  05 00 a0 e1                                      mov r0, r5
00349d90  00 50 90 e5                                      ldr r5, [r0]
00349d94  0c 10 a0 e3                                      mov r1, #0xc
00349d98  58 fc 0e eb                                      bl #0x708f00
00349d9c  06 00 55 e1                                      cmp r5, r6
00349da0  f9 ff ff 1a                                      bne #0x349d8c
00349da4  06 00 a0 e1                                      mov r0, r6
00349da8  24 00 84 e5                                      str r0, [r4, #0x24]
00349dac  04 00 86 e5                                      str r0, [r6, #4]
00349db0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00349db4  00 00 53 e3                                      cmp r3, #0
00349db8  08 00 00 0a                                      beq #0x349de0
00349dbc  0c 50 84 e2                                      add r5, r4, #0xc
00349dc0  05 00 a0 e1                                      mov r0, r5
00349dc4  10 10 94 e5                                      ldr r1, [r4, #0x10]
00349dc8  41 f8 ff eb                                      bl #0x347ed4
00349dcc  00 30 a0 e3                                      mov r3, #0
00349dd0  18 50 84 e5                                      str r5, [r4, #0x18]
00349dd4  1c 30 84 e5                                      str r3, [r4, #0x1c]
00349dd8  14 50 84 e5                                      str r5, [r4, #0x14]
00349ddc  10 30 84 e5                                      str r3, [r4, #0x10]
00349de0  04 00 84 e2                                      add r0, r4, #4
00349de4  20 ed ff eb                                      bl #0x34526c
00349de8  04 00 a0 e1                                      mov r0, r4
00349dec  70 80 bd e8                                      pop {r4, r5, r6, pc}
00349df0  98 50 84 e2                                      add r5, r4, #0x98
00349df4  05 00 a0 e1                                      mov r0, r5
00349df8  9c 10 94 e5                                      ldr r1, [r4, #0x9c]
00349dfc  52 ef ff eb                                      bl #0x345b4c
00349e00  00 30 a0 e3                                      mov r3, #0
00349e04  a4 50 84 e5                                      str r5, [r4, #0xa4]
00349e08  a8 30 84 e5                                      str r3, [r4, #0xa8]
00349e0c  a0 50 84 e5                                      str r5, [r4, #0xa0]
00349e10  9c 30 84 e5                                      str r3, [r4, #0x9c]
00349e14  ac ff ff ea                                      b #0x349ccc
00349e18  42 5f 84 e2                                      add r5, r4, #0x108
00349e1c  05 00 a0 e1                                      mov r0, r5
00349e20  0c 11 94 e5                                      ldr r1, [r4, #0x10c]
00349e24  aa ee ff eb                                      bl #0x3458d4
00349e28  00 30 a0 e3                                      mov r3, #0
00349e2c  14 51 84 e5                                      str r5, [r4, #0x114]
00349e30  18 31 84 e5                                      str r3, [r4, #0x118]
00349e34  10 51 84 e5                                      str r5, [r4, #0x110]
00349e38  0c 31 84 e5                                      str r3, [r4, #0x10c]
00349e3c  79 ff ff ea                                      b #0x349c28
00349e40  52 5f 84 e2                                      add r5, r4, #0x148
00349e44  05 00 a0 e1                                      mov r0, r5
00349e48  4c 11 94 e5                                      ldr r1, [r4, #0x14c]
00349e4c  90 ef ff eb                                      bl #0x345c94
00349e50  00 30 a0 e3                                      mov r3, #0
00349e54  54 51 84 e5                                      str r5, [r4, #0x154]
00349e58  58 31 84 e5                                      str r3, [r4, #0x158]
00349e5c  50 51 84 e5                                      str r5, [r4, #0x150]
00349e60  4c 31 84 e5                                      str r3, [r4, #0x14c]
00349e64  5a ff ff ea                                      b #0x349bd4
; mapping-symbol data/literal pool
00349e68  70 af 64 00 5c 11 00 00                          .byte 0x70, 0xaf, 0x64, 0x00, 0x5c, 0x11, 0x00, 0x00

; FUNCTION 0x00349e70, declared_size=28, range_size=28, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManagerD0Ev
; demangled: ObjectManager::~ObjectManager()
; decoder-mode: arm
00349e70  10 40 2d e9                                      push {r4, lr}
00349e74  00 40 a0 e1                                      mov r4, r0
00349e78  25 ff ff eb                                      bl #0x349b14
00349e7c  04 00 a0 e1                                      mov r0, r4
00349e80  6e 19 ff eb                                      bl #0x310440
00349e84  04 00 a0 e1                                      mov r0, r4
00349e88  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00349e8c, declared_size=860, range_size=860, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManagerD2Ev
; demangled: ObjectManager::~ObjectManager()
; decoder-mode: arm
00349e8c  4c 33 9f e5                                      ldr r3, [pc, #0x34c]
00349e90  4c 23 9f e5                                      ldr r2, [pc, #0x34c]
00349e94  70 40 2d e9                                      push {r4, r5, r6, lr}
00349e98  03 30 8f e0                                      add r3, pc, r3
00349e9c  02 20 93 e7                                      ldr r2, [r3, r2]
00349ea0  00 40 a0 e1                                      mov r4, r0
00349ea4  08 20 82 e2                                      add r2, r2, #8
00349ea8  00 20 80 e5                                      str r2, [r0]
00349eac  01 fe ff eb                                      bl #0x3496b8
00349eb0  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
00349eb4  00 00 53 e3                                      cmp r3, #0
00349eb8  08 00 00 0a                                      beq #0x349ee0
00349ebc  65 5f 84 e2                                      add r5, r4, #0x194
00349ec0  05 00 a0 e1                                      mov r0, r5
00349ec4  98 11 94 e5                                      ldr r1, [r4, #0x198]
00349ec8  0d f0 ff eb                                      bl #0x345f04
00349ecc  00 30 a0 e3                                      mov r3, #0
00349ed0  a0 51 84 e5                                      str r5, [r4, #0x1a0]
00349ed4  a4 31 84 e5                                      str r3, [r4, #0x1a4]
00349ed8  9c 51 84 e5                                      str r5, [r4, #0x19c]
00349edc  98 31 84 e5                                      str r3, [r4, #0x198]
00349ee0  8c 31 94 e5                                      ldr r3, [r4, #0x18c]
00349ee4  00 00 53 e3                                      cmp r3, #0
00349ee8  08 00 00 0a                                      beq #0x349f10
00349eec  5f 5f 84 e2                                      add r5, r4, #0x17c
00349ef0  05 00 a0 e1                                      mov r0, r5
00349ef4  80 11 94 e5                                      ldr r1, [r4, #0x180]
00349ef8  01 f0 ff eb                                      bl #0x345f04
00349efc  00 30 a0 e3                                      mov r3, #0
00349f00  88 51 84 e5                                      str r5, [r4, #0x188]
00349f04  8c 31 84 e5                                      str r3, [r4, #0x18c]
00349f08  84 51 84 e5                                      str r5, [r4, #0x184]
00349f0c  80 31 84 e5                                      str r3, [r4, #0x180]
00349f10  74 31 94 e5                                      ldr r3, [r4, #0x174]
00349f14  00 00 53 e3                                      cmp r3, #0
00349f18  08 00 00 0a                                      beq #0x349f40
00349f1c  59 5f 84 e2                                      add r5, r4, #0x164
00349f20  05 00 a0 e1                                      mov r0, r5
00349f24  68 11 94 e5                                      ldr r1, [r4, #0x168]
00349f28  f5 ef ff eb                                      bl #0x345f04
00349f2c  00 30 a0 e3                                      mov r3, #0
00349f30  70 51 84 e5                                      str r5, [r4, #0x170]
00349f34  74 31 84 e5                                      str r3, [r4, #0x174]
00349f38  6c 51 84 e5                                      str r5, [r4, #0x16c]
00349f3c  68 31 84 e5                                      str r3, [r4, #0x168]
00349f40  58 31 94 e5                                      ldr r3, [r4, #0x158]
00349f44  00 00 53 e3                                      cmp r3, #0
00349f48  9a 00 00 1a                                      bne #0x34a1b8
00349f4c  13 0e 84 e2                                      add r0, r4, #0x130
00349f50  bd ee ff eb                                      bl #0x345a4c
00349f54  4a 0f 84 e2                                      add r0, r4, #0x128
00349f58  bb ee ff eb                                      bl #0x345a4c
00349f5c  20 01 94 e5                                      ldr r0, [r4, #0x120]
00349f60  12 6e 84 e2                                      add r6, r4, #0x120
00349f64  06 00 50 e1                                      cmp r0, r6
00349f68  01 00 00 1a                                      bne #0x349f74
00349f6c  06 00 00 ea                                      b #0x349f8c
00349f70  05 00 a0 e1                                      mov r0, r5
00349f74  00 50 90 e5                                      ldr r5, [r0]
00349f78  0c 10 a0 e3                                      mov r1, #0xc
00349f7c  df fb 0e eb                                      bl #0x708f00
00349f80  06 00 55 e1                                      cmp r5, r6
00349f84  f9 ff ff 1a                                      bne #0x349f70
00349f88  06 00 a0 e1                                      mov r0, r6
00349f8c  20 01 84 e5                                      str r0, [r4, #0x120]
00349f90  04 00 86 e5                                      str r0, [r6, #4]
00349f94  18 31 94 e5                                      ldr r3, [r4, #0x118]
00349f98  00 00 53 e3                                      cmp r3, #0
00349f9c  7b 00 00 1a                                      bne #0x34a190
00349fa0  01 0c 84 e2                                      add r0, r4, #0x100
00349fa4  b0 ec ff eb                                      bl #0x34526c
00349fa8  f0 30 94 e5                                      ldr r3, [r4, #0xf0]
00349fac  00 00 53 e3                                      cmp r3, #0
00349fb0  08 00 00 0a                                      beq #0x349fd8
00349fb4  e0 50 84 e2                                      add r5, r4, #0xe0
00349fb8  05 00 a0 e1                                      mov r0, r5
00349fbc  e4 10 94 e5                                      ldr r1, [r4, #0xe4]
00349fc0  ef ef ff eb                                      bl #0x345f84
00349fc4  00 30 a0 e3                                      mov r3, #0
00349fc8  ec 50 84 e5                                      str r5, [r4, #0xec]
00349fcc  f0 30 84 e5                                      str r3, [r4, #0xf0]
00349fd0  e8 50 84 e5                                      str r5, [r4, #0xe8]
00349fd4  e4 30 84 e5                                      str r3, [r4, #0xe4]
00349fd8  d8 30 94 e5                                      ldr r3, [r4, #0xd8]
00349fdc  00 00 53 e3                                      cmp r3, #0
00349fe0  08 00 00 0a                                      beq #0x34a008
00349fe4  c8 50 84 e2                                      add r5, r4, #0xc8
00349fe8  05 00 a0 e1                                      mov r0, r5
00349fec  cc 10 94 e5                                      ldr r1, [r4, #0xcc]
00349ff0  e3 ef ff eb                                      bl #0x345f84
00349ff4  00 30 a0 e3                                      mov r3, #0
00349ff8  d4 50 84 e5                                      str r5, [r4, #0xd4]
00349ffc  d8 30 84 e5                                      str r3, [r4, #0xd8]
0034a000  d0 50 84 e5                                      str r5, [r4, #0xd0]
0034a004  cc 30 84 e5                                      str r3, [r4, #0xcc]
0034a008  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
0034a00c  00 00 53 e3                                      cmp r3, #0
0034a010  08 00 00 0a                                      beq #0x34a038
0034a014  b0 50 84 e2                                      add r5, r4, #0xb0
0034a018  05 00 a0 e1                                      mov r0, r5
0034a01c  b4 10 94 e5                                      ldr r1, [r4, #0xb4]
0034a020  d7 ef ff eb                                      bl #0x345f84
0034a024  00 30 a0 e3                                      mov r3, #0
0034a028  bc 50 84 e5                                      str r5, [r4, #0xbc]
0034a02c  c0 30 84 e5                                      str r3, [r4, #0xc0]
0034a030  b8 50 84 e5                                      str r5, [r4, #0xb8]
0034a034  b4 30 84 e5                                      str r3, [r4, #0xb4]
0034a038  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
0034a03c  00 00 53 e3                                      cmp r3, #0
0034a040  48 00 00 1a                                      bne #0x34a168
0034a044  90 00 84 e2                                      add r0, r4, #0x90
0034a048  31 ee ff eb                                      bl #0x345914
0034a04c  88 00 84 e2                                      add r0, r4, #0x88
0034a050  2f ee ff eb                                      bl #0x345914
0034a054  80 00 94 e5                                      ldr r0, [r4, #0x80]
0034a058  80 60 84 e2                                      add r6, r4, #0x80
0034a05c  06 00 50 e1                                      cmp r0, r6
0034a060  01 00 00 1a                                      bne #0x34a06c
0034a064  06 00 00 ea                                      b #0x34a084
0034a068  05 00 a0 e1                                      mov r0, r5
0034a06c  00 50 90 e5                                      ldr r5, [r0]
0034a070  0c 10 a0 e3                                      mov r1, #0xc
0034a074  a1 fb 0e eb                                      bl #0x708f00
0034a078  06 00 55 e1                                      cmp r5, r6
0034a07c  f9 ff ff 1a                                      bne #0x34a068
0034a080  06 00 a0 e1                                      mov r0, r6
0034a084  80 00 84 e5                                      str r0, [r4, #0x80]
0034a088  04 00 86 e5                                      str r0, [r6, #4]
0034a08c  70 00 84 e2                                      add r0, r4, #0x70
0034a090  bd ee ff eb                                      bl #0x345b8c
0034a094  68 00 94 e5                                      ldr r0, [r4, #0x68]
0034a098  68 60 84 e2                                      add r6, r4, #0x68
0034a09c  00 00 56 e1                                      cmp r6, r0
0034a0a0  01 00 00 1a                                      bne #0x34a0ac
0034a0a4  05 00 00 ea                                      b #0x34a0c0
0034a0a8  05 00 a0 e1                                      mov r0, r5
0034a0ac  00 50 90 e5                                      ldr r5, [r0]
0034a0b0  0c 10 a0 e3                                      mov r1, #0xc
0034a0b4  91 fb 0e eb                                      bl #0x708f00
0034a0b8  05 00 56 e1                                      cmp r6, r5
0034a0bc  f9 ff ff 1a                                      bne #0x34a0a8
0034a0c0  68 60 84 e5                                      str r6, [r4, #0x68]
0034a0c4  60 00 84 e2                                      add r0, r4, #0x60
0034a0c8  04 60 86 e5                                      str r6, [r6, #4]
0034a0cc  ae ee ff eb                                      bl #0x345b8c
0034a0d0  44 00 84 e2                                      add r0, r4, #0x44
0034a0d4  64 ec ff eb                                      bl #0x34526c
0034a0d8  3c 00 84 e2                                      add r0, r4, #0x3c
0034a0dc  62 ec ff eb                                      bl #0x34526c
0034a0e0  34 00 84 e2                                      add r0, r4, #0x34
0034a0e4  60 ec ff eb                                      bl #0x34526c
0034a0e8  2c 00 84 e2                                      add r0, r4, #0x2c
0034a0ec  5e ec ff eb                                      bl #0x34526c
0034a0f0  24 00 94 e5                                      ldr r0, [r4, #0x24]
0034a0f4  24 60 84 e2                                      add r6, r4, #0x24
0034a0f8  06 00 50 e1                                      cmp r0, r6
0034a0fc  01 00 00 1a                                      bne #0x34a108
0034a100  06 00 00 ea                                      b #0x34a120
0034a104  05 00 a0 e1                                      mov r0, r5
0034a108  00 50 90 e5                                      ldr r5, [r0]
0034a10c  0c 10 a0 e3                                      mov r1, #0xc
0034a110  7a fb 0e eb                                      bl #0x708f00
0034a114  06 00 55 e1                                      cmp r5, r6
0034a118  f9 ff ff 1a                                      bne #0x34a104
0034a11c  06 00 a0 e1                                      mov r0, r6
0034a120  24 00 84 e5                                      str r0, [r4, #0x24]
0034a124  04 00 86 e5                                      str r0, [r6, #4]
0034a128  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0034a12c  00 00 53 e3                                      cmp r3, #0
0034a130  08 00 00 0a                                      beq #0x34a158
0034a134  0c 50 84 e2                                      add r5, r4, #0xc
0034a138  05 00 a0 e1                                      mov r0, r5
0034a13c  10 10 94 e5                                      ldr r1, [r4, #0x10]
0034a140  63 f7 ff eb                                      bl #0x347ed4
0034a144  00 30 a0 e3                                      mov r3, #0
0034a148  18 50 84 e5                                      str r5, [r4, #0x18]
0034a14c  1c 30 84 e5                                      str r3, [r4, #0x1c]
0034a150  14 50 84 e5                                      str r5, [r4, #0x14]
0034a154  10 30 84 e5                                      str r3, [r4, #0x10]
0034a158  04 00 84 e2                                      add r0, r4, #4
0034a15c  42 ec ff eb                                      bl #0x34526c
0034a160  04 00 a0 e1                                      mov r0, r4
0034a164  70 80 bd e8                                      pop {r4, r5, r6, pc}
0034a168  98 50 84 e2                                      add r5, r4, #0x98
0034a16c  05 00 a0 e1                                      mov r0, r5
0034a170  9c 10 94 e5                                      ldr r1, [r4, #0x9c]
0034a174  74 ee ff eb                                      bl #0x345b4c
0034a178  00 30 a0 e3                                      mov r3, #0
0034a17c  a4 50 84 e5                                      str r5, [r4, #0xa4]
0034a180  a8 30 84 e5                                      str r3, [r4, #0xa8]
0034a184  a0 50 84 e5                                      str r5, [r4, #0xa0]
0034a188  9c 30 84 e5                                      str r3, [r4, #0x9c]
0034a18c  ac ff ff ea                                      b #0x34a044
0034a190  42 5f 84 e2                                      add r5, r4, #0x108
0034a194  05 00 a0 e1                                      mov r0, r5
0034a198  0c 11 94 e5                                      ldr r1, [r4, #0x10c]
0034a19c  cc ed ff eb                                      bl #0x3458d4
0034a1a0  00 30 a0 e3                                      mov r3, #0
0034a1a4  14 51 84 e5                                      str r5, [r4, #0x114]
0034a1a8  18 31 84 e5                                      str r3, [r4, #0x118]
0034a1ac  10 51 84 e5                                      str r5, [r4, #0x110]
0034a1b0  0c 31 84 e5                                      str r3, [r4, #0x10c]
0034a1b4  79 ff ff ea                                      b #0x349fa0
0034a1b8  52 5f 84 e2                                      add r5, r4, #0x148
0034a1bc  05 00 a0 e1                                      mov r0, r5
0034a1c0  4c 11 94 e5                                      ldr r1, [r4, #0x14c]
0034a1c4  b2 ee ff eb                                      bl #0x345c94
0034a1c8  00 30 a0 e3                                      mov r3, #0
0034a1cc  54 51 84 e5                                      str r5, [r4, #0x154]
0034a1d0  58 31 84 e5                                      str r3, [r4, #0x158]
0034a1d4  50 51 84 e5                                      str r5, [r4, #0x150]
0034a1d8  4c 31 84 e5                                      str r3, [r4, #0x14c]
0034a1dc  5a ff ff ea                                      b #0x349f4c
; mapping-symbol data/literal pool
0034a1e0  f8 ab 64 00 5c 11 00 00                          .byte 0xf8, 0xab, 0x64, 0x00, 0x5c, 0x11, 0x00, 0x00

; FUNCTION 0x0034a1e8, declared_size=540, range_size=540, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManagerC1Ev
; demangled: ObjectManager::ObjectManager()
; decoder-mode: arm
0034a1e8  0c 22 9f e5                                      ldr r2, [pc, #0x20c]
0034a1ec  0c c2 9f e5                                      ldr ip, [pc, #0x20c]
0034a1f0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034a1f4  02 20 8f e0                                      add r2, pc, r2
0034a1f8  0c c0 92 e7                                      ldr ip, [r2, ip]
0034a1fc  00 10 a0 e1                                      mov r1, r0
0034a200  00 30 a0 e3                                      mov r3, #0
0034a204  08 c0 8c e2                                      add ip, ip, #8
0034a208  04 c0 81 e4                                      str ip, [r1], #4
0034a20c  60 50 80 e2                                      add r5, r0, #0x60
0034a210  00 c0 a0 e1                                      mov ip, r0
0034a214  08 10 80 e5                                      str r1, [r0, #8]
0034a218  04 10 80 e5                                      str r1, [r0, #4]
0034a21c  10 30 80 e5                                      str r3, [r0, #0x10]
0034a220  0c 30 ec e5                                      strb r3, [ip, #0xc]!
0034a224  60 50 80 e5                                      str r5, [r0, #0x60]
0034a228  80 50 80 e2                                      add r5, r0, #0x80
0034a22c  84 50 80 e5                                      str r5, [r0, #0x84]
0034a230  60 50 90 e5                                      ldr r5, [r0, #0x60]
0034a234  70 e0 80 e2                                      add lr, r0, #0x70
0034a238  70 e0 80 e5                                      str lr, [r0, #0x70]
0034a23c  64 50 80 e5                                      str r5, [r0, #0x64]
0034a240  70 50 90 e5                                      ldr r5, [r0, #0x70]
0034a244  24 90 80 e2                                      add sb, r0, #0x24
0034a248  2c a0 80 e2                                      add sl, r0, #0x2c
0034a24c  34 80 80 e2                                      add r8, r0, #0x34
0034a250  3c 70 80 e2                                      add r7, r0, #0x3c
0034a254  44 60 80 e2                                      add r6, r0, #0x44
0034a258  68 b0 80 e2                                      add fp, r0, #0x68
0034a25c  88 e0 80 e2                                      add lr, r0, #0x88
0034a260  88 e0 80 e5                                      str lr, [r0, #0x88]
0034a264  18 c0 80 e5                                      str ip, [r0, #0x18]
0034a268  28 90 80 e5                                      str sb, [r0, #0x28]
0034a26c  30 a0 80 e5                                      str sl, [r0, #0x30]
0034a270  38 80 80 e5                                      str r8, [r0, #0x38]
0034a274  40 70 80 e5                                      str r7, [r0, #0x40]
0034a278  48 60 80 e5                                      str r6, [r0, #0x48]
0034a27c  6c b0 80 e5                                      str fp, [r0, #0x6c]
0034a280  74 50 80 e5                                      str r5, [r0, #0x74]
0034a284  14 c0 80 e5                                      str ip, [r0, #0x14]
0034a288  24 90 80 e5                                      str sb, [r0, #0x24]
0034a28c  2c a0 80 e5                                      str sl, [r0, #0x2c]
0034a290  34 80 80 e5                                      str r8, [r0, #0x34]
0034a294  3c 70 80 e5                                      str r7, [r0, #0x3c]
0034a298  44 60 80 e5                                      str r6, [r0, #0x44]
0034a29c  1c 30 80 e5                                      str r3, [r0, #0x1c]
0034a2a0  4c 30 80 e5                                      str r3, [r0, #0x4c]
0034a2a4  50 30 80 e5                                      str r3, [r0, #0x50]
0034a2a8  54 30 80 e5                                      str r3, [r0, #0x54]
0034a2ac  58 30 80 e5                                      str r3, [r0, #0x58]
0034a2b0  5c 30 80 e5                                      str r3, [r0, #0x5c]
0034a2b4  84 c0 90 e5                                      ldr ip, [r0, #0x84]
0034a2b8  88 50 90 e5                                      ldr r5, [r0, #0x88]
0034a2bc  00 10 a0 e1                                      mov r1, r0
0034a2c0  90 e0 80 e2                                      add lr, r0, #0x90
0034a2c4  68 b0 80 e5                                      str fp, [r0, #0x68]
0034a2c8  80 c0 80 e5                                      str ip, [r0, #0x80]
0034a2cc  8c 50 80 e5                                      str r5, [r0, #0x8c]
0034a2d0  94 e0 80 e5                                      str lr, [r0, #0x94]
0034a2d4  90 e0 80 e5                                      str lr, [r0, #0x90]
0034a2d8  78 30 80 e5                                      str r3, [r0, #0x78]
0034a2dc  7c 30 80 e5                                      str r3, [r0, #0x7c]
0034a2e0  9c 30 80 e5                                      str r3, [r0, #0x9c]
0034a2e4  00 c0 a0 e1                                      mov ip, r0
0034a2e8  98 30 e1 e5                                      strb r3, [r1, #0x98]!
0034a2ec  a4 10 80 e5                                      str r1, [r0, #0xa4]
0034a2f0  a0 10 80 e5                                      str r1, [r0, #0xa0]
0034a2f4  a8 30 80 e5                                      str r3, [r0, #0xa8]
0034a2f8  b4 30 80 e5                                      str r3, [r0, #0xb4]
0034a2fc  00 10 a0 e1                                      mov r1, r0
0034a300  b0 30 ec e5                                      strb r3, [ip, #0xb0]!
0034a304  bc c0 80 e5                                      str ip, [r0, #0xbc]
0034a308  b8 c0 80 e5                                      str ip, [r0, #0xb8]
0034a30c  c0 30 80 e5                                      str r3, [r0, #0xc0]
0034a310  00 c0 a0 e1                                      mov ip, r0
0034a314  cc 30 80 e5                                      str r3, [r0, #0xcc]
0034a318  c8 30 e1 e5                                      strb r3, [r1, #0xc8]!
0034a31c  d4 10 80 e5                                      str r1, [r0, #0xd4]
0034a320  d0 10 80 e5                                      str r1, [r0, #0xd0]
0034a324  01 ec 80 e2                                      add lr, r0, #0x100
0034a328  00 10 a0 e1                                      mov r1, r0
0034a32c  d8 30 80 e5                                      str r3, [r0, #0xd8]
0034a330  e4 30 80 e5                                      str r3, [r0, #0xe4]
0034a334  e0 30 ec e5                                      strb r3, [ip, #0xe0]!
0034a338  12 6e 80 e2                                      add r6, r0, #0x120
0034a33c  4a 5f 80 e2                                      add r5, r0, #0x128
0034a340  ec c0 80 e5                                      str ip, [r0, #0xec]
0034a344  04 e1 80 e5                                      str lr, [r0, #0x104]
0034a348  e8 c0 80 e5                                      str ip, [r0, #0xe8]
0034a34c  00 e1 80 e5                                      str lr, [r0, #0x100]
0034a350  00 c0 a0 e1                                      mov ip, r0
0034a354  13 ee 80 e2                                      add lr, r0, #0x130
0034a358  f0 30 80 e5                                      str r3, [r0, #0xf0]
0034a35c  f8 30 80 e5                                      str r3, [r0, #0xf8]
0034a360  0c 31 80 e5                                      str r3, [r0, #0x10c]
0034a364  08 31 e1 e5                                      strb r3, [r1, #0x108]!
0034a368  14 11 80 e5                                      str r1, [r0, #0x114]
0034a36c  10 11 80 e5                                      str r1, [r0, #0x110]
0034a370  20 61 80 e5                                      str r6, [r0, #0x120]
0034a374  24 61 80 e5                                      str r6, [r0, #0x124]
0034a378  2c 51 80 e5                                      str r5, [r0, #0x12c]
0034a37c  34 e1 80 e5                                      str lr, [r0, #0x134]
0034a380  28 51 80 e5                                      str r5, [r0, #0x128]
0034a384  30 e1 80 e5                                      str lr, [r0, #0x130]
0034a388  18 31 80 e5                                      str r3, [r0, #0x118]
0034a38c  4c 31 80 e5                                      str r3, [r0, #0x14c]
0034a390  00 10 a0 e1                                      mov r1, r0
0034a394  48 31 ec e5                                      strb r3, [ip, #0x148]!
0034a398  54 c1 80 e5                                      str ip, [r0, #0x154]
0034a39c  50 c1 80 e5                                      str ip, [r0, #0x150]
0034a3a0  58 31 80 e5                                      str r3, [r0, #0x158]
0034a3a4  00 c0 a0 e1                                      mov ip, r0
0034a3a8  68 31 80 e5                                      str r3, [r0, #0x168]
0034a3ac  64 31 e1 e5                                      strb r3, [r1, #0x164]!
0034a3b0  70 11 80 e5                                      str r1, [r0, #0x170]
0034a3b4  6c 11 80 e5                                      str r1, [r0, #0x16c]
0034a3b8  74 31 80 e5                                      str r3, [r0, #0x174]
0034a3bc  00 10 a0 e1                                      mov r1, r0
0034a3c0  80 31 80 e5                                      str r3, [r0, #0x180]
0034a3c4  7c 31 ec e5                                      strb r3, [ip, #0x17c]!
0034a3c8  88 c1 80 e5                                      str ip, [r0, #0x188]
0034a3cc  84 c1 80 e5                                      str ip, [r0, #0x184]
0034a3d0  8c 31 80 e5                                      str r3, [r0, #0x18c]
0034a3d4  98 31 80 e5                                      str r3, [r0, #0x198]
0034a3d8  94 31 e1 e5                                      strb r3, [r1, #0x194]!
0034a3dc  00 40 a0 e1                                      mov r4, r0
0034a3e0  a0 11 80 e5                                      str r1, [r0, #0x1a0]
0034a3e4  9c 11 80 e5                                      str r1, [r0, #0x19c]
0034a3e8  ac 31 c0 e5                                      strb r3, [r0, #0x1ac]
0034a3ec  a4 31 80 e5                                      str r3, [r0, #0x1a4]
0034a3f0  b0 fc ff eb                                      bl #0x3496b8
0034a3f4  04 00 a0 e1                                      mov r0, r4
0034a3f8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0034a3fc  9c a8 64 00 5c 11 00 00                          .byte 0x9c, 0xa8, 0x64, 0x00, 0x5c, 0x11, 0x00, 0x00

; FUNCTION 0x0034a404, declared_size=540, range_size=540, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManagerC2Ev
; demangled: ObjectManager::ObjectManager()
; decoder-mode: arm
0034a404  0c 22 9f e5                                      ldr r2, [pc, #0x20c]
0034a408  0c c2 9f e5                                      ldr ip, [pc, #0x20c]
0034a40c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034a410  02 20 8f e0                                      add r2, pc, r2
0034a414  0c c0 92 e7                                      ldr ip, [r2, ip]
0034a418  00 10 a0 e1                                      mov r1, r0
0034a41c  00 30 a0 e3                                      mov r3, #0
0034a420  08 c0 8c e2                                      add ip, ip, #8
0034a424  04 c0 81 e4                                      str ip, [r1], #4
0034a428  60 50 80 e2                                      add r5, r0, #0x60
0034a42c  00 c0 a0 e1                                      mov ip, r0
0034a430  08 10 80 e5                                      str r1, [r0, #8]
0034a434  04 10 80 e5                                      str r1, [r0, #4]
0034a438  10 30 80 e5                                      str r3, [r0, #0x10]
0034a43c  0c 30 ec e5                                      strb r3, [ip, #0xc]!
0034a440  60 50 80 e5                                      str r5, [r0, #0x60]
0034a444  80 50 80 e2                                      add r5, r0, #0x80
0034a448  84 50 80 e5                                      str r5, [r0, #0x84]
0034a44c  60 50 90 e5                                      ldr r5, [r0, #0x60]
0034a450  70 e0 80 e2                                      add lr, r0, #0x70
0034a454  70 e0 80 e5                                      str lr, [r0, #0x70]
0034a458  64 50 80 e5                                      str r5, [r0, #0x64]
0034a45c  70 50 90 e5                                      ldr r5, [r0, #0x70]
0034a460  24 90 80 e2                                      add sb, r0, #0x24
0034a464  2c a0 80 e2                                      add sl, r0, #0x2c
0034a468  34 80 80 e2                                      add r8, r0, #0x34
0034a46c  3c 70 80 e2                                      add r7, r0, #0x3c
0034a470  44 60 80 e2                                      add r6, r0, #0x44
0034a474  68 b0 80 e2                                      add fp, r0, #0x68
0034a478  88 e0 80 e2                                      add lr, r0, #0x88
0034a47c  88 e0 80 e5                                      str lr, [r0, #0x88]
0034a480  18 c0 80 e5                                      str ip, [r0, #0x18]
0034a484  28 90 80 e5                                      str sb, [r0, #0x28]
0034a488  30 a0 80 e5                                      str sl, [r0, #0x30]
0034a48c  38 80 80 e5                                      str r8, [r0, #0x38]
0034a490  40 70 80 e5                                      str r7, [r0, #0x40]
0034a494  48 60 80 e5                                      str r6, [r0, #0x48]
0034a498  6c b0 80 e5                                      str fp, [r0, #0x6c]
0034a49c  74 50 80 e5                                      str r5, [r0, #0x74]
0034a4a0  14 c0 80 e5                                      str ip, [r0, #0x14]
0034a4a4  24 90 80 e5                                      str sb, [r0, #0x24]
0034a4a8  2c a0 80 e5                                      str sl, [r0, #0x2c]
0034a4ac  34 80 80 e5                                      str r8, [r0, #0x34]
0034a4b0  3c 70 80 e5                                      str r7, [r0, #0x3c]
0034a4b4  44 60 80 e5                                      str r6, [r0, #0x44]
0034a4b8  1c 30 80 e5                                      str r3, [r0, #0x1c]
0034a4bc  4c 30 80 e5                                      str r3, [r0, #0x4c]
0034a4c0  50 30 80 e5                                      str r3, [r0, #0x50]
0034a4c4  54 30 80 e5                                      str r3, [r0, #0x54]
0034a4c8  58 30 80 e5                                      str r3, [r0, #0x58]
0034a4cc  5c 30 80 e5                                      str r3, [r0, #0x5c]
0034a4d0  84 c0 90 e5                                      ldr ip, [r0, #0x84]
0034a4d4  88 50 90 e5                                      ldr r5, [r0, #0x88]
0034a4d8  00 10 a0 e1                                      mov r1, r0
0034a4dc  90 e0 80 e2                                      add lr, r0, #0x90
0034a4e0  68 b0 80 e5                                      str fp, [r0, #0x68]
0034a4e4  80 c0 80 e5                                      str ip, [r0, #0x80]
0034a4e8  8c 50 80 e5                                      str r5, [r0, #0x8c]
0034a4ec  94 e0 80 e5                                      str lr, [r0, #0x94]
0034a4f0  90 e0 80 e5                                      str lr, [r0, #0x90]
0034a4f4  78 30 80 e5                                      str r3, [r0, #0x78]
0034a4f8  7c 30 80 e5                                      str r3, [r0, #0x7c]
0034a4fc  9c 30 80 e5                                      str r3, [r0, #0x9c]
0034a500  00 c0 a0 e1                                      mov ip, r0
0034a504  98 30 e1 e5                                      strb r3, [r1, #0x98]!
0034a508  a4 10 80 e5                                      str r1, [r0, #0xa4]
0034a50c  a0 10 80 e5                                      str r1, [r0, #0xa0]
0034a510  a8 30 80 e5                                      str r3, [r0, #0xa8]
0034a514  b4 30 80 e5                                      str r3, [r0, #0xb4]
0034a518  00 10 a0 e1                                      mov r1, r0
0034a51c  b0 30 ec e5                                      strb r3, [ip, #0xb0]!
0034a520  bc c0 80 e5                                      str ip, [r0, #0xbc]
0034a524  b8 c0 80 e5                                      str ip, [r0, #0xb8]
0034a528  c0 30 80 e5                                      str r3, [r0, #0xc0]
0034a52c  00 c0 a0 e1                                      mov ip, r0
0034a530  cc 30 80 e5                                      str r3, [r0, #0xcc]
0034a534  c8 30 e1 e5                                      strb r3, [r1, #0xc8]!
0034a538  d4 10 80 e5                                      str r1, [r0, #0xd4]
0034a53c  d0 10 80 e5                                      str r1, [r0, #0xd0]
0034a540  01 ec 80 e2                                      add lr, r0, #0x100
0034a544  00 10 a0 e1                                      mov r1, r0
0034a548  d8 30 80 e5                                      str r3, [r0, #0xd8]
0034a54c  e4 30 80 e5                                      str r3, [r0, #0xe4]
0034a550  e0 30 ec e5                                      strb r3, [ip, #0xe0]!
0034a554  12 6e 80 e2                                      add r6, r0, #0x120
0034a558  4a 5f 80 e2                                      add r5, r0, #0x128
0034a55c  ec c0 80 e5                                      str ip, [r0, #0xec]
0034a560  04 e1 80 e5                                      str lr, [r0, #0x104]
0034a564  e8 c0 80 e5                                      str ip, [r0, #0xe8]
0034a568  00 e1 80 e5                                      str lr, [r0, #0x100]
0034a56c  00 c0 a0 e1                                      mov ip, r0
0034a570  13 ee 80 e2                                      add lr, r0, #0x130
0034a574  f0 30 80 e5                                      str r3, [r0, #0xf0]
0034a578  f8 30 80 e5                                      str r3, [r0, #0xf8]
0034a57c  0c 31 80 e5                                      str r3, [r0, #0x10c]
0034a580  08 31 e1 e5                                      strb r3, [r1, #0x108]!
0034a584  14 11 80 e5                                      str r1, [r0, #0x114]
0034a588  10 11 80 e5                                      str r1, [r0, #0x110]
0034a58c  20 61 80 e5                                      str r6, [r0, #0x120]
0034a590  24 61 80 e5                                      str r6, [r0, #0x124]
0034a594  2c 51 80 e5                                      str r5, [r0, #0x12c]
0034a598  34 e1 80 e5                                      str lr, [r0, #0x134]
0034a59c  28 51 80 e5                                      str r5, [r0, #0x128]
0034a5a0  30 e1 80 e5                                      str lr, [r0, #0x130]
0034a5a4  18 31 80 e5                                      str r3, [r0, #0x118]
0034a5a8  4c 31 80 e5                                      str r3, [r0, #0x14c]
0034a5ac  00 10 a0 e1                                      mov r1, r0
0034a5b0  48 31 ec e5                                      strb r3, [ip, #0x148]!
0034a5b4  54 c1 80 e5                                      str ip, [r0, #0x154]
0034a5b8  50 c1 80 e5                                      str ip, [r0, #0x150]
0034a5bc  58 31 80 e5                                      str r3, [r0, #0x158]
0034a5c0  00 c0 a0 e1                                      mov ip, r0
0034a5c4  68 31 80 e5                                      str r3, [r0, #0x168]
0034a5c8  64 31 e1 e5                                      strb r3, [r1, #0x164]!
0034a5cc  70 11 80 e5                                      str r1, [r0, #0x170]
0034a5d0  6c 11 80 e5                                      str r1, [r0, #0x16c]
0034a5d4  74 31 80 e5                                      str r3, [r0, #0x174]
0034a5d8  00 10 a0 e1                                      mov r1, r0
0034a5dc  80 31 80 e5                                      str r3, [r0, #0x180]
0034a5e0  7c 31 ec e5                                      strb r3, [ip, #0x17c]!
0034a5e4  88 c1 80 e5                                      str ip, [r0, #0x188]
0034a5e8  84 c1 80 e5                                      str ip, [r0, #0x184]
0034a5ec  8c 31 80 e5                                      str r3, [r0, #0x18c]
0034a5f0  98 31 80 e5                                      str r3, [r0, #0x198]
0034a5f4  94 31 e1 e5                                      strb r3, [r1, #0x194]!
0034a5f8  00 40 a0 e1                                      mov r4, r0
0034a5fc  a0 11 80 e5                                      str r1, [r0, #0x1a0]
0034a600  9c 11 80 e5                                      str r1, [r0, #0x19c]
0034a604  ac 31 c0 e5                                      strb r3, [r0, #0x1ac]
0034a608  a4 31 80 e5                                      str r3, [r0, #0x1a4]
0034a60c  29 fc ff eb                                      bl #0x3496b8
0034a610  04 00 a0 e1                                      mov r0, r4
0034a614  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0034a618  80 a6 64 00 5c 11 00 00                          .byte 0x80, 0xa6, 0x64, 0x00, 0x5c, 0x11, 0x00, 0x00

; FUNCTION 0x0034a620, declared_size=1528, range_size=1528, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager6UpdateEf
; demangled: ObjectManager::Update(float)
; decoder-mode: arm
0034a620  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034a624  c4 75 9f e5                                      ldr r7, [pc, #0x5c4]
0034a628  c4 a5 9f e5                                      ldr sl, [pc, #0x5c4]
0034a62c  00 50 a0 e1                                      mov r5, r0
0034a630  07 70 8f e0                                      add r7, pc, r7
0034a634  0a 30 97 e7                                      ldr r3, [r7, sl]
0034a638  b8 05 9f e5                                      ldr r0, [pc, #0x5b8]
0034a63c  b4 d0 4d e2                                      sub sp, sp, #0xb4
0034a640  00 30 93 e5                                      ldr r3, [r3]
0034a644  00 00 8f e0                                      add r0, pc, r0
0034a648  01 40 a0 e1                                      mov r4, r1
0034a64c  ac 30 8d e5                                      str r3, [sp, #0xac]
0034a650  17 24 ff eb                                      bl #0x3136b4
0034a654  4e cc 12 eb                                      bl #0x7fd794
0034a658  05 30 d0 e5                                      ldrb r3, [r0, #5]
0034a65c  00 00 53 e3                                      cmp r3, #0
0034a660  01 30 a0 13                                      movne r3, #1
0034a664  fd 30 c5 15                                      strbne r3, [r5, #0xfd]
0034a668  fc 30 c5 15                                      strbne r3, [r5, #0xfc]
0034a66c  88 35 9f e5                                      ldr r3, [pc, #0x588]
0034a670  03 00 97 e7                                      ldr r0, [r7, r3]
0034a674  c6 53 ff eb                                      bl #0x31f594
0034a678  00 00 50 e3                                      cmp r0, #0
0034a67c  02 00 00 0a                                      beq #0x34a68c
0034a680  44 31 d0 e5                                      ldrb r3, [r0, #0x144]
0034a684  00 00 53 e3                                      cmp r3, #0
0034a688  ff 00 00 1a                                      bne #0x34aa8c
0034a68c  05 00 a0 e1                                      mov r0, r5
0034a690  e9 db ff eb                                      bl #0x34163c
0034a694  04 10 a0 e1                                      mov r1, r4
0034a698  05 00 a0 e1                                      mov r0, r5
0034a69c  f4 d6 ff eb                                      bl #0x340274
0034a6a0  05 40 a0 e1                                      mov r4, r5
0034a6a4  05 00 a0 e1                                      mov r0, r5
0034a6a8  87 ee ff eb                                      bl #0x3460cc
0034a6ac  34 c0 b4 e5                                      ldr ip, [r4, #0x34]!
0034a6b0  04 00 5c e1                                      cmp ip, r4
0034a6b4  2c 80 85 02                                      addeq r8, r5, #0x2c
0034a6b8  10 00 00 0a                                      beq #0x34a700
0034a6bc  0c 30 a0 e1                                      mov r3, ip
0034a6c0  00 30 93 e5                                      ldr r3, [r3]
0034a6c4  03 00 54 e1                                      cmp r4, r3
0034a6c8  fc ff ff 1a                                      bne #0x34a6c0
0034a6cc  2c 80 85 e2                                      add r8, r5, #0x2c
0034a6d0  08 00 a0 e1                                      mov r0, r8
0034a6d4  68 c0 8d e5                                      str ip, [sp, #0x68]
0034a6d8  64 10 8d e2                                      add r1, sp, #0x64
0034a6dc  70 c0 8d e2                                      add ip, sp, #0x70
0034a6e0  68 20 8d e2                                      add r2, sp, #0x68
0034a6e4  6c 30 8d e2                                      add r3, sp, #0x6c
0034a6e8  00 c0 8d e5                                      str ip, [sp]
0034a6ec  64 80 8d e5                                      str r8, [sp, #0x64]
0034a6f0  6c 40 8d e5                                      str r4, [sp, #0x6c]
0034a6f4  4b eb ff eb                                      bl #0x345428
0034a6f8  04 00 a0 e1                                      mov r0, r4
0034a6fc  da ea ff eb                                      bl #0x34526c
0034a700  05 60 a0 e1                                      mov r6, r5
0034a704  3c 40 b6 e5                                      ldr r4, [r6, #0x3c]!
0034a708  06 00 54 e1                                      cmp r4, r6
0034a70c  13 00 00 0a                                      beq #0x34a760
0034a710  04 30 a0 e1                                      mov r3, r4
0034a714  00 30 93 e5                                      ldr r3, [r3]
0034a718  03 00 56 e1                                      cmp r6, r3
0034a71c  fc ff ff 1a                                      bne #0x34a714
0034a720  54 20 8d e2                                      add r2, sp, #0x54
0034a724  06 00 54 e1                                      cmp r4, r6
0034a728  48 90 8d e2                                      add sb, sp, #0x48
0034a72c  0c 20 8d e5                                      str r2, [sp, #0xc]
0034a730  0a 00 00 0a                                      beq #0x34a760
0034a734  08 10 94 e5                                      ldr r1, [r4, #8]
0034a738  29 30 d1 e5                                      ldrb r3, [r1, #0x29]
0034a73c  00 00 53 e3                                      cmp r3, #0
0034a740  f3 00 00 0a                                      beq #0x34ab14
0034a744  82 30 d1 e5                                      ldrb r3, [r1, #0x82]
0034a748  00 00 53 e3                                      cmp r3, #0
0034a74c  f3 00 00 1a                                      bne #0x34ab20
0034a750  00 b0 94 e5                                      ldr fp, [r4]
0034a754  0b 40 a0 e1                                      mov r4, fp
0034a758  06 00 54 e1                                      cmp r4, r6
0034a75c  f4 ff ff 1a                                      bne #0x34a734
0034a760  05 90 a0 e1                                      mov sb, r5
0034a764  44 60 b9 e5                                      ldr r6, [sb, #0x44]!
0034a768  06 00 59 e1                                      cmp sb, r6
0034a76c  0f 00 00 0a                                      beq #0x34a7b0
0034a770  08 40 96 e5                                      ldr r4, [r6, #8]
0034a774  ac 30 d4 e5                                      ldrb r3, [r4, #0xac]
0034a778  00 00 53 e3                                      cmp r3, #0
0034a77c  8f 00 00 1a                                      bne #0x34a9c0
0034a780  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
0034a784  00 00 53 e3                                      cmp r3, #0
0034a788  8c 00 00 0a                                      beq #0x34a9c0
0034a78c  01 10 a0 e3                                      mov r1, #1
0034a790  04 00 a0 e1                                      mov r0, r4
0034a794  ce cf ff eb                                      bl #0x33e6d4
0034a798  04 00 a0 e1                                      mov r0, r4
0034a79c  01 10 a0 e3                                      mov r1, #1
0034a7a0  9d cf ff eb                                      bl #0x33e61c
0034a7a4  00 60 96 e5                                      ldr r6, [r6]
0034a7a8  06 00 59 e1                                      cmp sb, r6
0034a7ac  ef ff ff 1a                                      bne #0x34a770
0034a7b0  00 30 a0 e3                                      mov r3, #0
0034a7b4  58 30 85 e5                                      str r3, [r5, #0x58]
0034a7b8  5c 30 85 e5                                      str r3, [r5, #0x5c]
0034a7bc  2c 40 95 e5                                      ldr r4, [r5, #0x2c]
0034a7c0  3c 30 8d e2                                      add r3, sp, #0x3c
0034a7c4  0c 30 8d e5                                      str r3, [sp, #0xc]
0034a7c8  30 34 9f e5                                      ldr r3, [pc, #0x430]
0034a7cc  24 c0 8d e2                                      add ip, sp, #0x24
0034a7d0  10 c0 8d e5                                      str ip, [sp, #0x10]
0034a7d4  30 20 8d e2                                      add r2, sp, #0x30
0034a7d8  60 c0 8d e2                                      add ip, sp, #0x60
0034a7dc  04 00 58 e1                                      cmp r8, r4
0034a7e0  70 60 85 e2                                      add r6, r5, #0x70
0034a7e4  14 20 8d e5                                      str r2, [sp, #0x14]
0034a7e8  18 30 8d e5                                      str r3, [sp, #0x18]
0034a7ec  1c c0 8d e5                                      str ip, [sp, #0x1c]
0034a7f0  39 00 00 0a                                      beq #0x34a8dc
0034a7f4  08 90 94 e5                                      ldr sb, [r4, #8]
0034a7f8  00 00 59 e3                                      cmp sb, #0
0034a7fc  32 00 00 0a                                      beq #0x34a8cc
0034a800  00 30 99 e5                                      ldr r3, [sb]
0034a804  09 00 a0 e1                                      mov r0, sb
0034a808  0f e0 a0 e1                                      mov lr, pc
0034a80c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0034a810  00 00 50 e3                                      cmp r0, #0
0034a814  92 00 00 1a                                      bne #0x34aa64
0034a818  85 30 d9 e5                                      ldrb r3, [sb, #0x85]
0034a81c  00 00 53 e3                                      cmp r3, #0
0034a820  7a 00 00 0a                                      beq #0x34aa10
0034a824  8a 30 d9 e5                                      ldrb r3, [sb, #0x8a]
0034a828  00 00 53 e3                                      cmp r3, #0
0034a82c  77 00 00 0a                                      beq #0x34aa10
0034a830  81 b0 d9 e5                                      ldrb fp, [sb, #0x81]
0034a834  00 00 5b e3                                      cmp fp, #0
0034a838  68 00 00 1a                                      bne #0x34a9e0
0034a83c  00 30 99 e5                                      ldr r3, [sb]
0034a840  09 00 a0 e1                                      mov r0, sb
0034a844  88 b0 c9 e5                                      strb fp, [sb, #0x88]
0034a848  0f e0 a0 e1                                      mov lr, pc
0034a84c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0034a850  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0034a854  09 10 a0 e1                                      mov r1, sb
0034a858  33 cd ff eb                                      bl #0x33dd2c
0034a85c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0034a860  0b 10 a0 e1                                      mov r1, fp
0034a864  55 d5 ff eb                                      bl #0x33fdc0
0034a868  00 00 50 e3                                      cmp r0, #0
0034a86c  16 00 00 0a                                      beq #0x34a8cc
0034a870  88 30 d9 e5                                      ldrb r3, [sb, #0x88]
0034a874  89 20 d9 e5                                      ldrb r2, [sb, #0x89]
0034a878  03 00 52 e1                                      cmp r2, r3
0034a87c  12 00 00 0a                                      beq #0x34a8cc
0034a880  00 00 53 e3                                      cmp r3, #0
0034a884  89 30 c9 e5                                      strb r3, [sb, #0x89]
0034a888  91 00 00 1a                                      bne #0x34aad4
0034a88c  09 10 a0 e1                                      mov r1, sb
0034a890  10 00 9d e5                                      ldr r0, [sp, #0x10]
0034a894  24 cd ff eb                                      bl #0x33dd2c
0034a898  10 00 9d e5                                      ldr r0, [sp, #0x10]
0034a89c  ac d5 ff eb                                      bl #0x33ff54
0034a8a0  00 b0 a0 e1                                      mov fp, r0
0034a8a4  70 00 95 e5                                      ldr r0, [r5, #0x70]
0034a8a8  00 00 56 e1                                      cmp r6, r0
0034a8ac  06 00 00 0a                                      beq #0x34a8cc
0034a8b0  08 30 90 e5                                      ldr r3, [r0, #8]
0034a8b4  00 90 90 e5                                      ldr sb, [r0]
0034a8b8  03 00 5b e1                                      cmp fp, r3
0034a8bc  7d 00 00 0a                                      beq #0x34aab8
0034a8c0  09 00 a0 e1                                      mov r0, sb
0034a8c4  00 00 56 e1                                      cmp r6, r0
0034a8c8  f8 ff ff 1a                                      bne #0x34a8b0
0034a8cc  00 90 94 e5                                      ldr sb, [r4]
0034a8d0  09 40 a0 e1                                      mov r4, sb
0034a8d4  04 00 58 e1                                      cmp r8, r4
0034a8d8  c5 ff ff 1a                                      bne #0x34a7f4
0034a8dc  20 53 9f e5                                      ldr r5, [pc, #0x320]
0034a8e0  94 40 8d e2                                      add r4, sp, #0x94
0034a8e4  05 60 97 e7                                      ldr r6, [r7, r5]
0034a8e8  06 00 a0 e1                                      mov r0, r6
0034a8ec  e5 b3 ff eb                                      bl #0x337888
0034a8f0  10 13 9f e5                                      ldr r1, [pc, #0x310]
0034a8f4  78 20 8d e2                                      add r2, sp, #0x78
0034a8f8  04 00 a0 e1                                      mov r0, r4
0034a8fc  01 10 8f e0                                      add r1, pc, r1
0034a900  f9 25 ff eb                                      bl #0x3140ec
0034a904  06 00 a0 e1                                      mov r0, r6
0034a908  04 10 a0 e1                                      mov r1, r4
0034a90c  00 20 a0 e3                                      mov r2, #0
0034a910  31 b5 ff eb                                      bl #0x337ddc
0034a914  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
0034a918  04 00 50 e1                                      cmp r0, r4
0034a91c  06 00 00 0a                                      beq #0x34a93c
0034a920  00 00 50 e3                                      cmp r0, #0
0034a924  04 00 00 0a                                      beq #0x34a93c
0034a928  94 10 9d e5                                      ldr r1, [sp, #0x94]
0034a92c  01 10 60 e0                                      rsb r1, r0, r1
0034a930  80 00 51 e3                                      cmp r1, #0x80
0034a934  a8 00 00 8a                                      bhi #0x34abdc
0034a938  70 f9 0e eb                                      bl #0x708f00
0034a93c  05 50 97 e7                                      ldr r5, [r7, r5]
0034a940  7c 40 8d e2                                      add r4, sp, #0x7c
0034a944  05 00 a0 e1                                      mov r0, r5
0034a948  ce b3 ff eb                                      bl #0x337888
0034a94c  b8 12 9f e5                                      ldr r1, [pc, #0x2b8]
0034a950  74 20 8d e2                                      add r2, sp, #0x74
0034a954  04 00 a0 e1                                      mov r0, r4
0034a958  01 10 8f e0                                      add r1, pc, r1
0034a95c  e2 25 ff eb                                      bl #0x3140ec
0034a960  05 00 a0 e1                                      mov r0, r5
0034a964  04 10 a0 e1                                      mov r1, r4
0034a968  00 20 a0 e3                                      mov r2, #0
0034a96c  1a b5 ff eb                                      bl #0x337ddc
0034a970  90 00 9d e5                                      ldr r0, [sp, #0x90]
0034a974  04 00 50 e1                                      cmp r0, r4
0034a978  06 00 00 0a                                      beq #0x34a998
0034a97c  00 00 50 e3                                      cmp r0, #0
0034a980  04 00 00 0a                                      beq #0x34a998
0034a984  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
0034a988  01 10 60 e0                                      rsb r1, r0, r1
0034a98c  80 00 51 e3                                      cmp r1, #0x80
0034a990  93 00 00 8a                                      bhi #0x34abe4
0034a994  59 f9 0e eb                                      bl #0x708f00
0034a998  70 02 9f e5                                      ldr r0, [pc, #0x270]
0034a99c  00 00 8f e0                                      add r0, pc, r0
0034a9a0  44 23 ff eb                                      bl #0x3136b8
0034a9a4  0a 30 97 e7                                      ldr r3, [r7, sl]
0034a9a8  ac 20 9d e5                                      ldr r2, [sp, #0xac]
0034a9ac  00 30 93 e5                                      ldr r3, [r3]
0034a9b0  03 00 52 e1                                      cmp r2, r3
0034a9b4  8c 00 00 1a                                      bne #0x34abec
0034a9b8  b4 d0 8d e2                                      add sp, sp, #0xb4
0034a9bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0034a9c0  d0 30 d4 e5                                      ldrb r3, [r4, #0xd0]
0034a9c4  00 00 53 e3                                      cmp r3, #0
0034a9c8  75 ff ff 1a                                      bne #0x34a7a4
0034a9cc  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
0034a9d0  00 00 53 e3                                      cmp r3, #0
0034a9d4  6c ff ff 1a                                      bne #0x34a78c
0034a9d8  00 60 96 e5                                      ldr r6, [r6]
0034a9dc  71 ff ff ea                                      b #0x34a7a8
0034a9e0  09 10 a0 e1                                      mov r1, sb
0034a9e4  05 00 a0 e1                                      mov r0, r5
0034a9e8  42 e2 ff eb                                      bl #0x3432f8
0034a9ec  00 90 94 e5                                      ldr sb, [r4]
0034a9f0  04 30 94 e5                                      ldr r3, [r4, #4]
0034a9f4  04 00 a0 e1                                      mov r0, r4
0034a9f8  0c 10 a0 e3                                      mov r1, #0xc
0034a9fc  00 90 83 e5                                      str sb, [r3]
0034aa00  04 30 89 e5                                      str r3, [sb, #4]
0034aa04  3d f9 0e eb                                      bl #0x708f00
0034aa08  09 40 a0 e1                                      mov r4, sb
0034aa0c  b0 ff ff ea                                      b #0x34a8d4
0034aa10  5f cb 12 eb                                      bl #0x7fd794
0034aa14  05 30 d0 e5                                      ldrb r3, [r0, #5]
0034aa18  00 00 53 e3                                      cmp r3, #0
0034aa1c  13 00 00 1a                                      bne #0x34aa70
0034aa20  00 20 a0 e3                                      mov r2, #0
0034aa24  86 20 c9 e5                                      strb r2, [sb, #0x86]
0034aa28  00 30 99 e5                                      ldr r3, [sb]
0034aa2c  09 00 a0 e1                                      mov r0, sb
0034aa30  0f e0 a0 e1                                      mov lr, pc
0034aa34  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0034aa38  00 00 50 e3                                      cmp r0, #0
0034aa3c  a2 ff ff 0a                                      beq #0x34a8cc
0034aa40  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0034aa44  09 00 a0 e1                                      mov r0, sb
0034aa48  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0034aa4c  0c 30 97 e7                                      ldr r3, [r7, ip]
0034aa50  00 20 a0 e3                                      mov r2, #0
0034aa54  60 30 8d e5                                      str r3, [sp, #0x60]
0034aa58  31 74 01 eb                                      bl #0x3a7b24
0034aa5c  00 90 94 e5                                      ldr sb, [r4]
0034aa60  9a ff ff ea                                      b #0x34a8d0
0034aa64  09 00 a0 e1                                      mov r0, sb
0034aa68  35 66 01 eb                                      bl #0x3a4344
0034aa6c  69 ff ff ea                                      b #0x34a818
0034aa70  00 30 99 e5                                      ldr r3, [sb]
0034aa74  09 00 a0 e1                                      mov r0, sb
0034aa78  0f e0 a0 e1                                      mov lr, pc
0034aa7c  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0034aa80  00 00 50 e3                                      cmp r0, #0
0034aa84  e5 ff ff 0a                                      beq #0x34aa20
0034aa88  68 ff ff ea                                      b #0x34a830
0034aa8c  98 31 d0 e5                                      ldrb r3, [r0, #0x198]
0034aa90  00 00 53 e3                                      cmp r3, #0
0034aa94  fc fe ff 1a                                      bne #0x34a68c
0034aa98  3d cb 12 eb                                      bl #0x7fd794
0034aa9c  05 30 d0 e5                                      ldrb r3, [r0, #5]
0034aaa0  00 00 53 e3                                      cmp r3, #0
0034aaa4  f8 fe ff 1a                                      bne #0x34a68c
0034aaa8  64 01 9f e5                                      ldr r0, [pc, #0x164]
0034aaac  00 00 8f e0                                      add r0, pc, r0
0034aab0  00 23 ff eb                                      bl #0x3136b8
0034aab4  ba ff ff ea                                      b #0x34a9a4
0034aab8  04 30 90 e5                                      ldr r3, [r0, #4]
0034aabc  0c 10 a0 e3                                      mov r1, #0xc
0034aac0  00 90 83 e5                                      str sb, [r3]
0034aac4  04 30 89 e5                                      str r3, [sb, #4]
0034aac8  0c f9 0e eb                                      bl #0x708f00
0034aacc  09 00 a0 e1                                      mov r0, sb
0034aad0  7b ff ff ea                                      b #0x34a8c4
0034aad4  09 10 a0 e1                                      mov r1, sb
0034aad8  14 00 9d e5                                      ldr r0, [sp, #0x14]
0034aadc  92 cc ff eb                                      bl #0x33dd2c
0034aae0  14 00 9d e5                                      ldr r0, [sp, #0x14]
0034aae4  1a d5 ff eb                                      bl #0x33ff54
0034aae8  00 90 a0 e1                                      mov sb, r0
0034aaec  06 00 a0 e1                                      mov r0, r6
0034aaf0  e6 de ff eb                                      bl #0x342690
0034aaf4  08 90 80 e5                                      str sb, [r0, #8]
0034aaf8  74 30 95 e5                                      ldr r3, [r5, #0x74]
0034aafc  00 60 80 e5                                      str r6, [r0]
0034ab00  04 30 80 e5                                      str r3, [r0, #4]
0034ab04  00 00 83 e5                                      str r0, [r3]
0034ab08  74 00 85 e5                                      str r0, [r5, #0x74]
0034ab0c  00 90 94 e5                                      ldr sb, [r4]
0034ab10  6e ff ff ea                                      b #0x34a8d0
0034ab14  82 30 d1 e5                                      ldrb r3, [r1, #0x82]
0034ab18  00 00 53 e3                                      cmp r3, #0
0034ab1c  03 00 00 0a                                      beq #0x34ab30
0034ab20  01 30 43 e2                                      sub r3, r3, #1
0034ab24  82 30 c1 e5                                      strb r3, [r1, #0x82]
0034ab28  00 b0 94 e5                                      ldr fp, [r4]
0034ab2c  08 ff ff ea                                      b #0x34a754
0034ab30  05 00 a0 e1                                      mov r0, r5
0034ab34  ac f4 ff eb                                      bl #0x347dec
0034ab38  00 00 50 e3                                      cmp r0, #0
0034ab3c  15 00 00 1a                                      bne #0x34ab98
0034ab40  08 30 94 e5                                      ldr r3, [r4, #8]
0034ab44  03 00 a0 e1                                      mov r0, r3
0034ab48  00 30 93 e5                                      ldr r3, [r3]
0034ab4c  0f e0 a0 e1                                      mov lr, pc
0034ab50  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0034ab54  00 00 50 e3                                      cmp r0, #0
0034ab58  10 00 00 1a                                      bne #0x34aba0
0034ab5c  08 10 94 e5                                      ldr r1, [r4, #8]
0034ab60  09 00 a0 e1                                      mov r0, sb
0034ab64  6e d2 ff eb                                      bl #0x33f524
0034ab68  0e 00 99 e8                                      ldm sb, {r1, r2, r3}
0034ab6c  05 00 a0 e1                                      mov r0, r5
0034ab70  cb f8 ff eb                                      bl #0x348ea4
0034ab74  00 b0 94 e5                                      ldr fp, [r4]
0034ab78  04 30 94 e5                                      ldr r3, [r4, #4]
0034ab7c  04 00 a0 e1                                      mov r0, r4
0034ab80  0c 10 a0 e3                                      mov r1, #0xc
0034ab84  00 b0 83 e5                                      str fp, [r3]
0034ab88  04 30 8b e5                                      str r3, [fp, #4]
0034ab8c  db f8 0e eb                                      bl #0x708f00
0034ab90  0b 40 a0 e1                                      mov r4, fp
0034ab94  ef fe ff ea                                      b #0x34a758
0034ab98  08 10 94 e5                                      ldr r1, [r4, #8]
0034ab9c  e8 fe ff ea                                      b #0x34a744
0034aba0  08 30 94 e5                                      ldr r3, [r4, #8]
0034aba4  03 00 a0 e1                                      mov r0, r3
0034aba8  00 30 93 e5                                      ldr r3, [r3]
0034abac  0f e0 a0 e1                                      mov lr, pc
0034abb0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0034abb4  00 00 50 e3                                      cmp r0, #0
0034abb8  e7 ff ff 0a                                      beq #0x34ab5c
0034abbc  08 10 94 e5                                      ldr r1, [r4, #8]
0034abc0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0034abc4  56 d2 ff eb                                      bl #0x33f524
0034abc8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0034abcc  05 00 a0 e1                                      mov r0, r5
0034abd0  0e 00 9c e8                                      ldm ip, {r1, r2, r3}
0034abd4  99 f9 ff eb                                      bl #0x349240
0034abd8  e5 ff ff ea                                      b #0x34ab74
0034abdc  17 16 ff eb                                      bl #0x310440
0034abe0  55 ff ff ea                                      b #0x34a93c
0034abe4  15 16 ff eb                                      bl #0x310440
0034abe8  6a ff ff ea                                      b #0x34a998
0034abec  c7 0d ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034abf0  60 a4 64 00 ac 40 00 00 3c 5d 57 00 f4 37 00 00  .byte 0x60, 0xa4, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0x3c, 0x5d, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00
0034ac00  34 11 00 00 84 08 00 00 9c 5a 57 00 60 5a 57 00  .byte 0x34, 0x11, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x9c, 0x5a, 0x57, 0x00, 0x60, 0x5a, 0x57, 0x00
0034ac10  e4 59 57 00 d4 58 57 00                          .byte 0xe4, 0x59, 0x57, 0x00, 0xd4, 0x58, 0x57, 0x00

; FUNCTION 0x0034aca0, declared_size=964, range_size=964, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager15GetObjectByNameEPKcibS1_
; demangled: ObjectManager::GetObjectByName(char const*, int, bool, char const*)
; decoder-mode: arm
0034aca0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034aca4  8c 53 9f e5                                      ldr r5, [pc, #0x38c]
0034aca8  8c c3 9f e5                                      ldr ip, [pc, #0x38c]
0034acac  74 d0 4d e2                                      sub sp, sp, #0x74
0034acb0  05 50 8f e0                                      add r5, pc, r5
0034acb4  14 c0 8d e5                                      str ip, [sp, #0x14]
0034acb8  0c c0 95 e7                                      ldr ip, [r5, ip]
0034acbc  18 10 8d e5                                      str r1, [sp, #0x18]
0034acc0  78 13 9f e5                                      ldr r1, [pc, #0x378]
0034acc4  00 c0 9c e5                                      ldr ip, [ip]
0034acc8  0c 00 8d e5                                      str r0, [sp, #0xc]
0034accc  02 40 a0 e1                                      mov r4, r2
0034acd0  02 00 a0 e1                                      mov r0, r2
0034acd4  01 10 8f e0                                      add r1, pc, r1
0034acd8  06 20 a0 e3                                      mov r2, #6
0034acdc  6c c0 8d e5                                      str ip, [sp, #0x6c]
0034ace0  03 70 a0 e1                                      mov r7, r3
0034ace4  e4 0f ff eb                                      bl #0x30ec7c
0034ace8  98 e0 dd e5                                      ldrb lr, [sp, #0x98]
0034acec  00 00 50 e3                                      cmp r0, #0
0034acf0  9c 60 9d e5                                      ldr r6, [sp, #0x9c]
0034acf4  24 e0 8d e5                                      str lr, [sp, #0x24]
0034acf8  06 00 00 0a                                      beq #0x34ad18
0034acfc  40 13 9f e5                                      ldr r1, [pc, #0x340]
0034ad00  04 00 a0 e1                                      mov r0, r4
0034ad04  10 20 a0 e3                                      mov r2, #0x10
0034ad08  01 10 8f e0                                      add r1, pc, r1
0034ad0c  da 0f ff eb                                      bl #0x30ec7c
0034ad10  00 00 50 e3                                      cmp r0, #0
0034ad14  9f 00 00 1a                                      bne #0x34af98
0034ad18  00 70 e0 e3                                      mvn r7, #0
0034ad1c  24 13 9f e5                                      ldr r1, [pc, #0x324]
0034ad20  04 00 a0 e1                                      mov r0, r4
0034ad24  01 10 8f e0                                      add r1, pc, r1
0034ad28  7b 0d ff eb                                      bl #0x30e31c
0034ad2c  00 00 50 e3                                      cmp r0, #0
0034ad30  a0 00 00 0a                                      beq #0x34afb8
0034ad34  40 e0 8d e2                                      add lr, sp, #0x40
0034ad38  0e 00 a0 e1                                      mov r0, lr
0034ad3c  20 e0 8d e5                                      str lr, [sp, #0x20]
0034ad40  f1 d1 ff eb                                      bl #0x33f50c
0034ad44  00 33 9f e5                                      ldr r3, [pc, #0x300]
0034ad48  18 00 9d e5                                      ldr r0, [sp, #0x18]
0034ad4c  fc 92 9f e5                                      ldr sb, [pc, #0x2fc]
0034ad50  fc 22 9f e5                                      ldr r2, [pc, #0x2fc]
0034ad54  03 30 8f e0                                      add r3, pc, r3
0034ad58  14 60 90 e5                                      ldr r6, [r0, #0x14]
0034ad5c  08 30 8d e5                                      str r3, [sp, #8]
0034ad60  34 30 8d e2                                      add r3, sp, #0x34
0034ad64  09 90 8f e0                                      add sb, pc, sb
0034ad68  0c 80 80 e2                                      add r8, r0, #0xc
0034ad6c  10 20 8d e5                                      str r2, [sp, #0x10]
0034ad70  28 a0 8d e2                                      add sl, sp, #0x28
0034ad74  1c 30 8d e5                                      str r3, [sp, #0x1c]
0034ad78  08 00 56 e1                                      cmp r6, r8
0034ad7c  45 00 00 0a                                      beq #0x34ae98
0034ad80  2c 30 96 e5                                      ldr r3, [r6, #0x2c]
0034ad84  00 00 53 e3                                      cmp r3, #0
0034ad88  37 00 00 0a                                      beq #0x34ae6c
0034ad8c  01 00 77 e3                                      cmn r7, #1
0034ad90  05 00 00 0a                                      beq #0x34adac
0034ad94  64 20 93 e5                                      ldr r2, [r3, #0x64]
0034ad98  02 00 57 e1                                      cmp r7, r2
0034ad9c  02 00 00 0a                                      beq #0x34adac
0034ada0  87 30 d3 e5                                      ldrb r3, [r3, #0x87]
0034ada4  00 00 53 e3                                      cmp r3, #0
0034ada8  2f 00 00 0a                                      beq #0x34ae6c
0034adac  28 00 96 e5                                      ldr r0, [r6, #0x28]
0034adb0  04 10 a0 e1                                      mov r1, r4
0034adb4  58 0d ff eb                                      bl #0x30e31c
0034adb8  00 00 50 e3                                      cmp r0, #0
0034adbc  13 00 00 1a                                      bne #0x34ae10
0034adc0  20 00 9d e5                                      ldr r0, [sp, #0x20]
0034adc4  10 10 96 e5                                      ldr r1, [r6, #0x10]
0034adc8  04 20 80 e2                                      add r2, r0, #4
0034adcc  04 00 92 e4                                      ldr r0, [r2], #4
0034add0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0034add4  00 20 92 e5                                      ldr r2, [r2]
0034add8  04 10 83 e4                                      str r1, [r3], #4
0034addc  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0034ade0  04 20 83 e5                                      str r2, [r3, #4]
0034ade4  04 00 8c e5                                      str r0, [ip, #4]
0034ade8  40 10 8d e5                                      str r1, [sp, #0x40]
0034adec  14 00 9d e5                                      ldr r0, [sp, #0x14]
0034adf0  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0034adf4  00 30 95 e7                                      ldr r3, [r5, r0]
0034adf8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0034adfc  00 30 93 e5                                      ldr r3, [r3]
0034ae00  03 00 52 e1                                      cmp r2, r3
0034ae04  8a 00 00 1a                                      bne #0x34b034
0034ae08  74 d0 8d e2                                      add sp, sp, #0x74
0034ae0c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0034ae10  09 10 a0 e1                                      mov r1, sb
0034ae14  04 00 a0 e1                                      mov r0, r4
0034ae18  3f 0d ff eb                                      bl #0x30e31c
0034ae1c  00 10 50 e2                                      subs r1, r0, #0
0034ae20  4e 00 00 0a                                      beq #0x34af60
0034ae24  08 10 9d e5                                      ldr r1, [sp, #8]
0034ae28  04 00 a0 e1                                      mov r0, r4
0034ae2c  3a 0d ff eb                                      bl #0x30e31c
0034ae30  00 10 50 e2                                      subs r1, r0, #0
0034ae34  0c 00 00 1a                                      bne #0x34ae6c
0034ae38  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0034ae3c  01 20 a0 e3                                      mov r2, #1
0034ae40  0e 30 95 e7                                      ldr r3, [r5, lr]
0034ae44  40 00 93 e5                                      ldr r0, [r3, #0x40]
0034ae48  8a 8d 00 eb                                      bl #0x36e478
0034ae4c  2c 10 96 e5                                      ldr r1, [r6, #0x2c]
0034ae50  60 b6 90 e5                                      ldr fp, [r0, #0x660]
0034ae54  0a 00 a0 e1                                      mov r0, sl
0034ae58  b3 cb ff eb                                      bl #0x33dd2c
0034ae5c  0a 00 a0 e1                                      mov r0, sl
0034ae60  3b d4 ff eb                                      bl #0x33ff54
0034ae64  00 00 5b e1                                      cmp fp, r0
0034ae68  d4 ff ff 0a                                      beq #0x34adc0
0034ae6c  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0034ae70  00 00 53 e3                                      cmp r3, #0
0034ae74  01 00 00 1a                                      bne #0x34ae80
0034ae78  2b 00 00 ea                                      b #0x34af2c
0034ae7c  02 30 a0 e1                                      mov r3, r2
0034ae80  08 20 93 e5                                      ldr r2, [r3, #8]
0034ae84  00 00 52 e3                                      cmp r2, #0
0034ae88  fb ff ff 1a                                      bne #0x34ae7c
0034ae8c  03 60 a0 e1                                      mov r6, r3
0034ae90  08 00 56 e1                                      cmp r6, r8
0034ae94  b9 ff ff 1a                                      bne #0x34ad80
0034ae98  24 e0 9d e5                                      ldr lr, [sp, #0x24]
0034ae9c  00 00 5e e3                                      cmp lr, #0
0034aea0  4c 00 00 1a                                      bne #0x34afd8
0034aea4  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
0034aea8  54 40 8d e2                                      add r4, sp, #0x54
0034aeac  03 60 95 e7                                      ldr r6, [r5, r3]
0034aeb0  06 00 a0 e1                                      mov r0, r6
0034aeb4  73 b2 ff eb                                      bl #0x337888
0034aeb8  9c 11 9f e5                                      ldr r1, [pc, #0x19c]
0034aebc  50 20 8d e2                                      add r2, sp, #0x50
0034aec0  04 00 a0 e1                                      mov r0, r4
0034aec4  01 10 8f e0                                      add r1, pc, r1
0034aec8  87 24 ff eb                                      bl #0x3140ec
0034aecc  06 00 a0 e1                                      mov r0, r6
0034aed0  04 10 a0 e1                                      mov r1, r4
0034aed4  eb b2 ff eb                                      bl #0x337a88
0034aed8  68 00 9d e5                                      ldr r0, [sp, #0x68]
0034aedc  04 00 50 e1                                      cmp r0, r4
0034aee0  06 00 00 0a                                      beq #0x34af00
0034aee4  00 00 50 e3                                      cmp r0, #0
0034aee8  04 00 00 0a                                      beq #0x34af00
0034aeec  54 10 9d e5                                      ldr r1, [sp, #0x54]
0034aef0  01 10 60 e0                                      rsb r1, r0, r1
0034aef4  80 00 51 e3                                      cmp r1, #0x80
0034aef8  4b 00 00 8a                                      bhi #0x34b02c
0034aefc  ff f7 0e eb                                      bl #0x708f00
0034af00  20 00 9d e5                                      ldr r0, [sp, #0x20]
0034af04  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0034af08  04 20 80 e2                                      add r2, r0, #4
0034af0c  04 10 92 e4                                      ldr r1, [r2], #4
0034af10  40 00 9d e5                                      ldr r0, [sp, #0x40]
0034af14  00 20 92 e5                                      ldr r2, [r2]
0034af18  04 00 83 e4                                      str r0, [r3], #4
0034af1c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0034af20  04 20 83 e5                                      str r2, [r3, #4]
0034af24  04 10 8c e5                                      str r1, [ip, #4]
0034af28  af ff ff ea                                      b #0x34adec
0034af2c  04 20 96 e5                                      ldr r2, [r6, #4]
0034af30  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0034af34  01 00 56 e1                                      cmp r6, r1
0034af38  05 00 00 1a                                      bne #0x34af54
0034af3c  02 60 a0 e1                                      mov r6, r2
0034af40  04 20 92 e5                                      ldr r2, [r2, #4]
0034af44  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0034af48  06 00 53 e1                                      cmp r3, r6
0034af4c  fa ff ff 0a                                      beq #0x34af3c
0034af50  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0034af54  03 00 52 e1                                      cmp r2, r3
0034af58  02 60 a0 11                                      movne r6, r2
0034af5c  85 ff ff ea                                      b #0x34ad78
0034af60  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0034af64  01 20 a0 e3                                      mov r2, #1
0034af68  0c 30 95 e7                                      ldr r3, [r5, ip]
0034af6c  40 00 93 e5                                      ldr r0, [r3, #0x40]
0034af70  40 8d 00 eb                                      bl #0x36e478
0034af74  2c 10 96 e5                                      ldr r1, [r6, #0x2c]
0034af78  60 b6 90 e5                                      ldr fp, [r0, #0x660]
0034af7c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0034af80  69 cb ff eb                                      bl #0x33dd2c
0034af84  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0034af88  f1 d3 ff eb                                      bl #0x33ff54
0034af8c  00 00 5b e1                                      cmp fp, r0
0034af90  a3 ff ff 1a                                      bne #0x34ae24
0034af94  89 ff ff ea                                      b #0x34adc0
0034af98  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
0034af9c  04 00 a0 e1                                      mov r0, r4
0034afa0  0b 20 a0 e3                                      mov r2, #0xb
0034afa4  01 10 8f e0                                      add r1, pc, r1
0034afa8  33 0f ff eb                                      bl #0x30ec7c
0034afac  00 00 50 e3                                      cmp r0, #0
0034afb0  59 ff ff 1a                                      bne #0x34ad1c
0034afb4  57 ff ff ea                                      b #0x34ad18
0034afb8  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0034afbc  18 10 9d e5                                      ldr r1, [sp, #0x18]
0034afc0  06 20 a0 e1                                      mov r2, r6
0034afc4  07 30 a0 e1                                      mov r3, r7
0034afc8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0034afcc  00 c0 8d e5                                      str ip, [sp]
0034afd0  23 00 00 eb                                      bl #0x34b064
0034afd4  84 ff ff ea                                      b #0x34adec
0034afd8  18 00 9d e5                                      ldr r0, [sp, #0x18]
0034afdc  18 20 9d e5                                      ldr r2, [sp, #0x18]
0034afe0  70 10 8d e2                                      add r1, sp, #0x70
0034afe4  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
0034afe8  06 00 a0 e1                                      mov r0, r6
0034afec  24 30 21 e5                                      str r3, [r1, #-0x24]!
0034aff0  01 30 83 e2                                      add r3, r3, #1
0034aff4  4c 30 82 e5                                      str r3, [r2, #0x4c]
0034aff8  4b f9 ff eb                                      bl #0x34952c
0034affc  00 60 a0 e1                                      mov r6, r0
0034b000  04 00 a0 e1                                      mov r0, r4
0034b004  92 0b ff eb                                      bl #0x30de54
0034b008  04 10 a0 e1                                      mov r1, r4
0034b00c  00 20 84 e0                                      add r2, r4, r0
0034b010  06 00 a0 e1                                      mov r0, r6
0034b014  71 16 ff eb                                      bl #0x3109e0
0034b018  20 30 9d e5                                      ldr r3, [sp, #0x20]
0034b01c  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
0034b020  04 20 83 e2                                      add r2, r3, #4
0034b024  04 00 92 e4                                      ldr r0, [r2], #4
0034b028  68 ff ff ea                                      b #0x34add0
0034b02c  03 15 ff eb                                      bl #0x310440
0034b030  b2 ff ff ea                                      b #0x34af00
0034b034  b5 0c ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034b038  e0 9d 64 00 ac 40 00 00 f4 56 57 00 40 56 57 00  .byte 0xe0, 0x9d, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x56, 0x57, 0x00, 0x40, 0x56, 0x57, 0x00
0034b048  bc 56 57 00 7c 56 57 00 64 56 57 00 f4 37 00 00  .byte 0xbc, 0x56, 0x57, 0x00, 0x7c, 0x56, 0x57, 0x00, 0x64, 0x56, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00
0034b058  84 08 00 00 34 55 57 00 2c 54 57 00              .byte 0x84, 0x08, 0x00, 0x00, 0x34, 0x55, 0x57, 0x00, 0x2c, 0x54, 0x57, 0x00

; FUNCTION 0x0034b064, declared_size=268, range_size=268, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager22GetHighestThreatPlayerEPKcib
; demangled: ObjectManager::GetHighestThreatPlayer(char const*, int, bool)
; decoder-mode: arm
0034b064  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0034b068  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
0034b06c  f0 50 9f e5                                      ldr r5, [pc, #0xf0]
0034b070  38 d0 4d e2                                      sub sp, sp, #0x38
0034b074  04 40 8f e0                                      add r4, pc, r4
0034b078  05 e0 94 e7                                      ldr lr, [r4, r5]
0034b07c  0c 60 8d e2                                      add r6, sp, #0xc
0034b080  00 c0 a0 e3                                      mov ip, #0
0034b084  00 e0 9e e5                                      ldr lr, [lr]
0034b088  00 70 a0 e1                                      mov r7, r0
0034b08c  06 00 a0 e1                                      mov r0, r6
0034b090  04 c0 8d e5                                      str ip, [sp, #4]
0034b094  34 e0 8d e5                                      str lr, [sp, #0x34]
0034b098  00 c0 8d e5                                      str ip, [sp]
0034b09c  01 80 a0 e1                                      mov r8, r1
0034b0a0  fe fe ff eb                                      bl #0x34aca0
0034b0a4  06 00 a0 e1                                      mov r0, r6
0034b0a8  a9 d3 ff eb                                      bl #0x33ff54
0034b0ac  f2 0f 80 e2                                      add r0, r0, #0x3c8
0034b0b0  58 26 02 eb                                      bl #0x3d4a18
0034b0b4  00 20 50 e2                                      subs r2, r0, #0
0034b0b8  0a 00 00 0a                                      beq #0x34b0e8
0034b0bc  08 10 a0 e1                                      mov r1, r8
0034b0c0  07 00 a0 e1                                      mov r0, r7
0034b0c4  e2 d6 ff eb                                      bl #0x340c54
0034b0c8  05 30 94 e7                                      ldr r3, [r4, r5]
0034b0cc  34 20 9d e5                                      ldr r2, [sp, #0x34]
0034b0d0  07 00 a0 e1                                      mov r0, r7
0034b0d4  00 30 93 e5                                      ldr r3, [r3]
0034b0d8  03 00 52 e1                                      cmp r2, r3
0034b0dc  1e 00 00 1a                                      bne #0x34b15c
0034b0e0  38 d0 8d e2                                      add sp, sp, #0x38
0034b0e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0034b0e8  78 30 9f e5                                      ldr r3, [pc, #0x78]
0034b0ec  1c 60 8d e2                                      add r6, sp, #0x1c
0034b0f0  03 80 94 e7                                      ldr r8, [r4, r3]
0034b0f4  08 00 a0 e1                                      mov r0, r8
0034b0f8  e2 b1 ff eb                                      bl #0x337888
0034b0fc  68 10 9f e5                                      ldr r1, [pc, #0x68]
0034b100  18 20 8d e2                                      add r2, sp, #0x18
0034b104  06 00 a0 e1                                      mov r0, r6
0034b108  01 10 8f e0                                      add r1, pc, r1
0034b10c  f6 23 ff eb                                      bl #0x3140ec
0034b110  08 00 a0 e1                                      mov r0, r8
0034b114  06 10 a0 e1                                      mov r1, r6
0034b118  5a b2 ff eb                                      bl #0x337a88
0034b11c  30 00 9d e5                                      ldr r0, [sp, #0x30]
0034b120  06 00 50 e1                                      cmp r0, r6
0034b124  06 00 00 0a                                      beq #0x34b144
0034b128  00 00 50 e3                                      cmp r0, #0
0034b12c  04 00 00 0a                                      beq #0x34b144
0034b130  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0034b134  01 10 60 e0                                      rsb r1, r0, r1
0034b138  80 00 51 e3                                      cmp r1, #0x80
0034b13c  04 00 00 8a                                      bhi #0x34b154
0034b140  6e f7 0e eb                                      bl #0x708f00
0034b144  07 00 a0 e1                                      mov r0, r7
0034b148  00 10 a0 e3                                      mov r1, #0
0034b14c  f4 d0 ff eb                                      bl #0x33f524
0034b150  dc ff ff ea                                      b #0x34b0c8
0034b154  b9 14 ff eb                                      bl #0x310440
0034b158  f9 ff ff ea                                      b #0x34b144
0034b15c  6b 0c ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034b160  1c 9a 64 00 ac 40 00 00 84 08 00 00 08 53 57 00  .byte 0x1c, 0x9a, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x08, 0x53, 0x57, 0x00

; FUNCTION 0x0034b270, declared_size=688, range_size=688, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager3AddEP10ObjectBasePKcS3_ib
; demangled: ObjectManager::Add(ObjectBase*, char const*, char const*, int, bool)
; decoder-mode: arm
0034b270  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034b274  7c 42 9f e5                                      ldr r4, [pc, #0x27c]
0034b278  2c d0 4d e2                                      sub sp, sp, #0x2c
0034b27c  00 60 52 e2                                      subs r6, r2, #0
0034b280  04 40 8f e0                                      add r4, pc, r4
0034b284  00 50 a0 e1                                      mov r5, r0
0034b288  01 80 a0 e1                                      mov r8, r1
0034b28c  03 70 a0 e1                                      mov r7, r3
0034b290  50 b0 9d e5                                      ldr fp, [sp, #0x50]
0034b294  54 a0 9d e5                                      ldr sl, [sp, #0x54]
0034b298  58 90 dd e5                                      ldrb sb, [sp, #0x58]
0034b29c  18 00 00 0a                                      beq #0x34b304
0034b2a0  00 00 57 e3                                      cmp r7, #0
0034b2a4  2b 00 00 0a                                      beq #0x34b358
0034b2a8  00 40 a0 e3                                      mov r4, #0
0034b2ac  01 c0 a0 e3                                      mov ip, #1
0034b2b0  07 20 a0 e1                                      mov r2, r7
0034b2b4  0a 30 a0 e1                                      mov r3, sl
0034b2b8  05 00 a0 e1                                      mov r0, r5
0034b2bc  08 10 a0 e1                                      mov r1, r8
0034b2c0  00 c0 8d e5                                      str ip, [sp]
0034b2c4  04 40 8d e5                                      str r4, [sp, #4]
0034b2c8  74 fe ff eb                                      bl #0x34aca0
0034b2cc  05 00 a0 e1                                      mov r0, r5
0034b2d0  04 10 a0 e1                                      mov r1, r4
0034b2d4  b9 d2 ff eb                                      bl #0x33fdc0
0034b2d8  04 00 50 e1                                      cmp r0, r4
0034b2dc  32 00 00 0a                                      beq #0x34b3ac
0034b2e0  04 00 56 e1                                      cmp r6, r4
0034b2e4  03 00 00 0a                                      beq #0x34b2f8
0034b2e8  06 00 a0 e1                                      mov r0, r6
0034b2ec  00 30 96 e5                                      ldr r3, [r6]
0034b2f0  0f e0 a0 e1                                      mov lr, pc
0034b2f4  04 f0 93 e5                                      ldr pc, [r3, #4]
0034b2f8  05 00 a0 e1                                      mov r0, r5
0034b2fc  2c d0 8d e2                                      add sp, sp, #0x2c
0034b300  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0034b304  f0 31 9f e5                                      ldr r3, [pc, #0x1f0]
0034b308  03 30 94 e7                                      ldr r3, [r4, r3]
0034b30c  00 30 93 e5                                      ldr r3, [r3]
0034b310  02 00 53 e3                                      cmp r3, #2
0034b314  00 60 86 05                                      streq r6, [r6]
0034b318  e0 ff ff 0a                                      beq #0x34b2a0
0034b31c  01 00 53 e3                                      cmp r3, #1
0034b320  de ff ff 1a                                      bne #0x34b2a0
0034b324  d4 01 9f e5                                      ldr r0, [pc, #0x1d4]
0034b328  d4 11 9f e5                                      ldr r1, [pc, #0x1d4]
0034b32c  d4 21 9f e5                                      ldr r2, [pc, #0x1d4]
0034b330  00 00 94 e7                                      ldr r0, [r4, r0]
0034b334  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
0034b338  28 c4 00 e3                                      movw ip, #0x428
0034b33c  01 10 8f e0                                      add r1, pc, r1
0034b340  02 20 8f e0                                      add r2, pc, r2
0034b344  03 30 8f e0                                      add r3, pc, r3
0034b348  a8 00 80 e2                                      add r0, r0, #0xa8
0034b34c  00 c0 8d e5                                      str ip, [sp]
0034b350  2b 0b ff eb                                      bl #0x30e004
0034b354  d1 ff ff ea                                      b #0x34b2a0
0034b358  9c 31 9f e5                                      ldr r3, [pc, #0x19c]
0034b35c  03 30 94 e7                                      ldr r3, [r4, r3]
0034b360  00 30 93 e5                                      ldr r3, [r3]
0034b364  02 00 53 e3                                      cmp r3, #2
0034b368  00 70 87 05                                      streq r7, [r7]
0034b36c  cd ff ff 0a                                      beq #0x34b2a8
0034b370  01 00 53 e3                                      cmp r3, #1
0034b374  cb ff ff 1a                                      bne #0x34b2a8
0034b378  80 01 9f e5                                      ldr r0, [pc, #0x180]
0034b37c  8c 11 9f e5                                      ldr r1, [pc, #0x18c]
0034b380  8c 21 9f e5                                      ldr r2, [pc, #0x18c]
0034b384  00 00 94 e7                                      ldr r0, [r4, r0]
0034b388  88 31 9f e5                                      ldr r3, [pc, #0x188]
0034b38c  29 c4 00 e3                                      movw ip, #0x429
0034b390  01 10 8f e0                                      add r1, pc, r1
0034b394  02 20 8f e0                                      add r2, pc, r2
0034b398  03 30 8f e0                                      add r3, pc, r3
0034b39c  a8 00 80 e2                                      add r0, r0, #0xa8
0034b3a0  00 c0 8d e5                                      str ip, [sp]
0034b3a4  16 0b ff eb                                      bl #0x30e004
0034b3a8  be ff ff ea                                      b #0x34b2a8
0034b3ac  05 10 a0 e1                                      mov r1, r5
0034b3b0  0c 00 88 e2                                      add r0, r8, #0xc
0034b3b4  33 d2 ff eb                                      bl #0x33fc88
0034b3b8  18 60 80 e5                                      str r6, [r0, #0x18]
0034b3bc  50 30 98 e5                                      ldr r3, [r8, #0x50]
0034b3c0  05 20 a0 e1                                      mov r2, r5
0034b3c4  07 10 a0 e1                                      mov r1, r7
0034b3c8  01 30 83 e2                                      add r3, r3, #1
0034b3cc  50 30 88 e5                                      str r3, [r8, #0x50]
0034b3d0  04 60 85 e5                                      str r6, [r5, #4]
0034b3d4  2c c0 96 e5                                      ldr ip, [r6, #0x2c]
0034b3d8  04 e0 92 e4                                      ldr lr, [r2], #4
0034b3dc  06 00 a0 e1                                      mov r0, r6
0034b3e0  0c 30 a0 e1                                      mov r3, ip
0034b3e4  04 e0 83 e4                                      str lr, [r3], #4
0034b3e8  04 e0 95 e5                                      ldr lr, [r5, #4]
0034b3ec  18 40 8d e2                                      add r4, sp, #0x18
0034b3f0  04 e0 8c e5                                      str lr, [ip, #4]
0034b3f4  04 20 92 e5                                      ldr r2, [r2, #4]
0034b3f8  04 20 83 e5                                      str r2, [r3, #4]
0034b3fc  05 fe ff eb                                      bl #0x34ac18
0034b400  0b 00 a0 e1                                      mov r0, fp
0034b404  92 0a ff eb                                      bl #0x30de54
0034b408  0b 10 a0 e1                                      mov r1, fp
0034b40c  00 20 8b e0                                      add r2, fp, r0
0034b410  48 00 86 e2                                      add r0, r6, #0x48
0034b414  71 15 ff eb                                      bl #0x3109e0
0034b418  06 10 a0 e1                                      mov r1, r6
0034b41c  04 00 a0 e1                                      mov r0, r4
0034b420  64 a0 86 e5                                      str sl, [r6, #0x64]
0034b424  40 ca ff eb                                      bl #0x33dd2c
0034b428  04 00 a0 e1                                      mov r0, r4
0034b42c  c8 d2 ff eb                                      bl #0x33ff54
0034b430  00 70 50 e2                                      subs r7, r0, #0
0034b434  08 00 00 0a                                      beq #0x34b45c
0034b438  60 40 88 e2                                      add r4, r8, #0x60
0034b43c  04 00 a0 e1                                      mov r0, r4
0034b440  92 dc ff eb                                      bl #0x342690
0034b444  08 70 80 e5                                      str r7, [r0, #8]
0034b448  64 30 98 e5                                      ldr r3, [r8, #0x64]
0034b44c  00 40 80 e5                                      str r4, [r0]
0034b450  04 30 80 e5                                      str r3, [r0, #4]
0034b454  00 00 83 e5                                      str r0, [r3]
0034b458  64 00 88 e5                                      str r0, [r8, #0x64]
0034b45c  0c 40 8d e2                                      add r4, sp, #0xc
0034b460  04 00 a0 e1                                      mov r0, r4
0034b464  06 10 a0 e1                                      mov r1, r6
0034b468  2f ca ff eb                                      bl #0x33dd2c
0034b46c  04 00 a0 e1                                      mov r0, r4
0034b470  00 10 a0 e3                                      mov r1, #0
0034b474  51 d2 ff eb                                      bl #0x33fdc0
0034b478  00 40 50 e2                                      subs r4, r0, #0
0034b47c  02 00 00 0a                                      beq #0x34b48c
0034b480  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
0034b484  05 00 53 e3                                      cmp r3, #5
0034b488  05 00 00 0a                                      beq #0x34b4a4
0034b48c  00 00 59 e3                                      cmp sb, #0
0034b490  98 ff ff 0a                                      beq #0x34b2f8
0034b494  08 00 a0 e1                                      mov r0, r8
0034b498  06 10 a0 e1                                      mov r1, r6
0034b49c  47 df ff eb                                      bl #0x3431c0
0034b4a0  94 ff ff ea                                      b #0x34b2f8
0034b4a4  5c 00 96 e5                                      ldr r0, [r6, #0x5c]
0034b4a8  58 20 96 e5                                      ldr r2, [r6, #0x58]
0034b4ac  02 20 60 e0                                      rsb r2, r0, r2
0034b4b0  06 00 52 e3                                      cmp r2, #6
0034b4b4  f4 ff ff 1a                                      bne #0x34b48c
0034b4b8  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0034b4bc  01 10 8f e0                                      add r1, pc, r1
0034b4c0  46 0c ff eb                                      bl #0x30e5e0
0034b4c4  00 00 50 e3                                      cmp r0, #0
0034b4c8  ef ff ff 1a                                      bne #0x34b48c
0034b4cc  0c 30 a0 e3                                      mov r3, #0xc
0034b4d0  28 00 8d e2                                      add r0, sp, #0x28
0034b4d4  04 30 20 e5                                      str r3, [r0, #-4]!
0034b4d8  78 f6 0e eb                                      bl #0x708ec0
0034b4dc  08 40 80 e5                                      str r4, [r0, #8]
0034b4e0  6c 30 98 e5                                      ldr r3, [r8, #0x6c]
0034b4e4  68 20 88 e2                                      add r2, r8, #0x68
0034b4e8  0c 00 80 e8                                      stm r0, {r2, r3}
0034b4ec  00 00 83 e5                                      str r0, [r3]
0034b4f0  6c 00 88 e5                                      str r0, [r8, #0x6c]
0034b4f4  e4 ff ff ea                                      b #0x34b48c
; mapping-symbol data/literal pool
0034b4f8  10 98 64 00 c0 39 00 00 c0 19 00 00 9c 30 57 00  .byte 0x10, 0x98, 0x64, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x9c, 0x30, 0x57, 0x00
0034b508  d0 4e 57 00 54 4f 57 00 48 30 57 00 54 5d 59 00  .byte 0xd0, 0x4e, 0x57, 0x00, 0x54, 0x4f, 0x57, 0x00, 0x48, 0x30, 0x57, 0x00, 0x54, 0x5d, 0x59, 0x00
0034b518  00 4f 57 00 74 4f 57 00                          .byte 0x00, 0x4f, 0x57, 0x00, 0x74, 0x4f, 0x57, 0x00

; FUNCTION 0x0034b520, declared_size=516, range_size=516, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager12GetNewObjectEPKcS1_ib
; demangled: ObjectManager::GetNewObject(char const*, char const*, int, bool)
; decoder-mode: arm
0034b520  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034b524  64 d0 4d e2                                      sub sp, sp, #0x64
0034b528  18 30 8d e5                                      str r3, [sp, #0x18]
0034b52c  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
0034b530  c8 71 9f e5                                      ldr r7, [pc, #0x1c8]
0034b534  c8 a1 9f e5                                      ldr sl, [pc, #0x1c8]
0034b538  03 30 8f e0                                      add r3, pc, r3
0034b53c  24 30 8d e5                                      str r3, [sp, #0x24]
0034b540  c0 31 9f e5                                      ldr r3, [pc, #0x1c0]
0034b544  07 70 8f e0                                      add r7, pc, r7
0034b548  8c e0 dd e5                                      ldrb lr, [sp, #0x8c]
0034b54c  0a c0 97 e7                                      ldr ip, [r7, sl]
0034b550  03 30 8f e0                                      add r3, pc, r3
0034b554  28 30 8d e5                                      str r3, [sp, #0x28]
0034b558  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
0034b55c  00 c0 9c e5                                      ldr ip, [ip]
0034b560  1c e0 8d e5                                      str lr, [sp, #0x1c]
0034b564  a4 51 9f e5                                      ldr r5, [pc, #0x1a4]
0034b568  a4 e1 9f e5                                      ldr lr, [pc, #0x1a4]
0034b56c  03 30 8f e0                                      add r3, pc, r3
0034b570  a0 91 9f e5                                      ldr sb, [pc, #0x1a0]
0034b574  20 e0 8d e5                                      str lr, [sp, #0x20]
0034b578  5c c0 8d e5                                      str ip, [sp, #0x5c]
0034b57c  00 80 a0 e1                                      mov r8, r0
0034b580  14 10 8d e5                                      str r1, [sp, #0x14]
0034b584  02 60 a0 e1                                      mov r6, r2
0034b588  05 50 8f e0                                      add r5, pc, r5
0034b58c  2c 30 8d e5                                      str r3, [sp, #0x2c]
0034b590  00 40 a0 e3                                      mov r4, #0
0034b594  02 00 00 ea                                      b #0x34b5a4
0034b598  08 40 84 e2                                      add r4, r4, #8
0034b59c  42 0f 54 e3                                      cmp r4, #0x108
0034b5a0  30 00 00 0a                                      beq #0x34b668
0034b5a4  04 b0 95 e7                                      ldr fp, [r5, r4]
0034b5a8  06 00 a0 e1                                      mov r0, r6
0034b5ac  0b 10 a0 e1                                      mov r1, fp
0034b5b0  59 0b ff eb                                      bl #0x30e31c
0034b5b4  00 00 50 e3                                      cmp r0, #0
0034b5b8  f6 ff ff 1a                                      bne #0x34b598
0034b5bc  04 30 85 e0                                      add r3, r5, r4
0034b5c0  0f e0 a0 e1                                      mov lr, pc
0034b5c4  04 f0 93 e5                                      ldr pc, [r3, #4]
0034b5c8  00 00 50 e3                                      cmp r0, #0
0034b5cc  12 00 00 0a                                      beq #0x34b61c
0034b5d0  20 b0 80 e5                                      str fp, [r0, #0x20]
0034b5d4  88 c0 9d e5                                      ldr ip, [sp, #0x88]
0034b5d8  00 20 a0 e1                                      mov r2, r0
0034b5dc  14 10 9d e5                                      ldr r1, [sp, #0x14]
0034b5e0  04 c0 8d e5                                      str ip, [sp, #4]
0034b5e4  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0034b5e8  18 30 9d e5                                      ldr r3, [sp, #0x18]
0034b5ec  08 00 a0 e1                                      mov r0, r8
0034b5f0  00 60 8d e5                                      str r6, [sp]
0034b5f4  08 c0 8d e5                                      str ip, [sp, #8]
0034b5f8  1c ff ff eb                                      bl #0x34b270
0034b5fc  0a 30 97 e7                                      ldr r3, [r7, sl]
0034b600  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0034b604  08 00 a0 e1                                      mov r0, r8
0034b608  00 30 93 e5                                      ldr r3, [r3]
0034b60c  03 00 52 e1                                      cmp r2, r3
0034b610  38 00 00 1a                                      bne #0x34b6f8
0034b614  64 d0 8d e2                                      add sp, sp, #0x64
0034b618  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0034b61c  09 30 97 e7                                      ldr r3, [r7, sb]
0034b620  00 30 93 e5                                      ldr r3, [r3]
0034b624  02 00 53 e3                                      cmp r3, #2
0034b628  00 00 80 05                                      streq r0, [r0]
0034b62c  d9 ff ff 0a                                      beq #0x34b598
0034b630  01 00 53 e3                                      cmp r3, #1
0034b634  d7 ff ff 1a                                      bne #0x34b598
0034b638  20 30 9d e5                                      ldr r3, [sp, #0x20]
0034b63c  1e c5 00 e3                                      movw ip, #0x51e
0034b640  24 10 9d e5                                      ldr r1, [sp, #0x24]
0034b644  03 00 97 e7                                      ldr r0, [r7, r3]
0034b648  28 20 9d e5                                      ldr r2, [sp, #0x28]
0034b64c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0034b650  a8 00 80 e2                                      add r0, r0, #0xa8
0034b654  08 40 84 e2                                      add r4, r4, #8
0034b658  00 c0 8d e5                                      str ip, [sp]
0034b65c  68 0a ff eb                                      bl #0x30e004
0034b660  42 0f 54 e3                                      cmp r4, #0x108
0034b664  ce ff ff 1a                                      bne #0x34b5a4
0034b668  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0034b66c  44 40 8d e2                                      add r4, sp, #0x44
0034b670  03 50 97 e7                                      ldr r5, [r7, r3]
0034b674  05 00 a0 e1                                      mov r0, r5
0034b678  82 b0 ff eb                                      bl #0x337888
0034b67c  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0034b680  40 20 8d e2                                      add r2, sp, #0x40
0034b684  04 00 a0 e1                                      mov r0, r4
0034b688  01 10 8f e0                                      add r1, pc, r1
0034b68c  96 22 ff eb                                      bl #0x3140ec
0034b690  05 00 a0 e1                                      mov r0, r5
0034b694  04 10 a0 e1                                      mov r1, r4
0034b698  fa b0 ff eb                                      bl #0x337a88
0034b69c  58 00 9d e5                                      ldr r0, [sp, #0x58]
0034b6a0  04 00 50 e1                                      cmp r0, r4
0034b6a4  06 00 00 0a                                      beq #0x34b6c4
0034b6a8  00 00 50 e3                                      cmp r0, #0
0034b6ac  04 00 00 0a                                      beq #0x34b6c4
0034b6b0  44 10 9d e5                                      ldr r1, [sp, #0x44]
0034b6b4  01 10 60 e0                                      rsb r1, r0, r1
0034b6b8  80 00 51 e3                                      cmp r1, #0x80
0034b6bc  0b 00 00 8a                                      bhi #0x34b6f0
0034b6c0  0e f6 0e eb                                      bl #0x708f00
0034b6c4  34 40 8d e2                                      add r4, sp, #0x34
0034b6c8  04 00 a0 e1                                      mov r0, r4
0034b6cc  8e cf ff eb                                      bl #0x33f50c
0034b6d0  34 00 9d e5                                      ldr r0, [sp, #0x34]
0034b6d4  08 10 94 e5                                      ldr r1, [r4, #8]
0034b6d8  38 20 9d e5                                      ldr r2, [sp, #0x38]
0034b6dc  08 30 a0 e1                                      mov r3, r8
0034b6e0  04 00 83 e4                                      str r0, [r3], #4
0034b6e4  04 10 83 e5                                      str r1, [r3, #4]
0034b6e8  04 20 88 e5                                      str r2, [r8, #4]
0034b6ec  c2 ff ff ea                                      b #0x34b5fc
0034b6f0  52 13 ff eb                                      bl #0x310440
0034b6f4  f2 ff ff ea                                      b #0x34b6c4
0034b6f8  04 0b ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034b6fc  a0 2e 57 00 4c 95 64 00 ac 40 00 00 c0 4c 57 00  .byte 0xa0, 0x2e, 0x57, 0x00, 0x4c, 0x95, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x4c, 0x57, 0x00
0034b70c  2c 4d 57 00 70 12 61 00 c0 19 00 00 c0 39 00 00  .byte 0x2c, 0x4d, 0x57, 0x00, 0x70, 0x12, 0x61, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
0034b71c  84 08 00 00 70 4d 57 00                          .byte 0x84, 0x08, 0x00, 0x00, 0x70, 0x4d, 0x57, 0x00

; FUNCTION 0x0034b724, declared_size=324, range_size=324, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager5SpawnEPKcS1_bb
; demangled: ObjectManager::Spawn(char const*, char const*, bool, bool)
; decoder-mode: arm
0034b724  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0034b728  08 d0 4d e2                                      sub sp, sp, #8
0034b72c  24 c0 dd e5                                      ldrb ip, [sp, #0x24]
0034b730  00 e0 e0 e3                                      mvn lr, #0
0034b734  00 40 a0 e1                                      mov r4, r0
0034b738  00 e0 8d e5                                      str lr, [sp]
0034b73c  04 c0 8d e5                                      str ip, [sp, #4]
0034b740  01 60 a0 e1                                      mov r6, r1
0034b744  02 50 a0 e1                                      mov r5, r2
0034b748  03 70 a0 e1                                      mov r7, r3
0034b74c  20 80 dd e5                                      ldrb r8, [sp, #0x20]
0034b750  72 ff ff eb                                      bl #0x34b520
0034b754  04 00 a0 e1                                      mov r0, r4
0034b758  00 10 a0 e3                                      mov r1, #0
0034b75c  97 d1 ff eb                                      bl #0x33fdc0
0034b760  00 00 50 e3                                      cmp r0, #0
0034b764  22 00 00 0a                                      beq #0x34b7f4
0034b768  01 10 a0 e3                                      mov r1, #1
0034b76c  04 00 a0 e1                                      mov r0, r4
0034b770  92 d1 ff eb                                      bl #0x33fdc0
0034b774  04 00 80 e2                                      add r0, r0, #4
0034b778  7e 21 07 eb                                      bl #0x513d78
0034b77c  01 10 a0 e3                                      mov r1, #1
0034b780  04 00 a0 e1                                      mov r0, r4
0034b784  8d d1 ff eb                                      bl #0x33fdc0
0034b788  04 00 80 e2                                      add r0, r0, #4
0034b78c  d6 1f 07 eb                                      bl #0x5136ec
0034b790  01 10 a0 e3                                      mov r1, #1
0034b794  04 00 a0 e1                                      mov r0, r4
0034b798  88 d1 ff eb                                      bl #0x33fdc0
0034b79c  07 10 a0 e1                                      mov r1, r7
0034b7a0  1c fd ff eb                                      bl #0x34ac18
0034b7a4  01 10 a0 e3                                      mov r1, #1
0034b7a8  04 00 a0 e1                                      mov r0, r4
0034b7ac  83 d1 ff eb                                      bl #0x33fdc0
0034b7b0  00 70 a0 e1                                      mov r7, r0
0034b7b4  05 00 a0 e1                                      mov r0, r5
0034b7b8  a5 09 ff eb                                      bl #0x30de54
0034b7bc  05 10 a0 e1                                      mov r1, r5
0034b7c0  00 20 85 e0                                      add r2, r5, r0
0034b7c4  48 00 87 e2                                      add r0, r7, #0x48
0034b7c8  84 14 ff eb                                      bl #0x3109e0
0034b7cc  00 00 58 e3                                      cmp r8, #0
0034b7d0  18 00 00 0a                                      beq #0x34b838
0034b7d4  01 10 a0 e3                                      mov r1, #1
0034b7d8  04 00 a0 e1                                      mov r0, r4
0034b7dc  77 d1 ff eb                                      bl #0x33fdc0
0034b7e0  00 30 90 e5                                      ldr r3, [r0]
0034b7e4  0f e0 a0 e1                                      mov lr, pc
0034b7e8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0034b7ec  00 00 50 e3                                      cmp r0, #0
0034b7f0  02 00 00 1a                                      bne #0x34b800
0034b7f4  04 00 a0 e1                                      mov r0, r4
0034b7f8  08 d0 8d e2                                      add sp, sp, #8
0034b7fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0034b800  00 10 a0 e3                                      mov r1, #0
0034b804  04 00 a0 e1                                      mov r0, r4
0034b808  6c d1 ff eb                                      bl #0x33fdc0
0034b80c  34 50 86 e2                                      add r5, r6, #0x34
0034b810  00 70 a0 e1                                      mov r7, r0
0034b814  05 00 a0 e1                                      mov r0, r5
0034b818  52 de ff eb                                      bl #0x343168
0034b81c  08 70 80 e5                                      str r7, [r0, #8]
0034b820  38 30 96 e5                                      ldr r3, [r6, #0x38]
0034b824  00 50 80 e5                                      str r5, [r0]
0034b828  04 30 80 e5                                      str r3, [r0, #4]
0034b82c  00 00 83 e5                                      str r0, [r3]
0034b830  38 00 86 e5                                      str r0, [r6, #0x38]
0034b834  ee ff ff ea                                      b #0x34b7f4
0034b838  01 10 a0 e3                                      mov r1, #1
0034b83c  04 00 a0 e1                                      mov r0, r4
0034b840  5e d1 ff eb                                      bl #0x33fdc0
0034b844  00 30 90 e5                                      ldr r3, [r0]
0034b848  0f e0 a0 e1                                      mov lr, pc
0034b84c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0034b850  04 00 a0 e1                                      mov r0, r4
0034b854  01 10 a0 e3                                      mov r1, #1
0034b858  58 d1 ff eb                                      bl #0x33fdc0
0034b85c  01 10 a0 e3                                      mov r1, #1
0034b860  9b cb ff eb                                      bl #0x33e6d4
0034b864  da ff ff ea                                      b #0x34b7d4

; FUNCTION 0x0034b868, declared_size=892, range_size=892, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager11LoadFromXMLEP12TiXmlElementPKcRK7Point3DIfEi
; demangled: ObjectManager::LoadFromXML(TiXmlElement*, char const*, Point3D<float> const&, int)
; decoder-mode: arm
0034b868  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034b86c  38 43 9f e5                                      ldr r4, [pc, #0x338]
0034b870  38 53 9f e5                                      ldr r5, [pc, #0x338]
0034b874  00 70 51 e2                                      subs r7, r1, #0
0034b878  04 40 8f e0                                      add r4, pc, r4
0034b87c  05 10 94 e7                                      ldr r1, [r4, r5]
0034b880  02 a0 a0 e1                                      mov sl, r2
0034b884  97 df 4d e2                                      sub sp, sp, #0x25c
0034b888  00 20 91 e5                                      ldr r2, [r1]
0034b88c  00 b0 a0 e1                                      mov fp, r0
0034b890  0c 30 8d e5                                      str r3, [sp, #0xc]
0034b894  54 22 8d e5                                      str r2, [sp, #0x254]
0034b898  a4 00 00 0a                                      beq #0x34bb30
0034b89c  10 13 9f e5                                      ldr r1, [pc, #0x310]
0034b8a0  07 00 a0 e1                                      mov r0, r7
0034b8a4  01 10 8f e0                                      add r1, pc, r1
0034b8a8  f0 24 07 eb                                      bl #0x514c70
0034b8ac  04 13 9f e5                                      ldr r1, [pc, #0x304]
0034b8b0  00 80 a0 e1                                      mov r8, r0
0034b8b4  07 00 a0 e1                                      mov r0, r7
0034b8b8  01 10 8f e0                                      add r1, pc, r1
0034b8bc  eb 24 07 eb                                      bl #0x514c70
0034b8c0  00 90 50 e2                                      subs sb, r0, #0
0034b8c4  84 00 00 0a                                      beq #0x34badc
0034b8c8  00 00 58 e3                                      cmp r8, #0
0034b8cc  82 00 00 0a                                      beq #0x34badc
0034b8d0  2c 60 8d e2                                      add r6, sp, #0x2c
0034b8d4  06 00 a0 e1                                      mov r0, r6
0034b8d8  0b cf ff eb                                      bl #0x33f50c
0034b8dc  00 00 5a e3                                      cmp sl, #0
0034b8e0  04 00 00 0a                                      beq #0x34b8f8
0034b8e4  0a 00 a0 e1                                      mov r0, sl
0034b8e8  08 10 a0 e1                                      mov r1, r8
0034b8ec  8a 0a ff eb                                      bl #0x30e31c
0034b8f0  00 00 50 e3                                      cmp r0, #0
0034b8f4  78 00 00 1a                                      bne #0x34badc
0034b8f8  bc 12 9f e5                                      ldr r1, [pc, #0x2bc]
0034b8fc  09 00 a0 e1                                      mov r0, sb
0034b900  01 10 8f e0                                      add r1, pc, r1
0034b904  84 0a ff eb                                      bl #0x30e31c
0034b908  00 00 50 e3                                      cmp r0, #0
0034b90c  79 00 00 0a                                      beq #0x34baf8
0034b910  4f af 8d e2                                      add sl, sp, #0x13c
0034b914  09 10 a0 e1                                      mov r1, sb
0034b918  0a 00 a0 e1                                      mov r0, sl
0034b91c  70 0c ff eb                                      bl #0x30eae4
0034b920  98 12 9f e5                                      ldr r1, [pc, #0x298]
0034b924  0a 20 a0 e1                                      mov r2, sl
0034b928  3c 00 8d e2                                      add r0, sp, #0x3c
0034b92c  01 10 8f e0                                      add r1, pc, r1
0034b930  53 30 a0 e3                                      mov r3, #0x53
0034b934  6a 0c ff eb                                      bl #0x30eae4
0034b938  80 c2 9d e5                                      ldr ip, [sp, #0x280]
0034b93c  10 a0 8d e2                                      add sl, sp, #0x10
0034b940  09 30 a0 e1                                      mov r3, sb
0034b944  0b 10 a0 e1                                      mov r1, fp
0034b948  0a 00 a0 e1                                      mov r0, sl
0034b94c  08 20 a0 e1                                      mov r2, r8
0034b950  01 90 a0 e3                                      mov sb, #1
0034b954  00 c0 8d e5                                      str ip, [sp]
0034b958  04 90 8d e5                                      str sb, [sp, #4]
0034b95c  ef fe ff eb                                      bl #0x34b520
0034b960  14 10 9d e5                                      ldr r1, [sp, #0x14]
0034b964  04 30 86 e2                                      add r3, r6, #4
0034b968  10 20 9d e5                                      ldr r2, [sp, #0x10]
0034b96c  04 10 83 e4                                      str r1, [r3], #4
0034b970  08 c0 9a e5                                      ldr ip, [sl, #8]
0034b974  2c 60 8d e2                                      add r6, sp, #0x2c
0034b978  06 00 a0 e1                                      mov r0, r6
0034b97c  00 10 a0 e3                                      mov r1, #0
0034b980  00 c0 83 e5                                      str ip, [r3]
0034b984  2c 20 8d e5                                      str r2, [sp, #0x2c]
0034b988  0c d1 ff eb                                      bl #0x33fdc0
0034b98c  00 00 50 e3                                      cmp r0, #0
0034b990  51 00 00 0a                                      beq #0x34badc
0034b994  09 10 a0 e1                                      mov r1, sb
0034b998  06 00 a0 e1                                      mov r0, r6
0034b99c  07 d1 ff eb                                      bl #0x33fdc0
0034b9a0  04 00 80 e2                                      add r0, r0, #4
0034b9a4  f3 20 07 eb                                      bl #0x513d78
0034b9a8  14 12 9f e5                                      ldr r1, [pc, #0x214]
0034b9ac  07 00 a0 e1                                      mov r0, r7
0034b9b0  01 10 8f e0                                      add r1, pc, r1
0034b9b4  ad 24 07 eb                                      bl #0x514c70
0034b9b8  00 b0 50 e2                                      subs fp, r0, #0
0034b9bc  15 00 00 0a                                      beq #0x34ba18
0034b9c0  09 10 a0 e1                                      mov r1, sb
0034b9c4  06 00 a0 e1                                      mov r0, r6
0034b9c8  fc d0 ff eb                                      bl #0x33fdc0
0034b9cc  8f 9f 8d e2                                      add sb, sp, #0x23c
0034b9d0  04 a0 80 e2                                      add sl, r0, #4
0034b9d4  0b 10 a0 e1                                      mov r1, fp
0034b9d8  38 20 8d e2                                      add r2, sp, #0x38
0034b9dc  09 00 a0 e1                                      mov r0, sb
0034b9e0  c1 21 ff eb                                      bl #0x3140ec
0034b9e4  0a 00 a0 e1                                      mov r0, sl
0034b9e8  09 10 a0 e1                                      mov r1, sb
0034b9ec  7e 21 07 eb                                      bl #0x513fec
0034b9f0  50 02 9d e5                                      ldr r0, [sp, #0x250]
0034b9f4  09 00 50 e1                                      cmp r0, sb
0034b9f8  06 00 00 0a                                      beq #0x34ba18
0034b9fc  00 00 50 e3                                      cmp r0, #0
0034ba00  04 00 00 0a                                      beq #0x34ba18
0034ba04  3c 12 9d e5                                      ldr r1, [sp, #0x23c]
0034ba08  01 10 60 e0                                      rsb r1, r0, r1
0034ba0c  80 00 51 e3                                      cmp r1, #0x80
0034ba10  62 00 00 8a                                      bhi #0x34bba0
0034ba14  39 f5 0e eb                                      bl #0x708f00
0034ba18  01 10 a0 e3                                      mov r1, #1
0034ba1c  06 00 a0 e1                                      mov r0, r6
0034ba20  e6 d0 ff eb                                      bl #0x33fdc0
0034ba24  04 00 80 e2                                      add r0, r0, #4
0034ba28  2f 1f 07 eb                                      bl #0x5136ec
0034ba2c  01 10 a0 e3                                      mov r1, #1
0034ba30  06 00 a0 e1                                      mov r0, r6
0034ba34  e1 d0 ff eb                                      bl #0x33fdc0
0034ba38  07 10 a0 e1                                      mov r1, r7
0034ba3c  04 00 80 e2                                      add r0, r0, #4
0034ba40  ee 1f 07 eb                                      bl #0x513a00
0034ba44  7c 11 9f e5                                      ldr r1, [pc, #0x17c]
0034ba48  08 00 a0 e1                                      mov r0, r8
0034ba4c  01 10 8f e0                                      add r1, pc, r1
0034ba50  31 0a ff eb                                      bl #0x30e31c
0034ba54  00 00 50 e3                                      cmp r0, #0
0034ba58  49 00 00 0a                                      beq #0x34bb84
0034ba5c  01 10 a0 e3                                      mov r1, #1
0034ba60  06 00 a0 e1                                      mov r0, r6
0034ba64  d5 d0 ff eb                                      bl #0x33fdc0
0034ba68  00 30 90 e5                                      ldr r3, [r0]
0034ba6c  0f e0 a0 e1                                      mov lr, pc
0034ba70  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0034ba74  00 00 50 e3                                      cmp r0, #0
0034ba78  17 00 00 0a                                      beq #0x34badc
0034ba7c  06 00 a0 e1                                      mov r0, r6
0034ba80  17 d1 ff eb                                      bl #0x33fee4
0034ba84  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0034ba88  00 80 a0 e1                                      mov r8, r0
0034ba8c  64 01 90 e5                                      ldr r0, [r0, #0x164]
0034ba90  04 10 93 e5                                      ldr r1, [r3, #4]
0034ba94  42 0c ff eb                                      bl #0x30eba4
0034ba98  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0034ba9c  00 70 a0 e1                                      mov r7, r0
0034baa0  68 01 98 e5                                      ldr r0, [r8, #0x168]
0034baa4  08 10 9c e5                                      ldr r1, [ip, #8]
0034baa8  3d 0c ff eb                                      bl #0x30eba4
0034baac  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0034bab0  00 60 a0 e1                                      mov r6, r0
0034bab4  60 01 98 e5                                      ldr r0, [r8, #0x160]
0034bab8  00 10 93 e5                                      ldr r1, [r3]
0034babc  38 0c ff eb                                      bl #0x30eba4
0034bac0  20 10 8d e2                                      add r1, sp, #0x20
0034bac4  20 00 8d e5                                      str r0, [sp, #0x20]
0034bac8  01 20 a0 e3                                      mov r2, #1
0034bacc  08 00 a0 e1                                      mov r0, r8
0034bad0  24 70 8d e5                                      str r7, [sp, #0x24]
0034bad4  28 60 8d e5                                      str r6, [sp, #0x28]
0034bad8  b5 20 01 eb                                      bl #0x393db4
0034badc  05 30 94 e7                                      ldr r3, [r4, r5]
0034bae0  54 22 9d e5                                      ldr r2, [sp, #0x254]
0034bae4  00 30 93 e5                                      ldr r3, [r3]
0034bae8  03 00 52 e1                                      cmp r2, r3
0034baec  2d 00 00 1a                                      bne #0x34bba8
0034baf0  97 df 8d e2                                      add sp, sp, #0x25c
0034baf4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0034baf8  4f af 8d e2                                      add sl, sp, #0x13c
0034bafc  09 10 a0 e1                                      mov r1, sb
0034bb00  0a 00 a0 e1                                      mov r0, sl
0034bb04  f6 0b ff eb                                      bl #0x30eae4
0034bb08  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
0034bb0c  3c 90 8d e2                                      add sb, sp, #0x3c
0034bb10  0a 20 a0 e1                                      mov r2, sl
0034bb14  01 10 8f e0                                      add r1, pc, r1
0034bb18  09 00 a0 e1                                      mov r0, sb
0034bb1c  53 30 a0 e3                                      mov r3, #0x53
0034bb20  ef 0b ff eb                                      bl #0x30eae4
0034bb24  00 c0 e0 e3                                      mvn ip, #0
0034bb28  80 c2 8d e5                                      str ip, [sp, #0x280]
0034bb2c  81 ff ff ea                                      b #0x34b938
0034bb30  98 30 9f e5                                      ldr r3, [pc, #0x98]
0034bb34  03 30 94 e7                                      ldr r3, [r4, r3]
0034bb38  00 30 93 e5                                      ldr r3, [r3]
0034bb3c  02 00 53 e3                                      cmp r3, #2
0034bb40  00 70 87 05                                      streq r7, [r7]
0034bb44  e4 ff ff 0a                                      beq #0x34badc
0034bb48  01 00 53 e3                                      cmp r3, #1
0034bb4c  e2 ff ff 1a                                      bne #0x34badc
0034bb50  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
0034bb54  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
0034bb58  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
0034bb5c  00 00 94 e7                                      ldr r0, [r4, r0]
0034bb60  78 30 9f e5                                      ldr r3, [pc, #0x78]
0034bb64  83 cf a0 e3                                      mov ip, #0x20c
0034bb68  01 10 8f e0                                      add r1, pc, r1
0034bb6c  02 20 8f e0                                      add r2, pc, r2
0034bb70  03 30 8f e0                                      add r3, pc, r3
0034bb74  a8 00 80 e2                                      add r0, r0, #0xa8
0034bb78  00 c0 8d e5                                      str ip, [sp]
0034bb7c  20 09 ff eb                                      bl #0x30e004
0034bb80  d5 ff ff ea                                      b #0x34badc
0034bb84  06 00 a0 e1                                      mov r0, r6
0034bb88  01 10 a0 e3                                      mov r1, #1
0034bb8c  8b d0 ff eb                                      bl #0x33fdc0
0034bb90  00 30 90 e5                                      ldr r3, [r0]
0034bb94  0f e0 a0 e1                                      mov lr, pc
0034bb98  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0034bb9c  ae ff ff ea                                      b #0x34ba5c
0034bba0  26 12 ff eb                                      bl #0x310440
0034bba4  9b ff ff ea                                      b #0x34ba18
0034bba8  d8 09 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034bbac  18 92 64 00 ac 40 00 00 d4 48 57 00 30 58 59 00  .byte 0x18, 0x92, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd4, 0x48, 0x57, 0x00, 0x30, 0x58, 0x59, 0x00
0034bbbc  40 4b 57 00 2c 4b 57 00 b0 4a 57 00 24 4a 57 00  .byte 0x40, 0x4b, 0x57, 0x00, 0x2c, 0x4b, 0x57, 0x00, 0xb0, 0x4a, 0x57, 0x00, 0x24, 0x4a, 0x57, 0x00
0034bbcc  44 49 57 00 c0 39 00 00 c0 19 00 00 70 28 57 00  .byte 0x44, 0x49, 0x57, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x70, 0x28, 0x57, 0x00
0034bbdc  cc 48 57 00 28 47 57 00                          .byte 0xcc, 0x48, 0x57, 0x00, 0x28, 0x47, 0x57, 0x00

; FUNCTION 0x0034bbe4, declared_size=48, range_size=48, mode=arm
; class-group: ObjectManager
; alias: _ZN13ObjectManager11LoadFromXMLEP12TiXmlElementPKc
; demangled: ObjectManager::LoadFromXML(TiXmlElement*, char const*)
; decoder-mode: arm
0034bbe4  04 e0 2d e5                                      str lr, [sp, #-4]!
0034bbe8  1c d0 4d e2                                      sub sp, sp, #0x1c
0034bbec  00 c0 a0 e3                                      mov ip, #0
0034bbf0  00 e0 e0 e3                                      mvn lr, #0
0034bbf4  0c 30 8d e2                                      add r3, sp, #0xc
0034bbf8  14 c0 8d e5                                      str ip, [sp, #0x14]
0034bbfc  00 e0 8d e5                                      str lr, [sp]
0034bc00  0c c0 8d e5                                      str ip, [sp, #0xc]
0034bc04  10 c0 8d e5                                      str ip, [sp, #0x10]
0034bc08  16 ff ff eb                                      bl #0x34b868
0034bc0c  1c d0 8d e2                                      add sp, sp, #0x1c
0034bc10  00 80 bd e8                                      ldm sp!, {pc}
