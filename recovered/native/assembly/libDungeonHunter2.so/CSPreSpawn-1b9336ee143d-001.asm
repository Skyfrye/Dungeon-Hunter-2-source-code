; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c006c, declared_size=4, range_size=4, mode=arm
; class-group: CSPreSpawn
; alias: _ZN10CSPreSpawnD1Ev
; demangled: CSPreSpawn::~CSPreSpawn()
; decoder-mode: arm
003c006c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0070, declared_size=4, range_size=4, mode=arm
; class-group: CSPreSpawn
; alias: _ZN10CSPreSpawn8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSPreSpawn::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c0070  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0720, declared_size=52, range_size=52, mode=arm
; class-group: CSPreSpawn
; alias: _ZN10CSPreSpawnD0Ev
; demangled: CSPreSpawn::~CSPreSpawn()
; decoder-mode: arm
003c0720  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c0724  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c0728  10 40 2d e9                                      push {r4, lr}
003c072c  03 30 8f e0                                      add r3, pc, r3
003c0730  02 20 93 e7                                      ldr r2, [r3, r2]
003c0734  00 40 a0 e1                                      mov r4, r0
003c0738  08 20 82 e2                                      add r2, r2, #8
003c073c  00 20 80 e5                                      str r2, [r0]
003c0740  3e 3f fd eb                                      bl #0x310440
003c0744  04 00 a0 e1                                      mov r0, r4
003c0748  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c074c  64 43 5d 00 08 2a 00 00                          .byte 0x64, 0x43, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c2810, declared_size=312, range_size=312, mode=arm
; class-group: CSPreSpawn
; alias: _ZN10CSPreSpawn7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSPreSpawn::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003c2810  70 40 2d e9                                      push {r4, r5, r6, lr}
003c2814  10 d0 4d e2                                      sub sp, sp, #0x10
003c2818  20 60 9d e5                                      ldr r6, [sp, #0x20]
003c281c  08 41 9f e5                                      ldr r4, [pc, #0x108]
003c2820  01 30 a0 e1                                      mov r3, r1
003c2824  09 00 56 e3                                      cmp r6, #9
003c2828  04 40 8f e0                                      add r4, pc, r4
003c282c  02 50 a0 e1                                      mov r5, r2
003c2830  24 00 9d e5                                      ldr r0, [sp, #0x24]
003c2834  0e 00 00 0a                                      beq #0x3c2874
003c2838  28 00 56 e3                                      cmp r6, #0x28
003c283c  01 00 00 0a                                      beq #0x3c2848
003c2840  10 d0 8d e2                                      add sp, sp, #0x10
003c2844  70 80 bd e8                                      pop {r4, r5, r6, pc}
003c2848  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
003c284c  01 10 8f e0                                      add r1, pc, r1
003c2850  b1 2e fd eb                                      bl #0x30e31c
003c2854  00 00 50 e3                                      cmp r0, #0
003c2858  f8 ff ff 1a                                      bne #0x3c2840
003c285c  20 35 95 e5                                      ldr r3, [r5, #0x520]
003c2860  05 00 a0 e1                                      mov r0, r5
003c2864  02 3a 83 e3                                      orr r3, r3, #0x2000
003c2868  20 35 85 e5                                      str r3, [r5, #0x520]
003c286c  05 c6 ff eb                                      bl #0x3b4088
003c2870  f2 ff ff ea                                      b #0x3c2840
003c2874  10 c0 8d e2                                      add ip, sp, #0x10
003c2878  01 20 a0 e3                                      mov r2, #1
003c287c  04 20 2c e5                                      str r2, [ip, #-4]!
003c2880  06 10 a0 e1                                      mov r1, r6
003c2884  00 20 a0 e1                                      mov r2, r0
003c2888  05 00 a0 e1                                      mov r0, r5
003c288c  00 c0 8d e5                                      str ip, [sp]
003c2890  93 aa ff eb                                      bl #0x3ad2e4
003c2894  00 00 50 e3                                      cmp r0, #0
003c2898  e8 ff ff 0a                                      beq #0x3c2840
003c289c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003c28a0  01 00 51 e3                                      cmp r1, #1
003c28a4  15 00 00 0a                                      beq #0x3c2900
003c28a8  84 30 9f e5                                      ldr r3, [pc, #0x84]
003c28ac  03 30 94 e7                                      ldr r3, [r4, r3]
003c28b0  00 30 93 e5                                      ldr r3, [r3]
003c28b4  02 00 53 e3                                      cmp r3, #2
003c28b8  00 30 a0 03                                      moveq r3, #0
003c28bc  00 30 83 05                                      streq r3, [r3]
003c28c0  de ff ff 0a                                      beq #0x3c2840
003c28c4  01 00 53 e3                                      cmp r3, #1
003c28c8  dc ff ff 1a                                      bne #0x3c2840
003c28cc  64 00 9f e5                                      ldr r0, [pc, #0x64]
003c28d0  64 10 9f e5                                      ldr r1, [pc, #0x64]
003c28d4  64 20 9f e5                                      ldr r2, [pc, #0x64]
003c28d8  00 00 94 e7                                      ldr r0, [r4, r0]
003c28dc  60 30 9f e5                                      ldr r3, [pc, #0x60]
003c28e0  72 c0 a0 e3                                      mov ip, #0x72
003c28e4  01 10 8f e0                                      add r1, pc, r1
003c28e8  02 20 8f e0                                      add r2, pc, r2
003c28ec  03 30 8f e0                                      add r3, pc, r3
003c28f0  a8 00 80 e2                                      add r0, r0, #0xa8
003c28f4  00 c0 8d e5                                      str ip, [sp]
003c28f8  c1 2d fd eb                                      bl #0x30e004
003c28fc  cf ff ff ea                                      b #0x3c2840
003c2900  4f 0e 85 e2                                      add r0, r5, #0x4f0
003c2904  0c 00 80 e2                                      add r0, r0, #0xc
003c2908  00 20 a0 e3                                      mov r2, #0
003c290c  88 ff ff eb                                      bl #0x3c2734
003c2910  00 34 95 e5                                      ldr r3, [r5, #0x400]
003c2914  03 00 53 e3                                      cmp r3, #3
003c2918  c8 ff ff 1a                                      bne #0x3c2840
003c291c  fc 33 95 e5                                      ldr r3, [r5, #0x3fc]
003c2920  00 20 a0 e3                                      mov r2, #0
003c2924  24 20 83 e5                                      str r2, [r3, #0x24]
003c2928  c4 ff ff ea                                      b #0x3c2840
; mapping-symbol data/literal pool
003c292c  68 22 5d 00 1c 23 50 00 c0 39 00 00 c0 19 00 00  .byte 0x68, 0x22, 0x5d, 0x00, 0x1c, 0x23, 0x50, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003c293c  f4 ba 4f 00 a8 24 50 00 fc 24 50 00              .byte 0xf4, 0xba, 0x4f, 0x00, 0xa8, 0x24, 0x50, 0x00, 0xfc, 0x24, 0x50, 0x00

; FUNCTION 0x003c67d4, declared_size=184, range_size=184, mode=arm
; class-group: CSPreSpawn
; alias: _ZN10CSPreSpawn6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSPreSpawn::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c67d4  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
003c67d8  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
003c67dc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c67e0  03 30 8f e0                                      add r3, pc, r3
003c67e4  01 60 93 e7                                      ldr r6, [r3, r1]
003c67e8  94 10 9f e5                                      ldr r1, [pc, #0x94]
003c67ec  02 40 a0 e1                                      mov r4, r2
003c67f0  00 20 96 e5                                      ldr r2, [r6]
003c67f4  01 70 93 e7                                      ldr r7, [r3, r1]
003c67f8  24 d0 4d e2                                      sub sp, sp, #0x24
003c67fc  1c 20 8d e5                                      str r2, [sp, #0x1c]
003c6800  07 00 a0 e1                                      mov r0, r7
003c6804  1f c4 fd eb                                      bl #0x337888
003c6808  78 10 9f e5                                      ldr r1, [pc, #0x78]
003c680c  04 50 8d e2                                      add r5, sp, #4
003c6810  0d 20 a0 e1                                      mov r2, sp
003c6814  01 10 8f e0                                      add r1, pc, r1
003c6818  05 00 a0 e1                                      mov r0, r5
003c681c  32 36 fd eb                                      bl #0x3140ec
003c6820  05 10 a0 e1                                      mov r1, r5
003c6824  07 00 a0 e1                                      mov r0, r7
003c6828  96 c4 fd eb                                      bl #0x337a88
003c682c  05 00 a0 e1                                      mov r0, r5
003c6830  87 46 fd eb                                      bl #0x318254
003c6834  00 30 94 e5                                      ldr r3, [r4]
003c6838  01 10 a0 e3                                      mov r1, #1
003c683c  04 00 a0 e1                                      mov r0, r4
003c6840  0f e0 a0 e1                                      mov lr, pc
003c6844  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003c6848  00 10 a0 e3                                      mov r1, #0
003c684c  01 20 a0 e1                                      mov r2, r1
003c6850  04 00 a0 e1                                      mov r0, r4
003c6854  54 7c ff eb                                      bl #0x3a59ac
003c6858  04 00 a0 e1                                      mov r0, r4
003c685c  76 38 ff eb                                      bl #0x394a3c
003c6860  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c6864  00 30 96 e5                                      ldr r3, [r6]
003c6868  03 00 52 e1                                      cmp r2, r3
003c686c  01 00 00 1a                                      bne #0x3c6878
003c6870  24 d0 8d e2                                      add sp, sp, #0x24
003c6874  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003c6878  a4 1e fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c687c  b0 e2 5c 00 ac 40 00 00 84 08 00 00 3c e6 4f 00  .byte 0xb0, 0xe2, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x3c, 0xe6, 0x4f, 0x00

; FUNCTION 0x003c688c, declared_size=404, range_size=404, mode=arm
; class-group: CSPreSpawn
; alias: _ZN10CSPreSpawn7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSPreSpawn::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c688c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003c6890  68 51 9f e5                                      ldr r5, [pc, #0x168]
003c6894  68 71 9f e5                                      ldr r7, [pc, #0x168]
003c6898  68 11 9f e5                                      ldr r1, [pc, #0x168]
003c689c  05 50 8f e0                                      add r5, pc, r5
003c68a0  07 30 95 e7                                      ldr r3, [r5, r7]
003c68a4  01 80 95 e7                                      ldr r8, [r5, r1]
003c68a8  24 d0 4d e2                                      sub sp, sp, #0x24
003c68ac  00 30 93 e5                                      ldr r3, [r3]
003c68b0  08 00 a0 e1                                      mov r0, r8
003c68b4  02 40 a0 e1                                      mov r4, r2
003c68b8  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c68bc  f1 c3 fd eb                                      bl #0x337888
003c68c0  44 11 9f e5                                      ldr r1, [pc, #0x144]
003c68c4  04 60 8d e2                                      add r6, sp, #4
003c68c8  0d 20 a0 e1                                      mov r2, sp
003c68cc  06 00 a0 e1                                      mov r0, r6
003c68d0  01 10 8f e0                                      add r1, pc, r1
003c68d4  04 36 fd eb                                      bl #0x3140ec
003c68d8  06 10 a0 e1                                      mov r1, r6
003c68dc  08 00 a0 e1                                      mov r0, r8
003c68e0  68 c4 fd eb                                      bl #0x337a88
003c68e4  06 00 a0 e1                                      mov r0, r6
003c68e8  59 46 fd eb                                      bl #0x318254
003c68ec  13 3c a0 e3                                      mov r3, #0x1300
003c68f0  20 35 84 e5                                      str r3, [r4, #0x520]
003c68f4  14 31 9f e5                                      ldr r3, [pc, #0x114]
003c68f8  04 00 a0 e1                                      mov r0, r4
003c68fc  a0 60 a0 e3                                      mov r6, #0xa0
003c6900  03 80 95 e7                                      ldr r8, [r5, r3]
003c6904  00 a0 98 e5                                      ldr sl, [r8]
003c6908  46 72 ff eb                                      bl #0x3a3228
003c690c  96 a0 20 e0                                      mla r0, r6, r0, sl
003c6910  64 30 90 e5                                      ldr r3, [r0, #0x64]
003c6914  01 00 73 e3                                      cmn r3, #1
003c6918  1c 00 00 0a                                      beq #0x3c6990
003c691c  04 00 a0 e1                                      mov r0, r4
003c6920  00 80 98 e5                                      ldr r8, [r8]
003c6924  3f 72 ff eb                                      bl #0x3a3228
003c6928  96 80 26 e0                                      mla r6, r6, r0, r8
003c692c  49 0e 84 e2                                      add r0, r4, #0x490
003c6930  0c 00 80 e2                                      add r0, r0, #0xc
003c6934  64 10 96 e5                                      ldr r1, [r6, #0x64]
003c6938  dc 10 00 eb                                      bl #0x3cacb0
003c693c  00 10 a0 e3                                      mov r1, #0
003c6940  01 20 a0 e1                                      mov r2, r1
003c6944  04 00 a0 e1                                      mov r0, r4
003c6948  aa 38 ff eb                                      bl #0x394bf8
003c694c  e4 33 01 e3                                      movw r3, #0x13e4
003c6950  03 10 d4 e7                                      ldrb r1, [r4, r3]
003c6954  00 00 51 e3                                      cmp r1, #0
003c6958  03 00 00 1a                                      bne #0x3c696c
003c695c  00 30 94 e5                                      ldr r3, [r4]
003c6960  04 00 a0 e1                                      mov r0, r4
003c6964  0f e0 a0 e1                                      mov lr, pc
003c6968  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003c696c  04 00 a0 e1                                      mov r0, r4
003c6970  0e 38 ff eb                                      bl #0x3949b0
003c6974  07 30 95 e7                                      ldr r3, [r5, r7]
003c6978  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c697c  00 30 93 e5                                      ldr r3, [r3]
003c6980  03 00 52 e1                                      cmp r2, r3
003c6984  1c 00 00 1a                                      bne #0x3c69fc
003c6988  24 d0 8d e2                                      add sp, sp, #0x24
003c698c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003c6990  04 00 a0 e1                                      mov r0, r4
003c6994  00 80 98 e5                                      ldr r8, [r8]
003c6998  22 72 ff eb                                      bl #0x3a3228
003c699c  70 30 9f e5                                      ldr r3, [pc, #0x70]
003c69a0  70 10 9f e5                                      ldr r1, [pc, #0x70]
003c69a4  03 20 95 e7                                      ldr r2, [r5, r3]
003c69a8  96 80 23 e0                                      mla r3, r6, r0, r8
003c69ac  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c69b0  64 20 9f e5                                      ldr r2, [pc, #0x64]
003c69b4  01 10 8f e0                                      add r1, pc, r1
003c69b8  80 60 93 e5                                      ldr r6, [r3, #0x80]
003c69bc  02 20 8f e0                                      add r2, pc, r2
003c69c0  85 f8 03 eb                                      bl #0x4c4bdc
003c69c4  49 8e 84 e2                                      add r8, r4, #0x490
003c69c8  01 00 10 e2                                      ands r0, r0, #1
003c69cc  0c 80 88 e2                                      add r8, r8, #0xc
003c69d0  06 00 00 1a                                      bne #0x3c69f0
003c69d4  06 10 80 e0                                      add r1, r0, r6
003c69d8  08 00 a0 e1                                      mov r0, r8
003c69dc  b3 10 00 eb                                      bl #0x3cacb0
003c69e0  08 00 a0 e1                                      mov r0, r8
003c69e4  00 10 a0 e3                                      mov r1, #0
003c69e8  83 0a 00 eb                                      bl #0x3c93fc
003c69ec  d2 ff ff ea                                      b #0x3c693c
003c69f0  04 00 a0 e1                                      mov r0, r4
003c69f4  79 7a ff eb                                      bl #0x3a53e0
003c69f8  f5 ff ff ea                                      b #0x3c69d4
003c69fc  43 1e fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c6a00  f4 e1 5c 00 ac 40 00 00 84 08 00 00 80 e5 4f 00  .byte 0xf4, 0xe1, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x80, 0xe5, 0x4f, 0x00
003c6a10  44 48 00 00 f4 37 00 00 04 e2 4f 00 0c e2 4f 00  .byte 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x04, 0xe2, 0x4f, 0x00, 0x0c, 0xe2, 0x4f, 0x00

; FUNCTION 0x003c8d24, declared_size=56, range_size=56, mode=arm
; class-group: CSPreSpawn
; alias: _ZN10CSPreSpawn6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSPreSpawn::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c8d24  04 e0 2d e5                                      str lr, [sp, #-4]!
003c8d28  4f 0e 82 e2                                      add r0, r2, #0x4f0
003c8d2c  14 d0 4d e2                                      sub sp, sp, #0x14
003c8d30  00 c0 a0 e3                                      mov ip, #0
003c8d34  0c 00 80 e2                                      add r0, r0, #0xc
003c8d38  2d 20 a0 e3                                      mov r2, #0x2d
003c8d3c  01 30 a0 e3                                      mov r3, #1
003c8d40  04 c0 8d e5                                      str ip, [sp, #4]
003c8d44  08 c0 8d e5                                      str ip, [sp, #8]
003c8d48  0c c0 8d e5                                      str ip, [sp, #0xc]
003c8d4c  00 c0 8d e5                                      str ip, [sp]
003c8d50  70 fb ff eb                                      bl #0x3c7b18
003c8d54  14 d0 8d e2                                      add sp, sp, #0x14
003c8d58  00 80 bd e8                                      ldm sp!, {pc}
