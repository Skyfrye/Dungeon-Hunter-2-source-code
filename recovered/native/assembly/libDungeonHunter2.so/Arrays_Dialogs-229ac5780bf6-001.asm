; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a8a28, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::Dialogs
; alias: _ZN6Arrays7Dialogs13finalizeNamesEv
; demangled: Arrays::Dialogs::finalizeNames()
; decoder-mode: arm
004a8a28  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a8a2c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a8a30  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a8a34  05 50 8f e0                                      add r5, pc, r5
004a8a38  06 30 95 e7                                      ldr r3, [r5, r6]
004a8a3c  00 30 93 e5                                      ldr r3, [r3]
004a8a40  00 00 53 e3                                      cmp r3, #0
004a8a44  1a 00 00 0a                                      beq #0x4a8ab4
004a8a48  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a8a4c  07 20 95 e7                                      ldr r2, [r5, r7]
004a8a50  00 20 92 e5                                      ldr r2, [r2]
004a8a54  00 00 52 e3                                      cmp r2, #0
004a8a58  10 00 00 0a                                      beq #0x4a8aa0
004a8a5c  00 40 a0 e3                                      mov r4, #0
004a8a60  01 00 00 ea                                      b #0x4a8a6c
004a8a64  06 30 95 e7                                      ldr r3, [r5, r6]
004a8a68  00 30 93 e5                                      ldr r3, [r3]
004a8a6c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a8a70  01 40 84 e2                                      add r4, r4, #1
004a8a74  00 00 50 e3                                      cmp r0, #0
004a8a78  02 00 00 0a                                      beq #0x4a8a88
004a8a7c  6f 9e f9 eb                                      bl #0x310440
004a8a80  06 30 95 e7                                      ldr r3, [r5, r6]
004a8a84  00 30 93 e5                                      ldr r3, [r3]
004a8a88  07 20 95 e7                                      ldr r2, [r5, r7]
004a8a8c  00 20 92 e5                                      ldr r2, [r2]
004a8a90  04 00 52 e1                                      cmp r2, r4
004a8a94  f2 ff ff 8a                                      bhi #0x4a8a64
004a8a98  00 00 53 e3                                      cmp r3, #0
004a8a9c  01 00 00 0a                                      beq #0x4a8aa8
004a8aa0  03 00 a0 e1                                      mov r0, r3
004a8aa4  65 9e f9 eb                                      bl #0x310440
004a8aa8  06 30 95 e7                                      ldr r3, [r5, r6]
004a8aac  00 20 a0 e3                                      mov r2, #0
004a8ab0  00 20 83 e5                                      str r2, [r3]
004a8ab4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a8ab8  5c c0 4e 00 54 17 00 00 b8 38 00 00              .byte 0x5c, 0xc0, 0x4e, 0x00, 0x54, 0x17, 0x00, 0x00, 0xb8, 0x38, 0x00, 0x00

