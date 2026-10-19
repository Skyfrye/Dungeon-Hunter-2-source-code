; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5730, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncApplyGroupOnlyIf
; alias: _ZN7Structs25ClassFuncApplyGroupOnlyIfD2Ev
; demangled: Structs::ClassFuncApplyGroupOnlyIf::~ClassFuncApplyGroupOnlyIf()
; decoder-mode: arm
004c5730  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c5734, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncApplyGroupOnlyIf
; alias: _ZN7Structs25ClassFuncApplyGroupOnlyIfD1Ev
; demangled: Structs::ClassFuncApplyGroupOnlyIf::~ClassFuncApplyGroupOnlyIf()
; decoder-mode: arm
004c5734  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c5738, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncApplyGroupOnlyIf
; alias: _ZN7Structs25ClassFuncApplyGroupOnlyIf8finalizeEv
; demangled: Structs::ClassFuncApplyGroupOnlyIf::finalize()
; decoder-mode: arm
004c5738  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce994, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ClassFuncApplyGroupOnlyIf
; alias: _ZN7Structs25ClassFuncApplyGroupOnlyIfD0Ev
; demangled: Structs::ClassFuncApplyGroupOnlyIf::~ClassFuncApplyGroupOnlyIf()
; decoder-mode: arm
004ce994  10 40 2d e9                                      push {r4, lr}
004ce998  00 40 a0 e1                                      mov r4, r0
004ce99c  64 db ff eb                                      bl #0x4c5734
004ce9a0  04 00 a0 e1                                      mov r0, r4
004ce9a4  a5 06 f9 eb                                      bl #0x310440
004ce9a8  04 00 a0 e1                                      mov r0, r4
004ce9ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f0510, declared_size=484, range_size=484, mode=arm
; class-group: Structs::ClassFuncApplyGroupOnlyIf
; alias: _ZN7Structs25ClassFuncApplyGroupOnlyIf4readEP11IStreamBase
; demangled: Structs::ClassFuncApplyGroupOnlyIf::read(IStreamBase*)
; decoder-mode: arm
004f0510  30 40 2d e9                                      push {r4, r5, lr}
004f0514  00 40 a0 e1                                      mov r4, r0
004f0518  0c d0 4d e2                                      sub sp, sp, #0xc
004f051c  01 00 a0 e1                                      mov r0, r1
004f0520  01 50 a0 e1                                      mov r5, r1
004f0524  04 10 84 e2                                      add r1, r4, #4
004f0528  d8 a2 fd eb                                      bl #0x459090
004f052c  01 30 a0 e3                                      mov r3, #1
004f0530  00 00 53 e3                                      cmp r3, #0
004f0534  04 30 8d e5                                      str r3, [sp, #4]
004f0538  0f 00 00 1a                                      bne #0x4f057c
004f053c  05 30 84 e2                                      add r3, r4, #5
004f0540  06 20 84 e2                                      add r2, r4, #6
004f0544  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0548  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f054c  03 00 52 e1                                      cmp r2, r3
004f0550  01 10 20 e0                                      eor r1, r0, r1
004f0554  01 10 43 e5                                      strb r1, [r3, #-1]
004f0558  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f055c  00 10 21 e0                                      eor r1, r1, r0
004f0560  01 10 c2 e5                                      strb r1, [r2, #1]
004f0564  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0568  01 20 42 e2                                      sub r2, r2, #1
004f056c  00 10 21 e0                                      eor r1, r1, r0
004f0570  01 10 43 e5                                      strb r1, [r3, #-1]
004f0574  01 30 83 e2                                      add r3, r3, #1
004f0578  f1 ff ff 8a                                      bhi #0x4f0544
004f057c  05 00 a0 e1                                      mov r0, r5
004f0580  08 10 84 e2                                      add r1, r4, #8
004f0584  c1 a2 fd eb                                      bl #0x459090
004f0588  01 30 a0 e3                                      mov r3, #1
004f058c  00 00 53 e3                                      cmp r3, #0
004f0590  04 30 8d e5                                      str r3, [sp, #4]
004f0594  0f 00 00 1a                                      bne #0x4f05d8
004f0598  09 30 84 e2                                      add r3, r4, #9
004f059c  0a 20 84 e2                                      add r2, r4, #0xa
004f05a0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f05a4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f05a8  03 00 52 e1                                      cmp r2, r3
004f05ac  01 10 20 e0                                      eor r1, r0, r1
004f05b0  01 10 43 e5                                      strb r1, [r3, #-1]
004f05b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f05b8  00 10 21 e0                                      eor r1, r1, r0
004f05bc  01 10 c2 e5                                      strb r1, [r2, #1]
004f05c0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f05c4  01 20 42 e2                                      sub r2, r2, #1
004f05c8  00 10 21 e0                                      eor r1, r1, r0
004f05cc  01 10 43 e5                                      strb r1, [r3, #-1]
004f05d0  01 30 83 e2                                      add r3, r3, #1
004f05d4  f1 ff ff 8a                                      bhi #0x4f05a0
004f05d8  05 00 a0 e1                                      mov r0, r5
004f05dc  0c 10 84 e2                                      add r1, r4, #0xc
004f05e0  aa a2 fd eb                                      bl #0x459090
004f05e4  01 30 a0 e3                                      mov r3, #1
004f05e8  00 00 53 e3                                      cmp r3, #0
004f05ec  04 30 8d e5                                      str r3, [sp, #4]
004f05f0  0f 00 00 1a                                      bne #0x4f0634
004f05f4  0d 30 84 e2                                      add r3, r4, #0xd
004f05f8  0e 20 84 e2                                      add r2, r4, #0xe
004f05fc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0600  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0604  03 00 52 e1                                      cmp r2, r3
004f0608  01 10 20 e0                                      eor r1, r0, r1
004f060c  01 10 43 e5                                      strb r1, [r3, #-1]
004f0610  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0614  00 10 21 e0                                      eor r1, r1, r0
004f0618  01 10 c2 e5                                      strb r1, [r2, #1]
004f061c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0620  01 20 42 e2                                      sub r2, r2, #1
004f0624  00 10 21 e0                                      eor r1, r1, r0
004f0628  01 10 43 e5                                      strb r1, [r3, #-1]
004f062c  01 30 83 e2                                      add r3, r3, #1
004f0630  f1 ff ff 8a                                      bhi #0x4f05fc
004f0634  05 00 a0 e1                                      mov r0, r5
004f0638  10 10 84 e2                                      add r1, r4, #0x10
004f063c  93 a2 fd eb                                      bl #0x459090
004f0640  01 30 a0 e3                                      mov r3, #1
004f0644  00 00 53 e3                                      cmp r3, #0
004f0648  04 30 8d e5                                      str r3, [sp, #4]
004f064c  0f 00 00 1a                                      bne #0x4f0690
004f0650  11 30 84 e2                                      add r3, r4, #0x11
004f0654  12 20 84 e2                                      add r2, r4, #0x12
004f0658  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f065c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0660  03 00 52 e1                                      cmp r2, r3
004f0664  01 10 20 e0                                      eor r1, r0, r1
004f0668  01 10 43 e5                                      strb r1, [r3, #-1]
004f066c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0670  00 10 21 e0                                      eor r1, r1, r0
004f0674  01 10 c2 e5                                      strb r1, [r2, #1]
004f0678  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f067c  01 20 42 e2                                      sub r2, r2, #1
004f0680  00 10 21 e0                                      eor r1, r1, r0
004f0684  01 10 43 e5                                      strb r1, [r3, #-1]
004f0688  01 30 83 e2                                      add r3, r3, #1
004f068c  f1 ff ff 8a                                      bhi #0x4f0658
004f0690  05 00 a0 e1                                      mov r0, r5
004f0694  14 10 84 e2                                      add r1, r4, #0x14
004f0698  7c a2 fd eb                                      bl #0x459090
004f069c  01 30 a0 e3                                      mov r3, #1
004f06a0  00 00 53 e3                                      cmp r3, #0
004f06a4  04 30 8d e5                                      str r3, [sp, #4]
004f06a8  0f 00 00 1a                                      bne #0x4f06ec
004f06ac  16 30 84 e2                                      add r3, r4, #0x16
004f06b0  15 40 84 e2                                      add r4, r4, #0x15
004f06b4  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f06b8  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f06bc  04 00 53 e1                                      cmp r3, r4
004f06c0  02 20 21 e0                                      eor r2, r1, r2
004f06c4  01 20 44 e5                                      strb r2, [r4, #-1]
004f06c8  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f06cc  01 20 22 e0                                      eor r2, r2, r1
004f06d0  01 20 c3 e5                                      strb r2, [r3, #1]
004f06d4  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f06d8  01 30 43 e2                                      sub r3, r3, #1
004f06dc  01 20 22 e0                                      eor r2, r2, r1
004f06e0  01 20 44 e5                                      strb r2, [r4, #-1]
004f06e4  01 40 84 e2                                      add r4, r4, #1
004f06e8  f1 ff ff 8a                                      bhi #0x4f06b4
004f06ec  0c d0 8d e2                                      add sp, sp, #0xc
004f06f0  30 80 bd e8                                      pop {r4, r5, pc}
