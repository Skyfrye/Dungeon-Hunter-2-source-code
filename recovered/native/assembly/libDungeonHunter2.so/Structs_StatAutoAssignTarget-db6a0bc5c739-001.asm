; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c696c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::StatAutoAssignTarget
; alias: _ZN7Structs20StatAutoAssignTargetD2Ev
; demangled: Structs::StatAutoAssignTarget::~StatAutoAssignTarget()
; decoder-mode: arm
004c696c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6970, declared_size=4, range_size=4, mode=arm
; class-group: Structs::StatAutoAssignTarget
; alias: _ZN7Structs20StatAutoAssignTargetD1Ev
; demangled: Structs::StatAutoAssignTarget::~StatAutoAssignTarget()
; decoder-mode: arm
004c6970  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6974, declared_size=4, range_size=4, mode=arm
; class-group: Structs::StatAutoAssignTarget
; alias: _ZN7Structs20StatAutoAssignTarget8finalizeEv
; demangled: Structs::StatAutoAssignTarget::finalize()
; decoder-mode: arm
004c6974  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce4a8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::StatAutoAssignTarget
; alias: _ZN7Structs20StatAutoAssignTargetD0Ev
; demangled: Structs::StatAutoAssignTarget::~StatAutoAssignTarget()
; decoder-mode: arm
004ce4a8  10 40 2d e9                                      push {r4, lr}
004ce4ac  00 40 a0 e1                                      mov r4, r0
004ce4b0  2e e1 ff eb                                      bl #0x4c6970
004ce4b4  04 00 a0 e1                                      mov r0, r4
004ce4b8  e0 07 f9 eb                                      bl #0x310440
004ce4bc  04 00 a0 e1                                      mov r0, r4
004ce4c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ef520, declared_size=300, range_size=300, mode=arm
; class-group: Structs::StatAutoAssignTarget
; alias: _ZN7Structs20StatAutoAssignTarget4readEP11IStreamBase
; demangled: Structs::StatAutoAssignTarget::read(IStreamBase*)
; decoder-mode: arm
004ef520  30 40 2d e9                                      push {r4, r5, lr}
004ef524  00 40 a0 e1                                      mov r4, r0
004ef528  0c d0 4d e2                                      sub sp, sp, #0xc
004ef52c  01 00 a0 e1                                      mov r0, r1
004ef530  01 50 a0 e1                                      mov r5, r1
004ef534  04 10 84 e2                                      add r1, r4, #4
004ef538  d4 a6 fd eb                                      bl #0x459090
004ef53c  01 30 a0 e3                                      mov r3, #1
004ef540  00 00 53 e3                                      cmp r3, #0
004ef544  04 30 8d e5                                      str r3, [sp, #4]
004ef548  0f 00 00 1a                                      bne #0x4ef58c
004ef54c  05 30 84 e2                                      add r3, r4, #5
004ef550  06 20 84 e2                                      add r2, r4, #6
004ef554  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef558  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ef55c  02 00 53 e1                                      cmp r3, r2
004ef560  01 10 20 e0                                      eor r1, r0, r1
004ef564  01 10 43 e5                                      strb r1, [r3, #-1]
004ef568  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef56c  00 10 21 e0                                      eor r1, r1, r0
004ef570  01 10 c2 e5                                      strb r1, [r2, #1]
004ef574  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ef578  01 20 42 e2                                      sub r2, r2, #1
004ef57c  00 10 21 e0                                      eor r1, r1, r0
004ef580  01 10 43 e5                                      strb r1, [r3, #-1]
004ef584  01 30 83 e2                                      add r3, r3, #1
004ef588  f1 ff ff 3a                                      blo #0x4ef554
004ef58c  05 00 a0 e1                                      mov r0, r5
004ef590  08 10 84 e2                                      add r1, r4, #8
004ef594  bd a6 fd eb                                      bl #0x459090
004ef598  01 30 a0 e3                                      mov r3, #1
004ef59c  00 00 53 e3                                      cmp r3, #0
004ef5a0  04 30 8d e5                                      str r3, [sp, #4]
004ef5a4  0f 00 00 1a                                      bne #0x4ef5e8
004ef5a8  09 30 84 e2                                      add r3, r4, #9
004ef5ac  0a 20 84 e2                                      add r2, r4, #0xa
004ef5b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef5b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ef5b8  03 00 52 e1                                      cmp r2, r3
004ef5bc  01 10 20 e0                                      eor r1, r0, r1
004ef5c0  01 10 43 e5                                      strb r1, [r3, #-1]
004ef5c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef5c8  00 10 21 e0                                      eor r1, r1, r0
004ef5cc  01 10 c2 e5                                      strb r1, [r2, #1]
004ef5d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ef5d4  01 20 42 e2                                      sub r2, r2, #1
004ef5d8  00 10 21 e0                                      eor r1, r1, r0
004ef5dc  01 10 43 e5                                      strb r1, [r3, #-1]
004ef5e0  01 30 83 e2                                      add r3, r3, #1
004ef5e4  f1 ff ff 8a                                      bhi #0x4ef5b0
004ef5e8  05 00 a0 e1                                      mov r0, r5
004ef5ec  0c 10 84 e2                                      add r1, r4, #0xc
004ef5f0  a6 a6 fd eb                                      bl #0x459090
004ef5f4  01 30 a0 e3                                      mov r3, #1
004ef5f8  00 00 53 e3                                      cmp r3, #0
004ef5fc  04 30 8d e5                                      str r3, [sp, #4]
004ef600  0f 00 00 1a                                      bne #0x4ef644
004ef604  0e 30 84 e2                                      add r3, r4, #0xe
004ef608  0d 40 84 e2                                      add r4, r4, #0xd
004ef60c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ef610  01 20 54 e5                                      ldrb r2, [r4, #-1]
004ef614  03 00 54 e1                                      cmp r4, r3
004ef618  02 20 21 e0                                      eor r2, r1, r2
004ef61c  01 20 44 e5                                      strb r2, [r4, #-1]
004ef620  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ef624  01 20 22 e0                                      eor r2, r2, r1
004ef628  01 20 c3 e5                                      strb r2, [r3, #1]
004ef62c  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ef630  01 30 43 e2                                      sub r3, r3, #1
004ef634  01 20 22 e0                                      eor r2, r2, r1
004ef638  01 20 44 e5                                      strb r2, [r4, #-1]
004ef63c  01 40 84 e2                                      add r4, r4, #1
004ef640  f1 ff ff 3a                                      blo #0x4ef60c
004ef644  0c d0 8d e2                                      add sp, sp, #0xc
004ef648  30 80 bd e8                                      pop {r4, r5, pc}
