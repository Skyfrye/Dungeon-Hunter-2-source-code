; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a961c, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::StatAutoAssignSchemeTable
; alias: _ZN6Arrays25StatAutoAssignSchemeTable13finalizeNamesEv
; demangled: Arrays::StatAutoAssignSchemeTable::finalizeNames()
; decoder-mode: arm
004a961c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a9620  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a9624  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a9628  05 50 8f e0                                      add r5, pc, r5
004a962c  06 30 95 e7                                      ldr r3, [r5, r6]
004a9630  00 30 93 e5                                      ldr r3, [r3]
004a9634  00 00 53 e3                                      cmp r3, #0
004a9638  1a 00 00 0a                                      beq #0x4a96a8
004a963c  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a9640  07 20 95 e7                                      ldr r2, [r5, r7]
004a9644  00 20 92 e5                                      ldr r2, [r2]
004a9648  00 00 52 e3                                      cmp r2, #0
004a964c  10 00 00 0a                                      beq #0x4a9694
004a9650  00 40 a0 e3                                      mov r4, #0
004a9654  01 00 00 ea                                      b #0x4a9660
004a9658  06 30 95 e7                                      ldr r3, [r5, r6]
004a965c  00 30 93 e5                                      ldr r3, [r3]
004a9660  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a9664  01 40 84 e2                                      add r4, r4, #1
004a9668  00 00 50 e3                                      cmp r0, #0
004a966c  02 00 00 0a                                      beq #0x4a967c
004a9670  72 9b f9 eb                                      bl #0x310440
004a9674  06 30 95 e7                                      ldr r3, [r5, r6]
004a9678  00 30 93 e5                                      ldr r3, [r3]
004a967c  07 20 95 e7                                      ldr r2, [r5, r7]
004a9680  00 20 92 e5                                      ldr r2, [r2]
004a9684  04 00 52 e1                                      cmp r2, r4
004a9688  f2 ff ff 8a                                      bhi #0x4a9658
004a968c  00 00 53 e3                                      cmp r3, #0
004a9690  01 00 00 0a                                      beq #0x4a969c
004a9694  03 00 a0 e1                                      mov r0, r3
004a9698  68 9b f9 eb                                      bl #0x310440
004a969c  06 30 95 e7                                      ldr r3, [r5, r6]
004a96a0  00 20 a0 e3                                      mov r2, #0
004a96a4  00 20 83 e5                                      str r2, [r3]
004a96a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a96ac  68 b4 4e 00 44 0d 00 00 e8 23 00 00              .byte 0x68, 0xb4, 0x4e, 0x00, 0x44, 0x0d, 0x00, 0x00, 0xe8, 0x23, 0x00, 0x00

