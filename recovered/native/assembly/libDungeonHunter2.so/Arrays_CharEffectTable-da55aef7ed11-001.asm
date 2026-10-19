; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a8728, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::CharEffectTable
; alias: _ZN6Arrays15CharEffectTable13finalizeNamesEv
; demangled: Arrays::CharEffectTable::finalizeNames()
; decoder-mode: arm
004a8728  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a872c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a8730  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a8734  05 50 8f e0                                      add r5, pc, r5
004a8738  06 30 95 e7                                      ldr r3, [r5, r6]
004a873c  00 30 93 e5                                      ldr r3, [r3]
004a8740  00 00 53 e3                                      cmp r3, #0
004a8744  1a 00 00 0a                                      beq #0x4a87b4
004a8748  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a874c  07 20 95 e7                                      ldr r2, [r5, r7]
004a8750  00 20 92 e5                                      ldr r2, [r2]
004a8754  00 00 52 e3                                      cmp r2, #0
004a8758  10 00 00 0a                                      beq #0x4a87a0
004a875c  00 40 a0 e3                                      mov r4, #0
004a8760  01 00 00 ea                                      b #0x4a876c
004a8764  06 30 95 e7                                      ldr r3, [r5, r6]
004a8768  00 30 93 e5                                      ldr r3, [r3]
004a876c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a8770  01 40 84 e2                                      add r4, r4, #1
004a8774  00 00 50 e3                                      cmp r0, #0
004a8778  02 00 00 0a                                      beq #0x4a8788
004a877c  2f 9f f9 eb                                      bl #0x310440
004a8780  06 30 95 e7                                      ldr r3, [r5, r6]
004a8784  00 30 93 e5                                      ldr r3, [r3]
004a8788  07 20 95 e7                                      ldr r2, [r5, r7]
004a878c  00 20 92 e5                                      ldr r2, [r2]
004a8790  04 00 52 e1                                      cmp r2, r4
004a8794  f2 ff ff 8a                                      bhi #0x4a8764
004a8798  00 00 53 e3                                      cmp r3, #0
004a879c  01 00 00 0a                                      beq #0x4a87a8
004a87a0  03 00 a0 e1                                      mov r0, r3
004a87a4  25 9f f9 eb                                      bl #0x310440
004a87a8  06 30 95 e7                                      ldr r3, [r5, r6]
004a87ac  00 20 a0 e3                                      mov r2, #0
004a87b0  00 20 83 e5                                      str r2, [r3]
004a87b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a87b8  5c c3 4e 00 38 23 00 00 ec 11 00 00              .byte 0x5c, 0xc3, 0x4e, 0x00, 0x38, 0x23, 0x00, 0x00, 0xec, 0x11, 0x00, 0x00

