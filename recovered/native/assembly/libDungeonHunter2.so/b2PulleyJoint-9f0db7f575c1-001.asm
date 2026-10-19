; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007efc10, declared_size=1796, range_size=1796, mode=arm
; class-group: b2PulleyJoint
; alias: _ZN13b2PulleyJoint24SolveVelocityConstraintsERK10b2TimeStep
; demangled: b2PulleyJoint::SolveVelocityConstraints(b2TimeStep const&)
; decoder-mode: arm
007efc10  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007efc14  30 60 90 e5                                      ldr r6, [r0, #0x30]
007efc18  24 d0 4d e2                                      sub sp, sp, #0x24
007efc1c  00 40 a0 e1                                      mov r4, r0
007efc20  01 a0 a0 e1                                      mov sl, r1
007efc24  58 00 90 e5                                      ldr r0, [r0, #0x58]
007efc28  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
007efc2c  de 79 ec eb                                      bl #0x30e3ac
007efc30  20 10 96 e5                                      ldr r1, [r6, #0x20]
007efc34  00 80 a0 e1                                      mov r8, r0
007efc38  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
007efc3c  da 79 ec eb                                      bl #0x30e3ac
007efc40  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007efc44  00 70 a0 e1                                      mov r7, r0
007efc48  08 00 a0 e1                                      mov r0, r8
007efc4c  46 7c ec eb                                      bl #0x30ed6c
007efc50  14 10 96 e5                                      ldr r1, [r6, #0x14]
007efc54  00 50 a0 e1                                      mov r5, r0
007efc58  07 00 a0 e1                                      mov r0, r7
007efc5c  42 7c ec eb                                      bl #0x30ed6c
007efc60  00 10 a0 e1                                      mov r1, r0
007efc64  05 00 a0 e1                                      mov r0, r5
007efc68  cd 7b ec eb                                      bl #0x30eba4
007efc6c  10 10 96 e5                                      ldr r1, [r6, #0x10]
007efc70  00 b0 a0 e1                                      mov fp, r0
007efc74  08 00 a0 e1                                      mov r0, r8
007efc78  3b 7c ec eb                                      bl #0x30ed6c
007efc7c  18 10 96 e5                                      ldr r1, [r6, #0x18]
007efc80  00 80 a0 e1                                      mov r8, r0
007efc84  07 00 a0 e1                                      mov r0, r7
007efc88  37 7c ec eb                                      bl #0x30ed6c
007efc8c  00 10 a0 e1                                      mov r1, r0
007efc90  08 00 a0 e1                                      mov r0, r8
007efc94  c2 7b ec eb                                      bl #0x30eba4
007efc98  34 50 94 e5                                      ldr r5, [r4, #0x34]
007efc9c  14 00 8d e5                                      str r0, [sp, #0x14]
007efca0  60 00 94 e5                                      ldr r0, [r4, #0x60]
007efca4  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007efca8  bf 79 ec eb                                      bl #0x30e3ac
007efcac  20 10 95 e5                                      ldr r1, [r5, #0x20]
007efcb0  00 80 a0 e1                                      mov r8, r0
007efcb4  64 00 94 e5                                      ldr r0, [r4, #0x64]
007efcb8  bb 79 ec eb                                      bl #0x30e3ac
007efcbc  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007efcc0  00 70 a0 e1                                      mov r7, r0
007efcc4  08 00 a0 e1                                      mov r0, r8
007efcc8  27 7c ec eb                                      bl #0x30ed6c
007efccc  14 10 95 e5                                      ldr r1, [r5, #0x14]
007efcd0  00 90 a0 e1                                      mov sb, r0
007efcd4  07 00 a0 e1                                      mov r0, r7
007efcd8  23 7c ec eb                                      bl #0x30ed6c
007efcdc  00 10 a0 e1                                      mov r1, r0
007efce0  09 00 a0 e1                                      mov r0, sb
007efce4  ae 7b ec eb                                      bl #0x30eba4
007efce8  10 10 95 e5                                      ldr r1, [r5, #0x10]
007efcec  00 90 a0 e1                                      mov sb, r0
007efcf0  08 00 a0 e1                                      mov r0, r8
007efcf4  1c 7c ec eb                                      bl #0x30ed6c
007efcf8  18 10 95 e5                                      ldr r1, [r5, #0x18]
007efcfc  00 80 a0 e1                                      mov r8, r0
007efd00  07 00 a0 e1                                      mov r0, r7
007efd04  18 7c ec eb                                      bl #0x30ed6c
007efd08  00 10 a0 e1                                      mov r1, r0
007efd0c  08 00 a0 e1                                      mov r0, r8
007efd10  a3 7b ec eb                                      bl #0x30eba4
007efd14  ac 30 94 e5                                      ldr r3, [r4, #0xac]
007efd18  00 70 a0 e1                                      mov r7, r0
007efd1c  02 00 53 e3                                      cmp r3, #2
007efd20  c1 00 00 0a                                      beq #0x7f002c
007efd24  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
007efd28  02 00 53 e3                                      cmp r3, #2
007efd2c  5d 00 00 0a                                      beq #0x7efea8
007efd30  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
007efd34  02 00 53 e3                                      cmp r3, #2
007efd38  58 00 00 1a                                      bne #0x7efea0
007efd3c  48 60 95 e5                                      ldr r6, [r5, #0x48]
007efd40  07 00 a0 e1                                      mov r0, r7
007efd44  02 11 86 e2                                      add r1, r6, #0x80000000
007efd48  07 7c ec eb                                      bl #0x30ed6c
007efd4c  09 10 a0 e1                                      mov r1, sb
007efd50  00 80 a0 e1                                      mov r8, r0
007efd54  06 00 a0 e1                                      mov r0, r6
007efd58  03 7c ec eb                                      bl #0x30ed6c
007efd5c  00 b0 a0 e1                                      mov fp, r0
007efd60  04 00 9a e5                                      ldr r0, [sl, #4]
007efd64  90 10 94 e5                                      ldr r1, [r4, #0x90]
007efd68  9c 60 94 e5                                      ldr r6, [r4, #0x9c]
007efd6c  02 01 80 e2                                      add r0, r0, #0x80000000
007efd70  fd 7b ec eb                                      bl #0x30ed6c
007efd74  40 10 95 e5                                      ldr r1, [r5, #0x40]
007efd78  00 30 a0 e1                                      mov r3, r0
007efd7c  08 00 a0 e1                                      mov r0, r8
007efd80  04 30 8d e5                                      str r3, [sp, #4]
007efd84  86 7b ec eb                                      bl #0x30eba4
007efd88  70 10 94 e5                                      ldr r1, [r4, #0x70]
007efd8c  f6 7b ec eb                                      bl #0x30ed6c
007efd90  44 10 95 e5                                      ldr r1, [r5, #0x44]
007efd94  00 80 a0 e1                                      mov r8, r0
007efd98  0b 00 a0 e1                                      mov r0, fp
007efd9c  80 7b ec eb                                      bl #0x30eba4
007efda0  74 10 94 e5                                      ldr r1, [r4, #0x74]
007efda4  f0 7b ec eb                                      bl #0x30ed6c
007efda8  00 10 a0 e1                                      mov r1, r0
007efdac  08 00 a0 e1                                      mov r0, r8
007efdb0  7b 7b ec eb                                      bl #0x30eba4
007efdb4  04 30 9d e5                                      ldr r3, [sp, #4]
007efdb8  02 11 80 e2                                      add r1, r0, #0x80000000
007efdbc  03 00 a0 e1                                      mov r0, r3
007efdc0  e9 7b ec eb                                      bl #0x30ed6c
007efdc4  06 10 a0 e1                                      mov r1, r6
007efdc8  75 7b ec eb                                      bl #0x30eba4
007efdcc  00 10 a0 e3                                      mov r1, #0
007efdd0  00 80 a0 e1                                      mov r8, r0
007efdd4  4c 7a ec eb                                      bl #0x30e70c
007efdd8  00 00 50 e3                                      cmp r0, #0
007efddc  00 80 a0 13                                      movne r8, #0
007efde0  9c 80 84 e5                                      str r8, [r4, #0x9c]
007efde4  00 30 9a e5                                      ldr r3, [sl]
007efde8  06 10 a0 e1                                      mov r1, r6
007efdec  08 00 a0 e1                                      mov r0, r8
007efdf0  02 61 83 e2                                      add r6, r3, #0x80000000
007efdf4  6c 79 ec eb                                      bl #0x30e3ac
007efdf8  00 10 a0 e1                                      mov r1, r0
007efdfc  06 00 a0 e1                                      mov r0, r6
007efe00  d9 7b ec eb                                      bl #0x30ed6c
007efe04  70 10 94 e5                                      ldr r1, [r4, #0x70]
007efe08  00 80 a0 e1                                      mov r8, r0
007efe0c  d6 7b ec eb                                      bl #0x30ed6c
007efe10  74 10 94 e5                                      ldr r1, [r4, #0x74]
007efe14  00 60 a0 e1                                      mov r6, r0
007efe18  08 00 a0 e1                                      mov r0, r8
007efe1c  d2 7b ec eb                                      bl #0x30ed6c
007efe20  78 80 95 e5                                      ldr r8, [r5, #0x78]
007efe24  00 40 a0 e1                                      mov r4, r0
007efe28  06 10 a0 e1                                      mov r1, r6
007efe2c  08 00 a0 e1                                      mov r0, r8
007efe30  cd 7b ec eb                                      bl #0x30ed6c
007efe34  00 10 a0 e1                                      mov r1, r0
007efe38  40 00 95 e5                                      ldr r0, [r5, #0x40]
007efe3c  58 7b ec eb                                      bl #0x30eba4
007efe40  04 10 a0 e1                                      mov r1, r4
007efe44  40 00 85 e5                                      str r0, [r5, #0x40]
007efe48  08 00 a0 e1                                      mov r0, r8
007efe4c  c6 7b ec eb                                      bl #0x30ed6c
007efe50  00 10 a0 e1                                      mov r1, r0
007efe54  44 00 95 e5                                      ldr r0, [r5, #0x44]
007efe58  51 7b ec eb                                      bl #0x30eba4
007efe5c  04 10 a0 e1                                      mov r1, r4
007efe60  44 00 85 e5                                      str r0, [r5, #0x44]
007efe64  09 00 a0 e1                                      mov r0, sb
007efe68  bf 7b ec eb                                      bl #0x30ed6c
007efe6c  06 10 a0 e1                                      mov r1, r6
007efe70  00 40 a0 e1                                      mov r4, r0
007efe74  07 00 a0 e1                                      mov r0, r7
007efe78  bb 7b ec eb                                      bl #0x30ed6c
007efe7c  00 10 a0 e1                                      mov r1, r0
007efe80  04 00 a0 e1                                      mov r0, r4
007efe84  48 79 ec eb                                      bl #0x30e3ac
007efe88  80 10 95 e5                                      ldr r1, [r5, #0x80]
007efe8c  b6 7b ec eb                                      bl #0x30ed6c
007efe90  00 10 a0 e1                                      mov r1, r0
007efe94  48 00 95 e5                                      ldr r0, [r5, #0x48]
007efe98  41 7b ec eb                                      bl #0x30eba4
007efe9c  48 00 85 e5                                      str r0, [r5, #0x48]
007efea0  24 d0 8d e2                                      add sp, sp, #0x24
007efea4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007efea8  48 80 96 e5                                      ldr r8, [r6, #0x48]
007efeac  14 00 9d e5                                      ldr r0, [sp, #0x14]
007efeb0  02 11 88 e2                                      add r1, r8, #0x80000000
007efeb4  ac 7b ec eb                                      bl #0x30ed6c
007efeb8  0b 10 a0 e1                                      mov r1, fp
007efebc  00 30 a0 e1                                      mov r3, r0
007efec0  08 00 a0 e1                                      mov r0, r8
007efec4  04 30 8d e5                                      str r3, [sp, #4]
007efec8  a7 7b ec eb                                      bl #0x30ed6c
007efecc  00 20 a0 e1                                      mov r2, r0
007efed0  04 00 9a e5                                      ldr r0, [sl, #4]
007efed4  98 c0 94 e5                                      ldr ip, [r4, #0x98]
007efed8  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
007efedc  02 01 80 e2                                      add r0, r0, #0x80000000
007efee0  0c 20 8d e5                                      str r2, [sp, #0xc]
007efee4  10 c0 8d e5                                      str ip, [sp, #0x10]
007efee8  9f 7b ec eb                                      bl #0x30ed6c
007efeec  04 30 9d e5                                      ldr r3, [sp, #4]
007efef0  00 c0 a0 e1                                      mov ip, r0
007efef4  40 10 96 e5                                      ldr r1, [r6, #0x40]
007efef8  03 00 a0 e1                                      mov r0, r3
007efefc  08 c0 8d e5                                      str ip, [sp, #8]
007eff00  27 7b ec eb                                      bl #0x30eba4
007eff04  68 10 94 e5                                      ldr r1, [r4, #0x68]
007eff08  97 7b ec eb                                      bl #0x30ed6c
007eff0c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007eff10  44 10 96 e5                                      ldr r1, [r6, #0x44]
007eff14  00 80 a0 e1                                      mov r8, r0
007eff18  02 00 a0 e1                                      mov r0, r2
007eff1c  20 7b ec eb                                      bl #0x30eba4
007eff20  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
007eff24  90 7b ec eb                                      bl #0x30ed6c
007eff28  00 10 a0 e1                                      mov r1, r0
007eff2c  08 00 a0 e1                                      mov r0, r8
007eff30  1b 7b ec eb                                      bl #0x30eba4
007eff34  08 c0 9d e5                                      ldr ip, [sp, #8]
007eff38  02 11 80 e2                                      add r1, r0, #0x80000000
007eff3c  0c 00 a0 e1                                      mov r0, ip
007eff40  89 7b ec eb                                      bl #0x30ed6c
007eff44  10 10 9d e5                                      ldr r1, [sp, #0x10]
007eff48  15 7b ec eb                                      bl #0x30eba4
007eff4c  00 10 a0 e3                                      mov r1, #0
007eff50  00 80 a0 e1                                      mov r8, r0
007eff54  ec 79 ec eb                                      bl #0x30e70c
007eff58  00 00 50 e3                                      cmp r0, #0
007eff5c  00 80 a0 13                                      movne r8, #0
007eff60  98 80 84 e5                                      str r8, [r4, #0x98]
007eff64  00 30 9a e5                                      ldr r3, [sl]
007eff68  10 10 9d e5                                      ldr r1, [sp, #0x10]
007eff6c  08 00 a0 e1                                      mov r0, r8
007eff70  02 81 83 e2                                      add r8, r3, #0x80000000
007eff74  0c 79 ec eb                                      bl #0x30e3ac
007eff78  00 10 a0 e1                                      mov r1, r0
007eff7c  08 00 a0 e1                                      mov r0, r8
007eff80  79 7b ec eb                                      bl #0x30ed6c
007eff84  68 10 94 e5                                      ldr r1, [r4, #0x68]
007eff88  00 80 a0 e1                                      mov r8, r0
007eff8c  76 7b ec eb                                      bl #0x30ed6c
007eff90  10 00 8d e5                                      str r0, [sp, #0x10]
007eff94  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
007eff98  08 00 a0 e1                                      mov r0, r8
007eff9c  72 7b ec eb                                      bl #0x30ed6c
007effa0  78 30 96 e5                                      ldr r3, [r6, #0x78]
007effa4  00 80 a0 e1                                      mov r8, r0
007effa8  10 10 9d e5                                      ldr r1, [sp, #0x10]
007effac  03 00 a0 e1                                      mov r0, r3
007effb0  04 30 8d e5                                      str r3, [sp, #4]
007effb4  6c 7b ec eb                                      bl #0x30ed6c
007effb8  00 10 a0 e1                                      mov r1, r0
007effbc  40 00 96 e5                                      ldr r0, [r6, #0x40]
007effc0  f7 7a ec eb                                      bl #0x30eba4
007effc4  40 00 86 e5                                      str r0, [r6, #0x40]
007effc8  04 30 9d e5                                      ldr r3, [sp, #4]
007effcc  08 10 a0 e1                                      mov r1, r8
007effd0  03 00 a0 e1                                      mov r0, r3
007effd4  64 7b ec eb                                      bl #0x30ed6c
007effd8  00 10 a0 e1                                      mov r1, r0
007effdc  44 00 96 e5                                      ldr r0, [r6, #0x44]
007effe0  ef 7a ec eb                                      bl #0x30eba4
007effe4  08 10 a0 e1                                      mov r1, r8
007effe8  44 00 86 e5                                      str r0, [r6, #0x44]
007effec  0b 00 a0 e1                                      mov r0, fp
007efff0  5d 7b ec eb                                      bl #0x30ed6c
007efff4  10 10 9d e5                                      ldr r1, [sp, #0x10]
007efff8  00 80 a0 e1                                      mov r8, r0
007efffc  14 00 9d e5                                      ldr r0, [sp, #0x14]
007f0000  59 7b ec eb                                      bl #0x30ed6c
007f0004  00 10 a0 e1                                      mov r1, r0
007f0008  08 00 a0 e1                                      mov r0, r8
007f000c  e6 78 ec eb                                      bl #0x30e3ac
007f0010  80 10 96 e5                                      ldr r1, [r6, #0x80]
007f0014  54 7b ec eb                                      bl #0x30ed6c
007f0018  00 10 a0 e1                                      mov r1, r0
007f001c  48 00 96 e5                                      ldr r0, [r6, #0x48]
007f0020  df 7a ec eb                                      bl #0x30eba4
007f0024  48 00 86 e5                                      str r0, [r6, #0x48]
007f0028  40 ff ff ea                                      b #0x7efd30
007f002c  48 80 96 e5                                      ldr r8, [r6, #0x48]
007f0030  14 00 9d e5                                      ldr r0, [sp, #0x14]
007f0034  02 11 88 e2                                      add r1, r8, #0x80000000
007f0038  4b 7b ec eb                                      bl #0x30ed6c
007f003c  0b 10 a0 e1                                      mov r1, fp
007f0040  00 30 a0 e1                                      mov r3, r0
007f0044  08 00 a0 e1                                      mov r0, r8
007f0048  04 30 8d e5                                      str r3, [sp, #4]
007f004c  46 7b ec eb                                      bl #0x30ed6c
007f0050  04 30 9d e5                                      ldr r3, [sp, #4]
007f0054  40 10 96 e5                                      ldr r1, [r6, #0x40]
007f0058  00 80 a0 e1                                      mov r8, r0
007f005c  03 00 a0 e1                                      mov r0, r3
007f0060  cf 7a ec eb                                      bl #0x30eba4
007f0064  44 10 96 e5                                      ldr r1, [r6, #0x44]
007f0068  00 30 a0 e1                                      mov r3, r0
007f006c  08 00 a0 e1                                      mov r0, r8
007f0070  04 30 8d e5                                      str r3, [sp, #4]
007f0074  ca 7a ec eb                                      bl #0x30eba4
007f0078  48 80 95 e5                                      ldr r8, [r5, #0x48]
007f007c  00 20 a0 e1                                      mov r2, r0
007f0080  07 00 a0 e1                                      mov r0, r7
007f0084  02 11 88 e2                                      add r1, r8, #0x80000000
007f0088  0c 20 8d e5                                      str r2, [sp, #0xc]
007f008c  36 7b ec eb                                      bl #0x30ed6c
007f0090  09 10 a0 e1                                      mov r1, sb
007f0094  00 c0 a0 e1                                      mov ip, r0
007f0098  08 00 a0 e1                                      mov r0, r8
007f009c  08 c0 8d e5                                      str ip, [sp, #8]
007f00a0  31 7b ec eb                                      bl #0x30ed6c
007f00a4  18 00 8d e5                                      str r0, [sp, #0x18]
007f00a8  04 00 9a e5                                      ldr r0, [sl, #4]
007f00ac  94 e0 94 e5                                      ldr lr, [r4, #0x94]
007f00b0  88 10 94 e5                                      ldr r1, [r4, #0x88]
007f00b4  02 01 80 e2                                      add r0, r0, #0x80000000
007f00b8  10 e0 8d e5                                      str lr, [sp, #0x10]
007f00bc  2a 7b ec eb                                      bl #0x30ed6c
007f00c0  04 30 9d e5                                      ldr r3, [sp, #4]
007f00c4  1c 00 8d e5                                      str r0, [sp, #0x1c]
007f00c8  68 10 94 e5                                      ldr r1, [r4, #0x68]
007f00cc  03 00 a0 e1                                      mov r0, r3
007f00d0  25 7b ec eb                                      bl #0x30ed6c
007f00d4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007f00d8  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
007f00dc  00 80 a0 e1                                      mov r8, r0
007f00e0  02 00 a0 e1                                      mov r0, r2
007f00e4  20 7b ec eb                                      bl #0x30ed6c
007f00e8  00 10 a0 e1                                      mov r1, r0
007f00ec  08 00 a0 e1                                      mov r0, r8
007f00f0  ab 7a ec eb                                      bl #0x30eba4
007f00f4  08 c0 9d e5                                      ldr ip, [sp, #8]
007f00f8  02 31 80 e2                                      add r3, r0, #0x80000000
007f00fc  40 10 95 e5                                      ldr r1, [r5, #0x40]
007f0100  0c 00 a0 e1                                      mov r0, ip
007f0104  04 30 8d e5                                      str r3, [sp, #4]
007f0108  a5 7a ec eb                                      bl #0x30eba4
007f010c  70 10 94 e5                                      ldr r1, [r4, #0x70]
007f0110  15 7b ec eb                                      bl #0x30ed6c
007f0114  44 10 95 e5                                      ldr r1, [r5, #0x44]
007f0118  00 80 a0 e1                                      mov r8, r0
007f011c  18 00 9d e5                                      ldr r0, [sp, #0x18]
007f0120  9f 7a ec eb                                      bl #0x30eba4
007f0124  74 10 94 e5                                      ldr r1, [r4, #0x74]
007f0128  0f 7b ec eb                                      bl #0x30ed6c
007f012c  00 10 a0 e1                                      mov r1, r0
007f0130  08 00 a0 e1                                      mov r0, r8
007f0134  9a 7a ec eb                                      bl #0x30eba4
007f0138  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
007f013c  0a 7b ec eb                                      bl #0x30ed6c
007f0140  04 30 9d e5                                      ldr r3, [sp, #4]
007f0144  00 10 a0 e1                                      mov r1, r0
007f0148  03 00 a0 e1                                      mov r0, r3
007f014c  96 78 ec eb                                      bl #0x30e3ac
007f0150  00 10 a0 e1                                      mov r1, r0
007f0154  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007f0158  03 7b ec eb                                      bl #0x30ed6c
007f015c  10 10 9d e5                                      ldr r1, [sp, #0x10]
007f0160  8f 7a ec eb                                      bl #0x30eba4
007f0164  00 10 a0 e3                                      mov r1, #0
007f0168  00 80 a0 e1                                      mov r8, r0
007f016c  66 79 ec eb                                      bl #0x30e70c
007f0170  00 00 50 e3                                      cmp r0, #0
007f0174  00 80 a0 13                                      movne r8, #0
007f0178  10 10 9d e5                                      ldr r1, [sp, #0x10]
007f017c  08 00 a0 e1                                      mov r0, r8
007f0180  94 80 84 e5                                      str r8, [r4, #0x94]
007f0184  88 78 ec eb                                      bl #0x30e3ac
007f0188  00 80 9a e5                                      ldr r8, [sl]
007f018c  00 30 a0 e1                                      mov r3, r0
007f0190  00 10 a0 e1                                      mov r1, r0
007f0194  02 81 88 e2                                      add r8, r8, #0x80000000
007f0198  08 00 a0 e1                                      mov r0, r8
007f019c  04 30 8d e5                                      str r3, [sp, #4]
007f01a0  f1 7a ec eb                                      bl #0x30ed6c
007f01a4  68 10 94 e5                                      ldr r1, [r4, #0x68]
007f01a8  0c 00 8d e5                                      str r0, [sp, #0xc]
007f01ac  ee 7a ec eb                                      bl #0x30ed6c
007f01b0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007f01b4  10 00 8d e5                                      str r0, [sp, #0x10]
007f01b8  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
007f01bc  02 00 a0 e1                                      mov r0, r2
007f01c0  e9 7a ec eb                                      bl #0x30ed6c
007f01c4  18 00 8d e5                                      str r0, [sp, #0x18]
007f01c8  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
007f01cc  08 00 a0 e1                                      mov r0, r8
007f01d0  e5 7a ec eb                                      bl #0x30ed6c
007f01d4  04 30 9d e5                                      ldr r3, [sp, #4]
007f01d8  03 10 a0 e1                                      mov r1, r3
007f01dc  e2 7a ec eb                                      bl #0x30ed6c
007f01e0  70 10 94 e5                                      ldr r1, [r4, #0x70]
007f01e4  00 80 a0 e1                                      mov r8, r0
007f01e8  df 7a ec eb                                      bl #0x30ed6c
007f01ec  1c 00 8d e5                                      str r0, [sp, #0x1c]
007f01f0  74 10 94 e5                                      ldr r1, [r4, #0x74]
007f01f4  08 00 a0 e1                                      mov r0, r8
007f01f8  db 7a ec eb                                      bl #0x30ed6c
007f01fc  78 30 96 e5                                      ldr r3, [r6, #0x78]
007f0200  10 10 9d e5                                      ldr r1, [sp, #0x10]
007f0204  00 80 a0 e1                                      mov r8, r0
007f0208  03 00 a0 e1                                      mov r0, r3
007f020c  04 30 8d e5                                      str r3, [sp, #4]
007f0210  d5 7a ec eb                                      bl #0x30ed6c
007f0214  00 10 a0 e1                                      mov r1, r0
007f0218  40 00 96 e5                                      ldr r0, [r6, #0x40]
007f021c  60 7a ec eb                                      bl #0x30eba4
007f0220  40 00 86 e5                                      str r0, [r6, #0x40]
007f0224  04 30 9d e5                                      ldr r3, [sp, #4]
007f0228  18 10 9d e5                                      ldr r1, [sp, #0x18]
007f022c  03 00 a0 e1                                      mov r0, r3
007f0230  cd 7a ec eb                                      bl #0x30ed6c
007f0234  00 10 a0 e1                                      mov r1, r0
007f0238  44 00 96 e5                                      ldr r0, [r6, #0x44]
007f023c  58 7a ec eb                                      bl #0x30eba4
007f0240  44 00 86 e5                                      str r0, [r6, #0x44]
007f0244  18 10 9d e5                                      ldr r1, [sp, #0x18]
007f0248  0b 00 a0 e1                                      mov r0, fp
007f024c  c6 7a ec eb                                      bl #0x30ed6c
007f0250  10 10 9d e5                                      ldr r1, [sp, #0x10]
007f0254  00 30 a0 e1                                      mov r3, r0
007f0258  14 00 9d e5                                      ldr r0, [sp, #0x14]
007f025c  04 30 8d e5                                      str r3, [sp, #4]
007f0260  c1 7a ec eb                                      bl #0x30ed6c
007f0264  04 30 9d e5                                      ldr r3, [sp, #4]
007f0268  00 10 a0 e1                                      mov r1, r0
007f026c  03 00 a0 e1                                      mov r0, r3
007f0270  4d 78 ec eb                                      bl #0x30e3ac
007f0274  80 10 96 e5                                      ldr r1, [r6, #0x80]
007f0278  bb 7a ec eb                                      bl #0x30ed6c
007f027c  00 10 a0 e1                                      mov r1, r0
007f0280  48 00 96 e5                                      ldr r0, [r6, #0x48]
007f0284  46 7a ec eb                                      bl #0x30eba4
007f0288  48 00 86 e5                                      str r0, [r6, #0x48]
007f028c  78 30 95 e5                                      ldr r3, [r5, #0x78]
007f0290  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007f0294  03 00 a0 e1                                      mov r0, r3
007f0298  04 30 8d e5                                      str r3, [sp, #4]
007f029c  b2 7a ec eb                                      bl #0x30ed6c
007f02a0  00 10 a0 e1                                      mov r1, r0
007f02a4  40 00 95 e5                                      ldr r0, [r5, #0x40]
007f02a8  3d 7a ec eb                                      bl #0x30eba4
007f02ac  40 00 85 e5                                      str r0, [r5, #0x40]
007f02b0  04 30 9d e5                                      ldr r3, [sp, #4]
007f02b4  08 10 a0 e1                                      mov r1, r8
007f02b8  03 00 a0 e1                                      mov r0, r3
007f02bc  aa 7a ec eb                                      bl #0x30ed6c
007f02c0  00 10 a0 e1                                      mov r1, r0
007f02c4  44 00 95 e5                                      ldr r0, [r5, #0x44]
007f02c8  35 7a ec eb                                      bl #0x30eba4
007f02cc  08 10 a0 e1                                      mov r1, r8
007f02d0  44 00 85 e5                                      str r0, [r5, #0x44]
007f02d4  09 00 a0 e1                                      mov r0, sb
007f02d8  a3 7a ec eb                                      bl #0x30ed6c
007f02dc  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007f02e0  00 80 a0 e1                                      mov r8, r0
007f02e4  07 00 a0 e1                                      mov r0, r7
007f02e8  9f 7a ec eb                                      bl #0x30ed6c
007f02ec  00 10 a0 e1                                      mov r1, r0
007f02f0  08 00 a0 e1                                      mov r0, r8
007f02f4  2c 78 ec eb                                      bl #0x30e3ac
007f02f8  80 10 95 e5                                      ldr r1, [r5, #0x80]
007f02fc  9a 7a ec eb                                      bl #0x30ed6c
007f0300  00 10 a0 e1                                      mov r1, r0
007f0304  48 00 95 e5                                      ldr r0, [r5, #0x48]
007f0308  25 7a ec eb                                      bl #0x30eba4
007f030c  48 00 85 e5                                      str r0, [r5, #0x48]
007f0310  83 fe ff ea                                      b #0x7efd24

; FUNCTION 0x007f0314, declared_size=144, range_size=144, mode=arm
; class-group: b2PulleyJoint
; alias: _ZNK13b2PulleyJoint10GetAnchor1Ev
; demangled: b2PulleyJoint::GetAnchor1() const
; decoder-mode: arm
007f0314  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007f0318  30 40 91 e5                                      ldr r4, [r1, #0x30]
007f031c  58 70 91 e5                                      ldr r7, [r1, #0x58]
007f0320  5c 60 91 e5                                      ldr r6, [r1, #0x5c]
007f0324  00 50 a0 e1                                      mov r5, r0
007f0328  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007f032c  07 00 a0 e1                                      mov r0, r7
007f0330  8d 7a ec eb                                      bl #0x30ed6c
007f0334  14 10 94 e5                                      ldr r1, [r4, #0x14]
007f0338  00 80 a0 e1                                      mov r8, r0
007f033c  06 00 a0 e1                                      mov r0, r6
007f0340  89 7a ec eb                                      bl #0x30ed6c
007f0344  00 10 a0 e1                                      mov r1, r0
007f0348  08 00 a0 e1                                      mov r0, r8
007f034c  14 7a ec eb                                      bl #0x30eba4
007f0350  10 10 94 e5                                      ldr r1, [r4, #0x10]
007f0354  00 80 a0 e1                                      mov r8, r0
007f0358  07 00 a0 e1                                      mov r0, r7
007f035c  82 7a ec eb                                      bl #0x30ed6c
007f0360  18 10 94 e5                                      ldr r1, [r4, #0x18]
007f0364  00 70 a0 e1                                      mov r7, r0
007f0368  06 00 a0 e1                                      mov r0, r6
007f036c  7e 7a ec eb                                      bl #0x30ed6c
007f0370  00 10 a0 e1                                      mov r1, r0
007f0374  07 00 a0 e1                                      mov r0, r7
007f0378  09 7a ec eb                                      bl #0x30eba4
007f037c  08 10 94 e5                                      ldr r1, [r4, #8]
007f0380  07 7a ec eb                                      bl #0x30eba4
007f0384  04 10 94 e5                                      ldr r1, [r4, #4]
007f0388  00 60 a0 e1                                      mov r6, r0
007f038c  08 00 a0 e1                                      mov r0, r8
007f0390  03 7a ec eb                                      bl #0x30eba4
007f0394  04 60 85 e5                                      str r6, [r5, #4]
007f0398  00 00 85 e5                                      str r0, [r5]
007f039c  05 00 a0 e1                                      mov r0, r5
007f03a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007f03a4, declared_size=144, range_size=144, mode=arm
; class-group: b2PulleyJoint
; alias: _ZNK13b2PulleyJoint10GetAnchor2Ev
; demangled: b2PulleyJoint::GetAnchor2() const
; decoder-mode: arm
007f03a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007f03a8  34 40 91 e5                                      ldr r4, [r1, #0x34]
007f03ac  60 70 91 e5                                      ldr r7, [r1, #0x60]
007f03b0  64 60 91 e5                                      ldr r6, [r1, #0x64]
007f03b4  00 50 a0 e1                                      mov r5, r0
007f03b8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007f03bc  07 00 a0 e1                                      mov r0, r7
007f03c0  69 7a ec eb                                      bl #0x30ed6c
007f03c4  14 10 94 e5                                      ldr r1, [r4, #0x14]
007f03c8  00 80 a0 e1                                      mov r8, r0
007f03cc  06 00 a0 e1                                      mov r0, r6
007f03d0  65 7a ec eb                                      bl #0x30ed6c
007f03d4  00 10 a0 e1                                      mov r1, r0
007f03d8  08 00 a0 e1                                      mov r0, r8
007f03dc  f0 79 ec eb                                      bl #0x30eba4
007f03e0  10 10 94 e5                                      ldr r1, [r4, #0x10]
007f03e4  00 80 a0 e1                                      mov r8, r0
007f03e8  07 00 a0 e1                                      mov r0, r7
007f03ec  5e 7a ec eb                                      bl #0x30ed6c
007f03f0  18 10 94 e5                                      ldr r1, [r4, #0x18]
007f03f4  00 70 a0 e1                                      mov r7, r0
007f03f8  06 00 a0 e1                                      mov r0, r6
007f03fc  5a 7a ec eb                                      bl #0x30ed6c
007f0400  00 10 a0 e1                                      mov r1, r0
007f0404  07 00 a0 e1                                      mov r0, r7
007f0408  e5 79 ec eb                                      bl #0x30eba4
007f040c  08 10 94 e5                                      ldr r1, [r4, #8]
007f0410  e3 79 ec eb                                      bl #0x30eba4
007f0414  04 10 94 e5                                      ldr r1, [r4, #4]
007f0418  00 60 a0 e1                                      mov r6, r0
007f041c  08 00 a0 e1                                      mov r0, r8
007f0420  df 79 ec eb                                      bl #0x30eba4
007f0424  04 60 85 e5                                      str r6, [r5, #4]
007f0428  00 00 85 e5                                      str r0, [r5]
007f042c  05 00 a0 e1                                      mov r0, r5
007f0430  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007f0434, declared_size=60, range_size=60, mode=arm
; class-group: b2PulleyJoint
; alias: _ZNK13b2PulleyJoint16GetReactionForceEv
; demangled: b2PulleyJoint::GetReactionForce() const
; decoder-mode: arm
007f0434  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007f0438  94 60 91 e5                                      ldr r6, [r1, #0x94]
007f043c  00 40 a0 e1                                      mov r4, r0
007f0440  01 50 a0 e1                                      mov r5, r1
007f0444  06 00 a0 e1                                      mov r0, r6
007f0448  74 10 91 e5                                      ldr r1, [r1, #0x74]
007f044c  46 7a ec eb                                      bl #0x30ed6c
007f0450  70 10 95 e5                                      ldr r1, [r5, #0x70]
007f0454  00 70 a0 e1                                      mov r7, r0
007f0458  06 00 a0 e1                                      mov r0, r6
007f045c  42 7a ec eb                                      bl #0x30ed6c
007f0460  04 70 84 e5                                      str r7, [r4, #4]
007f0464  00 00 84 e5                                      str r0, [r4]
007f0468  04 00 a0 e1                                      mov r0, r4
007f046c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007f0470, declared_size=8, range_size=8, mode=arm
; class-group: b2PulleyJoint
; alias: _ZNK13b2PulleyJoint17GetReactionTorqueEv
; demangled: b2PulleyJoint::GetReactionTorque() const
; decoder-mode: arm
007f0470  00 00 a0 e3                                      mov r0, #0
007f0474  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f0478, declared_size=60, range_size=60, mode=arm
; class-group: b2PulleyJoint
; alias: _ZNK13b2PulleyJoint16GetGroundAnchor1Ev
; demangled: b2PulleyJoint::GetGroundAnchor1() const
; decoder-mode: arm
007f0478  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007f047c  44 60 91 e5                                      ldr r6, [r1, #0x44]
007f0480  00 40 a0 e1                                      mov r4, r0
007f0484  01 50 a0 e1                                      mov r5, r1
007f0488  08 00 96 e5                                      ldr r0, [r6, #8]
007f048c  4c 10 91 e5                                      ldr r1, [r1, #0x4c]
007f0490  c3 79 ec eb                                      bl #0x30eba4
007f0494  48 10 95 e5                                      ldr r1, [r5, #0x48]
007f0498  00 70 a0 e1                                      mov r7, r0
007f049c  04 00 96 e5                                      ldr r0, [r6, #4]
007f04a0  bf 79 ec eb                                      bl #0x30eba4
007f04a4  04 70 84 e5                                      str r7, [r4, #4]
007f04a8  00 00 84 e5                                      str r0, [r4]
007f04ac  04 00 a0 e1                                      mov r0, r4
007f04b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007f04b4, declared_size=60, range_size=60, mode=arm
; class-group: b2PulleyJoint
; alias: _ZNK13b2PulleyJoint16GetGroundAnchor2Ev
; demangled: b2PulleyJoint::GetGroundAnchor2() const
; decoder-mode: arm
007f04b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007f04b8  44 60 91 e5                                      ldr r6, [r1, #0x44]
007f04bc  00 40 a0 e1                                      mov r4, r0
007f04c0  01 50 a0 e1                                      mov r5, r1
007f04c4  08 00 96 e5                                      ldr r0, [r6, #8]
007f04c8  54 10 91 e5                                      ldr r1, [r1, #0x54]
007f04cc  b4 79 ec eb                                      bl #0x30eba4
007f04d0  50 10 95 e5                                      ldr r1, [r5, #0x50]
007f04d4  00 70 a0 e1                                      mov r7, r0
007f04d8  04 00 96 e5                                      ldr r0, [r6, #4]
007f04dc  b0 79 ec eb                                      bl #0x30eba4
007f04e0  04 70 84 e5                                      str r7, [r4, #4]
007f04e4  00 00 84 e5                                      str r0, [r4]
007f04e8  04 00 a0 e1                                      mov r0, r4
007f04ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007f04f0, declared_size=8, range_size=8, mode=arm
; class-group: b2PulleyJoint
; alias: _ZNK13b2PulleyJoint8GetRatioEv
; demangled: b2PulleyJoint::GetRatio() const
; decoder-mode: arm
007f04f0  7c 00 90 e5                                      ldr r0, [r0, #0x7c]
007f04f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f04f8, declared_size=4, range_size=4, mode=arm
; class-group: b2PulleyJoint
; alias: _ZN13b2PulleyJointD1Ev
; demangled: b2PulleyJoint::~b2PulleyJoint()
; decoder-mode: arm
007f04f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f04fc, declared_size=20, range_size=20, mode=arm
; class-group: b2PulleyJoint
; alias: _ZN13b2PulleyJointD0Ev
; demangled: b2PulleyJoint::~b2PulleyJoint()
; decoder-mode: arm
007f04fc  10 40 2d e9                                      push {r4, lr}
007f0500  00 40 a0 e1                                      mov r4, r0
007f0504  69 77 ec eb                                      bl #0x30e2b0
007f0508  04 00 a0 e1                                      mov r0, r4
007f050c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007f0510, declared_size=344, range_size=344, mode=arm
; class-group: b2PulleyJoint
; alias: _ZN13b2PulleyJointC1EPK16b2PulleyJointDef
; demangled: b2PulleyJoint::b2PulleyJoint(b2PulleyJointDef const*)
; decoder-mode: arm
007f0510  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007f0514  44 61 9f e5                                      ldr r6, [pc, #0x144]
007f0518  00 40 a0 e1                                      mov r4, r0
007f051c  01 50 a0 e1                                      mov r5, r1
007f0520  2e eb ff eb                                      bl #0x7eb1e0
007f0524  38 21 9f e5                                      ldr r2, [pc, #0x138]
007f0528  06 60 8f e0                                      add r6, pc, r6
007f052c  30 10 94 e5                                      ldr r1, [r4, #0x30]
007f0530  02 20 96 e7                                      ldr r2, [r6, r2]
007f0534  19 3a a0 e3                                      mov r3, #0x19000
007f0538  95 3f 83 e2                                      add r3, r3, #0x254
007f053c  08 20 82 e2                                      add r2, r2, #8
007f0540  00 20 84 e5                                      str r2, [r4]
007f0544  58 20 91 e5                                      ldr r2, [r1, #0x58]
007f0548  03 60 92 e7                                      ldr r6, [r2, r3]
007f054c  44 60 84 e5                                      str r6, [r4, #0x44]
007f0550  04 10 96 e5                                      ldr r1, [r6, #4]
007f0554  14 00 95 e5                                      ldr r0, [r5, #0x14]
007f0558  93 77 ec eb                                      bl #0x30e3ac
007f055c  08 10 96 e5                                      ldr r1, [r6, #8]
007f0560  00 70 a0 e1                                      mov r7, r0
007f0564  18 00 95 e5                                      ldr r0, [r5, #0x18]
007f0568  8f 77 ec eb                                      bl #0x30e3ac
007f056c  48 70 84 e5                                      str r7, [r4, #0x48]
007f0570  4c 00 84 e5                                      str r0, [r4, #0x4c]
007f0574  04 10 96 e5                                      ldr r1, [r6, #4]
007f0578  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
007f057c  8a 77 ec eb                                      bl #0x30e3ac
007f0580  08 10 96 e5                                      ldr r1, [r6, #8]
007f0584  00 70 a0 e1                                      mov r7, r0
007f0588  20 00 95 e5                                      ldr r0, [r5, #0x20]
007f058c  86 77 ec eb                                      bl #0x30e3ac
007f0590  50 70 84 e5                                      str r7, [r4, #0x50]
007f0594  54 00 84 e5                                      str r0, [r4, #0x54]
007f0598  24 30 95 e5                                      ldr r3, [r5, #0x24]
007f059c  58 30 84 e5                                      str r3, [r4, #0x58]
007f05a0  28 30 95 e5                                      ldr r3, [r5, #0x28]
007f05a4  5c 30 84 e5                                      str r3, [r4, #0x5c]
007f05a8  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
007f05ac  60 30 84 e5                                      str r3, [r4, #0x60]
007f05b0  30 30 95 e5                                      ldr r3, [r5, #0x30]
007f05b4  64 30 84 e5                                      str r3, [r4, #0x64]
007f05b8  44 60 95 e5                                      ldr r6, [r5, #0x44]
007f05bc  7c 60 84 e5                                      str r6, [r4, #0x7c]
007f05c0  3c 10 95 e5                                      ldr r1, [r5, #0x3c]
007f05c4  06 00 a0 e1                                      mov r0, r6
007f05c8  e7 79 ec eb                                      bl #0x30ed6c
007f05cc  34 10 95 e5                                      ldr r1, [r5, #0x34]
007f05d0  73 79 ec eb                                      bl #0x30eba4
007f05d4  03 11 a0 e3                                      mov r1, #0xc0000000
007f05d8  00 70 a0 e1                                      mov r7, r0
007f05dc  78 00 84 e5                                      str r0, [r4, #0x78]
007f05e0  06 00 a0 e1                                      mov r0, r6
007f05e4  e0 79 ec eb                                      bl #0x30ed6c
007f05e8  00 10 a0 e1                                      mov r1, r0
007f05ec  07 00 a0 e1                                      mov r0, r7
007f05f0  6b 79 ec eb                                      bl #0x30eba4
007f05f4  38 80 95 e5                                      ldr r8, [r5, #0x38]
007f05f8  00 a0 a0 e1                                      mov sl, r0
007f05fc  0a 10 a0 e1                                      mov r1, sl
007f0600  08 00 a0 e1                                      mov r0, r8
007f0604  40 78 ec eb                                      bl #0x30e70c
007f0608  00 00 50 e3                                      cmp r0, #0
007f060c  0a 80 a0 01                                      moveq r8, sl
007f0610  80 80 84 e5                                      str r8, [r4, #0x80]
007f0614  07 00 a0 e1                                      mov r0, r7
007f0618  01 11 a0 e3                                      mov r1, #0x40000000
007f061c  62 77 ec eb                                      bl #0x30e3ac
007f0620  06 10 a0 e1                                      mov r1, r6
007f0624  9a 79 ec eb                                      bl #0x30ec94
007f0628  40 50 95 e5                                      ldr r5, [r5, #0x40]
007f062c  00 60 a0 e1                                      mov r6, r0
007f0630  06 10 a0 e1                                      mov r1, r6
007f0634  05 00 a0 e1                                      mov r0, r5
007f0638  33 78 ec eb                                      bl #0x30e70c
007f063c  00 00 50 e3                                      cmp r0, #0
007f0640  00 30 a0 e3                                      mov r3, #0
007f0644  06 50 a0 01                                      moveq r5, r6
007f0648  84 50 84 e5                                      str r5, [r4, #0x84]
007f064c  04 00 a0 e1                                      mov r0, r4
007f0650  9c 30 84 e5                                      str r3, [r4, #0x9c]
007f0654  94 30 84 e5                                      str r3, [r4, #0x94]
007f0658  98 30 84 e5                                      str r3, [r4, #0x98]
007f065c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
007f0660  68 45 1a 00 f8 33 00 00                          .byte 0x68, 0x45, 0x1a, 0x00, 0xf8, 0x33, 0x00, 0x00

; FUNCTION 0x007f0668, declared_size=344, range_size=344, mode=arm
; class-group: b2PulleyJoint
; alias: _ZN13b2PulleyJointC2EPK16b2PulleyJointDef
; demangled: b2PulleyJoint::b2PulleyJoint(b2PulleyJointDef const*)
; decoder-mode: arm
007f0668  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007f066c  44 61 9f e5                                      ldr r6, [pc, #0x144]
007f0670  00 40 a0 e1                                      mov r4, r0
007f0674  01 50 a0 e1                                      mov r5, r1
007f0678  d8 ea ff eb                                      bl #0x7eb1e0
007f067c  38 21 9f e5                                      ldr r2, [pc, #0x138]
007f0680  06 60 8f e0                                      add r6, pc, r6
007f0684  30 10 94 e5                                      ldr r1, [r4, #0x30]
007f0688  02 20 96 e7                                      ldr r2, [r6, r2]
007f068c  19 3a a0 e3                                      mov r3, #0x19000
007f0690  95 3f 83 e2                                      add r3, r3, #0x254
007f0694  08 20 82 e2                                      add r2, r2, #8
007f0698  00 20 84 e5                                      str r2, [r4]
007f069c  58 20 91 e5                                      ldr r2, [r1, #0x58]
007f06a0  03 60 92 e7                                      ldr r6, [r2, r3]
007f06a4  44 60 84 e5                                      str r6, [r4, #0x44]
007f06a8  04 10 96 e5                                      ldr r1, [r6, #4]
007f06ac  14 00 95 e5                                      ldr r0, [r5, #0x14]
007f06b0  3d 77 ec eb                                      bl #0x30e3ac
007f06b4  08 10 96 e5                                      ldr r1, [r6, #8]
007f06b8  00 70 a0 e1                                      mov r7, r0
007f06bc  18 00 95 e5                                      ldr r0, [r5, #0x18]
007f06c0  39 77 ec eb                                      bl #0x30e3ac
007f06c4  48 70 84 e5                                      str r7, [r4, #0x48]
007f06c8  4c 00 84 e5                                      str r0, [r4, #0x4c]
007f06cc  04 10 96 e5                                      ldr r1, [r6, #4]
007f06d0  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
007f06d4  34 77 ec eb                                      bl #0x30e3ac
007f06d8  08 10 96 e5                                      ldr r1, [r6, #8]
007f06dc  00 70 a0 e1                                      mov r7, r0
007f06e0  20 00 95 e5                                      ldr r0, [r5, #0x20]
007f06e4  30 77 ec eb                                      bl #0x30e3ac
007f06e8  50 70 84 e5                                      str r7, [r4, #0x50]
007f06ec  54 00 84 e5                                      str r0, [r4, #0x54]
007f06f0  24 30 95 e5                                      ldr r3, [r5, #0x24]
007f06f4  58 30 84 e5                                      str r3, [r4, #0x58]
007f06f8  28 30 95 e5                                      ldr r3, [r5, #0x28]
007f06fc  5c 30 84 e5                                      str r3, [r4, #0x5c]
007f0700  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
007f0704  60 30 84 e5                                      str r3, [r4, #0x60]
007f0708  30 30 95 e5                                      ldr r3, [r5, #0x30]
007f070c  64 30 84 e5                                      str r3, [r4, #0x64]
007f0710  44 60 95 e5                                      ldr r6, [r5, #0x44]
007f0714  7c 60 84 e5                                      str r6, [r4, #0x7c]
007f0718  3c 10 95 e5                                      ldr r1, [r5, #0x3c]
007f071c  06 00 a0 e1                                      mov r0, r6
007f0720  91 79 ec eb                                      bl #0x30ed6c
007f0724  34 10 95 e5                                      ldr r1, [r5, #0x34]
007f0728  1d 79 ec eb                                      bl #0x30eba4
007f072c  03 11 a0 e3                                      mov r1, #0xc0000000
007f0730  00 70 a0 e1                                      mov r7, r0
007f0734  78 00 84 e5                                      str r0, [r4, #0x78]
007f0738  06 00 a0 e1                                      mov r0, r6
007f073c  8a 79 ec eb                                      bl #0x30ed6c
007f0740  00 10 a0 e1                                      mov r1, r0
007f0744  07 00 a0 e1                                      mov r0, r7
007f0748  15 79 ec eb                                      bl #0x30eba4
007f074c  38 80 95 e5                                      ldr r8, [r5, #0x38]
007f0750  00 a0 a0 e1                                      mov sl, r0
007f0754  0a 10 a0 e1                                      mov r1, sl
007f0758  08 00 a0 e1                                      mov r0, r8
007f075c  ea 77 ec eb                                      bl #0x30e70c
007f0760  00 00 50 e3                                      cmp r0, #0
007f0764  0a 80 a0 01                                      moveq r8, sl
007f0768  80 80 84 e5                                      str r8, [r4, #0x80]
007f076c  07 00 a0 e1                                      mov r0, r7
007f0770  01 11 a0 e3                                      mov r1, #0x40000000
007f0774  0c 77 ec eb                                      bl #0x30e3ac
007f0778  06 10 a0 e1                                      mov r1, r6
007f077c  44 79 ec eb                                      bl #0x30ec94
007f0780  40 50 95 e5                                      ldr r5, [r5, #0x40]
007f0784  00 60 a0 e1                                      mov r6, r0
007f0788  06 10 a0 e1                                      mov r1, r6
007f078c  05 00 a0 e1                                      mov r0, r5
007f0790  dd 77 ec eb                                      bl #0x30e70c
007f0794  00 00 50 e3                                      cmp r0, #0
007f0798  00 30 a0 e3                                      mov r3, #0
007f079c  06 50 a0 01                                      moveq r5, r6
007f07a0  84 50 84 e5                                      str r5, [r4, #0x84]
007f07a4  04 00 a0 e1                                      mov r0, r4
007f07a8  9c 30 84 e5                                      str r3, [r4, #0x9c]
007f07ac  94 30 84 e5                                      str r3, [r4, #0x94]
007f07b0  98 30 84 e5                                      str r3, [r4, #0x98]
007f07b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
007f07b8  10 44 1a 00 f8 33 00 00                          .byte 0x10, 0x44, 0x1a, 0x00, 0xf8, 0x33, 0x00, 0x00

; FUNCTION 0x007f07c0, declared_size=256, range_size=256, mode=arm
; class-group: b2PulleyJoint
; alias: _ZNK13b2PulleyJoint10GetLength2Ev
; demangled: b2PulleyJoint::GetLength2() const
; decoder-mode: arm
007f07c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007f07c4  34 50 90 e5                                      ldr r5, [r0, #0x34]
007f07c8  60 70 90 e5                                      ldr r7, [r0, #0x60]
007f07cc  00 40 a0 e1                                      mov r4, r0
007f07d0  64 60 90 e5                                      ldr r6, [r0, #0x64]
007f07d4  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f07d8  07 00 a0 e1                                      mov r0, r7
007f07dc  62 79 ec eb                                      bl #0x30ed6c
007f07e0  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f07e4  00 80 a0 e1                                      mov r8, r0
007f07e8  06 00 a0 e1                                      mov r0, r6
007f07ec  5e 79 ec eb                                      bl #0x30ed6c
007f07f0  00 10 a0 e1                                      mov r1, r0
007f07f4  08 00 a0 e1                                      mov r0, r8
007f07f8  e9 78 ec eb                                      bl #0x30eba4
007f07fc  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f0800  00 80 a0 e1                                      mov r8, r0
007f0804  07 00 a0 e1                                      mov r0, r7
007f0808  57 79 ec eb                                      bl #0x30ed6c
007f080c  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f0810  00 70 a0 e1                                      mov r7, r0
007f0814  06 00 a0 e1                                      mov r0, r6
007f0818  53 79 ec eb                                      bl #0x30ed6c
007f081c  00 10 a0 e1                                      mov r1, r0
007f0820  07 00 a0 e1                                      mov r0, r7
007f0824  de 78 ec eb                                      bl #0x30eba4
007f0828  04 10 95 e5                                      ldr r1, [r5, #4]
007f082c  00 60 a0 e1                                      mov r6, r0
007f0830  08 00 a0 e1                                      mov r0, r8
007f0834  da 78 ec eb                                      bl #0x30eba4
007f0838  08 10 95 e5                                      ldr r1, [r5, #8]
007f083c  00 80 a0 e1                                      mov r8, r0
007f0840  06 00 a0 e1                                      mov r0, r6
007f0844  d6 78 ec eb                                      bl #0x30eba4
007f0848  44 50 94 e5                                      ldr r5, [r4, #0x44]
007f084c  50 10 94 e5                                      ldr r1, [r4, #0x50]
007f0850  00 60 a0 e1                                      mov r6, r0
007f0854  04 00 95 e5                                      ldr r0, [r5, #4]
007f0858  d1 78 ec eb                                      bl #0x30eba4
007f085c  54 10 94 e5                                      ldr r1, [r4, #0x54]
007f0860  00 70 a0 e1                                      mov r7, r0
007f0864  08 00 95 e5                                      ldr r0, [r5, #8]
007f0868  cd 78 ec eb                                      bl #0x30eba4
007f086c  07 10 a0 e1                                      mov r1, r7
007f0870  00 50 a0 e1                                      mov r5, r0
007f0874  08 00 a0 e1                                      mov r0, r8
007f0878  cb 76 ec eb                                      bl #0x30e3ac
007f087c  05 10 a0 e1                                      mov r1, r5
007f0880  00 40 a0 e1                                      mov r4, r0
007f0884  06 00 a0 e1                                      mov r0, r6
007f0888  c7 76 ec eb                                      bl #0x30e3ac
007f088c  04 10 a0 e1                                      mov r1, r4
007f0890  00 50 a0 e1                                      mov r5, r0
007f0894  04 00 a0 e1                                      mov r0, r4
007f0898  33 79 ec eb                                      bl #0x30ed6c
007f089c  05 10 a0 e1                                      mov r1, r5
007f08a0  00 40 a0 e1                                      mov r4, r0
007f08a4  05 00 a0 e1                                      mov r0, r5
007f08a8  2f 79 ec eb                                      bl #0x30ed6c
007f08ac  00 10 a0 e1                                      mov r1, r0
007f08b0  04 00 a0 e1                                      mov r0, r4
007f08b4  ba 78 ec eb                                      bl #0x30eba4
007f08b8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007f08bc  18 76 ec ea                                      b #0x30e124

; FUNCTION 0x007f08c0, declared_size=256, range_size=256, mode=arm
; class-group: b2PulleyJoint
; alias: _ZNK13b2PulleyJoint10GetLength1Ev
; demangled: b2PulleyJoint::GetLength1() const
; decoder-mode: arm
007f08c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007f08c4  30 50 90 e5                                      ldr r5, [r0, #0x30]
007f08c8  58 70 90 e5                                      ldr r7, [r0, #0x58]
007f08cc  00 40 a0 e1                                      mov r4, r0
007f08d0  5c 60 90 e5                                      ldr r6, [r0, #0x5c]
007f08d4  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f08d8  07 00 a0 e1                                      mov r0, r7
007f08dc  22 79 ec eb                                      bl #0x30ed6c
007f08e0  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f08e4  00 80 a0 e1                                      mov r8, r0
007f08e8  06 00 a0 e1                                      mov r0, r6
007f08ec  1e 79 ec eb                                      bl #0x30ed6c
007f08f0  00 10 a0 e1                                      mov r1, r0
007f08f4  08 00 a0 e1                                      mov r0, r8
007f08f8  a9 78 ec eb                                      bl #0x30eba4
007f08fc  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f0900  00 80 a0 e1                                      mov r8, r0
007f0904  07 00 a0 e1                                      mov r0, r7
007f0908  17 79 ec eb                                      bl #0x30ed6c
007f090c  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f0910  00 70 a0 e1                                      mov r7, r0
007f0914  06 00 a0 e1                                      mov r0, r6
007f0918  13 79 ec eb                                      bl #0x30ed6c
007f091c  00 10 a0 e1                                      mov r1, r0
007f0920  07 00 a0 e1                                      mov r0, r7
007f0924  9e 78 ec eb                                      bl #0x30eba4
007f0928  04 10 95 e5                                      ldr r1, [r5, #4]
007f092c  00 60 a0 e1                                      mov r6, r0
007f0930  08 00 a0 e1                                      mov r0, r8
007f0934  9a 78 ec eb                                      bl #0x30eba4
007f0938  08 10 95 e5                                      ldr r1, [r5, #8]
007f093c  00 80 a0 e1                                      mov r8, r0
007f0940  06 00 a0 e1                                      mov r0, r6
007f0944  96 78 ec eb                                      bl #0x30eba4
007f0948  44 50 94 e5                                      ldr r5, [r4, #0x44]
007f094c  48 10 94 e5                                      ldr r1, [r4, #0x48]
007f0950  00 60 a0 e1                                      mov r6, r0
007f0954  04 00 95 e5                                      ldr r0, [r5, #4]
007f0958  91 78 ec eb                                      bl #0x30eba4
007f095c  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
007f0960  00 70 a0 e1                                      mov r7, r0
007f0964  08 00 95 e5                                      ldr r0, [r5, #8]
007f0968  8d 78 ec eb                                      bl #0x30eba4
007f096c  07 10 a0 e1                                      mov r1, r7
007f0970  00 50 a0 e1                                      mov r5, r0
007f0974  08 00 a0 e1                                      mov r0, r8
007f0978  8b 76 ec eb                                      bl #0x30e3ac
007f097c  05 10 a0 e1                                      mov r1, r5
007f0980  00 40 a0 e1                                      mov r4, r0
007f0984  06 00 a0 e1                                      mov r0, r6
007f0988  87 76 ec eb                                      bl #0x30e3ac
007f098c  04 10 a0 e1                                      mov r1, r4
007f0990  00 50 a0 e1                                      mov r5, r0
007f0994  04 00 a0 e1                                      mov r0, r4
007f0998  f3 78 ec eb                                      bl #0x30ed6c
007f099c  05 10 a0 e1                                      mov r1, r5
007f09a0  00 40 a0 e1                                      mov r4, r0
007f09a4  05 00 a0 e1                                      mov r0, r5
007f09a8  ef 78 ec eb                                      bl #0x30ed6c
007f09ac  00 10 a0 e1                                      mov r1, r0
007f09b0  04 00 a0 e1                                      mov r0, r4
007f09b4  7a 78 ec eb                                      bl #0x30eba4
007f09b8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007f09bc  d8 75 ec ea                                      b #0x30e124

; FUNCTION 0x007f09c0, declared_size=1656, range_size=1656, mode=arm
; class-group: b2PulleyJoint
; alias: _ZN13b2PulleyJoint23InitVelocityConstraintsERK10b2TimeStep
; demangled: b2PulleyJoint::InitVelocityConstraints(b2TimeStep const&)
; decoder-mode: arm
007f09c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007f09c4  30 60 90 e5                                      ldr r6, [r0, #0x30]
007f09c8  2c d0 4d e2                                      sub sp, sp, #0x2c
007f09cc  0c 10 8d e5                                      str r1, [sp, #0xc]
007f09d0  00 40 a0 e1                                      mov r4, r0
007f09d4  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
007f09d8  58 00 90 e5                                      ldr r0, [r0, #0x58]
007f09dc  72 76 ec eb                                      bl #0x30e3ac
007f09e0  20 10 96 e5                                      ldr r1, [r6, #0x20]
007f09e4  00 80 a0 e1                                      mov r8, r0
007f09e8  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
007f09ec  6e 76 ec eb                                      bl #0x30e3ac
007f09f0  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007f09f4  00 70 a0 e1                                      mov r7, r0
007f09f8  08 00 a0 e1                                      mov r0, r8
007f09fc  da 78 ec eb                                      bl #0x30ed6c
007f0a00  14 10 96 e5                                      ldr r1, [r6, #0x14]
007f0a04  00 50 a0 e1                                      mov r5, r0
007f0a08  07 00 a0 e1                                      mov r0, r7
007f0a0c  d6 78 ec eb                                      bl #0x30ed6c
007f0a10  00 10 a0 e1                                      mov r1, r0
007f0a14  05 00 a0 e1                                      mov r0, r5
007f0a18  61 78 ec eb                                      bl #0x30eba4
007f0a1c  10 10 96 e5                                      ldr r1, [r6, #0x10]
007f0a20  00 b0 a0 e1                                      mov fp, r0
007f0a24  08 00 a0 e1                                      mov r0, r8
007f0a28  cf 78 ec eb                                      bl #0x30ed6c
007f0a2c  18 10 96 e5                                      ldr r1, [r6, #0x18]
007f0a30  00 80 a0 e1                                      mov r8, r0
007f0a34  07 00 a0 e1                                      mov r0, r7
007f0a38  cb 78 ec eb                                      bl #0x30ed6c
007f0a3c  00 10 a0 e1                                      mov r1, r0
007f0a40  08 00 a0 e1                                      mov r0, r8
007f0a44  56 78 ec eb                                      bl #0x30eba4
007f0a48  34 50 94 e5                                      ldr r5, [r4, #0x34]
007f0a4c  00 90 a0 e1                                      mov sb, r0
007f0a50  60 00 94 e5                                      ldr r0, [r4, #0x60]
007f0a54  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007f0a58  53 76 ec eb                                      bl #0x30e3ac
007f0a5c  20 10 95 e5                                      ldr r1, [r5, #0x20]
007f0a60  00 80 a0 e1                                      mov r8, r0
007f0a64  64 00 94 e5                                      ldr r0, [r4, #0x64]
007f0a68  4f 76 ec eb                                      bl #0x30e3ac
007f0a6c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f0a70  00 70 a0 e1                                      mov r7, r0
007f0a74  08 00 a0 e1                                      mov r0, r8
007f0a78  bb 78 ec eb                                      bl #0x30ed6c
007f0a7c  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f0a80  00 a0 a0 e1                                      mov sl, r0
007f0a84  07 00 a0 e1                                      mov r0, r7
007f0a88  b7 78 ec eb                                      bl #0x30ed6c
007f0a8c  00 10 a0 e1                                      mov r1, r0
007f0a90  0a 00 a0 e1                                      mov r0, sl
007f0a94  42 78 ec eb                                      bl #0x30eba4
007f0a98  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f0a9c  00 a0 a0 e1                                      mov sl, r0
007f0aa0  08 00 a0 e1                                      mov r0, r8
007f0aa4  b0 78 ec eb                                      bl #0x30ed6c
007f0aa8  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f0aac  00 80 a0 e1                                      mov r8, r0
007f0ab0  07 00 a0 e1                                      mov r0, r7
007f0ab4  ac 78 ec eb                                      bl #0x30ed6c
007f0ab8  00 10 a0 e1                                      mov r1, r0
007f0abc  08 00 a0 e1                                      mov r0, r8
007f0ac0  37 78 ec eb                                      bl #0x30eba4
007f0ac4  14 00 8d e5                                      str r0, [sp, #0x14]
007f0ac8  2c 10 96 e5                                      ldr r1, [r6, #0x2c]
007f0acc  0b 00 a0 e1                                      mov r0, fp
007f0ad0  33 78 ec eb                                      bl #0x30eba4
007f0ad4  30 10 96 e5                                      ldr r1, [r6, #0x30]
007f0ad8  00 20 a0 e1                                      mov r2, r0
007f0adc  09 00 a0 e1                                      mov r0, sb
007f0ae0  04 20 8d e5                                      str r2, [sp, #4]
007f0ae4  2e 78 ec eb                                      bl #0x30eba4
007f0ae8  10 00 8d e5                                      str r0, [sp, #0x10]
007f0aec  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007f0af0  0a 00 a0 e1                                      mov r0, sl
007f0af4  2a 78 ec eb                                      bl #0x30eba4
007f0af8  18 00 8d e5                                      str r0, [sp, #0x18]
007f0afc  30 10 95 e5                                      ldr r1, [r5, #0x30]
007f0b00  14 00 9d e5                                      ldr r0, [sp, #0x14]
007f0b04  26 78 ec eb                                      bl #0x30eba4
007f0b08  1c 00 8d e5                                      str r0, [sp, #0x1c]
007f0b0c  44 70 94 e5                                      ldr r7, [r4, #0x44]
007f0b10  48 10 94 e5                                      ldr r1, [r4, #0x48]
007f0b14  04 80 97 e5                                      ldr r8, [r7, #4]
007f0b18  08 00 a0 e1                                      mov r0, r8
007f0b1c  20 78 ec eb                                      bl #0x30eba4
007f0b20  08 70 97 e5                                      ldr r7, [r7, #8]
007f0b24  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
007f0b28  00 c0 a0 e1                                      mov ip, r0
007f0b2c  07 00 a0 e1                                      mov r0, r7
007f0b30  08 c0 8d e5                                      str ip, [sp, #8]
007f0b34  1a 78 ec eb                                      bl #0x30eba4
007f0b38  20 00 8d e5                                      str r0, [sp, #0x20]
007f0b3c  50 10 94 e5                                      ldr r1, [r4, #0x50]
007f0b40  08 00 a0 e1                                      mov r0, r8
007f0b44  16 78 ec eb                                      bl #0x30eba4
007f0b48  24 00 8d e5                                      str r0, [sp, #0x24]
007f0b4c  54 10 94 e5                                      ldr r1, [r4, #0x54]
007f0b50  07 00 a0 e1                                      mov r0, r7
007f0b54  12 78 ec eb                                      bl #0x30eba4
007f0b58  04 10 9d e9                                      ldmib sp, {r2, ip}
007f0b5c  00 30 a0 e1                                      mov r3, r0
007f0b60  0c 10 a0 e1                                      mov r1, ip
007f0b64  02 00 a0 e1                                      mov r0, r2
007f0b68  08 30 8d e5                                      str r3, [sp, #8]
007f0b6c  0e 76 ec eb                                      bl #0x30e3ac
007f0b70  20 10 9d e5                                      ldr r1, [sp, #0x20]
007f0b74  00 80 a0 e1                                      mov r8, r0
007f0b78  10 00 9d e5                                      ldr r0, [sp, #0x10]
007f0b7c  0a 76 ec eb                                      bl #0x30e3ac
007f0b80  6c 00 84 e5                                      str r0, [r4, #0x6c]
007f0b84  08 30 9d e5                                      ldr r3, [sp, #8]
007f0b88  68 80 84 e5                                      str r8, [r4, #0x68]
007f0b8c  00 70 a0 e1                                      mov r7, r0
007f0b90  03 10 a0 e1                                      mov r1, r3
007f0b94  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007f0b98  03 76 ec eb                                      bl #0x30e3ac
007f0b9c  74 00 84 e5                                      str r0, [r4, #0x74]
007f0ba0  24 10 9d e5                                      ldr r1, [sp, #0x24]
007f0ba4  18 00 9d e5                                      ldr r0, [sp, #0x18]
007f0ba8  ff 75 ec eb                                      bl #0x30e3ac
007f0bac  08 10 a0 e1                                      mov r1, r8
007f0bb0  70 00 84 e5                                      str r0, [r4, #0x70]
007f0bb4  08 00 a0 e1                                      mov r0, r8
007f0bb8  6b 78 ec eb                                      bl #0x30ed6c
007f0bbc  07 10 a0 e1                                      mov r1, r7
007f0bc0  00 80 a0 e1                                      mov r8, r0
007f0bc4  07 00 a0 e1                                      mov r0, r7
007f0bc8  67 78 ec eb                                      bl #0x30ed6c
007f0bcc  00 10 a0 e1                                      mov r1, r0
007f0bd0  08 00 a0 e1                                      mov r0, r8
007f0bd4  f2 77 ec eb                                      bl #0x30eba4
007f0bd8  51 75 ec eb                                      bl #0x30e124
007f0bdc  00 80 a0 e1                                      mov r8, r0
007f0be0  70 00 94 e5                                      ldr r0, [r4, #0x70]
007f0be4  00 10 a0 e1                                      mov r1, r0
007f0be8  5f 78 ec eb                                      bl #0x30ed6c
007f0bec  00 70 a0 e1                                      mov r7, r0
007f0bf0  74 00 94 e5                                      ldr r0, [r4, #0x74]
007f0bf4  00 10 a0 e1                                      mov r1, r0
007f0bf8  5b 78 ec eb                                      bl #0x30ed6c
007f0bfc  00 10 a0 e1                                      mov r1, r0
007f0c00  07 00 a0 e1                                      mov r0, r7
007f0c04  e6 77 ec eb                                      bl #0x30eba4
007f0c08  45 75 ec eb                                      bl #0x30e124
007f0c0c  0a 17 0d e3                                      movw r1, #0xd70a
007f0c10  00 70 a0 e1                                      mov r7, r0
007f0c14  a3 1b 43 e3                                      movt r1, #0x3ba3
007f0c18  08 00 a0 e1                                      mov r0, r8
007f0c1c  b5 75 ec eb                                      bl #0x30e2f8
007f0c20  00 00 50 e3                                      cmp r0, #0
007f0c24  00 30 a0 03                                      moveq r3, #0
007f0c28  6c 30 84 05                                      streq r3, [r4, #0x6c]
007f0c2c  68 30 84 05                                      streq r3, [r4, #0x68]
007f0c30  0d 00 00 0a                                      beq #0x7f0c6c
007f0c34  08 10 a0 e1                                      mov r1, r8
007f0c38  fe 05 a0 e3                                      mov r0, #0x3f800000
007f0c3c  14 78 ec eb                                      bl #0x30ec94
007f0c40  00 30 a0 e1                                      mov r3, r0
007f0c44  00 10 a0 e1                                      mov r1, r0
007f0c48  68 00 94 e5                                      ldr r0, [r4, #0x68]
007f0c4c  08 30 8d e5                                      str r3, [sp, #8]
007f0c50  45 78 ec eb                                      bl #0x30ed6c
007f0c54  68 00 84 e5                                      str r0, [r4, #0x68]
007f0c58  08 30 9d e5                                      ldr r3, [sp, #8]
007f0c5c  6c 00 94 e5                                      ldr r0, [r4, #0x6c]
007f0c60  03 10 a0 e1                                      mov r1, r3
007f0c64  40 78 ec eb                                      bl #0x30ed6c
007f0c68  6c 00 84 e5                                      str r0, [r4, #0x6c]
007f0c6c  0a 17 0d e3                                      movw r1, #0xd70a
007f0c70  07 00 a0 e1                                      mov r0, r7
007f0c74  a3 1b 43 e3                                      movt r1, #0x3ba3
007f0c78  9e 75 ec eb                                      bl #0x30e2f8
007f0c7c  00 00 50 e3                                      cmp r0, #0
007f0c80  00 30 a0 03                                      moveq r3, #0
007f0c84  74 30 84 05                                      streq r3, [r4, #0x74]
007f0c88  70 30 84 05                                      streq r3, [r4, #0x70]
007f0c8c  0d 00 00 0a                                      beq #0x7f0cc8
007f0c90  07 10 a0 e1                                      mov r1, r7
007f0c94  fe 05 a0 e3                                      mov r0, #0x3f800000
007f0c98  fd 77 ec eb                                      bl #0x30ec94
007f0c9c  00 30 a0 e1                                      mov r3, r0
007f0ca0  00 10 a0 e1                                      mov r1, r0
007f0ca4  70 00 94 e5                                      ldr r0, [r4, #0x70]
007f0ca8  08 30 8d e5                                      str r3, [sp, #8]
007f0cac  2e 78 ec eb                                      bl #0x30ed6c
007f0cb0  70 00 84 e5                                      str r0, [r4, #0x70]
007f0cb4  08 30 9d e5                                      ldr r3, [sp, #8]
007f0cb8  74 00 94 e5                                      ldr r0, [r4, #0x74]
007f0cbc  03 10 a0 e1                                      mov r1, r3
007f0cc0  29 78 ec eb                                      bl #0x30ed6c
007f0cc4  74 00 84 e5                                      str r0, [r4, #0x74]
007f0cc8  08 10 a0 e1                                      mov r1, r8
007f0ccc  78 00 94 e5                                      ldr r0, [r4, #0x78]
007f0cd0  b5 75 ec eb                                      bl #0x30e3ac
007f0cd4  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
007f0cd8  00 30 a0 e1                                      mov r3, r0
007f0cdc  07 00 a0 e1                                      mov r0, r7
007f0ce0  08 30 8d e5                                      str r3, [sp, #8]
007f0ce4  20 78 ec eb                                      bl #0x30ed6c
007f0ce8  08 30 9d e5                                      ldr r3, [sp, #8]
007f0cec  00 10 a0 e1                                      mov r1, r0
007f0cf0  03 00 a0 e1                                      mov r0, r3
007f0cf4  ac 75 ec eb                                      bl #0x30e3ac
007f0cf8  00 10 a0 e3                                      mov r1, #0
007f0cfc  7d 75 ec eb                                      bl #0x30e2f8
007f0d00  00 00 50 e3                                      cmp r0, #0
007f0d04  02 30 a0 03                                      moveq r3, #2
007f0d08  00 30 a0 13                                      movne r3, #0
007f0d0c  ac 30 84 05                                      streq r3, [r4, #0xac]
007f0d10  00 20 a0 13                                      movne r2, #0
007f0d14  00 30 a0 03                                      moveq r3, #0
007f0d18  ac 30 84 15                                      strne r3, [r4, #0xac]
007f0d1c  a0 30 84 05                                      streq r3, [r4, #0xa0]
007f0d20  94 20 84 15                                      strne r2, [r4, #0x94]
007f0d24  08 10 a0 e1                                      mov r1, r8
007f0d28  80 00 94 e5                                      ldr r0, [r4, #0x80]
007f0d2c  71 75 ec eb                                      bl #0x30e2f8
007f0d30  00 00 50 e3                                      cmp r0, #0
007f0d34  00 30 a0 13                                      movne r3, #0
007f0d38  02 30 a0 03                                      moveq r3, #2
007f0d3c  b0 30 84 15                                      strne r3, [r4, #0xb0]
007f0d40  b0 30 84 05                                      streq r3, [r4, #0xb0]
007f0d44  00 30 a0 13                                      movne r3, #0
007f0d48  00 30 a0 03                                      moveq r3, #0
007f0d4c  98 30 84 15                                      strne r3, [r4, #0x98]
007f0d50  a4 30 84 05                                      streq r3, [r4, #0xa4]
007f0d54  07 10 a0 e1                                      mov r1, r7
007f0d58  84 00 94 e5                                      ldr r0, [r4, #0x84]
007f0d5c  65 75 ec eb                                      bl #0x30e2f8
007f0d60  00 00 50 e3                                      cmp r0, #0
007f0d64  00 30 a0 13                                      movne r3, #0
007f0d68  02 30 a0 03                                      moveq r3, #2
007f0d6c  b4 30 84 15                                      strne r3, [r4, #0xb4]
007f0d70  b4 30 84 05                                      streq r3, [r4, #0xb4]
007f0d74  00 30 a0 13                                      movne r3, #0
007f0d78  00 30 a0 03                                      moveq r3, #0
007f0d7c  9c 30 84 15                                      strne r3, [r4, #0x9c]
007f0d80  a8 30 84 05                                      streq r3, [r4, #0xa8]
007f0d84  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
007f0d88  0b 00 a0 e1                                      mov r0, fp
007f0d8c  f6 77 ec eb                                      bl #0x30ed6c
007f0d90  68 10 94 e5                                      ldr r1, [r4, #0x68]
007f0d94  00 70 a0 e1                                      mov r7, r0
007f0d98  09 00 a0 e1                                      mov r0, sb
007f0d9c  f2 77 ec eb                                      bl #0x30ed6c
007f0da0  00 10 a0 e1                                      mov r1, r0
007f0da4  07 00 a0 e1                                      mov r0, r7
007f0da8  7f 75 ec eb                                      bl #0x30e3ac
007f0dac  74 10 94 e5                                      ldr r1, [r4, #0x74]
007f0db0  00 70 a0 e1                                      mov r7, r0
007f0db4  0a 00 a0 e1                                      mov r0, sl
007f0db8  eb 77 ec eb                                      bl #0x30ed6c
007f0dbc  70 10 94 e5                                      ldr r1, [r4, #0x70]
007f0dc0  00 80 a0 e1                                      mov r8, r0
007f0dc4  14 00 9d e5                                      ldr r0, [sp, #0x14]
007f0dc8  e7 77 ec eb                                      bl #0x30ed6c
007f0dcc  00 10 a0 e1                                      mov r1, r0
007f0dd0  08 00 a0 e1                                      mov r0, r8
007f0dd4  74 75 ec eb                                      bl #0x30e3ac
007f0dd8  80 10 96 e5                                      ldr r1, [r6, #0x80]
007f0ddc  00 80 a0 e1                                      mov r8, r0
007f0de0  07 00 a0 e1                                      mov r0, r7
007f0de4  e0 77 ec eb                                      bl #0x30ed6c
007f0de8  07 10 a0 e1                                      mov r1, r7
007f0dec  de 77 ec eb                                      bl #0x30ed6c
007f0df0  78 10 96 e5                                      ldr r1, [r6, #0x78]
007f0df4  6a 77 ec eb                                      bl #0x30eba4
007f0df8  8c 00 84 e5                                      str r0, [r4, #0x8c]
007f0dfc  80 10 95 e5                                      ldr r1, [r5, #0x80]
007f0e00  00 70 a0 e1                                      mov r7, r0
007f0e04  08 00 a0 e1                                      mov r0, r8
007f0e08  d7 77 ec eb                                      bl #0x30ed6c
007f0e0c  08 10 a0 e1                                      mov r1, r8
007f0e10  d5 77 ec eb                                      bl #0x30ed6c
007f0e14  78 10 95 e5                                      ldr r1, [r5, #0x78]
007f0e18  61 77 ec eb                                      bl #0x30eba4
007f0e1c  07 10 a0 e1                                      mov r1, r7
007f0e20  00 80 a0 e1                                      mov r8, r0
007f0e24  90 00 84 e5                                      str r0, [r4, #0x90]
007f0e28  fe 05 a0 e3                                      mov r0, #0x3f800000
007f0e2c  98 77 ec eb                                      bl #0x30ec94
007f0e30  08 10 a0 e1                                      mov r1, r8
007f0e34  8c 00 84 e5                                      str r0, [r4, #0x8c]
007f0e38  fe 05 a0 e3                                      mov r0, #0x3f800000
007f0e3c  94 77 ec eb                                      bl #0x30ec94
007f0e40  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
007f0e44  90 00 84 e5                                      str r0, [r4, #0x90]
007f0e48  03 10 a0 e1                                      mov r1, r3
007f0e4c  03 00 a0 e1                                      mov r0, r3
007f0e50  c5 77 ec eb                                      bl #0x30ed6c
007f0e54  00 10 a0 e1                                      mov r1, r0
007f0e58  08 00 a0 e1                                      mov r0, r8
007f0e5c  c2 77 ec eb                                      bl #0x30ed6c
007f0e60  00 10 a0 e1                                      mov r1, r0
007f0e64  07 00 a0 e1                                      mov r0, r7
007f0e68  4d 77 ec eb                                      bl #0x30eba4
007f0e6c  00 10 a0 e1                                      mov r1, r0
007f0e70  fe 05 a0 e3                                      mov r0, #0x3f800000
007f0e74  86 77 ec eb                                      bl #0x30ec94
007f0e78  88 00 84 e5                                      str r0, [r4, #0x88]
007f0e7c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007f0e80  10 30 d2 e5                                      ldrb r3, [r2, #0x10]
007f0e84  00 00 53 e3                                      cmp r3, #0
007f0e88  65 00 00 0a                                      beq #0x7f1024
007f0e8c  94 30 94 e5                                      ldr r3, [r4, #0x94]
007f0e90  98 10 94 e5                                      ldr r1, [r4, #0x98]
007f0e94  00 70 92 e5                                      ldr r7, [r2]
007f0e98  02 01 83 e2                                      add r0, r3, #0x80000000
007f0e9c  08 30 8d e5                                      str r3, [sp, #8]
007f0ea0  41 75 ec eb                                      bl #0x30e3ac
007f0ea4  00 10 a0 e1                                      mov r1, r0
007f0ea8  07 00 a0 e1                                      mov r0, r7
007f0eac  ae 77 ec eb                                      bl #0x30ed6c
007f0eb0  68 10 94 e5                                      ldr r1, [r4, #0x68]
007f0eb4  00 80 a0 e1                                      mov r8, r0
007f0eb8  ab 77 ec eb                                      bl #0x30ed6c
007f0ebc  0c 00 8d e5                                      str r0, [sp, #0xc]
007f0ec0  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
007f0ec4  08 00 a0 e1                                      mov r0, r8
007f0ec8  a7 77 ec eb                                      bl #0x30ed6c
007f0ecc  08 30 9d e5                                      ldr r3, [sp, #8]
007f0ed0  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
007f0ed4  00 80 a0 e1                                      mov r8, r0
007f0ed8  03 00 a0 e1                                      mov r0, r3
007f0edc  02 11 81 e2                                      add r1, r1, #0x80000000
007f0ee0  a1 77 ec eb                                      bl #0x30ed6c
007f0ee4  9c 10 94 e5                                      ldr r1, [r4, #0x9c]
007f0ee8  2f 75 ec eb                                      bl #0x30e3ac
007f0eec  00 10 a0 e1                                      mov r1, r0
007f0ef0  07 00 a0 e1                                      mov r0, r7
007f0ef4  9c 77 ec eb                                      bl #0x30ed6c
007f0ef8  70 10 94 e5                                      ldr r1, [r4, #0x70]
007f0efc  08 00 8d e5                                      str r0, [sp, #8]
007f0f00  99 77 ec eb                                      bl #0x30ed6c
007f0f04  08 30 9d e5                                      ldr r3, [sp, #8]
007f0f08  74 10 94 e5                                      ldr r1, [r4, #0x74]
007f0f0c  00 70 a0 e1                                      mov r7, r0
007f0f10  03 00 a0 e1                                      mov r0, r3
007f0f14  94 77 ec eb                                      bl #0x30ed6c
007f0f18  78 30 96 e5                                      ldr r3, [r6, #0x78]
007f0f1c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007f0f20  00 40 a0 e1                                      mov r4, r0
007f0f24  03 00 a0 e1                                      mov r0, r3
007f0f28  08 30 8d e5                                      str r3, [sp, #8]
007f0f2c  8e 77 ec eb                                      bl #0x30ed6c
007f0f30  00 10 a0 e1                                      mov r1, r0
007f0f34  40 00 96 e5                                      ldr r0, [r6, #0x40]
007f0f38  19 77 ec eb                                      bl #0x30eba4
007f0f3c  40 00 86 e5                                      str r0, [r6, #0x40]
007f0f40  08 30 9d e5                                      ldr r3, [sp, #8]
007f0f44  08 10 a0 e1                                      mov r1, r8
007f0f48  03 00 a0 e1                                      mov r0, r3
007f0f4c  86 77 ec eb                                      bl #0x30ed6c
007f0f50  00 10 a0 e1                                      mov r1, r0
007f0f54  44 00 96 e5                                      ldr r0, [r6, #0x44]
007f0f58  11 77 ec eb                                      bl #0x30eba4
007f0f5c  08 10 a0 e1                                      mov r1, r8
007f0f60  44 00 86 e5                                      str r0, [r6, #0x44]
007f0f64  0b 00 a0 e1                                      mov r0, fp
007f0f68  7f 77 ec eb                                      bl #0x30ed6c
007f0f6c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007f0f70  00 80 a0 e1                                      mov r8, r0
007f0f74  09 00 a0 e1                                      mov r0, sb
007f0f78  7b 77 ec eb                                      bl #0x30ed6c
007f0f7c  00 10 a0 e1                                      mov r1, r0
007f0f80  08 00 a0 e1                                      mov r0, r8
007f0f84  08 75 ec eb                                      bl #0x30e3ac
007f0f88  80 10 96 e5                                      ldr r1, [r6, #0x80]
007f0f8c  76 77 ec eb                                      bl #0x30ed6c
007f0f90  00 10 a0 e1                                      mov r1, r0
007f0f94  48 00 96 e5                                      ldr r0, [r6, #0x48]
007f0f98  01 77 ec eb                                      bl #0x30eba4
007f0f9c  48 00 86 e5                                      str r0, [r6, #0x48]
007f0fa0  78 60 95 e5                                      ldr r6, [r5, #0x78]
007f0fa4  07 10 a0 e1                                      mov r1, r7
007f0fa8  06 00 a0 e1                                      mov r0, r6
007f0fac  6e 77 ec eb                                      bl #0x30ed6c
007f0fb0  00 10 a0 e1                                      mov r1, r0
007f0fb4  40 00 95 e5                                      ldr r0, [r5, #0x40]
007f0fb8  f9 76 ec eb                                      bl #0x30eba4
007f0fbc  04 10 a0 e1                                      mov r1, r4
007f0fc0  40 00 85 e5                                      str r0, [r5, #0x40]
007f0fc4  06 00 a0 e1                                      mov r0, r6
007f0fc8  67 77 ec eb                                      bl #0x30ed6c
007f0fcc  00 10 a0 e1                                      mov r1, r0
007f0fd0  44 00 95 e5                                      ldr r0, [r5, #0x44]
007f0fd4  f2 76 ec eb                                      bl #0x30eba4
007f0fd8  04 10 a0 e1                                      mov r1, r4
007f0fdc  44 00 85 e5                                      str r0, [r5, #0x44]
007f0fe0  0a 00 a0 e1                                      mov r0, sl
007f0fe4  60 77 ec eb                                      bl #0x30ed6c
007f0fe8  07 10 a0 e1                                      mov r1, r7
007f0fec  00 40 a0 e1                                      mov r4, r0
007f0ff0  14 00 9d e5                                      ldr r0, [sp, #0x14]
007f0ff4  5c 77 ec eb                                      bl #0x30ed6c
007f0ff8  00 10 a0 e1                                      mov r1, r0
007f0ffc  04 00 a0 e1                                      mov r0, r4
007f1000  e9 74 ec eb                                      bl #0x30e3ac
007f1004  80 10 95 e5                                      ldr r1, [r5, #0x80]
007f1008  57 77 ec eb                                      bl #0x30ed6c
007f100c  00 10 a0 e1                                      mov r1, r0
007f1010  48 00 95 e5                                      ldr r0, [r5, #0x48]
007f1014  e2 76 ec eb                                      bl #0x30eba4
007f1018  48 00 85 e5                                      str r0, [r5, #0x48]
007f101c  2c d0 8d e2                                      add sp, sp, #0x2c
007f1020  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007f1024  00 30 a0 e3                                      mov r3, #0
007f1028  9c 30 84 e5                                      str r3, [r4, #0x9c]
007f102c  94 30 84 e5                                      str r3, [r4, #0x94]
007f1030  98 30 84 e5                                      str r3, [r4, #0x98]
007f1034  f8 ff ff ea                                      b #0x7f101c

; FUNCTION 0x007f129c, declared_size=2752, range_size=2752, mode=arm
; class-group: b2PulleyJoint
; alias: _ZN13b2PulleyJoint24SolvePositionConstraintsEv
; demangled: b2PulleyJoint::SolvePositionConstraints()
; decoder-mode: arm
007f129c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007f12a0  44 70 90 e5                                      ldr r7, [r0, #0x44]
007f12a4  2c d0 4d e2                                      sub sp, sp, #0x2c
007f12a8  00 40 a0 e1                                      mov r4, r0
007f12ac  04 90 97 e5                                      ldr sb, [r7, #4]
007f12b0  48 10 90 e5                                      ldr r1, [r0, #0x48]
007f12b4  30 60 90 e5                                      ldr r6, [r0, #0x30]
007f12b8  34 50 90 e5                                      ldr r5, [r0, #0x34]
007f12bc  09 00 a0 e1                                      mov r0, sb
007f12c0  37 76 ec eb                                      bl #0x30eba4
007f12c4  08 70 97 e5                                      ldr r7, [r7, #8]
007f12c8  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
007f12cc  00 a0 a0 e1                                      mov sl, r0
007f12d0  07 00 a0 e1                                      mov r0, r7
007f12d4  32 76 ec eb                                      bl #0x30eba4
007f12d8  50 10 94 e5                                      ldr r1, [r4, #0x50]
007f12dc  00 80 a0 e1                                      mov r8, r0
007f12e0  09 00 a0 e1                                      mov r0, sb
007f12e4  2e 76 ec eb                                      bl #0x30eba4
007f12e8  0c 00 8d e5                                      str r0, [sp, #0xc]
007f12ec  54 10 94 e5                                      ldr r1, [r4, #0x54]
007f12f0  07 00 a0 e1                                      mov r0, r7
007f12f4  2a 76 ec eb                                      bl #0x30eba4
007f12f8  10 00 8d e5                                      str r0, [sp, #0x10]
007f12fc  ac 30 94 e5                                      ldr r3, [r4, #0xac]
007f1300  02 00 53 e3                                      cmp r3, #2
007f1304  00 70 a0 13                                      movne r7, #0
007f1308  51 01 00 0a                                      beq #0x7f1854
007f130c  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
007f1310  02 00 53 e3                                      cmp r3, #2
007f1314  ab 00 00 0a                                      beq #0x7f15c8
007f1318  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
007f131c  02 00 53 e3                                      cmp r3, #2
007f1320  09 00 00 0a                                      beq #0x7f134c
007f1324  0a 17 0d e3                                      movw r1, #0xd70a
007f1328  07 00 a0 e1                                      mov r0, r7
007f132c  a3 1b 43 e3                                      movt r1, #0x3ba3
007f1330  f5 74 ec eb                                      bl #0x30e70c
007f1334  00 00 50 e3                                      cmp r0, #0
007f1338  00 00 a0 e3                                      mov r0, #0
007f133c  01 00 a0 13                                      movne r0, #1
007f1340  01 00 00 e2                                      and r0, r0, #1
007f1344  2c d0 8d e2                                      add sp, sp, #0x2c
007f1348  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007f134c  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007f1350  60 00 94 e5                                      ldr r0, [r4, #0x60]
007f1354  14 74 ec eb                                      bl #0x30e3ac
007f1358  20 10 95 e5                                      ldr r1, [r5, #0x20]
007f135c  00 a0 a0 e1                                      mov sl, r0
007f1360  64 00 94 e5                                      ldr r0, [r4, #0x64]
007f1364  10 74 ec eb                                      bl #0x30e3ac
007f1368  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f136c  00 60 a0 e1                                      mov r6, r0
007f1370  0a 00 a0 e1                                      mov r0, sl
007f1374  7c 76 ec eb                                      bl #0x30ed6c
007f1378  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f137c  00 80 a0 e1                                      mov r8, r0
007f1380  06 00 a0 e1                                      mov r0, r6
007f1384  78 76 ec eb                                      bl #0x30ed6c
007f1388  00 10 a0 e1                                      mov r1, r0
007f138c  08 00 a0 e1                                      mov r0, r8
007f1390  03 76 ec eb                                      bl #0x30eba4
007f1394  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f1398  00 80 a0 e1                                      mov r8, r0
007f139c  0a 00 a0 e1                                      mov r0, sl
007f13a0  71 76 ec eb                                      bl #0x30ed6c
007f13a4  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f13a8  00 a0 a0 e1                                      mov sl, r0
007f13ac  06 00 a0 e1                                      mov r0, r6
007f13b0  6d 76 ec eb                                      bl #0x30ed6c
007f13b4  00 10 a0 e1                                      mov r1, r0
007f13b8  0a 00 a0 e1                                      mov r0, sl
007f13bc  f8 75 ec eb                                      bl #0x30eba4
007f13c0  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007f13c4  00 60 a0 e1                                      mov r6, r0
007f13c8  08 00 a0 e1                                      mov r0, r8
007f13cc  f4 75 ec eb                                      bl #0x30eba4
007f13d0  30 10 95 e5                                      ldr r1, [r5, #0x30]
007f13d4  00 90 a0 e1                                      mov sb, r0
007f13d8  06 00 a0 e1                                      mov r0, r6
007f13dc  f0 75 ec eb                                      bl #0x30eba4
007f13e0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007f13e4  00 a0 a0 e1                                      mov sl, r0
007f13e8  09 00 a0 e1                                      mov r0, sb
007f13ec  ee 73 ec eb                                      bl #0x30e3ac
007f13f0  10 10 9d e5                                      ldr r1, [sp, #0x10]
007f13f4  00 90 a0 e1                                      mov sb, r0
007f13f8  0a 00 a0 e1                                      mov r0, sl
007f13fc  ea 73 ec eb                                      bl #0x30e3ac
007f1400  00 a0 a0 e1                                      mov sl, r0
007f1404  09 10 a0 e1                                      mov r1, sb
007f1408  09 00 a0 e1                                      mov r0, sb
007f140c  74 a0 84 e5                                      str sl, [r4, #0x74]
007f1410  70 90 84 e5                                      str sb, [r4, #0x70]
007f1414  54 76 ec eb                                      bl #0x30ed6c
007f1418  0a 10 a0 e1                                      mov r1, sl
007f141c  00 90 a0 e1                                      mov sb, r0
007f1420  0a 00 a0 e1                                      mov r0, sl
007f1424  50 76 ec eb                                      bl #0x30ed6c
007f1428  00 10 a0 e1                                      mov r1, r0
007f142c  09 00 a0 e1                                      mov r0, sb
007f1430  db 75 ec eb                                      bl #0x30eba4
007f1434  3a 73 ec eb                                      bl #0x30e124
007f1438  0a 17 0d e3                                      movw r1, #0xd70a
007f143c  a3 1b 43 e3                                      movt r1, #0x3ba3
007f1440  00 a0 a0 e1                                      mov sl, r0
007f1444  ab 73 ec eb                                      bl #0x30e2f8
007f1448  00 00 50 e3                                      cmp r0, #0
007f144c  00 30 a0 03                                      moveq r3, #0
007f1450  74 30 84 05                                      streq r3, [r4, #0x74]
007f1454  70 30 84 05                                      streq r3, [r4, #0x70]
007f1458  0b 00 00 0a                                      beq #0x7f148c
007f145c  0a 10 a0 e1                                      mov r1, sl
007f1460  fe 05 a0 e3                                      mov r0, #0x3f800000
007f1464  0a 76 ec eb                                      bl #0x30ec94
007f1468  00 10 a0 e1                                      mov r1, r0
007f146c  00 90 a0 e1                                      mov sb, r0
007f1470  70 00 94 e5                                      ldr r0, [r4, #0x70]
007f1474  3c 76 ec eb                                      bl #0x30ed6c
007f1478  09 10 a0 e1                                      mov r1, sb
007f147c  70 00 84 e5                                      str r0, [r4, #0x70]
007f1480  74 00 94 e5                                      ldr r0, [r4, #0x74]
007f1484  38 76 ec eb                                      bl #0x30ed6c
007f1488  74 00 84 e5                                      str r0, [r4, #0x74]
007f148c  0a 10 a0 e1                                      mov r1, sl
007f1490  84 00 94 e5                                      ldr r0, [r4, #0x84]
007f1494  c4 73 ec eb                                      bl #0x30e3ac
007f1498  02 91 80 e2                                      add sb, r0, #0x80000000
007f149c  00 a0 a0 e1                                      mov sl, r0
007f14a0  09 10 a0 e1                                      mov r1, sb
007f14a4  07 00 a0 e1                                      mov r0, r7
007f14a8  92 73 ec eb                                      bl #0x30e2f8
007f14ac  0a 17 0d e3                                      movw r1, #0xd70a
007f14b0  00 00 50 e3                                      cmp r0, #0
007f14b4  a3 1b 43 e3                                      movt r1, #0x3ba3
007f14b8  0a 00 a0 e1                                      mov r0, sl
007f14bc  09 70 a0 01                                      moveq r7, sb
007f14c0  b7 75 ec eb                                      bl #0x30eba4
007f14c4  00 10 a0 e3                                      mov r1, #0
007f14c8  00 a0 a0 e1                                      mov sl, r0
007f14cc  8e 74 ec eb                                      bl #0x30e70c
007f14d0  00 00 50 e3                                      cmp r0, #0
007f14d4  00 a0 a0 03                                      moveq sl, #0
007f14d8  07 02 00 1a                                      bne #0x7f1cfc
007f14dc  90 00 94 e5                                      ldr r0, [r4, #0x90]
007f14e0  a8 90 94 e5                                      ldr sb, [r4, #0xa8]
007f14e4  0a 10 a0 e1                                      mov r1, sl
007f14e8  02 01 80 e2                                      add r0, r0, #0x80000000
007f14ec  1e 76 ec eb                                      bl #0x30ed6c
007f14f0  09 10 a0 e1                                      mov r1, sb
007f14f4  aa 75 ec eb                                      bl #0x30eba4
007f14f8  00 10 a0 e3                                      mov r1, #0
007f14fc  00 a0 a0 e1                                      mov sl, r0
007f1500  81 74 ec eb                                      bl #0x30e70c
007f1504  00 00 50 e3                                      cmp r0, #0
007f1508  00 a0 a0 13                                      movne sl, #0
007f150c  09 10 a0 e1                                      mov r1, sb
007f1510  a8 a0 84 e5                                      str sl, [r4, #0xa8]
007f1514  0a 00 a0 e1                                      mov r0, sl
007f1518  a3 73 ec eb                                      bl #0x30e3ac
007f151c  02 91 80 e2                                      add sb, r0, #0x80000000
007f1520  70 10 94 e5                                      ldr r1, [r4, #0x70]
007f1524  09 00 a0 e1                                      mov r0, sb
007f1528  0f 76 ec eb                                      bl #0x30ed6c
007f152c  74 10 94 e5                                      ldr r1, [r4, #0x74]
007f1530  00 a0 a0 e1                                      mov sl, r0
007f1534  09 00 a0 e1                                      mov r0, sb
007f1538  0b 76 ec eb                                      bl #0x30ed6c
007f153c  78 90 95 e5                                      ldr sb, [r5, #0x78]
007f1540  00 40 a0 e1                                      mov r4, r0
007f1544  0a 10 a0 e1                                      mov r1, sl
007f1548  09 00 a0 e1                                      mov r0, sb
007f154c  06 76 ec eb                                      bl #0x30ed6c
007f1550  00 10 a0 e1                                      mov r1, r0
007f1554  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
007f1558  91 75 ec eb                                      bl #0x30eba4
007f155c  04 10 a0 e1                                      mov r1, r4
007f1560  2c 00 85 e5                                      str r0, [r5, #0x2c]
007f1564  09 00 a0 e1                                      mov r0, sb
007f1568  ff 75 ec eb                                      bl #0x30ed6c
007f156c  00 10 a0 e1                                      mov r1, r0
007f1570  30 00 95 e5                                      ldr r0, [r5, #0x30]
007f1574  8a 75 ec eb                                      bl #0x30eba4
007f1578  04 10 a0 e1                                      mov r1, r4
007f157c  30 00 85 e5                                      str r0, [r5, #0x30]
007f1580  08 00 a0 e1                                      mov r0, r8
007f1584  f8 75 ec eb                                      bl #0x30ed6c
007f1588  0a 10 a0 e1                                      mov r1, sl
007f158c  00 40 a0 e1                                      mov r4, r0
007f1590  06 00 a0 e1                                      mov r0, r6
007f1594  f4 75 ec eb                                      bl #0x30ed6c
007f1598  00 10 a0 e1                                      mov r1, r0
007f159c  04 00 a0 e1                                      mov r0, r4
007f15a0  81 73 ec eb                                      bl #0x30e3ac
007f15a4  80 10 95 e5                                      ldr r1, [r5, #0x80]
007f15a8  ef 75 ec eb                                      bl #0x30ed6c
007f15ac  00 10 a0 e1                                      mov r1, r0
007f15b0  38 00 95 e5                                      ldr r0, [r5, #0x38]
007f15b4  7a 75 ec eb                                      bl #0x30eba4
007f15b8  38 00 85 e5                                      str r0, [r5, #0x38]
007f15bc  05 00 a0 e1                                      mov r0, r5
007f15c0  15 d8 ff eb                                      bl #0x7e761c
007f15c4  56 ff ff ea                                      b #0x7f1324
007f15c8  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
007f15cc  58 00 94 e5                                      ldr r0, [r4, #0x58]
007f15d0  75 73 ec eb                                      bl #0x30e3ac
007f15d4  20 10 96 e5                                      ldr r1, [r6, #0x20]
007f15d8  00 b0 a0 e1                                      mov fp, r0
007f15dc  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
007f15e0  71 73 ec eb                                      bl #0x30e3ac
007f15e4  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007f15e8  00 90 a0 e1                                      mov sb, r0
007f15ec  0b 00 a0 e1                                      mov r0, fp
007f15f0  dd 75 ec eb                                      bl #0x30ed6c
007f15f4  14 10 96 e5                                      ldr r1, [r6, #0x14]
007f15f8  00 30 a0 e1                                      mov r3, r0
007f15fc  09 00 a0 e1                                      mov r0, sb
007f1600  04 30 8d e5                                      str r3, [sp, #4]
007f1604  d8 75 ec eb                                      bl #0x30ed6c
007f1608  04 30 9d e5                                      ldr r3, [sp, #4]
007f160c  00 10 a0 e1                                      mov r1, r0
007f1610  03 00 a0 e1                                      mov r0, r3
007f1614  62 75 ec eb                                      bl #0x30eba4
007f1618  08 00 8d e5                                      str r0, [sp, #8]
007f161c  10 10 96 e5                                      ldr r1, [r6, #0x10]
007f1620  0b 00 a0 e1                                      mov r0, fp
007f1624  d0 75 ec eb                                      bl #0x30ed6c
007f1628  18 10 96 e5                                      ldr r1, [r6, #0x18]
007f162c  00 b0 a0 e1                                      mov fp, r0
007f1630  09 00 a0 e1                                      mov r0, sb
007f1634  cc 75 ec eb                                      bl #0x30ed6c
007f1638  00 10 a0 e1                                      mov r1, r0
007f163c  0b 00 a0 e1                                      mov r0, fp
007f1640  57 75 ec eb                                      bl #0x30eba4
007f1644  2c 10 96 e5                                      ldr r1, [r6, #0x2c]
007f1648  00 90 a0 e1                                      mov sb, r0
007f164c  08 00 9d e5                                      ldr r0, [sp, #8]
007f1650  53 75 ec eb                                      bl #0x30eba4
007f1654  30 10 96 e5                                      ldr r1, [r6, #0x30]
007f1658  00 b0 a0 e1                                      mov fp, r0
007f165c  09 00 a0 e1                                      mov r0, sb
007f1660  4f 75 ec eb                                      bl #0x30eba4
007f1664  0a 10 a0 e1                                      mov r1, sl
007f1668  00 30 a0 e1                                      mov r3, r0
007f166c  0b 00 a0 e1                                      mov r0, fp
007f1670  04 30 8d e5                                      str r3, [sp, #4]
007f1674  4c 73 ec eb                                      bl #0x30e3ac
007f1678  04 30 9d e5                                      ldr r3, [sp, #4]
007f167c  00 a0 a0 e1                                      mov sl, r0
007f1680  08 10 a0 e1                                      mov r1, r8
007f1684  03 00 a0 e1                                      mov r0, r3
007f1688  47 73 ec eb                                      bl #0x30e3ac
007f168c  00 80 a0 e1                                      mov r8, r0
007f1690  0a 10 a0 e1                                      mov r1, sl
007f1694  0a 00 a0 e1                                      mov r0, sl
007f1698  6c 80 84 e5                                      str r8, [r4, #0x6c]
007f169c  68 a0 84 e5                                      str sl, [r4, #0x68]
007f16a0  b1 75 ec eb                                      bl #0x30ed6c
007f16a4  08 10 a0 e1                                      mov r1, r8
007f16a8  00 a0 a0 e1                                      mov sl, r0
007f16ac  08 00 a0 e1                                      mov r0, r8
007f16b0  ad 75 ec eb                                      bl #0x30ed6c
007f16b4  00 10 a0 e1                                      mov r1, r0
007f16b8  0a 00 a0 e1                                      mov r0, sl
007f16bc  38 75 ec eb                                      bl #0x30eba4
007f16c0  97 72 ec eb                                      bl #0x30e124
007f16c4  0a 17 0d e3                                      movw r1, #0xd70a
007f16c8  a3 1b 43 e3                                      movt r1, #0x3ba3
007f16cc  00 80 a0 e1                                      mov r8, r0
007f16d0  08 73 ec eb                                      bl #0x30e2f8
007f16d4  00 00 50 e3                                      cmp r0, #0
007f16d8  00 30 a0 03                                      moveq r3, #0
007f16dc  6c 30 84 05                                      streq r3, [r4, #0x6c]
007f16e0  68 30 84 05                                      streq r3, [r4, #0x68]
007f16e4  0b 00 00 0a                                      beq #0x7f1718
007f16e8  08 10 a0 e1                                      mov r1, r8
007f16ec  fe 05 a0 e3                                      mov r0, #0x3f800000
007f16f0  67 75 ec eb                                      bl #0x30ec94
007f16f4  00 10 a0 e1                                      mov r1, r0
007f16f8  00 a0 a0 e1                                      mov sl, r0
007f16fc  68 00 94 e5                                      ldr r0, [r4, #0x68]
007f1700  99 75 ec eb                                      bl #0x30ed6c
007f1704  0a 10 a0 e1                                      mov r1, sl
007f1708  68 00 84 e5                                      str r0, [r4, #0x68]
007f170c  6c 00 94 e5                                      ldr r0, [r4, #0x6c]
007f1710  95 75 ec eb                                      bl #0x30ed6c
007f1714  6c 00 84 e5                                      str r0, [r4, #0x6c]
007f1718  08 10 a0 e1                                      mov r1, r8
007f171c  80 00 94 e5                                      ldr r0, [r4, #0x80]
007f1720  21 73 ec eb                                      bl #0x30e3ac
007f1724  02 a1 80 e2                                      add sl, r0, #0x80000000
007f1728  00 80 a0 e1                                      mov r8, r0
007f172c  0a 10 a0 e1                                      mov r1, sl
007f1730  07 00 a0 e1                                      mov r0, r7
007f1734  ef 72 ec eb                                      bl #0x30e2f8
007f1738  0a 17 0d e3                                      movw r1, #0xd70a
007f173c  00 00 50 e3                                      cmp r0, #0
007f1740  a3 1b 43 e3                                      movt r1, #0x3ba3
007f1744  08 00 a0 e1                                      mov r0, r8
007f1748  0a 70 a0 01                                      moveq r7, sl
007f174c  14 75 ec eb                                      bl #0x30eba4
007f1750  00 10 a0 e3                                      mov r1, #0
007f1754  00 80 a0 e1                                      mov r8, r0
007f1758  eb 73 ec eb                                      bl #0x30e70c
007f175c  00 00 50 e3                                      cmp r0, #0
007f1760  00 80 a0 03                                      moveq r8, #0
007f1764  74 01 00 1a                                      bne #0x7f1d3c
007f1768  8c 00 94 e5                                      ldr r0, [r4, #0x8c]
007f176c  a4 a0 94 e5                                      ldr sl, [r4, #0xa4]
007f1770  08 10 a0 e1                                      mov r1, r8
007f1774  02 01 80 e2                                      add r0, r0, #0x80000000
007f1778  7b 75 ec eb                                      bl #0x30ed6c
007f177c  0a 10 a0 e1                                      mov r1, sl
007f1780  07 75 ec eb                                      bl #0x30eba4
007f1784  00 10 a0 e3                                      mov r1, #0
007f1788  00 80 a0 e1                                      mov r8, r0
007f178c  de 73 ec eb                                      bl #0x30e70c
007f1790  00 00 50 e3                                      cmp r0, #0
007f1794  00 80 a0 13                                      movne r8, #0
007f1798  0a 10 a0 e1                                      mov r1, sl
007f179c  a4 80 84 e5                                      str r8, [r4, #0xa4]
007f17a0  08 00 a0 e1                                      mov r0, r8
007f17a4  00 73 ec eb                                      bl #0x30e3ac
007f17a8  02 a1 80 e2                                      add sl, r0, #0x80000000
007f17ac  68 10 94 e5                                      ldr r1, [r4, #0x68]
007f17b0  0a 00 a0 e1                                      mov r0, sl
007f17b4  6c 75 ec eb                                      bl #0x30ed6c
007f17b8  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
007f17bc  00 80 a0 e1                                      mov r8, r0
007f17c0  0a 00 a0 e1                                      mov r0, sl
007f17c4  68 75 ec eb                                      bl #0x30ed6c
007f17c8  78 b0 96 e5                                      ldr fp, [r6, #0x78]
007f17cc  00 a0 a0 e1                                      mov sl, r0
007f17d0  08 10 a0 e1                                      mov r1, r8
007f17d4  0b 00 a0 e1                                      mov r0, fp
007f17d8  63 75 ec eb                                      bl #0x30ed6c
007f17dc  00 10 a0 e1                                      mov r1, r0
007f17e0  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
007f17e4  ee 74 ec eb                                      bl #0x30eba4
007f17e8  0a 10 a0 e1                                      mov r1, sl
007f17ec  2c 00 86 e5                                      str r0, [r6, #0x2c]
007f17f0  0b 00 a0 e1                                      mov r0, fp
007f17f4  5c 75 ec eb                                      bl #0x30ed6c
007f17f8  00 10 a0 e1                                      mov r1, r0
007f17fc  30 00 96 e5                                      ldr r0, [r6, #0x30]
007f1800  e7 74 ec eb                                      bl #0x30eba4
007f1804  30 00 86 e5                                      str r0, [r6, #0x30]
007f1808  0a 10 a0 e1                                      mov r1, sl
007f180c  08 00 9d e5                                      ldr r0, [sp, #8]
007f1810  55 75 ec eb                                      bl #0x30ed6c
007f1814  08 10 a0 e1                                      mov r1, r8
007f1818  00 a0 a0 e1                                      mov sl, r0
007f181c  09 00 a0 e1                                      mov r0, sb
007f1820  51 75 ec eb                                      bl #0x30ed6c
007f1824  00 10 a0 e1                                      mov r1, r0
007f1828  0a 00 a0 e1                                      mov r0, sl
007f182c  de 72 ec eb                                      bl #0x30e3ac
007f1830  80 10 96 e5                                      ldr r1, [r6, #0x80]
007f1834  4c 75 ec eb                                      bl #0x30ed6c
007f1838  00 10 a0 e1                                      mov r1, r0
007f183c  38 00 96 e5                                      ldr r0, [r6, #0x38]
007f1840  d7 74 ec eb                                      bl #0x30eba4
007f1844  38 00 86 e5                                      str r0, [r6, #0x38]
007f1848  06 00 a0 e1                                      mov r0, r6
007f184c  72 d7 ff eb                                      bl #0x7e761c
007f1850  b0 fe ff ea                                      b #0x7f1318
007f1854  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
007f1858  58 00 94 e5                                      ldr r0, [r4, #0x58]
007f185c  d2 72 ec eb                                      bl #0x30e3ac
007f1860  20 10 96 e5                                      ldr r1, [r6, #0x20]
007f1864  00 90 a0 e1                                      mov sb, r0
007f1868  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
007f186c  ce 72 ec eb                                      bl #0x30e3ac
007f1870  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007f1874  00 70 a0 e1                                      mov r7, r0
007f1878  09 00 a0 e1                                      mov r0, sb
007f187c  3a 75 ec eb                                      bl #0x30ed6c
007f1880  14 10 96 e5                                      ldr r1, [r6, #0x14]
007f1884  00 b0 a0 e1                                      mov fp, r0
007f1888  07 00 a0 e1                                      mov r0, r7
007f188c  36 75 ec eb                                      bl #0x30ed6c
007f1890  00 10 a0 e1                                      mov r1, r0
007f1894  0b 00 a0 e1                                      mov r0, fp
007f1898  c1 74 ec eb                                      bl #0x30eba4
007f189c  18 00 8d e5                                      str r0, [sp, #0x18]
007f18a0  10 10 96 e5                                      ldr r1, [r6, #0x10]
007f18a4  09 00 a0 e1                                      mov r0, sb
007f18a8  2f 75 ec eb                                      bl #0x30ed6c
007f18ac  18 10 96 e5                                      ldr r1, [r6, #0x18]
007f18b0  00 90 a0 e1                                      mov sb, r0
007f18b4  07 00 a0 e1                                      mov r0, r7
007f18b8  2b 75 ec eb                                      bl #0x30ed6c
007f18bc  00 10 a0 e1                                      mov r1, r0
007f18c0  09 00 a0 e1                                      mov r0, sb
007f18c4  b6 74 ec eb                                      bl #0x30eba4
007f18c8  1c 00 8d e5                                      str r0, [sp, #0x1c]
007f18cc  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007f18d0  60 00 94 e5                                      ldr r0, [r4, #0x60]
007f18d4  b4 72 ec eb                                      bl #0x30e3ac
007f18d8  20 10 95 e5                                      ldr r1, [r5, #0x20]
007f18dc  00 90 a0 e1                                      mov sb, r0
007f18e0  64 00 94 e5                                      ldr r0, [r4, #0x64]
007f18e4  b0 72 ec eb                                      bl #0x30e3ac
007f18e8  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f18ec  00 70 a0 e1                                      mov r7, r0
007f18f0  09 00 a0 e1                                      mov r0, sb
007f18f4  1c 75 ec eb                                      bl #0x30ed6c
007f18f8  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f18fc  00 b0 a0 e1                                      mov fp, r0
007f1900  07 00 a0 e1                                      mov r0, r7
007f1904  18 75 ec eb                                      bl #0x30ed6c
007f1908  00 10 a0 e1                                      mov r1, r0
007f190c  0b 00 a0 e1                                      mov r0, fp
007f1910  a3 74 ec eb                                      bl #0x30eba4
007f1914  08 00 8d e5                                      str r0, [sp, #8]
007f1918  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f191c  09 00 a0 e1                                      mov r0, sb
007f1920  11 75 ec eb                                      bl #0x30ed6c
007f1924  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f1928  00 90 a0 e1                                      mov sb, r0
007f192c  07 00 a0 e1                                      mov r0, r7
007f1930  0d 75 ec eb                                      bl #0x30ed6c
007f1934  00 10 a0 e1                                      mov r1, r0
007f1938  09 00 a0 e1                                      mov r0, sb
007f193c  98 74 ec eb                                      bl #0x30eba4
007f1940  14 00 8d e5                                      str r0, [sp, #0x14]
007f1944  2c 10 96 e5                                      ldr r1, [r6, #0x2c]
007f1948  18 00 9d e5                                      ldr r0, [sp, #0x18]
007f194c  94 74 ec eb                                      bl #0x30eba4
007f1950  30 10 96 e5                                      ldr r1, [r6, #0x30]
007f1954  00 90 a0 e1                                      mov sb, r0
007f1958  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007f195c  90 74 ec eb                                      bl #0x30eba4
007f1960  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007f1964  00 70 a0 e1                                      mov r7, r0
007f1968  08 00 9d e5                                      ldr r0, [sp, #8]
007f196c  8c 74 ec eb                                      bl #0x30eba4
007f1970  30 10 95 e5                                      ldr r1, [r5, #0x30]
007f1974  00 30 a0 e1                                      mov r3, r0
007f1978  14 00 9d e5                                      ldr r0, [sp, #0x14]
007f197c  04 30 8d e5                                      str r3, [sp, #4]
007f1980  87 74 ec eb                                      bl #0x30eba4
007f1984  0a 10 a0 e1                                      mov r1, sl
007f1988  00 b0 a0 e1                                      mov fp, r0
007f198c  09 00 a0 e1                                      mov r0, sb
007f1990  85 72 ec eb                                      bl #0x30e3ac
007f1994  08 10 a0 e1                                      mov r1, r8
007f1998  00 90 a0 e1                                      mov sb, r0
007f199c  07 00 a0 e1                                      mov r0, r7
007f19a0  81 72 ec eb                                      bl #0x30e3ac
007f19a4  68 90 84 e5                                      str sb, [r4, #0x68]
007f19a8  6c 00 84 e5                                      str r0, [r4, #0x6c]
007f19ac  10 10 9d e5                                      ldr r1, [sp, #0x10]
007f19b0  00 70 a0 e1                                      mov r7, r0
007f19b4  0b 00 a0 e1                                      mov r0, fp
007f19b8  7b 72 ec eb                                      bl #0x30e3ac
007f19bc  74 00 84 e5                                      str r0, [r4, #0x74]
007f19c0  04 30 9d e5                                      ldr r3, [sp, #4]
007f19c4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007f19c8  03 00 a0 e1                                      mov r0, r3
007f19cc  76 72 ec eb                                      bl #0x30e3ac
007f19d0  09 10 a0 e1                                      mov r1, sb
007f19d4  70 00 84 e5                                      str r0, [r4, #0x70]
007f19d8  09 00 a0 e1                                      mov r0, sb
007f19dc  e2 74 ec eb                                      bl #0x30ed6c
007f19e0  07 10 a0 e1                                      mov r1, r7
007f19e4  00 90 a0 e1                                      mov sb, r0
007f19e8  07 00 a0 e1                                      mov r0, r7
007f19ec  de 74 ec eb                                      bl #0x30ed6c
007f19f0  00 10 a0 e1                                      mov r1, r0
007f19f4  09 00 a0 e1                                      mov r0, sb
007f19f8  69 74 ec eb                                      bl #0x30eba4
007f19fc  c8 71 ec eb                                      bl #0x30e124
007f1a00  00 90 a0 e1                                      mov sb, r0
007f1a04  70 00 94 e5                                      ldr r0, [r4, #0x70]
007f1a08  74 b0 94 e5                                      ldr fp, [r4, #0x74]
007f1a0c  00 10 a0 e1                                      mov r1, r0
007f1a10  d5 74 ec eb                                      bl #0x30ed6c
007f1a14  0b 10 a0 e1                                      mov r1, fp
007f1a18  00 70 a0 e1                                      mov r7, r0
007f1a1c  0b 00 a0 e1                                      mov r0, fp
007f1a20  d1 74 ec eb                                      bl #0x30ed6c
007f1a24  00 10 a0 e1                                      mov r1, r0
007f1a28  07 00 a0 e1                                      mov r0, r7
007f1a2c  5c 74 ec eb                                      bl #0x30eba4
007f1a30  bb 71 ec eb                                      bl #0x30e124
007f1a34  0a 17 0d e3                                      movw r1, #0xd70a
007f1a38  00 70 a0 e1                                      mov r7, r0
007f1a3c  a3 1b 43 e3                                      movt r1, #0x3ba3
007f1a40  09 00 a0 e1                                      mov r0, sb
007f1a44  2b 72 ec eb                                      bl #0x30e2f8
007f1a48  00 00 50 e3                                      cmp r0, #0
007f1a4c  00 30 a0 03                                      moveq r3, #0
007f1a50  6c 30 84 05                                      streq r3, [r4, #0x6c]
007f1a54  68 30 84 05                                      streq r3, [r4, #0x68]
007f1a58  0b 00 00 0a                                      beq #0x7f1a8c
007f1a5c  09 10 a0 e1                                      mov r1, sb
007f1a60  fe 05 a0 e3                                      mov r0, #0x3f800000
007f1a64  8a 74 ec eb                                      bl #0x30ec94
007f1a68  00 10 a0 e1                                      mov r1, r0
007f1a6c  00 b0 a0 e1                                      mov fp, r0
007f1a70  68 00 94 e5                                      ldr r0, [r4, #0x68]
007f1a74  bc 74 ec eb                                      bl #0x30ed6c
007f1a78  0b 10 a0 e1                                      mov r1, fp
007f1a7c  68 00 84 e5                                      str r0, [r4, #0x68]
007f1a80  6c 00 94 e5                                      ldr r0, [r4, #0x6c]
007f1a84  b8 74 ec eb                                      bl #0x30ed6c
007f1a88  6c 00 84 e5                                      str r0, [r4, #0x6c]
007f1a8c  0a 17 0d e3                                      movw r1, #0xd70a
007f1a90  07 00 a0 e1                                      mov r0, r7
007f1a94  a3 1b 43 e3                                      movt r1, #0x3ba3
007f1a98  16 72 ec eb                                      bl #0x30e2f8
007f1a9c  00 00 50 e3                                      cmp r0, #0
007f1aa0  00 30 a0 03                                      moveq r3, #0
007f1aa4  74 30 84 05                                      streq r3, [r4, #0x74]
007f1aa8  70 30 84 05                                      streq r3, [r4, #0x70]
007f1aac  0b 00 00 0a                                      beq #0x7f1ae0
007f1ab0  07 10 a0 e1                                      mov r1, r7
007f1ab4  fe 05 a0 e3                                      mov r0, #0x3f800000
007f1ab8  75 74 ec eb                                      bl #0x30ec94
007f1abc  00 10 a0 e1                                      mov r1, r0
007f1ac0  00 b0 a0 e1                                      mov fp, r0
007f1ac4  70 00 94 e5                                      ldr r0, [r4, #0x70]
007f1ac8  a7 74 ec eb                                      bl #0x30ed6c
007f1acc  0b 10 a0 e1                                      mov r1, fp
007f1ad0  70 00 84 e5                                      str r0, [r4, #0x70]
007f1ad4  74 00 94 e5                                      ldr r0, [r4, #0x74]
007f1ad8  a3 74 ec eb                                      bl #0x30ed6c
007f1adc  74 00 84 e5                                      str r0, [r4, #0x74]
007f1ae0  09 10 a0 e1                                      mov r1, sb
007f1ae4  78 00 94 e5                                      ldr r0, [r4, #0x78]
007f1ae8  2f 72 ec eb                                      bl #0x30e3ac
007f1aec  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
007f1af0  00 90 a0 e1                                      mov sb, r0
007f1af4  07 00 a0 e1                                      mov r0, r7
007f1af8  9b 74 ec eb                                      bl #0x30ed6c
007f1afc  00 10 a0 e1                                      mov r1, r0
007f1b00  09 00 a0 e1                                      mov r0, sb
007f1b04  28 72 ec eb                                      bl #0x30e3ac
007f1b08  02 71 80 e2                                      add r7, r0, #0x80000000
007f1b0c  00 90 a0 e1                                      mov sb, r0
007f1b10  00 10 a0 e3                                      mov r1, #0
007f1b14  07 00 a0 e1                                      mov r0, r7
007f1b18  fb 72 ec eb                                      bl #0x30e70c
007f1b1c  0a 17 0d e3                                      movw r1, #0xd70a
007f1b20  00 00 50 e3                                      cmp r0, #0
007f1b24  a3 1b 43 e3                                      movt r1, #0x3ba3
007f1b28  09 00 a0 e1                                      mov r0, sb
007f1b2c  00 70 a0 13                                      movne r7, #0
007f1b30  1b 74 ec eb                                      bl #0x30eba4
007f1b34  00 10 a0 e3                                      mov r1, #0
007f1b38  00 90 a0 e1                                      mov sb, r0
007f1b3c  f2 72 ec eb                                      bl #0x30e70c
007f1b40  00 00 50 e3                                      cmp r0, #0
007f1b44  00 90 a0 03                                      moveq sb, #0
007f1b48  73 00 00 1a                                      bne #0x7f1d1c
007f1b4c  88 00 94 e5                                      ldr r0, [r4, #0x88]
007f1b50  a0 b0 94 e5                                      ldr fp, [r4, #0xa0]
007f1b54  09 10 a0 e1                                      mov r1, sb
007f1b58  02 01 80 e2                                      add r0, r0, #0x80000000
007f1b5c  82 74 ec eb                                      bl #0x30ed6c
007f1b60  0b 10 a0 e1                                      mov r1, fp
007f1b64  0e 74 ec eb                                      bl #0x30eba4
007f1b68  00 10 a0 e3                                      mov r1, #0
007f1b6c  00 90 a0 e1                                      mov sb, r0
007f1b70  e5 72 ec eb                                      bl #0x30e70c
007f1b74  00 00 50 e3                                      cmp r0, #0
007f1b78  00 90 a0 13                                      movne sb, #0
007f1b7c  0b 10 a0 e1                                      mov r1, fp
007f1b80  a0 90 84 e5                                      str sb, [r4, #0xa0]
007f1b84  09 00 a0 e1                                      mov r0, sb
007f1b88  07 72 ec eb                                      bl #0x30e3ac
007f1b8c  02 31 80 e2                                      add r3, r0, #0x80000000
007f1b90  68 10 94 e5                                      ldr r1, [r4, #0x68]
007f1b94  00 90 a0 e1                                      mov sb, r0
007f1b98  03 00 a0 e1                                      mov r0, r3
007f1b9c  03 b0 a0 e1                                      mov fp, r3
007f1ba0  71 74 ec eb                                      bl #0x30ed6c
007f1ba4  20 00 8d e5                                      str r0, [sp, #0x20]
007f1ba8  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
007f1bac  0b 00 a0 e1                                      mov r0, fp
007f1bb0  6d 74 ec eb                                      bl #0x30ed6c
007f1bb4  00 b0 a0 e1                                      mov fp, r0
007f1bb8  7c 00 94 e5                                      ldr r0, [r4, #0x7c]
007f1bbc  09 10 a0 e1                                      mov r1, sb
007f1bc0  02 01 80 e2                                      add r0, r0, #0x80000000
007f1bc4  68 74 ec eb                                      bl #0x30ed6c
007f1bc8  70 10 94 e5                                      ldr r1, [r4, #0x70]
007f1bcc  00 90 a0 e1                                      mov sb, r0
007f1bd0  65 74 ec eb                                      bl #0x30ed6c
007f1bd4  24 00 8d e5                                      str r0, [sp, #0x24]
007f1bd8  74 10 94 e5                                      ldr r1, [r4, #0x74]
007f1bdc  09 00 a0 e1                                      mov r0, sb
007f1be0  61 74 ec eb                                      bl #0x30ed6c
007f1be4  78 30 96 e5                                      ldr r3, [r6, #0x78]
007f1be8  20 10 9d e5                                      ldr r1, [sp, #0x20]
007f1bec  00 90 a0 e1                                      mov sb, r0
007f1bf0  03 00 a0 e1                                      mov r0, r3
007f1bf4  04 30 8d e5                                      str r3, [sp, #4]
007f1bf8  5b 74 ec eb                                      bl #0x30ed6c
007f1bfc  00 10 a0 e1                                      mov r1, r0
007f1c00  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
007f1c04  e6 73 ec eb                                      bl #0x30eba4
007f1c08  2c 00 86 e5                                      str r0, [r6, #0x2c]
007f1c0c  04 30 9d e5                                      ldr r3, [sp, #4]
007f1c10  0b 10 a0 e1                                      mov r1, fp
007f1c14  03 00 a0 e1                                      mov r0, r3
007f1c18  53 74 ec eb                                      bl #0x30ed6c
007f1c1c  00 10 a0 e1                                      mov r1, r0
007f1c20  30 00 96 e5                                      ldr r0, [r6, #0x30]
007f1c24  de 73 ec eb                                      bl #0x30eba4
007f1c28  30 00 86 e5                                      str r0, [r6, #0x30]
007f1c2c  0b 10 a0 e1                                      mov r1, fp
007f1c30  18 00 9d e5                                      ldr r0, [sp, #0x18]
007f1c34  4c 74 ec eb                                      bl #0x30ed6c
007f1c38  20 10 9d e5                                      ldr r1, [sp, #0x20]
007f1c3c  00 b0 a0 e1                                      mov fp, r0
007f1c40  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007f1c44  48 74 ec eb                                      bl #0x30ed6c
007f1c48  00 10 a0 e1                                      mov r1, r0
007f1c4c  0b 00 a0 e1                                      mov r0, fp
007f1c50  d5 71 ec eb                                      bl #0x30e3ac
007f1c54  80 10 96 e5                                      ldr r1, [r6, #0x80]
007f1c58  43 74 ec eb                                      bl #0x30ed6c
007f1c5c  00 10 a0 e1                                      mov r1, r0
007f1c60  38 00 96 e5                                      ldr r0, [r6, #0x38]
007f1c64  ce 73 ec eb                                      bl #0x30eba4
007f1c68  38 00 86 e5                                      str r0, [r6, #0x38]
007f1c6c  78 b0 95 e5                                      ldr fp, [r5, #0x78]
007f1c70  24 10 9d e5                                      ldr r1, [sp, #0x24]
007f1c74  0b 00 a0 e1                                      mov r0, fp
007f1c78  3b 74 ec eb                                      bl #0x30ed6c
007f1c7c  00 10 a0 e1                                      mov r1, r0
007f1c80  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
007f1c84  c6 73 ec eb                                      bl #0x30eba4
007f1c88  09 10 a0 e1                                      mov r1, sb
007f1c8c  2c 00 85 e5                                      str r0, [r5, #0x2c]
007f1c90  0b 00 a0 e1                                      mov r0, fp
007f1c94  34 74 ec eb                                      bl #0x30ed6c
007f1c98  00 10 a0 e1                                      mov r1, r0
007f1c9c  30 00 95 e5                                      ldr r0, [r5, #0x30]
007f1ca0  bf 73 ec eb                                      bl #0x30eba4
007f1ca4  30 00 85 e5                                      str r0, [r5, #0x30]
007f1ca8  08 00 9d e5                                      ldr r0, [sp, #8]
007f1cac  09 10 a0 e1                                      mov r1, sb
007f1cb0  2d 74 ec eb                                      bl #0x30ed6c
007f1cb4  24 10 9d e5                                      ldr r1, [sp, #0x24]
007f1cb8  00 90 a0 e1                                      mov sb, r0
007f1cbc  14 00 9d e5                                      ldr r0, [sp, #0x14]
007f1cc0  29 74 ec eb                                      bl #0x30ed6c
007f1cc4  00 10 a0 e1                                      mov r1, r0
007f1cc8  09 00 a0 e1                                      mov r0, sb
007f1ccc  b6 71 ec eb                                      bl #0x30e3ac
007f1cd0  80 10 95 e5                                      ldr r1, [r5, #0x80]
007f1cd4  24 74 ec eb                                      bl #0x30ed6c
007f1cd8  00 10 a0 e1                                      mov r1, r0
007f1cdc  38 00 95 e5                                      ldr r0, [r5, #0x38]
007f1ce0  af 73 ec eb                                      bl #0x30eba4
007f1ce4  38 00 85 e5                                      str r0, [r5, #0x38]
007f1ce8  06 00 a0 e1                                      mov r0, r6
007f1cec  4a d6 ff eb                                      bl #0x7e761c
007f1cf0  05 00 a0 e1                                      mov r0, r5
007f1cf4  48 d6 ff eb                                      bl #0x7e761c
007f1cf8  83 fd ff ea                                      b #0x7f130c
007f1cfc  cd 1c 0c e3                                      movw r1, #0xcccd
007f1d00  0a 00 a0 e1                                      mov r0, sl
007f1d04  4c 1e 4b e3                                      movt r1, #0xbe4c
007f1d08  7f 72 ec eb                                      bl #0x30e70c
007f1d0c  00 00 50 e3                                      cmp r0, #0
007f1d10  cd ac 0c 13                                      movwne sl, #0xcccd
007f1d14  4c ae 4b 13                                      movtne sl, #0xbe4c
007f1d18  ef fd ff ea                                      b #0x7f14dc
007f1d1c  cd 1c 0c e3                                      movw r1, #0xcccd
007f1d20  09 00 a0 e1                                      mov r0, sb
007f1d24  4c 1e 4b e3                                      movt r1, #0xbe4c
007f1d28  77 72 ec eb                                      bl #0x30e70c
007f1d2c  00 00 50 e3                                      cmp r0, #0
007f1d30  cd 9c 0c 13                                      movwne sb, #0xcccd
007f1d34  4c 9e 4b 13                                      movtne sb, #0xbe4c
007f1d38  83 ff ff ea                                      b #0x7f1b4c
007f1d3c  cd 1c 0c e3                                      movw r1, #0xcccd
007f1d40  08 00 a0 e1                                      mov r0, r8
007f1d44  4c 1e 4b e3                                      movt r1, #0xbe4c
007f1d48  6f 72 ec eb                                      bl #0x30e70c
007f1d4c  00 00 50 e3                                      cmp r0, #0
007f1d50  cd 8c 0c 13                                      movwne r8, #0xcccd
007f1d54  4c 8e 4b 13                                      movtne r8, #0xbe4c
007f1d58  82 fe ff ea                                      b #0x7f1768