; FUNCTION 0x004a8ac4, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::Dialogs
; alias: _ZN6Arrays7Dialogs8finalizeEv
; demangled: Arrays::Dialogs::finalize()
; decoder-mode: arm
004a8ac4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a8ac8  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a8acc  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a8ad0  05 50 8f e0                                      add r5, pc, r5
004a8ad4  07 30 95 e7                                      ldr r3, [r5, r7]
004a8ad8  00 30 93 e5                                      ldr r3, [r3]
004a8adc  00 00 53 e3                                      cmp r3, #0
004a8ae0  2c 00 00 0a                                      beq #0x4a8b98
004a8ae4  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a8ae8  08 20 95 e7                                      ldr r2, [r5, r8]
004a8aec  00 20 92 e5                                      ldr r2, [r2]
004a8af0  00 00 52 e3                                      cmp r2, #0
004a8af4  12 00 00 0a                                      beq #0x4a8b44
004a8af8  00 40 a0 e3                                      mov r4, #0
004a8afc  04 60 a0 e1                                      mov r6, r4
004a8b00  01 00 00 ea                                      b #0x4a8b0c
004a8b04  07 30 95 e7                                      ldr r3, [r5, r7]
004a8b08  00 30 93 e5                                      ldr r3, [r3]
004a8b0c  04 00 83 e0                                      add r0, r3, r4
004a8b10  04 30 93 e7                                      ldr r3, [r3, r4]
004a8b14  0f e0 a0 e1                                      mov lr, pc
004a8b18  08 f0 93 e5                                      ldr pc, [r3, #8]
004a8b1c  08 30 95 e7                                      ldr r3, [r5, r8]
004a8b20  01 60 86 e2                                      add r6, r6, #1
004a8b24  0c 40 84 e2                                      add r4, r4, #0xc
004a8b28  00 30 93 e5                                      ldr r3, [r3]
004a8b2c  06 00 53 e1                                      cmp r3, r6
004a8b30  f3 ff ff 8a                                      bhi #0x4a8b04
004a8b34  07 30 95 e7                                      ldr r3, [r5, r7]
004a8b38  00 30 93 e5                                      ldr r3, [r3]
004a8b3c  00 00 53 e3                                      cmp r3, #0
004a8b40  11 00 00 0a                                      beq #0x4a8b8c
004a8b44  04 20 13 e5                                      ldr r2, [r3, #-4]
004a8b48  0c 00 a0 e3                                      mov r0, #0xc
004a8b4c  90 32 20 e0                                      mla r0, r0, r2, r3
004a8b50  00 00 53 e1                                      cmp r3, r0
004a8b54  01 00 00 1a                                      bne #0x4a8b60
004a8b58  09 00 00 ea                                      b #0x4a8b84
004a8b5c  04 00 a0 e1                                      mov r0, r4
004a8b60  0c 40 40 e2                                      sub r4, r0, #0xc
004a8b64  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a8b68  04 00 a0 e1                                      mov r0, r4
004a8b6c  0f e0 a0 e1                                      mov lr, pc
004a8b70  00 f0 93 e5                                      ldr pc, [r3]
004a8b74  07 30 95 e7                                      ldr r3, [r5, r7]
004a8b78  00 00 93 e5                                      ldr r0, [r3]
004a8b7c  04 00 50 e1                                      cmp r0, r4
004a8b80  f5 ff ff 1a                                      bne #0x4a8b5c
004a8b84  08 00 40 e2                                      sub r0, r0, #8
004a8b88  2c 9e f9 eb                                      bl #0x310440
004a8b8c  07 30 95 e7                                      ldr r3, [r5, r7]
004a8b90  00 20 a0 e3                                      mov r2, #0
004a8b94  00 20 83 e5                                      str r2, [r3]
004a8b98  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a8b9c  c0 bf 4e 00 04 22 00 00 b8 38 00 00              .byte 0xc0, 0xbf, 0x4e, 0x00, 0x04, 0x22, 0x00, 0x00, 0xb8, 0x38, 0x00, 0x00

; FUNCTION 0x004b2c6c, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::Dialogs
; alias: _ZN6Arrays7Dialogs9readNamesEP11IStreamBase
; demangled: Arrays::Dialogs::readNames(IStreamBase*)
; decoder-mode: arm
004b2c6c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b2c70  00 70 a0 e1                                      mov r7, r0
004b2c74  1c d0 4d e2                                      sub sp, sp, #0x1c
004b2c78  6a d7 ff eb                                      bl #0x4a8a28
004b2c7c  07 00 a0 e1                                      mov r0, r7
004b2c80  82 83 f9 eb                                      bl #0x313a90
004b2c84  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b2c88  01 30 a0 e3                                      mov r3, #1
004b2c8c  00 00 53 e3                                      cmp r3, #0
004b2c90  06 60 8f e0                                      add r6, pc, r6
004b2c94  14 00 8d e5                                      str r0, [sp, #0x14]
004b2c98  0c 30 8d e5                                      str r3, [sp, #0xc]
004b2c9c  12 00 00 1a                                      bne #0x4b2cec
004b2ca0  14 30 8d e2                                      add r3, sp, #0x14
004b2ca4  02 20 83 e2                                      add r2, r3, #2
004b2ca8  01 30 83 e2                                      add r3, r3, #1
004b2cac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2cb0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b2cb4  03 00 52 e1                                      cmp r2, r3
004b2cb8  02 40 a0 e1                                      mov r4, r2
004b2cbc  01 10 20 e0                                      eor r1, r0, r1
004b2cc0  01 10 43 e5                                      strb r1, [r3, #-1]
004b2cc4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2cc8  00 10 21 e0                                      eor r1, r1, r0
004b2ccc  01 10 c2 e5                                      strb r1, [r2, #1]
004b2cd0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b2cd4  01 20 42 e2                                      sub r2, r2, #1
004b2cd8  00 10 21 e0                                      eor r1, r1, r0
004b2cdc  01 10 43 e5                                      strb r1, [r3, #-1]
004b2ce0  01 30 83 e2                                      add r3, r3, #1
004b2ce4  f0 ff ff 8a                                      bhi #0x4b2cac
004b2ce8  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b2cec  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b2cf0  03 30 96 e7                                      ldr r3, [r6, r3]
004b2cf4  00 30 93 e5                                      ldr r3, [r3]
004b2cf8  00 00 53 e1                                      cmp r3, r0
004b2cfc  01 00 00 0a                                      beq #0x4b2d08
004b2d00  1c d0 8d e2                                      add sp, sp, #0x1c
004b2d04  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b2d08  00 01 a0 e1                                      lsl r0, r0, #2
004b2d0c  01 10 a0 e3                                      mov r1, #1
004b2d10  15 76 f9 eb                                      bl #0x31056c
004b2d14  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b2d18  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b2d1c  09 30 96 e7                                      ldr r3, [r6, sb]
004b2d20  00 00 52 e3                                      cmp r2, #0
004b2d24  00 00 83 e5                                      str r0, [r3]
004b2d28  f4 ff ff 0a                                      beq #0x4b2d00
004b2d2c  10 a0 8d e2                                      add sl, sp, #0x10
004b2d30  01 80 a0 e3                                      mov r8, #1
004b2d34  08 10 8a e0                                      add r1, sl, r8
004b2d38  02 30 8a e2                                      add r3, sl, #2
004b2d3c  00 40 a0 e3                                      mov r4, #0
004b2d40  0a 00 8d e8                                      stm sp, {r1, r3}
004b2d44  07 00 a0 e1                                      mov r0, r7
004b2d48  0a 10 a0 e1                                      mov r1, sl
004b2d4c  13 b1 fc eb                                      bl #0x3df1a0
004b2d50  00 00 58 e3                                      cmp r8, #0
004b2d54  0c 80 8d e5                                      str r8, [sp, #0xc]
004b2d58  0f 00 00 1a                                      bne #0x4b2d9c
004b2d5c  00 30 9d e5                                      ldr r3, [sp]
004b2d60  04 20 9d e5                                      ldr r2, [sp, #4]
004b2d64  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2d68  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b2d6c  03 00 52 e1                                      cmp r2, r3
004b2d70  01 10 20 e0                                      eor r1, r0, r1
004b2d74  01 10 43 e5                                      strb r1, [r3, #-1]
004b2d78  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2d7c  00 10 21 e0                                      eor r1, r1, r0
004b2d80  01 10 c2 e5                                      strb r1, [r2, #1]
004b2d84  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b2d88  01 20 42 e2                                      sub r2, r2, #1
004b2d8c  00 10 21 e0                                      eor r1, r1, r0
004b2d90  01 10 43 e5                                      strb r1, [r3, #-1]
004b2d94  01 30 83 e2                                      add r3, r3, #1
004b2d98  f1 ff ff 8a                                      bhi #0x4b2d64
004b2d9c  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b2da0  09 50 96 e7                                      ldr r5, [r6, sb]
004b2da4  01 10 a0 e3                                      mov r1, #1
004b2da8  01 00 80 e0                                      add r0, r0, r1
004b2dac  00 b0 95 e5                                      ldr fp, [r5]
004b2db0  ed 75 f9 eb                                      bl #0x31056c
004b2db4  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b2db8  00 30 95 e5                                      ldr r3, [r5]
004b2dbc  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b2dc0  07 00 a0 e1                                      mov r0, r7
004b2dc4  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b2dc8  00 30 a0 e3                                      mov r3, #0
004b2dcc  a0 91 f9 eb                                      bl #0x317454
004b2dd0  00 30 95 e5                                      ldr r3, [r5]
004b2dd4  00 10 a0 e3                                      mov r1, #0
004b2dd8  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b2ddc  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b2de0  01 40 84 e2                                      add r4, r4, #1
004b2de4  03 10 c2 e7                                      strb r1, [r2, r3]
004b2de8  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b2dec  04 00 53 e1                                      cmp r3, r4
004b2df0  d3 ff ff 8a                                      bhi #0x4b2d44
004b2df4  c1 ff ff ea                                      b #0x4b2d00
; mapping-symbol data/literal pool
004b2df8  00 1e 4e 00 b8 38 00 00 54 17 00 00              .byte 0x00, 0x1e, 0x4e, 0x00, 0xb8, 0x38, 0x00, 0x00, 0x54, 0x17, 0x00, 0x00

; FUNCTION 0x004b2e04, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::Dialogs
; alias: _ZN6Arrays7Dialogs9skipNamesEP11IStreamBase
; demangled: Arrays::Dialogs::skipNames(IStreamBase*)
; decoder-mode: arm
004b2e04  98 ff ff ea                                      b #0x4b2c6c

; FUNCTION 0x004bc64c, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::Dialogs
; alias: _ZN6Arrays7Dialogs4readEP11IStreamBase
; demangled: Arrays::Dialogs::read(IStreamBase*)
; decoder-mode: arm
004bc64c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004bc650  0c d0 4d e2                                      sub sp, sp, #0xc
004bc654  00 a0 a0 e1                                      mov sl, r0
004bc658  0c 5d f9 eb                                      bl #0x313a90
004bc65c  24 61 9f e5                                      ldr r6, [pc, #0x124]
004bc660  01 30 a0 e3                                      mov r3, #1
004bc664  00 00 53 e3                                      cmp r3, #0
004bc668  04 00 8d e5                                      str r0, [sp, #4]
004bc66c  00 30 8d e5                                      str r3, [sp]
004bc670  06 60 8f e0                                      add r6, pc, r6
004bc674  10 00 00 1a                                      bne #0x4bc6bc
004bc678  04 30 8d e2                                      add r3, sp, #4
004bc67c  02 20 83 e2                                      add r2, r3, #2
004bc680  01 30 83 e2                                      add r3, r3, #1
004bc684  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bc688  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bc68c  03 00 52 e1                                      cmp r2, r3
004bc690  01 10 20 e0                                      eor r1, r0, r1
004bc694  01 10 43 e5                                      strb r1, [r3, #-1]
004bc698  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bc69c  00 10 21 e0                                      eor r1, r1, r0
004bc6a0  01 10 c2 e5                                      strb r1, [r2, #1]
004bc6a4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bc6a8  01 20 42 e2                                      sub r2, r2, #1
004bc6ac  00 10 21 e0                                      eor r1, r1, r0
004bc6b0  01 10 43 e5                                      strb r1, [r3, #-1]
004bc6b4  01 30 83 e2                                      add r3, r3, #1
004bc6b8  f1 ff ff 8a                                      bhi #0x4bc684
004bc6bc  00 b1 ff eb                                      bl #0x4a8ac4
004bc6c0  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004bc6c4  04 40 9d e5                                      ldr r4, [sp, #4]
004bc6c8  0c 50 a0 e3                                      mov r5, #0xc
004bc6cc  07 30 96 e7                                      ldr r3, [r6, r7]
004bc6d0  95 04 00 e0                                      mul r0, r5, r4
004bc6d4  00 40 83 e5                                      str r4, [r3]
004bc6d8  08 00 80 e2                                      add r0, r0, #8
004bc6dc  01 10 a0 e3                                      mov r1, #1
004bc6e0  a1 4f f9 eb                                      bl #0x31056c
004bc6e4  00 00 54 e3                                      cmp r4, #0
004bc6e8  00 50 80 e5                                      str r5, [r0]
004bc6ec  04 40 80 e5                                      str r4, [r0, #4]
004bc6f0  08 30 80 e2                                      add r3, r0, #8
004bc6f4  0a 00 00 0a                                      beq #0x4bc724
004bc6f8  90 10 9f e5                                      ldr r1, [pc, #0x90]
004bc6fc  00 20 a0 e3                                      mov r2, #0
004bc700  02 c0 a0 e1                                      mov ip, r2
004bc704  01 10 96 e7                                      ldr r1, [r6, r1]
004bc708  08 10 81 e2                                      add r1, r1, #8
004bc70c  01 20 82 e2                                      add r2, r2, #1
004bc710  04 00 52 e1                                      cmp r2, r4
004bc714  08 10 80 e5                                      str r1, [r0, #8]
004bc718  10 c0 80 e5                                      str ip, [r0, #0x10]
004bc71c  0c 00 80 e2                                      add r0, r0, #0xc
004bc720  f9 ff ff 1a                                      bne #0x4bc70c
004bc724  07 20 96 e7                                      ldr r2, [r6, r7]
004bc728  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bc72c  00 10 92 e5                                      ldr r1, [r2]
004bc730  08 20 96 e7                                      ldr r2, [r6, r8]
004bc734  00 00 51 e3                                      cmp r1, #0
004bc738  00 30 82 e5                                      str r3, [r2]
004bc73c  0f 00 00 0a                                      beq #0x4bc780
004bc740  00 40 a0 e3                                      mov r4, #0
004bc744  04 50 a0 e1                                      mov r5, r4
004bc748  01 00 00 ea                                      b #0x4bc754
004bc74c  08 30 96 e7                                      ldr r3, [r6, r8]
004bc750  00 30 93 e5                                      ldr r3, [r3]
004bc754  04 00 83 e0                                      add r0, r3, r4
004bc758  0a 10 a0 e1                                      mov r1, sl
004bc75c  04 30 93 e7                                      ldr r3, [r3, r4]
004bc760  0f e0 a0 e1                                      mov lr, pc
004bc764  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bc768  07 30 96 e7                                      ldr r3, [r6, r7]
004bc76c  01 50 85 e2                                      add r5, r5, #1
004bc770  0c 40 84 e2                                      add r4, r4, #0xc
004bc774  00 30 93 e5                                      ldr r3, [r3]
004bc778  05 00 53 e1                                      cmp r3, r5
004bc77c  f2 ff ff 8a                                      bhi #0x4bc74c
004bc780  0c d0 8d e2                                      add sp, sp, #0xc
004bc784  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bc788  20 84 4d 00 b8 38 00 00 ec 43 00 00 04 22 00 00  .byte 0x20, 0x84, 0x4d, 0x00, 0xb8, 0x38, 0x00, 0x00, 0xec, 0x43, 0x00, 0x00, 0x04, 0x22, 0x00, 0x00
