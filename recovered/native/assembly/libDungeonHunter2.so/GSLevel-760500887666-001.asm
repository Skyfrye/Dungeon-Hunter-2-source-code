; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00385ea0, declared_size=48, range_size=48, mode=arm
; class-group: GSLevel
; alias: _ZN7GSLevel6ReloadEv
; demangled: GSLevel::Reload()
; decoder-mode: arm
00385ea0  10 40 2d e9                                      push {r4, lr}
00385ea4  00 10 a0 e3                                      mov r1, #0
00385ea8  00 40 a0 e1                                      mov r4, r0
00385eac  00 30 90 e5                                      ldr r3, [r0]
00385eb0  0f e0 a0 e1                                      mov lr, pc
00385eb4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00385eb8  04 00 a0 e1                                      mov r0, r4
00385ebc  00 30 94 e5                                      ldr r3, [r4]
00385ec0  00 10 a0 e3                                      mov r1, #0
00385ec4  0f e0 a0 e1                                      mov lr, pc
00385ec8  08 f0 93 e5                                      ldr pc, [r3, #8]
00385ecc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00385ed0, declared_size=4, range_size=4, mode=arm
; class-group: GSLevel
; alias: _ZN7GSLevel5PauseEPK12StateMachine
; demangled: GSLevel::Pause(StateMachine const*)
; decoder-mode: arm
00385ed0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00385ed4, declared_size=4, range_size=4, mode=arm
; class-group: GSLevel
; alias: _ZN7GSLevel6WakeUpEPK12StateMachine
; demangled: GSLevel::WakeUp(StateMachine const*)
; decoder-mode: arm
00385ed4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00385ed8, declared_size=88, range_size=88, mode=arm
; class-group: GSLevel
; alias: _ZN7GSLevelC1Ev
; demangled: GSLevel::GSLevel()
; decoder-mode: arm
00385ed8  48 20 9f e5                                      ldr r2, [pc, #0x48]
00385edc  48 c0 9f e5                                      ldr ip, [pc, #0x48]
00385ee0  00 30 a0 e1                                      mov r3, r0
00385ee4  02 20 8f e0                                      add r2, pc, r2
00385ee8  0c c0 92 e7                                      ldr ip, [r2, ip]
00385eec  10 40 2d e9                                      push {r4, lr}
00385ef0  08 c0 8c e2                                      add ip, ip, #8
00385ef4  00 40 a0 e1                                      mov r4, r0
00385ef8  04 c0 83 e4                                      str ip, [r3], #4
00385efc  03 00 a0 e1                                      mov r0, r3
00385f00  14 30 84 e5                                      str r3, [r4, #0x14]
00385f04  18 30 84 e5                                      str r3, [r4, #0x18]
00385f08  10 10 a0 e3                                      mov r1, #0x10
00385f0c  da 2d fe eb                                      bl #0x31167c
00385f10  14 20 94 e5                                      ldr r2, [r4, #0x14]
00385f14  00 30 a0 e3                                      mov r3, #0
00385f18  04 00 a0 e1                                      mov r0, r4
00385f1c  00 30 c2 e5                                      strb r3, [r2]
00385f20  34 30 84 e5                                      str r3, [r4, #0x34]
00385f24  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00385f28  ac eb 60 00 d8 0e 00 00                          .byte 0xac, 0xeb, 0x60, 0x00, 0xd8, 0x0e, 0x00, 0x00

; FUNCTION 0x00385f30, declared_size=88, range_size=88, mode=arm
; class-group: GSLevel
; alias: _ZN7GSLevelC2Ev
; demangled: GSLevel::GSLevel()
; decoder-mode: arm
00385f30  48 20 9f e5                                      ldr r2, [pc, #0x48]
00385f34  48 c0 9f e5                                      ldr ip, [pc, #0x48]
00385f38  00 30 a0 e1                                      mov r3, r0
00385f3c  02 20 8f e0                                      add r2, pc, r2
00385f40  0c c0 92 e7                                      ldr ip, [r2, ip]
00385f44  10 40 2d e9                                      push {r4, lr}
00385f48  08 c0 8c e2                                      add ip, ip, #8
00385f4c  00 40 a0 e1                                      mov r4, r0
00385f50  04 c0 83 e4                                      str ip, [r3], #4
00385f54  03 00 a0 e1                                      mov r0, r3
00385f58  14 30 84 e5                                      str r3, [r4, #0x14]
00385f5c  18 30 84 e5                                      str r3, [r4, #0x18]
00385f60  10 10 a0 e3                                      mov r1, #0x10
00385f64  c4 2d fe eb                                      bl #0x31167c
00385f68  14 20 94 e5                                      ldr r2, [r4, #0x14]
00385f6c  00 30 a0 e3                                      mov r3, #0
00385f70  04 00 a0 e1                                      mov r0, r4
00385f74  00 30 c2 e5                                      strb r3, [r2]
00385f78  34 30 84 e5                                      str r3, [r4, #0x34]
00385f7c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00385f80  54 eb 60 00 d8 0e 00 00                          .byte 0x54, 0xeb, 0x60, 0x00, 0xd8, 0x0e, 0x00, 0x00

; FUNCTION 0x00385f88, declared_size=52, range_size=52, mode=arm
; class-group: GSLevel
; alias: _ZN7GSLevelD1Ev
; demangled: GSLevel::~GSLevel()
; decoder-mode: arm
00385f88  24 30 9f e5                                      ldr r3, [pc, #0x24]
00385f8c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00385f90  10 40 2d e9                                      push {r4, lr}
00385f94  03 30 8f e0                                      add r3, pc, r3
00385f98  02 20 93 e7                                      ldr r2, [r3, r2]
00385f9c  00 40 a0 e1                                      mov r4, r0
00385fa0  08 20 82 e2                                      add r2, r2, #8
00385fa4  04 20 80 e4                                      str r2, [r0], #4
00385fa8  7f 36 fe eb                                      bl #0x3139ac
00385fac  04 00 a0 e1                                      mov r0, r4
00385fb0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00385fb4  fc ea 60 00 d8 0e 00 00                          .byte 0xfc, 0xea, 0x60, 0x00, 0xd8, 0x0e, 0x00, 0x00

; FUNCTION 0x00385fbc, declared_size=28, range_size=28, mode=arm
; class-group: GSLevel
; alias: _ZN7GSLevelD0Ev
; demangled: GSLevel::~GSLevel()
; decoder-mode: arm
00385fbc  10 40 2d e9                                      push {r4, lr}
00385fc0  00 40 a0 e1                                      mov r4, r0
00385fc4  ef ff ff eb                                      bl #0x385f88
00385fc8  04 00 a0 e1                                      mov r0, r4
00385fcc  1b 29 fe eb                                      bl #0x310440
00385fd0  04 00 a0 e1                                      mov r0, r4
00385fd4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00385fd8, declared_size=52, range_size=52, mode=arm
; class-group: GSLevel
; alias: _ZN7GSLevelD2Ev
; demangled: GSLevel::~GSLevel()
; decoder-mode: arm
00385fd8  24 30 9f e5                                      ldr r3, [pc, #0x24]
00385fdc  24 20 9f e5                                      ldr r2, [pc, #0x24]
00385fe0  10 40 2d e9                                      push {r4, lr}
00385fe4  03 30 8f e0                                      add r3, pc, r3
00385fe8  02 20 93 e7                                      ldr r2, [r3, r2]
00385fec  00 40 a0 e1                                      mov r4, r0
00385ff0  08 20 82 e2                                      add r2, r2, #8
00385ff4  04 20 80 e4                                      str r2, [r0], #4
00385ff8  6b 36 fe eb                                      bl #0x3139ac
00385ffc  04 00 a0 e1                                      mov r0, r4
00386000  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00386004  ac ea 60 00 d8 0e 00 00                          .byte 0xac, 0xea, 0x60, 0x00, 0xd8, 0x0e, 0x00, 0x00

; FUNCTION 0x0038600c, declared_size=8, range_size=8, mode=arm
; class-group: GSLevel
; alias: _ZN7GSLevel6Draw2DEPK12StateMachine
; demangled: GSLevel::Draw2D(StateMachine const*)
; decoder-mode: arm
0038600c  34 00 90 e5                                      ldr r0, [r0, #0x34]
00386010  8c a4 01 ea                                      b #0x3ef248

; FUNCTION 0x00386014, declared_size=44, range_size=44, mode=arm
; class-group: GSLevel
; alias: _ZN7GSLevel4DrawEPK12StateMachine
; demangled: GSLevel::Draw(StateMachine const*)
; decoder-mode: arm
00386014  10 40 2d e9                                      push {r4, lr}
00386018  00 40 a0 e1                                      mov r4, r0
0038601c  34 00 90 e5                                      ldr r0, [r0, #0x34]
00386020  49 b1 01 eb                                      bl #0x3f254c
00386024  98 9a 02 eb                                      bl #0x42ca8c
00386028  38 10 94 e5                                      ldr r1, [r4, #0x38]
0038602c  03 00 51 e3                                      cmp r1, #3
00386030  00 10 a0 d3                                      movle r1, #0
00386034  01 10 a0 c3                                      movgt r1, #1
00386038  10 40 bd e8                                      pop {r4, lr}
0038603c  f5 a1 02 ea                                      b #0x42e818

; FUNCTION 0x00386040, declared_size=124, range_size=124, mode=arm
; class-group: GSLevel
; alias: _ZN7GSLevel6ResumeEPK12StateMachine
; demangled: GSLevel::Resume(StateMachine const*)
; decoder-mode: arm
00386040  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00386044  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00386048  10 40 2d e9                                      push {r4, lr}
0038604c  03 30 8f e0                                      add r3, pc, r3
00386050  02 40 93 e7                                      ldr r4, [r3, r2]
00386054  00 10 a0 e3                                      mov r1, #0
00386058  01 20 a0 e3                                      mov r2, #1
0038605c  40 00 94 e5                                      ldr r0, [r4, #0x40]
00386060  04 a1 ff eb                                      bl #0x36e478
00386064  60 36 90 e5                                      ldr r3, [r0, #0x660]
00386068  00 00 53 e3                                      cmp r3, #0
0038606c  0f 00 00 0a                                      beq #0x3860b0
00386070  00 10 a0 e3                                      mov r1, #0
00386074  01 20 a0 e3                                      mov r2, #1
00386078  40 00 94 e5                                      ldr r0, [r4, #0x40]
0038607c  fd a0 ff eb                                      bl #0x36e478
00386080  60 06 90 e5                                      ldr r0, [r0, #0x660]
00386084  00 10 a0 e3                                      mov r1, #0
00386088  01 20 a0 e1                                      mov r2, r1
0038608c  f2 0f 80 e2                                      add r0, r0, #0x3c8
00386090  fe 41 01 eb                                      bl #0x3d6890
00386094  01 20 a0 e3                                      mov r2, #1
00386098  40 00 94 e5                                      ldr r0, [r4, #0x40]
0038609c  00 10 a0 e3                                      mov r1, #0
003860a0  f4 a0 ff eb                                      bl #0x36e478
003860a4  60 36 90 e5                                      ldr r3, [r0, #0x660]
003860a8  00 20 a0 e3                                      mov r2, #0
003860ac  14 24 c3 e5                                      strb r2, [r3, #0x414]
003860b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003860b4  44 ea 60 00 f4 37 00 00                          .byte 0x44, 0xea, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003860bc, declared_size=136, range_size=136, mode=arm
; class-group: GSLevel
; alias: _ZN7GSLevel4DtorEPK12StateMachine
; demangled: GSLevel::Dtor(StateMachine const*)
; decoder-mode: arm
003860bc  70 40 2d e9                                      push {r4, r5, r6, lr}
003860c0  00 50 a0 e1                                      mov r5, r0
003860c4  34 00 90 e5                                      ldr r0, [r0, #0x34]
003860c8  68 40 9f e5                                      ldr r4, [pc, #0x68]
003860cc  00 00 50 e3                                      cmp r0, #0
003860d0  04 40 8f e0                                      add r4, pc, r4
003860d4  12 00 00 0a                                      beq #0x386124
003860d8  6c a9 01 eb                                      bl #0x3f0690
003860dc  6a 9a 02 eb                                      bl #0x42ca8c
003860e0  54 10 9f e5                                      ldr r1, [pc, #0x54]
003860e4  01 10 8f e0                                      add r1, pc, r1
003860e8  40 9c 02 eb                                      bl #0x42d1f0
003860ec  00 30 50 e2                                      subs r3, r0, #0
003860f0  02 00 00 0a                                      beq #0x386100
003860f4  00 30 93 e5                                      ldr r3, [r3]
003860f8  0f e0 a0 e1                                      mov lr, pc
003860fc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00386100  34 30 95 e5                                      ldr r3, [r5, #0x34]
00386104  00 00 53 e3                                      cmp r3, #0
00386108  05 00 00 0a                                      beq #0x386124
0038610c  03 00 a0 e1                                      mov r0, r3
00386110  00 30 93 e5                                      ldr r3, [r3]
00386114  0f e0 a0 e1                                      mov lr, pc
00386118  04 f0 93 e5                                      ldr pc, [r3, #4]
0038611c  00 30 a0 e3                                      mov r3, #0
00386120  34 30 85 e5                                      str r3, [r5, #0x34]
00386124  14 30 9f e5                                      ldr r3, [pc, #0x14]
00386128  00 20 a0 e3                                      mov r2, #0
0038612c  03 30 94 e7                                      ldr r3, [r4, r3]
00386130  00 20 83 e5                                      str r2, [r3]
00386134  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00386138  c0 e9 60 00 c4 b6 53 00 64 1d 00 00              .byte 0xc0, 0xe9, 0x60, 0x00, 0xc4, 0xb6, 0x53, 0x00, 0x64, 0x1d, 0x00, 0x00

; FUNCTION 0x00386190, declared_size=328, range_size=328, mode=arm
; class-group: GSLevel
; alias: _ZN7GSLevel4CtorEPK12StateMachine
; demangled: GSLevel::Ctor(StateMachine const*)
; decoder-mode: arm
00386190  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00386194  28 51 9f e5                                      ldr r5, [pc, #0x128]
00386198  28 31 9f e5                                      ldr r3, [pc, #0x128]
0038619c  00 40 a0 e1                                      mov r4, r0
003861a0  05 50 8f e0                                      add r5, pc, r5
003861a4  1c d0 4d e2                                      sub sp, sp, #0x1c
003861a8  03 00 95 e7                                      ldr r0, [r5, r3]
003861ac  2c bd 03 eb                                      bl #0x475664
003861b0  00 10 a0 e3                                      mov r1, #0
003861b4  6b 0f a0 e3                                      mov r0, #0x1ac
003861b8  18 90 94 e5                                      ldr sb, [r4, #0x18]
003861bc  eb 28 fe eb                                      bl #0x310570
003861c0  2c e0 d4 e5                                      ldrb lr, [r4, #0x2c]
003861c4  2d c0 d4 e5                                      ldrb ip, [r4, #0x2d]
003861c8  24 b0 94 e5                                      ldr fp, [r4, #0x24]
003861cc  28 70 94 e5                                      ldr r7, [r4, #0x28]
003861d0  30 80 94 e5                                      ldr r8, [r4, #0x30]
003861d4  40 a0 94 e5                                      ldr sl, [r4, #0x40]
003861d8  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
003861dc  20 30 94 e5                                      ldr r3, [r4, #0x20]
003861e0  09 10 a0 e1                                      mov r1, sb
003861e4  08 e0 8d e5                                      str lr, [sp, #8]
003861e8  0c c0 8d e5                                      str ip, [sp, #0xc]
003861ec  00 60 a0 e1                                      mov r6, r0
003861f0  00 b0 8d e5                                      str fp, [sp]
003861f4  04 70 8d e5                                      str r7, [sp, #4]
003861f8  10 80 8d e5                                      str r8, [sp, #0x10]
003861fc  14 a0 8d e5                                      str sl, [sp, #0x14]
00386200  c8 b3 01 eb                                      bl #0x3f3128
00386204  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
00386208  01 30 a0 e3                                      mov r3, #1
0038620c  38 30 84 e5                                      str r3, [r4, #0x38]
00386210  02 20 95 e7                                      ldr r2, [r5, r2]
00386214  34 60 84 e5                                      str r6, [r4, #0x34]
00386218  00 60 82 e5                                      str r6, [r2]
0038621c  3c 30 c4 e5                                      strb r3, [r4, #0x3c]
00386220  19 9a 02 eb                                      bl #0x42ca8c
00386224  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
00386228  01 10 8f e0                                      add r1, pc, r1
0038622c  ef 9b 02 eb                                      bl #0x42d1f0
00386230  00 40 a0 e1                                      mov r4, r0
00386234  56 dd 11 eb                                      bl #0x7fd794
00386238  05 30 d0 e5                                      ldrb r3, [r0, #5]
0038623c  00 00 53 e3                                      cmp r3, #0
00386240  11 00 00 1a                                      bne #0x38628c
00386244  00 00 54 e3                                      cmp r4, #0
00386248  0d 00 00 0a                                      beq #0x386284
0038624c  0e 9a 02 eb                                      bl #0x42ca8c
00386250  04 10 a0 e1                                      mov r1, r4
00386254  63 ad 02 eb                                      bl #0x4317e8
00386258  48 00 84 e2                                      add r0, r4, #0x48
0038625c  04 50 94 e5                                      ldr r5, [r4, #4]
00386260  b7 ff ff eb                                      bl #0x386144
00386264  68 20 9f e5                                      ldr r2, [pc, #0x68]
00386268  00 c0 a0 e3                                      mov ip, #0
0038626c  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00386270  05 00 a0 e1                                      mov r0, r5
00386274  02 20 8f e0                                      add r2, pc, r2
00386278  0c 30 a0 e1                                      mov r3, ip
0038627c  00 c0 8d e5                                      str ip, [sp]
00386280  e1 96 10 eb                                      bl #0x7abe0c
00386284  1c d0 8d e2                                      add sp, sp, #0x1c
00386288  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0038628c  01 6b fe eb                                      bl #0x320e98
00386290  34 30 90 e5                                      ldr r3, [r0, #0x34]
00386294  03 00 53 e3                                      cmp r3, #3
00386298  e9 ff ff 1a                                      bne #0x386244
0038629c  fa 99 02 eb                                      bl #0x42ca8c
003862a0  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
003862a4  04 10 a0 e1                                      mov r1, r4
003862a8  03 00 a0 e1                                      mov r0, r3
003862ac  00 30 93 e5                                      ldr r3, [r3]
003862b0  0f e0 a0 e1                                      mov lr, pc
003862b4  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003862b8  00 00 50 e3                                      cmp r0, #0
003862bc  f0 ff ff 1a                                      bne #0x386284
003862c0  df ff ff ea                                      b #0x386244
; mapping-symbol data/literal pool
003862c4  f0 e8 60 00 38 48 00 00 64 1d 00 00 a8 bd 53 00  .byte 0xf0, 0xe8, 0x60, 0x00, 0x38, 0x48, 0x00, 0x00, 0x64, 0x1d, 0x00, 0x00, 0xa8, 0xbd, 0x53, 0x00
003862d4  6c bd 53 00                                      .byte 0x6c, 0xbd, 0x53, 0x00

; FUNCTION 0x00386630, declared_size=488, range_size=488, mode=arm
; class-group: GSLevel
; alias: _ZN7GSLevel6UpdateEP12StateMachined
; demangled: GSLevel::Update(StateMachine*, double)
; decoder-mode: arm
00386630  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00386634  c0 41 9f e5                                      ldr r4, [pc, #0x1c0]
00386638  c0 31 9f e5                                      ldr r3, [pc, #0x1c0]
0038663c  c0 51 9f e5                                      ldr r5, [pc, #0x1c0]
00386640  04 40 8f e0                                      add r4, pc, r4
00386644  03 20 94 e7                                      ldr r2, [r4, r3]
00386648  05 30 94 e7                                      ldr r3, [r4, r5]
0038664c  44 d0 4d e2                                      sub sp, sp, #0x44
00386650  ec 20 d2 e5                                      ldrb r2, [r2, #0xec]
00386654  00 30 93 e5                                      ldr r3, [r3]
00386658  00 60 a0 e1                                      mov r6, r0
0038665c  00 00 52 e3                                      cmp r2, #0
00386660  3c 30 8d e5                                      str r3, [sp, #0x3c]
00386664  38 00 00 1a                                      bne #0x38674c
00386668  38 30 90 e5                                      ldr r3, [r0, #0x38]
0038666c  01 30 43 e2                                      sub r3, r3, #1
00386670  03 00 53 e3                                      cmp r3, #3
00386674  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00386678  24 00 00 ea                                      b #0x386710
0038667c  39 00 00 ea                                      b #0x386768
00386680  3c 00 00 ea                                      b #0x386778
00386684  41 00 00 ea                                      b #0x386790
00386688  ff ff ff ea                                      b #0x38668c
0038668c  74 31 9f e5                                      ldr r3, [pc, #0x174]
00386690  74 21 9f e5                                      ldr r2, [pc, #0x174]
00386694  74 91 9f e5                                      ldr sb, [pc, #0x174]
00386698  03 80 94 e7                                      ldr r8, [r4, r3]
0038669c  70 31 9f e5                                      ldr r3, [pc, #0x170]
003866a0  02 b0 94 e7                                      ldr fp, [r4, r2]
003866a4  00 a0 a0 e3                                      mov sl, #0
003866a8  03 30 94 e7                                      ldr r3, [r4, r3]
003866ac  09 90 8f e0                                      add sb, pc, sb
003866b0  24 70 8d e2                                      add r7, sp, #0x24
003866b4  00 a0 83 e5                                      str sl, [r3]
003866b8  08 00 a0 e1                                      mov r0, r8
003866bc  00 a0 cb e5                                      strb sl, [fp]
003866c0  0d 90 89 e2                                      add sb, sb, #0xd
003866c4  6f c4 fe eb                                      bl #0x337888
003866c8  07 00 a0 e1                                      mov r0, r7
003866cc  09 10 a0 e1                                      mov r1, sb
003866d0  34 70 8d e5                                      str r7, [sp, #0x34]
003866d4  38 70 8d e5                                      str r7, [sp, #0x38]
003866d8  c0 ff ff eb                                      bl #0x3865e0
003866dc  07 10 a0 e1                                      mov r1, r7
003866e0  08 00 a0 e1                                      mov r0, r8
003866e4  e7 c4 fe eb                                      bl #0x337a88
003866e8  00 30 a0 e1                                      mov r3, r0
003866ec  07 00 a0 e1                                      mov r0, r7
003866f0  04 30 8d e5                                      str r3, [sp, #4]
003866f4  ac 34 fe eb                                      bl #0x3139ac
003866f8  04 30 9d e5                                      ldr r3, [sp, #4]
003866fc  0a 00 53 e1                                      cmp r3, sl
00386700  2b 00 00 1a                                      bne #0x3867b4
00386704  34 00 96 e5                                      ldr r0, [r6, #0x34]
00386708  00 10 a0 e3                                      mov r1, #0
0038670c  f1 c6 01 eb                                      bl #0x3f82d8
00386710  34 30 96 e5                                      ldr r3, [r6, #0x34]
00386714  00 00 53 e3                                      cmp r3, #0
00386718  08 00 00 0a                                      beq #0x386740
0038671c  45 21 d3 e5                                      ldrb r2, [r3, #0x145]
00386720  00 00 52 e3                                      cmp r2, #0
00386724  08 00 00 1a                                      bne #0x38674c
00386728  30 21 93 e5                                      ldr r2, [r3, #0x130]
0038672c  01 00 52 e3                                      cmp r2, #1
00386730  02 00 00 da                                      ble #0x386740
00386734  30 31 93 e5                                      ldr r3, [r3, #0x130]
00386738  1a 00 53 e3                                      cmp r3, #0x1a
0038673c  02 00 00 da                                      ble #0x38674c
00386740  d1 98 02 eb                                      bl #0x42ca8c
00386744  01 10 a0 e3                                      mov r1, #1
00386748  ad a0 02 eb                                      bl #0x42ea04
0038674c  05 30 94 e7                                      ldr r3, [r4, r5]
00386750  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00386754  00 30 93 e5                                      ldr r3, [r3]
00386758  03 00 52 e1                                      cmp r2, r3
0038675c  25 00 00 1a                                      bne #0x3867f8
00386760  44 d0 8d e2                                      add sp, sp, #0x44
00386764  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00386768  02 30 a0 e3                                      mov r3, #2
0038676c  38 30 80 e5                                      str r3, [r0, #0x38]
00386770  34 30 90 e5                                      ldr r3, [r0, #0x34]
00386774  e6 ff ff ea                                      b #0x386714
00386778  34 00 90 e5                                      ldr r0, [r0, #0x34]
0038677c  a5 a2 01 eb                                      bl #0x3ef218
00386780  03 30 a0 e3                                      mov r3, #3
00386784  38 30 86 e5                                      str r3, [r6, #0x38]
00386788  34 30 96 e5                                      ldr r3, [r6, #0x34]
0038678c  e0 ff ff ea                                      b #0x386714
00386790  34 00 90 e5                                      ldr r0, [r0, #0x34]
00386794  00 10 a0 e3                                      mov r1, #0
00386798  ce c6 01 eb                                      bl #0x3f82d8
0038679c  34 30 96 e5                                      ldr r3, [r6, #0x34]
003867a0  30 21 93 e5                                      ldr r2, [r3, #0x130]
003867a4  26 00 52 e3                                      cmp r2, #0x26
003867a8  04 20 a0 03                                      moveq r2, #4
003867ac  38 20 86 05                                      streq r2, [r6, #0x38]
003867b0  d7 ff ff ea                                      b #0x386714
003867b4  01 30 a0 e3                                      mov r3, #1
003867b8  0c 70 8d e2                                      add r7, sp, #0xc
003867bc  00 30 cb e5                                      strb r3, [fp]
003867c0  08 00 a0 e1                                      mov r0, r8
003867c4  2f c4 fe eb                                      bl #0x337888
003867c8  09 10 a0 e1                                      mov r1, sb
003867cc  07 00 a0 e1                                      mov r0, r7
003867d0  1c 70 8d e5                                      str r7, [sp, #0x1c]
003867d4  20 70 8d e5                                      str r7, [sp, #0x20]
003867d8  80 ff ff eb                                      bl #0x3865e0
003867dc  08 00 a0 e1                                      mov r0, r8
003867e0  07 10 a0 e1                                      mov r1, r7
003867e4  0a 20 a0 e1                                      mov r2, sl
003867e8  7b c5 fe eb                                      bl #0x337ddc
003867ec  07 00 a0 e1                                      mov r0, r7
003867f0  6d 34 fe eb                                      bl #0x3139ac
003867f4  c2 ff ff ea                                      b #0x386704
003867f8  c4 1e fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003867fc  50 e4 60 00 f4 37 00 00 ac 40 00 00 84 08 00 00  .byte 0x50, 0xe4, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
0038680c  d0 2f 00 00 44 b9 53 00 fc 2d 00 00              .byte 0xd0, 0x2f, 0x00, 0x00, 0x44, 0xb9, 0x53, 0x00, 0xfc, 0x2d, 0x00, 0x00

; FUNCTION 0x00386818, declared_size=160, range_size=160, mode=arm
; class-group: GSLevel
; alias: _ZN7GSLevel9LoadLevelEPKcijjjbbii
; demangled: GSLevel::LoadLevel(char const*, int, unsigned int, unsigned int, unsigned int, bool, bool, int, int)
; decoder-mode: arm
00386818  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0038681c  0c d0 4d e2                                      sub sp, sp, #0xc
00386820  03 a0 a0 e1                                      mov sl, r3
00386824  00 60 a0 e1                                      mov r6, r0
00386828  06 00 8d e8                                      stm sp, {r1, r2}
0038682c  88 1d fe eb                                      bl #0x30de54
00386830  74 50 9f e5                                      ldr r5, [pc, #0x74]
00386834  74 40 9f e5                                      ldr r4, [pc, #0x74]
00386838  00 20 86 e0                                      add r2, r6, r0
0038683c  05 50 8f e0                                      add r5, pc, r5
00386840  04 40 95 e7                                      ldr r4, [r5, r4]
00386844  06 10 a0 e1                                      mov r1, r6
00386848  30 80 9d e5                                      ldr r8, [sp, #0x30]
0038684c  04 00 84 e2                                      add r0, r4, #4
00386850  3c 90 9d e5                                      ldr sb, [sp, #0x3c]
00386854  40 b0 9d e5                                      ldr fp, [sp, #0x40]
00386858  34 70 dd e5                                      ldrb r7, [sp, #0x34]
0038685c  38 60 dd e5                                      ldrb r6, [sp, #0x38]
00386860  5e 28 fe eb                                      bl #0x3109e0
00386864  04 30 9d e5                                      ldr r3, [sp, #4]
00386868  00 c0 9d e5                                      ldr ip, [sp]
0038686c  04 10 a0 e1                                      mov r1, r4
00386870  20 30 84 e5                                      str r3, [r4, #0x20]
00386874  38 30 9f e5                                      ldr r3, [pc, #0x38]
00386878  00 20 a0 e3                                      mov r2, #0
0038687c  1c c0 84 e5                                      str ip, [r4, #0x1c]
00386880  03 30 95 e7                                      ldr r3, [r5, r3]
00386884  24 a0 84 e5                                      str sl, [r4, #0x24]
00386888  28 80 84 e5                                      str r8, [r4, #0x28]
0038688c  18 00 93 e5                                      ldr r0, [r3, #0x18]
00386890  2c 70 c4 e5                                      strb r7, [r4, #0x2c]
00386894  2d 60 c4 e5                                      strb r6, [r4, #0x2d]
00386898  30 90 84 e5                                      str sb, [r4, #0x30]
0038689c  40 b0 84 e5                                      str fp, [r4, #0x40]
003868a0  0c d0 8d e2                                      add sp, sp, #0xc
003868a4  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003868a8  b6 ce fe ea                                      b #0x33a388
; mapping-symbol data/literal pool
003868ac  54 e2 60 00 80 22 00 00 f4 37 00 00              .byte 0x54, 0xe2, 0x60, 0x00, 0x80, 0x22, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
