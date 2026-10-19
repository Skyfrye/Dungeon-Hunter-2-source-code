; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6bdc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::HintPage
; alias: _ZN7Structs8HintPageD2Ev
; demangled: Structs::HintPage::~HintPage()
; decoder-mode: arm
004c6bdc  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6be0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::HintPage
; alias: _ZN7Structs8HintPageD1Ev
; demangled: Structs::HintPage::~HintPage()
; decoder-mode: arm
004c6be0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6be4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::HintPage
; alias: _ZN7Structs8HintPage8finalizeEv
; demangled: Structs::HintPage::finalize()
; decoder-mode: arm
004c6be4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce278, declared_size=28, range_size=28, mode=arm
; class-group: Structs::HintPage
; alias: _ZN7Structs8HintPageD0Ev
; demangled: Structs::HintPage::~HintPage()
; decoder-mode: arm
004ce278  10 40 2d e9                                      push {r4, lr}
004ce27c  00 40 a0 e1                                      mov r4, r0
004ce280  56 e2 ff eb                                      bl #0x4c6be0
004ce284  04 00 a0 e1                                      mov r0, r4
004ce288  6c 08 f9 eb                                      bl #0x310440
004ce28c  04 00 a0 e1                                      mov r0, r4
004ce290  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff02c, declared_size=208, range_size=208, mode=arm
; class-group: Structs::HintPage
; alias: _ZN7Structs8HintPage4readEP11IStreamBase
; demangled: Structs::HintPage::read(IStreamBase*)
; decoder-mode: arm
004ff02c  30 40 2d e9                                      push {r4, r5, lr}
004ff030  00 40 a0 e1                                      mov r4, r0
004ff034  0c d0 4d e2                                      sub sp, sp, #0xc
004ff038  01 00 a0 e1                                      mov r0, r1
004ff03c  01 50 a0 e1                                      mov r5, r1
004ff040  04 10 84 e2                                      add r1, r4, #4
004ff044  11 68 fd eb                                      bl #0x459090
004ff048  01 30 a0 e3                                      mov r3, #1
004ff04c  00 00 53 e3                                      cmp r3, #0
004ff050  04 30 8d e5                                      str r3, [sp, #4]
004ff054  0f 00 00 1a                                      bne #0x4ff098
004ff058  05 30 84 e2                                      add r3, r4, #5
004ff05c  06 20 84 e2                                      add r2, r4, #6
004ff060  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff064  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ff068  02 00 53 e1                                      cmp r3, r2
004ff06c  01 10 20 e0                                      eor r1, r0, r1
004ff070  01 10 43 e5                                      strb r1, [r3, #-1]
004ff074  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff078  00 10 21 e0                                      eor r1, r1, r0
004ff07c  01 10 c2 e5                                      strb r1, [r2, #1]
004ff080  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ff084  01 20 42 e2                                      sub r2, r2, #1
004ff088  00 10 21 e0                                      eor r1, r1, r0
004ff08c  01 10 43 e5                                      strb r1, [r3, #-1]
004ff090  01 30 83 e2                                      add r3, r3, #1
004ff094  f1 ff ff 3a                                      blo #0x4ff060
004ff098  05 00 a0 e1                                      mov r0, r5
004ff09c  08 10 84 e2                                      add r1, r4, #8
004ff0a0  fa 67 fd eb                                      bl #0x459090
004ff0a4  01 30 a0 e3                                      mov r3, #1
004ff0a8  00 00 53 e3                                      cmp r3, #0
004ff0ac  04 30 8d e5                                      str r3, [sp, #4]
004ff0b0  0f 00 00 1a                                      bne #0x4ff0f4
004ff0b4  0a 30 84 e2                                      add r3, r4, #0xa
004ff0b8  09 40 84 e2                                      add r4, r4, #9
004ff0bc  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ff0c0  01 20 54 e5                                      ldrb r2, [r4, #-1]
004ff0c4  04 00 53 e1                                      cmp r3, r4
004ff0c8  02 20 21 e0                                      eor r2, r1, r2
004ff0cc  01 20 44 e5                                      strb r2, [r4, #-1]
004ff0d0  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ff0d4  01 20 22 e0                                      eor r2, r2, r1
004ff0d8  01 20 c3 e5                                      strb r2, [r3, #1]
004ff0dc  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ff0e0  01 30 43 e2                                      sub r3, r3, #1
004ff0e4  01 20 22 e0                                      eor r2, r2, r1
004ff0e8  01 20 44 e5                                      strb r2, [r4, #-1]
004ff0ec  01 40 84 e2                                      add r4, r4, #1
004ff0f0  f1 ff ff 8a                                      bhi #0x4ff0bc
004ff0f4  0c d0 8d e2                                      add sp, sp, #0xc
004ff0f8  30 80 bd e8                                      pop {r4, r5, pc}
