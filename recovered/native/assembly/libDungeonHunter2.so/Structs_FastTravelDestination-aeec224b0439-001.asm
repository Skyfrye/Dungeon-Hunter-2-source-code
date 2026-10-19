; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d55b4, declared_size=40, range_size=40, mode=arm
; class-group: Structs::FastTravelDestination
; alias: _ZN7Structs21FastTravelDestination8finalizeEv
; demangled: Structs::FastTravelDestination::finalize()
; decoder-mode: arm
004d55b4  10 40 2d e9                                      push {r4, lr}
004d55b8  00 40 a0 e1                                      mov r4, r0
004d55bc  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d55c0  00 00 50 e3                                      cmp r0, #0
004d55c4  03 00 00 0a                                      beq #0x4d55d8
004d55c8  9c eb f8 eb                                      bl #0x310440
004d55cc  00 30 a0 e3                                      mov r3, #0
004d55d0  0c 30 84 e5                                      str r3, [r4, #0xc]
004d55d4  10 30 84 e5                                      str r3, [r4, #0x10]
004d55d8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d55dc, declared_size=64, range_size=64, mode=arm
; class-group: Structs::FastTravelDestination
; alias: _ZN7Structs21FastTravelDestinationD1Ev
; demangled: Structs::FastTravelDestination::~FastTravelDestination()
; decoder-mode: arm
004d55dc  10 40 2d e9                                      push {r4, lr}
004d55e0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d55e4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d55e8  00 40 a0 e1                                      mov r4, r0
004d55ec  03 30 8f e0                                      add r3, pc, r3
004d55f0  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d55f4  02 20 93 e7                                      ldr r2, [r3, r2]
004d55f8  00 00 50 e3                                      cmp r0, #0
004d55fc  08 20 82 e2                                      add r2, r2, #8
004d5600  00 20 84 e5                                      str r2, [r4]
004d5604  00 00 00 0a                                      beq #0x4d560c
004d5608  8c eb f8 eb                                      bl #0x310440
004d560c  04 00 a0 e1                                      mov r0, r4
004d5610  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d5614  a4 f4 4b 00 78 10 00 00                          .byte 0xa4, 0xf4, 0x4b, 0x00, 0x78, 0x10, 0x00, 0x00

; FUNCTION 0x004d561c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::FastTravelDestination
; alias: _ZN7Structs21FastTravelDestinationD0Ev
; demangled: Structs::FastTravelDestination::~FastTravelDestination()
; decoder-mode: arm
004d561c  10 40 2d e9                                      push {r4, lr}
004d5620  00 40 a0 e1                                      mov r4, r0
004d5624  ec ff ff eb                                      bl #0x4d55dc
004d5628  04 00 a0 e1                                      mov r0, r4
004d562c  83 eb f8 eb                                      bl #0x310440
004d5630  04 00 a0 e1                                      mov r0, r4
004d5634  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d5638, declared_size=64, range_size=64, mode=arm
; class-group: Structs::FastTravelDestination
; alias: _ZN7Structs21FastTravelDestinationD2Ev
; demangled: Structs::FastTravelDestination::~FastTravelDestination()
; decoder-mode: arm
004d5638  10 40 2d e9                                      push {r4, lr}
004d563c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d5640  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d5644  00 40 a0 e1                                      mov r4, r0
004d5648  03 30 8f e0                                      add r3, pc, r3
004d564c  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d5650  02 20 93 e7                                      ldr r2, [r3, r2]
004d5654  00 00 50 e3                                      cmp r0, #0
004d5658  08 20 82 e2                                      add r2, r2, #8
004d565c  00 20 84 e5                                      str r2, [r4]
004d5660  00 00 00 0a                                      beq #0x4d5668
004d5664  75 eb f8 eb                                      bl #0x310440
004d5668  04 00 a0 e1                                      mov r0, r4
004d566c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d5670  48 f4 4b 00 78 10 00 00                          .byte 0x48, 0xf4, 0x4b, 0x00, 0x78, 0x10, 0x00, 0x00

; FUNCTION 0x004fcff0, declared_size=556, range_size=556, mode=arm
; class-group: Structs::FastTravelDestination
; alias: _ZN7Structs21FastTravelDestination4readEP11IStreamBase
; demangled: Structs::FastTravelDestination::read(IStreamBase*)
; decoder-mode: arm
004fcff0  70 40 2d e9                                      push {r4, r5, r6, lr}
004fcff4  00 40 a0 e1                                      mov r4, r0
004fcff8  08 d0 4d e2                                      sub sp, sp, #8
004fcffc  01 00 a0 e1                                      mov r0, r1
004fd000  01 50 a0 e1                                      mov r5, r1
004fd004  04 10 84 e2                                      add r1, r4, #4
004fd008  20 70 fd eb                                      bl #0x459090
004fd00c  01 30 a0 e3                                      mov r3, #1
004fd010  00 00 53 e3                                      cmp r3, #0
004fd014  04 30 8d e5                                      str r3, [sp, #4]
004fd018  0f 00 00 1a                                      bne #0x4fd05c
004fd01c  05 30 84 e2                                      add r3, r4, #5
004fd020  06 20 84 e2                                      add r2, r4, #6
004fd024  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd028  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd02c  03 00 52 e1                                      cmp r2, r3
004fd030  01 10 20 e0                                      eor r1, r0, r1
004fd034  01 10 43 e5                                      strb r1, [r3, #-1]
004fd038  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd03c  00 10 21 e0                                      eor r1, r1, r0
004fd040  01 10 c2 e5                                      strb r1, [r2, #1]
004fd044  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd048  01 20 42 e2                                      sub r2, r2, #1
004fd04c  00 10 21 e0                                      eor r1, r1, r0
004fd050  01 10 43 e5                                      strb r1, [r3, #-1]
004fd054  01 30 83 e2                                      add r3, r3, #1
004fd058  f1 ff ff 8a                                      bhi #0x4fd024
004fd05c  05 00 a0 e1                                      mov r0, r5
004fd060  08 10 84 e2                                      add r1, r4, #8
004fd064  09 70 fd eb                                      bl #0x459090
004fd068  01 30 a0 e3                                      mov r3, #1
004fd06c  00 00 53 e3                                      cmp r3, #0
004fd070  04 30 8d e5                                      str r3, [sp, #4]
004fd074  0f 00 00 1a                                      bne #0x4fd0b8
004fd078  09 30 84 e2                                      add r3, r4, #9
004fd07c  0a 20 84 e2                                      add r2, r4, #0xa
004fd080  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd084  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd088  03 00 52 e1                                      cmp r2, r3
004fd08c  01 10 20 e0                                      eor r1, r0, r1
004fd090  01 10 43 e5                                      strb r1, [r3, #-1]
004fd094  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd098  00 10 21 e0                                      eor r1, r1, r0
004fd09c  01 10 c2 e5                                      strb r1, [r2, #1]
004fd0a0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd0a4  01 20 42 e2                                      sub r2, r2, #1
004fd0a8  00 10 21 e0                                      eor r1, r1, r0
004fd0ac  01 10 43 e5                                      strb r1, [r3, #-1]
004fd0b0  01 30 83 e2                                      add r3, r3, #1
004fd0b4  f1 ff ff 8a                                      bhi #0x4fd080
004fd0b8  05 00 a0 e1                                      mov r0, r5
004fd0bc  0c 10 84 e2                                      add r1, r4, #0xc
004fd0c0  36 88 fb eb                                      bl #0x3df1a0
004fd0c4  01 30 a0 e3                                      mov r3, #1
004fd0c8  00 00 53 e3                                      cmp r3, #0
004fd0cc  04 30 8d e5                                      str r3, [sp, #4]
004fd0d0  0f 00 00 1a                                      bne #0x4fd114
004fd0d4  0d 30 84 e2                                      add r3, r4, #0xd
004fd0d8  0e 20 84 e2                                      add r2, r4, #0xe
004fd0dc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd0e0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd0e4  03 00 52 e1                                      cmp r2, r3
004fd0e8  01 10 20 e0                                      eor r1, r0, r1
004fd0ec  01 10 43 e5                                      strb r1, [r3, #-1]
004fd0f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd0f4  00 10 21 e0                                      eor r1, r1, r0
004fd0f8  01 10 c2 e5                                      strb r1, [r2, #1]
004fd0fc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd100  01 20 42 e2                                      sub r2, r2, #1
004fd104  00 10 21 e0                                      eor r1, r1, r0
004fd108  01 10 43 e5                                      strb r1, [r3, #-1]
004fd10c  01 30 83 e2                                      add r3, r3, #1
004fd110  f1 ff ff 8a                                      bhi #0x4fd0dc
004fd114  10 00 94 e5                                      ldr r0, [r4, #0x10]
004fd118  00 00 50 e3                                      cmp r0, #0
004fd11c  00 00 00 0a                                      beq #0x4fd124
004fd120  c6 4c f8 eb                                      bl #0x310440
004fd124  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004fd128  01 10 a0 e3                                      mov r1, #1
004fd12c  00 60 a0 e3                                      mov r6, #0
004fd130  01 00 80 e0                                      add r0, r0, r1
004fd134  0c 4d f8 eb                                      bl #0x31056c
004fd138  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004fd13c  00 10 a0 e1                                      mov r1, r0
004fd140  10 00 84 e5                                      str r0, [r4, #0x10]
004fd144  06 30 a0 e1                                      mov r3, r6
004fd148  05 00 a0 e1                                      mov r0, r5
004fd14c  c0 68 f8 eb                                      bl #0x317454
004fd150  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004fd154  10 20 94 e5                                      ldr r2, [r4, #0x10]
004fd158  05 00 a0 e1                                      mov r0, r5
004fd15c  14 10 84 e2                                      add r1, r4, #0x14
004fd160  03 60 c2 e7                                      strb r6, [r2, r3]
004fd164  c9 6f fd eb                                      bl #0x459090
004fd168  01 30 a0 e3                                      mov r3, #1
004fd16c  06 00 53 e1                                      cmp r3, r6
004fd170  04 30 8d e5                                      str r3, [sp, #4]
004fd174  0f 00 00 1a                                      bne #0x4fd1b8
004fd178  15 30 84 e2                                      add r3, r4, #0x15
004fd17c  16 20 84 e2                                      add r2, r4, #0x16
004fd180  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd184  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd188  03 00 52 e1                                      cmp r2, r3
004fd18c  01 10 20 e0                                      eor r1, r0, r1
004fd190  01 10 43 e5                                      strb r1, [r3, #-1]
004fd194  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd198  00 10 21 e0                                      eor r1, r1, r0
004fd19c  01 10 c2 e5                                      strb r1, [r2, #1]
004fd1a0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd1a4  01 20 42 e2                                      sub r2, r2, #1
004fd1a8  00 10 21 e0                                      eor r1, r1, r0
004fd1ac  01 10 43 e5                                      strb r1, [r3, #-1]
004fd1b0  01 30 83 e2                                      add r3, r3, #1
004fd1b4  f1 ff ff 8a                                      bhi #0x4fd180
004fd1b8  05 00 a0 e1                                      mov r0, r5
004fd1bc  18 10 84 e2                                      add r1, r4, #0x18
004fd1c0  b2 6f fd eb                                      bl #0x459090
004fd1c4  01 30 a0 e3                                      mov r3, #1
004fd1c8  00 00 53 e3                                      cmp r3, #0
004fd1cc  04 30 8d e5                                      str r3, [sp, #4]
004fd1d0  0f 00 00 1a                                      bne #0x4fd214
004fd1d4  1a 30 84 e2                                      add r3, r4, #0x1a
004fd1d8  19 40 84 e2                                      add r4, r4, #0x19
004fd1dc  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fd1e0  01 20 54 e5                                      ldrb r2, [r4, #-1]
004fd1e4  04 00 53 e1                                      cmp r3, r4
004fd1e8  02 20 21 e0                                      eor r2, r1, r2
004fd1ec  01 20 44 e5                                      strb r2, [r4, #-1]
004fd1f0  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fd1f4  01 20 22 e0                                      eor r2, r2, r1
004fd1f8  01 20 c3 e5                                      strb r2, [r3, #1]
004fd1fc  01 10 54 e5                                      ldrb r1, [r4, #-1]
004fd200  01 30 43 e2                                      sub r3, r3, #1
004fd204  01 20 22 e0                                      eor r2, r2, r1
004fd208  01 20 44 e5                                      strb r2, [r4, #-1]
004fd20c  01 40 84 e2                                      add r4, r4, #1
004fd210  f1 ff ff 8a                                      bhi #0x4fd1dc
004fd214  08 d0 8d e2                                      add sp, sp, #8
004fd218  70 80 bd e8                                      pop {r4, r5, r6, pc}
