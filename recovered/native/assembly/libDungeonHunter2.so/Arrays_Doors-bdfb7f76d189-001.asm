; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a7e34, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::Doors
; alias: _ZN6Arrays5Doors13finalizeNamesEv
; demangled: Arrays::Doors::finalizeNames()
; decoder-mode: arm
004a7e34  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a7e38  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a7e3c  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a7e40  05 50 8f e0                                      add r5, pc, r5
004a7e44  06 30 95 e7                                      ldr r3, [r5, r6]
004a7e48  00 30 93 e5                                      ldr r3, [r3]
004a7e4c  00 00 53 e3                                      cmp r3, #0
004a7e50  1a 00 00 0a                                      beq #0x4a7ec0
004a7e54  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a7e58  07 20 95 e7                                      ldr r2, [r5, r7]
004a7e5c  00 20 92 e5                                      ldr r2, [r2]
004a7e60  00 00 52 e3                                      cmp r2, #0
004a7e64  10 00 00 0a                                      beq #0x4a7eac
004a7e68  00 40 a0 e3                                      mov r4, #0
004a7e6c  01 00 00 ea                                      b #0x4a7e78
004a7e70  06 30 95 e7                                      ldr r3, [r5, r6]
004a7e74  00 30 93 e5                                      ldr r3, [r3]
004a7e78  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a7e7c  01 40 84 e2                                      add r4, r4, #1
004a7e80  00 00 50 e3                                      cmp r0, #0
004a7e84  02 00 00 0a                                      beq #0x4a7e94
004a7e88  6c a1 f9 eb                                      bl #0x310440
004a7e8c  06 30 95 e7                                      ldr r3, [r5, r6]
004a7e90  00 30 93 e5                                      ldr r3, [r3]
004a7e94  07 20 95 e7                                      ldr r2, [r5, r7]
004a7e98  00 20 92 e5                                      ldr r2, [r2]
004a7e9c  04 00 52 e1                                      cmp r2, r4
004a7ea0  f2 ff ff 8a                                      bhi #0x4a7e70
004a7ea4  00 00 53 e3                                      cmp r3, #0
004a7ea8  01 00 00 0a                                      beq #0x4a7eb4
004a7eac  03 00 a0 e1                                      mov r0, r3
004a7eb0  62 a1 f9 eb                                      bl #0x310440
004a7eb4  06 30 95 e7                                      ldr r3, [r5, r6]
004a7eb8  00 20 a0 e3                                      mov r2, #0
004a7ebc  00 20 83 e5                                      str r2, [r3]
004a7ec0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a7ec4  50 cc 4e 00 88 44 00 00 f4 12 00 00              .byte 0x50, 0xcc, 0x4e, 0x00, 0x88, 0x44, 0x00, 0x00, 0xf4, 0x12, 0x00, 0x00

