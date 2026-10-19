; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075c2cc, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::permanent_string_cache
; alias: _ZN7gameswf22permanent_string_cache3getERKNS_9tu_stringE
; demangled: gameswf::permanent_string_cache::get(gameswf::tu_string const&)
; decoder-mode: arm
0075c2cc  70 40 2d e9                                      push {r4, r5, r6, lr}
0075c2d0  08 d0 4d e2                                      sub sp, sp, #8
0075c2d4  01 50 a0 e1                                      mov r5, r1
0075c2d8  08 10 8d e2                                      add r1, sp, #8
0075c2dc  04 50 21 e5                                      str r5, [r1, #-4]!
0075c2e0  00 60 a0 e1                                      mov r6, r0
0075c2e4  8b f9 ff eb                                      bl #0x75a918
0075c2e8  00 00 50 e3                                      cmp r0, #0
0075c2ec  05 00 00 ba                                      blt #0x75c308
0075c2f0  00 30 96 e5                                      ldr r3, [r6]
0075c2f4  00 02 83 e0                                      add r0, r3, r0, lsl #4
0075c2f8  14 40 90 e5                                      ldr r4, [r0, #0x14]
0075c2fc  04 00 a0 e1                                      mov r0, r4
0075c300  08 d0 8d e2                                      add sp, sp, #8
0075c304  70 80 bd e8                                      pop {r4, r5, r6, pc}
0075c308  00 10 a0 e3                                      mov r1, #0
0075c30c  14 00 a0 e3                                      mov r0, #0x14
0075c310  24 da ff eb                                      bl #0x752ba8
0075c314  05 10 a0 e1                                      mov r1, r5
0075c318  00 40 a0 e1                                      mov r4, r0
0075c31c  c2 fe ff eb                                      bl #0x75be2c
0075c320  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0075c324  08 10 8d e2                                      add r1, sp, #8
0075c328  06 00 a0 e1                                      mov r0, r6
0075c32c  01 30 83 e3                                      orr r3, r3, #1
0075c330  13 30 c4 e5                                      strb r3, [r4, #0x13]
0075c334  08 40 21 e5                                      str r4, [r1, #-8]!
0075c338  0d 10 a0 e1                                      mov r1, sp
0075c33c  cc ff ff eb                                      bl #0x75c274
0075c340  00 40 80 e5                                      str r4, [r0]
0075c344  ec ff ff ea                                      b #0x75c2fc

; FUNCTION 0x0076c8ac, declared_size=228, range_size=228, mode=arm
; class-group: gameswf::permanent_string_cache
; alias: _ZN7gameswf22permanent_string_cache5clearEv
; demangled: gameswf::permanent_string_cache::clear()
; decoder-mode: arm
0076c8ac  70 40 2d e9                                      push {r4, r5, r6, lr}
0076c8b0  00 20 90 e5                                      ldr r2, [r0]
0076c8b4  00 50 a0 e1                                      mov r5, r0
0076c8b8  00 00 52 e3                                      cmp r2, #0
0076c8bc  0a 00 00 0a                                      beq #0x76c8ec
0076c8c0  04 10 92 e5                                      ldr r1, [r2, #4]
0076c8c4  00 00 51 e3                                      cmp r1, #0
0076c8c8  00 40 a0 b3                                      movlt r4, #0
0076c8cc  09 00 00 aa                                      bge #0x76c8f8
0076c8d0  00 00 55 e3                                      cmp r5, #0
0076c8d4  04 00 00 0a                                      beq #0x76c8ec
0076c8d8  00 00 52 e3                                      cmp r2, #0
0076c8dc  02 00 00 0a                                      beq #0x76c8ec
0076c8e0  04 30 92 e5                                      ldr r3, [r2, #4]
0076c8e4  03 00 54 e1                                      cmp r4, r3
0076c8e8  10 00 00 da                                      ble #0x76c930
0076c8ec  05 00 a0 e1                                      mov r0, r5
0076c8f0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0076c8f4  d0 b5 ff ea                                      b #0x75a03c
0076c8f8  08 30 a0 e3                                      mov r3, #8
0076c8fc  00 40 a0 e3                                      mov r4, #0
0076c900  03 00 92 e7                                      ldr r0, [r2, r3]
0076c904  03 c0 82 e0                                      add ip, r2, r3
0076c908  10 30 83 e2                                      add r3, r3, #0x10
0076c90c  02 00 70 e3                                      cmn r0, #2
0076c910  02 00 00 0a                                      beq #0x76c920
0076c914  04 00 9c e5                                      ldr r0, [ip, #4]
0076c918  01 00 70 e3                                      cmn r0, #1
0076c91c  eb ff ff 1a                                      bne #0x76c8d0
0076c920  01 40 84 e2                                      add r4, r4, #1
0076c924  01 00 54 e1                                      cmp r4, r1
0076c928  f4 ff ff da                                      ble #0x76c900
0076c92c  e7 ff ff ea                                      b #0x76c8d0
0076c930  04 22 82 e0                                      add r2, r2, r4, lsl #4
0076c934  14 00 92 e5                                      ldr r0, [r2, #0x14]
0076c938  cc ff ff eb                                      bl #0x76c870
0076c93c  00 20 95 e5                                      ldr r2, [r5]
0076c940  04 10 92 e5                                      ldr r1, [r2, #4]
0076c944  01 00 54 e1                                      cmp r4, r1
0076c948  e7 ff ff ca                                      bgt #0x76c8ec
0076c94c  01 40 84 e2                                      add r4, r4, #1
0076c950  04 00 51 e1                                      cmp r1, r4
0076c954  df ff ff ba                                      blt #0x76c8d8
0076c958  04 32 a0 e1                                      lsl r3, r4, #4
0076c95c  08 30 83 e2                                      add r3, r3, #8
0076c960  03 00 92 e7                                      ldr r0, [r2, r3]
0076c964  03 c0 82 e0                                      add ip, r2, r3
0076c968  10 30 83 e2                                      add r3, r3, #0x10
0076c96c  02 00 70 e3                                      cmn r0, #2
0076c970  02 00 00 0a                                      beq #0x76c980
0076c974  04 00 9c e5                                      ldr r0, [ip, #4]
0076c978  01 00 70 e3                                      cmn r0, #1
0076c97c  d5 ff ff 1a                                      bne #0x76c8d8
0076c980  01 40 84 e2                                      add r4, r4, #1
0076c984  04 00 51 e1                                      cmp r1, r4
0076c988  f4 ff ff aa                                      bge #0x76c960
0076c98c  d1 ff ff ea                                      b #0x76c8d8

; FUNCTION 0x0076c990, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::permanent_string_cache
; alias: _ZN7gameswf22permanent_string_cacheD1Ev
; demangled: gameswf::permanent_string_cache::~permanent_string_cache()
; decoder-mode: arm
0076c990  10 40 2d e9                                      push {r4, lr}
0076c994  00 40 a0 e1                                      mov r4, r0
0076c998  c3 ff ff eb                                      bl #0x76c8ac
0076c99c  04 00 a0 e1                                      mov r0, r4
0076c9a0  a5 b5 ff eb                                      bl #0x75a03c
0076c9a4  04 00 a0 e1                                      mov r0, r4
0076c9a8  10 80 bd e8                                      pop {r4, pc}
