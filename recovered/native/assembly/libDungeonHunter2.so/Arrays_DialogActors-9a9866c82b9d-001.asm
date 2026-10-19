; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a8ba8, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::DialogActors
; alias: _ZN6Arrays12DialogActors13finalizeNamesEv
; demangled: Arrays::DialogActors::finalizeNames()
; decoder-mode: arm
004a8ba8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a8bac  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a8bb0  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a8bb4  05 50 8f e0                                      add r5, pc, r5
004a8bb8  06 30 95 e7                                      ldr r3, [r5, r6]
004a8bbc  00 30 93 e5                                      ldr r3, [r3]
004a8bc0  00 00 53 e3                                      cmp r3, #0
004a8bc4  1a 00 00 0a                                      beq #0x4a8c34
004a8bc8  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a8bcc  07 20 95 e7                                      ldr r2, [r5, r7]
004a8bd0  00 20 92 e5                                      ldr r2, [r2]
004a8bd4  00 00 52 e3                                      cmp r2, #0
004a8bd8  10 00 00 0a                                      beq #0x4a8c20
004a8bdc  00 40 a0 e3                                      mov r4, #0
004a8be0  01 00 00 ea                                      b #0x4a8bec
004a8be4  06 30 95 e7                                      ldr r3, [r5, r6]
004a8be8  00 30 93 e5                                      ldr r3, [r3]
004a8bec  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a8bf0  01 40 84 e2                                      add r4, r4, #1
004a8bf4  00 00 50 e3                                      cmp r0, #0
004a8bf8  02 00 00 0a                                      beq #0x4a8c08
004a8bfc  0f 9e f9 eb                                      bl #0x310440
004a8c00  06 30 95 e7                                      ldr r3, [r5, r6]
004a8c04  00 30 93 e5                                      ldr r3, [r3]
004a8c08  07 20 95 e7                                      ldr r2, [r5, r7]
004a8c0c  00 20 92 e5                                      ldr r2, [r2]
004a8c10  04 00 52 e1                                      cmp r2, r4
004a8c14  f2 ff ff 8a                                      bhi #0x4a8be4
004a8c18  00 00 53 e3                                      cmp r3, #0
004a8c1c  01 00 00 0a                                      beq #0x4a8c28
004a8c20  03 00 a0 e1                                      mov r0, r3
004a8c24  05 9e f9 eb                                      bl #0x310440
004a8c28  06 30 95 e7                                      ldr r3, [r5, r6]
004a8c2c  00 20 a0 e3                                      mov r2, #0
004a8c30  00 20 83 e5                                      str r2, [r3]
004a8c34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a8c38  dc be 4e 00 78 3b 00 00 64 49 00 00              .byte 0xdc, 0xbe, 0x4e, 0x00, 0x78, 0x3b, 0x00, 0x00, 0x64, 0x49, 0x00, 0x00

