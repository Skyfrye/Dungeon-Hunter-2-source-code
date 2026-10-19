; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0037b568, declared_size=4, range_size=4, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript13_IncludePyCstERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_IncludePyCst(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037b568  1e ff 2f e1                                      bx lr

; FUNCTION 0x0037b56c, declared_size=4, range_size=4, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript16_IncludePyStructERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_IncludePyStruct(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037b56c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0037b570, declared_size=4, range_size=4, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript15_IncludePyArrayERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_IncludePyArray(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037b570  1e ff 2f e1                                      bx lr

; FUNCTION 0x0037b574, declared_size=44, range_size=44, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript4LoadEPKc
; demangled: LuaScript::Load(char const*)
; decoder-mode: arm
0037b574  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0037b578  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
0037b57c  00 c0 a0 e1                                      mov ip, r0
0037b580  03 30 8f e0                                      add r3, pc, r3
0037b584  02 00 93 e7                                      ldr r0, [r3, r2]
0037b588  01 20 a0 e1                                      mov r2, r1
0037b58c  0c 10 a0 e1                                      mov r1, ip
0037b590  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
0037b594  28 ff ff ea                                      b #0x37b23c
; mapping-symbol data/literal pool
0037b598  10 95 61 00 f4 37 00 00                          .byte 0x10, 0x95, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0037b5a0, declared_size=1252, range_size=1252, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript12BindFunctionEv
; demangled: LuaScript::BindFunction()
; decoder-mode: arm
0037b5a0  70 40 2d e9                                      push {r4, r5, r6, lr}
0037b5a4  04 40 80 e2                                      add r4, r0, #4
0037b5a8  00 50 a0 e1                                      mov r5, r0
0037b5ac  04 00 a0 e1                                      mov r0, r4
0037b5b0  96 7e fe eb                                      bl #0x31b010
0037b5b4  04 00 a0 e1                                      mov r0, r4
0037b5b8  90 7e fe eb                                      bl #0x31b000
0037b5bc  04 00 a0 e1                                      mov r0, r4
0037b5c0  8c 7e fe eb                                      bl #0x31aff8
0037b5c4  04 00 a0 e1                                      mov r0, r4
0037b5c8  a8 43 9f e5                                      ldr r4, [pc, #0x3a8]
0037b5cc  8d 7e fe eb                                      bl #0x31b008
0037b5d0  a4 33 9f e5                                      ldr r3, [pc, #0x3a4]
0037b5d4  a4 13 9f e5                                      ldr r1, [pc, #0x3a4]
0037b5d8  04 40 8f e0                                      add r4, pc, r4
0037b5dc  10 60 85 e2                                      add r6, r5, #0x10
0037b5e0  03 20 94 e7                                      ldr r2, [r4, r3]
0037b5e4  06 00 a0 e1                                      mov r0, r6
0037b5e8  05 30 a0 e1                                      mov r3, r5
0037b5ec  01 10 8f e0                                      add r1, pc, r1
0037b5f0  b7 7b fe eb                                      bl #0x31a4d4
0037b5f4  88 33 9f e5                                      ldr r3, [pc, #0x388]
0037b5f8  88 13 9f e5                                      ldr r1, [pc, #0x388]
0037b5fc  06 00 a0 e1                                      mov r0, r6
0037b600  03 20 94 e7                                      ldr r2, [r4, r3]
0037b604  01 10 8f e0                                      add r1, pc, r1
0037b608  05 30 a0 e1                                      mov r3, r5
0037b60c  b0 7b fe eb                                      bl #0x31a4d4
0037b610  74 33 9f e5                                      ldr r3, [pc, #0x374]
0037b614  74 13 9f e5                                      ldr r1, [pc, #0x374]
0037b618  06 00 a0 e1                                      mov r0, r6
0037b61c  03 20 94 e7                                      ldr r2, [r4, r3]
0037b620  01 10 8f e0                                      add r1, pc, r1
0037b624  05 30 a0 e1                                      mov r3, r5
0037b628  a9 7b fe eb                                      bl #0x31a4d4
0037b62c  60 33 9f e5                                      ldr r3, [pc, #0x360]
0037b630  60 13 9f e5                                      ldr r1, [pc, #0x360]
0037b634  06 00 a0 e1                                      mov r0, r6
0037b638  03 20 94 e7                                      ldr r2, [r4, r3]
0037b63c  01 10 8f e0                                      add r1, pc, r1
0037b640  05 30 a0 e1                                      mov r3, r5
0037b644  a2 7b fe eb                                      bl #0x31a4d4
0037b648  4c 33 9f e5                                      ldr r3, [pc, #0x34c]
0037b64c  4c 13 9f e5                                      ldr r1, [pc, #0x34c]
0037b650  06 00 a0 e1                                      mov r0, r6
0037b654  03 20 94 e7                                      ldr r2, [r4, r3]
0037b658  01 10 8f e0                                      add r1, pc, r1
0037b65c  05 30 a0 e1                                      mov r3, r5
0037b660  9b 7b fe eb                                      bl #0x31a4d4
0037b664  38 33 9f e5                                      ldr r3, [pc, #0x338]
0037b668  38 13 9f e5                                      ldr r1, [pc, #0x338]
0037b66c  06 00 a0 e1                                      mov r0, r6
0037b670  03 20 94 e7                                      ldr r2, [r4, r3]
0037b674  01 10 8f e0                                      add r1, pc, r1
0037b678  05 30 a0 e1                                      mov r3, r5
0037b67c  94 7b fe eb                                      bl #0x31a4d4
0037b680  24 33 9f e5                                      ldr r3, [pc, #0x324]
0037b684  24 13 9f e5                                      ldr r1, [pc, #0x324]
0037b688  06 00 a0 e1                                      mov r0, r6
0037b68c  03 20 94 e7                                      ldr r2, [r4, r3]
0037b690  01 10 8f e0                                      add r1, pc, r1
0037b694  05 30 a0 e1                                      mov r3, r5
0037b698  8d 7b fe eb                                      bl #0x31a4d4
0037b69c  10 33 9f e5                                      ldr r3, [pc, #0x310]
0037b6a0  10 13 9f e5                                      ldr r1, [pc, #0x310]
0037b6a4  06 00 a0 e1                                      mov r0, r6
0037b6a8  03 20 94 e7                                      ldr r2, [r4, r3]
0037b6ac  01 10 8f e0                                      add r1, pc, r1
0037b6b0  05 30 a0 e1                                      mov r3, r5
0037b6b4  86 7b fe eb                                      bl #0x31a4d4
0037b6b8  fc 32 9f e5                                      ldr r3, [pc, #0x2fc]
0037b6bc  fc 12 9f e5                                      ldr r1, [pc, #0x2fc]
0037b6c0  06 00 a0 e1                                      mov r0, r6
0037b6c4  03 20 94 e7                                      ldr r2, [r4, r3]
0037b6c8  01 10 8f e0                                      add r1, pc, r1
0037b6cc  05 30 a0 e1                                      mov r3, r5
0037b6d0  7f 7b fe eb                                      bl #0x31a4d4
0037b6d4  e8 32 9f e5                                      ldr r3, [pc, #0x2e8]
0037b6d8  e8 12 9f e5                                      ldr r1, [pc, #0x2e8]
0037b6dc  06 00 a0 e1                                      mov r0, r6
0037b6e0  03 20 94 e7                                      ldr r2, [r4, r3]
0037b6e4  01 10 8f e0                                      add r1, pc, r1
0037b6e8  05 30 a0 e1                                      mov r3, r5
0037b6ec  78 7b fe eb                                      bl #0x31a4d4
0037b6f0  d4 32 9f e5                                      ldr r3, [pc, #0x2d4]
0037b6f4  d4 12 9f e5                                      ldr r1, [pc, #0x2d4]
0037b6f8  06 00 a0 e1                                      mov r0, r6
0037b6fc  03 20 94 e7                                      ldr r2, [r4, r3]
0037b700  01 10 8f e0                                      add r1, pc, r1
0037b704  05 30 a0 e1                                      mov r3, r5
0037b708  71 7b fe eb                                      bl #0x31a4d4
0037b70c  c0 32 9f e5                                      ldr r3, [pc, #0x2c0]
0037b710  c0 12 9f e5                                      ldr r1, [pc, #0x2c0]
0037b714  06 00 a0 e1                                      mov r0, r6
0037b718  03 20 94 e7                                      ldr r2, [r4, r3]
0037b71c  01 10 8f e0                                      add r1, pc, r1
0037b720  05 30 a0 e1                                      mov r3, r5
0037b724  6a 7b fe eb                                      bl #0x31a4d4
0037b728  ac 32 9f e5                                      ldr r3, [pc, #0x2ac]
0037b72c  ac 12 9f e5                                      ldr r1, [pc, #0x2ac]
0037b730  06 00 a0 e1                                      mov r0, r6
0037b734  03 20 94 e7                                      ldr r2, [r4, r3]
0037b738  01 10 8f e0                                      add r1, pc, r1
0037b73c  05 30 a0 e1                                      mov r3, r5
0037b740  63 7b fe eb                                      bl #0x31a4d4
0037b744  98 32 9f e5                                      ldr r3, [pc, #0x298]
0037b748  98 12 9f e5                                      ldr r1, [pc, #0x298]
0037b74c  06 00 a0 e1                                      mov r0, r6
0037b750  03 20 94 e7                                      ldr r2, [r4, r3]
0037b754  01 10 8f e0                                      add r1, pc, r1
0037b758  05 30 a0 e1                                      mov r3, r5
0037b75c  5c 7b fe eb                                      bl #0x31a4d4
0037b760  84 32 9f e5                                      ldr r3, [pc, #0x284]
0037b764  84 12 9f e5                                      ldr r1, [pc, #0x284]
0037b768  06 00 a0 e1                                      mov r0, r6
0037b76c  03 20 94 e7                                      ldr r2, [r4, r3]
0037b770  01 10 8f e0                                      add r1, pc, r1
0037b774  05 30 a0 e1                                      mov r3, r5
0037b778  55 7b fe eb                                      bl #0x31a4d4
0037b77c  70 32 9f e5                                      ldr r3, [pc, #0x270]
0037b780  70 12 9f e5                                      ldr r1, [pc, #0x270]
0037b784  06 00 a0 e1                                      mov r0, r6
0037b788  03 20 94 e7                                      ldr r2, [r4, r3]
0037b78c  01 10 8f e0                                      add r1, pc, r1
0037b790  05 30 a0 e1                                      mov r3, r5
0037b794  4e 7b fe eb                                      bl #0x31a4d4
0037b798  5c 32 9f e5                                      ldr r3, [pc, #0x25c]
0037b79c  5c 12 9f e5                                      ldr r1, [pc, #0x25c]
0037b7a0  06 00 a0 e1                                      mov r0, r6
0037b7a4  03 20 94 e7                                      ldr r2, [r4, r3]
0037b7a8  01 10 8f e0                                      add r1, pc, r1
0037b7ac  05 30 a0 e1                                      mov r3, r5
0037b7b0  47 7b fe eb                                      bl #0x31a4d4
0037b7b4  48 32 9f e5                                      ldr r3, [pc, #0x248]
0037b7b8  48 12 9f e5                                      ldr r1, [pc, #0x248]
0037b7bc  06 00 a0 e1                                      mov r0, r6
0037b7c0  03 20 94 e7                                      ldr r2, [r4, r3]
0037b7c4  01 10 8f e0                                      add r1, pc, r1
0037b7c8  05 30 a0 e1                                      mov r3, r5
0037b7cc  40 7b fe eb                                      bl #0x31a4d4
0037b7d0  34 32 9f e5                                      ldr r3, [pc, #0x234]
0037b7d4  34 12 9f e5                                      ldr r1, [pc, #0x234]
0037b7d8  06 00 a0 e1                                      mov r0, r6
0037b7dc  03 20 94 e7                                      ldr r2, [r4, r3]
0037b7e0  01 10 8f e0                                      add r1, pc, r1
0037b7e4  05 30 a0 e1                                      mov r3, r5
0037b7e8  39 7b fe eb                                      bl #0x31a4d4
0037b7ec  20 32 9f e5                                      ldr r3, [pc, #0x220]
0037b7f0  20 12 9f e5                                      ldr r1, [pc, #0x220]
0037b7f4  06 00 a0 e1                                      mov r0, r6
0037b7f8  03 20 94 e7                                      ldr r2, [r4, r3]
0037b7fc  01 10 8f e0                                      add r1, pc, r1
0037b800  05 30 a0 e1                                      mov r3, r5
0037b804  32 7b fe eb                                      bl #0x31a4d4
0037b808  0c 32 9f e5                                      ldr r3, [pc, #0x20c]
0037b80c  0c 12 9f e5                                      ldr r1, [pc, #0x20c]
0037b810  06 00 a0 e1                                      mov r0, r6
0037b814  03 20 94 e7                                      ldr r2, [r4, r3]
0037b818  01 10 8f e0                                      add r1, pc, r1
0037b81c  05 30 a0 e1                                      mov r3, r5
0037b820  2b 7b fe eb                                      bl #0x31a4d4
0037b824  f8 31 9f e5                                      ldr r3, [pc, #0x1f8]
0037b828  f8 11 9f e5                                      ldr r1, [pc, #0x1f8]
0037b82c  06 00 a0 e1                                      mov r0, r6
0037b830  03 20 94 e7                                      ldr r2, [r4, r3]
0037b834  01 10 8f e0                                      add r1, pc, r1
0037b838  05 30 a0 e1                                      mov r3, r5
0037b83c  24 7b fe eb                                      bl #0x31a4d4
0037b840  e4 31 9f e5                                      ldr r3, [pc, #0x1e4]
0037b844  e4 11 9f e5                                      ldr r1, [pc, #0x1e4]
0037b848  06 00 a0 e1                                      mov r0, r6
0037b84c  03 20 94 e7                                      ldr r2, [r4, r3]
0037b850  01 10 8f e0                                      add r1, pc, r1
0037b854  05 30 a0 e1                                      mov r3, r5
0037b858  1d 7b fe eb                                      bl #0x31a4d4
0037b85c  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
0037b860  d0 11 9f e5                                      ldr r1, [pc, #0x1d0]
0037b864  06 00 a0 e1                                      mov r0, r6
0037b868  03 20 94 e7                                      ldr r2, [r4, r3]
0037b86c  01 10 8f e0                                      add r1, pc, r1
0037b870  05 30 a0 e1                                      mov r3, r5
0037b874  16 7b fe eb                                      bl #0x31a4d4
0037b878  bc 31 9f e5                                      ldr r3, [pc, #0x1bc]
0037b87c  bc 11 9f e5                                      ldr r1, [pc, #0x1bc]
0037b880  06 00 a0 e1                                      mov r0, r6
0037b884  03 20 94 e7                                      ldr r2, [r4, r3]
0037b888  01 10 8f e0                                      add r1, pc, r1
0037b88c  05 30 a0 e1                                      mov r3, r5
0037b890  0f 7b fe eb                                      bl #0x31a4d4
0037b894  a8 31 9f e5                                      ldr r3, [pc, #0x1a8]
0037b898  a8 11 9f e5                                      ldr r1, [pc, #0x1a8]
0037b89c  06 00 a0 e1                                      mov r0, r6
0037b8a0  03 20 94 e7                                      ldr r2, [r4, r3]
0037b8a4  01 10 8f e0                                      add r1, pc, r1
0037b8a8  05 30 a0 e1                                      mov r3, r5
0037b8ac  08 7b fe eb                                      bl #0x31a4d4
0037b8b0  94 31 9f e5                                      ldr r3, [pc, #0x194]
0037b8b4  94 11 9f e5                                      ldr r1, [pc, #0x194]
0037b8b8  06 00 a0 e1                                      mov r0, r6
0037b8bc  03 20 94 e7                                      ldr r2, [r4, r3]
0037b8c0  01 10 8f e0                                      add r1, pc, r1
0037b8c4  05 30 a0 e1                                      mov r3, r5
0037b8c8  01 7b fe eb                                      bl #0x31a4d4
0037b8cc  80 31 9f e5                                      ldr r3, [pc, #0x180]
0037b8d0  80 11 9f e5                                      ldr r1, [pc, #0x180]
0037b8d4  06 00 a0 e1                                      mov r0, r6
0037b8d8  03 20 94 e7                                      ldr r2, [r4, r3]
0037b8dc  01 10 8f e0                                      add r1, pc, r1
0037b8e0  05 30 a0 e1                                      mov r3, r5
0037b8e4  fa 7a fe eb                                      bl #0x31a4d4
0037b8e8  6c 31 9f e5                                      ldr r3, [pc, #0x16c]
0037b8ec  6c 11 9f e5                                      ldr r1, [pc, #0x16c]
0037b8f0  06 00 a0 e1                                      mov r0, r6
0037b8f4  03 20 94 e7                                      ldr r2, [r4, r3]
0037b8f8  01 10 8f e0                                      add r1, pc, r1
0037b8fc  05 30 a0 e1                                      mov r3, r5
0037b900  f3 7a fe eb                                      bl #0x31a4d4
0037b904  58 31 9f e5                                      ldr r3, [pc, #0x158]
0037b908  58 11 9f e5                                      ldr r1, [pc, #0x158]
0037b90c  06 00 a0 e1                                      mov r0, r6
0037b910  03 20 94 e7                                      ldr r2, [r4, r3]
0037b914  01 10 8f e0                                      add r1, pc, r1
0037b918  05 30 a0 e1                                      mov r3, r5
0037b91c  ec 7a fe eb                                      bl #0x31a4d4
0037b920  44 31 9f e5                                      ldr r3, [pc, #0x144]
0037b924  44 11 9f e5                                      ldr r1, [pc, #0x144]
0037b928  06 00 a0 e1                                      mov r0, r6
0037b92c  03 20 94 e7                                      ldr r2, [r4, r3]
0037b930  01 10 8f e0                                      add r1, pc, r1
0037b934  05 30 a0 e1                                      mov r3, r5
0037b938  e5 7a fe eb                                      bl #0x31a4d4
0037b93c  30 31 9f e5                                      ldr r3, [pc, #0x130]
0037b940  30 11 9f e5                                      ldr r1, [pc, #0x130]
0037b944  06 00 a0 e1                                      mov r0, r6
0037b948  03 20 94 e7                                      ldr r2, [r4, r3]
0037b94c  01 10 8f e0                                      add r1, pc, r1
0037b950  05 30 a0 e1                                      mov r3, r5
0037b954  de 7a fe eb                                      bl #0x31a4d4
0037b958  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
0037b95c  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
0037b960  06 00 a0 e1                                      mov r0, r6
0037b964  03 20 94 e7                                      ldr r2, [r4, r3]
0037b968  01 10 8f e0                                      add r1, pc, r1
0037b96c  05 30 a0 e1                                      mov r3, r5
0037b970  70 40 bd e8                                      pop {r4, r5, r6, lr}
0037b974  d6 7a fe ea                                      b #0x31a4d4
; mapping-symbol data/literal pool
0037b978  b8 94 61 00 50 3c 00 00 5c 64 54 00 40 3a 00 00  .byte 0xb8, 0x94, 0x61, 0x00, 0x50, 0x3c, 0x00, 0x00, 0x5c, 0x64, 0x54, 0x00, 0x40, 0x3a, 0x00, 0x00
0037b988  4c 64 54 00 34 17 00 00 38 64 54 00 e0 0e 00 00  .byte 0x4c, 0x64, 0x54, 0x00, 0x34, 0x17, 0x00, 0x00, 0x38, 0x64, 0x54, 0x00, 0xe0, 0x0e, 0x00, 0x00
0037b998  24 64 54 00 9c 2b 00 00 10 64 54 00 98 0c 00 00  .byte 0x24, 0x64, 0x54, 0x00, 0x9c, 0x2b, 0x00, 0x00, 0x10, 0x64, 0x54, 0x00, 0x98, 0x0c, 0x00, 0x00
0037b9a8  04 64 54 00 9c 15 00 00 f8 63 54 00 e8 37 00 00  .byte 0x04, 0x64, 0x54, 0x00, 0x9c, 0x15, 0x00, 0x00, 0xf8, 0x63, 0x54, 0x00, 0xe8, 0x37, 0x00, 0x00
0037b9b8  ec 63 54 00 c4 4b 00 00 d8 63 54 00 90 08 00 00  .byte 0xec, 0x63, 0x54, 0x00, 0xc4, 0x4b, 0x00, 0x00, 0xd8, 0x63, 0x54, 0x00, 0x90, 0x08, 0x00, 0x00
0037b9c8  cc 63 54 00 e4 13 00 00 c0 63 54 00 f4 41 00 00  .byte 0xcc, 0x63, 0x54, 0x00, 0xe4, 0x13, 0x00, 0x00, 0xc0, 0x63, 0x54, 0x00, 0xf4, 0x41, 0x00, 0x00
0037b9d8  b4 63 54 00 00 43 00 00 a0 63 54 00 4c 35 00 00  .byte 0xb4, 0x63, 0x54, 0x00, 0x00, 0x43, 0x00, 0x00, 0xa0, 0x63, 0x54, 0x00, 0x4c, 0x35, 0x00, 0x00
0037b9e8  8c 63 54 00 38 07 00 00 78 63 54 00 34 46 00 00  .byte 0x8c, 0x63, 0x54, 0x00, 0x38, 0x07, 0x00, 0x00, 0x78, 0x63, 0x54, 0x00, 0x34, 0x46, 0x00, 0x00
0037b9f8  64 63 54 00 90 30 00 00 50 63 54 00 8c 16 00 00  .byte 0x64, 0x63, 0x54, 0x00, 0x90, 0x30, 0x00, 0x00, 0x50, 0x63, 0x54, 0x00, 0x8c, 0x16, 0x00, 0x00
0037ba08  3c 63 54 00 8c 14 00 00 30 63 54 00 ac 2e 00 00  .byte 0x3c, 0x63, 0x54, 0x00, 0x8c, 0x14, 0x00, 0x00, 0x30, 0x63, 0x54, 0x00, 0xac, 0x2e, 0x00, 0x00
0037ba18  24 63 54 00 8c 22 00 00 18 63 54 00 dc 46 00 00  .byte 0x24, 0x63, 0x54, 0x00, 0x8c, 0x22, 0x00, 0x00, 0x18, 0x63, 0x54, 0x00, 0xdc, 0x46, 0x00, 0x00
0037ba28  0c 63 54 00 98 1f 00 00 00 63 54 00 c0 1a 00 00  .byte 0x0c, 0x63, 0x54, 0x00, 0x98, 0x1f, 0x00, 0x00, 0x00, 0x63, 0x54, 0x00, 0xc0, 0x1a, 0x00, 0x00
0037ba38  f4 62 54 00 a8 35 00 00 f0 62 54 00 50 40 00 00  .byte 0xf4, 0x62, 0x54, 0x00, 0xa8, 0x35, 0x00, 0x00, 0xf0, 0x62, 0x54, 0x00, 0x50, 0x40, 0x00, 0x00
0037ba48  ec 62 54 00 f4 3f 00 00 e8 62 54 00 0c 24 00 00  .byte 0xec, 0x62, 0x54, 0x00, 0xf4, 0x3f, 0x00, 0x00, 0xe8, 0x62, 0x54, 0x00, 0x0c, 0x24, 0x00, 0x00
0037ba58  e4 62 54 00 ec 17 00 00 d8 62 54 00 98 09 00 00  .byte 0xe4, 0x62, 0x54, 0x00, 0xec, 0x17, 0x00, 0x00, 0xd8, 0x62, 0x54, 0x00, 0x98, 0x09, 0x00, 0x00
0037ba68  cc 62 54 00 78 3f 00 00 c0 62 54 00 ac 26 00 00  .byte 0xcc, 0x62, 0x54, 0x00, 0x78, 0x3f, 0x00, 0x00, 0xc0, 0x62, 0x54, 0x00, 0xac, 0x26, 0x00, 0x00
0037ba78  b4 62 54 00 08 2f 00 00 a8 62 54 00              .byte 0xb4, 0x62, 0x54, 0x00, 0x08, 0x2f, 0x00, 0x00, 0xa8, 0x62, 0x54, 0x00

; FUNCTION 0x0037be00, declared_size=68, range_size=68, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript12_PushVFTableERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_PushVFTable(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037be00  5c 30 92 e5                                      ldr r3, [r2, #0x5c]
0037be04  70 40 2d e9                                      push {r4, r5, r6, lr}
0037be08  00 00 53 e3                                      cmp r3, #0
0037be0c  02 40 a0 e1                                      mov r4, r2
0037be10  08 00 00 0a                                      beq #0x37be38
0037be14  4c 50 82 e2                                      add r5, r2, #0x4c
0037be18  05 00 a0 e1                                      mov r0, r5
0037be1c  50 10 92 e5                                      ldr r1, [r2, #0x50]
0037be20  d5 ff ff eb                                      bl #0x37bd7c
0037be24  00 30 a0 e3                                      mov r3, #0
0037be28  58 50 84 e5                                      str r5, [r4, #0x58]
0037be2c  5c 30 84 e5                                      str r3, [r4, #0x5c]
0037be30  54 50 84 e5                                      str r5, [r4, #0x54]
0037be34  50 30 84 e5                                      str r3, [r4, #0x50]
0037be38  01 30 a0 e3                                      mov r3, #1
0037be3c  64 30 c4 e5                                      strb r3, [r4, #0x64]
0037be40  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0037bec0, declared_size=324, range_size=324, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScriptD2Ev
; demangled: LuaScript::~LuaScript()
; decoder-mode: arm
0037bec0  70 40 2d e9                                      push {r4, r5, r6, lr}
0037bec4  2c 51 9f e5                                      ldr r5, [pc, #0x12c]
0037bec8  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
0037becc  90 20 90 e5                                      ldr r2, [r0, #0x90]
0037bed0  05 50 8f e0                                      add r5, pc, r5
0037bed4  03 30 95 e7                                      ldr r3, [r5, r3]
0037bed8  00 00 52 e3                                      cmp r2, #0
0037bedc  00 40 a0 e1                                      mov r4, r0
0037bee0  08 30 83 e2                                      add r3, r3, #8
0037bee4  00 30 80 e5                                      str r3, [r0]
0037bee8  36 00 00 1a                                      bne #0x37bfc8
0037beec  68 30 84 e2                                      add r3, r4, #0x68
0037bef0  14 00 93 e5                                      ldr r0, [r3, #0x14]
0037bef4  03 00 50 e1                                      cmp r0, r3
0037bef8  06 00 00 0a                                      beq #0x37bf18
0037befc  00 00 50 e3                                      cmp r0, #0
0037bf00  04 00 00 0a                                      beq #0x37bf18
0037bf04  68 10 94 e5                                      ldr r1, [r4, #0x68]
0037bf08  01 10 60 e0                                      rsb r1, r0, r1
0037bf0c  80 00 51 e3                                      cmp r1, #0x80
0037bf10  36 00 00 8a                                      bhi #0x37bff0
0037bf14  f9 33 0e eb                                      bl #0x708f00
0037bf18  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
0037bf1c  00 00 53 e3                                      cmp r3, #0
0037bf20  08 00 00 0a                                      beq #0x37bf48
0037bf24  4c 60 84 e2                                      add r6, r4, #0x4c
0037bf28  06 00 a0 e1                                      mov r0, r6
0037bf2c  50 10 94 e5                                      ldr r1, [r4, #0x50]
0037bf30  91 ff ff eb                                      bl #0x37bd7c
0037bf34  00 30 a0 e3                                      mov r3, #0
0037bf38  58 60 84 e5                                      str r6, [r4, #0x58]
0037bf3c  5c 30 84 e5                                      str r3, [r4, #0x5c]
0037bf40  54 60 84 e5                                      str r6, [r4, #0x54]
0037bf44  50 30 84 e5                                      str r3, [r4, #0x50]
0037bf48  44 30 94 e5                                      ldr r3, [r4, #0x44]
0037bf4c  00 00 53 e3                                      cmp r3, #0
0037bf50  08 00 00 0a                                      beq #0x37bf78
0037bf54  34 60 84 e2                                      add r6, r4, #0x34
0037bf58  06 00 a0 e1                                      mov r0, r6
0037bf5c  38 10 94 e5                                      ldr r1, [r4, #0x38]
0037bf60  85 ff ff eb                                      bl #0x37bd7c
0037bf64  00 30 a0 e3                                      mov r3, #0
0037bf68  40 60 84 e5                                      str r6, [r4, #0x40]
0037bf6c  44 30 84 e5                                      str r3, [r4, #0x44]
0037bf70  3c 60 84 e5                                      str r6, [r4, #0x3c]
0037bf74  38 30 84 e5                                      str r3, [r4, #0x38]
0037bf78  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0037bf7c  00 00 53 e3                                      cmp r3, #0
0037bf80  08 00 00 0a                                      beq #0x37bfa8
0037bf84  1c 60 84 e2                                      add r6, r4, #0x1c
0037bf88  06 00 a0 e1                                      mov r0, r6
0037bf8c  20 10 94 e5                                      ldr r1, [r4, #0x20]
0037bf90  4a ff ff eb                                      bl #0x37bcc0
0037bf94  00 30 a0 e3                                      mov r3, #0
0037bf98  28 60 84 e5                                      str r6, [r4, #0x28]
0037bf9c  2c 30 84 e5                                      str r3, [r4, #0x2c]
0037bfa0  24 60 84 e5                                      str r6, [r4, #0x24]
0037bfa4  20 30 84 e5                                      str r3, [r4, #0x20]
0037bfa8  50 30 9f e5                                      ldr r3, [pc, #0x50]
0037bfac  04 00 84 e2                                      add r0, r4, #4
0037bfb0  03 30 95 e7                                      ldr r3, [r5, r3]
0037bfb4  08 30 83 e2                                      add r3, r3, #8
0037bfb8  10 30 84 e5                                      str r3, [r4, #0x10]
0037bfbc  6f 7c fe eb                                      bl #0x31b180
0037bfc0  04 00 a0 e1                                      mov r0, r4
0037bfc4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037bfc8  80 60 80 e2                                      add r6, r0, #0x80
0037bfcc  06 00 a0 e1                                      mov r0, r6
0037bfd0  84 10 94 e5                                      ldr r1, [r4, #0x84]
0037bfd4  47 ff ff eb                                      bl #0x37bcf8
0037bfd8  00 30 a0 e3                                      mov r3, #0
0037bfdc  8c 60 84 e5                                      str r6, [r4, #0x8c]
0037bfe0  90 30 84 e5                                      str r3, [r4, #0x90]
0037bfe4  88 60 84 e5                                      str r6, [r4, #0x88]
0037bfe8  84 30 84 e5                                      str r3, [r4, #0x84]
0037bfec  be ff ff ea                                      b #0x37beec
0037bff0  12 51 fe eb                                      bl #0x310440
0037bff4  c7 ff ff ea                                      b #0x37bf18
; mapping-symbol data/literal pool
0037bff8  c0 8b 61 00 74 16 00 00 58 36 00 00              .byte 0xc0, 0x8b, 0x61, 0x00, 0x74, 0x16, 0x00, 0x00, 0x58, 0x36, 0x00, 0x00

; FUNCTION 0x0037c004, declared_size=324, range_size=324, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScriptD1Ev
; demangled: LuaScript::~LuaScript()
; decoder-mode: arm
0037c004  70 40 2d e9                                      push {r4, r5, r6, lr}
0037c008  2c 51 9f e5                                      ldr r5, [pc, #0x12c]
0037c00c  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
0037c010  90 20 90 e5                                      ldr r2, [r0, #0x90]
0037c014  05 50 8f e0                                      add r5, pc, r5
0037c018  03 30 95 e7                                      ldr r3, [r5, r3]
0037c01c  00 00 52 e3                                      cmp r2, #0
0037c020  00 40 a0 e1                                      mov r4, r0
0037c024  08 30 83 e2                                      add r3, r3, #8
0037c028  00 30 80 e5                                      str r3, [r0]
0037c02c  36 00 00 1a                                      bne #0x37c10c
0037c030  68 30 84 e2                                      add r3, r4, #0x68
0037c034  14 00 93 e5                                      ldr r0, [r3, #0x14]
0037c038  03 00 50 e1                                      cmp r0, r3
0037c03c  06 00 00 0a                                      beq #0x37c05c
0037c040  00 00 50 e3                                      cmp r0, #0
0037c044  04 00 00 0a                                      beq #0x37c05c
0037c048  68 10 94 e5                                      ldr r1, [r4, #0x68]
0037c04c  01 10 60 e0                                      rsb r1, r0, r1
0037c050  80 00 51 e3                                      cmp r1, #0x80
0037c054  36 00 00 8a                                      bhi #0x37c134
0037c058  a8 33 0e eb                                      bl #0x708f00
0037c05c  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
0037c060  00 00 53 e3                                      cmp r3, #0
0037c064  08 00 00 0a                                      beq #0x37c08c
0037c068  4c 60 84 e2                                      add r6, r4, #0x4c
0037c06c  06 00 a0 e1                                      mov r0, r6
0037c070  50 10 94 e5                                      ldr r1, [r4, #0x50]
0037c074  40 ff ff eb                                      bl #0x37bd7c
0037c078  00 30 a0 e3                                      mov r3, #0
0037c07c  58 60 84 e5                                      str r6, [r4, #0x58]
0037c080  5c 30 84 e5                                      str r3, [r4, #0x5c]
0037c084  54 60 84 e5                                      str r6, [r4, #0x54]
0037c088  50 30 84 e5                                      str r3, [r4, #0x50]
0037c08c  44 30 94 e5                                      ldr r3, [r4, #0x44]
0037c090  00 00 53 e3                                      cmp r3, #0
0037c094  08 00 00 0a                                      beq #0x37c0bc
0037c098  34 60 84 e2                                      add r6, r4, #0x34
0037c09c  06 00 a0 e1                                      mov r0, r6
0037c0a0  38 10 94 e5                                      ldr r1, [r4, #0x38]
0037c0a4  34 ff ff eb                                      bl #0x37bd7c
0037c0a8  00 30 a0 e3                                      mov r3, #0
0037c0ac  40 60 84 e5                                      str r6, [r4, #0x40]
0037c0b0  44 30 84 e5                                      str r3, [r4, #0x44]
0037c0b4  3c 60 84 e5                                      str r6, [r4, #0x3c]
0037c0b8  38 30 84 e5                                      str r3, [r4, #0x38]
0037c0bc  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0037c0c0  00 00 53 e3                                      cmp r3, #0
0037c0c4  08 00 00 0a                                      beq #0x37c0ec
0037c0c8  1c 60 84 e2                                      add r6, r4, #0x1c
0037c0cc  06 00 a0 e1                                      mov r0, r6
0037c0d0  20 10 94 e5                                      ldr r1, [r4, #0x20]
0037c0d4  f9 fe ff eb                                      bl #0x37bcc0
0037c0d8  00 30 a0 e3                                      mov r3, #0
0037c0dc  28 60 84 e5                                      str r6, [r4, #0x28]
0037c0e0  2c 30 84 e5                                      str r3, [r4, #0x2c]
0037c0e4  24 60 84 e5                                      str r6, [r4, #0x24]
0037c0e8  20 30 84 e5                                      str r3, [r4, #0x20]
0037c0ec  50 30 9f e5                                      ldr r3, [pc, #0x50]
0037c0f0  04 00 84 e2                                      add r0, r4, #4
0037c0f4  03 30 95 e7                                      ldr r3, [r5, r3]
0037c0f8  08 30 83 e2                                      add r3, r3, #8
0037c0fc  10 30 84 e5                                      str r3, [r4, #0x10]
0037c100  1e 7c fe eb                                      bl #0x31b180
0037c104  04 00 a0 e1                                      mov r0, r4
0037c108  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037c10c  80 60 80 e2                                      add r6, r0, #0x80
0037c110  06 00 a0 e1                                      mov r0, r6
0037c114  84 10 94 e5                                      ldr r1, [r4, #0x84]
0037c118  f6 fe ff eb                                      bl #0x37bcf8
0037c11c  00 30 a0 e3                                      mov r3, #0
0037c120  8c 60 84 e5                                      str r6, [r4, #0x8c]
0037c124  90 30 84 e5                                      str r3, [r4, #0x90]
0037c128  88 60 84 e5                                      str r6, [r4, #0x88]
0037c12c  84 30 84 e5                                      str r3, [r4, #0x84]
0037c130  be ff ff ea                                      b #0x37c030
0037c134  c1 50 fe eb                                      bl #0x310440
0037c138  c7 ff ff ea                                      b #0x37c05c
; mapping-symbol data/literal pool
0037c13c  7c 8a 61 00 74 16 00 00 58 36 00 00              .byte 0x7c, 0x8a, 0x61, 0x00, 0x74, 0x16, 0x00, 0x00, 0x58, 0x36, 0x00, 0x00

; FUNCTION 0x0037c148, declared_size=28, range_size=28, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScriptD0Ev
; demangled: LuaScript::~LuaScript()
; decoder-mode: arm
0037c148  10 40 2d e9                                      push {r4, lr}
0037c14c  00 40 a0 e1                                      mov r4, r0
0037c150  ab ff ff eb                                      bl #0x37c004
0037c154  04 00 a0 e1                                      mov r0, r4
0037c158  b8 50 fe eb                                      bl #0x310440
0037c15c  04 00 a0 e1                                      mov r0, r4
0037c160  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0037c2a0, declared_size=116, range_size=116, mode=arm
; class-group: LuaScript
; alias: _ZNK9LuaScript11IsInVFTableEPKc
; demangled: LuaScript::IsInVFTable(char const*) const
; decoder-mode: arm
0037c2a0  10 40 2d e9                                      push {r4, lr}
0037c2a4  00 40 a0 e1                                      mov r4, r0
0037c2a8  01 00 a0 e1                                      mov r0, r1
0037c2ac  ac ff ff eb                                      bl #0x37c164
0037c2b0  38 30 94 e5                                      ldr r3, [r4, #0x38]
0037c2b4  34 40 84 e2                                      add r4, r4, #0x34
0037c2b8  00 00 53 e3                                      cmp r3, #0
0037c2bc  0f 00 00 0a                                      beq #0x37c300
0037c2c0  04 10 a0 e1                                      mov r1, r4
0037c2c4  00 00 00 ea                                      b #0x37c2cc
0037c2c8  02 30 a0 e1                                      mov r3, r2
0037c2cc  10 20 93 e5                                      ldr r2, [r3, #0x10]
0037c2d0  02 00 50 e1                                      cmp r0, r2
0037c2d4  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
0037c2d8  08 20 93 95                                      ldrls r2, [r3, #8]
0037c2dc  01 30 a0 81                                      movhi r3, r1
0037c2e0  03 10 a0 e1                                      mov r1, r3
0037c2e4  00 00 52 e3                                      cmp r2, #0
0037c2e8  f6 ff ff 1a                                      bne #0x37c2c8
0037c2ec  03 00 54 e1                                      cmp r4, r3
0037c2f0  02 00 00 0a                                      beq #0x37c300
0037c2f4  10 20 93 e5                                      ldr r2, [r3, #0x10]
0037c2f8  02 00 50 e1                                      cmp r0, r2
0037c2fc  01 00 00 2a                                      bhs #0x37c308
0037c300  00 00 a0 e3                                      mov r0, #0
0037c304  10 80 bd e8                                      pop {r4, pc}
0037c308  04 00 53 e0                                      subs r0, r3, r4
0037c30c  01 00 a0 13                                      movne r0, #1
0037c310  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0037c314, declared_size=124, range_size=124, mode=arm
; class-group: LuaScript
; alias: _ZNK9LuaScript12_GetFuncNameEPKc
; demangled: LuaScript::_GetFuncName(char const*) const
; decoder-mode: arm
0037c314  70 40 2d e9                                      push {r4, r5, r6, lr}
0037c318  00 50 a0 e1                                      mov r5, r0
0037c31c  01 00 a0 e1                                      mov r0, r1
0037c320  01 40 a0 e1                                      mov r4, r1
0037c324  8e ff ff eb                                      bl #0x37c164
0037c328  38 30 95 e5                                      ldr r3, [r5, #0x38]
0037c32c  34 50 85 e2                                      add r5, r5, #0x34
0037c330  00 00 53 e3                                      cmp r3, #0
0037c334  13 00 00 0a                                      beq #0x37c388
0037c338  05 10 a0 e1                                      mov r1, r5
0037c33c  00 00 00 ea                                      b #0x37c344
0037c340  02 30 a0 e1                                      mov r3, r2
0037c344  10 20 93 e5                                      ldr r2, [r3, #0x10]
0037c348  02 00 50 e1                                      cmp r0, r2
0037c34c  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
0037c350  08 20 93 95                                      ldrls r2, [r3, #8]
0037c354  01 30 a0 81                                      movhi r3, r1
0037c358  03 10 a0 e1                                      mov r1, r3
0037c35c  00 00 52 e3                                      cmp r2, #0
0037c360  f6 ff ff 1a                                      bne #0x37c340
0037c364  03 00 55 e1                                      cmp r5, r3
0037c368  04 00 00 0a                                      beq #0x37c380
0037c36c  10 20 93 e5                                      ldr r2, [r3, #0x10]
0037c370  02 00 50 e1                                      cmp r0, r2
0037c374  03 00 00 3a                                      blo #0x37c388
0037c378  03 00 55 e1                                      cmp r5, r3
0037c37c  28 40 93 15                                      ldrne r4, [r3, #0x28]
0037c380  04 00 a0 e1                                      mov r0, r4
0037c384  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037c388  05 30 a0 e1                                      mov r3, r5
0037c38c  f9 ff ff ea                                      b #0x37c378

; FUNCTION 0x0037c390, declared_size=140, range_size=140, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript4CallEPKcRKN3sfc6script3lua9ArgumentsERNS4_12ReturnValuesE
; demangled: LuaScript::Call(char const*, sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&)
; decoder-mode: arm
0037c390  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0037c394  03 50 a0 e1                                      mov r5, r3
0037c398  24 30 93 e5                                      ldr r3, [r3, #0x24]
0037c39c  70 40 9f e5                                      ldr r4, [pc, #0x70]
0037c3a0  08 d0 4d e2                                      sub sp, sp, #8
0037c3a4  00 e0 93 e5                                      ldr lr, [r3]
0037c3a8  04 c0 93 e5                                      ldr ip, [r3, #4]
0037c3ac  04 40 8f e0                                      add r4, pc, r4
0037c3b0  00 60 a0 e1                                      mov r6, r0
0037c3b4  0c 00 5e e1                                      cmp lr, ip
0037c3b8  01 70 a0 e1                                      mov r7, r1
0037c3bc  02 80 a0 e1                                      mov r8, r2
0037c3c0  04 00 00 0a                                      beq #0x37c3d8
0037c3c4  03 00 a0 e1                                      mov r0, r3
0037c3c8  0e 10 a0 e1                                      mov r1, lr
0037c3cc  0c 20 a0 e1                                      mov r2, ip
0037c3d0  04 30 8d e2                                      add r3, sp, #4
0037c3d4  fc 7f fe eb                                      bl #0x31c3cc
0037c3d8  07 10 a0 e1                                      mov r1, r7
0037c3dc  06 00 a0 e1                                      mov r0, r6
0037c3e0  cb ff ff eb                                      bl #0x37c314
0037c3e4  08 20 a0 e1                                      mov r2, r8
0037c3e8  00 10 a0 e1                                      mov r1, r0
0037c3ec  05 30 a0 e1                                      mov r3, r5
0037c3f0  04 00 86 e2                                      add r0, r6, #4
0037c3f4  fb 79 fe eb                                      bl #0x31abe8
0037c3f8  18 30 9f e5                                      ldr r3, [pc, #0x18]
0037c3fc  03 30 94 e7                                      ldr r3, [r4, r3]
0037c400  00 20 93 e5                                      ldr r2, [r3]
0037c404  01 20 82 e2                                      add r2, r2, #1
0037c408  00 20 83 e5                                      str r2, [r3]
0037c40c  08 d0 8d e2                                      add sp, sp, #8
0037c410  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0037c414  e4 86 61 00 fc 2d 00 00                          .byte 0xe4, 0x86, 0x61, 0x00, 0xfc, 0x2d, 0x00, 0x00

; FUNCTION 0x0037c41c, declared_size=120, range_size=120, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript4CallEPKcRKN3sfc6script3lua9ArgumentsE
; demangled: LuaScript::Call(char const*, sfc::script::lua::Arguments const&)
; decoder-mode: arm
0037c41c  68 30 9f e5                                      ldr r3, [pc, #0x68]
0037c420  68 c0 9f e5                                      ldr ip, [pc, #0x68]
0037c424  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0037c428  03 30 8f e0                                      add r3, pc, r3
0037c42c  0c 50 93 e7                                      ldr r5, [r3, ip]
0037c430  30 d0 4d e2                                      sub sp, sp, #0x30
0037c434  01 80 a0 e1                                      mov r8, r1
0037c438  00 10 95 e5                                      ldr r1, [r5]
0037c43c  04 40 8d e2                                      add r4, sp, #4
0037c440  00 60 a0 e1                                      mov r6, r0
0037c444  02 70 a0 e1                                      mov r7, r2
0037c448  04 00 a0 e1                                      mov r0, r4
0037c44c  2c 10 8d e5                                      str r1, [sp, #0x2c]
0037c450  f7 7b fe eb                                      bl #0x31b434
0037c454  07 20 a0 e1                                      mov r2, r7
0037c458  04 30 a0 e1                                      mov r3, r4
0037c45c  06 00 a0 e1                                      mov r0, r6
0037c460  08 10 a0 e1                                      mov r1, r8
0037c464  c9 ff ff eb                                      bl #0x37c390
0037c468  04 00 a0 e1                                      mov r0, r4
0037c46c  c9 7b fe eb                                      bl #0x31b398
0037c470  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0037c474  00 30 95 e5                                      ldr r3, [r5]
0037c478  03 00 52 e1                                      cmp r2, r3
0037c47c  01 00 00 1a                                      bne #0x37c488
0037c480  30 d0 8d e2                                      add sp, sp, #0x30
0037c484  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0037c488  a0 47 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0037c48c  68 86 61 00 ac 40 00 00                          .byte 0x68, 0x86, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0037c494, declared_size=128, range_size=128, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript4CallEPKcRN3sfc6script3lua12ReturnValuesE
; demangled: LuaScript::Call(char const*, sfc::script::lua::ReturnValues&)
; decoder-mode: arm
0037c494  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0037c498  24 30 92 e5                                      ldr r3, [r2, #0x24]
0037c49c  02 50 a0 e1                                      mov r5, r2
0037c4a0  64 40 9f e5                                      ldr r4, [pc, #0x64]
0037c4a4  00 c0 93 e5                                      ldr ip, [r3]
0037c4a8  04 20 93 e5                                      ldr r2, [r3, #4]
0037c4ac  0c d0 4d e2                                      sub sp, sp, #0xc
0037c4b0  00 60 a0 e1                                      mov r6, r0
0037c4b4  02 00 5c e1                                      cmp ip, r2
0037c4b8  04 40 8f e0                                      add r4, pc, r4
0037c4bc  01 70 a0 e1                                      mov r7, r1
0037c4c0  03 00 00 0a                                      beq #0x37c4d4
0037c4c4  03 00 a0 e1                                      mov r0, r3
0037c4c8  0c 10 a0 e1                                      mov r1, ip
0037c4cc  04 30 8d e2                                      add r3, sp, #4
0037c4d0  bd 7f fe eb                                      bl #0x31c3cc
0037c4d4  07 10 a0 e1                                      mov r1, r7
0037c4d8  06 00 a0 e1                                      mov r0, r6
0037c4dc  8c ff ff eb                                      bl #0x37c314
0037c4e0  05 20 a0 e1                                      mov r2, r5
0037c4e4  00 10 a0 e1                                      mov r1, r0
0037c4e8  04 00 86 e2                                      add r0, r6, #4
0037c4ec  88 79 fe eb                                      bl #0x31ab14
0037c4f0  18 30 9f e5                                      ldr r3, [pc, #0x18]
0037c4f4  03 30 94 e7                                      ldr r3, [r4, r3]
0037c4f8  00 20 93 e5                                      ldr r2, [r3]
0037c4fc  01 20 82 e2                                      add r2, r2, #1
0037c500  00 20 83 e5                                      str r2, [r3]
0037c504  0c d0 8d e2                                      add sp, sp, #0xc
0037c508  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0037c50c  d8 85 61 00 fc 2d 00 00                          .byte 0xd8, 0x85, 0x61, 0x00, 0xfc, 0x2d, 0x00, 0x00

; FUNCTION 0x0037c514, declared_size=112, range_size=112, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript4CallEPKc
; demangled: LuaScript::Call(char const*)
; decoder-mode: arm
0037c514  60 30 9f e5                                      ldr r3, [pc, #0x60]
0037c518  60 20 9f e5                                      ldr r2, [pc, #0x60]
0037c51c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0037c520  03 30 8f e0                                      add r3, pc, r3
0037c524  02 50 93 e7                                      ldr r5, [r3, r2]
0037c528  34 d0 4d e2                                      sub sp, sp, #0x34
0037c52c  04 40 8d e2                                      add r4, sp, #4
0037c530  00 20 95 e5                                      ldr r2, [r5]
0037c534  00 60 a0 e1                                      mov r6, r0
0037c538  01 70 a0 e1                                      mov r7, r1
0037c53c  04 00 a0 e1                                      mov r0, r4
0037c540  2c 20 8d e5                                      str r2, [sp, #0x2c]
0037c544  ba 7b fe eb                                      bl #0x31b434
0037c548  04 20 a0 e1                                      mov r2, r4
0037c54c  06 00 a0 e1                                      mov r0, r6
0037c550  07 10 a0 e1                                      mov r1, r7
0037c554  ce ff ff eb                                      bl #0x37c494
0037c558  04 00 a0 e1                                      mov r0, r4
0037c55c  8d 7b fe eb                                      bl #0x31b398
0037c560  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0037c564  00 30 95 e5                                      ldr r3, [r5]
0037c568  03 00 52 e1                                      cmp r2, r3
0037c56c  01 00 00 1a                                      bne #0x37c578
0037c570  34 d0 8d e2                                      add sp, sp, #0x34
0037c574  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0037c578  64 47 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0037c57c  70 85 61 00 ac 40 00 00                          .byte 0x70, 0x85, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0037c584, declared_size=240, range_size=240, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScriptC1Eb
; demangled: LuaScript::LuaScript(bool)
; decoder-mode: arm
0037c584  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0037c588  d8 60 9f e5                                      ldr r6, [pc, #0xd8]
0037c58c  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
0037c590  00 70 a0 e1                                      mov r7, r0
0037c594  06 60 8f e0                                      add r6, pc, r6
0037c598  03 30 96 e7                                      ldr r3, [r6, r3]
0037c59c  00 40 a0 e1                                      mov r4, r0
0037c5a0  01 80 a0 e1                                      mov r8, r1
0037c5a4  08 30 83 e2                                      add r3, r3, #8
0037c5a8  04 30 87 e4                                      str r3, [r7], #4
0037c5ac  07 00 a0 e1                                      mov r0, r7
0037c5b0  2c 7b fe eb                                      bl #0x31b268
0037c5b4  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0037c5b8  00 50 a0 e3                                      mov r5, #0
0037c5bc  04 30 a0 e1                                      mov r3, r4
0037c5c0  02 20 96 e7                                      ldr r2, [r6, r2]
0037c5c4  14 70 84 e5                                      str r7, [r4, #0x14]
0037c5c8  18 50 84 e5                                      str r5, [r4, #0x18]
0037c5cc  08 20 82 e2                                      add r2, r2, #8
0037c5d0  10 20 84 e5                                      str r2, [r4, #0x10]
0037c5d4  20 50 84 e5                                      str r5, [r4, #0x20]
0037c5d8  04 20 a0 e1                                      mov r2, r4
0037c5dc  1c 50 e3 e5                                      strb r5, [r3, #0x1c]!
0037c5e0  28 30 84 e5                                      str r3, [r4, #0x28]
0037c5e4  24 30 84 e5                                      str r3, [r4, #0x24]
0037c5e8  2c 50 84 e5                                      str r5, [r4, #0x2c]
0037c5ec  04 30 a0 e1                                      mov r3, r4
0037c5f0  38 50 84 e5                                      str r5, [r4, #0x38]
0037c5f4  34 50 e2 e5                                      strb r5, [r2, #0x34]!
0037c5f8  40 20 84 e5                                      str r2, [r4, #0x40]
0037c5fc  3c 20 84 e5                                      str r2, [r4, #0x3c]
0037c600  68 00 84 e2                                      add r0, r4, #0x68
0037c604  44 50 84 e5                                      str r5, [r4, #0x44]
0037c608  50 50 84 e5                                      str r5, [r4, #0x50]
0037c60c  4c 50 e3 e5                                      strb r5, [r3, #0x4c]!
0037c610  58 30 84 e5                                      str r3, [r4, #0x58]
0037c614  54 30 84 e5                                      str r3, [r4, #0x54]
0037c618  5c 50 84 e5                                      str r5, [r4, #0x5c]
0037c61c  64 50 c4 e5                                      strb r5, [r4, #0x64]
0037c620  78 00 84 e5                                      str r0, [r4, #0x78]
0037c624  7c 00 84 e5                                      str r0, [r4, #0x7c]
0037c628  10 10 a0 e3                                      mov r1, #0x10
0037c62c  12 54 fe eb                                      bl #0x31167c
0037c630  78 20 94 e5                                      ldr r2, [r4, #0x78]
0037c634  04 30 a0 e1                                      mov r3, r4
0037c638  05 00 58 e1                                      cmp r8, r5
0037c63c  00 50 c2 e5                                      strb r5, [r2]
0037c640  84 50 84 e5                                      str r5, [r4, #0x84]
0037c644  80 50 e3 e5                                      strb r5, [r3, #0x80]!
0037c648  8c 30 84 e5                                      str r3, [r4, #0x8c]
0037c64c  90 50 84 e5                                      str r5, [r4, #0x90]
0037c650  88 30 84 e5                                      str r3, [r4, #0x88]
0037c654  01 00 00 1a                                      bne #0x37c660
0037c658  04 00 a0 e1                                      mov r0, r4
0037c65c  cf fb ff eb                                      bl #0x37b5a0
0037c660  04 00 a0 e1                                      mov r0, r4
0037c664  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0037c668  fc 84 61 00 74 16 00 00 58 36 00 00              .byte 0xfc, 0x84, 0x61, 0x00, 0x74, 0x16, 0x00, 0x00, 0x58, 0x36, 0x00, 0x00

; FUNCTION 0x0037c674, declared_size=240, range_size=240, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScriptC2Eb
; demangled: LuaScript::LuaScript(bool)
; decoder-mode: arm
0037c674  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0037c678  d8 60 9f e5                                      ldr r6, [pc, #0xd8]
0037c67c  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
0037c680  00 70 a0 e1                                      mov r7, r0
0037c684  06 60 8f e0                                      add r6, pc, r6
0037c688  03 30 96 e7                                      ldr r3, [r6, r3]
0037c68c  00 40 a0 e1                                      mov r4, r0
0037c690  01 80 a0 e1                                      mov r8, r1
0037c694  08 30 83 e2                                      add r3, r3, #8
0037c698  04 30 87 e4                                      str r3, [r7], #4
0037c69c  07 00 a0 e1                                      mov r0, r7
0037c6a0  f0 7a fe eb                                      bl #0x31b268
0037c6a4  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0037c6a8  00 50 a0 e3                                      mov r5, #0
0037c6ac  04 30 a0 e1                                      mov r3, r4
0037c6b0  02 20 96 e7                                      ldr r2, [r6, r2]
0037c6b4  14 70 84 e5                                      str r7, [r4, #0x14]
0037c6b8  18 50 84 e5                                      str r5, [r4, #0x18]
0037c6bc  08 20 82 e2                                      add r2, r2, #8
0037c6c0  10 20 84 e5                                      str r2, [r4, #0x10]
0037c6c4  20 50 84 e5                                      str r5, [r4, #0x20]
0037c6c8  04 20 a0 e1                                      mov r2, r4
0037c6cc  1c 50 e3 e5                                      strb r5, [r3, #0x1c]!
0037c6d0  28 30 84 e5                                      str r3, [r4, #0x28]
0037c6d4  24 30 84 e5                                      str r3, [r4, #0x24]
0037c6d8  2c 50 84 e5                                      str r5, [r4, #0x2c]
0037c6dc  04 30 a0 e1                                      mov r3, r4
0037c6e0  38 50 84 e5                                      str r5, [r4, #0x38]
0037c6e4  34 50 e2 e5                                      strb r5, [r2, #0x34]!
0037c6e8  40 20 84 e5                                      str r2, [r4, #0x40]
0037c6ec  3c 20 84 e5                                      str r2, [r4, #0x3c]
0037c6f0  68 00 84 e2                                      add r0, r4, #0x68
0037c6f4  44 50 84 e5                                      str r5, [r4, #0x44]
0037c6f8  50 50 84 e5                                      str r5, [r4, #0x50]
0037c6fc  4c 50 e3 e5                                      strb r5, [r3, #0x4c]!
0037c700  58 30 84 e5                                      str r3, [r4, #0x58]
0037c704  54 30 84 e5                                      str r3, [r4, #0x54]
0037c708  5c 50 84 e5                                      str r5, [r4, #0x5c]
0037c70c  64 50 c4 e5                                      strb r5, [r4, #0x64]
0037c710  78 00 84 e5                                      str r0, [r4, #0x78]
0037c714  7c 00 84 e5                                      str r0, [r4, #0x7c]
0037c718  10 10 a0 e3                                      mov r1, #0x10
0037c71c  d6 53 fe eb                                      bl #0x31167c
0037c720  78 20 94 e5                                      ldr r2, [r4, #0x78]
0037c724  04 30 a0 e1                                      mov r3, r4
0037c728  05 00 58 e1                                      cmp r8, r5
0037c72c  00 50 c2 e5                                      strb r5, [r2]
0037c730  84 50 84 e5                                      str r5, [r4, #0x84]
0037c734  80 50 e3 e5                                      strb r5, [r3, #0x80]!
0037c738  8c 30 84 e5                                      str r3, [r4, #0x8c]
0037c73c  90 50 84 e5                                      str r5, [r4, #0x90]
0037c740  88 30 84 e5                                      str r3, [r4, #0x88]
0037c744  01 00 00 1a                                      bne #0x37c750
0037c748  04 00 a0 e1                                      mov r0, r4
0037c74c  93 fb ff eb                                      bl #0x37b5a0
0037c750  04 00 a0 e1                                      mov r0, r4
0037c754  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0037c758  0c 84 61 00 74 16 00 00 58 36 00 00              .byte 0x0c, 0x84, 0x61, 0x00, 0x74, 0x16, 0x00, 0x00, 0x58, 0x36, 0x00, 0x00

; FUNCTION 0x0037c934, declared_size=68, range_size=68, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript14_GetGameScriptERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_GetGameScript(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037c934  34 30 9f e5                                      ldr r3, [pc, #0x34]
0037c938  34 20 9f e5                                      ldr r2, [pc, #0x34]
0037c93c  10 40 2d e9                                      push {r4, lr}
0037c940  03 30 8f e0                                      add r3, pc, r3
0037c944  02 00 93 e7                                      ldr r0, [r3, r2]
0037c948  01 40 a0 e1                                      mov r4, r1
0037c94c  10 8b fe eb                                      bl #0x31f594
0037c950  00 00 50 e3                                      cmp r0, #0
0037c954  04 00 00 0a                                      beq #0x37c96c
0037c958  8d d2 01 eb                                      bl #0x3f1394
0037c95c  00 10 a0 e1                                      mov r1, r0
0037c960  04 00 a0 e1                                      mov r0, r4
0037c964  10 40 bd e8                                      pop {r4, lr}
0037c968  d7 ff ff ea                                      b #0x37c8cc
0037c96c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0037c970  50 81 61 00 f4 37 00 00                          .byte 0x50, 0x81, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0037ca60, declared_size=60, range_size=60, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript14_GetHostPlayerERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_GetHostPlayer(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037ca60  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0037ca64  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0037ca68  10 40 2d e9                                      push {r4, lr}
0037ca6c  03 30 8f e0                                      add r3, pc, r3
0037ca70  02 20 93 e7                                      ldr r2, [r3, r2]
0037ca74  01 40 a0 e1                                      mov r4, r1
0037ca78  40 00 92 e5                                      ldr r0, [r2, #0x40]
0037ca7c  86 c5 ff eb                                      bl #0x36e09c
0037ca80  60 36 90 e5                                      ldr r3, [r0, #0x660]
0037ca84  04 00 a0 e1                                      mov r0, r4
0037ca88  03 10 a0 e1                                      mov r1, r3
0037ca8c  10 40 bd e8                                      pop {r4, lr}
0037ca90  d8 ff ff ea                                      b #0x37c9f8
; mapping-symbol data/literal pool
0037ca94  24 80 61 00 f4 37 00 00                          .byte 0x24, 0x80, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0037cb8c, declared_size=76, range_size=76, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript24_GetHostPlayerDifficultyERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_GetHostPlayerDifficulty(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037cb8c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0037cb90  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0037cb94  10 40 2d e9                                      push {r4, lr}
0037cb98  03 30 8f e0                                      add r3, pc, r3
0037cb9c  02 00 93 e7                                      ldr r0, [r3, r2]
0037cba0  01 40 a0 e1                                      mov r4, r1
0037cba4  7a 8a fe eb                                      bl #0x31f594
0037cba8  00 30 50 e2                                      subs r3, r0, #0
0037cbac  03 00 00 0a                                      beq #0x37cbc0
0037cbb0  18 11 93 e5                                      ldr r1, [r3, #0x118]
0037cbb4  04 00 a0 e1                                      mov r0, r4
0037cbb8  10 40 bd e8                                      pop {r4, lr}
0037cbbc  d8 ff ff ea                                      b #0x37cb24
0037cbc0  04 00 a0 e1                                      mov r0, r4
0037cbc4  03 10 a0 e1                                      mov r1, r3
0037cbc8  10 40 bd e8                                      pop {r4, lr}
0037cbcc  d4 ff ff ea                                      b #0x37cb24
; mapping-symbol data/literal pool
0037cbd0  f8 7e 61 00 f4 37 00 00                          .byte 0xf8, 0x7e, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0037cbd8, declared_size=40, range_size=40, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript14_GetNumPlayersERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_GetNumPlayers(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037cbd8  18 30 9f e5                                      ldr r3, [pc, #0x18]
0037cbdc  18 20 9f e5                                      ldr r2, [pc, #0x18]
0037cbe0  01 00 a0 e1                                      mov r0, r1
0037cbe4  03 30 8f e0                                      add r3, pc, r3
0037cbe8  02 20 93 e7                                      ldr r2, [r3, r2]
0037cbec  40 30 92 e5                                      ldr r3, [r2, #0x40]
0037cbf0  c4 16 93 e5                                      ldr r1, [r3, #0x6c4]
0037cbf4  ca ff ff ea                                      b #0x37cb24
; mapping-symbol data/literal pool
0037cbf8  ac 7e 61 00 f4 37 00 00                          .byte 0xac, 0x7e, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0037cc00, declared_size=60, range_size=60, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript19_GetHostPlayerLevelERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_GetHostPlayerLevel(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037cc00  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0037cc04  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0037cc08  10 40 2d e9                                      push {r4, lr}
0037cc0c  03 30 8f e0                                      add r3, pc, r3
0037cc10  02 20 93 e7                                      ldr r2, [r3, r2]
0037cc14  01 40 a0 e1                                      mov r4, r1
0037cc18  40 00 92 e5                                      ldr r0, [r2, #0x40]
0037cc1c  1e c5 ff eb                                      bl #0x36e09c
0037cc20  30 33 90 e5                                      ldr r3, [r0, #0x330]
0037cc24  04 00 a0 e1                                      mov r0, r4
0037cc28  03 10 a0 e1                                      mov r1, r3
0037cc2c  10 40 bd e8                                      pop {r4, lr}
0037cc30  bb ff ff ea                                      b #0x37cb24
; mapping-symbol data/literal pool
0037cc34  84 7e 61 00 f4 37 00 00                          .byte 0x84, 0x7e, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0037d990, declared_size=160, range_size=160, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript6SetIntEPKci
; demangled: LuaScript::SetInt(char const*, int)
; decoder-mode: arm
0037d990  70 40 2d e9                                      push {r4, r5, r6, lr}
0037d994  00 60 a0 e1                                      mov r6, r0
0037d998  10 d0 4d e2                                      sub sp, sp, #0x10
0037d99c  01 00 a0 e1                                      mov r0, r1
0037d9a0  02 50 a0 e1                                      mov r5, r2
0037d9a4  ee f9 ff eb                                      bl #0x37c164
0037d9a8  20 c0 96 e5                                      ldr ip, [r6, #0x20]
0037d9ac  1c 10 86 e2                                      add r1, r6, #0x1c
0037d9b0  00 40 a0 e1                                      mov r4, r0
0037d9b4  00 00 5c e3                                      cmp ip, #0
0037d9b8  01 c0 a0 01                                      moveq ip, r1
0037d9bc  0a 00 00 0a                                      beq #0x37d9ec
0037d9c0  01 20 a0 e1                                      mov r2, r1
0037d9c4  00 00 00 ea                                      b #0x37d9cc
0037d9c8  03 c0 a0 e1                                      mov ip, r3
0037d9cc  10 30 9c e5                                      ldr r3, [ip, #0x10]
0037d9d0  03 00 54 e1                                      cmp r4, r3
0037d9d4  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0037d9d8  08 30 9c 95                                      ldrls r3, [ip, #8]
0037d9dc  02 c0 a0 81                                      movhi ip, r2
0037d9e0  0c 20 a0 e1                                      mov r2, ip
0037d9e4  00 00 53 e3                                      cmp r3, #0
0037d9e8  f6 ff ff 1a                                      bne #0x37d9c8
0037d9ec  0c 00 51 e1                                      cmp r1, ip
0037d9f0  03 00 00 0a                                      beq #0x37da04
0037d9f4  10 20 9c e5                                      ldr r2, [ip, #0x10]
0037d9f8  0c 30 a0 e1                                      mov r3, ip
0037d9fc  02 00 54 e1                                      cmp r4, r2
0037da00  07 00 00 2a                                      bhs #0x37da24
0037da04  0d 30 a0 e1                                      mov r3, sp
0037da08  00 e0 a0 e3                                      mov lr, #0
0037da0c  08 00 8d e2                                      add r0, sp, #8
0037da10  0c 20 8d e2                                      add r2, sp, #0xc
0037da14  10 40 8d e8                                      stm sp, {r4, lr}
0037da18  0c c0 8d e5                                      str ip, [sp, #0xc]
0037da1c  fe fe ff eb                                      bl #0x37d61c
0037da20  08 30 9d e5                                      ldr r3, [sp, #8]
0037da24  14 50 83 e5                                      str r5, [r3, #0x14]
0037da28  10 d0 8d e2                                      add sp, sp, #0x10
0037da2c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0037da30, declared_size=148, range_size=148, mode=arm
; class-group: LuaScript
; alias: _ZNK9LuaScript6GetIntEPKc
; demangled: LuaScript::GetInt(char const*) const
; decoder-mode: arm
0037da30  70 40 2d e9                                      push {r4, r5, r6, lr}
0037da34  00 40 a0 e1                                      mov r4, r0
0037da38  01 00 a0 e1                                      mov r0, r1
0037da3c  01 50 a0 e1                                      mov r5, r1
0037da40  c7 f9 ff eb                                      bl #0x37c164
0037da44  20 30 94 e5                                      ldr r3, [r4, #0x20]
0037da48  1c c0 84 e2                                      add ip, r4, #0x1c
0037da4c  00 00 53 e3                                      cmp r3, #0
0037da50  13 00 00 0a                                      beq #0x37daa4
0037da54  0c 10 a0 e1                                      mov r1, ip
0037da58  00 00 00 ea                                      b #0x37da60
0037da5c  02 30 a0 e1                                      mov r3, r2
0037da60  10 20 93 e5                                      ldr r2, [r3, #0x10]
0037da64  02 00 50 e1                                      cmp r0, r2
0037da68  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
0037da6c  08 20 93 95                                      ldrls r2, [r3, #8]
0037da70  01 30 a0 81                                      movhi r3, r1
0037da74  03 10 a0 e1                                      mov r1, r3
0037da78  00 00 52 e3                                      cmp r2, #0
0037da7c  f6 ff ff 1a                                      bne #0x37da5c
0037da80  03 00 5c e1                                      cmp ip, r3
0037da84  08 00 00 0a                                      beq #0x37daac
0037da88  10 20 93 e5                                      ldr r2, [r3, #0x10]
0037da8c  02 00 50 e1                                      cmp r0, r2
0037da90  03 00 00 3a                                      blo #0x37daa4
0037da94  03 00 5c e1                                      cmp ip, r3
0037da98  03 00 00 0a                                      beq #0x37daac
0037da9c  14 00 93 e5                                      ldr r0, [r3, #0x14]
0037daa0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037daa4  0c 30 a0 e1                                      mov r3, ip
0037daa8  f9 ff ff ea                                      b #0x37da94
0037daac  04 00 a0 e1                                      mov r0, r4
0037dab0  05 10 a0 e1                                      mov r1, r5
0037dab4  00 20 a0 e3                                      mov r2, #0
0037dab8  b4 ff ff eb                                      bl #0x37d990
0037dabc  00 00 a0 e3                                      mov r0, #0
0037dac0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0037dc44, declared_size=388, range_size=388, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript11_PopVFTableERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_PopVFTable(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037dc44  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0037dc48  74 91 9f e5                                      ldr sb, [pc, #0x174]
0037dc4c  54 40 92 e5                                      ldr r4, [r2, #0x54]
0037dc50  08 d0 4d e2                                      sub sp, sp, #8
0037dc54  02 80 a0 e1                                      mov r8, r2
0037dc58  09 90 8f e0                                      add sb, pc, sb
0037dc5c  4c 70 82 e2                                      add r7, r2, #0x4c
0037dc60  34 50 82 e2                                      add r5, r2, #0x34
0037dc64  04 a0 8d e2                                      add sl, sp, #4
0037dc68  04 00 57 e1                                      cmp r7, r4
0037dc6c  18 00 00 0a                                      beq #0x37dcd4
0037dc70  28 00 94 e5                                      ldr r0, [r4, #0x28]
0037dc74  24 60 94 e5                                      ldr r6, [r4, #0x24]
0037dc78  06 60 60 e0                                      rsb r6, r0, r6
0037dc7c  00 00 56 e3                                      cmp r6, #0
0037dc80  2f 00 00 da                                      ble #0x37dd44
0037dc84  05 00 a0 e1                                      mov r0, r5
0037dc88  10 10 84 e2                                      add r1, r4, #0x10
0037dc8c  8c ff ff eb                                      bl #0x37dac4
0037dc90  14 30 84 e2                                      add r3, r4, #0x14
0037dc94  00 00 53 e1                                      cmp r3, r0
0037dc98  02 00 00 0a                                      beq #0x37dca8
0037dc9c  28 10 94 e5                                      ldr r1, [r4, #0x28]
0037dca0  24 20 94 e5                                      ldr r2, [r4, #0x24]
0037dca4  4d 4b fe eb                                      bl #0x3109e0
0037dca8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0037dcac  00 00 52 e3                                      cmp r2, #0
0037dcb0  01 00 00 1a                                      bne #0x37dcbc
0037dcb4  15 00 00 ea                                      b #0x37dd10
0037dcb8  03 20 a0 e1                                      mov r2, r3
0037dcbc  08 30 92 e5                                      ldr r3, [r2, #8]
0037dcc0  00 00 53 e3                                      cmp r3, #0
0037dcc4  fb ff ff 1a                                      bne #0x37dcb8
0037dcc8  02 40 a0 e1                                      mov r4, r2
0037dccc  04 00 57 e1                                      cmp r7, r4
0037dcd0  e6 ff ff 1a                                      bne #0x37dc70
0037dcd4  5c 30 98 e5                                      ldr r3, [r8, #0x5c]
0037dcd8  00 00 53 e3                                      cmp r3, #0
0037dcdc  07 00 00 0a                                      beq #0x37dd00
0037dce0  07 00 a0 e1                                      mov r0, r7
0037dce4  50 10 98 e5                                      ldr r1, [r8, #0x50]
0037dce8  23 f8 ff eb                                      bl #0x37bd7c
0037dcec  00 30 a0 e3                                      mov r3, #0
0037dcf0  58 70 88 e5                                      str r7, [r8, #0x58]
0037dcf4  5c 30 88 e5                                      str r3, [r8, #0x5c]
0037dcf8  54 70 88 e5                                      str r7, [r8, #0x54]
0037dcfc  50 30 88 e5                                      str r3, [r8, #0x50]
0037dd00  00 30 a0 e3                                      mov r3, #0
0037dd04  64 30 c8 e5                                      strb r3, [r8, #0x64]
0037dd08  08 d0 8d e2                                      add sp, sp, #8
0037dd0c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0037dd10  04 30 94 e5                                      ldr r3, [r4, #4]
0037dd14  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0037dd18  01 00 54 e1                                      cmp r4, r1
0037dd1c  05 00 00 1a                                      bne #0x37dd38
0037dd20  03 40 a0 e1                                      mov r4, r3
0037dd24  04 30 93 e5                                      ldr r3, [r3, #4]
0037dd28  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0037dd2c  04 00 52 e1                                      cmp r2, r4
0037dd30  fa ff ff 0a                                      beq #0x37dd20
0037dd34  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0037dd38  03 00 52 e1                                      cmp r2, r3
0037dd3c  03 40 a0 11                                      movne r4, r3
0037dd40  c8 ff ff ea                                      b #0x37dc68
0037dd44  09 10 a0 e1                                      mov r1, sb
0037dd48  06 20 a0 e1                                      mov r2, r6
0037dd4c  23 42 fe eb                                      bl #0x30e5e0
0037dd50  00 00 50 e3                                      cmp r0, #0
0037dd54  ca ff ff 1a                                      bne #0x37dc84
0037dd58  00 00 56 e3                                      cmp r6, #0
0037dd5c  c8 ff ff 1a                                      bne #0x37dc84
0037dd60  38 30 98 e5                                      ldr r3, [r8, #0x38]
0037dd64  00 00 53 e3                                      cmp r3, #0
0037dd68  10 00 94 15                                      ldrne r0, [r4, #0x10]
0037dd6c  05 10 a0 11                                      movne r1, r5
0037dd70  01 00 00 1a                                      bne #0x37dd7c
0037dd74  cb ff ff ea                                      b #0x37dca8
0037dd78  02 30 a0 e1                                      mov r3, r2
0037dd7c  10 20 93 e5                                      ldr r2, [r3, #0x10]
0037dd80  00 00 52 e1                                      cmp r2, r0
0037dd84  0c 20 93 35                                      ldrlo r2, [r3, #0xc]
0037dd88  08 20 93 25                                      ldrhs r2, [r3, #8]
0037dd8c  01 30 a0 31                                      movlo r3, r1
0037dd90  03 10 a0 e1                                      mov r1, r3
0037dd94  00 00 52 e3                                      cmp r2, #0
0037dd98  f6 ff ff 1a                                      bne #0x37dd78
0037dd9c  03 00 55 e1                                      cmp r5, r3
0037dda0  c0 ff ff 0a                                      beq #0x37dca8
0037dda4  10 20 93 e5                                      ldr r2, [r3, #0x10]
0037dda8  00 00 52 e1                                      cmp r2, r0
0037ddac  bd ff ff 8a                                      bhi #0x37dca8
0037ddb0  05 00 a0 e1                                      mov r0, r5
0037ddb4  0a 10 a0 e1                                      mov r1, sl
0037ddb8  04 30 8d e5                                      str r3, [sp, #4]
0037ddbc  21 f8 ff eb                                      bl #0x37be48
0037ddc0  b8 ff ff ea                                      b #0x37dca8
; mapping-symbol data/literal pool
0037ddc4  b0 db 54 00                                      .byte 0xb0, 0xdb, 0x54, 0x00

; FUNCTION 0x0037ddc8, declared_size=148, range_size=148, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript18_IsPlayerCharacterERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_IsPlayerCharacter(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037ddc8  80 30 9f e5                                      ldr r3, [pc, #0x80]
0037ddcc  80 20 9f e5                                      ldr r2, [pc, #0x80]
0037ddd0  70 40 2d e9                                      push {r4, r5, r6, lr}
0037ddd4  03 30 8f e0                                      add r3, pc, r3
0037ddd8  00 50 a0 e1                                      mov r5, r0
0037dddc  02 00 93 e7                                      ldr r0, [r3, r2]
0037dde0  01 40 a0 e1                                      mov r4, r1
0037dde4  01 20 a0 e3                                      mov r2, #1
0037dde8  40 00 90 e5                                      ldr r0, [r0, #0x40]
0037ddec  00 10 a0 e3                                      mov r1, #0
0037ddf0  a0 c1 ff eb                                      bl #0x36e478
0037ddf4  04 50 95 e5                                      ldr r5, [r5, #4]
0037ddf8  60 66 90 e5                                      ldr r6, [r0, #0x660]
0037ddfc  09 00 95 e8                                      ldm r5, {r0, r3}
0037de00  03 30 60 e0                                      rsb r3, r0, r3
0037de04  43 32 a0 e1                                      asr r3, r3, #4
0037de08  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037de0c  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037de10  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037de14  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037de18  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037de1c  00 00 53 e3                                      cmp r3, #0
0037de20  03 00 00 1a                                      bne #0x37de34
0037de24  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
0037de28  00 00 8f e0                                      add r0, pc, r0
0037de2c  1f 2c 0e eb                                      bl #0x708eb0
0037de30  00 00 95 e5                                      ldr r0, [r5]
0037de34  d1 75 fe eb                                      bl #0x31b580
0037de38  00 00 56 e1                                      cmp r6, r0
0037de3c  00 10 a0 13                                      movne r1, #0
0037de40  01 10 a0 03                                      moveq r1, #1
0037de44  04 00 a0 e1                                      mov r0, r4
0037de48  70 40 bd e8                                      pop {r4, r5, r6, lr}
0037de4c  64 fa ff ea                                      b #0x37c7e4
; mapping-symbol data/literal pool
0037de50  bc 6c 61 00 f4 37 00 00 40 06 54 00              .byte 0xbc, 0x6c, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x40, 0x06, 0x54, 0x00

; FUNCTION 0x0037de5c, declared_size=212, range_size=212, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript7_SetIntERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_SetInt(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037de5c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0037de60  04 40 90 e5                                      ldr r4, [r0, #4]
0037de64  00 50 a0 e1                                      mov r5, r0
0037de68  02 60 a0 e1                                      mov r6, r2
0037de6c  09 00 94 e8                                      ldm r4, {r0, r3}
0037de70  03 30 60 e0                                      rsb r3, r0, r3
0037de74  43 32 a0 e1                                      asr r3, r3, #4
0037de78  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037de7c  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037de80  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037de84  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037de88  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037de8c  00 30 63 e2                                      rsb r3, r3, #0
0037de90  01 00 53 e3                                      cmp r3, #1
0037de94  22 00 00 9a                                      bls #0x37df24
0037de98  00 00 53 e3                                      cmp r3, #0
0037de9c  1b 00 00 0a                                      beq #0x37df10
0037dea0  7d 79 fe eb                                      bl #0x31c49c
0037dea4  04 40 95 e5                                      ldr r4, [r5, #4]
0037dea8  00 70 a0 e1                                      mov r7, r0
0037deac  09 00 94 e8                                      ldm r4, {r0, r3}
0037deb0  03 30 60 e0                                      rsb r3, r0, r3
0037deb4  43 32 a0 e1                                      asr r3, r3, #4
0037deb8  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037debc  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037dec0  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037dec4  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037dec8  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037decc  00 30 63 e2                                      rsb r3, r3, #0
0037ded0  01 00 53 e3                                      cmp r3, #1
0037ded4  08 00 00 9a                                      bls #0x37defc
0037ded8  70 00 80 e2                                      add r0, r0, #0x70
0037dedc  43 77 fe eb                                      bl #0x31bbf0
0037dee0  79 41 fe eb                                      bl #0x30e4cc
0037dee4  00 30 a0 e1                                      mov r3, r0
0037dee8  07 10 a0 e1                                      mov r1, r7
0037deec  06 00 a0 e1                                      mov r0, r6
0037def0  03 20 a0 e1                                      mov r2, r3
0037def4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0037def8  a4 fe ff ea                                      b #0x37d990
0037defc  24 00 9f e5                                      ldr r0, [pc, #0x24]
0037df00  00 00 8f e0                                      add r0, pc, r0
0037df04  e9 2b 0e eb                                      bl #0x708eb0
0037df08  00 00 94 e5                                      ldr r0, [r4]
0037df0c  f1 ff ff ea                                      b #0x37ded8
0037df10  14 00 9f e5                                      ldr r0, [pc, #0x14]
0037df14  00 00 8f e0                                      add r0, pc, r0
0037df18  e4 2b 0e eb                                      bl #0x708eb0
0037df1c  00 00 94 e5                                      ldr r0, [r4]
0037df20  de ff ff ea                                      b #0x37dea0
0037df24  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0037df28  68 05 54 00 54 05 54 00                          .byte 0x68, 0x05, 0x54, 0x00, 0x54, 0x05, 0x54, 0x00

; FUNCTION 0x0037df30, declared_size=312, range_size=312, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript5_RandERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_Rand(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037df30  70 40 2d e9                                      push {r4, r5, r6, lr}
0037df34  04 50 90 e5                                      ldr r5, [r0, #4]
0037df38  01 60 a0 e1                                      mov r6, r1
0037df3c  00 40 a0 e1                                      mov r4, r0
0037df40  0a 00 95 e8                                      ldm r5, {r1, r3}
0037df44  03 30 61 e0                                      rsb r3, r1, r3
0037df48  43 32 a0 e1                                      asr r3, r3, #4
0037df4c  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037df50  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037df54  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037df58  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037df5c  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037df60  00 30 63 e2                                      rsb r3, r3, #0
0037df64  01 00 53 e3                                      cmp r3, #1
0037df68  36 00 00 9a                                      bls #0x37e048
0037df6c  00 00 53 e3                                      cmp r3, #0
0037df70  2f 00 00 0a                                      beq #0x37e034
0037df74  04 30 91 e5                                      ldr r3, [r1, #4]
0037df78  03 00 53 e3                                      cmp r3, #3
0037df7c  32 00 00 0a                                      beq #0x37e04c
0037df80  04 50 94 e5                                      ldr r5, [r4, #4]
0037df84  09 00 95 e8                                      ldm r5, {r0, r3}
0037df88  03 30 60 e0                                      rsb r3, r0, r3
0037df8c  43 32 a0 e1                                      asr r3, r3, #4
0037df90  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037df94  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037df98  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037df9c  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037dfa0  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037dfa4  00 00 53 e3                                      cmp r3, #0
0037dfa8  1c 00 00 0a                                      beq #0x37e020
0037dfac  0f 77 fe eb                                      bl #0x31bbf0
0037dfb0  45 41 fe eb                                      bl #0x30e4cc
0037dfb4  04 40 94 e5                                      ldr r4, [r4, #4]
0037dfb8  00 50 a0 e1                                      mov r5, r0
0037dfbc  09 00 94 e8                                      ldm r4, {r0, r3}
0037dfc0  03 30 60 e0                                      rsb r3, r0, r3
0037dfc4  43 32 a0 e1                                      asr r3, r3, #4
0037dfc8  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037dfcc  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037dfd0  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037dfd4  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037dfd8  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037dfdc  00 30 63 e2                                      rsb r3, r3, #0
0037dfe0  01 00 53 e3                                      cmp r3, #1
0037dfe4  08 00 00 9a                                      bls #0x37e00c
0037dfe8  70 00 80 e2                                      add r0, r0, #0x70
0037dfec  ff 76 fe eb                                      bl #0x31bbf0
0037dff0  35 41 fe eb                                      bl #0x30e4cc
0037dff4  00 00 65 e0                                      rsb r0, r5, r0
0037dff8  0b f7 ff eb                                      bl #0x37bc2c
0037dffc  05 10 80 e0                                      add r1, r0, r5
0037e000  06 00 a0 e1                                      mov r0, r6
0037e004  70 40 bd e8                                      pop {r4, r5, r6, lr}
0037e008  c5 fa ff ea                                      b #0x37cb24
0037e00c  48 00 9f e5                                      ldr r0, [pc, #0x48]
0037e010  00 00 8f e0                                      add r0, pc, r0
0037e014  a5 2b 0e eb                                      bl #0x708eb0
0037e018  00 00 94 e5                                      ldr r0, [r4]
0037e01c  f1 ff ff ea                                      b #0x37dfe8
0037e020  38 00 9f e5                                      ldr r0, [pc, #0x38]
0037e024  00 00 8f e0                                      add r0, pc, r0
0037e028  a0 2b 0e eb                                      bl #0x708eb0
0037e02c  00 00 95 e5                                      ldr r0, [r5]
0037e030  dd ff ff ea                                      b #0x37dfac
0037e034  28 00 9f e5                                      ldr r0, [pc, #0x28]
0037e038  00 00 8f e0                                      add r0, pc, r0
0037e03c  9b 2b 0e eb                                      bl #0x708eb0
0037e040  00 10 95 e5                                      ldr r1, [r5]
0037e044  ca ff ff ea                                      b #0x37df74
0037e048  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037e04c  04 00 a0 e1                                      mov r0, r4
0037e050  01 10 a0 e3                                      mov r1, #1
0037e054  a7 f6 ff eb                                      bl #0x37baf8
0037e058  c8 ff ff ea                                      b #0x37df80
; mapping-symbol data/literal pool
0037e05c  58 04 54 00 44 04 54 00 30 04 54 00              .byte 0x58, 0x04, 0x54, 0x00, 0x44, 0x04, 0x54, 0x00, 0x30, 0x04, 0x54, 0x00

; FUNCTION 0x0037e068, declared_size=316, range_size=316, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript9_DivFixedERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_DivFixed(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037e068  70 40 2d e9                                      push {r4, r5, r6, lr}
0037e06c  04 50 90 e5                                      ldr r5, [r0, #4]
0037e070  01 60 a0 e1                                      mov r6, r1
0037e074  00 40 a0 e1                                      mov r4, r0
0037e078  0a 00 95 e8                                      ldm r5, {r1, r3}
0037e07c  03 30 61 e0                                      rsb r3, r1, r3
0037e080  43 32 a0 e1                                      asr r3, r3, #4
0037e084  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037e088  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037e08c  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037e090  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037e094  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037e098  00 30 63 e2                                      rsb r3, r3, #0
0037e09c  01 00 53 e3                                      cmp r3, #1
0037e0a0  37 00 00 9a                                      bls #0x37e184
0037e0a4  00 00 53 e3                                      cmp r3, #0
0037e0a8  30 00 00 0a                                      beq #0x37e170
0037e0ac  04 30 91 e5                                      ldr r3, [r1, #4]
0037e0b0  03 00 53 e3                                      cmp r3, #3
0037e0b4  33 00 00 0a                                      beq #0x37e188
0037e0b8  04 50 94 e5                                      ldr r5, [r4, #4]
0037e0bc  09 00 95 e8                                      ldm r5, {r0, r3}
0037e0c0  03 30 60 e0                                      rsb r3, r0, r3
0037e0c4  43 32 a0 e1                                      asr r3, r3, #4
0037e0c8  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037e0cc  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037e0d0  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037e0d4  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037e0d8  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037e0dc  00 00 53 e3                                      cmp r3, #0
0037e0e0  1d 00 00 0a                                      beq #0x37e15c
0037e0e4  c1 76 fe eb                                      bl #0x31bbf0
0037e0e8  f7 40 fe eb                                      bl #0x30e4cc
0037e0ec  04 40 94 e5                                      ldr r4, [r4, #4]
0037e0f0  00 50 a0 e1                                      mov r5, r0
0037e0f4  09 00 94 e8                                      ldm r4, {r0, r3}
0037e0f8  03 30 60 e0                                      rsb r3, r0, r3
0037e0fc  43 32 a0 e1                                      asr r3, r3, #4
0037e100  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037e104  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037e108  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037e10c  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037e110  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037e114  00 30 63 e2                                      rsb r3, r3, #0
0037e118  01 00 53 e3                                      cmp r3, #1
0037e11c  09 00 00 9a                                      bls #0x37e148
0037e120  70 00 80 e2                                      add r0, r0, #0x70
0037e124  b1 76 fe eb                                      bl #0x31bbf0
0037e128  e7 40 fe eb                                      bl #0x30e4cc
0037e12c  40 14 a0 e1                                      asr r1, r0, #8
0037e130  05 00 a0 e1                                      mov r0, r5
0037e134  5a 40 fe eb                                      bl #0x30e2a4
0037e138  00 10 a0 e1                                      mov r1, r0
0037e13c  06 00 a0 e1                                      mov r0, r6
0037e140  70 40 bd e8                                      pop {r4, r5, r6, lr}
0037e144  76 fa ff ea                                      b #0x37cb24
0037e148  48 00 9f e5                                      ldr r0, [pc, #0x48]
0037e14c  00 00 8f e0                                      add r0, pc, r0
0037e150  56 2b 0e eb                                      bl #0x708eb0
0037e154  00 00 94 e5                                      ldr r0, [r4]
0037e158  f0 ff ff ea                                      b #0x37e120
0037e15c  38 00 9f e5                                      ldr r0, [pc, #0x38]
0037e160  00 00 8f e0                                      add r0, pc, r0
0037e164  51 2b 0e eb                                      bl #0x708eb0
0037e168  00 00 95 e5                                      ldr r0, [r5]
0037e16c  dc ff ff ea                                      b #0x37e0e4
0037e170  28 00 9f e5                                      ldr r0, [pc, #0x28]
0037e174  00 00 8f e0                                      add r0, pc, r0
0037e178  4c 2b 0e eb                                      bl #0x708eb0
0037e17c  00 10 95 e5                                      ldr r1, [r5]
0037e180  c9 ff ff ea                                      b #0x37e0ac
0037e184  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037e188  04 00 a0 e1                                      mov r0, r4
0037e18c  01 10 a0 e3                                      mov r1, #1
0037e190  58 f6 ff eb                                      bl #0x37baf8
0037e194  c7 ff ff ea                                      b #0x37e0b8
; mapping-symbol data/literal pool
0037e198  1c 03 54 00 08 03 54 00 f4 02 54 00              .byte 0x1c, 0x03, 0x54, 0x00, 0x08, 0x03, 0x54, 0x00, 0xf4, 0x02, 0x54, 0x00

; FUNCTION 0x0037e1a4, declared_size=308, range_size=308, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript9_MulFixedERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_MulFixed(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037e1a4  70 40 2d e9                                      push {r4, r5, r6, lr}
0037e1a8  04 50 90 e5                                      ldr r5, [r0, #4]
0037e1ac  01 60 a0 e1                                      mov r6, r1
0037e1b0  00 40 a0 e1                                      mov r4, r0
0037e1b4  0a 00 95 e8                                      ldm r5, {r1, r3}
0037e1b8  03 30 61 e0                                      rsb r3, r1, r3
0037e1bc  43 32 a0 e1                                      asr r3, r3, #4
0037e1c0  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037e1c4  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037e1c8  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037e1cc  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037e1d0  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037e1d4  00 30 63 e2                                      rsb r3, r3, #0
0037e1d8  01 00 53 e3                                      cmp r3, #1
0037e1dc  35 00 00 9a                                      bls #0x37e2b8
0037e1e0  00 00 53 e3                                      cmp r3, #0
0037e1e4  2e 00 00 0a                                      beq #0x37e2a4
0037e1e8  04 30 91 e5                                      ldr r3, [r1, #4]
0037e1ec  03 00 53 e3                                      cmp r3, #3
0037e1f0  31 00 00 0a                                      beq #0x37e2bc
0037e1f4  04 50 94 e5                                      ldr r5, [r4, #4]
0037e1f8  09 00 95 e8                                      ldm r5, {r0, r3}
0037e1fc  03 30 60 e0                                      rsb r3, r0, r3
0037e200  43 32 a0 e1                                      asr r3, r3, #4
0037e204  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037e208  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037e20c  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037e210  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037e214  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037e218  00 00 53 e3                                      cmp r3, #0
0037e21c  1b 00 00 0a                                      beq #0x37e290
0037e220  72 76 fe eb                                      bl #0x31bbf0
0037e224  a8 40 fe eb                                      bl #0x30e4cc
0037e228  04 40 94 e5                                      ldr r4, [r4, #4]
0037e22c  00 50 a0 e1                                      mov r5, r0
0037e230  09 00 94 e8                                      ldm r4, {r0, r3}
0037e234  03 30 60 e0                                      rsb r3, r0, r3
0037e238  43 32 a0 e1                                      asr r3, r3, #4
0037e23c  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037e240  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037e244  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037e248  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037e24c  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037e250  00 30 63 e2                                      rsb r3, r3, #0
0037e254  01 00 53 e3                                      cmp r3, #1
0037e258  07 00 00 9a                                      bls #0x37e27c
0037e25c  70 00 80 e2                                      add r0, r0, #0x70
0037e260  62 76 fe eb                                      bl #0x31bbf0
0037e264  98 40 fe eb                                      bl #0x30e4cc
0037e268  95 00 01 e0                                      mul r1, r5, r0
0037e26c  06 00 a0 e1                                      mov r0, r6
0037e270  41 14 a0 e1                                      asr r1, r1, #8
0037e274  70 40 bd e8                                      pop {r4, r5, r6, lr}
0037e278  29 fa ff ea                                      b #0x37cb24
0037e27c  48 00 9f e5                                      ldr r0, [pc, #0x48]
0037e280  00 00 8f e0                                      add r0, pc, r0
0037e284  09 2b 0e eb                                      bl #0x708eb0
0037e288  00 00 94 e5                                      ldr r0, [r4]
0037e28c  f2 ff ff ea                                      b #0x37e25c
0037e290  38 00 9f e5                                      ldr r0, [pc, #0x38]
0037e294  00 00 8f e0                                      add r0, pc, r0
0037e298  04 2b 0e eb                                      bl #0x708eb0
0037e29c  00 00 95 e5                                      ldr r0, [r5]
0037e2a0  de ff ff ea                                      b #0x37e220
0037e2a4  28 00 9f e5                                      ldr r0, [pc, #0x28]
0037e2a8  00 00 8f e0                                      add r0, pc, r0
0037e2ac  ff 2a 0e eb                                      bl #0x708eb0
0037e2b0  00 10 95 e5                                      ldr r1, [r5]
0037e2b4  cb ff ff ea                                      b #0x37e1e8
0037e2b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037e2bc  04 00 a0 e1                                      mov r0, r4
0037e2c0  01 10 a0 e3                                      mov r1, #1
0037e2c4  0b f6 ff eb                                      bl #0x37baf8
0037e2c8  c9 ff ff ea                                      b #0x37e1f4
; mapping-symbol data/literal pool
0037e2cc  e8 01 54 00 d4 01 54 00 c0 01 54 00              .byte 0xe8, 0x01, 0x54, 0x00, 0xd4, 0x01, 0x54, 0x00, 0xc0, 0x01, 0x54, 0x00

; FUNCTION 0x0037e2d8, declared_size=328, range_size=328, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript6_RandFERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_RandF(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037e2d8  70 40 2d e9                                      push {r4, r5, r6, lr}
0037e2dc  04 50 90 e5                                      ldr r5, [r0, #4]
0037e2e0  01 60 a0 e1                                      mov r6, r1
0037e2e4  00 40 a0 e1                                      mov r4, r0
0037e2e8  0a 00 95 e8                                      ldm r5, {r1, r3}
0037e2ec  03 30 61 e0                                      rsb r3, r1, r3
0037e2f0  43 32 a0 e1                                      asr r3, r3, #4
0037e2f4  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037e2f8  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037e2fc  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037e300  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037e304  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037e308  00 30 63 e2                                      rsb r3, r3, #0
0037e30c  01 00 53 e3                                      cmp r3, #1
0037e310  3a 00 00 9a                                      bls #0x37e400
0037e314  00 00 53 e3                                      cmp r3, #0
0037e318  33 00 00 0a                                      beq #0x37e3ec
0037e31c  04 30 91 e5                                      ldr r3, [r1, #4]
0037e320  03 00 53 e3                                      cmp r3, #3
0037e324  36 00 00 0a                                      beq #0x37e404
0037e328  04 50 94 e5                                      ldr r5, [r4, #4]
0037e32c  09 00 95 e8                                      ldm r5, {r0, r3}
0037e330  03 30 60 e0                                      rsb r3, r0, r3
0037e334  43 32 a0 e1                                      asr r3, r3, #4
0037e338  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037e33c  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037e340  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037e344  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037e348  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037e34c  00 00 53 e3                                      cmp r3, #0
0037e350  20 00 00 0a                                      beq #0x37e3d8
0037e354  25 76 fe eb                                      bl #0x31bbf0
0037e358  04 40 94 e5                                      ldr r4, [r4, #4]
0037e35c  00 50 a0 e1                                      mov r5, r0
0037e360  09 00 94 e8                                      ldm r4, {r0, r3}
0037e364  03 30 60 e0                                      rsb r3, r0, r3
0037e368  43 32 a0 e1                                      asr r3, r3, #4
0037e36c  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037e370  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037e374  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037e378  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037e37c  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037e380  00 30 63 e2                                      rsb r3, r3, #0
0037e384  01 00 53 e3                                      cmp r3, #1
0037e388  0d 00 00 9a                                      bls #0x37e3c4
0037e38c  70 00 80 e2                                      add r0, r0, #0x70
0037e390  16 76 fe eb                                      bl #0x31bbf0
0037e394  05 10 a0 e1                                      mov r1, r5
0037e398  03 40 fe eb                                      bl #0x30e3ac
0037e39c  4a 40 fe eb                                      bl #0x30e4cc
0037e3a0  21 f6 ff eb                                      bl #0x37bc2c
0037e3a4  6e 41 fe eb                                      bl #0x30e964
0037e3a8  00 10 a0 e1                                      mov r1, r0
0037e3ac  05 00 a0 e1                                      mov r0, r5
0037e3b0  fb 41 fe eb                                      bl #0x30eba4
0037e3b4  00 10 a0 e1                                      mov r1, r0
0037e3b8  06 00 a0 e1                                      mov r0, r6
0037e3bc  70 40 bd e8                                      pop {r4, r5, r6, lr}
0037e3c0  3d fa ff ea                                      b #0x37ccbc
0037e3c4  48 00 9f e5                                      ldr r0, [pc, #0x48]
0037e3c8  00 00 8f e0                                      add r0, pc, r0
0037e3cc  b7 2a 0e eb                                      bl #0x708eb0
0037e3d0  00 00 94 e5                                      ldr r0, [r4]
0037e3d4  ec ff ff ea                                      b #0x37e38c
0037e3d8  38 00 9f e5                                      ldr r0, [pc, #0x38]
0037e3dc  00 00 8f e0                                      add r0, pc, r0
0037e3e0  b2 2a 0e eb                                      bl #0x708eb0
0037e3e4  00 00 95 e5                                      ldr r0, [r5]
0037e3e8  d9 ff ff ea                                      b #0x37e354
0037e3ec  28 00 9f e5                                      ldr r0, [pc, #0x28]
0037e3f0  00 00 8f e0                                      add r0, pc, r0
0037e3f4  ad 2a 0e eb                                      bl #0x708eb0
0037e3f8  00 10 95 e5                                      ldr r1, [r5]
0037e3fc  c6 ff ff ea                                      b #0x37e31c
0037e400  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037e404  04 00 a0 e1                                      mov r0, r4
0037e408  01 10 a0 e3                                      mov r1, #1
0037e40c  b9 f5 ff eb                                      bl #0x37baf8
0037e410  c4 ff ff ea                                      b #0x37e328
; mapping-symbol data/literal pool
0037e414  a0 00 54 00 8c 00 54 00 78 00 54 00              .byte 0xa0, 0x00, 0x54, 0x00, 0x8c, 0x00, 0x54, 0x00, 0x78, 0x00, 0x54, 0x00

; FUNCTION 0x0037e420, declared_size=344, range_size=344, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript10_PlayMusicERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_PlayMusic(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037e420  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0037e424  04 50 90 e5                                      ldr r5, [r0, #4]
0037e428  00 60 a0 e1                                      mov r6, r0
0037e42c  28 41 9f e5                                      ldr r4, [pc, #0x128]
0037e430  09 00 95 e8                                      ldm r5, {r0, r3}
0037e434  04 40 8f e0                                      add r4, pc, r4
0037e438  0c d0 4d e2                                      sub sp, sp, #0xc
0037e43c  03 30 60 e0                                      rsb r3, r0, r3
0037e440  43 32 a0 e1                                      asr r3, r3, #4
0037e444  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037e448  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037e44c  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037e450  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037e454  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037e458  00 00 53 e3                                      cmp r3, #0
0037e45c  03 00 00 1a                                      bne #0x37e470
0037e460  f8 00 9f e5                                      ldr r0, [pc, #0xf8]
0037e464  00 00 8f e0                                      add r0, pc, r0
0037e468  90 2a 0e eb                                      bl #0x708eb0
0037e46c  00 00 95 e5                                      ldr r0, [r5]
0037e470  09 78 fe eb                                      bl #0x31c49c
0037e474  82 f5 ff eb                                      bl #0x37ba84
0037e478  01 00 70 e3                                      cmn r0, #1
0037e47c  00 50 a0 e1                                      mov r5, r0
0037e480  1f 00 00 0a                                      beq #0x37e504
0037e484  04 70 96 e5                                      ldr r7, [r6, #4]
0037e488  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
0037e48c  09 00 97 e8                                      ldm r7, {r0, r3}
0037e490  02 20 94 e7                                      ldr r2, [r4, r2]
0037e494  03 30 60 e0                                      rsb r3, r0, r3
0037e498  43 32 a0 e1                                      asr r3, r3, #4
0037e49c  00 60 92 e5                                      ldr r6, [r2]
0037e4a0  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037e4a4  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037e4a8  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037e4ac  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037e4b0  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037e4b4  00 30 63 e2                                      rsb r3, r3, #0
0037e4b8  01 00 53 e3                                      cmp r3, #1
0037e4bc  12 00 00 9a                                      bls #0x37e50c
0037e4c0  70 00 80 e2                                      add r0, r0, #0x70
0037e4c4  c9 75 fe eb                                      bl #0x31bbf0
0037e4c8  ff 3f fe eb                                      bl #0x30e4cc
0037e4cc  05 10 a0 e1                                      mov r1, r5
0037e4d0  00 00 8d e5                                      str r0, [sp]
0037e4d4  01 20 a0 e3                                      mov r2, #1
0037e4d8  06 00 a0 e1                                      mov r0, r6
0037e4dc  00 30 a0 e3                                      mov r3, #0
0037e4e0  24 b6 ff eb                                      bl #0x36bd78
0037e4e4  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0037e4e8  03 00 94 e7                                      ldr r0, [r4, r3]
0037e4ec  28 84 fe eb                                      bl #0x31f594
0037e4f0  00 00 50 e3                                      cmp r0, #0
0037e4f4  02 00 00 0a                                      beq #0x37e504
0037e4f8  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
0037e4fc  03 00 55 e1                                      cmp r5, r3
0037e500  06 00 00 0a                                      beq #0x37e520
0037e504  0c d0 8d e2                                      add sp, sp, #0xc
0037e508  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0037e50c  58 00 9f e5                                      ldr r0, [pc, #0x58]
0037e510  00 00 8f e0                                      add r0, pc, r0
0037e514  65 2a 0e eb                                      bl #0x708eb0
0037e518  00 00 97 e5                                      ldr r0, [r7]
0037e51c  e7 ff ff ea                                      b #0x37e4c0
0037e520  31 30 d6 e5                                      ldrb r3, [r6, #0x31]
0037e524  00 00 53 e3                                      cmp r3, #0
0037e528  05 00 00 1a                                      bne #0x37e544
0037e52c  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0037e530  06 00 a0 e1                                      mov r0, r6
0037e534  01 10 8f e0                                      add r1, pc, r1
0037e538  0c d0 8d e2                                      add sp, sp, #0xc
0037e53c  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
0037e540  f3 ab ff ea                                      b #0x369514
0037e544  28 10 9f e5                                      ldr r1, [pc, #0x28]
0037e548  06 00 a0 e1                                      mov r0, r6
0037e54c  01 10 8f e0                                      add r1, pc, r1
0037e550  0c d0 8d e2                                      add sp, sp, #0xc
0037e554  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
0037e558  ed ab ff ea                                      b #0x369514
; mapping-symbol data/literal pool
0037e55c  5c 66 61 00 04 00 54 00 a4 0d 00 00 f4 37 00 00  .byte 0x5c, 0x66, 0x61, 0x00, 0x04, 0x00, 0x54, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
0037e56c  58 ff 53 00 f4 36 54 00 d4 36 54 00              .byte 0x58, 0xff, 0x53, 0x00, 0xf4, 0x36, 0x54, 0x00, 0xd4, 0x36, 0x54, 0x00

; FUNCTION 0x0037e578, declared_size=440, range_size=440, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript10_PlaySoundERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_PlaySound(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037e578  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0037e57c  04 60 90 e5                                      ldr r6, [r0, #4]
0037e580  00 50 a0 e1                                      mov r5, r0
0037e584  8c 41 9f e5                                      ldr r4, [pc, #0x18c]
0037e588  09 00 96 e8                                      ldm r6, {r0, r3}
0037e58c  04 40 8f e0                                      add r4, pc, r4
0037e590  08 d0 4d e2                                      sub sp, sp, #8
0037e594  03 30 60 e0                                      rsb r3, r0, r3
0037e598  43 32 a0 e1                                      asr r3, r3, #4
0037e59c  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037e5a0  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037e5a4  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037e5a8  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037e5ac  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037e5b0  00 30 63 e2                                      rsb r3, r3, #0
0037e5b4  03 00 53 e3                                      cmp r3, #3
0037e5b8  03 00 00 8a                                      bhi #0x37e5cc
0037e5bc  58 01 9f e5                                      ldr r0, [pc, #0x158]
0037e5c0  00 00 8f e0                                      add r0, pc, r0
0037e5c4  39 2a 0e eb                                      bl #0x708eb0
0037e5c8  00 00 96 e5                                      ldr r0, [r6]
0037e5cc  15 0e 80 e2                                      add r0, r0, #0x150
0037e5d0  aa 75 fe eb                                      bl #0x31bc80
0037e5d4  00 00 50 e3                                      cmp r0, #0
0037e5d8  48 00 00 1a                                      bne #0x37e700
0037e5dc  04 60 95 e5                                      ldr r6, [r5, #4]
0037e5e0  09 00 96 e8                                      ldm r6, {r0, r3}
0037e5e4  03 30 60 e0                                      rsb r3, r0, r3
0037e5e8  43 32 a0 e1                                      asr r3, r3, #4
0037e5ec  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037e5f0  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037e5f4  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037e5f8  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037e5fc  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037e600  00 00 53 e3                                      cmp r3, #0
0037e604  03 00 00 1a                                      bne #0x37e618
0037e608  10 01 9f e5                                      ldr r0, [pc, #0x110]
0037e60c  00 00 8f e0                                      add r0, pc, r0
0037e610  26 2a 0e eb                                      bl #0x708eb0
0037e614  00 00 96 e5                                      ldr r0, [r6]
0037e618  9f 77 fe eb                                      bl #0x31c49c
0037e61c  18 f5 ff eb                                      bl #0x37ba84
0037e620  01 00 70 e3                                      cmn r0, #1
0037e624  00 70 a0 e1                                      mov r7, r0
0037e628  28 00 00 0a                                      beq #0x37e6d0
0037e62c  04 80 95 e5                                      ldr r8, [r5, #4]
0037e630  ec 20 9f e5                                      ldr r2, [pc, #0xec]
0037e634  09 00 98 e8                                      ldm r8, {r0, r3}
0037e638  02 20 94 e7                                      ldr r2, [r4, r2]
0037e63c  03 30 60 e0                                      rsb r3, r0, r3
0037e640  43 32 a0 e1                                      asr r3, r3, #4
0037e644  00 60 92 e5                                      ldr r6, [r2]
0037e648  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037e64c  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037e650  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037e654  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037e658  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037e65c  00 30 63 e2                                      rsb r3, r3, #0
0037e660  01 00 53 e3                                      cmp r3, #1
0037e664  20 00 00 9a                                      bls #0x37e6ec
0037e668  70 00 80 e2                                      add r0, r0, #0x70
0037e66c  83 75 fe eb                                      bl #0x31bc80
0037e670  04 50 95 e5                                      ldr r5, [r5, #4]
0037e674  00 40 a0 e1                                      mov r4, r0
0037e678  09 00 95 e8                                      ldm r5, {r0, r3}
0037e67c  03 30 60 e0                                      rsb r3, r0, r3
0037e680  43 32 a0 e1                                      asr r3, r3, #4
0037e684  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037e688  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037e68c  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037e690  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037e694  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037e698  00 30 63 e2                                      rsb r3, r3, #0
0037e69c  02 00 53 e3                                      cmp r3, #2
0037e6a0  0c 00 00 9a                                      bls #0x37e6d8
0037e6a4  e0 00 80 e2                                      add r0, r0, #0xe0
0037e6a8  50 75 fe eb                                      bl #0x31bbf0
0037e6ac  86 3f fe eb                                      bl #0x30e4cc
0037e6b0  00 c0 a0 e3                                      mov ip, #0
0037e6b4  00 30 a0 e1                                      mov r3, r0
0037e6b8  07 10 a0 e1                                      mov r1, r7
0037e6bc  06 00 a0 e1                                      mov r0, r6
0037e6c0  04 20 a0 e1                                      mov r2, r4
0037e6c4  04 c0 8d e5                                      str ip, [sp, #4]
0037e6c8  00 c0 8d e5                                      str ip, [sp]
0037e6cc  4e b4 ff eb                                      bl #0x36b80c
0037e6d0  08 d0 8d e2                                      add sp, sp, #8
0037e6d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0037e6d8  48 00 9f e5                                      ldr r0, [pc, #0x48]
0037e6dc  00 00 8f e0                                      add r0, pc, r0
0037e6e0  f2 29 0e eb                                      bl #0x708eb0
0037e6e4  00 00 95 e5                                      ldr r0, [r5]
0037e6e8  ed ff ff ea                                      b #0x37e6a4
0037e6ec  38 00 9f e5                                      ldr r0, [pc, #0x38]
0037e6f0  00 00 8f e0                                      add r0, pc, r0
0037e6f4  ed 29 0e eb                                      bl #0x708eb0
0037e6f8  00 00 98 e5                                      ldr r0, [r8]
0037e6fc  d9 ff ff ea                                      b #0x37e668
0037e700  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0037e704  00 10 a0 e3                                      mov r1, #0
0037e708  03 30 94 e7                                      ldr r3, [r4, r3]
0037e70c  00 00 93 e5                                      ldr r0, [r3]
0037e710  a2 ae ff eb                                      bl #0x36a1a0
0037e714  b0 ff ff ea                                      b #0x37e5dc
; mapping-symbol data/literal pool
0037e718  04 65 61 00 a8 fe 53 00 5c fe 53 00 a4 0d 00 00  .byte 0x04, 0x65, 0x61, 0x00, 0xa8, 0xfe, 0x53, 0x00, 0x5c, 0xfe, 0x53, 0x00, 0xa4, 0x0d, 0x00, 0x00
0037e728  8c fd 53 00 78 fd 53 00                          .byte 0x8c, 0xfd, 0x53, 0x00, 0x78, 0xfd, 0x53, 0x00

; FUNCTION 0x0037e730, declared_size=228, range_size=228, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript10_StopSoundERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_StopSound(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037e730  70 40 2d e9                                      push {r4, r5, r6, lr}
0037e734  04 50 90 e5                                      ldr r5, [r0, #4]
0037e738  00 60 a0 e1                                      mov r6, r0
0037e73c  c0 40 9f e5                                      ldr r4, [pc, #0xc0]
0037e740  09 00 95 e8                                      ldm r5, {r0, r3}
0037e744  04 40 8f e0                                      add r4, pc, r4
0037e748  03 30 60 e0                                      rsb r3, r0, r3
0037e74c  43 32 a0 e1                                      asr r3, r3, #4
0037e750  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037e754  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037e758  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037e75c  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037e760  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037e764  00 00 53 e3                                      cmp r3, #0
0037e768  03 00 00 1a                                      bne #0x37e77c
0037e76c  94 00 9f e5                                      ldr r0, [pc, #0x94]
0037e770  00 00 8f e0                                      add r0, pc, r0
0037e774  cd 29 0e eb                                      bl #0x708eb0
0037e778  00 00 95 e5                                      ldr r0, [r5]
0037e77c  46 77 fe eb                                      bl #0x31c49c
0037e780  bf f4 ff eb                                      bl #0x37ba84
0037e784  01 00 70 e3                                      cmn r0, #1
0037e788  00 50 a0 e1                                      mov r5, r0
0037e78c  1b 00 00 0a                                      beq #0x37e800
0037e790  04 60 96 e5                                      ldr r6, [r6, #4]
0037e794  70 20 9f e5                                      ldr r2, [pc, #0x70]
0037e798  09 00 96 e8                                      ldm r6, {r0, r3}
0037e79c  02 20 94 e7                                      ldr r2, [r4, r2]
0037e7a0  03 30 60 e0                                      rsb r3, r0, r3
0037e7a4  43 32 a0 e1                                      asr r3, r3, #4
0037e7a8  00 40 92 e5                                      ldr r4, [r2]
0037e7ac  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037e7b0  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037e7b4  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037e7b8  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037e7bc  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037e7c0  00 30 63 e2                                      rsb r3, r3, #0
0037e7c4  01 00 53 e3                                      cmp r3, #1
0037e7c8  07 00 00 9a                                      bls #0x37e7ec
0037e7cc  70 00 80 e2                                      add r0, r0, #0x70
0037e7d0  06 75 fe eb                                      bl #0x31bbf0
0037e7d4  3c 3f fe eb                                      bl #0x30e4cc
0037e7d8  05 10 a0 e1                                      mov r1, r5
0037e7dc  00 20 a0 e1                                      mov r2, r0
0037e7e0  04 00 a0 e1                                      mov r0, r4
0037e7e4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0037e7e8  ff ad ff ea                                      b #0x369fec
0037e7ec  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
0037e7f0  00 00 8f e0                                      add r0, pc, r0
0037e7f4  ad 29 0e eb                                      bl #0x708eb0
0037e7f8  00 00 96 e5                                      ldr r0, [r6]
0037e7fc  f2 ff ff ea                                      b #0x37e7cc
0037e800  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0037e804  4c 63 61 00 f8 fc 53 00 a4 0d 00 00 78 fc 53 00  .byte 0x4c, 0x63, 0x61, 0x00, 0xf8, 0xfc, 0x53, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0x78, 0xfc, 0x53, 0x00

; FUNCTION 0x0037e814, declared_size=472, range_size=472, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript6_BitOrERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_BitOr(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037e814  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0037e818  04 40 90 e5                                      ldr r4, [r0, #4]
0037e81c  01 a0 a0 e1                                      mov sl, r1
0037e820  04 d0 4d e2                                      sub sp, sp, #4
0037e824  0c 00 94 e8                                      ldm r4, {r2, r3}
0037e828  00 50 a0 e1                                      mov r5, r0
0037e82c  03 30 62 e0                                      rsb r3, r2, r3
0037e830  43 12 a0 e1                                      asr r1, r3, #4
0037e834  81 81 81 e0                                      add r8, r1, r1, lsl #3
0037e838  08 83 88 e0                                      add r8, r8, r8, lsl #6
0037e83c  88 81 81 e0                                      add r8, r1, r8, lsl #3
0037e840  88 87 88 e0                                      add r8, r8, r8, lsl #15
0037e844  88 81 81 e0                                      add r8, r1, r8, lsl #3
0037e848  00 80 68 e2                                      rsb r8, r8, #0
0037e84c  01 00 58 e3                                      cmp r8, #1
0037e850  60 00 00 9a                                      bls #0x37e9d8
0037e854  84 91 9f e5                                      ldr sb, [pc, #0x184]
0037e858  00 70 a0 e3                                      mov r7, #0
0037e85c  07 60 a0 e1                                      mov r6, r7
0037e860  09 90 8f e0                                      add sb, pc, sb
0037e864  02 00 00 ea                                      b #0x37e874
0037e868  04 40 95 e5                                      ldr r4, [r5, #4]
0037e86c  0c 00 94 e8                                      ldm r4, {r2, r3}
0037e870  03 30 62 e0                                      rsb r3, r2, r3
0037e874  43 32 a0 e1                                      asr r3, r3, #4
0037e878  83 11 83 e0                                      add r1, r3, r3, lsl #3
0037e87c  01 13 81 e0                                      add r1, r1, r1, lsl #6
0037e880  81 11 83 e0                                      add r1, r3, r1, lsl #3
0037e884  81 17 81 e0                                      add r1, r1, r1, lsl #15
0037e888  81 31 83 e0                                      add r3, r3, r1, lsl #3
0037e88c  00 30 63 e2                                      rsb r3, r3, #0
0037e890  03 00 56 e1                                      cmp r6, r3
0037e894  01 60 86 e2                                      add r6, r6, #1
0037e898  02 00 00 3a                                      blo #0x37e8a8
0037e89c  09 00 a0 e1                                      mov r0, sb
0037e8a0  82 29 0e eb                                      bl #0x708eb0
0037e8a4  00 20 94 e5                                      ldr r2, [r4]
0037e8a8  07 20 82 e0                                      add r2, r2, r7
0037e8ac  04 30 92 e5                                      ldr r3, [r2, #4]
0037e8b0  70 70 87 e2                                      add r7, r7, #0x70
0037e8b4  03 00 53 e3                                      cmp r3, #3
0037e8b8  46 00 00 1a                                      bne #0x37e9d8
0037e8bc  08 00 56 e1                                      cmp r6, r8
0037e8c0  e8 ff ff 1a                                      bne #0x37e868
0037e8c4  04 40 95 e5                                      ldr r4, [r5, #4]
0037e8c8  09 00 94 e8                                      ldm r4, {r0, r3}
0037e8cc  03 30 60 e0                                      rsb r3, r0, r3
0037e8d0  43 32 a0 e1                                      asr r3, r3, #4
0037e8d4  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037e8d8  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037e8dc  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037e8e0  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037e8e4  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037e8e8  00 00 53 e3                                      cmp r3, #0
0037e8ec  03 00 00 1a                                      bne #0x37e900
0037e8f0  ec 00 9f e5                                      ldr r0, [pc, #0xec]
0037e8f4  00 00 8f e0                                      add r0, pc, r0
0037e8f8  6c 29 0e eb                                      bl #0x708eb0
0037e8fc  00 00 94 e5                                      ldr r0, [r4]
0037e900  ba 74 fe eb                                      bl #0x31bbf0
0037e904  f0 3e fe eb                                      bl #0x30e4cc
0037e908  04 20 95 e5                                      ldr r2, [r5, #4]
0037e90c  00 80 a0 e1                                      mov r8, r0
0037e910  0c 00 92 e8                                      ldm r2, {r2, r3}
0037e914  03 30 62 e0                                      rsb r3, r2, r3
0037e918  43 32 a0 e1                                      asr r3, r3, #4
0037e91c  83 91 83 e0                                      add sb, r3, r3, lsl #3
0037e920  09 93 89 e0                                      add sb, sb, sb, lsl #6
0037e924  89 91 83 e0                                      add sb, r3, sb, lsl #3
0037e928  89 97 89 e0                                      add sb, sb, sb, lsl #15
0037e92c  89 91 83 e0                                      add sb, r3, sb, lsl #3
0037e930  00 90 69 e2                                      rsb sb, sb, #0
0037e934  01 00 59 e3                                      cmp sb, #1
0037e938  21 00 00 9a                                      bls #0x37e9c4
0037e93c  a4 b0 9f e5                                      ldr fp, [pc, #0xa4]
0037e940  70 70 a0 e3                                      mov r7, #0x70
0037e944  01 40 a0 e3                                      mov r4, #1
0037e948  0b b0 8f e0                                      add fp, pc, fp
0037e94c  07 00 82 e0                                      add r0, r2, r7
0037e950  a6 74 fe eb                                      bl #0x31bbf0
0037e954  dc 3e fe eb                                      bl #0x30e4cc
0037e958  01 40 84 e2                                      add r4, r4, #1
0037e95c  09 00 54 e1                                      cmp r4, sb
0037e960  00 80 88 e1                                      orr r8, r8, r0
0037e964  16 00 00 0a                                      beq #0x37e9c4
0037e968  04 60 95 e5                                      ldr r6, [r5, #4]
0037e96c  0b 00 a0 e1                                      mov r0, fp
0037e970  70 70 87 e2                                      add r7, r7, #0x70
0037e974  0c 00 96 e8                                      ldm r6, {r2, r3}
0037e978  03 30 62 e0                                      rsb r3, r2, r3
0037e97c  43 32 a0 e1                                      asr r3, r3, #4
0037e980  83 11 83 e0                                      add r1, r3, r3, lsl #3
0037e984  01 13 81 e0                                      add r1, r1, r1, lsl #6
0037e988  81 11 83 e0                                      add r1, r3, r1, lsl #3
0037e98c  81 17 81 e0                                      add r1, r1, r1, lsl #15
0037e990  81 31 83 e0                                      add r3, r3, r1, lsl #3
0037e994  00 30 63 e2                                      rsb r3, r3, #0
0037e998  03 00 54 e1                                      cmp r4, r3
0037e99c  ea ff ff 3a                                      blo #0x37e94c
0037e9a0  42 29 0e eb                                      bl #0x708eb0
0037e9a4  00 20 96 e5                                      ldr r2, [r6]
0037e9a8  01 40 84 e2                                      add r4, r4, #1
0037e9ac  07 00 82 e0                                      add r0, r2, r7
0037e9b0  8e 74 fe eb                                      bl #0x31bbf0
0037e9b4  c4 3e fe eb                                      bl #0x30e4cc
0037e9b8  09 00 54 e1                                      cmp r4, sb
0037e9bc  00 80 88 e1                                      orr r8, r8, r0
0037e9c0  e8 ff ff 1a                                      bne #0x37e968
0037e9c4  0a 00 a0 e1                                      mov r0, sl
0037e9c8  08 10 a0 e1                                      mov r1, r8
0037e9cc  04 d0 8d e2                                      add sp, sp, #4
0037e9d0  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0037e9d4  52 f8 ff ea                                      b #0x37cb24
0037e9d8  04 d0 8d e2                                      add sp, sp, #4
0037e9dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0037e9e0  08 fc 53 00 74 fb 53 00 20 fb 53 00              .byte 0x08, 0xfc, 0x53, 0x00, 0x74, 0xfb, 0x53, 0x00, 0x20, 0xfb, 0x53, 0x00

; FUNCTION 0x0037e9ec, declared_size=472, range_size=472, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript7_BitAndERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_BitAnd(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037e9ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0037e9f0  04 40 90 e5                                      ldr r4, [r0, #4]
0037e9f4  01 a0 a0 e1                                      mov sl, r1
0037e9f8  04 d0 4d e2                                      sub sp, sp, #4
0037e9fc  0c 00 94 e8                                      ldm r4, {r2, r3}
0037ea00  00 50 a0 e1                                      mov r5, r0
0037ea04  03 30 62 e0                                      rsb r3, r2, r3
0037ea08  43 12 a0 e1                                      asr r1, r3, #4
0037ea0c  81 81 81 e0                                      add r8, r1, r1, lsl #3
0037ea10  08 83 88 e0                                      add r8, r8, r8, lsl #6
0037ea14  88 81 81 e0                                      add r8, r1, r8, lsl #3
0037ea18  88 87 88 e0                                      add r8, r8, r8, lsl #15
0037ea1c  88 81 81 e0                                      add r8, r1, r8, lsl #3
0037ea20  00 80 68 e2                                      rsb r8, r8, #0
0037ea24  01 00 58 e3                                      cmp r8, #1
0037ea28  60 00 00 9a                                      bls #0x37ebb0
0037ea2c  84 91 9f e5                                      ldr sb, [pc, #0x184]
0037ea30  00 70 a0 e3                                      mov r7, #0
0037ea34  07 60 a0 e1                                      mov r6, r7
0037ea38  09 90 8f e0                                      add sb, pc, sb
0037ea3c  02 00 00 ea                                      b #0x37ea4c
0037ea40  04 40 95 e5                                      ldr r4, [r5, #4]
0037ea44  0c 00 94 e8                                      ldm r4, {r2, r3}
0037ea48  03 30 62 e0                                      rsb r3, r2, r3
0037ea4c  43 32 a0 e1                                      asr r3, r3, #4
0037ea50  83 11 83 e0                                      add r1, r3, r3, lsl #3
0037ea54  01 13 81 e0                                      add r1, r1, r1, lsl #6
0037ea58  81 11 83 e0                                      add r1, r3, r1, lsl #3
0037ea5c  81 17 81 e0                                      add r1, r1, r1, lsl #15
0037ea60  81 31 83 e0                                      add r3, r3, r1, lsl #3
0037ea64  00 30 63 e2                                      rsb r3, r3, #0
0037ea68  03 00 56 e1                                      cmp r6, r3
0037ea6c  01 60 86 e2                                      add r6, r6, #1
0037ea70  02 00 00 3a                                      blo #0x37ea80
0037ea74  09 00 a0 e1                                      mov r0, sb
0037ea78  0c 29 0e eb                                      bl #0x708eb0
0037ea7c  00 20 94 e5                                      ldr r2, [r4]
0037ea80  07 20 82 e0                                      add r2, r2, r7
0037ea84  04 30 92 e5                                      ldr r3, [r2, #4]
0037ea88  70 70 87 e2                                      add r7, r7, #0x70
0037ea8c  03 00 53 e3                                      cmp r3, #3
0037ea90  46 00 00 1a                                      bne #0x37ebb0
0037ea94  08 00 56 e1                                      cmp r6, r8
0037ea98  e8 ff ff 1a                                      bne #0x37ea40
0037ea9c  04 40 95 e5                                      ldr r4, [r5, #4]
0037eaa0  09 00 94 e8                                      ldm r4, {r0, r3}
0037eaa4  03 30 60 e0                                      rsb r3, r0, r3
0037eaa8  43 32 a0 e1                                      asr r3, r3, #4
0037eaac  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037eab0  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037eab4  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037eab8  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037eabc  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037eac0  00 00 53 e3                                      cmp r3, #0
0037eac4  03 00 00 1a                                      bne #0x37ead8
0037eac8  ec 00 9f e5                                      ldr r0, [pc, #0xec]
0037eacc  00 00 8f e0                                      add r0, pc, r0
0037ead0  f6 28 0e eb                                      bl #0x708eb0
0037ead4  00 00 94 e5                                      ldr r0, [r4]
0037ead8  44 74 fe eb                                      bl #0x31bbf0
0037eadc  7a 3e fe eb                                      bl #0x30e4cc
0037eae0  04 20 95 e5                                      ldr r2, [r5, #4]
0037eae4  00 80 a0 e1                                      mov r8, r0
0037eae8  0c 00 92 e8                                      ldm r2, {r2, r3}
0037eaec  03 30 62 e0                                      rsb r3, r2, r3
0037eaf0  43 32 a0 e1                                      asr r3, r3, #4
0037eaf4  83 91 83 e0                                      add sb, r3, r3, lsl #3
0037eaf8  09 93 89 e0                                      add sb, sb, sb, lsl #6
0037eafc  89 91 83 e0                                      add sb, r3, sb, lsl #3
0037eb00  89 97 89 e0                                      add sb, sb, sb, lsl #15
0037eb04  89 91 83 e0                                      add sb, r3, sb, lsl #3
0037eb08  00 90 69 e2                                      rsb sb, sb, #0
0037eb0c  01 00 59 e3                                      cmp sb, #1
0037eb10  21 00 00 9a                                      bls #0x37eb9c
0037eb14  a4 b0 9f e5                                      ldr fp, [pc, #0xa4]
0037eb18  70 70 a0 e3                                      mov r7, #0x70
0037eb1c  01 40 a0 e3                                      mov r4, #1
0037eb20  0b b0 8f e0                                      add fp, pc, fp
0037eb24  07 00 82 e0                                      add r0, r2, r7
0037eb28  30 74 fe eb                                      bl #0x31bbf0
0037eb2c  66 3e fe eb                                      bl #0x30e4cc
0037eb30  01 40 84 e2                                      add r4, r4, #1
0037eb34  09 00 54 e1                                      cmp r4, sb
0037eb38  00 80 08 e0                                      and r8, r8, r0
0037eb3c  16 00 00 0a                                      beq #0x37eb9c
0037eb40  04 60 95 e5                                      ldr r6, [r5, #4]
0037eb44  0b 00 a0 e1                                      mov r0, fp
0037eb48  70 70 87 e2                                      add r7, r7, #0x70
0037eb4c  0c 00 96 e8                                      ldm r6, {r2, r3}
0037eb50  03 30 62 e0                                      rsb r3, r2, r3
0037eb54  43 32 a0 e1                                      asr r3, r3, #4
0037eb58  83 11 83 e0                                      add r1, r3, r3, lsl #3
0037eb5c  01 13 81 e0                                      add r1, r1, r1, lsl #6
0037eb60  81 11 83 e0                                      add r1, r3, r1, lsl #3
0037eb64  81 17 81 e0                                      add r1, r1, r1, lsl #15
0037eb68  81 31 83 e0                                      add r3, r3, r1, lsl #3
0037eb6c  00 30 63 e2                                      rsb r3, r3, #0
0037eb70  03 00 54 e1                                      cmp r4, r3
0037eb74  ea ff ff 3a                                      blo #0x37eb24
0037eb78  cc 28 0e eb                                      bl #0x708eb0
0037eb7c  00 20 96 e5                                      ldr r2, [r6]
0037eb80  01 40 84 e2                                      add r4, r4, #1
0037eb84  07 00 82 e0                                      add r0, r2, r7
0037eb88  18 74 fe eb                                      bl #0x31bbf0
0037eb8c  4e 3e fe eb                                      bl #0x30e4cc
0037eb90  09 00 54 e1                                      cmp r4, sb
0037eb94  00 80 08 e0                                      and r8, r8, r0
0037eb98  e8 ff ff 1a                                      bne #0x37eb40
0037eb9c  0a 00 a0 e1                                      mov r0, sl
0037eba0  08 10 a0 e1                                      mov r1, r8
0037eba4  04 d0 8d e2                                      add sp, sp, #4
0037eba8  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0037ebac  dc f7 ff ea                                      b #0x37cb24
0037ebb0  04 d0 8d e2                                      add sp, sp, #4
0037ebb4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0037ebb8  30 fa 53 00 9c f9 53 00 48 f9 53 00              .byte 0x30, 0xfa, 0x53, 0x00, 0x9c, 0xf9, 0x53, 0x00, 0x48, 0xf9, 0x53, 0x00

; FUNCTION 0x0037ebc4, declared_size=80, range_size=80, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript8_ToFixedERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_ToFixed(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037ebc4  10 40 2d e9                                      push {r4, lr}
0037ebc8  04 30 90 e5                                      ldr r3, [r0, #4]
0037ebcc  01 40 a0 e1                                      mov r4, r1
0037ebd0  05 00 93 e8                                      ldm r3, {r0, r2}
0037ebd4  02 30 60 e0                                      rsb r3, r0, r2
0037ebd8  43 32 a0 e1                                      asr r3, r3, #4
0037ebdc  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037ebe0  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037ebe4  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037ebe8  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037ebec  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037ebf0  00 00 53 e3                                      cmp r3, #0
0037ebf4  00 00 00 1a                                      bne #0x37ebfc
0037ebf8  10 80 bd e8                                      pop {r4, pc}
0037ebfc  fb 73 fe eb                                      bl #0x31bbf0
0037ec00  31 3e fe eb                                      bl #0x30e4cc
0037ec04  00 14 a0 e1                                      lsl r1, r0, #8
0037ec08  04 00 a0 e1                                      mov r0, r4
0037ec0c  10 40 bd e8                                      pop {r4, lr}
0037ec10  c3 f7 ff ea                                      b #0x37cb24

; FUNCTION 0x0037ec14, declared_size=92, range_size=92, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript7_GetIntERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_GetInt(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037ec14  70 40 2d e9                                      push {r4, r5, r6, lr}
0037ec18  04 30 90 e5                                      ldr r3, [r0, #4]
0037ec1c  02 50 a0 e1                                      mov r5, r2
0037ec20  01 40 a0 e1                                      mov r4, r1
0037ec24  05 00 93 e8                                      ldm r3, {r0, r2}
0037ec28  02 30 60 e0                                      rsb r3, r0, r2
0037ec2c  43 32 a0 e1                                      asr r3, r3, #4
0037ec30  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037ec34  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037ec38  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037ec3c  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037ec40  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037ec44  00 00 53 e3                                      cmp r3, #0
0037ec48  00 00 00 1a                                      bne #0x37ec50
0037ec4c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037ec50  11 76 fe eb                                      bl #0x31c49c
0037ec54  00 10 a0 e1                                      mov r1, r0
0037ec58  05 00 a0 e1                                      mov r0, r5
0037ec5c  73 fb ff eb                                      bl #0x37da30
0037ec60  00 10 a0 e1                                      mov r1, r0
0037ec64  04 00 a0 e1                                      mov r0, r4
0037ec68  70 40 bd e8                                      pop {r4, r5, r6, lr}
0037ec6c  ac f7 ff ea                                      b #0x37cb24

; FUNCTION 0x0037ec70, declared_size=528, range_size=528, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript13_AddToVFTableERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_AddToVFTable(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037ec70  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0037ec74  04 50 90 e5                                      ldr r5, [r0, #4]
0037ec78  02 60 a0 e1                                      mov r6, r2
0037ec7c  0c d0 4d e2                                      sub sp, sp, #0xc
0037ec80  0a 00 95 e8                                      ldm r5, {r1, r3}
0037ec84  00 40 a0 e1                                      mov r4, r0
0037ec88  03 30 61 e0                                      rsb r3, r1, r3
0037ec8c  43 32 a0 e1                                      asr r3, r3, #4
0037ec90  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037ec94  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037ec98  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037ec9c  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037eca0  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037eca4  00 30 63 e2                                      rsb r3, r3, #0
0037eca8  01 00 53 e3                                      cmp r3, #1
0037ecac  04 00 00 9a                                      bls #0x37ecc4
0037ecb0  00 00 53 e3                                      cmp r3, #0
0037ecb4  04 00 00 0a                                      beq #0x37eccc
0037ecb8  04 30 91 e5                                      ldr r3, [r1, #4]
0037ecbc  04 00 53 e3                                      cmp r3, #4
0037ecc0  08 00 00 0a                                      beq #0x37ece8
0037ecc4  0c d0 8d e2                                      add sp, sp, #0xc
0037ecc8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0037eccc  a0 01 9f e5                                      ldr r0, [pc, #0x1a0]
0037ecd0  00 00 8f e0                                      add r0, pc, r0
0037ecd4  75 28 0e eb                                      bl #0x708eb0
0037ecd8  00 10 95 e5                                      ldr r1, [r5]
0037ecdc  04 30 91 e5                                      ldr r3, [r1, #4]
0037ece0  04 00 53 e3                                      cmp r3, #4
0037ece4  f6 ff ff 1a                                      bne #0x37ecc4
0037ece8  04 00 a0 e1                                      mov r0, r4
0037ecec  01 10 a0 e3                                      mov r1, #1
0037ecf0  80 f3 ff eb                                      bl #0x37baf8
0037ecf4  04 30 90 e5                                      ldr r3, [r0, #4]
0037ecf8  04 00 53 e3                                      cmp r3, #4
0037ecfc  f0 ff ff 1a                                      bne #0x37ecc4
0037ed00  04 50 94 e5                                      ldr r5, [r4, #4]
0037ed04  09 00 95 e8                                      ldm r5, {r0, r3}
0037ed08  03 30 60 e0                                      rsb r3, r0, r3
0037ed0c  43 32 a0 e1                                      asr r3, r3, #4
0037ed10  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037ed14  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037ed18  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037ed1c  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037ed20  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037ed24  00 00 53 e3                                      cmp r3, #0
0037ed28  03 00 00 1a                                      bne #0x37ed3c
0037ed2c  44 01 9f e5                                      ldr r0, [pc, #0x144]
0037ed30  00 00 8f e0                                      add r0, pc, r0
0037ed34  5d 28 0e eb                                      bl #0x708eb0
0037ed38  00 00 95 e5                                      ldr r0, [r5]
0037ed3c  d6 75 fe eb                                      bl #0x31c49c
0037ed40  07 f5 ff eb                                      bl #0x37c164
0037ed44  64 30 d6 e5                                      ldrb r3, [r6, #0x64]
0037ed48  04 00 8d e5                                      str r0, [sp, #4]
0037ed4c  00 00 53 e3                                      cmp r3, #0
0037ed50  15 00 00 0a                                      beq #0x37edac
0037ed54  50 30 96 e5                                      ldr r3, [r6, #0x50]
0037ed58  4c c0 86 e2                                      add ip, r6, #0x4c
0037ed5c  00 00 53 e3                                      cmp r3, #0
0037ed60  30 00 00 0a                                      beq #0x37ee28
0037ed64  0c 10 a0 e1                                      mov r1, ip
0037ed68  00 00 00 ea                                      b #0x37ed70
0037ed6c  02 30 a0 e1                                      mov r3, r2
0037ed70  10 20 93 e5                                      ldr r2, [r3, #0x10]
0037ed74  02 00 50 e1                                      cmp r0, r2
0037ed78  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
0037ed7c  08 20 93 95                                      ldrls r2, [r3, #8]
0037ed80  01 30 a0 81                                      movhi r3, r1
0037ed84  03 10 a0 e1                                      mov r1, r3
0037ed88  00 00 52 e3                                      cmp r2, #0
0037ed8c  f6 ff ff 1a                                      bne #0x37ed6c
0037ed90  03 00 5c e1                                      cmp ip, r3
0037ed94  25 00 00 0a                                      beq #0x37ee30
0037ed98  10 20 93 e5                                      ldr r2, [r3, #0x10]
0037ed9c  02 00 50 e1                                      cmp r0, r2
0037eda0  20 00 00 3a                                      blo #0x37ee28
0037eda4  03 00 5c e1                                      cmp ip, r3
0037eda8  20 00 00 0a                                      beq #0x37ee30
0037edac  34 60 86 e2                                      add r6, r6, #0x34
0037edb0  04 50 8d e2                                      add r5, sp, #4
0037edb4  05 10 a0 e1                                      mov r1, r5
0037edb8  06 00 a0 e1                                      mov r0, r6
0037edbc  40 fb ff eb                                      bl #0x37dac4
0037edc0  04 40 94 e5                                      ldr r4, [r4, #4]
0037edc4  00 50 a0 e1                                      mov r5, r0
0037edc8  09 00 94 e8                                      ldm r4, {r0, r3}
0037edcc  03 30 60 e0                                      rsb r3, r0, r3
0037edd0  43 32 a0 e1                                      asr r3, r3, #4
0037edd4  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037edd8  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037eddc  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037ede0  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037ede4  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037ede8  00 30 63 e2                                      rsb r3, r3, #0
0037edec  01 00 53 e3                                      cmp r3, #1
0037edf0  03 00 00 8a                                      bhi #0x37ee04
0037edf4  80 00 9f e5                                      ldr r0, [pc, #0x80]
0037edf8  00 00 8f e0                                      add r0, pc, r0
0037edfc  2b 28 0e eb                                      bl #0x708eb0
0037ee00  00 00 94 e5                                      ldr r0, [r4]
0037ee04  70 00 80 e2                                      add r0, r0, #0x70
0037ee08  a3 75 fe eb                                      bl #0x31c49c
0037ee0c  00 40 a0 e1                                      mov r4, r0
0037ee10  0f 3c fe eb                                      bl #0x30de54
0037ee14  04 10 a0 e1                                      mov r1, r4
0037ee18  00 20 84 e0                                      add r2, r4, r0
0037ee1c  05 00 a0 e1                                      mov r0, r5
0037ee20  ee 46 fe eb                                      bl #0x3109e0
0037ee24  a6 ff ff ea                                      b #0x37ecc4
0037ee28  0c 30 a0 e1                                      mov r3, ip
0037ee2c  dc ff ff ea                                      b #0x37eda4
0037ee30  04 50 8d e2                                      add r5, sp, #4
0037ee34  0c 00 a0 e1                                      mov r0, ip
0037ee38  05 10 a0 e1                                      mov r1, r5
0037ee3c  20 fb ff eb                                      bl #0x37dac4
0037ee40  34 60 86 e2                                      add r6, r6, #0x34
0037ee44  00 70 a0 e1                                      mov r7, r0
0037ee48  05 10 a0 e1                                      mov r1, r5
0037ee4c  06 00 a0 e1                                      mov r0, r6
0037ee50  1b fb ff eb                                      bl #0x37dac4
0037ee54  00 00 57 e1                                      cmp r7, r0
0037ee58  00 30 a0 e1                                      mov r3, r0
0037ee5c  d4 ff ff 0a                                      beq #0x37edb4
0037ee60  07 00 a0 e1                                      mov r0, r7
0037ee64  10 20 93 e5                                      ldr r2, [r3, #0x10]
0037ee68  14 10 93 e5                                      ldr r1, [r3, #0x14]
0037ee6c  db 46 fe eb                                      bl #0x3109e0
0037ee70  cf ff ff ea                                      b #0x37edb4
; mapping-symbol data/literal pool
0037ee74  98 f7 53 00 38 f7 53 00 70 f6 53 00              .byte 0x98, 0xf7, 0x53, 0x00, 0x38, 0xf7, 0x53, 0x00, 0x70, 0xf6, 0x53, 0x00

; FUNCTION 0x0037ee80, declared_size=4, range_size=4, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript6_TraceERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_Trace(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037ee80  1e ff 2f e1                                      bx lr

; FUNCTION 0x0037ee84, declared_size=184, range_size=184, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript10_FromFixedERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_FromFixed(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037ee84  70 40 2d e9                                      push {r4, r5, r6, lr}
0037ee88  04 30 90 e5                                      ldr r3, [r0, #4]
0037ee8c  00 40 a0 e1                                      mov r4, r0
0037ee90  01 50 a0 e1                                      mov r5, r1
0037ee94  05 00 93 e8                                      ldm r3, {r0, r2}
0037ee98  02 30 60 e0                                      rsb r3, r0, r2
0037ee9c  43 32 a0 e1                                      asr r3, r3, #4
0037eea0  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037eea4  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037eea8  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037eeac  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037eeb0  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037eeb4  00 00 53 e3                                      cmp r3, #0
0037eeb8  00 00 00 1a                                      bne #0x37eec0
0037eebc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037eec0  4a 73 fe eb                                      bl #0x31bbf0
0037eec4  80 3d fe eb                                      bl #0x30e4cc
0037eec8  40 14 a0 e1                                      asr r1, r0, #8
0037eecc  05 00 a0 e1                                      mov r0, r5
0037eed0  13 f7 ff eb                                      bl #0x37cb24
0037eed4  04 40 94 e5                                      ldr r4, [r4, #4]
0037eed8  09 00 94 e8                                      ldm r4, {r0, r3}
0037eedc  03 30 60 e0                                      rsb r3, r0, r3
0037eee0  43 32 a0 e1                                      asr r3, r3, #4
0037eee4  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037eee8  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037eeec  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037eef0  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037eef4  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037eef8  00 00 53 e3                                      cmp r3, #0
0037eefc  08 00 00 0a                                      beq #0x37ef24
0037ef00  3a 73 fe eb                                      bl #0x31bbf0
0037ef04  70 3d fe eb                                      bl #0x30e4cc
0037ef08  95 3e fe eb                                      bl #0x30e964
0037ef0c  ee 15 a0 e3                                      mov r1, #0x3b800000
0037ef10  95 3f fe eb                                      bl #0x30ed6c
0037ef14  00 10 a0 e1                                      mov r1, r0
0037ef18  05 00 a0 e1                                      mov r0, r5
0037ef1c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0037ef20  65 f7 ff ea                                      b #0x37ccbc
0037ef24  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0037ef28  00 00 8f e0                                      add r0, pc, r0
0037ef2c  df 27 0e eb                                      bl #0x708eb0
0037ef30  00 00 94 e5                                      ldr r0, [r4]
0037ef34  f1 ff ff ea                                      b #0x37ef00
; mapping-symbol data/literal pool
0037ef38  40 f5 53 00                                      .byte 0x40, 0xf5, 0x53, 0x00

; FUNCTION 0x0037ef3c, declared_size=168, range_size=168, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript13_CallPyScriptERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_CallPyScript(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037ef3c  70 40 2d e9                                      push {r4, r5, r6, lr}
0037ef40  04 20 90 e5                                      ldr r2, [r0, #4]
0037ef44  90 40 9f e5                                      ldr r4, [pc, #0x90]
0037ef48  0a 00 92 e8                                      ldm r2, {r1, r3}
0037ef4c  04 40 8f e0                                      add r4, pc, r4
0037ef50  03 30 61 e0                                      rsb r3, r1, r3
0037ef54  43 32 a0 e1                                      asr r3, r3, #4
0037ef58  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037ef5c  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037ef60  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037ef64  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037ef68  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037ef6c  00 00 53 e3                                      cmp r3, #0
0037ef70  00 00 00 1a                                      bne #0x37ef78
0037ef74  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037ef78  04 30 91 e5                                      ldr r3, [r1, #4]
0037ef7c  04 00 53 e3                                      cmp r3, #4
0037ef80  fb ff ff 1a                                      bne #0x37ef74
0037ef84  00 10 a0 e3                                      mov r1, #0
0037ef88  da f2 ff eb                                      bl #0x37baf8
0037ef8c  42 75 fe eb                                      bl #0x31c49c
0037ef90  48 30 9f e5                                      ldr r3, [pc, #0x48]
0037ef94  00 10 a0 e1                                      mov r1, r0
0037ef98  01 20 a0 e3                                      mov r2, #1
0037ef9c  03 40 94 e7                                      ldr r4, [r4, r3]
0037efa0  04 00 a0 e1                                      mov r0, r4
0037efa4  91 68 03 eb                                      bl #0x4591f0
0037efa8  01 00 70 e3                                      cmn r0, #1
0037efac  00 50 a0 e1                                      mov r5, r0
0037efb0  ef ff ff 0a                                      beq #0x37ef74
0037efb4  04 00 a0 e1                                      mov r0, r4
0037efb8  05 10 a0 e1                                      mov r1, r5
0037efbc  0a 5b 03 eb                                      bl #0x455bec
0037efc0  00 30 50 e2                                      subs r3, r0, #0
0037efc4  ea ff ff 1a                                      bne #0x37ef74
0037efc8  04 00 a0 e1                                      mov r0, r4
0037efcc  05 10 a0 e1                                      mov r1, r5
0037efd0  00 20 e0 e3                                      mvn r2, #0
0037efd4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0037efd8  78 85 03 ea                                      b #0x4605c0
; mapping-symbol data/literal pool
0037efdc  44 5b 61 00 20 1a 00 00                          .byte 0x44, 0x5b, 0x61, 0x00, 0x20, 0x1a, 0x00, 0x00

; FUNCTION 0x0037efe4, declared_size=88, range_size=88, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript8_IncludeERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_Include(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037efe4  10 40 2d e9                                      push {r4, lr}
0037efe8  04 30 90 e5                                      ldr r3, [r0, #4]
0037efec  02 40 a0 e1                                      mov r4, r2
0037eff0  05 00 93 e8                                      ldm r3, {r0, r2}
0037eff4  02 30 60 e0                                      rsb r3, r0, r2
0037eff8  43 32 a0 e1                                      asr r3, r3, #4
0037effc  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037f000  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037f004  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037f008  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037f00c  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037f010  00 00 53 e3                                      cmp r3, #0
0037f014  00 00 00 1a                                      bne #0x37f01c
0037f018  10 80 bd e8                                      pop {r4, pc}
0037f01c  04 30 90 e5                                      ldr r3, [r0, #4]
0037f020  04 00 53 e3                                      cmp r3, #4
0037f024  fb ff ff 1a                                      bne #0x37f018
0037f028  1b 75 fe eb                                      bl #0x31c49c
0037f02c  00 10 a0 e1                                      mov r1, r0
0037f030  04 00 a0 e1                                      mov r0, r4
0037f034  10 40 bd e8                                      pop {r4, lr}
0037f038  4d f1 ff ea                                      b #0x37b574

; FUNCTION 0x0037f03c, declared_size=436, range_size=436, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript21_GetGameObjectsByTypeERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_GetGameObjectsByType(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037f03c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0037f040  04 30 90 e5                                      ldr r3, [r0, #4]
0037f044  1c d0 4d e2                                      sub sp, sp, #0x1c
0037f048  04 10 8d e5                                      str r1, [sp, #4]
0037f04c  04 20 93 e5                                      ldr r2, [r3, #4]
0037f050  00 50 a0 e1                                      mov r5, r0
0037f054  00 00 93 e5                                      ldr r0, [r3]
0037f058  88 41 9f e5                                      ldr r4, [pc, #0x188]
0037f05c  02 30 60 e0                                      rsb r3, r0, r2
0037f060  43 32 a0 e1                                      asr r3, r3, #4
0037f064  04 40 8f e0                                      add r4, pc, r4
0037f068  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037f06c  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037f070  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037f074  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037f078  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037f07c  00 30 63 e2                                      rsb r3, r3, #0
0037f080  01 00 53 e3                                      cmp r3, #1
0037f084  03 00 00 9a                                      bls #0x37f098
0037f088  70 20 80 e2                                      add r2, r0, #0x70
0037f08c  04 10 92 e5                                      ldr r1, [r2, #4]
0037f090  03 00 51 e3                                      cmp r1, #3
0037f094  44 00 00 0a                                      beq #0x37f1ac
0037f098  00 b0 a0 e3                                      mov fp, #0
0037f09c  00 00 53 e3                                      cmp r3, #0
0037f0a0  01 00 00 1a                                      bne #0x37f0ac
0037f0a4  1c d0 8d e2                                      add sp, sp, #0x1c
0037f0a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0037f0ac  04 30 90 e5                                      ldr r3, [r0, #4]
0037f0b0  04 00 53 e3                                      cmp r3, #4
0037f0b4  fa ff ff 1a                                      bne #0x37f0a4
0037f0b8  f7 74 fe eb                                      bl #0x31c49c
0037f0bc  28 31 9f e5                                      ldr r3, [pc, #0x128]
0037f0c0  00 90 a0 e1                                      mov sb, r0
0037f0c4  03 30 94 e7                                      ldr r3, [r4, r3]
0037f0c8  38 a0 93 e5                                      ldr sl, [r3, #0x38]
0037f0cc  14 40 9a e5                                      ldr r4, [sl, #0x14]
0037f0d0  0c a0 8a e2                                      add sl, sl, #0xc
0037f0d4  0a 00 54 e1                                      cmp r4, sl
0037f0d8  f1 ff ff 0a                                      beq #0x37f0a4
0037f0dc  00 80 a0 e3                                      mov r8, #0
0037f0e0  08 70 a0 e1                                      mov r7, r8
0037f0e4  0c 60 8d e2                                      add r6, sp, #0xc
0037f0e8  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
0037f0ec  00 00 51 e3                                      cmp r1, #0
0037f0f0  12 00 00 0a                                      beq #0x37f140
0037f0f4  06 00 a0 e1                                      mov r0, r6
0037f0f8  0b fb fe eb                                      bl #0x33dd2c
0037f0fc  06 00 a0 e1                                      mov r0, r6
0037f100  77 03 ff eb                                      bl #0x33fee4
0037f104  00 50 50 e2                                      subs r5, r0, #0
0037f108  0c 00 00 0a                                      beq #0x37f140
0037f10c  04 00 85 e2                                      add r0, r5, #4
0037f110  8d 46 06 eb                                      bl #0x510b4c
0037f114  09 10 a0 e1                                      mov r1, sb
0037f118  7f 3c fe eb                                      bl #0x30e31c
0037f11c  00 00 50 e3                                      cmp r0, #0
0037f120  06 00 00 1a                                      bne #0x37f140
0037f124  08 00 5b e1                                      cmp fp, r8
0037f128  01 80 88 82                                      addhi r8, r8, #1
0037f12c  03 00 00 8a                                      bhi #0x37f140
0037f130  05 10 a0 e1                                      mov r1, r5
0037f134  04 00 9d e5                                      ldr r0, [sp, #4]
0037f138  2e f6 ff eb                                      bl #0x37c9f8
0037f13c  01 70 87 e2                                      add r7, r7, #1
0037f140  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0037f144  00 00 52 e3                                      cmp r2, #0
0037f148  01 00 00 1a                                      bne #0x37f154
0037f14c  09 00 00 ea                                      b #0x37f178
0037f150  03 20 a0 e1                                      mov r2, r3
0037f154  08 30 92 e5                                      ldr r3, [r2, #8]
0037f158  00 00 53 e3                                      cmp r3, #0
0037f15c  fb ff ff 1a                                      bne #0x37f150
0037f160  02 40 a0 e1                                      mov r4, r2
0037f164  04 00 5a e1                                      cmp sl, r4
0037f168  cd ff ff 0a                                      beq #0x37f0a4
0037f16c  0e 00 57 e3                                      cmp r7, #0xe
0037f170  cb ff ff 8a                                      bhi #0x37f0a4
0037f174  db ff ff ea                                      b #0x37f0e8
0037f178  04 30 94 e5                                      ldr r3, [r4, #4]
0037f17c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0037f180  01 00 54 e1                                      cmp r4, r1
0037f184  05 00 00 1a                                      bne #0x37f1a0
0037f188  03 40 a0 e1                                      mov r4, r3
0037f18c  04 30 93 e5                                      ldr r3, [r3, #4]
0037f190  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0037f194  04 00 52 e1                                      cmp r2, r4
0037f198  fa ff ff 0a                                      beq #0x37f188
0037f19c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0037f1a0  03 00 52 e1                                      cmp r2, r3
0037f1a4  03 40 a0 11                                      movne r4, r3
0037f1a8  ed ff ff ea                                      b #0x37f164
0037f1ac  02 00 a0 e1                                      mov r0, r2
0037f1b0  8e 72 fe eb                                      bl #0x31bbf0
0037f1b4  39 fc 14 eb                                      bl #0x8be2a0
0037f1b8  04 30 95 e5                                      ldr r3, [r5, #4]
0037f1bc  00 b0 a0 e1                                      mov fp, r0
0037f1c0  05 00 93 e8                                      ldm r3, {r0, r2}
0037f1c4  02 30 60 e0                                      rsb r3, r0, r2
0037f1c8  43 32 a0 e1                                      asr r3, r3, #4
0037f1cc  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037f1d0  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037f1d4  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037f1d8  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037f1dc  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037f1e0  00 30 63 e2                                      rsb r3, r3, #0
0037f1e4  ac ff ff ea                                      b #0x37f09c
; mapping-symbol data/literal pool
0037f1e8  2c 5a 61 00 f4 37 00 00                          .byte 0x2c, 0x5a, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0037f1f0, declared_size=356, range_size=356, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript21_GetCurrentLevelRangeERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_GetCurrentLevelRange(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037f1f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0037f1f4  4c 41 9f e5                                      ldr r4, [pc, #0x14c]
0037f1f8  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
0037f1fc  00 70 a0 e1                                      mov r7, r0
0037f200  04 40 8f e0                                      add r4, pc, r4
0037f204  03 00 94 e7                                      ldr r0, [r4, r3]
0037f208  01 60 a0 e1                                      mov r6, r1
0037f20c  e0 80 fe eb                                      bl #0x31f594
0037f210  3c 50 90 e5                                      ldr r5, [r0, #0x3c]
0037f214  01 00 75 e3                                      cmn r5, #1
0037f218  43 00 00 0a                                      beq #0x37f32c
0037f21c  04 20 97 e5                                      ldr r2, [r7, #4]
0037f220  09 00 92 e8                                      ldm r2, {r0, r3}
0037f224  03 30 60 e0                                      rsb r3, r0, r3
0037f228  43 32 a0 e1                                      asr r3, r3, #4
0037f22c  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037f230  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037f234  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037f238  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037f23c  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037f240  00 00 53 e3                                      cmp r3, #0
0037f244  0e 00 00 1a                                      bne #0x37f284
0037f248  48 30 a0 e3                                      mov r3, #0x48
0037f24c  93 05 05 e0                                      mul r5, r3, r5
0037f250  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
0037f254  06 00 a0 e1                                      mov r0, r6
0037f258  03 40 94 e7                                      ldr r4, [r4, r3]
0037f25c  00 30 94 e5                                      ldr r3, [r4]
0037f260  05 30 83 e0                                      add r3, r3, r5
0037f264  3c 10 93 e5                                      ldr r1, [r3, #0x3c]
0037f268  2d f6 ff eb                                      bl #0x37cb24
0037f26c  00 30 94 e5                                      ldr r3, [r4]
0037f270  06 00 a0 e1                                      mov r0, r6
0037f274  05 50 83 e0                                      add r5, r3, r5
0037f278  30 10 95 e5                                      ldr r1, [r5, #0x30]
0037f27c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0037f280  27 f6 ff ea                                      b #0x37cb24
0037f284  04 30 90 e5                                      ldr r3, [r0, #4]
0037f288  03 00 53 e3                                      cmp r3, #3
0037f28c  ed ff ff 1a                                      bne #0x37f248
0037f290  56 72 fe eb                                      bl #0x31bbf0
0037f294  8c 3c fe eb                                      bl #0x30e4cc
0037f298  01 00 50 e3                                      cmp r0, #1
0037f29c  04 00 00 0a                                      beq #0x37f2b4
0037f2a0  02 00 50 e3                                      cmp r0, #2
0037f2a4  11 00 00 0a                                      beq #0x37f2f0
0037f2a8  00 00 50 e3                                      cmp r0, #0
0037f2ac  e5 ff ff 0a                                      beq #0x37f248
0037f2b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0037f2b4  48 30 a0 e3                                      mov r3, #0x48
0037f2b8  93 05 05 e0                                      mul r5, r3, r5
0037f2bc  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0037f2c0  06 00 a0 e1                                      mov r0, r6
0037f2c4  03 40 94 e7                                      ldr r4, [r4, r3]
0037f2c8  00 30 94 e5                                      ldr r3, [r4]
0037f2cc  05 30 83 e0                                      add r3, r3, r5
0037f2d0  40 10 93 e5                                      ldr r1, [r3, #0x40]
0037f2d4  12 f6 ff eb                                      bl #0x37cb24
0037f2d8  00 30 94 e5                                      ldr r3, [r4]
0037f2dc  06 00 a0 e1                                      mov r0, r6
0037f2e0  05 50 83 e0                                      add r5, r3, r5
0037f2e4  34 10 95 e5                                      ldr r1, [r5, #0x34]
0037f2e8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0037f2ec  0c f6 ff ea                                      b #0x37cb24
0037f2f0  48 30 a0 e3                                      mov r3, #0x48
0037f2f4  93 05 05 e0                                      mul r5, r3, r5
0037f2f8  50 30 9f e5                                      ldr r3, [pc, #0x50]
0037f2fc  06 00 a0 e1                                      mov r0, r6
0037f300  03 40 94 e7                                      ldr r4, [r4, r3]
0037f304  00 30 94 e5                                      ldr r3, [r4]
0037f308  05 30 83 e0                                      add r3, r3, r5
0037f30c  44 10 93 e5                                      ldr r1, [r3, #0x44]
0037f310  03 f6 ff eb                                      bl #0x37cb24
0037f314  00 30 94 e5                                      ldr r3, [r4]
0037f318  06 00 a0 e1                                      mov r0, r6
0037f31c  05 50 83 e0                                      add r5, r3, r5
0037f320  38 10 95 e5                                      ldr r1, [r5, #0x38]
0037f324  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0037f328  fd f5 ff ea                                      b #0x37cb24
0037f32c  06 00 a0 e1                                      mov r0, r6
0037f330  05 10 a0 e1                                      mov r1, r5
0037f334  fa f5 ff eb                                      bl #0x37cb24
0037f338  06 00 a0 e1                                      mov r0, r6
0037f33c  05 10 a0 e1                                      mov r1, r5
0037f340  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0037f344  f6 f5 ff ea                                      b #0x37cb24
; mapping-symbol data/literal pool
0037f348  90 58 61 00 f4 37 00 00 74 08 00 00              .byte 0x90, 0x58, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x74, 0x08, 0x00, 0x00

; FUNCTION 0x0037f354, declared_size=340, range_size=340, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript9_GetPyCstERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_GetPyCst(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037f354  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0037f358  04 60 90 e5                                      ldr r6, [r0, #4]
0037f35c  01 40 a0 e1                                      mov r4, r1
0037f360  2c 51 9f e5                                      ldr r5, [pc, #0x12c]
0037f364  0a 00 96 e8                                      ldm r6, {r1, r3}
0037f368  05 50 8f e0                                      add r5, pc, r5
0037f36c  00 70 a0 e1                                      mov r7, r0
0037f370  03 30 61 e0                                      rsb r3, r1, r3
0037f374  43 32 a0 e1                                      asr r3, r3, #4
0037f378  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037f37c  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037f380  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037f384  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037f388  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037f38c  00 30 63 e2                                      rsb r3, r3, #0
0037f390  01 00 53 e3                                      cmp r3, #1
0037f394  04 00 00 9a                                      bls #0x37f3ac
0037f398  00 00 53 e3                                      cmp r3, #0
0037f39c  03 00 00 0a                                      beq #0x37f3b0
0037f3a0  04 30 91 e5                                      ldr r3, [r1, #4]
0037f3a4  04 00 53 e3                                      cmp r3, #4
0037f3a8  05 00 00 0a                                      beq #0x37f3c4
0037f3ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0037f3b0  e0 00 9f e5                                      ldr r0, [pc, #0xe0]
0037f3b4  00 00 8f e0                                      add r0, pc, r0
0037f3b8  bc 26 0e eb                                      bl #0x708eb0
0037f3bc  00 10 96 e5                                      ldr r1, [r6]
0037f3c0  f6 ff ff ea                                      b #0x37f3a0
0037f3c4  07 00 a0 e1                                      mov r0, r7
0037f3c8  01 10 a0 e3                                      mov r1, #1
0037f3cc  c9 f1 ff eb                                      bl #0x37baf8
0037f3d0  04 30 90 e5                                      ldr r3, [r0, #4]
0037f3d4  04 00 53 e3                                      cmp r3, #4
0037f3d8  f3 ff ff 1a                                      bne #0x37f3ac
0037f3dc  04 60 97 e5                                      ldr r6, [r7, #4]
0037f3e0  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0037f3e4  09 00 96 e8                                      ldm r6, {r0, r3}
0037f3e8  02 20 95 e7                                      ldr r2, [r5, r2]
0037f3ec  03 30 60 e0                                      rsb r3, r0, r3
0037f3f0  43 32 a0 e1                                      asr r3, r3, #4
0037f3f4  2c 80 92 e5                                      ldr r8, [r2, #0x2c]
0037f3f8  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037f3fc  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037f400  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037f404  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037f408  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037f40c  00 00 53 e3                                      cmp r3, #0
0037f410  03 00 00 1a                                      bne #0x37f424
0037f414  84 00 9f e5                                      ldr r0, [pc, #0x84]
0037f418  00 00 8f e0                                      add r0, pc, r0
0037f41c  a3 26 0e eb                                      bl #0x708eb0
0037f420  00 00 96 e5                                      ldr r0, [r6]
0037f424  1c 74 fe eb                                      bl #0x31c49c
0037f428  04 50 97 e5                                      ldr r5, [r7, #4]
0037f42c  00 60 a0 e1                                      mov r6, r0
0037f430  09 00 95 e8                                      ldm r5, {r0, r3}
0037f434  03 30 60 e0                                      rsb r3, r0, r3
0037f438  43 32 a0 e1                                      asr r3, r3, #4
0037f43c  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037f440  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037f444  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037f448  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037f44c  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037f450  00 30 63 e2                                      rsb r3, r3, #0
0037f454  01 00 53 e3                                      cmp r3, #1
0037f458  03 00 00 8a                                      bhi #0x37f46c
0037f45c  40 00 9f e5                                      ldr r0, [pc, #0x40]
0037f460  00 00 8f e0                                      add r0, pc, r0
0037f464  91 26 0e eb                                      bl #0x708eb0
0037f468  00 00 95 e5                                      ldr r0, [r5]
0037f46c  70 00 80 e2                                      add r0, r0, #0x70
0037f470  09 74 fe eb                                      bl #0x31c49c
0037f474  06 10 a0 e1                                      mov r1, r6
0037f478  00 20 a0 e1                                      mov r2, r0
0037f47c  08 00 a0 e1                                      mov r0, r8
0037f480  d5 15 05 eb                                      bl #0x4c4bdc
0037f484  00 10 a0 e1                                      mov r1, r0
0037f488  04 00 a0 e1                                      mov r0, r4
0037f48c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0037f490  a3 f5 ff ea                                      b #0x37cb24
; mapping-symbol data/literal pool
0037f494  28 57 61 00 b4 f0 53 00 f4 37 00 00 50 f0 53 00  .byte 0x28, 0x57, 0x61, 0x00, 0xb4, 0xf0, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x50, 0xf0, 0x53, 0x00
0037f4a4  08 f0 53 00                                      .byte 0x08, 0xf0, 0x53, 0x00

; FUNCTION 0x0037f4a8, declared_size=340, range_size=340, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript12_GetPyStructERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_GetPyStruct(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037f4a8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0037f4ac  04 60 90 e5                                      ldr r6, [r0, #4]
0037f4b0  01 40 a0 e1                                      mov r4, r1
0037f4b4  2c 51 9f e5                                      ldr r5, [pc, #0x12c]
0037f4b8  0a 00 96 e8                                      ldm r6, {r1, r3}
0037f4bc  05 50 8f e0                                      add r5, pc, r5
0037f4c0  00 70 a0 e1                                      mov r7, r0
0037f4c4  03 30 61 e0                                      rsb r3, r1, r3
0037f4c8  43 32 a0 e1                                      asr r3, r3, #4
0037f4cc  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037f4d0  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037f4d4  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037f4d8  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037f4dc  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037f4e0  00 30 63 e2                                      rsb r3, r3, #0
0037f4e4  01 00 53 e3                                      cmp r3, #1
0037f4e8  04 00 00 9a                                      bls #0x37f500
0037f4ec  00 00 53 e3                                      cmp r3, #0
0037f4f0  03 00 00 0a                                      beq #0x37f504
0037f4f4  04 30 91 e5                                      ldr r3, [r1, #4]
0037f4f8  04 00 53 e3                                      cmp r3, #4
0037f4fc  05 00 00 0a                                      beq #0x37f518
0037f500  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0037f504  e0 00 9f e5                                      ldr r0, [pc, #0xe0]
0037f508  00 00 8f e0                                      add r0, pc, r0
0037f50c  67 26 0e eb                                      bl #0x708eb0
0037f510  00 10 96 e5                                      ldr r1, [r6]
0037f514  f6 ff ff ea                                      b #0x37f4f4
0037f518  07 00 a0 e1                                      mov r0, r7
0037f51c  01 10 a0 e3                                      mov r1, #1
0037f520  74 f1 ff eb                                      bl #0x37baf8
0037f524  04 30 90 e5                                      ldr r3, [r0, #4]
0037f528  04 00 53 e3                                      cmp r3, #4
0037f52c  f3 ff ff 1a                                      bne #0x37f500
0037f530  04 60 97 e5                                      ldr r6, [r7, #4]
0037f534  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0037f538  09 00 96 e8                                      ldm r6, {r0, r3}
0037f53c  02 20 95 e7                                      ldr r2, [r5, r2]
0037f540  03 30 60 e0                                      rsb r3, r0, r3
0037f544  43 32 a0 e1                                      asr r3, r3, #4
0037f548  30 80 92 e5                                      ldr r8, [r2, #0x30]
0037f54c  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037f550  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037f554  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037f558  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037f55c  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037f560  00 00 53 e3                                      cmp r3, #0
0037f564  03 00 00 1a                                      bne #0x37f578
0037f568  84 00 9f e5                                      ldr r0, [pc, #0x84]
0037f56c  00 00 8f e0                                      add r0, pc, r0
0037f570  4e 26 0e eb                                      bl #0x708eb0
0037f574  00 00 96 e5                                      ldr r0, [r6]
0037f578  c7 73 fe eb                                      bl #0x31c49c
0037f57c  04 50 97 e5                                      ldr r5, [r7, #4]
0037f580  00 60 a0 e1                                      mov r6, r0
0037f584  09 00 95 e8                                      ldm r5, {r0, r3}
0037f588  03 30 60 e0                                      rsb r3, r0, r3
0037f58c  43 32 a0 e1                                      asr r3, r3, #4
0037f590  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037f594  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037f598  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037f59c  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037f5a0  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037f5a4  00 30 63 e2                                      rsb r3, r3, #0
0037f5a8  01 00 53 e3                                      cmp r3, #1
0037f5ac  03 00 00 8a                                      bhi #0x37f5c0
0037f5b0  40 00 9f e5                                      ldr r0, [pc, #0x40]
0037f5b4  00 00 8f e0                                      add r0, pc, r0
0037f5b8  3c 26 0e eb                                      bl #0x708eb0
0037f5bc  00 00 95 e5                                      ldr r0, [r5]
0037f5c0  70 00 80 e2                                      add r0, r0, #0x70
0037f5c4  b4 73 fe eb                                      bl #0x31c49c
0037f5c8  06 10 a0 e1                                      mov r1, r6
0037f5cc  00 20 a0 e1                                      mov r2, r0
0037f5d0  08 00 a0 e1                                      mov r0, r8
0037f5d4  19 f8 04 eb                                      bl #0x4bd640
0037f5d8  00 10 a0 e1                                      mov r1, r0
0037f5dc  04 00 a0 e1                                      mov r0, r4
0037f5e0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0037f5e4  4e f5 ff ea                                      b #0x37cb24
; mapping-symbol data/literal pool
0037f5e8  d4 55 61 00 60 ef 53 00 f4 37 00 00 fc ee 53 00  .byte 0xd4, 0x55, 0x61, 0x00, 0x60, 0xef, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xfc, 0xee, 0x53, 0x00
0037f5f8  b4 ee 53 00                                      .byte 0xb4, 0xee, 0x53, 0x00

; FUNCTION 0x0037f5fc, declared_size=340, range_size=340, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript9_GetPyOIDERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_GetPyOID(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037f5fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0037f600  04 60 90 e5                                      ldr r6, [r0, #4]
0037f604  01 40 a0 e1                                      mov r4, r1
0037f608  2c 51 9f e5                                      ldr r5, [pc, #0x12c]
0037f60c  0a 00 96 e8                                      ldm r6, {r1, r3}
0037f610  05 50 8f e0                                      add r5, pc, r5
0037f614  00 70 a0 e1                                      mov r7, r0
0037f618  03 30 61 e0                                      rsb r3, r1, r3
0037f61c  43 32 a0 e1                                      asr r3, r3, #4
0037f620  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037f624  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037f628  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037f62c  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037f630  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037f634  00 30 63 e2                                      rsb r3, r3, #0
0037f638  01 00 53 e3                                      cmp r3, #1
0037f63c  04 00 00 9a                                      bls #0x37f654
0037f640  00 00 53 e3                                      cmp r3, #0
0037f644  03 00 00 0a                                      beq #0x37f658
0037f648  04 30 91 e5                                      ldr r3, [r1, #4]
0037f64c  04 00 53 e3                                      cmp r3, #4
0037f650  05 00 00 0a                                      beq #0x37f66c
0037f654  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0037f658  e0 00 9f e5                                      ldr r0, [pc, #0xe0]
0037f65c  00 00 8f e0                                      add r0, pc, r0
0037f660  12 26 0e eb                                      bl #0x708eb0
0037f664  00 10 96 e5                                      ldr r1, [r6]
0037f668  f6 ff ff ea                                      b #0x37f648
0037f66c  07 00 a0 e1                                      mov r0, r7
0037f670  01 10 a0 e3                                      mov r1, #1
0037f674  1f f1 ff eb                                      bl #0x37baf8
0037f678  04 30 90 e5                                      ldr r3, [r0, #4]
0037f67c  04 00 53 e3                                      cmp r3, #4
0037f680  f3 ff ff 1a                                      bne #0x37f654
0037f684  04 60 97 e5                                      ldr r6, [r7, #4]
0037f688  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0037f68c  09 00 96 e8                                      ldm r6, {r0, r3}
0037f690  02 20 95 e7                                      ldr r2, [r5, r2]
0037f694  03 30 60 e0                                      rsb r3, r0, r3
0037f698  43 32 a0 e1                                      asr r3, r3, #4
0037f69c  30 80 92 e5                                      ldr r8, [r2, #0x30]
0037f6a0  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037f6a4  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037f6a8  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037f6ac  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037f6b0  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037f6b4  00 00 53 e3                                      cmp r3, #0
0037f6b8  03 00 00 1a                                      bne #0x37f6cc
0037f6bc  84 00 9f e5                                      ldr r0, [pc, #0x84]
0037f6c0  00 00 8f e0                                      add r0, pc, r0
0037f6c4  f9 25 0e eb                                      bl #0x708eb0
0037f6c8  00 00 96 e5                                      ldr r0, [r6]
0037f6cc  72 73 fe eb                                      bl #0x31c49c
0037f6d0  04 50 97 e5                                      ldr r5, [r7, #4]
0037f6d4  00 60 a0 e1                                      mov r6, r0
0037f6d8  09 00 95 e8                                      ldm r5, {r0, r3}
0037f6dc  03 30 60 e0                                      rsb r3, r0, r3
0037f6e0  43 32 a0 e1                                      asr r3, r3, #4
0037f6e4  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037f6e8  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037f6ec  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037f6f0  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037f6f4  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037f6f8  00 30 63 e2                                      rsb r3, r3, #0
0037f6fc  01 00 53 e3                                      cmp r3, #1
0037f700  03 00 00 8a                                      bhi #0x37f714
0037f704  40 00 9f e5                                      ldr r0, [pc, #0x40]
0037f708  00 00 8f e0                                      add r0, pc, r0
0037f70c  e7 25 0e eb                                      bl #0x708eb0
0037f710  00 00 95 e5                                      ldr r0, [r5]
0037f714  70 00 80 e2                                      add r0, r0, #0x70
0037f718  5f 73 fe eb                                      bl #0x31c49c
0037f71c  06 10 a0 e1                                      mov r1, r6
0037f720  00 20 a0 e1                                      mov r2, r0
0037f724  08 00 a0 e1                                      mov r0, r8
0037f728  c4 f7 04 eb                                      bl #0x4bd640
0037f72c  00 10 a0 e1                                      mov r1, r0
0037f730  04 00 a0 e1                                      mov r0, r4
0037f734  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0037f738  f9 f4 ff ea                                      b #0x37cb24
; mapping-symbol data/literal pool
0037f73c  80 54 61 00 0c ee 53 00 f4 37 00 00 a8 ed 53 00  .byte 0x80, 0x54, 0x61, 0x00, 0x0c, 0xee, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa8, 0xed, 0x53, 0x00
0037f74c  60 ed 53 00                                      .byte 0x60, 0xed, 0x53, 0x00

; FUNCTION 0x0037f750, declared_size=196, range_size=196, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript7_BitXOrERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_BitXOr(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037f750  70 40 2d e9                                      push {r4, r5, r6, lr}
0037f754  04 30 90 e5                                      ldr r3, [r0, #4]
0037f758  00 40 a0 e1                                      mov r4, r0
0037f75c  01 50 a0 e1                                      mov r5, r1
0037f760  05 00 93 e8                                      ldm r3, {r0, r2}
0037f764  02 30 60 e0                                      rsb r3, r0, r2
0037f768  43 32 a0 e1                                      asr r3, r3, #4
0037f76c  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037f770  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037f774  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037f778  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037f77c  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037f780  02 00 73 e3                                      cmn r3, #2
0037f784  00 00 00 0a                                      beq #0x37f78c
0037f788  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037f78c  04 30 90 e5                                      ldr r3, [r0, #4]
0037f790  03 00 53 e3                                      cmp r3, #3
0037f794  fb ff ff 1a                                      bne #0x37f788
0037f798  74 30 90 e5                                      ldr r3, [r0, #0x74]
0037f79c  03 00 53 e3                                      cmp r3, #3
0037f7a0  f8 ff ff 1a                                      bne #0x37f788
0037f7a4  11 71 fe eb                                      bl #0x31bbf0
0037f7a8  47 3b fe eb                                      bl #0x30e4cc
0037f7ac  04 40 94 e5                                      ldr r4, [r4, #4]
0037f7b0  00 60 a0 e1                                      mov r6, r0
0037f7b4  09 00 94 e8                                      ldm r4, {r0, r3}
0037f7b8  03 30 60 e0                                      rsb r3, r0, r3
0037f7bc  43 32 a0 e1                                      asr r3, r3, #4
0037f7c0  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037f7c4  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037f7c8  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037f7cc  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037f7d0  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037f7d4  00 30 63 e2                                      rsb r3, r3, #0
0037f7d8  01 00 53 e3                                      cmp r3, #1
0037f7dc  06 00 00 9a                                      bls #0x37f7fc
0037f7e0  70 00 80 e2                                      add r0, r0, #0x70
0037f7e4  01 71 fe eb                                      bl #0x31bbf0
0037f7e8  37 3b fe eb                                      bl #0x30e4cc
0037f7ec  06 10 20 e0                                      eor r1, r0, r6
0037f7f0  05 00 a0 e1                                      mov r0, r5
0037f7f4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0037f7f8  c9 f4 ff ea                                      b #0x37cb24
0037f7fc  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0037f800  00 00 8f e0                                      add r0, pc, r0
0037f804  a9 25 0e eb                                      bl #0x708eb0
0037f808  00 00 94 e5                                      ldr r0, [r4]
0037f80c  f3 ff ff ea                                      b #0x37f7e0
; mapping-symbol data/literal pool
0037f810  68 ec 53 00                                      .byte 0x68, 0xec, 0x53, 0x00

; FUNCTION 0x0037f814, declared_size=100, range_size=100, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript7_BitNotERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_BitNot(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037f814  10 40 2d e9                                      push {r4, lr}
0037f818  04 30 90 e5                                      ldr r3, [r0, #4]
0037f81c  01 40 a0 e1                                      mov r4, r1
0037f820  06 00 93 e8                                      ldm r3, {r1, r2}
0037f824  02 30 61 e0                                      rsb r3, r1, r2
0037f828  43 32 a0 e1                                      asr r3, r3, #4
0037f82c  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037f830  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037f834  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037f838  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037f83c  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037f840  01 00 73 e3                                      cmn r3, #1
0037f844  00 00 00 0a                                      beq #0x37f84c
0037f848  10 80 bd e8                                      pop {r4, pc}
0037f84c  04 30 91 e5                                      ldr r3, [r1, #4]
0037f850  03 00 53 e3                                      cmp r3, #3
0037f854  fb ff ff 1a                                      bne #0x37f848
0037f858  00 10 a0 e3                                      mov r1, #0
0037f85c  a5 f0 ff eb                                      bl #0x37baf8
0037f860  e2 70 fe eb                                      bl #0x31bbf0
0037f864  18 3b fe eb                                      bl #0x30e4cc
0037f868  00 10 e0 e1                                      mvn r1, r0
0037f86c  04 00 a0 e1                                      mov r0, r4
0037f870  10 40 bd e8                                      pop {r4, lr}
0037f874  aa f4 ff ea                                      b #0x37cb24

; FUNCTION 0x0037f878, declared_size=340, range_size=340, mode=arm
; class-group: LuaScript
; alias: _ZN9LuaScript12_SetGameTypeERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: LuaScript::_SetGameType(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0037f878  70 40 2d e9                                      push {r4, r5, r6, lr}
0037f87c  04 20 90 e5                                      ldr r2, [r0, #4]
0037f880  24 61 9f e5                                      ldr r6, [pc, #0x124]
0037f884  08 d0 4d e2                                      sub sp, sp, #8
0037f888  0a 00 92 e8                                      ldm r2, {r1, r3}
0037f88c  06 60 8f e0                                      add r6, pc, r6
0037f890  00 40 a0 e1                                      mov r4, r0
0037f894  03 30 61 e0                                      rsb r3, r1, r3
0037f898  43 32 a0 e1                                      asr r3, r3, #4
0037f89c  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037f8a0  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037f8a4  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037f8a8  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037f8ac  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037f8b0  00 00 53 e3                                      cmp r3, #0
0037f8b4  01 00 00 1a                                      bne #0x37f8c0
0037f8b8  08 d0 8d e2                                      add sp, sp, #8
0037f8bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037f8c0  04 30 91 e5                                      ldr r3, [r1, #4]
0037f8c4  03 00 53 e3                                      cmp r3, #3
0037f8c8  fa ff ff 1a                                      bne #0x37f8b8
0037f8cc  00 10 a0 e3                                      mov r1, #0
0037f8d0  88 f0 ff eb                                      bl #0x37baf8
0037f8d4  c5 70 fe eb                                      bl #0x31bbf0
0037f8d8  70 fa 14 eb                                      bl #0x8be2a0
0037f8dc  03 00 50 e3                                      cmp r0, #3
0037f8e0  f4 ff ff 8a                                      bhi #0x37f8b8
0037f8e4  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
0037f8e8  03 00 96 e7                                      ldr r0, [r6, r3]
0037f8ec  28 7f fe eb                                      bl #0x31f594
0037f8f0  00 50 50 e2                                      subs r5, r0, #0
0037f8f4  ef ff ff 0a                                      beq #0x37f8b8
0037f8f8  04 40 94 e5                                      ldr r4, [r4, #4]
0037f8fc  09 00 94 e8                                      ldm r4, {r0, r3}
0037f900  03 30 60 e0                                      rsb r3, r0, r3
0037f904  43 32 a0 e1                                      asr r3, r3, #4
0037f908  83 21 83 e0                                      add r2, r3, r3, lsl #3
0037f90c  02 23 82 e0                                      add r2, r2, r2, lsl #6
0037f910  82 21 83 e0                                      add r2, r3, r2, lsl #3
0037f914  82 27 82 e0                                      add r2, r2, r2, lsl #15
0037f918  82 31 83 e0                                      add r3, r3, r2, lsl #3
0037f91c  00 00 53 e3                                      cmp r3, #0
0037f920  03 00 00 1a                                      bne #0x37f934
0037f924  88 00 9f e5                                      ldr r0, [pc, #0x88]
0037f928  00 00 8f e0                                      add r0, pc, r0
0037f92c  5f 25 0e eb                                      bl #0x708eb0
0037f930  00 00 94 e5                                      ldr r0, [r4]
0037f934  ad 70 fe eb                                      bl #0x31bbf0
0037f938  58 fa 14 eb                                      bl #0x8be2a0
0037f93c  03 00 50 e3                                      cmp r0, #3
0037f940  00 40 a0 e1                                      mov r4, r0
0037f944  08 00 00 9a                                      bls #0x37f96c
0037f948  68 30 9f e5                                      ldr r3, [pc, #0x68]
0037f94c  03 30 96 e7                                      ldr r3, [r6, r3]
0037f950  00 30 93 e5                                      ldr r3, [r3]
0037f954  02 00 53 e3                                      cmp r3, #2
0037f958  00 30 a0 03                                      moveq r3, #0
0037f95c  00 30 83 05                                      streq r3, [r3]
0037f960  01 00 00 0a                                      beq #0x37f96c
0037f964  01 00 53 e3                                      cmp r3, #1
0037f968  01 00 00 0a                                      beq #0x37f974
0037f96c  50 41 85 e5                                      str r4, [r5, #0x150]
0037f970  d0 ff ff ea                                      b #0x37f8b8
0037f974  40 00 9f e5                                      ldr r0, [pc, #0x40]
0037f978  40 10 9f e5                                      ldr r1, [pc, #0x40]
0037f97c  40 20 9f e5                                      ldr r2, [pc, #0x40]
0037f980  00 00 96 e7                                      ldr r0, [r6, r0]
0037f984  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0037f988  ee c1 00 e3                                      movw ip, #0x1ee
0037f98c  01 10 8f e0                                      add r1, pc, r1
0037f990  a8 00 80 e2                                      add r0, r0, #0xa8
0037f994  02 20 8f e0                                      add r2, pc, r2
0037f998  03 30 8f e0                                      add r3, pc, r3
0037f99c  00 c0 8d e5                                      str ip, [sp]
0037f9a0  97 39 fe eb                                      bl #0x30e004
0037f9a4  50 41 85 e5                                      str r4, [r5, #0x150]
0037f9a8  c2 ff ff ea                                      b #0x37f8b8
; mapping-symbol data/literal pool
0037f9ac  04 52 61 00 f4 37 00 00 40 eb 53 00 c0 39 00 00  .byte 0x04, 0x52, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x40, 0xeb, 0x53, 0x00, 0xc0, 0x39, 0x00, 0x00
0037f9bc  c0 19 00 00 4c ea 53 00 9c 22 54 00 c0 22 54 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x4c, 0xea, 0x53, 0x00, 0x9c, 0x22, 0x54, 0x00, 0xc0, 0x22, 0x54, 0x00
