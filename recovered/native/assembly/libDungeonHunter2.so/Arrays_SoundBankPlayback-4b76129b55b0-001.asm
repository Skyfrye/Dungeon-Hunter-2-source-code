; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a4fe4, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::SoundBankPlayback
; alias: _ZN6Arrays17SoundBankPlayback13finalizeNamesEv
; demangled: Arrays::SoundBankPlayback::finalizeNames()
; decoder-mode: arm
004a4fe4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a4fe8  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a4fec  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a4ff0  05 50 8f e0                                      add r5, pc, r5
004a4ff4  06 30 95 e7                                      ldr r3, [r5, r6]
004a4ff8  00 30 93 e5                                      ldr r3, [r3]
004a4ffc  00 00 53 e3                                      cmp r3, #0
004a5000  1a 00 00 0a                                      beq #0x4a5070
004a5004  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a5008  07 20 95 e7                                      ldr r2, [r5, r7]
004a500c  00 20 92 e5                                      ldr r2, [r2]
004a5010  00 00 52 e3                                      cmp r2, #0
004a5014  10 00 00 0a                                      beq #0x4a505c
004a5018  00 40 a0 e3                                      mov r4, #0
004a501c  01 00 00 ea                                      b #0x4a5028
004a5020  06 30 95 e7                                      ldr r3, [r5, r6]
004a5024  00 30 93 e5                                      ldr r3, [r3]
004a5028  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a502c  01 40 84 e2                                      add r4, r4, #1
004a5030  00 00 50 e3                                      cmp r0, #0
004a5034  02 00 00 0a                                      beq #0x4a5044
004a5038  00 ad f9 eb                                      bl #0x310440
004a503c  06 30 95 e7                                      ldr r3, [r5, r6]
004a5040  00 30 93 e5                                      ldr r3, [r3]
004a5044  07 20 95 e7                                      ldr r2, [r5, r7]
004a5048  00 20 92 e5                                      ldr r2, [r2]
004a504c  04 00 52 e1                                      cmp r2, r4
004a5050  f2 ff ff 8a                                      bhi #0x4a5020
004a5054  00 00 53 e3                                      cmp r3, #0
004a5058  01 00 00 0a                                      beq #0x4a5064
004a505c  03 00 a0 e1                                      mov r0, r3
004a5060  f6 ac f9 eb                                      bl #0x310440
004a5064  06 30 95 e7                                      ldr r3, [r5, r6]
004a5068  00 20 a0 e3                                      mov r2, #0
004a506c  00 20 83 e5                                      str r2, [r3]
004a5070  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a5074  a0 fa 4e 00 80 34 00 00 94 32 00 00              .byte 0xa0, 0xfa, 0x4e, 0x00, 0x80, 0x34, 0x00, 0x00, 0x94, 0x32, 0x00, 0x00

