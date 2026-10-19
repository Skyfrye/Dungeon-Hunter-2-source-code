; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d2888, declared_size=76, range_size=76, mode=arm
; class-group: Structs::AISetInt
; alias: _ZN7Structs8AISetInt8finalizeEv
; demangled: Structs::AISetInt::finalize()
; decoder-mode: arm
004d2888  10 40 2d e9                                      push {r4, lr}
004d288c  00 40 a0 e1                                      mov r4, r0
004d2890  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2894  00 00 50 e3                                      cmp r0, #0
004d2898  03 00 00 0a                                      beq #0x4d28ac
004d289c  e7 f6 f8 eb                                      bl #0x310440
004d28a0  00 30 a0 e3                                      mov r3, #0
004d28a4  08 30 84 e5                                      str r3, [r4, #8]
004d28a8  0c 30 84 e5                                      str r3, [r4, #0xc]
004d28ac  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d28b0  00 00 50 e3                                      cmp r0, #0
004d28b4  03 00 00 0a                                      beq #0x4d28c8
004d28b8  e0 f6 f8 eb                                      bl #0x310440
004d28bc  00 30 a0 e3                                      mov r3, #0
004d28c0  10 30 84 e5                                      str r3, [r4, #0x10]
004d28c4  14 30 84 e5                                      str r3, [r4, #0x14]
004d28c8  04 00 a0 e1                                      mov r0, r4
004d28cc  10 40 bd e8                                      pop {r4, lr}
004d28d0  e4 d0 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d28d4, declared_size=88, range_size=88, mode=arm
; class-group: Structs::AISetInt
; alias: _ZN7Structs8AISetIntD1Ev
; demangled: Structs::AISetInt::~AISetInt()
; decoder-mode: arm
004d28d4  10 40 2d e9                                      push {r4, lr}
004d28d8  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d28dc  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d28e0  00 40 a0 e1                                      mov r4, r0
004d28e4  03 30 8f e0                                      add r3, pc, r3
004d28e8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d28ec  02 20 93 e7                                      ldr r2, [r3, r2]
004d28f0  00 00 50 e3                                      cmp r0, #0
004d28f4  08 20 82 e2                                      add r2, r2, #8
004d28f8  00 20 84 e5                                      str r2, [r4]
004d28fc  00 00 00 0a                                      beq #0x4d2904
004d2900  ce f6 f8 eb                                      bl #0x310440
004d2904  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d2908  00 00 50 e3                                      cmp r0, #0
004d290c  00 00 00 0a                                      beq #0x4d2914
004d2910  ca f6 f8 eb                                      bl #0x310440
004d2914  04 00 a0 e1                                      mov r0, r4
004d2918  d0 d0 ff eb                                      bl #0x4c6c60
004d291c  04 00 a0 e1                                      mov r0, r4
004d2920  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2924  ac 21 4c 00 64 24 00 00                          .byte 0xac, 0x21, 0x4c, 0x00, 0x64, 0x24, 0x00, 0x00

; FUNCTION 0x004d292c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AISetInt
; alias: _ZN7Structs8AISetIntD0Ev
; demangled: Structs::AISetInt::~AISetInt()
; decoder-mode: arm
004d292c  10 40 2d e9                                      push {r4, lr}
004d2930  00 40 a0 e1                                      mov r4, r0
004d2934  e6 ff ff eb                                      bl #0x4d28d4
004d2938  04 00 a0 e1                                      mov r0, r4
004d293c  bf f6 f8 eb                                      bl #0x310440
004d2940  04 00 a0 e1                                      mov r0, r4
004d2944  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d2948, declared_size=88, range_size=88, mode=arm
; class-group: Structs::AISetInt
; alias: _ZN7Structs8AISetIntD2Ev
; demangled: Structs::AISetInt::~AISetInt()
; decoder-mode: arm
004d2948  10 40 2d e9                                      push {r4, lr}
004d294c  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d2950  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d2954  00 40 a0 e1                                      mov r4, r0
004d2958  03 30 8f e0                                      add r3, pc, r3
004d295c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2960  02 20 93 e7                                      ldr r2, [r3, r2]
004d2964  00 00 50 e3                                      cmp r0, #0
004d2968  08 20 82 e2                                      add r2, r2, #8
004d296c  00 20 84 e5                                      str r2, [r4]
004d2970  00 00 00 0a                                      beq #0x4d2978
004d2974  b1 f6 f8 eb                                      bl #0x310440
004d2978  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d297c  00 00 50 e3                                      cmp r0, #0
004d2980  00 00 00 0a                                      beq #0x4d2988
004d2984  ad f6 f8 eb                                      bl #0x310440
004d2988  04 00 a0 e1                                      mov r0, r4
004d298c  b3 d0 ff eb                                      bl #0x4c6c60
004d2990  04 00 a0 e1                                      mov r0, r4
004d2994  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2998  38 21 4c 00 64 24 00 00                          .byte 0x38, 0x21, 0x4c, 0x00, 0x64, 0x24, 0x00, 0x00

; FUNCTION 0x005017b4, declared_size=448, range_size=448, mode=arm
; class-group: Structs::AISetInt
; alias: _ZN7Structs8AISetInt4readEP11IStreamBase
; demangled: Structs::AISetInt::read(IStreamBase*)
; decoder-mode: arm
005017b4  70 40 2d e9                                      push {r4, r5, r6, lr}
005017b8  00 40 a0 e1                                      mov r4, r0
005017bc  08 d0 4d e2                                      sub sp, sp, #8
005017c0  01 50 a0 e1                                      mov r5, r1
005017c4  17 f8 ff eb                                      bl #0x4ff828
005017c8  05 00 a0 e1                                      mov r0, r5
005017cc  08 10 84 e2                                      add r1, r4, #8
005017d0  72 76 fb eb                                      bl #0x3df1a0
005017d4  01 30 a0 e3                                      mov r3, #1
005017d8  00 00 53 e3                                      cmp r3, #0
005017dc  04 30 8d e5                                      str r3, [sp, #4]
005017e0  0f 00 00 1a                                      bne #0x501824
005017e4  09 30 84 e2                                      add r3, r4, #9
005017e8  0a 20 84 e2                                      add r2, r4, #0xa
005017ec  01 00 d2 e5                                      ldrb r0, [r2, #1]
005017f0  01 10 53 e5                                      ldrb r1, [r3, #-1]
005017f4  02 00 53 e1                                      cmp r3, r2
005017f8  01 10 20 e0                                      eor r1, r0, r1
005017fc  01 10 43 e5                                      strb r1, [r3, #-1]
00501800  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501804  00 10 21 e0                                      eor r1, r1, r0
00501808  01 10 c2 e5                                      strb r1, [r2, #1]
0050180c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00501810  01 20 42 e2                                      sub r2, r2, #1
00501814  00 10 21 e0                                      eor r1, r1, r0
00501818  01 10 43 e5                                      strb r1, [r3, #-1]
0050181c  01 30 83 e2                                      add r3, r3, #1
00501820  f1 ff ff 3a                                      blo #0x5017ec
00501824  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00501828  00 00 50 e3                                      cmp r0, #0
0050182c  00 00 00 0a                                      beq #0x501834
00501830  02 3b f8 eb                                      bl #0x310440
00501834  08 00 94 e5                                      ldr r0, [r4, #8]
00501838  01 10 a0 e3                                      mov r1, #1
0050183c  00 60 a0 e3                                      mov r6, #0
00501840  01 00 80 e0                                      add r0, r0, r1
00501844  48 3b f8 eb                                      bl #0x31056c
00501848  08 20 94 e5                                      ldr r2, [r4, #8]
0050184c  00 10 a0 e1                                      mov r1, r0
00501850  0c 00 84 e5                                      str r0, [r4, #0xc]
00501854  06 30 a0 e1                                      mov r3, r6
00501858  05 00 a0 e1                                      mov r0, r5
0050185c  fc 56 f8 eb                                      bl #0x317454
00501860  08 30 94 e5                                      ldr r3, [r4, #8]
00501864  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00501868  05 00 a0 e1                                      mov r0, r5
0050186c  10 10 84 e2                                      add r1, r4, #0x10
00501870  03 60 c2 e7                                      strb r6, [r2, r3]
00501874  49 76 fb eb                                      bl #0x3df1a0
00501878  01 30 a0 e3                                      mov r3, #1
0050187c  06 00 53 e1                                      cmp r3, r6
00501880  04 30 8d e5                                      str r3, [sp, #4]
00501884  0f 00 00 1a                                      bne #0x5018c8
00501888  11 30 84 e2                                      add r3, r4, #0x11
0050188c  12 20 84 e2                                      add r2, r4, #0x12
00501890  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501894  01 10 53 e5                                      ldrb r1, [r3, #-1]
00501898  02 00 53 e1                                      cmp r3, r2
0050189c  01 10 20 e0                                      eor r1, r0, r1
005018a0  01 10 43 e5                                      strb r1, [r3, #-1]
005018a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005018a8  00 10 21 e0                                      eor r1, r1, r0
005018ac  01 10 c2 e5                                      strb r1, [r2, #1]
005018b0  01 00 53 e5                                      ldrb r0, [r3, #-1]
005018b4  01 20 42 e2                                      sub r2, r2, #1
005018b8  00 10 21 e0                                      eor r1, r1, r0
005018bc  01 10 43 e5                                      strb r1, [r3, #-1]
005018c0  01 30 83 e2                                      add r3, r3, #1
005018c4  f1 ff ff 3a                                      blo #0x501890
005018c8  14 00 94 e5                                      ldr r0, [r4, #0x14]
005018cc  00 00 50 e3                                      cmp r0, #0
005018d0  00 00 00 0a                                      beq #0x5018d8
005018d4  d9 3a f8 eb                                      bl #0x310440
005018d8  10 00 94 e5                                      ldr r0, [r4, #0x10]
005018dc  01 10 a0 e3                                      mov r1, #1
005018e0  00 60 a0 e3                                      mov r6, #0
005018e4  01 00 80 e0                                      add r0, r0, r1
005018e8  1f 3b f8 eb                                      bl #0x31056c
005018ec  10 20 94 e5                                      ldr r2, [r4, #0x10]
005018f0  00 10 a0 e1                                      mov r1, r0
005018f4  14 00 84 e5                                      str r0, [r4, #0x14]
005018f8  06 30 a0 e1                                      mov r3, r6
005018fc  05 00 a0 e1                                      mov r0, r5
00501900  d3 56 f8 eb                                      bl #0x317454
00501904  10 30 94 e5                                      ldr r3, [r4, #0x10]
00501908  14 20 94 e5                                      ldr r2, [r4, #0x14]
0050190c  05 00 a0 e1                                      mov r0, r5
00501910  18 10 84 e2                                      add r1, r4, #0x18
00501914  03 60 c2 e7                                      strb r6, [r2, r3]
00501918  dc 5d fd eb                                      bl #0x459090
0050191c  01 30 a0 e3                                      mov r3, #1
00501920  06 00 53 e1                                      cmp r3, r6
00501924  04 30 8d e5                                      str r3, [sp, #4]
00501928  0f 00 00 1a                                      bne #0x50196c
0050192c  1a 30 84 e2                                      add r3, r4, #0x1a
00501930  19 40 84 e2                                      add r4, r4, #0x19
00501934  01 10 d3 e5                                      ldrb r1, [r3, #1]
00501938  01 20 54 e5                                      ldrb r2, [r4, #-1]
0050193c  04 00 53 e1                                      cmp r3, r4
00501940  02 20 21 e0                                      eor r2, r1, r2
00501944  01 20 44 e5                                      strb r2, [r4, #-1]
00501948  01 10 d3 e5                                      ldrb r1, [r3, #1]
0050194c  01 20 22 e0                                      eor r2, r2, r1
00501950  01 20 c3 e5                                      strb r2, [r3, #1]
00501954  01 10 54 e5                                      ldrb r1, [r4, #-1]
00501958  01 30 43 e2                                      sub r3, r3, #1
0050195c  01 20 22 e0                                      eor r2, r2, r1
00501960  01 20 44 e5                                      strb r2, [r4, #-1]
00501964  01 40 84 e2                                      add r4, r4, #1
00501968  f1 ff ff 8a                                      bhi #0x501934
0050196c  08 d0 8d e2                                      add sp, sp, #8
00501970  70 80 bd e8                                      pop {r4, r5, r6, pc}
