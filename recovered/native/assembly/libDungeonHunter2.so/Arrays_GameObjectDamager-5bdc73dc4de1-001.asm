; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a7b34, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::GameObjectDamager
; alias: _ZN6Arrays17GameObjectDamager13finalizeNamesEv
; demangled: Arrays::GameObjectDamager::finalizeNames()
; decoder-mode: arm
004a7b34  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a7b38  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a7b3c  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a7b40  05 50 8f e0                                      add r5, pc, r5
004a7b44  06 30 95 e7                                      ldr r3, [r5, r6]
004a7b48  00 30 93 e5                                      ldr r3, [r3]
004a7b4c  00 00 53 e3                                      cmp r3, #0
004a7b50  1a 00 00 0a                                      beq #0x4a7bc0
004a7b54  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a7b58  07 20 95 e7                                      ldr r2, [r5, r7]
004a7b5c  00 20 92 e5                                      ldr r2, [r2]
004a7b60  00 00 52 e3                                      cmp r2, #0
004a7b64  10 00 00 0a                                      beq #0x4a7bac
004a7b68  00 40 a0 e3                                      mov r4, #0
004a7b6c  01 00 00 ea                                      b #0x4a7b78
004a7b70  06 30 95 e7                                      ldr r3, [r5, r6]
004a7b74  00 30 93 e5                                      ldr r3, [r3]
004a7b78  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a7b7c  01 40 84 e2                                      add r4, r4, #1
004a7b80  00 00 50 e3                                      cmp r0, #0
004a7b84  02 00 00 0a                                      beq #0x4a7b94
004a7b88  2c a2 f9 eb                                      bl #0x310440
004a7b8c  06 30 95 e7                                      ldr r3, [r5, r6]
004a7b90  00 30 93 e5                                      ldr r3, [r3]
004a7b94  07 20 95 e7                                      ldr r2, [r5, r7]
004a7b98  00 20 92 e5                                      ldr r2, [r2]
004a7b9c  04 00 52 e1                                      cmp r2, r4
004a7ba0  f2 ff ff 8a                                      bhi #0x4a7b70
004a7ba4  00 00 53 e3                                      cmp r3, #0
004a7ba8  01 00 00 0a                                      beq #0x4a7bb4
004a7bac  03 00 a0 e1                                      mov r0, r3
004a7bb0  22 a2 f9 eb                                      bl #0x310440
004a7bb4  06 30 95 e7                                      ldr r3, [r5, r6]
004a7bb8  00 20 a0 e3                                      mov r2, #0
004a7bbc  00 20 83 e5                                      str r2, [r3]
004a7bc0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a7bc4  50 cf 4e 00 10 15 00 00 0c 2f 00 00              .byte 0x50, 0xcf, 0x4e, 0x00, 0x10, 0x15, 0x00, 0x00, 0x0c, 0x2f, 0x00, 0x00

