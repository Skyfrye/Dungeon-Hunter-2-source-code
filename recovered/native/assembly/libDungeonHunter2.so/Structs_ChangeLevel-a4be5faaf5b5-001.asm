; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d1398, declared_size=48, range_size=48, mode=arm
; class-group: Structs::ChangeLevel
; alias: _ZN7Structs11ChangeLevel8finalizeEv
; demangled: Structs::ChangeLevel::finalize()
; decoder-mode: arm
004d1398  10 40 2d e9                                      push {r4, lr}
004d139c  00 40 a0 e1                                      mov r4, r0
004d13a0  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d13a4  00 00 50 e3                                      cmp r0, #0
004d13a8  03 00 00 0a                                      beq #0x4d13bc
004d13ac  23 fc f8 eb                                      bl #0x310440
004d13b0  00 30 a0 e3                                      mov r3, #0
004d13b4  0c 30 84 e5                                      str r3, [r4, #0xc]
004d13b8  10 30 84 e5                                      str r3, [r4, #0x10]
004d13bc  04 00 a0 e1                                      mov r0, r4
004d13c0  10 40 bd e8                                      pop {r4, lr}
004d13c4  27 d6 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d13c8, declared_size=72, range_size=72, mode=arm
; class-group: Structs::ChangeLevel
; alias: _ZN7Structs11ChangeLevelD1Ev
; demangled: Structs::ChangeLevel::~ChangeLevel()
; decoder-mode: arm
004d13c8  10 40 2d e9                                      push {r4, lr}
004d13cc  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d13d0  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d13d4  00 40 a0 e1                                      mov r4, r0
004d13d8  03 30 8f e0                                      add r3, pc, r3
004d13dc  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d13e0  02 20 93 e7                                      ldr r2, [r3, r2]
004d13e4  00 00 50 e3                                      cmp r0, #0
004d13e8  08 20 82 e2                                      add r2, r2, #8
004d13ec  00 20 84 e5                                      str r2, [r4]
004d13f0  00 00 00 0a                                      beq #0x4d13f8
004d13f4  11 fc f8 eb                                      bl #0x310440
004d13f8  04 00 a0 e1                                      mov r0, r4
004d13fc  17 d6 ff eb                                      bl #0x4c6c60
004d1400  04 00 a0 e1                                      mov r0, r4
004d1404  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1408  b8 36 4c 00 00 0b 00 00                          .byte 0xb8, 0x36, 0x4c, 0x00, 0x00, 0x0b, 0x00, 0x00

; FUNCTION 0x004d1410, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ChangeLevel
; alias: _ZN7Structs11ChangeLevelD0Ev
; demangled: Structs::ChangeLevel::~ChangeLevel()
; decoder-mode: arm
004d1410  10 40 2d e9                                      push {r4, lr}
004d1414  00 40 a0 e1                                      mov r4, r0
004d1418  ea ff ff eb                                      bl #0x4d13c8
004d141c  04 00 a0 e1                                      mov r0, r4
004d1420  06 fc f8 eb                                      bl #0x310440
004d1424  04 00 a0 e1                                      mov r0, r4
004d1428  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d142c, declared_size=72, range_size=72, mode=arm
; class-group: Structs::ChangeLevel
; alias: _ZN7Structs11ChangeLevelD2Ev
; demangled: Structs::ChangeLevel::~ChangeLevel()
; decoder-mode: arm
004d142c  10 40 2d e9                                      push {r4, lr}
004d1430  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d1434  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1438  00 40 a0 e1                                      mov r4, r0
004d143c  03 30 8f e0                                      add r3, pc, r3
004d1440  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d1444  02 20 93 e7                                      ldr r2, [r3, r2]
004d1448  00 00 50 e3                                      cmp r0, #0
004d144c  08 20 82 e2                                      add r2, r2, #8
004d1450  00 20 84 e5                                      str r2, [r4]
004d1454  00 00 00 0a                                      beq #0x4d145c
004d1458  f8 fb f8 eb                                      bl #0x310440
004d145c  04 00 a0 e1                                      mov r0, r4
004d1460  fe d5 ff eb                                      bl #0x4c6c60
004d1464  04 00 a0 e1                                      mov r0, r4
004d1468  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d146c  54 36 4c 00 00 0b 00 00                          .byte 0x54, 0x36, 0x4c, 0x00, 0x00, 0x0b, 0x00, 0x00

; FUNCTION 0x00500114, declared_size=284, range_size=284, mode=arm
; class-group: Structs::ChangeLevel
; alias: _ZN7Structs11ChangeLevel4readEP11IStreamBase
; demangled: Structs::ChangeLevel::read(IStreamBase*)
; decoder-mode: arm
00500114  70 40 2d e9                                      push {r4, r5, r6, lr}
00500118  00 40 a0 e1                                      mov r4, r0
0050011c  08 d0 4d e2                                      sub sp, sp, #8
00500120  01 60 a0 e1                                      mov r6, r1
00500124  bf fd ff eb                                      bl #0x4ff828
00500128  06 00 a0 e1                                      mov r0, r6
0050012c  08 10 84 e2                                      add r1, r4, #8
00500130  d6 63 fd eb                                      bl #0x459090
00500134  01 30 a0 e3                                      mov r3, #1
00500138  00 00 53 e3                                      cmp r3, #0
0050013c  04 30 8d e5                                      str r3, [sp, #4]
00500140  0f 00 00 1a                                      bne #0x500184
00500144  09 30 84 e2                                      add r3, r4, #9
00500148  0a 20 84 e2                                      add r2, r4, #0xa
0050014c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500150  01 10 53 e5                                      ldrb r1, [r3, #-1]
00500154  02 00 53 e1                                      cmp r3, r2
00500158  01 10 20 e0                                      eor r1, r0, r1
0050015c  01 10 43 e5                                      strb r1, [r3, #-1]
00500160  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500164  00 10 21 e0                                      eor r1, r1, r0
00500168  01 10 c2 e5                                      strb r1, [r2, #1]
0050016c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00500170  01 20 42 e2                                      sub r2, r2, #1
00500174  00 10 21 e0                                      eor r1, r1, r0
00500178  01 10 43 e5                                      strb r1, [r3, #-1]
0050017c  01 30 83 e2                                      add r3, r3, #1
00500180  f1 ff ff 3a                                      blo #0x50014c
00500184  06 00 a0 e1                                      mov r0, r6
00500188  0c 10 84 e2                                      add r1, r4, #0xc
0050018c  03 7c fb eb                                      bl #0x3df1a0
00500190  01 30 a0 e3                                      mov r3, #1
00500194  00 00 53 e3                                      cmp r3, #0
00500198  04 30 8d e5                                      str r3, [sp, #4]
0050019c  0f 00 00 1a                                      bne #0x5001e0
005001a0  0d 30 84 e2                                      add r3, r4, #0xd
005001a4  0e 20 84 e2                                      add r2, r4, #0xe
005001a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
005001ac  01 10 53 e5                                      ldrb r1, [r3, #-1]
005001b0  02 00 53 e1                                      cmp r3, r2
005001b4  01 10 20 e0                                      eor r1, r0, r1
005001b8  01 10 43 e5                                      strb r1, [r3, #-1]
005001bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
005001c0  00 10 21 e0                                      eor r1, r1, r0
005001c4  01 10 c2 e5                                      strb r1, [r2, #1]
005001c8  01 00 53 e5                                      ldrb r0, [r3, #-1]
005001cc  01 20 42 e2                                      sub r2, r2, #1
005001d0  00 10 21 e0                                      eor r1, r1, r0
005001d4  01 10 43 e5                                      strb r1, [r3, #-1]
005001d8  01 30 83 e2                                      add r3, r3, #1
005001dc  f1 ff ff 3a                                      blo #0x5001a8
005001e0  10 00 94 e5                                      ldr r0, [r4, #0x10]
005001e4  00 00 50 e3                                      cmp r0, #0
005001e8  00 00 00 0a                                      beq #0x5001f0
005001ec  93 40 f8 eb                                      bl #0x310440
005001f0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005001f4  01 10 a0 e3                                      mov r1, #1
005001f8  00 50 a0 e3                                      mov r5, #0
005001fc  01 00 80 e0                                      add r0, r0, r1
00500200  d9 40 f8 eb                                      bl #0x31056c
00500204  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00500208  00 10 a0 e1                                      mov r1, r0
0050020c  10 00 84 e5                                      str r0, [r4, #0x10]
00500210  05 30 a0 e1                                      mov r3, r5
00500214  06 00 a0 e1                                      mov r0, r6
00500218  8d 5c f8 eb                                      bl #0x317454
0050021c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00500220  10 20 94 e5                                      ldr r2, [r4, #0x10]
00500224  03 50 c2 e7                                      strb r5, [r2, r3]
00500228  08 d0 8d e2                                      add sp, sp, #8
0050022c  70 80 bd e8                                      pop {r4, r5, r6, pc}
