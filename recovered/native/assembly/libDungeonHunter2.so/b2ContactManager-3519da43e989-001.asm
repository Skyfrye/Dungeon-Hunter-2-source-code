; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007e9f90, declared_size=56, range_size=56, mode=arm
; class-group: b2ContactManager
; alias: _ZN16b2ContactManagerD1Ev
; demangled: b2ContactManager::~b2ContactManager()
; decoder-mode: arm
007e9f90  24 30 9f e5                                      ldr r3, [pc, #0x24]
007e9f94  24 10 9f e5                                      ldr r1, [pc, #0x24]
007e9f98  24 20 9f e5                                      ldr r2, [pc, #0x24]
007e9f9c  03 30 8f e0                                      add r3, pc, r3
007e9fa0  01 10 93 e7                                      ldr r1, [r3, r1]
007e9fa4  02 20 93 e7                                      ldr r2, [r3, r2]
007e9fa8  08 10 81 e2                                      add r1, r1, #8
007e9fac  08 20 82 e2                                      add r2, r2, #8
007e9fb0  08 20 80 e5                                      str r2, [r0, #8]
007e9fb4  00 10 80 e5                                      str r1, [r0]
007e9fb8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007e9fbc  f4 aa 1a 00 88 20 00 00 34 23 00 00              .byte 0xf4, 0xaa, 0x1a, 0x00, 0x88, 0x20, 0x00, 0x00, 0x34, 0x23, 0x00, 0x00

; FUNCTION 0x007e9fc8, declared_size=72, range_size=72, mode=arm
; class-group: b2ContactManager
; alias: _ZN16b2ContactManagerD0Ev
; demangled: b2ContactManager::~b2ContactManager()
; decoder-mode: arm
007e9fc8  34 30 9f e5                                      ldr r3, [pc, #0x34]
007e9fcc  34 10 9f e5                                      ldr r1, [pc, #0x34]
007e9fd0  34 20 9f e5                                      ldr r2, [pc, #0x34]
007e9fd4  03 30 8f e0                                      add r3, pc, r3
007e9fd8  01 10 93 e7                                      ldr r1, [r3, r1]
007e9fdc  02 20 93 e7                                      ldr r2, [r3, r2]
007e9fe0  10 40 2d e9                                      push {r4, lr}
007e9fe4  08 10 81 e2                                      add r1, r1, #8
007e9fe8  08 20 82 e2                                      add r2, r2, #8
007e9fec  00 40 a0 e1                                      mov r4, r0
007e9ff0  00 10 80 e5                                      str r1, [r0]
007e9ff4  08 20 80 e5                                      str r2, [r0, #8]
007e9ff8  ac 90 ec eb                                      bl #0x30e2b0
007e9ffc  04 00 a0 e1                                      mov r0, r4
007ea000  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007ea004  bc aa 1a 00 88 20 00 00 34 23 00 00              .byte 0xbc, 0xaa, 0x1a, 0x00, 0x88, 0x20, 0x00, 0x00, 0x34, 0x23, 0x00, 0x00

; FUNCTION 0x007ea010, declared_size=116, range_size=116, mode=arm
; class-group: b2ContactManager
; alias: _ZN16b2ContactManager7CollideEv
; demangled: b2ContactManager::Collide()
; decoder-mode: arm
007ea010  70 40 2d e9                                      push {r4, r5, r6, lr}
007ea014  04 20 90 e5                                      ldr r2, [r0, #4]
007ea018  19 3a a0 e3                                      mov r3, #0x19000
007ea01c  8e 3f 83 e2                                      add r3, r3, #0x238
007ea020  03 40 92 e7                                      ldr r4, [r2, r3]
007ea024  00 60 a0 e1                                      mov r6, r0
007ea028  00 00 54 e3                                      cmp r4, #0
007ea02c  13 00 00 0a                                      beq #0x7ea080
007ea030  19 5a a0 e3                                      mov r5, #0x19000
007ea034  99 5f 85 e2                                      add r5, r5, #0x264
007ea038  34 30 94 e5                                      ldr r3, [r4, #0x34]
007ea03c  38 20 94 e5                                      ldr r2, [r4, #0x38]
007ea040  04 00 a0 e1                                      mov r0, r4
007ea044  0c 30 93 e5                                      ldr r3, [r3, #0xc]
007ea048  0c 20 92 e5                                      ldr r2, [r2, #0xc]
007ea04c  b0 30 d3 e1                                      ldrh r3, [r3]
007ea050  08 00 13 e3                                      tst r3, #8
007ea054  02 00 00 0a                                      beq #0x7ea064
007ea058  b0 30 d2 e1                                      ldrh r3, [r2]
007ea05c  08 00 13 e3                                      tst r3, #8
007ea060  02 00 00 1a                                      bne #0x7ea070
007ea064  04 30 96 e5                                      ldr r3, [r6, #4]
007ea068  05 10 93 e7                                      ldr r1, [r3, r5]
007ea06c  2c ff ff eb                                      bl #0x7e9d24
007ea070  10 40 94 e5                                      ldr r4, [r4, #0x10]
007ea074  00 00 54 e3                                      cmp r4, #0
007ea078  ee ff ff 1a                                      bne #0x7ea038
007ea07c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007ea080  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007ea084, declared_size=1156, range_size=1156, mode=arm
; class-group: b2ContactManager
; alias: _ZN16b2ContactManager7DestroyEP9b2Contact
; demangled: b2ContactManager::Destroy(b2Contact*)
; decoder-mode: arm
007ea084  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ea088  01 c0 a0 e1                                      mov ip, r1
007ea08c  08 10 91 e5                                      ldr r1, [r1, #8]
007ea090  5c d0 4d e2                                      sub sp, sp, #0x5c
007ea094  10 00 8d e5                                      str r0, [sp, #0x10]
007ea098  18 10 8d e5                                      str r1, [sp, #0x18]
007ea09c  34 20 9c e5                                      ldr r2, [ip, #0x34]
007ea0a0  00 00 51 e3                                      cmp r1, #0
007ea0a4  20 20 8d e5                                      str r2, [sp, #0x20]
007ea0a8  38 30 9c e5                                      ldr r3, [ip, #0x38]
007ea0ac  1c 30 8d e5                                      str r3, [sp, #0x1c]
007ea0b0  d9 00 00 da                                      ble #0x7ea41c
007ea0b4  04 30 90 e5                                      ldr r3, [r0, #4]
007ea0b8  19 6a a0 e3                                      mov r6, #0x19000
007ea0bc  99 6f 86 e2                                      add r6, r6, #0x264
007ea0c0  06 30 93 e7                                      ldr r3, [r3, r6]
007ea0c4  00 00 53 e3                                      cmp r3, #0
007ea0c8  d3 00 00 0a                                      beq #0x7ea41c
007ea0cc  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007ea0d0  00 30 9c e5                                      ldr r3, [ip]
007ea0d4  0c 40 92 e5                                      ldr r4, [r2, #0xc]
007ea0d8  0c 50 91 e5                                      ldr r5, [r1, #0xc]
007ea0dc  0c 00 a0 e1                                      mov r0, ip
007ea0e0  08 c0 8d e5                                      str ip, [sp, #8]
007ea0e4  0f e0 a0 e1                                      mov lr, pc
007ea0e8  00 f0 93 e5                                      ldr pc, [r3]
007ea0ec  08 c0 9d e5                                      ldr ip, [sp, #8]
007ea0f0  00 70 a0 e1                                      mov r7, r0
007ea0f4  3c 20 9c e5                                      ldr r2, [ip, #0x3c]
007ea0f8  40 30 9c e5                                      ldr r3, [ip, #0x40]
007ea0fc  34 e0 9c e5                                      ldr lr, [ip, #0x34]
007ea100  38 10 9c e5                                      ldr r1, [ip, #0x38]
007ea104  4c 20 8d e5                                      str r2, [sp, #0x4c]
007ea108  50 30 8d e5                                      str r3, [sp, #0x50]
007ea10c  00 20 a0 e3                                      mov r2, #0
007ea110  28 30 8d e2                                      add r3, sp, #0x28
007ea114  28 e0 8d e5                                      str lr, [sp, #0x28]
007ea118  2c 10 8d e5                                      str r1, [sp, #0x2c]
007ea11c  0c 20 8d e5                                      str r2, [sp, #0xc]
007ea120  14 30 8d e5                                      str r3, [sp, #0x14]
007ea124  24 c0 8d e5                                      str ip, [sp, #0x24]
007ea128  40 30 97 e5                                      ldr r3, [r7, #0x40]
007ea12c  40 30 8d e5                                      str r3, [sp, #0x40]
007ea130  44 30 97 e5                                      ldr r3, [r7, #0x44]
007ea134  44 30 8d e5                                      str r3, [sp, #0x44]
007ea138  48 30 97 e5                                      ldr r3, [r7, #0x48]
007ea13c  00 00 53 e3                                      cmp r3, #0
007ea140  ad 00 00 da                                      ble #0x7ea3fc
007ea144  07 60 a0 e1                                      mov r6, r7
007ea148  00 80 a0 e3                                      mov r8, #0
007ea14c  00 90 96 e5                                      ldr sb, [r6]
007ea150  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ea154  04 a0 96 e5                                      ldr sl, [r6, #4]
007ea158  09 00 a0 e1                                      mov r0, sb
007ea15c  02 93 ec eb                                      bl #0x30ed6c
007ea160  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ea164  00 b0 a0 e1                                      mov fp, r0
007ea168  0a 00 a0 e1                                      mov r0, sl
007ea16c  fe 92 ec eb                                      bl #0x30ed6c
007ea170  00 10 a0 e1                                      mov r1, r0
007ea174  0b 00 a0 e1                                      mov r0, fp
007ea178  89 92 ec eb                                      bl #0x30eba4
007ea17c  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ea180  00 b0 a0 e1                                      mov fp, r0
007ea184  09 00 a0 e1                                      mov r0, sb
007ea188  f7 92 ec eb                                      bl #0x30ed6c
007ea18c  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ea190  00 90 a0 e1                                      mov sb, r0
007ea194  0a 00 a0 e1                                      mov r0, sl
007ea198  f3 92 ec eb                                      bl #0x30ed6c
007ea19c  00 10 a0 e1                                      mov r1, r0
007ea1a0  09 00 a0 e1                                      mov r0, sb
007ea1a4  7e 92 ec eb                                      bl #0x30eba4
007ea1a8  04 10 94 e5                                      ldr r1, [r4, #4]
007ea1ac  00 a0 a0 e1                                      mov sl, r0
007ea1b0  0b 00 a0 e1                                      mov r0, fp
007ea1b4  7a 92 ec eb                                      bl #0x30eba4
007ea1b8  08 10 94 e5                                      ldr r1, [r4, #8]
007ea1bc  00 90 a0 e1                                      mov sb, r0
007ea1c0  0a 00 a0 e1                                      mov r0, sl
007ea1c4  76 92 ec eb                                      bl #0x30eba4
007ea1c8  30 90 8d e5                                      str sb, [sp, #0x30]
007ea1cc  34 00 8d e5                                      str r0, [sp, #0x34]
007ea1d0  00 90 96 e5                                      ldr sb, [r6]
007ea1d4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ea1d8  04 a0 96 e5                                      ldr sl, [r6, #4]
007ea1dc  09 00 a0 e1                                      mov r0, sb
007ea1e0  e1 92 ec eb                                      bl #0x30ed6c
007ea1e4  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ea1e8  00 b0 a0 e1                                      mov fp, r0
007ea1ec  0a 00 a0 e1                                      mov r0, sl
007ea1f0  dd 92 ec eb                                      bl #0x30ed6c
007ea1f4  00 10 a0 e1                                      mov r1, r0
007ea1f8  0b 00 a0 e1                                      mov r0, fp
007ea1fc  68 92 ec eb                                      bl #0x30eba4
007ea200  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ea204  00 b0 a0 e1                                      mov fp, r0
007ea208  09 00 a0 e1                                      mov r0, sb
007ea20c  d6 92 ec eb                                      bl #0x30ed6c
007ea210  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ea214  00 90 a0 e1                                      mov sb, r0
007ea218  0a 00 a0 e1                                      mov r0, sl
007ea21c  d2 92 ec eb                                      bl #0x30ed6c
007ea220  00 10 a0 e1                                      mov r1, r0
007ea224  09 00 a0 e1                                      mov r0, sb
007ea228  5d 92 ec eb                                      bl #0x30eba4
007ea22c  04 10 94 e5                                      ldr r1, [r4, #4]
007ea230  00 a0 a0 e1                                      mov sl, r0
007ea234  0b 00 a0 e1                                      mov r0, fp
007ea238  59 92 ec eb                                      bl #0x30eba4
007ea23c  08 10 94 e5                                      ldr r1, [r4, #8]
007ea240  00 b0 a0 e1                                      mov fp, r0
007ea244  0a 00 a0 e1                                      mov r0, sl
007ea248  55 92 ec eb                                      bl #0x30eba4
007ea24c  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
007ea250  00 90 a0 e1                                      mov sb, r0
007ea254  0b 00 a0 e1                                      mov r0, fp
007ea258  53 90 ec eb                                      bl #0x30e3ac
007ea25c  48 a0 94 e5                                      ldr sl, [r4, #0x48]
007ea260  00 b0 a0 e1                                      mov fp, r0
007ea264  30 10 94 e5                                      ldr r1, [r4, #0x30]
007ea268  09 00 a0 e1                                      mov r0, sb
007ea26c  4e 90 ec eb                                      bl #0x30e3ac
007ea270  02 11 8a e2                                      add r1, sl, #0x80000000
007ea274  bc 92 ec eb                                      bl #0x30ed6c
007ea278  0b 10 a0 e1                                      mov r1, fp
007ea27c  00 90 a0 e1                                      mov sb, r0
007ea280  0a 00 a0 e1                                      mov r0, sl
007ea284  b8 92 ec eb                                      bl #0x30ed6c
007ea288  40 10 94 e5                                      ldr r1, [r4, #0x40]
007ea28c  00 a0 a0 e1                                      mov sl, r0
007ea290  09 00 a0 e1                                      mov r0, sb
007ea294  42 92 ec eb                                      bl #0x30eba4
007ea298  44 10 94 e5                                      ldr r1, [r4, #0x44]
007ea29c  00 20 a0 e1                                      mov r2, r0
007ea2a0  0a 00 a0 e1                                      mov r0, sl
007ea2a4  04 20 8d e5                                      str r2, [sp, #4]
007ea2a8  3d 92 ec eb                                      bl #0x30eba4
007ea2ac  08 90 96 e5                                      ldr sb, [r6, #8]
007ea2b0  00 30 a0 e1                                      mov r3, r0
007ea2b4  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007ea2b8  09 00 a0 e1                                      mov r0, sb
007ea2bc  0c a0 96 e5                                      ldr sl, [r6, #0xc]
007ea2c0  08 30 8d e5                                      str r3, [sp, #8]
007ea2c4  a8 92 ec eb                                      bl #0x30ed6c
007ea2c8  14 10 95 e5                                      ldr r1, [r5, #0x14]
007ea2cc  00 b0 a0 e1                                      mov fp, r0
007ea2d0  0a 00 a0 e1                                      mov r0, sl
007ea2d4  a4 92 ec eb                                      bl #0x30ed6c
007ea2d8  00 10 a0 e1                                      mov r1, r0
007ea2dc  0b 00 a0 e1                                      mov r0, fp
007ea2e0  2f 92 ec eb                                      bl #0x30eba4
007ea2e4  10 10 95 e5                                      ldr r1, [r5, #0x10]
007ea2e8  00 b0 a0 e1                                      mov fp, r0
007ea2ec  09 00 a0 e1                                      mov r0, sb
007ea2f0  9d 92 ec eb                                      bl #0x30ed6c
007ea2f4  18 10 95 e5                                      ldr r1, [r5, #0x18]
007ea2f8  00 90 a0 e1                                      mov sb, r0
007ea2fc  0a 00 a0 e1                                      mov r0, sl
007ea300  99 92 ec eb                                      bl #0x30ed6c
007ea304  00 10 a0 e1                                      mov r1, r0
007ea308  09 00 a0 e1                                      mov r0, sb
007ea30c  24 92 ec eb                                      bl #0x30eba4
007ea310  04 10 95 e5                                      ldr r1, [r5, #4]
007ea314  00 a0 a0 e1                                      mov sl, r0
007ea318  0b 00 a0 e1                                      mov r0, fp
007ea31c  20 92 ec eb                                      bl #0x30eba4
007ea320  08 10 95 e5                                      ldr r1, [r5, #8]
007ea324  00 b0 a0 e1                                      mov fp, r0
007ea328  0a 00 a0 e1                                      mov r0, sl
007ea32c  1c 92 ec eb                                      bl #0x30eba4
007ea330  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007ea334  00 90 a0 e1                                      mov sb, r0
007ea338  0b 00 a0 e1                                      mov r0, fp
007ea33c  1a 90 ec eb                                      bl #0x30e3ac
007ea340  48 a0 95 e5                                      ldr sl, [r5, #0x48]
007ea344  30 10 95 e5                                      ldr r1, [r5, #0x30]
007ea348  00 b0 a0 e1                                      mov fp, r0
007ea34c  09 00 a0 e1                                      mov r0, sb
007ea350  15 90 ec eb                                      bl #0x30e3ac
007ea354  02 11 8a e2                                      add r1, sl, #0x80000000
007ea358  83 92 ec eb                                      bl #0x30ed6c
007ea35c  0b 10 a0 e1                                      mov r1, fp
007ea360  00 90 a0 e1                                      mov sb, r0
007ea364  0a 00 a0 e1                                      mov r0, sl
007ea368  7f 92 ec eb                                      bl #0x30ed6c
007ea36c  40 10 95 e5                                      ldr r1, [r5, #0x40]
007ea370  00 a0 a0 e1                                      mov sl, r0
007ea374  09 00 a0 e1                                      mov r0, sb
007ea378  09 92 ec eb                                      bl #0x30eba4
007ea37c  44 10 95 e5                                      ldr r1, [r5, #0x44]
007ea380  00 90 a0 e1                                      mov sb, r0
007ea384  0a 00 a0 e1                                      mov r0, sl
007ea388  05 92 ec eb                                      bl #0x30eba4
007ea38c  08 30 9d e5                                      ldr r3, [sp, #8]
007ea390  01 80 88 e2                                      add r8, r8, #1
007ea394  03 10 a0 e1                                      mov r1, r3
007ea398  03 90 ec eb                                      bl #0x30e3ac
007ea39c  04 20 9d e5                                      ldr r2, [sp, #4]
007ea3a0  3c 00 8d e5                                      str r0, [sp, #0x3c]
007ea3a4  09 00 a0 e1                                      mov r0, sb
007ea3a8  02 10 a0 e1                                      mov r1, r2
007ea3ac  fe 8f ec eb                                      bl #0x30e3ac
007ea3b0  38 00 8d e5                                      str r0, [sp, #0x38]
007ea3b4  10 20 96 e5                                      ldr r2, [r6, #0x10]
007ea3b8  10 00 9d e5                                      ldr r0, [sp, #0x10]
007ea3bc  14 10 9d e5                                      ldr r1, [sp, #0x14]
007ea3c0  04 30 90 e5                                      ldr r3, [r0, #4]
007ea3c4  48 20 8d e5                                      str r2, [sp, #0x48]
007ea3c8  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
007ea3cc  20 60 86 e2                                      add r6, r6, #0x20
007ea3d0  54 20 8d e5                                      str r2, [sp, #0x54]
007ea3d4  19 2a a0 e3                                      mov r2, #0x19000
007ea3d8  99 2f 82 e2                                      add r2, r2, #0x264
007ea3dc  02 30 93 e7                                      ldr r3, [r3, r2]
007ea3e0  03 00 a0 e1                                      mov r0, r3
007ea3e4  00 30 93 e5                                      ldr r3, [r3]
007ea3e8  0f e0 a0 e1                                      mov lr, pc
007ea3ec  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007ea3f0  48 30 97 e5                                      ldr r3, [r7, #0x48]
007ea3f4  08 00 53 e1                                      cmp r3, r8
007ea3f8  53 ff ff ca                                      bgt #0x7ea14c
007ea3fc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007ea400  18 00 9d e5                                      ldr r0, [sp, #0x18]
007ea404  4c 70 87 e2                                      add r7, r7, #0x4c
007ea408  01 30 83 e2                                      add r3, r3, #1
007ea40c  00 00 53 e1                                      cmp r3, r0
007ea410  0c 30 8d e5                                      str r3, [sp, #0xc]
007ea414  43 ff ff 1a                                      bne #0x7ea128
007ea418  24 c0 9d e5                                      ldr ip, [sp, #0x24]
007ea41c  0c 30 9c e5                                      ldr r3, [ip, #0xc]
007ea420  00 00 53 e3                                      cmp r3, #0
007ea424  10 20 9c 15                                      ldrne r2, [ip, #0x10]
007ea428  10 20 83 15                                      strne r2, [r3, #0x10]
007ea42c  10 30 9c e5                                      ldr r3, [ip, #0x10]
007ea430  00 00 53 e3                                      cmp r3, #0
007ea434  0c 20 9c 15                                      ldrne r2, [ip, #0xc]
007ea438  0c 20 83 15                                      strne r2, [r3, #0xc]
007ea43c  10 10 9d e5                                      ldr r1, [sp, #0x10]
007ea440  19 3a a0 e3                                      mov r3, #0x19000
007ea444  8e 3f 83 e2                                      add r3, r3, #0x238
007ea448  04 20 91 e5                                      ldr r2, [r1, #4]
007ea44c  03 10 92 e7                                      ldr r1, [r2, r3]
007ea450  0c 00 51 e1                                      cmp r1, ip
007ea454  10 10 9c 05                                      ldreq r1, [ip, #0x10]
007ea458  03 10 82 07                                      streq r1, [r2, r3]
007ea45c  1c 30 9c e5                                      ldr r3, [ip, #0x1c]
007ea460  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007ea464  20 20 9d e5                                      ldr r2, [sp, #0x20]
007ea468  00 00 53 e3                                      cmp r3, #0
007ea46c  0c 10 92 e5                                      ldr r1, [r2, #0xc]
007ea470  0c 20 90 e5                                      ldr r2, [r0, #0xc]
007ea474  20 00 9c 15                                      ldrne r0, [ip, #0x20]
007ea478  0c 00 83 15                                      strne r0, [r3, #0xc]
007ea47c  20 30 9c e5                                      ldr r3, [ip, #0x20]
007ea480  00 00 53 e3                                      cmp r3, #0
007ea484  1c 00 9c 15                                      ldrne r0, [ip, #0x1c]
007ea488  08 00 83 15                                      strne r0, [r3, #8]
007ea48c  70 00 91 e5                                      ldr r0, [r1, #0x70]
007ea490  14 30 8c e2                                      add r3, ip, #0x14
007ea494  03 00 50 e1                                      cmp r0, r3
007ea498  20 30 9c 05                                      ldreq r3, [ip, #0x20]
007ea49c  0c 00 a0 e1                                      mov r0, ip
007ea4a0  70 30 81 05                                      streq r3, [r1, #0x70]
007ea4a4  2c 30 9c e5                                      ldr r3, [ip, #0x2c]
007ea4a8  00 00 53 e3                                      cmp r3, #0
007ea4ac  30 10 9c 15                                      ldrne r1, [ip, #0x30]
007ea4b0  0c 10 83 15                                      strne r1, [r3, #0xc]
007ea4b4  30 30 9c e5                                      ldr r3, [ip, #0x30]
007ea4b8  00 00 53 e3                                      cmp r3, #0
007ea4bc  2c 10 9c 15                                      ldrne r1, [ip, #0x2c]
007ea4c0  08 10 83 15                                      strne r1, [r3, #8]
007ea4c4  70 10 92 e5                                      ldr r1, [r2, #0x70]
007ea4c8  24 30 8c e2                                      add r3, ip, #0x24
007ea4cc  03 00 51 e1                                      cmp r1, r3
007ea4d0  30 30 9c 05                                      ldreq r3, [ip, #0x30]
007ea4d4  70 30 82 05                                      streq r3, [r2, #0x70]
007ea4d8  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ea4dc  04 10 92 e5                                      ldr r1, [r2, #4]
007ea4e0  ec fd ff eb                                      bl #0x7e9c98
007ea4e4  10 30 9d e5                                      ldr r3, [sp, #0x10]
007ea4e8  04 20 93 e5                                      ldr r2, [r3, #4]
007ea4ec  19 3a a0 e3                                      mov r3, #0x19000
007ea4f0  09 3d 83 e2                                      add r3, r3, #0x240
007ea4f4  03 10 92 e7                                      ldr r1, [r2, r3]
007ea4f8  01 10 41 e2                                      sub r1, r1, #1
007ea4fc  03 10 82 e7                                      str r1, [r2, r3]
007ea500  5c d0 8d e2                                      add sp, sp, #0x5c
007ea504  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007ea508, declared_size=24, range_size=24, mode=arm
; class-group: b2ContactManager
; alias: _ZN16b2ContactManager11PairRemovedEPvS0_S0_
; demangled: b2ContactManager::PairRemoved(void*, void*, void*)
; decoder-mode: arm
007ea508  00 10 53 e2                                      subs r1, r3, #0
007ea50c  1e ff 2f 01                                      bxeq lr
007ea510  08 30 80 e2                                      add r3, r0, #8
007ea514  03 00 51 e1                                      cmp r1, r3
007ea518  1e ff 2f 01                                      bxeq lr
007ea51c  d8 fe ff ea                                      b #0x7ea084

; FUNCTION 0x007ea520, declared_size=392, range_size=392, mode=arm
; class-group: b2ContactManager
; alias: _ZN16b2ContactManager9PairAddedEPvS0_
; demangled: b2ContactManager::PairAdded(void*, void*)
; decoder-mode: arm
007ea520  70 40 2d e9                                      push {r4, r5, r6, lr}
007ea524  0c 30 91 e5                                      ldr r3, [r1, #0xc]
007ea528  01 60 a0 e1                                      mov r6, r1
007ea52c  02 50 a0 e1                                      mov r5, r2
007ea530  f2 10 d3 e1                                      ldrsh r1, [r3, #2]
007ea534  00 40 a0 e1                                      mov r4, r0
007ea538  0c 20 92 e5                                      ldr r2, [r2, #0xc]
007ea53c  00 00 51 e3                                      cmp r1, #0
007ea540  02 00 00 1a                                      bne #0x7ea550
007ea544  f2 10 d2 e1                                      ldrsh r1, [r2, #2]
007ea548  00 00 51 e3                                      cmp r1, #0
007ea54c  0f 00 00 0a                                      beq #0x7ea590
007ea550  02 00 53 e1                                      cmp r3, r2
007ea554  0d 00 00 0a                                      beq #0x7ea590
007ea558  6c 20 92 e5                                      ldr r2, [r2, #0x6c]
007ea55c  00 00 52 e3                                      cmp r2, #0
007ea560  03 00 00 1a                                      bne #0x7ea574
007ea564  0b 00 00 ea                                      b #0x7ea598
007ea568  0c 20 92 e5                                      ldr r2, [r2, #0xc]
007ea56c  00 00 52 e3                                      cmp r2, #0
007ea570  08 00 00 0a                                      beq #0x7ea598
007ea574  00 10 92 e5                                      ldr r1, [r2]
007ea578  01 00 53 e1                                      cmp r3, r1
007ea57c  f9 ff ff 1a                                      bne #0x7ea568
007ea580  04 30 92 e5                                      ldr r3, [r2, #4]
007ea584  3d 30 d3 e5                                      ldrb r3, [r3, #0x3d]
007ea588  01 00 53 e3                                      cmp r3, #1
007ea58c  01 00 00 0a                                      beq #0x7ea598
007ea590  08 00 84 e2                                      add r0, r4, #8
007ea594  70 80 bd e8                                      pop {r4, r5, r6, pc}
007ea598  04 20 94 e5                                      ldr r2, [r4, #4]
007ea59c  19 3a a0 e3                                      mov r3, #0x19000
007ea5a0  26 3e 83 e2                                      add r3, r3, #0x260
007ea5a4  03 30 92 e7                                      ldr r3, [r2, r3]
007ea5a8  00 00 53 e3                                      cmp r3, #0
007ea5ac  08 00 00 0a                                      beq #0x7ea5d4
007ea5b0  03 00 a0 e1                                      mov r0, r3
007ea5b4  05 20 a0 e1                                      mov r2, r5
007ea5b8  00 30 93 e5                                      ldr r3, [r3]
007ea5bc  06 10 a0 e1                                      mov r1, r6
007ea5c0  0f e0 a0 e1                                      mov lr, pc
007ea5c4  08 f0 93 e5                                      ldr pc, [r3, #8]
007ea5c8  00 00 50 e3                                      cmp r0, #0
007ea5cc  04 20 94 15                                      ldrne r2, [r4, #4]
007ea5d0  ee ff ff 0a                                      beq #0x7ea590
007ea5d4  06 00 a0 e1                                      mov r0, r6
007ea5d8  05 10 a0 e1                                      mov r1, r5
007ea5dc  69 fd ff eb                                      bl #0x7e9b88
007ea5e0  00 00 50 e3                                      cmp r0, #0
007ea5e4  e9 ff ff 0a                                      beq #0x7ea590
007ea5e8  34 20 90 e5                                      ldr r2, [r0, #0x34]
007ea5ec  38 30 90 e5                                      ldr r3, [r0, #0x38]
007ea5f0  00 10 a0 e3                                      mov r1, #0
007ea5f4  0c 20 92 e5                                      ldr r2, [r2, #0xc]
007ea5f8  0c 30 93 e5                                      ldr r3, [r3, #0xc]
007ea5fc  0c 10 80 e5                                      str r1, [r0, #0xc]
007ea600  04 c0 94 e5                                      ldr ip, [r4, #4]
007ea604  19 1a a0 e3                                      mov r1, #0x19000
007ea608  8e 1f 81 e2                                      add r1, r1, #0x238
007ea60c  01 c0 9c e7                                      ldr ip, [ip, r1]
007ea610  10 c0 80 e5                                      str ip, [r0, #0x10]
007ea614  04 c0 94 e5                                      ldr ip, [r4, #4]
007ea618  01 10 9c e7                                      ldr r1, [ip, r1]
007ea61c  00 00 51 e3                                      cmp r1, #0
007ea620  0c 00 81 15                                      strne r0, [r1, #0xc]
007ea624  04 c0 94 15                                      ldrne ip, [r4, #4]
007ea628  19 1a a0 e3                                      mov r1, #0x19000
007ea62c  8e 1f 81 e2                                      add r1, r1, #0x238
007ea630  01 00 8c e7                                      str r0, [ip, r1]
007ea634  00 10 a0 e3                                      mov r1, #0
007ea638  14 30 80 e5                                      str r3, [r0, #0x14]
007ea63c  1c 10 80 e5                                      str r1, [r0, #0x1c]
007ea640  18 00 80 e5                                      str r0, [r0, #0x18]
007ea644  70 10 92 e5                                      ldr r1, [r2, #0x70]
007ea648  20 10 80 e5                                      str r1, [r0, #0x20]
007ea64c  70 c0 92 e5                                      ldr ip, [r2, #0x70]
007ea650  14 10 80 e2                                      add r1, r0, #0x14
007ea654  00 00 5c e3                                      cmp ip, #0
007ea658  08 10 8c 15                                      strne r1, [ip, #8]
007ea65c  70 10 82 e5                                      str r1, [r2, #0x70]
007ea660  24 20 80 e5                                      str r2, [r0, #0x24]
007ea664  00 20 a0 e3                                      mov r2, #0
007ea668  2c 20 80 e5                                      str r2, [r0, #0x2c]
007ea66c  28 00 80 e5                                      str r0, [r0, #0x28]
007ea670  70 20 93 e5                                      ldr r2, [r3, #0x70]
007ea674  30 20 80 e5                                      str r2, [r0, #0x30]
007ea678  70 10 93 e5                                      ldr r1, [r3, #0x70]
007ea67c  24 20 80 e2                                      add r2, r0, #0x24
007ea680  00 00 51 e3                                      cmp r1, #0
007ea684  08 20 81 15                                      strne r2, [r1, #8]
007ea688  70 20 83 e5                                      str r2, [r3, #0x70]
007ea68c  04 20 94 e5                                      ldr r2, [r4, #4]
007ea690  19 3a a0 e3                                      mov r3, #0x19000
007ea694  09 3d 83 e2                                      add r3, r3, #0x240
007ea698  03 10 92 e7                                      ldr r1, [r2, r3]
007ea69c  01 10 81 e2                                      add r1, r1, #1
007ea6a0  03 10 82 e7                                      str r1, [r2, r3]
007ea6a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
