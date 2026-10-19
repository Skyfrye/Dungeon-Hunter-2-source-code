; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a5d64, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::ItemTypeList
; alias: _ZN6Arrays12ItemTypeList13finalizeNamesEv
; demangled: Arrays::ItemTypeList::finalizeNames()
; decoder-mode: arm
004a5d64  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a5d68  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a5d6c  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a5d70  05 50 8f e0                                      add r5, pc, r5
004a5d74  06 30 95 e7                                      ldr r3, [r5, r6]
004a5d78  00 30 93 e5                                      ldr r3, [r3]
004a5d7c  00 00 53 e3                                      cmp r3, #0
004a5d80  1a 00 00 0a                                      beq #0x4a5df0
004a5d84  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a5d88  07 20 95 e7                                      ldr r2, [r5, r7]
004a5d8c  00 20 92 e5                                      ldr r2, [r2]
004a5d90  00 00 52 e3                                      cmp r2, #0
004a5d94  10 00 00 0a                                      beq #0x4a5ddc
004a5d98  00 40 a0 e3                                      mov r4, #0
004a5d9c  01 00 00 ea                                      b #0x4a5da8
004a5da0  06 30 95 e7                                      ldr r3, [r5, r6]
004a5da4  00 30 93 e5                                      ldr r3, [r3]
004a5da8  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a5dac  01 40 84 e2                                      add r4, r4, #1
004a5db0  00 00 50 e3                                      cmp r0, #0
004a5db4  02 00 00 0a                                      beq #0x4a5dc4
004a5db8  a0 a9 f9 eb                                      bl #0x310440
004a5dbc  06 30 95 e7                                      ldr r3, [r5, r6]
004a5dc0  00 30 93 e5                                      ldr r3, [r3]
004a5dc4  07 20 95 e7                                      ldr r2, [r5, r7]
004a5dc8  00 20 92 e5                                      ldr r2, [r2]
004a5dcc  04 00 52 e1                                      cmp r2, r4
004a5dd0  f2 ff ff 8a                                      bhi #0x4a5da0
004a5dd4  00 00 53 e3                                      cmp r3, #0
004a5dd8  01 00 00 0a                                      beq #0x4a5de4
004a5ddc  03 00 a0 e1                                      mov r0, r3
004a5de0  96 a9 f9 eb                                      bl #0x310440
004a5de4  06 30 95 e7                                      ldr r3, [r5, r6]
004a5de8  00 20 a0 e3                                      mov r2, #0
004a5dec  00 20 83 e5                                      str r2, [r3]
004a5df0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a5df4  20 ed 4e 00 18 43 00 00 20 25 00 00              .byte 0x20, 0xed, 0x4e, 0x00, 0x18, 0x43, 0x00, 0x00, 0x20, 0x25, 0x00, 0x00

