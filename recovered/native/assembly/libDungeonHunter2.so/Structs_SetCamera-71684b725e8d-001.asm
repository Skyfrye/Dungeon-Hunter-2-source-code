; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d37e8, declared_size=76, range_size=76, mode=arm
; class-group: Structs::SetCamera
; alias: _ZN7Structs9SetCamera8finalizeEv
; demangled: Structs::SetCamera::finalize()
; decoder-mode: arm
004d37e8  10 40 2d e9                                      push {r4, lr}
004d37ec  00 40 a0 e1                                      mov r4, r0
004d37f0  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d37f4  00 00 50 e3                                      cmp r0, #0
004d37f8  03 00 00 0a                                      beq #0x4d380c
004d37fc  0f f3 f8 eb                                      bl #0x310440
004d3800  00 30 a0 e3                                      mov r3, #0
004d3804  08 30 84 e5                                      str r3, [r4, #8]
004d3808  0c 30 84 e5                                      str r3, [r4, #0xc]
004d380c  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d3810  00 00 50 e3                                      cmp r0, #0
004d3814  03 00 00 0a                                      beq #0x4d3828
004d3818  08 f3 f8 eb                                      bl #0x310440
004d381c  00 30 a0 e3                                      mov r3, #0
004d3820  10 30 84 e5                                      str r3, [r4, #0x10]
004d3824  14 30 84 e5                                      str r3, [r4, #0x14]
004d3828  04 00 a0 e1                                      mov r0, r4
004d382c  10 40 bd e8                                      pop {r4, lr}
004d3830  0c cd ff ea                                      b #0x4c6c68

; FUNCTION 0x004d3834, declared_size=88, range_size=88, mode=arm
; class-group: Structs::SetCamera
; alias: _ZN7Structs9SetCameraD1Ev
; demangled: Structs::SetCamera::~SetCamera()
; decoder-mode: arm
004d3834  10 40 2d e9                                      push {r4, lr}
004d3838  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d383c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d3840  00 40 a0 e1                                      mov r4, r0
004d3844  03 30 8f e0                                      add r3, pc, r3
004d3848  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d384c  02 20 93 e7                                      ldr r2, [r3, r2]
004d3850  00 00 50 e3                                      cmp r0, #0
004d3854  08 20 82 e2                                      add r2, r2, #8
004d3858  00 20 84 e5                                      str r2, [r4]
004d385c  00 00 00 0a                                      beq #0x4d3864
004d3860  f6 f2 f8 eb                                      bl #0x310440
004d3864  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d3868  00 00 50 e3                                      cmp r0, #0
004d386c  00 00 00 0a                                      beq #0x4d3874
004d3870  f2 f2 f8 eb                                      bl #0x310440
004d3874  04 00 a0 e1                                      mov r0, r4
004d3878  f8 cc ff eb                                      bl #0x4c6c60
004d387c  04 00 a0 e1                                      mov r0, r4
004d3880  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d3884  4c 12 4c 00 ac 23 00 00                          .byte 0x4c, 0x12, 0x4c, 0x00, 0xac, 0x23, 0x00, 0x00

; FUNCTION 0x004d388c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SetCamera
; alias: _ZN7Structs9SetCameraD0Ev
; demangled: Structs::SetCamera::~SetCamera()
; decoder-mode: arm
004d388c  10 40 2d e9                                      push {r4, lr}
004d3890  00 40 a0 e1                                      mov r4, r0
004d3894  e6 ff ff eb                                      bl #0x4d3834
004d3898  04 00 a0 e1                                      mov r0, r4
004d389c  e7 f2 f8 eb                                      bl #0x310440
004d38a0  04 00 a0 e1                                      mov r0, r4
004d38a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d38a8, declared_size=88, range_size=88, mode=arm
; class-group: Structs::SetCamera
; alias: _ZN7Structs9SetCameraD2Ev
; demangled: Structs::SetCamera::~SetCamera()
; decoder-mode: arm
004d38a8  10 40 2d e9                                      push {r4, lr}
004d38ac  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d38b0  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d38b4  00 40 a0 e1                                      mov r4, r0
004d38b8  03 30 8f e0                                      add r3, pc, r3
004d38bc  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d38c0  02 20 93 e7                                      ldr r2, [r3, r2]
004d38c4  00 00 50 e3                                      cmp r0, #0
004d38c8  08 20 82 e2                                      add r2, r2, #8
004d38cc  00 20 84 e5                                      str r2, [r4]
004d38d0  00 00 00 0a                                      beq #0x4d38d8
004d38d4  d9 f2 f8 eb                                      bl #0x310440
004d38d8  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d38dc  00 00 50 e3                                      cmp r0, #0
004d38e0  00 00 00 0a                                      beq #0x4d38e8
004d38e4  d5 f2 f8 eb                                      bl #0x310440
004d38e8  04 00 a0 e1                                      mov r0, r4
004d38ec  db cc ff eb                                      bl #0x4c6c60
004d38f0  04 00 a0 e1                                      mov r0, r4
004d38f4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d38f8  d8 11 4c 00 ac 23 00 00                          .byte 0xd8, 0x11, 0x4c, 0x00, 0xac, 0x23, 0x00, 0x00

; FUNCTION 0x005027f0, declared_size=460, range_size=460, mode=arm
; class-group: Structs::SetCamera
; alias: _ZN7Structs9SetCamera4readEP11IStreamBase
; demangled: Structs::SetCamera::read(IStreamBase*)
; decoder-mode: arm
005027f0  70 40 2d e9                                      push {r4, r5, r6, lr}
005027f4  00 40 a0 e1                                      mov r4, r0
005027f8  08 d0 4d e2                                      sub sp, sp, #8
005027fc  01 50 a0 e1                                      mov r5, r1
00502800  08 f4 ff eb                                      bl #0x4ff828
00502804  05 00 a0 e1                                      mov r0, r5
00502808  08 10 84 e2                                      add r1, r4, #8
0050280c  63 72 fb eb                                      bl #0x3df1a0
00502810  01 30 a0 e3                                      mov r3, #1
00502814  00 00 53 e3                                      cmp r3, #0
00502818  04 30 8d e5                                      str r3, [sp, #4]
0050281c  0f 00 00 1a                                      bne #0x502860
00502820  09 30 84 e2                                      add r3, r4, #9
00502824  0a 20 84 e2                                      add r2, r4, #0xa
00502828  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050282c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00502830  02 00 53 e1                                      cmp r3, r2
00502834  01 10 20 e0                                      eor r1, r0, r1
00502838  01 10 43 e5                                      strb r1, [r3, #-1]
0050283c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502840  00 10 21 e0                                      eor r1, r1, r0
00502844  01 10 c2 e5                                      strb r1, [r2, #1]
00502848  01 00 53 e5                                      ldrb r0, [r3, #-1]
0050284c  01 20 42 e2                                      sub r2, r2, #1
00502850  00 10 21 e0                                      eor r1, r1, r0
00502854  01 10 43 e5                                      strb r1, [r3, #-1]
00502858  01 30 83 e2                                      add r3, r3, #1
0050285c  f1 ff ff 3a                                      blo #0x502828
00502860  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00502864  00 00 50 e3                                      cmp r0, #0
00502868  00 00 00 0a                                      beq #0x502870
0050286c  f3 36 f8 eb                                      bl #0x310440
00502870  08 00 94 e5                                      ldr r0, [r4, #8]
00502874  01 10 a0 e3                                      mov r1, #1
00502878  00 60 a0 e3                                      mov r6, #0
0050287c  01 00 80 e0                                      add r0, r0, r1
00502880  39 37 f8 eb                                      bl #0x31056c
00502884  08 20 94 e5                                      ldr r2, [r4, #8]
00502888  00 10 a0 e1                                      mov r1, r0
0050288c  0c 00 84 e5                                      str r0, [r4, #0xc]
00502890  06 30 a0 e1                                      mov r3, r6
00502894  05 00 a0 e1                                      mov r0, r5
00502898  ed 52 f8 eb                                      bl #0x317454
0050289c  08 30 94 e5                                      ldr r3, [r4, #8]
005028a0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005028a4  05 00 a0 e1                                      mov r0, r5
005028a8  10 10 84 e2                                      add r1, r4, #0x10
005028ac  03 60 c2 e7                                      strb r6, [r2, r3]
005028b0  3a 72 fb eb                                      bl #0x3df1a0
005028b4  01 30 a0 e3                                      mov r3, #1
005028b8  06 00 53 e1                                      cmp r3, r6
005028bc  04 30 8d e5                                      str r3, [sp, #4]
005028c0  0f 00 00 1a                                      bne #0x502904
005028c4  11 30 84 e2                                      add r3, r4, #0x11
005028c8  12 20 84 e2                                      add r2, r4, #0x12
005028cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
005028d0  01 10 53 e5                                      ldrb r1, [r3, #-1]
005028d4  02 00 53 e1                                      cmp r3, r2
005028d8  01 10 20 e0                                      eor r1, r0, r1
005028dc  01 10 43 e5                                      strb r1, [r3, #-1]
005028e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005028e4  00 10 21 e0                                      eor r1, r1, r0
005028e8  01 10 c2 e5                                      strb r1, [r2, #1]
005028ec  01 00 53 e5                                      ldrb r0, [r3, #-1]
005028f0  01 20 42 e2                                      sub r2, r2, #1
005028f4  00 10 21 e0                                      eor r1, r1, r0
005028f8  01 10 43 e5                                      strb r1, [r3, #-1]
005028fc  01 30 83 e2                                      add r3, r3, #1
00502900  f1 ff ff 3a                                      blo #0x5028cc
00502904  14 00 94 e5                                      ldr r0, [r4, #0x14]
00502908  00 00 50 e3                                      cmp r0, #0
0050290c  00 00 00 0a                                      beq #0x502914
00502910  ca 36 f8 eb                                      bl #0x310440
00502914  10 00 94 e5                                      ldr r0, [r4, #0x10]
00502918  01 10 a0 e3                                      mov r1, #1
0050291c  00 60 a0 e3                                      mov r6, #0
00502920  01 00 80 e0                                      add r0, r0, r1
00502924  10 37 f8 eb                                      bl #0x31056c
00502928  10 20 94 e5                                      ldr r2, [r4, #0x10]
0050292c  00 10 a0 e1                                      mov r1, r0
00502930  14 00 84 e5                                      str r0, [r4, #0x14]
00502934  06 30 a0 e1                                      mov r3, r6
00502938  05 00 a0 e1                                      mov r0, r5
0050293c  c4 52 f8 eb                                      bl #0x317454
00502940  10 30 94 e5                                      ldr r3, [r4, #0x10]
00502944  14 20 94 e5                                      ldr r2, [r4, #0x14]
00502948  05 00 a0 e1                                      mov r0, r5
0050294c  18 10 84 e2                                      add r1, r4, #0x18
00502950  03 60 c2 e7                                      strb r6, [r2, r3]
00502954  cd 59 fd eb                                      bl #0x459090
00502958  01 30 a0 e3                                      mov r3, #1
0050295c  06 00 53 e1                                      cmp r3, r6
00502960  04 30 8d e5                                      str r3, [sp, #4]
00502964  0f 00 00 1a                                      bne #0x5029a8
00502968  19 30 84 e2                                      add r3, r4, #0x19
0050296c  1a 20 84 e2                                      add r2, r4, #0x1a
00502970  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502974  01 10 53 e5                                      ldrb r1, [r3, #-1]
00502978  02 00 53 e1                                      cmp r3, r2
0050297c  01 10 20 e0                                      eor r1, r0, r1
00502980  01 10 43 e5                                      strb r1, [r3, #-1]
00502984  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502988  00 10 21 e0                                      eor r1, r1, r0
0050298c  01 10 c2 e5                                      strb r1, [r2, #1]
00502990  01 00 53 e5                                      ldrb r0, [r3, #-1]
00502994  01 20 42 e2                                      sub r2, r2, #1
00502998  00 10 21 e0                                      eor r1, r1, r0
0050299c  01 10 43 e5                                      strb r1, [r3, #-1]
005029a0  01 30 83 e2                                      add r3, r3, #1
005029a4  f1 ff ff 3a                                      blo #0x502970
005029a8  05 00 a0 e1                                      mov r0, r5
005029ac  1c 10 84 e2                                      add r1, r4, #0x1c
005029b0  b9 63 ff eb                                      bl #0x4db89c
005029b4  08 d0 8d e2                                      add sp, sp, #8
005029b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
