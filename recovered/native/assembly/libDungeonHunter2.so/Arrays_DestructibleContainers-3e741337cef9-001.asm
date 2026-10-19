; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a7fb4, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::DestructibleContainers
; alias: _ZN6Arrays22DestructibleContainers13finalizeNamesEv
; demangled: Arrays::DestructibleContainers::finalizeNames()
; decoder-mode: arm
004a7fb4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a7fb8  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a7fbc  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a7fc0  05 50 8f e0                                      add r5, pc, r5
004a7fc4  06 30 95 e7                                      ldr r3, [r5, r6]
004a7fc8  00 30 93 e5                                      ldr r3, [r3]
004a7fcc  00 00 53 e3                                      cmp r3, #0
004a7fd0  1a 00 00 0a                                      beq #0x4a8040
004a7fd4  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a7fd8  07 20 95 e7                                      ldr r2, [r5, r7]
004a7fdc  00 20 92 e5                                      ldr r2, [r2]
004a7fe0  00 00 52 e3                                      cmp r2, #0
004a7fe4  10 00 00 0a                                      beq #0x4a802c
004a7fe8  00 40 a0 e3                                      mov r4, #0
004a7fec  01 00 00 ea                                      b #0x4a7ff8
004a7ff0  06 30 95 e7                                      ldr r3, [r5, r6]
004a7ff4  00 30 93 e5                                      ldr r3, [r3]
004a7ff8  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a7ffc  01 40 84 e2                                      add r4, r4, #1
004a8000  00 00 50 e3                                      cmp r0, #0
004a8004  02 00 00 0a                                      beq #0x4a8014
004a8008  0c a1 f9 eb                                      bl #0x310440
004a800c  06 30 95 e7                                      ldr r3, [r5, r6]
004a8010  00 30 93 e5                                      ldr r3, [r3]
004a8014  07 20 95 e7                                      ldr r2, [r5, r7]
004a8018  00 20 92 e5                                      ldr r2, [r2]
004a801c  04 00 52 e1                                      cmp r2, r4
004a8020  f2 ff ff 8a                                      bhi #0x4a7ff0
004a8024  00 00 53 e3                                      cmp r3, #0
004a8028  01 00 00 0a                                      beq #0x4a8034
004a802c  03 00 a0 e1                                      mov r0, r3
004a8030  02 a1 f9 eb                                      bl #0x310440
004a8034  06 30 95 e7                                      ldr r3, [r5, r6]
004a8038  00 20 a0 e3                                      mov r2, #0
004a803c  00 20 83 e5                                      str r2, [r3]
004a8040  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a8044  d0 ca 4e 00 5c 2b 00 00 ac 33 00 00              .byte 0xd0, 0xca, 0x4e, 0x00, 0x5c, 0x2b, 0x00, 0x00, 0xac, 0x33, 0x00, 0x00