; FUNCTION 0x004a96b8, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::StatAutoAssignSchemeTable
; alias: _ZN6Arrays25StatAutoAssignSchemeTable8finalizeEv
; demangled: Arrays::StatAutoAssignSchemeTable::finalize()
; decoder-mode: arm
004a96b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a96bc  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a96c0  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a96c4  05 50 8f e0                                      add r5, pc, r5
004a96c8  07 30 95 e7                                      ldr r3, [r5, r7]
004a96cc  00 30 93 e5                                      ldr r3, [r3]
004a96d0  00 00 53 e3                                      cmp r3, #0
004a96d4  2c 00 00 0a                                      beq #0x4a978c
004a96d8  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a96dc  08 20 95 e7                                      ldr r2, [r5, r8]
004a96e0  00 20 92 e5                                      ldr r2, [r2]
004a96e4  00 00 52 e3                                      cmp r2, #0
004a96e8  12 00 00 0a                                      beq #0x4a9738
004a96ec  00 40 a0 e3                                      mov r4, #0
004a96f0  04 60 a0 e1                                      mov r6, r4
004a96f4  01 00 00 ea                                      b #0x4a9700
004a96f8  07 30 95 e7                                      ldr r3, [r5, r7]
004a96fc  00 30 93 e5                                      ldr r3, [r3]
004a9700  04 00 83 e0                                      add r0, r3, r4
004a9704  04 30 93 e7                                      ldr r3, [r3, r4]
004a9708  0f e0 a0 e1                                      mov lr, pc
004a970c  08 f0 93 e5                                      ldr pc, [r3, #8]
004a9710  08 30 95 e7                                      ldr r3, [r5, r8]
004a9714  01 60 86 e2                                      add r6, r6, #1
004a9718  0c 40 84 e2                                      add r4, r4, #0xc
004a971c  00 30 93 e5                                      ldr r3, [r3]
004a9720  06 00 53 e1                                      cmp r3, r6
004a9724  f3 ff ff 8a                                      bhi #0x4a96f8
004a9728  07 30 95 e7                                      ldr r3, [r5, r7]
004a972c  00 30 93 e5                                      ldr r3, [r3]
004a9730  00 00 53 e3                                      cmp r3, #0
004a9734  11 00 00 0a                                      beq #0x4a9780
004a9738  04 20 13 e5                                      ldr r2, [r3, #-4]
004a973c  0c 00 a0 e3                                      mov r0, #0xc
004a9740  90 32 20 e0                                      mla r0, r0, r2, r3
004a9744  00 00 53 e1                                      cmp r3, r0
004a9748  01 00 00 1a                                      bne #0x4a9754
004a974c  09 00 00 ea                                      b #0x4a9778
004a9750  04 00 a0 e1                                      mov r0, r4
004a9754  0c 40 40 e2                                      sub r4, r0, #0xc
004a9758  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a975c  04 00 a0 e1                                      mov r0, r4
004a9760  0f e0 a0 e1                                      mov lr, pc
004a9764  00 f0 93 e5                                      ldr pc, [r3]
004a9768  07 30 95 e7                                      ldr r3, [r5, r7]
004a976c  00 00 93 e5                                      ldr r0, [r3]
004a9770  04 00 50 e1                                      cmp r0, r4
004a9774  f5 ff ff 1a                                      bne #0x4a9750
004a9778  08 00 40 e2                                      sub r0, r0, #8
004a977c  2f 9b f9 eb                                      bl #0x310440
004a9780  07 30 95 e7                                      ldr r3, [r5, r7]
004a9784  00 20 a0 e3                                      mov r2, #0
004a9788  00 20 83 e5                                      str r2, [r3]
004a978c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a9790  cc b3 4e 00 08 44 00 00 e8 23 00 00              .byte 0xcc, 0xb3, 0x4e, 0x00, 0x08, 0x44, 0x00, 0x00, 0xe8, 0x23, 0x00, 0x00

; FUNCTION 0x004b41f4, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::StatAutoAssignSchemeTable
; alias: _ZN6Arrays25StatAutoAssignSchemeTable4readEP11IStreamBase
; demangled: Arrays::StatAutoAssignSchemeTable::read(IStreamBase*)
; decoder-mode: arm
004b41f4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b41f8  0c d0 4d e2                                      sub sp, sp, #0xc
004b41fc  00 a0 a0 e1                                      mov sl, r0
004b4200  22 7e f9 eb                                      bl #0x313a90
004b4204  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b4208  01 30 a0 e3                                      mov r3, #1
004b420c  00 00 53 e3                                      cmp r3, #0
004b4210  04 00 8d e5                                      str r0, [sp, #4]
004b4214  00 30 8d e5                                      str r3, [sp]
004b4218  06 60 8f e0                                      add r6, pc, r6
004b421c  10 00 00 1a                                      bne #0x4b4264
004b4220  04 30 8d e2                                      add r3, sp, #4
004b4224  02 20 83 e2                                      add r2, r3, #2
004b4228  01 30 83 e2                                      add r3, r3, #1
004b422c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4230  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b4234  03 00 52 e1                                      cmp r2, r3
004b4238  01 10 20 e0                                      eor r1, r0, r1
004b423c  01 10 43 e5                                      strb r1, [r3, #-1]
004b4240  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4244  00 10 21 e0                                      eor r1, r1, r0
004b4248  01 10 c2 e5                                      strb r1, [r2, #1]
004b424c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b4250  01 20 42 e2                                      sub r2, r2, #1
004b4254  00 10 21 e0                                      eor r1, r1, r0
004b4258  01 10 43 e5                                      strb r1, [r3, #-1]
004b425c  01 30 83 e2                                      add r3, r3, #1
004b4260  f1 ff ff 8a                                      bhi #0x4b422c
004b4264  13 d5 ff eb                                      bl #0x4a96b8
004b4268  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b426c  04 40 9d e5                                      ldr r4, [sp, #4]
004b4270  0c 50 a0 e3                                      mov r5, #0xc
004b4274  07 30 96 e7                                      ldr r3, [r6, r7]
004b4278  95 04 00 e0                                      mul r0, r5, r4
004b427c  00 40 83 e5                                      str r4, [r3]
004b4280  08 00 80 e2                                      add r0, r0, #8
004b4284  01 10 a0 e3                                      mov r1, #1
004b4288  b7 70 f9 eb                                      bl #0x31056c
004b428c  00 00 54 e3                                      cmp r4, #0
004b4290  00 50 80 e5                                      str r5, [r0]
004b4294  04 40 80 e5                                      str r4, [r0, #4]
004b4298  08 30 80 e2                                      add r3, r0, #8
004b429c  0a 00 00 0a                                      beq #0x4b42cc
004b42a0  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b42a4  00 20 a0 e3                                      mov r2, #0
004b42a8  02 c0 a0 e1                                      mov ip, r2
004b42ac  01 10 96 e7                                      ldr r1, [r6, r1]
004b42b0  08 10 81 e2                                      add r1, r1, #8
004b42b4  01 20 82 e2                                      add r2, r2, #1
004b42b8  04 00 52 e1                                      cmp r2, r4
004b42bc  08 10 80 e5                                      str r1, [r0, #8]
004b42c0  10 c0 80 e5                                      str ip, [r0, #0x10]
004b42c4  0c 00 80 e2                                      add r0, r0, #0xc
004b42c8  f9 ff ff 1a                                      bne #0x4b42b4
004b42cc  07 20 96 e7                                      ldr r2, [r6, r7]
004b42d0  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b42d4  00 10 92 e5                                      ldr r1, [r2]
004b42d8  08 20 96 e7                                      ldr r2, [r6, r8]
004b42dc  00 00 51 e3                                      cmp r1, #0
004b42e0  00 30 82 e5                                      str r3, [r2]
004b42e4  0f 00 00 0a                                      beq #0x4b4328
004b42e8  00 40 a0 e3                                      mov r4, #0
004b42ec  04 50 a0 e1                                      mov r5, r4
004b42f0  01 00 00 ea                                      b #0x4b42fc
004b42f4  08 30 96 e7                                      ldr r3, [r6, r8]
004b42f8  00 30 93 e5                                      ldr r3, [r3]
004b42fc  04 00 83 e0                                      add r0, r3, r4
004b4300  0a 10 a0 e1                                      mov r1, sl
004b4304  04 30 93 e7                                      ldr r3, [r3, r4]
004b4308  0f e0 a0 e1                                      mov lr, pc
004b430c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b4310  07 30 96 e7                                      ldr r3, [r6, r7]
004b4314  01 50 85 e2                                      add r5, r5, #1
004b4318  0c 40 84 e2                                      add r4, r4, #0xc
004b431c  00 30 93 e5                                      ldr r3, [r3]
004b4320  05 00 53 e1                                      cmp r3, r5
004b4324  f2 ff ff 8a                                      bhi #0x4b42f4
004b4328  0c d0 8d e2                                      add sp, sp, #0xc
004b432c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b4330  78 08 4e 00 e8 23 00 00 e8 17 00 00 08 44 00 00  .byte 0x78, 0x08, 0x4e, 0x00, 0xe8, 0x23, 0x00, 0x00, 0xe8, 0x17, 0x00, 0x00, 0x08, 0x44, 0x00, 0x00

; FUNCTION 0x004b7ca4, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::StatAutoAssignSchemeTable
; alias: _ZN6Arrays25StatAutoAssignSchemeTable9readNamesEP11IStreamBase
; demangled: Arrays::StatAutoAssignSchemeTable::readNames(IStreamBase*)
; decoder-mode: arm
004b7ca4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b7ca8  00 70 a0 e1                                      mov r7, r0
004b7cac  1c d0 4d e2                                      sub sp, sp, #0x1c
004b7cb0  59 c6 ff eb                                      bl #0x4a961c
004b7cb4  07 00 a0 e1                                      mov r0, r7
004b7cb8  74 6f f9 eb                                      bl #0x313a90
004b7cbc  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b7cc0  01 30 a0 e3                                      mov r3, #1
004b7cc4  00 00 53 e3                                      cmp r3, #0
004b7cc8  06 60 8f e0                                      add r6, pc, r6
004b7ccc  14 00 8d e5                                      str r0, [sp, #0x14]
004b7cd0  0c 30 8d e5                                      str r3, [sp, #0xc]
004b7cd4  12 00 00 1a                                      bne #0x4b7d24
004b7cd8  14 30 8d e2                                      add r3, sp, #0x14
004b7cdc  02 20 83 e2                                      add r2, r3, #2
004b7ce0  01 30 83 e2                                      add r3, r3, #1
004b7ce4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7ce8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b7cec  03 00 52 e1                                      cmp r2, r3
004b7cf0  02 40 a0 e1                                      mov r4, r2
004b7cf4  01 10 20 e0                                      eor r1, r0, r1
004b7cf8  01 10 43 e5                                      strb r1, [r3, #-1]
004b7cfc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7d00  00 10 21 e0                                      eor r1, r1, r0
004b7d04  01 10 c2 e5                                      strb r1, [r2, #1]
004b7d08  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b7d0c  01 20 42 e2                                      sub r2, r2, #1
004b7d10  00 10 21 e0                                      eor r1, r1, r0
004b7d14  01 10 43 e5                                      strb r1, [r3, #-1]
004b7d18  01 30 83 e2                                      add r3, r3, #1
004b7d1c  f0 ff ff 8a                                      bhi #0x4b7ce4
004b7d20  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b7d24  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b7d28  03 30 96 e7                                      ldr r3, [r6, r3]
004b7d2c  00 30 93 e5                                      ldr r3, [r3]
004b7d30  00 00 53 e1                                      cmp r3, r0
004b7d34  01 00 00 0a                                      beq #0x4b7d40
004b7d38  1c d0 8d e2                                      add sp, sp, #0x1c
004b7d3c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b7d40  00 01 a0 e1                                      lsl r0, r0, #2
004b7d44  01 10 a0 e3                                      mov r1, #1
004b7d48  07 62 f9 eb                                      bl #0x31056c
004b7d4c  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b7d50  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b7d54  09 30 96 e7                                      ldr r3, [r6, sb]
004b7d58  00 00 52 e3                                      cmp r2, #0
004b7d5c  00 00 83 e5                                      str r0, [r3]
004b7d60  f4 ff ff 0a                                      beq #0x4b7d38
004b7d64  10 a0 8d e2                                      add sl, sp, #0x10
004b7d68  01 80 a0 e3                                      mov r8, #1
004b7d6c  08 10 8a e0                                      add r1, sl, r8
004b7d70  02 30 8a e2                                      add r3, sl, #2
004b7d74  00 40 a0 e3                                      mov r4, #0
004b7d78  0a 00 8d e8                                      stm sp, {r1, r3}
004b7d7c  07 00 a0 e1                                      mov r0, r7
004b7d80  0a 10 a0 e1                                      mov r1, sl
004b7d84  05 9d fc eb                                      bl #0x3df1a0
004b7d88  00 00 58 e3                                      cmp r8, #0
004b7d8c  0c 80 8d e5                                      str r8, [sp, #0xc]
004b7d90  0f 00 00 1a                                      bne #0x4b7dd4
004b7d94  00 30 9d e5                                      ldr r3, [sp]
004b7d98  04 20 9d e5                                      ldr r2, [sp, #4]
004b7d9c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7da0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b7da4  03 00 52 e1                                      cmp r2, r3
004b7da8  01 10 20 e0                                      eor r1, r0, r1
004b7dac  01 10 43 e5                                      strb r1, [r3, #-1]
004b7db0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7db4  00 10 21 e0                                      eor r1, r1, r0
004b7db8  01 10 c2 e5                                      strb r1, [r2, #1]
004b7dbc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b7dc0  01 20 42 e2                                      sub r2, r2, #1
004b7dc4  00 10 21 e0                                      eor r1, r1, r0
004b7dc8  01 10 43 e5                                      strb r1, [r3, #-1]
004b7dcc  01 30 83 e2                                      add r3, r3, #1
004b7dd0  f1 ff ff 8a                                      bhi #0x4b7d9c
004b7dd4  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b7dd8  09 50 96 e7                                      ldr r5, [r6, sb]
004b7ddc  01 10 a0 e3                                      mov r1, #1
004b7de0  01 00 80 e0                                      add r0, r0, r1
004b7de4  00 b0 95 e5                                      ldr fp, [r5]
004b7de8  df 61 f9 eb                                      bl #0x31056c
004b7dec  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b7df0  00 30 95 e5                                      ldr r3, [r5]
004b7df4  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b7df8  07 00 a0 e1                                      mov r0, r7
004b7dfc  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b7e00  00 30 a0 e3                                      mov r3, #0
004b7e04  92 7d f9 eb                                      bl #0x317454
004b7e08  00 30 95 e5                                      ldr r3, [r5]
004b7e0c  00 10 a0 e3                                      mov r1, #0
004b7e10  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b7e14  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b7e18  01 40 84 e2                                      add r4, r4, #1
004b7e1c  03 10 c2 e7                                      strb r1, [r2, r3]
004b7e20  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b7e24  04 00 53 e1                                      cmp r3, r4
004b7e28  d3 ff ff 8a                                      bhi #0x4b7d7c
004b7e2c  c1 ff ff ea                                      b #0x4b7d38
; mapping-symbol data/literal pool
004b7e30  c8 cd 4d 00 e8 23 00 00 44 0d 00 00              .byte 0xc8, 0xcd, 0x4d, 0x00, 0xe8, 0x23, 0x00, 0x00, 0x44, 0x0d, 0x00, 0x00

; FUNCTION 0x004b7e3c, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::StatAutoAssignSchemeTable
; alias: _ZN6Arrays25StatAutoAssignSchemeTable9skipNamesEP11IStreamBase
; demangled: Arrays::StatAutoAssignSchemeTable::skipNames(IStreamBase*)
; decoder-mode: arm
004b7e3c  98 ff ff ea                                      b #0x4b7ca4
