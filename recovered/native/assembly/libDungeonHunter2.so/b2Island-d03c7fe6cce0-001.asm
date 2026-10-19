; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007ea6a8, declared_size=464, range_size=464, mode=arm
; class-group: b2Island
; alias: _ZN8b2Island6ReportEP19b2ContactConstraint
; demangled: b2Island::Report(b2ContactConstraint*)
; decoder-mode: arm
007ea6a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ea6ac  44 d0 4d e2                                      sub sp, sp, #0x44
007ea6b0  04 00 8d e5                                      str r0, [sp, #4]
007ea6b4  04 30 90 e5                                      ldr r3, [r0, #4]
007ea6b8  00 00 53 e3                                      cmp r3, #0
007ea6bc  6b 00 00 0a                                      beq #0x7ea870
007ea6c0  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
007ea6c4  00 00 53 e3                                      cmp r3, #0
007ea6c8  68 00 00 da                                      ble #0x7ea870
007ea6cc  10 10 8d e5                                      str r1, [sp, #0x10]
007ea6d0  1c 20 8d e2                                      add r2, sp, #0x1c
007ea6d4  00 10 a0 e3                                      mov r1, #0
007ea6d8  14 10 8d e5                                      str r1, [sp, #0x14]
007ea6dc  08 20 8d e5                                      str r2, [sp, #8]
007ea6e0  04 10 9d e5                                      ldr r1, [sp, #4]
007ea6e4  14 20 9d e5                                      ldr r2, [sp, #0x14]
007ea6e8  0c 30 91 e5                                      ldr r3, [r1, #0xc]
007ea6ec  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
007ea6f0  34 20 93 e5                                      ldr r2, [r3, #0x34]
007ea6f4  03 00 a0 e1                                      mov r0, r3
007ea6f8  1c 20 8d e5                                      str r2, [sp, #0x1c]
007ea6fc  38 10 93 e5                                      ldr r1, [r3, #0x38]
007ea700  20 10 8d e5                                      str r1, [sp, #0x20]
007ea704  08 10 93 e5                                      ldr r1, [r3, #8]
007ea708  0c 10 8d e5                                      str r1, [sp, #0xc]
007ea70c  00 30 93 e5                                      ldr r3, [r3]
007ea710  0c 40 92 e5                                      ldr r4, [r2, #0xc]
007ea714  0f e0 a0 e1                                      mov lr, pc
007ea718  00 f0 93 e5                                      ldr pc, [r3]
007ea71c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007ea720  00 00 52 e3                                      cmp r2, #0
007ea724  47 00 00 da                                      ble #0x7ea848
007ea728  00 30 a0 e3                                      mov r3, #0
007ea72c  00 70 a0 e1                                      mov r7, r0
007ea730  00 30 8d e5                                      str r3, [sp]
007ea734  40 30 97 e5                                      ldr r3, [r7, #0x40]
007ea738  2c 30 8d e5                                      str r3, [sp, #0x2c]
007ea73c  44 30 97 e5                                      ldr r3, [r7, #0x44]
007ea740  30 30 8d e5                                      str r3, [sp, #0x30]
007ea744  48 30 97 e5                                      ldr r3, [r7, #0x48]
007ea748  00 00 53 e3                                      cmp r3, #0
007ea74c  36 00 00 da                                      ble #0x7ea82c
007ea750  10 60 9d e5                                      ldr r6, [sp, #0x10]
007ea754  07 50 a0 e1                                      mov r5, r7
007ea758  00 80 a0 e3                                      mov r8, #0
007ea75c  00 90 95 e5                                      ldr sb, [r5]
007ea760  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ea764  04 a0 95 e5                                      ldr sl, [r5, #4]
007ea768  09 00 a0 e1                                      mov r0, sb
007ea76c  7e 91 ec eb                                      bl #0x30ed6c
007ea770  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ea774  00 b0 a0 e1                                      mov fp, r0
007ea778  0a 00 a0 e1                                      mov r0, sl
007ea77c  7a 91 ec eb                                      bl #0x30ed6c
007ea780  00 10 a0 e1                                      mov r1, r0
007ea784  0b 00 a0 e1                                      mov r0, fp
007ea788  05 91 ec eb                                      bl #0x30eba4
007ea78c  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ea790  00 b0 a0 e1                                      mov fp, r0
007ea794  09 00 a0 e1                                      mov r0, sb
007ea798  73 91 ec eb                                      bl #0x30ed6c
007ea79c  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ea7a0  00 90 a0 e1                                      mov sb, r0
007ea7a4  0a 00 a0 e1                                      mov r0, sl
007ea7a8  6f 91 ec eb                                      bl #0x30ed6c
007ea7ac  00 10 a0 e1                                      mov r1, r0
007ea7b0  09 00 a0 e1                                      mov r0, sb
007ea7b4  fa 90 ec eb                                      bl #0x30eba4
007ea7b8  04 10 94 e5                                      ldr r1, [r4, #4]
007ea7bc  00 a0 a0 e1                                      mov sl, r0
007ea7c0  0b 00 a0 e1                                      mov r0, fp
007ea7c4  f6 90 ec eb                                      bl #0x30eba4
007ea7c8  08 10 94 e5                                      ldr r1, [r4, #8]
007ea7cc  00 90 a0 e1                                      mov sb, r0
007ea7d0  0a 00 a0 e1                                      mov r0, sl
007ea7d4  f2 90 ec eb                                      bl #0x30eba4
007ea7d8  24 90 8d e5                                      str sb, [sp, #0x24]
007ea7dc  28 00 8d e5                                      str r0, [sp, #0x28]
007ea7e0  20 20 96 e5                                      ldr r2, [r6, #0x20]
007ea7e4  04 10 9d e5                                      ldr r1, [sp, #4]
007ea7e8  01 80 88 e2                                      add r8, r8, #1
007ea7ec  04 30 91 e5                                      ldr r3, [r1, #4]
007ea7f0  34 20 8d e5                                      str r2, [sp, #0x34]
007ea7f4  24 20 96 e5                                      ldr r2, [r6, #0x24]
007ea7f8  03 00 a0 e1                                      mov r0, r3
007ea7fc  08 10 9d e5                                      ldr r1, [sp, #8]
007ea800  38 20 8d e5                                      str r2, [sp, #0x38]
007ea804  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
007ea808  40 60 86 e2                                      add r6, r6, #0x40
007ea80c  20 50 85 e2                                      add r5, r5, #0x20
007ea810  3c 20 8d e5                                      str r2, [sp, #0x3c]
007ea814  00 30 93 e5                                      ldr r3, [r3]
007ea818  0f e0 a0 e1                                      mov lr, pc
007ea81c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
007ea820  48 30 97 e5                                      ldr r3, [r7, #0x48]
007ea824  08 00 53 e1                                      cmp r3, r8
007ea828  cb ff ff ca                                      bgt #0x7ea75c
007ea82c  00 20 9d e5                                      ldr r2, [sp]
007ea830  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007ea834  4c 70 87 e2                                      add r7, r7, #0x4c
007ea838  01 20 82 e2                                      add r2, r2, #1
007ea83c  03 00 52 e1                                      cmp r2, r3
007ea840  00 20 8d e5                                      str r2, [sp]
007ea844  ba ff ff 1a                                      bne #0x7ea734
007ea848  04 10 9d e5                                      ldr r1, [sp, #4]
007ea84c  14 20 9d e5                                      ldr r2, [sp, #0x14]
007ea850  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
007ea854  10 10 9d e5                                      ldr r1, [sp, #0x10]
007ea858  01 20 82 e2                                      add r2, r2, #1
007ea85c  02 00 53 e1                                      cmp r3, r2
007ea860  a0 10 81 e2                                      add r1, r1, #0xa0
007ea864  14 20 8d e5                                      str r2, [sp, #0x14]
007ea868  10 10 8d e5                                      str r1, [sp, #0x10]
007ea86c  9b ff ff ca                                      bgt #0x7ea6e0
007ea870  44 d0 8d e2                                      add sp, sp, #0x44
007ea874  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007ea878, declared_size=344, range_size=344, mode=arm
; class-group: b2Island
; alias: _ZN8b2Island8SolveTOIERK10b2TimeStep
; demangled: b2Island::SolveTOI(b2TimeStep const&)
; decoder-mode: arm
007ea878  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ea87c  2c d0 4d e2                                      sub sp, sp, #0x2c
007ea880  00 c0 90 e5                                      ldr ip, [r0]
007ea884  08 50 8d e2                                      add r5, sp, #8
007ea888  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
007ea88c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
007ea890  01 40 a0 e1                                      mov r4, r1
007ea894  00 60 a0 e1                                      mov r6, r0
007ea898  05 00 a0 e1                                      mov r0, r5
007ea89c  00 c0 8d e5                                      str ip, [sp]
007ea8a0  ec 31 00 eb                                      bl #0x7f7058
007ea8a4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007ea8a8  00 00 53 e3                                      cmp r3, #0
007ea8ac  06 00 00 da                                      ble #0x7ea8cc
007ea8b0  00 70 a0 e3                                      mov r7, #0
007ea8b4  05 00 a0 e1                                      mov r0, r5
007ea8b8  fa 2e 00 eb                                      bl #0x7f64a8
007ea8bc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007ea8c0  01 70 87 e2                                      add r7, r7, #1
007ea8c4  07 00 53 e1                                      cmp r3, r7
007ea8c8  f9 ff ff ca                                      bgt #0x7ea8b4
007ea8cc  14 20 96 e5                                      ldr r2, [r6, #0x14]
007ea8d0  00 00 52 e3                                      cmp r2, #0
007ea8d4  29 00 00 da                                      ble #0x7ea980
007ea8d8  00 80 a0 e3                                      mov r8, #0
007ea8dc  08 30 96 e5                                      ldr r3, [r6, #8]
007ea8e0  08 71 93 e7                                      ldr r7, [r3, r8, lsl #2]
007ea8e4  01 80 88 e2                                      add r8, r8, #1
007ea8e8  f2 30 d7 e1                                      ldrsh r3, [r7, #2]
007ea8ec  00 00 53 e3                                      cmp r3, #0
007ea8f0  1f 00 00 0a                                      beq #0x7ea974
007ea8f4  2c 20 97 e5                                      ldr r2, [r7, #0x2c]
007ea8f8  30 30 97 e5                                      ldr r3, [r7, #0x30]
007ea8fc  38 a0 97 e5                                      ldr sl, [r7, #0x38]
007ea900  24 20 87 e5                                      str r2, [r7, #0x24]
007ea904  28 30 87 e5                                      str r3, [r7, #0x28]
007ea908  34 a0 87 e5                                      str sl, [r7, #0x34]
007ea90c  00 90 94 e5                                      ldr sb, [r4]
007ea910  44 10 97 e5                                      ldr r1, [r7, #0x44]
007ea914  09 00 a0 e1                                      mov r0, sb
007ea918  13 91 ec eb                                      bl #0x30ed6c
007ea91c  40 10 97 e5                                      ldr r1, [r7, #0x40]
007ea920  00 b0 a0 e1                                      mov fp, r0
007ea924  09 00 a0 e1                                      mov r0, sb
007ea928  0f 91 ec eb                                      bl #0x30ed6c
007ea92c  00 10 a0 e1                                      mov r1, r0
007ea930  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
007ea934  9a 90 ec eb                                      bl #0x30eba4
007ea938  0b 10 a0 e1                                      mov r1, fp
007ea93c  2c 00 87 e5                                      str r0, [r7, #0x2c]
007ea940  30 00 97 e5                                      ldr r0, [r7, #0x30]
007ea944  96 90 ec eb                                      bl #0x30eba4
007ea948  30 00 87 e5                                      str r0, [r7, #0x30]
007ea94c  00 00 94 e5                                      ldr r0, [r4]
007ea950  48 10 97 e5                                      ldr r1, [r7, #0x48]
007ea954  04 91 ec eb                                      bl #0x30ed6c
007ea958  00 10 a0 e1                                      mov r1, r0
007ea95c  0a 00 a0 e1                                      mov r0, sl
007ea960  8f 90 ec eb                                      bl #0x30eba4
007ea964  38 00 87 e5                                      str r0, [r7, #0x38]
007ea968  07 00 a0 e1                                      mov r0, r7
007ea96c  2a f3 ff eb                                      bl #0x7e761c
007ea970  14 20 96 e5                                      ldr r2, [r6, #0x14]
007ea974  08 00 52 e1                                      cmp r2, r8
007ea978  d7 ff ff ca                                      bgt #0x7ea8dc
007ea97c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007ea980  00 00 53 e3                                      cmp r3, #0
007ea984  0a 00 00 da                                      ble #0x7ea9b4
007ea988  00 70 a0 e3                                      mov r7, #0
007ea98c  02 00 00 ea                                      b #0x7ea99c
007ea990  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007ea994  07 00 53 e1                                      cmp r3, r7
007ea998  05 00 00 da                                      ble #0x7ea9b4
007ea99c  05 00 a0 e1                                      mov r0, r5
007ea9a0  fd 15 a0 e3                                      mov r1, #0x3f400000
007ea9a4  7c 30 00 eb                                      bl #0x7f6b9c
007ea9a8  00 00 50 e3                                      cmp r0, #0
007ea9ac  01 70 87 e2                                      add r7, r7, #1
007ea9b0  f6 ff ff 0a                                      beq #0x7ea990
007ea9b4  06 00 a0 e1                                      mov r0, r6
007ea9b8  20 10 9d e5                                      ldr r1, [sp, #0x20]
007ea9bc  39 ff ff eb                                      bl #0x7ea6a8
007ea9c0  05 00 a0 e1                                      mov r0, r5
007ea9c4  95 31 00 eb                                      bl #0x7f7020
007ea9c8  2c d0 8d e2                                      add sp, sp, #0x2c
007ea9cc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007ea9d0, declared_size=1704, range_size=1704, mode=arm
; class-group: b2Island
; alias: _ZN8b2Island5SolveERK10b2TimeStepRK6b2Vec2bb
; demangled: b2Island::Solve(b2TimeStep const&, b2Vec2 const&, bool, bool)
; decoder-mode: arm
007ea9d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ea9d4  00 40 a0 e1                                      mov r4, r0
007ea9d8  44 d0 4d e2                                      sub sp, sp, #0x44
007ea9dc  14 60 90 e5                                      ldr r6, [r0, #0x14]
007ea9e0  88 06 9f e5                                      ldr r0, [pc, #0x688]
007ea9e4  01 50 a0 e1                                      mov r5, r1
007ea9e8  68 10 dd e5                                      ldrb r1, [sp, #0x68]
007ea9ec  00 00 8f e0                                      add r0, pc, r0
007ea9f0  00 00 56 e3                                      cmp r6, #0
007ea9f4  14 00 8d e5                                      str r0, [sp, #0x14]
007ea9f8  10 20 8d e5                                      str r2, [sp, #0x10]
007ea9fc  18 30 8d e5                                      str r3, [sp, #0x18]
007eaa00  1c 10 8d e5                                      str r1, [sp, #0x1c]
007eaa04  90 00 00 da                                      ble #0x7eac4c
007eaa08  00 a0 a0 e3                                      mov sl, #0
007eaa0c  00 80 a0 e3                                      mov r8, #0
007eaa10  0e 00 00 ea                                      b #0x7eaa50
007eaa14  00 10 a0 e3                                      mov r1, #0
007eaa18  06 00 a0 e1                                      mov r0, r6
007eaa1c  3a 8f ec eb                                      bl #0x30e70c
007eaa20  00 00 50 e3                                      cmp r0, #0
007eaa24  43 14 a0 03                                      moveq r1, #0x43000000
007eaa28  7a 18 81 02                                      addeq r1, r1, #0x7a0000
007eaa2c  48 10 87 05                                      streq r1, [r7, #0x48]
007eaa30  81 00 00 0a                                      beq #0x7eac3c
007eaa34  c3 04 a0 e3                                      mov r0, #0xc3000000
007eaa38  7a 08 80 e2                                      add r0, r0, #0x7a0000
007eaa3c  48 00 87 e5                                      str r0, [r7, #0x48]
007eaa40  14 60 94 e5                                      ldr r6, [r4, #0x14]
007eaa44  01 80 88 e2                                      add r8, r8, #1
007eaa48  08 00 56 e1                                      cmp r6, r8
007eaa4c  7e 00 00 da                                      ble #0x7eac4c
007eaa50  08 30 94 e5                                      ldr r3, [r4, #8]
007eaa54  08 71 93 e7                                      ldr r7, [r3, r8, lsl #2]
007eaa58  f2 30 d7 e1                                      ldrsh r3, [r7, #2]
007eaa5c  00 00 53 e3                                      cmp r3, #0
007eaa60  f7 ff ff 0a                                      beq #0x7eaa44
007eaa64  78 b0 97 e5                                      ldr fp, [r7, #0x78]
007eaa68  4c 10 97 e5                                      ldr r1, [r7, #0x4c]
007eaa6c  00 60 95 e5                                      ldr r6, [r5]
007eaa70  0b 00 a0 e1                                      mov r0, fp
007eaa74  bc 90 ec eb                                      bl #0x30ed6c
007eaa78  50 10 97 e5                                      ldr r1, [r7, #0x50]
007eaa7c  00 90 a0 e1                                      mov sb, r0
007eaa80  0b 00 a0 e1                                      mov r0, fp
007eaa84  b8 90 ec eb                                      bl #0x30ed6c
007eaa88  10 30 9d e5                                      ldr r3, [sp, #0x10]
007eaa8c  00 b0 a0 e1                                      mov fp, r0
007eaa90  09 00 a0 e1                                      mov r0, sb
007eaa94  00 10 93 e5                                      ldr r1, [r3]
007eaa98  41 90 ec eb                                      bl #0x30eba4
007eaa9c  10 30 9d e5                                      ldr r3, [sp, #0x10]
007eaaa0  00 90 a0 e1                                      mov sb, r0
007eaaa4  0b 00 a0 e1                                      mov r0, fp
007eaaa8  04 10 93 e5                                      ldr r1, [r3, #4]
007eaaac  3c 90 ec eb                                      bl #0x30eba4
007eaab0  09 10 a0 e1                                      mov r1, sb
007eaab4  00 b0 a0 e1                                      mov fp, r0
007eaab8  06 00 a0 e1                                      mov r0, r6
007eaabc  aa 90 ec eb                                      bl #0x30ed6c
007eaac0  40 10 97 e5                                      ldr r1, [r7, #0x40]
007eaac4  36 90 ec eb                                      bl #0x30eba4
007eaac8  0b 10 a0 e1                                      mov r1, fp
007eaacc  40 00 87 e5                                      str r0, [r7, #0x40]
007eaad0  00 90 a0 e1                                      mov sb, r0
007eaad4  06 00 a0 e1                                      mov r0, r6
007eaad8  a3 90 ec eb                                      bl #0x30ed6c
007eaadc  44 10 97 e5                                      ldr r1, [r7, #0x44]
007eaae0  2f 90 ec eb                                      bl #0x30eba4
007eaae4  44 00 87 e5                                      str r0, [r7, #0x44]
007eaae8  80 10 97 e5                                      ldr r1, [r7, #0x80]
007eaaec  00 b0 a0 e1                                      mov fp, r0
007eaaf0  00 00 95 e5                                      ldr r0, [r5]
007eaaf4  9c 90 ec eb                                      bl #0x30ed6c
007eaaf8  54 10 97 e5                                      ldr r1, [r7, #0x54]
007eaafc  9a 90 ec eb                                      bl #0x30ed6c
007eab00  48 10 97 e5                                      ldr r1, [r7, #0x48]
007eab04  26 90 ec eb                                      bl #0x30eba4
007eab08  0c 00 8d e5                                      str r0, [sp, #0xc]
007eab0c  48 00 87 e5                                      str r0, [r7, #0x48]
007eab10  4c a0 87 e5                                      str sl, [r7, #0x4c]
007eab14  50 a0 87 e5                                      str sl, [r7, #0x50]
007eab18  54 a0 87 e5                                      str sl, [r7, #0x54]
007eab1c  84 10 97 e5                                      ldr r1, [r7, #0x84]
007eab20  00 00 95 e5                                      ldr r0, [r5]
007eab24  90 90 ec eb                                      bl #0x30ed6c
007eab28  00 10 a0 e1                                      mov r1, r0
007eab2c  fe 05 a0 e3                                      mov r0, #0x3f800000
007eab30  1d 8e ec eb                                      bl #0x30e3ac
007eab34  fe 15 a0 e3                                      mov r1, #0x3f800000
007eab38  00 60 a0 e1                                      mov r6, r0
007eab3c  f2 8e ec eb                                      bl #0x30e70c
007eab40  00 00 50 e3                                      cmp r0, #0
007eab44  fe 65 a0 03                                      moveq r6, #0x3f800000
007eab48  04 00 00 0a                                      beq #0x7eab60
007eab4c  06 00 a0 e1                                      mov r0, r6
007eab50  0a 10 a0 e1                                      mov r1, sl
007eab54  ec 8e ec eb                                      bl #0x30e70c
007eab58  00 00 50 e3                                      cmp r0, #0
007eab5c  0a 60 a0 11                                      movne r6, sl
007eab60  06 10 a0 e1                                      mov r1, r6
007eab64  09 00 a0 e1                                      mov r0, sb
007eab68  7f 90 ec eb                                      bl #0x30ed6c
007eab6c  06 10 a0 e1                                      mov r1, r6
007eab70  40 00 87 e5                                      str r0, [r7, #0x40]
007eab74  00 90 a0 e1                                      mov sb, r0
007eab78  0b 00 a0 e1                                      mov r0, fp
007eab7c  7a 90 ec eb                                      bl #0x30ed6c
007eab80  44 00 87 e5                                      str r0, [r7, #0x44]
007eab84  88 10 97 e5                                      ldr r1, [r7, #0x88]
007eab88  00 b0 a0 e1                                      mov fp, r0
007eab8c  00 00 95 e5                                      ldr r0, [r5]
007eab90  75 90 ec eb                                      bl #0x30ed6c
007eab94  00 10 a0 e1                                      mov r1, r0
007eab98  fe 05 a0 e3                                      mov r0, #0x3f800000
007eab9c  02 8e ec eb                                      bl #0x30e3ac
007eaba0  fe 15 a0 e3                                      mov r1, #0x3f800000
007eaba4  00 60 a0 e1                                      mov r6, r0
007eaba8  d7 8e ec eb                                      bl #0x30e70c
007eabac  00 00 50 e3                                      cmp r0, #0
007eabb0  fe 65 a0 03                                      moveq r6, #0x3f800000
007eabb4  04 00 00 0a                                      beq #0x7eabcc
007eabb8  06 00 a0 e1                                      mov r0, r6
007eabbc  00 10 a0 e3                                      mov r1, #0
007eabc0  d1 8e ec eb                                      bl #0x30e70c
007eabc4  00 00 50 e3                                      cmp r0, #0
007eabc8  00 60 a0 13                                      movne r6, #0
007eabcc  06 10 a0 e1                                      mov r1, r6
007eabd0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007eabd4  64 90 ec eb                                      bl #0x30ed6c
007eabd8  00 60 a0 e1                                      mov r6, r0
007eabdc  09 10 a0 e1                                      mov r1, sb
007eabe0  09 00 a0 e1                                      mov r0, sb
007eabe4  48 60 87 e5                                      str r6, [r7, #0x48]
007eabe8  5f 90 ec eb                                      bl #0x30ed6c
007eabec  0b 10 a0 e1                                      mov r1, fp
007eabf0  00 90 a0 e1                                      mov sb, r0
007eabf4  0b 00 a0 e1                                      mov r0, fp
007eabf8  5b 90 ec eb                                      bl #0x30ed6c
007eabfc  00 10 a0 e1                                      mov r1, r0
007eac00  09 00 a0 e1                                      mov r0, sb
007eac04  e6 8f ec eb                                      bl #0x30eba4
007eac08  47 14 a0 e3                                      mov r1, #0x47000000
007eac0c  71 19 81 e2                                      add r1, r1, #0x1c4000
007eac10  b8 8d ec eb                                      bl #0x30e2f8
007eac14  00 00 50 e3                                      cmp r0, #0
007eac18  06 01 00 1a                                      bne #0x7eb038
007eac1c  06 10 a0 e1                                      mov r1, r6
007eac20  06 00 a0 e1                                      mov r0, r6
007eac24  50 90 ec eb                                      bl #0x30ed6c
007eac28  00 14 02 e3                                      movw r1, #0x2400
007eac2c  74 17 44 e3                                      movt r1, #0x4774
007eac30  b0 8d ec eb                                      bl #0x30e2f8
007eac34  00 00 50 e3                                      cmp r0, #0
007eac38  75 ff ff 1a                                      bne #0x7eaa14
007eac3c  14 60 94 e5                                      ldr r6, [r4, #0x14]
007eac40  01 80 88 e2                                      add r8, r8, #1
007eac44  08 00 56 e1                                      cmp r6, r8
007eac48  80 ff ff ca                                      bgt #0x7eaa50
007eac4c  00 c0 94 e5                                      ldr ip, [r4]
007eac50  20 70 8d e2                                      add r7, sp, #0x20
007eac54  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007eac58  0c 20 94 e5                                      ldr r2, [r4, #0xc]
007eac5c  05 10 a0 e1                                      mov r1, r5
007eac60  07 00 a0 e1                                      mov r0, r7
007eac64  00 c0 8d e5                                      str ip, [sp]
007eac68  fa 30 00 eb                                      bl #0x7f7058
007eac6c  07 00 a0 e1                                      mov r0, r7
007eac70  05 10 a0 e1                                      mov r1, r5
007eac74  65 2d 00 eb                                      bl #0x7f6210
007eac78  18 30 94 e5                                      ldr r3, [r4, #0x18]
007eac7c  00 00 53 e3                                      cmp r3, #0
007eac80  0b 00 00 da                                      ble #0x7eacb4
007eac84  00 60 a0 e3                                      mov r6, #0
007eac88  10 30 94 e5                                      ldr r3, [r4, #0x10]
007eac8c  05 10 a0 e1                                      mov r1, r5
007eac90  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
007eac94  01 60 86 e2                                      add r6, r6, #1
007eac98  03 00 a0 e1                                      mov r0, r3
007eac9c  00 30 93 e5                                      ldr r3, [r3]
007eaca0  0f e0 a0 e1                                      mov lr, pc
007eaca4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
007eaca8  18 30 94 e5                                      ldr r3, [r4, #0x18]
007eacac  06 00 53 e1                                      cmp r3, r6
007eacb0  f4 ff ff ca                                      bgt #0x7eac88
007eacb4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
007eacb8  00 00 53 e3                                      cmp r3, #0
007eacbc  15 00 00 da                                      ble #0x7ead18
007eacc0  00 80 a0 e3                                      mov r8, #0
007eacc4  07 00 a0 e1                                      mov r0, r7
007eacc8  f6 2d 00 eb                                      bl #0x7f64a8
007eaccc  18 30 94 e5                                      ldr r3, [r4, #0x18]
007eacd0  00 00 53 e3                                      cmp r3, #0
007eacd4  0b 00 00 da                                      ble #0x7ead08
007eacd8  00 60 a0 e3                                      mov r6, #0
007eacdc  10 30 94 e5                                      ldr r3, [r4, #0x10]
007eace0  05 10 a0 e1                                      mov r1, r5
007eace4  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
007eace8  01 60 86 e2                                      add r6, r6, #1
007eacec  03 00 a0 e1                                      mov r0, r3
007eacf0  00 30 93 e5                                      ldr r3, [r3]
007eacf4  0f e0 a0 e1                                      mov lr, pc
007eacf8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007eacfc  18 30 94 e5                                      ldr r3, [r4, #0x18]
007ead00  06 00 53 e1                                      cmp r3, r6
007ead04  f4 ff ff ca                                      bgt #0x7eacdc
007ead08  0c 30 95 e5                                      ldr r3, [r5, #0xc]
007ead0c  01 80 88 e2                                      add r8, r8, #1
007ead10  08 00 53 e1                                      cmp r3, r8
007ead14  ea ff ff ca                                      bgt #0x7eacc4
007ead18  07 00 a0 e1                                      mov r0, r7
007ead1c  7f 2f 00 eb                                      bl #0x7f6b20
007ead20  14 60 94 e5                                      ldr r6, [r4, #0x14]
007ead24  00 00 56 e3                                      cmp r6, #0
007ead28  28 00 00 da                                      ble #0x7eadd0
007ead2c  00 a0 a0 e3                                      mov sl, #0
007ead30  08 30 94 e5                                      ldr r3, [r4, #8]
007ead34  0a 81 93 e7                                      ldr r8, [r3, sl, lsl #2]
007ead38  01 a0 8a e2                                      add sl, sl, #1
007ead3c  f2 30 d8 e1                                      ldrsh r3, [r8, #2]
007ead40  00 00 53 e3                                      cmp r3, #0
007ead44  1f 00 00 0a                                      beq #0x7eadc8
007ead48  2c 20 98 e5                                      ldr r2, [r8, #0x2c]
007ead4c  30 30 98 e5                                      ldr r3, [r8, #0x30]
007ead50  38 60 98 e5                                      ldr r6, [r8, #0x38]
007ead54  24 20 88 e5                                      str r2, [r8, #0x24]
007ead58  28 30 88 e5                                      str r3, [r8, #0x28]
007ead5c  34 60 88 e5                                      str r6, [r8, #0x34]
007ead60  00 90 95 e5                                      ldr sb, [r5]
007ead64  44 10 98 e5                                      ldr r1, [r8, #0x44]
007ead68  09 00 a0 e1                                      mov r0, sb
007ead6c  fe 8f ec eb                                      bl #0x30ed6c
007ead70  40 10 98 e5                                      ldr r1, [r8, #0x40]
007ead74  00 b0 a0 e1                                      mov fp, r0
007ead78  09 00 a0 e1                                      mov r0, sb
007ead7c  fa 8f ec eb                                      bl #0x30ed6c
007ead80  00 10 a0 e1                                      mov r1, r0
007ead84  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
007ead88  85 8f ec eb                                      bl #0x30eba4
007ead8c  0b 10 a0 e1                                      mov r1, fp
007ead90  2c 00 88 e5                                      str r0, [r8, #0x2c]
007ead94  30 00 98 e5                                      ldr r0, [r8, #0x30]
007ead98  81 8f ec eb                                      bl #0x30eba4
007ead9c  30 00 88 e5                                      str r0, [r8, #0x30]
007eada0  00 00 95 e5                                      ldr r0, [r5]
007eada4  48 10 98 e5                                      ldr r1, [r8, #0x48]
007eada8  ef 8f ec eb                                      bl #0x30ed6c
007eadac  00 10 a0 e1                                      mov r1, r0
007eadb0  06 00 a0 e1                                      mov r0, r6
007eadb4  7a 8f ec eb                                      bl #0x30eba4
007eadb8  38 00 88 e5                                      str r0, [r8, #0x38]
007eadbc  08 00 a0 e1                                      mov r0, r8
007eadc0  15 f2 ff eb                                      bl #0x7e761c
007eadc4  14 60 94 e5                                      ldr r6, [r4, #0x14]
007eadc8  0a 00 56 e1                                      cmp r6, sl
007eadcc  d7 ff ff ca                                      bgt #0x7ead30
007eadd0  18 30 9d e5                                      ldr r3, [sp, #0x18]
007eadd4  00 00 53 e3                                      cmp r3, #0
007eadd8  34 00 00 0a                                      beq #0x7eaeb0
007eaddc  18 30 94 e5                                      ldr r3, [r4, #0x18]
007eade0  00 00 53 e3                                      cmp r3, #0
007eade4  0a 00 00 da                                      ble #0x7eae14
007eade8  00 60 a0 e3                                      mov r6, #0
007eadec  10 30 94 e5                                      ldr r3, [r4, #0x10]
007eadf0  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
007eadf4  01 60 86 e2                                      add r6, r6, #1
007eadf8  03 00 a0 e1                                      mov r0, r3
007eadfc  00 30 93 e5                                      ldr r3, [r3]
007eae00  0f e0 a0 e1                                      mov lr, pc
007eae04  20 f0 93 e5                                      ldr pc, [r3, #0x20]
007eae08  18 30 94 e5                                      ldr r3, [r4, #0x18]
007eae0c  06 00 53 e1                                      cmp r3, r6
007eae10  f5 ff ff ca                                      bgt #0x7eadec
007eae14  00 30 a0 e3                                      mov r3, #0
007eae18  2c 30 84 e5                                      str r3, [r4, #0x2c]
007eae1c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
007eae20  00 00 53 e3                                      cmp r3, #0
007eae24  21 00 00 da                                      ble #0x7eaeb0
007eae28  cd 1c 0c e3                                      movw r1, #0xcccd
007eae2c  07 00 a0 e1                                      mov r0, r7
007eae30  4c 1e 43 e3                                      movt r1, #0x3e4c
007eae34  58 2f 00 eb                                      bl #0x7f6b9c
007eae38  18 30 94 e5                                      ldr r3, [r4, #0x18]
007eae3c  00 a0 a0 e1                                      mov sl, r0
007eae40  00 00 53 e3                                      cmp r3, #0
007eae44  01 80 a0 d3                                      movle r8, #1
007eae48  0e 00 00 da                                      ble #0x7eae88
007eae4c  00 60 a0 e3                                      mov r6, #0
007eae50  01 80 a0 e3                                      mov r8, #1
007eae54  10 30 94 e5                                      ldr r3, [r4, #0x10]
007eae58  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
007eae5c  01 60 86 e2                                      add r6, r6, #1
007eae60  03 00 a0 e1                                      mov r0, r3
007eae64  00 30 93 e5                                      ldr r3, [r3]
007eae68  0f e0 a0 e1                                      mov lr, pc
007eae6c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
007eae70  18 30 94 e5                                      ldr r3, [r4, #0x18]
007eae74  00 00 58 e3                                      cmp r8, #0
007eae78  00 80 a0 11                                      movne r8, r0
007eae7c  00 80 a0 03                                      moveq r8, #0
007eae80  06 00 53 e1                                      cmp r3, r6
007eae84  f2 ff ff ca                                      bgt #0x7eae54
007eae88  00 00 5a e3                                      cmp sl, #0
007eae8c  01 00 00 0a                                      beq #0x7eae98
007eae90  00 00 58 e3                                      cmp r8, #0
007eae94  05 00 00 1a                                      bne #0x7eaeb0
007eae98  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
007eae9c  01 30 83 e2                                      add r3, r3, #1
007eaea0  2c 30 84 e5                                      str r3, [r4, #0x2c]
007eaea4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
007eaea8  03 00 52 e1                                      cmp r2, r3
007eaeac  dd ff ff ca                                      bgt #0x7eae28
007eaeb0  04 00 a0 e1                                      mov r0, r4
007eaeb4  38 10 9d e5                                      ldr r1, [sp, #0x38]
007eaeb8  fa fd ff eb                                      bl #0x7ea6a8
007eaebc  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007eaec0  00 00 50 e3                                      cmp r0, #0
007eaec4  57 00 00 0a                                      beq #0x7eb028
007eaec8  14 60 94 e5                                      ldr r6, [r4, #0x14]
007eaecc  00 00 56 e3                                      cmp r6, #0
007eaed0  54 00 00 da                                      ble #0x7eb028
007eaed4  02 b1 e0 e3                                      mvn fp, #0x80000000
007eaed8  02 b5 4b e2                                      sub fp, fp, #0x800000
007eaedc  00 90 a0 e3                                      mov sb, #0
007eaee0  00 80 a0 e3                                      mov r8, #0
007eaee4  05 00 00 ea                                      b #0x7eaf00
007eaee8  8c 90 8a e5                                      str sb, [sl, #0x8c]
007eaeec  14 60 94 e5                                      ldr r6, [r4, #0x14]
007eaef0  09 b0 a0 e1                                      mov fp, sb
007eaef4  01 80 88 e2                                      add r8, r8, #1
007eaef8  08 00 56 e1                                      cmp r6, r8
007eaefc  2f 00 00 da                                      ble #0x7eafc0
007eaf00  08 30 94 e5                                      ldr r3, [r4, #8]
007eaf04  00 10 a0 e3                                      mov r1, #0
007eaf08  08 a1 93 e7                                      ldr sl, [r3, r8, lsl #2]
007eaf0c  78 00 9a e5                                      ldr r0, [sl, #0x78]
007eaf10  1d 8c ec eb                                      bl #0x30df8c
007eaf14  00 00 50 e3                                      cmp r0, #0
007eaf18  f5 ff ff 1a                                      bne #0x7eaef4
007eaf1c  b0 30 da e1                                      ldrh r3, [sl]
007eaf20  10 00 13 e3                                      tst r3, #0x10
007eaf24  8c 90 8a 05                                      streq sb, [sl, #0x8c]
007eaf28  ee ff ff 0a                                      beq #0x7eaee8
007eaf2c  48 00 9a e5                                      ldr r0, [sl, #0x48]
007eaf30  00 10 a0 e1                                      mov r1, r0
007eaf34  8c 8f ec eb                                      bl #0x30ed6c
007eaf38  2e 14 07 e3                                      movw r1, #0x742e
007eaf3c  01 19 43 e3                                      movt r1, #0x3901
007eaf40  ec 8c ec eb                                      bl #0x30e2f8
007eaf44  00 00 50 e3                                      cmp r0, #0
007eaf48  e6 ff ff 1a                                      bne #0x7eaee8
007eaf4c  40 00 9a e5                                      ldr r0, [sl, #0x40]
007eaf50  00 10 a0 e1                                      mov r1, r0
007eaf54  84 8f ec eb                                      bl #0x30ed6c
007eaf58  00 60 a0 e1                                      mov r6, r0
007eaf5c  44 00 9a e5                                      ldr r0, [sl, #0x44]
007eaf60  00 10 a0 e1                                      mov r1, r0
007eaf64  80 8f ec eb                                      bl #0x30ed6c
007eaf68  00 10 a0 e1                                      mov r1, r0
007eaf6c  06 00 a0 e1                                      mov r0, r6
007eaf70  0b 8f ec eb                                      bl #0x30eba4
007eaf74  17 17 0b e3                                      movw r1, #0xb717
007eaf78  d1 18 43 e3                                      movt r1, #0x38d1
007eaf7c  dd 8c ec eb                                      bl #0x30e2f8
007eaf80  00 00 50 e3                                      cmp r0, #0
007eaf84  d7 ff ff 1a                                      bne #0x7eaee8
007eaf88  00 10 95 e5                                      ldr r1, [r5]
007eaf8c  8c 00 9a e5                                      ldr r0, [sl, #0x8c]
007eaf90  03 8f ec eb                                      bl #0x30eba4
007eaf94  00 60 a0 e1                                      mov r6, r0
007eaf98  8c 00 8a e5                                      str r0, [sl, #0x8c]
007eaf9c  06 10 a0 e1                                      mov r1, r6
007eafa0  0b 00 a0 e1                                      mov r0, fp
007eafa4  d8 8d ec eb                                      bl #0x30e70c
007eafa8  00 00 50 e3                                      cmp r0, #0
007eafac  06 b0 a0 01                                      moveq fp, r6
007eafb0  14 60 94 e5                                      ldr r6, [r4, #0x14]
007eafb4  01 80 88 e2                                      add r8, r8, #1
007eafb8  08 00 56 e1                                      cmp r6, r8
007eafbc  cf ff ff ca                                      bgt #0x7eaf00
007eafc0  0b 00 a0 e1                                      mov r0, fp
007eafc4  3f 14 a0 e3                                      mov r1, #0x3f000000
007eafc8  39 8d ec eb                                      bl #0x30e4b4
007eafcc  00 00 50 e3                                      cmp r0, #0
007eafd0  14 00 00 0a                                      beq #0x7eb028
007eafd4  00 00 56 e3                                      cmp r6, #0
007eafd8  12 00 00 da                                      ble #0x7eb028
007eafdc  90 30 9f e5                                      ldr r3, [pc, #0x90]
007eafe0  14 00 9d e5                                      ldr r0, [sp, #0x14]
007eafe4  00 c0 a0 e3                                      mov ip, #0
007eafe8  00 20 a0 e3                                      mov r2, #0
007eafec  03 10 90 e7                                      ldr r1, [r0, r3]
007eaff0  08 30 94 e5                                      ldr r3, [r4, #8]
007eaff4  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
007eaff8  01 20 82 e2                                      add r2, r2, #1
007eaffc  b0 00 d3 e1                                      ldrh r0, [r3]
007eb000  08 00 80 e3                                      orr r0, r0, #8
007eb004  b0 00 c3 e1                                      strh r0, [r3]
007eb008  00 00 91 e5                                      ldr r0, [r1]
007eb00c  40 00 83 e5                                      str r0, [r3, #0x40]
007eb010  04 00 91 e5                                      ldr r0, [r1, #4]
007eb014  48 c0 83 e5                                      str ip, [r3, #0x48]
007eb018  44 00 83 e5                                      str r0, [r3, #0x44]
007eb01c  14 30 94 e5                                      ldr r3, [r4, #0x14]
007eb020  02 00 53 e1                                      cmp r3, r2
007eb024  f1 ff ff ca                                      bgt #0x7eaff0
007eb028  07 00 a0 e1                                      mov r0, r7
007eb02c  fb 2f 00 eb                                      bl #0x7f7020
007eb030  44 d0 8d e2                                      add sp, sp, #0x44
007eb034  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007eb038  40 00 87 e2                                      add r0, r7, #0x40
007eb03c  38 e9 ff eb                                      bl #0x7e5524
007eb040  43 14 a0 e3                                      mov r1, #0x43000000
007eb044  40 00 97 e5                                      ldr r0, [r7, #0x40]
007eb048  12 17 81 e2                                      add r1, r1, #0x480000
007eb04c  46 8f ec eb                                      bl #0x30ed6c
007eb050  43 14 a0 e3                                      mov r1, #0x43000000
007eb054  40 00 87 e5                                      str r0, [r7, #0x40]
007eb058  12 17 81 e2                                      add r1, r1, #0x480000
007eb05c  44 00 97 e5                                      ldr r0, [r7, #0x44]
007eb060  41 8f ec eb                                      bl #0x30ed6c
007eb064  48 60 97 e5                                      ldr r6, [r7, #0x48]
007eb068  44 00 87 e5                                      str r0, [r7, #0x44]
007eb06c  ea fe ff ea                                      b #0x7eac1c
; mapping-symbol data/literal pool
007eb070  a4 a0 1a 00 40 09 00 00                          .byte 0xa4, 0xa0, 0x1a, 0x00, 0x40, 0x09, 0x00, 0x00

; FUNCTION 0x007eb078, declared_size=52, range_size=52, mode=arm
; class-group: b2Island
; alias: _ZN8b2IslandD1Ev
; demangled: b2Island::~b2Island()
; decoder-mode: arm
007eb078  10 40 2d e9                                      push {r4, lr}
007eb07c  00 40 a0 e1                                      mov r4, r0
007eb080  10 10 94 e5                                      ldr r1, [r4, #0x10]
007eb084  00 00 90 e5                                      ldr r0, [r0]
007eb088  46 21 00 eb                                      bl #0x7f35a8
007eb08c  00 00 94 e5                                      ldr r0, [r4]
007eb090  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007eb094  43 21 00 eb                                      bl #0x7f35a8
007eb098  00 00 94 e5                                      ldr r0, [r4]
007eb09c  08 10 94 e5                                      ldr r1, [r4, #8]
007eb0a0  40 21 00 eb                                      bl #0x7f35a8
007eb0a4  04 00 a0 e1                                      mov r0, r4
007eb0a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007eb0ac, declared_size=52, range_size=52, mode=arm
; class-group: b2Island
; alias: _ZN8b2IslandD2Ev
; demangled: b2Island::~b2Island()
; decoder-mode: arm
007eb0ac  10 40 2d e9                                      push {r4, lr}
007eb0b0  00 40 a0 e1                                      mov r4, r0
007eb0b4  10 10 94 e5                                      ldr r1, [r4, #0x10]
007eb0b8  00 00 90 e5                                      ldr r0, [r0]
007eb0bc  39 21 00 eb                                      bl #0x7f35a8
007eb0c0  00 00 94 e5                                      ldr r0, [r4]
007eb0c4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007eb0c8  36 21 00 eb                                      bl #0x7f35a8
007eb0cc  00 00 94 e5                                      ldr r0, [r4]
007eb0d0  08 10 94 e5                                      ldr r1, [r4, #8]
007eb0d4  33 21 00 eb                                      bl #0x7f35a8
007eb0d8  04 00 a0 e1                                      mov r0, r4
007eb0dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007eb0e0, declared_size=124, range_size=124, mode=arm
; class-group: b2Island
; alias: _ZN8b2IslandC1EiiiP16b2StackAllocatorP17b2ContactListener
; demangled: b2Island::b2Island(int, int, int, b2StackAllocator*, b2ContactListener*)
; decoder-mode: arm
007eb0e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007eb0e4  18 c0 9d e5                                      ldr ip, [sp, #0x18]
007eb0e8  02 50 a0 e1                                      mov r5, r2
007eb0ec  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007eb0f0  00 60 a0 e3                                      mov r6, #0
007eb0f4  03 70 a0 e1                                      mov r7, r3
007eb0f8  01 30 a0 e1                                      mov r3, r1
007eb0fc  00 40 a0 e1                                      mov r4, r0
007eb100  04 20 80 e5                                      str r2, [r0, #4]
007eb104  20 30 80 e5                                      str r3, [r0, #0x20]
007eb108  00 c0 80 e5                                      str ip, [r0]
007eb10c  24 50 80 e5                                      str r5, [r0, #0x24]
007eb110  28 70 80 e5                                      str r7, [r0, #0x28]
007eb114  14 60 80 e5                                      str r6, [r0, #0x14]
007eb118  1c 60 80 e5                                      str r6, [r0, #0x1c]
007eb11c  18 60 80 e5                                      str r6, [r0, #0x18]
007eb120  01 11 a0 e1                                      lsl r1, r1, #2
007eb124  0c 00 a0 e1                                      mov r0, ip
007eb128  45 21 00 eb                                      bl #0x7f3644
007eb12c  05 11 a0 e1                                      lsl r1, r5, #2
007eb130  08 00 84 e5                                      str r0, [r4, #8]
007eb134  00 00 94 e5                                      ldr r0, [r4]
007eb138  41 21 00 eb                                      bl #0x7f3644
007eb13c  07 11 a0 e1                                      lsl r1, r7, #2
007eb140  0c 00 84 e5                                      str r0, [r4, #0xc]
007eb144  00 00 94 e5                                      ldr r0, [r4]
007eb148  3d 21 00 eb                                      bl #0x7f3644
007eb14c  2c 60 84 e5                                      str r6, [r4, #0x2c]
007eb150  10 00 84 e5                                      str r0, [r4, #0x10]
007eb154  04 00 a0 e1                                      mov r0, r4
007eb158  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007eb15c, declared_size=124, range_size=124, mode=arm
; class-group: b2Island
; alias: _ZN8b2IslandC2EiiiP16b2StackAllocatorP17b2ContactListener
; demangled: b2Island::b2Island(int, int, int, b2StackAllocator*, b2ContactListener*)
; decoder-mode: arm
007eb15c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007eb160  18 c0 9d e5                                      ldr ip, [sp, #0x18]
007eb164  02 50 a0 e1                                      mov r5, r2
007eb168  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007eb16c  00 60 a0 e3                                      mov r6, #0
007eb170  03 70 a0 e1                                      mov r7, r3
007eb174  01 30 a0 e1                                      mov r3, r1
007eb178  00 40 a0 e1                                      mov r4, r0
007eb17c  04 20 80 e5                                      str r2, [r0, #4]
007eb180  20 30 80 e5                                      str r3, [r0, #0x20]
007eb184  00 c0 80 e5                                      str ip, [r0]
007eb188  24 50 80 e5                                      str r5, [r0, #0x24]
007eb18c  28 70 80 e5                                      str r7, [r0, #0x28]
007eb190  14 60 80 e5                                      str r6, [r0, #0x14]
007eb194  1c 60 80 e5                                      str r6, [r0, #0x1c]
007eb198  18 60 80 e5                                      str r6, [r0, #0x18]
007eb19c  01 11 a0 e1                                      lsl r1, r1, #2
007eb1a0  0c 00 a0 e1                                      mov r0, ip
007eb1a4  26 21 00 eb                                      bl #0x7f3644
007eb1a8  05 11 a0 e1                                      lsl r1, r5, #2
007eb1ac  08 00 84 e5                                      str r0, [r4, #8]
007eb1b0  00 00 94 e5                                      ldr r0, [r4]
007eb1b4  22 21 00 eb                                      bl #0x7f3644
007eb1b8  07 11 a0 e1                                      lsl r1, r7, #2
007eb1bc  0c 00 84 e5                                      str r0, [r4, #0xc]
007eb1c0  00 00 94 e5                                      ldr r0, [r4]
007eb1c4  1e 21 00 eb                                      bl #0x7f3644
007eb1c8  2c 60 84 e5                                      str r6, [r4, #0x2c]
007eb1cc  10 00 84 e5                                      str r0, [r4, #0x10]
007eb1d0  04 00 a0 e1                                      mov r0, r4
007eb1d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
