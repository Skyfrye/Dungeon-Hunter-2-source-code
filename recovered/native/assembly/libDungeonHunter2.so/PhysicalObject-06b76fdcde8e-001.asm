; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003883c4, declared_size=4, range_size=4, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject17onCollisionBeginsEP18PhysicalBaseObjectRK7Point2DIfEb
; demangled: PhysicalObject::onCollisionBegins(PhysicalBaseObject*, Point2D<float> const&, bool)
; decoder-mode: arm
003883c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003883c8, declared_size=4, range_size=4, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject19onCollisionPersistsEP18PhysicalBaseObjectRK7Point2DIfEb
; demangled: PhysicalObject::onCollisionPersists(PhysicalBaseObject*, Point2D<float> const&, bool)
; decoder-mode: arm
003883c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003883cc, declared_size=4, range_size=4, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject15onCollisionEndsEP18PhysicalBaseObjectRK7Point2DIfEb
; demangled: PhysicalObject::onCollisionEnds(PhysicalBaseObject*, Point2D<float> const&, bool)
; decoder-mode: arm
003883cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003883d0, declared_size=4, range_size=4, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject18onCollisionResultsEP18PhysicalBaseObjectb
; demangled: PhysicalObject::onCollisionResults(PhysicalBaseObject*, bool)
; decoder-mode: arm
003883d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0046e6bc, declared_size=148, range_size=148, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject15onCollisionTestEP18PhysicalBaseObjectsttstt
; demangled: PhysicalObject::onCollisionTest(PhysicalBaseObject*, short, unsigned short, unsigned short, short, unsigned short, unsigned short)
; decoder-mode: arm
0046e6bc  f0 00 2d e9                                      push {r4, r5, r6, r7}
0046e6c0  08 c0 90 e5                                      ldr ip, [r0, #8]
0046e6c4  08 10 91 e5                                      ldr r1, [r1, #8]
0046e6c8  b0 51 dd e1                                      ldrh r5, [sp, #0x10]
0046e6cc  00 00 5c e3                                      cmp ip, #0
0046e6d0  f4 41 dd e1                                      ldrsh r4, [sp, #0x14]
0046e6d4  b8 61 dd e1                                      ldrh r6, [sp, #0x18]
0046e6d8  bc 71 dd e1                                      ldrh r7, [sp, #0x1c]
0046e6dc  05 00 00 0a                                      beq #0x46e6f8
0046e6e0  80 00 dc e5                                      ldrb r0, [ip, #0x80]
0046e6e4  00 00 50 e3                                      cmp r0, #0
0046e6e8  02 00 00 1a                                      bne #0x46e6f8
0046e6ec  00 00 a0 e3                                      mov r0, #0
0046e6f0  f0 00 bd e8                                      pop {r4, r5, r6, r7}
0046e6f4  1e ff 2f e1                                      bx lr
0046e6f8  00 00 51 e3                                      cmp r1, #0
0046e6fc  02 00 00 0a                                      beq #0x46e70c
0046e700  80 10 d1 e5                                      ldrb r1, [r1, #0x80]
0046e704  00 00 51 e3                                      cmp r1, #0
0046e708  f7 ff ff 0a                                      beq #0x46e6ec
0046e70c  04 00 52 e1                                      cmp r2, r4
0046e710  00 10 a0 13                                      movne r1, #0
0046e714  01 10 a0 03                                      moveq r1, #1
0046e718  00 00 52 e3                                      cmp r2, #0
0046e71c  00 10 a0 03                                      moveq r1, #0
0046e720  00 00 51 e3                                      cmp r1, #0
0046e724  05 00 00 1a                                      bne #0x46e740
0046e728  05 00 16 e1                                      tst r6, r5
0046e72c  ee ff ff 0a                                      beq #0x46e6ec
0046e730  03 00 17 e1                                      tst r7, r3
0046e734  00 00 a0 03                                      moveq r0, #0
0046e738  01 00 a0 13                                      movne r0, #1
0046e73c  eb ff ff ea                                      b #0x46e6f0
0046e740  00 00 52 e3                                      cmp r2, #0
0046e744  00 00 a0 d3                                      movle r0, #0
0046e748  01 00 a0 c3                                      movgt r0, #1
0046e74c  e7 ff ff ea                                      b #0x46e6f0

; FUNCTION 0x0046e750, declared_size=24, range_size=24, mode=arm
; class-group: PhysicalObject
; alias: _ZNK14PhysicalObject9getRadiusEv
; demangled: PhysicalObject::getRadius() const
; decoder-mode: arm
0046e750  10 40 2d e9                                      push {r4, lr}
0046e754  42 14 a0 e3                                      mov r1, #0x42000000
0046e758  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0046e75c  32 17 81 e2                                      add r1, r1, #0xc80000
0046e760  81 81 fa eb                                      bl #0x30ed6c
0046e764  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046e768, declared_size=176, range_size=176, mode=arm
; class-group: PhysicalObject
; alias: _ZNK14PhysicalObject10canCollideEPS_
; demangled: PhysicalObject::canCollide(PhysicalObject*) const
; decoder-mode: arm
0046e768  70 40 2d e9                                      push {r4, r5, r6, lr}
0046e76c  00 00 51 e3                                      cmp r1, #0
0046e770  10 d0 4d e2                                      sub sp, sp, #0x10
0046e774  00 c0 a0 e1                                      mov ip, r0
0046e778  1f 00 00 0a                                      beq #0x46e7fc
0046e77c  26 30 d0 e5                                      ldrb r3, [r0, #0x26]
0046e780  00 00 53 e3                                      cmp r3, #0
0046e784  1c 00 00 1a                                      bne #0x46e7fc
0046e788  26 30 d1 e5                                      ldrb r3, [r1, #0x26]
0046e78c  00 00 53 e3                                      cmp r3, #0
0046e790  19 00 00 1a                                      bne #0x46e7fc
0046e794  18 30 90 e5                                      ldr r3, [r0, #0x18]
0046e798  00 00 53 e3                                      cmp r3, #0
0046e79c  13 00 00 0a                                      beq #0x46e7f0
0046e7a0  18 00 91 e5                                      ldr r0, [r1, #0x18]
0046e7a4  b6 22 d3 e1                                      ldrh r2, [r3, #0x26]
0046e7a8  b4 42 d3 e1                                      ldrh r4, [r3, #0x24]
0046e7ac  00 00 50 e3                                      cmp r0, #0
0046e7b0  b2 32 d3 e1                                      ldrh r3, [r3, #0x22]
0046e7b4  13 00 00 0a                                      beq #0x46e808
0046e7b8  b6 62 d0 e1                                      ldrh r6, [r0, #0x26]
0046e7bc  b4 e2 d0 e1                                      ldrh lr, [r0, #0x24]
0046e7c0  b2 52 d0 e1                                      ldrh r5, [r0, #0x22]
0046e7c4  76 00 bf e6                                      sxth r0, r6
0046e7c8  04 00 8d e5                                      str r0, [sp, #4]
0046e7cc  00 40 8d e5                                      str r4, [sp]
0046e7d0  08 50 8d e5                                      str r5, [sp, #8]
0046e7d4  0c e0 8d e5                                      str lr, [sp, #0xc]
0046e7d8  0c 00 a0 e1                                      mov r0, ip
0046e7dc  72 20 bf e6                                      sxth r2, r2
0046e7e0  00 c0 9c e5                                      ldr ip, [ip]
0046e7e4  0f e0 a0 e1                                      mov lr, pc
0046e7e8  08 f0 9c e5                                      ldr pc, [ip, #8]
0046e7ec  03 00 00 ea                                      b #0x46e800
0046e7f0  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
0046e7f4  00 00 53 e3                                      cmp r3, #0
0046e7f8  e8 ff ff 1a                                      bne #0x46e7a0
0046e7fc  00 00 a0 e3                                      mov r0, #0
0046e800  10 d0 8d e2                                      add sp, sp, #0x10
0046e804  70 80 bd e8                                      pop {r4, r5, r6, pc}
0046e808  1c 00 91 e5                                      ldr r0, [r1, #0x1c]
0046e80c  00 00 50 e3                                      cmp r0, #0
0046e810  e8 ff ff 1a                                      bne #0x46e7b8
0046e814  f8 ff ff ea                                      b #0x46e7fc

; FUNCTION 0x0046e818, declared_size=64, range_size=64, mode=arm
; class-group: PhysicalObject
; alias: _ZNK14PhysicalObject11getPositionEv
; demangled: PhysicalObject::getPosition() const
; decoder-mode: arm
0046e818  70 40 2d e9                                      push {r4, r5, r6, lr}
0046e81c  14 50 91 e5                                      ldr r5, [r1, #0x14]
0046e820  42 14 a0 e3                                      mov r1, #0x42000000
0046e824  00 40 a0 e1                                      mov r4, r0
0046e828  32 17 81 e2                                      add r1, r1, #0xc80000
0046e82c  08 00 95 e5                                      ldr r0, [r5, #8]
0046e830  4d 81 fa eb                                      bl #0x30ed6c
0046e834  42 14 a0 e3                                      mov r1, #0x42000000
0046e838  00 60 a0 e1                                      mov r6, r0
0046e83c  32 17 81 e2                                      add r1, r1, #0xc80000
0046e840  04 00 95 e5                                      ldr r0, [r5, #4]
0046e844  48 81 fa eb                                      bl #0x30ed6c
0046e848  04 60 84 e5                                      str r6, [r4, #4]
0046e84c  00 00 84 e5                                      str r0, [r4]
0046e850  04 00 a0 e1                                      mov r0, r4
0046e854  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0046e858, declared_size=12, range_size=12, mode=arm
; class-group: PhysicalObject
; alias: _ZNK14PhysicalObject8getAngleEv
; demangled: PhysicalObject::getAngle() const
; decoder-mode: arm
0046e858  14 30 90 e5                                      ldr r3, [r0, #0x14]
0046e85c  38 00 93 e5                                      ldr r0, [r3, #0x38]
0046e860  1e ff 2f e1                                      bx lr

; FUNCTION 0x0046e864, declared_size=180, range_size=180, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject17addLinearVelocityEffff
; demangled: PhysicalObject::addLinearVelocity(float, float, float, float)
; decoder-mode: arm
0046e864  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0046e868  01 40 a0 e1                                      mov r4, r1
0046e86c  00 50 a0 e1                                      mov r5, r0
0046e870  00 10 a0 e3                                      mov r1, #0
0046e874  04 00 a0 e1                                      mov r0, r4
0046e878  02 60 a0 e1                                      mov r6, r2
0046e87c  03 a0 a0 e1                                      mov sl, r3
0046e880  c1 7d fa eb                                      bl #0x30df8c
0046e884  00 00 50 e3                                      cmp r0, #0
0046e888  20 80 9d e5                                      ldr r8, [sp, #0x20]
0046e88c  04 00 00 0a                                      beq #0x46e8a4
0046e890  06 00 a0 e1                                      mov r0, r6
0046e894  00 10 a0 e3                                      mov r1, #0
0046e898  bb 7d fa eb                                      bl #0x30df8c
0046e89c  00 00 50 e3                                      cmp r0, #0
0046e8a0  05 00 00 1a                                      bne #0x46e8bc
0046e8a4  14 30 95 e5                                      ldr r3, [r5, #0x14]
0046e8a8  00 10 a0 e3                                      mov r1, #0
0046e8ac  b0 20 d3 e1                                      ldrh r2, [r3]
0046e8b0  8c 10 83 e5                                      str r1, [r3, #0x8c]
0046e8b4  08 20 c2 e3                                      bic r2, r2, #8
0046e8b8  b0 20 c3 e1                                      strh r2, [r3]
0046e8bc  14 50 95 e5                                      ldr r5, [r5, #0x14]
0046e8c0  04 00 a0 e1                                      mov r0, r4
0046e8c4  40 10 95 e5                                      ldr r1, [r5, #0x40]
0046e8c8  b5 80 fa eb                                      bl #0x30eba4
0046e8cc  44 40 95 e5                                      ldr r4, [r5, #0x44]
0046e8d0  00 70 a0 e1                                      mov r7, r0
0046e8d4  06 00 a0 e1                                      mov r0, r6
0046e8d8  04 10 a0 e1                                      mov r1, r4
0046e8dc  b0 80 fa eb                                      bl #0x30eba4
0046e8e0  0a 10 a0 e1                                      mov r1, sl
0046e8e4  00 40 a0 e1                                      mov r4, r0
0046e8e8  07 00 a0 e1                                      mov r0, r7
0046e8ec  81 7e fa eb                                      bl #0x30e2f8
0046e8f0  08 10 a0 e1                                      mov r1, r8
0046e8f4  00 00 50 e3                                      cmp r0, #0
0046e8f8  04 00 a0 e1                                      mov r0, r4
0046e8fc  0a 70 a0 11                                      movne r7, sl
0046e900  7c 7e fa eb                                      bl #0x30e2f8
0046e904  00 00 50 e3                                      cmp r0, #0
0046e908  08 40 a0 11                                      movne r4, r8
0046e90c  40 70 85 e5                                      str r7, [r5, #0x40]
0046e910  44 40 85 e5                                      str r4, [r5, #0x44]
0046e914  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0046e918, declared_size=96, range_size=96, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject17setLinearVelocityEff
; demangled: PhysicalObject::setLinearVelocity(float, float)
; decoder-mode: arm
0046e918  70 40 2d e9                                      push {r4, r5, r6, lr}
0046e91c  01 40 a0 e1                                      mov r4, r1
0046e920  00 50 a0 e1                                      mov r5, r0
0046e924  00 10 a0 e3                                      mov r1, #0
0046e928  04 00 a0 e1                                      mov r0, r4
0046e92c  02 60 a0 e1                                      mov r6, r2
0046e930  95 7d fa eb                                      bl #0x30df8c
0046e934  00 00 50 e3                                      cmp r0, #0
0046e938  04 00 00 0a                                      beq #0x46e950
0046e93c  06 00 a0 e1                                      mov r0, r6
0046e940  00 10 a0 e3                                      mov r1, #0
0046e944  90 7d fa eb                                      bl #0x30df8c
0046e948  00 00 50 e3                                      cmp r0, #0
0046e94c  05 00 00 1a                                      bne #0x46e968
0046e950  14 30 95 e5                                      ldr r3, [r5, #0x14]
0046e954  00 10 a0 e3                                      mov r1, #0
0046e958  b0 20 d3 e1                                      ldrh r2, [r3]
0046e95c  8c 10 83 e5                                      str r1, [r3, #0x8c]
0046e960  08 20 c2 e3                                      bic r2, r2, #8
0046e964  b0 20 c3 e1                                      strh r2, [r3]
0046e968  14 30 95 e5                                      ldr r3, [r5, #0x14]
0046e96c  40 40 83 e5                                      str r4, [r3, #0x40]
0046e970  44 60 83 e5                                      str r6, [r3, #0x44]
0046e974  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0046e978, declared_size=36, range_size=36, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject18setAngularVelocityEf
; demangled: PhysicalObject::setAngularVelocity(float)
; decoder-mode: arm
0046e978  14 30 90 e5                                      ldr r3, [r0, #0x14]
0046e97c  00 c0 a0 e3                                      mov ip, #0
0046e980  b0 20 d3 e1                                      ldrh r2, [r3]
0046e984  8c c0 83 e5                                      str ip, [r3, #0x8c]
0046e988  08 20 c2 e3                                      bic r2, r2, #8
0046e98c  b0 20 c3 e1                                      strh r2, [r3]
0046e990  14 30 90 e5                                      ldr r3, [r0, #0x14]
0046e994  48 10 83 e5                                      str r1, [r3, #0x48]
0046e998  1e ff 2f e1                                      bx lr

; FUNCTION 0x0046e99c, declared_size=4, range_size=4, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject6UpdateEv
; demangled: PhysicalObject::Update()
; decoder-mode: arm
0046e99c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0046ea70, declared_size=16, range_size=16, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject8setAngleEf
; demangled: PhysicalObject::setAngle(float)
; decoder-mode: arm
0046ea70  14 00 90 e5                                      ldr r0, [r0, #0x14]
0046ea74  01 20 a0 e1                                      mov r2, r1
0046ea78  04 10 80 e2                                      add r1, r0, #4
0046ea7c  f2 ca 0d ea                                      b #0x7e164c

; FUNCTION 0x0046ea80, declared_size=84, range_size=84, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject11setPositionEff
; demangled: PhysicalObject::setPosition(float, float)
; decoder-mode: arm
0046ea80  30 40 2d e9                                      push {r4, r5, lr}
0046ea84  00 40 a0 e1                                      mov r4, r0
0046ea88  01 00 a0 e1                                      mov r0, r1
0046ea8c  0a 17 0d e3                                      movw r1, #0xd70a
0046ea90  0c d0 4d e2                                      sub sp, sp, #0xc
0046ea94  23 1c 43 e3                                      movt r1, #0x3c23
0046ea98  02 50 a0 e1                                      mov r5, r2
0046ea9c  b2 80 fa eb                                      bl #0x30ed6c
0046eaa0  0a 17 0d e3                                      movw r1, #0xd70a
0046eaa4  00 00 8d e5                                      str r0, [sp]
0046eaa8  23 1c 43 e3                                      movt r1, #0x3c23
0046eaac  05 00 a0 e1                                      mov r0, r5
0046eab0  ad 80 fa eb                                      bl #0x30ed6c
0046eab4  14 30 94 e5                                      ldr r3, [r4, #0x14]
0046eab8  04 00 8d e5                                      str r0, [sp, #4]
0046eabc  0d 10 a0 e1                                      mov r1, sp
0046eac0  03 00 a0 e1                                      mov r0, r3
0046eac4  38 20 93 e5                                      ldr r2, [r3, #0x38]
0046eac8  df ca 0d eb                                      bl #0x7e164c
0046eacc  0c d0 8d e2                                      add sp, sp, #0xc
0046ead0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0046ead4, declared_size=12, range_size=12, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject11setPositionERK7Point2DIfE
; demangled: PhysicalObject::setPosition(Point2D<float> const&)
; decoder-mode: arm
0046ead4  04 20 91 e5                                      ldr r2, [r1, #4]
0046ead8  00 10 91 e5                                      ldr r1, [r1]
0046eadc  e7 ff ff ea                                      b #0x46ea80

; FUNCTION 0x0046eae0, declared_size=64, range_size=64, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject5unpinEv
; demangled: PhysicalObject::unpin()
; decoder-mode: arm
0046eae0  10 40 2d e9                                      push {r4, lr}
0046eae4  27 30 d0 e5                                      ldrb r3, [r0, #0x27]
0046eae8  00 40 a0 e1                                      mov r4, r0
0046eaec  00 00 53 e3                                      cmp r3, #0
0046eaf0  09 00 00 0a                                      beq #0x46eb1c
0046eaf4  00 30 a0 e3                                      mov r3, #0
0046eaf8  27 30 c0 e5                                      strb r3, [r0, #0x27]
0046eafc  14 00 90 e5                                      ldr r0, [r0, #0x14]
0046eb00  44 cb 0d eb                                      bl #0x7e1818
0046eb04  14 30 94 e5                                      ldr r3, [r4, #0x14]
0046eb08  00 10 a0 e3                                      mov r1, #0
0046eb0c  b0 20 d3 e1                                      ldrh r2, [r3]
0046eb10  8c 10 83 e5                                      str r1, [r3, #0x8c]
0046eb14  08 20 c2 e3                                      bic r2, r2, #8
0046eb18  b0 20 c3 e1                                      strh r2, [r3]
0046eb1c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046eb20, declared_size=80, range_size=80, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject3pinEv
; demangled: PhysicalObject::pin()
; decoder-mode: arm
0046eb20  04 e0 2d e5                                      str lr, [sp, #-4]!
0046eb24  27 30 d0 e5                                      ldrb r3, [r0, #0x27]
0046eb28  14 d0 4d e2                                      sub sp, sp, #0x14
0046eb2c  00 00 53 e3                                      cmp r3, #0
0046eb30  0c 00 00 1a                                      bne #0x46eb68
0046eb34  14 20 90 e5                                      ldr r2, [r0, #0x14]
0046eb38  01 30 a0 e3                                      mov r3, #1
0046eb3c  27 30 c0 e5                                      strb r3, [r0, #0x27]
0046eb40  1c 10 92 e5                                      ldr r1, [r2, #0x1c]
0046eb44  02 00 a0 e1                                      mov r0, r2
0046eb48  00 30 a0 e3                                      mov r3, #0
0046eb4c  04 10 8d e5                                      str r1, [sp, #4]
0046eb50  20 20 92 e5                                      ldr r2, [r2, #0x20]
0046eb54  0d 10 a0 e1                                      mov r1, sp
0046eb58  0c 30 8d e5                                      str r3, [sp, #0xc]
0046eb5c  08 20 8d e5                                      str r2, [sp, #8]
0046eb60  00 30 8d e5                                      str r3, [sp]
0046eb64  ef cb 0d eb                                      bl #0x7e1b28
0046eb68  14 d0 8d e2                                      add sp, sp, #0x14
0046eb6c  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0046eb70, declared_size=116, range_size=116, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject13disableFilterEv
; demangled: PhysicalObject::disableFilter()
; decoder-mode: arm
0046eb70  10 40 2d e9                                      push {r4, lr}
0046eb74  26 30 d0 e5                                      ldrb r3, [r0, #0x26]
0046eb78  00 40 a0 e1                                      mov r4, r0
0046eb7c  00 00 53 e3                                      cmp r3, #0
0046eb80  14 00 00 1a                                      bne #0x46ebd8
0046eb84  18 20 90 e5                                      ldr r2, [r0, #0x18]
0046eb88  00 00 52 e3                                      cmp r2, #0
0046eb8c  06 00 00 0a                                      beq #0x46ebac
0046eb90  b6 32 c2 e1                                      strh r3, [r2, #0x26]
0046eb94  b4 32 c2 e1                                      strh r3, [r2, #0x24]
0046eb98  b2 32 c2 e1                                      strh r3, [r2, #0x22]
0046eb9c  04 30 90 e5                                      ldr r3, [r0, #4]
0046eba0  18 10 90 e5                                      ldr r1, [r0, #0x18]
0046eba4  10 00 93 e5                                      ldr r0, [r3, #0x10]
0046eba8  d3 e3 0d eb                                      bl #0x7e7afc
0046ebac  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0046ebb0  00 00 53 e3                                      cmp r3, #0
0046ebb4  07 00 00 0a                                      beq #0x46ebd8
0046ebb8  00 20 a0 e3                                      mov r2, #0
0046ebbc  b6 22 c3 e1                                      strh r2, [r3, #0x26]
0046ebc0  b4 22 c3 e1                                      strh r2, [r3, #0x24]
0046ebc4  b2 22 c3 e1                                      strh r2, [r3, #0x22]
0046ebc8  04 30 94 e5                                      ldr r3, [r4, #4]
0046ebcc  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0046ebd0  10 00 93 e5                                      ldr r0, [r3, #0x10]
0046ebd4  c8 e3 0d eb                                      bl #0x7e7afc
0046ebd8  01 30 a0 e3                                      mov r3, #1
0046ebdc  26 30 c4 e5                                      strb r3, [r4, #0x26]
0046ebe0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046ebe4, declared_size=136, range_size=136, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject12enableFilterEv
; demangled: PhysicalObject::enableFilter()
; decoder-mode: arm
0046ebe4  10 40 2d e9                                      push {r4, lr}
0046ebe8  26 30 d0 e5                                      ldrb r3, [r0, #0x26]
0046ebec  00 40 a0 e1                                      mov r4, r0
0046ebf0  00 00 53 e3                                      cmp r3, #0
0046ebf4  19 00 00 0a                                      beq #0x46ec60
0046ebf8  18 30 90 e5                                      ldr r3, [r0, #0x18]
0046ebfc  00 00 53 e3                                      cmp r3, #0
0046ec00  09 00 00 0a                                      beq #0x46ec2c
0046ec04  b0 22 d0 e1                                      ldrh r2, [r0, #0x20]
0046ec08  b2 22 c3 e1                                      strh r2, [r3, #0x22]
0046ec0c  b2 22 d0 e1                                      ldrh r2, [r0, #0x22]
0046ec10  b4 22 c3 e1                                      strh r2, [r3, #0x24]
0046ec14  b4 22 d0 e1                                      ldrh r2, [r0, #0x24]
0046ec18  b6 22 c3 e1                                      strh r2, [r3, #0x26]
0046ec1c  04 30 90 e5                                      ldr r3, [r0, #4]
0046ec20  18 10 90 e5                                      ldr r1, [r0, #0x18]
0046ec24  10 00 93 e5                                      ldr r0, [r3, #0x10]
0046ec28  b3 e3 0d eb                                      bl #0x7e7afc
0046ec2c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0046ec30  00 00 53 e3                                      cmp r3, #0
0046ec34  09 00 00 0a                                      beq #0x46ec60
0046ec38  b0 22 d4 e1                                      ldrh r2, [r4, #0x20]
0046ec3c  b2 22 c3 e1                                      strh r2, [r3, #0x22]
0046ec40  b2 22 d4 e1                                      ldrh r2, [r4, #0x22]
0046ec44  b4 22 c3 e1                                      strh r2, [r3, #0x24]
0046ec48  b4 22 d4 e1                                      ldrh r2, [r4, #0x24]
0046ec4c  b6 22 c3 e1                                      strh r2, [r3, #0x26]
0046ec50  04 30 94 e5                                      ldr r3, [r4, #4]
0046ec54  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0046ec58  10 00 93 e5                                      ldr r0, [r3, #0x10]
0046ec5c  a6 e3 0d eb                                      bl #0x7e7afc
0046ec60  00 30 a0 e3                                      mov r3, #0
0046ec64  26 30 c4 e5                                      strb r3, [r4, #0x26]
0046ec68  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046ec6c, declared_size=124, range_size=124, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject11resetFilterEv
; demangled: PhysicalObject::resetFilter()
; decoder-mode: arm
0046ec6c  10 40 2d e9                                      push {r4, lr}
0046ec70  18 30 90 e5                                      ldr r3, [r0, #0x18]
0046ec74  00 40 a0 e1                                      mov r4, r0
0046ec78  00 00 53 e3                                      cmp r3, #0
0046ec7c  09 00 00 0a                                      beq #0x46eca8
0046ec80  b0 22 d0 e1                                      ldrh r2, [r0, #0x20]
0046ec84  b2 22 c3 e1                                      strh r2, [r3, #0x22]
0046ec88  b2 22 d0 e1                                      ldrh r2, [r0, #0x22]
0046ec8c  b4 22 c3 e1                                      strh r2, [r3, #0x24]
0046ec90  b4 22 d0 e1                                      ldrh r2, [r0, #0x24]
0046ec94  b6 22 c3 e1                                      strh r2, [r3, #0x26]
0046ec98  04 30 90 e5                                      ldr r3, [r0, #4]
0046ec9c  18 10 90 e5                                      ldr r1, [r0, #0x18]
0046eca0  10 00 93 e5                                      ldr r0, [r3, #0x10]
0046eca4  94 e3 0d eb                                      bl #0x7e7afc
0046eca8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0046ecac  00 00 53 e3                                      cmp r3, #0
0046ecb0  09 00 00 0a                                      beq #0x46ecdc
0046ecb4  b0 22 d4 e1                                      ldrh r2, [r4, #0x20]
0046ecb8  b2 22 c3 e1                                      strh r2, [r3, #0x22]
0046ecbc  b2 22 d4 e1                                      ldrh r2, [r4, #0x22]
0046ecc0  b4 22 c3 e1                                      strh r2, [r3, #0x24]
0046ecc4  b4 22 d4 e1                                      ldrh r2, [r4, #0x24]
0046ecc8  b6 22 c3 e1                                      strh r2, [r3, #0x26]
0046eccc  04 30 94 e5                                      ldr r3, [r4, #4]
0046ecd0  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0046ecd4  10 00 93 e5                                      ldr r0, [r3, #0x10]
0046ecd8  87 e3 0d eb                                      bl #0x7e7afc
0046ecdc  00 30 a0 e3                                      mov r3, #0
0046ece0  26 30 c4 e5                                      strb r3, [r4, #0x26]
0046ece4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046ece8, declared_size=124, range_size=124, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject9setFilterEsttb
; demangled: PhysicalObject::setFilter(short, unsigned short, unsigned short, bool)
; decoder-mode: arm
0046ece8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0046ecec  00 40 a0 e1                                      mov r4, r0
0046ecf0  18 00 90 e5                                      ldr r0, [r0, #0x18]
0046ecf4  01 50 a0 e1                                      mov r5, r1
0046ecf8  02 60 a0 e1                                      mov r6, r2
0046ecfc  00 00 50 e3                                      cmp r0, #0
0046ed00  03 70 a0 e1                                      mov r7, r3
0046ed04  18 80 dd e5                                      ldrb r8, [sp, #0x18]
0046ed08  06 00 00 0a                                      beq #0x46ed28
0046ed0c  b6 12 c0 e1                                      strh r1, [r0, #0x26]
0046ed10  b4 32 c0 e1                                      strh r3, [r0, #0x24]
0046ed14  b2 22 c0 e1                                      strh r2, [r0, #0x22]
0046ed18  04 30 94 e5                                      ldr r3, [r4, #4]
0046ed1c  18 10 94 e5                                      ldr r1, [r4, #0x18]
0046ed20  10 00 93 e5                                      ldr r0, [r3, #0x10]
0046ed24  74 e3 0d eb                                      bl #0x7e7afc
0046ed28  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0046ed2c  00 00 53 e3                                      cmp r3, #0
0046ed30  08 00 00 0a                                      beq #0x46ed58
0046ed34  00 00 58 e3                                      cmp r8, #0
0046ed38  06 00 00 0a                                      beq #0x46ed58
0046ed3c  b6 52 c3 e1                                      strh r5, [r3, #0x26]
0046ed40  b4 72 c3 e1                                      strh r7, [r3, #0x24]
0046ed44  b2 62 c3 e1                                      strh r6, [r3, #0x22]
0046ed48  04 30 94 e5                                      ldr r3, [r4, #4]
0046ed4c  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0046ed50  10 00 93 e5                                      ldr r0, [r3, #0x10]
0046ed54  68 e3 0d eb                                      bl #0x7e7afc
0046ed58  00 30 a0 e3                                      mov r3, #0
0046ed5c  26 30 c4 e5                                      strb r3, [r4, #0x26]
0046ed60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0046ed64, declared_size=84, range_size=84, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject9getLookAtER7Point2DIfE
; demangled: PhysicalObject::getLookAt(Point2D<float>&)
; decoder-mode: arm
0046ed64  10 40 2d e9                                      push {r4, lr}
0046ed68  08 00 90 e5                                      ldr r0, [r0, #8]
0046ed6c  10 d0 4d e2                                      sub sp, sp, #0x10
0046ed70  01 40 a0 e1                                      mov r4, r1
0046ed74  00 00 50 e3                                      cmp r0, #0
0046ed78  00 30 a0 03                                      moveq r3, #0
0046ed7c  04 30 81 05                                      streq r3, [r1, #4]
0046ed80  00 30 81 05                                      streq r3, [r1]
0046ed84  09 00 00 0a                                      beq #0x46edb0
0046ed88  00 30 a0 e3                                      mov r3, #0
0046ed8c  04 10 8d e2                                      add r1, sp, #4
0046ed90  0c 30 8d e5                                      str r3, [sp, #0xc]
0046ed94  04 30 8d e5                                      str r3, [sp, #4]
0046ed98  08 30 8d e5                                      str r3, [sp, #8]
0046ed9c  50 93 fc eb                                      bl #0x393ae4
0046eda0  04 30 9d e5                                      ldr r3, [sp, #4]
0046eda4  08 20 9d e5                                      ldr r2, [sp, #8]
0046eda8  00 30 84 e5                                      str r3, [r4]
0046edac  04 20 84 e5                                      str r2, [r4, #4]
0046edb0  10 d0 8d e2                                      add sp, sp, #0x10
0046edb4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046edb8, declared_size=56, range_size=56, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject9_addShapeEP10b2ShapeDefb
; demangled: PhysicalObject::_addShape(b2ShapeDef*, bool)
; decoder-mode: arm
0046edb8  70 40 2d e9                                      push {r4, r5, r6, lr}
0046edbc  00 40 a0 e1                                      mov r4, r0
0046edc0  14 00 90 e5                                      ldr r0, [r0, #0x14]
0046edc4  02 50 a0 e1                                      mov r5, r2
0046edc8  fe cb 0d eb                                      bl #0x7e1dc8
0046edcc  00 60 50 e2                                      subs r6, r0, #0
0046edd0  04 00 00 0a                                      beq #0x46ede8
0046edd4  00 00 55 e3                                      cmp r5, #0
0046edd8  2c 40 86 e5                                      str r4, [r6, #0x2c]
0046eddc  01 00 00 0a                                      beq #0x46ede8
0046ede0  14 00 94 e5                                      ldr r0, [r4, #0x14]
0046ede4  8b ca 0d eb                                      bl #0x7e1818
0046ede8  06 00 a0 e1                                      mov r0, r6
0046edec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0046edf0, declared_size=204, range_size=204, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObject5_initEP10b2ShapeDefffbb
; demangled: PhysicalObject::_init(b2ShapeDef*, float, float, bool, bool)
; decoder-mode: arm
0046edf0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0046edf4  34 d0 4d e2                                      sub sp, sp, #0x34
0046edf8  4c e0 dd e5                                      ldrb lr, [sp, #0x4c]
0046edfc  00 40 a0 e3                                      mov r4, #0
0046ee00  01 60 a0 e1                                      mov r6, r1
0046ee04  00 50 a0 e1                                      mov r5, r0
0046ee08  01 c0 a0 e3                                      mov ip, #1
0046ee0c  04 00 90 e5                                      ldr r0, [r0, #4]
0046ee10  04 10 8d e2                                      add r1, sp, #4
0046ee14  08 40 8d e5                                      str r4, [sp, #8]
0046ee18  0c 40 8d e5                                      str r4, [sp, #0xc]
0046ee1c  04 40 8d e5                                      str r4, [sp, #4]
0046ee20  10 40 8d e5                                      str r4, [sp, #0x10]
0046ee24  20 40 8d e5                                      str r4, [sp, #0x20]
0046ee28  24 40 8d e5                                      str r4, [sp, #0x24]
0046ee2c  28 40 8d e5                                      str r4, [sp, #0x28]
0046ee30  48 70 dd e5                                      ldrb r7, [sp, #0x48]
0046ee34  1c 30 8d e5                                      str r3, [sp, #0x1c]
0046ee38  2f e0 cd e5                                      strb lr, [sp, #0x2f]
0046ee3c  2e c0 cd e5                                      strb ip, [sp, #0x2e]
0046ee40  18 20 8d e5                                      str r2, [sp, #0x18]
0046ee44  2c c0 cd e5                                      strb ip, [sp, #0x2c]
0046ee48  14 50 8d e5                                      str r5, [sp, #0x14]
0046ee4c  2d c0 cd e5                                      strb ip, [sp, #0x2d]
0046ee50  a6 73 fb eb                                      bl #0x34bcf0
0046ee54  fe 35 a0 e3                                      mov r3, #0x3f800000
0046ee58  14 00 85 e5                                      str r0, [r5, #0x14]
0046ee5c  90 50 80 e5                                      str r5, [r0, #0x90]
0046ee60  0c 30 86 e5                                      str r3, [r6, #0xc]
0046ee64  18 30 d6 e5                                      ldrb r3, [r6, #0x18]
0046ee68  00 00 57 e3                                      cmp r7, #0
0046ee6c  10 40 86 e5                                      str r4, [r6, #0x10]
0046ee70  0a 47 0d 03                                      movweq r4, #0xd70a
0046ee74  33 41 44 03                                      movteq r4, #0x4133
0046ee78  00 00 53 e3                                      cmp r3, #0
0046ee7c  08 50 86 e5                                      str r5, [r6, #8]
0046ee80  14 40 86 e5                                      str r4, [r6, #0x14]
0046ee84  06 00 00 1a                                      bne #0x46eea4
0046ee88  06 10 a0 e1                                      mov r1, r6
0046ee8c  05 00 a0 e1                                      mov r0, r5
0046ee90  01 20 a0 e3                                      mov r2, #1
0046ee94  c7 ff ff eb                                      bl #0x46edb8
0046ee98  18 00 85 e5                                      str r0, [r5, #0x18]
0046ee9c  34 d0 8d e2                                      add sp, sp, #0x34
0046eea0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0046eea4  06 10 a0 e1                                      mov r1, r6
0046eea8  05 00 a0 e1                                      mov r0, r5
0046eeac  01 20 a0 e3                                      mov r2, #1
0046eeb0  c0 ff ff eb                                      bl #0x46edb8
0046eeb4  1c 00 85 e5                                      str r0, [r5, #0x1c]
0046eeb8  f7 ff ff ea                                      b #0x46ee9c

; FUNCTION 0x0046eebc, declared_size=72, range_size=72, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObjectD1Ev
; demangled: PhysicalObject::~PhysicalObject()
; decoder-mode: arm
0046eebc  10 40 2d e9                                      push {r4, lr}
0046eec0  34 30 9f e5                                      ldr r3, [pc, #0x34]
0046eec4  34 20 9f e5                                      ldr r2, [pc, #0x34]
0046eec8  14 10 90 e5                                      ldr r1, [r0, #0x14]
0046eecc  03 30 8f e0                                      add r3, pc, r3
0046eed0  02 20 93 e7                                      ldr r2, [r3, r2]
0046eed4  00 00 51 e3                                      cmp r1, #0
0046eed8  00 40 a0 e1                                      mov r4, r0
0046eedc  08 20 82 e2                                      add r2, r2, #8
0046eee0  00 20 80 e5                                      str r2, [r0]
0046eee4  02 00 00 0a                                      beq #0x46eef4
0046eee8  04 00 90 e5                                      ldr r0, [r0, #4]
0046eeec  14 10 84 e2                                      add r1, r4, #0x14
0046eef0  74 73 fb eb                                      bl #0x34bcc8
0046eef4  04 00 a0 e1                                      mov r0, r4
0046eef8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0046eefc  c4 5b 52 00 84 24 00 00                          .byte 0xc4, 0x5b, 0x52, 0x00, 0x84, 0x24, 0x00, 0x00

; FUNCTION 0x0046ef04, declared_size=28, range_size=28, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObjectD0Ev
; demangled: PhysicalObject::~PhysicalObject()
; decoder-mode: arm
0046ef04  10 40 2d e9                                      push {r4, lr}
0046ef08  00 40 a0 e1                                      mov r4, r0
0046ef0c  ea ff ff eb                                      bl #0x46eebc
0046ef10  04 00 a0 e1                                      mov r0, r4
0046ef14  49 85 fa eb                                      bl #0x310440
0046ef18  04 00 a0 e1                                      mov r0, r4
0046ef1c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046ef20, declared_size=72, range_size=72, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObjectD2Ev
; demangled: PhysicalObject::~PhysicalObject()
; decoder-mode: arm
0046ef20  10 40 2d e9                                      push {r4, lr}
0046ef24  34 30 9f e5                                      ldr r3, [pc, #0x34]
0046ef28  34 20 9f e5                                      ldr r2, [pc, #0x34]
0046ef2c  14 10 90 e5                                      ldr r1, [r0, #0x14]
0046ef30  03 30 8f e0                                      add r3, pc, r3
0046ef34  02 20 93 e7                                      ldr r2, [r3, r2]
0046ef38  00 00 51 e3                                      cmp r1, #0
0046ef3c  00 40 a0 e1                                      mov r4, r0
0046ef40  08 20 82 e2                                      add r2, r2, #8
0046ef44  00 20 80 e5                                      str r2, [r0]
0046ef48  02 00 00 0a                                      beq #0x46ef58
0046ef4c  04 00 90 e5                                      ldr r0, [r0, #4]
0046ef50  14 10 84 e2                                      add r1, r4, #0x14
0046ef54  5b 73 fb eb                                      bl #0x34bcc8
0046ef58  04 00 a0 e1                                      mov r0, r4
0046ef5c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0046ef60  60 5b 52 00 84 24 00 00                          .byte 0x60, 0x5b, 0x52, 0x00, 0x84, 0x24, 0x00, 0x00

; FUNCTION 0x0046ef68, declared_size=904, range_size=904, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObjectC1EP13PhysicalWorldP10GameObjectbbbbstti
; demangled: PhysicalObject::PhysicalObject(PhysicalWorld*, GameObject*, bool, bool, bool, bool, short, unsigned short, unsigned short, int)
; decoder-mode: arm
0046ef68  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046ef6c  60 53 9f e5                                      ldr r5, [pc, #0x360]
0046ef70  60 43 9f e5                                      ldr r4, [pc, #0x360]
0046ef74  b4 d0 4d e2                                      sub sp, sp, #0xb4
0046ef78  05 50 8f e0                                      add r5, pc, r5
0046ef7c  10 40 8d e5                                      str r4, [sp, #0x10]
0046ef80  04 e0 95 e7                                      ldr lr, [r5, r4]
0046ef84  50 c3 9f e5                                      ldr ip, [pc, #0x350]
0046ef88  50 43 9f e5                                      ldr r4, [pc, #0x350]
0046ef8c  d8 90 dd e5                                      ldrb sb, [sp, #0xd8]
0046ef90  0c c0 95 e7                                      ldr ip, [r5, ip]
0046ef94  04 40 95 e7                                      ldr r4, [r5, r4]
0046ef98  00 e0 9e e5                                      ldr lr, [lr]
0046ef9c  00 70 a0 e3                                      mov r7, #0
0046efa0  0c 40 8d e5                                      str r4, [sp, #0xc]
0046efa4  08 c0 8c e2                                      add ip, ip, #8
0046efa8  00 40 a0 e1                                      mov r4, r0
0046efac  00 a0 a0 e3                                      mov sl, #0
0046efb0  04 10 80 e5                                      str r1, [r0, #4]
0046efb4  00 c0 80 e5                                      str ip, [r0]
0046efb8  08 20 84 e5                                      str r2, [r4, #8]
0046efbc  0c a0 80 e5                                      str sl, [r0, #0xc]
0046efc0  10 90 c0 e5                                      strb sb, [r0, #0x10]
0046efc4  14 70 80 e5                                      str r7, [r0, #0x14]
0046efc8  18 70 80 e5                                      str r7, [r0, #0x18]
0046efcc  1c 70 80 e5                                      str r7, [r0, #0x1c]
0046efd0  26 70 c0 e5                                      strb r7, [r0, #0x26]
0046efd4  27 70 c0 e5                                      strb r7, [r0, #0x27]
0046efd8  dc c0 dd e5                                      ldrb ip, [sp, #0xdc]
0046efdc  02 60 a0 e1                                      mov r6, r2
0046efe0  ac e0 8d e5                                      str lr, [sp, #0xac]
0046efe4  b8 2e dd e1                                      ldrh r2, [sp, #0xe8]
0046efe8  e0 e0 dd e5                                      ldrb lr, [sp, #0xe0]
0046efec  1c 30 8d e5                                      str r3, [sp, #0x1c]
0046eff0  bc 3e dd e1                                      ldrh r3, [sp, #0xec]
0046eff4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0046eff8  20 c0 8d e5                                      str ip, [sp, #0x20]
0046effc  24 e0 8d e5                                      str lr, [sp, #0x24]
0046f000  18 30 8d e5                                      str r3, [sp, #0x18]
0046f004  f4 8e dd e1                                      ldrsh r8, [sp, #0xe4]
0046f008  14 20 8d e5                                      str r2, [sp, #0x14]
0046f00c  1d 22 fb eb                                      bl #0x337888
0046f010  cc 12 9f e5                                      ldr r1, [pc, #0x2cc]
0046f014  94 b0 8d e2                                      add fp, sp, #0x94
0046f018  90 20 8d e2                                      add r2, sp, #0x90
0046f01c  01 10 8f e0                                      add r1, pc, r1
0046f020  0b 00 a0 e1                                      mov r0, fp
0046f024  30 94 fa eb                                      bl #0x3140ec
0046f028  0b 10 a0 e1                                      mov r1, fp
0046f02c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0046f030  94 22 fb eb                                      bl #0x337a88
0046f034  00 30 a0 e1                                      mov r3, r0
0046f038  0b 00 a0 e1                                      mov r0, fp
0046f03c  08 30 8d e5                                      str r3, [sp, #8]
0046f040  59 92 fa eb                                      bl #0x3139ac
0046f044  08 30 9d e5                                      ldr r3, [sp, #8]
0046f048  a6 2f e0 e3                                      mvn r2, #0x298
0046f04c  01 20 42 e2                                      sub r2, r2, #1
0046f050  07 00 53 e1                                      cmp r3, r7
0046f054  02 80 a0 11                                      movne r8, r2
0046f058  07 00 56 e1                                      cmp r6, r7
0046f05c  5b 00 00 0a                                      beq #0x46f1d0
0046f060  07 00 59 e1                                      cmp sb, r7
0046f064  62 00 00 1a                                      bne #0x46f1f4
0046f068  78 32 9f e5                                      ldr r3, [pc, #0x278]
0046f06c  01 20 a0 e3                                      mov r2, #1
0046f070  2c 11 96 e5                                      ldr r1, [r6, #0x12c]
0046f074  03 30 95 e7                                      ldr r3, [r5, r3]
0046f078  38 01 96 e5                                      ldr r0, [r6, #0x138]
0046f07c  30 20 8d e5                                      str r2, [sp, #0x30]
0046f080  08 c0 83 e2                                      add ip, r3, #8
0046f084  cd 3c 0c e3                                      movw r3, #0xcccd
0046f088  4c 3e 43 e3                                      movt r3, #0x3e4c
0046f08c  b6 24 cd e1                                      strh r2, [sp, #0x46]
0046f090  00 20 e0 e3                                      mvn r2, #0
0046f094  2c c0 8d e5                                      str ip, [sp, #0x2c]
0046f098  b8 24 cd e1                                      strh r2, [sp, #0x48]
0046f09c  38 30 8d e5                                      str r3, [sp, #0x38]
0046f0a0  40 a0 8d e5                                      str sl, [sp, #0x40]
0046f0a4  8c 90 8d e5                                      str sb, [sp, #0x8c]
0046f0a8  34 90 8d e5                                      str sb, [sp, #0x34]
0046f0ac  3c a0 8d e5                                      str sl, [sp, #0x3c]
0046f0b0  ba 94 cd e1                                      strh sb, [sp, #0x4a]
0046f0b4  44 90 cd e5                                      strb sb, [sp, #0x44]
0046f0b8  bb 7c fa eb                                      bl #0x30e3ac
0046f0bc  0a 17 0d e3                                      movw r1, #0xd70a
0046f0c0  23 1c 43 e3                                      movt r1, #0x3c23
0046f0c4  28 7f fa eb                                      bl #0x30ed6c
0046f0c8  30 11 96 e5                                      ldr r1, [r6, #0x130]
0046f0cc  00 90 a0 e1                                      mov sb, r0
0046f0d0  3c 01 96 e5                                      ldr r0, [r6, #0x13c]
0046f0d4  b4 7c fa eb                                      bl #0x30e3ac
0046f0d8  0a 17 0d e3                                      movw r1, #0xd70a
0046f0dc  23 1c 43 e3                                      movt r1, #0x3c23
0046f0e0  21 7f fa eb                                      bl #0x30ed6c
0046f0e4  0a 17 0d e3                                      movw r1, #0xd70a
0046f0e8  00 70 a0 e1                                      mov r7, r0
0046f0ec  23 1c 43 e3                                      movt r1, #0x3c23
0046f0f0  60 01 96 e5                                      ldr r0, [r6, #0x160]
0046f0f4  1c 7f fa eb                                      bl #0x30ed6c
0046f0f8  0a 17 0d e3                                      movw r1, #0xd70a
0046f0fc  23 1c 43 e3                                      movt r1, #0x3c23
0046f100  00 a0 a0 e1                                      mov sl, r0
0046f104  64 01 96 e5                                      ldr r0, [r6, #0x164]
0046f108  17 7f fa eb                                      bl #0x30ed6c
0046f10c  3f 14 a0 e3                                      mov r1, #0x3f000000
0046f110  00 60 a0 e1                                      mov r6, r0
0046f114  09 00 a0 e1                                      mov r0, sb
0046f118  13 7f fa eb                                      bl #0x30ed6c
0046f11c  3f 14 a0 e3                                      mov r1, #0x3f000000
0046f120  00 30 a0 e1                                      mov r3, r0
0046f124  07 00 a0 e1                                      mov r0, r7
0046f128  08 30 8d e5                                      str r3, [sp, #8]
0046f12c  0e 7f fa eb                                      bl #0x30ed6c
0046f130  08 30 9d e5                                      ldr r3, [sp, #8]
0046f134  2c b0 8d e2                                      add fp, sp, #0x2c
0046f138  00 20 a0 e1                                      mov r2, r0
0046f13c  03 10 a0 e1                                      mov r1, r3
0046f140  0b 00 a0 e1                                      mov r0, fp
0046f144  db d4 0d eb                                      bl #0x7e44b8
0046f148  07 10 a0 e1                                      mov r1, r7
0046f14c  09 00 a0 e1                                      mov r0, sb
0046f150  6d 7d fa eb                                      bl #0x30e70c
0046f154  00 00 50 e3                                      cmp r0, #0
0046f158  09 70 a0 01                                      moveq r7, sb
0046f15c  07 00 a0 e1                                      mov r0, r7
0046f160  3f 14 a0 e3                                      mov r1, #0x3f000000
0046f164  00 7f fa eb                                      bl #0x30ed6c
0046f168  7c 31 9f e5                                      ldr r3, [pc, #0x17c]
0046f16c  0c 00 84 e5                                      str r0, [r4, #0xc]
0046f170  0b c0 a0 e1                                      mov ip, fp
0046f174  03 30 95 e7                                      ldr r3, [r5, r3]
0046f178  08 30 83 e2                                      add r3, r3, #8
0046f17c  2c 30 8d e5                                      str r3, [sp, #0x2c]
0046f180  b4 82 c4 e1                                      strh r8, [r4, #0x24]
0046f184  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0046f188  0c 10 a0 e1                                      mov r1, ip
0046f18c  06 30 a0 e1                                      mov r3, r6
0046f190  b0 e2 c4 e1                                      strh lr, [r4, #0x20]
0046f194  18 20 9d e5                                      ldr r2, [sp, #0x18]
0046f198  04 00 a0 e1                                      mov r0, r4
0046f19c  b2 22 c4 e1                                      strh r2, [r4, #0x22]
0046f1a0  20 e0 9d e5                                      ldr lr, [sp, #0x20]
0046f1a4  be 81 cc e1                                      strh r8, [ip, #0x1e]
0046f1a8  0a 20 a0 e1                                      mov r2, sl
0046f1ac  18 e0 cc e5                                      strb lr, [ip, #0x18]
0046f1b0  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0046f1b4  ba e1 cc e1                                      strh lr, [ip, #0x1a]
0046f1b8  18 e0 9d e5                                      ldr lr, [sp, #0x18]
0046f1bc  bc e1 cc e1                                      strh lr, [ip, #0x1c]
0046f1c0  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0046f1c4  24 e0 9d e5                                      ldr lr, [sp, #0x24]
0046f1c8  00 50 8d e8                                      stm sp, {ip, lr}
0046f1cc  07 ff ff eb                                      bl #0x46edf0
0046f1d0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0046f1d4  ac 20 9d e5                                      ldr r2, [sp, #0xac]
0046f1d8  04 00 a0 e1                                      mov r0, r4
0046f1dc  0c 30 95 e7                                      ldr r3, [r5, ip]
0046f1e0  00 30 93 e5                                      ldr r3, [r3]
0046f1e4  03 00 52 e1                                      cmp r2, r3
0046f1e8  38 00 00 1a                                      bne #0x46f2d0
0046f1ec  b4 d0 8d e2                                      add sp, sp, #0xb4
0046f1f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046f1f4  cd 3c 0c e3                                      movw r3, #0xcccd
0046f1f8  2c 11 96 e5                                      ldr r1, [r6, #0x12c]
0046f1fc  38 01 96 e5                                      ldr r0, [r6, #0x138]
0046f200  4c 3e 43 e3                                      movt r3, #0x3e4c
0046f204  01 c0 a0 e3                                      mov ip, #1
0046f208  00 e0 e0 e3                                      mvn lr, #0
0046f20c  38 30 8d e5                                      str r3, [sp, #0x38]
0046f210  b6 c4 cd e1                                      strh ip, [sp, #0x46]
0046f214  b8 e4 cd e1                                      strh lr, [sp, #0x48]
0046f218  44 70 cd e5                                      strb r7, [sp, #0x44]
0046f21c  30 70 8d e5                                      str r7, [sp, #0x30]
0046f220  50 a0 8d e5                                      str sl, [sp, #0x50]
0046f224  34 70 8d e5                                      str r7, [sp, #0x34]
0046f228  3c a0 8d e5                                      str sl, [sp, #0x3c]
0046f22c  40 a0 8d e5                                      str sl, [sp, #0x40]
0046f230  ba 74 cd e1                                      strh r7, [sp, #0x4a]
0046f234  4c a0 8d e5                                      str sl, [sp, #0x4c]
0046f238  5b 7c fa eb                                      bl #0x30e3ac
0046f23c  0a 17 0d e3                                      movw r1, #0xd70a
0046f240  23 1c 43 e3                                      movt r1, #0x3c23
0046f244  c8 7e fa eb                                      bl #0x30ed6c
0046f248  30 11 96 e5                                      ldr r1, [r6, #0x130]
0046f24c  00 90 a0 e1                                      mov sb, r0
0046f250  3c 01 96 e5                                      ldr r0, [r6, #0x13c]
0046f254  54 7c fa eb                                      bl #0x30e3ac
0046f258  0a 17 0d e3                                      movw r1, #0xd70a
0046f25c  23 1c 43 e3                                      movt r1, #0x3c23
0046f260  c1 7e fa eb                                      bl #0x30ed6c
0046f264  0a 17 0d e3                                      movw r1, #0xd70a
0046f268  00 70 a0 e1                                      mov r7, r0
0046f26c  23 1c 43 e3                                      movt r1, #0x3c23
0046f270  60 01 96 e5                                      ldr r0, [r6, #0x160]
0046f274  bc 7e fa eb                                      bl #0x30ed6c
0046f278  0a 17 0d e3                                      movw r1, #0xd70a
0046f27c  23 1c 43 e3                                      movt r1, #0x3c23
0046f280  00 a0 a0 e1                                      mov sl, r0
0046f284  64 01 96 e5                                      ldr r0, [r6, #0x164]
0046f288  b7 7e fa eb                                      bl #0x30ed6c
0046f28c  07 10 a0 e1                                      mov r1, r7
0046f290  00 60 a0 e1                                      mov r6, r0
0046f294  09 00 a0 e1                                      mov r0, sb
0046f298  1b 7d fa eb                                      bl #0x30e70c
0046f29c  00 00 50 e3                                      cmp r0, #0
0046f2a0  09 70 a0 01                                      moveq r7, sb
0046f2a4  07 00 a0 e1                                      mov r0, r7
0046f2a8  3f 14 a0 e3                                      mov r1, #0x3f000000
0046f2ac  ae 7e fa eb                                      bl #0x30ed6c
0046f2b0  34 30 9f e5                                      ldr r3, [pc, #0x34]
0046f2b4  b0 c0 8d e2                                      add ip, sp, #0xb0
0046f2b8  0c 00 84 e5                                      str r0, [r4, #0xc]
0046f2bc  03 30 95 e7                                      ldr r3, [r5, r3]
0046f2c0  54 00 8d e5                                      str r0, [sp, #0x54]
0046f2c4  08 30 83 e2                                      add r3, r3, #8
0046f2c8  84 30 2c e5                                      str r3, [ip, #-0x84]!
0046f2cc  ab ff ff ea                                      b #0x46f180
0046f2d0  0e 7c fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046f2d4  18 5b 52 00 ac 40 00 00 84 24 00 00 84 08 00 00  .byte 0x18, 0x5b, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x24, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
0046f2e4  cc e5 45 00 dc 4a 00 00 18 38 00 00              .byte 0xcc, 0xe5, 0x45, 0x00, 0xdc, 0x4a, 0x00, 0x00, 0x18, 0x38, 0x00, 0x00

; FUNCTION 0x0046f2f0, declared_size=904, range_size=904, mode=arm
; class-group: PhysicalObject
; alias: _ZN14PhysicalObjectC2EP13PhysicalWorldP10GameObjectbbbbstti
; demangled: PhysicalObject::PhysicalObject(PhysicalWorld*, GameObject*, bool, bool, bool, bool, short, unsigned short, unsigned short, int)
; decoder-mode: arm
0046f2f0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046f2f4  60 53 9f e5                                      ldr r5, [pc, #0x360]
0046f2f8  60 43 9f e5                                      ldr r4, [pc, #0x360]
0046f2fc  b4 d0 4d e2                                      sub sp, sp, #0xb4
0046f300  05 50 8f e0                                      add r5, pc, r5
0046f304  10 40 8d e5                                      str r4, [sp, #0x10]
0046f308  04 e0 95 e7                                      ldr lr, [r5, r4]
0046f30c  50 c3 9f e5                                      ldr ip, [pc, #0x350]
0046f310  50 43 9f e5                                      ldr r4, [pc, #0x350]
0046f314  d8 90 dd e5                                      ldrb sb, [sp, #0xd8]
0046f318  0c c0 95 e7                                      ldr ip, [r5, ip]
0046f31c  04 40 95 e7                                      ldr r4, [r5, r4]
0046f320  00 e0 9e e5                                      ldr lr, [lr]
0046f324  00 70 a0 e3                                      mov r7, #0
0046f328  0c 40 8d e5                                      str r4, [sp, #0xc]
0046f32c  08 c0 8c e2                                      add ip, ip, #8
0046f330  00 40 a0 e1                                      mov r4, r0
0046f334  00 a0 a0 e3                                      mov sl, #0
0046f338  04 10 80 e5                                      str r1, [r0, #4]
0046f33c  00 c0 80 e5                                      str ip, [r0]
0046f340  08 20 84 e5                                      str r2, [r4, #8]
0046f344  0c a0 80 e5                                      str sl, [r0, #0xc]
0046f348  10 90 c0 e5                                      strb sb, [r0, #0x10]
0046f34c  14 70 80 e5                                      str r7, [r0, #0x14]
0046f350  18 70 80 e5                                      str r7, [r0, #0x18]
0046f354  1c 70 80 e5                                      str r7, [r0, #0x1c]
0046f358  26 70 c0 e5                                      strb r7, [r0, #0x26]
0046f35c  27 70 c0 e5                                      strb r7, [r0, #0x27]
0046f360  dc c0 dd e5                                      ldrb ip, [sp, #0xdc]
0046f364  02 60 a0 e1                                      mov r6, r2
0046f368  ac e0 8d e5                                      str lr, [sp, #0xac]
0046f36c  b8 2e dd e1                                      ldrh r2, [sp, #0xe8]
0046f370  e0 e0 dd e5                                      ldrb lr, [sp, #0xe0]
0046f374  1c 30 8d e5                                      str r3, [sp, #0x1c]
0046f378  bc 3e dd e1                                      ldrh r3, [sp, #0xec]
0046f37c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0046f380  20 c0 8d e5                                      str ip, [sp, #0x20]
0046f384  24 e0 8d e5                                      str lr, [sp, #0x24]
0046f388  18 30 8d e5                                      str r3, [sp, #0x18]
0046f38c  f4 8e dd e1                                      ldrsh r8, [sp, #0xe4]
0046f390  14 20 8d e5                                      str r2, [sp, #0x14]
0046f394  3b 21 fb eb                                      bl #0x337888
0046f398  cc 12 9f e5                                      ldr r1, [pc, #0x2cc]
0046f39c  94 b0 8d e2                                      add fp, sp, #0x94
0046f3a0  90 20 8d e2                                      add r2, sp, #0x90
0046f3a4  01 10 8f e0                                      add r1, pc, r1
0046f3a8  0b 00 a0 e1                                      mov r0, fp
0046f3ac  4e 93 fa eb                                      bl #0x3140ec
0046f3b0  0b 10 a0 e1                                      mov r1, fp
0046f3b4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0046f3b8  b2 21 fb eb                                      bl #0x337a88
0046f3bc  00 30 a0 e1                                      mov r3, r0
0046f3c0  0b 00 a0 e1                                      mov r0, fp
0046f3c4  08 30 8d e5                                      str r3, [sp, #8]
0046f3c8  77 91 fa eb                                      bl #0x3139ac
0046f3cc  08 30 9d e5                                      ldr r3, [sp, #8]
0046f3d0  a6 2f e0 e3                                      mvn r2, #0x298
0046f3d4  01 20 42 e2                                      sub r2, r2, #1
0046f3d8  07 00 53 e1                                      cmp r3, r7
0046f3dc  02 80 a0 11                                      movne r8, r2
0046f3e0  07 00 56 e1                                      cmp r6, r7
0046f3e4  5b 00 00 0a                                      beq #0x46f558
0046f3e8  07 00 59 e1                                      cmp sb, r7
0046f3ec  62 00 00 1a                                      bne #0x46f57c
0046f3f0  78 32 9f e5                                      ldr r3, [pc, #0x278]
0046f3f4  01 20 a0 e3                                      mov r2, #1
0046f3f8  2c 11 96 e5                                      ldr r1, [r6, #0x12c]
0046f3fc  03 30 95 e7                                      ldr r3, [r5, r3]
0046f400  38 01 96 e5                                      ldr r0, [r6, #0x138]
0046f404  30 20 8d e5                                      str r2, [sp, #0x30]
0046f408  08 c0 83 e2                                      add ip, r3, #8
0046f40c  cd 3c 0c e3                                      movw r3, #0xcccd
0046f410  4c 3e 43 e3                                      movt r3, #0x3e4c
0046f414  b6 24 cd e1                                      strh r2, [sp, #0x46]
0046f418  00 20 e0 e3                                      mvn r2, #0
0046f41c  2c c0 8d e5                                      str ip, [sp, #0x2c]
0046f420  b8 24 cd e1                                      strh r2, [sp, #0x48]
0046f424  38 30 8d e5                                      str r3, [sp, #0x38]
0046f428  40 a0 8d e5                                      str sl, [sp, #0x40]
0046f42c  8c 90 8d e5                                      str sb, [sp, #0x8c]
0046f430  34 90 8d e5                                      str sb, [sp, #0x34]
0046f434  3c a0 8d e5                                      str sl, [sp, #0x3c]
0046f438  ba 94 cd e1                                      strh sb, [sp, #0x4a]
0046f43c  44 90 cd e5                                      strb sb, [sp, #0x44]
0046f440  d9 7b fa eb                                      bl #0x30e3ac
0046f444  0a 17 0d e3                                      movw r1, #0xd70a
0046f448  23 1c 43 e3                                      movt r1, #0x3c23
0046f44c  46 7e fa eb                                      bl #0x30ed6c
0046f450  30 11 96 e5                                      ldr r1, [r6, #0x130]
0046f454  00 90 a0 e1                                      mov sb, r0
0046f458  3c 01 96 e5                                      ldr r0, [r6, #0x13c]
0046f45c  d2 7b fa eb                                      bl #0x30e3ac
0046f460  0a 17 0d e3                                      movw r1, #0xd70a
0046f464  23 1c 43 e3                                      movt r1, #0x3c23
0046f468  3f 7e fa eb                                      bl #0x30ed6c
0046f46c  0a 17 0d e3                                      movw r1, #0xd70a
0046f470  00 70 a0 e1                                      mov r7, r0
0046f474  23 1c 43 e3                                      movt r1, #0x3c23
0046f478  60 01 96 e5                                      ldr r0, [r6, #0x160]
0046f47c  3a 7e fa eb                                      bl #0x30ed6c
0046f480  0a 17 0d e3                                      movw r1, #0xd70a
0046f484  23 1c 43 e3                                      movt r1, #0x3c23
0046f488  00 a0 a0 e1                                      mov sl, r0
0046f48c  64 01 96 e5                                      ldr r0, [r6, #0x164]
0046f490  35 7e fa eb                                      bl #0x30ed6c
0046f494  3f 14 a0 e3                                      mov r1, #0x3f000000
0046f498  00 60 a0 e1                                      mov r6, r0
0046f49c  09 00 a0 e1                                      mov r0, sb
0046f4a0  31 7e fa eb                                      bl #0x30ed6c
0046f4a4  3f 14 a0 e3                                      mov r1, #0x3f000000
0046f4a8  00 30 a0 e1                                      mov r3, r0
0046f4ac  07 00 a0 e1                                      mov r0, r7
0046f4b0  08 30 8d e5                                      str r3, [sp, #8]
0046f4b4  2c 7e fa eb                                      bl #0x30ed6c
0046f4b8  08 30 9d e5                                      ldr r3, [sp, #8]
0046f4bc  2c b0 8d e2                                      add fp, sp, #0x2c
0046f4c0  00 20 a0 e1                                      mov r2, r0
0046f4c4  03 10 a0 e1                                      mov r1, r3
0046f4c8  0b 00 a0 e1                                      mov r0, fp
0046f4cc  f9 d3 0d eb                                      bl #0x7e44b8
0046f4d0  07 10 a0 e1                                      mov r1, r7
0046f4d4  09 00 a0 e1                                      mov r0, sb
0046f4d8  8b 7c fa eb                                      bl #0x30e70c
0046f4dc  00 00 50 e3                                      cmp r0, #0
0046f4e0  09 70 a0 01                                      moveq r7, sb
0046f4e4  07 00 a0 e1                                      mov r0, r7
0046f4e8  3f 14 a0 e3                                      mov r1, #0x3f000000
0046f4ec  1e 7e fa eb                                      bl #0x30ed6c
0046f4f0  7c 31 9f e5                                      ldr r3, [pc, #0x17c]
0046f4f4  0c 00 84 e5                                      str r0, [r4, #0xc]
0046f4f8  0b c0 a0 e1                                      mov ip, fp
0046f4fc  03 30 95 e7                                      ldr r3, [r5, r3]
0046f500  08 30 83 e2                                      add r3, r3, #8
0046f504  2c 30 8d e5                                      str r3, [sp, #0x2c]
0046f508  b4 82 c4 e1                                      strh r8, [r4, #0x24]
0046f50c  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0046f510  0c 10 a0 e1                                      mov r1, ip
0046f514  06 30 a0 e1                                      mov r3, r6
0046f518  b0 e2 c4 e1                                      strh lr, [r4, #0x20]
0046f51c  18 20 9d e5                                      ldr r2, [sp, #0x18]
0046f520  04 00 a0 e1                                      mov r0, r4
0046f524  b2 22 c4 e1                                      strh r2, [r4, #0x22]
0046f528  20 e0 9d e5                                      ldr lr, [sp, #0x20]
0046f52c  be 81 cc e1                                      strh r8, [ip, #0x1e]
0046f530  0a 20 a0 e1                                      mov r2, sl
0046f534  18 e0 cc e5                                      strb lr, [ip, #0x18]
0046f538  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0046f53c  ba e1 cc e1                                      strh lr, [ip, #0x1a]
0046f540  18 e0 9d e5                                      ldr lr, [sp, #0x18]
0046f544  bc e1 cc e1                                      strh lr, [ip, #0x1c]
0046f548  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0046f54c  24 e0 9d e5                                      ldr lr, [sp, #0x24]
0046f550  00 50 8d e8                                      stm sp, {ip, lr}
0046f554  25 fe ff eb                                      bl #0x46edf0
0046f558  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0046f55c  ac 20 9d e5                                      ldr r2, [sp, #0xac]
0046f560  04 00 a0 e1                                      mov r0, r4
0046f564  0c 30 95 e7                                      ldr r3, [r5, ip]
0046f568  00 30 93 e5                                      ldr r3, [r3]
0046f56c  03 00 52 e1                                      cmp r2, r3
0046f570  38 00 00 1a                                      bne #0x46f658
0046f574  b4 d0 8d e2                                      add sp, sp, #0xb4
0046f578  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046f57c  cd 3c 0c e3                                      movw r3, #0xcccd
0046f580  2c 11 96 e5                                      ldr r1, [r6, #0x12c]
0046f584  38 01 96 e5                                      ldr r0, [r6, #0x138]
0046f588  4c 3e 43 e3                                      movt r3, #0x3e4c
0046f58c  01 c0 a0 e3                                      mov ip, #1
0046f590  00 e0 e0 e3                                      mvn lr, #0
0046f594  38 30 8d e5                                      str r3, [sp, #0x38]
0046f598  b6 c4 cd e1                                      strh ip, [sp, #0x46]
0046f59c  b8 e4 cd e1                                      strh lr, [sp, #0x48]
0046f5a0  44 70 cd e5                                      strb r7, [sp, #0x44]
0046f5a4  30 70 8d e5                                      str r7, [sp, #0x30]
0046f5a8  50 a0 8d e5                                      str sl, [sp, #0x50]
0046f5ac  34 70 8d e5                                      str r7, [sp, #0x34]
0046f5b0  3c a0 8d e5                                      str sl, [sp, #0x3c]
0046f5b4  40 a0 8d e5                                      str sl, [sp, #0x40]
0046f5b8  ba 74 cd e1                                      strh r7, [sp, #0x4a]
0046f5bc  4c a0 8d e5                                      str sl, [sp, #0x4c]
0046f5c0  79 7b fa eb                                      bl #0x30e3ac
0046f5c4  0a 17 0d e3                                      movw r1, #0xd70a
0046f5c8  23 1c 43 e3                                      movt r1, #0x3c23
0046f5cc  e6 7d fa eb                                      bl #0x30ed6c
0046f5d0  30 11 96 e5                                      ldr r1, [r6, #0x130]
0046f5d4  00 90 a0 e1                                      mov sb, r0
0046f5d8  3c 01 96 e5                                      ldr r0, [r6, #0x13c]
0046f5dc  72 7b fa eb                                      bl #0x30e3ac
0046f5e0  0a 17 0d e3                                      movw r1, #0xd70a
0046f5e4  23 1c 43 e3                                      movt r1, #0x3c23
0046f5e8  df 7d fa eb                                      bl #0x30ed6c
0046f5ec  0a 17 0d e3                                      movw r1, #0xd70a
0046f5f0  00 70 a0 e1                                      mov r7, r0
0046f5f4  23 1c 43 e3                                      movt r1, #0x3c23
0046f5f8  60 01 96 e5                                      ldr r0, [r6, #0x160]
0046f5fc  da 7d fa eb                                      bl #0x30ed6c
0046f600  0a 17 0d e3                                      movw r1, #0xd70a
0046f604  23 1c 43 e3                                      movt r1, #0x3c23
0046f608  00 a0 a0 e1                                      mov sl, r0
0046f60c  64 01 96 e5                                      ldr r0, [r6, #0x164]
0046f610  d5 7d fa eb                                      bl #0x30ed6c
0046f614  07 10 a0 e1                                      mov r1, r7
0046f618  00 60 a0 e1                                      mov r6, r0
0046f61c  09 00 a0 e1                                      mov r0, sb
0046f620  39 7c fa eb                                      bl #0x30e70c
0046f624  00 00 50 e3                                      cmp r0, #0
0046f628  09 70 a0 01                                      moveq r7, sb
0046f62c  07 00 a0 e1                                      mov r0, r7
0046f630  3f 14 a0 e3                                      mov r1, #0x3f000000
0046f634  cc 7d fa eb                                      bl #0x30ed6c
0046f638  34 30 9f e5                                      ldr r3, [pc, #0x34]
0046f63c  b0 c0 8d e2                                      add ip, sp, #0xb0
0046f640  0c 00 84 e5                                      str r0, [r4, #0xc]
0046f644  03 30 95 e7                                      ldr r3, [r5, r3]
0046f648  54 00 8d e5                                      str r0, [sp, #0x54]
0046f64c  08 30 83 e2                                      add r3, r3, #8
0046f650  84 30 2c e5                                      str r3, [ip, #-0x84]!
0046f654  ab ff ff ea                                      b #0x46f508
0046f658  2c 7b fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046f65c  90 57 52 00 ac 40 00 00 84 24 00 00 84 08 00 00  .byte 0x90, 0x57, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x24, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
0046f66c  44 e2 45 00 dc 4a 00 00 18 38 00 00              .byte 0x44, 0xe2, 0x45, 0x00, 0xdc, 0x4a, 0x00, 0x00, 0x18, 0x38, 0x00, 0x00

; FUNCTION 0x0046f754, declared_size=960, range_size=960, mode=arm
; class-group: PhysicalObject
; alias: _ZNK14PhysicalObject4DrawEv
; demangled: PhysicalObject::Draw() const
; decoder-mode: arm
0046f754  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046f758  a0 43 9f e5                                      ldr r4, [pc, #0x3a0]
0046f75c  a0 53 9f e5                                      ldr r5, [pc, #0x3a0]
0046f760  a0 23 9f e5                                      ldr r2, [pc, #0x3a0]
0046f764  04 40 8f e0                                      add r4, pc, r4
0046f768  05 30 94 e7                                      ldr r3, [r4, r5]
0046f76c  02 80 94 e7                                      ldr r8, [r4, r2]
0046f770  8c d0 4d e2                                      sub sp, sp, #0x8c
0046f774  00 30 93 e5                                      ldr r3, [r3]
0046f778  00 60 a0 e1                                      mov r6, r0
0046f77c  08 00 a0 e1                                      mov r0, r8
0046f780  84 30 8d e5                                      str r3, [sp, #0x84]
0046f784  3f 20 fb eb                                      bl #0x337888
0046f788  7c 13 9f e5                                      ldr r1, [pc, #0x37c]
0046f78c  6c 70 8d e2                                      add r7, sp, #0x6c
0046f790  68 20 8d e2                                      add r2, sp, #0x68
0046f794  01 10 8f e0                                      add r1, pc, r1
0046f798  07 00 a0 e1                                      mov r0, r7
0046f79c  52 92 fa eb                                      bl #0x3140ec
0046f7a0  08 00 a0 e1                                      mov r0, r8
0046f7a4  07 10 a0 e1                                      mov r1, r7
0046f7a8  b6 20 fb eb                                      bl #0x337a88
0046f7ac  00 00 50 e3                                      cmp r0, #0
0046f7b0  9a 00 00 0a                                      beq #0x46fa20
0046f7b4  18 30 96 e5                                      ldr r3, [r6, #0x18]
0046f7b8  00 00 53 e3                                      cmp r3, #0
0046f7bc  94 00 00 0a                                      beq #0x46fa14
0046f7c0  07 00 a0 e1                                      mov r0, r7
0046f7c4  78 90 fa eb                                      bl #0x3139ac
0046f7c8  08 30 96 e5                                      ldr r3, [r6, #8]
0046f7cc  00 00 53 e3                                      cmp r3, #0
0046f7d0  94 00 00 0a                                      beq #0x46fa28
0046f7d4  80 30 d3 e5                                      ldrb r3, [r3, #0x80]
0046f7d8  00 00 53 e3                                      cmp r3, #0
0046f7dc  91 00 00 0a                                      beq #0x46fa28
0046f7e0  28 93 9f e5                                      ldr sb, [pc, #0x328]
0046f7e4  54 a0 8d e2                                      add sl, sp, #0x54
0046f7e8  0a 00 a0 e1                                      mov r0, sl
0046f7ec  06 10 a0 e1                                      mov r1, r6
0046f7f0  08 fc ff eb                                      bl #0x46e818
0046f7f4  09 30 94 e7                                      ldr r3, [r4, sb]
0046f7f8  42 14 a0 e3                                      mov r1, #0x42000000
0046f7fc  0c 00 96 e5                                      ldr r0, [r6, #0xc]
0046f800  10 30 93 e5                                      ldr r3, [r3, #0x10]
0046f804  32 17 81 e2                                      add r1, r1, #0xc80000
0046f808  10 70 93 e5                                      ldr r7, [r3, #0x10]
0046f80c  56 7d fa eb                                      bl #0x30ed6c
0046f810  08 30 96 e5                                      ldr r3, [r6, #8]
0046f814  dc b0 97 e5                                      ldr fp, [r7, #0xdc]
0046f818  00 80 a0 e1                                      mov r8, r0
0046f81c  68 31 93 e5                                      ldr r3, [r3, #0x168]
0046f820  be 22 db e1                                      ldrh r2, [fp, #0x2e]
0046f824  1c 30 8d e5                                      str r3, [sp, #0x1c]
0046f828  ff 3f 0f e3                                      movw r3, #0xffff
0046f82c  03 00 52 e1                                      cmp r2, r3
0046f830  ac 00 00 0a                                      beq #0x46fae8
0046f834  5c 30 8d e2                                      add r3, sp, #0x5c
0046f838  03 00 a0 e1                                      mov r0, r3
0046f83c  10 30 8d e5                                      str r3, [sp, #0x10]
0046f840  0b 10 a0 e1                                      mov r1, fp
0046f844  01 30 a0 e3                                      mov r3, #1
0046f848  25 b6 05 eb                                      bl #0x5dd0e4
0046f84c  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0046f850  00 00 50 e3                                      cmp r0, #0
0046f854  ff 20 a0 03                                      moveq r2, #0xff
0046f858  01 00 00 0a                                      beq #0x46f864
0046f85c  34 59 05 eb                                      bl #0x5c5d34
0046f860  00 20 a0 e1                                      mov r2, r0
0046f864  00 30 a0 e3                                      mov r3, #0
0046f868  07 00 a0 e1                                      mov r0, r7
0046f86c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0046f870  bc f6 04 eb                                      bl #0x5ad368
0046f874  14 30 96 e5                                      ldr r3, [r6, #0x14]
0046f878  f2 20 d3 e1                                      ldrsh r2, [r3, #2]
0046f87c  00 00 52 e3                                      cmp r2, #0
0046f880  6f 00 00 1a                                      bne #0x46fa44
0046f884  00 30 e0 e3                                      mvn r3, #0
0046f888  7f 20 a0 e3                                      mov r2, #0x7f
0046f88c  67 20 cd e5                                      strb r2, [sp, #0x67]
0046f890  62 30 cd e5                                      strb r3, [sp, #0x62]
0046f894  64 30 cd e5                                      strb r3, [sp, #0x64]
0046f898  65 30 cd e5                                      strb r3, [sp, #0x65]
0046f89c  66 30 cd e5                                      strb r3, [sp, #0x66]
0046f8a0  63 30 cd e5                                      strb r3, [sp, #0x63]
0046f8a4  60 30 cd e5                                      strb r3, [sp, #0x60]
0046f8a8  61 30 cd e5                                      strb r3, [sp, #0x61]
0046f8ac  10 30 d6 e5                                      ldrb r3, [r6, #0x10]
0046f8b0  00 00 53 e3                                      cmp r3, #0
0046f8b4  71 00 00 1a                                      bne #0x46fa80
0046f8b8  54 30 9d e5                                      ldr r3, [sp, #0x54]
0046f8bc  08 10 a0 e1                                      mov r1, r8
0046f8c0  48 20 8d e2                                      add r2, sp, #0x48
0046f8c4  03 00 a0 e1                                      mov r0, r3
0046f8c8  0c 30 8d e5                                      str r3, [sp, #0xc]
0046f8cc  14 20 8d e5                                      str r2, [sp, #0x14]
0046f8d0  b5 7a fa eb                                      bl #0x30e3ac
0046f8d4  58 90 9d e5                                      ldr sb, [sp, #0x58]
0046f8d8  3c 20 8d e2                                      add r2, sp, #0x3c
0046f8dc  00 b0 a0 e1                                      mov fp, r0
0046f8e0  08 10 a0 e1                                      mov r1, r8
0046f8e4  09 00 a0 e1                                      mov r0, sb
0046f8e8  18 20 8d e5                                      str r2, [sp, #0x18]
0046f8ec  ae 7a fa eb                                      bl #0x30e3ac
0046f8f0  41 14 a0 e3                                      mov r1, #0x41000000
0046f8f4  00 a0 a0 e1                                      mov sl, r0
0046f8f8  02 16 81 e2                                      add r1, r1, #0x200000
0046f8fc  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0046f900  a7 7c fa eb                                      bl #0x30eba4
0046f904  09 10 a0 e1                                      mov r1, sb
0046f908  00 60 a0 e1                                      mov r6, r0
0046f90c  08 00 a0 e1                                      mov r0, r8
0046f910  50 60 8d e5                                      str r6, [sp, #0x50]
0046f914  48 b0 8d e5                                      str fp, [sp, #0x48]
0046f918  4c a0 8d e5                                      str sl, [sp, #0x4c]
0046f91c  a0 7c fa eb                                      bl #0x30eba4
0046f920  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0046f924  00 90 a0 e1                                      mov sb, r0
0046f928  08 00 a0 e1                                      mov r0, r8
0046f92c  03 10 a0 e1                                      mov r1, r3
0046f930  44 60 8d e5                                      str r6, [sp, #0x44]
0046f934  3c b0 8d e5                                      str fp, [sp, #0x3c]
0046f938  40 90 8d e5                                      str sb, [sp, #0x40]
0046f93c  98 7c fa eb                                      bl #0x30eba4
0046f940  2c 60 8d e5                                      str r6, [sp, #0x2c]
0046f944  24 00 8d e5                                      str r0, [sp, #0x24]
0046f948  30 00 8d e5                                      str r0, [sp, #0x30]
0046f94c  38 60 8d e5                                      str r6, [sp, #0x38]
0046f950  34 90 8d e5                                      str sb, [sp, #0x34]
0046f954  28 a0 8d e5                                      str sl, [sp, #0x28]
0046f958  30 60 8d e2                                      add r6, sp, #0x30
0046f95c  07 00 a0 e1                                      mov r0, r7
0046f960  14 10 9d e5                                      ldr r1, [sp, #0x14]
0046f964  18 20 9d e5                                      ldr r2, [sp, #0x18]
0046f968  60 30 9d e5                                      ldr r3, [sp, #0x60]
0046f96c  00 c0 97 e5                                      ldr ip, [r7]
0046f970  0f e0 a0 e1                                      mov lr, pc
0046f974  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0046f978  24 80 8d e2                                      add r8, sp, #0x24
0046f97c  07 00 a0 e1                                      mov r0, r7
0046f980  18 10 9d e5                                      ldr r1, [sp, #0x18]
0046f984  06 20 a0 e1                                      mov r2, r6
0046f988  60 30 9d e5                                      ldr r3, [sp, #0x60]
0046f98c  00 c0 97 e5                                      ldr ip, [r7]
0046f990  0f e0 a0 e1                                      mov lr, pc
0046f994  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0046f998  07 00 a0 e1                                      mov r0, r7
0046f99c  06 10 a0 e1                                      mov r1, r6
0046f9a0  08 20 a0 e1                                      mov r2, r8
0046f9a4  60 30 9d e5                                      ldr r3, [sp, #0x60]
0046f9a8  00 c0 97 e5                                      ldr ip, [r7]
0046f9ac  0f e0 a0 e1                                      mov lr, pc
0046f9b0  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0046f9b4  07 00 a0 e1                                      mov r0, r7
0046f9b8  08 10 a0 e1                                      mov r1, r8
0046f9bc  14 20 9d e5                                      ldr r2, [sp, #0x14]
0046f9c0  60 30 9d e5                                      ldr r3, [sp, #0x60]
0046f9c4  00 c0 97 e5                                      ldr ip, [r7]
0046f9c8  0f e0 a0 e1                                      mov lr, pc
0046f9cc  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0046f9d0  14 10 9d e5                                      ldr r1, [sp, #0x14]
0046f9d4  06 20 a0 e1                                      mov r2, r6
0046f9d8  07 00 a0 e1                                      mov r0, r7
0046f9dc  64 30 9d e5                                      ldr r3, [sp, #0x64]
0046f9e0  00 c0 97 e5                                      ldr ip, [r7]
0046f9e4  0f e0 a0 e1                                      mov lr, pc
0046f9e8  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0046f9ec  07 00 a0 e1                                      mov r0, r7
0046f9f0  18 10 9d e5                                      ldr r1, [sp, #0x18]
0046f9f4  08 20 a0 e1                                      mov r2, r8
0046f9f8  00 c0 97 e5                                      ldr ip, [r7]
0046f9fc  64 30 9d e5                                      ldr r3, [sp, #0x64]
0046fa00  0f e0 a0 e1                                      mov lr, pc
0046fa04  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0046fa08  10 00 9d e5                                      ldr r0, [sp, #0x10]
0046fa0c  75 84 fa eb                                      bl #0x310be8
0046fa10  04 00 00 ea                                      b #0x46fa28
0046fa14  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
0046fa18  00 00 53 e3                                      cmp r3, #0
0046fa1c  67 ff ff 1a                                      bne #0x46f7c0
0046fa20  07 00 a0 e1                                      mov r0, r7
0046fa24  e0 8f fa eb                                      bl #0x3139ac
0046fa28  05 30 94 e7                                      ldr r3, [r4, r5]
0046fa2c  84 20 9d e5                                      ldr r2, [sp, #0x84]
0046fa30  00 30 93 e5                                      ldr r3, [r3]
0046fa34  03 00 52 e1                                      cmp r2, r3
0046fa38  2f 00 00 1a                                      bne #0x46fafc
0046fa3c  8c d0 8d e2                                      add sp, sp, #0x8c
0046fa40  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046fa44  b0 30 d3 e1                                      ldrh r3, [r3]
0046fa48  08 20 13 e2                                      ands r2, r3, #8
0046fa4c  1a 00 00 0a                                      beq #0x46fabc
0046fa50  7f 30 a0 e3                                      mov r3, #0x7f
0046fa54  00 20 a0 e3                                      mov r2, #0
0046fa58  00 10 e0 e3                                      mvn r1, #0
0046fa5c  63 10 cd e5                                      strb r1, [sp, #0x63]
0046fa60  60 20 cd e5                                      strb r2, [sp, #0x60]
0046fa64  62 30 cd e5                                      strb r3, [sp, #0x62]
0046fa68  67 30 cd e5                                      strb r3, [sp, #0x67]
0046fa6c  64 20 cd e5                                      strb r2, [sp, #0x64]
0046fa70  65 30 cd e5                                      strb r3, [sp, #0x65]
0046fa74  66 30 cd e5                                      strb r3, [sp, #0x66]
0046fa78  61 30 cd e5                                      strb r3, [sp, #0x61]
0046fa7c  8a ff ff ea                                      b #0x46f8ac
0046fa80  09 30 94 e7                                      ldr r3, [r4, sb]
0046fa84  41 14 a0 e3                                      mov r1, #0x41000000
0046fa88  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0046fa8c  10 30 93 e5                                      ldr r3, [r3, #0x10]
0046fa90  02 16 81 e2                                      add r1, r1, #0x200000
0046fa94  1c 60 93 e5                                      ldr r6, [r3, #0x1c]
0046fa98  41 7c fa eb                                      bl #0x30eba4
0046fa9c  64 c0 8d e2                                      add ip, sp, #0x64
0046faa0  00 20 a0 e1                                      mov r2, r0
0046faa4  0a 10 a0 e1                                      mov r1, sl
0046faa8  06 00 a0 e1                                      mov r0, r6
0046faac  08 30 a0 e1                                      mov r3, r8
0046fab0  00 c0 8d e5                                      str ip, [sp]
0046fab4  a6 89 fb eb                                      bl #0x352154
0046fab8  d2 ff ff ea                                      b #0x46fa08
0046fabc  00 30 e0 e3                                      mvn r3, #0
0046fac0  7f 10 a0 e3                                      mov r1, #0x7f
0046fac4  67 10 cd e5                                      strb r1, [sp, #0x67]
0046fac8  60 20 cd e5                                      strb r2, [sp, #0x60]
0046facc  62 30 cd e5                                      strb r3, [sp, #0x62]
0046fad0  64 20 cd e5                                      strb r2, [sp, #0x64]
0046fad4  65 30 cd e5                                      strb r3, [sp, #0x65]
0046fad8  66 30 cd e5                                      strb r3, [sp, #0x66]
0046fadc  63 30 cd e5                                      strb r3, [sp, #0x63]
0046fae0  61 30 cd e5                                      strb r3, [sp, #0x61]
0046fae4  70 ff ff ea                                      b #0x46f8ac
0046fae8  0b 00 a0 e1                                      mov r0, fp
0046faec  01 10 a0 e3                                      mov r1, #1
0046faf0  0c a4 05 eb                                      bl #0x5d8b28
0046faf4  00 20 a0 e1                                      mov r2, r0
0046faf8  4d ff ff ea                                      b #0x46f834
0046fafc  03 7a fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046fb00  2c 53 52 00 ac 40 00 00 84 08 00 00 64 de 45 00  .byte 0x2c, 0x53, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x64, 0xde, 0x45, 0x00
0046fb10  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
