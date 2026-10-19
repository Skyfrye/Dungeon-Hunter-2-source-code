; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a4408, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::WorldMap
; alias: _ZN6Arrays8WorldMap13finalizeNamesEv
; demangled: Arrays::WorldMap::finalizeNames()
; decoder-mode: arm
004a4408  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a440c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a4410  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a4414  05 50 8f e0                                      add r5, pc, r5
004a4418  06 30 95 e7                                      ldr r3, [r5, r6]
004a441c  00 30 93 e5                                      ldr r3, [r3]
004a4420  00 00 53 e3                                      cmp r3, #0
004a4424  1a 00 00 0a                                      beq #0x4a4494
004a4428  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a442c  07 20 95 e7                                      ldr r2, [r5, r7]
004a4430  00 20 92 e5                                      ldr r2, [r2]
004a4434  00 00 52 e3                                      cmp r2, #0
004a4438  10 00 00 0a                                      beq #0x4a4480
004a443c  00 40 a0 e3                                      mov r4, #0
004a4440  01 00 00 ea                                      b #0x4a444c
004a4444  06 30 95 e7                                      ldr r3, [r5, r6]
004a4448  00 30 93 e5                                      ldr r3, [r3]
004a444c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a4450  01 40 84 e2                                      add r4, r4, #1
004a4454  00 00 50 e3                                      cmp r0, #0
004a4458  02 00 00 0a                                      beq #0x4a4468
004a445c  f7 af f9 eb                                      bl #0x310440
004a4460  06 30 95 e7                                      ldr r3, [r5, r6]
004a4464  00 30 93 e5                                      ldr r3, [r3]
004a4468  07 20 95 e7                                      ldr r2, [r5, r7]
004a446c  00 20 92 e5                                      ldr r2, [r2]
004a4470  04 00 52 e1                                      cmp r2, r4
004a4474  f2 ff ff 8a                                      bhi #0x4a4444
004a4478  00 00 53 e3                                      cmp r3, #0
004a447c  01 00 00 0a                                      beq #0x4a4488
004a4480  03 00 a0 e1                                      mov r0, r3
004a4484  ed af f9 eb                                      bl #0x310440
004a4488  06 30 95 e7                                      ldr r3, [r5, r6]
004a448c  00 20 a0 e3                                      mov r2, #0
004a4490  00 20 83 e5                                      str r2, [r3]
004a4494  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a4498  7c 06 4f 00 68 23 00 00 74 22 00 00              .byte 0x7c, 0x06, 0x4f, 0x00, 0x68, 0x23, 0x00, 0x00, 0x74, 0x22, 0x00, 0x00

