; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00316568, declared_size=340, range_size=340, mode=arm
; class-group: Buffer
; alias: _ZNK6Buffer4readEjPvj
; demangled: Buffer::read(unsigned int, void*, unsigned int) const
; decoder-mode: arm
00316568  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0031656c  00 50 90 e5                                      ldr r5, [r0]
00316570  24 d0 4d e2                                      sub sp, sp, #0x24
00316574  01 40 a0 e1                                      mov r4, r1
00316578  00 70 a0 e1                                      mov r7, r0
0031657c  01 00 a0 e1                                      mov r0, r1
00316580  05 10 a0 e1                                      mov r1, r5
00316584  03 90 a0 e1                                      mov sb, r3
00316588  02 60 a0 e1                                      mov r6, r2
0031658c  ae e1 ff eb                                      bl #0x30ec4c
00316590  05 10 a0 e1                                      mov r1, r5
00316594  00 80 a0 e1                                      mov r8, r0
00316598  04 00 a0 e1                                      mov r0, r4
0031659c  62 e1 ff eb                                      bl #0x30eb2c
003165a0  01 20 88 e2                                      add r2, r8, #1
003165a4  05 40 61 e0                                      rsb r4, r1, r5
003165a8  02 51 a0 e1                                      lsl r5, r2, #2
003165ac  f0 20 9f e5                                      ldr r2, [pc, #0xf0]
003165b0  04 30 97 e5                                      ldr r3, [r7, #4]
003165b4  ec b0 9f e5                                      ldr fp, [pc, #0xec]
003165b8  02 20 8f e0                                      add r2, pc, r2
003165bc  08 a1 93 e7                                      ldr sl, [r3, r8, lsl #2]
003165c0  14 20 8d e5                                      str r2, [sp, #0x14]
003165c4  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
003165c8  01 a0 8a e0                                      add sl, sl, r1
003165cc  dc c0 9f e5                                      ldr ip, [pc, #0xdc]
003165d0  02 20 8f e0                                      add r2, pc, r2
003165d4  18 20 8d e5                                      str r2, [sp, #0x18]
003165d8  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
003165dc  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
003165e0  0b b0 8f e0                                      add fp, pc, fp
003165e4  02 20 8f e0                                      add r2, pc, r2
003165e8  1c 20 8d e5                                      str r2, [sp, #0x1c]
003165ec  04 00 59 e1                                      cmp sb, r4
003165f0  09 40 a0 31                                      movlo r4, sb
003165f4  08 81 a0 e1                                      lsl r8, r8, #2
003165f8  09 20 a0 e1                                      mov r2, sb
003165fc  0c 10 8d e5                                      str r1, [sp, #0xc]
00316600  10 c0 8d e5                                      str ip, [sp, #0x10]
00316604  0d 00 00 ea                                      b #0x316640
00316608  0a 10 a0 e1                                      mov r1, sl
0031660c  04 20 a0 e1                                      mov r2, r4
00316610  06 00 a0 e1                                      mov r0, r6
00316614  93 e0 ff eb                                      bl #0x30e868
00316618  0a 00 97 e8                                      ldm r7, {r1, r3}
0031661c  09 20 64 e0                                      rsb r2, r4, sb
00316620  04 60 86 e0                                      add r6, r6, r4
00316624  05 a0 93 e7                                      ldr sl, [r3, r5]
00316628  01 00 52 e1                                      cmp r2, r1
0031662c  02 40 a0 31                                      movlo r4, r2
00316630  01 40 a0 21                                      movhs r4, r1
00316634  04 80 88 e2                                      add r8, r8, #4
00316638  04 50 85 e2                                      add r5, r5, #4
0031663c  02 90 a0 e1                                      mov sb, r2
00316640  00 00 52 e3                                      cmp r2, #0
00316644  14 00 00 0a                                      beq #0x31669c
00316648  08 30 93 e7                                      ldr r3, [r3, r8]
0031664c  00 00 53 e3                                      cmp r3, #0
00316650  ec ff ff 1a                                      bne #0x316608
00316654  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00316658  01 20 9b e7                                      ldr r2, [fp, r1]
0031665c  00 20 92 e5                                      ldr r2, [r2]
00316660  02 00 52 e3                                      cmp r2, #2
00316664  00 30 83 05                                      streq r3, [r3]
00316668  e6 ff ff 0a                                      beq #0x316608
0031666c  01 00 52 e3                                      cmp r2, #1
00316670  e4 ff ff 1a                                      bne #0x316608
00316674  10 30 9d e5                                      ldr r3, [sp, #0x10]
00316678  a0 c0 a0 e3                                      mov ip, #0xa0
0031667c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00316680  03 00 9b e7                                      ldr r0, [fp, r3]
00316684  18 20 9d e5                                      ldr r2, [sp, #0x18]
00316688  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0031668c  a8 00 80 e2                                      add r0, r0, #0xa8
00316690  00 c0 8d e5                                      str ip, [sp]
00316694  5a de ff eb                                      bl #0x30e004
00316698  da ff ff ea                                      b #0x316608
0031669c  24 d0 8d e2                                      add sp, sp, #0x24
003166a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
003166a4  20 7e 5a 00 b0 e4 67 00 58 80 5a 00 c0 19 00 00  .byte 0x20, 0x7e, 0x5a, 0x00, 0xb0, 0xe4, 0x67, 0x00, 0x58, 0x80, 0x5a, 0x00, 0xc0, 0x19, 0x00, 0x00
003166b4  5c 80 5a 00 c0 39 00 00                          .byte 0x5c, 0x80, 0x5a, 0x00, 0xc0, 0x39, 0x00, 0x00

; FUNCTION 0x0031692c, declared_size=92, range_size=92, mode=arm
; class-group: Buffer
; alias: _ZN6Buffer5clearEv
; demangled: Buffer::clear()
; decoder-mode: arm
0031692c  70 40 2d e9                                      push {r4, r5, r6, lr}
00316930  04 40 90 e5                                      ldr r4, [r0, #4]
00316934  08 30 90 e5                                      ldr r3, [r0, #8]
00316938  00 50 a0 e1                                      mov r5, r0
0031693c  03 00 54 e1                                      cmp r4, r3
00316940  0a 00 00 0a                                      beq #0x316970
00316944  00 00 94 e5                                      ldr r0, [r4]
00316948  04 40 84 e2                                      add r4, r4, #4
0031694c  00 00 50 e3                                      cmp r0, #0
00316950  01 00 00 0a                                      beq #0x31695c
00316954  b9 e6 ff eb                                      bl #0x310440
00316958  08 30 95 e5                                      ldr r3, [r5, #8]
0031695c  03 00 54 e1                                      cmp r4, r3
00316960  f7 ff ff 1a                                      bne #0x316944
00316964  04 30 95 e5                                      ldr r3, [r5, #4]
00316968  03 00 54 e1                                      cmp r4, r3
0031696c  08 30 85 15                                      strne r3, [r5, #8]
00316970  00 30 a0 e3                                      mov r3, #0
00316974  02 2b a0 e3                                      mov r2, #0x800
00316978  14 30 c5 e5                                      strb r3, [r5, #0x14]
0031697c  00 20 85 e5                                      str r2, [r5]
00316980  10 30 85 e5                                      str r3, [r5, #0x10]
00316984  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00316988, declared_size=60, range_size=60, mode=arm
; class-group: Buffer
; alias: _ZN6BufferD1Ev
; demangled: Buffer::~Buffer()
; decoder-mode: arm
00316988  10 40 2d e9                                      push {r4, lr}
0031698c  00 40 a0 e1                                      mov r4, r0
00316990  e5 ff ff eb                                      bl #0x31692c
00316994  04 30 94 e5                                      ldr r3, [r4, #4]
00316998  04 20 84 e2                                      add r2, r4, #4
0031699c  00 00 53 e3                                      cmp r3, #0
003169a0  05 00 00 0a                                      beq #0x3169bc
003169a4  08 20 92 e5                                      ldr r2, [r2, #8]
003169a8  03 10 a0 e1                                      mov r1, r3
003169ac  0c 00 84 e2                                      add r0, r4, #0xc
003169b0  02 30 63 e0                                      rsb r3, r3, r2
003169b4  43 21 a0 e1                                      asr r2, r3, #2
003169b8  6f ff ff eb                                      bl #0x31677c
003169bc  04 00 a0 e1                                      mov r0, r4
003169c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00316d98, declared_size=372, range_size=372, mode=arm
; class-group: Buffer
; alias: _ZN6Buffer12ensureBufferEjj
; demangled: Buffer::ensureBuffer(unsigned int, unsigned int)
; decoder-mode: arm
00316d98  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00316d9c  00 40 a0 e1                                      mov r4, r0
00316da0  20 d0 4d e2                                      sub sp, sp, #0x20
00316da4  01 00 82 e0                                      add r0, r2, r1
00316da8  00 10 94 e5                                      ldr r1, [r4]
00316dac  a6 df ff eb                                      bl #0x30ec4c
00316db0  04 30 94 e5                                      ldr r3, [r4, #4]
00316db4  08 10 94 e5                                      ldr r1, [r4, #8]
00316db8  02 60 80 e2                                      add r6, r0, #2
00316dbc  01 00 63 e0                                      rsb r0, r3, r1
00316dc0  40 01 a0 e1                                      asr r0, r0, #2
00316dc4  00 00 56 e1                                      cmp r6, r0
00316dc8  00 50 a0 e1                                      mov r5, r0
00316dcc  2f 00 00 9a                                      bls #0x316e90
00316dd0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00316dd4  02 30 63 e0                                      rsb r3, r3, r2
00316dd8  43 01 56 e1                                      cmp r6, r3, asr #2
00316ddc  38 00 00 8a                                      bhi #0x316ec4
00316de0  00 00 50 e3                                      cmp r0, #0
00316de4  2b 00 00 1a                                      bne #0x316e98
00316de8  01 60 46 e2                                      sub r6, r6, #1
00316dec  05 00 56 e1                                      cmp r6, r5
00316df0  1d 00 00 9a                                      bls #0x316e6c
00316df4  04 80 84 e2                                      add r8, r4, #4
00316df8  10 a0 8d e2                                      add sl, sp, #0x10
00316dfc  1c 90 8d e2                                      add sb, sp, #0x1c
00316e00  01 70 a0 e3                                      mov r7, #1
00316e04  06 00 00 ea                                      b #0x316e24
00316e08  00 00 81 e5                                      str r0, [r1]
00316e0c  08 10 94 e5                                      ldr r1, [r4, #8]
00316e10  01 50 85 e2                                      add r5, r5, #1
00316e14  06 00 55 e1                                      cmp r5, r6
00316e18  04 10 81 e2                                      add r1, r1, #4
00316e1c  08 10 84 e5                                      str r1, [r4, #8]
00316e20  10 00 00 2a                                      bhs #0x316e68
00316e24  00 10 a0 e3                                      mov r1, #0
00316e28  00 00 94 e5                                      ldr r0, [r4]
00316e2c  ce e5 ff eb                                      bl #0x31056c
00316e30  08 10 94 e5                                      ldr r1, [r4, #8]
00316e34  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00316e38  10 00 8d e5                                      str r0, [sp, #0x10]
00316e3c  03 00 51 e1                                      cmp r1, r3
00316e40  f0 ff ff 1a                                      bne #0x316e08
00316e44  08 00 a0 e1                                      mov r0, r8
00316e48  0a 20 a0 e1                                      mov r2, sl
00316e4c  09 30 a0 e1                                      mov r3, sb
00316e50  01 50 85 e2                                      add r5, r5, #1
00316e54  00 70 8d e5                                      str r7, [sp]
00316e58  04 70 8d e5                                      str r7, [sp, #4]
00316e5c  02 ff ff eb                                      bl #0x316a6c
00316e60  06 00 55 e1                                      cmp r5, r6
00316e64  ee ff ff 3a                                      blo #0x316e24
00316e68  08 10 94 e5                                      ldr r1, [r4, #8]
00316e6c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00316e70  00 30 a0 e3                                      mov r3, #0
00316e74  0c 30 8d e5                                      str r3, [sp, #0xc]
00316e78  02 00 51 e1                                      cmp r1, r2
00316e7c  1a 00 00 0a                                      beq #0x316eec
00316e80  00 30 81 e5                                      str r3, [r1]
00316e84  08 30 94 e5                                      ldr r3, [r4, #8]
00316e88  04 30 83 e2                                      add r3, r3, #4
00316e8c  08 30 84 e5                                      str r3, [r4, #8]
00316e90  20 d0 8d e2                                      add sp, sp, #0x20
00316e94  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00316e98  20 20 8d e2                                      add r2, sp, #0x20
00316e9c  00 30 a0 e3                                      mov r3, #0
00316ea0  01 10 40 e2                                      sub r1, r0, #1
00316ea4  0c 30 22 e5                                      str r3, [r2, #-0xc]!
00316ea8  04 00 84 e2                                      add r0, r4, #4
00316eac  91 ff ff eb                                      bl #0x316cf8
00316eb0  04 50 94 e5                                      ldr r5, [r4, #4]
00316eb4  08 10 94 e5                                      ldr r1, [r4, #8]
00316eb8  01 50 65 e0                                      rsb r5, r5, r1
00316ebc  45 51 a0 e1                                      asr r5, r5, #2
00316ec0  c8 ff ff ea                                      b #0x316de8
00316ec4  04 00 84 e2                                      add r0, r4, #4
00316ec8  06 10 a0 e1                                      mov r1, r6
00316ecc  68 fe ff eb                                      bl #0x316874
00316ed0  03 00 94 e9                                      ldmib r4, {r0, r1}
00316ed4  01 00 60 e0                                      rsb r0, r0, r1
00316ed8  40 01 a0 e1                                      asr r0, r0, #2
00316edc  00 00 50 e3                                      cmp r0, #0
00316ee0  00 50 a0 e1                                      mov r5, r0
00316ee4  bf ff ff 0a                                      beq #0x316de8
00316ee8  ea ff ff ea                                      b #0x316e98
00316eec  01 c0 a0 e3                                      mov ip, #1
00316ef0  04 00 84 e2                                      add r0, r4, #4
00316ef4  0c 20 8d e2                                      add r2, sp, #0xc
00316ef8  18 30 8d e2                                      add r3, sp, #0x18
00316efc  04 c0 8d e5                                      str ip, [sp, #4]
00316f00  00 c0 8d e5                                      str ip, [sp]
00316f04  d8 fe ff eb                                      bl #0x316a6c
00316f08  e0 ff ff ea                                      b #0x316e90

; FUNCTION 0x00316f0c, declared_size=200, range_size=200, mode=arm
; class-group: Buffer
; alias: _ZN6Buffer5writeEjPKvj
; demangled: Buffer::write(unsigned int, void const*, unsigned int)
; decoder-mode: arm
00316f0c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00316f10  00 60 90 e5                                      ldr r6, [r0]
00316f14  00 40 a0 e1                                      mov r4, r0
00316f18  01 50 a0 e1                                      mov r5, r1
00316f1c  01 00 a0 e1                                      mov r0, r1
00316f20  06 10 a0 e1                                      mov r1, r6
00316f24  03 80 a0 e1                                      mov r8, r3
00316f28  02 70 a0 e1                                      mov r7, r2
00316f2c  46 df ff eb                                      bl #0x30ec4c
00316f30  06 10 a0 e1                                      mov r1, r6
00316f34  00 a0 a0 e1                                      mov sl, r0
00316f38  05 00 a0 e1                                      mov r0, r5
00316f3c  fa de ff eb                                      bl #0x30eb2c
00316f40  04 00 a0 e1                                      mov r0, r4
00316f44  01 60 a0 e1                                      mov r6, r1
00316f48  08 20 a0 e1                                      mov r2, r8
00316f4c  05 10 a0 e1                                      mov r1, r5
00316f50  90 ff ff eb                                      bl #0x316d98
00316f54  04 10 94 e5                                      ldr r1, [r4, #4]
00316f58  00 30 94 e5                                      ldr r3, [r4]
00316f5c  10 20 94 e5                                      ldr r2, [r4, #0x10]
00316f60  0a 01 91 e7                                      ldr r0, [r1, sl, lsl #2]
00316f64  03 30 66 e0                                      rsb r3, r6, r3
00316f68  05 50 88 e0                                      add r5, r8, r5
00316f6c  01 a0 8a e2                                      add sl, sl, #1
00316f70  05 00 52 e1                                      cmp r2, r5
00316f74  10 20 84 25                                      strhs r2, [r4, #0x10]
00316f78  10 50 84 35                                      strlo r5, [r4, #0x10]
00316f7c  06 00 80 e0                                      add r0, r0, r6
00316f80  03 00 58 e1                                      cmp r8, r3
00316f84  08 50 a0 31                                      movlo r5, r8
00316f88  03 50 a0 21                                      movhs r5, r3
00316f8c  0a a1 a0 e1                                      lsl sl, sl, #2
00316f90  08 30 a0 e1                                      mov r3, r8
00316f94  0b 00 00 ea                                      b #0x316fc8
00316f98  07 10 a0 e1                                      mov r1, r7
00316f9c  05 20 a0 e1                                      mov r2, r5
00316fa0  30 de ff eb                                      bl #0x30e868
00316fa4  06 00 94 e8                                      ldm r4, {r1, r2}
00316fa8  08 30 65 e0                                      rsb r3, r5, r8
00316fac  05 70 87 e0                                      add r7, r7, r5
00316fb0  0a 00 92 e7                                      ldr r0, [r2, sl]
00316fb4  01 00 53 e1                                      cmp r3, r1
00316fb8  03 50 a0 31                                      movlo r5, r3
00316fbc  01 50 a0 21                                      movhs r5, r1
00316fc0  04 a0 8a e2                                      add sl, sl, #4
00316fc4  03 80 a0 e1                                      mov r8, r3
00316fc8  00 00 53 e3                                      cmp r3, #0
00316fcc  f1 ff ff 1a                                      bne #0x316f98
00316fd0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00317014, declared_size=364, range_size=364, mode=arm
; class-group: Buffer
; alias: _ZN6Buffer7setSizeEj
; demangled: Buffer::setSize(unsigned int)
; decoder-mode: arm
00317014  70 40 2d e9                                      push {r4, r5, r6, lr}
00317018  00 40 a0 e1                                      mov r4, r0
0031701c  04 20 94 e5                                      ldr r2, [r4, #4]
00317020  08 00 90 e5                                      ldr r0, [r0, #8]
00317024  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
00317028  18 d0 4d e2                                      sub sp, sp, #0x18
0031702c  00 20 62 e0                                      rsb r2, r2, r0
00317030  22 21 b0 e1                                      lsrs r2, r2, #2
00317034  01 50 a0 e1                                      mov r5, r1
00317038  03 30 8f e0                                      add r3, pc, r3
0031703c  08 00 00 0a                                      beq #0x317064
00317040  24 21 9f e5                                      ldr r2, [pc, #0x124]
00317044  02 20 93 e7                                      ldr r2, [r3, r2]
00317048  00 20 92 e5                                      ldr r2, [r2]
0031704c  02 00 52 e3                                      cmp r2, #2
00317050  00 30 a0 03                                      moveq r3, #0
00317054  00 30 83 05                                      streq r3, [r3]
00317058  01 00 00 0a                                      beq #0x317064
0031705c  01 00 52 e3                                      cmp r2, #1
00317060  1e 00 00 0a                                      beq #0x3170e0
00317064  04 60 84 e2                                      add r6, r4, #4
00317068  02 10 a0 e3                                      mov r1, #2
0031706c  06 00 a0 e1                                      mov r0, r6
00317070  ff fd ff eb                                      bl #0x316874
00317074  00 10 a0 e3                                      mov r1, #0
00317078  05 00 a0 e1                                      mov r0, r5
0031707c  3a e5 ff eb                                      bl #0x31056c
00317080  08 10 94 e5                                      ldr r1, [r4, #8]
00317084  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00317088  0c 00 8d e5                                      str r0, [sp, #0xc]
0031708c  03 00 51 e1                                      cmp r1, r3
00317090  1f 00 00 0a                                      beq #0x317114
00317094  00 00 81 e5                                      str r0, [r1]
00317098  08 10 94 e5                                      ldr r1, [r4, #8]
0031709c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003170a0  00 30 a0 e3                                      mov r3, #0
003170a4  04 10 81 e2                                      add r1, r1, #4
003170a8  02 00 51 e1                                      cmp r1, r2
003170ac  08 10 84 e5                                      str r1, [r4, #8]
003170b0  08 30 8d e5                                      str r3, [sp, #8]
003170b4  23 00 00 0a                                      beq #0x317148
003170b8  00 30 81 e5                                      str r3, [r1]
003170bc  08 30 94 e5                                      ldr r3, [r4, #8]
003170c0  04 30 83 e2                                      add r3, r3, #4
003170c4  08 30 84 e5                                      str r3, [r4, #8]
003170c8  01 30 a0 e3                                      mov r3, #1
003170cc  14 30 c4 e5                                      strb r3, [r4, #0x14]
003170d0  00 50 84 e5                                      str r5, [r4]
003170d4  10 50 84 e5                                      str r5, [r4, #0x10]
003170d8  18 d0 8d e2                                      add sp, sp, #0x18
003170dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
003170e0  88 00 9f e5                                      ldr r0, [pc, #0x88]
003170e4  88 10 9f e5                                      ldr r1, [pc, #0x88]
003170e8  88 20 9f e5                                      ldr r2, [pc, #0x88]
003170ec  00 00 93 e7                                      ldr r0, [r3, r0]
003170f0  84 30 9f e5                                      ldr r3, [pc, #0x84]
003170f4  75 c0 a0 e3                                      mov ip, #0x75
003170f8  01 10 8f e0                                      add r1, pc, r1
003170fc  02 20 8f e0                                      add r2, pc, r2
00317100  03 30 8f e0                                      add r3, pc, r3
00317104  a8 00 80 e2                                      add r0, r0, #0xa8
00317108  00 c0 8d e5                                      str ip, [sp]
0031710c  bc db ff eb                                      bl #0x30e004
00317110  d3 ff ff ea                                      b #0x317064
00317114  01 c0 a0 e3                                      mov ip, #1
00317118  0c 20 8d e2                                      add r2, sp, #0xc
0031711c  14 30 8d e2                                      add r3, sp, #0x14
00317120  06 00 a0 e1                                      mov r0, r6
00317124  04 c0 8d e5                                      str ip, [sp, #4]
00317128  00 c0 8d e5                                      str ip, [sp]
0031712c  4e fe ff eb                                      bl #0x316a6c
00317130  08 10 94 e5                                      ldr r1, [r4, #8]
00317134  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00317138  00 30 a0 e3                                      mov r3, #0
0031713c  08 30 8d e5                                      str r3, [sp, #8]
00317140  02 00 51 e1                                      cmp r1, r2
00317144  db ff ff 1a                                      bne #0x3170b8
00317148  01 c0 a0 e3                                      mov ip, #1
0031714c  06 00 a0 e1                                      mov r0, r6
00317150  08 20 8d e2                                      add r2, sp, #8
00317154  10 30 8d e2                                      add r3, sp, #0x10
00317158  04 c0 8d e5                                      str ip, [sp, #4]
0031715c  00 c0 8d e5                                      str ip, [sp]
00317160  41 fe ff eb                                      bl #0x316a6c
00317164  d7 ff ff ea                                      b #0x3170c8
; mapping-symbol data/literal pool
00317168  58 da 67 00 c0 39 00 00 c0 19 00 00 e0 72 5a 00  .byte 0x58, 0xda, 0x67, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xe0, 0x72, 0x5a, 0x00
00317178  84 75 5a 00 40 75 5a 00                          .byte 0x84, 0x75, 0x5a, 0x00, 0x40, 0x75, 0x5a, 0x00
