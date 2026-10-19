; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a4708, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::v2Events
; alias: _ZN6Arrays8v2Events13finalizeNamesEv
; demangled: Arrays::v2Events::finalizeNames()
; decoder-mode: arm
004a4708  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a470c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a4710  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a4714  05 50 8f e0                                      add r5, pc, r5
004a4718  06 30 95 e7                                      ldr r3, [r5, r6]
004a471c  00 30 93 e5                                      ldr r3, [r3]
004a4720  00 00 53 e3                                      cmp r3, #0
004a4724  1a 00 00 0a                                      beq #0x4a4794
004a4728  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a472c  07 20 95 e7                                      ldr r2, [r5, r7]
004a4730  00 20 92 e5                                      ldr r2, [r2]
004a4734  00 00 52 e3                                      cmp r2, #0
004a4738  10 00 00 0a                                      beq #0x4a4780
004a473c  00 40 a0 e3                                      mov r4, #0
004a4740  01 00 00 ea                                      b #0x4a474c
004a4744  06 30 95 e7                                      ldr r3, [r5, r6]
004a4748  00 30 93 e5                                      ldr r3, [r3]
004a474c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a4750  01 40 84 e2                                      add r4, r4, #1
004a4754  00 00 50 e3                                      cmp r0, #0
004a4758  02 00 00 0a                                      beq #0x4a4768
004a475c  37 af f9 eb                                      bl #0x310440
004a4760  06 30 95 e7                                      ldr r3, [r5, r6]
004a4764  00 30 93 e5                                      ldr r3, [r3]
004a4768  07 20 95 e7                                      ldr r2, [r5, r7]
004a476c  00 20 92 e5                                      ldr r2, [r2]
004a4770  04 00 52 e1                                      cmp r2, r4
004a4774  f2 ff ff 8a                                      bhi #0x4a4744
004a4778  00 00 53 e3                                      cmp r3, #0
004a477c  01 00 00 0a                                      beq #0x4a4788
004a4780  03 00 a0 e1                                      mov r0, r3
004a4784  2d af f9 eb                                      bl #0x310440
004a4788  06 30 95 e7                                      ldr r3, [r5, r6]
004a478c  00 20 a0 e3                                      mov r2, #0
004a4790  00 20 83 e5                                      str r2, [r3]
004a4794  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a4798  7c 03 4f 00 d0 37 00 00 60 08 00 00              .byte 0x7c, 0x03, 0x4f, 0x00, 0xd0, 0x37, 0x00, 0x00, 0x60, 0x08, 0x00, 0x00

