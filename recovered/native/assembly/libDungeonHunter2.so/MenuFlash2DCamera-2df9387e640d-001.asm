; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042ca88, declared_size=4, range_size=4, mode=arm
; class-group: MenuFlash2DCamera
; alias: _ZN17MenuFlash2DCameraD1Ev
; demangled: MenuFlash2DCamera::~MenuFlash2DCamera()
; decoder-mode: arm
0042ca88  1e ff 2f e1                                      bx lr

; FUNCTION 0x0042cc50, declared_size=128, range_size=128, mode=arm
; class-group: MenuFlash2DCamera
; alias: _ZN17MenuFlash2DCameraC2EP6MenuFX
; demangled: MenuFlash2DCamera::MenuFlash2DCamera(MenuFX*)
; decoder-mode: arm
0042cc50  68 20 9f e5                                      ldr r2, [pc, #0x68]
0042cc54  68 c0 9f e5                                      ldr ip, [pc, #0x68]
0042cc58  68 30 9f e5                                      ldr r3, [pc, #0x68]
0042cc5c  02 20 8f e0                                      add r2, pc, r2
0042cc60  30 00 2d e9                                      push {r4, r5}
0042cc64  0c c0 92 e7                                      ldr ip, [r2, ip]
0042cc68  03 40 92 e7                                      ldr r4, [r2, r3]
0042cc6c  04 10 80 e5                                      str r1, [r0, #4]
0042cc70  08 50 8c e2                                      add r5, ip, #8
0042cc74  00 c0 a0 e3                                      mov ip, #0
0042cc78  00 50 80 e5                                      str r5, [r0]
0042cc7c  08 c0 80 e5                                      str ip, [r0, #8]
0042cc80  00 10 94 e5                                      ldr r1, [r4]
0042cc84  40 40 9f e5                                      ldr r4, [pc, #0x40]
0042cc88  a1 1f 81 e0                                      add r1, r1, r1, lsr #31
0042cc8c  04 20 92 e7                                      ldr r2, [r2, r4]
0042cc90  c1 10 a0 e1                                      asr r1, r1, #1
0042cc94  1c 10 80 e5                                      str r1, [r0, #0x1c]
0042cc98  00 20 92 e5                                      ldr r2, [r2]
0042cc9c  30 c0 80 e5                                      str ip, [r0, #0x30]
0042cca0  24 c0 80 e5                                      str ip, [r0, #0x24]
0042cca4  a2 2f 82 e0                                      add r2, r2, r2, lsr #31
0042cca8  28 c0 80 e5                                      str ip, [r0, #0x28]
0042ccac  c2 20 a0 e1                                      asr r2, r2, #1
0042ccb0  20 20 80 e5                                      str r2, [r0, #0x20]
0042ccb4  2c c0 80 e5                                      str ip, [r0, #0x2c]
0042ccb8  30 00 bd e8                                      pop {r4, r5}
0042ccbc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0042ccc0  34 7e 56 00 64 0e 00 00 c4 25 00 00 f8 22 00 00  .byte 0x34, 0x7e, 0x56, 0x00, 0x64, 0x0e, 0x00, 0x00, 0xc4, 0x25, 0x00, 0x00, 0xf8, 0x22, 0x00, 0x00

; FUNCTION 0x0042ccd0, declared_size=128, range_size=128, mode=arm
; class-group: MenuFlash2DCamera
; alias: _ZN17MenuFlash2DCameraC1EP6MenuFX
; demangled: MenuFlash2DCamera::MenuFlash2DCamera(MenuFX*)
; decoder-mode: arm
0042ccd0  68 20 9f e5                                      ldr r2, [pc, #0x68]
0042ccd4  68 c0 9f e5                                      ldr ip, [pc, #0x68]
0042ccd8  68 30 9f e5                                      ldr r3, [pc, #0x68]
0042ccdc  02 20 8f e0                                      add r2, pc, r2
0042cce0  30 00 2d e9                                      push {r4, r5}
0042cce4  0c c0 92 e7                                      ldr ip, [r2, ip]
0042cce8  03 40 92 e7                                      ldr r4, [r2, r3]
0042ccec  04 10 80 e5                                      str r1, [r0, #4]
0042ccf0  08 50 8c e2                                      add r5, ip, #8
0042ccf4  00 c0 a0 e3                                      mov ip, #0
0042ccf8  00 50 80 e5                                      str r5, [r0]
0042ccfc  08 c0 80 e5                                      str ip, [r0, #8]
0042cd00  00 10 94 e5                                      ldr r1, [r4]
0042cd04  40 40 9f e5                                      ldr r4, [pc, #0x40]
0042cd08  a1 1f 81 e0                                      add r1, r1, r1, lsr #31
0042cd0c  04 20 92 e7                                      ldr r2, [r2, r4]
0042cd10  c1 10 a0 e1                                      asr r1, r1, #1
0042cd14  1c 10 80 e5                                      str r1, [r0, #0x1c]
0042cd18  00 20 92 e5                                      ldr r2, [r2]
0042cd1c  30 c0 80 e5                                      str ip, [r0, #0x30]
0042cd20  24 c0 80 e5                                      str ip, [r0, #0x24]
0042cd24  a2 2f 82 e0                                      add r2, r2, r2, lsr #31
0042cd28  28 c0 80 e5                                      str ip, [r0, #0x28]
0042cd2c  c2 20 a0 e1                                      asr r2, r2, #1
0042cd30  20 20 80 e5                                      str r2, [r0, #0x20]
0042cd34  2c c0 80 e5                                      str ip, [r0, #0x2c]
0042cd38  30 00 bd e8                                      pop {r4, r5}
0042cd3c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0042cd40  b4 7d 56 00 64 0e 00 00 c4 25 00 00 f8 22 00 00  .byte 0xb4, 0x7d, 0x56, 0x00, 0x64, 0x0e, 0x00, 0x00, 0xc4, 0x25, 0x00, 0x00, 0xf8, 0x22, 0x00, 0x00

; FUNCTION 0x0042cd50, declared_size=52, range_size=52, mode=arm
; class-group: MenuFlash2DCamera
; alias: _ZN17MenuFlash2DCameraD0Ev
; demangled: MenuFlash2DCamera::~MenuFlash2DCamera()
; decoder-mode: arm
0042cd50  24 30 9f e5                                      ldr r3, [pc, #0x24]
0042cd54  24 20 9f e5                                      ldr r2, [pc, #0x24]
0042cd58  10 40 2d e9                                      push {r4, lr}
0042cd5c  03 30 8f e0                                      add r3, pc, r3
0042cd60  02 20 93 e7                                      ldr r2, [r3, r2]
0042cd64  00 40 a0 e1                                      mov r4, r0
0042cd68  08 20 82 e2                                      add r2, r2, #8
0042cd6c  00 20 80 e5                                      str r2, [r0]
0042cd70  b2 8d fb eb                                      bl #0x310440
0042cd74  04 00 a0 e1                                      mov r0, r4
0042cd78  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0042cd7c  34 7d 56 00 64 0e 00 00                          .byte 0x34, 0x7d, 0x56, 0x00, 0x64, 0x0e, 0x00, 0x00

; FUNCTION 0x0042cd84, declared_size=428, range_size=428, mode=arm
; class-group: MenuFlash2DCamera
; alias: _ZN17MenuFlash2DCamera6UpdateEv
; demangled: MenuFlash2DCamera::Update()
; decoder-mode: arm
0042cd84  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0042cd88  24 20 90 e5                                      ldr r2, [r0, #0x24]
0042cd8c  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
0042cd90  90 31 9f e5                                      ldr r3, [pc, #0x190]
0042cd94  08 d0 4d e2                                      sub sp, sp, #8
0042cd98  01 00 52 e1                                      cmp r2, r1
0042cd9c  00 40 a0 e1                                      mov r4, r0
0042cda0  03 30 8f e0                                      add r3, pc, r3
0042cda4  54 00 00 aa                                      bge #0x42cefc
0042cda8  67 06 06 e3                                      movw r0, #0x6667
0042cdac  01 10 62 e0                                      rsb r1, r2, r1
0042cdb0  66 06 46 e3                                      movt r0, #0x6666
0042cdb4  90 c1 c0 e0                                      smull ip, r0, r0, r1
0042cdb8  c1 1f a0 e1                                      asr r1, r1, #0x1f
0042cdbc  40 11 61 e0                                      rsb r1, r1, r0, asr #2
0042cdc0  01 20 82 e2                                      add r2, r2, #1
0042cdc4  01 20 82 e0                                      add r2, r2, r1
0042cdc8  24 20 84 e5                                      str r2, [r4, #0x24]
0042cdcc  28 20 94 e5                                      ldr r2, [r4, #0x28]
0042cdd0  30 10 94 e5                                      ldr r1, [r4, #0x30]
0042cdd4  01 00 52 e1                                      cmp r2, r1
0042cdd8  3c 00 00 aa                                      bge #0x42ced0
0042cddc  67 06 06 e3                                      movw r0, #0x6667
0042cde0  01 10 62 e0                                      rsb r1, r2, r1
0042cde4  66 06 46 e3                                      movt r0, #0x6666
0042cde8  90 c1 c0 e0                                      smull ip, r0, r0, r1
0042cdec  c1 1f a0 e1                                      asr r1, r1, #0x1f
0042cdf0  40 11 61 e0                                      rsb r1, r1, r0, asr #2
0042cdf4  01 20 82 e2                                      add r2, r2, #1
0042cdf8  01 20 82 e0                                      add r2, r2, r1
0042cdfc  28 20 84 e5                                      str r2, [r4, #0x28]
0042ce00  24 11 9f e5                                      ldr r1, [pc, #0x124]
0042ce04  08 20 94 e5                                      ldr r2, [r4, #8]
0042ce08  01 30 93 e7                                      ldr r3, [r3, r1]
0042ce0c  00 00 52 e3                                      cmp r2, #0
0042ce10  10 30 93 e5                                      ldr r3, [r3, #0x10]
0042ce14  10 30 93 e5                                      ldr r3, [r3, #0x10]
0042ce18  cc 30 93 e5                                      ldr r3, [r3, #0xcc]
0042ce1c  04 30 13 e5                                      ldr r3, [r3, #-4]
0042ce20  10 50 93 e5                                      ldr r5, [r3, #0x10]
0042ce24  0c 60 93 e5                                      ldr r6, [r3, #0xc]
0042ce28  19 00 00 0a                                      beq #0x42ce94
0042ce2c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0042ce30  a5 85 fb eb                                      bl #0x30e4cc
0042ce34  24 80 94 e5                                      ldr r8, [r4, #0x24]
0042ce38  08 30 80 e0                                      add r3, r0, r8
0042ce3c  00 00 53 e3                                      cmp r3, #0
0042ce40  00 80 60 c2                                      rsbgt r8, r0, #0
0042ce44  24 80 84 c5                                      strgt r8, [r4, #0x24]
0042ce48  14 00 94 e5                                      ldr r0, [r4, #0x14]
0042ce4c  9e 85 fb eb                                      bl #0x30e4cc
0042ce50  28 70 94 e5                                      ldr r7, [r4, #0x28]
0042ce54  07 30 80 e0                                      add r3, r0, r7
0042ce58  00 00 53 e3                                      cmp r3, #0
0042ce5c  00 70 60 c2                                      rsbgt r7, r0, #0
0042ce60  28 70 84 c5                                      strgt r7, [r4, #0x28]
0042ce64  10 00 94 e5                                      ldr r0, [r4, #0x10]
0042ce68  97 85 fb eb                                      bl #0x30e4cc
0042ce6c  08 80 80 e0                                      add r8, r0, r8
0042ce70  08 00 56 e1                                      cmp r6, r8
0042ce74  06 00 60 c0                                      rsbgt r0, r0, r6
0042ce78  24 00 84 c5                                      strgt r0, [r4, #0x24]
0042ce7c  18 00 94 e5                                      ldr r0, [r4, #0x18]
0042ce80  91 85 fb eb                                      bl #0x30e4cc
0042ce84  07 70 80 e0                                      add r7, r0, r7
0042ce88  07 00 55 e1                                      cmp r5, r7
0042ce8c  05 00 60 c0                                      rsbgt r0, r0, r5
0042ce90  28 00 84 c5                                      strgt r0, [r4, #0x28]
0042ce94  00 10 a0 e3                                      mov r1, #0
0042ce98  04 00 94 e5                                      ldr r0, [r4, #4]
0042ce9c  01 20 a0 e1                                      mov r2, r1
0042cea0  06 30 a0 e1                                      mov r3, r6
0042cea4  00 50 8d e5                                      str r5, [sp]
0042cea8  3f f3 0d eb                                      bl #0x7a9bac
0042ceac  28 20 94 e5                                      ldr r2, [r4, #0x28]
0042ceb0  04 00 94 e5                                      ldr r0, [r4, #4]
0042ceb4  24 10 94 e5                                      ldr r1, [r4, #0x24]
0042ceb8  00 c0 a0 e3                                      mov ip, #0
0042cebc  06 30 a0 e1                                      mov r3, r6
0042cec0  20 10 8d e8                                      stm sp, {r5, ip}
0042cec4  19 f3 0d eb                                      bl #0x7a9b30
0042cec8  08 d0 8d e2                                      add sp, sp, #8
0042cecc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0042ced0  ca ff ff da                                      ble #0x42ce00
0042ced4  67 06 06 e3                                      movw r0, #0x6667
0042ced8  02 10 61 e0                                      rsb r1, r1, r2
0042cedc  66 06 46 e3                                      movt r0, #0x6666
0042cee0  90 c1 c0 e0                                      smull ip, r0, r0, r1
0042cee4  c1 1f a0 e1                                      asr r1, r1, #0x1f
0042cee8  40 11 61 e0                                      rsb r1, r1, r0, asr #2
0042ceec  01 10 e0 e1                                      mvn r1, r1
0042cef0  02 20 81 e0                                      add r2, r1, r2
0042cef4  28 20 84 e5                                      str r2, [r4, #0x28]
0042cef8  c0 ff ff ea                                      b #0x42ce00
0042cefc  b2 ff ff da                                      ble #0x42cdcc
0042cf00  67 06 06 e3                                      movw r0, #0x6667
0042cf04  02 10 61 e0                                      rsb r1, r1, r2
0042cf08  66 06 46 e3                                      movt r0, #0x6666
0042cf0c  90 c1 c0 e0                                      smull ip, r0, r0, r1
0042cf10  c1 1f a0 e1                                      asr r1, r1, #0x1f
0042cf14  40 11 61 e0                                      rsb r1, r1, r0, asr #2
0042cf18  01 10 e0 e1                                      mvn r1, r1
0042cf1c  02 20 81 e0                                      add r2, r1, r2
0042cf20  24 20 84 e5                                      str r2, [r4, #0x24]
0042cf24  a8 ff ff ea                                      b #0x42cdcc
; mapping-symbol data/literal pool
0042cf28  f0 7c 56 00 f4 37 00 00                          .byte 0xf0, 0x7c, 0x56, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0042cf30, declared_size=56, range_size=56, mode=arm
; class-group: MenuFlash2DCamera
; alias: _ZN17MenuFlash2DCamera12SetLimitClipEPN7gameswf9characterE
; demangled: MenuFlash2DCamera::SetLimitClip(gameswf::character*)
; decoder-mode: arm
0042cf30  30 40 2d e9                                      push {r4, r5, lr}
0042cf34  00 00 51 e3                                      cmp r1, #0
0042cf38  00 40 a0 e1                                      mov r4, r0
0042cf3c  14 d0 4d e2                                      sub sp, sp, #0x14
0042cf40  08 10 84 e5                                      str r1, [r4, #8]
0042cf44  05 00 00 0a                                      beq #0x42cf60
0042cf48  0d 00 a0 e1                                      mov r0, sp
0042cf4c  ca a6 ff eb                                      bl #0x416a7c
0042cf50  0d 50 a0 e1                                      mov r5, sp
0042cf54  0c c0 84 e2                                      add ip, r4, #0xc
0042cf58  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0042cf5c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0042cf60  14 d0 8d e2                                      add sp, sp, #0x14
0042cf64  30 80 bd e8                                      pop {r4, r5, pc}
