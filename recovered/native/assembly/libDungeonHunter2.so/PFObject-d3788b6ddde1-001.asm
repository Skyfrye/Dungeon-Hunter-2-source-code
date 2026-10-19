; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005241c0, declared_size=20, range_size=20, mode=arm
; class-group: PFObject
; alias: _ZNK8PFObject11IsOverAHoleEv
; demangled: PFObject::IsOverAHole() const
; decoder-mode: arm
005241c0  10 00 90 e5                                      ldr r0, [r0, #0x10]
005241c4  00 00 50 e3                                      cmp r0, #0
005241c8  24 00 90 15                                      ldrne r0, [r0, #0x24]
005241cc  01 00 00 12                                      andne r0, r0, #1
005241d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005241d4, declared_size=20, range_size=20, mode=arm
; class-group: PFObject
; alias: _ZNK8PFObject9IsInWaterEv
; demangled: PFObject::IsInWater() const
; decoder-mode: arm
005241d4  10 00 90 e5                                      ldr r0, [r0, #0x10]
005241d8  00 00 50 e3                                      cmp r0, #0
005241dc  24 00 90 15                                      ldrne r0, [r0, #0x24]
005241e0  d0 00 e0 17                                      ubfxne r0, r0, #1, #1
005241e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005241e8, declared_size=12, range_size=12, mode=arm
; class-group: PFObject
; alias: _ZNK8PFObject8IsFlyingEv
; demangled: PFObject::IsFlying() const
; decoder-mode: arm
005241e8  14 00 90 e5                                      ldr r0, [r0, #0x14]
005241ec  01 00 00 e2                                      and r0, r0, #1
005241f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005241f4, declared_size=24, range_size=24, mode=arm
; class-group: PFObject
; alias: _ZN8PFObject9SetFlyingEb
; demangled: PFObject::SetFlying(bool)
; decoder-mode: arm
005241f4  14 30 90 e5                                      ldr r3, [r0, #0x14]
005241f8  00 00 51 e3                                      cmp r1, #0
005241fc  01 30 83 13                                      orrne r3, r3, #1
00524200  01 30 c3 03                                      biceq r3, r3, #1
00524204  14 30 80 e5                                      str r3, [r0, #0x14]
00524208  1e ff 2f e1                                      bx lr

; FUNCTION 0x0052420c, declared_size=12, range_size=12, mode=arm
; class-group: PFObject
; alias: _ZNK8PFObject10IsSwimmingEv
; demangled: PFObject::IsSwimming() const
; decoder-mode: arm
0052420c  14 00 90 e5                                      ldr r0, [r0, #0x14]
00524210  d0 00 e0 e7                                      ubfx r0, r0, #1, #1
00524214  1e ff 2f e1                                      bx lr

; FUNCTION 0x00524218, declared_size=24, range_size=24, mode=arm
; class-group: PFObject
; alias: _ZN8PFObject11SetSwimmingEb
; demangled: PFObject::SetSwimming(bool)
; decoder-mode: arm
00524218  14 30 90 e5                                      ldr r3, [r0, #0x14]
0052421c  00 00 51 e3                                      cmp r1, #0
00524220  02 30 83 13                                      orrne r3, r3, #2
00524224  02 30 c3 03                                      biceq r3, r3, #2
00524228  14 30 80 e5                                      str r3, [r0, #0x14]
0052422c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00524230, declared_size=52, range_size=52, mode=arm
; class-group: PFObject
; alias: _ZNK8PFObject9CanPathOnEP7PFFloor
; demangled: PFObject::CanPathOn(PFFloor*) const
; decoder-mode: arm
00524230  00 00 51 e3                                      cmp r1, #0
00524234  01 00 a0 01                                      moveq r0, r1
00524238  1e ff 2f 01                                      bxeq lr
0052423c  24 30 91 e5                                      ldr r3, [r1, #0x24]
00524240  14 00 90 e5                                      ldr r0, [r0, #0x14]
00524244  00 00 53 e3                                      cmp r3, #0
00524248  01 00 a0 03                                      moveq r0, #1
0052424c  1e ff 2f 01                                      bxeq lr
00524250  00 00 03 e0                                      and r0, r3, r0
00524254  00 00 53 e1                                      cmp r3, r0
00524258  00 00 a0 13                                      movne r0, #0
0052425c  01 00 a0 03                                      moveq r0, #1
00524260  1e ff 2f e1                                      bx lr

; FUNCTION 0x00524264, declared_size=228, range_size=228, mode=arm
; class-group: PFObject
; alias: _ZNK8PFObject15GetPathLengthSQEv
; demangled: PFObject::GetPathLengthSQ() const
; decoder-mode: arm
00524264  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00524268  00 80 a0 e1                                      mov r8, r0
0052426c  38 40 b8 e5                                      ldr r4, [r8, #0x38]!
00524270  08 00 54 e1                                      cmp r4, r8
00524274  00 70 a0 03                                      moveq r7, #0
00524278  30 00 00 0a                                      beq #0x524340
0052427c  00 70 a0 e3                                      mov r7, #0
00524280  08 30 94 e5                                      ldr r3, [r4, #8]
00524284  03 00 a0 e1                                      mov r0, r3
00524288  00 30 93 e5                                      ldr r3, [r3]
0052428c  0f e0 a0 e1                                      mov lr, pc
00524290  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00524294  08 30 94 e5                                      ldr r3, [r4, #8]
00524298  00 50 a0 e1                                      mov r5, r0
0052429c  03 00 a0 e1                                      mov r0, r3
005242a0  00 30 93 e5                                      ldr r3, [r3]
005242a4  0f e0 a0 e1                                      mov lr, pc
005242a8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005242ac  00 60 a0 e1                                      mov r6, r0
005242b0  00 10 90 e5                                      ldr r1, [r0]
005242b4  00 00 95 e5                                      ldr r0, [r5]
005242b8  3b a8 f7 eb                                      bl #0x30e3ac
005242bc  04 10 96 e5                                      ldr r1, [r6, #4]
005242c0  00 90 a0 e1                                      mov sb, r0
005242c4  04 00 95 e5                                      ldr r0, [r5, #4]
005242c8  37 a8 f7 eb                                      bl #0x30e3ac
005242cc  08 10 96 e5                                      ldr r1, [r6, #8]
005242d0  00 a0 a0 e1                                      mov sl, r0
005242d4  08 00 95 e5                                      ldr r0, [r5, #8]
005242d8  33 a8 f7 eb                                      bl #0x30e3ac
005242dc  09 10 a0 e1                                      mov r1, sb
005242e0  00 60 a0 e1                                      mov r6, r0
005242e4  09 00 a0 e1                                      mov r0, sb
005242e8  9f aa f7 eb                                      bl #0x30ed6c
005242ec  0a 10 a0 e1                                      mov r1, sl
005242f0  00 50 a0 e1                                      mov r5, r0
005242f4  0a 00 a0 e1                                      mov r0, sl
005242f8  9b aa f7 eb                                      bl #0x30ed6c
005242fc  00 10 a0 e1                                      mov r1, r0
00524300  05 00 a0 e1                                      mov r0, r5
00524304  26 aa f7 eb                                      bl #0x30eba4
00524308  06 10 a0 e1                                      mov r1, r6
0052430c  00 50 a0 e1                                      mov r5, r0
00524310  06 00 a0 e1                                      mov r0, r6
00524314  94 aa f7 eb                                      bl #0x30ed6c
00524318  00 10 a0 e1                                      mov r1, r0
0052431c  05 00 a0 e1                                      mov r0, r5
00524320  1f aa f7 eb                                      bl #0x30eba4
00524324  00 10 a0 e1                                      mov r1, r0
00524328  07 00 a0 e1                                      mov r0, r7
0052432c  1c aa f7 eb                                      bl #0x30eba4
00524330  00 40 94 e5                                      ldr r4, [r4]
00524334  00 70 a0 e1                                      mov r7, r0
00524338  04 00 58 e1                                      cmp r8, r4
0052433c  cf ff ff 1a                                      bne #0x524280
00524340  07 00 a0 e1                                      mov r0, r7
00524344  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00524538, declared_size=268, range_size=268, mode=arm
; class-group: PFObject
; alias: _ZN8PFObjectC2Ev
; demangled: PFObject::PFObject()
; decoder-mode: arm
00524538  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0052453c  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
00524540  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00524544  03 30 8f e0                                      add r3, pc, r3
00524548  01 e0 93 e7                                      ldr lr, [r3, r1]
0052454c  08 10 a0 e3                                      mov r1, #8
00524550  04 10 80 e5                                      str r1, [r0, #4]
00524554  00 20 a0 e3                                      mov r2, #0
00524558  00 c0 a0 e3                                      mov ip, #0
0052455c  fe 55 a0 e3                                      mov r5, #0x3f800000
00524560  02 10 a0 e3                                      mov r1, #2
00524564  00 c0 80 e5                                      str ip, [r0]
00524568  0c c0 80 e5                                      str ip, [r0, #0xc]
0052456c  10 c0 80 e5                                      str ip, [r0, #0x10]
00524570  18 20 80 e5                                      str r2, [r0, #0x18]
00524574  1c 20 80 e5                                      str r2, [r0, #0x1c]
00524578  20 20 80 e5                                      str r2, [r0, #0x20]
0052457c  14 10 80 e5                                      str r1, [r0, #0x14]
00524580  08 50 80 e5                                      str r5, [r0, #8]
00524584  00 60 9e e5                                      ldr r6, [lr]
00524588  00 40 a0 e1                                      mov r4, r0
0052458c  a8 00 9f e5                                      ldr r0, [pc, #0xa8]
00524590  24 60 84 e5                                      str r6, [r4, #0x24]
00524594  04 60 9e e5                                      ldr r6, [lr, #4]
00524598  00 00 93 e7                                      ldr r0, [r3, r0]
0052459c  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
005245a0  28 60 84 e5                                      str r6, [r4, #0x28]
005245a4  08 70 9e e5                                      ldr r7, [lr, #8]
005245a8  38 60 84 e2                                      add r6, r4, #0x38
005245ac  8c e0 84 e2                                      add lr, r4, #0x8c
005245b0  08 00 80 e2                                      add r0, r0, #8
005245b4  01 10 8f e0                                      add r1, pc, r1
005245b8  4c 00 84 e5                                      str r0, [r4, #0x4c]
005245bc  34 20 84 e5                                      str r2, [r4, #0x34]
005245c0  40 20 84 e5                                      str r2, [r4, #0x40]
005245c4  44 20 84 e5                                      str r2, [r4, #0x44]
005245c8  48 20 84 e5                                      str r2, [r4, #0x48]
005245cc  50 c0 84 e5                                      str ip, [r4, #0x50]
005245d0  54 c0 84 e5                                      str ip, [r4, #0x54]
005245d4  5c 20 84 e5                                      str r2, [r4, #0x5c]
005245d8  60 20 84 e5                                      str r2, [r4, #0x60]
005245dc  64 20 84 e5                                      str r2, [r4, #0x64]
005245e0  68 20 84 e5                                      str r2, [r4, #0x68]
005245e4  0e 00 a0 e1                                      mov r0, lr
005245e8  2c 70 84 e5                                      str r7, [r4, #0x2c]
005245ec  3c 60 84 e5                                      str r6, [r4, #0x3c]
005245f0  58 50 84 e5                                      str r5, [r4, #0x58]
005245f4  30 50 84 e5                                      str r5, [r4, #0x30]
005245f8  38 60 84 e5                                      str r6, [r4, #0x38]
005245fc  01 10 81 e2                                      add r1, r1, #1
00524600  6c 20 84 e5                                      str r2, [r4, #0x6c]
00524604  70 20 84 e5                                      str r2, [r4, #0x70]
00524608  7c c0 84 e5                                      str ip, [r4, #0x7c]
0052460c  88 20 84 e5                                      str r2, [r4, #0x88]
00524610  74 20 84 e5                                      str r2, [r4, #0x74]
00524614  78 20 84 e5                                      str r2, [r4, #0x78]
00524618  80 20 84 e5                                      str r2, [r4, #0x80]
0052461c  84 20 84 e5                                      str r2, [r4, #0x84]
00524620  9c e0 84 e5                                      str lr, [r4, #0x9c]
00524624  a0 e0 84 e5                                      str lr, [r4, #0xa0]
00524628  ae ff ff eb                                      bl #0x5244e8
0052462c  04 00 a0 e1                                      mov r0, r4
00524630  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00524634  4c 05 47 00 40 43 00 00 78 12 00 00 2c e4 3c 00  .byte 0x4c, 0x05, 0x47, 0x00, 0x40, 0x43, 0x00, 0x00, 0x78, 0x12, 0x00, 0x00, 0x2c, 0xe4, 0x3c, 0x00

; FUNCTION 0x00524644, declared_size=268, range_size=268, mode=arm
; class-group: PFObject
; alias: _ZN8PFObjectC1Ev
; demangled: PFObject::PFObject()
; decoder-mode: arm
00524644  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
00524648  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
0052464c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00524650  03 30 8f e0                                      add r3, pc, r3
00524654  01 e0 93 e7                                      ldr lr, [r3, r1]
00524658  08 10 a0 e3                                      mov r1, #8
0052465c  04 10 80 e5                                      str r1, [r0, #4]
00524660  00 20 a0 e3                                      mov r2, #0
00524664  00 c0 a0 e3                                      mov ip, #0
00524668  fe 55 a0 e3                                      mov r5, #0x3f800000
0052466c  02 10 a0 e3                                      mov r1, #2
00524670  00 c0 80 e5                                      str ip, [r0]
00524674  0c c0 80 e5                                      str ip, [r0, #0xc]
00524678  10 c0 80 e5                                      str ip, [r0, #0x10]
0052467c  18 20 80 e5                                      str r2, [r0, #0x18]
00524680  1c 20 80 e5                                      str r2, [r0, #0x1c]
00524684  20 20 80 e5                                      str r2, [r0, #0x20]
00524688  14 10 80 e5                                      str r1, [r0, #0x14]
0052468c  08 50 80 e5                                      str r5, [r0, #8]
00524690  00 60 9e e5                                      ldr r6, [lr]
00524694  00 40 a0 e1                                      mov r4, r0
00524698  a8 00 9f e5                                      ldr r0, [pc, #0xa8]
0052469c  24 60 84 e5                                      str r6, [r4, #0x24]
005246a0  04 60 9e e5                                      ldr r6, [lr, #4]
005246a4  00 00 93 e7                                      ldr r0, [r3, r0]
005246a8  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
005246ac  28 60 84 e5                                      str r6, [r4, #0x28]
005246b0  08 70 9e e5                                      ldr r7, [lr, #8]
005246b4  38 60 84 e2                                      add r6, r4, #0x38
005246b8  8c e0 84 e2                                      add lr, r4, #0x8c
005246bc  08 00 80 e2                                      add r0, r0, #8
005246c0  01 10 8f e0                                      add r1, pc, r1
005246c4  4c 00 84 e5                                      str r0, [r4, #0x4c]
005246c8  34 20 84 e5                                      str r2, [r4, #0x34]
005246cc  40 20 84 e5                                      str r2, [r4, #0x40]
005246d0  44 20 84 e5                                      str r2, [r4, #0x44]
005246d4  48 20 84 e5                                      str r2, [r4, #0x48]
005246d8  50 c0 84 e5                                      str ip, [r4, #0x50]
005246dc  54 c0 84 e5                                      str ip, [r4, #0x54]
005246e0  5c 20 84 e5                                      str r2, [r4, #0x5c]
005246e4  60 20 84 e5                                      str r2, [r4, #0x60]
005246e8  64 20 84 e5                                      str r2, [r4, #0x64]
005246ec  68 20 84 e5                                      str r2, [r4, #0x68]
005246f0  0e 00 a0 e1                                      mov r0, lr
005246f4  2c 70 84 e5                                      str r7, [r4, #0x2c]
005246f8  3c 60 84 e5                                      str r6, [r4, #0x3c]
005246fc  58 50 84 e5                                      str r5, [r4, #0x58]
00524700  30 50 84 e5                                      str r5, [r4, #0x30]
00524704  38 60 84 e5                                      str r6, [r4, #0x38]
00524708  01 10 81 e2                                      add r1, r1, #1
0052470c  6c 20 84 e5                                      str r2, [r4, #0x6c]
00524710  70 20 84 e5                                      str r2, [r4, #0x70]
00524714  7c c0 84 e5                                      str ip, [r4, #0x7c]
00524718  88 20 84 e5                                      str r2, [r4, #0x88]
0052471c  74 20 84 e5                                      str r2, [r4, #0x74]
00524720  78 20 84 e5                                      str r2, [r4, #0x78]
00524724  80 20 84 e5                                      str r2, [r4, #0x80]
00524728  84 20 84 e5                                      str r2, [r4, #0x84]
0052472c  9c e0 84 e5                                      str lr, [r4, #0x9c]
00524730  a0 e0 84 e5                                      str lr, [r4, #0xa0]
00524734  6b ff ff eb                                      bl #0x5244e8
00524738  04 00 a0 e1                                      mov r0, r4
0052473c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00524740  40 04 47 00 40 43 00 00 78 12 00 00 20 e3 3c 00  .byte 0x40, 0x04, 0x47, 0x00, 0x40, 0x43, 0x00, 0x00, 0x78, 0x12, 0x00, 0x00, 0x20, 0xe3, 0x3c, 0x00

; FUNCTION 0x00524750, declared_size=216, range_size=216, mode=arm
; class-group: PFObject
; alias: _ZN8PFObjectD2Ev
; demangled: PFObject::~PFObject()
; decoder-mode: arm
00524750  70 40 2d e9                                      push {r4, r5, r6, lr}
00524754  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
00524758  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
0052475c  08 d0 4d e2                                      sub sp, sp, #8
00524760  05 50 8f e0                                      add r5, pc, r5
00524764  03 60 95 e7                                      ldr r6, [r5, r3]
00524768  00 40 a0 e1                                      mov r4, r0
0052476c  00 10 a0 e1                                      mov r1, r0
00524770  06 00 a0 e1                                      mov r0, r6
00524774  da 18 00 eb                                      bl #0x52aae4
00524778  00 c0 a0 e3                                      mov ip, #0
0052477c  06 00 a0 e1                                      mov r0, r6
00524780  0c 30 a0 e1                                      mov r3, ip
00524784  04 10 a0 e1                                      mov r1, r4
00524788  00 20 a0 e3                                      mov r2, #0
0052478c  00 c0 8d e5                                      str ip, [sp]
00524790  a7 0e 00 eb                                      bl #0x528234
00524794  8c 30 84 e2                                      add r3, r4, #0x8c
00524798  14 00 93 e5                                      ldr r0, [r3, #0x14]
0052479c  03 00 50 e1                                      cmp r0, r3
005247a0  06 00 00 0a                                      beq #0x5247c0
005247a4  00 00 50 e3                                      cmp r0, #0
005247a8  04 00 00 0a                                      beq #0x5247c0
005247ac  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
005247b0  01 10 60 e0                                      rsb r1, r0, r1
005247b4  80 00 51 e3                                      cmp r1, #0x80
005247b8  15 00 00 8a                                      bhi #0x524814
005247bc  cf 91 07 eb                                      bl #0x708f00
005247c0  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
005247c4  38 00 94 e5                                      ldr r0, [r4, #0x38]
005247c8  38 60 84 e2                                      add r6, r4, #0x38
005247cc  03 30 95 e7                                      ldr r3, [r5, r3]
005247d0  06 00 50 e1                                      cmp r0, r6
005247d4  08 30 83 e2                                      add r3, r3, #8
005247d8  4c 30 84 e5                                      str r3, [r4, #0x4c]
005247dc  01 00 00 1a                                      bne #0x5247e8
005247e0  06 00 00 ea                                      b #0x524800
005247e4  05 00 a0 e1                                      mov r0, r5
005247e8  00 50 90 e5                                      ldr r5, [r0]
005247ec  0c 10 a0 e3                                      mov r1, #0xc
005247f0  c2 91 07 eb                                      bl #0x708f00
005247f4  06 00 55 e1                                      cmp r5, r6
005247f8  f9 ff ff 1a                                      bne #0x5247e4
005247fc  06 00 a0 e1                                      mov r0, r6
00524800  38 00 84 e5                                      str r0, [r4, #0x38]
00524804  04 00 86 e5                                      str r0, [r6, #4]
00524808  04 00 a0 e1                                      mov r0, r4
0052480c  08 d0 8d e2                                      add sp, sp, #8
00524810  70 80 bd e8                                      pop {r4, r5, r6, pc}
00524814  09 af f7 eb                                      bl #0x310440
00524818  e8 ff ff ea                                      b #0x5247c0
; mapping-symbol data/literal pool
0052481c  30 03 47 00 04 12 00 00 60 0f 00 00              .byte 0x30, 0x03, 0x47, 0x00, 0x04, 0x12, 0x00, 0x00, 0x60, 0x0f, 0x00, 0x00

; FUNCTION 0x00524828, declared_size=776, range_size=776, mode=arm
; class-group: PFObject
; alias: _ZNK8PFObject12DBG_DrawPathEv
; demangled: PFObject::DBG_DrawPath() const
; decoder-mode: arm
00524828  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0052482c  00 50 a0 e1                                      mov r5, r0
00524830  38 30 b5 e5                                      ldr r3, [r5, #0x38]!
00524834  ec 22 9f e5                                      ldr r2, [pc, #0x2ec]
00524838  6c d0 4d e2                                      sub sp, sp, #0x6c
0052483c  05 00 53 e1                                      cmp r3, r5
00524840  00 80 a0 e1                                      mov r8, r0
00524844  02 20 8f e0                                      add r2, pc, r2
00524848  af 00 00 0a                                      beq #0x524b0c
0052484c  00 30 93 e5                                      ldr r3, [r3]
00524850  03 00 55 e1                                      cmp r5, r3
00524854  fc ff ff 1a                                      bne #0x52484c
00524858  cc 32 9f e5                                      ldr r3, [pc, #0x2cc]
0052485c  03 30 92 e7                                      ldr r3, [r2, r3]
00524860  10 30 93 e5                                      ldr r3, [r3, #0x10]
00524864  10 60 93 e5                                      ldr r6, [r3, #0x10]
00524868  ff 3f 0f e3                                      movw r3, #0xffff
0052486c  dc 40 96 e5                                      ldr r4, [r6, #0xdc]
00524870  be 22 d4 e1                                      ldrh r2, [r4, #0x2e]
00524874  03 00 52 e1                                      cmp r2, r3
00524878  a5 00 00 0a                                      beq #0x524b14
0052487c  64 30 8d e2                                      add r3, sp, #0x64
00524880  0c 30 8d e5                                      str r3, [sp, #0xc]
00524884  04 10 a0 e1                                      mov r1, r4
00524888  01 30 a0 e3                                      mov r3, #1
0052488c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00524890  13 e2 02 eb                                      bl #0x5dd0e4
00524894  06 00 a0 e1                                      mov r0, r6
00524898  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0052489c  02 ff ff eb                                      bl #0x5244ac
005248a0  38 40 98 e5                                      ldr r4, [r8, #0x38]
005248a4  00 30 e0 e3                                      mvn r3, #0
005248a8  00 20 a0 e3                                      mov r2, #0
005248ac  05 00 54 e1                                      cmp r4, r5
005248b0  60 20 cd e5                                      strb r2, [sp, #0x60]
005248b4  63 30 cd e5                                      strb r3, [sp, #0x63]
005248b8  61 30 cd e5                                      strb r3, [sp, #0x61]
005248bc  62 30 cd e5                                      strb r3, [sp, #0x62]
005248c0  36 00 00 0a                                      beq #0x5249a0
005248c4  50 30 8d e2                                      add r3, sp, #0x50
005248c8  08 30 8d e5                                      str r3, [sp, #8]
005248cc  44 30 8d e2                                      add r3, sp, #0x44
005248d0  04 30 8d e5                                      str r3, [sp, #4]
005248d4  08 30 94 e5                                      ldr r3, [r4, #8]
005248d8  00 20 96 e5                                      ldr r2, [r6]
005248dc  03 00 a0 e1                                      mov r0, r3
005248e0  00 30 93 e5                                      ldr r3, [r3]
005248e4  1c 70 92 e5                                      ldr r7, [r2, #0x1c]
005248e8  0f e0 a0 e1                                      mov lr, pc
005248ec  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005248f0  00 10 a0 e3                                      mov r1, #0
005248f4  00 a0 a0 e1                                      mov sl, r0
005248f8  04 00 90 e5                                      ldr r0, [r0, #4]
005248fc  a8 a8 f7 eb                                      bl #0x30eba4
00524900  fe 15 a0 e3                                      mov r1, #0x3f800000
00524904  00 b0 a0 e1                                      mov fp, r0
00524908  08 00 9a e5                                      ldr r0, [sl, #8]
0052490c  a4 a8 f7 eb                                      bl #0x30eba4
00524910  00 10 a0 e3                                      mov r1, #0
00524914  00 90 a0 e1                                      mov sb, r0
00524918  00 00 9a e5                                      ldr r0, [sl]
0052491c  a0 a8 f7 eb                                      bl #0x30eba4
00524920  54 b0 8d e5                                      str fp, [sp, #0x54]
00524924  50 00 8d e5                                      str r0, [sp, #0x50]
00524928  58 90 8d e5                                      str sb, [sp, #0x58]
0052492c  08 30 94 e5                                      ldr r3, [r4, #8]
00524930  03 00 a0 e1                                      mov r0, r3
00524934  00 30 93 e5                                      ldr r3, [r3]
00524938  0f e0 a0 e1                                      mov lr, pc
0052493c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00524940  00 10 a0 e3                                      mov r1, #0
00524944  00 a0 a0 e1                                      mov sl, r0
00524948  04 00 90 e5                                      ldr r0, [r0, #4]
0052494c  94 a8 f7 eb                                      bl #0x30eba4
00524950  fe 15 a0 e3                                      mov r1, #0x3f800000
00524954  00 b0 a0 e1                                      mov fp, r0
00524958  08 00 9a e5                                      ldr r0, [sl, #8]
0052495c  90 a8 f7 eb                                      bl #0x30eba4
00524960  00 10 a0 e3                                      mov r1, #0
00524964  00 90 a0 e1                                      mov sb, r0
00524968  00 00 9a e5                                      ldr r0, [sl]
0052496c  8c a8 f7 eb                                      bl #0x30eba4
00524970  48 b0 8d e5                                      str fp, [sp, #0x48]
00524974  44 00 8d e5                                      str r0, [sp, #0x44]
00524978  4c 90 8d e5                                      str sb, [sp, #0x4c]
0052497c  06 00 a0 e1                                      mov r0, r6
00524980  08 10 9d e5                                      ldr r1, [sp, #8]
00524984  04 20 9d e5                                      ldr r2, [sp, #4]
00524988  60 30 9d e5                                      ldr r3, [sp, #0x60]
0052498c  37 ff 2f e1                                      blx r7
00524990  00 40 94 e5                                      ldr r4, [r4]
00524994  04 00 55 e1                                      cmp r5, r4
00524998  cd ff ff 1a                                      bne #0x5248d4
0052499c  38 50 98 e5                                      ldr r5, [r8, #0x38]
005249a0  00 30 e0 e3                                      mvn r3, #0
005249a4  00 20 a0 e3                                      mov r2, #0
005249a8  5d 20 cd e5                                      strb r2, [sp, #0x5d]
005249ac  5f 30 cd e5                                      strb r3, [sp, #0x5f]
005249b0  5c 30 cd e5                                      strb r3, [sp, #0x5c]
005249b4  5e 30 cd e5                                      strb r3, [sp, #0x5e]
005249b8  3c 20 98 e5                                      ldr r2, [r8, #0x3c]
005249bc  00 30 96 e5                                      ldr r3, [r6]
005249c0  1c 00 98 e5                                      ldr r0, [r8, #0x1c]
005249c4  00 10 a0 e3                                      mov r1, #0
005249c8  08 40 92 e5                                      ldr r4, [r2, #8]
005249cc  1c 70 93 e5                                      ldr r7, [r3, #0x1c]
005249d0  73 a8 f7 eb                                      bl #0x30eba4
005249d4  fe 15 a0 e3                                      mov r1, #0x3f800000
005249d8  00 90 a0 e1                                      mov sb, r0
005249dc  20 00 98 e5                                      ldr r0, [r8, #0x20]
005249e0  6f a8 f7 eb                                      bl #0x30eba4
005249e4  00 10 a0 e3                                      mov r1, #0
005249e8  00 a0 a0 e1                                      mov sl, r0
005249ec  18 00 98 e5                                      ldr r0, [r8, #0x18]
005249f0  6b a8 f7 eb                                      bl #0x30eba4
005249f4  08 30 95 e5                                      ldr r3, [r5, #8]
005249f8  38 00 8d e5                                      str r0, [sp, #0x38]
005249fc  3c 90 8d e5                                      str sb, [sp, #0x3c]
00524a00  40 a0 8d e5                                      str sl, [sp, #0x40]
00524a04  03 00 a0 e1                                      mov r0, r3
00524a08  00 30 93 e5                                      ldr r3, [r3]
00524a0c  0f e0 a0 e1                                      mov lr, pc
00524a10  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00524a14  00 10 a0 e3                                      mov r1, #0
00524a18  00 50 a0 e1                                      mov r5, r0
00524a1c  04 00 90 e5                                      ldr r0, [r0, #4]
00524a20  5f a8 f7 eb                                      bl #0x30eba4
00524a24  fe 15 a0 e3                                      mov r1, #0x3f800000
00524a28  00 90 a0 e1                                      mov sb, r0
00524a2c  08 00 95 e5                                      ldr r0, [r5, #8]
00524a30  5b a8 f7 eb                                      bl #0x30eba4
00524a34  00 10 a0 e3                                      mov r1, #0
00524a38  00 a0 a0 e1                                      mov sl, r0
00524a3c  00 00 95 e5                                      ldr r0, [r5]
00524a40  57 a8 f7 eb                                      bl #0x30eba4
00524a44  2c 20 8d e2                                      add r2, sp, #0x2c
00524a48  2c 00 8d e5                                      str r0, [sp, #0x2c]
00524a4c  34 a0 8d e5                                      str sl, [sp, #0x34]
00524a50  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00524a54  06 00 a0 e1                                      mov r0, r6
00524a58  38 10 8d e2                                      add r1, sp, #0x38
00524a5c  30 90 8d e5                                      str sb, [sp, #0x30]
00524a60  37 ff 2f e1                                      blx r7
00524a64  00 30 96 e5                                      ldr r3, [r6]
00524a68  44 00 98 e5                                      ldr r0, [r8, #0x44]
00524a6c  00 10 a0 e3                                      mov r1, #0
00524a70  1c 50 93 e5                                      ldr r5, [r3, #0x1c]
00524a74  4a a8 f7 eb                                      bl #0x30eba4
00524a78  fe 15 a0 e3                                      mov r1, #0x3f800000
00524a7c  00 a0 a0 e1                                      mov sl, r0
00524a80  48 00 98 e5                                      ldr r0, [r8, #0x48]
00524a84  46 a8 f7 eb                                      bl #0x30eba4
00524a88  00 10 a0 e3                                      mov r1, #0
00524a8c  00 70 a0 e1                                      mov r7, r0
00524a90  40 00 98 e5                                      ldr r0, [r8, #0x40]
00524a94  42 a8 f7 eb                                      bl #0x30eba4
00524a98  28 70 8d e5                                      str r7, [sp, #0x28]
00524a9c  20 00 8d e5                                      str r0, [sp, #0x20]
00524aa0  24 a0 8d e5                                      str sl, [sp, #0x24]
00524aa4  00 30 94 e5                                      ldr r3, [r4]
00524aa8  04 00 a0 e1                                      mov r0, r4
00524aac  0f e0 a0 e1                                      mov lr, pc
00524ab0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00524ab4  00 10 a0 e3                                      mov r1, #0
00524ab8  00 40 a0 e1                                      mov r4, r0
00524abc  04 00 90 e5                                      ldr r0, [r0, #4]
00524ac0  37 a8 f7 eb                                      bl #0x30eba4
00524ac4  fe 15 a0 e3                                      mov r1, #0x3f800000
00524ac8  00 80 a0 e1                                      mov r8, r0
00524acc  08 00 94 e5                                      ldr r0, [r4, #8]
00524ad0  33 a8 f7 eb                                      bl #0x30eba4
00524ad4  00 10 a0 e3                                      mov r1, #0
00524ad8  00 70 a0 e1                                      mov r7, r0
00524adc  00 00 94 e5                                      ldr r0, [r4]
00524ae0  2f a8 f7 eb                                      bl #0x30eba4
00524ae4  18 80 8d e5                                      str r8, [sp, #0x18]
00524ae8  14 00 8d e5                                      str r0, [sp, #0x14]
00524aec  1c 70 8d e5                                      str r7, [sp, #0x1c]
00524af0  06 00 a0 e1                                      mov r0, r6
00524af4  20 10 8d e2                                      add r1, sp, #0x20
00524af8  14 20 8d e2                                      add r2, sp, #0x14
00524afc  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00524b00  35 ff 2f e1                                      blx r5
00524b04  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00524b08  36 b0 f7 eb                                      bl #0x310be8
00524b0c  6c d0 8d e2                                      add sp, sp, #0x6c
00524b10  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00524b14  04 00 a0 e1                                      mov r0, r4
00524b18  01 10 a0 e3                                      mov r1, #1
00524b1c  01 d0 02 eb                                      bl #0x5d8b28
00524b20  00 20 a0 e1                                      mov r2, r0
00524b24  54 ff ff ea                                      b #0x52487c
; mapping-symbol data/literal pool
00524b28  4c 02 47 00 f4 37 00 00                          .byte 0x4c, 0x02, 0x47, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00524b30, declared_size=324, range_size=324, mode=arm
; class-group: PFObject
; alias: _ZNK8PFObject16DBG_DrawObstacleEv
; demangled: PFObject::DBG_DrawObstacle() const
; decoder-mode: arm
00524b30  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00524b34  04 30 90 e5                                      ldr r3, [r0, #4]
00524b38  24 41 9f e5                                      ldr r4, [pc, #0x124]
00524b3c  1c d0 4d e2                                      sub sp, sp, #0x1c
00524b40  0c 30 03 e2                                      and r3, r3, #0xc
00524b44  0c 00 53 e3                                      cmp r3, #0xc
00524b48  00 50 a0 e1                                      mov r5, r0
00524b4c  04 40 8f e0                                      add r4, pc, r4
00524b50  2f 00 00 1a                                      bne #0x524c14
00524b54  0c 61 9f e5                                      ldr r6, [pc, #0x10c]
00524b58  06 60 8f e0                                      add r6, pc, r6
00524b5c  0c 80 96 e5                                      ldr r8, [r6, #0xc]
00524b60  01 80 18 e2                                      ands r8, r8, #1
00524b64  31 00 00 0a                                      beq #0x524c30
00524b68  fc 80 9f e5                                      ldr r8, [pc, #0xfc]
00524b6c  08 30 94 e7                                      ldr r3, [r4, r8]
00524b70  10 30 93 e5                                      ldr r3, [r3, #0x10]
00524b74  10 70 93 e5                                      ldr r7, [r3, #0x10]
00524b78  ff 3f 0f e3                                      movw r3, #0xffff
00524b7c  dc a0 97 e5                                      ldr sl, [r7, #0xdc]
00524b80  be 22 da e1                                      ldrh r2, [sl, #0x2e]
00524b84  03 00 52 e1                                      cmp r2, r3
00524b88  23 00 00 0a                                      beq #0x524c1c
00524b8c  14 60 8d e2                                      add r6, sp, #0x14
00524b90  01 30 a0 e3                                      mov r3, #1
00524b94  06 00 a0 e1                                      mov r0, r6
00524b98  0a 10 a0 e1                                      mov r1, sl
00524b9c  50 e1 02 eb                                      bl #0x5dd0e4
00524ba0  06 10 a0 e1                                      mov r1, r6
00524ba4  07 00 a0 e1                                      mov r0, r7
00524ba8  3f fe ff eb                                      bl #0x5244ac
00524bac  06 00 a0 e1                                      mov r0, r6
00524bb0  0c b0 f7 eb                                      bl #0x310be8
00524bb4  08 10 94 e7                                      ldr r1, [r4, r8]
00524bb8  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00524bbc  18 20 95 e5                                      ldr r2, [r5, #0x18]
00524bc0  10 c0 91 e5                                      ldr ip, [r1, #0x10]
00524bc4  41 14 a0 e3                                      mov r1, #0x41000000
00524bc8  20 00 95 e5                                      ldr r0, [r5, #0x20]
00524bcc  02 16 81 e2                                      add r1, r1, #0x200000
00524bd0  1c 60 9c e5                                      ldr r6, [ip, #0x1c]
00524bd4  0c 20 8d e5                                      str r2, [sp, #0xc]
00524bd8  10 30 8d e5                                      str r3, [sp, #0x10]
00524bdc  f0 a7 f7 eb                                      bl #0x30eba4
00524be0  30 10 95 e5                                      ldr r1, [r5, #0x30]
00524be4  00 40 a0 e1                                      mov r4, r0
00524be8  08 00 95 e5                                      ldr r0, [r5, #8]
00524bec  ec a7 f7 eb                                      bl #0x30eba4
00524bf0  78 c0 9f e5                                      ldr ip, [pc, #0x78]
00524bf4  00 30 a0 e1                                      mov r3, r0
00524bf8  0c 10 8d e2                                      add r1, sp, #0xc
00524bfc  0c c0 8f e0                                      add ip, pc, ip
00524c00  10 c0 8c e2                                      add ip, ip, #0x10
00524c04  06 00 a0 e1                                      mov r0, r6
00524c08  04 20 a0 e1                                      mov r2, r4
00524c0c  00 c0 8d e5                                      str ip, [sp]
00524c10  4f b5 f8 eb                                      bl #0x352154
00524c14  1c d0 8d e2                                      add sp, sp, #0x1c
00524c18  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00524c1c  0a 00 a0 e1                                      mov r0, sl
00524c20  01 10 a0 e3                                      mov r1, #1
00524c24  bf cf 02 eb                                      bl #0x5d8b28
00524c28  00 20 a0 e1                                      mov r2, r0
00524c2c  d6 ff ff ea                                      b #0x524b8c
00524c30  0c 70 86 e2                                      add r7, r6, #0xc
00524c34  07 00 a0 e1                                      mov r0, r7
00524c38  cb a6 f7 eb                                      bl #0x30e76c
00524c3c  00 00 50 e3                                      cmp r0, #0
00524c40  c8 ff ff 0a                                      beq #0x524b68
00524c44  00 30 e0 e3                                      mvn r3, #0
00524c48  13 30 c6 e5                                      strb r3, [r6, #0x13]
00524c4c  12 80 c6 e5                                      strb r8, [r6, #0x12]
00524c50  10 30 c6 e5                                      strb r3, [r6, #0x10]
00524c54  11 80 c6 e5                                      strb r8, [r6, #0x11]
00524c58  07 00 a0 e1                                      mov r0, r7
00524c5c  76 a7 f7 eb                                      bl #0x30ea3c
00524c60  c0 ff ff ea                                      b #0x524b68
; mapping-symbol data/literal pool
00524c64  44 ff 46 00 8c 17 4d 00 f4 37 00 00 e8 16 4d 00  .byte 0x44, 0xff, 0x46, 0x00, 0x8c, 0x17, 0x4d, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xe8, 0x16, 0x4d, 0x00

; FUNCTION 0x00524cd0, declared_size=640, range_size=640, mode=arm
; class-group: PFObject
; alias: _ZNK8PFObject22DBG_DrawObstacleForcesEv
; demangled: PFObject::DBG_DrawObstacleForces() const
; decoder-mode: arm
00524cd0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00524cd4  04 30 90 e5                                      ldr r3, [r0, #4]
00524cd8  5c 42 9f e5                                      ldr r4, [pc, #0x25c]
00524cdc  5c d0 4d e2                                      sub sp, sp, #0x5c
00524ce0  01 20 13 e2                                      ands r2, r3, #1
00524ce4  00 50 a0 e1                                      mov r5, r0
00524ce8  04 40 8f e0                                      add r4, pc, r4
00524cec  7e 00 00 1a                                      bne #0x524eec
00524cf0  02 00 13 e3                                      tst r3, #2
00524cf4  7c 00 00 0a                                      beq #0x524eec
00524cf8  40 62 9f e5                                      ldr r6, [pc, #0x240]
00524cfc  00 30 a0 e3                                      mov r3, #0
00524d00  50 20 8d e5                                      str r2, [sp, #0x50]
00524d04  06 60 8f e0                                      add r6, pc, r6
00524d08  14 70 96 e5                                      ldr r7, [r6, #0x14]
00524d0c  44 30 8d e5                                      str r3, [sp, #0x44]
00524d10  48 20 8d e5                                      str r2, [sp, #0x48]
00524d14  01 70 17 e2                                      ands r7, r7, #1
00524d18  4c 20 8d e5                                      str r2, [sp, #0x4c]
00524d1c  3c 30 8d e5                                      str r3, [sp, #0x3c]
00524d20  40 30 8d e5                                      str r3, [sp, #0x40]
00524d24  72 00 00 0a                                      beq #0x524ef4
00524d28  14 32 9f e5                                      ldr r3, [pc, #0x214]
00524d2c  48 20 8d e2                                      add r2, sp, #0x48
00524d30  1c 20 8d e5                                      str r2, [sp, #0x1c]
00524d34  03 00 94 e7                                      ldr r0, [r4, r3]
00524d38  3c 20 8d e2                                      add r2, sp, #0x3c
00524d3c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00524d40  05 10 a0 e1                                      mov r1, r5
00524d44  45 0a 00 eb                                      bl #0x527660
00524d48  f8 31 9f e5                                      ldr r3, [pc, #0x1f8]
00524d4c  10 00 8d e5                                      str r0, [sp, #0x10]
00524d50  03 30 94 e7                                      ldr r3, [r4, r3]
00524d54  10 30 93 e5                                      ldr r3, [r3, #0x10]
00524d58  10 70 93 e5                                      ldr r7, [r3, #0x10]
00524d5c  ff 3f 0f e3                                      movw r3, #0xffff
00524d60  dc 60 97 e5                                      ldr r6, [r7, #0xdc]
00524d64  be 22 d6 e1                                      ldrh r2, [r6, #0x2e]
00524d68  03 00 52 e1                                      cmp r2, r3
00524d6c  6d 00 00 0a                                      beq #0x524f28
00524d70  54 40 8d e2                                      add r4, sp, #0x54
00524d74  01 30 a0 e3                                      mov r3, #1
00524d78  06 10 a0 e1                                      mov r1, r6
00524d7c  04 00 a0 e1                                      mov r0, r4
00524d80  d7 e0 02 eb                                      bl #0x5dd0e4
00524d84  07 00 a0 e1                                      mov r0, r7
00524d88  04 10 a0 e1                                      mov r1, r4
00524d8c  c6 fd ff eb                                      bl #0x5244ac
00524d90  04 00 a0 e1                                      mov r0, r4
00524d94  93 af f7 eb                                      bl #0x310be8
00524d98  10 30 9d e5                                      ldr r3, [sp, #0x10]
00524d9c  00 00 53 e3                                      cmp r3, #0
00524da0  4f 00 00 0a                                      beq #0x524ee4
00524da4  a0 31 9f e5                                      ldr r3, [pc, #0x1a0]
00524da8  00 40 a0 e3                                      mov r4, #0
00524dac  30 e0 8d e2                                      add lr, sp, #0x30
00524db0  03 30 8f e0                                      add r3, pc, r3
00524db4  24 20 8d e2                                      add r2, sp, #0x24
00524db8  04 60 a0 e1                                      mov r6, r4
00524dbc  0c 30 8d e5                                      str r3, [sp, #0xc]
00524dc0  14 e0 8d e5                                      str lr, [sp, #0x14]
00524dc4  18 20 8d e5                                      str r2, [sp, #0x18]
00524dc8  48 b0 9d e5                                      ldr fp, [sp, #0x48]
00524dcc  43 14 a0 e3                                      mov r1, #0x43000000
00524dd0  7f 18 81 e2                                      add r1, r1, #0x7f0000
00524dd4  04 a0 8b e0                                      add sl, fp, r4
00524dd8  0c 00 9a e5                                      ldr r0, [sl, #0xc]
00524ddc  e2 a7 f7 eb                                      bl #0x30ed6c
00524de0  2e 65 0e eb                                      bl #0x8be2a0
00524de4  0c e0 9d e5                                      ldr lr, [sp, #0xc]
00524de8  00 30 e0 e1                                      mvn r3, r0
00524dec  73 30 ef e6                                      uxtb r3, r3
00524df0  19 30 ce e5                                      strb r3, [lr, #0x19]
00524df4  1a 30 ce e5                                      strb r3, [lr, #0x1a]
00524df8  0a 00 a0 e1                                      mov r0, sl
00524dfc  ab a0 f8 eb                                      bl #0x34d0b0
00524e00  42 14 a0 e3                                      mov r1, #0x42000000
00524e04  00 80 a0 e1                                      mov r8, r0
00524e08  32 17 81 e2                                      add r1, r1, #0xc80000
00524e0c  0c 00 9a e5                                      ldr r0, [sl, #0xc]
00524e10  d5 a7 f7 eb                                      bl #0x30ed6c
00524e14  42 14 a0 e3                                      mov r1, #0x42000000
00524e18  32 17 81 e2                                      add r1, r1, #0xc80000
00524e1c  60 a7 f7 eb                                      bl #0x30eba4
00524e20  00 90 a0 e1                                      mov sb, r0
00524e24  00 10 a0 e1                                      mov r1, r0
00524e28  00 00 98 e5                                      ldr r0, [r8]
00524e2c  ce a7 f7 eb                                      bl #0x30ed6c
00524e30  09 10 a0 e1                                      mov r1, sb
00524e34  00 00 88 e5                                      str r0, [r8]
00524e38  04 00 98 e5                                      ldr r0, [r8, #4]
00524e3c  ca a7 f7 eb                                      bl #0x30ed6c
00524e40  09 10 a0 e1                                      mov r1, sb
00524e44  04 00 88 e5                                      str r0, [r8, #4]
00524e48  08 00 98 e5                                      ldr r0, [r8, #8]
00524e4c  c6 a7 f7 eb                                      bl #0x30ed6c
00524e50  08 00 88 e5                                      str r0, [r8, #8]
00524e54  00 30 97 e5                                      ldr r3, [r7]
00524e58  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
00524e5c  20 90 95 e5                                      ldr sb, [r5, #0x20]
00524e60  18 80 95 e5                                      ldr r8, [r5, #0x18]
00524e64  1c c0 93 e5                                      ldr ip, [r3, #0x1c]
00524e68  34 00 8d e5                                      str r0, [sp, #0x34]
00524e6c  30 80 8d e5                                      str r8, [sp, #0x30]
00524e70  38 90 8d e5                                      str sb, [sp, #0x38]
00524e74  04 10 9a e5                                      ldr r1, [sl, #4]
00524e78  04 c0 8d e5                                      str ip, [sp, #4]
00524e7c  48 a7 f7 eb                                      bl #0x30eba4
00524e80  08 10 9a e5                                      ldr r1, [sl, #8]
00524e84  00 30 a0 e1                                      mov r3, r0
00524e88  09 00 a0 e1                                      mov r0, sb
00524e8c  08 30 8d e5                                      str r3, [sp, #8]
00524e90  43 a7 f7 eb                                      bl #0x30eba4
00524e94  04 10 9b e7                                      ldr r1, [fp, r4]
00524e98  00 a0 a0 e1                                      mov sl, r0
00524e9c  08 00 a0 e1                                      mov r0, r8
00524ea0  3f a7 f7 eb                                      bl #0x30eba4
00524ea4  08 30 9d e5                                      ldr r3, [sp, #8]
00524ea8  0c e0 9d e5                                      ldr lr, [sp, #0xc]
00524eac  24 00 8d e5                                      str r0, [sp, #0x24]
00524eb0  28 30 8d e5                                      str r3, [sp, #0x28]
00524eb4  18 20 9d e5                                      ldr r2, [sp, #0x18]
00524eb8  2c a0 8d e5                                      str sl, [sp, #0x2c]
00524ebc  07 00 a0 e1                                      mov r0, r7
00524ec0  14 10 9d e5                                      ldr r1, [sp, #0x14]
00524ec4  18 30 9e e5                                      ldr r3, [lr, #0x18]
00524ec8  04 c0 9d e5                                      ldr ip, [sp, #4]
00524ecc  3c ff 2f e1                                      blx ip
00524ed0  10 20 9d e5                                      ldr r2, [sp, #0x10]
00524ed4  01 60 86 e2                                      add r6, r6, #1
00524ed8  14 40 84 e2                                      add r4, r4, #0x14
00524edc  02 00 56 e1                                      cmp r6, r2
00524ee0  b8 ff ff 1a                                      bne #0x524dc8
00524ee4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00524ee8  61 ff ff eb                                      bl #0x524c74
00524eec  5c d0 8d e2                                      add sp, sp, #0x5c
00524ef0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00524ef4  14 80 86 e2                                      add r8, r6, #0x14
00524ef8  08 00 a0 e1                                      mov r0, r8
00524efc  1a a6 f7 eb                                      bl #0x30e76c
00524f00  00 00 50 e3                                      cmp r0, #0
00524f04  87 ff ff 0a                                      beq #0x524d28
00524f08  00 30 e0 e3                                      mvn r3, #0
00524f0c  1b 30 c6 e5                                      strb r3, [r6, #0x1b]
00524f10  1a 70 c6 e5                                      strb r7, [r6, #0x1a]
00524f14  18 30 c6 e5                                      strb r3, [r6, #0x18]
00524f18  19 70 c6 e5                                      strb r7, [r6, #0x19]
00524f1c  08 00 a0 e1                                      mov r0, r8
00524f20  c5 a6 f7 eb                                      bl #0x30ea3c
00524f24  7f ff ff ea                                      b #0x524d28
00524f28  06 00 a0 e1                                      mov r0, r6
00524f2c  01 10 a0 e3                                      mov r1, #1
00524f30  fc ce 02 eb                                      bl #0x5d8b28
00524f34  00 20 a0 e1                                      mov r2, r0
00524f38  8c ff ff ea                                      b #0x524d70
; mapping-symbol data/literal pool
00524f3c  a8 fd 46 00 e0 15 4d 00 04 12 00 00 f4 37 00 00  .byte 0xa8, 0xfd, 0x46, 0x00, 0xe0, 0x15, 0x4d, 0x00, 0x04, 0x12, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
00524f4c  34 15 4d 00                                      .byte 0x34, 0x15, 0x4d, 0x00

; FUNCTION 0x00524f50, declared_size=216, range_size=216, mode=arm
; class-group: PFObject
; alias: _ZN8PFObjectD1Ev
; demangled: PFObject::~PFObject()
; decoder-mode: arm
00524f50  70 40 2d e9                                      push {r4, r5, r6, lr}
00524f54  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
00524f58  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00524f5c  08 d0 4d e2                                      sub sp, sp, #8
00524f60  05 50 8f e0                                      add r5, pc, r5
00524f64  03 60 95 e7                                      ldr r6, [r5, r3]
00524f68  00 40 a0 e1                                      mov r4, r0
00524f6c  00 10 a0 e1                                      mov r1, r0
00524f70  06 00 a0 e1                                      mov r0, r6
00524f74  da 16 00 eb                                      bl #0x52aae4
00524f78  00 c0 a0 e3                                      mov ip, #0
00524f7c  06 00 a0 e1                                      mov r0, r6
00524f80  0c 30 a0 e1                                      mov r3, ip
00524f84  04 10 a0 e1                                      mov r1, r4
00524f88  00 20 a0 e3                                      mov r2, #0
00524f8c  00 c0 8d e5                                      str ip, [sp]
00524f90  a7 0c 00 eb                                      bl #0x528234
00524f94  8c 30 84 e2                                      add r3, r4, #0x8c
00524f98  14 00 93 e5                                      ldr r0, [r3, #0x14]
00524f9c  03 00 50 e1                                      cmp r0, r3
00524fa0  06 00 00 0a                                      beq #0x524fc0
00524fa4  00 00 50 e3                                      cmp r0, #0
00524fa8  04 00 00 0a                                      beq #0x524fc0
00524fac  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
00524fb0  01 10 60 e0                                      rsb r1, r0, r1
00524fb4  80 00 51 e3                                      cmp r1, #0x80
00524fb8  15 00 00 8a                                      bhi #0x525014
00524fbc  cf 8f 07 eb                                      bl #0x708f00
00524fc0  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00524fc4  38 00 94 e5                                      ldr r0, [r4, #0x38]
00524fc8  38 60 84 e2                                      add r6, r4, #0x38
00524fcc  03 30 95 e7                                      ldr r3, [r5, r3]
00524fd0  06 00 50 e1                                      cmp r0, r6
00524fd4  08 30 83 e2                                      add r3, r3, #8
00524fd8  4c 30 84 e5                                      str r3, [r4, #0x4c]
00524fdc  01 00 00 1a                                      bne #0x524fe8
00524fe0  06 00 00 ea                                      b #0x525000
00524fe4  05 00 a0 e1                                      mov r0, r5
00524fe8  00 50 90 e5                                      ldr r5, [r0]
00524fec  0c 10 a0 e3                                      mov r1, #0xc
00524ff0  c2 8f 07 eb                                      bl #0x708f00
00524ff4  06 00 55 e1                                      cmp r5, r6
00524ff8  f9 ff ff 1a                                      bne #0x524fe4
00524ffc  06 00 a0 e1                                      mov r0, r6
00525000  38 00 84 e5                                      str r0, [r4, #0x38]
00525004  04 00 86 e5                                      str r0, [r6, #4]
00525008  04 00 a0 e1                                      mov r0, r4
0052500c  08 d0 8d e2                                      add sp, sp, #8
00525010  70 80 bd e8                                      pop {r4, r5, r6, pc}
00525014  09 ad f7 eb                                      bl #0x310440
00525018  e8 ff ff ea                                      b #0x524fc0
; mapping-symbol data/literal pool
0052501c  30 fb 46 00 04 12 00 00 60 0f 00 00              .byte 0x30, 0xfb, 0x46, 0x00, 0x04, 0x12, 0x00, 0x00, 0x60, 0x0f, 0x00, 0x00
