; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7cbc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2Condition
; alias: _ZN7Structs11v2ConditionD2Ev
; demangled: Structs::v2Condition::~v2Condition()
; decoder-mode: arm
004c7cbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c7cc0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2Condition
; alias: _ZN7Structs11v2ConditionD1Ev
; demangled: Structs::v2Condition::~v2Condition()
; decoder-mode: arm
004c7cc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c7cc4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2Condition
; alias: _ZN7Structs11v2Condition8finalizeEv
; demangled: Structs::v2Condition::finalize()
; decoder-mode: arm
004c7cc4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004cd980, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2Condition
; alias: _ZN7Structs11v2ConditionD0Ev
; demangled: Structs::v2Condition::~v2Condition()
; decoder-mode: arm
004cd980  10 40 2d e9                                      push {r4, lr}
004cd984  00 40 a0 e1                                      mov r4, r0
004cd988  cc e8 ff eb                                      bl #0x4c7cc0
004cd98c  04 00 a0 e1                                      mov r0, r4
004cd990  aa 0a f9 eb                                      bl #0x310440
004cd994  04 00 a0 e1                                      mov r0, r4
004cd998  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505b28, declared_size=112, range_size=112, mode=arm
; class-group: Structs::v2Condition
; alias: _ZN7Structs11v2Condition4readEP11IStreamBase
; demangled: Structs::v2Condition::read(IStreamBase*)
; decoder-mode: arm
00505b28  10 40 2d e9                                      push {r4, lr}
00505b2c  00 40 a0 e1                                      mov r4, r0
00505b30  08 d0 4d e2                                      sub sp, sp, #8
00505b34  01 00 a0 e1                                      mov r0, r1
00505b38  04 10 84 e2                                      add r1, r4, #4
00505b3c  53 4d fd eb                                      bl #0x459090
00505b40  01 30 a0 e3                                      mov r3, #1
00505b44  00 00 53 e3                                      cmp r3, #0
00505b48  04 30 8d e5                                      str r3, [sp, #4]
00505b4c  0f 00 00 1a                                      bne #0x505b90
00505b50  06 30 84 e2                                      add r3, r4, #6
00505b54  05 40 84 e2                                      add r4, r4, #5
00505b58  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505b5c  01 20 54 e5                                      ldrb r2, [r4, #-1]
00505b60  03 00 54 e1                                      cmp r4, r3
00505b64  02 20 21 e0                                      eor r2, r1, r2
00505b68  01 20 44 e5                                      strb r2, [r4, #-1]
00505b6c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505b70  01 20 22 e0                                      eor r2, r2, r1
00505b74  01 20 c3 e5                                      strb r2, [r3, #1]
00505b78  01 10 54 e5                                      ldrb r1, [r4, #-1]
00505b7c  01 30 43 e2                                      sub r3, r3, #1
00505b80  01 20 22 e0                                      eor r2, r2, r1
00505b84  01 20 44 e5                                      strb r2, [r4, #-1]
00505b88  01 40 84 e2                                      add r4, r4, #1
00505b8c  f1 ff ff 3a                                      blo #0x505b58
00505b90  08 d0 8d e2                                      add sp, sp, #8
00505b94  10 80 bd e8                                      pop {r4, pc}
