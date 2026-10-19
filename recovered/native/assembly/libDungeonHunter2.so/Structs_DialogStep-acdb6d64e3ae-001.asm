; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6b7c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::DialogStep
; alias: _ZN7Structs10DialogStepD2Ev
; demangled: Structs::DialogStep::~DialogStep()
; decoder-mode: arm
004c6b7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6b80, declared_size=4, range_size=4, mode=arm
; class-group: Structs::DialogStep
; alias: _ZN7Structs10DialogStepD1Ev
; demangled: Structs::DialogStep::~DialogStep()
; decoder-mode: arm
004c6b80  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6b84, declared_size=4, range_size=4, mode=arm
; class-group: Structs::DialogStep
; alias: _ZN7Structs10DialogStep8finalizeEv
; demangled: Structs::DialogStep::finalize()
; decoder-mode: arm
004c6b84  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce358, declared_size=28, range_size=28, mode=arm
; class-group: Structs::DialogStep
; alias: _ZN7Structs10DialogStepD0Ev
; demangled: Structs::DialogStep::~DialogStep()
; decoder-mode: arm
004ce358  10 40 2d e9                                      push {r4, lr}
004ce35c  00 40 a0 e1                                      mov r4, r0
004ce360  06 e2 ff eb                                      bl #0x4c6b80
004ce364  04 00 a0 e1                                      mov r0, r4
004ce368  34 08 f9 eb                                      bl #0x310440
004ce36c  04 00 a0 e1                                      mov r0, r4
004ce370  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f1fb4, declared_size=392, range_size=392, mode=arm
; class-group: Structs::DialogStep
; alias: _ZN7Structs10DialogStep4readEP11IStreamBase
; demangled: Structs::DialogStep::read(IStreamBase*)
; decoder-mode: arm
004f1fb4  30 40 2d e9                                      push {r4, r5, lr}
004f1fb8  00 40 a0 e1                                      mov r4, r0
004f1fbc  0c d0 4d e2                                      sub sp, sp, #0xc
004f1fc0  01 00 a0 e1                                      mov r0, r1
004f1fc4  01 50 a0 e1                                      mov r5, r1
004f1fc8  04 10 84 e2                                      add r1, r4, #4
004f1fcc  2f 9c fd eb                                      bl #0x459090
004f1fd0  01 30 a0 e3                                      mov r3, #1
004f1fd4  00 00 53 e3                                      cmp r3, #0
004f1fd8  04 30 8d e5                                      str r3, [sp, #4]
004f1fdc  0f 00 00 1a                                      bne #0x4f2020
004f1fe0  05 30 84 e2                                      add r3, r4, #5
004f1fe4  06 20 84 e2                                      add r2, r4, #6
004f1fe8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1fec  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1ff0  02 00 53 e1                                      cmp r3, r2
004f1ff4  01 10 20 e0                                      eor r1, r0, r1
004f1ff8  01 10 43 e5                                      strb r1, [r3, #-1]
004f1ffc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f2000  00 10 21 e0                                      eor r1, r1, r0
004f2004  01 10 c2 e5                                      strb r1, [r2, #1]
004f2008  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f200c  01 20 42 e2                                      sub r2, r2, #1
004f2010  00 10 21 e0                                      eor r1, r1, r0
004f2014  01 10 43 e5                                      strb r1, [r3, #-1]
004f2018  01 30 83 e2                                      add r3, r3, #1
004f201c  f1 ff ff 3a                                      blo #0x4f1fe8
004f2020  05 00 a0 e1                                      mov r0, r5
004f2024  08 10 84 e2                                      add r1, r4, #8
004f2028  18 9c fd eb                                      bl #0x459090
004f202c  01 30 a0 e3                                      mov r3, #1
004f2030  00 00 53 e3                                      cmp r3, #0
004f2034  04 30 8d e5                                      str r3, [sp, #4]
004f2038  0f 00 00 1a                                      bne #0x4f207c
004f203c  09 30 84 e2                                      add r3, r4, #9
004f2040  0a 20 84 e2                                      add r2, r4, #0xa
004f2044  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f2048  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f204c  03 00 52 e1                                      cmp r2, r3
004f2050  01 10 20 e0                                      eor r1, r0, r1
004f2054  01 10 43 e5                                      strb r1, [r3, #-1]
004f2058  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f205c  00 10 21 e0                                      eor r1, r1, r0
004f2060  01 10 c2 e5                                      strb r1, [r2, #1]
004f2064  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f2068  01 20 42 e2                                      sub r2, r2, #1
004f206c  00 10 21 e0                                      eor r1, r1, r0
004f2070  01 10 43 e5                                      strb r1, [r3, #-1]
004f2074  01 30 83 e2                                      add r3, r3, #1
004f2078  f1 ff ff 8a                                      bhi #0x4f2044
004f207c  05 00 a0 e1                                      mov r0, r5
004f2080  0c 10 84 e2                                      add r1, r4, #0xc
004f2084  01 9c fd eb                                      bl #0x459090
004f2088  01 30 a0 e3                                      mov r3, #1
004f208c  00 00 53 e3                                      cmp r3, #0
004f2090  04 30 8d e5                                      str r3, [sp, #4]
004f2094  0f 00 00 1a                                      bne #0x4f20d8
004f2098  0d 30 84 e2                                      add r3, r4, #0xd
004f209c  0e 20 84 e2                                      add r2, r4, #0xe
004f20a0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f20a4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f20a8  03 00 52 e1                                      cmp r2, r3
004f20ac  01 10 20 e0                                      eor r1, r0, r1
004f20b0  01 10 43 e5                                      strb r1, [r3, #-1]
004f20b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f20b8  00 10 21 e0                                      eor r1, r1, r0
004f20bc  01 10 c2 e5                                      strb r1, [r2, #1]
004f20c0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f20c4  01 20 42 e2                                      sub r2, r2, #1
004f20c8  00 10 21 e0                                      eor r1, r1, r0
004f20cc  01 10 43 e5                                      strb r1, [r3, #-1]
004f20d0  01 30 83 e2                                      add r3, r3, #1
004f20d4  f1 ff ff 8a                                      bhi #0x4f20a0
004f20d8  05 00 a0 e1                                      mov r0, r5
004f20dc  10 10 84 e2                                      add r1, r4, #0x10
004f20e0  ea 9b fd eb                                      bl #0x459090
004f20e4  01 30 a0 e3                                      mov r3, #1
004f20e8  00 00 53 e3                                      cmp r3, #0
004f20ec  04 30 8d e5                                      str r3, [sp, #4]
004f20f0  0f 00 00 1a                                      bne #0x4f2134
004f20f4  12 30 84 e2                                      add r3, r4, #0x12
004f20f8  11 40 84 e2                                      add r4, r4, #0x11
004f20fc  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f2100  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f2104  04 00 53 e1                                      cmp r3, r4
004f2108  02 20 21 e0                                      eor r2, r1, r2
004f210c  01 20 44 e5                                      strb r2, [r4, #-1]
004f2110  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f2114  01 20 22 e0                                      eor r2, r2, r1
004f2118  01 20 c3 e5                                      strb r2, [r3, #1]
004f211c  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f2120  01 30 43 e2                                      sub r3, r3, #1
004f2124  01 20 22 e0                                      eor r2, r2, r1
004f2128  01 20 44 e5                                      strb r2, [r4, #-1]
004f212c  01 40 84 e2                                      add r4, r4, #1
004f2130  f1 ff ff 8a                                      bhi #0x4f20fc
004f2134  0c d0 8d e2                                      add sp, sp, #0xc
004f2138  30 80 bd e8                                      pop {r4, r5, pc}
