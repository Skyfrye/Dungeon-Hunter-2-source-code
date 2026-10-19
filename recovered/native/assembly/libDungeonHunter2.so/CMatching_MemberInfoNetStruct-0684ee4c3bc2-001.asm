; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007ffc28, declared_size=192, range_size=192, mode=arm
; class-group: CMatching::MemberInfoNetStruct
; alias: _ZN9CMatching19MemberInfoNetStructD1Ev
; demangled: CMatching::MemberInfoNetStruct::~MemberInfoNetStruct()
; decoder-mode: arm
007ffc28  70 40 2d e9                                      push {r4, r5, r6, lr}
007ffc2c  a0 50 9f e5                                      ldr r5, [pc, #0xa0]
007ffc30  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
007ffc34  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
007ffc38  05 50 8f e0                                      add r5, pc, r5
007ffc3c  02 20 95 e7                                      ldr r2, [r5, r2]
007ffc40  03 30 95 e7                                      ldr r3, [r5, r3]
007ffc44  00 60 a0 e1                                      mov r6, r0
007ffc48  08 20 82 e2                                      add r2, r2, #8
007ffc4c  08 30 83 e2                                      add r3, r3, #8
007ffc50  80 21 86 e4                                      str r2, [r6], #0x180
007ffc54  80 31 80 e5                                      str r3, [r0, #0x180]
007ffc58  00 40 a0 e1                                      mov r4, r0
007ffc5c  20 00 96 e5                                      ldr r0, [r6, #0x20]
007ffc60  00 00 50 e3                                      cmp r0, #0
007ffc64  02 00 00 0a                                      beq #0x7ffc74
007ffc68  f4 41 ec eb                                      bl #0x310440
007ffc6c  00 30 a0 e3                                      mov r3, #0
007ffc70  20 30 86 e5                                      str r3, [r6, #0x20]
007ffc74  64 30 9f e5                                      ldr r3, [pc, #0x64]
007ffc78  64 20 9f e5                                      ldr r2, [pc, #0x64]
007ffc7c  1c 11 94 e5                                      ldr r1, [r4, #0x11c]
007ffc80  03 30 95 e7                                      ldr r3, [r5, r3]
007ffc84  02 20 95 e7                                      ldr r2, [r5, r2]
007ffc88  00 00 51 e3                                      cmp r1, #0
007ffc8c  08 30 83 e2                                      add r3, r3, #8
007ffc90  08 20 82 e2                                      add r2, r2, #8
007ffc94  30 31 84 e5                                      str r3, [r4, #0x130]
007ffc98  00 20 84 e5                                      str r2, [r4]
007ffc9c  80 31 84 e5                                      str r3, [r4, #0x180]
007ffca0  58 31 84 e5                                      str r3, [r4, #0x158]
007ffca4  08 00 00 0a                                      beq #0x7ffccc
007ffca8  43 5f 84 e2                                      add r5, r4, #0x10c
007ffcac  05 00 a0 e1                                      mov r0, r5
007ffcb0  10 11 94 e5                                      ldr r1, [r4, #0x110]
007ffcb4  c5 c4 ed eb                                      bl #0x370fd0
007ffcb8  00 30 a0 e3                                      mov r3, #0
007ffcbc  18 51 84 e5                                      str r5, [r4, #0x118]
007ffcc0  1c 31 84 e5                                      str r3, [r4, #0x11c]
007ffcc4  14 51 84 e5                                      str r5, [r4, #0x114]
007ffcc8  10 31 84 e5                                      str r3, [r4, #0x110]
007ffccc  04 00 a0 e1                                      mov r0, r4
007ffcd0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007ffcd4  58 4e 19 00 20 2b 00 00 ec 2a 00 00 a8 10 00 00  .byte 0x58, 0x4e, 0x19, 0x00, 0x20, 0x2b, 0x00, 0x00, 0xec, 0x2a, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
007ffce4  c4 43 00 00                                      .byte 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x007ffce8, declared_size=28, range_size=28, mode=arm
; class-group: CMatching::MemberInfoNetStruct
; alias: _ZN9CMatching19MemberInfoNetStructD0Ev
; demangled: CMatching::MemberInfoNetStruct::~MemberInfoNetStruct()
; decoder-mode: arm
007ffce8  10 40 2d e9                                      push {r4, lr}
007ffcec  00 40 a0 e1                                      mov r4, r0
007ffcf0  cc ff ff eb                                      bl #0x7ffc28
007ffcf4  04 00 a0 e1                                      mov r0, r4
007ffcf8  d0 41 ec eb                                      bl #0x310440
007ffcfc  04 00 a0 e1                                      mov r0, r4
007ffd00  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007ffd04, declared_size=664, range_size=664, mode=arm
; class-group: CMatching::MemberInfoNetStruct
; alias: _ZN9CMatching19MemberInfoNetStructC1Ev
; demangled: CMatching::MemberInfoNetStruct::MemberInfoNetStruct()
; decoder-mode: arm
007ffd04  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ffd08  70 52 9f e5                                      ldr r5, [pc, #0x270]
007ffd0c  64 d0 4d e2                                      sub sp, sp, #0x64
007ffd10  00 40 a0 e1                                      mov r4, r0
007ffd14  f6 4e 00 eb                                      bl #0x8138f4
007ffd18  64 32 9f e5                                      ldr r3, [pc, #0x264]
007ffd1c  64 92 9f e5                                      ldr sb, [pc, #0x264]
007ffd20  05 50 8f e0                                      add r5, pc, r5
007ffd24  03 30 95 e7                                      ldr r3, [r5, r3]
007ffd28  50 21 94 e5                                      ldr r2, [r4, #0x150]
007ffd2c  09 00 95 e7                                      ldr r0, [r5, sb]
007ffd30  08 30 83 e2                                      add r3, r3, #8
007ffd34  00 60 a0 e3                                      mov r6, #0
007ffd38  00 70 a0 e3                                      mov r7, #0
007ffd3c  4e cf a0 e3                                      mov ip, #0x138
007ffd40  fc 60 84 e1                                      strd r6, r7, [r4, ip]
007ffd44  00 00 52 e3                                      cmp r2, #0
007ffd48  00 10 e0 e3                                      mvn r1, #0
007ffd4c  00 20 a0 e3                                      mov r2, #0
007ffd50  08 00 80 e2                                      add r0, r0, #8
007ffd54  00 30 84 e5                                      str r3, [r4]
007ffd58  20 30 a0 e3                                      mov r3, #0x20
007ffd5c  34 31 84 e5                                      str r3, [r4, #0x134]
007ffd60  44 11 84 e5                                      str r1, [r4, #0x144]
007ffd64  30 01 84 e5                                      str r0, [r4, #0x130]
007ffd68  40 11 84 e5                                      str r1, [r4, #0x140]
007ffd6c  48 21 84 e5                                      str r2, [r4, #0x148]
007ffd70  4c 21 c4 e5                                      strb r2, [r4, #0x14c]
007ffd74  13 8e 84 02                                      addeq r8, r4, #0x130
007ffd78  03 00 00 0a                                      beq #0x7ffd8c
007ffd7c  13 8e 84 e2                                      add r8, r4, #0x130
007ffd80  50 21 84 e5                                      str r2, [r4, #0x150]
007ffd84  08 00 a0 e1                                      mov r0, r8
007ffd88  7d 54 00 eb                                      bl #0x814f84
007ffd8c  f8 21 9f e5                                      ldr r2, [pc, #0x1f8]
007ffd90  f8 a1 9f e5                                      ldr sl, [pc, #0x1f8]
007ffd94  00 70 a0 e3                                      mov r7, #0
007ffd98  00 20 8d e5                                      str r2, [sp]
007ffd9c  0a 00 95 e7                                      ldr r0, [r5, sl]
007ffda0  78 31 94 e5                                      ldr r3, [r4, #0x178]
007ffda4  02 10 95 e7                                      ldr r1, [r5, r2]
007ffda8  08 00 80 e2                                      add r0, r0, #8
007ffdac  00 60 a0 e3                                      mov r6, #0
007ffdb0  16 ce a0 e3                                      mov ip, #0x160
007ffdb4  fc 60 84 e1                                      strd r6, r7, [r4, ip]
007ffdb8  00 00 53 e3                                      cmp r3, #0
007ffdbc  00 20 e0 e3                                      mvn r2, #0
007ffdc0  00 30 a0 e3                                      mov r3, #0
007ffdc4  08 10 81 e2                                      add r1, r1, #8
007ffdc8  30 01 84 e5                                      str r0, [r4, #0x130]
007ffdcc  08 00 a0 e3                                      mov r0, #8
007ffdd0  5c 01 84 e5                                      str r0, [r4, #0x15c]
007ffdd4  6c 21 84 e5                                      str r2, [r4, #0x16c]
007ffdd8  58 11 84 e5                                      str r1, [r4, #0x158]
007ffddc  68 21 84 e5                                      str r2, [r4, #0x168]
007ffde0  70 31 84 e5                                      str r3, [r4, #0x170]
007ffde4  74 31 c4 e5                                      strb r3, [r4, #0x174]
007ffde8  56 7f 84 02                                      addeq r7, r4, #0x158
007ffdec  03 00 00 0a                                      beq #0x7ffe00
007ffdf0  56 7f 84 e2                                      add r7, r4, #0x158
007ffdf4  78 31 84 e5                                      str r3, [r4, #0x178]
007ffdf8  07 00 a0 e1                                      mov r0, r7
007ffdfc  60 54 00 eb                                      bl #0x814f84
007ffe00  8c 31 9f e5                                      ldr r3, [pc, #0x18c]
007ffe04  06 bd 84 e2                                      add fp, r4, #0x180
007ffe08  00 60 a0 e3                                      mov r6, #0
007ffe0c  04 30 8d e5                                      str r3, [sp, #4]
007ffe10  03 30 95 e7                                      ldr r3, [r5, r3]
007ffe14  0b 00 a0 e1                                      mov r0, fp
007ffe18  58 10 8d e2                                      add r1, sp, #0x58
007ffe1c  08 30 83 e2                                      add r3, r3, #8
007ffe20  58 31 84 e5                                      str r3, [r4, #0x158]
007ffe24  58 60 8d e5                                      str r6, [sp, #0x58]
007ffe28  5c 60 8d e5                                      str r6, [sp, #0x5c]
007ffe2c  21 fc ff eb                                      bl #0x7feeb8
007ffe30  58 00 9d e5                                      ldr r0, [sp, #0x58]
007ffe34  06 00 50 e1                                      cmp r0, r6
007ffe38  01 00 00 0a                                      beq #0x7ffe44
007ffe3c  7f 41 ec eb                                      bl #0x310440
007ffe40  58 60 8d e5                                      str r6, [sp, #0x58]
007ffe44  00 60 e0 e3                                      mvn r6, #0
007ffe48  04 00 a0 e1                                      mov r0, r4
007ffe4c  08 10 a0 e1                                      mov r1, r8
007ffe50  a8 61 84 e5                                      str r6, [r4, #0x1a8]
007ffe54  fc 4c 00 eb                                      bl #0x81324c
007ffe58  04 00 a0 e1                                      mov r0, r4
007ffe5c  07 10 a0 e1                                      mov r1, r7
007ffe60  f9 4c 00 eb                                      bl #0x81324c
007ffe64  04 00 a0 e1                                      mov r0, r4
007ffe68  0b 10 a0 e1                                      mov r1, fp
007ffe6c  f6 4c 00 eb                                      bl #0x81324c
007ffe70  50 10 9d e5                                      ldr r1, [sp, #0x50]
007ffe74  09 20 95 e7                                      ldr r2, [r5, sb]
007ffe78  00 30 a0 e3                                      mov r3, #0
007ffe7c  06 00 51 e1                                      cmp r1, r6
007ffe80  20 10 a0 e3                                      mov r1, #0x20
007ffe84  08 20 82 e2                                      add r2, r2, #8
007ffe88  34 10 8d e5                                      str r1, [sp, #0x34]
007ffe8c  00 00 a0 e3                                      mov r0, #0
007ffe90  00 10 a0 e3                                      mov r1, #0
007ffe94  f8 03 cd e1                                      strd r0, r1, [sp, #0x38]
007ffe98  4c 30 cd e5                                      strb r3, [sp, #0x4c]
007ffe9c  30 20 8d e5                                      str r2, [sp, #0x30]
007ffea0  40 60 8d e5                                      str r6, [sp, #0x40]
007ffea4  44 60 8d e5                                      str r6, [sp, #0x44]
007ffea8  48 30 8d e5                                      str r3, [sp, #0x48]
007ffeac  30 90 8d 02                                      addeq sb, sp, #0x30
007ffeb0  03 00 00 0a                                      beq #0x7ffec4
007ffeb4  30 90 8d e2                                      add sb, sp, #0x30
007ffeb8  09 00 a0 e1                                      mov r0, sb
007ffebc  50 60 8d e5                                      str r6, [sp, #0x50]
007ffec0  2f 54 00 eb                                      bl #0x814f84
007ffec4  0a 30 95 e7                                      ldr r3, [r5, sl]
007ffec8  08 00 a0 e1                                      mov r0, r8
007ffecc  20 10 89 e2                                      add r1, sb, #0x20
007ffed0  08 30 83 e2                                      add r3, r3, #8
007ffed4  30 30 8d e5                                      str r3, [sp, #0x30]
007ffed8  30 31 94 e5                                      ldr r3, [r4, #0x130]
007ffedc  0f e0 a0 e1                                      mov lr, pc
007ffee0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007ffee4  ac 30 9f e5                                      ldr r3, [pc, #0xac]
007ffee8  00 20 9d e5                                      ldr r2, [sp]
007ffeec  00 80 a0 e3                                      mov r8, #0
007ffef0  03 00 95 e7                                      ldr r0, [r5, r3]
007ffef4  02 10 95 e7                                      ldr r1, [r5, r2]
007ffef8  28 30 9d e5                                      ldr r3, [sp, #0x28]
007ffefc  08 00 80 e2                                      add r0, r0, #8
007fff00  00 20 e0 e3                                      mvn r2, #0
007fff04  00 00 53 e3                                      cmp r3, #0
007fff08  08 10 81 e2                                      add r1, r1, #8
007fff0c  00 30 a0 e3                                      mov r3, #0
007fff10  30 00 8d e5                                      str r0, [sp, #0x30]
007fff14  00 90 a0 e3                                      mov sb, #0
007fff18  08 00 a0 e3                                      mov r0, #8
007fff1c  0c 00 8d e5                                      str r0, [sp, #0xc]
007fff20  f0 81 cd e1                                      strd r8, sb, [sp, #0x10]
007fff24  1c 20 8d e5                                      str r2, [sp, #0x1c]
007fff28  08 10 8d e5                                      str r1, [sp, #8]
007fff2c  18 20 8d e5                                      str r2, [sp, #0x18]
007fff30  20 30 8d e5                                      str r3, [sp, #0x20]
007fff34  24 30 cd e5                                      strb r3, [sp, #0x24]
007fff38  00 60 8d 00                                      addeq r6, sp, r0
007fff3c  03 00 00 0a                                      beq #0x7fff50
007fff40  08 60 8d e2                                      add r6, sp, #8
007fff44  06 00 a0 e1                                      mov r0, r6
007fff48  28 30 8d e5                                      str r3, [sp, #0x28]
007fff4c  0c 54 00 eb                                      bl #0x814f84
007fff50  04 20 9d e5                                      ldr r2, [sp, #4]
007fff54  07 00 a0 e1                                      mov r0, r7
007fff58  20 10 86 e2                                      add r1, r6, #0x20
007fff5c  02 30 95 e7                                      ldr r3, [r5, r2]
007fff60  08 30 83 e2                                      add r3, r3, #8
007fff64  08 30 8d e5                                      str r3, [sp, #8]
007fff68  58 31 94 e5                                      ldr r3, [r4, #0x158]
007fff6c  0f e0 a0 e1                                      mov lr, pc
007fff70  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007fff74  04 00 a0 e1                                      mov r0, r4
007fff78  64 d0 8d e2                                      add sp, sp, #0x64
007fff7c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
007fff80  70 4d 19 00 20 2b 00 00 84 29 00 00 68 40 00 00  .byte 0x70, 0x4d, 0x19, 0x00, 0x20, 0x2b, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0x68, 0x40, 0x00, 0x00
007fff90  c8 10 00 00 24 10 00 00 a8 10 00 00              .byte 0xc8, 0x10, 0x00, 0x00, 0x24, 0x10, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
