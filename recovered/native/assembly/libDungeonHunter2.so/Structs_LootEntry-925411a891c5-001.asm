; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6c00, declared_size=4, range_size=4, mode=arm
; class-group: Structs::LootEntry
; alias: _ZN7Structs9LootEntryD2Ev
; demangled: Structs::LootEntry::~LootEntry()
; decoder-mode: arm
004c6c00  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6c04, declared_size=4, range_size=4, mode=arm
; class-group: Structs::LootEntry
; alias: _ZN7Structs9LootEntryD1Ev
; demangled: Structs::LootEntry::~LootEntry()
; decoder-mode: arm
004c6c04  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6c08, declared_size=4, range_size=4, mode=arm
; class-group: Structs::LootEntry
; alias: _ZN7Structs9LootEntry8finalizeEv
; demangled: Structs::LootEntry::finalize()
; decoder-mode: arm
004c6c08  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce224, declared_size=28, range_size=28, mode=arm
; class-group: Structs::LootEntry
; alias: _ZN7Structs9LootEntryD0Ev
; demangled: Structs::LootEntry::~LootEntry()
; decoder-mode: arm
004ce224  10 40 2d e9                                      push {r4, lr}
004ce228  00 40 a0 e1                                      mov r4, r0
004ce22c  74 e2 ff eb                                      bl #0x4c6c04
004ce230  04 00 a0 e1                                      mov r0, r4
004ce234  81 08 f9 eb                                      bl #0x310440
004ce238  04 00 a0 e1                                      mov r0, r4
004ce23c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004fec08, declared_size=760, range_size=760, mode=arm
; class-group: Structs::LootEntry
; alias: _ZN7Structs9LootEntry4readEP11IStreamBase
; demangled: Structs::LootEntry::read(IStreamBase*)
; decoder-mode: arm
004fec08  30 40 2d e9                                      push {r4, r5, lr}
004fec0c  00 40 a0 e1                                      mov r4, r0
004fec10  0c d0 4d e2                                      sub sp, sp, #0xc
004fec14  01 00 a0 e1                                      mov r0, r1
004fec18  01 50 a0 e1                                      mov r5, r1
004fec1c  04 10 84 e2                                      add r1, r4, #4
004fec20  1a 69 fd eb                                      bl #0x459090
004fec24  01 30 a0 e3                                      mov r3, #1
004fec28  00 00 53 e3                                      cmp r3, #0
004fec2c  04 30 8d e5                                      str r3, [sp, #4]
004fec30  0f 00 00 1a                                      bne #0x4fec74
004fec34  05 30 84 e2                                      add r3, r4, #5
004fec38  06 20 84 e2                                      add r2, r4, #6
004fec3c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fec40  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fec44  02 00 53 e1                                      cmp r3, r2
004fec48  01 10 20 e0                                      eor r1, r0, r1
004fec4c  01 10 43 e5                                      strb r1, [r3, #-1]
004fec50  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fec54  00 10 21 e0                                      eor r1, r1, r0
004fec58  01 10 c2 e5                                      strb r1, [r2, #1]
004fec5c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fec60  01 20 42 e2                                      sub r2, r2, #1
004fec64  00 10 21 e0                                      eor r1, r1, r0
004fec68  01 10 43 e5                                      strb r1, [r3, #-1]
004fec6c  01 30 83 e2                                      add r3, r3, #1
004fec70  f1 ff ff 3a                                      blo #0x4fec3c
004fec74  05 00 a0 e1                                      mov r0, r5
004fec78  08 10 84 e2                                      add r1, r4, #8
004fec7c  03 69 fd eb                                      bl #0x459090
004fec80  01 30 a0 e3                                      mov r3, #1
004fec84  00 00 53 e3                                      cmp r3, #0
004fec88  04 30 8d e5                                      str r3, [sp, #4]
004fec8c  0f 00 00 1a                                      bne #0x4fecd0
004fec90  09 30 84 e2                                      add r3, r4, #9
004fec94  0a 20 84 e2                                      add r2, r4, #0xa
004fec98  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fec9c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004feca0  02 00 53 e1                                      cmp r3, r2
004feca4  01 10 20 e0                                      eor r1, r0, r1
004feca8  01 10 43 e5                                      strb r1, [r3, #-1]
004fecac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fecb0  00 10 21 e0                                      eor r1, r1, r0
004fecb4  01 10 c2 e5                                      strb r1, [r2, #1]
004fecb8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fecbc  01 20 42 e2                                      sub r2, r2, #1
004fecc0  00 10 21 e0                                      eor r1, r1, r0
004fecc4  01 10 43 e5                                      strb r1, [r3, #-1]
004fecc8  01 30 83 e2                                      add r3, r3, #1
004feccc  f1 ff ff 3a                                      blo #0x4fec98
004fecd0  05 00 a0 e1                                      mov r0, r5
004fecd4  0c 10 84 e2                                      add r1, r4, #0xc
004fecd8  ec 68 fd eb                                      bl #0x459090
004fecdc  01 30 a0 e3                                      mov r3, #1
004fece0  00 00 53 e3                                      cmp r3, #0
004fece4  04 30 8d e5                                      str r3, [sp, #4]
004fece8  0f 00 00 1a                                      bne #0x4fed2c
004fecec  0d 30 84 e2                                      add r3, r4, #0xd
004fecf0  0e 20 84 e2                                      add r2, r4, #0xe
004fecf4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fecf8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fecfc  02 00 53 e1                                      cmp r3, r2
004fed00  01 10 20 e0                                      eor r1, r0, r1
004fed04  01 10 43 e5                                      strb r1, [r3, #-1]
004fed08  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fed0c  00 10 21 e0                                      eor r1, r1, r0
004fed10  01 10 c2 e5                                      strb r1, [r2, #1]
004fed14  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fed18  01 20 42 e2                                      sub r2, r2, #1
004fed1c  00 10 21 e0                                      eor r1, r1, r0
004fed20  01 10 43 e5                                      strb r1, [r3, #-1]
004fed24  01 30 83 e2                                      add r3, r3, #1
004fed28  f1 ff ff 3a                                      blo #0x4fecf4
004fed2c  05 00 a0 e1                                      mov r0, r5
004fed30  10 10 84 e2                                      add r1, r4, #0x10
004fed34  d5 68 fd eb                                      bl #0x459090
004fed38  01 30 a0 e3                                      mov r3, #1
004fed3c  00 00 53 e3                                      cmp r3, #0
004fed40  04 30 8d e5                                      str r3, [sp, #4]
004fed44  0f 00 00 1a                                      bne #0x4fed88
004fed48  11 30 84 e2                                      add r3, r4, #0x11
004fed4c  12 20 84 e2                                      add r2, r4, #0x12
004fed50  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fed54  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fed58  02 00 53 e1                                      cmp r3, r2
004fed5c  01 10 20 e0                                      eor r1, r0, r1
004fed60  01 10 43 e5                                      strb r1, [r3, #-1]
004fed64  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fed68  00 10 21 e0                                      eor r1, r1, r0
004fed6c  01 10 c2 e5                                      strb r1, [r2, #1]
004fed70  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fed74  01 20 42 e2                                      sub r2, r2, #1
004fed78  00 10 21 e0                                      eor r1, r1, r0
004fed7c  01 10 43 e5                                      strb r1, [r3, #-1]
004fed80  01 30 83 e2                                      add r3, r3, #1
004fed84  f1 ff ff 3a                                      blo #0x4fed50
004fed88  05 00 a0 e1                                      mov r0, r5
004fed8c  14 10 84 e2                                      add r1, r4, #0x14
004fed90  be 68 fd eb                                      bl #0x459090
004fed94  01 30 a0 e3                                      mov r3, #1
004fed98  00 00 53 e3                                      cmp r3, #0
004fed9c  04 30 8d e5                                      str r3, [sp, #4]
004feda0  0f 00 00 1a                                      bne #0x4fede4
004feda4  15 30 84 e2                                      add r3, r4, #0x15
004feda8  16 20 84 e2                                      add r2, r4, #0x16
004fedac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fedb0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fedb4  02 00 53 e1                                      cmp r3, r2
004fedb8  01 10 20 e0                                      eor r1, r0, r1
004fedbc  01 10 43 e5                                      strb r1, [r3, #-1]
004fedc0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fedc4  00 10 21 e0                                      eor r1, r1, r0
004fedc8  01 10 c2 e5                                      strb r1, [r2, #1]
004fedcc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fedd0  01 20 42 e2                                      sub r2, r2, #1
004fedd4  00 10 21 e0                                      eor r1, r1, r0
004fedd8  01 10 43 e5                                      strb r1, [r3, #-1]
004feddc  01 30 83 e2                                      add r3, r3, #1
004fede0  f1 ff ff 3a                                      blo #0x4fedac
004fede4  05 00 a0 e1                                      mov r0, r5
004fede8  18 10 84 e2                                      add r1, r4, #0x18
004fedec  a7 68 fd eb                                      bl #0x459090
004fedf0  01 30 a0 e3                                      mov r3, #1
004fedf4  00 00 53 e3                                      cmp r3, #0
004fedf8  04 30 8d e5                                      str r3, [sp, #4]
004fedfc  0f 00 00 1a                                      bne #0x4fee40
004fee00  19 30 84 e2                                      add r3, r4, #0x19
004fee04  1a 20 84 e2                                      add r2, r4, #0x1a
004fee08  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fee0c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fee10  02 00 53 e1                                      cmp r3, r2
004fee14  01 10 20 e0                                      eor r1, r0, r1
004fee18  01 10 43 e5                                      strb r1, [r3, #-1]
004fee1c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fee20  00 10 21 e0                                      eor r1, r1, r0
004fee24  01 10 c2 e5                                      strb r1, [r2, #1]
004fee28  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fee2c  01 20 42 e2                                      sub r2, r2, #1
004fee30  00 10 21 e0                                      eor r1, r1, r0
004fee34  01 10 43 e5                                      strb r1, [r3, #-1]
004fee38  01 30 83 e2                                      add r3, r3, #1
004fee3c  f1 ff ff 3a                                      blo #0x4fee08
004fee40  05 00 a0 e1                                      mov r0, r5
004fee44  1c 10 84 e2                                      add r1, r4, #0x1c
004fee48  90 68 fd eb                                      bl #0x459090
004fee4c  01 30 a0 e3                                      mov r3, #1
004fee50  00 00 53 e3                                      cmp r3, #0
004fee54  04 30 8d e5                                      str r3, [sp, #4]
004fee58  0f 00 00 1a                                      bne #0x4fee9c
004fee5c  1d 30 84 e2                                      add r3, r4, #0x1d
004fee60  1e 20 84 e2                                      add r2, r4, #0x1e
004fee64  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fee68  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fee6c  03 00 52 e1                                      cmp r2, r3
004fee70  01 10 20 e0                                      eor r1, r0, r1
004fee74  01 10 43 e5                                      strb r1, [r3, #-1]
004fee78  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fee7c  00 10 21 e0                                      eor r1, r1, r0
004fee80  01 10 c2 e5                                      strb r1, [r2, #1]
004fee84  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fee88  01 20 42 e2                                      sub r2, r2, #1
004fee8c  00 10 21 e0                                      eor r1, r1, r0
004fee90  01 10 43 e5                                      strb r1, [r3, #-1]
004fee94  01 30 83 e2                                      add r3, r3, #1
004fee98  f1 ff ff 8a                                      bhi #0x4fee64
004fee9c  05 00 a0 e1                                      mov r0, r5
004feea0  20 10 84 e2                                      add r1, r4, #0x20
004feea4  79 68 fd eb                                      bl #0x459090
004feea8  01 30 a0 e3                                      mov r3, #1
004feeac  00 00 53 e3                                      cmp r3, #0
004feeb0  04 30 8d e5                                      str r3, [sp, #4]
004feeb4  0f 00 00 1a                                      bne #0x4feef8
004feeb8  22 30 84 e2                                      add r3, r4, #0x22
004feebc  21 40 84 e2                                      add r4, r4, #0x21
004feec0  01 10 d3 e5                                      ldrb r1, [r3, #1]
004feec4  01 20 54 e5                                      ldrb r2, [r4, #-1]
004feec8  04 00 53 e1                                      cmp r3, r4
004feecc  02 20 21 e0                                      eor r2, r1, r2
004feed0  01 20 44 e5                                      strb r2, [r4, #-1]
004feed4  01 10 d3 e5                                      ldrb r1, [r3, #1]
004feed8  01 20 22 e0                                      eor r2, r2, r1
004feedc  01 20 c3 e5                                      strb r2, [r3, #1]
004feee0  01 10 54 e5                                      ldrb r1, [r4, #-1]
004feee4  01 30 43 e2                                      sub r3, r3, #1
004feee8  01 20 22 e0                                      eor r2, r2, r1
004feeec  01 20 44 e5                                      strb r2, [r4, #-1]
004feef0  01 40 84 e2                                      add r4, r4, #1
004feef4  f1 ff ff 8a                                      bhi #0x4feec0
004feef8  0c d0 8d e2                                      add sp, sp, #0xc
004feefc  30 80 bd e8                                      pop {r4, r5, pc}
