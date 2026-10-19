; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081bcb4, declared_size=28, range_size=28, mode=arm
; class-group: NetStructString<16u>
; alias: _ZN15NetStructStringILj16EE9TestValueERKSs
; demangled: NetStructString<16u>::TestValue(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
0081bcb4  14 30 91 e5                                      ldr r3, [r1, #0x14]
0081bcb8  10 00 91 e5                                      ldr r0, [r1, #0x10]
0081bcbc  00 00 63 e0                                      rsb r0, r3, r0
0081bcc0  0f 00 50 e3                                      cmp r0, #0xf
0081bcc4  00 00 a0 83                                      movhi r0, #0
0081bcc8  01 00 a0 93                                      movls r0, #1
0081bccc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081d078, declared_size=52, range_size=52, mode=arm
; class-group: NetStructString<16u>
; alias: _ZN15NetStructStringILj16EED1Ev
; demangled: NetStructString<16u>::~NetStructString()
; decoder-mode: arm
0081d078  24 30 9f e5                                      ldr r3, [pc, #0x24]
0081d07c  24 20 9f e5                                      ldr r2, [pc, #0x24]
0081d080  10 40 2d e9                                      push {r4, lr}
0081d084  03 30 8f e0                                      add r3, pc, r3
0081d088  02 20 93 e7                                      ldr r2, [r3, r2]
0081d08c  00 40 a0 e1                                      mov r4, r0
0081d090  08 20 82 e2                                      add r2, r2, #8
0081d094  20 20 80 e4                                      str r2, [r0], #0x20
0081d098  6d ec eb eb                                      bl #0x318254
0081d09c  04 00 a0 e1                                      mov r0, r4
0081d0a0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0081d0a4  0c 7a 17 00 30 3e 00 00                          .byte 0x0c, 0x7a, 0x17, 0x00, 0x30, 0x3e, 0x00, 0x00

; FUNCTION 0x0081d134, declared_size=112, range_size=112, mode=arm
; class-group: NetStructString<16u>
; alias: _ZN15NetStructStringILj16EE4ReadER12NetBitStream
; demangled: NetStructString<16u>::Read(NetBitStream&)
; decoder-mode: arm
0081d134  60 30 9f e5                                      ldr r3, [pc, #0x60]
0081d138  60 20 9f e5                                      ldr r2, [pc, #0x60]
0081d13c  70 40 2d e9                                      push {r4, r5, r6, lr}
0081d140  03 30 8f e0                                      add r3, pc, r3
0081d144  02 50 93 e7                                      ldr r5, [r3, r2]
0081d148  20 d0 4d e2                                      sub sp, sp, #0x20
0081d14c  04 40 8d e2                                      add r4, sp, #4
0081d150  00 20 95 e5                                      ldr r2, [r5]
0081d154  00 60 a0 e1                                      mov r6, r0
0081d158  04 00 a0 e1                                      mov r0, r4
0081d15c  1c 20 8d e5                                      str r2, [sp, #0x1c]
0081d160  b2 c6 ff eb                                      bl #0x80ec30
0081d164  00 30 96 e5                                      ldr r3, [r6]
0081d168  06 00 a0 e1                                      mov r0, r6
0081d16c  04 10 a0 e1                                      mov r1, r4
0081d170  0f e0 a0 e1                                      mov lr, pc
0081d174  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0081d178  04 00 a0 e1                                      mov r0, r4
0081d17c  34 ec eb eb                                      bl #0x318254
0081d180  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0081d184  00 30 95 e5                                      ldr r3, [r5]
0081d188  03 00 52 e1                                      cmp r2, r3
0081d18c  01 00 00 1a                                      bne #0x81d198
0081d190  20 d0 8d e2                                      add sp, sp, #0x20
0081d194  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081d198  5c c4 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081d19c  50 79 17 00 ac 40 00 00                          .byte 0x50, 0x79, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0081d1a4, declared_size=80, range_size=80, mode=arm
; class-group: NetStructString<16u>
; alias: _ZN15NetStructStringILj16EED0Ev
; demangled: NetStructString<16u>::~NetStructString()
; decoder-mode: arm
0081d1a4  70 40 2d e9                                      push {r4, r5, r6, lr}
0081d1a8  38 40 9f e5                                      ldr r4, [pc, #0x38]
0081d1ac  38 30 9f e5                                      ldr r3, [pc, #0x38]
0081d1b0  00 50 a0 e1                                      mov r5, r0
0081d1b4  04 40 8f e0                                      add r4, pc, r4
0081d1b8  03 30 94 e7                                      ldr r3, [r4, r3]
0081d1bc  08 30 83 e2                                      add r3, r3, #8
0081d1c0  20 30 80 e4                                      str r3, [r0], #0x20
0081d1c4  22 ec eb eb                                      bl #0x318254
0081d1c8  20 30 9f e5                                      ldr r3, [pc, #0x20]
0081d1cc  05 00 a0 e1                                      mov r0, r5
0081d1d0  03 30 94 e7                                      ldr r3, [r4, r3]
0081d1d4  08 30 83 e2                                      add r3, r3, #8
0081d1d8  00 30 85 e5                                      str r3, [r5]
0081d1dc  97 cc eb eb                                      bl #0x310440
0081d1e0  05 00 a0 e1                                      mov r0, r5
0081d1e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0081d1e8  dc 78 17 00 30 3e 00 00 a8 10 00 00              .byte 0xdc, 0x78, 0x17, 0x00, 0x30, 0x3e, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x0081e1e8, declared_size=116, range_size=116, mode=arm
; class-group: NetStructString<16u>
; alias: _ZN15NetStructStringILj16EE5WriteER12NetBitStream
; demangled: NetStructString<16u>::Write(NetBitStream&)
; decoder-mode: arm
0081e1e8  64 30 9f e5                                      ldr r3, [pc, #0x64]
0081e1ec  64 20 9f e5                                      ldr r2, [pc, #0x64]
0081e1f0  70 40 2d e9                                      push {r4, r5, r6, lr}
0081e1f4  03 30 8f e0                                      add r3, pc, r3
0081e1f8  02 50 93 e7                                      ldr r5, [r3, r2]
0081e1fc  20 d0 4d e2                                      sub sp, sp, #0x20
0081e200  04 40 8d e2                                      add r4, sp, #4
0081e204  00 20 95 e5                                      ldr r2, [r5]
0081e208  20 00 80 e2                                      add r0, r0, #0x20
0081e20c  01 60 a0 e1                                      mov r6, r1
0081e210  00 10 a0 e1                                      mov r1, r0
0081e214  04 00 a0 e1                                      mov r0, r4
0081e218  1c 20 8d e5                                      str r2, [sp, #0x1c]
0081e21c  bd 35 ec eb                                      bl #0x32b918
0081e220  10 20 a0 e3                                      mov r2, #0x10
0081e224  06 00 a0 e1                                      mov r0, r6
0081e228  04 10 a0 e1                                      mov r1, r4
0081e22c  df c2 ff eb                                      bl #0x80edb0
0081e230  04 00 a0 e1                                      mov r0, r4
0081e234  06 e8 eb eb                                      bl #0x318254
0081e238  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0081e23c  00 30 95 e5                                      ldr r3, [r5]
0081e240  03 00 52 e1                                      cmp r2, r3
0081e244  01 00 00 1a                                      bne #0x81e250
0081e248  20 d0 8d e2                                      add sp, sp, #0x20
0081e24c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081e250  2e c0 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081e254  9c 68 17 00 ac 40 00 00                          .byte 0x9c, 0x68, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0081e5a0, declared_size=224, range_size=224, mode=arm
; class-group: NetStructString<16u>
; alias: _ZN15NetStructStringILj16EEC1ESs
; demangled: NetStructString<16u>::NetStructString(std::basic_string<char, std::char_traits<char>, std::allocator<char> >)
; decoder-mode: arm
0081e5a0  f0 4d 2d e9                                      push {r4, r5, r6, r7, r8, sl, fp, lr}
0081e5a4  c4 50 9f e5                                      ldr r5, [pc, #0xc4]
0081e5a8  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
0081e5ac  20 d0 4d e2                                      sub sp, sp, #0x20
0081e5b0  05 50 8f e0                                      add r5, pc, r5
0081e5b4  03 80 95 e7                                      ldr r8, [r5, r3]
0081e5b8  04 60 8d e2                                      add r6, sp, #4
0081e5bc  00 40 a0 e1                                      mov r4, r0
0081e5c0  00 30 98 e5                                      ldr r3, [r8]
0081e5c4  06 00 a0 e1                                      mov r0, r6
0081e5c8  00 70 a0 e3                                      mov r7, #0
0081e5cc  1c 30 8d e5                                      str r3, [sp, #0x1c]
0081e5d0  d0 34 ec eb                                      bl #0x32b918
0081e5d4  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
0081e5d8  04 30 a0 e1                                      mov r3, r4
0081e5dc  00 10 e0 e3                                      mvn r1, #0
0081e5e0  02 20 95 e7                                      ldr r2, [r5, r2]
0081e5e4  80 00 a0 e3                                      mov r0, #0x80
0081e5e8  00 a0 a0 e3                                      mov sl, #0
0081e5ec  08 20 82 e2                                      add r2, r2, #8
0081e5f0  00 b0 a0 e3                                      mov fp, #0
0081e5f4  04 00 84 e5                                      str r0, [r4, #4]
0081e5f8  14 10 84 e5                                      str r1, [r4, #0x14]
0081e5fc  10 10 84 e5                                      str r1, [r4, #0x10]
0081e600  f8 a0 c4 e1                                      strd sl, fp, [r4, #8]
0081e604  18 70 84 e5                                      str r7, [r4, #0x18]
0081e608  1c 70 c4 e5                                      strb r7, [r4, #0x1c]
0081e60c  20 20 83 e4                                      str r2, [r3], #0x20
0081e610  03 00 a0 e1                                      mov r0, r3
0081e614  30 30 84 e5                                      str r3, [r4, #0x30]
0081e618  34 30 84 e5                                      str r3, [r4, #0x34]
0081e61c  10 10 a0 e3                                      mov r1, #0x10
0081e620  15 cc eb eb                                      bl #0x31167c
0081e624  30 30 94 e5                                      ldr r3, [r4, #0x30]
0081e628  06 10 a0 e1                                      mov r1, r6
0081e62c  04 00 a0 e1                                      mov r0, r4
0081e630  00 70 c3 e5                                      strb r7, [r3]
0081e634  84 45 ed eb                                      bl #0x36fc4c
0081e638  06 00 a0 e1                                      mov r0, r6
0081e63c  04 e7 eb eb                                      bl #0x318254
0081e640  34 30 9f e5                                      ldr r3, [pc, #0x34]
0081e644  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0081e648  04 00 a0 e1                                      mov r0, r4
0081e64c  03 30 95 e7                                      ldr r3, [r5, r3]
0081e650  08 30 83 e2                                      add r3, r3, #8
0081e654  00 30 84 e5                                      str r3, [r4]
0081e658  00 30 98 e5                                      ldr r3, [r8]
0081e65c  03 00 52 e1                                      cmp r2, r3
0081e660  01 00 00 1a                                      bne #0x81e66c
0081e664  20 d0 8d e2                                      add sp, sp, #0x20
0081e668  f0 8d bd e8                                      pop {r4, r5, r6, r7, r8, sl, fp, pc}
0081e66c  27 bf eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081e670  e0 64 17 00 ac 40 00 00 30 3e 00 00 a4 1f 00 00  .byte 0xe0, 0x64, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00, 0x30, 0x3e, 0x00, 0x00, 0xa4, 0x1f, 0x00, 0x00
