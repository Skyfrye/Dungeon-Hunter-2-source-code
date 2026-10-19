; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c699c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::Anim
; alias: _ZN7Structs4AnimD2Ev
; demangled: Structs::Anim::~Anim()
; decoder-mode: arm
004c699c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c69a0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c69a4  10 40 2d e9                                      push {r4, lr}
004c69a8  03 30 8f e0                                      add r3, pc, r3
004c69ac  02 20 93 e7                                      ldr r2, [r3, r2]
004c69b0  00 40 a0 e1                                      mov r4, r0
004c69b4  08 20 82 e2                                      add r2, r2, #8
004c69b8  00 20 80 e5                                      str r2, [r0]
004c69bc  f3 ff ff eb                                      bl #0x4c6990
004c69c0  04 00 a0 e1                                      mov r0, r4
004c69c4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c69c8  e8 e0 4c 00 10 14 00 00                          .byte 0xe8, 0xe0, 0x4c, 0x00, 0x10, 0x14, 0x00, 0x00

; FUNCTION 0x004c69d0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::Anim
; alias: _ZN7Structs4AnimD1Ev
; demangled: Structs::Anim::~Anim()
; decoder-mode: arm
004c69d0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c69d4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c69d8  10 40 2d e9                                      push {r4, lr}
004c69dc  03 30 8f e0                                      add r3, pc, r3
004c69e0  02 20 93 e7                                      ldr r2, [r3, r2]
004c69e4  00 40 a0 e1                                      mov r4, r0
004c69e8  08 20 82 e2                                      add r2, r2, #8
004c69ec  00 20 80 e5                                      str r2, [r0]
004c69f0  e6 ff ff eb                                      bl #0x4c6990
004c69f4  04 00 a0 e1                                      mov r0, r4
004c69f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c69fc  b4 e0 4c 00 10 14 00 00                          .byte 0xb4, 0xe0, 0x4c, 0x00, 0x10, 0x14, 0x00, 0x00

; FUNCTION 0x004c6a04, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Anim
; alias: _ZN7Structs4Anim8finalizeEv
; demangled: Structs::Anim::finalize()
; decoder-mode: arm
004c6a04  e3 ff ff ea                                      b #0x4c6998

; FUNCTION 0x004ce454, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Anim
; alias: _ZN7Structs4AnimD0Ev
; demangled: Structs::Anim::~Anim()
; decoder-mode: arm
004ce454  10 40 2d e9                                      push {r4, lr}
004ce458  00 40 a0 e1                                      mov r4, r0
004ce45c  5b e1 ff eb                                      bl #0x4c69d0
004ce460  04 00 a0 e1                                      mov r0, r4
004ce464  f5 07 f9 eb                                      bl #0x310440
004ce468  04 00 a0 e1                                      mov r0, r4
004ce46c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004dbe3c, declared_size=212, range_size=212, mode=arm
; class-group: Structs::Anim
; alias: _ZN7Structs4Anim4readEP11IStreamBase
; demangled: Structs::Anim::read(IStreamBase*)
; decoder-mode: arm
004dbe3c  70 40 2d e9                                      push {r4, r5, r6, lr}
004dbe40  01 50 a0 e1                                      mov r5, r1
004dbe44  08 d0 4d e2                                      sub sp, sp, #8
004dbe48  08 60 80 e2                                      add r6, r0, #8
004dbe4c  00 40 a0 e1                                      mov r4, r0
004dbe50  c5 ff ff eb                                      bl #0x4dbd6c
004dbe54  05 00 a0 e1                                      mov r0, r5
004dbe58  06 10 a0 e1                                      mov r1, r6
004dbe5c  12 ff ff eb                                      bl #0x4dbaac
004dbe60  01 30 a0 e3                                      mov r3, #1
004dbe64  00 00 53 e3                                      cmp r3, #0
004dbe68  04 30 8d e5                                      str r3, [sp, #4]
004dbe6c  0e 00 00 1a                                      bne #0x4dbeac
004dbe70  09 30 84 e2                                      add r3, r4, #9
004dbe74  01 10 d6 e5                                      ldrb r1, [r6, #1]
004dbe78  01 20 53 e5                                      ldrb r2, [r3, #-1]
004dbe7c  06 00 53 e1                                      cmp r3, r6
004dbe80  02 20 21 e0                                      eor r2, r1, r2
004dbe84  01 20 43 e5                                      strb r2, [r3, #-1]
004dbe88  01 10 d6 e5                                      ldrb r1, [r6, #1]
004dbe8c  01 20 22 e0                                      eor r2, r2, r1
004dbe90  01 20 c6 e5                                      strb r2, [r6, #1]
004dbe94  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dbe98  01 60 46 e2                                      sub r6, r6, #1
004dbe9c  01 20 22 e0                                      eor r2, r2, r1
004dbea0  01 20 43 e5                                      strb r2, [r3, #-1]
004dbea4  01 30 83 e2                                      add r3, r3, #1
004dbea8  f1 ff ff 3a                                      blo #0x4dbe74
004dbeac  0a 60 84 e2                                      add r6, r4, #0xa
004dbeb0  05 00 a0 e1                                      mov r0, r5
004dbeb4  06 10 a0 e1                                      mov r1, r6
004dbeb8  fb fe ff eb                                      bl #0x4dbaac
004dbebc  01 30 a0 e3                                      mov r3, #1
004dbec0  00 00 53 e3                                      cmp r3, #0
004dbec4  04 30 8d e5                                      str r3, [sp, #4]
004dbec8  0e 00 00 1a                                      bne #0x4dbf08
004dbecc  0b 40 84 e2                                      add r4, r4, #0xb
004dbed0  01 20 d6 e5                                      ldrb r2, [r6, #1]
004dbed4  01 30 54 e5                                      ldrb r3, [r4, #-1]
004dbed8  04 00 56 e1                                      cmp r6, r4
004dbedc  03 30 22 e0                                      eor r3, r2, r3
004dbee0  01 30 44 e5                                      strb r3, [r4, #-1]
004dbee4  01 20 d6 e5                                      ldrb r2, [r6, #1]
004dbee8  02 30 23 e0                                      eor r3, r3, r2
004dbeec  01 30 c6 e5                                      strb r3, [r6, #1]
004dbef0  01 20 54 e5                                      ldrb r2, [r4, #-1]
004dbef4  01 60 46 e2                                      sub r6, r6, #1
004dbef8  02 30 23 e0                                      eor r3, r3, r2
004dbefc  01 30 44 e5                                      strb r3, [r4, #-1]
004dbf00  01 40 84 e2                                      add r4, r4, #1
004dbf04  f1 ff ff 8a                                      bhi #0x4dbed0
004dbf08  08 d0 8d e2                                      add sp, sp, #8
004dbf0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
