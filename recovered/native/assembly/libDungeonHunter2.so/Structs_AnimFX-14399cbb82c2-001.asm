; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004da704, declared_size=40, range_size=40, mode=arm
; class-group: Structs::AnimFX
; alias: _ZN7Structs6AnimFX8finalizeEv
; demangled: Structs::AnimFX::finalize()
; decoder-mode: arm
004da704  10 40 2d e9                                      push {r4, lr}
004da708  00 40 a0 e1                                      mov r4, r0
004da70c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
004da710  00 00 50 e3                                      cmp r0, #0
004da714  03 00 00 0a                                      beq #0x4da728
004da718  48 d7 f8 eb                                      bl #0x310440
004da71c  00 30 a0 e3                                      mov r3, #0
004da720  28 30 84 e5                                      str r3, [r4, #0x28]
004da724  2c 30 84 e5                                      str r3, [r4, #0x2c]
004da728  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004da72c, declared_size=64, range_size=64, mode=arm
; class-group: Structs::AnimFX
; alias: _ZN7Structs6AnimFXD1Ev
; demangled: Structs::AnimFX::~AnimFX()
; decoder-mode: arm
004da72c  10 40 2d e9                                      push {r4, lr}
004da730  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004da734  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004da738  00 40 a0 e1                                      mov r4, r0
004da73c  03 30 8f e0                                      add r3, pc, r3
004da740  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
004da744  02 20 93 e7                                      ldr r2, [r3, r2]
004da748  00 00 50 e3                                      cmp r0, #0
004da74c  08 20 82 e2                                      add r2, r2, #8
004da750  00 20 84 e5                                      str r2, [r4]
004da754  00 00 00 0a                                      beq #0x4da75c
004da758  38 d7 f8 eb                                      bl #0x310440
004da75c  04 00 a0 e1                                      mov r0, r4
004da760  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004da764  54 a3 4b 00 1c 07 00 00                          .byte 0x54, 0xa3, 0x4b, 0x00, 0x1c, 0x07, 0x00, 0x00

; FUNCTION 0x004da76c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AnimFX
; alias: _ZN7Structs6AnimFXD0Ev
; demangled: Structs::AnimFX::~AnimFX()
; decoder-mode: arm
004da76c  10 40 2d e9                                      push {r4, lr}
004da770  00 40 a0 e1                                      mov r4, r0
004da774  ec ff ff eb                                      bl #0x4da72c
004da778  04 00 a0 e1                                      mov r0, r4
004da77c  2f d7 f8 eb                                      bl #0x310440
004da780  04 00 a0 e1                                      mov r0, r4
004da784  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004da788, declared_size=64, range_size=64, mode=arm
; class-group: Structs::AnimFX
; alias: _ZN7Structs6AnimFXD2Ev
; demangled: Structs::AnimFX::~AnimFX()
; decoder-mode: arm
004da788  10 40 2d e9                                      push {r4, lr}
004da78c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004da790  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004da794  00 40 a0 e1                                      mov r4, r0
004da798  03 30 8f e0                                      add r3, pc, r3
004da79c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
004da7a0  02 20 93 e7                                      ldr r2, [r3, r2]
004da7a4  00 00 50 e3                                      cmp r0, #0
004da7a8  08 20 82 e2                                      add r2, r2, #8
004da7ac  00 20 84 e5                                      str r2, [r4]
004da7b0  00 00 00 0a                                      beq #0x4da7b8
004da7b4  21 d7 f8 eb                                      bl #0x310440
004da7b8  04 00 a0 e1                                      mov r0, r4
004da7bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004da7c0  f8 a2 4b 00 1c 07 00 00                          .byte 0xf8, 0xa2, 0x4b, 0x00, 0x1c, 0x07, 0x00, 0x00

; FUNCTION 0x00506990, declared_size=800, range_size=800, mode=arm
; class-group: Structs::AnimFX
; alias: _ZN7Structs6AnimFX4readEP11IStreamBase
; demangled: Structs::AnimFX::read(IStreamBase*)
; decoder-mode: arm
00506990  70 40 2d e9                                      push {r4, r5, r6, lr}
00506994  00 40 a0 e1                                      mov r4, r0
00506998  08 d0 4d e2                                      sub sp, sp, #8
0050699c  01 00 a0 e1                                      mov r0, r1
005069a0  01 60 a0 e1                                      mov r6, r1
005069a4  04 10 84 e2                                      add r1, r4, #4
005069a8  b8 49 fd eb                                      bl #0x459090
005069ac  01 30 a0 e3                                      mov r3, #1
005069b0  00 00 53 e3                                      cmp r3, #0
005069b4  04 30 8d e5                                      str r3, [sp, #4]
005069b8  0f 00 00 1a                                      bne #0x5069fc
005069bc  05 30 84 e2                                      add r3, r4, #5
005069c0  06 20 84 e2                                      add r2, r4, #6
005069c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005069c8  01 10 53 e5                                      ldrb r1, [r3, #-1]
005069cc  02 00 53 e1                                      cmp r3, r2
005069d0  01 10 20 e0                                      eor r1, r0, r1
005069d4  01 10 43 e5                                      strb r1, [r3, #-1]
005069d8  01 00 d2 e5                                      ldrb r0, [r2, #1]
005069dc  00 10 21 e0                                      eor r1, r1, r0
005069e0  01 10 c2 e5                                      strb r1, [r2, #1]
005069e4  01 00 53 e5                                      ldrb r0, [r3, #-1]
005069e8  01 20 42 e2                                      sub r2, r2, #1
005069ec  00 10 21 e0                                      eor r1, r1, r0
005069f0  01 10 43 e5                                      strb r1, [r3, #-1]
005069f4  01 30 83 e2                                      add r3, r3, #1
005069f8  f1 ff ff 3a                                      blo #0x5069c4
005069fc  08 10 84 e2                                      add r1, r4, #8
00506a00  06 00 a0 e1                                      mov r0, r6
00506a04  a4 53 ff eb                                      bl #0x4db89c
00506a08  06 00 a0 e1                                      mov r0, r6
00506a0c  0c 10 84 e2                                      add r1, r4, #0xc
00506a10  9e 49 fd eb                                      bl #0x459090
00506a14  01 30 a0 e3                                      mov r3, #1
00506a18  00 00 53 e3                                      cmp r3, #0
00506a1c  04 30 8d e5                                      str r3, [sp, #4]
00506a20  0f 00 00 1a                                      bne #0x506a64
00506a24  0d 30 84 e2                                      add r3, r4, #0xd
00506a28  0e 20 84 e2                                      add r2, r4, #0xe
00506a2c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506a30  01 10 53 e5                                      ldrb r1, [r3, #-1]
00506a34  02 00 53 e1                                      cmp r3, r2
00506a38  01 10 20 e0                                      eor r1, r0, r1
00506a3c  01 10 43 e5                                      strb r1, [r3, #-1]
00506a40  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506a44  00 10 21 e0                                      eor r1, r1, r0
00506a48  01 10 c2 e5                                      strb r1, [r2, #1]
00506a4c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506a50  01 20 42 e2                                      sub r2, r2, #1
00506a54  00 10 21 e0                                      eor r1, r1, r0
00506a58  01 10 43 e5                                      strb r1, [r3, #-1]
00506a5c  01 30 83 e2                                      add r3, r3, #1
00506a60  f1 ff ff 3a                                      blo #0x506a2c
00506a64  10 10 84 e2                                      add r1, r4, #0x10
00506a68  06 00 a0 e1                                      mov r0, r6
00506a6c  8a 53 ff eb                                      bl #0x4db89c
00506a70  06 00 a0 e1                                      mov r0, r6
00506a74  11 10 84 e2                                      add r1, r4, #0x11
00506a78  87 53 ff eb                                      bl #0x4db89c
00506a7c  06 00 a0 e1                                      mov r0, r6
00506a80  14 10 84 e2                                      add r1, r4, #0x14
00506a84  81 49 fd eb                                      bl #0x459090
00506a88  01 30 a0 e3                                      mov r3, #1
00506a8c  00 00 53 e3                                      cmp r3, #0
00506a90  04 30 8d e5                                      str r3, [sp, #4]
00506a94  0f 00 00 1a                                      bne #0x506ad8
00506a98  15 30 84 e2                                      add r3, r4, #0x15
00506a9c  16 20 84 e2                                      add r2, r4, #0x16
00506aa0  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506aa4  01 10 53 e5                                      ldrb r1, [r3, #-1]
00506aa8  02 00 53 e1                                      cmp r3, r2
00506aac  01 10 20 e0                                      eor r1, r0, r1
00506ab0  01 10 43 e5                                      strb r1, [r3, #-1]
00506ab4  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506ab8  00 10 21 e0                                      eor r1, r1, r0
00506abc  01 10 c2 e5                                      strb r1, [r2, #1]
00506ac0  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506ac4  01 20 42 e2                                      sub r2, r2, #1
00506ac8  00 10 21 e0                                      eor r1, r1, r0
00506acc  01 10 43 e5                                      strb r1, [r3, #-1]
00506ad0  01 30 83 e2                                      add r3, r3, #1
00506ad4  f1 ff ff 3a                                      blo #0x506aa0
00506ad8  06 00 a0 e1                                      mov r0, r6
00506adc  18 10 84 e2                                      add r1, r4, #0x18
00506ae0  6a 49 fd eb                                      bl #0x459090
00506ae4  01 30 a0 e3                                      mov r3, #1
00506ae8  00 00 53 e3                                      cmp r3, #0
00506aec  04 30 8d e5                                      str r3, [sp, #4]
00506af0  0f 00 00 1a                                      bne #0x506b34
00506af4  19 30 84 e2                                      add r3, r4, #0x19
00506af8  1a 20 84 e2                                      add r2, r4, #0x1a
00506afc  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506b00  01 10 53 e5                                      ldrb r1, [r3, #-1]
00506b04  03 00 52 e1                                      cmp r2, r3
00506b08  01 10 20 e0                                      eor r1, r0, r1
00506b0c  01 10 43 e5                                      strb r1, [r3, #-1]
00506b10  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506b14  00 10 21 e0                                      eor r1, r1, r0
00506b18  01 10 c2 e5                                      strb r1, [r2, #1]
00506b1c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506b20  01 20 42 e2                                      sub r2, r2, #1
00506b24  00 10 21 e0                                      eor r1, r1, r0
00506b28  01 10 43 e5                                      strb r1, [r3, #-1]
00506b2c  01 30 83 e2                                      add r3, r3, #1
00506b30  f1 ff ff 8a                                      bhi #0x506afc
00506b34  06 00 a0 e1                                      mov r0, r6
00506b38  1c 10 84 e2                                      add r1, r4, #0x1c
00506b3c  53 49 fd eb                                      bl #0x459090
00506b40  01 30 a0 e3                                      mov r3, #1
00506b44  00 00 53 e3                                      cmp r3, #0
00506b48  04 30 8d e5                                      str r3, [sp, #4]
00506b4c  0f 00 00 1a                                      bne #0x506b90
00506b50  1d 30 84 e2                                      add r3, r4, #0x1d
00506b54  1e 20 84 e2                                      add r2, r4, #0x1e
00506b58  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506b5c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00506b60  03 00 52 e1                                      cmp r2, r3
00506b64  01 10 20 e0                                      eor r1, r0, r1
00506b68  01 10 43 e5                                      strb r1, [r3, #-1]
00506b6c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506b70  00 10 21 e0                                      eor r1, r1, r0
00506b74  01 10 c2 e5                                      strb r1, [r2, #1]
00506b78  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506b7c  01 20 42 e2                                      sub r2, r2, #1
00506b80  00 10 21 e0                                      eor r1, r1, r0
00506b84  01 10 43 e5                                      strb r1, [r3, #-1]
00506b88  01 30 83 e2                                      add r3, r3, #1
00506b8c  f1 ff ff 8a                                      bhi #0x506b58
00506b90  20 10 84 e2                                      add r1, r4, #0x20
00506b94  06 00 a0 e1                                      mov r0, r6
00506b98  3f 53 ff eb                                      bl #0x4db89c
00506b9c  06 00 a0 e1                                      mov r0, r6
00506ba0  21 10 84 e2                                      add r1, r4, #0x21
00506ba4  3c 53 ff eb                                      bl #0x4db89c
00506ba8  06 00 a0 e1                                      mov r0, r6
00506bac  24 10 84 e2                                      add r1, r4, #0x24
00506bb0  65 53 ff eb                                      bl #0x4db94c
00506bb4  01 30 a0 e3                                      mov r3, #1
00506bb8  00 00 53 e3                                      cmp r3, #0
00506bbc  04 30 8d e5                                      str r3, [sp, #4]
00506bc0  0f 00 00 1a                                      bne #0x506c04
00506bc4  25 30 84 e2                                      add r3, r4, #0x25
00506bc8  26 20 84 e2                                      add r2, r4, #0x26
00506bcc  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506bd0  01 10 53 e5                                      ldrb r1, [r3, #-1]
00506bd4  03 00 52 e1                                      cmp r2, r3
00506bd8  01 10 20 e0                                      eor r1, r0, r1
00506bdc  01 10 43 e5                                      strb r1, [r3, #-1]
00506be0  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506be4  00 10 21 e0                                      eor r1, r1, r0
00506be8  01 10 c2 e5                                      strb r1, [r2, #1]
00506bec  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506bf0  01 20 42 e2                                      sub r2, r2, #1
00506bf4  00 10 21 e0                                      eor r1, r1, r0
00506bf8  01 10 43 e5                                      strb r1, [r3, #-1]
00506bfc  01 30 83 e2                                      add r3, r3, #1
00506c00  f1 ff ff 8a                                      bhi #0x506bcc
00506c04  06 00 a0 e1                                      mov r0, r6
00506c08  28 10 84 e2                                      add r1, r4, #0x28
00506c0c  63 61 fb eb                                      bl #0x3df1a0
00506c10  01 30 a0 e3                                      mov r3, #1
00506c14  00 00 53 e3                                      cmp r3, #0
00506c18  04 30 8d e5                                      str r3, [sp, #4]
00506c1c  0f 00 00 1a                                      bne #0x506c60
00506c20  29 30 84 e2                                      add r3, r4, #0x29
00506c24  2a 20 84 e2                                      add r2, r4, #0x2a
00506c28  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506c2c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00506c30  03 00 52 e1                                      cmp r2, r3
00506c34  01 10 20 e0                                      eor r1, r0, r1
00506c38  01 10 43 e5                                      strb r1, [r3, #-1]
00506c3c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506c40  00 10 21 e0                                      eor r1, r1, r0
00506c44  01 10 c2 e5                                      strb r1, [r2, #1]
00506c48  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506c4c  01 20 42 e2                                      sub r2, r2, #1
00506c50  00 10 21 e0                                      eor r1, r1, r0
00506c54  01 10 43 e5                                      strb r1, [r3, #-1]
00506c58  01 30 83 e2                                      add r3, r3, #1
00506c5c  f1 ff ff 8a                                      bhi #0x506c28
00506c60  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00506c64  00 00 50 e3                                      cmp r0, #0
00506c68  00 00 00 0a                                      beq #0x506c70
00506c6c  f3 25 f8 eb                                      bl #0x310440
00506c70  28 00 94 e5                                      ldr r0, [r4, #0x28]
00506c74  01 10 a0 e3                                      mov r1, #1
00506c78  00 50 a0 e3                                      mov r5, #0
00506c7c  01 00 80 e0                                      add r0, r0, r1
00506c80  39 26 f8 eb                                      bl #0x31056c
00506c84  28 20 94 e5                                      ldr r2, [r4, #0x28]
00506c88  00 10 a0 e1                                      mov r1, r0
00506c8c  2c 00 84 e5                                      str r0, [r4, #0x2c]
00506c90  05 30 a0 e1                                      mov r3, r5
00506c94  06 00 a0 e1                                      mov r0, r6
00506c98  ed 41 f8 eb                                      bl #0x317454
00506c9c  28 30 94 e5                                      ldr r3, [r4, #0x28]
00506ca0  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00506ca4  03 50 c2 e7                                      strb r5, [r2, r3]
00506ca8  08 d0 8d e2                                      add sp, sp, #8
00506cac  70 80 bd e8                                      pop {r4, r5, r6, pc}
