; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00824e50, declared_size=8, range_size=8, mode=arm
; class-group: COnlineImpl
; alias: _ZN11COnlineImpl10IsSignedInEv
; demangled: COnlineImpl::IsSignedIn()
; decoder-mode: arm
00824e50  01 00 a0 e3                                      mov r0, #1
00824e54  1e ff 2f e1                                      bx lr

; FUNCTION 0x00824e58, declared_size=8, range_size=8, mode=arm
; class-group: COnlineImpl
; alias: _ZN11COnlineImpl18IsNetworkConnectedEv
; demangled: COnlineImpl::IsNetworkConnected()
; decoder-mode: arm
00824e58  01 00 a0 e3                                      mov r0, #1
00824e5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00824e60, declared_size=116, range_size=116, mode=arm
; class-group: COnlineImpl
; alias: _ZN11COnlineImpl13ElapsedTimeMsEl
; demangled: COnlineImpl::ElapsedTimeMs(long)
; decoder-mode: arm
00824e60  30 40 2d e9                                      push {r4, r5, lr}
00824e64  0c d0 4d e2                                      sub sp, sp, #0xc
00824e68  00 40 a0 e1                                      mov r4, r0
00824e6c  01 50 a0 e1                                      mov r5, r1
00824e70  0d 00 a0 e1                                      mov r0, sp
00824e74  00 10 a0 e3                                      mov r1, #0
00824e78  29 a6 eb eb                                      bl #0x30e724
00824e7c  04 10 9d e5                                      ldr r1, [sp, #4]
00824e80  44 20 94 e5                                      ldr r2, [r4, #0x44]
00824e84  d3 3d 04 e3                                      movw r3, #0x4dd3
00824e88  62 30 41 e3                                      movt r3, #0x1062
00824e8c  01 20 62 e0                                      rsb r2, r2, r1
00824e90  93 12 c3 e0                                      smull r1, r3, r3, r2
00824e94  c2 2f a0 e1                                      asr r2, r2, #0x1f
00824e98  40 10 94 e5                                      ldr r1, [r4, #0x40]
00824e9c  43 23 62 e0                                      rsb r2, r2, r3, asr #6
00824ea0  00 30 9d e5                                      ldr r3, [sp]
00824ea4  03 30 61 e0                                      rsb r3, r1, r3
00824ea8  fa 1f a0 e3                                      mov r1, #0x3e8
00824eac  91 23 23 e0                                      mla r3, r1, r3, r2
00824eb0  05 00 53 e1                                      cmp r3, r5
00824eb4  00 00 a0 b3                                      movlt r0, #0
00824eb8  03 00 00 ba                                      blt #0x824ecc
00824ebc  40 00 84 e2                                      add r0, r4, #0x40
00824ec0  00 10 a0 e3                                      mov r1, #0
00824ec4  16 a6 eb eb                                      bl #0x30e724
00824ec8  01 00 a0 e3                                      mov r0, #1
00824ecc  0c d0 8d e2                                      add sp, sp, #0xc
00824ed0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00824ed4, declared_size=76, range_size=76, mode=arm
; class-group: COnlineImpl
; alias: _ZN11COnlineImpl15GetAbsoluteTimeEv
; demangled: COnlineImpl::GetAbsoluteTime()
; decoder-mode: arm
00824ed4  04 e0 2d e5                                      str lr, [sp, #-4]!
00824ed8  0c d0 4d e2                                      sub sp, sp, #0xc
00824edc  00 10 a0 e3                                      mov r1, #0
00824ee0  0d 00 a0 e1                                      mov r0, sp
00824ee4  0e a6 eb eb                                      bl #0x30e724
00824ee8  04 10 9d e5                                      ldr r1, [sp, #4]
00824eec  d3 3d 04 e3                                      movw r3, #0x4dd3
00824ef0  62 30 41 e3                                      movt r3, #0x1062
00824ef4  93 21 c3 e0                                      smull r2, r3, r3, r1
00824ef8  00 20 9d e5                                      ldr r2, [sp]
00824efc  c1 1f a0 e1                                      asr r1, r1, #0x1f
00824f00  43 33 61 e0                                      rsb r3, r1, r3, asr #6
00824f04  fa 1f a0 e3                                      mov r1, #0x3e8
00824f08  91 32 22 e0                                      mla r2, r1, r2, r3
00824f0c  c2 3f a0 e1                                      asr r3, r2, #0x1f
00824f10  03 10 a0 e1                                      mov r1, r3
00824f14  02 00 a0 e1                                      mov r0, r2
00824f18  0c d0 8d e2                                      add sp, sp, #0xc
00824f1c  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00824f20, declared_size=20, range_size=20, mode=arm
; class-group: COnlineImpl
; alias: _ZN11COnlineImpl6SignInEv
; demangled: COnlineImpl::SignIn()
; decoder-mode: arm
00824f20  00 20 a0 e3                                      mov r2, #0
00824f24  08 00 80 e2                                      add r0, r0, #8
00824f28  05 16 a0 e3                                      mov r1, #0x500000
00824f2c  02 30 a0 e1                                      mov r3, r2
00824f30  b3 64 ff ea                                      b #0x7fe204

; FUNCTION 0x00824f34, declared_size=4, range_size=4, mode=arm
; class-group: COnlineImpl
; alias: _ZN11COnlineImpl6UpdateEf
; demangled: COnlineImpl::Update(float)
; decoder-mode: arm
00824f34  07 63 ff ea                                      b #0x7fdb58

; FUNCTION 0x00824f38, declared_size=4, range_size=4, mode=arm
; class-group: COnlineImpl
; alias: _ZN11COnlineImpl7DestroyEv
; demangled: COnlineImpl::Destroy()
; decoder-mode: arm
00824f38  cb 61 ff ea                                      b #0x7fd66c

; FUNCTION 0x00824f3c, declared_size=4, range_size=4, mode=arm
; class-group: COnlineImpl
; alias: _ZN11COnlineImpl9TerminateEv
; demangled: COnlineImpl::Terminate()
; decoder-mode: arm
00824f3c  e3 61 ff ea                                      b #0x7fd6d0

; FUNCTION 0x00824f40, declared_size=60, range_size=60, mode=arm
; class-group: COnlineImpl
; alias: _ZN11COnlineImpl10InitializeEv
; demangled: COnlineImpl::Initialize()
; decoder-mode: arm
00824f40  70 40 2d e9                                      push {r4, r5, r6, lr}
00824f44  04 60 d0 e5                                      ldrb r6, [r0, #4]
00824f48  00 50 a0 e1                                      mov r5, r0
00824f4c  00 00 56 e3                                      cmp r6, #0
00824f50  00 40 a0 13                                      movne r4, #0
00824f54  06 00 00 1a                                      bne #0x824f74
00824f58  e5 61 ff eb                                      bl #0x7fd6f4
00824f5c  01 30 a0 e3                                      mov r3, #1
00824f60  00 40 a0 e1                                      mov r4, r0
00824f64  04 30 c5 e5                                      strb r3, [r5, #4]
00824f68  40 00 85 e2                                      add r0, r5, #0x40
00824f6c  06 10 a0 e1                                      mov r1, r6
00824f70  eb a5 eb eb                                      bl #0x30e724
00824f74  04 00 a0 e1                                      mov r0, r4
00824f78  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00824f7c, declared_size=52, range_size=52, mode=arm
; class-group: COnlineImpl
; alias: _ZN11COnlineImplD1Ev
; demangled: COnlineImpl::~COnlineImpl()
; decoder-mode: arm
00824f7c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00824f80  24 20 9f e5                                      ldr r2, [pc, #0x24]
00824f84  10 40 2d e9                                      push {r4, lr}
00824f88  03 30 8f e0                                      add r3, pc, r3
00824f8c  02 20 93 e7                                      ldr r2, [r3, r2]
00824f90  00 40 a0 e1                                      mov r4, r0
00824f94  08 20 82 e2                                      add r2, r2, #8
00824f98  00 20 80 e5                                      str r2, [r0]
00824f9c  a5 62 ff eb                                      bl #0x7fda38
00824fa0  04 00 a0 e1                                      mov r0, r4
00824fa4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00824fa8  08 fb 16 00 a8 19 00 00                          .byte 0x08, 0xfb, 0x16, 0x00, 0xa8, 0x19, 0x00, 0x00

; FUNCTION 0x00824fb0, declared_size=28, range_size=28, mode=arm
; class-group: COnlineImpl
; alias: _ZN11COnlineImplD0Ev
; demangled: COnlineImpl::~COnlineImpl()
; decoder-mode: arm
00824fb0  10 40 2d e9                                      push {r4, lr}
00824fb4  00 40 a0 e1                                      mov r4, r0
00824fb8  ef ff ff eb                                      bl #0x824f7c
00824fbc  04 00 a0 e1                                      mov r0, r4
00824fc0  1e ad eb eb                                      bl #0x310440
00824fc4  04 00 a0 e1                                      mov r0, r4
00824fc8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00824fcc, declared_size=52, range_size=52, mode=arm
; class-group: COnlineImpl
; alias: _ZN11COnlineImplD2Ev
; demangled: COnlineImpl::~COnlineImpl()
; decoder-mode: arm
00824fcc  24 30 9f e5                                      ldr r3, [pc, #0x24]
00824fd0  24 20 9f e5                                      ldr r2, [pc, #0x24]
00824fd4  10 40 2d e9                                      push {r4, lr}
00824fd8  03 30 8f e0                                      add r3, pc, r3
00824fdc  02 20 93 e7                                      ldr r2, [r3, r2]
00824fe0  00 40 a0 e1                                      mov r4, r0
00824fe4  08 20 82 e2                                      add r2, r2, #8
00824fe8  00 20 80 e5                                      str r2, [r0]
00824fec  91 62 ff eb                                      bl #0x7fda38
00824ff0  04 00 a0 e1                                      mov r0, r4
00824ff4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00824ff8  b8 fa 16 00 a8 19 00 00                          .byte 0xb8, 0xfa, 0x16, 0x00, 0xa8, 0x19, 0x00, 0x00

; FUNCTION 0x00825000, declared_size=52, range_size=52, mode=arm
; class-group: COnlineImpl
; alias: _ZN11COnlineImplC1Ev
; demangled: COnlineImpl::COnlineImpl()
; decoder-mode: arm
00825000  70 40 2d e9                                      push {r4, r5, r6, lr}
00825004  20 40 9f e5                                      ldr r4, [pc, #0x20]
00825008  00 50 a0 e1                                      mov r5, r0
0082500c  09 62 ff eb                                      bl #0x7fd838
00825010  18 30 9f e5                                      ldr r3, [pc, #0x18]
00825014  04 40 8f e0                                      add r4, pc, r4
00825018  05 00 a0 e1                                      mov r0, r5
0082501c  03 30 94 e7                                      ldr r3, [r4, r3]
00825020  08 30 83 e2                                      add r3, r3, #8
00825024  00 30 85 e5                                      str r3, [r5]
00825028  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0082502c  7c fa 16 00 a8 19 00 00                          .byte 0x7c, 0xfa, 0x16, 0x00, 0xa8, 0x19, 0x00, 0x00

; FUNCTION 0x00825034, declared_size=52, range_size=52, mode=arm
; class-group: COnlineImpl
; alias: _ZN11COnlineImplC2Ev
; demangled: COnlineImpl::COnlineImpl()
; decoder-mode: arm
00825034  70 40 2d e9                                      push {r4, r5, r6, lr}
00825038  20 40 9f e5                                      ldr r4, [pc, #0x20]
0082503c  00 50 a0 e1                                      mov r5, r0
00825040  fc 61 ff eb                                      bl #0x7fd838
00825044  18 30 9f e5                                      ldr r3, [pc, #0x18]
00825048  04 40 8f e0                                      add r4, pc, r4
0082504c  05 00 a0 e1                                      mov r0, r5
00825050  03 30 94 e7                                      ldr r3, [r4, r3]
00825054  08 30 83 e2                                      add r3, r3, #8
00825058  00 30 85 e5                                      str r3, [r5]
0082505c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00825060  48 fa 16 00 a8 19 00 00                          .byte 0x48, 0xfa, 0x16, 0x00, 0xa8, 0x19, 0x00, 0x00

; FUNCTION 0x00825068, declared_size=116, range_size=116, mode=arm
; class-group: COnlineImpl
; alias: _ZN11COnlineImpl13GetPlayerNameEv
; demangled: COnlineImpl::GetPlayerName()
; decoder-mode: arm
00825068  70 40 2d e9                                      push {r4, r5, r6, lr}
0082506c  00 40 a0 e1                                      mov r4, r0
00825070  63 d6 ff eb                                      bl #0x81aa04
00825074  00 50 50 e2                                      subs r5, r0, #0
00825078  0e 00 00 1a                                      bne #0x8250b8
0082507c  04 00 a0 e1                                      mov r0, r4
00825080  10 40 84 e5                                      str r4, [r4, #0x10]
00825084  14 40 84 e5                                      str r4, [r4, #0x14]
00825088  07 10 a0 e3                                      mov r1, #7
0082508c  7a b1 eb eb                                      bl #0x31167c
00825090  40 10 9f e5                                      ldr r1, [pc, #0x40]
00825094  14 00 94 e5                                      ldr r0, [r4, #0x14]
00825098  06 20 a0 e3                                      mov r2, #6
0082509c  01 10 8f e0                                      add r1, pc, r1
008250a0  f0 a5 eb eb                                      bl #0x30e868
008250a4  06 30 80 e2                                      add r3, r0, #6
008250a8  10 30 84 e5                                      str r3, [r4, #0x10]
008250ac  06 50 c0 e5                                      strb r5, [r0, #6]
008250b0  04 00 a0 e1                                      mov r0, r4
008250b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
008250b8  50 d6 ff eb                                      bl #0x81aa00
008250bc  00 10 a0 e1                                      mov r1, r0
008250c0  00 30 90 e5                                      ldr r3, [r0]
008250c4  04 00 a0 e1                                      mov r0, r4
008250c8  0f e0 a0 e1                                      mov lr, pc
008250cc  20 f0 93 e5                                      ldr pc, [r3, #0x20]
008250d0  04 00 a0 e1                                      mov r0, r4
008250d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008250d8  ec 72 0e 00                                      .byte 0xec, 0x72, 0x0e, 0x00
