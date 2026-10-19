; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6c0c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemListEntry
; alias: _ZN7Structs13ItemListEntryD2Ev
; demangled: Structs::ItemListEntry::~ItemListEntry()
; decoder-mode: arm
004c6c0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6c10, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemListEntry
; alias: _ZN7Structs13ItemListEntryD1Ev
; demangled: Structs::ItemListEntry::~ItemListEntry()
; decoder-mode: arm
004c6c10  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6c14, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemListEntry
; alias: _ZN7Structs13ItemListEntry8finalizeEv
; demangled: Structs::ItemListEntry::finalize()
; decoder-mode: arm
004c6c14  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce208, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemListEntry
; alias: _ZN7Structs13ItemListEntryD0Ev
; demangled: Structs::ItemListEntry::~ItemListEntry()
; decoder-mode: arm
004ce208  10 40 2d e9                                      push {r4, lr}
004ce20c  00 40 a0 e1                                      mov r4, r0
004ce210  7e e2 ff eb                                      bl #0x4c6c10
004ce214  04 00 a0 e1                                      mov r0, r4
004ce218  88 08 f9 eb                                      bl #0x310440
004ce21c  04 00 a0 e1                                      mov r0, r4
004ce220  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ed280, declared_size=220, range_size=220, mode=arm
; class-group: Structs::ItemListEntry
; alias: _ZN7Structs13ItemListEntry4readEP11IStreamBase
; demangled: Structs::ItemListEntry::read(IStreamBase*)
; decoder-mode: arm
004ed280  70 40 2d e9                                      push {r4, r5, r6, lr}
004ed284  00 40 a0 e1                                      mov r4, r0
004ed288  08 d0 4d e2                                      sub sp, sp, #8
004ed28c  01 00 a0 e1                                      mov r0, r1
004ed290  01 50 a0 e1                                      mov r5, r1
004ed294  04 10 84 e2                                      add r1, r4, #4
004ed298  7c af fd eb                                      bl #0x459090
004ed29c  01 30 a0 e3                                      mov r3, #1
004ed2a0  00 00 53 e3                                      cmp r3, #0
004ed2a4  04 30 8d e5                                      str r3, [sp, #4]
004ed2a8  0f 00 00 1a                                      bne #0x4ed2ec
004ed2ac  05 30 84 e2                                      add r3, r4, #5
004ed2b0  06 20 84 e2                                      add r2, r4, #6
004ed2b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed2b8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ed2bc  02 00 53 e1                                      cmp r3, r2
004ed2c0  01 10 20 e0                                      eor r1, r0, r1
004ed2c4  01 10 43 e5                                      strb r1, [r3, #-1]
004ed2c8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed2cc  00 10 21 e0                                      eor r1, r1, r0
004ed2d0  01 10 c2 e5                                      strb r1, [r2, #1]
004ed2d4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ed2d8  01 20 42 e2                                      sub r2, r2, #1
004ed2dc  00 10 21 e0                                      eor r1, r1, r0
004ed2e0  01 10 43 e5                                      strb r1, [r3, #-1]
004ed2e4  01 30 83 e2                                      add r3, r3, #1
004ed2e8  f1 ff ff 3a                                      blo #0x4ed2b4
004ed2ec  08 60 84 e2                                      add r6, r4, #8
004ed2f0  05 00 a0 e1                                      mov r0, r5
004ed2f4  06 10 a0 e1                                      mov r1, r6
004ed2f8  eb b9 ff eb                                      bl #0x4dbaac
004ed2fc  01 30 a0 e3                                      mov r3, #1
004ed300  00 00 53 e3                                      cmp r3, #0
004ed304  04 30 8d e5                                      str r3, [sp, #4]
004ed308  0e 00 00 1a                                      bne #0x4ed348
004ed30c  09 30 84 e2                                      add r3, r4, #9
004ed310  01 10 d6 e5                                      ldrb r1, [r6, #1]
004ed314  01 20 53 e5                                      ldrb r2, [r3, #-1]
004ed318  06 00 53 e1                                      cmp r3, r6
004ed31c  02 20 21 e0                                      eor r2, r1, r2
004ed320  01 20 43 e5                                      strb r2, [r3, #-1]
004ed324  01 10 d6 e5                                      ldrb r1, [r6, #1]
004ed328  01 20 22 e0                                      eor r2, r2, r1
004ed32c  01 20 c6 e5                                      strb r2, [r6, #1]
004ed330  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ed334  01 60 46 e2                                      sub r6, r6, #1
004ed338  01 20 22 e0                                      eor r2, r2, r1
004ed33c  01 20 43 e5                                      strb r2, [r3, #-1]
004ed340  01 30 83 e2                                      add r3, r3, #1
004ed344  f1 ff ff 3a                                      blo #0x4ed310
004ed348  05 00 a0 e1                                      mov r0, r5
004ed34c  0a 10 84 e2                                      add r1, r4, #0xa
004ed350  a9 b9 ff eb                                      bl #0x4db9fc
004ed354  08 d0 8d e2                                      add sp, sp, #8
004ed358  70 80 bd e8                                      pop {r4, r5, r6, pc}
