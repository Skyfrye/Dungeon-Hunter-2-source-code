; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6ef4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::StartDialog
; alias: _ZN7Structs11StartDialogD2Ev
; demangled: Structs::StartDialog::~StartDialog()
; decoder-mode: arm
004c6ef4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6ef8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6efc  10 40 2d e9                                      push {r4, lr}
004c6f00  03 30 8f e0                                      add r3, pc, r3
004c6f04  02 20 93 e7                                      ldr r2, [r3, r2]
004c6f08  00 40 a0 e1                                      mov r4, r0
004c6f0c  08 20 82 e2                                      add r2, r2, #8
004c6f10  00 20 80 e5                                      str r2, [r0]
004c6f14  51 ff ff eb                                      bl #0x4c6c60
004c6f18  04 00 a0 e1                                      mov r0, r4
004c6f1c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6f20  90 db 4c 00 28 10 00 00                          .byte 0x90, 0xdb, 0x4c, 0x00, 0x28, 0x10, 0x00, 0x00

; FUNCTION 0x004c6f28, declared_size=52, range_size=52, mode=arm
; class-group: Structs::StartDialog
; alias: _ZN7Structs11StartDialogD1Ev
; demangled: Structs::StartDialog::~StartDialog()
; decoder-mode: arm
004c6f28  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6f2c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6f30  10 40 2d e9                                      push {r4, lr}
004c6f34  03 30 8f e0                                      add r3, pc, r3
004c6f38  02 20 93 e7                                      ldr r2, [r3, r2]
004c6f3c  00 40 a0 e1                                      mov r4, r0
004c6f40  08 20 82 e2                                      add r2, r2, #8
004c6f44  00 20 80 e5                                      str r2, [r0]
004c6f48  44 ff ff eb                                      bl #0x4c6c60
004c6f4c  04 00 a0 e1                                      mov r0, r4
004c6f50  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6f54  5c db 4c 00 28 10 00 00                          .byte 0x5c, 0xdb, 0x4c, 0x00, 0x28, 0x10, 0x00, 0x00

; FUNCTION 0x004c6f5c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::StartDialog
; alias: _ZN7Structs11StartDialog8finalizeEv
; demangled: Structs::StartDialog::finalize()
; decoder-mode: arm
004c6f5c  41 ff ff ea                                      b #0x4c6c68

