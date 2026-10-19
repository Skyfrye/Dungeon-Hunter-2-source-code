; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004da580, declared_size=104, range_size=104, mode=arm
; class-group: Structs::AnimFXTpl
; alias: _ZN7Structs9AnimFXTpl8finalizeEv
; demangled: Structs::AnimFXTpl::finalize()
; decoder-mode: arm
004da580  70 40 2d e9                                      push {r4, r5, r6, lr}
004da584  10 30 90 e5                                      ldr r3, [r0, #0x10]
004da588  00 50 a0 e1                                      mov r5, r0
004da58c  00 00 53 e3                                      cmp r3, #0
004da590  13 00 00 0a                                      beq #0x4da5e4
004da594  04 20 13 e5                                      ldr r2, [r3, #-4]
004da598  30 00 a0 e3                                      mov r0, #0x30
004da59c  90 32 20 e0                                      mla r0, r0, r2, r3
004da5a0  00 00 53 e1                                      cmp r3, r0
004da5a4  01 00 00 1a                                      bne #0x4da5b0
004da5a8  08 00 00 ea                                      b #0x4da5d0
004da5ac  04 00 a0 e1                                      mov r0, r4
004da5b0  30 40 40 e2                                      sub r4, r0, #0x30
004da5b4  30 30 10 e5                                      ldr r3, [r0, #-0x30]
004da5b8  04 00 a0 e1                                      mov r0, r4
004da5bc  0f e0 a0 e1                                      mov lr, pc
004da5c0  00 f0 93 e5                                      ldr pc, [r3]
004da5c4  10 00 95 e5                                      ldr r0, [r5, #0x10]
004da5c8  04 00 50 e1                                      cmp r0, r4
004da5cc  f6 ff ff 1a                                      bne #0x4da5ac
004da5d0  08 00 40 e2                                      sub r0, r0, #8
004da5d4  99 d7 f8 eb                                      bl #0x310440
004da5d8  00 30 a0 e3                                      mov r3, #0
004da5dc  0c 30 85 e5                                      str r3, [r5, #0xc]
004da5e0  10 30 85 e5                                      str r3, [r5, #0x10]
004da5e4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004da5e8, declared_size=128, range_size=128, mode=arm
; class-group: Structs::AnimFXTpl
; alias: _ZN7Structs9AnimFXTplD1Ev
; demangled: Structs::AnimFXTpl::~AnimFXTpl()
; decoder-mode: arm
004da5e8  70 40 2d e9                                      push {r4, r5, r6, lr}
004da5ec  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004da5f0  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004da5f4  10 10 90 e5                                      ldr r1, [r0, #0x10]
004da5f8  03 30 8f e0                                      add r3, pc, r3
004da5fc  02 20 93 e7                                      ldr r2, [r3, r2]
004da600  00 00 51 e3                                      cmp r1, #0
004da604  00 50 a0 e1                                      mov r5, r0
004da608  08 20 82 e2                                      add r2, r2, #8
004da60c  00 20 80 e5                                      str r2, [r0]
004da610  10 00 00 0a                                      beq #0x4da658
004da614  04 30 11 e5                                      ldr r3, [r1, #-4]
004da618  30 00 a0 e3                                      mov r0, #0x30
004da61c  90 13 20 e0                                      mla r0, r0, r3, r1
004da620  00 00 51 e1                                      cmp r1, r0
004da624  01 00 00 1a                                      bne #0x4da630
004da628  08 00 00 ea                                      b #0x4da650
004da62c  04 00 a0 e1                                      mov r0, r4
004da630  30 40 40 e2                                      sub r4, r0, #0x30
004da634  30 30 10 e5                                      ldr r3, [r0, #-0x30]
004da638  04 00 a0 e1                                      mov r0, r4
004da63c  0f e0 a0 e1                                      mov lr, pc
004da640  00 f0 93 e5                                      ldr pc, [r3]
004da644  10 00 95 e5                                      ldr r0, [r5, #0x10]
004da648  04 00 50 e1                                      cmp r0, r4
004da64c  f6 ff ff 1a                                      bne #0x4da62c
004da650  08 00 40 e2                                      sub r0, r0, #8
004da654  79 d7 f8 eb                                      bl #0x310440
004da658  05 00 a0 e1                                      mov r0, r5
004da65c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004da660  98 a4 4b 00 bc 1f 00 00                          .byte 0x98, 0xa4, 0x4b, 0x00, 0xbc, 0x1f, 0x00, 0x00

; FUNCTION 0x004da668, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AnimFXTpl
; alias: _ZN7Structs9AnimFXTplD0Ev
; demangled: Structs::AnimFXTpl::~AnimFXTpl()
; decoder-mode: arm
004da668  10 40 2d e9                                      push {r4, lr}
004da66c  00 40 a0 e1                                      mov r4, r0
004da670  dc ff ff eb                                      bl #0x4da5e8
004da674  04 00 a0 e1                                      mov r0, r4
004da678  70 d7 f8 eb                                      bl #0x310440
004da67c  04 00 a0 e1                                      mov r0, r4
004da680  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004da684, declared_size=128, range_size=128, mode=arm
; class-group: Structs::AnimFXTpl
; alias: _ZN7Structs9AnimFXTplD2Ev
; demangled: Structs::AnimFXTpl::~AnimFXTpl()
; decoder-mode: arm
004da684  70 40 2d e9                                      push {r4, r5, r6, lr}
004da688  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004da68c  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004da690  10 10 90 e5                                      ldr r1, [r0, #0x10]
004da694  03 30 8f e0                                      add r3, pc, r3
004da698  02 20 93 e7                                      ldr r2, [r3, r2]
004da69c  00 00 51 e3                                      cmp r1, #0
004da6a0  00 50 a0 e1                                      mov r5, r0
004da6a4  08 20 82 e2                                      add r2, r2, #8
004da6a8  00 20 80 e5                                      str r2, [r0]
004da6ac  10 00 00 0a                                      beq #0x4da6f4
004da6b0  04 30 11 e5                                      ldr r3, [r1, #-4]
004da6b4  30 00 a0 e3                                      mov r0, #0x30
004da6b8  90 13 20 e0                                      mla r0, r0, r3, r1
004da6bc  00 00 51 e1                                      cmp r1, r0
004da6c0  01 00 00 1a                                      bne #0x4da6cc
004da6c4  08 00 00 ea                                      b #0x4da6ec
004da6c8  04 00 a0 e1                                      mov r0, r4
004da6cc  30 40 40 e2                                      sub r4, r0, #0x30
004da6d0  30 30 10 e5                                      ldr r3, [r0, #-0x30]
004da6d4  04 00 a0 e1                                      mov r0, r4
004da6d8  0f e0 a0 e1                                      mov lr, pc
004da6dc  00 f0 93 e5                                      ldr pc, [r3]
004da6e0  10 00 95 e5                                      ldr r0, [r5, #0x10]
004da6e4  04 00 50 e1                                      cmp r0, r4
004da6e8  f6 ff ff 1a                                      bne #0x4da6c8
004da6ec  08 00 40 e2                                      sub r0, r0, #8
004da6f0  52 d7 f8 eb                                      bl #0x310440
004da6f4  05 00 a0 e1                                      mov r0, r5
004da6f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004da6fc  fc a3 4b 00 bc 1f 00 00                          .byte 0xfc, 0xa3, 0x4b, 0x00, 0xbc, 0x1f, 0x00, 0x00

; FUNCTION 0x004ed73c, declared_size=572, range_size=572, mode=arm
; class-group: Structs::AnimFXTpl
; alias: _ZN7Structs9AnimFXTpl4readEP11IStreamBase
; demangled: Structs::AnimFXTpl::read(IStreamBase*)
; decoder-mode: arm
004ed73c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004ed740  00 50 a0 e1                                      mov r5, r0
004ed744  0c d0 4d e2                                      sub sp, sp, #0xc
004ed748  01 00 a0 e1                                      mov r0, r1
004ed74c  01 70 a0 e1                                      mov r7, r1
004ed750  04 10 85 e2                                      add r1, r5, #4
004ed754  50 b8 ff eb                                      bl #0x4db89c
004ed758  10 62 9f e5                                      ldr r6, [pc, #0x210]
004ed75c  07 00 a0 e1                                      mov r0, r7
004ed760  08 10 85 e2                                      add r1, r5, #8
004ed764  49 ae fd eb                                      bl #0x459090
004ed768  01 30 a0 e3                                      mov r3, #1
004ed76c  00 00 53 e3                                      cmp r3, #0
004ed770  04 30 8d e5                                      str r3, [sp, #4]
004ed774  06 60 8f e0                                      add r6, pc, r6
004ed778  0f 00 00 1a                                      bne #0x4ed7bc
004ed77c  09 30 85 e2                                      add r3, r5, #9
004ed780  0a 20 85 e2                                      add r2, r5, #0xa
004ed784  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed788  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ed78c  03 00 52 e1                                      cmp r2, r3
004ed790  01 10 20 e0                                      eor r1, r0, r1
004ed794  01 10 43 e5                                      strb r1, [r3, #-1]
004ed798  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed79c  00 10 21 e0                                      eor r1, r1, r0
004ed7a0  01 10 c2 e5                                      strb r1, [r2, #1]
004ed7a4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ed7a8  01 20 42 e2                                      sub r2, r2, #1
004ed7ac  00 10 21 e0                                      eor r1, r1, r0
004ed7b0  01 10 43 e5                                      strb r1, [r3, #-1]
004ed7b4  01 30 83 e2                                      add r3, r3, #1
004ed7b8  f1 ff ff 8a                                      bhi #0x4ed784
004ed7bc  07 00 a0 e1                                      mov r0, r7
004ed7c0  0c 10 85 e2                                      add r1, r5, #0xc
004ed7c4  75 c6 fb eb                                      bl #0x3df1a0
004ed7c8  01 30 a0 e3                                      mov r3, #1
004ed7cc  00 00 53 e3                                      cmp r3, #0
004ed7d0  04 30 8d e5                                      str r3, [sp, #4]
004ed7d4  0f 00 00 1a                                      bne #0x4ed818
004ed7d8  0d 30 85 e2                                      add r3, r5, #0xd
004ed7dc  0e 20 85 e2                                      add r2, r5, #0xe
004ed7e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed7e4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ed7e8  02 00 53 e1                                      cmp r3, r2
004ed7ec  01 10 20 e0                                      eor r1, r0, r1
004ed7f0  01 10 43 e5                                      strb r1, [r3, #-1]
004ed7f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed7f8  00 10 21 e0                                      eor r1, r1, r0
004ed7fc  01 10 c2 e5                                      strb r1, [r2, #1]
004ed800  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ed804  01 20 42 e2                                      sub r2, r2, #1
004ed808  00 10 21 e0                                      eor r1, r1, r0
004ed80c  01 10 43 e5                                      strb r1, [r3, #-1]
004ed810  01 30 83 e2                                      add r3, r3, #1
004ed814  f1 ff ff 3a                                      blo #0x4ed7e0
004ed818  10 30 95 e5                                      ldr r3, [r5, #0x10]
004ed81c  00 00 53 e3                                      cmp r3, #0
004ed820  10 00 00 0a                                      beq #0x4ed868
004ed824  04 20 13 e5                                      ldr r2, [r3, #-4]
004ed828  30 00 a0 e3                                      mov r0, #0x30
004ed82c  90 32 20 e0                                      mla r0, r0, r2, r3
004ed830  00 00 53 e1                                      cmp r3, r0
004ed834  01 00 00 1a                                      bne #0x4ed840
004ed838  08 00 00 ea                                      b #0x4ed860
004ed83c  04 00 a0 e1                                      mov r0, r4
004ed840  30 40 40 e2                                      sub r4, r0, #0x30
004ed844  30 30 10 e5                                      ldr r3, [r0, #-0x30]
004ed848  04 00 a0 e1                                      mov r0, r4
004ed84c  0f e0 a0 e1                                      mov lr, pc
004ed850  00 f0 93 e5                                      ldr pc, [r3]
004ed854  10 00 95 e5                                      ldr r0, [r5, #0x10]
004ed858  04 00 50 e1                                      cmp r0, r4
004ed85c  f6 ff ff 1a                                      bne #0x4ed83c
004ed860  08 00 40 e2                                      sub r0, r0, #8
004ed864  f5 8a f8 eb                                      bl #0x310440
004ed868  0c 40 95 e5                                      ldr r4, [r5, #0xc]
004ed86c  06 00 a0 e3                                      mov r0, #6
004ed870  01 10 a0 e3                                      mov r1, #1
004ed874  90 04 00 e0                                      mul r0, r0, r4
004ed878  01 00 80 e0                                      add r0, r0, r1
004ed87c  80 01 a0 e1                                      lsl r0, r0, #3
004ed880  39 8b f8 eb                                      bl #0x31056c
004ed884  30 30 a0 e3                                      mov r3, #0x30
004ed888  00 00 54 e3                                      cmp r4, #0
004ed88c  18 00 80 e8                                      stm r0, {r3, r4}
004ed890  08 30 80 e2                                      add r3, r0, #8
004ed894  0a 00 00 0a                                      beq #0x4ed8c4
004ed898  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
004ed89c  00 20 a0 e3                                      mov r2, #0
004ed8a0  02 c0 a0 e1                                      mov ip, r2
004ed8a4  01 10 96 e7                                      ldr r1, [r6, r1]
004ed8a8  08 10 81 e2                                      add r1, r1, #8
004ed8ac  01 20 82 e2                                      add r2, r2, #1
004ed8b0  04 00 52 e1                                      cmp r2, r4
004ed8b4  08 10 80 e5                                      str r1, [r0, #8]
004ed8b8  34 c0 80 e5                                      str ip, [r0, #0x34]
004ed8bc  30 00 80 e2                                      add r0, r0, #0x30
004ed8c0  f9 ff ff 1a                                      bne #0x4ed8ac
004ed8c4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
004ed8c8  10 30 85 e5                                      str r3, [r5, #0x10]
004ed8cc  00 00 52 e3                                      cmp r2, #0
004ed8d0  0d 00 00 0a                                      beq #0x4ed90c
004ed8d4  00 40 a0 e3                                      mov r4, #0
004ed8d8  04 60 a0 e1                                      mov r6, r4
004ed8dc  00 00 00 ea                                      b #0x4ed8e4
004ed8e0  10 30 95 e5                                      ldr r3, [r5, #0x10]
004ed8e4  04 00 83 e0                                      add r0, r3, r4
004ed8e8  07 10 a0 e1                                      mov r1, r7
004ed8ec  04 30 93 e7                                      ldr r3, [r3, r4]
004ed8f0  0f e0 a0 e1                                      mov lr, pc
004ed8f4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004ed8f8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004ed8fc  01 60 86 e2                                      add r6, r6, #1
004ed900  30 40 84 e2                                      add r4, r4, #0x30
004ed904  06 00 53 e1                                      cmp r3, r6
004ed908  f4 ff ff 8a                                      bhi #0x4ed8e0
004ed90c  07 00 a0 e1                                      mov r0, r7
004ed910  14 10 85 e2                                      add r1, r5, #0x14
004ed914  dd ad fd eb                                      bl #0x459090
004ed918  01 30 a0 e3                                      mov r3, #1
004ed91c  00 00 53 e3                                      cmp r3, #0
004ed920  04 30 8d e5                                      str r3, [sp, #4]
004ed924  0f 00 00 1a                                      bne #0x4ed968
004ed928  16 30 85 e2                                      add r3, r5, #0x16
004ed92c  15 50 85 e2                                      add r5, r5, #0x15
004ed930  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ed934  01 20 55 e5                                      ldrb r2, [r5, #-1]
004ed938  05 00 53 e1                                      cmp r3, r5
004ed93c  02 20 21 e0                                      eor r2, r1, r2
004ed940  01 20 45 e5                                      strb r2, [r5, #-1]
004ed944  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ed948  01 20 22 e0                                      eor r2, r2, r1
004ed94c  01 20 c3 e5                                      strb r2, [r3, #1]
004ed950  01 10 55 e5                                      ldrb r1, [r5, #-1]
004ed954  01 30 43 e2                                      sub r3, r3, #1
004ed958  01 20 22 e0                                      eor r2, r2, r1
004ed95c  01 20 45 e5                                      strb r2, [r5, #-1]
004ed960  01 50 85 e2                                      add r5, r5, #1
004ed964  f1 ff ff 8a                                      bhi #0x4ed930
004ed968  0c d0 8d e2                                      add sp, sp, #0xc
004ed96c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
004ed970  1c 73 4a 00 1c 07 00 00                          .byte 0x1c, 0x73, 0x4a, 0x00, 0x1c, 0x07, 0x00, 0x00
