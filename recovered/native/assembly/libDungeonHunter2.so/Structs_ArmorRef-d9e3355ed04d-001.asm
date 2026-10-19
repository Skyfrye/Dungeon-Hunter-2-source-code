; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d464c, declared_size=76, range_size=76, mode=arm
; class-group: Structs::ArmorRef
; alias: _ZN7Structs8ArmorRef8finalizeEv
; demangled: Structs::ArmorRef::finalize()
; decoder-mode: arm
004d464c  10 40 2d e9                                      push {r4, lr}
004d4650  00 40 a0 e1                                      mov r4, r0
004d4654  08 00 90 e5                                      ldr r0, [r0, #8]
004d4658  00 00 50 e3                                      cmp r0, #0
004d465c  03 00 00 0a                                      beq #0x4d4670
004d4660  76 ef f8 eb                                      bl #0x310440
004d4664  00 30 a0 e3                                      mov r3, #0
004d4668  04 30 84 e5                                      str r3, [r4, #4]
004d466c  08 30 84 e5                                      str r3, [r4, #8]
004d4670  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4674  00 00 50 e3                                      cmp r0, #0
004d4678  03 00 00 0a                                      beq #0x4d468c
004d467c  6f ef f8 eb                                      bl #0x310440
004d4680  00 30 a0 e3                                      mov r3, #0
004d4684  4c 30 84 e5                                      str r3, [r4, #0x4c]
004d4688  50 30 84 e5                                      str r3, [r4, #0x50]
004d468c  04 00 a0 e1                                      mov r0, r4
004d4690  10 40 bd e8                                      pop {r4, lr}
004d4694  96 ff ff ea                                      b #0x4d44f4

; FUNCTION 0x004d4cc4, declared_size=88, range_size=88, mode=arm
; class-group: Structs::ArmorRef
; alias: _ZN7Structs8ArmorRefD1Ev
; demangled: Structs::ArmorRef::~ArmorRef()
; decoder-mode: arm
004d4cc4  10 40 2d e9                                      push {r4, lr}
004d4cc8  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d4ccc  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d4cd0  00 40 a0 e1                                      mov r4, r0
004d4cd4  03 30 8f e0                                      add r3, pc, r3
004d4cd8  08 00 90 e5                                      ldr r0, [r0, #8]
004d4cdc  02 20 93 e7                                      ldr r2, [r3, r2]
004d4ce0  00 00 50 e3                                      cmp r0, #0
004d4ce4  08 20 82 e2                                      add r2, r2, #8
004d4ce8  00 20 84 e5                                      str r2, [r4]
004d4cec  00 00 00 0a                                      beq #0x4d4cf4
004d4cf0  d2 ed f8 eb                                      bl #0x310440
004d4cf4  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4cf8  00 00 50 e3                                      cmp r0, #0
004d4cfc  00 00 00 0a                                      beq #0x4d4d04
004d4d00  ce ed f8 eb                                      bl #0x310440
004d4d04  04 00 a0 e1                                      mov r0, r4
004d4d08  11 ff ff eb                                      bl #0x4d4954
004d4d0c  04 00 a0 e1                                      mov r0, r4
004d4d10  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d4d14  bc fd 4b 00 80 0e 00 00                          .byte 0xbc, 0xfd, 0x4b, 0x00, 0x80, 0x0e, 0x00, 0x00

; FUNCTION 0x004d4d1c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ArmorRef
; alias: _ZN7Structs8ArmorRefD0Ev
; demangled: Structs::ArmorRef::~ArmorRef()
; decoder-mode: arm
004d4d1c  10 40 2d e9                                      push {r4, lr}
004d4d20  00 40 a0 e1                                      mov r4, r0
004d4d24  e6 ff ff eb                                      bl #0x4d4cc4
004d4d28  04 00 a0 e1                                      mov r0, r4
004d4d2c  c3 ed f8 eb                                      bl #0x310440
004d4d30  04 00 a0 e1                                      mov r0, r4
004d4d34  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d4d38, declared_size=88, range_size=88, mode=arm
; class-group: Structs::ArmorRef
; alias: _ZN7Structs8ArmorRefD2Ev
; demangled: Structs::ArmorRef::~ArmorRef()
; decoder-mode: arm
004d4d38  10 40 2d e9                                      push {r4, lr}
004d4d3c  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d4d40  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d4d44  00 40 a0 e1                                      mov r4, r0
004d4d48  03 30 8f e0                                      add r3, pc, r3
004d4d4c  08 00 90 e5                                      ldr r0, [r0, #8]
004d4d50  02 20 93 e7                                      ldr r2, [r3, r2]
004d4d54  00 00 50 e3                                      cmp r0, #0
004d4d58  08 20 82 e2                                      add r2, r2, #8
004d4d5c  00 20 84 e5                                      str r2, [r4]
004d4d60  00 00 00 0a                                      beq #0x4d4d68
004d4d64  b5 ed f8 eb                                      bl #0x310440
004d4d68  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4d6c  00 00 50 e3                                      cmp r0, #0
004d4d70  00 00 00 0a                                      beq #0x4d4d78
004d4d74  b1 ed f8 eb                                      bl #0x310440
004d4d78  04 00 a0 e1                                      mov r0, r4
004d4d7c  f4 fe ff eb                                      bl #0x4d4954
004d4d80  04 00 a0 e1                                      mov r0, r4
004d4d84  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d4d88  48 fd 4b 00 80 0e 00 00                          .byte 0x48, 0xfd, 0x4b, 0x00, 0x80, 0x0e, 0x00, 0x00

; FUNCTION 0x004f9db8, declared_size=2216, range_size=2216, mode=arm
; class-group: Structs::ArmorRef
; alias: _ZN7Structs8ArmorRef4readEP11IStreamBase
; demangled: Structs::ArmorRef::read(IStreamBase*)
; decoder-mode: arm
004f9db8  70 40 2d e9                                      push {r4, r5, r6, lr}
004f9dbc  00 40 a0 e1                                      mov r4, r0
004f9dc0  08 d0 4d e2                                      sub sp, sp, #8
004f9dc4  01 50 a0 e1                                      mov r5, r1
004f9dc8  ab c9 ff eb                                      bl #0x4ec47c
004f9dcc  05 00 a0 e1                                      mov r0, r5
004f9dd0  44 10 84 e2                                      add r1, r4, #0x44
004f9dd4  ad 7c fd eb                                      bl #0x459090
004f9dd8  01 30 a0 e3                                      mov r3, #1
004f9ddc  00 00 53 e3                                      cmp r3, #0
004f9de0  04 30 8d e5                                      str r3, [sp, #4]
004f9de4  0f 00 00 1a                                      bne #0x4f9e28
004f9de8  45 30 84 e2                                      add r3, r4, #0x45
004f9dec  46 20 84 e2                                      add r2, r4, #0x46
004f9df0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9df4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9df8  02 00 53 e1                                      cmp r3, r2
004f9dfc  01 10 20 e0                                      eor r1, r0, r1
004f9e00  01 10 43 e5                                      strb r1, [r3, #-1]
004f9e04  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9e08  00 10 21 e0                                      eor r1, r1, r0
004f9e0c  01 10 c2 e5                                      strb r1, [r2, #1]
004f9e10  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9e14  01 20 42 e2                                      sub r2, r2, #1
004f9e18  00 10 21 e0                                      eor r1, r1, r0
004f9e1c  01 10 43 e5                                      strb r1, [r3, #-1]
004f9e20  01 30 83 e2                                      add r3, r3, #1
004f9e24  f1 ff ff 3a                                      blo #0x4f9df0
004f9e28  05 00 a0 e1                                      mov r0, r5
004f9e2c  48 10 84 e2                                      add r1, r4, #0x48
004f9e30  96 7c fd eb                                      bl #0x459090
004f9e34  01 30 a0 e3                                      mov r3, #1
004f9e38  00 00 53 e3                                      cmp r3, #0
004f9e3c  04 30 8d e5                                      str r3, [sp, #4]
004f9e40  0f 00 00 1a                                      bne #0x4f9e84
004f9e44  49 30 84 e2                                      add r3, r4, #0x49
004f9e48  4a 20 84 e2                                      add r2, r4, #0x4a
004f9e4c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9e50  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9e54  02 00 53 e1                                      cmp r3, r2
004f9e58  01 10 20 e0                                      eor r1, r0, r1
004f9e5c  01 10 43 e5                                      strb r1, [r3, #-1]
004f9e60  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9e64  00 10 21 e0                                      eor r1, r1, r0
004f9e68  01 10 c2 e5                                      strb r1, [r2, #1]
004f9e6c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9e70  01 20 42 e2                                      sub r2, r2, #1
004f9e74  00 10 21 e0                                      eor r1, r1, r0
004f9e78  01 10 43 e5                                      strb r1, [r3, #-1]
004f9e7c  01 30 83 e2                                      add r3, r3, #1
004f9e80  f1 ff ff 3a                                      blo #0x4f9e4c
004f9e84  05 00 a0 e1                                      mov r0, r5
004f9e88  4c 10 84 e2                                      add r1, r4, #0x4c
004f9e8c  c3 94 fb eb                                      bl #0x3df1a0
004f9e90  01 30 a0 e3                                      mov r3, #1
004f9e94  00 00 53 e3                                      cmp r3, #0
004f9e98  04 30 8d e5                                      str r3, [sp, #4]
004f9e9c  0f 00 00 1a                                      bne #0x4f9ee0
004f9ea0  4d 30 84 e2                                      add r3, r4, #0x4d
004f9ea4  4e 20 84 e2                                      add r2, r4, #0x4e
004f9ea8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9eac  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9eb0  02 00 53 e1                                      cmp r3, r2
004f9eb4  01 10 20 e0                                      eor r1, r0, r1
004f9eb8  01 10 43 e5                                      strb r1, [r3, #-1]
004f9ebc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9ec0  00 10 21 e0                                      eor r1, r1, r0
004f9ec4  01 10 c2 e5                                      strb r1, [r2, #1]
004f9ec8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9ecc  01 20 42 e2                                      sub r2, r2, #1
004f9ed0  00 10 21 e0                                      eor r1, r1, r0
004f9ed4  01 10 43 e5                                      strb r1, [r3, #-1]
004f9ed8  01 30 83 e2                                      add r3, r3, #1
004f9edc  f1 ff ff 3a                                      blo #0x4f9ea8
004f9ee0  50 00 94 e5                                      ldr r0, [r4, #0x50]
004f9ee4  00 00 50 e3                                      cmp r0, #0
004f9ee8  00 00 00 0a                                      beq #0x4f9ef0
004f9eec  53 59 f8 eb                                      bl #0x310440
004f9ef0  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
004f9ef4  01 10 a0 e3                                      mov r1, #1
004f9ef8  00 60 a0 e3                                      mov r6, #0
004f9efc  01 00 80 e0                                      add r0, r0, r1
004f9f00  99 59 f8 eb                                      bl #0x31056c
004f9f04  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
004f9f08  00 10 a0 e1                                      mov r1, r0
004f9f0c  50 00 84 e5                                      str r0, [r4, #0x50]
004f9f10  06 30 a0 e1                                      mov r3, r6
004f9f14  05 00 a0 e1                                      mov r0, r5
004f9f18  4d 75 f8 eb                                      bl #0x317454
004f9f1c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
004f9f20  50 20 94 e5                                      ldr r2, [r4, #0x50]
004f9f24  05 00 a0 e1                                      mov r0, r5
004f9f28  54 10 84 e2                                      add r1, r4, #0x54
004f9f2c  03 60 c2 e7                                      strb r6, [r2, r3]
004f9f30  56 7c fd eb                                      bl #0x459090
004f9f34  01 30 a0 e3                                      mov r3, #1
004f9f38  06 00 53 e1                                      cmp r3, r6
004f9f3c  04 30 8d e5                                      str r3, [sp, #4]
004f9f40  0f 00 00 1a                                      bne #0x4f9f84
004f9f44  55 30 84 e2                                      add r3, r4, #0x55
004f9f48  56 20 84 e2                                      add r2, r4, #0x56
004f9f4c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9f50  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9f54  02 00 53 e1                                      cmp r3, r2
004f9f58  01 10 20 e0                                      eor r1, r0, r1
004f9f5c  01 10 43 e5                                      strb r1, [r3, #-1]
004f9f60  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9f64  00 10 21 e0                                      eor r1, r1, r0
004f9f68  01 10 c2 e5                                      strb r1, [r2, #1]
004f9f6c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9f70  01 20 42 e2                                      sub r2, r2, #1
004f9f74  00 10 21 e0                                      eor r1, r1, r0
004f9f78  01 10 43 e5                                      strb r1, [r3, #-1]
004f9f7c  01 30 83 e2                                      add r3, r3, #1
004f9f80  f1 ff ff 3a                                      blo #0x4f9f4c
004f9f84  05 00 a0 e1                                      mov r0, r5
004f9f88  58 10 84 e2                                      add r1, r4, #0x58
004f9f8c  3f 7c fd eb                                      bl #0x459090
004f9f90  01 30 a0 e3                                      mov r3, #1
004f9f94  00 00 53 e3                                      cmp r3, #0
004f9f98  04 30 8d e5                                      str r3, [sp, #4]
004f9f9c  0f 00 00 1a                                      bne #0x4f9fe0
004f9fa0  59 30 84 e2                                      add r3, r4, #0x59
004f9fa4  5a 20 84 e2                                      add r2, r4, #0x5a
004f9fa8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9fac  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9fb0  02 00 53 e1                                      cmp r3, r2
004f9fb4  01 10 20 e0                                      eor r1, r0, r1
004f9fb8  01 10 43 e5                                      strb r1, [r3, #-1]
004f9fbc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9fc0  00 10 21 e0                                      eor r1, r1, r0
004f9fc4  01 10 c2 e5                                      strb r1, [r2, #1]
004f9fc8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9fcc  01 20 42 e2                                      sub r2, r2, #1
004f9fd0  00 10 21 e0                                      eor r1, r1, r0
004f9fd4  01 10 43 e5                                      strb r1, [r3, #-1]
004f9fd8  01 30 83 e2                                      add r3, r3, #1
004f9fdc  f1 ff ff 3a                                      blo #0x4f9fa8
004f9fe0  05 00 a0 e1                                      mov r0, r5
004f9fe4  5c 10 84 e2                                      add r1, r4, #0x5c
004f9fe8  28 7c fd eb                                      bl #0x459090
004f9fec  01 30 a0 e3                                      mov r3, #1
004f9ff0  00 00 53 e3                                      cmp r3, #0
004f9ff4  04 30 8d e5                                      str r3, [sp, #4]
004f9ff8  0f 00 00 1a                                      bne #0x4fa03c
004f9ffc  5d 30 84 e2                                      add r3, r4, #0x5d
004fa000  5e 20 84 e2                                      add r2, r4, #0x5e
004fa004  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa008  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa00c  02 00 53 e1                                      cmp r3, r2
004fa010  01 10 20 e0                                      eor r1, r0, r1
004fa014  01 10 43 e5                                      strb r1, [r3, #-1]
004fa018  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa01c  00 10 21 e0                                      eor r1, r1, r0
004fa020  01 10 c2 e5                                      strb r1, [r2, #1]
004fa024  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa028  01 20 42 e2                                      sub r2, r2, #1
004fa02c  00 10 21 e0                                      eor r1, r1, r0
004fa030  01 10 43 e5                                      strb r1, [r3, #-1]
004fa034  01 30 83 e2                                      add r3, r3, #1
004fa038  f1 ff ff 3a                                      blo #0x4fa004
004fa03c  05 00 a0 e1                                      mov r0, r5
004fa040  60 10 84 e2                                      add r1, r4, #0x60
004fa044  11 7c fd eb                                      bl #0x459090
004fa048  01 30 a0 e3                                      mov r3, #1
004fa04c  00 00 53 e3                                      cmp r3, #0
004fa050  04 30 8d e5                                      str r3, [sp, #4]
004fa054  0f 00 00 1a                                      bne #0x4fa098
004fa058  61 30 84 e2                                      add r3, r4, #0x61
004fa05c  62 20 84 e2                                      add r2, r4, #0x62
004fa060  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa064  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa068  02 00 53 e1                                      cmp r3, r2
004fa06c  01 10 20 e0                                      eor r1, r0, r1
004fa070  01 10 43 e5                                      strb r1, [r3, #-1]
004fa074  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa078  00 10 21 e0                                      eor r1, r1, r0
004fa07c  01 10 c2 e5                                      strb r1, [r2, #1]
004fa080  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa084  01 20 42 e2                                      sub r2, r2, #1
004fa088  00 10 21 e0                                      eor r1, r1, r0
004fa08c  01 10 43 e5                                      strb r1, [r3, #-1]
004fa090  01 30 83 e2                                      add r3, r3, #1
004fa094  f1 ff ff 3a                                      blo #0x4fa060
004fa098  05 00 a0 e1                                      mov r0, r5
004fa09c  64 10 84 e2                                      add r1, r4, #0x64
004fa0a0  fa 7b fd eb                                      bl #0x459090
004fa0a4  01 30 a0 e3                                      mov r3, #1
004fa0a8  00 00 53 e3                                      cmp r3, #0
004fa0ac  04 30 8d e5                                      str r3, [sp, #4]
004fa0b0  0f 00 00 1a                                      bne #0x4fa0f4
004fa0b4  65 30 84 e2                                      add r3, r4, #0x65
004fa0b8  66 20 84 e2                                      add r2, r4, #0x66
004fa0bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa0c0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa0c4  02 00 53 e1                                      cmp r3, r2
004fa0c8  01 10 20 e0                                      eor r1, r0, r1
004fa0cc  01 10 43 e5                                      strb r1, [r3, #-1]
004fa0d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa0d4  00 10 21 e0                                      eor r1, r1, r0
004fa0d8  01 10 c2 e5                                      strb r1, [r2, #1]
004fa0dc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa0e0  01 20 42 e2                                      sub r2, r2, #1
004fa0e4  00 10 21 e0                                      eor r1, r1, r0
004fa0e8  01 10 43 e5                                      strb r1, [r3, #-1]
004fa0ec  01 30 83 e2                                      add r3, r3, #1
004fa0f0  f1 ff ff 3a                                      blo #0x4fa0bc
004fa0f4  05 00 a0 e1                                      mov r0, r5
004fa0f8  68 10 84 e2                                      add r1, r4, #0x68
004fa0fc  e3 7b fd eb                                      bl #0x459090
004fa100  01 30 a0 e3                                      mov r3, #1
004fa104  00 00 53 e3                                      cmp r3, #0
004fa108  04 30 8d e5                                      str r3, [sp, #4]
004fa10c  0f 00 00 1a                                      bne #0x4fa150
004fa110  69 30 84 e2                                      add r3, r4, #0x69
004fa114  6a 20 84 e2                                      add r2, r4, #0x6a
004fa118  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa11c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa120  02 00 53 e1                                      cmp r3, r2
004fa124  01 10 20 e0                                      eor r1, r0, r1
004fa128  01 10 43 e5                                      strb r1, [r3, #-1]
004fa12c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa130  00 10 21 e0                                      eor r1, r1, r0
004fa134  01 10 c2 e5                                      strb r1, [r2, #1]
004fa138  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa13c  01 20 42 e2                                      sub r2, r2, #1
004fa140  00 10 21 e0                                      eor r1, r1, r0
004fa144  01 10 43 e5                                      strb r1, [r3, #-1]
004fa148  01 30 83 e2                                      add r3, r3, #1
004fa14c  f1 ff ff 3a                                      blo #0x4fa118
004fa150  05 00 a0 e1                                      mov r0, r5
004fa154  6c 10 84 e2                                      add r1, r4, #0x6c
004fa158  cc 7b fd eb                                      bl #0x459090
004fa15c  01 30 a0 e3                                      mov r3, #1
004fa160  00 00 53 e3                                      cmp r3, #0
004fa164  04 30 8d e5                                      str r3, [sp, #4]
004fa168  0f 00 00 1a                                      bne #0x4fa1ac
004fa16c  6d 30 84 e2                                      add r3, r4, #0x6d
004fa170  6e 20 84 e2                                      add r2, r4, #0x6e
004fa174  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa178  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa17c  02 00 53 e1                                      cmp r3, r2
004fa180  01 10 20 e0                                      eor r1, r0, r1
004fa184  01 10 43 e5                                      strb r1, [r3, #-1]
004fa188  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa18c  00 10 21 e0                                      eor r1, r1, r0
004fa190  01 10 c2 e5                                      strb r1, [r2, #1]
004fa194  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa198  01 20 42 e2                                      sub r2, r2, #1
004fa19c  00 10 21 e0                                      eor r1, r1, r0
004fa1a0  01 10 43 e5                                      strb r1, [r3, #-1]
004fa1a4  01 30 83 e2                                      add r3, r3, #1
004fa1a8  f1 ff ff 3a                                      blo #0x4fa174
004fa1ac  05 00 a0 e1                                      mov r0, r5
004fa1b0  70 10 84 e2                                      add r1, r4, #0x70
004fa1b4  b5 7b fd eb                                      bl #0x459090
004fa1b8  01 30 a0 e3                                      mov r3, #1
004fa1bc  00 00 53 e3                                      cmp r3, #0
004fa1c0  04 30 8d e5                                      str r3, [sp, #4]
004fa1c4  0f 00 00 1a                                      bne #0x4fa208
004fa1c8  71 30 84 e2                                      add r3, r4, #0x71
004fa1cc  72 20 84 e2                                      add r2, r4, #0x72
004fa1d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa1d4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa1d8  02 00 53 e1                                      cmp r3, r2
004fa1dc  01 10 20 e0                                      eor r1, r0, r1
004fa1e0  01 10 43 e5                                      strb r1, [r3, #-1]
004fa1e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa1e8  00 10 21 e0                                      eor r1, r1, r0
004fa1ec  01 10 c2 e5                                      strb r1, [r2, #1]
004fa1f0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa1f4  01 20 42 e2                                      sub r2, r2, #1
004fa1f8  00 10 21 e0                                      eor r1, r1, r0
004fa1fc  01 10 43 e5                                      strb r1, [r3, #-1]
004fa200  01 30 83 e2                                      add r3, r3, #1
004fa204  f1 ff ff 3a                                      blo #0x4fa1d0
004fa208  05 00 a0 e1                                      mov r0, r5
004fa20c  74 10 84 e2                                      add r1, r4, #0x74
004fa210  9e 7b fd eb                                      bl #0x459090
004fa214  01 30 a0 e3                                      mov r3, #1
004fa218  00 00 53 e3                                      cmp r3, #0
004fa21c  04 30 8d e5                                      str r3, [sp, #4]
004fa220  0f 00 00 1a                                      bne #0x4fa264
004fa224  75 30 84 e2                                      add r3, r4, #0x75
004fa228  76 20 84 e2                                      add r2, r4, #0x76
004fa22c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa230  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa234  02 00 53 e1                                      cmp r3, r2
004fa238  01 10 20 e0                                      eor r1, r0, r1
004fa23c  01 10 43 e5                                      strb r1, [r3, #-1]
004fa240  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa244  00 10 21 e0                                      eor r1, r1, r0
004fa248  01 10 c2 e5                                      strb r1, [r2, #1]
004fa24c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa250  01 20 42 e2                                      sub r2, r2, #1
004fa254  00 10 21 e0                                      eor r1, r1, r0
004fa258  01 10 43 e5                                      strb r1, [r3, #-1]
004fa25c  01 30 83 e2                                      add r3, r3, #1
004fa260  f1 ff ff 3a                                      blo #0x4fa22c
004fa264  05 00 a0 e1                                      mov r0, r5
004fa268  78 10 84 e2                                      add r1, r4, #0x78
004fa26c  87 7b fd eb                                      bl #0x459090
004fa270  01 30 a0 e3                                      mov r3, #1
004fa274  00 00 53 e3                                      cmp r3, #0
004fa278  04 30 8d e5                                      str r3, [sp, #4]
004fa27c  0f 00 00 1a                                      bne #0x4fa2c0
004fa280  79 30 84 e2                                      add r3, r4, #0x79
004fa284  7a 20 84 e2                                      add r2, r4, #0x7a
004fa288  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa28c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa290  02 00 53 e1                                      cmp r3, r2
004fa294  01 10 20 e0                                      eor r1, r0, r1
004fa298  01 10 43 e5                                      strb r1, [r3, #-1]
004fa29c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa2a0  00 10 21 e0                                      eor r1, r1, r0
004fa2a4  01 10 c2 e5                                      strb r1, [r2, #1]
004fa2a8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa2ac  01 20 42 e2                                      sub r2, r2, #1
004fa2b0  00 10 21 e0                                      eor r1, r1, r0
004fa2b4  01 10 43 e5                                      strb r1, [r3, #-1]
004fa2b8  01 30 83 e2                                      add r3, r3, #1
004fa2bc  f1 ff ff 3a                                      blo #0x4fa288
004fa2c0  05 00 a0 e1                                      mov r0, r5
004fa2c4  7c 10 84 e2                                      add r1, r4, #0x7c
004fa2c8  70 7b fd eb                                      bl #0x459090
004fa2cc  01 30 a0 e3                                      mov r3, #1
004fa2d0  00 00 53 e3                                      cmp r3, #0
004fa2d4  04 30 8d e5                                      str r3, [sp, #4]
004fa2d8  0f 00 00 1a                                      bne #0x4fa31c
004fa2dc  7d 30 84 e2                                      add r3, r4, #0x7d
004fa2e0  7e 20 84 e2                                      add r2, r4, #0x7e
004fa2e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa2e8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa2ec  02 00 53 e1                                      cmp r3, r2
004fa2f0  01 10 20 e0                                      eor r1, r0, r1
004fa2f4  01 10 43 e5                                      strb r1, [r3, #-1]
004fa2f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa2fc  00 10 21 e0                                      eor r1, r1, r0
004fa300  01 10 c2 e5                                      strb r1, [r2, #1]
004fa304  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa308  01 20 42 e2                                      sub r2, r2, #1
004fa30c  00 10 21 e0                                      eor r1, r1, r0
004fa310  01 10 43 e5                                      strb r1, [r3, #-1]
004fa314  01 30 83 e2                                      add r3, r3, #1
004fa318  f1 ff ff 3a                                      blo #0x4fa2e4
004fa31c  05 00 a0 e1                                      mov r0, r5
004fa320  80 10 84 e2                                      add r1, r4, #0x80
004fa324  59 7b fd eb                                      bl #0x459090
004fa328  01 30 a0 e3                                      mov r3, #1
004fa32c  00 00 53 e3                                      cmp r3, #0
004fa330  04 30 8d e5                                      str r3, [sp, #4]
004fa334  0f 00 00 1a                                      bne #0x4fa378
004fa338  81 30 84 e2                                      add r3, r4, #0x81
004fa33c  82 20 84 e2                                      add r2, r4, #0x82
004fa340  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa344  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa348  02 00 53 e1                                      cmp r3, r2
004fa34c  01 10 20 e0                                      eor r1, r0, r1
004fa350  01 10 43 e5                                      strb r1, [r3, #-1]
004fa354  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa358  00 10 21 e0                                      eor r1, r1, r0
004fa35c  01 10 c2 e5                                      strb r1, [r2, #1]
004fa360  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa364  01 20 42 e2                                      sub r2, r2, #1
004fa368  00 10 21 e0                                      eor r1, r1, r0
004fa36c  01 10 43 e5                                      strb r1, [r3, #-1]
004fa370  01 30 83 e2                                      add r3, r3, #1
004fa374  f1 ff ff 3a                                      blo #0x4fa340
004fa378  05 00 a0 e1                                      mov r0, r5
004fa37c  84 10 84 e2                                      add r1, r4, #0x84
004fa380  42 7b fd eb                                      bl #0x459090
004fa384  01 30 a0 e3                                      mov r3, #1
004fa388  00 00 53 e3                                      cmp r3, #0
004fa38c  04 30 8d e5                                      str r3, [sp, #4]
004fa390  0f 00 00 1a                                      bne #0x4fa3d4
004fa394  85 30 84 e2                                      add r3, r4, #0x85
004fa398  86 20 84 e2                                      add r2, r4, #0x86
004fa39c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa3a0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa3a4  02 00 53 e1                                      cmp r3, r2
004fa3a8  01 10 20 e0                                      eor r1, r0, r1
004fa3ac  01 10 43 e5                                      strb r1, [r3, #-1]
004fa3b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa3b4  00 10 21 e0                                      eor r1, r1, r0
004fa3b8  01 10 c2 e5                                      strb r1, [r2, #1]
004fa3bc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa3c0  01 20 42 e2                                      sub r2, r2, #1
004fa3c4  00 10 21 e0                                      eor r1, r1, r0
004fa3c8  01 10 43 e5                                      strb r1, [r3, #-1]
004fa3cc  01 30 83 e2                                      add r3, r3, #1
004fa3d0  f1 ff ff 3a                                      blo #0x4fa39c
004fa3d4  05 00 a0 e1                                      mov r0, r5
004fa3d8  88 10 84 e2                                      add r1, r4, #0x88
004fa3dc  2b 7b fd eb                                      bl #0x459090
004fa3e0  01 30 a0 e3                                      mov r3, #1
004fa3e4  00 00 53 e3                                      cmp r3, #0
004fa3e8  04 30 8d e5                                      str r3, [sp, #4]
004fa3ec  0f 00 00 1a                                      bne #0x4fa430
004fa3f0  89 30 84 e2                                      add r3, r4, #0x89
004fa3f4  8a 20 84 e2                                      add r2, r4, #0x8a
004fa3f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa3fc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa400  02 00 53 e1                                      cmp r3, r2
004fa404  01 10 20 e0                                      eor r1, r0, r1
004fa408  01 10 43 e5                                      strb r1, [r3, #-1]
004fa40c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa410  00 10 21 e0                                      eor r1, r1, r0
004fa414  01 10 c2 e5                                      strb r1, [r2, #1]
004fa418  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa41c  01 20 42 e2                                      sub r2, r2, #1
004fa420  00 10 21 e0                                      eor r1, r1, r0
004fa424  01 10 43 e5                                      strb r1, [r3, #-1]
004fa428  01 30 83 e2                                      add r3, r3, #1
004fa42c  f1 ff ff 3a                                      blo #0x4fa3f8
004fa430  05 00 a0 e1                                      mov r0, r5
004fa434  8c 10 84 e2                                      add r1, r4, #0x8c
004fa438  14 7b fd eb                                      bl #0x459090
004fa43c  01 30 a0 e3                                      mov r3, #1
004fa440  00 00 53 e3                                      cmp r3, #0
004fa444  04 30 8d e5                                      str r3, [sp, #4]
004fa448  0f 00 00 1a                                      bne #0x4fa48c
004fa44c  8d 30 84 e2                                      add r3, r4, #0x8d
004fa450  8e 20 84 e2                                      add r2, r4, #0x8e
004fa454  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa458  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa45c  02 00 53 e1                                      cmp r3, r2
004fa460  01 10 20 e0                                      eor r1, r0, r1
004fa464  01 10 43 e5                                      strb r1, [r3, #-1]
004fa468  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa46c  00 10 21 e0                                      eor r1, r1, r0
004fa470  01 10 c2 e5                                      strb r1, [r2, #1]
004fa474  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa478  01 20 42 e2                                      sub r2, r2, #1
004fa47c  00 10 21 e0                                      eor r1, r1, r0
004fa480  01 10 43 e5                                      strb r1, [r3, #-1]
004fa484  01 30 83 e2                                      add r3, r3, #1
004fa488  f1 ff ff 3a                                      blo #0x4fa454
004fa48c  05 00 a0 e1                                      mov r0, r5
004fa490  90 10 84 e2                                      add r1, r4, #0x90
004fa494  fd 7a fd eb                                      bl #0x459090
004fa498  01 30 a0 e3                                      mov r3, #1
004fa49c  00 00 53 e3                                      cmp r3, #0
004fa4a0  04 30 8d e5                                      str r3, [sp, #4]
004fa4a4  0f 00 00 1a                                      bne #0x4fa4e8
004fa4a8  91 30 84 e2                                      add r3, r4, #0x91
004fa4ac  92 20 84 e2                                      add r2, r4, #0x92
004fa4b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa4b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa4b8  02 00 53 e1                                      cmp r3, r2
004fa4bc  01 10 20 e0                                      eor r1, r0, r1
004fa4c0  01 10 43 e5                                      strb r1, [r3, #-1]
004fa4c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa4c8  00 10 21 e0                                      eor r1, r1, r0
004fa4cc  01 10 c2 e5                                      strb r1, [r2, #1]
004fa4d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa4d4  01 20 42 e2                                      sub r2, r2, #1
004fa4d8  00 10 21 e0                                      eor r1, r1, r0
004fa4dc  01 10 43 e5                                      strb r1, [r3, #-1]
004fa4e0  01 30 83 e2                                      add r3, r3, #1
004fa4e4  f1 ff ff 3a                                      blo #0x4fa4b0
004fa4e8  05 00 a0 e1                                      mov r0, r5
004fa4ec  94 10 84 e2                                      add r1, r4, #0x94
004fa4f0  e6 7a fd eb                                      bl #0x459090
004fa4f4  01 30 a0 e3                                      mov r3, #1
004fa4f8  00 00 53 e3                                      cmp r3, #0
004fa4fc  04 30 8d e5                                      str r3, [sp, #4]
004fa500  0f 00 00 1a                                      bne #0x4fa544
004fa504  95 30 84 e2                                      add r3, r4, #0x95
004fa508  96 20 84 e2                                      add r2, r4, #0x96
004fa50c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa510  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa514  02 00 53 e1                                      cmp r3, r2
004fa518  01 10 20 e0                                      eor r1, r0, r1
004fa51c  01 10 43 e5                                      strb r1, [r3, #-1]
004fa520  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa524  00 10 21 e0                                      eor r1, r1, r0
004fa528  01 10 c2 e5                                      strb r1, [r2, #1]
004fa52c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa530  01 20 42 e2                                      sub r2, r2, #1
004fa534  00 10 21 e0                                      eor r1, r1, r0
004fa538  01 10 43 e5                                      strb r1, [r3, #-1]
004fa53c  01 30 83 e2                                      add r3, r3, #1
004fa540  f1 ff ff 3a                                      blo #0x4fa50c
004fa544  05 00 a0 e1                                      mov r0, r5
004fa548  98 10 84 e2                                      add r1, r4, #0x98
004fa54c  cf 7a fd eb                                      bl #0x459090
004fa550  01 30 a0 e3                                      mov r3, #1
004fa554  00 00 53 e3                                      cmp r3, #0
004fa558  04 30 8d e5                                      str r3, [sp, #4]
004fa55c  0f 00 00 1a                                      bne #0x4fa5a0
004fa560  99 30 84 e2                                      add r3, r4, #0x99
004fa564  9a 20 84 e2                                      add r2, r4, #0x9a
004fa568  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa56c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa570  02 00 53 e1                                      cmp r3, r2
004fa574  01 10 20 e0                                      eor r1, r0, r1
004fa578  01 10 43 e5                                      strb r1, [r3, #-1]
004fa57c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa580  00 10 21 e0                                      eor r1, r1, r0
004fa584  01 10 c2 e5                                      strb r1, [r2, #1]
004fa588  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa58c  01 20 42 e2                                      sub r2, r2, #1
004fa590  00 10 21 e0                                      eor r1, r1, r0
004fa594  01 10 43 e5                                      strb r1, [r3, #-1]
004fa598  01 30 83 e2                                      add r3, r3, #1
004fa59c  f1 ff ff 3a                                      blo #0x4fa568
004fa5a0  05 00 a0 e1                                      mov r0, r5
004fa5a4  9c 10 84 e2                                      add r1, r4, #0x9c
004fa5a8  b8 7a fd eb                                      bl #0x459090
004fa5ac  01 30 a0 e3                                      mov r3, #1
004fa5b0  00 00 53 e3                                      cmp r3, #0
004fa5b4  04 30 8d e5                                      str r3, [sp, #4]
004fa5b8  0f 00 00 1a                                      bne #0x4fa5fc
004fa5bc  9d 30 84 e2                                      add r3, r4, #0x9d
004fa5c0  9e 20 84 e2                                      add r2, r4, #0x9e
004fa5c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa5c8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa5cc  02 00 53 e1                                      cmp r3, r2
004fa5d0  01 10 20 e0                                      eor r1, r0, r1
004fa5d4  01 10 43 e5                                      strb r1, [r3, #-1]
004fa5d8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa5dc  00 10 21 e0                                      eor r1, r1, r0
004fa5e0  01 10 c2 e5                                      strb r1, [r2, #1]
004fa5e4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa5e8  01 20 42 e2                                      sub r2, r2, #1
004fa5ec  00 10 21 e0                                      eor r1, r1, r0
004fa5f0  01 10 43 e5                                      strb r1, [r3, #-1]
004fa5f4  01 30 83 e2                                      add r3, r3, #1
004fa5f8  f1 ff ff 3a                                      blo #0x4fa5c4
004fa5fc  05 00 a0 e1                                      mov r0, r5
004fa600  a0 10 84 e2                                      add r1, r4, #0xa0
004fa604  a1 7a fd eb                                      bl #0x459090
004fa608  01 30 a0 e3                                      mov r3, #1
004fa60c  00 00 53 e3                                      cmp r3, #0
004fa610  04 30 8d e5                                      str r3, [sp, #4]
004fa614  0f 00 00 1a                                      bne #0x4fa658
004fa618  a2 30 84 e2                                      add r3, r4, #0xa2
004fa61c  a1 40 84 e2                                      add r4, r4, #0xa1
004fa620  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fa624  01 20 54 e5                                      ldrb r2, [r4, #-1]
004fa628  03 00 54 e1                                      cmp r4, r3
004fa62c  02 20 21 e0                                      eor r2, r1, r2
004fa630  01 20 44 e5                                      strb r2, [r4, #-1]
004fa634  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fa638  01 20 22 e0                                      eor r2, r2, r1
004fa63c  01 20 c3 e5                                      strb r2, [r3, #1]
004fa640  01 10 54 e5                                      ldrb r1, [r4, #-1]
004fa644  01 30 43 e2                                      sub r3, r3, #1
004fa648  01 20 22 e0                                      eor r2, r2, r1
004fa64c  01 20 44 e5                                      strb r2, [r4, #-1]
004fa650  01 40 84 e2                                      add r4, r4, #1
004fa654  f1 ff ff 3a                                      blo #0x4fa620
004fa658  08 d0 8d e2                                      add sp, sp, #8
004fa65c  70 80 bd e8                                      pop {r4, r5, r6, pc}
