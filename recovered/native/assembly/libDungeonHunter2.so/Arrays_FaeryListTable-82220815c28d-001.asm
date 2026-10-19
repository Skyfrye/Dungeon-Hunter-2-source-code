; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a8434, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::FaeryListTable
; alias: _ZN6Arrays14FaeryListTable13finalizeNamesEv
; demangled: Arrays::FaeryListTable::finalizeNames()
; decoder-mode: arm
004a8434  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a8438  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a843c  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a8440  05 50 8f e0                                      add r5, pc, r5
004a8444  06 30 95 e7                                      ldr r3, [r5, r6]
004a8448  00 30 93 e5                                      ldr r3, [r3]
004a844c  00 00 53 e3                                      cmp r3, #0
004a8450  1a 00 00 0a                                      beq #0x4a84c0
004a8454  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a8458  07 20 95 e7                                      ldr r2, [r5, r7]
004a845c  00 20 92 e5                                      ldr r2, [r2]
004a8460  00 00 52 e3                                      cmp r2, #0
004a8464  10 00 00 0a                                      beq #0x4a84ac
004a8468  00 40 a0 e3                                      mov r4, #0
004a846c  01 00 00 ea                                      b #0x4a8478
004a8470  06 30 95 e7                                      ldr r3, [r5, r6]
004a8474  00 30 93 e5                                      ldr r3, [r3]
004a8478  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a847c  01 40 84 e2                                      add r4, r4, #1
004a8480  00 00 50 e3                                      cmp r0, #0
004a8484  02 00 00 0a                                      beq #0x4a8494
004a8488  ec 9f f9 eb                                      bl #0x310440
004a848c  06 30 95 e7                                      ldr r3, [r5, r6]
004a8490  00 30 93 e5                                      ldr r3, [r3]
004a8494  07 20 95 e7                                      ldr r2, [r5, r7]
004a8498  00 20 92 e5                                      ldr r2, [r2]
004a849c  04 00 52 e1                                      cmp r2, r4
004a84a0  f2 ff ff 8a                                      bhi #0x4a8470
004a84a4  00 00 53 e3                                      cmp r3, #0
004a84a8  01 00 00 0a                                      beq #0x4a84b4
004a84ac  03 00 a0 e1                                      mov r0, r3
004a84b0  e2 9f f9 eb                                      bl #0x310440
004a84b4  06 30 95 e7                                      ldr r3, [r5, r6]
004a84b8  00 20 a0 e3                                      mov r2, #0
004a84bc  00 20 83 e5                                      str r2, [r3]
004a84c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a84c4  50 c6 4e 00 fc 0a 00 00 14 45 00 00              .byte 0x50, 0xc6, 0x4e, 0x00, 0xfc, 0x0a, 0x00, 0x00, 0x14, 0x45, 0x00, 0x00

