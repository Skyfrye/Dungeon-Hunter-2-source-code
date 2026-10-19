; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0046c738, declared_size=32, range_size=32, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManager14__loadLastSlotEP11IStreamBasePv
; demangled: SavegameManager::__loadLastSlot(IStreamBase*, void*)
; decoder-mode: arm
0046c738  10 40 2d e9                                      push {r4, lr}
0046c73c  04 20 a0 e3                                      mov r2, #4
0046c740  00 c0 90 e5                                      ldr ip, [r0]
0046c744  00 30 a0 e3                                      mov r3, #0
0046c748  08 10 81 e2                                      add r1, r1, #8
0046c74c  0f e0 a0 e1                                      mov lr, pc
0046c750  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0046c754  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046c758, declared_size=32, range_size=32, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManager14__saveLastSlotEP11IStreamBasePv
; demangled: SavegameManager::__saveLastSlot(IStreamBase*, void*)
; decoder-mode: arm
0046c758  10 40 2d e9                                      push {r4, lr}
0046c75c  04 20 a0 e3                                      mov r2, #4
0046c760  00 c0 90 e5                                      ldr ip, [r0]
0046c764  00 30 a0 e3                                      mov r3, #0
0046c768  08 10 81 e2                                      add r1, r1, #8
0046c76c  0f e0 a0 e1                                      mov lr, pc
0046c770  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0046c774  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046c778, declared_size=32, range_size=32, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManager15__loadTutorialsEP11IStreamBasePv
; demangled: SavegameManager::__loadTutorials(IStreamBase*, void*)
; decoder-mode: arm
0046c778  10 40 2d e9                                      push {r4, lr}
0046c77c  0e 20 a0 e3                                      mov r2, #0xe
0046c780  00 c0 90 e5                                      ldr ip, [r0]
0046c784  00 30 a0 e3                                      mov r3, #0
0046c788  29 10 81 e2                                      add r1, r1, #0x29
0046c78c  0f e0 a0 e1                                      mov lr, pc
0046c790  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0046c794  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046c798, declared_size=32, range_size=32, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManager15__saveTutorialsEP11IStreamBasePv
; demangled: SavegameManager::__saveTutorials(IStreamBase*, void*)
; decoder-mode: arm
0046c798  10 40 2d e9                                      push {r4, lr}
0046c79c  0e 20 a0 e3                                      mov r2, #0xe
0046c7a0  00 c0 90 e5                                      ldr ip, [r0]
0046c7a4  00 30 a0 e3                                      mov r3, #0
0046c7a8  29 10 81 e2                                      add r1, r1, #0x29
0046c7ac  0f e0 a0 e1                                      mov lr, pc
0046c7b0  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0046c7b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046c7b8, declared_size=528, range_size=528, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManager28__loadLanguageAndOrientationEP11IStreamBasePv
; demangled: SavegameManager::__loadLanguageAndOrientation(IStreamBase*, void*)
; decoder-mode: arm
0046c7b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046c7bc  ec 21 9f e5                                      ldr r2, [pc, #0x1ec]
0046c7c0  ec 31 9f e5                                      ldr r3, [pc, #0x1ec]
0046c7c4  a4 d0 4d e2                                      sub sp, sp, #0xa4
0046c7c8  02 20 8f e0                                      add r2, pc, r2
0046c7cc  0c 30 8d e5                                      str r3, [sp, #0xc]
0046c7d0  03 30 92 e7                                      ldr r3, [r2, r3]
0046c7d4  00 60 50 e2                                      subs r6, r0, #0
0046c7d8  04 20 8d e5                                      str r2, [sp, #4]
0046c7dc  00 30 93 e5                                      ldr r3, [r3]
0046c7e0  01 90 a0 e1                                      mov sb, r1
0046c7e4  9c 30 8d e5                                      str r3, [sp, #0x9c]
0046c7e8  37 00 00 0a                                      beq #0x46c8cc
0046c7ec  18 10 8d e2                                      add r1, sp, #0x18
0046c7f0  6a ca fd eb                                      bl #0x3df1a0
0046c7f4  18 30 9d e5                                      ldr r3, [sp, #0x18]
0046c7f8  00 00 53 e3                                      cmp r3, #0
0046c7fc  32 00 00 0a                                      beq #0x46c8cc
0046c800  b0 31 9f e5                                      ldr r3, [pc, #0x1b0]
0046c804  b0 71 9f e5                                      ldr r7, [pc, #0x1b0]
0046c808  00 40 a0 e3                                      mov r4, #0
0046c80c  03 30 8f e0                                      add r3, pc, r3
0046c810  07 70 8f e0                                      add r7, pc, r7
0046c814  08 30 8d e5                                      str r3, [sp, #8]
0046c818  04 b0 a0 e1                                      mov fp, r4
0046c81c  04 80 a0 e1                                      mov r8, r4
0046c820  1c 50 8d e2                                      add r5, sp, #0x1c
0046c824  14 a0 8d e2                                      add sl, sp, #0x14
0046c828  08 00 00 ea                                      b #0x46c850
0046c82c  14 30 9d e5                                      ldr r3, [sp, #0x14]
0046c830  01 80 a0 e3                                      mov r8, #1
0046c834  38 30 89 e5                                      str r3, [sb, #0x38]
0046c838  00 00 5b e3                                      cmp fp, #0
0046c83c  22 00 00 1a                                      bne #0x46c8cc
0046c840  18 30 9d e5                                      ldr r3, [sp, #0x18]
0046c844  01 40 84 e2                                      add r4, r4, #1
0046c848  04 00 53 e1                                      cmp r3, r4
0046c84c  1e 00 00 9a                                      bls #0x46c8cc
0046c850  06 00 a0 e1                                      mov r0, r6
0046c854  05 10 a0 e1                                      mov r1, r5
0046c858  80 20 a0 e3                                      mov r2, #0x80
0046c85c  00 30 a0 e3                                      mov r3, #0
0046c860  b3 ab fa eb                                      bl #0x317734
0046c864  00 00 50 e3                                      cmp r0, #0
0046c868  17 00 00 0a                                      beq #0x46c8cc
0046c86c  06 00 a0 e1                                      mov r0, r6
0046c870  0a 10 a0 e1                                      mov r1, sl
0046c874  05 b2 ff eb                                      bl #0x459090
0046c878  07 00 a0 e1                                      mov r0, r7
0046c87c  05 10 a0 e1                                      mov r1, r5
0046c880  a5 86 fa eb                                      bl #0x30e31c
0046c884  00 00 50 e3                                      cmp r0, #0
0046c888  e7 ff ff 0a                                      beq #0x46c82c
0046c88c  08 00 9d e5                                      ldr r0, [sp, #8]
0046c890  05 10 a0 e1                                      mov r1, r5
0046c894  a0 86 fa eb                                      bl #0x30e31c
0046c898  00 00 50 e3                                      cmp r0, #0
0046c89c  04 00 00 1a                                      bne #0x46c8b4
0046c8a0  14 30 9d e5                                      ldr r3, [sp, #0x14]
0046c8a4  01 b0 a0 e3                                      mov fp, #1
0046c8a8  00 30 53 e2                                      subs r3, r3, #0
0046c8ac  01 30 a0 13                                      movne r3, #1
0046c8b0  3c 30 c9 e5                                      strb r3, [sb, #0x3c]
0046c8b4  00 00 58 e3                                      cmp r8, #0
0046c8b8  de ff ff 1a                                      bne #0x46c838
0046c8bc  18 30 9d e5                                      ldr r3, [sp, #0x18]
0046c8c0  01 40 84 e2                                      add r4, r4, #1
0046c8c4  04 00 53 e1                                      cmp r3, r4
0046c8c8  e0 ff ff 8a                                      bhi #0x46c850
0046c8cc  ec 30 9f e5                                      ldr r3, [pc, #0xec]
0046c8d0  04 c0 9d e5                                      ldr ip, [sp, #4]
0046c8d4  03 30 9c e7                                      ldr r3, [ip, r3]
0046c8d8  00 30 d3 e5                                      ldrb r3, [r3]
0046c8dc  00 00 53 e3                                      cmp r3, #0
0046c8e0  1c 00 00 1a                                      bne #0x46c958
0046c8e4  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
0046c8e8  04 10 9d e5                                      ldr r1, [sp, #4]
0046c8ec  03 30 91 e7                                      ldr r3, [r1, r3]
0046c8f0  00 30 d3 e5                                      ldrb r3, [r3]
0046c8f4  00 00 53 e3                                      cmp r3, #0
0046c8f8  0a 00 00 0a                                      beq #0x46c928
0046c8fc  04 30 a0 e3                                      mov r3, #4
0046c900  38 30 89 e5                                      str r3, [sb, #0x38]
0046c904  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0046c908  04 c0 9d e5                                      ldr ip, [sp, #4]
0046c90c  02 30 9c e7                                      ldr r3, [ip, r2]
0046c910  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
0046c914  00 30 93 e5                                      ldr r3, [r3]
0046c918  03 00 52 e1                                      cmp r2, r3
0046c91c  22 00 00 1a                                      bne #0x46c9ac
0046c920  a4 d0 8d e2                                      add sp, sp, #0xa4
0046c924  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046c928  60 14 03 eb                                      bl #0x531ab0
0046c92c  07 00 50 e3                                      cmp r0, #7
0046c930  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
0046c934  0a 00 00 ea                                      b #0x46c964
0046c938  09 00 00 ea                                      b #0x46c964
0046c93c  11 00 00 ea                                      b #0x46c988
0046c940  13 00 00 ea                                      b #0x46c994
0046c944  15 00 00 ea                                      b #0x46c9a0
0046c948  08 00 00 ea                                      b #0x46c970
0046c94c  ea ff ff ea                                      b #0x46c8fc
0046c950  00 00 00 ea                                      b #0x46c958
0046c954  08 00 00 ea                                      b #0x46c97c
0046c958  05 30 a0 e3                                      mov r3, #5
0046c95c  38 30 89 e5                                      str r3, [sb, #0x38]
0046c960  e7 ff ff ea                                      b #0x46c904
0046c964  00 30 a0 e3                                      mov r3, #0
0046c968  38 30 89 e5                                      str r3, [sb, #0x38]
0046c96c  e4 ff ff ea                                      b #0x46c904
0046c970  03 30 a0 e3                                      mov r3, #3
0046c974  38 30 89 e5                                      str r3, [sb, #0x38]
0046c978  e1 ff ff ea                                      b #0x46c904
0046c97c  06 30 a0 e3                                      mov r3, #6
0046c980  38 30 89 e5                                      str r3, [sb, #0x38]
0046c984  de ff ff ea                                      b #0x46c904
0046c988  02 30 a0 e3                                      mov r3, #2
0046c98c  38 30 89 e5                                      str r3, [sb, #0x38]
0046c990  db ff ff ea                                      b #0x46c904
0046c994  01 30 a0 e3                                      mov r3, #1
0046c998  38 30 89 e5                                      str r3, [sb, #0x38]
0046c99c  d8 ff ff ea                                      b #0x46c904
0046c9a0  07 30 a0 e3                                      mov r3, #7
0046c9a4  38 30 89 e5                                      str r3, [sb, #0x38]
0046c9a8  d5 ff ff ea                                      b #0x46c904
0046c9ac  57 86 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046c9b0  c8 82 52 00 ac 40 00 00 44 57 45 00 48 f3 45 00  .byte 0xc8, 0x82, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0x44, 0x57, 0x45, 0x00, 0x48, 0xf3, 0x45, 0x00
0046c9c0  ac 3f 00 00 14 47 00 00                          .byte 0xac, 0x3f, 0x00, 0x00, 0x14, 0x47, 0x00, 0x00

; FUNCTION 0x0046ca78, declared_size=188, range_size=188, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManager13__saveOptionsEP11IStreamBasePv
; demangled: SavegameManager::__saveOptions(IStreamBase*, void*)
; decoder-mode: arm
0046ca78  70 40 2d e9                                      push {r4, r5, r6, lr}
0046ca7c  20 30 91 e5                                      ldr r3, [r1, #0x20]
0046ca80  18 40 91 e5                                      ldr r4, [r1, #0x18]
0046ca84  08 d0 4d e2                                      sub sp, sp, #8
0046ca88  01 60 a0 e1                                      mov r6, r1
0046ca8c  08 10 8d e2                                      add r1, sp, #8
0046ca90  04 30 21 e5                                      str r3, [r1, #-4]!
0046ca94  10 60 86 e2                                      add r6, r6, #0x10
0046ca98  00 50 a0 e1                                      mov r5, r0
0046ca9c  cf 9b fa eb                                      bl #0x3139e0
0046caa0  06 00 54 e1                                      cmp r4, r6
0046caa4  13 00 00 0a                                      beq #0x46caf8
0046caa8  24 10 94 e5                                      ldr r1, [r4, #0x24]
0046caac  20 20 94 e5                                      ldr r2, [r4, #0x20]
0046cab0  00 30 a0 e3                                      mov r3, #0
0046cab4  05 00 a0 e1                                      mov r0, r5
0046cab8  02 20 61 e0                                      rsb r2, r1, r2
0046cabc  73 aa fa eb                                      bl #0x317490
0046cac0  05 00 a0 e1                                      mov r0, r5
0046cac4  2c 10 84 e2                                      add r1, r4, #0x2c
0046cac8  be ff ff eb                                      bl #0x46c9c8
0046cacc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0046cad0  00 00 52 e3                                      cmp r2, #0
0046cad4  01 00 00 1a                                      bne #0x46cae0
0046cad8  08 00 00 ea                                      b #0x46cb00
0046cadc  03 20 a0 e1                                      mov r2, r3
0046cae0  08 30 92 e5                                      ldr r3, [r2, #8]
0046cae4  00 00 53 e3                                      cmp r3, #0
0046cae8  fb ff ff 1a                                      bne #0x46cadc
0046caec  02 40 a0 e1                                      mov r4, r2
0046caf0  04 00 56 e1                                      cmp r6, r4
0046caf4  eb ff ff 1a                                      bne #0x46caa8
0046caf8  08 d0 8d e2                                      add sp, sp, #8
0046cafc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0046cb00  04 30 94 e5                                      ldr r3, [r4, #4]
0046cb04  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0046cb08  01 00 54 e1                                      cmp r4, r1
0046cb0c  05 00 00 1a                                      bne #0x46cb28
0046cb10  03 40 a0 e1                                      mov r4, r3
0046cb14  04 30 93 e5                                      ldr r3, [r3, #4]
0046cb18  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0046cb1c  04 00 52 e1                                      cmp r2, r4
0046cb20  fa ff ff 0a                                      beq #0x46cb10
0046cb24  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0046cb28  02 00 53 e1                                      cmp r3, r2
0046cb2c  03 40 a0 11                                      movne r4, r3
0046cb30  ee ff ff ea                                      b #0x46caf0

; FUNCTION 0x0046cb34, declared_size=164, range_size=164, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManager12saveSettingsEv
; demangled: SavegameManager::saveSettings()
; decoder-mode: arm
0046cb34  70 40 2d e9                                      push {r4, r5, r6, lr}
0046cb38  04 20 90 e5                                      ldr r2, [r0, #4]
0046cb3c  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0046cb40  08 d0 4d e2                                      sub sp, sp, #8
0046cb44  00 00 52 e3                                      cmp r2, #0
0046cb48  00 40 a0 e1                                      mov r4, r0
0046cb4c  03 30 8f e0                                      add r3, pc, r3
0046cb50  1c 00 00 0a                                      beq #0x46cbc8
0046cb54  37 10 d0 e5                                      ldrb r1, [r0, #0x37]
0046cb58  00 00 51 e3                                      cmp r1, #0
0046cb5c  19 00 00 1a                                      bne #0x46cbc8
0046cb60  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
0046cb64  18 10 92 e5                                      ldr r1, [r2, #0x18]
0046cb68  01 20 a0 e3                                      mov r2, #1
0046cb6c  00 50 93 e7                                      ldr r5, [r3, r0]
0046cb70  10 30 95 e5                                      ldr r3, [r5, #0x10]
0046cb74  34 30 93 e5                                      ldr r3, [r3, #0x34]
0046cb78  03 00 a0 e1                                      mov r0, r3
0046cb7c  00 30 93 e5                                      ldr r3, [r3]
0046cb80  0f e0 a0 e1                                      mov lr, pc
0046cb84  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0046cb88  00 30 50 e2                                      subs r3, r0, #0
0046cb8c  0d 00 00 0a                                      beq #0x46cbc8
0046cb90  04 10 a0 e1                                      mov r1, r4
0046cb94  08 60 8d e2                                      add r6, sp, #8
0046cb98  04 30 8d e5                                      str r3, [sp, #4]
0046cb9c  b5 ff ff eb                                      bl #0x46ca78
0046cba0  04 00 36 e5                                      ldr r0, [r6, #-4]!
0046cba4  04 10 a0 e1                                      mov r1, r4
0046cba8  fa fe ff eb                                      bl #0x46c798
0046cbac  10 30 95 e5                                      ldr r3, [r5, #0x10]
0046cbb0  06 10 a0 e1                                      mov r1, r6
0046cbb4  34 30 93 e5                                      ldr r3, [r3, #0x34]
0046cbb8  03 00 a0 e1                                      mov r0, r3
0046cbbc  00 30 93 e5                                      ldr r3, [r3]
0046cbc0  0f e0 a0 e1                                      mov lr, pc
0046cbc4  78 f0 93 e5                                      ldr pc, [r3, #0x78]
0046cbc8  08 d0 8d e2                                      add sp, sp, #8
0046cbcc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0046cbd0  44 7f 52 00 f4 37 00 00                          .byte 0x44, 0x7f, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0046cc18, declared_size=140, range_size=140, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManagerD1Ev
; demangled: SavegameManager::~SavegameManager()
; decoder-mode: arm
0046cc18  70 40 2d e9                                      push {r4, r5, r6, lr}
0046cc1c  78 30 9f e5                                      ldr r3, [pc, #0x78]
0046cc20  78 20 9f e5                                      ldr r2, [pc, #0x78]
0046cc24  04 10 90 e5                                      ldr r1, [r0, #4]
0046cc28  03 30 8f e0                                      add r3, pc, r3
0046cc2c  02 20 93 e7                                      ldr r2, [r3, r2]
0046cc30  00 00 51 e3                                      cmp r1, #0
0046cc34  00 40 a0 e1                                      mov r4, r0
0046cc38  08 20 82 e2                                      add r2, r2, #8
0046cc3c  00 20 80 e5                                      str r2, [r0]
0046cc40  05 00 00 0a                                      beq #0x46cc5c
0046cc44  00 30 91 e5                                      ldr r3, [r1]
0046cc48  01 00 a0 e1                                      mov r0, r1
0046cc4c  0f e0 a0 e1                                      mov lr, pc
0046cc50  04 f0 93 e5                                      ldr pc, [r3, #4]
0046cc54  00 30 a0 e3                                      mov r3, #0
0046cc58  04 30 84 e5                                      str r3, [r4, #4]
0046cc5c  40 00 84 e2                                      add r0, r4, #0x40
0046cc60  7b ad fa eb                                      bl #0x318254
0046cc64  20 30 94 e5                                      ldr r3, [r4, #0x20]
0046cc68  00 00 53 e3                                      cmp r3, #0
0046cc6c  08 00 00 0a                                      beq #0x46cc94
0046cc70  10 50 84 e2                                      add r5, r4, #0x10
0046cc74  05 00 a0 e1                                      mov r0, r5
0046cc78  14 10 94 e5                                      ldr r1, [r4, #0x14]
0046cc7c  d5 ff ff eb                                      bl #0x46cbd8
0046cc80  00 30 a0 e3                                      mov r3, #0
0046cc84  1c 50 84 e5                                      str r5, [r4, #0x1c]
0046cc88  20 30 84 e5                                      str r3, [r4, #0x20]
0046cc8c  18 50 84 e5                                      str r5, [r4, #0x18]
0046cc90  14 30 84 e5                                      str r3, [r4, #0x14]
0046cc94  04 00 a0 e1                                      mov r0, r4
0046cc98  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0046cc9c  68 7e 52 00 84 3c 00 00                          .byte 0x68, 0x7e, 0x52, 0x00, 0x84, 0x3c, 0x00, 0x00

; FUNCTION 0x0046cca4, declared_size=28, range_size=28, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManagerD0Ev
; demangled: SavegameManager::~SavegameManager()
; decoder-mode: arm
0046cca4  10 40 2d e9                                      push {r4, lr}
0046cca8  00 40 a0 e1                                      mov r4, r0
0046ccac  d9 ff ff eb                                      bl #0x46cc18
0046ccb0  04 00 a0 e1                                      mov r0, r4
0046ccb4  e1 8d fa eb                                      bl #0x310440
0046ccb8  04 00 a0 e1                                      mov r0, r4
0046ccbc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046ccc0, declared_size=140, range_size=140, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManagerD2Ev
; demangled: SavegameManager::~SavegameManager()
; decoder-mode: arm
0046ccc0  70 40 2d e9                                      push {r4, r5, r6, lr}
0046ccc4  78 30 9f e5                                      ldr r3, [pc, #0x78]
0046ccc8  78 20 9f e5                                      ldr r2, [pc, #0x78]
0046cccc  04 10 90 e5                                      ldr r1, [r0, #4]
0046ccd0  03 30 8f e0                                      add r3, pc, r3
0046ccd4  02 20 93 e7                                      ldr r2, [r3, r2]
0046ccd8  00 00 51 e3                                      cmp r1, #0
0046ccdc  00 40 a0 e1                                      mov r4, r0
0046cce0  08 20 82 e2                                      add r2, r2, #8
0046cce4  00 20 80 e5                                      str r2, [r0]
0046cce8  05 00 00 0a                                      beq #0x46cd04
0046ccec  00 30 91 e5                                      ldr r3, [r1]
0046ccf0  01 00 a0 e1                                      mov r0, r1
0046ccf4  0f e0 a0 e1                                      mov lr, pc
0046ccf8  04 f0 93 e5                                      ldr pc, [r3, #4]
0046ccfc  00 30 a0 e3                                      mov r3, #0
0046cd00  04 30 84 e5                                      str r3, [r4, #4]
0046cd04  40 00 84 e2                                      add r0, r4, #0x40
0046cd08  51 ad fa eb                                      bl #0x318254
0046cd0c  20 30 94 e5                                      ldr r3, [r4, #0x20]
0046cd10  00 00 53 e3                                      cmp r3, #0
0046cd14  08 00 00 0a                                      beq #0x46cd3c
0046cd18  10 50 84 e2                                      add r5, r4, #0x10
0046cd1c  05 00 a0 e1                                      mov r0, r5
0046cd20  14 10 94 e5                                      ldr r1, [r4, #0x14]
0046cd24  ab ff ff eb                                      bl #0x46cbd8
0046cd28  00 30 a0 e3                                      mov r3, #0
0046cd2c  1c 50 84 e5                                      str r5, [r4, #0x1c]
0046cd30  20 30 84 e5                                      str r3, [r4, #0x20]
0046cd34  18 50 84 e5                                      str r5, [r4, #0x18]
0046cd38  14 30 84 e5                                      str r3, [r4, #0x14]
0046cd3c  04 00 a0 e1                                      mov r0, r4
0046cd40  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0046cd44  c0 7d 52 00 84 3c 00 00                          .byte 0xc0, 0x7d, 0x52, 0x00, 0x84, 0x3c, 0x00, 0x00

; FUNCTION 0x0046cd4c, declared_size=140, range_size=140, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManagerC1Ev
; demangled: SavegameManager::SavegameManager()
; decoder-mode: arm
0046cd4c  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0046cd50  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
0046cd54  70 40 2d e9                                      push {r4, r5, r6, lr}
0046cd58  03 30 8f e0                                      add r3, pc, r3
0046cd5c  01 10 93 e7                                      ldr r1, [r3, r1]
0046cd60  00 40 a0 e1                                      mov r4, r0
0046cd64  00 50 a0 e3                                      mov r5, #0
0046cd68  00 20 a0 e1                                      mov r2, r0
0046cd6c  08 10 81 e2                                      add r1, r1, #8
0046cd70  00 00 e0 e3                                      mvn r0, #0
0046cd74  00 10 84 e5                                      str r1, [r4]
0046cd78  08 00 84 e5                                      str r0, [r4, #8]
0046cd7c  40 10 84 e2                                      add r1, r4, #0x40
0046cd80  04 50 84 e5                                      str r5, [r4, #4]
0046cd84  0c 50 84 e5                                      str r5, [r4, #0xc]
0046cd88  14 50 84 e5                                      str r5, [r4, #0x14]
0046cd8c  10 50 e2 e5                                      strb r5, [r2, #0x10]!
0046cd90  1c 20 84 e5                                      str r2, [r4, #0x1c]
0046cd94  38 00 84 e5                                      str r0, [r4, #0x38]
0046cd98  50 10 84 e5                                      str r1, [r4, #0x50]
0046cd9c  01 00 a0 e1                                      mov r0, r1
0046cda0  54 10 84 e5                                      str r1, [r4, #0x54]
0046cda4  18 20 84 e5                                      str r2, [r4, #0x18]
0046cda8  20 50 84 e5                                      str r5, [r4, #0x20]
0046cdac  28 50 c4 e5                                      strb r5, [r4, #0x28]
0046cdb0  37 50 c4 e5                                      strb r5, [r4, #0x37]
0046cdb4  3c 50 c4 e5                                      strb r5, [r4, #0x3c]
0046cdb8  10 10 a0 e3                                      mov r1, #0x10
0046cdbc  2e 92 fa eb                                      bl #0x31167c
0046cdc0  50 30 94 e5                                      ldr r3, [r4, #0x50]
0046cdc4  04 00 a0 e1                                      mov r0, r4
0046cdc8  00 50 c3 e5                                      strb r5, [r3]
0046cdcc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0046cdd0  38 7d 52 00 84 3c 00 00                          .byte 0x38, 0x7d, 0x52, 0x00, 0x84, 0x3c, 0x00, 0x00

; FUNCTION 0x0046cdd8, declared_size=140, range_size=140, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManagerC2Ev
; demangled: SavegameManager::SavegameManager()
; decoder-mode: arm
0046cdd8  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0046cddc  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
0046cde0  70 40 2d e9                                      push {r4, r5, r6, lr}
0046cde4  03 30 8f e0                                      add r3, pc, r3
0046cde8  01 10 93 e7                                      ldr r1, [r3, r1]
0046cdec  00 40 a0 e1                                      mov r4, r0
0046cdf0  00 50 a0 e3                                      mov r5, #0
0046cdf4  00 20 a0 e1                                      mov r2, r0
0046cdf8  08 10 81 e2                                      add r1, r1, #8
0046cdfc  00 00 e0 e3                                      mvn r0, #0
0046ce00  00 10 84 e5                                      str r1, [r4]
0046ce04  08 00 84 e5                                      str r0, [r4, #8]
0046ce08  40 10 84 e2                                      add r1, r4, #0x40
0046ce0c  04 50 84 e5                                      str r5, [r4, #4]
0046ce10  0c 50 84 e5                                      str r5, [r4, #0xc]
0046ce14  14 50 84 e5                                      str r5, [r4, #0x14]
0046ce18  10 50 e2 e5                                      strb r5, [r2, #0x10]!
0046ce1c  1c 20 84 e5                                      str r2, [r4, #0x1c]
0046ce20  38 00 84 e5                                      str r0, [r4, #0x38]
0046ce24  50 10 84 e5                                      str r1, [r4, #0x50]
0046ce28  01 00 a0 e1                                      mov r0, r1
0046ce2c  54 10 84 e5                                      str r1, [r4, #0x54]
0046ce30  18 20 84 e5                                      str r2, [r4, #0x18]
0046ce34  20 50 84 e5                                      str r5, [r4, #0x20]
0046ce38  28 50 c4 e5                                      strb r5, [r4, #0x28]
0046ce3c  37 50 c4 e5                                      strb r5, [r4, #0x37]
0046ce40  3c 50 c4 e5                                      strb r5, [r4, #0x3c]
0046ce44  10 10 a0 e3                                      mov r1, #0x10
0046ce48  0b 92 fa eb                                      bl #0x31167c
0046ce4c  50 30 94 e5                                      ldr r3, [r4, #0x50]
0046ce50  04 00 a0 e1                                      mov r0, r4
0046ce54  00 50 c3 e5                                      strb r5, [r3]
0046ce58  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0046ce5c  ac 7c 52 00 84 3c 00 00                          .byte 0xac, 0x7c, 0x52, 0x00, 0x84, 0x3c, 0x00, 0x00

; FUNCTION 0x0046cfd4, declared_size=104, range_size=104, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManager9decOptionEPKc
; demangled: SavegameManager::decOption(char const*)
; decoder-mode: arm
0046cfd4  10 40 2d e9                                      push {r4, lr}
0046cfd8  08 d0 4d e2                                      sub sp, sp, #8
0046cfdc  08 30 8d e2                                      add r3, sp, #8
0046cfe0  04 10 23 e5                                      str r1, [r3, #-4]!
0046cfe4  10 40 80 e2                                      add r4, r0, #0x10
0046cfe8  03 10 a0 e1                                      mov r1, r3
0046cfec  04 00 a0 e1                                      mov r0, r4
0046cff0  9b ff ff eb                                      bl #0x46ce64
0046cff4  04 00 50 e1                                      cmp r0, r4
0046cff8  04 00 00 0a                                      beq #0x46d010
0046cffc  28 30 90 e5                                      ldr r3, [r0, #0x28]
0046d000  18 20 93 e5                                      ldr r2, [r3, #0x18]
0046d004  01 20 42 e2                                      sub r2, r2, #1
0046d008  01 00 52 e3                                      cmp r2, #1
0046d00c  01 00 00 9a                                      bls #0x46d018
0046d010  08 d0 8d e2                                      add sp, sp, #8
0046d014  10 80 bd e8                                      pop {r4, pc}
0046d018  14 20 93 e5                                      ldr r2, [r3, #0x14]
0046d01c  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
0046d020  01 20 62 e0                                      rsb r2, r2, r1
0046d024  2c 20 80 e5                                      str r2, [r0, #0x2c]
0046d028  10 30 93 e5                                      ldr r3, [r3, #0x10]
0046d02c  03 00 52 e1                                      cmp r2, r3
0046d030  2c 20 80 a5                                      strge r2, [r0, #0x2c]
0046d034  2c 30 80 b5                                      strlt r3, [r0, #0x2c]
0046d038  f4 ff ff ea                                      b #0x46d010

; FUNCTION 0x0046d03c, declared_size=148, range_size=148, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManager9incOptionEPKc
; demangled: SavegameManager::incOption(char const*)
; decoder-mode: arm
0046d03c  10 40 2d e9                                      push {r4, lr}
0046d040  08 d0 4d e2                                      sub sp, sp, #8
0046d044  08 30 8d e2                                      add r3, sp, #8
0046d048  04 10 23 e5                                      str r1, [r3, #-4]!
0046d04c  10 40 80 e2                                      add r4, r0, #0x10
0046d050  03 10 a0 e1                                      mov r1, r3
0046d054  04 00 a0 e1                                      mov r0, r4
0046d058  81 ff ff eb                                      bl #0x46ce64
0046d05c  04 00 50 e1                                      cmp r0, r4
0046d060  05 00 00 0a                                      beq #0x46d07c
0046d064  28 30 90 e5                                      ldr r3, [r0, #0x28]
0046d068  18 20 93 e5                                      ldr r2, [r3, #0x18]
0046d06c  01 00 52 e3                                      cmp r2, #1
0046d070  0d 00 00 0a                                      beq #0x46d0ac
0046d074  02 00 52 e3                                      cmp r2, #2
0046d078  01 00 00 0a                                      beq #0x46d084
0046d07c  08 d0 8d e2                                      add sp, sp, #8
0046d080  10 80 bd e8                                      pop {r4, pc}
0046d084  14 10 93 e5                                      ldr r1, [r3, #0x14]
0046d088  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
0046d08c  02 20 81 e0                                      add r2, r1, r2
0046d090  2c 20 80 e5                                      str r2, [r0, #0x2c]
0046d094  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0046d098  01 30 43 e2                                      sub r3, r3, #1
0046d09c  03 00 52 e1                                      cmp r2, r3
0046d0a0  2c 20 80 d5                                      strle r2, [r0, #0x2c]
0046d0a4  2c 30 80 c5                                      strgt r3, [r0, #0x2c]
0046d0a8  f3 ff ff ea                                      b #0x46d07c
0046d0ac  14 10 93 e5                                      ldr r1, [r3, #0x14]
0046d0b0  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
0046d0b4  02 20 81 e0                                      add r2, r1, r2
0046d0b8  2c 20 80 e5                                      str r2, [r0, #0x2c]
0046d0bc  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0046d0c0  03 00 52 e1                                      cmp r2, r3
0046d0c4  2c 20 80 d5                                      strle r2, [r0, #0x2c]
0046d0c8  2c 30 80 c5                                      strgt r3, [r0, #0x2c]
0046d0cc  ea ff ff ea                                      b #0x46d07c

; FUNCTION 0x0046d0d0, declared_size=52, range_size=52, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManager9setOptionEPKci
; demangled: SavegameManager::setOption(char const*, int)
; decoder-mode: arm
0046d0d0  30 40 2d e9                                      push {r4, r5, lr}
0046d0d4  0c d0 4d e2                                      sub sp, sp, #0xc
0046d0d8  08 30 8d e2                                      add r3, sp, #8
0046d0dc  04 10 23 e5                                      str r1, [r3, #-4]!
0046d0e0  10 40 80 e2                                      add r4, r0, #0x10
0046d0e4  03 10 a0 e1                                      mov r1, r3
0046d0e8  04 00 a0 e1                                      mov r0, r4
0046d0ec  02 50 a0 e1                                      mov r5, r2
0046d0f0  5b ff ff eb                                      bl #0x46ce64
0046d0f4  04 00 50 e1                                      cmp r0, r4
0046d0f8  2c 50 80 15                                      strne r5, [r0, #0x2c]
0046d0fc  0c d0 8d e2                                      add sp, sp, #0xc
0046d100  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0046d104, declared_size=380, range_size=380, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManager11setLanguageEi
; demangled: SavegameManager::setLanguage(int)
; decoder-mode: arm
0046d104  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0046d108  01 60 a0 e1                                      mov r6, r1
0046d10c  60 41 9f e5                                      ldr r4, [pc, #0x160]
0046d110  60 11 9f e5                                      ldr r1, [pc, #0x160]
0046d114  60 51 9f e5                                      ldr r5, [pc, #0x160]
0046d118  04 40 8f e0                                      add r4, pc, r4
0046d11c  01 10 8f e0                                      add r1, pc, r1
0046d120  06 20 a0 e1                                      mov r2, r6
0046d124  e9 ff ff eb                                      bl #0x46d0d0
0046d128  05 30 94 e7                                      ldr r3, [r4, r5]
0046d12c  38 a0 93 e5                                      ldr sl, [r3, #0x38]
0046d130  60 70 9a e5                                      ldr r7, [sl, #0x60]
0046d134  60 a0 8a e2                                      add sl, sl, #0x60
0046d138  07 00 5a e1                                      cmp sl, r7
0046d13c  0b 00 00 0a                                      beq #0x46d170
0046d140  08 80 97 e5                                      ldr r8, [r7, #8]
0046d144  00 30 98 e5                                      ldr r3, [r8]
0046d148  08 00 a0 e1                                      mov r0, r8
0046d14c  0f e0 a0 e1                                      mov lr, pc
0046d150  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0046d154  00 00 50 e3                                      cmp r0, #0
0046d158  2a 00 00 0a                                      beq #0x46d208
0046d15c  08 00 a0 e1                                      mov r0, r8
0046d160  5f 19 fd eb                                      bl #0x3b36e4
0046d164  00 70 97 e5                                      ldr r7, [r7]
0046d168  07 00 5a e1                                      cmp sl, r7
0046d16c  f3 ff ff 1a                                      bne #0x46d140
0046d170  05 30 94 e7                                      ldr r3, [r4, r5]
0046d174  00 90 a0 e3                                      mov sb, #0
0046d178  38 a0 93 e5                                      ldr sl, [r3, #0x38]
0046d17c  14 70 9a e5                                      ldr r7, [sl, #0x14]
0046d180  0c a0 8a e2                                      add sl, sl, #0xc
0046d184  07 00 5a e1                                      cmp sl, r7
0046d188  18 00 00 0a                                      beq #0x46d1f0
0046d18c  2c 80 97 e5                                      ldr r8, [r7, #0x2c]
0046d190  00 00 58 e3                                      cmp r8, #0
0046d194  0a 00 00 0a                                      beq #0x46d1c4
0046d198  00 30 98 e5                                      ldr r3, [r8]
0046d19c  08 00 a0 e1                                      mov r0, r8
0046d1a0  0f e0 a0 e1                                      mov lr, pc
0046d1a4  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0046d1a8  00 00 50 e3                                      cmp r0, #0
0046d1ac  04 00 00 0a                                      beq #0x46d1c4
0046d1b0  f4 30 98 e5                                      ldr r3, [r8, #0xf4]
0046d1b4  03 00 53 e3                                      cmp r3, #3
0046d1b8  29 00 00 0a                                      beq #0x46d264
0046d1bc  0e 00 53 e3                                      cmp r3, #0xe
0046d1c0  16 00 00 0a                                      beq #0x46d220
0046d1c4  0c 20 97 e5                                      ldr r2, [r7, #0xc]
0046d1c8  00 00 52 e3                                      cmp r2, #0
0046d1cc  01 00 00 1a                                      bne #0x46d1d8
0046d1d0  16 00 00 ea                                      b #0x46d230
0046d1d4  03 20 a0 e1                                      mov r2, r3
0046d1d8  08 30 92 e5                                      ldr r3, [r2, #8]
0046d1dc  00 00 53 e3                                      cmp r3, #0
0046d1e0  fb ff ff 1a                                      bne #0x46d1d4
0046d1e4  02 70 a0 e1                                      mov r7, r2
0046d1e8  07 00 5a e1                                      cmp sl, r7
0046d1ec  e6 ff ff 1a                                      bne #0x46d18c
0046d1f0  05 30 94 e7                                      ldr r3, [r4, r5]
0046d1f4  06 10 a0 e1                                      mov r1, r6
0046d1f8  01 20 a0 e3                                      mov r2, #1
0046d1fc  34 00 93 e5                                      ldr r0, [r3, #0x34]
0046d200  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0046d204  22 6a 02 ea                                      b #0x507a94
0046d208  08 00 a0 e1                                      mov r0, r8
0046d20c  ac d7 fc eb                                      bl #0x3a30c4
0046d210  00 00 50 e3                                      cmp r0, #0
0046d214  d0 ff ff 1a                                      bne #0x46d15c
0046d218  00 70 97 e5                                      ldr r7, [r7]
0046d21c  d1 ff ff ea                                      b #0x46d168
0046d220  19 98 c8 e5                                      strb sb, [r8, #0x819]
0046d224  0c 20 97 e5                                      ldr r2, [r7, #0xc]
0046d228  00 00 52 e3                                      cmp r2, #0
0046d22c  e9 ff ff 1a                                      bne #0x46d1d8
0046d230  04 30 97 e5                                      ldr r3, [r7, #4]
0046d234  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0046d238  01 00 57 e1                                      cmp r7, r1
0046d23c  05 00 00 1a                                      bne #0x46d258
0046d240  03 70 a0 e1                                      mov r7, r3
0046d244  04 30 93 e5                                      ldr r3, [r3, #4]
0046d248  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0046d24c  07 00 52 e1                                      cmp r2, r7
0046d250  fa ff ff 0a                                      beq #0x46d240
0046d254  0c 20 97 e5                                      ldr r2, [r7, #0xc]
0046d258  03 00 52 e1                                      cmp r2, r3
0046d25c  03 70 a0 11                                      movne r7, r3
0046d260  c7 ff ff ea                                      b #0x46d184
0046d264  08 00 a0 e1                                      mov r0, r8
0046d268  8e fa fd eb                                      bl #0x3ebca8
0046d26c  f4 30 98 e5                                      ldr r3, [r8, #0xf4]
0046d270  d1 ff ff ea                                      b #0x46d1bc
; mapping-symbol data/literal pool
0046d274  78 79 52 00 3c ea 45 00 f4 37 00 00              .byte 0x78, 0x79, 0x52, 0x00, 0x3c, 0xea, 0x45, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0046d280, declared_size=56, range_size=56, mode=arm
; class-group: SavegameManager
; alias: _ZNK15SavegameManager13getOptionTypeEPKc
; demangled: SavegameManager::getOptionType(char const*) const
; decoder-mode: arm
0046d280  10 40 2d e9                                      push {r4, lr}
0046d284  08 d0 4d e2                                      sub sp, sp, #8
0046d288  08 30 8d e2                                      add r3, sp, #8
0046d28c  04 10 23 e5                                      str r1, [r3, #-4]!
0046d290  10 40 80 e2                                      add r4, r0, #0x10
0046d294  03 10 a0 e1                                      mov r1, r3
0046d298  04 00 a0 e1                                      mov r0, r4
0046d29c  f0 fe ff eb                                      bl #0x46ce64
0046d2a0  04 00 50 e1                                      cmp r0, r4
0046d2a4  28 30 90 15                                      ldrne r3, [r0, #0x28]
0046d2a8  00 00 e0 03                                      mvneq r0, #0
0046d2ac  18 00 93 15                                      ldrne r0, [r3, #0x18]
0046d2b0  08 d0 8d e2                                      add sp, sp, #8
0046d2b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046d2b8, declared_size=64, range_size=64, mode=arm
; class-group: SavegameManager
; alias: _ZNK15SavegameManager15getOptionStringEPKc
; demangled: SavegameManager::getOptionString(char const*) const
; decoder-mode: arm
0046d2b8  10 40 2d e9                                      push {r4, lr}
0046d2bc  08 d0 4d e2                                      sub sp, sp, #8
0046d2c0  08 30 8d e2                                      add r3, sp, #8
0046d2c4  04 10 23 e5                                      str r1, [r3, #-4]!
0046d2c8  10 40 80 e2                                      add r4, r0, #0x10
0046d2cc  03 10 a0 e1                                      mov r1, r3
0046d2d0  04 00 a0 e1                                      mov r0, r4
0046d2d4  e2 fe ff eb                                      bl #0x46ce64
0046d2d8  04 00 50 e1                                      cmp r0, r4
0046d2dc  28 30 90 15                                      ldrne r3, [r0, #0x28]
0046d2e0  2c 00 90 15                                      ldrne r0, [r0, #0x2c]
0046d2e4  00 00 e0 03                                      mvneq r0, #0
0046d2e8  1c 30 93 15                                      ldrne r3, [r3, #0x1c]
0046d2ec  03 00 80 10                                      addne r0, r0, r3
0046d2f0  08 d0 8d e2                                      add sp, sp, #8
0046d2f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046d2f8, declared_size=56, range_size=56, mode=arm
; class-group: SavegameManager
; alias: _ZNK15SavegameManager14getOptionLabelEPKc
; demangled: SavegameManager::getOptionLabel(char const*) const
; decoder-mode: arm
0046d2f8  10 40 2d e9                                      push {r4, lr}
0046d2fc  08 d0 4d e2                                      sub sp, sp, #8
0046d300  08 30 8d e2                                      add r3, sp, #8
0046d304  04 10 23 e5                                      str r1, [r3, #-4]!
0046d308  10 40 80 e2                                      add r4, r0, #0x10
0046d30c  03 10 a0 e1                                      mov r1, r3
0046d310  04 00 a0 e1                                      mov r0, r4
0046d314  d2 fe ff eb                                      bl #0x46ce64
0046d318  04 00 50 e1                                      cmp r0, r4
0046d31c  28 30 90 15                                      ldrne r3, [r0, #0x28]
0046d320  00 00 e0 03                                      mvneq r0, #0
0046d324  08 00 93 15                                      ldrne r0, [r3, #8]
0046d328  08 d0 8d e2                                      add sp, sp, #8
0046d32c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046d330, declared_size=72, range_size=72, mode=arm
; class-group: SavegameManager
; alias: _ZNK15SavegameManager12getOptionMaxEPKc
; demangled: SavegameManager::getOptionMax(char const*) const
; decoder-mode: arm
0046d330  10 40 2d e9                                      push {r4, lr}
0046d334  08 d0 4d e2                                      sub sp, sp, #8
0046d338  08 30 8d e2                                      add r3, sp, #8
0046d33c  04 10 23 e5                                      str r1, [r3, #-4]!
0046d340  10 40 80 e2                                      add r4, r0, #0x10
0046d344  03 10 a0 e1                                      mov r1, r3
0046d348  04 00 a0 e1                                      mov r0, r4
0046d34c  c4 fe ff eb                                      bl #0x46ce64
0046d350  04 00 50 e1                                      cmp r0, r4
0046d354  00 00 e0 03                                      mvneq r0, #0
0046d358  04 00 00 0a                                      beq #0x46d370
0046d35c  28 30 90 e5                                      ldr r3, [r0, #0x28]
0046d360  18 20 93 e5                                      ldr r2, [r3, #0x18]
0046d364  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0046d368  02 00 52 e3                                      cmp r2, #2
0046d36c  01 00 40 02                                      subeq r0, r0, #1
0046d370  08 d0 8d e2                                      add sp, sp, #8
0046d374  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046d378, declared_size=64, range_size=64, mode=arm
; class-group: SavegameManager
; alias: _ZNK15SavegameManager13isOptionAtMinEPKc
; demangled: SavegameManager::isOptionAtMin(char const*) const
; decoder-mode: arm
0046d378  10 40 2d e9                                      push {r4, lr}
0046d37c  08 d0 4d e2                                      sub sp, sp, #8
0046d380  08 30 8d e2                                      add r3, sp, #8
0046d384  04 10 23 e5                                      str r1, [r3, #-4]!
0046d388  10 40 80 e2                                      add r4, r0, #0x10
0046d38c  03 10 a0 e1                                      mov r1, r3
0046d390  04 00 a0 e1                                      mov r0, r4
0046d394  b2 fe ff eb                                      bl #0x46ce64
0046d398  04 00 50 e1                                      cmp r0, r4
0046d39c  00 00 a0 03                                      moveq r0, #0
0046d3a0  02 00 00 0a                                      beq #0x46d3b0
0046d3a4  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
0046d3a8  01 00 70 e2                                      rsbs r0, r0, #1
0046d3ac  00 00 a0 33                                      movlo r0, #0
0046d3b0  08 d0 8d e2                                      add sp, sp, #8
0046d3b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046d3b8, declared_size=96, range_size=96, mode=arm
; class-group: SavegameManager
; alias: _ZNK15SavegameManager13isOptionAtMaxEPKc
; demangled: SavegameManager::isOptionAtMax(char const*) const
; decoder-mode: arm
0046d3b8  10 40 2d e9                                      push {r4, lr}
0046d3bc  08 d0 4d e2                                      sub sp, sp, #8
0046d3c0  08 30 8d e2                                      add r3, sp, #8
0046d3c4  04 10 23 e5                                      str r1, [r3, #-4]!
0046d3c8  10 40 80 e2                                      add r4, r0, #0x10
0046d3cc  03 10 a0 e1                                      mov r1, r3
0046d3d0  04 00 a0 e1                                      mov r0, r4
0046d3d4  a2 fe ff eb                                      bl #0x46ce64
0046d3d8  04 00 50 e1                                      cmp r0, r4
0046d3dc  00 00 a0 03                                      moveq r0, #0
0046d3e0  0a 00 00 0a                                      beq #0x46d410
0046d3e4  28 30 90 e5                                      ldr r3, [r0, #0x28]
0046d3e8  18 20 93 e5                                      ldr r2, [r3, #0x18]
0046d3ec  02 00 52 e3                                      cmp r2, #2
0046d3f0  0c 20 93 05                                      ldreq r2, [r3, #0xc]
0046d3f4  2c 00 90 15                                      ldrne r0, [r0, #0x2c]
0046d3f8  2c 30 90 05                                      ldreq r3, [r0, #0x2c]
0046d3fc  0c 30 93 15                                      ldrne r3, [r3, #0xc]
0046d400  01 00 42 02                                      subeq r0, r2, #1
0046d404  03 00 50 e1                                      cmp r0, r3
0046d408  00 00 a0 13                                      movne r0, #0
0046d40c  01 00 a0 03                                      moveq r0, #1
0046d410  08 d0 8d e2                                      add sp, sp, #8
0046d414  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046d418, declared_size=92, range_size=92, mode=arm
; class-group: SavegameManager
; alias: _ZNK15SavegameManager15isOptionToggledEPKc
; demangled: SavegameManager::isOptionToggled(char const*) const
; decoder-mode: arm
0046d418  10 40 2d e9                                      push {r4, lr}
0046d41c  08 d0 4d e2                                      sub sp, sp, #8
0046d420  08 30 8d e2                                      add r3, sp, #8
0046d424  04 10 23 e5                                      str r1, [r3, #-4]!
0046d428  10 40 80 e2                                      add r4, r0, #0x10
0046d42c  03 10 a0 e1                                      mov r1, r3
0046d430  04 00 a0 e1                                      mov r0, r4
0046d434  8a fe ff eb                                      bl #0x46ce64
0046d438  04 00 50 e1                                      cmp r0, r4
0046d43c  0a 00 00 0a                                      beq #0x46d46c
0046d440  28 30 90 e5                                      ldr r3, [r0, #0x28]
0046d444  18 20 93 e5                                      ldr r2, [r3, #0x18]
0046d448  00 00 52 e3                                      cmp r2, #0
0046d44c  06 00 00 1a                                      bne #0x46d46c
0046d450  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
0046d454  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0046d458  03 00 50 e1                                      cmp r0, r3
0046d45c  00 00 a0 13                                      movne r0, #0
0046d460  01 00 a0 03                                      moveq r0, #1
0046d464  08 d0 8d e2                                      add sp, sp, #8
0046d468  10 80 bd e8                                      pop {r4, pc}
0046d46c  00 00 a0 e3                                      mov r0, #0
0046d470  fb ff ff ea                                      b #0x46d464

; FUNCTION 0x0046d474, declared_size=52, range_size=52, mode=arm
; class-group: SavegameManager
; alias: _ZNK15SavegameManager9getOptionEPKc
; demangled: SavegameManager::getOption(char const*) const
; decoder-mode: arm
0046d474  10 40 2d e9                                      push {r4, lr}
0046d478  08 d0 4d e2                                      sub sp, sp, #8
0046d47c  08 30 8d e2                                      add r3, sp, #8
0046d480  04 10 23 e5                                      str r1, [r3, #-4]!
0046d484  10 40 80 e2                                      add r4, r0, #0x10
0046d488  03 10 a0 e1                                      mov r1, r3
0046d48c  04 00 a0 e1                                      mov r0, r4
0046d490  73 fe ff eb                                      bl #0x46ce64
0046d494  04 00 50 e1                                      cmp r0, r4
0046d498  00 00 e0 03                                      mvneq r0, #0
0046d49c  2c 00 90 15                                      ldrne r0, [r0, #0x2c]
0046d4a0  08 d0 8d e2                                      add sp, sp, #8
0046d4a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046d4a8, declared_size=48, range_size=48, mode=arm
; class-group: SavegameManager
; alias: _ZNK15SavegameManager9hasOptionEPKc
; demangled: SavegameManager::hasOption(char const*) const
; decoder-mode: arm
0046d4a8  10 40 2d e9                                      push {r4, lr}
0046d4ac  08 d0 4d e2                                      sub sp, sp, #8
0046d4b0  08 30 8d e2                                      add r3, sp, #8
0046d4b4  04 10 23 e5                                      str r1, [r3, #-4]!
0046d4b8  10 40 80 e2                                      add r4, r0, #0x10
0046d4bc  03 10 a0 e1                                      mov r1, r3
0046d4c0  04 00 a0 e1                                      mov r0, r4
0046d4c4  66 fe ff eb                                      bl #0x46ce64
0046d4c8  00 00 54 e0                                      subs r0, r4, r0
0046d4cc  01 00 a0 13                                      movne r0, #1
0046d4d0  08 d0 8d e2                                      add sp, sp, #8
0046d4d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046d4d8, declared_size=60, range_size=60, mode=arm
; class-group: SavegameManager
; alias: _ZNK15SavegameManager20getAutoReorientationEv
; demangled: SavegameManager::getAutoReorientation() const
; decoder-mode: arm
0046d4d8  70 40 2d e9                                      push {r4, r5, r6, lr}
0046d4dc  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
0046d4e0  00 50 a0 e1                                      mov r5, r0
0046d4e4  04 40 8f e0                                      add r4, pc, r4
0046d4e8  04 10 a0 e1                                      mov r1, r4
0046d4ec  ed ff ff eb                                      bl #0x46d4a8
0046d4f0  00 00 50 e3                                      cmp r0, #0
0046d4f4  01 00 00 1a                                      bne #0x46d500
0046d4f8  3c 00 d5 e5                                      ldrb r0, [r5, #0x3c]
0046d4fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0046d500  05 00 a0 e1                                      mov r0, r5
0046d504  04 10 a0 e1                                      mov r1, r4
0046d508  70 40 bd e8                                      pop {r4, r5, r6, lr}
0046d50c  d8 ff ff ea                                      b #0x46d474
; mapping-symbol data/literal pool
0046d510  6c 4a 45 00                                      .byte 0x6c, 0x4a, 0x45, 0x00

; FUNCTION 0x0046d514, declared_size=100, range_size=100, mode=arm
; class-group: SavegameManager
; alias: _ZNK15SavegameManager11getLanguageEv
; demangled: SavegameManager::getLanguage() const
; decoder-mode: arm
0046d514  70 40 2d e9                                      push {r4, r5, r6, lr}
0046d518  4c 40 9f e5                                      ldr r4, [pc, #0x4c]
0046d51c  00 60 a0 e1                                      mov r6, r0
0046d520  48 50 9f e5                                      ldr r5, [pc, #0x48]
0046d524  04 40 8f e0                                      add r4, pc, r4
0046d528  04 10 a0 e1                                      mov r1, r4
0046d52c  dd ff ff eb                                      bl #0x46d4a8
0046d530  00 00 50 e3                                      cmp r0, #0
0046d534  05 50 8f e0                                      add r5, pc, r5
0046d538  01 00 00 1a                                      bne #0x46d544
0046d53c  38 00 96 e5                                      ldr r0, [r6, #0x38]
0046d540  70 80 bd e8                                      pop {r4, r5, r6, pc}
0046d544  06 00 a0 e1                                      mov r0, r6
0046d548  04 10 a0 e1                                      mov r1, r4
0046d54c  c8 ff ff eb                                      bl #0x46d474
0046d550  01 00 70 e3                                      cmn r0, #1
0046d554  00 00 00 0a                                      beq #0x46d55c
0046d558  70 80 bd e8                                      pop {r4, r5, r6, pc}
0046d55c  10 30 9f e5                                      ldr r3, [pc, #0x10]
0046d560  03 00 95 e7                                      ldr r0, [r5, r3]
0046d564  70 40 bd e8                                      pop {r4, r5, r6, lr}
0046d568  7b c8 fa ea                                      b #0x31f75c
; mapping-symbol data/literal pool
0046d56c  34 e6 45 00 5c 75 52 00 f4 37 00 00              .byte 0x34, 0xe6, 0x45, 0x00, 0x5c, 0x75, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0046d578, declared_size=284, range_size=284, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManager12toggleOptionEPKc
; demangled: SavegameManager::toggleOption(char const*)
; decoder-mode: arm
0046d578  70 40 2d e9                                      push {r4, r5, r6, lr}
0046d57c  08 d0 4d e2                                      sub sp, sp, #8
0046d580  08 30 8d e2                                      add r3, sp, #8
0046d584  04 10 23 e5                                      str r1, [r3, #-4]!
0046d588  10 50 80 e2                                      add r5, r0, #0x10
0046d58c  03 10 a0 e1                                      mov r1, r3
0046d590  05 00 a0 e1                                      mov r0, r5
0046d594  32 fe ff eb                                      bl #0x46ce64
0046d598  e0 40 9f e5                                      ldr r4, [pc, #0xe0]
0046d59c  05 00 50 e1                                      cmp r0, r5
0046d5a0  04 40 8f e0                                      add r4, pc, r4
0046d5a4  1b 00 00 0a                                      beq #0x46d618
0046d5a8  28 30 90 e5                                      ldr r3, [r0, #0x28]
0046d5ac  18 20 93 e5                                      ldr r2, [r3, #0x18]
0046d5b0  00 00 52 e3                                      cmp r2, #0
0046d5b4  17 00 00 1a                                      bne #0x46d618
0046d5b8  10 20 93 e5                                      ldr r2, [r3, #0x10]
0046d5bc  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
0046d5c0  02 00 51 e1                                      cmp r1, r2
0046d5c4  0c 30 93 05                                      ldreq r3, [r3, #0xc]
0046d5c8  2c 20 80 15                                      strne r2, [r0, #0x2c]
0046d5cc  2c 30 80 05                                      streq r3, [r0, #0x2c]
0046d5d0  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0046d5d4  03 30 94 e7                                      ldr r3, [r4, r3]
0046d5d8  00 30 d3 e5                                      ldrb r3, [r3]
0046d5dc  00 00 53 e3                                      cmp r3, #0
0046d5e0  0c 00 00 0a                                      beq #0x46d618
0046d5e4  04 60 9d e5                                      ldr r6, [sp, #4]
0046d5e8  98 10 9f e5                                      ldr r1, [pc, #0x98]
0046d5ec  06 00 a0 e1                                      mov r0, r6
0046d5f0  01 10 8f e0                                      add r1, pc, r1
0046d5f4  48 83 fa eb                                      bl #0x30e31c
0046d5f8  00 50 50 e2                                      subs r5, r0, #0
0046d5fc  13 00 00 0a                                      beq #0x46d650
0046d600  84 10 9f e5                                      ldr r1, [pc, #0x84]
0046d604  06 00 a0 e1                                      mov r0, r6
0046d608  01 10 8f e0                                      add r1, pc, r1
0046d60c  42 83 fa eb                                      bl #0x30e31c
0046d610  00 10 50 e2                                      subs r1, r0, #0
0046d614  01 00 00 0a                                      beq #0x46d620
0046d618  08 d0 8d e2                                      add sp, sp, #8
0046d61c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0046d620  68 30 9f e5                                      ldr r3, [pc, #0x68]
0046d624  01 20 a0 e3                                      mov r2, #1
0046d628  03 30 94 e7                                      ldr r3, [r4, r3]
0046d62c  40 00 93 e5                                      ldr r0, [r3, #0x40]
0046d630  90 03 fc eb                                      bl #0x36e478
0046d634  60 06 90 e5                                      ldr r0, [r0, #0x660]
0046d638  00 00 50 e3                                      cmp r0, #0
0046d63c  f5 ff ff 0a                                      beq #0x46d618
0046d640  df 0f 80 e2                                      add r0, r0, #0x37c
0046d644  02 16 a0 e3                                      mov r1, #0x200000
0046d648  c5 42 fe eb                                      bl #0x3fe164
0046d64c  f1 ff ff ea                                      b #0x46d618
0046d650  38 30 9f e5                                      ldr r3, [pc, #0x38]
0046d654  05 10 a0 e1                                      mov r1, r5
0046d658  01 20 a0 e3                                      mov r2, #1
0046d65c  03 30 94 e7                                      ldr r3, [r4, r3]
0046d660  40 00 93 e5                                      ldr r0, [r3, #0x40]
0046d664  83 03 fc eb                                      bl #0x36e478
0046d668  60 06 90 e5                                      ldr r0, [r0, #0x660]
0046d66c  00 00 50 e3                                      cmp r0, #0
0046d670  e8 ff ff 0a                                      beq #0x46d618
0046d674  05 10 a0 e1                                      mov r1, r5
0046d678  42 45 fd eb                                      bl #0x3beb88
0046d67c  e5 ff ff ea                                      b #0x46d618
; mapping-symbol data/literal pool
0046d680  f0 74 52 00 b0 33 00 00 f8 1b 45 00 d0 1b 45 00  .byte 0xf0, 0x74, 0x52, 0x00, 0xb0, 0x33, 0x00, 0x00, 0xf8, 0x1b, 0x45, 0x00, 0xd0, 0x1b, 0x45, 0x00
0046d690  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0046d8f4, declared_size=196, range_size=196, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManager13__loadOptionsEP11IStreamBasePv
; demangled: SavegameManager::__loadOptions(IStreamBase*, void*)
; decoder-mode: arm
0046d8f4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0046d8f8  b0 a0 9f e5                                      ldr sl, [pc, #0xb0]
0046d8fc  b0 90 9f e5                                      ldr sb, [pc, #0xb0]
0046d900  90 d0 4d e2                                      sub sp, sp, #0x90
0046d904  0a a0 8f e0                                      add sl, pc, sl
0046d908  09 30 9a e7                                      ldr r3, [sl, sb]
0046d90c  10 70 81 e2                                      add r7, r1, #0x10
0046d910  08 10 8d e2                                      add r1, sp, #8
0046d914  00 30 93 e5                                      ldr r3, [r3]
0046d918  00 50 a0 e1                                      mov r5, r0
0046d91c  8c 30 8d e5                                      str r3, [sp, #0x8c]
0046d920  1e c6 fd eb                                      bl #0x3df1a0
0046d924  08 30 9d e5                                      ldr r3, [sp, #8]
0046d928  00 00 53 e3                                      cmp r3, #0
0046d92c  17 00 00 0a                                      beq #0x46d990
0046d930  00 40 a0 e3                                      mov r4, #0
0046d934  0c 60 8d e2                                      add r6, sp, #0xc
0046d938  04 80 8d e2                                      add r8, sp, #4
0046d93c  0c 00 00 ea                                      b #0x46d974
0046d940  05 00 a0 e1                                      mov r0, r5
0046d944  08 10 a0 e1                                      mov r1, r8
0046d948  d0 ad ff eb                                      bl #0x459090
0046d94c  07 00 a0 e1                                      mov r0, r7
0046d950  06 10 a0 e1                                      mov r1, r6
0046d954  8a ff ff eb                                      bl #0x46d784
0046d958  00 00 57 e1                                      cmp r7, r0
0046d95c  04 30 9d 15                                      ldrne r3, [sp, #4]
0046d960  01 40 84 e2                                      add r4, r4, #1
0046d964  2c 30 80 15                                      strne r3, [r0, #0x2c]
0046d968  08 30 9d e5                                      ldr r3, [sp, #8]
0046d96c  04 00 53 e1                                      cmp r3, r4
0046d970  06 00 00 9a                                      bls #0x46d990
0046d974  05 00 a0 e1                                      mov r0, r5
0046d978  06 10 a0 e1                                      mov r1, r6
0046d97c  80 20 a0 e3                                      mov r2, #0x80
0046d980  00 30 a0 e3                                      mov r3, #0
0046d984  6a a7 fa eb                                      bl #0x317734
0046d988  00 00 50 e3                                      cmp r0, #0
0046d98c  eb ff ff 1a                                      bne #0x46d940
0046d990  09 30 9a e7                                      ldr r3, [sl, sb]
0046d994  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
0046d998  00 30 93 e5                                      ldr r3, [r3]
0046d99c  03 00 52 e1                                      cmp r2, r3
0046d9a0  01 00 00 1a                                      bne #0x46d9ac
0046d9a4  90 d0 8d e2                                      add sp, sp, #0x90
0046d9a8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0046d9ac  57 82 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046d9b0  8c 71 52 00 ac 40 00 00                          .byte 0x8c, 0x71, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0046e47c, declared_size=264, range_size=264, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManager13_initSettingsEb
; demangled: SavegameManager::_initSettings(bool)
; decoder-mode: arm
0046e47c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046e480  20 30 90 e5                                      ldr r3, [r0, #0x20]
0046e484  e8 80 9f e5                                      ldr r8, [pc, #0xe8]
0046e488  14 d0 4d e2                                      sub sp, sp, #0x14
0046e48c  00 00 53 e3                                      cmp r3, #0
0046e490  00 b0 a0 e1                                      mov fp, r0
0046e494  01 40 a0 e1                                      mov r4, r1
0046e498  08 80 8f e0                                      add r8, pc, r8
0046e49c  2a 00 00 1a                                      bne #0x46e54c
0046e4a0  00 00 54 e3                                      cmp r4, #0
0046e4a4  1f 00 00 1a                                      bne #0x46e528
0046e4a8  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
0046e4ac  01 30 98 e7                                      ldr r3, [r8, r1]
0046e4b0  04 10 8d e5                                      str r1, [sp, #4]
0046e4b4  00 30 93 e5                                      ldr r3, [r3]
0046e4b8  00 00 53 e3                                      cmp r3, #0
0046e4bc  19 00 00 0a                                      beq #0x46e528
0046e4c0  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
0046e4c4  10 70 8b e2                                      add r7, fp, #0x10
0046e4c8  0c 60 8d e2                                      add r6, sp, #0xc
0046e4cc  03 90 98 e7                                      ldr sb, [r8, r3]
0046e4d0  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0046e4d4  03 a0 98 e7                                      ldr sl, [r8, r3]
0046e4d8  00 30 9a e5                                      ldr r3, [sl]
0046e4dc  06 10 a0 e1                                      mov r1, r6
0046e4e0  07 00 a0 e1                                      mov r0, r7
0046e4e4  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0046e4e8  00 50 99 e5                                      ldr r5, [sb]
0046e4ec  0c 30 8d e5                                      str r3, [sp, #0xc]
0046e4f0  90 ff ff eb                                      bl #0x46e338
0046e4f4  84 52 85 e0                                      add r5, r5, r4, lsl #5
0046e4f8  00 50 80 e5                                      str r5, [r0]
0046e4fc  06 10 a0 e1                                      mov r1, r6
0046e500  07 00 a0 e1                                      mov r0, r7
0046e504  8b ff ff eb                                      bl #0x46e338
0046e508  04 10 9d e5                                      ldr r1, [sp, #4]
0046e50c  04 20 95 e5                                      ldr r2, [r5, #4]
0046e510  01 40 84 e2                                      add r4, r4, #1
0046e514  01 30 98 e7                                      ldr r3, [r8, r1]
0046e518  04 20 80 e5                                      str r2, [r0, #4]
0046e51c  00 30 93 e5                                      ldr r3, [r3]
0046e520  04 00 53 e1                                      cmp r3, r4
0046e524  eb ff ff 8a                                      bhi #0x46e4d8
0046e528  00 30 a0 e3                                      mov r3, #0
0046e52c  01 20 a0 e3                                      mov r2, #1
0046e530  01 30 83 e2                                      add r3, r3, #1
0046e534  0e 00 53 e3                                      cmp r3, #0xe
0046e538  29 20 cb e5                                      strb r2, [fp, #0x29]
0046e53c  01 b0 8b e2                                      add fp, fp, #1
0046e540  fa ff ff 1a                                      bne #0x46e530
0046e544  14 d0 8d e2                                      add sp, sp, #0x14
0046e548  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046e54c  10 50 80 e2                                      add r5, r0, #0x10
0046e550  05 00 a0 e1                                      mov r0, r5
0046e554  14 10 9b e5                                      ldr r1, [fp, #0x14]
0046e558  9e f9 ff eb                                      bl #0x46cbd8
0046e55c  00 30 a0 e3                                      mov r3, #0
0046e560  1c 50 8b e5                                      str r5, [fp, #0x1c]
0046e564  20 30 8b e5                                      str r3, [fp, #0x20]
0046e568  18 50 8b e5                                      str r5, [fp, #0x18]
0046e56c  14 30 8b e5                                      str r3, [fp, #0x14]
0046e570  ca ff ff ea                                      b #0x46e4a0
; mapping-symbol data/literal pool
0046e574  f8 65 52 00 60 35 00 00 7c 1a 00 00 3c 1f 00 00  .byte 0xf8, 0x65, 0x52, 0x00, 0x60, 0x35, 0x00, 0x00, 0x7c, 0x1a, 0x00, 0x00, 0x3c, 0x1f, 0x00, 0x00

; FUNCTION 0x0046e584, declared_size=296, range_size=296, mode=arm
; class-group: SavegameManager
; alias: _ZN15SavegameManager12loadSettingsEb
; demangled: SavegameManager::loadSettings(bool)
; decoder-mode: arm
0046e584  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0046e588  04 30 90 e5                                      ldr r3, [r0, #4]
0046e58c  0c 51 9f e5                                      ldr r5, [pc, #0x10c]
0046e590  00 40 a0 e1                                      mov r4, r0
0046e594  00 00 53 e3                                      cmp r3, #0
0046e598  01 60 a0 e1                                      mov r6, r1
0046e59c  05 50 8f e0                                      add r5, pc, r5
0046e5a0  05 00 00 0a                                      beq #0x46e5bc
0046e5a4  03 00 a0 e1                                      mov r0, r3
0046e5a8  00 30 93 e5                                      ldr r3, [r3]
0046e5ac  0f e0 a0 e1                                      mov lr, pc
0046e5b0  04 f0 93 e5                                      ldr pc, [r3, #4]
0046e5b4  00 30 a0 e3                                      mov r3, #0
0046e5b8  04 30 84 e5                                      str r3, [r4, #4]
0046e5bc  04 00 a0 e1                                      mov r0, r4
0046e5c0  06 10 a0 e1                                      mov r1, r6
0046e5c4  ac ff ff eb                                      bl #0x46e47c
0046e5c8  00 10 a0 e3                                      mov r1, #0
0046e5cc  3c 00 a0 e3                                      mov r0, #0x3c
0046e5d0  e6 87 fa eb                                      bl #0x310570
0046e5d4  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
0046e5d8  01 20 a0 e3                                      mov r2, #1
0046e5dc  00 70 a0 e1                                      mov r7, r0
0046e5e0  01 10 8f e0                                      add r1, pc, r1
0046e5e4  3b 9e fa eb                                      bl #0x315ed8
0046e5e8  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0046e5ec  04 70 84 e5                                      str r7, [r4, #4]
0046e5f0  38 10 94 e5                                      ldr r1, [r4, #0x38]
0046e5f4  03 30 95 e7                                      ldr r3, [r5, r3]
0046e5f8  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
0046e5fc  c0 fa ff eb                                      bl #0x46d104
0046e600  00 00 56 e3                                      cmp r6, #0
0046e604  15 00 00 1a                                      bne #0x46e660
0046e608  04 30 94 e5                                      ldr r3, [r4, #4]
0046e60c  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
0046e610  00 00 50 e3                                      cmp r0, #0
0046e614  10 00 00 0a                                      beq #0x46e65c
0046e618  04 10 a0 e1                                      mov r1, r4
0046e61c  b4 fc ff eb                                      bl #0x46d8f4
0046e620  04 30 94 e5                                      ldr r3, [r4, #4]
0046e624  04 10 a0 e1                                      mov r1, r4
0046e628  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
0046e62c  51 f8 ff eb                                      bl #0x46c778
0046e630  04 00 a0 e1                                      mov r0, r4
0046e634  b6 fb ff eb                                      bl #0x46d514
0046e638  01 00 70 e3                                      cmn r0, #1
0046e63c  11 00 00 0a                                      beq #0x46e688
0046e640  04 00 a0 e1                                      mov r0, r4
0046e644  b2 fb ff eb                                      bl #0x46d514
0046e648  00 10 a0 e1                                      mov r1, r0
0046e64c  04 00 a0 e1                                      mov r0, r4
0046e650  ab fa ff eb                                      bl #0x46d104
0046e654  01 30 a0 e3                                      mov r3, #1
0046e658  28 30 c4 e5                                      strb r3, [r4, #0x28]
0046e65c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0046e660  04 30 94 e5                                      ldr r3, [r4, #4]
0046e664  04 10 a0 e1                                      mov r1, r4
0046e668  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
0046e66c  51 f8 ff eb                                      bl #0x46c7b8
0046e670  38 30 94 e5                                      ldr r3, [r4, #0x38]
0046e674  01 00 73 e3                                      cmn r3, #1
0046e678  f7 ff ff 1a                                      bne #0x46e65c
0046e67c  01 30 a0 e3                                      mov r3, #1
0046e680  37 30 c4 e5                                      strb r3, [r4, #0x37]
0046e684  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0046e688  06 10 a0 e1                                      mov r1, r6
0046e68c  04 00 a0 e1                                      mov r0, r4
0046e690  9b fa ff eb                                      bl #0x46d104
0046e694  01 30 a0 e3                                      mov r3, #1
0046e698  37 30 c4 e5                                      strb r3, [r4, #0x37]
0046e69c  ec ff ff ea                                      b #0x46e654
; mapping-symbol data/literal pool
0046e6a0  f4 64 52 00 f0 ef 45 00 f4 37 00 00              .byte 0xf4, 0x64, 0x52, 0x00, 0xf0, 0xef, 0x45, 0x00, 0xf4, 0x37, 0x00, 0x00
