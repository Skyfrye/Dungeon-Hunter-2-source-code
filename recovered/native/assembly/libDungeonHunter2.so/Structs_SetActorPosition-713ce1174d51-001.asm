; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d20f4, declared_size=76, range_size=76, mode=arm
; class-group: Structs::SetActorPosition
; alias: _ZN7Structs16SetActorPosition8finalizeEv
; demangled: Structs::SetActorPosition::finalize()
; decoder-mode: arm
004d20f4  10 40 2d e9                                      push {r4, lr}
004d20f8  00 40 a0 e1                                      mov r4, r0
004d20fc  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2100  00 00 50 e3                                      cmp r0, #0
004d2104  03 00 00 0a                                      beq #0x4d2118
004d2108  cc f8 f8 eb                                      bl #0x310440
004d210c  00 30 a0 e3                                      mov r3, #0
004d2110  08 30 84 e5                                      str r3, [r4, #8]
004d2114  0c 30 84 e5                                      str r3, [r4, #0xc]
004d2118  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d211c  00 00 50 e3                                      cmp r0, #0
004d2120  03 00 00 0a                                      beq #0x4d2134
004d2124  c5 f8 f8 eb                                      bl #0x310440
004d2128  00 30 a0 e3                                      mov r3, #0
004d212c  10 30 84 e5                                      str r3, [r4, #0x10]
004d2130  14 30 84 e5                                      str r3, [r4, #0x14]
004d2134  04 00 a0 e1                                      mov r0, r4
004d2138  10 40 bd e8                                      pop {r4, lr}
004d213c  c9 d2 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d2140, declared_size=88, range_size=88, mode=arm
; class-group: Structs::SetActorPosition
; alias: _ZN7Structs16SetActorPositionD1Ev
; demangled: Structs::SetActorPosition::~SetActorPosition()
; decoder-mode: arm
004d2140  10 40 2d e9                                      push {r4, lr}
004d2144  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d2148  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d214c  00 40 a0 e1                                      mov r4, r0
004d2150  03 30 8f e0                                      add r3, pc, r3
004d2154  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2158  02 20 93 e7                                      ldr r2, [r3, r2]
004d215c  00 00 50 e3                                      cmp r0, #0
004d2160  08 20 82 e2                                      add r2, r2, #8
004d2164  00 20 84 e5                                      str r2, [r4]
004d2168  00 00 00 0a                                      beq #0x4d2170
004d216c  b3 f8 f8 eb                                      bl #0x310440
004d2170  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d2174  00 00 50 e3                                      cmp r0, #0
004d2178  00 00 00 0a                                      beq #0x4d2180
004d217c  af f8 f8 eb                                      bl #0x310440
004d2180  04 00 a0 e1                                      mov r0, r4
004d2184  b5 d2 ff eb                                      bl #0x4c6c60
004d2188  04 00 a0 e1                                      mov r0, r4
004d218c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2190  40 29 4c 00 30 08 00 00                          .byte 0x40, 0x29, 0x4c, 0x00, 0x30, 0x08, 0x00, 0x00

; FUNCTION 0x004d2198, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SetActorPosition
; alias: _ZN7Structs16SetActorPositionD0Ev
; demangled: Structs::SetActorPosition::~SetActorPosition()
; decoder-mode: arm
004d2198  10 40 2d e9                                      push {r4, lr}
004d219c  00 40 a0 e1                                      mov r4, r0
004d21a0  e6 ff ff eb                                      bl #0x4d2140
004d21a4  04 00 a0 e1                                      mov r0, r4
004d21a8  a4 f8 f8 eb                                      bl #0x310440
004d21ac  04 00 a0 e1                                      mov r0, r4
004d21b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d21b4, declared_size=88, range_size=88, mode=arm
; class-group: Structs::SetActorPosition
; alias: _ZN7Structs16SetActorPositionD2Ev
; demangled: Structs::SetActorPosition::~SetActorPosition()
; decoder-mode: arm
004d21b4  10 40 2d e9                                      push {r4, lr}
004d21b8  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d21bc  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d21c0  00 40 a0 e1                                      mov r4, r0
004d21c4  03 30 8f e0                                      add r3, pc, r3
004d21c8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d21cc  02 20 93 e7                                      ldr r2, [r3, r2]
004d21d0  00 00 50 e3                                      cmp r0, #0
004d21d4  08 20 82 e2                                      add r2, r2, #8
004d21d8  00 20 84 e5                                      str r2, [r4]
004d21dc  00 00 00 0a                                      beq #0x4d21e4
004d21e0  96 f8 f8 eb                                      bl #0x310440
004d21e4  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d21e8  00 00 50 e3                                      cmp r0, #0
004d21ec  00 00 00 0a                                      beq #0x4d21f4
004d21f0  92 f8 f8 eb                                      bl #0x310440
004d21f4  04 00 a0 e1                                      mov r0, r4
004d21f8  98 d2 ff eb                                      bl #0x4c6c60
004d21fc  04 00 a0 e1                                      mov r0, r4
004d2200  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2204  cc 28 4c 00 30 08 00 00                          .byte 0xcc, 0x28, 0x4c, 0x00, 0x30, 0x08, 0x00, 0x00

; FUNCTION 0x00500e90, declared_size=356, range_size=356, mode=arm
; class-group: Structs::SetActorPosition
; alias: _ZN7Structs16SetActorPosition4readEP11IStreamBase
; demangled: Structs::SetActorPosition::read(IStreamBase*)
; decoder-mode: arm
00500e90  70 40 2d e9                                      push {r4, r5, r6, lr}
00500e94  00 40 a0 e1                                      mov r4, r0
00500e98  08 d0 4d e2                                      sub sp, sp, #8
00500e9c  01 50 a0 e1                                      mov r5, r1
00500ea0  60 fa ff eb                                      bl #0x4ff828
00500ea4  05 00 a0 e1                                      mov r0, r5
00500ea8  08 10 84 e2                                      add r1, r4, #8
00500eac  bb 78 fb eb                                      bl #0x3df1a0
00500eb0  01 30 a0 e3                                      mov r3, #1
00500eb4  00 00 53 e3                                      cmp r3, #0
00500eb8  04 30 8d e5                                      str r3, [sp, #4]
00500ebc  0f 00 00 1a                                      bne #0x500f00
00500ec0  09 30 84 e2                                      add r3, r4, #9
00500ec4  0a 20 84 e2                                      add r2, r4, #0xa
00500ec8  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500ecc  01 10 53 e5                                      ldrb r1, [r3, #-1]
00500ed0  02 00 53 e1                                      cmp r3, r2
00500ed4  01 10 20 e0                                      eor r1, r0, r1
00500ed8  01 10 43 e5                                      strb r1, [r3, #-1]
00500edc  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500ee0  00 10 21 e0                                      eor r1, r1, r0
00500ee4  01 10 c2 e5                                      strb r1, [r2, #1]
00500ee8  01 00 53 e5                                      ldrb r0, [r3, #-1]
00500eec  01 20 42 e2                                      sub r2, r2, #1
00500ef0  00 10 21 e0                                      eor r1, r1, r0
00500ef4  01 10 43 e5                                      strb r1, [r3, #-1]
00500ef8  01 30 83 e2                                      add r3, r3, #1
00500efc  f1 ff ff 3a                                      blo #0x500ec8
00500f00  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00500f04  00 00 50 e3                                      cmp r0, #0
00500f08  00 00 00 0a                                      beq #0x500f10
00500f0c  4b 3d f8 eb                                      bl #0x310440
00500f10  08 00 94 e5                                      ldr r0, [r4, #8]
00500f14  01 10 a0 e3                                      mov r1, #1
00500f18  00 60 a0 e3                                      mov r6, #0
00500f1c  01 00 80 e0                                      add r0, r0, r1
00500f20  91 3d f8 eb                                      bl #0x31056c
00500f24  08 20 94 e5                                      ldr r2, [r4, #8]
00500f28  00 10 a0 e1                                      mov r1, r0
00500f2c  0c 00 84 e5                                      str r0, [r4, #0xc]
00500f30  06 30 a0 e1                                      mov r3, r6
00500f34  05 00 a0 e1                                      mov r0, r5
00500f38  45 59 f8 eb                                      bl #0x317454
00500f3c  08 30 94 e5                                      ldr r3, [r4, #8]
00500f40  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00500f44  05 00 a0 e1                                      mov r0, r5
00500f48  10 10 84 e2                                      add r1, r4, #0x10
00500f4c  03 60 c2 e7                                      strb r6, [r2, r3]
00500f50  92 78 fb eb                                      bl #0x3df1a0
00500f54  01 30 a0 e3                                      mov r3, #1
00500f58  06 00 53 e1                                      cmp r3, r6
00500f5c  04 30 8d e5                                      str r3, [sp, #4]
00500f60  0f 00 00 1a                                      bne #0x500fa4
00500f64  11 30 84 e2                                      add r3, r4, #0x11
00500f68  12 20 84 e2                                      add r2, r4, #0x12
00500f6c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500f70  01 10 53 e5                                      ldrb r1, [r3, #-1]
00500f74  02 00 53 e1                                      cmp r3, r2
00500f78  01 10 20 e0                                      eor r1, r0, r1
00500f7c  01 10 43 e5                                      strb r1, [r3, #-1]
00500f80  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500f84  00 10 21 e0                                      eor r1, r1, r0
00500f88  01 10 c2 e5                                      strb r1, [r2, #1]
00500f8c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00500f90  01 20 42 e2                                      sub r2, r2, #1
00500f94  00 10 21 e0                                      eor r1, r1, r0
00500f98  01 10 43 e5                                      strb r1, [r3, #-1]
00500f9c  01 30 83 e2                                      add r3, r3, #1
00500fa0  f1 ff ff 3a                                      blo #0x500f6c
00500fa4  14 00 94 e5                                      ldr r0, [r4, #0x14]
00500fa8  00 00 50 e3                                      cmp r0, #0
00500fac  00 00 00 0a                                      beq #0x500fb4
00500fb0  22 3d f8 eb                                      bl #0x310440
00500fb4  10 00 94 e5                                      ldr r0, [r4, #0x10]
00500fb8  01 10 a0 e3                                      mov r1, #1
00500fbc  00 60 a0 e3                                      mov r6, #0
00500fc0  01 00 80 e0                                      add r0, r0, r1
00500fc4  68 3d f8 eb                                      bl #0x31056c
00500fc8  10 20 94 e5                                      ldr r2, [r4, #0x10]
00500fcc  00 10 a0 e1                                      mov r1, r0
00500fd0  14 00 84 e5                                      str r0, [r4, #0x14]
00500fd4  06 30 a0 e1                                      mov r3, r6
00500fd8  05 00 a0 e1                                      mov r0, r5
00500fdc  1c 59 f8 eb                                      bl #0x317454
00500fe0  10 30 94 e5                                      ldr r3, [r4, #0x10]
00500fe4  14 20 94 e5                                      ldr r2, [r4, #0x14]
00500fe8  03 60 c2 e7                                      strb r6, [r2, r3]
00500fec  08 d0 8d e2                                      add sp, sp, #8
00500ff0  70 80 bd e8                                      pop {r4, r5, r6, pc}
