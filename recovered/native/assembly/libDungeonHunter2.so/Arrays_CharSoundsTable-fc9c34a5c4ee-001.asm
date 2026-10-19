; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a52e4, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::CharSoundsTable
; alias: _ZN6Arrays15CharSoundsTable13finalizeNamesEv
; demangled: Arrays::CharSoundsTable::finalizeNames()
; decoder-mode: arm
004a52e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a52e8  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a52ec  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a52f0  05 50 8f e0                                      add r5, pc, r5
004a52f4  06 30 95 e7                                      ldr r3, [r5, r6]
004a52f8  00 30 93 e5                                      ldr r3, [r3]
004a52fc  00 00 53 e3                                      cmp r3, #0
004a5300  1a 00 00 0a                                      beq #0x4a5370
004a5304  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a5308  07 20 95 e7                                      ldr r2, [r5, r7]
004a530c  00 20 92 e5                                      ldr r2, [r2]
004a5310  00 00 52 e3                                      cmp r2, #0
004a5314  10 00 00 0a                                      beq #0x4a535c
004a5318  00 40 a0 e3                                      mov r4, #0
004a531c  01 00 00 ea                                      b #0x4a5328
004a5320  06 30 95 e7                                      ldr r3, [r5, r6]
004a5324  00 30 93 e5                                      ldr r3, [r3]
004a5328  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a532c  01 40 84 e2                                      add r4, r4, #1
004a5330  00 00 50 e3                                      cmp r0, #0
004a5334  02 00 00 0a                                      beq #0x4a5344
004a5338  40 ac f9 eb                                      bl #0x310440
004a533c  06 30 95 e7                                      ldr r3, [r5, r6]
004a5340  00 30 93 e5                                      ldr r3, [r3]
004a5344  07 20 95 e7                                      ldr r2, [r5, r7]
004a5348  00 20 92 e5                                      ldr r2, [r2]
004a534c  04 00 52 e1                                      cmp r2, r4
004a5350  f2 ff ff 8a                                      bhi #0x4a5320
004a5354  00 00 53 e3                                      cmp r3, #0
004a5358  01 00 00 0a                                      beq #0x4a5364
004a535c  03 00 a0 e1                                      mov r0, r3
004a5360  36 ac f9 eb                                      bl #0x310440
004a5364  06 30 95 e7                                      ldr r3, [r5, r6]
004a5368  00 20 a0 e3                                      mov r2, #0
004a536c  00 20 83 e5                                      str r2, [r3]
004a5370  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a5374  a0 f7 4e 00 90 14 00 00 20 2a 00 00              .byte 0xa0, 0xf7, 0x4e, 0x00, 0x90, 0x14, 0x00, 0x00, 0x20, 0x2a, 0x00, 0x00

