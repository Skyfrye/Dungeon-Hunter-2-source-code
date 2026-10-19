; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a5be4, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::LootTable
; alias: _ZN6Arrays9LootTable13finalizeNamesEv
; demangled: Arrays::LootTable::finalizeNames()
; decoder-mode: arm
004a5be4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a5be8  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a5bec  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a5bf0  05 50 8f e0                                      add r5, pc, r5
004a5bf4  06 30 95 e7                                      ldr r3, [r5, r6]
004a5bf8  00 30 93 e5                                      ldr r3, [r3]
004a5bfc  00 00 53 e3                                      cmp r3, #0
004a5c00  1a 00 00 0a                                      beq #0x4a5c70
004a5c04  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a5c08  07 20 95 e7                                      ldr r2, [r5, r7]
004a5c0c  00 20 92 e5                                      ldr r2, [r2]
004a5c10  00 00 52 e3                                      cmp r2, #0
004a5c14  10 00 00 0a                                      beq #0x4a5c5c
004a5c18  00 40 a0 e3                                      mov r4, #0
004a5c1c  01 00 00 ea                                      b #0x4a5c28
004a5c20  06 30 95 e7                                      ldr r3, [r5, r6]
004a5c24  00 30 93 e5                                      ldr r3, [r3]
004a5c28  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a5c2c  01 40 84 e2                                      add r4, r4, #1
004a5c30  00 00 50 e3                                      cmp r0, #0
004a5c34  02 00 00 0a                                      beq #0x4a5c44
004a5c38  00 aa f9 eb                                      bl #0x310440
004a5c3c  06 30 95 e7                                      ldr r3, [r5, r6]
004a5c40  00 30 93 e5                                      ldr r3, [r3]
004a5c44  07 20 95 e7                                      ldr r2, [r5, r7]
004a5c48  00 20 92 e5                                      ldr r2, [r2]
004a5c4c  04 00 52 e1                                      cmp r2, r4
004a5c50  f2 ff ff 8a                                      bhi #0x4a5c20
004a5c54  00 00 53 e3                                      cmp r3, #0
004a5c58  01 00 00 0a                                      beq #0x4a5c64
004a5c5c  03 00 a0 e1                                      mov r0, r3
004a5c60  f6 a9 f9 eb                                      bl #0x310440
004a5c64  06 30 95 e7                                      ldr r3, [r5, r6]
004a5c68  00 20 a0 e3                                      mov r2, #0
004a5c6c  00 20 83 e5                                      str r2, [r3]
004a5c70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a5c74  a0 ee 4e 00 78 2e 00 00 20 35 00 00              .byte 0xa0, 0xee, 0x4e, 0x00, 0x78, 0x2e, 0x00, 0x00, 0x20, 0x35, 0x00, 0x00

