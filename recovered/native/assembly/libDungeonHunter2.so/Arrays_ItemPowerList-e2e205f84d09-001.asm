; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a6c58, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::ItemPowerList
; alias: _ZN6Arrays13ItemPowerList13finalizeNamesEv
; demangled: Arrays::ItemPowerList::finalizeNames()
; decoder-mode: arm
004a6c58  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a6c5c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a6c60  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a6c64  05 50 8f e0                                      add r5, pc, r5
004a6c68  06 30 95 e7                                      ldr r3, [r5, r6]
004a6c6c  00 30 93 e5                                      ldr r3, [r3]
004a6c70  00 00 53 e3                                      cmp r3, #0
004a6c74  1a 00 00 0a                                      beq #0x4a6ce4
004a6c78  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a6c7c  07 20 95 e7                                      ldr r2, [r5, r7]
004a6c80  00 20 92 e5                                      ldr r2, [r2]
004a6c84  00 00 52 e3                                      cmp r2, #0
004a6c88  10 00 00 0a                                      beq #0x4a6cd0
004a6c8c  00 40 a0 e3                                      mov r4, #0
004a6c90  01 00 00 ea                                      b #0x4a6c9c
004a6c94  06 30 95 e7                                      ldr r3, [r5, r6]
004a6c98  00 30 93 e5                                      ldr r3, [r3]
004a6c9c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a6ca0  01 40 84 e2                                      add r4, r4, #1
004a6ca4  00 00 50 e3                                      cmp r0, #0
004a6ca8  02 00 00 0a                                      beq #0x4a6cb8
004a6cac  e3 a5 f9 eb                                      bl #0x310440
004a6cb0  06 30 95 e7                                      ldr r3, [r5, r6]
004a6cb4  00 30 93 e5                                      ldr r3, [r3]
004a6cb8  07 20 95 e7                                      ldr r2, [r5, r7]
004a6cbc  00 20 92 e5                                      ldr r2, [r2]
004a6cc0  04 00 52 e1                                      cmp r2, r4
004a6cc4  f2 ff ff 8a                                      bhi #0x4a6c94
004a6cc8  00 00 53 e3                                      cmp r3, #0
004a6ccc  01 00 00 0a                                      beq #0x4a6cd8
004a6cd0  03 00 a0 e1                                      mov r0, r3
004a6cd4  d9 a5 f9 eb                                      bl #0x310440
004a6cd8  06 30 95 e7                                      ldr r3, [r5, r6]
004a6cdc  00 20 a0 e3                                      mov r2, #0
004a6ce0  00 20 83 e5                                      str r2, [r3]
004a6ce4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a6ce8  2c de 4e 00 30 41 00 00 48 0b 00 00              .byte 0x2c, 0xde, 0x4e, 0x00, 0x30, 0x41, 0x00, 0x00, 0x48, 0x0b, 0x00, 0x00

