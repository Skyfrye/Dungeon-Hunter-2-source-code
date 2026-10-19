; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a6958, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::ItemBonusAttrMonopoly
; alias: _ZN6Arrays21ItemBonusAttrMonopoly13finalizeNamesEv
; demangled: Arrays::ItemBonusAttrMonopoly::finalizeNames()
; decoder-mode: arm
004a6958  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a695c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a6960  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a6964  05 50 8f e0                                      add r5, pc, r5
004a6968  06 30 95 e7                                      ldr r3, [r5, r6]
004a696c  00 30 93 e5                                      ldr r3, [r3]
004a6970  00 00 53 e3                                      cmp r3, #0
004a6974  1a 00 00 0a                                      beq #0x4a69e4
004a6978  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a697c  07 20 95 e7                                      ldr r2, [r5, r7]
004a6980  00 20 92 e5                                      ldr r2, [r2]
004a6984  00 00 52 e3                                      cmp r2, #0
004a6988  10 00 00 0a                                      beq #0x4a69d0
004a698c  00 40 a0 e3                                      mov r4, #0
004a6990  01 00 00 ea                                      b #0x4a699c
004a6994  06 30 95 e7                                      ldr r3, [r5, r6]
004a6998  00 30 93 e5                                      ldr r3, [r3]
004a699c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a69a0  01 40 84 e2                                      add r4, r4, #1
004a69a4  00 00 50 e3                                      cmp r0, #0
004a69a8  02 00 00 0a                                      beq #0x4a69b8
004a69ac  a3 a6 f9 eb                                      bl #0x310440
004a69b0  06 30 95 e7                                      ldr r3, [r5, r6]
004a69b4  00 30 93 e5                                      ldr r3, [r3]
004a69b8  07 20 95 e7                                      ldr r2, [r5, r7]
004a69bc  00 20 92 e5                                      ldr r2, [r2]
004a69c0  04 00 52 e1                                      cmp r2, r4
004a69c4  f2 ff ff 8a                                      bhi #0x4a6994
004a69c8  00 00 53 e3                                      cmp r3, #0
004a69cc  01 00 00 0a                                      beq #0x4a69d8
004a69d0  03 00 a0 e1                                      mov r0, r3
004a69d4  99 a6 f9 eb                                      bl #0x310440
004a69d8  06 30 95 e7                                      ldr r3, [r5, r6]
004a69dc  00 20 a0 e3                                      mov r2, #0
004a69e0  00 20 83 e5                                      str r2, [r3]
004a69e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a69e8  2c e1 4e 00 3c 08 00 00 1c 1c 00 00              .byte 0x2c, 0xe1, 0x4e, 0x00, 0x3c, 0x08, 0x00, 0x00, 0x1c, 0x1c, 0x00, 0x00

