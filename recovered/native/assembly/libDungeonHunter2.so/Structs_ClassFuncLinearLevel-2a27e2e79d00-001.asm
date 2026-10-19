; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5700, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncLinearLevel
; alias: _ZN7Structs20ClassFuncLinearLevelD2Ev
; demangled: Structs::ClassFuncLinearLevel::~ClassFuncLinearLevel()
; decoder-mode: arm
004c5700  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c5704, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncLinearLevel
; alias: _ZN7Structs20ClassFuncLinearLevelD1Ev
; demangled: Structs::ClassFuncLinearLevel::~ClassFuncLinearLevel()
; decoder-mode: arm
004c5704  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c5708, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncLinearLevel
; alias: _ZN7Structs20ClassFuncLinearLevel8finalizeEv
; demangled: Structs::ClassFuncLinearLevel::finalize()
; decoder-mode: arm
004c5708  1e ff 2f e1                                      bx lr

; FUNCTION 0x004cea04, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ClassFuncLinearLevel
; alias: _ZN7Structs20ClassFuncLinearLevelD0Ev
; demangled: Structs::ClassFuncLinearLevel::~ClassFuncLinearLevel()
; decoder-mode: arm
004cea04  10 40 2d e9                                      push {r4, lr}
004cea08  00 40 a0 e1                                      mov r4, r0
004cea0c  3c db ff eb                                      bl #0x4c5704
004cea10  04 00 a0 e1                                      mov r0, r4
004cea14  89 06 f9 eb                                      bl #0x310440
004cea18  04 00 a0 e1                                      mov r0, r4
004cea1c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f0ca0, declared_size=484, range_size=484, mode=arm
; class-group: Structs::ClassFuncLinearLevel
; alias: _ZN7Structs20ClassFuncLinearLevel4readEP11IStreamBase
; demangled: Structs::ClassFuncLinearLevel::read(IStreamBase*)
; decoder-mode: arm
004f0ca0  30 40 2d e9                                      push {r4, r5, lr}
004f0ca4  00 40 a0 e1                                      mov r4, r0
004f0ca8  0c d0 4d e2                                      sub sp, sp, #0xc
004f0cac  01 00 a0 e1                                      mov r0, r1
004f0cb0  01 50 a0 e1                                      mov r5, r1
004f0cb4  04 10 84 e2                                      add r1, r4, #4
004f0cb8  f4 a0 fd eb                                      bl #0x459090
004f0cbc  01 30 a0 e3                                      mov r3, #1
004f0cc0  00 00 53 e3                                      cmp r3, #0
004f0cc4  04 30 8d e5                                      str r3, [sp, #4]
004f0cc8  0f 00 00 1a                                      bne #0x4f0d0c
004f0ccc  05 30 84 e2                                      add r3, r4, #5
004f0cd0  06 20 84 e2                                      add r2, r4, #6
004f0cd4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0cd8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0cdc  03 00 52 e1                                      cmp r2, r3
004f0ce0  01 10 20 e0                                      eor r1, r0, r1
004f0ce4  01 10 43 e5                                      strb r1, [r3, #-1]
004f0ce8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0cec  00 10 21 e0                                      eor r1, r1, r0
004f0cf0  01 10 c2 e5                                      strb r1, [r2, #1]
004f0cf4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0cf8  01 20 42 e2                                      sub r2, r2, #1
004f0cfc  00 10 21 e0                                      eor r1, r1, r0
004f0d00  01 10 43 e5                                      strb r1, [r3, #-1]
004f0d04  01 30 83 e2                                      add r3, r3, #1
004f0d08  f1 ff ff 8a                                      bhi #0x4f0cd4
004f0d0c  05 00 a0 e1                                      mov r0, r5
004f0d10  08 10 84 e2                                      add r1, r4, #8
004f0d14  dd a0 fd eb                                      bl #0x459090
004f0d18  01 30 a0 e3                                      mov r3, #1
004f0d1c  00 00 53 e3                                      cmp r3, #0
004f0d20  04 30 8d e5                                      str r3, [sp, #4]
004f0d24  0f 00 00 1a                                      bne #0x4f0d68
004f0d28  09 30 84 e2                                      add r3, r4, #9
004f0d2c  0a 20 84 e2                                      add r2, r4, #0xa
004f0d30  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0d34  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0d38  03 00 52 e1                                      cmp r2, r3
004f0d3c  01 10 20 e0                                      eor r1, r0, r1
004f0d40  01 10 43 e5                                      strb r1, [r3, #-1]
004f0d44  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0d48  00 10 21 e0                                      eor r1, r1, r0
004f0d4c  01 10 c2 e5                                      strb r1, [r2, #1]
004f0d50  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0d54  01 20 42 e2                                      sub r2, r2, #1
004f0d58  00 10 21 e0                                      eor r1, r1, r0
004f0d5c  01 10 43 e5                                      strb r1, [r3, #-1]
004f0d60  01 30 83 e2                                      add r3, r3, #1
004f0d64  f1 ff ff 8a                                      bhi #0x4f0d30
004f0d68  05 00 a0 e1                                      mov r0, r5
004f0d6c  0c 10 84 e2                                      add r1, r4, #0xc
004f0d70  c6 a0 fd eb                                      bl #0x459090
004f0d74  01 30 a0 e3                                      mov r3, #1
004f0d78  00 00 53 e3                                      cmp r3, #0
004f0d7c  04 30 8d e5                                      str r3, [sp, #4]
004f0d80  0f 00 00 1a                                      bne #0x4f0dc4
004f0d84  0d 30 84 e2                                      add r3, r4, #0xd
004f0d88  0e 20 84 e2                                      add r2, r4, #0xe
004f0d8c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0d90  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0d94  03 00 52 e1                                      cmp r2, r3
004f0d98  01 10 20 e0                                      eor r1, r0, r1
004f0d9c  01 10 43 e5                                      strb r1, [r3, #-1]
004f0da0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0da4  00 10 21 e0                                      eor r1, r1, r0
004f0da8  01 10 c2 e5                                      strb r1, [r2, #1]
004f0dac  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0db0  01 20 42 e2                                      sub r2, r2, #1
004f0db4  00 10 21 e0                                      eor r1, r1, r0
004f0db8  01 10 43 e5                                      strb r1, [r3, #-1]
004f0dbc  01 30 83 e2                                      add r3, r3, #1
004f0dc0  f1 ff ff 8a                                      bhi #0x4f0d8c
004f0dc4  05 00 a0 e1                                      mov r0, r5
004f0dc8  10 10 84 e2                                      add r1, r4, #0x10
004f0dcc  af a0 fd eb                                      bl #0x459090
004f0dd0  01 30 a0 e3                                      mov r3, #1
004f0dd4  00 00 53 e3                                      cmp r3, #0
004f0dd8  04 30 8d e5                                      str r3, [sp, #4]
004f0ddc  0f 00 00 1a                                      bne #0x4f0e20
004f0de0  11 30 84 e2                                      add r3, r4, #0x11
004f0de4  12 20 84 e2                                      add r2, r4, #0x12
004f0de8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0dec  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0df0  03 00 52 e1                                      cmp r2, r3
004f0df4  01 10 20 e0                                      eor r1, r0, r1
004f0df8  01 10 43 e5                                      strb r1, [r3, #-1]
004f0dfc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0e00  00 10 21 e0                                      eor r1, r1, r0
004f0e04  01 10 c2 e5                                      strb r1, [r2, #1]
004f0e08  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0e0c  01 20 42 e2                                      sub r2, r2, #1
004f0e10  00 10 21 e0                                      eor r1, r1, r0
004f0e14  01 10 43 e5                                      strb r1, [r3, #-1]
004f0e18  01 30 83 e2                                      add r3, r3, #1
004f0e1c  f1 ff ff 8a                                      bhi #0x4f0de8
004f0e20  05 00 a0 e1                                      mov r0, r5
004f0e24  14 10 84 e2                                      add r1, r4, #0x14
004f0e28  98 a0 fd eb                                      bl #0x459090
004f0e2c  01 30 a0 e3                                      mov r3, #1
004f0e30  00 00 53 e3                                      cmp r3, #0
004f0e34  04 30 8d e5                                      str r3, [sp, #4]
004f0e38  0f 00 00 1a                                      bne #0x4f0e7c
004f0e3c  16 30 84 e2                                      add r3, r4, #0x16
004f0e40  15 40 84 e2                                      add r4, r4, #0x15
004f0e44  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f0e48  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f0e4c  04 00 53 e1                                      cmp r3, r4
004f0e50  02 20 21 e0                                      eor r2, r1, r2
004f0e54  01 20 44 e5                                      strb r2, [r4, #-1]
004f0e58  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f0e5c  01 20 22 e0                                      eor r2, r2, r1
004f0e60  01 20 c3 e5                                      strb r2, [r3, #1]
004f0e64  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f0e68  01 30 43 e2                                      sub r3, r3, #1
004f0e6c  01 20 22 e0                                      eor r2, r2, r1
004f0e70  01 20 44 e5                                      strb r2, [r4, #-1]
004f0e74  01 40 84 e2                                      add r4, r4, #1
004f0e78  f1 ff ff 8a                                      bhi #0x4f0e44
004f0e7c  0c d0 8d e2                                      add sp, sp, #0xc
004f0e80  30 80 bd e8                                      pop {r4, r5, pc}
