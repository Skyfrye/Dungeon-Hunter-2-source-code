; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004163c8, declared_size=68, range_size=68, mode=arm
; class-group: GameSWFUtils
; alias: _ZN12GameSWFUtils13SetTextHeightEPN7gameswf9characterEi
; demangled: GameSWFUtils::SetTextHeight(gameswf::character*, int)
; decoder-mode: arm
004163c8  70 40 2d e9                                      push {r4, r5, r6, lr}
004163cc  01 50 a0 e1                                      mov r5, r1
004163d0  00 30 90 e5                                      ldr r3, [r0]
004163d4  20 10 a0 e3                                      mov r1, #0x20
004163d8  00 40 a0 e1                                      mov r4, r0
004163dc  0f e0 a0 e1                                      mov lr, pc
004163e0  08 f0 93 e5                                      ldr pc, [r3, #8]
004163e4  00 00 50 e3                                      cmp r0, #0
004163e8  06 00 00 0a                                      beq #0x416408
004163ec  05 00 a0 e1                                      mov r0, r5
004163f0  5b e1 fb eb                                      bl #0x30e964
004163f4  41 14 a0 e3                                      mov r1, #0x41000000
004163f8  0a 16 81 e2                                      add r1, r1, #0xa00000
004163fc  5a e2 fb eb                                      bl #0x30ed6c
00416400  74 01 84 e5                                      str r0, [r4, #0x174]
00416404  01 00 a0 e3                                      mov r0, #1
00416408  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0041640c, declared_size=68, range_size=68, mode=arm
; class-group: GameSWFUtils
; alias: _ZN12GameSWFUtils14SetLineSpacingEPN7gameswf9characterEi
; demangled: GameSWFUtils::SetLineSpacing(gameswf::character*, int)
; decoder-mode: arm
0041640c  70 40 2d e9                                      push {r4, r5, r6, lr}
00416410  01 50 a0 e1                                      mov r5, r1
00416414  00 30 90 e5                                      ldr r3, [r0]
00416418  20 10 a0 e3                                      mov r1, #0x20
0041641c  00 40 a0 e1                                      mov r4, r0
00416420  0f e0 a0 e1                                      mov lr, pc
00416424  08 f0 93 e5                                      ldr pc, [r3, #8]
00416428  00 00 50 e3                                      cmp r0, #0
0041642c  06 00 00 0a                                      beq #0x41644c
00416430  05 00 a0 e1                                      mov r0, r5
00416434  4a e1 fb eb                                      bl #0x30e964
00416438  41 14 a0 e3                                      mov r1, #0x41000000
0041643c  0a 16 81 e2                                      add r1, r1, #0xa00000
00416440  49 e2 fb eb                                      bl #0x30ed6c
00416444  60 01 84 e5                                      str r0, [r4, #0x160]
00416448  01 00 a0 e3                                      mov r0, #1
0041644c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00416450, declared_size=112, range_size=112, mode=arm
; class-group: GameSWFUtils
; alias: _ZN12GameSWFUtils9GotoFrameEPN7gameswf9characterEi
; demangled: GameSWFUtils::GotoFrame(gameswf::character*, int)
; decoder-mode: arm
00416450  70 40 2d e9                                      push {r4, r5, r6, lr}
00416454  00 40 50 e2                                      subs r4, r0, #0
00416458  01 50 a0 e1                                      mov r5, r1
0041645c  15 00 00 0a                                      beq #0x4164b8
00416460  00 30 94 e5                                      ldr r3, [r4]
00416464  02 10 a0 e3                                      mov r1, #2
00416468  0f e0 a0 e1                                      mov lr, pc
0041646c  08 f0 93 e5                                      ldr pc, [r3, #8]
00416470  00 00 50 e3                                      cmp r0, #0
00416474  0f 00 00 0a                                      beq #0x4164b8
00416478  00 30 94 e5                                      ldr r3, [r4]
0041647c  04 00 a0 e1                                      mov r0, r4
00416480  0f e0 a0 e1                                      mov lr, pc
00416484  3c f1 93 e5                                      ldr pc, [r3, #0x13c]
00416488  05 10 a0 e1                                      mov r1, r5
0041648c  00 30 94 e5                                      ldr r3, [r4]
00416490  04 00 a0 e1                                      mov r0, r4
00416494  0f e0 a0 e1                                      mov lr, pc
00416498  4c f1 93 e5                                      ldr pc, [r3, #0x14c]
0041649c  04 00 a0 e1                                      mov r0, r4
004164a0  00 30 94 e5                                      ldr r3, [r4]
004164a4  01 10 a0 e3                                      mov r1, #1
004164a8  0f e0 a0 e1                                      mov lr, pc
004164ac  94 f0 93 e5                                      ldr pc, [r3, #0x94]
004164b0  01 00 a0 e3                                      mov r0, #1
004164b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
004164b8  00 00 a0 e3                                      mov r0, #0
004164bc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004164c0, declared_size=60, range_size=60, mode=arm
; class-group: GameSWFUtils
; alias: _ZN12GameSWFUtils14GetPixelScaleXEPN7gameswf4rootE
; demangled: GameSWFUtils::GetPixelScaleX(gameswf::root*)
; decoder-mode: arm
004164c0  70 40 2d e9                                      push {r4, r5, r6, lr}
004164c4  0c 40 90 e5                                      ldr r4, [r0, #0xc]
004164c8  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
004164cc  24 e1 fb eb                                      bl #0x30e964
004164d0  b4 10 94 e5                                      ldr r1, [r4, #0xb4]
004164d4  00 50 a0 e1                                      mov r5, r0
004164d8  b8 00 94 e5                                      ldr r0, [r4, #0xb8]
004164dc  b2 df fb eb                                      bl #0x30e3ac
004164e0  41 14 a0 e3                                      mov r1, #0x41000000
004164e4  0a 16 81 e2                                      add r1, r1, #0xa00000
004164e8  e9 e1 fb eb                                      bl #0x30ec94
004164ec  00 10 a0 e1                                      mov r1, r0
004164f0  05 00 a0 e1                                      mov r0, r5
004164f4  e6 e1 fb eb                                      bl #0x30ec94
004164f8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004164fc, declared_size=60, range_size=60, mode=arm
; class-group: GameSWFUtils
; alias: _ZN12GameSWFUtils14GetPixelScaleYEPN7gameswf4rootE
; demangled: GameSWFUtils::GetPixelScaleY(gameswf::root*)
; decoder-mode: arm
004164fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00416500  0c 40 90 e5                                      ldr r4, [r0, #0xc]
00416504  30 00 90 e5                                      ldr r0, [r0, #0x30]
00416508  15 e1 fb eb                                      bl #0x30e964
0041650c  bc 10 94 e5                                      ldr r1, [r4, #0xbc]
00416510  00 50 a0 e1                                      mov r5, r0
00416514  c0 00 94 e5                                      ldr r0, [r4, #0xc0]
00416518  a3 df fb eb                                      bl #0x30e3ac
0041651c  41 14 a0 e3                                      mov r1, #0x41000000
00416520  0a 16 81 e2                                      add r1, r1, #0xa00000
00416524  da e1 fb eb                                      bl #0x30ec94
00416528  00 10 a0 e1                                      mov r1, r0
0041652c  05 00 a0 e1                                      mov r0, r5
00416530  d7 e1 fb eb                                      bl #0x30ec94
00416534  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00416538, declared_size=64, range_size=64, mode=arm
; class-group: GameSWFUtils
; alias: _ZN12GameSWFUtils17GetInvPixelScaleXEPN7gameswf4rootE
; demangled: GameSWFUtils::GetInvPixelScaleX(gameswf::root*)
; decoder-mode: arm
00416538  70 40 2d e9                                      push {r4, r5, r6, lr}
0041653c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00416540  00 40 a0 e1                                      mov r4, r0
00416544  b4 10 93 e5                                      ldr r1, [r3, #0xb4]
00416548  b8 00 93 e5                                      ldr r0, [r3, #0xb8]
0041654c  96 df fb eb                                      bl #0x30e3ac
00416550  41 14 a0 e3                                      mov r1, #0x41000000
00416554  0a 16 81 e2                                      add r1, r1, #0xa00000
00416558  cd e1 fb eb                                      bl #0x30ec94
0041655c  00 50 a0 e1                                      mov r5, r0
00416560  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00416564  fe e0 fb eb                                      bl #0x30e964
00416568  00 10 a0 e1                                      mov r1, r0
0041656c  05 00 a0 e1                                      mov r0, r5
00416570  c7 e1 fb eb                                      bl #0x30ec94
00416574  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00416578, declared_size=64, range_size=64, mode=arm
; class-group: GameSWFUtils
; alias: _ZN12GameSWFUtils17GetInvPixelScaleYEPN7gameswf4rootE
; demangled: GameSWFUtils::GetInvPixelScaleY(gameswf::root*)
; decoder-mode: arm
00416578  70 40 2d e9                                      push {r4, r5, r6, lr}
0041657c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00416580  00 40 a0 e1                                      mov r4, r0
00416584  bc 10 93 e5                                      ldr r1, [r3, #0xbc]
00416588  c0 00 93 e5                                      ldr r0, [r3, #0xc0]
0041658c  86 df fb eb                                      bl #0x30e3ac
00416590  41 14 a0 e3                                      mov r1, #0x41000000
00416594  0a 16 81 e2                                      add r1, r1, #0xa00000
00416598  bd e1 fb eb                                      bl #0x30ec94
0041659c  00 50 a0 e1                                      mov r5, r0
004165a0  30 00 94 e5                                      ldr r0, [r4, #0x30]
004165a4  ee e0 fb eb                                      bl #0x30e964
004165a8  00 10 a0 e1                                      mov r1, r0
004165ac  05 00 a0 e1                                      mov r0, r5
004165b0  b7 e1 fb eb                                      bl #0x30ec94
004165b4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0041684c, declared_size=412, range_size=412, mode=arm
; class-group: GameSWFUtils
; alias: _ZN12GameSWFUtils10MoveBtnPosEPN7gameswf9characterEff
; demangled: GameSWFUtils::MoveBtnPos(gameswf::character*, float, float)
; decoder-mode: arm
0041684c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00416850  00 50 50 e2                                      subs r5, r0, #0
00416854  48 d0 4d e2                                      sub sp, sp, #0x48
00416858  01 70 a0 e1                                      mov r7, r1
0041685c  02 80 a0 e1                                      mov r8, r2
00416860  05 00 a0 01                                      moveq r0, r5
00416864  4f 00 00 0a                                      beq #0x4169a8
00416868  30 60 8d e2                                      add r6, sp, #0x30
0041686c  00 20 a0 e3                                      mov r2, #0
00416870  08 30 86 e2                                      add r3, r6, #8
00416874  04 20 83 e4                                      str r2, [r3], #4
00416878  04 20 83 e4                                      str r2, [r3], #4
0041687c  04 20 83 e4                                      str r2, [r3], #4
00416880  3c 40 85 e2                                      add r4, r5, #0x3c
00416884  00 20 83 e5                                      str r2, [r3]
00416888  fe 15 a0 e3                                      mov r1, #0x3f800000
0041688c  04 00 a0 e1                                      mov r0, r4
00416890  40 10 8d e5                                      str r1, [sp, #0x40]
00416894  34 20 8d e5                                      str r2, [sp, #0x34]
00416898  30 10 8d e5                                      str r1, [sp, #0x30]
0041689c  28 be fd eb                                      bl #0x386144
004168a0  40 30 95 e5                                      ldr r3, [r5, #0x40]
004168a4  00 00 53 e3                                      cmp r3, #0
004168a8  0c 00 00 0a                                      beq #0x4168e0
004168ac  04 00 a0 e1                                      mov r0, r4
004168b0  23 be fd eb                                      bl #0x386144
004168b4  40 00 95 e5                                      ldr r0, [r5, #0x40]
004168b8  ad f5 0c eb                                      bl #0x753f74
004168bc  18 c0 8d e2                                      add ip, sp, #0x18
004168c0  00 e0 a0 e1                                      mov lr, r0
004168c4  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
004168c8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
004168cc  03 00 9e e8                                      ldm lr, {r0, r1}
004168d0  03 00 8c e8                                      stm ip, {r0, r1}
004168d4  18 10 8d e2                                      add r1, sp, #0x18
004168d8  06 00 a0 e1                                      mov r0, r6
004168dc  7e fc 0d eb                                      bl #0x795adc
004168e0  05 00 a0 e1                                      mov r0, r5
004168e4  a2 f5 0c eb                                      bl #0x753f74
004168e8  0d e0 a0 e1                                      mov lr, sp
004168ec  00 c0 a0 e1                                      mov ip, r0
004168f0  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
004168f4  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
004168f8  00 00 9c e5                                      ldr r0, [ip]
004168fc  41 14 a0 e3                                      mov r1, #0x41000000
00416900  0a 16 81 e2                                      add r1, r1, #0xa00000
00416904  00 00 8e e5                                      str r0, [lr]
00416908  07 00 a0 e1                                      mov r0, r7
0041690c  16 e1 fb eb                                      bl #0x30ed6c
00416910  02 15 e0 e3                                      mvn r1, #0x800000
00416914  00 70 a0 e1                                      mov r7, r0
00416918  e5 de fb eb                                      bl #0x30e4b4
0041691c  00 00 50 e3                                      cmp r0, #0
00416920  29 00 00 1a                                      bne #0x4169cc
00416924  00 70 a0 e3                                      mov r7, #0
00416928  41 14 a0 e3                                      mov r1, #0x41000000
0041692c  0a 16 81 e2                                      add r1, r1, #0xa00000
00416930  08 00 a0 e1                                      mov r0, r8
00416934  08 70 8d e5                                      str r7, [sp, #8]
00416938  0b e1 fb eb                                      bl #0x30ed6c
0041693c  02 15 e0 e3                                      mvn r1, #0x800000
00416940  00 70 a0 e1                                      mov r7, r0
00416944  da de fb eb                                      bl #0x30e4b4
00416948  00 00 50 e3                                      cmp r0, #0
0041694c  17 00 00 1a                                      bne #0x4169b0
00416950  00 70 a0 e3                                      mov r7, #0
00416954  06 00 a0 e1                                      mov r0, r6
00416958  0d 10 a0 e1                                      mov r1, sp
0041695c  14 70 8d e5                                      str r7, [sp, #0x14]
00416960  14 ff ff eb                                      bl #0x4165b8
00416964  41 14 a0 e3                                      mov r1, #0x41000000
00416968  0a 16 81 e2                                      add r1, r1, #0xa00000
0041696c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00416970  c7 e0 fb eb                                      bl #0x30ec94
00416974  d4 de fb eb                                      bl #0x30e4cc
00416978  41 14 a0 e3                                      mov r1, #0x41000000
0041697c  0a 16 81 e2                                      add r1, r1, #0xa00000
00416980  00 40 a0 e1                                      mov r4, r0
00416984  44 00 9d e5                                      ldr r0, [sp, #0x44]
00416988  c1 e0 fb eb                                      bl #0x30ec94
0041698c  ce de fb eb                                      bl #0x30e4cc
00416990  05 10 a0 e1                                      mov r1, r5
00416994  00 30 a0 e1                                      mov r3, r0
00416998  04 20 a0 e1                                      mov r2, r4
0041699c  00 00 a0 e3                                      mov r0, #0
004169a0  92 4e 0e eb                                      bl #0x7aa3f0
004169a4  01 00 a0 e3                                      mov r0, #1
004169a8  48 d0 8d e2                                      add sp, sp, #0x48
004169ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004169b0  02 11 e0 e3                                      mvn r1, #0x80000000
004169b4  07 00 a0 e1                                      mov r0, r7
004169b8  02 15 41 e2                                      sub r1, r1, #0x800000
004169bc  fa df fb eb                                      bl #0x30e9ac
004169c0  00 00 50 e3                                      cmp r0, #0
004169c4  e2 ff ff 1a                                      bne #0x416954
004169c8  e0 ff ff ea                                      b #0x416950
004169cc  02 11 e0 e3                                      mvn r1, #0x80000000
004169d0  07 00 a0 e1                                      mov r0, r7
004169d4  02 15 41 e2                                      sub r1, r1, #0x800000
004169d8  f3 df fb eb                                      bl #0x30e9ac
004169dc  00 00 50 e3                                      cmp r0, #0
004169e0  d0 ff ff 1a                                      bne #0x416928
004169e4  ce ff ff ea                                      b #0x416924

; FUNCTION 0x004169e8, declared_size=148, range_size=148, mode=arm
; class-group: GameSWFUtils
; alias: _ZN12GameSWFUtils19GetAbsolutePositionEPN7gameswf9characterE
; demangled: GameSWFUtils::GetAbsolutePosition(gameswf::character*)
; decoder-mode: arm
004169e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004169ec  00 60 a0 e3                                      mov r6, #0
004169f0  00 70 51 e2                                      subs r7, r1, #0
004169f4  00 50 a0 e1                                      mov r5, r0
004169f8  00 60 80 e5                                      str r6, [r0]
004169fc  04 60 80 e5                                      str r6, [r0, #4]
00416a00  07 40 a0 01                                      moveq r4, r7
00416a04  15 00 00 0a                                      beq #0x416a60
00416a08  4c 30 97 e5                                      ldr r3, [r7, #0x4c]
00416a0c  06 10 a0 e1                                      mov r1, r6
00416a10  07 40 a0 e1                                      mov r4, r7
00416a14  08 00 93 e5                                      ldr r0, [r3, #8]
00416a18  61 e0 fb eb                                      bl #0x30eba4
00416a1c  00 00 85 e5                                      str r0, [r5]
00416a20  4c 30 97 e5                                      ldr r3, [r7, #0x4c]
00416a24  06 10 a0 e1                                      mov r1, r6
00416a28  14 00 93 e5                                      ldr r0, [r3, #0x14]
00416a2c  5c e0 fb eb                                      bl #0x30eba4
00416a30  04 00 85 e5                                      str r0, [r5, #4]
00416a34  09 00 00 ea                                      b #0x416a60
00416a38  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00416a3c  00 00 95 e5                                      ldr r0, [r5]
00416a40  08 10 93 e5                                      ldr r1, [r3, #8]
00416a44  56 e0 fb eb                                      bl #0x30eba4
00416a48  00 00 85 e5                                      str r0, [r5]
00416a4c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00416a50  04 00 95 e5                                      ldr r0, [r5, #4]
00416a54  14 10 93 e5                                      ldr r1, [r3, #0x14]
00416a58  51 e0 fb eb                                      bl #0x30eba4
00416a5c  04 00 85 e5                                      str r0, [r5, #4]
00416a60  3c 00 84 e2                                      add r0, r4, #0x3c
00416a64  b6 bd fd eb                                      bl #0x386144
00416a68  40 40 94 e5                                      ldr r4, [r4, #0x40]
00416a6c  00 00 54 e3                                      cmp r4, #0
00416a70  f0 ff ff 1a                                      bne #0x416a38
00416a74  05 00 a0 e1                                      mov r0, r5
00416a78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00416a7c, declared_size=192, range_size=192, mode=arm
; class-group: GameSWFUtils
; alias: _ZN12GameSWFUtils23GetAbsoluteBoundingRectEPN7gameswf9characterE
; demangled: GameSWFUtils::GetAbsoluteBoundingRect(gameswf::character*)
; decoder-mode: arm
00416a7c  70 40 2d e9                                      push {r4, r5, r6, lr}
00416a80  00 50 51 e2                                      subs r5, r1, #0
00416a84  08 d0 4d e2                                      sub sp, sp, #8
00416a88  00 40 a0 e1                                      mov r4, r0
00416a8c  27 00 00 0a                                      beq #0x416b30
00416a90  3c 00 85 e2                                      add r0, r5, #0x3c
00416a94  aa bd fd eb                                      bl #0x386144
00416a98  40 10 95 e5                                      ldr r1, [r5, #0x40]
00416a9c  0d 00 a0 e1                                      mov r0, sp
00416aa0  d0 ff ff eb                                      bl #0x4169e8
00416aa4  00 60 9d e5                                      ldr r6, [sp]
00416aa8  00 30 95 e5                                      ldr r3, [r5]
00416aac  05 00 a0 e1                                      mov r0, r5
00416ab0  04 10 a0 e1                                      mov r1, r4
00416ab4  04 50 9d e5                                      ldr r5, [sp, #4]
00416ab8  0f e0 a0 e1                                      mov lr, pc
00416abc  2c f1 93 e5                                      ldr pc, [r3, #0x12c]
00416ac0  00 10 94 e5                                      ldr r1, [r4]
00416ac4  06 00 a0 e1                                      mov r0, r6
00416ac8  35 e0 fb eb                                      bl #0x30eba4
00416acc  41 14 a0 e3                                      mov r1, #0x41000000
00416ad0  0a 16 81 e2                                      add r1, r1, #0xa00000
00416ad4  6e e0 fb eb                                      bl #0x30ec94
00416ad8  04 10 94 e5                                      ldr r1, [r4, #4]
00416adc  00 00 84 e5                                      str r0, [r4]
00416ae0  06 00 a0 e1                                      mov r0, r6
00416ae4  2e e0 fb eb                                      bl #0x30eba4
00416ae8  41 14 a0 e3                                      mov r1, #0x41000000
00416aec  0a 16 81 e2                                      add r1, r1, #0xa00000
00416af0  67 e0 fb eb                                      bl #0x30ec94
00416af4  08 10 94 e5                                      ldr r1, [r4, #8]
00416af8  04 00 84 e5                                      str r0, [r4, #4]
00416afc  05 00 a0 e1                                      mov r0, r5
00416b00  27 e0 fb eb                                      bl #0x30eba4
00416b04  41 14 a0 e3                                      mov r1, #0x41000000
00416b08  0a 16 81 e2                                      add r1, r1, #0xa00000
00416b0c  60 e0 fb eb                                      bl #0x30ec94
00416b10  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00416b14  08 00 84 e5                                      str r0, [r4, #8]
00416b18  05 00 a0 e1                                      mov r0, r5
00416b1c  20 e0 fb eb                                      bl #0x30eba4
00416b20  41 14 a0 e3                                      mov r1, #0x41000000
00416b24  0a 16 81 e2                                      add r1, r1, #0xa00000
00416b28  59 e0 fb eb                                      bl #0x30ec94
00416b2c  0c 00 84 e5                                      str r0, [r4, #0xc]
00416b30  04 00 a0 e1                                      mov r0, r4
00416b34  08 d0 8d e2                                      add sp, sp, #8
00416b38  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00416b3c, declared_size=216, range_size=216, mode=arm
; class-group: GameSWFUtils
; alias: _ZN12GameSWFUtils15GetLabeledFrameEPN7gameswf9characterEPKc
; demangled: GameSWFUtils::GetLabeledFrame(gameswf::character*, char const*)
; decoder-mode: arm
00416b3c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00416b40  c4 40 9f e5                                      ldr r4, [pc, #0xc4]
00416b44  c4 60 9f e5                                      ldr r6, [pc, #0xc4]
00416b48  1c d0 4d e2                                      sub sp, sp, #0x1c
00416b4c  04 40 8f e0                                      add r4, pc, r4
00416b50  06 20 94 e7                                      ldr r2, [r4, r6]
00416b54  00 30 90 e5                                      ldr r3, [r0]
00416b58  00 50 a0 e1                                      mov r5, r0
00416b5c  00 20 92 e5                                      ldr r2, [r2]
00416b60  01 80 a0 e1                                      mov r8, r1
00416b64  14 20 8d e5                                      str r2, [sp, #0x14]
00416b68  0f e0 a0 e1                                      mov lr, pc
00416b6c  38 f1 93 e5                                      ldr pc, [r3, #0x138]
00416b70  00 30 95 e5                                      ldr r3, [r5]
00416b74  08 10 a0 e1                                      mov r1, r8
00416b78  00 a0 a0 e1                                      mov sl, r0
00416b7c  0d 00 a0 e1                                      mov r0, sp
00416b80  9c 80 93 e5                                      ldr r8, [r3, #0x9c]
00416b84  bc f3 ff eb                                      bl #0x413a7c
00416b88  05 00 a0 e1                                      mov r0, r5
00416b8c  0d 10 a0 e1                                      mov r1, sp
00416b90  38 ff 2f e1                                      blx r8
00416b94  d0 30 dd e1                                      ldrsb r3, [sp]
00416b98  00 70 a0 e1                                      mov r7, r0
00416b9c  01 00 73 e3                                      cmn r3, #1
00416ba0  14 00 00 0a                                      beq #0x416bf8
00416ba4  00 00 57 e3                                      cmp r7, #0
00416ba8  00 70 e0 03                                      mvneq r7, #0
00416bac  09 00 00 0a                                      beq #0x416bd8
00416bb0  00 30 95 e5                                      ldr r3, [r5]
00416bb4  05 00 a0 e1                                      mov r0, r5
00416bb8  0f e0 a0 e1                                      mov lr, pc
00416bbc  38 f1 93 e5                                      ldr pc, [r3, #0x138]
00416bc0  0a 10 a0 e1                                      mov r1, sl
00416bc4  00 70 a0 e1                                      mov r7, r0
00416bc8  00 30 95 e5                                      ldr r3, [r5]
00416bcc  05 00 a0 e1                                      mov r0, r5
00416bd0  0f e0 a0 e1                                      mov lr, pc
00416bd4  4c f1 93 e5                                      ldr pc, [r3, #0x14c]
00416bd8  06 30 94 e7                                      ldr r3, [r4, r6]
00416bdc  14 20 9d e5                                      ldr r2, [sp, #0x14]
00416be0  07 00 a0 e1                                      mov r0, r7
00416be4  00 30 93 e5                                      ldr r3, [r3]
00416be8  03 00 52 e1                                      cmp r2, r3
00416bec  05 00 00 1a                                      bne #0x416c08
00416bf0  1c d0 8d e2                                      add sp, sp, #0x1c
00416bf4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00416bf8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00416bfc  08 10 9d e5                                      ldr r1, [sp, #8]
00416c00  cc ef 0c eb                                      bl #0x752b38
00416c04  e6 ff ff ea                                      b #0x416ba4
00416c08  c0 dd fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00416c0c  44 df 57 00 ac 40 00 00                          .byte 0x44, 0xdf, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00416c14, declared_size=948, range_size=948, mode=arm
; class-group: GameSWFUtils
; alias: _ZN12GameSWFUtils16SwfTextureLoaderEPKcii
; demangled: GameSWFUtils::SwfTextureLoader(char const*, int, int)
; decoder-mode: arm
00416c14  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00416c18  44 43 9f e5                                      ldr r4, [pc, #0x344]
00416c1c  44 63 9f e5                                      ldr r6, [pc, #0x344]
00416c20  44 13 9f e5                                      ldr r1, [pc, #0x344]
00416c24  04 40 8f e0                                      add r4, pc, r4
00416c28  06 30 94 e7                                      ldr r3, [r4, r6]
00416c2c  43 df 4d e2                                      sub sp, sp, #0x10c
00416c30  01 10 8f e0                                      add r1, pc, r1
00416c34  00 30 93 e5                                      ldr r3, [r3]
00416c38  00 70 a0 e1                                      mov r7, r0
00416c3c  04 31 8d e5                                      str r3, [sp, #0x104]
00416c40  b5 dd fb eb                                      bl #0x30e31c
00416c44  00 00 50 e3                                      cmp r0, #0
00416c48  2d 00 00 0a                                      beq #0x416d04
00416c4c  1c 13 9f e5                                      ldr r1, [pc, #0x31c]
00416c50  07 00 a0 e1                                      mov r0, r7
00416c54  01 10 8f e0                                      add r1, pc, r1
00416c58  af dd fb eb                                      bl #0x30e31c
00416c5c  00 00 50 e3                                      cmp r0, #0
00416c60  3a 00 00 0a                                      beq #0x416d50
00416c64  08 13 9f e5                                      ldr r1, [pc, #0x308]
00416c68  07 00 a0 e1                                      mov r0, r7
00416c6c  01 10 8f e0                                      add r1, pc, r1
00416c70  a9 dd fb eb                                      bl #0x30e31c
00416c74  00 00 50 e3                                      cmp r0, #0
00416c78  56 00 00 0a                                      beq #0x416dd8
00416c7c  f4 12 9f e5                                      ldr r1, [pc, #0x2f4]
00416c80  07 00 a0 e1                                      mov r0, r7
00416c84  01 10 8f e0                                      add r1, pc, r1
00416c88  a3 dd fb eb                                      bl #0x30e31c
00416c8c  00 00 50 e3                                      cmp r0, #0
00416c90  41 00 00 0a                                      beq #0x416d9c
00416c94  e0 12 9f e5                                      ldr r1, [pc, #0x2e0]
00416c98  04 50 8d e2                                      add r5, sp, #4
00416c9c  07 20 a0 e1                                      mov r2, r7
00416ca0  01 10 8f e0                                      add r1, pc, r1
00416ca4  05 00 a0 e1                                      mov r0, r5
00416ca8  8d df fb eb                                      bl #0x30eae4
00416cac  cc 72 9f e5                                      ldr r7, [pc, #0x2cc]
00416cb0  07 30 94 e7                                      ldr r3, [r4, r7]
00416cb4  05 20 a0 e1                                      mov r2, r5
00416cb8  0d 00 a0 e1                                      mov r0, sp
00416cbc  10 10 93 e5                                      ldr r1, [r3, #0x10]
00416cc0  00 30 a0 e3                                      mov r3, #0
00416cc4  10 10 91 e5                                      ldr r1, [r1, #0x10]
00416cc8  e0 10 91 e5                                      ldr r1, [r1, #0xe0]
00416ccc  4f 59 07 eb                                      bl #0x5ed210
00416cd0  00 50 9d e5                                      ldr r5, [sp]
00416cd4  00 00 55 e3                                      cmp r5, #0
00416cd8  01 00 00 0a                                      beq #0x416ce4
00416cdc  05 00 a0 e1                                      mov r0, r5
00416ce0  27 1a fc eb                                      bl #0x31d584
00416ce4  06 30 94 e7                                      ldr r3, [r4, r6]
00416ce8  04 21 9d e5                                      ldr r2, [sp, #0x104]
00416cec  05 00 a0 e1                                      mov r0, r5
00416cf0  00 30 93 e5                                      ldr r3, [r3]
00416cf4  03 00 52 e1                                      cmp r2, r3
00416cf8  98 00 00 1a                                      bne #0x416f60
00416cfc  43 df 8d e2                                      add sp, sp, #0x10c
00416d00  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00416d04  74 72 9f e5                                      ldr r7, [pc, #0x274]
00416d08  07 30 94 e7                                      ldr r3, [r4, r7]
00416d0c  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
00416d10  ff 59 01 eb                                      bl #0x46d514
00416d14  04 00 50 e3                                      cmp r0, #4
00416d18  52 00 00 0a                                      beq #0x416e68
00416d1c  05 00 50 e3                                      cmp r0, #5
00416d20  38 00 00 0a                                      beq #0x416e08
00416d24  58 e2 9f e5                                      ldr lr, [pc, #0x258]
00416d28  04 50 8d e2                                      add r5, sp, #4
00416d2c  05 c0 a0 e1                                      mov ip, r5
00416d30  0e e0 8f e0                                      add lr, pc, lr
00416d34  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00416d38  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00416d3c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00416d40  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00416d44  b0 e0 de e1                                      ldrh lr, [lr]
00416d48  b0 e0 cc e1                                      strh lr, [ip]
00416d4c  d7 ff ff ea                                      b #0x416cb0
00416d50  28 72 9f e5                                      ldr r7, [pc, #0x228]
00416d54  07 30 94 e7                                      ldr r3, [r4, r7]
00416d58  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
00416d5c  ec 59 01 eb                                      bl #0x46d514
00416d60  04 00 50 e3                                      cmp r0, #4
00416d64  33 00 00 0a                                      beq #0x416e38
00416d68  05 00 50 e3                                      cmp r0, #5
00416d6c  41 00 00 0a                                      beq #0x416e78
00416d70  10 e2 9f e5                                      ldr lr, [pc, #0x210]
00416d74  04 50 8d e2                                      add r5, sp, #4
00416d78  0e e0 8f e0                                      add lr, pc, lr
00416d7c  05 c0 a0 e1                                      mov ip, r5
00416d80  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00416d84  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00416d88  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00416d8c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00416d90  03 00 9e e8                                      ldm lr, {r0, r1}
00416d94  03 00 8c e8                                      stm ip, {r0, r1}
00416d98  c4 ff ff ea                                      b #0x416cb0
00416d9c  dc 71 9f e5                                      ldr r7, [pc, #0x1dc]
00416da0  07 30 94 e7                                      ldr r3, [r4, r7]
00416da4  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
00416da8  d9 59 01 eb                                      bl #0x46d514
00416dac  01 00 40 e2                                      sub r0, r0, #1
00416db0  06 00 50 e3                                      cmp r0, #6
00416db4  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
00416db8  5c 00 00 ea                                      b #0x416f30
00416dbc  57 00 00 ea                                      b #0x416f20
00416dc0  52 00 00 ea                                      b #0x416f10
00416dc4  4d 00 00 ea                                      b #0x416f00
00416dc8  43 00 00 ea                                      b #0x416edc
00416dcc  3e 00 00 ea                                      b #0x416ecc
00416dd0  39 00 00 ea                                      b #0x416ebc
00416dd4  2b 00 00 ea                                      b #0x416e88
00416dd8  a0 71 9f e5                                      ldr r7, [pc, #0x1a0]
00416ddc  07 30 94 e7                                      ldr r3, [r4, r7]
00416de0  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
00416de4  ca 59 01 eb                                      bl #0x46d514
00416de8  04 00 50 e3                                      cmp r0, #4
00416dec  57 00 00 0a                                      beq #0x416f50
00416df0  05 00 50 e3                                      cmp r0, #5
00416df4  51 00 00 0a                                      beq #0x416f40
00416df8  8c e1 9f e5                                      ldr lr, [pc, #0x18c]
00416dfc  04 50 8d e2                                      add r5, sp, #4
00416e00  0e e0 8f e0                                      add lr, pc, lr
00416e04  dc ff ff ea                                      b #0x416d7c
00416e08  80 e1 9f e5                                      ldr lr, [pc, #0x180]
00416e0c  04 50 8d e2                                      add r5, sp, #4
00416e10  0e e0 8f e0                                      add lr, pc, lr
00416e14  05 c0 a0 e1                                      mov ip, r5
00416e18  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00416e1c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00416e20  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00416e24  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00416e28  03 00 9e e8                                      ldm lr, {r0, r1}
00416e2c  04 00 8c e4                                      str r0, [ip], #4
00416e30  b0 10 cc e1                                      strh r1, [ip]
00416e34  9d ff ff ea                                      b #0x416cb0
00416e38  54 e1 9f e5                                      ldr lr, [pc, #0x154]
00416e3c  04 50 8d e2                                      add r5, sp, #4
00416e40  0e e0 8f e0                                      add lr, pc, lr
00416e44  05 c0 a0 e1                                      mov ip, r5
00416e48  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00416e4c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00416e50  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00416e54  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00416e58  03 00 9e e8                                      ldm lr, {r0, r1}
00416e5c  04 00 8c e4                                      str r0, [ip], #4
00416e60  00 10 cc e5                                      strb r1, [ip]
00416e64  91 ff ff ea                                      b #0x416cb0
00416e68  28 e1 9f e5                                      ldr lr, [pc, #0x128]
00416e6c  04 50 8d e2                                      add r5, sp, #4
00416e70  0e e0 8f e0                                      add lr, pc, lr
00416e74  f2 ff ff ea                                      b #0x416e44
00416e78  1c e1 9f e5                                      ldr lr, [pc, #0x11c]
00416e7c  04 50 8d e2                                      add r5, sp, #4
00416e80  0e e0 8f e0                                      add lr, pc, lr
00416e84  e2 ff ff ea                                      b #0x416e14
00416e88  10 e1 9f e5                                      ldr lr, [pc, #0x110]
00416e8c  04 50 8d e2                                      add r5, sp, #4
00416e90  0e e0 8f e0                                      add lr, pc, lr
00416e94  05 c0 a0 e1                                      mov ip, r5
00416e98  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00416e9c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00416ea0  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00416ea4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00416ea8  00 30 9e e5                                      ldr r3, [lr]
00416eac  b2 30 cc e0                                      strh r3, [ip], #2
00416eb0  23 38 a0 e1                                      lsr r3, r3, #0x10
00416eb4  00 30 cc e5                                      strb r3, [ip]
00416eb8  7c ff ff ea                                      b #0x416cb0
00416ebc  e0 e0 9f e5                                      ldr lr, [pc, #0xe0]
00416ec0  04 50 8d e2                                      add r5, sp, #4
00416ec4  0e e0 8f e0                                      add lr, pc, lr
00416ec8  f1 ff ff ea                                      b #0x416e94
00416ecc  d4 e0 9f e5                                      ldr lr, [pc, #0xd4]
00416ed0  04 50 8d e2                                      add r5, sp, #4
00416ed4  0e e0 8f e0                                      add lr, pc, lr
00416ed8  ed ff ff ea                                      b #0x416e94
00416edc  c8 e0 9f e5                                      ldr lr, [pc, #0xc8]
00416ee0  04 50 8d e2                                      add r5, sp, #4
00416ee4  0e e0 8f e0                                      add lr, pc, lr
00416ee8  05 c0 a0 e1                                      mov ip, r5
00416eec  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00416ef0  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00416ef4  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
00416ef8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00416efc  6b ff ff ea                                      b #0x416cb0
00416f00  a8 e0 9f e5                                      ldr lr, [pc, #0xa8]
00416f04  04 50 8d e2                                      add r5, sp, #4
00416f08  0e e0 8f e0                                      add lr, pc, lr
00416f0c  e0 ff ff ea                                      b #0x416e94
00416f10  9c e0 9f e5                                      ldr lr, [pc, #0x9c]
00416f14  04 50 8d e2                                      add r5, sp, #4
00416f18  0e e0 8f e0                                      add lr, pc, lr
00416f1c  dc ff ff ea                                      b #0x416e94
00416f20  90 e0 9f e5                                      ldr lr, [pc, #0x90]
00416f24  04 50 8d e2                                      add r5, sp, #4
00416f28  0e e0 8f e0                                      add lr, pc, lr
00416f2c  d8 ff ff ea                                      b #0x416e94
00416f30  84 e0 9f e5                                      ldr lr, [pc, #0x84]
00416f34  04 50 8d e2                                      add r5, sp, #4
00416f38  0e e0 8f e0                                      add lr, pc, lr
00416f3c  e9 ff ff ea                                      b #0x416ee8
00416f40  78 e0 9f e5                                      ldr lr, [pc, #0x78]
00416f44  04 50 8d e2                                      add r5, sp, #4
00416f48  0e e0 8f e0                                      add lr, pc, lr
00416f4c  b0 ff ff ea                                      b #0x416e14
00416f50  6c e0 9f e5                                      ldr lr, [pc, #0x6c]
00416f54  04 50 8d e2                                      add r5, sp, #4
00416f58  0e e0 8f e0                                      add lr, pc, lr
00416f5c  b8 ff ff ea                                      b #0x416e44
00416f60  ea dc fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00416f64  6c de 57 00 ac 40 00 00 d8 14 4b 00 cc 14 4b 00  .byte 0x6c, 0xde, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd8, 0x14, 0x4b, 0x00, 0xcc, 0x14, 0x4b, 0x00
00416f74  fc 14 4b 00 04 15 4b 00 10 16 4b 00 f4 37 00 00  .byte 0xfc, 0x14, 0x4b, 0x00, 0x04, 0x15, 0x4b, 0x00, 0x10, 0x16, 0x4b, 0x00, 0xf4, 0x37, 0x00, 0x00
00416f84  d0 b0 4a 00 c8 13 4b 00 08 b1 4a 00 18 b0 4a 00  .byte 0xd0, 0xb0, 0x4a, 0x00, 0xc8, 0x13, 0x4b, 0x00, 0x08, 0xb1, 0x4a, 0x00, 0x18, 0xb0, 0x4a, 0x00
00416f94  78 b0 4a 00 48 b0 4a 00 a8 af 4a 00 88 13 4b 00  .byte 0x78, 0xb0, 0x4a, 0x00, 0x48, 0xb0, 0x4a, 0x00, 0xa8, 0xaf, 0x4a, 0x00, 0x88, 0x13, 0x4b, 0x00
00416fa4  7c 13 4b 00 b4 13 4b 00 84 13 4b 00 e8 12 4b 00  .byte 0x7c, 0x13, 0x4b, 0x00, 0xb4, 0x13, 0x4b, 0x00, 0x84, 0x13, 0x4b, 0x00, 0xe8, 0x12, 0x4b, 0x00
00416fb4  b0 12 4b 00 78 12 4b 00 30 13 4b 00 e0 ae 4a 00  .byte 0xb0, 0x12, 0x4b, 0x00, 0x78, 0x12, 0x4b, 0x00, 0x30, 0x13, 0x4b, 0x00, 0xe0, 0xae, 0x4a, 0x00
00416fc4  60 af 4a 00                                      .byte 0x60, 0xaf, 0x4a, 0x00

; FUNCTION 0x00416fc8, declared_size=24, range_size=24, mode=arm
; class-group: GameSWFUtils
; alias: _ZN12GameSWFUtils14gameswf_loggerEbPKc
; demangled: GameSWFUtils::gameswf_logger(bool, char const*)
; decoder-mode: arm
00416fc8  00 00 50 e3                                      cmp r0, #0
00416fcc  1e ff 2f 11                                      bxne lr
00416fd0  04 00 9f e5                                      ldr r0, [pc, #4]
00416fd4  00 00 8f e0                                      add r0, pc, r0
00416fd8  4d 34 fc ea                                      b #0x324114
; mapping-symbol data/literal pool
00416fdc  1c 7e 4d 00                                      .byte 0x1c, 0x7e, 0x4d, 0x00

; FUNCTION 0x00416fe0, declared_size=296, range_size=296, mode=arm
; class-group: GameSWFUtils
; alias: _ZN12GameSWFUtils8PlayAnimEP6MenuFXPN7gameswf9characterEPKc
; demangled: GameSWFUtils::PlayAnim(MenuFX*, gameswf::character*, char const*)
; decoder-mode: arm
00416fe0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00416fe4  14 41 9f e5                                      ldr r4, [pc, #0x114]
00416fe8  14 51 9f e5                                      ldr r5, [pc, #0x114]
00416fec  34 d0 4d e2                                      sub sp, sp, #0x34
00416ff0  04 40 8f e0                                      add r4, pc, r4
00416ff4  05 30 94 e7                                      ldr r3, [r4, r5]
00416ff8  00 00 51 e3                                      cmp r1, #0
00416ffc  00 00 50 13                                      cmpne r0, #0
00417000  02 70 a0 e1                                      mov r7, r2
00417004  00 30 93 e5                                      ldr r3, [r3]
00417008  01 60 a0 e1                                      mov r6, r1
0041700c  00 80 a0 e1                                      mov r8, r0
00417010  2c 30 8d e5                                      str r3, [sp, #0x2c]
00417014  07 00 00 1a                                      bne #0x417038
00417018  00 00 a0 e3                                      mov r0, #0
0041701c  05 30 94 e7                                      ldr r3, [r4, r5]
00417020  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00417024  00 30 93 e5                                      ldr r3, [r3]
00417028  03 00 52 e1                                      cmp r2, r3
0041702c  32 00 00 1a                                      bne #0x4170fc
00417030  34 d0 8d e2                                      add sp, sp, #0x34
00417034  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00417038  00 30 a0 e3                                      mov r3, #0
0041703c  70 52 0e eb                                      bl #0x7aba04
00417040  00 a0 50 e2                                      subs sl, r0, #0
00417044  01 00 00 0a                                      beq #0x417050
00417048  01 00 a0 e3                                      mov r0, #1
0041704c  f2 ff ff ea                                      b #0x41701c
00417050  18 b0 8d e2                                      add fp, sp, #0x18
00417054  07 10 a0 e1                                      mov r1, r7
00417058  0b 00 a0 e1                                      mov r0, fp
0041705c  86 f2 ff eb                                      bl #0x413a7c
00417060  0c 90 8d e2                                      add sb, sp, #0xc
00417064  0c a0 cd e5                                      strb sl, [sp, #0xc]
00417068  0d a0 cd e5                                      strb sl, [sp, #0xd]
0041706c  0b 10 a0 e1                                      mov r1, fp
00417070  00 30 96 e5                                      ldr r3, [r6]
00417074  06 00 a0 e1                                      mov r0, r6
00417078  09 20 a0 e1                                      mov r2, sb
0041707c  0f e0 a0 e1                                      mov lr, pc
00417080  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00417084  00 00 50 e3                                      cmp r0, #0
00417088  07 00 00 0a                                      beq #0x4170ac
0041708c  08 00 a0 e1                                      mov r0, r8
00417090  06 10 a0 e1                                      mov r1, r6
00417094  07 20 a0 e1                                      mov r2, r7
00417098  0a 30 a0 e1                                      mov r3, sl
0041709c  00 a0 8d e5                                      str sl, [sp]
004170a0  59 53 0e eb                                      bl #0x7abe0c
004170a4  00 00 50 e3                                      cmp r0, #0
004170a8  09 00 00 1a                                      bne #0x4170d4
004170ac  09 00 a0 e1                                      mov r0, sb
004170b0  1b 00 0e eb                                      bl #0x797124
004170b4  d8 31 dd e1                                      ldrsb r3, [sp, #0x18]
004170b8  01 00 73 e3                                      cmn r3, #1
004170bc  d5 ff ff 1a                                      bne #0x417018
004170c0  24 00 9d e5                                      ldr r0, [sp, #0x24]
004170c4  20 10 9d e5                                      ldr r1, [sp, #0x20]
004170c8  9a ee 0c eb                                      bl #0x752b38
004170cc  00 00 a0 e3                                      mov r0, #0
004170d0  d1 ff ff ea                                      b #0x41701c
004170d4  09 00 a0 e1                                      mov r0, sb
004170d8  11 00 0e eb                                      bl #0x797124
004170dc  d8 31 dd e1                                      ldrsb r3, [sp, #0x18]
004170e0  01 00 73 e3                                      cmn r3, #1
004170e4  d7 ff ff 1a                                      bne #0x417048
004170e8  24 00 9d e5                                      ldr r0, [sp, #0x24]
004170ec  20 10 9d e5                                      ldr r1, [sp, #0x20]
004170f0  90 ee 0c eb                                      bl #0x752b38
004170f4  01 00 a0 e3                                      mov r0, #1
004170f8  c7 ff ff ea                                      b #0x41701c
004170fc  83 dc fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00417100  a0 da 57 00 ac 40 00 00                          .byte 0xa0, 0xda, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00417108, declared_size=64, range_size=64, mode=arm
; class-group: GameSWFUtils
; alias: _ZN12GameSWFUtils8PlayAnimEP6MenuFXPKcS3_
; demangled: GameSWFUtils::PlayAnim(MenuFX*, char const*, char const*)
; decoder-mode: arm
00417108  00 00 51 e3                                      cmp r1, #0
0041710c  00 00 50 13                                      cmpne r0, #0
00417110  70 40 2d e9                                      push {r4, r5, r6, lr}
00417114  00 30 a0 03                                      moveq r3, #0
00417118  01 30 a0 13                                      movne r3, #1
0041711c  02 40 a0 e1                                      mov r4, r2
00417120  00 50 a0 e1                                      mov r5, r0
00417124  01 00 00 1a                                      bne #0x417130
00417128  03 00 a0 e1                                      mov r0, r3
0041712c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00417130  0a 48 0e eb                                      bl #0x7a9160
00417134  04 20 a0 e1                                      mov r2, r4
00417138  00 10 a0 e1                                      mov r1, r0
0041713c  05 00 a0 e1                                      mov r0, r5
00417140  70 40 bd e8                                      pop {r4, r5, r6, lr}
00417144  a5 ff ff ea                                      b #0x416fe0

; FUNCTION 0x00417148, declared_size=176, range_size=176, mode=arm
; class-group: GameSWFUtils
; alias: _ZN12GameSWFUtils18GetFrameIDFromNameEPN7gameswf9characterEPKc
; demangled: GameSWFUtils::GetFrameIDFromName(gameswf::character*, char const*)
; decoder-mode: arm
00417148  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0041714c  9c 40 9f e5                                      ldr r4, [pc, #0x9c]
00417150  9c 50 9f e5                                      ldr r5, [pc, #0x9c]
00417154  18 d0 4d e2                                      sub sp, sp, #0x18
00417158  04 40 8f e0                                      add r4, pc, r4
0041715c  05 30 94 e7                                      ldr r3, [r4, r5]
00417160  00 60 50 e2                                      subs r6, r0, #0
00417164  01 70 a0 e1                                      mov r7, r1
00417168  00 30 93 e5                                      ldr r3, [r3]
0041716c  14 30 8d e5                                      str r3, [sp, #0x14]
00417170  05 00 00 0a                                      beq #0x41718c
00417174  00 30 96 e5                                      ldr r3, [r6]
00417178  02 10 a0 e3                                      mov r1, #2
0041717c  0f e0 a0 e1                                      mov lr, pc
00417180  08 f0 93 e5                                      ldr pc, [r3, #8]
00417184  00 00 50 e3                                      cmp r0, #0
00417188  08 00 00 1a                                      bne #0x4171b0
0041718c  00 60 e0 e3                                      mvn r6, #0
00417190  05 30 94 e7                                      ldr r3, [r4, r5]
00417194  14 20 9d e5                                      ldr r2, [sp, #0x14]
00417198  06 00 a0 e1                                      mov r0, r6
0041719c  00 30 93 e5                                      ldr r3, [r3]
004171a0  03 00 52 e1                                      cmp r2, r3
004171a4  10 00 00 1a                                      bne #0x4171ec
004171a8  18 d0 8d e2                                      add sp, sp, #0x18
004171ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004171b0  07 10 a0 e1                                      mov r1, r7
004171b4  0d 00 a0 e1                                      mov r0, sp
004171b8  2f f2 ff eb                                      bl #0x413a7c
004171bc  06 00 a0 e1                                      mov r0, r6
004171c0  0d 10 a0 e1                                      mov r1, sp
004171c4  74 9b 0d eb                                      bl #0x77df9c
004171c8  d0 30 dd e1                                      ldrsb r3, [sp]
004171cc  0d 80 a0 e1                                      mov r8, sp
004171d0  00 60 a0 e1                                      mov r6, r0
004171d4  01 00 73 e3                                      cmn r3, #1
004171d8  ec ff ff 1a                                      bne #0x417190
004171dc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
004171e0  08 10 9d e5                                      ldr r1, [sp, #8]
004171e4  53 ee 0c eb                                      bl #0x752b38
004171e8  e8 ff ff ea                                      b #0x417190
004171ec  47 dc fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004171f0  38 d9 57 00 ac 40 00 00                          .byte 0x38, 0xd9, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x004171f8, declared_size=84, range_size=84, mode=arm
; class-group: GameSWFUtils
; alias: _ZN12GameSWFUtils9GotoFrameEPN7gameswf9characterEPKc
; demangled: GameSWFUtils::GotoFrame(gameswf::character*, char const*)
; decoder-mode: arm
004171f8  70 40 2d e9                                      push {r4, r5, r6, lr}
004171fc  00 40 50 e2                                      subs r4, r0, #0
00417200  01 50 a0 e1                                      mov r5, r1
00417204  0e 00 00 0a                                      beq #0x417244
00417208  00 30 94 e5                                      ldr r3, [r4]
0041720c  02 10 a0 e3                                      mov r1, #2
00417210  0f e0 a0 e1                                      mov lr, pc
00417214  08 f0 93 e5                                      ldr pc, [r3, #8]
00417218  00 00 50 e3                                      cmp r0, #0
0041721c  08 00 00 0a                                      beq #0x417244
00417220  05 10 a0 e1                                      mov r1, r5
00417224  04 00 a0 e1                                      mov r0, r4
00417228  c6 ff ff eb                                      bl #0x417148
0041722c  01 00 70 e3                                      cmn r0, #1
00417230  00 10 a0 e1                                      mov r1, r0
00417234  02 00 00 0a                                      beq #0x417244
00417238  04 00 a0 e1                                      mov r0, r4
0041723c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00417240  82 fc ff ea                                      b #0x416450
00417244  00 00 a0 e3                                      mov r0, #0
00417248  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0041724c, declared_size=336, range_size=336, mode=arm
; class-group: GameSWFUtils
; alias: _ZN12GameSWFUtils12PreloadGlyphEPKcPN7gameswf9characterEP6MenuFX
; demangled: GameSWFUtils::PreloadGlyph(char const*, gameswf::character*, MenuFX*)
; decoder-mode: arm
0041724c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00417250  00 50 51 e2                                      subs r5, r1, #0
00417254  1c d0 4d e2                                      sub sp, sp, #0x1c
00417258  00 90 a0 e1                                      mov sb, r0
0041725c  14 20 8d e5                                      str r2, [sp, #0x14]
00417260  44 00 00 0a                                      beq #0x417378
00417264  00 30 95 e5                                      ldr r3, [r5]
00417268  05 00 a0 e1                                      mov r0, r5
0041726c  20 10 a0 e3                                      mov r1, #0x20
00417270  0f e0 a0 e1                                      mov lr, pc
00417274  08 f0 93 e5                                      ldr pc, [r3, #8]
00417278  00 00 50 e3                                      cmp r0, #0
0041727c  3d 00 00 0a                                      beq #0x417378
00417280  00 00 59 e3                                      cmp sb, #0
00417284  3e 00 00 0a                                      beq #0x417384
00417288  50 30 95 e5                                      ldr r3, [r5, #0x50]
0041728c  08 20 93 e5                                      ldr r2, [r3, #8]
00417290  00 00 52 e3                                      cmp r2, #0
00417294  00 80 a0 d3                                      movle r8, #0
00417298  1f 00 00 da                                      ble #0x41731c
0041729c  00 60 a0 e3                                      mov r6, #0
004172a0  06 70 a0 e1                                      mov r7, r6
004172a4  06 80 a0 e1                                      mov r8, r6
004172a8  78 41 95 e5                                      ldr r4, [r5, #0x178]
004172ac  04 a0 93 e5                                      ldr sl, [r3, #4]
004172b0  41 14 a0 e3                                      mov r1, #0x41000000
004172b4  d0 33 d4 e1                                      ldrsb r3, [r4, #0x30]
004172b8  74 01 95 e5                                      ldr r0, [r5, #0x174]
004172bc  0a 16 81 e2                                      add r1, r1, #0xa00000
004172c0  01 00 73 e3                                      cmn r3, #1
004172c4  31 b0 84 e2                                      add fp, r4, #0x31
004172c8  3c b0 94 05                                      ldreq fp, [r4, #0x3c]
004172cc  70 de fb eb                                      bl #0x30ec94
004172d0  7d dc fb eb                                      bl #0x30e4cc
004172d4  4d 10 d4 e5                                      ldrb r1, [r4, #0x4d]
004172d8  00 30 a0 e1                                      mov r3, r0
004172dc  06 a0 8a e0                                      add sl, sl, r6
004172e0  00 10 8d e5                                      str r1, [sp]
004172e4  4c c0 d4 e5                                      ldrb ip, [r4, #0x4c]
004172e8  0b 20 a0 e1                                      mov r2, fp
004172ec  14 00 9d e5                                      ldr r0, [sp, #0x14]
004172f0  09 10 a0 e1                                      mov r1, sb
004172f4  04 c0 8d e5                                      str ip, [sp, #4]
004172f8  08 a0 8d e5                                      str sl, [sp, #8]
004172fc  6d 4f 0e eb                                      bl #0x7ab0b8
00417300  50 30 95 e5                                      ldr r3, [r5, #0x50]
00417304  01 70 87 e2                                      add r7, r7, #1
00417308  00 80 88 e0                                      add r8, r8, r0
0041730c  08 20 93 e5                                      ldr r2, [r3, #8]
00417310  2c 60 86 e2                                      add r6, r6, #0x2c
00417314  02 00 57 e1                                      cmp r7, r2
00417318  e2 ff ff ba                                      blt #0x4172a8
0041731c  78 41 95 e5                                      ldr r4, [r5, #0x178]
00417320  41 14 a0 e3                                      mov r1, #0x41000000
00417324  74 01 95 e5                                      ldr r0, [r5, #0x174]
00417328  d0 33 d4 e1                                      ldrsb r3, [r4, #0x30]
0041732c  0a 16 81 e2                                      add r1, r1, #0xa00000
00417330  01 00 73 e3                                      cmn r3, #1
00417334  3c 60 94 05                                      ldreq r6, [r4, #0x3c]
00417338  31 60 84 12                                      addne r6, r4, #0x31
0041733c  54 de fb eb                                      bl #0x30ec94
00417340  61 dc fb eb                                      bl #0x30e4cc
00417344  4d 20 d4 e5                                      ldrb r2, [r4, #0x4d]
00417348  00 30 a0 e1                                      mov r3, r0
0041734c  09 10 a0 e1                                      mov r1, sb
00417350  00 20 8d e5                                      str r2, [sp]
00417354  4c c0 d4 e5                                      ldrb ip, [r4, #0x4c]
00417358  14 00 9d e5                                      ldr r0, [sp, #0x14]
0041735c  06 20 a0 e1                                      mov r2, r6
00417360  04 c0 8d e5                                      str ip, [sp, #4]
00417364  00 c0 a0 e3                                      mov ip, #0
00417368  08 c0 8d e5                                      str ip, [sp, #8]
0041736c  51 4f 0e eb                                      bl #0x7ab0b8
00417370  08 00 80 e0                                      add r0, r0, r8
00417374  00 00 00 ea                                      b #0x41737c
00417378  00 00 a0 e3                                      mov r0, #0
0041737c  1c d0 8d e2                                      add sp, sp, #0x1c
00417380  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00417384  38 31 d5 e5                                      ldrb r3, [r5, #0x138]
00417388  ff 00 53 e3                                      cmp r3, #0xff
0041738c  4e 9f 85 12                                      addne sb, r5, #0x138
00417390  01 90 89 12                                      addne sb, sb, #1
00417394  44 91 95 05                                      ldreq sb, [r5, #0x144]
00417398  ba ff ff ea                                      b #0x417288
