; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031b308, declared_size=144, range_size=144, mode=arm
; class-group: sfc::script::lua::ReturnValues
; alias: _ZN3sfc6script3lua12ReturnValues9_doReturnEP9lua_State
; demangled: sfc::script::lua::ReturnValues::_doReturn(lua_State*)
; decoder-mode: arm
0031b308  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0031b30c  24 30 90 e5                                      ldr r3, [r0, #0x24]
0031b310  01 70 a0 e1                                      mov r7, r1
0031b314  00 60 a0 e1                                      mov r6, r0
0031b318  04 10 93 e5                                      ldr r1, [r3, #4]
0031b31c  00 20 93 e5                                      ldr r2, [r3]
0031b320  01 30 62 e0                                      rsb r3, r2, r1
0031b324  43 32 a0 e1                                      asr r3, r3, #4
0031b328  83 01 83 e0                                      add r0, r3, r3, lsl #3
0031b32c  00 03 80 e0                                      add r0, r0, r0, lsl #6
0031b330  80 01 83 e0                                      add r0, r3, r0, lsl #3
0031b334  80 07 80 e0                                      add r0, r0, r0, lsl #15
0031b338  80 01 83 e0                                      add r0, r3, r0, lsl #3
0031b33c  00 00 60 e2                                      rsb r0, r0, #0
0031b340  00 00 50 e3                                      cmp r0, #0
0031b344  12 00 00 0a                                      beq #0x31b394
0031b348  00 40 a0 e3                                      mov r4, #0
0031b34c  04 50 a0 e1                                      mov r5, r4
0031b350  04 00 82 e0                                      add r0, r2, r4
0031b354  07 10 a0 e1                                      mov r1, r7
0031b358  d9 05 00 eb                                      bl #0x31cac4
0031b35c  24 20 96 e5                                      ldr r2, [r6, #0x24]
0031b360  01 50 85 e2                                      add r5, r5, #1
0031b364  70 40 84 e2                                      add r4, r4, #0x70
0031b368  0c 00 92 e8                                      ldm r2, {r2, r3}
0031b36c  03 30 62 e0                                      rsb r3, r2, r3
0031b370  43 32 a0 e1                                      asr r3, r3, #4
0031b374  83 11 83 e0                                      add r1, r3, r3, lsl #3
0031b378  01 13 81 e0                                      add r1, r1, r1, lsl #6
0031b37c  81 11 83 e0                                      add r1, r3, r1, lsl #3
0031b380  81 17 81 e0                                      add r1, r1, r1, lsl #15
0031b384  81 31 83 e0                                      add r3, r3, r1, lsl #3
0031b388  00 00 63 e2                                      rsb r0, r3, #0
0031b38c  00 00 55 e1                                      cmp r5, r0
0031b390  ee ff ff 3a                                      blo #0x31b350
0031b394  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0031b398, declared_size=64, range_size=64, mode=arm
; class-group: sfc::script::lua::ReturnValues
; alias: _ZN3sfc6script3lua12ReturnValuesD1Ev
; demangled: sfc::script::lua::ReturnValues::~ReturnValues()
; decoder-mode: arm
0031b398  30 30 9f e5                                      ldr r3, [pc, #0x30]
0031b39c  30 20 9f e5                                      ldr r2, [pc, #0x30]
0031b3a0  10 40 2d e9                                      push {r4, lr}
0031b3a4  03 30 8f e0                                      add r3, pc, r3
0031b3a8  02 20 93 e7                                      ldr r2, [r3, r2]
0031b3ac  00 40 a0 e1                                      mov r4, r0
0031b3b0  24 00 90 e5                                      ldr r0, [r0, #0x24]
0031b3b4  08 20 82 e2                                      add r2, r2, #8
0031b3b8  00 20 84 e5                                      str r2, [r4]
0031b3bc  74 07 00 eb                                      bl #0x31d194
0031b3c0  04 00 84 e2                                      add r0, r4, #4
0031b3c4  b0 fc ff eb                                      bl #0x31a68c
0031b3c8  04 00 a0 e1                                      mov r0, r4
0031b3cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031b3d0  ec 96 67 00 a4 10 00 00                          .byte 0xec, 0x96, 0x67, 0x00, 0xa4, 0x10, 0x00, 0x00

; FUNCTION 0x0031b3d8, declared_size=28, range_size=28, mode=arm
; class-group: sfc::script::lua::ReturnValues
; alias: _ZN3sfc6script3lua12ReturnValuesD0Ev
; demangled: sfc::script::lua::ReturnValues::~ReturnValues()
; decoder-mode: arm
0031b3d8  10 40 2d e9                                      push {r4, lr}
0031b3dc  00 40 a0 e1                                      mov r4, r0
0031b3e0  ec ff ff eb                                      bl #0x31b398
0031b3e4  04 00 a0 e1                                      mov r0, r4
0031b3e8  14 d4 ff eb                                      bl #0x310440
0031b3ec  04 00 a0 e1                                      mov r0, r4
0031b3f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031b3f4, declared_size=64, range_size=64, mode=arm
; class-group: sfc::script::lua::ReturnValues
; alias: _ZN3sfc6script3lua12ReturnValuesD2Ev
; demangled: sfc::script::lua::ReturnValues::~ReturnValues()
; decoder-mode: arm
0031b3f4  30 30 9f e5                                      ldr r3, [pc, #0x30]
0031b3f8  30 20 9f e5                                      ldr r2, [pc, #0x30]
0031b3fc  10 40 2d e9                                      push {r4, lr}
0031b400  03 30 8f e0                                      add r3, pc, r3
0031b404  02 20 93 e7                                      ldr r2, [r3, r2]
0031b408  00 40 a0 e1                                      mov r4, r0
0031b40c  24 00 90 e5                                      ldr r0, [r0, #0x24]
0031b410  08 20 82 e2                                      add r2, r2, #8
0031b414  00 20 84 e5                                      str r2, [r4]
0031b418  5d 07 00 eb                                      bl #0x31d194
0031b41c  04 00 84 e2                                      add r0, r4, #4
0031b420  99 fc ff eb                                      bl #0x31a68c
0031b424  04 00 a0 e1                                      mov r0, r4
0031b428  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031b42c  90 96 67 00 a4 10 00 00                          .byte 0x90, 0x96, 0x67, 0x00, 0xa4, 0x10, 0x00, 0x00

; FUNCTION 0x0031b434, declared_size=60, range_size=60, mode=arm
; class-group: sfc::script::lua::ReturnValues
; alias: _ZN3sfc6script3lua12ReturnValuesC1Ev
; demangled: sfc::script::lua::ReturnValues::ReturnValues()
; decoder-mode: arm
0031b434  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0031b438  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0031b43c  10 40 2d e9                                      push {r4, lr}
0031b440  03 30 8f e0                                      add r3, pc, r3
0031b444  02 20 93 e7                                      ldr r2, [r3, r2]
0031b448  00 40 a0 e1                                      mov r4, r0
0031b44c  08 20 82 e2                                      add r2, r2, #8
0031b450  04 20 80 e4                                      str r2, [r0], #4
0031b454  ea fc ff eb                                      bl #0x31a804
0031b458  89 06 00 eb                                      bl #0x31ce84
0031b45c  24 00 84 e5                                      str r0, [r4, #0x24]
0031b460  04 00 a0 e1                                      mov r0, r4
0031b464  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031b468  50 96 67 00 a4 10 00 00                          .byte 0x50, 0x96, 0x67, 0x00, 0xa4, 0x10, 0x00, 0x00

; FUNCTION 0x0031b470, declared_size=60, range_size=60, mode=arm
; class-group: sfc::script::lua::ReturnValues
; alias: _ZN3sfc6script3lua12ReturnValuesC2Ev
; demangled: sfc::script::lua::ReturnValues::ReturnValues()
; decoder-mode: arm
0031b470  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0031b474  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0031b478  10 40 2d e9                                      push {r4, lr}
0031b47c  03 30 8f e0                                      add r3, pc, r3
0031b480  02 20 93 e7                                      ldr r2, [r3, r2]
0031b484  00 40 a0 e1                                      mov r4, r0
0031b488  08 20 82 e2                                      add r2, r2, #8
0031b48c  04 20 80 e4                                      str r2, [r0], #4
0031b490  db fc ff eb                                      bl #0x31a804
0031b494  7a 06 00 eb                                      bl #0x31ce84
0031b498  24 00 84 e5                                      str r0, [r4, #0x24]
0031b49c  04 00 a0 e1                                      mov r0, r4
0031b4a0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031b4a4  14 96 67 00 a4 10 00 00                          .byte 0x14, 0x96, 0x67, 0x00, 0xa4, 0x10, 0x00, 0x00

; FUNCTION 0x0031b4ac, declared_size=208, range_size=208, mode=arm
; class-group: sfc::script::lua::ReturnValues
; alias: _ZN3sfc6script3lua12ReturnValues13_addFromStackEP9lua_Statei
; demangled: sfc::script::lua::ReturnValues::_addFromStack(lua_State*, int)
; decoder-mode: arm
0031b4ac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0031b4b0  b8 40 9f e5                                      ldr r4, [pc, #0xb8]
0031b4b4  b8 60 9f e5                                      ldr r6, [pc, #0xb8]
0031b4b8  78 d0 4d e2                                      sub sp, sp, #0x78
0031b4bc  04 40 8f e0                                      add r4, pc, r4
0031b4c0  06 30 94 e7                                      ldr r3, [r4, r6]
0031b4c4  24 80 90 e5                                      ldr r8, [r0, #0x24]
0031b4c8  04 50 8d e2                                      add r5, sp, #4
0031b4cc  00 30 93 e5                                      ldr r3, [r3]
0031b4d0  00 70 a0 e1                                      mov r7, r0
0031b4d4  05 00 a0 e1                                      mov r0, r5
0031b4d8  02 a0 a0 e1                                      mov sl, r2
0031b4dc  74 30 8d e5                                      str r3, [sp, #0x74]
0031b4e0  01 90 a0 e1                                      mov sb, r1
0031b4e4  fd f7 ff eb                                      bl #0x3194e0
0031b4e8  05 10 a0 e1                                      mov r1, r5
0031b4ec  08 00 a0 e1                                      mov r0, r8
0031b4f0  32 f8 ff eb                                      bl #0x3195c0
0031b4f4  05 00 a0 e1                                      mov r0, r5
0031b4f8  ba f7 ff eb                                      bl #0x3193e8
0031b4fc  24 50 97 e5                                      ldr r5, [r7, #0x24]
0031b500  0c 00 95 e8                                      ldm r5, {r2, r3}
0031b504  03 30 62 e0                                      rsb r3, r2, r3
0031b508  43 32 a0 e1                                      asr r3, r3, #4
0031b50c  83 71 83 e0                                      add r7, r3, r3, lsl #3
0031b510  07 73 87 e0                                      add r7, r7, r7, lsl #6
0031b514  87 71 83 e0                                      add r7, r3, r7, lsl #3
0031b518  87 77 87 e0                                      add r7, r7, r7, lsl #15
0031b51c  87 71 83 e0                                      add r7, r3, r7, lsl #3
0031b520  00 70 67 e2                                      rsb r7, r7, #0
0031b524  01 70 57 e2                                      subs r7, r7, #1
0031b528  03 00 00 2a                                      bhs #0x31b53c
0031b52c  44 00 9f e5                                      ldr r0, [pc, #0x44]
0031b530  00 00 8f e0                                      add r0, pc, r0
0031b534  5d b6 0f eb                                      bl #0x708eb0
0031b538  00 20 95 e5                                      ldr r2, [r5]
0031b53c  70 00 a0 e3                                      mov r0, #0x70
0031b540  90 27 20 e0                                      mla r0, r0, r7, r2
0031b544  09 10 a0 e1                                      mov r1, sb
0031b548  0a 20 a0 e1                                      mov r2, sl
0031b54c  1d 05 00 eb                                      bl #0x31c9c8
0031b550  06 30 94 e7                                      ldr r3, [r4, r6]
0031b554  74 20 9d e5                                      ldr r2, [sp, #0x74]
0031b558  00 30 93 e5                                      ldr r3, [r3]
0031b55c  03 00 52 e1                                      cmp r2, r3
0031b560  01 00 00 1a                                      bne #0x31b56c
0031b564  78 d0 8d e2                                      add sp, sp, #0x78
0031b568  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0031b56c  67 cb ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0031b570  d4 95 67 00 ac 40 00 00 38 2f 5a 00              .byte 0xd4, 0x95, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00, 0x38, 0x2f, 0x5a, 0x00

; FUNCTION 0x0037c7e4, declared_size=104, range_size=104, mode=arm
; class-group: sfc::script::lua::ReturnValues
; alias: _ZN3sfc6script3lua12ReturnValues11pushBooleanEb
; demangled: sfc::script::lua::ReturnValues::pushBoolean(bool)
; decoder-mode: arm
0037c7e4  58 30 9f e5                                      ldr r3, [pc, #0x58]
0037c7e8  58 20 9f e5                                      ldr r2, [pc, #0x58]
0037c7ec  70 40 2d e9                                      push {r4, r5, r6, lr}
0037c7f0  03 30 8f e0                                      add r3, pc, r3
0037c7f4  02 50 93 e7                                      ldr r5, [r3, r2]
0037c7f8  78 d0 4d e2                                      sub sp, sp, #0x78
0037c7fc  04 40 8d e2                                      add r4, sp, #4
0037c800  00 30 95 e5                                      ldr r3, [r5]
0037c804  74 30 8d e5                                      str r3, [sp, #0x74]
0037c808  24 60 90 e5                                      ldr r6, [r0, #0x24]
0037c80c  04 00 a0 e1                                      mov r0, r4
0037c810  d3 ff ff eb                                      bl #0x37c764
0037c814  06 00 a0 e1                                      mov r0, r6
0037c818  04 10 a0 e1                                      mov r1, r4
0037c81c  67 73 fe eb                                      bl #0x3195c0
0037c820  04 00 a0 e1                                      mov r0, r4
0037c824  ef 72 fe eb                                      bl #0x3193e8
0037c828  74 20 9d e5                                      ldr r2, [sp, #0x74]
0037c82c  00 30 95 e5                                      ldr r3, [r5]
0037c830  03 00 52 e1                                      cmp r2, r3
0037c834  01 00 00 1a                                      bne #0x37c840
0037c838  78 d0 8d e2                                      add sp, sp, #0x78
0037c83c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037c840  b2 46 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0037c844  a0 82 61 00 ac 40 00 00                          .byte 0xa0, 0x82, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0037c8cc, declared_size=104, range_size=104, mode=arm
; class-group: sfc::script::lua::ReturnValues
; alias: _ZN3sfc6script3lua12ReturnValues10pushStringEPKc
; demangled: sfc::script::lua::ReturnValues::pushString(char const*)
; decoder-mode: arm
0037c8cc  58 30 9f e5                                      ldr r3, [pc, #0x58]
0037c8d0  58 20 9f e5                                      ldr r2, [pc, #0x58]
0037c8d4  70 40 2d e9                                      push {r4, r5, r6, lr}
0037c8d8  03 30 8f e0                                      add r3, pc, r3
0037c8dc  02 50 93 e7                                      ldr r5, [r3, r2]
0037c8e0  78 d0 4d e2                                      sub sp, sp, #0x78
0037c8e4  04 40 8d e2                                      add r4, sp, #4
0037c8e8  00 30 95 e5                                      ldr r3, [r5]
0037c8ec  74 30 8d e5                                      str r3, [sp, #0x74]
0037c8f0  24 60 90 e5                                      ldr r6, [r0, #0x24]
0037c8f4  04 00 a0 e1                                      mov r0, r4
0037c8f8  d3 ff ff eb                                      bl #0x37c84c
0037c8fc  06 00 a0 e1                                      mov r0, r6
0037c900  04 10 a0 e1                                      mov r1, r4
0037c904  2d 73 fe eb                                      bl #0x3195c0
0037c908  04 00 a0 e1                                      mov r0, r4
0037c90c  b5 72 fe eb                                      bl #0x3193e8
0037c910  74 20 9d e5                                      ldr r2, [sp, #0x74]
0037c914  00 30 95 e5                                      ldr r3, [r5]
0037c918  03 00 52 e1                                      cmp r2, r3
0037c91c  01 00 00 1a                                      bne #0x37c928
0037c920  78 d0 8d e2                                      add sp, sp, #0x78
0037c924  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037c928  78 46 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0037c92c  b8 81 61 00 ac 40 00 00                          .byte 0xb8, 0x81, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0037c9f8, declared_size=104, range_size=104, mode=arm
; class-group: sfc::script::lua::ReturnValues
; alias: _ZN3sfc6script3lua12ReturnValues12pushUserDataEPNS1_8UserDataE
; demangled: sfc::script::lua::ReturnValues::pushUserData(sfc::script::lua::UserData*)
; decoder-mode: arm
0037c9f8  58 30 9f e5                                      ldr r3, [pc, #0x58]
0037c9fc  58 20 9f e5                                      ldr r2, [pc, #0x58]
0037ca00  70 40 2d e9                                      push {r4, r5, r6, lr}
0037ca04  03 30 8f e0                                      add r3, pc, r3
0037ca08  02 50 93 e7                                      ldr r5, [r3, r2]
0037ca0c  78 d0 4d e2                                      sub sp, sp, #0x78
0037ca10  04 40 8d e2                                      add r4, sp, #4
0037ca14  00 30 95 e5                                      ldr r3, [r5]
0037ca18  74 30 8d e5                                      str r3, [sp, #0x74]
0037ca1c  24 60 90 e5                                      ldr r6, [r0, #0x24]
0037ca20  04 00 a0 e1                                      mov r0, r4
0037ca24  d3 ff ff eb                                      bl #0x37c978
0037ca28  06 00 a0 e1                                      mov r0, r6
0037ca2c  04 10 a0 e1                                      mov r1, r4
0037ca30  e2 72 fe eb                                      bl #0x3195c0
0037ca34  04 00 a0 e1                                      mov r0, r4
0037ca38  6a 72 fe eb                                      bl #0x3193e8
0037ca3c  74 20 9d e5                                      ldr r2, [sp, #0x74]
0037ca40  00 30 95 e5                                      ldr r3, [r5]
0037ca44  03 00 52 e1                                      cmp r2, r3
0037ca48  01 00 00 1a                                      bne #0x37ca54
0037ca4c  78 d0 8d e2                                      add sp, sp, #0x78
0037ca50  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037ca54  2d 46 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0037ca58  8c 80 61 00 ac 40 00 00                          .byte 0x8c, 0x80, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0037cb24, declared_size=104, range_size=104, mode=arm
; class-group: sfc::script::lua::ReturnValues
; alias: _ZN3sfc6script3lua12ReturnValues11pushIntegerEi
; demangled: sfc::script::lua::ReturnValues::pushInteger(int)
; decoder-mode: arm
0037cb24  58 30 9f e5                                      ldr r3, [pc, #0x58]
0037cb28  58 20 9f e5                                      ldr r2, [pc, #0x58]
0037cb2c  70 40 2d e9                                      push {r4, r5, r6, lr}
0037cb30  03 30 8f e0                                      add r3, pc, r3
0037cb34  02 50 93 e7                                      ldr r5, [r3, r2]
0037cb38  78 d0 4d e2                                      sub sp, sp, #0x78
0037cb3c  04 40 8d e2                                      add r4, sp, #4
0037cb40  00 30 95 e5                                      ldr r3, [r5]
0037cb44  74 30 8d e5                                      str r3, [sp, #0x74]
0037cb48  24 60 90 e5                                      ldr r6, [r0, #0x24]
0037cb4c  04 00 a0 e1                                      mov r0, r4
0037cb50  d1 ff ff eb                                      bl #0x37ca9c
0037cb54  06 00 a0 e1                                      mov r0, r6
0037cb58  04 10 a0 e1                                      mov r1, r4
0037cb5c  97 72 fe eb                                      bl #0x3195c0
0037cb60  04 00 a0 e1                                      mov r0, r4
0037cb64  1f 72 fe eb                                      bl #0x3193e8
0037cb68  74 20 9d e5                                      ldr r2, [sp, #0x74]
0037cb6c  00 30 95 e5                                      ldr r3, [r5]
0037cb70  03 00 52 e1                                      cmp r2, r3
0037cb74  01 00 00 1a                                      bne #0x37cb80
0037cb78  78 d0 8d e2                                      add sp, sp, #0x78
0037cb7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037cb80  e2 45 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0037cb84  60 7f 61 00 ac 40 00 00                          .byte 0x60, 0x7f, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0037ccbc, declared_size=104, range_size=104, mode=arm
; class-group: sfc::script::lua::ReturnValues
; alias: _ZN3sfc6script3lua12ReturnValues10pushNumberEf
; demangled: sfc::script::lua::ReturnValues::pushNumber(float)
; decoder-mode: arm
0037ccbc  58 30 9f e5                                      ldr r3, [pc, #0x58]
0037ccc0  58 20 9f e5                                      ldr r2, [pc, #0x58]
0037ccc4  70 40 2d e9                                      push {r4, r5, r6, lr}
0037ccc8  03 30 8f e0                                      add r3, pc, r3
0037cccc  02 50 93 e7                                      ldr r5, [r3, r2]
0037ccd0  78 d0 4d e2                                      sub sp, sp, #0x78
0037ccd4  04 40 8d e2                                      add r4, sp, #4
0037ccd8  00 30 95 e5                                      ldr r3, [r5]
0037ccdc  74 30 8d e5                                      str r3, [sp, #0x74]
0037cce0  24 60 90 e5                                      ldr r6, [r0, #0x24]
0037cce4  04 00 a0 e1                                      mov r0, r4
0037cce8  d3 ff ff eb                                      bl #0x37cc3c
0037ccec  06 00 a0 e1                                      mov r0, r6
0037ccf0  04 10 a0 e1                                      mov r1, r4
0037ccf4  31 72 fe eb                                      bl #0x3195c0
0037ccf8  04 00 a0 e1                                      mov r0, r4
0037ccfc  b9 71 fe eb                                      bl #0x3193e8
0037cd00  74 20 9d e5                                      ldr r2, [sp, #0x74]
0037cd04  00 30 95 e5                                      ldr r3, [r5]
0037cd08  03 00 52 e1                                      cmp r2, r3
0037cd0c  01 00 00 1a                                      bne #0x37cd18
0037cd10  78 d0 8d e2                                      add sp, sp, #0x78
0037cd14  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037cd18  7c 45 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0037cd1c  c8 7d 61 00 ac 40 00 00                          .byte 0xc8, 0x7d, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0038eb00, declared_size=104, range_size=104, mode=arm
; class-group: sfc::script::lua::ReturnValues
; alias: _ZN3sfc6script3lua12ReturnValues11pushPointerEPv
; demangled: sfc::script::lua::ReturnValues::pushPointer(void*)
; decoder-mode: arm
0038eb00  58 30 9f e5                                      ldr r3, [pc, #0x58]
0038eb04  58 20 9f e5                                      ldr r2, [pc, #0x58]
0038eb08  70 40 2d e9                                      push {r4, r5, r6, lr}
0038eb0c  03 30 8f e0                                      add r3, pc, r3
0038eb10  02 50 93 e7                                      ldr r5, [r3, r2]
0038eb14  78 d0 4d e2                                      sub sp, sp, #0x78
0038eb18  04 40 8d e2                                      add r4, sp, #4
0038eb1c  00 30 95 e5                                      ldr r3, [r5]
0038eb20  74 30 8d e5                                      str r3, [sp, #0x74]
0038eb24  24 60 90 e5                                      ldr r6, [r0, #0x24]
0038eb28  04 00 a0 e1                                      mov r0, r4
0038eb2c  38 2e fe eb                                      bl #0x31a414
0038eb30  06 00 a0 e1                                      mov r0, r6
0038eb34  04 10 a0 e1                                      mov r1, r4
0038eb38  a0 2a fe eb                                      bl #0x3195c0
0038eb3c  04 00 a0 e1                                      mov r0, r4
0038eb40  28 2a fe eb                                      bl #0x3193e8
0038eb44  74 20 9d e5                                      ldr r2, [sp, #0x74]
0038eb48  00 30 95 e5                                      ldr r3, [r5]
0038eb4c  03 00 52 e1                                      cmp r2, r3
0038eb50  01 00 00 1a                                      bne #0x38eb5c
0038eb54  78 d0 8d e2                                      add sp, sp, #0x78
0038eb58  70 80 bd e8                                      pop {r4, r5, r6, pc}
0038eb5c  eb fd fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0038eb60  84 5f 60 00 ac 40 00 00                          .byte 0x84, 0x5f, 0x60, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x003da43c, declared_size=88, range_size=88, mode=arm
; class-group: sfc::script::lua::ReturnValues
; alias: _ZNK3sfc6script3lua12ReturnValuesixEj
; demangled: sfc::script::lua::ReturnValues::operator[](unsigned int) const
; decoder-mode: arm
003da43c  70 40 2d e9                                      push {r4, r5, r6, lr}
003da440  24 40 90 e5                                      ldr r4, [r0, #0x24]
003da444  01 50 a0 e1                                      mov r5, r1
003da448  0c 00 94 e8                                      ldm r4, {r2, r3}
003da44c  03 30 62 e0                                      rsb r3, r2, r3
003da450  43 32 a0 e1                                      asr r3, r3, #4
003da454  83 11 83 e0                                      add r1, r3, r3, lsl #3
003da458  01 13 81 e0                                      add r1, r1, r1, lsl #6
003da45c  81 11 83 e0                                      add r1, r3, r1, lsl #3
003da460  81 17 81 e0                                      add r1, r1, r1, lsl #15
003da464  81 31 83 e0                                      add r3, r3, r1, lsl #3
003da468  00 30 63 e2                                      rsb r3, r3, #0
003da46c  03 00 55 e1                                      cmp r5, r3
003da470  03 00 00 3a                                      blo #0x3da484
003da474  14 00 9f e5                                      ldr r0, [pc, #0x14]
003da478  00 00 8f e0                                      add r0, pc, r0
003da47c  8b ba 0c eb                                      bl #0x708eb0
003da480  00 20 94 e5                                      ldr r2, [r4]
003da484  70 00 a0 e3                                      mov r0, #0x70
003da488  90 25 20 e0                                      mla r0, r0, r5, r2
003da48c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003da490  f0 3f 4e 00                                      .byte 0xf0, 0x3f, 0x4e, 0x00
