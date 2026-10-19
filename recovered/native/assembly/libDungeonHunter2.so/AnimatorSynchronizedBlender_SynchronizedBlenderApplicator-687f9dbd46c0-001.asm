; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00367b64, declared_size=4, range_size=4, mode=arm
; class-group: AnimatorSynchronizedBlender::SynchronizedBlenderApplicator
; alias: _ZN27AnimatorSynchronizedBlender29SynchronizedBlenderApplicator10ResetDeltaEj
; demangled: AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::ResetDelta(unsigned int)
; decoder-mode: arm
00367b64  1e ff 2f e1                                      bx lr

; FUNCTION 0x00367d4c, declared_size=72, range_size=72, mode=arm
; class-group: AnimatorSynchronizedBlender::SynchronizedBlenderApplicator
; alias: _ZN27AnimatorSynchronizedBlender29SynchronizedBlenderApplicatorD1Ev
; demangled: AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::~SynchronizedBlenderApplicator()
; decoder-mode: arm
00367d4c  10 40 2d e9                                      push {r4, lr}
00367d50  34 30 9f e5                                      ldr r3, [pc, #0x34]
00367d54  34 20 9f e5                                      ldr r2, [pc, #0x34]
00367d58  00 40 a0 e1                                      mov r4, r0
00367d5c  03 30 8f e0                                      add r3, pc, r3
00367d60  40 00 90 e5                                      ldr r0, [r0, #0x40]
00367d64  02 20 93 e7                                      ldr r2, [r3, r2]
00367d68  00 00 50 e3                                      cmp r0, #0
00367d6c  08 20 82 e2                                      add r2, r2, #8
00367d70  00 20 84 e5                                      str r2, [r4]
00367d74  00 00 00 0a                                      beq #0x367d7c
00367d78  b4 a1 fe eb                                      bl #0x310450
00367d7c  04 00 a0 e1                                      mov r0, r4
00367d80  ba f2 ff eb                                      bl #0x364870
00367d84  04 00 a0 e1                                      mov r0, r4
00367d88  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00367d8c  34 cd 62 00 78 32 00 00                          .byte 0x34, 0xcd, 0x62, 0x00, 0x78, 0x32, 0x00, 0x00

; FUNCTION 0x00367d94, declared_size=308, range_size=308, mode=arm
; class-group: AnimatorSynchronizedBlender::SynchronizedBlenderApplicator
; alias: _ZN27AnimatorSynchronizedBlender29SynchronizedBlenderApplicator11ApplyValuesEjj
; demangled: AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::ApplyValues(unsigned int, unsigned int)
; decoder-mode: arm
00367d94  70 40 2d e9                                      push {r4, r5, r6, lr}
00367d98  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00367d9c  44 60 90 e5                                      ldr r6, [r0, #0x44]
00367da0  00 50 a0 e1                                      mov r5, r0
00367da4  40 c0 93 e5                                      ldr ip, [r3, #0x40]
00367da8  3c 20 93 e5                                      ldr r2, [r3, #0x3c]
00367dac  40 00 90 e5                                      ldr r0, [r0, #0x40]
00367db0  ec 40 9f e5                                      ldr r4, [pc, #0xec]
00367db4  0c 20 62 e0                                      rsb r2, r2, ip
00367db8  06 00 60 e0                                      rsb r0, r0, r6
00367dbc  42 21 a0 e1                                      asr r2, r2, #2
00367dc0  40 01 52 e1                                      cmp r2, r0, asr #2
00367dc4  08 d0 4d e2                                      sub sp, sp, #8
00367dc8  04 40 8f e0                                      add r4, pc, r4
00367dcc  01 60 a0 e1                                      mov r6, r1
00367dd0  08 00 00 0a                                      beq #0x367df8
00367dd4  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
00367dd8  02 20 94 e7                                      ldr r2, [r4, r2]
00367ddc  00 20 92 e5                                      ldr r2, [r2]
00367de0  02 00 52 e3                                      cmp r2, #2
00367de4  00 20 a0 03                                      moveq r2, #0
00367de8  00 20 82 05                                      streq r2, [r2]
00367dec  01 00 00 0a                                      beq #0x367df8
00367df0  01 00 52 e3                                      cmp r2, #1
00367df4  1c 00 00 0a                                      beq #0x367e6c
00367df8  30 20 93 e5                                      ldr r2, [r3, #0x30]
00367dfc  34 30 93 e5                                      ldr r3, [r3, #0x34]
00367e00  03 30 62 e0                                      rsb r3, r2, r3
00367e04  43 01 56 e1                                      cmp r6, r3, asr #2
00367e08  08 00 00 3a                                      blo #0x367e30
00367e0c  94 30 9f e5                                      ldr r3, [pc, #0x94]
00367e10  03 30 94 e7                                      ldr r3, [r4, r3]
00367e14  00 30 93 e5                                      ldr r3, [r3]
00367e18  02 00 53 e3                                      cmp r3, #2
00367e1c  00 30 a0 03                                      moveq r3, #0
00367e20  00 30 83 05                                      streq r3, [r3]
00367e24  01 00 00 0a                                      beq #0x367e30
00367e28  01 00 53 e3                                      cmp r3, #1
00367e2c  01 00 00 0a                                      beq #0x367e38
00367e30  08 d0 8d e2                                      add sp, sp, #8
00367e34  70 80 bd e8                                      pop {r4, r5, r6, pc}
00367e38  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
00367e3c  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00367e40  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00367e44  00 00 94 e7                                      ldr r0, [r4, r0]
00367e48  68 30 9f e5                                      ldr r3, [pc, #0x68]
00367e4c  e2 c0 a0 e3                                      mov ip, #0xe2
00367e50  01 10 8f e0                                      add r1, pc, r1
00367e54  02 20 8f e0                                      add r2, pc, r2
00367e58  03 30 8f e0                                      add r3, pc, r3
00367e5c  a8 00 80 e2                                      add r0, r0, #0xa8
00367e60  00 c0 8d e5                                      str ip, [sp]
00367e64  66 98 fe eb                                      bl #0x30e004
00367e68  f0 ff ff ea                                      b #0x367e30
00367e6c  38 00 9f e5                                      ldr r0, [pc, #0x38]
00367e70  44 10 9f e5                                      ldr r1, [pc, #0x44]
00367e74  44 20 9f e5                                      ldr r2, [pc, #0x44]
00367e78  00 00 94 e7                                      ldr r0, [r4, r0]
00367e7c  40 30 9f e5                                      ldr r3, [pc, #0x40]
00367e80  e1 c0 a0 e3                                      mov ip, #0xe1
00367e84  01 10 8f e0                                      add r1, pc, r1
00367e88  03 30 8f e0                                      add r3, pc, r3
00367e8c  a8 00 80 e2                                      add r0, r0, #0xa8
00367e90  02 20 8f e0                                      add r2, pc, r2
00367e94  00 c0 8d e5                                      str ip, [sp]
00367e98  59 98 fe eb                                      bl #0x30e004
00367e9c  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
00367ea0  d4 ff ff ea                                      b #0x367df8
; mapping-symbol data/literal pool
00367ea4  c8 cc 62 00 c0 39 00 00 c0 19 00 00 88 65 55 00  .byte 0xc8, 0xcc, 0x62, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x88, 0x65, 0x55, 0x00
00367eb4  a4 90 55 00 38 90 55 00 54 65 55 00 d0 8f 55 00  .byte 0xa4, 0x90, 0x55, 0x00, 0x38, 0x90, 0x55, 0x00, 0x54, 0x65, 0x55, 0x00, 0xd0, 0x8f, 0x55, 0x00
00367ec4  08 90 55 00                                      .byte 0x08, 0x90, 0x55, 0x00

; FUNCTION 0x00367ec8, declared_size=836, range_size=836, mode=arm
; class-group: AnimatorSynchronizedBlender::SynchronizedBlenderApplicator
; alias: _ZN27AnimatorSynchronizedBlender29SynchronizedBlenderApplicator11AnimateNodeEj
; demangled: AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::AnimateNode(unsigned int)
; decoder-mode: arm
00367ec8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00367ecc  14 23 9f e5                                      ldr r2, [pc, #0x314]
00367ed0  08 30 90 e5                                      ldr r3, [r0, #8]
00367ed4  24 d0 4d e2                                      sub sp, sp, #0x24
00367ed8  02 20 8f e0                                      add r2, pc, r2
00367edc  00 00 53 e3                                      cmp r3, #0
00367ee0  08 20 8d e5                                      str r2, [sp, #8]
00367ee4  00 50 a0 e1                                      mov r5, r0
00367ee8  01 70 a0 e1                                      mov r7, r1
00367eec  ac 00 00 0a                                      beq #0x3681a4
00367ef0  3c 90 90 e5                                      ldr sb, [r0, #0x3c]
00367ef4  40 20 95 e5                                      ldr r2, [r5, #0x40]
00367ef8  44 00 90 e5                                      ldr r0, [r0, #0x44]
00367efc  40 10 99 e5                                      ldr r1, [sb, #0x40]
00367f00  3c 30 99 e5                                      ldr r3, [sb, #0x3c]
00367f04  00 20 62 e0                                      rsb r2, r2, r0
00367f08  01 30 63 e0                                      rsb r3, r3, r1
00367f0c  43 31 a0 e1                                      asr r3, r3, #2
00367f10  42 01 53 e1                                      cmp r3, r2, asr #2
00367f14  07 00 00 0a                                      beq #0x367f38
00367f18  cc 32 9f e5                                      ldr r3, [pc, #0x2cc]
00367f1c  08 c0 9d e5                                      ldr ip, [sp, #8]
00367f20  03 30 9c e7                                      ldr r3, [ip, r3]
00367f24  00 30 93 e5                                      ldr r3, [r3]
00367f28  02 00 53 e3                                      cmp r3, #2
00367f2c  89 00 00 0a                                      beq #0x368158
00367f30  01 00 53 e3                                      cmp r3, #1
00367f34  8b 00 00 0a                                      beq #0x368168
00367f38  00 30 a0 e3                                      mov r3, #0
00367f3c  09 00 a0 e1                                      mov r0, sb
00367f40  2c 30 85 e5                                      str r3, [r5, #0x2c]
00367f44  24 30 85 e5                                      str r3, [r5, #0x24]
00367f48  28 30 85 e5                                      str r3, [r5, #0x28]
00367f4c  cd fe ff eb                                      bl #0x367a88
00367f50  3c 90 95 e5                                      ldr sb, [r5, #0x3c]
00367f54  34 60 99 e5                                      ldr r6, [sb, #0x34]
00367f58  30 30 99 e5                                      ldr r3, [sb, #0x30]
00367f5c  09 a0 a0 e1                                      mov sl, sb
00367f60  06 60 63 e0                                      rsb r6, r3, r6
00367f64  46 61 b0 e1                                      asrs r6, r6, #2
00367f68  44 00 00 0a                                      beq #0x368080
00367f6c  7c 32 9f e5                                      ldr r3, [pc, #0x27c]
00367f70  74 22 9f e5                                      ldr r2, [pc, #0x274]
00367f74  00 40 a0 e3                                      mov r4, #0
00367f78  10 30 8d e5                                      str r3, [sp, #0x10]
00367f7c  70 32 9f e5                                      ldr r3, [pc, #0x270]
00367f80  0c 20 8d e5                                      str r2, [sp, #0xc]
00367f84  03 30 8f e0                                      add r3, pc, r3
00367f88  14 30 8d e5                                      str r3, [sp, #0x14]
00367f8c  64 32 9f e5                                      ldr r3, [pc, #0x264]
00367f90  03 30 8f e0                                      add r3, pc, r3
00367f94  18 30 8d e5                                      str r3, [sp, #0x18]
00367f98  5c 32 9f e5                                      ldr r3, [pc, #0x25c]
00367f9c  03 30 8f e0                                      add r3, pc, r3
00367fa0  1c 30 8d e5                                      str r3, [sp, #0x1c]
00367fa4  03 00 00 ea                                      b #0x367fb8
00367fa8  01 40 84 e2                                      add r4, r4, #1
00367fac  06 00 54 e1                                      cmp r4, r6
00367fb0  32 00 00 0a                                      beq #0x368080
00367fb4  09 a0 a0 e1                                      mov sl, sb
00367fb8  3c 30 99 e5                                      ldr r3, [sb, #0x3c]
00367fbc  00 10 a0 e3                                      mov r1, #0
00367fc0  04 81 93 e7                                      ldr r8, [r3, r4, lsl #2]
00367fc4  08 00 a0 e1                                      mov r0, r8
00367fc8  77 9a fe eb                                      bl #0x30e9ac
00367fcc  00 00 50 e3                                      cmp r0, #0
00367fd0  f4 ff ff 1a                                      bne #0x367fa8
00367fd4  04 10 a0 e1                                      mov r1, r4
00367fd8  07 20 a0 e1                                      mov r2, r7
00367fdc  05 00 a0 e1                                      mov r0, r5
00367fe0  6b ff ff eb                                      bl #0x367d94
00367fe4  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
00367fe8  30 30 93 e5                                      ldr r3, [r3, #0x30]
00367fec  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00367ff0  04 00 93 e5                                      ldr r0, [r3, #4]
00367ff4  59 04 00 eb                                      bl #0x369160
00367ff8  00 a0 50 e2                                      subs sl, r0, #0
00367ffc  07 10 a0 e1                                      mov r1, r7
00368000  48 00 00 0a                                      beq #0x368128
00368004  00 30 9a e5                                      ldr r3, [sl]
00368008  0f e0 a0 e1                                      mov lr, pc
0036800c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00368010  28 10 9a e5                                      ldr r1, [sl, #0x28]
00368014  08 00 a0 e1                                      mov r0, r8
00368018  53 9b fe eb                                      bl #0x30ed6c
0036801c  2c 10 9a e5                                      ldr r1, [sl, #0x2c]
00368020  00 b0 a0 e1                                      mov fp, r0
00368024  08 00 a0 e1                                      mov r0, r8
00368028  4f 9b fe eb                                      bl #0x30ed6c
0036802c  24 10 9a e5                                      ldr r1, [sl, #0x24]
00368030  00 90 a0 e1                                      mov sb, r0
00368034  08 00 a0 e1                                      mov r0, r8
00368038  4b 9b fe eb                                      bl #0x30ed6c
0036803c  00 10 a0 e1                                      mov r1, r0
00368040  24 00 95 e5                                      ldr r0, [r5, #0x24]
00368044  d6 9a fe eb                                      bl #0x30eba4
00368048  0b 10 a0 e1                                      mov r1, fp
0036804c  24 00 85 e5                                      str r0, [r5, #0x24]
00368050  28 00 95 e5                                      ldr r0, [r5, #0x28]
00368054  d2 9a fe eb                                      bl #0x30eba4
00368058  09 10 a0 e1                                      mov r1, sb
0036805c  28 00 85 e5                                      str r0, [r5, #0x28]
00368060  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
00368064  ce 9a fe eb                                      bl #0x30eba4
00368068  3c 90 95 e5                                      ldr sb, [r5, #0x3c]
0036806c  01 40 84 e2                                      add r4, r4, #1
00368070  06 00 54 e1                                      cmp r4, r6
00368074  2c 00 85 e5                                      str r0, [r5, #0x2c]
00368078  09 a0 a0 e1                                      mov sl, sb
0036807c  cc ff ff 1a                                      bne #0x367fb4
00368080  64 60 99 e5                                      ldr r6, [sb, #0x64]
00368084  60 30 99 e5                                      ldr r3, [sb, #0x60]
00368088  06 60 63 e0                                      rsb r6, r3, r6
0036808c  46 61 b0 e1                                      asrs r6, r6, #2
00368090  21 00 00 0a                                      beq #0x36811c
00368094  00 40 a0 e3                                      mov r4, #0
00368098  01 00 00 ea                                      b #0x3680a4
0036809c  3c a0 95 e5                                      ldr sl, [r5, #0x3c]
003680a0  60 30 9a e5                                      ldr r3, [sl, #0x60]
003680a4  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
003680a8  04 10 a0 e1                                      mov r1, r4
003680ac  00 00 53 e3                                      cmp r3, #0
003680b0  16 00 00 0a                                      beq #0x368110
003680b4  30 30 9a e5                                      ldr r3, [sl, #0x30]
003680b8  00 30 93 e5                                      ldr r3, [r3]
003680bc  04 30 93 e5                                      ldr r3, [r3, #4]
003680c0  03 00 a0 e1                                      mov r0, r3
003680c4  00 30 93 e5                                      ldr r3, [r3]
003680c8  0f e0 a0 e1                                      mov lr, pc
003680cc  58 f0 93 e5                                      ldr pc, [r3, #0x58]
003680d0  3c e0 95 e5                                      ldr lr, [r5, #0x3c]
003680d4  00 c0 90 e5                                      ldr ip, [r0]
003680d8  60 10 9e e5                                      ldr r1, [lr, #0x60]
003680dc  54 30 9e e5                                      ldr r3, [lr, #0x54]
003680e0  3c 20 9e e5                                      ldr r2, [lr, #0x3c]
003680e4  04 81 91 e7                                      ldr r8, [r1, r4, lsl #2]
003680e8  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
003680ec  40 30 9e e5                                      ldr r3, [lr, #0x40]
003680f0  00 80 8d e5                                      str r8, [sp]
003680f4  6c e0 9e e5                                      ldr lr, [lr, #0x6c]
003680f8  03 30 62 e0                                      rsb r3, r2, r3
003680fc  43 31 a0 e1                                      asr r3, r3, #2
00368100  04 e1 9e e7                                      ldr lr, [lr, r4, lsl #2]
00368104  04 e0 8d e5                                      str lr, [sp, #4]
00368108  0f e0 a0 e1                                      mov lr, pc
0036810c  18 f0 9c e5                                      ldr pc, [ip, #0x18]
00368110  01 40 84 e2                                      add r4, r4, #1
00368114  06 00 54 e1                                      cmp r4, r6
00368118  df ff ff 1a                                      bne #0x36809c
0036811c  14 70 85 e5                                      str r7, [r5, #0x14]
00368120  24 d0 8d e2                                      add sp, sp, #0x24
00368124  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00368128  08 10 9d e5                                      ldr r1, [sp, #8]
0036812c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00368130  0c 30 91 e7                                      ldr r3, [r1, ip]
00368134  00 30 93 e5                                      ldr r3, [r3]
00368138  02 00 53 e3                                      cmp r3, #2
0036813c  00 a0 8a 05                                      streq sl, [sl]
00368140  01 00 00 0a                                      beq #0x36814c
00368144  01 00 53 e3                                      cmp r3, #1
00368148  1b 00 00 0a                                      beq #0x3681bc
0036814c  3c 90 95 e5                                      ldr sb, [r5, #0x3c]
00368150  09 a0 a0 e1                                      mov sl, sb
00368154  93 ff ff ea                                      b #0x367fa8
00368158  00 30 a0 e3                                      mov r3, #0
0036815c  00 30 83 e5                                      str r3, [r3]
00368160  3c 90 95 e5                                      ldr sb, [r5, #0x3c]
00368164  73 ff ff ea                                      b #0x367f38
00368168  08 10 9d e5                                      ldr r1, [sp, #8]
0036816c  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
00368170  88 20 9f e5                                      ldr r2, [pc, #0x88]
00368174  88 30 9f e5                                      ldr r3, [pc, #0x88]
00368178  00 00 91 e7                                      ldr r0, [r1, r0]
0036817c  84 10 9f e5                                      ldr r1, [pc, #0x84]
00368180  63 c1 00 e3                                      movw ip, #0x163
00368184  a8 00 80 e2                                      add r0, r0, #0xa8
00368188  01 10 8f e0                                      add r1, pc, r1
0036818c  02 20 8f e0                                      add r2, pc, r2
00368190  03 30 8f e0                                      add r3, pc, r3
00368194  00 c0 8d e5                                      str ip, [sp]
00368198  99 97 fe eb                                      bl #0x30e004
0036819c  3c 90 95 e5                                      ldr sb, [r5, #0x3c]
003681a0  64 ff ff ea                                      b #0x367f38
003681a4  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
003681a8  03 10 a0 e1                                      mov r1, r3
003681ac  07 20 a0 e1                                      mov r2, r7
003681b0  24 d0 8d e2                                      add sp, sp, #0x24
003681b4  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003681b8  c6 e3 0b ea                                      b #0x6610d8
003681bc  08 30 9d e5                                      ldr r3, [sp, #8]
003681c0  10 20 9d e5                                      ldr r2, [sp, #0x10]
003681c4  5f cf a0 e3                                      mov ip, #0x17c
003681c8  14 10 9d e5                                      ldr r1, [sp, #0x14]
003681cc  02 00 93 e7                                      ldr r0, [r3, r2]
003681d0  18 20 9d e5                                      ldr r2, [sp, #0x18]
003681d4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003681d8  a8 00 80 e2                                      add r0, r0, #0xa8
003681dc  00 c0 8d e5                                      str ip, [sp]
003681e0  87 97 fe eb                                      bl #0x30e004
003681e4  d8 ff ff ea                                      b #0x36814c
; mapping-symbol data/literal pool
003681e8  b8 cb 62 00 c0 39 00 00 c0 19 00 00 54 64 55 00  .byte 0xb8, 0xcb, 0x62, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x54, 0x64, 0x55, 0x00
003681f8  98 53 57 00 f4 8e 55 00 d4 8c 55 00 00 8d 55 00  .byte 0x98, 0x53, 0x57, 0x00, 0xf4, 0x8e, 0x55, 0x00, 0xd4, 0x8c, 0x55, 0x00, 0x00, 0x8d, 0x55, 0x00
00368208  50 62 55 00                                      .byte 0x50, 0x62, 0x55, 0x00

; FUNCTION 0x003683bc, declared_size=284, range_size=284, mode=arm
; class-group: AnimatorSynchronizedBlender::SynchronizedBlenderApplicator
; alias: _ZN27AnimatorSynchronizedBlender29SynchronizedBlenderApplicator16CustomResetDeltaEv
; demangled: AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::CustomResetDelta()
; decoder-mode: arm
003683bc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003683c0  08 30 90 e5                                      ldr r3, [r0, #8]
003683c4  f4 60 9f e5                                      ldr r6, [pc, #0xf4]
003683c8  0c d0 4d e2                                      sub sp, sp, #0xc
003683cc  00 00 53 e3                                      cmp r3, #0
003683d0  00 40 a0 e1                                      mov r4, r0
003683d4  06 60 8f e0                                      add r6, pc, r6
003683d8  21 00 00 0a                                      beq #0x368464
003683dc  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
003683e0  30 20 93 e5                                      ldr r2, [r3, #0x30]
003683e4  b4 30 93 e5                                      ldr r3, [r3, #0xb4]
003683e8  03 31 92 e7                                      ldr r3, [r2, r3, lsl #2]
003683ec  04 50 93 e5                                      ldr r5, [r3, #4]
003683f0  00 30 95 e5                                      ldr r3, [r5]
003683f4  05 00 a0 e1                                      mov r0, r5
003683f8  0f e0 a0 e1                                      mov lr, pc
003683fc  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00368400  00 70 a0 e1                                      mov r7, r0
00368404  05 00 a0 e1                                      mov r0, r5
00368408  54 03 00 eb                                      bl #0x369160
0036840c  00 50 50 e2                                      subs r5, r0, #0
00368410  15 00 00 0a                                      beq #0x36846c
00368414  00 00 57 e3                                      cmp r7, #0
00368418  07 00 00 0a                                      beq #0x36843c
0036841c  00 30 97 e5                                      ldr r3, [r7]
00368420  07 00 a0 e1                                      mov r0, r7
00368424  0c 60 93 e5                                      ldr r6, [r3, #0xc]
00368428  0f e0 a0 e1                                      mov lr, pc
0036842c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00368430  00 10 a0 e1                                      mov r1, r0
00368434  07 00 a0 e1                                      mov r0, r7
00368438  36 ff 2f e1                                      blx r6
0036843c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00368440  04 00 a0 e1                                      mov r0, r4
00368444  14 20 94 e5                                      ldr r2, [r4, #0x14]
00368448  b4 10 93 e5                                      ldr r1, [r3, #0xb4]
0036844c  50 fe ff eb                                      bl #0x367d94
00368450  05 00 a0 e1                                      mov r0, r5
00368454  14 10 94 e5                                      ldr r1, [r4, #0x14]
00368458  00 30 95 e5                                      ldr r3, [r5]
0036845c  0f e0 a0 e1                                      mov lr, pc
00368460  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00368464  0c d0 8d e2                                      add sp, sp, #0xc
00368468  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0036846c  50 30 9f e5                                      ldr r3, [pc, #0x50]
00368470  03 30 96 e7                                      ldr r3, [r6, r3]
00368474  00 30 93 e5                                      ldr r3, [r3]
00368478  02 00 53 e3                                      cmp r3, #2
0036847c  00 50 85 05                                      streq r5, [r5]
00368480  f7 ff ff 0a                                      beq #0x368464
00368484  01 00 53 e3                                      cmp r3, #1
00368488  f5 ff ff 1a                                      bne #0x368464
0036848c  34 00 9f e5                                      ldr r0, [pc, #0x34]
00368490  34 10 9f e5                                      ldr r1, [pc, #0x34]
00368494  34 20 9f e5                                      ldr r2, [pc, #0x34]
00368498  00 00 96 e7                                      ldr r0, [r6, r0]
0036849c  30 30 9f e5                                      ldr r3, [pc, #0x30]
003684a0  46 c1 00 e3                                      movw ip, #0x146
003684a4  01 10 8f e0                                      add r1, pc, r1
003684a8  02 20 8f e0                                      add r2, pc, r2
003684ac  03 30 8f e0                                      add r3, pc, r3
003684b0  a8 00 80 e2                                      add r0, r0, #0xa8
003684b4  00 c0 8d e5                                      str ip, [sp]
003684b8  d1 96 fe eb                                      bl #0x30e004
003684bc  e8 ff ff ea                                      b #0x368464
; mapping-symbol data/literal pool
003684c0  bc c6 62 00 c0 39 00 00 c0 19 00 00 34 5f 55 00  .byte 0xbc, 0xc6, 0x62, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x34, 0x5f, 0x55, 0x00
003684d0  80 4e 57 00 e4 89 55 00                          .byte 0x80, 0x4e, 0x57, 0x00, 0xe4, 0x89, 0x55, 0x00

; FUNCTION 0x003685cc, declared_size=380, range_size=380, mode=arm
; class-group: AnimatorSynchronizedBlender::SynchronizedBlenderApplicator
; alias: _ZN27AnimatorSynchronizedBlender29SynchronizedBlenderApplicator10SetRefNodeEPN6glitch5scene10ISceneNodeE
; demangled: AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::SetRefNode(glitch::scene::ISceneNode*)
; decoder-mode: arm
003685cc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003685d0  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
003685d4  54 31 9f e5                                      ldr r3, [pc, #0x154]
003685d8  0c d0 4d e2                                      sub sp, sp, #0xc
003685dc  00 00 52 e3                                      cmp r2, #0
003685e0  00 40 a0 e1                                      mov r4, r0
003685e4  01 50 a0 e1                                      mov r5, r1
003685e8  03 30 8f e0                                      add r3, pc, r3
003685ec  3a 00 00 0a                                      beq #0x3686dc
003685f0  04 00 a0 e1                                      mov r0, r4
003685f4  05 10 a0 e1                                      mov r1, r5
003685f8  4f f0 ff eb                                      bl #0x36473c
003685fc  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00368600  30 20 93 e5                                      ldr r2, [r3, #0x30]
00368604  34 70 93 e5                                      ldr r7, [r3, #0x34]
00368608  07 70 62 e0                                      rsb r7, r2, r7
0036860c  47 71 b0 e1                                      asrs r7, r7, #2
00368610  15 00 00 0a                                      beq #0x36866c
00368614  00 60 a0 e3                                      mov r6, #0
00368618  08 00 00 ea                                      b #0x368640
0036861c  00 30 91 e5                                      ldr r3, [r1]
00368620  01 60 86 e2                                      add r6, r6, #1
00368624  05 10 a0 e1                                      mov r1, r5
00368628  0f e0 a0 e1                                      mov lr, pc
0036862c  08 f0 93 e5                                      ldr pc, [r3, #8]
00368630  07 00 56 e1                                      cmp r6, r7
00368634  0b 00 00 0a                                      beq #0x368668
00368638  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0036863c  30 20 93 e5                                      ldr r2, [r3, #0x30]
00368640  06 31 92 e7                                      ldr r3, [r2, r6, lsl #2]
00368644  04 00 93 e5                                      ldr r0, [r3, #4]
00368648  c4 02 00 eb                                      bl #0x369160
0036864c  00 10 50 e2                                      subs r1, r0, #0
00368650  f1 ff ff 1a                                      bne #0x36861c
00368654  04 00 a0 e1                                      mov r0, r4
00368658  01 60 86 e2                                      add r6, r6, #1
0036865c  36 f0 ff eb                                      bl #0x36473c
00368660  07 00 56 e1                                      cmp r6, r7
00368664  f3 ff ff 1a                                      bne #0x368638
00368668  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0036866c  00 20 e0 e3                                      mvn r2, #0
00368670  4c 20 84 e5                                      str r2, [r4, #0x4c]
00368674  60 20 93 e5                                      ldr r2, [r3, #0x60]
00368678  64 70 93 e5                                      ldr r7, [r3, #0x64]
0036867c  07 70 62 e0                                      rsb r7, r2, r7
00368680  47 71 b0 e1                                      asrs r7, r7, #2
00368684  09 00 00 0a                                      beq #0x3686b0
00368688  00 60 a0 e3                                      mov r6, #0
0036868c  01 00 00 ea                                      b #0x368698
00368690  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00368694  60 20 93 e5                                      ldr r2, [r3, #0x60]
00368698  06 21 92 e7                                      ldr r2, [r2, r6, lsl #2]
0036869c  02 00 55 e1                                      cmp r5, r2
003686a0  04 00 00 0a                                      beq #0x3686b8
003686a4  01 60 86 e2                                      add r6, r6, #1
003686a8  07 00 56 e1                                      cmp r6, r7
003686ac  f7 ff ff 1a                                      bne #0x368690
003686b0  0c d0 8d e2                                      add sp, sp, #0xc
003686b4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003686b8  03 00 a0 e1                                      mov r0, r3
003686bc  06 10 a0 e1                                      mov r1, r6
003686c0  00 30 93 e5                                      ldr r3, [r3]
003686c4  0f e0 a0 e1                                      mov lr, pc
003686c8  54 f0 93 e5                                      ldr pc, [r3, #0x54]
003686cc  08 30 90 e5                                      ldr r3, [r0, #8]
003686d0  01 00 53 e3                                      cmp r3, #1
003686d4  4c 60 84 05                                      streq r6, [r4, #0x4c]
003686d8  f1 ff ff ea                                      b #0x3686a4
003686dc  50 10 9f e5                                      ldr r1, [pc, #0x50]
003686e0  01 10 93 e7                                      ldr r1, [r3, r1]
003686e4  00 10 91 e5                                      ldr r1, [r1]
003686e8  02 00 51 e3                                      cmp r1, #2
003686ec  00 20 82 05                                      streq r2, [r2]
003686f0  be ff ff 0a                                      beq #0x3685f0
003686f4  01 00 51 e3                                      cmp r1, #1
003686f8  bc ff ff 1a                                      bne #0x3685f0
003686fc  34 00 9f e5                                      ldr r0, [pc, #0x34]
00368700  34 10 9f e5                                      ldr r1, [pc, #0x34]
00368704  34 20 9f e5                                      ldr r2, [pc, #0x34]
00368708  00 00 93 e7                                      ldr r0, [r3, r0]
0036870c  30 30 9f e5                                      ldr r3, [pc, #0x30]
00368710  0f c1 00 e3                                      movw ip, #0x10f
00368714  01 10 8f e0                                      add r1, pc, r1
00368718  02 20 8f e0                                      add r2, pc, r2
0036871c  03 30 8f e0                                      add r3, pc, r3
00368720  a8 00 80 e2                                      add r0, r0, #0xa8
00368724  00 c0 8d e5                                      str ip, [sp]
00368728  35 96 fe eb                                      bl #0x30e004
0036872c  af ff ff ea                                      b #0x3685f0
; mapping-symbol data/literal pool
00368730  a8 c4 62 00 c0 39 00 00 c0 19 00 00 c4 5c 55 00  .byte 0xa8, 0xc4, 0x62, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xc4, 0x5c, 0x55, 0x00
00368740  40 87 55 00 74 87 55 00                          .byte 0x40, 0x87, 0x55, 0x00, 0x74, 0x87, 0x55, 0x00

; FUNCTION 0x00368c70, declared_size=80, range_size=80, mode=arm
; class-group: AnimatorSynchronizedBlender::SynchronizedBlenderApplicator
; alias: _ZN27AnimatorSynchronizedBlender29SynchronizedBlenderApplicatorD0Ev
; demangled: AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::~SynchronizedBlenderApplicator()
; decoder-mode: arm
00368c70  10 40 2d e9                                      push {r4, lr}
00368c74  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00368c78  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00368c7c  00 40 a0 e1                                      mov r4, r0
00368c80  03 30 8f e0                                      add r3, pc, r3
00368c84  40 00 90 e5                                      ldr r0, [r0, #0x40]
00368c88  02 20 93 e7                                      ldr r2, [r3, r2]
00368c8c  00 00 50 e3                                      cmp r0, #0
00368c90  08 20 82 e2                                      add r2, r2, #8
00368c94  00 20 84 e5                                      str r2, [r4]
00368c98  00 00 00 0a                                      beq #0x368ca0
00368c9c  eb 9d fe eb                                      bl #0x310450
00368ca0  04 00 a0 e1                                      mov r0, r4
00368ca4  f1 ee ff eb                                      bl #0x364870
00368ca8  04 00 a0 e1                                      mov r0, r4
00368cac  e3 9d fe eb                                      bl #0x310440
00368cb0  04 00 a0 e1                                      mov r0, r4
00368cb4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00368cb8  10 be 62 00 78 32 00 00                          .byte 0x10, 0xbe, 0x62, 0x00, 0x78, 0x32, 0x00, 0x00
