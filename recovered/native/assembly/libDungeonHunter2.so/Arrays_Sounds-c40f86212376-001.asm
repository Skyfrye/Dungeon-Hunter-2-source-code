; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a3808, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::Sounds
; alias: _ZN6Arrays6Sounds13finalizeNamesEv
; demangled: Arrays::Sounds::finalizeNames()
; decoder-mode: arm
004a3808  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a380c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a3810  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a3814  05 50 8f e0                                      add r5, pc, r5
004a3818  06 30 95 e7                                      ldr r3, [r5, r6]
004a381c  00 30 93 e5                                      ldr r3, [r3]
004a3820  00 00 53 e3                                      cmp r3, #0
004a3824  1a 00 00 0a                                      beq #0x4a3894
004a3828  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a382c  07 20 95 e7                                      ldr r2, [r5, r7]
004a3830  00 20 92 e5                                      ldr r2, [r2]
004a3834  00 00 52 e3                                      cmp r2, #0
004a3838  10 00 00 0a                                      beq #0x4a3880
004a383c  00 40 a0 e3                                      mov r4, #0
004a3840  01 00 00 ea                                      b #0x4a384c
004a3844  06 30 95 e7                                      ldr r3, [r5, r6]
004a3848  00 30 93 e5                                      ldr r3, [r3]
004a384c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a3850  01 40 84 e2                                      add r4, r4, #1
004a3854  00 00 50 e3                                      cmp r0, #0
004a3858  02 00 00 0a                                      beq #0x4a3868
004a385c  f7 b2 f9 eb                                      bl #0x310440
004a3860  06 30 95 e7                                      ldr r3, [r5, r6]
004a3864  00 30 93 e5                                      ldr r3, [r3]
004a3868  07 20 95 e7                                      ldr r2, [r5, r7]
004a386c  00 20 92 e5                                      ldr r2, [r2]
004a3870  04 00 52 e1                                      cmp r2, r4
004a3874  f2 ff ff 8a                                      bhi #0x4a3844
004a3878  00 00 53 e3                                      cmp r3, #0
004a387c  01 00 00 0a                                      beq #0x4a3888
004a3880  03 00 a0 e1                                      mov r0, r3
004a3884  ed b2 f9 eb                                      bl #0x310440
004a3888  06 30 95 e7                                      ldr r3, [r5, r6]
004a388c  00 20 a0 e3                                      mov r2, #0
004a3890  00 20 83 e5                                      str r2, [r3]
004a3894  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a3898  7c 12 4f 00 a8 39 00 00 38 3d 00 00              .byte 0x7c, 0x12, 0x4f, 0x00, 0xa8, 0x39, 0x00, 0x00, 0x38, 0x3d, 0x00, 0x00

