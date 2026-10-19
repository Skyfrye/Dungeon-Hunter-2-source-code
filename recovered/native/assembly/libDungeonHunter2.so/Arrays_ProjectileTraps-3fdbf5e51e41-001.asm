; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a76c0, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::ProjectileTraps
; alias: _ZN6Arrays15ProjectileTraps13finalizeNamesEv
; demangled: Arrays::ProjectileTraps::finalizeNames()
; decoder-mode: arm
004a76c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a76c4  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a76c8  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a76cc  05 50 8f e0                                      add r5, pc, r5
004a76d0  06 30 95 e7                                      ldr r3, [r5, r6]
004a76d4  00 30 93 e5                                      ldr r3, [r3]
004a76d8  00 00 53 e3                                      cmp r3, #0
004a76dc  1a 00 00 0a                                      beq #0x4a774c
004a76e0  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a76e4  07 20 95 e7                                      ldr r2, [r5, r7]
004a76e8  00 20 92 e5                                      ldr r2, [r2]
004a76ec  00 00 52 e3                                      cmp r2, #0
004a76f0  10 00 00 0a                                      beq #0x4a7738
004a76f4  00 40 a0 e3                                      mov r4, #0
004a76f8  01 00 00 ea                                      b #0x4a7704
004a76fc  06 30 95 e7                                      ldr r3, [r5, r6]
004a7700  00 30 93 e5                                      ldr r3, [r3]
004a7704  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a7708  01 40 84 e2                                      add r4, r4, #1
004a770c  00 00 50 e3                                      cmp r0, #0
004a7710  02 00 00 0a                                      beq #0x4a7720
004a7714  49 a3 f9 eb                                      bl #0x310440
004a7718  06 30 95 e7                                      ldr r3, [r5, r6]
004a771c  00 30 93 e5                                      ldr r3, [r3]
004a7720  07 20 95 e7                                      ldr r2, [r5, r7]
004a7724  00 20 92 e5                                      ldr r2, [r2]
004a7728  04 00 52 e1                                      cmp r2, r4
004a772c  f2 ff ff 8a                                      bhi #0x4a76fc
004a7730  00 00 53 e3                                      cmp r3, #0
004a7734  01 00 00 0a                                      beq #0x4a7740
004a7738  03 00 a0 e1                                      mov r0, r3
004a773c  3f a3 f9 eb                                      bl #0x310440
004a7740  06 30 95 e7                                      ldr r3, [r5, r6]
004a7744  00 20 a0 e3                                      mov r2, #0
004a7748  00 20 83 e5                                      str r2, [r3]
004a774c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a7750  c4 d3 4e 00 e0 3c 00 00 a4 12 00 00              .byte 0xc4, 0xd3, 0x4e, 0x00, 0xe0, 0x3c, 0x00, 0x00, 0xa4, 0x12, 0x00, 0x00