; FUNCTION 0x004a5080, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::SoundBankPlayback
; alias: _ZN6Arrays17SoundBankPlayback8finalizeEv
; demangled: Arrays::SoundBankPlayback::finalize()
; decoder-mode: arm
004a5080  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a5084  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a5088  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a508c  05 50 8f e0                                      add r5, pc, r5
004a5090  07 30 95 e7                                      ldr r3, [r5, r7]
004a5094  00 30 93 e5                                      ldr r3, [r3]
004a5098  00 00 53 e3                                      cmp r3, #0
004a509c  2c 00 00 0a                                      beq #0x4a5154
004a50a0  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a50a4  08 20 95 e7                                      ldr r2, [r5, r8]
004a50a8  00 20 92 e5                                      ldr r2, [r2]
004a50ac  00 00 52 e3                                      cmp r2, #0
004a50b0  12 00 00 0a                                      beq #0x4a5100
004a50b4  00 40 a0 e3                                      mov r4, #0
004a50b8  04 60 a0 e1                                      mov r6, r4
004a50bc  01 00 00 ea                                      b #0x4a50c8
004a50c0  07 30 95 e7                                      ldr r3, [r5, r7]
004a50c4  00 30 93 e5                                      ldr r3, [r3]
004a50c8  04 00 83 e0                                      add r0, r3, r4
004a50cc  04 30 93 e7                                      ldr r3, [r3, r4]
004a50d0  0f e0 a0 e1                                      mov lr, pc
004a50d4  08 f0 93 e5                                      ldr pc, [r3, #8]
004a50d8  08 30 95 e7                                      ldr r3, [r5, r8]
004a50dc  01 60 86 e2                                      add r6, r6, #1
004a50e0  0c 40 84 e2                                      add r4, r4, #0xc
004a50e4  00 30 93 e5                                      ldr r3, [r3]
004a50e8  06 00 53 e1                                      cmp r3, r6
004a50ec  f3 ff ff 8a                                      bhi #0x4a50c0
004a50f0  07 30 95 e7                                      ldr r3, [r5, r7]
004a50f4  00 30 93 e5                                      ldr r3, [r3]
004a50f8  00 00 53 e3                                      cmp r3, #0
004a50fc  11 00 00 0a                                      beq #0x4a5148
004a5100  04 20 13 e5                                      ldr r2, [r3, #-4]
004a5104  0c 00 a0 e3                                      mov r0, #0xc
004a5108  90 32 20 e0                                      mla r0, r0, r2, r3
004a510c  00 00 53 e1                                      cmp r3, r0
004a5110  01 00 00 1a                                      bne #0x4a511c
004a5114  09 00 00 ea                                      b #0x4a5140
004a5118  04 00 a0 e1                                      mov r0, r4
004a511c  0c 40 40 e2                                      sub r4, r0, #0xc
004a5120  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a5124  04 00 a0 e1                                      mov r0, r4
004a5128  0f e0 a0 e1                                      mov lr, pc
004a512c  00 f0 93 e5                                      ldr pc, [r3]
004a5130  07 30 95 e7                                      ldr r3, [r5, r7]
004a5134  00 00 93 e5                                      ldr r0, [r3]
004a5138  04 00 50 e1                                      cmp r0, r4
004a513c  f5 ff ff 1a                                      bne #0x4a5118
004a5140  08 00 40 e2                                      sub r0, r0, #8
004a5144  bd ac f9 eb                                      bl #0x310440
004a5148  07 30 95 e7                                      ldr r3, [r5, r7]
004a514c  00 20 a0 e3                                      mov r2, #0
004a5150  00 20 83 e5                                      str r2, [r3]
004a5154  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a5158  04 fa 4e 00 04 2d 00 00 94 32 00 00              .byte 0x04, 0xfa, 0x4e, 0x00, 0x04, 0x2d, 0x00, 0x00, 0x94, 0x32, 0x00, 0x00

; FUNCTION 0x004b0ad0, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::SoundBankPlayback
; alias: _ZN6Arrays17SoundBankPlayback9readNamesEP11IStreamBase
; demangled: Arrays::SoundBankPlayback::readNames(IStreamBase*)
; decoder-mode: arm
004b0ad0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b0ad4  00 70 a0 e1                                      mov r7, r0
004b0ad8  1c d0 4d e2                                      sub sp, sp, #0x1c
004b0adc  40 d1 ff eb                                      bl #0x4a4fe4
004b0ae0  07 00 a0 e1                                      mov r0, r7
004b0ae4  e9 8b f9 eb                                      bl #0x313a90
004b0ae8  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b0aec  01 30 a0 e3                                      mov r3, #1
004b0af0  00 00 53 e3                                      cmp r3, #0
004b0af4  06 60 8f e0                                      add r6, pc, r6
004b0af8  14 00 8d e5                                      str r0, [sp, #0x14]
004b0afc  0c 30 8d e5                                      str r3, [sp, #0xc]
004b0b00  12 00 00 1a                                      bne #0x4b0b50
004b0b04  14 30 8d e2                                      add r3, sp, #0x14
004b0b08  02 20 83 e2                                      add r2, r3, #2
004b0b0c  01 30 83 e2                                      add r3, r3, #1
004b0b10  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0b14  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b0b18  03 00 52 e1                                      cmp r2, r3
004b0b1c  02 40 a0 e1                                      mov r4, r2
004b0b20  01 10 20 e0                                      eor r1, r0, r1
004b0b24  01 10 43 e5                                      strb r1, [r3, #-1]
004b0b28  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0b2c  00 10 21 e0                                      eor r1, r1, r0
004b0b30  01 10 c2 e5                                      strb r1, [r2, #1]
004b0b34  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b0b38  01 20 42 e2                                      sub r2, r2, #1
004b0b3c  00 10 21 e0                                      eor r1, r1, r0
004b0b40  01 10 43 e5                                      strb r1, [r3, #-1]
004b0b44  01 30 83 e2                                      add r3, r3, #1
004b0b48  f0 ff ff 8a                                      bhi #0x4b0b10
004b0b4c  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b0b50  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b0b54  03 30 96 e7                                      ldr r3, [r6, r3]
004b0b58  00 30 93 e5                                      ldr r3, [r3]
004b0b5c  00 00 53 e1                                      cmp r3, r0
004b0b60  01 00 00 0a                                      beq #0x4b0b6c
004b0b64  1c d0 8d e2                                      add sp, sp, #0x1c
004b0b68  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b0b6c  00 01 a0 e1                                      lsl r0, r0, #2
004b0b70  01 10 a0 e3                                      mov r1, #1
004b0b74  7c 7e f9 eb                                      bl #0x31056c
004b0b78  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b0b7c  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b0b80  09 30 96 e7                                      ldr r3, [r6, sb]
004b0b84  00 00 52 e3                                      cmp r2, #0
004b0b88  00 00 83 e5                                      str r0, [r3]
004b0b8c  f4 ff ff 0a                                      beq #0x4b0b64
004b0b90  10 a0 8d e2                                      add sl, sp, #0x10
004b0b94  01 80 a0 e3                                      mov r8, #1
004b0b98  08 10 8a e0                                      add r1, sl, r8
004b0b9c  02 30 8a e2                                      add r3, sl, #2
004b0ba0  00 40 a0 e3                                      mov r4, #0
004b0ba4  0a 00 8d e8                                      stm sp, {r1, r3}
004b0ba8  07 00 a0 e1                                      mov r0, r7
004b0bac  0a 10 a0 e1                                      mov r1, sl
004b0bb0  7a b9 fc eb                                      bl #0x3df1a0
004b0bb4  00 00 58 e3                                      cmp r8, #0
004b0bb8  0c 80 8d e5                                      str r8, [sp, #0xc]
004b0bbc  0f 00 00 1a                                      bne #0x4b0c00
004b0bc0  00 30 9d e5                                      ldr r3, [sp]
004b0bc4  04 20 9d e5                                      ldr r2, [sp, #4]
004b0bc8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0bcc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b0bd0  03 00 52 e1                                      cmp r2, r3
004b0bd4  01 10 20 e0                                      eor r1, r0, r1
004b0bd8  01 10 43 e5                                      strb r1, [r3, #-1]
004b0bdc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0be0  00 10 21 e0                                      eor r1, r1, r0
004b0be4  01 10 c2 e5                                      strb r1, [r2, #1]
004b0be8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b0bec  01 20 42 e2                                      sub r2, r2, #1
004b0bf0  00 10 21 e0                                      eor r1, r1, r0
004b0bf4  01 10 43 e5                                      strb r1, [r3, #-1]
004b0bf8  01 30 83 e2                                      add r3, r3, #1
004b0bfc  f1 ff ff 8a                                      bhi #0x4b0bc8
004b0c00  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b0c04  09 50 96 e7                                      ldr r5, [r6, sb]
004b0c08  01 10 a0 e3                                      mov r1, #1
004b0c0c  01 00 80 e0                                      add r0, r0, r1
004b0c10  00 b0 95 e5                                      ldr fp, [r5]
004b0c14  54 7e f9 eb                                      bl #0x31056c
004b0c18  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b0c1c  00 30 95 e5                                      ldr r3, [r5]
004b0c20  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b0c24  07 00 a0 e1                                      mov r0, r7
004b0c28  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b0c2c  00 30 a0 e3                                      mov r3, #0
004b0c30  07 9a f9 eb                                      bl #0x317454
004b0c34  00 30 95 e5                                      ldr r3, [r5]
004b0c38  00 10 a0 e3                                      mov r1, #0
004b0c3c  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b0c40  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b0c44  01 40 84 e2                                      add r4, r4, #1
004b0c48  03 10 c2 e7                                      strb r1, [r2, r3]
004b0c4c  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b0c50  04 00 53 e1                                      cmp r3, r4
004b0c54  d3 ff ff 8a                                      bhi #0x4b0ba8
004b0c58  c1 ff ff ea                                      b #0x4b0b64
; mapping-symbol data/literal pool
004b0c5c  9c 3f 4e 00 94 32 00 00 80 34 00 00              .byte 0x9c, 0x3f, 0x4e, 0x00, 0x94, 0x32, 0x00, 0x00, 0x80, 0x34, 0x00, 0x00

; FUNCTION 0x004b9434, declared_size=324, range_size=324, mode=arm
; class-group: Arrays::SoundBankPlayback
; alias: _ZN6Arrays17SoundBankPlayback4readEP11IStreamBase
; demangled: Arrays::SoundBankPlayback::read(IStreamBase*)
; decoder-mode: arm
004b9434  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b9438  0c d0 4d e2                                      sub sp, sp, #0xc
004b943c  00 a0 a0 e1                                      mov sl, r0
004b9440  92 69 f9 eb                                      bl #0x313a90
004b9444  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
004b9448  01 30 a0 e3                                      mov r3, #1
004b944c  00 00 53 e3                                      cmp r3, #0
004b9450  04 00 8d e5                                      str r0, [sp, #4]
004b9454  00 30 8d e5                                      str r3, [sp]
004b9458  06 60 8f e0                                      add r6, pc, r6
004b945c  10 00 00 1a                                      bne #0x4b94a4
004b9460  04 30 8d e2                                      add r3, sp, #4
004b9464  02 20 83 e2                                      add r2, r3, #2
004b9468  01 30 83 e2                                      add r3, r3, #1
004b946c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b9470  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b9474  03 00 52 e1                                      cmp r2, r3
004b9478  01 10 20 e0                                      eor r1, r0, r1
004b947c  01 10 43 e5                                      strb r1, [r3, #-1]
004b9480  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b9484  00 10 21 e0                                      eor r1, r1, r0
004b9488  01 10 c2 e5                                      strb r1, [r2, #1]
004b948c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b9490  01 20 42 e2                                      sub r2, r2, #1
004b9494  00 10 21 e0                                      eor r1, r1, r0
004b9498  01 10 43 e5                                      strb r1, [r3, #-1]
004b949c  01 30 83 e2                                      add r3, r3, #1
004b94a0  f1 ff ff 8a                                      bhi #0x4b946c
004b94a4  f5 ae ff eb                                      bl #0x4a5080
004b94a8  bc 70 9f e5                                      ldr r7, [pc, #0xbc]
004b94ac  04 40 9d e5                                      ldr r4, [sp, #4]
004b94b0  0c 50 a0 e3                                      mov r5, #0xc
004b94b4  07 30 96 e7                                      ldr r3, [r6, r7]
004b94b8  95 04 00 e0                                      mul r0, r5, r4
004b94bc  00 40 83 e5                                      str r4, [r3]
004b94c0  08 00 80 e2                                      add r0, r0, #8
004b94c4  01 10 a0 e3                                      mov r1, #1
004b94c8  27 5c f9 eb                                      bl #0x31056c
004b94cc  00 00 54 e3                                      cmp r4, #0
004b94d0  00 50 80 e5                                      str r5, [r0]
004b94d4  04 40 80 e5                                      str r4, [r0, #4]
004b94d8  08 30 80 e2                                      add r3, r0, #8
004b94dc  08 00 00 0a                                      beq #0x4b9504
004b94e0  88 10 9f e5                                      ldr r1, [pc, #0x88]
004b94e4  00 20 a0 e3                                      mov r2, #0
004b94e8  01 10 96 e7                                      ldr r1, [r6, r1]
004b94ec  08 10 81 e2                                      add r1, r1, #8
004b94f0  01 20 82 e2                                      add r2, r2, #1
004b94f4  04 00 52 e1                                      cmp r2, r4
004b94f8  08 10 80 e5                                      str r1, [r0, #8]
004b94fc  0c 00 80 e2                                      add r0, r0, #0xc
004b9500  fa ff ff 1a                                      bne #0x4b94f0
004b9504  07 20 96 e7                                      ldr r2, [r6, r7]
004b9508  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b950c  00 10 92 e5                                      ldr r1, [r2]
004b9510  08 20 96 e7                                      ldr r2, [r6, r8]
004b9514  00 00 51 e3                                      cmp r1, #0
004b9518  00 30 82 e5                                      str r3, [r2]
004b951c  0f 00 00 0a                                      beq #0x4b9560
004b9520  00 40 a0 e3                                      mov r4, #0
004b9524  04 50 a0 e1                                      mov r5, r4
004b9528  01 00 00 ea                                      b #0x4b9534
004b952c  08 30 96 e7                                      ldr r3, [r6, r8]
004b9530  00 30 93 e5                                      ldr r3, [r3]
004b9534  04 00 83 e0                                      add r0, r3, r4
004b9538  0a 10 a0 e1                                      mov r1, sl
004b953c  04 30 93 e7                                      ldr r3, [r3, r4]
004b9540  0f e0 a0 e1                                      mov lr, pc
004b9544  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b9548  07 30 96 e7                                      ldr r3, [r6, r7]
004b954c  01 50 85 e2                                      add r5, r5, #1
004b9550  0c 40 84 e2                                      add r4, r4, #0xc
004b9554  00 30 93 e5                                      ldr r3, [r3]
004b9558  05 00 53 e1                                      cmp r3, r5
004b955c  f2 ff ff 8a                                      bhi #0x4b952c
004b9560  0c d0 8d e2                                      add sp, sp, #0xc
004b9564  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b9568  38 b6 4d 00 94 32 00 00 28 14 00 00 04 2d 00 00  .byte 0x38, 0xb6, 0x4d, 0x00, 0x94, 0x32, 0x00, 0x00, 0x28, 0x14, 0x00, 0x00, 0x04, 0x2d, 0x00, 0x00
