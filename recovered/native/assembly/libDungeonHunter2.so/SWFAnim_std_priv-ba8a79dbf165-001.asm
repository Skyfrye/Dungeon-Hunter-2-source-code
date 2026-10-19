; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00497278, declared_size=304, range_size=304, mode=arm
; class-group: SWFAnim** std::priv
; alias: _ZNSt4priv6__findIPP7SWFAnimS2_EET_S4_S4_RKT0_RKSt26random_access_iterator_tag
; demangled: SWFAnim** std::priv::__find<SWFAnim**, SWFAnim*>(SWFAnim**, SWFAnim**, SWFAnim* const&, std::random_access_iterator_tag const&)
; decoder-mode: arm
00497278  00 30 a0 e1                                      mov r3, r0
0049727c  01 00 60 e0                                      rsb r0, r0, r1
00497280  40 c2 a0 e1                                      asr ip, r0, #4
00497284  00 00 5c e3                                      cmp ip, #0
00497288  30 00 2d e9                                      push {r4, r5}
0049728c  40 41 a0 e1                                      asr r4, r0, #2
00497290  03 00 a0 d1                                      movle r0, r3
00497294  21 00 00 da                                      ble #0x497320
00497298  00 00 93 e5                                      ldr r0, [r3]
0049729c  00 40 92 e5                                      ldr r4, [r2]
004972a0  04 00 50 e1                                      cmp r0, r4
004972a4  03 00 a0 01                                      moveq r0, r3
004972a8  23 00 00 0a                                      beq #0x49733c
004972ac  04 50 93 e5                                      ldr r5, [r3, #4]
004972b0  04 00 83 e2                                      add r0, r3, #4
004972b4  05 00 54 e1                                      cmp r4, r5
004972b8  1f 00 00 0a                                      beq #0x49733c
004972bc  04 50 b0 e5                                      ldr r5, [r0, #4]!
004972c0  05 00 54 e1                                      cmp r4, r5
004972c4  1c 00 00 0a                                      beq #0x49733c
004972c8  04 50 b0 e5                                      ldr r5, [r0, #4]!
004972cc  05 00 54 e1                                      cmp r4, r5
004972d0  0d 00 00 1a                                      bne #0x49730c
004972d4  18 00 00 ea                                      b #0x49733c
004972d8  10 00 93 e5                                      ldr r0, [r3, #0x10]
004972dc  04 00 50 e1                                      cmp r0, r4
004972e0  22 00 00 0a                                      beq #0x497370
004972e4  14 00 93 e5                                      ldr r0, [r3, #0x14]
004972e8  04 00 50 e1                                      cmp r0, r4
004972ec  21 00 00 0a                                      beq #0x497378
004972f0  18 00 93 e5                                      ldr r0, [r3, #0x18]
004972f4  00 00 54 e1                                      cmp r4, r0
004972f8  20 00 00 0a                                      beq #0x497380
004972fc  10 30 83 e2                                      add r3, r3, #0x10
00497300  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00497304  00 00 54 e1                                      cmp r4, r0
00497308  1e 00 00 0a                                      beq #0x497388
0049730c  01 c0 5c e2                                      subs ip, ip, #1
00497310  f0 ff ff 1a                                      bne #0x4972d8
00497314  10 00 83 e2                                      add r0, r3, #0x10
00497318  01 40 60 e0                                      rsb r4, r0, r1
0049731c  44 41 a0 e1                                      asr r4, r4, #2
00497320  02 00 54 e3                                      cmp r4, #2
00497324  06 00 00 0a                                      beq #0x497344
00497328  03 00 54 e3                                      cmp r4, #3
0049732c  17 00 00 0a                                      beq #0x497390
00497330  01 00 54 e3                                      cmp r4, #1
00497334  0b 00 00 0a                                      beq #0x497368
00497338  01 00 a0 e1                                      mov r0, r1
0049733c  30 00 bd e8                                      pop {r4, r5}
00497340  1e ff 2f e1                                      bx lr
00497344  00 30 92 e5                                      ldr r3, [r2]
00497348  00 20 90 e5                                      ldr r2, [r0]
0049734c  03 00 52 e1                                      cmp r2, r3
00497350  f9 ff ff 0a                                      beq #0x49733c
00497354  04 00 80 e2                                      add r0, r0, #4
00497358  00 20 90 e5                                      ldr r2, [r0]
0049735c  03 00 52 e1                                      cmp r2, r3
00497360  01 00 a0 11                                      movne r0, r1
00497364  f4 ff ff ea                                      b #0x49733c
00497368  00 30 92 e5                                      ldr r3, [r2]
0049736c  f9 ff ff ea                                      b #0x497358
00497370  10 00 83 e2                                      add r0, r3, #0x10
00497374  f0 ff ff ea                                      b #0x49733c
00497378  14 00 83 e2                                      add r0, r3, #0x14
0049737c  ee ff ff ea                                      b #0x49733c
00497380  18 00 83 e2                                      add r0, r3, #0x18
00497384  ec ff ff ea                                      b #0x49733c
00497388  0c 00 83 e2                                      add r0, r3, #0xc
0049738c  ea ff ff ea                                      b #0x49733c
00497390  00 30 92 e5                                      ldr r3, [r2]
00497394  00 20 90 e5                                      ldr r2, [r0]
00497398  03 00 52 e1                                      cmp r2, r3
0049739c  e6 ff ff 0a                                      beq #0x49733c
004973a0  04 00 80 e2                                      add r0, r0, #4
004973a4  e7 ff ff ea                                      b #0x497348