; FUNCTION 0x004a775c, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::ProjectileTraps
; alias: _ZN6Arrays15ProjectileTraps8finalizeEv
; demangled: Arrays::ProjectileTraps::finalize()
; decoder-mode: arm
004a775c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a7760  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a7764  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a7768  05 50 8f e0                                      add r5, pc, r5
004a776c  07 30 95 e7                                      ldr r3, [r5, r7]
004a7770  00 30 93 e5                                      ldr r3, [r3]
004a7774  00 00 53 e3                                      cmp r3, #0
004a7778  2c 00 00 0a                                      beq #0x4a7830
004a777c  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a7780  08 20 95 e7                                      ldr r2, [r5, r8]
004a7784  00 20 92 e5                                      ldr r2, [r2]
004a7788  00 00 52 e3                                      cmp r2, #0
004a778c  12 00 00 0a                                      beq #0x4a77dc
004a7790  00 40 a0 e3                                      mov r4, #0
004a7794  04 60 a0 e1                                      mov r6, r4
004a7798  01 00 00 ea                                      b #0x4a77a4
004a779c  07 30 95 e7                                      ldr r3, [r5, r7]
004a77a0  00 30 93 e5                                      ldr r3, [r3]
004a77a4  04 00 83 e0                                      add r0, r3, r4
004a77a8  04 30 93 e7                                      ldr r3, [r3, r4]
004a77ac  0f e0 a0 e1                                      mov lr, pc
004a77b0  08 f0 93 e5                                      ldr pc, [r3, #8]
004a77b4  08 30 95 e7                                      ldr r3, [r5, r8]
004a77b8  01 60 86 e2                                      add r6, r6, #1
004a77bc  28 40 84 e2                                      add r4, r4, #0x28
004a77c0  00 30 93 e5                                      ldr r3, [r3]
004a77c4  06 00 53 e1                                      cmp r3, r6
004a77c8  f3 ff ff 8a                                      bhi #0x4a779c
004a77cc  07 30 95 e7                                      ldr r3, [r5, r7]
004a77d0  00 30 93 e5                                      ldr r3, [r3]
004a77d4  00 00 53 e3                                      cmp r3, #0
004a77d8  11 00 00 0a                                      beq #0x4a7824
004a77dc  04 20 13 e5                                      ldr r2, [r3, #-4]
004a77e0  28 00 a0 e3                                      mov r0, #0x28
004a77e4  90 32 20 e0                                      mla r0, r0, r2, r3
004a77e8  00 00 53 e1                                      cmp r3, r0
004a77ec  01 00 00 1a                                      bne #0x4a77f8
004a77f0  09 00 00 ea                                      b #0x4a781c
004a77f4  04 00 a0 e1                                      mov r0, r4
004a77f8  28 40 40 e2                                      sub r4, r0, #0x28
004a77fc  28 30 10 e5                                      ldr r3, [r0, #-0x28]
004a7800  04 00 a0 e1                                      mov r0, r4
004a7804  0f e0 a0 e1                                      mov lr, pc
004a7808  00 f0 93 e5                                      ldr pc, [r3]
004a780c  07 30 95 e7                                      ldr r3, [r5, r7]
004a7810  00 00 93 e5                                      ldr r0, [r3]
004a7814  04 00 50 e1                                      cmp r0, r4
004a7818  f5 ff ff 1a                                      bne #0x4a77f4
004a781c  08 00 40 e2                                      sub r0, r0, #8
004a7820  06 a3 f9 eb                                      bl #0x310440
004a7824  07 30 95 e7                                      ldr r3, [r5, r7]
004a7828  00 20 a0 e3                                      mov r2, #0
004a782c  00 20 83 e5                                      str r2, [r3]
004a7830  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a7834  28 d3 4e 00 70 33 00 00 a4 12 00 00              .byte 0x28, 0xd3, 0x4e, 0x00, 0x70, 0x33, 0x00, 0x00, 0xa4, 0x12, 0x00, 0x00

; FUNCTION 0x004b596c, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::ProjectileTraps
; alias: _ZN6Arrays15ProjectileTraps9readNamesEP11IStreamBase
; demangled: Arrays::ProjectileTraps::readNames(IStreamBase*)
; decoder-mode: arm
004b596c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b5970  00 70 a0 e1                                      mov r7, r0
004b5974  1c d0 4d e2                                      sub sp, sp, #0x1c
004b5978  50 c7 ff eb                                      bl #0x4a76c0
004b597c  07 00 a0 e1                                      mov r0, r7
004b5980  42 78 f9 eb                                      bl #0x313a90
004b5984  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b5988  01 30 a0 e3                                      mov r3, #1
004b598c  00 00 53 e3                                      cmp r3, #0
004b5990  06 60 8f e0                                      add r6, pc, r6
004b5994  14 00 8d e5                                      str r0, [sp, #0x14]
004b5998  0c 30 8d e5                                      str r3, [sp, #0xc]
004b599c  12 00 00 1a                                      bne #0x4b59ec
004b59a0  14 30 8d e2                                      add r3, sp, #0x14
004b59a4  02 20 83 e2                                      add r2, r3, #2
004b59a8  01 30 83 e2                                      add r3, r3, #1
004b59ac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b59b0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b59b4  03 00 52 e1                                      cmp r2, r3
004b59b8  02 40 a0 e1                                      mov r4, r2
004b59bc  01 10 20 e0                                      eor r1, r0, r1
004b59c0  01 10 43 e5                                      strb r1, [r3, #-1]
004b59c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b59c8  00 10 21 e0                                      eor r1, r1, r0
004b59cc  01 10 c2 e5                                      strb r1, [r2, #1]
004b59d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b59d4  01 20 42 e2                                      sub r2, r2, #1
004b59d8  00 10 21 e0                                      eor r1, r1, r0
004b59dc  01 10 43 e5                                      strb r1, [r3, #-1]
004b59e0  01 30 83 e2                                      add r3, r3, #1
004b59e4  f0 ff ff 8a                                      bhi #0x4b59ac
004b59e8  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b59ec  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b59f0  03 30 96 e7                                      ldr r3, [r6, r3]
004b59f4  00 30 93 e5                                      ldr r3, [r3]
004b59f8  00 00 53 e1                                      cmp r3, r0
004b59fc  01 00 00 0a                                      beq #0x4b5a08
004b5a00  1c d0 8d e2                                      add sp, sp, #0x1c
004b5a04  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b5a08  00 01 a0 e1                                      lsl r0, r0, #2
004b5a0c  01 10 a0 e3                                      mov r1, #1
004b5a10  d5 6a f9 eb                                      bl #0x31056c
004b5a14  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b5a18  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b5a1c  09 30 96 e7                                      ldr r3, [r6, sb]
004b5a20  00 00 52 e3                                      cmp r2, #0
004b5a24  00 00 83 e5                                      str r0, [r3]
004b5a28  f4 ff ff 0a                                      beq #0x4b5a00
004b5a2c  10 a0 8d e2                                      add sl, sp, #0x10
004b5a30  01 80 a0 e3                                      mov r8, #1
004b5a34  08 10 8a e0                                      add r1, sl, r8
004b5a38  02 30 8a e2                                      add r3, sl, #2
004b5a3c  00 40 a0 e3                                      mov r4, #0
004b5a40  0a 00 8d e8                                      stm sp, {r1, r3}
004b5a44  07 00 a0 e1                                      mov r0, r7
004b5a48  0a 10 a0 e1                                      mov r1, sl
004b5a4c  d3 a5 fc eb                                      bl #0x3df1a0
004b5a50  00 00 58 e3                                      cmp r8, #0
004b5a54  0c 80 8d e5                                      str r8, [sp, #0xc]
004b5a58  0f 00 00 1a                                      bne #0x4b5a9c
004b5a5c  00 30 9d e5                                      ldr r3, [sp]
004b5a60  04 20 9d e5                                      ldr r2, [sp, #4]
004b5a64  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5a68  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b5a6c  03 00 52 e1                                      cmp r2, r3
004b5a70  01 10 20 e0                                      eor r1, r0, r1
004b5a74  01 10 43 e5                                      strb r1, [r3, #-1]
004b5a78  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5a7c  00 10 21 e0                                      eor r1, r1, r0
004b5a80  01 10 c2 e5                                      strb r1, [r2, #1]
004b5a84  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b5a88  01 20 42 e2                                      sub r2, r2, #1
004b5a8c  00 10 21 e0                                      eor r1, r1, r0
004b5a90  01 10 43 e5                                      strb r1, [r3, #-1]
004b5a94  01 30 83 e2                                      add r3, r3, #1
004b5a98  f1 ff ff 8a                                      bhi #0x4b5a64
004b5a9c  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b5aa0  09 50 96 e7                                      ldr r5, [r6, sb]
004b5aa4  01 10 a0 e3                                      mov r1, #1
004b5aa8  01 00 80 e0                                      add r0, r0, r1
004b5aac  00 b0 95 e5                                      ldr fp, [r5]
004b5ab0  ad 6a f9 eb                                      bl #0x31056c
004b5ab4  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b5ab8  00 30 95 e5                                      ldr r3, [r5]
004b5abc  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b5ac0  07 00 a0 e1                                      mov r0, r7
004b5ac4  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b5ac8  00 30 a0 e3                                      mov r3, #0
004b5acc  60 86 f9 eb                                      bl #0x317454
004b5ad0  00 30 95 e5                                      ldr r3, [r5]
004b5ad4  00 10 a0 e3                                      mov r1, #0
004b5ad8  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b5adc  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b5ae0  01 40 84 e2                                      add r4, r4, #1
004b5ae4  03 10 c2 e7                                      strb r1, [r2, r3]
004b5ae8  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b5aec  04 00 53 e1                                      cmp r3, r4
004b5af0  d3 ff ff 8a                                      bhi #0x4b5a44
004b5af4  c1 ff ff ea                                      b #0x4b5a00
; mapping-symbol data/literal pool
004b5af8  00 f1 4d 00 a4 12 00 00 e0 3c 00 00              .byte 0x00, 0xf1, 0x4d, 0x00, 0xa4, 0x12, 0x00, 0x00, 0xe0, 0x3c, 0x00, 0x00

; FUNCTION 0x004bb5ac, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::ProjectileTraps
; alias: _ZN6Arrays15ProjectileTraps4readEP11IStreamBase
; demangled: Arrays::ProjectileTraps::read(IStreamBase*)
; decoder-mode: arm
004bb5ac  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004bb5b0  0c d0 4d e2                                      sub sp, sp, #0xc
004bb5b4  00 a0 a0 e1                                      mov sl, r0
004bb5b8  34 61 f9 eb                                      bl #0x313a90
004bb5bc  24 61 9f e5                                      ldr r6, [pc, #0x124]
004bb5c0  01 30 a0 e3                                      mov r3, #1
004bb5c4  00 00 53 e3                                      cmp r3, #0
004bb5c8  04 00 8d e5                                      str r0, [sp, #4]
004bb5cc  00 30 8d e5                                      str r3, [sp]
004bb5d0  06 60 8f e0                                      add r6, pc, r6
004bb5d4  10 00 00 1a                                      bne #0x4bb61c
004bb5d8  04 30 8d e2                                      add r3, sp, #4
004bb5dc  02 20 83 e2                                      add r2, r3, #2
004bb5e0  01 30 83 e2                                      add r3, r3, #1
004bb5e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bb5e8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bb5ec  03 00 52 e1                                      cmp r2, r3
004bb5f0  01 10 20 e0                                      eor r1, r0, r1
004bb5f4  01 10 43 e5                                      strb r1, [r3, #-1]
004bb5f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bb5fc  00 10 21 e0                                      eor r1, r1, r0
004bb600  01 10 c2 e5                                      strb r1, [r2, #1]
004bb604  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bb608  01 20 42 e2                                      sub r2, r2, #1
004bb60c  00 10 21 e0                                      eor r1, r1, r0
004bb610  01 10 43 e5                                      strb r1, [r3, #-1]
004bb614  01 30 83 e2                                      add r3, r3, #1
004bb618  f1 ff ff 8a                                      bhi #0x4bb5e4
004bb61c  c8 70 9f e5                                      ldr r7, [pc, #0xc8]
004bb620  4d b0 ff eb                                      bl #0x4a775c
004bb624  04 40 9d e5                                      ldr r4, [sp, #4]
004bb628  07 30 96 e7                                      ldr r3, [r6, r7]
004bb62c  01 10 a0 e3                                      mov r1, #1
004bb630  04 01 84 e0                                      add r0, r4, r4, lsl #2
004bb634  01 00 80 e0                                      add r0, r0, r1
004bb638  00 40 83 e5                                      str r4, [r3]
004bb63c  80 01 a0 e1                                      lsl r0, r0, #3
004bb640  c9 53 f9 eb                                      bl #0x31056c
004bb644  28 30 a0 e3                                      mov r3, #0x28
004bb648  00 00 54 e3                                      cmp r4, #0
004bb64c  18 00 80 e8                                      stm r0, {r3, r4}
004bb650  08 30 80 e2                                      add r3, r0, #8
004bb654  0a 00 00 0a                                      beq #0x4bb684
004bb658  90 10 9f e5                                      ldr r1, [pc, #0x90]
004bb65c  00 20 a0 e3                                      mov r2, #0
004bb660  02 c0 a0 e1                                      mov ip, r2
004bb664  01 10 96 e7                                      ldr r1, [r6, r1]
004bb668  08 10 81 e2                                      add r1, r1, #8
004bb66c  01 20 82 e2                                      add r2, r2, #1
004bb670  04 00 52 e1                                      cmp r2, r4
004bb674  08 10 80 e5                                      str r1, [r0, #8]
004bb678  24 c0 80 e5                                      str ip, [r0, #0x24]
004bb67c  28 00 80 e2                                      add r0, r0, #0x28
004bb680  f9 ff ff 1a                                      bne #0x4bb66c
004bb684  07 20 96 e7                                      ldr r2, [r6, r7]
004bb688  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bb68c  00 10 92 e5                                      ldr r1, [r2]
004bb690  08 20 96 e7                                      ldr r2, [r6, r8]
004bb694  00 00 51 e3                                      cmp r1, #0
004bb698  00 30 82 e5                                      str r3, [r2]
004bb69c  0f 00 00 0a                                      beq #0x4bb6e0
004bb6a0  00 40 a0 e3                                      mov r4, #0
004bb6a4  04 50 a0 e1                                      mov r5, r4
004bb6a8  01 00 00 ea                                      b #0x4bb6b4
004bb6ac  08 30 96 e7                                      ldr r3, [r6, r8]
004bb6b0  00 30 93 e5                                      ldr r3, [r3]
004bb6b4  04 00 83 e0                                      add r0, r3, r4
004bb6b8  0a 10 a0 e1                                      mov r1, sl
004bb6bc  04 30 93 e7                                      ldr r3, [r3, r4]
004bb6c0  0f e0 a0 e1                                      mov lr, pc
004bb6c4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bb6c8  07 30 96 e7                                      ldr r3, [r6, r7]
004bb6cc  01 50 85 e2                                      add r5, r5, #1
004bb6d0  28 40 84 e2                                      add r4, r4, #0x28
004bb6d4  00 30 93 e5                                      ldr r3, [r3]
004bb6d8  05 00 53 e1                                      cmp r3, r5
004bb6dc  f2 ff ff 8a                                      bhi #0x4bb6ac
004bb6e0  0c d0 8d e2                                      add sp, sp, #0xc
004bb6e4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bb6e8  c0 94 4d 00 a4 12 00 00 20 36 00 00 70 33 00 00  .byte 0xc0, 0x94, 0x4d, 0x00, 0xa4, 0x12, 0x00, 0x00, 0x20, 0x36, 0x00, 0x00, 0x70, 0x33, 0x00, 0x00