; FUNCTION 0x004a5380, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::CharSoundsTable
; alias: _ZN6Arrays15CharSoundsTable8finalizeEv
; demangled: Arrays::CharSoundsTable::finalize()
; decoder-mode: arm
004a5380  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a5384  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a5388  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a538c  05 50 8f e0                                      add r5, pc, r5
004a5390  07 30 95 e7                                      ldr r3, [r5, r7]
004a5394  00 30 93 e5                                      ldr r3, [r3]
004a5398  00 00 53 e3                                      cmp r3, #0
004a539c  2c 00 00 0a                                      beq #0x4a5454
004a53a0  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a53a4  08 20 95 e7                                      ldr r2, [r5, r8]
004a53a8  00 20 92 e5                                      ldr r2, [r2]
004a53ac  00 00 52 e3                                      cmp r2, #0
004a53b0  12 00 00 0a                                      beq #0x4a5400
004a53b4  00 40 a0 e3                                      mov r4, #0
004a53b8  04 60 a0 e1                                      mov r6, r4
004a53bc  01 00 00 ea                                      b #0x4a53c8
004a53c0  07 30 95 e7                                      ldr r3, [r5, r7]
004a53c4  00 30 93 e5                                      ldr r3, [r3]
004a53c8  04 00 83 e0                                      add r0, r3, r4
004a53cc  04 30 93 e7                                      ldr r3, [r3, r4]
004a53d0  0f e0 a0 e1                                      mov lr, pc
004a53d4  08 f0 93 e5                                      ldr pc, [r3, #8]
004a53d8  08 30 95 e7                                      ldr r3, [r5, r8]
004a53dc  01 60 86 e2                                      add r6, r6, #1
004a53e0  28 40 84 e2                                      add r4, r4, #0x28
004a53e4  00 30 93 e5                                      ldr r3, [r3]
004a53e8  06 00 53 e1                                      cmp r3, r6
004a53ec  f3 ff ff 8a                                      bhi #0x4a53c0
004a53f0  07 30 95 e7                                      ldr r3, [r5, r7]
004a53f4  00 30 93 e5                                      ldr r3, [r3]
004a53f8  00 00 53 e3                                      cmp r3, #0
004a53fc  11 00 00 0a                                      beq #0x4a5448
004a5400  04 20 13 e5                                      ldr r2, [r3, #-4]
004a5404  28 00 a0 e3                                      mov r0, #0x28
004a5408  90 32 20 e0                                      mla r0, r0, r2, r3
004a540c  00 00 53 e1                                      cmp r3, r0
004a5410  01 00 00 1a                                      bne #0x4a541c
004a5414  09 00 00 ea                                      b #0x4a5440
004a5418  04 00 a0 e1                                      mov r0, r4
004a541c  28 40 40 e2                                      sub r4, r0, #0x28
004a5420  28 30 10 e5                                      ldr r3, [r0, #-0x28]
004a5424  04 00 a0 e1                                      mov r0, r4
004a5428  0f e0 a0 e1                                      mov lr, pc
004a542c  00 f0 93 e5                                      ldr pc, [r3]
004a5430  07 30 95 e7                                      ldr r3, [r5, r7]
004a5434  00 00 93 e5                                      ldr r0, [r3]
004a5438  04 00 50 e1                                      cmp r0, r4
004a543c  f5 ff ff 1a                                      bne #0x4a5418
004a5440  08 00 40 e2                                      sub r0, r0, #8
004a5444  fd ab f9 eb                                      bl #0x310440
004a5448  07 30 95 e7                                      ldr r3, [r5, r7]
004a544c  00 20 a0 e3                                      mov r2, #0
004a5450  00 20 83 e5                                      str r2, [r3]
004a5454  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a5458  04 f7 4e 00 a0 1b 00 00 20 2a 00 00              .byte 0x04, 0xf7, 0x4e, 0x00, 0xa0, 0x1b, 0x00, 0x00, 0x20, 0x2a, 0x00, 0x00

; FUNCTION 0x004b079c, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::CharSoundsTable
; alias: _ZN6Arrays15CharSoundsTable9readNamesEP11IStreamBase
; demangled: Arrays::CharSoundsTable::readNames(IStreamBase*)
; decoder-mode: arm
004b079c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b07a0  00 70 a0 e1                                      mov r7, r0
004b07a4  1c d0 4d e2                                      sub sp, sp, #0x1c
004b07a8  cd d2 ff eb                                      bl #0x4a52e4
004b07ac  07 00 a0 e1                                      mov r0, r7
004b07b0  b6 8c f9 eb                                      bl #0x313a90
004b07b4  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b07b8  01 30 a0 e3                                      mov r3, #1
004b07bc  00 00 53 e3                                      cmp r3, #0
004b07c0  06 60 8f e0                                      add r6, pc, r6
004b07c4  14 00 8d e5                                      str r0, [sp, #0x14]
004b07c8  0c 30 8d e5                                      str r3, [sp, #0xc]
004b07cc  12 00 00 1a                                      bne #0x4b081c
004b07d0  14 30 8d e2                                      add r3, sp, #0x14
004b07d4  02 20 83 e2                                      add r2, r3, #2
004b07d8  01 30 83 e2                                      add r3, r3, #1
004b07dc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b07e0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b07e4  03 00 52 e1                                      cmp r2, r3
004b07e8  02 40 a0 e1                                      mov r4, r2
004b07ec  01 10 20 e0                                      eor r1, r0, r1
004b07f0  01 10 43 e5                                      strb r1, [r3, #-1]
004b07f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b07f8  00 10 21 e0                                      eor r1, r1, r0
004b07fc  01 10 c2 e5                                      strb r1, [r2, #1]
004b0800  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b0804  01 20 42 e2                                      sub r2, r2, #1
004b0808  00 10 21 e0                                      eor r1, r1, r0
004b080c  01 10 43 e5                                      strb r1, [r3, #-1]
004b0810  01 30 83 e2                                      add r3, r3, #1
004b0814  f0 ff ff 8a                                      bhi #0x4b07dc
004b0818  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b081c  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b0820  03 30 96 e7                                      ldr r3, [r6, r3]
004b0824  00 30 93 e5                                      ldr r3, [r3]
004b0828  00 00 53 e1                                      cmp r3, r0
004b082c  01 00 00 0a                                      beq #0x4b0838
004b0830  1c d0 8d e2                                      add sp, sp, #0x1c
004b0834  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b0838  00 01 a0 e1                                      lsl r0, r0, #2
004b083c  01 10 a0 e3                                      mov r1, #1
004b0840  49 7f f9 eb                                      bl #0x31056c
004b0844  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b0848  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b084c  09 30 96 e7                                      ldr r3, [r6, sb]
004b0850  00 00 52 e3                                      cmp r2, #0
004b0854  00 00 83 e5                                      str r0, [r3]
004b0858  f4 ff ff 0a                                      beq #0x4b0830
004b085c  10 a0 8d e2                                      add sl, sp, #0x10
004b0860  01 80 a0 e3                                      mov r8, #1
004b0864  08 10 8a e0                                      add r1, sl, r8
004b0868  02 30 8a e2                                      add r3, sl, #2
004b086c  00 40 a0 e3                                      mov r4, #0
004b0870  0a 00 8d e8                                      stm sp, {r1, r3}
004b0874  07 00 a0 e1                                      mov r0, r7
004b0878  0a 10 a0 e1                                      mov r1, sl
004b087c  47 ba fc eb                                      bl #0x3df1a0
004b0880  00 00 58 e3                                      cmp r8, #0
004b0884  0c 80 8d e5                                      str r8, [sp, #0xc]
004b0888  0f 00 00 1a                                      bne #0x4b08cc
004b088c  00 30 9d e5                                      ldr r3, [sp]
004b0890  04 20 9d e5                                      ldr r2, [sp, #4]
004b0894  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0898  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b089c  03 00 52 e1                                      cmp r2, r3
004b08a0  01 10 20 e0                                      eor r1, r0, r1
004b08a4  01 10 43 e5                                      strb r1, [r3, #-1]
004b08a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b08ac  00 10 21 e0                                      eor r1, r1, r0
004b08b0  01 10 c2 e5                                      strb r1, [r2, #1]
004b08b4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b08b8  01 20 42 e2                                      sub r2, r2, #1
004b08bc  00 10 21 e0                                      eor r1, r1, r0
004b08c0  01 10 43 e5                                      strb r1, [r3, #-1]
004b08c4  01 30 83 e2                                      add r3, r3, #1
004b08c8  f1 ff ff 8a                                      bhi #0x4b0894
004b08cc  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b08d0  09 50 96 e7                                      ldr r5, [r6, sb]
004b08d4  01 10 a0 e3                                      mov r1, #1
004b08d8  01 00 80 e0                                      add r0, r0, r1
004b08dc  00 b0 95 e5                                      ldr fp, [r5]
004b08e0  21 7f f9 eb                                      bl #0x31056c
004b08e4  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b08e8  00 30 95 e5                                      ldr r3, [r5]
004b08ec  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b08f0  07 00 a0 e1                                      mov r0, r7
004b08f4  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b08f8  00 30 a0 e3                                      mov r3, #0
004b08fc  d4 9a f9 eb                                      bl #0x317454
004b0900  00 30 95 e5                                      ldr r3, [r5]
004b0904  00 10 a0 e3                                      mov r1, #0
004b0908  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b090c  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b0910  01 40 84 e2                                      add r4, r4, #1
004b0914  03 10 c2 e7                                      strb r1, [r2, r3]
004b0918  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b091c  04 00 53 e1                                      cmp r3, r4
004b0920  d3 ff ff 8a                                      bhi #0x4b0874
004b0924  c1 ff ff ea                                      b #0x4b0830
; mapping-symbol data/literal pool
004b0928  d0 42 4e 00 20 2a 00 00 90 14 00 00              .byte 0xd0, 0x42, 0x4e, 0x00, 0x20, 0x2a, 0x00, 0x00, 0x90, 0x14, 0x00, 0x00

; FUNCTION 0x004b0934, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::CharSoundsTable
; alias: _ZN6Arrays15CharSoundsTable9skipNamesEP11IStreamBase
; demangled: Arrays::CharSoundsTable::skipNames(IStreamBase*)
; decoder-mode: arm
004b0934  98 ff ff ea                                      b #0x4b079c

; FUNCTION 0x004b96bc, declared_size=340, range_size=340, mode=arm
; class-group: Arrays::CharSoundsTable
; alias: _ZN6Arrays15CharSoundsTable4readEP11IStreamBase
; demangled: Arrays::CharSoundsTable::read(IStreamBase*)
; decoder-mode: arm
004b96bc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b96c0  0c d0 4d e2                                      sub sp, sp, #0xc
004b96c4  00 a0 a0 e1                                      mov sl, r0
004b96c8  f0 68 f9 eb                                      bl #0x313a90
004b96cc  2c 61 9f e5                                      ldr r6, [pc, #0x12c]
004b96d0  01 30 a0 e3                                      mov r3, #1
004b96d4  00 00 53 e3                                      cmp r3, #0
004b96d8  04 00 8d e5                                      str r0, [sp, #4]
004b96dc  00 30 8d e5                                      str r3, [sp]
004b96e0  06 60 8f e0                                      add r6, pc, r6
004b96e4  10 00 00 1a                                      bne #0x4b972c
004b96e8  04 30 8d e2                                      add r3, sp, #4
004b96ec  02 20 83 e2                                      add r2, r3, #2
004b96f0  01 30 83 e2                                      add r3, r3, #1
004b96f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b96f8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b96fc  03 00 52 e1                                      cmp r2, r3
004b9700  01 10 20 e0                                      eor r1, r0, r1
004b9704  01 10 43 e5                                      strb r1, [r3, #-1]
004b9708  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b970c  00 10 21 e0                                      eor r1, r1, r0
004b9710  01 10 c2 e5                                      strb r1, [r2, #1]
004b9714  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b9718  01 20 42 e2                                      sub r2, r2, #1
004b971c  00 10 21 e0                                      eor r1, r1, r0
004b9720  01 10 43 e5                                      strb r1, [r3, #-1]
004b9724  01 30 83 e2                                      add r3, r3, #1
004b9728  f1 ff ff 8a                                      bhi #0x4b96f4
004b972c  d0 70 9f e5                                      ldr r7, [pc, #0xd0]
004b9730  12 af ff eb                                      bl #0x4a5380
004b9734  04 40 9d e5                                      ldr r4, [sp, #4]
004b9738  07 30 96 e7                                      ldr r3, [r6, r7]
004b973c  01 10 a0 e3                                      mov r1, #1
004b9740  04 01 84 e0                                      add r0, r4, r4, lsl #2
004b9744  01 00 80 e0                                      add r0, r0, r1
004b9748  00 40 83 e5                                      str r4, [r3]
004b974c  80 01 a0 e1                                      lsl r0, r0, #3
004b9750  85 5b f9 eb                                      bl #0x31056c
004b9754  28 30 a0 e3                                      mov r3, #0x28
004b9758  00 00 54 e3                                      cmp r4, #0
004b975c  18 00 80 e8                                      stm r0, {r3, r4}
004b9760  08 30 80 e2                                      add r3, r0, #8
004b9764  0c 00 00 0a                                      beq #0x4b979c
004b9768  98 20 9f e5                                      ldr r2, [pc, #0x98]
004b976c  00 10 a0 e3                                      mov r1, #0
004b9770  02 c0 96 e7                                      ldr ip, [r6, r2]
004b9774  01 20 a0 e1                                      mov r2, r1
004b9778  08 c0 8c e2                                      add ip, ip, #8
004b977c  01 10 81 e2                                      add r1, r1, #1
004b9780  04 00 51 e1                                      cmp r1, r4
004b9784  08 c0 80 e5                                      str ip, [r0, #8]
004b9788  10 20 80 e5                                      str r2, [r0, #0x10]
004b978c  18 20 80 e5                                      str r2, [r0, #0x18]
004b9790  20 20 80 e5                                      str r2, [r0, #0x20]
004b9794  28 20 a0 e5                                      str r2, [r0, #0x28]!
004b9798  f7 ff ff 1a                                      bne #0x4b977c
004b979c  07 20 96 e7                                      ldr r2, [r6, r7]
004b97a0  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b97a4  00 10 92 e5                                      ldr r1, [r2]
004b97a8  08 20 96 e7                                      ldr r2, [r6, r8]
004b97ac  00 00 51 e3                                      cmp r1, #0
004b97b0  00 30 82 e5                                      str r3, [r2]
004b97b4  0f 00 00 0a                                      beq #0x4b97f8
004b97b8  00 40 a0 e3                                      mov r4, #0
004b97bc  04 50 a0 e1                                      mov r5, r4
004b97c0  01 00 00 ea                                      b #0x4b97cc
004b97c4  08 30 96 e7                                      ldr r3, [r6, r8]
004b97c8  00 30 93 e5                                      ldr r3, [r3]
004b97cc  04 00 83 e0                                      add r0, r3, r4
004b97d0  0a 10 a0 e1                                      mov r1, sl
004b97d4  04 30 93 e7                                      ldr r3, [r3, r4]
004b97d8  0f e0 a0 e1                                      mov lr, pc
004b97dc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b97e0  07 30 96 e7                                      ldr r3, [r6, r7]
004b97e4  01 50 85 e2                                      add r5, r5, #1
004b97e8  28 40 84 e2                                      add r4, r4, #0x28
004b97ec  00 30 93 e5                                      ldr r3, [r3]
004b97f0  05 00 53 e1                                      cmp r3, r5
004b97f4  f2 ff ff 8a                                      bhi #0x4b97c4
004b97f8  0c d0 8d e2                                      add sp, sp, #0xc
004b97fc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b9800  b0 b3 4d 00 20 2a 00 00 34 41 00 00 a0 1b 00 00  .byte 0xb0, 0xb3, 0x4d, 0x00, 0x20, 0x2a, 0x00, 0x00, 0x34, 0x41, 0x00, 0x00, 0xa0, 0x1b, 0x00, 0x00
