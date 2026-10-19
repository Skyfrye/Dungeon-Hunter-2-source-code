; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c56f4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncMinMax
; alias: _ZN7Structs15ClassFuncMinMaxD2Ev
; demangled: Structs::ClassFuncMinMax::~ClassFuncMinMax()
; decoder-mode: arm
004c56f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c56f8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncMinMax
; alias: _ZN7Structs15ClassFuncMinMaxD1Ev
; demangled: Structs::ClassFuncMinMax::~ClassFuncMinMax()
; decoder-mode: arm
004c56f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c56fc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncMinMax
; alias: _ZN7Structs15ClassFuncMinMax8finalizeEv
; demangled: Structs::ClassFuncMinMax::finalize()
; decoder-mode: arm
004c56fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x004cea20, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ClassFuncMinMax
; alias: _ZN7Structs15ClassFuncMinMaxD0Ev
; demangled: Structs::ClassFuncMinMax::~ClassFuncMinMax()
; decoder-mode: arm
004cea20  10 40 2d e9                                      push {r4, lr}
004cea24  00 40 a0 e1                                      mov r4, r0
004cea28  32 db ff eb                                      bl #0x4c56f8
004cea2c  04 00 a0 e1                                      mov r0, r4
004cea30  82 06 f9 eb                                      bl #0x310440
004cea34  04 00 a0 e1                                      mov r0, r4
004cea38  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f0e84, declared_size=484, range_size=484, mode=arm
; class-group: Structs::ClassFuncMinMax
; alias: _ZN7Structs15ClassFuncMinMax4readEP11IStreamBase
; demangled: Structs::ClassFuncMinMax::read(IStreamBase*)
; decoder-mode: arm
004f0e84  30 40 2d e9                                      push {r4, r5, lr}
004f0e88  00 40 a0 e1                                      mov r4, r0
004f0e8c  0c d0 4d e2                                      sub sp, sp, #0xc
004f0e90  01 00 a0 e1                                      mov r0, r1
004f0e94  01 50 a0 e1                                      mov r5, r1
004f0e98  04 10 84 e2                                      add r1, r4, #4
004f0e9c  7b a0 fd eb                                      bl #0x459090
004f0ea0  01 30 a0 e3                                      mov r3, #1
004f0ea4  00 00 53 e3                                      cmp r3, #0
004f0ea8  04 30 8d e5                                      str r3, [sp, #4]
004f0eac  0f 00 00 1a                                      bne #0x4f0ef0
004f0eb0  05 30 84 e2                                      add r3, r4, #5
004f0eb4  06 20 84 e2                                      add r2, r4, #6
004f0eb8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0ebc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0ec0  03 00 52 e1                                      cmp r2, r3
004f0ec4  01 10 20 e0                                      eor r1, r0, r1
004f0ec8  01 10 43 e5                                      strb r1, [r3, #-1]
004f0ecc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0ed0  00 10 21 e0                                      eor r1, r1, r0
004f0ed4  01 10 c2 e5                                      strb r1, [r2, #1]
004f0ed8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0edc  01 20 42 e2                                      sub r2, r2, #1
004f0ee0  00 10 21 e0                                      eor r1, r1, r0
004f0ee4  01 10 43 e5                                      strb r1, [r3, #-1]
004f0ee8  01 30 83 e2                                      add r3, r3, #1
004f0eec  f1 ff ff 8a                                      bhi #0x4f0eb8
004f0ef0  05 00 a0 e1                                      mov r0, r5
004f0ef4  08 10 84 e2                                      add r1, r4, #8
004f0ef8  64 a0 fd eb                                      bl #0x459090
004f0efc  01 30 a0 e3                                      mov r3, #1
004f0f00  00 00 53 e3                                      cmp r3, #0
004f0f04  04 30 8d e5                                      str r3, [sp, #4]
004f0f08  0f 00 00 1a                                      bne #0x4f0f4c
004f0f0c  09 30 84 e2                                      add r3, r4, #9
004f0f10  0a 20 84 e2                                      add r2, r4, #0xa
004f0f14  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0f18  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0f1c  03 00 52 e1                                      cmp r2, r3
004f0f20  01 10 20 e0                                      eor r1, r0, r1
004f0f24  01 10 43 e5                                      strb r1, [r3, #-1]
004f0f28  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0f2c  00 10 21 e0                                      eor r1, r1, r0
004f0f30  01 10 c2 e5                                      strb r1, [r2, #1]
004f0f34  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0f38  01 20 42 e2                                      sub r2, r2, #1
004f0f3c  00 10 21 e0                                      eor r1, r1, r0
004f0f40  01 10 43 e5                                      strb r1, [r3, #-1]
004f0f44  01 30 83 e2                                      add r3, r3, #1
004f0f48  f1 ff ff 8a                                      bhi #0x4f0f14
004f0f4c  05 00 a0 e1                                      mov r0, r5
004f0f50  0c 10 84 e2                                      add r1, r4, #0xc
004f0f54  4d a0 fd eb                                      bl #0x459090
004f0f58  01 30 a0 e3                                      mov r3, #1
004f0f5c  00 00 53 e3                                      cmp r3, #0
004f0f60  04 30 8d e5                                      str r3, [sp, #4]
004f0f64  0f 00 00 1a                                      bne #0x4f0fa8
004f0f68  0d 30 84 e2                                      add r3, r4, #0xd
004f0f6c  0e 20 84 e2                                      add r2, r4, #0xe
004f0f70  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0f74  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0f78  03 00 52 e1                                      cmp r2, r3
004f0f7c  01 10 20 e0                                      eor r1, r0, r1
004f0f80  01 10 43 e5                                      strb r1, [r3, #-1]
004f0f84  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0f88  00 10 21 e0                                      eor r1, r1, r0
004f0f8c  01 10 c2 e5                                      strb r1, [r2, #1]
004f0f90  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0f94  01 20 42 e2                                      sub r2, r2, #1
004f0f98  00 10 21 e0                                      eor r1, r1, r0
004f0f9c  01 10 43 e5                                      strb r1, [r3, #-1]
004f0fa0  01 30 83 e2                                      add r3, r3, #1
004f0fa4  f1 ff ff 8a                                      bhi #0x4f0f70
004f0fa8  05 00 a0 e1                                      mov r0, r5
004f0fac  10 10 84 e2                                      add r1, r4, #0x10
004f0fb0  36 a0 fd eb                                      bl #0x459090
004f0fb4  01 30 a0 e3                                      mov r3, #1
004f0fb8  00 00 53 e3                                      cmp r3, #0
004f0fbc  04 30 8d e5                                      str r3, [sp, #4]
004f0fc0  0f 00 00 1a                                      bne #0x4f1004
004f0fc4  11 30 84 e2                                      add r3, r4, #0x11
004f0fc8  12 20 84 e2                                      add r2, r4, #0x12
004f0fcc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0fd0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0fd4  03 00 52 e1                                      cmp r2, r3
004f0fd8  01 10 20 e0                                      eor r1, r0, r1
004f0fdc  01 10 43 e5                                      strb r1, [r3, #-1]
004f0fe0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0fe4  00 10 21 e0                                      eor r1, r1, r0
004f0fe8  01 10 c2 e5                                      strb r1, [r2, #1]
004f0fec  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0ff0  01 20 42 e2                                      sub r2, r2, #1
004f0ff4  00 10 21 e0                                      eor r1, r1, r0
004f0ff8  01 10 43 e5                                      strb r1, [r3, #-1]
004f0ffc  01 30 83 e2                                      add r3, r3, #1
004f1000  f1 ff ff 8a                                      bhi #0x4f0fcc
004f1004  05 00 a0 e1                                      mov r0, r5
004f1008  14 10 84 e2                                      add r1, r4, #0x14
004f100c  1f a0 fd eb                                      bl #0x459090
004f1010  01 30 a0 e3                                      mov r3, #1
004f1014  00 00 53 e3                                      cmp r3, #0
004f1018  04 30 8d e5                                      str r3, [sp, #4]
004f101c  0f 00 00 1a                                      bne #0x4f1060
004f1020  16 30 84 e2                                      add r3, r4, #0x16
004f1024  15 40 84 e2                                      add r4, r4, #0x15
004f1028  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f102c  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f1030  04 00 53 e1                                      cmp r3, r4
004f1034  02 20 21 e0                                      eor r2, r1, r2
004f1038  01 20 44 e5                                      strb r2, [r4, #-1]
004f103c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f1040  01 20 22 e0                                      eor r2, r2, r1
004f1044  01 20 c3 e5                                      strb r2, [r3, #1]
004f1048  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f104c  01 30 43 e2                                      sub r3, r3, #1
004f1050  01 20 22 e0                                      eor r2, r2, r1
004f1054  01 20 44 e5                                      strb r2, [r4, #-1]
004f1058  01 40 84 e2                                      add r4, r4, #1
004f105c  f1 ff ff 8a                                      bhi #0x4f1028
004f1060  0c d0 8d e2                                      add sp, sp, #0xc
004f1064  30 80 bd e8                                      pop {r4, r5, pc}
