; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a79c0, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::LiftableObjects
; alias: _ZN6Arrays15LiftableObjects13finalizeNamesEv
; demangled: Arrays::LiftableObjects::finalizeNames()
; decoder-mode: arm
004a79c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a79c4  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a79c8  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a79cc  05 50 8f e0                                      add r5, pc, r5
004a79d0  06 30 95 e7                                      ldr r3, [r5, r6]
004a79d4  00 30 93 e5                                      ldr r3, [r3]
004a79d8  00 00 53 e3                                      cmp r3, #0
004a79dc  1a 00 00 0a                                      beq #0x4a7a4c
004a79e0  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a79e4  07 20 95 e7                                      ldr r2, [r5, r7]
004a79e8  00 20 92 e5                                      ldr r2, [r2]
004a79ec  00 00 52 e3                                      cmp r2, #0
004a79f0  10 00 00 0a                                      beq #0x4a7a38
004a79f4  00 40 a0 e3                                      mov r4, #0
004a79f8  01 00 00 ea                                      b #0x4a7a04
004a79fc  06 30 95 e7                                      ldr r3, [r5, r6]
004a7a00  00 30 93 e5                                      ldr r3, [r3]
004a7a04  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a7a08  01 40 84 e2                                      add r4, r4, #1
004a7a0c  00 00 50 e3                                      cmp r0, #0
004a7a10  02 00 00 0a                                      beq #0x4a7a20
004a7a14  89 a2 f9 eb                                      bl #0x310440
004a7a18  06 30 95 e7                                      ldr r3, [r5, r6]
004a7a1c  00 30 93 e5                                      ldr r3, [r3]
004a7a20  07 20 95 e7                                      ldr r2, [r5, r7]
004a7a24  00 20 92 e5                                      ldr r2, [r2]
004a7a28  04 00 52 e1                                      cmp r2, r4
004a7a2c  f2 ff ff 8a                                      bhi #0x4a79fc
004a7a30  00 00 53 e3                                      cmp r3, #0
004a7a34  01 00 00 0a                                      beq #0x4a7a40
004a7a38  03 00 a0 e1                                      mov r0, r3
004a7a3c  7f a2 f9 eb                                      bl #0x310440
004a7a40  06 30 95 e7                                      ldr r3, [r5, r6]
004a7a44  00 20 a0 e3                                      mov r2, #0
004a7a48  00 20 83 e5                                      str r2, [r3]
004a7a4c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a7a50  c4 d0 4e 00 6c 3b 00 00 38 20 00 00              .byte 0xc4, 0xd0, 0x4e, 0x00, 0x6c, 0x3b, 0x00, 0x00, 0x38, 0x20, 0x00, 0x00

