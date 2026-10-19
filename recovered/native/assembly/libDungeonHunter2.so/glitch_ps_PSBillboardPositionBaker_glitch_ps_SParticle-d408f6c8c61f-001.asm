; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064dcd8, declared_size=1776, range_size=1776, mode=arm
; class-group: glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>
; alias: _ZN6glitch2ps24PSBillboardPositionBakerINS0_9SParticleEE28getPerParticleSystemPositionEPKNS0_16IParticleContextIS2_EEPKNS_4core8CMatrix4IfEE
; demangled: glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>::getPerParticleSystemPosition(glitch::ps::IParticleContext<glitch::ps::SParticle> const*, glitch::core::CMatrix4<float> const*)
; decoder-mode: arm
0064dcd8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0064dcdc  dc 66 9f e5                                      ldr r6, [pc, #0x6dc]
0064dce0  dc 76 9f e5                                      ldr r7, [pc, #0x6dc]
0064dce4  04 c0 91 e5                                      ldr ip, [r1, #4]
0064dce8  06 60 8f e0                                      add r6, pc, r6
0064dcec  14 20 91 e5                                      ldr r2, [r1, #0x14]
0064dcf0  24 30 91 e5                                      ldr r3, [r1, #0x24]
0064dcf4  07 50 96 e7                                      ldr r5, [r6, r7]
0064dcf8  54 d0 4d e2                                      sub sp, sp, #0x54
0064dcfc  00 40 a0 e1                                      mov r4, r0
0064dd00  00 c0 85 e5                                      str ip, [r5]
0064dd04  04 20 85 e5                                      str r2, [r5, #4]
0064dd08  08 30 85 e5                                      str r3, [r5, #8]
0064dd0c  28 30 91 e5                                      ldr r3, [r1, #0x28]
0064dd10  18 20 91 e5                                      ldr r2, [r1, #0x18]
0064dd14  08 c0 91 e5                                      ldr ip, [r1, #8]
0064dd18  02 31 83 e2                                      add r3, r3, #0x80000000
0064dd1c  02 21 82 e2                                      add r2, r2, #0x80000000
0064dd20  02 11 8c e2                                      add r1, ip, #0x80000000
0064dd24  0c 10 85 e5                                      str r1, [r5, #0xc]
0064dd28  10 20 85 e5                                      str r2, [r5, #0x10]
0064dd2c  14 30 85 e5                                      str r3, [r5, #0x14]
0064dd30  00 30 90 e5                                      ldr r3, [r0]
0064dd34  0f e0 a0 e1                                      mov lr, pc
0064dd38  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0064dd3c  21 30 d4 e5                                      ldrb r3, [r4, #0x21]
0064dd40  00 80 a0 e1                                      mov r8, r0
0064dd44  00 00 53 e3                                      cmp r3, #0
0064dd48  fb 00 00 0a                                      beq #0x64e13c
0064dd4c  00 10 90 e5                                      ldr r1, [r0]
0064dd50  08 00 94 e5                                      ldr r0, [r4, #8]
0064dd54  04 04 f3 eb                                      bl #0x30ed6c
0064dd58  10 10 98 e5                                      ldr r1, [r8, #0x10]
0064dd5c  00 a0 a0 e1                                      mov sl, r0
0064dd60  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0064dd64  00 04 f3 eb                                      bl #0x30ed6c
0064dd68  00 10 a0 e1                                      mov r1, r0
0064dd6c  0a 00 a0 e1                                      mov r0, sl
0064dd70  8b 03 f3 eb                                      bl #0x30eba4
0064dd74  20 10 98 e5                                      ldr r1, [r8, #0x20]
0064dd78  00 a0 a0 e1                                      mov sl, r0
0064dd7c  10 00 94 e5                                      ldr r0, [r4, #0x10]
0064dd80  f9 03 f3 eb                                      bl #0x30ed6c
0064dd84  00 10 a0 e1                                      mov r1, r0
0064dd88  0a 00 a0 e1                                      mov r0, sl
0064dd8c  84 03 f3 eb                                      bl #0x30eba4
0064dd90  18 00 85 e5                                      str r0, [r5, #0x18]
0064dd94  04 10 98 e5                                      ldr r1, [r8, #4]
0064dd98  08 00 94 e5                                      ldr r0, [r4, #8]
0064dd9c  f2 03 f3 eb                                      bl #0x30ed6c
0064dda0  14 10 98 e5                                      ldr r1, [r8, #0x14]
0064dda4  00 a0 a0 e1                                      mov sl, r0
0064dda8  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0064ddac  ee 03 f3 eb                                      bl #0x30ed6c
0064ddb0  00 10 a0 e1                                      mov r1, r0
0064ddb4  0a 00 a0 e1                                      mov r0, sl
0064ddb8  79 03 f3 eb                                      bl #0x30eba4
0064ddbc  24 10 98 e5                                      ldr r1, [r8, #0x24]
0064ddc0  00 a0 a0 e1                                      mov sl, r0
0064ddc4  10 00 94 e5                                      ldr r0, [r4, #0x10]
0064ddc8  e7 03 f3 eb                                      bl #0x30ed6c
0064ddcc  00 10 a0 e1                                      mov r1, r0
0064ddd0  0a 00 a0 e1                                      mov r0, sl
0064ddd4  72 03 f3 eb                                      bl #0x30eba4
0064ddd8  1c 00 85 e5                                      str r0, [r5, #0x1c]
0064dddc  08 10 98 e5                                      ldr r1, [r8, #8]
0064dde0  08 00 94 e5                                      ldr r0, [r4, #8]
0064dde4  e0 03 f3 eb                                      bl #0x30ed6c
0064dde8  18 10 98 e5                                      ldr r1, [r8, #0x18]
0064ddec  00 a0 a0 e1                                      mov sl, r0
0064ddf0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0064ddf4  dc 03 f3 eb                                      bl #0x30ed6c
0064ddf8  00 10 a0 e1                                      mov r1, r0
0064ddfc  0a 00 a0 e1                                      mov r0, sl
0064de00  67 03 f3 eb                                      bl #0x30eba4
0064de04  28 10 98 e5                                      ldr r1, [r8, #0x28]
0064de08  00 a0 a0 e1                                      mov sl, r0
0064de0c  10 00 94 e5                                      ldr r0, [r4, #0x10]
0064de10  d5 03 f3 eb                                      bl #0x30ed6c
0064de14  00 10 a0 e1                                      mov r1, r0
0064de18  0a 00 a0 e1                                      mov r0, sl
0064de1c  60 03 f3 eb                                      bl #0x30eba4
0064de20  20 00 85 e5                                      str r0, [r5, #0x20]
0064de24  00 10 98 e5                                      ldr r1, [r8]
0064de28  14 00 94 e5                                      ldr r0, [r4, #0x14]
0064de2c  ce 03 f3 eb                                      bl #0x30ed6c
0064de30  10 10 98 e5                                      ldr r1, [r8, #0x10]
0064de34  00 a0 a0 e1                                      mov sl, r0
0064de38  18 00 94 e5                                      ldr r0, [r4, #0x18]
0064de3c  ca 03 f3 eb                                      bl #0x30ed6c
0064de40  00 10 a0 e1                                      mov r1, r0
0064de44  0a 00 a0 e1                                      mov r0, sl
0064de48  55 03 f3 eb                                      bl #0x30eba4
0064de4c  20 10 98 e5                                      ldr r1, [r8, #0x20]
0064de50  00 a0 a0 e1                                      mov sl, r0
0064de54  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0064de58  c3 03 f3 eb                                      bl #0x30ed6c
0064de5c  00 10 a0 e1                                      mov r1, r0
0064de60  0a 00 a0 e1                                      mov r0, sl
0064de64  4e 03 f3 eb                                      bl #0x30eba4
0064de68  24 00 85 e5                                      str r0, [r5, #0x24]
0064de6c  04 10 98 e5                                      ldr r1, [r8, #4]
0064de70  14 00 94 e5                                      ldr r0, [r4, #0x14]
0064de74  bc 03 f3 eb                                      bl #0x30ed6c
0064de78  14 10 98 e5                                      ldr r1, [r8, #0x14]
0064de7c  00 a0 a0 e1                                      mov sl, r0
0064de80  18 00 94 e5                                      ldr r0, [r4, #0x18]
0064de84  b8 03 f3 eb                                      bl #0x30ed6c
0064de88  00 10 a0 e1                                      mov r1, r0
0064de8c  0a 00 a0 e1                                      mov r0, sl
0064de90  43 03 f3 eb                                      bl #0x30eba4
0064de94  24 10 98 e5                                      ldr r1, [r8, #0x24]
0064de98  00 a0 a0 e1                                      mov sl, r0
0064de9c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0064dea0  b1 03 f3 eb                                      bl #0x30ed6c
0064dea4  00 10 a0 e1                                      mov r1, r0
0064dea8  0a 00 a0 e1                                      mov r0, sl
0064deac  3c 03 f3 eb                                      bl #0x30eba4
0064deb0  28 00 85 e5                                      str r0, [r5, #0x28]
0064deb4  08 10 98 e5                                      ldr r1, [r8, #8]
0064deb8  14 00 94 e5                                      ldr r0, [r4, #0x14]
0064debc  aa 03 f3 eb                                      bl #0x30ed6c
0064dec0  18 10 98 e5                                      ldr r1, [r8, #0x18]
0064dec4  00 a0 a0 e1                                      mov sl, r0
0064dec8  18 00 94 e5                                      ldr r0, [r4, #0x18]
0064decc  a6 03 f3 eb                                      bl #0x30ed6c
0064ded0  00 10 a0 e1                                      mov r1, r0
0064ded4  0a 00 a0 e1                                      mov r0, sl
0064ded8  31 03 f3 eb                                      bl #0x30eba4
0064dedc  28 10 98 e5                                      ldr r1, [r8, #0x28]
0064dee0  00 a0 a0 e1                                      mov sl, r0
0064dee4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0064dee8  9f 03 f3 eb                                      bl #0x30ed6c
0064deec  00 10 a0 e1                                      mov r1, r0
0064def0  0a 00 a0 e1                                      mov r0, sl
0064def4  2a 03 f3 eb                                      bl #0x30eba4
0064def8  2c 00 85 e5                                      str r0, [r5, #0x2c]
0064defc  04 80 d4 e5                                      ldrb r8, [r4, #4]
0064df00  08 50 94 e5                                      ldr r5, [r4, #8]
0064df04  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0064df08  10 00 94 e5                                      ldr r0, [r4, #0x10]
0064df0c  14 10 94 e5                                      ldr r1, [r4, #0x14]
0064df10  18 20 94 e5                                      ldr r2, [r4, #0x18]
0064df14  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0064df18  00 00 58 e3                                      cmp r8, #0
0064df1c  44 50 8d e5                                      str r5, [sp, #0x44]
0064df20  48 c0 8d e5                                      str ip, [sp, #0x48]
0064df24  4c 00 8d e5                                      str r0, [sp, #0x4c]
0064df28  38 10 8d e5                                      str r1, [sp, #0x38]
0064df2c  3c 20 8d e5                                      str r2, [sp, #0x3c]
0064df30  40 30 8d e5                                      str r3, [sp, #0x40]
0064df34  02 00 00 0a                                      beq #0x64df44
0064df38  05 30 d4 e5                                      ldrb r3, [r4, #5]
0064df3c  00 00 53 e3                                      cmp r3, #0
0064df40  7b 00 00 1a                                      bne #0x64e134
0064df44  07 50 96 e7                                      ldr r5, [r6, r7]
0064df48  10 20 95 e5                                      ldr r2, [r5, #0x10]
0064df4c  08 90 95 e5                                      ldr sb, [r5, #8]
0064df50  04 80 95 e5                                      ldr r8, [r5, #4]
0064df54  02 01 82 e2                                      add r0, r2, #0x80000000
0064df58  09 10 a0 e1                                      mov r1, sb
0064df5c  14 a0 95 e5                                      ldr sl, [r5, #0x14]
0064df60  00 20 8d e5                                      str r2, [sp]
0064df64  80 03 f3 eb                                      bl #0x30ed6c
0064df68  08 10 a0 e1                                      mov r1, r8
0064df6c  00 b0 a0 e1                                      mov fp, r0
0064df70  0a 00 a0 e1                                      mov r0, sl
0064df74  7c 03 f3 eb                                      bl #0x30ed6c
0064df78  00 10 a0 e1                                      mov r1, r0
0064df7c  0b 00 a0 e1                                      mov r0, fp
0064df80  07 03 f3 eb                                      bl #0x30eba4
0064df84  00 30 95 e5                                      ldr r3, [r5]
0064df88  02 a1 8a e2                                      add sl, sl, #0x80000000
0064df8c  2c 00 8d e5                                      str r0, [sp, #0x2c]
0064df90  03 10 a0 e1                                      mov r1, r3
0064df94  0a 00 a0 e1                                      mov r0, sl
0064df98  0c a0 95 e5                                      ldr sl, [r5, #0xc]
0064df9c  04 30 8d e5                                      str r3, [sp, #4]
0064dfa0  71 03 f3 eb                                      bl #0x30ed6c
0064dfa4  0a 10 a0 e1                                      mov r1, sl
0064dfa8  00 b0 a0 e1                                      mov fp, r0
0064dfac  09 00 a0 e1                                      mov r0, sb
0064dfb0  6d 03 f3 eb                                      bl #0x30ed6c
0064dfb4  00 10 a0 e1                                      mov r1, r0
0064dfb8  0b 00 a0 e1                                      mov r0, fp
0064dfbc  f8 02 f3 eb                                      bl #0x30eba4
0064dfc0  02 11 8a e2                                      add r1, sl, #0x80000000
0064dfc4  30 00 8d e5                                      str r0, [sp, #0x30]
0064dfc8  08 00 a0 e1                                      mov r0, r8
0064dfcc  66 03 f3 eb                                      bl #0x30ed6c
0064dfd0  0c 00 9d e8                                      ldm sp, {r2, r3}
0064dfd4  00 80 a0 e1                                      mov r8, r0
0064dfd8  03 10 a0 e1                                      mov r1, r3
0064dfdc  02 00 a0 e1                                      mov r0, r2
0064dfe0  61 03 f3 eb                                      bl #0x30ed6c
0064dfe4  00 10 a0 e1                                      mov r1, r0
0064dfe8  08 00 a0 e1                                      mov r0, r8
0064dfec  ec 02 f3 eb                                      bl #0x30eba4
0064dff0  34 00 8d e5                                      str r0, [sp, #0x34]
0064dff4  2c 00 8d e2                                      add r0, sp, #0x2c
0064dff8  38 42 f4 eb                                      bl #0x35e8e0
0064dffc  3f 14 a0 e3                                      mov r1, #0x3f000000
0064e000  00 80 a0 e1                                      mov r8, r0
0064e004  04 00 90 e5                                      ldr r0, [r0, #4]
0064e008  57 03 f3 eb                                      bl #0x30ed6c
0064e00c  3f 14 a0 e3                                      mov r1, #0x3f000000
0064e010  00 90 a0 e1                                      mov sb, r0
0064e014  08 00 98 e5                                      ldr r0, [r8, #8]
0064e018  53 03 f3 eb                                      bl #0x30ed6c
0064e01c  3f 14 a0 e3                                      mov r1, #0x3f000000
0064e020  00 a0 a0 e1                                      mov sl, r0
0064e024  00 00 98 e5                                      ldr r0, [r8]
0064e028  4f 03 f3 eb                                      bl #0x30ed6c
0064e02c  1c 90 85 e5                                      str sb, [r5, #0x1c]
0064e030  18 00 85 e5                                      str r0, [r5, #0x18]
0064e034  20 a0 85 e5                                      str sl, [r5, #0x20]
0064e038  05 00 a0 e1                                      mov r0, r5
0064e03c  27 42 f4 eb                                      bl #0x35e8e0
0064e040  3f 14 a0 e3                                      mov r1, #0x3f000000
0064e044  00 90 a0 e1                                      mov sb, r0
0064e048  00 00 90 e5                                      ldr r0, [r0]
0064e04c  46 03 f3 eb                                      bl #0x30ed6c
0064e050  3f 14 a0 e3                                      mov r1, #0x3f000000
0064e054  00 80 a0 e1                                      mov r8, r0
0064e058  04 00 99 e5                                      ldr r0, [sb, #4]
0064e05c  42 03 f3 eb                                      bl #0x30ed6c
0064e060  3f 14 a0 e3                                      mov r1, #0x3f000000
0064e064  00 a0 a0 e1                                      mov sl, r0
0064e068  08 00 99 e5                                      ldr r0, [sb, #8]
0064e06c  3e 03 f3 eb                                      bl #0x30ed6c
0064e070  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
0064e074  24 80 85 e5                                      str r8, [r5, #0x24]
0064e078  28 a0 85 e5                                      str sl, [r5, #0x28]
0064e07c  02 11 82 e2                                      add r1, r2, #0x80000000
0064e080  2c 00 85 e5                                      str r0, [r5, #0x2c]
0064e084  00 90 a0 e1                                      mov sb, r0
0064e088  00 20 8d e5                                      str r2, [sp]
0064e08c  36 03 f3 eb                                      bl #0x30ed6c
0064e090  20 10 95 e5                                      ldr r1, [r5, #0x20]
0064e094  00 b0 a0 e1                                      mov fp, r0
0064e098  0a 00 a0 e1                                      mov r0, sl
0064e09c  32 03 f3 eb                                      bl #0x30ed6c
0064e0a0  00 10 a0 e1                                      mov r1, r0
0064e0a4  0b 00 a0 e1                                      mov r0, fp
0064e0a8  bd 02 f3 eb                                      bl #0x30eba4
0064e0ac  20 30 95 e5                                      ldr r3, [r5, #0x20]
0064e0b0  00 b0 a0 e1                                      mov fp, r0
0064e0b4  08 00 a0 e1                                      mov r0, r8
0064e0b8  02 11 83 e2                                      add r1, r3, #0x80000000
0064e0bc  2a 03 f3 eb                                      bl #0x30ed6c
0064e0c0  18 10 95 e5                                      ldr r1, [r5, #0x18]
0064e0c4  00 30 a0 e1                                      mov r3, r0
0064e0c8  09 00 a0 e1                                      mov r0, sb
0064e0cc  04 30 8d e5                                      str r3, [sp, #4]
0064e0d0  25 03 f3 eb                                      bl #0x30ed6c
0064e0d4  04 30 9d e5                                      ldr r3, [sp, #4]
0064e0d8  00 10 a0 e1                                      mov r1, r0
0064e0dc  03 00 a0 e1                                      mov r0, r3
0064e0e0  af 02 f3 eb                                      bl #0x30eba4
0064e0e4  18 30 95 e5                                      ldr r3, [r5, #0x18]
0064e0e8  00 90 a0 e1                                      mov sb, r0
0064e0ec  0a 00 a0 e1                                      mov r0, sl
0064e0f0  02 11 83 e2                                      add r1, r3, #0x80000000
0064e0f4  1c 03 f3 eb                                      bl #0x30ed6c
0064e0f8  00 20 9d e5                                      ldr r2, [sp]
0064e0fc  00 a0 a0 e1                                      mov sl, r0
0064e100  08 00 a0 e1                                      mov r0, r8
0064e104  02 10 a0 e1                                      mov r1, r2
0064e108  17 03 f3 eb                                      bl #0x30ed6c
0064e10c  00 10 a0 e1                                      mov r1, r0
0064e110  0a 00 a0 e1                                      mov r0, sl
0064e114  a2 02 f3 eb                                      bl #0x30eba4
0064e118  04 30 d4 e5                                      ldrb r3, [r4, #4]
0064e11c  00 80 a0 e1                                      mov r8, r0
0064e120  00 00 53 e3                                      cmp r3, #0
0064e124  57 00 00 1a                                      bne #0x64e288
0064e128  05 30 d4 e5                                      ldrb r3, [r4, #5]
0064e12c  00 00 53 e3                                      cmp r3, #0
0064e130  0e 00 00 1a                                      bne #0x64e170
0064e134  54 d0 8d e2                                      add sp, sp, #0x54
0064e138  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0064e13c  08 30 94 e5                                      ldr r3, [r4, #8]
0064e140  18 30 85 e5                                      str r3, [r5, #0x18]
0064e144  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0064e148  1c 30 85 e5                                      str r3, [r5, #0x1c]
0064e14c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0064e150  20 30 85 e5                                      str r3, [r5, #0x20]
0064e154  14 30 94 e5                                      ldr r3, [r4, #0x14]
0064e158  24 30 85 e5                                      str r3, [r5, #0x24]
0064e15c  18 30 94 e5                                      ldr r3, [r4, #0x18]
0064e160  28 30 85 e5                                      str r3, [r5, #0x28]
0064e164  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0064e168  2c 30 85 e5                                      str r3, [r5, #0x2c]
0064e16c  62 ff ff ea                                      b #0x64defc
0064e170  38 00 8d e2                                      add r0, sp, #0x38
0064e174  d9 41 f4 eb                                      bl #0x35e8e0
0064e178  3f 14 a0 e3                                      mov r1, #0x3f000000
0064e17c  00 a0 a0 e1                                      mov sl, r0
0064e180  00 00 90 e5                                      ldr r0, [r0]
0064e184  f8 02 f3 eb                                      bl #0x30ed6c
0064e188  3f 14 a0 e3                                      mov r1, #0x3f000000
0064e18c  00 50 a0 e1                                      mov r5, r0
0064e190  04 00 9a e5                                      ldr r0, [sl, #4]
0064e194  f4 02 f3 eb                                      bl #0x30ed6c
0064e198  3f 14 a0 e3                                      mov r1, #0x3f000000
0064e19c  00 40 a0 e1                                      mov r4, r0
0064e1a0  08 00 9a e5                                      ldr r0, [sl, #8]
0064e1a4  f0 02 f3 eb                                      bl #0x30ed6c
0064e1a8  07 60 96 e7                                      ldr r6, [r6, r7]
0064e1ac  00 a0 a0 e1                                      mov sl, r0
0064e1b0  02 11 84 e2                                      add r1, r4, #0x80000000
0064e1b4  24 50 86 e5                                      str r5, [r6, #0x24]
0064e1b8  28 40 86 e5                                      str r4, [r6, #0x28]
0064e1bc  08 00 a0 e1                                      mov r0, r8
0064e1c0  2c a0 86 e5                                      str sl, [r6, #0x2c]
0064e1c4  e8 02 f3 eb                                      bl #0x30ed6c
0064e1c8  0a 10 a0 e1                                      mov r1, sl
0064e1cc  00 70 a0 e1                                      mov r7, r0
0064e1d0  09 00 a0 e1                                      mov r0, sb
0064e1d4  e4 02 f3 eb                                      bl #0x30ed6c
0064e1d8  00 10 a0 e1                                      mov r1, r0
0064e1dc  07 00 a0 e1                                      mov r0, r7
0064e1e0  6f 02 f3 eb                                      bl #0x30eba4
0064e1e4  02 11 8a e2                                      add r1, sl, #0x80000000
0064e1e8  14 00 8d e5                                      str r0, [sp, #0x14]
0064e1ec  0b 00 a0 e1                                      mov r0, fp
0064e1f0  dd 02 f3 eb                                      bl #0x30ed6c
0064e1f4  05 10 a0 e1                                      mov r1, r5
0064e1f8  00 70 a0 e1                                      mov r7, r0
0064e1fc  08 00 a0 e1                                      mov r0, r8
0064e200  d9 02 f3 eb                                      bl #0x30ed6c
0064e204  00 10 a0 e1                                      mov r1, r0
0064e208  07 00 a0 e1                                      mov r0, r7
0064e20c  64 02 f3 eb                                      bl #0x30eba4
0064e210  02 11 85 e2                                      add r1, r5, #0x80000000
0064e214  18 00 8d e5                                      str r0, [sp, #0x18]
0064e218  09 00 a0 e1                                      mov r0, sb
0064e21c  d2 02 f3 eb                                      bl #0x30ed6c
0064e220  04 10 a0 e1                                      mov r1, r4
0064e224  00 50 a0 e1                                      mov r5, r0
0064e228  0b 00 a0 e1                                      mov r0, fp
0064e22c  ce 02 f3 eb                                      bl #0x30ed6c
0064e230  00 10 a0 e1                                      mov r1, r0
0064e234  05 00 a0 e1                                      mov r0, r5
0064e238  59 02 f3 eb                                      bl #0x30eba4
0064e23c  1c 00 8d e5                                      str r0, [sp, #0x1c]
0064e240  14 00 8d e2                                      add r0, sp, #0x14
0064e244  a5 41 f4 eb                                      bl #0x35e8e0
0064e248  3f 14 a0 e3                                      mov r1, #0x3f000000
0064e24c  00 40 a0 e1                                      mov r4, r0
0064e250  04 00 90 e5                                      ldr r0, [r0, #4]
0064e254  c4 02 f3 eb                                      bl #0x30ed6c
0064e258  3f 14 a0 e3                                      mov r1, #0x3f000000
0064e25c  00 50 a0 e1                                      mov r5, r0
0064e260  08 00 94 e5                                      ldr r0, [r4, #8]
0064e264  c0 02 f3 eb                                      bl #0x30ed6c
0064e268  3f 14 a0 e3                                      mov r1, #0x3f000000
0064e26c  00 70 a0 e1                                      mov r7, r0
0064e270  00 00 94 e5                                      ldr r0, [r4]
0064e274  bc 02 f3 eb                                      bl #0x30ed6c
0064e278  20 70 86 e5                                      str r7, [r6, #0x20]
0064e27c  18 00 86 e5                                      str r0, [r6, #0x18]
0064e280  1c 50 86 e5                                      str r5, [r6, #0x1c]
0064e284  aa ff ff ea                                      b #0x64e134
0064e288  44 00 8d e2                                      add r0, sp, #0x44
0064e28c  93 41 f4 eb                                      bl #0x35e8e0
0064e290  3f 14 a0 e3                                      mov r1, #0x3f000000
0064e294  00 a0 a0 e1                                      mov sl, r0
0064e298  00 00 90 e5                                      ldr r0, [r0]
0064e29c  b2 02 f3 eb                                      bl #0x30ed6c
0064e2a0  08 00 8d e5                                      str r0, [sp, #8]
0064e2a4  04 00 9a e5                                      ldr r0, [sl, #4]
0064e2a8  3f 14 a0 e3                                      mov r1, #0x3f000000
0064e2ac  ae 02 f3 eb                                      bl #0x30ed6c
0064e2b0  0c 00 8d e5                                      str r0, [sp, #0xc]
0064e2b4  08 00 9a e5                                      ldr r0, [sl, #8]
0064e2b8  3f 14 a0 e3                                      mov r1, #0x3f000000
0064e2bc  aa 02 f3 eb                                      bl #0x30ed6c
0064e2c0  08 30 9d e5                                      ldr r3, [sp, #8]
0064e2c4  02 11 89 e2                                      add r1, sb, #0x80000000
0064e2c8  00 a0 a0 e1                                      mov sl, r0
0064e2cc  18 30 85 e5                                      str r3, [r5, #0x18]
0064e2d0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0064e2d4  20 00 85 e5                                      str r0, [r5, #0x20]
0064e2d8  1c 30 85 e5                                      str r3, [r5, #0x1c]
0064e2dc  a2 02 f3 eb                                      bl #0x30ed6c
0064e2e0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0064e2e4  00 30 a0 e1                                      mov r3, r0
0064e2e8  08 00 a0 e1                                      mov r0, r8
0064e2ec  04 30 8d e5                                      str r3, [sp, #4]
0064e2f0  9d 02 f3 eb                                      bl #0x30ed6c
0064e2f4  04 30 9d e5                                      ldr r3, [sp, #4]
0064e2f8  00 10 a0 e1                                      mov r1, r0
0064e2fc  03 00 a0 e1                                      mov r0, r3
0064e300  27 02 f3 eb                                      bl #0x30eba4
0064e304  02 11 88 e2                                      add r1, r8, #0x80000000
0064e308  20 00 8d e5                                      str r0, [sp, #0x20]
0064e30c  08 00 9d e5                                      ldr r0, [sp, #8]
0064e310  95 02 f3 eb                                      bl #0x30ed6c
0064e314  0a 10 a0 e1                                      mov r1, sl
0064e318  00 30 a0 e1                                      mov r3, r0
0064e31c  0b 00 a0 e1                                      mov r0, fp
0064e320  04 30 8d e5                                      str r3, [sp, #4]
0064e324  90 02 f3 eb                                      bl #0x30ed6c
0064e328  04 30 9d e5                                      ldr r3, [sp, #4]
0064e32c  00 10 a0 e1                                      mov r1, r0
0064e330  03 00 a0 e1                                      mov r0, r3
0064e334  1a 02 f3 eb                                      bl #0x30eba4
0064e338  02 11 8b e2                                      add r1, fp, #0x80000000
0064e33c  24 00 8d e5                                      str r0, [sp, #0x24]
0064e340  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0064e344  88 02 f3 eb                                      bl #0x30ed6c
0064e348  08 10 9d e5                                      ldr r1, [sp, #8]
0064e34c  00 a0 a0 e1                                      mov sl, r0
0064e350  09 00 a0 e1                                      mov r0, sb
0064e354  84 02 f3 eb                                      bl #0x30ed6c
0064e358  00 10 a0 e1                                      mov r1, r0
0064e35c  0a 00 a0 e1                                      mov r0, sl
0064e360  0f 02 f3 eb                                      bl #0x30eba4
0064e364  28 00 8d e5                                      str r0, [sp, #0x28]
0064e368  20 00 8d e2                                      add r0, sp, #0x20
0064e36c  5b 41 f4 eb                                      bl #0x35e8e0
0064e370  3f 14 a0 e3                                      mov r1, #0x3f000000
0064e374  00 a0 a0 e1                                      mov sl, r0
0064e378  04 00 90 e5                                      ldr r0, [r0, #4]
0064e37c  7a 02 f3 eb                                      bl #0x30ed6c
0064e380  3f 14 a0 e3                                      mov r1, #0x3f000000
0064e384  00 20 a0 e1                                      mov r2, r0
0064e388  08 00 9a e5                                      ldr r0, [sl, #8]
0064e38c  00 20 8d e5                                      str r2, [sp]
0064e390  75 02 f3 eb                                      bl #0x30ed6c
0064e394  3f 14 a0 e3                                      mov r1, #0x3f000000
0064e398  00 30 a0 e1                                      mov r3, r0
0064e39c  00 00 9a e5                                      ldr r0, [sl]
0064e3a0  04 30 8d e5                                      str r3, [sp, #4]
0064e3a4  70 02 f3 eb                                      bl #0x30ed6c
0064e3a8  04 30 9d e5                                      ldr r3, [sp, #4]
0064e3ac  24 00 85 e5                                      str r0, [r5, #0x24]
0064e3b0  2c 30 85 e5                                      str r3, [r5, #0x2c]
0064e3b4  00 20 9d e5                                      ldr r2, [sp]
0064e3b8  28 20 85 e5                                      str r2, [r5, #0x28]
0064e3bc  59 ff ff ea                                      b #0x64e128
; mapping-symbol data/literal pool
0064e3c0  a8 6d 34 00 14 40 00 00                          .byte 0xa8, 0x6d, 0x34, 0x00, 0x14, 0x40, 0x00, 0x00

; FUNCTION 0x006c0238, declared_size=1028, range_size=1028, mode=arm
; class-group: glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>
; alias: _ZN6glitch2ps24PSBillboardPositionBakerINS0_9SParticleEE22getPerParticlePositionEPKNS0_16IParticleContextIS2_EEPKS2_
; demangled: glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>::getPerParticlePosition(glitch::ps::IParticleContext<glitch::ps::SParticle> const*, glitch::ps::SParticle const*)
; decoder-mode: arm
006c0238  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c023c  f0 43 9f e5                                      ldr r4, [pc, #0x3f0]
006c0240  f0 23 9f e5                                      ldr r2, [pc, #0x3f0]
006c0244  74 d0 4d e2                                      sub sp, sp, #0x74
006c0248  04 40 8f e0                                      add r4, pc, r4
006c024c  02 50 94 e7                                      ldr r5, [r4, r2]
006c0250  00 30 a0 e3                                      mov r3, #0
006c0254  04 20 8d e5                                      str r2, [sp, #4]
006c0258  14 30 8d e5                                      str r3, [sp, #0x14]
006c025c  18 80 95 e5                                      ldr r8, [r5, #0x18]
006c0260  1c 70 95 e5                                      ldr r7, [r5, #0x1c]
006c0264  20 60 95 e5                                      ldr r6, [r5, #0x20]
006c0268  24 b0 95 e5                                      ldr fp, [r5, #0x24]
006c026c  28 90 95 e5                                      ldr sb, [r5, #0x28]
006c0270  2c a0 95 e5                                      ldr sl, [r5, #0x2c]
006c0274  fe 25 a0 e3                                      mov r2, #0x3f800000
006c0278  18 20 8d e5                                      str r2, [sp, #0x18]
006c027c  0c 30 8d e5                                      str r3, [sp, #0xc]
006c0280  10 30 8d e5                                      str r3, [sp, #0x10]
006c0284  64 80 8d e5                                      str r8, [sp, #0x64]
006c0288  68 70 8d e5                                      str r7, [sp, #0x68]
006c028c  6c 60 8d e5                                      str r6, [sp, #0x6c]
006c0290  58 b0 8d e5                                      str fp, [sp, #0x58]
006c0294  5c 90 8d e5                                      str sb, [sp, #0x5c]
006c0298  60 a0 8d e5                                      str sl, [sp, #0x60]
006c029c  20 30 d0 e5                                      ldrb r3, [r0, #0x20]
006c02a0  00 10 8d e5                                      str r1, [sp]
006c02a4  00 00 53 e3                                      cmp r3, #0
006c02a8  8a 00 00 1a                                      bne #0x6c04d8
006c02ac  00 20 9d e5                                      ldr r2, [sp]
006c02b0  00 10 a0 e3                                      mov r1, #0
006c02b4  50 00 92 e5                                      ldr r0, [r2, #0x50]
006c02b8  33 37 f1 eb                                      bl #0x30df8c
006c02bc  00 00 50 e3                                      cmp r0, #0
006c02c0  4d 00 00 1a                                      bne #0x6c03fc
006c02c4  0a 10 a0 e1                                      mov r1, sl
006c02c8  02 01 87 e2                                      add r0, r7, #0x80000000
006c02cc  a6 3a f1 eb                                      bl #0x30ed6c
006c02d0  09 10 a0 e1                                      mov r1, sb
006c02d4  00 50 a0 e1                                      mov r5, r0
006c02d8  06 00 a0 e1                                      mov r0, r6
006c02dc  a2 3a f1 eb                                      bl #0x30ed6c
006c02e0  00 10 a0 e1                                      mov r1, r0
006c02e4  05 00 a0 e1                                      mov r0, r5
006c02e8  2d 3a f1 eb                                      bl #0x30eba4
006c02ec  02 61 86 e2                                      add r6, r6, #0x80000000
006c02f0  0b 10 a0 e1                                      mov r1, fp
006c02f4  40 00 8d e5                                      str r0, [sp, #0x40]
006c02f8  06 00 a0 e1                                      mov r0, r6
006c02fc  9a 3a f1 eb                                      bl #0x30ed6c
006c0300  08 10 a0 e1                                      mov r1, r8
006c0304  00 50 a0 e1                                      mov r5, r0
006c0308  0a 00 a0 e1                                      mov r0, sl
006c030c  96 3a f1 eb                                      bl #0x30ed6c
006c0310  00 10 a0 e1                                      mov r1, r0
006c0314  05 00 a0 e1                                      mov r0, r5
006c0318  21 3a f1 eb                                      bl #0x30eba4
006c031c  02 81 88 e2                                      add r8, r8, #0x80000000
006c0320  09 10 a0 e1                                      mov r1, sb
006c0324  44 00 8d e5                                      str r0, [sp, #0x44]
006c0328  08 00 a0 e1                                      mov r0, r8
006c032c  8e 3a f1 eb                                      bl #0x30ed6c
006c0330  0b 10 a0 e1                                      mov r1, fp
006c0334  00 50 a0 e1                                      mov r5, r0
006c0338  07 00 a0 e1                                      mov r0, r7
006c033c  8a 3a f1 eb                                      bl #0x30ed6c
006c0340  00 10 a0 e1                                      mov r1, r0
006c0344  05 00 a0 e1                                      mov r0, r5
006c0348  15 3a f1 eb                                      bl #0x30eba4
006c034c  48 00 8d e5                                      str r0, [sp, #0x48]
006c0350  40 00 8d e2                                      add r0, sp, #0x40
006c0354  61 79 f2 eb                                      bl #0x35e8e0
006c0358  00 20 9d e5                                      ldr r2, [sp]
006c035c  00 30 a0 e1                                      mov r3, r0
006c0360  00 10 a0 e3                                      mov r1, #0
006c0364  54 00 92 e5                                      ldr r0, [r2, #0x54]
006c0368  08 50 93 e5                                      ldr r5, [r3, #8]
006c036c  00 70 93 e5                                      ldr r7, [r3]
006c0370  04 60 93 e5                                      ldr r6, [r3, #4]
006c0374  df 37 f1 eb                                      bl #0x30e2f8
006c0378  00 30 9d e5                                      ldr r3, [sp]
006c037c  00 00 50 e3                                      cmp r0, #0
006c0380  02 51 85 12                                      addne r5, r5, #0x80000000
006c0384  50 10 93 e5                                      ldr r1, [r3, #0x50]
006c0388  3c 50 8d e5                                      str r5, [sp, #0x3c]
006c038c  0c 50 8d e2                                      add r5, sp, #0xc
006c0390  02 71 87 12                                      addne r7, r7, #0x80000000
006c0394  02 61 86 12                                      addne r6, r6, #0x80000000
006c0398  34 20 8d e2                                      add r2, sp, #0x34
006c039c  05 00 a0 e1                                      mov r0, r5
006c03a0  34 70 8d e5                                      str r7, [sp, #0x34]
006c03a4  38 60 8d e5                                      str r6, [sp, #0x38]
006c03a8  83 32 fd eb                                      bl #0x60cdbc
006c03ac  28 00 8d e2                                      add r0, sp, #0x28
006c03b0  05 10 a0 e1                                      mov r1, r5
006c03b4  64 20 8d e2                                      add r2, sp, #0x64
006c03b8  34 6e f2 eb                                      bl #0x35bc90
006c03bc  28 30 9d e5                                      ldr r3, [sp, #0x28]
006c03c0  05 10 a0 e1                                      mov r1, r5
006c03c4  1c 00 8d e2                                      add r0, sp, #0x1c
006c03c8  64 30 8d e5                                      str r3, [sp, #0x64]
006c03cc  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006c03d0  58 20 8d e2                                      add r2, sp, #0x58
006c03d4  68 30 8d e5                                      str r3, [sp, #0x68]
006c03d8  30 30 9d e5                                      ldr r3, [sp, #0x30]
006c03dc  6c 30 8d e5                                      str r3, [sp, #0x6c]
006c03e0  2a 6e f2 eb                                      bl #0x35bc90
006c03e4  1c b0 9d e5                                      ldr fp, [sp, #0x1c]
006c03e8  20 90 9d e5                                      ldr sb, [sp, #0x20]
006c03ec  24 a0 9d e5                                      ldr sl, [sp, #0x24]
006c03f0  64 80 9d e5                                      ldr r8, [sp, #0x64]
006c03f4  68 70 9d e5                                      ldr r7, [sp, #0x68]
006c03f8  6c 60 9d e5                                      ldr r6, [sp, #0x6c]
006c03fc  08 10 a0 e1                                      mov r1, r8
006c0400  0b 00 a0 e1                                      mov r0, fp
006c0404  e8 37 f1 eb                                      bl #0x30e3ac
006c0408  04 20 9d e5                                      ldr r2, [sp, #4]
006c040c  07 10 a0 e1                                      mov r1, r7
006c0410  02 40 94 e7                                      ldr r4, [r4, r2]
006c0414  30 00 84 e5                                      str r0, [r4, #0x30]
006c0418  09 00 a0 e1                                      mov r0, sb
006c041c  e2 37 f1 eb                                      bl #0x30e3ac
006c0420  06 10 a0 e1                                      mov r1, r6
006c0424  34 00 84 e5                                      str r0, [r4, #0x34]
006c0428  0a 00 a0 e1                                      mov r0, sl
006c042c  de 37 f1 eb                                      bl #0x30e3ac
006c0430  02 31 88 e2                                      add r3, r8, #0x80000000
006c0434  38 00 84 e5                                      str r0, [r4, #0x38]
006c0438  0b 10 a0 e1                                      mov r1, fp
006c043c  03 00 a0 e1                                      mov r0, r3
006c0440  d9 37 f1 eb                                      bl #0x30e3ac
006c0444  02 31 87 e2                                      add r3, r7, #0x80000000
006c0448  3c 00 84 e5                                      str r0, [r4, #0x3c]
006c044c  09 10 a0 e1                                      mov r1, sb
006c0450  03 00 a0 e1                                      mov r0, r3
006c0454  d4 37 f1 eb                                      bl #0x30e3ac
006c0458  02 31 86 e2                                      add r3, r6, #0x80000000
006c045c  40 00 84 e5                                      str r0, [r4, #0x40]
006c0460  0a 10 a0 e1                                      mov r1, sl
006c0464  03 00 a0 e1                                      mov r0, r3
006c0468  cf 37 f1 eb                                      bl #0x30e3ac
006c046c  0b 10 a0 e1                                      mov r1, fp
006c0470  44 00 84 e5                                      str r0, [r4, #0x44]
006c0474  08 00 a0 e1                                      mov r0, r8
006c0478  cb 37 f1 eb                                      bl #0x30e3ac
006c047c  09 10 a0 e1                                      mov r1, sb
006c0480  48 00 84 e5                                      str r0, [r4, #0x48]
006c0484  07 00 a0 e1                                      mov r0, r7
006c0488  c7 37 f1 eb                                      bl #0x30e3ac
006c048c  0a 10 a0 e1                                      mov r1, sl
006c0490  4c 00 84 e5                                      str r0, [r4, #0x4c]
006c0494  06 00 a0 e1                                      mov r0, r6
006c0498  c3 37 f1 eb                                      bl #0x30e3ac
006c049c  08 10 a0 e1                                      mov r1, r8
006c04a0  50 00 84 e5                                      str r0, [r4, #0x50]
006c04a4  0b 00 a0 e1                                      mov r0, fp
006c04a8  bd 39 f1 eb                                      bl #0x30eba4
006c04ac  07 10 a0 e1                                      mov r1, r7
006c04b0  54 00 84 e5                                      str r0, [r4, #0x54]
006c04b4  09 00 a0 e1                                      mov r0, sb
006c04b8  b9 39 f1 eb                                      bl #0x30eba4
006c04bc  06 10 a0 e1                                      mov r1, r6
006c04c0  58 00 84 e5                                      str r0, [r4, #0x58]
006c04c4  0a 00 a0 e1                                      mov r0, sl
006c04c8  b5 39 f1 eb                                      bl #0x30eba4
006c04cc  5c 00 84 e5                                      str r0, [r4, #0x5c]
006c04d0  74 d0 8d e2                                      add sp, sp, #0x74
006c04d4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006c04d8  00 30 9d e5                                      ldr r3, [sp]
006c04dc  0c 10 91 e5                                      ldr r1, [r1, #0xc]
006c04e0  58 00 8d e2                                      add r0, sp, #0x58
006c04e4  10 20 93 e5                                      ldr r2, [r3, #0x10]
006c04e8  14 30 93 e5                                      ldr r3, [r3, #0x14]
006c04ec  58 10 8d e5                                      str r1, [sp, #0x58]
006c04f0  5c 20 8d e5                                      str r2, [sp, #0x5c]
006c04f4  60 30 8d e5                                      str r3, [sp, #0x60]
006c04f8  f8 78 f2 eb                                      bl #0x35e8e0
006c04fc  3f 14 a0 e3                                      mov r1, #0x3f000000
006c0500  00 80 a0 e1                                      mov r8, r0
006c0504  00 00 90 e5                                      ldr r0, [r0]
006c0508  17 3a f1 eb                                      bl #0x30ed6c
006c050c  3f 14 a0 e3                                      mov r1, #0x3f000000
006c0510  00 70 a0 e1                                      mov r7, r0
006c0514  04 00 98 e5                                      ldr r0, [r8, #4]
006c0518  13 3a f1 eb                                      bl #0x30ed6c
006c051c  3f 14 a0 e3                                      mov r1, #0x3f000000
006c0520  00 60 a0 e1                                      mov r6, r0
006c0524  08 00 98 e5                                      ldr r0, [r8, #8]
006c0528  0f 3a f1 eb                                      bl #0x30ed6c
006c052c  14 a0 95 e5                                      ldr sl, [r5, #0x14]
006c0530  00 80 a0 e1                                      mov r8, r0
006c0534  02 01 86 e2                                      add r0, r6, #0x80000000
006c0538  0a 10 a0 e1                                      mov r1, sl
006c053c  10 90 95 e5                                      ldr sb, [r5, #0x10]
006c0540  58 70 8d e5                                      str r7, [sp, #0x58]
006c0544  5c 60 8d e5                                      str r6, [sp, #0x5c]
006c0548  60 80 8d e5                                      str r8, [sp, #0x60]
006c054c  06 3a f1 eb                                      bl #0x30ed6c
006c0550  09 10 a0 e1                                      mov r1, sb
006c0554  00 b0 a0 e1                                      mov fp, r0
006c0558  08 00 a0 e1                                      mov r0, r8
006c055c  02 3a f1 eb                                      bl #0x30ed6c
006c0560  00 10 a0 e1                                      mov r1, r0
006c0564  0b 00 a0 e1                                      mov r0, fp
006c0568  8d 39 f1 eb                                      bl #0x30eba4
006c056c  0c 50 95 e5                                      ldr r5, [r5, #0xc]
006c0570  02 81 88 e2                                      add r8, r8, #0x80000000
006c0574  4c 00 8d e5                                      str r0, [sp, #0x4c]
006c0578  05 10 a0 e1                                      mov r1, r5
006c057c  08 00 a0 e1                                      mov r0, r8
006c0580  f9 39 f1 eb                                      bl #0x30ed6c
006c0584  0a 10 a0 e1                                      mov r1, sl
006c0588  00 80 a0 e1                                      mov r8, r0
006c058c  07 00 a0 e1                                      mov r0, r7
006c0590  f5 39 f1 eb                                      bl #0x30ed6c
006c0594  00 10 a0 e1                                      mov r1, r0
006c0598  08 00 a0 e1                                      mov r0, r8
006c059c  80 39 f1 eb                                      bl #0x30eba4
006c05a0  02 11 87 e2                                      add r1, r7, #0x80000000
006c05a4  50 00 8d e5                                      str r0, [sp, #0x50]
006c05a8  09 00 a0 e1                                      mov r0, sb
006c05ac  ee 39 f1 eb                                      bl #0x30ed6c
006c05b0  05 10 a0 e1                                      mov r1, r5
006c05b4  00 70 a0 e1                                      mov r7, r0
006c05b8  06 00 a0 e1                                      mov r0, r6
006c05bc  ea 39 f1 eb                                      bl #0x30ed6c
006c05c0  00 10 a0 e1                                      mov r1, r0
006c05c4  07 00 a0 e1                                      mov r0, r7
006c05c8  75 39 f1 eb                                      bl #0x30eba4
006c05cc  54 00 8d e5                                      str r0, [sp, #0x54]
006c05d0  4c 00 8d e2                                      add r0, sp, #0x4c
006c05d4  c1 78 f2 eb                                      bl #0x35e8e0
006c05d8  00 50 a0 e1                                      mov r5, r0
006c05dc  00 00 90 e5                                      ldr r0, [r0]
006c05e0  3f 14 a0 e3                                      mov r1, #0x3f000000
006c05e4  02 01 80 e2                                      add r0, r0, #0x80000000
006c05e8  df 39 f1 eb                                      bl #0x30ed6c
006c05ec  00 80 a0 e1                                      mov r8, r0
006c05f0  04 00 95 e5                                      ldr r0, [r5, #4]
006c05f4  3f 14 a0 e3                                      mov r1, #0x3f000000
006c05f8  02 01 80 e2                                      add r0, r0, #0x80000000
006c05fc  da 39 f1 eb                                      bl #0x30ed6c
006c0600  00 70 a0 e1                                      mov r7, r0
006c0604  08 00 95 e5                                      ldr r0, [r5, #8]
006c0608  3f 14 a0 e3                                      mov r1, #0x3f000000
006c060c  02 01 80 e2                                      add r0, r0, #0x80000000
006c0610  d5 39 f1 eb                                      bl #0x30ed6c
006c0614  60 a0 9d e5                                      ldr sl, [sp, #0x60]
006c0618  00 60 a0 e1                                      mov r6, r0
006c061c  5c 90 9d e5                                      ldr sb, [sp, #0x5c]
006c0620  58 b0 9d e5                                      ldr fp, [sp, #0x58]
006c0624  64 80 8d e5                                      str r8, [sp, #0x64]
006c0628  68 70 8d e5                                      str r7, [sp, #0x68]
006c062c  6c 00 8d e5                                      str r0, [sp, #0x6c]
006c0630  1d ff ff ea                                      b #0x6c02ac
; mapping-symbol data/literal pool
006c0634  48 48 2d 00 14 40 00 00                          .byte 0x48, 0x48, 0x2d, 0x00, 0x14, 0x40, 0x00, 0x00
