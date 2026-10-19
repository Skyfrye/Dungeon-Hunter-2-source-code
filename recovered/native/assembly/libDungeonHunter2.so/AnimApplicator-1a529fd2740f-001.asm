; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00364330, declared_size=104, range_size=104, mode=arm
; class-group: AnimApplicator
; alias: _ZN14AnimApplicatorC2EPN6glitch7collada18ISceneNodeAnimatorE
; demangled: AnimApplicator::AnimApplicator(glitch::collada::ISceneNodeAnimator*)
; decoder-mode: arm
00364330  30 00 2d e9                                      push {r4, r5}
00364334  54 40 9f e5                                      ldr r4, [pc, #0x54]
00364338  54 50 9f e5                                      ldr r5, [pc, #0x54]
0036433c  00 c0 a0 e3                                      mov ip, #0
00364340  04 40 8f e0                                      add r4, pc, r4
00364344  05 50 94 e7                                      ldr r5, [r4, r5]
00364348  00 20 a0 e3                                      mov r2, #0
0036434c  38 20 80 e5                                      str r2, [r0, #0x38]
00364350  08 50 85 e2                                      add r5, r5, #8
00364354  00 50 80 e5                                      str r5, [r0]
00364358  04 10 80 e5                                      str r1, [r0, #4]
0036435c  2c c0 80 e5                                      str ip, [r0, #0x2c]
00364360  08 20 80 e5                                      str r2, [r0, #8]
00364364  10 20 80 e5                                      str r2, [r0, #0x10]
00364368  14 20 80 e5                                      str r2, [r0, #0x14]
0036436c  18 c0 80 e5                                      str ip, [r0, #0x18]
00364370  1c c0 80 e5                                      str ip, [r0, #0x1c]
00364374  20 c0 80 e5                                      str ip, [r0, #0x20]
00364378  24 c0 80 e5                                      str ip, [r0, #0x24]
0036437c  28 c0 80 e5                                      str ip, [r0, #0x28]
00364380  30 20 c0 e5                                      strb r2, [r0, #0x30]
00364384  34 20 80 e5                                      str r2, [r0, #0x34]
00364388  30 00 bd e8                                      pop {r4, r5}
0036438c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00364390  50 07 63 00 04 2b 00 00                          .byte 0x50, 0x07, 0x63, 0x00, 0x04, 0x2b, 0x00, 0x00

; FUNCTION 0x00364398, declared_size=104, range_size=104, mode=arm
; class-group: AnimApplicator
; alias: _ZN14AnimApplicatorC1EPN6glitch7collada18ISceneNodeAnimatorE
; demangled: AnimApplicator::AnimApplicator(glitch::collada::ISceneNodeAnimator*)
; decoder-mode: arm
00364398  30 00 2d e9                                      push {r4, r5}
0036439c  54 40 9f e5                                      ldr r4, [pc, #0x54]
003643a0  54 50 9f e5                                      ldr r5, [pc, #0x54]
003643a4  00 c0 a0 e3                                      mov ip, #0
003643a8  04 40 8f e0                                      add r4, pc, r4
003643ac  05 50 94 e7                                      ldr r5, [r4, r5]
003643b0  00 20 a0 e3                                      mov r2, #0
003643b4  38 20 80 e5                                      str r2, [r0, #0x38]
003643b8  08 50 85 e2                                      add r5, r5, #8
003643bc  00 50 80 e5                                      str r5, [r0]
003643c0  04 10 80 e5                                      str r1, [r0, #4]
003643c4  2c c0 80 e5                                      str ip, [r0, #0x2c]
003643c8  08 20 80 e5                                      str r2, [r0, #8]
003643cc  10 20 80 e5                                      str r2, [r0, #0x10]
003643d0  14 20 80 e5                                      str r2, [r0, #0x14]
003643d4  18 c0 80 e5                                      str ip, [r0, #0x18]
003643d8  1c c0 80 e5                                      str ip, [r0, #0x1c]
003643dc  20 c0 80 e5                                      str ip, [r0, #0x20]
003643e0  24 c0 80 e5                                      str ip, [r0, #0x24]
003643e4  28 c0 80 e5                                      str ip, [r0, #0x28]
003643e8  30 20 c0 e5                                      strb r2, [r0, #0x30]
003643ec  34 20 80 e5                                      str r2, [r0, #0x34]
003643f0  30 00 bd e8                                      pop {r4, r5}
003643f4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003643f8  e8 06 63 00 04 2b 00 00                          .byte 0xe8, 0x06, 0x63, 0x00, 0x04, 0x2b, 0x00, 0x00

; FUNCTION 0x00364400, declared_size=12, range_size=12, mode=arm
; class-group: AnimApplicator
; alias: _ZN14AnimApplicator11SetCallbackEPFvPN6glitch5scene19ITimelineControllerEPvES4_
; demangled: AnimApplicator::SetCallback(void (*)(glitch::scene::ITimelineController*, void*), void*)
; decoder-mode: arm
00364400  38 20 80 e5                                      str r2, [r0, #0x38]
00364404  34 10 80 e5                                      str r1, [r0, #0x34]
00364408  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036440c, declared_size=56, range_size=56, mode=arm
; class-group: AnimApplicator
; alias: _ZN14AnimApplicator13CheckCallbackEPN6glitch5scene19ITimelineControllerE
; demangled: AnimApplicator::CheckCallback(glitch::scene::ITimelineController*)
; decoder-mode: arm
0036440c  10 40 2d e9                                      push {r4, lr}
00364410  30 30 d0 e5                                      ldrb r3, [r0, #0x30]
00364414  00 40 a0 e1                                      mov r4, r0
00364418  00 00 53 e3                                      cmp r3, #0
0036441c  07 00 00 0a                                      beq #0x364440
00364420  34 30 90 e5                                      ldr r3, [r0, #0x34]
00364424  00 00 53 e3                                      cmp r3, #0
00364428  04 00 00 0a                                      beq #0x364440
0036442c  01 00 a0 e1                                      mov r0, r1
00364430  38 10 94 e5                                      ldr r1, [r4, #0x38]
00364434  33 ff 2f e1                                      blx r3
00364438  00 30 a0 e3                                      mov r3, #0
0036443c  30 30 c4 e5                                      strb r3, [r4, #0x30]
00364440  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00364444, declared_size=136, range_size=136, mode=arm
; class-group: AnimApplicator
; alias: _ZN14AnimApplicator14CalculateDeltaEjRKN6glitch4core8vector3dIfEE
; demangled: AnimApplicator::CalculateDelta(unsigned int, glitch::core::vector3d<float> const&)
; decoder-mode: arm
00364444  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00364448  14 30 90 e5                                      ldr r3, [r0, #0x14]
0036444c  00 40 a0 e1                                      mov r4, r0
00364450  01 50 a0 e1                                      mov r5, r1
00364454  01 00 53 e1                                      cmp r3, r1
00364458  02 60 a0 e1                                      mov r6, r2
0036445c  15 00 00 0a                                      beq #0x3644b8
00364460  04 00 92 e5                                      ldr r0, [r2, #4]
00364464  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00364468  cf a7 fe eb                                      bl #0x30e3ac
0036446c  20 10 94 e5                                      ldr r1, [r4, #0x20]
00364470  00 80 a0 e1                                      mov r8, r0
00364474  08 00 96 e5                                      ldr r0, [r6, #8]
00364478  cb a7 fe eb                                      bl #0x30e3ac
0036447c  18 10 94 e5                                      ldr r1, [r4, #0x18]
00364480  00 70 a0 e1                                      mov r7, r0
00364484  00 00 96 e5                                      ldr r0, [r6]
00364488  c7 a7 fe eb                                      bl #0x30e3ac
0036448c  28 80 84 e5                                      str r8, [r4, #0x28]
00364490  24 00 84 e5                                      str r0, [r4, #0x24]
00364494  2c 70 84 e5                                      str r7, [r4, #0x2c]
00364498  00 30 96 e5                                      ldr r3, [r6]
0036449c  18 30 84 e5                                      str r3, [r4, #0x18]
003644a0  04 30 96 e5                                      ldr r3, [r6, #4]
003644a4  1c 30 84 e5                                      str r3, [r4, #0x1c]
003644a8  08 30 96 e5                                      ldr r3, [r6, #8]
003644ac  14 50 84 e5                                      str r5, [r4, #0x14]
003644b0  20 30 84 e5                                      str r3, [r4, #0x20]
003644b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003644b8  00 30 a0 e3                                      mov r3, #0
003644bc  2c 30 80 e5                                      str r3, [r0, #0x2c]
003644c0  24 30 80 e5                                      str r3, [r0, #0x24]
003644c4  28 30 80 e5                                      str r3, [r0, #0x28]
003644c8  f2 ff ff ea                                      b #0x364498

; FUNCTION 0x003644cc, declared_size=48, range_size=48, mode=arm
; class-group: AnimApplicator
; alias: _ZN14AnimApplicator10ResetDeltaEjRKN6glitch4core8vector3dIfEE
; demangled: AnimApplicator::ResetDelta(unsigned int, glitch::core::vector3d<float> const&)
; decoder-mode: arm
003644cc  00 30 92 e5                                      ldr r3, [r2]
003644d0  00 c0 a0 e3                                      mov ip, #0
003644d4  18 30 80 e5                                      str r3, [r0, #0x18]
003644d8  04 30 92 e5                                      ldr r3, [r2, #4]
003644dc  1c 30 80 e5                                      str r3, [r0, #0x1c]
003644e0  08 30 92 e5                                      ldr r3, [r2, #8]
003644e4  14 10 80 e5                                      str r1, [r0, #0x14]
003644e8  2c c0 80 e5                                      str ip, [r0, #0x2c]
003644ec  20 30 80 e5                                      str r3, [r0, #0x20]
003644f0  24 c0 80 e5                                      str ip, [r0, #0x24]
003644f4  28 c0 80 e5                                      str ip, [r0, #0x28]
003644f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003644fc, declared_size=236, range_size=236, mode=arm
; class-group: AnimApplicator
; alias: _ZN14AnimApplicator10ResetDeltaEj
; demangled: AnimApplicator::ResetDelta(unsigned int)
; decoder-mode: arm
003644fc  30 40 2d e9                                      push {r4, r5, lr}
00364500  08 30 90 e5                                      ldr r3, [r0, #8]
00364504  14 d0 4d e2                                      sub sp, sp, #0x14
00364508  00 40 a0 e1                                      mov r4, r0
0036450c  00 00 53 e3                                      cmp r3, #0
00364510  01 50 a0 e1                                      mov r5, r1
00364514  1d 00 00 0a                                      beq #0x364590
00364518  0c 10 90 e5                                      ldr r1, [r0, #0xc]
0036451c  01 00 71 e3                                      cmn r1, #1
00364520  25 00 00 0a                                      beq #0x3645bc
00364524  04 30 90 e5                                      ldr r3, [r0, #4]
00364528  00 20 a0 e3                                      mov r2, #0
0036452c  0c 20 8d e5                                      str r2, [sp, #0xc]
00364530  00 00 53 e3                                      cmp r3, #0
00364534  04 20 8d e5                                      str r2, [sp, #4]
00364538  08 20 8d e5                                      str r2, [sp, #8]
0036453c  1a 00 00 0a                                      beq #0x3645ac
00364540  03 00 a0 e1                                      mov r0, r3
00364544  00 30 93 e5                                      ldr r3, [r3]
00364548  0f e0 a0 e1                                      mov lr, pc
0036454c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00364550  04 30 94 e5                                      ldr r3, [r4, #4]
00364554  00 00 50 e3                                      cmp r0, #0
00364558  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0036455c  00 20 93 e5                                      ldr r2, [r3]
00364560  7c c0 92 e5                                      ldr ip, [r2, #0x7c]
00364564  10 20 90 15                                      ldrne r2, [r0, #0x10]
00364568  11 00 00 0a                                      beq #0x3645b4
0036456c  03 00 a0 e1                                      mov r0, r3
00364570  04 30 8d e2                                      add r3, sp, #4
00364574  3c ff 2f e1                                      blx ip
00364578  08 20 9d e5                                      ldr r2, [sp, #8]
0036457c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00364580  04 10 9d e5                                      ldr r1, [sp, #4]
00364584  1c 20 84 e5                                      str r2, [r4, #0x1c]
00364588  20 30 84 e5                                      str r3, [r4, #0x20]
0036458c  18 10 84 e5                                      str r1, [r4, #0x18]
00364590  00 30 a0 e3                                      mov r3, #0
00364594  14 50 84 e5                                      str r5, [r4, #0x14]
00364598  2c 30 84 e5                                      str r3, [r4, #0x2c]
0036459c  24 30 84 e5                                      str r3, [r4, #0x24]
003645a0  28 30 84 e5                                      str r3, [r4, #0x28]
003645a4  14 d0 8d e2                                      add sp, sp, #0x14
003645a8  30 80 bd e8                                      pop {r4, r5, pc}
003645ac  00 20 93 e5                                      ldr r2, [r3]
003645b0  7c c0 92 e5                                      ldr ip, [r2, #0x7c]
003645b4  05 20 a0 e1                                      mov r2, r5
003645b8  eb ff ff ea                                      b #0x36456c
003645bc  03 00 a0 e1                                      mov r0, r3
003645c0  00 30 93 e5                                      ldr r3, [r3]
003645c4  0f e0 a0 e1                                      mov lr, pc
003645c8  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
003645cc  00 30 90 e5                                      ldr r3, [r0]
003645d0  18 30 84 e5                                      str r3, [r4, #0x18]
003645d4  04 30 90 e5                                      ldr r3, [r0, #4]
003645d8  1c 30 84 e5                                      str r3, [r4, #0x1c]
003645dc  08 30 90 e5                                      ldr r3, [r0, #8]
003645e0  20 30 84 e5                                      str r3, [r4, #0x20]
003645e4  e9 ff ff ea                                      b #0x364590

; FUNCTION 0x003645e8, declared_size=308, range_size=308, mode=arm
; class-group: AnimApplicator
; alias: _ZN14AnimApplicator11AnimateNodeEj
; demangled: AnimApplicator::AnimateNode(unsigned int)
; decoder-mode: arm
003645e8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003645ec  08 30 90 e5                                      ldr r3, [r0, #8]
003645f0  14 d0 4d e2                                      sub sp, sp, #0x14
003645f4  00 40 a0 e1                                      mov r4, r0
003645f8  00 00 53 e3                                      cmp r3, #0
003645fc  01 50 a0 e1                                      mov r5, r1
00364600  2e 00 00 0a                                      beq #0x3646c0
00364604  0c 10 90 e5                                      ldr r1, [r0, #0xc]
00364608  00 20 a0 e3                                      mov r2, #0
0036460c  0c 20 8d e5                                      str r2, [sp, #0xc]
00364610  01 00 71 e3                                      cmn r1, #1
00364614  04 20 8d e5                                      str r2, [sp, #4]
00364618  08 20 8d e5                                      str r2, [sp, #8]
0036461c  33 00 00 0a                                      beq #0x3646f0
00364620  04 30 90 e5                                      ldr r3, [r0, #4]
00364624  00 00 53 e3                                      cmp r3, #0
00364628  2c 00 00 0a                                      beq #0x3646e0
0036462c  03 00 a0 e1                                      mov r0, r3
00364630  00 30 93 e5                                      ldr r3, [r3]
00364634  0f e0 a0 e1                                      mov lr, pc
00364638  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0036463c  04 30 94 e5                                      ldr r3, [r4, #4]
00364640  00 00 50 e3                                      cmp r0, #0
00364644  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00364648  00 20 93 e5                                      ldr r2, [r3]
0036464c  7c c0 92 e5                                      ldr ip, [r2, #0x7c]
00364650  04 20 90 15                                      ldrne r2, [r0, #4]
00364654  23 00 00 0a                                      beq #0x3646e8
00364658  03 00 a0 e1                                      mov r0, r3
0036465c  04 30 8d e2                                      add r3, sp, #4
00364660  3c ff 2f e1                                      blx ip
00364664  14 30 94 e5                                      ldr r3, [r4, #0x14]
00364668  05 00 53 e1                                      cmp r3, r5
0036466c  16 00 00 0a                                      beq #0x3646cc
00364670  08 00 9d e5                                      ldr r0, [sp, #8]
00364674  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00364678  4b a7 fe eb                                      bl #0x30e3ac
0036467c  20 10 94 e5                                      ldr r1, [r4, #0x20]
00364680  00 70 a0 e1                                      mov r7, r0
00364684  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00364688  47 a7 fe eb                                      bl #0x30e3ac
0036468c  18 10 94 e5                                      ldr r1, [r4, #0x18]
00364690  00 60 a0 e1                                      mov r6, r0
00364694  04 00 9d e5                                      ldr r0, [sp, #4]
00364698  43 a7 fe eb                                      bl #0x30e3ac
0036469c  28 70 84 e5                                      str r7, [r4, #0x28]
003646a0  24 00 84 e5                                      str r0, [r4, #0x24]
003646a4  2c 60 84 e5                                      str r6, [r4, #0x2c]
003646a8  08 20 9d e5                                      ldr r2, [sp, #8]
003646ac  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003646b0  04 10 9d e5                                      ldr r1, [sp, #4]
003646b4  1c 20 84 e5                                      str r2, [r4, #0x1c]
003646b8  20 30 84 e5                                      str r3, [r4, #0x20]
003646bc  18 10 84 e5                                      str r1, [r4, #0x18]
003646c0  14 50 84 e5                                      str r5, [r4, #0x14]
003646c4  14 d0 8d e2                                      add sp, sp, #0x14
003646c8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003646cc  00 30 a0 e3                                      mov r3, #0
003646d0  2c 30 84 e5                                      str r3, [r4, #0x2c]
003646d4  24 30 84 e5                                      str r3, [r4, #0x24]
003646d8  28 30 84 e5                                      str r3, [r4, #0x28]
003646dc  f1 ff ff ea                                      b #0x3646a8
003646e0  00 20 93 e5                                      ldr r2, [r3]
003646e4  7c c0 92 e5                                      ldr ip, [r2, #0x7c]
003646e8  05 20 a0 e1                                      mov r2, r5
003646ec  d9 ff ff ea                                      b #0x364658
003646f0  03 00 a0 e1                                      mov r0, r3
003646f4  00 30 93 e5                                      ldr r3, [r3]
003646f8  0f e0 a0 e1                                      mov lr, pc
003646fc  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00364700  00 30 90 e5                                      ldr r3, [r0]
00364704  04 30 8d e5                                      str r3, [sp, #4]
00364708  04 30 90 e5                                      ldr r3, [r0, #4]
0036470c  08 30 8d e5                                      str r3, [sp, #8]
00364710  08 30 90 e5                                      ldr r3, [r0, #8]
00364714  0c 30 8d e5                                      str r3, [sp, #0xc]
00364718  d1 ff ff ea                                      b #0x364664

; FUNCTION 0x0036473c, declared_size=252, range_size=252, mode=arm
; class-group: AnimApplicator
; alias: _ZN14AnimApplicator10SetRefNodeEPN6glitch5scene10ISceneNodeE
; demangled: AnimApplicator::SetRefNode(glitch::scene::ISceneNode*)
; decoder-mode: arm
0036473c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00364740  08 30 90 e5                                      ldr r3, [r0, #8]
00364744  00 50 a0 e1                                      mov r5, r0
00364748  01 40 a0 e1                                      mov r4, r1
0036474c  00 00 53 e3                                      cmp r3, #0
00364750  03 00 00 0a                                      beq #0x364764
00364754  00 20 93 e5                                      ldr r2, [r3]
00364758  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0036475c  00 00 83 e0                                      add r0, r3, r0
00364760  87 e3 fe eb                                      bl #0x31d584
00364764  00 00 54 e3                                      cmp r4, #0
00364768  08 40 85 e5                                      str r4, [r5, #8]
0036476c  30 00 00 0a                                      beq #0x364834
00364770  00 30 94 e5                                      ldr r3, [r4]
00364774  00 20 e0 e3                                      mvn r2, #0
00364778  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0036477c  03 40 84 e0                                      add r4, r4, r3
00364780  04 30 94 e5                                      ldr r3, [r4, #4]
00364784  01 30 83 e2                                      add r3, r3, #1
00364788  04 30 84 e5                                      str r3, [r4, #4]
0036478c  04 30 95 e5                                      ldr r3, [r5, #4]
00364790  0c 20 85 e5                                      str r2, [r5, #0xc]
00364794  03 00 a0 e1                                      mov r0, r3
00364798  00 30 93 e5                                      ldr r3, [r3]
0036479c  0f e0 a0 e1                                      mov lr, pc
003647a0  70 f0 93 e5                                      ldr pc, [r3, #0x70]
003647a4  00 70 50 e2                                      subs r7, r0, #0
003647a8  21 00 00 0a                                      beq #0x364834
003647ac  00 40 a0 e3                                      mov r4, #0
003647b0  02 00 00 ea                                      b #0x3647c0
003647b4  01 40 84 e2                                      add r4, r4, #1
003647b8  04 00 57 e1                                      cmp r7, r4
003647bc  1c 00 00 0a                                      beq #0x364834
003647c0  04 30 95 e5                                      ldr r3, [r5, #4]
003647c4  04 10 a0 e1                                      mov r1, r4
003647c8  03 00 a0 e1                                      mov r0, r3
003647cc  00 30 93 e5                                      ldr r3, [r3]
003647d0  0f e0 a0 e1                                      mov lr, pc
003647d4  54 f0 93 e5                                      ldr pc, [r3, #0x54]
003647d8  08 30 95 e5                                      ldr r3, [r5, #8]
003647dc  00 60 a0 e1                                      mov r6, r0
003647e0  03 00 a0 e1                                      mov r0, r3
003647e4  00 30 93 e5                                      ldr r3, [r3]
003647e8  0f e0 a0 e1                                      mov lr, pc
003647ec  54 f0 93 e5                                      ldr pc, [r3, #0x54]
003647f0  00 10 a0 e1                                      mov r1, r0
003647f4  04 00 96 e5                                      ldr r0, [r6, #4]
003647f8  c7 a6 fe eb                                      bl #0x30e31c
003647fc  00 00 50 e3                                      cmp r0, #0
00364800  eb ff ff 1a                                      bne #0x3647b4
00364804  04 30 95 e5                                      ldr r3, [r5, #4]
00364808  04 10 a0 e1                                      mov r1, r4
0036480c  03 00 a0 e1                                      mov r0, r3
00364810  00 30 93 e5                                      ldr r3, [r3]
00364814  0f e0 a0 e1                                      mov lr, pc
00364818  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0036481c  08 30 90 e5                                      ldr r3, [r0, #8]
00364820  01 00 53 e3                                      cmp r3, #1
00364824  0c 40 85 05                                      streq r4, [r5, #0xc]
00364828  01 40 84 e2                                      add r4, r4, #1
0036482c  04 00 57 e1                                      cmp r7, r4
00364830  e2 ff ff 1a                                      bne #0x3647c0
00364834  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00364838, declared_size=56, range_size=56, mode=arm
; class-group: AnimApplicator
; alias: _ZN14AnimApplicatorD1Ev
; demangled: AnimApplicator::~AnimApplicator()
; decoder-mode: arm
00364838  28 30 9f e5                                      ldr r3, [pc, #0x28]
0036483c  28 20 9f e5                                      ldr r2, [pc, #0x28]
00364840  10 40 2d e9                                      push {r4, lr}
00364844  03 30 8f e0                                      add r3, pc, r3
00364848  02 20 93 e7                                      ldr r2, [r3, r2]
0036484c  00 40 a0 e1                                      mov r4, r0
00364850  00 10 a0 e3                                      mov r1, #0
00364854  08 20 82 e2                                      add r2, r2, #8
00364858  00 20 80 e5                                      str r2, [r0]
0036485c  b6 ff ff eb                                      bl #0x36473c
00364860  04 00 a0 e1                                      mov r0, r4
00364864  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00364868  4c 02 63 00 04 2b 00 00                          .byte 0x4c, 0x02, 0x63, 0x00, 0x04, 0x2b, 0x00, 0x00

; FUNCTION 0x00364870, declared_size=56, range_size=56, mode=arm
; class-group: AnimApplicator
; alias: _ZN14AnimApplicatorD2Ev
; demangled: AnimApplicator::~AnimApplicator()
; decoder-mode: arm
00364870  28 30 9f e5                                      ldr r3, [pc, #0x28]
00364874  28 20 9f e5                                      ldr r2, [pc, #0x28]
00364878  10 40 2d e9                                      push {r4, lr}
0036487c  03 30 8f e0                                      add r3, pc, r3
00364880  02 20 93 e7                                      ldr r2, [r3, r2]
00364884  00 40 a0 e1                                      mov r4, r0
00364888  00 10 a0 e3                                      mov r1, #0
0036488c  08 20 82 e2                                      add r2, r2, #8
00364890  00 20 80 e5                                      str r2, [r0]
00364894  a8 ff ff eb                                      bl #0x36473c
00364898  04 00 a0 e1                                      mov r0, r4
0036489c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003648a0  14 02 63 00 04 2b 00 00                          .byte 0x14, 0x02, 0x63, 0x00, 0x04, 0x2b, 0x00, 0x00

; FUNCTION 0x003648a8, declared_size=28, range_size=28, mode=arm
; class-group: AnimApplicator
; alias: _ZN14AnimApplicatorD0Ev
; demangled: AnimApplicator::~AnimApplicator()
; decoder-mode: arm
003648a8  10 40 2d e9                                      push {r4, lr}
003648ac  00 40 a0 e1                                      mov r4, r0
003648b0  e0 ff ff eb                                      bl #0x364838
003648b4  04 00 a0 e1                                      mov r0, r4
003648b8  e0 ae fe eb                                      bl #0x310440
003648bc  04 00 a0 e1                                      mov r0, r4
003648c0  10 80 bd e8                                      pop {r4, pc}
