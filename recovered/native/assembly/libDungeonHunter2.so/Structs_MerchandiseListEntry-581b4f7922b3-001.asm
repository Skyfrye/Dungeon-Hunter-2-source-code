; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6c30, declared_size=4, range_size=4, mode=arm
; class-group: Structs::MerchandiseListEntry
; alias: _ZN7Structs20MerchandiseListEntryD2Ev
; demangled: Structs::MerchandiseListEntry::~MerchandiseListEntry()
; decoder-mode: arm
004c6c30  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6c34, declared_size=4, range_size=4, mode=arm
; class-group: Structs::MerchandiseListEntry
; alias: _ZN7Structs20MerchandiseListEntryD1Ev
; demangled: Structs::MerchandiseListEntry::~MerchandiseListEntry()
; decoder-mode: arm
004c6c34  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6c38, declared_size=4, range_size=4, mode=arm
; class-group: Structs::MerchandiseListEntry
; alias: _ZN7Structs20MerchandiseListEntry8finalizeEv
; demangled: Structs::MerchandiseListEntry::finalize()
; decoder-mode: arm
004c6c38  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce1b4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::MerchandiseListEntry
; alias: _ZN7Structs20MerchandiseListEntryD0Ev
; demangled: Structs::MerchandiseListEntry::~MerchandiseListEntry()
; decoder-mode: arm
004ce1b4  10 40 2d e9                                      push {r4, lr}
004ce1b8  00 40 a0 e1                                      mov r4, r0
004ce1bc  9c e2 ff eb                                      bl #0x4c6c34
004ce1c0  04 00 a0 e1                                      mov r0, r4
004ce1c4  9d 08 f9 eb                                      bl #0x310440
004ce1c8  04 00 a0 e1                                      mov r0, r4
004ce1cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f1bc0, declared_size=208, range_size=208, mode=arm
; class-group: Structs::MerchandiseListEntry
; alias: _ZN7Structs20MerchandiseListEntry4readEP11IStreamBase
; demangled: Structs::MerchandiseListEntry::read(IStreamBase*)
; decoder-mode: arm
004f1bc0  30 40 2d e9                                      push {r4, r5, lr}
004f1bc4  00 40 a0 e1                                      mov r4, r0
004f1bc8  0c d0 4d e2                                      sub sp, sp, #0xc
004f1bcc  01 00 a0 e1                                      mov r0, r1
004f1bd0  01 50 a0 e1                                      mov r5, r1
004f1bd4  04 10 84 e2                                      add r1, r4, #4
004f1bd8  2c 9d fd eb                                      bl #0x459090
004f1bdc  01 30 a0 e3                                      mov r3, #1
004f1be0  00 00 53 e3                                      cmp r3, #0
004f1be4  04 30 8d e5                                      str r3, [sp, #4]
004f1be8  0f 00 00 1a                                      bne #0x4f1c2c
004f1bec  05 30 84 e2                                      add r3, r4, #5
004f1bf0  06 20 84 e2                                      add r2, r4, #6
004f1bf4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1bf8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1bfc  02 00 53 e1                                      cmp r3, r2
004f1c00  01 10 20 e0                                      eor r1, r0, r1
004f1c04  01 10 43 e5                                      strb r1, [r3, #-1]
004f1c08  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1c0c  00 10 21 e0                                      eor r1, r1, r0
004f1c10  01 10 c2 e5                                      strb r1, [r2, #1]
004f1c14  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1c18  01 20 42 e2                                      sub r2, r2, #1
004f1c1c  00 10 21 e0                                      eor r1, r1, r0
004f1c20  01 10 43 e5                                      strb r1, [r3, #-1]
004f1c24  01 30 83 e2                                      add r3, r3, #1
004f1c28  f1 ff ff 3a                                      blo #0x4f1bf4
004f1c2c  05 00 a0 e1                                      mov r0, r5
004f1c30  08 10 84 e2                                      add r1, r4, #8
004f1c34  15 9d fd eb                                      bl #0x459090
004f1c38  01 30 a0 e3                                      mov r3, #1
004f1c3c  00 00 53 e3                                      cmp r3, #0
004f1c40  04 30 8d e5                                      str r3, [sp, #4]
004f1c44  0f 00 00 1a                                      bne #0x4f1c88
004f1c48  0a 30 84 e2                                      add r3, r4, #0xa
004f1c4c  09 40 84 e2                                      add r4, r4, #9
004f1c50  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f1c54  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f1c58  04 00 53 e1                                      cmp r3, r4
004f1c5c  02 20 21 e0                                      eor r2, r1, r2
004f1c60  01 20 44 e5                                      strb r2, [r4, #-1]
004f1c64  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f1c68  01 20 22 e0                                      eor r2, r2, r1
004f1c6c  01 20 c3 e5                                      strb r2, [r3, #1]
004f1c70  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f1c74  01 30 43 e2                                      sub r3, r3, #1
004f1c78  01 20 22 e0                                      eor r2, r2, r1
004f1c7c  01 20 44 e5                                      strb r2, [r4, #-1]
004f1c80  01 40 84 e2                                      add r4, r4, #1
004f1c84  f1 ff ff 8a                                      bhi #0x4f1c50
004f1c88  0c d0 8d e2                                      add sp, sp, #0xc
004f1c8c  30 80 bd e8                                      pop {r4, r5, pc}
