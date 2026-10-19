; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006cb730, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyCircle
; alias: _ZNK6glitch5scene27CSceneNodeAnimatorFlyCircle7getTypeEv
; demangled: glitch::scene::CSceneNodeAnimatorFlyCircle::getType() const
; decoder-mode: arm
006cb730  00 00 a0 e3                                      mov r0, #0
006cb734  1e ff 2f e1                                      bx lr

; FUNCTION 0x006cb738, declared_size=160, range_size=160, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyCircle
; alias: _ZNK6glitch5scene27CSceneNodeAnimatorFlyCircle19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CSceneNodeAnimatorFlyCircle::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006cb738  70 40 2d e9                                      push {r4, r5, r6, lr}
006cb73c  01 40 a0 e1                                      mov r4, r1
006cb740  80 10 9f e5                                      ldr r1, [pc, #0x80]
006cb744  00 50 a0 e1                                      mov r5, r0
006cb748  0c 20 85 e2                                      add r2, r5, #0xc
006cb74c  04 00 a0 e1                                      mov r0, r4
006cb750  00 c0 94 e5                                      ldr ip, [r4]
006cb754  01 10 8f e0                                      add r1, pc, r1
006cb758  00 30 a0 e3                                      mov r3, #0
006cb75c  0f e0 a0 e1                                      mov lr, pc
006cb760  a8 f1 9c e5                                      ldr pc, [ip, #0x1a8]
006cb764  60 10 9f e5                                      ldr r1, [pc, #0x60]
006cb768  04 00 a0 e1                                      mov r0, r4
006cb76c  3c 20 95 e5                                      ldr r2, [r5, #0x3c]
006cb770  00 c0 94 e5                                      ldr ip, [r4]
006cb774  01 10 8f e0                                      add r1, pc, r1
006cb778  00 30 a0 e3                                      mov r3, #0
006cb77c  0f e0 a0 e1                                      mov lr, pc
006cb780  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006cb784  44 10 9f e5                                      ldr r1, [pc, #0x44]
006cb788  04 00 a0 e1                                      mov r0, r4
006cb78c  40 20 95 e5                                      ldr r2, [r5, #0x40]
006cb790  00 c0 94 e5                                      ldr ip, [r4]
006cb794  01 10 8f e0                                      add r1, pc, r1
006cb798  00 30 a0 e3                                      mov r3, #0
006cb79c  0f e0 a0 e1                                      mov lr, pc
006cb7a0  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006cb7a4  28 10 9f e5                                      ldr r1, [pc, #0x28]
006cb7a8  04 00 a0 e1                                      mov r0, r4
006cb7ac  18 20 85 e2                                      add r2, r5, #0x18
006cb7b0  01 10 8f e0                                      add r1, pc, r1
006cb7b4  00 c0 94 e5                                      ldr ip, [r4]
006cb7b8  00 30 a0 e3                                      mov r3, #0
006cb7bc  0f e0 a0 e1                                      mov lr, pc
006cb7c0  a8 f1 9c e5                                      ldr pc, [ip, #0x1a8]
006cb7c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006cb7c8  24 f9 1f 00 b4 db 20 00 5c dc 20 00 78 9a 21 00  .byte 0x24, 0xf9, 0x1f, 0x00, 0xb4, 0xdb, 0x20, 0x00, 0x5c, 0xdc, 0x20, 0x00, 0x78, 0x9a, 0x21, 0x00

; FUNCTION 0x006cb7f8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyCircle
; alias: _ZThn4_N6glitch5scene27CSceneNodeAnimatorFlyCircleD1Ev
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle()
; decoder-mode: arm
006cb7f8  04 00 40 e2                                      sub r0, r0, #4
006cb7fc  ff ff ff ea                                      b #0x6cb800

; FUNCTION 0x006cb800, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyCircle
; alias: _ZN6glitch5scene27CSceneNodeAnimatorFlyCircleD1Ev
; demangled: glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle()
; decoder-mode: arm
006cb800  40 30 9f e5                                      ldr r3, [pc, #0x40]
006cb804  40 20 9f e5                                      ldr r2, [pc, #0x40]
006cb808  40 10 9f e5                                      ldr r1, [pc, #0x40]
006cb80c  03 30 8f e0                                      add r3, pc, r3
006cb810  02 20 93 e7                                      ldr r2, [r3, r2]
006cb814  01 10 93 e7                                      ldr r1, [r3, r1]
006cb818  10 40 2d e9                                      push {r4, lr}
006cb81c  68 c0 82 e2                                      add ip, r2, #0x68
006cb820  0c e0 82 e2                                      add lr, r2, #0xc
006cb824  84 20 82 e2                                      add r2, r2, #0x84
006cb828  00 40 a0 e1                                      mov r4, r0
006cb82c  00 e0 80 e5                                      str lr, [r0]
006cb830  48 20 80 e5                                      str r2, [r0, #0x48]
006cb834  04 c0 80 e5                                      str ip, [r0, #4]
006cb838  04 10 81 e2                                      add r1, r1, #4
006cb83c  3d 38 fb eb                                      bl #0x599938
006cb840  04 00 a0 e1                                      mov r0, r4
006cb844  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006cb848  84 92 2c 00 64 44 00 00 38 2b 00 00              .byte 0x84, 0x92, 0x2c, 0x00, 0x64, 0x44, 0x00, 0x00, 0x38, 0x2b, 0x00, 0x00

; FUNCTION 0x006cb854, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyCircle
; alias: _ZTv0_n12_N6glitch5scene27CSceneNodeAnimatorFlyCircleD1Ev
; demangled: virtual thunk to glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle()
; decoder-mode: arm
006cb854  00 30 90 e5                                      ldr r3, [r0]
006cb858  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006cb85c  03 00 80 e0                                      add r0, r0, r3
006cb860  e6 ff ff ea                                      b #0x6cb800

; FUNCTION 0x006cb864, declared_size=568, range_size=568, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyCircle
; alias: _ZN6glitch5scene27CSceneNodeAnimatorFlyCircle4initEv
; demangled: glitch::scene::CSceneNodeAnimatorFlyCircle::init()
; decoder-mode: arm
006cb864  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006cb868  00 40 a0 e1                                      mov r4, r0
006cb86c  28 d0 4d e2                                      sub sp, sp, #0x28
006cb870  18 00 80 e2                                      add r0, r0, #0x18
006cb874  19 4c f2 eb                                      bl #0x35e8e0
006cb878  1c 50 94 e5                                      ldr r5, [r4, #0x1c]
006cb87c  00 10 a0 e3                                      mov r1, #0
006cb880  05 00 a0 e1                                      mov r0, r5
006cb884  c0 09 f1 eb                                      bl #0x30df8c
006cb888  00 00 50 e3                                      cmp r0, #0
006cb88c  5b 00 00 1a                                      bne #0x6cba00
006cb890  20 70 94 e5                                      ldr r7, [r4, #0x20]
006cb894  02 11 a0 e3                                      mov r1, #0x80000000
006cb898  18 60 94 e5                                      ldr r6, [r4, #0x18]
006cb89c  07 00 a0 e1                                      mov r0, r7
006cb8a0  31 0d f1 eb                                      bl #0x30ed6c
006cb8a4  00 10 a0 e3                                      mov r1, #0
006cb8a8  00 80 a0 e1                                      mov r8, r0
006cb8ac  05 00 a0 e1                                      mov r0, r5
006cb8b0  2d 0d f1 eb                                      bl #0x30ed6c
006cb8b4  00 10 a0 e1                                      mov r1, r0
006cb8b8  08 00 a0 e1                                      mov r0, r8
006cb8bc  b8 0c f1 eb                                      bl #0x30eba4
006cb8c0  02 11 a0 e3                                      mov r1, #0x80000000
006cb8c4  1c 00 8d e5                                      str r0, [sp, #0x1c]
006cb8c8  06 00 a0 e1                                      mov r0, r6
006cb8cc  26 0d f1 eb                                      bl #0x30ed6c
006cb8d0  42 14 a0 e3                                      mov r1, #0x42000000
006cb8d4  00 80 a0 e1                                      mov r8, r0
006cb8d8  12 17 81 e2                                      add r1, r1, #0x480000
006cb8dc  07 00 a0 e1                                      mov r0, r7
006cb8e0  21 0d f1 eb                                      bl #0x30ed6c
006cb8e4  00 10 a0 e1                                      mov r1, r0
006cb8e8  08 00 a0 e1                                      mov r0, r8
006cb8ec  ac 0c f1 eb                                      bl #0x30eba4
006cb8f0  c2 14 a0 e3                                      mov r1, #0xc2000000
006cb8f4  20 00 8d e5                                      str r0, [sp, #0x20]
006cb8f8  12 17 81 e2                                      add r1, r1, #0x480000
006cb8fc  05 00 a0 e1                                      mov r0, r5
006cb900  19 0d f1 eb                                      bl #0x30ed6c
006cb904  00 10 a0 e3                                      mov r1, #0
006cb908  00 50 a0 e1                                      mov r5, r0
006cb90c  06 00 a0 e1                                      mov r0, r6
006cb910  15 0d f1 eb                                      bl #0x30ed6c
006cb914  00 10 a0 e1                                      mov r1, r0
006cb918  05 00 a0 e1                                      mov r0, r5
006cb91c  a0 0c f1 eb                                      bl #0x30eba4
006cb920  24 00 8d e5                                      str r0, [sp, #0x24]
006cb924  1c 00 8d e2                                      add r0, sp, #0x1c
006cb928  ec 4b f2 eb                                      bl #0x35e8e0
006cb92c  00 60 90 e5                                      ldr r6, [r0]
006cb930  20 90 94 e5                                      ldr sb, [r4, #0x20]
006cb934  1c a0 94 e5                                      ldr sl, [r4, #0x1c]
006cb938  30 60 84 e5                                      str r6, [r4, #0x30]
006cb93c  04 50 90 e5                                      ldr r5, [r0, #4]
006cb940  09 10 a0 e1                                      mov r1, sb
006cb944  34 50 84 e5                                      str r5, [r4, #0x34]
006cb948  08 70 90 e5                                      ldr r7, [r0, #8]
006cb94c  02 01 85 e2                                      add r0, r5, #0x80000000
006cb950  38 70 84 e5                                      str r7, [r4, #0x38]
006cb954  04 0d f1 eb                                      bl #0x30ed6c
006cb958  07 10 a0 e1                                      mov r1, r7
006cb95c  00 80 a0 e1                                      mov r8, r0
006cb960  0a 00 a0 e1                                      mov r0, sl
006cb964  00 0d f1 eb                                      bl #0x30ed6c
006cb968  00 10 a0 e1                                      mov r1, r0
006cb96c  08 00 a0 e1                                      mov r0, r8
006cb970  8b 0c f1 eb                                      bl #0x30eba4
006cb974  18 80 94 e5                                      ldr r8, [r4, #0x18]
006cb978  02 71 87 e2                                      add r7, r7, #0x80000000
006cb97c  04 00 8d e5                                      str r0, [sp, #4]
006cb980  08 10 a0 e1                                      mov r1, r8
006cb984  07 00 a0 e1                                      mov r0, r7
006cb988  f7 0c f1 eb                                      bl #0x30ed6c
006cb98c  06 10 a0 e1                                      mov r1, r6
006cb990  00 70 a0 e1                                      mov r7, r0
006cb994  09 00 a0 e1                                      mov r0, sb
006cb998  f3 0c f1 eb                                      bl #0x30ed6c
006cb99c  00 10 a0 e1                                      mov r1, r0
006cb9a0  07 00 a0 e1                                      mov r0, r7
006cb9a4  7e 0c f1 eb                                      bl #0x30eba4
006cb9a8  02 11 86 e2                                      add r1, r6, #0x80000000
006cb9ac  08 00 8d e5                                      str r0, [sp, #8]
006cb9b0  0a 00 a0 e1                                      mov r0, sl
006cb9b4  ec 0c f1 eb                                      bl #0x30ed6c
006cb9b8  05 10 a0 e1                                      mov r1, r5
006cb9bc  00 60 a0 e1                                      mov r6, r0
006cb9c0  08 00 a0 e1                                      mov r0, r8
006cb9c4  e8 0c f1 eb                                      bl #0x30ed6c
006cb9c8  00 10 a0 e1                                      mov r1, r0
006cb9cc  06 00 a0 e1                                      mov r0, r6
006cb9d0  73 0c f1 eb                                      bl #0x30eba4
006cb9d4  0c 00 8d e5                                      str r0, [sp, #0xc]
006cb9d8  04 00 8d e2                                      add r0, sp, #4
006cb9dc  bf 4b f2 eb                                      bl #0x35e8e0
006cb9e0  00 30 90 e5                                      ldr r3, [r0]
006cb9e4  24 30 84 e5                                      str r3, [r4, #0x24]
006cb9e8  04 30 90 e5                                      ldr r3, [r0, #4]
006cb9ec  28 30 84 e5                                      str r3, [r4, #0x28]
006cb9f0  08 30 90 e5                                      ldr r3, [r0, #8]
006cb9f4  2c 30 84 e5                                      str r3, [r4, #0x2c]
006cb9f8  28 d0 8d e2                                      add sp, sp, #0x28
006cb9fc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006cba00  20 70 94 e5                                      ldr r7, [r4, #0x20]
006cba04  c2 14 a0 e3                                      mov r1, #0xc2000000
006cba08  12 17 81 e2                                      add r1, r1, #0x480000
006cba0c  07 00 a0 e1                                      mov r0, r7
006cba10  d5 0c f1 eb                                      bl #0x30ed6c
006cba14  00 10 a0 e3                                      mov r1, #0
006cba18  00 80 a0 e1                                      mov r8, r0
006cba1c  05 00 a0 e1                                      mov r0, r5
006cba20  d1 0c f1 eb                                      bl #0x30ed6c
006cba24  00 10 a0 e1                                      mov r1, r0
006cba28  08 00 a0 e1                                      mov r0, r8
006cba2c  5c 0c f1 eb                                      bl #0x30eba4
006cba30  18 60 94 e5                                      ldr r6, [r4, #0x18]
006cba34  02 11 a0 e3                                      mov r1, #0x80000000
006cba38  10 00 8d e5                                      str r0, [sp, #0x10]
006cba3c  06 00 a0 e1                                      mov r0, r6
006cba40  c9 0c f1 eb                                      bl #0x30ed6c
006cba44  00 10 a0 e3                                      mov r1, #0
006cba48  00 80 a0 e1                                      mov r8, r0
006cba4c  07 00 a0 e1                                      mov r0, r7
006cba50  c5 0c f1 eb                                      bl #0x30ed6c
006cba54  00 10 a0 e1                                      mov r1, r0
006cba58  08 00 a0 e1                                      mov r0, r8
006cba5c  50 0c f1 eb                                      bl #0x30eba4
006cba60  02 11 a0 e3                                      mov r1, #0x80000000
006cba64  14 00 8d e5                                      str r0, [sp, #0x14]
006cba68  05 00 a0 e1                                      mov r0, r5
006cba6c  be 0c f1 eb                                      bl #0x30ed6c
006cba70  42 14 a0 e3                                      mov r1, #0x42000000
006cba74  00 50 a0 e1                                      mov r5, r0
006cba78  12 17 81 e2                                      add r1, r1, #0x480000
006cba7c  06 00 a0 e1                                      mov r0, r6
006cba80  b9 0c f1 eb                                      bl #0x30ed6c
006cba84  00 10 a0 e1                                      mov r1, r0
006cba88  05 00 a0 e1                                      mov r0, r5
006cba8c  44 0c f1 eb                                      bl #0x30eba4
006cba90  18 00 8d e5                                      str r0, [sp, #0x18]
006cba94  10 00 8d e2                                      add r0, sp, #0x10
006cba98  a2 ff ff ea                                      b #0x6cb928

; FUNCTION 0x006cba9c, declared_size=436, range_size=436, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyCircle
; alias: _ZN6glitch5scene27CSceneNodeAnimatorFlyCircle21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CSceneNodeAnimatorFlyCircle::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006cba9c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006cbaa0  98 21 9f e5                                      ldr r2, [pc, #0x198]
006cbaa4  18 d0 4d e2                                      sub sp, sp, #0x18
006cbaa8  00 40 a0 e1                                      mov r4, r0
006cbaac  00 30 91 e5                                      ldr r3, [r1]
006cbab0  02 20 8f e0                                      add r2, pc, r2
006cbab4  0c 00 8d e2                                      add r0, sp, #0xc
006cbab8  01 50 a0 e1                                      mov r5, r1
006cbabc  0f e0 a0 e1                                      mov lr, pc
006cbac0  b4 f1 93 e5                                      ldr pc, [r3, #0x1b4]
006cbac4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006cbac8  10 20 9d e5                                      ldr r2, [sp, #0x10]
006cbacc  14 30 9d e5                                      ldr r3, [sp, #0x14]
006cbad0  0c 10 84 e5                                      str r1, [r4, #0xc]
006cbad4  68 11 9f e5                                      ldr r1, [pc, #0x168]
006cbad8  10 20 84 e5                                      str r2, [r4, #0x10]
006cbadc  14 30 84 e5                                      str r3, [r4, #0x14]
006cbae0  00 30 95 e5                                      ldr r3, [r5]
006cbae4  01 10 8f e0                                      add r1, pc, r1
006cbae8  05 00 a0 e1                                      mov r0, r5
006cbaec  0f e0 a0 e1                                      mov lr, pc
006cbaf0  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006cbaf4  4c 11 9f e5                                      ldr r1, [pc, #0x14c]
006cbaf8  3c 00 84 e5                                      str r0, [r4, #0x3c]
006cbafc  00 30 95 e5                                      ldr r3, [r5]
006cbb00  01 10 8f e0                                      add r1, pc, r1
006cbb04  05 00 a0 e1                                      mov r0, r5
006cbb08  0f e0 a0 e1                                      mov lr, pc
006cbb0c  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006cbb10  34 21 9f e5                                      ldr r2, [pc, #0x134]
006cbb14  40 00 84 e5                                      str r0, [r4, #0x40]
006cbb18  05 10 a0 e1                                      mov r1, r5
006cbb1c  02 20 8f e0                                      add r2, pc, r2
006cbb20  00 30 95 e5                                      ldr r3, [r5]
006cbb24  0d 00 a0 e1                                      mov r0, sp
006cbb28  0f e0 a0 e1                                      mov lr, pc
006cbb2c  b4 f1 93 e5                                      ldr pc, [r3, #0x1b4]
006cbb30  00 50 9d e5                                      ldr r5, [sp]
006cbb34  04 70 9d e5                                      ldr r7, [sp, #4]
006cbb38  08 80 9d e5                                      ldr r8, [sp, #8]
006cbb3c  00 30 a0 e3                                      mov r3, #0
006cbb40  bd 17 03 e3                                      movw r1, #0x37bd
006cbb44  44 30 84 e5                                      str r3, [r4, #0x44]
006cbb48  86 15 43 e3                                      movt r1, #0x3586
006cbb4c  00 60 a0 e3                                      mov r6, #0
006cbb50  18 50 84 e5                                      str r5, [r4, #0x18]
006cbb54  1c 70 84 e5                                      str r7, [r4, #0x1c]
006cbb58  20 80 84 e5                                      str r8, [r4, #0x20]
006cbb5c  05 00 a0 e1                                      mov r0, r5
006cbb60  0f 0c f1 eb                                      bl #0x30eba4
006cbb64  06 10 a0 e1                                      mov r1, r6
006cbb68  51 0a f1 eb                                      bl #0x30e4b4
006cbb6c  00 00 50 e3                                      cmp r0, #0
006cbb70  07 00 00 0a                                      beq #0x6cbb94
006cbb74  bd 17 03 e3                                      movw r1, #0x37bd
006cbb78  86 15 43 e3                                      movt r1, #0x3586
006cbb7c  05 00 a0 e1                                      mov r0, r5
006cbb80  09 0a f1 eb                                      bl #0x30e3ac
006cbb84  06 10 a0 e1                                      mov r1, r6
006cbb88  87 0b f1 eb                                      bl #0x30e9ac
006cbb8c  00 00 50 e3                                      cmp r0, #0
006cbb90  05 00 00 1a                                      bne #0x6cbbac
006cbb94  18 00 84 e2                                      add r0, r4, #0x18
006cbb98  50 4b f2 eb                                      bl #0x35e8e0
006cbb9c  04 00 a0 e1                                      mov r0, r4
006cbba0  2f ff ff eb                                      bl #0x6cb864
006cbba4  18 d0 8d e2                                      add sp, sp, #0x18
006cbba8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006cbbac  bd 17 03 e3                                      movw r1, #0x37bd
006cbbb0  86 15 43 e3                                      movt r1, #0x3586
006cbbb4  07 00 a0 e1                                      mov r0, r7
006cbbb8  f9 0b f1 eb                                      bl #0x30eba4
006cbbbc  06 10 a0 e1                                      mov r1, r6
006cbbc0  3b 0a f1 eb                                      bl #0x30e4b4
006cbbc4  00 00 50 e3                                      cmp r0, #0
006cbbc8  f1 ff ff 0a                                      beq #0x6cbb94
006cbbcc  bd 17 03 e3                                      movw r1, #0x37bd
006cbbd0  86 15 43 e3                                      movt r1, #0x3586
006cbbd4  07 00 a0 e1                                      mov r0, r7
006cbbd8  f3 09 f1 eb                                      bl #0x30e3ac
006cbbdc  06 10 a0 e1                                      mov r1, r6
006cbbe0  71 0b f1 eb                                      bl #0x30e9ac
006cbbe4  00 00 50 e3                                      cmp r0, #0
006cbbe8  e9 ff ff 0a                                      beq #0x6cbb94
006cbbec  bd 17 03 e3                                      movw r1, #0x37bd
006cbbf0  86 15 43 e3                                      movt r1, #0x3586
006cbbf4  08 00 a0 e1                                      mov r0, r8
006cbbf8  e9 0b f1 eb                                      bl #0x30eba4
006cbbfc  06 10 a0 e1                                      mov r1, r6
006cbc00  2b 0a f1 eb                                      bl #0x30e4b4
006cbc04  00 00 50 e3                                      cmp r0, #0
006cbc08  e1 ff ff 0a                                      beq #0x6cbb94
006cbc0c  bd 17 03 e3                                      movw r1, #0x37bd
006cbc10  86 15 43 e3                                      movt r1, #0x3586
006cbc14  08 00 a0 e1                                      mov r0, r8
006cbc18  e3 09 f1 eb                                      bl #0x30e3ac
006cbc1c  06 10 a0 e1                                      mov r1, r6
006cbc20  61 0b f1 eb                                      bl #0x30e9ac
006cbc24  00 00 50 e3                                      cmp r0, #0
006cbc28  d9 ff ff 0a                                      beq #0x6cbb94
006cbc2c  fe 35 a0 e3                                      mov r3, #0x3f800000
006cbc30  20 60 84 e5                                      str r6, [r4, #0x20]
006cbc34  18 60 84 e5                                      str r6, [r4, #0x18]
006cbc38  1c 30 84 e5                                      str r3, [r4, #0x1c]
006cbc3c  d6 ff ff ea                                      b #0x6cbb9c
; mapping-symbol data/literal pool
006cbc40  c8 f5 1f 00 44 d8 20 00 f0 d8 20 00 0c 97 21 00  .byte 0xc8, 0xf5, 0x1f, 0x00, 0x44, 0xd8, 0x20, 0x00, 0xf0, 0xd8, 0x20, 0x00, 0x0c, 0x97, 0x21, 0x00

; FUNCTION 0x006cbc50, declared_size=296, range_size=296, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyCircle
; alias: _ZN6glitch5scene27CSceneNodeAnimatorFlyCircle11animateNodeEPNS0_10ISceneNodeEj
; demangled: glitch::scene::CSceneNodeAnimatorFlyCircle::animateNode(glitch::scene::ISceneNode*, unsigned int)
; decoder-mode: arm
006cbc50  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006cbc54  00 50 51 e2                                      subs r5, r1, #0
006cbc58  14 d0 4d e2                                      sub sp, sp, #0x14
006cbc5c  00 40 a0 e1                                      mov r4, r0
006cbc60  42 00 00 0a                                      beq #0x6cbd70
006cbc64  44 00 90 e5                                      ldr r0, [r0, #0x44]
006cbc68  02 00 60 e0                                      rsb r0, r0, r2
006cbc6c  9b 09 f1 eb                                      bl #0x30e2e0
006cbc70  40 10 94 e5                                      ldr r1, [r4, #0x40]
006cbc74  3c 0c f1 eb                                      bl #0x30ed6c
006cbc78  00 30 95 e5                                      ldr r3, [r5]
006cbc7c  00 70 a0 e1                                      mov r7, r0
006cbc80  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
006cbc84  a4 a0 93 e5                                      ldr sl, [r3, #0xa4]
006cbc88  b1 0a f1 eb                                      bl #0x30e754
006cbc8c  00 80 a0 e1                                      mov r8, r0
006cbc90  07 00 a0 e1                                      mov r0, r7
006cbc94  9b 0b f1 eb                                      bl #0x30eb08
006cbc98  28 10 94 e5                                      ldr r1, [r4, #0x28]
006cbc9c  00 70 a0 e1                                      mov r7, r0
006cbca0  08 00 a0 e1                                      mov r0, r8
006cbca4  30 0c f1 eb                                      bl #0x30ed6c
006cbca8  34 10 94 e5                                      ldr r1, [r4, #0x34]
006cbcac  00 90 a0 e1                                      mov sb, r0
006cbcb0  07 00 a0 e1                                      mov r0, r7
006cbcb4  2c 0c f1 eb                                      bl #0x30ed6c
006cbcb8  00 10 a0 e1                                      mov r1, r0
006cbcbc  09 00 a0 e1                                      mov r0, sb
006cbcc0  b7 0b f1 eb                                      bl #0x30eba4
006cbcc4  00 10 a0 e1                                      mov r1, r0
006cbcc8  06 00 a0 e1                                      mov r0, r6
006cbccc  26 0c f1 eb                                      bl #0x30ed6c
006cbcd0  10 10 94 e5                                      ldr r1, [r4, #0x10]
006cbcd4  b2 0b f1 eb                                      bl #0x30eba4
006cbcd8  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
006cbcdc  00 b0 a0 e1                                      mov fp, r0
006cbce0  08 00 a0 e1                                      mov r0, r8
006cbce4  20 0c f1 eb                                      bl #0x30ed6c
006cbce8  38 10 94 e5                                      ldr r1, [r4, #0x38]
006cbcec  00 90 a0 e1                                      mov sb, r0
006cbcf0  07 00 a0 e1                                      mov r0, r7
006cbcf4  1c 0c f1 eb                                      bl #0x30ed6c
006cbcf8  00 10 a0 e1                                      mov r1, r0
006cbcfc  09 00 a0 e1                                      mov r0, sb
006cbd00  a7 0b f1 eb                                      bl #0x30eba4
006cbd04  00 10 a0 e1                                      mov r1, r0
006cbd08  06 00 a0 e1                                      mov r0, r6
006cbd0c  16 0c f1 eb                                      bl #0x30ed6c
006cbd10  14 10 94 e5                                      ldr r1, [r4, #0x14]
006cbd14  a2 0b f1 eb                                      bl #0x30eba4
006cbd18  24 10 94 e5                                      ldr r1, [r4, #0x24]
006cbd1c  00 90 a0 e1                                      mov sb, r0
006cbd20  08 00 a0 e1                                      mov r0, r8
006cbd24  10 0c f1 eb                                      bl #0x30ed6c
006cbd28  30 10 94 e5                                      ldr r1, [r4, #0x30]
006cbd2c  00 80 a0 e1                                      mov r8, r0
006cbd30  07 00 a0 e1                                      mov r0, r7
006cbd34  0c 0c f1 eb                                      bl #0x30ed6c
006cbd38  00 10 a0 e1                                      mov r1, r0
006cbd3c  08 00 a0 e1                                      mov r0, r8
006cbd40  97 0b f1 eb                                      bl #0x30eba4
006cbd44  00 10 a0 e1                                      mov r1, r0
006cbd48  06 00 a0 e1                                      mov r0, r6
006cbd4c  06 0c f1 eb                                      bl #0x30ed6c
006cbd50  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006cbd54  92 0b f1 eb                                      bl #0x30eba4
006cbd58  04 10 8d e2                                      add r1, sp, #4
006cbd5c  04 00 8d e5                                      str r0, [sp, #4]
006cbd60  08 b0 8d e5                                      str fp, [sp, #8]
006cbd64  0c 90 8d e5                                      str sb, [sp, #0xc]
006cbd68  05 00 a0 e1                                      mov r0, r5
006cbd6c  3a ff 2f e1                                      blx sl
006cbd70  14 d0 8d e2                                      add sp, sp, #0x14
006cbd74  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006cbd78, declared_size=288, range_size=288, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyCircle
; alias: _ZN6glitch5scene27CSceneNodeAnimatorFlyCircleC1EjRKNS_4core8vector3dIfEEffS6_
; demangled: glitch::scene::CSceneNodeAnimatorFlyCircle::CSceneNodeAnimatorFlyCircle(unsigned int, glitch::core::vector3d<float> const&, float, float, glitch::core::vector3d<float> const&)
; decoder-mode: arm
006cbd78  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006cbd7c  00 51 9f e5                                      ldr r5, [pc, #0x100]
006cbd80  00 c1 9f e5                                      ldr ip, [pc, #0x100]
006cbd84  00 e1 9f e5                                      ldr lr, [pc, #0x100]
006cbd88  05 50 8f e0                                      add r5, pc, r5
006cbd8c  0c 60 95 e7                                      ldr r6, [r5, ip]
006cbd90  0e e0 95 e7                                      ldr lr, [r5, lr]
006cbd94  f4 c0 9f e5                                      ldr ip, [pc, #0xf4]
006cbd98  08 80 96 e5                                      ldr r8, [r6, #8]
006cbd9c  08 e0 8e e2                                      add lr, lr, #8
006cbda0  01 70 a0 e3                                      mov r7, #1
006cbda4  4c 70 80 e5                                      str r7, [r0, #0x4c]
006cbda8  00 80 80 e5                                      str r8, [r0]
006cbdac  48 e0 80 e5                                      str lr, [r0, #0x48]
006cbdb0  0c c0 95 e7                                      ldr ip, [r5, ip]
006cbdb4  0c e0 18 e5                                      ldr lr, [r8, #-0xc]
006cbdb8  0c 80 96 e5                                      ldr r8, [r6, #0xc]
006cbdbc  08 c0 8c e2                                      add ip, ip, #8
006cbdc0  00 40 a0 e1                                      mov r4, r0
006cbdc4  0e 80 80 e7                                      str r8, [r0, lr]
006cbdc8  04 c0 80 e5                                      str ip, [r0, #4]
006cbdcc  02 70 a0 e1                                      mov r7, r2
006cbdd0  24 a0 9d e5                                      ldr sl, [sp, #0x24]
006cbdd4  01 80 a0 e1                                      mov r8, r1
006cbdd8  03 90 a0 e1                                      mov sb, r3
006cbddc  ea 54 ff eb                                      bl #0x6a118c
006cbde0  04 20 96 e5                                      ldr r2, [r6, #4]
006cbde4  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
006cbde8  10 c0 96 e5                                      ldr ip, [r6, #0x10]
006cbdec  00 20 84 e5                                      str r2, [r4]
006cbdf0  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006cbdf4  03 30 95 e7                                      ldr r3, [r5, r3]
006cbdf8  00 c0 84 e7                                      str ip, [r4, r0]
006cbdfc  0c 10 83 e2                                      add r1, r3, #0xc
006cbe00  68 20 83 e2                                      add r2, r3, #0x68
006cbe04  00 00 a0 e3                                      mov r0, #0
006cbe08  84 30 83 e2                                      add r3, r3, #0x84
006cbe0c  08 00 84 e5                                      str r0, [r4, #8]
006cbe10  48 30 84 e5                                      str r3, [r4, #0x48]
006cbe14  06 00 84 e8                                      stm r4, {r1, r2}
006cbe18  00 20 97 e5                                      ldr r2, [r7]
006cbe1c  00 30 a0 e3                                      mov r3, #0
006cbe20  04 00 a0 e1                                      mov r0, r4
006cbe24  0c 20 84 e5                                      str r2, [r4, #0xc]
006cbe28  04 20 97 e5                                      ldr r2, [r7, #4]
006cbe2c  10 20 84 e5                                      str r2, [r4, #0x10]
006cbe30  08 20 97 e5                                      ldr r2, [r7, #8]
006cbe34  14 20 84 e5                                      str r2, [r4, #0x14]
006cbe38  00 20 9a e5                                      ldr r2, [sl]
006cbe3c  18 20 84 e5                                      str r2, [r4, #0x18]
006cbe40  04 20 9a e5                                      ldr r2, [sl, #4]
006cbe44  1c 20 84 e5                                      str r2, [r4, #0x1c]
006cbe48  08 20 9a e5                                      ldr r2, [sl, #8]
006cbe4c  38 30 84 e5                                      str r3, [r4, #0x38]
006cbe50  3c 90 84 e5                                      str sb, [r4, #0x3c]
006cbe54  20 20 84 e5                                      str r2, [r4, #0x20]
006cbe58  20 20 9d e5                                      ldr r2, [sp, #0x20]
006cbe5c  44 80 84 e5                                      str r8, [r4, #0x44]
006cbe60  24 30 84 e5                                      str r3, [r4, #0x24]
006cbe64  40 20 84 e5                                      str r2, [r4, #0x40]
006cbe68  28 30 84 e5                                      str r3, [r4, #0x28]
006cbe6c  2c 30 84 e5                                      str r3, [r4, #0x2c]
006cbe70  30 30 84 e5                                      str r3, [r4, #0x30]
006cbe74  34 30 84 e5                                      str r3, [r4, #0x34]
006cbe78  79 fe ff eb                                      bl #0x6cb864
006cbe7c  04 00 a0 e1                                      mov r0, r4
006cbe80  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006cbe84  08 8d 2c 00 38 2b 00 00 44 2b 00 00 4c 27 00 00  .byte 0x08, 0x8d, 0x2c, 0x00, 0x38, 0x2b, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x4c, 0x27, 0x00, 0x00
006cbe94  64 44 00 00                                      .byte 0x64, 0x44, 0x00, 0x00

; FUNCTION 0x006cbe98, declared_size=72, range_size=72, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyCircle
; alias: _ZN6glitch5scene27CSceneNodeAnimatorFlyCircle11createCloneEv
; demangled: glitch::scene::CSceneNodeAnimatorFlyCircle::createClone()
; decoder-mode: arm
006cbe98  30 40 2d e9                                      push {r4, r5, lr}
006cbe9c  00 10 a0 e3                                      mov r1, #0
006cbea0  00 40 a0 e1                                      mov r4, r0
006cbea4  0c d0 4d e2                                      sub sp, sp, #0xc
006cbea8  50 00 a0 e3                                      mov r0, #0x50
006cbeac  be a0 f9 eb                                      bl #0x5341ac
006cbeb0  40 c0 94 e5                                      ldr ip, [r4, #0x40]
006cbeb4  44 10 94 e5                                      ldr r1, [r4, #0x44]
006cbeb8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
006cbebc  00 50 a0 e1                                      mov r5, r0
006cbec0  0c 20 84 e2                                      add r2, r4, #0xc
006cbec4  18 40 84 e2                                      add r4, r4, #0x18
006cbec8  00 c0 8d e5                                      str ip, [sp]
006cbecc  04 40 8d e5                                      str r4, [sp, #4]
006cbed0  a8 ff ff eb                                      bl #0x6cbd78
006cbed4  05 00 a0 e1                                      mov r0, r5
006cbed8  0c d0 8d e2                                      add sp, sp, #0xc
006cbedc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006cbee0, declared_size=284, range_size=284, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyCircle
; alias: _ZN6glitch5scene27CSceneNodeAnimatorFlyCircleC2EjRKNS_4core8vector3dIfEEffS6_
; demangled: glitch::scene::CSceneNodeAnimatorFlyCircle::CSceneNodeAnimatorFlyCircle(unsigned int, glitch::core::vector3d<float> const&, float, float, glitch::core::vector3d<float> const&)
; decoder-mode: arm
006cbee0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006cbee4  04 70 81 e2                                      add r7, r1, #4
006cbee8  fc 50 9f e5                                      ldr r5, [pc, #0xfc]
006cbeec  04 c0 97 e5                                      ldr ip, [r7, #4]
006cbef0  01 60 a0 e1                                      mov r6, r1
006cbef4  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
006cbef8  05 50 8f e0                                      add r5, pc, r5
006cbefc  00 c0 80 e5                                      str ip, [r0]
006cbf00  01 10 95 e7                                      ldr r1, [r5, r1]
006cbf04  08 e0 97 e5                                      ldr lr, [r7, #8]
006cbf08  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
006cbf0c  08 10 81 e2                                      add r1, r1, #8
006cbf10  00 40 a0 e1                                      mov r4, r0
006cbf14  0c e0 80 e7                                      str lr, [r0, ip]
006cbf18  04 10 80 e5                                      str r1, [r0, #4]
006cbf1c  03 80 a0 e1                                      mov r8, r3
006cbf20  28 a0 9d e5                                      ldr sl, [sp, #0x28]
006cbf24  02 90 a0 e1                                      mov sb, r2
006cbf28  97 54 ff eb                                      bl #0x6a118c
006cbf2c  04 20 96 e5                                      ldr r2, [r6, #4]
006cbf30  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
006cbf34  00 20 84 e5                                      str r2, [r4]
006cbf38  03 30 95 e7                                      ldr r3, [r5, r3]
006cbf3c  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
006cbf40  0c 00 97 e5                                      ldr r0, [r7, #0xc]
006cbf44  68 30 83 e2                                      add r3, r3, #0x68
006cbf48  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
006cbf4c  01 00 84 e7                                      str r0, [r4, r1]
006cbf50  04 30 84 e5                                      str r3, [r4, #4]
006cbf54  00 30 a0 e3                                      mov r3, #0
006cbf58  08 30 84 e5                                      str r3, [r4, #8]
006cbf5c  00 10 96 e5                                      ldr r1, [r6]
006cbf60  02 20 95 e7                                      ldr r2, [r5, r2]
006cbf64  00 30 a0 e3                                      mov r3, #0
006cbf68  00 10 84 e5                                      str r1, [r4]
006cbf6c  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
006cbf70  14 c0 96 e5                                      ldr ip, [r6, #0x14]
006cbf74  68 20 82 e2                                      add r2, r2, #0x68
006cbf78  04 00 a0 e1                                      mov r0, r4
006cbf7c  01 c0 84 e7                                      str ip, [r4, r1]
006cbf80  04 20 84 e5                                      str r2, [r4, #4]
006cbf84  00 20 98 e5                                      ldr r2, [r8]
006cbf88  0c 20 84 e5                                      str r2, [r4, #0xc]
006cbf8c  04 20 98 e5                                      ldr r2, [r8, #4]
006cbf90  10 20 84 e5                                      str r2, [r4, #0x10]
006cbf94  08 20 98 e5                                      ldr r2, [r8, #8]
006cbf98  14 20 84 e5                                      str r2, [r4, #0x14]
006cbf9c  00 20 9a e5                                      ldr r2, [sl]
006cbfa0  18 20 84 e5                                      str r2, [r4, #0x18]
006cbfa4  04 20 9a e5                                      ldr r2, [sl, #4]
006cbfa8  1c 20 84 e5                                      str r2, [r4, #0x1c]
006cbfac  08 20 9a e5                                      ldr r2, [sl, #8]
006cbfb0  38 30 84 e5                                      str r3, [r4, #0x38]
006cbfb4  24 30 84 e5                                      str r3, [r4, #0x24]
006cbfb8  20 20 84 e5                                      str r2, [r4, #0x20]
006cbfbc  28 30 84 e5                                      str r3, [r4, #0x28]
006cbfc0  2c 30 84 e5                                      str r3, [r4, #0x2c]
006cbfc4  30 30 84 e5                                      str r3, [r4, #0x30]
006cbfc8  34 30 84 e5                                      str r3, [r4, #0x34]
006cbfcc  20 30 9d e5                                      ldr r3, [sp, #0x20]
006cbfd0  3c 30 84 e5                                      str r3, [r4, #0x3c]
006cbfd4  24 30 9d e5                                      ldr r3, [sp, #0x24]
006cbfd8  44 90 84 e5                                      str sb, [r4, #0x44]
006cbfdc  40 30 84 e5                                      str r3, [r4, #0x40]
006cbfe0  1f fe ff eb                                      bl #0x6cb864
006cbfe4  04 00 a0 e1                                      mov r0, r4
006cbfe8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006cbfec  98 8b 2c 00 4c 27 00 00 08 23 00 00 64 44 00 00  .byte 0x98, 0x8b, 0x2c, 0x00, 0x4c, 0x27, 0x00, 0x00, 0x08, 0x23, 0x00, 0x00, 0x64, 0x44, 0x00, 0x00

; FUNCTION 0x006cbffc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyCircle
; alias: _ZThn4_N6glitch5scene27CSceneNodeAnimatorFlyCircleD0Ev
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle()
; decoder-mode: arm
006cbffc  04 00 40 e2                                      sub r0, r0, #4
006cc000  ff ff ff ea                                      b #0x6cc004

; FUNCTION 0x006cc004, declared_size=92, range_size=92, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyCircle
; alias: _ZN6glitch5scene27CSceneNodeAnimatorFlyCircleD0Ev
; demangled: glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle()
; decoder-mode: arm
006cc004  48 30 9f e5                                      ldr r3, [pc, #0x48]
006cc008  48 20 9f e5                                      ldr r2, [pc, #0x48]
006cc00c  48 10 9f e5                                      ldr r1, [pc, #0x48]
006cc010  03 30 8f e0                                      add r3, pc, r3
006cc014  02 20 93 e7                                      ldr r2, [r3, r2]
006cc018  01 10 93 e7                                      ldr r1, [r3, r1]
006cc01c  10 40 2d e9                                      push {r4, lr}
006cc020  68 c0 82 e2                                      add ip, r2, #0x68
006cc024  0c e0 82 e2                                      add lr, r2, #0xc
006cc028  84 20 82 e2                                      add r2, r2, #0x84
006cc02c  00 40 a0 e1                                      mov r4, r0
006cc030  00 e0 80 e5                                      str lr, [r0]
006cc034  48 20 80 e5                                      str r2, [r0, #0x48]
006cc038  04 c0 80 e5                                      str ip, [r0, #4]
006cc03c  04 10 81 e2                                      add r1, r1, #4
006cc040  3c 36 fb eb                                      bl #0x599938
006cc044  04 00 a0 e1                                      mov r0, r4
006cc048  98 08 f1 eb                                      bl #0x30e2b0
006cc04c  04 00 a0 e1                                      mov r0, r4
006cc050  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006cc054  80 8a 2c 00 64 44 00 00 38 2b 00 00              .byte 0x80, 0x8a, 0x2c, 0x00, 0x64, 0x44, 0x00, 0x00, 0x38, 0x2b, 0x00, 0x00

; FUNCTION 0x006cc060, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyCircle
; alias: _ZTv0_n12_N6glitch5scene27CSceneNodeAnimatorFlyCircleD0Ev
; demangled: virtual thunk to glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle()
; decoder-mode: arm
006cc060  00 30 90 e5                                      ldr r3, [r0]
006cc064  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006cc068  03 00 80 e0                                      add r0, r0, r3
006cc06c  e4 ff ff ea                                      b #0x6cc004
