; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6bac, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GameObjectVisual
; alias: _ZN7Structs16GameObjectVisualD2Ev
; demangled: Structs::GameObjectVisual::~GameObjectVisual()
; decoder-mode: arm
004c6bac  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6bb0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GameObjectVisual
; alias: _ZN7Structs16GameObjectVisualD1Ev
; demangled: Structs::GameObjectVisual::~GameObjectVisual()
; decoder-mode: arm
004c6bb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6bb4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GameObjectVisual
; alias: _ZN7Structs16GameObjectVisual8finalizeEv
; demangled: Structs::GameObjectVisual::finalize()
; decoder-mode: arm
004c6bb4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce2e8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::GameObjectVisual
; alias: _ZN7Structs16GameObjectVisualD0Ev
; demangled: Structs::GameObjectVisual::~GameObjectVisual()
; decoder-mode: arm
004ce2e8  10 40 2d e9                                      push {r4, lr}
004ce2ec  00 40 a0 e1                                      mov r4, r0
004ce2f0  2e e2 ff eb                                      bl #0x4c6bb0
004ce2f4  04 00 a0 e1                                      mov r0, r4
004ce2f8  50 08 f9 eb                                      bl #0x310440
004ce2fc  04 00 a0 e1                                      mov r0, r4
004ce300  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff23c, declared_size=668, range_size=668, mode=arm
; class-group: Structs::GameObjectVisual
; alias: _ZN7Structs16GameObjectVisual4readEP11IStreamBase
; demangled: Structs::GameObjectVisual::read(IStreamBase*)
; decoder-mode: arm
004ff23c  30 40 2d e9                                      push {r4, r5, lr}
004ff240  00 40 a0 e1                                      mov r4, r0
004ff244  0c d0 4d e2                                      sub sp, sp, #0xc
004ff248  01 00 a0 e1                                      mov r0, r1
004ff24c  01 50 a0 e1                                      mov r5, r1
004ff250  04 10 84 e2                                      add r1, r4, #4
004ff254  8d 67 fd eb                                      bl #0x459090
004ff258  01 30 a0 e3                                      mov r3, #1
004ff25c  00 00 53 e3                                      cmp r3, #0
004ff260  04 30 8d e5                                      str r3, [sp, #4]
004ff264  0f 00 00 1a                                      bne #0x4ff2a8
004ff268  05 30 84 e2                                      add r3, r4, #5
004ff26c  06 20 84 e2                                      add r2, r4, #6
004ff270  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff274  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ff278  02 00 53 e1                                      cmp r3, r2
004ff27c  01 10 20 e0                                      eor r1, r0, r1
004ff280  01 10 43 e5                                      strb r1, [r3, #-1]
004ff284  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff288  00 10 21 e0                                      eor r1, r1, r0
004ff28c  01 10 c2 e5                                      strb r1, [r2, #1]
004ff290  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ff294  01 20 42 e2                                      sub r2, r2, #1
004ff298  00 10 21 e0                                      eor r1, r1, r0
004ff29c  01 10 43 e5                                      strb r1, [r3, #-1]
004ff2a0  01 30 83 e2                                      add r3, r3, #1
004ff2a4  f1 ff ff 3a                                      blo #0x4ff270
004ff2a8  05 00 a0 e1                                      mov r0, r5
004ff2ac  08 10 84 e2                                      add r1, r4, #8
004ff2b0  76 67 fd eb                                      bl #0x459090
004ff2b4  01 30 a0 e3                                      mov r3, #1
004ff2b8  00 00 53 e3                                      cmp r3, #0
004ff2bc  04 30 8d e5                                      str r3, [sp, #4]
004ff2c0  0f 00 00 1a                                      bne #0x4ff304
004ff2c4  09 30 84 e2                                      add r3, r4, #9
004ff2c8  0a 20 84 e2                                      add r2, r4, #0xa
004ff2cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff2d0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ff2d4  02 00 53 e1                                      cmp r3, r2
004ff2d8  01 10 20 e0                                      eor r1, r0, r1
004ff2dc  01 10 43 e5                                      strb r1, [r3, #-1]
004ff2e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff2e4  00 10 21 e0                                      eor r1, r1, r0
004ff2e8  01 10 c2 e5                                      strb r1, [r2, #1]
004ff2ec  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ff2f0  01 20 42 e2                                      sub r2, r2, #1
004ff2f4  00 10 21 e0                                      eor r1, r1, r0
004ff2f8  01 10 43 e5                                      strb r1, [r3, #-1]
004ff2fc  01 30 83 e2                                      add r3, r3, #1
004ff300  f1 ff ff 3a                                      blo #0x4ff2cc
004ff304  05 00 a0 e1                                      mov r0, r5
004ff308  0c 10 84 e2                                      add r1, r4, #0xc
004ff30c  5f 67 fd eb                                      bl #0x459090
004ff310  01 30 a0 e3                                      mov r3, #1
004ff314  00 00 53 e3                                      cmp r3, #0
004ff318  04 30 8d e5                                      str r3, [sp, #4]
004ff31c  0f 00 00 1a                                      bne #0x4ff360
004ff320  0d 30 84 e2                                      add r3, r4, #0xd
004ff324  0e 20 84 e2                                      add r2, r4, #0xe
004ff328  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff32c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ff330  02 00 53 e1                                      cmp r3, r2
004ff334  01 10 20 e0                                      eor r1, r0, r1
004ff338  01 10 43 e5                                      strb r1, [r3, #-1]
004ff33c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff340  00 10 21 e0                                      eor r1, r1, r0
004ff344  01 10 c2 e5                                      strb r1, [r2, #1]
004ff348  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ff34c  01 20 42 e2                                      sub r2, r2, #1
004ff350  00 10 21 e0                                      eor r1, r1, r0
004ff354  01 10 43 e5                                      strb r1, [r3, #-1]
004ff358  01 30 83 e2                                      add r3, r3, #1
004ff35c  f1 ff ff 3a                                      blo #0x4ff328
004ff360  05 00 a0 e1                                      mov r0, r5
004ff364  10 10 84 e2                                      add r1, r4, #0x10
004ff368  48 67 fd eb                                      bl #0x459090
004ff36c  01 30 a0 e3                                      mov r3, #1
004ff370  00 00 53 e3                                      cmp r3, #0
004ff374  04 30 8d e5                                      str r3, [sp, #4]
004ff378  0f 00 00 1a                                      bne #0x4ff3bc
004ff37c  11 30 84 e2                                      add r3, r4, #0x11
004ff380  12 20 84 e2                                      add r2, r4, #0x12
004ff384  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff388  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ff38c  02 00 53 e1                                      cmp r3, r2
004ff390  01 10 20 e0                                      eor r1, r0, r1
004ff394  01 10 43 e5                                      strb r1, [r3, #-1]
004ff398  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff39c  00 10 21 e0                                      eor r1, r1, r0
004ff3a0  01 10 c2 e5                                      strb r1, [r2, #1]
004ff3a4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ff3a8  01 20 42 e2                                      sub r2, r2, #1
004ff3ac  00 10 21 e0                                      eor r1, r1, r0
004ff3b0  01 10 43 e5                                      strb r1, [r3, #-1]
004ff3b4  01 30 83 e2                                      add r3, r3, #1
004ff3b8  f1 ff ff 3a                                      blo #0x4ff384
004ff3bc  05 00 a0 e1                                      mov r0, r5
004ff3c0  14 10 84 e2                                      add r1, r4, #0x14
004ff3c4  31 67 fd eb                                      bl #0x459090
004ff3c8  01 30 a0 e3                                      mov r3, #1
004ff3cc  00 00 53 e3                                      cmp r3, #0
004ff3d0  04 30 8d e5                                      str r3, [sp, #4]
004ff3d4  0f 00 00 1a                                      bne #0x4ff418
004ff3d8  15 30 84 e2                                      add r3, r4, #0x15
004ff3dc  16 20 84 e2                                      add r2, r4, #0x16
004ff3e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff3e4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ff3e8  02 00 53 e1                                      cmp r3, r2
004ff3ec  01 10 20 e0                                      eor r1, r0, r1
004ff3f0  01 10 43 e5                                      strb r1, [r3, #-1]
004ff3f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff3f8  00 10 21 e0                                      eor r1, r1, r0
004ff3fc  01 10 c2 e5                                      strb r1, [r2, #1]
004ff400  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ff404  01 20 42 e2                                      sub r2, r2, #1
004ff408  00 10 21 e0                                      eor r1, r1, r0
004ff40c  01 10 43 e5                                      strb r1, [r3, #-1]
004ff410  01 30 83 e2                                      add r3, r3, #1
004ff414  f1 ff ff 3a                                      blo #0x4ff3e0
004ff418  05 00 a0 e1                                      mov r0, r5
004ff41c  18 10 84 e2                                      add r1, r4, #0x18
004ff420  1a 67 fd eb                                      bl #0x459090
004ff424  01 30 a0 e3                                      mov r3, #1
004ff428  00 00 53 e3                                      cmp r3, #0
004ff42c  04 30 8d e5                                      str r3, [sp, #4]
004ff430  0f 00 00 1a                                      bne #0x4ff474
004ff434  19 30 84 e2                                      add r3, r4, #0x19
004ff438  1a 20 84 e2                                      add r2, r4, #0x1a
004ff43c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff440  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ff444  02 00 53 e1                                      cmp r3, r2
004ff448  01 10 20 e0                                      eor r1, r0, r1
004ff44c  01 10 43 e5                                      strb r1, [r3, #-1]
004ff450  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff454  00 10 21 e0                                      eor r1, r1, r0
004ff458  01 10 c2 e5                                      strb r1, [r2, #1]
004ff45c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ff460  01 20 42 e2                                      sub r2, r2, #1
004ff464  00 10 21 e0                                      eor r1, r1, r0
004ff468  01 10 43 e5                                      strb r1, [r3, #-1]
004ff46c  01 30 83 e2                                      add r3, r3, #1
004ff470  f1 ff ff 3a                                      blo #0x4ff43c
004ff474  05 00 a0 e1                                      mov r0, r5
004ff478  1c 10 84 e2                                      add r1, r4, #0x1c
004ff47c  03 67 fd eb                                      bl #0x459090
004ff480  01 30 a0 e3                                      mov r3, #1
004ff484  00 00 53 e3                                      cmp r3, #0
004ff488  04 30 8d e5                                      str r3, [sp, #4]
004ff48c  0f 00 00 1a                                      bne #0x4ff4d0
004ff490  1e 30 84 e2                                      add r3, r4, #0x1e
004ff494  1d 40 84 e2                                      add r4, r4, #0x1d
004ff498  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ff49c  01 20 54 e5                                      ldrb r2, [r4, #-1]
004ff4a0  03 00 54 e1                                      cmp r4, r3
004ff4a4  02 20 21 e0                                      eor r2, r1, r2
004ff4a8  01 20 44 e5                                      strb r2, [r4, #-1]
004ff4ac  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ff4b0  01 20 22 e0                                      eor r2, r2, r1
004ff4b4  01 20 c3 e5                                      strb r2, [r3, #1]
004ff4b8  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ff4bc  01 30 43 e2                                      sub r3, r3, #1
004ff4c0  01 20 22 e0                                      eor r2, r2, r1
004ff4c4  01 20 44 e5                                      strb r2, [r4, #-1]
004ff4c8  01 40 84 e2                                      add r4, r4, #1
004ff4cc  f1 ff ff 3a                                      blo #0x4ff498
004ff4d0  0c d0 8d e2                                      add sp, sp, #0xc
004ff4d4  30 80 bd e8                                      pop {r4, r5, pc}