; FUNCTION 0x004a6cf4, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::ItemPowerList
; alias: _ZN6Arrays13ItemPowerList8finalizeEv
; demangled: Arrays::ItemPowerList::finalize()
; decoder-mode: arm
004a6cf4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a6cf8  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a6cfc  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a6d00  05 50 8f e0                                      add r5, pc, r5
004a6d04  07 30 95 e7                                      ldr r3, [r5, r7]
004a6d08  00 30 93 e5                                      ldr r3, [r3]
004a6d0c  00 00 53 e3                                      cmp r3, #0
004a6d10  2c 00 00 0a                                      beq #0x4a6dc8
004a6d14  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a6d18  08 20 95 e7                                      ldr r2, [r5, r8]
004a6d1c  00 20 92 e5                                      ldr r2, [r2]
004a6d20  00 00 52 e3                                      cmp r2, #0
004a6d24  12 00 00 0a                                      beq #0x4a6d74
004a6d28  00 40 a0 e3                                      mov r4, #0
004a6d2c  04 60 a0 e1                                      mov r6, r4
004a6d30  01 00 00 ea                                      b #0x4a6d3c
004a6d34  07 30 95 e7                                      ldr r3, [r5, r7]
004a6d38  00 30 93 e5                                      ldr r3, [r3]
004a6d3c  04 00 83 e0                                      add r0, r3, r4
004a6d40  04 30 93 e7                                      ldr r3, [r3, r4]
004a6d44  0f e0 a0 e1                                      mov lr, pc
004a6d48  08 f0 93 e5                                      ldr pc, [r3, #8]
004a6d4c  08 30 95 e7                                      ldr r3, [r5, r8]
004a6d50  01 60 86 e2                                      add r6, r6, #1
004a6d54  0c 40 84 e2                                      add r4, r4, #0xc
004a6d58  00 30 93 e5                                      ldr r3, [r3]
004a6d5c  06 00 53 e1                                      cmp r3, r6
004a6d60  f3 ff ff 8a                                      bhi #0x4a6d34
004a6d64  07 30 95 e7                                      ldr r3, [r5, r7]
004a6d68  00 30 93 e5                                      ldr r3, [r3]
004a6d6c  00 00 53 e3                                      cmp r3, #0
004a6d70  11 00 00 0a                                      beq #0x4a6dbc
004a6d74  04 20 13 e5                                      ldr r2, [r3, #-4]
004a6d78  0c 00 a0 e3                                      mov r0, #0xc
004a6d7c  90 32 20 e0                                      mla r0, r0, r2, r3
004a6d80  00 00 53 e1                                      cmp r3, r0
004a6d84  01 00 00 1a                                      bne #0x4a6d90
004a6d88  09 00 00 ea                                      b #0x4a6db4
004a6d8c  04 00 a0 e1                                      mov r0, r4
004a6d90  0c 40 40 e2                                      sub r4, r0, #0xc
004a6d94  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a6d98  04 00 a0 e1                                      mov r0, r4
004a6d9c  0f e0 a0 e1                                      mov lr, pc
004a6da0  00 f0 93 e5                                      ldr pc, [r3]
004a6da4  07 30 95 e7                                      ldr r3, [r5, r7]
004a6da8  00 00 93 e5                                      ldr r0, [r3]
004a6dac  04 00 50 e1                                      cmp r0, r4
004a6db0  f5 ff ff 1a                                      bne #0x4a6d8c
004a6db4  08 00 40 e2                                      sub r0, r0, #8
004a6db8  a0 a5 f9 eb                                      bl #0x310440
004a6dbc  07 30 95 e7                                      ldr r3, [r5, r7]
004a6dc0  00 20 a0 e3                                      mov r2, #0
004a6dc4  00 20 83 e5                                      str r2, [r3]
004a6dc8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a6dcc  90 dd 4e 00 a8 07 00 00 48 0b 00 00              .byte 0x90, 0xdd, 0x4e, 0x00, 0xa8, 0x07, 0x00, 0x00, 0x48, 0x0b, 0x00, 0x00

; FUNCTION 0x004b67c8, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::ItemPowerList
; alias: _ZN6Arrays13ItemPowerList9readNamesEP11IStreamBase
; demangled: Arrays::ItemPowerList::readNames(IStreamBase*)
; decoder-mode: arm
004b67c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b67cc  00 70 a0 e1                                      mov r7, r0
004b67d0  1c d0 4d e2                                      sub sp, sp, #0x1c
004b67d4  1f c1 ff eb                                      bl #0x4a6c58
004b67d8  07 00 a0 e1                                      mov r0, r7
004b67dc  ab 74 f9 eb                                      bl #0x313a90
004b67e0  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b67e4  01 30 a0 e3                                      mov r3, #1
004b67e8  00 00 53 e3                                      cmp r3, #0
004b67ec  06 60 8f e0                                      add r6, pc, r6
004b67f0  14 00 8d e5                                      str r0, [sp, #0x14]
004b67f4  0c 30 8d e5                                      str r3, [sp, #0xc]
004b67f8  12 00 00 1a                                      bne #0x4b6848
004b67fc  14 30 8d e2                                      add r3, sp, #0x14
004b6800  02 20 83 e2                                      add r2, r3, #2
004b6804  01 30 83 e2                                      add r3, r3, #1
004b6808  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b680c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b6810  03 00 52 e1                                      cmp r2, r3
004b6814  02 40 a0 e1                                      mov r4, r2
004b6818  01 10 20 e0                                      eor r1, r0, r1
004b681c  01 10 43 e5                                      strb r1, [r3, #-1]
004b6820  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6824  00 10 21 e0                                      eor r1, r1, r0
004b6828  01 10 c2 e5                                      strb r1, [r2, #1]
004b682c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b6830  01 20 42 e2                                      sub r2, r2, #1
004b6834  00 10 21 e0                                      eor r1, r1, r0
004b6838  01 10 43 e5                                      strb r1, [r3, #-1]
004b683c  01 30 83 e2                                      add r3, r3, #1
004b6840  f0 ff ff 8a                                      bhi #0x4b6808
004b6844  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b6848  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b684c  03 30 96 e7                                      ldr r3, [r6, r3]
004b6850  00 30 93 e5                                      ldr r3, [r3]
004b6854  00 00 53 e1                                      cmp r3, r0
004b6858  01 00 00 0a                                      beq #0x4b6864
004b685c  1c d0 8d e2                                      add sp, sp, #0x1c
004b6860  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b6864  00 01 a0 e1                                      lsl r0, r0, #2
004b6868  01 10 a0 e3                                      mov r1, #1
004b686c  3e 67 f9 eb                                      bl #0x31056c
004b6870  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b6874  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b6878  09 30 96 e7                                      ldr r3, [r6, sb]
004b687c  00 00 52 e3                                      cmp r2, #0
004b6880  00 00 83 e5                                      str r0, [r3]
004b6884  f4 ff ff 0a                                      beq #0x4b685c
004b6888  10 a0 8d e2                                      add sl, sp, #0x10
004b688c  01 80 a0 e3                                      mov r8, #1
004b6890  08 10 8a e0                                      add r1, sl, r8
004b6894  02 30 8a e2                                      add r3, sl, #2
004b6898  00 40 a0 e3                                      mov r4, #0
004b689c  0a 00 8d e8                                      stm sp, {r1, r3}
004b68a0  07 00 a0 e1                                      mov r0, r7
004b68a4  0a 10 a0 e1                                      mov r1, sl
004b68a8  3c a2 fc eb                                      bl #0x3df1a0
004b68ac  00 00 58 e3                                      cmp r8, #0
004b68b0  0c 80 8d e5                                      str r8, [sp, #0xc]
004b68b4  0f 00 00 1a                                      bne #0x4b68f8
004b68b8  00 30 9d e5                                      ldr r3, [sp]
004b68bc  04 20 9d e5                                      ldr r2, [sp, #4]
004b68c0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b68c4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b68c8  03 00 52 e1                                      cmp r2, r3
004b68cc  01 10 20 e0                                      eor r1, r0, r1
004b68d0  01 10 43 e5                                      strb r1, [r3, #-1]
004b68d4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b68d8  00 10 21 e0                                      eor r1, r1, r0
004b68dc  01 10 c2 e5                                      strb r1, [r2, #1]
004b68e0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b68e4  01 20 42 e2                                      sub r2, r2, #1
004b68e8  00 10 21 e0                                      eor r1, r1, r0
004b68ec  01 10 43 e5                                      strb r1, [r3, #-1]
004b68f0  01 30 83 e2                                      add r3, r3, #1
004b68f4  f1 ff ff 8a                                      bhi #0x4b68c0
004b68f8  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b68fc  09 50 96 e7                                      ldr r5, [r6, sb]
004b6900  01 10 a0 e3                                      mov r1, #1
004b6904  01 00 80 e0                                      add r0, r0, r1
004b6908  00 b0 95 e5                                      ldr fp, [r5]
004b690c  16 67 f9 eb                                      bl #0x31056c
004b6910  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b6914  00 30 95 e5                                      ldr r3, [r5]
004b6918  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b691c  07 00 a0 e1                                      mov r0, r7
004b6920  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b6924  00 30 a0 e3                                      mov r3, #0
004b6928  c9 82 f9 eb                                      bl #0x317454
004b692c  00 30 95 e5                                      ldr r3, [r5]
004b6930  00 10 a0 e3                                      mov r1, #0
004b6934  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b6938  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b693c  01 40 84 e2                                      add r4, r4, #1
004b6940  03 10 c2 e7                                      strb r1, [r2, r3]
004b6944  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b6948  04 00 53 e1                                      cmp r3, r4
004b694c  d3 ff ff 8a                                      bhi #0x4b68a0
004b6950  c1 ff ff ea                                      b #0x4b685c
; mapping-symbol data/literal pool
004b6954  a4 e2 4d 00 48 0b 00 00 30 41 00 00              .byte 0xa4, 0xe2, 0x4d, 0x00, 0x48, 0x0b, 0x00, 0x00, 0x30, 0x41, 0x00, 0x00

; FUNCTION 0x004b6960, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::ItemPowerList
; alias: _ZN6Arrays13ItemPowerList9skipNamesEP11IStreamBase
; demangled: Arrays::ItemPowerList::skipNames(IStreamBase*)
; decoder-mode: arm
004b6960  98 ff ff ea                                      b #0x4b67c8

; FUNCTION 0x004bacc8, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::ItemPowerList
; alias: _ZN6Arrays13ItemPowerList4readEP11IStreamBase
; demangled: Arrays::ItemPowerList::read(IStreamBase*)
; decoder-mode: arm
004bacc8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004baccc  0c d0 4d e2                                      sub sp, sp, #0xc
004bacd0  00 a0 a0 e1                                      mov sl, r0
004bacd4  6d 63 f9 eb                                      bl #0x313a90
004bacd8  24 61 9f e5                                      ldr r6, [pc, #0x124]
004bacdc  01 30 a0 e3                                      mov r3, #1
004bace0  00 00 53 e3                                      cmp r3, #0
004bace4  04 00 8d e5                                      str r0, [sp, #4]
004bace8  00 30 8d e5                                      str r3, [sp]
004bacec  06 60 8f e0                                      add r6, pc, r6
004bacf0  10 00 00 1a                                      bne #0x4bad38
004bacf4  04 30 8d e2                                      add r3, sp, #4
004bacf8  02 20 83 e2                                      add r2, r3, #2
004bacfc  01 30 83 e2                                      add r3, r3, #1
004bad00  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bad04  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bad08  03 00 52 e1                                      cmp r2, r3
004bad0c  01 10 20 e0                                      eor r1, r0, r1
004bad10  01 10 43 e5                                      strb r1, [r3, #-1]
004bad14  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bad18  00 10 21 e0                                      eor r1, r1, r0
004bad1c  01 10 c2 e5                                      strb r1, [r2, #1]
004bad20  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bad24  01 20 42 e2                                      sub r2, r2, #1
004bad28  00 10 21 e0                                      eor r1, r1, r0
004bad2c  01 10 43 e5                                      strb r1, [r3, #-1]
004bad30  01 30 83 e2                                      add r3, r3, #1
004bad34  f1 ff ff 8a                                      bhi #0x4bad00
004bad38  ed af ff eb                                      bl #0x4a6cf4
004bad3c  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004bad40  04 40 9d e5                                      ldr r4, [sp, #4]
004bad44  0c 50 a0 e3                                      mov r5, #0xc
004bad48  07 30 96 e7                                      ldr r3, [r6, r7]
004bad4c  95 04 00 e0                                      mul r0, r5, r4
004bad50  00 40 83 e5                                      str r4, [r3]
004bad54  08 00 80 e2                                      add r0, r0, #8
004bad58  01 10 a0 e3                                      mov r1, #1
004bad5c  02 56 f9 eb                                      bl #0x31056c
004bad60  00 00 54 e3                                      cmp r4, #0
004bad64  00 50 80 e5                                      str r5, [r0]
004bad68  04 40 80 e5                                      str r4, [r0, #4]
004bad6c  08 30 80 e2                                      add r3, r0, #8
004bad70  0a 00 00 0a                                      beq #0x4bada0
004bad74  90 10 9f e5                                      ldr r1, [pc, #0x90]
004bad78  00 20 a0 e3                                      mov r2, #0
004bad7c  02 c0 a0 e1                                      mov ip, r2
004bad80  01 10 96 e7                                      ldr r1, [r6, r1]
004bad84  08 10 81 e2                                      add r1, r1, #8
004bad88  01 20 82 e2                                      add r2, r2, #1
004bad8c  04 00 52 e1                                      cmp r2, r4
004bad90  08 10 80 e5                                      str r1, [r0, #8]
004bad94  10 c0 80 e5                                      str ip, [r0, #0x10]
004bad98  0c 00 80 e2                                      add r0, r0, #0xc
004bad9c  f9 ff ff 1a                                      bne #0x4bad88
004bada0  07 20 96 e7                                      ldr r2, [r6, r7]
004bada4  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bada8  00 10 92 e5                                      ldr r1, [r2]
004badac  08 20 96 e7                                      ldr r2, [r6, r8]
004badb0  00 00 51 e3                                      cmp r1, #0
004badb4  00 30 82 e5                                      str r3, [r2]
004badb8  0f 00 00 0a                                      beq #0x4badfc
004badbc  00 40 a0 e3                                      mov r4, #0
004badc0  04 50 a0 e1                                      mov r5, r4
004badc4  01 00 00 ea                                      b #0x4badd0
004badc8  08 30 96 e7                                      ldr r3, [r6, r8]
004badcc  00 30 93 e5                                      ldr r3, [r3]
004badd0  04 00 83 e0                                      add r0, r3, r4
004badd4  0a 10 a0 e1                                      mov r1, sl
004badd8  04 30 93 e7                                      ldr r3, [r3, r4]
004baddc  0f e0 a0 e1                                      mov lr, pc
004bade0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bade4  07 30 96 e7                                      ldr r3, [r6, r7]
004bade8  01 50 85 e2                                      add r5, r5, #1
004badec  0c 40 84 e2                                      add r4, r4, #0xc
004badf0  00 30 93 e5                                      ldr r3, [r3]
004badf4  05 00 53 e1                                      cmp r3, r5
004badf8  f2 ff ff 8a                                      bhi #0x4badc8
004badfc  0c d0 8d e2                                      add sp, sp, #0xc
004bae00  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bae04  a4 9d 4d 00 48 0b 00 00 88 30 00 00 a8 07 00 00  .byte 0xa4, 0x9d, 0x4d, 0x00, 0x48, 0x0b, 0x00, 0x00, 0x88, 0x30, 0x00, 0x00, 0xa8, 0x07, 0x00, 0x00
