; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0059fc00, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::CLight
; alias: _ZN6glitch5video6CLight25setAbsoluteTransformationERKNS_4core8CMatrix4IfEE
; demangled: glitch::video::CLight::setAbsoluteTransformation(glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
0059fc00  10 40 2d e9                                      push {r4, lr}
0059fc04  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
0059fc08  00 00 53 e3                                      cmp r3, #0
0059fc0c  04 00 00 1a                                      bne #0x59fc24
0059fc10  41 20 a0 e3                                      mov r2, #0x41
0059fc14  50 00 90 e5                                      ldr r0, [r0, #0x50]
0059fc18  12 bb f5 eb                                      bl #0x30e868
0059fc1c  01 00 a0 e3                                      mov r0, #1
0059fc20  10 80 bd e8                                      pop {r4, pc}
0059fc24  10 00 9f e5                                      ldr r0, [pc, #0x10]
0059fc28  03 10 a0 e3                                      mov r1, #3
0059fc2c  00 00 8f e0                                      add r0, pc, r0
0059fc30  1a ac 01 eb                                      bl #0x60aca0
0059fc34  00 00 a0 e3                                      mov r0, #0
0059fc38  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0059fc3c  1c ff 33 00                                      .byte 0x1c, 0xff, 0x33, 0x00

; FUNCTION 0x0059fc40, declared_size=192, range_size=192, mode=arm
; class-group: glitch::video::CLight
; alias: _ZN6glitch5video6CLightC1ERKS1_PPNS0_21STransformationSourceE
; demangled: glitch::video::CLight::CLight(glitch::video::CLight const&, glitch::video::STransformationSource**)
; decoder-mode: arm
0059fc40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0059fc44  00 50 a0 e1                                      mov r5, r0
0059fc48  00 70 a0 e3                                      mov r7, #0
0059fc4c  04 70 85 e4                                      str r7, [r5], #4
0059fc50  04 30 81 e2                                      add r3, r1, #4
0059fc54  00 40 a0 e1                                      mov r4, r0
0059fc58  01 c0 a0 e1                                      mov ip, r1
0059fc5c  02 60 a0 e1                                      mov r6, r2
0059fc60  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0059fc64  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
0059fc68  14 50 84 e2                                      add r5, r4, #0x14
0059fc6c  14 30 8c e2                                      add r3, ip, #0x14
0059fc70  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0059fc74  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
0059fc78  24 50 84 e2                                      add r5, r4, #0x24
0059fc7c  24 30 8c e2                                      add r3, ip, #0x24
0059fc80  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0059fc84  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
0059fc88  34 30 9c e5                                      ldr r3, [ip, #0x34]
0059fc8c  01 20 a0 e3                                      mov r2, #1
0059fc90  07 00 56 e1                                      cmp r6, r7
0059fc94  34 30 84 e5                                      str r3, [r4, #0x34]
0059fc98  38 30 9c e5                                      ldr r3, [ip, #0x38]
0059fc9c  38 30 84 e5                                      str r3, [r4, #0x38]
0059fca0  3c 30 9c e5                                      ldr r3, [ip, #0x3c]
0059fca4  3c 30 84 e5                                      str r3, [r4, #0x3c]
0059fca8  40 30 9c e5                                      ldr r3, [ip, #0x40]
0059fcac  40 30 84 e5                                      str r3, [r4, #0x40]
0059fcb0  44 30 9c e5                                      ldr r3, [ip, #0x44]
0059fcb4  44 30 84 e5                                      str r3, [r4, #0x44]
0059fcb8  48 30 9c e5                                      ldr r3, [ip, #0x48]
0059fcbc  48 30 84 e5                                      str r3, [r4, #0x48]
0059fcc0  4c 30 9c e5                                      ldr r3, [ip, #0x4c]
0059fcc4  50 70 84 e5                                      str r7, [r4, #0x50]
0059fcc8  54 20 c4 e5                                      strb r2, [r4, #0x54]
0059fccc  4c 30 84 e5                                      str r3, [r4, #0x4c]
0059fcd0  b8 35 dc e1                                      ldrh r3, [ip, #0x58]
0059fcd4  b8 35 c4 e1                                      strh r3, [r4, #0x58]
0059fcd8  5a 30 dc e5                                      ldrb r3, [ip, #0x5a]
0059fcdc  5a 30 c4 e5                                      strb r3, [r4, #0x5a]
0059fce0  50 30 84 12                                      addne r3, r4, #0x50
0059fce4  00 30 86 15                                      strne r3, [r6]
0059fce8  01 00 00 0a                                      beq #0x59fcf4
0059fcec  04 00 a0 e1                                      mov r0, r4
0059fcf0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0059fcf4  50 00 84 e2                                      add r0, r4, #0x50
0059fcf8  7e 92 ff eb                                      bl #0x5846f8
0059fcfc  fa ff ff ea                                      b #0x59fcec

; FUNCTION 0x0059fd00, declared_size=72, range_size=72, mode=arm
; class-group: glitch::video::CLight
; alias: _ZNK6glitch5video6CLight5cloneEPPNS0_21STransformationSourceE
; demangled: glitch::video::CLight::clone(glitch::video::STransformationSource**) const
; decoder-mode: arm
0059fd00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0059fd04  00 50 a0 e1                                      mov r5, r0
0059fd08  01 60 a0 e1                                      mov r6, r1
0059fd0c  5c 00 a0 e3                                      mov r0, #0x5c
0059fd10  00 10 a0 e3                                      mov r1, #0
0059fd14  02 70 a0 e1                                      mov r7, r2
0059fd18  23 51 fe eb                                      bl #0x5341ac
0059fd1c  06 10 a0 e1                                      mov r1, r6
0059fd20  07 20 a0 e1                                      mov r2, r7
0059fd24  00 40 a0 e1                                      mov r4, r0
0059fd28  c4 ff ff eb                                      bl #0x59fc40
0059fd2c  00 00 54 e3                                      cmp r4, #0
0059fd30  00 40 85 e5                                      str r4, [r5]
0059fd34  00 30 94 15                                      ldrne r3, [r4]
0059fd38  05 00 a0 e1                                      mov r0, r5
0059fd3c  01 30 83 12                                      addne r3, r3, #1
0059fd40  00 30 84 15                                      strne r3, [r4]
0059fd44  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0059fd48, declared_size=192, range_size=192, mode=arm
; class-group: glitch::video::CLight
; alias: _ZN6glitch5video6CLightC2ERKS1_PPNS0_21STransformationSourceE
; demangled: glitch::video::CLight::CLight(glitch::video::CLight const&, glitch::video::STransformationSource**)
; decoder-mode: arm
0059fd48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0059fd4c  00 50 a0 e1                                      mov r5, r0
0059fd50  00 70 a0 e3                                      mov r7, #0
0059fd54  04 70 85 e4                                      str r7, [r5], #4
0059fd58  04 30 81 e2                                      add r3, r1, #4
0059fd5c  00 40 a0 e1                                      mov r4, r0
0059fd60  01 c0 a0 e1                                      mov ip, r1
0059fd64  02 60 a0 e1                                      mov r6, r2
0059fd68  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0059fd6c  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
0059fd70  14 50 84 e2                                      add r5, r4, #0x14
0059fd74  14 30 8c e2                                      add r3, ip, #0x14
0059fd78  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0059fd7c  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
0059fd80  24 50 84 e2                                      add r5, r4, #0x24
0059fd84  24 30 8c e2                                      add r3, ip, #0x24
0059fd88  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0059fd8c  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
0059fd90  34 30 9c e5                                      ldr r3, [ip, #0x34]
0059fd94  01 20 a0 e3                                      mov r2, #1
0059fd98  07 00 56 e1                                      cmp r6, r7
0059fd9c  34 30 84 e5                                      str r3, [r4, #0x34]
0059fda0  38 30 9c e5                                      ldr r3, [ip, #0x38]
0059fda4  38 30 84 e5                                      str r3, [r4, #0x38]
0059fda8  3c 30 9c e5                                      ldr r3, [ip, #0x3c]
0059fdac  3c 30 84 e5                                      str r3, [r4, #0x3c]
0059fdb0  40 30 9c e5                                      ldr r3, [ip, #0x40]
0059fdb4  40 30 84 e5                                      str r3, [r4, #0x40]
0059fdb8  44 30 9c e5                                      ldr r3, [ip, #0x44]
0059fdbc  44 30 84 e5                                      str r3, [r4, #0x44]
0059fdc0  48 30 9c e5                                      ldr r3, [ip, #0x48]
0059fdc4  48 30 84 e5                                      str r3, [r4, #0x48]
0059fdc8  4c 30 9c e5                                      ldr r3, [ip, #0x4c]
0059fdcc  50 70 84 e5                                      str r7, [r4, #0x50]
0059fdd0  54 20 c4 e5                                      strb r2, [r4, #0x54]
0059fdd4  4c 30 84 e5                                      str r3, [r4, #0x4c]
0059fdd8  b8 35 dc e1                                      ldrh r3, [ip, #0x58]
0059fddc  b8 35 c4 e1                                      strh r3, [r4, #0x58]
0059fde0  5a 30 dc e5                                      ldrb r3, [ip, #0x5a]
0059fde4  5a 30 c4 e5                                      strb r3, [r4, #0x5a]
0059fde8  50 30 84 12                                      addne r3, r4, #0x50
0059fdec  00 30 86 15                                      strne r3, [r6]
0059fdf0  01 00 00 0a                                      beq #0x59fdfc
0059fdf4  04 00 a0 e1                                      mov r0, r4
0059fdf8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0059fdfc  50 00 84 e2                                      add r0, r4, #0x50
0059fe00  3c 92 ff eb                                      bl #0x5846f8
0059fe04  fa ff ff ea                                      b #0x59fdf4

; FUNCTION 0x0059fe08, declared_size=176, range_size=176, mode=arm
; class-group: glitch::video::CLight
; alias: _ZN6glitch5video6CLightC1EPPNS0_21STransformationSourceE
; demangled: glitch::video::CLight::CLight(glitch::video::STransformationSource**)
; decoder-mode: arm
0059fe08  70 40 2d e9                                      push {r4, r5, r6, lr}
0059fe0c  02 51 e0 e3                                      mvn r5, #0x80000000
0059fe10  00 40 a0 e1                                      mov r4, r0
0059fe14  02 55 45 e2                                      sub r5, r5, #0x800000
0059fe18  40 50 84 e5                                      str r5, [r4, #0x40]
0059fe1c  42 54 a0 e3                                      mov r5, #0x42000000
0059fe20  fe 35 a0 e3                                      mov r3, #0x3f800000
0059fe24  00 00 51 e3                                      cmp r1, #0
0059fe28  0d 57 85 e2                                      add r5, r5, #0x340000
0059fe2c  00 20 a0 e3                                      mov r2, #0
0059fe30  00 00 a0 e3                                      mov r0, #0
0059fe34  01 c0 a0 e3                                      mov ip, #1
0059fe38  34 30 84 e5                                      str r3, [r4, #0x34]
0059fe3c  48 50 84 e5                                      str r5, [r4, #0x48]
0059fe40  10 30 84 e5                                      str r3, [r4, #0x10]
0059fe44  14 30 84 e5                                      str r3, [r4, #0x14]
0059fe48  18 30 84 e5                                      str r3, [r4, #0x18]
0059fe4c  1c 30 84 e5                                      str r3, [r4, #0x1c]
0059fe50  20 30 84 e5                                      str r3, [r4, #0x20]
0059fe54  24 30 84 e5                                      str r3, [r4, #0x24]
0059fe58  28 30 84 e5                                      str r3, [r4, #0x28]
0059fe5c  2c 30 84 e5                                      str r3, [r4, #0x2c]
0059fe60  30 30 84 e5                                      str r3, [r4, #0x30]
0059fe64  01 51 a0 e3                                      mov r5, #0x40000000
0059fe68  50 30 84 12                                      addne r3, r4, #0x50
0059fe6c  44 20 84 e5                                      str r2, [r4, #0x44]
0059fe70  4c 50 84 e5                                      str r5, [r4, #0x4c]
0059fe74  b8 05 c4 e1                                      strh r0, [r4, #0x58]
0059fe78  5a c0 c4 e5                                      strb ip, [r4, #0x5a]
0059fe7c  00 00 84 e5                                      str r0, [r4]
0059fe80  04 20 84 e5                                      str r2, [r4, #4]
0059fe84  08 20 84 e5                                      str r2, [r4, #8]
0059fe88  0c 20 84 e5                                      str r2, [r4, #0xc]
0059fe8c  38 20 84 e5                                      str r2, [r4, #0x38]
0059fe90  3c 20 84 e5                                      str r2, [r4, #0x3c]
0059fe94  50 00 84 e5                                      str r0, [r4, #0x50]
0059fe98  54 c0 c4 e5                                      strb ip, [r4, #0x54]
0059fe9c  00 30 81 15                                      strne r3, [r1]
0059fea0  01 00 00 0a                                      beq #0x59feac
0059fea4  04 00 a0 e1                                      mov r0, r4
0059fea8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0059feac  50 00 84 e2                                      add r0, r4, #0x50
0059feb0  10 92 ff eb                                      bl #0x5846f8
0059feb4  fa ff ff ea                                      b #0x59fea4

; FUNCTION 0x0059feb8, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::CLight
; alias: _ZN6glitch5video6CLight8allocateEPPNS0_21STransformationSourceE
; demangled: glitch::video::CLight::allocate(glitch::video::STransformationSource**)
; decoder-mode: arm
0059feb8  70 40 2d e9                                      push {r4, r5, r6, lr}
0059febc  00 50 a0 e1                                      mov r5, r0
0059fec0  01 60 a0 e1                                      mov r6, r1
0059fec4  5c 00 a0 e3                                      mov r0, #0x5c
0059fec8  00 10 a0 e3                                      mov r1, #0
0059fecc  b6 50 fe eb                                      bl #0x5341ac
0059fed0  06 10 a0 e1                                      mov r1, r6
0059fed4  00 40 a0 e1                                      mov r4, r0
0059fed8  ca ff ff eb                                      bl #0x59fe08
0059fedc  00 00 54 e3                                      cmp r4, #0
0059fee0  00 40 85 e5                                      str r4, [r5]
0059fee4  00 30 94 15                                      ldrne r3, [r4]
0059fee8  05 00 a0 e1                                      mov r0, r5
0059feec  01 30 83 12                                      addne r3, r3, #1
0059fef0  00 30 84 15                                      strne r3, [r4]
0059fef4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0059fef8, declared_size=176, range_size=176, mode=arm
; class-group: glitch::video::CLight
; alias: _ZN6glitch5video6CLightC2EPPNS0_21STransformationSourceE
; demangled: glitch::video::CLight::CLight(glitch::video::STransformationSource**)
; decoder-mode: arm
0059fef8  70 40 2d e9                                      push {r4, r5, r6, lr}
0059fefc  02 51 e0 e3                                      mvn r5, #0x80000000
0059ff00  00 40 a0 e1                                      mov r4, r0
0059ff04  02 55 45 e2                                      sub r5, r5, #0x800000
0059ff08  40 50 84 e5                                      str r5, [r4, #0x40]
0059ff0c  42 54 a0 e3                                      mov r5, #0x42000000
0059ff10  fe 35 a0 e3                                      mov r3, #0x3f800000
0059ff14  00 00 51 e3                                      cmp r1, #0
0059ff18  0d 57 85 e2                                      add r5, r5, #0x340000
0059ff1c  00 20 a0 e3                                      mov r2, #0
0059ff20  00 00 a0 e3                                      mov r0, #0
0059ff24  01 c0 a0 e3                                      mov ip, #1
0059ff28  34 30 84 e5                                      str r3, [r4, #0x34]
0059ff2c  48 50 84 e5                                      str r5, [r4, #0x48]
0059ff30  10 30 84 e5                                      str r3, [r4, #0x10]
0059ff34  14 30 84 e5                                      str r3, [r4, #0x14]
0059ff38  18 30 84 e5                                      str r3, [r4, #0x18]
0059ff3c  1c 30 84 e5                                      str r3, [r4, #0x1c]
0059ff40  20 30 84 e5                                      str r3, [r4, #0x20]
0059ff44  24 30 84 e5                                      str r3, [r4, #0x24]
0059ff48  28 30 84 e5                                      str r3, [r4, #0x28]
0059ff4c  2c 30 84 e5                                      str r3, [r4, #0x2c]
0059ff50  30 30 84 e5                                      str r3, [r4, #0x30]
0059ff54  01 51 a0 e3                                      mov r5, #0x40000000
0059ff58  50 30 84 12                                      addne r3, r4, #0x50
0059ff5c  44 20 84 e5                                      str r2, [r4, #0x44]
0059ff60  4c 50 84 e5                                      str r5, [r4, #0x4c]
0059ff64  b8 05 c4 e1                                      strh r0, [r4, #0x58]
0059ff68  5a c0 c4 e5                                      strb ip, [r4, #0x5a]
0059ff6c  00 00 84 e5                                      str r0, [r4]
0059ff70  04 20 84 e5                                      str r2, [r4, #4]
0059ff74  08 20 84 e5                                      str r2, [r4, #8]
0059ff78  0c 20 84 e5                                      str r2, [r4, #0xc]
0059ff7c  38 20 84 e5                                      str r2, [r4, #0x38]
0059ff80  3c 20 84 e5                                      str r2, [r4, #0x3c]
0059ff84  50 00 84 e5                                      str r0, [r4, #0x50]
0059ff88  54 c0 c4 e5                                      strb ip, [r4, #0x54]
0059ff8c  00 30 81 15                                      strne r3, [r1]
0059ff90  01 00 00 0a                                      beq #0x59ff9c
0059ff94  04 00 a0 e1                                      mov r0, r4
0059ff98  70 80 bd e8                                      pop {r4, r5, r6, pc}
0059ff9c  50 00 84 e2                                      add r0, r4, #0x50
0059ffa0  d4 91 ff eb                                      bl #0x5846f8
0059ffa4  fa ff ff ea                                      b #0x59ff94

; FUNCTION 0x0059ffa8, declared_size=436, range_size=436, mode=arm
; class-group: glitch::video::CLight
; alias: _ZNK6glitch5video6CLight19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::video::CLight::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
0059ffa8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0059ffac  00 50 a0 e1                                      mov r5, r0
0059ffb0  14 d0 4d e2                                      sub sp, sp, #0x14
0059ffb4  00 00 a0 e3                                      mov r0, #0
0059ffb8  01 40 a0 e1                                      mov r4, r1
0059ffbc  b8 75 d5 e1                                      ldrh r7, [r5, #0x58]
0059ffc0  38 06 00 eb                                      bl #0x5a18a8
0059ffc4  68 11 9f e5                                      ldr r1, [pc, #0x168]
0059ffc8  00 60 a0 e3                                      mov r6, #0
0059ffcc  00 60 8d e5                                      str r6, [sp]
0059ffd0  00 30 a0 e1                                      mov r3, r0
0059ffd4  07 20 a0 e1                                      mov r2, r7
0059ffd8  04 00 a0 e1                                      mov r0, r4
0059ffdc  00 c0 94 e5                                      ldr ip, [r4]
0059ffe0  01 10 8f e0                                      add r1, pc, r1
0059ffe4  0f e0 a0 e1                                      mov lr, pc
0059ffe8  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
0059ffec  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0059fff0  10 30 95 e5                                      ldr r3, [r5, #0x10]
0059fff4  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
0059fff8  4c 00 8d e8                                      stm sp, {r2, r3, r6}
0059fffc  0c 00 95 e9                                      ldmib r5, {r2, r3}
005a0000  04 00 a0 e1                                      mov r0, r4
005a0004  00 c0 94 e5                                      ldr ip, [r4]
005a0008  01 10 8f e0                                      add r1, pc, r1
005a000c  0f e0 a0 e1                                      mov lr, pc
005a0010  30 f1 9c e5                                      ldr pc, [ip, #0x130]
005a0014  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
005a0018  20 30 95 e5                                      ldr r3, [r5, #0x20]
005a001c  18 11 9f e5                                      ldr r1, [pc, #0x118]
005a0020  4c 00 8d e8                                      stm sp, {r2, r3, r6}
005a0024  14 20 95 e5                                      ldr r2, [r5, #0x14]
005a0028  18 30 95 e5                                      ldr r3, [r5, #0x18]
005a002c  04 00 a0 e1                                      mov r0, r4
005a0030  00 c0 94 e5                                      ldr ip, [r4]
005a0034  01 10 8f e0                                      add r1, pc, r1
005a0038  0f e0 a0 e1                                      mov lr, pc
005a003c  30 f1 9c e5                                      ldr pc, [ip, #0x130]
005a0040  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
005a0044  30 30 95 e5                                      ldr r3, [r5, #0x30]
005a0048  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
005a004c  4c 00 8d e8                                      stm sp, {r2, r3, r6}
005a0050  24 20 95 e5                                      ldr r2, [r5, #0x24]
005a0054  28 30 95 e5                                      ldr r3, [r5, #0x28]
005a0058  04 00 a0 e1                                      mov r0, r4
005a005c  00 c0 94 e5                                      ldr ip, [r4]
005a0060  01 10 8f e0                                      add r1, pc, r1
005a0064  0f e0 a0 e1                                      mov lr, pc
005a0068  30 f1 9c e5                                      ldr pc, [ip, #0x130]
005a006c  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
005a0070  04 00 a0 e1                                      mov r0, r4
005a0074  34 20 85 e2                                      add r2, r5, #0x34
005a0078  06 30 a0 e1                                      mov r3, r6
005a007c  00 c0 94 e5                                      ldr ip, [r4]
005a0080  01 10 8f e0                                      add r1, pc, r1
005a0084  0f e0 a0 e1                                      mov lr, pc
005a0088  a8 f1 9c e5                                      ldr pc, [ip, #0x1a8]
005a008c  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
005a0090  04 00 a0 e1                                      mov r0, r4
005a0094  40 20 95 e5                                      ldr r2, [r5, #0x40]
005a0098  06 30 a0 e1                                      mov r3, r6
005a009c  00 c0 94 e5                                      ldr ip, [r4]
005a00a0  01 10 8f e0                                      add r1, pc, r1
005a00a4  0f e0 a0 e1                                      mov lr, pc
005a00a8  64 f0 9c e5                                      ldr pc, [ip, #0x64]
005a00ac  98 10 9f e5                                      ldr r1, [pc, #0x98]
005a00b0  04 00 a0 e1                                      mov r0, r4
005a00b4  44 20 95 e5                                      ldr r2, [r5, #0x44]
005a00b8  06 30 a0 e1                                      mov r3, r6
005a00bc  00 c0 94 e5                                      ldr ip, [r4]
005a00c0  01 10 8f e0                                      add r1, pc, r1
005a00c4  0f e0 a0 e1                                      mov lr, pc
005a00c8  64 f0 9c e5                                      ldr pc, [ip, #0x64]
005a00cc  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
005a00d0  04 00 a0 e1                                      mov r0, r4
005a00d4  48 20 95 e5                                      ldr r2, [r5, #0x48]
005a00d8  06 30 a0 e1                                      mov r3, r6
005a00dc  00 c0 94 e5                                      ldr ip, [r4]
005a00e0  01 10 8f e0                                      add r1, pc, r1
005a00e4  0f e0 a0 e1                                      mov lr, pc
005a00e8  64 f0 9c e5                                      ldr pc, [ip, #0x64]
005a00ec  60 10 9f e5                                      ldr r1, [pc, #0x60]
005a00f0  04 00 a0 e1                                      mov r0, r4
005a00f4  4c 20 95 e5                                      ldr r2, [r5, #0x4c]
005a00f8  06 30 a0 e1                                      mov r3, r6
005a00fc  00 c0 94 e5                                      ldr ip, [r4]
005a0100  01 10 8f e0                                      add r1, pc, r1
005a0104  0f e0 a0 e1                                      mov lr, pc
005a0108  64 f0 9c e5                                      ldr pc, [ip, #0x64]
005a010c  44 10 9f e5                                      ldr r1, [pc, #0x44]
005a0110  04 00 a0 e1                                      mov r0, r4
005a0114  5a 20 d5 e5                                      ldrb r2, [r5, #0x5a]
005a0118  01 10 8f e0                                      add r1, pc, r1
005a011c  06 30 a0 e1                                      mov r3, r6
005a0120  00 c0 94 e5                                      ldr ip, [r4]
005a0124  0f e0 a0 e1                                      mov lr, pc
005a0128  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005a012c  14 d0 8d e2                                      add sp, sp, #0x14
005a0130  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
005a0134  98 29 32 00 90 fb 33 00 74 fb 33 00 58 fb 33 00  .byte 0x98, 0x29, 0x32, 0x00, 0x90, 0xfb, 0x33, 0x00, 0x74, 0xfb, 0x33, 0x00, 0x58, 0xfb, 0x33, 0x00
005a0144  48 fb 33 00 88 92 33 00 18 fb 33 00 08 fb 33 00  .byte 0x48, 0xfb, 0x33, 0x00, 0x88, 0x92, 0x33, 0x00, 0x18, 0xfb, 0x33, 0x00, 0x08, 0xfb, 0x33, 0x00
005a0154  f8 fa 33 00 e8 fa 33 00                          .byte 0xf8, 0xfa, 0x33, 0x00, 0xe8, 0xfa, 0x33, 0x00

; FUNCTION 0x005a015c, declared_size=420, range_size=420, mode=arm
; class-group: glitch::video::CLight
; alias: _ZN6glitch5video6CLight21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::video::CLight::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
005a015c  70 40 2d e9                                      push {r4, r5, r6, lr}
005a0160  00 30 91 e5                                      ldr r3, [r1]
005a0164  20 d0 4d e2                                      sub sp, sp, #0x20
005a0168  00 60 a0 e1                                      mov r6, r0
005a016c  00 00 a0 e3                                      mov r0, #0
005a0170  01 40 a0 e1                                      mov r4, r1
005a0174  00 51 93 e5                                      ldr r5, [r3, #0x100]
005a0178  ca 05 00 eb                                      bl #0x5a18a8
005a017c  54 11 9f e5                                      ldr r1, [pc, #0x154]
005a0180  00 20 a0 e1                                      mov r2, r0
005a0184  04 00 a0 e1                                      mov r0, r4
005a0188  01 10 8f e0                                      add r1, pc, r1
005a018c  35 ff 2f e1                                      blx r5
005a0190  44 21 9f e5                                      ldr r2, [pc, #0x144]
005a0194  b8 05 c6 e1                                      strh r0, [r6, #0x58]
005a0198  04 10 a0 e1                                      mov r1, r4
005a019c  02 20 8f e0                                      add r2, pc, r2
005a01a0  0d 00 a0 e1                                      mov r0, sp
005a01a4  00 30 94 e5                                      ldr r3, [r4]
005a01a8  0f e0 a0 e1                                      mov lr, pc
005a01ac  3c f1 93 e5                                      ldr pc, [r3, #0x13c]
005a01b0  0d 50 a0 e1                                      mov r5, sp
005a01b4  04 c0 86 e2                                      add ip, r6, #4
005a01b8  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
005a01bc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005a01c0  18 21 9f e5                                      ldr r2, [pc, #0x118]
005a01c4  0d 00 a0 e1                                      mov r0, sp
005a01c8  04 10 a0 e1                                      mov r1, r4
005a01cc  02 20 8f e0                                      add r2, pc, r2
005a01d0  00 30 94 e5                                      ldr r3, [r4]
005a01d4  0f e0 a0 e1                                      mov lr, pc
005a01d8  3c f1 93 e5                                      ldr pc, [r3, #0x13c]
005a01dc  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
005a01e0  14 c0 86 e2                                      add ip, r6, #0x14
005a01e4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005a01e8  f4 20 9f e5                                      ldr r2, [pc, #0xf4]
005a01ec  0d 00 a0 e1                                      mov r0, sp
005a01f0  04 10 a0 e1                                      mov r1, r4
005a01f4  02 20 8f e0                                      add r2, pc, r2
005a01f8  00 30 94 e5                                      ldr r3, [r4]
005a01fc  0f e0 a0 e1                                      mov lr, pc
005a0200  3c f1 93 e5                                      ldr pc, [r3, #0x13c]
005a0204  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
005a0208  24 c0 86 e2                                      add ip, r6, #0x24
005a020c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005a0210  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
005a0214  14 00 8d e2                                      add r0, sp, #0x14
005a0218  04 10 a0 e1                                      mov r1, r4
005a021c  02 20 8f e0                                      add r2, pc, r2
005a0220  00 30 94 e5                                      ldr r3, [r4]
005a0224  0f e0 a0 e1                                      mov lr, pc
005a0228  b4 f1 93 e5                                      ldr pc, [r3, #0x1b4]
005a022c  14 10 9d e5                                      ldr r1, [sp, #0x14]
005a0230  18 20 9d e5                                      ldr r2, [sp, #0x18]
005a0234  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005a0238  34 10 86 e5                                      str r1, [r6, #0x34]
005a023c  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
005a0240  38 20 86 e5                                      str r2, [r6, #0x38]
005a0244  3c 30 86 e5                                      str r3, [r6, #0x3c]
005a0248  01 10 8f e0                                      add r1, pc, r1
005a024c  00 30 94 e5                                      ldr r3, [r4]
005a0250  04 00 a0 e1                                      mov r0, r4
005a0254  0f e0 a0 e1                                      mov lr, pc
005a0258  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005a025c  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
005a0260  40 00 86 e5                                      str r0, [r6, #0x40]
005a0264  00 30 94 e5                                      ldr r3, [r4]
005a0268  01 10 8f e0                                      add r1, pc, r1
005a026c  04 00 a0 e1                                      mov r0, r4
005a0270  0f e0 a0 e1                                      mov lr, pc
005a0274  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005a0278  74 10 9f e5                                      ldr r1, [pc, #0x74]
005a027c  44 00 86 e5                                      str r0, [r6, #0x44]
005a0280  00 30 94 e5                                      ldr r3, [r4]
005a0284  01 10 8f e0                                      add r1, pc, r1
005a0288  04 00 a0 e1                                      mov r0, r4
005a028c  0f e0 a0 e1                                      mov lr, pc
005a0290  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005a0294  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
005a0298  48 00 86 e5                                      str r0, [r6, #0x48]
005a029c  00 30 94 e5                                      ldr r3, [r4]
005a02a0  01 10 8f e0                                      add r1, pc, r1
005a02a4  04 00 a0 e1                                      mov r0, r4
005a02a8  0f e0 a0 e1                                      mov lr, pc
005a02ac  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005a02b0  44 10 9f e5                                      ldr r1, [pc, #0x44]
005a02b4  4c 00 86 e5                                      str r0, [r6, #0x4c]
005a02b8  00 30 94 e5                                      ldr r3, [r4]
005a02bc  04 00 a0 e1                                      mov r0, r4
005a02c0  01 10 8f e0                                      add r1, pc, r1
005a02c4  0f e0 a0 e1                                      mov lr, pc
005a02c8  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
005a02cc  5a 00 c6 e5                                      strb r0, [r6, #0x5a]
005a02d0  20 d0 8d e2                                      add sp, sp, #0x20
005a02d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005a02d8  f0 27 32 00 fc f9 33 00 dc f9 33 00 c4 f9 33 00  .byte 0xf0, 0x27, 0x32, 0x00, 0xfc, 0xf9, 0x33, 0x00, 0xdc, 0xf9, 0x33, 0x00, 0xc4, 0xf9, 0x33, 0x00
005a02e8  ac f9 33 00 e0 90 33 00 70 f9 33 00 64 f9 33 00  .byte 0xac, 0xf9, 0x33, 0x00, 0xe0, 0x90, 0x33, 0x00, 0x70, 0xf9, 0x33, 0x00, 0x64, 0xf9, 0x33, 0x00
005a02f8  58 f9 33 00 40 f9 33 00                          .byte 0x58, 0xf9, 0x33, 0x00, 0x40, 0xf9, 0x33, 0x00
