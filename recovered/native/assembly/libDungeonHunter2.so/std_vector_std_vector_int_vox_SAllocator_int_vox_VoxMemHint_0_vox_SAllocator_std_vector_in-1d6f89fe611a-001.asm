; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008714d4, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIS_IiN3vox10SAllocatorIiLNS0_10VoxMemHintE0EEEENS1_IS4_LS2_0EEEE13_M_initializeEjRKS4_
; demangled: std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::_M_initialize(unsigned int, std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
008714d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008714d8  00 40 90 e5                                      ldr r4, [r0]
008714dc  0c 80 a0 e3                                      mov r8, #0xc
008714e0  00 50 a0 e1                                      mov r5, r0
008714e4  98 41 28 e0                                      mla r8, r8, r1, r4
008714e8  02 70 a0 e1                                      mov r7, r2
008714ec  08 30 64 e0                                      rsb r3, r4, r8
008714f0  43 31 a0 e1                                      asr r3, r3, #2
008714f4  03 61 83 e0                                      add r6, r3, r3, lsl #2
008714f8  06 62 86 e0                                      add r6, r6, r6, lsl #4
008714fc  06 64 86 e0                                      add r6, r6, r6, lsl #8
00871500  06 68 86 e0                                      add r6, r6, r6, lsl #16
00871504  86 60 83 e0                                      add r6, r3, r6, lsl #1
00871508  00 00 56 e3                                      cmp r6, #0
0087150c  05 00 00 da                                      ble #0x871528
00871510  04 00 a0 e1                                      mov r0, r4
00871514  07 10 a0 e1                                      mov r1, r7
00871518  b7 ff ff eb                                      bl #0x8713fc
0087151c  01 60 56 e2                                      subs r6, r6, #1
00871520  0c 40 84 e2                                      add r4, r4, #0xc
00871524  f9 ff ff 1a                                      bne #0x871510
00871528  04 80 85 e5                                      str r8, [r5, #4]
0087152c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00871854, declared_size=120, range_size=120, mode=arm
; class-group: std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIS_IiN3vox10SAllocatorIiLNS0_10VoxMemHintE0EEEENS1_IS4_LS2_0EEEEC1Ej
; demangled: std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::vector(unsigned int)
; decoder-mode: arm
00871854  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00871858  0c 70 a0 e3                                      mov r7, #0xc
0087185c  97 01 07 e0                                      mul r7, r7, r1
00871860  00 50 a0 e3                                      mov r5, #0
00871864  14 d0 4d e2                                      sub sp, sp, #0x14
00871868  00 40 a0 e1                                      mov r4, r0
0087186c  01 60 a0 e1                                      mov r6, r1
00871870  00 50 80 e5                                      str r5, [r0]
00871874  04 50 80 e5                                      str r5, [r0, #4]
00871878  08 50 80 e5                                      str r5, [r0, #8]
0087187c  05 10 a0 e1                                      mov r1, r5
00871880  07 00 a0 e1                                      mov r0, r7
00871884  6f 7b ea eb                                      bl #0x310648
00871888  07 70 80 e0                                      add r7, r0, r7
0087188c  00 00 84 e5                                      str r0, [r4]
00871890  81 00 84 e9                                      stmib r4, {r0, r7}
00871894  04 00 a0 e1                                      mov r0, r4
00871898  06 10 a0 e1                                      mov r1, r6
0087189c  04 20 8d e2                                      add r2, sp, #4
008718a0  0c 50 8d e5                                      str r5, [sp, #0xc]
008718a4  04 50 8d e5                                      str r5, [sp, #4]
008718a8  08 50 8d e5                                      str r5, [sp, #8]
008718ac  08 ff ff eb                                      bl #0x8714d4
008718b0  04 00 9d e5                                      ldr r0, [sp, #4]
008718b4  05 00 50 e1                                      cmp r0, r5
008718b8  00 00 00 0a                                      beq #0x8718c0
008718bc  e0 7a ea eb                                      bl #0x310444
008718c0  04 00 a0 e1                                      mov r0, r4
008718c4  14 d0 8d e2                                      add sp, sp, #0x14
008718c8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00871bf4, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIS_IiN3vox10SAllocatorIiLNS0_10VoxMemHintE0EEEENS1_IS4_LS2_0EEEE8_M_clearEv
; demangled: std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::_M_clear()
; decoder-mode: arm
00871bf4  70 40 2d e9                                      push {r4, r5, r6, lr}
00871bf8  00 60 a0 e1                                      mov r6, r0
00871bfc  00 50 96 e5                                      ldr r5, [r6]
00871c00  04 00 90 e5                                      ldr r0, [r0, #4]
00871c04  05 00 50 e1                                      cmp r0, r5
00871c08  08 00 00 0a                                      beq #0x871c30
00871c0c  00 40 a0 e1                                      mov r4, r0
00871c10  0c 00 14 e5                                      ldr r0, [r4, #-0xc]
00871c14  0c 40 44 e2                                      sub r4, r4, #0xc
00871c18  00 00 50 e3                                      cmp r0, #0
00871c1c  00 00 00 0a                                      beq #0x871c24
00871c20  07 7a ea eb                                      bl #0x310444
00871c24  04 00 55 e1                                      cmp r5, r4
00871c28  f8 ff ff 1a                                      bne #0x871c10
00871c2c  00 00 96 e5                                      ldr r0, [r6]
00871c30  70 40 bd e8                                      pop {r4, r5, r6, lr}
00871c34  02 7a ea ea                                      b #0x310444

; FUNCTION 0x00871c38, declared_size=232, range_size=232, mode=arm
; class-group: std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIS_IiN3vox10SAllocatorIiLNS0_10VoxMemHintE0EEEENS1_IS4_LS2_0EEEE7reserveEj
; demangled: std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::reserve(unsigned int)
; decoder-mode: arm
00871c38  70 40 2d e9                                      push {r4, r5, r6, lr}
00871c3c  00 40 a0 e1                                      mov r4, r0
00871c40  00 20 90 e5                                      ldr r2, [r0]
00871c44  08 00 90 e5                                      ldr r0, [r0, #8]
00871c48  08 d0 4d e2                                      sub sp, sp, #8
00871c4c  01 30 a0 e1                                      mov r3, r1
00871c50  00 00 62 e0                                      rsb r0, r2, r0
00871c54  40 01 a0 e1                                      asr r0, r0, #2
00871c58  04 10 8d e5                                      str r1, [sp, #4]
00871c5c  00 11 80 e0                                      add r1, r0, r0, lsl #2
00871c60  01 12 81 e0                                      add r1, r1, r1, lsl #4
00871c64  01 14 81 e0                                      add r1, r1, r1, lsl #8
00871c68  01 18 81 e0                                      add r1, r1, r1, lsl #16
00871c6c  81 00 80 e0                                      add r0, r0, r1, lsl #1
00871c70  00 00 53 e1                                      cmp r3, r0
00871c74  1a 00 00 9a                                      bls #0x871ce4
00871c78  55 15 05 e3                                      movw r1, #0x5555
00871c7c  01 17 81 e1                                      orr r1, r1, r1, lsl #14
00871c80  01 00 53 e1                                      cmp r3, r1
00871c84  18 00 00 8a                                      bhi #0x871cec
00871c88  04 30 94 e5                                      ldr r3, [r4, #4]
00871c8c  00 00 52 e3                                      cmp r2, #0
00871c90  03 10 62 e0                                      rsb r1, r2, r3
00871c94  41 11 a0 e1                                      asr r1, r1, #2
00871c98  01 51 81 e0                                      add r5, r1, r1, lsl #2
00871c9c  05 52 85 e0                                      add r5, r5, r5, lsl #4
00871ca0  05 54 85 e0                                      add r5, r5, r5, lsl #8
00871ca4  05 58 85 e0                                      add r5, r5, r5, lsl #16
00871ca8  85 50 81 e0                                      add r5, r1, r5, lsl #1
00871cac  13 00 00 0a                                      beq #0x871d00
00871cb0  04 00 a0 e1                                      mov r0, r4
00871cb4  04 10 8d e2                                      add r1, sp, #4
00871cb8  ea fd ff eb                                      bl #0x871468
00871cbc  00 60 a0 e1                                      mov r6, r0
00871cc0  04 00 a0 e1                                      mov r0, r4
00871cc4  ca ff ff eb                                      bl #0x871bf4
00871cc8  04 20 9d e5                                      ldr r2, [sp, #4]
00871ccc  0c 30 a0 e3                                      mov r3, #0xc
00871cd0  93 65 25 e0                                      mla r5, r3, r5, r6
00871cd4  93 62 23 e0                                      mla r3, r3, r2, r6
00871cd8  04 50 84 e5                                      str r5, [r4, #4]
00871cdc  08 30 84 e5                                      str r3, [r4, #8]
00871ce0  00 60 84 e5                                      str r6, [r4]
00871ce4  08 d0 8d e2                                      add sp, sp, #8
00871ce8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00871cec  28 00 9f e5                                      ldr r0, [pc, #0x28]
00871cf0  00 00 8f e0                                      add r0, pc, r0
00871cf4  83 31 01 eb                                      bl #0x8be308
00871cf8  00 20 94 e5                                      ldr r2, [r4]
00871cfc  e1 ff ff ea                                      b #0x871c88
00871d00  04 30 9d e5                                      ldr r3, [sp, #4]
00871d04  0c 00 a0 e3                                      mov r0, #0xc
00871d08  02 10 a0 e1                                      mov r1, r2
00871d0c  90 03 00 e0                                      mul r0, r0, r3
00871d10  4c 7a ea eb                                      bl #0x310648
00871d14  00 60 a0 e1                                      mov r6, r0
00871d18  ea ff ff ea                                      b #0x871cc8
; mapping-symbol data/literal pool
00871d1c  78 c7 04 00                                      .byte 0x78, 0xc7, 0x04, 0x00

; FUNCTION 0x00871d20, declared_size=76, range_size=76, mode=arm
; class-group: std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIS_IiN3vox10SAllocatorIiLNS0_10VoxMemHintE0EEEENS1_IS4_LS2_0EEEED1Ev
; demangled: std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::~vector()
; decoder-mode: arm
00871d20  70 40 2d e9                                      push {r4, r5, r6, lr}
00871d24  04 40 90 e5                                      ldr r4, [r0, #4]
00871d28  00 50 90 e5                                      ldr r5, [r0]
00871d2c  00 60 a0 e1                                      mov r6, r0
00871d30  05 00 54 e1                                      cmp r4, r5
00871d34  06 00 00 0a                                      beq #0x871d54
00871d38  0c 00 14 e5                                      ldr r0, [r4, #-0xc]
00871d3c  0c 40 44 e2                                      sub r4, r4, #0xc
00871d40  00 00 50 e3                                      cmp r0, #0
00871d44  00 00 00 0a                                      beq #0x871d4c
00871d48  bd 79 ea eb                                      bl #0x310444
00871d4c  04 00 55 e1                                      cmp r5, r4
00871d50  f8 ff ff 1a                                      bne #0x871d38
00871d54  00 00 96 e5                                      ldr r0, [r6]
00871d58  00 00 50 e3                                      cmp r0, #0
00871d5c  00 00 00 0a                                      beq #0x871d64
00871d60  b7 79 ea eb                                      bl #0x310444
00871d64  06 00 a0 e1                                      mov r0, r6
00871d68  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00871eb8, declared_size=512, range_size=512, mode=arm
; class-group: std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIS_IiN3vox10SAllocatorIiLNS0_10VoxMemHintE0EEEENS1_IS4_LS2_0EEEEaSERKS6_
; demangled: std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::operator=(std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
00871eb8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00871ebc  00 00 51 e1                                      cmp r1, r0
00871ec0  14 d0 4d e2                                      sub sp, sp, #0x14
00871ec4  01 90 a0 e1                                      mov sb, r1
00871ec8  00 40 a0 e1                                      mov r4, r0
00871ecc  39 00 00 0a                                      beq #0x871fb8
00871ed0  04 30 91 e5                                      ldr r3, [r1, #4]
00871ed4  00 80 91 e5                                      ldr r8, [r1]
00871ed8  00 60 90 e5                                      ldr r6, [r0]
00871edc  08 20 90 e5                                      ldr r2, [r0, #8]
00871ee0  03 10 68 e0                                      rsb r1, r8, r3
00871ee4  41 11 a0 e1                                      asr r1, r1, #2
00871ee8  02 20 66 e0                                      rsb r2, r6, r2
00871eec  42 21 a0 e1                                      asr r2, r2, #2
00871ef0  01 51 81 e0                                      add r5, r1, r1, lsl #2
00871ef4  02 c1 82 e0                                      add ip, r2, r2, lsl #2
00871ef8  05 52 85 e0                                      add r5, r5, r5, lsl #4
00871efc  0c c2 8c e0                                      add ip, ip, ip, lsl #4
00871f00  05 54 85 e0                                      add r5, r5, r5, lsl #8
00871f04  0c c4 8c e0                                      add ip, ip, ip, lsl #8
00871f08  05 58 85 e0                                      add r5, r5, r5, lsl #16
00871f0c  0c c8 8c e0                                      add ip, ip, ip, lsl #16
00871f10  85 50 81 e0                                      add r5, r1, r5, lsl #1
00871f14  8c 20 82 e0                                      add r2, r2, ip, lsl #1
00871f18  02 00 55 e1                                      cmp r5, r2
00871f1c  05 b0 a0 e1                                      mov fp, r5
00871f20  57 00 00 8a                                      bhi #0x872084
00871f24  04 20 90 e5                                      ldr r2, [r0, #4]
00871f28  02 10 66 e0                                      rsb r1, r6, r2
00871f2c  41 11 a0 e1                                      asr r1, r1, #2
00871f30  01 a1 81 e0                                      add sl, r1, r1, lsl #2
00871f34  0a a2 8a e0                                      add sl, sl, sl, lsl #4
00871f38  0a a4 8a e0                                      add sl, sl, sl, lsl #8
00871f3c  0a a8 8a e0                                      add sl, sl, sl, lsl #16
00871f40  8a 10 81 e0                                      add r1, r1, sl, lsl #1
00871f44  01 00 55 e1                                      cmp r5, r1
00871f48  1d 00 00 8a                                      bhi #0x871fc4
00871f4c  00 00 55 e3                                      cmp r5, #0
00871f50  09 00 00 da                                      ble #0x871f7c
00871f54  00 70 a0 e3                                      mov r7, #0
00871f58  07 00 86 e0                                      add r0, r6, r7
00871f5c  07 10 88 e0                                      add r1, r8, r7
00871f60  96 ff ff eb                                      bl #0x871dc0
00871f64  01 b0 5b e2                                      subs fp, fp, #1
00871f68  0c 70 87 e2                                      add r7, r7, #0xc
00871f6c  f9 ff ff 1a                                      bne #0x871f58
00871f70  0c 30 a0 e3                                      mov r3, #0xc
00871f74  93 65 26 e0                                      mla r6, r3, r5, r6
00871f78  04 20 94 e5                                      ldr r2, [r4, #4]
00871f7c  06 00 52 e1                                      cmp r2, r6
00871f80  08 00 00 0a                                      beq #0x871fa8
00871f84  00 00 96 e5                                      ldr r0, [r6]
00871f88  0c 60 86 e2                                      add r6, r6, #0xc
00871f8c  00 00 50 e3                                      cmp r0, #0
00871f90  f9 ff ff 0a                                      beq #0x871f7c
00871f94  04 20 8d e5                                      str r2, [sp, #4]
00871f98  29 79 ea eb                                      bl #0x310444
00871f9c  04 20 9d e5                                      ldr r2, [sp, #4]
00871fa0  06 00 52 e1                                      cmp r2, r6
00871fa4  f6 ff ff 1a                                      bne #0x871f84
00871fa8  00 60 94 e5                                      ldr r6, [r4]
00871fac  0c 30 a0 e3                                      mov r3, #0xc
00871fb0  93 65 26 e0                                      mla r6, r3, r5, r6
00871fb4  04 60 84 e5                                      str r6, [r4, #4]
00871fb8  04 00 a0 e1                                      mov r0, r4
00871fbc  14 d0 8d e2                                      add sp, sp, #0x14
00871fc0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00871fc4  0c a0 a0 e3                                      mov sl, #0xc
00871fc8  9a 81 2a e0                                      mla sl, sl, r1, r8
00871fcc  0a 10 68 e0                                      rsb r1, r8, sl
00871fd0  41 11 a0 e1                                      asr r1, r1, #2
00871fd4  01 71 81 e0                                      add r7, r1, r1, lsl #2
00871fd8  07 72 87 e0                                      add r7, r7, r7, lsl #4
00871fdc  07 74 87 e0                                      add r7, r7, r7, lsl #8
00871fe0  07 78 87 e0                                      add r7, r7, r7, lsl #16
00871fe4  87 70 81 e0                                      add r7, r1, r7, lsl #1
00871fe8  00 00 57 e3                                      cmp r7, #0
00871fec  02 80 a0 d1                                      movle r8, r2
00871ff0  12 00 00 da                                      ble #0x872040
00871ff4  00 a0 a0 e3                                      mov sl, #0
00871ff8  0a 00 86 e0                                      add r0, r6, sl
00871ffc  0a 10 88 e0                                      add r1, r8, sl
00872000  6e ff ff eb                                      bl #0x871dc0
00872004  01 70 57 e2                                      subs r7, r7, #1
00872008  0c a0 8a e2                                      add sl, sl, #0xc
0087200c  f9 ff ff 1a                                      bne #0x871ff8
00872010  40 01 94 e8                                      ldm r4, {r6, r8}
00872014  00 00 99 e5                                      ldr r0, [sb]
00872018  0c a0 a0 e3                                      mov sl, #0xc
0087201c  08 20 66 e0                                      rsb r2, r6, r8
00872020  42 21 a0 e1                                      asr r2, r2, #2
00872024  04 30 99 e5                                      ldr r3, [sb, #4]
00872028  02 11 82 e0                                      add r1, r2, r2, lsl #2
0087202c  01 12 81 e0                                      add r1, r1, r1, lsl #4
00872030  01 14 81 e0                                      add r1, r1, r1, lsl #8
00872034  01 18 81 e0                                      add r1, r1, r1, lsl #16
00872038  81 20 82 e0                                      add r2, r2, r1, lsl #1
0087203c  9a 02 2a e0                                      mla sl, sl, r2, r0
00872040  03 30 6a e0                                      rsb r3, sl, r3
00872044  43 31 a0 e1                                      asr r3, r3, #2
00872048  03 71 83 e0                                      add r7, r3, r3, lsl #2
0087204c  07 72 87 e0                                      add r7, r7, r7, lsl #4
00872050  07 74 87 e0                                      add r7, r7, r7, lsl #8
00872054  07 78 87 e0                                      add r7, r7, r7, lsl #16
00872058  87 70 83 e0                                      add r7, r3, r7, lsl #1
0087205c  00 00 57 e3                                      cmp r7, #0
00872060  d1 ff ff da                                      ble #0x871fac
00872064  00 60 a0 e3                                      mov r6, #0
00872068  06 00 88 e0                                      add r0, r8, r6
0087206c  06 10 8a e0                                      add r1, sl, r6
00872070  e1 fc ff eb                                      bl #0x8713fc
00872074  01 70 57 e2                                      subs r7, r7, #1
00872078  0c 60 86 e2                                      add r6, r6, #0xc
0087207c  f9 ff ff 1a                                      bne #0x872068
00872080  c8 ff ff ea                                      b #0x871fa8
00872084  10 10 8d e2                                      add r1, sp, #0x10
00872088  08 20 a0 e1                                      mov r2, r8
0087208c  04 50 21 e5                                      str r5, [r1, #-4]!
00872090  26 fd ff eb                                      bl #0x871530
00872094  00 60 a0 e1                                      mov r6, r0
00872098  04 00 a0 e1                                      mov r0, r4
0087209c  d4 fe ff eb                                      bl #0x871bf4
008720a0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
008720a4  0c 20 a0 e3                                      mov r2, #0xc
008720a8  00 60 84 e5                                      str r6, [r4]
008720ac  92 63 23 e0                                      mla r3, r2, r3, r6
008720b0  08 30 84 e5                                      str r3, [r4, #8]
008720b4  bc ff ff ea                                      b #0x871fac
