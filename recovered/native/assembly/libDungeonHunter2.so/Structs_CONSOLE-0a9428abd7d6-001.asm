; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d3900, declared_size=48, range_size=48, mode=arm
; class-group: Structs::CONSOLE
; alias: _ZN7Structs7CONSOLE8finalizeEv
; demangled: Structs::CONSOLE::finalize()
; decoder-mode: arm
004d3900  10 40 2d e9                                      push {r4, lr}
004d3904  00 40 a0 e1                                      mov r4, r0
004d3908  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d390c  00 00 50 e3                                      cmp r0, #0
004d3910  03 00 00 0a                                      beq #0x4d3924
004d3914  c9 f2 f8 eb                                      bl #0x310440
004d3918  00 30 a0 e3                                      mov r3, #0
004d391c  08 30 84 e5                                      str r3, [r4, #8]
004d3920  0c 30 84 e5                                      str r3, [r4, #0xc]
004d3924  04 00 a0 e1                                      mov r0, r4
004d3928  10 40 bd e8                                      pop {r4, lr}
004d392c  cd cc ff ea                                      b #0x4c6c68

; FUNCTION 0x004d3930, declared_size=72, range_size=72, mode=arm
; class-group: Structs::CONSOLE
; alias: _ZN7Structs7CONSOLED1Ev
; demangled: Structs::CONSOLE::~CONSOLE()
; decoder-mode: arm
004d3930  10 40 2d e9                                      push {r4, lr}
004d3934  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d3938  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d393c  00 40 a0 e1                                      mov r4, r0
004d3940  03 30 8f e0                                      add r3, pc, r3
004d3944  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d3948  02 20 93 e7                                      ldr r2, [r3, r2]
004d394c  00 00 50 e3                                      cmp r0, #0
004d3950  08 20 82 e2                                      add r2, r2, #8
004d3954  00 20 84 e5                                      str r2, [r4]
004d3958  00 00 00 0a                                      beq #0x4d3960
004d395c  b7 f2 f8 eb                                      bl #0x310440
004d3960  04 00 a0 e1                                      mov r0, r4
004d3964  bd cc ff eb                                      bl #0x4c6c60
004d3968  04 00 a0 e1                                      mov r0, r4
004d396c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d3970  50 11 4c 00 ec 06 00 00                          .byte 0x50, 0x11, 0x4c, 0x00, 0xec, 0x06, 0x00, 0x00

; FUNCTION 0x004d3978, declared_size=28, range_size=28, mode=arm
; class-group: Structs::CONSOLE
; alias: _ZN7Structs7CONSOLED0Ev
; demangled: Structs::CONSOLE::~CONSOLE()
; decoder-mode: arm
004d3978  10 40 2d e9                                      push {r4, lr}
004d397c  00 40 a0 e1                                      mov r4, r0
004d3980  ea ff ff eb                                      bl #0x4d3930
004d3984  04 00 a0 e1                                      mov r0, r4
004d3988  ac f2 f8 eb                                      bl #0x310440
004d398c  04 00 a0 e1                                      mov r0, r4
004d3990  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d3994, declared_size=72, range_size=72, mode=arm
; class-group: Structs::CONSOLE
; alias: _ZN7Structs7CONSOLED2Ev
; demangled: Structs::CONSOLE::~CONSOLE()
; decoder-mode: arm
004d3994  10 40 2d e9                                      push {r4, lr}
004d3998  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d399c  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d39a0  00 40 a0 e1                                      mov r4, r0
004d39a4  03 30 8f e0                                      add r3, pc, r3
004d39a8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d39ac  02 20 93 e7                                      ldr r2, [r3, r2]
004d39b0  00 00 50 e3                                      cmp r0, #0
004d39b4  08 20 82 e2                                      add r2, r2, #8
004d39b8  00 20 84 e5                                      str r2, [r4]
004d39bc  00 00 00 0a                                      beq #0x4d39c4
004d39c0  9e f2 f8 eb                                      bl #0x310440
004d39c4  04 00 a0 e1                                      mov r0, r4
004d39c8  a4 cc ff eb                                      bl #0x4c6c60
004d39cc  04 00 a0 e1                                      mov r0, r4
004d39d0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d39d4  ec 10 4c 00 ec 06 00 00                          .byte 0xec, 0x10, 0x4c, 0x00, 0xec, 0x06, 0x00, 0x00

; FUNCTION 0x005029bc, declared_size=192, range_size=192, mode=arm
; class-group: Structs::CONSOLE
; alias: _ZN7Structs7CONSOLE4readEP11IStreamBase
; demangled: Structs::CONSOLE::read(IStreamBase*)
; decoder-mode: arm
005029bc  70 40 2d e9                                      push {r4, r5, r6, lr}
005029c0  00 40 a0 e1                                      mov r4, r0
005029c4  08 d0 4d e2                                      sub sp, sp, #8
005029c8  01 60 a0 e1                                      mov r6, r1
005029cc  95 f3 ff eb                                      bl #0x4ff828
005029d0  06 00 a0 e1                                      mov r0, r6
005029d4  08 10 84 e2                                      add r1, r4, #8
005029d8  f0 71 fb eb                                      bl #0x3df1a0
005029dc  01 30 a0 e3                                      mov r3, #1
005029e0  00 00 53 e3                                      cmp r3, #0
005029e4  04 30 8d e5                                      str r3, [sp, #4]
005029e8  0f 00 00 1a                                      bne #0x502a2c
005029ec  09 30 84 e2                                      add r3, r4, #9
005029f0  0a 20 84 e2                                      add r2, r4, #0xa
005029f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005029f8  01 10 53 e5                                      ldrb r1, [r3, #-1]
005029fc  02 00 53 e1                                      cmp r3, r2
00502a00  01 10 20 e0                                      eor r1, r0, r1
00502a04  01 10 43 e5                                      strb r1, [r3, #-1]
00502a08  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502a0c  00 10 21 e0                                      eor r1, r1, r0
00502a10  01 10 c2 e5                                      strb r1, [r2, #1]
00502a14  01 00 53 e5                                      ldrb r0, [r3, #-1]
00502a18  01 20 42 e2                                      sub r2, r2, #1
00502a1c  00 10 21 e0                                      eor r1, r1, r0
00502a20  01 10 43 e5                                      strb r1, [r3, #-1]
00502a24  01 30 83 e2                                      add r3, r3, #1
00502a28  f1 ff ff 3a                                      blo #0x5029f4
00502a2c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00502a30  00 00 50 e3                                      cmp r0, #0
00502a34  00 00 00 0a                                      beq #0x502a3c
00502a38  80 36 f8 eb                                      bl #0x310440
00502a3c  08 00 94 e5                                      ldr r0, [r4, #8]
00502a40  01 10 a0 e3                                      mov r1, #1
00502a44  00 50 a0 e3                                      mov r5, #0
00502a48  01 00 80 e0                                      add r0, r0, r1
00502a4c  c6 36 f8 eb                                      bl #0x31056c
00502a50  08 20 94 e5                                      ldr r2, [r4, #8]
00502a54  00 10 a0 e1                                      mov r1, r0
00502a58  0c 00 84 e5                                      str r0, [r4, #0xc]
00502a5c  05 30 a0 e1                                      mov r3, r5
00502a60  06 00 a0 e1                                      mov r0, r6
00502a64  7a 52 f8 eb                                      bl #0x317454
00502a68  08 30 94 e5                                      ldr r3, [r4, #8]
00502a6c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00502a70  03 50 c2 e7                                      strb r5, [r2, r3]
00502a74  08 d0 8d e2                                      add sp, sp, #8
00502a78  70 80 bd e8                                      pop {r4, r5, r6, pc}
