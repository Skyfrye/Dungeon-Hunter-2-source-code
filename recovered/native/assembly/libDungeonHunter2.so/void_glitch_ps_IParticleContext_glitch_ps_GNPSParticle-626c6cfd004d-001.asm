; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0063ed2c, declared_size=164, range_size=164, mode=arm
; class-group: void glitch::ps::IParticleContext<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEE12setParameterIPNS_7collada10SAnimationEEEvPKcT_
; demangled: void glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::collada::SAnimation*>(char const*, glitch::collada::SAnimation*)
; decoder-mode: arm
0063ed2c  70 40 2d e9                                      push {r4, r5, r6, lr}
0063ed30  10 d0 4d e2                                      sub sp, sp, #0x10
0063ed34  00 60 a0 e1                                      mov r6, r0
0063ed38  02 50 a0 e1                                      mov r5, r2
0063ed3c  c2 f1 ff eb                                      bl #0x63b44c
0063ed40  34 c0 96 e5                                      ldr ip, [r6, #0x34]
0063ed44  30 10 86 e2                                      add r1, r6, #0x30
0063ed48  00 40 a0 e1                                      mov r4, r0
0063ed4c  00 00 5c e3                                      cmp ip, #0
0063ed50  01 c0 a0 01                                      moveq ip, r1
0063ed54  0a 00 00 0a                                      beq #0x63ed84
0063ed58  01 20 a0 e1                                      mov r2, r1
0063ed5c  00 00 00 ea                                      b #0x63ed64
0063ed60  03 c0 a0 e1                                      mov ip, r3
0063ed64  10 30 9c e5                                      ldr r3, [ip, #0x10]
0063ed68  03 00 54 e1                                      cmp r4, r3
0063ed6c  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0063ed70  08 30 9c 95                                      ldrls r3, [ip, #8]
0063ed74  02 c0 a0 81                                      movhi ip, r2
0063ed78  0c 20 a0 e1                                      mov r2, ip
0063ed7c  00 00 53 e3                                      cmp r3, #0
0063ed80  f6 ff ff 1a                                      bne #0x63ed60
0063ed84  0c 00 51 e1                                      cmp r1, ip
0063ed88  03 00 00 0a                                      beq #0x63ed9c
0063ed8c  10 20 9c e5                                      ldr r2, [ip, #0x10]
0063ed90  0c 30 a0 e1                                      mov r3, ip
0063ed94  02 00 54 e1                                      cmp r4, r2
0063ed98  07 00 00 2a                                      bhs #0x63edbc
0063ed9c  0d 30 a0 e1                                      mov r3, sp
0063eda0  00 e0 a0 e3                                      mov lr, #0
0063eda4  08 00 8d e2                                      add r0, sp, #8
0063eda8  0c 20 8d e2                                      add r2, sp, #0xc
0063edac  10 40 8d e8                                      stm sp, {r4, lr}
0063edb0  0c c0 8d e5                                      str ip, [sp, #0xc]
0063edb4  2e ef ff eb                                      bl #0x63aa74
0063edb8  08 30 9d e5                                      ldr r3, [sp, #8]
0063edbc  14 30 93 e5                                      ldr r3, [r3, #0x14]
0063edc0  00 00 53 e3                                      cmp r3, #0
0063edc4  00 50 83 15                                      strne r5, [r3]
0063edc8  10 d0 8d e2                                      add sp, sp, #0x10
0063edcc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0063edd0, declared_size=164, range_size=164, mode=arm
; class-group: void glitch::ps::IParticleContext<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEE12setParameterIiEEvPKcT_
; demangled: void glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<int>(char const*, int)
; decoder-mode: arm
0063edd0  70 40 2d e9                                      push {r4, r5, r6, lr}
0063edd4  10 d0 4d e2                                      sub sp, sp, #0x10
0063edd8  00 60 a0 e1                                      mov r6, r0
0063eddc  02 50 a0 e1                                      mov r5, r2
0063ede0  99 f1 ff eb                                      bl #0x63b44c
0063ede4  34 c0 96 e5                                      ldr ip, [r6, #0x34]
0063ede8  30 10 86 e2                                      add r1, r6, #0x30
0063edec  00 40 a0 e1                                      mov r4, r0
0063edf0  00 00 5c e3                                      cmp ip, #0
0063edf4  01 c0 a0 01                                      moveq ip, r1
0063edf8  0a 00 00 0a                                      beq #0x63ee28
0063edfc  01 20 a0 e1                                      mov r2, r1
0063ee00  00 00 00 ea                                      b #0x63ee08
0063ee04  03 c0 a0 e1                                      mov ip, r3
0063ee08  10 30 9c e5                                      ldr r3, [ip, #0x10]
0063ee0c  03 00 54 e1                                      cmp r4, r3
0063ee10  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0063ee14  08 30 9c 95                                      ldrls r3, [ip, #8]
0063ee18  02 c0 a0 81                                      movhi ip, r2
0063ee1c  0c 20 a0 e1                                      mov r2, ip
0063ee20  00 00 53 e3                                      cmp r3, #0
0063ee24  f6 ff ff 1a                                      bne #0x63ee04
0063ee28  0c 00 51 e1                                      cmp r1, ip
0063ee2c  03 00 00 0a                                      beq #0x63ee40
0063ee30  10 20 9c e5                                      ldr r2, [ip, #0x10]
0063ee34  0c 30 a0 e1                                      mov r3, ip
0063ee38  02 00 54 e1                                      cmp r4, r2
0063ee3c  07 00 00 2a                                      bhs #0x63ee60
0063ee40  0d 30 a0 e1                                      mov r3, sp
0063ee44  00 e0 a0 e3                                      mov lr, #0
0063ee48  08 00 8d e2                                      add r0, sp, #8
0063ee4c  0c 20 8d e2                                      add r2, sp, #0xc
0063ee50  10 40 8d e8                                      stm sp, {r4, lr}
0063ee54  0c c0 8d e5                                      str ip, [sp, #0xc]
0063ee58  05 ef ff eb                                      bl #0x63aa74
0063ee5c  08 30 9d e5                                      ldr r3, [sp, #8]
0063ee60  14 30 93 e5                                      ldr r3, [r3, #0x14]
0063ee64  00 00 53 e3                                      cmp r3, #0
0063ee68  00 50 83 15                                      strne r5, [r3]
0063ee6c  10 d0 8d e2                                      add sp, sp, #0x10
0063ee70  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0063ee74, declared_size=192, range_size=192, mode=arm
; class-group: void glitch::ps::IParticleContext<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEE12setParameterINS_4core8vector3dIfEEEEvPKcT_
; demangled: void glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::core::vector3d<float> >(char const*, glitch::core::vector3d<float>)
; decoder-mode: arm
0063ee74  70 40 2d e9                                      push {r4, r5, r6, lr}
0063ee78  10 d0 4d e2                                      sub sp, sp, #0x10
0063ee7c  00 60 a0 e1                                      mov r6, r0
0063ee80  02 50 a0 e1                                      mov r5, r2
0063ee84  70 f1 ff eb                                      bl #0x63b44c
0063ee88  34 c0 96 e5                                      ldr ip, [r6, #0x34]
0063ee8c  30 10 86 e2                                      add r1, r6, #0x30
0063ee90  00 40 a0 e1                                      mov r4, r0
0063ee94  00 00 5c e3                                      cmp ip, #0
0063ee98  01 c0 a0 01                                      moveq ip, r1
0063ee9c  0a 00 00 0a                                      beq #0x63eecc
0063eea0  01 20 a0 e1                                      mov r2, r1
0063eea4  00 00 00 ea                                      b #0x63eeac
0063eea8  03 c0 a0 e1                                      mov ip, r3
0063eeac  10 30 9c e5                                      ldr r3, [ip, #0x10]
0063eeb0  03 00 54 e1                                      cmp r4, r3
0063eeb4  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0063eeb8  08 30 9c 95                                      ldrls r3, [ip, #8]
0063eebc  02 c0 a0 81                                      movhi ip, r2
0063eec0  0c 20 a0 e1                                      mov r2, ip
0063eec4  00 00 53 e3                                      cmp r3, #0
0063eec8  f6 ff ff 1a                                      bne #0x63eea8
0063eecc  0c 00 51 e1                                      cmp r1, ip
0063eed0  0e 00 00 0a                                      beq #0x63ef10
0063eed4  10 20 9c e5                                      ldr r2, [ip, #0x10]
0063eed8  0c 30 a0 e1                                      mov r3, ip
0063eedc  02 00 54 e1                                      cmp r4, r2
0063eee0  0a 00 00 3a                                      blo #0x63ef10
0063eee4  14 30 93 e5                                      ldr r3, [r3, #0x14]
0063eee8  00 00 53 e3                                      cmp r3, #0
0063eeec  05 00 00 0a                                      beq #0x63ef08
0063eef0  00 20 95 e5                                      ldr r2, [r5]
0063eef4  00 20 83 e5                                      str r2, [r3]
0063eef8  04 20 95 e5                                      ldr r2, [r5, #4]
0063eefc  04 20 83 e5                                      str r2, [r3, #4]
0063ef00  08 20 95 e5                                      ldr r2, [r5, #8]
0063ef04  08 20 83 e5                                      str r2, [r3, #8]
0063ef08  10 d0 8d e2                                      add sp, sp, #0x10
0063ef0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0063ef10  0d 30 a0 e1                                      mov r3, sp
0063ef14  00 e0 a0 e3                                      mov lr, #0
0063ef18  08 00 8d e2                                      add r0, sp, #8
0063ef1c  0c 20 8d e2                                      add r2, sp, #0xc
0063ef20  10 40 8d e8                                      stm sp, {r4, lr}
0063ef24  0c c0 8d e5                                      str ip, [sp, #0xc]
0063ef28  d1 ee ff eb                                      bl #0x63aa74
0063ef2c  08 30 9d e5                                      ldr r3, [sp, #8]
0063ef30  eb ff ff ea                                      b #0x63eee4

; FUNCTION 0x0063ef34, declared_size=164, range_size=164, mode=arm
; class-group: void glitch::ps::IParticleContext<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEE12setParameterIfEEvPKcT_
; demangled: void glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(char const*, float)
; decoder-mode: arm
0063ef34  70 40 2d e9                                      push {r4, r5, r6, lr}
0063ef38  10 d0 4d e2                                      sub sp, sp, #0x10
0063ef3c  00 60 a0 e1                                      mov r6, r0
0063ef40  02 50 a0 e1                                      mov r5, r2
0063ef44  40 f1 ff eb                                      bl #0x63b44c
0063ef48  34 c0 96 e5                                      ldr ip, [r6, #0x34]
0063ef4c  30 10 86 e2                                      add r1, r6, #0x30
0063ef50  00 40 a0 e1                                      mov r4, r0
0063ef54  00 00 5c e3                                      cmp ip, #0
0063ef58  01 c0 a0 01                                      moveq ip, r1
0063ef5c  0a 00 00 0a                                      beq #0x63ef8c
0063ef60  01 20 a0 e1                                      mov r2, r1
0063ef64  00 00 00 ea                                      b #0x63ef6c
0063ef68  03 c0 a0 e1                                      mov ip, r3
0063ef6c  10 30 9c e5                                      ldr r3, [ip, #0x10]
0063ef70  03 00 54 e1                                      cmp r4, r3
0063ef74  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0063ef78  08 30 9c 95                                      ldrls r3, [ip, #8]
0063ef7c  02 c0 a0 81                                      movhi ip, r2
0063ef80  0c 20 a0 e1                                      mov r2, ip
0063ef84  00 00 53 e3                                      cmp r3, #0
0063ef88  f6 ff ff 1a                                      bne #0x63ef68
0063ef8c  0c 00 51 e1                                      cmp r1, ip
0063ef90  03 00 00 0a                                      beq #0x63efa4
0063ef94  10 20 9c e5                                      ldr r2, [ip, #0x10]
0063ef98  0c 30 a0 e1                                      mov r3, ip
0063ef9c  02 00 54 e1                                      cmp r4, r2
0063efa0  07 00 00 2a                                      bhs #0x63efc4
0063efa4  0d 30 a0 e1                                      mov r3, sp
0063efa8  00 e0 a0 e3                                      mov lr, #0
0063efac  08 00 8d e2                                      add r0, sp, #8
0063efb0  0c 20 8d e2                                      add r2, sp, #0xc
0063efb4  10 40 8d e8                                      stm sp, {r4, lr}
0063efb8  0c c0 8d e5                                      str ip, [sp, #0xc]
0063efbc  ac ee ff eb                                      bl #0x63aa74
0063efc0  08 30 9d e5                                      ldr r3, [sp, #8]
0063efc4  14 30 93 e5                                      ldr r3, [r3, #0x14]
0063efc8  00 00 53 e3                                      cmp r3, #0
0063efcc  00 50 83 15                                      strne r5, [r3]
0063efd0  10 d0 8d e2                                      add sp, sp, #0x10
0063efd4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0063efd8, declared_size=164, range_size=164, mode=arm
; class-group: void glitch::ps::IParticleContext<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEE12setParameterIhEEvPKcT_
; demangled: void glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<unsigned char>(char const*, unsigned char)
; decoder-mode: arm
0063efd8  70 40 2d e9                                      push {r4, r5, r6, lr}
0063efdc  10 d0 4d e2                                      sub sp, sp, #0x10
0063efe0  00 60 a0 e1                                      mov r6, r0
0063efe4  02 50 a0 e1                                      mov r5, r2
0063efe8  17 f1 ff eb                                      bl #0x63b44c
0063efec  34 c0 96 e5                                      ldr ip, [r6, #0x34]
0063eff0  30 10 86 e2                                      add r1, r6, #0x30
0063eff4  00 40 a0 e1                                      mov r4, r0
0063eff8  00 00 5c e3                                      cmp ip, #0
0063effc  01 c0 a0 01                                      moveq ip, r1
0063f000  0a 00 00 0a                                      beq #0x63f030
0063f004  01 20 a0 e1                                      mov r2, r1
0063f008  00 00 00 ea                                      b #0x63f010
0063f00c  03 c0 a0 e1                                      mov ip, r3
0063f010  10 30 9c e5                                      ldr r3, [ip, #0x10]
0063f014  03 00 54 e1                                      cmp r4, r3
0063f018  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0063f01c  08 30 9c 95                                      ldrls r3, [ip, #8]
0063f020  02 c0 a0 81                                      movhi ip, r2
0063f024  0c 20 a0 e1                                      mov r2, ip
0063f028  00 00 53 e3                                      cmp r3, #0
0063f02c  f6 ff ff 1a                                      bne #0x63f00c
0063f030  0c 00 51 e1                                      cmp r1, ip
0063f034  03 00 00 0a                                      beq #0x63f048
0063f038  10 20 9c e5                                      ldr r2, [ip, #0x10]
0063f03c  0c 30 a0 e1                                      mov r3, ip
0063f040  02 00 54 e1                                      cmp r4, r2
0063f044  07 00 00 2a                                      bhs #0x63f068
0063f048  0d 30 a0 e1                                      mov r3, sp
0063f04c  00 e0 a0 e3                                      mov lr, #0
0063f050  08 00 8d e2                                      add r0, sp, #8
0063f054  0c 20 8d e2                                      add r2, sp, #0xc
0063f058  10 40 8d e8                                      stm sp, {r4, lr}
0063f05c  0c c0 8d e5                                      str ip, [sp, #0xc]
0063f060  83 ee ff eb                                      bl #0x63aa74
0063f064  08 30 9d e5                                      ldr r3, [sp, #8]
0063f068  14 30 93 e5                                      ldr r3, [r3, #0x14]
0063f06c  00 00 53 e3                                      cmp r3, #0
0063f070  00 50 c3 15                                      strbne r5, [r3]
0063f074  10 d0 8d e2                                      add sp, sp, #0x10
0063f078  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0063f124, declared_size=164, range_size=164, mode=arm
; class-group: void glitch::ps::IParticleContext<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEE12setParameterIPNS_5scene11CMeshBufferEEEvPKcT_.clone.7
; demangled: void glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::scene::CMeshBuffer*>(char const*, glitch::scene::CMeshBuffer*) [clone .clone.7]
; decoder-mode: arm
0063f124  70 40 2d e9                                      push {r4, r5, r6, lr}
0063f128  01 50 a0 e1                                      mov r5, r1
0063f12c  90 10 9f e5                                      ldr r1, [pc, #0x90]
0063f130  10 d0 4d e2                                      sub sp, sp, #0x10
0063f134  00 60 a0 e1                                      mov r6, r0
0063f138  01 10 8f e0                                      add r1, pc, r1
0063f13c  c2 f0 ff eb                                      bl #0x63b44c
0063f140  34 30 96 e5                                      ldr r3, [r6, #0x34]
0063f144  30 10 86 e2                                      add r1, r6, #0x30
0063f148  00 40 a0 e1                                      mov r4, r0
0063f14c  00 00 53 e3                                      cmp r3, #0
0063f150  01 c0 a0 01                                      moveq ip, r1
0063f154  07 00 00 0a                                      beq #0x63f178
0063f158  01 c0 a0 e1                                      mov ip, r1
0063f15c  10 20 93 e5                                      ldr r2, [r3, #0x10]
0063f160  02 00 54 e1                                      cmp r4, r2
0063f164  03 c0 a0 91                                      movls ip, r3
0063f168  0c 30 93 85                                      ldrhi r3, [r3, #0xc]
0063f16c  08 30 93 95                                      ldrls r3, [r3, #8]
0063f170  00 00 53 e3                                      cmp r3, #0
0063f174  f8 ff ff 1a                                      bne #0x63f15c
0063f178  0c 00 51 e1                                      cmp r1, ip
0063f17c  03 00 00 0a                                      beq #0x63f190
0063f180  10 20 9c e5                                      ldr r2, [ip, #0x10]
0063f184  0c 30 a0 e1                                      mov r3, ip
0063f188  02 00 54 e1                                      cmp r4, r2
0063f18c  07 00 00 2a                                      bhs #0x63f1b0
0063f190  0d 30 a0 e1                                      mov r3, sp
0063f194  00 e0 a0 e3                                      mov lr, #0
0063f198  08 00 8d e2                                      add r0, sp, #8
0063f19c  0c 20 8d e2                                      add r2, sp, #0xc
0063f1a0  10 40 8d e8                                      stm sp, {r4, lr}
0063f1a4  0c c0 8d e5                                      str ip, [sp, #0xc]
0063f1a8  31 ee ff eb                                      bl #0x63aa74
0063f1ac  08 30 9d e5                                      ldr r3, [sp, #8]
0063f1b0  14 30 93 e5                                      ldr r3, [r3, #0x14]
0063f1b4  00 00 53 e3                                      cmp r3, #0
0063f1b8  00 50 83 15                                      strne r5, [r3]
0063f1bc  10 d0 8d e2                                      add sp, sp, #0x10
0063f1c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0063f1c4  b0 5f 2a 00                                      .byte 0xb0, 0x5f, 0x2a, 0x00
