; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6b94, declared_size=4, range_size=4, mode=arm
; class-group: Structs::FontColorDef
; alias: _ZN7Structs12FontColorDefD2Ev
; demangled: Structs::FontColorDef::~FontColorDef()
; decoder-mode: arm
004c6b94  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6b98, declared_size=4, range_size=4, mode=arm
; class-group: Structs::FontColorDef
; alias: _ZN7Structs12FontColorDefD1Ev
; demangled: Structs::FontColorDef::~FontColorDef()
; decoder-mode: arm
004c6b98  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6b9c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::FontColorDef
; alias: _ZN7Structs12FontColorDef8finalizeEv
; demangled: Structs::FontColorDef::finalize()
; decoder-mode: arm
004c6b9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce320, declared_size=28, range_size=28, mode=arm
; class-group: Structs::FontColorDef
; alias: _ZN7Structs12FontColorDefD0Ev
; demangled: Structs::FontColorDef::~FontColorDef()
; decoder-mode: arm
004ce320  10 40 2d e9                                      push {r4, lr}
004ce324  00 40 a0 e1                                      mov r4, r0
004ce328  1a e2 ff eb                                      bl #0x4c6b98
004ce32c  04 00 a0 e1                                      mov r0, r4
004ce330  42 08 f9 eb                                      bl #0x310440
004ce334  04 00 a0 e1                                      mov r0, r4
004ce338  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f1d00, declared_size=208, range_size=208, mode=arm
; class-group: Structs::FontColorDef
; alias: _ZN7Structs12FontColorDef4readEP11IStreamBase
; demangled: Structs::FontColorDef::read(IStreamBase*)
; decoder-mode: arm
004f1d00  30 40 2d e9                                      push {r4, r5, lr}
004f1d04  00 40 a0 e1                                      mov r4, r0
004f1d08  0c d0 4d e2                                      sub sp, sp, #0xc
004f1d0c  01 00 a0 e1                                      mov r0, r1
004f1d10  01 50 a0 e1                                      mov r5, r1
004f1d14  04 10 84 e2                                      add r1, r4, #4
004f1d18  dc 9c fd eb                                      bl #0x459090
004f1d1c  01 30 a0 e3                                      mov r3, #1
004f1d20  00 00 53 e3                                      cmp r3, #0
004f1d24  04 30 8d e5                                      str r3, [sp, #4]
004f1d28  0f 00 00 1a                                      bne #0x4f1d6c
004f1d2c  05 30 84 e2                                      add r3, r4, #5
004f1d30  06 20 84 e2                                      add r2, r4, #6
004f1d34  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1d38  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1d3c  02 00 53 e1                                      cmp r3, r2
004f1d40  01 10 20 e0                                      eor r1, r0, r1
004f1d44  01 10 43 e5                                      strb r1, [r3, #-1]
004f1d48  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1d4c  00 10 21 e0                                      eor r1, r1, r0
004f1d50  01 10 c2 e5                                      strb r1, [r2, #1]
004f1d54  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1d58  01 20 42 e2                                      sub r2, r2, #1
004f1d5c  00 10 21 e0                                      eor r1, r1, r0
004f1d60  01 10 43 e5                                      strb r1, [r3, #-1]
004f1d64  01 30 83 e2                                      add r3, r3, #1
004f1d68  f1 ff ff 3a                                      blo #0x4f1d34
004f1d6c  05 00 a0 e1                                      mov r0, r5
004f1d70  08 10 84 e2                                      add r1, r4, #8
004f1d74  c5 9c fd eb                                      bl #0x459090
004f1d78  01 30 a0 e3                                      mov r3, #1
004f1d7c  00 00 53 e3                                      cmp r3, #0
004f1d80  04 30 8d e5                                      str r3, [sp, #4]
004f1d84  0f 00 00 1a                                      bne #0x4f1dc8
004f1d88  0a 30 84 e2                                      add r3, r4, #0xa
004f1d8c  09 40 84 e2                                      add r4, r4, #9
004f1d90  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f1d94  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f1d98  04 00 53 e1                                      cmp r3, r4
004f1d9c  02 20 21 e0                                      eor r2, r1, r2
004f1da0  01 20 44 e5                                      strb r2, [r4, #-1]
004f1da4  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f1da8  01 20 22 e0                                      eor r2, r2, r1
004f1dac  01 20 c3 e5                                      strb r2, [r3, #1]
004f1db0  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f1db4  01 30 43 e2                                      sub r3, r3, #1
004f1db8  01 20 22 e0                                      eor r2, r2, r1
004f1dbc  01 20 44 e5                                      strb r2, [r4, #-1]
004f1dc0  01 40 84 e2                                      add r4, r4, #1
004f1dc4  f1 ff ff 8a                                      bhi #0x4f1d90
004f1dc8  0c d0 8d e2                                      add sp, sp, #0xc
004f1dcc  30 80 bd e8                                      pop {r4, r5, pc}
