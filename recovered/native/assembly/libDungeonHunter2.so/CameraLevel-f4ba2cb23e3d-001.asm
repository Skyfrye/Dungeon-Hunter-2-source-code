; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0040f8f8, declared_size=12, range_size=12, mode=arm
; class-group: CameraLevel
; alias: _ZN11CameraLevel10__CallbackEPN6glitch5scene19ITimelineControllerEPv
; demangled: CameraLevel::__Callback(glitch::scene::ITimelineController*, void*)
; decoder-mode: arm
0040f8f8  00 30 a0 e3                                      mov r3, #0
0040f8fc  84 30 c1 e5                                      strb r3, [r1, #0x84]
0040f900  1e ff 2f e1                                      bx lr

; FUNCTION 0x0040f904, declared_size=124, range_size=124, mode=arm
; class-group: CameraLevel
; alias: _ZN11CameraLevel8PlayAnimEiib
; demangled: CameraLevel::PlayAnim(int, int, bool)
; decoder-mode: arm
0040f904  30 40 2d e9                                      push {r4, r5, lr}
0040f908  00 40 a0 e1                                      mov r4, r0
0040f90c  44 00 90 e5                                      ldr r0, [r0, #0x44]
0040f910  03 50 a0 e1                                      mov r5, r3
0040f914  0c d0 4d e2                                      sub sp, sp, #0xc
0040f918  38 30 90 e5                                      ldr r3, [r0, #0x38]
0040f91c  02 c0 a0 e1                                      mov ip, r2
0040f920  00 00 53 e3                                      cmp r3, #0
0040f924  13 00 00 0a                                      beq #0x40f978
0040f928  00 e0 a0 e3                                      mov lr, #0
0040f92c  0c c0 83 e5                                      str ip, [r3, #0xc]
0040f930  10 e0 c3 e5                                      strb lr, [r3, #0x10]
0040f934  00 c0 93 e5                                      ldr ip, [r3]
0040f938  03 00 a0 e1                                      mov r0, r3
0040f93c  0e 20 a0 e1                                      mov r2, lr
0040f940  00 e0 8d e5                                      str lr, [sp]
0040f944  0e 30 a0 e1                                      mov r3, lr
0040f948  0f e0 a0 e1                                      mov lr, pc
0040f94c  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0040f950  00 00 50 e3                                      cmp r0, #0
0040f954  07 00 00 0a                                      beq #0x40f978
0040f958  01 30 a0 e3                                      mov r3, #1
0040f95c  00 00 55 e3                                      cmp r5, #0
0040f960  84 30 c4 e5                                      strb r3, [r4, #0x84]
0040f964  00 30 a0 03                                      moveq r3, #0
0040f968  88 30 84 05                                      streq r3, [r4, #0x88]
0040f96c  fe 35 a0 03                                      moveq r3, #0x3f800000
0040f970  a4 50 c4 e5                                      strb r5, [r4, #0xa4]
0040f974  8c 30 84 05                                      streq r3, [r4, #0x8c]
0040f978  0c d0 8d e2                                      add sp, sp, #0xc
0040f97c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0040f980, declared_size=232, range_size=232, mode=arm
; class-group: CameraLevel
; alias: _ZNK11CameraLevel16CanPlayShakeAnimEP9Character
; demangled: CameraLevel::CanPlayShakeAnim(Character*) const
; decoder-mode: arm
0040f980  70 40 2d e9                                      push {r4, r5, r6, lr}
0040f984  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
0040f988  00 60 51 e2                                      subs r6, r1, #0
0040f98c  08 d0 4d e2                                      sub sp, sp, #8
0040f990  05 50 8f e0                                      add r5, pc, r5
0040f994  15 00 00 0a                                      beq #0x40f9f0
0040f998  00 30 96 e5                                      ldr r3, [r6]
0040f99c  06 00 a0 e1                                      mov r0, r6
0040f9a0  0f e0 a0 e1                                      mov lr, pc
0040f9a4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0040f9a8  00 00 50 e3                                      cmp r0, #0
0040f9ac  02 00 00 1a                                      bne #0x40f9bc
0040f9b0  01 00 a0 e3                                      mov r0, #1
0040f9b4  08 d0 8d e2                                      add sp, sp, #8
0040f9b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0040f9bc  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0040f9c0  00 10 a0 e3                                      mov r1, #0
0040f9c4  03 40 95 e7                                      ldr r4, [r5, r3]
0040f9c8  40 00 94 e5                                      ldr r0, [r4, #0x40]
0040f9cc  3f 7c fd eb                                      bl #0x36ead0
0040f9d0  01 00 50 e3                                      cmp r0, #1
0040f9d4  00 00 a0 13                                      movne r0, #0
0040f9d8  f5 ff ff 1a                                      bne #0x40f9b4
0040f9dc  40 00 94 e5                                      ldr r0, [r4, #0x40]
0040f9e0  06 10 a0 e1                                      mov r1, r6
0040f9e4  08 d0 8d e2                                      add sp, sp, #8
0040f9e8  70 40 bd e8                                      pop {r4, r5, r6, lr}
0040f9ec  82 7d fd ea                                      b #0x36effc
0040f9f0  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0040f9f4  03 30 95 e7                                      ldr r3, [r5, r3]
0040f9f8  00 40 93 e5                                      ldr r4, [r3]
0040f9fc  02 00 54 e3                                      cmp r4, #2
0040fa00  00 60 86 05                                      streq r6, [r6]
0040fa04  01 00 a0 03                                      moveq r0, #1
0040fa08  e9 ff ff 0a                                      beq #0x40f9b4
0040fa0c  01 00 54 e3                                      cmp r4, #1
0040fa10  e6 ff ff 1a                                      bne #0x40f9b0
0040fa14  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0040fa18  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0040fa1c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0040fa20  00 00 95 e7                                      ldr r0, [r5, r0]
0040fa24  38 30 9f e5                                      ldr r3, [pc, #0x38]
0040fa28  f6 c0 a0 e3                                      mov ip, #0xf6
0040fa2c  01 10 8f e0                                      add r1, pc, r1
0040fa30  a8 00 80 e2                                      add r0, r0, #0xa8
0040fa34  02 20 8f e0                                      add r2, pc, r2
0040fa38  03 30 8f e0                                      add r3, pc, r3
0040fa3c  00 c0 8d e5                                      str ip, [sp]
0040fa40  6f f9 fb eb                                      bl #0x30e004
0040fa44  04 00 a0 e1                                      mov r0, r4
0040fa48  d9 ff ff ea                                      b #0x40f9b4
; mapping-symbol data/literal pool
0040fa4c  00 51 58 00 f4 37 00 00 c0 39 00 00 c0 19 00 00  .byte 0x00, 0x51, 0x58, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0040fa5c  ac e9 4a 00 6c 84 4b 00 78 84 4b 00              .byte 0xac, 0xe9, 0x4a, 0x00, 0x6c, 0x84, 0x4b, 0x00, 0x78, 0x84, 0x4b, 0x00

; FUNCTION 0x0040fa68, declared_size=688, range_size=688, mode=arm
; class-group: CameraLevel
; alias: _ZN11CameraLevel15HandleCenteringER7Point3DIfE
; demangled: CameraLevel::HandleCentering(Point3D<float>&)
; decoder-mode: arm
0040fa68  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0040fa6c  88 72 9f e5                                      ldr r7, [pc, #0x288]
0040fa70  88 32 9f e5                                      ldr r3, [pc, #0x288]
0040fa74  5c d0 4d e2                                      sub sp, sp, #0x5c
0040fa78  07 70 8f e0                                      add r7, pc, r7
0040fa7c  03 30 97 e7                                      ldr r3, [r7, r3]
0040fa80  01 40 a0 e1                                      mov r4, r1
0040fa84  03 00 a0 e1                                      mov r0, r3
0040fa88  40 60 93 e5                                      ldr r6, [r3, #0x40]
0040fa8c  c0 3e fc eb                                      bl #0x31f594
0040fa90  01 10 a0 e3                                      mov r1, #1
0040fa94  00 50 a0 e1                                      mov r5, r0
0040fa98  06 00 a0 e1                                      mov r0, r6
0040fa9c  0b 7c fd eb                                      bl #0x36ead0
0040faa0  00 00 55 e3                                      cmp r5, #0
0040faa4  00 60 a0 e1                                      mov r6, r0
0040faa8  76 00 00 0a                                      beq #0x40fc88
0040faac  02 00 56 e3                                      cmp r6, #2
0040fab0  46 00 00 0a                                      beq #0x40fbd0
0040fab4  43 00 00 da                                      ble #0x40fbc8
0040fab8  00 70 a0 e3                                      mov r7, #0
0040fabc  14 70 8d e5                                      str r7, [sp, #0x14]
0040fac0  18 70 8d e5                                      str r7, [sp, #0x18]
0040fac4  1c 70 8d e5                                      str r7, [sp, #0x1c]
0040fac8  08 70 8d e5                                      str r7, [sp, #8]
0040facc  0c 70 8d e5                                      str r7, [sp, #0xc]
0040fad0  10 70 8d e5                                      str r7, [sp, #0x10]
0040fad4  90 31 d5 e5                                      ldrb r3, [r5, #0x190]
0040fad8  00 00 53 e3                                      cmp r3, #0
0040fadc  91 31 d5 e5                                      ldrb r3, [r5, #0x191]
0040fae0  be 74 a0 13                                      movne r7, #0xbe000000
0040fae4  02 75 87 12                                      addne r7, r7, #0x800000
0040fae8  00 00 53 e3                                      cmp r3, #0
0040faec  03 00 00 0a                                      beq #0x40fb00
0040faf0  07 00 a0 e1                                      mov r0, r7
0040faf4  fa 15 a0 e3                                      mov r1, #0x3e800000
0040faf8  29 fc fb eb                                      bl #0x30eba4
0040fafc  00 70 a0 e1                                      mov r7, r0
0040fb00  92 31 d5 e5                                      ldrb r3, [r5, #0x192]
0040fb04  00 00 53 e3                                      cmp r3, #0
0040fb08  03 00 00 0a                                      beq #0x40fb1c
0040fb0c  07 00 a0 e1                                      mov r0, r7
0040fb10  fa 15 a0 e3                                      mov r1, #0x3e800000
0040fb14  24 fa fb eb                                      bl #0x30e3ac
0040fb18  00 70 a0 e1                                      mov r7, r0
0040fb1c  04 00 56 e3                                      cmp r6, #4
0040fb20  6d 00 00 0a                                      beq #0x40fcdc
0040fb24  00 50 a0 e3                                      mov r5, #0
0040fb28  07 00 a0 e1                                      mov r0, r7
0040fb2c  05 10 a0 e1                                      mov r1, r5
0040fb30  15 f9 fb eb                                      bl #0x30df8c
0040fb34  00 00 50 e3                                      cmp r0, #0
0040fb38  22 00 00 1a                                      bne #0x40fbc8
0040fb3c  08 20 94 e5                                      ldr r2, [r4, #8]
0040fb40  40 00 8d e2                                      add r0, sp, #0x40
0040fb44  14 10 8d e2                                      add r1, sp, #0x14
0040fb48  40 50 8d e5                                      str r5, [sp, #0x40]
0040fb4c  44 50 8d e5                                      str r5, [sp, #0x44]
0040fb50  0f fe ff eb                                      bl #0x40f394
0040fb54  08 20 94 e5                                      ldr r2, [r4, #8]
0040fb58  38 00 8d e2                                      add r0, sp, #0x38
0040fb5c  08 10 8d e2                                      add r1, sp, #8
0040fb60  3c 50 8d e5                                      str r5, [sp, #0x3c]
0040fb64  38 70 8d e5                                      str r7, [sp, #0x38]
0040fb68  09 fe ff eb                                      bl #0x40f394
0040fb6c  18 10 9d e5                                      ldr r1, [sp, #0x18]
0040fb70  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0040fb74  0c fa fb eb                                      bl #0x30e3ac
0040fb78  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0040fb7c  00 60 a0 e1                                      mov r6, r0
0040fb80  10 00 9d e5                                      ldr r0, [sp, #0x10]
0040fb84  08 fa fb eb                                      bl #0x30e3ac
0040fb88  14 10 9d e5                                      ldr r1, [sp, #0x14]
0040fb8c  00 50 a0 e1                                      mov r5, r0
0040fb90  08 00 9d e5                                      ldr r0, [sp, #8]
0040fb94  04 fa fb eb                                      bl #0x30e3ac
0040fb98  00 10 a0 e1                                      mov r1, r0
0040fb9c  00 00 94 e5                                      ldr r0, [r4]
0040fba0  ff fb fb eb                                      bl #0x30eba4
0040fba4  06 10 a0 e1                                      mov r1, r6
0040fba8  00 00 84 e5                                      str r0, [r4]
0040fbac  04 00 94 e5                                      ldr r0, [r4, #4]
0040fbb0  fb fb fb eb                                      bl #0x30eba4
0040fbb4  05 10 a0 e1                                      mov r1, r5
0040fbb8  04 00 84 e5                                      str r0, [r4, #4]
0040fbbc  08 00 94 e5                                      ldr r0, [r4, #8]
0040fbc0  f7 fb fb eb                                      bl #0x30eba4
0040fbc4  08 00 84 e5                                      str r0, [r4, #8]
0040fbc8  5c d0 8d e2                                      add sp, sp, #0x5c
0040fbcc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0040fbd0  00 60 a0 e3                                      mov r6, #0
0040fbd4  2c 60 8d e5                                      str r6, [sp, #0x2c]
0040fbd8  30 60 8d e5                                      str r6, [sp, #0x30]
0040fbdc  34 60 8d e5                                      str r6, [sp, #0x34]
0040fbe0  20 60 8d e5                                      str r6, [sp, #0x20]
0040fbe4  24 60 8d e5                                      str r6, [sp, #0x24]
0040fbe8  28 60 8d e5                                      str r6, [sp, #0x28]
0040fbec  90 31 d5 e5                                      ldrb r3, [r5, #0x190]
0040fbf0  00 00 53 e3                                      cmp r3, #0
0040fbf4  91 31 d5 e5                                      ldrb r3, [r5, #0x191]
0040fbf8  bf 64 a0 13                                      movne r6, #0xbf000000
0040fbfc  00 00 53 e3                                      cmp r3, #0
0040fc00  03 00 00 0a                                      beq #0x40fc14
0040fc04  06 00 a0 e1                                      mov r0, r6
0040fc08  3f 14 a0 e3                                      mov r1, #0x3f000000
0040fc0c  e4 fb fb eb                                      bl #0x30eba4
0040fc10  00 60 a0 e1                                      mov r6, r0
0040fc14  00 50 a0 e3                                      mov r5, #0
0040fc18  06 00 a0 e1                                      mov r0, r6
0040fc1c  05 10 a0 e1                                      mov r1, r5
0040fc20  d9 f8 fb eb                                      bl #0x30df8c
0040fc24  00 00 50 e3                                      cmp r0, #0
0040fc28  e6 ff ff 1a                                      bne #0x40fbc8
0040fc2c  08 20 94 e5                                      ldr r2, [r4, #8]
0040fc30  50 00 8d e2                                      add r0, sp, #0x50
0040fc34  2c 10 8d e2                                      add r1, sp, #0x2c
0040fc38  50 50 8d e5                                      str r5, [sp, #0x50]
0040fc3c  54 50 8d e5                                      str r5, [sp, #0x54]
0040fc40  d3 fd ff eb                                      bl #0x40f394
0040fc44  08 20 94 e5                                      ldr r2, [r4, #8]
0040fc48  48 00 8d e2                                      add r0, sp, #0x48
0040fc4c  20 10 8d e2                                      add r1, sp, #0x20
0040fc50  48 60 8d e5                                      str r6, [sp, #0x48]
0040fc54  4c 50 8d e5                                      str r5, [sp, #0x4c]
0040fc58  cd fd ff eb                                      bl #0x40f394
0040fc5c  30 10 9d e5                                      ldr r1, [sp, #0x30]
0040fc60  24 00 9d e5                                      ldr r0, [sp, #0x24]
0040fc64  d0 f9 fb eb                                      bl #0x30e3ac
0040fc68  34 10 9d e5                                      ldr r1, [sp, #0x34]
0040fc6c  00 60 a0 e1                                      mov r6, r0
0040fc70  28 00 9d e5                                      ldr r0, [sp, #0x28]
0040fc74  cc f9 fb eb                                      bl #0x30e3ac
0040fc78  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0040fc7c  00 50 a0 e1                                      mov r5, r0
0040fc80  20 00 9d e5                                      ldr r0, [sp, #0x20]
0040fc84  c2 ff ff ea                                      b #0x40fb94
0040fc88  74 30 9f e5                                      ldr r3, [pc, #0x74]
0040fc8c  03 30 97 e7                                      ldr r3, [r7, r3]
0040fc90  00 30 93 e5                                      ldr r3, [r3]
0040fc94  02 00 53 e3                                      cmp r3, #2
0040fc98  00 50 85 05                                      streq r5, [r5]
0040fc9c  82 ff ff 0a                                      beq #0x40faac
0040fca0  01 00 53 e3                                      cmp r3, #1
0040fca4  80 ff ff 1a                                      bne #0x40faac
0040fca8  58 00 9f e5                                      ldr r0, [pc, #0x58]
0040fcac  58 10 9f e5                                      ldr r1, [pc, #0x58]
0040fcb0  58 20 9f e5                                      ldr r2, [pc, #0x58]
0040fcb4  00 00 97 e7                                      ldr r0, [r7, r0]
0040fcb8  54 30 9f e5                                      ldr r3, [pc, #0x54]
0040fcbc  66 c0 a0 e3                                      mov ip, #0x66
0040fcc0  01 10 8f e0                                      add r1, pc, r1
0040fcc4  02 20 8f e0                                      add r2, pc, r2
0040fcc8  03 30 8f e0                                      add r3, pc, r3
0040fccc  a8 00 80 e2                                      add r0, r0, #0xa8
0040fcd0  00 c0 8d e5                                      str ip, [sp]
0040fcd4  ca f8 fb eb                                      bl #0x30e004
0040fcd8  73 ff ff ea                                      b #0x40faac
0040fcdc  93 31 d5 e5                                      ldrb r3, [r5, #0x193]
0040fce0  00 00 53 e3                                      cmp r3, #0
0040fce4  8e ff ff 0a                                      beq #0x40fb24
0040fce8  07 00 a0 e1                                      mov r0, r7
0040fcec  fa 15 a0 e3                                      mov r1, #0x3e800000
0040fcf0  ab fb fb eb                                      bl #0x30eba4
0040fcf4  00 70 a0 e1                                      mov r7, r0
0040fcf8  89 ff ff ea                                      b #0x40fb24
; mapping-symbol data/literal pool
0040fcfc  18 50 58 00 f4 37 00 00 c0 39 00 00 c0 19 00 00  .byte 0x18, 0x50, 0x58, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0040fd0c  18 e7 4a 00 94 fc 4f 00 e8 81 4b 00              .byte 0x18, 0xe7, 0x4a, 0x00, 0x94, 0xfc, 0x4f, 0x00, 0xe8, 0x81, 0x4b, 0x00

; FUNCTION 0x0040fd18, declared_size=356, range_size=356, mode=arm
; class-group: CameraLevel
; alias: _ZN11CameraLevel30CalculateDefaultTargetDistanceEv
; demangled: CameraLevel::CalculateDefaultTargetDistance()
; decoder-mode: arm
0040fd18  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0040fd1c  08 40 90 e5                                      ldr r4, [r0, #8]
0040fd20  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
0040fd24  0c d0 4d e2                                      sub sp, sp, #0xc
0040fd28  00 00 54 e3                                      cmp r4, #0
0040fd2c  00 50 a0 e1                                      mov r5, r0
0040fd30  03 30 8f e0                                      add r3, pc, r3
0040fd34  35 00 00 0a                                      beq #0x40fe10
0040fd38  04 00 a0 e1                                      mov r0, r4
0040fd3c  53 1d 06 eb                                      bl #0x597290
0040fd40  00 30 90 e5                                      ldr r3, [r0]
0040fd44  0f e0 a0 e1                                      mov lr, pc
0040fd48  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0040fd4c  00 30 94 e5                                      ldr r3, [r4]
0040fd50  00 20 a0 e1                                      mov r2, r0
0040fd54  04 00 a0 e1                                      mov r0, r4
0040fd58  08 60 92 e5                                      ldr r6, [r2, #8]
0040fd5c  00 40 92 e5                                      ldr r4, [r2]
0040fd60  04 70 92 e5                                      ldr r7, [r2, #4]
0040fd64  0f e0 a0 e1                                      mov lr, pc
0040fd68  0c f1 93 e5                                      ldr pc, [r3, #0x10c]
0040fd6c  00 30 90 e5                                      ldr r3, [r0]
0040fd70  0f e0 a0 e1                                      mov lr, pc
0040fd74  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0040fd78  04 10 a0 e1                                      mov r1, r4
0040fd7c  00 30 a0 e1                                      mov r3, r0
0040fd80  00 00 90 e5                                      ldr r0, [r0]
0040fd84  04 a0 93 e5                                      ldr sl, [r3, #4]
0040fd88  08 80 93 e5                                      ldr r8, [r3, #8]
0040fd8c  86 f9 fb eb                                      bl #0x30e3ac
0040fd90  07 10 a0 e1                                      mov r1, r7
0040fd94  00 40 a0 e1                                      mov r4, r0
0040fd98  0a 00 a0 e1                                      mov r0, sl
0040fd9c  82 f9 fb eb                                      bl #0x30e3ac
0040fda0  06 10 a0 e1                                      mov r1, r6
0040fda4  00 70 a0 e1                                      mov r7, r0
0040fda8  08 00 a0 e1                                      mov r0, r8
0040fdac  7e f9 fb eb                                      bl #0x30e3ac
0040fdb0  04 10 a0 e1                                      mov r1, r4
0040fdb4  00 60 a0 e1                                      mov r6, r0
0040fdb8  04 00 a0 e1                                      mov r0, r4
0040fdbc  ea fb fb eb                                      bl #0x30ed6c
0040fdc0  07 10 a0 e1                                      mov r1, r7
0040fdc4  00 40 a0 e1                                      mov r4, r0
0040fdc8  07 00 a0 e1                                      mov r0, r7
0040fdcc  e6 fb fb eb                                      bl #0x30ed6c
0040fdd0  00 10 a0 e1                                      mov r1, r0
0040fdd4  04 00 a0 e1                                      mov r0, r4
0040fdd8  71 fb fb eb                                      bl #0x30eba4
0040fddc  06 10 a0 e1                                      mov r1, r6
0040fde0  00 40 a0 e1                                      mov r4, r0
0040fde4  06 00 a0 e1                                      mov r0, r6
0040fde8  df fb fb eb                                      bl #0x30ed6c
0040fdec  00 10 a0 e1                                      mov r1, r0
0040fdf0  04 00 a0 e1                                      mov r0, r4
0040fdf4  6a fb fb eb                                      bl #0x30eba4
0040fdf8  a9 fa fb eb                                      bl #0x30e8a4
0040fdfc  ef f8 fb eb                                      bl #0x30e1c0
0040fe00  26 fa fb eb                                      bl #0x30e6a0
0040fe04  94 00 85 e5                                      str r0, [r5, #0x94]
0040fe08  0c d0 8d e2                                      add sp, sp, #0xc
0040fe0c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0040fe10  50 20 9f e5                                      ldr r2, [pc, #0x50]
0040fe14  02 20 93 e7                                      ldr r2, [r3, r2]
0040fe18  00 20 92 e5                                      ldr r2, [r2]
0040fe1c  02 00 52 e3                                      cmp r2, #2
0040fe20  00 40 84 05                                      streq r4, [r4]
0040fe24  c3 ff ff 0a                                      beq #0x40fd38
0040fe28  01 00 52 e3                                      cmp r2, #1
0040fe2c  c1 ff ff 1a                                      bne #0x40fd38
0040fe30  34 00 9f e5                                      ldr r0, [pc, #0x34]
0040fe34  34 10 9f e5                                      ldr r1, [pc, #0x34]
0040fe38  34 20 9f e5                                      ldr r2, [pc, #0x34]
0040fe3c  00 00 93 e7                                      ldr r0, [r3, r0]
0040fe40  30 30 9f e5                                      ldr r3, [pc, #0x30]
0040fe44  54 c0 a0 e3                                      mov ip, #0x54
0040fe48  01 10 8f e0                                      add r1, pc, r1
0040fe4c  02 20 8f e0                                      add r2, pc, r2
0040fe50  03 30 8f e0                                      add r3, pc, r3
0040fe54  a8 00 80 e2                                      add r0, r0, #0xa8
0040fe58  00 c0 8d e5                                      str ip, [sp]
0040fe5c  68 f8 fb eb                                      bl #0x30e004
0040fe60  b4 ff ff ea                                      b #0x40fd38
; mapping-symbol data/literal pool
0040fe64  60 4d 58 00 c0 39 00 00 c0 19 00 00 90 e5 4a 00  .byte 0x60, 0x4d, 0x58, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x90, 0xe5, 0x4a, 0x00
0040fe74  ac 80 4b 00 60 80 4b 00                          .byte 0xac, 0x80, 0x4b, 0x00, 0x60, 0x80, 0x4b, 0x00

; FUNCTION 0x0040fe7c, declared_size=108, range_size=108, mode=arm
; class-group: CameraLevel
; alias: _ZN11CameraLevelD1Ev
; demangled: CameraLevel::~CameraLevel()
; decoder-mode: arm
0040fe7c  10 40 2d e9                                      push {r4, lr}
0040fe80  58 30 9f e5                                      ldr r3, [pc, #0x58]
0040fe84  58 20 9f e5                                      ldr r2, [pc, #0x58]
0040fe88  44 10 90 e5                                      ldr r1, [r0, #0x44]
0040fe8c  03 30 8f e0                                      add r3, pc, r3
0040fe90  02 20 93 e7                                      ldr r2, [r3, r2]
0040fe94  00 00 51 e3                                      cmp r1, #0
0040fe98  00 40 a0 e1                                      mov r4, r0
0040fe9c  08 20 82 e2                                      add r2, r2, #8
0040fea0  00 20 80 e5                                      str r2, [r0]
0040fea4  05 00 00 0a                                      beq #0x40fec0
0040fea8  00 30 91 e5                                      ldr r3, [r1]
0040feac  01 00 a0 e1                                      mov r0, r1
0040feb0  0f e0 a0 e1                                      mov lr, pc
0040feb4  04 f0 93 e5                                      ldr pc, [r3, #4]
0040feb8  00 30 a0 e3                                      mov r3, #0
0040febc  44 30 84 e5                                      str r3, [r4, #0x44]
0040fec0  64 00 84 e2                                      add r0, r4, #0x64
0040fec4  b8 0e fc eb                                      bl #0x3139ac
0040fec8  4c 00 84 e2                                      add r0, r4, #0x4c
0040fecc  b6 0e fc eb                                      bl #0x3139ac
0040fed0  04 00 a0 e1                                      mov r0, r4
0040fed4  4c 07 00 eb                                      bl #0x411c0c
0040fed8  04 00 a0 e1                                      mov r0, r4
0040fedc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0040fee0  04 4c 58 00 28 42 00 00                          .byte 0x04, 0x4c, 0x58, 0x00, 0x28, 0x42, 0x00, 0x00

; FUNCTION 0x0040fee8, declared_size=28, range_size=28, mode=arm
; class-group: CameraLevel
; alias: _ZN11CameraLevelD0Ev
; demangled: CameraLevel::~CameraLevel()
; decoder-mode: arm
0040fee8  10 40 2d e9                                      push {r4, lr}
0040feec  00 40 a0 e1                                      mov r4, r0
0040fef0  e1 ff ff eb                                      bl #0x40fe7c
0040fef4  04 00 a0 e1                                      mov r0, r4
0040fef8  50 01 fc eb                                      bl #0x310440
0040fefc  04 00 a0 e1                                      mov r0, r4
0040ff00  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0040ff04, declared_size=108, range_size=108, mode=arm
; class-group: CameraLevel
; alias: _ZN11CameraLevelD2Ev
; demangled: CameraLevel::~CameraLevel()
; decoder-mode: arm
0040ff04  10 40 2d e9                                      push {r4, lr}
0040ff08  58 30 9f e5                                      ldr r3, [pc, #0x58]
0040ff0c  58 20 9f e5                                      ldr r2, [pc, #0x58]
0040ff10  44 10 90 e5                                      ldr r1, [r0, #0x44]
0040ff14  03 30 8f e0                                      add r3, pc, r3
0040ff18  02 20 93 e7                                      ldr r2, [r3, r2]
0040ff1c  00 00 51 e3                                      cmp r1, #0
0040ff20  00 40 a0 e1                                      mov r4, r0
0040ff24  08 20 82 e2                                      add r2, r2, #8
0040ff28  00 20 80 e5                                      str r2, [r0]
0040ff2c  05 00 00 0a                                      beq #0x40ff48
0040ff30  00 30 91 e5                                      ldr r3, [r1]
0040ff34  01 00 a0 e1                                      mov r0, r1
0040ff38  0f e0 a0 e1                                      mov lr, pc
0040ff3c  04 f0 93 e5                                      ldr pc, [r3, #4]
0040ff40  00 30 a0 e3                                      mov r3, #0
0040ff44  44 30 84 e5                                      str r3, [r4, #0x44]
0040ff48  64 00 84 e2                                      add r0, r4, #0x64
0040ff4c  96 0e fc eb                                      bl #0x3139ac
0040ff50  4c 00 84 e2                                      add r0, r4, #0x4c
0040ff54  94 0e fc eb                                      bl #0x3139ac
0040ff58  04 00 a0 e1                                      mov r0, r4
0040ff5c  2a 07 00 eb                                      bl #0x411c0c
0040ff60  04 00 a0 e1                                      mov r0, r4
0040ff64  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0040ff68  7c 4b 58 00 28 42 00 00                          .byte 0x7c, 0x4b, 0x58, 0x00, 0x28, 0x42, 0x00, 0x00

; FUNCTION 0x0040ff70, declared_size=188, range_size=188, mode=arm
; class-group: CameraLevel
; alias: _ZN11CameraLevelC1Ev
; demangled: CameraLevel::CameraLevel()
; decoder-mode: arm
0040ff70  70 40 2d e9                                      push {r4, r5, r6, lr}
0040ff74  a8 60 9f e5                                      ldr r6, [pc, #0xa8]
0040ff78  00 40 a0 e1                                      mov r4, r0
0040ff7c  56 07 00 eb                                      bl #0x411cdc
0040ff80  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
0040ff84  06 60 8f e0                                      add r6, pc, r6
0040ff88  00 50 a0 e3                                      mov r5, #0
0040ff8c  02 20 96 e7                                      ldr r2, [r6, r2]
0040ff90  4c 30 84 e2                                      add r3, r4, #0x4c
0040ff94  03 00 a0 e1                                      mov r0, r3
0040ff98  08 20 82 e2                                      add r2, r2, #8
0040ff9c  00 20 84 e5                                      str r2, [r4]
0040ffa0  5c 30 84 e5                                      str r3, [r4, #0x5c]
0040ffa4  60 30 84 e5                                      str r3, [r4, #0x60]
0040ffa8  44 50 84 e5                                      str r5, [r4, #0x44]
0040ffac  48 50 84 e5                                      str r5, [r4, #0x48]
0040ffb0  10 10 a0 e3                                      mov r1, #0x10
0040ffb4  b0 05 fc eb                                      bl #0x31167c
0040ffb8  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
0040ffbc  64 30 84 e2                                      add r3, r4, #0x64
0040ffc0  03 00 a0 e1                                      mov r0, r3
0040ffc4  00 50 c2 e5                                      strb r5, [r2]
0040ffc8  10 10 a0 e3                                      mov r1, #0x10
0040ffcc  74 30 84 e5                                      str r3, [r4, #0x74]
0040ffd0  78 30 84 e5                                      str r3, [r4, #0x78]
0040ffd4  a8 05 fc eb                                      bl #0x31167c
0040ffd8  74 20 94 e5                                      ldr r2, [r4, #0x74]
0040ffdc  00 30 a0 e3                                      mov r3, #0
0040ffe0  04 00 a0 e1                                      mov r0, r4
0040ffe4  00 50 c2 e5                                      strb r5, [r2]
0040ffe8  00 20 e0 e3                                      mvn r2, #0
0040ffec  7c 20 84 e5                                      str r2, [r4, #0x7c]
0040fff0  fe 25 a0 e3                                      mov r2, #0x3f800000
0040fff4  8c 20 84 e5                                      str r2, [r4, #0x8c]
0040fff8  a0 30 84 e5                                      str r3, [r4, #0xa0]
0040fffc  a4 50 c4 e5                                      strb r5, [r4, #0xa4]
00410000  84 50 c4 e5                                      strb r5, [r4, #0x84]
00410004  85 50 c4 e5                                      strb r5, [r4, #0x85]
00410008  86 50 c4 e5                                      strb r5, [r4, #0x86]
0041000c  88 30 84 e5                                      str r3, [r4, #0x88]
00410010  90 30 84 e5                                      str r3, [r4, #0x90]
00410014  94 30 84 e5                                      str r3, [r4, #0x94]
00410018  98 30 84 e5                                      str r3, [r4, #0x98]
0041001c  9c 30 84 e5                                      str r3, [r4, #0x9c]
00410020  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00410024  0c 4b 58 00 28 42 00 00                          .byte 0x0c, 0x4b, 0x58, 0x00, 0x28, 0x42, 0x00, 0x00

; FUNCTION 0x0041002c, declared_size=188, range_size=188, mode=arm
; class-group: CameraLevel
; alias: _ZN11CameraLevelC2Ev
; demangled: CameraLevel::CameraLevel()
; decoder-mode: arm
0041002c  70 40 2d e9                                      push {r4, r5, r6, lr}
00410030  a8 60 9f e5                                      ldr r6, [pc, #0xa8]
00410034  00 40 a0 e1                                      mov r4, r0
00410038  27 07 00 eb                                      bl #0x411cdc
0041003c  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
00410040  06 60 8f e0                                      add r6, pc, r6
00410044  00 50 a0 e3                                      mov r5, #0
00410048  02 20 96 e7                                      ldr r2, [r6, r2]
0041004c  4c 30 84 e2                                      add r3, r4, #0x4c
00410050  03 00 a0 e1                                      mov r0, r3
00410054  08 20 82 e2                                      add r2, r2, #8
00410058  00 20 84 e5                                      str r2, [r4]
0041005c  5c 30 84 e5                                      str r3, [r4, #0x5c]
00410060  60 30 84 e5                                      str r3, [r4, #0x60]
00410064  44 50 84 e5                                      str r5, [r4, #0x44]
00410068  48 50 84 e5                                      str r5, [r4, #0x48]
0041006c  10 10 a0 e3                                      mov r1, #0x10
00410070  81 05 fc eb                                      bl #0x31167c
00410074  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
00410078  64 30 84 e2                                      add r3, r4, #0x64
0041007c  03 00 a0 e1                                      mov r0, r3
00410080  00 50 c2 e5                                      strb r5, [r2]
00410084  10 10 a0 e3                                      mov r1, #0x10
00410088  74 30 84 e5                                      str r3, [r4, #0x74]
0041008c  78 30 84 e5                                      str r3, [r4, #0x78]
00410090  79 05 fc eb                                      bl #0x31167c
00410094  74 20 94 e5                                      ldr r2, [r4, #0x74]
00410098  00 30 a0 e3                                      mov r3, #0
0041009c  04 00 a0 e1                                      mov r0, r4
004100a0  00 50 c2 e5                                      strb r5, [r2]
004100a4  00 20 e0 e3                                      mvn r2, #0
004100a8  7c 20 84 e5                                      str r2, [r4, #0x7c]
004100ac  fe 25 a0 e3                                      mov r2, #0x3f800000
004100b0  8c 20 84 e5                                      str r2, [r4, #0x8c]
004100b4  a0 30 84 e5                                      str r3, [r4, #0xa0]
004100b8  a4 50 c4 e5                                      strb r5, [r4, #0xa4]
004100bc  84 50 c4 e5                                      strb r5, [r4, #0x84]
004100c0  85 50 c4 e5                                      strb r5, [r4, #0x85]
004100c4  86 50 c4 e5                                      strb r5, [r4, #0x86]
004100c8  88 30 84 e5                                      str r3, [r4, #0x88]
004100cc  90 30 84 e5                                      str r3, [r4, #0x90]
004100d0  94 30 84 e5                                      str r3, [r4, #0x94]
004100d4  98 30 84 e5                                      str r3, [r4, #0x98]
004100d8  9c 30 84 e5                                      str r3, [r4, #0x9c]
004100dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004100e0  50 4a 58 00 28 42 00 00                          .byte 0x50, 0x4a, 0x58, 0x00, 0x28, 0x42, 0x00, 0x00

; FUNCTION 0x00410218, declared_size=376, range_size=376, mode=arm
; class-group: CameraLevel
; alias: _ZN11CameraLevel10HandleZoomEv
; demangled: CameraLevel::HandleZoom()
; decoder-mode: arm
00410218  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0041021c  58 41 9f e5                                      ldr r4, [pc, #0x158]
00410220  58 71 9f e5                                      ldr r7, [pc, #0x158]
00410224  58 21 9f e5                                      ldr r2, [pc, #0x158]
00410228  04 40 8f e0                                      add r4, pc, r4
0041022c  07 30 94 e7                                      ldr r3, [r4, r7]
00410230  02 80 94 e7                                      ldr r8, [r4, r2]
00410234  20 d0 4d e2                                      sub sp, sp, #0x20
00410238  00 30 93 e5                                      ldr r3, [r3]
0041023c  04 50 8d e2                                      add r5, sp, #4
00410240  00 60 a0 e1                                      mov r6, r0
00410244  08 00 a0 e1                                      mov r0, r8
00410248  1c 30 8d e5                                      str r3, [sp, #0x1c]
0041024c  8d 9d fc eb                                      bl #0x337888
00410250  05 00 a0 e1                                      mov r0, r5
00410254  0d 10 a0 e3                                      mov r1, #0xd
00410258  14 50 8d e5                                      str r5, [sp, #0x14]
0041025c  18 50 8d e5                                      str r5, [sp, #0x18]
00410260  05 05 fc eb                                      bl #0x31167c
00410264  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
00410268  0c 20 a0 e3                                      mov r2, #0xc
0041026c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00410270  01 10 8f e0                                      add r1, pc, r1
00410274  7b f9 fb eb                                      bl #0x30e868
00410278  0c 30 80 e2                                      add r3, r0, #0xc
0041027c  14 30 8d e5                                      str r3, [sp, #0x14]
00410280  00 30 a0 e3                                      mov r3, #0
00410284  0c 30 c0 e5                                      strb r3, [r0, #0xc]
00410288  05 10 a0 e1                                      mov r1, r5
0041028c  08 00 a0 e1                                      mov r0, r8
00410290  fc 9d fc eb                                      bl #0x337a88
00410294  00 80 a0 e1                                      mov r8, r0
00410298  05 00 a0 e1                                      mov r0, r5
0041029c  c2 0d fc eb                                      bl #0x3139ac
004102a0  00 00 58 e3                                      cmp r8, #0
004102a4  30 00 00 1a                                      bne #0x41036c
004102a8  86 30 d6 e5                                      ldrb r3, [r6, #0x86]
004102ac  00 00 53 e3                                      cmp r3, #0
004102b0  26 00 00 1a                                      bne #0x410350
004102b4  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
004102b8  85 20 d6 e5                                      ldrb r2, [r6, #0x85]
004102bc  88 80 96 e5                                      ldr r8, [r6, #0x88]
004102c0  03 30 94 e7                                      ldr r3, [r4, r3]
004102c4  00 00 52 e3                                      cmp r2, #0
004102c8  08 00 a0 e1                                      mov r0, r8
004102cc  00 30 93 e5                                      ldr r3, [r3]
004102d0  ac 90 93 e5                                      ldr sb, [r3, #0xac]
004102d4  4c 90 93 15                                      ldrne sb, [r3, #0x4c]
004102d8  a8 a0 93 e5                                      ldr sl, [r3, #0xa8]
004102dc  48 a0 93 15                                      ldrne sl, [r3, #0x48]
004102e0  09 10 a0 e1                                      mov r1, sb
004102e4  03 f8 fb eb                                      bl #0x30e2f8
004102e8  00 00 50 e3                                      cmp r0, #0
004102ec  09 80 a0 01                                      moveq r8, sb
004102f0  08 00 a0 e1                                      mov r0, r8
004102f4  0a 10 a0 e1                                      mov r1, sl
004102f8  03 f9 fb eb                                      bl #0x30e70c
004102fc  8c 50 96 e5                                      ldr r5, [r6, #0x8c]
00410300  00 00 50 e3                                      cmp r0, #0
00410304  0a 80 a0 01                                      moveq r8, sl
00410308  05 00 a0 e1                                      mov r0, r5
0041030c  09 10 a0 e1                                      mov r1, sb
00410310  88 80 86 e5                                      str r8, [r6, #0x88]
00410314  f7 f7 fb eb                                      bl #0x30e2f8
00410318  00 00 50 e3                                      cmp r0, #0
0041031c  09 50 a0 01                                      moveq r5, sb
00410320  05 00 a0 e1                                      mov r0, r5
00410324  0a 10 a0 e1                                      mov r1, sl
00410328  f7 f8 fb eb                                      bl #0x30e70c
0041032c  00 00 50 e3                                      cmp r0, #0
00410330  0a 50 a0 01                                      moveq r5, sl
00410334  8c 50 86 e5                                      str r5, [r6, #0x8c]
00410338  05 10 a0 e1                                      mov r1, r5
0041033c  08 00 a0 e1                                      mov r0, r8
00410340  ec f7 fb eb                                      bl #0x30e2f8
00410344  00 00 50 e3                                      cmp r0, #0
00410348  08 50 a0 01                                      moveq r5, r8
0041034c  90 50 86 e5                                      str r5, [r6, #0x90]
00410350  07 30 94 e7                                      ldr r3, [r4, r7]
00410354  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00410358  00 30 93 e5                                      ldr r3, [r3]
0041035c  03 00 52 e1                                      cmp r2, r3
00410360  04 00 00 1a                                      bne #0x410378
00410364  20 d0 8d e2                                      add sp, sp, #0x20
00410368  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0041036c  88 30 96 e5                                      ldr r3, [r6, #0x88]
00410370  90 30 86 e5                                      str r3, [r6, #0x90]
00410374  f5 ff ff ea                                      b #0x410350
00410378  e4 f7 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0041037c  68 48 58 00 ac 40 00 00 84 08 00 00 98 7c 4b 00  .byte 0x68, 0x48, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x98, 0x7c, 0x4b, 0x00
0041038c  c8 32 00 00                                      .byte 0xc8, 0x32, 0x00, 0x00

; FUNCTION 0x00410390, declared_size=764, range_size=764, mode=arm
; class-group: CameraLevel
; alias: _ZN11CameraLevel6UpdateEv
; demangled: CameraLevel::Update()
; decoder-mode: arm
00410390  e0 32 9f e5                                      ldr r3, [pc, #0x2e0]
00410394  e0 22 9f e5                                      ldr r2, [pc, #0x2e0]
00410398  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0041039c  03 30 8f e0                                      add r3, pc, r3
004103a0  02 20 93 e7                                      ldr r2, [r3, r2]
004103a4  2c d0 4d e2                                      sub sp, sp, #0x2c
004103a8  00 40 a0 e1                                      mov r4, r0
004103ac  00 30 92 e5                                      ldr r3, [r2]
004103b0  03 00 50 e1                                      cmp r0, r3
004103b4  03 00 00 0a                                      beq #0x4103c8
004103b8  04 00 a0 e1                                      mov r0, r4
004103bc  a3 f9 ff eb                                      bl #0x40ea50
004103c0  2c d0 8d e2                                      add sp, sp, #0x2c
004103c4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004103c8  0c 30 90 e5                                      ldr r3, [r0, #0xc]
004103cc  00 00 53 e3                                      cmp r3, #0
004103d0  f8 ff ff 0a                                      beq #0x4103b8
004103d4  08 30 90 e5                                      ldr r3, [r0, #8]
004103d8  00 00 53 e3                                      cmp r3, #0
004103dc  f5 ff ff 0a                                      beq #0x4103b8
004103e0  04 30 90 e5                                      ldr r3, [r0, #4]
004103e4  00 00 53 e3                                      cmp r3, #0
004103e8  f2 ff ff 0a                                      beq #0x4103b8
004103ec  0f 05 00 eb                                      bl #0x411830
004103f0  00 00 50 e3                                      cmp r0, #0
004103f4  f1 ff ff 1a                                      bne #0x4103c0
004103f8  85 30 d4 e5                                      ldrb r3, [r4, #0x85]
004103fc  00 00 53 e3                                      cmp r3, #0
00410400  82 00 00 0a                                      beq #0x410610
00410404  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00410408  16 3e 83 e2                                      add r3, r3, #0x160
0041040c  00 20 93 e5                                      ldr r2, [r3]
00410410  1c 50 8d e2                                      add r5, sp, #0x1c
00410414  05 10 a0 e1                                      mov r1, r5
00410418  1c 20 8d e5                                      str r2, [sp, #0x1c]
0041041c  04 20 93 e5                                      ldr r2, [r3, #4]
00410420  04 00 a0 e1                                      mov r0, r4
00410424  20 20 8d e5                                      str r2, [sp, #0x20]
00410428  08 30 93 e5                                      ldr r3, [r3, #8]
0041042c  24 30 8d e5                                      str r3, [sp, #0x24]
00410430  e1 04 00 eb                                      bl #0x4117bc
00410434  04 00 a0 e1                                      mov r0, r4
00410438  05 10 a0 e1                                      mov r1, r5
0041043c  89 fd ff eb                                      bl #0x40fa68
00410440  85 30 d4 e5                                      ldrb r3, [r4, #0x85]
00410444  98 70 94 e5                                      ldr r7, [r4, #0x98]
00410448  9c 60 94 e5                                      ldr r6, [r4, #0x9c]
0041044c  00 00 53 e3                                      cmp r3, #0
00410450  a0 a0 94 e5                                      ldr sl, [r4, #0xa0]
00410454  07 b0 a0 01                                      moveq fp, r7
00410458  23 00 00 0a                                      beq #0x4104ec
0041045c  1c 82 9f e5                                      ldr r8, [pc, #0x21c]
00410460  08 80 8f e0                                      add r8, pc, r8
00410464  0c 30 98 e5                                      ldr r3, [r8, #0xc]
00410468  01 00 13 e3                                      tst r3, #1
0041046c  6b 00 00 0a                                      beq #0x410620
00410470  0c 82 9f e5                                      ldr r8, [pc, #0x20c]
00410474  08 80 8f e0                                      add r8, pc, r8
00410478  14 30 98 e5                                      ldr r3, [r8, #0x14]
0041047c  01 00 13 e3                                      tst r3, #1
00410480  71 00 00 0a                                      beq #0x41064c
00410484  fc 81 9f e5                                      ldr r8, [pc, #0x1fc]
00410488  07 10 a0 e1                                      mov r1, r7
0041048c  08 80 8f e0                                      add r8, pc, r8
00410490  10 90 98 e5                                      ldr sb, [r8, #0x10]
00410494  09 00 a0 e1                                      mov r0, sb
00410498  33 fa fb eb                                      bl #0x30ed6c
0041049c  18 80 98 e5                                      ldr r8, [r8, #0x18]
004104a0  00 b0 a0 e1                                      mov fp, r0
004104a4  06 10 a0 e1                                      mov r1, r6
004104a8  08 00 a0 e1                                      mov r0, r8
004104ac  2e fa fb eb                                      bl #0x30ed6c
004104b0  00 10 a0 e1                                      mov r1, r0
004104b4  0b 00 a0 e1                                      mov r0, fp
004104b8  bb f7 fb eb                                      bl #0x30e3ac
004104bc  06 10 a0 e1                                      mov r1, r6
004104c0  00 b0 a0 e1                                      mov fp, r0
004104c4  09 00 a0 e1                                      mov r0, sb
004104c8  27 fa fb eb                                      bl #0x30ed6c
004104cc  07 10 a0 e1                                      mov r1, r7
004104d0  00 60 a0 e1                                      mov r6, r0
004104d4  08 00 a0 e1                                      mov r0, r8
004104d8  23 fa fb eb                                      bl #0x30ed6c
004104dc  00 10 a0 e1                                      mov r1, r0
004104e0  06 00 a0 e1                                      mov r0, r6
004104e4  ae f9 fb eb                                      bl #0x30eba4
004104e8  00 60 a0 e1                                      mov r6, r0
004104ec  0b 10 a0 e1                                      mov r1, fp
004104f0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
004104f4  aa f9 fb eb                                      bl #0x30eba4
004104f8  06 10 a0 e1                                      mov r1, r6
004104fc  1c 00 8d e5                                      str r0, [sp, #0x1c]
00410500  20 00 9d e5                                      ldr r0, [sp, #0x20]
00410504  a6 f9 fb eb                                      bl #0x30eba4
00410508  0a 10 a0 e1                                      mov r1, sl
0041050c  20 00 8d e5                                      str r0, [sp, #0x20]
00410510  24 00 9d e5                                      ldr r0, [sp, #0x24]
00410514  a2 f9 fb eb                                      bl #0x30eba4
00410518  84 30 d4 e5                                      ldrb r3, [r4, #0x84]
0041051c  24 00 8d e5                                      str r0, [sp, #0x24]
00410520  00 00 53 e3                                      cmp r3, #0
00410524  26 00 00 1a                                      bne #0x4105c4
00410528  04 00 a0 e1                                      mov r0, r4
0041052c  39 ff ff eb                                      bl #0x410218
00410530  90 00 94 e5                                      ldr r0, [r4, #0x90]
00410534  02 01 80 e2                                      add r0, r0, #0x80000000
00410538  94 10 94 e5                                      ldr r1, [r4, #0x94]
0041053c  0a fa fb eb                                      bl #0x30ed6c
00410540  08 30 94 e5                                      ldr r3, [r4, #8]
00410544  00 20 a0 e3                                      mov r2, #0
00410548  14 20 8d e5                                      str r2, [sp, #0x14]
0041054c  10 20 8d e5                                      str r2, [sp, #0x10]
00410550  18 00 8d e5                                      str r0, [sp, #0x18]
00410554  10 10 8d e2                                      add r1, sp, #0x10
00410558  03 00 a0 e1                                      mov r0, r3
0041055c  00 30 93 e5                                      ldr r3, [r3]
00410560  0f e0 a0 e1                                      mov lr, pc
00410564  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00410568  05 10 a0 e1                                      mov r1, r5
0041056c  04 00 a0 e1                                      mov r0, r4
00410570  18 04 00 eb                                      bl #0x4115d8
00410574  05 10 a0 e1                                      mov r1, r5
00410578  04 00 a0 e1                                      mov r0, r4
0041057c  36 04 00 eb                                      bl #0x41165c
00410580  04 00 94 e5                                      ldr r0, [r4, #4]
00410584  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00410588  04 10 8d e2                                      add r1, sp, #4
0041058c  00 30 90 e5                                      ldr r3, [r0]
00410590  a4 30 93 e5                                      ldr r3, [r3, #0xa4]
00410594  04 20 8d e5                                      str r2, [sp, #4]
00410598  20 20 9d e5                                      ldr r2, [sp, #0x20]
0041059c  08 20 8d e5                                      str r2, [sp, #8]
004105a0  24 20 9d e5                                      ldr r2, [sp, #0x24]
004105a4  0c 20 8d e5                                      str r2, [sp, #0xc]
004105a8  33 ff 2f e1                                      blx r3
004105ac  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004105b0  81 30 d3 e5                                      ldrb r3, [r3, #0x81]
004105b4  00 00 53 e3                                      cmp r3, #0
004105b8  00 30 a0 13                                      movne r3, #0
004105bc  0c 30 84 15                                      strne r3, [r4, #0xc]
004105c0  7c ff ff ea                                      b #0x4103b8
004105c4  a4 30 d4 e5                                      ldrb r3, [r4, #0xa4]
004105c8  00 00 53 e3                                      cmp r3, #0
004105cc  d5 ff ff 1a                                      bne #0x410528
004105d0  90 60 94 e5                                      ldr r6, [r4, #0x90]
004105d4  cd 1c 0c e3                                      movw r1, #0xcccd
004105d8  cc 1d 43 e3                                      movt r1, #0x3dcc
004105dc  02 01 c6 e3                                      bic r0, r6, #0x80000000
004105e0  49 f8 fb eb                                      bl #0x30e70c
004105e4  00 00 50 e3                                      cmp r0, #0
004105e8  00 30 a0 13                                      movne r3, #0
004105ec  02 01 a0 13                                      movne r0, #0x80000000
004105f0  90 30 84 15                                      strne r3, [r4, #0x90]
004105f4  cf ff ff 1a                                      bne #0x410538
004105f8  06 00 a0 e1                                      mov r0, r6
004105fc  fd 15 a0 e3                                      mov r1, #0x3f400000
00410600  d9 f9 fb eb                                      bl #0x30ed6c
00410604  90 00 84 e5                                      str r0, [r4, #0x90]
00410608  02 01 80 e2                                      add r0, r0, #0x80000000
0041060c  c9 ff ff ea                                      b #0x410538
00410610  04 00 a0 e1                                      mov r0, r4
00410614  16 05 00 eb                                      bl #0x411a74
00410618  00 30 a0 e1                                      mov r3, r0
0041061c  7a ff ff ea                                      b #0x41040c
00410620  0c 90 88 e2                                      add sb, r8, #0xc
00410624  09 00 a0 e1                                      mov r0, sb
00410628  4f f8 fb eb                                      bl #0x30e76c
0041062c  00 00 50 e3                                      cmp r0, #0
00410630  8e ff ff 0a                                      beq #0x410470
00410634  f3 34 00 e3                                      movw r3, #0x4f3
00410638  35 3f 43 e3                                      movt r3, #0x3f35
0041063c  09 00 a0 e1                                      mov r0, sb
00410640  10 30 88 e5                                      str r3, [r8, #0x10]
00410644  fc f8 fb eb                                      bl #0x30ea3c
00410648  88 ff ff ea                                      b #0x410470
0041064c  14 90 88 e2                                      add sb, r8, #0x14
00410650  09 00 a0 e1                                      mov r0, sb
00410654  44 f8 fb eb                                      bl #0x30e76c
00410658  00 00 50 e3                                      cmp r0, #0
0041065c  88 ff ff 0a                                      beq #0x410484
00410660  f3 34 00 e3                                      movw r3, #0x4f3
00410664  35 3f 43 e3                                      movt r3, #0x3f35
00410668  09 00 a0 e1                                      mov r0, sb
0041066c  18 30 88 e5                                      str r3, [r8, #0x18]
00410670  f1 f8 fb eb                                      bl #0x30ea3c
00410674  82 ff ff ea                                      b #0x410484
; mapping-symbol data/literal pool
00410678  f4 46 58 00 b0 42 00 00 bc 2d 59 00 a8 2d 59 00  .byte 0xf4, 0x46, 0x58, 0x00, 0xb0, 0x42, 0x00, 0x00, 0xbc, 0x2d, 0x59, 0x00, 0xa8, 0x2d, 0x59, 0x00
00410688  90 2d 59 00                                      .byte 0x90, 0x2d, 0x59, 0x00

; FUNCTION 0x0041068c, declared_size=668, range_size=668, mode=arm
; class-group: CameraLevel
; alias: _ZN11CameraLevel4LoadEPKciS1_
; demangled: CameraLevel::Load(char const*, int, char const*)
; decoder-mode: arm
0041068c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00410690  78 52 9f e5                                      ldr r5, [pc, #0x278]
00410694  78 82 9f e5                                      ldr r8, [pc, #0x278]
00410698  01 60 a0 e1                                      mov r6, r1
0041069c  05 50 8f e0                                      add r5, pc, r5
004106a0  08 10 95 e7                                      ldr r1, [r5, r8]
004106a4  2c d0 4d e2                                      sub sp, sp, #0x2c
004106a8  00 40 a0 e1                                      mov r4, r0
004106ac  00 10 91 e5                                      ldr r1, [r1]
004106b0  06 00 a0 e1                                      mov r0, r6
004106b4  03 70 a0 e1                                      mov r7, r3
004106b8  02 90 a0 e1                                      mov sb, r2
004106bc  24 10 8d e5                                      str r1, [sp, #0x24]
004106c0  e3 f5 fb eb                                      bl #0x30de54
004106c4  4c a0 84 e2                                      add sl, r4, #0x4c
004106c8  00 20 86 e0                                      add r2, r6, r0
004106cc  06 10 a0 e1                                      mov r1, r6
004106d0  0a 00 a0 e1                                      mov r0, sl
004106d4  c1 00 fc eb                                      bl #0x3109e0
004106d8  80 90 84 e5                                      str sb, [r4, #0x80]
004106dc  07 00 a0 e1                                      mov r0, r7
004106e0  db f5 fb eb                                      bl #0x30de54
004106e4  0c 60 8d e2                                      add r6, sp, #0xc
004106e8  00 20 87 e0                                      add r2, r7, r0
004106ec  07 10 a0 e1                                      mov r1, r7
004106f0  64 00 84 e2                                      add r0, r4, #0x64
004106f4  b9 00 fc eb                                      bl #0x3109e0
004106f8  06 00 a0 e1                                      mov r0, r6
004106fc  10 10 a0 e3                                      mov r1, #0x10
00410700  1c 60 8d e5                                      str r6, [sp, #0x1c]
00410704  20 60 8d e5                                      str r6, [sp, #0x20]
00410708  db 03 fc eb                                      bl #0x31167c
0041070c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00410710  00 b0 a0 e3                                      mov fp, #0
00410714  0b 10 a0 e1                                      mov r1, fp
00410718  00 b0 c3 e5                                      strb fp, [r3]
0041071c  ac 00 a0 e3                                      mov r0, #0xac
00410720  92 ff fb eb                                      bl #0x310570
00410724  0b 10 a0 e1                                      mov r1, fp
00410728  00 90 a0 e1                                      mov sb, r0
0041072c  0a 20 a0 e1                                      mov r2, sl
00410730  06 30 a0 e1                                      mov r3, r6
00410734  b4 88 01 eb                                      bl #0x472a0c
00410738  06 00 a0 e1                                      mov r0, r6
0041073c  44 90 84 e5                                      str sb, [r4, #0x44]
00410740  99 0c fc eb                                      bl #0x3139ac
00410744  44 00 94 e5                                      ldr r0, [r4, #0x44]
00410748  0b 00 50 e1                                      cmp r0, fp
0041074c  67 00 00 0a                                      beq #0x4108f0
00410750  08 30 90 e5                                      ldr r3, [r0, #8]
00410754  0b 00 53 e1                                      cmp r3, fp
00410758  64 00 00 0a                                      beq #0x4108f0
0041075c  07 10 a0 e1                                      mov r1, r7
00410760  ac 80 01 eb                                      bl #0x470a18
00410764  00 60 50 e2                                      subs r6, r0, #0
00410768  08 60 84 05                                      streq r6, [r4, #8]
0041076c  13 00 00 0a                                      beq #0x4107c0
00410770  64 11 06 e3                                      movw r1, #0x6164
00410774  65 13 46 e3                                      movt r1, #0x6365
00410778  fb 19 06 eb                                      bl #0x596f6c
0041077c  0b 00 50 e1                                      cmp r0, fp
00410780  00 30 a0 e1                                      mov r3, r0
00410784  08 00 84 e5                                      str r0, [r4, #8]
00410788  07 00 00 0a                                      beq #0x4107ac
0041078c  00 20 90 e5                                      ldr r2, [r0]
00410790  04 00 a0 e1                                      mov r0, r4
00410794  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00410798  02 30 83 e0                                      add r3, r3, r2
0041079c  04 20 93 e5                                      ldr r2, [r3, #4]
004107a0  01 20 82 e2                                      add r2, r2, #1
004107a4  04 20 83 e5                                      str r2, [r3, #4]
004107a8  5a fd ff eb                                      bl #0x40fd18
004107ac  64 11 9f e5                                      ldr r1, [pc, #0x164]
004107b0  06 00 a0 e1                                      mov r0, r6
004107b4  01 10 8f e0                                      add r1, pc, r1
004107b8  4d 1f 06 eb                                      bl #0x5984f4
004107bc  00 60 a0 e1                                      mov r6, r0
004107c0  44 30 94 e5                                      ldr r3, [r4, #0x44]
004107c4  48 60 84 e5                                      str r6, [r4, #0x48]
004107c8  08 30 93 e5                                      ldr r3, [r3, #8]
004107cc  00 00 53 e3                                      cmp r3, #0
004107d0  04 30 84 e5                                      str r3, [r4, #4]
004107d4  05 00 00 0a                                      beq #0x4107f0
004107d8  00 20 93 e5                                      ldr r2, [r3]
004107dc  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
004107e0  02 30 83 e0                                      add r3, r3, r2
004107e4  04 20 93 e5                                      ldr r2, [r3, #4]
004107e8  01 20 82 e2                                      add r2, r2, #1
004107ec  04 20 83 e5                                      str r2, [r3, #4]
004107f0  24 31 9f e5                                      ldr r3, [pc, #0x124]
004107f4  1c 70 a0 e3                                      mov r7, #0x1c
004107f8  03 a0 95 e7                                      ldr sl, [r5, r3]
004107fc  0a 00 a0 e1                                      mov r0, sl
00410800  17 97 01 eb                                      bl #0x476464
00410804  14 31 9f e5                                      ldr r3, [pc, #0x114]
00410808  7c 00 84 e5                                      str r0, [r4, #0x7c]
0041080c  80 20 94 e5                                      ldr r2, [r4, #0x80]
00410810  03 30 95 e7                                      ldr r3, [r5, r3]
00410814  00 10 a0 e1                                      mov r1, r0
00410818  0a 00 a0 e1                                      mov r0, sl
0041081c  00 30 93 e5                                      ldr r3, [r3]
00410820  97 32 27 e0                                      mla r7, r7, r2, r3
00410824  18 20 97 e5                                      ldr r2, [r7, #0x18]
00410828  da 96 01 eb                                      bl #0x476398
0041082c  0a 00 a0 e1                                      mov r0, sl
00410830  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
00410834  10 20 97 e5                                      ldr r2, [r7, #0x10]
00410838  3f 97 01 eb                                      bl #0x47653c
0041083c  0a 00 a0 e1                                      mov r0, sl
00410840  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
00410844  14 20 97 e5                                      ldr r2, [r7, #0x14]
00410848  3b 97 01 eb                                      bl #0x47653c
0041084c  0a 00 a0 e1                                      mov r0, sl
00410850  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
00410854  0c 20 97 e5                                      ldr r2, [r7, #0xc]
00410858  37 97 01 eb                                      bl #0x47653c
0041085c  04 30 97 e5                                      ldr r3, [r7, #4]
00410860  00 00 53 e3                                      cmp r3, #0
00410864  09 00 00 0a                                      beq #0x410890
00410868  00 60 a0 e3                                      mov r6, #0
0041086c  08 30 97 e5                                      ldr r3, [r7, #8]
00410870  0a 00 a0 e1                                      mov r0, sl
00410874  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
00410878  06 21 93 e7                                      ldr r2, [r3, r6, lsl #2]
0041087c  2e 97 01 eb                                      bl #0x47653c
00410880  04 30 97 e5                                      ldr r3, [r7, #4]
00410884  01 60 86 e2                                      add r6, r6, #1
00410888  06 00 53 e1                                      cmp r3, r6
0041088c  f6 ff ff 8a                                      bhi #0x41086c
00410890  44 60 94 e5                                      ldr r6, [r4, #0x44]
00410894  00 10 a0 e3                                      mov r1, #0
00410898  14 00 a0 e3                                      mov r0, #0x14
0041089c  08 a0 96 e5                                      ldr sl, [r6, #8]
004108a0  32 ff fb eb                                      bl #0x310570
004108a4  7c 20 94 e5                                      ldr r2, [r4, #0x7c]
004108a8  00 70 a0 e1                                      mov r7, r0
004108ac  0a 10 a0 e1                                      mov r1, sl
004108b0  3f 92 01 eb                                      bl #0x4751b4
004108b4  06 00 a0 e1                                      mov r0, r6
004108b8  07 10 a0 e1                                      mov r1, r7
004108bc  70 80 01 eb                                      bl #0x470a84
004108c0  44 30 94 e5                                      ldr r3, [r4, #0x44]
004108c4  00 e0 a0 e3                                      mov lr, #0
004108c8  04 20 a0 e1                                      mov r2, r4
004108cc  38 c0 93 e5                                      ldr ip, [r3, #0x38]
004108d0  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
004108d4  0c 00 a0 e1                                      mov r0, ip
004108d8  03 10 95 e7                                      ldr r1, [r5, r3]
004108dc  00 c0 9c e5                                      ldr ip, [ip]
004108e0  0e 30 a0 e1                                      mov r3, lr
004108e4  00 e0 8d e5                                      str lr, [sp]
004108e8  0f e0 a0 e1                                      mov lr, pc
004108ec  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
004108f0  08 30 95 e7                                      ldr r3, [r5, r8]
004108f4  24 20 9d e5                                      ldr r2, [sp, #0x24]
004108f8  00 30 93 e5                                      ldr r3, [r3]
004108fc  03 00 52 e1                                      cmp r2, r3
00410900  01 00 00 1a                                      bne #0x41090c
00410904  2c d0 8d e2                                      add sp, sp, #0x2c
00410908  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0041090c  7f f6 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00410910  f4 43 58 00 ac 40 00 00 64 77 4b 00 38 48 00 00  .byte 0xf4, 0x43, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00, 0x64, 0x77, 0x4b, 0x00, 0x38, 0x48, 0x00, 0x00
00410920  d4 3d 00 00 28 39 00 00                          .byte 0xd4, 0x3d, 0x00, 0x00, 0x28, 0x39, 0x00, 0x00