; FUNCTION 0x004a47a4, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::v2Events
; alias: _ZN6Arrays8v2Events8finalizeEv
; demangled: Arrays::v2Events::finalize()
; decoder-mode: arm
004a47a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a47a8  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a47ac  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a47b0  05 50 8f e0                                      add r5, pc, r5
004a47b4  07 30 95 e7                                      ldr r3, [r5, r7]
004a47b8  00 30 93 e5                                      ldr r3, [r3]
004a47bc  00 00 53 e3                                      cmp r3, #0
004a47c0  2c 00 00 0a                                      beq #0x4a4878
004a47c4  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a47c8  08 20 95 e7                                      ldr r2, [r5, r8]
004a47cc  00 20 92 e5                                      ldr r2, [r2]
004a47d0  00 00 52 e3                                      cmp r2, #0
004a47d4  12 00 00 0a                                      beq #0x4a4824
004a47d8  00 40 a0 e3                                      mov r4, #0
004a47dc  04 60 a0 e1                                      mov r6, r4
004a47e0  01 00 00 ea                                      b #0x4a47ec
004a47e4  07 30 95 e7                                      ldr r3, [r5, r7]
004a47e8  00 30 93 e5                                      ldr r3, [r3]
004a47ec  04 00 83 e0                                      add r0, r3, r4
004a47f0  04 30 93 e7                                      ldr r3, [r3, r4]
004a47f4  0f e0 a0 e1                                      mov lr, pc
004a47f8  08 f0 93 e5                                      ldr pc, [r3, #8]
004a47fc  08 30 95 e7                                      ldr r3, [r5, r8]
004a4800  01 60 86 e2                                      add r6, r6, #1
004a4804  18 40 84 e2                                      add r4, r4, #0x18
004a4808  00 30 93 e5                                      ldr r3, [r3]
004a480c  06 00 53 e1                                      cmp r3, r6
004a4810  f3 ff ff 8a                                      bhi #0x4a47e4
004a4814  07 30 95 e7                                      ldr r3, [r5, r7]
004a4818  00 30 93 e5                                      ldr r3, [r3]
004a481c  00 00 53 e3                                      cmp r3, #0
004a4820  11 00 00 0a                                      beq #0x4a486c
004a4824  04 20 13 e5                                      ldr r2, [r3, #-4]
004a4828  18 00 a0 e3                                      mov r0, #0x18
004a482c  90 32 20 e0                                      mla r0, r0, r2, r3
004a4830  00 00 53 e1                                      cmp r3, r0
004a4834  01 00 00 1a                                      bne #0x4a4840
004a4838  09 00 00 ea                                      b #0x4a4864
004a483c  04 00 a0 e1                                      mov r0, r4
004a4840  18 40 40 e2                                      sub r4, r0, #0x18
004a4844  18 30 10 e5                                      ldr r3, [r0, #-0x18]
004a4848  04 00 a0 e1                                      mov r0, r4
004a484c  0f e0 a0 e1                                      mov lr, pc
004a4850  00 f0 93 e5                                      ldr pc, [r3]
004a4854  07 30 95 e7                                      ldr r3, [r5, r7]
004a4858  00 00 93 e5                                      ldr r0, [r3]
004a485c  04 00 50 e1                                      cmp r0, r4
004a4860  f5 ff ff 1a                                      bne #0x4a483c
004a4864  08 00 40 e2                                      sub r0, r0, #8
004a4868  f4 ae f9 eb                                      bl #0x310440
004a486c  07 30 95 e7                                      ldr r3, [r5, r7]
004a4870  00 20 a0 e3                                      mov r2, #0
004a4874  00 20 83 e5                                      str r2, [r3]
004a4878  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a487c  e0 02 4f 00 98 1c 00 00 60 08 00 00              .byte 0xe0, 0x02, 0x4f, 0x00, 0x98, 0x1c, 0x00, 0x00, 0x60, 0x08, 0x00, 0x00

; FUNCTION 0x004b1460, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::v2Events
; alias: _ZN6Arrays8v2Events9readNamesEP11IStreamBase
; demangled: Arrays::v2Events::readNames(IStreamBase*)
; decoder-mode: arm
004b1460  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b1464  00 70 a0 e1                                      mov r7, r0
004b1468  1c d0 4d e2                                      sub sp, sp, #0x1c
004b146c  a5 cc ff eb                                      bl #0x4a4708
004b1470  07 00 a0 e1                                      mov r0, r7
004b1474  85 89 f9 eb                                      bl #0x313a90
004b1478  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b147c  01 30 a0 e3                                      mov r3, #1
004b1480  00 00 53 e3                                      cmp r3, #0
004b1484  06 60 8f e0                                      add r6, pc, r6
004b1488  14 00 8d e5                                      str r0, [sp, #0x14]
004b148c  0c 30 8d e5                                      str r3, [sp, #0xc]
004b1490  12 00 00 1a                                      bne #0x4b14e0
004b1494  14 30 8d e2                                      add r3, sp, #0x14
004b1498  02 20 83 e2                                      add r2, r3, #2
004b149c  01 30 83 e2                                      add r3, r3, #1
004b14a0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b14a4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b14a8  03 00 52 e1                                      cmp r2, r3
004b14ac  02 40 a0 e1                                      mov r4, r2
004b14b0  01 10 20 e0                                      eor r1, r0, r1
004b14b4  01 10 43 e5                                      strb r1, [r3, #-1]
004b14b8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b14bc  00 10 21 e0                                      eor r1, r1, r0
004b14c0  01 10 c2 e5                                      strb r1, [r2, #1]
004b14c4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b14c8  01 20 42 e2                                      sub r2, r2, #1
004b14cc  00 10 21 e0                                      eor r1, r1, r0
004b14d0  01 10 43 e5                                      strb r1, [r3, #-1]
004b14d4  01 30 83 e2                                      add r3, r3, #1
004b14d8  f0 ff ff 8a                                      bhi #0x4b14a0
004b14dc  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b14e0  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b14e4  03 30 96 e7                                      ldr r3, [r6, r3]
004b14e8  00 30 93 e5                                      ldr r3, [r3]
004b14ec  00 00 53 e1                                      cmp r3, r0
004b14f0  01 00 00 0a                                      beq #0x4b14fc
004b14f4  1c d0 8d e2                                      add sp, sp, #0x1c
004b14f8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b14fc  00 01 a0 e1                                      lsl r0, r0, #2
004b1500  01 10 a0 e3                                      mov r1, #1
004b1504  18 7c f9 eb                                      bl #0x31056c
004b1508  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b150c  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b1510  09 30 96 e7                                      ldr r3, [r6, sb]
004b1514  00 00 52 e3                                      cmp r2, #0
004b1518  00 00 83 e5                                      str r0, [r3]
004b151c  f4 ff ff 0a                                      beq #0x4b14f4
004b1520  10 a0 8d e2                                      add sl, sp, #0x10
004b1524  01 80 a0 e3                                      mov r8, #1
004b1528  08 10 8a e0                                      add r1, sl, r8
004b152c  02 30 8a e2                                      add r3, sl, #2
004b1530  00 40 a0 e3                                      mov r4, #0
004b1534  0a 00 8d e8                                      stm sp, {r1, r3}
004b1538  07 00 a0 e1                                      mov r0, r7
004b153c  0a 10 a0 e1                                      mov r1, sl
004b1540  16 b7 fc eb                                      bl #0x3df1a0
004b1544  00 00 58 e3                                      cmp r8, #0
004b1548  0c 80 8d e5                                      str r8, [sp, #0xc]
004b154c  0f 00 00 1a                                      bne #0x4b1590
004b1550  00 30 9d e5                                      ldr r3, [sp]
004b1554  04 20 9d e5                                      ldr r2, [sp, #4]
004b1558  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b155c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b1560  03 00 52 e1                                      cmp r2, r3
004b1564  01 10 20 e0                                      eor r1, r0, r1
004b1568  01 10 43 e5                                      strb r1, [r3, #-1]
004b156c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1570  00 10 21 e0                                      eor r1, r1, r0
004b1574  01 10 c2 e5                                      strb r1, [r2, #1]
004b1578  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b157c  01 20 42 e2                                      sub r2, r2, #1
004b1580  00 10 21 e0                                      eor r1, r1, r0
004b1584  01 10 43 e5                                      strb r1, [r3, #-1]
004b1588  01 30 83 e2                                      add r3, r3, #1
004b158c  f1 ff ff 8a                                      bhi #0x4b1558
004b1590  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b1594  09 50 96 e7                                      ldr r5, [r6, sb]
004b1598  01 10 a0 e3                                      mov r1, #1
004b159c  01 00 80 e0                                      add r0, r0, r1
004b15a0  00 b0 95 e5                                      ldr fp, [r5]
004b15a4  f0 7b f9 eb                                      bl #0x31056c
004b15a8  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b15ac  00 30 95 e5                                      ldr r3, [r5]
004b15b0  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b15b4  07 00 a0 e1                                      mov r0, r7
004b15b8  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b15bc  00 30 a0 e3                                      mov r3, #0
004b15c0  a3 97 f9 eb                                      bl #0x317454
004b15c4  00 30 95 e5                                      ldr r3, [r5]
004b15c8  00 10 a0 e3                                      mov r1, #0
004b15cc  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b15d0  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b15d4  01 40 84 e2                                      add r4, r4, #1
004b15d8  03 10 c2 e7                                      strb r1, [r2, r3]
004b15dc  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b15e0  04 00 53 e1                                      cmp r3, r4
004b15e4  d3 ff ff 8a                                      bhi #0x4b1538
004b15e8  c1 ff ff ea                                      b #0x4b14f4
; mapping-symbol data/literal pool
004b15ec  0c 36 4e 00 60 08 00 00 d0 37 00 00              .byte 0x0c, 0x36, 0x4e, 0x00, 0x60, 0x08, 0x00, 0x00, 0xd0, 0x37, 0x00, 0x00

; FUNCTION 0x004b8c9c, declared_size=336, range_size=336, mode=arm
; class-group: Arrays::v2Events
; alias: _ZN6Arrays8v2Events4readEP11IStreamBase
; demangled: Arrays::v2Events::read(IStreamBase*)
; decoder-mode: arm
004b8c9c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b8ca0  0c d0 4d e2                                      sub sp, sp, #0xc
004b8ca4  00 a0 a0 e1                                      mov sl, r0
004b8ca8  78 6b f9 eb                                      bl #0x313a90
004b8cac  28 61 9f e5                                      ldr r6, [pc, #0x128]
004b8cb0  01 30 a0 e3                                      mov r3, #1
004b8cb4  00 00 53 e3                                      cmp r3, #0
004b8cb8  04 00 8d e5                                      str r0, [sp, #4]
004b8cbc  00 30 8d e5                                      str r3, [sp]
004b8cc0  06 60 8f e0                                      add r6, pc, r6
004b8cc4  10 00 00 1a                                      bne #0x4b8d0c
004b8cc8  04 30 8d e2                                      add r3, sp, #4
004b8ccc  02 20 83 e2                                      add r2, r3, #2
004b8cd0  01 30 83 e2                                      add r3, r3, #1
004b8cd4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b8cd8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b8cdc  03 00 52 e1                                      cmp r2, r3
004b8ce0  01 10 20 e0                                      eor r1, r0, r1
004b8ce4  01 10 43 e5                                      strb r1, [r3, #-1]
004b8ce8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b8cec  00 10 21 e0                                      eor r1, r1, r0
004b8cf0  01 10 c2 e5                                      strb r1, [r2, #1]
004b8cf4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b8cf8  01 20 42 e2                                      sub r2, r2, #1
004b8cfc  00 10 21 e0                                      eor r1, r1, r0
004b8d00  01 10 43 e5                                      strb r1, [r3, #-1]
004b8d04  01 30 83 e2                                      add r3, r3, #1
004b8d08  f1 ff ff 8a                                      bhi #0x4b8cd4
004b8d0c  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004b8d10  a3 ae ff eb                                      bl #0x4a47a4
004b8d14  04 40 9d e5                                      ldr r4, [sp, #4]
004b8d18  07 30 96 e7                                      ldr r3, [r6, r7]
004b8d1c  01 10 a0 e3                                      mov r1, #1
004b8d20  84 00 84 e0                                      add r0, r4, r4, lsl #1
004b8d24  01 00 80 e0                                      add r0, r0, r1
004b8d28  00 40 83 e5                                      str r4, [r3]
004b8d2c  80 01 a0 e1                                      lsl r0, r0, #3
004b8d30  0d 5e f9 eb                                      bl #0x31056c
004b8d34  18 30 a0 e3                                      mov r3, #0x18
004b8d38  00 00 54 e3                                      cmp r4, #0
004b8d3c  18 00 80 e8                                      stm r0, {r3, r4}
004b8d40  08 30 80 e2                                      add r3, r0, #8
004b8d44  0b 00 00 0a                                      beq #0x4b8d78
004b8d48  94 10 9f e5                                      ldr r1, [pc, #0x94]
004b8d4c  00 20 a0 e3                                      mov r2, #0
004b8d50  01 c0 96 e7                                      ldr ip, [r6, r1]
004b8d54  02 10 a0 e1                                      mov r1, r2
004b8d58  08 c0 8c e2                                      add ip, ip, #8
004b8d5c  01 20 82 e2                                      add r2, r2, #1
004b8d60  04 00 52 e1                                      cmp r2, r4
004b8d64  08 c0 80 e5                                      str ip, [r0, #8]
004b8d68  14 10 80 e5                                      str r1, [r0, #0x14]
004b8d6c  1c 10 80 e5                                      str r1, [r0, #0x1c]
004b8d70  18 00 80 e2                                      add r0, r0, #0x18
004b8d74  f8 ff ff 1a                                      bne #0x4b8d5c
004b8d78  07 20 96 e7                                      ldr r2, [r6, r7]
004b8d7c  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b8d80  00 10 92 e5                                      ldr r1, [r2]
004b8d84  08 20 96 e7                                      ldr r2, [r6, r8]
004b8d88  00 00 51 e3                                      cmp r1, #0
004b8d8c  00 30 82 e5                                      str r3, [r2]
004b8d90  0f 00 00 0a                                      beq #0x4b8dd4
004b8d94  00 40 a0 e3                                      mov r4, #0
004b8d98  04 50 a0 e1                                      mov r5, r4
004b8d9c  01 00 00 ea                                      b #0x4b8da8
004b8da0  08 30 96 e7                                      ldr r3, [r6, r8]
004b8da4  00 30 93 e5                                      ldr r3, [r3]
004b8da8  04 00 83 e0                                      add r0, r3, r4
004b8dac  0a 10 a0 e1                                      mov r1, sl
004b8db0  04 30 93 e7                                      ldr r3, [r3, r4]
004b8db4  0f e0 a0 e1                                      mov lr, pc
004b8db8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b8dbc  07 30 96 e7                                      ldr r3, [r6, r7]
004b8dc0  01 50 85 e2                                      add r5, r5, #1
004b8dc4  18 40 84 e2                                      add r4, r4, #0x18
004b8dc8  00 30 93 e5                                      ldr r3, [r3]
004b8dcc  05 00 53 e1                                      cmp r3, r5
004b8dd0  f2 ff ff 8a                                      bhi #0x4b8da0
004b8dd4  0c d0 8d e2                                      add sp, sp, #0xc
004b8dd8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b8ddc  d0 bd 4d 00 60 08 00 00 88 34 00 00 98 1c 00 00  .byte 0xd0, 0xbd, 0x4d, 0x00, 0x60, 0x08, 0x00, 0x00, 0x88, 0x34, 0x00, 0x00, 0x98, 0x1c, 0x00, 0x00
