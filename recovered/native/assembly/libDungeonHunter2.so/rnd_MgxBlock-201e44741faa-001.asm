; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048a03c, declared_size=92, range_size=92, mode=arm
; class-group: rnd::MgxBlock
; alias: _ZN3rnd8MgxBlockD1Ev
; demangled: rnd::MgxBlock::~MgxBlock()
; decoder-mode: arm
0048a03c  10 40 2d e9                                      push {r4, lr}
0048a040  48 30 9f e5                                      ldr r3, [pc, #0x48]
0048a044  48 20 9f e5                                      ldr r2, [pc, #0x48]
0048a048  c4 19 90 e5                                      ldr r1, [r0, #0x9c4]
0048a04c  03 30 8f e0                                      add r3, pc, r3
0048a050  02 20 93 e7                                      ldr r2, [r3, r2]
0048a054  00 00 51 e3                                      cmp r1, #0
0048a058  00 40 a0 e1                                      mov r4, r0
0048a05c  08 20 82 e2                                      add r2, r2, #8
0048a060  00 20 80 e5                                      str r2, [r0]
0048a064  03 00 00 0a                                      beq #0x48a078
0048a068  01 00 a0 e1                                      mov r0, r1
0048a06c  00 30 91 e5                                      ldr r3, [r1]
0048a070  0f e0 a0 e1                                      mov lr, pc
0048a074  04 f0 93 e5                                      ldr pc, [r3, #4]
0048a078  c0 09 94 e5                                      ldr r0, [r4, #0x9c0]
0048a07c  9b 0f fa eb                                      bl #0x30def0
0048a080  04 00 a0 e1                                      mov r0, r4
0048a084  d3 ff ff eb                                      bl #0x489fd8
0048a088  04 00 a0 e1                                      mov r0, r4
0048a08c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048a090  44 aa 50 00 78 19 00 00                          .byte 0x44, 0xaa, 0x50, 0x00, 0x78, 0x19, 0x00, 0x00

; FUNCTION 0x0048a098, declared_size=28, range_size=28, mode=arm
; class-group: rnd::MgxBlock
; alias: _ZN3rnd8MgxBlockD0Ev
; demangled: rnd::MgxBlock::~MgxBlock()
; decoder-mode: arm
0048a098  10 40 2d e9                                      push {r4, lr}
0048a09c  00 40 a0 e1                                      mov r4, r0
0048a0a0  e5 ff ff eb                                      bl #0x48a03c
0048a0a4  04 00 a0 e1                                      mov r0, r4
0048a0a8  e4 18 fa eb                                      bl #0x310440
0048a0ac  04 00 a0 e1                                      mov r0, r4
0048a0b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0048a0b4, declared_size=92, range_size=92, mode=arm
; class-group: rnd::MgxBlock
; alias: _ZN3rnd8MgxBlockD2Ev
; demangled: rnd::MgxBlock::~MgxBlock()
; decoder-mode: arm
0048a0b4  10 40 2d e9                                      push {r4, lr}
0048a0b8  48 30 9f e5                                      ldr r3, [pc, #0x48]
0048a0bc  48 20 9f e5                                      ldr r2, [pc, #0x48]
0048a0c0  c4 19 90 e5                                      ldr r1, [r0, #0x9c4]
0048a0c4  03 30 8f e0                                      add r3, pc, r3
0048a0c8  02 20 93 e7                                      ldr r2, [r3, r2]
0048a0cc  00 00 51 e3                                      cmp r1, #0
0048a0d0  00 40 a0 e1                                      mov r4, r0
0048a0d4  08 20 82 e2                                      add r2, r2, #8
0048a0d8  00 20 80 e5                                      str r2, [r0]
0048a0dc  03 00 00 0a                                      beq #0x48a0f0
0048a0e0  01 00 a0 e1                                      mov r0, r1
0048a0e4  00 30 91 e5                                      ldr r3, [r1]
0048a0e8  0f e0 a0 e1                                      mov lr, pc
0048a0ec  04 f0 93 e5                                      ldr pc, [r3, #4]
0048a0f0  c0 09 94 e5                                      ldr r0, [r4, #0x9c0]
0048a0f4  7d 0f fa eb                                      bl #0x30def0
0048a0f8  04 00 a0 e1                                      mov r0, r4
0048a0fc  b5 ff ff eb                                      bl #0x489fd8
0048a100  04 00 a0 e1                                      mov r0, r4
0048a104  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048a108  cc a9 50 00 78 19 00 00                          .byte 0xcc, 0xa9, 0x50, 0x00, 0x78, 0x19, 0x00, 0x00

; FUNCTION 0x0048a90c, declared_size=376, range_size=376, mode=arm
; class-group: rnd::MgxBlock
; alias: _ZN3rnd8MgxBlock11LoadFromXmlER11TiXmlHandle
; demangled: rnd::MgxBlock::LoadFromXml(TiXmlHandle&)
; decoder-mode: arm
0048a90c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0048a910  00 40 a0 e1                                      mov r4, r0
0048a914  10 d0 4d e2                                      sub sp, sp, #0x10
0048a918  01 00 a0 e1                                      mov r0, r1
0048a91c  01 70 a0 e1                                      mov r7, r1
0048a920  48 e4 ff eb                                      bl #0x483a48
0048a924  00 50 50 e2                                      subs r5, r0, #0
0048a928  05 00 a0 01                                      moveq r0, r5
0048a92c  47 00 00 0a                                      beq #0x48aa50
0048a930  30 11 9f e5                                      ldr r1, [pc, #0x130]
0048a934  0d 20 a0 e1                                      mov r2, sp
0048a938  01 10 8f e0                                      add r1, pc, r1
0048a93c  8a 2b 02 eb                                      bl #0x51576c
0048a940  00 00 50 e3                                      cmp r0, #0
0048a944  02 00 00 1a                                      bne #0x48a954
0048a948  d0 00 cd e1                                      ldrd r0, r1, [sp]
0048a94c  53 0f fa eb                                      bl #0x30e6a0
0048a950  4c 00 84 e5                                      str r0, [r4, #0x4c]
0048a954  10 11 9f e5                                      ldr r1, [pc, #0x110]
0048a958  0d 20 a0 e1                                      mov r2, sp
0048a95c  05 00 a0 e1                                      mov r0, r5
0048a960  01 10 8f e0                                      add r1, pc, r1
0048a964  80 2b 02 eb                                      bl #0x51576c
0048a968  00 00 50 e3                                      cmp r0, #0
0048a96c  39 00 00 0a                                      beq #0x48aa58
0048a970  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
0048a974  54 20 84 e2                                      add r2, r4, #0x54
0048a978  05 00 a0 e1                                      mov r0, r5
0048a97c  01 10 8f e0                                      add r1, pc, r1
0048a980  9a 2b 02 eb                                      bl #0x5157f0
0048a984  e8 10 9f e5                                      ldr r1, [pc, #0xe8]
0048a988  58 20 84 e2                                      add r2, r4, #0x58
0048a98c  05 00 a0 e1                                      mov r0, r5
0048a990  01 10 8f e0                                      add r1, pc, r1
0048a994  95 2b 02 eb                                      bl #0x5157f0
0048a998  d8 20 9f e5                                      ldr r2, [pc, #0xd8]
0048a99c  0c 60 8d e2                                      add r6, sp, #0xc
0048a9a0  07 10 a0 e1                                      mov r1, r7
0048a9a4  02 20 8f e0                                      add r2, pc, r2
0048a9a8  06 00 a0 e1                                      mov r0, r6
0048a9ac  26 29 02 eb                                      bl #0x514e4c
0048a9b0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0048a9b4  00 00 53 e3                                      cmp r3, #0
0048a9b8  23 00 00 0a                                      beq #0x48aa4c
0048a9bc  b8 70 9f e5                                      ldr r7, [pc, #0xb8]
0048a9c0  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
0048a9c4  00 50 a0 e3                                      mov r5, #0
0048a9c8  07 70 8f e0                                      add r7, pc, r7
0048a9cc  08 80 8f e0                                      add r8, pc, r8
0048a9d0  4b 9f a0 e3                                      mov sb, #0x12c
0048a9d4  08 a0 8d e2                                      add sl, sp, #8
0048a9d8  00 00 00 ea                                      b #0x48a9e0
0048a9dc  0c 30 8d e5                                      str r3, [sp, #0xc]
0048a9e0  06 00 a0 e1                                      mov r0, r6
0048a9e4  17 e4 ff eb                                      bl #0x483a48
0048a9e8  07 10 a0 e1                                      mov r1, r7
0048a9ec  9f 28 02 eb                                      bl #0x514c70
0048a9f0  08 10 a0 e1                                      mov r1, r8
0048a9f4  3b 0f fa eb                                      bl #0x30e6e8
0048a9f8  00 00 50 e3                                      cmp r0, #0
0048a9fc  05 30 a0 e1                                      mov r3, r5
0048aa00  0a 10 a0 e1                                      mov r1, sl
0048aa04  04 20 a0 e1                                      mov r2, r4
0048aa08  0b 00 00 1a                                      bne #0x48aa3c
0048aa0c  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
0048aa10  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0048aa14  99 00 00 e0                                      mul r0, sb, r0
0048aa18  08 c0 8d e5                                      str ip, [sp, #8]
0048aa1c  60 00 80 e2                                      add r0, r0, #0x60
0048aa20  00 00 84 e0                                      add r0, r4, r0
0048aa24  e9 fe ff eb                                      bl #0x48a5d0
0048aa28  00 00 50 e3                                      cmp r0, #0
0048aa2c  5c 30 94 15                                      ldrne r3, [r4, #0x5c]
0048aa30  01 50 85 12                                      addne r5, r5, #1
0048aa34  01 30 83 12                                      addne r3, r3, #1
0048aa38  5c 30 84 15                                      strne r3, [r4, #0x5c]
0048aa3c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0048aa40  3c 30 93 e5                                      ldr r3, [r3, #0x3c]
0048aa44  00 00 53 e3                                      cmp r3, #0
0048aa48  e3 ff ff 1a                                      bne #0x48a9dc
0048aa4c  01 00 a0 e3                                      mov r0, #1
0048aa50  10 d0 8d e2                                      add sp, sp, #0x10
0048aa54  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0048aa58  d0 00 cd e1                                      ldrd r0, r1, [sp]
0048aa5c  0f 0f fa eb                                      bl #0x30e6a0
0048aa60  50 00 84 e5                                      str r0, [r4, #0x50]
0048aa64  c1 ff ff ea                                      b #0x48a970
; mapping-symbol data/literal pool
0048aa68  e0 a3 44 00 c8 a3 44 00 bc a3 44 00 b8 a3 44 00  .byte 0xe0, 0xa3, 0x44, 0x00, 0xc8, 0xa3, 0x44, 0x00, 0xbc, 0xa3, 0x44, 0x00, 0xb8, 0xa3, 0x44, 0x00
0048aa78  c4 58 43 00 b0 57 43 00 8c a3 44 00              .byte 0xc4, 0x58, 0x43, 0x00, 0xb0, 0x57, 0x43, 0x00, 0x8c, 0xa3, 0x44, 0x00

; FUNCTION 0x0048aa84, declared_size=176, range_size=176, mode=arm
; class-group: rnd::MgxBlock
; alias: _ZN3rnd8MgxBlock17LoadFromXmlStreamEP11IFileStream
; demangled: rnd::MgxBlock::LoadFromXmlStream(IFileStream*)
; decoder-mode: arm
0048aa84  70 40 2d e9                                      push {r4, r5, r6, lr}
0048aa88  00 40 a0 e1                                      mov r4, r0
0048aa8c  08 d0 4d e2                                      sub sp, sp, #8
0048aa90  00 30 91 e5                                      ldr r3, [r1]
0048aa94  01 00 a0 e1                                      mov r0, r1
0048aa98  01 50 a0 e1                                      mov r5, r1
0048aa9c  0f e0 a0 e1                                      mov lr, pc
0048aaa0  08 f0 93 e5                                      ldr pc, [r3, #8]
0048aaa4  00 60 a0 e1                                      mov r6, r0
0048aaa8  11 0f fa eb                                      bl #0x30e6f4
0048aaac  c0 09 84 e5                                      str r0, [r4, #0x9c0]
0048aab0  06 20 a0 e1                                      mov r2, r6
0048aab4  c2 3f a0 e1                                      asr r3, r2, #0x1f
0048aab8  00 c0 95 e5                                      ldr ip, [r5]
0048aabc  00 10 a0 e1                                      mov r1, r0
0048aac0  05 00 a0 e1                                      mov r0, r5
0048aac4  0f e0 a0 e1                                      mov lr, pc
0048aac8  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0048aacc  00 10 a0 e3                                      mov r1, #0
0048aad0  70 00 a0 e3                                      mov r0, #0x70
0048aad4  a5 16 fa eb                                      bl #0x310570
0048aad8  00 50 a0 e1                                      mov r5, r0
0048aadc  f8 30 02 eb                                      bl #0x516ec4
0048aae0  06 20 a0 e1                                      mov r2, r6
0048aae4  c4 59 84 e5                                      str r5, [r4, #0x9c4]
0048aae8  c0 19 94 e5                                      ldr r1, [r4, #0x9c0]
0048aaec  05 00 a0 e1                                      mov r0, r5
0048aaf0  00 30 a0 e3                                      mov r3, #0
0048aaf4  6b 2e 02 eb                                      bl #0x5164a8
0048aaf8  30 20 9f e5                                      ldr r2, [pc, #0x30]
0048aafc  c4 c9 94 e5                                      ldr ip, [r4, #0x9c4]
0048ab00  0d 00 a0 e1                                      mov r0, sp
0048ab04  04 10 8d e2                                      add r1, sp, #4
0048ab08  02 20 8f e0                                      add r2, pc, r2
0048ab0c  00 30 a0 e3                                      mov r3, #0
0048ab10  04 c0 8d e5                                      str ip, [sp, #4]
0048ab14  af 28 02 eb                                      bl #0x514dd8
0048ab18  04 00 a0 e1                                      mov r0, r4
0048ab1c  0d 10 a0 e1                                      mov r1, sp
0048ab20  0d 50 a0 e1                                      mov r5, sp
0048ab24  78 ff ff eb                                      bl #0x48a90c
0048ab28  08 d0 8d e2                                      add sp, sp, #8
0048ab2c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048ab30  28 59 43 00                                      .byte 0x28, 0x59, 0x43, 0x00

; FUNCTION 0x0048ad14, declared_size=64, range_size=64, mode=arm
; class-group: rnd::MgxBlock
; alias: _ZN3rnd8MgxBlockC1Ev
; demangled: rnd::MgxBlock::MgxBlock()
; decoder-mode: arm
0048ad14  70 40 2d e9                                      push {r4, r5, r6, lr}
0048ad18  2c 50 9f e5                                      ldr r5, [pc, #0x2c]
0048ad1c  00 40 a0 e1                                      mov r4, r0
0048ad20  bf ff ff eb                                      bl #0x48ac24
0048ad24  24 30 9f e5                                      ldr r3, [pc, #0x24]
0048ad28  05 50 8f e0                                      add r5, pc, r5
0048ad2c  00 20 a0 e3                                      mov r2, #0
0048ad30  03 30 95 e7                                      ldr r3, [r5, r3]
0048ad34  c4 29 84 e5                                      str r2, [r4, #0x9c4]
0048ad38  c0 29 84 e5                                      str r2, [r4, #0x9c0]
0048ad3c  08 30 83 e2                                      add r3, r3, #8
0048ad40  00 30 84 e5                                      str r3, [r4]
0048ad44  04 00 a0 e1                                      mov r0, r4
0048ad48  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048ad4c  68 9d 50 00 78 19 00 00                          .byte 0x68, 0x9d, 0x50, 0x00, 0x78, 0x19, 0x00, 0x00

; FUNCTION 0x0048ad54, declared_size=948, range_size=948, mode=arm
; class-group: rnd::MgxBlock
; alias: _ZN3rnd8MgxBlock12FromFilenameEPKcS2_S2_
; demangled: rnd::MgxBlock::FromFilename(char const*, char const*, char const*)
; decoder-mode: arm
0048ad54  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0048ad58  80 53 9f e5                                      ldr r5, [pc, #0x380]
0048ad5c  80 b3 9f e5                                      ldr fp, [pc, #0x380]
0048ad60  80 33 9f e5                                      ldr r3, [pc, #0x380]
0048ad64  05 50 8f e0                                      add r5, pc, r5
0048ad68  0b c0 95 e7                                      ldr ip, [r5, fp]
0048ad6c  03 30 95 e7                                      ldr r3, [r5, r3]
0048ad70  91 df 4d e2                                      sub sp, sp, #0x244
0048ad74  00 c0 9c e5                                      ldr ip, [ip]
0048ad78  10 30 93 e5                                      ldr r3, [r3, #0x10]
0048ad7c  01 a0 a0 e1                                      mov sl, r1
0048ad80  64 13 9f e5                                      ldr r1, [pc, #0x364]
0048ad84  3c c2 8d e5                                      str ip, [sp, #0x23c]
0048ad88  34 60 93 e5                                      ldr r6, [r3, #0x34]
0048ad8c  3c 40 8d e2                                      add r4, sp, #0x3c
0048ad90  02 70 a0 e1                                      mov r7, r2
0048ad94  01 10 8f e0                                      add r1, pc, r1
0048ad98  00 20 a0 e1                                      mov r2, r0
0048ad9c  07 30 a0 e1                                      mov r3, r7
0048ada0  00 80 a0 e1                                      mov r8, r0
0048ada4  04 00 a0 e1                                      mov r0, r4
0048ada8  4d 0f fa eb                                      bl #0x30eae4
0048adac  00 20 a0 e3                                      mov r2, #0
0048adb0  04 10 a0 e1                                      mov r1, r4
0048adb4  00 c0 96 e5                                      ldr ip, [r6]
0048adb8  06 00 a0 e1                                      mov r0, r6
0048adbc  02 30 a0 e1                                      mov r3, r2
0048adc0  0f e0 a0 e1                                      mov lr, pc
0048adc4  88 f0 9c e5                                      ldr pc, [ip, #0x88]
0048adc8  00 40 50 e2                                      subs r4, r0, #0
0048adcc  6a 00 00 0a                                      beq #0x48af7c
0048add0  00 10 a0 e3                                      mov r1, #0
0048add4  c8 09 00 e3                                      movw r0, #0x9c8
0048add8  34 40 8d e5                                      str r4, [sp, #0x34]
0048addc  e3 15 fa eb                                      bl #0x310570
0048ade0  00 40 a0 e1                                      mov r4, r0
0048ade4  ca ff ff eb                                      bl #0x48ad14
0048ade8  07 00 a0 e1                                      mov r0, r7
0048adec  18 0c fa eb                                      bl #0x30de54
0048adf0  04 10 84 e2                                      add r1, r4, #4
0048adf4  10 10 8d e5                                      str r1, [sp, #0x10]
0048adf8  00 20 87 e0                                      add r2, r7, r0
0048adfc  07 10 a0 e1                                      mov r1, r7
0048ae00  10 00 9d e5                                      ldr r0, [sp, #0x10]
0048ae04  f5 16 fa eb                                      bl #0x3109e0
0048ae08  18 70 94 e5                                      ldr r7, [r4, #0x18]
0048ae0c  14 90 94 e5                                      ldr sb, [r4, #0x14]
0048ae10  09 90 67 e0                                      rsb sb, r7, sb
0048ae14  03 00 59 e3                                      cmp sb, #3
0048ae18  41 00 00 9a                                      bls #0x48af24
0048ae1c  cc e2 9f e5                                      ldr lr, [pc, #0x2cc]
0048ae20  09 90 87 e0                                      add sb, r7, sb
0048ae24  30 00 8d e2                                      add r0, sp, #0x30
0048ae28  0e e0 8f e0                                      add lr, pc, lr
0048ae2c  04 c0 8e e2                                      add ip, lr, #4
0048ae30  24 c0 8d e5                                      str ip, [sp, #0x24]
0048ae34  20 c0 8d e2                                      add ip, sp, #0x20
0048ae38  00 c0 8d e5                                      str ip, [sp]
0048ae3c  2c 10 8d e2                                      add r1, sp, #0x2c
0048ae40  38 c0 8d e2                                      add ip, sp, #0x38
0048ae44  28 20 8d e2                                      add r2, sp, #0x28
0048ae48  24 30 8d e2                                      add r3, sp, #0x24
0048ae4c  04 c0 8d e5                                      str ip, [sp, #4]
0048ae50  20 e0 8d e5                                      str lr, [sp, #0x20]
0048ae54  2c 90 8d e5                                      str sb, [sp, #0x2c]
0048ae58  28 70 8d e5                                      str r7, [sp, #0x28]
0048ae5c  08 91 fd eb                                      bl #0x3ef284
0048ae60  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0048ae64  0c 00 57 e1                                      cmp r7, ip
0048ae68  09 c0 a0 01                                      moveq ip, sb
0048ae6c  04 c0 4c 12                                      subne ip, ip, #4
0048ae70  0c 00 59 e1                                      cmp sb, ip
0048ae74  2a 00 00 0a                                      beq #0x48af24
0048ae78  18 70 94 e5                                      ldr r7, [r4, #0x18]
0048ae7c  0c c0 67 e0                                      rsb ip, r7, ip
0048ae80  01 00 7c e3                                      cmn ip, #1
0048ae84  26 00 00 0a                                      beq #0x48af24
0048ae88  14 90 94 e5                                      ldr sb, [r4, #0x14]
0048ae8c  09 90 67 e0                                      rsb sb, r7, sb
0048ae90  09 00 5c e1                                      cmp ip, sb
0048ae94  76 00 00 8a                                      bhi #0x48b074
0048ae98  54 32 9f e5                                      ldr r3, [pc, #0x254]
0048ae9c  09 90 6c e0                                      rsb sb, ip, sb
0048aea0  04 00 59 e3                                      cmp sb, #4
0048aea4  09 90 8c 90                                      addls sb, ip, sb
0048aea8  04 90 8c 82                                      addhi sb, ip, #4
0048aeac  03 30 8f e0                                      add r3, pc, r3
0048aeb0  03 00 57 e1                                      cmp r7, r3
0048aeb4  00 20 a0 83                                      movhi r2, #0
0048aeb8  09 90 87 e0                                      add sb, r7, sb
0048aebc  0c c0 87 e0                                      add ip, r7, ip
0048aec0  18 20 8d 85                                      strhi r2, [sp, #0x18]
0048aec4  04 00 00 8a                                      bhi #0x48aedc
0048aec8  14 20 94 e5                                      ldr r2, [r4, #0x14]
0048aecc  03 00 52 e1                                      cmp r2, r3
0048aed0  00 20 a0 93                                      movls r2, #0
0048aed4  01 20 a0 83                                      movhi r2, #1
0048aed8  18 20 8d e5                                      str r2, [sp, #0x18]
0048aedc  0c 30 59 e0                                      subs r3, sb, ip
0048aee0  1c 30 8d e5                                      str r3, [sp, #0x1c]
0048aee4  32 00 00 4a                                      bmi #0x48afb4
0048aee8  09 00 5c e1                                      cmp ip, sb
0048aeec  0c 00 00 0a                                      beq #0x48af24
0048aef0  14 30 94 e5                                      ldr r3, [r4, #0x14]
0048aef4  01 20 83 e2                                      add r2, r3, #1
0048aef8  09 20 52 e0                                      subs r2, r2, sb
0048aefc  05 00 00 0a                                      beq #0x48af18
0048af00  0c 00 a0 e1                                      mov r0, ip
0048af04  09 10 a0 e1                                      mov r1, sb
0048af08  0c c0 8d e5                                      str ip, [sp, #0xc]
0048af0c  09 0c fa eb                                      bl #0x30df38
0048af10  14 30 94 e5                                      ldr r3, [r4, #0x14]
0048af14  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0048af18  0c 90 69 e0                                      rsb sb, sb, ip
0048af1c  09 30 83 e0                                      add r3, r3, sb
0048af20  14 30 84 e5                                      str r3, [r4, #0x14]
0048af24  08 00 a0 e1                                      mov r0, r8
0048af28  c9 0b fa eb                                      bl #0x30de54
0048af2c  08 10 a0 e1                                      mov r1, r8
0048af30  00 20 88 e0                                      add r2, r8, r0
0048af34  1c 00 84 e2                                      add r0, r4, #0x1c
0048af38  a8 16 fa eb                                      bl #0x3109e0
0048af3c  0a 00 a0 e1                                      mov r0, sl
0048af40  c3 0b fa eb                                      bl #0x30de54
0048af44  0a 10 a0 e1                                      mov r1, sl
0048af48  00 20 8a e0                                      add r2, sl, r0
0048af4c  34 00 84 e2                                      add r0, r4, #0x34
0048af50  a2 16 fa eb                                      bl #0x3109e0
0048af54  04 00 a0 e1                                      mov r0, r4
0048af58  34 10 9d e5                                      ldr r1, [sp, #0x34]
0048af5c  c8 fe ff eb                                      bl #0x48aa84
0048af60  00 70 50 e2                                      subs r7, r0, #0
0048af64  0c 00 00 0a                                      beq #0x48af9c
0048af68  06 00 a0 e1                                      mov r0, r6
0048af6c  00 30 96 e5                                      ldr r3, [r6]
0048af70  34 10 8d e2                                      add r1, sp, #0x34
0048af74  0f e0 a0 e1                                      mov lr, pc
0048af78  78 f0 93 e5                                      ldr pc, [r3, #0x78]
0048af7c  0b 30 95 e7                                      ldr r3, [r5, fp]
0048af80  3c 22 9d e5                                      ldr r2, [sp, #0x23c]
0048af84  04 00 a0 e1                                      mov r0, r4
0048af88  00 30 93 e5                                      ldr r3, [r3]
0048af8c  03 00 52 e1                                      cmp r2, r3
0048af90  51 00 00 1a                                      bne #0x48b0dc
0048af94  91 df 8d e2                                      add sp, sp, #0x244
0048af98  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0048af9c  04 00 a0 e1                                      mov r0, r4
0048afa0  00 30 94 e5                                      ldr r3, [r4]
0048afa4  0f e0 a0 e1                                      mov lr, pc
0048afa8  04 f0 93 e5                                      ldr pc, [r3, #4]
0048afac  07 40 a0 e1                                      mov r4, r7
0048afb0  ec ff ff ea                                      b #0x48af68
0048afb4  3c e1 9f e5                                      ldr lr, [pc, #0x13c]
0048afb8  18 10 9d e5                                      ldr r1, [sp, #0x18]
0048afbc  0e e0 8f e0                                      add lr, pc, lr
0048afc0  00 00 51 e3                                      cmp r1, #0
0048afc4  14 e0 8d e5                                      str lr, [sp, #0x14]
0048afc8  0e 20 a0 e1                                      mov r2, lr
0048afcc  10 00 00 1a                                      bne #0x48b014
0048afd0  24 11 9f e5                                      ldr r1, [pc, #0x124]
0048afd4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0048afd8  01 10 8f e0                                      add r1, pc, r1
0048afdc  01 70 83 e0                                      add r7, r3, r1
0048afe0  02 20 57 e0                                      subs r2, r7, r2
0048afe4  01 00 00 0a                                      beq #0x48aff0
0048afe8  0c 00 a0 e1                                      mov r0, ip
0048afec  1d 0e fa eb                                      bl #0x30e868
0048aff0  08 31 9f e5                                      ldr r3, [pc, #0x108]
0048aff4  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0048aff8  10 00 9d e5                                      ldr r0, [sp, #0x10]
0048affc  09 10 a0 e1                                      mov r1, sb
0048b000  07 20 a0 e1                                      mov r2, r7
0048b004  03 30 8f e0                                      add r3, pc, r3
0048b008  00 c0 8d e5                                      str ip, [sp]
0048b00c  e5 9a fd eb                                      bl #0x3f1ba8
0048b010  c3 ff ff ea                                      b #0x48af24
0048b014  0e 00 5c e1                                      cmp ip, lr
0048b018  00 30 a0 33                                      movlo r3, #0
0048b01c  01 30 a0 23                                      movhs r3, #1
0048b020  0e 00 59 e1                                      cmp sb, lr
0048b024  01 30 83 93                                      orrls r3, r3, #1
0048b028  00 00 53 e3                                      cmp r3, #0
0048b02c  e7 ff ff 1a                                      bne #0x48afd0
0048b030  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0048b034  0e 00 5c e1                                      cmp ip, lr
0048b038  14 00 00 8a                                      bhi #0x48b090
0048b03c  14 10 9d e5                                      ldr r1, [sp, #0x14]
0048b040  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0048b044  0c 00 a0 e1                                      mov r0, ip
0048b048  06 0e fa eb                                      bl #0x30e868
0048b04c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0048b050  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0048b054  10 00 9d e5                                      ldr r0, [sp, #0x10]
0048b058  09 10 a0 e1                                      mov r1, sb
0048b05c  0c 20 83 e0                                      add r2, r3, ip
0048b060  0c 30 a0 e1                                      mov r3, ip
0048b064  01 c0 a0 e3                                      mov ip, #1
0048b068  00 c0 8d e5                                      str ip, [sp]
0048b06c  cd 9a fd eb                                      bl #0x3f1ba8
0048b070  ab ff ff ea                                      b #0x48af24
0048b074  88 00 9f e5                                      ldr r0, [pc, #0x88]
0048b078  0c c0 8d e5                                      str ip, [sp, #0xc]
0048b07c  00 00 8f e0                                      add r0, pc, r0
0048b080  8a f7 09 eb                                      bl #0x708eb0
0048b084  18 70 94 e5                                      ldr r7, [r4, #0x18]
0048b088  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0048b08c  81 ff ff ea                                      b #0x48ae98
0048b090  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0048b094  10 00 9d e5                                      ldr r0, [sp, #0x10]
0048b098  09 10 a0 e1                                      mov r1, sb
0048b09c  0e 20 83 e0                                      add r2, r3, lr
0048b0a0  0e 30 a0 e1                                      mov r3, lr
0048b0a4  01 e0 a0 e3                                      mov lr, #1
0048b0a8  00 e0 8d e5                                      str lr, [sp]
0048b0ac  0c c0 8d e5                                      str ip, [sp, #0xc]
0048b0b0  bc 9a fd eb                                      bl #0x3f1ba8
0048b0b4  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0048b0b8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0048b0bc  18 30 94 e5                                      ldr r3, [r4, #0x18]
0048b0c0  0e 10 67 e0                                      rsb r1, r7, lr
0048b0c4  0c 00 67 e0                                      rsb r0, r7, ip
0048b0c8  01 10 83 e0                                      add r1, r3, r1
0048b0cc  00 00 83 e0                                      add r0, r3, r0
0048b0d0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0048b0d4  97 0b fa eb                                      bl #0x30df38
0048b0d8  91 ff ff ea                                      b #0x48af24
0048b0dc  8b 0c fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0048b0e0  2c 9d 50 00 ac 40 00 00 f4 37 00 00 cc 9f 44 00  .byte 0x2c, 0x9d, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xcc, 0x9f, 0x44, 0x00
0048b0f0  00 ba 43 00 5c 09 44 00 4c 08 44 00 30 08 44 00  .byte 0x00, 0xba, 0x43, 0x00, 0x5c, 0x09, 0x44, 0x00, 0x4c, 0x08, 0x44, 0x00, 0x30, 0x08, 0x44, 0x00
0048b100  04 08 44 00 dc 33 43 00                          .byte 0x04, 0x08, 0x44, 0x00, 0xdc, 0x33, 0x43, 0x00

; FUNCTION 0x0048b108, declared_size=64, range_size=64, mode=arm
; class-group: rnd::MgxBlock
; alias: _ZN3rnd8MgxBlockC2Ev
; demangled: rnd::MgxBlock::MgxBlock()
; decoder-mode: arm
0048b108  70 40 2d e9                                      push {r4, r5, r6, lr}
0048b10c  2c 50 9f e5                                      ldr r5, [pc, #0x2c]
0048b110  00 40 a0 e1                                      mov r4, r0
0048b114  c2 fe ff eb                                      bl #0x48ac24
0048b118  24 30 9f e5                                      ldr r3, [pc, #0x24]
0048b11c  05 50 8f e0                                      add r5, pc, r5
0048b120  00 20 a0 e3                                      mov r2, #0
0048b124  03 30 95 e7                                      ldr r3, [r5, r3]
0048b128  c4 29 84 e5                                      str r2, [r4, #0x9c4]
0048b12c  c0 29 84 e5                                      str r2, [r4, #0x9c0]
0048b130  08 30 83 e2                                      add r3, r3, #8
0048b134  00 30 84 e5                                      str r3, [r4]
0048b138  04 00 a0 e1                                      mov r0, r4
0048b13c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048b140  74 99 50 00 78 19 00 00                          .byte 0x74, 0x99, 0x50, 0x00, 0x78, 0x19, 0x00, 0x00

; FUNCTION 0x0048b85c, declared_size=148, range_size=148, mode=arm
; class-group: rnd::MgxBlock
; alias: _ZN3rnd8MgxBlock9FitsInMapER7Array2dIPNS_4TileEEii
; demangled: rnd::MgxBlock::FitsInMap(Array2d<rnd::Tile*>&, int, int)
; decoder-mode: arm
0048b85c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0048b860  00 40 a0 e1                                      mov r4, r0
0048b864  54 00 90 e5                                      ldr r0, [r0, #0x54]
0048b868  02 60 a0 e1                                      mov r6, r2
0048b86c  01 50 a0 e1                                      mov r5, r1
0048b870  00 20 82 e0                                      add r2, r2, r0
0048b874  02 00 56 e1                                      cmp r6, r2
0048b878  03 80 a0 e1                                      mov r8, r3
0048b87c  19 00 00 aa                                      bge #0x48b8e8
0048b880  58 30 94 e5                                      ldr r3, [r4, #0x58]
0048b884  06 a0 a0 e1                                      mov sl, r6
0048b888  03 20 88 e0                                      add r2, r8, r3
0048b88c  02 00 58 e1                                      cmp r8, r2
0048b890  08 70 a0 b1                                      movlt r7, r8
0048b894  04 00 00 ba                                      blt #0x48b8ac
0048b898  0e 00 00 ea                                      b #0x48b8d8
0048b89c  58 30 94 e5                                      ldr r3, [r4, #0x58]
0048b8a0  03 20 88 e0                                      add r2, r8, r3
0048b8a4  07 00 52 e1                                      cmp r2, r7
0048b8a8  09 00 00 da                                      ble #0x48b8d4
0048b8ac  07 20 a0 e1                                      mov r2, r7
0048b8b0  05 00 a0 e1                                      mov r0, r5
0048b8b4  0a 10 a0 e1                                      mov r1, sl
0048b8b8  cf ff ff eb                                      bl #0x48b7fc
0048b8bc  00 30 90 e5                                      ldr r3, [r0]
0048b8c0  01 70 87 e2                                      add r7, r7, #1
0048b8c4  00 00 53 e3                                      cmp r3, #0
0048b8c8  f3 ff ff 0a                                      beq #0x48b89c
0048b8cc  00 00 a0 e3                                      mov r0, #0
0048b8d0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0048b8d4  54 00 94 e5                                      ldr r0, [r4, #0x54]
0048b8d8  01 a0 8a e2                                      add sl, sl, #1
0048b8dc  00 20 86 e0                                      add r2, r6, r0
0048b8e0  0a 00 52 e1                                      cmp r2, sl
0048b8e4  e7 ff ff ca                                      bgt #0x48b888
0048b8e8  01 00 a0 e3                                      mov r0, #1
0048b8ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0048b8f0, declared_size=360, range_size=360, mode=arm
; class-group: rnd::MgxBlock
; alias: _ZN3rnd8MgxBlock13RemoveFromMapER7Array2dIPNS_4TileEES3_ii
; demangled: rnd::MgxBlock::RemoveFromMap(Array2d<rnd::Tile*>&, rnd::Tile*, int, int)
; decoder-mode: arm
0048b8f0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0048b8f4  00 60 a0 e1                                      mov r6, r0
0048b8f8  58 00 90 e5                                      ldr r0, [r0, #0x58]
0048b8fc  3c 81 9f e5                                      ldr r8, [pc, #0x13c]
0048b900  24 d0 4d e2                                      sub sp, sp, #0x24
0048b904  00 00 50 e3                                      cmp r0, #0
0048b908  08 80 8f e0                                      add r8, pc, r8
0048b90c  01 70 a0 e1                                      mov r7, r1
0048b910  08 20 8d e5                                      str r2, [sp, #8]
0048b914  03 b0 a0 e1                                      mov fp, r3
0048b918  3e 00 00 da                                      ble #0x48ba18
0048b91c  20 31 9f e5                                      ldr r3, [pc, #0x120]
0048b920  00 20 a0 e3                                      mov r2, #0
0048b924  0c 20 8d e5                                      str r2, [sp, #0xc]
0048b928  03 30 8f e0                                      add r3, pc, r3
0048b92c  14 30 8d e5                                      str r3, [sp, #0x14]
0048b930  10 31 9f e5                                      ldr r3, [pc, #0x110]
0048b934  03 30 8f e0                                      add r3, pc, r3
0048b938  18 30 8d e5                                      str r3, [sp, #0x18]
0048b93c  08 31 9f e5                                      ldr r3, [pc, #0x108]
0048b940  03 30 8f e0                                      add r3, pc, r3
0048b944  1c 30 8d e5                                      str r3, [sp, #0x1c]
0048b948  54 30 96 e5                                      ldr r3, [r6, #0x54]
0048b94c  00 00 53 e3                                      cmp r3, #0
0048b950  2b 00 00 da                                      ble #0x48ba04
0048b954  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0048b958  48 c0 9d e5                                      ldr ip, [sp, #0x48]
0048b95c  ec 20 9f e5                                      ldr r2, [pc, #0xec]
0048b960  00 40 a0 e3                                      mov r4, #0
0048b964  0c 50 83 e0                                      add r5, r3, ip
0048b968  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
0048b96c  10 20 8d e5                                      str r2, [sp, #0x10]
0048b970  05 a0 a0 e1                                      mov sl, r5
0048b974  03 00 00 ea                                      b #0x48b988
0048b978  54 30 96 e5                                      ldr r3, [r6, #0x54]
0048b97c  01 40 84 e2                                      add r4, r4, #1
0048b980  04 00 53 e1                                      cmp r3, r4
0048b984  1d 00 00 da                                      ble #0x48ba00
0048b988  0b 50 84 e0                                      add r5, r4, fp
0048b98c  05 10 a0 e1                                      mov r1, r5
0048b990  0a 20 a0 e1                                      mov r2, sl
0048b994  07 00 a0 e1                                      mov r0, r7
0048b998  97 ff ff eb                                      bl #0x48b7fc
0048b99c  08 c0 9d e5                                      ldr ip, [sp, #8]
0048b9a0  00 30 90 e5                                      ldr r3, [r0]
0048b9a4  0c 00 53 e1                                      cmp r3, ip
0048b9a8  1d 00 00 0a                                      beq #0x48ba24
0048b9ac  09 30 98 e7                                      ldr r3, [r8, sb]
0048b9b0  00 30 93 e5                                      ldr r3, [r3]
0048b9b4  02 00 53 e3                                      cmp r3, #2
0048b9b8  00 30 a0 03                                      moveq r3, #0
0048b9bc  00 30 83 05                                      streq r3, [r3]
0048b9c0  ec ff ff 0a                                      beq #0x48b978
0048b9c4  01 00 53 e3                                      cmp r3, #1
0048b9c8  ea ff ff 1a                                      bne #0x48b978
0048b9cc  10 20 9d e5                                      ldr r2, [sp, #0x10]
0048b9d0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0048b9d4  05 cd a0 e3                                      mov ip, #0x140
0048b9d8  02 00 98 e7                                      ldr r0, [r8, r2]
0048b9dc  14 10 9d e5                                      ldr r1, [sp, #0x14]
0048b9e0  18 20 9d e5                                      ldr r2, [sp, #0x18]
0048b9e4  a8 00 80 e2                                      add r0, r0, #0xa8
0048b9e8  00 c0 8d e5                                      str ip, [sp]
0048b9ec  84 09 fa eb                                      bl #0x30e004
0048b9f0  54 30 96 e5                                      ldr r3, [r6, #0x54]
0048b9f4  01 40 84 e2                                      add r4, r4, #1
0048b9f8  04 00 53 e1                                      cmp r3, r4
0048b9fc  e1 ff ff ca                                      bgt #0x48b988
0048ba00  58 00 96 e5                                      ldr r0, [r6, #0x58]
0048ba04  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0048ba08  01 20 82 e2                                      add r2, r2, #1
0048ba0c  02 00 50 e1                                      cmp r0, r2
0048ba10  0c 20 8d e5                                      str r2, [sp, #0xc]
0048ba14  cc ff ff ca                                      bgt #0x48b94c
0048ba18  01 00 a0 e3                                      mov r0, #1
0048ba1c  24 d0 8d e2                                      add sp, sp, #0x24
0048ba20  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0048ba24  05 10 a0 e1                                      mov r1, r5
0048ba28  07 00 a0 e1                                      mov r0, r7
0048ba2c  0a 20 a0 e1                                      mov r2, sl
0048ba30  71 ff ff eb                                      bl #0x48b7fc
0048ba34  00 30 a0 e3                                      mov r3, #0
0048ba38  00 30 80 e5                                      str r3, [r0]
0048ba3c  cd ff ff ea                                      b #0x48b978
; mapping-symbol data/literal pool
0048ba40  88 91 50 00 b0 2a 43 00 34 2c 43 00 30 94 44 00  .byte 0x88, 0x91, 0x50, 0x00, 0xb0, 0x2a, 0x43, 0x00, 0x34, 0x2c, 0x43, 0x00, 0x30, 0x94, 0x44, 0x00
0048ba50  c0 19 00 00 c0 39 00 00                          .byte 0xc0, 0x19, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00

; FUNCTION 0x0048ba58, declared_size=356, range_size=356, mode=arm
; class-group: rnd::MgxBlock
; alias: _ZN3rnd8MgxBlock10PlaceInMapER7Array2dIPNS_4TileEES3_ii
; demangled: rnd::MgxBlock::PlaceInMap(Array2d<rnd::Tile*>&, rnd::Tile*, int, int)
; decoder-mode: arm
0048ba58  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0048ba5c  00 60 a0 e1                                      mov r6, r0
0048ba60  58 00 90 e5                                      ldr r0, [r0, #0x58]
0048ba64  38 81 9f e5                                      ldr r8, [pc, #0x138]
0048ba68  24 d0 4d e2                                      sub sp, sp, #0x24
0048ba6c  00 00 50 e3                                      cmp r0, #0
0048ba70  08 80 8f e0                                      add r8, pc, r8
0048ba74  01 70 a0 e1                                      mov r7, r1
0048ba78  1c 20 8d e5                                      str r2, [sp, #0x1c]
0048ba7c  03 b0 a0 e1                                      mov fp, r3
0048ba80  3d 00 00 da                                      ble #0x48bb7c
0048ba84  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
0048ba88  00 20 a0 e3                                      mov r2, #0
0048ba8c  08 20 8d e5                                      str r2, [sp, #8]
0048ba90  03 30 8f e0                                      add r3, pc, r3
0048ba94  10 30 8d e5                                      str r3, [sp, #0x10]
0048ba98  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
0048ba9c  03 30 8f e0                                      add r3, pc, r3
0048baa0  14 30 8d e5                                      str r3, [sp, #0x14]
0048baa4  04 31 9f e5                                      ldr r3, [pc, #0x104]
0048baa8  03 30 8f e0                                      add r3, pc, r3
0048baac  18 30 8d e5                                      str r3, [sp, #0x18]
0048bab0  54 30 96 e5                                      ldr r3, [r6, #0x54]
0048bab4  00 00 53 e3                                      cmp r3, #0
0048bab8  2a 00 00 da                                      ble #0x48bb68
0048babc  08 30 9d e5                                      ldr r3, [sp, #8]
0048bac0  48 c0 9d e5                                      ldr ip, [sp, #0x48]
0048bac4  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
0048bac8  00 40 a0 e3                                      mov r4, #0
0048bacc  0c 50 83 e0                                      add r5, r3, ip
0048bad0  e0 90 9f e5                                      ldr sb, [pc, #0xe0]
0048bad4  0c 20 8d e5                                      str r2, [sp, #0xc]
0048bad8  05 a0 a0 e1                                      mov sl, r5
0048badc  03 00 00 ea                                      b #0x48baf0
0048bae0  54 30 96 e5                                      ldr r3, [r6, #0x54]
0048bae4  01 40 84 e2                                      add r4, r4, #1
0048bae8  04 00 53 e1                                      cmp r3, r4
0048baec  1c 00 00 da                                      ble #0x48bb64
0048baf0  0b 50 84 e0                                      add r5, r4, fp
0048baf4  05 10 a0 e1                                      mov r1, r5
0048baf8  0a 20 a0 e1                                      mov r2, sl
0048bafc  07 00 a0 e1                                      mov r0, r7
0048bb00  3d ff ff eb                                      bl #0x48b7fc
0048bb04  00 30 90 e5                                      ldr r3, [r0]
0048bb08  00 00 53 e3                                      cmp r3, #0
0048bb0c  1d 00 00 0a                                      beq #0x48bb88
0048bb10  09 30 98 e7                                      ldr r3, [r8, sb]
0048bb14  00 30 93 e5                                      ldr r3, [r3]
0048bb18  02 00 53 e3                                      cmp r3, #2
0048bb1c  00 30 a0 03                                      moveq r3, #0
0048bb20  00 30 83 05                                      streq r3, [r3]
0048bb24  ed ff ff 0a                                      beq #0x48bae0
0048bb28  01 00 53 e3                                      cmp r3, #1
0048bb2c  eb ff ff 1a                                      bne #0x48bae0
0048bb30  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0048bb34  18 30 9d e5                                      ldr r3, [sp, #0x18]
0048bb38  10 10 9d e5                                      ldr r1, [sp, #0x10]
0048bb3c  0c 00 98 e7                                      ldr r0, [r8, ip]
0048bb40  14 20 9d e5                                      ldr r2, [sp, #0x14]
0048bb44  2a c1 00 e3                                      movw ip, #0x12a
0048bb48  a8 00 80 e2                                      add r0, r0, #0xa8
0048bb4c  00 c0 8d e5                                      str ip, [sp]
0048bb50  2b 09 fa eb                                      bl #0x30e004
0048bb54  54 30 96 e5                                      ldr r3, [r6, #0x54]
0048bb58  01 40 84 e2                                      add r4, r4, #1
0048bb5c  04 00 53 e1                                      cmp r3, r4
0048bb60  e2 ff ff ca                                      bgt #0x48baf0
0048bb64  58 00 96 e5                                      ldr r0, [r6, #0x58]
0048bb68  08 20 9d e5                                      ldr r2, [sp, #8]
0048bb6c  01 20 82 e2                                      add r2, r2, #1
0048bb70  02 00 50 e1                                      cmp r0, r2
0048bb74  08 20 8d e5                                      str r2, [sp, #8]
0048bb78  cd ff ff ca                                      bgt #0x48bab4
0048bb7c  01 00 a0 e3                                      mov r0, #1
0048bb80  24 d0 8d e2                                      add sp, sp, #0x24
0048bb84  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0048bb88  05 10 a0 e1                                      mov r1, r5
0048bb8c  07 00 a0 e1                                      mov r0, r7
0048bb90  0a 20 a0 e1                                      mov r2, sl
0048bb94  18 ff ff eb                                      bl #0x48b7fc
0048bb98  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0048bb9c  00 30 80 e5                                      str r3, [r0]
0048bba0  ce ff ff ea                                      b #0x48bae0
; mapping-symbol data/literal pool
0048bba4  20 90 50 00 48 29 43 00 cc 2a 43 00 c8 92 44 00  .byte 0x20, 0x90, 0x50, 0x00, 0x48, 0x29, 0x43, 0x00, 0xcc, 0x2a, 0x43, 0x00, 0xc8, 0x92, 0x44, 0x00
0048bbb4  c0 19 00 00 c0 39 00 00                          .byte 0xc0, 0x19, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
