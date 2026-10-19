; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d9bd8, declared_size=40, range_size=40, mode=arm
; class-group: Structs::TriggerTrap
; alias: _ZN7Structs11TriggerTrap8finalizeEv
; demangled: Structs::TriggerTrap::finalize()
; decoder-mode: arm
004d9bd8  10 40 2d e9                                      push {r4, lr}
004d9bdc  00 40 a0 e1                                      mov r4, r0
004d9be0  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d9be4  00 00 50 e3                                      cmp r0, #0
004d9be8  03 00 00 0a                                      beq #0x4d9bfc
004d9bec  13 da f8 eb                                      bl #0x310440
004d9bf0  00 30 a0 e3                                      mov r3, #0
004d9bf4  0c 30 84 e5                                      str r3, [r4, #0xc]
004d9bf8  10 30 84 e5                                      str r3, [r4, #0x10]
004d9bfc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d9c00, declared_size=64, range_size=64, mode=arm
; class-group: Structs::TriggerTrap
; alias: _ZN7Structs11TriggerTrapD1Ev
; demangled: Structs::TriggerTrap::~TriggerTrap()
; decoder-mode: arm
004d9c00  10 40 2d e9                                      push {r4, lr}
004d9c04  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d9c08  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d9c0c  00 40 a0 e1                                      mov r4, r0
004d9c10  03 30 8f e0                                      add r3, pc, r3
004d9c14  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d9c18  02 20 93 e7                                      ldr r2, [r3, r2]
004d9c1c  00 00 50 e3                                      cmp r0, #0
004d9c20  08 20 82 e2                                      add r2, r2, #8
004d9c24  00 20 84 e5                                      str r2, [r4]
004d9c28  00 00 00 0a                                      beq #0x4d9c30
004d9c2c  03 da f8 eb                                      bl #0x310440
004d9c30  04 00 a0 e1                                      mov r0, r4
004d9c34  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d9c38  80 ae 4b 00 04 11 00 00                          .byte 0x80, 0xae, 0x4b, 0x00, 0x04, 0x11, 0x00, 0x00

; FUNCTION 0x004d9c40, declared_size=28, range_size=28, mode=arm
; class-group: Structs::TriggerTrap
; alias: _ZN7Structs11TriggerTrapD0Ev
; demangled: Structs::TriggerTrap::~TriggerTrap()
; decoder-mode: arm
004d9c40  10 40 2d e9                                      push {r4, lr}
004d9c44  00 40 a0 e1                                      mov r4, r0
004d9c48  ec ff ff eb                                      bl #0x4d9c00
004d9c4c  04 00 a0 e1                                      mov r0, r4
004d9c50  fa d9 f8 eb                                      bl #0x310440
004d9c54  04 00 a0 e1                                      mov r0, r4
004d9c58  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d9c5c, declared_size=64, range_size=64, mode=arm
; class-group: Structs::TriggerTrap
; alias: _ZN7Structs11TriggerTrapD2Ev
; demangled: Structs::TriggerTrap::~TriggerTrap()
; decoder-mode: arm
004d9c5c  10 40 2d e9                                      push {r4, lr}
004d9c60  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d9c64  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d9c68  00 40 a0 e1                                      mov r4, r0
004d9c6c  03 30 8f e0                                      add r3, pc, r3
004d9c70  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d9c74  02 20 93 e7                                      ldr r2, [r3, r2]
004d9c78  00 00 50 e3                                      cmp r0, #0
004d9c7c  08 20 82 e2                                      add r2, r2, #8
004d9c80  00 20 84 e5                                      str r2, [r4]
004d9c84  00 00 00 0a                                      beq #0x4d9c8c
004d9c88  ec d9 f8 eb                                      bl #0x310440
004d9c8c  04 00 a0 e1                                      mov r0, r4
004d9c90  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d9c94  24 ae 4b 00 04 11 00 00                          .byte 0x24, 0xae, 0x4b, 0x00, 0x04, 0x11, 0x00, 0x00

; FUNCTION 0x004fd21c, declared_size=556, range_size=556, mode=arm
; class-group: Structs::TriggerTrap
; alias: _ZN7Structs11TriggerTrap4readEP11IStreamBase
; demangled: Structs::TriggerTrap::read(IStreamBase*)
; decoder-mode: arm
004fd21c  70 40 2d e9                                      push {r4, r5, r6, lr}
004fd220  00 40 a0 e1                                      mov r4, r0
004fd224  08 d0 4d e2                                      sub sp, sp, #8
004fd228  01 00 a0 e1                                      mov r0, r1
004fd22c  01 50 a0 e1                                      mov r5, r1
004fd230  04 10 84 e2                                      add r1, r4, #4
004fd234  95 6f fd eb                                      bl #0x459090
004fd238  01 30 a0 e3                                      mov r3, #1
004fd23c  00 00 53 e3                                      cmp r3, #0
004fd240  04 30 8d e5                                      str r3, [sp, #4]
004fd244  0f 00 00 1a                                      bne #0x4fd288
004fd248  05 30 84 e2                                      add r3, r4, #5
004fd24c  06 20 84 e2                                      add r2, r4, #6
004fd250  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd254  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd258  03 00 52 e1                                      cmp r2, r3
004fd25c  01 10 20 e0                                      eor r1, r0, r1
004fd260  01 10 43 e5                                      strb r1, [r3, #-1]
004fd264  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd268  00 10 21 e0                                      eor r1, r1, r0
004fd26c  01 10 c2 e5                                      strb r1, [r2, #1]
004fd270  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd274  01 20 42 e2                                      sub r2, r2, #1
004fd278  00 10 21 e0                                      eor r1, r1, r0
004fd27c  01 10 43 e5                                      strb r1, [r3, #-1]
004fd280  01 30 83 e2                                      add r3, r3, #1
004fd284  f1 ff ff 8a                                      bhi #0x4fd250
004fd288  05 00 a0 e1                                      mov r0, r5
004fd28c  08 10 84 e2                                      add r1, r4, #8
004fd290  7e 6f fd eb                                      bl #0x459090
004fd294  01 30 a0 e3                                      mov r3, #1
004fd298  00 00 53 e3                                      cmp r3, #0
004fd29c  04 30 8d e5                                      str r3, [sp, #4]
004fd2a0  0f 00 00 1a                                      bne #0x4fd2e4
004fd2a4  09 30 84 e2                                      add r3, r4, #9
004fd2a8  0a 20 84 e2                                      add r2, r4, #0xa
004fd2ac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd2b0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd2b4  03 00 52 e1                                      cmp r2, r3
004fd2b8  01 10 20 e0                                      eor r1, r0, r1
004fd2bc  01 10 43 e5                                      strb r1, [r3, #-1]
004fd2c0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd2c4  00 10 21 e0                                      eor r1, r1, r0
004fd2c8  01 10 c2 e5                                      strb r1, [r2, #1]
004fd2cc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd2d0  01 20 42 e2                                      sub r2, r2, #1
004fd2d4  00 10 21 e0                                      eor r1, r1, r0
004fd2d8  01 10 43 e5                                      strb r1, [r3, #-1]
004fd2dc  01 30 83 e2                                      add r3, r3, #1
004fd2e0  f1 ff ff 8a                                      bhi #0x4fd2ac
004fd2e4  05 00 a0 e1                                      mov r0, r5
004fd2e8  0c 10 84 e2                                      add r1, r4, #0xc
004fd2ec  ab 87 fb eb                                      bl #0x3df1a0
004fd2f0  01 30 a0 e3                                      mov r3, #1
004fd2f4  00 00 53 e3                                      cmp r3, #0
004fd2f8  04 30 8d e5                                      str r3, [sp, #4]
004fd2fc  0f 00 00 1a                                      bne #0x4fd340
004fd300  0d 30 84 e2                                      add r3, r4, #0xd
004fd304  0e 20 84 e2                                      add r2, r4, #0xe
004fd308  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd30c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd310  03 00 52 e1                                      cmp r2, r3
004fd314  01 10 20 e0                                      eor r1, r0, r1
004fd318  01 10 43 e5                                      strb r1, [r3, #-1]
004fd31c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd320  00 10 21 e0                                      eor r1, r1, r0
004fd324  01 10 c2 e5                                      strb r1, [r2, #1]
004fd328  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd32c  01 20 42 e2                                      sub r2, r2, #1
004fd330  00 10 21 e0                                      eor r1, r1, r0
004fd334  01 10 43 e5                                      strb r1, [r3, #-1]
004fd338  01 30 83 e2                                      add r3, r3, #1
004fd33c  f1 ff ff 8a                                      bhi #0x4fd308
004fd340  10 00 94 e5                                      ldr r0, [r4, #0x10]
004fd344  00 00 50 e3                                      cmp r0, #0
004fd348  00 00 00 0a                                      beq #0x4fd350
004fd34c  3b 4c f8 eb                                      bl #0x310440
004fd350  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004fd354  01 10 a0 e3                                      mov r1, #1
004fd358  00 60 a0 e3                                      mov r6, #0
004fd35c  01 00 80 e0                                      add r0, r0, r1
004fd360  81 4c f8 eb                                      bl #0x31056c
004fd364  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004fd368  00 10 a0 e1                                      mov r1, r0
004fd36c  10 00 84 e5                                      str r0, [r4, #0x10]
004fd370  06 30 a0 e1                                      mov r3, r6
004fd374  05 00 a0 e1                                      mov r0, r5
004fd378  35 68 f8 eb                                      bl #0x317454
004fd37c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004fd380  10 20 94 e5                                      ldr r2, [r4, #0x10]
004fd384  05 00 a0 e1                                      mov r0, r5
004fd388  14 10 84 e2                                      add r1, r4, #0x14
004fd38c  03 60 c2 e7                                      strb r6, [r2, r3]
004fd390  3e 6f fd eb                                      bl #0x459090
004fd394  01 30 a0 e3                                      mov r3, #1
004fd398  06 00 53 e1                                      cmp r3, r6
004fd39c  04 30 8d e5                                      str r3, [sp, #4]
004fd3a0  0f 00 00 1a                                      bne #0x4fd3e4
004fd3a4  15 30 84 e2                                      add r3, r4, #0x15
004fd3a8  16 20 84 e2                                      add r2, r4, #0x16
004fd3ac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd3b0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd3b4  03 00 52 e1                                      cmp r2, r3
004fd3b8  01 10 20 e0                                      eor r1, r0, r1
004fd3bc  01 10 43 e5                                      strb r1, [r3, #-1]
004fd3c0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd3c4  00 10 21 e0                                      eor r1, r1, r0
004fd3c8  01 10 c2 e5                                      strb r1, [r2, #1]
004fd3cc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd3d0  01 20 42 e2                                      sub r2, r2, #1
004fd3d4  00 10 21 e0                                      eor r1, r1, r0
004fd3d8  01 10 43 e5                                      strb r1, [r3, #-1]
004fd3dc  01 30 83 e2                                      add r3, r3, #1
004fd3e0  f1 ff ff 8a                                      bhi #0x4fd3ac
004fd3e4  05 00 a0 e1                                      mov r0, r5
004fd3e8  18 10 84 e2                                      add r1, r4, #0x18
004fd3ec  27 6f fd eb                                      bl #0x459090
004fd3f0  01 30 a0 e3                                      mov r3, #1
004fd3f4  00 00 53 e3                                      cmp r3, #0
004fd3f8  04 30 8d e5                                      str r3, [sp, #4]
004fd3fc  0f 00 00 1a                                      bne #0x4fd440
004fd400  1a 30 84 e2                                      add r3, r4, #0x1a
004fd404  19 40 84 e2                                      add r4, r4, #0x19
004fd408  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fd40c  01 20 54 e5                                      ldrb r2, [r4, #-1]
004fd410  04 00 53 e1                                      cmp r3, r4
004fd414  02 20 21 e0                                      eor r2, r1, r2
004fd418  01 20 44 e5                                      strb r2, [r4, #-1]
004fd41c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fd420  01 20 22 e0                                      eor r2, r2, r1
004fd424  01 20 c3 e5                                      strb r2, [r3, #1]
004fd428  01 10 54 e5                                      ldrb r1, [r4, #-1]
004fd42c  01 30 43 e2                                      sub r3, r3, #1
004fd430  01 20 22 e0                                      eor r2, r2, r1
004fd434  01 20 44 e5                                      strb r2, [r4, #-1]
004fd438  01 40 84 e2                                      add r4, r4, #1
004fd43c  f1 ff ff 8a                                      bhi #0x4fd408
004fd440  08 d0 8d e2                                      add sp, sp, #8
004fd444  70 80 bd e8                                      pop {r4, r5, r6, pc}
