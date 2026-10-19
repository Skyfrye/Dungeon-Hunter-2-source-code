; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00475364, declared_size=80, range_size=80, mode=arm
; class-group: AnimSetManager
; alias: _ZN14AnimSetManagerC2Ev
; demangled: AnimSetManager::AnimSetManager()
; decoder-mode: arm
00475364  40 10 9f e5                                      ldr r1, [pc, #0x40]
00475368  04 40 2d e5                                      str r4, [sp, #-4]!
0047536c  3c 40 9f e5                                      ldr r4, [pc, #0x3c]
00475370  01 10 8f e0                                      add r1, pc, r1
00475374  00 c0 a0 e3                                      mov ip, #0
00475378  04 40 91 e7                                      ldr r4, [r1, r4]
0047537c  00 20 a0 e1                                      mov r2, r0
00475380  08 c0 80 e5                                      str ip, [r0, #8]
00475384  08 40 84 e2                                      add r4, r4, #8
00475388  00 40 80 e5                                      str r4, [r0]
0047538c  04 c0 e2 e5                                      strb ip, [r2, #4]!
00475390  00 40 e0 e3                                      mvn r4, #0
00475394  1c 40 80 e5                                      str r4, [r0, #0x1c]
00475398  10 20 80 e5                                      str r2, [r0, #0x10]
0047539c  14 c0 80 e5                                      str ip, [r0, #0x14]
004753a0  0c 20 80 e5                                      str r2, [r0, #0xc]
004753a4  10 00 bd e8                                      ldm sp!, {r4}
004753a8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
004753ac  20 f7 51 00 6c 43 00 00                          .byte 0x20, 0xf7, 0x51, 0x00, 0x6c, 0x43, 0x00, 0x00

; FUNCTION 0x004753b4, declared_size=80, range_size=80, mode=arm
; class-group: AnimSetManager
; alias: _ZN14AnimSetManagerC1Ev
; demangled: AnimSetManager::AnimSetManager()
; decoder-mode: arm
004753b4  40 10 9f e5                                      ldr r1, [pc, #0x40]
004753b8  04 40 2d e5                                      str r4, [sp, #-4]!
004753bc  3c 40 9f e5                                      ldr r4, [pc, #0x3c]
004753c0  01 10 8f e0                                      add r1, pc, r1
004753c4  00 c0 a0 e3                                      mov ip, #0
004753c8  04 40 91 e7                                      ldr r4, [r1, r4]
004753cc  00 20 a0 e1                                      mov r2, r0
004753d0  08 c0 80 e5                                      str ip, [r0, #8]
004753d4  08 40 84 e2                                      add r4, r4, #8
004753d8  00 40 80 e5                                      str r4, [r0]
004753dc  04 c0 e2 e5                                      strb ip, [r2, #4]!
004753e0  00 40 e0 e3                                      mvn r4, #0
004753e4  1c 40 80 e5                                      str r4, [r0, #0x1c]
004753e8  10 20 80 e5                                      str r2, [r0, #0x10]
004753ec  14 c0 80 e5                                      str ip, [r0, #0x14]
004753f0  0c 20 80 e5                                      str r2, [r0, #0xc]
004753f4  10 00 bd e8                                      ldm sp!, {r4}
004753f8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
004753fc  d0 f6 51 00 6c 43 00 00                          .byte 0xd0, 0xf6, 0x51, 0x00, 0x6c, 0x43, 0x00, 0x00

; FUNCTION 0x00475404, declared_size=92, range_size=92, mode=arm
; class-group: AnimSetManager
; alias: _ZNK14AnimSetManager6ExistsEi
; demangled: AnimSetManager::Exists(int) const
; decoder-mode: arm
00475404  08 30 90 e5                                      ldr r3, [r0, #8]
00475408  04 00 80 e2                                      add r0, r0, #4
0047540c  00 00 53 e3                                      cmp r3, #0
00475410  10 00 00 0a                                      beq #0x475458
00475414  00 c0 a0 e1                                      mov ip, r0
00475418  00 00 00 ea                                      b #0x475420
0047541c  02 30 a0 e1                                      mov r3, r2
00475420  10 20 93 e5                                      ldr r2, [r3, #0x10]
00475424  02 00 51 e1                                      cmp r1, r2
00475428  0c 20 93 c5                                      ldrgt r2, [r3, #0xc]
0047542c  08 20 93 d5                                      ldrle r2, [r3, #8]
00475430  0c 30 a0 c1                                      movgt r3, ip
00475434  03 c0 a0 e1                                      mov ip, r3
00475438  00 00 52 e3                                      cmp r2, #0
0047543c  f6 ff ff 1a                                      bne #0x47541c
00475440  03 00 50 e1                                      cmp r0, r3
00475444  03 00 00 0a                                      beq #0x475458
00475448  10 30 93 e5                                      ldr r3, [r3, #0x10]
0047544c  03 00 51 e1                                      cmp r1, r3
00475450  01 00 a0 a3                                      movge r0, #1
00475454  1e ff 2f a1                                      bxge lr
00475458  00 00 a0 e3                                      mov r0, #0
0047545c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00475460, declared_size=40, range_size=40, mode=arm
; class-group: AnimSetManager
; alias: _ZN14AnimSetManager11DBG_SetNameEiPKc
; demangled: AnimSetManager::DBG_SetName(int, char const*)
; decoder-mode: arm
00475460  08 30 90 e5                                      ldr r3, [r0, #8]
00475464  00 00 53 e3                                      cmp r3, #0
00475468  1e ff 2f 01                                      bxeq lr
0047546c  10 20 93 e5                                      ldr r2, [r3, #0x10]
00475470  02 00 51 e1                                      cmp r1, r2
00475474  08 30 93 d5                                      ldrle r3, [r3, #8]
00475478  0c 30 93 c5                                      ldrgt r3, [r3, #0xc]
0047547c  00 00 53 e3                                      cmp r3, #0
00475480  f9 ff ff 1a                                      bne #0x47546c
00475484  1e ff 2f e1                                      bx lr

; FUNCTION 0x00475488, declared_size=244, range_size=244, mode=arm
; class-group: AnimSetManager
; alias: _ZNK14AnimSetManager12DBG_DumpInfoEv
; demangled: AnimSetManager::DBG_DumpInfo() const
; decoder-mode: arm
00475488  30 00 2d e9                                      push {r4, r5}
0047548c  0c c0 90 e5                                      ldr ip, [r0, #0xc]
00475490  04 40 80 e2                                      add r4, r0, #4
00475494  04 00 5c e1                                      cmp ip, r4
00475498  19 00 00 0a                                      beq #0x475504
0047549c  24 30 9c e5                                      ldr r3, [ip, #0x24]
004754a0  1c 00 8c e2                                      add r0, ip, #0x1c
004754a4  00 00 53 e1                                      cmp r3, r0
004754a8  0a 00 00 0a                                      beq #0x4754d8
004754ac  0c 20 93 e5                                      ldr r2, [r3, #0xc]
004754b0  00 00 52 e3                                      cmp r2, #0
004754b4  01 00 00 1a                                      bne #0x4754c0
004754b8  13 00 00 ea                                      b #0x47550c
004754bc  03 20 a0 e1                                      mov r2, r3
004754c0  08 30 92 e5                                      ldr r3, [r2, #8]
004754c4  00 00 53 e3                                      cmp r3, #0
004754c8  fb ff ff 1a                                      bne #0x4754bc
004754cc  02 30 a0 e1                                      mov r3, r2
004754d0  03 00 50 e1                                      cmp r0, r3
004754d4  f4 ff ff 1a                                      bne #0x4754ac
004754d8  0c 20 9c e5                                      ldr r2, [ip, #0xc]
004754dc  00 00 52 e3                                      cmp r2, #0
004754e0  16 00 00 0a                                      beq #0x475540
004754e4  02 c0 a0 e1                                      mov ip, r2
004754e8  00 00 00 ea                                      b #0x4754f0
004754ec  03 c0 a0 e1                                      mov ip, r3
004754f0  08 30 9c e5                                      ldr r3, [ip, #8]
004754f4  00 00 53 e3                                      cmp r3, #0
004754f8  fb ff ff 1a                                      bne #0x4754ec
004754fc  0c 00 54 e1                                      cmp r4, ip
00475500  e5 ff ff 1a                                      bne #0x47549c
00475504  30 00 bd e8                                      pop {r4, r5}
00475508  1e ff 2f e1                                      bx lr
0047550c  04 10 93 e5                                      ldr r1, [r3, #4]
00475510  0c 50 91 e5                                      ldr r5, [r1, #0xc]
00475514  03 00 55 e1                                      cmp r5, r3
00475518  05 00 00 1a                                      bne #0x475534
0047551c  01 30 a0 e1                                      mov r3, r1
00475520  04 10 91 e5                                      ldr r1, [r1, #4]
00475524  0c 20 91 e5                                      ldr r2, [r1, #0xc]
00475528  03 00 52 e1                                      cmp r2, r3
0047552c  fa ff ff 0a                                      beq #0x47551c
00475530  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00475534  01 00 52 e1                                      cmp r2, r1
00475538  01 30 a0 11                                      movne r3, r1
0047553c  e3 ff ff ea                                      b #0x4754d0
00475540  04 30 9c e5                                      ldr r3, [ip, #4]
00475544  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00475548  0c 00 51 e1                                      cmp r1, ip
0047554c  05 00 00 1a                                      bne #0x475568
00475550  03 c0 a0 e1                                      mov ip, r3
00475554  04 30 93 e5                                      ldr r3, [r3, #4]
00475558  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0047555c  0c 00 52 e1                                      cmp r2, ip
00475560  fa ff ff 0a                                      beq #0x475550
00475564  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00475568  02 00 53 e1                                      cmp r3, r2
0047556c  03 c0 a0 11                                      movne ip, r3
00475570  0c 00 54 e1                                      cmp r4, ip
00475574  c8 ff ff 1a                                      bne #0x47549c
00475578  e1 ff ff ea                                      b #0x475504

; FUNCTION 0x0047559c, declared_size=136, range_size=136, mode=arm
; class-group: AnimSetManager
; alias: _ZN14AnimSetManager9GetClipIdEii
; demangled: AnimSetManager::GetClipId(int, int)
; decoder-mode: arm
0047559c  70 40 2d e9                                      push {r4, r5, r6, lr}
004755a0  02 60 a0 e1                                      mov r6, r2
004755a4  00 50 a0 e1                                      mov r5, r0
004755a8  01 40 a0 e1                                      mov r4, r1
004755ac  94 ff ff eb                                      bl #0x475404
004755b0  00 00 50 e3                                      cmp r0, #0
004755b4  18 00 00 0a                                      beq #0x47561c
004755b8  08 30 95 e5                                      ldr r3, [r5, #8]
004755bc  04 50 85 e2                                      add r5, r5, #4
004755c0  00 00 53 e3                                      cmp r3, #0
004755c4  0f 00 00 0a                                      beq #0x475608
004755c8  05 10 a0 e1                                      mov r1, r5
004755cc  00 00 00 ea                                      b #0x4755d4
004755d0  02 30 a0 e1                                      mov r3, r2
004755d4  10 20 93 e5                                      ldr r2, [r3, #0x10]
004755d8  02 00 54 e1                                      cmp r4, r2
004755dc  0c 20 93 c5                                      ldrgt r2, [r3, #0xc]
004755e0  08 20 93 d5                                      ldrle r2, [r3, #8]
004755e4  01 30 a0 c1                                      movgt r3, r1
004755e8  03 10 a0 e1                                      mov r1, r3
004755ec  00 00 52 e3                                      cmp r2, #0
004755f0  f6 ff ff 1a                                      bne #0x4755d0
004755f4  03 00 55 e1                                      cmp r5, r3
004755f8  02 00 00 0a                                      beq #0x475608
004755fc  10 20 93 e5                                      ldr r2, [r3, #0x10]
00475600  02 00 54 e1                                      cmp r4, r2
00475604  03 50 a0 a1                                      movge r5, r3
00475608  14 00 85 e2                                      add r0, r5, #0x14
0047560c  06 10 a0 e1                                      mov r1, r6
00475610  b7 c2 fb eb                                      bl #0x3660f4
00475614  20 00 90 e5                                      ldr r0, [r0, #0x20]
00475618  70 80 bd e8                                      pop {r4, r5, r6, pc}
0047561c  00 00 e0 e3                                      mvn r0, #0
00475620  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00475664, declared_size=68, range_size=68, mode=arm
; class-group: AnimSetManager
; alias: _ZN14AnimSetManager5FlushEv
; demangled: AnimSetManager::Flush()
; decoder-mode: arm
00475664  70 40 2d e9                                      push {r4, r5, r6, lr}
00475668  14 30 90 e5                                      ldr r3, [r0, #0x14]
0047566c  00 40 a0 e1                                      mov r4, r0
00475670  00 00 53 e3                                      cmp r3, #0
00475674  08 00 00 0a                                      beq #0x47569c
00475678  04 50 80 e2                                      add r5, r0, #4
0047567c  05 00 a0 e1                                      mov r0, r5
00475680  08 10 94 e5                                      ldr r1, [r4, #8]
00475684  e6 ff ff eb                                      bl #0x475624
00475688  00 30 a0 e3                                      mov r3, #0
0047568c  10 50 84 e5                                      str r5, [r4, #0x10]
00475690  14 30 84 e5                                      str r3, [r4, #0x14]
00475694  0c 50 84 e5                                      str r5, [r4, #0xc]
00475698  08 30 84 e5                                      str r3, [r4, #8]
0047569c  00 30 e0 e3                                      mvn r3, #0
004756a0  1c 30 84 e5                                      str r3, [r4, #0x1c]
004756a4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004756a8, declared_size=100, range_size=100, mode=arm
; class-group: AnimSetManager
; alias: _ZN14AnimSetManagerD1Ev
; demangled: AnimSetManager::~AnimSetManager()
; decoder-mode: arm
004756a8  54 30 9f e5                                      ldr r3, [pc, #0x54]
004756ac  54 20 9f e5                                      ldr r2, [pc, #0x54]
004756b0  70 40 2d e9                                      push {r4, r5, r6, lr}
004756b4  03 30 8f e0                                      add r3, pc, r3
004756b8  02 20 93 e7                                      ldr r2, [r3, r2]
004756bc  00 40 a0 e1                                      mov r4, r0
004756c0  08 20 82 e2                                      add r2, r2, #8
004756c4  00 20 80 e5                                      str r2, [r0]
004756c8  e5 ff ff eb                                      bl #0x475664
004756cc  14 30 94 e5                                      ldr r3, [r4, #0x14]
004756d0  00 00 53 e3                                      cmp r3, #0
004756d4  08 00 00 0a                                      beq #0x4756fc
004756d8  04 50 84 e2                                      add r5, r4, #4
004756dc  05 00 a0 e1                                      mov r0, r5
004756e0  08 10 94 e5                                      ldr r1, [r4, #8]
004756e4  ce ff ff eb                                      bl #0x475624
004756e8  00 30 a0 e3                                      mov r3, #0
004756ec  10 50 84 e5                                      str r5, [r4, #0x10]
004756f0  14 30 84 e5                                      str r3, [r4, #0x14]
004756f4  0c 50 84 e5                                      str r5, [r4, #0xc]
004756f8  08 30 84 e5                                      str r3, [r4, #8]
004756fc  04 00 a0 e1                                      mov r0, r4
00475700  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00475704  dc f3 51 00 6c 43 00 00                          .byte 0xdc, 0xf3, 0x51, 0x00, 0x6c, 0x43, 0x00, 0x00

; FUNCTION 0x0047570c, declared_size=28, range_size=28, mode=arm
; class-group: AnimSetManager
; alias: _ZN14AnimSetManagerD0Ev
; demangled: AnimSetManager::~AnimSetManager()
; decoder-mode: arm
0047570c  10 40 2d e9                                      push {r4, lr}
00475710  00 40 a0 e1                                      mov r4, r0
00475714  e3 ff ff eb                                      bl #0x4756a8
00475718  04 00 a0 e1                                      mov r0, r4
0047571c  47 6b fa eb                                      bl #0x310440
00475720  04 00 a0 e1                                      mov r0, r4
00475724  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00475728, declared_size=100, range_size=100, mode=arm
; class-group: AnimSetManager
; alias: _ZN14AnimSetManagerD2Ev
; demangled: AnimSetManager::~AnimSetManager()
; decoder-mode: arm
00475728  54 30 9f e5                                      ldr r3, [pc, #0x54]
0047572c  54 20 9f e5                                      ldr r2, [pc, #0x54]
00475730  70 40 2d e9                                      push {r4, r5, r6, lr}
00475734  03 30 8f e0                                      add r3, pc, r3
00475738  02 20 93 e7                                      ldr r2, [r3, r2]
0047573c  00 40 a0 e1                                      mov r4, r0
00475740  08 20 82 e2                                      add r2, r2, #8
00475744  00 20 80 e5                                      str r2, [r0]
00475748  c5 ff ff eb                                      bl #0x475664
0047574c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00475750  00 00 53 e3                                      cmp r3, #0
00475754  08 00 00 0a                                      beq #0x47577c
00475758  04 50 84 e2                                      add r5, r4, #4
0047575c  05 00 a0 e1                                      mov r0, r5
00475760  08 10 94 e5                                      ldr r1, [r4, #8]
00475764  ae ff ff eb                                      bl #0x475624
00475768  00 30 a0 e3                                      mov r3, #0
0047576c  10 50 84 e5                                      str r5, [r4, #0x10]
00475770  14 30 84 e5                                      str r3, [r4, #0x14]
00475774  0c 50 84 e5                                      str r5, [r4, #0xc]
00475778  08 30 84 e5                                      str r3, [r4, #8]
0047577c  04 00 a0 e1                                      mov r0, r4
00475780  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00475784  5c f3 51 00 6c 43 00 00                          .byte 0x5c, 0xf3, 0x51, 0x00, 0x6c, 0x43, 0x00, 0x00

; FUNCTION 0x004761cc, declared_size=248, range_size=248, mode=arm
; class-group: AnimSetManager
; alias: _ZN14AnimSetManager23GetSynchronizedAnimatorEi
; demangled: AnimSetManager::GetSynchronizedAnimator(int)
; decoder-mode: arm
004761cc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004761d0  1c d0 4d e2                                      sub sp, sp, #0x1c
004761d4  04 10 8d e5                                      str r1, [sp, #4]
004761d8  00 50 a0 e1                                      mov r5, r0
004761dc  88 fc ff eb                                      bl #0x475404
004761e0  00 40 50 e2                                      subs r4, r0, #0
004761e4  02 00 00 1a                                      bne #0x4761f4
004761e8  04 00 a0 e1                                      mov r0, r4
004761ec  1c d0 8d e2                                      add sp, sp, #0x1c
004761f0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
004761f4  04 00 85 e2                                      add r0, r5, #4
004761f8  04 10 8d e2                                      add r1, sp, #4
004761fc  95 ff ff eb                                      bl #0x476058
00476200  20 30 90 e5                                      ldr r3, [r0, #0x20]
00476204  00 50 a0 e1                                      mov r5, r0
00476208  70 20 d3 e5                                      ldrb r2, [r3, #0x70]
0047620c  00 00 52 e3                                      cmp r2, #0
00476210  26 00 00 1a                                      bne #0x4762b0
00476214  00 30 a0 e3                                      mov r3, #0
00476218  10 30 8d e5                                      str r3, [sp, #0x10]
0047621c  08 30 8d e5                                      str r3, [sp, #8]
00476220  0c 30 8d e5                                      str r3, [sp, #0xc]
00476224  20 30 95 e5                                      ldr r3, [r5, #0x20]
00476228  00 10 a0 e3                                      mov r1, #0
0047622c  c8 00 a0 e3                                      mov r0, #0xc8
00476230  00 00 53 e3                                      cmp r3, #0
00476234  14 30 8d e5                                      str r3, [sp, #0x14]
00476238  04 20 93 15                                      ldrne r2, [r3, #4]
0047623c  08 60 8d e2                                      add r6, sp, #8
00476240  01 20 82 12                                      addne r2, r2, #1
00476244  04 20 83 15                                      strne r2, [r3, #4]
00476248  c8 68 fa eb                                      bl #0x310570
0047624c  14 10 8d e2                                      add r1, sp, #0x14
00476250  06 20 a0 e1                                      mov r2, r6
00476254  00 40 a0 e1                                      mov r4, r0
00476258  7b cb fb eb                                      bl #0x36904c
0047625c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00476260  00 00 50 e3                                      cmp r0, #0
00476264  00 00 00 0a                                      beq #0x47626c
00476268  c5 9c fa eb                                      bl #0x31d584
0047626c  00 30 94 e5                                      ldr r3, [r4]
00476270  04 00 a0 e1                                      mov r0, r4
00476274  0f e0 a0 e1                                      mov lr, pc
00476278  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0047627c  00 70 a0 e1                                      mov r7, r0
00476280  05 00 a0 e1                                      mov r0, r5
00476284  cc b9 fb eb                                      bl #0x3649bc
00476288  00 00 57 e3                                      cmp r7, #0
0047628c  04 00 00 0a                                      beq #0x4762a4
00476290  07 00 a0 e1                                      mov r0, r7
00476294  00 30 97 e5                                      ldr r3, [r7]
00476298  00 10 a0 e3                                      mov r1, #0
0047629c  0f e0 a0 e1                                      mov lr, pc
004762a0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
004762a4  06 00 a0 e1                                      mov r0, r6
004762a8  37 fd ff eb                                      bl #0x47578c
004762ac  cd ff ff ea                                      b #0x4761e8
004762b0  03 00 a0 e1                                      mov r0, r3
004762b4  00 30 93 e5                                      ldr r3, [r3]
004762b8  0f e0 a0 e1                                      mov lr, pc
004762bc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
004762c0  d3 ff ff ea                                      b #0x476214

; FUNCTION 0x004762c4, declared_size=212, range_size=212, mode=arm
; class-group: AnimSetManager
; alias: _ZN14AnimSetManager11GetAnimatorEi
; demangled: AnimSetManager::GetAnimator(int)
; decoder-mode: arm
004762c4  70 40 2d e9                                      push {r4, r5, r6, lr}
004762c8  10 d0 4d e2                                      sub sp, sp, #0x10
004762cc  04 10 8d e5                                      str r1, [sp, #4]
004762d0  00 50 a0 e1                                      mov r5, r0
004762d4  4a fc ff eb                                      bl #0x475404
004762d8  00 40 50 e2                                      subs r4, r0, #0
004762dc  02 00 00 1a                                      bne #0x4762ec
004762e0  04 00 a0 e1                                      mov r0, r4
004762e4  10 d0 8d e2                                      add sp, sp, #0x10
004762e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
004762ec  04 00 85 e2                                      add r0, r5, #4
004762f0  04 10 8d e2                                      add r1, sp, #4
004762f4  57 ff ff eb                                      bl #0x476058
004762f8  20 30 90 e5                                      ldr r3, [r0, #0x20]
004762fc  00 50 a0 e1                                      mov r5, r0
00476300  70 20 d3 e5                                      ldrb r2, [r3, #0x70]
00476304  00 00 52 e3                                      cmp r2, #0
00476308  1d 00 00 1a                                      bne #0x476384
0047630c  10 60 8d e2                                      add r6, sp, #0x10
00476310  04 50 26 e5                                      str r5, [r6, #-4]!
00476314  04 30 95 e5                                      ldr r3, [r5, #4]
00476318  00 10 a0 e3                                      mov r1, #0
0047631c  a4 00 a0 e3                                      mov r0, #0xa4
00476320  01 30 83 e2                                      add r3, r3, #1
00476324  04 30 85 e5                                      str r3, [r5, #4]
00476328  90 68 fa eb                                      bl #0x310570
0047632c  06 10 a0 e1                                      mov r1, r6
00476330  00 40 a0 e1                                      mov r4, r0
00476334  df c4 fb eb                                      bl #0x3676b8
00476338  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0047633c  00 00 50 e3                                      cmp r0, #0
00476340  00 00 00 0a                                      beq #0x476348
00476344  8e 9c fa eb                                      bl #0x31d584
00476348  00 30 94 e5                                      ldr r3, [r4]
0047634c  04 00 a0 e1                                      mov r0, r4
00476350  0f e0 a0 e1                                      mov lr, pc
00476354  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00476358  00 60 a0 e1                                      mov r6, r0
0047635c  05 00 a0 e1                                      mov r0, r5
00476360  95 b9 fb eb                                      bl #0x3649bc
00476364  00 00 56 e3                                      cmp r6, #0
00476368  dc ff ff 0a                                      beq #0x4762e0
0047636c  06 00 a0 e1                                      mov r0, r6
00476370  00 30 96 e5                                      ldr r3, [r6]
00476374  00 10 a0 e3                                      mov r1, #0
00476378  0f e0 a0 e1                                      mov lr, pc
0047637c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00476380  d6 ff ff ea                                      b #0x4762e0
00476384  03 00 a0 e1                                      mov r0, r3
00476388  00 30 93 e5                                      ldr r3, [r3]
0047638c  0f e0 a0 e1                                      mov lr, pc
00476390  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00476394  dc ff ff ea                                      b #0x47630c

; FUNCTION 0x00476398, declared_size=204, range_size=204, mode=arm
; class-group: AnimSetManager
; alias: _ZN14AnimSetManager15AddTemplateAnimEii
; demangled: AnimSetManager::AddTemplateAnim(int, int)
; decoder-mode: arm
00476398  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047639c  10 d0 4d e2                                      sub sp, sp, #0x10
004763a0  00 50 a0 e1                                      mov r5, r0
004763a4  04 10 8d e5                                      str r1, [sp, #4]
004763a8  02 70 a0 e1                                      mov r7, r2
004763ac  14 fc ff eb                                      bl #0x475404
004763b0  a0 60 9f e5                                      ldr r6, [pc, #0xa0]
004763b4  00 00 50 e3                                      cmp r0, #0
004763b8  04 50 85 12                                      addne r5, r5, #4
004763bc  06 60 8f e0                                      add r6, pc, r6
004763c0  04 40 8d 12                                      addne r4, sp, #4
004763c4  0f 00 00 1a                                      bne #0x476408
004763c8  04 30 9d e5                                      ldr r3, [sp, #4]
004763cc  00 00 53 e3                                      cmp r3, #0
004763d0  1e 00 00 ba                                      blt #0x476450
004763d4  04 50 85 e2                                      add r5, r5, #4
004763d8  04 40 8d e2                                      add r4, sp, #4
004763dc  04 10 a0 e1                                      mov r1, r4
004763e0  05 00 a0 e1                                      mov r0, r5
004763e4  1b ff ff eb                                      bl #0x476058
004763e8  00 80 a0 e1                                      mov r8, r0
004763ec  2b ba fb eb                                      bl #0x364ca0
004763f0  64 30 9f e5                                      ldr r3, [pc, #0x64]
004763f4  03 30 96 e7                                      ldr r3, [r6, r3]
004763f8  00 30 d3 e5                                      ldrb r3, [r3]
004763fc  00 00 53 e3                                      cmp r3, #0
00476400  01 30 a0 13                                      movne r3, #1
00476404  3c 30 c8 15                                      strbne r3, [r8, #0x3c]
00476408  04 10 a0 e1                                      mov r1, r4
0047640c  05 00 a0 e1                                      mov r0, r5
00476410  10 ff ff eb                                      bl #0x476058
00476414  07 10 a0 e1                                      mov r1, r7
00476418  00 50 a0 e1                                      mov r5, r0
0047641c  72 bd fb eb                                      bl #0x3659ec
00476420  38 30 9f e5                                      ldr r3, [pc, #0x38]
00476424  20 50 95 e5                                      ldr r5, [r5, #0x20]
00476428  08 40 8d e2                                      add r4, sp, #8
0047642c  14 10 90 e5                                      ldr r1, [r0, #0x14]
00476430  03 20 96 e7                                      ldr r2, [r6, r3]
00476434  04 00 a0 e1                                      mov r0, r4
00476438  87 63 06 eb                                      bl #0x60f25c
0047643c  05 00 a0 e1                                      mov r0, r5
00476440  04 10 a0 e1                                      mov r1, r4
00476444  11 e6 06 eb                                      bl #0x62fc90
00476448  04 00 a0 e1                                      mov r0, r4
0047644c  08 8c 06 eb                                      bl #0x619474
00476450  10 d0 8d e2                                      add sp, sp, #0x10
00476454  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00476458  d4 e6 51 00 a8 44 00 00 10 47 00 00              .byte 0xd4, 0xe6, 0x51, 0x00, 0xa8, 0x44, 0x00, 0x00, 0x10, 0x47, 0x00, 0x00

; FUNCTION 0x00476464, declared_size=216, range_size=216, mode=arm
; class-group: AnimSetManager
; alias: _ZN14AnimSetManager6CreateEv
; demangled: AnimSetManager::Create()
; decoder-mode: arm
00476464  70 40 2d e9                                      push {r4, r5, r6, lr}
00476468  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
0047646c  08 d0 4d e2                                      sub sp, sp, #8
00476470  00 40 a0 e1                                      mov r4, r0
00476474  01 10 41 e2                                      sub r1, r1, #1
00476478  1c 10 80 e5                                      str r1, [r0, #0x1c]
0047647c  e0 fb ff eb                                      bl #0x475404
00476480  98 50 9f e5                                      ldr r5, [pc, #0x98]
00476484  00 00 50 e3                                      cmp r0, #0
00476488  05 50 8f e0                                      add r5, pc, r5
0047648c  08 00 00 0a                                      beq #0x4764b4
00476490  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
00476494  03 30 95 e7                                      ldr r3, [r5, r3]
00476498  00 30 93 e5                                      ldr r3, [r3]
0047649c  02 00 53 e3                                      cmp r3, #2
004764a0  00 30 a0 03                                      moveq r3, #0
004764a4  00 30 83 05                                      streq r3, [r3]
004764a8  01 00 00 0a                                      beq #0x4764b4
004764ac  01 00 53 e3                                      cmp r3, #1
004764b0  0d 00 00 0a                                      beq #0x4764ec
004764b4  1c 10 84 e2                                      add r1, r4, #0x1c
004764b8  04 00 84 e2                                      add r0, r4, #4
004764bc  e5 fe ff eb                                      bl #0x476058
004764c0  00 60 a0 e1                                      mov r6, r0
004764c4  f5 b9 fb eb                                      bl #0x364ca0
004764c8  58 30 9f e5                                      ldr r3, [pc, #0x58]
004764cc  03 30 95 e7                                      ldr r3, [r5, r3]
004764d0  00 30 d3 e5                                      ldrb r3, [r3]
004764d4  00 00 53 e3                                      cmp r3, #0
004764d8  01 30 a0 13                                      movne r3, #1
004764dc  3c 30 c6 15                                      strbne r3, [r6, #0x3c]
004764e0  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004764e4  08 d0 8d e2                                      add sp, sp, #8
004764e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
004764ec  38 00 9f e5                                      ldr r0, [pc, #0x38]
004764f0  38 10 9f e5                                      ldr r1, [pc, #0x38]
004764f4  38 20 9f e5                                      ldr r2, [pc, #0x38]
004764f8  00 00 95 e7                                      ldr r0, [r5, r0]
004764fc  34 30 9f e5                                      ldr r3, [pc, #0x34]
00476500  48 c0 a0 e3                                      mov ip, #0x48
00476504  01 10 8f e0                                      add r1, pc, r1
00476508  02 20 8f e0                                      add r2, pc, r2
0047650c  03 30 8f e0                                      add r3, pc, r3
00476510  a8 00 80 e2                                      add r0, r0, #0xa8
00476514  00 c0 8d e5                                      str ip, [sp]
00476518  b9 5e fa eb                                      bl #0x30e004
0047651c  e4 ff ff ea                                      b #0x4764b4
; mapping-symbol data/literal pool
00476520  08 e6 51 00 c0 39 00 00 a8 44 00 00 c0 19 00 00  .byte 0x08, 0xe6, 0x51, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xa8, 0x44, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00476530  d4 7e 44 00 c0 72 45 00 dc 72 45 00              .byte 0xd4, 0x7e, 0x44, 0x00, 0xc0, 0x72, 0x45, 0x00, 0xdc, 0x72, 0x45, 0x00

; FUNCTION 0x0047653c, declared_size=324, range_size=324, mode=arm
; class-group: AnimSetManager
; alias: _ZN14AnimSetManager7AddAnimEii
; demangled: AnimSetManager::AddAnim(int, int)
; decoder-mode: arm
0047653c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00476540  24 41 9f e5                                      ldr r4, [pc, #0x124]
00476544  24 51 9f e5                                      ldr r5, [pc, #0x124]
00476548  2c d0 4d e2                                      sub sp, sp, #0x2c
0047654c  04 40 8f e0                                      add r4, pc, r4
00476550  05 30 94 e7                                      ldr r3, [r4, r5]
00476554  00 70 a0 e1                                      mov r7, r0
00476558  04 10 8d e5                                      str r1, [sp, #4]
0047655c  00 30 93 e5                                      ldr r3, [r3]
00476560  02 80 a0 e1                                      mov r8, r2
00476564  24 30 8d e5                                      str r3, [sp, #0x24]
00476568  a5 fb ff eb                                      bl #0x475404
0047656c  00 00 50 e3                                      cmp r0, #0
00476570  04 70 87 12                                      addne r7, r7, #4
00476574  04 60 8d 12                                      addne r6, sp, #4
00476578  0f 00 00 1a                                      bne #0x4765bc
0047657c  04 30 9d e5                                      ldr r3, [sp, #4]
00476580  00 00 53 e3                                      cmp r3, #0
00476584  12 00 00 ba                                      blt #0x4765d4
00476588  04 70 87 e2                                      add r7, r7, #4
0047658c  04 60 8d e2                                      add r6, sp, #4
00476590  06 10 a0 e1                                      mov r1, r6
00476594  07 00 a0 e1                                      mov r0, r7
00476598  ae fe ff eb                                      bl #0x476058
0047659c  00 a0 a0 e1                                      mov sl, r0
004765a0  be b9 fb eb                                      bl #0x364ca0
004765a4  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
004765a8  03 30 94 e7                                      ldr r3, [r4, r3]
004765ac  00 30 d3 e5                                      ldrb r3, [r3]
004765b0  00 00 53 e3                                      cmp r3, #0
004765b4  01 30 a0 13                                      movne r3, #1
004765b8  3c 30 ca 15                                      strbne r3, [sl, #0x3c]
004765bc  07 00 a0 e1                                      mov r0, r7
004765c0  06 10 a0 e1                                      mov r1, r6
004765c4  a3 fe ff eb                                      bl #0x476058
004765c8  3c 30 d0 e5                                      ldrb r3, [r0, #0x3c]
004765cc  00 00 53 e3                                      cmp r3, #0
004765d0  06 00 00 0a                                      beq #0x4765f0
004765d4  05 30 94 e7                                      ldr r3, [r4, r5]
004765d8  24 20 9d e5                                      ldr r2, [sp, #0x24]
004765dc  00 30 93 e5                                      ldr r3, [r3]
004765e0  03 00 52 e1                                      cmp r2, r3
004765e4  1f 00 00 1a                                      bne #0x476668
004765e8  2c d0 8d e2                                      add sp, sp, #0x2c
004765ec  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
004765f0  08 10 a0 e1                                      mov r1, r8
004765f4  fc bc fb eb                                      bl #0x3659ec
004765f8  78 30 9f e5                                      ldr r3, [pc, #0x78]
004765fc  0c 60 8d e2                                      add r6, sp, #0xc
00476600  03 70 94 e7                                      ldr r7, [r4, r3]
00476604  07 00 a0 e1                                      mov r0, r7
00476608  9e 04 fb eb                                      bl #0x337888
0047660c  68 10 9f e5                                      ldr r1, [pc, #0x68]
00476610  06 00 a0 e1                                      mov r0, r6
00476614  1c 60 8d e5                                      str r6, [sp, #0x1c]
00476618  01 10 8f e0                                      add r1, pc, r1
0047661c  17 20 81 e2                                      add r2, r1, #0x17
00476620  20 60 8d e5                                      str r6, [sp, #0x20]
00476624  2f 6c fa eb                                      bl #0x3116e8
00476628  07 00 a0 e1                                      mov r0, r7
0047662c  06 10 a0 e1                                      mov r1, r6
00476630  14 05 fb eb                                      bl #0x337a88
00476634  20 00 9d e5                                      ldr r0, [sp, #0x20]
00476638  06 00 50 e1                                      cmp r0, r6
0047663c  e4 ff ff 0a                                      beq #0x4765d4
00476640  00 00 50 e3                                      cmp r0, #0
00476644  e2 ff ff 0a                                      beq #0x4765d4
00476648  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0047664c  01 10 60 e0                                      rsb r1, r0, r1
00476650  80 00 51 e3                                      cmp r1, #0x80
00476654  01 00 00 8a                                      bhi #0x476660
00476658  28 4a 0a eb                                      bl #0x708f00
0047665c  dc ff ff ea                                      b #0x4765d4
00476660  76 67 fa eb                                      bl #0x310440
00476664  da ff ff ea                                      b #0x4765d4
00476668  28 5f fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0047666c  44 e5 51 00 ac 40 00 00 a8 44 00 00 84 08 00 00  .byte 0x44, 0xe5, 0x51, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa8, 0x44, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
0047667c  30 72 45 00                                      .byte 0x30, 0x72, 0x45, 0x00
