; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007eb478, declared_size=8, range_size=8, mode=arm
; class-group: b2MouseJoint
; alias: _ZN12b2MouseJoint24SolvePositionConstraintsEv
; demangled: b2MouseJoint::SolvePositionConstraints()
; decoder-mode: arm
007eb478  01 00 a0 e3                                      mov r0, #1
007eb47c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eb480, declared_size=48, range_size=48, mode=arm
; class-group: b2MouseJoint
; alias: _ZN12b2MouseJoint9SetTargetERK6b2Vec2
; demangled: b2MouseJoint::SetTarget(b2Vec2 const&)
; decoder-mode: arm
007eb480  34 30 90 e5                                      ldr r3, [r0, #0x34]
007eb484  b0 20 d3 e1                                      ldrh r2, [r3]
007eb488  08 00 12 e3                                      tst r2, #8
007eb48c  08 20 c2 13                                      bicne r2, r2, #8
007eb490  b0 20 c3 11                                      strhne r2, [r3]
007eb494  00 20 a0 13                                      movne r2, #0
007eb498  8c 20 83 15                                      strne r2, [r3, #0x8c]
007eb49c  00 30 91 e5                                      ldr r3, [r1]
007eb4a0  4c 30 80 e5                                      str r3, [r0, #0x4c]
007eb4a4  04 30 91 e5                                      ldr r3, [r1, #4]
007eb4a8  50 30 80 e5                                      str r3, [r0, #0x50]
007eb4ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eb4b0, declared_size=712, range_size=712, mode=arm
; class-group: b2MouseJoint
; alias: _ZN12b2MouseJoint23InitVelocityConstraintsERK10b2TimeStep
; demangled: b2MouseJoint::InitVelocityConstraints(b2TimeStep const&)
; decoder-mode: arm
007eb4b0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007eb4b4  34 40 90 e5                                      ldr r4, [r0, #0x34]
007eb4b8  14 d0 4d e2                                      sub sp, sp, #0x14
007eb4bc  01 c0 a0 e1                                      mov ip, r1
007eb4c0  00 50 a0 e1                                      mov r5, r0
007eb4c4  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
007eb4c8  44 00 90 e5                                      ldr r0, [r0, #0x44]
007eb4cc  00 c0 8d e5                                      str ip, [sp]
007eb4d0  b5 8b ec eb                                      bl #0x30e3ac
007eb4d4  20 10 94 e5                                      ldr r1, [r4, #0x20]
007eb4d8  00 80 a0 e1                                      mov r8, r0
007eb4dc  48 00 95 e5                                      ldr r0, [r5, #0x48]
007eb4e0  b1 8b ec eb                                      bl #0x30e3ac
007eb4e4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007eb4e8  00 60 a0 e1                                      mov r6, r0
007eb4ec  08 00 a0 e1                                      mov r0, r8
007eb4f0  1d 8e ec eb                                      bl #0x30ed6c
007eb4f4  14 10 94 e5                                      ldr r1, [r4, #0x14]
007eb4f8  00 70 a0 e1                                      mov r7, r0
007eb4fc  06 00 a0 e1                                      mov r0, r6
007eb500  19 8e ec eb                                      bl #0x30ed6c
007eb504  00 10 a0 e1                                      mov r1, r0
007eb508  07 00 a0 e1                                      mov r0, r7
007eb50c  a4 8d ec eb                                      bl #0x30eba4
007eb510  10 10 94 e5                                      ldr r1, [r4, #0x10]
007eb514  00 70 a0 e1                                      mov r7, r0
007eb518  08 00 a0 e1                                      mov r0, r8
007eb51c  12 8e ec eb                                      bl #0x30ed6c
007eb520  18 10 94 e5                                      ldr r1, [r4, #0x18]
007eb524  00 80 a0 e1                                      mov r8, r0
007eb528  06 00 a0 e1                                      mov r0, r6
007eb52c  0e 8e ec eb                                      bl #0x30ed6c
007eb530  00 10 a0 e1                                      mov r1, r0
007eb534  08 00 a0 e1                                      mov r0, r8
007eb538  99 8d ec eb                                      bl #0x30eba4
007eb53c  80 80 94 e5                                      ldr r8, [r4, #0x80]
007eb540  00 60 a0 e1                                      mov r6, r0
007eb544  00 10 a0 e1                                      mov r1, r0
007eb548  08 00 a0 e1                                      mov r0, r8
007eb54c  06 8e ec eb                                      bl #0x30ed6c
007eb550  06 10 a0 e1                                      mov r1, r6
007eb554  04 8e ec eb                                      bl #0x30ed6c
007eb558  07 10 a0 e1                                      mov r1, r7
007eb55c  00 90 a0 e1                                      mov sb, r0
007eb560  02 01 88 e2                                      add r0, r8, #0x80000000
007eb564  00 8e ec eb                                      bl #0x30ed6c
007eb568  06 10 a0 e1                                      mov r1, r6
007eb56c  fe 8d ec eb                                      bl #0x30ed6c
007eb570  07 10 a0 e1                                      mov r1, r7
007eb574  00 b0 a0 e1                                      mov fp, r0
007eb578  08 00 a0 e1                                      mov r0, r8
007eb57c  fa 8d ec eb                                      bl #0x30ed6c
007eb580  07 10 a0 e1                                      mov r1, r7
007eb584  f8 8d ec eb                                      bl #0x30ed6c
007eb588  78 a0 94 e5                                      ldr sl, [r4, #0x78]
007eb58c  00 20 a0 e1                                      mov r2, r0
007eb590  09 10 a0 e1                                      mov r1, sb
007eb594  0a 00 a0 e1                                      mov r0, sl
007eb598  08 20 8d e5                                      str r2, [sp, #8]
007eb59c  80 8d ec eb                                      bl #0x30eba4
007eb5a0  00 10 a0 e3                                      mov r1, #0
007eb5a4  00 90 a0 e1                                      mov sb, r0
007eb5a8  0b 00 a0 e1                                      mov r0, fp
007eb5ac  7c 8d ec eb                                      bl #0x30eba4
007eb5b0  7c 30 95 e5                                      ldr r3, [r5, #0x7c]
007eb5b4  00 b0 a0 e1                                      mov fp, r0
007eb5b8  09 10 a0 e1                                      mov r1, sb
007eb5bc  03 00 a0 e1                                      mov r0, r3
007eb5c0  04 30 8d e5                                      str r3, [sp, #4]
007eb5c4  76 8d ec eb                                      bl #0x30eba4
007eb5c8  08 20 9d e5                                      ldr r2, [sp, #8]
007eb5cc  0c 00 8d e5                                      str r0, [sp, #0xc]
007eb5d0  0a 00 a0 e1                                      mov r0, sl
007eb5d4  02 10 a0 e1                                      mov r1, r2
007eb5d8  71 8d ec eb                                      bl #0x30eba4
007eb5dc  04 30 9d e5                                      ldr r3, [sp, #4]
007eb5e0  00 10 a0 e1                                      mov r1, r0
007eb5e4  03 00 a0 e1                                      mov r0, r3
007eb5e8  6d 8d ec eb                                      bl #0x30eba4
007eb5ec  00 30 a0 e1                                      mov r3, r0
007eb5f0  03 10 a0 e1                                      mov r1, r3
007eb5f4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007eb5f8  04 30 8d e5                                      str r3, [sp, #4]
007eb5fc  da 8d ec eb                                      bl #0x30ed6c
007eb600  0b 10 a0 e1                                      mov r1, fp
007eb604  00 90 a0 e1                                      mov sb, r0
007eb608  0b 00 a0 e1                                      mov r0, fp
007eb60c  d6 8d ec eb                                      bl #0x30ed6c
007eb610  00 10 a0 e1                                      mov r1, r0
007eb614  09 00 a0 e1                                      mov r0, sb
007eb618  63 8b ec eb                                      bl #0x30e3ac
007eb61c  00 10 a0 e1                                      mov r1, r0
007eb620  fe 05 a0 e3                                      mov r0, #0x3f800000
007eb624  9a 8d ec eb                                      bl #0x30ec94
007eb628  00 90 a0 e1                                      mov sb, r0
007eb62c  02 11 80 e2                                      add r1, r0, #0x80000000
007eb630  0b 00 a0 e1                                      mov r0, fp
007eb634  cc 8d ec eb                                      bl #0x30ed6c
007eb638  09 10 a0 e1                                      mov r1, sb
007eb63c  00 b0 a0 e1                                      mov fp, r0
007eb640  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007eb644  c8 8d ec eb                                      bl #0x30ed6c
007eb648  60 b0 85 e5                                      str fp, [r5, #0x60]
007eb64c  68 00 85 e5                                      str r0, [r5, #0x68]
007eb650  64 b0 85 e5                                      str fp, [r5, #0x64]
007eb654  04 30 9d e5                                      ldr r3, [sp, #4]
007eb658  09 10 a0 e1                                      mov r1, sb
007eb65c  03 00 a0 e1                                      mov r0, r3
007eb660  c1 8d ec eb                                      bl #0x30ed6c
007eb664  5c 00 85 e5                                      str r0, [r5, #0x5c]
007eb668  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
007eb66c  07 00 a0 e1                                      mov r0, r7
007eb670  4b 8d ec eb                                      bl #0x30eba4
007eb674  30 10 94 e5                                      ldr r1, [r4, #0x30]
007eb678  00 90 a0 e1                                      mov sb, r0
007eb67c  06 00 a0 e1                                      mov r0, r6
007eb680  47 8d ec eb                                      bl #0x30eba4
007eb684  4c 10 95 e5                                      ldr r1, [r5, #0x4c]
007eb688  00 b0 a0 e1                                      mov fp, r0
007eb68c  09 00 a0 e1                                      mov r0, sb
007eb690  45 8b ec eb                                      bl #0x30e3ac
007eb694  50 10 95 e5                                      ldr r1, [r5, #0x50]
007eb698  00 90 a0 e1                                      mov sb, r0
007eb69c  0b 00 a0 e1                                      mov r0, fp
007eb6a0  41 8b ec eb                                      bl #0x30e3ac
007eb6a4  6c 90 85 e5                                      str sb, [r5, #0x6c]
007eb6a8  70 00 85 e5                                      str r0, [r5, #0x70]
007eb6ac  48 11 0e e3                                      movw r1, #0xe148
007eb6b0  48 00 94 e5                                      ldr r0, [r4, #0x48]
007eb6b4  7a 1f 43 e3                                      movt r1, #0x3f7a
007eb6b8  ab 8d ec eb                                      bl #0x30ed6c
007eb6bc  48 00 84 e5                                      str r0, [r4, #0x48]
007eb6c0  00 c0 9d e5                                      ldr ip, [sp]
007eb6c4  00 30 a0 e1                                      mov r3, r0
007eb6c8  54 10 95 e5                                      ldr r1, [r5, #0x54]
007eb6cc  00 b0 9c e5                                      ldr fp, [ip]
007eb6d0  04 30 8d e5                                      str r3, [sp, #4]
007eb6d4  0b 00 a0 e1                                      mov r0, fp
007eb6d8  a3 8d ec eb                                      bl #0x30ed6c
007eb6dc  58 10 95 e5                                      ldr r1, [r5, #0x58]
007eb6e0  00 90 a0 e1                                      mov sb, r0
007eb6e4  0b 00 a0 e1                                      mov r0, fp
007eb6e8  9f 8d ec eb                                      bl #0x30ed6c
007eb6ec  09 10 a0 e1                                      mov r1, sb
007eb6f0  00 50 a0 e1                                      mov r5, r0
007eb6f4  0a 00 a0 e1                                      mov r0, sl
007eb6f8  9b 8d ec eb                                      bl #0x30ed6c
007eb6fc  00 10 a0 e1                                      mov r1, r0
007eb700  40 00 94 e5                                      ldr r0, [r4, #0x40]
007eb704  26 8d ec eb                                      bl #0x30eba4
007eb708  05 10 a0 e1                                      mov r1, r5
007eb70c  40 00 84 e5                                      str r0, [r4, #0x40]
007eb710  0a 00 a0 e1                                      mov r0, sl
007eb714  94 8d ec eb                                      bl #0x30ed6c
007eb718  00 10 a0 e1                                      mov r1, r0
007eb71c  44 00 94 e5                                      ldr r0, [r4, #0x44]
007eb720  1f 8d ec eb                                      bl #0x30eba4
007eb724  05 10 a0 e1                                      mov r1, r5
007eb728  44 00 84 e5                                      str r0, [r4, #0x44]
007eb72c  07 00 a0 e1                                      mov r0, r7
007eb730  8d 8d ec eb                                      bl #0x30ed6c
007eb734  09 10 a0 e1                                      mov r1, sb
007eb738  00 50 a0 e1                                      mov r5, r0
007eb73c  06 00 a0 e1                                      mov r0, r6
007eb740  89 8d ec eb                                      bl #0x30ed6c
007eb744  00 10 a0 e1                                      mov r1, r0
007eb748  05 00 a0 e1                                      mov r0, r5
007eb74c  16 8b ec eb                                      bl #0x30e3ac
007eb750  00 10 a0 e1                                      mov r1, r0
007eb754  08 00 a0 e1                                      mov r0, r8
007eb758  83 8d ec eb                                      bl #0x30ed6c
007eb75c  04 30 9d e5                                      ldr r3, [sp, #4]
007eb760  00 10 a0 e1                                      mov r1, r0
007eb764  03 00 a0 e1                                      mov r0, r3
007eb768  0d 8d ec eb                                      bl #0x30eba4
007eb76c  48 00 84 e5                                      str r0, [r4, #0x48]
007eb770  14 d0 8d e2                                      add sp, sp, #0x14
007eb774  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007eb778, declared_size=20, range_size=20, mode=arm
; class-group: b2MouseJoint
; alias: _ZNK12b2MouseJoint10GetAnchor1Ev
; demangled: b2MouseJoint::GetAnchor1() const
; decoder-mode: arm
007eb778  4c 20 91 e5                                      ldr r2, [r1, #0x4c]
007eb77c  00 20 80 e5                                      str r2, [r0]
007eb780  50 20 91 e5                                      ldr r2, [r1, #0x50]
007eb784  04 20 80 e5                                      str r2, [r0, #4]
007eb788  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eb78c, declared_size=144, range_size=144, mode=arm
; class-group: b2MouseJoint
; alias: _ZNK12b2MouseJoint10GetAnchor2Ev
; demangled: b2MouseJoint::GetAnchor2() const
; decoder-mode: arm
007eb78c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007eb790  34 40 91 e5                                      ldr r4, [r1, #0x34]
007eb794  44 70 91 e5                                      ldr r7, [r1, #0x44]
007eb798  48 60 91 e5                                      ldr r6, [r1, #0x48]
007eb79c  00 50 a0 e1                                      mov r5, r0
007eb7a0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007eb7a4  07 00 a0 e1                                      mov r0, r7
007eb7a8  6f 8d ec eb                                      bl #0x30ed6c
007eb7ac  14 10 94 e5                                      ldr r1, [r4, #0x14]
007eb7b0  00 80 a0 e1                                      mov r8, r0
007eb7b4  06 00 a0 e1                                      mov r0, r6
007eb7b8  6b 8d ec eb                                      bl #0x30ed6c
007eb7bc  00 10 a0 e1                                      mov r1, r0
007eb7c0  08 00 a0 e1                                      mov r0, r8
007eb7c4  f6 8c ec eb                                      bl #0x30eba4
007eb7c8  10 10 94 e5                                      ldr r1, [r4, #0x10]
007eb7cc  00 80 a0 e1                                      mov r8, r0
007eb7d0  07 00 a0 e1                                      mov r0, r7
007eb7d4  64 8d ec eb                                      bl #0x30ed6c
007eb7d8  18 10 94 e5                                      ldr r1, [r4, #0x18]
007eb7dc  00 70 a0 e1                                      mov r7, r0
007eb7e0  06 00 a0 e1                                      mov r0, r6
007eb7e4  60 8d ec eb                                      bl #0x30ed6c
007eb7e8  00 10 a0 e1                                      mov r1, r0
007eb7ec  07 00 a0 e1                                      mov r0, r7
007eb7f0  eb 8c ec eb                                      bl #0x30eba4
007eb7f4  08 10 94 e5                                      ldr r1, [r4, #8]
007eb7f8  e9 8c ec eb                                      bl #0x30eba4
007eb7fc  04 10 94 e5                                      ldr r1, [r4, #4]
007eb800  00 60 a0 e1                                      mov r6, r0
007eb804  08 00 a0 e1                                      mov r0, r8
007eb808  e5 8c ec eb                                      bl #0x30eba4
007eb80c  04 60 85 e5                                      str r6, [r5, #4]
007eb810  00 00 85 e5                                      str r0, [r5]
007eb814  05 00 a0 e1                                      mov r0, r5
007eb818  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007eb81c, declared_size=20, range_size=20, mode=arm
; class-group: b2MouseJoint
; alias: _ZNK12b2MouseJoint16GetReactionForceEv
; demangled: b2MouseJoint::GetReactionForce() const
; decoder-mode: arm
007eb81c  54 c0 91 e5                                      ldr ip, [r1, #0x54]
007eb820  58 20 91 e5                                      ldr r2, [r1, #0x58]
007eb824  00 c0 80 e5                                      str ip, [r0]
007eb828  04 20 80 e5                                      str r2, [r0, #4]
007eb82c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eb830, declared_size=8, range_size=8, mode=arm
; class-group: b2MouseJoint
; alias: _ZNK12b2MouseJoint17GetReactionTorqueEv
; demangled: b2MouseJoint::GetReactionTorque() const
; decoder-mode: arm
007eb830  00 00 a0 e3                                      mov r0, #0
007eb834  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eb838, declared_size=4, range_size=4, mode=arm
; class-group: b2MouseJoint
; alias: _ZN12b2MouseJointD1Ev
; demangled: b2MouseJoint::~b2MouseJoint()
; decoder-mode: arm
007eb838  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eb83c, declared_size=20, range_size=20, mode=arm
; class-group: b2MouseJoint
; alias: _ZN12b2MouseJointD0Ev
; demangled: b2MouseJoint::~b2MouseJoint()
; decoder-mode: arm
007eb83c  10 40 2d e9                                      push {r4, lr}
007eb840  00 40 a0 e1                                      mov r4, r0
007eb844  99 8a ec eb                                      bl #0x30e2b0
007eb848  04 00 a0 e1                                      mov r0, r4
007eb84c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007eb850, declared_size=912, range_size=912, mode=arm
; class-group: b2MouseJoint
; alias: _ZN12b2MouseJoint24SolveVelocityConstraintsERK10b2TimeStep
; demangled: b2MouseJoint::SolveVelocityConstraints(b2TimeStep const&)
; decoder-mode: arm
007eb850  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007eb854  34 50 90 e5                                      ldr r5, [r0, #0x34]
007eb858  14 d0 4d e2                                      sub sp, sp, #0x14
007eb85c  00 40 a0 e1                                      mov r4, r0
007eb860  01 60 a0 e1                                      mov r6, r1
007eb864  44 00 90 e5                                      ldr r0, [r0, #0x44]
007eb868  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007eb86c  ce 8a ec eb                                      bl #0x30e3ac
007eb870  20 10 95 e5                                      ldr r1, [r5, #0x20]
007eb874  00 80 a0 e1                                      mov r8, r0
007eb878  48 00 94 e5                                      ldr r0, [r4, #0x48]
007eb87c  ca 8a ec eb                                      bl #0x30e3ac
007eb880  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007eb884  00 70 a0 e1                                      mov r7, r0
007eb888  08 00 a0 e1                                      mov r0, r8
007eb88c  36 8d ec eb                                      bl #0x30ed6c
007eb890  14 10 95 e5                                      ldr r1, [r5, #0x14]
007eb894  00 a0 a0 e1                                      mov sl, r0
007eb898  07 00 a0 e1                                      mov r0, r7
007eb89c  32 8d ec eb                                      bl #0x30ed6c
007eb8a0  00 10 a0 e1                                      mov r1, r0
007eb8a4  0a 00 a0 e1                                      mov r0, sl
007eb8a8  bd 8c ec eb                                      bl #0x30eba4
007eb8ac  08 00 8d e5                                      str r0, [sp, #8]
007eb8b0  10 10 95 e5                                      ldr r1, [r5, #0x10]
007eb8b4  08 00 a0 e1                                      mov r0, r8
007eb8b8  2b 8d ec eb                                      bl #0x30ed6c
007eb8bc  18 10 95 e5                                      ldr r1, [r5, #0x18]
007eb8c0  00 80 a0 e1                                      mov r8, r0
007eb8c4  07 00 a0 e1                                      mov r0, r7
007eb8c8  27 8d ec eb                                      bl #0x30ed6c
007eb8cc  00 10 a0 e1                                      mov r1, r0
007eb8d0  08 00 a0 e1                                      mov r0, r8
007eb8d4  b2 8c ec eb                                      bl #0x30eba4
007eb8d8  0c 00 8d e5                                      str r0, [sp, #0xc]
007eb8dc  48 70 95 e5                                      ldr r7, [r5, #0x48]
007eb8e0  02 11 87 e2                                      add r1, r7, #0x80000000
007eb8e4  20 8d ec eb                                      bl #0x30ed6c
007eb8e8  08 10 9d e5                                      ldr r1, [sp, #8]
007eb8ec  00 80 a0 e1                                      mov r8, r0
007eb8f0  07 00 a0 e1                                      mov r0, r7
007eb8f4  1c 8d ec eb                                      bl #0x30ed6c
007eb8f8  40 10 95 e5                                      ldr r1, [r5, #0x40]
007eb8fc  00 70 a0 e1                                      mov r7, r0
007eb900  08 00 a0 e1                                      mov r0, r8
007eb904  a6 8c ec eb                                      bl #0x30eba4
007eb908  44 10 95 e5                                      ldr r1, [r5, #0x44]
007eb90c  00 b0 a0 e1                                      mov fp, r0
007eb910  07 00 a0 e1                                      mov r0, r7
007eb914  a2 8c ec eb                                      bl #0x30eba4
007eb918  04 a0 96 e5                                      ldr sl, [r6, #4]
007eb91c  00 80 a0 e1                                      mov r8, r0
007eb920  78 10 94 e5                                      ldr r1, [r4, #0x78]
007eb924  0a 00 a0 e1                                      mov r0, sl
007eb928  0f 8d ec eb                                      bl #0x30ed6c
007eb92c  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
007eb930  00 70 a0 e1                                      mov r7, r0
007eb934  0c 8d ec eb                                      bl #0x30ed6c
007eb938  70 10 94 e5                                      ldr r1, [r4, #0x70]
007eb93c  00 90 a0 e1                                      mov sb, r0
007eb940  07 00 a0 e1                                      mov r0, r7
007eb944  08 8d ec eb                                      bl #0x30ed6c
007eb948  09 10 a0 e1                                      mov r1, sb
007eb94c  00 70 a0 e1                                      mov r7, r0
007eb950  0b 00 a0 e1                                      mov r0, fp
007eb954  92 8c ec eb                                      bl #0x30eba4
007eb958  07 10 a0 e1                                      mov r1, r7
007eb95c  00 20 a0 e1                                      mov r2, r0
007eb960  08 00 a0 e1                                      mov r0, r8
007eb964  04 20 8d e5                                      str r2, [sp, #4]
007eb968  8d 8c ec eb                                      bl #0x30eba4
007eb96c  7c 90 94 e5                                      ldr sb, [r4, #0x7c]
007eb970  54 80 94 e5                                      ldr r8, [r4, #0x54]
007eb974  00 30 a0 e1                                      mov r3, r0
007eb978  09 00 a0 e1                                      mov r0, sb
007eb97c  08 10 a0 e1                                      mov r1, r8
007eb980  00 30 8d e5                                      str r3, [sp]
007eb984  f8 8c ec eb                                      bl #0x30ed6c
007eb988  58 70 94 e5                                      ldr r7, [r4, #0x58]
007eb98c  00 b0 a0 e1                                      mov fp, r0
007eb990  09 00 a0 e1                                      mov r0, sb
007eb994  07 10 a0 e1                                      mov r1, r7
007eb998  f3 8c ec eb                                      bl #0x30ed6c
007eb99c  0b 10 a0 e1                                      mov r1, fp
007eb9a0  00 90 a0 e1                                      mov sb, r0
007eb9a4  00 00 96 e5                                      ldr r0, [r6]
007eb9a8  ef 8c ec eb                                      bl #0x30ed6c
007eb9ac  09 10 a0 e1                                      mov r1, sb
007eb9b0  00 b0 a0 e1                                      mov fp, r0
007eb9b4  00 00 96 e5                                      ldr r0, [r6]
007eb9b8  eb 8c ec eb                                      bl #0x30ed6c
007eb9bc  04 20 9d e5                                      ldr r2, [sp, #4]
007eb9c0  00 90 a0 e1                                      mov sb, r0
007eb9c4  0b 10 a0 e1                                      mov r1, fp
007eb9c8  02 00 a0 e1                                      mov r0, r2
007eb9cc  74 8c ec eb                                      bl #0x30eba4
007eb9d0  00 30 9d e5                                      ldr r3, [sp]
007eb9d4  00 b0 a0 e1                                      mov fp, r0
007eb9d8  09 10 a0 e1                                      mov r1, sb
007eb9dc  03 00 a0 e1                                      mov r0, r3
007eb9e0  6f 8c ec eb                                      bl #0x30eba4
007eb9e4  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
007eb9e8  00 90 a0 e1                                      mov sb, r0
007eb9ec  0b 00 a0 e1                                      mov r0, fp
007eb9f0  dd 8c ec eb                                      bl #0x30ed6c
007eb9f4  64 10 94 e5                                      ldr r1, [r4, #0x64]
007eb9f8  00 30 a0 e1                                      mov r3, r0
007eb9fc  09 00 a0 e1                                      mov r0, sb
007eba00  00 30 8d e5                                      str r3, [sp]
007eba04  d8 8c ec eb                                      bl #0x30ed6c
007eba08  00 30 9d e5                                      ldr r3, [sp]
007eba0c  00 10 a0 e1                                      mov r1, r0
007eba10  02 a1 8a e2                                      add sl, sl, #0x80000000
007eba14  03 00 a0 e1                                      mov r0, r3
007eba18  61 8c ec eb                                      bl #0x30eba4
007eba1c  60 10 94 e5                                      ldr r1, [r4, #0x60]
007eba20  00 30 a0 e1                                      mov r3, r0
007eba24  0b 00 a0 e1                                      mov r0, fp
007eba28  00 30 8d e5                                      str r3, [sp]
007eba2c  ce 8c ec eb                                      bl #0x30ed6c
007eba30  68 10 94 e5                                      ldr r1, [r4, #0x68]
007eba34  00 b0 a0 e1                                      mov fp, r0
007eba38  09 00 a0 e1                                      mov r0, sb
007eba3c  ca 8c ec eb                                      bl #0x30ed6c
007eba40  00 10 a0 e1                                      mov r1, r0
007eba44  0b 00 a0 e1                                      mov r0, fp
007eba48  55 8c ec eb                                      bl #0x30eba4
007eba4c  00 30 9d e5                                      ldr r3, [sp]
007eba50  00 90 a0 e1                                      mov sb, r0
007eba54  0a 00 a0 e1                                      mov r0, sl
007eba58  03 10 a0 e1                                      mov r1, r3
007eba5c  c2 8c ec eb                                      bl #0x30ed6c
007eba60  00 10 a0 e1                                      mov r1, r0
007eba64  08 00 a0 e1                                      mov r0, r8
007eba68  4d 8c ec eb                                      bl #0x30eba4
007eba6c  00 b0 a0 e1                                      mov fp, r0
007eba70  09 10 a0 e1                                      mov r1, sb
007eba74  0a 00 a0 e1                                      mov r0, sl
007eba78  54 b0 84 e5                                      str fp, [r4, #0x54]
007eba7c  ba 8c ec eb                                      bl #0x30ed6c
007eba80  07 10 a0 e1                                      mov r1, r7
007eba84  46 8c ec eb                                      bl #0x30eba4
007eba88  00 a0 a0 e1                                      mov sl, r0
007eba8c  58 a0 84 e5                                      str sl, [r4, #0x58]
007eba90  0b 10 a0 e1                                      mov r1, fp
007eba94  0b 00 a0 e1                                      mov r0, fp
007eba98  b3 8c ec eb                                      bl #0x30ed6c
007eba9c  0a 10 a0 e1                                      mov r1, sl
007ebaa0  00 90 a0 e1                                      mov sb, r0
007ebaa4  0a 00 a0 e1                                      mov r0, sl
007ebaa8  af 8c ec eb                                      bl #0x30ed6c
007ebaac  00 10 a0 e1                                      mov r1, r0
007ebab0  09 00 a0 e1                                      mov r0, sb
007ebab4  3a 8c ec eb                                      bl #0x30eba4
007ebab8  99 89 ec eb                                      bl #0x30e124
007ebabc  74 a0 94 e5                                      ldr sl, [r4, #0x74]
007ebac0  00 10 a0 e1                                      mov r1, r0
007ebac4  00 90 a0 e1                                      mov sb, r0
007ebac8  0a 00 a0 e1                                      mov r0, sl
007ebacc  0e 8b ec eb                                      bl #0x30e70c
007ebad0  00 00 50 e3                                      cmp r0, #0
007ebad4  33 00 00 1a                                      bne #0x7ebba8
007ebad8  58 a0 94 e5                                      ldr sl, [r4, #0x58]
007ebadc  54 90 94 e5                                      ldr sb, [r4, #0x54]
007ebae0  08 10 a0 e1                                      mov r1, r8
007ebae4  09 00 a0 e1                                      mov r0, sb
007ebae8  2f 8a ec eb                                      bl #0x30e3ac
007ebaec  07 10 a0 e1                                      mov r1, r7
007ebaf0  00 40 a0 e1                                      mov r4, r0
007ebaf4  0a 00 a0 e1                                      mov r0, sl
007ebaf8  2b 8a ec eb                                      bl #0x30e3ac
007ebafc  00 60 96 e5                                      ldr r6, [r6]
007ebb00  00 70 a0 e1                                      mov r7, r0
007ebb04  04 10 a0 e1                                      mov r1, r4
007ebb08  06 00 a0 e1                                      mov r0, r6
007ebb0c  96 8c ec eb                                      bl #0x30ed6c
007ebb10  07 10 a0 e1                                      mov r1, r7
007ebb14  00 40 a0 e1                                      mov r4, r0
007ebb18  06 00 a0 e1                                      mov r0, r6
007ebb1c  92 8c ec eb                                      bl #0x30ed6c
007ebb20  78 70 95 e5                                      ldr r7, [r5, #0x78]
007ebb24  00 60 a0 e1                                      mov r6, r0
007ebb28  04 10 a0 e1                                      mov r1, r4
007ebb2c  07 00 a0 e1                                      mov r0, r7
007ebb30  8d 8c ec eb                                      bl #0x30ed6c
007ebb34  00 10 a0 e1                                      mov r1, r0
007ebb38  40 00 95 e5                                      ldr r0, [r5, #0x40]
007ebb3c  18 8c ec eb                                      bl #0x30eba4
007ebb40  06 10 a0 e1                                      mov r1, r6
007ebb44  40 00 85 e5                                      str r0, [r5, #0x40]
007ebb48  07 00 a0 e1                                      mov r0, r7
007ebb4c  86 8c ec eb                                      bl #0x30ed6c
007ebb50  00 10 a0 e1                                      mov r1, r0
007ebb54  44 00 95 e5                                      ldr r0, [r5, #0x44]
007ebb58  11 8c ec eb                                      bl #0x30eba4
007ebb5c  44 00 85 e5                                      str r0, [r5, #0x44]
007ebb60  06 10 a0 e1                                      mov r1, r6
007ebb64  08 00 9d e5                                      ldr r0, [sp, #8]
007ebb68  7f 8c ec eb                                      bl #0x30ed6c
007ebb6c  04 10 a0 e1                                      mov r1, r4
007ebb70  00 60 a0 e1                                      mov r6, r0
007ebb74  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007ebb78  7b 8c ec eb                                      bl #0x30ed6c
007ebb7c  00 10 a0 e1                                      mov r1, r0
007ebb80  06 00 a0 e1                                      mov r0, r6
007ebb84  08 8a ec eb                                      bl #0x30e3ac
007ebb88  80 10 95 e5                                      ldr r1, [r5, #0x80]
007ebb8c  76 8c ec eb                                      bl #0x30ed6c
007ebb90  00 10 a0 e1                                      mov r1, r0
007ebb94  48 00 95 e5                                      ldr r0, [r5, #0x48]
007ebb98  01 8c ec eb                                      bl #0x30eba4
007ebb9c  48 00 85 e5                                      str r0, [r5, #0x48]
007ebba0  14 d0 8d e2                                      add sp, sp, #0x14
007ebba4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ebba8  09 10 a0 e1                                      mov r1, sb
007ebbac  0a 00 a0 e1                                      mov r0, sl
007ebbb0  37 8c ec eb                                      bl #0x30ec94
007ebbb4  54 10 94 e5                                      ldr r1, [r4, #0x54]
007ebbb8  00 a0 a0 e1                                      mov sl, r0
007ebbbc  6a 8c ec eb                                      bl #0x30ed6c
007ebbc0  58 10 94 e5                                      ldr r1, [r4, #0x58]
007ebbc4  54 00 84 e5                                      str r0, [r4, #0x54]
007ebbc8  00 90 a0 e1                                      mov sb, r0
007ebbcc  0a 00 a0 e1                                      mov r0, sl
007ebbd0  65 8c ec eb                                      bl #0x30ed6c
007ebbd4  00 a0 a0 e1                                      mov sl, r0
007ebbd8  58 00 84 e5                                      str r0, [r4, #0x58]
007ebbdc  bf ff ff ea                                      b #0x7ebae0

; FUNCTION 0x007ebbe0, declared_size=360, range_size=360, mode=arm
; class-group: b2MouseJoint
; alias: _ZN12b2MouseJointC1EPK15b2MouseJointDef
; demangled: b2MouseJoint::b2MouseJoint(b2MouseJointDef const*)
; decoder-mode: arm
007ebbe0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007ebbe4  54 71 9f e5                                      ldr r7, [pc, #0x154]
007ebbe8  00 40 a0 e1                                      mov r4, r0
007ebbec  01 60 a0 e1                                      mov r6, r1
007ebbf0  7a fd ff eb                                      bl #0x7eb1e0
007ebbf4  48 31 9f e5                                      ldr r3, [pc, #0x148]
007ebbf8  07 70 8f e0                                      add r7, pc, r7
007ebbfc  34 50 94 e5                                      ldr r5, [r4, #0x34]
007ebc00  03 30 97 e7                                      ldr r3, [r7, r3]
007ebc04  08 30 83 e2                                      add r3, r3, #8
007ebc08  00 30 84 e5                                      str r3, [r4]
007ebc0c  14 30 96 e5                                      ldr r3, [r6, #0x14]
007ebc10  4c 30 84 e5                                      str r3, [r4, #0x4c]
007ebc14  18 30 96 e5                                      ldr r3, [r6, #0x18]
007ebc18  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
007ebc1c  50 30 84 e5                                      str r3, [r4, #0x50]
007ebc20  04 10 95 e5                                      ldr r1, [r5, #4]
007ebc24  e0 89 ec eb                                      bl #0x30e3ac
007ebc28  08 10 95 e5                                      ldr r1, [r5, #8]
007ebc2c  00 80 a0 e1                                      mov r8, r0
007ebc30  50 00 94 e5                                      ldr r0, [r4, #0x50]
007ebc34  dc 89 ec eb                                      bl #0x30e3ac
007ebc38  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007ebc3c  00 70 a0 e1                                      mov r7, r0
007ebc40  08 00 a0 e1                                      mov r0, r8
007ebc44  48 8c ec eb                                      bl #0x30ed6c
007ebc48  10 10 95 e5                                      ldr r1, [r5, #0x10]
007ebc4c  00 a0 a0 e1                                      mov sl, r0
007ebc50  07 00 a0 e1                                      mov r0, r7
007ebc54  44 8c ec eb                                      bl #0x30ed6c
007ebc58  00 10 a0 e1                                      mov r1, r0
007ebc5c  0a 00 a0 e1                                      mov r0, sl
007ebc60  cf 8b ec eb                                      bl #0x30eba4
007ebc64  14 10 95 e5                                      ldr r1, [r5, #0x14]
007ebc68  00 a0 a0 e1                                      mov sl, r0
007ebc6c  08 00 a0 e1                                      mov r0, r8
007ebc70  3d 8c ec eb                                      bl #0x30ed6c
007ebc74  18 10 95 e5                                      ldr r1, [r5, #0x18]
007ebc78  00 80 a0 e1                                      mov r8, r0
007ebc7c  07 00 a0 e1                                      mov r0, r7
007ebc80  39 8c ec eb                                      bl #0x30ed6c
007ebc84  00 10 a0 e1                                      mov r1, r0
007ebc88  08 00 a0 e1                                      mov r0, r8
007ebc8c  c4 8b ec eb                                      bl #0x30eba4
007ebc90  44 a0 84 e5                                      str sl, [r4, #0x44]
007ebc94  48 00 84 e5                                      str r0, [r4, #0x48]
007ebc98  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
007ebc9c  00 30 a0 e3                                      mov r3, #0
007ebca0  58 30 84 e5                                      str r3, [r4, #0x58]
007ebca4  74 20 84 e5                                      str r2, [r4, #0x74]
007ebca8  54 30 84 e5                                      str r3, [r4, #0x54]
007ebcac  db 1f 00 e3                                      movw r1, #0xfdb
007ebcb0  20 00 96 e5                                      ldr r0, [r6, #0x20]
007ebcb4  c9 10 44 e3                                      movt r1, #0x40c9
007ebcb8  2b 8c ec eb                                      bl #0x30ed6c
007ebcbc  74 80 95 e5                                      ldr r8, [r5, #0x74]
007ebcc0  28 10 96 e5                                      ldr r1, [r6, #0x28]
007ebcc4  00 50 a0 e1                                      mov r5, r0
007ebcc8  08 00 a0 e1                                      mov r0, r8
007ebccc  26 8c ec eb                                      bl #0x30ed6c
007ebcd0  05 10 a0 e1                                      mov r1, r5
007ebcd4  00 70 a0 e1                                      mov r7, r0
007ebcd8  05 00 a0 e1                                      mov r0, r5
007ebcdc  22 8c ec eb                                      bl #0x30ed6c
007ebce0  00 10 a0 e1                                      mov r1, r0
007ebce4  07 00 a0 e1                                      mov r0, r7
007ebce8  1f 8c ec eb                                      bl #0x30ed6c
007ebcec  08 10 a0 e1                                      mov r1, r8
007ebcf0  00 70 a0 e1                                      mov r7, r0
007ebcf4  08 00 a0 e1                                      mov r0, r8
007ebcf8  a9 8b ec eb                                      bl #0x30eba4
007ebcfc  24 10 96 e5                                      ldr r1, [r6, #0x24]
007ebd00  19 8c ec eb                                      bl #0x30ed6c
007ebd04  05 10 a0 e1                                      mov r1, r5
007ebd08  17 8c ec eb                                      bl #0x30ed6c
007ebd0c  07 10 a0 e1                                      mov r1, r7
007ebd10  a3 8b ec eb                                      bl #0x30eba4
007ebd14  00 50 a0 e1                                      mov r5, r0
007ebd18  00 10 a0 e1                                      mov r1, r0
007ebd1c  fe 05 a0 e3                                      mov r0, #0x3f800000
007ebd20  db 8b ec eb                                      bl #0x30ec94
007ebd24  05 10 a0 e1                                      mov r1, r5
007ebd28  7c 00 84 e5                                      str r0, [r4, #0x7c]
007ebd2c  07 00 a0 e1                                      mov r0, r7
007ebd30  d7 8b ec eb                                      bl #0x30ec94
007ebd34  78 00 84 e5                                      str r0, [r4, #0x78]
007ebd38  04 00 a0 e1                                      mov r0, r4
007ebd3c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
007ebd40  98 8e 1a 00 dc 1c 00 00                          .byte 0x98, 0x8e, 0x1a, 0x00, 0xdc, 0x1c, 0x00, 0x00

; FUNCTION 0x007ebd48, declared_size=360, range_size=360, mode=arm
; class-group: b2MouseJoint
; alias: _ZN12b2MouseJointC2EPK15b2MouseJointDef
; demangled: b2MouseJoint::b2MouseJoint(b2MouseJointDef const*)
; decoder-mode: arm
007ebd48  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007ebd4c  54 71 9f e5                                      ldr r7, [pc, #0x154]
007ebd50  00 40 a0 e1                                      mov r4, r0
007ebd54  01 60 a0 e1                                      mov r6, r1
007ebd58  20 fd ff eb                                      bl #0x7eb1e0
007ebd5c  48 31 9f e5                                      ldr r3, [pc, #0x148]
007ebd60  07 70 8f e0                                      add r7, pc, r7
007ebd64  34 50 94 e5                                      ldr r5, [r4, #0x34]
007ebd68  03 30 97 e7                                      ldr r3, [r7, r3]
007ebd6c  08 30 83 e2                                      add r3, r3, #8
007ebd70  00 30 84 e5                                      str r3, [r4]
007ebd74  14 30 96 e5                                      ldr r3, [r6, #0x14]
007ebd78  4c 30 84 e5                                      str r3, [r4, #0x4c]
007ebd7c  18 30 96 e5                                      ldr r3, [r6, #0x18]
007ebd80  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
007ebd84  50 30 84 e5                                      str r3, [r4, #0x50]
007ebd88  04 10 95 e5                                      ldr r1, [r5, #4]
007ebd8c  86 89 ec eb                                      bl #0x30e3ac
007ebd90  08 10 95 e5                                      ldr r1, [r5, #8]
007ebd94  00 80 a0 e1                                      mov r8, r0
007ebd98  50 00 94 e5                                      ldr r0, [r4, #0x50]
007ebd9c  82 89 ec eb                                      bl #0x30e3ac
007ebda0  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007ebda4  00 70 a0 e1                                      mov r7, r0
007ebda8  08 00 a0 e1                                      mov r0, r8
007ebdac  ee 8b ec eb                                      bl #0x30ed6c
007ebdb0  10 10 95 e5                                      ldr r1, [r5, #0x10]
007ebdb4  00 a0 a0 e1                                      mov sl, r0
007ebdb8  07 00 a0 e1                                      mov r0, r7
007ebdbc  ea 8b ec eb                                      bl #0x30ed6c
007ebdc0  00 10 a0 e1                                      mov r1, r0
007ebdc4  0a 00 a0 e1                                      mov r0, sl
007ebdc8  75 8b ec eb                                      bl #0x30eba4
007ebdcc  14 10 95 e5                                      ldr r1, [r5, #0x14]
007ebdd0  00 a0 a0 e1                                      mov sl, r0
007ebdd4  08 00 a0 e1                                      mov r0, r8
007ebdd8  e3 8b ec eb                                      bl #0x30ed6c
007ebddc  18 10 95 e5                                      ldr r1, [r5, #0x18]
007ebde0  00 80 a0 e1                                      mov r8, r0
007ebde4  07 00 a0 e1                                      mov r0, r7
007ebde8  df 8b ec eb                                      bl #0x30ed6c
007ebdec  00 10 a0 e1                                      mov r1, r0
007ebdf0  08 00 a0 e1                                      mov r0, r8
007ebdf4  6a 8b ec eb                                      bl #0x30eba4
007ebdf8  44 a0 84 e5                                      str sl, [r4, #0x44]
007ebdfc  48 00 84 e5                                      str r0, [r4, #0x48]
007ebe00  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
007ebe04  00 30 a0 e3                                      mov r3, #0
007ebe08  58 30 84 e5                                      str r3, [r4, #0x58]
007ebe0c  74 20 84 e5                                      str r2, [r4, #0x74]
007ebe10  54 30 84 e5                                      str r3, [r4, #0x54]
007ebe14  db 1f 00 e3                                      movw r1, #0xfdb
007ebe18  20 00 96 e5                                      ldr r0, [r6, #0x20]
007ebe1c  c9 10 44 e3                                      movt r1, #0x40c9
007ebe20  d1 8b ec eb                                      bl #0x30ed6c
007ebe24  74 80 95 e5                                      ldr r8, [r5, #0x74]
007ebe28  28 10 96 e5                                      ldr r1, [r6, #0x28]
007ebe2c  00 50 a0 e1                                      mov r5, r0
007ebe30  08 00 a0 e1                                      mov r0, r8
007ebe34  cc 8b ec eb                                      bl #0x30ed6c
007ebe38  05 10 a0 e1                                      mov r1, r5
007ebe3c  00 70 a0 e1                                      mov r7, r0
007ebe40  05 00 a0 e1                                      mov r0, r5
007ebe44  c8 8b ec eb                                      bl #0x30ed6c
007ebe48  00 10 a0 e1                                      mov r1, r0
007ebe4c  07 00 a0 e1                                      mov r0, r7
007ebe50  c5 8b ec eb                                      bl #0x30ed6c
007ebe54  08 10 a0 e1                                      mov r1, r8
007ebe58  00 70 a0 e1                                      mov r7, r0
007ebe5c  08 00 a0 e1                                      mov r0, r8
007ebe60  4f 8b ec eb                                      bl #0x30eba4
007ebe64  24 10 96 e5                                      ldr r1, [r6, #0x24]
007ebe68  bf 8b ec eb                                      bl #0x30ed6c
007ebe6c  05 10 a0 e1                                      mov r1, r5
007ebe70  bd 8b ec eb                                      bl #0x30ed6c
007ebe74  07 10 a0 e1                                      mov r1, r7
007ebe78  49 8b ec eb                                      bl #0x30eba4
007ebe7c  00 50 a0 e1                                      mov r5, r0
007ebe80  00 10 a0 e1                                      mov r1, r0
007ebe84  fe 05 a0 e3                                      mov r0, #0x3f800000
007ebe88  81 8b ec eb                                      bl #0x30ec94
007ebe8c  05 10 a0 e1                                      mov r1, r5
007ebe90  7c 00 84 e5                                      str r0, [r4, #0x7c]
007ebe94  07 00 a0 e1                                      mov r0, r7
007ebe98  7d 8b ec eb                                      bl #0x30ec94
007ebe9c  78 00 84 e5                                      str r0, [r4, #0x78]
007ebea0  04 00 a0 e1                                      mov r0, r4
007ebea4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
007ebea8  30 8d 1a 00 dc 1c 00 00                          .byte 0x30, 0x8d, 0x1a, 0x00, 0xdc, 0x1c, 0x00, 0x00
