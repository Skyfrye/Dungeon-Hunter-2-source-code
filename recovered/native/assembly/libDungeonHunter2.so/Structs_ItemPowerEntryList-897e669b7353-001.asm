; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d9a54, declared_size=104, range_size=104, mode=arm
; class-group: Structs::ItemPowerEntryList
; alias: _ZN7Structs18ItemPowerEntryList8finalizeEv
; demangled: Structs::ItemPowerEntryList::finalize()
; decoder-mode: arm
004d9a54  70 40 2d e9                                      push {r4, r5, r6, lr}
004d9a58  08 30 90 e5                                      ldr r3, [r0, #8]
004d9a5c  00 50 a0 e1                                      mov r5, r0
004d9a60  00 00 53 e3                                      cmp r3, #0
004d9a64  13 00 00 0a                                      beq #0x4d9ab8
004d9a68  04 20 13 e5                                      ldr r2, [r3, #-4]
004d9a6c  0c 00 a0 e3                                      mov r0, #0xc
004d9a70  90 32 20 e0                                      mla r0, r0, r2, r3
004d9a74  00 00 53 e1                                      cmp r3, r0
004d9a78  01 00 00 1a                                      bne #0x4d9a84
004d9a7c  08 00 00 ea                                      b #0x4d9aa4
004d9a80  04 00 a0 e1                                      mov r0, r4
004d9a84  0c 40 40 e2                                      sub r4, r0, #0xc
004d9a88  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004d9a8c  04 00 a0 e1                                      mov r0, r4
004d9a90  0f e0 a0 e1                                      mov lr, pc
004d9a94  00 f0 93 e5                                      ldr pc, [r3]
004d9a98  08 00 95 e5                                      ldr r0, [r5, #8]
004d9a9c  04 00 50 e1                                      cmp r0, r4
004d9aa0  f6 ff ff 1a                                      bne #0x4d9a80
004d9aa4  08 00 40 e2                                      sub r0, r0, #8
004d9aa8  64 da f8 eb                                      bl #0x310440
004d9aac  00 30 a0 e3                                      mov r3, #0
004d9ab0  04 30 85 e5                                      str r3, [r5, #4]
004d9ab4  08 30 85 e5                                      str r3, [r5, #8]
004d9ab8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004d9abc, declared_size=128, range_size=128, mode=arm
; class-group: Structs::ItemPowerEntryList
; alias: _ZN7Structs18ItemPowerEntryListD1Ev
; demangled: Structs::ItemPowerEntryList::~ItemPowerEntryList()
; decoder-mode: arm
004d9abc  70 40 2d e9                                      push {r4, r5, r6, lr}
004d9ac0  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004d9ac4  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004d9ac8  08 10 90 e5                                      ldr r1, [r0, #8]
004d9acc  03 30 8f e0                                      add r3, pc, r3
004d9ad0  02 20 93 e7                                      ldr r2, [r3, r2]
004d9ad4  00 00 51 e3                                      cmp r1, #0
004d9ad8  00 50 a0 e1                                      mov r5, r0
004d9adc  08 20 82 e2                                      add r2, r2, #8
004d9ae0  00 20 80 e5                                      str r2, [r0]
004d9ae4  10 00 00 0a                                      beq #0x4d9b2c
004d9ae8  04 30 11 e5                                      ldr r3, [r1, #-4]
004d9aec  0c 00 a0 e3                                      mov r0, #0xc
004d9af0  90 13 20 e0                                      mla r0, r0, r3, r1
004d9af4  00 00 51 e1                                      cmp r1, r0
004d9af8  01 00 00 1a                                      bne #0x4d9b04
004d9afc  08 00 00 ea                                      b #0x4d9b24
004d9b00  04 00 a0 e1                                      mov r0, r4
004d9b04  0c 40 40 e2                                      sub r4, r0, #0xc
004d9b08  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004d9b0c  04 00 a0 e1                                      mov r0, r4
004d9b10  0f e0 a0 e1                                      mov lr, pc
004d9b14  00 f0 93 e5                                      ldr pc, [r3]
004d9b18  08 00 95 e5                                      ldr r0, [r5, #8]
004d9b1c  04 00 50 e1                                      cmp r0, r4
004d9b20  f6 ff ff 1a                                      bne #0x4d9b00
004d9b24  08 00 40 e2                                      sub r0, r0, #8
004d9b28  44 da f8 eb                                      bl #0x310440
004d9b2c  05 00 a0 e1                                      mov r0, r5
004d9b30  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d9b34  c4 af 4b 00 88 30 00 00                          .byte 0xc4, 0xaf, 0x4b, 0x00, 0x88, 0x30, 0x00, 0x00

; FUNCTION 0x004d9b3c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerEntryList
; alias: _ZN7Structs18ItemPowerEntryListD0Ev
; demangled: Structs::ItemPowerEntryList::~ItemPowerEntryList()
; decoder-mode: arm
004d9b3c  10 40 2d e9                                      push {r4, lr}
004d9b40  00 40 a0 e1                                      mov r4, r0
004d9b44  dc ff ff eb                                      bl #0x4d9abc
004d9b48  04 00 a0 e1                                      mov r0, r4
004d9b4c  3b da f8 eb                                      bl #0x310440
004d9b50  04 00 a0 e1                                      mov r0, r4
004d9b54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d9b58, declared_size=128, range_size=128, mode=arm
; class-group: Structs::ItemPowerEntryList
; alias: _ZN7Structs18ItemPowerEntryListD2Ev
; demangled: Structs::ItemPowerEntryList::~ItemPowerEntryList()
; decoder-mode: arm
004d9b58  70 40 2d e9                                      push {r4, r5, r6, lr}
004d9b5c  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004d9b60  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004d9b64  08 10 90 e5                                      ldr r1, [r0, #8]
004d9b68  03 30 8f e0                                      add r3, pc, r3
004d9b6c  02 20 93 e7                                      ldr r2, [r3, r2]
004d9b70  00 00 51 e3                                      cmp r1, #0
004d9b74  00 50 a0 e1                                      mov r5, r0
004d9b78  08 20 82 e2                                      add r2, r2, #8
004d9b7c  00 20 80 e5                                      str r2, [r0]
004d9b80  10 00 00 0a                                      beq #0x4d9bc8
004d9b84  04 30 11 e5                                      ldr r3, [r1, #-4]
004d9b88  0c 00 a0 e3                                      mov r0, #0xc
004d9b8c  90 13 20 e0                                      mla r0, r0, r3, r1
004d9b90  00 00 51 e1                                      cmp r1, r0
004d9b94  01 00 00 1a                                      bne #0x4d9ba0
004d9b98  08 00 00 ea                                      b #0x4d9bc0
004d9b9c  04 00 a0 e1                                      mov r0, r4
004d9ba0  0c 40 40 e2                                      sub r4, r0, #0xc
004d9ba4  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004d9ba8  04 00 a0 e1                                      mov r0, r4
004d9bac  0f e0 a0 e1                                      mov lr, pc
004d9bb0  00 f0 93 e5                                      ldr pc, [r3]
004d9bb4  08 00 95 e5                                      ldr r0, [r5, #8]
004d9bb8  04 00 50 e1                                      cmp r0, r4
004d9bbc  f6 ff ff 1a                                      bne #0x4d9b9c
004d9bc0  08 00 40 e2                                      sub r0, r0, #8
004d9bc4  1d da f8 eb                                      bl #0x310440
004d9bc8  05 00 a0 e1                                      mov r0, r5
004d9bcc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d9bd0  28 af 4b 00 88 30 00 00                          .byte 0x28, 0xaf, 0x4b, 0x00, 0x88, 0x30, 0x00, 0x00

; FUNCTION 0x004dc8fc, declared_size=364, range_size=364, mode=arm
; class-group: Structs::ItemPowerEntryList
; alias: _ZN7Structs18ItemPowerEntryList4readEP11IStreamBase
; demangled: Structs::ItemPowerEntryList::read(IStreamBase*)
; decoder-mode: arm
004dc8fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004dc900  00 50 a0 e1                                      mov r5, r0
004dc904  08 d0 4d e2                                      sub sp, sp, #8
004dc908  01 00 a0 e1                                      mov r0, r1
004dc90c  01 70 a0 e1                                      mov r7, r1
004dc910  48 61 9f e5                                      ldr r6, [pc, #0x148]
004dc914  04 10 85 e2                                      add r1, r5, #4
004dc918  20 0a fc eb                                      bl #0x3df1a0
004dc91c  01 30 a0 e3                                      mov r3, #1
004dc920  00 00 53 e3                                      cmp r3, #0
004dc924  04 30 8d e5                                      str r3, [sp, #4]
004dc928  06 60 8f e0                                      add r6, pc, r6
004dc92c  0f 00 00 1a                                      bne #0x4dc970
004dc930  05 30 85 e2                                      add r3, r5, #5
004dc934  06 20 85 e2                                      add r2, r5, #6
004dc938  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dc93c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dc940  02 00 53 e1                                      cmp r3, r2
004dc944  01 10 20 e0                                      eor r1, r0, r1
004dc948  01 10 43 e5                                      strb r1, [r3, #-1]
004dc94c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dc950  00 10 21 e0                                      eor r1, r1, r0
004dc954  01 10 c2 e5                                      strb r1, [r2, #1]
004dc958  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dc95c  01 20 42 e2                                      sub r2, r2, #1
004dc960  00 10 21 e0                                      eor r1, r1, r0
004dc964  01 10 43 e5                                      strb r1, [r3, #-1]
004dc968  01 30 83 e2                                      add r3, r3, #1
004dc96c  f1 ff ff 3a                                      blo #0x4dc938
004dc970  08 30 95 e5                                      ldr r3, [r5, #8]
004dc974  00 00 53 e3                                      cmp r3, #0
004dc978  10 00 00 0a                                      beq #0x4dc9c0
004dc97c  04 20 13 e5                                      ldr r2, [r3, #-4]
004dc980  0c 00 a0 e3                                      mov r0, #0xc
004dc984  90 32 20 e0                                      mla r0, r0, r2, r3
004dc988  00 00 53 e1                                      cmp r3, r0
004dc98c  01 00 00 1a                                      bne #0x4dc998
004dc990  08 00 00 ea                                      b #0x4dc9b8
004dc994  04 00 a0 e1                                      mov r0, r4
004dc998  0c 40 40 e2                                      sub r4, r0, #0xc
004dc99c  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004dc9a0  04 00 a0 e1                                      mov r0, r4
004dc9a4  0f e0 a0 e1                                      mov lr, pc
004dc9a8  00 f0 93 e5                                      ldr pc, [r3]
004dc9ac  08 00 95 e5                                      ldr r0, [r5, #8]
004dc9b0  04 00 50 e1                                      cmp r0, r4
004dc9b4  f6 ff ff 1a                                      bne #0x4dc994
004dc9b8  08 00 40 e2                                      sub r0, r0, #8
004dc9bc  9f ce f8 eb                                      bl #0x310440
004dc9c0  04 40 95 e5                                      ldr r4, [r5, #4]
004dc9c4  0c 80 a0 e3                                      mov r8, #0xc
004dc9c8  01 10 a0 e3                                      mov r1, #1
004dc9cc  98 04 00 e0                                      mul r0, r8, r4
004dc9d0  08 00 80 e2                                      add r0, r0, #8
004dc9d4  e4 ce f8 eb                                      bl #0x31056c
004dc9d8  00 00 54 e3                                      cmp r4, #0
004dc9dc  00 80 80 e5                                      str r8, [r0]
004dc9e0  04 40 80 e5                                      str r4, [r0, #4]
004dc9e4  08 30 80 e2                                      add r3, r0, #8
004dc9e8  08 00 00 0a                                      beq #0x4dca10
004dc9ec  70 10 9f e5                                      ldr r1, [pc, #0x70]
004dc9f0  00 20 a0 e3                                      mov r2, #0
004dc9f4  01 10 96 e7                                      ldr r1, [r6, r1]
004dc9f8  08 10 81 e2                                      add r1, r1, #8
004dc9fc  01 20 82 e2                                      add r2, r2, #1
004dca00  04 00 52 e1                                      cmp r2, r4
004dca04  08 10 80 e5                                      str r1, [r0, #8]
004dca08  0c 00 80 e2                                      add r0, r0, #0xc
004dca0c  fa ff ff 1a                                      bne #0x4dc9fc
004dca10  04 20 95 e5                                      ldr r2, [r5, #4]
004dca14  08 30 85 e5                                      str r3, [r5, #8]
004dca18  00 00 52 e3                                      cmp r2, #0
004dca1c  0d 00 00 0a                                      beq #0x4dca58
004dca20  00 40 a0 e3                                      mov r4, #0
004dca24  04 60 a0 e1                                      mov r6, r4
004dca28  00 00 00 ea                                      b #0x4dca30
004dca2c  08 30 95 e5                                      ldr r3, [r5, #8]
004dca30  04 00 83 e0                                      add r0, r3, r4
004dca34  07 10 a0 e1                                      mov r1, r7
004dca38  04 30 93 e7                                      ldr r3, [r3, r4]
004dca3c  0f e0 a0 e1                                      mov lr, pc
004dca40  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004dca44  04 30 95 e5                                      ldr r3, [r5, #4]
004dca48  01 60 86 e2                                      add r6, r6, #1
004dca4c  0c 40 84 e2                                      add r4, r4, #0xc
004dca50  06 00 53 e1                                      cmp r3, r6
004dca54  f4 ff ff 8a                                      bhi #0x4dca2c
004dca58  08 d0 8d e2                                      add sp, sp, #8
004dca5c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004dca60  68 81 4b 00 0c 07 00 00                          .byte 0x68, 0x81, 0x4b, 0x00, 0x0c, 0x07, 0x00, 0x00
