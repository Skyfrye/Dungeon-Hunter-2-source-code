; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004db40c, declared_size=104, range_size=104, mode=arm
; class-group: Structs::AnimTpl
; alias: _ZN7Structs7AnimTpl8finalizeEv
; demangled: Structs::AnimTpl::finalize()
; decoder-mode: arm
004db40c  70 40 2d e9                                      push {r4, r5, r6, lr}
004db410  0c 30 90 e5                                      ldr r3, [r0, #0xc]
004db414  00 50 a0 e1                                      mov r5, r0
004db418  00 00 53 e3                                      cmp r3, #0
004db41c  13 00 00 0a                                      beq #0x4db470
004db420  04 20 13 e5                                      ldr r2, [r3, #-4]
004db424  38 00 a0 e3                                      mov r0, #0x38
004db428  90 32 20 e0                                      mla r0, r0, r2, r3
004db42c  00 00 53 e1                                      cmp r3, r0
004db430  01 00 00 1a                                      bne #0x4db43c
004db434  08 00 00 ea                                      b #0x4db45c
004db438  04 00 a0 e1                                      mov r0, r4
004db43c  38 40 40 e2                                      sub r4, r0, #0x38
004db440  38 30 10 e5                                      ldr r3, [r0, #-0x38]
004db444  04 00 a0 e1                                      mov r0, r4
004db448  0f e0 a0 e1                                      mov lr, pc
004db44c  00 f0 93 e5                                      ldr pc, [r3]
004db450  0c 00 95 e5                                      ldr r0, [r5, #0xc]
004db454  04 00 50 e1                                      cmp r0, r4
004db458  f6 ff ff 1a                                      bne #0x4db438
004db45c  08 00 40 e2                                      sub r0, r0, #8
004db460  f6 d3 f8 eb                                      bl #0x310440
004db464  00 30 a0 e3                                      mov r3, #0
004db468  08 30 85 e5                                      str r3, [r5, #8]
004db46c  0c 30 85 e5                                      str r3, [r5, #0xc]
004db470  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004db474, declared_size=128, range_size=128, mode=arm
; class-group: Structs::AnimTpl
; alias: _ZN7Structs7AnimTplD1Ev
; demangled: Structs::AnimTpl::~AnimTpl()
; decoder-mode: arm
004db474  70 40 2d e9                                      push {r4, r5, r6, lr}
004db478  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004db47c  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004db480  0c 10 90 e5                                      ldr r1, [r0, #0xc]
004db484  03 30 8f e0                                      add r3, pc, r3
004db488  02 20 93 e7                                      ldr r2, [r3, r2]
004db48c  00 00 51 e3                                      cmp r1, #0
004db490  00 50 a0 e1                                      mov r5, r0
004db494  08 20 82 e2                                      add r2, r2, #8
004db498  00 20 80 e5                                      str r2, [r0]
004db49c  10 00 00 0a                                      beq #0x4db4e4
004db4a0  04 30 11 e5                                      ldr r3, [r1, #-4]
004db4a4  38 00 a0 e3                                      mov r0, #0x38
004db4a8  90 13 20 e0                                      mla r0, r0, r3, r1
004db4ac  00 00 51 e1                                      cmp r1, r0
004db4b0  01 00 00 1a                                      bne #0x4db4bc
004db4b4  08 00 00 ea                                      b #0x4db4dc
004db4b8  04 00 a0 e1                                      mov r0, r4
004db4bc  38 40 40 e2                                      sub r4, r0, #0x38
004db4c0  38 30 10 e5                                      ldr r3, [r0, #-0x38]
004db4c4  04 00 a0 e1                                      mov r0, r4
004db4c8  0f e0 a0 e1                                      mov lr, pc
004db4cc  00 f0 93 e5                                      ldr pc, [r3]
004db4d0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
004db4d4  04 00 50 e1                                      cmp r0, r4
004db4d8  f6 ff ff 1a                                      bne #0x4db4b8
004db4dc  08 00 40 e2                                      sub r0, r0, #8
004db4e0  d6 d3 f8 eb                                      bl #0x310440
004db4e4  05 00 a0 e1                                      mov r0, r5
004db4e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004db4ec  0c 96 4b 00 dc 0a 00 00                          .byte 0x0c, 0x96, 0x4b, 0x00, 0xdc, 0x0a, 0x00, 0x00

; FUNCTION 0x004db4f4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AnimTpl
; alias: _ZN7Structs7AnimTplD0Ev
; demangled: Structs::AnimTpl::~AnimTpl()
; decoder-mode: arm
004db4f4  10 40 2d e9                                      push {r4, lr}
004db4f8  00 40 a0 e1                                      mov r4, r0
004db4fc  dc ff ff eb                                      bl #0x4db474
004db500  04 00 a0 e1                                      mov r0, r4
004db504  cd d3 f8 eb                                      bl #0x310440
004db508  04 00 a0 e1                                      mov r0, r4
004db50c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004db510, declared_size=128, range_size=128, mode=arm
; class-group: Structs::AnimTpl
; alias: _ZN7Structs7AnimTplD2Ev
; demangled: Structs::AnimTpl::~AnimTpl()
; decoder-mode: arm
004db510  70 40 2d e9                                      push {r4, r5, r6, lr}
004db514  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004db518  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004db51c  0c 10 90 e5                                      ldr r1, [r0, #0xc]
004db520  03 30 8f e0                                      add r3, pc, r3
004db524  02 20 93 e7                                      ldr r2, [r3, r2]
004db528  00 00 51 e3                                      cmp r1, #0
004db52c  00 50 a0 e1                                      mov r5, r0
004db530  08 20 82 e2                                      add r2, r2, #8
004db534  00 20 80 e5                                      str r2, [r0]
004db538  10 00 00 0a                                      beq #0x4db580
004db53c  04 30 11 e5                                      ldr r3, [r1, #-4]
004db540  38 00 a0 e3                                      mov r0, #0x38
004db544  90 13 20 e0                                      mla r0, r0, r3, r1
004db548  00 00 51 e1                                      cmp r1, r0
004db54c  01 00 00 1a                                      bne #0x4db558
004db550  08 00 00 ea                                      b #0x4db578
004db554  04 00 a0 e1                                      mov r0, r4
004db558  38 40 40 e2                                      sub r4, r0, #0x38
004db55c  38 30 10 e5                                      ldr r3, [r0, #-0x38]
004db560  04 00 a0 e1                                      mov r0, r4
004db564  0f e0 a0 e1                                      mov lr, pc
004db568  00 f0 93 e5                                      ldr pc, [r3]
004db56c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
004db570  04 00 50 e1                                      cmp r0, r4
004db574  f6 ff ff 1a                                      bne #0x4db554
004db578  08 00 40 e2                                      sub r0, r0, #8
004db57c  af d3 f8 eb                                      bl #0x310440
004db580  05 00 a0 e1                                      mov r0, r5
004db584  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004db588  70 95 4b 00 dc 0a 00 00                          .byte 0x70, 0x95, 0x4b, 0x00, 0xdc, 0x0a, 0x00, 0x00

; FUNCTION 0x004ef2f0, declared_size=560, range_size=560, mode=arm
; class-group: Structs::AnimTpl
; alias: _ZN7Structs7AnimTpl4readEP11IStreamBase
; demangled: Structs::AnimTpl::read(IStreamBase*)
; decoder-mode: arm
004ef2f0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004ef2f4  00 50 a0 e1                                      mov r5, r0
004ef2f8  0c d0 4d e2                                      sub sp, sp, #0xc
004ef2fc  01 00 a0 e1                                      mov r0, r1
004ef300  01 70 a0 e1                                      mov r7, r1
004ef304  0c 62 9f e5                                      ldr r6, [pc, #0x20c]
004ef308  04 10 85 e2                                      add r1, r5, #4
004ef30c  5f a7 fd eb                                      bl #0x459090
004ef310  01 30 a0 e3                                      mov r3, #1
004ef314  00 00 53 e3                                      cmp r3, #0
004ef318  04 30 8d e5                                      str r3, [sp, #4]
004ef31c  06 60 8f e0                                      add r6, pc, r6
004ef320  0f 00 00 1a                                      bne #0x4ef364
004ef324  05 30 85 e2                                      add r3, r5, #5
004ef328  06 20 85 e2                                      add r2, r5, #6
004ef32c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef330  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ef334  03 00 52 e1                                      cmp r2, r3
004ef338  01 10 20 e0                                      eor r1, r0, r1
004ef33c  01 10 43 e5                                      strb r1, [r3, #-1]
004ef340  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef344  00 10 21 e0                                      eor r1, r1, r0
004ef348  01 10 c2 e5                                      strb r1, [r2, #1]
004ef34c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ef350  01 20 42 e2                                      sub r2, r2, #1
004ef354  00 10 21 e0                                      eor r1, r1, r0
004ef358  01 10 43 e5                                      strb r1, [r3, #-1]
004ef35c  01 30 83 e2                                      add r3, r3, #1
004ef360  f1 ff ff 8a                                      bhi #0x4ef32c
004ef364  07 00 a0 e1                                      mov r0, r7
004ef368  08 10 85 e2                                      add r1, r5, #8
004ef36c  8b bf fb eb                                      bl #0x3df1a0
004ef370  01 30 a0 e3                                      mov r3, #1
004ef374  00 00 53 e3                                      cmp r3, #0
004ef378  04 30 8d e5                                      str r3, [sp, #4]
004ef37c  0f 00 00 1a                                      bne #0x4ef3c0
004ef380  09 30 85 e2                                      add r3, r5, #9
004ef384  0a 20 85 e2                                      add r2, r5, #0xa
004ef388  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef38c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ef390  03 00 52 e1                                      cmp r2, r3
004ef394  01 10 20 e0                                      eor r1, r0, r1
004ef398  01 10 43 e5                                      strb r1, [r3, #-1]
004ef39c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef3a0  00 10 21 e0                                      eor r1, r1, r0
004ef3a4  01 10 c2 e5                                      strb r1, [r2, #1]
004ef3a8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ef3ac  01 20 42 e2                                      sub r2, r2, #1
004ef3b0  00 10 21 e0                                      eor r1, r1, r0
004ef3b4  01 10 43 e5                                      strb r1, [r3, #-1]
004ef3b8  01 30 83 e2                                      add r3, r3, #1
004ef3bc  f1 ff ff 8a                                      bhi #0x4ef388
004ef3c0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004ef3c4  00 00 53 e3                                      cmp r3, #0
004ef3c8  10 00 00 0a                                      beq #0x4ef410
004ef3cc  04 20 13 e5                                      ldr r2, [r3, #-4]
004ef3d0  38 00 a0 e3                                      mov r0, #0x38
004ef3d4  90 32 20 e0                                      mla r0, r0, r2, r3
004ef3d8  00 00 53 e1                                      cmp r3, r0
004ef3dc  01 00 00 1a                                      bne #0x4ef3e8
004ef3e0  08 00 00 ea                                      b #0x4ef408
004ef3e4  04 00 a0 e1                                      mov r0, r4
004ef3e8  38 40 40 e2                                      sub r4, r0, #0x38
004ef3ec  38 30 10 e5                                      ldr r3, [r0, #-0x38]
004ef3f0  04 00 a0 e1                                      mov r0, r4
004ef3f4  0f e0 a0 e1                                      mov lr, pc
004ef3f8  00 f0 93 e5                                      ldr pc, [r3]
004ef3fc  0c 00 95 e5                                      ldr r0, [r5, #0xc]
004ef400  04 00 50 e1                                      cmp r0, r4
004ef404  f6 ff ff 1a                                      bne #0x4ef3e4
004ef408  08 00 40 e2                                      sub r0, r0, #8
004ef40c  0b 84 f8 eb                                      bl #0x310440
004ef410  08 40 95 e5                                      ldr r4, [r5, #8]
004ef414  07 00 a0 e3                                      mov r0, #7
004ef418  01 10 a0 e3                                      mov r1, #1
004ef41c  90 04 00 e0                                      mul r0, r0, r4
004ef420  01 00 80 e0                                      add r0, r0, r1
004ef424  80 01 a0 e1                                      lsl r0, r0, #3
004ef428  4f 84 f8 eb                                      bl #0x31056c
004ef42c  38 30 a0 e3                                      mov r3, #0x38
004ef430  00 00 54 e3                                      cmp r4, #0
004ef434  18 00 80 e8                                      stm r0, {r3, r4}
004ef438  08 30 80 e2                                      add r3, r0, #8
004ef43c  0a 00 00 0a                                      beq #0x4ef46c
004ef440  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
004ef444  00 20 a0 e3                                      mov r2, #0
004ef448  02 c0 a0 e1                                      mov ip, r2
004ef44c  01 10 96 e7                                      ldr r1, [r6, r1]
004ef450  08 10 81 e2                                      add r1, r1, #8
004ef454  01 20 82 e2                                      add r2, r2, #1
004ef458  04 00 52 e1                                      cmp r2, r4
004ef45c  08 10 80 e5                                      str r1, [r0, #8]
004ef460  2c c0 80 e5                                      str ip, [r0, #0x2c]
004ef464  38 00 80 e2                                      add r0, r0, #0x38
004ef468  f9 ff ff 1a                                      bne #0x4ef454
004ef46c  08 20 95 e5                                      ldr r2, [r5, #8]
004ef470  0c 30 85 e5                                      str r3, [r5, #0xc]
004ef474  00 00 52 e3                                      cmp r2, #0
004ef478  0d 00 00 0a                                      beq #0x4ef4b4
004ef47c  00 40 a0 e3                                      mov r4, #0
004ef480  04 60 a0 e1                                      mov r6, r4
004ef484  00 00 00 ea                                      b #0x4ef48c
004ef488  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004ef48c  04 00 83 e0                                      add r0, r3, r4
004ef490  07 10 a0 e1                                      mov r1, r7
004ef494  04 30 93 e7                                      ldr r3, [r3, r4]
004ef498  0f e0 a0 e1                                      mov lr, pc
004ef49c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004ef4a0  08 30 95 e5                                      ldr r3, [r5, #8]
004ef4a4  01 60 86 e2                                      add r6, r6, #1
004ef4a8  38 40 84 e2                                      add r4, r4, #0x38
004ef4ac  06 00 53 e1                                      cmp r3, r6
004ef4b0  f4 ff ff 8a                                      bhi #0x4ef488
004ef4b4  07 00 a0 e1                                      mov r0, r7
004ef4b8  10 10 85 e2                                      add r1, r5, #0x10
004ef4bc  f3 a6 fd eb                                      bl #0x459090
004ef4c0  01 30 a0 e3                                      mov r3, #1
004ef4c4  00 00 53 e3                                      cmp r3, #0
004ef4c8  04 30 8d e5                                      str r3, [sp, #4]
004ef4cc  0f 00 00 1a                                      bne #0x4ef510
004ef4d0  12 30 85 e2                                      add r3, r5, #0x12
004ef4d4  11 50 85 e2                                      add r5, r5, #0x11
004ef4d8  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ef4dc  01 20 55 e5                                      ldrb r2, [r5, #-1]
004ef4e0  05 00 53 e1                                      cmp r3, r5
004ef4e4  02 20 21 e0                                      eor r2, r1, r2
004ef4e8  01 20 45 e5                                      strb r2, [r5, #-1]
004ef4ec  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ef4f0  01 20 22 e0                                      eor r2, r2, r1
004ef4f4  01 20 c3 e5                                      strb r2, [r3, #1]
004ef4f8  01 10 55 e5                                      ldrb r1, [r5, #-1]
004ef4fc  01 30 43 e2                                      sub r3, r3, #1
004ef500  01 20 22 e0                                      eor r2, r2, r1
004ef504  01 20 45 e5                                      strb r2, [r5, #-1]
004ef508  01 50 85 e2                                      add r5, r5, #1
004ef50c  f1 ff ff 8a                                      bhi #0x4ef4d8
004ef510  0c d0 8d e2                                      add sp, sp, #0xc
004ef514  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
004ef518  74 57 4a 00 94 49 00 00                          .byte 0x74, 0x57, 0x4a, 0x00, 0x94, 0x49, 0x00, 0x00
