; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c56ac, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFunc
; alias: _ZN7Structs9ClassFuncD2Ev
; demangled: Structs::ClassFunc::~ClassFunc()
; decoder-mode: arm
004c56ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c56b0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFunc
; alias: _ZN7Structs9ClassFuncD1Ev
; demangled: Structs::ClassFunc::~ClassFunc()
; decoder-mode: arm
004c56b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c56b4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFunc
; alias: _ZN7Structs9ClassFunc8finalizeEv
; demangled: Structs::ClassFunc::finalize()
; decoder-mode: arm
004c56b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ceac8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ClassFunc
; alias: _ZN7Structs9ClassFuncD0Ev
; demangled: Structs::ClassFunc::~ClassFunc()
; decoder-mode: arm
004ceac8  10 40 2d e9                                      push {r4, lr}
004ceacc  00 40 a0 e1                                      mov r4, r0
004cead0  f6 da ff eb                                      bl #0x4c56b0
004cead4  04 00 a0 e1                                      mov r0, r4
004cead8  58 06 f9 eb                                      bl #0x310440
004ceadc  04 00 a0 e1                                      mov r0, r4
004ceae0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f19dc, declared_size=484, range_size=484, mode=arm
; class-group: Structs::ClassFunc
; alias: _ZN7Structs9ClassFunc4readEP11IStreamBase
; demangled: Structs::ClassFunc::read(IStreamBase*)
; decoder-mode: arm
004f19dc  30 40 2d e9                                      push {r4, r5, lr}
004f19e0  00 40 a0 e1                                      mov r4, r0
004f19e4  0c d0 4d e2                                      sub sp, sp, #0xc
004f19e8  01 00 a0 e1                                      mov r0, r1
004f19ec  01 50 a0 e1                                      mov r5, r1
004f19f0  04 10 84 e2                                      add r1, r4, #4
004f19f4  a5 9d fd eb                                      bl #0x459090
004f19f8  01 30 a0 e3                                      mov r3, #1
004f19fc  00 00 53 e3                                      cmp r3, #0
004f1a00  04 30 8d e5                                      str r3, [sp, #4]
004f1a04  0f 00 00 1a                                      bne #0x4f1a48
004f1a08  05 30 84 e2                                      add r3, r4, #5
004f1a0c  06 20 84 e2                                      add r2, r4, #6
004f1a10  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1a14  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1a18  03 00 52 e1                                      cmp r2, r3
004f1a1c  01 10 20 e0                                      eor r1, r0, r1
004f1a20  01 10 43 e5                                      strb r1, [r3, #-1]
004f1a24  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1a28  00 10 21 e0                                      eor r1, r1, r0
004f1a2c  01 10 c2 e5                                      strb r1, [r2, #1]
004f1a30  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1a34  01 20 42 e2                                      sub r2, r2, #1
004f1a38  00 10 21 e0                                      eor r1, r1, r0
004f1a3c  01 10 43 e5                                      strb r1, [r3, #-1]
004f1a40  01 30 83 e2                                      add r3, r3, #1
004f1a44  f1 ff ff 8a                                      bhi #0x4f1a10
004f1a48  05 00 a0 e1                                      mov r0, r5
004f1a4c  08 10 84 e2                                      add r1, r4, #8
004f1a50  8e 9d fd eb                                      bl #0x459090
004f1a54  01 30 a0 e3                                      mov r3, #1
004f1a58  00 00 53 e3                                      cmp r3, #0
004f1a5c  04 30 8d e5                                      str r3, [sp, #4]
004f1a60  0f 00 00 1a                                      bne #0x4f1aa4
004f1a64  09 30 84 e2                                      add r3, r4, #9
004f1a68  0a 20 84 e2                                      add r2, r4, #0xa
004f1a6c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1a70  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1a74  03 00 52 e1                                      cmp r2, r3
004f1a78  01 10 20 e0                                      eor r1, r0, r1
004f1a7c  01 10 43 e5                                      strb r1, [r3, #-1]
004f1a80  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1a84  00 10 21 e0                                      eor r1, r1, r0
004f1a88  01 10 c2 e5                                      strb r1, [r2, #1]
004f1a8c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1a90  01 20 42 e2                                      sub r2, r2, #1
004f1a94  00 10 21 e0                                      eor r1, r1, r0
004f1a98  01 10 43 e5                                      strb r1, [r3, #-1]
004f1a9c  01 30 83 e2                                      add r3, r3, #1
004f1aa0  f1 ff ff 8a                                      bhi #0x4f1a6c
004f1aa4  05 00 a0 e1                                      mov r0, r5
004f1aa8  0c 10 84 e2                                      add r1, r4, #0xc
004f1aac  77 9d fd eb                                      bl #0x459090
004f1ab0  01 30 a0 e3                                      mov r3, #1
004f1ab4  00 00 53 e3                                      cmp r3, #0
004f1ab8  04 30 8d e5                                      str r3, [sp, #4]
004f1abc  0f 00 00 1a                                      bne #0x4f1b00
004f1ac0  0d 30 84 e2                                      add r3, r4, #0xd
004f1ac4  0e 20 84 e2                                      add r2, r4, #0xe
004f1ac8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1acc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1ad0  03 00 52 e1                                      cmp r2, r3
004f1ad4  01 10 20 e0                                      eor r1, r0, r1
004f1ad8  01 10 43 e5                                      strb r1, [r3, #-1]
004f1adc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1ae0  00 10 21 e0                                      eor r1, r1, r0
004f1ae4  01 10 c2 e5                                      strb r1, [r2, #1]
004f1ae8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1aec  01 20 42 e2                                      sub r2, r2, #1
004f1af0  00 10 21 e0                                      eor r1, r1, r0
004f1af4  01 10 43 e5                                      strb r1, [r3, #-1]
004f1af8  01 30 83 e2                                      add r3, r3, #1
004f1afc  f1 ff ff 8a                                      bhi #0x4f1ac8
004f1b00  05 00 a0 e1                                      mov r0, r5
004f1b04  10 10 84 e2                                      add r1, r4, #0x10
004f1b08  60 9d fd eb                                      bl #0x459090
004f1b0c  01 30 a0 e3                                      mov r3, #1
004f1b10  00 00 53 e3                                      cmp r3, #0
004f1b14  04 30 8d e5                                      str r3, [sp, #4]
004f1b18  0f 00 00 1a                                      bne #0x4f1b5c
004f1b1c  11 30 84 e2                                      add r3, r4, #0x11
004f1b20  12 20 84 e2                                      add r2, r4, #0x12
004f1b24  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1b28  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1b2c  03 00 52 e1                                      cmp r2, r3
004f1b30  01 10 20 e0                                      eor r1, r0, r1
004f1b34  01 10 43 e5                                      strb r1, [r3, #-1]
004f1b38  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1b3c  00 10 21 e0                                      eor r1, r1, r0
004f1b40  01 10 c2 e5                                      strb r1, [r2, #1]
004f1b44  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1b48  01 20 42 e2                                      sub r2, r2, #1
004f1b4c  00 10 21 e0                                      eor r1, r1, r0
004f1b50  01 10 43 e5                                      strb r1, [r3, #-1]
004f1b54  01 30 83 e2                                      add r3, r3, #1
004f1b58  f1 ff ff 8a                                      bhi #0x4f1b24
004f1b5c  05 00 a0 e1                                      mov r0, r5
004f1b60  14 10 84 e2                                      add r1, r4, #0x14
004f1b64  49 9d fd eb                                      bl #0x459090
004f1b68  01 30 a0 e3                                      mov r3, #1
004f1b6c  00 00 53 e3                                      cmp r3, #0
004f1b70  04 30 8d e5                                      str r3, [sp, #4]
004f1b74  0f 00 00 1a                                      bne #0x4f1bb8
004f1b78  16 30 84 e2                                      add r3, r4, #0x16
004f1b7c  15 40 84 e2                                      add r4, r4, #0x15
004f1b80  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f1b84  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f1b88  04 00 53 e1                                      cmp r3, r4
004f1b8c  02 20 21 e0                                      eor r2, r1, r2
004f1b90  01 20 44 e5                                      strb r2, [r4, #-1]
004f1b94  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f1b98  01 20 22 e0                                      eor r2, r2, r1
004f1b9c  01 20 c3 e5                                      strb r2, [r3, #1]
004f1ba0  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f1ba4  01 30 43 e2                                      sub r3, r3, #1
004f1ba8  01 20 22 e0                                      eor r2, r2, r1
004f1bac  01 20 44 e5                                      strb r2, [r4, #-1]
004f1bb0  01 40 84 e2                                      add r4, r4, #1
004f1bb4  f1 ff ff 8a                                      bhi #0x4f1b80
004f1bb8  0c d0 8d e2                                      add sp, sp, #0xc
004f1bbc  30 80 bd e8                                      pop {r4, r5, pc}
