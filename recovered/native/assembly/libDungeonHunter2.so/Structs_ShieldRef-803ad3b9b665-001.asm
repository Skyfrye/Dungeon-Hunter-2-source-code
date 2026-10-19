; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d45b4, declared_size=76, range_size=76, mode=arm
; class-group: Structs::ShieldRef
; alias: _ZN7Structs9ShieldRef8finalizeEv
; demangled: Structs::ShieldRef::finalize()
; decoder-mode: arm
004d45b4  10 40 2d e9                                      push {r4, lr}
004d45b8  00 40 a0 e1                                      mov r4, r0
004d45bc  08 00 90 e5                                      ldr r0, [r0, #8]
004d45c0  00 00 50 e3                                      cmp r0, #0
004d45c4  03 00 00 0a                                      beq #0x4d45d8
004d45c8  9c ef f8 eb                                      bl #0x310440
004d45cc  00 30 a0 e3                                      mov r3, #0
004d45d0  04 30 84 e5                                      str r3, [r4, #4]
004d45d4  08 30 84 e5                                      str r3, [r4, #8]
004d45d8  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d45dc  00 00 50 e3                                      cmp r0, #0
004d45e0  03 00 00 0a                                      beq #0x4d45f4
004d45e4  95 ef f8 eb                                      bl #0x310440
004d45e8  00 30 a0 e3                                      mov r3, #0
004d45ec  4c 30 84 e5                                      str r3, [r4, #0x4c]
004d45f0  50 30 84 e5                                      str r3, [r4, #0x50]
004d45f4  04 00 a0 e1                                      mov r0, r4
004d45f8  10 40 bd e8                                      pop {r4, lr}
004d45fc  bc ff ff ea                                      b #0x4d44f4

; FUNCTION 0x004d4b2c, declared_size=88, range_size=88, mode=arm
; class-group: Structs::ShieldRef
; alias: _ZN7Structs9ShieldRefD1Ev
; demangled: Structs::ShieldRef::~ShieldRef()
; decoder-mode: arm
004d4b2c  10 40 2d e9                                      push {r4, lr}
004d4b30  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d4b34  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d4b38  00 40 a0 e1                                      mov r4, r0
004d4b3c  03 30 8f e0                                      add r3, pc, r3
004d4b40  08 00 90 e5                                      ldr r0, [r0, #8]
004d4b44  02 20 93 e7                                      ldr r2, [r3, r2]
004d4b48  00 00 50 e3                                      cmp r0, #0
004d4b4c  08 20 82 e2                                      add r2, r2, #8
004d4b50  00 20 84 e5                                      str r2, [r4]
004d4b54  00 00 00 0a                                      beq #0x4d4b5c
004d4b58  38 ee f8 eb                                      bl #0x310440
004d4b5c  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4b60  00 00 50 e3                                      cmp r0, #0
004d4b64  00 00 00 0a                                      beq #0x4d4b6c
004d4b68  34 ee f8 eb                                      bl #0x310440
004d4b6c  04 00 a0 e1                                      mov r0, r4
004d4b70  77 ff ff eb                                      bl #0x4d4954
004d4b74  04 00 a0 e1                                      mov r0, r4
004d4b78  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d4b7c  54 ff 4b 00 a4 32 00 00                          .byte 0x54, 0xff, 0x4b, 0x00, 0xa4, 0x32, 0x00, 0x00

; FUNCTION 0x004d4b84, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ShieldRef
; alias: _ZN7Structs9ShieldRefD0Ev
; demangled: Structs::ShieldRef::~ShieldRef()
; decoder-mode: arm
004d4b84  10 40 2d e9                                      push {r4, lr}
004d4b88  00 40 a0 e1                                      mov r4, r0
004d4b8c  e6 ff ff eb                                      bl #0x4d4b2c
004d4b90  04 00 a0 e1                                      mov r0, r4
004d4b94  29 ee f8 eb                                      bl #0x310440
004d4b98  04 00 a0 e1                                      mov r0, r4
004d4b9c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d4ba0, declared_size=88, range_size=88, mode=arm
; class-group: Structs::ShieldRef
; alias: _ZN7Structs9ShieldRefD2Ev
; demangled: Structs::ShieldRef::~ShieldRef()
; decoder-mode: arm
004d4ba0  10 40 2d e9                                      push {r4, lr}
004d4ba4  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d4ba8  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d4bac  00 40 a0 e1                                      mov r4, r0
004d4bb0  03 30 8f e0                                      add r3, pc, r3
004d4bb4  08 00 90 e5                                      ldr r0, [r0, #8]
004d4bb8  02 20 93 e7                                      ldr r2, [r3, r2]
004d4bbc  00 00 50 e3                                      cmp r0, #0
004d4bc0  08 20 82 e2                                      add r2, r2, #8
004d4bc4  00 20 84 e5                                      str r2, [r4]
004d4bc8  00 00 00 0a                                      beq #0x4d4bd0
004d4bcc  1b ee f8 eb                                      bl #0x310440
004d4bd0  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4bd4  00 00 50 e3                                      cmp r0, #0
004d4bd8  00 00 00 0a                                      beq #0x4d4be0
004d4bdc  17 ee f8 eb                                      bl #0x310440
004d4be0  04 00 a0 e1                                      mov r0, r4
004d4be4  5a ff ff eb                                      bl #0x4d4954
004d4be8  04 00 a0 e1                                      mov r0, r4
004d4bec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d4bf0  e0 fe 4b 00 a4 32 00 00                          .byte 0xe0, 0xfe, 0x4b, 0x00, 0xa4, 0x32, 0x00, 0x00

; FUNCTION 0x004f8c68, declared_size=2216, range_size=2216, mode=arm
; class-group: Structs::ShieldRef
; alias: _ZN7Structs9ShieldRef4readEP11IStreamBase
; demangled: Structs::ShieldRef::read(IStreamBase*)
; decoder-mode: arm
004f8c68  70 40 2d e9                                      push {r4, r5, r6, lr}
004f8c6c  00 40 a0 e1                                      mov r4, r0
004f8c70  08 d0 4d e2                                      sub sp, sp, #8
004f8c74  01 50 a0 e1                                      mov r5, r1
004f8c78  ff cd ff eb                                      bl #0x4ec47c
004f8c7c  05 00 a0 e1                                      mov r0, r5
004f8c80  44 10 84 e2                                      add r1, r4, #0x44
004f8c84  01 81 fd eb                                      bl #0x459090
004f8c88  01 30 a0 e3                                      mov r3, #1
004f8c8c  00 00 53 e3                                      cmp r3, #0
004f8c90  04 30 8d e5                                      str r3, [sp, #4]
004f8c94  0f 00 00 1a                                      bne #0x4f8cd8
004f8c98  45 30 84 e2                                      add r3, r4, #0x45
004f8c9c  46 20 84 e2                                      add r2, r4, #0x46
004f8ca0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8ca4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8ca8  02 00 53 e1                                      cmp r3, r2
004f8cac  01 10 20 e0                                      eor r1, r0, r1
004f8cb0  01 10 43 e5                                      strb r1, [r3, #-1]
004f8cb4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8cb8  00 10 21 e0                                      eor r1, r1, r0
004f8cbc  01 10 c2 e5                                      strb r1, [r2, #1]
004f8cc0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8cc4  01 20 42 e2                                      sub r2, r2, #1
004f8cc8  00 10 21 e0                                      eor r1, r1, r0
004f8ccc  01 10 43 e5                                      strb r1, [r3, #-1]
004f8cd0  01 30 83 e2                                      add r3, r3, #1
004f8cd4  f1 ff ff 3a                                      blo #0x4f8ca0
004f8cd8  05 00 a0 e1                                      mov r0, r5
004f8cdc  48 10 84 e2                                      add r1, r4, #0x48
004f8ce0  ea 80 fd eb                                      bl #0x459090
004f8ce4  01 30 a0 e3                                      mov r3, #1
004f8ce8  00 00 53 e3                                      cmp r3, #0
004f8cec  04 30 8d e5                                      str r3, [sp, #4]
004f8cf0  0f 00 00 1a                                      bne #0x4f8d34
004f8cf4  49 30 84 e2                                      add r3, r4, #0x49
004f8cf8  4a 20 84 e2                                      add r2, r4, #0x4a
004f8cfc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8d00  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8d04  02 00 53 e1                                      cmp r3, r2
004f8d08  01 10 20 e0                                      eor r1, r0, r1
004f8d0c  01 10 43 e5                                      strb r1, [r3, #-1]
004f8d10  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8d14  00 10 21 e0                                      eor r1, r1, r0
004f8d18  01 10 c2 e5                                      strb r1, [r2, #1]
004f8d1c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8d20  01 20 42 e2                                      sub r2, r2, #1
004f8d24  00 10 21 e0                                      eor r1, r1, r0
004f8d28  01 10 43 e5                                      strb r1, [r3, #-1]
004f8d2c  01 30 83 e2                                      add r3, r3, #1
004f8d30  f1 ff ff 3a                                      blo #0x4f8cfc
004f8d34  05 00 a0 e1                                      mov r0, r5
004f8d38  4c 10 84 e2                                      add r1, r4, #0x4c
004f8d3c  17 99 fb eb                                      bl #0x3df1a0
004f8d40  01 30 a0 e3                                      mov r3, #1
004f8d44  00 00 53 e3                                      cmp r3, #0
004f8d48  04 30 8d e5                                      str r3, [sp, #4]
004f8d4c  0f 00 00 1a                                      bne #0x4f8d90
004f8d50  4d 30 84 e2                                      add r3, r4, #0x4d
004f8d54  4e 20 84 e2                                      add r2, r4, #0x4e
004f8d58  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8d5c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8d60  02 00 53 e1                                      cmp r3, r2
004f8d64  01 10 20 e0                                      eor r1, r0, r1
004f8d68  01 10 43 e5                                      strb r1, [r3, #-1]
004f8d6c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8d70  00 10 21 e0                                      eor r1, r1, r0
004f8d74  01 10 c2 e5                                      strb r1, [r2, #1]
004f8d78  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8d7c  01 20 42 e2                                      sub r2, r2, #1
004f8d80  00 10 21 e0                                      eor r1, r1, r0
004f8d84  01 10 43 e5                                      strb r1, [r3, #-1]
004f8d88  01 30 83 e2                                      add r3, r3, #1
004f8d8c  f1 ff ff 3a                                      blo #0x4f8d58
004f8d90  50 00 94 e5                                      ldr r0, [r4, #0x50]
004f8d94  00 00 50 e3                                      cmp r0, #0
004f8d98  00 00 00 0a                                      beq #0x4f8da0
004f8d9c  a7 5d f8 eb                                      bl #0x310440
004f8da0  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
004f8da4  01 10 a0 e3                                      mov r1, #1
004f8da8  00 60 a0 e3                                      mov r6, #0
004f8dac  01 00 80 e0                                      add r0, r0, r1
004f8db0  ed 5d f8 eb                                      bl #0x31056c
004f8db4  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
004f8db8  00 10 a0 e1                                      mov r1, r0
004f8dbc  50 00 84 e5                                      str r0, [r4, #0x50]
004f8dc0  06 30 a0 e1                                      mov r3, r6
004f8dc4  05 00 a0 e1                                      mov r0, r5
004f8dc8  a1 79 f8 eb                                      bl #0x317454
004f8dcc  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
004f8dd0  50 20 94 e5                                      ldr r2, [r4, #0x50]
004f8dd4  05 00 a0 e1                                      mov r0, r5
004f8dd8  54 10 84 e2                                      add r1, r4, #0x54
004f8ddc  03 60 c2 e7                                      strb r6, [r2, r3]
004f8de0  aa 80 fd eb                                      bl #0x459090
004f8de4  01 30 a0 e3                                      mov r3, #1
004f8de8  06 00 53 e1                                      cmp r3, r6
004f8dec  04 30 8d e5                                      str r3, [sp, #4]
004f8df0  0f 00 00 1a                                      bne #0x4f8e34
004f8df4  55 30 84 e2                                      add r3, r4, #0x55
004f8df8  56 20 84 e2                                      add r2, r4, #0x56
004f8dfc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8e00  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8e04  02 00 53 e1                                      cmp r3, r2
004f8e08  01 10 20 e0                                      eor r1, r0, r1
004f8e0c  01 10 43 e5                                      strb r1, [r3, #-1]
004f8e10  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8e14  00 10 21 e0                                      eor r1, r1, r0
004f8e18  01 10 c2 e5                                      strb r1, [r2, #1]
004f8e1c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8e20  01 20 42 e2                                      sub r2, r2, #1
004f8e24  00 10 21 e0                                      eor r1, r1, r0
004f8e28  01 10 43 e5                                      strb r1, [r3, #-1]
004f8e2c  01 30 83 e2                                      add r3, r3, #1
004f8e30  f1 ff ff 3a                                      blo #0x4f8dfc
004f8e34  05 00 a0 e1                                      mov r0, r5
004f8e38  58 10 84 e2                                      add r1, r4, #0x58
004f8e3c  93 80 fd eb                                      bl #0x459090
004f8e40  01 30 a0 e3                                      mov r3, #1
004f8e44  00 00 53 e3                                      cmp r3, #0
004f8e48  04 30 8d e5                                      str r3, [sp, #4]
004f8e4c  0f 00 00 1a                                      bne #0x4f8e90
004f8e50  59 30 84 e2                                      add r3, r4, #0x59
004f8e54  5a 20 84 e2                                      add r2, r4, #0x5a
004f8e58  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8e5c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8e60  02 00 53 e1                                      cmp r3, r2
004f8e64  01 10 20 e0                                      eor r1, r0, r1
004f8e68  01 10 43 e5                                      strb r1, [r3, #-1]
004f8e6c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8e70  00 10 21 e0                                      eor r1, r1, r0
004f8e74  01 10 c2 e5                                      strb r1, [r2, #1]
004f8e78  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8e7c  01 20 42 e2                                      sub r2, r2, #1
004f8e80  00 10 21 e0                                      eor r1, r1, r0
004f8e84  01 10 43 e5                                      strb r1, [r3, #-1]
004f8e88  01 30 83 e2                                      add r3, r3, #1
004f8e8c  f1 ff ff 3a                                      blo #0x4f8e58
004f8e90  05 00 a0 e1                                      mov r0, r5
004f8e94  5c 10 84 e2                                      add r1, r4, #0x5c
004f8e98  7c 80 fd eb                                      bl #0x459090
004f8e9c  01 30 a0 e3                                      mov r3, #1
004f8ea0  00 00 53 e3                                      cmp r3, #0
004f8ea4  04 30 8d e5                                      str r3, [sp, #4]
004f8ea8  0f 00 00 1a                                      bne #0x4f8eec
004f8eac  5d 30 84 e2                                      add r3, r4, #0x5d
004f8eb0  5e 20 84 e2                                      add r2, r4, #0x5e
004f8eb4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8eb8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8ebc  02 00 53 e1                                      cmp r3, r2
004f8ec0  01 10 20 e0                                      eor r1, r0, r1
004f8ec4  01 10 43 e5                                      strb r1, [r3, #-1]
004f8ec8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8ecc  00 10 21 e0                                      eor r1, r1, r0
004f8ed0  01 10 c2 e5                                      strb r1, [r2, #1]
004f8ed4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8ed8  01 20 42 e2                                      sub r2, r2, #1
004f8edc  00 10 21 e0                                      eor r1, r1, r0
004f8ee0  01 10 43 e5                                      strb r1, [r3, #-1]
004f8ee4  01 30 83 e2                                      add r3, r3, #1
004f8ee8  f1 ff ff 3a                                      blo #0x4f8eb4
004f8eec  05 00 a0 e1                                      mov r0, r5
004f8ef0  60 10 84 e2                                      add r1, r4, #0x60
004f8ef4  65 80 fd eb                                      bl #0x459090
004f8ef8  01 30 a0 e3                                      mov r3, #1
004f8efc  00 00 53 e3                                      cmp r3, #0
004f8f00  04 30 8d e5                                      str r3, [sp, #4]
004f8f04  0f 00 00 1a                                      bne #0x4f8f48
004f8f08  61 30 84 e2                                      add r3, r4, #0x61
004f8f0c  62 20 84 e2                                      add r2, r4, #0x62
004f8f10  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8f14  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8f18  02 00 53 e1                                      cmp r3, r2
004f8f1c  01 10 20 e0                                      eor r1, r0, r1
004f8f20  01 10 43 e5                                      strb r1, [r3, #-1]
004f8f24  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8f28  00 10 21 e0                                      eor r1, r1, r0
004f8f2c  01 10 c2 e5                                      strb r1, [r2, #1]
004f8f30  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8f34  01 20 42 e2                                      sub r2, r2, #1
004f8f38  00 10 21 e0                                      eor r1, r1, r0
004f8f3c  01 10 43 e5                                      strb r1, [r3, #-1]
004f8f40  01 30 83 e2                                      add r3, r3, #1
004f8f44  f1 ff ff 3a                                      blo #0x4f8f10
004f8f48  05 00 a0 e1                                      mov r0, r5
004f8f4c  64 10 84 e2                                      add r1, r4, #0x64
004f8f50  4e 80 fd eb                                      bl #0x459090
004f8f54  01 30 a0 e3                                      mov r3, #1
004f8f58  00 00 53 e3                                      cmp r3, #0
004f8f5c  04 30 8d e5                                      str r3, [sp, #4]
004f8f60  0f 00 00 1a                                      bne #0x4f8fa4
004f8f64  65 30 84 e2                                      add r3, r4, #0x65
004f8f68  66 20 84 e2                                      add r2, r4, #0x66
004f8f6c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8f70  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8f74  02 00 53 e1                                      cmp r3, r2
004f8f78  01 10 20 e0                                      eor r1, r0, r1
004f8f7c  01 10 43 e5                                      strb r1, [r3, #-1]
004f8f80  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8f84  00 10 21 e0                                      eor r1, r1, r0
004f8f88  01 10 c2 e5                                      strb r1, [r2, #1]
004f8f8c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8f90  01 20 42 e2                                      sub r2, r2, #1
004f8f94  00 10 21 e0                                      eor r1, r1, r0
004f8f98  01 10 43 e5                                      strb r1, [r3, #-1]
004f8f9c  01 30 83 e2                                      add r3, r3, #1
004f8fa0  f1 ff ff 3a                                      blo #0x4f8f6c
004f8fa4  05 00 a0 e1                                      mov r0, r5
004f8fa8  68 10 84 e2                                      add r1, r4, #0x68
004f8fac  37 80 fd eb                                      bl #0x459090
004f8fb0  01 30 a0 e3                                      mov r3, #1
004f8fb4  00 00 53 e3                                      cmp r3, #0
004f8fb8  04 30 8d e5                                      str r3, [sp, #4]
004f8fbc  0f 00 00 1a                                      bne #0x4f9000
004f8fc0  69 30 84 e2                                      add r3, r4, #0x69
004f8fc4  6a 20 84 e2                                      add r2, r4, #0x6a
004f8fc8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8fcc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8fd0  02 00 53 e1                                      cmp r3, r2
004f8fd4  01 10 20 e0                                      eor r1, r0, r1
004f8fd8  01 10 43 e5                                      strb r1, [r3, #-1]
004f8fdc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8fe0  00 10 21 e0                                      eor r1, r1, r0
004f8fe4  01 10 c2 e5                                      strb r1, [r2, #1]
004f8fe8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8fec  01 20 42 e2                                      sub r2, r2, #1
004f8ff0  00 10 21 e0                                      eor r1, r1, r0
004f8ff4  01 10 43 e5                                      strb r1, [r3, #-1]
004f8ff8  01 30 83 e2                                      add r3, r3, #1
004f8ffc  f1 ff ff 3a                                      blo #0x4f8fc8
004f9000  05 00 a0 e1                                      mov r0, r5
004f9004  6c 10 84 e2                                      add r1, r4, #0x6c
004f9008  20 80 fd eb                                      bl #0x459090
004f900c  01 30 a0 e3                                      mov r3, #1
004f9010  00 00 53 e3                                      cmp r3, #0
004f9014  04 30 8d e5                                      str r3, [sp, #4]
004f9018  0f 00 00 1a                                      bne #0x4f905c
004f901c  6d 30 84 e2                                      add r3, r4, #0x6d
004f9020  6e 20 84 e2                                      add r2, r4, #0x6e
004f9024  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9028  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f902c  02 00 53 e1                                      cmp r3, r2
004f9030  01 10 20 e0                                      eor r1, r0, r1
004f9034  01 10 43 e5                                      strb r1, [r3, #-1]
004f9038  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f903c  00 10 21 e0                                      eor r1, r1, r0
004f9040  01 10 c2 e5                                      strb r1, [r2, #1]
004f9044  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9048  01 20 42 e2                                      sub r2, r2, #1
004f904c  00 10 21 e0                                      eor r1, r1, r0
004f9050  01 10 43 e5                                      strb r1, [r3, #-1]
004f9054  01 30 83 e2                                      add r3, r3, #1
004f9058  f1 ff ff 3a                                      blo #0x4f9024
004f905c  05 00 a0 e1                                      mov r0, r5
004f9060  70 10 84 e2                                      add r1, r4, #0x70
004f9064  09 80 fd eb                                      bl #0x459090
004f9068  01 30 a0 e3                                      mov r3, #1
004f906c  00 00 53 e3                                      cmp r3, #0
004f9070  04 30 8d e5                                      str r3, [sp, #4]
004f9074  0f 00 00 1a                                      bne #0x4f90b8
004f9078  71 30 84 e2                                      add r3, r4, #0x71
004f907c  72 20 84 e2                                      add r2, r4, #0x72
004f9080  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9084  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9088  02 00 53 e1                                      cmp r3, r2
004f908c  01 10 20 e0                                      eor r1, r0, r1
004f9090  01 10 43 e5                                      strb r1, [r3, #-1]
004f9094  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9098  00 10 21 e0                                      eor r1, r1, r0
004f909c  01 10 c2 e5                                      strb r1, [r2, #1]
004f90a0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f90a4  01 20 42 e2                                      sub r2, r2, #1
004f90a8  00 10 21 e0                                      eor r1, r1, r0
004f90ac  01 10 43 e5                                      strb r1, [r3, #-1]
004f90b0  01 30 83 e2                                      add r3, r3, #1
004f90b4  f1 ff ff 3a                                      blo #0x4f9080
004f90b8  05 00 a0 e1                                      mov r0, r5
004f90bc  74 10 84 e2                                      add r1, r4, #0x74
004f90c0  f2 7f fd eb                                      bl #0x459090
004f90c4  01 30 a0 e3                                      mov r3, #1
004f90c8  00 00 53 e3                                      cmp r3, #0
004f90cc  04 30 8d e5                                      str r3, [sp, #4]
004f90d0  0f 00 00 1a                                      bne #0x4f9114
004f90d4  75 30 84 e2                                      add r3, r4, #0x75
004f90d8  76 20 84 e2                                      add r2, r4, #0x76
004f90dc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f90e0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f90e4  02 00 53 e1                                      cmp r3, r2
004f90e8  01 10 20 e0                                      eor r1, r0, r1
004f90ec  01 10 43 e5                                      strb r1, [r3, #-1]
004f90f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f90f4  00 10 21 e0                                      eor r1, r1, r0
004f90f8  01 10 c2 e5                                      strb r1, [r2, #1]
004f90fc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9100  01 20 42 e2                                      sub r2, r2, #1
004f9104  00 10 21 e0                                      eor r1, r1, r0
004f9108  01 10 43 e5                                      strb r1, [r3, #-1]
004f910c  01 30 83 e2                                      add r3, r3, #1
004f9110  f1 ff ff 3a                                      blo #0x4f90dc
004f9114  05 00 a0 e1                                      mov r0, r5
004f9118  78 10 84 e2                                      add r1, r4, #0x78
004f911c  db 7f fd eb                                      bl #0x459090
004f9120  01 30 a0 e3                                      mov r3, #1
004f9124  00 00 53 e3                                      cmp r3, #0
004f9128  04 30 8d e5                                      str r3, [sp, #4]
004f912c  0f 00 00 1a                                      bne #0x4f9170
004f9130  79 30 84 e2                                      add r3, r4, #0x79
004f9134  7a 20 84 e2                                      add r2, r4, #0x7a
004f9138  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f913c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9140  02 00 53 e1                                      cmp r3, r2
004f9144  01 10 20 e0                                      eor r1, r0, r1
004f9148  01 10 43 e5                                      strb r1, [r3, #-1]
004f914c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9150  00 10 21 e0                                      eor r1, r1, r0
004f9154  01 10 c2 e5                                      strb r1, [r2, #1]
004f9158  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f915c  01 20 42 e2                                      sub r2, r2, #1
004f9160  00 10 21 e0                                      eor r1, r1, r0
004f9164  01 10 43 e5                                      strb r1, [r3, #-1]
004f9168  01 30 83 e2                                      add r3, r3, #1
004f916c  f1 ff ff 3a                                      blo #0x4f9138
004f9170  05 00 a0 e1                                      mov r0, r5
004f9174  7c 10 84 e2                                      add r1, r4, #0x7c
004f9178  c4 7f fd eb                                      bl #0x459090
004f917c  01 30 a0 e3                                      mov r3, #1
004f9180  00 00 53 e3                                      cmp r3, #0
004f9184  04 30 8d e5                                      str r3, [sp, #4]
004f9188  0f 00 00 1a                                      bne #0x4f91cc
004f918c  7d 30 84 e2                                      add r3, r4, #0x7d
004f9190  7e 20 84 e2                                      add r2, r4, #0x7e
004f9194  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9198  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f919c  02 00 53 e1                                      cmp r3, r2
004f91a0  01 10 20 e0                                      eor r1, r0, r1
004f91a4  01 10 43 e5                                      strb r1, [r3, #-1]
004f91a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f91ac  00 10 21 e0                                      eor r1, r1, r0
004f91b0  01 10 c2 e5                                      strb r1, [r2, #1]
004f91b4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f91b8  01 20 42 e2                                      sub r2, r2, #1
004f91bc  00 10 21 e0                                      eor r1, r1, r0
004f91c0  01 10 43 e5                                      strb r1, [r3, #-1]
004f91c4  01 30 83 e2                                      add r3, r3, #1
004f91c8  f1 ff ff 3a                                      blo #0x4f9194
004f91cc  05 00 a0 e1                                      mov r0, r5
004f91d0  80 10 84 e2                                      add r1, r4, #0x80
004f91d4  ad 7f fd eb                                      bl #0x459090
004f91d8  01 30 a0 e3                                      mov r3, #1
004f91dc  00 00 53 e3                                      cmp r3, #0
004f91e0  04 30 8d e5                                      str r3, [sp, #4]
004f91e4  0f 00 00 1a                                      bne #0x4f9228
004f91e8  81 30 84 e2                                      add r3, r4, #0x81
004f91ec  82 20 84 e2                                      add r2, r4, #0x82
004f91f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f91f4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f91f8  02 00 53 e1                                      cmp r3, r2
004f91fc  01 10 20 e0                                      eor r1, r0, r1
004f9200  01 10 43 e5                                      strb r1, [r3, #-1]
004f9204  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9208  00 10 21 e0                                      eor r1, r1, r0
004f920c  01 10 c2 e5                                      strb r1, [r2, #1]
004f9210  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9214  01 20 42 e2                                      sub r2, r2, #1
004f9218  00 10 21 e0                                      eor r1, r1, r0
004f921c  01 10 43 e5                                      strb r1, [r3, #-1]
004f9220  01 30 83 e2                                      add r3, r3, #1
004f9224  f1 ff ff 3a                                      blo #0x4f91f0
004f9228  05 00 a0 e1                                      mov r0, r5
004f922c  84 10 84 e2                                      add r1, r4, #0x84
004f9230  96 7f fd eb                                      bl #0x459090
004f9234  01 30 a0 e3                                      mov r3, #1
004f9238  00 00 53 e3                                      cmp r3, #0
004f923c  04 30 8d e5                                      str r3, [sp, #4]
004f9240  0f 00 00 1a                                      bne #0x4f9284
004f9244  85 30 84 e2                                      add r3, r4, #0x85
004f9248  86 20 84 e2                                      add r2, r4, #0x86
004f924c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9250  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9254  02 00 53 e1                                      cmp r3, r2
004f9258  01 10 20 e0                                      eor r1, r0, r1
004f925c  01 10 43 e5                                      strb r1, [r3, #-1]
004f9260  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9264  00 10 21 e0                                      eor r1, r1, r0
004f9268  01 10 c2 e5                                      strb r1, [r2, #1]
004f926c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9270  01 20 42 e2                                      sub r2, r2, #1
004f9274  00 10 21 e0                                      eor r1, r1, r0
004f9278  01 10 43 e5                                      strb r1, [r3, #-1]
004f927c  01 30 83 e2                                      add r3, r3, #1
004f9280  f1 ff ff 3a                                      blo #0x4f924c
004f9284  05 00 a0 e1                                      mov r0, r5
004f9288  88 10 84 e2                                      add r1, r4, #0x88
004f928c  7f 7f fd eb                                      bl #0x459090
004f9290  01 30 a0 e3                                      mov r3, #1
004f9294  00 00 53 e3                                      cmp r3, #0
004f9298  04 30 8d e5                                      str r3, [sp, #4]
004f929c  0f 00 00 1a                                      bne #0x4f92e0
004f92a0  89 30 84 e2                                      add r3, r4, #0x89
004f92a4  8a 20 84 e2                                      add r2, r4, #0x8a
004f92a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f92ac  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f92b0  02 00 53 e1                                      cmp r3, r2
004f92b4  01 10 20 e0                                      eor r1, r0, r1
004f92b8  01 10 43 e5                                      strb r1, [r3, #-1]
004f92bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f92c0  00 10 21 e0                                      eor r1, r1, r0
004f92c4  01 10 c2 e5                                      strb r1, [r2, #1]
004f92c8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f92cc  01 20 42 e2                                      sub r2, r2, #1
004f92d0  00 10 21 e0                                      eor r1, r1, r0
004f92d4  01 10 43 e5                                      strb r1, [r3, #-1]
004f92d8  01 30 83 e2                                      add r3, r3, #1
004f92dc  f1 ff ff 3a                                      blo #0x4f92a8
004f92e0  05 00 a0 e1                                      mov r0, r5
004f92e4  8c 10 84 e2                                      add r1, r4, #0x8c
004f92e8  68 7f fd eb                                      bl #0x459090
004f92ec  01 30 a0 e3                                      mov r3, #1
004f92f0  00 00 53 e3                                      cmp r3, #0
004f92f4  04 30 8d e5                                      str r3, [sp, #4]
004f92f8  0f 00 00 1a                                      bne #0x4f933c
004f92fc  8d 30 84 e2                                      add r3, r4, #0x8d
004f9300  8e 20 84 e2                                      add r2, r4, #0x8e
004f9304  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9308  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f930c  02 00 53 e1                                      cmp r3, r2
004f9310  01 10 20 e0                                      eor r1, r0, r1
004f9314  01 10 43 e5                                      strb r1, [r3, #-1]
004f9318  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f931c  00 10 21 e0                                      eor r1, r1, r0
004f9320  01 10 c2 e5                                      strb r1, [r2, #1]
004f9324  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9328  01 20 42 e2                                      sub r2, r2, #1
004f932c  00 10 21 e0                                      eor r1, r1, r0
004f9330  01 10 43 e5                                      strb r1, [r3, #-1]
004f9334  01 30 83 e2                                      add r3, r3, #1
004f9338  f1 ff ff 3a                                      blo #0x4f9304
004f933c  05 00 a0 e1                                      mov r0, r5
004f9340  90 10 84 e2                                      add r1, r4, #0x90
004f9344  51 7f fd eb                                      bl #0x459090
004f9348  01 30 a0 e3                                      mov r3, #1
004f934c  00 00 53 e3                                      cmp r3, #0
004f9350  04 30 8d e5                                      str r3, [sp, #4]
004f9354  0f 00 00 1a                                      bne #0x4f9398
004f9358  91 30 84 e2                                      add r3, r4, #0x91
004f935c  92 20 84 e2                                      add r2, r4, #0x92
004f9360  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9364  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9368  02 00 53 e1                                      cmp r3, r2
004f936c  01 10 20 e0                                      eor r1, r0, r1
004f9370  01 10 43 e5                                      strb r1, [r3, #-1]
004f9374  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9378  00 10 21 e0                                      eor r1, r1, r0
004f937c  01 10 c2 e5                                      strb r1, [r2, #1]
004f9380  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9384  01 20 42 e2                                      sub r2, r2, #1
004f9388  00 10 21 e0                                      eor r1, r1, r0
004f938c  01 10 43 e5                                      strb r1, [r3, #-1]
004f9390  01 30 83 e2                                      add r3, r3, #1
004f9394  f1 ff ff 3a                                      blo #0x4f9360
004f9398  05 00 a0 e1                                      mov r0, r5
004f939c  94 10 84 e2                                      add r1, r4, #0x94
004f93a0  3a 7f fd eb                                      bl #0x459090
004f93a4  01 30 a0 e3                                      mov r3, #1
004f93a8  00 00 53 e3                                      cmp r3, #0
004f93ac  04 30 8d e5                                      str r3, [sp, #4]
004f93b0  0f 00 00 1a                                      bne #0x4f93f4
004f93b4  95 30 84 e2                                      add r3, r4, #0x95
004f93b8  96 20 84 e2                                      add r2, r4, #0x96
004f93bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f93c0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f93c4  02 00 53 e1                                      cmp r3, r2
004f93c8  01 10 20 e0                                      eor r1, r0, r1
004f93cc  01 10 43 e5                                      strb r1, [r3, #-1]
004f93d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f93d4  00 10 21 e0                                      eor r1, r1, r0
004f93d8  01 10 c2 e5                                      strb r1, [r2, #1]
004f93dc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f93e0  01 20 42 e2                                      sub r2, r2, #1
004f93e4  00 10 21 e0                                      eor r1, r1, r0
004f93e8  01 10 43 e5                                      strb r1, [r3, #-1]
004f93ec  01 30 83 e2                                      add r3, r3, #1
004f93f0  f1 ff ff 3a                                      blo #0x4f93bc
004f93f4  05 00 a0 e1                                      mov r0, r5
004f93f8  98 10 84 e2                                      add r1, r4, #0x98
004f93fc  23 7f fd eb                                      bl #0x459090
004f9400  01 30 a0 e3                                      mov r3, #1
004f9404  00 00 53 e3                                      cmp r3, #0
004f9408  04 30 8d e5                                      str r3, [sp, #4]
004f940c  0f 00 00 1a                                      bne #0x4f9450
004f9410  99 30 84 e2                                      add r3, r4, #0x99
004f9414  9a 20 84 e2                                      add r2, r4, #0x9a
004f9418  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f941c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9420  02 00 53 e1                                      cmp r3, r2
004f9424  01 10 20 e0                                      eor r1, r0, r1
004f9428  01 10 43 e5                                      strb r1, [r3, #-1]
004f942c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9430  00 10 21 e0                                      eor r1, r1, r0
004f9434  01 10 c2 e5                                      strb r1, [r2, #1]
004f9438  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f943c  01 20 42 e2                                      sub r2, r2, #1
004f9440  00 10 21 e0                                      eor r1, r1, r0
004f9444  01 10 43 e5                                      strb r1, [r3, #-1]
004f9448  01 30 83 e2                                      add r3, r3, #1
004f944c  f1 ff ff 3a                                      blo #0x4f9418
004f9450  05 00 a0 e1                                      mov r0, r5
004f9454  9c 10 84 e2                                      add r1, r4, #0x9c
004f9458  0c 7f fd eb                                      bl #0x459090
004f945c  01 30 a0 e3                                      mov r3, #1
004f9460  00 00 53 e3                                      cmp r3, #0
004f9464  04 30 8d e5                                      str r3, [sp, #4]
004f9468  0f 00 00 1a                                      bne #0x4f94ac
004f946c  9d 30 84 e2                                      add r3, r4, #0x9d
004f9470  9e 20 84 e2                                      add r2, r4, #0x9e
004f9474  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9478  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f947c  02 00 53 e1                                      cmp r3, r2
004f9480  01 10 20 e0                                      eor r1, r0, r1
004f9484  01 10 43 e5                                      strb r1, [r3, #-1]
004f9488  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f948c  00 10 21 e0                                      eor r1, r1, r0
004f9490  01 10 c2 e5                                      strb r1, [r2, #1]
004f9494  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9498  01 20 42 e2                                      sub r2, r2, #1
004f949c  00 10 21 e0                                      eor r1, r1, r0
004f94a0  01 10 43 e5                                      strb r1, [r3, #-1]
004f94a4  01 30 83 e2                                      add r3, r3, #1
004f94a8  f1 ff ff 3a                                      blo #0x4f9474
004f94ac  05 00 a0 e1                                      mov r0, r5
004f94b0  a0 10 84 e2                                      add r1, r4, #0xa0
004f94b4  f5 7e fd eb                                      bl #0x459090
004f94b8  01 30 a0 e3                                      mov r3, #1
004f94bc  00 00 53 e3                                      cmp r3, #0
004f94c0  04 30 8d e5                                      str r3, [sp, #4]
004f94c4  0f 00 00 1a                                      bne #0x4f9508
004f94c8  a2 30 84 e2                                      add r3, r4, #0xa2
004f94cc  a1 40 84 e2                                      add r4, r4, #0xa1
004f94d0  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f94d4  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f94d8  03 00 54 e1                                      cmp r4, r3
004f94dc  02 20 21 e0                                      eor r2, r1, r2
004f94e0  01 20 44 e5                                      strb r2, [r4, #-1]
004f94e4  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f94e8  01 20 22 e0                                      eor r2, r2, r1
004f94ec  01 20 c3 e5                                      strb r2, [r3, #1]
004f94f0  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f94f4  01 30 43 e2                                      sub r3, r3, #1
004f94f8  01 20 22 e0                                      eor r2, r2, r1
004f94fc  01 20 44 e5                                      strb r2, [r4, #-1]
004f9500  01 40 84 e2                                      add r4, r4, #1
004f9504  f1 ff ff 3a                                      blo #0x4f94d0
004f9508  08 d0 8d e2                                      add sp, sp, #8
004f950c  70 80 bd e8                                      pop {r4, r5, r6, pc}
