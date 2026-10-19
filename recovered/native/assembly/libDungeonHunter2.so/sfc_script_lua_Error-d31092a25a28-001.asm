; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031a68c, declared_size=52, range_size=52, mode=arm
; class-group: sfc::script::lua::Error
; alias: _ZN3sfc6script3lua5ErrorD1Ev
; demangled: sfc::script::lua::Error::~Error()
; decoder-mode: arm
0031a68c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0031a690  24 20 9f e5                                      ldr r2, [pc, #0x24]
0031a694  10 40 2d e9                                      push {r4, lr}
0031a698  03 30 8f e0                                      add r3, pc, r3
0031a69c  02 20 93 e7                                      ldr r2, [r3, r2]
0031a6a0  00 40 a0 e1                                      mov r4, r0
0031a6a4  08 20 82 e2                                      add r2, r2, #8
0031a6a8  08 20 80 e4                                      str r2, [r0], #8
0031a6ac  be e4 ff eb                                      bl #0x3139ac
0031a6b0  04 00 a0 e1                                      mov r0, r4
0031a6b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031a6b8  f8 a3 67 00 98 14 00 00                          .byte 0xf8, 0xa3, 0x67, 0x00, 0x98, 0x14, 0x00, 0x00

; FUNCTION 0x0031a6c0, declared_size=52, range_size=52, mode=arm
; class-group: sfc::script::lua::Error
; alias: _ZN3sfc6script3lua5ErrorD2Ev
; demangled: sfc::script::lua::Error::~Error()
; decoder-mode: arm
0031a6c0  24 30 9f e5                                      ldr r3, [pc, #0x24]
0031a6c4  24 20 9f e5                                      ldr r2, [pc, #0x24]
0031a6c8  10 40 2d e9                                      push {r4, lr}
0031a6cc  03 30 8f e0                                      add r3, pc, r3
0031a6d0  02 20 93 e7                                      ldr r2, [r3, r2]
0031a6d4  00 40 a0 e1                                      mov r4, r0
0031a6d8  08 20 82 e2                                      add r2, r2, #8
0031a6dc  08 20 80 e4                                      str r2, [r0], #8
0031a6e0  b1 e4 ff eb                                      bl #0x3139ac
0031a6e4  04 00 a0 e1                                      mov r0, r4
0031a6e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031a6ec  c4 a3 67 00 98 14 00 00                          .byte 0xc4, 0xa3, 0x67, 0x00, 0x98, 0x14, 0x00, 0x00

; FUNCTION 0x0031a6f4, declared_size=28, range_size=28, mode=arm
; class-group: sfc::script::lua::Error
; alias: _ZN3sfc6script3lua5ErrorD0Ev
; demangled: sfc::script::lua::Error::~Error()
; decoder-mode: arm
0031a6f4  10 40 2d e9                                      push {r4, lr}
0031a6f8  00 40 a0 e1                                      mov r4, r0
0031a6fc  e2 ff ff eb                                      bl #0x31a68c
0031a700  04 00 a0 e1                                      mov r0, r4
0031a704  4d d7 ff eb                                      bl #0x310440
0031a708  04 00 a0 e1                                      mov r0, r4
0031a70c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031a714, declared_size=120, range_size=120, mode=arm
; class-group: sfc::script::lua::Error
; alias: _ZN3sfc6script3lua5ErrorC1ERKS2_
; demangled: sfc::script::lua::Error::Error(sfc::script::lua::Error const&)
; decoder-mode: arm
0031a714  68 30 9f e5                                      ldr r3, [pc, #0x68]
0031a718  68 20 9f e5                                      ldr r2, [pc, #0x68]
0031a71c  70 40 2d e9                                      push {r4, r5, r6, lr}
0031a720  03 30 8f e0                                      add r3, pc, r3
0031a724  02 20 93 e7                                      ldr r2, [r3, r2]
0031a728  00 50 a0 e1                                      mov r5, r0
0031a72c  00 40 a0 e1                                      mov r4, r0
0031a730  08 20 82 e2                                      add r2, r2, #8
0031a734  08 20 85 e4                                      str r2, [r5], #8
0031a738  18 50 80 e5                                      str r5, [r0, #0x18]
0031a73c  1c 50 80 e5                                      str r5, [r0, #0x1c]
0031a740  05 00 a0 e1                                      mov r0, r5
0031a744  01 60 a0 e1                                      mov r6, r1
0031a748  f0 ff ff eb                                      bl #0x31a710
0031a74c  18 30 94 e5                                      ldr r3, [r4, #0x18]
0031a750  00 10 a0 e3                                      mov r1, #0
0031a754  08 20 86 e2                                      add r2, r6, #8
0031a758  00 10 c3 e5                                      strb r1, [r3]
0031a75c  04 30 96 e5                                      ldr r3, [r6, #4]
0031a760  02 00 55 e1                                      cmp r5, r2
0031a764  04 30 84 e5                                      str r3, [r4, #4]
0031a768  03 00 00 0a                                      beq #0x31a77c
0031a76c  05 00 a0 e1                                      mov r0, r5
0031a770  18 20 96 e5                                      ldr r2, [r6, #0x18]
0031a774  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
0031a778  98 d8 ff eb                                      bl #0x3109e0
0031a77c  04 00 a0 e1                                      mov r0, r4
0031a780  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0031a784  70 a3 67 00 98 14 00 00                          .byte 0x70, 0xa3, 0x67, 0x00, 0x98, 0x14, 0x00, 0x00

; FUNCTION 0x0031a78c, declared_size=120, range_size=120, mode=arm
; class-group: sfc::script::lua::Error
; alias: _ZN3sfc6script3lua5ErrorC2ERKS2_
; demangled: sfc::script::lua::Error::Error(sfc::script::lua::Error const&)
; decoder-mode: arm
0031a78c  68 30 9f e5                                      ldr r3, [pc, #0x68]
0031a790  68 20 9f e5                                      ldr r2, [pc, #0x68]
0031a794  70 40 2d e9                                      push {r4, r5, r6, lr}
0031a798  03 30 8f e0                                      add r3, pc, r3
0031a79c  02 20 93 e7                                      ldr r2, [r3, r2]
0031a7a0  00 50 a0 e1                                      mov r5, r0
0031a7a4  00 40 a0 e1                                      mov r4, r0
0031a7a8  08 20 82 e2                                      add r2, r2, #8
0031a7ac  08 20 85 e4                                      str r2, [r5], #8
0031a7b0  18 50 80 e5                                      str r5, [r0, #0x18]
0031a7b4  1c 50 80 e5                                      str r5, [r0, #0x1c]
0031a7b8  05 00 a0 e1                                      mov r0, r5
0031a7bc  01 60 a0 e1                                      mov r6, r1
0031a7c0  d2 ff ff eb                                      bl #0x31a710
0031a7c4  18 30 94 e5                                      ldr r3, [r4, #0x18]
0031a7c8  00 10 a0 e3                                      mov r1, #0
0031a7cc  08 20 86 e2                                      add r2, r6, #8
0031a7d0  00 10 c3 e5                                      strb r1, [r3]
0031a7d4  04 30 96 e5                                      ldr r3, [r6, #4]
0031a7d8  02 00 55 e1                                      cmp r5, r2
0031a7dc  04 30 84 e5                                      str r3, [r4, #4]
0031a7e0  03 00 00 0a                                      beq #0x31a7f4
0031a7e4  05 00 a0 e1                                      mov r0, r5
0031a7e8  18 20 96 e5                                      ldr r2, [r6, #0x18]
0031a7ec  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
0031a7f0  7a d8 ff eb                                      bl #0x3109e0
0031a7f4  04 00 a0 e1                                      mov r0, r4
0031a7f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0031a7fc  f8 a2 67 00 98 14 00 00                          .byte 0xf8, 0xa2, 0x67, 0x00, 0x98, 0x14, 0x00, 0x00

; FUNCTION 0x0031a804, declared_size=84, range_size=84, mode=arm
; class-group: sfc::script::lua::Error
; alias: _ZN3sfc6script3lua5ErrorC1Ev
; demangled: sfc::script::lua::Error::Error()
; decoder-mode: arm
0031a804  44 20 9f e5                                      ldr r2, [pc, #0x44]
0031a808  44 10 9f e5                                      ldr r1, [pc, #0x44]
0031a80c  00 30 a0 e1                                      mov r3, r0
0031a810  02 20 8f e0                                      add r2, pc, r2
0031a814  01 10 92 e7                                      ldr r1, [r2, r1]
0031a818  10 40 2d e9                                      push {r4, lr}
0031a81c  08 10 81 e2                                      add r1, r1, #8
0031a820  00 40 a0 e1                                      mov r4, r0
0031a824  08 10 83 e4                                      str r1, [r3], #8
0031a828  03 00 a0 e1                                      mov r0, r3
0031a82c  18 30 84 e5                                      str r3, [r4, #0x18]
0031a830  1c 30 84 e5                                      str r3, [r4, #0x1c]
0031a834  b5 ff ff eb                                      bl #0x31a710
0031a838  18 20 94 e5                                      ldr r2, [r4, #0x18]
0031a83c  00 30 a0 e3                                      mov r3, #0
0031a840  04 00 a0 e1                                      mov r0, r4
0031a844  00 30 c2 e5                                      strb r3, [r2]
0031a848  04 30 84 e5                                      str r3, [r4, #4]
0031a84c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031a850  80 a2 67 00 98 14 00 00                          .byte 0x80, 0xa2, 0x67, 0x00, 0x98, 0x14, 0x00, 0x00

; FUNCTION 0x0031a858, declared_size=84, range_size=84, mode=arm
; class-group: sfc::script::lua::Error
; alias: _ZN3sfc6script3lua5ErrorC2Ev
; demangled: sfc::script::lua::Error::Error()
; decoder-mode: arm
0031a858  44 20 9f e5                                      ldr r2, [pc, #0x44]
0031a85c  44 10 9f e5                                      ldr r1, [pc, #0x44]
0031a860  00 30 a0 e1                                      mov r3, r0
0031a864  02 20 8f e0                                      add r2, pc, r2
0031a868  01 10 92 e7                                      ldr r1, [r2, r1]
0031a86c  10 40 2d e9                                      push {r4, lr}
0031a870  08 10 81 e2                                      add r1, r1, #8
0031a874  00 40 a0 e1                                      mov r4, r0
0031a878  08 10 83 e4                                      str r1, [r3], #8
0031a87c  03 00 a0 e1                                      mov r0, r3
0031a880  18 30 84 e5                                      str r3, [r4, #0x18]
0031a884  1c 30 84 e5                                      str r3, [r4, #0x1c]
0031a888  a0 ff ff eb                                      bl #0x31a710
0031a88c  18 20 94 e5                                      ldr r2, [r4, #0x18]
0031a890  00 30 a0 e3                                      mov r3, #0
0031a894  04 00 a0 e1                                      mov r0, r4
0031a898  00 30 c2 e5                                      strb r3, [r2]
0031a89c  04 30 84 e5                                      str r3, [r4, #4]
0031a8a0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031a8a4  2c a2 67 00 98 14 00 00                          .byte 0x2c, 0xa2, 0x67, 0x00, 0x98, 0x14, 0x00, 0x00

; FUNCTION 0x0031a8ac, declared_size=108, range_size=108, mode=arm
; class-group: sfc::script::lua::Error
; alias: _ZN3sfc6script3lua5Error8setErrorEP9lua_Statei
; demangled: sfc::script::lua::Error::setError(lua_State*, int)
; decoder-mode: arm
0031a8ac  00 00 52 e3                                      cmp r2, #0
0031a8b0  70 40 2d e9                                      push {r4, r5, r6, lr}
0031a8b4  00 40 a0 e1                                      mov r4, r0
0031a8b8  01 50 a0 e1                                      mov r5, r1
0031a8bc  04 20 80 e5                                      str r2, [r0, #4]
0031a8c0  05 00 00 1a                                      bne #0x31a8dc
0031a8c4  48 10 9f e5                                      ldr r1, [pc, #0x48]
0031a8c8  08 00 80 e2                                      add r0, r0, #8
0031a8cc  01 10 8f e0                                      add r1, pc, r1
0031a8d0  01 20 a0 e1                                      mov r2, r1
0031a8d4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0031a8d8  40 d8 ff ea                                      b #0x3109e0
0031a8dc  00 10 e0 e3                                      mvn r1, #0
0031a8e0  00 20 a0 e3                                      mov r2, #0
0031a8e4  05 00 a0 e1                                      mov r0, r5
0031a8e8  a5 c6 14 eb                                      bl #0x84c384
0031a8ec  00 60 a0 e1                                      mov r6, r0
0031a8f0  57 cd ff eb                                      bl #0x30de54
0031a8f4  06 10 a0 e1                                      mov r1, r6
0031a8f8  00 20 86 e0                                      add r2, r6, r0
0031a8fc  08 00 84 e2                                      add r0, r4, #8
0031a900  36 d8 ff eb                                      bl #0x3109e0
0031a904  05 00 a0 e1                                      mov r0, r5
0031a908  01 10 e0 e3                                      mvn r1, #1
0031a90c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0031a910  0a c2 14 ea                                      b #0x84b140
; mapping-symbol data/literal pool
0031a914  3c 0f 5b 00                                      .byte 0x3c, 0x0f, 0x5b, 0x00

; FUNCTION 0x0031a918, declared_size=104, range_size=104, mode=arm
; class-group: sfc::script::lua::Error
; alias: _ZN3sfc6script3lua5ErrorC1EP9lua_Statei
; demangled: sfc::script::lua::Error::Error(lua_State*, int)
; decoder-mode: arm
0031a918  58 c0 9f e5                                      ldr ip, [pc, #0x58]
0031a91c  70 40 2d e9                                      push {r4, r5, r6, lr}
0031a920  54 e0 9f e5                                      ldr lr, [pc, #0x54]
0031a924  0c c0 8f e0                                      add ip, pc, ip
0031a928  00 30 a0 e1                                      mov r3, r0
0031a92c  0e e0 9c e7                                      ldr lr, [ip, lr]
0031a930  00 40 a0 e1                                      mov r4, r0
0031a934  02 50 a0 e1                                      mov r5, r2
0031a938  08 e0 8e e2                                      add lr, lr, #8
0031a93c  08 e0 83 e4                                      str lr, [r3], #8
0031a940  03 00 a0 e1                                      mov r0, r3
0031a944  18 30 84 e5                                      str r3, [r4, #0x18]
0031a948  1c 30 84 e5                                      str r3, [r4, #0x1c]
0031a94c  01 60 a0 e1                                      mov r6, r1
0031a950  6e ff ff eb                                      bl #0x31a710
0031a954  18 30 94 e5                                      ldr r3, [r4, #0x18]
0031a958  00 20 a0 e3                                      mov r2, #0
0031a95c  04 00 a0 e1                                      mov r0, r4
0031a960  00 20 c3 e5                                      strb r2, [r3]
0031a964  06 10 a0 e1                                      mov r1, r6
0031a968  05 20 a0 e1                                      mov r2, r5
0031a96c  ce ff ff eb                                      bl #0x31a8ac
0031a970  04 00 a0 e1                                      mov r0, r4
0031a974  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0031a978  6c a1 67 00 98 14 00 00                          .byte 0x6c, 0xa1, 0x67, 0x00, 0x98, 0x14, 0x00, 0x00

; FUNCTION 0x0031a980, declared_size=104, range_size=104, mode=arm
; class-group: sfc::script::lua::Error
; alias: _ZN3sfc6script3lua5ErrorC2EP9lua_Statei
; demangled: sfc::script::lua::Error::Error(lua_State*, int)
; decoder-mode: arm
0031a980  58 c0 9f e5                                      ldr ip, [pc, #0x58]
0031a984  70 40 2d e9                                      push {r4, r5, r6, lr}
0031a988  54 e0 9f e5                                      ldr lr, [pc, #0x54]
0031a98c  0c c0 8f e0                                      add ip, pc, ip
0031a990  00 30 a0 e1                                      mov r3, r0
0031a994  0e e0 9c e7                                      ldr lr, [ip, lr]
0031a998  00 40 a0 e1                                      mov r4, r0
0031a99c  02 50 a0 e1                                      mov r5, r2
0031a9a0  08 e0 8e e2                                      add lr, lr, #8
0031a9a4  08 e0 83 e4                                      str lr, [r3], #8
0031a9a8  03 00 a0 e1                                      mov r0, r3
0031a9ac  18 30 84 e5                                      str r3, [r4, #0x18]
0031a9b0  1c 30 84 e5                                      str r3, [r4, #0x1c]
0031a9b4  01 60 a0 e1                                      mov r6, r1
0031a9b8  54 ff ff eb                                      bl #0x31a710
0031a9bc  18 30 94 e5                                      ldr r3, [r4, #0x18]
0031a9c0  00 20 a0 e3                                      mov r2, #0
0031a9c4  04 00 a0 e1                                      mov r0, r4
0031a9c8  00 20 c3 e5                                      strb r2, [r3]
0031a9cc  06 10 a0 e1                                      mov r1, r6
0031a9d0  05 20 a0 e1                                      mov r2, r5
0031a9d4  b4 ff ff eb                                      bl #0x31a8ac
0031a9d8  04 00 a0 e1                                      mov r0, r4
0031a9dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0031a9e0  04 a1 67 00 98 14 00 00                          .byte 0x04, 0xa1, 0x67, 0x00, 0x98, 0x14, 0x00, 0x00
