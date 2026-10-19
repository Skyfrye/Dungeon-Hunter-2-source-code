; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d451c, declared_size=76, range_size=76, mode=arm
; class-group: Structs::WeaponRef
; alias: _ZN7Structs9WeaponRef8finalizeEv
; demangled: Structs::WeaponRef::finalize()
; decoder-mode: arm
004d451c  10 40 2d e9                                      push {r4, lr}
004d4520  00 40 a0 e1                                      mov r4, r0
004d4524  08 00 90 e5                                      ldr r0, [r0, #8]
004d4528  00 00 50 e3                                      cmp r0, #0
004d452c  03 00 00 0a                                      beq #0x4d4540
004d4530  c2 ef f8 eb                                      bl #0x310440
004d4534  00 30 a0 e3                                      mov r3, #0
004d4538  04 30 84 e5                                      str r3, [r4, #4]
004d453c  08 30 84 e5                                      str r3, [r4, #8]
004d4540  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4544  00 00 50 e3                                      cmp r0, #0
004d4548  03 00 00 0a                                      beq #0x4d455c
004d454c  bb ef f8 eb                                      bl #0x310440
004d4550  00 30 a0 e3                                      mov r3, #0
004d4554  4c 30 84 e5                                      str r3, [r4, #0x4c]
004d4558  50 30 84 e5                                      str r3, [r4, #0x50]
004d455c  04 00 a0 e1                                      mov r0, r4
004d4560  10 40 bd e8                                      pop {r4, lr}
004d4564  e2 ff ff ea                                      b #0x4d44f4

; FUNCTION 0x004d4994, declared_size=88, range_size=88, mode=arm
; class-group: Structs::WeaponRef
; alias: _ZN7Structs9WeaponRefD1Ev
; demangled: Structs::WeaponRef::~WeaponRef()
; decoder-mode: arm
004d4994  10 40 2d e9                                      push {r4, lr}
004d4998  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d499c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d49a0  00 40 a0 e1                                      mov r4, r0
004d49a4  03 30 8f e0                                      add r3, pc, r3
004d49a8  08 00 90 e5                                      ldr r0, [r0, #8]
004d49ac  02 20 93 e7                                      ldr r2, [r3, r2]
004d49b0  00 00 50 e3                                      cmp r0, #0
004d49b4  08 20 82 e2                                      add r2, r2, #8
004d49b8  00 20 84 e5                                      str r2, [r4]
004d49bc  00 00 00 0a                                      beq #0x4d49c4
004d49c0  9e ee f8 eb                                      bl #0x310440
004d49c4  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d49c8  00 00 50 e3                                      cmp r0, #0
004d49cc  00 00 00 0a                                      beq #0x4d49d4
004d49d0  9a ee f8 eb                                      bl #0x310440
004d49d4  04 00 a0 e1                                      mov r0, r4
004d49d8  dd ff ff eb                                      bl #0x4d4954
004d49dc  04 00 a0 e1                                      mov r0, r4
004d49e0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d49e4  ec 00 4c 00 e8 06 00 00                          .byte 0xec, 0x00, 0x4c, 0x00, 0xe8, 0x06, 0x00, 0x00

; FUNCTION 0x004d49ec, declared_size=28, range_size=28, mode=arm
; class-group: Structs::WeaponRef
; alias: _ZN7Structs9WeaponRefD0Ev
; demangled: Structs::WeaponRef::~WeaponRef()
; decoder-mode: arm
004d49ec  10 40 2d e9                                      push {r4, lr}
004d49f0  00 40 a0 e1                                      mov r4, r0
004d49f4  e6 ff ff eb                                      bl #0x4d4994
004d49f8  04 00 a0 e1                                      mov r0, r4
004d49fc  8f ee f8 eb                                      bl #0x310440
004d4a00  04 00 a0 e1                                      mov r0, r4
004d4a04  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d4a08, declared_size=88, range_size=88, mode=arm
; class-group: Structs::WeaponRef
; alias: _ZN7Structs9WeaponRefD2Ev
; demangled: Structs::WeaponRef::~WeaponRef()
; decoder-mode: arm
004d4a08  10 40 2d e9                                      push {r4, lr}
004d4a0c  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d4a10  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d4a14  00 40 a0 e1                                      mov r4, r0
004d4a18  03 30 8f e0                                      add r3, pc, r3
004d4a1c  08 00 90 e5                                      ldr r0, [r0, #8]
004d4a20  02 20 93 e7                                      ldr r2, [r3, r2]
004d4a24  00 00 50 e3                                      cmp r0, #0
004d4a28  08 20 82 e2                                      add r2, r2, #8
004d4a2c  00 20 84 e5                                      str r2, [r4]
004d4a30  00 00 00 0a                                      beq #0x4d4a38
004d4a34  81 ee f8 eb                                      bl #0x310440
004d4a38  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4a3c  00 00 50 e3                                      cmp r0, #0
004d4a40  00 00 00 0a                                      beq #0x4d4a48
004d4a44  7d ee f8 eb                                      bl #0x310440
004d4a48  04 00 a0 e1                                      mov r0, r4
004d4a4c  c0 ff ff eb                                      bl #0x4d4954
004d4a50  04 00 a0 e1                                      mov r0, r4
004d4a54  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d4a58  78 00 4c 00 e8 06 00 00                          .byte 0x78, 0x00, 0x4c, 0x00, 0xe8, 0x06, 0x00, 0x00

; FUNCTION 0x004f7b18, declared_size=2216, range_size=2216, mode=arm
; class-group: Structs::WeaponRef
; alias: _ZN7Structs9WeaponRef4readEP11IStreamBase
; demangled: Structs::WeaponRef::read(IStreamBase*)
; decoder-mode: arm
004f7b18  70 40 2d e9                                      push {r4, r5, r6, lr}
004f7b1c  00 40 a0 e1                                      mov r4, r0
004f7b20  08 d0 4d e2                                      sub sp, sp, #8
004f7b24  01 50 a0 e1                                      mov r5, r1
004f7b28  53 d2 ff eb                                      bl #0x4ec47c
004f7b2c  05 00 a0 e1                                      mov r0, r5
004f7b30  44 10 84 e2                                      add r1, r4, #0x44
004f7b34  55 85 fd eb                                      bl #0x459090
004f7b38  01 30 a0 e3                                      mov r3, #1
004f7b3c  00 00 53 e3                                      cmp r3, #0
004f7b40  04 30 8d e5                                      str r3, [sp, #4]
004f7b44  0f 00 00 1a                                      bne #0x4f7b88
004f7b48  45 30 84 e2                                      add r3, r4, #0x45
004f7b4c  46 20 84 e2                                      add r2, r4, #0x46
004f7b50  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7b54  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f7b58  02 00 53 e1                                      cmp r3, r2
004f7b5c  01 10 20 e0                                      eor r1, r0, r1
004f7b60  01 10 43 e5                                      strb r1, [r3, #-1]
004f7b64  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7b68  00 10 21 e0                                      eor r1, r1, r0
004f7b6c  01 10 c2 e5                                      strb r1, [r2, #1]
004f7b70  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f7b74  01 20 42 e2                                      sub r2, r2, #1
004f7b78  00 10 21 e0                                      eor r1, r1, r0
004f7b7c  01 10 43 e5                                      strb r1, [r3, #-1]
004f7b80  01 30 83 e2                                      add r3, r3, #1
004f7b84  f1 ff ff 3a                                      blo #0x4f7b50
004f7b88  05 00 a0 e1                                      mov r0, r5
004f7b8c  48 10 84 e2                                      add r1, r4, #0x48
004f7b90  3e 85 fd eb                                      bl #0x459090
004f7b94  01 30 a0 e3                                      mov r3, #1
004f7b98  00 00 53 e3                                      cmp r3, #0
004f7b9c  04 30 8d e5                                      str r3, [sp, #4]
004f7ba0  0f 00 00 1a                                      bne #0x4f7be4
004f7ba4  49 30 84 e2                                      add r3, r4, #0x49
004f7ba8  4a 20 84 e2                                      add r2, r4, #0x4a
004f7bac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7bb0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f7bb4  02 00 53 e1                                      cmp r3, r2
004f7bb8  01 10 20 e0                                      eor r1, r0, r1
004f7bbc  01 10 43 e5                                      strb r1, [r3, #-1]
004f7bc0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7bc4  00 10 21 e0                                      eor r1, r1, r0
004f7bc8  01 10 c2 e5                                      strb r1, [r2, #1]
004f7bcc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f7bd0  01 20 42 e2                                      sub r2, r2, #1
004f7bd4  00 10 21 e0                                      eor r1, r1, r0
004f7bd8  01 10 43 e5                                      strb r1, [r3, #-1]
004f7bdc  01 30 83 e2                                      add r3, r3, #1
004f7be0  f1 ff ff 3a                                      blo #0x4f7bac
004f7be4  05 00 a0 e1                                      mov r0, r5
004f7be8  4c 10 84 e2                                      add r1, r4, #0x4c
004f7bec  6b 9d fb eb                                      bl #0x3df1a0
004f7bf0  01 30 a0 e3                                      mov r3, #1
004f7bf4  00 00 53 e3                                      cmp r3, #0
004f7bf8  04 30 8d e5                                      str r3, [sp, #4]
004f7bfc  0f 00 00 1a                                      bne #0x4f7c40
004f7c00  4d 30 84 e2                                      add r3, r4, #0x4d
004f7c04  4e 20 84 e2                                      add r2, r4, #0x4e
004f7c08  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7c0c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f7c10  02 00 53 e1                                      cmp r3, r2
004f7c14  01 10 20 e0                                      eor r1, r0, r1
004f7c18  01 10 43 e5                                      strb r1, [r3, #-1]
004f7c1c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7c20  00 10 21 e0                                      eor r1, r1, r0
004f7c24  01 10 c2 e5                                      strb r1, [r2, #1]
004f7c28  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f7c2c  01 20 42 e2                                      sub r2, r2, #1
004f7c30  00 10 21 e0                                      eor r1, r1, r0
004f7c34  01 10 43 e5                                      strb r1, [r3, #-1]
004f7c38  01 30 83 e2                                      add r3, r3, #1
004f7c3c  f1 ff ff 3a                                      blo #0x4f7c08
004f7c40  50 00 94 e5                                      ldr r0, [r4, #0x50]
004f7c44  00 00 50 e3                                      cmp r0, #0
004f7c48  00 00 00 0a                                      beq #0x4f7c50
004f7c4c  fb 61 f8 eb                                      bl #0x310440
004f7c50  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
004f7c54  01 10 a0 e3                                      mov r1, #1
004f7c58  00 60 a0 e3                                      mov r6, #0
004f7c5c  01 00 80 e0                                      add r0, r0, r1
004f7c60  41 62 f8 eb                                      bl #0x31056c
004f7c64  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
004f7c68  00 10 a0 e1                                      mov r1, r0
004f7c6c  50 00 84 e5                                      str r0, [r4, #0x50]
004f7c70  06 30 a0 e1                                      mov r3, r6
004f7c74  05 00 a0 e1                                      mov r0, r5
004f7c78  f5 7d f8 eb                                      bl #0x317454
004f7c7c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
004f7c80  50 20 94 e5                                      ldr r2, [r4, #0x50]
004f7c84  05 00 a0 e1                                      mov r0, r5
004f7c88  54 10 84 e2                                      add r1, r4, #0x54
004f7c8c  03 60 c2 e7                                      strb r6, [r2, r3]
004f7c90  fe 84 fd eb                                      bl #0x459090
004f7c94  01 30 a0 e3                                      mov r3, #1
004f7c98  06 00 53 e1                                      cmp r3, r6
004f7c9c  04 30 8d e5                                      str r3, [sp, #4]
004f7ca0  0f 00 00 1a                                      bne #0x4f7ce4
004f7ca4  55 30 84 e2                                      add r3, r4, #0x55
004f7ca8  56 20 84 e2                                      add r2, r4, #0x56
004f7cac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7cb0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f7cb4  02 00 53 e1                                      cmp r3, r2
004f7cb8  01 10 20 e0                                      eor r1, r0, r1
004f7cbc  01 10 43 e5                                      strb r1, [r3, #-1]
004f7cc0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7cc4  00 10 21 e0                                      eor r1, r1, r0
004f7cc8  01 10 c2 e5                                      strb r1, [r2, #1]
004f7ccc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f7cd0  01 20 42 e2                                      sub r2, r2, #1
004f7cd4  00 10 21 e0                                      eor r1, r1, r0
004f7cd8  01 10 43 e5                                      strb r1, [r3, #-1]
004f7cdc  01 30 83 e2                                      add r3, r3, #1
004f7ce0  f1 ff ff 3a                                      blo #0x4f7cac
004f7ce4  05 00 a0 e1                                      mov r0, r5
004f7ce8  58 10 84 e2                                      add r1, r4, #0x58
004f7cec  e7 84 fd eb                                      bl #0x459090
004f7cf0  01 30 a0 e3                                      mov r3, #1
004f7cf4  00 00 53 e3                                      cmp r3, #0
004f7cf8  04 30 8d e5                                      str r3, [sp, #4]
004f7cfc  0f 00 00 1a                                      bne #0x4f7d40
004f7d00  59 30 84 e2                                      add r3, r4, #0x59
004f7d04  5a 20 84 e2                                      add r2, r4, #0x5a
004f7d08  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7d0c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f7d10  02 00 53 e1                                      cmp r3, r2
004f7d14  01 10 20 e0                                      eor r1, r0, r1
004f7d18  01 10 43 e5                                      strb r1, [r3, #-1]
004f7d1c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7d20  00 10 21 e0                                      eor r1, r1, r0
004f7d24  01 10 c2 e5                                      strb r1, [r2, #1]
004f7d28  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f7d2c  01 20 42 e2                                      sub r2, r2, #1
004f7d30  00 10 21 e0                                      eor r1, r1, r0
004f7d34  01 10 43 e5                                      strb r1, [r3, #-1]
004f7d38  01 30 83 e2                                      add r3, r3, #1
004f7d3c  f1 ff ff 3a                                      blo #0x4f7d08
004f7d40  05 00 a0 e1                                      mov r0, r5
004f7d44  5c 10 84 e2                                      add r1, r4, #0x5c
004f7d48  d0 84 fd eb                                      bl #0x459090
004f7d4c  01 30 a0 e3                                      mov r3, #1
004f7d50  00 00 53 e3                                      cmp r3, #0
004f7d54  04 30 8d e5                                      str r3, [sp, #4]
004f7d58  0f 00 00 1a                                      bne #0x4f7d9c
004f7d5c  5d 30 84 e2                                      add r3, r4, #0x5d
004f7d60  5e 20 84 e2                                      add r2, r4, #0x5e
004f7d64  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7d68  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f7d6c  02 00 53 e1                                      cmp r3, r2
004f7d70  01 10 20 e0                                      eor r1, r0, r1
004f7d74  01 10 43 e5                                      strb r1, [r3, #-1]
004f7d78  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7d7c  00 10 21 e0                                      eor r1, r1, r0
004f7d80  01 10 c2 e5                                      strb r1, [r2, #1]
004f7d84  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f7d88  01 20 42 e2                                      sub r2, r2, #1
004f7d8c  00 10 21 e0                                      eor r1, r1, r0
004f7d90  01 10 43 e5                                      strb r1, [r3, #-1]
004f7d94  01 30 83 e2                                      add r3, r3, #1
004f7d98  f1 ff ff 3a                                      blo #0x4f7d64
004f7d9c  05 00 a0 e1                                      mov r0, r5
004f7da0  60 10 84 e2                                      add r1, r4, #0x60
004f7da4  b9 84 fd eb                                      bl #0x459090
004f7da8  01 30 a0 e3                                      mov r3, #1
004f7dac  00 00 53 e3                                      cmp r3, #0
004f7db0  04 30 8d e5                                      str r3, [sp, #4]
004f7db4  0f 00 00 1a                                      bne #0x4f7df8
004f7db8  61 30 84 e2                                      add r3, r4, #0x61
004f7dbc  62 20 84 e2                                      add r2, r4, #0x62
004f7dc0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7dc4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f7dc8  02 00 53 e1                                      cmp r3, r2
004f7dcc  01 10 20 e0                                      eor r1, r0, r1
004f7dd0  01 10 43 e5                                      strb r1, [r3, #-1]
004f7dd4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7dd8  00 10 21 e0                                      eor r1, r1, r0
004f7ddc  01 10 c2 e5                                      strb r1, [r2, #1]
004f7de0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f7de4  01 20 42 e2                                      sub r2, r2, #1
004f7de8  00 10 21 e0                                      eor r1, r1, r0
004f7dec  01 10 43 e5                                      strb r1, [r3, #-1]
004f7df0  01 30 83 e2                                      add r3, r3, #1
004f7df4  f1 ff ff 3a                                      blo #0x4f7dc0
004f7df8  05 00 a0 e1                                      mov r0, r5
004f7dfc  64 10 84 e2                                      add r1, r4, #0x64
004f7e00  a2 84 fd eb                                      bl #0x459090
004f7e04  01 30 a0 e3                                      mov r3, #1
004f7e08  00 00 53 e3                                      cmp r3, #0
004f7e0c  04 30 8d e5                                      str r3, [sp, #4]
004f7e10  0f 00 00 1a                                      bne #0x4f7e54
004f7e14  65 30 84 e2                                      add r3, r4, #0x65
004f7e18  66 20 84 e2                                      add r2, r4, #0x66
004f7e1c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7e20  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f7e24  02 00 53 e1                                      cmp r3, r2
004f7e28  01 10 20 e0                                      eor r1, r0, r1
004f7e2c  01 10 43 e5                                      strb r1, [r3, #-1]
004f7e30  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7e34  00 10 21 e0                                      eor r1, r1, r0
004f7e38  01 10 c2 e5                                      strb r1, [r2, #1]
004f7e3c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f7e40  01 20 42 e2                                      sub r2, r2, #1
004f7e44  00 10 21 e0                                      eor r1, r1, r0
004f7e48  01 10 43 e5                                      strb r1, [r3, #-1]
004f7e4c  01 30 83 e2                                      add r3, r3, #1
004f7e50  f1 ff ff 3a                                      blo #0x4f7e1c
004f7e54  05 00 a0 e1                                      mov r0, r5
004f7e58  68 10 84 e2                                      add r1, r4, #0x68
004f7e5c  8b 84 fd eb                                      bl #0x459090
004f7e60  01 30 a0 e3                                      mov r3, #1
004f7e64  00 00 53 e3                                      cmp r3, #0
004f7e68  04 30 8d e5                                      str r3, [sp, #4]
004f7e6c  0f 00 00 1a                                      bne #0x4f7eb0
004f7e70  69 30 84 e2                                      add r3, r4, #0x69
004f7e74  6a 20 84 e2                                      add r2, r4, #0x6a
004f7e78  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7e7c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f7e80  02 00 53 e1                                      cmp r3, r2
004f7e84  01 10 20 e0                                      eor r1, r0, r1
004f7e88  01 10 43 e5                                      strb r1, [r3, #-1]
004f7e8c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7e90  00 10 21 e0                                      eor r1, r1, r0
004f7e94  01 10 c2 e5                                      strb r1, [r2, #1]
004f7e98  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f7e9c  01 20 42 e2                                      sub r2, r2, #1
004f7ea0  00 10 21 e0                                      eor r1, r1, r0
004f7ea4  01 10 43 e5                                      strb r1, [r3, #-1]
004f7ea8  01 30 83 e2                                      add r3, r3, #1
004f7eac  f1 ff ff 3a                                      blo #0x4f7e78
004f7eb0  05 00 a0 e1                                      mov r0, r5
004f7eb4  6c 10 84 e2                                      add r1, r4, #0x6c
004f7eb8  74 84 fd eb                                      bl #0x459090
004f7ebc  01 30 a0 e3                                      mov r3, #1
004f7ec0  00 00 53 e3                                      cmp r3, #0
004f7ec4  04 30 8d e5                                      str r3, [sp, #4]
004f7ec8  0f 00 00 1a                                      bne #0x4f7f0c
004f7ecc  6d 30 84 e2                                      add r3, r4, #0x6d
004f7ed0  6e 20 84 e2                                      add r2, r4, #0x6e
004f7ed4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7ed8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f7edc  02 00 53 e1                                      cmp r3, r2
004f7ee0  01 10 20 e0                                      eor r1, r0, r1
004f7ee4  01 10 43 e5                                      strb r1, [r3, #-1]
004f7ee8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7eec  00 10 21 e0                                      eor r1, r1, r0
004f7ef0  01 10 c2 e5                                      strb r1, [r2, #1]
004f7ef4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f7ef8  01 20 42 e2                                      sub r2, r2, #1
004f7efc  00 10 21 e0                                      eor r1, r1, r0
004f7f00  01 10 43 e5                                      strb r1, [r3, #-1]
004f7f04  01 30 83 e2                                      add r3, r3, #1
004f7f08  f1 ff ff 3a                                      blo #0x4f7ed4
004f7f0c  05 00 a0 e1                                      mov r0, r5
004f7f10  70 10 84 e2                                      add r1, r4, #0x70
004f7f14  5d 84 fd eb                                      bl #0x459090
004f7f18  01 30 a0 e3                                      mov r3, #1
004f7f1c  00 00 53 e3                                      cmp r3, #0
004f7f20  04 30 8d e5                                      str r3, [sp, #4]
004f7f24  0f 00 00 1a                                      bne #0x4f7f68
004f7f28  71 30 84 e2                                      add r3, r4, #0x71
004f7f2c  72 20 84 e2                                      add r2, r4, #0x72
004f7f30  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7f34  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f7f38  02 00 53 e1                                      cmp r3, r2
004f7f3c  01 10 20 e0                                      eor r1, r0, r1
004f7f40  01 10 43 e5                                      strb r1, [r3, #-1]
004f7f44  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7f48  00 10 21 e0                                      eor r1, r1, r0
004f7f4c  01 10 c2 e5                                      strb r1, [r2, #1]
004f7f50  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f7f54  01 20 42 e2                                      sub r2, r2, #1
004f7f58  00 10 21 e0                                      eor r1, r1, r0
004f7f5c  01 10 43 e5                                      strb r1, [r3, #-1]
004f7f60  01 30 83 e2                                      add r3, r3, #1
004f7f64  f1 ff ff 3a                                      blo #0x4f7f30
004f7f68  05 00 a0 e1                                      mov r0, r5
004f7f6c  74 10 84 e2                                      add r1, r4, #0x74
004f7f70  46 84 fd eb                                      bl #0x459090
004f7f74  01 30 a0 e3                                      mov r3, #1
004f7f78  00 00 53 e3                                      cmp r3, #0
004f7f7c  04 30 8d e5                                      str r3, [sp, #4]
004f7f80  0f 00 00 1a                                      bne #0x4f7fc4
004f7f84  75 30 84 e2                                      add r3, r4, #0x75
004f7f88  76 20 84 e2                                      add r2, r4, #0x76
004f7f8c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7f90  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f7f94  02 00 53 e1                                      cmp r3, r2
004f7f98  01 10 20 e0                                      eor r1, r0, r1
004f7f9c  01 10 43 e5                                      strb r1, [r3, #-1]
004f7fa0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7fa4  00 10 21 e0                                      eor r1, r1, r0
004f7fa8  01 10 c2 e5                                      strb r1, [r2, #1]
004f7fac  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f7fb0  01 20 42 e2                                      sub r2, r2, #1
004f7fb4  00 10 21 e0                                      eor r1, r1, r0
004f7fb8  01 10 43 e5                                      strb r1, [r3, #-1]
004f7fbc  01 30 83 e2                                      add r3, r3, #1
004f7fc0  f1 ff ff 3a                                      blo #0x4f7f8c
004f7fc4  05 00 a0 e1                                      mov r0, r5
004f7fc8  78 10 84 e2                                      add r1, r4, #0x78
004f7fcc  2f 84 fd eb                                      bl #0x459090
004f7fd0  01 30 a0 e3                                      mov r3, #1
004f7fd4  00 00 53 e3                                      cmp r3, #0
004f7fd8  04 30 8d e5                                      str r3, [sp, #4]
004f7fdc  0f 00 00 1a                                      bne #0x4f8020
004f7fe0  79 30 84 e2                                      add r3, r4, #0x79
004f7fe4  7a 20 84 e2                                      add r2, r4, #0x7a
004f7fe8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f7fec  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f7ff0  02 00 53 e1                                      cmp r3, r2
004f7ff4  01 10 20 e0                                      eor r1, r0, r1
004f7ff8  01 10 43 e5                                      strb r1, [r3, #-1]
004f7ffc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8000  00 10 21 e0                                      eor r1, r1, r0
004f8004  01 10 c2 e5                                      strb r1, [r2, #1]
004f8008  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f800c  01 20 42 e2                                      sub r2, r2, #1
004f8010  00 10 21 e0                                      eor r1, r1, r0
004f8014  01 10 43 e5                                      strb r1, [r3, #-1]
004f8018  01 30 83 e2                                      add r3, r3, #1
004f801c  f1 ff ff 3a                                      blo #0x4f7fe8
004f8020  05 00 a0 e1                                      mov r0, r5
004f8024  7c 10 84 e2                                      add r1, r4, #0x7c
004f8028  18 84 fd eb                                      bl #0x459090
004f802c  01 30 a0 e3                                      mov r3, #1
004f8030  00 00 53 e3                                      cmp r3, #0
004f8034  04 30 8d e5                                      str r3, [sp, #4]
004f8038  0f 00 00 1a                                      bne #0x4f807c
004f803c  7d 30 84 e2                                      add r3, r4, #0x7d
004f8040  7e 20 84 e2                                      add r2, r4, #0x7e
004f8044  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8048  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f804c  02 00 53 e1                                      cmp r3, r2
004f8050  01 10 20 e0                                      eor r1, r0, r1
004f8054  01 10 43 e5                                      strb r1, [r3, #-1]
004f8058  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f805c  00 10 21 e0                                      eor r1, r1, r0
004f8060  01 10 c2 e5                                      strb r1, [r2, #1]
004f8064  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8068  01 20 42 e2                                      sub r2, r2, #1
004f806c  00 10 21 e0                                      eor r1, r1, r0
004f8070  01 10 43 e5                                      strb r1, [r3, #-1]
004f8074  01 30 83 e2                                      add r3, r3, #1
004f8078  f1 ff ff 3a                                      blo #0x4f8044
004f807c  05 00 a0 e1                                      mov r0, r5
004f8080  80 10 84 e2                                      add r1, r4, #0x80
004f8084  01 84 fd eb                                      bl #0x459090
004f8088  01 30 a0 e3                                      mov r3, #1
004f808c  00 00 53 e3                                      cmp r3, #0
004f8090  04 30 8d e5                                      str r3, [sp, #4]
004f8094  0f 00 00 1a                                      bne #0x4f80d8
004f8098  81 30 84 e2                                      add r3, r4, #0x81
004f809c  82 20 84 e2                                      add r2, r4, #0x82
004f80a0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f80a4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f80a8  02 00 53 e1                                      cmp r3, r2
004f80ac  01 10 20 e0                                      eor r1, r0, r1
004f80b0  01 10 43 e5                                      strb r1, [r3, #-1]
004f80b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f80b8  00 10 21 e0                                      eor r1, r1, r0
004f80bc  01 10 c2 e5                                      strb r1, [r2, #1]
004f80c0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f80c4  01 20 42 e2                                      sub r2, r2, #1
004f80c8  00 10 21 e0                                      eor r1, r1, r0
004f80cc  01 10 43 e5                                      strb r1, [r3, #-1]
004f80d0  01 30 83 e2                                      add r3, r3, #1
004f80d4  f1 ff ff 3a                                      blo #0x4f80a0
004f80d8  05 00 a0 e1                                      mov r0, r5
004f80dc  84 10 84 e2                                      add r1, r4, #0x84
004f80e0  ea 83 fd eb                                      bl #0x459090
004f80e4  01 30 a0 e3                                      mov r3, #1
004f80e8  00 00 53 e3                                      cmp r3, #0
004f80ec  04 30 8d e5                                      str r3, [sp, #4]
004f80f0  0f 00 00 1a                                      bne #0x4f8134
004f80f4  85 30 84 e2                                      add r3, r4, #0x85
004f80f8  86 20 84 e2                                      add r2, r4, #0x86
004f80fc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8100  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8104  02 00 53 e1                                      cmp r3, r2
004f8108  01 10 20 e0                                      eor r1, r0, r1
004f810c  01 10 43 e5                                      strb r1, [r3, #-1]
004f8110  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8114  00 10 21 e0                                      eor r1, r1, r0
004f8118  01 10 c2 e5                                      strb r1, [r2, #1]
004f811c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8120  01 20 42 e2                                      sub r2, r2, #1
004f8124  00 10 21 e0                                      eor r1, r1, r0
004f8128  01 10 43 e5                                      strb r1, [r3, #-1]
004f812c  01 30 83 e2                                      add r3, r3, #1
004f8130  f1 ff ff 3a                                      blo #0x4f80fc
004f8134  05 00 a0 e1                                      mov r0, r5
004f8138  88 10 84 e2                                      add r1, r4, #0x88
004f813c  d3 83 fd eb                                      bl #0x459090
004f8140  01 30 a0 e3                                      mov r3, #1
004f8144  00 00 53 e3                                      cmp r3, #0
004f8148  04 30 8d e5                                      str r3, [sp, #4]
004f814c  0f 00 00 1a                                      bne #0x4f8190
004f8150  89 30 84 e2                                      add r3, r4, #0x89
004f8154  8a 20 84 e2                                      add r2, r4, #0x8a
004f8158  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f815c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8160  02 00 53 e1                                      cmp r3, r2
004f8164  01 10 20 e0                                      eor r1, r0, r1
004f8168  01 10 43 e5                                      strb r1, [r3, #-1]
004f816c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8170  00 10 21 e0                                      eor r1, r1, r0
004f8174  01 10 c2 e5                                      strb r1, [r2, #1]
004f8178  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f817c  01 20 42 e2                                      sub r2, r2, #1
004f8180  00 10 21 e0                                      eor r1, r1, r0
004f8184  01 10 43 e5                                      strb r1, [r3, #-1]
004f8188  01 30 83 e2                                      add r3, r3, #1
004f818c  f1 ff ff 3a                                      blo #0x4f8158
004f8190  05 00 a0 e1                                      mov r0, r5
004f8194  8c 10 84 e2                                      add r1, r4, #0x8c
004f8198  bc 83 fd eb                                      bl #0x459090
004f819c  01 30 a0 e3                                      mov r3, #1
004f81a0  00 00 53 e3                                      cmp r3, #0
004f81a4  04 30 8d e5                                      str r3, [sp, #4]
004f81a8  0f 00 00 1a                                      bne #0x4f81ec
004f81ac  8d 30 84 e2                                      add r3, r4, #0x8d
004f81b0  8e 20 84 e2                                      add r2, r4, #0x8e
004f81b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f81b8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f81bc  02 00 53 e1                                      cmp r3, r2
004f81c0  01 10 20 e0                                      eor r1, r0, r1
004f81c4  01 10 43 e5                                      strb r1, [r3, #-1]
004f81c8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f81cc  00 10 21 e0                                      eor r1, r1, r0
004f81d0  01 10 c2 e5                                      strb r1, [r2, #1]
004f81d4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f81d8  01 20 42 e2                                      sub r2, r2, #1
004f81dc  00 10 21 e0                                      eor r1, r1, r0
004f81e0  01 10 43 e5                                      strb r1, [r3, #-1]
004f81e4  01 30 83 e2                                      add r3, r3, #1
004f81e8  f1 ff ff 3a                                      blo #0x4f81b4
004f81ec  05 00 a0 e1                                      mov r0, r5
004f81f0  90 10 84 e2                                      add r1, r4, #0x90
004f81f4  a5 83 fd eb                                      bl #0x459090
004f81f8  01 30 a0 e3                                      mov r3, #1
004f81fc  00 00 53 e3                                      cmp r3, #0
004f8200  04 30 8d e5                                      str r3, [sp, #4]
004f8204  0f 00 00 1a                                      bne #0x4f8248
004f8208  91 30 84 e2                                      add r3, r4, #0x91
004f820c  92 20 84 e2                                      add r2, r4, #0x92
004f8210  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8214  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8218  02 00 53 e1                                      cmp r3, r2
004f821c  01 10 20 e0                                      eor r1, r0, r1
004f8220  01 10 43 e5                                      strb r1, [r3, #-1]
004f8224  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8228  00 10 21 e0                                      eor r1, r1, r0
004f822c  01 10 c2 e5                                      strb r1, [r2, #1]
004f8230  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8234  01 20 42 e2                                      sub r2, r2, #1
004f8238  00 10 21 e0                                      eor r1, r1, r0
004f823c  01 10 43 e5                                      strb r1, [r3, #-1]
004f8240  01 30 83 e2                                      add r3, r3, #1
004f8244  f1 ff ff 3a                                      blo #0x4f8210
004f8248  05 00 a0 e1                                      mov r0, r5
004f824c  94 10 84 e2                                      add r1, r4, #0x94
004f8250  8e 83 fd eb                                      bl #0x459090
004f8254  01 30 a0 e3                                      mov r3, #1
004f8258  00 00 53 e3                                      cmp r3, #0
004f825c  04 30 8d e5                                      str r3, [sp, #4]
004f8260  0f 00 00 1a                                      bne #0x4f82a4
004f8264  95 30 84 e2                                      add r3, r4, #0x95
004f8268  96 20 84 e2                                      add r2, r4, #0x96
004f826c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8270  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8274  02 00 53 e1                                      cmp r3, r2
004f8278  01 10 20 e0                                      eor r1, r0, r1
004f827c  01 10 43 e5                                      strb r1, [r3, #-1]
004f8280  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8284  00 10 21 e0                                      eor r1, r1, r0
004f8288  01 10 c2 e5                                      strb r1, [r2, #1]
004f828c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8290  01 20 42 e2                                      sub r2, r2, #1
004f8294  00 10 21 e0                                      eor r1, r1, r0
004f8298  01 10 43 e5                                      strb r1, [r3, #-1]
004f829c  01 30 83 e2                                      add r3, r3, #1
004f82a0  f1 ff ff 3a                                      blo #0x4f826c
004f82a4  05 00 a0 e1                                      mov r0, r5
004f82a8  98 10 84 e2                                      add r1, r4, #0x98
004f82ac  77 83 fd eb                                      bl #0x459090
004f82b0  01 30 a0 e3                                      mov r3, #1
004f82b4  00 00 53 e3                                      cmp r3, #0
004f82b8  04 30 8d e5                                      str r3, [sp, #4]
004f82bc  0f 00 00 1a                                      bne #0x4f8300
004f82c0  99 30 84 e2                                      add r3, r4, #0x99
004f82c4  9a 20 84 e2                                      add r2, r4, #0x9a
004f82c8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f82cc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f82d0  02 00 53 e1                                      cmp r3, r2
004f82d4  01 10 20 e0                                      eor r1, r0, r1
004f82d8  01 10 43 e5                                      strb r1, [r3, #-1]
004f82dc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f82e0  00 10 21 e0                                      eor r1, r1, r0
004f82e4  01 10 c2 e5                                      strb r1, [r2, #1]
004f82e8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f82ec  01 20 42 e2                                      sub r2, r2, #1
004f82f0  00 10 21 e0                                      eor r1, r1, r0
004f82f4  01 10 43 e5                                      strb r1, [r3, #-1]
004f82f8  01 30 83 e2                                      add r3, r3, #1
004f82fc  f1 ff ff 3a                                      blo #0x4f82c8
004f8300  05 00 a0 e1                                      mov r0, r5
004f8304  9c 10 84 e2                                      add r1, r4, #0x9c
004f8308  60 83 fd eb                                      bl #0x459090
004f830c  01 30 a0 e3                                      mov r3, #1
004f8310  00 00 53 e3                                      cmp r3, #0
004f8314  04 30 8d e5                                      str r3, [sp, #4]
004f8318  0f 00 00 1a                                      bne #0x4f835c
004f831c  9d 30 84 e2                                      add r3, r4, #0x9d
004f8320  9e 20 84 e2                                      add r2, r4, #0x9e
004f8324  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8328  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f832c  02 00 53 e1                                      cmp r3, r2
004f8330  01 10 20 e0                                      eor r1, r0, r1
004f8334  01 10 43 e5                                      strb r1, [r3, #-1]
004f8338  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f833c  00 10 21 e0                                      eor r1, r1, r0
004f8340  01 10 c2 e5                                      strb r1, [r2, #1]
004f8344  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8348  01 20 42 e2                                      sub r2, r2, #1
004f834c  00 10 21 e0                                      eor r1, r1, r0
004f8350  01 10 43 e5                                      strb r1, [r3, #-1]
004f8354  01 30 83 e2                                      add r3, r3, #1
004f8358  f1 ff ff 3a                                      blo #0x4f8324
004f835c  05 00 a0 e1                                      mov r0, r5
004f8360  a0 10 84 e2                                      add r1, r4, #0xa0
004f8364  49 83 fd eb                                      bl #0x459090
004f8368  01 30 a0 e3                                      mov r3, #1
004f836c  00 00 53 e3                                      cmp r3, #0
004f8370  04 30 8d e5                                      str r3, [sp, #4]
004f8374  0f 00 00 1a                                      bne #0x4f83b8
004f8378  a2 30 84 e2                                      add r3, r4, #0xa2
004f837c  a1 40 84 e2                                      add r4, r4, #0xa1
004f8380  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f8384  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f8388  03 00 54 e1                                      cmp r4, r3
004f838c  02 20 21 e0                                      eor r2, r1, r2
004f8390  01 20 44 e5                                      strb r2, [r4, #-1]
004f8394  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f8398  01 20 22 e0                                      eor r2, r2, r1
004f839c  01 20 c3 e5                                      strb r2, [r3, #1]
004f83a0  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f83a4  01 30 43 e2                                      sub r3, r3, #1
004f83a8  01 20 22 e0                                      eor r2, r2, r1
004f83ac  01 20 44 e5                                      strb r2, [r4, #-1]
004f83b0  01 40 84 e2                                      add r4, r4, #1
004f83b4  f1 ff ff 3a                                      blo #0x4f8380
004f83b8  08 d0 8d e2                                      add sp, sp, #8
004f83bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