; FUNCTION 0x004ce09c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::StartDialog
; alias: _ZN7Structs11StartDialogD0Ev
; demangled: Structs::StartDialog::~StartDialog()
; decoder-mode: arm
004ce09c  10 40 2d e9                                      push {r4, lr}
004ce0a0  00 40 a0 e1                                      mov r4, r0
004ce0a4  9f e3 ff eb                                      bl #0x4c6f28
004ce0a8  04 00 a0 e1                                      mov r0, r4
004ce0ac  e3 08 f9 eb                                      bl #0x310440
004ce0b0  04 00 a0 e1                                      mov r0, r4
004ce0b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0050345c, declared_size=304, range_size=304, mode=arm
; class-group: Structs::StartDialog
; alias: _ZN7Structs11StartDialog4readEP11IStreamBase
; demangled: Structs::StartDialog::read(IStreamBase*)
; decoder-mode: arm
0050345c  30 40 2d e9                                      push {r4, r5, lr}
00503460  00 40 a0 e1                                      mov r4, r0
00503464  0c d0 4d e2                                      sub sp, sp, #0xc
00503468  01 50 a0 e1                                      mov r5, r1
0050346c  ed f0 ff eb                                      bl #0x4ff828
00503470  05 00 a0 e1                                      mov r0, r5
00503474  08 10 84 e2                                      add r1, r4, #8
00503478  04 57 fd eb                                      bl #0x459090
0050347c  01 30 a0 e3                                      mov r3, #1
00503480  00 00 53 e3                                      cmp r3, #0
00503484  04 30 8d e5                                      str r3, [sp, #4]
00503488  0f 00 00 1a                                      bne #0x5034cc
0050348c  09 30 84 e2                                      add r3, r4, #9
00503490  0a 20 84 e2                                      add r2, r4, #0xa
00503494  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503498  01 10 53 e5                                      ldrb r1, [r3, #-1]
0050349c  02 00 53 e1                                      cmp r3, r2
005034a0  01 10 20 e0                                      eor r1, r0, r1
005034a4  01 10 43 e5                                      strb r1, [r3, #-1]
005034a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
005034ac  00 10 21 e0                                      eor r1, r1, r0
005034b0  01 10 c2 e5                                      strb r1, [r2, #1]
005034b4  01 00 53 e5                                      ldrb r0, [r3, #-1]
005034b8  01 20 42 e2                                      sub r2, r2, #1
005034bc  00 10 21 e0                                      eor r1, r1, r0
005034c0  01 10 43 e5                                      strb r1, [r3, #-1]
005034c4  01 30 83 e2                                      add r3, r3, #1
005034c8  f1 ff ff 3a                                      blo #0x503494
005034cc  05 00 a0 e1                                      mov r0, r5
005034d0  0c 10 84 e2                                      add r1, r4, #0xc
005034d4  ed 56 fd eb                                      bl #0x459090
005034d8  01 30 a0 e3                                      mov r3, #1
005034dc  00 00 53 e3                                      cmp r3, #0
005034e0  04 30 8d e5                                      str r3, [sp, #4]
005034e4  0f 00 00 1a                                      bne #0x503528
005034e8  0d 30 84 e2                                      add r3, r4, #0xd
005034ec  0e 20 84 e2                                      add r2, r4, #0xe
005034f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005034f4  01 10 53 e5                                      ldrb r1, [r3, #-1]
005034f8  03 00 52 e1                                      cmp r2, r3
005034fc  01 10 20 e0                                      eor r1, r0, r1
00503500  01 10 43 e5                                      strb r1, [r3, #-1]
00503504  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503508  00 10 21 e0                                      eor r1, r1, r0
0050350c  01 10 c2 e5                                      strb r1, [r2, #1]
00503510  01 00 53 e5                                      ldrb r0, [r3, #-1]
00503514  01 20 42 e2                                      sub r2, r2, #1
00503518  00 10 21 e0                                      eor r1, r1, r0
0050351c  01 10 43 e5                                      strb r1, [r3, #-1]
00503520  01 30 83 e2                                      add r3, r3, #1
00503524  f1 ff ff 8a                                      bhi #0x5034f0
00503528  05 00 a0 e1                                      mov r0, r5
0050352c  10 10 84 e2                                      add r1, r4, #0x10
00503530  d6 56 fd eb                                      bl #0x459090
00503534  01 30 a0 e3                                      mov r3, #1
00503538  00 00 53 e3                                      cmp r3, #0
0050353c  04 30 8d e5                                      str r3, [sp, #4]
00503540  0f 00 00 1a                                      bne #0x503584
00503544  12 30 84 e2                                      add r3, r4, #0x12
00503548  11 40 84 e2                                      add r4, r4, #0x11
0050354c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00503550  01 20 54 e5                                      ldrb r2, [r4, #-1]
00503554  03 00 54 e1                                      cmp r4, r3
00503558  02 20 21 e0                                      eor r2, r1, r2
0050355c  01 20 44 e5                                      strb r2, [r4, #-1]
00503560  01 10 d3 e5                                      ldrb r1, [r3, #1]
00503564  01 20 22 e0                                      eor r2, r2, r1
00503568  01 20 c3 e5                                      strb r2, [r3, #1]
0050356c  01 10 54 e5                                      ldrb r1, [r4, #-1]
00503570  01 30 43 e2                                      sub r3, r3, #1
00503574  01 20 22 e0                                      eor r2, r2, r1
00503578  01 20 44 e5                                      strb r2, [r4, #-1]
0050357c  01 40 84 e2                                      add r4, r4, #1
00503580  f1 ff ff 3a                                      blo #0x50354c
00503584  0c d0 8d e2                                      add sp, sp, #0xc
00503588  30 80 bd e8                                      pop {r4, r5, pc}
