; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006c94d8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZNK6glitch5scene28CSceneNodeAnimatorCameraMaya22isEventReceiverEnabledEv
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::isEventReceiverEnabled() const
; decoder-mode: arm
006c94d8  01 00 a0 e3                                      mov r0, #1
006c94dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c94e0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZNK6glitch5scene28CSceneNodeAnimatorCameraMaya7getTypeEv
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::getType() const
; decoder-mode: arm
006c94e0  08 00 a0 e3                                      mov r0, #8
006c94e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c94e8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZThn4_N6glitch5scene28CSceneNodeAnimatorCameraMaya7onEventERKNS_6SEventE
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorCameraMaya::onEvent(glitch::SEvent const&)
; decoder-mode: arm
006c94e8  04 00 40 e2                                      sub r0, r0, #4
006c94ec  ff ff ff ea                                      b #0x6c94f0

; FUNCTION 0x006c94f0, declared_size=220, range_size=220, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZN6glitch5scene28CSceneNodeAnimatorCameraMaya7onEventERKNS_6SEventE
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::onEvent(glitch::SEvent const&)
; decoder-mode: arm
006c94f0  10 40 2d e9                                      push {r4, lr}
006c94f4  00 30 91 e5                                      ldr r3, [r1]
006c94f8  08 d0 4d e2                                      sub sp, sp, #8
006c94fc  00 40 a0 e1                                      mov r4, r0
006c9500  01 00 53 e3                                      cmp r3, #1
006c9504  02 00 00 0a                                      beq #0x6c9514
006c9508  00 00 a0 e3                                      mov r0, #0
006c950c  08 d0 8d e2                                      add sp, sp, #8
006c9510  10 80 bd e8                                      pop {r4, pc}
006c9514  14 30 91 e5                                      ldr r3, [r1, #0x14]
006c9518  08 00 53 e3                                      cmp r3, #8
006c951c  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
006c9520  0a 00 00 ea                                      b #0x6c9550
006c9524  17 00 00 ea                                      b #0x6c9588
006c9528  19 00 00 ea                                      b #0x6c9594
006c952c  1b 00 00 ea                                      b #0x6c95a0
006c9530  04 00 00 ea                                      b #0x6c9548
006c9534  1c 00 00 ea                                      b #0x6c95ac
006c9538  1f 00 00 ea                                      b #0x6c95bc
006c953c  05 00 00 ea                                      b #0x6c9558
006c9540  f0 ff ff ea                                      b #0x6c9508
006c9544  ef ff ff ea                                      b #0x6c9508
006c9548  00 30 a0 e3                                      mov r3, #0
006c954c  0c 30 c0 e5                                      strb r3, [r0, #0xc]
006c9550  01 00 a0 e3                                      mov r0, #1
006c9554  ec ff ff ea                                      b #0x6c950c
006c9558  10 30 90 e5                                      ldr r3, [r0, #0x10]
006c955c  0d 00 a0 e1                                      mov r0, sp
006c9560  03 10 a0 e1                                      mov r1, r3
006c9564  00 30 93 e5                                      ldr r3, [r3]
006c9568  0f e0 a0 e1                                      mov lr, pc
006c956c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006c9570  04 30 9d e5                                      ldr r3, [sp, #4]
006c9574  00 20 9d e5                                      ldr r2, [sp]
006c9578  01 00 a0 e3                                      mov r0, #1
006c957c  74 30 84 e5                                      str r3, [r4, #0x74]
006c9580  70 20 84 e5                                      str r2, [r4, #0x70]
006c9584  e0 ff ff ea                                      b #0x6c950c
006c9588  01 00 a0 e3                                      mov r0, #1
006c958c  0c 00 c4 e5                                      strb r0, [r4, #0xc]
006c9590  dd ff ff ea                                      b #0x6c950c
006c9594  01 00 a0 e3                                      mov r0, #1
006c9598  0e 00 c4 e5                                      strb r0, [r4, #0xe]
006c959c  da ff ff ea                                      b #0x6c950c
006c95a0  01 00 a0 e3                                      mov r0, #1
006c95a4  0d 00 c4 e5                                      strb r0, [r4, #0xd]
006c95a8  d7 ff ff ea                                      b #0x6c950c
006c95ac  00 30 a0 e3                                      mov r3, #0
006c95b0  0e 30 c0 e5                                      strb r3, [r0, #0xe]
006c95b4  01 00 a0 e3                                      mov r0, #1
006c95b8  d3 ff ff ea                                      b #0x6c950c
006c95bc  00 30 a0 e3                                      mov r3, #0
006c95c0  0d 30 c0 e5                                      strb r3, [r0, #0xd]
006c95c4  01 00 a0 e3                                      mov r0, #1
006c95c8  cf ff ff ea                                      b #0x6c950c

; FUNCTION 0x006c95cc, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZN6glitch5scene28CSceneNodeAnimatorCameraMaya14isMouseKeyDownEi
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::isMouseKeyDown(int)
; decoder-mode: arm
006c95cc  01 10 80 e0                                      add r1, r0, r1
006c95d0  0c 00 d1 e5                                      ldrb r0, [r1, #0xc]
006c95d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c95d8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZN6glitch5scene28CSceneNodeAnimatorCameraMaya9allKeysUpEv
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::allKeysUp()
; decoder-mode: arm
006c95d8  00 30 a0 e3                                      mov r3, #0
006c95dc  0e 30 c0 e5                                      strb r3, [r0, #0xe]
006c95e0  0c 30 c0 e5                                      strb r3, [r0, #0xc]
006c95e4  0d 30 c0 e5                                      strb r3, [r0, #0xd]
006c95e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c95ec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZN6glitch5scene28CSceneNodeAnimatorCameraMaya14setRotateSpeedEf
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::setRotateSpeed(float)
; decoder-mode: arm
006c95ec  28 10 80 e5                                      str r1, [r0, #0x28]
006c95f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c95f4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZN6glitch5scene28CSceneNodeAnimatorCameraMaya12setMoveSpeedEf
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::setMoveSpeed(float)
; decoder-mode: arm
006c95f4  2c 10 80 e5                                      str r1, [r0, #0x2c]
006c95f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c95fc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZN6glitch5scene28CSceneNodeAnimatorCameraMaya12setZoomSpeedEf
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::setZoomSpeed(float)
; decoder-mode: arm
006c95fc  24 10 80 e5                                      str r1, [r0, #0x24]
006c9600  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c9604, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZNK6glitch5scene28CSceneNodeAnimatorCameraMaya14getRotateSpeedEv
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::getRotateSpeed() const
; decoder-mode: arm
006c9604  28 00 90 e5                                      ldr r0, [r0, #0x28]
006c9608  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c960c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZNK6glitch5scene28CSceneNodeAnimatorCameraMaya12getMoveSpeedEv
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::getMoveSpeed() const
; decoder-mode: arm
006c960c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
006c9610  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c9614, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZNK6glitch5scene28CSceneNodeAnimatorCameraMaya12getZoomSpeedEv
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::getZoomSpeed() const
; decoder-mode: arm
006c9614  24 00 90 e5                                      ldr r0, [r0, #0x24]
006c9618  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c96a8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZThn4_N6glitch5scene28CSceneNodeAnimatorCameraMayaD1Ev
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya()
; decoder-mode: arm
006c96a8  04 00 40 e2                                      sub r0, r0, #4
006c96ac  ff ff ff ea                                      b #0x6c96b0

; FUNCTION 0x006c96b0, declared_size=144, range_size=144, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZN6glitch5scene28CSceneNodeAnimatorCameraMayaD1Ev
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya()
; decoder-mode: arm
006c96b0  70 40 2d e9                                      push {r4, r5, r6, lr}
006c96b4  74 50 9f e5                                      ldr r5, [pc, #0x74]
006c96b8  74 30 9f e5                                      ldr r3, [pc, #0x74]
006c96bc  00 40 a0 e1                                      mov r4, r0
006c96c0  05 50 8f e0                                      add r5, pc, r5
006c96c4  10 00 90 e5                                      ldr r0, [r0, #0x10]
006c96c8  03 30 95 e7                                      ldr r3, [r5, r3]
006c96cc  00 00 50 e3                                      cmp r0, #0
006c96d0  80 20 83 e2                                      add r2, r3, #0x80
006c96d4  0c 10 83 e2                                      add r1, r3, #0xc
006c96d8  9c 30 83 e2                                      add r3, r3, #0x9c
006c96dc  00 10 84 e5                                      str r1, [r4]
006c96e0  78 30 84 e5                                      str r3, [r4, #0x78]
006c96e4  04 20 84 e5                                      str r2, [r4, #4]
006c96e8  00 00 00 0a                                      beq #0x6c96f0
006c96ec  a4 4f f1 eb                                      bl #0x31d584
006c96f0  40 20 9f e5                                      ldr r2, [pc, #0x40]
006c96f4  40 30 9f e5                                      ldr r3, [pc, #0x40]
006c96f8  04 00 a0 e1                                      mov r0, r4
006c96fc  02 10 95 e7                                      ldr r1, [r5, r2]
006c9700  03 30 95 e7                                      ldr r3, [r5, r3]
006c9704  04 20 91 e5                                      ldr r2, [r1, #4]
006c9708  18 c0 91 e5                                      ldr ip, [r1, #0x18]
006c970c  80 30 83 e2                                      add r3, r3, #0x80
006c9710  00 20 84 e5                                      str r2, [r4]
006c9714  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006c9718  08 10 81 e2                                      add r1, r1, #8
006c971c  02 c0 84 e7                                      str ip, [r4, r2]
006c9720  04 30 84 e5                                      str r3, [r4, #4]
006c9724  83 40 fb eb                                      bl #0x599938
006c9728  04 00 a0 e1                                      mov r0, r4
006c972c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006c9730  d0 b3 2c 00 cc 22 00 00 14 42 00 00 c8 37 00 00  .byte 0xd0, 0xb3, 0x2c, 0x00, 0xcc, 0x22, 0x00, 0x00, 0x14, 0x42, 0x00, 0x00, 0xc8, 0x37, 0x00, 0x00

; FUNCTION 0x006c9740, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZThn4_N6glitch5scene28CSceneNodeAnimatorCameraMayaD0Ev
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya()
; decoder-mode: arm
006c9740  04 00 40 e2                                      sub r0, r0, #4
006c9744  ff ff ff ea                                      b #0x6c9748

; FUNCTION 0x006c9748, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZN6glitch5scene28CSceneNodeAnimatorCameraMayaD0Ev
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya()
; decoder-mode: arm
006c9748  10 40 2d e9                                      push {r4, lr}
006c974c  00 40 a0 e1                                      mov r4, r0
006c9750  d6 ff ff eb                                      bl #0x6c96b0
006c9754  04 00 a0 e1                                      mov r0, r4
006c9758  d4 12 f1 eb                                      bl #0x30e2b0
006c975c  04 00 a0 e1                                      mov r0, r4
006c9760  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006c9764, declared_size=144, range_size=144, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZN6glitch5scene28CSceneNodeAnimatorCameraMayaD2Ev
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya()
; decoder-mode: arm
006c9764  70 40 2d e9                                      push {r4, r5, r6, lr}
006c9768  00 30 91 e5                                      ldr r3, [r1]
006c976c  01 60 a0 e1                                      mov r6, r1
006c9770  70 50 9f e5                                      ldr r5, [pc, #0x70]
006c9774  00 30 80 e5                                      str r3, [r0]
006c9778  0c 20 13 e5                                      ldr r2, [r3, #-0xc]
006c977c  1c 10 91 e5                                      ldr r1, [r1, #0x1c]
006c9780  64 30 9f e5                                      ldr r3, [pc, #0x64]
006c9784  05 50 8f e0                                      add r5, pc, r5
006c9788  02 10 80 e7                                      str r1, [r0, r2]
006c978c  00 40 a0 e1                                      mov r4, r0
006c9790  03 30 95 e7                                      ldr r3, [r5, r3]
006c9794  10 00 90 e5                                      ldr r0, [r0, #0x10]
006c9798  80 30 83 e2                                      add r3, r3, #0x80
006c979c  00 00 50 e3                                      cmp r0, #0
006c97a0  04 30 84 e5                                      str r3, [r4, #4]
006c97a4  00 00 00 0a                                      beq #0x6c97ac
006c97a8  75 4f f1 eb                                      bl #0x31d584
006c97ac  04 20 96 e5                                      ldr r2, [r6, #4]
006c97b0  38 30 9f e5                                      ldr r3, [pc, #0x38]
006c97b4  04 10 86 e2                                      add r1, r6, #4
006c97b8  00 20 84 e5                                      str r2, [r4]
006c97bc  03 30 95 e7                                      ldr r3, [r5, r3]
006c97c0  14 00 91 e5                                      ldr r0, [r1, #0x14]
006c97c4  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006c97c8  80 30 83 e2                                      add r3, r3, #0x80
006c97cc  04 10 81 e2                                      add r1, r1, #4
006c97d0  02 00 84 e7                                      str r0, [r4, r2]
006c97d4  04 30 84 e5                                      str r3, [r4, #4]
006c97d8  04 00 a0 e1                                      mov r0, r4
006c97dc  55 40 fb eb                                      bl #0x599938
006c97e0  04 00 a0 e1                                      mov r0, r4
006c97e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006c97e8  0c b3 2c 00 cc 22 00 00 c8 37 00 00              .byte 0x0c, 0xb3, 0x2c, 0x00, 0xcc, 0x22, 0x00, 0x00, 0xc8, 0x37, 0x00, 0x00

; FUNCTION 0x006c97f4, declared_size=320, range_size=320, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZN6glitch5scene28CSceneNodeAnimatorCameraMaya20updateAnimationStateEv
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::updateAnimationState()
; decoder-mode: arm
006c97f4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006c97f8  00 40 a0 e1                                      mov r4, r0
006c97fc  2c d0 4d e2                                      sub sp, sp, #0x2c
006c9800  54 10 90 e5                                      ldr r1, [r0, #0x54]
006c9804  14 00 90 e5                                      ldr r0, [r0, #0x14]
006c9808  e7 12 f1 eb                                      bl #0x30e3ac
006c980c  58 10 94 e5                                      ldr r1, [r4, #0x58]
006c9810  00 60 a0 e1                                      mov r6, r0
006c9814  18 00 94 e5                                      ldr r0, [r4, #0x18]
006c9818  e3 12 f1 eb                                      bl #0x30e3ac
006c981c  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
006c9820  00 70 a0 e1                                      mov r7, r0
006c9824  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
006c9828  df 12 f1 eb                                      bl #0x30e3ac
006c982c  20 50 8d e2                                      add r5, sp, #0x20
006c9830  00 30 a0 e1                                      mov r3, r0
006c9834  05 00 a0 e1                                      mov r0, r5
006c9838  24 30 8d e5                                      str r3, [sp, #0x24]
006c983c  1c 30 8d e5                                      str r3, [sp, #0x1c]
006c9840  18 70 8d e5                                      str r7, [sp, #0x18]
006c9844  20 60 8d e5                                      str r6, [sp, #0x20]
006c9848  14 60 8d e5                                      str r6, [sp, #0x14]
006c984c  03 5a f5 eb                                      bl #0x420060
006c9850  92 13 f1 eb                                      bl #0x30e6a0
006c9854  4c 00 84 e5                                      str r0, [r4, #0x4c]
006c9858  11 14 f1 eb                                      bl #0x30e8a4
006c985c  08 c0 8d e2                                      add ip, sp, #8
006c9860  00 20 a0 e1                                      mov r2, r0
006c9864  01 30 a0 e1                                      mov r3, r1
006c9868  14 00 8d e2                                      add r0, sp, #0x14
006c986c  00 10 a0 e3                                      mov r1, #0
006c9870  00 c0 8d e5                                      str ip, [sp]
006c9874  10 10 8d e5                                      str r1, [sp, #0x10]
006c9878  08 10 8d e5                                      str r1, [sp, #8]
006c987c  0c 10 8d e5                                      str r1, [sp, #0xc]
006c9880  58 9d fd eb                                      bl #0x630de8
006c9884  18 30 9d e5                                      ldr r3, [sp, #0x18]
006c9888  05 00 a0 e1                                      mov r0, r5
006c988c  24 30 8d e5                                      str r3, [sp, #0x24]
006c9890  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c9894  20 30 8d e5                                      str r3, [sp, #0x20]
006c9898  f0 59 f5 eb                                      bl #0x420060
006c989c  7f 13 f1 eb                                      bl #0x30e6a0
006c98a0  02 01 80 e2                                      add r0, r0, #0x80000000
006c98a4  54 10 94 e5                                      ldr r1, [r4, #0x54]
006c98a8  50 00 84 e5                                      str r0, [r4, #0x50]
006c98ac  14 00 94 e5                                      ldr r0, [r4, #0x14]
006c98b0  bd 12 f1 eb                                      bl #0x30e3ac
006c98b4  58 10 94 e5                                      ldr r1, [r4, #0x58]
006c98b8  00 50 a0 e1                                      mov r5, r0
006c98bc  18 00 94 e5                                      ldr r0, [r4, #0x18]
006c98c0  b9 12 f1 eb                                      bl #0x30e3ac
006c98c4  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
006c98c8  00 70 a0 e1                                      mov r7, r0
006c98cc  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
006c98d0  b5 12 f1 eb                                      bl #0x30e3ac
006c98d4  05 10 a0 e1                                      mov r1, r5
006c98d8  00 60 a0 e1                                      mov r6, r0
006c98dc  05 00 a0 e1                                      mov r0, r5
006c98e0  21 15 f1 eb                                      bl #0x30ed6c
006c98e4  07 10 a0 e1                                      mov r1, r7
006c98e8  00 50 a0 e1                                      mov r5, r0
006c98ec  07 00 a0 e1                                      mov r0, r7
006c98f0  1d 15 f1 eb                                      bl #0x30ed6c
006c98f4  00 10 a0 e1                                      mov r1, r0
006c98f8  05 00 a0 e1                                      mov r0, r5
006c98fc  a8 14 f1 eb                                      bl #0x30eba4
006c9900  06 10 a0 e1                                      mov r1, r6
006c9904  00 50 a0 e1                                      mov r5, r0
006c9908  06 00 a0 e1                                      mov r0, r6
006c990c  16 15 f1 eb                                      bl #0x30ed6c
006c9910  00 10 a0 e1                                      mov r1, r0
006c9914  05 00 a0 e1                                      mov r0, r5
006c9918  a1 14 f1 eb                                      bl #0x30eba4
006c991c  e0 13 f1 eb                                      bl #0x30e8a4
006c9920  26 12 f1 eb                                      bl #0x30e1c0
006c9924  5d 13 f1 eb                                      bl #0x30e6a0
006c9928  48 00 84 e5                                      str r0, [r4, #0x48]
006c992c  2c d0 8d e2                                      add sp, sp, #0x2c
006c9930  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x006c9934, declared_size=2396, range_size=2396, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZN6glitch5scene28CSceneNodeAnimatorCameraMaya11animateNodeEPNS0_10ISceneNodeEj
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::animateNode(glitch::scene::ISceneNode*, unsigned int)
; decoder-mode: arm
006c9934  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c9938  00 60 a0 e1                                      mov r6, r0
006c993c  00 30 91 e5                                      ldr r3, [r1]
006c9940  94 d0 4d e2                                      sub sp, sp, #0x94
006c9944  01 00 a0 e1                                      mov r0, r1
006c9948  01 40 a0 e1                                      mov r4, r1
006c994c  0f e0 a0 e1                                      mov lr, pc
006c9950  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
006c9954  63 31 06 e3                                      movw r3, #0x6163
006c9958  6d 3f 45 e3                                      movt r3, #0x5f6d
006c995c  03 00 50 e1                                      cmp r0, r3
006c9960  01 00 00 0a                                      beq #0x6c996c
006c9964  94 d0 8d e2                                      add sp, sp, #0x94
006c9968  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006c996c  6c 30 96 e5                                      ldr r3, [r6, #0x6c]
006c9970  04 00 53 e1                                      cmp r3, r4
006c9974  0a 00 00 0a                                      beq #0x6c99a4
006c9978  00 30 94 e5                                      ldr r3, [r4]
006c997c  04 00 a0 e1                                      mov r0, r4
006c9980  0f e0 a0 e1                                      mov lr, pc
006c9984  08 f1 93 e5                                      ldr pc, [r3, #0x108]
006c9988  00 30 90 e5                                      ldr r3, [r0]
006c998c  60 30 86 e5                                      str r3, [r6, #0x60]
006c9990  04 30 90 e5                                      ldr r3, [r0, #4]
006c9994  64 30 86 e5                                      str r3, [r6, #0x64]
006c9998  08 30 90 e5                                      ldr r3, [r0, #8]
006c999c  6c 40 86 e5                                      str r4, [r6, #0x6c]
006c99a0  68 30 86 e5                                      str r3, [r6, #0x68]
006c99a4  00 30 94 e5                                      ldr r3, [r4]
006c99a8  04 00 a0 e1                                      mov r0, r4
006c99ac  0f e0 a0 e1                                      mov lr, pc
006c99b0  08 f1 93 e5                                      ldr pc, [r3, #0x108]
006c99b4  00 20 90 e5                                      ldr r2, [r0]
006c99b8  00 30 a0 e1                                      mov r3, r0
006c99bc  04 00 a0 e1                                      mov r0, r4
006c99c0  54 20 86 e5                                      str r2, [r6, #0x54]
006c99c4  04 20 93 e5                                      ldr r2, [r3, #4]
006c99c8  58 20 86 e5                                      str r2, [r6, #0x58]
006c99cc  08 30 93 e5                                      ldr r3, [r3, #8]
006c99d0  5c 30 86 e5                                      str r3, [r6, #0x5c]
006c99d4  00 30 94 e5                                      ldr r3, [r4]
006c99d8  0f e0 a0 e1                                      mov lr, pc
006c99dc  44 f1 93 e5                                      ldr pc, [r3, #0x144]
006c99e0  4c 20 96 e5                                      ldr r2, [r6, #0x4c]
006c99e4  00 70 a0 e1                                      mov r7, r0
006c99e8  00 10 a0 e3                                      mov r1, #0
006c99ec  20 20 8d e5                                      str r2, [sp, #0x20]
006c99f0  50 30 96 e5                                      ldr r3, [r6, #0x50]
006c99f4  06 00 a0 e1                                      mov r0, r6
006c99f8  1c 30 8d e5                                      str r3, [sp, #0x1c]
006c99fc  48 50 96 e5                                      ldr r5, [r6, #0x48]
006c9a00  f1 fe ff eb                                      bl #0x6c95cc
006c9a04  00 00 50 e3                                      cmp r0, #0
006c9a08  66 01 00 0a                                      beq #0x6c9fa8
006c9a0c  06 00 a0 e1                                      mov r0, r6
006c9a10  02 10 a0 e3                                      mov r1, #2
006c9a14  ec fe ff eb                                      bl #0x6c95cc
006c9a18  00 00 50 e3                                      cmp r0, #0
006c9a1c  61 01 00 0a                                      beq #0x6c9fa8
006c9a20  20 30 d6 e5                                      ldrb r3, [r6, #0x20]
006c9a24  00 00 53 e3                                      cmp r3, #0
006c9a28  02 02 00 1a                                      bne #0x6ca238
006c9a2c  70 20 96 e5                                      ldr r2, [r6, #0x70]
006c9a30  74 30 96 e5                                      ldr r3, [r6, #0x74]
006c9a34  38 20 86 e5                                      str r2, [r6, #0x38]
006c9a38  48 20 96 e5                                      ldr r2, [r6, #0x48]
006c9a3c  3c 30 86 e5                                      str r3, [r6, #0x3c]
006c9a40  01 30 a0 e3                                      mov r3, #1
006c9a44  20 30 c6 e5                                      strb r3, [r6, #0x20]
006c9a48  34 20 8d e5                                      str r2, [sp, #0x34]
006c9a4c  60 20 96 e5                                      ldr r2, [r6, #0x60]
006c9a50  00 30 94 e5                                      ldr r3, [r4]
006c9a54  04 00 a0 e1                                      mov r0, r4
006c9a58  10 20 8d e5                                      str r2, [sp, #0x10]
006c9a5c  64 20 96 e5                                      ldr r2, [r6, #0x64]
006c9a60  00 50 a0 e3                                      mov r5, #0
006c9a64  14 20 8d e5                                      str r2, [sp, #0x14]
006c9a68  68 20 96 e5                                      ldr r2, [r6, #0x68]
006c9a6c  18 20 8d e5                                      str r2, [sp, #0x18]
006c9a70  0f e0 a0 e1                                      mov lr, pc
006c9a74  18 f1 93 e5                                      ldr pc, [r3, #0x118]
006c9a78  00 80 90 e5                                      ldr r8, [r0]
006c9a7c  54 10 96 e5                                      ldr r1, [r6, #0x54]
006c9a80  00 30 a0 e1                                      mov r3, r0
006c9a84  14 00 96 e5                                      ldr r0, [r6, #0x14]
006c9a88  84 80 8d e5                                      str r8, [sp, #0x84]
006c9a8c  04 a0 93 e5                                      ldr sl, [r3, #4]
006c9a90  0c 20 87 e2                                      add r2, r7, #0xc
006c9a94  24 20 8d e5                                      str r2, [sp, #0x24]
006c9a98  88 a0 8d e5                                      str sl, [sp, #0x88]
006c9a9c  08 90 93 e5                                      ldr sb, [r3, #8]
006c9aa0  4c 30 87 e2                                      add r3, r7, #0x4c
006c9aa4  28 30 8d e5                                      str r3, [sp, #0x28]
006c9aa8  8c 90 8d e5                                      str sb, [sp, #0x8c]
006c9aac  3e 12 f1 eb                                      bl #0x30e3ac
006c9ab0  2c 00 8d e5                                      str r0, [sp, #0x2c]
006c9ab4  58 10 96 e5                                      ldr r1, [r6, #0x58]
006c9ab8  18 00 96 e5                                      ldr r0, [r6, #0x18]
006c9abc  3a 12 f1 eb                                      bl #0x30e3ac
006c9ac0  30 00 8d e5                                      str r0, [sp, #0x30]
006c9ac4  5c 10 96 e5                                      ldr r1, [r6, #0x5c]
006c9ac8  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
006c9acc  36 12 f1 eb                                      bl #0x30e3ac
006c9ad0  30 20 9d e5                                      ldr r2, [sp, #0x30]
006c9ad4  00 b0 a0 e1                                      mov fp, r0
006c9ad8  09 00 a0 e1                                      mov r0, sb
006c9adc  02 11 82 e2                                      add r1, r2, #0x80000000
006c9ae0  a1 14 f1 eb                                      bl #0x30ed6c
006c9ae4  0b 10 a0 e1                                      mov r1, fp
006c9ae8  00 30 a0 e1                                      mov r3, r0
006c9aec  0a 00 a0 e1                                      mov r0, sl
006c9af0  0c 30 8d e5                                      str r3, [sp, #0xc]
006c9af4  9c 14 f1 eb                                      bl #0x30ed6c
006c9af8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c9afc  00 10 a0 e1                                      mov r1, r0
006c9b00  03 00 a0 e1                                      mov r0, r3
006c9b04  26 14 f1 eb                                      bl #0x30eba4
006c9b08  02 11 8b e2                                      add r1, fp, #0x80000000
006c9b0c  78 00 8d e5                                      str r0, [sp, #0x78]
006c9b10  08 00 a0 e1                                      mov r0, r8
006c9b14  94 14 f1 eb                                      bl #0x30ed6c
006c9b18  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006c9b1c  00 b0 a0 e1                                      mov fp, r0
006c9b20  09 00 a0 e1                                      mov r0, sb
006c9b24  90 14 f1 eb                                      bl #0x30ed6c
006c9b28  00 10 a0 e1                                      mov r1, r0
006c9b2c  0b 00 a0 e1                                      mov r0, fp
006c9b30  1b 14 f1 eb                                      bl #0x30eba4
006c9b34  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006c9b38  7c 00 8d e5                                      str r0, [sp, #0x7c]
006c9b3c  0a 00 a0 e1                                      mov r0, sl
006c9b40  02 11 83 e2                                      add r1, r3, #0x80000000
006c9b44  88 14 f1 eb                                      bl #0x30ed6c
006c9b48  30 10 9d e5                                      ldr r1, [sp, #0x30]
006c9b4c  00 a0 a0 e1                                      mov sl, r0
006c9b50  08 00 a0 e1                                      mov r0, r8
006c9b54  84 14 f1 eb                                      bl #0x30ed6c
006c9b58  00 10 a0 e1                                      mov r1, r0
006c9b5c  0a 00 a0 e1                                      mov r0, sl
006c9b60  0f 14 f1 eb                                      bl #0x30eba4
006c9b64  80 00 8d e5                                      str r0, [sp, #0x80]
006c9b68  78 00 8d e2                                      add r0, sp, #0x78
006c9b6c  5b 53 f2 eb                                      bl #0x35e8e0
006c9b70  2c 20 87 e2                                      add r2, r7, #0x2c
006c9b74  28 10 9d e5                                      ldr r1, [sp, #0x28]
006c9b78  60 30 8d e2                                      add r3, sp, #0x60
006c9b7c  24 00 9d e5                                      ldr r0, [sp, #0x24]
006c9b80  60 50 8d e5                                      str r5, [sp, #0x60]
006c9b84  64 50 8d e5                                      str r5, [sp, #0x64]
006c9b88  68 50 8d e5                                      str r5, [sp, #0x68]
006c9b8c  91 de f1 eb                                      bl #0x3415d8
006c9b90  3c 20 87 e2                                      add r2, r7, #0x3c
006c9b94  54 30 8d e2                                      add r3, sp, #0x54
006c9b98  28 10 9d e5                                      ldr r1, [sp, #0x28]
006c9b9c  24 00 9d e5                                      ldr r0, [sp, #0x24]
006c9ba0  54 50 8d e5                                      str r5, [sp, #0x54]
006c9ba4  58 50 8d e5                                      str r5, [sp, #0x58]
006c9ba8  5c 50 8d e5                                      str r5, [sp, #0x5c]
006c9bac  89 de f1 eb                                      bl #0x3415d8
006c9bb0  54 10 9d e5                                      ldr r1, [sp, #0x54]
006c9bb4  60 00 9d e5                                      ldr r0, [sp, #0x60]
006c9bb8  fb 11 f1 eb                                      bl #0x30e3ac
006c9bbc  58 10 9d e5                                      ldr r1, [sp, #0x58]
006c9bc0  00 a0 a0 e1                                      mov sl, r0
006c9bc4  64 00 9d e5                                      ldr r0, [sp, #0x64]
006c9bc8  f7 11 f1 eb                                      bl #0x30e3ac
006c9bcc  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
006c9bd0  00 70 a0 e1                                      mov r7, r0
006c9bd4  68 00 9d e5                                      ldr r0, [sp, #0x68]
006c9bd8  f3 11 f1 eb                                      bl #0x30e3ac
006c9bdc  05 10 a0 e1                                      mov r1, r5
006c9be0  00 90 a0 e1                                      mov sb, r0
006c9be4  88 00 9d e5                                      ldr r0, [sp, #0x88]
006c9be8  c2 11 f1 eb                                      bl #0x30e2f8
006c9bec  00 00 50 e3                                      cmp r0, #0
006c9bf0  83 01 00 0a                                      beq #0x6ca204
006c9bf4  54 10 96 e5                                      ldr r1, [r6, #0x54]
006c9bf8  14 00 96 e5                                      ldr r0, [r6, #0x14]
006c9bfc  ea 11 f1 eb                                      bl #0x30e3ac
006c9c00  58 10 96 e5                                      ldr r1, [r6, #0x58]
006c9c04  00 50 a0 e1                                      mov r5, r0
006c9c08  18 00 96 e5                                      ldr r0, [r6, #0x18]
006c9c0c  e6 11 f1 eb                                      bl #0x30e3ac
006c9c10  5c 10 96 e5                                      ldr r1, [r6, #0x5c]
006c9c14  00 80 a0 e1                                      mov r8, r0
006c9c18  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
006c9c1c  e2 11 f1 eb                                      bl #0x30e3ac
006c9c20  00 b0 a0 e1                                      mov fp, r0
006c9c24  0b 10 a0 e1                                      mov r1, fp
006c9c28  02 01 87 e2                                      add r0, r7, #0x80000000
006c9c2c  4e 14 f1 eb                                      bl #0x30ed6c
006c9c30  09 10 a0 e1                                      mov r1, sb
006c9c34  00 30 a0 e1                                      mov r3, r0
006c9c38  08 00 a0 e1                                      mov r0, r8
006c9c3c  0c 30 8d e5                                      str r3, [sp, #0xc]
006c9c40  49 14 f1 eb                                      bl #0x30ed6c
006c9c44  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c9c48  00 10 a0 e1                                      mov r1, r0
006c9c4c  03 00 a0 e1                                      mov r0, r3
006c9c50  d3 13 f1 eb                                      bl #0x30eba4
006c9c54  02 11 89 e2                                      add r1, sb, #0x80000000
006c9c58  6c 00 8d e5                                      str r0, [sp, #0x6c]
006c9c5c  05 00 a0 e1                                      mov r0, r5
006c9c60  41 14 f1 eb                                      bl #0x30ed6c
006c9c64  0b 10 a0 e1                                      mov r1, fp
006c9c68  00 90 a0 e1                                      mov sb, r0
006c9c6c  0a 00 a0 e1                                      mov r0, sl
006c9c70  3d 14 f1 eb                                      bl #0x30ed6c
006c9c74  00 10 a0 e1                                      mov r1, r0
006c9c78  09 00 a0 e1                                      mov r0, sb
006c9c7c  c8 13 f1 eb                                      bl #0x30eba4
006c9c80  02 11 8a e2                                      add r1, sl, #0x80000000
006c9c84  70 00 8d e5                                      str r0, [sp, #0x70]
006c9c88  08 00 a0 e1                                      mov r0, r8
006c9c8c  36 14 f1 eb                                      bl #0x30ed6c
006c9c90  07 10 a0 e1                                      mov r1, r7
006c9c94  00 80 a0 e1                                      mov r8, r0
006c9c98  05 00 a0 e1                                      mov r0, r5
006c9c9c  32 14 f1 eb                                      bl #0x30ed6c
006c9ca0  00 10 a0 e1                                      mov r1, r0
006c9ca4  08 00 a0 e1                                      mov r0, r8
006c9ca8  bd 13 f1 eb                                      bl #0x30eba4
006c9cac  74 00 8d e5                                      str r0, [sp, #0x74]
006c9cb0  6c 00 8d e2                                      add r0, sp, #0x6c
006c9cb4  09 53 f2 eb                                      bl #0x35e8e0
006c9cb8  06 00 a0 e1                                      mov r0, r6
006c9cbc  02 10 a0 e3                                      mov r1, #2
006c9cc0  41 fe ff eb                                      bl #0x6c95cc
006c9cc4  00 00 50 e3                                      cmp r0, #0
006c9cc8  fc 00 00 0a                                      beq #0x6ca0c0
006c9ccc  20 30 d6 e5                                      ldrb r3, [r6, #0x20]
006c9cd0  00 00 53 e3                                      cmp r3, #0
006c9cd4  f9 00 00 1a                                      bne #0x6ca0c0
006c9cd8  23 30 d6 e5                                      ldrb r3, [r6, #0x23]
006c9cdc  00 00 53 e3                                      cmp r3, #0
006c9ce0  d7 00 00 0a                                      beq #0x6ca044
006c9ce4  70 10 96 e5                                      ldr r1, [r6, #0x70]
006c9ce8  40 00 96 e5                                      ldr r0, [r6, #0x40]
006c9cec  ae 11 f1 eb                                      bl #0x30e3ac
006c9cf0  74 10 96 e5                                      ldr r1, [r6, #0x74]
006c9cf4  00 70 a0 e1                                      mov r7, r0
006c9cf8  44 00 96 e5                                      ldr r0, [r6, #0x44]
006c9cfc  aa 11 f1 eb                                      bl #0x30e3ac
006c9d00  78 10 9d e5                                      ldr r1, [sp, #0x78]
006c9d04  00 80 a0 e1                                      mov r8, r0
006c9d08  07 00 a0 e1                                      mov r0, r7
006c9d0c  16 14 f1 eb                                      bl #0x30ed6c
006c9d10  2c 50 96 e5                                      ldr r5, [r6, #0x2c]
006c9d14  00 10 a0 e1                                      mov r1, r0
006c9d18  05 00 a0 e1                                      mov r0, r5
006c9d1c  12 14 f1 eb                                      bl #0x30ed6c
006c9d20  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006c9d24  00 a0 a0 e1                                      mov sl, r0
006c9d28  08 00 a0 e1                                      mov r0, r8
006c9d2c  0e 14 f1 eb                                      bl #0x30ed6c
006c9d30  00 10 a0 e1                                      mov r1, r0
006c9d34  05 00 a0 e1                                      mov r0, r5
006c9d38  0b 14 f1 eb                                      bl #0x30ed6c
006c9d3c  00 10 a0 e1                                      mov r1, r0
006c9d40  0a 00 a0 e1                                      mov r0, sl
006c9d44  96 13 f1 eb                                      bl #0x30eba4
006c9d48  00 10 a0 e1                                      mov r1, r0
006c9d4c  10 00 9d e5                                      ldr r0, [sp, #0x10]
006c9d50  93 13 f1 eb                                      bl #0x30eba4
006c9d54  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
006c9d58  10 00 8d e5                                      str r0, [sp, #0x10]
006c9d5c  07 00 a0 e1                                      mov r0, r7
006c9d60  01 14 f1 eb                                      bl #0x30ed6c
006c9d64  00 10 a0 e1                                      mov r1, r0
006c9d68  05 00 a0 e1                                      mov r0, r5
006c9d6c  fe 13 f1 eb                                      bl #0x30ed6c
006c9d70  70 10 9d e5                                      ldr r1, [sp, #0x70]
006c9d74  00 a0 a0 e1                                      mov sl, r0
006c9d78  08 00 a0 e1                                      mov r0, r8
006c9d7c  fa 13 f1 eb                                      bl #0x30ed6c
006c9d80  00 10 a0 e1                                      mov r1, r0
006c9d84  05 00 a0 e1                                      mov r0, r5
006c9d88  f7 13 f1 eb                                      bl #0x30ed6c
006c9d8c  00 10 a0 e1                                      mov r1, r0
006c9d90  0a 00 a0 e1                                      mov r0, sl
006c9d94  82 13 f1 eb                                      bl #0x30eba4
006c9d98  00 10 a0 e1                                      mov r1, r0
006c9d9c  14 00 9d e5                                      ldr r0, [sp, #0x14]
006c9da0  7f 13 f1 eb                                      bl #0x30eba4
006c9da4  80 10 9d e5                                      ldr r1, [sp, #0x80]
006c9da8  14 00 8d e5                                      str r0, [sp, #0x14]
006c9dac  07 00 a0 e1                                      mov r0, r7
006c9db0  ed 13 f1 eb                                      bl #0x30ed6c
006c9db4  00 10 a0 e1                                      mov r1, r0
006c9db8  05 00 a0 e1                                      mov r0, r5
006c9dbc  ea 13 f1 eb                                      bl #0x30ed6c
006c9dc0  74 10 9d e5                                      ldr r1, [sp, #0x74]
006c9dc4  00 70 a0 e1                                      mov r7, r0
006c9dc8  08 00 a0 e1                                      mov r0, r8
006c9dcc  e6 13 f1 eb                                      bl #0x30ed6c
006c9dd0  00 10 a0 e1                                      mov r1, r0
006c9dd4  05 00 a0 e1                                      mov r0, r5
006c9dd8  e3 13 f1 eb                                      bl #0x30ed6c
006c9ddc  00 10 a0 e1                                      mov r1, r0
006c9de0  07 00 a0 e1                                      mov r0, r7
006c9de4  6e 13 f1 eb                                      bl #0x30eba4
006c9de8  00 10 a0 e1                                      mov r1, r0
006c9dec  18 00 9d e5                                      ldr r0, [sp, #0x18]
006c9df0  6b 13 f1 eb                                      bl #0x30eba4
006c9df4  18 00 8d e5                                      str r0, [sp, #0x18]
006c9df8  06 00 a0 e1                                      mov r0, r6
006c9dfc  00 10 a0 e3                                      mov r1, #0
006c9e00  f1 fd ff eb                                      bl #0x6c95cc
006c9e04  00 00 50 e3                                      cmp r0, #0
006c9e08  94 00 00 0a                                      beq #0x6ca060
006c9e0c  20 30 d6 e5                                      ldrb r3, [r6, #0x20]
006c9e10  00 00 53 e3                                      cmp r3, #0
006c9e14  91 00 00 1a                                      bne #0x6ca060
006c9e18  21 30 d6 e5                                      ldrb r3, [r6, #0x21]
006c9e1c  00 00 53 e3                                      cmp r3, #0
006c9e20  7c 00 00 0a                                      beq #0x6ca018
006c9e24  28 50 96 e5                                      ldr r5, [r6, #0x28]
006c9e28  70 10 96 e5                                      ldr r1, [r6, #0x70]
006c9e2c  30 00 96 e5                                      ldr r0, [r6, #0x30]
006c9e30  5d 11 f1 eb                                      bl #0x30e3ac
006c9e34  05 10 a0 e1                                      mov r1, r5
006c9e38  cb 13 f1 eb                                      bl #0x30ed6c
006c9e3c  00 10 a0 e1                                      mov r1, r0
006c9e40  20 00 9d e5                                      ldr r0, [sp, #0x20]
006c9e44  56 13 f1 eb                                      bl #0x30eba4
006c9e48  20 00 8d e5                                      str r0, [sp, #0x20]
006c9e4c  74 10 96 e5                                      ldr r1, [r6, #0x74]
006c9e50  34 00 96 e5                                      ldr r0, [r6, #0x34]
006c9e54  54 11 f1 eb                                      bl #0x30e3ac
006c9e58  00 10 a0 e1                                      mov r1, r0
006c9e5c  05 00 a0 e1                                      mov r0, r5
006c9e60  c1 13 f1 eb                                      bl #0x30ed6c
006c9e64  00 10 a0 e1                                      mov r1, r0
006c9e68  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006c9e6c  4c 13 f1 eb                                      bl #0x30eba4
006c9e70  1c 00 8d e5                                      str r0, [sp, #0x1c]
006c9e74  10 10 9d e5                                      ldr r1, [sp, #0x10]
006c9e78  14 70 86 e2                                      add r7, r6, #0x14
006c9e7c  00 50 a0 e3                                      mov r5, #0
006c9e80  54 10 86 e5                                      str r1, [r6, #0x54]
006c9e84  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c9e88  84 80 8d e2                                      add r8, sp, #0x84
006c9e8c  58 30 86 e5                                      str r3, [r6, #0x58]
006c9e90  18 20 9d e5                                      ldr r2, [sp, #0x18]
006c9e94  5c 20 86 e5                                      str r2, [r6, #0x5c]
006c9e98  34 00 9d e5                                      ldr r0, [sp, #0x34]
006c9e9c  40 13 f1 eb                                      bl #0x30eba4
006c9ea0  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c9ea4  14 00 86 e5                                      str r0, [r6, #0x14]
006c9ea8  18 30 86 e5                                      str r3, [r6, #0x18]
006c9eac  18 20 9d e5                                      ldr r2, [sp, #0x18]
006c9eb0  1c 20 86 e5                                      str r2, [r6, #0x1c]
006c9eb4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006c9eb8  79 12 f1 eb                                      bl #0x30e8a4
006c9ebc  54 60 86 e2                                      add r6, r6, #0x54
006c9ec0  00 20 a0 e1                                      mov r2, r0
006c9ec4  01 30 a0 e1                                      mov r3, r1
006c9ec8  07 00 a0 e1                                      mov r0, r7
006c9ecc  00 60 8d e5                                      str r6, [sp]
006c9ed0  49 9b fd eb                                      bl #0x630bfc
006c9ed4  20 00 9d e5                                      ldr r0, [sp, #0x20]
006c9ed8  71 12 f1 eb                                      bl #0x30e8a4
006c9edc  00 20 a0 e1                                      mov r2, r0
006c9ee0  01 30 a0 e1                                      mov r3, r1
006c9ee4  07 00 a0 e1                                      mov r0, r7
006c9ee8  00 60 8d e5                                      str r6, [sp]
006c9eec  bd 9b fd eb                                      bl #0x630de8
006c9ef0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006c9ef4  84 50 8d e5                                      str r5, [sp, #0x84]
006c9ef8  8c 50 8d e5                                      str r5, [sp, #0x8c]
006c9efc  02 01 83 e2                                      add r0, r3, #0x80000000
006c9f00  fe 35 a0 e3                                      mov r3, #0x3f800000
006c9f04  88 30 8d e5                                      str r3, [sp, #0x88]
006c9f08  65 12 f1 eb                                      bl #0x30e8a4
006c9f0c  00 20 a0 e1                                      mov r2, r0
006c9f10  01 30 a0 e1                                      mov r3, r1
006c9f14  08 00 a0 e1                                      mov r0, r8
006c9f18  48 10 8d e2                                      add r1, sp, #0x48
006c9f1c  00 10 8d e5                                      str r1, [sp]
006c9f20  48 50 8d e5                                      str r5, [sp, #0x48]
006c9f24  4c 50 8d e5                                      str r5, [sp, #0x4c]
006c9f28  50 50 8d e5                                      str r5, [sp, #0x50]
006c9f2c  32 9b fd eb                                      bl #0x630bfc
006c9f30  43 14 a0 e3                                      mov r1, #0x43000000
006c9f34  20 00 9d e5                                      ldr r0, [sp, #0x20]
006c9f38  0d 17 81 e2                                      add r1, r1, #0x340000
006c9f3c  18 13 f1 eb                                      bl #0x30eba4
006c9f40  57 12 f1 eb                                      bl #0x30e8a4
006c9f44  00 20 a0 e1                                      mov r2, r0
006c9f48  01 30 a0 e1                                      mov r3, r1
006c9f4c  08 00 a0 e1                                      mov r0, r8
006c9f50  3c 10 8d e2                                      add r1, sp, #0x3c
006c9f54  00 10 8d e5                                      str r1, [sp]
006c9f58  44 50 8d e5                                      str r5, [sp, #0x44]
006c9f5c  3c 50 8d e5                                      str r5, [sp, #0x3c]
006c9f60  40 50 8d e5                                      str r5, [sp, #0x40]
006c9f64  9f 9b fd eb                                      bl #0x630de8
006c9f68  07 10 a0 e1                                      mov r1, r7
006c9f6c  04 00 a0 e1                                      mov r0, r4
006c9f70  00 30 94 e5                                      ldr r3, [r4]
006c9f74  0f e0 a0 e1                                      mov lr, pc
006c9f78  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
006c9f7c  06 10 a0 e1                                      mov r1, r6
006c9f80  04 00 a0 e1                                      mov r0, r4
006c9f84  00 30 94 e5                                      ldr r3, [r4]
006c9f88  0f e0 a0 e1                                      mov lr, pc
006c9f8c  04 f1 93 e5                                      ldr pc, [r3, #0x104]
006c9f90  04 00 a0 e1                                      mov r0, r4
006c9f94  08 10 a0 e1                                      mov r1, r8
006c9f98  00 30 94 e5                                      ldr r3, [r4]
006c9f9c  0f e0 a0 e1                                      mov lr, pc
006c9fa0  14 f1 93 e5                                      ldr pc, [r3, #0x114]
006c9fa4  6e fe ff ea                                      b #0x6c9964
006c9fa8  06 00 a0 e1                                      mov r0, r6
006c9fac  01 10 a0 e3                                      mov r1, #1
006c9fb0  85 fd ff eb                                      bl #0x6c95cc
006c9fb4  00 00 50 e3                                      cmp r0, #0
006c9fb8  98 fe ff 1a                                      bne #0x6c9a20
006c9fbc  20 30 d6 e5                                      ldrb r3, [r6, #0x20]
006c9fc0  00 00 53 e3                                      cmp r3, #0
006c9fc4  0f 00 00 0a                                      beq #0x6ca008
006c9fc8  70 10 96 e5                                      ldr r1, [r6, #0x70]
006c9fcc  38 00 96 e5                                      ldr r0, [r6, #0x38]
006c9fd0  f5 10 f1 eb                                      bl #0x30e3ac
006c9fd4  24 10 96 e5                                      ldr r1, [r6, #0x24]
006c9fd8  63 13 f1 eb                                      bl #0x30ed6c
006c9fdc  48 80 96 e5                                      ldr r8, [r6, #0x48]
006c9fe0  00 10 a0 e1                                      mov r1, r0
006c9fe4  08 00 a0 e1                                      mov r0, r8
006c9fe8  ed 12 f1 eb                                      bl #0x30eba4
006c9fec  00 10 a0 e3                                      mov r1, #0
006c9ff0  48 00 86 e5                                      str r0, [r6, #0x48]
006c9ff4  00 50 a0 e1                                      mov r5, r0
006c9ff8  c3 11 f1 eb                                      bl #0x30e70c
006c9ffc  00 00 50 e3                                      cmp r0, #0
006ca000  48 80 86 15                                      strne r8, [r6, #0x48]
006ca004  08 50 a0 11                                      movne r5, r8
006ca008  00 30 a0 e3                                      mov r3, #0
006ca00c  20 30 c6 e5                                      strb r3, [r6, #0x20]
006ca010  34 50 8d e5                                      str r5, [sp, #0x34]
006ca014  8c fe ff ea                                      b #0x6c9a4c
006ca018  74 30 96 e5                                      ldr r3, [r6, #0x74]
006ca01c  70 20 96 e5                                      ldr r2, [r6, #0x70]
006ca020  34 30 86 e5                                      str r3, [r6, #0x34]
006ca024  01 30 a0 e3                                      mov r3, #1
006ca028  21 30 c6 e5                                      strb r3, [r6, #0x21]
006ca02c  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
006ca030  30 20 86 e5                                      str r2, [r6, #0x30]
006ca034  20 30 8d e5                                      str r3, [sp, #0x20]
006ca038  50 20 96 e5                                      ldr r2, [r6, #0x50]
006ca03c  1c 20 8d e5                                      str r2, [sp, #0x1c]
006ca040  8b ff ff ea                                      b #0x6c9e74
006ca044  74 30 96 e5                                      ldr r3, [r6, #0x74]
006ca048  70 20 96 e5                                      ldr r2, [r6, #0x70]
006ca04c  44 30 86 e5                                      str r3, [r6, #0x44]
006ca050  01 30 a0 e3                                      mov r3, #1
006ca054  40 20 86 e5                                      str r2, [r6, #0x40]
006ca058  23 30 c6 e5                                      strb r3, [r6, #0x23]
006ca05c  65 ff ff ea                                      b #0x6c9df8
006ca060  21 30 d6 e5                                      ldrb r3, [r6, #0x21]
006ca064  00 00 53 e3                                      cmp r3, #0
006ca068  11 00 00 0a                                      beq #0x6ca0b4
006ca06c  70 10 96 e5                                      ldr r1, [r6, #0x70]
006ca070  30 00 96 e5                                      ldr r0, [r6, #0x30]
006ca074  cc 10 f1 eb                                      bl #0x30e3ac
006ca078  28 10 96 e5                                      ldr r1, [r6, #0x28]
006ca07c  3a 13 f1 eb                                      bl #0x30ed6c
006ca080  4c 10 96 e5                                      ldr r1, [r6, #0x4c]
006ca084  c6 12 f1 eb                                      bl #0x30eba4
006ca088  20 00 8d e5                                      str r0, [sp, #0x20]
006ca08c  74 10 96 e5                                      ldr r1, [r6, #0x74]
006ca090  4c 00 86 e5                                      str r0, [r6, #0x4c]
006ca094  34 00 96 e5                                      ldr r0, [r6, #0x34]
006ca098  c3 10 f1 eb                                      bl #0x30e3ac
006ca09c  28 10 96 e5                                      ldr r1, [r6, #0x28]
006ca0a0  31 13 f1 eb                                      bl #0x30ed6c
006ca0a4  50 10 96 e5                                      ldr r1, [r6, #0x50]
006ca0a8  bd 12 f1 eb                                      bl #0x30eba4
006ca0ac  1c 00 8d e5                                      str r0, [sp, #0x1c]
006ca0b0  50 00 86 e5                                      str r0, [r6, #0x50]
006ca0b4  00 30 a0 e3                                      mov r3, #0
006ca0b8  21 30 c6 e5                                      strb r3, [r6, #0x21]
006ca0bc  6c ff ff ea                                      b #0x6c9e74
006ca0c0  23 30 d6 e5                                      ldrb r3, [r6, #0x23]
006ca0c4  00 00 53 e3                                      cmp r3, #0
006ca0c8  4a 00 00 0a                                      beq #0x6ca1f8
006ca0cc  70 10 96 e5                                      ldr r1, [r6, #0x70]
006ca0d0  40 00 96 e5                                      ldr r0, [r6, #0x40]
006ca0d4  b4 10 f1 eb                                      bl #0x30e3ac
006ca0d8  74 10 96 e5                                      ldr r1, [r6, #0x74]
006ca0dc  00 70 a0 e1                                      mov r7, r0
006ca0e0  44 00 96 e5                                      ldr r0, [r6, #0x44]
006ca0e4  b0 10 f1 eb                                      bl #0x30e3ac
006ca0e8  78 10 9d e5                                      ldr r1, [sp, #0x78]
006ca0ec  00 80 a0 e1                                      mov r8, r0
006ca0f0  07 00 a0 e1                                      mov r0, r7
006ca0f4  1c 13 f1 eb                                      bl #0x30ed6c
006ca0f8  2c 50 96 e5                                      ldr r5, [r6, #0x2c]
006ca0fc  00 10 a0 e1                                      mov r1, r0
006ca100  05 00 a0 e1                                      mov r0, r5
006ca104  18 13 f1 eb                                      bl #0x30ed6c
006ca108  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006ca10c  00 a0 a0 e1                                      mov sl, r0
006ca110  08 00 a0 e1                                      mov r0, r8
006ca114  14 13 f1 eb                                      bl #0x30ed6c
006ca118  00 10 a0 e1                                      mov r1, r0
006ca11c  05 00 a0 e1                                      mov r0, r5
006ca120  11 13 f1 eb                                      bl #0x30ed6c
006ca124  00 10 a0 e1                                      mov r1, r0
006ca128  0a 00 a0 e1                                      mov r0, sl
006ca12c  9c 12 f1 eb                                      bl #0x30eba4
006ca130  00 10 a0 e1                                      mov r1, r0
006ca134  10 00 9d e5                                      ldr r0, [sp, #0x10]
006ca138  99 12 f1 eb                                      bl #0x30eba4
006ca13c  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
006ca140  10 00 8d e5                                      str r0, [sp, #0x10]
006ca144  07 00 a0 e1                                      mov r0, r7
006ca148  07 13 f1 eb                                      bl #0x30ed6c
006ca14c  00 10 a0 e1                                      mov r1, r0
006ca150  05 00 a0 e1                                      mov r0, r5
006ca154  04 13 f1 eb                                      bl #0x30ed6c
006ca158  70 10 9d e5                                      ldr r1, [sp, #0x70]
006ca15c  00 a0 a0 e1                                      mov sl, r0
006ca160  08 00 a0 e1                                      mov r0, r8
006ca164  00 13 f1 eb                                      bl #0x30ed6c
006ca168  00 10 a0 e1                                      mov r1, r0
006ca16c  05 00 a0 e1                                      mov r0, r5
006ca170  fd 12 f1 eb                                      bl #0x30ed6c
006ca174  00 10 a0 e1                                      mov r1, r0
006ca178  0a 00 a0 e1                                      mov r0, sl
006ca17c  88 12 f1 eb                                      bl #0x30eba4
006ca180  00 10 a0 e1                                      mov r1, r0
006ca184  14 00 9d e5                                      ldr r0, [sp, #0x14]
006ca188  85 12 f1 eb                                      bl #0x30eba4
006ca18c  80 10 9d e5                                      ldr r1, [sp, #0x80]
006ca190  14 00 8d e5                                      str r0, [sp, #0x14]
006ca194  07 00 a0 e1                                      mov r0, r7
006ca198  f3 12 f1 eb                                      bl #0x30ed6c
006ca19c  00 10 a0 e1                                      mov r1, r0
006ca1a0  05 00 a0 e1                                      mov r0, r5
006ca1a4  f0 12 f1 eb                                      bl #0x30ed6c
006ca1a8  74 10 9d e5                                      ldr r1, [sp, #0x74]
006ca1ac  00 70 a0 e1                                      mov r7, r0
006ca1b0  08 00 a0 e1                                      mov r0, r8
006ca1b4  ec 12 f1 eb                                      bl #0x30ed6c
006ca1b8  00 10 a0 e1                                      mov r1, r0
006ca1bc  05 00 a0 e1                                      mov r0, r5
006ca1c0  e9 12 f1 eb                                      bl #0x30ed6c
006ca1c4  00 10 a0 e1                                      mov r1, r0
006ca1c8  07 00 a0 e1                                      mov r0, r7
006ca1cc  74 12 f1 eb                                      bl #0x30eba4
006ca1d0  00 10 a0 e1                                      mov r1, r0
006ca1d4  18 00 9d e5                                      ldr r0, [sp, #0x18]
006ca1d8  71 12 f1 eb                                      bl #0x30eba4
006ca1dc  18 00 8d e5                                      str r0, [sp, #0x18]
006ca1e0  10 20 9d e5                                      ldr r2, [sp, #0x10]
006ca1e4  60 20 86 e5                                      str r2, [r6, #0x60]
006ca1e8  14 30 9d e5                                      ldr r3, [sp, #0x14]
006ca1ec  64 30 86 e5                                      str r3, [r6, #0x64]
006ca1f0  18 20 9d e5                                      ldr r2, [sp, #0x18]
006ca1f4  68 20 86 e5                                      str r2, [r6, #0x68]
006ca1f8  00 30 a0 e3                                      mov r3, #0
006ca1fc  23 30 c6 e5                                      strb r3, [r6, #0x23]
006ca200  fc fe ff ea                                      b #0x6c9df8
006ca204  14 10 96 e5                                      ldr r1, [r6, #0x14]
006ca208  54 00 96 e5                                      ldr r0, [r6, #0x54]
006ca20c  66 10 f1 eb                                      bl #0x30e3ac
006ca210  18 10 96 e5                                      ldr r1, [r6, #0x18]
006ca214  00 50 a0 e1                                      mov r5, r0
006ca218  58 00 96 e5                                      ldr r0, [r6, #0x58]
006ca21c  62 10 f1 eb                                      bl #0x30e3ac
006ca220  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
006ca224  00 80 a0 e1                                      mov r8, r0
006ca228  5c 00 96 e5                                      ldr r0, [r6, #0x5c]
006ca22c  5e 10 f1 eb                                      bl #0x30e3ac
006ca230  00 b0 a0 e1                                      mov fp, r0
006ca234  7a fe ff ea                                      b #0x6c9c24
006ca238  70 10 96 e5                                      ldr r1, [r6, #0x70]
006ca23c  38 00 96 e5                                      ldr r0, [r6, #0x38]
006ca240  59 10 f1 eb                                      bl #0x30e3ac
006ca244  24 10 96 e5                                      ldr r1, [r6, #0x24]
006ca248  c7 12 f1 eb                                      bl #0x30ed6c
006ca24c  05 10 a0 e1                                      mov r1, r5
006ca250  53 12 f1 eb                                      bl #0x30eba4
006ca254  cd 1c 0c e3                                      movw r1, #0xcccd
006ca258  cc 1d 43 e3                                      movt r1, #0x3dcc
006ca25c  34 00 8d e5                                      str r0, [sp, #0x34]
006ca260  29 11 f1 eb                                      bl #0x30e70c
006ca264  00 00 50 e3                                      cmp r0, #0
006ca268  cd 3c 0c 13                                      movwne r3, #0xcccd
006ca26c  cc 3d 43 13                                      movtne r3, #0x3dcc
006ca270  34 30 8d 15                                      strne r3, [sp, #0x34]
006ca274  f4 fd ff 1a                                      bne #0x6c9a4c
006ca278  34 00 9d e5                                      ldr r0, [sp, #0x34]
006ca27c  00 10 a0 e3                                      mov r1, #0
006ca280  21 11 f1 eb                                      bl #0x30e70c
006ca284  00 00 50 e3                                      cmp r0, #0
006ca288  34 50 8d 15                                      strne r5, [sp, #0x34]
006ca28c  ee fd ff ea                                      b #0x6c9a4c

; FUNCTION 0x006ca338, declared_size=340, range_size=340, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZN6glitch5scene28CSceneNodeAnimatorCameraMayaC1EPNS_3gui14ICursorControlEfff
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::CSceneNodeAnimatorCameraMaya(glitch::gui::ICursorControl*, float, float, float)
; decoder-mode: arm
006ca338  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006ca33c  38 51 9f e5                                      ldr r5, [pc, #0x138]
006ca340  38 e1 9f e5                                      ldr lr, [pc, #0x138]
006ca344  38 c1 9f e5                                      ldr ip, [pc, #0x138]
006ca348  05 50 8f e0                                      add r5, pc, r5
006ca34c  0e e0 95 e7                                      ldr lr, [r5, lr]
006ca350  0c c0 95 e7                                      ldr ip, [r5, ip]
006ca354  01 60 a0 e3                                      mov r6, #1
006ca358  08 e0 8e e2                                      add lr, lr, #8
006ca35c  08 d0 4d e2                                      sub sp, sp, #8
006ca360  7c 60 80 e5                                      str r6, [r0, #0x7c]
006ca364  78 e0 80 e5                                      str lr, [r0, #0x78]
006ca368  01 60 a0 e1                                      mov r6, r1
006ca36c  04 10 8c e2                                      add r1, ip, #4
006ca370  00 40 a0 e1                                      mov r4, r0
006ca374  02 70 a0 e1                                      mov r7, r2
006ca378  03 80 a0 e1                                      mov r8, r3
006ca37c  c3 ff ff eb                                      bl #0x6ca290
006ca380  00 11 9f e5                                      ldr r1, [pc, #0x100]
006ca384  24 80 84 e5                                      str r8, [r4, #0x24]
006ca388  28 70 84 e5                                      str r7, [r4, #0x28]
006ca38c  01 10 95 e7                                      ldr r1, [r5, r1]
006ca390  00 30 a0 e3                                      mov r3, #0
006ca394  00 20 a0 e3                                      mov r2, #0
006ca398  80 c0 81 e2                                      add ip, r1, #0x80
006ca39c  0c e0 81 e2                                      add lr, r1, #0xc
006ca3a0  9c 10 81 e2                                      add r1, r1, #0x9c
006ca3a4  00 e0 84 e5                                      str lr, [r4]
006ca3a8  78 10 84 e5                                      str r1, [r4, #0x78]
006ca3ac  04 c0 84 e5                                      str ip, [r4, #4]
006ca3b0  20 10 9d e5                                      ldr r1, [sp, #0x20]
006ca3b4  3f 04 a0 e3                                      mov r0, #0x3f000000
006ca3b8  00 00 56 e3                                      cmp r6, #0
006ca3bc  2c 10 84 e5                                      str r1, [r4, #0x2c]
006ca3c0  42 14 a0 e3                                      mov r1, #0x42000000
006ca3c4  23 17 81 e2                                      add r1, r1, #0x8c0000
006ca3c8  48 10 84 e5                                      str r1, [r4, #0x48]
006ca3cc  68 30 84 e5                                      str r3, [r4, #0x68]
006ca3d0  6c 20 84 e5                                      str r2, [r4, #0x6c]
006ca3d4  74 00 84 e5                                      str r0, [r4, #0x74]
006ca3d8  10 60 84 e5                                      str r6, [r4, #0x10]
006ca3dc  14 30 84 e5                                      str r3, [r4, #0x14]
006ca3e0  18 30 84 e5                                      str r3, [r4, #0x18]
006ca3e4  1c 30 84 e5                                      str r3, [r4, #0x1c]
006ca3e8  20 20 c4 e5                                      strb r2, [r4, #0x20]
006ca3ec  21 20 c4 e5                                      strb r2, [r4, #0x21]
006ca3f0  22 20 c4 e5                                      strb r2, [r4, #0x22]
006ca3f4  23 20 c4 e5                                      strb r2, [r4, #0x23]
006ca3f8  30 30 84 e5                                      str r3, [r4, #0x30]
006ca3fc  34 30 84 e5                                      str r3, [r4, #0x34]
006ca400  38 30 84 e5                                      str r3, [r4, #0x38]
006ca404  3c 30 84 e5                                      str r3, [r4, #0x3c]
006ca408  40 30 84 e5                                      str r3, [r4, #0x40]
006ca40c  44 30 84 e5                                      str r3, [r4, #0x44]
006ca410  4c 30 84 e5                                      str r3, [r4, #0x4c]
006ca414  50 30 84 e5                                      str r3, [r4, #0x50]
006ca418  54 30 84 e5                                      str r3, [r4, #0x54]
006ca41c  58 30 84 e5                                      str r3, [r4, #0x58]
006ca420  5c 30 84 e5                                      str r3, [r4, #0x5c]
006ca424  60 30 84 e5                                      str r3, [r4, #0x60]
006ca428  64 30 84 e5                                      str r3, [r4, #0x64]
006ca42c  70 00 84 e5                                      str r0, [r4, #0x70]
006ca430  0c 00 00 0a                                      beq #0x6ca468
006ca434  04 30 96 e5                                      ldr r3, [r6, #4]
006ca438  0d 00 a0 e1                                      mov r0, sp
006ca43c  01 30 83 e2                                      add r3, r3, #1
006ca440  04 30 86 e5                                      str r3, [r6, #4]
006ca444  10 30 94 e5                                      ldr r3, [r4, #0x10]
006ca448  03 10 a0 e1                                      mov r1, r3
006ca44c  00 30 93 e5                                      ldr r3, [r3]
006ca450  0f e0 a0 e1                                      mov lr, pc
006ca454  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006ca458  04 30 9d e5                                      ldr r3, [sp, #4]
006ca45c  00 20 9d e5                                      ldr r2, [sp]
006ca460  74 30 84 e5                                      str r3, [r4, #0x74]
006ca464  70 20 84 e5                                      str r2, [r4, #0x70]
006ca468  04 00 a0 e1                                      mov r0, r4
006ca46c  59 fc ff eb                                      bl #0x6c95d8
006ca470  04 00 a0 e1                                      mov r0, r4
006ca474  08 d0 8d e2                                      add sp, sp, #8
006ca478  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006ca47c  48 a7 2c 00 44 2b 00 00 14 42 00 00 cc 22 00 00  .byte 0x48, 0xa7, 0x2c, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x14, 0x42, 0x00, 0x00, 0xcc, 0x22, 0x00, 0x00

; FUNCTION 0x006ca48c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZN6glitch5scene28CSceneNodeAnimatorCameraMaya11createCloneEv
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::createClone()
; decoder-mode: arm
006ca48c  30 40 2d e9                                      push {r4, r5, lr}
006ca490  00 10 a0 e3                                      mov r1, #0
006ca494  00 50 a0 e1                                      mov r5, r0
006ca498  0c d0 4d e2                                      sub sp, sp, #0xc
006ca49c  80 00 a0 e3                                      mov r0, #0x80
006ca4a0  41 a7 f9 eb                                      bl #0x5341ac
006ca4a4  2c c0 95 e5                                      ldr ip, [r5, #0x2c]
006ca4a8  00 40 a0 e1                                      mov r4, r0
006ca4ac  10 10 95 e5                                      ldr r1, [r5, #0x10]
006ca4b0  28 20 95 e5                                      ldr r2, [r5, #0x28]
006ca4b4  24 30 95 e5                                      ldr r3, [r5, #0x24]
006ca4b8  00 c0 8d e5                                      str ip, [sp]
006ca4bc  9d ff ff eb                                      bl #0x6ca338
006ca4c0  04 00 a0 e1                                      mov r0, r4
006ca4c4  0c d0 8d e2                                      add sp, sp, #0xc
006ca4c8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006ca4cc, declared_size=308, range_size=308, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZN6glitch5scene28CSceneNodeAnimatorCameraMayaC2EPNS_3gui14ICursorControlEfff
; demangled: glitch::scene::CSceneNodeAnimatorCameraMaya::CSceneNodeAnimatorCameraMaya(glitch::gui::ICursorControl*, float, float, float)
; decoder-mode: arm
006ca4cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006ca4d0  01 50 a0 e1                                      mov r5, r1
006ca4d4  08 d0 4d e2                                      sub sp, sp, #8
006ca4d8  04 10 81 e2                                      add r1, r1, #4
006ca4dc  14 41 9f e5                                      ldr r4, [pc, #0x114]
006ca4e0  00 70 a0 e1                                      mov r7, r0
006ca4e4  02 60 a0 e1                                      mov r6, r2
006ca4e8  03 80 a0 e1                                      mov r8, r3
006ca4ec  67 ff ff eb                                      bl #0x6ca290
006ca4f0  00 30 95 e5                                      ldr r3, [r5]
006ca4f4  00 21 9f e5                                      ldr r2, [pc, #0x100]
006ca4f8  04 40 8f e0                                      add r4, pc, r4
006ca4fc  00 30 87 e5                                      str r3, [r7]
006ca500  02 20 94 e7                                      ldr r2, [r4, r2]
006ca504  0c c0 13 e5                                      ldr ip, [r3, #-0xc]
006ca508  1c e0 95 e5                                      ldr lr, [r5, #0x1c]
006ca50c  80 00 82 e2                                      add r0, r2, #0x80
006ca510  00 30 a0 e3                                      mov r3, #0
006ca514  0c e0 87 e7                                      str lr, [r7, ip]
006ca518  04 00 87 e5                                      str r0, [r7, #4]
006ca51c  20 00 9d e5                                      ldr r0, [sp, #0x20]
006ca520  28 80 87 e5                                      str r8, [r7, #0x28]
006ca524  00 20 a0 e3                                      mov r2, #0
006ca528  24 00 87 e5                                      str r0, [r7, #0x24]
006ca52c  24 00 9d e5                                      ldr r0, [sp, #0x24]
006ca530  3f 14 a0 e3                                      mov r1, #0x3f000000
006ca534  00 00 56 e3                                      cmp r6, #0
006ca538  2c 00 87 e5                                      str r0, [r7, #0x2c]
006ca53c  42 04 a0 e3                                      mov r0, #0x42000000
006ca540  23 07 80 e2                                      add r0, r0, #0x8c0000
006ca544  48 00 87 e5                                      str r0, [r7, #0x48]
006ca548  68 30 87 e5                                      str r3, [r7, #0x68]
006ca54c  10 60 87 e5                                      str r6, [r7, #0x10]
006ca550  14 30 87 e5                                      str r3, [r7, #0x14]
006ca554  18 30 87 e5                                      str r3, [r7, #0x18]
006ca558  1c 30 87 e5                                      str r3, [r7, #0x1c]
006ca55c  20 20 c7 e5                                      strb r2, [r7, #0x20]
006ca560  21 20 c7 e5                                      strb r2, [r7, #0x21]
006ca564  22 20 c7 e5                                      strb r2, [r7, #0x22]
006ca568  23 20 c7 e5                                      strb r2, [r7, #0x23]
006ca56c  30 30 87 e5                                      str r3, [r7, #0x30]
006ca570  34 30 87 e5                                      str r3, [r7, #0x34]
006ca574  38 30 87 e5                                      str r3, [r7, #0x38]
006ca578  3c 30 87 e5                                      str r3, [r7, #0x3c]
006ca57c  40 30 87 e5                                      str r3, [r7, #0x40]
006ca580  44 30 87 e5                                      str r3, [r7, #0x44]
006ca584  4c 30 87 e5                                      str r3, [r7, #0x4c]
006ca588  50 30 87 e5                                      str r3, [r7, #0x50]
006ca58c  54 30 87 e5                                      str r3, [r7, #0x54]
006ca590  58 30 87 e5                                      str r3, [r7, #0x58]
006ca594  5c 30 87 e5                                      str r3, [r7, #0x5c]
006ca598  60 30 87 e5                                      str r3, [r7, #0x60]
006ca59c  64 30 87 e5                                      str r3, [r7, #0x64]
006ca5a0  6c 20 87 e5                                      str r2, [r7, #0x6c]
006ca5a4  74 10 87 e5                                      str r1, [r7, #0x74]
006ca5a8  70 10 87 e5                                      str r1, [r7, #0x70]
006ca5ac  0c 00 00 0a                                      beq #0x6ca5e4
006ca5b0  04 30 96 e5                                      ldr r3, [r6, #4]
006ca5b4  0d 00 a0 e1                                      mov r0, sp
006ca5b8  01 30 83 e2                                      add r3, r3, #1
006ca5bc  04 30 86 e5                                      str r3, [r6, #4]
006ca5c0  10 30 97 e5                                      ldr r3, [r7, #0x10]
006ca5c4  03 10 a0 e1                                      mov r1, r3
006ca5c8  00 30 93 e5                                      ldr r3, [r3]
006ca5cc  0f e0 a0 e1                                      mov lr, pc
006ca5d0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006ca5d4  04 30 9d e5                                      ldr r3, [sp, #4]
006ca5d8  00 20 9d e5                                      ldr r2, [sp]
006ca5dc  74 30 87 e5                                      str r3, [r7, #0x74]
006ca5e0  70 20 87 e5                                      str r2, [r7, #0x70]
006ca5e4  07 00 a0 e1                                      mov r0, r7
006ca5e8  fa fb ff eb                                      bl #0x6c95d8
006ca5ec  07 00 a0 e1                                      mov r0, r7
006ca5f0  08 d0 8d e2                                      add sp, sp, #8
006ca5f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006ca5f8  98 a5 2c 00 cc 22 00 00                          .byte 0x98, 0xa5, 0x2c, 0x00, 0xcc, 0x22, 0x00, 0x00

; FUNCTION 0x006ca674, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZTv0_n12_N6glitch5scene28CSceneNodeAnimatorCameraMayaD0Ev
; demangled: virtual thunk to glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya()
; decoder-mode: arm
006ca674  00 30 90 e5                                      ldr r3, [r0]
006ca678  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006ca67c  03 00 80 e0                                      add r0, r0, r3
006ca680  30 fc ff ea                                      b #0x6c9748

; FUNCTION 0x006ca684, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorCameraMaya
; alias: _ZTv0_n12_N6glitch5scene28CSceneNodeAnimatorCameraMayaD1Ev
; demangled: virtual thunk to glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya()
; decoder-mode: arm
006ca684  00 30 90 e5                                      ldr r3, [r0]
006ca688  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006ca68c  03 00 80 e0                                      add r0, r0, r3
006ca690  06 fc ff ea                                      b #0x6c96b0
