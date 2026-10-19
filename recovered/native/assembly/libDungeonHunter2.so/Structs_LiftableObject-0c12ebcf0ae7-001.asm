; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6bb8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::LiftableObject
; alias: _ZN7Structs14LiftableObjectD2Ev
; demangled: Structs::LiftableObject::~LiftableObject()
; decoder-mode: arm
004c6bb8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6bbc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::LiftableObject
; alias: _ZN7Structs14LiftableObjectD1Ev
; demangled: Structs::LiftableObject::~LiftableObject()
; decoder-mode: arm
004c6bbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6bc0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::LiftableObject
; alias: _ZN7Structs14LiftableObject8finalizeEv
; demangled: Structs::LiftableObject::finalize()
; decoder-mode: arm
004c6bc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce2cc, declared_size=28, range_size=28, mode=arm
; class-group: Structs::LiftableObject
; alias: _ZN7Structs14LiftableObjectD0Ev
; demangled: Structs::LiftableObject::~LiftableObject()
; decoder-mode: arm
004ce2cc  10 40 2d e9                                      push {r4, lr}
004ce2d0  00 40 a0 e1                                      mov r4, r0
004ce2d4  38 e2 ff eb                                      bl #0x4c6bbc
004ce2d8  04 00 a0 e1                                      mov r0, r4
004ce2dc  57 08 f9 eb                                      bl #0x310440
004ce2e0  04 00 a0 e1                                      mov r0, r4
004ce2e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff1cc, declared_size=112, range_size=112, mode=arm
; class-group: Structs::LiftableObject
; alias: _ZN7Structs14LiftableObject4readEP11IStreamBase
; demangled: Structs::LiftableObject::read(IStreamBase*)
; decoder-mode: arm
004ff1cc  10 40 2d e9                                      push {r4, lr}
004ff1d0  00 40 a0 e1                                      mov r4, r0
004ff1d4  08 d0 4d e2                                      sub sp, sp, #8
004ff1d8  01 00 a0 e1                                      mov r0, r1
004ff1dc  04 10 84 e2                                      add r1, r4, #4
004ff1e0  aa 67 fd eb                                      bl #0x459090
004ff1e4  01 30 a0 e3                                      mov r3, #1
004ff1e8  00 00 53 e3                                      cmp r3, #0
004ff1ec  04 30 8d e5                                      str r3, [sp, #4]
004ff1f0  0f 00 00 1a                                      bne #0x4ff234
004ff1f4  06 30 84 e2                                      add r3, r4, #6
004ff1f8  05 40 84 e2                                      add r4, r4, #5
004ff1fc  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ff200  01 20 54 e5                                      ldrb r2, [r4, #-1]
004ff204  03 00 54 e1                                      cmp r4, r3
004ff208  02 20 21 e0                                      eor r2, r1, r2
004ff20c  01 20 44 e5                                      strb r2, [r4, #-1]
004ff210  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ff214  01 20 22 e0                                      eor r2, r2, r1
004ff218  01 20 c3 e5                                      strb r2, [r3, #1]
004ff21c  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ff220  01 30 43 e2                                      sub r3, r3, #1
004ff224  01 20 22 e0                                      eor r2, r2, r1
004ff228  01 20 44 e5                                      strb r2, [r4, #-1]
004ff22c  01 40 84 e2                                      add r4, r4, #1
004ff230  f1 ff ff 3a                                      blo #0x4ff1fc
004ff234  08 d0 8d e2                                      add sp, sp, #8
004ff238  10 80 bd e8                                      pop {r4, pc}
