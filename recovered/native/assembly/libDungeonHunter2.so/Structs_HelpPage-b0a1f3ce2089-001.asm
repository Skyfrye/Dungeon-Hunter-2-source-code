; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6bd0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::HelpPage
; alias: _ZN7Structs8HelpPageD2Ev
; demangled: Structs::HelpPage::~HelpPage()
; decoder-mode: arm
004c6bd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6bd4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::HelpPage
; alias: _ZN7Structs8HelpPageD1Ev
; demangled: Structs::HelpPage::~HelpPage()
; decoder-mode: arm
004c6bd4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6bd8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::HelpPage
; alias: _ZN7Structs8HelpPage8finalizeEv
; demangled: Structs::HelpPage::finalize()
; decoder-mode: arm
004c6bd8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce294, declared_size=28, range_size=28, mode=arm
; class-group: Structs::HelpPage
; alias: _ZN7Structs8HelpPageD0Ev
; demangled: Structs::HelpPage::~HelpPage()
; decoder-mode: arm
004ce294  10 40 2d e9                                      push {r4, lr}
004ce298  00 40 a0 e1                                      mov r4, r0
004ce29c  4c e2 ff eb                                      bl #0x4c6bd4
004ce2a0  04 00 a0 e1                                      mov r0, r4
004ce2a4  65 08 f9 eb                                      bl #0x310440
004ce2a8  04 00 a0 e1                                      mov r0, r4
004ce2ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff0fc, declared_size=208, range_size=208, mode=arm
; class-group: Structs::HelpPage
; alias: _ZN7Structs8HelpPage4readEP11IStreamBase
; demangled: Structs::HelpPage::read(IStreamBase*)
; decoder-mode: arm
004ff0fc  30 40 2d e9                                      push {r4, r5, lr}
004ff100  00 40 a0 e1                                      mov r4, r0
004ff104  0c d0 4d e2                                      sub sp, sp, #0xc
004ff108  01 00 a0 e1                                      mov r0, r1
004ff10c  01 50 a0 e1                                      mov r5, r1
004ff110  04 10 84 e2                                      add r1, r4, #4
004ff114  dd 67 fd eb                                      bl #0x459090
004ff118  01 30 a0 e3                                      mov r3, #1
004ff11c  00 00 53 e3                                      cmp r3, #0
004ff120  04 30 8d e5                                      str r3, [sp, #4]
004ff124  0f 00 00 1a                                      bne #0x4ff168
004ff128  05 30 84 e2                                      add r3, r4, #5
004ff12c  06 20 84 e2                                      add r2, r4, #6
004ff130  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff134  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ff138  02 00 53 e1                                      cmp r3, r2
004ff13c  01 10 20 e0                                      eor r1, r0, r1
004ff140  01 10 43 e5                                      strb r1, [r3, #-1]
004ff144  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff148  00 10 21 e0                                      eor r1, r1, r0
004ff14c  01 10 c2 e5                                      strb r1, [r2, #1]
004ff150  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ff154  01 20 42 e2                                      sub r2, r2, #1
004ff158  00 10 21 e0                                      eor r1, r1, r0
004ff15c  01 10 43 e5                                      strb r1, [r3, #-1]
004ff160  01 30 83 e2                                      add r3, r3, #1
004ff164  f1 ff ff 3a                                      blo #0x4ff130
004ff168  05 00 a0 e1                                      mov r0, r5
004ff16c  08 10 84 e2                                      add r1, r4, #8
004ff170  c6 67 fd eb                                      bl #0x459090
004ff174  01 30 a0 e3                                      mov r3, #1
004ff178  00 00 53 e3                                      cmp r3, #0
004ff17c  04 30 8d e5                                      str r3, [sp, #4]
004ff180  0f 00 00 1a                                      bne #0x4ff1c4
004ff184  0a 30 84 e2                                      add r3, r4, #0xa
004ff188  09 40 84 e2                                      add r4, r4, #9
004ff18c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ff190  01 20 54 e5                                      ldrb r2, [r4, #-1]
004ff194  04 00 53 e1                                      cmp r3, r4
004ff198  02 20 21 e0                                      eor r2, r1, r2
004ff19c  01 20 44 e5                                      strb r2, [r4, #-1]
004ff1a0  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ff1a4  01 20 22 e0                                      eor r2, r2, r1
004ff1a8  01 20 c3 e5                                      strb r2, [r3, #1]
004ff1ac  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ff1b0  01 30 43 e2                                      sub r3, r3, #1
004ff1b4  01 20 22 e0                                      eor r2, r2, r1
004ff1b8  01 20 44 e5                                      strb r2, [r4, #-1]
004ff1bc  01 40 84 e2                                      add r4, r4, #1
004ff1c0  f1 ff ff 8a                                      bhi #0x4ff18c
004ff1c4  0c d0 8d e2                                      add sp, sp, #0xc
004ff1c8  30 80 bd e8                                      pop {r4, r5, pc}
