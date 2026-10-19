; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6a2c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GameOption
; alias: _ZN7Structs10GameOptionD2Ev
; demangled: Structs::GameOption::~GameOption()
; decoder-mode: arm
004c6a2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6a30, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GameOption
; alias: _ZN7Structs10GameOptionD1Ev
; demangled: Structs::GameOption::~GameOption()
; decoder-mode: arm
004c6a30  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6a34, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GameOption
; alias: _ZN7Structs10GameOption8finalizeEv
; demangled: Structs::GameOption::finalize()
; decoder-mode: arm
004c6a34  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce374, declared_size=28, range_size=28, mode=arm
; class-group: Structs::GameOption
; alias: _ZN7Structs10GameOptionD0Ev
; demangled: Structs::GameOption::~GameOption()
; decoder-mode: arm
004ce374  10 40 2d e9                                      push {r4, lr}
004ce378  00 40 a0 e1                                      mov r4, r0
004ce37c  ab e1 ff eb                                      bl #0x4c6a30
004ce380  04 00 a0 e1                                      mov r0, r4
004ce384  2d 08 f9 eb                                      bl #0x310440
004ce388  04 00 a0 e1                                      mov r0, r4
004ce38c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f213c, declared_size=668, range_size=668, mode=arm
; class-group: Structs::GameOption
; alias: _ZN7Structs10GameOption4readEP11IStreamBase
; demangled: Structs::GameOption::read(IStreamBase*)
; decoder-mode: arm
004f213c  30 40 2d e9                                      push {r4, r5, lr}
004f2140  00 40 a0 e1                                      mov r4, r0
004f2144  0c d0 4d e2                                      sub sp, sp, #0xc
004f2148  01 00 a0 e1                                      mov r0, r1
004f214c  01 50 a0 e1                                      mov r5, r1
004f2150  04 10 84 e2                                      add r1, r4, #4
004f2154  cd 9b fd eb                                      bl #0x459090
004f2158  01 30 a0 e3                                      mov r3, #1
004f215c  00 00 53 e3                                      cmp r3, #0
004f2160  04 30 8d e5                                      str r3, [sp, #4]
004f2164  0f 00 00 1a                                      bne #0x4f21a8
004f2168  05 30 84 e2                                      add r3, r4, #5
004f216c  06 20 84 e2                                      add r2, r4, #6
004f2170  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f2174  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f2178  02 00 53 e1                                      cmp r3, r2
004f217c  01 10 20 e0                                      eor r1, r0, r1
004f2180  01 10 43 e5                                      strb r1, [r3, #-1]
004f2184  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f2188  00 10 21 e0                                      eor r1, r1, r0
004f218c  01 10 c2 e5                                      strb r1, [r2, #1]
004f2190  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f2194  01 20 42 e2                                      sub r2, r2, #1
004f2198  00 10 21 e0                                      eor r1, r1, r0
004f219c  01 10 43 e5                                      strb r1, [r3, #-1]
004f21a0  01 30 83 e2                                      add r3, r3, #1
004f21a4  f1 ff ff 3a                                      blo #0x4f2170
004f21a8  05 00 a0 e1                                      mov r0, r5
004f21ac  08 10 84 e2                                      add r1, r4, #8
004f21b0  b6 9b fd eb                                      bl #0x459090
004f21b4  01 30 a0 e3                                      mov r3, #1
004f21b8  00 00 53 e3                                      cmp r3, #0
004f21bc  04 30 8d e5                                      str r3, [sp, #4]
004f21c0  0f 00 00 1a                                      bne #0x4f2204
004f21c4  09 30 84 e2                                      add r3, r4, #9
004f21c8  0a 20 84 e2                                      add r2, r4, #0xa
004f21cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f21d0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f21d4  02 00 53 e1                                      cmp r3, r2
004f21d8  01 10 20 e0                                      eor r1, r0, r1
004f21dc  01 10 43 e5                                      strb r1, [r3, #-1]
004f21e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f21e4  00 10 21 e0                                      eor r1, r1, r0
004f21e8  01 10 c2 e5                                      strb r1, [r2, #1]
004f21ec  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f21f0  01 20 42 e2                                      sub r2, r2, #1
004f21f4  00 10 21 e0                                      eor r1, r1, r0
004f21f8  01 10 43 e5                                      strb r1, [r3, #-1]
004f21fc  01 30 83 e2                                      add r3, r3, #1
004f2200  f1 ff ff 3a                                      blo #0x4f21cc
004f2204  05 00 a0 e1                                      mov r0, r5
004f2208  0c 10 84 e2                                      add r1, r4, #0xc
004f220c  9f 9b fd eb                                      bl #0x459090
004f2210  01 30 a0 e3                                      mov r3, #1
004f2214  00 00 53 e3                                      cmp r3, #0
004f2218  04 30 8d e5                                      str r3, [sp, #4]
004f221c  0f 00 00 1a                                      bne #0x4f2260
004f2220  0d 30 84 e2                                      add r3, r4, #0xd
004f2224  0e 20 84 e2                                      add r2, r4, #0xe
004f2228  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f222c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f2230  02 00 53 e1                                      cmp r3, r2
004f2234  01 10 20 e0                                      eor r1, r0, r1
004f2238  01 10 43 e5                                      strb r1, [r3, #-1]
004f223c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f2240  00 10 21 e0                                      eor r1, r1, r0
004f2244  01 10 c2 e5                                      strb r1, [r2, #1]
004f2248  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f224c  01 20 42 e2                                      sub r2, r2, #1
004f2250  00 10 21 e0                                      eor r1, r1, r0
004f2254  01 10 43 e5                                      strb r1, [r3, #-1]
004f2258  01 30 83 e2                                      add r3, r3, #1
004f225c  f1 ff ff 3a                                      blo #0x4f2228
004f2260  05 00 a0 e1                                      mov r0, r5
004f2264  10 10 84 e2                                      add r1, r4, #0x10
004f2268  88 9b fd eb                                      bl #0x459090
004f226c  01 30 a0 e3                                      mov r3, #1
004f2270  00 00 53 e3                                      cmp r3, #0
004f2274  04 30 8d e5                                      str r3, [sp, #4]
004f2278  0f 00 00 1a                                      bne #0x4f22bc
004f227c  11 30 84 e2                                      add r3, r4, #0x11
004f2280  12 20 84 e2                                      add r2, r4, #0x12
004f2284  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f2288  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f228c  02 00 53 e1                                      cmp r3, r2
004f2290  01 10 20 e0                                      eor r1, r0, r1
004f2294  01 10 43 e5                                      strb r1, [r3, #-1]
004f2298  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f229c  00 10 21 e0                                      eor r1, r1, r0
004f22a0  01 10 c2 e5                                      strb r1, [r2, #1]
004f22a4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f22a8  01 20 42 e2                                      sub r2, r2, #1
004f22ac  00 10 21 e0                                      eor r1, r1, r0
004f22b0  01 10 43 e5                                      strb r1, [r3, #-1]
004f22b4  01 30 83 e2                                      add r3, r3, #1
004f22b8  f1 ff ff 3a                                      blo #0x4f2284
004f22bc  05 00 a0 e1                                      mov r0, r5
004f22c0  14 10 84 e2                                      add r1, r4, #0x14
004f22c4  71 9b fd eb                                      bl #0x459090
004f22c8  01 30 a0 e3                                      mov r3, #1
004f22cc  00 00 53 e3                                      cmp r3, #0
004f22d0  04 30 8d e5                                      str r3, [sp, #4]
004f22d4  0f 00 00 1a                                      bne #0x4f2318
004f22d8  15 30 84 e2                                      add r3, r4, #0x15
004f22dc  16 20 84 e2                                      add r2, r4, #0x16
004f22e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f22e4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f22e8  02 00 53 e1                                      cmp r3, r2
004f22ec  01 10 20 e0                                      eor r1, r0, r1
004f22f0  01 10 43 e5                                      strb r1, [r3, #-1]
004f22f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f22f8  00 10 21 e0                                      eor r1, r1, r0
004f22fc  01 10 c2 e5                                      strb r1, [r2, #1]
004f2300  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f2304  01 20 42 e2                                      sub r2, r2, #1
004f2308  00 10 21 e0                                      eor r1, r1, r0
004f230c  01 10 43 e5                                      strb r1, [r3, #-1]
004f2310  01 30 83 e2                                      add r3, r3, #1
004f2314  f1 ff ff 3a                                      blo #0x4f22e0
004f2318  05 00 a0 e1                                      mov r0, r5
004f231c  18 10 84 e2                                      add r1, r4, #0x18
004f2320  5a 9b fd eb                                      bl #0x459090
004f2324  01 30 a0 e3                                      mov r3, #1
004f2328  00 00 53 e3                                      cmp r3, #0
004f232c  04 30 8d e5                                      str r3, [sp, #4]
004f2330  0f 00 00 1a                                      bne #0x4f2374
004f2334  19 30 84 e2                                      add r3, r4, #0x19
004f2338  1a 20 84 e2                                      add r2, r4, #0x1a
004f233c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f2340  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f2344  02 00 53 e1                                      cmp r3, r2
004f2348  01 10 20 e0                                      eor r1, r0, r1
004f234c  01 10 43 e5                                      strb r1, [r3, #-1]
004f2350  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f2354  00 10 21 e0                                      eor r1, r1, r0
004f2358  01 10 c2 e5                                      strb r1, [r2, #1]
004f235c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f2360  01 20 42 e2                                      sub r2, r2, #1
004f2364  00 10 21 e0                                      eor r1, r1, r0
004f2368  01 10 43 e5                                      strb r1, [r3, #-1]
004f236c  01 30 83 e2                                      add r3, r3, #1
004f2370  f1 ff ff 3a                                      blo #0x4f233c
004f2374  05 00 a0 e1                                      mov r0, r5
004f2378  1c 10 84 e2                                      add r1, r4, #0x1c
004f237c  43 9b fd eb                                      bl #0x459090
004f2380  01 30 a0 e3                                      mov r3, #1
004f2384  00 00 53 e3                                      cmp r3, #0
004f2388  04 30 8d e5                                      str r3, [sp, #4]
004f238c  0f 00 00 1a                                      bne #0x4f23d0
004f2390  1e 30 84 e2                                      add r3, r4, #0x1e
004f2394  1d 40 84 e2                                      add r4, r4, #0x1d
004f2398  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f239c  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f23a0  03 00 54 e1                                      cmp r4, r3
004f23a4  02 20 21 e0                                      eor r2, r1, r2
004f23a8  01 20 44 e5                                      strb r2, [r4, #-1]
004f23ac  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f23b0  01 20 22 e0                                      eor r2, r2, r1
004f23b4  01 20 c3 e5                                      strb r2, [r3, #1]
004f23b8  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f23bc  01 30 43 e2                                      sub r3, r3, #1
004f23c0  01 20 22 e0                                      eor r2, r2, r1
004f23c4  01 20 44 e5                                      strb r2, [r4, #-1]
004f23c8  01 40 84 e2                                      add r4, r4, #1
004f23cc  f1 ff ff 3a                                      blo #0x4f2398
004f23d0  0c d0 8d e2                                      add sp, sp, #0xc
004f23d4  30 80 bd e8                                      pop {r4, r5, pc}
