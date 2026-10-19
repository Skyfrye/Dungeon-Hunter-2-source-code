; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a4888, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::v2Conditions
; alias: _ZN6Arrays12v2Conditions13finalizeNamesEv
; demangled: Arrays::v2Conditions::finalizeNames()
; decoder-mode: arm
004a4888  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a488c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a4890  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a4894  05 50 8f e0                                      add r5, pc, r5
004a4898  06 30 95 e7                                      ldr r3, [r5, r6]
004a489c  00 30 93 e5                                      ldr r3, [r3]
004a48a0  00 00 53 e3                                      cmp r3, #0
004a48a4  1a 00 00 0a                                      beq #0x4a4914
004a48a8  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a48ac  07 20 95 e7                                      ldr r2, [r5, r7]
004a48b0  00 20 92 e5                                      ldr r2, [r2]
004a48b4  00 00 52 e3                                      cmp r2, #0
004a48b8  10 00 00 0a                                      beq #0x4a4900
004a48bc  00 40 a0 e3                                      mov r4, #0
004a48c0  01 00 00 ea                                      b #0x4a48cc
004a48c4  06 30 95 e7                                      ldr r3, [r5, r6]
004a48c8  00 30 93 e5                                      ldr r3, [r3]
004a48cc  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a48d0  01 40 84 e2                                      add r4, r4, #1
004a48d4  00 00 50 e3                                      cmp r0, #0
004a48d8  02 00 00 0a                                      beq #0x4a48e8
004a48dc  d7 ae f9 eb                                      bl #0x310440
004a48e0  06 30 95 e7                                      ldr r3, [r5, r6]
004a48e4  00 30 93 e5                                      ldr r3, [r3]
004a48e8  07 20 95 e7                                      ldr r2, [r5, r7]
004a48ec  00 20 92 e5                                      ldr r2, [r2]
004a48f0  04 00 52 e1                                      cmp r2, r4
004a48f4  f2 ff ff 8a                                      bhi #0x4a48c4
004a48f8  00 00 53 e3                                      cmp r3, #0
004a48fc  01 00 00 0a                                      beq #0x4a4908
004a4900  03 00 a0 e1                                      mov r0, r3
004a4904  cd ae f9 eb                                      bl #0x310440
004a4908  06 30 95 e7                                      ldr r3, [r5, r6]
004a490c  00 20 a0 e3                                      mov r2, #0
004a4910  00 20 83 e5                                      str r2, [r3]
004a4914  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a4918  fc 01 4f 00 54 35 00 00 64 2f 00 00              .byte 0xfc, 0x01, 0x4f, 0x00, 0x54, 0x35, 0x00, 0x00, 0x64, 0x2f, 0x00, 0x00

