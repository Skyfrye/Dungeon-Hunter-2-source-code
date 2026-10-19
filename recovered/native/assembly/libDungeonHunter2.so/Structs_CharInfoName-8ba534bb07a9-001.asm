; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6978, declared_size=4, range_size=4, mode=arm
; class-group: Structs::CharInfoName
; alias: _ZN7Structs12CharInfoNameD2Ev
; demangled: Structs::CharInfoName::~CharInfoName()
; decoder-mode: arm
004c6978  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c697c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::CharInfoName
; alias: _ZN7Structs12CharInfoNameD1Ev
; demangled: Structs::CharInfoName::~CharInfoName()
; decoder-mode: arm
004c697c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6980, declared_size=4, range_size=4, mode=arm
; class-group: Structs::CharInfoName
; alias: _ZN7Structs12CharInfoName8finalizeEv
; demangled: Structs::CharInfoName::finalize()
; decoder-mode: arm
004c6980  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce48c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::CharInfoName
; alias: _ZN7Structs12CharInfoNameD0Ev
; demangled: Structs::CharInfoName::~CharInfoName()
; decoder-mode: arm
004ce48c  10 40 2d e9                                      push {r4, lr}
004ce490  00 40 a0 e1                                      mov r4, r0
004ce494  38 e1 ff eb                                      bl #0x4c697c
004ce498  04 00 a0 e1                                      mov r0, r4
004ce49c  e7 07 f9 eb                                      bl #0x310440
004ce4a0  04 00 a0 e1                                      mov r0, r4
004ce4a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f1c90, declared_size=112, range_size=112, mode=arm
; class-group: Structs::CharInfoName
; alias: _ZN7Structs12CharInfoName4readEP11IStreamBase
; demangled: Structs::CharInfoName::read(IStreamBase*)
; decoder-mode: arm
004f1c90  10 40 2d e9                                      push {r4, lr}
004f1c94  00 40 a0 e1                                      mov r4, r0
004f1c98  08 d0 4d e2                                      sub sp, sp, #8
004f1c9c  01 00 a0 e1                                      mov r0, r1
004f1ca0  04 10 84 e2                                      add r1, r4, #4
004f1ca4  f9 9c fd eb                                      bl #0x459090
004f1ca8  01 30 a0 e3                                      mov r3, #1
004f1cac  00 00 53 e3                                      cmp r3, #0
004f1cb0  04 30 8d e5                                      str r3, [sp, #4]
004f1cb4  0f 00 00 1a                                      bne #0x4f1cf8
004f1cb8  06 30 84 e2                                      add r3, r4, #6
004f1cbc  05 40 84 e2                                      add r4, r4, #5
004f1cc0  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f1cc4  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f1cc8  03 00 54 e1                                      cmp r4, r3
004f1ccc  02 20 21 e0                                      eor r2, r1, r2
004f1cd0  01 20 44 e5                                      strb r2, [r4, #-1]
004f1cd4  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f1cd8  01 20 22 e0                                      eor r2, r2, r1
004f1cdc  01 20 c3 e5                                      strb r2, [r3, #1]
004f1ce0  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f1ce4  01 30 43 e2                                      sub r3, r3, #1
004f1ce8  01 20 22 e0                                      eor r2, r2, r1
004f1cec  01 20 44 e5                                      strb r2, [r4, #-1]
004f1cf0  01 40 84 e2                                      add r4, r4, #1
004f1cf4  f1 ff ff 3a                                      blo #0x4f1cc0
004f1cf8  08 d0 8d e2                                      add sp, sp, #8
004f1cfc  10 80 bd e8                                      pop {r4, pc}
