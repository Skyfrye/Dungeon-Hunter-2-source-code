; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d44f4, declared_size=40, range_size=40, mode=arm
; class-group: Structs::ItemBase
; alias: _ZN7Structs8ItemBase8finalizeEv
; demangled: Structs::ItemBase::finalize()
; decoder-mode: arm
004d44f4  10 40 2d e9                                      push {r4, lr}
004d44f8  00 40 a0 e1                                      mov r4, r0
004d44fc  08 00 90 e5                                      ldr r0, [r0, #8]
004d4500  00 00 50 e3                                      cmp r0, #0
004d4504  03 00 00 0a                                      beq #0x4d4518
004d4508  cc ef f8 eb                                      bl #0x310440
004d450c  00 30 a0 e3                                      mov r3, #0
004d4510  04 30 84 e5                                      str r3, [r4, #4]
004d4514  08 30 84 e5                                      str r3, [r4, #8]
004d4518  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d48f8, declared_size=64, range_size=64, mode=arm
; class-group: Structs::ItemBase
; alias: _ZN7Structs8ItemBaseD1Ev
; demangled: Structs::ItemBase::~ItemBase()
; decoder-mode: arm
004d48f8  10 40 2d e9                                      push {r4, lr}
004d48fc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d4900  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d4904  00 40 a0 e1                                      mov r4, r0
004d4908  03 30 8f e0                                      add r3, pc, r3
004d490c  08 00 90 e5                                      ldr r0, [r0, #8]
004d4910  02 20 93 e7                                      ldr r2, [r3, r2]
004d4914  00 00 50 e3                                      cmp r0, #0
004d4918  08 20 82 e2                                      add r2, r2, #8
004d491c  00 20 84 e5                                      str r2, [r4]
004d4920  00 00 00 0a                                      beq #0x4d4928
004d4924  c5 ee f8 eb                                      bl #0x310440
004d4928  04 00 a0 e1                                      mov r0, r4
004d492c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d4930  88 01 4c 00 d8 26 00 00                          .byte 0x88, 0x01, 0x4c, 0x00, 0xd8, 0x26, 0x00, 0x00

; FUNCTION 0x004d4938, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemBase
; alias: _ZN7Structs8ItemBaseD0Ev
; demangled: Structs::ItemBase::~ItemBase()
; decoder-mode: arm
004d4938  10 40 2d e9                                      push {r4, lr}
004d493c  00 40 a0 e1                                      mov r4, r0
004d4940  ec ff ff eb                                      bl #0x4d48f8
004d4944  04 00 a0 e1                                      mov r0, r4
004d4948  bc ee f8 eb                                      bl #0x310440
004d494c  04 00 a0 e1                                      mov r0, r4
004d4950  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d4954, declared_size=64, range_size=64, mode=arm
; class-group: Structs::ItemBase
; alias: _ZN7Structs8ItemBaseD2Ev
; demangled: Structs::ItemBase::~ItemBase()
; decoder-mode: arm
004d4954  10 40 2d e9                                      push {r4, lr}
004d4958  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d495c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d4960  00 40 a0 e1                                      mov r4, r0
004d4964  03 30 8f e0                                      add r3, pc, r3
004d4968  08 00 90 e5                                      ldr r0, [r0, #8]
004d496c  02 20 93 e7                                      ldr r2, [r3, r2]
004d4970  00 00 50 e3                                      cmp r0, #0
004d4974  08 20 82 e2                                      add r2, r2, #8
004d4978  00 20 84 e5                                      str r2, [r4]
004d497c  00 00 00 0a                                      beq #0x4d4984
004d4980  ae ee f8 eb                                      bl #0x310440
004d4984  04 00 a0 e1                                      mov r0, r4
004d4988  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d498c  2c 01 4c 00 d8 26 00 00                          .byte 0x2c, 0x01, 0x4c, 0x00, 0xd8, 0x26, 0x00, 0x00

; FUNCTION 0x004ec47c, declared_size=1396, range_size=1396, mode=arm
; class-group: Structs::ItemBase
; alias: _ZN7Structs8ItemBase4readEP11IStreamBase
; demangled: Structs::ItemBase::read(IStreamBase*)
; decoder-mode: arm
004ec47c  70 40 2d e9                                      push {r4, r5, r6, lr}
004ec480  00 40 a0 e1                                      mov r4, r0
004ec484  08 d0 4d e2                                      sub sp, sp, #8
004ec488  01 00 a0 e1                                      mov r0, r1
004ec48c  01 50 a0 e1                                      mov r5, r1
004ec490  04 10 84 e2                                      add r1, r4, #4
004ec494  41 cb fb eb                                      bl #0x3df1a0
004ec498  01 30 a0 e3                                      mov r3, #1
004ec49c  00 00 53 e3                                      cmp r3, #0
004ec4a0  04 30 8d e5                                      str r3, [sp, #4]
004ec4a4  0f 00 00 1a                                      bne #0x4ec4e8
004ec4a8  05 30 84 e2                                      add r3, r4, #5
004ec4ac  06 20 84 e2                                      add r2, r4, #6
004ec4b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec4b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec4b8  02 00 53 e1                                      cmp r3, r2
004ec4bc  01 10 20 e0                                      eor r1, r0, r1
004ec4c0  01 10 43 e5                                      strb r1, [r3, #-1]
004ec4c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec4c8  00 10 21 e0                                      eor r1, r1, r0
004ec4cc  01 10 c2 e5                                      strb r1, [r2, #1]
004ec4d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec4d4  01 20 42 e2                                      sub r2, r2, #1
004ec4d8  00 10 21 e0                                      eor r1, r1, r0
004ec4dc  01 10 43 e5                                      strb r1, [r3, #-1]
004ec4e0  01 30 83 e2                                      add r3, r3, #1
004ec4e4  f1 ff ff 3a                                      blo #0x4ec4b0
004ec4e8  08 00 94 e5                                      ldr r0, [r4, #8]
004ec4ec  00 00 50 e3                                      cmp r0, #0
004ec4f0  00 00 00 0a                                      beq #0x4ec4f8
004ec4f4  d1 8f f8 eb                                      bl #0x310440
004ec4f8  04 00 94 e5                                      ldr r0, [r4, #4]
004ec4fc  01 10 a0 e3                                      mov r1, #1
004ec500  00 60 a0 e3                                      mov r6, #0
004ec504  01 00 80 e0                                      add r0, r0, r1
004ec508  17 90 f8 eb                                      bl #0x31056c
004ec50c  04 20 94 e5                                      ldr r2, [r4, #4]
004ec510  00 10 a0 e1                                      mov r1, r0
004ec514  08 00 84 e5                                      str r0, [r4, #8]
004ec518  06 30 a0 e1                                      mov r3, r6
004ec51c  05 00 a0 e1                                      mov r0, r5
004ec520  cb ab f8 eb                                      bl #0x317454
004ec524  04 30 94 e5                                      ldr r3, [r4, #4]
004ec528  08 20 94 e5                                      ldr r2, [r4, #8]
004ec52c  05 00 a0 e1                                      mov r0, r5
004ec530  0c 10 84 e2                                      add r1, r4, #0xc
004ec534  03 60 c2 e7                                      strb r6, [r2, r3]
004ec538  d4 b2 fd eb                                      bl #0x459090
004ec53c  01 30 a0 e3                                      mov r3, #1
004ec540  06 00 53 e1                                      cmp r3, r6
004ec544  04 30 8d e5                                      str r3, [sp, #4]
004ec548  0f 00 00 1a                                      bne #0x4ec58c
004ec54c  0d 30 84 e2                                      add r3, r4, #0xd
004ec550  0e 20 84 e2                                      add r2, r4, #0xe
004ec554  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec558  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec55c  02 00 53 e1                                      cmp r3, r2
004ec560  01 10 20 e0                                      eor r1, r0, r1
004ec564  01 10 43 e5                                      strb r1, [r3, #-1]
004ec568  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec56c  00 10 21 e0                                      eor r1, r1, r0
004ec570  01 10 c2 e5                                      strb r1, [r2, #1]
004ec574  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec578  01 20 42 e2                                      sub r2, r2, #1
004ec57c  00 10 21 e0                                      eor r1, r1, r0
004ec580  01 10 43 e5                                      strb r1, [r3, #-1]
004ec584  01 30 83 e2                                      add r3, r3, #1
004ec588  f1 ff ff 3a                                      blo #0x4ec554
004ec58c  05 00 a0 e1                                      mov r0, r5
004ec590  10 10 84 e2                                      add r1, r4, #0x10
004ec594  bd b2 fd eb                                      bl #0x459090
004ec598  01 30 a0 e3                                      mov r3, #1
004ec59c  00 00 53 e3                                      cmp r3, #0
004ec5a0  04 30 8d e5                                      str r3, [sp, #4]
004ec5a4  0f 00 00 1a                                      bne #0x4ec5e8
004ec5a8  11 30 84 e2                                      add r3, r4, #0x11
004ec5ac  12 20 84 e2                                      add r2, r4, #0x12
004ec5b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec5b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec5b8  02 00 53 e1                                      cmp r3, r2
004ec5bc  01 10 20 e0                                      eor r1, r0, r1
004ec5c0  01 10 43 e5                                      strb r1, [r3, #-1]
004ec5c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec5c8  00 10 21 e0                                      eor r1, r1, r0
004ec5cc  01 10 c2 e5                                      strb r1, [r2, #1]
004ec5d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec5d4  01 20 42 e2                                      sub r2, r2, #1
004ec5d8  00 10 21 e0                                      eor r1, r1, r0
004ec5dc  01 10 43 e5                                      strb r1, [r3, #-1]
004ec5e0  01 30 83 e2                                      add r3, r3, #1
004ec5e4  f1 ff ff 3a                                      blo #0x4ec5b0
004ec5e8  05 00 a0 e1                                      mov r0, r5
004ec5ec  14 10 84 e2                                      add r1, r4, #0x14
004ec5f0  a6 b2 fd eb                                      bl #0x459090
004ec5f4  01 30 a0 e3                                      mov r3, #1
004ec5f8  00 00 53 e3                                      cmp r3, #0
004ec5fc  04 30 8d e5                                      str r3, [sp, #4]
004ec600  0f 00 00 1a                                      bne #0x4ec644
004ec604  15 30 84 e2                                      add r3, r4, #0x15
004ec608  16 20 84 e2                                      add r2, r4, #0x16
004ec60c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec610  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec614  02 00 53 e1                                      cmp r3, r2
004ec618  01 10 20 e0                                      eor r1, r0, r1
004ec61c  01 10 43 e5                                      strb r1, [r3, #-1]
004ec620  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec624  00 10 21 e0                                      eor r1, r1, r0
004ec628  01 10 c2 e5                                      strb r1, [r2, #1]
004ec62c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec630  01 20 42 e2                                      sub r2, r2, #1
004ec634  00 10 21 e0                                      eor r1, r1, r0
004ec638  01 10 43 e5                                      strb r1, [r3, #-1]
004ec63c  01 30 83 e2                                      add r3, r3, #1
004ec640  f1 ff ff 3a                                      blo #0x4ec60c
004ec644  05 00 a0 e1                                      mov r0, r5
004ec648  18 10 84 e2                                      add r1, r4, #0x18
004ec64c  8f b2 fd eb                                      bl #0x459090
004ec650  01 30 a0 e3                                      mov r3, #1
004ec654  00 00 53 e3                                      cmp r3, #0
004ec658  04 30 8d e5                                      str r3, [sp, #4]
004ec65c  0f 00 00 1a                                      bne #0x4ec6a0
004ec660  19 30 84 e2                                      add r3, r4, #0x19
004ec664  1a 20 84 e2                                      add r2, r4, #0x1a
004ec668  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec66c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec670  02 00 53 e1                                      cmp r3, r2
004ec674  01 10 20 e0                                      eor r1, r0, r1
004ec678  01 10 43 e5                                      strb r1, [r3, #-1]
004ec67c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec680  00 10 21 e0                                      eor r1, r1, r0
004ec684  01 10 c2 e5                                      strb r1, [r2, #1]
004ec688  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec68c  01 20 42 e2                                      sub r2, r2, #1
004ec690  00 10 21 e0                                      eor r1, r1, r0
004ec694  01 10 43 e5                                      strb r1, [r3, #-1]
004ec698  01 30 83 e2                                      add r3, r3, #1
004ec69c  f1 ff ff 3a                                      blo #0x4ec668
004ec6a0  1c 10 84 e2                                      add r1, r4, #0x1c
004ec6a4  05 00 a0 e1                                      mov r0, r5
004ec6a8  7b bc ff eb                                      bl #0x4db89c
004ec6ac  05 00 a0 e1                                      mov r0, r5
004ec6b0  20 10 84 e2                                      add r1, r4, #0x20
004ec6b4  a4 bc ff eb                                      bl #0x4db94c
004ec6b8  01 30 a0 e3                                      mov r3, #1
004ec6bc  00 00 53 e3                                      cmp r3, #0
004ec6c0  04 30 8d e5                                      str r3, [sp, #4]
004ec6c4  0f 00 00 1a                                      bne #0x4ec708
004ec6c8  21 30 84 e2                                      add r3, r4, #0x21
004ec6cc  22 20 84 e2                                      add r2, r4, #0x22
004ec6d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec6d4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec6d8  02 00 53 e1                                      cmp r3, r2
004ec6dc  01 10 20 e0                                      eor r1, r0, r1
004ec6e0  01 10 43 e5                                      strb r1, [r3, #-1]
004ec6e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec6e8  00 10 21 e0                                      eor r1, r1, r0
004ec6ec  01 10 c2 e5                                      strb r1, [r2, #1]
004ec6f0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec6f4  01 20 42 e2                                      sub r2, r2, #1
004ec6f8  00 10 21 e0                                      eor r1, r1, r0
004ec6fc  01 10 43 e5                                      strb r1, [r3, #-1]
004ec700  01 30 83 e2                                      add r3, r3, #1
004ec704  f1 ff ff 3a                                      blo #0x4ec6d0
004ec708  05 00 a0 e1                                      mov r0, r5
004ec70c  24 10 84 e2                                      add r1, r4, #0x24
004ec710  8d bc ff eb                                      bl #0x4db94c
004ec714  01 30 a0 e3                                      mov r3, #1
004ec718  00 00 53 e3                                      cmp r3, #0
004ec71c  04 30 8d e5                                      str r3, [sp, #4]
004ec720  0f 00 00 1a                                      bne #0x4ec764
004ec724  25 30 84 e2                                      add r3, r4, #0x25
004ec728  26 20 84 e2                                      add r2, r4, #0x26
004ec72c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec730  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec734  02 00 53 e1                                      cmp r3, r2
004ec738  01 10 20 e0                                      eor r1, r0, r1
004ec73c  01 10 43 e5                                      strb r1, [r3, #-1]
004ec740  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec744  00 10 21 e0                                      eor r1, r1, r0
004ec748  01 10 c2 e5                                      strb r1, [r2, #1]
004ec74c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec750  01 20 42 e2                                      sub r2, r2, #1
004ec754  00 10 21 e0                                      eor r1, r1, r0
004ec758  01 10 43 e5                                      strb r1, [r3, #-1]
004ec75c  01 30 83 e2                                      add r3, r3, #1
004ec760  f1 ff ff 3a                                      blo #0x4ec72c
004ec764  05 00 a0 e1                                      mov r0, r5
004ec768  28 10 84 e2                                      add r1, r4, #0x28
004ec76c  76 bc ff eb                                      bl #0x4db94c
004ec770  01 30 a0 e3                                      mov r3, #1
004ec774  00 00 53 e3                                      cmp r3, #0
004ec778  04 30 8d e5                                      str r3, [sp, #4]
004ec77c  0f 00 00 1a                                      bne #0x4ec7c0
004ec780  29 30 84 e2                                      add r3, r4, #0x29
004ec784  2a 20 84 e2                                      add r2, r4, #0x2a
004ec788  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec78c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec790  02 00 53 e1                                      cmp r3, r2
004ec794  01 10 20 e0                                      eor r1, r0, r1
004ec798  01 10 43 e5                                      strb r1, [r3, #-1]
004ec79c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec7a0  00 10 21 e0                                      eor r1, r1, r0
004ec7a4  01 10 c2 e5                                      strb r1, [r2, #1]
004ec7a8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec7ac  01 20 42 e2                                      sub r2, r2, #1
004ec7b0  00 10 21 e0                                      eor r1, r1, r0
004ec7b4  01 10 43 e5                                      strb r1, [r3, #-1]
004ec7b8  01 30 83 e2                                      add r3, r3, #1
004ec7bc  f1 ff ff 3a                                      blo #0x4ec788
004ec7c0  05 00 a0 e1                                      mov r0, r5
004ec7c4  2c 10 84 e2                                      add r1, r4, #0x2c
004ec7c8  5f bc ff eb                                      bl #0x4db94c
004ec7cc  01 30 a0 e3                                      mov r3, #1
004ec7d0  00 00 53 e3                                      cmp r3, #0
004ec7d4  04 30 8d e5                                      str r3, [sp, #4]
004ec7d8  0f 00 00 1a                                      bne #0x4ec81c
004ec7dc  2d 30 84 e2                                      add r3, r4, #0x2d
004ec7e0  2e 20 84 e2                                      add r2, r4, #0x2e
004ec7e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec7e8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec7ec  02 00 53 e1                                      cmp r3, r2
004ec7f0  01 10 20 e0                                      eor r1, r0, r1
004ec7f4  01 10 43 e5                                      strb r1, [r3, #-1]
004ec7f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec7fc  00 10 21 e0                                      eor r1, r1, r0
004ec800  01 10 c2 e5                                      strb r1, [r2, #1]
004ec804  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec808  01 20 42 e2                                      sub r2, r2, #1
004ec80c  00 10 21 e0                                      eor r1, r1, r0
004ec810  01 10 43 e5                                      strb r1, [r3, #-1]
004ec814  01 30 83 e2                                      add r3, r3, #1
004ec818  f1 ff ff 3a                                      blo #0x4ec7e4
004ec81c  05 00 a0 e1                                      mov r0, r5
004ec820  30 10 84 e2                                      add r1, r4, #0x30
004ec824  48 bc ff eb                                      bl #0x4db94c
004ec828  01 30 a0 e3                                      mov r3, #1
004ec82c  00 00 53 e3                                      cmp r3, #0
004ec830  04 30 8d e5                                      str r3, [sp, #4]
004ec834  0f 00 00 1a                                      bne #0x4ec878
004ec838  31 30 84 e2                                      add r3, r4, #0x31
004ec83c  32 20 84 e2                                      add r2, r4, #0x32
004ec840  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec844  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec848  02 00 53 e1                                      cmp r3, r2
004ec84c  01 10 20 e0                                      eor r1, r0, r1
004ec850  01 10 43 e5                                      strb r1, [r3, #-1]
004ec854  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec858  00 10 21 e0                                      eor r1, r1, r0
004ec85c  01 10 c2 e5                                      strb r1, [r2, #1]
004ec860  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec864  01 20 42 e2                                      sub r2, r2, #1
004ec868  00 10 21 e0                                      eor r1, r1, r0
004ec86c  01 10 43 e5                                      strb r1, [r3, #-1]
004ec870  01 30 83 e2                                      add r3, r3, #1
004ec874  f1 ff ff 3a                                      blo #0x4ec840
004ec878  05 00 a0 e1                                      mov r0, r5
004ec87c  34 10 84 e2                                      add r1, r4, #0x34
004ec880  31 bc ff eb                                      bl #0x4db94c
004ec884  01 30 a0 e3                                      mov r3, #1
004ec888  00 00 53 e3                                      cmp r3, #0
004ec88c  04 30 8d e5                                      str r3, [sp, #4]
004ec890  0f 00 00 1a                                      bne #0x4ec8d4
004ec894  35 30 84 e2                                      add r3, r4, #0x35
004ec898  36 20 84 e2                                      add r2, r4, #0x36
004ec89c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec8a0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec8a4  02 00 53 e1                                      cmp r3, r2
004ec8a8  01 10 20 e0                                      eor r1, r0, r1
004ec8ac  01 10 43 e5                                      strb r1, [r3, #-1]
004ec8b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec8b4  00 10 21 e0                                      eor r1, r1, r0
004ec8b8  01 10 c2 e5                                      strb r1, [r2, #1]
004ec8bc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec8c0  01 20 42 e2                                      sub r2, r2, #1
004ec8c4  00 10 21 e0                                      eor r1, r1, r0
004ec8c8  01 10 43 e5                                      strb r1, [r3, #-1]
004ec8cc  01 30 83 e2                                      add r3, r3, #1
004ec8d0  f1 ff ff 3a                                      blo #0x4ec89c
004ec8d4  05 00 a0 e1                                      mov r0, r5
004ec8d8  38 10 84 e2                                      add r1, r4, #0x38
004ec8dc  1a bc ff eb                                      bl #0x4db94c
004ec8e0  01 30 a0 e3                                      mov r3, #1
004ec8e4  00 00 53 e3                                      cmp r3, #0
004ec8e8  04 30 8d e5                                      str r3, [sp, #4]
004ec8ec  0f 00 00 1a                                      bne #0x4ec930
004ec8f0  39 30 84 e2                                      add r3, r4, #0x39
004ec8f4  3a 20 84 e2                                      add r2, r4, #0x3a
004ec8f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec8fc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec900  02 00 53 e1                                      cmp r3, r2
004ec904  01 10 20 e0                                      eor r1, r0, r1
004ec908  01 10 43 e5                                      strb r1, [r3, #-1]
004ec90c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec910  00 10 21 e0                                      eor r1, r1, r0
004ec914  01 10 c2 e5                                      strb r1, [r2, #1]
004ec918  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec91c  01 20 42 e2                                      sub r2, r2, #1
004ec920  00 10 21 e0                                      eor r1, r1, r0
004ec924  01 10 43 e5                                      strb r1, [r3, #-1]
004ec928  01 30 83 e2                                      add r3, r3, #1
004ec92c  f1 ff ff 3a                                      blo #0x4ec8f8
004ec930  05 00 a0 e1                                      mov r0, r5
004ec934  3c 10 84 e2                                      add r1, r4, #0x3c
004ec938  03 bc ff eb                                      bl #0x4db94c
004ec93c  01 30 a0 e3                                      mov r3, #1
004ec940  00 00 53 e3                                      cmp r3, #0
004ec944  04 30 8d e5                                      str r3, [sp, #4]
004ec948  0f 00 00 1a                                      bne #0x4ec98c
004ec94c  3d 30 84 e2                                      add r3, r4, #0x3d
004ec950  3e 20 84 e2                                      add r2, r4, #0x3e
004ec954  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec958  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec95c  02 00 53 e1                                      cmp r3, r2
004ec960  01 10 20 e0                                      eor r1, r0, r1
004ec964  01 10 43 e5                                      strb r1, [r3, #-1]
004ec968  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec96c  00 10 21 e0                                      eor r1, r1, r0
004ec970  01 10 c2 e5                                      strb r1, [r2, #1]
004ec974  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec978  01 20 42 e2                                      sub r2, r2, #1
004ec97c  00 10 21 e0                                      eor r1, r1, r0
004ec980  01 10 43 e5                                      strb r1, [r3, #-1]
004ec984  01 30 83 e2                                      add r3, r3, #1
004ec988  f1 ff ff 3a                                      blo #0x4ec954
004ec98c  05 00 a0 e1                                      mov r0, r5
004ec990  40 10 84 e2                                      add r1, r4, #0x40
004ec994  ec bb ff eb                                      bl #0x4db94c
004ec998  01 30 a0 e3                                      mov r3, #1
004ec99c  00 00 53 e3                                      cmp r3, #0
004ec9a0  04 30 8d e5                                      str r3, [sp, #4]
004ec9a4  0f 00 00 1a                                      bne #0x4ec9e8
004ec9a8  42 30 84 e2                                      add r3, r4, #0x42
004ec9ac  41 40 84 e2                                      add r4, r4, #0x41
004ec9b0  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ec9b4  01 20 54 e5                                      ldrb r2, [r4, #-1]
004ec9b8  03 00 54 e1                                      cmp r4, r3
004ec9bc  02 20 21 e0                                      eor r2, r1, r2
004ec9c0  01 20 44 e5                                      strb r2, [r4, #-1]
004ec9c4  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ec9c8  01 20 22 e0                                      eor r2, r2, r1
004ec9cc  01 20 c3 e5                                      strb r2, [r3, #1]
004ec9d0  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ec9d4  01 30 43 e2                                      sub r3, r3, #1
004ec9d8  01 20 22 e0                                      eor r2, r2, r1
004ec9dc  01 20 44 e5                                      strb r2, [r4, #-1]
004ec9e0  01 40 84 e2                                      add r4, r4, #1
004ec9e4  f1 ff ff 3a                                      blo #0x4ec9b0
004ec9e8  08 d0 8d e2                                      add sp, sp, #8
004ec9ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