; FUNCTION 0x004a7bd0, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::GameObjectDamager
; alias: _ZN6Arrays17GameObjectDamager8finalizeEv
; demangled: Arrays::GameObjectDamager::finalize()
; decoder-mode: arm
004a7bd0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a7bd4  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a7bd8  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a7bdc  05 50 8f e0                                      add r5, pc, r5
004a7be0  07 30 95 e7                                      ldr r3, [r5, r7]
004a7be4  00 30 93 e5                                      ldr r3, [r3]
004a7be8  00 00 53 e3                                      cmp r3, #0
004a7bec  2c 00 00 0a                                      beq #0x4a7ca4
004a7bf0  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a7bf4  08 20 95 e7                                      ldr r2, [r5, r8]
004a7bf8  00 20 92 e5                                      ldr r2, [r2]
004a7bfc  00 00 52 e3                                      cmp r2, #0
004a7c00  12 00 00 0a                                      beq #0x4a7c50
004a7c04  00 40 a0 e3                                      mov r4, #0
004a7c08  04 60 a0 e1                                      mov r6, r4
004a7c0c  01 00 00 ea                                      b #0x4a7c18
004a7c10  07 30 95 e7                                      ldr r3, [r5, r7]
004a7c14  00 30 93 e5                                      ldr r3, [r3]
004a7c18  04 00 83 e0                                      add r0, r3, r4
004a7c1c  04 30 93 e7                                      ldr r3, [r3, r4]
004a7c20  0f e0 a0 e1                                      mov lr, pc
004a7c24  08 f0 93 e5                                      ldr pc, [r3, #8]
004a7c28  08 30 95 e7                                      ldr r3, [r5, r8]
004a7c2c  01 60 86 e2                                      add r6, r6, #1
004a7c30  18 40 84 e2                                      add r4, r4, #0x18
004a7c34  00 30 93 e5                                      ldr r3, [r3]
004a7c38  06 00 53 e1                                      cmp r3, r6
004a7c3c  f3 ff ff 8a                                      bhi #0x4a7c10
004a7c40  07 30 95 e7                                      ldr r3, [r5, r7]
004a7c44  00 30 93 e5                                      ldr r3, [r3]
004a7c48  00 00 53 e3                                      cmp r3, #0
004a7c4c  11 00 00 0a                                      beq #0x4a7c98
004a7c50  04 20 13 e5                                      ldr r2, [r3, #-4]
004a7c54  18 00 a0 e3                                      mov r0, #0x18
004a7c58  90 32 20 e0                                      mla r0, r0, r2, r3
004a7c5c  00 00 53 e1                                      cmp r3, r0
004a7c60  01 00 00 1a                                      bne #0x4a7c6c
004a7c64  09 00 00 ea                                      b #0x4a7c90
004a7c68  04 00 a0 e1                                      mov r0, r4
004a7c6c  18 40 40 e2                                      sub r4, r0, #0x18
004a7c70  18 30 10 e5                                      ldr r3, [r0, #-0x18]
004a7c74  04 00 a0 e1                                      mov r0, r4
004a7c78  0f e0 a0 e1                                      mov lr, pc
004a7c7c  00 f0 93 e5                                      ldr pc, [r3]
004a7c80  07 30 95 e7                                      ldr r3, [r5, r7]
004a7c84  00 00 93 e5                                      ldr r0, [r3]
004a7c88  04 00 50 e1                                      cmp r0, r4
004a7c8c  f5 ff ff 1a                                      bne #0x4a7c68
004a7c90  08 00 40 e2                                      sub r0, r0, #8
004a7c94  e9 a1 f9 eb                                      bl #0x310440
004a7c98  07 30 95 e7                                      ldr r3, [r5, r7]
004a7c9c  00 20 a0 e3                                      mov r2, #0
004a7ca0  00 20 83 e5                                      str r2, [r3]
004a7ca4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a7ca8  b4 ce 4e 00 98 33 00 00 0c 2f 00 00              .byte 0xb4, 0xce, 0x4e, 0x00, 0x98, 0x33, 0x00, 0x00, 0x0c, 0x2f, 0x00, 0x00

; FUNCTION 0x004b6494, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::GameObjectDamager
; alias: _ZN6Arrays17GameObjectDamager9readNamesEP11IStreamBase
; demangled: Arrays::GameObjectDamager::readNames(IStreamBase*)
; decoder-mode: arm
004b6494  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b6498  00 70 a0 e1                                      mov r7, r0
004b649c  1c d0 4d e2                                      sub sp, sp, #0x1c
004b64a0  a3 c5 ff eb                                      bl #0x4a7b34
004b64a4  07 00 a0 e1                                      mov r0, r7
004b64a8  78 75 f9 eb                                      bl #0x313a90
004b64ac  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b64b0  01 30 a0 e3                                      mov r3, #1
004b64b4  00 00 53 e3                                      cmp r3, #0
004b64b8  06 60 8f e0                                      add r6, pc, r6
004b64bc  14 00 8d e5                                      str r0, [sp, #0x14]
004b64c0  0c 30 8d e5                                      str r3, [sp, #0xc]
004b64c4  12 00 00 1a                                      bne #0x4b6514
004b64c8  14 30 8d e2                                      add r3, sp, #0x14
004b64cc  02 20 83 e2                                      add r2, r3, #2
004b64d0  01 30 83 e2                                      add r3, r3, #1
004b64d4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b64d8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b64dc  03 00 52 e1                                      cmp r2, r3
004b64e0  02 40 a0 e1                                      mov r4, r2
004b64e4  01 10 20 e0                                      eor r1, r0, r1
004b64e8  01 10 43 e5                                      strb r1, [r3, #-1]
004b64ec  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b64f0  00 10 21 e0                                      eor r1, r1, r0
004b64f4  01 10 c2 e5                                      strb r1, [r2, #1]
004b64f8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b64fc  01 20 42 e2                                      sub r2, r2, #1
004b6500  00 10 21 e0                                      eor r1, r1, r0
004b6504  01 10 43 e5                                      strb r1, [r3, #-1]
004b6508  01 30 83 e2                                      add r3, r3, #1
004b650c  f0 ff ff 8a                                      bhi #0x4b64d4
004b6510  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b6514  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b6518  03 30 96 e7                                      ldr r3, [r6, r3]
004b651c  00 30 93 e5                                      ldr r3, [r3]
004b6520  00 00 53 e1                                      cmp r3, r0
004b6524  01 00 00 0a                                      beq #0x4b6530
004b6528  1c d0 8d e2                                      add sp, sp, #0x1c
004b652c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b6530  00 01 a0 e1                                      lsl r0, r0, #2
004b6534  01 10 a0 e3                                      mov r1, #1
004b6538  0b 68 f9 eb                                      bl #0x31056c
004b653c  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b6540  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b6544  09 30 96 e7                                      ldr r3, [r6, sb]
004b6548  00 00 52 e3                                      cmp r2, #0
004b654c  00 00 83 e5                                      str r0, [r3]
004b6550  f4 ff ff 0a                                      beq #0x4b6528
004b6554  10 a0 8d e2                                      add sl, sp, #0x10
004b6558  01 80 a0 e3                                      mov r8, #1
004b655c  08 10 8a e0                                      add r1, sl, r8
004b6560  02 30 8a e2                                      add r3, sl, #2
004b6564  00 40 a0 e3                                      mov r4, #0
004b6568  0a 00 8d e8                                      stm sp, {r1, r3}
004b656c  07 00 a0 e1                                      mov r0, r7
004b6570  0a 10 a0 e1                                      mov r1, sl
004b6574  09 a3 fc eb                                      bl #0x3df1a0
004b6578  00 00 58 e3                                      cmp r8, #0
004b657c  0c 80 8d e5                                      str r8, [sp, #0xc]
004b6580  0f 00 00 1a                                      bne #0x4b65c4
004b6584  00 30 9d e5                                      ldr r3, [sp]
004b6588  04 20 9d e5                                      ldr r2, [sp, #4]
004b658c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6590  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b6594  03 00 52 e1                                      cmp r2, r3
004b6598  01 10 20 e0                                      eor r1, r0, r1
004b659c  01 10 43 e5                                      strb r1, [r3, #-1]
004b65a0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b65a4  00 10 21 e0                                      eor r1, r1, r0
004b65a8  01 10 c2 e5                                      strb r1, [r2, #1]
004b65ac  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b65b0  01 20 42 e2                                      sub r2, r2, #1
004b65b4  00 10 21 e0                                      eor r1, r1, r0
004b65b8  01 10 43 e5                                      strb r1, [r3, #-1]
004b65bc  01 30 83 e2                                      add r3, r3, #1
004b65c0  f1 ff ff 8a                                      bhi #0x4b658c
004b65c4  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b65c8  09 50 96 e7                                      ldr r5, [r6, sb]
004b65cc  01 10 a0 e3                                      mov r1, #1
004b65d0  01 00 80 e0                                      add r0, r0, r1
004b65d4  00 b0 95 e5                                      ldr fp, [r5]
004b65d8  e3 67 f9 eb                                      bl #0x31056c
004b65dc  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b65e0  00 30 95 e5                                      ldr r3, [r5]
004b65e4  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b65e8  07 00 a0 e1                                      mov r0, r7
004b65ec  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b65f0  00 30 a0 e3                                      mov r3, #0
004b65f4  96 83 f9 eb                                      bl #0x317454
004b65f8  00 30 95 e5                                      ldr r3, [r5]
004b65fc  00 10 a0 e3                                      mov r1, #0
004b6600  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b6604  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b6608  01 40 84 e2                                      add r4, r4, #1
004b660c  03 10 c2 e7                                      strb r1, [r2, r3]
004b6610  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b6614  04 00 53 e1                                      cmp r3, r4
004b6618  d3 ff ff 8a                                      bhi #0x4b656c
004b661c  c1 ff ff ea                                      b #0x4b6528
; mapping-symbol data/literal pool
004b6620  d8 e5 4d 00 0c 2f 00 00 10 15 00 00              .byte 0xd8, 0xe5, 0x4d, 0x00, 0x0c, 0x2f, 0x00, 0x00, 0x10, 0x15, 0x00, 0x00

; FUNCTION 0x004b662c, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::GameObjectDamager
; alias: _ZN6Arrays17GameObjectDamager9skipNamesEP11IStreamBase
; demangled: Arrays::GameObjectDamager::skipNames(IStreamBase*)
; decoder-mode: arm
004b662c  98 ff ff ea                                      b #0x4b6494

; FUNCTION 0x004bb978, declared_size=324, range_size=324, mode=arm
; class-group: Arrays::GameObjectDamager
; alias: _ZN6Arrays17GameObjectDamager4readEP11IStreamBase
; demangled: Arrays::GameObjectDamager::read(IStreamBase*)
; decoder-mode: arm
004bb978  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004bb97c  0c d0 4d e2                                      sub sp, sp, #0xc
004bb980  00 a0 a0 e1                                      mov sl, r0
004bb984  41 60 f9 eb                                      bl #0x313a90
004bb988  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
004bb98c  01 30 a0 e3                                      mov r3, #1
004bb990  00 00 53 e3                                      cmp r3, #0
004bb994  04 00 8d e5                                      str r0, [sp, #4]
004bb998  00 30 8d e5                                      str r3, [sp]
004bb99c  06 60 8f e0                                      add r6, pc, r6
004bb9a0  10 00 00 1a                                      bne #0x4bb9e8
004bb9a4  04 30 8d e2                                      add r3, sp, #4
004bb9a8  02 20 83 e2                                      add r2, r3, #2
004bb9ac  01 30 83 e2                                      add r3, r3, #1
004bb9b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bb9b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bb9b8  03 00 52 e1                                      cmp r2, r3
004bb9bc  01 10 20 e0                                      eor r1, r0, r1
004bb9c0  01 10 43 e5                                      strb r1, [r3, #-1]
004bb9c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bb9c8  00 10 21 e0                                      eor r1, r1, r0
004bb9cc  01 10 c2 e5                                      strb r1, [r2, #1]
004bb9d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bb9d4  01 20 42 e2                                      sub r2, r2, #1
004bb9d8  00 10 21 e0                                      eor r1, r1, r0
004bb9dc  01 10 43 e5                                      strb r1, [r3, #-1]
004bb9e0  01 30 83 e2                                      add r3, r3, #1
004bb9e4  f1 ff ff 8a                                      bhi #0x4bb9b0
004bb9e8  c0 70 9f e5                                      ldr r7, [pc, #0xc0]
004bb9ec  77 b0 ff eb                                      bl #0x4a7bd0
004bb9f0  04 40 9d e5                                      ldr r4, [sp, #4]
004bb9f4  07 30 96 e7                                      ldr r3, [r6, r7]
004bb9f8  01 10 a0 e3                                      mov r1, #1
004bb9fc  84 00 84 e0                                      add r0, r4, r4, lsl #1
004bba00  01 00 80 e0                                      add r0, r0, r1
004bba04  00 40 83 e5                                      str r4, [r3]
004bba08  80 01 a0 e1                                      lsl r0, r0, #3
004bba0c  d6 52 f9 eb                                      bl #0x31056c
004bba10  18 30 a0 e3                                      mov r3, #0x18
004bba14  00 00 54 e3                                      cmp r4, #0
004bba18  18 00 80 e8                                      stm r0, {r3, r4}
004bba1c  08 30 80 e2                                      add r3, r0, #8
004bba20  08 00 00 0a                                      beq #0x4bba48
004bba24  88 10 9f e5                                      ldr r1, [pc, #0x88]
004bba28  00 20 a0 e3                                      mov r2, #0
004bba2c  01 10 96 e7                                      ldr r1, [r6, r1]
004bba30  08 10 81 e2                                      add r1, r1, #8
004bba34  01 20 82 e2                                      add r2, r2, #1
004bba38  04 00 52 e1                                      cmp r2, r4
004bba3c  08 10 80 e5                                      str r1, [r0, #8]
004bba40  18 00 80 e2                                      add r0, r0, #0x18
004bba44  fa ff ff 1a                                      bne #0x4bba34
004bba48  07 20 96 e7                                      ldr r2, [r6, r7]
004bba4c  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bba50  00 10 92 e5                                      ldr r1, [r2]
004bba54  08 20 96 e7                                      ldr r2, [r6, r8]
004bba58  00 00 51 e3                                      cmp r1, #0
004bba5c  00 30 82 e5                                      str r3, [r2]
004bba60  0f 00 00 0a                                      beq #0x4bbaa4
004bba64  00 40 a0 e3                                      mov r4, #0
004bba68  04 50 a0 e1                                      mov r5, r4
004bba6c  01 00 00 ea                                      b #0x4bba78
004bba70  08 30 96 e7                                      ldr r3, [r6, r8]
004bba74  00 30 93 e5                                      ldr r3, [r3]
004bba78  04 00 83 e0                                      add r0, r3, r4
004bba7c  0a 10 a0 e1                                      mov r1, sl
004bba80  04 30 93 e7                                      ldr r3, [r3, r4]
004bba84  0f e0 a0 e1                                      mov lr, pc
004bba88  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bba8c  07 30 96 e7                                      ldr r3, [r6, r7]
004bba90  01 50 85 e2                                      add r5, r5, #1
004bba94  18 40 84 e2                                      add r4, r4, #0x18
004bba98  00 30 93 e5                                      ldr r3, [r3]
004bba9c  05 00 53 e1                                      cmp r3, r5
004bbaa0  f2 ff ff 8a                                      bhi #0x4bba70
004bbaa4  0c d0 8d e2                                      add sp, sp, #0xc
004bbaa8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bbaac  f4 90 4d 00 0c 2f 00 00 20 0e 00 00 98 33 00 00  .byte 0xf4, 0x90, 0x4d, 0x00, 0x0c, 0x2f, 0x00, 0x00, 0x20, 0x0e, 0x00, 0x00, 0x98, 0x33, 0x00, 0x00