; FUNCTION 0x004a8050, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::DestructibleContainers
; alias: _ZN6Arrays22DestructibleContainers8finalizeEv
; demangled: Arrays::DestructibleContainers::finalize()
; decoder-mode: arm
004a8050  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a8054  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a8058  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a805c  05 50 8f e0                                      add r5, pc, r5
004a8060  07 30 95 e7                                      ldr r3, [r5, r7]
004a8064  00 30 93 e5                                      ldr r3, [r3]
004a8068  00 00 53 e3                                      cmp r3, #0
004a806c  2c 00 00 0a                                      beq #0x4a8124
004a8070  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a8074  08 20 95 e7                                      ldr r2, [r5, r8]
004a8078  00 20 92 e5                                      ldr r2, [r2]
004a807c  00 00 52 e3                                      cmp r2, #0
004a8080  12 00 00 0a                                      beq #0x4a80d0
004a8084  00 40 a0 e3                                      mov r4, #0
004a8088  04 60 a0 e1                                      mov r6, r4
004a808c  01 00 00 ea                                      b #0x4a8098
004a8090  07 30 95 e7                                      ldr r3, [r5, r7]
004a8094  00 30 93 e5                                      ldr r3, [r3]
004a8098  04 00 83 e0                                      add r0, r3, r4
004a809c  04 30 93 e7                                      ldr r3, [r3, r4]
004a80a0  0f e0 a0 e1                                      mov lr, pc
004a80a4  08 f0 93 e5                                      ldr pc, [r3, #8]
004a80a8  08 30 95 e7                                      ldr r3, [r5, r8]
004a80ac  01 60 86 e2                                      add r6, r6, #1
004a80b0  44 40 84 e2                                      add r4, r4, #0x44
004a80b4  00 30 93 e5                                      ldr r3, [r3]
004a80b8  06 00 53 e1                                      cmp r3, r6
004a80bc  f3 ff ff 8a                                      bhi #0x4a8090
004a80c0  07 30 95 e7                                      ldr r3, [r5, r7]
004a80c4  00 30 93 e5                                      ldr r3, [r3]
004a80c8  00 00 53 e3                                      cmp r3, #0
004a80cc  11 00 00 0a                                      beq #0x4a8118
004a80d0  04 20 13 e5                                      ldr r2, [r3, #-4]
004a80d4  44 00 a0 e3                                      mov r0, #0x44
004a80d8  90 32 20 e0                                      mla r0, r0, r2, r3
004a80dc  00 00 53 e1                                      cmp r3, r0
004a80e0  01 00 00 1a                                      bne #0x4a80ec
004a80e4  09 00 00 ea                                      b #0x4a8110
004a80e8  04 00 a0 e1                                      mov r0, r4
004a80ec  44 40 40 e2                                      sub r4, r0, #0x44
004a80f0  44 30 10 e5                                      ldr r3, [r0, #-0x44]
004a80f4  04 00 a0 e1                                      mov r0, r4
004a80f8  0f e0 a0 e1                                      mov lr, pc
004a80fc  00 f0 93 e5                                      ldr pc, [r3]
004a8100  07 30 95 e7                                      ldr r3, [r5, r7]
004a8104  00 00 93 e5                                      ldr r0, [r3]
004a8108  04 00 50 e1                                      cmp r0, r4
004a810c  f5 ff ff 1a                                      bne #0x4a80e8
004a8110  08 00 40 e2                                      sub r0, r0, #8
004a8114  c9 a0 f9 eb                                      bl #0x310440
004a8118  07 30 95 e7                                      ldr r3, [r5, r7]
004a811c  00 20 a0 e3                                      mov r2, #0
004a8120  00 20 83 e5                                      str r2, [r3]
004a8124  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a8128  34 ca 4e 00 54 38 00 00 ac 33 00 00              .byte 0x34, 0xca, 0x4e, 0x00, 0x54, 0x38, 0x00, 0x00, 0xac, 0x33, 0x00, 0x00

; FUNCTION 0x004b27a0, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::DestructibleContainers
; alias: _ZN6Arrays22DestructibleContainers9readNamesEP11IStreamBase
; demangled: Arrays::DestructibleContainers::readNames(IStreamBase*)
; decoder-mode: arm
004b27a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b27a4  00 70 a0 e1                                      mov r7, r0
004b27a8  1c d0 4d e2                                      sub sp, sp, #0x1c
004b27ac  00 d6 ff eb                                      bl #0x4a7fb4
004b27b0  07 00 a0 e1                                      mov r0, r7
004b27b4  b5 84 f9 eb                                      bl #0x313a90
004b27b8  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b27bc  01 30 a0 e3                                      mov r3, #1
004b27c0  00 00 53 e3                                      cmp r3, #0
004b27c4  06 60 8f e0                                      add r6, pc, r6
004b27c8  14 00 8d e5                                      str r0, [sp, #0x14]
004b27cc  0c 30 8d e5                                      str r3, [sp, #0xc]
004b27d0  12 00 00 1a                                      bne #0x4b2820
004b27d4  14 30 8d e2                                      add r3, sp, #0x14
004b27d8  02 20 83 e2                                      add r2, r3, #2
004b27dc  01 30 83 e2                                      add r3, r3, #1
004b27e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b27e4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b27e8  03 00 52 e1                                      cmp r2, r3
004b27ec  02 40 a0 e1                                      mov r4, r2
004b27f0  01 10 20 e0                                      eor r1, r0, r1
004b27f4  01 10 43 e5                                      strb r1, [r3, #-1]
004b27f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b27fc  00 10 21 e0                                      eor r1, r1, r0
004b2800  01 10 c2 e5                                      strb r1, [r2, #1]
004b2804  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b2808  01 20 42 e2                                      sub r2, r2, #1
004b280c  00 10 21 e0                                      eor r1, r1, r0
004b2810  01 10 43 e5                                      strb r1, [r3, #-1]
004b2814  01 30 83 e2                                      add r3, r3, #1
004b2818  f0 ff ff 8a                                      bhi #0x4b27e0
004b281c  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b2820  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b2824  03 30 96 e7                                      ldr r3, [r6, r3]
004b2828  00 30 93 e5                                      ldr r3, [r3]
004b282c  00 00 53 e1                                      cmp r3, r0
004b2830  01 00 00 0a                                      beq #0x4b283c
004b2834  1c d0 8d e2                                      add sp, sp, #0x1c
004b2838  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b283c  00 01 a0 e1                                      lsl r0, r0, #2
004b2840  01 10 a0 e3                                      mov r1, #1
004b2844  48 77 f9 eb                                      bl #0x31056c
004b2848  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b284c  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b2850  09 30 96 e7                                      ldr r3, [r6, sb]
004b2854  00 00 52 e3                                      cmp r2, #0
004b2858  00 00 83 e5                                      str r0, [r3]
004b285c  f4 ff ff 0a                                      beq #0x4b2834
004b2860  10 a0 8d e2                                      add sl, sp, #0x10
004b2864  01 80 a0 e3                                      mov r8, #1
004b2868  08 10 8a e0                                      add r1, sl, r8
004b286c  02 30 8a e2                                      add r3, sl, #2
004b2870  00 40 a0 e3                                      mov r4, #0
004b2874  0a 00 8d e8                                      stm sp, {r1, r3}
004b2878  07 00 a0 e1                                      mov r0, r7
004b287c  0a 10 a0 e1                                      mov r1, sl
004b2880  46 b2 fc eb                                      bl #0x3df1a0
004b2884  00 00 58 e3                                      cmp r8, #0
004b2888  0c 80 8d e5                                      str r8, [sp, #0xc]
004b288c  0f 00 00 1a                                      bne #0x4b28d0
004b2890  00 30 9d e5                                      ldr r3, [sp]
004b2894  04 20 9d e5                                      ldr r2, [sp, #4]
004b2898  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b289c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b28a0  03 00 52 e1                                      cmp r2, r3
004b28a4  01 10 20 e0                                      eor r1, r0, r1
004b28a8  01 10 43 e5                                      strb r1, [r3, #-1]
004b28ac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b28b0  00 10 21 e0                                      eor r1, r1, r0
004b28b4  01 10 c2 e5                                      strb r1, [r2, #1]
004b28b8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b28bc  01 20 42 e2                                      sub r2, r2, #1
004b28c0  00 10 21 e0                                      eor r1, r1, r0
004b28c4  01 10 43 e5                                      strb r1, [r3, #-1]
004b28c8  01 30 83 e2                                      add r3, r3, #1
004b28cc  f1 ff ff 8a                                      bhi #0x4b2898
004b28d0  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b28d4  09 50 96 e7                                      ldr r5, [r6, sb]
004b28d8  01 10 a0 e3                                      mov r1, #1
004b28dc  01 00 80 e0                                      add r0, r0, r1
004b28e0  00 b0 95 e5                                      ldr fp, [r5]
004b28e4  20 77 f9 eb                                      bl #0x31056c
004b28e8  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b28ec  00 30 95 e5                                      ldr r3, [r5]
004b28f0  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b28f4  07 00 a0 e1                                      mov r0, r7
004b28f8  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b28fc  00 30 a0 e3                                      mov r3, #0
004b2900  d3 92 f9 eb                                      bl #0x317454
004b2904  00 30 95 e5                                      ldr r3, [r5]
004b2908  00 10 a0 e3                                      mov r1, #0
004b290c  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b2910  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b2914  01 40 84 e2                                      add r4, r4, #1
004b2918  03 10 c2 e7                                      strb r1, [r2, r3]
004b291c  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b2920  04 00 53 e1                                      cmp r3, r4
004b2924  d3 ff ff 8a                                      bhi #0x4b2878
004b2928  c1 ff ff ea                                      b #0x4b2834
; mapping-symbol data/literal pool
004b292c  cc 22 4e 00 ac 33 00 00 5c 2b 00 00              .byte 0xcc, 0x22, 0x4e, 0x00, 0xac, 0x33, 0x00, 0x00, 0x5c, 0x2b, 0x00, 0x00

; FUNCTION 0x004bbd50, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::DestructibleContainers
; alias: _ZN6Arrays22DestructibleContainers4readEP11IStreamBase
; demangled: Arrays::DestructibleContainers::read(IStreamBase*)
; decoder-mode: arm
004bbd50  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004bbd54  0c d0 4d e2                                      sub sp, sp, #0xc
004bbd58  00 a0 a0 e1                                      mov sl, r0
004bbd5c  4b 5f f9 eb                                      bl #0x313a90
004bbd60  24 61 9f e5                                      ldr r6, [pc, #0x124]
004bbd64  01 30 a0 e3                                      mov r3, #1
004bbd68  00 00 53 e3                                      cmp r3, #0
004bbd6c  04 00 8d e5                                      str r0, [sp, #4]
004bbd70  00 30 8d e5                                      str r3, [sp]
004bbd74  06 60 8f e0                                      add r6, pc, r6
004bbd78  10 00 00 1a                                      bne #0x4bbdc0
004bbd7c  04 30 8d e2                                      add r3, sp, #4
004bbd80  02 20 83 e2                                      add r2, r3, #2
004bbd84  01 30 83 e2                                      add r3, r3, #1
004bbd88  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bbd8c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bbd90  03 00 52 e1                                      cmp r2, r3
004bbd94  01 10 20 e0                                      eor r1, r0, r1
004bbd98  01 10 43 e5                                      strb r1, [r3, #-1]
004bbd9c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bbda0  00 10 21 e0                                      eor r1, r1, r0
004bbda4  01 10 c2 e5                                      strb r1, [r2, #1]
004bbda8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bbdac  01 20 42 e2                                      sub r2, r2, #1
004bbdb0  00 10 21 e0                                      eor r1, r1, r0
004bbdb4  01 10 43 e5                                      strb r1, [r3, #-1]
004bbdb8  01 30 83 e2                                      add r3, r3, #1
004bbdbc  f1 ff ff 8a                                      bhi #0x4bbd88
004bbdc0  a2 b0 ff eb                                      bl #0x4a8050
004bbdc4  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004bbdc8  04 40 9d e5                                      ldr r4, [sp, #4]
004bbdcc  44 50 a0 e3                                      mov r5, #0x44
004bbdd0  07 30 96 e7                                      ldr r3, [r6, r7]
004bbdd4  95 04 00 e0                                      mul r0, r5, r4
004bbdd8  00 40 83 e5                                      str r4, [r3]
004bbddc  08 00 80 e2                                      add r0, r0, #8
004bbde0  01 10 a0 e3                                      mov r1, #1
004bbde4  e0 51 f9 eb                                      bl #0x31056c
004bbde8  00 00 54 e3                                      cmp r4, #0
004bbdec  00 50 80 e5                                      str r5, [r0]
004bbdf0  04 40 80 e5                                      str r4, [r0, #4]
004bbdf4  08 30 80 e2                                      add r3, r0, #8
004bbdf8  0a 00 00 0a                                      beq #0x4bbe28
004bbdfc  90 10 9f e5                                      ldr r1, [pc, #0x90]
004bbe00  00 20 a0 e3                                      mov r2, #0
004bbe04  02 c0 a0 e1                                      mov ip, r2
004bbe08  01 10 96 e7                                      ldr r1, [r6, r1]
004bbe0c  08 10 81 e2                                      add r1, r1, #8
004bbe10  01 20 82 e2                                      add r2, r2, #1
004bbe14  04 00 52 e1                                      cmp r2, r4
004bbe18  08 10 80 e5                                      str r1, [r0, #8]
004bbe1c  38 c0 80 e5                                      str ip, [r0, #0x38]
004bbe20  44 00 80 e2                                      add r0, r0, #0x44
004bbe24  f9 ff ff 1a                                      bne #0x4bbe10
004bbe28  07 20 96 e7                                      ldr r2, [r6, r7]
004bbe2c  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bbe30  00 10 92 e5                                      ldr r1, [r2]
004bbe34  08 20 96 e7                                      ldr r2, [r6, r8]
004bbe38  00 00 51 e3                                      cmp r1, #0
004bbe3c  00 30 82 e5                                      str r3, [r2]
004bbe40  0f 00 00 0a                                      beq #0x4bbe84
004bbe44  00 40 a0 e3                                      mov r4, #0
004bbe48  04 50 a0 e1                                      mov r5, r4
004bbe4c  01 00 00 ea                                      b #0x4bbe58
004bbe50  08 30 96 e7                                      ldr r3, [r6, r8]
004bbe54  00 30 93 e5                                      ldr r3, [r3]
004bbe58  04 00 83 e0                                      add r0, r3, r4
004bbe5c  0a 10 a0 e1                                      mov r1, sl
004bbe60  04 30 93 e7                                      ldr r3, [r3, r4]
004bbe64  0f e0 a0 e1                                      mov lr, pc
004bbe68  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bbe6c  07 30 96 e7                                      ldr r3, [r6, r7]
004bbe70  01 50 85 e2                                      add r5, r5, #1
004bbe74  44 40 84 e2                                      add r4, r4, #0x44
004bbe78  00 30 93 e5                                      ldr r3, [r3]
004bbe7c  05 00 53 e1                                      cmp r3, r5
004bbe80  f2 ff ff 8a                                      bhi #0x4bbe50
004bbe84  0c d0 8d e2                                      add sp, sp, #0xc
004bbe88  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bbe8c  1c 8d 4d 00 ac 33 00 00 44 3e 00 00 54 38 00 00  .byte 0x1c, 0x8d, 0x4d, 0x00, 0xac, 0x33, 0x00, 0x00, 0x44, 0x3e, 0x00, 0x00, 0x54, 0x38, 0x00, 0x00