; FUNCTION 0x004a38a4, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::Sounds
; alias: _ZN6Arrays6Sounds8finalizeEv
; demangled: Arrays::Sounds::finalize()
; decoder-mode: arm
004a38a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a38a8  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a38ac  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a38b0  05 50 8f e0                                      add r5, pc, r5
004a38b4  07 30 95 e7                                      ldr r3, [r5, r7]
004a38b8  00 30 93 e5                                      ldr r3, [r3]
004a38bc  00 00 53 e3                                      cmp r3, #0
004a38c0  2c 00 00 0a                                      beq #0x4a3978
004a38c4  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a38c8  08 20 95 e7                                      ldr r2, [r5, r8]
004a38cc  00 20 92 e5                                      ldr r2, [r2]
004a38d0  00 00 52 e3                                      cmp r2, #0
004a38d4  12 00 00 0a                                      beq #0x4a3924
004a38d8  00 40 a0 e3                                      mov r4, #0
004a38dc  04 60 a0 e1                                      mov r6, r4
004a38e0  01 00 00 ea                                      b #0x4a38ec
004a38e4  07 30 95 e7                                      ldr r3, [r5, r7]
004a38e8  00 30 93 e5                                      ldr r3, [r3]
004a38ec  04 00 83 e0                                      add r0, r3, r4
004a38f0  04 30 93 e7                                      ldr r3, [r3, r4]
004a38f4  0f e0 a0 e1                                      mov lr, pc
004a38f8  08 f0 93 e5                                      ldr pc, [r3, #8]
004a38fc  08 30 95 e7                                      ldr r3, [r5, r8]
004a3900  01 60 86 e2                                      add r6, r6, #1
004a3904  0c 40 84 e2                                      add r4, r4, #0xc
004a3908  00 30 93 e5                                      ldr r3, [r3]
004a390c  06 00 53 e1                                      cmp r3, r6
004a3910  f3 ff ff 8a                                      bhi #0x4a38e4
004a3914  07 30 95 e7                                      ldr r3, [r5, r7]
004a3918  00 30 93 e5                                      ldr r3, [r3]
004a391c  00 00 53 e3                                      cmp r3, #0
004a3920  11 00 00 0a                                      beq #0x4a396c
004a3924  04 20 13 e5                                      ldr r2, [r3, #-4]
004a3928  0c 00 a0 e3                                      mov r0, #0xc
004a392c  90 32 20 e0                                      mla r0, r0, r2, r3
004a3930  00 00 53 e1                                      cmp r3, r0
004a3934  01 00 00 1a                                      bne #0x4a3940
004a3938  09 00 00 ea                                      b #0x4a3964
004a393c  04 00 a0 e1                                      mov r0, r4
004a3940  0c 40 40 e2                                      sub r4, r0, #0xc
004a3944  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a3948  04 00 a0 e1                                      mov r0, r4
004a394c  0f e0 a0 e1                                      mov lr, pc
004a3950  00 f0 93 e5                                      ldr pc, [r3]
004a3954  07 30 95 e7                                      ldr r3, [r5, r7]
004a3958  00 00 93 e5                                      ldr r0, [r3]
004a395c  04 00 50 e1                                      cmp r0, r4
004a3960  f5 ff ff 1a                                      bne #0x4a393c
004a3964  08 00 40 e2                                      sub r0, r0, #8
004a3968  b4 b2 f9 eb                                      bl #0x310440
004a396c  07 30 95 e7                                      ldr r3, [r5, r7]
004a3970  00 20 a0 e3                                      mov r2, #0
004a3974  00 20 83 e5                                      str r2, [r3]
004a3978  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a397c  e0 11 4f 00 3c 3e 00 00 38 3d 00 00              .byte 0xe0, 0x11, 0x4f, 0x00, 0x3c, 0x3e, 0x00, 0x00, 0x38, 0x3d, 0x00, 0x00

; FUNCTION 0x004b313c, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::Sounds
; alias: _ZN6Arrays6Sounds9readNamesEP11IStreamBase
; demangled: Arrays::Sounds::readNames(IStreamBase*)
; decoder-mode: arm
004b313c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b3140  00 70 a0 e1                                      mov r7, r0
004b3144  1c d0 4d e2                                      sub sp, sp, #0x1c
004b3148  ae c1 ff eb                                      bl #0x4a3808
004b314c  07 00 a0 e1                                      mov r0, r7
004b3150  4e 82 f9 eb                                      bl #0x313a90
004b3154  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b3158  01 30 a0 e3                                      mov r3, #1
004b315c  00 00 53 e3                                      cmp r3, #0
004b3160  06 60 8f e0                                      add r6, pc, r6
004b3164  14 00 8d e5                                      str r0, [sp, #0x14]
004b3168  0c 30 8d e5                                      str r3, [sp, #0xc]
004b316c  12 00 00 1a                                      bne #0x4b31bc
004b3170  14 30 8d e2                                      add r3, sp, #0x14
004b3174  02 20 83 e2                                      add r2, r3, #2
004b3178  01 30 83 e2                                      add r3, r3, #1
004b317c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3180  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b3184  03 00 52 e1                                      cmp r2, r3
004b3188  02 40 a0 e1                                      mov r4, r2
004b318c  01 10 20 e0                                      eor r1, r0, r1
004b3190  01 10 43 e5                                      strb r1, [r3, #-1]
004b3194  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3198  00 10 21 e0                                      eor r1, r1, r0
004b319c  01 10 c2 e5                                      strb r1, [r2, #1]
004b31a0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b31a4  01 20 42 e2                                      sub r2, r2, #1
004b31a8  00 10 21 e0                                      eor r1, r1, r0
004b31ac  01 10 43 e5                                      strb r1, [r3, #-1]
004b31b0  01 30 83 e2                                      add r3, r3, #1
004b31b4  f0 ff ff 8a                                      bhi #0x4b317c
004b31b8  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b31bc  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b31c0  03 30 96 e7                                      ldr r3, [r6, r3]
004b31c4  00 30 93 e5                                      ldr r3, [r3]
004b31c8  00 00 53 e1                                      cmp r3, r0
004b31cc  01 00 00 0a                                      beq #0x4b31d8
004b31d0  1c d0 8d e2                                      add sp, sp, #0x1c
004b31d4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b31d8  00 01 a0 e1                                      lsl r0, r0, #2
004b31dc  01 10 a0 e3                                      mov r1, #1
004b31e0  e1 74 f9 eb                                      bl #0x31056c
004b31e4  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b31e8  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b31ec  09 30 96 e7                                      ldr r3, [r6, sb]
004b31f0  00 00 52 e3                                      cmp r2, #0
004b31f4  00 00 83 e5                                      str r0, [r3]
004b31f8  f4 ff ff 0a                                      beq #0x4b31d0
004b31fc  10 a0 8d e2                                      add sl, sp, #0x10
004b3200  01 80 a0 e3                                      mov r8, #1
004b3204  08 10 8a e0                                      add r1, sl, r8
004b3208  02 30 8a e2                                      add r3, sl, #2
004b320c  00 40 a0 e3                                      mov r4, #0
004b3210  0a 00 8d e8                                      stm sp, {r1, r3}
004b3214  07 00 a0 e1                                      mov r0, r7
004b3218  0a 10 a0 e1                                      mov r1, sl
004b321c  df af fc eb                                      bl #0x3df1a0
004b3220  00 00 58 e3                                      cmp r8, #0
004b3224  0c 80 8d e5                                      str r8, [sp, #0xc]
004b3228  0f 00 00 1a                                      bne #0x4b326c
004b322c  00 30 9d e5                                      ldr r3, [sp]
004b3230  04 20 9d e5                                      ldr r2, [sp, #4]
004b3234  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3238  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b323c  03 00 52 e1                                      cmp r2, r3
004b3240  01 10 20 e0                                      eor r1, r0, r1
004b3244  01 10 43 e5                                      strb r1, [r3, #-1]
004b3248  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b324c  00 10 21 e0                                      eor r1, r1, r0
004b3250  01 10 c2 e5                                      strb r1, [r2, #1]
004b3254  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b3258  01 20 42 e2                                      sub r2, r2, #1
004b325c  00 10 21 e0                                      eor r1, r1, r0
004b3260  01 10 43 e5                                      strb r1, [r3, #-1]
004b3264  01 30 83 e2                                      add r3, r3, #1
004b3268  f1 ff ff 8a                                      bhi #0x4b3234
004b326c  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b3270  09 50 96 e7                                      ldr r5, [r6, sb]
004b3274  01 10 a0 e3                                      mov r1, #1
004b3278  01 00 80 e0                                      add r0, r0, r1
004b327c  00 b0 95 e5                                      ldr fp, [r5]
004b3280  b9 74 f9 eb                                      bl #0x31056c
004b3284  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b3288  00 30 95 e5                                      ldr r3, [r5]
004b328c  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b3290  07 00 a0 e1                                      mov r0, r7
004b3294  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b3298  00 30 a0 e3                                      mov r3, #0
004b329c  6c 90 f9 eb                                      bl #0x317454
004b32a0  00 30 95 e5                                      ldr r3, [r5]
004b32a4  00 10 a0 e3                                      mov r1, #0
004b32a8  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b32ac  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b32b0  01 40 84 e2                                      add r4, r4, #1
004b32b4  03 10 c2 e7                                      strb r1, [r2, r3]
004b32b8  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b32bc  04 00 53 e1                                      cmp r3, r4
004b32c0  d3 ff ff 8a                                      bhi #0x4b3214
004b32c4  c1 ff ff ea                                      b #0x4b31d0
; mapping-symbol data/literal pool
004b32c8  30 19 4e 00 38 3d 00 00 a8 39 00 00              .byte 0x30, 0x19, 0x4e, 0x00, 0x38, 0x3d, 0x00, 0x00, 0xa8, 0x39, 0x00, 0x00

; FUNCTION 0x004b5690, declared_size=324, range_size=324, mode=arm
; class-group: Arrays::Sounds
; alias: _ZN6Arrays6Sounds4readEP11IStreamBase
; demangled: Arrays::Sounds::read(IStreamBase*)
; decoder-mode: arm
004b5690  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b5694  0c d0 4d e2                                      sub sp, sp, #0xc
004b5698  00 a0 a0 e1                                      mov sl, r0
004b569c  fb 78 f9 eb                                      bl #0x313a90
004b56a0  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
004b56a4  01 30 a0 e3                                      mov r3, #1
004b56a8  00 00 53 e3                                      cmp r3, #0
004b56ac  04 00 8d e5                                      str r0, [sp, #4]
004b56b0  00 30 8d e5                                      str r3, [sp]
004b56b4  06 60 8f e0                                      add r6, pc, r6
004b56b8  10 00 00 1a                                      bne #0x4b5700
004b56bc  04 30 8d e2                                      add r3, sp, #4
004b56c0  02 20 83 e2                                      add r2, r3, #2
004b56c4  01 30 83 e2                                      add r3, r3, #1
004b56c8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b56cc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b56d0  03 00 52 e1                                      cmp r2, r3
004b56d4  01 10 20 e0                                      eor r1, r0, r1
004b56d8  01 10 43 e5                                      strb r1, [r3, #-1]
004b56dc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b56e0  00 10 21 e0                                      eor r1, r1, r0
004b56e4  01 10 c2 e5                                      strb r1, [r2, #1]
004b56e8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b56ec  01 20 42 e2                                      sub r2, r2, #1
004b56f0  00 10 21 e0                                      eor r1, r1, r0
004b56f4  01 10 43 e5                                      strb r1, [r3, #-1]
004b56f8  01 30 83 e2                                      add r3, r3, #1
004b56fc  f1 ff ff 8a                                      bhi #0x4b56c8
004b5700  67 b8 ff eb                                      bl #0x4a38a4
004b5704  bc 70 9f e5                                      ldr r7, [pc, #0xbc]
004b5708  04 40 9d e5                                      ldr r4, [sp, #4]
004b570c  0c 50 a0 e3                                      mov r5, #0xc
004b5710  07 30 96 e7                                      ldr r3, [r6, r7]
004b5714  95 04 00 e0                                      mul r0, r5, r4
004b5718  00 40 83 e5                                      str r4, [r3]
004b571c  08 00 80 e2                                      add r0, r0, #8
004b5720  01 10 a0 e3                                      mov r1, #1
004b5724  90 6b f9 eb                                      bl #0x31056c
004b5728  00 00 54 e3                                      cmp r4, #0
004b572c  00 50 80 e5                                      str r5, [r0]
004b5730  04 40 80 e5                                      str r4, [r0, #4]
004b5734  08 30 80 e2                                      add r3, r0, #8
004b5738  08 00 00 0a                                      beq #0x4b5760
004b573c  88 10 9f e5                                      ldr r1, [pc, #0x88]
004b5740  00 20 a0 e3                                      mov r2, #0
004b5744  01 10 96 e7                                      ldr r1, [r6, r1]
004b5748  08 10 81 e2                                      add r1, r1, #8
004b574c  01 20 82 e2                                      add r2, r2, #1
004b5750  04 00 52 e1                                      cmp r2, r4
004b5754  08 10 80 e5                                      str r1, [r0, #8]
004b5758  0c 00 80 e2                                      add r0, r0, #0xc
004b575c  fa ff ff 1a                                      bne #0x4b574c
004b5760  07 20 96 e7                                      ldr r2, [r6, r7]
004b5764  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b5768  00 10 92 e5                                      ldr r1, [r2]
004b576c  08 20 96 e7                                      ldr r2, [r6, r8]
004b5770  00 00 51 e3                                      cmp r1, #0
004b5774  00 30 82 e5                                      str r3, [r2]
004b5778  0f 00 00 0a                                      beq #0x4b57bc
004b577c  00 40 a0 e3                                      mov r4, #0
004b5780  04 50 a0 e1                                      mov r5, r4
004b5784  01 00 00 ea                                      b #0x4b5790
004b5788  08 30 96 e7                                      ldr r3, [r6, r8]
004b578c  00 30 93 e5                                      ldr r3, [r3]
004b5790  04 00 83 e0                                      add r0, r3, r4
004b5794  0a 10 a0 e1                                      mov r1, sl
004b5798  04 30 93 e7                                      ldr r3, [r3, r4]
004b579c  0f e0 a0 e1                                      mov lr, pc
004b57a0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b57a4  07 30 96 e7                                      ldr r3, [r6, r7]
004b57a8  01 50 85 e2                                      add r5, r5, #1
004b57ac  0c 40 84 e2                                      add r4, r4, #0xc
004b57b0  00 30 93 e5                                      ldr r3, [r3]
004b57b4  05 00 53 e1                                      cmp r3, r5
004b57b8  f2 ff ff 8a                                      bhi #0x4b5788
004b57bc  0c d0 8d e2                                      add sp, sp, #0xc
004b57c0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b57c4  dc f3 4d 00 38 3d 00 00 50 0b 00 00 3c 3e 00 00  .byte 0xdc, 0xf3, 0x4d, 0x00, 0x38, 0x3d, 0x00, 0x00, 0x50, 0x0b, 0x00, 0x00, 0x3c, 0x3e, 0x00, 0x00