; FUNCTION 0x004a8c44, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::DialogActors
; alias: _ZN6Arrays12DialogActors8finalizeEv
; demangled: Arrays::DialogActors::finalize()
; decoder-mode: arm
004a8c44  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a8c48  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a8c4c  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a8c50  05 50 8f e0                                      add r5, pc, r5
004a8c54  07 30 95 e7                                      ldr r3, [r5, r7]
004a8c58  00 30 93 e5                                      ldr r3, [r3]
004a8c5c  00 00 53 e3                                      cmp r3, #0
004a8c60  2c 00 00 0a                                      beq #0x4a8d18
004a8c64  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a8c68  08 20 95 e7                                      ldr r2, [r5, r8]
004a8c6c  00 20 92 e5                                      ldr r2, [r2]
004a8c70  00 00 52 e3                                      cmp r2, #0
004a8c74  12 00 00 0a                                      beq #0x4a8cc4
004a8c78  00 40 a0 e3                                      mov r4, #0
004a8c7c  04 60 a0 e1                                      mov r6, r4
004a8c80  01 00 00 ea                                      b #0x4a8c8c
004a8c84  07 30 95 e7                                      ldr r3, [r5, r7]
004a8c88  00 30 93 e5                                      ldr r3, [r3]
004a8c8c  04 00 83 e0                                      add r0, r3, r4
004a8c90  04 30 93 e7                                      ldr r3, [r3, r4]
004a8c94  0f e0 a0 e1                                      mov lr, pc
004a8c98  08 f0 93 e5                                      ldr pc, [r3, #8]
004a8c9c  08 30 95 e7                                      ldr r3, [r5, r8]
004a8ca0  01 60 86 e2                                      add r6, r6, #1
004a8ca4  14 40 84 e2                                      add r4, r4, #0x14
004a8ca8  00 30 93 e5                                      ldr r3, [r3]
004a8cac  06 00 53 e1                                      cmp r3, r6
004a8cb0  f3 ff ff 8a                                      bhi #0x4a8c84
004a8cb4  07 30 95 e7                                      ldr r3, [r5, r7]
004a8cb8  00 30 93 e5                                      ldr r3, [r3]
004a8cbc  00 00 53 e3                                      cmp r3, #0
004a8cc0  11 00 00 0a                                      beq #0x4a8d0c
004a8cc4  04 20 13 e5                                      ldr r2, [r3, #-4]
004a8cc8  14 00 a0 e3                                      mov r0, #0x14
004a8ccc  90 32 20 e0                                      mla r0, r0, r2, r3
004a8cd0  00 00 53 e1                                      cmp r3, r0
004a8cd4  01 00 00 1a                                      bne #0x4a8ce0
004a8cd8  09 00 00 ea                                      b #0x4a8d04
004a8cdc  04 00 a0 e1                                      mov r0, r4
004a8ce0  14 40 40 e2                                      sub r4, r0, #0x14
004a8ce4  14 30 10 e5                                      ldr r3, [r0, #-0x14]
004a8ce8  04 00 a0 e1                                      mov r0, r4
004a8cec  0f e0 a0 e1                                      mov lr, pc
004a8cf0  00 f0 93 e5                                      ldr pc, [r3]
004a8cf4  07 30 95 e7                                      ldr r3, [r5, r7]
004a8cf8  00 00 93 e5                                      ldr r0, [r3]
004a8cfc  04 00 50 e1                                      cmp r0, r4
004a8d00  f5 ff ff 1a                                      bne #0x4a8cdc
004a8d04  08 00 40 e2                                      sub r0, r0, #8
004a8d08  cc 9d f9 eb                                      bl #0x310440
004a8d0c  07 30 95 e7                                      ldr r3, [r5, r7]
004a8d10  00 20 a0 e3                                      mov r2, #0
004a8d14  00 20 83 e5                                      str r2, [r3]
004a8d18  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a8d1c  40 be 4e 00 a4 36 00 00 64 49 00 00              .byte 0x40, 0xbe, 0x4e, 0x00, 0xa4, 0x36, 0x00, 0x00, 0x64, 0x49, 0x00, 0x00

; FUNCTION 0x004b3470, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::DialogActors
; alias: _ZN6Arrays12DialogActors9readNamesEP11IStreamBase
; demangled: Arrays::DialogActors::readNames(IStreamBase*)
; decoder-mode: arm
004b3470  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b3474  00 70 a0 e1                                      mov r7, r0
004b3478  1c d0 4d e2                                      sub sp, sp, #0x1c
004b347c  c9 d5 ff eb                                      bl #0x4a8ba8
004b3480  07 00 a0 e1                                      mov r0, r7
004b3484  81 81 f9 eb                                      bl #0x313a90
004b3488  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b348c  01 30 a0 e3                                      mov r3, #1
004b3490  00 00 53 e3                                      cmp r3, #0
004b3494  06 60 8f e0                                      add r6, pc, r6
004b3498  14 00 8d e5                                      str r0, [sp, #0x14]
004b349c  0c 30 8d e5                                      str r3, [sp, #0xc]
004b34a0  12 00 00 1a                                      bne #0x4b34f0
004b34a4  14 30 8d e2                                      add r3, sp, #0x14
004b34a8  02 20 83 e2                                      add r2, r3, #2
004b34ac  01 30 83 e2                                      add r3, r3, #1
004b34b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b34b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b34b8  03 00 52 e1                                      cmp r2, r3
004b34bc  02 40 a0 e1                                      mov r4, r2
004b34c0  01 10 20 e0                                      eor r1, r0, r1
004b34c4  01 10 43 e5                                      strb r1, [r3, #-1]
004b34c8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b34cc  00 10 21 e0                                      eor r1, r1, r0
004b34d0  01 10 c2 e5                                      strb r1, [r2, #1]
004b34d4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b34d8  01 20 42 e2                                      sub r2, r2, #1
004b34dc  00 10 21 e0                                      eor r1, r1, r0
004b34e0  01 10 43 e5                                      strb r1, [r3, #-1]
004b34e4  01 30 83 e2                                      add r3, r3, #1
004b34e8  f0 ff ff 8a                                      bhi #0x4b34b0
004b34ec  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b34f0  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b34f4  03 30 96 e7                                      ldr r3, [r6, r3]
004b34f8  00 30 93 e5                                      ldr r3, [r3]
004b34fc  00 00 53 e1                                      cmp r3, r0
004b3500  01 00 00 0a                                      beq #0x4b350c
004b3504  1c d0 8d e2                                      add sp, sp, #0x1c
004b3508  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b350c  00 01 a0 e1                                      lsl r0, r0, #2
004b3510  01 10 a0 e3                                      mov r1, #1
004b3514  14 74 f9 eb                                      bl #0x31056c
004b3518  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b351c  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b3520  09 30 96 e7                                      ldr r3, [r6, sb]
004b3524  00 00 52 e3                                      cmp r2, #0
004b3528  00 00 83 e5                                      str r0, [r3]
004b352c  f4 ff ff 0a                                      beq #0x4b3504
004b3530  10 a0 8d e2                                      add sl, sp, #0x10
004b3534  01 80 a0 e3                                      mov r8, #1
004b3538  08 10 8a e0                                      add r1, sl, r8
004b353c  02 30 8a e2                                      add r3, sl, #2
004b3540  00 40 a0 e3                                      mov r4, #0
004b3544  0a 00 8d e8                                      stm sp, {r1, r3}
004b3548  07 00 a0 e1                                      mov r0, r7
004b354c  0a 10 a0 e1                                      mov r1, sl
004b3550  12 af fc eb                                      bl #0x3df1a0
004b3554  00 00 58 e3                                      cmp r8, #0
004b3558  0c 80 8d e5                                      str r8, [sp, #0xc]
004b355c  0f 00 00 1a                                      bne #0x4b35a0
004b3560  00 30 9d e5                                      ldr r3, [sp]
004b3564  04 20 9d e5                                      ldr r2, [sp, #4]
004b3568  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b356c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b3570  03 00 52 e1                                      cmp r2, r3
004b3574  01 10 20 e0                                      eor r1, r0, r1
004b3578  01 10 43 e5                                      strb r1, [r3, #-1]
004b357c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3580  00 10 21 e0                                      eor r1, r1, r0
004b3584  01 10 c2 e5                                      strb r1, [r2, #1]
004b3588  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b358c  01 20 42 e2                                      sub r2, r2, #1
004b3590  00 10 21 e0                                      eor r1, r1, r0
004b3594  01 10 43 e5                                      strb r1, [r3, #-1]
004b3598  01 30 83 e2                                      add r3, r3, #1
004b359c  f1 ff ff 8a                                      bhi #0x4b3568
004b35a0  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b35a4  09 50 96 e7                                      ldr r5, [r6, sb]
004b35a8  01 10 a0 e3                                      mov r1, #1
004b35ac  01 00 80 e0                                      add r0, r0, r1
004b35b0  00 b0 95 e5                                      ldr fp, [r5]
004b35b4  ec 73 f9 eb                                      bl #0x31056c
004b35b8  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b35bc  00 30 95 e5                                      ldr r3, [r5]
004b35c0  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b35c4  07 00 a0 e1                                      mov r0, r7
004b35c8  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b35cc  00 30 a0 e3                                      mov r3, #0
004b35d0  9f 8f f9 eb                                      bl #0x317454
004b35d4  00 30 95 e5                                      ldr r3, [r5]
004b35d8  00 10 a0 e3                                      mov r1, #0
004b35dc  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b35e0  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b35e4  01 40 84 e2                                      add r4, r4, #1
004b35e8  03 10 c2 e7                                      strb r1, [r2, r3]
004b35ec  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b35f0  04 00 53 e1                                      cmp r3, r4
004b35f4  d3 ff ff 8a                                      bhi #0x4b3548
004b35f8  c1 ff ff ea                                      b #0x4b3504
; mapping-symbol data/literal pool
004b35fc  fc 15 4e 00 64 49 00 00 78 3b 00 00              .byte 0xfc, 0x15, 0x4e, 0x00, 0x64, 0x49, 0x00, 0x00, 0x78, 0x3b, 0x00, 0x00

; FUNCTION 0x004b3608, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::DialogActors
; alias: _ZN6Arrays12DialogActors9skipNamesEP11IStreamBase
; demangled: Arrays::DialogActors::skipNames(IStreamBase*)
; decoder-mode: arm
004b3608  98 ff ff ea                                      b #0x4b3470

; FUNCTION 0x004bc798, declared_size=328, range_size=328, mode=arm
; class-group: Arrays::DialogActors
; alias: _ZN6Arrays12DialogActors4readEP11IStreamBase
; demangled: Arrays::DialogActors::read(IStreamBase*)
; decoder-mode: arm
004bc798  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004bc79c  0c d0 4d e2                                      sub sp, sp, #0xc
004bc7a0  00 a0 a0 e1                                      mov sl, r0
004bc7a4  b9 5c f9 eb                                      bl #0x313a90
004bc7a8  20 61 9f e5                                      ldr r6, [pc, #0x120]
004bc7ac  01 30 a0 e3                                      mov r3, #1
004bc7b0  00 00 53 e3                                      cmp r3, #0
004bc7b4  04 00 8d e5                                      str r0, [sp, #4]
004bc7b8  00 30 8d e5                                      str r3, [sp]
004bc7bc  06 60 8f e0                                      add r6, pc, r6
004bc7c0  10 00 00 1a                                      bne #0x4bc808
004bc7c4  04 30 8d e2                                      add r3, sp, #4
004bc7c8  02 20 83 e2                                      add r2, r3, #2
004bc7cc  01 30 83 e2                                      add r3, r3, #1
004bc7d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bc7d4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bc7d8  03 00 52 e1                                      cmp r2, r3
004bc7dc  01 10 20 e0                                      eor r1, r0, r1
004bc7e0  01 10 43 e5                                      strb r1, [r3, #-1]
004bc7e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bc7e8  00 10 21 e0                                      eor r1, r1, r0
004bc7ec  01 10 c2 e5                                      strb r1, [r2, #1]
004bc7f0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bc7f4  01 20 42 e2                                      sub r2, r2, #1
004bc7f8  00 10 21 e0                                      eor r1, r1, r0
004bc7fc  01 10 43 e5                                      strb r1, [r3, #-1]
004bc800  01 30 83 e2                                      add r3, r3, #1
004bc804  f1 ff ff 8a                                      bhi #0x4bc7d0
004bc808  0d b1 ff eb                                      bl #0x4a8c44
004bc80c  c0 70 9f e5                                      ldr r7, [pc, #0xc0]
004bc810  04 40 9d e5                                      ldr r4, [sp, #4]
004bc814  14 50 a0 e3                                      mov r5, #0x14
004bc818  07 30 96 e7                                      ldr r3, [r6, r7]
004bc81c  95 04 00 e0                                      mul r0, r5, r4
004bc820  00 40 83 e5                                      str r4, [r3]
004bc824  08 00 80 e2                                      add r0, r0, #8
004bc828  01 10 a0 e3                                      mov r1, #1
004bc82c  4e 4f f9 eb                                      bl #0x31056c
004bc830  00 00 54 e3                                      cmp r4, #0
004bc834  00 50 80 e5                                      str r5, [r0]
004bc838  04 40 80 e5                                      str r4, [r0, #4]
004bc83c  08 30 80 e2                                      add r3, r0, #8
004bc840  09 00 00 0a                                      beq #0x4bc86c
004bc844  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
004bc848  00 20 a0 e3                                      mov r2, #0
004bc84c  02 c0 a0 e1                                      mov ip, r2
004bc850  01 10 96 e7                                      ldr r1, [r6, r1]
004bc854  08 10 81 e2                                      add r1, r1, #8
004bc858  01 20 82 e2                                      add r2, r2, #1
004bc85c  04 00 52 e1                                      cmp r2, r4
004bc860  08 10 80 e5                                      str r1, [r0, #8]
004bc864  14 c0 a0 e5                                      str ip, [r0, #0x14]!
004bc868  fa ff ff 1a                                      bne #0x4bc858
004bc86c  07 20 96 e7                                      ldr r2, [r6, r7]
004bc870  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bc874  00 10 92 e5                                      ldr r1, [r2]
004bc878  08 20 96 e7                                      ldr r2, [r6, r8]
004bc87c  00 00 51 e3                                      cmp r1, #0
004bc880  00 30 82 e5                                      str r3, [r2]
004bc884  0f 00 00 0a                                      beq #0x4bc8c8
004bc888  00 40 a0 e3                                      mov r4, #0
004bc88c  04 50 a0 e1                                      mov r5, r4
004bc890  01 00 00 ea                                      b #0x4bc89c
004bc894  08 30 96 e7                                      ldr r3, [r6, r8]
004bc898  00 30 93 e5                                      ldr r3, [r3]
004bc89c  04 00 83 e0                                      add r0, r3, r4
004bc8a0  0a 10 a0 e1                                      mov r1, sl
004bc8a4  04 30 93 e7                                      ldr r3, [r3, r4]
004bc8a8  0f e0 a0 e1                                      mov lr, pc
004bc8ac  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bc8b0  07 30 96 e7                                      ldr r3, [r6, r7]
004bc8b4  01 50 85 e2                                      add r5, r5, #1
004bc8b8  14 40 84 e2                                      add r4, r4, #0x14
004bc8bc  00 30 93 e5                                      ldr r3, [r3]
004bc8c0  05 00 53 e1                                      cmp r3, r5
004bc8c4  f2 ff ff 8a                                      bhi #0x4bc894
004bc8c8  0c d0 8d e2                                      add sp, sp, #0xc
004bc8cc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bc8d0  d4 82 4d 00 64 49 00 00 24 29 00 00 a4 36 00 00  .byte 0xd4, 0x82, 0x4d, 0x00, 0x64, 0x49, 0x00, 0x00, 0x24, 0x29, 0x00, 0x00, 0xa4, 0x36, 0x00, 0x00