; FUNCTION 0x004a5e00, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::ItemTypeList
; alias: _ZN6Arrays12ItemTypeList8finalizeEv
; demangled: Arrays::ItemTypeList::finalize()
; decoder-mode: arm
004a5e00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a5e04  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a5e08  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a5e0c  05 50 8f e0                                      add r5, pc, r5
004a5e10  07 30 95 e7                                      ldr r3, [r5, r7]
004a5e14  00 30 93 e5                                      ldr r3, [r3]
004a5e18  00 00 53 e3                                      cmp r3, #0
004a5e1c  2c 00 00 0a                                      beq #0x4a5ed4
004a5e20  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a5e24  08 20 95 e7                                      ldr r2, [r5, r8]
004a5e28  00 20 92 e5                                      ldr r2, [r2]
004a5e2c  00 00 52 e3                                      cmp r2, #0
004a5e30  12 00 00 0a                                      beq #0x4a5e80
004a5e34  00 40 a0 e3                                      mov r4, #0
004a5e38  04 60 a0 e1                                      mov r6, r4
004a5e3c  01 00 00 ea                                      b #0x4a5e48
004a5e40  07 30 95 e7                                      ldr r3, [r5, r7]
004a5e44  00 30 93 e5                                      ldr r3, [r3]
004a5e48  04 00 83 e0                                      add r0, r3, r4
004a5e4c  04 30 93 e7                                      ldr r3, [r3, r4]
004a5e50  0f e0 a0 e1                                      mov lr, pc
004a5e54  08 f0 93 e5                                      ldr pc, [r3, #8]
004a5e58  08 30 95 e7                                      ldr r3, [r5, r8]
004a5e5c  01 60 86 e2                                      add r6, r6, #1
004a5e60  0c 40 84 e2                                      add r4, r4, #0xc
004a5e64  00 30 93 e5                                      ldr r3, [r3]
004a5e68  06 00 53 e1                                      cmp r3, r6
004a5e6c  f3 ff ff 8a                                      bhi #0x4a5e40
004a5e70  07 30 95 e7                                      ldr r3, [r5, r7]
004a5e74  00 30 93 e5                                      ldr r3, [r3]
004a5e78  00 00 53 e3                                      cmp r3, #0
004a5e7c  11 00 00 0a                                      beq #0x4a5ec8
004a5e80  04 20 13 e5                                      ldr r2, [r3, #-4]
004a5e84  0c 00 a0 e3                                      mov r0, #0xc
004a5e88  90 32 20 e0                                      mla r0, r0, r2, r3
004a5e8c  00 00 53 e1                                      cmp r3, r0
004a5e90  01 00 00 1a                                      bne #0x4a5e9c
004a5e94  09 00 00 ea                                      b #0x4a5ec0
004a5e98  04 00 a0 e1                                      mov r0, r4
004a5e9c  0c 40 40 e2                                      sub r4, r0, #0xc
004a5ea0  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a5ea4  04 00 a0 e1                                      mov r0, r4
004a5ea8  0f e0 a0 e1                                      mov lr, pc
004a5eac  00 f0 93 e5                                      ldr pc, [r3]
004a5eb0  07 30 95 e7                                      ldr r3, [r5, r7]
004a5eb4  00 00 93 e5                                      ldr r0, [r3]
004a5eb8  04 00 50 e1                                      cmp r0, r4
004a5ebc  f5 ff ff 1a                                      bne #0x4a5e98
004a5ec0  08 00 40 e2                                      sub r0, r0, #8
004a5ec4  5d a9 f9 eb                                      bl #0x310440
004a5ec8  07 30 95 e7                                      ldr r3, [r5, r7]
004a5ecc  00 20 a0 e3                                      mov r2, #0
004a5ed0  00 20 83 e5                                      str r2, [r3]
004a5ed4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a5ed8  84 ec 4e 00 14 37 00 00 20 25 00 00              .byte 0x84, 0xec, 0x4e, 0x00, 0x14, 0x37, 0x00, 0x00, 0x20, 0x25, 0x00, 0x00

; FUNCTION 0x004aff90, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::ItemTypeList
; alias: _ZN6Arrays12ItemTypeList9readNamesEP11IStreamBase
; demangled: Arrays::ItemTypeList::readNames(IStreamBase*)
; decoder-mode: arm
004aff90  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004aff94  00 70 a0 e1                                      mov r7, r0
004aff98  1c d0 4d e2                                      sub sp, sp, #0x1c
004aff9c  70 d7 ff eb                                      bl #0x4a5d64
004affa0  07 00 a0 e1                                      mov r0, r7
004affa4  b9 8e f9 eb                                      bl #0x313a90
004affa8  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004affac  01 30 a0 e3                                      mov r3, #1
004affb0  00 00 53 e3                                      cmp r3, #0
004affb4  06 60 8f e0                                      add r6, pc, r6
004affb8  14 00 8d e5                                      str r0, [sp, #0x14]
004affbc  0c 30 8d e5                                      str r3, [sp, #0xc]
004affc0  12 00 00 1a                                      bne #0x4b0010
004affc4  14 30 8d e2                                      add r3, sp, #0x14
004affc8  02 20 83 e2                                      add r2, r3, #2
004affcc  01 30 83 e2                                      add r3, r3, #1
004affd0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004affd4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004affd8  03 00 52 e1                                      cmp r2, r3
004affdc  02 40 a0 e1                                      mov r4, r2
004affe0  01 10 20 e0                                      eor r1, r0, r1
004affe4  01 10 43 e5                                      strb r1, [r3, #-1]
004affe8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004affec  00 10 21 e0                                      eor r1, r1, r0
004afff0  01 10 c2 e5                                      strb r1, [r2, #1]
004afff4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004afff8  01 20 42 e2                                      sub r2, r2, #1
004afffc  00 10 21 e0                                      eor r1, r1, r0
004b0000  01 10 43 e5                                      strb r1, [r3, #-1]
004b0004  01 30 83 e2                                      add r3, r3, #1
004b0008  f0 ff ff 8a                                      bhi #0x4affd0
004b000c  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b0010  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b0014  03 30 96 e7                                      ldr r3, [r6, r3]
004b0018  00 30 93 e5                                      ldr r3, [r3]
004b001c  00 00 53 e1                                      cmp r3, r0
004b0020  01 00 00 0a                                      beq #0x4b002c
004b0024  1c d0 8d e2                                      add sp, sp, #0x1c
004b0028  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b002c  00 01 a0 e1                                      lsl r0, r0, #2
004b0030  01 10 a0 e3                                      mov r1, #1
004b0034  4c 81 f9 eb                                      bl #0x31056c
004b0038  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b003c  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b0040  09 30 96 e7                                      ldr r3, [r6, sb]
004b0044  00 00 52 e3                                      cmp r2, #0
004b0048  00 00 83 e5                                      str r0, [r3]
004b004c  f4 ff ff 0a                                      beq #0x4b0024
004b0050  10 a0 8d e2                                      add sl, sp, #0x10
004b0054  01 80 a0 e3                                      mov r8, #1
004b0058  08 10 8a e0                                      add r1, sl, r8
004b005c  02 30 8a e2                                      add r3, sl, #2
004b0060  00 40 a0 e3                                      mov r4, #0
004b0064  0a 00 8d e8                                      stm sp, {r1, r3}
004b0068  07 00 a0 e1                                      mov r0, r7
004b006c  0a 10 a0 e1                                      mov r1, sl
004b0070  4a bc fc eb                                      bl #0x3df1a0
004b0074  00 00 58 e3                                      cmp r8, #0
004b0078  0c 80 8d e5                                      str r8, [sp, #0xc]
004b007c  0f 00 00 1a                                      bne #0x4b00c0
004b0080  00 30 9d e5                                      ldr r3, [sp]
004b0084  04 20 9d e5                                      ldr r2, [sp, #4]
004b0088  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b008c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b0090  03 00 52 e1                                      cmp r2, r3
004b0094  01 10 20 e0                                      eor r1, r0, r1
004b0098  01 10 43 e5                                      strb r1, [r3, #-1]
004b009c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b00a0  00 10 21 e0                                      eor r1, r1, r0
004b00a4  01 10 c2 e5                                      strb r1, [r2, #1]
004b00a8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b00ac  01 20 42 e2                                      sub r2, r2, #1
004b00b0  00 10 21 e0                                      eor r1, r1, r0
004b00b4  01 10 43 e5                                      strb r1, [r3, #-1]
004b00b8  01 30 83 e2                                      add r3, r3, #1
004b00bc  f1 ff ff 8a                                      bhi #0x4b0088
004b00c0  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b00c4  09 50 96 e7                                      ldr r5, [r6, sb]
004b00c8  01 10 a0 e3                                      mov r1, #1
004b00cc  01 00 80 e0                                      add r0, r0, r1
004b00d0  00 b0 95 e5                                      ldr fp, [r5]
004b00d4  24 81 f9 eb                                      bl #0x31056c
004b00d8  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b00dc  00 30 95 e5                                      ldr r3, [r5]
004b00e0  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b00e4  07 00 a0 e1                                      mov r0, r7
004b00e8  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b00ec  00 30 a0 e3                                      mov r3, #0
004b00f0  d7 9c f9 eb                                      bl #0x317454
004b00f4  00 30 95 e5                                      ldr r3, [r5]
004b00f8  00 10 a0 e3                                      mov r1, #0
004b00fc  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b0100  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b0104  01 40 84 e2                                      add r4, r4, #1
004b0108  03 10 c2 e7                                      strb r1, [r2, r3]
004b010c  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b0110  04 00 53 e1                                      cmp r3, r4
004b0114  d3 ff ff 8a                                      bhi #0x4b0068
004b0118  c1 ff ff ea                                      b #0x4b0024
; mapping-symbol data/literal pool
004b011c  dc 4a 4e 00 20 25 00 00 18 43 00 00              .byte 0xdc, 0x4a, 0x4e, 0x00, 0x20, 0x25, 0x00, 0x00, 0x18, 0x43, 0x00, 0x00

; FUNCTION 0x004b0128, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::ItemTypeList
; alias: _ZN6Arrays12ItemTypeList9skipNamesEP11IStreamBase
; demangled: Arrays::ItemTypeList::skipNames(IStreamBase*)
; decoder-mode: arm
004b0128  98 ff ff ea                                      b #0x4aff90

; FUNCTION 0x004b9fe0, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::ItemTypeList
; alias: _ZN6Arrays12ItemTypeList4readEP11IStreamBase
; demangled: Arrays::ItemTypeList::read(IStreamBase*)
; decoder-mode: arm
004b9fe0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b9fe4  0c d0 4d e2                                      sub sp, sp, #0xc
004b9fe8  00 a0 a0 e1                                      mov sl, r0
004b9fec  a7 66 f9 eb                                      bl #0x313a90
004b9ff0  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b9ff4  01 30 a0 e3                                      mov r3, #1
004b9ff8  00 00 53 e3                                      cmp r3, #0
004b9ffc  04 00 8d e5                                      str r0, [sp, #4]
004ba000  00 30 8d e5                                      str r3, [sp]
004ba004  06 60 8f e0                                      add r6, pc, r6
004ba008  10 00 00 1a                                      bne #0x4ba050
004ba00c  04 30 8d e2                                      add r3, sp, #4
004ba010  02 20 83 e2                                      add r2, r3, #2
004ba014  01 30 83 e2                                      add r3, r3, #1
004ba018  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ba01c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ba020  03 00 52 e1                                      cmp r2, r3
004ba024  01 10 20 e0                                      eor r1, r0, r1
004ba028  01 10 43 e5                                      strb r1, [r3, #-1]
004ba02c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ba030  00 10 21 e0                                      eor r1, r1, r0
004ba034  01 10 c2 e5                                      strb r1, [r2, #1]
004ba038  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ba03c  01 20 42 e2                                      sub r2, r2, #1
004ba040  00 10 21 e0                                      eor r1, r1, r0
004ba044  01 10 43 e5                                      strb r1, [r3, #-1]
004ba048  01 30 83 e2                                      add r3, r3, #1
004ba04c  f1 ff ff 8a                                      bhi #0x4ba018
004ba050  6a af ff eb                                      bl #0x4a5e00
004ba054  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004ba058  04 40 9d e5                                      ldr r4, [sp, #4]
004ba05c  0c 50 a0 e3                                      mov r5, #0xc
004ba060  07 30 96 e7                                      ldr r3, [r6, r7]
004ba064  95 04 00 e0                                      mul r0, r5, r4
004ba068  00 40 83 e5                                      str r4, [r3]
004ba06c  08 00 80 e2                                      add r0, r0, #8
004ba070  01 10 a0 e3                                      mov r1, #1
004ba074  3c 59 f9 eb                                      bl #0x31056c
004ba078  00 00 54 e3                                      cmp r4, #0
004ba07c  00 50 80 e5                                      str r5, [r0]
004ba080  04 40 80 e5                                      str r4, [r0, #4]
004ba084  08 30 80 e2                                      add r3, r0, #8
004ba088  0a 00 00 0a                                      beq #0x4ba0b8
004ba08c  90 10 9f e5                                      ldr r1, [pc, #0x90]
004ba090  00 20 a0 e3                                      mov r2, #0
004ba094  02 c0 a0 e1                                      mov ip, r2
004ba098  01 10 96 e7                                      ldr r1, [r6, r1]
004ba09c  08 10 81 e2                                      add r1, r1, #8
004ba0a0  01 20 82 e2                                      add r2, r2, #1
004ba0a4  04 00 52 e1                                      cmp r2, r4
004ba0a8  08 10 80 e5                                      str r1, [r0, #8]
004ba0ac  10 c0 80 e5                                      str ip, [r0, #0x10]
004ba0b0  0c 00 80 e2                                      add r0, r0, #0xc
004ba0b4  f9 ff ff 1a                                      bne #0x4ba0a0
004ba0b8  07 20 96 e7                                      ldr r2, [r6, r7]
004ba0bc  64 80 9f e5                                      ldr r8, [pc, #0x64]
004ba0c0  00 10 92 e5                                      ldr r1, [r2]
004ba0c4  08 20 96 e7                                      ldr r2, [r6, r8]
004ba0c8  00 00 51 e3                                      cmp r1, #0
004ba0cc  00 30 82 e5                                      str r3, [r2]
004ba0d0  0f 00 00 0a                                      beq #0x4ba114
004ba0d4  00 40 a0 e3                                      mov r4, #0
004ba0d8  04 50 a0 e1                                      mov r5, r4
004ba0dc  01 00 00 ea                                      b #0x4ba0e8
004ba0e0  08 30 96 e7                                      ldr r3, [r6, r8]
004ba0e4  00 30 93 e5                                      ldr r3, [r3]
004ba0e8  04 00 83 e0                                      add r0, r3, r4
004ba0ec  0a 10 a0 e1                                      mov r1, sl
004ba0f0  04 30 93 e7                                      ldr r3, [r3, r4]
004ba0f4  0f e0 a0 e1                                      mov lr, pc
004ba0f8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004ba0fc  07 30 96 e7                                      ldr r3, [r6, r7]
004ba100  01 50 85 e2                                      add r5, r5, #1
004ba104  0c 40 84 e2                                      add r4, r4, #0xc
004ba108  00 30 93 e5                                      ldr r3, [r3]
004ba10c  05 00 53 e1                                      cmp r3, r5
004ba110  f2 ff ff 8a                                      bhi #0x4ba0e0
004ba114  0c d0 8d e2                                      add sp, sp, #0xc
004ba118  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004ba11c  8c aa 4d 00 20 25 00 00 54 14 00 00 14 37 00 00  .byte 0x8c, 0xaa, 0x4d, 0x00, 0x20, 0x25, 0x00, 0x00, 0x54, 0x14, 0x00, 0x00, 0x14, 0x37, 0x00, 0x00
