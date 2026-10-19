; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c72c0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::Wait
; alias: _ZN7Structs4WaitD2Ev
; demangled: Structs::Wait::~Wait()
; decoder-mode: arm
004c72c0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c72c4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c72c8  10 40 2d e9                                      push {r4, lr}
004c72cc  03 30 8f e0                                      add r3, pc, r3
004c72d0  02 20 93 e7                                      ldr r2, [r3, r2]
004c72d4  00 40 a0 e1                                      mov r4, r0
004c72d8  08 20 82 e2                                      add r2, r2, #8
004c72dc  00 20 80 e5                                      str r2, [r0]
004c72e0  5e fe ff eb                                      bl #0x4c6c60
004c72e4  04 00 a0 e1                                      mov r0, r4
004c72e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c72ec  c4 d7 4c 00 90 22 00 00                          .byte 0xc4, 0xd7, 0x4c, 0x00, 0x90, 0x22, 0x00, 0x00

; FUNCTION 0x004c72f4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::Wait
; alias: _ZN7Structs4WaitD1Ev
; demangled: Structs::Wait::~Wait()
; decoder-mode: arm
004c72f4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c72f8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c72fc  10 40 2d e9                                      push {r4, lr}
004c7300  03 30 8f e0                                      add r3, pc, r3
004c7304  02 20 93 e7                                      ldr r2, [r3, r2]
004c7308  00 40 a0 e1                                      mov r4, r0
004c730c  08 20 82 e2                                      add r2, r2, #8
004c7310  00 20 80 e5                                      str r2, [r0]
004c7314  51 fe ff eb                                      bl #0x4c6c60
004c7318  04 00 a0 e1                                      mov r0, r4
004c731c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7320  90 d7 4c 00 90 22 00 00                          .byte 0x90, 0xd7, 0x4c, 0x00, 0x90, 0x22, 0x00, 0x00

; FUNCTION 0x004c7328, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Wait
; alias: _ZN7Structs4Wait8finalizeEv
; demangled: Structs::Wait::finalize()
; decoder-mode: arm
004c7328  4e fe ff ea                                      b #0x4c6c68

; FUNCTION 0x004cdfa0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Wait
; alias: _ZN7Structs4WaitD0Ev
; demangled: Structs::Wait::~Wait()
; decoder-mode: arm
004cdfa0  10 40 2d e9                                      push {r4, lr}
004cdfa4  00 40 a0 e1                                      mov r4, r0
004cdfa8  d1 e4 ff eb                                      bl #0x4c72f4
004cdfac  04 00 a0 e1                                      mov r0, r4
004cdfb0  22 09 f9 eb                                      bl #0x310440
004cdfb4  04 00 a0 e1                                      mov r0, r4
004cdfb8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0050327c, declared_size=120, range_size=120, mode=arm
; class-group: Structs::Wait
; alias: _ZN7Structs4Wait4readEP11IStreamBase
; demangled: Structs::Wait::read(IStreamBase*)
; decoder-mode: arm
0050327c  30 40 2d e9                                      push {r4, r5, lr}
00503280  00 40 a0 e1                                      mov r4, r0
00503284  0c d0 4d e2                                      sub sp, sp, #0xc
00503288  01 50 a0 e1                                      mov r5, r1
0050328c  65 f1 ff eb                                      bl #0x4ff828
00503290  05 00 a0 e1                                      mov r0, r5
00503294  08 10 84 e2                                      add r1, r4, #8
00503298  7c 57 fd eb                                      bl #0x459090
0050329c  01 30 a0 e3                                      mov r3, #1
005032a0  00 00 53 e3                                      cmp r3, #0
005032a4  04 30 8d e5                                      str r3, [sp, #4]
005032a8  0f 00 00 1a                                      bne #0x5032ec
005032ac  0a 30 84 e2                                      add r3, r4, #0xa
005032b0  09 40 84 e2                                      add r4, r4, #9
005032b4  01 10 d3 e5                                      ldrb r1, [r3, #1]
005032b8  01 20 54 e5                                      ldrb r2, [r4, #-1]
005032bc  03 00 54 e1                                      cmp r4, r3
005032c0  02 20 21 e0                                      eor r2, r1, r2
005032c4  01 20 44 e5                                      strb r2, [r4, #-1]
005032c8  01 10 d3 e5                                      ldrb r1, [r3, #1]
005032cc  01 20 22 e0                                      eor r2, r2, r1
005032d0  01 20 c3 e5                                      strb r2, [r3, #1]
005032d4  01 10 54 e5                                      ldrb r1, [r4, #-1]
005032d8  01 30 43 e2                                      sub r3, r3, #1
005032dc  01 20 22 e0                                      eor r2, r2, r1
005032e0  01 20 44 e5                                      strb r2, [r4, #-1]
005032e4  01 40 84 e2                                      add r4, r4, #1
005032e8  f1 ff ff 3a                                      blo #0x5032b4
005032ec  0c d0 8d e2                                      add sp, sp, #0xc
005032f0  30 80 bd e8                                      pop {r4, r5, pc}
