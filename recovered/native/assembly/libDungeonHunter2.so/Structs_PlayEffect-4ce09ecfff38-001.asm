; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d342c, declared_size=48, range_size=48, mode=arm
; class-group: Structs::PlayEffect
; alias: _ZN7Structs10PlayEffect8finalizeEv
; demangled: Structs::PlayEffect::finalize()
; decoder-mode: arm
004d342c  10 40 2d e9                                      push {r4, lr}
004d3430  00 40 a0 e1                                      mov r4, r0
004d3434  20 00 90 e5                                      ldr r0, [r0, #0x20]
004d3438  00 00 50 e3                                      cmp r0, #0
004d343c  03 00 00 0a                                      beq #0x4d3450
004d3440  fe f3 f8 eb                                      bl #0x310440
004d3444  00 30 a0 e3                                      mov r3, #0
004d3448  1c 30 84 e5                                      str r3, [r4, #0x1c]
004d344c  20 30 84 e5                                      str r3, [r4, #0x20]
004d3450  04 00 a0 e1                                      mov r0, r4
004d3454  10 40 bd e8                                      pop {r4, lr}
004d3458  02 ce ff ea                                      b #0x4c6c68

; FUNCTION 0x004d345c, declared_size=80, range_size=80, mode=arm
; class-group: Structs::PlayEffect
; alias: _ZN7Structs10PlayEffectD1Ev
; demangled: Structs::PlayEffect::~PlayEffect()
; decoder-mode: arm
004d345c  10 40 2d e9                                      push {r4, lr}
004d3460  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004d3464  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004d3468  00 40 a0 e1                                      mov r4, r0
004d346c  03 30 8f e0                                      add r3, pc, r3
004d3470  20 00 90 e5                                      ldr r0, [r0, #0x20]
004d3474  02 20 93 e7                                      ldr r2, [r3, r2]
004d3478  00 00 50 e3                                      cmp r0, #0
004d347c  08 20 82 e2                                      add r2, r2, #8
004d3480  00 20 84 e5                                      str r2, [r4]
004d3484  00 00 00 0a                                      beq #0x4d348c
004d3488  ec f3 f8 eb                                      bl #0x310440
004d348c  0c 00 84 e2                                      add r0, r4, #0xc
004d3490  f0 cd ff eb                                      bl #0x4c6c58
004d3494  04 00 a0 e1                                      mov r0, r4
004d3498  f0 cd ff eb                                      bl #0x4c6c60
004d349c  04 00 a0 e1                                      mov r0, r4
004d34a0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d34a4  24 16 4c 00 cc 25 00 00                          .byte 0x24, 0x16, 0x4c, 0x00, 0xcc, 0x25, 0x00, 0x00

; FUNCTION 0x004d34ac, declared_size=28, range_size=28, mode=arm
; class-group: Structs::PlayEffect
; alias: _ZN7Structs10PlayEffectD0Ev
; demangled: Structs::PlayEffect::~PlayEffect()
; decoder-mode: arm
004d34ac  10 40 2d e9                                      push {r4, lr}
004d34b0  00 40 a0 e1                                      mov r4, r0
004d34b4  e8 ff ff eb                                      bl #0x4d345c
004d34b8  04 00 a0 e1                                      mov r0, r4
004d34bc  df f3 f8 eb                                      bl #0x310440
004d34c0  04 00 a0 e1                                      mov r0, r4
004d34c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d34c8, declared_size=80, range_size=80, mode=arm
; class-group: Structs::PlayEffect
; alias: _ZN7Structs10PlayEffectD2Ev
; demangled: Structs::PlayEffect::~PlayEffect()
; decoder-mode: arm
004d34c8  10 40 2d e9                                      push {r4, lr}
004d34cc  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004d34d0  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004d34d4  00 40 a0 e1                                      mov r4, r0
004d34d8  03 30 8f e0                                      add r3, pc, r3
004d34dc  20 00 90 e5                                      ldr r0, [r0, #0x20]
004d34e0  02 20 93 e7                                      ldr r2, [r3, r2]
004d34e4  00 00 50 e3                                      cmp r0, #0
004d34e8  08 20 82 e2                                      add r2, r2, #8
004d34ec  00 20 84 e5                                      str r2, [r4]
004d34f0  00 00 00 0a                                      beq #0x4d34f8
004d34f4  d1 f3 f8 eb                                      bl #0x310440
004d34f8  0c 00 84 e2                                      add r0, r4, #0xc
004d34fc  d5 cd ff eb                                      bl #0x4c6c58
004d3500  04 00 a0 e1                                      mov r0, r4
004d3504  d5 cd ff eb                                      bl #0x4c6c60
004d3508  04 00 a0 e1                                      mov r0, r4
004d350c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d3510  b8 15 4c 00 cc 25 00 00                          .byte 0xb8, 0x15, 0x4c, 0x00, 0xcc, 0x25, 0x00, 0x00

; FUNCTION 0x005022e4, declared_size=308, range_size=308, mode=arm
; class-group: Structs::PlayEffect
; alias: _ZN7Structs10PlayEffect4readEP11IStreamBase
; demangled: Structs::PlayEffect::read(IStreamBase*)
; decoder-mode: arm
005022e4  70 40 2d e9                                      push {r4, r5, r6, lr}
005022e8  00 40 a0 e1                                      mov r4, r0
005022ec  08 d0 4d e2                                      sub sp, sp, #8
005022f0  01 50 a0 e1                                      mov r5, r1
005022f4  4b f5 ff eb                                      bl #0x4ff828
005022f8  05 00 a0 e1                                      mov r0, r5
005022fc  08 10 84 e2                                      add r1, r4, #8
00502300  62 5b fd eb                                      bl #0x459090
00502304  01 30 a0 e3                                      mov r3, #1
00502308  00 00 53 e3                                      cmp r3, #0
0050230c  04 30 8d e5                                      str r3, [sp, #4]
00502310  0f 00 00 1a                                      bne #0x502354
00502314  09 30 84 e2                                      add r3, r4, #9
00502318  0a 20 84 e2                                      add r2, r4, #0xa
0050231c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502320  01 10 53 e5                                      ldrb r1, [r3, #-1]
00502324  03 00 52 e1                                      cmp r2, r3
00502328  01 10 20 e0                                      eor r1, r0, r1
0050232c  01 10 43 e5                                      strb r1, [r3, #-1]
00502330  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502334  00 10 21 e0                                      eor r1, r1, r0
00502338  01 10 c2 e5                                      strb r1, [r2, #1]
0050233c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00502340  01 20 42 e2                                      sub r2, r2, #1
00502344  00 10 21 e0                                      eor r1, r1, r0
00502348  01 10 43 e5                                      strb r1, [r3, #-1]
0050234c  01 30 83 e2                                      add r3, r3, #1
00502350  f1 ff ff 8a                                      bhi #0x50231c
00502354  05 10 a0 e1                                      mov r1, r5
00502358  0c 00 84 e2                                      add r0, r4, #0xc
0050235c  5d f4 ff eb                                      bl #0x4ff4d8
00502360  05 00 a0 e1                                      mov r0, r5
00502364  1c 10 84 e2                                      add r1, r4, #0x1c
00502368  8c 73 fb eb                                      bl #0x3df1a0
0050236c  01 30 a0 e3                                      mov r3, #1
00502370  00 00 53 e3                                      cmp r3, #0
00502374  04 30 8d e5                                      str r3, [sp, #4]
00502378  0f 00 00 1a                                      bne #0x5023bc
0050237c  1d 30 84 e2                                      add r3, r4, #0x1d
00502380  1e 20 84 e2                                      add r2, r4, #0x1e
00502384  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502388  01 10 53 e5                                      ldrb r1, [r3, #-1]
0050238c  03 00 52 e1                                      cmp r2, r3
00502390  01 10 20 e0                                      eor r1, r0, r1
00502394  01 10 43 e5                                      strb r1, [r3, #-1]
00502398  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050239c  00 10 21 e0                                      eor r1, r1, r0
005023a0  01 10 c2 e5                                      strb r1, [r2, #1]
005023a4  01 00 53 e5                                      ldrb r0, [r3, #-1]
005023a8  01 20 42 e2                                      sub r2, r2, #1
005023ac  00 10 21 e0                                      eor r1, r1, r0
005023b0  01 10 43 e5                                      strb r1, [r3, #-1]
005023b4  01 30 83 e2                                      add r3, r3, #1
005023b8  f1 ff ff 8a                                      bhi #0x502384
005023bc  20 00 94 e5                                      ldr r0, [r4, #0x20]
005023c0  00 00 50 e3                                      cmp r0, #0
005023c4  00 00 00 0a                                      beq #0x5023cc
005023c8  1c 38 f8 eb                                      bl #0x310440
005023cc  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
005023d0  01 10 a0 e3                                      mov r1, #1
005023d4  00 60 a0 e3                                      mov r6, #0
005023d8  01 00 80 e0                                      add r0, r0, r1
005023dc  62 38 f8 eb                                      bl #0x31056c
005023e0  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
005023e4  00 10 a0 e1                                      mov r1, r0
005023e8  20 00 84 e5                                      str r0, [r4, #0x20]
005023ec  06 30 a0 e1                                      mov r3, r6
005023f0  05 00 a0 e1                                      mov r0, r5
005023f4  16 54 f8 eb                                      bl #0x317454
005023f8  20 20 94 e5                                      ldr r2, [r4, #0x20]
005023fc  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00502400  05 00 a0 e1                                      mov r0, r5
00502404  24 10 84 e2                                      add r1, r4, #0x24
00502408  03 60 c2 e7                                      strb r6, [r2, r3]
0050240c  22 65 ff eb                                      bl #0x4db89c
00502410  08 d0 8d e2                                      add sp, sp, #8
00502414  70 80 bd e8                                      pop {r4, r5, r6, pc}
