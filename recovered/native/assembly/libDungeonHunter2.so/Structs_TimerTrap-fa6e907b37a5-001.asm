; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d9d60, declared_size=40, range_size=40, mode=arm
; class-group: Structs::TimerTrap
; alias: _ZN7Structs9TimerTrap8finalizeEv
; demangled: Structs::TimerTrap::finalize()
; decoder-mode: arm
004d9d60  10 40 2d e9                                      push {r4, lr}
004d9d64  00 40 a0 e1                                      mov r4, r0
004d9d68  14 00 90 e5                                      ldr r0, [r0, #0x14]
004d9d6c  00 00 50 e3                                      cmp r0, #0
004d9d70  03 00 00 0a                                      beq #0x4d9d84
004d9d74  b1 d9 f8 eb                                      bl #0x310440
004d9d78  00 30 a0 e3                                      mov r3, #0
004d9d7c  10 30 84 e5                                      str r3, [r4, #0x10]
004d9d80  14 30 84 e5                                      str r3, [r4, #0x14]
004d9d84  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d9d88, declared_size=64, range_size=64, mode=arm
; class-group: Structs::TimerTrap
; alias: _ZN7Structs9TimerTrapD1Ev
; demangled: Structs::TimerTrap::~TimerTrap()
; decoder-mode: arm
004d9d88  10 40 2d e9                                      push {r4, lr}
004d9d8c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d9d90  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d9d94  00 40 a0 e1                                      mov r4, r0
004d9d98  03 30 8f e0                                      add r3, pc, r3
004d9d9c  14 00 90 e5                                      ldr r0, [r0, #0x14]
004d9da0  02 20 93 e7                                      ldr r2, [r3, r2]
004d9da4  00 00 50 e3                                      cmp r0, #0
004d9da8  08 20 82 e2                                      add r2, r2, #8
004d9dac  00 20 84 e5                                      str r2, [r4]
004d9db0  00 00 00 0a                                      beq #0x4d9db8
004d9db4  a1 d9 f8 eb                                      bl #0x310440
004d9db8  04 00 a0 e1                                      mov r0, r4
004d9dbc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d9dc0  f8 ac 4b 00 a0 30 00 00                          .byte 0xf8, 0xac, 0x4b, 0x00, 0xa0, 0x30, 0x00, 0x00

; FUNCTION 0x004d9dc8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::TimerTrap
; alias: _ZN7Structs9TimerTrapD0Ev
; demangled: Structs::TimerTrap::~TimerTrap()
; decoder-mode: arm
004d9dc8  10 40 2d e9                                      push {r4, lr}
004d9dcc  00 40 a0 e1                                      mov r4, r0
004d9dd0  ec ff ff eb                                      bl #0x4d9d88
004d9dd4  04 00 a0 e1                                      mov r0, r4
004d9dd8  98 d9 f8 eb                                      bl #0x310440
004d9ddc  04 00 a0 e1                                      mov r0, r4
004d9de0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d9de4, declared_size=64, range_size=64, mode=arm
; class-group: Structs::TimerTrap
; alias: _ZN7Structs9TimerTrapD2Ev
; demangled: Structs::TimerTrap::~TimerTrap()
; decoder-mode: arm
004d9de4  10 40 2d e9                                      push {r4, lr}
004d9de8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d9dec  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d9df0  00 40 a0 e1                                      mov r4, r0
004d9df4  03 30 8f e0                                      add r3, pc, r3
004d9df8  14 00 90 e5                                      ldr r0, [r0, #0x14]
004d9dfc  02 20 93 e7                                      ldr r2, [r3, r2]
004d9e00  00 00 50 e3                                      cmp r0, #0
004d9e04  08 20 82 e2                                      add r2, r2, #8
004d9e08  00 20 84 e5                                      str r2, [r4]
004d9e0c  00 00 00 0a                                      beq #0x4d9e14
004d9e10  8a d9 f8 eb                                      bl #0x310440
004d9e14  04 00 a0 e1                                      mov r0, r4
004d9e18  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d9e1c  9c ac 4b 00 a0 30 00 00                          .byte 0x9c, 0xac, 0x4b, 0x00, 0xa0, 0x30, 0x00, 0x00

; FUNCTION 0x004fd618, declared_size=648, range_size=648, mode=arm
; class-group: Structs::TimerTrap
; alias: _ZN7Structs9TimerTrap4readEP11IStreamBase
; demangled: Structs::TimerTrap::read(IStreamBase*)
; decoder-mode: arm
004fd618  70 40 2d e9                                      push {r4, r5, r6, lr}
004fd61c  00 40 a0 e1                                      mov r4, r0
004fd620  08 d0 4d e2                                      sub sp, sp, #8
004fd624  01 00 a0 e1                                      mov r0, r1
004fd628  01 50 a0 e1                                      mov r5, r1
004fd62c  04 10 84 e2                                      add r1, r4, #4
004fd630  96 6e fd eb                                      bl #0x459090
004fd634  01 30 a0 e3                                      mov r3, #1
004fd638  00 00 53 e3                                      cmp r3, #0
004fd63c  04 30 8d e5                                      str r3, [sp, #4]
004fd640  0f 00 00 1a                                      bne #0x4fd684
004fd644  05 30 84 e2                                      add r3, r4, #5
004fd648  06 20 84 e2                                      add r2, r4, #6
004fd64c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd650  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd654  02 00 53 e1                                      cmp r3, r2
004fd658  01 10 20 e0                                      eor r1, r0, r1
004fd65c  01 10 43 e5                                      strb r1, [r3, #-1]
004fd660  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd664  00 10 21 e0                                      eor r1, r1, r0
004fd668  01 10 c2 e5                                      strb r1, [r2, #1]
004fd66c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd670  01 20 42 e2                                      sub r2, r2, #1
004fd674  00 10 21 e0                                      eor r1, r1, r0
004fd678  01 10 43 e5                                      strb r1, [r3, #-1]
004fd67c  01 30 83 e2                                      add r3, r3, #1
004fd680  f1 ff ff 3a                                      blo #0x4fd64c
004fd684  05 00 a0 e1                                      mov r0, r5
004fd688  08 10 84 e2                                      add r1, r4, #8
004fd68c  7f 6e fd eb                                      bl #0x459090
004fd690  01 30 a0 e3                                      mov r3, #1
004fd694  00 00 53 e3                                      cmp r3, #0
004fd698  04 30 8d e5                                      str r3, [sp, #4]
004fd69c  0f 00 00 1a                                      bne #0x4fd6e0
004fd6a0  09 30 84 e2                                      add r3, r4, #9
004fd6a4  0a 20 84 e2                                      add r2, r4, #0xa
004fd6a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd6ac  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd6b0  02 00 53 e1                                      cmp r3, r2
004fd6b4  01 10 20 e0                                      eor r1, r0, r1
004fd6b8  01 10 43 e5                                      strb r1, [r3, #-1]
004fd6bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd6c0  00 10 21 e0                                      eor r1, r1, r0
004fd6c4  01 10 c2 e5                                      strb r1, [r2, #1]
004fd6c8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd6cc  01 20 42 e2                                      sub r2, r2, #1
004fd6d0  00 10 21 e0                                      eor r1, r1, r0
004fd6d4  01 10 43 e5                                      strb r1, [r3, #-1]
004fd6d8  01 30 83 e2                                      add r3, r3, #1
004fd6dc  f1 ff ff 3a                                      blo #0x4fd6a8
004fd6e0  05 00 a0 e1                                      mov r0, r5
004fd6e4  0c 10 84 e2                                      add r1, r4, #0xc
004fd6e8  68 6e fd eb                                      bl #0x459090
004fd6ec  01 30 a0 e3                                      mov r3, #1
004fd6f0  00 00 53 e3                                      cmp r3, #0
004fd6f4  04 30 8d e5                                      str r3, [sp, #4]
004fd6f8  0f 00 00 1a                                      bne #0x4fd73c
004fd6fc  0d 30 84 e2                                      add r3, r4, #0xd
004fd700  0e 20 84 e2                                      add r2, r4, #0xe
004fd704  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd708  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd70c  02 00 53 e1                                      cmp r3, r2
004fd710  01 10 20 e0                                      eor r1, r0, r1
004fd714  01 10 43 e5                                      strb r1, [r3, #-1]
004fd718  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd71c  00 10 21 e0                                      eor r1, r1, r0
004fd720  01 10 c2 e5                                      strb r1, [r2, #1]
004fd724  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd728  01 20 42 e2                                      sub r2, r2, #1
004fd72c  00 10 21 e0                                      eor r1, r1, r0
004fd730  01 10 43 e5                                      strb r1, [r3, #-1]
004fd734  01 30 83 e2                                      add r3, r3, #1
004fd738  f1 ff ff 3a                                      blo #0x4fd704
004fd73c  05 00 a0 e1                                      mov r0, r5
004fd740  10 10 84 e2                                      add r1, r4, #0x10
004fd744  95 86 fb eb                                      bl #0x3df1a0
004fd748  01 30 a0 e3                                      mov r3, #1
004fd74c  00 00 53 e3                                      cmp r3, #0
004fd750  04 30 8d e5                                      str r3, [sp, #4]
004fd754  0f 00 00 1a                                      bne #0x4fd798
004fd758  11 30 84 e2                                      add r3, r4, #0x11
004fd75c  12 20 84 e2                                      add r2, r4, #0x12
004fd760  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd764  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd768  02 00 53 e1                                      cmp r3, r2
004fd76c  01 10 20 e0                                      eor r1, r0, r1
004fd770  01 10 43 e5                                      strb r1, [r3, #-1]
004fd774  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd778  00 10 21 e0                                      eor r1, r1, r0
004fd77c  01 10 c2 e5                                      strb r1, [r2, #1]
004fd780  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd784  01 20 42 e2                                      sub r2, r2, #1
004fd788  00 10 21 e0                                      eor r1, r1, r0
004fd78c  01 10 43 e5                                      strb r1, [r3, #-1]
004fd790  01 30 83 e2                                      add r3, r3, #1
004fd794  f1 ff ff 3a                                      blo #0x4fd760
004fd798  14 00 94 e5                                      ldr r0, [r4, #0x14]
004fd79c  00 00 50 e3                                      cmp r0, #0
004fd7a0  00 00 00 0a                                      beq #0x4fd7a8
004fd7a4  25 4b f8 eb                                      bl #0x310440
004fd7a8  10 00 94 e5                                      ldr r0, [r4, #0x10]
004fd7ac  01 10 a0 e3                                      mov r1, #1
004fd7b0  00 60 a0 e3                                      mov r6, #0
004fd7b4  01 00 80 e0                                      add r0, r0, r1
004fd7b8  6b 4b f8 eb                                      bl #0x31056c
004fd7bc  10 20 94 e5                                      ldr r2, [r4, #0x10]
004fd7c0  00 10 a0 e1                                      mov r1, r0
004fd7c4  14 00 84 e5                                      str r0, [r4, #0x14]
004fd7c8  06 30 a0 e1                                      mov r3, r6
004fd7cc  05 00 a0 e1                                      mov r0, r5
004fd7d0  1f 67 f8 eb                                      bl #0x317454
004fd7d4  10 30 94 e5                                      ldr r3, [r4, #0x10]
004fd7d8  14 20 94 e5                                      ldr r2, [r4, #0x14]
004fd7dc  05 00 a0 e1                                      mov r0, r5
004fd7e0  18 10 84 e2                                      add r1, r4, #0x18
004fd7e4  03 60 c2 e7                                      strb r6, [r2, r3]
004fd7e8  28 6e fd eb                                      bl #0x459090
004fd7ec  01 30 a0 e3                                      mov r3, #1
004fd7f0  06 00 53 e1                                      cmp r3, r6
004fd7f4  04 30 8d e5                                      str r3, [sp, #4]
004fd7f8  0f 00 00 1a                                      bne #0x4fd83c
004fd7fc  19 30 84 e2                                      add r3, r4, #0x19
004fd800  1a 20 84 e2                                      add r2, r4, #0x1a
004fd804  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd808  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd80c  02 00 53 e1                                      cmp r3, r2
004fd810  01 10 20 e0                                      eor r1, r0, r1
004fd814  01 10 43 e5                                      strb r1, [r3, #-1]
004fd818  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd81c  00 10 21 e0                                      eor r1, r1, r0
004fd820  01 10 c2 e5                                      strb r1, [r2, #1]
004fd824  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd828  01 20 42 e2                                      sub r2, r2, #1
004fd82c  00 10 21 e0                                      eor r1, r1, r0
004fd830  01 10 43 e5                                      strb r1, [r3, #-1]
004fd834  01 30 83 e2                                      add r3, r3, #1
004fd838  f1 ff ff 3a                                      blo #0x4fd804
004fd83c  05 00 a0 e1                                      mov r0, r5
004fd840  1c 10 84 e2                                      add r1, r4, #0x1c
004fd844  11 6e fd eb                                      bl #0x459090
004fd848  01 30 a0 e3                                      mov r3, #1
004fd84c  00 00 53 e3                                      cmp r3, #0
004fd850  04 30 8d e5                                      str r3, [sp, #4]
004fd854  0f 00 00 1a                                      bne #0x4fd898
004fd858  1e 30 84 e2                                      add r3, r4, #0x1e
004fd85c  1d 40 84 e2                                      add r4, r4, #0x1d
004fd860  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fd864  01 20 54 e5                                      ldrb r2, [r4, #-1]
004fd868  03 00 54 e1                                      cmp r4, r3
004fd86c  02 20 21 e0                                      eor r2, r1, r2
004fd870  01 20 44 e5                                      strb r2, [r4, #-1]
004fd874  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fd878  01 20 22 e0                                      eor r2, r2, r1
004fd87c  01 20 c3 e5                                      strb r2, [r3, #1]
004fd880  01 10 54 e5                                      ldrb r1, [r4, #-1]
004fd884  01 30 43 e2                                      sub r3, r3, #1
004fd888  01 20 22 e0                                      eor r2, r2, r1
004fd88c  01 20 44 e5                                      strb r2, [r4, #-1]
004fd890  01 40 84 e2                                      add r4, r4, #1
004fd894  f1 ff ff 3a                                      blo #0x4fd860
004fd898  08 d0 8d e2                                      add sp, sp, #8
004fd89c  70 80 bd e8                                      pop {r4, r5, r6, pc}
