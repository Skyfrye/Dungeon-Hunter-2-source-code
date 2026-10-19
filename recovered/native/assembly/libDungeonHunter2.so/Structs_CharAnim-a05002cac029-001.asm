; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004db248, declared_size=68, range_size=68, mode=arm
; class-group: Structs::CharAnim
; alias: _ZN7Structs8CharAnim8finalizeEv
; demangled: Structs::CharAnim::finalize()
; decoder-mode: arm
004db248  10 40 2d e9                                      push {r4, lr}
004db24c  00 40 a0 e1                                      mov r4, r0
004db250  44 00 90 e5                                      ldr r0, [r0, #0x44]
004db254  00 00 50 e3                                      cmp r0, #0
004db258  03 00 00 0a                                      beq #0x4db26c
004db25c  77 d4 f8 eb                                      bl #0x310440
004db260  00 30 a0 e3                                      mov r3, #0
004db264  40 30 84 e5                                      str r3, [r4, #0x40]
004db268  44 30 84 e5                                      str r3, [r4, #0x44]
004db26c  88 00 94 e5                                      ldr r0, [r4, #0x88]
004db270  00 00 50 e3                                      cmp r0, #0
004db274  03 00 00 0a                                      beq #0x4db288
004db278  70 d4 f8 eb                                      bl #0x310440
004db27c  00 30 a0 e3                                      mov r3, #0
004db280  84 30 84 e5                                      str r3, [r4, #0x84]
004db284  88 30 84 e5                                      str r3, [r4, #0x88]
004db288  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004db28c, declared_size=80, range_size=80, mode=arm
; class-group: Structs::CharAnim
; alias: _ZN7Structs8CharAnimD1Ev
; demangled: Structs::CharAnim::~CharAnim()
; decoder-mode: arm
004db28c  10 40 2d e9                                      push {r4, lr}
004db290  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004db294  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004db298  00 40 a0 e1                                      mov r4, r0
004db29c  03 30 8f e0                                      add r3, pc, r3
004db2a0  44 00 90 e5                                      ldr r0, [r0, #0x44]
004db2a4  02 20 93 e7                                      ldr r2, [r3, r2]
004db2a8  00 00 50 e3                                      cmp r0, #0
004db2ac  08 20 82 e2                                      add r2, r2, #8
004db2b0  00 20 84 e5                                      str r2, [r4]
004db2b4  00 00 00 0a                                      beq #0x4db2bc
004db2b8  60 d4 f8 eb                                      bl #0x310440
004db2bc  88 00 94 e5                                      ldr r0, [r4, #0x88]
004db2c0  00 00 50 e3                                      cmp r0, #0
004db2c4  00 00 00 0a                                      beq #0x4db2cc
004db2c8  5c d4 f8 eb                                      bl #0x310440
004db2cc  04 00 a0 e1                                      mov r0, r4
004db2d0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004db2d4  f4 97 4b 00 64 45 00 00                          .byte 0xf4, 0x97, 0x4b, 0x00, 0x64, 0x45, 0x00, 0x00

; FUNCTION 0x004db2dc, declared_size=28, range_size=28, mode=arm
; class-group: Structs::CharAnim
; alias: _ZN7Structs8CharAnimD0Ev
; demangled: Structs::CharAnim::~CharAnim()
; decoder-mode: arm
004db2dc  10 40 2d e9                                      push {r4, lr}
004db2e0  00 40 a0 e1                                      mov r4, r0
004db2e4  e8 ff ff eb                                      bl #0x4db28c
004db2e8  04 00 a0 e1                                      mov r0, r4
004db2ec  53 d4 f8 eb                                      bl #0x310440
004db2f0  04 00 a0 e1                                      mov r0, r4
004db2f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004db2f8, declared_size=80, range_size=80, mode=arm
; class-group: Structs::CharAnim
; alias: _ZN7Structs8CharAnimD2Ev
; demangled: Structs::CharAnim::~CharAnim()
; decoder-mode: arm
004db2f8  10 40 2d e9                                      push {r4, lr}
004db2fc  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004db300  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004db304  00 40 a0 e1                                      mov r4, r0
004db308  03 30 8f e0                                      add r3, pc, r3
004db30c  44 00 90 e5                                      ldr r0, [r0, #0x44]
004db310  02 20 93 e7                                      ldr r2, [r3, r2]
004db314  00 00 50 e3                                      cmp r0, #0
004db318  08 20 82 e2                                      add r2, r2, #8
004db31c  00 20 84 e5                                      str r2, [r4]
004db320  00 00 00 0a                                      beq #0x4db328
004db324  45 d4 f8 eb                                      bl #0x310440
004db328  88 00 94 e5                                      ldr r0, [r4, #0x88]
004db32c  00 00 50 e3                                      cmp r0, #0
004db330  00 00 00 0a                                      beq #0x4db338
004db334  41 d4 f8 eb                                      bl #0x310440
004db338  04 00 a0 e1                                      mov r0, r4
004db33c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004db340  88 97 4b 00 64 45 00 00                          .byte 0x88, 0x97, 0x4b, 0x00, 0x64, 0x45, 0x00, 0x00

; FUNCTION 0x004ef64c, declared_size=3780, range_size=3780, mode=arm
; class-group: Structs::CharAnim
; alias: _ZN7Structs8CharAnim4readEP11IStreamBase
; demangled: Structs::CharAnim::read(IStreamBase*)
; decoder-mode: arm
004ef64c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ef650  00 40 a0 e1                                      mov r4, r0
004ef654  08 d0 4d e2                                      sub sp, sp, #8
004ef658  01 00 a0 e1                                      mov r0, r1
004ef65c  01 50 a0 e1                                      mov r5, r1
004ef660  04 10 84 e2                                      add r1, r4, #4
004ef664  89 a6 fd eb                                      bl #0x459090
004ef668  01 30 a0 e3                                      mov r3, #1
004ef66c  00 00 53 e3                                      cmp r3, #0
004ef670  04 30 8d e5                                      str r3, [sp, #4]
004ef674  0f 00 00 1a                                      bne #0x4ef6b8
004ef678  05 30 84 e2                                      add r3, r4, #5
004ef67c  06 20 84 e2                                      add r2, r4, #6
004ef680  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef684  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ef688  02 00 53 e1                                      cmp r3, r2
004ef68c  01 10 20 e0                                      eor r1, r0, r1
004ef690  01 10 43 e5                                      strb r1, [r3, #-1]
004ef694  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef698  00 10 21 e0                                      eor r1, r1, r0
004ef69c  01 10 c2 e5                                      strb r1, [r2, #1]
004ef6a0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ef6a4  01 20 42 e2                                      sub r2, r2, #1
004ef6a8  00 10 21 e0                                      eor r1, r1, r0
004ef6ac  01 10 43 e5                                      strb r1, [r3, #-1]
004ef6b0  01 30 83 e2                                      add r3, r3, #1
004ef6b4  f1 ff ff 3a                                      blo #0x4ef680
004ef6b8  05 00 a0 e1                                      mov r0, r5
004ef6bc  08 10 84 e2                                      add r1, r4, #8
004ef6c0  72 a6 fd eb                                      bl #0x459090
004ef6c4  01 30 a0 e3                                      mov r3, #1
004ef6c8  00 00 53 e3                                      cmp r3, #0
004ef6cc  04 30 8d e5                                      str r3, [sp, #4]
004ef6d0  0f 00 00 1a                                      bne #0x4ef714
004ef6d4  09 30 84 e2                                      add r3, r4, #9
004ef6d8  0a 20 84 e2                                      add r2, r4, #0xa
004ef6dc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef6e0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ef6e4  02 00 53 e1                                      cmp r3, r2
004ef6e8  01 10 20 e0                                      eor r1, r0, r1
004ef6ec  01 10 43 e5                                      strb r1, [r3, #-1]
004ef6f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef6f4  00 10 21 e0                                      eor r1, r1, r0
004ef6f8  01 10 c2 e5                                      strb r1, [r2, #1]
004ef6fc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ef700  01 20 42 e2                                      sub r2, r2, #1
004ef704  00 10 21 e0                                      eor r1, r1, r0
004ef708  01 10 43 e5                                      strb r1, [r3, #-1]
004ef70c  01 30 83 e2                                      add r3, r3, #1
004ef710  f1 ff ff 3a                                      blo #0x4ef6dc
004ef714  05 00 a0 e1                                      mov r0, r5
004ef718  0c 10 84 e2                                      add r1, r4, #0xc
004ef71c  5b a6 fd eb                                      bl #0x459090
004ef720  01 30 a0 e3                                      mov r3, #1
004ef724  00 00 53 e3                                      cmp r3, #0
004ef728  04 30 8d e5                                      str r3, [sp, #4]
004ef72c  0f 00 00 1a                                      bne #0x4ef770
004ef730  0d 30 84 e2                                      add r3, r4, #0xd
004ef734  0e 20 84 e2                                      add r2, r4, #0xe
004ef738  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef73c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ef740  02 00 53 e1                                      cmp r3, r2
004ef744  01 10 20 e0                                      eor r1, r0, r1
004ef748  01 10 43 e5                                      strb r1, [r3, #-1]
004ef74c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef750  00 10 21 e0                                      eor r1, r1, r0
004ef754  01 10 c2 e5                                      strb r1, [r2, #1]
004ef758  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ef75c  01 20 42 e2                                      sub r2, r2, #1
004ef760  00 10 21 e0                                      eor r1, r1, r0
004ef764  01 10 43 e5                                      strb r1, [r3, #-1]
004ef768  01 30 83 e2                                      add r3, r3, #1
004ef76c  f1 ff ff 3a                                      blo #0x4ef738
004ef770  05 00 a0 e1                                      mov r0, r5
004ef774  10 10 84 e2                                      add r1, r4, #0x10
004ef778  44 a6 fd eb                                      bl #0x459090
004ef77c  01 30 a0 e3                                      mov r3, #1
004ef780  00 00 53 e3                                      cmp r3, #0
004ef784  04 30 8d e5                                      str r3, [sp, #4]
004ef788  0f 00 00 1a                                      bne #0x4ef7cc
004ef78c  11 30 84 e2                                      add r3, r4, #0x11
004ef790  12 20 84 e2                                      add r2, r4, #0x12
004ef794  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef798  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ef79c  02 00 53 e1                                      cmp r3, r2
004ef7a0  01 10 20 e0                                      eor r1, r0, r1
004ef7a4  01 10 43 e5                                      strb r1, [r3, #-1]
004ef7a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef7ac  00 10 21 e0                                      eor r1, r1, r0
004ef7b0  01 10 c2 e5                                      strb r1, [r2, #1]
004ef7b4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ef7b8  01 20 42 e2                                      sub r2, r2, #1
004ef7bc  00 10 21 e0                                      eor r1, r1, r0
004ef7c0  01 10 43 e5                                      strb r1, [r3, #-1]
004ef7c4  01 30 83 e2                                      add r3, r3, #1
004ef7c8  f1 ff ff 3a                                      blo #0x4ef794
004ef7cc  05 00 a0 e1                                      mov r0, r5
004ef7d0  14 10 84 e2                                      add r1, r4, #0x14
004ef7d4  2d a6 fd eb                                      bl #0x459090
004ef7d8  01 30 a0 e3                                      mov r3, #1
004ef7dc  00 00 53 e3                                      cmp r3, #0
004ef7e0  04 30 8d e5                                      str r3, [sp, #4]
004ef7e4  0f 00 00 1a                                      bne #0x4ef828
004ef7e8  15 30 84 e2                                      add r3, r4, #0x15
004ef7ec  16 20 84 e2                                      add r2, r4, #0x16
004ef7f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef7f4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ef7f8  02 00 53 e1                                      cmp r3, r2
004ef7fc  01 10 20 e0                                      eor r1, r0, r1
004ef800  01 10 43 e5                                      strb r1, [r3, #-1]
004ef804  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef808  00 10 21 e0                                      eor r1, r1, r0
004ef80c  01 10 c2 e5                                      strb r1, [r2, #1]
004ef810  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ef814  01 20 42 e2                                      sub r2, r2, #1
004ef818  00 10 21 e0                                      eor r1, r1, r0
004ef81c  01 10 43 e5                                      strb r1, [r3, #-1]
004ef820  01 30 83 e2                                      add r3, r3, #1
004ef824  f1 ff ff 3a                                      blo #0x4ef7f0
004ef828  05 00 a0 e1                                      mov r0, r5
004ef82c  18 10 84 e2                                      add r1, r4, #0x18
004ef830  16 a6 fd eb                                      bl #0x459090
004ef834  01 30 a0 e3                                      mov r3, #1
004ef838  00 00 53 e3                                      cmp r3, #0
004ef83c  04 30 8d e5                                      str r3, [sp, #4]
004ef840  0f 00 00 1a                                      bne #0x4ef884
004ef844  19 30 84 e2                                      add r3, r4, #0x19
004ef848  1a 20 84 e2                                      add r2, r4, #0x1a
004ef84c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef850  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ef854  02 00 53 e1                                      cmp r3, r2
004ef858  01 10 20 e0                                      eor r1, r0, r1
004ef85c  01 10 43 e5                                      strb r1, [r3, #-1]
004ef860  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef864  00 10 21 e0                                      eor r1, r1, r0
004ef868  01 10 c2 e5                                      strb r1, [r2, #1]
004ef86c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ef870  01 20 42 e2                                      sub r2, r2, #1
004ef874  00 10 21 e0                                      eor r1, r1, r0
004ef878  01 10 43 e5                                      strb r1, [r3, #-1]
004ef87c  01 30 83 e2                                      add r3, r3, #1
004ef880  f1 ff ff 3a                                      blo #0x4ef84c
004ef884  05 00 a0 e1                                      mov r0, r5
004ef888  1c 10 84 e2                                      add r1, r4, #0x1c
004ef88c  ff a5 fd eb                                      bl #0x459090
004ef890  01 30 a0 e3                                      mov r3, #1
004ef894  00 00 53 e3                                      cmp r3, #0
004ef898  04 30 8d e5                                      str r3, [sp, #4]
004ef89c  0f 00 00 1a                                      bne #0x4ef8e0
004ef8a0  1d 30 84 e2                                      add r3, r4, #0x1d
004ef8a4  1e 20 84 e2                                      add r2, r4, #0x1e
004ef8a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef8ac  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ef8b0  02 00 53 e1                                      cmp r3, r2
004ef8b4  01 10 20 e0                                      eor r1, r0, r1
004ef8b8  01 10 43 e5                                      strb r1, [r3, #-1]
004ef8bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef8c0  00 10 21 e0                                      eor r1, r1, r0
004ef8c4  01 10 c2 e5                                      strb r1, [r2, #1]
004ef8c8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ef8cc  01 20 42 e2                                      sub r2, r2, #1
004ef8d0  00 10 21 e0                                      eor r1, r1, r0
004ef8d4  01 10 43 e5                                      strb r1, [r3, #-1]
004ef8d8  01 30 83 e2                                      add r3, r3, #1
004ef8dc  f1 ff ff 3a                                      blo #0x4ef8a8
004ef8e0  05 00 a0 e1                                      mov r0, r5
004ef8e4  20 10 84 e2                                      add r1, r4, #0x20
004ef8e8  e8 a5 fd eb                                      bl #0x459090
004ef8ec  01 30 a0 e3                                      mov r3, #1
004ef8f0  00 00 53 e3                                      cmp r3, #0
004ef8f4  04 30 8d e5                                      str r3, [sp, #4]
004ef8f8  0f 00 00 1a                                      bne #0x4ef93c
004ef8fc  21 30 84 e2                                      add r3, r4, #0x21
004ef900  22 20 84 e2                                      add r2, r4, #0x22
004ef904  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef908  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ef90c  02 00 53 e1                                      cmp r3, r2
004ef910  01 10 20 e0                                      eor r1, r0, r1
004ef914  01 10 43 e5                                      strb r1, [r3, #-1]
004ef918  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef91c  00 10 21 e0                                      eor r1, r1, r0
004ef920  01 10 c2 e5                                      strb r1, [r2, #1]
004ef924  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ef928  01 20 42 e2                                      sub r2, r2, #1
004ef92c  00 10 21 e0                                      eor r1, r1, r0
004ef930  01 10 43 e5                                      strb r1, [r3, #-1]
004ef934  01 30 83 e2                                      add r3, r3, #1
004ef938  f1 ff ff 3a                                      blo #0x4ef904
004ef93c  05 00 a0 e1                                      mov r0, r5
004ef940  24 10 84 e2                                      add r1, r4, #0x24
004ef944  d1 a5 fd eb                                      bl #0x459090
004ef948  01 30 a0 e3                                      mov r3, #1
004ef94c  00 00 53 e3                                      cmp r3, #0
004ef950  04 30 8d e5                                      str r3, [sp, #4]
004ef954  0f 00 00 1a                                      bne #0x4ef998
004ef958  25 30 84 e2                                      add r3, r4, #0x25
004ef95c  26 20 84 e2                                      add r2, r4, #0x26
004ef960  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef964  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ef968  02 00 53 e1                                      cmp r3, r2
004ef96c  01 10 20 e0                                      eor r1, r0, r1
004ef970  01 10 43 e5                                      strb r1, [r3, #-1]
004ef974  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef978  00 10 21 e0                                      eor r1, r1, r0
004ef97c  01 10 c2 e5                                      strb r1, [r2, #1]
004ef980  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ef984  01 20 42 e2                                      sub r2, r2, #1
004ef988  00 10 21 e0                                      eor r1, r1, r0
004ef98c  01 10 43 e5                                      strb r1, [r3, #-1]
004ef990  01 30 83 e2                                      add r3, r3, #1
004ef994  f1 ff ff 3a                                      blo #0x4ef960
004ef998  05 00 a0 e1                                      mov r0, r5
004ef99c  28 10 84 e2                                      add r1, r4, #0x28
004ef9a0  ba a5 fd eb                                      bl #0x459090
004ef9a4  01 30 a0 e3                                      mov r3, #1
004ef9a8  00 00 53 e3                                      cmp r3, #0
004ef9ac  04 30 8d e5                                      str r3, [sp, #4]
004ef9b0  0f 00 00 1a                                      bne #0x4ef9f4
004ef9b4  29 30 84 e2                                      add r3, r4, #0x29
004ef9b8  2a 20 84 e2                                      add r2, r4, #0x2a
004ef9bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef9c0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ef9c4  02 00 53 e1                                      cmp r3, r2
004ef9c8  01 10 20 e0                                      eor r1, r0, r1
004ef9cc  01 10 43 e5                                      strb r1, [r3, #-1]
004ef9d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef9d4  00 10 21 e0                                      eor r1, r1, r0
004ef9d8  01 10 c2 e5                                      strb r1, [r2, #1]
004ef9dc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ef9e0  01 20 42 e2                                      sub r2, r2, #1
004ef9e4  00 10 21 e0                                      eor r1, r1, r0
004ef9e8  01 10 43 e5                                      strb r1, [r3, #-1]
004ef9ec  01 30 83 e2                                      add r3, r3, #1
004ef9f0  f1 ff ff 3a                                      blo #0x4ef9bc
004ef9f4  05 00 a0 e1                                      mov r0, r5
004ef9f8  2c 10 84 e2                                      add r1, r4, #0x2c
004ef9fc  a3 a5 fd eb                                      bl #0x459090
004efa00  01 30 a0 e3                                      mov r3, #1
004efa04  00 00 53 e3                                      cmp r3, #0
004efa08  04 30 8d e5                                      str r3, [sp, #4]
004efa0c  0f 00 00 1a                                      bne #0x4efa50
004efa10  2d 30 84 e2                                      add r3, r4, #0x2d
004efa14  2e 20 84 e2                                      add r2, r4, #0x2e
004efa18  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efa1c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004efa20  02 00 53 e1                                      cmp r3, r2
004efa24  01 10 20 e0                                      eor r1, r0, r1
004efa28  01 10 43 e5                                      strb r1, [r3, #-1]
004efa2c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efa30  00 10 21 e0                                      eor r1, r1, r0
004efa34  01 10 c2 e5                                      strb r1, [r2, #1]
004efa38  01 00 53 e5                                      ldrb r0, [r3, #-1]
004efa3c  01 20 42 e2                                      sub r2, r2, #1
004efa40  00 10 21 e0                                      eor r1, r1, r0
004efa44  01 10 43 e5                                      strb r1, [r3, #-1]
004efa48  01 30 83 e2                                      add r3, r3, #1
004efa4c  f1 ff ff 3a                                      blo #0x4efa18
004efa50  05 00 a0 e1                                      mov r0, r5
004efa54  30 10 84 e2                                      add r1, r4, #0x30
004efa58  8c a5 fd eb                                      bl #0x459090
004efa5c  01 30 a0 e3                                      mov r3, #1
004efa60  00 00 53 e3                                      cmp r3, #0
004efa64  04 30 8d e5                                      str r3, [sp, #4]
004efa68  0f 00 00 1a                                      bne #0x4efaac
004efa6c  31 30 84 e2                                      add r3, r4, #0x31
004efa70  32 20 84 e2                                      add r2, r4, #0x32
004efa74  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efa78  01 10 53 e5                                      ldrb r1, [r3, #-1]
004efa7c  02 00 53 e1                                      cmp r3, r2
004efa80  01 10 20 e0                                      eor r1, r0, r1
004efa84  01 10 43 e5                                      strb r1, [r3, #-1]
004efa88  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efa8c  00 10 21 e0                                      eor r1, r1, r0
004efa90  01 10 c2 e5                                      strb r1, [r2, #1]
004efa94  01 00 53 e5                                      ldrb r0, [r3, #-1]
004efa98  01 20 42 e2                                      sub r2, r2, #1
004efa9c  00 10 21 e0                                      eor r1, r1, r0
004efaa0  01 10 43 e5                                      strb r1, [r3, #-1]
004efaa4  01 30 83 e2                                      add r3, r3, #1
004efaa8  f1 ff ff 3a                                      blo #0x4efa74
004efaac  05 00 a0 e1                                      mov r0, r5
004efab0  34 10 84 e2                                      add r1, r4, #0x34
004efab4  75 a5 fd eb                                      bl #0x459090
004efab8  01 30 a0 e3                                      mov r3, #1
004efabc  00 00 53 e3                                      cmp r3, #0
004efac0  04 30 8d e5                                      str r3, [sp, #4]
004efac4  0f 00 00 1a                                      bne #0x4efb08
004efac8  35 30 84 e2                                      add r3, r4, #0x35
004efacc  36 20 84 e2                                      add r2, r4, #0x36
004efad0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efad4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004efad8  02 00 53 e1                                      cmp r3, r2
004efadc  01 10 20 e0                                      eor r1, r0, r1
004efae0  01 10 43 e5                                      strb r1, [r3, #-1]
004efae4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efae8  00 10 21 e0                                      eor r1, r1, r0
004efaec  01 10 c2 e5                                      strb r1, [r2, #1]
004efaf0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004efaf4  01 20 42 e2                                      sub r2, r2, #1
004efaf8  00 10 21 e0                                      eor r1, r1, r0
004efafc  01 10 43 e5                                      strb r1, [r3, #-1]
004efb00  01 30 83 e2                                      add r3, r3, #1
004efb04  f1 ff ff 3a                                      blo #0x4efad0
004efb08  05 00 a0 e1                                      mov r0, r5
004efb0c  38 10 84 e2                                      add r1, r4, #0x38
004efb10  5e a5 fd eb                                      bl #0x459090
004efb14  01 30 a0 e3                                      mov r3, #1
004efb18  00 00 53 e3                                      cmp r3, #0
004efb1c  04 30 8d e5                                      str r3, [sp, #4]
004efb20  0f 00 00 1a                                      bne #0x4efb64
004efb24  39 30 84 e2                                      add r3, r4, #0x39
004efb28  3a 20 84 e2                                      add r2, r4, #0x3a
004efb2c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efb30  01 10 53 e5                                      ldrb r1, [r3, #-1]
004efb34  02 00 53 e1                                      cmp r3, r2
004efb38  01 10 20 e0                                      eor r1, r0, r1
004efb3c  01 10 43 e5                                      strb r1, [r3, #-1]
004efb40  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efb44  00 10 21 e0                                      eor r1, r1, r0
004efb48  01 10 c2 e5                                      strb r1, [r2, #1]
004efb4c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004efb50  01 20 42 e2                                      sub r2, r2, #1
004efb54  00 10 21 e0                                      eor r1, r1, r0
004efb58  01 10 43 e5                                      strb r1, [r3, #-1]
004efb5c  01 30 83 e2                                      add r3, r3, #1
004efb60  f1 ff ff 3a                                      blo #0x4efb2c
004efb64  05 00 a0 e1                                      mov r0, r5
004efb68  3c 10 84 e2                                      add r1, r4, #0x3c
004efb6c  47 a5 fd eb                                      bl #0x459090
004efb70  01 30 a0 e3                                      mov r3, #1
004efb74  00 00 53 e3                                      cmp r3, #0
004efb78  04 30 8d e5                                      str r3, [sp, #4]
004efb7c  0f 00 00 1a                                      bne #0x4efbc0
004efb80  3d 30 84 e2                                      add r3, r4, #0x3d
004efb84  3e 20 84 e2                                      add r2, r4, #0x3e
004efb88  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efb8c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004efb90  02 00 53 e1                                      cmp r3, r2
004efb94  01 10 20 e0                                      eor r1, r0, r1
004efb98  01 10 43 e5                                      strb r1, [r3, #-1]
004efb9c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efba0  00 10 21 e0                                      eor r1, r1, r0
004efba4  01 10 c2 e5                                      strb r1, [r2, #1]
004efba8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004efbac  01 20 42 e2                                      sub r2, r2, #1
004efbb0  00 10 21 e0                                      eor r1, r1, r0
004efbb4  01 10 43 e5                                      strb r1, [r3, #-1]
004efbb8  01 30 83 e2                                      add r3, r3, #1
004efbbc  f1 ff ff 3a                                      blo #0x4efb88
004efbc0  05 00 a0 e1                                      mov r0, r5
004efbc4  40 10 84 e2                                      add r1, r4, #0x40
004efbc8  74 bd fb eb                                      bl #0x3df1a0
004efbcc  01 30 a0 e3                                      mov r3, #1
004efbd0  00 00 53 e3                                      cmp r3, #0
004efbd4  04 30 8d e5                                      str r3, [sp, #4]
004efbd8  0f 00 00 1a                                      bne #0x4efc1c
004efbdc  41 30 84 e2                                      add r3, r4, #0x41
004efbe0  42 20 84 e2                                      add r2, r4, #0x42
004efbe4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efbe8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004efbec  02 00 53 e1                                      cmp r3, r2
004efbf0  01 10 20 e0                                      eor r1, r0, r1
004efbf4  01 10 43 e5                                      strb r1, [r3, #-1]
004efbf8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efbfc  00 10 21 e0                                      eor r1, r1, r0
004efc00  01 10 c2 e5                                      strb r1, [r2, #1]
004efc04  01 00 53 e5                                      ldrb r0, [r3, #-1]
004efc08  01 20 42 e2                                      sub r2, r2, #1
004efc0c  00 10 21 e0                                      eor r1, r1, r0
004efc10  01 10 43 e5                                      strb r1, [r3, #-1]
004efc14  01 30 83 e2                                      add r3, r3, #1
004efc18  f1 ff ff 3a                                      blo #0x4efbe4
004efc1c  44 00 94 e5                                      ldr r0, [r4, #0x44]
004efc20  00 00 50 e3                                      cmp r0, #0
004efc24  00 00 00 0a                                      beq #0x4efc2c
004efc28  04 82 f8 eb                                      bl #0x310440
004efc2c  40 00 94 e5                                      ldr r0, [r4, #0x40]
004efc30  01 10 a0 e3                                      mov r1, #1
004efc34  00 01 a0 e1                                      lsl r0, r0, #2
004efc38  4b 82 f8 eb                                      bl #0x31056c
004efc3c  40 30 94 e5                                      ldr r3, [r4, #0x40]
004efc40  44 00 84 e5                                      str r0, [r4, #0x44]
004efc44  00 00 53 e3                                      cmp r3, #0
004efc48  1f 00 00 0a                                      beq #0x4efccc
004efc4c  00 60 a0 e3                                      mov r6, #0
004efc50  01 80 a0 e3                                      mov r8, #1
004efc54  06 71 a0 e1                                      lsl r7, r6, #2
004efc58  07 10 80 e0                                      add r1, r0, r7
004efc5c  05 00 a0 e1                                      mov r0, r5
004efc60  0a a5 fd eb                                      bl #0x459090
004efc64  04 80 8d e5                                      str r8, [sp, #4]
004efc68  00 00 58 e3                                      cmp r8, #0
004efc6c  44 30 94 e5                                      ldr r3, [r4, #0x44]
004efc70  10 00 00 1a                                      bne #0x4efcb8
004efc74  07 70 83 e0                                      add r7, r3, r7
004efc78  02 30 87 e2                                      add r3, r7, #2
004efc7c  01 70 87 e2                                      add r7, r7, #1
004efc80  01 10 d3 e5                                      ldrb r1, [r3, #1]
004efc84  01 20 57 e5                                      ldrb r2, [r7, #-1]
004efc88  03 00 57 e1                                      cmp r7, r3
004efc8c  02 20 21 e0                                      eor r2, r1, r2
004efc90  01 20 47 e5                                      strb r2, [r7, #-1]
004efc94  01 10 d3 e5                                      ldrb r1, [r3, #1]
004efc98  01 20 22 e0                                      eor r2, r2, r1
004efc9c  01 20 c3 e5                                      strb r2, [r3, #1]
004efca0  01 10 57 e5                                      ldrb r1, [r7, #-1]
004efca4  01 30 43 e2                                      sub r3, r3, #1
004efca8  01 20 22 e0                                      eor r2, r2, r1
004efcac  01 20 47 e5                                      strb r2, [r7, #-1]
004efcb0  01 70 87 e2                                      add r7, r7, #1
004efcb4  f1 ff ff 3a                                      blo #0x4efc80
004efcb8  40 30 94 e5                                      ldr r3, [r4, #0x40]
004efcbc  01 60 86 e2                                      add r6, r6, #1
004efcc0  06 00 53 e1                                      cmp r3, r6
004efcc4  44 00 94 85                                      ldrhi r0, [r4, #0x44]
004efcc8  e1 ff ff 8a                                      bhi #0x4efc54
004efccc  05 00 a0 e1                                      mov r0, r5
004efcd0  48 10 84 e2                                      add r1, r4, #0x48
004efcd4  ed a4 fd eb                                      bl #0x459090
004efcd8  01 30 a0 e3                                      mov r3, #1
004efcdc  00 00 53 e3                                      cmp r3, #0
004efce0  04 30 8d e5                                      str r3, [sp, #4]
004efce4  0f 00 00 1a                                      bne #0x4efd28
004efce8  49 30 84 e2                                      add r3, r4, #0x49
004efcec  4a 20 84 e2                                      add r2, r4, #0x4a
004efcf0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efcf4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004efcf8  02 00 53 e1                                      cmp r3, r2
004efcfc  01 10 20 e0                                      eor r1, r0, r1
004efd00  01 10 43 e5                                      strb r1, [r3, #-1]
004efd04  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efd08  00 10 21 e0                                      eor r1, r1, r0
004efd0c  01 10 c2 e5                                      strb r1, [r2, #1]
004efd10  01 00 53 e5                                      ldrb r0, [r3, #-1]
004efd14  01 20 42 e2                                      sub r2, r2, #1
004efd18  00 10 21 e0                                      eor r1, r1, r0
004efd1c  01 10 43 e5                                      strb r1, [r3, #-1]
004efd20  01 30 83 e2                                      add r3, r3, #1
004efd24  f1 ff ff 3a                                      blo #0x4efcf0
004efd28  05 00 a0 e1                                      mov r0, r5
004efd2c  4c 10 84 e2                                      add r1, r4, #0x4c
004efd30  d6 a4 fd eb                                      bl #0x459090
004efd34  01 30 a0 e3                                      mov r3, #1
004efd38  00 00 53 e3                                      cmp r3, #0
004efd3c  04 30 8d e5                                      str r3, [sp, #4]
004efd40  0f 00 00 1a                                      bne #0x4efd84
004efd44  4d 30 84 e2                                      add r3, r4, #0x4d
004efd48  4e 20 84 e2                                      add r2, r4, #0x4e
004efd4c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efd50  01 10 53 e5                                      ldrb r1, [r3, #-1]
004efd54  02 00 53 e1                                      cmp r3, r2
004efd58  01 10 20 e0                                      eor r1, r0, r1
004efd5c  01 10 43 e5                                      strb r1, [r3, #-1]
004efd60  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efd64  00 10 21 e0                                      eor r1, r1, r0
004efd68  01 10 c2 e5                                      strb r1, [r2, #1]
004efd6c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004efd70  01 20 42 e2                                      sub r2, r2, #1
004efd74  00 10 21 e0                                      eor r1, r1, r0
004efd78  01 10 43 e5                                      strb r1, [r3, #-1]
004efd7c  01 30 83 e2                                      add r3, r3, #1
004efd80  f1 ff ff 3a                                      blo #0x4efd4c
004efd84  05 00 a0 e1                                      mov r0, r5
004efd88  50 10 84 e2                                      add r1, r4, #0x50
004efd8c  bf a4 fd eb                                      bl #0x459090
004efd90  01 30 a0 e3                                      mov r3, #1
004efd94  00 00 53 e3                                      cmp r3, #0
004efd98  04 30 8d e5                                      str r3, [sp, #4]
004efd9c  0f 00 00 1a                                      bne #0x4efde0
004efda0  51 30 84 e2                                      add r3, r4, #0x51
004efda4  52 20 84 e2                                      add r2, r4, #0x52
004efda8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efdac  01 10 53 e5                                      ldrb r1, [r3, #-1]
004efdb0  02 00 53 e1                                      cmp r3, r2
004efdb4  01 10 20 e0                                      eor r1, r0, r1
004efdb8  01 10 43 e5                                      strb r1, [r3, #-1]
004efdbc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efdc0  00 10 21 e0                                      eor r1, r1, r0
004efdc4  01 10 c2 e5                                      strb r1, [r2, #1]
004efdc8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004efdcc  01 20 42 e2                                      sub r2, r2, #1
004efdd0  00 10 21 e0                                      eor r1, r1, r0
004efdd4  01 10 43 e5                                      strb r1, [r3, #-1]
004efdd8  01 30 83 e2                                      add r3, r3, #1
004efddc  f1 ff ff 3a                                      blo #0x4efda8
004efde0  05 00 a0 e1                                      mov r0, r5
004efde4  54 10 84 e2                                      add r1, r4, #0x54
004efde8  a8 a4 fd eb                                      bl #0x459090
004efdec  01 30 a0 e3                                      mov r3, #1
004efdf0  00 00 53 e3                                      cmp r3, #0
004efdf4  04 30 8d e5                                      str r3, [sp, #4]
004efdf8  0f 00 00 1a                                      bne #0x4efe3c
004efdfc  55 30 84 e2                                      add r3, r4, #0x55
004efe00  56 20 84 e2                                      add r2, r4, #0x56
004efe04  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efe08  01 10 53 e5                                      ldrb r1, [r3, #-1]
004efe0c  02 00 53 e1                                      cmp r3, r2
004efe10  01 10 20 e0                                      eor r1, r0, r1
004efe14  01 10 43 e5                                      strb r1, [r3, #-1]
004efe18  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efe1c  00 10 21 e0                                      eor r1, r1, r0
004efe20  01 10 c2 e5                                      strb r1, [r2, #1]
004efe24  01 00 53 e5                                      ldrb r0, [r3, #-1]
004efe28  01 20 42 e2                                      sub r2, r2, #1
004efe2c  00 10 21 e0                                      eor r1, r1, r0
004efe30  01 10 43 e5                                      strb r1, [r3, #-1]
004efe34  01 30 83 e2                                      add r3, r3, #1
004efe38  f1 ff ff 3a                                      blo #0x4efe04
004efe3c  05 00 a0 e1                                      mov r0, r5
004efe40  58 10 84 e2                                      add r1, r4, #0x58
004efe44  91 a4 fd eb                                      bl #0x459090
004efe48  01 30 a0 e3                                      mov r3, #1
004efe4c  00 00 53 e3                                      cmp r3, #0
004efe50  04 30 8d e5                                      str r3, [sp, #4]
004efe54  0f 00 00 1a                                      bne #0x4efe98
004efe58  59 30 84 e2                                      add r3, r4, #0x59
004efe5c  5a 20 84 e2                                      add r2, r4, #0x5a
004efe60  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efe64  01 10 53 e5                                      ldrb r1, [r3, #-1]
004efe68  02 00 53 e1                                      cmp r3, r2
004efe6c  01 10 20 e0                                      eor r1, r0, r1
004efe70  01 10 43 e5                                      strb r1, [r3, #-1]
004efe74  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efe78  00 10 21 e0                                      eor r1, r1, r0
004efe7c  01 10 c2 e5                                      strb r1, [r2, #1]
004efe80  01 00 53 e5                                      ldrb r0, [r3, #-1]
004efe84  01 20 42 e2                                      sub r2, r2, #1
004efe88  00 10 21 e0                                      eor r1, r1, r0
004efe8c  01 10 43 e5                                      strb r1, [r3, #-1]
004efe90  01 30 83 e2                                      add r3, r3, #1
004efe94  f1 ff ff 3a                                      blo #0x4efe60
004efe98  05 00 a0 e1                                      mov r0, r5
004efe9c  5c 10 84 e2                                      add r1, r4, #0x5c
004efea0  7a a4 fd eb                                      bl #0x459090
004efea4  01 30 a0 e3                                      mov r3, #1
004efea8  00 00 53 e3                                      cmp r3, #0
004efeac  04 30 8d e5                                      str r3, [sp, #4]
004efeb0  0f 00 00 1a                                      bne #0x4efef4
004efeb4  5d 30 84 e2                                      add r3, r4, #0x5d
004efeb8  5e 20 84 e2                                      add r2, r4, #0x5e
004efebc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efec0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004efec4  02 00 53 e1                                      cmp r3, r2
004efec8  01 10 20 e0                                      eor r1, r0, r1
004efecc  01 10 43 e5                                      strb r1, [r3, #-1]
004efed0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004efed4  00 10 21 e0                                      eor r1, r1, r0
004efed8  01 10 c2 e5                                      strb r1, [r2, #1]
004efedc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004efee0  01 20 42 e2                                      sub r2, r2, #1
004efee4  00 10 21 e0                                      eor r1, r1, r0
004efee8  01 10 43 e5                                      strb r1, [r3, #-1]
004efeec  01 30 83 e2                                      add r3, r3, #1
004efef0  f1 ff ff 3a                                      blo #0x4efebc
004efef4  05 00 a0 e1                                      mov r0, r5
004efef8  60 10 84 e2                                      add r1, r4, #0x60
004efefc  63 a4 fd eb                                      bl #0x459090
004eff00  01 30 a0 e3                                      mov r3, #1
004eff04  00 00 53 e3                                      cmp r3, #0
004eff08  04 30 8d e5                                      str r3, [sp, #4]
004eff0c  0f 00 00 1a                                      bne #0x4eff50
004eff10  61 30 84 e2                                      add r3, r4, #0x61
004eff14  62 20 84 e2                                      add r2, r4, #0x62
004eff18  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eff1c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eff20  02 00 53 e1                                      cmp r3, r2
004eff24  01 10 20 e0                                      eor r1, r0, r1
004eff28  01 10 43 e5                                      strb r1, [r3, #-1]
004eff2c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eff30  00 10 21 e0                                      eor r1, r1, r0
004eff34  01 10 c2 e5                                      strb r1, [r2, #1]
004eff38  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eff3c  01 20 42 e2                                      sub r2, r2, #1
004eff40  00 10 21 e0                                      eor r1, r1, r0
004eff44  01 10 43 e5                                      strb r1, [r3, #-1]
004eff48  01 30 83 e2                                      add r3, r3, #1
004eff4c  f1 ff ff 3a                                      blo #0x4eff18
004eff50  05 00 a0 e1                                      mov r0, r5
004eff54  64 10 84 e2                                      add r1, r4, #0x64
004eff58  4c a4 fd eb                                      bl #0x459090
004eff5c  01 30 a0 e3                                      mov r3, #1
004eff60  00 00 53 e3                                      cmp r3, #0
004eff64  04 30 8d e5                                      str r3, [sp, #4]
004eff68  0f 00 00 1a                                      bne #0x4effac
004eff6c  65 30 84 e2                                      add r3, r4, #0x65
004eff70  66 20 84 e2                                      add r2, r4, #0x66
004eff74  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eff78  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eff7c  02 00 53 e1                                      cmp r3, r2
004eff80  01 10 20 e0                                      eor r1, r0, r1
004eff84  01 10 43 e5                                      strb r1, [r3, #-1]
004eff88  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eff8c  00 10 21 e0                                      eor r1, r1, r0
004eff90  01 10 c2 e5                                      strb r1, [r2, #1]
004eff94  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eff98  01 20 42 e2                                      sub r2, r2, #1
004eff9c  00 10 21 e0                                      eor r1, r1, r0
004effa0  01 10 43 e5                                      strb r1, [r3, #-1]
004effa4  01 30 83 e2                                      add r3, r3, #1
004effa8  f1 ff ff 3a                                      blo #0x4eff74
004effac  05 00 a0 e1                                      mov r0, r5
004effb0  68 10 84 e2                                      add r1, r4, #0x68
004effb4  35 a4 fd eb                                      bl #0x459090
004effb8  01 30 a0 e3                                      mov r3, #1
004effbc  00 00 53 e3                                      cmp r3, #0
004effc0  04 30 8d e5                                      str r3, [sp, #4]
004effc4  0f 00 00 1a                                      bne #0x4f0008
004effc8  69 30 84 e2                                      add r3, r4, #0x69
004effcc  6a 20 84 e2                                      add r2, r4, #0x6a
004effd0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004effd4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004effd8  02 00 53 e1                                      cmp r3, r2
004effdc  01 10 20 e0                                      eor r1, r0, r1
004effe0  01 10 43 e5                                      strb r1, [r3, #-1]
004effe4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004effe8  00 10 21 e0                                      eor r1, r1, r0
004effec  01 10 c2 e5                                      strb r1, [r2, #1]
004efff0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004efff4  01 20 42 e2                                      sub r2, r2, #1
004efff8  00 10 21 e0                                      eor r1, r1, r0
004efffc  01 10 43 e5                                      strb r1, [r3, #-1]
004f0000  01 30 83 e2                                      add r3, r3, #1
004f0004  f1 ff ff 3a                                      blo #0x4effd0
004f0008  05 00 a0 e1                                      mov r0, r5
004f000c  6c 10 84 e2                                      add r1, r4, #0x6c
004f0010  1e a4 fd eb                                      bl #0x459090
004f0014  01 30 a0 e3                                      mov r3, #1
004f0018  00 00 53 e3                                      cmp r3, #0
004f001c  04 30 8d e5                                      str r3, [sp, #4]
004f0020  0f 00 00 1a                                      bne #0x4f0064
004f0024  6d 30 84 e2                                      add r3, r4, #0x6d
004f0028  6e 20 84 e2                                      add r2, r4, #0x6e
004f002c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0030  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0034  02 00 53 e1                                      cmp r3, r2
004f0038  01 10 20 e0                                      eor r1, r0, r1
004f003c  01 10 43 e5                                      strb r1, [r3, #-1]
004f0040  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0044  00 10 21 e0                                      eor r1, r1, r0
004f0048  01 10 c2 e5                                      strb r1, [r2, #1]
004f004c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0050  01 20 42 e2                                      sub r2, r2, #1
004f0054  00 10 21 e0                                      eor r1, r1, r0
004f0058  01 10 43 e5                                      strb r1, [r3, #-1]
004f005c  01 30 83 e2                                      add r3, r3, #1
004f0060  f1 ff ff 3a                                      blo #0x4f002c
004f0064  05 00 a0 e1                                      mov r0, r5
004f0068  70 10 84 e2                                      add r1, r4, #0x70
004f006c  07 a4 fd eb                                      bl #0x459090
004f0070  01 30 a0 e3                                      mov r3, #1
004f0074  00 00 53 e3                                      cmp r3, #0
004f0078  04 30 8d e5                                      str r3, [sp, #4]
004f007c  0f 00 00 1a                                      bne #0x4f00c0
004f0080  71 30 84 e2                                      add r3, r4, #0x71
004f0084  72 20 84 e2                                      add r2, r4, #0x72
004f0088  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f008c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0090  02 00 53 e1                                      cmp r3, r2
004f0094  01 10 20 e0                                      eor r1, r0, r1
004f0098  01 10 43 e5                                      strb r1, [r3, #-1]
004f009c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f00a0  00 10 21 e0                                      eor r1, r1, r0
004f00a4  01 10 c2 e5                                      strb r1, [r2, #1]
004f00a8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f00ac  01 20 42 e2                                      sub r2, r2, #1
004f00b0  00 10 21 e0                                      eor r1, r1, r0
004f00b4  01 10 43 e5                                      strb r1, [r3, #-1]
004f00b8  01 30 83 e2                                      add r3, r3, #1
004f00bc  f1 ff ff 3a                                      blo #0x4f0088
004f00c0  05 00 a0 e1                                      mov r0, r5
004f00c4  74 10 84 e2                                      add r1, r4, #0x74
004f00c8  f0 a3 fd eb                                      bl #0x459090
004f00cc  01 30 a0 e3                                      mov r3, #1
004f00d0  00 00 53 e3                                      cmp r3, #0
004f00d4  04 30 8d e5                                      str r3, [sp, #4]
004f00d8  0f 00 00 1a                                      bne #0x4f011c
004f00dc  75 30 84 e2                                      add r3, r4, #0x75
004f00e0  76 20 84 e2                                      add r2, r4, #0x76
004f00e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f00e8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f00ec  02 00 53 e1                                      cmp r3, r2
004f00f0  01 10 20 e0                                      eor r1, r0, r1
004f00f4  01 10 43 e5                                      strb r1, [r3, #-1]
004f00f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f00fc  00 10 21 e0                                      eor r1, r1, r0
004f0100  01 10 c2 e5                                      strb r1, [r2, #1]
004f0104  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0108  01 20 42 e2                                      sub r2, r2, #1
004f010c  00 10 21 e0                                      eor r1, r1, r0
004f0110  01 10 43 e5                                      strb r1, [r3, #-1]
004f0114  01 30 83 e2                                      add r3, r3, #1
004f0118  f1 ff ff 3a                                      blo #0x4f00e4
004f011c  05 00 a0 e1                                      mov r0, r5
004f0120  78 10 84 e2                                      add r1, r4, #0x78
004f0124  d9 a3 fd eb                                      bl #0x459090
004f0128  01 30 a0 e3                                      mov r3, #1
004f012c  00 00 53 e3                                      cmp r3, #0
004f0130  04 30 8d e5                                      str r3, [sp, #4]
004f0134  0f 00 00 1a                                      bne #0x4f0178
004f0138  79 30 84 e2                                      add r3, r4, #0x79
004f013c  7a 20 84 e2                                      add r2, r4, #0x7a
004f0140  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0144  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0148  02 00 53 e1                                      cmp r3, r2
004f014c  01 10 20 e0                                      eor r1, r0, r1
004f0150  01 10 43 e5                                      strb r1, [r3, #-1]
004f0154  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0158  00 10 21 e0                                      eor r1, r1, r0
004f015c  01 10 c2 e5                                      strb r1, [r2, #1]
004f0160  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0164  01 20 42 e2                                      sub r2, r2, #1
004f0168  00 10 21 e0                                      eor r1, r1, r0
004f016c  01 10 43 e5                                      strb r1, [r3, #-1]
004f0170  01 30 83 e2                                      add r3, r3, #1
004f0174  f1 ff ff 3a                                      blo #0x4f0140
004f0178  05 00 a0 e1                                      mov r0, r5
004f017c  7c 10 84 e2                                      add r1, r4, #0x7c
004f0180  c2 a3 fd eb                                      bl #0x459090
004f0184  01 30 a0 e3                                      mov r3, #1
004f0188  00 00 53 e3                                      cmp r3, #0
004f018c  04 30 8d e5                                      str r3, [sp, #4]
004f0190  0f 00 00 1a                                      bne #0x4f01d4
004f0194  7d 30 84 e2                                      add r3, r4, #0x7d
004f0198  7e 20 84 e2                                      add r2, r4, #0x7e
004f019c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f01a0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f01a4  02 00 53 e1                                      cmp r3, r2
004f01a8  01 10 20 e0                                      eor r1, r0, r1
004f01ac  01 10 43 e5                                      strb r1, [r3, #-1]
004f01b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f01b4  00 10 21 e0                                      eor r1, r1, r0
004f01b8  01 10 c2 e5                                      strb r1, [r2, #1]
004f01bc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f01c0  01 20 42 e2                                      sub r2, r2, #1
004f01c4  00 10 21 e0                                      eor r1, r1, r0
004f01c8  01 10 43 e5                                      strb r1, [r3, #-1]
004f01cc  01 30 83 e2                                      add r3, r3, #1
004f01d0  f1 ff ff 3a                                      blo #0x4f019c
004f01d4  05 00 a0 e1                                      mov r0, r5
004f01d8  80 10 84 e2                                      add r1, r4, #0x80
004f01dc  ab a3 fd eb                                      bl #0x459090
004f01e0  01 30 a0 e3                                      mov r3, #1
004f01e4  00 00 53 e3                                      cmp r3, #0
004f01e8  04 30 8d e5                                      str r3, [sp, #4]
004f01ec  0f 00 00 1a                                      bne #0x4f0230
004f01f0  81 30 84 e2                                      add r3, r4, #0x81
004f01f4  82 20 84 e2                                      add r2, r4, #0x82
004f01f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f01fc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0200  02 00 53 e1                                      cmp r3, r2
004f0204  01 10 20 e0                                      eor r1, r0, r1
004f0208  01 10 43 e5                                      strb r1, [r3, #-1]
004f020c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0210  00 10 21 e0                                      eor r1, r1, r0
004f0214  01 10 c2 e5                                      strb r1, [r2, #1]
004f0218  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f021c  01 20 42 e2                                      sub r2, r2, #1
004f0220  00 10 21 e0                                      eor r1, r1, r0
004f0224  01 10 43 e5                                      strb r1, [r3, #-1]
004f0228  01 30 83 e2                                      add r3, r3, #1
004f022c  f1 ff ff 3a                                      blo #0x4f01f8
004f0230  05 00 a0 e1                                      mov r0, r5
004f0234  84 10 84 e2                                      add r1, r4, #0x84
004f0238  d8 bb fb eb                                      bl #0x3df1a0
004f023c  01 30 a0 e3                                      mov r3, #1
004f0240  00 00 53 e3                                      cmp r3, #0
004f0244  04 30 8d e5                                      str r3, [sp, #4]
004f0248  0f 00 00 1a                                      bne #0x4f028c
004f024c  85 30 84 e2                                      add r3, r4, #0x85
004f0250  86 20 84 e2                                      add r2, r4, #0x86
004f0254  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0258  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f025c  03 00 52 e1                                      cmp r2, r3
004f0260  01 10 20 e0                                      eor r1, r0, r1
004f0264  01 10 43 e5                                      strb r1, [r3, #-1]
004f0268  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f026c  00 10 21 e0                                      eor r1, r1, r0
004f0270  01 10 c2 e5                                      strb r1, [r2, #1]
004f0274  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0278  01 20 42 e2                                      sub r2, r2, #1
004f027c  00 10 21 e0                                      eor r1, r1, r0
004f0280  01 10 43 e5                                      strb r1, [r3, #-1]
004f0284  01 30 83 e2                                      add r3, r3, #1
004f0288  f1 ff ff 8a                                      bhi #0x4f0254
004f028c  88 00 94 e5                                      ldr r0, [r4, #0x88]
004f0290  00 00 50 e3                                      cmp r0, #0
004f0294  00 00 00 0a                                      beq #0x4f029c
004f0298  68 80 f8 eb                                      bl #0x310440
004f029c  84 00 94 e5                                      ldr r0, [r4, #0x84]
004f02a0  01 10 a0 e3                                      mov r1, #1
004f02a4  00 01 a0 e1                                      lsl r0, r0, #2
004f02a8  af 80 f8 eb                                      bl #0x31056c
004f02ac  84 30 94 e5                                      ldr r3, [r4, #0x84]
004f02b0  88 00 84 e5                                      str r0, [r4, #0x88]
004f02b4  00 00 53 e3                                      cmp r3, #0
004f02b8  1f 00 00 0a                                      beq #0x4f033c
004f02bc  00 60 a0 e3                                      mov r6, #0
004f02c0  01 80 a0 e3                                      mov r8, #1
004f02c4  06 71 a0 e1                                      lsl r7, r6, #2
004f02c8  07 10 80 e0                                      add r1, r0, r7
004f02cc  05 00 a0 e1                                      mov r0, r5
004f02d0  6e a3 fd eb                                      bl #0x459090
004f02d4  04 80 8d e5                                      str r8, [sp, #4]
004f02d8  00 00 58 e3                                      cmp r8, #0
004f02dc  88 30 94 e5                                      ldr r3, [r4, #0x88]
004f02e0  10 00 00 1a                                      bne #0x4f0328
004f02e4  07 70 83 e0                                      add r7, r3, r7
004f02e8  02 30 87 e2                                      add r3, r7, #2
004f02ec  01 70 87 e2                                      add r7, r7, #1
004f02f0  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f02f4  01 20 57 e5                                      ldrb r2, [r7, #-1]
004f02f8  03 00 57 e1                                      cmp r7, r3
004f02fc  02 20 21 e0                                      eor r2, r1, r2
004f0300  01 20 47 e5                                      strb r2, [r7, #-1]
004f0304  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f0308  01 20 22 e0                                      eor r2, r2, r1
004f030c  01 20 c3 e5                                      strb r2, [r3, #1]
004f0310  01 10 57 e5                                      ldrb r1, [r7, #-1]
004f0314  01 30 43 e2                                      sub r3, r3, #1
004f0318  01 20 22 e0                                      eor r2, r2, r1
004f031c  01 20 47 e5                                      strb r2, [r7, #-1]
004f0320  01 70 87 e2                                      add r7, r7, #1
004f0324  f1 ff ff 3a                                      blo #0x4f02f0
004f0328  84 30 94 e5                                      ldr r3, [r4, #0x84]
004f032c  01 60 86 e2                                      add r6, r6, #1
004f0330  06 00 53 e1                                      cmp r3, r6
004f0334  88 00 94 85                                      ldrhi r0, [r4, #0x88]
004f0338  e1 ff ff 8a                                      bhi #0x4f02c4
004f033c  05 00 a0 e1                                      mov r0, r5
004f0340  8c 10 84 e2                                      add r1, r4, #0x8c
004f0344  51 a3 fd eb                                      bl #0x459090
004f0348  01 30 a0 e3                                      mov r3, #1
004f034c  00 00 53 e3                                      cmp r3, #0
004f0350  04 30 8d e5                                      str r3, [sp, #4]
004f0354  0f 00 00 1a                                      bne #0x4f0398
004f0358  8d 30 84 e2                                      add r3, r4, #0x8d
004f035c  8e 20 84 e2                                      add r2, r4, #0x8e
004f0360  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0364  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0368  03 00 52 e1                                      cmp r2, r3
004f036c  01 10 20 e0                                      eor r1, r0, r1
004f0370  01 10 43 e5                                      strb r1, [r3, #-1]
004f0374  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0378  00 10 21 e0                                      eor r1, r1, r0
004f037c  01 10 c2 e5                                      strb r1, [r2, #1]
004f0380  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0384  01 20 42 e2                                      sub r2, r2, #1
004f0388  00 10 21 e0                                      eor r1, r1, r0
004f038c  01 10 43 e5                                      strb r1, [r3, #-1]
004f0390  01 30 83 e2                                      add r3, r3, #1
004f0394  f1 ff ff 8a                                      bhi #0x4f0360
004f0398  05 00 a0 e1                                      mov r0, r5
004f039c  90 10 84 e2                                      add r1, r4, #0x90
004f03a0  3a a3 fd eb                                      bl #0x459090
004f03a4  01 30 a0 e3                                      mov r3, #1
004f03a8  00 00 53 e3                                      cmp r3, #0
004f03ac  04 30 8d e5                                      str r3, [sp, #4]
004f03b0  0f 00 00 1a                                      bne #0x4f03f4
004f03b4  91 30 84 e2                                      add r3, r4, #0x91
004f03b8  92 20 84 e2                                      add r2, r4, #0x92
004f03bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f03c0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f03c4  03 00 52 e1                                      cmp r2, r3
004f03c8  01 10 20 e0                                      eor r1, r0, r1
004f03cc  01 10 43 e5                                      strb r1, [r3, #-1]
004f03d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f03d4  00 10 21 e0                                      eor r1, r1, r0
004f03d8  01 10 c2 e5                                      strb r1, [r2, #1]
004f03dc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f03e0  01 20 42 e2                                      sub r2, r2, #1
004f03e4  00 10 21 e0                                      eor r1, r1, r0
004f03e8  01 10 43 e5                                      strb r1, [r3, #-1]
004f03ec  01 30 83 e2                                      add r3, r3, #1
004f03f0  f1 ff ff 8a                                      bhi #0x4f03bc
004f03f4  05 00 a0 e1                                      mov r0, r5
004f03f8  94 10 84 e2                                      add r1, r4, #0x94
004f03fc  23 a3 fd eb                                      bl #0x459090
004f0400  01 30 a0 e3                                      mov r3, #1
004f0404  00 00 53 e3                                      cmp r3, #0
004f0408  04 30 8d e5                                      str r3, [sp, #4]
004f040c  0f 00 00 1a                                      bne #0x4f0450
004f0410  95 30 84 e2                                      add r3, r4, #0x95
004f0414  96 20 84 e2                                      add r2, r4, #0x96
004f0418  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f041c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0420  02 00 53 e1                                      cmp r3, r2
004f0424  01 10 20 e0                                      eor r1, r0, r1
004f0428  01 10 43 e5                                      strb r1, [r3, #-1]
004f042c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0430  00 10 21 e0                                      eor r1, r1, r0
004f0434  01 10 c2 e5                                      strb r1, [r2, #1]
004f0438  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f043c  01 20 42 e2                                      sub r2, r2, #1
004f0440  00 10 21 e0                                      eor r1, r1, r0
004f0444  01 10 43 e5                                      strb r1, [r3, #-1]
004f0448  01 30 83 e2                                      add r3, r3, #1
004f044c  f1 ff ff 3a                                      blo #0x4f0418
004f0450  05 00 a0 e1                                      mov r0, r5
004f0454  98 10 84 e2                                      add r1, r4, #0x98
004f0458  0c a3 fd eb                                      bl #0x459090
004f045c  01 30 a0 e3                                      mov r3, #1
004f0460  00 00 53 e3                                      cmp r3, #0
004f0464  04 30 8d e5                                      str r3, [sp, #4]
004f0468  0f 00 00 1a                                      bne #0x4f04ac
004f046c  99 30 84 e2                                      add r3, r4, #0x99
004f0470  9a 20 84 e2                                      add r2, r4, #0x9a
004f0474  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0478  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f047c  02 00 53 e1                                      cmp r3, r2
004f0480  01 10 20 e0                                      eor r1, r0, r1
004f0484  01 10 43 e5                                      strb r1, [r3, #-1]
004f0488  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f048c  00 10 21 e0                                      eor r1, r1, r0
004f0490  01 10 c2 e5                                      strb r1, [r2, #1]
004f0494  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0498  01 20 42 e2                                      sub r2, r2, #1
004f049c  00 10 21 e0                                      eor r1, r1, r0
004f04a0  01 10 43 e5                                      strb r1, [r3, #-1]
004f04a4  01 30 83 e2                                      add r3, r3, #1
004f04a8  f1 ff ff 3a                                      blo #0x4f0474
004f04ac  05 00 a0 e1                                      mov r0, r5
004f04b0  9c 10 84 e2                                      add r1, r4, #0x9c
004f04b4  f5 a2 fd eb                                      bl #0x459090
004f04b8  01 30 a0 e3                                      mov r3, #1
004f04bc  00 00 53 e3                                      cmp r3, #0
004f04c0  04 30 8d e5                                      str r3, [sp, #4]
004f04c4  0f 00 00 1a                                      bne #0x4f0508
004f04c8  9e 30 84 e2                                      add r3, r4, #0x9e
004f04cc  9d 40 84 e2                                      add r4, r4, #0x9d
004f04d0  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f04d4  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f04d8  04 00 53 e1                                      cmp r3, r4
004f04dc  02 20 21 e0                                      eor r2, r1, r2
004f04e0  01 20 44 e5                                      strb r2, [r4, #-1]
004f04e4  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f04e8  01 20 22 e0                                      eor r2, r2, r1
004f04ec  01 20 c3 e5                                      strb r2, [r3, #1]
004f04f0  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f04f4  01 30 43 e2                                      sub r3, r3, #1
004f04f8  01 20 22 e0                                      eor r2, r2, r1
004f04fc  01 20 44 e5                                      strb r2, [r4, #-1]
004f0500  01 40 84 e2                                      add r4, r4, #1
004f0504  f1 ff ff 8a                                      bhi #0x4f04d0
004f0508  08 d0 8d e2                                      add sp, sp, #8
004f050c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
