; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035c058, declared_size=68, range_size=68, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNode18ResetDebugCountersEv
; demangled: RootSceneNode::ResetDebugCounters()
; decoder-mode: arm
0035c058  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0035c05c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0035c060  03 30 8f e0                                      add r3, pc, r3
0035c064  02 00 93 e7                                      ldr r0, [r3, r2]
0035c068  24 20 9f e5                                      ldr r2, [pc, #0x24]
0035c06c  02 c0 93 e7                                      ldr ip, [r3, r2]
0035c070  20 20 9f e5                                      ldr r2, [pc, #0x20]
0035c074  02 10 93 e7                                      ldr r1, [r3, r2]
0035c078  00 20 a0 e3                                      mov r2, #0
0035c07c  00 20 8c e5                                      str r2, [ip]
0035c080  00 20 80 e5                                      str r2, [r0]
0035c084  00 20 81 e5                                      str r2, [r1]
0035c088  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0035c08c  30 8a 63 00 40 0f 00 00 d4 26 00 00 94 47 00 00  .byte 0x30, 0x8a, 0x63, 0x00, 0x40, 0x0f, 0x00, 0x00, 0xd4, 0x26, 0x00, 0x00, 0x94, 0x47, 0x00, 0x00

; FUNCTION 0x0035c09c, declared_size=88, range_size=88, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNode11ForwardAnimEj
; demangled: RootSceneNode::ForwardAnim(unsigned int)
; decoder-mode: arm
0035c09c  70 40 2d e9                                      push {r4, r5, r6, lr}
0035c0a0  00 50 a0 e1                                      mov r5, r0
0035c0a4  fc 40 b5 e5                                      ldr r4, [r5, #0xfc]!
0035c0a8  01 60 a0 e1                                      mov r6, r1
0035c0ac  05 00 54 e1                                      cmp r4, r5
0035c0b0  0e 00 00 0a                                      beq #0x35c0f0
0035c0b4  08 30 94 e5                                      ldr r3, [r4, #8]
0035c0b8  03 00 a0 e1                                      mov r0, r3
0035c0bc  00 30 93 e5                                      ldr r3, [r3]
0035c0c0  0f e0 a0 e1                                      mov lr, pc
0035c0c4  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0035c0c8  00 30 50 e2                                      subs r3, r0, #0
0035c0cc  04 00 00 0a                                      beq #0x35c0e4
0035c0d0  04 10 93 e5                                      ldr r1, [r3, #4]
0035c0d4  00 30 93 e5                                      ldr r3, [r3]
0035c0d8  01 10 86 e0                                      add r1, r6, r1
0035c0dc  0f e0 a0 e1                                      mov lr, pc
0035c0e0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0035c0e4  00 40 94 e5                                      ldr r4, [r4]
0035c0e8  04 00 55 e1                                      cmp r5, r4
0035c0ec  f0 ff ff 1a                                      bne #0x35c0b4
0035c0f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0035c0f4, declared_size=92, range_size=92, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNode12onUpdateTimeEj
; demangled: RootSceneNode::onUpdateTime(unsigned int)
; decoder-mode: arm
0035c0f4  70 40 2d e9                                      push {r4, r5, r6, lr}
0035c0f8  1c 21 90 e5                                      ldr r2, [r0, #0x11c]
0035c0fc  01 32 00 e3                                      movw r3, #0x201
0035c100  00 30 40 e3                                      movt r3, #0
0035c104  03 30 02 e0                                      and r3, r2, r3
0035c108  01 22 00 e3                                      movw r2, #0x201
0035c10c  02 00 53 e1                                      cmp r3, r2
0035c110  01 60 a0 e1                                      mov r6, r1
0035c114  0c 00 00 1a                                      bne #0x35c14c
0035c118  00 50 a0 e1                                      mov r5, r0
0035c11c  fc 40 b5 e5                                      ldr r4, [r5, #0xfc]!
0035c120  04 00 55 e1                                      cmp r5, r4
0035c124  08 00 00 0a                                      beq #0x35c14c
0035c128  08 30 94 e5                                      ldr r3, [r4, #8]
0035c12c  06 10 a0 e1                                      mov r1, r6
0035c130  03 00 a0 e1                                      mov r0, r3
0035c134  00 30 93 e5                                      ldr r3, [r3]
0035c138  0f e0 a0 e1                                      mov lr, pc
0035c13c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0035c140  00 40 94 e5                                      ldr r4, [r4]
0035c144  04 00 55 e1                                      cmp r5, r4
0035c148  f6 ff ff 1a                                      bne #0x35c128
0035c14c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0035c268, declared_size=4, range_size=4, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNode14PlainOnAnimateEj
; demangled: RootSceneNode::PlainOnAnimate(unsigned int)
; decoder-mode: arm
0035c268  28 fb 0b ea                                      b #0x65af10

; FUNCTION 0x0035c26c, declared_size=16, range_size=16, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNode10setVisibleEb
; demangled: RootSceneNode::setVisible(bool)
; decoder-mode: arm
0035c26c  00 00 51 e3                                      cmp r1, #0
0035c270  09 12 c0 e5                                      strb r1, [r0, #0x209]
0035c274  1e ff 2f 11                                      bxne lr
0035c278  11 eb 08 ea                                      b #0x596ec4

; FUNCTION 0x0035c27c, declared_size=40, range_size=40, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNode22updateAbsolutePositionEb
; demangled: RootSceneNode::updateAbsolutePosition(bool)
; decoder-mode: arm
0035c27c  18 30 9f e5                                      ldr r3, [pc, #0x18]
0035c280  18 20 9f e5                                      ldr r2, [pc, #0x18]
0035c284  03 30 8f e0                                      add r3, pc, r3
0035c288  02 20 93 e7                                      ldr r2, [r3, r2]
0035c28c  00 30 92 e5                                      ldr r3, [r2]
0035c290  01 30 83 e2                                      add r3, r3, #1
0035c294  00 30 82 e5                                      str r3, [r2]
0035c298  70 ee 08 ea                                      b #0x597c60
; mapping-symbol data/literal pool
0035c29c  0c 88 63 00 d4 26 00 00                          .byte 0x0c, 0x88, 0x63, 0x00, 0xd4, 0x26, 0x00, 0x00

; FUNCTION 0x0035c51c, declared_size=616, range_size=616, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNode25UpdateEnlargedViewFrustumEPN6glitch5scene13CSceneManagerE
; demangled: RootSceneNode::UpdateEnlargedViewFrustum(glitch::scene::CSceneManager*)
; decoder-mode: arm
0035c51c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0035c520  e4 40 90 e5                                      ldr r4, [r0, #0xe4]
0035c524  4c 52 9f e5                                      ldr r5, [pc, #0x24c]
0035c528  14 d0 4d e2                                      sub sp, sp, #0x14
0035c52c  00 00 54 e3                                      cmp r4, #0
0035c530  05 50 8f e0                                      add r5, pc, r5
0035c534  60 00 00 0a                                      beq #0x35c6bc
0035c538  3c 62 9f e5                                      ldr r6, [pc, #0x23c]
0035c53c  04 80 8d e2                                      add r8, sp, #4
0035c540  08 00 a0 e1                                      mov r0, r8
0035c544  04 10 a0 e1                                      mov r1, r4
0035c548  0c eb 08 eb                                      bl #0x597180
0035c54c  06 70 95 e7                                      ldr r7, [r5, r6]
0035c550  08 10 a0 e1                                      mov r1, r8
0035c554  07 00 a0 e1                                      mov r0, r7
0035c558  f3 ea 08 eb                                      bl #0x59712c
0035c55c  07 00 a0 e1                                      mov r0, r7
0035c560  00 10 a0 e3                                      mov r1, #0
0035c564  bd ed 08 eb                                      bl #0x597c60
0035c568  00 30 94 e5                                      ldr r3, [r4]
0035c56c  04 00 a0 e1                                      mov r0, r4
0035c570  0f e0 a0 e1                                      mov lr, pc
0035c574  08 f1 93 e5                                      ldr pc, [r3, #0x108]
0035c578  00 10 a0 e1                                      mov r1, r0
0035c57c  07 00 a0 e1                                      mov r0, r7
0035c580  97 96 08 eb                                      bl #0x581fe4
0035c584  07 00 a0 e1                                      mov r0, r7
0035c588  a5 96 08 eb                                      bl #0x582024
0035c58c  00 30 94 e5                                      ldr r3, [r4]
0035c590  00 80 a0 e1                                      mov r8, r0
0035c594  04 00 a0 e1                                      mov r0, r4
0035c598  0f e0 a0 e1                                      mov lr, pc
0035c59c  18 f1 93 e5                                      ldr pc, [r3, #0x118]
0035c5a0  00 10 90 e5                                      ldr r1, [r0]
0035c5a4  00 70 a0 e1                                      mov r7, r0
0035c5a8  00 00 98 e5                                      ldr r0, [r8]
0035c5ac  76 c6 fe eb                                      bl #0x30df8c
0035c5b0  00 00 50 e3                                      cmp r0, #0
0035c5b4  42 00 00 1a                                      bne #0x35c6c4
0035c5b8  00 30 94 e5                                      ldr r3, [r4]
0035c5bc  04 00 a0 e1                                      mov r0, r4
0035c5c0  0f e0 a0 e1                                      mov lr, pc
0035c5c4  18 f1 93 e5                                      ldr pc, [r3, #0x118]
0035c5c8  00 10 a0 e1                                      mov r1, r0
0035c5cc  06 00 95 e7                                      ldr r0, [r5, r6]
0035c5d0  8c 96 08 eb                                      bl #0x582008
0035c5d4  06 70 95 e7                                      ldr r7, [r5, r6]
0035c5d8  07 00 a0 e1                                      mov r0, r7
0035c5dc  92 96 08 eb                                      bl #0x58202c
0035c5e0  00 30 94 e5                                      ldr r3, [r4]
0035c5e4  00 80 a0 e1                                      mov r8, r0
0035c5e8  04 00 a0 e1                                      mov r0, r4
0035c5ec  0f e0 a0 e1                                      mov lr, pc
0035c5f0  1c f1 93 e5                                      ldr pc, [r3, #0x11c]
0035c5f4  00 10 a0 e1                                      mov r1, r0
0035c5f8  08 00 a0 e1                                      mov r0, r8
0035c5fc  62 c6 fe eb                                      bl #0x30df8c
0035c600  00 00 50 e3                                      cmp r0, #0
0035c604  39 00 00 0a                                      beq #0x35c6f0
0035c608  06 70 95 e7                                      ldr r7, [r5, r6]
0035c60c  07 00 a0 e1                                      mov r0, r7
0035c610  87 96 08 eb                                      bl #0x582034
0035c614  00 30 94 e5                                      ldr r3, [r4]
0035c618  00 80 a0 e1                                      mov r8, r0
0035c61c  04 00 a0 e1                                      mov r0, r4
0035c620  0f e0 a0 e1                                      mov lr, pc
0035c624  20 f1 93 e5                                      ldr pc, [r3, #0x120]
0035c628  00 10 a0 e1                                      mov r1, r0
0035c62c  08 00 a0 e1                                      mov r0, r8
0035c630  55 c6 fe eb                                      bl #0x30df8c
0035c634  00 00 50 e3                                      cmp r0, #0
0035c638  46 00 00 0a                                      beq #0x35c758
0035c63c  06 70 95 e7                                      ldr r7, [r5, r6]
0035c640  07 00 a0 e1                                      mov r0, r7
0035c644  7c 96 08 eb                                      bl #0x58203c
0035c648  00 30 94 e5                                      ldr r3, [r4]
0035c64c  00 80 a0 e1                                      mov r8, r0
0035c650  04 00 a0 e1                                      mov r0, r4
0035c654  0f e0 a0 e1                                      mov lr, pc
0035c658  24 f1 93 e5                                      ldr pc, [r3, #0x124]
0035c65c  00 10 a0 e1                                      mov r1, r0
0035c660  08 00 a0 e1                                      mov r0, r8
0035c664  48 c6 fe eb                                      bl #0x30df8c
0035c668  00 00 50 e3                                      cmp r0, #0
0035c66c  31 00 00 0a                                      beq #0x35c738
0035c670  06 70 95 e7                                      ldr r7, [r5, r6]
0035c674  07 00 a0 e1                                      mov r0, r7
0035c678  71 96 08 eb                                      bl #0x582044
0035c67c  00 30 94 e5                                      ldr r3, [r4]
0035c680  00 a0 a0 e1                                      mov sl, r0
0035c684  04 00 a0 e1                                      mov r0, r4
0035c688  0f e0 a0 e1                                      mov lr, pc
0035c68c  28 f1 93 e5                                      ldr pc, [r3, #0x128]
0035c690  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
0035c694  03 80 95 e7                                      ldr r8, [r5, r3]
0035c698  00 10 98 e5                                      ldr r1, [r8]
0035c69c  b2 c9 fe eb                                      bl #0x30ed6c
0035c6a0  00 10 a0 e1                                      mov r1, r0
0035c6a4  0a 00 a0 e1                                      mov r0, sl
0035c6a8  37 c6 fe eb                                      bl #0x30df8c
0035c6ac  00 00 50 e3                                      cmp r0, #0
0035c6b0  16 00 00 0a                                      beq #0x35c710
0035c6b4  06 00 95 e7                                      ldr r0, [r5, r6]
0035c6b8  f0 9a 08 eb                                      bl #0x583280
0035c6bc  14 d0 8d e2                                      add sp, sp, #0x14
0035c6c0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0035c6c4  04 00 98 e5                                      ldr r0, [r8, #4]
0035c6c8  04 10 97 e5                                      ldr r1, [r7, #4]
0035c6cc  2e c6 fe eb                                      bl #0x30df8c
0035c6d0  00 00 50 e3                                      cmp r0, #0
0035c6d4  b7 ff ff 0a                                      beq #0x35c5b8
0035c6d8  08 00 98 e5                                      ldr r0, [r8, #8]
0035c6dc  08 10 97 e5                                      ldr r1, [r7, #8]
0035c6e0  29 c6 fe eb                                      bl #0x30df8c
0035c6e4  00 00 50 e3                                      cmp r0, #0
0035c6e8  b9 ff ff 1a                                      bne #0x35c5d4
0035c6ec  b1 ff ff ea                                      b #0x35c5b8
0035c6f0  00 30 94 e5                                      ldr r3, [r4]
0035c6f4  04 00 a0 e1                                      mov r0, r4
0035c6f8  0f e0 a0 e1                                      mov lr, pc
0035c6fc  1c f1 93 e5                                      ldr pc, [r3, #0x11c]
0035c700  00 10 a0 e1                                      mov r1, r0
0035c704  07 00 a0 e1                                      mov r0, r7
0035c708  51 96 08 eb                                      bl #0x582054
0035c70c  bd ff ff ea                                      b #0x35c608
0035c710  00 30 94 e5                                      ldr r3, [r4]
0035c714  04 00 a0 e1                                      mov r0, r4
0035c718  0f e0 a0 e1                                      mov lr, pc
0035c71c  28 f1 93 e5                                      ldr pc, [r3, #0x128]
0035c720  00 10 98 e5                                      ldr r1, [r8]
0035c724  90 c9 fe eb                                      bl #0x30ed6c
0035c728  00 10 a0 e1                                      mov r1, r0
0035c72c  07 00 a0 e1                                      mov r0, r7
0035c730  59 96 08 eb                                      bl #0x58209c
0035c734  de ff ff ea                                      b #0x35c6b4
0035c738  00 30 94 e5                                      ldr r3, [r4]
0035c73c  04 00 a0 e1                                      mov r0, r4
0035c740  0f e0 a0 e1                                      mov lr, pc
0035c744  24 f1 93 e5                                      ldr pc, [r3, #0x124]
0035c748  00 10 a0 e1                                      mov r1, r0
0035c74c  07 00 a0 e1                                      mov r0, r7
0035c750  4b 96 08 eb                                      bl #0x582084
0035c754  c5 ff ff ea                                      b #0x35c670
0035c758  00 30 94 e5                                      ldr r3, [r4]
0035c75c  04 00 a0 e1                                      mov r0, r4
0035c760  0f e0 a0 e1                                      mov lr, pc
0035c764  20 f1 93 e5                                      ldr pc, [r3, #0x120]
0035c768  00 10 a0 e1                                      mov r1, r0
0035c76c  07 00 a0 e1                                      mov r0, r7
0035c770  3d 96 08 eb                                      bl #0x58206c
0035c774  b0 ff ff ea                                      b #0x35c63c
; mapping-symbol data/literal pool
0035c778  60 85 63 00 9c 35 00 00 9c 32 00 00              .byte 0x60, 0x85, 0x63, 0x00, 0x9c, 0x35, 0x00, 0x00, 0x9c, 0x32, 0x00, 0x00

; FUNCTION 0x0035c784, declared_size=208, range_size=208, mode=arm
; class-group: RootSceneNode
; alias: _ZNK13RootSceneNode17IsVisibleFastTestEv
; demangled: RootSceneNode::IsVisibleFastTest() const
; decoder-mode: arm
0035c784  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0035c788  b4 40 9f e5                                      ldr r4, [pc, #0xb4]
0035c78c  b4 60 9f e5                                      ldr r6, [pc, #0xb4]
0035c790  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0035c794  04 40 8f e0                                      add r4, pc, r4
0035c798  06 30 94 e7                                      ldr r3, [r4, r6]
0035c79c  02 70 94 e7                                      ldr r7, [r4, r2]
0035c7a0  20 d0 4d e2                                      sub sp, sp, #0x20
0035c7a4  00 30 93 e5                                      ldr r3, [r3]
0035c7a8  00 80 a0 e1                                      mov r8, r0
0035c7ac  07 00 a0 e1                                      mov r0, r7
0035c7b0  1c 30 8d e5                                      str r3, [sp, #0x1c]
0035c7b4  33 6c ff eb                                      bl #0x337888
0035c7b8  90 10 9f e5                                      ldr r1, [pc, #0x90]
0035c7bc  04 50 8d e2                                      add r5, sp, #4
0035c7c0  0d 20 a0 e1                                      mov r2, sp
0035c7c4  01 10 8f e0                                      add r1, pc, r1
0035c7c8  05 00 a0 e1                                      mov r0, r5
0035c7cc  46 de fe eb                                      bl #0x3140ec
0035c7d0  07 00 a0 e1                                      mov r0, r7
0035c7d4  05 10 a0 e1                                      mov r1, r5
0035c7d8  aa 6c ff eb                                      bl #0x337a88
0035c7dc  00 00 50 e3                                      cmp r0, #0
0035c7e0  09 00 00 1a                                      bne #0x35c80c
0035c7e4  00 32 d8 e5                                      ldrb r3, [r8, #0x200]
0035c7e8  00 00 53 e3                                      cmp r3, #0
0035c7ec  11 00 00 0a                                      beq #0x35c838
0035c7f0  04 02 98 e5                                      ldr r0, [r8, #0x204]
0035c7f4  00 00 50 e3                                      cmp r0, #0
0035c7f8  03 00 00 0a                                      beq #0x35c80c
0035c7fc  4b 1f 80 e2                                      add r1, r0, #0x12c
0035c800  a2 85 ff eb                                      bl #0x33de90
0035c804  00 00 50 e3                                      cmp r0, #0
0035c808  0a 00 00 0a                                      beq #0x35c838
0035c80c  00 70 a0 e3                                      mov r7, #0
0035c810  05 00 a0 e1                                      mov r0, r5
0035c814  64 dc fe eb                                      bl #0x3139ac
0035c818  06 30 94 e7                                      ldr r3, [r4, r6]
0035c81c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0035c820  07 00 a0 e1                                      mov r0, r7
0035c824  00 30 93 e5                                      ldr r3, [r3]
0035c828  03 00 52 e1                                      cmp r2, r3
0035c82c  03 00 00 1a                                      bne #0x35c840
0035c830  20 d0 8d e2                                      add sp, sp, #0x20
0035c834  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0035c838  01 70 a0 e3                                      mov r7, #1
0035c83c  f3 ff ff ea                                      b #0x35c810
0035c840  b2 c6 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0035c844  fc 82 63 00 ac 40 00 00 84 08 00 00 24 33 56 00  .byte 0xfc, 0x82, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x24, 0x33, 0x56, 0x00

; FUNCTION 0x0035c854, declared_size=156, range_size=156, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNode18RefreshBoundingBoxEv
; demangled: RootSceneNode::RefreshBoundingBox()
; decoder-mode: arm
0035c854  70 40 2d e9                                      push {r4, r5, r6, lr}
0035c858  13 1e 80 e2                                      add r1, r0, #0x130
0035c85c  00 40 a0 e1                                      mov r4, r0
0035c860  c9 01 0c eb                                      bl #0x65cf8c
0035c864  00 30 94 e5                                      ldr r3, [r4]
0035c868  04 00 a0 e1                                      mov r0, r4
0035c86c  0f e0 a0 e1                                      mov lr, pc
0035c870  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0035c874  00 10 90 e5                                      ldr r1, [r0]
0035c878  00 50 a0 e1                                      mov r5, r0
0035c87c  30 01 94 e5                                      ldr r0, [r4, #0x130]
0035c880  c9 c6 fe eb                                      bl #0x30e3ac
0035c884  30 01 84 e5                                      str r0, [r4, #0x130]
0035c888  04 10 95 e5                                      ldr r1, [r5, #4]
0035c88c  34 01 94 e5                                      ldr r0, [r4, #0x134]
0035c890  c5 c6 fe eb                                      bl #0x30e3ac
0035c894  34 01 84 e5                                      str r0, [r4, #0x134]
0035c898  08 10 95 e5                                      ldr r1, [r5, #8]
0035c89c  38 01 94 e5                                      ldr r0, [r4, #0x138]
0035c8a0  c1 c6 fe eb                                      bl #0x30e3ac
0035c8a4  00 30 94 e5                                      ldr r3, [r4]
0035c8a8  38 01 84 e5                                      str r0, [r4, #0x138]
0035c8ac  04 00 a0 e1                                      mov r0, r4
0035c8b0  0f e0 a0 e1                                      mov lr, pc
0035c8b4  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0035c8b8  00 10 90 e5                                      ldr r1, [r0]
0035c8bc  00 50 a0 e1                                      mov r5, r0
0035c8c0  3c 01 94 e5                                      ldr r0, [r4, #0x13c]
0035c8c4  b8 c6 fe eb                                      bl #0x30e3ac
0035c8c8  3c 01 84 e5                                      str r0, [r4, #0x13c]
0035c8cc  04 10 95 e5                                      ldr r1, [r5, #4]
0035c8d0  40 01 94 e5                                      ldr r0, [r4, #0x140]
0035c8d4  b4 c6 fe eb                                      bl #0x30e3ac
0035c8d8  40 01 84 e5                                      str r0, [r4, #0x140]
0035c8dc  08 10 95 e5                                      ldr r1, [r5, #8]
0035c8e0  44 01 94 e5                                      ldr r0, [r4, #0x144]
0035c8e4  b0 c6 fe eb                                      bl #0x30e3ac
0035c8e8  44 01 84 e5                                      str r0, [r4, #0x144]
0035c8ec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0035cc0c, declared_size=208, range_size=208, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNode21ResetPositionFromFileEv
; demangled: RootSceneNode::ResetPositionFromFile()
; decoder-mode: arm
0035cc0c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0035cc10  f4 50 90 e5                                      ldr r5, [r0, #0xf4]
0035cc14  3c d0 4d e2                                      sub sp, sp, #0x3c
0035cc18  00 80 a0 e1                                      mov r8, r0
0035cc1c  00 00 55 e3                                      cmp r5, #0
0035cc20  2b 00 00 0a                                      beq #0x35ccd4
0035cc24  04 60 55 e2                                      subs r6, r5, #4
0035cc28  29 00 00 0a                                      beq #0x35ccd4
0035cc2c  04 30 15 e5                                      ldr r3, [r5, #-4]
0035cc30  00 40 a0 e3                                      mov r4, #0
0035cc34  06 00 a0 e1                                      mov r0, r6
0035cc38  a4 30 93 e5                                      ldr r3, [r3, #0xa4]
0035cc3c  2c 10 8d e2                                      add r1, sp, #0x2c
0035cc40  2c 40 8d e5                                      str r4, [sp, #0x2c]
0035cc44  30 40 8d e5                                      str r4, [sp, #0x30]
0035cc48  34 40 8d e5                                      str r4, [sp, #0x34]
0035cc4c  33 ff 2f e1                                      blx r3
0035cc50  04 c0 15 e5                                      ldr ip, [r5, #-4]
0035cc54  04 a0 8d e2                                      add sl, sp, #4
0035cc58  04 20 a0 e1                                      mov r2, r4
0035cc5c  04 30 a0 e1                                      mov r3, r4
0035cc60  04 10 a0 e1                                      mov r1, r4
0035cc64  0a 00 a0 e1                                      mov r0, sl
0035cc68  9c 70 9c e5                                      ldr r7, [ip, #0x9c]
0035cc6c  59 ff ff eb                                      bl #0x35c9d8
0035cc70  06 00 a0 e1                                      mov r0, r6
0035cc74  0a 10 a0 e1                                      mov r1, sl
0035cc78  37 ff 2f e1                                      blx r7
0035cc7c  04 30 15 e5                                      ldr r3, [r5, #-4]
0035cc80  fe 25 a0 e3                                      mov r2, #0x3f800000
0035cc84  06 00 a0 e1                                      mov r0, r6
0035cc88  94 30 93 e5                                      ldr r3, [r3, #0x94]
0035cc8c  20 10 8d e2                                      add r1, sp, #0x20
0035cc90  28 20 8d e5                                      str r2, [sp, #0x28]
0035cc94  20 20 8d e5                                      str r2, [sp, #0x20]
0035cc98  24 20 8d e5                                      str r2, [sp, #0x24]
0035cc9c  33 ff 2f e1                                      blx r3
0035cca0  00 30 98 e5                                      ldr r3, [r8]
0035cca4  08 00 a0 e1                                      mov r0, r8
0035cca8  14 10 8d e2                                      add r1, sp, #0x14
0035ccac  a4 30 93 e5                                      ldr r3, [r3, #0xa4]
0035ccb0  1c 40 8d e5                                      str r4, [sp, #0x1c]
0035ccb4  14 40 8d e5                                      str r4, [sp, #0x14]
0035ccb8  18 40 8d e5                                      str r4, [sp, #0x18]
0035ccbc  33 ff 2f e1                                      blx r3
0035ccc0  04 30 15 e5                                      ldr r3, [r5, #-4]
0035ccc4  06 00 a0 e1                                      mov r0, r6
0035ccc8  00 10 a0 e3                                      mov r1, #0
0035cccc  0f e0 a0 e1                                      mov lr, pc
0035ccd0  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
0035ccd4  3c d0 8d e2                                      add sp, sp, #0x3c
0035ccd8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0035ccdc, declared_size=128, range_size=128, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNode11GetAnimRootEb
; demangled: RootSceneNode::GetAnimRoot(bool)
; decoder-mode: arm
0035ccdc  00 00 51 e3                                      cmp r1, #0
0035cce0  10 40 2d e9                                      push {r4, lr}
0035cce4  00 40 a0 e1                                      mov r4, r0
0035cce8  06 00 00 0a                                      beq #0x35cd08
0035ccec  58 10 9f e5                                      ldr r1, [pc, #0x58]
0035ccf0  04 00 a0 e1                                      mov r0, r4
0035ccf4  01 10 8f e0                                      add r1, pc, r1
0035ccf8  a0 ca 06 eb                                      bl #0x50f780
0035ccfc  00 00 50 e3                                      cmp r0, #0
0035cd00  06 00 00 0a                                      beq #0x35cd20
0035cd04  10 80 bd e8                                      pop {r4, pc}
0035cd08  40 10 9f e5                                      ldr r1, [pc, #0x40]
0035cd0c  01 10 8f e0                                      add r1, pc, r1
0035cd10  9a ca 06 eb                                      bl #0x50f780
0035cd14  00 00 50 e3                                      cmp r0, #0
0035cd18  f3 ff ff 0a                                      beq #0x35ccec
0035cd1c  10 80 bd e8                                      pop {r4, pc}
0035cd20  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0035cd24  04 00 a0 e1                                      mov r0, r4
0035cd28  01 10 8f e0                                      add r1, pc, r1
0035cd2c  93 ca 06 eb                                      bl #0x50f780
0035cd30  00 00 50 e3                                      cmp r0, #0
0035cd34  f2 ff ff 1a                                      bne #0x35cd04
0035cd38  18 10 9f e5                                      ldr r1, [pc, #0x18]
0035cd3c  04 00 a0 e1                                      mov r0, r4
0035cd40  01 10 8f e0                                      add r1, pc, r1
0035cd44  10 40 bd e8                                      pop {r4, lr}
0035cd48  8c ca 06 ea                                      b #0x50f780
; mapping-symbol data/literal pool
0035cd4c  94 3f 56 00 6c 3f 56 00 68 3f 56 00 58 3f 56 00  .byte 0x94, 0x3f, 0x56, 0x00, 0x6c, 0x3f, 0x56, 0x00, 0x68, 0x3f, 0x56, 0x00, 0x58, 0x3f, 0x56, 0x00

; FUNCTION 0x0035cd5c, declared_size=272, range_size=272, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNode10_CalcDeltaERN6glitch4core8vector3dIfEE
; demangled: RootSceneNode::_CalcDelta(glitch::core::vector3d<float>&)
; decoder-mode: arm
0035cd5c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0035cd60  ec 20 9f e5                                      ldr r2, [pc, #0xec]
0035cd64  14 d0 4d e2                                      sub sp, sp, #0x14
0035cd68  00 60 a0 e1                                      mov r6, r0
0035cd6c  02 20 8f e0                                      add r2, pc, r2
0035cd70  0c 20 8d e5                                      str r2, [sp, #0xc]
0035cd74  fc 50 b6 e5                                      ldr r5, [r6, #0xfc]!
0035cd78  00 30 a0 e3                                      mov r3, #0
0035cd7c  08 30 81 e5                                      str r3, [r1, #8]
0035cd80  00 30 81 e5                                      str r3, [r1]
0035cd84  04 30 81 e5                                      str r3, [r1, #4]
0035cd88  c8 70 9f e5                                      ldr r7, [pc, #0xc8]
0035cd8c  c8 a0 9f e5                                      ldr sl, [pc, #0xc8]
0035cd90  c8 90 9f e5                                      ldr sb, [pc, #0xc8]
0035cd94  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
0035cd98  05 00 56 e1                                      cmp r6, r5
0035cd9c  07 70 8f e0                                      add r7, pc, r7
0035cda0  01 40 a0 e1                                      mov r4, r1
0035cda4  0a a0 8f e0                                      add sl, pc, sl
0035cda8  09 90 8f e0                                      add sb, pc, sb
0035cdac  b4 80 9f e5                                      ldr r8, [pc, #0xb4]
0035cdb0  08 30 8d e5                                      str r3, [sp, #8]
0035cdb4  12 00 00 0a                                      beq #0x35ce04
0035cdb8  08 00 95 e5                                      ldr r0, [r5, #8]
0035cdbc  e7 30 00 eb                                      bl #0x369160
0035cdc0  00 b0 50 e2                                      subs fp, r0, #0
0035cdc4  10 00 00 0a                                      beq #0x35ce0c
0035cdc8  24 10 9b e5                                      ldr r1, [fp, #0x24]
0035cdcc  00 00 94 e5                                      ldr r0, [r4]
0035cdd0  73 c7 fe eb                                      bl #0x30eba4
0035cdd4  00 00 84 e5                                      str r0, [r4]
0035cdd8  28 10 9b e5                                      ldr r1, [fp, #0x28]
0035cddc  04 00 94 e5                                      ldr r0, [r4, #4]
0035cde0  6f c7 fe eb                                      bl #0x30eba4
0035cde4  04 00 84 e5                                      str r0, [r4, #4]
0035cde8  2c 10 9b e5                                      ldr r1, [fp, #0x2c]
0035cdec  08 00 94 e5                                      ldr r0, [r4, #8]
0035cdf0  6b c7 fe eb                                      bl #0x30eba4
0035cdf4  08 00 84 e5                                      str r0, [r4, #8]
0035cdf8  00 50 95 e5                                      ldr r5, [r5]
0035cdfc  05 00 56 e1                                      cmp r6, r5
0035ce00  ec ff ff 1a                                      bne #0x35cdb8
0035ce04  14 d0 8d e2                                      add sp, sp, #0x14
0035ce08  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0035ce0c  08 30 97 e7                                      ldr r3, [r7, r8]
0035ce10  00 30 93 e5                                      ldr r3, [r3]
0035ce14  02 00 53 e3                                      cmp r3, #2
0035ce18  00 b0 8b 05                                      streq fp, [fp]
0035ce1c  f5 ff ff 0a                                      beq #0x35cdf8
0035ce20  01 00 53 e3                                      cmp r3, #1
0035ce24  f3 ff ff 1a                                      bne #0x35cdf8
0035ce28  08 c0 9d e5                                      ldr ip, [sp, #8]
0035ce2c  0a 10 a0 e1                                      mov r1, sl
0035ce30  09 20 a0 e1                                      mov r2, sb
0035ce34  0c 00 97 e7                                      ldr r0, [r7, ip]
0035ce38  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0035ce3c  f4 c0 a0 e3                                      mov ip, #0xf4
0035ce40  a8 00 80 e2                                      add r0, r0, #0xa8
0035ce44  00 c0 8d e5                                      str ip, [sp]
0035ce48  6d c4 fe eb                                      bl #0x30e004
0035ce4c  00 50 95 e5                                      ldr r5, [r5]
0035ce50  e9 ff ff ea                                      b #0x35cdfc
; mapping-symbol data/literal pool
0035ce54  3c 3f 56 00 f4 7c 63 00 34 16 56 00 80 05 58 00  .byte 0x3c, 0x3f, 0x56, 0x00, 0xf4, 0x7c, 0x63, 0x00, 0x34, 0x16, 0x56, 0x00, 0x80, 0x05, 0x58, 0x00
0035ce64  c0 19 00 00 c0 39 00 00                          .byte 0xc0, 0x19, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00

; FUNCTION 0x0035ce6c, declared_size=220, range_size=220, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNode11_ResetDeltaEj
; demangled: RootSceneNode::_ResetDelta(unsigned int)
; decoder-mode: arm
0035ce6c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0035ce70  00 50 a0 e1                                      mov r5, r0
0035ce74  fc 40 b5 e5                                      ldr r4, [r5, #0xfc]!
0035ce78  b0 70 9f e5                                      ldr r7, [pc, #0xb0]
0035ce7c  b0 a0 9f e5                                      ldr sl, [pc, #0xb0]
0035ce80  b0 90 9f e5                                      ldr sb, [pc, #0xb0]
0035ce84  b0 b0 9f e5                                      ldr fp, [pc, #0xb0]
0035ce88  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
0035ce8c  14 d0 4d e2                                      sub sp, sp, #0x14
0035ce90  04 00 55 e1                                      cmp r5, r4
0035ce94  07 70 8f e0                                      add r7, pc, r7
0035ce98  01 60 a0 e1                                      mov r6, r1
0035ce9c  0a a0 8f e0                                      add sl, pc, sl
0035cea0  09 90 8f e0                                      add sb, pc, sb
0035cea4  0b b0 8f e0                                      add fp, pc, fp
0035cea8  94 80 9f e5                                      ldr r8, [pc, #0x94]
0035ceac  0c 30 8d e5                                      str r3, [sp, #0xc]
0035ceb0  0a 00 00 0a                                      beq #0x35cee0
0035ceb4  08 00 94 e5                                      ldr r0, [r4, #8]
0035ceb8  a8 30 00 eb                                      bl #0x369160
0035cebc  00 30 50 e2                                      subs r3, r0, #0
0035cec0  06 10 a0 e1                                      mov r1, r6
0035cec4  07 00 00 0a                                      beq #0x35cee8
0035cec8  00 30 93 e5                                      ldr r3, [r3]
0035cecc  0f e0 a0 e1                                      mov lr, pc
0035ced0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0035ced4  00 40 94 e5                                      ldr r4, [r4]
0035ced8  04 00 55 e1                                      cmp r5, r4
0035cedc  f4 ff ff 1a                                      bne #0x35ceb4
0035cee0  14 d0 8d e2                                      add sp, sp, #0x14
0035cee4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0035cee8  08 20 97 e7                                      ldr r2, [r7, r8]
0035ceec  00 20 92 e5                                      ldr r2, [r2]
0035cef0  02 00 52 e3                                      cmp r2, #2
0035cef4  00 30 83 05                                      streq r3, [r3]
0035cef8  f5 ff ff 0a                                      beq #0x35ced4
0035cefc  01 00 52 e3                                      cmp r2, #1
0035cf00  f3 ff ff 1a                                      bne #0x35ced4
0035cf04  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0035cf08  0a 10 a0 e1                                      mov r1, sl
0035cf0c  09 20 a0 e1                                      mov r2, sb
0035cf10  0c 00 97 e7                                      ldr r0, [r7, ip]
0035cf14  0b 30 a0 e1                                      mov r3, fp
0035cf18  de c0 a0 e3                                      mov ip, #0xde
0035cf1c  a8 00 80 e2                                      add r0, r0, #0xa8
0035cf20  00 c0 8d e5                                      str ip, [sp]
0035cf24  36 c4 fe eb                                      bl #0x30e004
0035cf28  00 40 94 e5                                      ldr r4, [r4]
0035cf2c  e9 ff ff ea                                      b #0x35ced8
; mapping-symbol data/literal pool
0035cf30  fc 7b 63 00 3c 15 56 00 88 04 58 00 04 3e 56 00  .byte 0xfc, 0x7b, 0x63, 0x00, 0x3c, 0x15, 0x56, 0x00, 0x88, 0x04, 0x58, 0x00, 0x04, 0x3e, 0x56, 0x00
0035cf40  c0 19 00 00 c0 39 00 00                          .byte 0xc0, 0x19, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00

; FUNCTION 0x0035cf48, declared_size=544, range_size=544, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNode19_HandleDisplacementEj
; demangled: RootSceneNode::_HandleDisplacement(unsigned int)
; decoder-mode: arm
0035cf48  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0035cf4c  f0 31 90 e5                                      ldr r3, [r0, #0x1f0]
0035cf50  4c d0 4d e2                                      sub sp, sp, #0x4c
0035cf54  00 40 a0 e1                                      mov r4, r0
0035cf58  03 00 a0 e1                                      mov r0, r3
0035cf5c  00 30 93 e5                                      ldr r3, [r3]
0035cf60  0f e0 a0 e1                                      mov lr, pc
0035cf64  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0035cf68  00 30 a0 e1                                      mov r3, r0
0035cf6c  00 20 93 e5                                      ldr r2, [r3]
0035cf70  3c 80 8d e2                                      add r8, sp, #0x3c
0035cf74  08 50 93 e5                                      ldr r5, [r3, #8]
0035cf78  00 70 a0 e3                                      mov r7, #0
0035cf7c  04 20 8d e5                                      str r2, [sp, #4]
0035cf80  08 10 a0 e1                                      mov r1, r8
0035cf84  04 00 a0 e1                                      mov r0, r4
0035cf88  04 60 93 e5                                      ldr r6, [r3, #4]
0035cf8c  3c 70 8d e5                                      str r7, [sp, #0x3c]
0035cf90  40 70 8d e5                                      str r7, [sp, #0x40]
0035cf94  44 70 8d e5                                      str r7, [sp, #0x44]
0035cf98  6f ff ff eb                                      bl #0x35cd5c
0035cf9c  c8 10 94 e5                                      ldr r1, [r4, #0xc8]
0035cfa0  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0035cfa4  70 c7 fe eb                                      bl #0x30ed6c
0035cfa8  3c 00 8d e5                                      str r0, [sp, #0x3c]
0035cfac  cc 10 94 e5                                      ldr r1, [r4, #0xcc]
0035cfb0  40 00 9d e5                                      ldr r0, [sp, #0x40]
0035cfb4  6c c7 fe eb                                      bl #0x30ed6c
0035cfb8  08 20 a0 e1                                      mov r2, r8
0035cfbc  b8 10 84 e2                                      add r1, r4, #0xb8
0035cfc0  40 00 8d e5                                      str r0, [sp, #0x40]
0035cfc4  30 00 8d e2                                      add r0, sp, #0x30
0035cfc8  44 70 8d e5                                      str r7, [sp, #0x44]
0035cfcc  2f fb ff eb                                      bl #0x35bc90
0035cfd0  30 20 9d e5                                      ldr r2, [sp, #0x30]
0035cfd4  00 30 94 e5                                      ldr r3, [r4]
0035cfd8  04 00 a0 e1                                      mov r0, r4
0035cfdc  3c 20 8d e5                                      str r2, [sp, #0x3c]
0035cfe0  34 20 9d e5                                      ldr r2, [sp, #0x34]
0035cfe4  40 20 8d e5                                      str r2, [sp, #0x40]
0035cfe8  38 20 9d e5                                      ldr r2, [sp, #0x38]
0035cfec  44 20 8d e5                                      str r2, [sp, #0x44]
0035cff0  a4 a0 93 e5                                      ldr sl, [r3, #0xa4]
0035cff4  0f e0 a0 e1                                      mov lr, pc
0035cff8  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0035cffc  40 10 9d e5                                      ldr r1, [sp, #0x40]
0035d000  00 80 a0 e1                                      mov r8, r0
0035d004  04 00 90 e5                                      ldr r0, [r0, #4]
0035d008  e5 c6 fe eb                                      bl #0x30eba4
0035d00c  44 10 9d e5                                      ldr r1, [sp, #0x44]
0035d010  00 b0 a0 e1                                      mov fp, r0
0035d014  08 00 98 e5                                      ldr r0, [r8, #8]
0035d018  e1 c6 fe eb                                      bl #0x30eba4
0035d01c  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0035d020  00 90 a0 e1                                      mov sb, r0
0035d024  00 00 98 e5                                      ldr r0, [r8]
0035d028  dd c6 fe eb                                      bl #0x30eba4
0035d02c  28 b0 8d e5                                      str fp, [sp, #0x28]
0035d030  24 00 8d e5                                      str r0, [sp, #0x24]
0035d034  2c 90 8d e5                                      str sb, [sp, #0x2c]
0035d038  04 00 a0 e1                                      mov r0, r4
0035d03c  24 10 8d e2                                      add r1, sp, #0x24
0035d040  3a ff 2f e1                                      blx sl
0035d044  f8 01 94 e5                                      ldr r0, [r4, #0x1f8]
0035d048  00 00 50 e3                                      cmp r0, #0
0035d04c  25 00 00 0a                                      beq #0x35d0e8
0035d050  04 10 9d e5                                      ldr r1, [sp, #4]
0035d054  00 30 90 e5                                      ldr r3, [r0]
0035d058  02 61 86 e2                                      add r6, r6, #0x80000000
0035d05c  02 21 81 e2                                      add r2, r1, #0x80000000
0035d060  02 51 85 e2                                      add r5, r5, #0x80000000
0035d064  a4 30 93 e5                                      ldr r3, [r3, #0xa4]
0035d068  18 10 8d e2                                      add r1, sp, #0x18
0035d06c  18 20 8d e5                                      str r2, [sp, #0x18]
0035d070  1c 60 8d e5                                      str r6, [sp, #0x1c]
0035d074  20 50 8d e5                                      str r5, [sp, #0x20]
0035d078  33 ff 2f e1                                      blx r3
0035d07c  f8 31 94 e5                                      ldr r3, [r4, #0x1f8]
0035d080  00 10 a0 e3                                      mov r1, #0
0035d084  03 00 a0 e1                                      mov r0, r3
0035d088  00 30 93 e5                                      ldr r3, [r3]
0035d08c  0f e0 a0 e1                                      mov lr, pc
0035d090  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
0035d094  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0035d098  00 10 a0 e3                                      mov r1, #0
0035d09c  ba c3 fe eb                                      bl #0x30df8c
0035d0a0  00 00 50 e3                                      cmp r0, #0
0035d0a4  0c 00 00 0a                                      beq #0x35d0dc
0035d0a8  40 00 9d e5                                      ldr r0, [sp, #0x40]
0035d0ac  00 10 a0 e3                                      mov r1, #0
0035d0b0  b5 c3 fe eb                                      bl #0x30df8c
0035d0b4  00 00 50 e3                                      cmp r0, #0
0035d0b8  07 00 00 0a                                      beq #0x35d0dc
0035d0bc  44 00 9d e5                                      ldr r0, [sp, #0x44]
0035d0c0  00 10 a0 e3                                      mov r1, #0
0035d0c4  b0 c3 fe eb                                      bl #0x30df8c
0035d0c8  00 00 50 e3                                      cmp r0, #0
0035d0cc  00 00 a0 e3                                      mov r0, #0
0035d0d0  01 00 a0 03                                      moveq r0, #1
0035d0d4  70 00 ef e6                                      uxtb r0, r0
0035d0d8  00 00 00 ea                                      b #0x35d0e0
0035d0dc  01 00 a0 e3                                      mov r0, #1
0035d0e0  4c d0 8d e2                                      add sp, sp, #0x4c
0035d0e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0035d0e8  f0 01 94 e5                                      ldr r0, [r4, #0x1f0]
0035d0ec  07 10 a0 e1                                      mov r1, r7
0035d0f0  07 20 a0 e1                                      mov r2, r7
0035d0f4  05 30 a0 e1                                      mov r3, r5
0035d0f8  15 e8 08 eb                                      bl #0x597154
0035d0fc  f4 41 94 e5                                      ldr r4, [r4, #0x1f4]
0035d100  00 00 54 e3                                      cmp r4, #0
0035d104  e2 ff ff 0a                                      beq #0x35d094
0035d108  00 30 94 e5                                      ldr r3, [r4]
0035d10c  04 00 a0 e1                                      mov r0, r4
0035d110  a4 80 93 e5                                      ldr r8, [r3, #0xa4]
0035d114  0f e0 a0 e1                                      mov lr, pc
0035d118  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0035d11c  06 10 a0 e1                                      mov r1, r6
0035d120  00 70 a0 e1                                      mov r7, r0
0035d124  04 00 90 e5                                      ldr r0, [r0, #4]
0035d128  9f c4 fe eb                                      bl #0x30e3ac
0035d12c  05 10 a0 e1                                      mov r1, r5
0035d130  00 60 a0 e1                                      mov r6, r0
0035d134  08 00 97 e5                                      ldr r0, [r7, #8]
0035d138  9b c4 fe eb                                      bl #0x30e3ac
0035d13c  04 10 9d e5                                      ldr r1, [sp, #4]
0035d140  00 50 a0 e1                                      mov r5, r0
0035d144  00 00 97 e5                                      ldr r0, [r7]
0035d148  97 c4 fe eb                                      bl #0x30e3ac
0035d14c  10 60 8d e5                                      str r6, [sp, #0x10]
0035d150  0c 00 8d e5                                      str r0, [sp, #0xc]
0035d154  14 50 8d e5                                      str r5, [sp, #0x14]
0035d158  04 00 a0 e1                                      mov r0, r4
0035d15c  0c 10 8d e2                                      add r1, sp, #0xc
0035d160  38 ff 2f e1                                      blx r8
0035d164  ca ff ff ea                                      b #0x35d094

; FUNCTION 0x0035d168, declared_size=868, range_size=868, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNode9onAnimateEj
; demangled: RootSceneNode::onAnimate(unsigned int)
; decoder-mode: arm
0035d168  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0035d16c  38 73 9f e5                                      ldr r7, [pc, #0x338]
0035d170  38 a3 9f e5                                      ldr sl, [pc, #0x338]
0035d174  09 32 d0 e5                                      ldrb r3, [r0, #0x209]
0035d178  07 70 8f e0                                      add r7, pc, r7
0035d17c  0a 20 97 e7                                      ldr r2, [r7, sl]
0035d180  3c d0 4d e2                                      sub sp, sp, #0x3c
0035d184  00 00 53 e3                                      cmp r3, #0
0035d188  00 20 92 e5                                      ldr r2, [r2]
0035d18c  00 50 a0 e1                                      mov r5, r0
0035d190  01 60 a0 e1                                      mov r6, r1
0035d194  34 20 8d e5                                      str r2, [sp, #0x34]
0035d198  1c 21 90 05                                      ldreq r2, [r0, #0x11c]
0035d19c  03 00 00 0a                                      beq #0x35d1b0
0035d1a0  1c 21 90 e5                                      ldr r2, [r0, #0x11c]
0035d1a4  01 40 12 e2                                      ands r4, r2, #1
0035d1a8  00 30 a0 13                                      movne r3, #0
0035d1ac  57 00 00 0a                                      beq #0x35d310
0035d1b0  01 0b 12 e3                                      tst r2, #0x400
0035d1b4  09 00 00 0a                                      beq #0x35d1e0
0035d1b8  01 00 12 e3                                      tst r2, #1
0035d1bc  07 00 00 1a                                      bne #0x35d1e0
0035d1c0  0a 30 97 e7                                      ldr r3, [r7, sl]
0035d1c4  fc 61 85 e5                                      str r6, [r5, #0x1fc]
0035d1c8  34 20 9d e5                                      ldr r2, [sp, #0x34]
0035d1cc  00 30 93 e5                                      ldr r3, [r3]
0035d1d0  03 00 52 e1                                      cmp r2, r3
0035d1d4  b3 00 00 1a                                      bne #0x35d4a8
0035d1d8  3c d0 8d e2                                      add sp, sp, #0x3c
0035d1dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0035d1e0  02 0c 12 e3                                      tst r2, #0x200
0035d1e4  f5 ff ff 0a                                      beq #0x35d1c0
0035d1e8  04 22 95 e5                                      ldr r2, [r5, #0x204]
0035d1ec  00 00 52 e3                                      cmp r2, #0
0035d1f0  4e 00 00 0a                                      beq #0x35d330
0035d1f4  00 00 53 e3                                      cmp r3, #0
0035d1f8  4c 00 00 1a                                      bne #0x35d330
0035d1fc  b0 32 9f e5                                      ldr r3, [pc, #0x2b0]
0035d200  03 30 97 e7                                      ldr r3, [r7, r3]
0035d204  30 30 d3 e5                                      ldrb r3, [r3, #0x30]
0035d208  00 00 53 e3                                      cmp r3, #0
0035d20c  47 00 00 1a                                      bne #0x35d330
0035d210  30 41 92 e5                                      ldr r4, [r2, #0x130]
0035d214  40 31 92 e5                                      ldr r3, [r2, #0x140]
0035d218  34 e1 92 e5                                      ldr lr, [r2, #0x134]
0035d21c  38 01 92 e5                                      ldr r0, [r2, #0x138]
0035d220  3c 11 92 e5                                      ldr r1, [r2, #0x13c]
0035d224  2c c1 92 e5                                      ldr ip, [r2, #0x12c]
0035d228  04 40 8d e5                                      str r4, [sp, #4]
0035d22c  08 e0 8d e5                                      str lr, [sp, #8]
0035d230  00 c0 8d e5                                      str ip, [sp]
0035d234  0c 00 8d e5                                      str r0, [sp, #0xc]
0035d238  10 10 8d e5                                      str r1, [sp, #0x10]
0035d23c  14 30 8d e5                                      str r3, [sp, #0x14]
0035d240  f9 32 d2 e5                                      ldrb r3, [r2, #0x2f9]
0035d244  00 00 53 e3                                      cmp r3, #0
0035d248  0d 40 a0 01                                      moveq r4, sp
0035d24c  07 00 00 0a                                      beq #0x35d270
0035d250  00 30 95 e5                                      ldr r3, [r5]
0035d254  05 00 a0 e1                                      mov r0, r5
0035d258  0f e0 a0 e1                                      mov lr, pc
0035d25c  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0035d260  00 10 a0 e1                                      mov r1, r0
0035d264  0d 00 a0 e1                                      mov r0, sp
0035d268  0d 40 a0 e1                                      mov r4, sp
0035d26c  b7 fb ff eb                                      bl #0x35c150
0035d270  40 32 9f e5                                      ldr r3, [pc, #0x240]
0035d274  03 00 97 e7                                      ldr r0, [r7, r3]
0035d278  ae 93 08 eb                                      bl #0x582138
0035d27c  0d 10 a0 e1                                      mov r1, sp
0035d280  10 fb ff eb                                      bl #0x35bec8
0035d284  00 00 50 e3                                      cmp r0, #0
0035d288  28 00 00 1a                                      bne #0x35d330
0035d28c  1c 31 95 e5                                      ldr r3, [r5, #0x11c]
0035d290  01 0b 13 e3                                      tst r3, #0x400
0035d294  25 00 00 0a                                      beq #0x35d330
0035d298  0a 32 d5 e5                                      ldrb r3, [r5, #0x20a]
0035d29c  00 00 53 e3                                      cmp r3, #0
0035d2a0  01 b0 a0 13                                      movne fp, #1
0035d2a4  22 00 00 1a                                      bne #0x35d334
0035d2a8  00 30 95 e5                                      ldr r3, [r5]
0035d2ac  05 00 a0 e1                                      mov r0, r5
0035d2b0  06 10 a0 e1                                      mov r1, r6
0035d2b4  0f e0 a0 e1                                      mov lr, pc
0035d2b8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0035d2bc  ec 31 d5 e5                                      ldrb r3, [r5, #0x1ec]
0035d2c0  00 00 53 e3                                      cmp r3, #0
0035d2c4  62 00 00 1a                                      bne #0x35d454
0035d2c8  08 32 d5 e5                                      ldrb r3, [r5, #0x208]
0035d2cc  00 00 53 e3                                      cmp r3, #0
0035d2d0  06 00 00 0a                                      beq #0x35d2f0
0035d2d4  00 30 95 e5                                      ldr r3, [r5]
0035d2d8  05 00 a0 e1                                      mov r0, r5
0035d2dc  01 10 a0 e3                                      mov r1, #1
0035d2e0  0f e0 a0 e1                                      mov lr, pc
0035d2e4  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
0035d2e8  00 30 a0 e3                                      mov r3, #0
0035d2ec  08 32 c5 e5                                      strb r3, [r5, #0x208]
0035d2f0  c4 31 9f e5                                      ldr r3, [pc, #0x1c4]
0035d2f4  00 b0 a0 e3                                      mov fp, #0
0035d2f8  03 30 97 e7                                      ldr r3, [r7, r3]
0035d2fc  00 20 93 e5                                      ldr r2, [r3]
0035d300  01 20 82 e2                                      add r2, r2, #1
0035d304  00 20 83 e5                                      str r2, [r3]
0035d308  0a b2 c5 e5                                      strb fp, [r5, #0x20a]
0035d30c  ab ff ff ea                                      b #0x35d1c0
0035d310  01 10 a0 e3                                      mov r1, #1
0035d314  ea e6 08 eb                                      bl #0x596ec4
0035d318  10 01 95 e5                                      ldr r0, [r5, #0x110]
0035d31c  61 af 08 eb                                      bl #0x5890a8
0035d320  1c 21 95 e5                                      ldr r2, [r5, #0x11c]
0035d324  09 42 c5 e5                                      strb r4, [r5, #0x209]
0035d328  01 30 a0 e3                                      mov r3, #1
0035d32c  9f ff ff ea                                      b #0x35d1b0
0035d330  00 b0 a0 e3                                      mov fp, #0
0035d334  84 31 9f e5                                      ldr r3, [pc, #0x184]
0035d338  84 21 9f e5                                      ldr r2, [pc, #0x184]
0035d33c  1c 40 8d e2                                      add r4, sp, #0x1c
0035d340  03 30 97 e7                                      ldr r3, [r7, r3]
0035d344  02 90 97 e7                                      ldr sb, [r7, r2]
0035d348  05 80 a0 e1                                      mov r8, r5
0035d34c  00 20 93 e5                                      ldr r2, [r3]
0035d350  09 00 a0 e1                                      mov r0, sb
0035d354  01 20 82 e2                                      add r2, r2, #1
0035d358  00 20 83 e5                                      str r2, [r3]
0035d35c  49 69 ff eb                                      bl #0x337888
0035d360  60 11 9f e5                                      ldr r1, [pc, #0x160]
0035d364  18 20 8d e2                                      add r2, sp, #0x18
0035d368  04 00 a0 e1                                      mov r0, r4
0035d36c  01 10 8f e0                                      add r1, pc, r1
0035d370  5d db fe eb                                      bl #0x3140ec
0035d374  04 10 a0 e1                                      mov r1, r4
0035d378  09 00 a0 e1                                      mov r0, sb
0035d37c  c1 69 ff eb                                      bl #0x337a88
0035d380  04 00 a0 e1                                      mov r0, r4
0035d384  88 d9 fe eb                                      bl #0x3139ac
0035d388  fc 40 b8 e5                                      ldr r4, [r8, #0xfc]!
0035d38c  07 00 00 ea                                      b #0x35d3b0
0035d390  08 30 94 e5                                      ldr r3, [r4, #8]
0035d394  05 10 a0 e1                                      mov r1, r5
0035d398  06 20 a0 e1                                      mov r2, r6
0035d39c  03 00 a0 e1                                      mov r0, r3
0035d3a0  00 30 93 e5                                      ldr r3, [r3]
0035d3a4  0f e0 a0 e1                                      mov lr, pc
0035d3a8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0035d3ac  00 40 94 e5                                      ldr r4, [r4]
0035d3b0  04 00 58 e1                                      cmp r8, r4
0035d3b4  f5 ff ff 1a                                      bne #0x35d390
0035d3b8  ec 31 d5 e5                                      ldrb r3, [r5, #0x1ec]
0035d3bc  00 00 53 e3                                      cmp r3, #0
0035d3c0  19 00 00 1a                                      bne #0x35d42c
0035d3c4  04 32 95 e5                                      ldr r3, [r5, #0x204]
0035d3c8  00 00 53 e3                                      cmp r3, #0
0035d3cc  1a 00 00 0a                                      beq #0x35d43c
0035d3d0  10 31 93 e5                                      ldr r3, [r3, #0x110]
0035d3d4  01 00 73 e3                                      cmn r3, #1
0035d3d8  17 00 00 0a                                      beq #0x35d43c
0035d3dc  05 80 a0 e1                                      mov r8, r5
0035d3e0  f4 40 b8 e5                                      ldr r4, [r8, #0xf4]!
0035d3e4  08 00 00 ea                                      b #0x35d40c
0035d3e8  00 00 54 e3                                      cmp r4, #0
0035d3ec  04 30 a0 01                                      moveq r3, r4
0035d3f0  04 30 44 12                                      subne r3, r4, #4
0035d3f4  03 00 a0 e1                                      mov r0, r3
0035d3f8  06 10 a0 e1                                      mov r1, r6
0035d3fc  00 30 93 e5                                      ldr r3, [r3]
0035d400  0f e0 a0 e1                                      mov lr, pc
0035d404  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0035d408  00 40 94 e5                                      ldr r4, [r4]
0035d40c  08 00 54 e1                                      cmp r4, r8
0035d410  f4 ff ff 1a                                      bne #0x35d3e8
0035d414  1c 31 95 e5                                      ldr r3, [r5, #0x11c]
0035d418  01 b0 2b e2                                      eor fp, fp, #1
0035d41c  0a b2 c5 e5                                      strb fp, [r5, #0x20a]
0035d420  20 30 c3 e3                                      bic r3, r3, #0x20
0035d424  1c 31 85 e5                                      str r3, [r5, #0x11c]
0035d428  64 ff ff ea                                      b #0x35d1c0
0035d42c  05 00 a0 e1                                      mov r0, r5
0035d430  06 10 a0 e1                                      mov r1, r6
0035d434  c3 fe ff eb                                      bl #0x35cf48
0035d438  e1 ff ff ea                                      b #0x35d3c4
0035d43c  00 30 95 e5                                      ldr r3, [r5]
0035d440  05 00 a0 e1                                      mov r0, r5
0035d444  00 10 a0 e3                                      mov r1, #0
0035d448  0f e0 a0 e1                                      mov lr, pc
0035d44c  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
0035d450  e1 ff ff ea                                      b #0x35d3dc
0035d454  05 80 a0 e1                                      mov r8, r5
0035d458  fc 40 b8 e5                                      ldr r4, [r8, #0xfc]!
0035d45c  06 00 00 ea                                      b #0x35d47c
0035d460  08 00 94 e5                                      ldr r0, [r4, #8]
0035d464  3d 2f 00 eb                                      bl #0x369160
0035d468  06 10 a0 e1                                      mov r1, r6
0035d46c  00 30 90 e5                                      ldr r3, [r0]
0035d470  0f e0 a0 e1                                      mov lr, pc
0035d474  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0035d478  00 40 94 e5                                      ldr r4, [r4]
0035d47c  04 00 58 e1                                      cmp r8, r4
0035d480  f6 ff ff 1a                                      bne #0x35d460
0035d484  05 00 a0 e1                                      mov r0, r5
0035d488  06 10 a0 e1                                      mov r1, r6
0035d48c  ad fe ff eb                                      bl #0x35cf48
0035d490  1c 31 95 e5                                      ldr r3, [r5, #0x11c]
0035d494  00 00 50 e3                                      cmp r0, #0
0035d498  20 30 c3 e3                                      bic r3, r3, #0x20
0035d49c  1c 31 85 e5                                      str r3, [r5, #0x11c]
0035d4a0  8b ff ff 1a                                      bne #0x35d2d4
0035d4a4  87 ff ff ea                                      b #0x35d2c8
0035d4a8  98 c3 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0035d4ac  18 79 63 00 ac 40 00 00 20 1a 00 00 9c 35 00 00  .byte 0x18, 0x79, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00, 0x20, 0x1a, 0x00, 0x00, 0x9c, 0x35, 0x00, 0x00
0035d4bc  94 47 00 00 40 0f 00 00 84 08 00 00 8c 39 56 00  .byte 0x94, 0x47, 0x00, 0x00, 0x40, 0x0f, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x8c, 0x39, 0x56, 0x00

; FUNCTION 0x0035d4cc, declared_size=344, range_size=344, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNode19_EnableDisplacementEb
; demangled: RootSceneNode::_EnableDisplacement(bool)
; decoder-mode: arm
0035d4cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0035d4d0  00 50 51 e2                                      subs r5, r1, #0
0035d4d4  00 40 a0 e1                                      mov r4, r0
0035d4d8  02 00 00 0a                                      beq #0x35d4e8
0035d4dc  f0 61 90 e5                                      ldr r6, [r0, #0x1f0]
0035d4e0  00 00 56 e3                                      cmp r6, #0
0035d4e4  01 00 00 0a                                      beq #0x35d4f0
0035d4e8  ec 51 c4 e5                                      strb r5, [r4, #0x1ec]
0035d4ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0035d4f0  06 10 a0 e1                                      mov r1, r6
0035d4f4  f8 fd ff eb                                      bl #0x35ccdc
0035d4f8  01 10 a0 e3                                      mov r1, #1
0035d4fc  f0 01 84 e5                                      str r0, [r4, #0x1f0]
0035d500  04 00 a0 e1                                      mov r0, r4
0035d504  f4 fd ff eb                                      bl #0x35ccdc
0035d508  f0 31 94 e5                                      ldr r3, [r4, #0x1f0]
0035d50c  f4 01 84 e5                                      str r0, [r4, #0x1f4]
0035d510  00 00 53 e3                                      cmp r3, #0
0035d514  40 00 00 0a                                      beq #0x35d61c
0035d518  03 00 50 e1                                      cmp r0, r3
0035d51c  f4 61 84 05                                      streq r6, [r4, #0x1f4]
0035d520  08 00 00 0a                                      beq #0x35d548
0035d524  00 00 50 e3                                      cmp r0, #0
0035d528  06 00 00 0a                                      beq #0x35d548
0035d52c  00 30 90 e5                                      ldr r3, [r0]
0035d530  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035d534  03 00 80 e0                                      add r0, r0, r3
0035d538  04 30 90 e5                                      ldr r3, [r0, #4]
0035d53c  01 30 83 e2                                      add r3, r3, #1
0035d540  04 30 80 e5                                      str r3, [r0, #4]
0035d544  f0 31 94 e5                                      ldr r3, [r4, #0x1f0]
0035d548  00 20 93 e5                                      ldr r2, [r3]
0035d54c  00 10 a0 e3                                      mov r1, #0
0035d550  15 0e a0 e3                                      mov r0, #0x150
0035d554  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0035d558  04 70 a0 e1                                      mov r7, r4
0035d55c  02 30 83 e0                                      add r3, r3, r2
0035d560  04 20 93 e5                                      ldr r2, [r3, #4]
0035d564  01 20 82 e2                                      add r2, r2, #1
0035d568  04 20 83 e5                                      str r2, [r3, #4]
0035d56c  0e 5b 07 eb                                      bl #0x5341ac
0035d570  00 10 e0 e3                                      mvn r1, #0
0035d574  00 60 a0 e1                                      mov r6, r0
0035d578  16 99 08 eb                                      bl #0x5839d8
0035d57c  f8 61 84 e5                                      str r6, [r4, #0x1f8]
0035d580  06 30 a0 e1                                      mov r3, r6
0035d584  f4 60 b7 e5                                      ldr r6, [r7, #0xf4]!
0035d588  07 00 56 e1                                      cmp r6, r7
0035d58c  01 00 00 1a                                      bne #0x35d598
0035d590  0b 00 00 ea                                      b #0x35d5c4
0035d594  f8 31 94 e5                                      ldr r3, [r4, #0x1f8]
0035d598  00 00 56 e3                                      cmp r6, #0
0035d59c  06 10 a0 01                                      moveq r1, r6
0035d5a0  04 10 46 12                                      subne r1, r6, #4
0035d5a4  00 60 96 e5                                      ldr r6, [r6]
0035d5a8  03 00 a0 e1                                      mov r0, r3
0035d5ac  00 30 93 e5                                      ldr r3, [r3]
0035d5b0  0f e0 a0 e1                                      mov lr, pc
0035d5b4  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0035d5b8  06 00 57 e1                                      cmp r7, r6
0035d5bc  f4 ff ff 1a                                      bne #0x35d594
0035d5c0  f8 31 94 e5                                      ldr r3, [r4, #0x1f8]
0035d5c4  03 10 a0 e1                                      mov r1, r3
0035d5c8  04 00 a0 e1                                      mov r0, r4
0035d5cc  00 30 94 e5                                      ldr r3, [r4]
0035d5d0  04 70 a0 e1                                      mov r7, r4
0035d5d4  0f e0 a0 e1                                      mov lr, pc
0035d5d8  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0035d5dc  fc 60 b7 e5                                      ldr r6, [r7, #0xfc]!
0035d5e0  08 00 00 ea                                      b #0x35d608
0035d5e4  08 00 96 e5                                      ldr r0, [r6, #8]
0035d5e8  dc 2e 00 eb                                      bl #0x369160
0035d5ec  00 30 50 e2                                      subs r3, r0, #0
0035d5f0  07 00 00 0a                                      beq #0x35d614
0035d5f4  00 30 93 e5                                      ldr r3, [r3]
0035d5f8  f0 11 94 e5                                      ldr r1, [r4, #0x1f0]
0035d5fc  0f e0 a0 e1                                      mov lr, pc
0035d600  08 f0 93 e5                                      ldr pc, [r3, #8]
0035d604  00 60 96 e5                                      ldr r6, [r6]
0035d608  06 00 57 e1                                      cmp r7, r6
0035d60c  f4 ff ff 1a                                      bne #0x35d5e4
0035d610  b4 ff ff ea                                      b #0x35d4e8
0035d614  03 50 a0 e1                                      mov r5, r3
0035d618  b2 ff ff ea                                      b #0x35d4e8
0035d61c  f4 31 84 e5                                      str r3, [r4, #0x1f4]
0035d620  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0035d624, declared_size=88, range_size=88, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNode7NewAnimEb
; demangled: RootSceneNode::NewAnim(bool)
; decoder-mode: arm
0035d624  10 40 2d e9                                      push {r4, lr}
0035d628  00 40 a0 e1                                      mov r4, r0
0035d62c  a6 ff ff eb                                      bl #0x35d4cc
0035d630  ec 31 d4 e5                                      ldrb r3, [r4, #0x1ec]
0035d634  00 00 53 e3                                      cmp r3, #0
0035d638  05 00 00 0a                                      beq #0x35d654
0035d63c  f0 31 94 e5                                      ldr r3, [r4, #0x1f0]
0035d640  00 00 53 e3                                      cmp r3, #0
0035d644  02 00 00 0a                                      beq #0x35d654
0035d648  fc 11 94 e5                                      ldr r1, [r4, #0x1fc]
0035d64c  00 00 51 e3                                      cmp r1, #0
0035d650  00 00 00 1a                                      bne #0x35d658
0035d654  10 80 bd e8                                      pop {r4, pc}
0035d658  04 00 a0 e1                                      mov r0, r4
0035d65c  01 10 81 e2                                      add r1, r1, #1
0035d660  01 fe ff eb                                      bl #0x35ce6c
0035d664  04 00 a0 e1                                      mov r0, r4
0035d668  00 30 94 e5                                      ldr r3, [r4]
0035d66c  fc 11 94 e5                                      ldr r1, [r4, #0x1fc]
0035d670  0f e0 a0 e1                                      mov lr, pc
0035d674  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0035d678  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0035d67c, declared_size=204, range_size=204, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNodeD1Ev
; demangled: RootSceneNode::~RootSceneNode()
; decoder-mode: arm
0035d67c  70 40 2d e9                                      push {r4, r5, r6, lr}
0035d680  b4 50 9f e5                                      ldr r5, [pc, #0xb4]
0035d684  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
0035d688  f0 21 90 e5                                      ldr r2, [r0, #0x1f0]
0035d68c  05 50 8f e0                                      add r5, pc, r5
0035d690  03 30 95 e7                                      ldr r3, [r5, r3]
0035d694  00 00 52 e3                                      cmp r2, #0
0035d698  00 40 a0 e1                                      mov r4, r0
0035d69c  49 1f 83 e2                                      add r1, r3, #0x124
0035d6a0  1c 30 83 e2                                      add r3, r3, #0x1c
0035d6a4  00 30 80 e5                                      str r3, [r0]
0035d6a8  0c 12 80 e5                                      str r1, [r0, #0x20c]
0035d6ac  05 00 00 0a                                      beq #0x35d6c8
0035d6b0  00 30 92 e5                                      ldr r3, [r2]
0035d6b4  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0035d6b8  00 00 82 e0                                      add r0, r2, r0
0035d6bc  b0 ff fe eb                                      bl #0x31d584
0035d6c0  00 30 a0 e3                                      mov r3, #0
0035d6c4  f0 31 84 e5                                      str r3, [r4, #0x1f0]
0035d6c8  f4 31 94 e5                                      ldr r3, [r4, #0x1f4]
0035d6cc  00 00 53 e3                                      cmp r3, #0
0035d6d0  05 00 00 0a                                      beq #0x35d6ec
0035d6d4  00 20 93 e5                                      ldr r2, [r3]
0035d6d8  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0035d6dc  00 00 83 e0                                      add r0, r3, r0
0035d6e0  a7 ff fe eb                                      bl #0x31d584
0035d6e4  00 30 a0 e3                                      mov r3, #0
0035d6e8  f4 31 84 e5                                      str r3, [r4, #0x1f4]
0035d6ec  f8 31 94 e5                                      ldr r3, [r4, #0x1f8]
0035d6f0  00 00 53 e3                                      cmp r3, #0
0035d6f4  05 00 00 0a                                      beq #0x35d710
0035d6f8  00 20 93 e5                                      ldr r2, [r3]
0035d6fc  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0035d700  00 00 83 e0                                      add r0, r3, r0
0035d704  9e ff fe eb                                      bl #0x31d584
0035d708  00 30 a0 e3                                      mov r3, #0
0035d70c  f8 31 84 e5                                      str r3, [r4, #0x1f8]
0035d710  75 0f 84 e2                                      add r0, r4, #0x1d4
0035d714  a4 d8 fe eb                                      bl #0x3139ac
0035d718  6f 0f 84 e2                                      add r0, r4, #0x1bc
0035d71c  a2 d8 fe eb                                      bl #0x3139ac
0035d720  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
0035d724  04 00 a0 e1                                      mov r0, r4
0035d728  01 10 95 e7                                      ldr r1, [r5, r1]
0035d72c  04 10 81 e2                                      add r1, r1, #4
0035d730  ca fa 0b eb                                      bl #0x65c260
0035d734  04 00 a0 e1                                      mov r0, r4
0035d738  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035d73c  04 74 63 00 08 39 00 00 f4 1a 00 00              .byte 0x04, 0x74, 0x63, 0x00, 0x08, 0x39, 0x00, 0x00, 0xf4, 0x1a, 0x00, 0x00

; FUNCTION 0x0035d748, declared_size=28, range_size=28, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNodeD0Ev
; demangled: RootSceneNode::~RootSceneNode()
; decoder-mode: arm
0035d748  10 40 2d e9                                      push {r4, lr}
0035d74c  00 40 a0 e1                                      mov r4, r0
0035d750  c9 ff ff eb                                      bl #0x35d67c
0035d754  04 00 a0 e1                                      mov r0, r4
0035d758  38 cb fe eb                                      bl #0x310440
0035d75c  04 00 a0 e1                                      mov r0, r4
0035d760  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0035d764, declared_size=192, range_size=192, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNodeD2Ev
; demangled: RootSceneNode::~RootSceneNode()
; decoder-mode: arm
0035d764  70 40 2d e9                                      push {r4, r5, r6, lr}
0035d768  00 30 91 e5                                      ldr r3, [r1]
0035d76c  01 50 a0 e1                                      mov r5, r1
0035d770  00 40 a0 e1                                      mov r4, r0
0035d774  00 30 80 e5                                      str r3, [r0]
0035d778  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0035d77c  34 20 91 e5                                      ldr r2, [r1, #0x34]
0035d780  03 20 80 e7                                      str r2, [r0, r3]
0035d784  00 30 90 e5                                      ldr r3, [r0]
0035d788  38 20 91 e5                                      ldr r2, [r1, #0x38]
0035d78c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035d790  03 20 80 e7                                      str r2, [r0, r3]
0035d794  f0 31 90 e5                                      ldr r3, [r0, #0x1f0]
0035d798  00 00 53 e3                                      cmp r3, #0
0035d79c  05 00 00 0a                                      beq #0x35d7b8
0035d7a0  00 20 93 e5                                      ldr r2, [r3]
0035d7a4  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0035d7a8  00 00 83 e0                                      add r0, r3, r0
0035d7ac  74 ff fe eb                                      bl #0x31d584
0035d7b0  00 30 a0 e3                                      mov r3, #0
0035d7b4  f0 31 84 e5                                      str r3, [r4, #0x1f0]
0035d7b8  f4 31 94 e5                                      ldr r3, [r4, #0x1f4]
0035d7bc  00 00 53 e3                                      cmp r3, #0
0035d7c0  05 00 00 0a                                      beq #0x35d7dc
0035d7c4  00 20 93 e5                                      ldr r2, [r3]
0035d7c8  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0035d7cc  00 00 83 e0                                      add r0, r3, r0
0035d7d0  6b ff fe eb                                      bl #0x31d584
0035d7d4  00 30 a0 e3                                      mov r3, #0
0035d7d8  f4 31 84 e5                                      str r3, [r4, #0x1f4]
0035d7dc  f8 31 94 e5                                      ldr r3, [r4, #0x1f8]
0035d7e0  00 00 53 e3                                      cmp r3, #0
0035d7e4  05 00 00 0a                                      beq #0x35d800
0035d7e8  00 20 93 e5                                      ldr r2, [r3]
0035d7ec  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0035d7f0  00 00 83 e0                                      add r0, r3, r0
0035d7f4  62 ff fe eb                                      bl #0x31d584
0035d7f8  00 30 a0 e3                                      mov r3, #0
0035d7fc  f8 31 84 e5                                      str r3, [r4, #0x1f8]
0035d800  75 0f 84 e2                                      add r0, r4, #0x1d4
0035d804  68 d8 fe eb                                      bl #0x3139ac
0035d808  6f 0f 84 e2                                      add r0, r4, #0x1bc
0035d80c  66 d8 fe eb                                      bl #0x3139ac
0035d810  04 00 a0 e1                                      mov r0, r4
0035d814  04 10 85 e2                                      add r1, r5, #4
0035d818  90 fa 0b eb                                      bl #0x65c260
0035d81c  04 00 a0 e1                                      mov r0, r4
0035d820  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0035d824, declared_size=236, range_size=236, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNodeC1ERKN6glitch7collada16CColladaDatabaseE
; demangled: RootSceneNode::RootSceneNode(glitch::collada::CColladaDatabase const&)
; decoder-mode: arm
0035d824  70 40 2d e9                                      push {r4, r5, r6, lr}
0035d828  d0 50 9f e5                                      ldr r5, [pc, #0xd0]
0035d82c  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
0035d830  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
0035d834  05 50 8f e0                                      add r5, pc, r5
0035d838  03 30 95 e7                                      ldr r3, [r5, r3]
0035d83c  02 20 95 e7                                      ldr r2, [r5, r2]
0035d840  01 60 a0 e3                                      mov r6, #1
0035d844  3c c0 93 e5                                      ldr ip, [r3, #0x3c]
0035d848  08 20 82 e2                                      add r2, r2, #8
0035d84c  0c 22 80 e5                                      str r2, [r0, #0x20c]
0035d850  10 62 80 e5                                      str r6, [r0, #0x210]
0035d854  00 c0 80 e5                                      str ip, [r0]
0035d858  40 e0 93 e5                                      ldr lr, [r3, #0x40]
0035d85c  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
0035d860  01 20 a0 e1                                      mov r2, r1
0035d864  04 10 83 e2                                      add r1, r3, #4
0035d868  0c e0 80 e7                                      str lr, [r0, ip]
0035d86c  00 40 a0 e1                                      mov r4, r0
0035d870  f3 f7 0b eb                                      bl #0x65b844
0035d874  90 30 9f e5                                      ldr r3, [pc, #0x90]
0035d878  6f 2f 84 e2                                      add r2, r4, #0x1bc
0035d87c  02 00 a0 e1                                      mov r0, r2
0035d880  03 30 95 e7                                      ldr r3, [r5, r3]
0035d884  cc 21 84 e5                                      str r2, [r4, #0x1cc]
0035d888  d0 21 84 e5                                      str r2, [r4, #0x1d0]
0035d88c  49 2f 83 e2                                      add r2, r3, #0x124
0035d890  1c 30 83 e2                                      add r3, r3, #0x1c
0035d894  00 30 84 e5                                      str r3, [r4]
0035d898  0c 22 84 e5                                      str r2, [r4, #0x20c]
0035d89c  10 10 a0 e3                                      mov r1, #0x10
0035d8a0  75 cf fe eb                                      bl #0x31167c
0035d8a4  cc 21 94 e5                                      ldr r2, [r4, #0x1cc]
0035d8a8  00 50 a0 e3                                      mov r5, #0
0035d8ac  75 3f 84 e2                                      add r3, r4, #0x1d4
0035d8b0  00 50 c2 e5                                      strb r5, [r2]
0035d8b4  03 00 a0 e1                                      mov r0, r3
0035d8b8  e4 31 84 e5                                      str r3, [r4, #0x1e4]
0035d8bc  e8 31 84 e5                                      str r3, [r4, #0x1e8]
0035d8c0  10 10 a0 e3                                      mov r1, #0x10
0035d8c4  6c cf fe eb                                      bl #0x31167c
0035d8c8  e4 31 94 e5                                      ldr r3, [r4, #0x1e4]
0035d8cc  04 00 a0 e1                                      mov r0, r4
0035d8d0  00 50 c3 e5                                      strb r5, [r3]
0035d8d4  08 62 c4 e5                                      strb r6, [r4, #0x208]
0035d8d8  0a 52 c4 e5                                      strb r5, [r4, #0x20a]
0035d8dc  ec 51 c4 e5                                      strb r5, [r4, #0x1ec]
0035d8e0  f0 51 84 e5                                      str r5, [r4, #0x1f0]
0035d8e4  f4 51 84 e5                                      str r5, [r4, #0x1f4]
0035d8e8  f8 51 84 e5                                      str r5, [r4, #0x1f8]
0035d8ec  fc 51 84 e5                                      str r5, [r4, #0x1fc]
0035d8f0  00 62 c4 e5                                      strb r6, [r4, #0x200]
0035d8f4  04 52 84 e5                                      str r5, [r4, #0x204]
0035d8f8  09 52 c4 e5                                      strb r5, [r4, #0x209]
0035d8fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035d900  5c 72 63 00 f4 1a 00 00 44 2b 00 00 08 39 00 00  .byte 0x5c, 0x72, 0x63, 0x00, 0xf4, 0x1a, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x08, 0x39, 0x00, 0x00

; FUNCTION 0x0035d910, declared_size=176, range_size=176, mode=arm
; class-group: RootSceneNode
; alias: _ZN13RootSceneNodeC2ERKN6glitch7collada16CColladaDatabaseE
; demangled: RootSceneNode::RootSceneNode(glitch::collada::CColladaDatabase const&)
; decoder-mode: arm
0035d910  70 40 2d e9                                      push {r4, r5, r6, lr}
0035d914  01 50 a0 e1                                      mov r5, r1
0035d918  04 10 81 e2                                      add r1, r1, #4
0035d91c  00 40 a0 e1                                      mov r4, r0
0035d920  c7 f7 0b eb                                      bl #0x65b844
0035d924  00 20 95 e5                                      ldr r2, [r5]
0035d928  6f 3f 84 e2                                      add r3, r4, #0x1bc
0035d92c  03 00 a0 e1                                      mov r0, r3
0035d930  00 20 84 e5                                      str r2, [r4]
0035d934  34 c0 95 e5                                      ldr ip, [r5, #0x34]
0035d938  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
0035d93c  10 10 a0 e3                                      mov r1, #0x10
0035d940  00 60 a0 e3                                      mov r6, #0
0035d944  02 c0 84 e7                                      str ip, [r4, r2]
0035d948  00 20 94 e5                                      ldr r2, [r4]
0035d94c  38 c0 95 e5                                      ldr ip, [r5, #0x38]
0035d950  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0035d954  02 c0 84 e7                                      str ip, [r4, r2]
0035d958  cc 31 84 e5                                      str r3, [r4, #0x1cc]
0035d95c  d0 31 84 e5                                      str r3, [r4, #0x1d0]
0035d960  45 cf fe eb                                      bl #0x31167c
0035d964  cc 21 94 e5                                      ldr r2, [r4, #0x1cc]
0035d968  75 3f 84 e2                                      add r3, r4, #0x1d4
0035d96c  03 00 a0 e1                                      mov r0, r3
0035d970  00 60 c2 e5                                      strb r6, [r2]
0035d974  10 10 a0 e3                                      mov r1, #0x10
0035d978  e4 31 84 e5                                      str r3, [r4, #0x1e4]
0035d97c  e8 31 84 e5                                      str r3, [r4, #0x1e8]
0035d980  3d cf fe eb                                      bl #0x31167c
0035d984  e4 21 94 e5                                      ldr r2, [r4, #0x1e4]
0035d988  01 30 a0 e3                                      mov r3, #1
0035d98c  04 00 a0 e1                                      mov r0, r4
0035d990  00 60 c2 e5                                      strb r6, [r2]
0035d994  08 32 c4 e5                                      strb r3, [r4, #0x208]
0035d998  0a 62 c4 e5                                      strb r6, [r4, #0x20a]
0035d99c  ec 61 c4 e5                                      strb r6, [r4, #0x1ec]
0035d9a0  f0 61 84 e5                                      str r6, [r4, #0x1f0]
0035d9a4  f4 61 84 e5                                      str r6, [r4, #0x1f4]
0035d9a8  f8 61 84 e5                                      str r6, [r4, #0x1f8]
0035d9ac  fc 61 84 e5                                      str r6, [r4, #0x1fc]
0035d9b0  00 32 c4 e5                                      strb r3, [r4, #0x200]
0035d9b4  04 62 84 e5                                      str r6, [r4, #0x204]
0035d9b8  09 62 c4 e5                                      strb r6, [r4, #0x209]
0035d9bc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0035dc58, declared_size=16, range_size=16, mode=arm
; class-group: RootSceneNode
; alias: _ZTv0_n24_N13RootSceneNodeD0Ev
; demangled: virtual thunk to RootSceneNode::~RootSceneNode()
; decoder-mode: arm
0035dc58  00 30 90 e5                                      ldr r3, [r0]
0035dc5c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035dc60  03 00 80 e0                                      add r0, r0, r3
0035dc64  b7 fe ff ea                                      b #0x35d748

; FUNCTION 0x0035dc68, declared_size=16, range_size=16, mode=arm
; class-group: RootSceneNode
; alias: _ZTv0_n12_N13RootSceneNodeD0Ev
; demangled: virtual thunk to RootSceneNode::~RootSceneNode()
; decoder-mode: arm
0035dc68  00 30 90 e5                                      ldr r3, [r0]
0035dc6c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035dc70  03 00 80 e0                                      add r0, r0, r3
0035dc74  b3 fe ff ea                                      b #0x35d748

; FUNCTION 0x0035dc78, declared_size=16, range_size=16, mode=arm
; class-group: RootSceneNode
; alias: _ZTv0_n24_N13RootSceneNodeD1Ev
; demangled: virtual thunk to RootSceneNode::~RootSceneNode()
; decoder-mode: arm
0035dc78  00 30 90 e5                                      ldr r3, [r0]
0035dc7c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035dc80  03 00 80 e0                                      add r0, r0, r3
0035dc84  7c fe ff ea                                      b #0x35d67c

; FUNCTION 0x0035dc88, declared_size=16, range_size=16, mode=arm
; class-group: RootSceneNode
; alias: _ZTv0_n12_N13RootSceneNodeD1Ev
; demangled: virtual thunk to RootSceneNode::~RootSceneNode()
; decoder-mode: arm
0035dc88  00 30 90 e5                                      ldr r3, [r0]
0035dc8c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035dc90  03 00 80 e0                                      add r0, r0, r3
0035dc94  78 fe ff ea                                      b #0x35d67c