; FUNCTION 0x004a69f4, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::ItemBonusAttrMonopoly
; alias: _ZN6Arrays21ItemBonusAttrMonopoly8finalizeEv
; demangled: Arrays::ItemBonusAttrMonopoly::finalize()
; decoder-mode: arm
004a69f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a69f8  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a69fc  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a6a00  05 50 8f e0                                      add r5, pc, r5
004a6a04  07 30 95 e7                                      ldr r3, [r5, r7]
004a6a08  00 30 93 e5                                      ldr r3, [r3]
004a6a0c  00 00 53 e3                                      cmp r3, #0
004a6a10  2c 00 00 0a                                      beq #0x4a6ac8
004a6a14  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a6a18  08 20 95 e7                                      ldr r2, [r5, r8]
004a6a1c  00 20 92 e5                                      ldr r2, [r2]
004a6a20  00 00 52 e3                                      cmp r2, #0
004a6a24  12 00 00 0a                                      beq #0x4a6a74
004a6a28  00 40 a0 e3                                      mov r4, #0
004a6a2c  04 60 a0 e1                                      mov r6, r4
004a6a30  01 00 00 ea                                      b #0x4a6a3c
004a6a34  07 30 95 e7                                      ldr r3, [r5, r7]
004a6a38  00 30 93 e5                                      ldr r3, [r3]
004a6a3c  04 00 83 e0                                      add r0, r3, r4
004a6a40  04 30 93 e7                                      ldr r3, [r3, r4]
004a6a44  0f e0 a0 e1                                      mov lr, pc
004a6a48  08 f0 93 e5                                      ldr pc, [r3, #8]
004a6a4c  08 30 95 e7                                      ldr r3, [r5, r8]
004a6a50  01 60 86 e2                                      add r6, r6, #1
004a6a54  0c 40 84 e2                                      add r4, r4, #0xc
004a6a58  00 30 93 e5                                      ldr r3, [r3]
004a6a5c  06 00 53 e1                                      cmp r3, r6
004a6a60  f3 ff ff 8a                                      bhi #0x4a6a34
004a6a64  07 30 95 e7                                      ldr r3, [r5, r7]
004a6a68  00 30 93 e5                                      ldr r3, [r3]
004a6a6c  00 00 53 e3                                      cmp r3, #0
004a6a70  11 00 00 0a                                      beq #0x4a6abc
004a6a74  04 20 13 e5                                      ldr r2, [r3, #-4]
004a6a78  0c 00 a0 e3                                      mov r0, #0xc
004a6a7c  90 32 20 e0                                      mla r0, r0, r2, r3
004a6a80  00 00 53 e1                                      cmp r3, r0
004a6a84  01 00 00 1a                                      bne #0x4a6a90
004a6a88  09 00 00 ea                                      b #0x4a6ab4
004a6a8c  04 00 a0 e1                                      mov r0, r4
004a6a90  0c 40 40 e2                                      sub r4, r0, #0xc
004a6a94  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a6a98  04 00 a0 e1                                      mov r0, r4
004a6a9c  0f e0 a0 e1                                      mov lr, pc
004a6aa0  00 f0 93 e5                                      ldr pc, [r3]
004a6aa4  07 30 95 e7                                      ldr r3, [r5, r7]
004a6aa8  00 00 93 e5                                      ldr r0, [r3]
004a6aac  04 00 50 e1                                      cmp r0, r4
004a6ab0  f5 ff ff 1a                                      bne #0x4a6a8c
004a6ab4  08 00 40 e2                                      sub r0, r0, #8
004a6ab8  60 a6 f9 eb                                      bl #0x310440
004a6abc  07 30 95 e7                                      ldr r3, [r5, r7]
004a6ac0  00 20 a0 e3                                      mov r2, #0
004a6ac4  00 20 83 e5                                      str r2, [r3]
004a6ac8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a6acc  90 e0 4e 00 28 30 00 00 1c 1c 00 00              .byte 0x90, 0xe0, 0x4e, 0x00, 0x28, 0x30, 0x00, 0x00, 0x1c, 0x1c, 0x00, 0x00

; FUNCTION 0x004b6afc, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::ItemBonusAttrMonopoly
; alias: _ZN6Arrays21ItemBonusAttrMonopoly9readNamesEP11IStreamBase
; demangled: Arrays::ItemBonusAttrMonopoly::readNames(IStreamBase*)
; decoder-mode: arm
004b6afc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b6b00  00 70 a0 e1                                      mov r7, r0
004b6b04  1c d0 4d e2                                      sub sp, sp, #0x1c
004b6b08  92 bf ff eb                                      bl #0x4a6958
004b6b0c  07 00 a0 e1                                      mov r0, r7
004b6b10  de 73 f9 eb                                      bl #0x313a90
004b6b14  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b6b18  01 30 a0 e3                                      mov r3, #1
004b6b1c  00 00 53 e3                                      cmp r3, #0
004b6b20  06 60 8f e0                                      add r6, pc, r6
004b6b24  14 00 8d e5                                      str r0, [sp, #0x14]
004b6b28  0c 30 8d e5                                      str r3, [sp, #0xc]
004b6b2c  12 00 00 1a                                      bne #0x4b6b7c
004b6b30  14 30 8d e2                                      add r3, sp, #0x14
004b6b34  02 20 83 e2                                      add r2, r3, #2
004b6b38  01 30 83 e2                                      add r3, r3, #1
004b6b3c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6b40  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b6b44  03 00 52 e1                                      cmp r2, r3
004b6b48  02 40 a0 e1                                      mov r4, r2
004b6b4c  01 10 20 e0                                      eor r1, r0, r1
004b6b50  01 10 43 e5                                      strb r1, [r3, #-1]
004b6b54  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6b58  00 10 21 e0                                      eor r1, r1, r0
004b6b5c  01 10 c2 e5                                      strb r1, [r2, #1]
004b6b60  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b6b64  01 20 42 e2                                      sub r2, r2, #1
004b6b68  00 10 21 e0                                      eor r1, r1, r0
004b6b6c  01 10 43 e5                                      strb r1, [r3, #-1]
004b6b70  01 30 83 e2                                      add r3, r3, #1
004b6b74  f0 ff ff 8a                                      bhi #0x4b6b3c
004b6b78  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b6b7c  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b6b80  03 30 96 e7                                      ldr r3, [r6, r3]
004b6b84  00 30 93 e5                                      ldr r3, [r3]
004b6b88  00 00 53 e1                                      cmp r3, r0
004b6b8c  01 00 00 0a                                      beq #0x4b6b98
004b6b90  1c d0 8d e2                                      add sp, sp, #0x1c
004b6b94  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b6b98  00 01 a0 e1                                      lsl r0, r0, #2
004b6b9c  01 10 a0 e3                                      mov r1, #1
004b6ba0  71 66 f9 eb                                      bl #0x31056c
004b6ba4  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b6ba8  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b6bac  09 30 96 e7                                      ldr r3, [r6, sb]
004b6bb0  00 00 52 e3                                      cmp r2, #0
004b6bb4  00 00 83 e5                                      str r0, [r3]
004b6bb8  f4 ff ff 0a                                      beq #0x4b6b90
004b6bbc  10 a0 8d e2                                      add sl, sp, #0x10
004b6bc0  01 80 a0 e3                                      mov r8, #1
004b6bc4  08 10 8a e0                                      add r1, sl, r8
004b6bc8  02 30 8a e2                                      add r3, sl, #2
004b6bcc  00 40 a0 e3                                      mov r4, #0
004b6bd0  0a 00 8d e8                                      stm sp, {r1, r3}
004b6bd4  07 00 a0 e1                                      mov r0, r7
004b6bd8  0a 10 a0 e1                                      mov r1, sl
004b6bdc  6f a1 fc eb                                      bl #0x3df1a0
004b6be0  00 00 58 e3                                      cmp r8, #0
004b6be4  0c 80 8d e5                                      str r8, [sp, #0xc]
004b6be8  0f 00 00 1a                                      bne #0x4b6c2c
004b6bec  00 30 9d e5                                      ldr r3, [sp]
004b6bf0  04 20 9d e5                                      ldr r2, [sp, #4]
004b6bf4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6bf8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b6bfc  03 00 52 e1                                      cmp r2, r3
004b6c00  01 10 20 e0                                      eor r1, r0, r1
004b6c04  01 10 43 e5                                      strb r1, [r3, #-1]
004b6c08  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6c0c  00 10 21 e0                                      eor r1, r1, r0
004b6c10  01 10 c2 e5                                      strb r1, [r2, #1]
004b6c14  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b6c18  01 20 42 e2                                      sub r2, r2, #1
004b6c1c  00 10 21 e0                                      eor r1, r1, r0
004b6c20  01 10 43 e5                                      strb r1, [r3, #-1]
004b6c24  01 30 83 e2                                      add r3, r3, #1
004b6c28  f1 ff ff 8a                                      bhi #0x4b6bf4
004b6c2c  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b6c30  09 50 96 e7                                      ldr r5, [r6, sb]
004b6c34  01 10 a0 e3                                      mov r1, #1
004b6c38  01 00 80 e0                                      add r0, r0, r1
004b6c3c  00 b0 95 e5                                      ldr fp, [r5]
004b6c40  49 66 f9 eb                                      bl #0x31056c
004b6c44  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b6c48  00 30 95 e5                                      ldr r3, [r5]
004b6c4c  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b6c50  07 00 a0 e1                                      mov r0, r7
004b6c54  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b6c58  00 30 a0 e3                                      mov r3, #0
004b6c5c  fc 81 f9 eb                                      bl #0x317454
004b6c60  00 30 95 e5                                      ldr r3, [r5]
004b6c64  00 10 a0 e3                                      mov r1, #0
004b6c68  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b6c6c  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b6c70  01 40 84 e2                                      add r4, r4, #1
004b6c74  03 10 c2 e7                                      strb r1, [r2, r3]
004b6c78  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b6c7c  04 00 53 e1                                      cmp r3, r4
004b6c80  d3 ff ff 8a                                      bhi #0x4b6bd4
004b6c84  c1 ff ff ea                                      b #0x4b6b90
; mapping-symbol data/literal pool
004b6c88  70 df 4d 00 1c 1c 00 00 3c 08 00 00              .byte 0x70, 0xdf, 0x4d, 0x00, 0x1c, 0x1c, 0x00, 0x00, 0x3c, 0x08, 0x00, 0x00

; FUNCTION 0x004b6c94, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::ItemBonusAttrMonopoly
; alias: _ZN6Arrays21ItemBonusAttrMonopoly9skipNamesEP11IStreamBase
; demangled: Arrays::ItemBonusAttrMonopoly::skipNames(IStreamBase*)
; decoder-mode: arm
004b6c94  98 ff ff ea                                      b #0x4b6afc

; FUNCTION 0x004baa30, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::ItemBonusAttrMonopoly
; alias: _ZN6Arrays21ItemBonusAttrMonopoly4readEP11IStreamBase
; demangled: Arrays::ItemBonusAttrMonopoly::read(IStreamBase*)
; decoder-mode: arm
004baa30  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004baa34  0c d0 4d e2                                      sub sp, sp, #0xc
004baa38  00 a0 a0 e1                                      mov sl, r0
004baa3c  13 64 f9 eb                                      bl #0x313a90
004baa40  24 61 9f e5                                      ldr r6, [pc, #0x124]
004baa44  01 30 a0 e3                                      mov r3, #1
004baa48  00 00 53 e3                                      cmp r3, #0
004baa4c  04 00 8d e5                                      str r0, [sp, #4]
004baa50  00 30 8d e5                                      str r3, [sp]
004baa54  06 60 8f e0                                      add r6, pc, r6
004baa58  10 00 00 1a                                      bne #0x4baaa0
004baa5c  04 30 8d e2                                      add r3, sp, #4
004baa60  02 20 83 e2                                      add r2, r3, #2
004baa64  01 30 83 e2                                      add r3, r3, #1
004baa68  01 00 d2 e5                                      ldrb r0, [r2, #1]
004baa6c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004baa70  03 00 52 e1                                      cmp r2, r3
004baa74  01 10 20 e0                                      eor r1, r0, r1
004baa78  01 10 43 e5                                      strb r1, [r3, #-1]
004baa7c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004baa80  00 10 21 e0                                      eor r1, r1, r0
004baa84  01 10 c2 e5                                      strb r1, [r2, #1]
004baa88  01 00 53 e5                                      ldrb r0, [r3, #-1]
004baa8c  01 20 42 e2                                      sub r2, r2, #1
004baa90  00 10 21 e0                                      eor r1, r1, r0
004baa94  01 10 43 e5                                      strb r1, [r3, #-1]
004baa98  01 30 83 e2                                      add r3, r3, #1
004baa9c  f1 ff ff 8a                                      bhi #0x4baa68
004baaa0  d3 af ff eb                                      bl #0x4a69f4
004baaa4  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004baaa8  04 40 9d e5                                      ldr r4, [sp, #4]
004baaac  0c 50 a0 e3                                      mov r5, #0xc
004baab0  07 30 96 e7                                      ldr r3, [r6, r7]
004baab4  95 04 00 e0                                      mul r0, r5, r4
004baab8  00 40 83 e5                                      str r4, [r3]
004baabc  08 00 80 e2                                      add r0, r0, #8
004baac0  01 10 a0 e3                                      mov r1, #1
004baac4  a8 56 f9 eb                                      bl #0x31056c
004baac8  00 00 54 e3                                      cmp r4, #0
004baacc  00 50 80 e5                                      str r5, [r0]
004baad0  04 40 80 e5                                      str r4, [r0, #4]
004baad4  08 30 80 e2                                      add r3, r0, #8
004baad8  0a 00 00 0a                                      beq #0x4bab08
004baadc  90 10 9f e5                                      ldr r1, [pc, #0x90]
004baae0  00 20 a0 e3                                      mov r2, #0
004baae4  02 c0 a0 e1                                      mov ip, r2
004baae8  01 10 96 e7                                      ldr r1, [r6, r1]
004baaec  08 10 81 e2                                      add r1, r1, #8
004baaf0  01 20 82 e2                                      add r2, r2, #1
004baaf4  04 00 52 e1                                      cmp r2, r4
004baaf8  08 10 80 e5                                      str r1, [r0, #8]
004baafc  10 c0 80 e5                                      str ip, [r0, #0x10]
004bab00  0c 00 80 e2                                      add r0, r0, #0xc
004bab04  f9 ff ff 1a                                      bne #0x4baaf0
004bab08  07 20 96 e7                                      ldr r2, [r6, r7]
004bab0c  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bab10  00 10 92 e5                                      ldr r1, [r2]
004bab14  08 20 96 e7                                      ldr r2, [r6, r8]
004bab18  00 00 51 e3                                      cmp r1, #0
004bab1c  00 30 82 e5                                      str r3, [r2]
004bab20  0f 00 00 0a                                      beq #0x4bab64
004bab24  00 40 a0 e3                                      mov r4, #0
004bab28  04 50 a0 e1                                      mov r5, r4
004bab2c  01 00 00 ea                                      b #0x4bab38
004bab30  08 30 96 e7                                      ldr r3, [r6, r8]
004bab34  00 30 93 e5                                      ldr r3, [r3]
004bab38  04 00 83 e0                                      add r0, r3, r4
004bab3c  0a 10 a0 e1                                      mov r1, sl
004bab40  04 30 93 e7                                      ldr r3, [r3, r4]
004bab44  0f e0 a0 e1                                      mov lr, pc
004bab48  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bab4c  07 30 96 e7                                      ldr r3, [r6, r7]
004bab50  01 50 85 e2                                      add r5, r5, #1
004bab54  0c 40 84 e2                                      add r4, r4, #0xc
004bab58  00 30 93 e5                                      ldr r3, [r3]
004bab5c  05 00 53 e1                                      cmp r3, r5
004bab60  f2 ff ff 8a                                      bhi #0x4bab30
004bab64  0c d0 8d e2                                      add sp, sp, #0xc
004bab68  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bab6c  3c a0 4d 00 1c 1c 00 00 18 1a 00 00 28 30 00 00  .byte 0x3c, 0xa0, 0x4d, 0x00, 0x1c, 0x1c, 0x00, 0x00, 0x18, 0x1a, 0x00, 0x00, 0x28, 0x30, 0x00, 0x00