; FUNCTION 0x004a87c4, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::CharEffectTable
; alias: _ZN6Arrays15CharEffectTable8finalizeEv
; demangled: Arrays::CharEffectTable::finalize()
; decoder-mode: arm
004a87c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a87c8  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a87cc  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a87d0  05 50 8f e0                                      add r5, pc, r5
004a87d4  07 30 95 e7                                      ldr r3, [r5, r7]
004a87d8  00 30 93 e5                                      ldr r3, [r3]
004a87dc  00 00 53 e3                                      cmp r3, #0
004a87e0  2c 00 00 0a                                      beq #0x4a8898
004a87e4  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a87e8  08 20 95 e7                                      ldr r2, [r5, r8]
004a87ec  00 20 92 e5                                      ldr r2, [r2]
004a87f0  00 00 52 e3                                      cmp r2, #0
004a87f4  12 00 00 0a                                      beq #0x4a8844
004a87f8  00 40 a0 e3                                      mov r4, #0
004a87fc  04 60 a0 e1                                      mov r6, r4
004a8800  01 00 00 ea                                      b #0x4a880c
004a8804  07 30 95 e7                                      ldr r3, [r5, r7]
004a8808  00 30 93 e5                                      ldr r3, [r3]
004a880c  04 00 83 e0                                      add r0, r3, r4
004a8810  04 30 93 e7                                      ldr r3, [r3, r4]
004a8814  0f e0 a0 e1                                      mov lr, pc
004a8818  08 f0 93 e5                                      ldr pc, [r3, #8]
004a881c  08 30 95 e7                                      ldr r3, [r5, r8]
004a8820  01 60 86 e2                                      add r6, r6, #1
004a8824  18 40 84 e2                                      add r4, r4, #0x18
004a8828  00 30 93 e5                                      ldr r3, [r3]
004a882c  06 00 53 e1                                      cmp r3, r6
004a8830  f3 ff ff 8a                                      bhi #0x4a8804
004a8834  07 30 95 e7                                      ldr r3, [r5, r7]
004a8838  00 30 93 e5                                      ldr r3, [r3]
004a883c  00 00 53 e3                                      cmp r3, #0
004a8840  11 00 00 0a                                      beq #0x4a888c
004a8844  04 20 13 e5                                      ldr r2, [r3, #-4]
004a8848  18 00 a0 e3                                      mov r0, #0x18
004a884c  90 32 20 e0                                      mla r0, r0, r2, r3
004a8850  00 00 53 e1                                      cmp r3, r0
004a8854  01 00 00 1a                                      bne #0x4a8860
004a8858  09 00 00 ea                                      b #0x4a8884
004a885c  04 00 a0 e1                                      mov r0, r4
004a8860  18 40 40 e2                                      sub r4, r0, #0x18
004a8864  18 30 10 e5                                      ldr r3, [r0, #-0x18]
004a8868  04 00 a0 e1                                      mov r0, r4
004a886c  0f e0 a0 e1                                      mov lr, pc
004a8870  00 f0 93 e5                                      ldr pc, [r3]
004a8874  07 30 95 e7                                      ldr r3, [r5, r7]
004a8878  00 00 93 e5                                      ldr r0, [r3]
004a887c  04 00 50 e1                                      cmp r0, r4
004a8880  f5 ff ff 1a                                      bne #0x4a885c
004a8884  08 00 40 e2                                      sub r0, r0, #8
004a8888  ec 9e f9 eb                                      bl #0x310440
004a888c  07 30 95 e7                                      ldr r3, [r5, r7]
004a8890  00 20 a0 e3                                      mov r2, #0
004a8894  00 20 83 e5                                      str r2, [r3]
004a8898  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a889c  c0 c2 4e 00 44 0f 00 00 ec 11 00 00              .byte 0xc0, 0xc2, 0x4e, 0x00, 0x44, 0x0f, 0x00, 0x00, 0xec, 0x11, 0x00, 0x00

; FUNCTION 0x004b2fa0, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::CharEffectTable
; alias: _ZN6Arrays15CharEffectTable9readNamesEP11IStreamBase
; demangled: Arrays::CharEffectTable::readNames(IStreamBase*)
; decoder-mode: arm
004b2fa0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b2fa4  00 70 a0 e1                                      mov r7, r0
004b2fa8  1c d0 4d e2                                      sub sp, sp, #0x1c
004b2fac  dd d5 ff eb                                      bl #0x4a8728
004b2fb0  07 00 a0 e1                                      mov r0, r7
004b2fb4  b5 82 f9 eb                                      bl #0x313a90
004b2fb8  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b2fbc  01 30 a0 e3                                      mov r3, #1
004b2fc0  00 00 53 e3                                      cmp r3, #0
004b2fc4  06 60 8f e0                                      add r6, pc, r6
004b2fc8  14 00 8d e5                                      str r0, [sp, #0x14]
004b2fcc  0c 30 8d e5                                      str r3, [sp, #0xc]
004b2fd0  12 00 00 1a                                      bne #0x4b3020
004b2fd4  14 30 8d e2                                      add r3, sp, #0x14
004b2fd8  02 20 83 e2                                      add r2, r3, #2
004b2fdc  01 30 83 e2                                      add r3, r3, #1
004b2fe0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2fe4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b2fe8  03 00 52 e1                                      cmp r2, r3
004b2fec  02 40 a0 e1                                      mov r4, r2
004b2ff0  01 10 20 e0                                      eor r1, r0, r1
004b2ff4  01 10 43 e5                                      strb r1, [r3, #-1]
004b2ff8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2ffc  00 10 21 e0                                      eor r1, r1, r0
004b3000  01 10 c2 e5                                      strb r1, [r2, #1]
004b3004  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b3008  01 20 42 e2                                      sub r2, r2, #1
004b300c  00 10 21 e0                                      eor r1, r1, r0
004b3010  01 10 43 e5                                      strb r1, [r3, #-1]
004b3014  01 30 83 e2                                      add r3, r3, #1
004b3018  f0 ff ff 8a                                      bhi #0x4b2fe0
004b301c  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b3020  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b3024  03 30 96 e7                                      ldr r3, [r6, r3]
004b3028  00 30 93 e5                                      ldr r3, [r3]
004b302c  00 00 53 e1                                      cmp r3, r0
004b3030  01 00 00 0a                                      beq #0x4b303c
004b3034  1c d0 8d e2                                      add sp, sp, #0x1c
004b3038  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b303c  00 01 a0 e1                                      lsl r0, r0, #2
004b3040  01 10 a0 e3                                      mov r1, #1
004b3044  48 75 f9 eb                                      bl #0x31056c
004b3048  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b304c  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b3050  09 30 96 e7                                      ldr r3, [r6, sb]
004b3054  00 00 52 e3                                      cmp r2, #0
004b3058  00 00 83 e5                                      str r0, [r3]
004b305c  f4 ff ff 0a                                      beq #0x4b3034
004b3060  10 a0 8d e2                                      add sl, sp, #0x10
004b3064  01 80 a0 e3                                      mov r8, #1
004b3068  08 10 8a e0                                      add r1, sl, r8
004b306c  02 30 8a e2                                      add r3, sl, #2
004b3070  00 40 a0 e3                                      mov r4, #0
004b3074  0a 00 8d e8                                      stm sp, {r1, r3}
004b3078  07 00 a0 e1                                      mov r0, r7
004b307c  0a 10 a0 e1                                      mov r1, sl
004b3080  46 b0 fc eb                                      bl #0x3df1a0
004b3084  00 00 58 e3                                      cmp r8, #0
004b3088  0c 80 8d e5                                      str r8, [sp, #0xc]
004b308c  0f 00 00 1a                                      bne #0x4b30d0
004b3090  00 30 9d e5                                      ldr r3, [sp]
004b3094  04 20 9d e5                                      ldr r2, [sp, #4]
004b3098  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b309c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b30a0  03 00 52 e1                                      cmp r2, r3
004b30a4  01 10 20 e0                                      eor r1, r0, r1
004b30a8  01 10 43 e5                                      strb r1, [r3, #-1]
004b30ac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b30b0  00 10 21 e0                                      eor r1, r1, r0
004b30b4  01 10 c2 e5                                      strb r1, [r2, #1]
004b30b8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b30bc  01 20 42 e2                                      sub r2, r2, #1
004b30c0  00 10 21 e0                                      eor r1, r1, r0
004b30c4  01 10 43 e5                                      strb r1, [r3, #-1]
004b30c8  01 30 83 e2                                      add r3, r3, #1
004b30cc  f1 ff ff 8a                                      bhi #0x4b3098
004b30d0  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b30d4  09 50 96 e7                                      ldr r5, [r6, sb]
004b30d8  01 10 a0 e3                                      mov r1, #1
004b30dc  01 00 80 e0                                      add r0, r0, r1
004b30e0  00 b0 95 e5                                      ldr fp, [r5]
004b30e4  20 75 f9 eb                                      bl #0x31056c
004b30e8  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b30ec  00 30 95 e5                                      ldr r3, [r5]
004b30f0  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b30f4  07 00 a0 e1                                      mov r0, r7
004b30f8  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b30fc  00 30 a0 e3                                      mov r3, #0
004b3100  d3 90 f9 eb                                      bl #0x317454
004b3104  00 30 95 e5                                      ldr r3, [r5]
004b3108  00 10 a0 e3                                      mov r1, #0
004b310c  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b3110  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b3114  01 40 84 e2                                      add r4, r4, #1
004b3118  03 10 c2 e7                                      strb r1, [r2, r3]
004b311c  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b3120  04 00 53 e1                                      cmp r3, r4
004b3124  d3 ff ff 8a                                      bhi #0x4b3078
004b3128  c1 ff ff ea                                      b #0x4b3034
; mapping-symbol data/literal pool
004b312c  cc 1a 4e 00 ec 11 00 00 38 23 00 00              .byte 0xcc, 0x1a, 0x4e, 0x00, 0xec, 0x11, 0x00, 0x00, 0x38, 0x23, 0x00, 0x00

; FUNCTION 0x004b3138, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::CharEffectTable
; alias: _ZN6Arrays15CharEffectTable9skipNamesEP11IStreamBase
; demangled: Arrays::CharEffectTable::skipNames(IStreamBase*)
; decoder-mode: arm
004b3138  98 ff ff ea                                      b #0x4b2fa0

; FUNCTION 0x004bc3c0, declared_size=324, range_size=324, mode=arm
; class-group: Arrays::CharEffectTable
; alias: _ZN6Arrays15CharEffectTable4readEP11IStreamBase
; demangled: Arrays::CharEffectTable::read(IStreamBase*)
; decoder-mode: arm
004bc3c0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004bc3c4  0c d0 4d e2                                      sub sp, sp, #0xc
004bc3c8  00 a0 a0 e1                                      mov sl, r0
004bc3cc  af 5d f9 eb                                      bl #0x313a90
004bc3d0  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
004bc3d4  01 30 a0 e3                                      mov r3, #1
004bc3d8  00 00 53 e3                                      cmp r3, #0
004bc3dc  04 00 8d e5                                      str r0, [sp, #4]
004bc3e0  00 30 8d e5                                      str r3, [sp]
004bc3e4  06 60 8f e0                                      add r6, pc, r6
004bc3e8  10 00 00 1a                                      bne #0x4bc430
004bc3ec  04 30 8d e2                                      add r3, sp, #4
004bc3f0  02 20 83 e2                                      add r2, r3, #2
004bc3f4  01 30 83 e2                                      add r3, r3, #1
004bc3f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bc3fc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bc400  03 00 52 e1                                      cmp r2, r3
004bc404  01 10 20 e0                                      eor r1, r0, r1
004bc408  01 10 43 e5                                      strb r1, [r3, #-1]
004bc40c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bc410  00 10 21 e0                                      eor r1, r1, r0
004bc414  01 10 c2 e5                                      strb r1, [r2, #1]
004bc418  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bc41c  01 20 42 e2                                      sub r2, r2, #1
004bc420  00 10 21 e0                                      eor r1, r1, r0
004bc424  01 10 43 e5                                      strb r1, [r3, #-1]
004bc428  01 30 83 e2                                      add r3, r3, #1
004bc42c  f1 ff ff 8a                                      bhi #0x4bc3f8
004bc430  c0 70 9f e5                                      ldr r7, [pc, #0xc0]
004bc434  e2 b0 ff eb                                      bl #0x4a87c4
004bc438  04 40 9d e5                                      ldr r4, [sp, #4]
004bc43c  07 30 96 e7                                      ldr r3, [r6, r7]
004bc440  01 10 a0 e3                                      mov r1, #1
004bc444  84 00 84 e0                                      add r0, r4, r4, lsl #1
004bc448  01 00 80 e0                                      add r0, r0, r1
004bc44c  00 40 83 e5                                      str r4, [r3]
004bc450  80 01 a0 e1                                      lsl r0, r0, #3
004bc454  44 50 f9 eb                                      bl #0x31056c
004bc458  18 30 a0 e3                                      mov r3, #0x18
004bc45c  00 00 54 e3                                      cmp r4, #0
004bc460  18 00 80 e8                                      stm r0, {r3, r4}
004bc464  08 30 80 e2                                      add r3, r0, #8
004bc468  08 00 00 0a                                      beq #0x4bc490
004bc46c  88 10 9f e5                                      ldr r1, [pc, #0x88]
004bc470  00 20 a0 e3                                      mov r2, #0
004bc474  01 10 96 e7                                      ldr r1, [r6, r1]
004bc478  08 10 81 e2                                      add r1, r1, #8
004bc47c  01 20 82 e2                                      add r2, r2, #1
004bc480  04 00 52 e1                                      cmp r2, r4
004bc484  08 10 80 e5                                      str r1, [r0, #8]
004bc488  18 00 80 e2                                      add r0, r0, #0x18
004bc48c  fa ff ff 1a                                      bne #0x4bc47c
004bc490  07 20 96 e7                                      ldr r2, [r6, r7]
004bc494  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bc498  00 10 92 e5                                      ldr r1, [r2]
004bc49c  08 20 96 e7                                      ldr r2, [r6, r8]
004bc4a0  00 00 51 e3                                      cmp r1, #0
004bc4a4  00 30 82 e5                                      str r3, [r2]
004bc4a8  0f 00 00 0a                                      beq #0x4bc4ec
004bc4ac  00 40 a0 e3                                      mov r4, #0
004bc4b0  04 50 a0 e1                                      mov r5, r4
004bc4b4  01 00 00 ea                                      b #0x4bc4c0
004bc4b8  08 30 96 e7                                      ldr r3, [r6, r8]
004bc4bc  00 30 93 e5                                      ldr r3, [r3]
004bc4c0  04 00 83 e0                                      add r0, r3, r4
004bc4c4  0a 10 a0 e1                                      mov r1, sl
004bc4c8  04 30 93 e7                                      ldr r3, [r3, r4]
004bc4cc  0f e0 a0 e1                                      mov lr, pc
004bc4d0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bc4d4  07 30 96 e7                                      ldr r3, [r6, r7]
004bc4d8  01 50 85 e2                                      add r5, r5, #1
004bc4dc  18 40 84 e2                                      add r4, r4, #0x18
004bc4e0  00 30 93 e5                                      ldr r3, [r3]
004bc4e4  05 00 53 e1                                      cmp r3, r5
004bc4e8  f2 ff ff 8a                                      bhi #0x4bc4b8
004bc4ec  0c d0 8d e2                                      add sp, sp, #0xc
004bc4f0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bc4f4  ac 86 4d 00 ec 11 00 00 50 2c 00 00 44 0f 00 00  .byte 0xac, 0x86, 0x4d, 0x00, 0xec, 0x11, 0x00, 0x00, 0x50, 0x2c, 0x00, 0x00, 0x44, 0x0f, 0x00, 0x00
