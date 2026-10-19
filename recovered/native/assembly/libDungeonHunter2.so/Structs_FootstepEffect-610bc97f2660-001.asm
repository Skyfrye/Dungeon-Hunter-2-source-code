; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004da444, declared_size=96, range_size=96, mode=arm
; class-group: Structs::FootstepEffect
; alias: _ZN7Structs14FootstepEffect8finalizeEv
; demangled: Structs::FootstepEffect::finalize()
; decoder-mode: arm
004da444  10 40 2d e9                                      push {r4, lr}
004da448  00 40 a0 e1                                      mov r4, r0
004da44c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004da450  00 00 50 e3                                      cmp r0, #0
004da454  03 00 00 0a                                      beq #0x4da468
004da458  f8 d7 f8 eb                                      bl #0x310440
004da45c  00 30 a0 e3                                      mov r3, #0
004da460  08 30 84 e5                                      str r3, [r4, #8]
004da464  0c 30 84 e5                                      str r3, [r4, #0xc]
004da468  14 00 94 e5                                      ldr r0, [r4, #0x14]
004da46c  00 00 50 e3                                      cmp r0, #0
004da470  03 00 00 0a                                      beq #0x4da484
004da474  f1 d7 f8 eb                                      bl #0x310440
004da478  00 30 a0 e3                                      mov r3, #0
004da47c  10 30 84 e5                                      str r3, [r4, #0x10]
004da480  14 30 84 e5                                      str r3, [r4, #0x14]
004da484  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004da488  00 00 50 e3                                      cmp r0, #0
004da48c  03 00 00 0a                                      beq #0x4da4a0
004da490  ea d7 f8 eb                                      bl #0x310440
004da494  00 30 a0 e3                                      mov r3, #0
004da498  18 30 84 e5                                      str r3, [r4, #0x18]
004da49c  1c 30 84 e5                                      str r3, [r4, #0x1c]
004da4a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004da4a4, declared_size=96, range_size=96, mode=arm
; class-group: Structs::FootstepEffect
; alias: _ZN7Structs14FootstepEffectD1Ev
; demangled: Structs::FootstepEffect::~FootstepEffect()
; decoder-mode: arm
004da4a4  10 40 2d e9                                      push {r4, lr}
004da4a8  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
004da4ac  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
004da4b0  00 40 a0 e1                                      mov r4, r0
004da4b4  03 30 8f e0                                      add r3, pc, r3
004da4b8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004da4bc  02 20 93 e7                                      ldr r2, [r3, r2]
004da4c0  00 00 50 e3                                      cmp r0, #0
004da4c4  08 20 82 e2                                      add r2, r2, #8
004da4c8  00 20 84 e5                                      str r2, [r4]
004da4cc  00 00 00 0a                                      beq #0x4da4d4
004da4d0  da d7 f8 eb                                      bl #0x310440
004da4d4  14 00 94 e5                                      ldr r0, [r4, #0x14]
004da4d8  00 00 50 e3                                      cmp r0, #0
004da4dc  00 00 00 0a                                      beq #0x4da4e4
004da4e0  d6 d7 f8 eb                                      bl #0x310440
004da4e4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004da4e8  00 00 50 e3                                      cmp r0, #0
004da4ec  00 00 00 0a                                      beq #0x4da4f4
004da4f0  d2 d7 f8 eb                                      bl #0x310440
004da4f4  04 00 a0 e1                                      mov r0, r4
004da4f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004da4fc  dc a5 4b 00 f0 13 00 00                          .byte 0xdc, 0xa5, 0x4b, 0x00, 0xf0, 0x13, 0x00, 0x00

; FUNCTION 0x004da504, declared_size=28, range_size=28, mode=arm
; class-group: Structs::FootstepEffect
; alias: _ZN7Structs14FootstepEffectD0Ev
; demangled: Structs::FootstepEffect::~FootstepEffect()
; decoder-mode: arm
004da504  10 40 2d e9                                      push {r4, lr}
004da508  00 40 a0 e1                                      mov r4, r0
004da50c  e4 ff ff eb                                      bl #0x4da4a4
004da510  04 00 a0 e1                                      mov r0, r4
004da514  c9 d7 f8 eb                                      bl #0x310440
004da518  04 00 a0 e1                                      mov r0, r4
004da51c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004da520, declared_size=96, range_size=96, mode=arm
; class-group: Structs::FootstepEffect
; alias: _ZN7Structs14FootstepEffectD2Ev
; demangled: Structs::FootstepEffect::~FootstepEffect()
; decoder-mode: arm
004da520  10 40 2d e9                                      push {r4, lr}
004da524  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
004da528  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
004da52c  00 40 a0 e1                                      mov r4, r0
004da530  03 30 8f e0                                      add r3, pc, r3
004da534  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004da538  02 20 93 e7                                      ldr r2, [r3, r2]
004da53c  00 00 50 e3                                      cmp r0, #0
004da540  08 20 82 e2                                      add r2, r2, #8
004da544  00 20 84 e5                                      str r2, [r4]
004da548  00 00 00 0a                                      beq #0x4da550
004da54c  bb d7 f8 eb                                      bl #0x310440
004da550  14 00 94 e5                                      ldr r0, [r4, #0x14]
004da554  00 00 50 e3                                      cmp r0, #0
004da558  00 00 00 0a                                      beq #0x4da560
004da55c  b7 d7 f8 eb                                      bl #0x310440
004da560  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004da564  00 00 50 e3                                      cmp r0, #0
004da568  00 00 00 0a                                      beq #0x4da570
004da56c  b3 d7 f8 eb                                      bl #0x310440
004da570  04 00 a0 e1                                      mov r0, r4
004da574  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004da578  60 a5 4b 00 f0 13 00 00                          .byte 0x60, 0xa5, 0x4b, 0x00, 0xf0, 0x13, 0x00, 0x00

; FUNCTION 0x00506660, declared_size=816, range_size=816, mode=arm
; class-group: Structs::FootstepEffect
; alias: _ZN7Structs14FootstepEffect4readEP11IStreamBase
; demangled: Structs::FootstepEffect::read(IStreamBase*)
; decoder-mode: arm
00506660  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00506664  00 40 a0 e1                                      mov r4, r0
00506668  08 d0 4d e2                                      sub sp, sp, #8
0050666c  01 00 a0 e1                                      mov r0, r1
00506670  01 50 a0 e1                                      mov r5, r1
00506674  04 10 84 e2                                      add r1, r4, #4
00506678  84 4a fd eb                                      bl #0x459090
0050667c  01 30 a0 e3                                      mov r3, #1
00506680  00 00 53 e3                                      cmp r3, #0
00506684  04 30 8d e5                                      str r3, [sp, #4]
00506688  0f 00 00 1a                                      bne #0x5066cc
0050668c  05 30 84 e2                                      add r3, r4, #5
00506690  06 20 84 e2                                      add r2, r4, #6
00506694  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506698  01 10 53 e5                                      ldrb r1, [r3, #-1]
0050669c  02 00 53 e1                                      cmp r3, r2
005066a0  01 10 20 e0                                      eor r1, r0, r1
005066a4  01 10 43 e5                                      strb r1, [r3, #-1]
005066a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
005066ac  00 10 21 e0                                      eor r1, r1, r0
005066b0  01 10 c2 e5                                      strb r1, [r2, #1]
005066b4  01 00 53 e5                                      ldrb r0, [r3, #-1]
005066b8  01 20 42 e2                                      sub r2, r2, #1
005066bc  00 10 21 e0                                      eor r1, r1, r0
005066c0  01 10 43 e5                                      strb r1, [r3, #-1]
005066c4  01 30 83 e2                                      add r3, r3, #1
005066c8  f1 ff ff 3a                                      blo #0x506694
005066cc  05 00 a0 e1                                      mov r0, r5
005066d0  08 10 84 e2                                      add r1, r4, #8
005066d4  b1 62 fb eb                                      bl #0x3df1a0
005066d8  01 30 a0 e3                                      mov r3, #1
005066dc  00 00 53 e3                                      cmp r3, #0
005066e0  04 30 8d e5                                      str r3, [sp, #4]
005066e4  0f 00 00 1a                                      bne #0x506728
005066e8  09 30 84 e2                                      add r3, r4, #9
005066ec  0a 20 84 e2                                      add r2, r4, #0xa
005066f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005066f4  01 10 53 e5                                      ldrb r1, [r3, #-1]
005066f8  02 00 53 e1                                      cmp r3, r2
005066fc  01 10 20 e0                                      eor r1, r0, r1
00506700  01 10 43 e5                                      strb r1, [r3, #-1]
00506704  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506708  00 10 21 e0                                      eor r1, r1, r0
0050670c  01 10 c2 e5                                      strb r1, [r2, #1]
00506710  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506714  01 20 42 e2                                      sub r2, r2, #1
00506718  00 10 21 e0                                      eor r1, r1, r0
0050671c  01 10 43 e5                                      strb r1, [r3, #-1]
00506720  01 30 83 e2                                      add r3, r3, #1
00506724  f1 ff ff 3a                                      blo #0x5066f0
00506728  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0050672c  00 00 50 e3                                      cmp r0, #0
00506730  00 00 00 0a                                      beq #0x506738
00506734  41 27 f8 eb                                      bl #0x310440
00506738  08 00 94 e5                                      ldr r0, [r4, #8]
0050673c  01 10 a0 e3                                      mov r1, #1
00506740  00 60 a0 e3                                      mov r6, #0
00506744  01 00 80 e0                                      add r0, r0, r1
00506748  87 27 f8 eb                                      bl #0x31056c
0050674c  08 20 94 e5                                      ldr r2, [r4, #8]
00506750  00 10 a0 e1                                      mov r1, r0
00506754  0c 00 84 e5                                      str r0, [r4, #0xc]
00506758  06 30 a0 e1                                      mov r3, r6
0050675c  05 00 a0 e1                                      mov r0, r5
00506760  3b 43 f8 eb                                      bl #0x317454
00506764  08 30 94 e5                                      ldr r3, [r4, #8]
00506768  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0050676c  05 00 a0 e1                                      mov r0, r5
00506770  10 10 84 e2                                      add r1, r4, #0x10
00506774  03 60 c2 e7                                      strb r6, [r2, r3]
00506778  88 62 fb eb                                      bl #0x3df1a0
0050677c  01 30 a0 e3                                      mov r3, #1
00506780  06 00 53 e1                                      cmp r3, r6
00506784  04 30 8d e5                                      str r3, [sp, #4]
00506788  0f 00 00 1a                                      bne #0x5067cc
0050678c  11 30 84 e2                                      add r3, r4, #0x11
00506790  12 20 84 e2                                      add r2, r4, #0x12
00506794  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506798  01 10 53 e5                                      ldrb r1, [r3, #-1]
0050679c  02 00 53 e1                                      cmp r3, r2
005067a0  01 10 20 e0                                      eor r1, r0, r1
005067a4  01 10 43 e5                                      strb r1, [r3, #-1]
005067a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
005067ac  00 10 21 e0                                      eor r1, r1, r0
005067b0  01 10 c2 e5                                      strb r1, [r2, #1]
005067b4  01 00 53 e5                                      ldrb r0, [r3, #-1]
005067b8  01 20 42 e2                                      sub r2, r2, #1
005067bc  00 10 21 e0                                      eor r1, r1, r0
005067c0  01 10 43 e5                                      strb r1, [r3, #-1]
005067c4  01 30 83 e2                                      add r3, r3, #1
005067c8  f1 ff ff 3a                                      blo #0x506794
005067cc  14 00 94 e5                                      ldr r0, [r4, #0x14]
005067d0  00 00 50 e3                                      cmp r0, #0
005067d4  00 00 00 0a                                      beq #0x5067dc
005067d8  18 27 f8 eb                                      bl #0x310440
005067dc  10 00 94 e5                                      ldr r0, [r4, #0x10]
005067e0  01 10 a0 e3                                      mov r1, #1
005067e4  00 01 a0 e1                                      lsl r0, r0, #2
005067e8  5f 27 f8 eb                                      bl #0x31056c
005067ec  10 30 94 e5                                      ldr r3, [r4, #0x10]
005067f0  14 00 84 e5                                      str r0, [r4, #0x14]
005067f4  00 00 53 e3                                      cmp r3, #0
005067f8  1f 00 00 0a                                      beq #0x50687c
005067fc  00 60 a0 e3                                      mov r6, #0
00506800  01 80 a0 e3                                      mov r8, #1
00506804  06 71 a0 e1                                      lsl r7, r6, #2
00506808  07 10 80 e0                                      add r1, r0, r7
0050680c  05 00 a0 e1                                      mov r0, r5
00506810  1e 4a fd eb                                      bl #0x459090
00506814  04 80 8d e5                                      str r8, [sp, #4]
00506818  00 00 58 e3                                      cmp r8, #0
0050681c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00506820  10 00 00 1a                                      bne #0x506868
00506824  07 70 83 e0                                      add r7, r3, r7
00506828  02 30 87 e2                                      add r3, r7, #2
0050682c  01 70 87 e2                                      add r7, r7, #1
00506830  01 10 d3 e5                                      ldrb r1, [r3, #1]
00506834  01 20 57 e5                                      ldrb r2, [r7, #-1]
00506838  03 00 57 e1                                      cmp r7, r3
0050683c  02 20 21 e0                                      eor r2, r1, r2
00506840  01 20 47 e5                                      strb r2, [r7, #-1]
00506844  01 10 d3 e5                                      ldrb r1, [r3, #1]
00506848  01 20 22 e0                                      eor r2, r2, r1
0050684c  01 20 c3 e5                                      strb r2, [r3, #1]
00506850  01 10 57 e5                                      ldrb r1, [r7, #-1]
00506854  01 30 43 e2                                      sub r3, r3, #1
00506858  01 20 22 e0                                      eor r2, r2, r1
0050685c  01 20 47 e5                                      strb r2, [r7, #-1]
00506860  01 70 87 e2                                      add r7, r7, #1
00506864  f1 ff ff 3a                                      blo #0x506830
00506868  10 30 94 e5                                      ldr r3, [r4, #0x10]
0050686c  01 60 86 e2                                      add r6, r6, #1
00506870  06 00 53 e1                                      cmp r3, r6
00506874  14 00 94 85                                      ldrhi r0, [r4, #0x14]
00506878  e1 ff ff 8a                                      bhi #0x506804
0050687c  05 00 a0 e1                                      mov r0, r5
00506880  18 10 84 e2                                      add r1, r4, #0x18
00506884  45 62 fb eb                                      bl #0x3df1a0
00506888  01 30 a0 e3                                      mov r3, #1
0050688c  00 00 53 e3                                      cmp r3, #0
00506890  04 30 8d e5                                      str r3, [sp, #4]
00506894  0f 00 00 1a                                      bne #0x5068d8
00506898  19 30 84 e2                                      add r3, r4, #0x19
0050689c  1a 20 84 e2                                      add r2, r4, #0x1a
005068a0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005068a4  01 10 53 e5                                      ldrb r1, [r3, #-1]
005068a8  02 00 53 e1                                      cmp r3, r2
005068ac  01 10 20 e0                                      eor r1, r0, r1
005068b0  01 10 43 e5                                      strb r1, [r3, #-1]
005068b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005068b8  00 10 21 e0                                      eor r1, r1, r0
005068bc  01 10 c2 e5                                      strb r1, [r2, #1]
005068c0  01 00 53 e5                                      ldrb r0, [r3, #-1]
005068c4  01 20 42 e2                                      sub r2, r2, #1
005068c8  00 10 21 e0                                      eor r1, r1, r0
005068cc  01 10 43 e5                                      strb r1, [r3, #-1]
005068d0  01 30 83 e2                                      add r3, r3, #1
005068d4  f1 ff ff 3a                                      blo #0x5068a0
005068d8  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
005068dc  00 00 50 e3                                      cmp r0, #0
005068e0  00 00 00 0a                                      beq #0x5068e8
005068e4  d5 26 f8 eb                                      bl #0x310440
005068e8  18 00 94 e5                                      ldr r0, [r4, #0x18]
005068ec  01 10 a0 e3                                      mov r1, #1
005068f0  00 01 a0 e1                                      lsl r0, r0, #2
005068f4  1c 27 f8 eb                                      bl #0x31056c
005068f8  18 30 94 e5                                      ldr r3, [r4, #0x18]
005068fc  1c 00 84 e5                                      str r0, [r4, #0x1c]
00506900  00 00 53 e3                                      cmp r3, #0
00506904  1f 00 00 0a                                      beq #0x506988
00506908  00 60 a0 e3                                      mov r6, #0
0050690c  01 80 a0 e3                                      mov r8, #1
00506910  06 71 a0 e1                                      lsl r7, r6, #2
00506914  07 10 80 e0                                      add r1, r0, r7
00506918  05 00 a0 e1                                      mov r0, r5
0050691c  db 49 fd eb                                      bl #0x459090
00506920  04 80 8d e5                                      str r8, [sp, #4]
00506924  00 00 58 e3                                      cmp r8, #0
00506928  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0050692c  10 00 00 1a                                      bne #0x506974
00506930  07 70 83 e0                                      add r7, r3, r7
00506934  02 30 87 e2                                      add r3, r7, #2
00506938  01 70 87 e2                                      add r7, r7, #1
0050693c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00506940  01 20 57 e5                                      ldrb r2, [r7, #-1]
00506944  03 00 57 e1                                      cmp r7, r3
00506948  02 20 21 e0                                      eor r2, r1, r2
0050694c  01 20 47 e5                                      strb r2, [r7, #-1]
00506950  01 10 d3 e5                                      ldrb r1, [r3, #1]
00506954  01 20 22 e0                                      eor r2, r2, r1
00506958  01 20 c3 e5                                      strb r2, [r3, #1]
0050695c  01 10 57 e5                                      ldrb r1, [r7, #-1]
00506960  01 30 43 e2                                      sub r3, r3, #1
00506964  01 20 22 e0                                      eor r2, r2, r1
00506968  01 20 47 e5                                      strb r2, [r7, #-1]
0050696c  01 70 87 e2                                      add r7, r7, #1
00506970  f1 ff ff 3a                                      blo #0x50693c
00506974  18 30 94 e5                                      ldr r3, [r4, #0x18]
00506978  01 60 86 e2                                      add r6, r6, #1
0050697c  06 00 53 e1                                      cmp r3, r6
00506980  1c 00 94 85                                      ldrhi r0, [r4, #0x1c]
00506984  e1 ff ff 8a                                      bhi #0x506910
00506988  08 d0 8d e2                                      add sp, sp, #8
0050698c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
