; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6bf4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::AttrBonusEntry
; alias: _ZN7Structs14AttrBonusEntryD2Ev
; demangled: Structs::AttrBonusEntry::~AttrBonusEntry()
; decoder-mode: arm
004c6bf4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6bf8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::AttrBonusEntry
; alias: _ZN7Structs14AttrBonusEntryD1Ev
; demangled: Structs::AttrBonusEntry::~AttrBonusEntry()
; decoder-mode: arm
004c6bf8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6bfc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::AttrBonusEntry
; alias: _ZN7Structs14AttrBonusEntry8finalizeEv
; demangled: Structs::AttrBonusEntry::finalize()
; decoder-mode: arm
004c6bfc  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce240, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AttrBonusEntry
; alias: _ZN7Structs14AttrBonusEntryD0Ev
; demangled: Structs::AttrBonusEntry::~AttrBonusEntry()
; decoder-mode: arm
004ce240  10 40 2d e9                                      push {r4, lr}
004ce244  00 40 a0 e1                                      mov r4, r0
004ce248  6a e2 ff eb                                      bl #0x4c6bf8
004ce24c  04 00 a0 e1                                      mov r0, r4
004ce250  7a 08 f9 eb                                      bl #0x310440
004ce254  04 00 a0 e1                                      mov r0, r4
004ce258  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004fef00, declared_size=300, range_size=300, mode=arm
; class-group: Structs::AttrBonusEntry
; alias: _ZN7Structs14AttrBonusEntry4readEP11IStreamBase
; demangled: Structs::AttrBonusEntry::read(IStreamBase*)
; decoder-mode: arm
004fef00  30 40 2d e9                                      push {r4, r5, lr}
004fef04  00 40 a0 e1                                      mov r4, r0
004fef08  0c d0 4d e2                                      sub sp, sp, #0xc
004fef0c  01 00 a0 e1                                      mov r0, r1
004fef10  01 50 a0 e1                                      mov r5, r1
004fef14  04 10 84 e2                                      add r1, r4, #4
004fef18  5c 68 fd eb                                      bl #0x459090
004fef1c  01 30 a0 e3                                      mov r3, #1
004fef20  00 00 53 e3                                      cmp r3, #0
004fef24  04 30 8d e5                                      str r3, [sp, #4]
004fef28  0f 00 00 1a                                      bne #0x4fef6c
004fef2c  05 30 84 e2                                      add r3, r4, #5
004fef30  06 20 84 e2                                      add r2, r4, #6
004fef34  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fef38  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fef3c  02 00 53 e1                                      cmp r3, r2
004fef40  01 10 20 e0                                      eor r1, r0, r1
004fef44  01 10 43 e5                                      strb r1, [r3, #-1]
004fef48  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fef4c  00 10 21 e0                                      eor r1, r1, r0
004fef50  01 10 c2 e5                                      strb r1, [r2, #1]
004fef54  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fef58  01 20 42 e2                                      sub r2, r2, #1
004fef5c  00 10 21 e0                                      eor r1, r1, r0
004fef60  01 10 43 e5                                      strb r1, [r3, #-1]
004fef64  01 30 83 e2                                      add r3, r3, #1
004fef68  f1 ff ff 3a                                      blo #0x4fef34
004fef6c  05 00 a0 e1                                      mov r0, r5
004fef70  08 10 84 e2                                      add r1, r4, #8
004fef74  45 68 fd eb                                      bl #0x459090
004fef78  01 30 a0 e3                                      mov r3, #1
004fef7c  00 00 53 e3                                      cmp r3, #0
004fef80  04 30 8d e5                                      str r3, [sp, #4]
004fef84  0f 00 00 1a                                      bne #0x4fefc8
004fef88  09 30 84 e2                                      add r3, r4, #9
004fef8c  0a 20 84 e2                                      add r2, r4, #0xa
004fef90  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fef94  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fef98  03 00 52 e1                                      cmp r2, r3
004fef9c  01 10 20 e0                                      eor r1, r0, r1
004fefa0  01 10 43 e5                                      strb r1, [r3, #-1]
004fefa4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fefa8  00 10 21 e0                                      eor r1, r1, r0
004fefac  01 10 c2 e5                                      strb r1, [r2, #1]
004fefb0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fefb4  01 20 42 e2                                      sub r2, r2, #1
004fefb8  00 10 21 e0                                      eor r1, r1, r0
004fefbc  01 10 43 e5                                      strb r1, [r3, #-1]
004fefc0  01 30 83 e2                                      add r3, r3, #1
004fefc4  f1 ff ff 8a                                      bhi #0x4fef90
004fefc8  05 00 a0 e1                                      mov r0, r5
004fefcc  0c 10 84 e2                                      add r1, r4, #0xc
004fefd0  2e 68 fd eb                                      bl #0x459090
004fefd4  01 30 a0 e3                                      mov r3, #1
004fefd8  00 00 53 e3                                      cmp r3, #0
004fefdc  04 30 8d e5                                      str r3, [sp, #4]
004fefe0  0f 00 00 1a                                      bne #0x4ff024
004fefe4  0e 30 84 e2                                      add r3, r4, #0xe
004fefe8  0d 40 84 e2                                      add r4, r4, #0xd
004fefec  01 10 d3 e5                                      ldrb r1, [r3, #1]
004feff0  01 20 54 e5                                      ldrb r2, [r4, #-1]
004feff4  03 00 54 e1                                      cmp r4, r3
004feff8  02 20 21 e0                                      eor r2, r1, r2
004feffc  01 20 44 e5                                      strb r2, [r4, #-1]
004ff000  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ff004  01 20 22 e0                                      eor r2, r2, r1
004ff008  01 20 c3 e5                                      strb r2, [r3, #1]
004ff00c  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ff010  01 30 43 e2                                      sub r3, r3, #1
004ff014  01 20 22 e0                                      eor r2, r2, r1
004ff018  01 20 44 e5                                      strb r2, [r4, #-1]
004ff01c  01 40 84 e2                                      add r4, r4, #1
004ff020  f1 ff ff 3a                                      blo #0x4fefec
004ff024  0c d0 8d e2                                      add sp, sp, #0xc
004ff028  30 80 bd e8                                      pop {r4, r5, pc}