; FUNCTION 0x004a84d0, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::FaeryListTable
; alias: _ZN6Arrays14FaeryListTable8finalizeEv
; demangled: Arrays::FaeryListTable::finalize()
; decoder-mode: arm
004a84d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a84d4  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a84d8  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a84dc  05 50 8f e0                                      add r5, pc, r5
004a84e0  07 30 95 e7                                      ldr r3, [r5, r7]
004a84e4  00 30 93 e5                                      ldr r3, [r3]
004a84e8  00 00 53 e3                                      cmp r3, #0
004a84ec  2c 00 00 0a                                      beq #0x4a85a4
004a84f0  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a84f4  08 20 95 e7                                      ldr r2, [r5, r8]
004a84f8  00 20 92 e5                                      ldr r2, [r2]
004a84fc  00 00 52 e3                                      cmp r2, #0
004a8500  12 00 00 0a                                      beq #0x4a8550
004a8504  00 40 a0 e3                                      mov r4, #0
004a8508  04 60 a0 e1                                      mov r6, r4
004a850c  01 00 00 ea                                      b #0x4a8518
004a8510  07 30 95 e7                                      ldr r3, [r5, r7]
004a8514  00 30 93 e5                                      ldr r3, [r3]
004a8518  04 00 83 e0                                      add r0, r3, r4
004a851c  04 30 93 e7                                      ldr r3, [r3, r4]
004a8520  0f e0 a0 e1                                      mov lr, pc
004a8524  08 f0 93 e5                                      ldr pc, [r3, #8]
004a8528  08 30 95 e7                                      ldr r3, [r5, r8]
004a852c  01 60 86 e2                                      add r6, r6, #1
004a8530  0c 40 84 e2                                      add r4, r4, #0xc
004a8534  00 30 93 e5                                      ldr r3, [r3]
004a8538  06 00 53 e1                                      cmp r3, r6
004a853c  f3 ff ff 8a                                      bhi #0x4a8510
004a8540  07 30 95 e7                                      ldr r3, [r5, r7]
004a8544  00 30 93 e5                                      ldr r3, [r3]
004a8548  00 00 53 e3                                      cmp r3, #0
004a854c  11 00 00 0a                                      beq #0x4a8598
004a8550  04 20 13 e5                                      ldr r2, [r3, #-4]
004a8554  0c 00 a0 e3                                      mov r0, #0xc
004a8558  90 32 20 e0                                      mla r0, r0, r2, r3
004a855c  00 00 53 e1                                      cmp r3, r0
004a8560  01 00 00 1a                                      bne #0x4a856c
004a8564  09 00 00 ea                                      b #0x4a8590
004a8568  04 00 a0 e1                                      mov r0, r4
004a856c  0c 40 40 e2                                      sub r4, r0, #0xc
004a8570  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a8574  04 00 a0 e1                                      mov r0, r4
004a8578  0f e0 a0 e1                                      mov lr, pc
004a857c  00 f0 93 e5                                      ldr pc, [r3]
004a8580  07 30 95 e7                                      ldr r3, [r5, r7]
004a8584  00 00 93 e5                                      ldr r0, [r3]
004a8588  04 00 50 e1                                      cmp r0, r4
004a858c  f5 ff ff 1a                                      bne #0x4a8568
004a8590  08 00 40 e2                                      sub r0, r0, #8
004a8594  a9 9f f9 eb                                      bl #0x310440
004a8598  07 30 95 e7                                      ldr r3, [r5, r7]
004a859c  00 20 a0 e3                                      mov r2, #0
004a85a0  00 20 83 e5                                      str r2, [r3]
004a85a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a85a8  b4 c5 4e 00 54 3e 00 00 14 45 00 00              .byte 0xb4, 0xc5, 0x4e, 0x00, 0x54, 0x3e, 0x00, 0x00, 0x14, 0x45, 0x00, 0x00

; FUNCTION 0x004b2604, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::FaeryListTable
; alias: _ZN6Arrays14FaeryListTable9readNamesEP11IStreamBase
; demangled: Arrays::FaeryListTable::readNames(IStreamBase*)
; decoder-mode: arm
004b2604  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b2608  00 70 a0 e1                                      mov r7, r0
004b260c  1c d0 4d e2                                      sub sp, sp, #0x1c
004b2610  87 d7 ff eb                                      bl #0x4a8434
004b2614  07 00 a0 e1                                      mov r0, r7
004b2618  1c 85 f9 eb                                      bl #0x313a90
004b261c  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b2620  01 30 a0 e3                                      mov r3, #1
004b2624  00 00 53 e3                                      cmp r3, #0
004b2628  06 60 8f e0                                      add r6, pc, r6
004b262c  14 00 8d e5                                      str r0, [sp, #0x14]
004b2630  0c 30 8d e5                                      str r3, [sp, #0xc]
004b2634  12 00 00 1a                                      bne #0x4b2684
004b2638  14 30 8d e2                                      add r3, sp, #0x14
004b263c  02 20 83 e2                                      add r2, r3, #2
004b2640  01 30 83 e2                                      add r3, r3, #1
004b2644  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2648  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b264c  03 00 52 e1                                      cmp r2, r3
004b2650  02 40 a0 e1                                      mov r4, r2
004b2654  01 10 20 e0                                      eor r1, r0, r1
004b2658  01 10 43 e5                                      strb r1, [r3, #-1]
004b265c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2660  00 10 21 e0                                      eor r1, r1, r0
004b2664  01 10 c2 e5                                      strb r1, [r2, #1]
004b2668  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b266c  01 20 42 e2                                      sub r2, r2, #1
004b2670  00 10 21 e0                                      eor r1, r1, r0
004b2674  01 10 43 e5                                      strb r1, [r3, #-1]
004b2678  01 30 83 e2                                      add r3, r3, #1
004b267c  f0 ff ff 8a                                      bhi #0x4b2644
004b2680  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b2684  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b2688  03 30 96 e7                                      ldr r3, [r6, r3]
004b268c  00 30 93 e5                                      ldr r3, [r3]
004b2690  00 00 53 e1                                      cmp r3, r0
004b2694  01 00 00 0a                                      beq #0x4b26a0
004b2698  1c d0 8d e2                                      add sp, sp, #0x1c
004b269c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b26a0  00 01 a0 e1                                      lsl r0, r0, #2
004b26a4  01 10 a0 e3                                      mov r1, #1
004b26a8  af 77 f9 eb                                      bl #0x31056c
004b26ac  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b26b0  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b26b4  09 30 96 e7                                      ldr r3, [r6, sb]
004b26b8  00 00 52 e3                                      cmp r2, #0
004b26bc  00 00 83 e5                                      str r0, [r3]
004b26c0  f4 ff ff 0a                                      beq #0x4b2698
004b26c4  10 a0 8d e2                                      add sl, sp, #0x10
004b26c8  01 80 a0 e3                                      mov r8, #1
004b26cc  08 10 8a e0                                      add r1, sl, r8
004b26d0  02 30 8a e2                                      add r3, sl, #2
004b26d4  00 40 a0 e3                                      mov r4, #0
004b26d8  0a 00 8d e8                                      stm sp, {r1, r3}
004b26dc  07 00 a0 e1                                      mov r0, r7
004b26e0  0a 10 a0 e1                                      mov r1, sl
004b26e4  ad b2 fc eb                                      bl #0x3df1a0
004b26e8  00 00 58 e3                                      cmp r8, #0
004b26ec  0c 80 8d e5                                      str r8, [sp, #0xc]
004b26f0  0f 00 00 1a                                      bne #0x4b2734
004b26f4  00 30 9d e5                                      ldr r3, [sp]
004b26f8  04 20 9d e5                                      ldr r2, [sp, #4]
004b26fc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2700  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b2704  03 00 52 e1                                      cmp r2, r3
004b2708  01 10 20 e0                                      eor r1, r0, r1
004b270c  01 10 43 e5                                      strb r1, [r3, #-1]
004b2710  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2714  00 10 21 e0                                      eor r1, r1, r0
004b2718  01 10 c2 e5                                      strb r1, [r2, #1]
004b271c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b2720  01 20 42 e2                                      sub r2, r2, #1
004b2724  00 10 21 e0                                      eor r1, r1, r0
004b2728  01 10 43 e5                                      strb r1, [r3, #-1]
004b272c  01 30 83 e2                                      add r3, r3, #1
004b2730  f1 ff ff 8a                                      bhi #0x4b26fc
004b2734  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b2738  09 50 96 e7                                      ldr r5, [r6, sb]
004b273c  01 10 a0 e3                                      mov r1, #1
004b2740  01 00 80 e0                                      add r0, r0, r1
004b2744  00 b0 95 e5                                      ldr fp, [r5]
004b2748  87 77 f9 eb                                      bl #0x31056c
004b274c  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b2750  00 30 95 e5                                      ldr r3, [r5]
004b2754  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b2758  07 00 a0 e1                                      mov r0, r7
004b275c  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b2760  00 30 a0 e3                                      mov r3, #0
004b2764  3a 93 f9 eb                                      bl #0x317454
004b2768  00 30 95 e5                                      ldr r3, [r5]
004b276c  00 10 a0 e3                                      mov r1, #0
004b2770  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b2774  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b2778  01 40 84 e2                                      add r4, r4, #1
004b277c  03 10 c2 e7                                      strb r1, [r2, r3]
004b2780  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b2784  04 00 53 e1                                      cmp r3, r4
004b2788  d3 ff ff 8a                                      bhi #0x4b26dc
004b278c  c1 ff ff ea                                      b #0x4b2698
; mapping-symbol data/literal pool
004b2790  68 24 4e 00 14 45 00 00 fc 0a 00 00              .byte 0x68, 0x24, 0x4e, 0x00, 0x14, 0x45, 0x00, 0x00, 0xfc, 0x0a, 0x00, 0x00

; FUNCTION 0x004b279c, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::FaeryListTable
; alias: _ZN6Arrays14FaeryListTable9skipNamesEP11IStreamBase
; demangled: Arrays::FaeryListTable::skipNames(IStreamBase*)
; decoder-mode: arm
004b279c  98 ff ff ea                                      b #0x4b2604

; FUNCTION 0x004bc12c, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::FaeryListTable
; alias: _ZN6Arrays14FaeryListTable4readEP11IStreamBase
; demangled: Arrays::FaeryListTable::read(IStreamBase*)
; decoder-mode: arm
004bc12c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004bc130  0c d0 4d e2                                      sub sp, sp, #0xc
004bc134  00 a0 a0 e1                                      mov sl, r0
004bc138  54 5e f9 eb                                      bl #0x313a90
004bc13c  24 61 9f e5                                      ldr r6, [pc, #0x124]
004bc140  01 30 a0 e3                                      mov r3, #1
004bc144  00 00 53 e3                                      cmp r3, #0
004bc148  04 00 8d e5                                      str r0, [sp, #4]
004bc14c  00 30 8d e5                                      str r3, [sp]
004bc150  06 60 8f e0                                      add r6, pc, r6
004bc154  10 00 00 1a                                      bne #0x4bc19c
004bc158  04 30 8d e2                                      add r3, sp, #4
004bc15c  02 20 83 e2                                      add r2, r3, #2
004bc160  01 30 83 e2                                      add r3, r3, #1
004bc164  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bc168  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bc16c  03 00 52 e1                                      cmp r2, r3
004bc170  01 10 20 e0                                      eor r1, r0, r1
004bc174  01 10 43 e5                                      strb r1, [r3, #-1]
004bc178  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bc17c  00 10 21 e0                                      eor r1, r1, r0
004bc180  01 10 c2 e5                                      strb r1, [r2, #1]
004bc184  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bc188  01 20 42 e2                                      sub r2, r2, #1
004bc18c  00 10 21 e0                                      eor r1, r1, r0
004bc190  01 10 43 e5                                      strb r1, [r3, #-1]
004bc194  01 30 83 e2                                      add r3, r3, #1
004bc198  f1 ff ff 8a                                      bhi #0x4bc164
004bc19c  cb b0 ff eb                                      bl #0x4a84d0
004bc1a0  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004bc1a4  04 40 9d e5                                      ldr r4, [sp, #4]
004bc1a8  0c 50 a0 e3                                      mov r5, #0xc
004bc1ac  07 30 96 e7                                      ldr r3, [r6, r7]
004bc1b0  95 04 00 e0                                      mul r0, r5, r4
004bc1b4  00 40 83 e5                                      str r4, [r3]
004bc1b8  08 00 80 e2                                      add r0, r0, #8
004bc1bc  01 10 a0 e3                                      mov r1, #1
004bc1c0  e9 50 f9 eb                                      bl #0x31056c
004bc1c4  00 00 54 e3                                      cmp r4, #0
004bc1c8  00 50 80 e5                                      str r5, [r0]
004bc1cc  04 40 80 e5                                      str r4, [r0, #4]
004bc1d0  08 30 80 e2                                      add r3, r0, #8
004bc1d4  0a 00 00 0a                                      beq #0x4bc204
004bc1d8  90 10 9f e5                                      ldr r1, [pc, #0x90]
004bc1dc  00 20 a0 e3                                      mov r2, #0
004bc1e0  02 c0 a0 e1                                      mov ip, r2
004bc1e4  01 10 96 e7                                      ldr r1, [r6, r1]
004bc1e8  08 10 81 e2                                      add r1, r1, #8
004bc1ec  01 20 82 e2                                      add r2, r2, #1
004bc1f0  04 00 52 e1                                      cmp r2, r4
004bc1f4  08 10 80 e5                                      str r1, [r0, #8]
004bc1f8  10 c0 80 e5                                      str ip, [r0, #0x10]
004bc1fc  0c 00 80 e2                                      add r0, r0, #0xc
004bc200  f9 ff ff 1a                                      bne #0x4bc1ec
004bc204  07 20 96 e7                                      ldr r2, [r6, r7]
004bc208  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bc20c  00 10 92 e5                                      ldr r1, [r2]
004bc210  08 20 96 e7                                      ldr r2, [r6, r8]
004bc214  00 00 51 e3                                      cmp r1, #0
004bc218  00 30 82 e5                                      str r3, [r2]
004bc21c  0f 00 00 0a                                      beq #0x4bc260
004bc220  00 40 a0 e3                                      mov r4, #0
004bc224  04 50 a0 e1                                      mov r5, r4
004bc228  01 00 00 ea                                      b #0x4bc234
004bc22c  08 30 96 e7                                      ldr r3, [r6, r8]
004bc230  00 30 93 e5                                      ldr r3, [r3]
004bc234  04 00 83 e0                                      add r0, r3, r4
004bc238  0a 10 a0 e1                                      mov r1, sl
004bc23c  04 30 93 e7                                      ldr r3, [r3, r4]
004bc240  0f e0 a0 e1                                      mov lr, pc
004bc244  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bc248  07 30 96 e7                                      ldr r3, [r6, r7]
004bc24c  01 50 85 e2                                      add r5, r5, #1
004bc250  0c 40 84 e2                                      add r4, r4, #0xc
004bc254  00 30 93 e5                                      ldr r3, [r3]
004bc258  05 00 53 e1                                      cmp r3, r5
004bc25c  f2 ff ff 8a                                      bhi #0x4bc22c
004bc260  0c d0 8d e2                                      add sp, sp, #0xc
004bc264  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bc268  40 89 4d 00 14 45 00 00 44 0a 00 00 54 3e 00 00  .byte 0x40, 0x89, 0x4d, 0x00, 0x14, 0x45, 0x00, 0x00, 0x44, 0x0a, 0x00, 0x00, 0x54, 0x3e, 0x00, 0x00
