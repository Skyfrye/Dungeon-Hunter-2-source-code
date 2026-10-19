; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6f60, declared_size=52, range_size=52, mode=arm
; class-group: Structs::StartDialogID
; alias: _ZN7Structs13StartDialogIDD2Ev
; demangled: Structs::StartDialogID::~StartDialogID()
; decoder-mode: arm
004c6f60  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6f64  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6f68  10 40 2d e9                                      push {r4, lr}
004c6f6c  03 30 8f e0                                      add r3, pc, r3
004c6f70  02 20 93 e7                                      ldr r2, [r3, r2]
004c6f74  00 40 a0 e1                                      mov r4, r0
004c6f78  08 20 82 e2                                      add r2, r2, #8
004c6f7c  00 20 80 e5                                      str r2, [r0]
004c6f80  36 ff ff eb                                      bl #0x4c6c60
004c6f84  04 00 a0 e1                                      mov r0, r4
004c6f88  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6f8c  24 db 4c 00 a0 0b 00 00                          .byte 0x24, 0xdb, 0x4c, 0x00, 0xa0, 0x0b, 0x00, 0x00

; FUNCTION 0x004c6f94, declared_size=52, range_size=52, mode=arm
; class-group: Structs::StartDialogID
; alias: _ZN7Structs13StartDialogIDD1Ev
; demangled: Structs::StartDialogID::~StartDialogID()
; decoder-mode: arm
004c6f94  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6f98  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6f9c  10 40 2d e9                                      push {r4, lr}
004c6fa0  03 30 8f e0                                      add r3, pc, r3
004c6fa4  02 20 93 e7                                      ldr r2, [r3, r2]
004c6fa8  00 40 a0 e1                                      mov r4, r0
004c6fac  08 20 82 e2                                      add r2, r2, #8
004c6fb0  00 20 80 e5                                      str r2, [r0]
004c6fb4  29 ff ff eb                                      bl #0x4c6c60
004c6fb8  04 00 a0 e1                                      mov r0, r4
004c6fbc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6fc0  f0 da 4c 00 a0 0b 00 00                          .byte 0xf0, 0xda, 0x4c, 0x00, 0xa0, 0x0b, 0x00, 0x00

; FUNCTION 0x004c6fc8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::StartDialogID
; alias: _ZN7Structs13StartDialogID8finalizeEv
; demangled: Structs::StartDialogID::finalize()
; decoder-mode: arm
004c6fc8  26 ff ff ea                                      b #0x4c6c68

; FUNCTION 0x004ce080, declared_size=28, range_size=28, mode=arm
; class-group: Structs::StartDialogID
; alias: _ZN7Structs13StartDialogIDD0Ev
; demangled: Structs::StartDialogID::~StartDialogID()
; decoder-mode: arm
004ce080  10 40 2d e9                                      push {r4, lr}
004ce084  00 40 a0 e1                                      mov r4, r0
004ce088  c1 e3 ff eb                                      bl #0x4c6f94
004ce08c  04 00 a0 e1                                      mov r0, r4
004ce090  ea 08 f9 eb                                      bl #0x310440
004ce094  04 00 a0 e1                                      mov r0, r4
004ce098  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005033e4, declared_size=120, range_size=120, mode=arm
; class-group: Structs::StartDialogID
; alias: _ZN7Structs13StartDialogID4readEP11IStreamBase
; demangled: Structs::StartDialogID::read(IStreamBase*)
; decoder-mode: arm
005033e4  30 40 2d e9                                      push {r4, r5, lr}
005033e8  00 40 a0 e1                                      mov r4, r0
005033ec  0c d0 4d e2                                      sub sp, sp, #0xc
005033f0  01 50 a0 e1                                      mov r5, r1
005033f4  0b f1 ff eb                                      bl #0x4ff828
005033f8  05 00 a0 e1                                      mov r0, r5
005033fc  08 10 84 e2                                      add r1, r4, #8
00503400  22 57 fd eb                                      bl #0x459090
00503404  01 30 a0 e3                                      mov r3, #1
00503408  00 00 53 e3                                      cmp r3, #0
0050340c  04 30 8d e5                                      str r3, [sp, #4]
00503410  0f 00 00 1a                                      bne #0x503454
00503414  0a 30 84 e2                                      add r3, r4, #0xa
00503418  09 40 84 e2                                      add r4, r4, #9
0050341c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00503420  01 20 54 e5                                      ldrb r2, [r4, #-1]
00503424  03 00 54 e1                                      cmp r4, r3
00503428  02 20 21 e0                                      eor r2, r1, r2
0050342c  01 20 44 e5                                      strb r2, [r4, #-1]
00503430  01 10 d3 e5                                      ldrb r1, [r3, #1]
00503434  01 20 22 e0                                      eor r2, r2, r1
00503438  01 20 c3 e5                                      strb r2, [r3, #1]
0050343c  01 10 54 e5                                      ldrb r1, [r4, #-1]
00503440  01 30 43 e2                                      sub r3, r3, #1
00503444  01 20 22 e0                                      eor r2, r2, r1
00503448  01 20 44 e5                                      strb r2, [r4, #-1]
0050344c  01 40 84 e2                                      add r4, r4, #1
00503450  f1 ff ff 3a                                      blo #0x50341c
00503454  0c d0 8d e2                                      add sp, sp, #0xc
00503458  30 80 bd e8                                      pop {r4, r5, pc}
