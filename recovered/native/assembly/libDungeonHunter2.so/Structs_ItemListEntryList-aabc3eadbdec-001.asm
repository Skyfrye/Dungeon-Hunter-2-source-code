; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d40b4, declared_size=104, range_size=104, mode=arm
; class-group: Structs::ItemListEntryList
; alias: _ZN7Structs17ItemListEntryList8finalizeEv
; demangled: Structs::ItemListEntryList::finalize()
; decoder-mode: arm
004d40b4  70 40 2d e9                                      push {r4, r5, r6, lr}
004d40b8  08 30 90 e5                                      ldr r3, [r0, #8]
004d40bc  00 50 a0 e1                                      mov r5, r0
004d40c0  00 00 53 e3                                      cmp r3, #0
004d40c4  13 00 00 0a                                      beq #0x4d4118
004d40c8  04 20 13 e5                                      ldr r2, [r3, #-4]
004d40cc  0c 00 a0 e3                                      mov r0, #0xc
004d40d0  90 32 20 e0                                      mla r0, r0, r2, r3
004d40d4  00 00 53 e1                                      cmp r3, r0
004d40d8  01 00 00 1a                                      bne #0x4d40e4
004d40dc  08 00 00 ea                                      b #0x4d4104
004d40e0  04 00 a0 e1                                      mov r0, r4
004d40e4  0c 40 40 e2                                      sub r4, r0, #0xc
004d40e8  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004d40ec  04 00 a0 e1                                      mov r0, r4
004d40f0  0f e0 a0 e1                                      mov lr, pc
004d40f4  00 f0 93 e5                                      ldr pc, [r3]
004d40f8  08 00 95 e5                                      ldr r0, [r5, #8]
004d40fc  04 00 50 e1                                      cmp r0, r4
004d4100  f6 ff ff 1a                                      bne #0x4d40e0
004d4104  08 00 40 e2                                      sub r0, r0, #8
004d4108  cc f0 f8 eb                                      bl #0x310440
004d410c  00 30 a0 e3                                      mov r3, #0
004d4110  04 30 85 e5                                      str r3, [r5, #4]
004d4114  08 30 85 e5                                      str r3, [r5, #8]
004d4118  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004d411c, declared_size=128, range_size=128, mode=arm
; class-group: Structs::ItemListEntryList
; alias: _ZN7Structs17ItemListEntryListD1Ev
; demangled: Structs::ItemListEntryList::~ItemListEntryList()
; decoder-mode: arm
004d411c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d4120  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004d4124  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004d4128  08 10 90 e5                                      ldr r1, [r0, #8]
004d412c  03 30 8f e0                                      add r3, pc, r3
004d4130  02 20 93 e7                                      ldr r2, [r3, r2]
004d4134  00 00 51 e3                                      cmp r1, #0
004d4138  00 50 a0 e1                                      mov r5, r0
004d413c  08 20 82 e2                                      add r2, r2, #8
004d4140  00 20 80 e5                                      str r2, [r0]
004d4144  10 00 00 0a                                      beq #0x4d418c
004d4148  04 30 11 e5                                      ldr r3, [r1, #-4]
004d414c  0c 00 a0 e3                                      mov r0, #0xc
004d4150  90 13 20 e0                                      mla r0, r0, r3, r1
004d4154  00 00 51 e1                                      cmp r1, r0
004d4158  01 00 00 1a                                      bne #0x4d4164
004d415c  08 00 00 ea                                      b #0x4d4184
004d4160  04 00 a0 e1                                      mov r0, r4
004d4164  0c 40 40 e2                                      sub r4, r0, #0xc
004d4168  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004d416c  04 00 a0 e1                                      mov r0, r4
004d4170  0f e0 a0 e1                                      mov lr, pc
004d4174  00 f0 93 e5                                      ldr pc, [r3]
004d4178  08 00 95 e5                                      ldr r0, [r5, #8]
004d417c  04 00 50 e1                                      cmp r0, r4
004d4180  f6 ff ff 1a                                      bne #0x4d4160
004d4184  08 00 40 e2                                      sub r0, r0, #8
004d4188  ac f0 f8 eb                                      bl #0x310440
004d418c  05 00 a0 e1                                      mov r0, r5
004d4190  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d4194  64 09 4c 00 28 38 00 00                          .byte 0x64, 0x09, 0x4c, 0x00, 0x28, 0x38, 0x00, 0x00

; FUNCTION 0x004d419c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemListEntryList
; alias: _ZN7Structs17ItemListEntryListD0Ev
; demangled: Structs::ItemListEntryList::~ItemListEntryList()
; decoder-mode: arm
004d419c  10 40 2d e9                                      push {r4, lr}
004d41a0  00 40 a0 e1                                      mov r4, r0
004d41a4  dc ff ff eb                                      bl #0x4d411c
004d41a8  04 00 a0 e1                                      mov r0, r4
004d41ac  a3 f0 f8 eb                                      bl #0x310440
004d41b0  04 00 a0 e1                                      mov r0, r4
004d41b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d41b8, declared_size=128, range_size=128, mode=arm
; class-group: Structs::ItemListEntryList
; alias: _ZN7Structs17ItemListEntryListD2Ev
; demangled: Structs::ItemListEntryList::~ItemListEntryList()
; decoder-mode: arm
004d41b8  70 40 2d e9                                      push {r4, r5, r6, lr}
004d41bc  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004d41c0  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004d41c4  08 10 90 e5                                      ldr r1, [r0, #8]
004d41c8  03 30 8f e0                                      add r3, pc, r3
004d41cc  02 20 93 e7                                      ldr r2, [r3, r2]
004d41d0  00 00 51 e3                                      cmp r1, #0
004d41d4  00 50 a0 e1                                      mov r5, r0
004d41d8  08 20 82 e2                                      add r2, r2, #8
004d41dc  00 20 80 e5                                      str r2, [r0]
004d41e0  10 00 00 0a                                      beq #0x4d4228
004d41e4  04 30 11 e5                                      ldr r3, [r1, #-4]
004d41e8  0c 00 a0 e3                                      mov r0, #0xc
004d41ec  90 13 20 e0                                      mla r0, r0, r3, r1
004d41f0  00 00 51 e1                                      cmp r1, r0
004d41f4  01 00 00 1a                                      bne #0x4d4200
004d41f8  08 00 00 ea                                      b #0x4d4220
004d41fc  04 00 a0 e1                                      mov r0, r4
004d4200  0c 40 40 e2                                      sub r4, r0, #0xc
004d4204  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004d4208  04 00 a0 e1                                      mov r0, r4
004d420c  0f e0 a0 e1                                      mov lr, pc
004d4210  00 f0 93 e5                                      ldr pc, [r3]
004d4214  08 00 95 e5                                      ldr r0, [r5, #8]
004d4218  04 00 50 e1                                      cmp r0, r4
004d421c  f6 ff ff 1a                                      bne #0x4d41fc
004d4220  08 00 40 e2                                      sub r0, r0, #8
004d4224  85 f0 f8 eb                                      bl #0x310440
004d4228  05 00 a0 e1                                      mov r0, r5
004d422c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d4230  c8 08 4c 00 28 38 00 00                          .byte 0xc8, 0x08, 0x4c, 0x00, 0x28, 0x38, 0x00, 0x00

; FUNCTION 0x004dc790, declared_size=364, range_size=364, mode=arm
; class-group: Structs::ItemListEntryList
; alias: _ZN7Structs17ItemListEntryList4readEP11IStreamBase
; demangled: Structs::ItemListEntryList::read(IStreamBase*)
; decoder-mode: arm
004dc790  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004dc794  00 50 a0 e1                                      mov r5, r0
004dc798  08 d0 4d e2                                      sub sp, sp, #8
004dc79c  01 00 a0 e1                                      mov r0, r1
004dc7a0  01 70 a0 e1                                      mov r7, r1
004dc7a4  48 61 9f e5                                      ldr r6, [pc, #0x148]
004dc7a8  04 10 85 e2                                      add r1, r5, #4
004dc7ac  7b 0a fc eb                                      bl #0x3df1a0
004dc7b0  01 30 a0 e3                                      mov r3, #1
004dc7b4  00 00 53 e3                                      cmp r3, #0
004dc7b8  04 30 8d e5                                      str r3, [sp, #4]
004dc7bc  06 60 8f e0                                      add r6, pc, r6
004dc7c0  0f 00 00 1a                                      bne #0x4dc804
004dc7c4  05 30 85 e2                                      add r3, r5, #5
004dc7c8  06 20 85 e2                                      add r2, r5, #6
004dc7cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dc7d0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dc7d4  02 00 53 e1                                      cmp r3, r2
004dc7d8  01 10 20 e0                                      eor r1, r0, r1
004dc7dc  01 10 43 e5                                      strb r1, [r3, #-1]
004dc7e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dc7e4  00 10 21 e0                                      eor r1, r1, r0
004dc7e8  01 10 c2 e5                                      strb r1, [r2, #1]
004dc7ec  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dc7f0  01 20 42 e2                                      sub r2, r2, #1
004dc7f4  00 10 21 e0                                      eor r1, r1, r0
004dc7f8  01 10 43 e5                                      strb r1, [r3, #-1]
004dc7fc  01 30 83 e2                                      add r3, r3, #1
004dc800  f1 ff ff 3a                                      blo #0x4dc7cc
004dc804  08 30 95 e5                                      ldr r3, [r5, #8]
004dc808  00 00 53 e3                                      cmp r3, #0
004dc80c  10 00 00 0a                                      beq #0x4dc854
004dc810  04 20 13 e5                                      ldr r2, [r3, #-4]
004dc814  0c 00 a0 e3                                      mov r0, #0xc
004dc818  90 32 20 e0                                      mla r0, r0, r2, r3
004dc81c  00 00 53 e1                                      cmp r3, r0
004dc820  01 00 00 1a                                      bne #0x4dc82c
004dc824  08 00 00 ea                                      b #0x4dc84c
004dc828  04 00 a0 e1                                      mov r0, r4
004dc82c  0c 40 40 e2                                      sub r4, r0, #0xc
004dc830  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004dc834  04 00 a0 e1                                      mov r0, r4
004dc838  0f e0 a0 e1                                      mov lr, pc
004dc83c  00 f0 93 e5                                      ldr pc, [r3]
004dc840  08 00 95 e5                                      ldr r0, [r5, #8]
004dc844  04 00 50 e1                                      cmp r0, r4
004dc848  f6 ff ff 1a                                      bne #0x4dc828
004dc84c  08 00 40 e2                                      sub r0, r0, #8
004dc850  fa ce f8 eb                                      bl #0x310440
004dc854  04 40 95 e5                                      ldr r4, [r5, #4]
004dc858  0c 80 a0 e3                                      mov r8, #0xc
004dc85c  01 10 a0 e3                                      mov r1, #1
004dc860  98 04 00 e0                                      mul r0, r8, r4
004dc864  08 00 80 e2                                      add r0, r0, #8
004dc868  3f cf f8 eb                                      bl #0x31056c
004dc86c  00 00 54 e3                                      cmp r4, #0
004dc870  00 80 80 e5                                      str r8, [r0]
004dc874  04 40 80 e5                                      str r4, [r0, #4]
004dc878  08 30 80 e2                                      add r3, r0, #8
004dc87c  08 00 00 0a                                      beq #0x4dc8a4
004dc880  70 10 9f e5                                      ldr r1, [pc, #0x70]
004dc884  00 20 a0 e3                                      mov r2, #0
004dc888  01 10 96 e7                                      ldr r1, [r6, r1]
004dc88c  08 10 81 e2                                      add r1, r1, #8
004dc890  01 20 82 e2                                      add r2, r2, #1
004dc894  04 00 52 e1                                      cmp r2, r4
004dc898  08 10 80 e5                                      str r1, [r0, #8]
004dc89c  0c 00 80 e2                                      add r0, r0, #0xc
004dc8a0  fa ff ff 1a                                      bne #0x4dc890
004dc8a4  04 20 95 e5                                      ldr r2, [r5, #4]
004dc8a8  08 30 85 e5                                      str r3, [r5, #8]
004dc8ac  00 00 52 e3                                      cmp r2, #0
004dc8b0  0d 00 00 0a                                      beq #0x4dc8ec
004dc8b4  00 40 a0 e3                                      mov r4, #0
004dc8b8  04 60 a0 e1                                      mov r6, r4
004dc8bc  00 00 00 ea                                      b #0x4dc8c4
004dc8c0  08 30 95 e5                                      ldr r3, [r5, #8]
004dc8c4  04 00 83 e0                                      add r0, r3, r4
004dc8c8  07 10 a0 e1                                      mov r1, r7
004dc8cc  04 30 93 e7                                      ldr r3, [r3, r4]
004dc8d0  0f e0 a0 e1                                      mov lr, pc
004dc8d4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004dc8d8  04 30 95 e5                                      ldr r3, [r5, #4]
004dc8dc  01 60 86 e2                                      add r6, r6, #1
004dc8e0  0c 40 84 e2                                      add r4, r4, #0xc
004dc8e4  06 00 53 e1                                      cmp r3, r6
004dc8e8  f4 ff ff 8a                                      bhi #0x4dc8c0
004dc8ec  08 d0 8d e2                                      add sp, sp, #8
004dc8f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004dc8f4  d4 82 4b 00 28 31 00 00                          .byte 0xd4, 0x82, 0x4b, 0x00, 0x28, 0x31, 0x00, 0x00
