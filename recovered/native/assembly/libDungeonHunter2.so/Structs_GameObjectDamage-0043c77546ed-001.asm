; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6ba0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GameObjectDamage
; alias: _ZN7Structs16GameObjectDamageD2Ev
; demangled: Structs::GameObjectDamage::~GameObjectDamage()
; decoder-mode: arm
004c6ba0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6ba4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GameObjectDamage
; alias: _ZN7Structs16GameObjectDamageD1Ev
; demangled: Structs::GameObjectDamage::~GameObjectDamage()
; decoder-mode: arm
004c6ba4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6ba8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GameObjectDamage
; alias: _ZN7Structs16GameObjectDamage8finalizeEv
; demangled: Structs::GameObjectDamage::finalize()
; decoder-mode: arm
004c6ba8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce304, declared_size=28, range_size=28, mode=arm
; class-group: Structs::GameObjectDamage
; alias: _ZN7Structs16GameObjectDamageD0Ev
; demangled: Structs::GameObjectDamage::~GameObjectDamage()
; decoder-mode: arm
004ce304  10 40 2d e9                                      push {r4, lr}
004ce308  00 40 a0 e1                                      mov r4, r0
004ce30c  24 e2 ff eb                                      bl #0x4c6ba4
004ce310  04 00 a0 e1                                      mov r0, r4
004ce314  49 08 f9 eb                                      bl #0x310440
004ce318  04 00 a0 e1                                      mov r0, r4
004ce31c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f1dd0, declared_size=484, range_size=484, mode=arm
; class-group: Structs::GameObjectDamage
; alias: _ZN7Structs16GameObjectDamage4readEP11IStreamBase
; demangled: Structs::GameObjectDamage::read(IStreamBase*)
; decoder-mode: arm
004f1dd0  30 40 2d e9                                      push {r4, r5, lr}
004f1dd4  00 40 a0 e1                                      mov r4, r0
004f1dd8  0c d0 4d e2                                      sub sp, sp, #0xc
004f1ddc  01 00 a0 e1                                      mov r0, r1
004f1de0  01 50 a0 e1                                      mov r5, r1
004f1de4  04 10 84 e2                                      add r1, r4, #4
004f1de8  a8 9c fd eb                                      bl #0x459090
004f1dec  01 30 a0 e3                                      mov r3, #1
004f1df0  00 00 53 e3                                      cmp r3, #0
004f1df4  04 30 8d e5                                      str r3, [sp, #4]
004f1df8  0f 00 00 1a                                      bne #0x4f1e3c
004f1dfc  05 30 84 e2                                      add r3, r4, #5
004f1e00  06 20 84 e2                                      add r2, r4, #6
004f1e04  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1e08  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1e0c  03 00 52 e1                                      cmp r2, r3
004f1e10  01 10 20 e0                                      eor r1, r0, r1
004f1e14  01 10 43 e5                                      strb r1, [r3, #-1]
004f1e18  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1e1c  00 10 21 e0                                      eor r1, r1, r0
004f1e20  01 10 c2 e5                                      strb r1, [r2, #1]
004f1e24  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1e28  01 20 42 e2                                      sub r2, r2, #1
004f1e2c  00 10 21 e0                                      eor r1, r1, r0
004f1e30  01 10 43 e5                                      strb r1, [r3, #-1]
004f1e34  01 30 83 e2                                      add r3, r3, #1
004f1e38  f1 ff ff 8a                                      bhi #0x4f1e04
004f1e3c  05 00 a0 e1                                      mov r0, r5
004f1e40  08 10 84 e2                                      add r1, r4, #8
004f1e44  91 9c fd eb                                      bl #0x459090
004f1e48  01 30 a0 e3                                      mov r3, #1
004f1e4c  00 00 53 e3                                      cmp r3, #0
004f1e50  04 30 8d e5                                      str r3, [sp, #4]
004f1e54  0f 00 00 1a                                      bne #0x4f1e98
004f1e58  09 30 84 e2                                      add r3, r4, #9
004f1e5c  0a 20 84 e2                                      add r2, r4, #0xa
004f1e60  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1e64  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1e68  03 00 52 e1                                      cmp r2, r3
004f1e6c  01 10 20 e0                                      eor r1, r0, r1
004f1e70  01 10 43 e5                                      strb r1, [r3, #-1]
004f1e74  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1e78  00 10 21 e0                                      eor r1, r1, r0
004f1e7c  01 10 c2 e5                                      strb r1, [r2, #1]
004f1e80  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1e84  01 20 42 e2                                      sub r2, r2, #1
004f1e88  00 10 21 e0                                      eor r1, r1, r0
004f1e8c  01 10 43 e5                                      strb r1, [r3, #-1]
004f1e90  01 30 83 e2                                      add r3, r3, #1
004f1e94  f1 ff ff 8a                                      bhi #0x4f1e60
004f1e98  05 00 a0 e1                                      mov r0, r5
004f1e9c  0c 10 84 e2                                      add r1, r4, #0xc
004f1ea0  7a 9c fd eb                                      bl #0x459090
004f1ea4  01 30 a0 e3                                      mov r3, #1
004f1ea8  00 00 53 e3                                      cmp r3, #0
004f1eac  04 30 8d e5                                      str r3, [sp, #4]
004f1eb0  0f 00 00 1a                                      bne #0x4f1ef4
004f1eb4  0d 30 84 e2                                      add r3, r4, #0xd
004f1eb8  0e 20 84 e2                                      add r2, r4, #0xe
004f1ebc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1ec0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1ec4  03 00 52 e1                                      cmp r2, r3
004f1ec8  01 10 20 e0                                      eor r1, r0, r1
004f1ecc  01 10 43 e5                                      strb r1, [r3, #-1]
004f1ed0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1ed4  00 10 21 e0                                      eor r1, r1, r0
004f1ed8  01 10 c2 e5                                      strb r1, [r2, #1]
004f1edc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1ee0  01 20 42 e2                                      sub r2, r2, #1
004f1ee4  00 10 21 e0                                      eor r1, r1, r0
004f1ee8  01 10 43 e5                                      strb r1, [r3, #-1]
004f1eec  01 30 83 e2                                      add r3, r3, #1
004f1ef0  f1 ff ff 8a                                      bhi #0x4f1ebc
004f1ef4  05 00 a0 e1                                      mov r0, r5
004f1ef8  10 10 84 e2                                      add r1, r4, #0x10
004f1efc  63 9c fd eb                                      bl #0x459090
004f1f00  01 30 a0 e3                                      mov r3, #1
004f1f04  00 00 53 e3                                      cmp r3, #0
004f1f08  04 30 8d e5                                      str r3, [sp, #4]
004f1f0c  0f 00 00 1a                                      bne #0x4f1f50
004f1f10  11 30 84 e2                                      add r3, r4, #0x11
004f1f14  12 20 84 e2                                      add r2, r4, #0x12
004f1f18  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1f1c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1f20  03 00 52 e1                                      cmp r2, r3
004f1f24  01 10 20 e0                                      eor r1, r0, r1
004f1f28  01 10 43 e5                                      strb r1, [r3, #-1]
004f1f2c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1f30  00 10 21 e0                                      eor r1, r1, r0
004f1f34  01 10 c2 e5                                      strb r1, [r2, #1]
004f1f38  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1f3c  01 20 42 e2                                      sub r2, r2, #1
004f1f40  00 10 21 e0                                      eor r1, r1, r0
004f1f44  01 10 43 e5                                      strb r1, [r3, #-1]
004f1f48  01 30 83 e2                                      add r3, r3, #1
004f1f4c  f1 ff ff 8a                                      bhi #0x4f1f18
004f1f50  05 00 a0 e1                                      mov r0, r5
004f1f54  14 10 84 e2                                      add r1, r4, #0x14
004f1f58  4c 9c fd eb                                      bl #0x459090
004f1f5c  01 30 a0 e3                                      mov r3, #1
004f1f60  00 00 53 e3                                      cmp r3, #0
004f1f64  04 30 8d e5                                      str r3, [sp, #4]
004f1f68  0f 00 00 1a                                      bne #0x4f1fac
004f1f6c  16 30 84 e2                                      add r3, r4, #0x16
004f1f70  15 40 84 e2                                      add r4, r4, #0x15
004f1f74  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f1f78  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f1f7c  04 00 53 e1                                      cmp r3, r4
004f1f80  02 20 21 e0                                      eor r2, r1, r2
004f1f84  01 20 44 e5                                      strb r2, [r4, #-1]
004f1f88  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f1f8c  01 20 22 e0                                      eor r2, r2, r1
004f1f90  01 20 c3 e5                                      strb r2, [r3, #1]
004f1f94  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f1f98  01 30 43 e2                                      sub r3, r3, #1
004f1f9c  01 20 22 e0                                      eor r2, r2, r1
004f1fa0  01 20 44 e5                                      strb r2, [r4, #-1]
004f1fa4  01 40 84 e2                                      add r4, r4, #1
004f1fa8  f1 ff ff 8a                                      bhi #0x4f1f74
004f1fac  0c d0 8d e2                                      add sp, sp, #0xc
004f1fb0  30 80 bd e8                                      pop {r4, r5, pc}
