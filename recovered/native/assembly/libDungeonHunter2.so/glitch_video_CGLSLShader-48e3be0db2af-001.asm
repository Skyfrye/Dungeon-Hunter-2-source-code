; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006de878, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZNK6glitch5video11CGLSLShader19serializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::CGLSLShader::serializeAttributes(glitch::io::IAttributes*) const
; decoder-mode: arm
006de878  1e ff 2f e1                                      bx lr

; FUNCTION 0x006de87c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShader21deserializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::CGLSLShader::deserializeAttributes(glitch::io::IAttributes*)
; decoder-mode: arm
006de87c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006de880, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShader17releaseShaderCodeEv
; demangled: glitch::video::CGLSLShader::releaseShaderCode()
; decoder-mode: arm
006de880  10 40 2d e9                                      push {r4, lr}
006de884  00 40 a0 e1                                      mov r4, r0
006de888  44 00 90 e5                                      ldr r0, [r0, #0x44]
006de88c  00 30 a0 e3                                      mov r3, #0
006de890  44 30 84 e5                                      str r3, [r4, #0x44]
006de894  03 00 50 e1                                      cmp r0, r3
006de898  00 00 00 0a                                      beq #0x6de8a0
006de89c  38 fb f0 eb                                      bl #0x31d584
006de8a0  48 00 94 e5                                      ldr r0, [r4, #0x48]
006de8a4  00 30 a0 e3                                      mov r3, #0
006de8a8  48 30 84 e5                                      str r3, [r4, #0x48]
006de8ac  03 00 50 e1                                      cmp r0, r3
006de8b0  01 00 00 0a                                      beq #0x6de8bc
006de8b4  10 40 bd e8                                      pop {r4, lr}
006de8b8  31 fb f0 ea                                      b #0x31d584
006de8bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006de8e0, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShader13createProgramEv
; demangled: glitch::video::CGLSLShader::createProgram()
; decoder-mode: arm
006de8e0  10 40 2d e9                                      push {r4, lr}
006de8e4  00 40 a0 e1                                      mov r4, r0
006de8e8  cb c0 f0 eb                                      bl #0x30ec1c
006de8ec  4c 00 84 e5                                      str r0, [r4, #0x4c]
006de8f0  01 00 a0 e3                                      mov r0, #1
006de8f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006de8f8, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShader30releaseDriverSpecificResourcesEv
; demangled: glitch::video::CGLSLShader::releaseDriverSpecificResources()
; decoder-mode: arm
006de8f8  10 40 2d e9                                      push {r4, lr}
006de8fc  00 40 a0 e1                                      mov r4, r0
006de900  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
006de904  00 00 50 e3                                      cmp r0, #0
006de908  02 00 00 0a                                      beq #0x6de918
006de90c  e3 bd f0 eb                                      bl #0x30e0a0
006de910  00 30 a0 e3                                      mov r3, #0
006de914  4c 30 84 e5                                      str r3, [r4, #0x4c]
006de918  04 00 a0 e1                                      mov r0, r4
006de91c  10 40 bd e8                                      pop {r4, lr}
006de920  d6 ff ff ea                                      b #0x6de880

; FUNCTION 0x006de924, declared_size=212, range_size=212, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShader10deleteInfoEv
; demangled: glitch::video::CGLSLShader::deleteInfo()
; decoder-mode: arm
006de924  70 40 2d e9                                      push {r4, r5, r6, lr}
006de928  24 40 90 e5                                      ldr r4, [r0, #0x24]
006de92c  00 60 a0 e1                                      mov r6, r0
006de930  00 00 54 e3                                      cmp r4, #0
006de934  2e 00 00 0a                                      beq #0x6de9f4
006de938  3c 50 d0 e5                                      ldrb r5, [r0, #0x3c]
006de93c  85 51 84 e0                                      add r5, r4, r5, lsl #3
006de940  05 00 54 e1                                      cmp r4, r5
006de944  02 00 00 1a                                      bne #0x6de954
006de948  0d 00 00 ea                                      b #0x6de984
006de94c  04 00 55 e1                                      cmp r5, r4
006de950  0b 00 00 0a                                      beq #0x6de984
006de954  00 00 94 e5                                      ldr r0, [r4]
006de958  08 40 84 e2                                      add r4, r4, #8
006de95c  00 00 50 e3                                      cmp r0, #0
006de960  f9 ff ff 0a                                      beq #0x6de94c
006de964  00 30 90 e5                                      ldr r3, [r0]
006de968  01 30 43 e2                                      sub r3, r3, #1
006de96c  00 00 53 e3                                      cmp r3, #0
006de970  00 30 80 e5                                      str r3, [r0]
006de974  f4 ff ff 1a                                      bne #0x6de94c
006de978  07 19 ff eb                                      bl #0x6a4d9c
006de97c  04 00 55 e1                                      cmp r5, r4
006de980  f3 ff ff 1a                                      bne #0x6de954
006de984  28 40 96 e5                                      ldr r4, [r6, #0x28]
006de988  be 52 d6 e1                                      ldrh r5, [r6, #0x2e]
006de98c  05 52 84 e0                                      add r5, r4, r5, lsl #4
006de990  05 00 54 e1                                      cmp r4, r5
006de994  02 00 00 1a                                      bne #0x6de9a4
006de998  0d 00 00 ea                                      b #0x6de9d4
006de99c  04 00 55 e1                                      cmp r5, r4
006de9a0  0b 00 00 0a                                      beq #0x6de9d4
006de9a4  00 00 94 e5                                      ldr r0, [r4]
006de9a8  10 40 84 e2                                      add r4, r4, #0x10
006de9ac  00 00 50 e3                                      cmp r0, #0
006de9b0  f9 ff ff 0a                                      beq #0x6de99c
006de9b4  00 30 90 e5                                      ldr r3, [r0]
006de9b8  01 30 43 e2                                      sub r3, r3, #1
006de9bc  00 00 53 e3                                      cmp r3, #0
006de9c0  00 30 80 e5                                      str r3, [r0]
006de9c4  f4 ff ff 1a                                      bne #0x6de99c
006de9c8  f3 18 ff eb                                      bl #0x6a4d9c
006de9cc  04 00 55 e1                                      cmp r5, r4
006de9d0  f3 ff ff 1a                                      bne #0x6de9a4
006de9d4  24 00 96 e5                                      ldr r0, [r6, #0x24]
006de9d8  00 00 50 e3                                      cmp r0, #0
006de9dc  00 00 00 0a                                      beq #0x6de9e4
006de9e0  b4 bd f0 eb                                      bl #0x30e0b8
006de9e4  00 30 a0 e3                                      mov r3, #0
006de9e8  28 30 86 e5                                      str r3, [r6, #0x28]
006de9ec  be 32 c6 e1                                      strh r3, [r6, #0x2e]
006de9f0  bc 32 c6 e1                                      strh r3, [r6, #0x2c]
006de9f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006de9f8, declared_size=1444, range_size=1444, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShader11linkProgramEv
; demangled: glitch::video::CGLSLShader::linkProgram()
; decoder-mode: arm
006de9f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006de9fc  00 40 a0 e1                                      mov r4, r0
006dea00  4c d0 4d e2                                      sub sp, sp, #0x4c
006dea04  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
006dea08  da c0 f0 eb                                      bl #0x30ed78
006dea0c  00 60 a0 e3                                      mov r6, #0
006dea10  48 20 8d e2                                      add r2, sp, #0x48
006dea14  04 60 22 e5                                      str r6, [r2, #-4]!
006dea18  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006dea1c  82 1b 08 e3                                      movw r1, #0x8b82
006dea20  19 be f0 eb                                      bl #0x30e28c
006dea24  44 50 9d e5                                      ldr r5, [sp, #0x44]
006dea28  06 00 55 e1                                      cmp r5, r6
006dea2c  1a 00 00 1a                                      bne #0x6dea9c
006dea30  48 20 8d e2                                      add r2, sp, #0x48
006dea34  1c 50 22 e5                                      str r5, [r2, #-0x1c]!
006dea38  84 1b 08 e3                                      movw r1, #0x8b84
006dea3c  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006dea40  11 be f0 eb                                      bl #0x30e28c
006dea44  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006dea48  e9 56 f9 eb                                      bl #0x5345f4
006dea4c  00 60 a0 e1                                      mov r6, r0
006dea50  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006dea54  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006dea58  30 20 8d e2                                      add r2, sp, #0x30
006dea5c  06 30 a0 e1                                      mov r3, r6
006dea60  eb bd f0 eb                                      bl #0x30e214
006dea64  24 15 9f e5                                      ldr r1, [pc, #0x524]
006dea68  03 00 a0 e3                                      mov r0, #3
006dea6c  20 20 94 e5                                      ldr r2, [r4, #0x20]
006dea70  01 10 8f e0                                      add r1, pc, r1
006dea74  06 30 a0 e1                                      mov r3, r6
006dea78  6d b1 fc eb                                      bl #0x60b034
006dea7c  00 00 56 e3                                      cmp r6, #0
006dea80  3e 50 c4 e5                                      strb r5, [r4, #0x3e]
006dea84  ee 00 00 0a                                      beq #0x6dee44
006dea88  06 00 a0 e1                                      mov r0, r6
006dea8c  fd 56 f9 eb                                      bl #0x534688
006dea90  05 00 a0 e1                                      mov r0, r5
006dea94  4c d0 8d e2                                      add sp, sp, #0x4c
006dea98  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006dea9c  48 70 8d e2                                      add r7, sp, #0x48
006deaa0  18 60 27 e5                                      str r6, [r7, #-0x18]!
006deaa4  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006deaa8  84 1b 08 e3                                      movw r1, #0x8b84
006deaac  07 20 a0 e1                                      mov r2, r7
006deab0  f5 bd f0 eb                                      bl #0x30e28c
006deab4  30 00 9d e5                                      ldr r0, [sp, #0x30]
006deab8  01 00 50 e3                                      cmp r0, #1
006deabc  0a 00 00 da                                      ble #0x6deaec
006deac0  cb 56 f9 eb                                      bl #0x5345f4
006deac4  00 50 a0 e1                                      mov r5, r0
006deac8  30 10 9d e5                                      ldr r1, [sp, #0x30]
006deacc  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006dead0  2c 20 8d e2                                      add r2, sp, #0x2c
006dead4  05 30 a0 e1                                      mov r3, r5
006dead8  cd bd f0 eb                                      bl #0x30e214
006deadc  00 00 55 e3                                      cmp r5, #0
006deae0  01 00 00 0a                                      beq #0x6deaec
006deae4  05 00 a0 e1                                      mov r0, r5
006deae8  e6 56 f9 eb                                      bl #0x534688
006deaec  00 50 a0 e3                                      mov r5, #0
006deaf0  48 20 8d e2                                      add r2, sp, #0x48
006deaf4  08 50 22 e5                                      str r5, [r2, #-8]!
006deaf8  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006deafc  89 1b 08 e3                                      movw r1, #0x8b89
006deb00  e1 bd f0 eb                                      bl #0x30e28c
006deb04  48 20 8d e2                                      add r2, sp, #0x48
006deb08  0c 50 22 e5                                      str r5, [r2, #-0xc]!
006deb0c  86 1b 08 e3                                      movw r1, #0x8b86
006deb10  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006deb14  dc bd f0 eb                                      bl #0x30e28c
006deb18  04 00 a0 e1                                      mov r0, r4
006deb1c  80 ff ff eb                                      bl #0x6de924
006deb20  48 20 8d e2                                      add r2, sp, #0x48
006deb24  10 50 22 e5                                      str r5, [r2, #-0x10]!
006deb28  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006deb2c  8a 1b 08 e3                                      movw r1, #0x8b8a
006deb30  d5 bd f0 eb                                      bl #0x30e28c
006deb34  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006deb38  05 00 53 e1                                      cmp r3, r5
006deb3c  02 00 00 da                                      ble #0x6deb4c
006deb40  38 60 9d e5                                      ldr r6, [sp, #0x38]
006deb44  05 00 56 e1                                      cmp r6, r5
006deb48  b8 00 00 0a                                      beq #0x6dee30
006deb4c  48 20 8d e2                                      add r2, sp, #0x48
006deb50  00 50 a0 e3                                      mov r5, #0
006deb54  14 50 22 e5                                      str r5, [r2, #-0x14]!
006deb58  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006deb5c  87 1b 08 e3                                      movw r1, #0x8b87
006deb60  c9 bd f0 eb                                      bl #0x30e28c
006deb64  34 60 9d e5                                      ldr r6, [sp, #0x34]
006deb68  05 00 56 e1                                      cmp r6, r5
006deb6c  de 00 00 0a                                      beq #0x6deeec
006deb70  40 30 9d e5                                      ldr r3, [sp, #0x40]
006deb74  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006deb78  05 10 a0 e1                                      mov r1, r5
006deb7c  83 31 a0 e1                                      lsl r3, r3, #3
006deb80  00 02 83 e0                                      add r0, r3, r0, lsl #4
006deb84  1c 30 8d e5                                      str r3, [sp, #0x1c]
006deb88  86 55 f9 eb                                      bl #0x5341a8
006deb8c  18 00 8d e5                                      str r0, [sp, #0x18]
006deb90  40 30 9d e5                                      ldr r3, [sp, #0x40]
006deb94  38 00 9d e5                                      ldr r0, [sp, #0x38]
006deb98  18 10 9d e5                                      ldr r1, [sp, #0x18]
006deb9c  3c 30 c4 e5                                      strb r3, [r4, #0x3c]
006deba0  01 00 80 e2                                      add r0, r0, #1
006deba4  24 10 84 e5                                      str r1, [r4, #0x24]
006deba8  91 56 f9 eb                                      bl #0x5345f4
006debac  40 30 9d e5                                      ldr r3, [sp, #0x40]
006debb0  00 60 a0 e1                                      mov r6, r0
006debb4  00 00 53 e3                                      cmp r3, #0
006debb8  2f 00 00 da                                      ble #0x6dec7c
006debbc  2c a0 8d e2                                      add sl, sp, #0x2c
006debc0  01 80 a0 e3                                      mov r8, #1
006debc4  06 00 00 ea                                      b #0x6debe4
006debc8  38 30 94 e5                                      ldr r3, [r4, #0x38]
006debcc  01 50 85 e2                                      add r5, r5, #1
006debd0  18 99 83 e1                                      orr sb, r3, r8, lsl sb
006debd4  40 30 9d e5                                      ldr r3, [sp, #0x40]
006debd8  38 90 84 e5                                      str sb, [r4, #0x38]
006debdc  05 00 53 e1                                      cmp r3, r5
006debe0  25 00 00 da                                      ble #0x6dec7c
006debe4  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006debe8  05 10 a0 e1                                      mov r1, r5
006debec  38 20 9d e5                                      ldr r2, [sp, #0x38]
006debf0  00 30 a0 e3                                      mov r3, #0
006debf4  00 a0 8d e5                                      str sl, [sp]
006debf8  04 70 8d e5                                      str r7, [sp, #4]
006debfc  08 60 8d e5                                      str r6, [sp, #8]
006dec00  05 bd f0 eb                                      bl #0x30e01c
006dec04  06 00 a0 e1                                      mov r0, r6
006dec08  d0 f3 ff eb                                      bl #0x6dbb50
006dec0c  1d 00 50 e3                                      cmp r0, #0x1d
006dec10  00 90 a0 e1                                      mov sb, r0
006dec14  eb ff ff ca                                      bgt #0x6debc8
006dec18  06 10 a0 e1                                      mov r1, r6
006dec1c  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006dec20  c5 be f0 eb                                      bl #0x30e73c
006dec24  01 10 a0 e3                                      mov r1, #1
006dec28  70 30 ff e6                                      uxth r3, r0
006dec2c  06 00 a0 e1                                      mov r0, r6
006dec30  24 b0 94 e5                                      ldr fp, [r4, #0x24]
006dec34  14 30 8d e5                                      str r3, [sp, #0x14]
006dec38  0d 19 ff eb                                      bl #0x6a5074
006dec3c  85 01 8b e7                                      str r0, [fp, r5, lsl #3]
006dec40  00 00 50 e3                                      cmp r0, #0
006dec44  00 20 90 15                                      ldrne r2, [r0]
006dec48  14 30 9d e5                                      ldr r3, [sp, #0x14]
006dec4c  85 b1 8b e0                                      add fp, fp, r5, lsl #3
006dec50  01 20 82 12                                      addne r2, r2, #1
006dec54  00 20 80 15                                      strne r2, [r0]
006dec58  b4 90 cb e1                                      strh sb, [fp, #4]
006dec5c  b6 30 cb e1                                      strh r3, [fp, #6]
006dec60  38 30 94 e5                                      ldr r3, [r4, #0x38]
006dec64  01 50 85 e2                                      add r5, r5, #1
006dec68  18 99 83 e1                                      orr sb, r3, r8, lsl sb
006dec6c  40 30 9d e5                                      ldr r3, [sp, #0x40]
006dec70  38 90 84 e5                                      str sb, [r4, #0x38]
006dec74  05 00 53 e1                                      cmp r3, r5
006dec78  d9 ff ff ca                                      bgt #0x6debe4
006dec7c  00 00 56 e3                                      cmp r6, #0
006dec80  01 00 00 0a                                      beq #0x6dec8c
006dec84  06 00 a0 e1                                      mov r0, r6
006dec88  7e 56 f9 eb                                      bl #0x534688
006dec8c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006dec90  00 00 53 e3                                      cmp r3, #0
006dec94  63 00 00 0a                                      beq #0x6dee28
006dec98  18 20 9d e5                                      ldr r2, [sp, #0x18]
006dec9c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006deca0  34 00 9d e5                                      ldr r0, [sp, #0x34]
006deca4  0c 20 82 e0                                      add r2, r2, ip
006deca8  24 20 8d e5                                      str r2, [sp, #0x24]
006decac  01 00 80 e2                                      add r0, r0, #1
006decb0  be 32 c4 e1                                      strh r3, [r4, #0x2e]
006decb4  28 20 84 e5                                      str r2, [r4, #0x28]
006decb8  4d 56 f9 eb                                      bl #0x5345f4
006decbc  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006decc0  00 30 e0 e3                                      mvn r3, #0
006decc4  00 60 a0 e1                                      mov r6, r0
006decc8  00 00 51 e3                                      cmp r1, #0
006deccc  3d 30 c4 e5                                      strb r3, [r4, #0x3d]
006decd0  4c 00 00 da                                      ble #0x6dee08
006decd4  24 50 9d e5                                      ldr r5, [sp, #0x24]
006decd8  2c a0 8d e2                                      add sl, sp, #0x2c
006decdc  00 80 a0 e3                                      mov r8, #0
006dece0  1c a0 8d e5                                      str sl, [sp, #0x1c]
006dece4  20 70 8d e5                                      str r7, [sp, #0x20]
006dece8  20 c0 9d e5                                      ldr ip, [sp, #0x20]
006decec  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006decf0  08 10 a0 e1                                      mov r1, r8
006decf4  00 c0 8d e5                                      str ip, [sp]
006decf8  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006decfc  00 30 a0 e3                                      mov r3, #0
006ded00  34 20 9d e5                                      ldr r2, [sp, #0x34]
006ded04  04 c0 8d e5                                      str ip, [sp, #4]
006ded08  08 60 8d e5                                      str r6, [sp, #8]
006ded0c  6f be f0 eb                                      bl #0x30e6d0
006ded10  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006ded14  57 1b 08 e3                                      movw r1, #0x8b57
006ded18  01 00 53 e1                                      cmp r3, r1
006ded1c  85 00 00 0a                                      beq #0x6def38
006ded20  55 00 00 8a                                      bhi #0x6dee7c
006ded24  52 2b 08 e3                                      movw r2, #0x8b52
006ded28  02 00 53 e1                                      cmp r3, r2
006ded2c  08 90 a0 03                                      moveq sb, #8
006ded30  09 00 00 0a                                      beq #0x6ded5c
006ded34  44 00 00 8a                                      bhi #0x6dee4c
006ded38  06 24 01 e3                                      movw r2, #0x1406
006ded3c  02 00 53 e1                                      cmp r3, r2
006ded40  05 90 a0 03                                      moveq sb, #5
006ded44  04 00 00 0a                                      beq #0x6ded5c
006ded48  87 00 00 8a                                      bhi #0x6def6c
006ded4c  04 24 01 e3                                      movw r2, #0x1404
006ded50  02 00 53 e1                                      cmp r3, r2
006ded54  46 00 00 0a                                      beq #0x6dee74
006ded58  ff 90 a0 e3                                      mov sb, #0xff
006ded5c  06 00 a0 e1                                      mov r0, r6
006ded60  47 0d fc eb                                      bl #0x5e2284
006ded64  ff 00 50 e3                                      cmp r0, #0xff
006ded68  13 10 40 12                                      subne r1, r0, #0x13
006ded6c  00 70 a0 e1                                      mov r7, r0
006ded70  18 10 8d 15                                      strne r1, [sp, #0x18]
006ded74  70 a0 ff 16                                      uxthne sl, r0
006ded78  51 00 00 0a                                      beq #0x6deec4
006ded7c  06 10 a0 e1                                      mov r1, r6
006ded80  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006ded84  ec bc f0 eb                                      bl #0x30e13c
006ded88  07 10 a0 e1                                      mov r1, r7
006ded8c  00 30 a0 e1                                      mov r3, r0
006ded90  06 00 a0 e1                                      mov r0, r6
006ded94  14 30 8d e5                                      str r3, [sp, #0x14]
006ded98  78 24 fc eb                                      bl #0x5e7f80
006ded9c  01 10 a0 e3                                      mov r1, #1
006deda0  00 70 a0 e1                                      mov r7, r0
006deda4  06 00 a0 e1                                      mov r0, r6
006deda8  30 b0 9d e5                                      ldr fp, [sp, #0x30]
006dedac  b0 18 ff eb                                      bl #0x6a5074
006dedb0  00 00 50 e3                                      cmp r0, #0
006dedb4  00 00 85 e5                                      str r0, [r5]
006dedb8  00 20 90 15                                      ldrne r2, [r0]
006dedbc  14 30 9d e5                                      ldr r3, [sp, #0x14]
006dedc0  01 20 82 12                                      addne r2, r2, #1
006dedc4  00 20 80 15                                      strne r2, [r0]
006dedc8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006dedcc  b4 a0 c5 e1                                      strh sl, [r5, #4]
006dedd0  06 90 c5 e5                                      strb sb, [r5, #6]
006dedd4  08 00 5c e3                                      cmp ip, #8
006dedd8  08 b0 85 e5                                      str fp, [r5, #8]
006deddc  0c 30 85 e5                                      str r3, [r5, #0xc]
006dede0  07 70 c5 e5                                      strb r7, [r5, #7]
006dede4  02 00 00 8a                                      bhi #0x6dedf4
006dede8  3d 30 d4 e5                                      ldrb r3, [r4, #0x3d]
006dedec  07 00 53 e1                                      cmp r3, r7
006dedf0  3d 70 c4 85                                      strbhi r7, [r4, #0x3d]
006dedf4  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006dedf8  01 80 88 e2                                      add r8, r8, #1
006dedfc  10 50 85 e2                                      add r5, r5, #0x10
006dee00  08 00 51 e1                                      cmp r1, r8
006dee04  b7 ff ff ca                                      bgt #0x6dece8
006dee08  01 50 a0 e3                                      mov r5, #1
006dee0c  50 50 c4 e5                                      strb r5, [r4, #0x50]
006dee10  24 00 9d e5                                      ldr r0, [sp, #0x24]
006dee14  71 10 ff e6                                      uxth r1, r1
006dee18  4c 23 fc eb                                      bl #0x5e7b50
006dee1c  00 00 56 e3                                      cmp r6, #0
006dee20  bc 02 c4 e1                                      strh r0, [r4, #0x2c]
006dee24  17 ff ff 1a                                      bne #0x6dea88
006dee28  01 00 a0 e3                                      mov r0, #1
006dee2c  18 ff ff ea                                      b #0x6dea94
006dee30  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
006dee34  20 00 94 e5                                      ldr r0, [r4, #0x20]
006dee38  03 20 a0 e3                                      mov r2, #3
006dee3c  01 10 8f e0                                      add r1, pc, r1
006dee40  a8 af fc eb                                      bl #0x60ace8
006dee44  06 00 a0 e1                                      mov r0, r6
006dee48  11 ff ff ea                                      b #0x6dea94
006dee4c  54 2b 08 e3                                      movw r2, #0x8b54
006dee50  02 00 53 e1                                      cmp r3, r2
006dee54  39 00 00 0a                                      beq #0x6def40
006dee58  36 00 00 3a                                      blo #0x6def38
006dee5c  55 2b 08 e3                                      movw r2, #0x8b55
006dee60  02 00 53 e1                                      cmp r3, r2
006dee64  27 00 00 0a                                      beq #0x6def08
006dee68  56 2b 08 e3                                      movw r2, #0x8b56
006dee6c  02 00 53 e1                                      cmp r3, r2
006dee70  b8 ff ff 1a                                      bne #0x6ded58
006dee74  01 90 a0 e3                                      mov sb, #1
006dee78  b7 ff ff ea                                      b #0x6ded5c
006dee7c  5c 2b 08 e3                                      movw r2, #0x8b5c
006dee80  02 00 53 e1                                      cmp r3, r2
006dee84  0b 90 a0 03                                      moveq sb, #0xb
006dee88  b3 ff ff 0a                                      beq #0x6ded5c
006dee8c  1f 00 00 8a                                      bhi #0x6def10
006dee90  59 2b 08 e3                                      movw r2, #0x8b59
006dee94  02 00 53 e1                                      cmp r3, r2
006dee98  1a 00 00 0a                                      beq #0x6def08
006dee9c  27 00 00 3a                                      blo #0x6def40
006deea0  5a 2b 08 e3                                      movw r2, #0x8b5a
006deea4  02 00 53 e1                                      cmp r3, r2
006deea8  09 90 a0 03                                      moveq sb, #9
006deeac  aa ff ff 0a                                      beq #0x6ded5c
006deeb0  5b 2b 08 e3                                      movw r2, #0x8b5b
006deeb4  02 00 53 e1                                      cmp r3, r2
006deeb8  a6 ff ff 1a                                      bne #0x6ded58
006deebc  0a 90 a0 e3                                      mov sb, #0xa
006deec0  a5 ff ff ea                                      b #0x6ded5c
006deec4  0c 30 49 e2                                      sub r3, sb, #0xc
006deec8  03 00 53 e3                                      cmp r3, #3
006deecc  00 a0 a0 83                                      movhi sl, #0
006deed0  12 20 e0 83                                      mvnhi r2, #0x12
006deed4  02 a0 a0 93                                      movls sl, #2
006deed8  10 30 e0 93                                      mvnls r3, #0x10
006deedc  18 20 8d 85                                      strhi r2, [sp, #0x18]
006deee0  18 30 8d 95                                      strls r3, [sp, #0x18]
006deee4  0a 70 a0 e1                                      mov r7, sl
006deee8  a3 ff ff ea                                      b #0x6ded7c
006deeec  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
006deef0  20 00 94 e5                                      ldr r0, [r4, #0x20]
006deef4  03 20 a0 e3                                      mov r2, #3
006deef8  01 10 8f e0                                      add r1, pc, r1
006deefc  79 af fc eb                                      bl #0x60ace8
006def00  06 00 a0 e1                                      mov r0, r6
006def04  e2 fe ff ea                                      b #0x6dea94
006def08  04 90 a0 e3                                      mov sb, #4
006def0c  92 ff ff ea                                      b #0x6ded5c
006def10  5f cb 08 e3                                      movw ip, #0x8b5f
006def14  0c 00 53 e1                                      cmp r3, ip
006def18  0d 90 a0 03                                      moveq sb, #0xd
006def1c  8e ff ff 0a                                      beq #0x6ded5c
006def20  08 00 00 8a                                      bhi #0x6def48
006def24  5e 2b 08 e3                                      movw r2, #0x8b5e
006def28  02 00 53 e1                                      cmp r3, r2
006def2c  89 ff ff 1a                                      bne #0x6ded58
006def30  0c 90 a0 e3                                      mov sb, #0xc
006def34  88 ff ff ea                                      b #0x6ded5c
006def38  02 90 a0 e3                                      mov sb, #2
006def3c  86 ff ff ea                                      b #0x6ded5c
006def40  03 90 a0 e3                                      mov sb, #3
006def44  84 ff ff ea                                      b #0x6ded5c
006def48  60 2b 08 e3                                      movw r2, #0x8b60
006def4c  02 00 53 e1                                      cmp r3, r2
006def50  0e 90 a0 03                                      moveq sb, #0xe
006def54  80 ff ff 0a                                      beq #0x6ded5c
006def58  63 2b 08 e3                                      movw r2, #0x8b63
006def5c  02 00 53 e1                                      cmp r3, r2
006def60  7c ff ff 1a                                      bne #0x6ded58
006def64  0f 90 a0 e3                                      mov sb, #0xf
006def68  7b ff ff ea                                      b #0x6ded5c
006def6c  50 2b 08 e3                                      movw r2, #0x8b50
006def70  02 00 53 e1                                      cmp r3, r2
006def74  06 90 a0 03                                      moveq sb, #6
006def78  77 ff ff 0a                                      beq #0x6ded5c
006def7c  51 2b 08 e3                                      movw r2, #0x8b51
006def80  02 00 53 e1                                      cmp r3, r2
006def84  73 ff ff 1a                                      bne #0x6ded58
006def88  07 90 a0 e3                                      mov sb, #7
006def8c  72 ff ff ea                                      b #0x6ded5c
; mapping-symbol data/literal pool
006def90  58 03 21 00 bc ff 20 00 28 ff 20 00              .byte 0x58, 0x03, 0x21, 0x00, 0xbc, 0xff, 0x20, 0x00, 0x28, 0xff, 0x20, 0x00

; FUNCTION 0x006def9c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShader14compileAndLinkEv
; demangled: glitch::video::CGLSLShader::compileAndLink()
; decoder-mode: arm
006def9c  10 40 2d e9                                      push {r4, lr}
006defa0  00 40 a0 e1                                      mov r4, r0
006defa4  44 00 90 e5                                      ldr r0, [r0, #0x44]
006defa8  04 01 00 eb                                      bl #0x6df3c0
006defac  48 00 94 e5                                      ldr r0, [r4, #0x48]
006defb0  02 01 00 eb                                      bl #0x6df3c0
006defb4  04 00 a0 e1                                      mov r0, r4
006defb8  10 40 bd e8                                      pop {r4, lr}
006defbc  8d fe ff ea                                      b #0x6de9f8

; FUNCTION 0x006defc0, declared_size=124, range_size=124, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShaderD1Ev
; demangled: glitch::video::CGLSLShader::~CGLSLShader()
; decoder-mode: arm
006defc0  10 40 2d e9                                      push {r4, lr}
006defc4  68 30 9f e5                                      ldr r3, [pc, #0x68]
006defc8  68 20 9f e5                                      ldr r2, [pc, #0x68]
006defcc  00 40 a0 e1                                      mov r4, r0
006defd0  03 30 8f e0                                      add r3, pc, r3
006defd4  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
006defd8  02 20 93 e7                                      ldr r2, [r3, r2]
006defdc  00 00 50 e3                                      cmp r0, #0
006defe0  08 20 82 e2                                      add r2, r2, #8
006defe4  00 20 84 e5                                      str r2, [r4]
006defe8  0d 00 00 1a                                      bne #0x6df024
006defec  04 00 a0 e1                                      mov r0, r4
006deff0  4b fe ff eb                                      bl #0x6de924
006deff4  48 00 94 e5                                      ldr r0, [r4, #0x48]
006deff8  00 00 50 e3                                      cmp r0, #0
006deffc  00 00 00 0a                                      beq #0x6df004
006df000  5f f9 f0 eb                                      bl #0x31d584
006df004  44 00 94 e5                                      ldr r0, [r4, #0x44]
006df008  00 00 50 e3                                      cmp r0, #0
006df00c  00 00 00 0a                                      beq #0x6df014
006df010  5b f9 f0 eb                                      bl #0x31d584
006df014  04 00 a0 e1                                      mov r0, r4
006df018  b9 17 fc eb                                      bl #0x5e4f04
006df01c  04 00 a0 e1                                      mov r0, r4
006df020  10 80 bd e8                                      pop {r4, pc}
006df024  1d bc f0 eb                                      bl #0x30e0a0
006df028  00 30 a0 e3                                      mov r3, #0
006df02c  4c 30 84 e5                                      str r3, [r4, #0x4c]
006df030  ed ff ff ea                                      b #0x6defec
; mapping-symbol data/literal pool
006df034  c0 5a 2b 00 38 19 00 00                          .byte 0xc0, 0x5a, 0x2b, 0x00, 0x38, 0x19, 0x00, 0x00

; FUNCTION 0x006df03c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShaderD0Ev
; demangled: glitch::video::CGLSLShader::~CGLSLShader()
; decoder-mode: arm
006df03c  10 40 2d e9                                      push {r4, lr}
006df040  00 40 a0 e1                                      mov r4, r0
006df044  dd ff ff eb                                      bl #0x6defc0
006df048  04 00 a0 e1                                      mov r0, r4
006df04c  97 bc f0 eb                                      bl #0x30e2b0
006df050  04 00 a0 e1                                      mov r0, r4
006df054  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006df058, declared_size=124, range_size=124, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShaderD2Ev
; demangled: glitch::video::CGLSLShader::~CGLSLShader()
; decoder-mode: arm
006df058  10 40 2d e9                                      push {r4, lr}
006df05c  68 30 9f e5                                      ldr r3, [pc, #0x68]
006df060  68 20 9f e5                                      ldr r2, [pc, #0x68]
006df064  00 40 a0 e1                                      mov r4, r0
006df068  03 30 8f e0                                      add r3, pc, r3
006df06c  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
006df070  02 20 93 e7                                      ldr r2, [r3, r2]
006df074  00 00 50 e3                                      cmp r0, #0
006df078  08 20 82 e2                                      add r2, r2, #8
006df07c  00 20 84 e5                                      str r2, [r4]
006df080  0d 00 00 1a                                      bne #0x6df0bc
006df084  04 00 a0 e1                                      mov r0, r4
006df088  25 fe ff eb                                      bl #0x6de924
006df08c  48 00 94 e5                                      ldr r0, [r4, #0x48]
006df090  00 00 50 e3                                      cmp r0, #0
006df094  00 00 00 0a                                      beq #0x6df09c
006df098  39 f9 f0 eb                                      bl #0x31d584
006df09c  44 00 94 e5                                      ldr r0, [r4, #0x44]
006df0a0  00 00 50 e3                                      cmp r0, #0
006df0a4  00 00 00 0a                                      beq #0x6df0ac
006df0a8  35 f9 f0 eb                                      bl #0x31d584
006df0ac  04 00 a0 e1                                      mov r0, r4
006df0b0  93 17 fc eb                                      bl #0x5e4f04
006df0b4  04 00 a0 e1                                      mov r0, r4
006df0b8  10 80 bd e8                                      pop {r4, pc}
006df0bc  f7 bb f0 eb                                      bl #0x30e0a0
006df0c0  00 30 a0 e3                                      mov r3, #0
006df0c4  4c 30 84 e5                                      str r3, [r4, #0x4c]
006df0c8  ed ff ff ea                                      b #0x6df084
; mapping-symbol data/literal pool
006df0cc  28 5a 2b 00 38 19 00 00                          .byte 0x28, 0x5a, 0x2b, 0x00, 0x38, 0x19, 0x00, 0x00

; FUNCTION 0x006df0d4, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShaderC1EPNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEE
; demangled: glitch::video::CGLSLShader::CGLSLShader(glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>*)
; decoder-mode: arm
006df0d4  48 20 9f e5                                      ldr r2, [pc, #0x48]
006df0d8  70 40 2d e9                                      push {r4, r5, r6, lr}
006df0dc  01 30 a0 e1                                      mov r3, r1
006df0e0  02 20 8f e0                                      add r2, pc, r2
006df0e4  00 10 a0 e3                                      mov r1, #0
006df0e8  38 50 9f e5                                      ldr r5, [pc, #0x38]
006df0ec  00 40 a0 e1                                      mov r4, r0
006df0f0  7a 16 fc eb                                      bl #0x5e4ae0
006df0f4  30 20 9f e5                                      ldr r2, [pc, #0x30]
006df0f8  05 50 8f e0                                      add r5, pc, r5
006df0fc  00 30 a0 e3                                      mov r3, #0
006df100  02 20 95 e7                                      ldr r2, [r5, r2]
006df104  50 30 c4 e5                                      strb r3, [r4, #0x50]
006df108  44 30 84 e5                                      str r3, [r4, #0x44]
006df10c  08 20 82 e2                                      add r2, r2, #8
006df110  00 20 84 e5                                      str r2, [r4]
006df114  48 30 84 e5                                      str r3, [r4, #0x48]
006df118  4c 30 84 e5                                      str r3, [r4, #0x4c]
006df11c  04 00 a0 e1                                      mov r0, r4
006df120  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006df124  28 c7 1e 00 98 59 2b 00 38 19 00 00              .byte 0x28, 0xc7, 0x1e, 0x00, 0x98, 0x59, 0x2b, 0x00, 0x38, 0x19, 0x00, 0x00

; FUNCTION 0x006df130, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShaderC2EPNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEE
; demangled: glitch::video::CGLSLShader::CGLSLShader(glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>*)
; decoder-mode: arm
006df130  48 20 9f e5                                      ldr r2, [pc, #0x48]
006df134  70 40 2d e9                                      push {r4, r5, r6, lr}
006df138  01 30 a0 e1                                      mov r3, r1
006df13c  02 20 8f e0                                      add r2, pc, r2
006df140  00 10 a0 e3                                      mov r1, #0
006df144  38 50 9f e5                                      ldr r5, [pc, #0x38]
006df148  00 40 a0 e1                                      mov r4, r0
006df14c  63 16 fc eb                                      bl #0x5e4ae0
006df150  30 20 9f e5                                      ldr r2, [pc, #0x30]
006df154  05 50 8f e0                                      add r5, pc, r5
006df158  00 30 a0 e3                                      mov r3, #0
006df15c  02 20 95 e7                                      ldr r2, [r5, r2]
006df160  50 30 c4 e5                                      strb r3, [r4, #0x50]
006df164  44 30 84 e5                                      str r3, [r4, #0x44]
006df168  08 20 82 e2                                      add r2, r2, #8
006df16c  00 20 84 e5                                      str r2, [r4]
006df170  48 30 84 e5                                      str r3, [r4, #0x48]
006df174  4c 30 84 e5                                      str r3, [r4, #0x4c]
006df178  04 00 a0 e1                                      mov r0, r4
006df17c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006df180  cc c6 1e 00 3c 59 2b 00 38 19 00 00              .byte 0xcc, 0xc6, 0x1e, 0x00, 0x3c, 0x59, 0x2b, 0x00, 0x38, 0x19, 0x00, 0x00

; FUNCTION 0x006df18c, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShader18rmRegenerateShaderEPNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEE
; demangled: glitch::video::CGLSLShader::rmRegenerateShader(glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>*)
; decoder-mode: arm
006df18c  70 40 2d e9                                      push {r4, r5, r6, lr}
006df190  00 40 a0 e1                                      mov r4, r0
006df194  44 00 90 e5                                      ldr r0, [r0, #0x44]
006df198  01 01 00 eb                                      bl #0x6df5a4
006df19c  48 00 94 e5                                      ldr r0, [r4, #0x48]
006df1a0  ff 00 00 eb                                      bl #0x6df5a4
006df1a4  9c be f0 eb                                      bl #0x30ec1c
006df1a8  44 30 94 e5                                      ldr r3, [r4, #0x44]
006df1ac  4c 00 84 e5                                      str r0, [r4, #0x4c]
006df1b0  30 10 93 e5                                      ldr r1, [r3, #0x30]
006df1b4  8f be f0 eb                                      bl #0x30ebf8
006df1b8  48 30 94 e5                                      ldr r3, [r4, #0x48]
006df1bc  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006df1c0  30 10 93 e5                                      ldr r1, [r3, #0x30]
006df1c4  8b be f0 eb                                      bl #0x30ebf8
006df1c8  00 30 a0 e3                                      mov r3, #0
006df1cc  38 30 84 e5                                      str r3, [r4, #0x38]
006df1d0  04 00 a0 e1                                      mov r0, r4
006df1d4  07 fe ff eb                                      bl #0x6de9f8
006df1d8  00 50 50 e2                                      subs r5, r0, #0
006df1dc  02 00 00 1a                                      bne #0x6df1ec
006df1e0  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006df1e4  ad bb f0 eb                                      bl #0x30e0a0
006df1e8  4c 50 84 e5                                      str r5, [r4, #0x4c]
006df1ec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006df1f0, declared_size=212, range_size=212, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShaderC1EtPKcRKN5boost13intrusive_ptrINS0_15CGLSLShaderCodeEEES9_PNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEEb
; demangled: glitch::video::CGLSLShader::CGLSLShader(unsigned short, char const*, boost::intrusive_ptr<glitch::video::CGLSLShaderCode> const&, boost::intrusive_ptr<glitch::video::CGLSLShaderCode> const&, glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>*, bool)
; decoder-mode: arm
006df1f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006df1f4  03 70 a0 e1                                      mov r7, r3
006df1f8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006df1fc  00 40 a0 e1                                      mov r4, r0
006df200  20 60 dd e5                                      ldrb r6, [sp, #0x20]
006df204  35 16 fc eb                                      bl #0x5e4ae0
006df208  ac 50 9f e5                                      ldr r5, [pc, #0xac]
006df20c  ac 30 9f e5                                      ldr r3, [pc, #0xac]
006df210  04 00 a0 e1                                      mov r0, r4
006df214  05 50 8f e0                                      add r5, pc, r5
006df218  03 30 95 e7                                      ldr r3, [r5, r3]
006df21c  08 30 83 e2                                      add r3, r3, #8
006df220  00 30 84 e5                                      str r3, [r4]
006df224  00 30 97 e5                                      ldr r3, [r7]
006df228  44 30 84 e5                                      str r3, [r4, #0x44]
006df22c  00 00 53 e3                                      cmp r3, #0
006df230  04 20 93 15                                      ldrne r2, [r3, #4]
006df234  01 20 82 12                                      addne r2, r2, #1
006df238  04 20 83 15                                      strne r2, [r3, #4]
006df23c  18 30 9d e5                                      ldr r3, [sp, #0x18]
006df240  00 30 93 e5                                      ldr r3, [r3]
006df244  00 00 53 e3                                      cmp r3, #0
006df248  48 30 84 e5                                      str r3, [r4, #0x48]
006df24c  04 20 93 15                                      ldrne r2, [r3, #4]
006df250  01 20 82 12                                      addne r2, r2, #1
006df254  04 20 83 15                                      strne r2, [r3, #4]
006df258  00 30 a0 e3                                      mov r3, #0
006df25c  50 30 c4 e5                                      strb r3, [r4, #0x50]
006df260  4c 30 84 e5                                      str r3, [r4, #0x4c]
006df264  9d fd ff eb                                      bl #0x6de8e0
006df268  44 30 94 e5                                      ldr r3, [r4, #0x44]
006df26c  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006df270  30 10 93 e5                                      ldr r1, [r3, #0x30]
006df274  5f be f0 eb                                      bl #0x30ebf8
006df278  48 30 94 e5                                      ldr r3, [r4, #0x48]
006df27c  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006df280  30 10 93 e5                                      ldr r1, [r3, #0x30]
006df284  5b be f0 eb                                      bl #0x30ebf8
006df288  00 00 56 e3                                      cmp r6, #0
006df28c  01 00 00 1a                                      bne #0x6df298
006df290  04 00 a0 e1                                      mov r0, r4
006df294  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006df298  04 00 a0 e1                                      mov r0, r4
006df29c  d5 fd ff eb                                      bl #0x6de9f8
006df2a0  00 50 50 e2                                      subs r5, r0, #0
006df2a4  f9 ff ff 1a                                      bne #0x6df290
006df2a8  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006df2ac  7b bb f0 eb                                      bl #0x30e0a0
006df2b0  4c 50 84 e5                                      str r5, [r4, #0x4c]
006df2b4  04 00 a0 e1                                      mov r0, r4
006df2b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006df2bc  7c 58 2b 00 38 19 00 00                          .byte 0x7c, 0x58, 0x2b, 0x00, 0x38, 0x19, 0x00, 0x00

; FUNCTION 0x006df2c4, declared_size=212, range_size=212, mode=arm
; class-group: glitch::video::CGLSLShader
; alias: _ZN6glitch5video11CGLSLShaderC2EtPKcRKN5boost13intrusive_ptrINS0_15CGLSLShaderCodeEEES9_PNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEEb
; demangled: glitch::video::CGLSLShader::CGLSLShader(unsigned short, char const*, boost::intrusive_ptr<glitch::video::CGLSLShaderCode> const&, boost::intrusive_ptr<glitch::video::CGLSLShaderCode> const&, glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>*, bool)
; decoder-mode: arm
006df2c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006df2c8  03 70 a0 e1                                      mov r7, r3
006df2cc  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006df2d0  00 40 a0 e1                                      mov r4, r0
006df2d4  20 60 dd e5                                      ldrb r6, [sp, #0x20]
006df2d8  00 16 fc eb                                      bl #0x5e4ae0
006df2dc  ac 50 9f e5                                      ldr r5, [pc, #0xac]
006df2e0  ac 30 9f e5                                      ldr r3, [pc, #0xac]
006df2e4  04 00 a0 e1                                      mov r0, r4
006df2e8  05 50 8f e0                                      add r5, pc, r5
006df2ec  03 30 95 e7                                      ldr r3, [r5, r3]
006df2f0  08 30 83 e2                                      add r3, r3, #8
006df2f4  00 30 84 e5                                      str r3, [r4]
006df2f8  00 30 97 e5                                      ldr r3, [r7]
006df2fc  44 30 84 e5                                      str r3, [r4, #0x44]
006df300  00 00 53 e3                                      cmp r3, #0
006df304  04 20 93 15                                      ldrne r2, [r3, #4]
006df308  01 20 82 12                                      addne r2, r2, #1
006df30c  04 20 83 15                                      strne r2, [r3, #4]
006df310  18 30 9d e5                                      ldr r3, [sp, #0x18]
006df314  00 30 93 e5                                      ldr r3, [r3]
006df318  00 00 53 e3                                      cmp r3, #0
006df31c  48 30 84 e5                                      str r3, [r4, #0x48]
006df320  04 20 93 15                                      ldrne r2, [r3, #4]
006df324  01 20 82 12                                      addne r2, r2, #1
006df328  04 20 83 15                                      strne r2, [r3, #4]
006df32c  00 30 a0 e3                                      mov r3, #0
006df330  50 30 c4 e5                                      strb r3, [r4, #0x50]
006df334  4c 30 84 e5                                      str r3, [r4, #0x4c]
006df338  68 fd ff eb                                      bl #0x6de8e0
006df33c  44 30 94 e5                                      ldr r3, [r4, #0x44]
006df340  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006df344  30 10 93 e5                                      ldr r1, [r3, #0x30]
006df348  2a be f0 eb                                      bl #0x30ebf8
006df34c  48 30 94 e5                                      ldr r3, [r4, #0x48]
006df350  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006df354  30 10 93 e5                                      ldr r1, [r3, #0x30]
006df358  26 be f0 eb                                      bl #0x30ebf8
006df35c  00 00 56 e3                                      cmp r6, #0
006df360  01 00 00 1a                                      bne #0x6df36c
006df364  04 00 a0 e1                                      mov r0, r4
006df368  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006df36c  04 00 a0 e1                                      mov r0, r4
006df370  a0 fd ff eb                                      bl #0x6de9f8
006df374  00 50 50 e2                                      subs r5, r0, #0
006df378  f9 ff ff 1a                                      bne #0x6df364
006df37c  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006df380  46 bb f0 eb                                      bl #0x30e0a0
006df384  4c 50 84 e5                                      str r5, [r4, #0x4c]
006df388  04 00 a0 e1                                      mov r0, r4
006df38c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006df390  a8 57 2b 00 38 19 00 00                          .byte 0xa8, 0x57, 0x2b, 0x00, 0x38, 0x19, 0x00, 0x00