; FUNCTION 0x004a4924, declared_size=216, range_size=216, mode=arm
; class-group: Arrays::v2Conditions
; alias: _ZN6Arrays12v2Conditions8finalizeEv
; demangled: Arrays::v2Conditions::finalize()
; decoder-mode: arm
004a4924  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a4928  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
004a492c  c0 60 9f e5                                      ldr r6, [pc, #0xc0]
004a4930  05 50 8f e0                                      add r5, pc, r5
004a4934  06 30 95 e7                                      ldr r3, [r5, r6]
004a4938  00 30 93 e5                                      ldr r3, [r3]
004a493c  00 00 53 e3                                      cmp r3, #0
004a4940  29 00 00 0a                                      beq #0x4a49ec
004a4944  ac 70 9f e5                                      ldr r7, [pc, #0xac]
004a4948  07 20 95 e7                                      ldr r2, [r5, r7]
004a494c  00 20 92 e5                                      ldr r2, [r2]
004a4950  00 00 52 e3                                      cmp r2, #0
004a4954  10 00 00 0a                                      beq #0x4a499c
004a4958  00 40 a0 e3                                      mov r4, #0
004a495c  01 00 00 ea                                      b #0x4a4968
004a4960  06 30 95 e7                                      ldr r3, [r5, r6]
004a4964  00 30 93 e5                                      ldr r3, [r3]
004a4968  04 02 83 e0                                      add r0, r3, r4, lsl #4
004a496c  04 32 93 e7                                      ldr r3, [r3, r4, lsl #4]
004a4970  0f e0 a0 e1                                      mov lr, pc
004a4974  08 f0 93 e5                                      ldr pc, [r3, #8]
004a4978  07 30 95 e7                                      ldr r3, [r5, r7]
004a497c  01 40 84 e2                                      add r4, r4, #1
004a4980  00 30 93 e5                                      ldr r3, [r3]
004a4984  04 00 53 e1                                      cmp r3, r4
004a4988  f4 ff ff 8a                                      bhi #0x4a4960
004a498c  06 30 95 e7                                      ldr r3, [r5, r6]
004a4990  00 30 93 e5                                      ldr r3, [r3]
004a4994  00 00 53 e3                                      cmp r3, #0
004a4998  10 00 00 0a                                      beq #0x4a49e0
004a499c  04 00 13 e5                                      ldr r0, [r3, #-4]
004a49a0  00 02 83 e0                                      add r0, r3, r0, lsl #4
004a49a4  00 00 53 e1                                      cmp r3, r0
004a49a8  01 00 00 1a                                      bne #0x4a49b4
004a49ac  09 00 00 ea                                      b #0x4a49d8
004a49b0  04 00 a0 e1                                      mov r0, r4
004a49b4  10 40 40 e2                                      sub r4, r0, #0x10
004a49b8  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004a49bc  04 00 a0 e1                                      mov r0, r4
004a49c0  0f e0 a0 e1                                      mov lr, pc
004a49c4  00 f0 93 e5                                      ldr pc, [r3]
004a49c8  06 30 95 e7                                      ldr r3, [r5, r6]
004a49cc  00 00 93 e5                                      ldr r0, [r3]
004a49d0  04 00 50 e1                                      cmp r0, r4
004a49d4  f5 ff ff 1a                                      bne #0x4a49b0
004a49d8  08 00 40 e2                                      sub r0, r0, #8
004a49dc  97 ae f9 eb                                      bl #0x310440
004a49e0  06 30 95 e7                                      ldr r3, [r5, r6]
004a49e4  00 20 a0 e3                                      mov r2, #0
004a49e8  00 20 83 e5                                      str r2, [r3]
004a49ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a49f0  60 01 4f 00 40 28 00 00 64 2f 00 00              .byte 0x60, 0x01, 0x4f, 0x00, 0x40, 0x28, 0x00, 0x00, 0x64, 0x2f, 0x00, 0x00

; FUNCTION 0x004b15f8, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::v2Conditions
; alias: _ZN6Arrays12v2Conditions9readNamesEP11IStreamBase
; demangled: Arrays::v2Conditions::readNames(IStreamBase*)
; decoder-mode: arm
004b15f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b15fc  00 70 a0 e1                                      mov r7, r0
004b1600  1c d0 4d e2                                      sub sp, sp, #0x1c
004b1604  9f cc ff eb                                      bl #0x4a4888
004b1608  07 00 a0 e1                                      mov r0, r7
004b160c  1f 89 f9 eb                                      bl #0x313a90
004b1610  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b1614  01 30 a0 e3                                      mov r3, #1
004b1618  00 00 53 e3                                      cmp r3, #0
004b161c  06 60 8f e0                                      add r6, pc, r6
004b1620  14 00 8d e5                                      str r0, [sp, #0x14]
004b1624  0c 30 8d e5                                      str r3, [sp, #0xc]
004b1628  12 00 00 1a                                      bne #0x4b1678
004b162c  14 30 8d e2                                      add r3, sp, #0x14
004b1630  02 20 83 e2                                      add r2, r3, #2
004b1634  01 30 83 e2                                      add r3, r3, #1
004b1638  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b163c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b1640  03 00 52 e1                                      cmp r2, r3
004b1644  02 40 a0 e1                                      mov r4, r2
004b1648  01 10 20 e0                                      eor r1, r0, r1
004b164c  01 10 43 e5                                      strb r1, [r3, #-1]
004b1650  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1654  00 10 21 e0                                      eor r1, r1, r0
004b1658  01 10 c2 e5                                      strb r1, [r2, #1]
004b165c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b1660  01 20 42 e2                                      sub r2, r2, #1
004b1664  00 10 21 e0                                      eor r1, r1, r0
004b1668  01 10 43 e5                                      strb r1, [r3, #-1]
004b166c  01 30 83 e2                                      add r3, r3, #1
004b1670  f0 ff ff 8a                                      bhi #0x4b1638
004b1674  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b1678  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b167c  03 30 96 e7                                      ldr r3, [r6, r3]
004b1680  00 30 93 e5                                      ldr r3, [r3]
004b1684  00 00 53 e1                                      cmp r3, r0
004b1688  01 00 00 0a                                      beq #0x4b1694
004b168c  1c d0 8d e2                                      add sp, sp, #0x1c
004b1690  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b1694  00 01 a0 e1                                      lsl r0, r0, #2
004b1698  01 10 a0 e3                                      mov r1, #1
004b169c  b2 7b f9 eb                                      bl #0x31056c
004b16a0  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b16a4  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b16a8  09 30 96 e7                                      ldr r3, [r6, sb]
004b16ac  00 00 52 e3                                      cmp r2, #0
004b16b0  00 00 83 e5                                      str r0, [r3]
004b16b4  f4 ff ff 0a                                      beq #0x4b168c
004b16b8  10 a0 8d e2                                      add sl, sp, #0x10
004b16bc  01 80 a0 e3                                      mov r8, #1
004b16c0  08 10 8a e0                                      add r1, sl, r8
004b16c4  02 30 8a e2                                      add r3, sl, #2
004b16c8  00 40 a0 e3                                      mov r4, #0
004b16cc  0a 00 8d e8                                      stm sp, {r1, r3}
004b16d0  07 00 a0 e1                                      mov r0, r7
004b16d4  0a 10 a0 e1                                      mov r1, sl
004b16d8  b0 b6 fc eb                                      bl #0x3df1a0
004b16dc  00 00 58 e3                                      cmp r8, #0
004b16e0  0c 80 8d e5                                      str r8, [sp, #0xc]
004b16e4  0f 00 00 1a                                      bne #0x4b1728
004b16e8  00 30 9d e5                                      ldr r3, [sp]
004b16ec  04 20 9d e5                                      ldr r2, [sp, #4]
004b16f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b16f4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b16f8  03 00 52 e1                                      cmp r2, r3
004b16fc  01 10 20 e0                                      eor r1, r0, r1
004b1700  01 10 43 e5                                      strb r1, [r3, #-1]
004b1704  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1708  00 10 21 e0                                      eor r1, r1, r0
004b170c  01 10 c2 e5                                      strb r1, [r2, #1]
004b1710  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b1714  01 20 42 e2                                      sub r2, r2, #1
004b1718  00 10 21 e0                                      eor r1, r1, r0
004b171c  01 10 43 e5                                      strb r1, [r3, #-1]
004b1720  01 30 83 e2                                      add r3, r3, #1
004b1724  f1 ff ff 8a                                      bhi #0x4b16f0
004b1728  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b172c  09 50 96 e7                                      ldr r5, [r6, sb]
004b1730  01 10 a0 e3                                      mov r1, #1
004b1734  01 00 80 e0                                      add r0, r0, r1
004b1738  00 b0 95 e5                                      ldr fp, [r5]
004b173c  8a 7b f9 eb                                      bl #0x31056c
004b1740  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b1744  00 30 95 e5                                      ldr r3, [r5]
004b1748  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b174c  07 00 a0 e1                                      mov r0, r7
004b1750  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b1754  00 30 a0 e3                                      mov r3, #0
004b1758  3d 97 f9 eb                                      bl #0x317454
004b175c  00 30 95 e5                                      ldr r3, [r5]
004b1760  00 10 a0 e3                                      mov r1, #0
004b1764  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b1768  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b176c  01 40 84 e2                                      add r4, r4, #1
004b1770  03 10 c2 e7                                      strb r1, [r2, r3]
004b1774  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b1778  04 00 53 e1                                      cmp r3, r4
004b177c  d3 ff ff 8a                                      bhi #0x4b16d0
004b1780  c1 ff ff ea                                      b #0x4b168c
; mapping-symbol data/literal pool
004b1784  74 34 4e 00 64 2f 00 00 54 35 00 00              .byte 0x74, 0x34, 0x4e, 0x00, 0x64, 0x2f, 0x00, 0x00, 0x54, 0x35, 0x00, 0x00

; FUNCTION 0x004b8dec, declared_size=316, range_size=316, mode=arm
; class-group: Arrays::v2Conditions
; alias: _ZN6Arrays12v2Conditions4readEP11IStreamBase
; demangled: Arrays::v2Conditions::read(IStreamBase*)
; decoder-mode: arm
004b8dec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004b8df0  08 d0 4d e2                                      sub sp, sp, #8
004b8df4  00 80 a0 e1                                      mov r8, r0
004b8df8  24 6b f9 eb                                      bl #0x313a90
004b8dfc  14 51 9f e5                                      ldr r5, [pc, #0x114]
004b8e00  01 30 a0 e3                                      mov r3, #1
004b8e04  00 00 53 e3                                      cmp r3, #0
004b8e08  04 00 8d e5                                      str r0, [sp, #4]
004b8e0c  00 30 8d e5                                      str r3, [sp]
004b8e10  05 50 8f e0                                      add r5, pc, r5
004b8e14  10 00 00 1a                                      bne #0x4b8e5c
004b8e18  04 30 8d e2                                      add r3, sp, #4
004b8e1c  02 20 83 e2                                      add r2, r3, #2
004b8e20  01 30 83 e2                                      add r3, r3, #1
004b8e24  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b8e28  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b8e2c  03 00 52 e1                                      cmp r2, r3
004b8e30  01 10 20 e0                                      eor r1, r0, r1
004b8e34  01 10 43 e5                                      strb r1, [r3, #-1]
004b8e38  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b8e3c  00 10 21 e0                                      eor r1, r1, r0
004b8e40  01 10 c2 e5                                      strb r1, [r2, #1]
004b8e44  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b8e48  01 20 42 e2                                      sub r2, r2, #1
004b8e4c  00 10 21 e0                                      eor r1, r1, r0
004b8e50  01 10 43 e5                                      strb r1, [r3, #-1]
004b8e54  01 30 83 e2                                      add r3, r3, #1
004b8e58  f1 ff ff 8a                                      bhi #0x4b8e24
004b8e5c  b8 60 9f e5                                      ldr r6, [pc, #0xb8]
004b8e60  af ae ff eb                                      bl #0x4a4924
004b8e64  04 40 9d e5                                      ldr r4, [sp, #4]
004b8e68  06 30 95 e7                                      ldr r3, [r5, r6]
004b8e6c  01 10 a0 e3                                      mov r1, #1
004b8e70  04 02 a0 e1                                      lsl r0, r4, #4
004b8e74  00 40 83 e5                                      str r4, [r3]
004b8e78  08 00 80 e2                                      add r0, r0, #8
004b8e7c  ba 5d f9 eb                                      bl #0x31056c
004b8e80  10 30 a0 e3                                      mov r3, #0x10
004b8e84  00 00 54 e3                                      cmp r4, #0
004b8e88  18 00 80 e8                                      stm r0, {r3, r4}
004b8e8c  08 30 80 e2                                      add r3, r0, #8
004b8e90  09 00 00 0a                                      beq #0x4b8ebc
004b8e94  84 10 9f e5                                      ldr r1, [pc, #0x84]
004b8e98  00 20 a0 e3                                      mov r2, #0
004b8e9c  02 c0 a0 e1                                      mov ip, r2
004b8ea0  01 10 95 e7                                      ldr r1, [r5, r1]
004b8ea4  08 10 81 e2                                      add r1, r1, #8
004b8ea8  01 20 82 e2                                      add r2, r2, #1
004b8eac  04 00 52 e1                                      cmp r2, r4
004b8eb0  08 10 80 e5                                      str r1, [r0, #8]
004b8eb4  10 c0 a0 e5                                      str ip, [r0, #0x10]!
004b8eb8  fa ff ff 1a                                      bne #0x4b8ea8
004b8ebc  06 20 95 e7                                      ldr r2, [r5, r6]
004b8ec0  5c 70 9f e5                                      ldr r7, [pc, #0x5c]
004b8ec4  00 10 92 e5                                      ldr r1, [r2]
004b8ec8  07 20 95 e7                                      ldr r2, [r5, r7]
004b8ecc  00 00 51 e3                                      cmp r1, #0
004b8ed0  00 30 82 e5                                      str r3, [r2]
004b8ed4  0d 00 00 0a                                      beq #0x4b8f10
004b8ed8  00 40 a0 e3                                      mov r4, #0
004b8edc  01 00 00 ea                                      b #0x4b8ee8
004b8ee0  07 30 95 e7                                      ldr r3, [r5, r7]
004b8ee4  00 30 93 e5                                      ldr r3, [r3]
004b8ee8  04 02 83 e0                                      add r0, r3, r4, lsl #4
004b8eec  08 10 a0 e1                                      mov r1, r8
004b8ef0  04 32 93 e7                                      ldr r3, [r3, r4, lsl #4]
004b8ef4  0f e0 a0 e1                                      mov lr, pc
004b8ef8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b8efc  06 30 95 e7                                      ldr r3, [r5, r6]
004b8f00  01 40 84 e2                                      add r4, r4, #1
004b8f04  00 30 93 e5                                      ldr r3, [r3]
004b8f08  04 00 53 e1                                      cmp r3, r4
004b8f0c  f3 ff ff 8a                                      bhi #0x4b8ee0
004b8f10  08 d0 8d e2                                      add sp, sp, #8
004b8f14  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004b8f18  80 bc 4d 00 64 2f 00 00 6c 2f 00 00 40 28 00 00  .byte 0x80, 0xbc, 0x4d, 0x00, 0x64, 0x2f, 0x00, 0x00, 0x6c, 0x2f, 0x00, 0x00, 0x40, 0x28, 0x00, 0x00
