; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a8134, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::FontPalette
; alias: _ZN6Arrays11FontPalette13finalizeNamesEv
; demangled: Arrays::FontPalette::finalizeNames()
; decoder-mode: arm
004a8134  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a8138  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a813c  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a8140  05 50 8f e0                                      add r5, pc, r5
004a8144  06 30 95 e7                                      ldr r3, [r5, r6]
004a8148  00 30 93 e5                                      ldr r3, [r3]
004a814c  00 00 53 e3                                      cmp r3, #0
004a8150  1a 00 00 0a                                      beq #0x4a81c0
004a8154  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a8158  07 20 95 e7                                      ldr r2, [r5, r7]
004a815c  00 20 92 e5                                      ldr r2, [r2]
004a8160  00 00 52 e3                                      cmp r2, #0
004a8164  10 00 00 0a                                      beq #0x4a81ac
004a8168  00 40 a0 e3                                      mov r4, #0
004a816c  01 00 00 ea                                      b #0x4a8178
004a8170  06 30 95 e7                                      ldr r3, [r5, r6]
004a8174  00 30 93 e5                                      ldr r3, [r3]
004a8178  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a817c  01 40 84 e2                                      add r4, r4, #1
004a8180  00 00 50 e3                                      cmp r0, #0
004a8184  02 00 00 0a                                      beq #0x4a8194
004a8188  ac a0 f9 eb                                      bl #0x310440
004a818c  06 30 95 e7                                      ldr r3, [r5, r6]
004a8190  00 30 93 e5                                      ldr r3, [r3]
004a8194  07 20 95 e7                                      ldr r2, [r5, r7]
004a8198  00 20 92 e5                                      ldr r2, [r2]
004a819c  04 00 52 e1                                      cmp r2, r4
004a81a0  f2 ff ff 8a                                      bhi #0x4a8170
004a81a4  00 00 53 e3                                      cmp r3, #0
004a81a8  01 00 00 0a                                      beq #0x4a81b4
004a81ac  03 00 a0 e1                                      mov r0, r3
004a81b0  a2 a0 f9 eb                                      bl #0x310440
004a81b4  06 30 95 e7                                      ldr r3, [r5, r6]
004a81b8  00 20 a0 e3                                      mov r2, #0
004a81bc  00 20 83 e5                                      str r2, [r3]
004a81c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a81c4  50 c9 4e 00 a0 19 00 00 1c 25 00 00              .byte 0x50, 0xc9, 0x4e, 0x00, 0xa0, 0x19, 0x00, 0x00, 0x1c, 0x25, 0x00, 0x00

