; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00417424, declared_size=8, range_size=8, mode=arm
; class-group: GS_InterruptLoading
; alias: _ZN19GS_InterruptLoading7onEventEPK6IEventPK12EventManager
; demangled: GS_InterruptLoading::onEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
00417424  00 00 a0 e3                                      mov r0, #0
00417428  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041744c, declared_size=8, range_size=8, mode=arm
; class-group: GS_InterruptLoading
; alias: _ZThn4_N19GS_InterruptLoading4DrawEPK12StateMachine
; demangled: non-virtual thunk to GS_InterruptLoading::Draw(StateMachine const*)
; decoder-mode: arm
0041744c  04 00 40 e2                                      sub r0, r0, #4
00417450  ff ff ff ea                                      b #0x417454

; FUNCTION 0x00417454, declared_size=632, range_size=632, mode=arm
; class-group: GS_InterruptLoading
; alias: _ZN19GS_InterruptLoading4DrawEPK12StateMachine
; demangled: GS_InterruptLoading::Draw(StateMachine const*)
; decoder-mode: arm
00417454  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00417458  5c 42 9f e5                                      ldr r4, [pc, #0x25c]
0041745c  5c a2 9f e5                                      ldr sl, [pc, #0x25c]
00417460  5c 62 9f e5                                      ldr r6, [pc, #0x25c]
00417464  04 40 8f e0                                      add r4, pc, r4
00417468  0a 70 94 e7                                      ldr r7, [r4, sl]
0041746c  06 60 8f e0                                      add r6, pc, r6
00417470  00 20 96 e5                                      ldr r2, [r6]
00417474  10 30 97 e5                                      ldr r3, [r7, #0x10]
00417478  40 d0 4d e2                                      sub sp, sp, #0x40
0041747c  01 00 52 e3                                      cmp r2, #1
00417480  10 50 93 e5                                      ldr r5, [r3, #0x10]
00417484  73 00 00 da                                      ble #0x417658
00417488  00 30 95 e5                                      ldr r3, [r5]
0041748c  05 00 a0 e1                                      mov r0, r5
00417490  0f e0 a0 e1                                      mov lr, pc
00417494  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00417498  10 30 97 e5                                      ldr r3, [r7, #0x10]
0041749c  24 92 9f e5                                      ldr sb, [pc, #0x224]
004174a0  05 cc a0 e3                                      mov ip, #0x500
004174a4  10 00 93 e5                                      ldr r0, [r3, #0x10]
004174a8  00 80 a0 e3                                      mov r8, #0
004174ac  30 30 8d e2                                      add r3, sp, #0x30
004174b0  cc 20 90 e5                                      ldr r2, [r0, #0xcc]
004174b4  09 10 94 e7                                      ldr r1, [r4, sb]
004174b8  04 20 12 e5                                      ldr r2, [r2, #-4]
004174bc  38 c0 8d e5                                      str ip, [sp, #0x38]
004174c0  2f ce a0 e3                                      mov ip, #0x2f0
004174c4  14 20 82 e2                                      add r2, r2, #0x14
004174c8  3c c0 8d e5                                      str ip, [sp, #0x3c]
004174cc  30 80 8d e5                                      str r8, [sp, #0x30]
004174d0  34 80 8d e5                                      str r8, [sp, #0x34]
004174d4  00 80 8d e5                                      str r8, [sp]
004174d8  04 80 8d e5                                      str r8, [sp, #4]
004174dc  08 80 8d e5                                      str r8, [sp, #8]
004174e0  22 21 06 eb                                      bl #0x59f970
004174e4  07 00 a0 e1                                      mov r0, r7
004174e8  5f 20 fc eb                                      bl #0x31f66c
004174ec  04 30 96 e5                                      ldr r3, [r6, #4]
004174f0  03 30 80 e0                                      add r3, r0, r3
004174f4  19 00 53 e3                                      cmp r3, #0x19
004174f8  04 30 86 e5                                      str r3, [r6, #4]
004174fc  42 00 00 8a                                      bhi #0x41760c
00417500  08 30 96 e5                                      ldr r3, [r6, #8]
00417504  c3 2f a0 e1                                      asr r2, r3, #0x1f
00417508  03 10 83 e2                                      add r1, r3, #3
0041750c  22 2f a0 e1                                      lsr r2, r2, #0x1e
00417510  02 c0 83 e0                                      add ip, r3, r2
00417514  08 00 53 e1                                      cmp r3, r8
00417518  03 c0 0c e2                                      and ip, ip, #3
0041751c  0c 20 62 e0                                      rsb r2, r2, ip
00417520  01 30 a0 b1                                      movlt r3, r1
00417524  36 c0 a0 e3                                      mov ip, #0x36
00417528  9c 02 0c e0                                      mul ip, ip, r2
0041752c  43 31 a0 e1                                      asr r3, r3, #2
00417530  38 20 a0 e3                                      mov r2, #0x38
00417534  93 02 03 e0                                      mul r3, r3, r2
00417538  4d 10 8c e2                                      add r1, ip, #0x4d
0041753c  35 2e 83 e2                                      add r2, r3, #0x350
00417540  17 c0 8c e2                                      add ip, ip, #0x17
00417544  c6 3f 83 e2                                      add r3, r3, #0x318
00417548  0a 00 94 e7                                      ldr r0, [r4, sl]
0041754c  24 30 8d e5                                      str r3, [sp, #0x24]
00417550  20 c0 8d e5                                      str ip, [sp, #0x20]
00417554  10 30 90 e5                                      ldr r3, [r0, #0x10]
00417558  28 10 8d e5                                      str r1, [sp, #0x28]
0041755c  2c 20 8d e5                                      str r2, [sp, #0x2c]
00417560  10 a0 93 e5                                      ldr sl, [r3, #0x10]
00417564  00 60 a0 e3                                      mov r6, #0
00417568  cc 30 9a e5                                      ldr r3, [sl, #0xcc]
0041756c  04 20 13 e5                                      ldr r2, [r3, #-4]
00417570  14 10 82 e2                                      add r1, r2, #0x14
00417574  8a 01 91 e8                                      ldm r1, {r1, r3, r7, r8}
00417578  07 70 61 e0                                      rsb r7, r1, r7
0041757c  07 00 a0 e1                                      mov r0, r7
00417580  08 80 63 e0                                      rsb r8, r3, r8
00417584  f6 dc fb eb                                      bl #0x30e964
00417588  42 14 a0 e3                                      mov r1, #0x42000000
0041758c  16 17 81 e2                                      add r1, r1, #0x580000
00417590  85 db fb eb                                      bl #0x30e3ac
00417594  cc db fb eb                                      bl #0x30e4cc
00417598  10 00 8d e5                                      str r0, [sp, #0x10]
0041759c  08 00 a0 e1                                      mov r0, r8
004175a0  ef dc fb eb                                      bl #0x30e964
004175a4  42 14 a0 e3                                      mov r1, #0x42000000
004175a8  06 16 81 e2                                      add r1, r1, #0x600000
004175ac  7e db fb eb                                      bl #0x30e3ac
004175b0  c5 db fb eb                                      bl #0x30e4cc
004175b4  09 10 94 e7                                      ldr r1, [r4, sb]
004175b8  14 00 8d e5                                      str r0, [sp, #0x14]
004175bc  10 20 8d e2                                      add r2, sp, #0x10
004175c0  0a 00 a0 e1                                      mov r0, sl
004175c4  20 30 8d e2                                      add r3, sp, #0x20
004175c8  18 70 8d e5                                      str r7, [sp, #0x18]
004175cc  1c 80 8d e5                                      str r8, [sp, #0x1c]
004175d0  00 60 8d e5                                      str r6, [sp]
004175d4  04 60 8d e5                                      str r6, [sp, #4]
004175d8  08 60 8d e5                                      str r6, [sp, #8]
004175dc  e3 20 06 eb                                      bl #0x59f970
004175e0  00 30 95 e5                                      ldr r3, [r5]
004175e4  05 00 a0 e1                                      mov r0, r5
004175e8  0f e0 a0 e1                                      mov lr, pc
004175ec  18 f0 93 e5                                      ldr pc, [r3, #0x18]
004175f0  05 00 a0 e1                                      mov r0, r5
004175f4  06 10 a0 e1                                      mov r1, r6
004175f8  00 30 95 e5                                      ldr r3, [r5]
004175fc  0f e0 a0 e1                                      mov lr, pc
00417600  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00417604  40 d0 8d e2                                      add sp, sp, #0x40
00417608  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0041760c  08 20 96 e5                                      ldr r2, [r6, #8]
00417610  04 80 86 e5                                      str r8, [r6, #4]
00417614  01 30 82 e2                                      add r3, r2, #1
00417618  04 00 53 e3                                      cmp r3, #4
0041761c  08 30 86 e5                                      str r3, [r6, #8]
00417620  1f 00 00 0a                                      beq #0x4176a4
00417624  c3 1f a0 e1                                      asr r1, r3, #0x1f
00417628  00 00 53 e3                                      cmp r3, #0
0041762c  21 1f a0 e1                                      lsr r1, r1, #0x1e
00417630  01 c0 83 e0                                      add ip, r3, r1
00417634  03 c0 0c e2                                      and ip, ip, #3
00417638  03 20 a0 a1                                      movge r2, r3
0041763c  0c 10 61 e0                                      rsb r1, r1, ip
00417640  04 20 82 b2                                      addlt r2, r2, #4
00417644  36 c0 a0 e3                                      mov ip, #0x36
00417648  42 21 a0 e1                                      asr r2, r2, #2
0041764c  9c 01 0c e0                                      mul ip, ip, r1
00417650  38 30 a0 e3                                      mov r3, #0x38
00417654  b6 ff ff ea                                      b #0x417534
00417658  00 30 95 e5                                      ldr r3, [r5]
0041765c  05 00 a0 e1                                      mov r0, r5
00417660  0f e0 a0 e1                                      mov lr, pc
00417664  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00417668  05 00 a0 e1                                      mov r0, r5
0041766c  03 10 a0 e3                                      mov r1, #3
00417670  00 30 95 e5                                      ldr r3, [r5]
00417674  0f e0 a0 e1                                      mov lr, pc
00417678  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
0041767c  00 30 95 e5                                      ldr r3, [r5]
00417680  05 00 a0 e1                                      mov r0, r5
00417684  0f e0 a0 e1                                      mov lr, pc
00417688  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0041768c  05 00 a0 e1                                      mov r0, r5
00417690  00 30 95 e5                                      ldr r3, [r5]
00417694  00 10 a0 e3                                      mov r1, #0
00417698  0f e0 a0 e1                                      mov lr, pc
0041769c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
004176a0  d7 ff ff ea                                      b #0x417604
004176a4  08 80 86 e5                                      str r8, [r6, #8]
004176a8  35 2e a0 e3                                      mov r2, #0x350
004176ac  4d 10 a0 e3                                      mov r1, #0x4d
004176b0  c6 3f a0 e3                                      mov r3, #0x318
004176b4  17 c0 a0 e3                                      mov ip, #0x17
004176b8  a2 ff ff ea                                      b #0x417548
; mapping-symbol data/literal pool
004176bc  2c d6 57 00 f4 37 00 00 08 c2 58 00 84 0d 00 00  .byte 0x2c, 0xd6, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x08, 0xc2, 0x58, 0x00, 0x84, 0x0d, 0x00, 0x00

; FUNCTION 0x004176cc, declared_size=8, range_size=8, mode=arm
; class-group: GS_InterruptLoading
; alias: _ZThn4_N19GS_InterruptLoading4CtorEPK12StateMachine
; demangled: non-virtual thunk to GS_InterruptLoading::Ctor(StateMachine const*)
; decoder-mode: arm
004176cc  04 00 40 e2                                      sub r0, r0, #4
004176d0  ff ff ff ea                                      b #0x4176d4

; FUNCTION 0x004176d4, declared_size=76, range_size=76, mode=arm
; class-group: GS_InterruptLoading
; alias: _ZN19GS_InterruptLoading4CtorEPK12StateMachine
; demangled: GS_InterruptLoading::Ctor(StateMachine const*)
; decoder-mode: arm
004176d4  34 30 9f e5                                      ldr r3, [pc, #0x34]
004176d8  34 00 9f e5                                      ldr r0, [pc, #0x34]
004176dc  00 20 a0 e3                                      mov r2, #0
004176e0  03 30 8f e0                                      add r3, pc, r3
004176e4  10 40 2d e9                                      push {r4, lr}
004176e8  00 00 8f e0                                      add r0, pc, r0
004176ec  00 20 83 e5                                      str r2, [r3]
004176f0  20 40 9f e5                                      ldr r4, [pc, #0x20]
004176f4  86 32 fc eb                                      bl #0x324114
004176f8  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004176fc  04 40 8f e0                                      add r4, pc, r4
00417700  01 20 a0 e3                                      mov r2, #1
00417704  03 30 94 e7                                      ldr r3, [r4, r3]
00417708  00 20 c3 e5                                      strb r2, [r3]
0041770c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00417710  94 bf 58 00 30 0c 4b 00 94 d3 57 00 b8 37 00 00  .byte 0x94, 0xbf, 0x58, 0x00, 0x30, 0x0c, 0x4b, 0x00, 0x94, 0xd3, 0x57, 0x00, 0xb8, 0x37, 0x00, 0x00

; FUNCTION 0x00417720, declared_size=72, range_size=72, mode=arm
; class-group: GS_InterruptLoading
; alias: _ZN19GS_InterruptLoadingC1Ev
; demangled: GS_InterruptLoading::GS_InterruptLoading()
; decoder-mode: arm
00417720  34 30 9f e5                                      ldr r3, [pc, #0x34]
00417724  34 20 9f e5                                      ldr r2, [pc, #0x34]
00417728  10 40 2d e9                                      push {r4, lr}
0041772c  03 30 8f e0                                      add r3, pc, r3
00417730  02 20 93 e7                                      ldr r2, [r3, r2]
00417734  00 40 a0 e1                                      mov r4, r0
00417738  24 00 9f e5                                      ldr r0, [pc, #0x24]
0041773c  2c 10 82 e2                                      add r1, r2, #0x2c
00417740  08 20 82 e2                                      add r2, r2, #8
00417744  00 00 8f e0                                      add r0, pc, r0
00417748  00 20 84 e5                                      str r2, [r4]
0041774c  04 10 84 e5                                      str r1, [r4, #4]
00417750  6f 32 fc eb                                      bl #0x324114
00417754  04 00 a0 e1                                      mov r0, r4
00417758  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0041775c  64 d3 57 00 54 28 00 00 14 0c 4b 00              .byte 0x64, 0xd3, 0x57, 0x00, 0x54, 0x28, 0x00, 0x00, 0x14, 0x0c, 0x4b, 0x00

; FUNCTION 0x00417768, declared_size=72, range_size=72, mode=arm
; class-group: GS_InterruptLoading
; alias: _ZN19GS_InterruptLoadingC2Ev
; demangled: GS_InterruptLoading::GS_InterruptLoading()
; decoder-mode: arm
00417768  34 30 9f e5                                      ldr r3, [pc, #0x34]
0041776c  34 20 9f e5                                      ldr r2, [pc, #0x34]
00417770  10 40 2d e9                                      push {r4, lr}
00417774  03 30 8f e0                                      add r3, pc, r3
00417778  02 20 93 e7                                      ldr r2, [r3, r2]
0041777c  00 40 a0 e1                                      mov r4, r0
00417780  24 00 9f e5                                      ldr r0, [pc, #0x24]
00417784  2c 10 82 e2                                      add r1, r2, #0x2c
00417788  08 20 82 e2                                      add r2, r2, #8
0041778c  00 00 8f e0                                      add r0, pc, r0
00417790  00 20 84 e5                                      str r2, [r4]
00417794  04 10 84 e5                                      str r1, [r4, #4]
00417798  5d 32 fc eb                                      bl #0x324114
0041779c  04 00 a0 e1                                      mov r0, r4
004177a0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004177a4  1c d3 57 00 54 28 00 00 cc 0b 4b 00              .byte 0x1c, 0xd3, 0x57, 0x00, 0x54, 0x28, 0x00, 0x00, 0xcc, 0x0b, 0x4b, 0x00

; FUNCTION 0x004177b0, declared_size=8, range_size=8, mode=arm
; class-group: GS_InterruptLoading
; alias: _ZThn4_N19GS_InterruptLoadingD1Ev
; demangled: non-virtual thunk to GS_InterruptLoading::~GS_InterruptLoading()
; decoder-mode: arm
004177b0  04 00 40 e2                                      sub r0, r0, #4
004177b4  ff ff ff ea                                      b #0x4177b8

; FUNCTION 0x004177b8, declared_size=72, range_size=72, mode=arm
; class-group: GS_InterruptLoading
; alias: _ZN19GS_InterruptLoadingD1Ev
; demangled: GS_InterruptLoading::~GS_InterruptLoading()
; decoder-mode: arm
004177b8  34 30 9f e5                                      ldr r3, [pc, #0x34]
004177bc  34 20 9f e5                                      ldr r2, [pc, #0x34]
004177c0  10 40 2d e9                                      push {r4, lr}
004177c4  03 30 8f e0                                      add r3, pc, r3
004177c8  02 20 93 e7                                      ldr r2, [r3, r2]
004177cc  00 40 a0 e1                                      mov r4, r0
004177d0  24 00 9f e5                                      ldr r0, [pc, #0x24]
004177d4  2c 10 82 e2                                      add r1, r2, #0x2c
004177d8  08 20 82 e2                                      add r2, r2, #8
004177dc  00 00 8f e0                                      add r0, pc, r0
004177e0  00 20 84 e5                                      str r2, [r4]
004177e4  04 10 84 e5                                      str r1, [r4, #4]
004177e8  49 32 fc eb                                      bl #0x324114
004177ec  04 00 a0 e1                                      mov r0, r4
004177f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004177f4  cc d2 57 00 54 28 00 00 b4 0b 4b 00              .byte 0xcc, 0xd2, 0x57, 0x00, 0x54, 0x28, 0x00, 0x00, 0xb4, 0x0b, 0x4b, 0x00

; FUNCTION 0x00417800, declared_size=72, range_size=72, mode=arm
; class-group: GS_InterruptLoading
; alias: _ZN19GS_InterruptLoadingD2Ev
; demangled: GS_InterruptLoading::~GS_InterruptLoading()
; decoder-mode: arm
00417800  34 30 9f e5                                      ldr r3, [pc, #0x34]
00417804  34 20 9f e5                                      ldr r2, [pc, #0x34]
00417808  10 40 2d e9                                      push {r4, lr}
0041780c  03 30 8f e0                                      add r3, pc, r3
00417810  02 20 93 e7                                      ldr r2, [r3, r2]
00417814  00 40 a0 e1                                      mov r4, r0
00417818  24 00 9f e5                                      ldr r0, [pc, #0x24]
0041781c  2c 10 82 e2                                      add r1, r2, #0x2c
00417820  08 20 82 e2                                      add r2, r2, #8
00417824  00 00 8f e0                                      add r0, pc, r0
00417828  00 20 84 e5                                      str r2, [r4]
0041782c  04 10 84 e5                                      str r1, [r4, #4]
00417830  37 32 fc eb                                      bl #0x324114
00417834  04 00 a0 e1                                      mov r0, r4
00417838  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0041783c  84 d2 57 00 54 28 00 00 6c 0b 4b 00              .byte 0x84, 0xd2, 0x57, 0x00, 0x54, 0x28, 0x00, 0x00, 0x6c, 0x0b, 0x4b, 0x00

; FUNCTION 0x00417848, declared_size=8, range_size=8, mode=arm
; class-group: GS_InterruptLoading
; alias: _ZThn4_N19GS_InterruptLoadingD0Ev
; demangled: non-virtual thunk to GS_InterruptLoading::~GS_InterruptLoading()
; decoder-mode: arm
00417848  04 00 40 e2                                      sub r0, r0, #4
0041784c  ff ff ff ea                                      b #0x417850

; FUNCTION 0x00417850, declared_size=28, range_size=28, mode=arm
; class-group: GS_InterruptLoading
; alias: _ZN19GS_InterruptLoadingD0Ev
; demangled: GS_InterruptLoading::~GS_InterruptLoading()
; decoder-mode: arm
00417850  10 40 2d e9                                      push {r4, lr}
00417854  00 40 a0 e1                                      mov r4, r0
00417858  d6 ff ff eb                                      bl #0x4177b8
0041785c  04 00 a0 e1                                      mov r0, r4
00417860  f6 e2 fb eb                                      bl #0x310440
00417864  04 00 a0 e1                                      mov r0, r4
00417868  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004179c0, declared_size=8, range_size=8, mode=arm
; class-group: GS_InterruptLoading
; alias: _ZThn4_N19GS_InterruptLoading6UpdateEP12StateMachined
; demangled: non-virtual thunk to GS_InterruptLoading::Update(StateMachine*, double)
; decoder-mode: arm
004179c0  04 00 40 e2                                      sub r0, r0, #4
004179c4  ff ff ff ea                                      b #0x4179c8

; FUNCTION 0x004179c8, declared_size=1560, range_size=1560, mode=arm
; class-group: GS_InterruptLoading
; alias: _ZN19GS_InterruptLoading6UpdateEP12StateMachined
; demangled: GS_InterruptLoading::Update(StateMachine*, double)
; decoder-mode: arm
004179c8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004179cc  88 35 9f e5                                      ldr r3, [pc, #0x588]
004179d0  88 45 9f e5                                      ldr r4, [pc, #0x588]
004179d4  54 d0 4d e2                                      sub sp, sp, #0x54
004179d8  03 30 9f e7                                      ldr r3, [pc, r3]
004179dc  01 00 53 e3                                      cmp r3, #1
004179e0  00 50 a0 e1                                      mov r5, r0
004179e4  04 40 8f e0                                      add r4, pc, r4
004179e8  15 00 00 da                                      ble #0x417a44
004179ec  70 35 9f e5                                      ldr r3, [pc, #0x570]
004179f0  03 40 94 e7                                      ldr r4, [r4, r3]
004179f4  10 30 94 e5                                      ldr r3, [r4, #0x10]
004179f8  10 30 93 e5                                      ldr r3, [r3, #0x10]
004179fc  03 00 a0 e1                                      mov r0, r3
00417a00  00 30 93 e5                                      ldr r3, [r3]
00417a04  0f e0 a0 e1                                      mov lr, pc
00417a08  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00417a0c  00 00 50 e3                                      cmp r0, #0
00417a10  01 00 00 0a                                      beq #0x417a1c
00417a14  54 d0 8d e2                                      add sp, sp, #0x54
00417a18  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00417a1c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00417a20  10 30 93 e5                                      ldr r3, [r3, #0x10]
00417a24  03 00 a0 e1                                      mov r0, r3
00417a28  00 30 93 e5                                      ldr r3, [r3]
00417a2c  0f e0 a0 e1                                      mov lr, pc
00417a30  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00417a34  18 00 94 e5                                      ldr r0, [r4, #0x18]
00417a38  04 10 85 e2                                      add r1, r5, #4
00417a3c  62 8a fc eb                                      bl #0x33a3cc
00417a40  f3 ff ff ea                                      b #0x417a14
00417a44  04 00 00 0a                                      beq #0x417a5c
00417a48  18 25 9f e5                                      ldr r2, [pc, #0x518]
00417a4c  01 30 83 e2                                      add r3, r3, #1
00417a50  02 20 8f e0                                      add r2, pc, r2
00417a54  00 30 82 e5                                      str r3, [r2]
00417a58  ed ff ff ea                                      b #0x417a14
00417a5c  00 55 9f e5                                      ldr r5, [pc, #0x500]
00417a60  05 60 94 e7                                      ldr r6, [r4, r5]
00417a64  10 30 96 e5                                      ldr r3, [r6, #0x10]
00417a68  10 30 93 e5                                      ldr r3, [r3, #0x10]
00417a6c  03 00 a0 e1                                      mov r0, r3
00417a70  00 30 93 e5                                      ldr r3, [r3]
00417a74  0f e0 a0 e1                                      mov lr, pc
00417a78  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00417a7c  10 30 96 e5                                      ldr r3, [r6, #0x10]
00417a80  10 30 93 e5                                      ldr r3, [r3, #0x10]
00417a84  03 00 a0 e1                                      mov r0, r3
00417a88  00 30 93 e5                                      ldr r3, [r3]
00417a8c  0f e0 a0 e1                                      mov lr, pc
00417a90  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00417a94  00 30 a0 e3                                      mov r3, #0
00417a98  4c 30 8d e5                                      str r3, [sp, #0x4c]
00417a9c  c8 34 9f e5                                      ldr r3, [pc, #0x4c8]
00417aa0  03 30 94 e7                                      ldr r3, [r4, r3]
00417aa4  00 30 d3 e5                                      ldrb r3, [r3]
00417aa8  00 00 53 e3                                      cmp r3, #0
00417aac  59 00 00 1a                                      bne #0x417c18
00417ab0  b8 34 9f e5                                      ldr r3, [pc, #0x4b8]
00417ab4  03 30 94 e7                                      ldr r3, [r4, r3]
00417ab8  00 30 d3 e5                                      ldrb r3, [r3]
00417abc  00 00 53 e3                                      cmp r3, #0
00417ac0  54 00 00 1a                                      bne #0x417c18
00417ac4  a8 34 9f e5                                      ldr r3, [pc, #0x4a8]
00417ac8  03 30 94 e7                                      ldr r3, [r4, r3]
00417acc  00 00 d3 e5                                      ldrb r0, [r3]
00417ad0  00 00 50 e3                                      cmp r0, #0
00417ad4  4f 00 00 1a                                      bne #0x417c18
00417ad8  98 34 9f e5                                      ldr r3, [pc, #0x498]
00417adc  03 30 94 e7                                      ldr r3, [r4, r3]
00417ae0  00 30 d3 e5                                      ldrb r3, [r3]
00417ae4  00 00 53 e3                                      cmp r3, #0
00417ae8  bc 00 00 0a                                      beq #0x417de0
00417aec  88 34 9f e5                                      ldr r3, [pc, #0x488]
00417af0  56 23 00 e3                                      movw r2, #0x356
00417af4  03 30 94 e7                                      ldr r3, [r4, r3]
00417af8  00 30 93 e5                                      ldr r3, [r3]
00417afc  02 00 53 e1                                      cmp r3, r2
00417b00  05 01 00 0a                                      beq #0x417f1c
00417b04  0f 0d 53 e3                                      cmp r3, #0x3c0
00417b08  fd 00 00 0a                                      beq #0x417f04
00417b0c  32 0e 53 e3                                      cmp r3, #0x320
00417b10  f5 00 00 0a                                      beq #0x417eec
00417b14  10 30 96 e5                                      ldr r3, [r6, #0x10]
00417b18  60 24 9f e5                                      ldr r2, [pc, #0x460]
00417b1c  24 60 8d e2                                      add r6, sp, #0x24
00417b20  10 10 93 e5                                      ldr r1, [r3, #0x10]
00417b24  02 20 8f e0                                      add r2, pc, r2
00417b28  00 30 a0 e1                                      mov r3, r0
00417b2c  e0 10 91 e5                                      ldr r1, [r1, #0xe0]
00417b30  06 00 a0 e1                                      mov r0, r6
00417b34  b5 55 07 eb                                      bl #0x5ed210
00417b38  06 00 a0 e1                                      mov r0, r6
00417b3c  8c ff ff eb                                      bl #0x417974
00417b40  06 00 a0 e1                                      mov r0, r6
00417b44  38 fe ff eb                                      bl #0x41742c
00417b48  05 60 94 e7                                      ldr r6, [r4, r5]
00417b4c  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
00417b50  6f 56 01 eb                                      bl #0x46d514
00417b54  04 00 50 e3                                      cmp r0, #4
00417b58  c5 00 00 0a                                      beq #0x417e74
00417b5c  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
00417b60  6b 56 01 eb                                      bl #0x46d514
00417b64  05 00 50 e3                                      cmp r0, #5
00417b68  f1 00 00 0a                                      beq #0x417f34
00417b6c  10 74 9f e5                                      ldr r7, [pc, #0x410]
00417b70  07 30 94 e7                                      ldr r3, [r4, r7]
00417b74  00 60 93 e5                                      ldr r6, [r3]
00417b78  2c 30 96 e5                                      ldr r3, [r6, #0x2c]
00417b7c  00 00 53 e3                                      cmp r3, #0
00417b80  02 00 00 0a                                      beq #0x417b90
00417b84  3f 30 d6 e5                                      ldrb r3, [r6, #0x3f]
00417b88  08 00 13 e3                                      tst r3, #8
00417b8c  58 00 00 1a                                      bne #0x417cf4
00417b90  05 30 94 e7                                      ldr r3, [r4, r5]
00417b94  bc 23 d6 e1                                      ldrh r2, [r6, #0x3c]
00417b98  10 30 93 e5                                      ldr r3, [r3, #0x10]
00417b9c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00417ba0  e0 30 93 e5                                      ldr r3, [r3, #0xe0]
00417ba4  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
00417ba8  18 30 93 e5                                      ldr r3, [r3, #0x18]
00417bac  01 10 63 e0                                      rsb r1, r3, r1
00417bb0  c1 01 52 e1                                      cmp r2, r1, asr #3
00417bb4  82 11 83 30                                      addlo r1, r3, r2, lsl #3
00417bb8  c8 13 9f 25                                      ldrhs r1, [pc, #0x3c8]
00417bbc  01 10 94 27                                      ldrhs r1, [r4, r1]
00417bc0  00 10 91 e5                                      ldr r1, [r1]
00417bc4  00 00 51 e3                                      cmp r1, #0
00417bc8  47 00 00 0a                                      beq #0x417cec
00417bcc  82 31 83 e0                                      add r3, r3, r2, lsl #3
00417bd0  04 30 93 e5                                      ldr r3, [r3, #4]
00417bd4  28 20 93 e5                                      ldr r2, [r3, #0x28]
00417bd8  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
00417bdc  02 00 51 e1                                      cmp r1, r2
00417be0  41 00 00 0a                                      beq #0x417cec
00417be4  a0 03 9f e5                                      ldr r0, [pc, #0x3a0]
00417be8  00 00 8f e0                                      add r0, pc, r0
00417bec  48 31 fc eb                                      bl #0x324114
00417bf0  07 30 94 e7                                      ldr r3, [r4, r7]
00417bf4  00 30 93 e5                                      ldr r3, [r3]
00417bf8  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00417bfc  00 00 53 e3                                      cmp r3, #0
00417c00  52 00 00 0a                                      beq #0x417d50
00417c04  4c 00 8d e2                                      add r0, sp, #0x4c
00417c08  07 fe ff eb                                      bl #0x41742c
00417c0c  7c 33 9f e5                                      ldr r3, [pc, #0x37c]
00417c10  03 30 9f e7                                      ldr r3, [pc, r3]
00417c14  8b ff ff ea                                      b #0x417a48
00417c18  5c 33 9f e5                                      ldr r3, [pc, #0x35c]
00417c1c  56 23 00 e3                                      movw r2, #0x356
00417c20  03 30 94 e7                                      ldr r3, [r4, r3]
00417c24  00 30 93 e5                                      ldr r3, [r3]
00417c28  02 00 53 e1                                      cmp r3, r2
00417c2c  41 00 00 0a                                      beq #0x417d38
00417c30  0f 0d 53 e3                                      cmp r3, #0x3c0
00417c34  26 00 00 0a                                      beq #0x417cd4
00417c38  32 0e 53 e3                                      cmp r3, #0x320
00417c3c  37 00 00 0a                                      beq #0x417d20
00417c40  05 30 94 e7                                      ldr r3, [r4, r5]
00417c44  48 23 9f e5                                      ldr r2, [pc, #0x348]
00417c48  3c 60 8d e2                                      add r6, sp, #0x3c
00417c4c  10 10 93 e5                                      ldr r1, [r3, #0x10]
00417c50  02 20 8f e0                                      add r2, pc, r2
00417c54  10 10 91 e5                                      ldr r1, [r1, #0x10]
00417c58  00 30 a0 e3                                      mov r3, #0
00417c5c  06 00 a0 e1                                      mov r0, r6
00417c60  e0 10 91 e5                                      ldr r1, [r1, #0xe0]
00417c64  69 55 07 eb                                      bl #0x5ed210
00417c68  06 00 a0 e1                                      mov r0, r6
00417c6c  40 ff ff eb                                      bl #0x417974
00417c70  06 00 a0 e1                                      mov r0, r6
00417c74  ec fd ff eb                                      bl #0x41742c
00417c78  05 60 94 e7                                      ldr r6, [r4, r5]
00417c7c  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
00417c80  23 56 01 eb                                      bl #0x46d514
00417c84  04 00 50 e3                                      cmp r0, #4
00417c88  1e 00 00 0a                                      beq #0x417d08
00417c8c  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
00417c90  1f 56 01 eb                                      bl #0x46d514
00417c94  05 00 50 e3                                      cmp r0, #5
00417c98  b3 ff ff 1a                                      bne #0x417b6c
00417c9c  10 30 96 e5                                      ldr r3, [r6, #0x10]
00417ca0  f0 22 9f e5                                      ldr r2, [pc, #0x2f0]
00417ca4  34 60 8d e2                                      add r6, sp, #0x34
00417ca8  10 10 93 e5                                      ldr r1, [r3, #0x10]
00417cac  02 20 8f e0                                      add r2, pc, r2
00417cb0  00 30 a0 e3                                      mov r3, #0
00417cb4  e0 10 91 e5                                      ldr r1, [r1, #0xe0]
00417cb8  06 00 a0 e1                                      mov r0, r6
00417cbc  53 55 07 eb                                      bl #0x5ed210
00417cc0  06 00 a0 e1                                      mov r0, r6
00417cc4  2a ff ff eb                                      bl #0x417974
00417cc8  06 00 a0 e1                                      mov r0, r6
00417ccc  d6 fd ff eb                                      bl #0x41742c
00417cd0  a5 ff ff ea                                      b #0x417b6c
00417cd4  05 30 94 e7                                      ldr r3, [r4, r5]
00417cd8  bc 22 9f e5                                      ldr r2, [pc, #0x2bc]
00417cdc  40 60 8d e2                                      add r6, sp, #0x40
00417ce0  10 10 93 e5                                      ldr r1, [r3, #0x10]
00417ce4  02 20 8f e0                                      add r2, pc, r2
00417ce8  d9 ff ff ea                                      b #0x417c54
00417cec  00 10 a0 e3                                      mov r1, #0
00417cf0  bb ff ff ea                                      b #0x417be4
00417cf4  00 30 96 e5                                      ldr r3, [r6]
00417cf8  06 00 a0 e1                                      mov r0, r6
00417cfc  0f e0 a0 e1                                      mov lr, pc
00417d00  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00417d04  a1 ff ff ea                                      b #0x417b90
00417d08  10 30 96 e5                                      ldr r3, [r6, #0x10]
00417d0c  8c 22 9f e5                                      ldr r2, [pc, #0x28c]
00417d10  38 60 8d e2                                      add r6, sp, #0x38
00417d14  10 10 93 e5                                      ldr r1, [r3, #0x10]
00417d18  02 20 8f e0                                      add r2, pc, r2
00417d1c  e3 ff ff ea                                      b #0x417cb0
00417d20  05 30 94 e7                                      ldr r3, [r4, r5]
00417d24  78 22 9f e5                                      ldr r2, [pc, #0x278]
00417d28  48 60 8d e2                                      add r6, sp, #0x48
00417d2c  10 10 93 e5                                      ldr r1, [r3, #0x10]
00417d30  02 20 8f e0                                      add r2, pc, r2
00417d34  c6 ff ff ea                                      b #0x417c54
00417d38  05 30 94 e7                                      ldr r3, [r4, r5]
00417d3c  64 22 9f e5                                      ldr r2, [pc, #0x264]
00417d40  44 60 8d e2                                      add r6, sp, #0x44
00417d44  10 10 93 e5                                      ldr r1, [r3, #0x10]
00417d48  02 20 8f e0                                      add r2, pc, r2
00417d4c  c0 ff ff ea                                      b #0x417c54
00417d50  54 02 9f e5                                      ldr r0, [pc, #0x254]
00417d54  00 00 8f e0                                      add r0, pc, r0
00417d58  ed 30 fc eb                                      bl #0x324114
00417d5c  05 30 94 e7                                      ldr r3, [r4, r5]
00417d60  bc 23 d6 e1                                      ldrh r2, [r6, #0x3c]
00417d64  10 30 93 e5                                      ldr r3, [r3, #0x10]
00417d68  10 30 93 e5                                      ldr r3, [r3, #0x10]
00417d6c  e0 30 93 e5                                      ldr r3, [r3, #0xe0]
00417d70  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
00417d74  18 30 93 e5                                      ldr r3, [r3, #0x18]
00417d78  01 10 63 e0                                      rsb r1, r3, r1
00417d7c  c1 01 52 e1                                      cmp r2, r1, asr #3
00417d80  82 11 83 30                                      addlo r1, r3, r2, lsl #3
00417d84  fc 11 9f 25                                      ldrhs r1, [pc, #0x1fc]
00417d88  01 10 94 27                                      ldrhs r1, [r4, r1]
00417d8c  00 10 91 e5                                      ldr r1, [r1]
00417d90  00 00 51 e3                                      cmp r1, #0
00417d94  6c 00 00 0a                                      beq #0x417f4c
00417d98  82 31 83 e0                                      add r3, r3, r2, lsl #3
00417d9c  04 30 93 e5                                      ldr r3, [r3, #4]
00417da0  28 20 93 e5                                      ldr r2, [r3, #0x28]
00417da4  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00417da8  02 00 53 e1                                      cmp r3, r2
00417dac  66 00 00 0a                                      beq #0x417f4c
00417db0  00 00 53 e3                                      cmp r3, #0
00417db4  64 00 00 0a                                      beq #0x417f4c
00417db8  07 30 94 e7                                      ldr r3, [r4, r7]
00417dbc  00 30 93 e5                                      ldr r3, [r3]
00417dc0  3f 20 d3 e5                                      ldrb r2, [r3, #0x3f]
00417dc4  08 00 12 e3                                      tst r2, #8
00417dc8  8d ff ff 0a                                      beq #0x417c04
00417dcc  03 00 a0 e1                                      mov r0, r3
00417dd0  00 30 93 e5                                      ldr r3, [r3]
00417dd4  0f e0 a0 e1                                      mov lr, pc
00417dd8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00417ddc  88 ff ff ea                                      b #0x417c04
00417de0  94 21 9f e5                                      ldr r2, [pc, #0x194]
00417de4  56 13 00 e3                                      movw r1, #0x356
00417de8  02 20 94 e7                                      ldr r2, [r4, r2]
00417dec  00 20 92 e5                                      ldr r2, [r2]
00417df0  01 00 52 e1                                      cmp r2, r1
00417df4  36 00 00 0a                                      beq #0x417ed4
00417df8  0f 0d 52 e3                                      cmp r2, #0x3c0
00417dfc  2e 00 00 0a                                      beq #0x417ebc
00417e00  32 0e 52 e3                                      cmp r2, #0x320
00417e04  26 00 00 0a                                      beq #0x417ea4
00417e08  10 20 96 e5                                      ldr r2, [r6, #0x10]
00417e0c  0c 60 8d e2                                      add r6, sp, #0xc
00417e10  10 10 92 e5                                      ldr r1, [r2, #0x10]
00417e14  94 21 9f e5                                      ldr r2, [pc, #0x194]
00417e18  02 20 8f e0                                      add r2, pc, r2
00417e1c  e0 10 91 e5                                      ldr r1, [r1, #0xe0]
00417e20  06 00 a0 e1                                      mov r0, r6
00417e24  f9 54 07 eb                                      bl #0x5ed210
00417e28  06 00 a0 e1                                      mov r0, r6
00417e2c  d0 fe ff eb                                      bl #0x417974
00417e30  06 00 a0 e1                                      mov r0, r6
00417e34  7c fd ff eb                                      bl #0x41742c
00417e38  05 60 94 e7                                      ldr r6, [r4, r5]
00417e3c  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
00417e40  b3 55 01 eb                                      bl #0x46d514
00417e44  04 00 50 e3                                      cmp r0, #4
00417e48  0f 00 00 0a                                      beq #0x417e8c
00417e4c  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
00417e50  af 55 01 eb                                      bl #0x46d514
00417e54  05 00 50 e3                                      cmp r0, #5
00417e58  43 ff ff 1a                                      bne #0x417b6c
00417e5c  10 30 96 e5                                      ldr r3, [r6, #0x10]
00417e60  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
00417e64  04 60 8d e2                                      add r6, sp, #4
00417e68  10 10 93 e5                                      ldr r1, [r3, #0x10]
00417e6c  02 20 8f e0                                      add r2, pc, r2
00417e70  8e ff ff ea                                      b #0x417cb0
00417e74  10 30 96 e5                                      ldr r3, [r6, #0x10]
00417e78  38 21 9f e5                                      ldr r2, [pc, #0x138]
00417e7c  20 60 8d e2                                      add r6, sp, #0x20
00417e80  10 10 93 e5                                      ldr r1, [r3, #0x10]
00417e84  02 20 8f e0                                      add r2, pc, r2
00417e88  88 ff ff ea                                      b #0x417cb0
00417e8c  10 30 96 e5                                      ldr r3, [r6, #0x10]
00417e90  24 21 9f e5                                      ldr r2, [pc, #0x124]
00417e94  08 60 8d e2                                      add r6, sp, #8
00417e98  10 10 93 e5                                      ldr r1, [r3, #0x10]
00417e9c  02 20 8f e0                                      add r2, pc, r2
00417ea0  82 ff ff ea                                      b #0x417cb0
00417ea4  10 20 96 e5                                      ldr r2, [r6, #0x10]
00417ea8  18 60 8d e2                                      add r6, sp, #0x18
00417eac  10 10 92 e5                                      ldr r1, [r2, #0x10]
00417eb0  08 21 9f e5                                      ldr r2, [pc, #0x108]
00417eb4  02 20 8f e0                                      add r2, pc, r2
00417eb8  d7 ff ff ea                                      b #0x417e1c
00417ebc  10 20 96 e5                                      ldr r2, [r6, #0x10]
00417ec0  10 60 8d e2                                      add r6, sp, #0x10
00417ec4  10 10 92 e5                                      ldr r1, [r2, #0x10]
00417ec8  f4 20 9f e5                                      ldr r2, [pc, #0xf4]
00417ecc  02 20 8f e0                                      add r2, pc, r2
00417ed0  d1 ff ff ea                                      b #0x417e1c
00417ed4  10 20 96 e5                                      ldr r2, [r6, #0x10]
00417ed8  14 60 8d e2                                      add r6, sp, #0x14
00417edc  10 10 92 e5                                      ldr r1, [r2, #0x10]
00417ee0  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
00417ee4  02 20 8f e0                                      add r2, pc, r2
00417ee8  cb ff ff ea                                      b #0x417e1c
00417eec  10 30 96 e5                                      ldr r3, [r6, #0x10]
00417ef0  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
00417ef4  30 60 8d e2                                      add r6, sp, #0x30
00417ef8  10 10 93 e5                                      ldr r1, [r3, #0x10]
00417efc  02 20 8f e0                                      add r2, pc, r2
00417f00  08 ff ff ea                                      b #0x417b28
00417f04  10 30 96 e5                                      ldr r3, [r6, #0x10]
00417f08  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
00417f0c  28 60 8d e2                                      add r6, sp, #0x28
00417f10  10 10 93 e5                                      ldr r1, [r3, #0x10]
00417f14  02 20 8f e0                                      add r2, pc, r2
00417f18  02 ff ff ea                                      b #0x417b28
00417f1c  10 30 96 e5                                      ldr r3, [r6, #0x10]
00417f20  ac 20 9f e5                                      ldr r2, [pc, #0xac]
00417f24  2c 60 8d e2                                      add r6, sp, #0x2c
00417f28  10 10 93 e5                                      ldr r1, [r3, #0x10]
00417f2c  02 20 8f e0                                      add r2, pc, r2
00417f30  fc fe ff ea                                      b #0x417b28
00417f34  10 30 96 e5                                      ldr r3, [r6, #0x10]
00417f38  98 20 9f e5                                      ldr r2, [pc, #0x98]
00417f3c  1c 60 8d e2                                      add r6, sp, #0x1c
00417f40  10 10 93 e5                                      ldr r1, [r3, #0x10]
00417f44  02 20 8f e0                                      add r2, pc, r2
00417f48  58 ff ff ea                                      b #0x417cb0
00417f4c  88 00 9f e5                                      ldr r0, [pc, #0x88]
00417f50  00 00 8f e0                                      add r0, pc, r0
00417f54  6e 30 fc eb                                      bl #0x324114
00417f58  29 ff ff ea                                      b #0x417c04
; mapping-symbol data/literal pool
00417f5c  9c bc 58 00 ac d0 57 00 f4 37 00 00 24 bc 58 00  .byte 0x9c, 0xbc, 0x58, 0x00, 0xac, 0xd0, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x24, 0xbc, 0x58, 0x00
00417f6c  68 27 00 00 58 44 00 00 84 0f 00 00 a8 44 00 00  .byte 0x68, 0x27, 0x00, 0x00, 0x58, 0x44, 0x00, 0x00, 0x84, 0x0f, 0x00, 0x00, 0xa8, 0x44, 0x00, 0x00
00417f7c  c4 25 00 00 dc a2 4a 00 84 0d 00 00 e8 10 00 00  .byte 0xc4, 0x25, 0x00, 0x00, 0xdc, 0xa2, 0x4a, 0x00, 0x84, 0x0d, 0x00, 0x00, 0xe8, 0x10, 0x00, 0x00
00417f8c  d8 07 4b 00 64 ba 58 00 b0 a1 4a 00 7c a1 4a 00  .byte 0xd8, 0x07, 0x4b, 0x00, 0x64, 0xba, 0x58, 0x00, 0xb0, 0xa1, 0x4a, 0x00, 0x7c, 0xa1, 0x4a, 0x00
00417f9c  1c a1 4a 00 a0 a1 4a 00 b0 a1 4a 00 c0 a1 4a 00  .byte 0x1c, 0xa1, 0x4a, 0x00, 0xa0, 0xa1, 0x4a, 0x00, 0xb0, 0xa1, 0x4a, 0x00, 0xc0, 0xa1, 0x4a, 0x00
00417fac  84 06 4b 00 e8 9f 4a 00 bc 9f 4a 00 34 a0 4a 00  .byte 0x84, 0x06, 0x4b, 0x00, 0xe8, 0x9f, 0x4a, 0x00, 0xbc, 0x9f, 0x4a, 0x00, 0x34, 0xa0, 0x4a, 0x00
00417fbc  1c a0 4a 00 2c a0 4a 00 34 9f 4a 00 24 a0 4a 00  .byte 0x1c, 0xa0, 0x4a, 0x00, 0x2c, 0xa0, 0x4a, 0x00, 0x34, 0x9f, 0x4a, 0x00, 0x24, 0xa0, 0x4a, 0x00
00417fcc  e4 9f 4a 00 ec 9e 4a 00 dc 9f 4a 00 e4 9e 4a 00  .byte 0xe4, 0x9f, 0x4a, 0x00, 0xec, 0x9e, 0x4a, 0x00, 0xdc, 0x9f, 0x4a, 0x00, 0xe4, 0x9e, 0x4a, 0x00
00417fdc  98 04 4b 00                                      .byte 0x98, 0x04, 0x4b, 0x00

; FUNCTION 0x00417fe0, declared_size=8, range_size=8, mode=arm
; class-group: GS_InterruptLoading
; alias: _ZThn4_N19GS_InterruptLoading4DtorEPK12StateMachine
; demangled: non-virtual thunk to GS_InterruptLoading::Dtor(StateMachine const*)
; decoder-mode: arm
00417fe0  04 00 40 e2                                      sub r0, r0, #4
00417fe4  ff ff ff ea                                      b #0x417fe8

; FUNCTION 0x00417fe8, declared_size=592, range_size=592, mode=arm
; class-group: GS_InterruptLoading
; alias: _ZN19GS_InterruptLoading4DtorEPK12StateMachine
; demangled: GS_InterruptLoading::Dtor(StateMachine const*)
; decoder-mode: arm
00417fe8  10 02 9f e5                                      ldr r0, [pc, #0x210]
00417fec  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00417ff0  00 00 8f e0                                      add r0, pc, r0
00417ff4  08 42 9f e5                                      ldr r4, [pc, #0x208]
00417ff8  45 30 fc eb                                      bl #0x324114
00417ffc  04 32 9f e5                                      ldr r3, [pc, #0x204]
00418000  04 40 8f e0                                      add r4, pc, r4
00418004  03 50 94 e7                                      ldr r5, [r4, r3]
00418008  00 30 d5 e5                                      ldrb r3, [r5]
0041800c  00 00 53 e3                                      cmp r3, #0
00418010  66 00 00 1a                                      bne #0x4181b0
00418014  f0 51 9f e5                                      ldr r5, [pc, #0x1f0]
00418018  f0 a1 9f e5                                      ldr sl, [pc, #0x1f0]
0041801c  05 60 94 e7                                      ldr r6, [r4, r5]
00418020  10 30 96 e5                                      ldr r3, [r6, #0x10]
00418024  20 30 93 e5                                      ldr r3, [r3, #0x20]
00418028  03 00 a0 e1                                      mov r0, r3
0041802c  00 30 93 e5                                      ldr r3, [r3]
00418030  0f e0 a0 e1                                      mov lr, pc
00418034  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00418038  00 80 a0 e1                                      mov r8, r0
0041803c  06 00 a0 e1                                      mov r0, r6
00418040  a0 70 96 e5                                      ldr r7, [r6, #0xa0]
00418044  52 1d fc eb                                      bl #0x31f594
00418048  0a 30 94 e7                                      ldr r3, [r4, sl]
0041804c  00 90 a0 e1                                      mov sb, r0
00418050  00 30 d3 e5                                      ldrb r3, [r3]
00418054  00 00 53 e3                                      cmp r3, #0
00418058  03 00 00 0a                                      beq #0x41806c
0041805c  b0 31 9f e5                                      ldr r3, [pc, #0x1b0]
00418060  01 20 a0 e3                                      mov r2, #1
00418064  03 30 94 e7                                      ldr r3, [r4, r3]
00418068  00 20 c3 e5                                      strb r2, [r3]
0041806c  a4 61 9f e5                                      ldr r6, [pc, #0x1a4]
00418070  06 30 94 e7                                      ldr r3, [r4, r6]
00418074  00 30 93 e5                                      ldr r3, [r3]
00418078  00 00 53 e3                                      cmp r3, #0
0041807c  27 00 00 0a                                      beq #0x418120
00418080  05 b0 94 e7                                      ldr fp, [r4, r5]
00418084  0b 00 a0 e1                                      mov r0, fp
00418088  31 1d fc eb                                      bl #0x31f554
0041808c  00 00 50 e3                                      cmp r0, #0
00418090  3d 00 00 1a                                      bne #0x41818c
00418094  00 00 59 e3                                      cmp sb, #0
00418098  0a 00 00 0a                                      beq #0x4180c8
0041809c  98 31 d9 e5                                      ldrb r3, [sb, #0x198]
004180a0  00 00 53 e3                                      cmp r3, #0
004180a4  38 00 00 1a                                      bne #0x41818c
004180a8  6c 31 9f e5                                      ldr r3, [pc, #0x16c]
004180ac  03 30 94 e7                                      ldr r3, [r4, r3]
004180b0  00 30 d3 e5                                      ldrb r3, [r3]
004180b4  00 00 53 e3                                      cmp r3, #0
004180b8  33 00 00 1a                                      bne #0x41818c
004180bc  a5 30 db e5                                      ldrb r3, [fp, #0xa5]
004180c0  00 00 53 e3                                      cmp r3, #0
004180c4  30 00 00 1a                                      bne #0x41818c
004180c8  0a 30 94 e7                                      ldr r3, [r4, sl]
004180cc  00 30 d3 e5                                      ldrb r3, [r3]
004180d0  00 00 53 e3                                      cmp r3, #0
004180d4  45 00 00 0a                                      beq #0x4181f0
004180d8  40 31 9f e5                                      ldr r3, [pc, #0x140]
004180dc  00 00 e0 e3                                      mvn r0, #0
004180e0  01 20 a0 e3                                      mov r2, #1
004180e4  03 30 94 e7                                      ldr r3, [r4, r3]
004180e8  00 10 93 e5                                      ldr r1, [r3]
004180ec  a2 65 04 eb                                      bl #0x53177c
004180f0  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
004180f4  00 00 e0 e3                                      mvn r0, #0
004180f8  02 20 a0 e3                                      mov r2, #2
004180fc  03 30 94 e7                                      ldr r3, [r4, r3]
00418100  00 10 93 e5                                      ldr r1, [r3]
00418104  9c 65 04 eb                                      bl #0x53177c
00418108  18 31 9f e5                                      ldr r3, [pc, #0x118]
0041810c  06 20 94 e7                                      ldr r2, [r4, r6]
00418110  03 30 94 e7                                      ldr r3, [r4, r3]
00418114  00 00 92 e5                                      ldr r0, [r2]
00418118  00 10 93 e5                                      ldr r1, [r3]
0041811c  d3 48 fd eb                                      bl #0x36a470
00418120  05 60 94 e7                                      ldr r6, [r4, r5]
00418124  00 30 a0 e3                                      mov r3, #0
00418128  a5 30 c6 e5                                      strb r3, [r6, #0xa5]
0041812c  98 95 0f eb                                      bl #0x7fd794
00418130  05 30 d0 e5                                      ldrb r3, [r0, #5]
00418134  00 00 53 e3                                      cmp r3, #0
00418138  06 00 00 0a                                      beq #0x418158
0041813c  08 70 67 e0                                      rsb r7, r7, r8
00418140  98 3a 03 e3                                      movw r3, #0x3a98
00418144  03 00 57 e1                                      cmp r7, r3
00418148  1f 00 00 9a                                      bls #0x4181cc
0041814c  05 30 94 e7                                      ldr r3, [r4, r5]
00418150  01 20 a0 e3                                      mov r2, #1
00418154  aa 20 c3 e5                                      strb r2, [r3, #0xaa]
00418158  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0041815c  00 20 a0 e3                                      mov r2, #0
00418160  03 30 94 e7                                      ldr r3, [r4, r3]
00418164  00 00 93 e5                                      ldr r0, [r3]
00418168  00 20 83 e5                                      str r2, [r3]
0041816c  02 00 50 e1                                      cmp r0, r2
00418170  00 00 00 0a                                      beq #0x418178
00418174  02 15 fc eb                                      bl #0x31d584
00418178  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
0041817c  00 20 a0 e3                                      mov r2, #0
00418180  03 30 94 e7                                      ldr r3, [r4, r3]
00418184  00 20 c3 e5                                      strb r2, [r3]
00418188  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0041818c  05 30 94 e7                                      ldr r3, [r4, r5]
00418190  a6 30 d3 e5                                      ldrb r3, [r3, #0xa6]
00418194  00 00 53 e3                                      cmp r3, #0
00418198  e0 ff ff 0a                                      beq #0x418120
0041819c  06 30 94 e7                                      ldr r3, [r4, r6]
004181a0  7d 1f a0 e3                                      mov r1, #0x1f4
004181a4  00 00 93 e5                                      ldr r0, [r3]
004181a8  ed 4f fd eb                                      bl #0x36c164
004181ac  db ff ff ea                                      b #0x418120
004181b0  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
004181b4  00 00 8f e0                                      add r0, pc, r0
004181b8  d5 2f fc eb                                      bl #0x324114
004181bc  c9 6d 04 eb                                      bl #0x5338e8
004181c0  00 30 a0 e3                                      mov r3, #0
004181c4  00 30 c5 e5                                      strb r3, [r5]
004181c8  91 ff ff ea                                      b #0x418014
004181cc  31 23 fc eb                                      bl #0x320e98
004181d0  34 30 90 e5                                      ldr r3, [r0, #0x34]
004181d4  02 00 53 e3                                      cmp r3, #2
004181d8  de ff ff 0a                                      beq #0x418158
004181dc  06 00 a0 e1                                      mov r0, r6
004181e0  1b 21 fc eb                                      bl #0x320654
004181e4  00 00 50 e3                                      cmp r0, #0
004181e8  da ff ff 1a                                      bne #0x418158
004181ec  d6 ff ff ea                                      b #0x41814c
004181f0  06 30 94 e7                                      ldr r3, [r4, r6]
004181f4  00 00 93 e5                                      ldr r0, [r3]
004181f8  e4 48 fd eb                                      bl #0x36a590
004181fc  c7 ff ff ea                                      b #0x418120
; mapping-symbol data/literal pool
00418200  08 04 4b 00 90 ca 57 00 60 41 00 00 f4 37 00 00  .byte 0x08, 0x04, 0x4b, 0x00, 0x90, 0xca, 0x57, 0x00, 0x60, 0x41, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
00418210  30 3b 00 00 34 42 00 00 a4 0d 00 00 a0 2f 00 00  .byte 0x30, 0x3b, 0x00, 0x00, 0x34, 0x42, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xa0, 0x2f, 0x00, 0x00
00418220  08 0c 00 00 80 06 00 00 98 08 00 00 84 0d 00 00  .byte 0x08, 0x0c, 0x00, 0x00, 0x80, 0x06, 0x00, 0x00, 0x98, 0x08, 0x00, 0x00, 0x84, 0x0d, 0x00, 0x00
00418230  b8 37 00 00 84 02 4b 00                          .byte 0xb8, 0x37, 0x00, 0x00, 0x84, 0x02, 0x4b, 0x00
