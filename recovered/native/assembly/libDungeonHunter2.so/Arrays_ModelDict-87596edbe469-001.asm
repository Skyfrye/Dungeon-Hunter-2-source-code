; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a4108, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::ModelDict
; alias: _ZN6Arrays9ModelDict13finalizeNamesEv
; demangled: Arrays::ModelDict::finalizeNames()
; decoder-mode: arm
004a4108  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a410c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a4110  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a4114  05 50 8f e0                                      add r5, pc, r5
004a4118  06 30 95 e7                                      ldr r3, [r5, r6]
004a411c  00 30 93 e5                                      ldr r3, [r3]
004a4120  00 00 53 e3                                      cmp r3, #0
004a4124  1a 00 00 0a                                      beq #0x4a4194
004a4128  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a412c  07 20 95 e7                                      ldr r2, [r5, r7]
004a4130  00 20 92 e5                                      ldr r2, [r2]
004a4134  00 00 52 e3                                      cmp r2, #0
004a4138  10 00 00 0a                                      beq #0x4a4180
004a413c  00 40 a0 e3                                      mov r4, #0
004a4140  01 00 00 ea                                      b #0x4a414c
004a4144  06 30 95 e7                                      ldr r3, [r5, r6]
004a4148  00 30 93 e5                                      ldr r3, [r3]
004a414c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a4150  01 40 84 e2                                      add r4, r4, #1
004a4154  00 00 50 e3                                      cmp r0, #0
004a4158  02 00 00 0a                                      beq #0x4a4168
004a415c  b7 b0 f9 eb                                      bl #0x310440
004a4160  06 30 95 e7                                      ldr r3, [r5, r6]
004a4164  00 30 93 e5                                      ldr r3, [r3]
004a4168  07 20 95 e7                                      ldr r2, [r5, r7]
004a416c  00 20 92 e5                                      ldr r2, [r2]
004a4170  04 00 52 e1                                      cmp r2, r4
004a4174  f2 ff ff 8a                                      bhi #0x4a4144
004a4178  00 00 53 e3                                      cmp r3, #0
004a417c  01 00 00 0a                                      beq #0x4a4188
004a4180  03 00 a0 e1                                      mov r0, r3
004a4184  ad b0 f9 eb                                      bl #0x310440
004a4188  06 30 95 e7                                      ldr r3, [r5, r6]
004a418c  00 20 a0 e3                                      mov r2, #0
004a4190  00 20 83 e5                                      str r2, [r3]
004a4194  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a4198  7c 09 4f 00 68 32 00 00 0c 3c 00 00              .byte 0x7c, 0x09, 0x4f, 0x00, 0x68, 0x32, 0x00, 0x00, 0x0c, 0x3c, 0x00, 0x00

