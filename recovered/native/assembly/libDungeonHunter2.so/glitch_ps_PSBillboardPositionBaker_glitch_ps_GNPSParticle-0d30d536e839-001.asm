; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0063b7fc, declared_size=1776, range_size=1776, mode=arm
; class-group: glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps24PSBillboardPositionBakerINS0_12GNPSParticleEE28getPerParticleSystemPositionEPKNS0_16IParticleContextIS2_EEPKNS_4core8CMatrix4IfEE
; demangled: glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::getPerParticleSystemPosition(glitch::ps::IParticleContext<glitch::ps::GNPSParticle> const*, glitch::core::CMatrix4<float> const*)
; decoder-mode: arm
0063b7fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0063b800  dc 66 9f e5                                      ldr r6, [pc, #0x6dc]
0063b804  dc 76 9f e5                                      ldr r7, [pc, #0x6dc]
0063b808  04 c0 91 e5                                      ldr ip, [r1, #4]
0063b80c  06 60 8f e0                                      add r6, pc, r6
0063b810  14 20 91 e5                                      ldr r2, [r1, #0x14]
0063b814  24 30 91 e5                                      ldr r3, [r1, #0x24]
0063b818  07 50 96 e7                                      ldr r5, [r6, r7]
0063b81c  54 d0 4d e2                                      sub sp, sp, #0x54
0063b820  00 40 a0 e1                                      mov r4, r0
0063b824  00 c0 85 e5                                      str ip, [r5]
0063b828  04 20 85 e5                                      str r2, [r5, #4]
0063b82c  08 30 85 e5                                      str r3, [r5, #8]
0063b830  28 30 91 e5                                      ldr r3, [r1, #0x28]
0063b834  18 20 91 e5                                      ldr r2, [r1, #0x18]
0063b838  08 c0 91 e5                                      ldr ip, [r1, #8]
0063b83c  02 31 83 e2                                      add r3, r3, #0x80000000
0063b840  02 21 82 e2                                      add r2, r2, #0x80000000
0063b844  02 11 8c e2                                      add r1, ip, #0x80000000
0063b848  0c 10 85 e5                                      str r1, [r5, #0xc]
0063b84c  10 20 85 e5                                      str r2, [r5, #0x10]
0063b850  14 30 85 e5                                      str r3, [r5, #0x14]
0063b854  00 30 90 e5                                      ldr r3, [r0]
0063b858  0f e0 a0 e1                                      mov lr, pc
0063b85c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0063b860  21 30 d4 e5                                      ldrb r3, [r4, #0x21]
0063b864  00 80 a0 e1                                      mov r8, r0
0063b868  00 00 53 e3                                      cmp r3, #0
0063b86c  fb 00 00 0a                                      beq #0x63bc60
0063b870  00 10 90 e5                                      ldr r1, [r0]
0063b874  08 00 94 e5                                      ldr r0, [r4, #8]
0063b878  3b 4d f3 eb                                      bl #0x30ed6c
0063b87c  10 10 98 e5                                      ldr r1, [r8, #0x10]
0063b880  00 a0 a0 e1                                      mov sl, r0
0063b884  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0063b888  37 4d f3 eb                                      bl #0x30ed6c
0063b88c  00 10 a0 e1                                      mov r1, r0
0063b890  0a 00 a0 e1                                      mov r0, sl
0063b894  c2 4c f3 eb                                      bl #0x30eba4
0063b898  20 10 98 e5                                      ldr r1, [r8, #0x20]
0063b89c  00 a0 a0 e1                                      mov sl, r0
0063b8a0  10 00 94 e5                                      ldr r0, [r4, #0x10]
0063b8a4  30 4d f3 eb                                      bl #0x30ed6c
0063b8a8  00 10 a0 e1                                      mov r1, r0
0063b8ac  0a 00 a0 e1                                      mov r0, sl
0063b8b0  bb 4c f3 eb                                      bl #0x30eba4
0063b8b4  18 00 85 e5                                      str r0, [r5, #0x18]
0063b8b8  04 10 98 e5                                      ldr r1, [r8, #4]
0063b8bc  08 00 94 e5                                      ldr r0, [r4, #8]
0063b8c0  29 4d f3 eb                                      bl #0x30ed6c
0063b8c4  14 10 98 e5                                      ldr r1, [r8, #0x14]
0063b8c8  00 a0 a0 e1                                      mov sl, r0
0063b8cc  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0063b8d0  25 4d f3 eb                                      bl #0x30ed6c
0063b8d4  00 10 a0 e1                                      mov r1, r0
0063b8d8  0a 00 a0 e1                                      mov r0, sl
0063b8dc  b0 4c f3 eb                                      bl #0x30eba4
0063b8e0  24 10 98 e5                                      ldr r1, [r8, #0x24]
0063b8e4  00 a0 a0 e1                                      mov sl, r0
0063b8e8  10 00 94 e5                                      ldr r0, [r4, #0x10]
0063b8ec  1e 4d f3 eb                                      bl #0x30ed6c
0063b8f0  00 10 a0 e1                                      mov r1, r0
0063b8f4  0a 00 a0 e1                                      mov r0, sl
0063b8f8  a9 4c f3 eb                                      bl #0x30eba4
0063b8fc  1c 00 85 e5                                      str r0, [r5, #0x1c]
0063b900  08 10 98 e5                                      ldr r1, [r8, #8]
0063b904  08 00 94 e5                                      ldr r0, [r4, #8]
0063b908  17 4d f3 eb                                      bl #0x30ed6c
0063b90c  18 10 98 e5                                      ldr r1, [r8, #0x18]
0063b910  00 a0 a0 e1                                      mov sl, r0
0063b914  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0063b918  13 4d f3 eb                                      bl #0x30ed6c
0063b91c  00 10 a0 e1                                      mov r1, r0
0063b920  0a 00 a0 e1                                      mov r0, sl
0063b924  9e 4c f3 eb                                      bl #0x30eba4
0063b928  28 10 98 e5                                      ldr r1, [r8, #0x28]
0063b92c  00 a0 a0 e1                                      mov sl, r0
0063b930  10 00 94 e5                                      ldr r0, [r4, #0x10]
0063b934  0c 4d f3 eb                                      bl #0x30ed6c
0063b938  00 10 a0 e1                                      mov r1, r0
0063b93c  0a 00 a0 e1                                      mov r0, sl
0063b940  97 4c f3 eb                                      bl #0x30eba4
0063b944  20 00 85 e5                                      str r0, [r5, #0x20]
0063b948  00 10 98 e5                                      ldr r1, [r8]
0063b94c  14 00 94 e5                                      ldr r0, [r4, #0x14]
0063b950  05 4d f3 eb                                      bl #0x30ed6c
0063b954  10 10 98 e5                                      ldr r1, [r8, #0x10]
0063b958  00 a0 a0 e1                                      mov sl, r0
0063b95c  18 00 94 e5                                      ldr r0, [r4, #0x18]
0063b960  01 4d f3 eb                                      bl #0x30ed6c
0063b964  00 10 a0 e1                                      mov r1, r0
0063b968  0a 00 a0 e1                                      mov r0, sl
0063b96c  8c 4c f3 eb                                      bl #0x30eba4
0063b970  20 10 98 e5                                      ldr r1, [r8, #0x20]
0063b974  00 a0 a0 e1                                      mov sl, r0
0063b978  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0063b97c  fa 4c f3 eb                                      bl #0x30ed6c
0063b980  00 10 a0 e1                                      mov r1, r0
0063b984  0a 00 a0 e1                                      mov r0, sl
0063b988  85 4c f3 eb                                      bl #0x30eba4
0063b98c  24 00 85 e5                                      str r0, [r5, #0x24]
0063b990  04 10 98 e5                                      ldr r1, [r8, #4]
0063b994  14 00 94 e5                                      ldr r0, [r4, #0x14]
0063b998  f3 4c f3 eb                                      bl #0x30ed6c
0063b99c  14 10 98 e5                                      ldr r1, [r8, #0x14]
0063b9a0  00 a0 a0 e1                                      mov sl, r0
0063b9a4  18 00 94 e5                                      ldr r0, [r4, #0x18]
0063b9a8  ef 4c f3 eb                                      bl #0x30ed6c
0063b9ac  00 10 a0 e1                                      mov r1, r0
0063b9b0  0a 00 a0 e1                                      mov r0, sl
0063b9b4  7a 4c f3 eb                                      bl #0x30eba4
0063b9b8  24 10 98 e5                                      ldr r1, [r8, #0x24]
0063b9bc  00 a0 a0 e1                                      mov sl, r0
0063b9c0  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0063b9c4  e8 4c f3 eb                                      bl #0x30ed6c
0063b9c8  00 10 a0 e1                                      mov r1, r0
0063b9cc  0a 00 a0 e1                                      mov r0, sl
0063b9d0  73 4c f3 eb                                      bl #0x30eba4
0063b9d4  28 00 85 e5                                      str r0, [r5, #0x28]
0063b9d8  08 10 98 e5                                      ldr r1, [r8, #8]
0063b9dc  14 00 94 e5                                      ldr r0, [r4, #0x14]
0063b9e0  e1 4c f3 eb                                      bl #0x30ed6c
0063b9e4  18 10 98 e5                                      ldr r1, [r8, #0x18]
0063b9e8  00 a0 a0 e1                                      mov sl, r0
0063b9ec  18 00 94 e5                                      ldr r0, [r4, #0x18]
0063b9f0  dd 4c f3 eb                                      bl #0x30ed6c
0063b9f4  00 10 a0 e1                                      mov r1, r0
0063b9f8  0a 00 a0 e1                                      mov r0, sl
0063b9fc  68 4c f3 eb                                      bl #0x30eba4
0063ba00  28 10 98 e5                                      ldr r1, [r8, #0x28]
0063ba04  00 a0 a0 e1                                      mov sl, r0
0063ba08  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0063ba0c  d6 4c f3 eb                                      bl #0x30ed6c
0063ba10  00 10 a0 e1                                      mov r1, r0
0063ba14  0a 00 a0 e1                                      mov r0, sl
0063ba18  61 4c f3 eb                                      bl #0x30eba4
0063ba1c  2c 00 85 e5                                      str r0, [r5, #0x2c]
0063ba20  04 80 d4 e5                                      ldrb r8, [r4, #4]
0063ba24  08 50 94 e5                                      ldr r5, [r4, #8]
0063ba28  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0063ba2c  10 00 94 e5                                      ldr r0, [r4, #0x10]
0063ba30  14 10 94 e5                                      ldr r1, [r4, #0x14]
0063ba34  18 20 94 e5                                      ldr r2, [r4, #0x18]
0063ba38  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0063ba3c  00 00 58 e3                                      cmp r8, #0
0063ba40  44 50 8d e5                                      str r5, [sp, #0x44]
0063ba44  48 c0 8d e5                                      str ip, [sp, #0x48]
0063ba48  4c 00 8d e5                                      str r0, [sp, #0x4c]
0063ba4c  38 10 8d e5                                      str r1, [sp, #0x38]
0063ba50  3c 20 8d e5                                      str r2, [sp, #0x3c]
0063ba54  40 30 8d e5                                      str r3, [sp, #0x40]
0063ba58  02 00 00 0a                                      beq #0x63ba68
0063ba5c  05 30 d4 e5                                      ldrb r3, [r4, #5]
0063ba60  00 00 53 e3                                      cmp r3, #0
0063ba64  7b 00 00 1a                                      bne #0x63bc58
0063ba68  07 50 96 e7                                      ldr r5, [r6, r7]
0063ba6c  10 20 95 e5                                      ldr r2, [r5, #0x10]
0063ba70  08 90 95 e5                                      ldr sb, [r5, #8]
0063ba74  04 80 95 e5                                      ldr r8, [r5, #4]
0063ba78  02 01 82 e2                                      add r0, r2, #0x80000000
0063ba7c  09 10 a0 e1                                      mov r1, sb
0063ba80  14 a0 95 e5                                      ldr sl, [r5, #0x14]
0063ba84  00 20 8d e5                                      str r2, [sp]
0063ba88  b7 4c f3 eb                                      bl #0x30ed6c
0063ba8c  08 10 a0 e1                                      mov r1, r8
0063ba90  00 b0 a0 e1                                      mov fp, r0
0063ba94  0a 00 a0 e1                                      mov r0, sl
0063ba98  b3 4c f3 eb                                      bl #0x30ed6c
0063ba9c  00 10 a0 e1                                      mov r1, r0
0063baa0  0b 00 a0 e1                                      mov r0, fp
0063baa4  3e 4c f3 eb                                      bl #0x30eba4
0063baa8  00 30 95 e5                                      ldr r3, [r5]
0063baac  02 a1 8a e2                                      add sl, sl, #0x80000000
0063bab0  2c 00 8d e5                                      str r0, [sp, #0x2c]
0063bab4  03 10 a0 e1                                      mov r1, r3
0063bab8  0a 00 a0 e1                                      mov r0, sl
0063babc  0c a0 95 e5                                      ldr sl, [r5, #0xc]
0063bac0  04 30 8d e5                                      str r3, [sp, #4]
0063bac4  a8 4c f3 eb                                      bl #0x30ed6c
0063bac8  0a 10 a0 e1                                      mov r1, sl
0063bacc  00 b0 a0 e1                                      mov fp, r0
0063bad0  09 00 a0 e1                                      mov r0, sb
0063bad4  a4 4c f3 eb                                      bl #0x30ed6c
0063bad8  00 10 a0 e1                                      mov r1, r0
0063badc  0b 00 a0 e1                                      mov r0, fp
0063bae0  2f 4c f3 eb                                      bl #0x30eba4
0063bae4  02 11 8a e2                                      add r1, sl, #0x80000000
0063bae8  30 00 8d e5                                      str r0, [sp, #0x30]
0063baec  08 00 a0 e1                                      mov r0, r8
0063baf0  9d 4c f3 eb                                      bl #0x30ed6c
0063baf4  0c 00 9d e8                                      ldm sp, {r2, r3}
0063baf8  00 80 a0 e1                                      mov r8, r0
0063bafc  03 10 a0 e1                                      mov r1, r3
0063bb00  02 00 a0 e1                                      mov r0, r2
0063bb04  98 4c f3 eb                                      bl #0x30ed6c
0063bb08  00 10 a0 e1                                      mov r1, r0
0063bb0c  08 00 a0 e1                                      mov r0, r8
0063bb10  23 4c f3 eb                                      bl #0x30eba4
0063bb14  34 00 8d e5                                      str r0, [sp, #0x34]
0063bb18  2c 00 8d e2                                      add r0, sp, #0x2c
0063bb1c  6f 8b f4 eb                                      bl #0x35e8e0
0063bb20  3f 14 a0 e3                                      mov r1, #0x3f000000
0063bb24  00 80 a0 e1                                      mov r8, r0
0063bb28  04 00 90 e5                                      ldr r0, [r0, #4]
0063bb2c  8e 4c f3 eb                                      bl #0x30ed6c
0063bb30  3f 14 a0 e3                                      mov r1, #0x3f000000
0063bb34  00 90 a0 e1                                      mov sb, r0
0063bb38  08 00 98 e5                                      ldr r0, [r8, #8]
0063bb3c  8a 4c f3 eb                                      bl #0x30ed6c
0063bb40  3f 14 a0 e3                                      mov r1, #0x3f000000
0063bb44  00 a0 a0 e1                                      mov sl, r0
0063bb48  00 00 98 e5                                      ldr r0, [r8]
0063bb4c  86 4c f3 eb                                      bl #0x30ed6c
0063bb50  1c 90 85 e5                                      str sb, [r5, #0x1c]
0063bb54  18 00 85 e5                                      str r0, [r5, #0x18]
0063bb58  20 a0 85 e5                                      str sl, [r5, #0x20]
0063bb5c  05 00 a0 e1                                      mov r0, r5
0063bb60  5e 8b f4 eb                                      bl #0x35e8e0
0063bb64  3f 14 a0 e3                                      mov r1, #0x3f000000
0063bb68  00 90 a0 e1                                      mov sb, r0
0063bb6c  00 00 90 e5                                      ldr r0, [r0]
0063bb70  7d 4c f3 eb                                      bl #0x30ed6c
0063bb74  3f 14 a0 e3                                      mov r1, #0x3f000000
0063bb78  00 80 a0 e1                                      mov r8, r0
0063bb7c  04 00 99 e5                                      ldr r0, [sb, #4]
0063bb80  79 4c f3 eb                                      bl #0x30ed6c
0063bb84  3f 14 a0 e3                                      mov r1, #0x3f000000
0063bb88  00 a0 a0 e1                                      mov sl, r0
0063bb8c  08 00 99 e5                                      ldr r0, [sb, #8]
0063bb90  75 4c f3 eb                                      bl #0x30ed6c
0063bb94  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
0063bb98  24 80 85 e5                                      str r8, [r5, #0x24]
0063bb9c  28 a0 85 e5                                      str sl, [r5, #0x28]
0063bba0  02 11 82 e2                                      add r1, r2, #0x80000000
0063bba4  2c 00 85 e5                                      str r0, [r5, #0x2c]
0063bba8  00 90 a0 e1                                      mov sb, r0
0063bbac  00 20 8d e5                                      str r2, [sp]
0063bbb0  6d 4c f3 eb                                      bl #0x30ed6c
0063bbb4  20 10 95 e5                                      ldr r1, [r5, #0x20]
0063bbb8  00 b0 a0 e1                                      mov fp, r0
0063bbbc  0a 00 a0 e1                                      mov r0, sl
0063bbc0  69 4c f3 eb                                      bl #0x30ed6c
0063bbc4  00 10 a0 e1                                      mov r1, r0
0063bbc8  0b 00 a0 e1                                      mov r0, fp
0063bbcc  f4 4b f3 eb                                      bl #0x30eba4
0063bbd0  20 30 95 e5                                      ldr r3, [r5, #0x20]
0063bbd4  00 b0 a0 e1                                      mov fp, r0
0063bbd8  08 00 a0 e1                                      mov r0, r8
0063bbdc  02 11 83 e2                                      add r1, r3, #0x80000000
0063bbe0  61 4c f3 eb                                      bl #0x30ed6c
0063bbe4  18 10 95 e5                                      ldr r1, [r5, #0x18]
0063bbe8  00 30 a0 e1                                      mov r3, r0
0063bbec  09 00 a0 e1                                      mov r0, sb
0063bbf0  04 30 8d e5                                      str r3, [sp, #4]
0063bbf4  5c 4c f3 eb                                      bl #0x30ed6c
0063bbf8  04 30 9d e5                                      ldr r3, [sp, #4]
0063bbfc  00 10 a0 e1                                      mov r1, r0
0063bc00  03 00 a0 e1                                      mov r0, r3
0063bc04  e6 4b f3 eb                                      bl #0x30eba4
0063bc08  18 30 95 e5                                      ldr r3, [r5, #0x18]
0063bc0c  00 90 a0 e1                                      mov sb, r0
0063bc10  0a 00 a0 e1                                      mov r0, sl
0063bc14  02 11 83 e2                                      add r1, r3, #0x80000000
0063bc18  53 4c f3 eb                                      bl #0x30ed6c
0063bc1c  00 20 9d e5                                      ldr r2, [sp]
0063bc20  00 a0 a0 e1                                      mov sl, r0
0063bc24  08 00 a0 e1                                      mov r0, r8
0063bc28  02 10 a0 e1                                      mov r1, r2
0063bc2c  4e 4c f3 eb                                      bl #0x30ed6c
0063bc30  00 10 a0 e1                                      mov r1, r0
0063bc34  0a 00 a0 e1                                      mov r0, sl
0063bc38  d9 4b f3 eb                                      bl #0x30eba4
0063bc3c  04 30 d4 e5                                      ldrb r3, [r4, #4]
0063bc40  00 80 a0 e1                                      mov r8, r0
0063bc44  00 00 53 e3                                      cmp r3, #0
0063bc48  57 00 00 1a                                      bne #0x63bdac
0063bc4c  05 30 d4 e5                                      ldrb r3, [r4, #5]
0063bc50  00 00 53 e3                                      cmp r3, #0
0063bc54  0e 00 00 1a                                      bne #0x63bc94
0063bc58  54 d0 8d e2                                      add sp, sp, #0x54
0063bc5c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0063bc60  08 30 94 e5                                      ldr r3, [r4, #8]
0063bc64  18 30 85 e5                                      str r3, [r5, #0x18]
0063bc68  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0063bc6c  1c 30 85 e5                                      str r3, [r5, #0x1c]
0063bc70  10 30 94 e5                                      ldr r3, [r4, #0x10]
0063bc74  20 30 85 e5                                      str r3, [r5, #0x20]
0063bc78  14 30 94 e5                                      ldr r3, [r4, #0x14]
0063bc7c  24 30 85 e5                                      str r3, [r5, #0x24]
0063bc80  18 30 94 e5                                      ldr r3, [r4, #0x18]
0063bc84  28 30 85 e5                                      str r3, [r5, #0x28]
0063bc88  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0063bc8c  2c 30 85 e5                                      str r3, [r5, #0x2c]
0063bc90  62 ff ff ea                                      b #0x63ba20
0063bc94  38 00 8d e2                                      add r0, sp, #0x38
0063bc98  10 8b f4 eb                                      bl #0x35e8e0
0063bc9c  3f 14 a0 e3                                      mov r1, #0x3f000000
0063bca0  00 a0 a0 e1                                      mov sl, r0
0063bca4  00 00 90 e5                                      ldr r0, [r0]
0063bca8  2f 4c f3 eb                                      bl #0x30ed6c
0063bcac  3f 14 a0 e3                                      mov r1, #0x3f000000
0063bcb0  00 50 a0 e1                                      mov r5, r0
0063bcb4  04 00 9a e5                                      ldr r0, [sl, #4]
0063bcb8  2b 4c f3 eb                                      bl #0x30ed6c
0063bcbc  3f 14 a0 e3                                      mov r1, #0x3f000000
0063bcc0  00 40 a0 e1                                      mov r4, r0
0063bcc4  08 00 9a e5                                      ldr r0, [sl, #8]
0063bcc8  27 4c f3 eb                                      bl #0x30ed6c
0063bccc  07 60 96 e7                                      ldr r6, [r6, r7]
0063bcd0  00 a0 a0 e1                                      mov sl, r0
0063bcd4  02 11 84 e2                                      add r1, r4, #0x80000000
0063bcd8  24 50 86 e5                                      str r5, [r6, #0x24]
0063bcdc  28 40 86 e5                                      str r4, [r6, #0x28]
0063bce0  08 00 a0 e1                                      mov r0, r8
0063bce4  2c a0 86 e5                                      str sl, [r6, #0x2c]
0063bce8  1f 4c f3 eb                                      bl #0x30ed6c
0063bcec  0a 10 a0 e1                                      mov r1, sl
0063bcf0  00 70 a0 e1                                      mov r7, r0
0063bcf4  09 00 a0 e1                                      mov r0, sb
0063bcf8  1b 4c f3 eb                                      bl #0x30ed6c
0063bcfc  00 10 a0 e1                                      mov r1, r0
0063bd00  07 00 a0 e1                                      mov r0, r7
0063bd04  a6 4b f3 eb                                      bl #0x30eba4
0063bd08  02 11 8a e2                                      add r1, sl, #0x80000000
0063bd0c  14 00 8d e5                                      str r0, [sp, #0x14]
0063bd10  0b 00 a0 e1                                      mov r0, fp
0063bd14  14 4c f3 eb                                      bl #0x30ed6c
0063bd18  05 10 a0 e1                                      mov r1, r5
0063bd1c  00 70 a0 e1                                      mov r7, r0
0063bd20  08 00 a0 e1                                      mov r0, r8
0063bd24  10 4c f3 eb                                      bl #0x30ed6c
0063bd28  00 10 a0 e1                                      mov r1, r0
0063bd2c  07 00 a0 e1                                      mov r0, r7
0063bd30  9b 4b f3 eb                                      bl #0x30eba4
0063bd34  02 11 85 e2                                      add r1, r5, #0x80000000
0063bd38  18 00 8d e5                                      str r0, [sp, #0x18]
0063bd3c  09 00 a0 e1                                      mov r0, sb
0063bd40  09 4c f3 eb                                      bl #0x30ed6c
0063bd44  04 10 a0 e1                                      mov r1, r4
0063bd48  00 50 a0 e1                                      mov r5, r0
0063bd4c  0b 00 a0 e1                                      mov r0, fp
0063bd50  05 4c f3 eb                                      bl #0x30ed6c
0063bd54  00 10 a0 e1                                      mov r1, r0
0063bd58  05 00 a0 e1                                      mov r0, r5
0063bd5c  90 4b f3 eb                                      bl #0x30eba4
0063bd60  1c 00 8d e5                                      str r0, [sp, #0x1c]
0063bd64  14 00 8d e2                                      add r0, sp, #0x14
0063bd68  dc 8a f4 eb                                      bl #0x35e8e0
0063bd6c  3f 14 a0 e3                                      mov r1, #0x3f000000
0063bd70  00 40 a0 e1                                      mov r4, r0
0063bd74  04 00 90 e5                                      ldr r0, [r0, #4]
0063bd78  fb 4b f3 eb                                      bl #0x30ed6c
0063bd7c  3f 14 a0 e3                                      mov r1, #0x3f000000
0063bd80  00 50 a0 e1                                      mov r5, r0
0063bd84  08 00 94 e5                                      ldr r0, [r4, #8]
0063bd88  f7 4b f3 eb                                      bl #0x30ed6c
0063bd8c  3f 14 a0 e3                                      mov r1, #0x3f000000
0063bd90  00 70 a0 e1                                      mov r7, r0
0063bd94  00 00 94 e5                                      ldr r0, [r4]
0063bd98  f3 4b f3 eb                                      bl #0x30ed6c
0063bd9c  20 70 86 e5                                      str r7, [r6, #0x20]
0063bda0  18 00 86 e5                                      str r0, [r6, #0x18]
0063bda4  1c 50 86 e5                                      str r5, [r6, #0x1c]
0063bda8  aa ff ff ea                                      b #0x63bc58
0063bdac  44 00 8d e2                                      add r0, sp, #0x44
0063bdb0  ca 8a f4 eb                                      bl #0x35e8e0
0063bdb4  3f 14 a0 e3                                      mov r1, #0x3f000000
0063bdb8  00 a0 a0 e1                                      mov sl, r0
0063bdbc  00 00 90 e5                                      ldr r0, [r0]
0063bdc0  e9 4b f3 eb                                      bl #0x30ed6c
0063bdc4  08 00 8d e5                                      str r0, [sp, #8]
0063bdc8  04 00 9a e5                                      ldr r0, [sl, #4]
0063bdcc  3f 14 a0 e3                                      mov r1, #0x3f000000
0063bdd0  e5 4b f3 eb                                      bl #0x30ed6c
0063bdd4  0c 00 8d e5                                      str r0, [sp, #0xc]
0063bdd8  08 00 9a e5                                      ldr r0, [sl, #8]
0063bddc  3f 14 a0 e3                                      mov r1, #0x3f000000
0063bde0  e1 4b f3 eb                                      bl #0x30ed6c
0063bde4  08 30 9d e5                                      ldr r3, [sp, #8]
0063bde8  02 11 89 e2                                      add r1, sb, #0x80000000
0063bdec  00 a0 a0 e1                                      mov sl, r0
0063bdf0  18 30 85 e5                                      str r3, [r5, #0x18]
0063bdf4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0063bdf8  20 00 85 e5                                      str r0, [r5, #0x20]
0063bdfc  1c 30 85 e5                                      str r3, [r5, #0x1c]
0063be00  d9 4b f3 eb                                      bl #0x30ed6c
0063be04  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0063be08  00 30 a0 e1                                      mov r3, r0
0063be0c  08 00 a0 e1                                      mov r0, r8
0063be10  04 30 8d e5                                      str r3, [sp, #4]
0063be14  d4 4b f3 eb                                      bl #0x30ed6c
0063be18  04 30 9d e5                                      ldr r3, [sp, #4]
0063be1c  00 10 a0 e1                                      mov r1, r0
0063be20  03 00 a0 e1                                      mov r0, r3
0063be24  5e 4b f3 eb                                      bl #0x30eba4
0063be28  02 11 88 e2                                      add r1, r8, #0x80000000
0063be2c  20 00 8d e5                                      str r0, [sp, #0x20]
0063be30  08 00 9d e5                                      ldr r0, [sp, #8]
0063be34  cc 4b f3 eb                                      bl #0x30ed6c
0063be38  0a 10 a0 e1                                      mov r1, sl
0063be3c  00 30 a0 e1                                      mov r3, r0
0063be40  0b 00 a0 e1                                      mov r0, fp
0063be44  04 30 8d e5                                      str r3, [sp, #4]
0063be48  c7 4b f3 eb                                      bl #0x30ed6c
0063be4c  04 30 9d e5                                      ldr r3, [sp, #4]
0063be50  00 10 a0 e1                                      mov r1, r0
0063be54  03 00 a0 e1                                      mov r0, r3
0063be58  51 4b f3 eb                                      bl #0x30eba4
0063be5c  02 11 8b e2                                      add r1, fp, #0x80000000
0063be60  24 00 8d e5                                      str r0, [sp, #0x24]
0063be64  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0063be68  bf 4b f3 eb                                      bl #0x30ed6c
0063be6c  08 10 9d e5                                      ldr r1, [sp, #8]
0063be70  00 a0 a0 e1                                      mov sl, r0
0063be74  09 00 a0 e1                                      mov r0, sb
0063be78  bb 4b f3 eb                                      bl #0x30ed6c
0063be7c  00 10 a0 e1                                      mov r1, r0
0063be80  0a 00 a0 e1                                      mov r0, sl
0063be84  46 4b f3 eb                                      bl #0x30eba4
0063be88  28 00 8d e5                                      str r0, [sp, #0x28]
0063be8c  20 00 8d e2                                      add r0, sp, #0x20
0063be90  92 8a f4 eb                                      bl #0x35e8e0
0063be94  3f 14 a0 e3                                      mov r1, #0x3f000000
0063be98  00 a0 a0 e1                                      mov sl, r0
0063be9c  04 00 90 e5                                      ldr r0, [r0, #4]
0063bea0  b1 4b f3 eb                                      bl #0x30ed6c
0063bea4  3f 14 a0 e3                                      mov r1, #0x3f000000
0063bea8  00 20 a0 e1                                      mov r2, r0
0063beac  08 00 9a e5                                      ldr r0, [sl, #8]
0063beb0  00 20 8d e5                                      str r2, [sp]
0063beb4  ac 4b f3 eb                                      bl #0x30ed6c
0063beb8  3f 14 a0 e3                                      mov r1, #0x3f000000
0063bebc  00 30 a0 e1                                      mov r3, r0
0063bec0  00 00 9a e5                                      ldr r0, [sl]
0063bec4  04 30 8d e5                                      str r3, [sp, #4]
0063bec8  a7 4b f3 eb                                      bl #0x30ed6c
0063becc  04 30 9d e5                                      ldr r3, [sp, #4]
0063bed0  24 00 85 e5                                      str r0, [r5, #0x24]
0063bed4  2c 30 85 e5                                      str r3, [r5, #0x2c]
0063bed8  00 20 9d e5                                      ldr r2, [sp]
0063bedc  28 20 85 e5                                      str r2, [r5, #0x28]
0063bee0  59 ff ff ea                                      b #0x63bc4c
; mapping-symbol data/literal pool
0063bee4  84 92 35 00 b4 1f 00 00                          .byte 0x84, 0x92, 0x35, 0x00, 0xb4, 0x1f, 0x00, 0x00

; FUNCTION 0x006c063c, declared_size=1280, range_size=1280, mode=arm
; class-group: glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps24PSBillboardPositionBakerINS0_12GNPSParticleEE22getPerParticlePositionEPKNS0_16IParticleContextIS2_EEPKS2_
; demangled: glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::getPerParticlePosition(glitch::ps::IParticleContext<glitch::ps::GNPSParticle> const*, glitch::ps::GNPSParticle const*)
; decoder-mode: arm
006c063c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c0640  e8 44 9f e5                                      ldr r4, [pc, #0x4e8]
006c0644  e8 24 9f e5                                      ldr r2, [pc, #0x4e8]
006c0648  7c d0 4d e2                                      sub sp, sp, #0x7c
006c064c  04 40 8f e0                                      add r4, pc, r4
006c0650  02 50 94 e7                                      ldr r5, [r4, r2]
006c0654  00 30 a0 e3                                      mov r3, #0
006c0658  04 20 8d e5                                      str r2, [sp, #4]
006c065c  10 30 8d e5                                      str r3, [sp, #0x10]
006c0660  18 80 95 e5                                      ldr r8, [r5, #0x18]
006c0664  1c 70 95 e5                                      ldr r7, [r5, #0x1c]
006c0668  20 60 95 e5                                      ldr r6, [r5, #0x20]
006c066c  24 b0 95 e5                                      ldr fp, [r5, #0x24]
006c0670  28 90 95 e5                                      ldr sb, [r5, #0x28]
006c0674  2c a0 95 e5                                      ldr sl, [r5, #0x2c]
006c0678  fe 25 a0 e3                                      mov r2, #0x3f800000
006c067c  14 20 8d e5                                      str r2, [sp, #0x14]
006c0680  08 30 8d e5                                      str r3, [sp, #8]
006c0684  0c 30 8d e5                                      str r3, [sp, #0xc]
006c0688  6c 80 8d e5                                      str r8, [sp, #0x6c]
006c068c  70 70 8d e5                                      str r7, [sp, #0x70]
006c0690  74 60 8d e5                                      str r6, [sp, #0x74]
006c0694  60 b0 8d e5                                      str fp, [sp, #0x60]
006c0698  64 90 8d e5                                      str sb, [sp, #0x64]
006c069c  68 a0 8d e5                                      str sl, [sp, #0x68]
006c06a0  20 30 d0 e5                                      ldrb r3, [r0, #0x20]
006c06a4  00 10 8d e5                                      str r1, [sp]
006c06a8  00 00 53 e3                                      cmp r3, #0
006c06ac  c8 00 00 1a                                      bne #0x6c09d4
006c06b0  00 20 9d e5                                      ldr r2, [sp]
006c06b4  00 10 a0 e3                                      mov r1, #0
006c06b8  70 00 92 e5                                      ldr r0, [r2, #0x70]
006c06bc  32 36 f1 eb                                      bl #0x30df8c
006c06c0  00 00 50 e3                                      cmp r0, #0
006c06c4  8b 00 00 1a                                      bne #0x6c08f8
006c06c8  0a 10 a0 e1                                      mov r1, sl
006c06cc  02 01 87 e2                                      add r0, r7, #0x80000000
006c06d0  a5 39 f1 eb                                      bl #0x30ed6c
006c06d4  09 10 a0 e1                                      mov r1, sb
006c06d8  00 50 a0 e1                                      mov r5, r0
006c06dc  06 00 a0 e1                                      mov r0, r6
006c06e0  a1 39 f1 eb                                      bl #0x30ed6c
006c06e4  00 10 a0 e1                                      mov r1, r0
006c06e8  05 00 a0 e1                                      mov r0, r5
006c06ec  2c 39 f1 eb                                      bl #0x30eba4
006c06f0  02 61 86 e2                                      add r6, r6, #0x80000000
006c06f4  0b 10 a0 e1                                      mov r1, fp
006c06f8  48 00 8d e5                                      str r0, [sp, #0x48]
006c06fc  06 00 a0 e1                                      mov r0, r6
006c0700  99 39 f1 eb                                      bl #0x30ed6c
006c0704  08 10 a0 e1                                      mov r1, r8
006c0708  00 50 a0 e1                                      mov r5, r0
006c070c  0a 00 a0 e1                                      mov r0, sl
006c0710  95 39 f1 eb                                      bl #0x30ed6c
006c0714  00 10 a0 e1                                      mov r1, r0
006c0718  05 00 a0 e1                                      mov r0, r5
006c071c  20 39 f1 eb                                      bl #0x30eba4
006c0720  02 81 88 e2                                      add r8, r8, #0x80000000
006c0724  09 10 a0 e1                                      mov r1, sb
006c0728  4c 00 8d e5                                      str r0, [sp, #0x4c]
006c072c  08 00 a0 e1                                      mov r0, r8
006c0730  8d 39 f1 eb                                      bl #0x30ed6c
006c0734  0b 10 a0 e1                                      mov r1, fp
006c0738  00 50 a0 e1                                      mov r5, r0
006c073c  07 00 a0 e1                                      mov r0, r7
006c0740  89 39 f1 eb                                      bl #0x30ed6c
006c0744  00 10 a0 e1                                      mov r1, r0
006c0748  05 00 a0 e1                                      mov r0, r5
006c074c  14 39 f1 eb                                      bl #0x30eba4
006c0750  50 00 8d e5                                      str r0, [sp, #0x50]
006c0754  48 00 8d e2                                      add r0, sp, #0x48
006c0758  60 78 f2 eb                                      bl #0x35e8e0
006c075c  00 20 9d e5                                      ldr r2, [sp]
006c0760  00 30 a0 e1                                      mov r3, r0
006c0764  00 10 a0 e3                                      mov r1, #0
006c0768  74 00 92 e5                                      ldr r0, [r2, #0x74]
006c076c  08 50 93 e5                                      ldr r5, [r3, #8]
006c0770  00 70 93 e5                                      ldr r7, [r3]
006c0774  04 60 93 e5                                      ldr r6, [r3, #4]
006c0778  de 36 f1 eb                                      bl #0x30e2f8
006c077c  00 30 9d e5                                      ldr r3, [sp]
006c0780  00 00 50 e3                                      cmp r0, #0
006c0784  02 61 86 12                                      addne r6, r6, #0x80000000
006c0788  70 10 93 e5                                      ldr r1, [r3, #0x70]
006c078c  40 60 8d e5                                      str r6, [sp, #0x40]
006c0790  08 60 8d e2                                      add r6, sp, #8
006c0794  02 71 87 12                                      addne r7, r7, #0x80000000
006c0798  02 51 85 12                                      addne r5, r5, #0x80000000
006c079c  3c 20 8d e2                                      add r2, sp, #0x3c
006c07a0  06 00 a0 e1                                      mov r0, r6
006c07a4  3c 70 8d e5                                      str r7, [sp, #0x3c]
006c07a8  44 50 8d e5                                      str r5, [sp, #0x44]
006c07ac  82 31 fd eb                                      bl #0x60cdbc
006c07b0  00 00 9d e5                                      ldr r0, [sp]
006c07b4  70 10 9d e5                                      ldr r1, [sp, #0x70]
006c07b8  88 50 90 e5                                      ldr r5, [r0, #0x88]
006c07bc  8c a0 90 e5                                      ldr sl, [r0, #0x8c]
006c07c0  05 00 a0 e1                                      mov r0, r5
006c07c4  68 39 f1 eb                                      bl #0x30ed6c
006c07c8  64 10 9d e5                                      ldr r1, [sp, #0x64]
006c07cc  00 70 a0 e1                                      mov r7, r0
006c07d0  0a 00 a0 e1                                      mov r0, sl
006c07d4  64 39 f1 eb                                      bl #0x30ed6c
006c07d8  00 10 a0 e1                                      mov r1, r0
006c07dc  07 00 a0 e1                                      mov r0, r7
006c07e0  ef 38 f1 eb                                      bl #0x30eba4
006c07e4  00 10 a0 e1                                      mov r1, r0
006c07e8  ed 38 f1 eb                                      bl #0x30eba4
006c07ec  74 10 9d e5                                      ldr r1, [sp, #0x74]
006c07f0  00 80 a0 e1                                      mov r8, r0
006c07f4  05 00 a0 e1                                      mov r0, r5
006c07f8  5b 39 f1 eb                                      bl #0x30ed6c
006c07fc  68 10 9d e5                                      ldr r1, [sp, #0x68]
006c0800  00 70 a0 e1                                      mov r7, r0
006c0804  0a 00 a0 e1                                      mov r0, sl
006c0808  57 39 f1 eb                                      bl #0x30ed6c
006c080c  00 10 a0 e1                                      mov r1, r0
006c0810  07 00 a0 e1                                      mov r0, r7
006c0814  e2 38 f1 eb                                      bl #0x30eba4
006c0818  00 10 a0 e1                                      mov r1, r0
006c081c  e0 38 f1 eb                                      bl #0x30eba4
006c0820  10 33 9f e5                                      ldr r3, [pc, #0x310]
006c0824  00 70 a0 e1                                      mov r7, r0
006c0828  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006c082c  05 00 a0 e1                                      mov r0, r5
006c0830  03 50 94 e7                                      ldr r5, [r4, r3]
006c0834  4c 39 f1 eb                                      bl #0x30ed6c
006c0838  60 10 9d e5                                      ldr r1, [sp, #0x60]
006c083c  00 90 a0 e1                                      mov sb, r0
006c0840  0a 00 a0 e1                                      mov r0, sl
006c0844  48 39 f1 eb                                      bl #0x30ed6c
006c0848  00 10 a0 e1                                      mov r1, r0
006c084c  09 00 a0 e1                                      mov r0, sb
006c0850  d3 38 f1 eb                                      bl #0x30eba4
006c0854  00 10 a0 e1                                      mov r1, r0
006c0858  d1 38 f1 eb                                      bl #0x30eba4
006c085c  06 10 a0 e1                                      mov r1, r6
006c0860  00 00 85 e5                                      str r0, [r5]
006c0864  6c 20 8d e2                                      add r2, sp, #0x6c
006c0868  30 00 8d e2                                      add r0, sp, #0x30
006c086c  04 80 85 e5                                      str r8, [r5, #4]
006c0870  08 70 85 e5                                      str r7, [r5, #8]
006c0874  05 6d f2 eb                                      bl #0x35bc90
006c0878  30 30 9d e5                                      ldr r3, [sp, #0x30]
006c087c  06 10 a0 e1                                      mov r1, r6
006c0880  24 00 8d e2                                      add r0, sp, #0x24
006c0884  6c 30 8d e5                                      str r3, [sp, #0x6c]
006c0888  34 30 9d e5                                      ldr r3, [sp, #0x34]
006c088c  60 20 8d e2                                      add r2, sp, #0x60
006c0890  70 30 8d e5                                      str r3, [sp, #0x70]
006c0894  38 30 9d e5                                      ldr r3, [sp, #0x38]
006c0898  74 30 8d e5                                      str r3, [sp, #0x74]
006c089c  fb 6c f2 eb                                      bl #0x35bc90
006c08a0  24 30 9d e5                                      ldr r3, [sp, #0x24]
006c08a4  06 10 a0 e1                                      mov r1, r6
006c08a8  18 00 8d e2                                      add r0, sp, #0x18
006c08ac  60 30 8d e5                                      str r3, [sp, #0x60]
006c08b0  28 30 9d e5                                      ldr r3, [sp, #0x28]
006c08b4  05 20 a0 e1                                      mov r2, r5
006c08b8  64 30 8d e5                                      str r3, [sp, #0x64]
006c08bc  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006c08c0  68 30 8d e5                                      str r3, [sp, #0x68]
006c08c4  f1 6c f2 eb                                      bl #0x35bc90
006c08c8  20 30 9d e5                                      ldr r3, [sp, #0x20]
006c08cc  60 b0 9d e5                                      ldr fp, [sp, #0x60]
006c08d0  6c 80 9d e5                                      ldr r8, [sp, #0x6c]
006c08d4  08 30 85 e5                                      str r3, [r5, #8]
006c08d8  18 30 9d e5                                      ldr r3, [sp, #0x18]
006c08dc  64 90 9d e5                                      ldr sb, [sp, #0x64]
006c08e0  70 70 9d e5                                      ldr r7, [sp, #0x70]
006c08e4  00 30 85 e5                                      str r3, [r5]
006c08e8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006c08ec  68 a0 9d e5                                      ldr sl, [sp, #0x68]
006c08f0  74 60 9d e5                                      ldr r6, [sp, #0x74]
006c08f4  04 30 85 e5                                      str r3, [r5, #4]
006c08f8  08 10 a0 e1                                      mov r1, r8
006c08fc  0b 00 a0 e1                                      mov r0, fp
006c0900  a9 36 f1 eb                                      bl #0x30e3ac
006c0904  04 20 9d e5                                      ldr r2, [sp, #4]
006c0908  07 10 a0 e1                                      mov r1, r7
006c090c  02 40 94 e7                                      ldr r4, [r4, r2]
006c0910  30 00 84 e5                                      str r0, [r4, #0x30]
006c0914  09 00 a0 e1                                      mov r0, sb
006c0918  a3 36 f1 eb                                      bl #0x30e3ac
006c091c  06 10 a0 e1                                      mov r1, r6
006c0920  34 00 84 e5                                      str r0, [r4, #0x34]
006c0924  0a 00 a0 e1                                      mov r0, sl
006c0928  9f 36 f1 eb                                      bl #0x30e3ac
006c092c  02 31 88 e2                                      add r3, r8, #0x80000000
006c0930  38 00 84 e5                                      str r0, [r4, #0x38]
006c0934  0b 10 a0 e1                                      mov r1, fp
006c0938  03 00 a0 e1                                      mov r0, r3
006c093c  9a 36 f1 eb                                      bl #0x30e3ac
006c0940  02 31 87 e2                                      add r3, r7, #0x80000000
006c0944  3c 00 84 e5                                      str r0, [r4, #0x3c]
006c0948  09 10 a0 e1                                      mov r1, sb
006c094c  03 00 a0 e1                                      mov r0, r3
006c0950  95 36 f1 eb                                      bl #0x30e3ac
006c0954  02 31 86 e2                                      add r3, r6, #0x80000000
006c0958  40 00 84 e5                                      str r0, [r4, #0x40]
006c095c  0a 10 a0 e1                                      mov r1, sl
006c0960  03 00 a0 e1                                      mov r0, r3
006c0964  90 36 f1 eb                                      bl #0x30e3ac
006c0968  0b 10 a0 e1                                      mov r1, fp
006c096c  44 00 84 e5                                      str r0, [r4, #0x44]
006c0970  08 00 a0 e1                                      mov r0, r8
006c0974  8c 36 f1 eb                                      bl #0x30e3ac
006c0978  09 10 a0 e1                                      mov r1, sb
006c097c  48 00 84 e5                                      str r0, [r4, #0x48]
006c0980  07 00 a0 e1                                      mov r0, r7
006c0984  88 36 f1 eb                                      bl #0x30e3ac
006c0988  0a 10 a0 e1                                      mov r1, sl
006c098c  4c 00 84 e5                                      str r0, [r4, #0x4c]
006c0990  06 00 a0 e1                                      mov r0, r6
006c0994  84 36 f1 eb                                      bl #0x30e3ac
006c0998  08 10 a0 e1                                      mov r1, r8
006c099c  50 00 84 e5                                      str r0, [r4, #0x50]
006c09a0  0b 00 a0 e1                                      mov r0, fp
006c09a4  7e 38 f1 eb                                      bl #0x30eba4
006c09a8  09 10 a0 e1                                      mov r1, sb
006c09ac  54 00 84 e5                                      str r0, [r4, #0x54]
006c09b0  07 00 a0 e1                                      mov r0, r7
006c09b4  7a 38 f1 eb                                      bl #0x30eba4
006c09b8  06 10 a0 e1                                      mov r1, r6
006c09bc  58 00 84 e5                                      str r0, [r4, #0x58]
006c09c0  0a 00 a0 e1                                      mov r0, sl
006c09c4  76 38 f1 eb                                      bl #0x30eba4
006c09c8  5c 00 84 e5                                      str r0, [r4, #0x5c]
006c09cc  7c d0 8d e2                                      add sp, sp, #0x7c
006c09d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006c09d4  00 30 9d e5                                      ldr r3, [sp]
006c09d8  0c 10 91 e5                                      ldr r1, [r1, #0xc]
006c09dc  60 00 8d e2                                      add r0, sp, #0x60
006c09e0  10 20 93 e5                                      ldr r2, [r3, #0x10]
006c09e4  14 30 93 e5                                      ldr r3, [r3, #0x14]
006c09e8  60 10 8d e5                                      str r1, [sp, #0x60]
006c09ec  64 20 8d e5                                      str r2, [sp, #0x64]
006c09f0  68 30 8d e5                                      str r3, [sp, #0x68]
006c09f4  b9 77 f2 eb                                      bl #0x35e8e0
006c09f8  3f 14 a0 e3                                      mov r1, #0x3f000000
006c09fc  00 80 a0 e1                                      mov r8, r0
006c0a00  00 00 90 e5                                      ldr r0, [r0]
006c0a04  d8 38 f1 eb                                      bl #0x30ed6c
006c0a08  3f 14 a0 e3                                      mov r1, #0x3f000000
006c0a0c  00 70 a0 e1                                      mov r7, r0
006c0a10  04 00 98 e5                                      ldr r0, [r8, #4]
006c0a14  d4 38 f1 eb                                      bl #0x30ed6c
006c0a18  3f 14 a0 e3                                      mov r1, #0x3f000000
006c0a1c  00 60 a0 e1                                      mov r6, r0
006c0a20  08 00 98 e5                                      ldr r0, [r8, #8]
006c0a24  d0 38 f1 eb                                      bl #0x30ed6c
006c0a28  14 a0 95 e5                                      ldr sl, [r5, #0x14]
006c0a2c  00 80 a0 e1                                      mov r8, r0
006c0a30  02 01 86 e2                                      add r0, r6, #0x80000000
006c0a34  0a 10 a0 e1                                      mov r1, sl
006c0a38  10 90 95 e5                                      ldr sb, [r5, #0x10]
006c0a3c  60 70 8d e5                                      str r7, [sp, #0x60]
006c0a40  64 60 8d e5                                      str r6, [sp, #0x64]
006c0a44  68 80 8d e5                                      str r8, [sp, #0x68]
006c0a48  c7 38 f1 eb                                      bl #0x30ed6c
006c0a4c  09 10 a0 e1                                      mov r1, sb
006c0a50  00 b0 a0 e1                                      mov fp, r0
006c0a54  08 00 a0 e1                                      mov r0, r8
006c0a58  c3 38 f1 eb                                      bl #0x30ed6c
006c0a5c  00 10 a0 e1                                      mov r1, r0
006c0a60  0b 00 a0 e1                                      mov r0, fp
006c0a64  4e 38 f1 eb                                      bl #0x30eba4
006c0a68  0c 50 95 e5                                      ldr r5, [r5, #0xc]
006c0a6c  02 81 88 e2                                      add r8, r8, #0x80000000
006c0a70  54 00 8d e5                                      str r0, [sp, #0x54]
006c0a74  05 10 a0 e1                                      mov r1, r5
006c0a78  08 00 a0 e1                                      mov r0, r8
006c0a7c  ba 38 f1 eb                                      bl #0x30ed6c
006c0a80  0a 10 a0 e1                                      mov r1, sl
006c0a84  00 80 a0 e1                                      mov r8, r0
006c0a88  07 00 a0 e1                                      mov r0, r7
006c0a8c  b6 38 f1 eb                                      bl #0x30ed6c
006c0a90  00 10 a0 e1                                      mov r1, r0
006c0a94  08 00 a0 e1                                      mov r0, r8
006c0a98  41 38 f1 eb                                      bl #0x30eba4
006c0a9c  02 11 87 e2                                      add r1, r7, #0x80000000
006c0aa0  58 00 8d e5                                      str r0, [sp, #0x58]
006c0aa4  09 00 a0 e1                                      mov r0, sb
006c0aa8  af 38 f1 eb                                      bl #0x30ed6c
006c0aac  05 10 a0 e1                                      mov r1, r5
006c0ab0  00 70 a0 e1                                      mov r7, r0
006c0ab4  06 00 a0 e1                                      mov r0, r6
006c0ab8  ab 38 f1 eb                                      bl #0x30ed6c
006c0abc  00 10 a0 e1                                      mov r1, r0
006c0ac0  07 00 a0 e1                                      mov r0, r7
006c0ac4  36 38 f1 eb                                      bl #0x30eba4
006c0ac8  5c 00 8d e5                                      str r0, [sp, #0x5c]
006c0acc  54 00 8d e2                                      add r0, sp, #0x54
006c0ad0  82 77 f2 eb                                      bl #0x35e8e0
006c0ad4  00 50 a0 e1                                      mov r5, r0
006c0ad8  00 00 90 e5                                      ldr r0, [r0]
006c0adc  3f 14 a0 e3                                      mov r1, #0x3f000000
006c0ae0  02 01 80 e2                                      add r0, r0, #0x80000000
006c0ae4  a0 38 f1 eb                                      bl #0x30ed6c
006c0ae8  00 80 a0 e1                                      mov r8, r0
006c0aec  04 00 95 e5                                      ldr r0, [r5, #4]
006c0af0  3f 14 a0 e3                                      mov r1, #0x3f000000
006c0af4  02 01 80 e2                                      add r0, r0, #0x80000000
006c0af8  9b 38 f1 eb                                      bl #0x30ed6c
006c0afc  00 70 a0 e1                                      mov r7, r0
006c0b00  08 00 95 e5                                      ldr r0, [r5, #8]
006c0b04  3f 14 a0 e3                                      mov r1, #0x3f000000
006c0b08  02 01 80 e2                                      add r0, r0, #0x80000000
006c0b0c  96 38 f1 eb                                      bl #0x30ed6c
006c0b10  68 a0 9d e5                                      ldr sl, [sp, #0x68]
006c0b14  00 60 a0 e1                                      mov r6, r0
006c0b18  64 90 9d e5                                      ldr sb, [sp, #0x64]
006c0b1c  60 b0 9d e5                                      ldr fp, [sp, #0x60]
006c0b20  6c 80 8d e5                                      str r8, [sp, #0x6c]
006c0b24  70 70 8d e5                                      str r7, [sp, #0x70]
006c0b28  74 00 8d e5                                      str r0, [sp, #0x74]
006c0b2c  df fe ff ea                                      b #0x6c06b0
; mapping-symbol data/literal pool
006c0b30  44 44 2d 00 b4 1f 00 00 c8 09 00 00              .byte 0x44, 0x44, 0x2d, 0x00, 0xb4, 0x1f, 0x00, 0x00, 0xc8, 0x09, 0x00, 0x00
