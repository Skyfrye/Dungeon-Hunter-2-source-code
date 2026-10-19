; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006c77e4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZNK6glitch5scene27CSceneNodeAnimatorCameraFPS22isEventReceiverEnabledEv
; demangled: glitch::scene::CSceneNodeAnimatorCameraFPS::isEventReceiverEnabled() const
; decoder-mode: arm
006c77e4  01 00 a0 e3                                      mov r0, #1
006c77e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c77ec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZNK6glitch5scene27CSceneNodeAnimatorCameraFPS7getTypeEv
; demangled: glitch::scene::CSceneNodeAnimatorCameraFPS::getType() const
; decoder-mode: arm
006c77ec  07 00 a0 e3                                      mov r0, #7
006c77f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c77f4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZThn4_N6glitch5scene27CSceneNodeAnimatorCameraFPS7onEventERKNS_6SEventE
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorCameraFPS::onEvent(glitch::SEvent const&)
; decoder-mode: arm
006c77f4  04 00 40 e2                                      sub r0, r0, #4
006c77f8  ff ff ff ea                                      b #0x6c77fc

; FUNCTION 0x006c77fc, declared_size=300, range_size=300, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZN6glitch5scene27CSceneNodeAnimatorCameraFPS7onEventERKNS_6SEventE
; demangled: glitch::scene::CSceneNodeAnimatorCameraFPS::onEvent(glitch::SEvent const&)
; decoder-mode: arm
006c77fc  70 40 2d e9                                      push {r4, r5, r6, lr}
006c7800  00 50 91 e5                                      ldr r5, [r1]
006c7804  08 d0 4d e2                                      sub sp, sp, #8
006c7808  01 40 a0 e1                                      mov r4, r1
006c780c  01 00 55 e3                                      cmp r5, #1
006c7810  00 60 a0 e1                                      mov r6, r0
006c7814  17 00 00 0a                                      beq #0x6c7878
006c7818  02 00 55 e3                                      cmp r5, #2
006c781c  02 00 00 0a                                      beq #0x6c782c
006c7820  00 00 a0 e3                                      mov r0, #0
006c7824  08 d0 8d e2                                      add sp, sp, #8
006c7828  70 80 bd e8                                      pop {r4, r5, r6, pc}
006c782c  30 00 90 e5                                      ldr r0, [r0, #0x30]
006c7830  34 50 96 e5                                      ldr r5, [r6, #0x34]
006c7834  05 50 60 e0                                      rsb r5, r0, r5
006c7838  c5 51 b0 e1                                      asrs r5, r5, #3
006c783c  f7 ff ff 0a                                      beq #0x6c7820
006c7840  04 30 90 e5                                      ldr r3, [r0, #4]
006c7844  0c c0 91 e5                                      ldr ip, [r1, #0xc]
006c7848  0c 00 53 e1                                      cmp r3, ip
006c784c  00 30 a0 13                                      movne r3, #0
006c7850  03 00 00 1a                                      bne #0x6c7864
006c7854  19 00 00 ea                                      b #0x6c78c0
006c7858  04 10 92 e5                                      ldr r1, [r2, #4]
006c785c  0c 00 51 e1                                      cmp r1, ip
006c7860  15 00 00 0a                                      beq #0x6c78bc
006c7864  01 30 83 e2                                      add r3, r3, #1
006c7868  05 00 53 e1                                      cmp r3, r5
006c786c  83 21 80 e0                                      add r2, r0, r3, lsl #3
006c7870  f8 ff ff 1a                                      bne #0x6c7858
006c7874  e9 ff ff ea                                      b #0x6c7820
006c7878  14 30 91 e5                                      ldr r3, [r1, #0x14]
006c787c  06 00 53 e3                                      cmp r3, #6
006c7880  e6 ff ff 1a                                      bne #0x6c7820
006c7884  0c 30 90 e5                                      ldr r3, [r0, #0xc]
006c7888  00 00 53 e3                                      cmp r3, #0
006c788c  11 00 00 0a                                      beq #0x6c78d8
006c7890  03 10 a0 e1                                      mov r1, r3
006c7894  0d 00 a0 e1                                      mov r0, sp
006c7898  00 30 93 e5                                      ldr r3, [r3]
006c789c  0f e0 a0 e1                                      mov lr, pc
006c78a0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006c78a4  04 30 9d e5                                      ldr r3, [sp, #4]
006c78a8  00 20 9d e5                                      ldr r2, [sp]
006c78ac  05 00 a0 e1                                      mov r0, r5
006c78b0  48 30 86 e5                                      str r3, [r6, #0x48]
006c78b4  44 20 86 e5                                      str r2, [r6, #0x44]
006c78b8  d9 ff ff ea                                      b #0x6c7824
006c78bc  02 00 a0 e1                                      mov r0, r2
006c78c0  00 20 90 e5                                      ldr r2, [r0]
006c78c4  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
006c78c8  01 00 a0 e3                                      mov r0, #1
006c78cc  02 60 86 e0                                      add r6, r6, r2
006c78d0  4c 30 c6 e5                                      strb r3, [r6, #0x4c]
006c78d4  d2 ff ff ea                                      b #0x6c7824
006c78d8  08 00 91 e5                                      ldr r0, [r1, #8]
006c78dc  05 0d 40 e2                                      sub r0, r0, #0x140
006c78e0  1f 1c f1 eb                                      bl #0x30e964
006c78e4  11 13 a0 e3                                      mov r1, #0x44000000
006c78e8  02 16 81 e2                                      add r1, r1, #0x200000
006c78ec  e8 1c f1 eb                                      bl #0x30ec94
006c78f0  3f 14 a0 e3                                      mov r1, #0x3f000000
006c78f4  aa 1c f1 eb                                      bl #0x30eba4
006c78f8  44 00 86 e5                                      str r0, [r6, #0x44]
006c78fc  0c 00 94 e5                                      ldr r0, [r4, #0xc]
006c7900  f0 00 40 e2                                      sub r0, r0, #0xf0
006c7904  16 1c f1 eb                                      bl #0x30e964
006c7908  43 14 a0 e3                                      mov r1, #0x43000000
006c790c  0f 16 81 e2                                      add r1, r1, #0xf00000
006c7910  df 1c f1 eb                                      bl #0x30ec94
006c7914  3f 14 a0 e3                                      mov r1, #0x3f000000
006c7918  a1 1c f1 eb                                      bl #0x30eba4
006c791c  48 00 86 e5                                      str r0, [r6, #0x48]
006c7920  05 00 a0 e1                                      mov r0, r5
006c7924  be ff ff ea                                      b #0x6c7824

; FUNCTION 0x006c7928, declared_size=32, range_size=32, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZN6glitch5scene27CSceneNodeAnimatorCameraFPS9allKeysUpEv
; demangled: glitch::scene::CSceneNodeAnimatorCameraFPS::allKeysUp()
; decoder-mode: arm
006c7928  00 30 a0 e3                                      mov r3, #0
006c792c  51 30 c0 e5                                      strb r3, [r0, #0x51]
006c7930  4c 30 c0 e5                                      strb r3, [r0, #0x4c]
006c7934  4d 30 c0 e5                                      strb r3, [r0, #0x4d]
006c7938  4e 30 c0 e5                                      strb r3, [r0, #0x4e]
006c793c  4f 30 c0 e5                                      strb r3, [r0, #0x4f]
006c7940  50 30 c0 e5                                      strb r3, [r0, #0x50]
006c7944  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c7948, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZN6glitch5scene27CSceneNodeAnimatorCameraFPS14setRotateSpeedEf
; demangled: glitch::scene::CSceneNodeAnimatorCameraFPS::setRotateSpeed(float)
; decoder-mode: arm
006c7948  18 10 80 e5                                      str r1, [r0, #0x18]
006c794c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c7950, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZN6glitch5scene27CSceneNodeAnimatorCameraFPS12setMoveSpeedEf
; demangled: glitch::scene::CSceneNodeAnimatorCameraFPS::setMoveSpeed(float)
; decoder-mode: arm
006c7950  14 10 80 e5                                      str r1, [r0, #0x14]
006c7954  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c7958, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZNK6glitch5scene27CSceneNodeAnimatorCameraFPS14getRotateSpeedEv
; demangled: glitch::scene::CSceneNodeAnimatorCameraFPS::getRotateSpeed() const
; decoder-mode: arm
006c7958  18 00 90 e5                                      ldr r0, [r0, #0x18]
006c795c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c7960, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZNK6glitch5scene27CSceneNodeAnimatorCameraFPS12getMoveSpeedEv
; demangled: glitch::scene::CSceneNodeAnimatorCameraFPS::getMoveSpeed() const
; decoder-mode: arm
006c7960  14 00 90 e5                                      ldr r0, [r0, #0x14]
006c7964  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c7968, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZN6glitch5scene27CSceneNodeAnimatorCameraFPS19setVerticalMovementEb
; demangled: glitch::scene::CSceneNodeAnimatorCameraFPS::setVerticalMovement(bool)
; decoder-mode: arm
006c7968  01 10 21 e2                                      eor r1, r1, #1
006c796c  53 10 c0 e5                                      strb r1, [r0, #0x53]
006c7970  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c7a00, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZThn4_N6glitch5scene27CSceneNodeAnimatorCameraFPSD1Ev
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS()
; decoder-mode: arm
006c7a00  04 00 40 e2                                      sub r0, r0, #4
006c7a04  ff ff ff ea                                      b #0x6c7a08

; FUNCTION 0x006c7a08, declared_size=160, range_size=160, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZN6glitch5scene27CSceneNodeAnimatorCameraFPSD1Ev
; demangled: glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS()
; decoder-mode: arm
006c7a08  70 40 2d e9                                      push {r4, r5, r6, lr}
006c7a0c  84 50 9f e5                                      ldr r5, [pc, #0x84]
006c7a10  84 30 9f e5                                      ldr r3, [pc, #0x84]
006c7a14  00 40 a0 e1                                      mov r4, r0
006c7a18  05 50 8f e0                                      add r5, pc, r5
006c7a1c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
006c7a20  03 30 95 e7                                      ldr r3, [r5, r3]
006c7a24  00 00 50 e3                                      cmp r0, #0
006c7a28  80 20 83 e2                                      add r2, r3, #0x80
006c7a2c  0c 10 83 e2                                      add r1, r3, #0xc
006c7a30  9c 30 83 e2                                      add r3, r3, #0x9c
006c7a34  00 10 84 e5                                      str r1, [r4]
006c7a38  5c 30 84 e5                                      str r3, [r4, #0x5c]
006c7a3c  04 20 84 e5                                      str r2, [r4, #4]
006c7a40  00 00 00 0a                                      beq #0x6c7a48
006c7a44  ce 56 f1 eb                                      bl #0x31d584
006c7a48  30 00 94 e5                                      ldr r0, [r4, #0x30]
006c7a4c  00 00 50 e3                                      cmp r0, #0
006c7a50  00 00 00 0a                                      beq #0x6c7a58
006c7a54  7d 22 f1 eb                                      bl #0x310450
006c7a58  40 20 9f e5                                      ldr r2, [pc, #0x40]
006c7a5c  40 30 9f e5                                      ldr r3, [pc, #0x40]
006c7a60  04 00 a0 e1                                      mov r0, r4
006c7a64  02 10 95 e7                                      ldr r1, [r5, r2]
006c7a68  03 30 95 e7                                      ldr r3, [r5, r3]
006c7a6c  04 20 91 e5                                      ldr r2, [r1, #4]
006c7a70  18 c0 91 e5                                      ldr ip, [r1, #0x18]
006c7a74  80 30 83 e2                                      add r3, r3, #0x80
006c7a78  00 20 84 e5                                      str r2, [r4]
006c7a7c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006c7a80  08 10 81 e2                                      add r1, r1, #8
006c7a84  02 c0 84 e7                                      str ip, [r4, r2]
006c7a88  04 30 84 e5                                      str r3, [r4, #4]
006c7a8c  a9 47 fb eb                                      bl #0x599938
006c7a90  04 00 a0 e1                                      mov r0, r4
006c7a94  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006c7a98  78 d0 2c 00 ec 28 00 00 24 14 00 00 00 33 00 00  .byte 0x78, 0xd0, 0x2c, 0x00, 0xec, 0x28, 0x00, 0x00, 0x24, 0x14, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00

; FUNCTION 0x006c7aa8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZThn4_N6glitch5scene27CSceneNodeAnimatorCameraFPSD0Ev
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS()
; decoder-mode: arm
006c7aa8  04 00 40 e2                                      sub r0, r0, #4
006c7aac  ff ff ff ea                                      b #0x6c7ab0

; FUNCTION 0x006c7ab0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZN6glitch5scene27CSceneNodeAnimatorCameraFPSD0Ev
; demangled: glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS()
; decoder-mode: arm
006c7ab0  10 40 2d e9                                      push {r4, lr}
006c7ab4  00 40 a0 e1                                      mov r4, r0
006c7ab8  d2 ff ff eb                                      bl #0x6c7a08
006c7abc  04 00 a0 e1                                      mov r0, r4
006c7ac0  fa 19 f1 eb                                      bl #0x30e2b0
006c7ac4  04 00 a0 e1                                      mov r0, r4
006c7ac8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006c7acc, declared_size=160, range_size=160, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZN6glitch5scene27CSceneNodeAnimatorCameraFPSD2Ev
; demangled: glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS()
; decoder-mode: arm
006c7acc  70 40 2d e9                                      push {r4, r5, r6, lr}
006c7ad0  00 30 91 e5                                      ldr r3, [r1]
006c7ad4  01 60 a0 e1                                      mov r6, r1
006c7ad8  80 50 9f e5                                      ldr r5, [pc, #0x80]
006c7adc  00 30 80 e5                                      str r3, [r0]
006c7ae0  0c 20 13 e5                                      ldr r2, [r3, #-0xc]
006c7ae4  1c 10 91 e5                                      ldr r1, [r1, #0x1c]
006c7ae8  74 30 9f e5                                      ldr r3, [pc, #0x74]
006c7aec  05 50 8f e0                                      add r5, pc, r5
006c7af0  02 10 80 e7                                      str r1, [r0, r2]
006c7af4  00 40 a0 e1                                      mov r4, r0
006c7af8  03 30 95 e7                                      ldr r3, [r5, r3]
006c7afc  0c 00 90 e5                                      ldr r0, [r0, #0xc]
006c7b00  80 30 83 e2                                      add r3, r3, #0x80
006c7b04  00 00 50 e3                                      cmp r0, #0
006c7b08  04 30 84 e5                                      str r3, [r4, #4]
006c7b0c  00 00 00 0a                                      beq #0x6c7b14
006c7b10  9b 56 f1 eb                                      bl #0x31d584
006c7b14  30 00 94 e5                                      ldr r0, [r4, #0x30]
006c7b18  00 00 50 e3                                      cmp r0, #0
006c7b1c  00 00 00 0a                                      beq #0x6c7b24
006c7b20  4a 22 f1 eb                                      bl #0x310450
006c7b24  04 20 96 e5                                      ldr r2, [r6, #4]
006c7b28  38 30 9f e5                                      ldr r3, [pc, #0x38]
006c7b2c  04 10 86 e2                                      add r1, r6, #4
006c7b30  00 20 84 e5                                      str r2, [r4]
006c7b34  03 30 95 e7                                      ldr r3, [r5, r3]
006c7b38  14 00 91 e5                                      ldr r0, [r1, #0x14]
006c7b3c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006c7b40  80 30 83 e2                                      add r3, r3, #0x80
006c7b44  04 10 81 e2                                      add r1, r1, #4
006c7b48  02 00 84 e7                                      str r0, [r4, r2]
006c7b4c  04 30 84 e5                                      str r3, [r4, #4]
006c7b50  04 00 a0 e1                                      mov r0, r4
006c7b54  77 47 fb eb                                      bl #0x599938
006c7b58  04 00 a0 e1                                      mov r0, r4
006c7b5c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006c7b60  a4 cf 2c 00 ec 28 00 00 00 33 00 00              .byte 0xa4, 0xcf, 0x2c, 0x00, 0xec, 0x28, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00

; FUNCTION 0x006c7f1c, declared_size=2832, range_size=2832, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZN6glitch5scene27CSceneNodeAnimatorCameraFPS11animateNodeEPNS0_10ISceneNodeEj
; demangled: glitch::scene::CSceneNodeAnimatorCameraFPS::animateNode(glitch::scene::ISceneNode*, unsigned int)
; decoder-mode: arm
006c7f1c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c7f20  00 40 a0 e1                                      mov r4, r0
006c7f24  00 30 91 e5                                      ldr r3, [r1]
006c7f28  cc d0 4d e2                                      sub sp, sp, #0xcc
006c7f2c  01 00 a0 e1                                      mov r0, r1
006c7f30  01 50 a0 e1                                      mov r5, r1
006c7f34  02 70 a0 e1                                      mov r7, r2
006c7f38  0f e0 a0 e1                                      mov lr, pc
006c7f3c  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
006c7f40  63 31 06 e3                                      movw r3, #0x6163
006c7f44  6d 3f 45 e3                                      movt r3, #0x5f6d
006c7f48  03 00 50 e1                                      cmp r0, r3
006c7f4c  01 00 00 0a                                      beq #0x6c7f58
006c7f50  cc d0 8d e2                                      add sp, sp, #0xcc
006c7f54  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006c7f58  52 30 d4 e5                                      ldrb r3, [r4, #0x52]
006c7f5c  00 00 53 e3                                      cmp r3, #0
006c7f60  20 00 94 05                                      ldreq r0, [r4, #0x20]
006c7f64  e4 01 00 1a                                      bne #0x6c86fc
006c7f68  07 00 60 e0                                      rsb r0, r0, r7
006c7f6c  db 18 f1 eb                                      bl #0x30e2e0
006c7f70  20 70 84 e5                                      str r7, [r4, #0x20]
006c7f74  00 30 95 e5                                      ldr r3, [r5]
006c7f78  00 60 a0 e1                                      mov r6, r0
006c7f7c  05 00 a0 e1                                      mov r0, r5
006c7f80  0f e0 a0 e1                                      mov lr, pc
006c7f84  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
006c7f88  00 10 90 e5                                      ldr r1, [r0]
006c7f8c  00 30 95 e5                                      ldr r3, [r5]
006c7f90  00 20 a0 e1                                      mov r2, r0
006c7f94  ac 10 8d e5                                      str r1, [sp, #0xac]
006c7f98  04 10 92 e5                                      ldr r1, [r2, #4]
006c7f9c  a0 c0 8d e2                                      add ip, sp, #0xa0
006c7fa0  0c c0 8d e5                                      str ip, [sp, #0xc]
006c7fa4  b0 10 8d e5                                      str r1, [sp, #0xb0]
006c7fa8  08 20 92 e5                                      ldr r2, [r2, #8]
006c7fac  05 00 a0 e1                                      mov r0, r5
006c7fb0  b4 20 8d e5                                      str r2, [sp, #0xb4]
006c7fb4  0f e0 a0 e1                                      mov lr, pc
006c7fb8  08 f1 93 e5                                      ldr pc, [r3, #0x108]
006c7fbc  05 10 a0 e1                                      mov r1, r5
006c7fc0  00 70 a0 e1                                      mov r7, r0
006c7fc4  94 00 8d e2                                      add r0, sp, #0x94
006c7fc8  6c 3c fb eb                                      bl #0x597180
006c7fcc  04 00 97 e5                                      ldr r0, [r7, #4]
006c7fd0  98 10 9d e5                                      ldr r1, [sp, #0x98]
006c7fd4  f4 18 f1 eb                                      bl #0x30e3ac
006c7fd8  9c 10 9d e5                                      ldr r1, [sp, #0x9c]
006c7fdc  00 a0 a0 e1                                      mov sl, r0
006c7fe0  08 00 97 e5                                      ldr r0, [r7, #8]
006c7fe4  f0 18 f1 eb                                      bl #0x30e3ac
006c7fe8  94 10 9d e5                                      ldr r1, [sp, #0x94]
006c7fec  00 80 a0 e1                                      mov r8, r0
006c7ff0  00 00 97 e5                                      ldr r0, [r7]
006c7ff4  ec 18 f1 eb                                      bl #0x30e3ac
006c7ff8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006c7ffc  a0 00 8d e5                                      str r0, [sp, #0xa0]
006c8000  88 00 8d e2                                      add r0, sp, #0x88
006c8004  a4 a0 8d e5                                      str sl, [sp, #0xa4]
006c8008  a8 80 8d e5                                      str r8, [sp, #0xa8]
006c800c  d6 fe ff eb                                      bl #0x6c7b6c
006c8010  0c 70 94 e5                                      ldr r7, [r4, #0xc]
006c8014  00 00 57 e3                                      cmp r7, #0
006c8018  32 02 00 0a                                      beq #0x6c88e8
006c801c  44 80 94 e5                                      ldr r8, [r4, #0x44]
006c8020  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
006c8024  08 00 a0 e1                                      mov r0, r8
006c8028  d7 17 f1 eb                                      bl #0x30df8c
006c802c  00 00 50 e3                                      cmp r0, #0
006c8030  b9 01 00 0a                                      beq #0x6c871c
006c8034  48 00 94 e5                                      ldr r0, [r4, #0x48]
006c8038  40 10 94 e5                                      ldr r1, [r4, #0x40]
006c803c  d2 17 f1 eb                                      bl #0x30df8c
006c8040  00 00 50 e3                                      cmp r0, #0
006c8044  b4 01 00 0a                                      beq #0x6c871c
006c8048  14 80 8d e2                                      add r8, sp, #0x14
006c804c  42 34 a0 e3                                      mov r3, #0x42000000
006c8050  00 70 a0 e3                                      mov r7, #0
006c8054  32 37 83 e2                                      add r3, r3, #0xc80000
006c8058  40 20 a0 e3                                      mov r2, #0x40
006c805c  00 10 a0 e3                                      mov r1, #0
006c8060  08 00 a0 e1                                      mov r0, r8
006c8064  84 30 8d e5                                      str r3, [sp, #0x84]
006c8068  a8 30 8d e5                                      str r3, [sp, #0xa8]
006c806c  a0 70 8d e5                                      str r7, [sp, #0xa0]
006c8070  a4 70 8d e5                                      str r7, [sp, #0xa4]
006c8074  7c 70 8d e5                                      str r7, [sp, #0x7c]
006c8078  80 70 8d e5                                      str r7, [sp, #0x80]
006c807c  f7 18 f1 eb                                      bl #0x30e460
006c8080  35 1a 0f e3                                      movw r1, #0xfa35
006c8084  01 20 a0 e3                                      mov r2, #1
006c8088  fe 35 a0 e3                                      mov r3, #0x3f800000
006c808c  88 00 9d e5                                      ldr r0, [sp, #0x88]
006c8090  8e 1c 43 e3                                      movt r1, #0x3c8e
006c8094  54 20 cd e5                                      strb r2, [sp, #0x54]
006c8098  50 30 8d e5                                      str r3, [sp, #0x50]
006c809c  14 30 8d e5                                      str r3, [sp, #0x14]
006c80a0  28 30 8d e5                                      str r3, [sp, #0x28]
006c80a4  3c 30 8d e5                                      str r3, [sp, #0x3c]
006c80a8  2f 1b f1 eb                                      bl #0x30ed6c
006c80ac  35 1a 0f e3                                      movw r1, #0xfa35
006c80b0  64 00 8d e5                                      str r0, [sp, #0x64]
006c80b4  8e 1c 43 e3                                      movt r1, #0x3c8e
006c80b8  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
006c80bc  2a 1b f1 eb                                      bl #0x30ed6c
006c80c0  64 10 8d e2                                      add r1, sp, #0x64
006c80c4  68 00 8d e5                                      str r0, [sp, #0x68]
006c80c8  08 00 a0 e1                                      mov r0, r8
006c80cc  6c 70 8d e5                                      str r7, [sp, #0x6c]
006c80d0  06 ff ff eb                                      bl #0x6c7cf0
006c80d4  a0 b0 9d e5                                      ldr fp, [sp, #0xa0]
006c80d8  14 10 9d e5                                      ldr r1, [sp, #0x14]
006c80dc  a4 90 9d e5                                      ldr sb, [sp, #0xa4]
006c80e0  0b 00 a0 e1                                      mov r0, fp
006c80e4  20 1b f1 eb                                      bl #0x30ed6c
006c80e8  24 10 9d e5                                      ldr r1, [sp, #0x24]
006c80ec  00 30 a0 e1                                      mov r3, r0
006c80f0  09 00 a0 e1                                      mov r0, sb
006c80f4  08 30 8d e5                                      str r3, [sp, #8]
006c80f8  1b 1b f1 eb                                      bl #0x30ed6c
006c80fc  08 30 9d e5                                      ldr r3, [sp, #8]
006c8100  00 10 a0 e1                                      mov r1, r0
006c8104  a8 a0 9d e5                                      ldr sl, [sp, #0xa8]
006c8108  03 00 a0 e1                                      mov r0, r3
006c810c  a4 1a f1 eb                                      bl #0x30eba4
006c8110  34 10 9d e5                                      ldr r1, [sp, #0x34]
006c8114  00 30 a0 e1                                      mov r3, r0
006c8118  0a 00 a0 e1                                      mov r0, sl
006c811c  08 30 8d e5                                      str r3, [sp, #8]
006c8120  11 1b f1 eb                                      bl #0x30ed6c
006c8124  08 30 9d e5                                      ldr r3, [sp, #8]
006c8128  00 10 a0 e1                                      mov r1, r0
006c812c  03 00 a0 e1                                      mov r0, r3
006c8130  9b 1a f1 eb                                      bl #0x30eba4
006c8134  44 10 9d e5                                      ldr r1, [sp, #0x44]
006c8138  99 1a f1 eb                                      bl #0x30eba4
006c813c  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c8140  00 20 a0 e1                                      mov r2, r0
006c8144  0b 00 a0 e1                                      mov r0, fp
006c8148  04 20 8d e5                                      str r2, [sp, #4]
006c814c  06 1b f1 eb                                      bl #0x30ed6c
006c8150  28 10 9d e5                                      ldr r1, [sp, #0x28]
006c8154  00 30 a0 e1                                      mov r3, r0
006c8158  09 00 a0 e1                                      mov r0, sb
006c815c  08 30 8d e5                                      str r3, [sp, #8]
006c8160  01 1b f1 eb                                      bl #0x30ed6c
006c8164  08 30 9d e5                                      ldr r3, [sp, #8]
006c8168  00 10 a0 e1                                      mov r1, r0
006c816c  03 00 a0 e1                                      mov r0, r3
006c8170  8b 1a f1 eb                                      bl #0x30eba4
006c8174  38 10 9d e5                                      ldr r1, [sp, #0x38]
006c8178  00 30 a0 e1                                      mov r3, r0
006c817c  0a 00 a0 e1                                      mov r0, sl
006c8180  08 30 8d e5                                      str r3, [sp, #8]
006c8184  f8 1a f1 eb                                      bl #0x30ed6c
006c8188  08 30 9d e5                                      ldr r3, [sp, #8]
006c818c  00 10 a0 e1                                      mov r1, r0
006c8190  03 00 a0 e1                                      mov r0, r3
006c8194  82 1a f1 eb                                      bl #0x30eba4
006c8198  48 10 9d e5                                      ldr r1, [sp, #0x48]
006c819c  80 1a f1 eb                                      bl #0x30eba4
006c81a0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006c81a4  00 30 a0 e1                                      mov r3, r0
006c81a8  0b 00 a0 e1                                      mov r0, fp
006c81ac  08 30 8d e5                                      str r3, [sp, #8]
006c81b0  ed 1a f1 eb                                      bl #0x30ed6c
006c81b4  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006c81b8  00 b0 a0 e1                                      mov fp, r0
006c81bc  09 00 a0 e1                                      mov r0, sb
006c81c0  e9 1a f1 eb                                      bl #0x30ed6c
006c81c4  00 10 a0 e1                                      mov r1, r0
006c81c8  0b 00 a0 e1                                      mov r0, fp
006c81cc  74 1a f1 eb                                      bl #0x30eba4
006c81d0  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006c81d4  00 90 a0 e1                                      mov sb, r0
006c81d8  0a 00 a0 e1                                      mov r0, sl
006c81dc  e2 1a f1 eb                                      bl #0x30ed6c
006c81e0  00 10 a0 e1                                      mov r1, r0
006c81e4  09 00 a0 e1                                      mov r0, sb
006c81e8  6d 1a f1 eb                                      bl #0x30eba4
006c81ec  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
006c81f0  6b 1a f1 eb                                      bl #0x30eba4
006c81f4  04 20 9d e5                                      ldr r2, [sp, #4]
006c81f8  a0 20 8d e5                                      str r2, [sp, #0xa0]
006c81fc  53 10 d4 e5                                      ldrb r1, [r4, #0x53]
006c8200  08 30 9d e5                                      ldr r3, [sp, #8]
006c8204  a8 00 8d e5                                      str r0, [sp, #0xa8]
006c8208  00 00 51 e3                                      cmp r1, #0
006c820c  a4 30 8d e5                                      str r3, [sp, #0xa4]
006c8210  7c 20 8d 05                                      streq r2, [sp, #0x7c]
006c8214  80 30 8d 05                                      streq r3, [sp, #0x80]
006c8218  84 00 8d 05                                      streq r0, [sp, #0x84]
006c821c  4a 00 00 0a                                      beq #0x6c834c
006c8220  35 1a 0f e3                                      movw r1, #0xfa35
006c8224  8e 1c 43 e3                                      movt r1, #0x3c8e
006c8228  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
006c822c  58 70 8d e5                                      str r7, [sp, #0x58]
006c8230  cd 1a f1 eb                                      bl #0x30ed6c
006c8234  58 10 8d e2                                      add r1, sp, #0x58
006c8238  5c 00 8d e5                                      str r0, [sp, #0x5c]
006c823c  08 00 a0 e1                                      mov r0, r8
006c8240  60 70 8d e5                                      str r7, [sp, #0x60]
006c8244  a9 fe ff eb                                      bl #0x6c7cf0
006c8248  7c a0 9d e5                                      ldr sl, [sp, #0x7c]
006c824c  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c8250  80 80 9d e5                                      ldr r8, [sp, #0x80]
006c8254  0a 00 a0 e1                                      mov r0, sl
006c8258  c3 1a f1 eb                                      bl #0x30ed6c
006c825c  28 10 9d e5                                      ldr r1, [sp, #0x28]
006c8260  00 90 a0 e1                                      mov sb, r0
006c8264  08 00 a0 e1                                      mov r0, r8
006c8268  bf 1a f1 eb                                      bl #0x30ed6c
006c826c  00 10 a0 e1                                      mov r1, r0
006c8270  09 00 a0 e1                                      mov r0, sb
006c8274  4a 1a f1 eb                                      bl #0x30eba4
006c8278  84 70 9d e5                                      ldr r7, [sp, #0x84]
006c827c  00 90 a0 e1                                      mov sb, r0
006c8280  38 10 9d e5                                      ldr r1, [sp, #0x38]
006c8284  07 00 a0 e1                                      mov r0, r7
006c8288  b7 1a f1 eb                                      bl #0x30ed6c
006c828c  00 10 a0 e1                                      mov r1, r0
006c8290  09 00 a0 e1                                      mov r0, sb
006c8294  42 1a f1 eb                                      bl #0x30eba4
006c8298  48 10 9d e5                                      ldr r1, [sp, #0x48]
006c829c  40 1a f1 eb                                      bl #0x30eba4
006c82a0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006c82a4  00 b0 a0 e1                                      mov fp, r0
006c82a8  0a 00 a0 e1                                      mov r0, sl
006c82ac  ae 1a f1 eb                                      bl #0x30ed6c
006c82b0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006c82b4  00 90 a0 e1                                      mov sb, r0
006c82b8  08 00 a0 e1                                      mov r0, r8
006c82bc  aa 1a f1 eb                                      bl #0x30ed6c
006c82c0  00 10 a0 e1                                      mov r1, r0
006c82c4  09 00 a0 e1                                      mov r0, sb
006c82c8  35 1a f1 eb                                      bl #0x30eba4
006c82cc  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006c82d0  00 90 a0 e1                                      mov sb, r0
006c82d4  07 00 a0 e1                                      mov r0, r7
006c82d8  a3 1a f1 eb                                      bl #0x30ed6c
006c82dc  00 10 a0 e1                                      mov r1, r0
006c82e0  09 00 a0 e1                                      mov r0, sb
006c82e4  2e 1a f1 eb                                      bl #0x30eba4
006c82e8  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
006c82ec  2c 1a f1 eb                                      bl #0x30eba4
006c82f0  14 10 9d e5                                      ldr r1, [sp, #0x14]
006c82f4  00 90 a0 e1                                      mov sb, r0
006c82f8  0a 00 a0 e1                                      mov r0, sl
006c82fc  9a 1a f1 eb                                      bl #0x30ed6c
006c8300  24 10 9d e5                                      ldr r1, [sp, #0x24]
006c8304  00 a0 a0 e1                                      mov sl, r0
006c8308  08 00 a0 e1                                      mov r0, r8
006c830c  96 1a f1 eb                                      bl #0x30ed6c
006c8310  00 10 a0 e1                                      mov r1, r0
006c8314  0a 00 a0 e1                                      mov r0, sl
006c8318  21 1a f1 eb                                      bl #0x30eba4
006c831c  34 10 9d e5                                      ldr r1, [sp, #0x34]
006c8320  00 80 a0 e1                                      mov r8, r0
006c8324  07 00 a0 e1                                      mov r0, r7
006c8328  8f 1a f1 eb                                      bl #0x30ed6c
006c832c  00 10 a0 e1                                      mov r1, r0
006c8330  08 00 a0 e1                                      mov r0, r8
006c8334  1a 1a f1 eb                                      bl #0x30eba4
006c8338  44 10 9d e5                                      ldr r1, [sp, #0x44]
006c833c  18 1a f1 eb                                      bl #0x30eba4
006c8340  7c 00 8d e5                                      str r0, [sp, #0x7c]
006c8344  80 b0 8d e5                                      str fp, [sp, #0x80]
006c8348  84 90 8d e5                                      str sb, [sp, #0x84]
006c834c  7c 00 8d e2                                      add r0, sp, #0x7c
006c8350  62 59 f2 eb                                      bl #0x35e8e0
006c8354  4c 30 d4 e5                                      ldrb r3, [r4, #0x4c]
006c8358  00 00 53 e3                                      cmp r3, #0
006c835c  20 00 00 0a                                      beq #0x6c83e4
006c8360  80 10 9d e5                                      ldr r1, [sp, #0x80]
006c8364  06 00 a0 e1                                      mov r0, r6
006c8368  7f 1a f1 eb                                      bl #0x30ed6c
006c836c  14 70 94 e5                                      ldr r7, [r4, #0x14]
006c8370  00 10 a0 e1                                      mov r1, r0
006c8374  07 00 a0 e1                                      mov r0, r7
006c8378  7b 1a f1 eb                                      bl #0x30ed6c
006c837c  84 10 9d e5                                      ldr r1, [sp, #0x84]
006c8380  00 a0 a0 e1                                      mov sl, r0
006c8384  06 00 a0 e1                                      mov r0, r6
006c8388  77 1a f1 eb                                      bl #0x30ed6c
006c838c  00 10 a0 e1                                      mov r1, r0
006c8390  07 00 a0 e1                                      mov r0, r7
006c8394  74 1a f1 eb                                      bl #0x30ed6c
006c8398  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
006c839c  00 80 a0 e1                                      mov r8, r0
006c83a0  06 00 a0 e1                                      mov r0, r6
006c83a4  70 1a f1 eb                                      bl #0x30ed6c
006c83a8  00 10 a0 e1                                      mov r1, r0
006c83ac  07 00 a0 e1                                      mov r0, r7
006c83b0  6d 1a f1 eb                                      bl #0x30ed6c
006c83b4  00 10 a0 e1                                      mov r1, r0
006c83b8  ac 00 9d e5                                      ldr r0, [sp, #0xac]
006c83bc  f8 19 f1 eb                                      bl #0x30eba4
006c83c0  0a 10 a0 e1                                      mov r1, sl
006c83c4  ac 00 8d e5                                      str r0, [sp, #0xac]
006c83c8  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
006c83cc  f4 19 f1 eb                                      bl #0x30eba4
006c83d0  08 10 a0 e1                                      mov r1, r8
006c83d4  b0 00 8d e5                                      str r0, [sp, #0xb0]
006c83d8  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
006c83dc  f0 19 f1 eb                                      bl #0x30eba4
006c83e0  b4 00 8d e5                                      str r0, [sp, #0xb4]
006c83e4  4d 30 d4 e5                                      ldrb r3, [r4, #0x4d]
006c83e8  00 00 53 e3                                      cmp r3, #0
006c83ec  20 00 00 0a                                      beq #0x6c8474
006c83f0  80 10 9d e5                                      ldr r1, [sp, #0x80]
006c83f4  06 00 a0 e1                                      mov r0, r6
006c83f8  5b 1a f1 eb                                      bl #0x30ed6c
006c83fc  14 70 94 e5                                      ldr r7, [r4, #0x14]
006c8400  00 10 a0 e1                                      mov r1, r0
006c8404  07 00 a0 e1                                      mov r0, r7
006c8408  57 1a f1 eb                                      bl #0x30ed6c
006c840c  84 10 9d e5                                      ldr r1, [sp, #0x84]
006c8410  00 a0 a0 e1                                      mov sl, r0
006c8414  06 00 a0 e1                                      mov r0, r6
006c8418  53 1a f1 eb                                      bl #0x30ed6c
006c841c  00 10 a0 e1                                      mov r1, r0
006c8420  07 00 a0 e1                                      mov r0, r7
006c8424  50 1a f1 eb                                      bl #0x30ed6c
006c8428  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
006c842c  00 80 a0 e1                                      mov r8, r0
006c8430  06 00 a0 e1                                      mov r0, r6
006c8434  4c 1a f1 eb                                      bl #0x30ed6c
006c8438  00 10 a0 e1                                      mov r1, r0
006c843c  07 00 a0 e1                                      mov r0, r7
006c8440  49 1a f1 eb                                      bl #0x30ed6c
006c8444  00 10 a0 e1                                      mov r1, r0
006c8448  ac 00 9d e5                                      ldr r0, [sp, #0xac]
006c844c  d6 17 f1 eb                                      bl #0x30e3ac
006c8450  0a 10 a0 e1                                      mov r1, sl
006c8454  ac 00 8d e5                                      str r0, [sp, #0xac]
006c8458  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
006c845c  d2 17 f1 eb                                      bl #0x30e3ac
006c8460  08 10 a0 e1                                      mov r1, r8
006c8464  b0 00 8d e5                                      str r0, [sp, #0xb0]
006c8468  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
006c846c  ce 17 f1 eb                                      bl #0x30e3ac
006c8470  b4 00 8d e5                                      str r0, [sp, #0xb4]
006c8474  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
006c8478  05 00 a0 e1                                      mov r0, r5
006c847c  70 30 8d e5                                      str r3, [sp, #0x70]
006c8480  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
006c8484  74 30 8d e5                                      str r3, [sp, #0x74]
006c8488  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
006c848c  78 30 8d e5                                      str r3, [sp, #0x78]
006c8490  00 30 95 e5                                      ldr r3, [r5]
006c8494  0f e0 a0 e1                                      mov lr, pc
006c8498  18 f1 93 e5                                      ldr pc, [r3, #0x118]
006c849c  74 80 9d e5                                      ldr r8, [sp, #0x74]
006c84a0  08 90 90 e5                                      ldr sb, [r0, #8]
006c84a4  04 a0 90 e5                                      ldr sl, [r0, #4]
006c84a8  00 30 a0 e1                                      mov r3, r0
006c84ac  09 10 a0 e1                                      mov r1, sb
006c84b0  02 01 88 e2                                      add r0, r8, #0x80000000
006c84b4  00 70 93 e5                                      ldr r7, [r3]
006c84b8  2b 1a f1 eb                                      bl #0x30ed6c
006c84bc  0a 10 a0 e1                                      mov r1, sl
006c84c0  00 b0 a0 e1                                      mov fp, r0
006c84c4  78 00 9d e5                                      ldr r0, [sp, #0x78]
006c84c8  27 1a f1 eb                                      bl #0x30ed6c
006c84cc  00 10 a0 e1                                      mov r1, r0
006c84d0  0b 00 a0 e1                                      mov r0, fp
006c84d4  b2 19 f1 eb                                      bl #0x30eba4
006c84d8  78 20 9d e5                                      ldr r2, [sp, #0x78]
006c84dc  70 b0 9d e5                                      ldr fp, [sp, #0x70]
006c84e0  07 10 a0 e1                                      mov r1, r7
006c84e4  02 31 82 e2                                      add r3, r2, #0x80000000
006c84e8  70 00 8d e5                                      str r0, [sp, #0x70]
006c84ec  03 00 a0 e1                                      mov r0, r3
006c84f0  1d 1a f1 eb                                      bl #0x30ed6c
006c84f4  0b 10 a0 e1                                      mov r1, fp
006c84f8  00 30 a0 e1                                      mov r3, r0
006c84fc  09 00 a0 e1                                      mov r0, sb
006c8500  08 30 8d e5                                      str r3, [sp, #8]
006c8504  18 1a f1 eb                                      bl #0x30ed6c
006c8508  08 30 9d e5                                      ldr r3, [sp, #8]
006c850c  00 10 a0 e1                                      mov r1, r0
006c8510  03 00 a0 e1                                      mov r0, r3
006c8514  a2 19 f1 eb                                      bl #0x30eba4
006c8518  02 11 8b e2                                      add r1, fp, #0x80000000
006c851c  74 00 8d e5                                      str r0, [sp, #0x74]
006c8520  0a 00 a0 e1                                      mov r0, sl
006c8524  10 1a f1 eb                                      bl #0x30ed6c
006c8528  07 10 a0 e1                                      mov r1, r7
006c852c  00 a0 a0 e1                                      mov sl, r0
006c8530  08 00 a0 e1                                      mov r0, r8
006c8534  0c 1a f1 eb                                      bl #0x30ed6c
006c8538  00 10 a0 e1                                      mov r1, r0
006c853c  0a 00 a0 e1                                      mov r0, sl
006c8540  97 19 f1 eb                                      bl #0x30eba4
006c8544  53 30 d4 e5                                      ldrb r3, [r4, #0x53]
006c8548  78 00 8d e5                                      str r0, [sp, #0x78]
006c854c  70 00 8d e2                                      add r0, sp, #0x70
006c8550  00 00 53 e3                                      cmp r3, #0
006c8554  00 30 a0 13                                      movne r3, #0
006c8558  74 30 8d 15                                      strne r3, [sp, #0x74]
006c855c  df 58 f2 eb                                      bl #0x35e8e0
006c8560  4e 30 d4 e5                                      ldrb r3, [r4, #0x4e]
006c8564  00 00 53 e3                                      cmp r3, #0
006c8568  20 00 00 0a                                      beq #0x6c85f0
006c856c  74 10 9d e5                                      ldr r1, [sp, #0x74]
006c8570  06 00 a0 e1                                      mov r0, r6
006c8574  fc 19 f1 eb                                      bl #0x30ed6c
006c8578  14 70 94 e5                                      ldr r7, [r4, #0x14]
006c857c  00 10 a0 e1                                      mov r1, r0
006c8580  07 00 a0 e1                                      mov r0, r7
006c8584  f8 19 f1 eb                                      bl #0x30ed6c
006c8588  78 10 9d e5                                      ldr r1, [sp, #0x78]
006c858c  00 a0 a0 e1                                      mov sl, r0
006c8590  06 00 a0 e1                                      mov r0, r6
006c8594  f4 19 f1 eb                                      bl #0x30ed6c
006c8598  00 10 a0 e1                                      mov r1, r0
006c859c  07 00 a0 e1                                      mov r0, r7
006c85a0  f1 19 f1 eb                                      bl #0x30ed6c
006c85a4  70 10 9d e5                                      ldr r1, [sp, #0x70]
006c85a8  00 80 a0 e1                                      mov r8, r0
006c85ac  06 00 a0 e1                                      mov r0, r6
006c85b0  ed 19 f1 eb                                      bl #0x30ed6c
006c85b4  00 10 a0 e1                                      mov r1, r0
006c85b8  07 00 a0 e1                                      mov r0, r7
006c85bc  ea 19 f1 eb                                      bl #0x30ed6c
006c85c0  00 10 a0 e1                                      mov r1, r0
006c85c4  ac 00 9d e5                                      ldr r0, [sp, #0xac]
006c85c8  75 19 f1 eb                                      bl #0x30eba4
006c85cc  0a 10 a0 e1                                      mov r1, sl
006c85d0  ac 00 8d e5                                      str r0, [sp, #0xac]
006c85d4  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
006c85d8  71 19 f1 eb                                      bl #0x30eba4
006c85dc  08 10 a0 e1                                      mov r1, r8
006c85e0  b0 00 8d e5                                      str r0, [sp, #0xb0]
006c85e4  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
006c85e8  6d 19 f1 eb                                      bl #0x30eba4
006c85ec  b4 00 8d e5                                      str r0, [sp, #0xb4]
006c85f0  4f 30 d4 e5                                      ldrb r3, [r4, #0x4f]
006c85f4  00 00 53 e3                                      cmp r3, #0
006c85f8  20 00 00 0a                                      beq #0x6c8680
006c85fc  74 10 9d e5                                      ldr r1, [sp, #0x74]
006c8600  06 00 a0 e1                                      mov r0, r6
006c8604  d8 19 f1 eb                                      bl #0x30ed6c
006c8608  14 70 94 e5                                      ldr r7, [r4, #0x14]
006c860c  00 10 a0 e1                                      mov r1, r0
006c8610  07 00 a0 e1                                      mov r0, r7
006c8614  d4 19 f1 eb                                      bl #0x30ed6c
006c8618  78 10 9d e5                                      ldr r1, [sp, #0x78]
006c861c  00 a0 a0 e1                                      mov sl, r0
006c8620  06 00 a0 e1                                      mov r0, r6
006c8624  d0 19 f1 eb                                      bl #0x30ed6c
006c8628  00 10 a0 e1                                      mov r1, r0
006c862c  07 00 a0 e1                                      mov r0, r7
006c8630  cd 19 f1 eb                                      bl #0x30ed6c
006c8634  70 10 9d e5                                      ldr r1, [sp, #0x70]
006c8638  00 80 a0 e1                                      mov r8, r0
006c863c  06 00 a0 e1                                      mov r0, r6
006c8640  c9 19 f1 eb                                      bl #0x30ed6c
006c8644  00 10 a0 e1                                      mov r1, r0
006c8648  07 00 a0 e1                                      mov r0, r7
006c864c  c6 19 f1 eb                                      bl #0x30ed6c
006c8650  00 10 a0 e1                                      mov r1, r0
006c8654  ac 00 9d e5                                      ldr r0, [sp, #0xac]
006c8658  53 17 f1 eb                                      bl #0x30e3ac
006c865c  0a 10 a0 e1                                      mov r1, sl
006c8660  ac 00 8d e5                                      str r0, [sp, #0xac]
006c8664  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
006c8668  4f 17 f1 eb                                      bl #0x30e3ac
006c866c  08 10 a0 e1                                      mov r1, r8
006c8670  b0 00 8d e5                                      str r0, [sp, #0xb0]
006c8674  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
006c8678  4b 17 f1 eb                                      bl #0x30e3ac
006c867c  b4 00 8d e5                                      str r0, [sp, #0xb4]
006c8680  50 30 d4 e5                                      ldrb r3, [r4, #0x50]
006c8684  00 00 53 e3                                      cmp r3, #0
006c8688  6f 00 00 1a                                      bne #0x6c884c
006c868c  00 30 95 e5                                      ldr r3, [r5]
006c8690  05 00 a0 e1                                      mov r0, r5
006c8694  ac 10 8d e2                                      add r1, sp, #0xac
006c8698  0f e0 a0 e1                                      mov lr, pc
006c869c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
006c86a0  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
006c86a4  a4 70 9d e5                                      ldr r7, [sp, #0xa4]
006c86a8  a8 60 9d e5                                      ldr r6, [sp, #0xa8]
006c86ac  24 00 84 e5                                      str r0, [r4, #0x24]
006c86b0  28 70 84 e5                                      str r7, [r4, #0x28]
006c86b4  2c 60 84 e5                                      str r6, [r4, #0x2c]
006c86b8  ac 10 9d e5                                      ldr r1, [sp, #0xac]
006c86bc  38 19 f1 eb                                      bl #0x30eba4
006c86c0  b0 10 9d e5                                      ldr r1, [sp, #0xb0]
006c86c4  a0 00 8d e5                                      str r0, [sp, #0xa0]
006c86c8  07 00 a0 e1                                      mov r0, r7
006c86cc  34 19 f1 eb                                      bl #0x30eba4
006c86d0  b4 10 9d e5                                      ldr r1, [sp, #0xb4]
006c86d4  a4 00 8d e5                                      str r0, [sp, #0xa4]
006c86d8  06 00 a0 e1                                      mov r0, r6
006c86dc  30 19 f1 eb                                      bl #0x30eba4
006c86e0  a8 00 8d e5                                      str r0, [sp, #0xa8]
006c86e4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006c86e8  05 00 a0 e1                                      mov r0, r5
006c86ec  00 30 95 e5                                      ldr r3, [r5]
006c86f0  0f e0 a0 e1                                      mov lr, pc
006c86f4  04 f1 93 e5                                      ldr pc, [r3, #0x104]
006c86f8  14 fe ff ea                                      b #0x6c7f50
006c86fc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006c8700  00 00 53 e3                                      cmp r3, #0
006c8704  a6 00 00 1a                                      bne #0x6c89a4
006c8708  00 30 a0 e3                                      mov r3, #0
006c870c  52 30 c4 e5                                      strb r3, [r4, #0x52]
006c8710  20 70 84 e5                                      str r7, [r4, #0x20]
006c8714  07 00 a0 e1                                      mov r0, r7
006c8718  12 fe ff ea                                      b #0x6c7f68
006c871c  08 10 a0 e1                                      mov r1, r8
006c8720  3f 04 a0 e3                                      mov r0, #0x3f000000
006c8724  20 17 f1 eb                                      bl #0x30e3ac
006c8728  18 10 94 e5                                      ldr r1, [r4, #0x18]
006c872c  8e 19 f1 eb                                      bl #0x30ed6c
006c8730  00 10 a0 e1                                      mov r1, r0
006c8734  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
006c8738  19 19 f1 eb                                      bl #0x30eba4
006c873c  8c 00 8d e5                                      str r0, [sp, #0x8c]
006c8740  48 10 94 e5                                      ldr r1, [r4, #0x48]
006c8744  3f 04 a0 e3                                      mov r0, #0x3f000000
006c8748  17 17 f1 eb                                      bl #0x30e3ac
006c874c  18 10 94 e5                                      ldr r1, [r4, #0x18]
006c8750  85 19 f1 eb                                      bl #0x30ed6c
006c8754  00 10 a0 e1                                      mov r1, r0
006c8758  88 00 9d e5                                      ldr r0, [sp, #0x88]
006c875c  12 17 f1 eb                                      bl #0x30e3ac
006c8760  10 80 94 e5                                      ldr r8, [r4, #0x10]
006c8764  00 a0 a0 e1                                      mov sl, r0
006c8768  88 00 8d e5                                      str r0, [sp, #0x88]
006c876c  08 10 a0 e1                                      mov r1, r8
006c8770  08 00 a0 e1                                      mov r0, r8
006c8774  0a 19 f1 eb                                      bl #0x30eba4
006c8778  00 10 a0 e1                                      mov r1, r0
006c877c  0a 00 a0 e1                                      mov r0, sl
006c8780  dc 16 f1 eb                                      bl #0x30e2f8
006c8784  00 00 50 e3                                      cmp r0, #0
006c8788  20 00 00 0a                                      beq #0x6c8810
006c878c  43 04 a0 e3                                      mov r0, #0x43000000
006c8790  08 10 a0 e1                                      mov r1, r8
006c8794  2d 07 80 e2                                      add r0, r0, #0xb40000
006c8798  03 17 f1 eb                                      bl #0x30e3ac
006c879c  00 90 a0 e1                                      mov sb, r0
006c87a0  09 10 a0 e1                                      mov r1, sb
006c87a4  0a 00 a0 e1                                      mov r0, sl
006c87a8  d7 17 f1 eb                                      bl #0x30e70c
006c87ac  00 00 50 e3                                      cmp r0, #0
006c87b0  88 90 8d 15                                      strne sb, [sp, #0x88]
006c87b4  15 00 00 0a                                      beq #0x6c8810
006c87b8  00 00 57 e3                                      cmp r7, #0
006c87bc  90 00 00 0a                                      beq #0x6c8a04
006c87c0  3f 14 a0 e3                                      mov r1, #0x3f000000
006c87c4  07 00 a0 e1                                      mov r0, r7
006c87c8  00 30 97 e5                                      ldr r3, [r7]
006c87cc  01 20 a0 e1                                      mov r2, r1
006c87d0  0f e0 a0 e1                                      mov lr, pc
006c87d4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006c87d8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006c87dc  b8 00 8d e2                                      add r0, sp, #0xb8
006c87e0  03 10 a0 e1                                      mov r1, r3
006c87e4  00 30 93 e5                                      ldr r3, [r3]
006c87e8  0f e0 a0 e1                                      mov lr, pc
006c87ec  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006c87f0  b8 70 9d e5                                      ldr r7, [sp, #0xb8]
006c87f4  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
006c87f8  3c 70 84 e5                                      str r7, [r4, #0x3c]
006c87fc  40 30 84 e5                                      str r3, [r4, #0x40]
006c8800  40 30 94 e5                                      ldr r3, [r4, #0x40]
006c8804  44 70 84 e5                                      str r7, [r4, #0x44]
006c8808  48 30 84 e5                                      str r3, [r4, #0x48]
006c880c  0d fe ff ea                                      b #0x6c8048
006c8810  0a 00 a0 e1                                      mov r0, sl
006c8814  08 10 a0 e1                                      mov r1, r8
006c8818  b6 16 f1 eb                                      bl #0x30e2f8
006c881c  00 00 50 e3                                      cmp r0, #0
006c8820  e4 ff ff 0a                                      beq #0x6c87b8
006c8824  43 04 a0 e3                                      mov r0, #0x43000000
006c8828  08 10 a0 e1                                      mov r1, r8
006c882c  2d 07 80 e2                                      add r0, r0, #0xb40000
006c8830  dd 16 f1 eb                                      bl #0x30e3ac
006c8834  00 10 a0 e1                                      mov r1, r0
006c8838  0a 00 a0 e1                                      mov r0, sl
006c883c  b2 17 f1 eb                                      bl #0x30e70c
006c8840  00 00 50 e3                                      cmp r0, #0
006c8844  88 80 8d 15                                      strne r8, [sp, #0x88]
006c8848  da ff ff ea                                      b #0x6c87b8
006c884c  00 30 95 e5                                      ldr r3, [r5]
006c8850  05 00 a0 e1                                      mov r0, r5
006c8854  0f e0 a0 e1                                      mov lr, pc
006c8858  18 f1 93 e5                                      ldr pc, [r3, #0x118]
006c885c  04 10 90 e5                                      ldr r1, [r0, #4]
006c8860  00 80 a0 e1                                      mov r8, r0
006c8864  06 00 a0 e1                                      mov r0, r6
006c8868  3f 19 f1 eb                                      bl #0x30ed6c
006c886c  1c 70 94 e5                                      ldr r7, [r4, #0x1c]
006c8870  00 10 a0 e1                                      mov r1, r0
006c8874  07 00 a0 e1                                      mov r0, r7
006c8878  3b 19 f1 eb                                      bl #0x30ed6c
006c887c  08 10 98 e5                                      ldr r1, [r8, #8]
006c8880  00 90 a0 e1                                      mov sb, r0
006c8884  06 00 a0 e1                                      mov r0, r6
006c8888  37 19 f1 eb                                      bl #0x30ed6c
006c888c  00 10 a0 e1                                      mov r1, r0
006c8890  07 00 a0 e1                                      mov r0, r7
006c8894  34 19 f1 eb                                      bl #0x30ed6c
006c8898  00 10 98 e5                                      ldr r1, [r8]
006c889c  00 a0 a0 e1                                      mov sl, r0
006c88a0  06 00 a0 e1                                      mov r0, r6
006c88a4  30 19 f1 eb                                      bl #0x30ed6c
006c88a8  00 10 a0 e1                                      mov r1, r0
006c88ac  07 00 a0 e1                                      mov r0, r7
006c88b0  2d 19 f1 eb                                      bl #0x30ed6c
006c88b4  00 10 a0 e1                                      mov r1, r0
006c88b8  ac 00 9d e5                                      ldr r0, [sp, #0xac]
006c88bc  b8 18 f1 eb                                      bl #0x30eba4
006c88c0  09 10 a0 e1                                      mov r1, sb
006c88c4  ac 00 8d e5                                      str r0, [sp, #0xac]
006c88c8  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
006c88cc  b4 18 f1 eb                                      bl #0x30eba4
006c88d0  0a 10 a0 e1                                      mov r1, sl
006c88d4  b0 00 8d e5                                      str r0, [sp, #0xb0]
006c88d8  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
006c88dc  b0 18 f1 eb                                      bl #0x30eba4
006c88e0  b4 00 8d e5                                      str r0, [sp, #0xb4]
006c88e4  68 ff ff ea                                      b #0x6c868c
006c88e8  44 a0 94 e5                                      ldr sl, [r4, #0x44]
006c88ec  3f 04 a0 e3                                      mov r0, #0x3f000000
006c88f0  48 90 94 e5                                      ldr sb, [r4, #0x48]
006c88f4  0a 10 a0 e1                                      mov r1, sl
006c88f8  ab 16 f1 eb                                      bl #0x30e3ac
006c88fc  18 10 94 e5                                      ldr r1, [r4, #0x18]
006c8900  19 19 f1 eb                                      bl #0x30ed6c
006c8904  00 10 a0 e1                                      mov r1, r0
006c8908  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
006c890c  a4 18 f1 eb                                      bl #0x30eba4
006c8910  09 10 a0 e1                                      mov r1, sb
006c8914  8c 00 8d e5                                      str r0, [sp, #0x8c]
006c8918  3f 04 a0 e3                                      mov r0, #0x3f000000
006c891c  a2 16 f1 eb                                      bl #0x30e3ac
006c8920  18 10 94 e5                                      ldr r1, [r4, #0x18]
006c8924  10 19 f1 eb                                      bl #0x30ed6c
006c8928  00 10 a0 e1                                      mov r1, r0
006c892c  88 00 9d e5                                      ldr r0, [sp, #0x88]
006c8930  9d 16 f1 eb                                      bl #0x30e3ac
006c8934  10 70 94 e5                                      ldr r7, [r4, #0x10]
006c8938  00 80 a0 e1                                      mov r8, r0
006c893c  88 00 8d e5                                      str r0, [sp, #0x88]
006c8940  07 10 a0 e1                                      mov r1, r7
006c8944  07 00 a0 e1                                      mov r0, r7
006c8948  95 18 f1 eb                                      bl #0x30eba4
006c894c  00 10 a0 e1                                      mov r1, r0
006c8950  08 00 a0 e1                                      mov r0, r8
006c8954  67 16 f1 eb                                      bl #0x30e2f8
006c8958  00 00 50 e3                                      cmp r0, #0
006c895c  1c 00 00 1a                                      bne #0x6c89d4
006c8960  08 00 a0 e1                                      mov r0, r8
006c8964  07 10 a0 e1                                      mov r1, r7
006c8968  62 16 f1 eb                                      bl #0x30e2f8
006c896c  00 00 50 e3                                      cmp r0, #0
006c8970  08 00 00 0a                                      beq #0x6c8998
006c8974  43 04 a0 e3                                      mov r0, #0x43000000
006c8978  07 10 a0 e1                                      mov r1, r7
006c897c  2d 07 80 e2                                      add r0, r0, #0xb40000
006c8980  89 16 f1 eb                                      bl #0x30e3ac
006c8984  00 10 a0 e1                                      mov r1, r0
006c8988  08 00 a0 e1                                      mov r0, r8
006c898c  5e 17 f1 eb                                      bl #0x30e70c
006c8990  00 00 50 e3                                      cmp r0, #0
006c8994  88 70 8d 15                                      strne r7, [sp, #0x88]
006c8998  3c a0 84 e5                                      str sl, [r4, #0x3c]
006c899c  40 90 84 e5                                      str sb, [r4, #0x40]
006c89a0  a8 fd ff ea                                      b #0x6c8048
006c89a4  03 10 a0 e1                                      mov r1, r3
006c89a8  c0 00 8d e2                                      add r0, sp, #0xc0
006c89ac  00 30 93 e5                                      ldr r3, [r3]
006c89b0  0f e0 a0 e1                                      mov lr, pc
006c89b4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006c89b8  c0 20 9d e5                                      ldr r2, [sp, #0xc0]
006c89bc  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
006c89c0  44 20 84 e5                                      str r2, [r4, #0x44]
006c89c4  48 30 84 e5                                      str r3, [r4, #0x48]
006c89c8  3c 20 84 e5                                      str r2, [r4, #0x3c]
006c89cc  40 30 84 e5                                      str r3, [r4, #0x40]
006c89d0  4c ff ff ea                                      b #0x6c8708
006c89d4  43 04 a0 e3                                      mov r0, #0x43000000
006c89d8  07 10 a0 e1                                      mov r1, r7
006c89dc  2d 07 80 e2                                      add r0, r0, #0xb40000
006c89e0  71 16 f1 eb                                      bl #0x30e3ac
006c89e4  00 b0 a0 e1                                      mov fp, r0
006c89e8  0b 10 a0 e1                                      mov r1, fp
006c89ec  08 00 a0 e1                                      mov r0, r8
006c89f0  45 17 f1 eb                                      bl #0x30e70c
006c89f4  00 00 50 e3                                      cmp r0, #0
006c89f8  88 b0 8d 15                                      strne fp, [sp, #0x88]
006c89fc  e5 ff ff 1a                                      bne #0x6c8998
006c8a00  d6 ff ff ea                                      b #0x6c8960
006c8a04  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
006c8a08  44 10 94 e5                                      ldr r1, [r4, #0x44]
006c8a0c  66 16 f1 eb                                      bl #0x30e3ac
006c8a10  48 10 94 e5                                      ldr r1, [r4, #0x48]
006c8a14  3c 00 84 e5                                      str r0, [r4, #0x3c]
006c8a18  00 70 a0 e1                                      mov r7, r0
006c8a1c  40 00 94 e5                                      ldr r0, [r4, #0x40]
006c8a20  61 16 f1 eb                                      bl #0x30e3ac
006c8a24  40 00 84 e5                                      str r0, [r4, #0x40]
006c8a28  74 ff ff ea                                      b #0x6c8800

; FUNCTION 0x006c8c2c, declared_size=740, range_size=740, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZN6glitch5scene27CSceneNodeAnimatorCameraFPS9setKeyMapEPNS_7SKeyMapEj
; demangled: glitch::scene::CSceneNodeAnimatorCameraFPS::setKeyMap(glitch::SKeyMap*, unsigned int)
; decoder-mode: arm
006c8c2c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c8c30  00 50 a0 e1                                      mov r5, r0
006c8c34  30 30 90 e5                                      ldr r3, [r0, #0x30]
006c8c38  34 00 90 e5                                      ldr r0, [r0, #0x34]
006c8c3c  4c d0 4d e2                                      sub sp, sp, #0x4c
006c8c40  01 70 a0 e1                                      mov r7, r1
006c8c44  00 00 53 e1                                      cmp r3, r0
006c8c48  34 30 85 15                                      strne r3, [r5, #0x34]
006c8c4c  00 00 52 e3                                      cmp r2, #0
006c8c50  02 80 a0 e1                                      mov r8, r2
006c8c54  2d 00 00 0a                                      beq #0x6c8d10
006c8c58  30 20 85 e2                                      add r2, r5, #0x30
006c8c5c  08 20 8d e5                                      str r2, [sp, #8]
006c8c60  28 20 8d e2                                      add r2, sp, #0x28
006c8c64  20 30 8d e2                                      add r3, sp, #0x20
006c8c68  10 20 8d e5                                      str r2, [sp, #0x10]
006c8c6c  38 20 8d e2                                      add r2, sp, #0x38
006c8c70  00 40 a0 e3                                      mov r4, #0
006c8c74  0c 30 8d e5                                      str r3, [sp, #0xc]
006c8c78  18 20 8d e5                                      str r2, [sp, #0x18]
006c8c7c  30 30 8d e2                                      add r3, sp, #0x30
006c8c80  40 20 8d e2                                      add r2, sp, #0x40
006c8c84  14 30 8d e5                                      str r3, [sp, #0x14]
006c8c88  04 60 a0 e1                                      mov r6, r4
006c8c8c  04 a0 a0 e3                                      mov sl, #4
006c8c90  03 90 a0 e3                                      mov sb, #3
006c8c94  02 b0 a0 e3                                      mov fp, #2
006c8c98  01 30 a0 e3                                      mov r3, #1
006c8c9c  1c 20 8d e5                                      str r2, [sp, #0x1c]
006c8ca0  04 20 97 e7                                      ldr r2, [r7, r4]
006c8ca4  04 00 52 e3                                      cmp r2, #4
006c8ca8  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
006c8cac  13 00 00 ea                                      b #0x6c8d00
006c8cb0  03 00 00 ea                                      b #0x6c8cc4
006c8cb4  50 00 00 ea                                      b #0x6c8dfc
006c8cb8  3c 00 00 ea                                      b #0x6c8db0
006c8cbc  28 00 00 ea                                      b #0x6c8d64
006c8cc0  14 00 00 ea                                      b #0x6c8d18
006c8cc4  34 10 95 e5                                      ldr r1, [r5, #0x34]
006c8cc8  38 c0 95 e5                                      ldr ip, [r5, #0x38]
006c8ccc  04 20 87 e0                                      add r2, r7, r4
006c8cd0  04 00 92 e5                                      ldr r0, [r2, #4]
006c8cd4  0c 00 51 e1                                      cmp r1, ip
006c8cd8  00 20 a0 e3                                      mov r2, #0
006c8cdc  44 00 8d e5                                      str r0, [sp, #0x44]
006c8ce0  40 20 8d e5                                      str r2, [sp, #0x40]
006c8ce4  7f 00 00 0a                                      beq #0x6c8ee8
006c8ce8  00 20 81 e5                                      str r2, [r1]
006c8cec  44 20 9d e5                                      ldr r2, [sp, #0x44]
006c8cf0  04 20 81 e5                                      str r2, [r1, #4]
006c8cf4  34 20 95 e5                                      ldr r2, [r5, #0x34]
006c8cf8  08 20 82 e2                                      add r2, r2, #8
006c8cfc  34 20 85 e5                                      str r2, [r5, #0x34]
006c8d00  01 60 86 e2                                      add r6, r6, #1
006c8d04  08 00 56 e1                                      cmp r6, r8
006c8d08  08 40 84 e2                                      add r4, r4, #8
006c8d0c  e3 ff ff 1a                                      bne #0x6c8ca0
006c8d10  4c d0 8d e2                                      add sp, sp, #0x4c
006c8d14  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006c8d18  34 10 95 e5                                      ldr r1, [r5, #0x34]
006c8d1c  38 00 95 e5                                      ldr r0, [r5, #0x38]
006c8d20  04 20 87 e0                                      add r2, r7, r4
006c8d24  04 20 92 e5                                      ldr r2, [r2, #4]
006c8d28  00 00 51 e1                                      cmp r1, r0
006c8d2c  20 a0 8d e5                                      str sl, [sp, #0x20]
006c8d30  24 20 8d e5                                      str r2, [sp, #0x24]
006c8d34  43 00 00 0a                                      beq #0x6c8e48
006c8d38  00 a0 81 e5                                      str sl, [r1]
006c8d3c  24 20 9d e5                                      ldr r2, [sp, #0x24]
006c8d40  01 60 86 e2                                      add r6, r6, #1
006c8d44  08 00 56 e1                                      cmp r6, r8
006c8d48  04 20 81 e5                                      str r2, [r1, #4]
006c8d4c  34 20 95 e5                                      ldr r2, [r5, #0x34]
006c8d50  08 40 84 e2                                      add r4, r4, #8
006c8d54  08 20 82 e2                                      add r2, r2, #8
006c8d58  34 20 85 e5                                      str r2, [r5, #0x34]
006c8d5c  cf ff ff 1a                                      bne #0x6c8ca0
006c8d60  ea ff ff ea                                      b #0x6c8d10
006c8d64  34 10 95 e5                                      ldr r1, [r5, #0x34]
006c8d68  38 00 95 e5                                      ldr r0, [r5, #0x38]
006c8d6c  04 20 87 e0                                      add r2, r7, r4
006c8d70  04 20 92 e5                                      ldr r2, [r2, #4]
006c8d74  00 00 51 e1                                      cmp r1, r0
006c8d78  28 90 8d e5                                      str sb, [sp, #0x28]
006c8d7c  2c 20 8d e5                                      str r2, [sp, #0x2c]
006c8d80  3a 00 00 0a                                      beq #0x6c8e70
006c8d84  00 90 81 e5                                      str sb, [r1]
006c8d88  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
006c8d8c  01 60 86 e2                                      add r6, r6, #1
006c8d90  08 00 56 e1                                      cmp r6, r8
006c8d94  04 20 81 e5                                      str r2, [r1, #4]
006c8d98  34 20 95 e5                                      ldr r2, [r5, #0x34]
006c8d9c  08 40 84 e2                                      add r4, r4, #8
006c8da0  08 20 82 e2                                      add r2, r2, #8
006c8da4  34 20 85 e5                                      str r2, [r5, #0x34]
006c8da8  bc ff ff 1a                                      bne #0x6c8ca0
006c8dac  d7 ff ff ea                                      b #0x6c8d10
006c8db0  34 10 95 e5                                      ldr r1, [r5, #0x34]
006c8db4  38 00 95 e5                                      ldr r0, [r5, #0x38]
006c8db8  04 20 87 e0                                      add r2, r7, r4
006c8dbc  04 20 92 e5                                      ldr r2, [r2, #4]
006c8dc0  00 00 51 e1                                      cmp r1, r0
006c8dc4  30 b0 8d e5                                      str fp, [sp, #0x30]
006c8dc8  34 20 8d e5                                      str r2, [sp, #0x34]
006c8dcc  31 00 00 0a                                      beq #0x6c8e98
006c8dd0  00 b0 81 e5                                      str fp, [r1]
006c8dd4  34 20 9d e5                                      ldr r2, [sp, #0x34]
006c8dd8  01 60 86 e2                                      add r6, r6, #1
006c8ddc  08 00 56 e1                                      cmp r6, r8
006c8de0  04 20 81 e5                                      str r2, [r1, #4]
006c8de4  34 20 95 e5                                      ldr r2, [r5, #0x34]
006c8de8  08 40 84 e2                                      add r4, r4, #8
006c8dec  08 20 82 e2                                      add r2, r2, #8
006c8df0  34 20 85 e5                                      str r2, [r5, #0x34]
006c8df4  a9 ff ff 1a                                      bne #0x6c8ca0
006c8df8  c4 ff ff ea                                      b #0x6c8d10
006c8dfc  34 10 95 e5                                      ldr r1, [r5, #0x34]
006c8e00  38 00 95 e5                                      ldr r0, [r5, #0x38]
006c8e04  04 20 87 e0                                      add r2, r7, r4
006c8e08  04 20 92 e5                                      ldr r2, [r2, #4]
006c8e0c  00 00 51 e1                                      cmp r1, r0
006c8e10  38 30 8d e5                                      str r3, [sp, #0x38]
006c8e14  3c 20 8d e5                                      str r2, [sp, #0x3c]
006c8e18  28 00 00 0a                                      beq #0x6c8ec0
006c8e1c  00 30 81 e5                                      str r3, [r1]
006c8e20  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006c8e24  01 60 86 e2                                      add r6, r6, #1
006c8e28  08 00 56 e1                                      cmp r6, r8
006c8e2c  04 20 81 e5                                      str r2, [r1, #4]
006c8e30  34 20 95 e5                                      ldr r2, [r5, #0x34]
006c8e34  08 40 84 e2                                      add r4, r4, #8
006c8e38  08 20 82 e2                                      add r2, r2, #8
006c8e3c  34 20 85 e5                                      str r2, [r5, #0x34]
006c8e40  96 ff ff 1a                                      bne #0x6c8ca0
006c8e44  b1 ff ff ea                                      b #0x6c8d10
006c8e48  08 00 9d e5                                      ldr r0, [sp, #8]
006c8e4c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006c8e50  01 60 86 e2                                      add r6, r6, #1
006c8e54  04 30 8d e5                                      str r3, [sp, #4]
006c8e58  1d ff ff eb                                      bl #0x6c8ad4
006c8e5c  08 00 56 e1                                      cmp r6, r8
006c8e60  04 30 9d e5                                      ldr r3, [sp, #4]
006c8e64  08 40 84 e2                                      add r4, r4, #8
006c8e68  8c ff ff 1a                                      bne #0x6c8ca0
006c8e6c  a7 ff ff ea                                      b #0x6c8d10
006c8e70  08 00 9d e5                                      ldr r0, [sp, #8]
006c8e74  10 20 9d e5                                      ldr r2, [sp, #0x10]
006c8e78  01 60 86 e2                                      add r6, r6, #1
006c8e7c  04 30 8d e5                                      str r3, [sp, #4]
006c8e80  13 ff ff eb                                      bl #0x6c8ad4
006c8e84  08 00 56 e1                                      cmp r6, r8
006c8e88  04 30 9d e5                                      ldr r3, [sp, #4]
006c8e8c  08 40 84 e2                                      add r4, r4, #8
006c8e90  82 ff ff 1a                                      bne #0x6c8ca0
006c8e94  9d ff ff ea                                      b #0x6c8d10
006c8e98  08 00 9d e5                                      ldr r0, [sp, #8]
006c8e9c  14 20 9d e5                                      ldr r2, [sp, #0x14]
006c8ea0  01 60 86 e2                                      add r6, r6, #1
006c8ea4  04 30 8d e5                                      str r3, [sp, #4]
006c8ea8  09 ff ff eb                                      bl #0x6c8ad4
006c8eac  08 00 56 e1                                      cmp r6, r8
006c8eb0  04 30 9d e5                                      ldr r3, [sp, #4]
006c8eb4  08 40 84 e2                                      add r4, r4, #8
006c8eb8  78 ff ff 1a                                      bne #0x6c8ca0
006c8ebc  93 ff ff ea                                      b #0x6c8d10
006c8ec0  08 00 9d e5                                      ldr r0, [sp, #8]
006c8ec4  18 20 9d e5                                      ldr r2, [sp, #0x18]
006c8ec8  01 60 86 e2                                      add r6, r6, #1
006c8ecc  04 30 8d e5                                      str r3, [sp, #4]
006c8ed0  ff fe ff eb                                      bl #0x6c8ad4
006c8ed4  08 00 56 e1                                      cmp r6, r8
006c8ed8  04 30 9d e5                                      ldr r3, [sp, #4]
006c8edc  08 40 84 e2                                      add r4, r4, #8
006c8ee0  6e ff ff 1a                                      bne #0x6c8ca0
006c8ee4  89 ff ff ea                                      b #0x6c8d10
006c8ee8  08 00 9d e5                                      ldr r0, [sp, #8]
006c8eec  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006c8ef0  01 60 86 e2                                      add r6, r6, #1
006c8ef4  04 30 8d e5                                      str r3, [sp, #4]
006c8ef8  f5 fe ff eb                                      bl #0x6c8ad4
006c8efc  08 00 56 e1                                      cmp r6, r8
006c8f00  04 30 9d e5                                      ldr r3, [sp, #4]
006c8f04  08 40 84 e2                                      add r4, r4, #8
006c8f08  64 ff ff 1a                                      bne #0x6c8ca0
006c8f0c  7f ff ff ea                                      b #0x6c8d10

; FUNCTION 0x006c8f10, declared_size=684, range_size=684, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZN6glitch5scene27CSceneNodeAnimatorCameraFPSC1EPNS_3gui14ICursorControlEfffPNS_7SKeyMapEjb
; demangled: glitch::scene::CSceneNodeAnimatorCameraFPS::CSceneNodeAnimatorCameraFPS(glitch::gui::ICursorControl*, float, float, float, glitch::SKeyMap*, unsigned int, bool)
; decoder-mode: arm
006c8f10  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006c8f14  90 52 9f e5                                      ldr r5, [pc, #0x290]
006c8f18  90 e2 9f e5                                      ldr lr, [pc, #0x290]
006c8f1c  90 c2 9f e5                                      ldr ip, [pc, #0x290]
006c8f20  05 50 8f e0                                      add r5, pc, r5
006c8f24  0e e0 95 e7                                      ldr lr, [r5, lr]
006c8f28  0c c0 95 e7                                      ldr ip, [r5, ip]
006c8f2c  01 70 a0 e3                                      mov r7, #1
006c8f30  08 e0 8e e2                                      add lr, lr, #8
006c8f34  28 d0 4d e2                                      sub sp, sp, #0x28
006c8f38  01 60 a0 e1                                      mov r6, r1
006c8f3c  5c e0 80 e5                                      str lr, [r0, #0x5c]
006c8f40  04 10 8c e2                                      add r1, ip, #4
006c8f44  60 70 80 e5                                      str r7, [r0, #0x60]
006c8f48  00 40 a0 e1                                      mov r4, r0
006c8f4c  02 80 a0 e1                                      mov r8, r2
006c8f50  03 90 a0 e1                                      mov sb, r3
006c8f54  54 a0 dd e5                                      ldrb sl, [sp, #0x54]
006c8f58  b3 fe ff eb                                      bl #0x6c8a2c
006c8f5c  54 32 9f e5                                      ldr r3, [pc, #0x254]
006c8f60  42 24 a0 e3                                      mov r2, #0x42000000
006c8f64  0b 26 82 e2                                      add r2, r2, #0xb00000
006c8f68  03 30 95 e7                                      ldr r3, [r5, r3]
006c8f6c  10 20 84 e5                                      str r2, [r4, #0x10]
006c8f70  0c 60 84 e5                                      str r6, [r4, #0xc]
006c8f74  0c 10 83 e2                                      add r1, r3, #0xc
006c8f78  80 20 83 e2                                      add r2, r3, #0x80
006c8f7c  00 10 84 e5                                      str r1, [r4]
006c8f80  9c 30 83 e2                                      add r3, r3, #0x9c
006c8f84  11 13 a0 e3                                      mov r1, #0x44000000
006c8f88  5c 30 84 e5                                      str r3, [r4, #0x5c]
006c8f8c  04 20 84 e5                                      str r2, [r4, #4]
006c8f90  7a 18 81 e2                                      add r1, r1, #0x7a0000
006c8f94  09 00 a0 e1                                      mov r0, sb
006c8f98  3d 17 f1 eb                                      bl #0x30ec94
006c8f9c  18 80 84 e5                                      str r8, [r4, #0x18]
006c8fa0  14 00 84 e5                                      str r0, [r4, #0x14]
006c8fa4  48 10 9d e5                                      ldr r1, [sp, #0x48]
006c8fa8  00 30 a0 e3                                      mov r3, #0
006c8fac  00 20 a0 e3                                      mov r2, #0
006c8fb0  48 30 84 e5                                      str r3, [r4, #0x48]
006c8fb4  1c 10 84 e5                                      str r1, [r4, #0x1c]
006c8fb8  38 20 84 e5                                      str r2, [r4, #0x38]
006c8fbc  52 70 c4 e5                                      strb r7, [r4, #0x52]
006c8fc0  53 a0 c4 e5                                      strb sl, [r4, #0x53]
006c8fc4  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
006c8fc8  00 00 56 e3                                      cmp r6, #0
006c8fcc  04 00 a0 e1                                      mov r0, r4
006c8fd0  54 10 84 e5                                      str r1, [r4, #0x54]
006c8fd4  50 10 9d e5                                      ldr r1, [sp, #0x50]
006c8fd8  24 30 84 e5                                      str r3, [r4, #0x24]
006c8fdc  28 30 84 e5                                      str r3, [r4, #0x28]
006c8fe0  58 10 84 e5                                      str r1, [r4, #0x58]
006c8fe4  2c 30 84 e5                                      str r3, [r4, #0x2c]
006c8fe8  3c 30 84 e5                                      str r3, [r4, #0x3c]
006c8fec  40 30 84 e5                                      str r3, [r4, #0x40]
006c8ff0  44 30 84 e5                                      str r3, [r4, #0x44]
006c8ff4  20 20 84 e5                                      str r2, [r4, #0x20]
006c8ff8  30 20 84 e5                                      str r2, [r4, #0x30]
006c8ffc  34 20 84 e5                                      str r2, [r4, #0x34]
006c9000  04 30 96 15                                      ldrne r3, [r6, #4]
006c9004  07 30 83 10                                      addne r3, r3, r7
006c9008  04 30 86 15                                      strne r3, [r6, #4]
006c900c  45 fa ff eb                                      bl #0x6c7928
006c9010  54 10 94 e5                                      ldr r1, [r4, #0x54]
006c9014  00 00 51 e3                                      cmp r1, #0
006c9018  02 00 00 0a                                      beq #0x6c9028
006c901c  58 20 94 e5                                      ldr r2, [r4, #0x58]
006c9020  00 00 52 e3                                      cmp r2, #0
006c9024  45 00 00 1a                                      bne #0x6c9140
006c9028  38 20 94 e5                                      ldr r2, [r4, #0x38]
006c902c  34 10 94 e5                                      ldr r1, [r4, #0x34]
006c9030  00 30 a0 e3                                      mov r3, #0
006c9034  20 30 8d e5                                      str r3, [sp, #0x20]
006c9038  02 00 51 e1                                      cmp r1, r2
006c903c  26 20 a0 e3                                      mov r2, #0x26
006c9040  24 20 8d e5                                      str r2, [sp, #0x24]
006c9044  30 50 84 e2                                      add r5, r4, #0x30
006c9048  43 00 00 0a                                      beq #0x6c915c
006c904c  00 30 81 e5                                      str r3, [r1]
006c9050  24 30 9d e5                                      ldr r3, [sp, #0x24]
006c9054  04 30 81 e5                                      str r3, [r1, #4]
006c9058  34 10 94 e5                                      ldr r1, [r4, #0x34]
006c905c  08 10 81 e2                                      add r1, r1, #8
006c9060  34 10 84 e5                                      str r1, [r4, #0x34]
006c9064  38 20 94 e5                                      ldr r2, [r4, #0x38]
006c9068  01 30 a0 e3                                      mov r3, #1
006c906c  18 30 8d e5                                      str r3, [sp, #0x18]
006c9070  02 00 51 e1                                      cmp r1, r2
006c9074  28 20 a0 e3                                      mov r2, #0x28
006c9078  1c 20 8d e5                                      str r2, [sp, #0x1c]
006c907c  3b 00 00 0a                                      beq #0x6c9170
006c9080  00 30 81 e5                                      str r3, [r1]
006c9084  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006c9088  04 30 81 e5                                      str r3, [r1, #4]
006c908c  34 10 94 e5                                      ldr r1, [r4, #0x34]
006c9090  08 10 81 e2                                      add r1, r1, #8
006c9094  34 10 84 e5                                      str r1, [r4, #0x34]
006c9098  38 20 94 e5                                      ldr r2, [r4, #0x38]
006c909c  02 30 a0 e3                                      mov r3, #2
006c90a0  10 30 8d e5                                      str r3, [sp, #0x10]
006c90a4  02 00 51 e1                                      cmp r1, r2
006c90a8  25 20 a0 e3                                      mov r2, #0x25
006c90ac  14 20 8d e5                                      str r2, [sp, #0x14]
006c90b0  33 00 00 0a                                      beq #0x6c9184
006c90b4  00 30 81 e5                                      str r3, [r1]
006c90b8  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c90bc  04 30 81 e5                                      str r3, [r1, #4]
006c90c0  34 10 94 e5                                      ldr r1, [r4, #0x34]
006c90c4  08 10 81 e2                                      add r1, r1, #8
006c90c8  34 10 84 e5                                      str r1, [r4, #0x34]
006c90cc  38 20 94 e5                                      ldr r2, [r4, #0x38]
006c90d0  03 30 a0 e3                                      mov r3, #3
006c90d4  08 30 8d e5                                      str r3, [sp, #8]
006c90d8  02 00 51 e1                                      cmp r1, r2
006c90dc  27 20 a0 e3                                      mov r2, #0x27
006c90e0  0c 20 8d e5                                      str r2, [sp, #0xc]
006c90e4  2b 00 00 0a                                      beq #0x6c9198
006c90e8  00 30 81 e5                                      str r3, [r1]
006c90ec  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c90f0  04 30 81 e5                                      str r3, [r1, #4]
006c90f4  34 10 94 e5                                      ldr r1, [r4, #0x34]
006c90f8  08 10 81 e2                                      add r1, r1, #8
006c90fc  34 10 84 e5                                      str r1, [r4, #0x34]
006c9100  38 20 94 e5                                      ldr r2, [r4, #0x38]
006c9104  04 30 a0 e3                                      mov r3, #4
006c9108  00 30 8d e5                                      str r3, [sp]
006c910c  02 00 51 e1                                      cmp r1, r2
006c9110  4a 20 a0 e3                                      mov r2, #0x4a
006c9114  04 20 8d e5                                      str r2, [sp, #4]
006c9118  0b 00 00 0a                                      beq #0x6c914c
006c911c  00 30 81 e5                                      str r3, [r1]
006c9120  04 30 9d e5                                      ldr r3, [sp, #4]
006c9124  04 30 81 e5                                      str r3, [r1, #4]
006c9128  34 30 94 e5                                      ldr r3, [r4, #0x34]
006c912c  08 30 83 e2                                      add r3, r3, #8
006c9130  34 30 84 e5                                      str r3, [r4, #0x34]
006c9134  04 00 a0 e1                                      mov r0, r4
006c9138  28 d0 8d e2                                      add sp, sp, #0x28
006c913c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006c9140  04 00 a0 e1                                      mov r0, r4
006c9144  b8 fe ff eb                                      bl #0x6c8c2c
006c9148  f9 ff ff ea                                      b #0x6c9134
006c914c  05 00 a0 e1                                      mov r0, r5
006c9150  0d 20 a0 e1                                      mov r2, sp
006c9154  5e fe ff eb                                      bl #0x6c8ad4
006c9158  f5 ff ff ea                                      b #0x6c9134
006c915c  05 00 a0 e1                                      mov r0, r5
006c9160  20 20 8d e2                                      add r2, sp, #0x20
006c9164  5a fe ff eb                                      bl #0x6c8ad4
006c9168  34 10 94 e5                                      ldr r1, [r4, #0x34]
006c916c  bc ff ff ea                                      b #0x6c9064
006c9170  05 00 a0 e1                                      mov r0, r5
006c9174  18 20 8d e2                                      add r2, sp, #0x18
006c9178  55 fe ff eb                                      bl #0x6c8ad4
006c917c  34 10 94 e5                                      ldr r1, [r4, #0x34]
006c9180  c4 ff ff ea                                      b #0x6c9098
006c9184  05 00 a0 e1                                      mov r0, r5
006c9188  10 20 8d e2                                      add r2, sp, #0x10
006c918c  50 fe ff eb                                      bl #0x6c8ad4
006c9190  34 10 94 e5                                      ldr r1, [r4, #0x34]
006c9194  cc ff ff ea                                      b #0x6c90cc
006c9198  05 00 a0 e1                                      mov r0, r5
006c919c  08 20 8d e2                                      add r2, sp, #8
006c91a0  4b fe ff eb                                      bl #0x6c8ad4
006c91a4  34 10 94 e5                                      ldr r1, [r4, #0x34]
006c91a8  d4 ff ff ea                                      b #0x6c9100
; mapping-symbol data/literal pool
006c91ac  70 bb 2c 00 44 2b 00 00 24 14 00 00 ec 28 00 00  .byte 0x70, 0xbb, 0x2c, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x24, 0x14, 0x00, 0x00, 0xec, 0x28, 0x00, 0x00

; FUNCTION 0x006c91bc, declared_size=112, range_size=112, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZN6glitch5scene27CSceneNodeAnimatorCameraFPS11createCloneEv
; demangled: glitch::scene::CSceneNodeAnimatorCameraFPS::createClone()
; decoder-mode: arm
006c91bc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006c91c0  00 10 a0 e3                                      mov r1, #0
006c91c4  00 70 a0 e1                                      mov r7, r0
006c91c8  14 d0 4d e2                                      sub sp, sp, #0x14
006c91cc  64 00 a0 e3                                      mov r0, #0x64
006c91d0  f5 ab f9 eb                                      bl #0x5341ac
006c91d4  11 13 a0 e3                                      mov r1, #0x44000000
006c91d8  00 40 a0 e1                                      mov r4, r0
006c91dc  7a 18 81 e2                                      add r1, r1, #0x7a0000
006c91e0  14 00 97 e5                                      ldr r0, [r7, #0x14]
006c91e4  e0 16 f1 eb                                      bl #0x30ed6c
006c91e8  0c a0 97 e5                                      ldr sl, [r7, #0xc]
006c91ec  18 80 97 e5                                      ldr r8, [r7, #0x18]
006c91f0  53 c0 d7 e5                                      ldrb ip, [r7, #0x53]
006c91f4  1c 60 97 e5                                      ldr r6, [r7, #0x1c]
006c91f8  54 50 97 e5                                      ldr r5, [r7, #0x54]
006c91fc  58 e0 97 e5                                      ldr lr, [r7, #0x58]
006c9200  00 30 a0 e1                                      mov r3, r0
006c9204  0a 10 a0 e1                                      mov r1, sl
006c9208  08 20 a0 e1                                      mov r2, r8
006c920c  04 00 a0 e1                                      mov r0, r4
006c9210  00 60 8d e5                                      str r6, [sp]
006c9214  20 40 8d e9                                      stmib sp, {r5, lr}
006c9218  0c c0 8d e5                                      str ip, [sp, #0xc]
006c921c  3b ff ff eb                                      bl #0x6c8f10
006c9220  04 00 a0 e1                                      mov r0, r4
006c9224  14 d0 8d e2                                      add sp, sp, #0x14
006c9228  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x006c922c, declared_size=652, range_size=652, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZN6glitch5scene27CSceneNodeAnimatorCameraFPSC2EPNS_3gui14ICursorControlEfffPNS_7SKeyMapEjb
; demangled: glitch::scene::CSceneNodeAnimatorCameraFPS::CSceneNodeAnimatorCameraFPS(glitch::gui::ICursorControl*, float, float, float, glitch::SKeyMap*, unsigned int, bool)
; decoder-mode: arm
006c922c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006c9230  01 50 a0 e1                                      mov r5, r1
006c9234  2c d0 4d e2                                      sub sp, sp, #0x2c
006c9238  04 10 81 e2                                      add r1, r1, #4
006c923c  6c 42 9f e5                                      ldr r4, [pc, #0x26c]
006c9240  00 60 a0 e1                                      mov r6, r0
006c9244  02 70 a0 e1                                      mov r7, r2
006c9248  03 a0 a0 e1                                      mov sl, r3
006c924c  58 80 dd e5                                      ldrb r8, [sp, #0x58]
006c9250  f5 fd ff eb                                      bl #0x6c8a2c
006c9254  00 20 95 e5                                      ldr r2, [r5]
006c9258  54 32 9f e5                                      ldr r3, [pc, #0x254]
006c925c  04 40 8f e0                                      add r4, pc, r4
006c9260  00 20 86 e5                                      str r2, [r6]
006c9264  03 30 94 e7                                      ldr r3, [r4, r3]
006c9268  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006c926c  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
006c9270  80 30 83 e2                                      add r3, r3, #0x80
006c9274  02 10 86 e7                                      str r1, [r6, r2]
006c9278  04 30 86 e5                                      str r3, [r6, #4]
006c927c  42 34 a0 e3                                      mov r3, #0x42000000
006c9280  0b 36 83 e2                                      add r3, r3, #0xb00000
006c9284  10 30 86 e5                                      str r3, [r6, #0x10]
006c9288  0c 70 86 e5                                      str r7, [r6, #0xc]
006c928c  11 13 a0 e3                                      mov r1, #0x44000000
006c9290  48 00 9d e5                                      ldr r0, [sp, #0x48]
006c9294  7a 18 81 e2                                      add r1, r1, #0x7a0000
006c9298  7d 16 f1 eb                                      bl #0x30ec94
006c929c  18 a0 86 e5                                      str sl, [r6, #0x18]
006c92a0  14 00 86 e5                                      str r0, [r6, #0x14]
006c92a4  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
006c92a8  00 30 a0 e3                                      mov r3, #0
006c92ac  00 20 a0 e3                                      mov r2, #0
006c92b0  1c 10 86 e5                                      str r1, [r6, #0x1c]
006c92b4  01 10 a0 e3                                      mov r1, #1
006c92b8  48 30 86 e5                                      str r3, [r6, #0x48]
006c92bc  38 20 86 e5                                      str r2, [r6, #0x38]
006c92c0  52 10 c6 e5                                      strb r1, [r6, #0x52]
006c92c4  53 80 c6 e5                                      strb r8, [r6, #0x53]
006c92c8  50 10 9d e5                                      ldr r1, [sp, #0x50]
006c92cc  00 00 57 e3                                      cmp r7, #0
006c92d0  06 00 a0 e1                                      mov r0, r6
006c92d4  54 10 86 e5                                      str r1, [r6, #0x54]
006c92d8  54 10 9d e5                                      ldr r1, [sp, #0x54]
006c92dc  24 30 86 e5                                      str r3, [r6, #0x24]
006c92e0  28 30 86 e5                                      str r3, [r6, #0x28]
006c92e4  58 10 86 e5                                      str r1, [r6, #0x58]
006c92e8  2c 30 86 e5                                      str r3, [r6, #0x2c]
006c92ec  3c 30 86 e5                                      str r3, [r6, #0x3c]
006c92f0  40 30 86 e5                                      str r3, [r6, #0x40]
006c92f4  44 30 86 e5                                      str r3, [r6, #0x44]
006c92f8  20 20 86 e5                                      str r2, [r6, #0x20]
006c92fc  30 20 86 e5                                      str r2, [r6, #0x30]
006c9300  34 20 86 e5                                      str r2, [r6, #0x34]
006c9304  04 30 97 15                                      ldrne r3, [r7, #4]
006c9308  01 30 83 12                                      addne r3, r3, #1
006c930c  04 30 87 15                                      strne r3, [r7, #4]
006c9310  84 f9 ff eb                                      bl #0x6c7928
006c9314  54 10 96 e5                                      ldr r1, [r6, #0x54]
006c9318  00 00 51 e3                                      cmp r1, #0
006c931c  02 00 00 0a                                      beq #0x6c932c
006c9320  58 20 96 e5                                      ldr r2, [r6, #0x58]
006c9324  00 00 52 e3                                      cmp r2, #0
006c9328  45 00 00 1a                                      bne #0x6c9444
006c932c  38 20 96 e5                                      ldr r2, [r6, #0x38]
006c9330  34 10 96 e5                                      ldr r1, [r6, #0x34]
006c9334  00 30 a0 e3                                      mov r3, #0
006c9338  20 30 8d e5                                      str r3, [sp, #0x20]
006c933c  02 00 51 e1                                      cmp r1, r2
006c9340  26 20 a0 e3                                      mov r2, #0x26
006c9344  24 20 8d e5                                      str r2, [sp, #0x24]
006c9348  30 40 86 e2                                      add r4, r6, #0x30
006c934c  43 00 00 0a                                      beq #0x6c9460
006c9350  00 30 81 e5                                      str r3, [r1]
006c9354  24 30 9d e5                                      ldr r3, [sp, #0x24]
006c9358  04 30 81 e5                                      str r3, [r1, #4]
006c935c  34 10 96 e5                                      ldr r1, [r6, #0x34]
006c9360  08 10 81 e2                                      add r1, r1, #8
006c9364  34 10 86 e5                                      str r1, [r6, #0x34]
006c9368  38 20 96 e5                                      ldr r2, [r6, #0x38]
006c936c  01 30 a0 e3                                      mov r3, #1
006c9370  18 30 8d e5                                      str r3, [sp, #0x18]
006c9374  02 00 51 e1                                      cmp r1, r2
006c9378  28 20 a0 e3                                      mov r2, #0x28
006c937c  1c 20 8d e5                                      str r2, [sp, #0x1c]
006c9380  3b 00 00 0a                                      beq #0x6c9474
006c9384  00 30 81 e5                                      str r3, [r1]
006c9388  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006c938c  04 30 81 e5                                      str r3, [r1, #4]
006c9390  34 10 96 e5                                      ldr r1, [r6, #0x34]
006c9394  08 10 81 e2                                      add r1, r1, #8
006c9398  34 10 86 e5                                      str r1, [r6, #0x34]
006c939c  38 20 96 e5                                      ldr r2, [r6, #0x38]
006c93a0  02 30 a0 e3                                      mov r3, #2
006c93a4  10 30 8d e5                                      str r3, [sp, #0x10]
006c93a8  02 00 51 e1                                      cmp r1, r2
006c93ac  25 20 a0 e3                                      mov r2, #0x25
006c93b0  14 20 8d e5                                      str r2, [sp, #0x14]
006c93b4  33 00 00 0a                                      beq #0x6c9488
006c93b8  00 30 81 e5                                      str r3, [r1]
006c93bc  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c93c0  04 30 81 e5                                      str r3, [r1, #4]
006c93c4  34 10 96 e5                                      ldr r1, [r6, #0x34]
006c93c8  08 10 81 e2                                      add r1, r1, #8
006c93cc  34 10 86 e5                                      str r1, [r6, #0x34]
006c93d0  38 20 96 e5                                      ldr r2, [r6, #0x38]
006c93d4  03 30 a0 e3                                      mov r3, #3
006c93d8  08 30 8d e5                                      str r3, [sp, #8]
006c93dc  02 00 51 e1                                      cmp r1, r2
006c93e0  27 20 a0 e3                                      mov r2, #0x27
006c93e4  0c 20 8d e5                                      str r2, [sp, #0xc]
006c93e8  2b 00 00 0a                                      beq #0x6c949c
006c93ec  00 30 81 e5                                      str r3, [r1]
006c93f0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c93f4  04 30 81 e5                                      str r3, [r1, #4]
006c93f8  34 10 96 e5                                      ldr r1, [r6, #0x34]
006c93fc  08 10 81 e2                                      add r1, r1, #8
006c9400  34 10 86 e5                                      str r1, [r6, #0x34]
006c9404  38 20 96 e5                                      ldr r2, [r6, #0x38]
006c9408  04 30 a0 e3                                      mov r3, #4
006c940c  00 30 8d e5                                      str r3, [sp]
006c9410  02 00 51 e1                                      cmp r1, r2
006c9414  4a 20 a0 e3                                      mov r2, #0x4a
006c9418  04 20 8d e5                                      str r2, [sp, #4]
006c941c  0b 00 00 0a                                      beq #0x6c9450
006c9420  00 30 81 e5                                      str r3, [r1]
006c9424  04 30 9d e5                                      ldr r3, [sp, #4]
006c9428  04 30 81 e5                                      str r3, [r1, #4]
006c942c  34 30 96 e5                                      ldr r3, [r6, #0x34]
006c9430  08 30 83 e2                                      add r3, r3, #8
006c9434  34 30 86 e5                                      str r3, [r6, #0x34]
006c9438  06 00 a0 e1                                      mov r0, r6
006c943c  2c d0 8d e2                                      add sp, sp, #0x2c
006c9440  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006c9444  06 00 a0 e1                                      mov r0, r6
006c9448  f7 fd ff eb                                      bl #0x6c8c2c
006c944c  f9 ff ff ea                                      b #0x6c9438
006c9450  04 00 a0 e1                                      mov r0, r4
006c9454  0d 20 a0 e1                                      mov r2, sp
006c9458  9d fd ff eb                                      bl #0x6c8ad4
006c945c  f5 ff ff ea                                      b #0x6c9438
006c9460  04 00 a0 e1                                      mov r0, r4
006c9464  20 20 8d e2                                      add r2, sp, #0x20
006c9468  99 fd ff eb                                      bl #0x6c8ad4
006c946c  34 10 96 e5                                      ldr r1, [r6, #0x34]
006c9470  bc ff ff ea                                      b #0x6c9368
006c9474  04 00 a0 e1                                      mov r0, r4
006c9478  18 20 8d e2                                      add r2, sp, #0x18
006c947c  94 fd ff eb                                      bl #0x6c8ad4
006c9480  34 10 96 e5                                      ldr r1, [r6, #0x34]
006c9484  c4 ff ff ea                                      b #0x6c939c
006c9488  04 00 a0 e1                                      mov r0, r4
006c948c  10 20 8d e2                                      add r2, sp, #0x10
006c9490  8f fd ff eb                                      bl #0x6c8ad4
006c9494  34 10 96 e5                                      ldr r1, [r6, #0x34]
006c9498  cc ff ff ea                                      b #0x6c93d0
006c949c  04 00 a0 e1                                      mov r0, r4
006c94a0  08 20 8d e2                                      add r2, sp, #8
006c94a4  8a fd ff eb                                      bl #0x6c8ad4
006c94a8  34 10 96 e5                                      ldr r1, [r6, #0x34]
006c94ac  d4 ff ff ea                                      b #0x6c9404
; mapping-symbol data/literal pool
006c94b0  34 b8 2c 00 ec 28 00 00                          .byte 0x34, 0xb8, 0x2c, 0x00, 0xec, 0x28, 0x00, 0x00

; FUNCTION 0x006c94b8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZTv0_n12_N6glitch5scene27CSceneNodeAnimatorCameraFPSD0Ev
; demangled: virtual thunk to glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS()
; decoder-mode: arm
006c94b8  00 30 90 e5                                      ldr r3, [r0]
006c94bc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006c94c0  03 00 80 e0                                      add r0, r0, r3
006c94c4  79 f9 ff ea                                      b #0x6c7ab0

; FUNCTION 0x006c94c8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraFPS
; alias: _ZTv0_n12_N6glitch5scene27CSceneNodeAnimatorCameraFPSD1Ev
; demangled: virtual thunk to glitch::scene::CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS()
; decoder-mode: arm
006c94c8  00 30 90 e5                                      ldr r3, [r0]
006c94cc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006c94d0  03 00 80 e0                                      add r0, r0, r3
006c94d4  4b f9 ff ea                                      b #0x6c7a08
