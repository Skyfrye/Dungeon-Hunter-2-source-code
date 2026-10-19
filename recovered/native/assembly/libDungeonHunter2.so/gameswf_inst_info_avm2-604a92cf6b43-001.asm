; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c8e8c, declared_size=1448, range_size=1448, mode=arm
; class-group: gameswf::inst_info_avm2
; alias: _ZN7gameswf14inst_info_avm27processEPKNS_7abc_defEPKh
; demangled: gameswf::inst_info_avm2::process(gameswf::abc_def const*, unsigned char const*)
; decoder-mode: arm
007c8e8c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007c8e90  08 30 90 e5                                      ldr r3, [r0, #8]
007c8e94  1c d0 4d e2                                      sub sp, sp, #0x1c
007c8e98  00 60 a0 e1                                      mov r6, r0
007c8e9c  00 00 53 e3                                      cmp r3, #0
007c8ea0  01 70 a0 e1                                      mov r7, r1
007c8ea4  02 90 a0 e1                                      mov sb, r2
007c8ea8  01 40 a0 d3                                      movle r4, #1
007c8eac  31 00 00 da                                      ble #0x7c8f78
007c8eb0  34 25 9f e5                                      ldr r2, [pc, #0x534]
007c8eb4  34 b5 9f e5                                      ldr fp, [pc, #0x534]
007c8eb8  00 50 a0 e3                                      mov r5, #0
007c8ebc  02 20 8f e0                                      add r2, pc, r2
007c8ec0  04 20 8d e5                                      str r2, [sp, #4]
007c8ec4  28 25 9f e5                                      ldr r2, [pc, #0x528]
007c8ec8  0b b0 8f e0                                      add fp, pc, fp
007c8ecc  01 40 a0 e3                                      mov r4, #1
007c8ed0  02 20 8f e0                                      add r2, pc, r2
007c8ed4  08 20 8d e5                                      str r2, [sp, #8]
007c8ed8  18 25 9f e5                                      ldr r2, [pc, #0x518]
007c8edc  02 20 8f e0                                      add r2, pc, r2
007c8ee0  0c 20 8d e5                                      str r2, [sp, #0xc]
007c8ee4  04 20 96 e5                                      ldr r2, [r6, #4]
007c8ee8  05 21 92 e7                                      ldr r2, [r2, r5, lsl #2]
007c8eec  01 20 42 e2                                      sub r2, r2, #1
007c8ef0  0f 00 52 e3                                      cmp r2, #0xf
007c8ef4  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
007c8ef8  1b 00 00 ea                                      b #0x7c8f6c
007c8efc  0e 00 00 ea                                      b #0x7c8f3c
007c8f00  0e 01 00 ea                                      b #0x7c9340
007c8f04  01 01 00 ea                                      b #0x7c9310
007c8f08  f3 00 00 ea                                      b #0x7c92dc
007c8f0c  e3 00 00 ea                                      b #0x7c92a0
007c8f10  d3 00 00 ea                                      b #0x7c9264
007c8f14  c1 00 00 ea                                      b #0x7c9220
007c8f18  ab 00 00 ea                                      b #0x7c91cc
007c8f1c  9d 00 00 ea                                      b #0x7c9198
007c8f20  8f 00 00 ea                                      b #0x7c9164
007c8f24  76 00 00 ea                                      b #0x7c9104
007c8f28  68 00 00 ea                                      b #0x7c90d0
007c8f2c  5a 00 00 ea                                      b #0x7c909c
007c8f30  4d 00 00 ea                                      b #0x7c906c
007c8f34  3b 00 00 ea                                      b #0x7c9028
007c8f38  11 00 00 ea                                      b #0x7c8f84
007c8f3c  04 10 89 e0                                      add r1, sb, r4
007c8f40  14 00 8d e2                                      add r0, sp, #0x14
007c8f44  80 ff ff eb                                      bl #0x7c8d4c
007c8f48  14 10 9d e5                                      ldr r1, [sp, #0x14]
007c8f4c  70 30 97 e5                                      ldr r3, [r7, #0x70]
007c8f50  00 40 84 e0                                      add r4, r4, r0
007c8f54  03 00 51 e1                                      cmp r1, r3
007c8f58  10 01 00 ba                                      blt #0x7c93a0
007c8f5c  98 04 9f e5                                      ldr r0, [pc, #0x498]
007c8f60  00 00 8f e0                                      add r0, pc, r0
007c8f64  a1 60 fe eb                                      bl #0x7611f0
007c8f68  08 30 96 e5                                      ldr r3, [r6, #8]
007c8f6c  01 50 85 e2                                      add r5, r5, #1
007c8f70  03 00 55 e1                                      cmp r5, r3
007c8f74  da ff ff ba                                      blt #0x7c8ee4
007c8f78  04 00 a0 e1                                      mov r0, r4
007c8f7c  1c d0 8d e2                                      add sp, sp, #0x1c
007c8f80  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007c8f84  04 20 89 e0                                      add r2, sb, r4
007c8f88  01 10 d2 e5                                      ldrb r1, [r2, #1]
007c8f8c  04 30 d9 e7                                      ldrb r3, [sb, r4]
007c8f90  d2 20 d2 e1                                      ldrsb r2, [r2, #2]
007c8f94  03 40 84 e2                                      add r4, r4, #3
007c8f98  01 34 83 e1                                      orr r3, r3, r1, lsl #8
007c8f9c  02 38 83 e1                                      orr r3, r3, r2, lsl #16
007c8fa0  03 10 a0 e1                                      mov r1, r3
007c8fa4  04 00 9d e5                                      ldr r0, [sp, #4]
007c8fa8  14 30 8d e5                                      str r3, [sp, #0x14]
007c8fac  8f 60 fe eb                                      bl #0x7611f0
007c8fb0  04 10 89 e0                                      add r1, sb, r4
007c8fb4  10 00 8d e2                                      add r0, sp, #0x10
007c8fb8  63 ff ff eb                                      bl #0x7c8d4c
007c8fbc  10 30 9d e5                                      ldr r3, [sp, #0x10]
007c8fc0  04 40 80 e0                                      add r4, r0, r4
007c8fc4  00 00 53 e3                                      cmp r3, #0
007c8fc8  04 a0 89 a0                                      addge sl, sb, r4
007c8fcc  00 80 a0 a3                                      movge r8, #0
007c8fd0  0f 00 00 ba                                      blt #0x7c9014
007c8fd4  d2 30 da e1                                      ldrsb r3, [sl, #2]
007c8fd8  01 10 da e5                                      ldrb r1, [sl, #1]
007c8fdc  03 20 da e4                                      ldrb r2, [sl], #3
007c8fe0  03 38 a0 e1                                      lsl r3, r3, #0x10
007c8fe4  01 34 83 e1                                      orr r3, r3, r1, lsl #8
007c8fe8  02 30 83 e1                                      orr r3, r3, r2
007c8fec  03 20 a0 e1                                      mov r2, r3
007c8ff0  08 10 a0 e1                                      mov r1, r8
007c8ff4  0b 00 a0 e1                                      mov r0, fp
007c8ff8  14 30 8d e5                                      str r3, [sp, #0x14]
007c8ffc  7b 60 fe eb                                      bl #0x7611f0
007c9000  10 30 9d e5                                      ldr r3, [sp, #0x10]
007c9004  01 80 88 e2                                      add r8, r8, #1
007c9008  03 40 84 e2                                      add r4, r4, #3
007c900c  08 00 53 e1                                      cmp r3, r8
007c9010  ef ff ff aa                                      bge #0x7c8fd4
007c9014  08 30 96 e5                                      ldr r3, [r6, #8]
007c9018  01 50 85 e2                                      add r5, r5, #1
007c901c  03 00 55 e1                                      cmp r5, r3
007c9020  af ff ff ba                                      blt #0x7c8ee4
007c9024  d3 ff ff ea                                      b #0x7c8f78
007c9028  04 30 89 e0                                      add r3, sb, r4
007c902c  02 00 d3 e5                                      ldrb r0, [r3, #2]
007c9030  01 10 d3 e5                                      ldrb r1, [r3, #1]
007c9034  04 20 d9 e7                                      ldrb r2, [sb, r4]
007c9038  00 38 a0 e1                                      lsl r3, r0, #0x10
007c903c  01 34 83 e1                                      orr r3, r3, r1, lsl #8
007c9040  02 30 83 e1                                      orr r3, r3, r2
007c9044  03 10 a0 e1                                      mov r1, r3
007c9048  08 00 9d e5                                      ldr r0, [sp, #8]
007c904c  14 30 8d e5                                      str r3, [sp, #0x14]
007c9050  66 60 fe eb                                      bl #0x7611f0
007c9054  08 30 96 e5                                      ldr r3, [r6, #8]
007c9058  01 50 85 e2                                      add r5, r5, #1
007c905c  03 40 84 e2                                      add r4, r4, #3
007c9060  03 00 55 e1                                      cmp r5, r3
007c9064  9e ff ff ba                                      blt #0x7c8ee4
007c9068  c2 ff ff ea                                      b #0x7c8f78
007c906c  04 10 89 e0                                      add r1, sb, r4
007c9070  14 00 8d e2                                      add r0, sp, #0x14
007c9074  34 ff ff eb                                      bl #0x7c8d4c
007c9078  14 10 9d e5                                      ldr r1, [sp, #0x14]
007c907c  00 40 84 e0                                      add r4, r4, r0
007c9080  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007c9084  59 60 fe eb                                      bl #0x7611f0
007c9088  08 30 96 e5                                      ldr r3, [r6, #8]
007c908c  01 50 85 e2                                      add r5, r5, #1
007c9090  03 00 55 e1                                      cmp r5, r3
007c9094  92 ff ff ba                                      blt #0x7c8ee4
007c9098  b6 ff ff ea                                      b #0x7c8f78
007c909c  04 10 89 e0                                      add r1, sb, r4
007c90a0  14 00 8d e2                                      add r0, sp, #0x14
007c90a4  28 ff ff eb                                      bl #0x7c8d4c
007c90a8  00 40 84 e0                                      add r4, r4, r0
007c90ac  4c 03 9f e5                                      ldr r0, [pc, #0x34c]
007c90b0  14 10 9d e5                                      ldr r1, [sp, #0x14]
007c90b4  01 50 85 e2                                      add r5, r5, #1
007c90b8  00 00 8f e0                                      add r0, pc, r0
007c90bc  4b 60 fe eb                                      bl #0x7611f0
007c90c0  08 30 96 e5                                      ldr r3, [r6, #8]
007c90c4  03 00 55 e1                                      cmp r5, r3
007c90c8  85 ff ff ba                                      blt #0x7c8ee4
007c90cc  a9 ff ff ea                                      b #0x7c8f78
007c90d0  04 10 89 e0                                      add r1, sb, r4
007c90d4  14 00 8d e2                                      add r0, sp, #0x14
007c90d8  1b ff ff eb                                      bl #0x7c8d4c
007c90dc  00 40 84 e0                                      add r4, r4, r0
007c90e0  1c 03 9f e5                                      ldr r0, [pc, #0x31c]
007c90e4  14 10 9d e5                                      ldr r1, [sp, #0x14]
007c90e8  01 50 85 e2                                      add r5, r5, #1
007c90ec  00 00 8f e0                                      add r0, pc, r0
007c90f0  3e 60 fe eb                                      bl #0x7611f0
007c90f4  08 30 96 e5                                      ldr r3, [r6, #8]
007c90f8  03 00 55 e1                                      cmp r5, r3
007c90fc  78 ff ff ba                                      blt #0x7c8ee4
007c9100  9c ff ff ea                                      b #0x7c8f78
007c9104  04 10 89 e0                                      add r1, sb, r4
007c9108  14 00 8d e2                                      add r0, sp, #0x14
007c910c  0e ff ff eb                                      bl #0x7c8d4c
007c9110  14 10 9d e5                                      ldr r1, [sp, #0x14]
007c9114  7c 20 97 e5                                      ldr r2, [r7, #0x7c]
007c9118  3c 30 97 e5                                      ldr r3, [r7, #0x3c]
007c911c  00 40 84 e0                                      add r4, r4, r0
007c9120  01 21 92 e7                                      ldr r2, [r2, r1, lsl #2]
007c9124  14 10 a0 e3                                      mov r1, #0x14
007c9128  d8 02 9f e5                                      ldr r0, [pc, #0x2d8]
007c912c  5c 20 92 e5                                      ldr r2, [r2, #0x5c]
007c9130  01 50 85 e2                                      add r5, r5, #1
007c9134  00 00 8f e0                                      add r0, pc, r0
007c9138  91 02 02 e0                                      mul r2, r1, r2
007c913c  d2 10 93 e1                                      ldrsb r1, [r3, r2]
007c9140  02 30 83 e0                                      add r3, r3, r2
007c9144  01 00 71 e3                                      cmn r1, #1
007c9148  01 10 83 12                                      addne r1, r3, #1
007c914c  0c 10 93 05                                      ldreq r1, [r3, #0xc]
007c9150  26 60 fe eb                                      bl #0x7611f0
007c9154  08 30 96 e5                                      ldr r3, [r6, #8]
007c9158  03 00 55 e1                                      cmp r5, r3
007c915c  60 ff ff ba                                      blt #0x7c8ee4
007c9160  84 ff ff ea                                      b #0x7c8f78
007c9164  04 10 89 e0                                      add r1, sb, r4
007c9168  14 00 8d e2                                      add r0, sp, #0x14
007c916c  f6 fe ff eb                                      bl #0x7c8d4c
007c9170  00 40 84 e0                                      add r4, r4, r0
007c9174  90 02 9f e5                                      ldr r0, [pc, #0x290]
007c9178  14 10 9d e5                                      ldr r1, [sp, #0x14]
007c917c  01 50 85 e2                                      add r5, r5, #1
007c9180  00 00 8f e0                                      add r0, pc, r0
007c9184  19 60 fe eb                                      bl #0x7611f0
007c9188  08 30 96 e5                                      ldr r3, [r6, #8]
007c918c  03 00 55 e1                                      cmp r5, r3
007c9190  53 ff ff ba                                      blt #0x7c8ee4
007c9194  77 ff ff ea                                      b #0x7c8f78
007c9198  04 10 89 e0                                      add r1, sb, r4
007c919c  14 00 8d e2                                      add r0, sp, #0x14
007c91a0  e9 fe ff eb                                      bl #0x7c8d4c
007c91a4  00 40 84 e0                                      add r4, r4, r0
007c91a8  60 02 9f e5                                      ldr r0, [pc, #0x260]
007c91ac  14 10 9d e5                                      ldr r1, [sp, #0x14]
007c91b0  01 50 85 e2                                      add r5, r5, #1
007c91b4  00 00 8f e0                                      add r0, pc, r0
007c91b8  0c 60 fe eb                                      bl #0x7611f0
007c91bc  08 30 96 e5                                      ldr r3, [r6, #8]
007c91c0  03 00 55 e1                                      cmp r5, r3
007c91c4  46 ff ff ba                                      blt #0x7c8ee4
007c91c8  6a ff ff ea                                      b #0x7c8f78
007c91cc  04 10 89 e0                                      add r1, sb, r4
007c91d0  14 00 8d e2                                      add r0, sp, #0x14
007c91d4  dc fe ff eb                                      bl #0x7c8d4c
007c91d8  14 30 9d e5                                      ldr r3, [sp, #0x14]
007c91dc  14 10 a0 e3                                      mov r1, #0x14
007c91e0  3c 20 97 e5                                      ldr r2, [r7, #0x3c]
007c91e4  91 03 03 e0                                      mul r3, r1, r3
007c91e8  00 40 84 e0                                      add r4, r4, r0
007c91ec  d3 10 92 e1                                      ldrsb r1, [r2, r3]
007c91f0  1c 02 9f e5                                      ldr r0, [pc, #0x21c]
007c91f4  03 30 82 e0                                      add r3, r2, r3
007c91f8  01 00 71 e3                                      cmn r1, #1
007c91fc  01 10 83 12                                      addne r1, r3, #1
007c9200  0c 10 93 05                                      ldreq r1, [r3, #0xc]
007c9204  00 00 8f e0                                      add r0, pc, r0
007c9208  f8 5f fe eb                                      bl #0x7611f0
007c920c  08 30 96 e5                                      ldr r3, [r6, #8]
007c9210  01 50 85 e2                                      add r5, r5, #1
007c9214  03 00 55 e1                                      cmp r5, r3
007c9218  31 ff ff ba                                      blt #0x7c8ee4
007c921c  55 ff ff ea                                      b #0x7c8f78
007c9220  04 10 89 e0                                      add r1, sb, r4
007c9224  14 00 8d e2                                      add r0, sp, #0x14
007c9228  c7 fe ff eb                                      bl #0x7c8d4c
007c922c  14 30 9d e5                                      ldr r3, [sp, #0x14]
007c9230  2c 20 97 e5                                      ldr r2, [r7, #0x2c]
007c9234  00 40 84 e0                                      add r4, r4, r0
007c9238  d8 01 9f e5                                      ldr r0, [pc, #0x1d8]
007c923c  83 31 a0 e1                                      lsl r3, r3, #3
007c9240  02 30 83 e0                                      add r3, r3, r2
007c9244  d0 20 c3 e1                                      ldrd r2, r3, [r3]
007c9248  00 00 8f e0                                      add r0, pc, r0
007c924c  e7 5f fe eb                                      bl #0x7611f0
007c9250  08 30 96 e5                                      ldr r3, [r6, #8]
007c9254  01 50 85 e2                                      add r5, r5, #1
007c9258  03 00 55 e1                                      cmp r5, r3
007c925c  20 ff ff ba                                      blt #0x7c8ee4
007c9260  44 ff ff ea                                      b #0x7c8f78
007c9264  04 10 89 e0                                      add r1, sb, r4
007c9268  14 00 8d e2                                      add r0, sp, #0x14
007c926c  b6 fe ff eb                                      bl #0x7c8d4c
007c9270  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
007c9274  14 20 9d e5                                      ldr r2, [sp, #0x14]
007c9278  00 40 84 e0                                      add r4, r4, r0
007c927c  98 01 9f e5                                      ldr r0, [pc, #0x198]
007c9280  02 11 93 e7                                      ldr r1, [r3, r2, lsl #2]
007c9284  01 50 85 e2                                      add r5, r5, #1
007c9288  00 00 8f e0                                      add r0, pc, r0
007c928c  d7 5f fe eb                                      bl #0x7611f0
007c9290  08 30 96 e5                                      ldr r3, [r6, #8]
007c9294  03 00 55 e1                                      cmp r5, r3
007c9298  11 ff ff ba                                      blt #0x7c8ee4
007c929c  35 ff ff ea                                      b #0x7c8f78
007c92a0  04 10 89 e0                                      add r1, sb, r4
007c92a4  14 00 8d e2                                      add r0, sp, #0x14
007c92a8  a7 fe ff eb                                      bl #0x7c8d4c
007c92ac  0c 30 97 e5                                      ldr r3, [r7, #0xc]
007c92b0  14 20 9d e5                                      ldr r2, [sp, #0x14]
007c92b4  00 40 84 e0                                      add r4, r4, r0
007c92b8  60 01 9f e5                                      ldr r0, [pc, #0x160]
007c92bc  02 11 93 e7                                      ldr r1, [r3, r2, lsl #2]
007c92c0  01 50 85 e2                                      add r5, r5, #1
007c92c4  00 00 8f e0                                      add r0, pc, r0
007c92c8  c8 5f fe eb                                      bl #0x7611f0
007c92cc  08 30 96 e5                                      ldr r3, [r6, #8]
007c92d0  03 00 55 e1                                      cmp r5, r3
007c92d4  02 ff ff ba                                      blt #0x7c8ee4
007c92d8  26 ff ff ea                                      b #0x7c8f78
007c92dc  04 10 89 e0                                      add r1, sb, r4
007c92e0  14 00 8d e2                                      add r0, sp, #0x14
007c92e4  98 fe ff eb                                      bl #0x7c8d4c
007c92e8  00 40 84 e0                                      add r4, r4, r0
007c92ec  30 01 9f e5                                      ldr r0, [pc, #0x130]
007c92f0  14 10 9d e5                                      ldr r1, [sp, #0x14]
007c92f4  01 50 85 e2                                      add r5, r5, #1
007c92f8  00 00 8f e0                                      add r0, pc, r0
007c92fc  bb 5f fe eb                                      bl #0x7611f0
007c9300  08 30 96 e5                                      ldr r3, [r6, #8]
007c9304  03 00 55 e1                                      cmp r5, r3
007c9308  f5 fe ff ba                                      blt #0x7c8ee4
007c930c  19 ff ff ea                                      b #0x7c8f78
007c9310  04 30 d9 e7                                      ldrb r3, [sb, r4]
007c9314  0c 01 9f e5                                      ldr r0, [pc, #0x10c]
007c9318  01 50 85 e2                                      add r5, r5, #1
007c931c  03 10 a0 e1                                      mov r1, r3
007c9320  00 00 8f e0                                      add r0, pc, r0
007c9324  14 30 8d e5                                      str r3, [sp, #0x14]
007c9328  b0 5f fe eb                                      bl #0x7611f0
007c932c  08 30 96 e5                                      ldr r3, [r6, #8]
007c9330  01 40 84 e2                                      add r4, r4, #1
007c9334  03 00 55 e1                                      cmp r5, r3
007c9338  e9 fe ff ba                                      blt #0x7c8ee4
007c933c  0d ff ff ea                                      b #0x7c8f78
007c9340  04 10 89 e0                                      add r1, sb, r4
007c9344  14 00 8d e2                                      add r0, sp, #0x14
007c9348  7f fe ff eb                                      bl #0x7c8d4c
007c934c  14 10 9d e5                                      ldr r1, [sp, #0x14]
007c9350  4c 20 97 e5                                      ldr r2, [r7, #0x4c]
007c9354  3c 30 97 e5                                      ldr r3, [r7, #0x3c]
007c9358  00 40 84 e0                                      add r4, r4, r0
007c935c  81 21 82 e0                                      add r2, r2, r1, lsl #3
007c9360  04 20 92 e5                                      ldr r2, [r2, #4]
007c9364  14 10 a0 e3                                      mov r1, #0x14
007c9368  bc 00 9f e5                                      ldr r0, [pc, #0xbc]
007c936c  91 02 02 e0                                      mul r2, r1, r2
007c9370  00 00 8f e0                                      add r0, pc, r0
007c9374  d2 10 93 e1                                      ldrsb r1, [r3, r2]
007c9378  02 20 83 e0                                      add r2, r3, r2
007c937c  01 50 85 e2                                      add r5, r5, #1
007c9380  01 00 71 e3                                      cmn r1, #1
007c9384  01 10 82 12                                      addne r1, r2, #1
007c9388  0c 10 92 05                                      ldreq r1, [r2, #0xc]
007c938c  97 5f fe eb                                      bl #0x7611f0
007c9390  08 30 96 e5                                      ldr r3, [r6, #8]
007c9394  03 00 55 e1                                      cmp r5, r3
007c9398  d1 fe ff ba                                      blt #0x7c8ee4
007c939c  f5 fe ff ea                                      b #0x7c8f78
007c93a0  6c 00 97 e5                                      ldr r0, [r7, #0x6c]
007c93a4  14 30 a0 e3                                      mov r3, #0x14
007c93a8  3c 20 97 e5                                      ldr r2, [r7, #0x3c]
007c93ac  93 01 21 e0                                      mla r1, r3, r1, r0
007c93b0  01 50 85 e2                                      add r5, r5, #1
007c93b4  10 10 91 e5                                      ldr r1, [r1, #0x10]
007c93b8  93 01 03 e0                                      mul r3, r3, r1
007c93bc  d3 00 92 e1                                      ldrsb r0, [r2, r3]
007c93c0  03 30 82 e0                                      add r3, r2, r3
007c93c4  01 00 70 e3                                      cmn r0, #1
007c93c8  60 00 9f e5                                      ldr r0, [pc, #0x60]
007c93cc  01 10 83 12                                      addne r1, r3, #1
007c93d0  0c 10 93 05                                      ldreq r1, [r3, #0xc]
007c93d4  00 00 8f e0                                      add r0, pc, r0
007c93d8  84 5f fe eb                                      bl #0x7611f0
007c93dc  08 30 96 e5                                      ldr r3, [r6, #8]
007c93e0  03 00 55 e1                                      cmp r5, r3
007c93e4  be fe ff ba                                      blt #0x7c8ee4
007c93e8  e2 fe ff ea                                      b #0x7c8f78
; mapping-symbol data/literal pool
007c93ec  7c 23 14 00 88 23 14 00 58 23 14 00 34 23 14 00  .byte 0x7c, 0x23, 0x14, 0x00, 0x88, 0x23, 0x14, 0x00, 0x58, 0x23, 0x14, 0x00, 0x34, 0x23, 0x14, 0x00
007c93fc  c8 21 14 00 48 21 14 00 fc 20 14 00 a4 20 14 00  .byte 0xc8, 0x21, 0x14, 0x00, 0x48, 0x21, 0x14, 0x00, 0xfc, 0x20, 0x14, 0x00, 0xa4, 0x20, 0x14, 0x00
007c940c  48 20 14 00 04 20 14 00 a4 1f 14 00 50 1f 14 00  .byte 0x48, 0x20, 0x14, 0x00, 0x04, 0x20, 0x14, 0x00, 0xa4, 0x1f, 0x14, 0x00, 0x50, 0x1f, 0x14, 0x00
007c941c  00 1f 14 00 b4 1e 14 00 80 1e 14 00 58 1e 14 00  .byte 0x00, 0x1f, 0x14, 0x00, 0xb4, 0x1e, 0x14, 0x00, 0x80, 0x1e, 0x14, 0x00, 0x58, 0x1e, 0x14, 0x00
007c942c  f0 1d 14 00 74 1d 14 00                          .byte 0xf0, 0x1d, 0x14, 0x00, 0x74, 0x1d, 0x14, 0x00

; FUNCTION 0x007c9acc, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::inst_info_avm2
; alias: _ZN7gameswf14inst_info_avm2C1EPKcNS_15arg_format_avm2Ez
; demangled: gameswf::inst_info_avm2::inst_info_avm2(char const*, gameswf::arg_format_avm2, ...)
; decoder-mode: arm
007c9acc  0c 00 2d e9                                      push {r2, r3}
007c9ad0  10 40 2d e9                                      push {r4, lr}
007c9ad4  00 30 a0 e3                                      mov r3, #0
007c9ad8  08 d0 4d e2                                      sub sp, sp, #8
007c9adc  00 40 a0 e1                                      mov r4, r0
007c9ae0  00 10 80 e5                                      str r1, [r0]
007c9ae4  10 30 c0 e5                                      strb r3, [r0, #0x10]
007c9ae8  04 30 80 e5                                      str r3, [r0, #4]
007c9aec  08 30 80 e5                                      str r3, [r0, #8]
007c9af0  0c 30 80 e5                                      str r3, [r0, #0xc]
007c9af4  01 10 a0 e3                                      mov r1, #1
007c9af8  04 00 80 e2                                      add r0, r0, #4
007c9afc  c3 fc ff eb                                      bl #0x7c8e10
007c9b00  08 20 94 e5                                      ldr r2, [r4, #8]
007c9b04  04 30 94 e5                                      ldr r3, [r4, #4]
007c9b08  10 10 9d e5                                      ldr r1, [sp, #0x10]
007c9b0c  02 11 83 e7                                      str r1, [r3, r2, lsl #2]
007c9b10  01 30 a0 e3                                      mov r3, #1
007c9b14  08 30 84 e5                                      str r3, [r4, #8]
007c9b18  14 30 8d e2                                      add r3, sp, #0x14
007c9b1c  04 30 8d e5                                      str r3, [sp, #4]
007c9b20  f8 10 ed eb                                      bl #0x30df08

; FUNCTION 0x007c9b24, declared_size=164, range_size=164, mode=arm
; class-group: gameswf::inst_info_avm2
; alias: _ZN7gameswf14inst_info_avm2aSERKS0_
; demangled: gameswf::inst_info_avm2::operator=(gameswf::inst_info_avm2 const&)
; decoder-mode: arm
007c9b24  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007c9b28  00 30 91 e5                                      ldr r3, [r1]
007c9b2c  00 70 a0 e1                                      mov r7, r0
007c9b30  01 80 a0 e1                                      mov r8, r1
007c9b34  04 30 87 e4                                      str r3, [r7], #4
007c9b38  08 60 91 e5                                      ldr r6, [r1, #8]
007c9b3c  00 50 a0 e1                                      mov r5, r0
007c9b40  08 40 90 e5                                      ldr r4, [r0, #8]
007c9b44  00 00 56 e3                                      cmp r6, #0
007c9b48  02 00 00 0a                                      beq #0x7c9b58
007c9b4c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
007c9b50  03 00 56 e1                                      cmp r6, r3
007c9b54  17 00 00 ca                                      bgt #0x7c9bb8
007c9b58  04 00 56 e1                                      cmp r6, r4
007c9b5c  07 00 00 da                                      ble #0x7c9b80
007c9b60  04 31 a0 e1                                      lsl r3, r4, #2
007c9b64  00 10 a0 e3                                      mov r1, #0
007c9b68  00 20 97 e5                                      ldr r2, [r7]
007c9b6c  01 40 84 e2                                      add r4, r4, #1
007c9b70  06 00 54 e1                                      cmp r4, r6
007c9b74  03 10 82 e7                                      str r1, [r2, r3]
007c9b78  04 30 83 e2                                      add r3, r3, #4
007c9b7c  f9 ff ff 1a                                      bne #0x7c9b68
007c9b80  00 00 56 e3                                      cmp r6, #0
007c9b84  08 60 85 e5                                      str r6, [r5, #8]
007c9b88  08 00 00 da                                      ble #0x7c9bb0
007c9b8c  00 30 a0 e3                                      mov r3, #0
007c9b90  04 10 98 e5                                      ldr r1, [r8, #4]
007c9b94  04 20 95 e5                                      ldr r2, [r5, #4]
007c9b98  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
007c9b9c  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
007c9ba0  08 20 95 e5                                      ldr r2, [r5, #8]
007c9ba4  01 30 83 e2                                      add r3, r3, #1
007c9ba8  02 00 53 e1                                      cmp r3, r2
007c9bac  f7 ff ff ba                                      blt #0x7c9b90
007c9bb0  05 00 a0 e1                                      mov r0, r5
007c9bb4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007c9bb8  07 00 a0 e1                                      mov r0, r7
007c9bbc  c6 10 86 e0                                      add r1, r6, r6, asr #1
007c9bc0  92 fc ff eb                                      bl #0x7c8e10
007c9bc4  e3 ff ff ea                                      b #0x7c9b58

; FUNCTION 0x007c9bc8, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::inst_info_avm2
; alias: _ZN7gameswf14inst_info_avm2D1Ev
; demangled: gameswf::inst_info_avm2::~inst_info_avm2()
; decoder-mode: arm
007c9bc8  10 40 2d e9                                      push {r4, lr}
007c9bcc  08 30 90 e5                                      ldr r3, [r0, #8]
007c9bd0  00 40 a0 e1                                      mov r4, r0
007c9bd4  04 00 80 e2                                      add r0, r0, #4
007c9bd8  00 00 53 e3                                      cmp r3, #0
007c9bdc  04 00 00 da                                      ble #0x7c9bf4
007c9be0  00 10 a0 e3                                      mov r1, #0
007c9be4  08 10 84 e5                                      str r1, [r4, #8]
007c9be8  88 fc ff eb                                      bl #0x7c8e10
007c9bec  04 00 a0 e1                                      mov r0, r4
007c9bf0  10 80 bd e8                                      pop {r4, pc}
007c9bf4  f9 ff ff aa                                      bge #0x7c9be0
007c9bf8  03 21 a0 e1                                      lsl r2, r3, #2
007c9bfc  00 c0 a0 e3                                      mov ip, #0
007c9c00  00 10 90 e5                                      ldr r1, [r0]
007c9c04  01 30 93 e2                                      adds r3, r3, #1
007c9c08  02 c0 81 e7                                      str ip, [r1, r2]
007c9c0c  04 20 82 e2                                      add r2, r2, #4
007c9c10  fa ff ff 1a                                      bne #0x7c9c00
007c9c14  00 10 a0 e3                                      mov r1, #0
007c9c18  08 10 84 e5                                      str r1, [r4, #8]
007c9c1c  7b fc ff eb                                      bl #0x7c8e10
007c9c20  04 00 a0 e1                                      mov r0, r4
007c9c24  10 80 bd e8                                      pop {r4, pc}
