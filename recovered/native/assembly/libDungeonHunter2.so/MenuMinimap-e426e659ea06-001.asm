; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00434dc0, declared_size=56, range_size=56, mode=arm
; class-group: MenuMinimap
; alias: _ZN11MenuMinimap7InitAllEv
; demangled: MenuMinimap::InitAll()
; decoder-mode: arm
00434dc0  10 40 2d e9                                      push {r4, lr}
00434dc4  00 40 a0 e1                                      mov r4, r0
00434dc8  00 30 90 e5                                      ldr r3, [r0]
00434dcc  0f e0 a0 e1                                      mov lr, pc
00434dd0  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
00434dd4  04 00 a0 e1                                      mov r0, r4
00434dd8  00 30 94 e5                                      ldr r3, [r4]
00434ddc  0f e0 a0 e1                                      mov lr, pc
00434de0  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00434de4  04 00 a0 e1                                      mov r0, r4
00434de8  00 30 94 e5                                      ldr r3, [r4]
00434dec  0f e0 a0 e1                                      mov lr, pc
00434df0  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00434df4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00434df8, declared_size=64, range_size=64, mode=arm
; class-group: MenuMinimap
; alias: _ZN11MenuMinimap16DisableMapCameraEv
; demangled: MenuMinimap::DisableMapCamera()
; decoder-mode: arm
00434df8  10 40 2d e9                                      push {r4, lr}
00434dfc  00 30 90 e5                                      ldr r3, [r0]
00434e00  0f e0 a0 e1                                      mov lr, pc
00434e04  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00434e08  20 30 9f e5                                      ldr r3, [pc, #0x20]
00434e0c  00 10 50 e2                                      subs r1, r0, #0
00434e10  03 30 8f e0                                      add r3, pc, r3
00434e14  04 00 00 0a                                      beq #0x434e2c
00434e18  14 20 9f e5                                      ldr r2, [pc, #0x14]
00434e1c  02 30 93 e7                                      ldr r3, [r3, r2]
00434e20  50 00 93 e5                                      ldr r0, [r3, #0x50]
00434e24  10 40 bd e8                                      pop {r4, lr}
00434e28  60 34 fd ea                                      b #0x381fb0
00434e2c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00434e30  80 fc 55 00 f4 37 00 00                          .byte 0x80, 0xfc, 0x55, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00434e38, declared_size=468, range_size=468, mode=arm
; class-group: MenuMinimap
; alias: _ZN11MenuMinimap15CreateMapCameraEv
; demangled: MenuMinimap::CreateMapCamera()
; decoder-mode: arm
00434e38  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00434e3c  e0 10 90 e5                                      ldr r1, [r0, #0xe0]
00434e40  94 41 9f e5                                      ldr r4, [pc, #0x194]
00434e44  08 d0 4d e2                                      sub sp, sp, #8
00434e48  00 00 51 e3                                      cmp r1, #0
00434e4c  00 50 a0 e1                                      mov r5, r0
00434e50  04 40 8f e0                                      add r4, pc, r4
00434e54  01 00 00 0a                                      beq #0x434e60
00434e58  08 d0 8d e2                                      add sp, sp, #8
00434e5c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00434e60  a8 00 a0 e3                                      mov r0, #0xa8
00434e64  c1 6d fb eb                                      bl #0x310570
00434e68  00 60 a0 e1                                      mov r6, r0
00434e6c  3f 6c ff eb                                      bl #0x40ff70
00434e70  00 00 56 e3                                      cmp r6, #0
00434e74  e0 60 85 e5                                      str r6, [r5, #0xe0]
00434e78  41 00 00 0a                                      beq #0x434f84
00434e7c  5c 31 9f e5                                      ldr r3, [pc, #0x15c]
00434e80  03 30 94 e7                                      ldr r3, [r4, r3]
00434e84  00 80 93 e5                                      ldr r8, [r3]
00434e88  00 00 58 e3                                      cmp r8, #0
00434e8c  10 00 00 0a                                      beq #0x434ed4
00434e90  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
00434e94  4c 91 9f e5                                      ldr sb, [pc, #0x14c]
00434e98  00 70 a0 e3                                      mov r7, #0
00434e9c  03 30 94 e7                                      ldr r3, [r4, r3]
00434ea0  09 90 8f e0                                      add sb, pc, sb
00434ea4  00 a0 93 e5                                      ldr sl, [r3]
00434ea8  02 00 00 ea                                      b #0x434eb8
00434eac  01 70 87 e2                                      add r7, r7, #1
00434eb0  08 00 57 e1                                      cmp r7, r8
00434eb4  06 00 00 0a                                      beq #0x434ed4
00434eb8  07 11 9a e7                                      ldr r1, [sl, r7, lsl #2]
00434ebc  09 00 a0 e1                                      mov r0, sb
00434ec0  15 65 fb eb                                      bl #0x30e31c
00434ec4  00 00 50 e3                                      cmp r0, #0
00434ec8  f7 ff ff 1a                                      bne #0x434eac
00434ecc  07 20 a0 e1                                      mov r2, r7
00434ed0  00 00 00 ea                                      b #0x434ed8
00434ed4  00 20 e0 e3                                      mvn r2, #0
00434ed8  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
00434edc  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
00434ee0  06 00 a0 e1                                      mov r0, r6
00434ee4  03 30 8f e0                                      add r3, pc, r3
00434ee8  01 10 8f e0                                      add r1, pc, r1
00434eec  e6 6d ff eb                                      bl #0x41068c
00434ef0  e0 30 95 e5                                      ldr r3, [r5, #0xe0]
00434ef4  01 20 a0 e3                                      mov r2, #1
00434ef8  00 10 a0 e3                                      mov r1, #0
00434efc  85 20 c3 e5                                      strb r2, [r3, #0x85]
00434f00  e0 00 95 e5                                      ldr r0, [r5, #0xe0]
00434f04  c4 71 ff eb                                      bl #0x41161c
00434f08  00 60 a0 e3                                      mov r6, #0
00434f0c  77 18 0f e3                                      movw r1, #0xf877
00434f10  39 2e 08 e3                                      movw r2, #0x8e39
00434f14  00 c0 05 e3                                      movw ip, #0x5000
00434f18  e0 00 95 e5                                      ldr r0, [r5, #0xe0]
00434f1c  00 70 a0 e3                                      mov r7, #0
00434f20  06 30 a0 e1                                      mov r3, r6
00434f24  c3 c7 44 e3                                      movt ip, #0x47c3
00434f28  db 1e 43 e3                                      movt r1, #0x3edb
00434f2c  e3 2f 43 e3                                      movt r2, #0x3fe3
00434f30  00 c0 8d e5                                      str ip, [sp]
00434f34  04 70 8d e5                                      str r7, [sp, #4]
00434f38  9a 66 ff eb                                      bl #0x40e9a8
00434f3c  e0 30 95 e5                                      ldr r3, [r5, #0xe0]
00434f40  fe 25 a0 e3                                      mov r2, #0x3f800000
00434f44  8c 20 83 e5                                      str r2, [r3, #0x8c]
00434f48  e0 10 95 e5                                      ldr r1, [r5, #0xe0]
00434f4c  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
00434f50  07 20 a0 e1                                      mov r2, r7
00434f54  88 60 81 e5                                      str r6, [r1, #0x88]
00434f58  03 30 94 e7                                      ldr r3, [r4, r3]
00434f5c  e0 00 95 e5                                      ldr r0, [r5, #0xe0]
00434f60  1c 40 a0 e3                                      mov r4, #0x1c
00434f64  00 c0 93 e5                                      ldr ip, [r3]
00434f68  80 10 90 e5                                      ldr r1, [r0, #0x80]
00434f6c  07 30 a0 e1                                      mov r3, r7
00434f70  94 c1 21 e0                                      mla r1, r4, r1, ip
00434f74  10 10 91 e5                                      ldr r1, [r1, #0x10]
00434f78  08 d0 8d e2                                      add sp, sp, #8
00434f7c  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00434f80  5f 6a ff ea                                      b #0x40f904
00434f84  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00434f88  03 30 94 e7                                      ldr r3, [r4, r3]
00434f8c  00 30 93 e5                                      ldr r3, [r3]
00434f90  02 00 53 e3                                      cmp r3, #2
00434f94  00 60 86 05                                      streq r6, [r6]
00434f98  b7 ff ff 0a                                      beq #0x434e7c
00434f9c  01 00 53 e3                                      cmp r3, #1
00434fa0  b5 ff ff 1a                                      bne #0x434e7c
00434fa4  50 00 9f e5                                      ldr r0, [pc, #0x50]
00434fa8  50 10 9f e5                                      ldr r1, [pc, #0x50]
00434fac  50 20 9f e5                                      ldr r2, [pc, #0x50]
00434fb0  00 00 94 e7                                      ldr r0, [r4, r0]
00434fb4  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00434fb8  b3 c0 a0 e3                                      mov ip, #0xb3
00434fbc  01 10 8f e0                                      add r1, pc, r1
00434fc0  a8 00 80 e2                                      add r0, r0, #0xa8
00434fc4  02 20 8f e0                                      add r2, pc, r2
00434fc8  03 30 8f e0                                      add r3, pc, r3
00434fcc  00 c0 8d e5                                      str ip, [sp]
00434fd0  0b 64 fb eb                                      bl #0x30e004
00434fd4  e0 60 95 e5                                      ldr r6, [r5, #0xe0]
00434fd8  a7 ff ff ea                                      b #0x434e7c
; mapping-symbol data/literal pool
00434fdc  40 fc 55 00 e4 38 00 00 5c 3a 00 00 18 3a 49 00  .byte 0x40, 0xfc, 0x55, 0x00, 0xe4, 0x38, 0x00, 0x00, 0x5c, 0x3a, 0x00, 0x00, 0x18, 0x3a, 0x49, 0x00
00434fec  84 17 49 00 60 17 49 00 d4 3d 00 00 c0 39 00 00  .byte 0x84, 0x17, 0x49, 0x00, 0x60, 0x17, 0x49, 0x00, 0xd4, 0x3d, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
00434ffc  c0 19 00 00 1c 94 48 00 9c 38 49 00 e8 66 49 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x1c, 0x94, 0x48, 0x00, 0x9c, 0x38, 0x49, 0x00, 0xe8, 0x66, 0x49, 0x00

; FUNCTION 0x0043500c, declared_size=48, range_size=48, mode=arm
; class-group: MenuMinimap
; alias: _ZN11MenuMinimap23RegisterDisplayCallbackEv
; demangled: MenuMinimap::RegisterDisplayCallback()
; decoder-mode: arm
0043500c  1c c0 9f e5                                      ldr ip, [pc, #0x1c]
00435010  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00435014  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00435018  0c c0 8f e0                                      add ip, pc, ip
0043501c  03 20 9c e7                                      ldr r2, [ip, r3]
00435020  00 30 a0 e1                                      mov r3, r0
00435024  04 00 90 e5                                      ldr r0, [r0, #4]
00435028  01 10 8f e0                                      add r1, pc, r1
0043502c  69 d0 0d ea                                      b #0x7a91d8
; mapping-symbol data/literal pool
00435030  78 fa 55 00 48 13 00 00 98 38 49 00              .byte 0x78, 0xfa, 0x55, 0x00, 0x48, 0x13, 0x00, 0x00, 0x98, 0x38, 0x49, 0x00

; FUNCTION 0x0043503c, declared_size=24, range_size=24, mode=arm
; class-group: MenuMinimap
; alias: _ZN11MenuMinimap21RegisterToMenuManagerEv
; demangled: MenuMinimap::RegisterToMenuManager()
; decoder-mode: arm
0043503c  10 40 2d e9                                      push {r4, lr}
00435040  00 40 a0 e1                                      mov r4, r0
00435044  90 de ff eb                                      bl #0x42ca8c
00435048  04 10 a0 e1                                      mov r1, r4
0043504c  10 40 bd e8                                      pop {r4, lr}
00435050  8f e7 ff ea                                      b #0x42ee94

; FUNCTION 0x00435054, declared_size=52, range_size=52, mode=arm
; class-group: MenuMinimap
; alias: _ZN11MenuMinimapD1Ev
; demangled: MenuMinimap::~MenuMinimap()
; decoder-mode: arm
00435054  24 30 9f e5                                      ldr r3, [pc, #0x24]
00435058  24 20 9f e5                                      ldr r2, [pc, #0x24]
0043505c  10 40 2d e9                                      push {r4, lr}
00435060  03 30 8f e0                                      add r3, pc, r3
00435064  02 20 93 e7                                      ldr r2, [r3, r2]
00435068  00 40 a0 e1                                      mov r4, r0
0043506c  08 20 82 e2                                      add r2, r2, #8
00435070  00 20 80 e5                                      str r2, [r0]
00435074  64 9c ff eb                                      bl #0x41c20c
00435078  04 00 a0 e1                                      mov r0, r4
0043507c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00435080  30 fa 55 00 fc 23 00 00                          .byte 0x30, 0xfa, 0x55, 0x00, 0xfc, 0x23, 0x00, 0x00

; FUNCTION 0x00435088, declared_size=28, range_size=28, mode=arm
; class-group: MenuMinimap
; alias: _ZN11MenuMinimapD0Ev
; demangled: MenuMinimap::~MenuMinimap()
; decoder-mode: arm
00435088  10 40 2d e9                                      push {r4, lr}
0043508c  00 40 a0 e1                                      mov r4, r0
00435090  ef ff ff eb                                      bl #0x435054
00435094  04 00 a0 e1                                      mov r0, r4
00435098  e8 6c fb eb                                      bl #0x310440
0043509c  04 00 a0 e1                                      mov r0, r4
004350a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004350a4, declared_size=52, range_size=52, mode=arm
; class-group: MenuMinimap
; alias: _ZN11MenuMinimapD2Ev
; demangled: MenuMinimap::~MenuMinimap()
; decoder-mode: arm
004350a4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004350a8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004350ac  10 40 2d e9                                      push {r4, lr}
004350b0  03 30 8f e0                                      add r3, pc, r3
004350b4  02 20 93 e7                                      ldr r2, [r3, r2]
004350b8  00 40 a0 e1                                      mov r4, r0
004350bc  08 20 82 e2                                      add r2, r2, #8
004350c0  00 20 80 e5                                      str r2, [r0]
004350c4  50 9c ff eb                                      bl #0x41c20c
004350c8  04 00 a0 e1                                      mov r0, r4
004350cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004350d0  e0 f9 55 00 fc 23 00 00                          .byte 0xe0, 0xf9, 0x55, 0x00, 0xfc, 0x23, 0x00, 0x00

; FUNCTION 0x004350d8, declared_size=64, range_size=64, mode=arm
; class-group: MenuMinimap
; alias: _ZN11MenuMinimapC1Ev
; demangled: MenuMinimap::MenuMinimap()
; decoder-mode: arm
004350d8  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
004350dc  70 40 2d e9                                      push {r4, r5, r6, lr}
004350e0  01 10 8f e0                                      add r1, pc, r1
004350e4  24 40 9f e5                                      ldr r4, [pc, #0x24]
004350e8  00 50 a0 e1                                      mov r5, r0
004350ec  20 9f ff eb                                      bl #0x41cd74
004350f0  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004350f4  04 40 8f e0                                      add r4, pc, r4
004350f8  05 00 a0 e1                                      mov r0, r5
004350fc  03 30 94 e7                                      ldr r3, [r4, r3]
00435100  08 30 83 e2                                      add r3, r3, #8
00435104  00 30 85 e5                                      str r3, [r5]
00435108  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0043510c  18 66 49 00 9c f9 55 00 fc 23 00 00              .byte 0x18, 0x66, 0x49, 0x00, 0x9c, 0xf9, 0x55, 0x00, 0xfc, 0x23, 0x00, 0x00

; FUNCTION 0x00435118, declared_size=132, range_size=132, mode=arm
; class-group: MenuMinimap
; alias: _ZN11MenuMinimap11GetInstanceEv
; demangled: MenuMinimap::GetInstance()
; decoder-mode: arm
00435118  70 40 2d e9                                      push {r4, r5, r6, lr}
0043511c  64 50 9f e5                                      ldr r5, [pc, #0x64]
00435120  64 40 9f e5                                      ldr r4, [pc, #0x64]
00435124  05 50 8f e0                                      add r5, pc, r5
00435128  00 30 95 e5                                      ldr r3, [r5]
0043512c  04 40 8f e0                                      add r4, pc, r4
00435130  01 00 13 e3                                      tst r3, #1
00435134  03 00 00 0a                                      beq #0x435148
00435138  50 00 9f e5                                      ldr r0, [pc, #0x50]
0043513c  00 00 8f e0                                      add r0, pc, r0
00435140  04 00 80 e2                                      add r0, r0, #4
00435144  70 80 bd e8                                      pop {r4, r5, r6, pc}
00435148  05 00 a0 e1                                      mov r0, r5
0043514c  86 65 fb eb                                      bl #0x30e76c
00435150  00 00 50 e3                                      cmp r0, #0
00435154  f7 ff ff 0a                                      beq #0x435138
00435158  04 60 85 e2                                      add r6, r5, #4
0043515c  06 00 a0 e1                                      mov r0, r6
00435160  dc ff ff eb                                      bl #0x4350d8
00435164  05 00 a0 e1                                      mov r0, r5
00435168  33 66 fb eb                                      bl #0x30ea3c
0043516c  20 30 9f e5                                      ldr r3, [pc, #0x20]
00435170  06 00 a0 e1                                      mov r0, r6
00435174  03 10 94 e7                                      ldr r1, [r4, r3]
00435178  18 30 9f e5                                      ldr r3, [pc, #0x18]
0043517c  03 20 94 e7                                      ldr r2, [r4, r3]
00435180  5f 64 fb eb                                      bl #0x30e304
00435184  eb ff ff ea                                      b #0x435138
; mapping-symbol data/literal pool
00435188  c0 03 57 00 64 f9 55 00 a8 03 57 00 50 3a 00 00  .byte 0xc0, 0x03, 0x57, 0x00, 0x64, 0xf9, 0x55, 0x00, 0xa8, 0x03, 0x57, 0x00, 0x50, 0x3a, 0x00, 0x00
00435198  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0043519c, declared_size=64, range_size=64, mode=arm
; class-group: MenuMinimap
; alias: _ZN11MenuMinimapC2Ev
; demangled: MenuMinimap::MenuMinimap()
; decoder-mode: arm
0043519c  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
004351a0  70 40 2d e9                                      push {r4, r5, r6, lr}
004351a4  01 10 8f e0                                      add r1, pc, r1
004351a8  24 40 9f e5                                      ldr r4, [pc, #0x24]
004351ac  00 50 a0 e1                                      mov r5, r0
004351b0  ef 9e ff eb                                      bl #0x41cd74
004351b4  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004351b8  04 40 8f e0                                      add r4, pc, r4
004351bc  05 00 a0 e1                                      mov r0, r5
004351c0  03 30 94 e7                                      ldr r3, [r4, r3]
004351c4  08 30 83 e2                                      add r3, r3, #8
004351c8  00 30 85 e5                                      str r3, [r5]
004351cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004351d0  54 65 49 00 d8 f8 55 00 fc 23 00 00              .byte 0x54, 0x65, 0x49, 0x00, 0xd8, 0xf8, 0x55, 0x00, 0xfc, 0x23, 0x00, 0x00

; FUNCTION 0x00435308, declared_size=220, range_size=220, mode=arm
; class-group: MenuMinimap
; alias: _ZN11MenuMinimap4ShowEv
; demangled: MenuMinimap::Show()
; decoder-mode: arm
00435308  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0043530c  bc 40 9f e5                                      ldr r4, [pc, #0xbc]
00435310  bc 60 9f e5                                      ldr r6, [pc, #0xbc]
00435314  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
00435318  04 40 8f e0                                      add r4, pc, r4
0043531c  06 30 94 e7                                      ldr r3, [r4, r6]
00435320  02 70 94 e7                                      ldr r7, [r4, r2]
00435324  20 d0 4d e2                                      sub sp, sp, #0x20
00435328  00 30 93 e5                                      ldr r3, [r3]
0043532c  00 80 a0 e1                                      mov r8, r0
00435330  07 00 a0 e1                                      mov r0, r7
00435334  1c 30 8d e5                                      str r3, [sp, #0x1c]
00435338  52 09 fc eb                                      bl #0x337888
0043533c  98 10 9f e5                                      ldr r1, [pc, #0x98]
00435340  04 50 8d e2                                      add r5, sp, #4
00435344  05 00 a0 e1                                      mov r0, r5
00435348  01 10 8f e0                                      add r1, pc, r1
0043534c  12 10 81 e2                                      add r1, r1, #0x12
00435350  14 50 8d e5                                      str r5, [sp, #0x14]
00435354  18 50 8d e5                                      str r5, [sp, #0x18]
00435358  d6 ff ff eb                                      bl #0x4352b8
0043535c  07 00 a0 e1                                      mov r0, r7
00435360  05 10 a0 e1                                      mov r1, r5
00435364  c7 09 fc eb                                      bl #0x337a88
00435368  00 70 a0 e1                                      mov r7, r0
0043536c  05 00 a0 e1                                      mov r0, r5
00435370  8d 79 fb eb                                      bl #0x3139ac
00435374  00 00 57 e3                                      cmp r7, #0
00435378  10 00 00 1a                                      bne #0x4353c0
0043537c  08 00 a0 e1                                      mov r0, r8
00435380  97 9d ff eb                                      bl #0x41c9e4
00435384  54 30 9f e5                                      ldr r3, [pc, #0x54]
00435388  e0 10 98 e5                                      ldr r1, [r8, #0xe0]
0043538c  03 50 94 e7                                      ldr r5, [r4, r3]
00435390  50 00 95 e5                                      ldr r0, [r5, #0x50]
00435394  05 33 fd eb                                      bl #0x381fb0
00435398  50 30 95 e5                                      ldr r3, [r5, #0x50]
0043539c  01 20 a0 e3                                      mov r2, #1
004353a0  24 20 c3 e5                                      strb r2, [r3, #0x24]
004353a4  06 30 94 e7                                      ldr r3, [r4, r6]
004353a8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
004353ac  00 30 93 e5                                      ldr r3, [r3]
004353b0  03 00 52 e1                                      cmp r2, r3
004353b4  04 00 00 1a                                      bne #0x4353cc
004353b8  20 d0 8d e2                                      add sp, sp, #0x20
004353bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004353c0  08 00 a0 e1                                      mov r0, r8
004353c4  21 c0 ff eb                                      bl #0x425450
004353c8  f5 ff ff ea                                      b #0x4353a4
004353cc  cf 63 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004353d0  78 f7 55 00 ac 40 00 00 84 08 00 00 58 a7 48 00  .byte 0x78, 0xf7, 0x55, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x58, 0xa7, 0x48, 0x00
004353e0  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004353e4, declared_size=784, range_size=784, mode=arm
; class-group: MenuMinimap
; alias: _ZN11MenuMinimap9RenderMapERN7gameswf12render_stateEPv
; demangled: MenuMinimap::RenderMap(gameswf::render_state&, void*)
; decoder-mode: arm
004353e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004353e8  ec 42 9f e5                                      ldr r4, [pc, #0x2ec]
004353ec  ec 62 9f e5                                      ldr r6, [pc, #0x2ec]
004353f0  ec 22 9f e5                                      ldr r2, [pc, #0x2ec]
004353f4  04 40 8f e0                                      add r4, pc, r4
004353f8  06 30 94 e7                                      ldr r3, [r4, r6]
004353fc  02 80 94 e7                                      ldr r8, [r4, r2]
00435400  64 d0 4d e2                                      sub sp, sp, #0x64
00435404  00 30 93 e5                                      ldr r3, [r3]
00435408  08 00 a0 e1                                      mov r0, r8
0043540c  01 50 a0 e1                                      mov r5, r1
00435410  5c 30 8d e5                                      str r3, [sp, #0x5c]
00435414  1b 09 fc eb                                      bl #0x337888
00435418  c8 12 9f e5                                      ldr r1, [pc, #0x2c8]
0043541c  44 70 8d e2                                      add r7, sp, #0x44
00435420  07 00 a0 e1                                      mov r0, r7
00435424  01 10 8f e0                                      add r1, pc, r1
00435428  12 10 81 e2                                      add r1, r1, #0x12
0043542c  54 70 8d e5                                      str r7, [sp, #0x54]
00435430  58 70 8d e5                                      str r7, [sp, #0x58]
00435434  9f ff ff eb                                      bl #0x4352b8
00435438  08 00 a0 e1                                      mov r0, r8
0043543c  07 10 a0 e1                                      mov r1, r7
00435440  90 09 fc eb                                      bl #0x337a88
00435444  00 80 a0 e1                                      mov r8, r0
00435448  07 00 a0 e1                                      mov r0, r7
0043544c  56 79 fb eb                                      bl #0x3139ac
00435450  00 00 58 e3                                      cmp r8, #0
00435454  06 00 00 0a                                      beq #0x435474
00435458  06 30 94 e7                                      ldr r3, [r4, r6]
0043545c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00435460  00 30 93 e5                                      ldr r3, [r3]
00435464  03 00 52 e1                                      cmp r2, r3
00435468  9a 00 00 1a                                      bne #0x4356d8
0043546c  64 d0 8d e2                                      add sp, sp, #0x64
00435470  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00435474  70 a2 9f e5                                      ldr sl, [pc, #0x270]
00435478  0a 70 94 e7                                      ldr r7, [r4, sl]
0043547c  07 00 a0 e1                                      mov r0, r7
00435480  43 a8 fb eb                                      bl #0x31f594
00435484  00 80 50 e2                                      subs r8, r0, #0
00435488  f2 ff ff 0a                                      beq #0x435458
0043548c  30 31 98 e5                                      ldr r3, [r8, #0x130]
00435490  26 00 53 e3                                      cmp r3, #0x26
00435494  ef ff ff 1a                                      bne #0x435458
00435498  00 00 55 e3                                      cmp r5, #0
0043549c  ed ff ff 0a                                      beq #0x435458
004354a0  e0 30 95 e5                                      ldr r3, [r5, #0xe0]
004354a4  00 00 53 e3                                      cmp r3, #0
004354a8  ea ff ff 0a                                      beq #0x435458
004354ac  c4 20 d5 e5                                      ldrb r2, [r5, #0xc4]
004354b0  00 00 52 e3                                      cmp r2, #0
004354b4  e7 ff ff 0a                                      beq #0x435458
004354b8  84 30 d3 e5                                      ldrb r3, [r3, #0x84]
004354bc  00 00 53 e3                                      cmp r3, #0
004354c0  e4 ff ff 1a                                      bne #0x435458
004354c4  10 30 97 e5                                      ldr r3, [r7, #0x10]
004354c8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
004354cc  8c 72 93 e5                                      ldr r7, [r3, #0x28c]
004354d0  00 00 57 e3                                      cmp r7, #0
004354d4  04 00 00 0a                                      beq #0x4354ec
004354d8  00 30 97 e5                                      ldr r3, [r7]
004354dc  07 00 a0 e1                                      mov r0, r7
004354e0  01 10 a0 e3                                      mov r1, #1
004354e4  0f e0 a0 e1                                      mov lr, pc
004354e8  48 f0 93 e5                                      ldr pc, [r3, #0x48]
004354ec  00 30 95 e5                                      ldr r3, [r5]
004354f0  05 00 a0 e1                                      mov r0, r5
004354f4  0f e0 a0 e1                                      mov lr, pc
004354f8  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
004354fc  05 00 a0 e1                                      mov r0, r5
00435500  04 90 95 e5                                      ldr sb, [r5, #4]
00435504  d0 b2 ff eb                                      bl #0x42204c
00435508  e0 11 9f e5                                      ldr r1, [pc, #0x1e0]
0043550c  00 20 a0 e1                                      mov r2, r0
00435510  09 00 a0 e1                                      mov r0, sb
00435514  01 10 8f e0                                      add r1, pc, r1
00435518  59 cd 0d eb                                      bl #0x7a8a84
0043551c  00 10 a0 e1                                      mov r1, r0
00435520  34 00 8d e2                                      add r0, sp, #0x34
00435524  54 85 ff eb                                      bl #0x416a7c
00435528  0a a0 94 e7                                      ldr sl, [r4, sl]
0043552c  04 00 95 e5                                      ldr r0, [r5, #4]
00435530  10 30 9a e5                                      ldr r3, [sl, #0x10]
00435534  10 90 93 e5                                      ldr sb, [r3, #0x10]
00435538  cc 30 99 e5                                      ldr r3, [sb, #0xcc]
0043553c  04 30 13 e5                                      ldr r3, [r3, #-4]
00435540  14 20 93 e5                                      ldr r2, [r3, #0x14]
00435544  24 20 8d e5                                      str r2, [sp, #0x24]
00435548  18 20 93 e5                                      ldr r2, [r3, #0x18]
0043554c  28 20 8d e5                                      str r2, [sp, #0x28]
00435550  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
00435554  2c 20 8d e5                                      str r2, [sp, #0x2c]
00435558  20 30 93 e5                                      ldr r3, [r3, #0x20]
0043555c  30 30 8d e5                                      str r3, [sp, #0x30]
00435560  d1 c9 0d eb                                      bl #0x7a7cac
00435564  f3 83 ff eb                                      bl #0x416538
00435568  00 b0 a0 e1                                      mov fp, r0
0043556c  04 00 95 e5                                      ldr r0, [r5, #4]
00435570  cd c9 0d eb                                      bl #0x7a7cac
00435574  ff 83 ff eb                                      bl #0x416578
00435578  0b 10 a0 e1                                      mov r1, fp
0043557c  0c 00 8d e5                                      str r0, [sp, #0xc]
00435580  34 00 9d e5                                      ldr r0, [sp, #0x34]
00435584  c2 65 fb eb                                      bl #0x30ec94
00435588  cf 63 fb eb                                      bl #0x30e4cc
0043558c  0b 10 a0 e1                                      mov r1, fp
00435590  00 20 a0 e1                                      mov r2, r0
00435594  38 00 9d e5                                      ldr r0, [sp, #0x38]
00435598  04 20 8d e5                                      str r2, [sp, #4]
0043559c  bc 65 fb eb                                      bl #0x30ec94
004355a0  c9 63 fb eb                                      bl #0x30e4cc
004355a4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
004355a8  00 30 a0 e1                                      mov r3, r0
004355ac  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
004355b0  08 30 8d e5                                      str r3, [sp, #8]
004355b4  b6 65 fb eb                                      bl #0x30ec94
004355b8  c3 63 fb eb                                      bl #0x30e4cc
004355bc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
004355c0  00 b0 a0 e1                                      mov fp, r0
004355c4  40 00 9d e5                                      ldr r0, [sp, #0x40]
004355c8  b1 65 fb eb                                      bl #0x30ec94
004355cc  be 63 fb eb                                      bl #0x30e4cc
004355d0  0c 00 9d e9                                      ldmib sp, {r2, r3}
004355d4  20 00 8d e5                                      str r0, [sp, #0x20]
004355d8  14 20 8d e5                                      str r2, [sp, #0x14]
004355dc  18 b0 8d e5                                      str fp, [sp, #0x18]
004355e0  1c 30 8d e5                                      str r3, [sp, #0x1c]
004355e4  cc 30 99 e5                                      ldr r3, [sb, #0xcc]
004355e8  14 10 8d e2                                      add r1, sp, #0x14
004355ec  04 30 13 e5                                      ldr r3, [r3, #-4]
004355f0  03 00 a0 e1                                      mov r0, r3
004355f4  00 30 93 e5                                      ldr r3, [r3]
004355f8  0f e0 a0 e1                                      mov lr, pc
004355fc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00435600  10 30 9a e5                                      ldr r3, [sl, #0x10]
00435604  00 20 a0 e3                                      mov r2, #0
00435608  05 00 a0 e1                                      mov r0, r5
0043560c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00435610  07 10 a0 e1                                      mov r1, r7
00435614  50 22 c3 e5                                      strb r2, [r3, #0x250]
00435618  00 30 95 e5                                      ldr r3, [r5]
0043561c  0f e0 a0 e1                                      mov lr, pc
00435620  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00435624  08 10 a0 e1                                      mov r1, r8
00435628  00 30 95 e5                                      ldr r3, [r5]
0043562c  05 00 a0 e1                                      mov r0, r5
00435630  0f e0 a0 e1                                      mov lr, pc
00435634  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00435638  00 00 57 e3                                      cmp r7, #0
0043563c  09 00 00 0a                                      beq #0x435668
00435640  10 30 9a e5                                      ldr r3, [sl, #0x10]
00435644  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00435648  e4 20 93 e5                                      ldr r2, [r3, #0xe4]
0043564c  00 00 52 e3                                      cmp r2, #0
00435650  06 00 00 0a                                      beq #0x435670
00435654  03 00 a0 e1                                      mov r0, r3
00435658  07 10 a0 e1                                      mov r1, r7
0043565c  00 30 93 e5                                      ldr r3, [r3]
00435660  0f e0 a0 e1                                      mov lr, pc
00435664  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00435668  10 30 9a e5                                      ldr r3, [sl, #0x10]
0043566c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00435670  01 20 a0 e3                                      mov r2, #1
00435674  50 22 c3 e5                                      strb r2, [r3, #0x250]
00435678  cc 30 99 e5                                      ldr r3, [sb, #0xcc]
0043567c  24 10 8d e2                                      add r1, sp, #0x24
00435680  04 30 13 e5                                      ldr r3, [r3, #-4]
00435684  03 00 a0 e1                                      mov r0, r3
00435688  00 30 93 e5                                      ldr r3, [r3]
0043568c  0f e0 a0 e1                                      mov lr, pc
00435690  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00435694  e0 30 95 e5                                      ldr r3, [r5, #0xe0]
00435698  03 00 a0 e1                                      mov r0, r3
0043569c  00 30 93 e5                                      ldr r3, [r3]
004356a0  0f e0 a0 e1                                      mov lr, pc
004356a4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
004356a8  05 00 a0 e1                                      mov r0, r5
004356ac  00 30 95 e5                                      ldr r3, [r5]
004356b0  0f e0 a0 e1                                      mov lr, pc
004356b4  94 f0 93 e5                                      ldr pc, [r3, #0x94]
004356b8  00 00 57 e3                                      cmp r7, #0
004356bc  65 ff ff 0a                                      beq #0x435458
004356c0  07 00 a0 e1                                      mov r0, r7
004356c4  00 30 97 e5                                      ldr r3, [r7]
004356c8  00 10 a0 e3                                      mov r1, #0
004356cc  0f e0 a0 e1                                      mov lr, pc
004356d0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
004356d4  5f ff ff ea                                      b #0x435458
004356d8  0c 63 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004356dc  9c f6 55 00 ac 40 00 00 84 08 00 00 7c a6 48 00  .byte 0x9c, 0xf6, 0x55, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x7c, 0xa6, 0x48, 0x00
004356ec  f4 37 00 00 ac 33 49 00                          .byte 0xf4, 0x37, 0x00, 0x00, 0xac, 0x33, 0x49, 0x00