; FUNCTION 0x004a44a4, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::WorldMap
; alias: _ZN6Arrays8WorldMap8finalizeEv
; demangled: Arrays::WorldMap::finalize()
; decoder-mode: arm
004a44a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a44a8  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a44ac  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a44b0  05 50 8f e0                                      add r5, pc, r5
004a44b4  07 30 95 e7                                      ldr r3, [r5, r7]
004a44b8  00 30 93 e5                                      ldr r3, [r3]
004a44bc  00 00 53 e3                                      cmp r3, #0
004a44c0  2c 00 00 0a                                      beq #0x4a4578
004a44c4  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a44c8  08 20 95 e7                                      ldr r2, [r5, r8]
004a44cc  00 20 92 e5                                      ldr r2, [r2]
004a44d0  00 00 52 e3                                      cmp r2, #0
004a44d4  12 00 00 0a                                      beq #0x4a4524
004a44d8  00 40 a0 e3                                      mov r4, #0
004a44dc  04 60 a0 e1                                      mov r6, r4
004a44e0  01 00 00 ea                                      b #0x4a44ec
004a44e4  07 30 95 e7                                      ldr r3, [r5, r7]
004a44e8  00 30 93 e5                                      ldr r3, [r3]
004a44ec  04 00 83 e0                                      add r0, r3, r4
004a44f0  04 30 93 e7                                      ldr r3, [r3, r4]
004a44f4  0f e0 a0 e1                                      mov lr, pc
004a44f8  08 f0 93 e5                                      ldr pc, [r3, #8]
004a44fc  08 30 95 e7                                      ldr r3, [r5, r8]
004a4500  01 60 86 e2                                      add r6, r6, #1
004a4504  14 40 84 e2                                      add r4, r4, #0x14
004a4508  00 30 93 e5                                      ldr r3, [r3]
004a450c  06 00 53 e1                                      cmp r3, r6
004a4510  f3 ff ff 8a                                      bhi #0x4a44e4
004a4514  07 30 95 e7                                      ldr r3, [r5, r7]
004a4518  00 30 93 e5                                      ldr r3, [r3]
004a451c  00 00 53 e3                                      cmp r3, #0
004a4520  11 00 00 0a                                      beq #0x4a456c
004a4524  04 20 13 e5                                      ldr r2, [r3, #-4]
004a4528  14 00 a0 e3                                      mov r0, #0x14
004a452c  90 32 20 e0                                      mla r0, r0, r2, r3
004a4530  00 00 53 e1                                      cmp r3, r0
004a4534  01 00 00 1a                                      bne #0x4a4540
004a4538  09 00 00 ea                                      b #0x4a4564
004a453c  04 00 a0 e1                                      mov r0, r4
004a4540  14 40 40 e2                                      sub r4, r0, #0x14
004a4544  14 30 10 e5                                      ldr r3, [r0, #-0x14]
004a4548  04 00 a0 e1                                      mov r0, r4
004a454c  0f e0 a0 e1                                      mov lr, pc
004a4550  00 f0 93 e5                                      ldr pc, [r3]
004a4554  07 30 95 e7                                      ldr r3, [r5, r7]
004a4558  00 00 93 e5                                      ldr r0, [r3]
004a455c  04 00 50 e1                                      cmp r0, r4
004a4560  f5 ff ff 1a                                      bne #0x4a453c
004a4564  08 00 40 e2                                      sub r0, r0, #8
004a4568  b4 af f9 eb                                      bl #0x310440
004a456c  07 30 95 e7                                      ldr r3, [r5, r7]
004a4570  00 20 a0 e3                                      mov r2, #0
004a4574  00 20 83 e5                                      str r2, [r3]
004a4578  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a457c  e0 05 4f 00 d0 3d 00 00 74 22 00 00              .byte 0xe0, 0x05, 0x4f, 0x00, 0xd0, 0x3d, 0x00, 0x00, 0x74, 0x22, 0x00, 0x00

; FUNCTION 0x004b1790, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::WorldMap
; alias: _ZN6Arrays8WorldMap9readNamesEP11IStreamBase
; demangled: Arrays::WorldMap::readNames(IStreamBase*)
; decoder-mode: arm
004b1790  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b1794  00 70 a0 e1                                      mov r7, r0
004b1798  1c d0 4d e2                                      sub sp, sp, #0x1c
004b179c  19 cb ff eb                                      bl #0x4a4408
004b17a0  07 00 a0 e1                                      mov r0, r7
004b17a4  b9 88 f9 eb                                      bl #0x313a90
004b17a8  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b17ac  01 30 a0 e3                                      mov r3, #1
004b17b0  00 00 53 e3                                      cmp r3, #0
004b17b4  06 60 8f e0                                      add r6, pc, r6
004b17b8  14 00 8d e5                                      str r0, [sp, #0x14]
004b17bc  0c 30 8d e5                                      str r3, [sp, #0xc]
004b17c0  12 00 00 1a                                      bne #0x4b1810
004b17c4  14 30 8d e2                                      add r3, sp, #0x14
004b17c8  02 20 83 e2                                      add r2, r3, #2
004b17cc  01 30 83 e2                                      add r3, r3, #1
004b17d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b17d4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b17d8  03 00 52 e1                                      cmp r2, r3
004b17dc  02 40 a0 e1                                      mov r4, r2
004b17e0  01 10 20 e0                                      eor r1, r0, r1
004b17e4  01 10 43 e5                                      strb r1, [r3, #-1]
004b17e8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b17ec  00 10 21 e0                                      eor r1, r1, r0
004b17f0  01 10 c2 e5                                      strb r1, [r2, #1]
004b17f4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b17f8  01 20 42 e2                                      sub r2, r2, #1
004b17fc  00 10 21 e0                                      eor r1, r1, r0
004b1800  01 10 43 e5                                      strb r1, [r3, #-1]
004b1804  01 30 83 e2                                      add r3, r3, #1
004b1808  f0 ff ff 8a                                      bhi #0x4b17d0
004b180c  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b1810  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b1814  03 30 96 e7                                      ldr r3, [r6, r3]
004b1818  00 30 93 e5                                      ldr r3, [r3]
004b181c  00 00 53 e1                                      cmp r3, r0
004b1820  01 00 00 0a                                      beq #0x4b182c
004b1824  1c d0 8d e2                                      add sp, sp, #0x1c
004b1828  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b182c  00 01 a0 e1                                      lsl r0, r0, #2
004b1830  01 10 a0 e3                                      mov r1, #1
004b1834  4c 7b f9 eb                                      bl #0x31056c
004b1838  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b183c  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b1840  09 30 96 e7                                      ldr r3, [r6, sb]
004b1844  00 00 52 e3                                      cmp r2, #0
004b1848  00 00 83 e5                                      str r0, [r3]
004b184c  f4 ff ff 0a                                      beq #0x4b1824
004b1850  10 a0 8d e2                                      add sl, sp, #0x10
004b1854  01 80 a0 e3                                      mov r8, #1
004b1858  08 10 8a e0                                      add r1, sl, r8
004b185c  02 30 8a e2                                      add r3, sl, #2
004b1860  00 40 a0 e3                                      mov r4, #0
004b1864  0a 00 8d e8                                      stm sp, {r1, r3}
004b1868  07 00 a0 e1                                      mov r0, r7
004b186c  0a 10 a0 e1                                      mov r1, sl
004b1870  4a b6 fc eb                                      bl #0x3df1a0
004b1874  00 00 58 e3                                      cmp r8, #0
004b1878  0c 80 8d e5                                      str r8, [sp, #0xc]
004b187c  0f 00 00 1a                                      bne #0x4b18c0
004b1880  00 30 9d e5                                      ldr r3, [sp]
004b1884  04 20 9d e5                                      ldr r2, [sp, #4]
004b1888  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b188c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b1890  03 00 52 e1                                      cmp r2, r3
004b1894  01 10 20 e0                                      eor r1, r0, r1
004b1898  01 10 43 e5                                      strb r1, [r3, #-1]
004b189c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b18a0  00 10 21 e0                                      eor r1, r1, r0
004b18a4  01 10 c2 e5                                      strb r1, [r2, #1]
004b18a8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b18ac  01 20 42 e2                                      sub r2, r2, #1
004b18b0  00 10 21 e0                                      eor r1, r1, r0
004b18b4  01 10 43 e5                                      strb r1, [r3, #-1]
004b18b8  01 30 83 e2                                      add r3, r3, #1
004b18bc  f1 ff ff 8a                                      bhi #0x4b1888
004b18c0  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b18c4  09 50 96 e7                                      ldr r5, [r6, sb]
004b18c8  01 10 a0 e3                                      mov r1, #1
004b18cc  01 00 80 e0                                      add r0, r0, r1
004b18d0  00 b0 95 e5                                      ldr fp, [r5]
004b18d4  24 7b f9 eb                                      bl #0x31056c
004b18d8  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b18dc  00 30 95 e5                                      ldr r3, [r5]
004b18e0  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b18e4  07 00 a0 e1                                      mov r0, r7
004b18e8  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b18ec  00 30 a0 e3                                      mov r3, #0
004b18f0  d7 96 f9 eb                                      bl #0x317454
004b18f4  00 30 95 e5                                      ldr r3, [r5]
004b18f8  00 10 a0 e3                                      mov r1, #0
004b18fc  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b1900  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b1904  01 40 84 e2                                      add r4, r4, #1
004b1908  03 10 c2 e7                                      strb r1, [r2, r3]
004b190c  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b1910  04 00 53 e1                                      cmp r3, r4
004b1914  d3 ff ff 8a                                      bhi #0x4b1868
004b1918  c1 ff ff ea                                      b #0x4b1824
; mapping-symbol data/literal pool
004b191c  dc 32 4e 00 74 22 00 00 68 23 00 00              .byte 0xdc, 0x32, 0x4e, 0x00, 0x74, 0x22, 0x00, 0x00, 0x68, 0x23, 0x00, 0x00

; FUNCTION 0x004b8980, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::WorldMap
; alias: _ZN6Arrays8WorldMap4readEP11IStreamBase
; demangled: Arrays::WorldMap::read(IStreamBase*)
; decoder-mode: arm
004b8980  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b8984  0c d0 4d e2                                      sub sp, sp, #0xc
004b8988  00 a0 a0 e1                                      mov sl, r0
004b898c  3f 6c f9 eb                                      bl #0x313a90
004b8990  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b8994  01 30 a0 e3                                      mov r3, #1
004b8998  00 00 53 e3                                      cmp r3, #0
004b899c  04 00 8d e5                                      str r0, [sp, #4]
004b89a0  00 30 8d e5                                      str r3, [sp]
004b89a4  06 60 8f e0                                      add r6, pc, r6
004b89a8  10 00 00 1a                                      bne #0x4b89f0
004b89ac  04 30 8d e2                                      add r3, sp, #4
004b89b0  02 20 83 e2                                      add r2, r3, #2
004b89b4  01 30 83 e2                                      add r3, r3, #1
004b89b8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b89bc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b89c0  03 00 52 e1                                      cmp r2, r3
004b89c4  01 10 20 e0                                      eor r1, r0, r1
004b89c8  01 10 43 e5                                      strb r1, [r3, #-1]
004b89cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b89d0  00 10 21 e0                                      eor r1, r1, r0
004b89d4  01 10 c2 e5                                      strb r1, [r2, #1]
004b89d8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b89dc  01 20 42 e2                                      sub r2, r2, #1
004b89e0  00 10 21 e0                                      eor r1, r1, r0
004b89e4  01 10 43 e5                                      strb r1, [r3, #-1]
004b89e8  01 30 83 e2                                      add r3, r3, #1
004b89ec  f1 ff ff 8a                                      bhi #0x4b89b8
004b89f0  ab ae ff eb                                      bl #0x4a44a4
004b89f4  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b89f8  04 40 9d e5                                      ldr r4, [sp, #4]
004b89fc  14 50 a0 e3                                      mov r5, #0x14
004b8a00  07 30 96 e7                                      ldr r3, [r6, r7]
004b8a04  95 04 00 e0                                      mul r0, r5, r4
004b8a08  00 40 83 e5                                      str r4, [r3]
004b8a0c  08 00 80 e2                                      add r0, r0, #8
004b8a10  01 10 a0 e3                                      mov r1, #1
004b8a14  d4 5e f9 eb                                      bl #0x31056c
004b8a18  00 00 54 e3                                      cmp r4, #0
004b8a1c  00 50 80 e5                                      str r5, [r0]
004b8a20  04 40 80 e5                                      str r4, [r0, #4]
004b8a24  08 30 80 e2                                      add r3, r0, #8
004b8a28  0a 00 00 0a                                      beq #0x4b8a58
004b8a2c  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b8a30  00 20 a0 e3                                      mov r2, #0
004b8a34  02 c0 a0 e1                                      mov ip, r2
004b8a38  01 10 96 e7                                      ldr r1, [r6, r1]
004b8a3c  08 10 81 e2                                      add r1, r1, #8
004b8a40  01 20 82 e2                                      add r2, r2, #1
004b8a44  04 00 52 e1                                      cmp r2, r4
004b8a48  08 10 80 e5                                      str r1, [r0, #8]
004b8a4c  18 c0 80 e5                                      str ip, [r0, #0x18]
004b8a50  14 00 80 e2                                      add r0, r0, #0x14
004b8a54  f9 ff ff 1a                                      bne #0x4b8a40
004b8a58  07 20 96 e7                                      ldr r2, [r6, r7]
004b8a5c  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b8a60  00 10 92 e5                                      ldr r1, [r2]
004b8a64  08 20 96 e7                                      ldr r2, [r6, r8]
004b8a68  00 00 51 e3                                      cmp r1, #0
004b8a6c  00 30 82 e5                                      str r3, [r2]
004b8a70  0f 00 00 0a                                      beq #0x4b8ab4
004b8a74  00 40 a0 e3                                      mov r4, #0
004b8a78  04 50 a0 e1                                      mov r5, r4
004b8a7c  01 00 00 ea                                      b #0x4b8a88
004b8a80  08 30 96 e7                                      ldr r3, [r6, r8]
004b8a84  00 30 93 e5                                      ldr r3, [r3]
004b8a88  04 00 83 e0                                      add r0, r3, r4
004b8a8c  0a 10 a0 e1                                      mov r1, sl
004b8a90  04 30 93 e7                                      ldr r3, [r3, r4]
004b8a94  0f e0 a0 e1                                      mov lr, pc
004b8a98  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b8a9c  07 30 96 e7                                      ldr r3, [r6, r7]
004b8aa0  01 50 85 e2                                      add r5, r5, #1
004b8aa4  14 40 84 e2                                      add r4, r4, #0x14
004b8aa8  00 30 93 e5                                      ldr r3, [r3]
004b8aac  05 00 53 e1                                      cmp r3, r5
004b8ab0  f2 ff ff 8a                                      bhi #0x4b8a80
004b8ab4  0c d0 8d e2                                      add sp, sp, #0xc
004b8ab8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b8abc  ec c0 4d 00 74 22 00 00 a8 43 00 00 d0 3d 00 00  .byte 0xec, 0xc0, 0x4d, 0x00, 0x74, 0x22, 0x00, 0x00, 0xa8, 0x43, 0x00, 0x00, 0xd0, 0x3d, 0x00, 0x00
