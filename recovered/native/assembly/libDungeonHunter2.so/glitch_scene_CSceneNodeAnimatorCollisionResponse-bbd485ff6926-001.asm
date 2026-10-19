; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006ca694, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZNK6glitch5scene35CSceneNodeAnimatorCollisionResponse7getTypeEv
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::getType() const
; decoder-mode: arm
006ca694  06 00 a0 e3                                      mov r0, #6
006ca698  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ca69c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZNK6glitch5scene35CSceneNodeAnimatorCollisionResponse9isFallingEv
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::isFalling() const
; decoder-mode: arm
006ca69c  54 00 d0 e5                                      ldrb r0, [r0, #0x54]
006ca6a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ca6a4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponse18setEllipsoidRadiusERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::setEllipsoidRadius(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006ca6a4  00 30 91 e5                                      ldr r3, [r1]
006ca6a8  18 30 80 e5                                      str r3, [r0, #0x18]
006ca6ac  04 30 91 e5                                      ldr r3, [r1, #4]
006ca6b0  1c 30 80 e5                                      str r3, [r0, #0x1c]
006ca6b4  08 30 91 e5                                      ldr r3, [r1, #8]
006ca6b8  20 30 80 e5                                      str r3, [r0, #0x20]
006ca6bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ca6c0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZNK6glitch5scene35CSceneNodeAnimatorCollisionResponse18getEllipsoidRadiusEv
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::getEllipsoidRadius() const
; decoder-mode: arm
006ca6c0  18 20 91 e5                                      ldr r2, [r1, #0x18]
006ca6c4  00 20 80 e5                                      str r2, [r0]
006ca6c8  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
006ca6cc  04 20 80 e5                                      str r2, [r0, #4]
006ca6d0  20 20 91 e5                                      ldr r2, [r1, #0x20]
006ca6d4  08 20 80 e5                                      str r2, [r0, #8]
006ca6d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ca6dc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponse10setGravityERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::setGravity(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006ca6dc  00 30 91 e5                                      ldr r3, [r1]
006ca6e0  24 30 80 e5                                      str r3, [r0, #0x24]
006ca6e4  04 30 91 e5                                      ldr r3, [r1, #4]
006ca6e8  28 30 80 e5                                      str r3, [r0, #0x28]
006ca6ec  08 30 91 e5                                      ldr r3, [r1, #8]
006ca6f0  2c 30 80 e5                                      str r3, [r0, #0x2c]
006ca6f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ca6f8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZNK6glitch5scene35CSceneNodeAnimatorCollisionResponse10getGravityEv
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::getGravity() const
; decoder-mode: arm
006ca6f8  24 20 91 e5                                      ldr r2, [r1, #0x24]
006ca6fc  00 20 80 e5                                      str r2, [r0]
006ca700  28 20 91 e5                                      ldr r2, [r1, #0x28]
006ca704  04 20 80 e5                                      str r2, [r0, #4]
006ca708  2c 20 91 e5                                      ldr r2, [r1, #0x2c]
006ca70c  08 20 80 e5                                      str r2, [r0, #8]
006ca710  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ca714, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponse23setEllipsoidTranslationERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::setEllipsoidTranslation(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006ca714  00 30 91 e5                                      ldr r3, [r1]
006ca718  30 30 80 e5                                      str r3, [r0, #0x30]
006ca71c  04 30 91 e5                                      ldr r3, [r1, #4]
006ca720  34 30 80 e5                                      str r3, [r0, #0x34]
006ca724  08 30 91 e5                                      ldr r3, [r1, #8]
006ca728  38 30 80 e5                                      str r3, [r0, #0x38]
006ca72c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ca730, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZNK6glitch5scene35CSceneNodeAnimatorCollisionResponse23getEllipsoidTranslationEv
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::getEllipsoidTranslation() const
; decoder-mode: arm
006ca730  30 20 91 e5                                      ldr r2, [r1, #0x30]
006ca734  00 20 80 e5                                      str r2, [r0]
006ca738  34 20 91 e5                                      ldr r2, [r1, #0x34]
006ca73c  04 20 80 e5                                      str r2, [r0, #4]
006ca740  38 20 91 e5                                      ldr r2, [r1, #0x38]
006ca744  08 20 80 e5                                      str r2, [r0, #8]
006ca748  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ca74c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponse15setSlidingSpeedEf
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::setSlidingSpeed(float)
; decoder-mode: arm
006ca74c  50 10 80 e5                                      str r1, [r0, #0x50]
006ca750  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ca754, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZNK6glitch5scene35CSceneNodeAnimatorCollisionResponse15getSlidingSpeedEv
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::getSlidingSpeed() const
; decoder-mode: arm
006ca754  50 00 90 e5                                      ldr r0, [r0, #0x50]
006ca758  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ca75c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZNK6glitch5scene35CSceneNodeAnimatorCollisionResponse8getWorldEv
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::getWorld() const
; decoder-mode: arm
006ca75c  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
006ca760  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ca764, declared_size=160, range_size=160, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZNK6glitch5scene35CSceneNodeAnimatorCollisionResponse19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006ca764  70 40 2d e9                                      push {r4, r5, r6, lr}
006ca768  01 40 a0 e1                                      mov r4, r1
006ca76c  80 10 9f e5                                      ldr r1, [pc, #0x80]
006ca770  00 50 a0 e1                                      mov r5, r0
006ca774  18 20 85 e2                                      add r2, r5, #0x18
006ca778  04 00 a0 e1                                      mov r0, r4
006ca77c  00 c0 94 e5                                      ldr ip, [r4]
006ca780  01 10 8f e0                                      add r1, pc, r1
006ca784  00 30 a0 e3                                      mov r3, #0
006ca788  0f e0 a0 e1                                      mov lr, pc
006ca78c  a8 f1 9c e5                                      ldr pc, [ip, #0x1a8]
006ca790  60 10 9f e5                                      ldr r1, [pc, #0x60]
006ca794  04 00 a0 e1                                      mov r0, r4
006ca798  24 20 85 e2                                      add r2, r5, #0x24
006ca79c  00 c0 94 e5                                      ldr ip, [r4]
006ca7a0  01 10 8f e0                                      add r1, pc, r1
006ca7a4  00 30 a0 e3                                      mov r3, #0
006ca7a8  0f e0 a0 e1                                      mov lr, pc
006ca7ac  a8 f1 9c e5                                      ldr pc, [ip, #0x1a8]
006ca7b0  44 10 9f e5                                      ldr r1, [pc, #0x44]
006ca7b4  04 00 a0 e1                                      mov r0, r4
006ca7b8  30 20 85 e2                                      add r2, r5, #0x30
006ca7bc  00 c0 94 e5                                      ldr ip, [r4]
006ca7c0  01 10 8f e0                                      add r1, pc, r1
006ca7c4  00 30 a0 e3                                      mov r3, #0
006ca7c8  0f e0 a0 e1                                      mov lr, pc
006ca7cc  a8 f1 9c e5                                      ldr pc, [ip, #0x1a8]
006ca7d0  28 10 9f e5                                      ldr r1, [pc, #0x28]
006ca7d4  04 00 a0 e1                                      mov r0, r4
006ca7d8  56 20 d5 e5                                      ldrb r2, [r5, #0x56]
006ca7dc  01 10 8f e0                                      add r1, pc, r1
006ca7e0  00 c0 94 e5                                      ldr ip, [r4]
006ca7e4  00 30 a0 e3                                      mov r3, #0
006ca7e8  0f e0 a0 e1                                      mov lr, pc
006ca7ec  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
006ca7f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006ca7f4  a8 eb 20 00 30 0c 22 00 28 0c 22 00 1c 0c 22 00  .byte 0xa8, 0xeb, 0x20, 0x00, 0x30, 0x0c, 0x22, 0x00, 0x28, 0x0c, 0x22, 0x00, 0x1c, 0x0c, 0x22, 0x00

; FUNCTION 0x006ca804, declared_size=220, range_size=220, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponse21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006ca804  30 40 2d e9                                      push {r4, r5, lr}
006ca808  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
006ca80c  2c d0 4d e2                                      sub sp, sp, #0x2c
006ca810  00 40 a0 e1                                      mov r4, r0
006ca814  00 30 91 e5                                      ldr r3, [r1]
006ca818  02 20 8f e0                                      add r2, pc, r2
006ca81c  1c 00 8d e2                                      add r0, sp, #0x1c
006ca820  01 50 a0 e1                                      mov r5, r1
006ca824  0f e0 a0 e1                                      mov lr, pc
006ca828  b4 f1 93 e5                                      ldr pc, [r3, #0x1b4]
006ca82c  20 20 9d e5                                      ldr r2, [sp, #0x20]
006ca830  24 30 9d e5                                      ldr r3, [sp, #0x24]
006ca834  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006ca838  1c 20 84 e5                                      str r2, [r4, #0x1c]
006ca83c  90 20 9f e5                                      ldr r2, [pc, #0x90]
006ca840  18 10 84 e5                                      str r1, [r4, #0x18]
006ca844  20 30 84 e5                                      str r3, [r4, #0x20]
006ca848  02 20 8f e0                                      add r2, pc, r2
006ca84c  10 00 8d e2                                      add r0, sp, #0x10
006ca850  05 10 a0 e1                                      mov r1, r5
006ca854  00 30 95 e5                                      ldr r3, [r5]
006ca858  0f e0 a0 e1                                      mov lr, pc
006ca85c  b4 f1 93 e5                                      ldr pc, [r3, #0x1b4]
006ca860  14 20 9d e5                                      ldr r2, [sp, #0x14]
006ca864  18 30 9d e5                                      ldr r3, [sp, #0x18]
006ca868  10 10 9d e5                                      ldr r1, [sp, #0x10]
006ca86c  28 20 84 e5                                      str r2, [r4, #0x28]
006ca870  60 20 9f e5                                      ldr r2, [pc, #0x60]
006ca874  24 10 84 e5                                      str r1, [r4, #0x24]
006ca878  2c 30 84 e5                                      str r3, [r4, #0x2c]
006ca87c  02 20 8f e0                                      add r2, pc, r2
006ca880  04 00 8d e2                                      add r0, sp, #4
006ca884  05 10 a0 e1                                      mov r1, r5
006ca888  00 30 95 e5                                      ldr r3, [r5]
006ca88c  0f e0 a0 e1                                      mov lr, pc
006ca890  b4 f1 93 e5                                      ldr pc, [r3, #0x1b4]
006ca894  04 10 9d e5                                      ldr r1, [sp, #4]
006ca898  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006ca89c  08 20 9d e5                                      ldr r2, [sp, #8]
006ca8a0  30 10 84 e5                                      str r1, [r4, #0x30]
006ca8a4  30 10 9f e5                                      ldr r1, [pc, #0x30]
006ca8a8  34 20 84 e5                                      str r2, [r4, #0x34]
006ca8ac  38 30 84 e5                                      str r3, [r4, #0x38]
006ca8b0  05 00 a0 e1                                      mov r0, r5
006ca8b4  01 10 8f e0                                      add r1, pc, r1
006ca8b8  00 30 95 e5                                      ldr r3, [r5]
006ca8bc  0f e0 a0 e1                                      mov lr, pc
006ca8c0  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006ca8c4  56 00 c4 e5                                      strb r0, [r4, #0x56]
006ca8c8  2c d0 8d e2                                      add sp, sp, #0x2c
006ca8cc  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
006ca8d0  10 eb 20 00 88 0b 22 00 6c 0b 22 00 44 0b 22 00  .byte 0x10, 0xeb, 0x20, 0x00, 0x88, 0x0b, 0x22, 0x00, 0x6c, 0x0b, 0x22, 0x00, 0x44, 0x0b, 0x22, 0x00

; FUNCTION 0x006ca96c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZThn4_N6glitch5scene35CSceneNodeAnimatorCollisionResponseD1Ev
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse()
; decoder-mode: arm
006ca96c  04 00 40 e2                                      sub r0, r0, #4
006ca970  ff ff ff ea                                      b #0x6ca974

; FUNCTION 0x006ca974, declared_size=144, range_size=144, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponseD1Ev
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse()
; decoder-mode: arm
006ca974  70 40 2d e9                                      push {r4, r5, r6, lr}
006ca978  74 50 9f e5                                      ldr r5, [pc, #0x74]
006ca97c  74 30 9f e5                                      ldr r3, [pc, #0x74]
006ca980  00 40 a0 e1                                      mov r4, r0
006ca984  05 50 8f e0                                      add r5, pc, r5
006ca988  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
006ca98c  03 30 95 e7                                      ldr r3, [r5, r3]
006ca990  00 00 50 e3                                      cmp r0, #0
006ca994  94 20 83 e2                                      add r2, r3, #0x94
006ca998  0c 10 83 e2                                      add r1, r3, #0xc
006ca99c  b0 30 83 e2                                      add r3, r3, #0xb0
006ca9a0  00 10 84 e5                                      str r1, [r4]
006ca9a4  7c 30 84 e5                                      str r3, [r4, #0x7c]
006ca9a8  04 20 84 e5                                      str r2, [r4, #4]
006ca9ac  00 00 00 0a                                      beq #0x6ca9b4
006ca9b0  f3 4a f1 eb                                      bl #0x31d584
006ca9b4  40 20 9f e5                                      ldr r2, [pc, #0x40]
006ca9b8  40 30 9f e5                                      ldr r3, [pc, #0x40]
006ca9bc  04 00 a0 e1                                      mov r0, r4
006ca9c0  02 10 95 e7                                      ldr r1, [r5, r2]
006ca9c4  03 30 95 e7                                      ldr r3, [r5, r3]
006ca9c8  04 20 91 e5                                      ldr r2, [r1, #4]
006ca9cc  18 c0 91 e5                                      ldr ip, [r1, #0x18]
006ca9d0  8c 30 83 e2                                      add r3, r3, #0x8c
006ca9d4  00 20 84 e5                                      str r2, [r4]
006ca9d8  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006ca9dc  08 10 81 e2                                      add r1, r1, #8
006ca9e0  02 c0 84 e7                                      str ip, [r4, r2]
006ca9e4  04 30 84 e5                                      str r3, [r4, #4]
006ca9e8  d2 3b fb eb                                      bl #0x599938
006ca9ec  04 00 a0 e1                                      mov r0, r4
006ca9f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006ca9f4  0c a1 2c 00 80 28 00 00 b0 30 00 00 4c 43 00 00  .byte 0x0c, 0xa1, 0x2c, 0x00, 0x80, 0x28, 0x00, 0x00, 0xb0, 0x30, 0x00, 0x00, 0x4c, 0x43, 0x00, 0x00

; FUNCTION 0x006caa04, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZThn4_N6glitch5scene35CSceneNodeAnimatorCollisionResponseD0Ev
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse()
; decoder-mode: arm
006caa04  04 00 40 e2                                      sub r0, r0, #4
006caa08  ff ff ff ea                                      b #0x6caa0c

; FUNCTION 0x006caa0c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponseD0Ev
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse()
; decoder-mode: arm
006caa0c  10 40 2d e9                                      push {r4, lr}
006caa10  00 40 a0 e1                                      mov r4, r0
006caa14  d6 ff ff eb                                      bl #0x6ca974
006caa18  04 00 a0 e1                                      mov r0, r4
006caa1c  23 0e f1 eb                                      bl #0x30e2b0
006caa20  04 00 a0 e1                                      mov r0, r4
006caa24  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006caa28, declared_size=144, range_size=144, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponseD2Ev
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse()
; decoder-mode: arm
006caa28  70 40 2d e9                                      push {r4, r5, r6, lr}
006caa2c  00 30 91 e5                                      ldr r3, [r1]
006caa30  01 60 a0 e1                                      mov r6, r1
006caa34  70 50 9f e5                                      ldr r5, [pc, #0x70]
006caa38  00 30 80 e5                                      str r3, [r0]
006caa3c  0c 20 13 e5                                      ldr r2, [r3, #-0xc]
006caa40  1c 10 91 e5                                      ldr r1, [r1, #0x1c]
006caa44  64 30 9f e5                                      ldr r3, [pc, #0x64]
006caa48  05 50 8f e0                                      add r5, pc, r5
006caa4c  02 10 80 e7                                      str r1, [r0, r2]
006caa50  00 40 a0 e1                                      mov r4, r0
006caa54  03 30 95 e7                                      ldr r3, [r5, r3]
006caa58  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
006caa5c  94 30 83 e2                                      add r3, r3, #0x94
006caa60  00 00 50 e3                                      cmp r0, #0
006caa64  04 30 84 e5                                      str r3, [r4, #4]
006caa68  00 00 00 0a                                      beq #0x6caa70
006caa6c  c4 4a f1 eb                                      bl #0x31d584
006caa70  04 20 96 e5                                      ldr r2, [r6, #4]
006caa74  38 30 9f e5                                      ldr r3, [pc, #0x38]
006caa78  04 10 86 e2                                      add r1, r6, #4
006caa7c  00 20 84 e5                                      str r2, [r4]
006caa80  03 30 95 e7                                      ldr r3, [r5, r3]
006caa84  14 00 91 e5                                      ldr r0, [r1, #0x14]
006caa88  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006caa8c  8c 30 83 e2                                      add r3, r3, #0x8c
006caa90  04 10 81 e2                                      add r1, r1, #4
006caa94  02 00 84 e7                                      str r0, [r4, r2]
006caa98  04 30 84 e5                                      str r3, [r4, #4]
006caa9c  04 00 a0 e1                                      mov r0, r4
006caaa0  a4 3b fb eb                                      bl #0x599938
006caaa4  04 00 a0 e1                                      mov r0, r4
006caaa8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006caaac  48 a0 2c 00 80 28 00 00 4c 43 00 00              .byte 0x48, 0xa0, 0x2c, 0x00, 0x80, 0x28, 0x00, 0x00, 0x4c, 0x43, 0x00, 0x00

; FUNCTION 0x006caab8, declared_size=124, range_size=124, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponse7setNodeEPNS0_10ISceneNodeE
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::setNode(glitch::scene::ISceneNode*)
; decoder-mode: arm
006caab8  00 00 51 e3                                      cmp r1, #0
006caabc  10 40 2d e9                                      push {r4, lr}
006caac0  00 40 a0 e1                                      mov r4, r0
006caac4  40 10 80 e5                                      str r1, [r0, #0x40]
006caac8  15 00 00 0a                                      beq #0x6cab24
006caacc  00 30 91 e5                                      ldr r3, [r1]
006caad0  01 00 a0 e1                                      mov r0, r1
006caad4  0f e0 a0 e1                                      mov lr, pc
006caad8  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
006caadc  00 10 90 e5                                      ldr r1, [r0]
006caae0  00 30 a0 e1                                      mov r3, r0
006caae4  40 20 94 e5                                      ldr r2, [r4, #0x40]
006caae8  0c 10 84 e5                                      str r1, [r4, #0xc]
006caaec  04 10 90 e5                                      ldr r1, [r0, #4]
006caaf0  02 00 a0 e1                                      mov r0, r2
006caaf4  10 10 84 e5                                      str r1, [r4, #0x10]
006caaf8  08 30 93 e5                                      ldr r3, [r3, #8]
006caafc  14 30 84 e5                                      str r3, [r4, #0x14]
006cab00  00 30 92 e5                                      ldr r3, [r2]
006cab04  0f e0 a0 e1                                      mov lr, pc
006cab08  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
006cab0c  63 31 06 e3                                      movw r3, #0x6163
006cab10  6d 3f 45 e3                                      movt r3, #0x5f6d
006cab14  03 00 50 e1                                      cmp r0, r3
006cab18  00 30 a0 13                                      movne r3, #0
006cab1c  01 30 a0 03                                      moveq r3, #1
006cab20  55 30 c4 e5                                      strb r3, [r4, #0x55]
006cab24  ee 00 fd eb                                      bl #0x60aee4
006cab28  4c 00 84 e5                                      str r0, [r4, #0x4c]
006cab2c  48 00 84 e5                                      str r0, [r4, #0x48]
006cab30  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006cab34, declared_size=984, range_size=984, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponse11animateNodeEPNS0_10ISceneNodeEj
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::animateNode(glitch::scene::ISceneNode*, unsigned int)
; decoder-mode: arm
006cab34  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006cab38  40 30 90 e5                                      ldr r3, [r0, #0x40]
006cab3c  9c d0 4d e2                                      sub sp, sp, #0x9c
006cab40  00 40 a0 e1                                      mov r4, r0
006cab44  01 00 53 e1                                      cmp r3, r1
006cab48  02 50 a0 e1                                      mov r5, r2
006cab4c  02 00 00 0a                                      beq #0x6cab5c
006cab50  d8 ff ff eb                                      bl #0x6caab8
006cab54  9c d0 8d e2                                      add sp, sp, #0x9c
006cab58  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006cab5c  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
006cab60  00 00 52 e3                                      cmp r2, #0
006cab64  fa ff ff 0a                                      beq #0x6cab54
006cab68  48 a0 90 e5                                      ldr sl, [r0, #0x48]
006cab6c  48 50 80 e5                                      str r5, [r0, #0x48]
006cab70  03 00 a0 e1                                      mov r0, r3
006cab74  00 30 93 e5                                      ldr r3, [r3]
006cab78  0f e0 a0 e1                                      mov lr, pc
006cab7c  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
006cab80  00 30 a0 e1                                      mov r3, r0
006cab84  00 00 90 e5                                      ldr r0, [r0]
006cab88  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006cab8c  88 00 8d e5                                      str r0, [sp, #0x88]
006cab90  04 80 93 e5                                      ldr r8, [r3, #4]
006cab94  8c 80 8d e5                                      str r8, [sp, #0x8c]
006cab98  08 60 93 e5                                      ldr r6, [r3, #8]
006cab9c  90 60 8d e5                                      str r6, [sp, #0x90]
006caba0  01 0e f1 eb                                      bl #0x30e3ac
006caba4  10 10 94 e5                                      ldr r1, [r4, #0x10]
006caba8  00 70 a0 e1                                      mov r7, r0
006cabac  08 00 a0 e1                                      mov r0, r8
006cabb0  fd 0d f1 eb                                      bl #0x30e3ac
006cabb4  14 10 94 e5                                      ldr r1, [r4, #0x14]
006cabb8  00 80 a0 e1                                      mov r8, r0
006cabbc  06 00 a0 e1                                      mov r0, r6
006cabc0  f9 0d f1 eb                                      bl #0x30e3ac
006cabc4  54 30 d4 e5                                      ldrb r3, [r4, #0x54]
006cabc8  00 90 a0 e1                                      mov sb, r0
006cabcc  7c 70 8d e5                                      str r7, [sp, #0x7c]
006cabd0  00 00 53 e3                                      cmp r3, #0
006cabd4  80 80 8d e5                                      str r8, [sp, #0x80]
006cabd8  84 00 8d e5                                      str r0, [sp, #0x84]
006cabdc  fe b5 a0 03                                      moveq fp, #0x3f800000
006cabe0  91 00 00 1a                                      bne #0x6cae2c
006cabe4  24 10 94 e5                                      ldr r1, [r4, #0x24]
006cabe8  0b 00 a0 e1                                      mov r0, fp
006cabec  5e 10 f1 eb                                      bl #0x30ed6c
006cabf0  28 10 94 e5                                      ldr r1, [r4, #0x28]
006cabf4  00 60 a0 e1                                      mov r6, r0
006cabf8  0b 00 a0 e1                                      mov r0, fp
006cabfc  5a 10 f1 eb                                      bl #0x30ed6c
006cac00  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
006cac04  00 a0 a0 e1                                      mov sl, r0
006cac08  0b 00 a0 e1                                      mov r0, fp
006cac0c  56 10 f1 eb                                      bl #0x30ed6c
006cac10  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
006cac14  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
006cac18  64 c0 94 e5                                      ldr ip, [r4, #0x64]
006cac1c  68 e0 94 e5                                      ldr lr, [r4, #0x68]
006cac20  60 30 94 e5                                      ldr r3, [r4, #0x60]
006cac24  18 10 8d e5                                      str r1, [sp, #0x18]
006cac28  70 10 94 e5                                      ldr r1, [r4, #0x70]
006cac2c  00 b0 a0 e1                                      mov fp, r0
006cac30  07 00 a0 e1                                      mov r0, r7
006cac34  1c 10 8d e5                                      str r1, [sp, #0x1c]
006cac38  74 10 94 e5                                      ldr r1, [r4, #0x74]
006cac3c  20 10 8d e5                                      str r1, [sp, #0x20]
006cac40  78 10 94 e5                                      ldr r1, [r4, #0x78]
006cac44  24 10 8d e5                                      str r1, [sp, #0x24]
006cac48  58 70 94 e5                                      ldr r7, [r4, #0x58]
006cac4c  30 30 8d e5                                      str r3, [sp, #0x30]
006cac50  18 30 9d e5                                      ldr r3, [sp, #0x18]
006cac54  28 70 8d e5                                      str r7, [sp, #0x28]
006cac58  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
006cac5c  3c 30 8d e5                                      str r3, [sp, #0x3c]
006cac60  20 30 9d e5                                      ldr r3, [sp, #0x20]
006cac64  40 70 8d e5                                      str r7, [sp, #0x40]
006cac68  24 70 9d e5                                      ldr r7, [sp, #0x24]
006cac6c  06 10 a0 e1                                      mov r1, r6
006cac70  2c 20 8d e5                                      str r2, [sp, #0x2c]
006cac74  34 c0 8d e5                                      str ip, [sp, #0x34]
006cac78  38 e0 8d e5                                      str lr, [sp, #0x38]
006cac7c  44 30 8d e5                                      str r3, [sp, #0x44]
006cac80  48 70 8d e5                                      str r7, [sp, #0x48]
006cac84  70 60 8d e5                                      str r6, [sp, #0x70]
006cac88  74 a0 8d e5                                      str sl, [sp, #0x74]
006cac8c  78 b0 8d e5                                      str fp, [sp, #0x78]
006cac90  c3 0f f1 eb                                      bl #0x30eba4
006cac94  00 10 a0 e3                                      mov r1, #0
006cac98  bb 0c f1 eb                                      bl #0x30df8c
006cac9c  00 00 50 e3                                      cmp r0, #0
006caca0  52 00 00 1a                                      bne #0x6cadf0
006caca4  44 30 94 e5                                      ldr r3, [r4, #0x44]
006caca8  00 20 a0 e3                                      mov r2, #0
006cacac  97 20 cd e5                                      strb r2, [sp, #0x97]
006cacb0  2c 70 93 e5                                      ldr r7, [r3, #0x2c]
006cacb4  34 10 94 e5                                      ldr r1, [r4, #0x34]
006cacb8  10 00 94 e5                                      ldr r0, [r4, #0x10]
006cacbc  00 30 97 e5                                      ldr r3, [r7]
006cacc0  3c 80 94 e5                                      ldr r8, [r4, #0x3c]
006cacc4  10 60 93 e5                                      ldr r6, [r3, #0x10]
006cacc8  b7 0d f1 eb                                      bl #0x30e3ac
006caccc  38 10 94 e5                                      ldr r1, [r4, #0x38]
006cacd0  00 90 a0 e1                                      mov sb, r0
006cacd4  14 00 94 e5                                      ldr r0, [r4, #0x14]
006cacd8  b3 0d f1 eb                                      bl #0x30e3ac
006cacdc  30 10 94 e5                                      ldr r1, [r4, #0x30]
006cace0  00 a0 a0 e1                                      mov sl, r0
006cace4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
006cace8  af 0d f1 eb                                      bl #0x30e3ac
006cacec  50 30 94 e5                                      ldr r3, [r4, #0x50]
006cacf0  18 20 84 e2                                      add r2, r4, #0x18
006cacf4  00 20 8d e5                                      str r2, [sp]
006cacf8  7c 20 8d e2                                      add r2, sp, #0x7c
006cacfc  04 20 8d e5                                      str r2, [sp, #4]
006cad00  28 20 8d e2                                      add r2, sp, #0x28
006cad04  08 20 8d e5                                      str r2, [sp, #8]
006cad08  10 30 8d e5                                      str r3, [sp, #0x10]
006cad0c  97 20 8d e2                                      add r2, sp, #0x97
006cad10  70 30 8d e2                                      add r3, sp, #0x70
006cad14  64 00 8d e5                                      str r0, [sp, #0x64]
006cad18  0c 20 8d e5                                      str r2, [sp, #0xc]
006cad1c  14 30 8d e5                                      str r3, [sp, #0x14]
006cad20  08 20 a0 e1                                      mov r2, r8
006cad24  64 30 8d e2                                      add r3, sp, #0x64
006cad28  07 10 a0 e1                                      mov r1, r7
006cad2c  58 00 8d e2                                      add r0, sp, #0x58
006cad30  68 90 8d e5                                      str sb, [sp, #0x68]
006cad34  6c a0 8d e5                                      str sl, [sp, #0x6c]
006cad38  36 ff 2f e1                                      blx r6
006cad3c  30 10 94 e5                                      ldr r1, [r4, #0x30]
006cad40  58 00 9d e5                                      ldr r0, [sp, #0x58]
006cad44  96 0f f1 eb                                      bl #0x30eba4
006cad48  88 00 8d e5                                      str r0, [sp, #0x88]
006cad4c  34 10 94 e5                                      ldr r1, [r4, #0x34]
006cad50  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
006cad54  92 0f f1 eb                                      bl #0x30eba4
006cad58  8c 00 8d e5                                      str r0, [sp, #0x8c]
006cad5c  38 10 94 e5                                      ldr r1, [r4, #0x38]
006cad60  60 00 9d e5                                      ldr r0, [sp, #0x60]
006cad64  8e 0f f1 eb                                      bl #0x30eba4
006cad68  97 30 dd e5                                      ldrb r3, [sp, #0x97]
006cad6c  90 00 8d e5                                      str r0, [sp, #0x90]
006cad70  00 00 53 e3                                      cmp r3, #0
006cad74  54 30 c4 05                                      strbeq r3, [r4, #0x54]
006cad78  04 00 00 0a                                      beq #0x6cad90
006cad7c  54 30 d4 e5                                      ldrb r3, [r4, #0x54]
006cad80  00 00 53 e3                                      cmp r3, #0
006cad84  01 30 a0 e3                                      mov r3, #1
006cad88  4c 50 84 05                                      streq r5, [r4, #0x4c]
006cad8c  54 30 c4 e5                                      strb r3, [r4, #0x54]
006cad90  40 30 94 e5                                      ldr r3, [r4, #0x40]
006cad94  88 10 8d e2                                      add r1, sp, #0x88
006cad98  03 00 a0 e1                                      mov r0, r3
006cad9c  00 30 93 e5                                      ldr r3, [r3]
006cada0  0f e0 a0 e1                                      mov lr, pc
006cada4  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
006cada8  56 30 d4 e5                                      ldrb r3, [r4, #0x56]
006cadac  00 00 53 e3                                      cmp r3, #0
006cadb0  02 00 00 0a                                      beq #0x6cadc0
006cadb4  55 30 d4 e5                                      ldrb r3, [r4, #0x55]
006cadb8  00 00 53 e3                                      cmp r3, #0
006cadbc  21 00 00 1a                                      bne #0x6cae48
006cadc0  40 30 94 e5                                      ldr r3, [r4, #0x40]
006cadc4  03 00 a0 e1                                      mov r0, r3
006cadc8  00 30 93 e5                                      ldr r3, [r3]
006cadcc  0f e0 a0 e1                                      mov lr, pc
006cadd0  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
006cadd4  00 30 90 e5                                      ldr r3, [r0]
006cadd8  0c 30 84 e5                                      str r3, [r4, #0xc]
006caddc  04 30 90 e5                                      ldr r3, [r0, #4]
006cade0  10 30 84 e5                                      str r3, [r4, #0x10]
006cade4  08 30 90 e5                                      ldr r3, [r0, #8]
006cade8  14 30 84 e5                                      str r3, [r4, #0x14]
006cadec  58 ff ff ea                                      b #0x6cab54
006cadf0  0a 10 a0 e1                                      mov r1, sl
006cadf4  08 00 a0 e1                                      mov r0, r8
006cadf8  69 0f f1 eb                                      bl #0x30eba4
006cadfc  00 10 a0 e3                                      mov r1, #0
006cae00  61 0c f1 eb                                      bl #0x30df8c
006cae04  00 00 50 e3                                      cmp r0, #0
006cae08  a5 ff ff 0a                                      beq #0x6caca4
006cae0c  0b 10 a0 e1                                      mov r1, fp
006cae10  09 00 a0 e1                                      mov r0, sb
006cae14  62 0f f1 eb                                      bl #0x30eba4
006cae18  00 10 a0 e3                                      mov r1, #0
006cae1c  5a 0c f1 eb                                      bl #0x30df8c
006cae20  00 00 50 e3                                      cmp r0, #0
006cae24  df ff ff 1a                                      bne #0x6cada8
006cae28  9d ff ff ea                                      b #0x6caca4
006cae2c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006cae30  05 00 6a e0                                      rsb r0, sl, r5
006cae34  05 30 63 e0                                      rsb r3, r3, r5
006cae38  90 03 00 e0                                      mul r0, r0, r3
006cae3c  27 0d f1 eb                                      bl #0x30e2e0
006cae40  00 b0 a0 e1                                      mov fp, r0
006cae44  66 ff ff ea                                      b #0x6cabe4
006cae48  40 30 94 e5                                      ldr r3, [r4, #0x40]
006cae4c  03 00 a0 e1                                      mov r0, r3
006cae50  00 30 93 e5                                      ldr r3, [r3]
006cae54  0f e0 a0 e1                                      mov lr, pc
006cae58  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
006cae5c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006cae60  00 50 a0 e1                                      mov r5, r0
006cae64  00 00 90 e5                                      ldr r0, [r0]
006cae68  4f 0d f1 eb                                      bl #0x30e3ac
006cae6c  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
006cae70  4d 0d f1 eb                                      bl #0x30e3ac
006cae74  10 10 94 e5                                      ldr r1, [r4, #0x10]
006cae78  00 90 a0 e1                                      mov sb, r0
006cae7c  04 00 95 e5                                      ldr r0, [r5, #4]
006cae80  49 0d f1 eb                                      bl #0x30e3ac
006cae84  80 10 9d e5                                      ldr r1, [sp, #0x80]
006cae88  47 0d f1 eb                                      bl #0x30e3ac
006cae8c  14 10 94 e5                                      ldr r1, [r4, #0x14]
006cae90  00 a0 a0 e1                                      mov sl, r0
006cae94  08 00 95 e5                                      ldr r0, [r5, #8]
006cae98  43 0d f1 eb                                      bl #0x30e3ac
006cae9c  84 10 9d e5                                      ldr r1, [sp, #0x84]
006caea0  41 0d f1 eb                                      bl #0x30e3ac
006caea4  40 50 94 e5                                      ldr r5, [r4, #0x40]
006caea8  00 80 a0 e1                                      mov r8, r0
006caeac  00 30 95 e5                                      ldr r3, [r5]
006caeb0  05 00 a0 e1                                      mov r0, r5
006caeb4  04 71 93 e5                                      ldr r7, [r3, #0x104]
006caeb8  0f e0 a0 e1                                      mov lr, pc
006caebc  08 f1 93 e5                                      ldr pc, [r3, #0x108]
006caec0  00 60 a0 e1                                      mov r6, r0
006caec4  04 10 96 e5                                      ldr r1, [r6, #4]
006caec8  0a 00 a0 e1                                      mov r0, sl
006caecc  34 0f f1 eb                                      bl #0x30eba4
006caed0  08 10 96 e5                                      ldr r1, [r6, #8]
006caed4  00 a0 a0 e1                                      mov sl, r0
006caed8  08 00 a0 e1                                      mov r0, r8
006caedc  30 0f f1 eb                                      bl #0x30eba4
006caee0  00 10 96 e5                                      ldr r1, [r6]
006caee4  00 80 a0 e1                                      mov r8, r0
006caee8  09 00 a0 e1                                      mov r0, sb
006caeec  2c 0f f1 eb                                      bl #0x30eba4
006caef0  50 a0 8d e5                                      str sl, [sp, #0x50]
006caef4  4c 00 8d e5                                      str r0, [sp, #0x4c]
006caef8  54 80 8d e5                                      str r8, [sp, #0x54]
006caefc  05 00 a0 e1                                      mov r0, r5
006caf00  4c 10 8d e2                                      add r1, sp, #0x4c
006caf04  37 ff 2f e1                                      blx r7
006caf08  ac ff ff ea                                      b #0x6cadc0

; FUNCTION 0x006caf0c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponse8setWorldEPNS0_17ITriangleSelectorE
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::setWorld(glitch::scene::ITriangleSelector*)
; decoder-mode: arm
006caf0c  00 30 a0 e3                                      mov r3, #0
006caf10  70 40 2d e9                                      push {r4, r5, r6, lr}
006caf14  54 30 c0 e5                                      strb r3, [r0, #0x54]
006caf18  00 40 a0 e1                                      mov r4, r0
006caf1c  01 50 a0 e1                                      mov r5, r1
006caf20  ef ff fc eb                                      bl #0x60aee4
006caf24  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
006caf28  4c 00 84 e5                                      str r0, [r4, #0x4c]
006caf2c  48 00 84 e5                                      str r0, [r4, #0x48]
006caf30  00 00 53 e3                                      cmp r3, #0
006caf34  01 00 00 0a                                      beq #0x6caf40
006caf38  03 00 a0 e1                                      mov r0, r3
006caf3c  90 49 f1 eb                                      bl #0x31d584
006caf40  00 00 55 e3                                      cmp r5, #0
006caf44  3c 50 84 e5                                      str r5, [r4, #0x3c]
006caf48  04 30 95 15                                      ldrne r3, [r5, #4]
006caf4c  01 30 83 12                                      addne r3, r3, #1
006caf50  04 30 85 15                                      strne r3, [r5, #4]
006caf54  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006cb000, declared_size=388, range_size=388, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponseC1EPNS0_13CSceneManagerEPNS0_17ITriangleSelectorEPNS0_10ISceneNodeERKNS_4core8vector3dIfEESC_SC_f
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::CSceneNodeAnimatorCollisionResponse(glitch::scene::CSceneManager*, glitch::scene::ITriangleSelector*, glitch::scene::ISceneNode*, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, float)
; decoder-mode: arm
006cb000  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006cb004  68 51 9f e5                                      ldr r5, [pc, #0x168]
006cb008  68 c1 9f e5                                      ldr ip, [pc, #0x168]
006cb00c  68 e1 9f e5                                      ldr lr, [pc, #0x168]
006cb010  05 50 8f e0                                      add r5, pc, r5
006cb014  0c c0 95 e7                                      ldr ip, [r5, ip]
006cb018  0e e0 95 e7                                      ldr lr, [r5, lr]
006cb01c  0c d0 4d e2                                      sub sp, sp, #0xc
006cb020  08 60 8c e2                                      add r6, ip, #8
006cb024  01 c0 a0 e3                                      mov ip, #1
006cb028  7c 60 80 e5                                      str r6, [r0, #0x7c]
006cb02c  04 10 8d e5                                      str r1, [sp, #4]
006cb030  80 c0 80 e5                                      str ip, [r0, #0x80]
006cb034  04 10 8e e2                                      add r1, lr, #4
006cb038  00 40 a0 e1                                      mov r4, r0
006cb03c  02 60 a0 e1                                      mov r6, r2
006cb040  03 b0 a0 e1                                      mov fp, r3
006cb044  30 90 9d e5                                      ldr sb, [sp, #0x30]
006cb048  00 c0 8d e5                                      str ip, [sp]
006cb04c  34 a0 9d e5                                      ldr sl, [sp, #0x34]
006cb050  38 80 9d e5                                      ldr r8, [sp, #0x38]
006cb054  bf ff ff eb                                      bl #0x6caf58
006cb058  20 31 9f e5                                      ldr r3, [pc, #0x120]
006cb05c  00 70 a0 e3                                      mov r7, #0
006cb060  0c 70 84 e5                                      str r7, [r4, #0xc]
006cb064  03 30 95 e7                                      ldr r3, [r5, r3]
006cb068  10 70 84 e5                                      str r7, [r4, #0x10]
006cb06c  14 70 84 e5                                      str r7, [r4, #0x14]
006cb070  94 20 83 e2                                      add r2, r3, #0x94
006cb074  0c 00 83 e2                                      add r0, r3, #0xc
006cb078  b0 30 83 e2                                      add r3, r3, #0xb0
006cb07c  05 00 84 e8                                      stm r4, {r0, r2}
006cb080  7c 30 84 e5                                      str r3, [r4, #0x7c]
006cb084  00 30 99 e5                                      ldr r3, [sb]
006cb088  6f 12 01 e3                                      movw r1, #0x126f
006cb08c  83 1a 43 e3                                      movt r1, #0x3a83
006cb090  18 30 84 e5                                      str r3, [r4, #0x18]
006cb094  04 30 99 e5                                      ldr r3, [sb, #4]
006cb098  1c 30 84 e5                                      str r3, [r4, #0x1c]
006cb09c  08 30 99 e5                                      ldr r3, [sb, #8]
006cb0a0  20 30 84 e5                                      str r3, [r4, #0x20]
006cb0a4  04 00 9a e5                                      ldr r0, [sl, #4]
006cb0a8  2f 0f f1 eb                                      bl #0x30ed6c
006cb0ac  6f 12 01 e3                                      movw r1, #0x126f
006cb0b0  00 50 a0 e1                                      mov r5, r0
006cb0b4  83 1a 43 e3                                      movt r1, #0x3a83
006cb0b8  08 00 9a e5                                      ldr r0, [sl, #8]
006cb0bc  2a 0f f1 eb                                      bl #0x30ed6c
006cb0c0  6f 12 01 e3                                      movw r1, #0x126f
006cb0c4  00 90 a0 e1                                      mov sb, r0
006cb0c8  83 1a 43 e3                                      movt r1, #0x3a83
006cb0cc  00 00 9a e5                                      ldr r0, [sl]
006cb0d0  25 0f f1 eb                                      bl #0x30ed6c
006cb0d4  28 50 84 e5                                      str r5, [r4, #0x28]
006cb0d8  24 00 84 e5                                      str r0, [r4, #0x24]
006cb0dc  2c 90 84 e5                                      str sb, [r4, #0x2c]
006cb0e0  00 20 98 e5                                      ldr r2, [r8]
006cb0e4  00 30 a0 e3                                      mov r3, #0
006cb0e8  00 00 56 e3                                      cmp r6, #0
006cb0ec  30 20 84 e5                                      str r2, [r4, #0x30]
006cb0f0  04 20 98 e5                                      ldr r2, [r8, #4]
006cb0f4  04 00 a0 e1                                      mov r0, r4
006cb0f8  34 20 84 e5                                      str r2, [r4, #0x34]
006cb0fc  04 10 9d e5                                      ldr r1, [sp, #4]
006cb100  08 20 98 e5                                      ldr r2, [r8, #8]
006cb104  44 10 84 e5                                      str r1, [r4, #0x44]
006cb108  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006cb10c  55 30 c4 e5                                      strb r3, [r4, #0x55]
006cb110  38 20 84 e5                                      str r2, [r4, #0x38]
006cb114  50 10 84 e5                                      str r1, [r4, #0x50]
006cb118  00 c0 9d e5                                      ldr ip, [sp]
006cb11c  54 30 c4 e5                                      strb r3, [r4, #0x54]
006cb120  40 b0 84 e5                                      str fp, [r4, #0x40]
006cb124  56 c0 c4 e5                                      strb ip, [r4, #0x56]
006cb128  3c 60 84 e5                                      str r6, [r4, #0x3c]
006cb12c  58 70 84 e5                                      str r7, [r4, #0x58]
006cb130  5c 70 84 e5                                      str r7, [r4, #0x5c]
006cb134  60 70 84 e5                                      str r7, [r4, #0x60]
006cb138  64 70 84 e5                                      str r7, [r4, #0x64]
006cb13c  68 70 84 e5                                      str r7, [r4, #0x68]
006cb140  6c 70 84 e5                                      str r7, [r4, #0x6c]
006cb144  70 70 84 e5                                      str r7, [r4, #0x70]
006cb148  74 70 84 e5                                      str r7, [r4, #0x74]
006cb14c  78 70 84 e5                                      str r7, [r4, #0x78]
006cb150  04 30 96 15                                      ldrne r3, [r6, #4]
006cb154  01 30 83 12                                      addne r3, r3, #1
006cb158  04 30 86 15                                      strne r3, [r6, #4]
006cb15c  40 b0 94 15                                      ldrne fp, [r4, #0x40]
006cb160  0b 10 a0 e1                                      mov r1, fp
006cb164  53 fe ff eb                                      bl #0x6caab8
006cb168  04 00 a0 e1                                      mov r0, r4
006cb16c  0c d0 8d e2                                      add sp, sp, #0xc
006cb170  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006cb174  80 9a 2c 00 44 2b 00 00 b0 30 00 00 80 28 00 00  .byte 0x80, 0x9a, 0x2c, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xb0, 0x30, 0x00, 0x00, 0x80, 0x28, 0x00, 0x00

; FUNCTION 0x006cb184, declared_size=156, range_size=156, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponse11createCloneEv
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::createClone()
; decoder-mode: arm
006cb184  70 40 2d e9                                      push {r4, r5, r6, lr}
006cb188  11 13 a0 e3                                      mov r1, #0x44000000
006cb18c  20 d0 4d e2                                      sub sp, sp, #0x20
006cb190  00 40 a0 e1                                      mov r4, r0
006cb194  7a 18 81 e2                                      add r1, r1, #0x7a0000
006cb198  28 00 90 e5                                      ldr r0, [r0, #0x28]
006cb19c  f2 0e f1 eb                                      bl #0x30ed6c
006cb1a0  11 13 a0 e3                                      mov r1, #0x44000000
006cb1a4  00 60 a0 e1                                      mov r6, r0
006cb1a8  7a 18 81 e2                                      add r1, r1, #0x7a0000
006cb1ac  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
006cb1b0  ed 0e f1 eb                                      bl #0x30ed6c
006cb1b4  11 13 a0 e3                                      mov r1, #0x44000000
006cb1b8  00 50 a0 e1                                      mov r5, r0
006cb1bc  7a 18 81 e2                                      add r1, r1, #0x7a0000
006cb1c0  24 00 94 e5                                      ldr r0, [r4, #0x24]
006cb1c4  e8 0e f1 eb                                      bl #0x30ed6c
006cb1c8  00 10 a0 e3                                      mov r1, #0
006cb1cc  14 00 8d e5                                      str r0, [sp, #0x14]
006cb1d0  84 00 a0 e3                                      mov r0, #0x84
006cb1d4  1c 50 8d e5                                      str r5, [sp, #0x1c]
006cb1d8  18 60 8d e5                                      str r6, [sp, #0x18]
006cb1dc  f2 a3 f9 eb                                      bl #0x5341ac
006cb1e0  50 c0 94 e5                                      ldr ip, [r4, #0x50]
006cb1e4  18 e0 84 e2                                      add lr, r4, #0x18
006cb1e8  44 10 94 e5                                      ldr r1, [r4, #0x44]
006cb1ec  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
006cb1f0  40 30 94 e5                                      ldr r3, [r4, #0x40]
006cb1f4  00 50 a0 e1                                      mov r5, r0
006cb1f8  00 e0 8d e5                                      str lr, [sp]
006cb1fc  30 40 84 e2                                      add r4, r4, #0x30
006cb200  14 e0 8d e2                                      add lr, sp, #0x14
006cb204  04 e0 8d e5                                      str lr, [sp, #4]
006cb208  08 40 8d e5                                      str r4, [sp, #8]
006cb20c  0c c0 8d e5                                      str ip, [sp, #0xc]
006cb210  7a ff ff eb                                      bl #0x6cb000
006cb214  05 00 a0 e1                                      mov r0, r5
006cb218  20 d0 8d e2                                      add sp, sp, #0x20
006cb21c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006cb220, declared_size=356, range_size=356, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponseC2EPNS0_13CSceneManagerEPNS0_17ITriangleSelectorEPNS0_10ISceneNodeERKNS_4core8vector3dIfEESC_SC_f
; demangled: glitch::scene::CSceneNodeAnimatorCollisionResponse::CSceneNodeAnimatorCollisionResponse(glitch::scene::CSceneManager*, glitch::scene::ITriangleSelector*, glitch::scene::ISceneNode*, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, float)
; decoder-mode: arm
006cb220  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006cb224  01 50 a0 e1                                      mov r5, r1
006cb228  0c d0 4d e2                                      sub sp, sp, #0xc
006cb22c  04 10 81 e2                                      add r1, r1, #4
006cb230  44 41 9f e5                                      ldr r4, [pc, #0x144]
006cb234  00 70 a0 e1                                      mov r7, r0
006cb238  03 60 a0 e1                                      mov r6, r3
006cb23c  34 90 9d e5                                      ldr sb, [sp, #0x34]
006cb240  04 20 8d e5                                      str r2, [sp, #4]
006cb244  38 a0 9d e5                                      ldr sl, [sp, #0x38]
006cb248  3c 80 9d e5                                      ldr r8, [sp, #0x3c]
006cb24c  30 b0 9d e5                                      ldr fp, [sp, #0x30]
006cb250  40 ff ff eb                                      bl #0x6caf58
006cb254  00 10 95 e5                                      ldr r1, [r5]
006cb258  20 31 9f e5                                      ldr r3, [pc, #0x120]
006cb25c  04 40 8f e0                                      add r4, pc, r4
006cb260  00 10 87 e5                                      str r1, [r7]
006cb264  03 30 94 e7                                      ldr r3, [r4, r3]
006cb268  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
006cb26c  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
006cb270  00 50 a0 e3                                      mov r5, #0
006cb274  94 30 83 e2                                      add r3, r3, #0x94
006cb278  01 00 87 e7                                      str r0, [r7, r1]
006cb27c  04 30 87 e5                                      str r3, [r7, #4]
006cb280  0c 50 87 e5                                      str r5, [r7, #0xc]
006cb284  10 50 87 e5                                      str r5, [r7, #0x10]
006cb288  14 50 87 e5                                      str r5, [r7, #0x14]
006cb28c  00 30 99 e5                                      ldr r3, [sb]
006cb290  6f 12 01 e3                                      movw r1, #0x126f
006cb294  83 1a 43 e3                                      movt r1, #0x3a83
006cb298  18 30 87 e5                                      str r3, [r7, #0x18]
006cb29c  04 30 99 e5                                      ldr r3, [sb, #4]
006cb2a0  1c 30 87 e5                                      str r3, [r7, #0x1c]
006cb2a4  08 30 99 e5                                      ldr r3, [sb, #8]
006cb2a8  20 30 87 e5                                      str r3, [r7, #0x20]
006cb2ac  04 00 9a e5                                      ldr r0, [sl, #4]
006cb2b0  ad 0e f1 eb                                      bl #0x30ed6c
006cb2b4  6f 12 01 e3                                      movw r1, #0x126f
006cb2b8  00 90 a0 e1                                      mov sb, r0
006cb2bc  83 1a 43 e3                                      movt r1, #0x3a83
006cb2c0  08 00 9a e5                                      ldr r0, [sl, #8]
006cb2c4  a8 0e f1 eb                                      bl #0x30ed6c
006cb2c8  6f 12 01 e3                                      movw r1, #0x126f
006cb2cc  00 40 a0 e1                                      mov r4, r0
006cb2d0  83 1a 43 e3                                      movt r1, #0x3a83
006cb2d4  00 00 9a e5                                      ldr r0, [sl]
006cb2d8  a3 0e f1 eb                                      bl #0x30ed6c
006cb2dc  28 90 87 e5                                      str sb, [r7, #0x28]
006cb2e0  24 00 87 e5                                      str r0, [r7, #0x24]
006cb2e4  2c 40 87 e5                                      str r4, [r7, #0x2c]
006cb2e8  00 10 98 e5                                      ldr r1, [r8]
006cb2ec  00 30 a0 e3                                      mov r3, #0
006cb2f0  00 00 56 e3                                      cmp r6, #0
006cb2f4  30 10 87 e5                                      str r1, [r7, #0x30]
006cb2f8  04 10 98 e5                                      ldr r1, [r8, #4]
006cb2fc  07 00 a0 e1                                      mov r0, r7
006cb300  34 10 87 e5                                      str r1, [r7, #0x34]
006cb304  04 20 9d e5                                      ldr r2, [sp, #4]
006cb308  08 10 98 e5                                      ldr r1, [r8, #8]
006cb30c  44 20 87 e5                                      str r2, [r7, #0x44]
006cb310  40 20 9d e5                                      ldr r2, [sp, #0x40]
006cb314  55 30 c7 e5                                      strb r3, [r7, #0x55]
006cb318  54 30 c7 e5                                      strb r3, [r7, #0x54]
006cb31c  50 20 87 e5                                      str r2, [r7, #0x50]
006cb320  01 20 a0 e3                                      mov r2, #1
006cb324  38 10 87 e5                                      str r1, [r7, #0x38]
006cb328  56 20 c7 e5                                      strb r2, [r7, #0x56]
006cb32c  40 b0 87 e5                                      str fp, [r7, #0x40]
006cb330  3c 60 87 e5                                      str r6, [r7, #0x3c]
006cb334  58 50 87 e5                                      str r5, [r7, #0x58]
006cb338  5c 50 87 e5                                      str r5, [r7, #0x5c]
006cb33c  60 50 87 e5                                      str r5, [r7, #0x60]
006cb340  64 50 87 e5                                      str r5, [r7, #0x64]
006cb344  68 50 87 e5                                      str r5, [r7, #0x68]
006cb348  78 50 87 e5                                      str r5, [r7, #0x78]
006cb34c  6c 50 87 e5                                      str r5, [r7, #0x6c]
006cb350  70 50 87 e5                                      str r5, [r7, #0x70]
006cb354  74 50 87 e5                                      str r5, [r7, #0x74]
006cb358  04 30 96 15                                      ldrne r3, [r6, #4]
006cb35c  02 30 83 10                                      addne r3, r3, r2
006cb360  04 30 86 15                                      strne r3, [r6, #4]
006cb364  40 b0 97 15                                      ldrne fp, [r7, #0x40]
006cb368  0b 10 a0 e1                                      mov r1, fp
006cb36c  d1 fd ff eb                                      bl #0x6caab8
006cb370  07 00 a0 e1                                      mov r0, r7
006cb374  0c d0 8d e2                                      add sp, sp, #0xc
006cb378  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006cb37c  34 98 2c 00 80 28 00 00                          .byte 0x34, 0x98, 0x2c, 0x00, 0x80, 0x28, 0x00, 0x00

; FUNCTION 0x006cb3f8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZTv0_n12_N6glitch5scene35CSceneNodeAnimatorCollisionResponseD0Ev
; demangled: virtual thunk to glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse()
; decoder-mode: arm
006cb3f8  00 30 90 e5                                      ldr r3, [r0]
006cb3fc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006cb400  03 00 80 e0                                      add r0, r0, r3
006cb404  80 fd ff ea                                      b #0x6caa0c

; FUNCTION 0x006cb408, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCollisionResponse
; alias: _ZTv0_n12_N6glitch5scene35CSceneNodeAnimatorCollisionResponseD1Ev
; demangled: virtual thunk to glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse()
; decoder-mode: arm
006cb408  00 30 90 e5                                      ldr r3, [r0]
006cb40c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006cb410  03 00 80 e0                                      add r0, r0, r3
006cb414  56 fd ff ea                                      b #0x6ca974
