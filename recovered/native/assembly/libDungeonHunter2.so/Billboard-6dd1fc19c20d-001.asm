; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003876c8, declared_size=4, range_size=4, mode=arm
; class-group: Billboard
; alias: _ZNK9Billboard4DrawEv
; demangled: Billboard::Draw() const
; decoder-mode: arm
003876c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003876cc, declared_size=8, range_size=8, mode=arm
; class-group: Billboard
; alias: _ZNK9Billboard9IsZonableEv
; demangled: Billboard::IsZonable() const
; decoder-mode: arm
003876cc  00 00 a0 e3                                      mov r0, #0
003876d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003876d4, declared_size=8, range_size=8, mode=arm
; class-group: Billboard
; alias: _ZNK9Billboard11IsUpdatableEv
; demangled: Billboard::IsUpdatable() const
; decoder-mode: arm
003876d4  01 00 a0 e3                                      mov r0, #1
003876d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003876dc, declared_size=88, range_size=88, mode=arm
; class-group: Billboard
; alias: _ZN9Billboard6UpdateEv
; demangled: Billboard::Update()
; decoder-mode: arm
003876dc  10 40 2d e9                                      push {r4, lr}
003876e0  78 11 90 e5                                      ldr r1, [r0, #0x178]
003876e4  40 30 9f e5                                      ldr r3, [pc, #0x40]
003876e8  00 00 51 e3                                      cmp r1, #0
003876ec  03 30 8f e0                                      add r3, pc, r3
003876f0  0c 00 00 0a                                      beq #0x387728
003876f4  74 21 d0 e5                                      ldrb r2, [r0, #0x174]
003876f8  00 00 52 e3                                      cmp r2, #0
003876fc  09 00 00 0a                                      beq #0x387728
00387700  28 20 9f e5                                      ldr r2, [pc, #0x28]
00387704  04 10 81 e2                                      add r1, r1, #4
00387708  02 30 93 e7                                      ldr r3, [r3, r2]
0038770c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00387710  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00387714  e4 30 93 e5                                      ldr r3, [r3, #0xe4]
00387718  03 00 a0 e1                                      mov r0, r3
0038771c  00 30 93 e5                                      ldr r3, [r3]
00387720  0f e0 a0 e1                                      mov lr, pc
00387724  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00387728  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0038772c  a4 d3 60 00 f4 37 00 00                          .byte 0xa4, 0xd3, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0038781c, declared_size=624, range_size=624, mode=arm
; class-group: Billboard
; alias: _ZN9Billboard8InitPostEv
; demangled: Billboard::InitPost()
; decoder-mode: arm
0038781c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00387820  50 52 9f e5                                      ldr r5, [pc, #0x250]
00387824  50 72 9f e5                                      ldr r7, [pc, #0x250]
00387828  20 d0 4d e2                                      sub sp, sp, #0x20
0038782c  05 50 8f e0                                      add r5, pc, r5
00387830  07 60 95 e7                                      ldr r6, [r5, r7]
00387834  00 40 a0 e1                                      mov r4, r0
00387838  1c 80 8d e2                                      add r8, sp, #0x1c
0038783c  10 10 96 e5                                      ldr r1, [r6, #0x10]
00387840  00 30 a0 e3                                      mov r3, #0
00387844  08 00 a0 e1                                      mov r0, r8
00387848  10 10 91 e5                                      ldr r1, [r1, #0x10]
0038784c  34 21 94 e5                                      ldr r2, [r4, #0x134]
00387850  e0 10 91 e5                                      ldr r1, [r1, #0xe0]
00387854  6d 96 09 eb                                      bl #0x5ed210
00387858  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0038785c  00 00 53 e3                                      cmp r3, #0
00387860  62 00 00 0a                                      beq #0x3879f0
00387864  10 30 96 e5                                      ldr r3, [r6, #0x10]
00387868  10 12 9f e5                                      ldr r1, [pc, #0x210]
0038786c  18 60 8d e2                                      add r6, sp, #0x18
00387870  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00387874  01 10 8f e0                                      add r1, pc, r1
00387878  03 00 a0 e1                                      mov r0, r3
0038787c  04 20 90 e5                                      ldr r2, [r0, #4]
00387880  00 30 93 e5                                      ldr r3, [r3]
00387884  0f e0 a0 e1                                      mov lr, pc
00387888  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0038788c  00 30 50 e2                                      subs r3, r0, #0
00387890  04 00 43 12                                      subne r0, r3, #4
00387894  03 00 a0 01                                      moveq r0, r3
00387898  78 01 84 e5                                      str r0, [r4, #0x178]
0038789c  00 10 90 e5                                      ldr r1, [r0]
003878a0  00 30 a0 11                                      movne r3, r0
003878a4  07 20 95 e7                                      ldr r2, [r5, r7]
003878a8  10 10 11 e5                                      ldr r1, [r1, #-0x10]
003878ac  06 00 a0 e1                                      mov r0, r6
003878b0  01 30 83 e0                                      add r3, r3, r1
003878b4  04 10 93 e5                                      ldr r1, [r3, #4]
003878b8  01 10 81 e2                                      add r1, r1, #1
003878bc  04 10 83 e5                                      str r1, [r3, #4]
003878c0  10 30 92 e5                                      ldr r3, [r2, #0x10]
003878c4  64 21 d4 e5                                      ldrb r2, [r4, #0x164]
003878c8  10 30 93 e5                                      ldr r3, [r3, #0x10]
003878cc  00 00 52 e3                                      cmp r2, #0
003878d0  0a 20 a0 13                                      movne r2, #0xa
003878d4  0b 20 a0 03                                      moveq r2, #0xb
003878d8  dc 10 93 e5                                      ldr r1, [r3, #0xdc]
003878dc  83 48 09 eb                                      bl #0x5d9af0
003878e0  18 30 9d e5                                      ldr r3, [sp, #0x18]
003878e4  02 10 a0 e3                                      mov r1, #2
003878e8  00 20 a0 e3                                      mov r2, #0
003878ec  04 00 93 e5                                      ldr r0, [r3, #4]
003878f0  84 1d 09 eb                                      bl #0x5cef08
003878f4  ff 3f 0f e3                                      movw r3, #0xffff
003878f8  03 00 50 e1                                      cmp r0, r3
003878fc  04 00 00 0a                                      beq #0x387914
00387900  00 10 a0 e1                                      mov r1, r0
00387904  08 30 a0 e1                                      mov r3, r8
00387908  18 00 9d e5                                      ldr r0, [sp, #0x18]
0038790c  00 20 a0 e3                                      mov r2, #0
00387910  83 16 09 eb                                      bl #0x5cd324
00387914  78 01 94 e5                                      ldr r0, [r4, #0x178]
00387918  06 10 a0 e1                                      mov r1, r6
0038791c  51 e5 07 eb                                      bl #0x580e68
00387920  78 31 94 e5                                      ldr r3, [r4, #0x178]
00387924  15 1e 84 e2                                      add r1, r4, #0x150
00387928  4e 8f 84 e2                                      add r8, r4, #0x138
0038792c  03 00 a0 e1                                      mov r0, r3
00387930  00 30 93 e5                                      ldr r3, [r3]
00387934  0f e0 a0 e1                                      mov lr, pc
00387938  08 f0 93 e5                                      ldr pc, [r3, #8]
0038793c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00387940  56 1f 84 e2                                      add r1, r4, #0x158
00387944  04 00 83 e2                                      add r0, r3, #4
00387948  04 30 93 e5                                      ldr r3, [r3, #4]
0038794c  0f e0 a0 e1                                      mov lr, pc
00387950  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00387954  78 31 94 e5                                      ldr r3, [r4, #0x178]
00387958  00 10 a0 e3                                      mov r1, #0
0038795c  04 00 83 e2                                      add r0, r3, #4
00387960  04 30 93 e5                                      ldr r3, [r3, #4]
00387964  0f e0 a0 e1                                      mov lr, pc
00387968  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0038796c  10 11 9f e5                                      ldr r1, [pc, #0x110]
00387970  08 00 a0 e1                                      mov r0, r8
00387974  01 10 8f e0                                      add r1, pc, r1
00387978  b2 30 fe eb                                      bl #0x313c48
0038797c  00 00 50 e3                                      cmp r0, #0
00387980  74 01 c4 e5                                      strb r0, [r4, #0x174]
00387984  25 00 00 0a                                      beq #0x387a20
00387988  5a 8f 84 e2                                      add r8, r4, #0x168
0038798c  08 00 a0 e1                                      mov r0, r8
00387990  00 10 a0 e3                                      mov r1, #0
00387994  09 e1 fe eb                                      bl #0x33fdc0
00387998  00 00 50 e3                                      cmp r0, #0
0038799c  15 00 00 0a                                      beq #0x3879f8
003879a0  08 00 a0 e1                                      mov r0, r8
003879a4  4e e1 fe eb                                      bl #0x33fee4
003879a8  00 00 50 e3                                      cmp r0, #0
003879ac  09 00 00 0a                                      beq #0x3879d8
003879b0  d8 32 90 e5                                      ldr r3, [r0, #0x2d8]
003879b4  00 00 53 e3                                      cmp r3, #0
003879b8  06 00 00 0a                                      beq #0x3879d8
003879bc  08 00 93 e5                                      ldr r0, [r3, #8]
003879c0  78 11 94 e5                                      ldr r1, [r4, #0x178]
003879c4  00 30 90 e5                                      ldr r3, [r0]
003879c8  00 00 51 e3                                      cmp r1, #0
003879cc  5c 30 93 e5                                      ldr r3, [r3, #0x5c]
003879d0  04 10 81 12                                      addne r1, r1, #4
003879d4  33 ff 2f e1                                      blx r3
003879d8  06 00 a0 e1                                      mov r0, r6
003879dc  81 24 fe eb                                      bl #0x310be8
003879e0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003879e4  00 00 50 e3                                      cmp r0, #0
003879e8  00 00 00 0a                                      beq #0x3879f0
003879ec  e4 56 fe eb                                      bl #0x31d584
003879f0  20 d0 8d e2                                      add sp, sp, #0x20
003879f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003879f8  07 30 95 e7                                      ldr r3, [r5, r7]
003879fc  78 11 94 e5                                      ldr r1, [r4, #0x178]
00387a00  10 30 93 e5                                      ldr r3, [r3, #0x10]
00387a04  00 00 51 e3                                      cmp r1, #0
00387a08  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00387a0c  04 00 93 e5                                      ldr r0, [r3, #4]
00387a10  00 30 90 e5                                      ldr r3, [r0]
00387a14  5c 30 93 e5                                      ldr r3, [r3, #0x5c]
00387a18  04 10 81 12                                      addne r1, r1, #4
00387a1c  ec ff ff ea                                      b #0x3879d4
00387a20  60 10 9f e5                                      ldr r1, [pc, #0x60]
00387a24  08 00 a0 e1                                      mov r0, r8
00387a28  01 10 8f e0                                      add r1, pc, r1
00387a2c  85 30 fe eb                                      bl #0x313c48
00387a30  00 c0 50 e2                                      subs ip, r0, #0
00387a34  d3 ff ff 1a                                      bne #0x387988
00387a38  07 30 95 e7                                      ldr r3, [r5, r7]
00387a3c  08 80 8d e2                                      add r8, sp, #8
00387a40  4c 21 94 e5                                      ldr r2, [r4, #0x14c]
00387a44  38 10 93 e5                                      ldr r1, [r3, #0x38]
00387a48  08 00 a0 e1                                      mov r0, r8
00387a4c  00 30 e0 e3                                      mvn r3, #0
00387a50  04 c0 8d e5                                      str ip, [sp, #4]
00387a54  00 c0 8d e5                                      str ip, [sp]
00387a58  90 0c ff eb                                      bl #0x34aca0
00387a5c  08 10 98 e5                                      ldr r1, [r8, #8]
00387a60  08 20 9d e5                                      ldr r2, [sp, #8]
00387a64  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00387a68  70 11 84 e5                                      str r1, [r4, #0x170]
00387a6c  68 21 84 e5                                      str r2, [r4, #0x168]
00387a70  6c 31 84 e5                                      str r3, [r4, #0x16c]
00387a74  c3 ff ff ea                                      b #0x387988
; mapping-symbol data/literal pool
00387a78  64 d2 60 00 f4 37 00 00 84 a9 53 00 94 a8 53 00  .byte 0x64, 0xd2, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x84, 0xa9, 0x53, 0x00, 0x94, 0xa8, 0x53, 0x00
00387a88  e0 3d 54 00                                      .byte 0xe0, 0x3d, 0x54, 0x00

; FUNCTION 0x00387b9c, declared_size=8, range_size=8, mode=arm
; class-group: Billboard
; alias: _ZThn36_N9BillboardD1Ev
; demangled: non-virtual thunk to Billboard::~Billboard()
; decoder-mode: arm
00387b9c  24 00 40 e2                                      sub r0, r0, #0x24
00387ba0  ff ff ff ea                                      b #0x387ba4

; FUNCTION 0x00387ba4, declared_size=112, range_size=112, mode=arm
; class-group: Billboard
; alias: _ZN9BillboardD1Ev
; demangled: Billboard::~Billboard()
; decoder-mode: arm
00387ba4  10 40 2d e9                                      push {r4, lr}
00387ba8  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00387bac  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00387bb0  78 11 90 e5                                      ldr r1, [r0, #0x178]
00387bb4  02 20 8f e0                                      add r2, pc, r2
00387bb8  03 30 92 e7                                      ldr r3, [r2, r3]
00387bbc  00 40 a0 e1                                      mov r4, r0
00387bc0  00 00 51 e3                                      cmp r1, #0
00387bc4  78 20 83 e2                                      add r2, r3, #0x78
00387bc8  08 00 83 e2                                      add r0, r3, #8
00387bcc  6c 30 83 e2                                      add r3, r3, #0x6c
00387bd0  09 00 84 e8                                      stm r4, {r0, r3}
00387bd4  24 20 84 e5                                      str r2, [r4, #0x24]
00387bd8  03 00 00 0a                                      beq #0x387bec
00387bdc  00 30 91 e5                                      ldr r3, [r1]
00387be0  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00387be4  00 00 81 e0                                      add r0, r1, r0
00387be8  65 56 fe eb                                      bl #0x31d584
00387bec  4e 0f 84 e2                                      add r0, r4, #0x138
00387bf0  6d 2f fe eb                                      bl #0x3139ac
00387bf4  12 0e 84 e2                                      add r0, r4, #0x120
00387bf8  6b 2f fe eb                                      bl #0x3139ac
00387bfc  04 00 a0 e1                                      mov r0, r4
00387c00  64 db fe eb                                      bl #0x33e998
00387c04  04 00 a0 e1                                      mov r0, r4
00387c08  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00387c0c  dc ce 60 00 94 40 00 00                          .byte 0xdc, 0xce, 0x60, 0x00, 0x94, 0x40, 0x00, 0x00

; FUNCTION 0x00387c14, declared_size=8, range_size=8, mode=arm
; class-group: Billboard
; alias: _ZThn36_N9BillboardD0Ev
; demangled: non-virtual thunk to Billboard::~Billboard()
; decoder-mode: arm
00387c14  24 00 40 e2                                      sub r0, r0, #0x24
00387c18  ff ff ff ea                                      b #0x387c1c

; FUNCTION 0x00387c1c, declared_size=28, range_size=28, mode=arm
; class-group: Billboard
; alias: _ZN9BillboardD0Ev
; demangled: Billboard::~Billboard()
; decoder-mode: arm
00387c1c  10 40 2d e9                                      push {r4, lr}
00387c20  00 40 a0 e1                                      mov r4, r0
00387c24  de ff ff eb                                      bl #0x387ba4
00387c28  04 00 a0 e1                                      mov r0, r4
00387c2c  03 22 fe eb                                      bl #0x310440
00387c30  04 00 a0 e1                                      mov r0, r4
00387c34  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00387c38, declared_size=112, range_size=112, mode=arm
; class-group: Billboard
; alias: _ZN9BillboardD2Ev
; demangled: Billboard::~Billboard()
; decoder-mode: arm
00387c38  10 40 2d e9                                      push {r4, lr}
00387c3c  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00387c40  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00387c44  78 11 90 e5                                      ldr r1, [r0, #0x178]
00387c48  02 20 8f e0                                      add r2, pc, r2
00387c4c  03 30 92 e7                                      ldr r3, [r2, r3]
00387c50  00 40 a0 e1                                      mov r4, r0
00387c54  00 00 51 e3                                      cmp r1, #0
00387c58  78 20 83 e2                                      add r2, r3, #0x78
00387c5c  08 00 83 e2                                      add r0, r3, #8
00387c60  6c 30 83 e2                                      add r3, r3, #0x6c
00387c64  09 00 84 e8                                      stm r4, {r0, r3}
00387c68  24 20 84 e5                                      str r2, [r4, #0x24]
00387c6c  03 00 00 0a                                      beq #0x387c80
00387c70  00 30 91 e5                                      ldr r3, [r1]
00387c74  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00387c78  00 00 81 e0                                      add r0, r1, r0
00387c7c  40 56 fe eb                                      bl #0x31d584
00387c80  4e 0f 84 e2                                      add r0, r4, #0x138
00387c84  48 2f fe eb                                      bl #0x3139ac
00387c88  12 0e 84 e2                                      add r0, r4, #0x120
00387c8c  46 2f fe eb                                      bl #0x3139ac
00387c90  04 00 a0 e1                                      mov r0, r4
00387c94  3f db fe eb                                      bl #0x33e998
00387c98  04 00 a0 e1                                      mov r0, r4
00387c9c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00387ca0  48 ce 60 00 94 40 00 00                          .byte 0x48, 0xce, 0x60, 0x00, 0x94, 0x40, 0x00, 0x00

; FUNCTION 0x00387d84, declared_size=188, range_size=188, mode=arm
; class-group: Billboard
; alias: _ZN9BillboardC2EN10ObjectBase6GO_IDSE
; demangled: Billboard::Billboard(ObjectBase::GO_IDS)
; decoder-mode: arm
00387d84  70 40 2d e9                                      push {r4, r5, r6, lr}
00387d88  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
00387d8c  00 40 a0 e1                                      mov r4, r0
00387d90  5e dd fe eb                                      bl #0x33f310
00387d94  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
00387d98  05 50 8f e0                                      add r5, pc, r5
00387d9c  12 2e 84 e2                                      add r2, r4, #0x120
00387da0  03 30 95 e7                                      ldr r3, [r5, r3]
00387da4  02 00 a0 e1                                      mov r0, r2
00387da8  30 21 84 e5                                      str r2, [r4, #0x130]
00387dac  08 c0 83 e2                                      add ip, r3, #8
00387db0  78 10 83 e2                                      add r1, r3, #0x78
00387db4  6c 30 83 e2                                      add r3, r3, #0x6c
00387db8  00 c0 84 e5                                      str ip, [r4]
00387dbc  04 30 84 e5                                      str r3, [r4, #4]
00387dc0  24 10 84 e5                                      str r1, [r4, #0x24]
00387dc4  34 21 84 e5                                      str r2, [r4, #0x134]
00387dc8  10 10 a0 e3                                      mov r1, #0x10
00387dcc  2a 26 fe eb                                      bl #0x31167c
00387dd0  30 21 94 e5                                      ldr r2, [r4, #0x130]
00387dd4  00 50 a0 e3                                      mov r5, #0
00387dd8  4e 3f 84 e2                                      add r3, r4, #0x138
00387ddc  00 50 c2 e5                                      strb r5, [r2]
00387de0  03 00 a0 e1                                      mov r0, r3
00387de4  48 31 84 e5                                      str r3, [r4, #0x148]
00387de8  4c 31 84 e5                                      str r3, [r4, #0x14c]
00387dec  10 10 a0 e3                                      mov r1, #0x10
00387df0  21 26 fe eb                                      bl #0x31167c
00387df4  48 21 94 e5                                      ldr r2, [r4, #0x148]
00387df8  00 30 a0 e3                                      mov r3, #0
00387dfc  5a 0f 84 e2                                      add r0, r4, #0x168
00387e00  00 50 c2 e5                                      strb r5, [r2]
00387e04  60 31 84 e5                                      str r3, [r4, #0x160]
00387e08  50 31 84 e5                                      str r3, [r4, #0x150]
00387e0c  54 31 84 e5                                      str r3, [r4, #0x154]
00387e10  58 31 84 e5                                      str r3, [r4, #0x158]
00387e14  5c 31 84 e5                                      str r3, [r4, #0x15c]
00387e18  64 51 c4 e5                                      strb r5, [r4, #0x164]
00387e1c  ba dd fe eb                                      bl #0x33f50c
00387e20  01 30 a0 e3                                      mov r3, #1
00387e24  78 51 84 e5                                      str r5, [r4, #0x178]
00387e28  85 30 c4 e5                                      strb r3, [r4, #0x85]
00387e2c  74 51 c4 e5                                      strb r5, [r4, #0x174]
00387e30  04 00 a0 e1                                      mov r0, r4
00387e34  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00387e38  f8 cc 60 00 94 40 00 00                          .byte 0xf8, 0xcc, 0x60, 0x00, 0x94, 0x40, 0x00, 0x00

; FUNCTION 0x00387fbc, declared_size=8, range_size=8, mode=arm
; class-group: Billboard
; alias: _ZThn4_N9Billboard17DeclarePropertiesEv
; demangled: non-virtual thunk to Billboard::DeclareProperties()
; decoder-mode: arm
00387fbc  04 00 40 e2                                      sub r0, r0, #4
00387fc0  ff ff ff ea                                      b #0x387fc4

; FUNCTION 0x00387fc4, declared_size=408, range_size=408, mode=arm
; class-group: Billboard
; alias: _ZN9Billboard17DeclarePropertiesEv
; demangled: Billboard::DeclareProperties()
; decoder-mode: arm
00387fc4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00387fc8  64 11 9f e5                                      ldr r1, [pc, #0x164]
00387fcc  04 40 80 e2                                      add r4, r0, #4
00387fd0  00 70 a0 e1                                      mov r7, r0
00387fd4  10 d0 4d e2                                      sub sp, sp, #0x10
00387fd8  04 00 a0 e1                                      mov r0, r4
00387fdc  12 2e 87 e2                                      add r2, r7, #0x120
00387fe0  01 10 8f e0                                      add r1, pc, r1
00387fe4  e4 db fe eb                                      bl #0x33ef7c
00387fe8  48 11 9f e5                                      ldr r1, [pc, #0x148]
00387fec  4e 2f 87 e2                                      add r2, r7, #0x138
00387ff0  04 00 a0 e1                                      mov r0, r4
00387ff4  01 10 8f e0                                      add r1, pc, r1
00387ff8  df db fe eb                                      bl #0x33ef7c
00387ffc  00 10 a0 e3                                      mov r1, #0
00388000  2c 00 a0 e3                                      mov r0, #0x2c
00388004  59 21 fe eb                                      bl #0x310570
00388008  2c 51 9f e5                                      ldr r5, [pc, #0x12c]
0038800c  2c 91 9f e5                                      ldr sb, [pc, #0x12c]
00388010  2c a1 9f e5                                      ldr sl, [pc, #0x12c]
00388014  05 50 8f e0                                      add r5, pc, r5
00388018  09 90 95 e7                                      ldr sb, [r5, sb]
0038801c  0a a0 8f e0                                      add sl, pc, sl
00388020  00 60 a0 e1                                      mov r6, r0
00388024  08 90 89 e2                                      add sb, sb, #8
00388028  0a 10 a0 e1                                      mov r1, sl
0038802c  0c 20 8d e2                                      add r2, sp, #0xc
00388030  08 90 80 e4                                      str sb, [r0], #8
00388034  2c 30 fe eb                                      bl #0x3140ec
00388038  08 31 9f e5                                      ldr r3, [pc, #0x108]
0038803c  56 2f 87 e2                                      add r2, r7, #0x158
00388040  00 80 a0 e3                                      mov r8, #0
00388044  03 30 95 e7                                      ldr r3, [r5, r3]
00388048  02 20 64 e0                                      rsb r2, r4, r2
0038804c  04 20 86 e5                                      str r2, [r6, #4]
00388050  08 30 83 e2                                      add r3, r3, #8
00388054  00 30 86 e5                                      str r3, [r6]
00388058  06 20 a0 e1                                      mov r2, r6
0038805c  0a 10 a0 e1                                      mov r1, sl
00388060  20 80 86 e5                                      str r8, [r6, #0x20]
00388064  24 80 86 e5                                      str r8, [r6, #0x24]
00388068  28 80 86 e5                                      str r8, [r6, #0x28]
0038806c  04 00 a0 e1                                      mov r0, r4
00388070  1b 2f 06 eb                                      bl #0x513ce4
00388074  00 10 a0 e3                                      mov r1, #0
00388078  28 00 a0 e3                                      mov r0, #0x28
0038807c  3b 21 fe eb                                      bl #0x310570
00388080  c4 a0 9f e5                                      ldr sl, [pc, #0xc4]
00388084  00 60 a0 e1                                      mov r6, r0
00388088  08 20 8d e2                                      add r2, sp, #8
0038808c  0a a0 8f e0                                      add sl, pc, sl
00388090  0a 10 a0 e1                                      mov r1, sl
00388094  08 90 80 e4                                      str sb, [r0], #8
00388098  13 30 fe eb                                      bl #0x3140ec
0038809c  ac 30 9f e5                                      ldr r3, [pc, #0xac]
003880a0  15 2e 87 e2                                      add r2, r7, #0x150
003880a4  02 20 64 e0                                      rsb r2, r4, r2
003880a8  03 30 95 e7                                      ldr r3, [r5, r3]
003880ac  04 20 86 e5                                      str r2, [r6, #4]
003880b0  20 80 86 e5                                      str r8, [r6, #0x20]
003880b4  08 30 83 e2                                      add r3, r3, #8
003880b8  00 30 86 e5                                      str r3, [r6]
003880bc  06 20 a0 e1                                      mov r2, r6
003880c0  0a 10 a0 e1                                      mov r1, sl
003880c4  24 80 86 e5                                      str r8, [r6, #0x24]
003880c8  04 00 a0 e1                                      mov r0, r4
003880cc  04 2f 06 eb                                      bl #0x513ce4
003880d0  00 10 a0 e3                                      mov r1, #0
003880d4  24 00 a0 e3                                      mov r0, #0x24
003880d8  24 21 fe eb                                      bl #0x310570
003880dc  70 80 9f e5                                      ldr r8, [pc, #0x70]
003880e0  00 60 a0 e1                                      mov r6, r0
003880e4  04 20 8d e2                                      add r2, sp, #4
003880e8  08 80 8f e0                                      add r8, pc, r8
003880ec  08 10 a0 e1                                      mov r1, r8
003880f0  08 90 80 e4                                      str sb, [r0], #8
003880f4  fc 2f fe eb                                      bl #0x3140ec
003880f8  58 30 9f e5                                      ldr r3, [pc, #0x58]
003880fc  59 7f 87 e2                                      add r7, r7, #0x164
00388100  07 70 64 e0                                      rsb r7, r4, r7
00388104  03 30 95 e7                                      ldr r3, [r5, r3]
00388108  04 70 86 e5                                      str r7, [r6, #4]
0038810c  04 00 a0 e1                                      mov r0, r4
00388110  08 30 83 e2                                      add r3, r3, #8
00388114  00 30 86 e5                                      str r3, [r6]
00388118  00 30 a0 e3                                      mov r3, #0
0038811c  20 30 c6 e5                                      strb r3, [r6, #0x20]
00388120  08 10 a0 e1                                      mov r1, r8
00388124  06 20 a0 e1                                      mov r2, r6
00388128  ed 2e 06 eb                                      bl #0x513ce4
0038812c  10 d0 8d e2                                      add sp, sp, #0x10
00388130  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00388134  d8 88 53 00 24 a2 53 00 7c ca 60 00 30 23 00 00  .byte 0xd8, 0x88, 0x53, 0x00, 0x24, 0xa2, 0x53, 0x00, 0x7c, 0xca, 0x60, 0x00, 0x30, 0x23, 0x00, 0x00
00388144  0c a2 53 00 90 1b 00 00 44 d6 53 00 d4 28 00 00  .byte 0x0c, 0xa2, 0x53, 0x00, 0x90, 0x1b, 0x00, 0x00, 0x44, 0xd6, 0x53, 0x00, 0xd4, 0x28, 0x00, 0x00
00388154  50 a1 53 00 4c 3e 00 00                          .byte 0x50, 0xa1, 0x53, 0x00, 0x4c, 0x3e, 0x00, 0x00

; FUNCTION 0x0038815c, declared_size=188, range_size=188, mode=arm
; class-group: Billboard
; alias: _ZN9BillboardC1EN10ObjectBase6GO_IDSE
; demangled: Billboard::Billboard(ObjectBase::GO_IDS)
; decoder-mode: arm
0038815c  70 40 2d e9                                      push {r4, r5, r6, lr}
00388160  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
00388164  00 40 a0 e1                                      mov r4, r0
00388168  68 dc fe eb                                      bl #0x33f310
0038816c  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
00388170  05 50 8f e0                                      add r5, pc, r5
00388174  12 2e 84 e2                                      add r2, r4, #0x120
00388178  03 30 95 e7                                      ldr r3, [r5, r3]
0038817c  02 00 a0 e1                                      mov r0, r2
00388180  30 21 84 e5                                      str r2, [r4, #0x130]
00388184  08 c0 83 e2                                      add ip, r3, #8
00388188  78 10 83 e2                                      add r1, r3, #0x78
0038818c  6c 30 83 e2                                      add r3, r3, #0x6c
00388190  00 c0 84 e5                                      str ip, [r4]
00388194  04 30 84 e5                                      str r3, [r4, #4]
00388198  24 10 84 e5                                      str r1, [r4, #0x24]
0038819c  34 21 84 e5                                      str r2, [r4, #0x134]
003881a0  10 10 a0 e3                                      mov r1, #0x10
003881a4  34 25 fe eb                                      bl #0x31167c
003881a8  30 21 94 e5                                      ldr r2, [r4, #0x130]
003881ac  00 50 a0 e3                                      mov r5, #0
003881b0  4e 3f 84 e2                                      add r3, r4, #0x138
003881b4  00 50 c2 e5                                      strb r5, [r2]
003881b8  03 00 a0 e1                                      mov r0, r3
003881bc  48 31 84 e5                                      str r3, [r4, #0x148]
003881c0  4c 31 84 e5                                      str r3, [r4, #0x14c]
003881c4  10 10 a0 e3                                      mov r1, #0x10
003881c8  2b 25 fe eb                                      bl #0x31167c
003881cc  48 21 94 e5                                      ldr r2, [r4, #0x148]
003881d0  00 30 a0 e3                                      mov r3, #0
003881d4  5a 0f 84 e2                                      add r0, r4, #0x168
003881d8  00 50 c2 e5                                      strb r5, [r2]
003881dc  60 31 84 e5                                      str r3, [r4, #0x160]
003881e0  50 31 84 e5                                      str r3, [r4, #0x150]
003881e4  54 31 84 e5                                      str r3, [r4, #0x154]
003881e8  58 31 84 e5                                      str r3, [r4, #0x158]
003881ec  5c 31 84 e5                                      str r3, [r4, #0x15c]
003881f0  64 51 c4 e5                                      strb r5, [r4, #0x164]
003881f4  c4 dc fe eb                                      bl #0x33f50c
003881f8  01 30 a0 e3                                      mov r3, #1
003881fc  78 51 84 e5                                      str r5, [r4, #0x178]
00388200  85 30 c4 e5                                      strb r3, [r4, #0x85]
00388204  74 51 c4 e5                                      strb r5, [r4, #0x174]
00388208  04 00 a0 e1                                      mov r0, r4
0038820c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00388210  20 c9 60 00 94 40 00 00                          .byte 0x20, 0xc9, 0x60, 0x00, 0x94, 0x40, 0x00, 0x00