; FUNCTION 0x004a7a5c, declared_size=216, range_size=216, mode=arm
; class-group: Arrays::LiftableObjects
; alias: _ZN6Arrays15LiftableObjects8finalizeEv
; demangled: Arrays::LiftableObjects::finalize()
; decoder-mode: arm
004a7a5c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a7a60  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
004a7a64  c0 60 9f e5                                      ldr r6, [pc, #0xc0]
004a7a68  05 50 8f e0                                      add r5, pc, r5
004a7a6c  06 30 95 e7                                      ldr r3, [r5, r6]
004a7a70  00 30 93 e5                                      ldr r3, [r3]
004a7a74  00 00 53 e3                                      cmp r3, #0
004a7a78  29 00 00 0a                                      beq #0x4a7b24
004a7a7c  ac 70 9f e5                                      ldr r7, [pc, #0xac]
004a7a80  07 20 95 e7                                      ldr r2, [r5, r7]
004a7a84  00 20 92 e5                                      ldr r2, [r2]
004a7a88  00 00 52 e3                                      cmp r2, #0
004a7a8c  10 00 00 0a                                      beq #0x4a7ad4
004a7a90  00 40 a0 e3                                      mov r4, #0
004a7a94  01 00 00 ea                                      b #0x4a7aa0
004a7a98  06 30 95 e7                                      ldr r3, [r5, r6]
004a7a9c  00 30 93 e5                                      ldr r3, [r3]
004a7aa0  84 01 83 e0                                      add r0, r3, r4, lsl #3
004a7aa4  84 31 93 e7                                      ldr r3, [r3, r4, lsl #3]
004a7aa8  0f e0 a0 e1                                      mov lr, pc
004a7aac  08 f0 93 e5                                      ldr pc, [r3, #8]
004a7ab0  07 30 95 e7                                      ldr r3, [r5, r7]
004a7ab4  01 40 84 e2                                      add r4, r4, #1
004a7ab8  00 30 93 e5                                      ldr r3, [r3]
004a7abc  04 00 53 e1                                      cmp r3, r4
004a7ac0  f4 ff ff 8a                                      bhi #0x4a7a98
004a7ac4  06 30 95 e7                                      ldr r3, [r5, r6]
004a7ac8  00 30 93 e5                                      ldr r3, [r3]
004a7acc  00 00 53 e3                                      cmp r3, #0
004a7ad0  10 00 00 0a                                      beq #0x4a7b18
004a7ad4  04 00 13 e5                                      ldr r0, [r3, #-4]
004a7ad8  80 01 83 e0                                      add r0, r3, r0, lsl #3
004a7adc  00 00 53 e1                                      cmp r3, r0
004a7ae0  01 00 00 1a                                      bne #0x4a7aec
004a7ae4  09 00 00 ea                                      b #0x4a7b10
004a7ae8  04 00 a0 e1                                      mov r0, r4
004a7aec  08 40 40 e2                                      sub r4, r0, #8
004a7af0  08 30 10 e5                                      ldr r3, [r0, #-8]
004a7af4  04 00 a0 e1                                      mov r0, r4
004a7af8  0f e0 a0 e1                                      mov lr, pc
004a7afc  00 f0 93 e5                                      ldr pc, [r3]
004a7b00  06 30 95 e7                                      ldr r3, [r5, r6]
004a7b04  00 00 93 e5                                      ldr r0, [r3]
004a7b08  04 00 50 e1                                      cmp r0, r4
004a7b0c  f5 ff ff 1a                                      bne #0x4a7ae8
004a7b10  08 00 40 e2                                      sub r0, r0, #8
004a7b14  49 a2 f9 eb                                      bl #0x310440
004a7b18  06 30 95 e7                                      ldr r3, [r5, r6]
004a7b1c  00 20 a0 e3                                      mov r2, #0
004a7b20  00 20 83 e5                                      str r2, [r3]
004a7b24  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a7b28  28 d0 4e 00 f8 1a 00 00 38 20 00 00              .byte 0x28, 0xd0, 0x4e, 0x00, 0xf8, 0x1a, 0x00, 0x00, 0x38, 0x20, 0x00, 0x00

; FUNCTION 0x004b62fc, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::LiftableObjects
; alias: _ZN6Arrays15LiftableObjects9readNamesEP11IStreamBase
; demangled: Arrays::LiftableObjects::readNames(IStreamBase*)
; decoder-mode: arm
004b62fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b6300  00 70 a0 e1                                      mov r7, r0
004b6304  1c d0 4d e2                                      sub sp, sp, #0x1c
004b6308  ac c5 ff eb                                      bl #0x4a79c0
004b630c  07 00 a0 e1                                      mov r0, r7
004b6310  de 75 f9 eb                                      bl #0x313a90
004b6314  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b6318  01 30 a0 e3                                      mov r3, #1
004b631c  00 00 53 e3                                      cmp r3, #0
004b6320  06 60 8f e0                                      add r6, pc, r6
004b6324  14 00 8d e5                                      str r0, [sp, #0x14]
004b6328  0c 30 8d e5                                      str r3, [sp, #0xc]
004b632c  12 00 00 1a                                      bne #0x4b637c
004b6330  14 30 8d e2                                      add r3, sp, #0x14
004b6334  02 20 83 e2                                      add r2, r3, #2
004b6338  01 30 83 e2                                      add r3, r3, #1
004b633c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6340  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b6344  03 00 52 e1                                      cmp r2, r3
004b6348  02 40 a0 e1                                      mov r4, r2
004b634c  01 10 20 e0                                      eor r1, r0, r1
004b6350  01 10 43 e5                                      strb r1, [r3, #-1]
004b6354  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6358  00 10 21 e0                                      eor r1, r1, r0
004b635c  01 10 c2 e5                                      strb r1, [r2, #1]
004b6360  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b6364  01 20 42 e2                                      sub r2, r2, #1
004b6368  00 10 21 e0                                      eor r1, r1, r0
004b636c  01 10 43 e5                                      strb r1, [r3, #-1]
004b6370  01 30 83 e2                                      add r3, r3, #1
004b6374  f0 ff ff 8a                                      bhi #0x4b633c
004b6378  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b637c  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b6380  03 30 96 e7                                      ldr r3, [r6, r3]
004b6384  00 30 93 e5                                      ldr r3, [r3]
004b6388  00 00 53 e1                                      cmp r3, r0
004b638c  01 00 00 0a                                      beq #0x4b6398
004b6390  1c d0 8d e2                                      add sp, sp, #0x1c
004b6394  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b6398  00 01 a0 e1                                      lsl r0, r0, #2
004b639c  01 10 a0 e3                                      mov r1, #1
004b63a0  71 68 f9 eb                                      bl #0x31056c
004b63a4  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b63a8  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b63ac  09 30 96 e7                                      ldr r3, [r6, sb]
004b63b0  00 00 52 e3                                      cmp r2, #0
004b63b4  00 00 83 e5                                      str r0, [r3]
004b63b8  f4 ff ff 0a                                      beq #0x4b6390
004b63bc  10 a0 8d e2                                      add sl, sp, #0x10
004b63c0  01 80 a0 e3                                      mov r8, #1
004b63c4  08 10 8a e0                                      add r1, sl, r8
004b63c8  02 30 8a e2                                      add r3, sl, #2
004b63cc  00 40 a0 e3                                      mov r4, #0
004b63d0  0a 00 8d e8                                      stm sp, {r1, r3}
004b63d4  07 00 a0 e1                                      mov r0, r7
004b63d8  0a 10 a0 e1                                      mov r1, sl
004b63dc  6f a3 fc eb                                      bl #0x3df1a0
004b63e0  00 00 58 e3                                      cmp r8, #0
004b63e4  0c 80 8d e5                                      str r8, [sp, #0xc]
004b63e8  0f 00 00 1a                                      bne #0x4b642c
004b63ec  00 30 9d e5                                      ldr r3, [sp]
004b63f0  04 20 9d e5                                      ldr r2, [sp, #4]
004b63f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b63f8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b63fc  03 00 52 e1                                      cmp r2, r3
004b6400  01 10 20 e0                                      eor r1, r0, r1
004b6404  01 10 43 e5                                      strb r1, [r3, #-1]
004b6408  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b640c  00 10 21 e0                                      eor r1, r1, r0
004b6410  01 10 c2 e5                                      strb r1, [r2, #1]
004b6414  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b6418  01 20 42 e2                                      sub r2, r2, #1
004b641c  00 10 21 e0                                      eor r1, r1, r0
004b6420  01 10 43 e5                                      strb r1, [r3, #-1]
004b6424  01 30 83 e2                                      add r3, r3, #1
004b6428  f1 ff ff 8a                                      bhi #0x4b63f4
004b642c  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b6430  09 50 96 e7                                      ldr r5, [r6, sb]
004b6434  01 10 a0 e3                                      mov r1, #1
004b6438  01 00 80 e0                                      add r0, r0, r1
004b643c  00 b0 95 e5                                      ldr fp, [r5]
004b6440  49 68 f9 eb                                      bl #0x31056c
004b6444  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b6448  00 30 95 e5                                      ldr r3, [r5]
004b644c  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b6450  07 00 a0 e1                                      mov r0, r7
004b6454  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b6458  00 30 a0 e3                                      mov r3, #0
004b645c  fc 83 f9 eb                                      bl #0x317454
004b6460  00 30 95 e5                                      ldr r3, [r5]
004b6464  00 10 a0 e3                                      mov r1, #0
004b6468  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b646c  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b6470  01 40 84 e2                                      add r4, r4, #1
004b6474  03 10 c2 e7                                      strb r1, [r2, r3]
004b6478  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b647c  04 00 53 e1                                      cmp r3, r4
004b6480  d3 ff ff 8a                                      bhi #0x4b63d4
004b6484  c1 ff ff ea                                      b #0x4b6390
; mapping-symbol data/literal pool
004b6488  70 e7 4d 00 38 20 00 00 6c 3b 00 00              .byte 0x70, 0xe7, 0x4d, 0x00, 0x38, 0x20, 0x00, 0x00, 0x6c, 0x3b, 0x00, 0x00

; FUNCTION 0x004bb844, declared_size=308, range_size=308, mode=arm
; class-group: Arrays::LiftableObjects
; alias: _ZN6Arrays15LiftableObjects4readEP11IStreamBase
; demangled: Arrays::LiftableObjects::read(IStreamBase*)
; decoder-mode: arm
004bb844  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004bb848  08 d0 4d e2                                      sub sp, sp, #8
004bb84c  00 80 a0 e1                                      mov r8, r0
004bb850  8e 60 f9 eb                                      bl #0x313a90
004bb854  0c 51 9f e5                                      ldr r5, [pc, #0x10c]
004bb858  01 30 a0 e3                                      mov r3, #1
004bb85c  00 00 53 e3                                      cmp r3, #0
004bb860  04 00 8d e5                                      str r0, [sp, #4]
004bb864  00 30 8d e5                                      str r3, [sp]
004bb868  05 50 8f e0                                      add r5, pc, r5
004bb86c  10 00 00 1a                                      bne #0x4bb8b4
004bb870  04 30 8d e2                                      add r3, sp, #4
004bb874  02 20 83 e2                                      add r2, r3, #2
004bb878  01 30 83 e2                                      add r3, r3, #1
004bb87c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bb880  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bb884  03 00 52 e1                                      cmp r2, r3
004bb888  01 10 20 e0                                      eor r1, r0, r1
004bb88c  01 10 43 e5                                      strb r1, [r3, #-1]
004bb890  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bb894  00 10 21 e0                                      eor r1, r1, r0
004bb898  01 10 c2 e5                                      strb r1, [r2, #1]
004bb89c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bb8a0  01 20 42 e2                                      sub r2, r2, #1
004bb8a4  00 10 21 e0                                      eor r1, r1, r0
004bb8a8  01 10 43 e5                                      strb r1, [r3, #-1]
004bb8ac  01 30 83 e2                                      add r3, r3, #1
004bb8b0  f1 ff ff 8a                                      bhi #0x4bb87c
004bb8b4  b0 60 9f e5                                      ldr r6, [pc, #0xb0]
004bb8b8  67 b0 ff eb                                      bl #0x4a7a5c
004bb8bc  04 40 9d e5                                      ldr r4, [sp, #4]
004bb8c0  06 30 95 e7                                      ldr r3, [r5, r6]
004bb8c4  01 10 a0 e3                                      mov r1, #1
004bb8c8  01 00 84 e0                                      add r0, r4, r1
004bb8cc  00 40 83 e5                                      str r4, [r3]
004bb8d0  80 01 a0 e1                                      lsl r0, r0, #3
004bb8d4  24 53 f9 eb                                      bl #0x31056c
004bb8d8  08 30 a0 e3                                      mov r3, #8
004bb8dc  00 00 54 e3                                      cmp r4, #0
004bb8e0  18 00 80 e8                                      stm r0, {r3, r4}
004bb8e4  03 30 80 e0                                      add r3, r0, r3
004bb8e8  07 00 00 0a                                      beq #0x4bb90c
004bb8ec  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
004bb8f0  00 20 a0 e3                                      mov r2, #0
004bb8f4  01 10 95 e7                                      ldr r1, [r5, r1]
004bb8f8  08 10 81 e2                                      add r1, r1, #8
004bb8fc  01 20 82 e2                                      add r2, r2, #1
004bb900  04 00 52 e1                                      cmp r2, r4
004bb904  08 10 a0 e5                                      str r1, [r0, #8]!
004bb908  fb ff ff 1a                                      bne #0x4bb8fc
004bb90c  06 20 95 e7                                      ldr r2, [r5, r6]
004bb910  5c 70 9f e5                                      ldr r7, [pc, #0x5c]
004bb914  00 10 92 e5                                      ldr r1, [r2]
004bb918  07 20 95 e7                                      ldr r2, [r5, r7]
004bb91c  00 00 51 e3                                      cmp r1, #0
004bb920  00 30 82 e5                                      str r3, [r2]
004bb924  0d 00 00 0a                                      beq #0x4bb960
004bb928  00 40 a0 e3                                      mov r4, #0
004bb92c  01 00 00 ea                                      b #0x4bb938
004bb930  07 30 95 e7                                      ldr r3, [r5, r7]
004bb934  00 30 93 e5                                      ldr r3, [r3]
004bb938  84 01 83 e0                                      add r0, r3, r4, lsl #3
004bb93c  08 10 a0 e1                                      mov r1, r8
004bb940  84 31 93 e7                                      ldr r3, [r3, r4, lsl #3]
004bb944  0f e0 a0 e1                                      mov lr, pc
004bb948  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bb94c  06 30 95 e7                                      ldr r3, [r5, r6]
004bb950  01 40 84 e2                                      add r4, r4, #1
004bb954  00 30 93 e5                                      ldr r3, [r3]
004bb958  04 00 53 e1                                      cmp r3, r4
004bb95c  f3 ff ff 8a                                      bhi #0x4bb930
004bb960  08 d0 8d e2                                      add sp, sp, #8
004bb964  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004bb968  28 92 4d 00 38 20 00 00 70 4a 00 00 f8 1a 00 00  .byte 0x28, 0x92, 0x4d, 0x00, 0x38, 0x20, 0x00, 0x00, 0x70, 0x4a, 0x00, 0x00, 0xf8, 0x1a, 0x00, 0x00