; FUNCTION 0x004a7ed0, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::Doors
; alias: _ZN6Arrays5Doors8finalizeEv
; demangled: Arrays::Doors::finalize()
; decoder-mode: arm
004a7ed0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a7ed4  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a7ed8  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a7edc  05 50 8f e0                                      add r5, pc, r5
004a7ee0  07 30 95 e7                                      ldr r3, [r5, r7]
004a7ee4  00 30 93 e5                                      ldr r3, [r3]
004a7ee8  00 00 53 e3                                      cmp r3, #0
004a7eec  2c 00 00 0a                                      beq #0x4a7fa4
004a7ef0  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a7ef4  08 20 95 e7                                      ldr r2, [r5, r8]
004a7ef8  00 20 92 e5                                      ldr r2, [r2]
004a7efc  00 00 52 e3                                      cmp r2, #0
004a7f00  12 00 00 0a                                      beq #0x4a7f50
004a7f04  00 40 a0 e3                                      mov r4, #0
004a7f08  04 60 a0 e1                                      mov r6, r4
004a7f0c  01 00 00 ea                                      b #0x4a7f18
004a7f10  07 30 95 e7                                      ldr r3, [r5, r7]
004a7f14  00 30 93 e5                                      ldr r3, [r3]
004a7f18  04 00 83 e0                                      add r0, r3, r4
004a7f1c  04 30 93 e7                                      ldr r3, [r3, r4]
004a7f20  0f e0 a0 e1                                      mov lr, pc
004a7f24  08 f0 93 e5                                      ldr pc, [r3, #8]
004a7f28  08 30 95 e7                                      ldr r3, [r5, r8]
004a7f2c  01 60 86 e2                                      add r6, r6, #1
004a7f30  18 40 84 e2                                      add r4, r4, #0x18
004a7f34  00 30 93 e5                                      ldr r3, [r3]
004a7f38  06 00 53 e1                                      cmp r3, r6
004a7f3c  f3 ff ff 8a                                      bhi #0x4a7f10
004a7f40  07 30 95 e7                                      ldr r3, [r5, r7]
004a7f44  00 30 93 e5                                      ldr r3, [r3]
004a7f48  00 00 53 e3                                      cmp r3, #0
004a7f4c  11 00 00 0a                                      beq #0x4a7f98
004a7f50  04 20 13 e5                                      ldr r2, [r3, #-4]
004a7f54  18 00 a0 e3                                      mov r0, #0x18
004a7f58  90 32 20 e0                                      mla r0, r0, r2, r3
004a7f5c  00 00 53 e1                                      cmp r3, r0
004a7f60  01 00 00 1a                                      bne #0x4a7f6c
004a7f64  09 00 00 ea                                      b #0x4a7f90
004a7f68  04 00 a0 e1                                      mov r0, r4
004a7f6c  18 40 40 e2                                      sub r4, r0, #0x18
004a7f70  18 30 10 e5                                      ldr r3, [r0, #-0x18]
004a7f74  04 00 a0 e1                                      mov r0, r4
004a7f78  0f e0 a0 e1                                      mov lr, pc
004a7f7c  00 f0 93 e5                                      ldr pc, [r3]
004a7f80  07 30 95 e7                                      ldr r3, [r5, r7]
004a7f84  00 00 93 e5                                      ldr r0, [r3]
004a7f88  04 00 50 e1                                      cmp r0, r4
004a7f8c  f5 ff ff 1a                                      bne #0x4a7f68
004a7f90  08 00 40 e2                                      sub r0, r0, #8
004a7f94  29 a1 f9 eb                                      bl #0x310440
004a7f98  07 30 95 e7                                      ldr r3, [r5, r7]
004a7f9c  00 20 a0 e3                                      mov r2, #0
004a7fa0  00 20 83 e5                                      str r2, [r3]
004a7fa4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a7fa8  b4 cb 4e 00 08 1e 00 00 f4 12 00 00              .byte 0xb4, 0xcb, 0x4e, 0x00, 0x08, 0x1e, 0x00, 0x00, 0xf4, 0x12, 0x00, 0x00

; FUNCTION 0x004b6164, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::Doors
; alias: _ZN6Arrays5Doors9readNamesEP11IStreamBase
; demangled: Arrays::Doors::readNames(IStreamBase*)
; decoder-mode: arm
004b6164  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b6168  00 70 a0 e1                                      mov r7, r0
004b616c  1c d0 4d e2                                      sub sp, sp, #0x1c
004b6170  2f c7 ff eb                                      bl #0x4a7e34
004b6174  07 00 a0 e1                                      mov r0, r7
004b6178  44 76 f9 eb                                      bl #0x313a90
004b617c  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b6180  01 30 a0 e3                                      mov r3, #1
004b6184  00 00 53 e3                                      cmp r3, #0
004b6188  06 60 8f e0                                      add r6, pc, r6
004b618c  14 00 8d e5                                      str r0, [sp, #0x14]
004b6190  0c 30 8d e5                                      str r3, [sp, #0xc]
004b6194  12 00 00 1a                                      bne #0x4b61e4
004b6198  14 30 8d e2                                      add r3, sp, #0x14
004b619c  02 20 83 e2                                      add r2, r3, #2
004b61a0  01 30 83 e2                                      add r3, r3, #1
004b61a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b61a8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b61ac  03 00 52 e1                                      cmp r2, r3
004b61b0  02 40 a0 e1                                      mov r4, r2
004b61b4  01 10 20 e0                                      eor r1, r0, r1
004b61b8  01 10 43 e5                                      strb r1, [r3, #-1]
004b61bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b61c0  00 10 21 e0                                      eor r1, r1, r0
004b61c4  01 10 c2 e5                                      strb r1, [r2, #1]
004b61c8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b61cc  01 20 42 e2                                      sub r2, r2, #1
004b61d0  00 10 21 e0                                      eor r1, r1, r0
004b61d4  01 10 43 e5                                      strb r1, [r3, #-1]
004b61d8  01 30 83 e2                                      add r3, r3, #1
004b61dc  f0 ff ff 8a                                      bhi #0x4b61a4
004b61e0  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b61e4  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b61e8  03 30 96 e7                                      ldr r3, [r6, r3]
004b61ec  00 30 93 e5                                      ldr r3, [r3]
004b61f0  00 00 53 e1                                      cmp r3, r0
004b61f4  01 00 00 0a                                      beq #0x4b6200
004b61f8  1c d0 8d e2                                      add sp, sp, #0x1c
004b61fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b6200  00 01 a0 e1                                      lsl r0, r0, #2
004b6204  01 10 a0 e3                                      mov r1, #1
004b6208  d7 68 f9 eb                                      bl #0x31056c
004b620c  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b6210  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b6214  09 30 96 e7                                      ldr r3, [r6, sb]
004b6218  00 00 52 e3                                      cmp r2, #0
004b621c  00 00 83 e5                                      str r0, [r3]
004b6220  f4 ff ff 0a                                      beq #0x4b61f8
004b6224  10 a0 8d e2                                      add sl, sp, #0x10
004b6228  01 80 a0 e3                                      mov r8, #1
004b622c  08 10 8a e0                                      add r1, sl, r8
004b6230  02 30 8a e2                                      add r3, sl, #2
004b6234  00 40 a0 e3                                      mov r4, #0
004b6238  0a 00 8d e8                                      stm sp, {r1, r3}
004b623c  07 00 a0 e1                                      mov r0, r7
004b6240  0a 10 a0 e1                                      mov r1, sl
004b6244  d5 a3 fc eb                                      bl #0x3df1a0
004b6248  00 00 58 e3                                      cmp r8, #0
004b624c  0c 80 8d e5                                      str r8, [sp, #0xc]
004b6250  0f 00 00 1a                                      bne #0x4b6294
004b6254  00 30 9d e5                                      ldr r3, [sp]
004b6258  04 20 9d e5                                      ldr r2, [sp, #4]
004b625c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6260  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b6264  03 00 52 e1                                      cmp r2, r3
004b6268  01 10 20 e0                                      eor r1, r0, r1
004b626c  01 10 43 e5                                      strb r1, [r3, #-1]
004b6270  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6274  00 10 21 e0                                      eor r1, r1, r0
004b6278  01 10 c2 e5                                      strb r1, [r2, #1]
004b627c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b6280  01 20 42 e2                                      sub r2, r2, #1
004b6284  00 10 21 e0                                      eor r1, r1, r0
004b6288  01 10 43 e5                                      strb r1, [r3, #-1]
004b628c  01 30 83 e2                                      add r3, r3, #1
004b6290  f1 ff ff 8a                                      bhi #0x4b625c
004b6294  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b6298  09 50 96 e7                                      ldr r5, [r6, sb]
004b629c  01 10 a0 e3                                      mov r1, #1
004b62a0  01 00 80 e0                                      add r0, r0, r1
004b62a4  00 b0 95 e5                                      ldr fp, [r5]
004b62a8  af 68 f9 eb                                      bl #0x31056c
004b62ac  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b62b0  00 30 95 e5                                      ldr r3, [r5]
004b62b4  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b62b8  07 00 a0 e1                                      mov r0, r7
004b62bc  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b62c0  00 30 a0 e3                                      mov r3, #0
004b62c4  62 84 f9 eb                                      bl #0x317454
004b62c8  00 30 95 e5                                      ldr r3, [r5]
004b62cc  00 10 a0 e3                                      mov r1, #0
004b62d0  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b62d4  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b62d8  01 40 84 e2                                      add r4, r4, #1
004b62dc  03 10 c2 e7                                      strb r1, [r2, r3]
004b62e0  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b62e4  04 00 53 e1                                      cmp r3, r4
004b62e8  d3 ff ff 8a                                      bhi #0x4b623c
004b62ec  c1 ff ff ea                                      b #0x4b61f8
; mapping-symbol data/literal pool
004b62f0  08 e9 4d 00 f4 12 00 00 88 44 00 00              .byte 0x08, 0xe9, 0x4d, 0x00, 0xf4, 0x12, 0x00, 0x00, 0x88, 0x44, 0x00, 0x00

; FUNCTION 0x004bbc04, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::Doors
; alias: _ZN6Arrays5Doors4readEP11IStreamBase
; demangled: Arrays::Doors::read(IStreamBase*)
; decoder-mode: arm
004bbc04  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004bbc08  0c d0 4d e2                                      sub sp, sp, #0xc
004bbc0c  00 a0 a0 e1                                      mov sl, r0
004bbc10  9e 5f f9 eb                                      bl #0x313a90
004bbc14  24 61 9f e5                                      ldr r6, [pc, #0x124]
004bbc18  01 30 a0 e3                                      mov r3, #1
004bbc1c  00 00 53 e3                                      cmp r3, #0
004bbc20  04 00 8d e5                                      str r0, [sp, #4]
004bbc24  00 30 8d e5                                      str r3, [sp]
004bbc28  06 60 8f e0                                      add r6, pc, r6
004bbc2c  10 00 00 1a                                      bne #0x4bbc74
004bbc30  04 30 8d e2                                      add r3, sp, #4
004bbc34  02 20 83 e2                                      add r2, r3, #2
004bbc38  01 30 83 e2                                      add r3, r3, #1
004bbc3c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bbc40  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bbc44  03 00 52 e1                                      cmp r2, r3
004bbc48  01 10 20 e0                                      eor r1, r0, r1
004bbc4c  01 10 43 e5                                      strb r1, [r3, #-1]
004bbc50  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bbc54  00 10 21 e0                                      eor r1, r1, r0
004bbc58  01 10 c2 e5                                      strb r1, [r2, #1]
004bbc5c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bbc60  01 20 42 e2                                      sub r2, r2, #1
004bbc64  00 10 21 e0                                      eor r1, r1, r0
004bbc68  01 10 43 e5                                      strb r1, [r3, #-1]
004bbc6c  01 30 83 e2                                      add r3, r3, #1
004bbc70  f1 ff ff 8a                                      bhi #0x4bbc3c
004bbc74  c8 70 9f e5                                      ldr r7, [pc, #0xc8]
004bbc78  94 b0 ff eb                                      bl #0x4a7ed0
004bbc7c  04 40 9d e5                                      ldr r4, [sp, #4]
004bbc80  07 30 96 e7                                      ldr r3, [r6, r7]
004bbc84  01 10 a0 e3                                      mov r1, #1
004bbc88  84 00 84 e0                                      add r0, r4, r4, lsl #1
004bbc8c  01 00 80 e0                                      add r0, r0, r1
004bbc90  00 40 83 e5                                      str r4, [r3]
004bbc94  80 01 a0 e1                                      lsl r0, r0, #3
004bbc98  33 52 f9 eb                                      bl #0x31056c
004bbc9c  18 30 a0 e3                                      mov r3, #0x18
004bbca0  00 00 54 e3                                      cmp r4, #0
004bbca4  18 00 80 e8                                      stm r0, {r3, r4}
004bbca8  08 30 80 e2                                      add r3, r0, #8
004bbcac  0a 00 00 0a                                      beq #0x4bbcdc
004bbcb0  90 10 9f e5                                      ldr r1, [pc, #0x90]
004bbcb4  00 20 a0 e3                                      mov r2, #0
004bbcb8  02 c0 a0 e1                                      mov ip, r2
004bbcbc  01 10 96 e7                                      ldr r1, [r6, r1]
004bbcc0  08 10 81 e2                                      add r1, r1, #8
004bbcc4  01 20 82 e2                                      add r2, r2, #1
004bbcc8  04 00 52 e1                                      cmp r2, r4
004bbccc  08 10 80 e5                                      str r1, [r0, #8]
004bbcd0  10 c0 80 e5                                      str ip, [r0, #0x10]
004bbcd4  18 00 80 e2                                      add r0, r0, #0x18
004bbcd8  f9 ff ff 1a                                      bne #0x4bbcc4
004bbcdc  07 20 96 e7                                      ldr r2, [r6, r7]
004bbce0  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bbce4  00 10 92 e5                                      ldr r1, [r2]
004bbce8  08 20 96 e7                                      ldr r2, [r6, r8]
004bbcec  00 00 51 e3                                      cmp r1, #0
004bbcf0  00 30 82 e5                                      str r3, [r2]
004bbcf4  0f 00 00 0a                                      beq #0x4bbd38
004bbcf8  00 40 a0 e3                                      mov r4, #0
004bbcfc  04 50 a0 e1                                      mov r5, r4
004bbd00  01 00 00 ea                                      b #0x4bbd0c
004bbd04  08 30 96 e7                                      ldr r3, [r6, r8]
004bbd08  00 30 93 e5                                      ldr r3, [r3]
004bbd0c  04 00 83 e0                                      add r0, r3, r4
004bbd10  0a 10 a0 e1                                      mov r1, sl
004bbd14  04 30 93 e7                                      ldr r3, [r3, r4]
004bbd18  0f e0 a0 e1                                      mov lr, pc
004bbd1c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bbd20  07 30 96 e7                                      ldr r3, [r6, r7]
004bbd24  01 50 85 e2                                      add r5, r5, #1
004bbd28  18 40 84 e2                                      add r4, r4, #0x18
004bbd2c  00 30 93 e5                                      ldr r3, [r3]
004bbd30  05 00 53 e1                                      cmp r3, r5
004bbd34  f2 ff ff 8a                                      bhi #0x4bbd04
004bbd38  0c d0 8d e2                                      add sp, sp, #0xc
004bbd3c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bbd40  68 8e 4d 00 f4 12 00 00 9c 29 00 00 08 1e 00 00  .byte 0x68, 0x8e, 0x4d, 0x00, 0xf4, 0x12, 0x00, 0x00, 0x9c, 0x29, 0x00, 0x00, 0x08, 0x1e, 0x00, 0x00
