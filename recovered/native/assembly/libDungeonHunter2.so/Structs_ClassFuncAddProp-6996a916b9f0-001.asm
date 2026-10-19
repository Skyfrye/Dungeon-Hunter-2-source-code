; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c570c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncAddProp
; alias: _ZN7Structs16ClassFuncAddPropD2Ev
; demangled: Structs::ClassFuncAddProp::~ClassFuncAddProp()
; decoder-mode: arm
004c570c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c5710, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncAddProp
; alias: _ZN7Structs16ClassFuncAddPropD1Ev
; demangled: Structs::ClassFuncAddProp::~ClassFuncAddProp()
; decoder-mode: arm
004c5710  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c5714, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncAddProp
; alias: _ZN7Structs16ClassFuncAddProp8finalizeEv
; demangled: Structs::ClassFuncAddProp::finalize()
; decoder-mode: arm
004c5714  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce9e8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ClassFuncAddProp
; alias: _ZN7Structs16ClassFuncAddPropD0Ev
; demangled: Structs::ClassFuncAddProp::~ClassFuncAddProp()
; decoder-mode: arm
004ce9e8  10 40 2d e9                                      push {r4, lr}
004ce9ec  00 40 a0 e1                                      mov r4, r0
004ce9f0  46 db ff eb                                      bl #0x4c5710
004ce9f4  04 00 a0 e1                                      mov r0, r4
004ce9f8  90 06 f9 eb                                      bl #0x310440
004ce9fc  04 00 a0 e1                                      mov r0, r4
004cea00  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f0abc, declared_size=484, range_size=484, mode=arm
; class-group: Structs::ClassFuncAddProp
; alias: _ZN7Structs16ClassFuncAddProp4readEP11IStreamBase
; demangled: Structs::ClassFuncAddProp::read(IStreamBase*)
; decoder-mode: arm
004f0abc  30 40 2d e9                                      push {r4, r5, lr}
004f0ac0  00 40 a0 e1                                      mov r4, r0
004f0ac4  0c d0 4d e2                                      sub sp, sp, #0xc
004f0ac8  01 00 a0 e1                                      mov r0, r1
004f0acc  01 50 a0 e1                                      mov r5, r1
004f0ad0  04 10 84 e2                                      add r1, r4, #4
004f0ad4  6d a1 fd eb                                      bl #0x459090
004f0ad8  01 30 a0 e3                                      mov r3, #1
004f0adc  00 00 53 e3                                      cmp r3, #0
004f0ae0  04 30 8d e5                                      str r3, [sp, #4]
004f0ae4  0f 00 00 1a                                      bne #0x4f0b28
004f0ae8  05 30 84 e2                                      add r3, r4, #5
004f0aec  06 20 84 e2                                      add r2, r4, #6
004f0af0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0af4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0af8  03 00 52 e1                                      cmp r2, r3
004f0afc  01 10 20 e0                                      eor r1, r0, r1
004f0b00  01 10 43 e5                                      strb r1, [r3, #-1]
004f0b04  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0b08  00 10 21 e0                                      eor r1, r1, r0
004f0b0c  01 10 c2 e5                                      strb r1, [r2, #1]
004f0b10  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0b14  01 20 42 e2                                      sub r2, r2, #1
004f0b18  00 10 21 e0                                      eor r1, r1, r0
004f0b1c  01 10 43 e5                                      strb r1, [r3, #-1]
004f0b20  01 30 83 e2                                      add r3, r3, #1
004f0b24  f1 ff ff 8a                                      bhi #0x4f0af0
004f0b28  05 00 a0 e1                                      mov r0, r5
004f0b2c  08 10 84 e2                                      add r1, r4, #8
004f0b30  56 a1 fd eb                                      bl #0x459090
004f0b34  01 30 a0 e3                                      mov r3, #1
004f0b38  00 00 53 e3                                      cmp r3, #0
004f0b3c  04 30 8d e5                                      str r3, [sp, #4]
004f0b40  0f 00 00 1a                                      bne #0x4f0b84
004f0b44  09 30 84 e2                                      add r3, r4, #9
004f0b48  0a 20 84 e2                                      add r2, r4, #0xa
004f0b4c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0b50  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0b54  03 00 52 e1                                      cmp r2, r3
004f0b58  01 10 20 e0                                      eor r1, r0, r1
004f0b5c  01 10 43 e5                                      strb r1, [r3, #-1]
004f0b60  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0b64  00 10 21 e0                                      eor r1, r1, r0
004f0b68  01 10 c2 e5                                      strb r1, [r2, #1]
004f0b6c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0b70  01 20 42 e2                                      sub r2, r2, #1
004f0b74  00 10 21 e0                                      eor r1, r1, r0
004f0b78  01 10 43 e5                                      strb r1, [r3, #-1]
004f0b7c  01 30 83 e2                                      add r3, r3, #1
004f0b80  f1 ff ff 8a                                      bhi #0x4f0b4c
004f0b84  05 00 a0 e1                                      mov r0, r5
004f0b88  0c 10 84 e2                                      add r1, r4, #0xc
004f0b8c  3f a1 fd eb                                      bl #0x459090
004f0b90  01 30 a0 e3                                      mov r3, #1
004f0b94  00 00 53 e3                                      cmp r3, #0
004f0b98  04 30 8d e5                                      str r3, [sp, #4]
004f0b9c  0f 00 00 1a                                      bne #0x4f0be0
004f0ba0  0d 30 84 e2                                      add r3, r4, #0xd
004f0ba4  0e 20 84 e2                                      add r2, r4, #0xe
004f0ba8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0bac  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0bb0  03 00 52 e1                                      cmp r2, r3
004f0bb4  01 10 20 e0                                      eor r1, r0, r1
004f0bb8  01 10 43 e5                                      strb r1, [r3, #-1]
004f0bbc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0bc0  00 10 21 e0                                      eor r1, r1, r0
004f0bc4  01 10 c2 e5                                      strb r1, [r2, #1]
004f0bc8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0bcc  01 20 42 e2                                      sub r2, r2, #1
004f0bd0  00 10 21 e0                                      eor r1, r1, r0
004f0bd4  01 10 43 e5                                      strb r1, [r3, #-1]
004f0bd8  01 30 83 e2                                      add r3, r3, #1
004f0bdc  f1 ff ff 8a                                      bhi #0x4f0ba8
004f0be0  05 00 a0 e1                                      mov r0, r5
004f0be4  10 10 84 e2                                      add r1, r4, #0x10
004f0be8  28 a1 fd eb                                      bl #0x459090
004f0bec  01 30 a0 e3                                      mov r3, #1
004f0bf0  00 00 53 e3                                      cmp r3, #0
004f0bf4  04 30 8d e5                                      str r3, [sp, #4]
004f0bf8  0f 00 00 1a                                      bne #0x4f0c3c
004f0bfc  11 30 84 e2                                      add r3, r4, #0x11
004f0c00  12 20 84 e2                                      add r2, r4, #0x12
004f0c04  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0c08  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0c0c  03 00 52 e1                                      cmp r2, r3
004f0c10  01 10 20 e0                                      eor r1, r0, r1
004f0c14  01 10 43 e5                                      strb r1, [r3, #-1]
004f0c18  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0c1c  00 10 21 e0                                      eor r1, r1, r0
004f0c20  01 10 c2 e5                                      strb r1, [r2, #1]
004f0c24  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0c28  01 20 42 e2                                      sub r2, r2, #1
004f0c2c  00 10 21 e0                                      eor r1, r1, r0
004f0c30  01 10 43 e5                                      strb r1, [r3, #-1]
004f0c34  01 30 83 e2                                      add r3, r3, #1
004f0c38  f1 ff ff 8a                                      bhi #0x4f0c04
004f0c3c  05 00 a0 e1                                      mov r0, r5
004f0c40  14 10 84 e2                                      add r1, r4, #0x14
004f0c44  11 a1 fd eb                                      bl #0x459090
004f0c48  01 30 a0 e3                                      mov r3, #1
004f0c4c  00 00 53 e3                                      cmp r3, #0
004f0c50  04 30 8d e5                                      str r3, [sp, #4]
004f0c54  0f 00 00 1a                                      bne #0x4f0c98
004f0c58  16 30 84 e2                                      add r3, r4, #0x16
004f0c5c  15 40 84 e2                                      add r4, r4, #0x15
004f0c60  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f0c64  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f0c68  04 00 53 e1                                      cmp r3, r4
004f0c6c  02 20 21 e0                                      eor r2, r1, r2
004f0c70  01 20 44 e5                                      strb r2, [r4, #-1]
004f0c74  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f0c78  01 20 22 e0                                      eor r2, r2, r1
004f0c7c  01 20 c3 e5                                      strb r2, [r3, #1]
004f0c80  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f0c84  01 30 43 e2                                      sub r3, r3, #1
004f0c88  01 20 22 e0                                      eor r2, r2, r1
004f0c8c  01 20 44 e5                                      strb r2, [r4, #-1]
004f0c90  01 40 84 e2                                      add r4, r4, #1
004f0c94  f1 ff ff 8a                                      bhi #0x4f0c60
004f0c98  0c d0 8d e2                                      add sp, sp, #0xc
004f0c9c  30 80 bd e8                                      pop {r4, r5, pc}