; FUNCTION 0x004a81d0, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::FontPalette
; alias: _ZN6Arrays11FontPalette8finalizeEv
; demangled: Arrays::FontPalette::finalize()
; decoder-mode: arm
004a81d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a81d4  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a81d8  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a81dc  05 50 8f e0                                      add r5, pc, r5
004a81e0  07 30 95 e7                                      ldr r3, [r5, r7]
004a81e4  00 30 93 e5                                      ldr r3, [r3]
004a81e8  00 00 53 e3                                      cmp r3, #0
004a81ec  2c 00 00 0a                                      beq #0x4a82a4
004a81f0  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a81f4  08 20 95 e7                                      ldr r2, [r5, r8]
004a81f8  00 20 92 e5                                      ldr r2, [r2]
004a81fc  00 00 52 e3                                      cmp r2, #0
004a8200  12 00 00 0a                                      beq #0x4a8250
004a8204  00 40 a0 e3                                      mov r4, #0
004a8208  04 60 a0 e1                                      mov r6, r4
004a820c  01 00 00 ea                                      b #0x4a8218
004a8210  07 30 95 e7                                      ldr r3, [r5, r7]
004a8214  00 30 93 e5                                      ldr r3, [r3]
004a8218  04 00 83 e0                                      add r0, r3, r4
004a821c  04 30 93 e7                                      ldr r3, [r3, r4]
004a8220  0f e0 a0 e1                                      mov lr, pc
004a8224  08 f0 93 e5                                      ldr pc, [r3, #8]
004a8228  08 30 95 e7                                      ldr r3, [r5, r8]
004a822c  01 60 86 e2                                      add r6, r6, #1
004a8230  0c 40 84 e2                                      add r4, r4, #0xc
004a8234  00 30 93 e5                                      ldr r3, [r3]
004a8238  06 00 53 e1                                      cmp r3, r6
004a823c  f3 ff ff 8a                                      bhi #0x4a8210
004a8240  07 30 95 e7                                      ldr r3, [r5, r7]
004a8244  00 30 93 e5                                      ldr r3, [r3]
004a8248  00 00 53 e3                                      cmp r3, #0
004a824c  11 00 00 0a                                      beq #0x4a8298
004a8250  04 20 13 e5                                      ldr r2, [r3, #-4]
004a8254  0c 00 a0 e3                                      mov r0, #0xc
004a8258  90 32 20 e0                                      mla r0, r0, r2, r3
004a825c  00 00 53 e1                                      cmp r3, r0
004a8260  01 00 00 1a                                      bne #0x4a826c
004a8264  09 00 00 ea                                      b #0x4a8290
004a8268  04 00 a0 e1                                      mov r0, r4
004a826c  0c 40 40 e2                                      sub r4, r0, #0xc
004a8270  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a8274  04 00 a0 e1                                      mov r0, r4
004a8278  0f e0 a0 e1                                      mov lr, pc
004a827c  00 f0 93 e5                                      ldr pc, [r3]
004a8280  07 30 95 e7                                      ldr r3, [r5, r7]
004a8284  00 00 93 e5                                      ldr r0, [r3]
004a8288  04 00 50 e1                                      cmp r0, r4
004a828c  f5 ff ff 1a                                      bne #0x4a8268
004a8290  08 00 40 e2                                      sub r0, r0, #8
004a8294  69 a0 f9 eb                                      bl #0x310440
004a8298  07 30 95 e7                                      ldr r3, [r5, r7]
004a829c  00 20 a0 e3                                      mov r2, #0
004a82a0  00 20 83 e5                                      str r2, [r3]
004a82a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a82a8  b4 c8 4e 00 44 12 00 00 1c 25 00 00              .byte 0xb4, 0xc8, 0x4e, 0x00, 0x44, 0x12, 0x00, 0x00, 0x1c, 0x25, 0x00, 0x00

; FUNCTION 0x004b2938, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::FontPalette
; alias: _ZN6Arrays11FontPalette9readNamesEP11IStreamBase
; demangled: Arrays::FontPalette::readNames(IStreamBase*)
; decoder-mode: arm
004b2938  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b293c  00 70 a0 e1                                      mov r7, r0
004b2940  1c d0 4d e2                                      sub sp, sp, #0x1c
004b2944  fa d5 ff eb                                      bl #0x4a8134
004b2948  07 00 a0 e1                                      mov r0, r7
004b294c  4f 84 f9 eb                                      bl #0x313a90
004b2950  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b2954  01 30 a0 e3                                      mov r3, #1
004b2958  00 00 53 e3                                      cmp r3, #0
004b295c  06 60 8f e0                                      add r6, pc, r6
004b2960  14 00 8d e5                                      str r0, [sp, #0x14]
004b2964  0c 30 8d e5                                      str r3, [sp, #0xc]
004b2968  12 00 00 1a                                      bne #0x4b29b8
004b296c  14 30 8d e2                                      add r3, sp, #0x14
004b2970  02 20 83 e2                                      add r2, r3, #2
004b2974  01 30 83 e2                                      add r3, r3, #1
004b2978  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b297c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b2980  03 00 52 e1                                      cmp r2, r3
004b2984  02 40 a0 e1                                      mov r4, r2
004b2988  01 10 20 e0                                      eor r1, r0, r1
004b298c  01 10 43 e5                                      strb r1, [r3, #-1]
004b2990  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2994  00 10 21 e0                                      eor r1, r1, r0
004b2998  01 10 c2 e5                                      strb r1, [r2, #1]
004b299c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b29a0  01 20 42 e2                                      sub r2, r2, #1
004b29a4  00 10 21 e0                                      eor r1, r1, r0
004b29a8  01 10 43 e5                                      strb r1, [r3, #-1]
004b29ac  01 30 83 e2                                      add r3, r3, #1
004b29b0  f0 ff ff 8a                                      bhi #0x4b2978
004b29b4  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b29b8  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b29bc  03 30 96 e7                                      ldr r3, [r6, r3]
004b29c0  00 30 93 e5                                      ldr r3, [r3]
004b29c4  00 00 53 e1                                      cmp r3, r0
004b29c8  01 00 00 0a                                      beq #0x4b29d4
004b29cc  1c d0 8d e2                                      add sp, sp, #0x1c
004b29d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b29d4  00 01 a0 e1                                      lsl r0, r0, #2
004b29d8  01 10 a0 e3                                      mov r1, #1
004b29dc  e2 76 f9 eb                                      bl #0x31056c
004b29e0  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b29e4  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b29e8  09 30 96 e7                                      ldr r3, [r6, sb]
004b29ec  00 00 52 e3                                      cmp r2, #0
004b29f0  00 00 83 e5                                      str r0, [r3]
004b29f4  f4 ff ff 0a                                      beq #0x4b29cc
004b29f8  10 a0 8d e2                                      add sl, sp, #0x10
004b29fc  01 80 a0 e3                                      mov r8, #1
004b2a00  08 10 8a e0                                      add r1, sl, r8
004b2a04  02 30 8a e2                                      add r3, sl, #2
004b2a08  00 40 a0 e3                                      mov r4, #0
004b2a0c  0a 00 8d e8                                      stm sp, {r1, r3}
004b2a10  07 00 a0 e1                                      mov r0, r7
004b2a14  0a 10 a0 e1                                      mov r1, sl
004b2a18  e0 b1 fc eb                                      bl #0x3df1a0
004b2a1c  00 00 58 e3                                      cmp r8, #0
004b2a20  0c 80 8d e5                                      str r8, [sp, #0xc]
004b2a24  0f 00 00 1a                                      bne #0x4b2a68
004b2a28  00 30 9d e5                                      ldr r3, [sp]
004b2a2c  04 20 9d e5                                      ldr r2, [sp, #4]
004b2a30  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2a34  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b2a38  03 00 52 e1                                      cmp r2, r3
004b2a3c  01 10 20 e0                                      eor r1, r0, r1
004b2a40  01 10 43 e5                                      strb r1, [r3, #-1]
004b2a44  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2a48  00 10 21 e0                                      eor r1, r1, r0
004b2a4c  01 10 c2 e5                                      strb r1, [r2, #1]
004b2a50  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b2a54  01 20 42 e2                                      sub r2, r2, #1
004b2a58  00 10 21 e0                                      eor r1, r1, r0
004b2a5c  01 10 43 e5                                      strb r1, [r3, #-1]
004b2a60  01 30 83 e2                                      add r3, r3, #1
004b2a64  f1 ff ff 8a                                      bhi #0x4b2a30
004b2a68  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b2a6c  09 50 96 e7                                      ldr r5, [r6, sb]
004b2a70  01 10 a0 e3                                      mov r1, #1
004b2a74  01 00 80 e0                                      add r0, r0, r1
004b2a78  00 b0 95 e5                                      ldr fp, [r5]
004b2a7c  ba 76 f9 eb                                      bl #0x31056c
004b2a80  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b2a84  00 30 95 e5                                      ldr r3, [r5]
004b2a88  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b2a8c  07 00 a0 e1                                      mov r0, r7
004b2a90  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b2a94  00 30 a0 e3                                      mov r3, #0
004b2a98  6d 92 f9 eb                                      bl #0x317454
004b2a9c  00 30 95 e5                                      ldr r3, [r5]
004b2aa0  00 10 a0 e3                                      mov r1, #0
004b2aa4  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b2aa8  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b2aac  01 40 84 e2                                      add r4, r4, #1
004b2ab0  03 10 c2 e7                                      strb r1, [r2, r3]
004b2ab4  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b2ab8  04 00 53 e1                                      cmp r3, r4
004b2abc  d3 ff ff 8a                                      bhi #0x4b2a10
004b2ac0  c1 ff ff ea                                      b #0x4b29cc
; mapping-symbol data/literal pool
004b2ac4  34 21 4e 00 1c 25 00 00 a0 19 00 00              .byte 0x34, 0x21, 0x4e, 0x00, 0x1c, 0x25, 0x00, 0x00, 0xa0, 0x19, 0x00, 0x00

; FUNCTION 0x004b2ad0, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::FontPalette
; alias: _ZN6Arrays11FontPalette9skipNamesEP11IStreamBase
; demangled: Arrays::FontPalette::skipNames(IStreamBase*)
; decoder-mode: arm
004b2ad0  98 ff ff ea                                      b #0x4b2938

; FUNCTION 0x004bbe9c, declared_size=324, range_size=324, mode=arm
; class-group: Arrays::FontPalette
; alias: _ZN6Arrays11FontPalette4readEP11IStreamBase
; demangled: Arrays::FontPalette::read(IStreamBase*)
; decoder-mode: arm
004bbe9c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004bbea0  0c d0 4d e2                                      sub sp, sp, #0xc
004bbea4  00 a0 a0 e1                                      mov sl, r0
004bbea8  f8 5e f9 eb                                      bl #0x313a90
004bbeac  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
004bbeb0  01 30 a0 e3                                      mov r3, #1
004bbeb4  00 00 53 e3                                      cmp r3, #0
004bbeb8  04 00 8d e5                                      str r0, [sp, #4]
004bbebc  00 30 8d e5                                      str r3, [sp]
004bbec0  06 60 8f e0                                      add r6, pc, r6
004bbec4  10 00 00 1a                                      bne #0x4bbf0c
004bbec8  04 30 8d e2                                      add r3, sp, #4
004bbecc  02 20 83 e2                                      add r2, r3, #2
004bbed0  01 30 83 e2                                      add r3, r3, #1
004bbed4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bbed8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bbedc  03 00 52 e1                                      cmp r2, r3
004bbee0  01 10 20 e0                                      eor r1, r0, r1
004bbee4  01 10 43 e5                                      strb r1, [r3, #-1]
004bbee8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bbeec  00 10 21 e0                                      eor r1, r1, r0
004bbef0  01 10 c2 e5                                      strb r1, [r2, #1]
004bbef4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bbef8  01 20 42 e2                                      sub r2, r2, #1
004bbefc  00 10 21 e0                                      eor r1, r1, r0
004bbf00  01 10 43 e5                                      strb r1, [r3, #-1]
004bbf04  01 30 83 e2                                      add r3, r3, #1
004bbf08  f1 ff ff 8a                                      bhi #0x4bbed4
004bbf0c  af b0 ff eb                                      bl #0x4a81d0
004bbf10  bc 70 9f e5                                      ldr r7, [pc, #0xbc]
004bbf14  04 40 9d e5                                      ldr r4, [sp, #4]
004bbf18  0c 50 a0 e3                                      mov r5, #0xc
004bbf1c  07 30 96 e7                                      ldr r3, [r6, r7]
004bbf20  95 04 00 e0                                      mul r0, r5, r4
004bbf24  00 40 83 e5                                      str r4, [r3]
004bbf28  08 00 80 e2                                      add r0, r0, #8
004bbf2c  01 10 a0 e3                                      mov r1, #1
004bbf30  8d 51 f9 eb                                      bl #0x31056c
004bbf34  00 00 54 e3                                      cmp r4, #0
004bbf38  00 50 80 e5                                      str r5, [r0]
004bbf3c  04 40 80 e5                                      str r4, [r0, #4]
004bbf40  08 30 80 e2                                      add r3, r0, #8
004bbf44  08 00 00 0a                                      beq #0x4bbf6c
004bbf48  88 10 9f e5                                      ldr r1, [pc, #0x88]
004bbf4c  00 20 a0 e3                                      mov r2, #0
004bbf50  01 10 96 e7                                      ldr r1, [r6, r1]
004bbf54  08 10 81 e2                                      add r1, r1, #8
004bbf58  01 20 82 e2                                      add r2, r2, #1
004bbf5c  04 00 52 e1                                      cmp r2, r4
004bbf60  08 10 80 e5                                      str r1, [r0, #8]
004bbf64  0c 00 80 e2                                      add r0, r0, #0xc
004bbf68  fa ff ff 1a                                      bne #0x4bbf58
004bbf6c  07 20 96 e7                                      ldr r2, [r6, r7]
004bbf70  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bbf74  00 10 92 e5                                      ldr r1, [r2]
004bbf78  08 20 96 e7                                      ldr r2, [r6, r8]
004bbf7c  00 00 51 e3                                      cmp r1, #0
004bbf80  00 30 82 e5                                      str r3, [r2]
004bbf84  0f 00 00 0a                                      beq #0x4bbfc8
004bbf88  00 40 a0 e3                                      mov r4, #0
004bbf8c  04 50 a0 e1                                      mov r5, r4
004bbf90  01 00 00 ea                                      b #0x4bbf9c
004bbf94  08 30 96 e7                                      ldr r3, [r6, r8]
004bbf98  00 30 93 e5                                      ldr r3, [r3]
004bbf9c  04 00 83 e0                                      add r0, r3, r4
004bbfa0  0a 10 a0 e1                                      mov r1, sl
004bbfa4  04 30 93 e7                                      ldr r3, [r3, r4]
004bbfa8  0f e0 a0 e1                                      mov lr, pc
004bbfac  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bbfb0  07 30 96 e7                                      ldr r3, [r6, r7]
004bbfb4  01 50 85 e2                                      add r5, r5, #1
004bbfb8  0c 40 84 e2                                      add r4, r4, #0xc
004bbfbc  00 30 93 e5                                      ldr r3, [r3]
004bbfc0  05 00 53 e1                                      cmp r3, r5
004bbfc4  f2 ff ff 8a                                      bhi #0x4bbf94
004bbfc8  0c d0 8d e2                                      add sp, sp, #0xc
004bbfcc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bbfd0  d0 8b 4d 00 1c 25 00 00 dc 49 00 00 44 12 00 00  .byte 0xd0, 0x8b, 0x4d, 0x00, 0x1c, 0x25, 0x00, 0x00, 0xdc, 0x49, 0x00, 0x00, 0x44, 0x12, 0x00, 0x00