; FUNCTION 0x004a41a4, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::ModelDict
; alias: _ZN6Arrays9ModelDict8finalizeEv
; demangled: Arrays::ModelDict::finalize()
; decoder-mode: arm
004a41a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a41a8  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a41ac  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a41b0  05 50 8f e0                                      add r5, pc, r5
004a41b4  07 30 95 e7                                      ldr r3, [r5, r7]
004a41b8  00 30 93 e5                                      ldr r3, [r3]
004a41bc  00 00 53 e3                                      cmp r3, #0
004a41c0  2c 00 00 0a                                      beq #0x4a4278
004a41c4  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a41c8  08 20 95 e7                                      ldr r2, [r5, r8]
004a41cc  00 20 92 e5                                      ldr r2, [r2]
004a41d0  00 00 52 e3                                      cmp r2, #0
004a41d4  12 00 00 0a                                      beq #0x4a4224
004a41d8  00 40 a0 e3                                      mov r4, #0
004a41dc  04 60 a0 e1                                      mov r6, r4
004a41e0  01 00 00 ea                                      b #0x4a41ec
004a41e4  07 30 95 e7                                      ldr r3, [r5, r7]
004a41e8  00 30 93 e5                                      ldr r3, [r3]
004a41ec  04 00 83 e0                                      add r0, r3, r4
004a41f0  04 30 93 e7                                      ldr r3, [r3, r4]
004a41f4  0f e0 a0 e1                                      mov lr, pc
004a41f8  08 f0 93 e5                                      ldr pc, [r3, #8]
004a41fc  08 30 95 e7                                      ldr r3, [r5, r8]
004a4200  01 60 86 e2                                      add r6, r6, #1
004a4204  0c 40 84 e2                                      add r4, r4, #0xc
004a4208  00 30 93 e5                                      ldr r3, [r3]
004a420c  06 00 53 e1                                      cmp r3, r6
004a4210  f3 ff ff 8a                                      bhi #0x4a41e4
004a4214  07 30 95 e7                                      ldr r3, [r5, r7]
004a4218  00 30 93 e5                                      ldr r3, [r3]
004a421c  00 00 53 e3                                      cmp r3, #0
004a4220  11 00 00 0a                                      beq #0x4a426c
004a4224  04 20 13 e5                                      ldr r2, [r3, #-4]
004a4228  0c 00 a0 e3                                      mov r0, #0xc
004a422c  90 32 20 e0                                      mla r0, r0, r2, r3
004a4230  00 00 53 e1                                      cmp r3, r0
004a4234  01 00 00 1a                                      bne #0x4a4240
004a4238  09 00 00 ea                                      b #0x4a4264
004a423c  04 00 a0 e1                                      mov r0, r4
004a4240  0c 40 40 e2                                      sub r4, r0, #0xc
004a4244  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a4248  04 00 a0 e1                                      mov r0, r4
004a424c  0f e0 a0 e1                                      mov lr, pc
004a4250  00 f0 93 e5                                      ldr pc, [r3]
004a4254  07 30 95 e7                                      ldr r3, [r5, r7]
004a4258  00 00 93 e5                                      ldr r0, [r3]
004a425c  04 00 50 e1                                      cmp r0, r4
004a4260  f5 ff ff 1a                                      bne #0x4a423c
004a4264  08 00 40 e2                                      sub r0, r0, #8
004a4268  74 b0 f9 eb                                      bl #0x310440
004a426c  07 30 95 e7                                      ldr r3, [r5, r7]
004a4270  00 20 a0 e3                                      mov r2, #0
004a4274  00 20 83 e5                                      str r2, [r3]
004a4278  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a427c  e0 08 4f 00 44 43 00 00 0c 3c 00 00              .byte 0xe0, 0x08, 0x4f, 0x00, 0x44, 0x43, 0x00, 0x00, 0x0c, 0x3c, 0x00, 0x00

; FUNCTION 0x004b1ac0, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::ModelDict
; alias: _ZN6Arrays9ModelDict9readNamesEP11IStreamBase
; demangled: Arrays::ModelDict::readNames(IStreamBase*)
; decoder-mode: arm
004b1ac0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b1ac4  00 70 a0 e1                                      mov r7, r0
004b1ac8  1c d0 4d e2                                      sub sp, sp, #0x1c
004b1acc  8d c9 ff eb                                      bl #0x4a4108
004b1ad0  07 00 a0 e1                                      mov r0, r7
004b1ad4  ed 87 f9 eb                                      bl #0x313a90
004b1ad8  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b1adc  01 30 a0 e3                                      mov r3, #1
004b1ae0  00 00 53 e3                                      cmp r3, #0
004b1ae4  06 60 8f e0                                      add r6, pc, r6
004b1ae8  14 00 8d e5                                      str r0, [sp, #0x14]
004b1aec  0c 30 8d e5                                      str r3, [sp, #0xc]
004b1af0  12 00 00 1a                                      bne #0x4b1b40
004b1af4  14 30 8d e2                                      add r3, sp, #0x14
004b1af8  02 20 83 e2                                      add r2, r3, #2
004b1afc  01 30 83 e2                                      add r3, r3, #1
004b1b00  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1b04  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b1b08  03 00 52 e1                                      cmp r2, r3
004b1b0c  02 40 a0 e1                                      mov r4, r2
004b1b10  01 10 20 e0                                      eor r1, r0, r1
004b1b14  01 10 43 e5                                      strb r1, [r3, #-1]
004b1b18  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1b1c  00 10 21 e0                                      eor r1, r1, r0
004b1b20  01 10 c2 e5                                      strb r1, [r2, #1]
004b1b24  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b1b28  01 20 42 e2                                      sub r2, r2, #1
004b1b2c  00 10 21 e0                                      eor r1, r1, r0
004b1b30  01 10 43 e5                                      strb r1, [r3, #-1]
004b1b34  01 30 83 e2                                      add r3, r3, #1
004b1b38  f0 ff ff 8a                                      bhi #0x4b1b00
004b1b3c  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b1b40  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b1b44  03 30 96 e7                                      ldr r3, [r6, r3]
004b1b48  00 30 93 e5                                      ldr r3, [r3]
004b1b4c  00 00 53 e1                                      cmp r3, r0
004b1b50  01 00 00 0a                                      beq #0x4b1b5c
004b1b54  1c d0 8d e2                                      add sp, sp, #0x1c
004b1b58  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b1b5c  00 01 a0 e1                                      lsl r0, r0, #2
004b1b60  01 10 a0 e3                                      mov r1, #1
004b1b64  80 7a f9 eb                                      bl #0x31056c
004b1b68  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b1b6c  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b1b70  09 30 96 e7                                      ldr r3, [r6, sb]
004b1b74  00 00 52 e3                                      cmp r2, #0
004b1b78  00 00 83 e5                                      str r0, [r3]
004b1b7c  f4 ff ff 0a                                      beq #0x4b1b54
004b1b80  10 a0 8d e2                                      add sl, sp, #0x10
004b1b84  01 80 a0 e3                                      mov r8, #1
004b1b88  08 10 8a e0                                      add r1, sl, r8
004b1b8c  02 30 8a e2                                      add r3, sl, #2
004b1b90  00 40 a0 e3                                      mov r4, #0
004b1b94  0a 00 8d e8                                      stm sp, {r1, r3}
004b1b98  07 00 a0 e1                                      mov r0, r7
004b1b9c  0a 10 a0 e1                                      mov r1, sl
004b1ba0  7e b5 fc eb                                      bl #0x3df1a0
004b1ba4  00 00 58 e3                                      cmp r8, #0
004b1ba8  0c 80 8d e5                                      str r8, [sp, #0xc]
004b1bac  0f 00 00 1a                                      bne #0x4b1bf0
004b1bb0  00 30 9d e5                                      ldr r3, [sp]
004b1bb4  04 20 9d e5                                      ldr r2, [sp, #4]
004b1bb8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1bbc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b1bc0  03 00 52 e1                                      cmp r2, r3
004b1bc4  01 10 20 e0                                      eor r1, r0, r1
004b1bc8  01 10 43 e5                                      strb r1, [r3, #-1]
004b1bcc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1bd0  00 10 21 e0                                      eor r1, r1, r0
004b1bd4  01 10 c2 e5                                      strb r1, [r2, #1]
004b1bd8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b1bdc  01 20 42 e2                                      sub r2, r2, #1
004b1be0  00 10 21 e0                                      eor r1, r1, r0
004b1be4  01 10 43 e5                                      strb r1, [r3, #-1]
004b1be8  01 30 83 e2                                      add r3, r3, #1
004b1bec  f1 ff ff 8a                                      bhi #0x4b1bb8
004b1bf0  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b1bf4  09 50 96 e7                                      ldr r5, [r6, sb]
004b1bf8  01 10 a0 e3                                      mov r1, #1
004b1bfc  01 00 80 e0                                      add r0, r0, r1
004b1c00  00 b0 95 e5                                      ldr fp, [r5]
004b1c04  58 7a f9 eb                                      bl #0x31056c
004b1c08  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b1c0c  00 30 95 e5                                      ldr r3, [r5]
004b1c10  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b1c14  07 00 a0 e1                                      mov r0, r7
004b1c18  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b1c1c  00 30 a0 e3                                      mov r3, #0
004b1c20  0b 96 f9 eb                                      bl #0x317454
004b1c24  00 30 95 e5                                      ldr r3, [r5]
004b1c28  00 10 a0 e3                                      mov r1, #0
004b1c2c  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b1c30  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b1c34  01 40 84 e2                                      add r4, r4, #1
004b1c38  03 10 c2 e7                                      strb r1, [r2, r3]
004b1c3c  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b1c40  04 00 53 e1                                      cmp r3, r4
004b1c44  d3 ff ff 8a                                      bhi #0x4b1b98
004b1c48  c1 ff ff ea                                      b #0x4b1b54
; mapping-symbol data/literal pool
004b1c4c  ac 2f 4e 00 0c 3c 00 00 68 32 00 00              .byte 0xac, 0x2f, 0x4e, 0x00, 0x0c, 0x3c, 0x00, 0x00, 0x68, 0x32, 0x00, 0x00

; FUNCTION 0x004b1c58, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::ModelDict
; alias: _ZN6Arrays9ModelDict9skipNamesEP11IStreamBase
; demangled: Arrays::ModelDict::skipNames(IStreamBase*)
; decoder-mode: arm
004b1c58  98 ff ff ea                                      b #0x4b1ac0

; FUNCTION 0x004b86f0, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::ModelDict
; alias: _ZN6Arrays9ModelDict4readEP11IStreamBase
; demangled: Arrays::ModelDict::read(IStreamBase*)
; decoder-mode: arm
004b86f0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b86f4  0c d0 4d e2                                      sub sp, sp, #0xc
004b86f8  00 a0 a0 e1                                      mov sl, r0
004b86fc  e3 6c f9 eb                                      bl #0x313a90
004b8700  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b8704  01 30 a0 e3                                      mov r3, #1
004b8708  00 00 53 e3                                      cmp r3, #0
004b870c  04 00 8d e5                                      str r0, [sp, #4]
004b8710  00 30 8d e5                                      str r3, [sp]
004b8714  06 60 8f e0                                      add r6, pc, r6
004b8718  10 00 00 1a                                      bne #0x4b8760
004b871c  04 30 8d e2                                      add r3, sp, #4
004b8720  02 20 83 e2                                      add r2, r3, #2
004b8724  01 30 83 e2                                      add r3, r3, #1
004b8728  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b872c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b8730  03 00 52 e1                                      cmp r2, r3
004b8734  01 10 20 e0                                      eor r1, r0, r1
004b8738  01 10 43 e5                                      strb r1, [r3, #-1]
004b873c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b8740  00 10 21 e0                                      eor r1, r1, r0
004b8744  01 10 c2 e5                                      strb r1, [r2, #1]
004b8748  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b874c  01 20 42 e2                                      sub r2, r2, #1
004b8750  00 10 21 e0                                      eor r1, r1, r0
004b8754  01 10 43 e5                                      strb r1, [r3, #-1]
004b8758  01 30 83 e2                                      add r3, r3, #1
004b875c  f1 ff ff 8a                                      bhi #0x4b8728
004b8760  8f ae ff eb                                      bl #0x4a41a4
004b8764  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b8768  04 40 9d e5                                      ldr r4, [sp, #4]
004b876c  0c 50 a0 e3                                      mov r5, #0xc
004b8770  07 30 96 e7                                      ldr r3, [r6, r7]
004b8774  95 04 00 e0                                      mul r0, r5, r4
004b8778  00 40 83 e5                                      str r4, [r3]
004b877c  08 00 80 e2                                      add r0, r0, #8
004b8780  01 10 a0 e3                                      mov r1, #1
004b8784  78 5f f9 eb                                      bl #0x31056c
004b8788  00 00 54 e3                                      cmp r4, #0
004b878c  00 50 80 e5                                      str r5, [r0]
004b8790  04 40 80 e5                                      str r4, [r0, #4]
004b8794  08 30 80 e2                                      add r3, r0, #8
004b8798  0a 00 00 0a                                      beq #0x4b87c8
004b879c  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b87a0  00 20 a0 e3                                      mov r2, #0
004b87a4  02 c0 a0 e1                                      mov ip, r2
004b87a8  01 10 96 e7                                      ldr r1, [r6, r1]
004b87ac  08 10 81 e2                                      add r1, r1, #8
004b87b0  01 20 82 e2                                      add r2, r2, #1
004b87b4  04 00 52 e1                                      cmp r2, r4
004b87b8  08 10 80 e5                                      str r1, [r0, #8]
004b87bc  10 c0 80 e5                                      str ip, [r0, #0x10]
004b87c0  0c 00 80 e2                                      add r0, r0, #0xc
004b87c4  f9 ff ff 1a                                      bne #0x4b87b0
004b87c8  07 20 96 e7                                      ldr r2, [r6, r7]
004b87cc  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b87d0  00 10 92 e5                                      ldr r1, [r2]
004b87d4  08 20 96 e7                                      ldr r2, [r6, r8]
004b87d8  00 00 51 e3                                      cmp r1, #0
004b87dc  00 30 82 e5                                      str r3, [r2]
004b87e0  0f 00 00 0a                                      beq #0x4b8824
004b87e4  00 40 a0 e3                                      mov r4, #0
004b87e8  04 50 a0 e1                                      mov r5, r4
004b87ec  01 00 00 ea                                      b #0x4b87f8
004b87f0  08 30 96 e7                                      ldr r3, [r6, r8]
004b87f4  00 30 93 e5                                      ldr r3, [r3]
004b87f8  04 00 83 e0                                      add r0, r3, r4
004b87fc  0a 10 a0 e1                                      mov r1, sl
004b8800  04 30 93 e7                                      ldr r3, [r3, r4]
004b8804  0f e0 a0 e1                                      mov lr, pc
004b8808  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b880c  07 30 96 e7                                      ldr r3, [r6, r7]
004b8810  01 50 85 e2                                      add r5, r5, #1
004b8814  0c 40 84 e2                                      add r4, r4, #0xc
004b8818  00 30 93 e5                                      ldr r3, [r3]
004b881c  05 00 53 e1                                      cmp r3, r5
004b8820  f2 ff ff 8a                                      bhi #0x4b87f0
004b8824  0c d0 8d e2                                      add sp, sp, #0xc
004b8828  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b882c  7c c3 4d 00 0c 3c 00 00 bc 0a 00 00 44 43 00 00  .byte 0x7c, 0xc3, 0x4d, 0x00, 0x0c, 0x3c, 0x00, 0x00, 0xbc, 0x0a, 0x00, 0x00, 0x44, 0x43, 0x00, 0x00