; FUNCTION 0x004a5c80, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::LootTable
; alias: _ZN6Arrays9LootTable8finalizeEv
; demangled: Arrays::LootTable::finalize()
; decoder-mode: arm
004a5c80  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a5c84  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a5c88  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a5c8c  05 50 8f e0                                      add r5, pc, r5
004a5c90  07 30 95 e7                                      ldr r3, [r5, r7]
004a5c94  00 30 93 e5                                      ldr r3, [r3]
004a5c98  00 00 53 e3                                      cmp r3, #0
004a5c9c  2c 00 00 0a                                      beq #0x4a5d54
004a5ca0  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a5ca4  08 20 95 e7                                      ldr r2, [r5, r8]
004a5ca8  00 20 92 e5                                      ldr r2, [r2]
004a5cac  00 00 52 e3                                      cmp r2, #0
004a5cb0  12 00 00 0a                                      beq #0x4a5d00
004a5cb4  00 40 a0 e3                                      mov r4, #0
004a5cb8  04 60 a0 e1                                      mov r6, r4
004a5cbc  01 00 00 ea                                      b #0x4a5cc8
004a5cc0  07 30 95 e7                                      ldr r3, [r5, r7]
004a5cc4  00 30 93 e5                                      ldr r3, [r3]
004a5cc8  04 00 83 e0                                      add r0, r3, r4
004a5ccc  04 30 93 e7                                      ldr r3, [r3, r4]
004a5cd0  0f e0 a0 e1                                      mov lr, pc
004a5cd4  08 f0 93 e5                                      ldr pc, [r3, #8]
004a5cd8  08 30 95 e7                                      ldr r3, [r5, r8]
004a5cdc  01 60 86 e2                                      add r6, r6, #1
004a5ce0  24 40 84 e2                                      add r4, r4, #0x24
004a5ce4  00 30 93 e5                                      ldr r3, [r3]
004a5ce8  06 00 53 e1                                      cmp r3, r6
004a5cec  f3 ff ff 8a                                      bhi #0x4a5cc0
004a5cf0  07 30 95 e7                                      ldr r3, [r5, r7]
004a5cf4  00 30 93 e5                                      ldr r3, [r3]
004a5cf8  00 00 53 e3                                      cmp r3, #0
004a5cfc  11 00 00 0a                                      beq #0x4a5d48
004a5d00  04 20 13 e5                                      ldr r2, [r3, #-4]
004a5d04  24 00 a0 e3                                      mov r0, #0x24
004a5d08  90 32 20 e0                                      mla r0, r0, r2, r3
004a5d0c  00 00 53 e1                                      cmp r3, r0
004a5d10  01 00 00 1a                                      bne #0x4a5d1c
004a5d14  09 00 00 ea                                      b #0x4a5d40
004a5d18  04 00 a0 e1                                      mov r0, r4
004a5d1c  24 40 40 e2                                      sub r4, r0, #0x24
004a5d20  24 30 10 e5                                      ldr r3, [r0, #-0x24]
004a5d24  04 00 a0 e1                                      mov r0, r4
004a5d28  0f e0 a0 e1                                      mov lr, pc
004a5d2c  00 f0 93 e5                                      ldr pc, [r3]
004a5d30  07 30 95 e7                                      ldr r3, [r5, r7]
004a5d34  00 00 93 e5                                      ldr r0, [r3]
004a5d38  04 00 50 e1                                      cmp r0, r4
004a5d3c  f5 ff ff 1a                                      bne #0x4a5d18
004a5d40  08 00 40 e2                                      sub r0, r0, #8
004a5d44  bd a9 f9 eb                                      bl #0x310440
004a5d48  07 30 95 e7                                      ldr r3, [r5, r7]
004a5d4c  00 20 a0 e3                                      mov r2, #0
004a5d50  00 20 83 e5                                      str r2, [r3]
004a5d54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a5d58  04 ee 4e 00 fc 18 00 00 20 35 00 00              .byte 0x04, 0xee, 0x4e, 0x00, 0xfc, 0x18, 0x00, 0x00, 0x20, 0x35, 0x00, 0x00

; FUNCTION 0x004afdf4, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::LootTable
; alias: _ZN6Arrays9LootTable9readNamesEP11IStreamBase
; demangled: Arrays::LootTable::readNames(IStreamBase*)
; decoder-mode: arm
004afdf4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004afdf8  00 70 a0 e1                                      mov r7, r0
004afdfc  1c d0 4d e2                                      sub sp, sp, #0x1c
004afe00  77 d7 ff eb                                      bl #0x4a5be4
004afe04  07 00 a0 e1                                      mov r0, r7
004afe08  20 8f f9 eb                                      bl #0x313a90
004afe0c  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004afe10  01 30 a0 e3                                      mov r3, #1
004afe14  00 00 53 e3                                      cmp r3, #0
004afe18  06 60 8f e0                                      add r6, pc, r6
004afe1c  14 00 8d e5                                      str r0, [sp, #0x14]
004afe20  0c 30 8d e5                                      str r3, [sp, #0xc]
004afe24  12 00 00 1a                                      bne #0x4afe74
004afe28  14 30 8d e2                                      add r3, sp, #0x14
004afe2c  02 20 83 e2                                      add r2, r3, #2
004afe30  01 30 83 e2                                      add r3, r3, #1
004afe34  01 00 d2 e5                                      ldrb r0, [r2, #1]
004afe38  01 10 53 e5                                      ldrb r1, [r3, #-1]
004afe3c  03 00 52 e1                                      cmp r2, r3
004afe40  02 40 a0 e1                                      mov r4, r2
004afe44  01 10 20 e0                                      eor r1, r0, r1
004afe48  01 10 43 e5                                      strb r1, [r3, #-1]
004afe4c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004afe50  00 10 21 e0                                      eor r1, r1, r0
004afe54  01 10 c2 e5                                      strb r1, [r2, #1]
004afe58  01 00 53 e5                                      ldrb r0, [r3, #-1]
004afe5c  01 20 42 e2                                      sub r2, r2, #1
004afe60  00 10 21 e0                                      eor r1, r1, r0
004afe64  01 10 43 e5                                      strb r1, [r3, #-1]
004afe68  01 30 83 e2                                      add r3, r3, #1
004afe6c  f0 ff ff 8a                                      bhi #0x4afe34
004afe70  14 00 9d e5                                      ldr r0, [sp, #0x14]
004afe74  08 31 9f e5                                      ldr r3, [pc, #0x108]
004afe78  03 30 96 e7                                      ldr r3, [r6, r3]
004afe7c  00 30 93 e5                                      ldr r3, [r3]
004afe80  00 00 53 e1                                      cmp r3, r0
004afe84  01 00 00 0a                                      beq #0x4afe90
004afe88  1c d0 8d e2                                      add sp, sp, #0x1c
004afe8c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004afe90  00 01 a0 e1                                      lsl r0, r0, #2
004afe94  01 10 a0 e3                                      mov r1, #1
004afe98  b3 81 f9 eb                                      bl #0x31056c
004afe9c  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004afea0  14 20 9d e5                                      ldr r2, [sp, #0x14]
004afea4  09 30 96 e7                                      ldr r3, [r6, sb]
004afea8  00 00 52 e3                                      cmp r2, #0
004afeac  00 00 83 e5                                      str r0, [r3]
004afeb0  f4 ff ff 0a                                      beq #0x4afe88
004afeb4  10 a0 8d e2                                      add sl, sp, #0x10
004afeb8  01 80 a0 e3                                      mov r8, #1
004afebc  08 10 8a e0                                      add r1, sl, r8
004afec0  02 30 8a e2                                      add r3, sl, #2
004afec4  00 40 a0 e3                                      mov r4, #0
004afec8  0a 00 8d e8                                      stm sp, {r1, r3}
004afecc  07 00 a0 e1                                      mov r0, r7
004afed0  0a 10 a0 e1                                      mov r1, sl
004afed4  b1 bc fc eb                                      bl #0x3df1a0
004afed8  00 00 58 e3                                      cmp r8, #0
004afedc  0c 80 8d e5                                      str r8, [sp, #0xc]
004afee0  0f 00 00 1a                                      bne #0x4aff24
004afee4  00 30 9d e5                                      ldr r3, [sp]
004afee8  04 20 9d e5                                      ldr r2, [sp, #4]
004afeec  01 00 d2 e5                                      ldrb r0, [r2, #1]
004afef0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004afef4  03 00 52 e1                                      cmp r2, r3
004afef8  01 10 20 e0                                      eor r1, r0, r1
004afefc  01 10 43 e5                                      strb r1, [r3, #-1]
004aff00  01 00 d2 e5                                      ldrb r0, [r2, #1]
004aff04  00 10 21 e0                                      eor r1, r1, r0
004aff08  01 10 c2 e5                                      strb r1, [r2, #1]
004aff0c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004aff10  01 20 42 e2                                      sub r2, r2, #1
004aff14  00 10 21 e0                                      eor r1, r1, r0
004aff18  01 10 43 e5                                      strb r1, [r3, #-1]
004aff1c  01 30 83 e2                                      add r3, r3, #1
004aff20  f1 ff ff 8a                                      bhi #0x4afeec
004aff24  10 00 9d e5                                      ldr r0, [sp, #0x10]
004aff28  09 50 96 e7                                      ldr r5, [r6, sb]
004aff2c  01 10 a0 e3                                      mov r1, #1
004aff30  01 00 80 e0                                      add r0, r0, r1
004aff34  00 b0 95 e5                                      ldr fp, [r5]
004aff38  8b 81 f9 eb                                      bl #0x31056c
004aff3c  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004aff40  00 30 95 e5                                      ldr r3, [r5]
004aff44  10 20 9d e5                                      ldr r2, [sp, #0x10]
004aff48  07 00 a0 e1                                      mov r0, r7
004aff4c  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004aff50  00 30 a0 e3                                      mov r3, #0
004aff54  3e 9d f9 eb                                      bl #0x317454
004aff58  00 30 95 e5                                      ldr r3, [r5]
004aff5c  00 10 a0 e3                                      mov r1, #0
004aff60  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004aff64  10 30 9d e5                                      ldr r3, [sp, #0x10]
004aff68  01 40 84 e2                                      add r4, r4, #1
004aff6c  03 10 c2 e7                                      strb r1, [r2, r3]
004aff70  14 30 9d e5                                      ldr r3, [sp, #0x14]
004aff74  04 00 53 e1                                      cmp r3, r4
004aff78  d3 ff ff 8a                                      bhi #0x4afecc
004aff7c  c1 ff ff ea                                      b #0x4afe88
; mapping-symbol data/literal pool
004aff80  78 4c 4e 00 20 35 00 00 78 2e 00 00              .byte 0x78, 0x4c, 0x4e, 0x00, 0x20, 0x35, 0x00, 0x00, 0x78, 0x2e, 0x00, 0x00

; FUNCTION 0x004aff8c, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::LootTable
; alias: _ZN6Arrays9LootTable9skipNamesEP11IStreamBase
; demangled: Arrays::LootTable::skipNames(IStreamBase*)
; decoder-mode: arm
004aff8c  98 ff ff ea                                      b #0x4afdf4

; FUNCTION 0x004b9e8c, declared_size=340, range_size=340, mode=arm
; class-group: Arrays::LootTable
; alias: _ZN6Arrays9LootTable4readEP11IStreamBase
; demangled: Arrays::LootTable::read(IStreamBase*)
; decoder-mode: arm
004b9e8c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b9e90  0c d0 4d e2                                      sub sp, sp, #0xc
004b9e94  00 a0 a0 e1                                      mov sl, r0
004b9e98  fc 66 f9 eb                                      bl #0x313a90
004b9e9c  2c 61 9f e5                                      ldr r6, [pc, #0x12c]
004b9ea0  01 30 a0 e3                                      mov r3, #1
004b9ea4  00 00 53 e3                                      cmp r3, #0
004b9ea8  04 00 8d e5                                      str r0, [sp, #4]
004b9eac  00 30 8d e5                                      str r3, [sp]
004b9eb0  06 60 8f e0                                      add r6, pc, r6
004b9eb4  10 00 00 1a                                      bne #0x4b9efc
004b9eb8  04 30 8d e2                                      add r3, sp, #4
004b9ebc  02 20 83 e2                                      add r2, r3, #2
004b9ec0  01 30 83 e2                                      add r3, r3, #1
004b9ec4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b9ec8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b9ecc  03 00 52 e1                                      cmp r2, r3
004b9ed0  01 10 20 e0                                      eor r1, r0, r1
004b9ed4  01 10 43 e5                                      strb r1, [r3, #-1]
004b9ed8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b9edc  00 10 21 e0                                      eor r1, r1, r0
004b9ee0  01 10 c2 e5                                      strb r1, [r2, #1]
004b9ee4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b9ee8  01 20 42 e2                                      sub r2, r2, #1
004b9eec  00 10 21 e0                                      eor r1, r1, r0
004b9ef0  01 10 43 e5                                      strb r1, [r3, #-1]
004b9ef4  01 30 83 e2                                      add r3, r3, #1
004b9ef8  f1 ff ff 8a                                      bhi #0x4b9ec4
004b9efc  5f af ff eb                                      bl #0x4a5c80
004b9f00  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004b9f04  04 40 9d e5                                      ldr r4, [sp, #4]
004b9f08  24 50 a0 e3                                      mov r5, #0x24
004b9f0c  07 30 96 e7                                      ldr r3, [r6, r7]
004b9f10  95 04 00 e0                                      mul r0, r5, r4
004b9f14  00 40 83 e5                                      str r4, [r3]
004b9f18  08 00 80 e2                                      add r0, r0, #8
004b9f1c  01 10 a0 e3                                      mov r1, #1
004b9f20  91 59 f9 eb                                      bl #0x31056c
004b9f24  00 00 54 e3                                      cmp r4, #0
004b9f28  00 50 80 e5                                      str r5, [r0]
004b9f2c  04 40 80 e5                                      str r4, [r0, #4]
004b9f30  08 30 80 e2                                      add r3, r0, #8
004b9f34  0c 00 00 0a                                      beq #0x4b9f6c
004b9f38  98 10 9f e5                                      ldr r1, [pc, #0x98]
004b9f3c  00 20 a0 e3                                      mov r2, #0
004b9f40  01 c0 96 e7                                      ldr ip, [r6, r1]
004b9f44  02 10 a0 e1                                      mov r1, r2
004b9f48  08 c0 8c e2                                      add ip, ip, #8
004b9f4c  01 20 82 e2                                      add r2, r2, #1
004b9f50  04 00 52 e1                                      cmp r2, r4
004b9f54  08 c0 80 e5                                      str ip, [r0, #8]
004b9f58  18 10 80 e5                                      str r1, [r0, #0x18]
004b9f5c  20 10 80 e5                                      str r1, [r0, #0x20]
004b9f60  28 10 80 e5                                      str r1, [r0, #0x28]
004b9f64  24 00 80 e2                                      add r0, r0, #0x24
004b9f68  f7 ff ff 1a                                      bne #0x4b9f4c
004b9f6c  07 20 96 e7                                      ldr r2, [r6, r7]
004b9f70  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b9f74  00 10 92 e5                                      ldr r1, [r2]
004b9f78  08 20 96 e7                                      ldr r2, [r6, r8]
004b9f7c  00 00 51 e3                                      cmp r1, #0
004b9f80  00 30 82 e5                                      str r3, [r2]
004b9f84  0f 00 00 0a                                      beq #0x4b9fc8
004b9f88  00 40 a0 e3                                      mov r4, #0
004b9f8c  04 50 a0 e1                                      mov r5, r4
004b9f90  01 00 00 ea                                      b #0x4b9f9c
004b9f94  08 30 96 e7                                      ldr r3, [r6, r8]
004b9f98  00 30 93 e5                                      ldr r3, [r3]
004b9f9c  04 00 83 e0                                      add r0, r3, r4
004b9fa0  0a 10 a0 e1                                      mov r1, sl
004b9fa4  04 30 93 e7                                      ldr r3, [r3, r4]
004b9fa8  0f e0 a0 e1                                      mov lr, pc
004b9fac  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b9fb0  07 30 96 e7                                      ldr r3, [r6, r7]
004b9fb4  01 50 85 e2                                      add r5, r5, #1
004b9fb8  24 40 84 e2                                      add r4, r4, #0x24
004b9fbc  00 30 93 e5                                      ldr r3, [r3]
004b9fc0  05 00 53 e1                                      cmp r3, r5
004b9fc4  f2 ff ff 8a                                      bhi #0x4b9f94
004b9fc8  0c d0 8d e2                                      add sp, sp, #0xc
004b9fcc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b9fd0  e0 ab 4d 00 20 35 00 00 70 34 00 00 fc 18 00 00  .byte 0xe0, 0xab, 0x4d, 0x00, 0x20, 0x35, 0x00, 0x00, 0x70, 0x34, 0x00, 0x00, 0xfc, 0x18, 0x00, 0x00
