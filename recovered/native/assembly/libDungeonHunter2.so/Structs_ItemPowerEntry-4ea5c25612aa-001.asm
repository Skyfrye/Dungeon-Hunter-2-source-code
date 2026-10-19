; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6be8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerEntry
; alias: _ZN7Structs14ItemPowerEntryD2Ev
; demangled: Structs::ItemPowerEntry::~ItemPowerEntry()
; decoder-mode: arm
004c6be8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6bec, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerEntry
; alias: _ZN7Structs14ItemPowerEntryD1Ev
; demangled: Structs::ItemPowerEntry::~ItemPowerEntry()
; decoder-mode: arm
004c6bec  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6bf0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerEntry
; alias: _ZN7Structs14ItemPowerEntry8finalizeEv
; demangled: Structs::ItemPowerEntry::finalize()
; decoder-mode: arm
004c6bf0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce25c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerEntry
; alias: _ZN7Structs14ItemPowerEntryD0Ev
; demangled: Structs::ItemPowerEntry::~ItemPowerEntry()
; decoder-mode: arm
004ce25c  10 40 2d e9                                      push {r4, lr}
004ce260  00 40 a0 e1                                      mov r4, r0
004ce264  60 e2 ff eb                                      bl #0x4c6bec
004ce268  04 00 a0 e1                                      mov r0, r4
004ce26c  73 08 f9 eb                                      bl #0x310440
004ce270  04 00 a0 e1                                      mov r0, r4
004ce274  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ed200, declared_size=128, range_size=128, mode=arm
; class-group: Structs::ItemPowerEntry
; alias: _ZN7Structs14ItemPowerEntry4readEP11IStreamBase
; demangled: Structs::ItemPowerEntry::read(IStreamBase*)
; decoder-mode: arm
004ed200  30 40 2d e9                                      push {r4, r5, lr}
004ed204  00 40 a0 e1                                      mov r4, r0
004ed208  0c d0 4d e2                                      sub sp, sp, #0xc
004ed20c  01 00 a0 e1                                      mov r0, r1
004ed210  01 50 a0 e1                                      mov r5, r1
004ed214  04 10 84 e2                                      add r1, r4, #4
004ed218  9c af fd eb                                      bl #0x459090
004ed21c  01 30 a0 e3                                      mov r3, #1
004ed220  00 00 53 e3                                      cmp r3, #0
004ed224  04 30 8d e5                                      str r3, [sp, #4]
004ed228  0f 00 00 1a                                      bne #0x4ed26c
004ed22c  05 30 84 e2                                      add r3, r4, #5
004ed230  06 20 84 e2                                      add r2, r4, #6
004ed234  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed238  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ed23c  02 00 53 e1                                      cmp r3, r2
004ed240  01 10 20 e0                                      eor r1, r0, r1
004ed244  01 10 43 e5                                      strb r1, [r3, #-1]
004ed248  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed24c  00 10 21 e0                                      eor r1, r1, r0
004ed250  01 10 c2 e5                                      strb r1, [r2, #1]
004ed254  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ed258  01 20 42 e2                                      sub r2, r2, #1
004ed25c  00 10 21 e0                                      eor r1, r1, r0
004ed260  01 10 43 e5                                      strb r1, [r3, #-1]
004ed264  01 30 83 e2                                      add r3, r3, #1
004ed268  f1 ff ff 3a                                      blo #0x4ed234
004ed26c  05 00 a0 e1                                      mov r0, r5
004ed270  08 10 84 e2                                      add r1, r4, #8
004ed274  e0 b9 ff eb                                      bl #0x4db9fc
004ed278  0c d0 8d e2                                      add sp, sp, #0xc
004ed27c  30 80 bd e8                                      pop {r4, r5, pc}
