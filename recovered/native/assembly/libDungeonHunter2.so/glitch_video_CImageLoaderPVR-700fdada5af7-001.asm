; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00605718, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderPVR
; alias: _ZN6glitch5video15CImageLoaderPVR23hasTextureLoadInterfaceEv
; demangled: glitch::video::CImageLoaderPVR::hasTextureLoadInterface()
; decoder-mode: arm
00605718  01 00 a0 e3                                      mov r0, #1
0060571c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00605740, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CImageLoaderPVR
; alias: _ZN6glitch5video15CImageLoaderPVRC2Ev
; demangled: glitch::video::CImageLoaderPVR::CImageLoaderPVR()
; decoder-mode: arm
00605740  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00605744  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00605748  01 c0 a0 e3                                      mov ip, #1
0060574c  03 30 8f e0                                      add r3, pc, r3
00605750  02 20 93 e7                                      ldr r2, [r3, r2]
00605754  04 c0 80 e5                                      str ip, [r0, #4]
00605758  08 20 82 e2                                      add r2, r2, #8
0060575c  00 20 80 e5                                      str r2, [r0]
00605760  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00605764  44 f3 38 00 cc 2b 00 00                          .byte 0x44, 0xf3, 0x38, 0x00, 0xcc, 0x2b, 0x00, 0x00

; FUNCTION 0x0060576c, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CImageLoaderPVR
; alias: _ZN6glitch5video15CImageLoaderPVRC1Ev
; demangled: glitch::video::CImageLoaderPVR::CImageLoaderPVR()
; decoder-mode: arm
0060576c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00605770  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00605774  01 c0 a0 e3                                      mov ip, #1
00605778  03 30 8f e0                                      add r3, pc, r3
0060577c  02 20 93 e7                                      ldr r2, [r3, r2]
00605780  04 c0 80 e5                                      str ip, [r0, #4]
00605784  08 20 82 e2                                      add r2, r2, #8
00605788  00 20 80 e5                                      str r2, [r0]
0060578c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00605790  18 f3 38 00 cc 2b 00 00                          .byte 0x18, 0xf3, 0x38, 0x00, 0xcc, 0x2b, 0x00, 0x00

; FUNCTION 0x00605798, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CImageLoaderPVR
; alias: _ZN6glitch5video15CImageLoaderPVRD2Ev
; demangled: glitch::video::CImageLoaderPVR::~CImageLoaderPVR()
; decoder-mode: arm
00605798  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060579c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CImageLoaderPVR
; alias: _ZN6glitch5video15CImageLoaderPVRD1Ev
; demangled: glitch::video::CImageLoaderPVR::~CImageLoaderPVR()
; decoder-mode: arm
0060579c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006057e0, declared_size=196, range_size=196, mode=arm
; class-group: glitch::video::CImageLoaderPVR
; alias: _ZNK6glitch5video15CImageLoaderPVR21isALoadableFileFormatEPNS_2io9IReadFileE
; demangled: glitch::video::CImageLoaderPVR::isALoadableFileFormat(glitch::io::IReadFile*) const
; decoder-mode: arm
006057e0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006057e4  00 40 51 e2                                      subs r4, r1, #0
006057e8  3c d0 4d e2                                      sub sp, sp, #0x3c
006057ec  04 00 a0 01                                      moveq r0, r4
006057f0  1b 00 00 0a                                      beq #0x605864
006057f4  00 30 94 e5                                      ldr r3, [r4]
006057f8  04 00 a0 e1                                      mov r0, r4
006057fc  0f e0 a0 e1                                      mov lr, pc
00605800  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00605804  04 50 8d e2                                      add r5, sp, #4
00605808  00 70 a0 e1                                      mov r7, r0
0060580c  05 10 a0 e1                                      mov r1, r5
00605810  34 20 a0 e3                                      mov r2, #0x34
00605814  00 30 94 e5                                      ldr r3, [r4]
00605818  04 00 a0 e1                                      mov r0, r4
0060581c  0f e0 a0 e1                                      mov lr, pc
00605820  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00605824  07 10 a0 e1                                      mov r1, r7
00605828  00 60 a0 e1                                      mov r6, r0
0060582c  00 30 94 e5                                      ldr r3, [r4]
00605830  04 00 a0 e1                                      mov r0, r4
00605834  00 20 a0 e3                                      mov r2, #0
00605838  0f e0 a0 e1                                      mov lr, pc
0060583c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00605840  34 00 56 e3                                      cmp r6, #0x34
00605844  08 00 00 0a                                      beq #0x60586c
00605848  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
0060584c  05 00 a0 e1                                      mov r0, r5
00605850  08 20 a0 e3                                      mov r2, #8
00605854  01 10 8f e0                                      add r1, pc, r1
00605858  07 25 f4 eb                                      bl #0x30ec7c
0060585c  01 00 70 e2                                      rsbs r0, r0, #1
00605860  00 00 a0 33                                      movlo r0, #0
00605864  3c d0 8d e2                                      add sp, sp, #0x3c
00605868  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0060586c  04 30 9d e5                                      ldr r3, [sp, #4]
00605870  34 00 53 e3                                      cmp r3, #0x34
00605874  f3 ff ff 1a                                      bne #0x605848
00605878  20 10 9f e5                                      ldr r1, [pc, #0x20]
0060587c  2c 00 85 e2                                      add r0, r5, #0x2c
00605880  04 20 a0 e3                                      mov r2, #4
00605884  01 10 8f e0                                      add r1, pc, r1
00605888  fb 24 f4 eb                                      bl #0x30ec7c
0060588c  00 00 50 e3                                      cmp r0, #0
00605890  01 00 a0 03                                      moveq r0, #1
00605894  eb ff ff 1a                                      bne #0x605848
00605898  f1 ff ff ea                                      b #0x605864
; mapping-symbol data/literal pool
0060589c  d4 f0 2d 00 b4 f0 2d 00                          .byte 0xd4, 0xf0, 0x2d, 0x00, 0xb4, 0xf0, 0x2d, 0x00

; FUNCTION 0x00605b10, declared_size=1056, range_size=1056, mode=arm
; class-group: glitch::video::CImageLoaderPVR
; alias: _ZNK6glitch5video15CImageLoaderPVR17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE
; demangled: glitch::video::CImageLoaderPVR::loadTextureHeader(glitch::io::IReadFile*, glitch::video::STextureDesc&) const
; decoder-mode: arm
00605b10  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00605b14  3c d0 4d e2                                      sub sp, sp, #0x3c
00605b18  01 00 a0 e1                                      mov r0, r1
00605b1c  01 50 a0 e1                                      mov r5, r1
00605b20  02 40 a0 e1                                      mov r4, r2
00605b24  0d 10 a0 e1                                      mov r1, sp
00605b28  37 20 8d e2                                      add r2, sp, #0x37
00605b2c  5c ff ff eb                                      bl #0x6058a4
00605b30  e4 63 9f e5                                      ldr r6, [pc, #0x3e4]
00605b34  00 00 50 e3                                      cmp r0, #0
00605b38  06 60 8f e0                                      add r6, pc, r6
00605b3c  01 00 00 1a                                      bne #0x605b48
00605b40  3c d0 8d e2                                      add sp, sp, #0x3c
00605b44  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00605b48  10 30 9d e5                                      ldr r3, [sp, #0x10]
00605b4c  37 70 dd e5                                      ldrb r7, [sp, #0x37]
00605b50  01 0a 13 e3                                      tst r3, #0x1000
00605b54  02 20 a0 13                                      movne r2, #2
00605b58  00 20 84 15                                      strne r2, [r4]
00605b5c  78 00 00 0a                                      beq #0x605d44
00605b60  00 00 94 e5                                      ldr r0, [r4]
00605b64  04 20 9d e5                                      ldr r2, [sp, #4]
00605b68  08 10 9d e5                                      ldr r1, [sp, #8]
00605b6c  01 00 50 e3                                      cmp r0, #1
00605b70  00 00 a0 e3                                      mov r0, #0
00605b74  14 20 84 e5                                      str r2, [r4, #0x14]
00605b78  08 00 84 e5                                      str r0, [r4, #8]
00605b7c  10 10 84 e5                                      str r1, [r4, #0x10]
00605b80  30 20 9d 05                                      ldreq r2, [sp, #0x30]
00605b84  01 20 a0 13                                      movne r2, #1
00605b88  53 34 e0 e7                                      ubfx r3, r3, #8, #1
00605b8c  18 20 84 e5                                      str r2, [r4, #0x18]
00605b90  1c 30 c4 e5                                      strb r3, [r4, #0x1c]
00605b94  00 30 95 e5                                      ldr r3, [r5]
00605b98  05 00 a0 e1                                      mov r0, r5
00605b9c  0f e0 a0 e1                                      mov lr, pc
00605ba0  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00605ba4  00 30 94 e5                                      ldr r3, [r4]
00605ba8  00 00 57 e3                                      cmp r7, #0
00605bac  14 20 9d e5                                      ldr r2, [sp, #0x14]
00605bb0  08 70 a0 13                                      movne r7, #8
00605bb4  02 00 53 e3                                      cmp r3, #2
00605bb8  06 30 a0 03                                      moveq r3, #6
00605bbc  01 30 a0 13                                      movne r3, #1
00605bc0  92 03 03 e0                                      mul r3, r2, r3
00605bc4  34 00 40 e2                                      sub r0, r0, #0x34
00605bc8  00 70 67 e0                                      rsb r7, r7, r0
00605bcc  03 00 57 e1                                      cmp r7, r3
00605bd0  5f 00 00 1a                                      bne #0x605d54
00605bd4  10 30 9d e5                                      ldr r3, [sp, #0x10]
00605bd8  ff 20 03 e2                                      and r2, r3, #0xff
00605bdc  56 00 52 e3                                      cmp r2, #0x56
00605be0  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
00605be4  7c 00 00 ea                                      b #0x605ddc
00605be8  87 00 00 ea                                      b #0x605e0c
00605bec  89 00 00 ea                                      b #0x605e18
00605bf0  8b 00 00 ea                                      b #0x605e24
00605bf4  78 00 00 ea                                      b #0x605ddc
00605bf8  8c 00 00 ea                                      b #0x605e30
00605bfc  8e 00 00 ea                                      b #0x605e3c
00605c00  75 00 00 ea                                      b #0x605ddc
00605c04  8f 00 00 ea                                      b #0x605e48
00605c08  91 00 00 ea                                      b #0x605e54
00605c0c  72 00 00 ea                                      b #0x605ddc
00605c10  71 00 00 ea                                      b #0x605ddc
00605c14  70 00 00 ea                                      b #0x605ddc
00605c18  90 00 00 ea                                      b #0x605e60
00605c1c  94 00 00 ea                                      b #0x605e74
00605c20  6d 00 00 ea                                      b #0x605ddc
00605c24  6c 00 00 ea                                      b #0x605ddc
00605c28  96 00 00 ea                                      b #0x605e88
00605c2c  98 00 00 ea                                      b #0x605e94
00605c30  9a 00 00 ea                                      b #0x605ea0
00605c34  7a 00 00 ea                                      b #0x605e24
00605c38  67 00 00 ea                                      b #0x605ddc
00605c3c  7b 00 00 ea                                      b #0x605e30
00605c40  80 00 00 ea                                      b #0x605e48
00605c44  82 00 00 ea                                      b #0x605e54
00605c48  84 00 00 ea                                      b #0x605e60
00605c4c  88 00 00 ea                                      b #0x605e74
00605c50  79 00 00 ea                                      b #0x605e3c
00605c54  60 00 00 ea                                      b #0x605ddc
00605c58  5f 00 00 ea                                      b #0x605ddc
00605c5c  5e 00 00 ea                                      b #0x605ddc
00605c60  5d 00 00 ea                                      b #0x605ddc
00605c64  5c 00 00 ea                                      b #0x605ddc
00605c68  8f 00 00 ea                                      b #0x605eac
00605c6c  93 00 00 ea                                      b #0x605ec0
00605c70  92 00 00 ea                                      b #0x605ec0
00605c74  94 00 00 ea                                      b #0x605ecc
00605c78  93 00 00 ea                                      b #0x605ecc
00605c7c  56 00 00 ea                                      b #0x605ddc
00605c80  55 00 00 ea                                      b #0x605ddc
00605c84  54 00 00 ea                                      b #0x605ddc
00605c88  53 00 00 ea                                      b #0x605ddc
00605c8c  52 00 00 ea                                      b #0x605ddc
00605c90  90 00 00 ea                                      b #0x605ed8
00605c94  50 00 00 ea                                      b #0x605ddc
00605c98  4f 00 00 ea                                      b #0x605ddc
00605c9c  4e 00 00 ea                                      b #0x605ddc
00605ca0  4d 00 00 ea                                      b #0x605ddc
00605ca4  4c 00 00 ea                                      b #0x605ddc
00605ca8  4b 00 00 ea                                      b #0x605ddc
00605cac  4a 00 00 ea                                      b #0x605ddc
00605cb0  49 00 00 ea                                      b #0x605ddc
00605cb4  48 00 00 ea                                      b #0x605ddc
00605cb8  47 00 00 ea                                      b #0x605ddc
00605cbc  46 00 00 ea                                      b #0x605ddc
00605cc0  45 00 00 ea                                      b #0x605ddc
00605cc4  44 00 00 ea                                      b #0x605ddc
00605cc8  43 00 00 ea                                      b #0x605ddc
00605ccc  84 00 00 ea                                      b #0x605ee4
00605cd0  41 00 00 ea                                      b #0x605ddc
00605cd4  85 00 00 ea                                      b #0x605ef0
00605cd8  3f 00 00 ea                                      b #0x605ddc
00605cdc  3e 00 00 ea                                      b #0x605ddc
00605ce0  3d 00 00 ea                                      b #0x605ddc
00605ce4  3c 00 00 ea                                      b #0x605ddc
00605ce8  3b 00 00 ea                                      b #0x605ddc
00605cec  3a 00 00 ea                                      b #0x605ddc
00605cf0  39 00 00 ea                                      b #0x605ddc
00605cf4  38 00 00 ea                                      b #0x605ddc
00605cf8  37 00 00 ea                                      b #0x605ddc
00605cfc  36 00 00 ea                                      b #0x605ddc
00605d00  35 00 00 ea                                      b #0x605ddc
00605d04  34 00 00 ea                                      b #0x605ddc
00605d08  33 00 00 ea                                      b #0x605ddc
00605d0c  32 00 00 ea                                      b #0x605ddc
00605d10  31 00 00 ea                                      b #0x605ddc
00605d14  30 00 00 ea                                      b #0x605ddc
00605d18  2f 00 00 ea                                      b #0x605ddc
00605d1c  2e 00 00 ea                                      b #0x605ddc
00605d20  2d 00 00 ea                                      b #0x605ddc
00605d24  2c 00 00 ea                                      b #0x605ddc
00605d28  73 00 00 ea                                      b #0x605efc
00605d2c  2a 00 00 ea                                      b #0x605ddc
00605d30  29 00 00 ea                                      b #0x605ddc
00605d34  73 00 00 ea                                      b #0x605f08
00605d38  27 00 00 ea                                      b #0x605ddc
00605d3c  26 00 00 ea                                      b #0x605ddc
00605d40  0e 00 00 ea                                      b #0x605d80
00605d44  01 29 13 e2                                      ands r2, r3, #0x4000
00605d48  01 20 a0 13                                      movne r2, #1
00605d4c  00 20 84 e5                                      str r2, [r4]
00605d50  82 ff ff ea                                      b #0x605b60
00605d54  00 30 95 e5                                      ldr r3, [r5]
00605d58  05 00 a0 e1                                      mov r0, r5
00605d5c  0f e0 a0 e1                                      mov lr, pc
00605d60  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605d64  b4 11 9f e5                                      ldr r1, [pc, #0x1b4]
00605d68  00 20 a0 e1                                      mov r2, r0
00605d6c  03 00 a0 e3                                      mov r0, #3
00605d70  01 10 8f e0                                      add r1, pc, r1
00605d74  ae 14 00 eb                                      bl #0x60b034
00605d78  00 00 a0 e3                                      mov r0, #0
00605d7c  6f ff ff ea                                      b #0x605b40
00605d80  1d 20 a0 e3                                      mov r2, #0x1d
00605d84  04 20 84 e5                                      str r2, [r4, #4]
00605d88  02 0c 13 e3                                      tst r3, #0x200
00605d8c  60 00 00 0a                                      beq #0x605f14
00605d90  04 30 94 e5                                      ldr r3, [r4, #4]
00605d94  28 20 a0 e3                                      mov r2, #0x28
00605d98  92 03 03 e0                                      mul r3, r2, r3
00605d9c  80 21 9f e5                                      ldr r2, [pc, #0x180]
00605da0  02 20 96 e7                                      ldr r2, [r6, r2]
00605da4  03 40 92 e7                                      ldr r4, [r2, r3]
00605da8  08 40 14 e2                                      ands r4, r4, #8
00605dac  58 00 00 1a                                      bne #0x605f14
00605db0  00 30 95 e5                                      ldr r3, [r5]
00605db4  05 00 a0 e1                                      mov r0, r5
00605db8  0f e0 a0 e1                                      mov lr, pc
00605dbc  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605dc0  60 11 9f e5                                      ldr r1, [pc, #0x160]
00605dc4  00 20 a0 e1                                      mov r2, r0
00605dc8  03 00 a0 e3                                      mov r0, #3
00605dcc  01 10 8f e0                                      add r1, pc, r1
00605dd0  97 14 00 eb                                      bl #0x60b034
00605dd4  04 00 a0 e1                                      mov r0, r4
00605dd8  58 ff ff ea                                      b #0x605b40
00605ddc  00 30 95 e5                                      ldr r3, [r5]
00605de0  05 00 a0 e1                                      mov r0, r5
00605de4  0f e0 a0 e1                                      mov lr, pc
00605de8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605dec  38 11 9f e5                                      ldr r1, [pc, #0x138]
00605df0  00 20 a0 e1                                      mov r2, r0
00605df4  10 30 dd e5                                      ldrb r3, [sp, #0x10]
00605df8  03 00 a0 e3                                      mov r0, #3
00605dfc  01 10 8f e0                                      add r1, pc, r1
00605e00  8b 14 00 eb                                      bl #0x60b034
00605e04  00 00 a0 e3                                      mov r0, #0
00605e08  4c ff ff ea                                      b #0x605b40
00605e0c  06 20 a0 e3                                      mov r2, #6
00605e10  04 20 84 e5                                      str r2, [r4, #4]
00605e14  db ff ff ea                                      b #0x605d88
00605e18  08 20 a0 e3                                      mov r2, #8
00605e1c  04 20 84 e5                                      str r2, [r4, #4]
00605e20  d8 ff ff ea                                      b #0x605d88
00605e24  05 20 a0 e3                                      mov r2, #5
00605e28  04 20 84 e5                                      str r2, [r4, #4]
00605e2c  d5 ff ff ea                                      b #0x605d88
00605e30  0a 20 a0 e3                                      mov r2, #0xa
00605e34  04 20 84 e5                                      str r2, [r4, #4]
00605e38  d2 ff ff ea                                      b #0x605d88
00605e3c  0d 20 a0 e3                                      mov r2, #0xd
00605e40  04 20 84 e5                                      str r2, [r4, #4]
00605e44  cf ff ff ea                                      b #0x605d88
00605e48  00 20 a0 e3                                      mov r2, #0
00605e4c  04 20 84 e5                                      str r2, [r4, #4]
00605e50  cc ff ff ea                                      b #0x605d88
00605e54  04 20 a0 e3                                      mov r2, #4
00605e58  04 20 84 e5                                      str r2, [r4, #4]
00605e5c  c9 ff ff ea                                      b #0x605d88
00605e60  02 09 13 e3                                      tst r3, #0x8000
00605e64  19 20 a0 13                                      movne r2, #0x19
00605e68  18 20 a0 03                                      moveq r2, #0x18
00605e6c  04 20 84 e5                                      str r2, [r4, #4]
00605e70  c4 ff ff ea                                      b #0x605d88
00605e74  02 09 13 e3                                      tst r3, #0x8000
00605e78  1b 20 a0 13                                      movne r2, #0x1b
00605e7c  1a 20 a0 03                                      moveq r2, #0x1a
00605e80  04 20 84 e5                                      str r2, [r4, #4]
00605e84  bf ff ff ea                                      b #0x605d88
00605e88  07 20 a0 e3                                      mov r2, #7
00605e8c  04 20 84 e5                                      str r2, [r4, #4]
00605e90  bc ff ff ea                                      b #0x605d88
00605e94  09 20 a0 e3                                      mov r2, #9
00605e98  04 20 84 e5                                      str r2, [r4, #4]
00605e9c  b9 ff ff ea                                      b #0x605d88
00605ea0  0e 20 a0 e3                                      mov r2, #0xe
00605ea4  04 20 84 e5                                      str r2, [r4, #4]
00605ea8  b6 ff ff ea                                      b #0x605d88
00605eac  02 09 13 e3                                      tst r3, #0x8000
00605eb0  12 20 a0 13                                      movne r2, #0x12
00605eb4  11 20 a0 03                                      moveq r2, #0x11
00605eb8  04 20 84 e5                                      str r2, [r4, #4]
00605ebc  b1 ff ff ea                                      b #0x605d88
00605ec0  13 20 a0 e3                                      mov r2, #0x13
00605ec4  04 20 84 e5                                      str r2, [r4, #4]
00605ec8  ae ff ff ea                                      b #0x605d88
00605ecc  14 20 a0 e3                                      mov r2, #0x14
00605ed0  04 20 84 e5                                      str r2, [r4, #4]
00605ed4  ab ff ff ea                                      b #0x605d88
00605ed8  10 20 a0 e3                                      mov r2, #0x10
00605edc  04 20 84 e5                                      str r2, [r4, #4]
00605ee0  a8 ff ff ea                                      b #0x605d88
00605ee4  02 20 a0 e3                                      mov r2, #2
00605ee8  04 20 84 e5                                      str r2, [r4, #4]
00605eec  a5 ff ff ea                                      b #0x605d88
00605ef0  01 20 a0 e3                                      mov r2, #1
00605ef4  04 20 84 e5                                      str r2, [r4, #4]
00605ef8  a2 ff ff ea                                      b #0x605d88
00605efc  1f 20 a0 e3                                      mov r2, #0x1f
00605f00  04 20 84 e5                                      str r2, [r4, #4]
00605f04  9f ff ff ea                                      b #0x605d88
00605f08  1e 20 a0 e3                                      mov r2, #0x1e
00605f0c  04 20 84 e5                                      str r2, [r4, #4]
00605f10  9c ff ff ea                                      b #0x605d88
00605f14  01 00 a0 e3                                      mov r0, #1
00605f18  08 ff ff ea                                      b #0x605b40
; mapping-symbol data/literal pool
00605f1c  58 ef 38 00 08 ec 2d 00 34 1f 00 00 0c ec 2d 00  .byte 0x58, 0xef, 0x38, 0x00, 0x08, 0xec, 0x2d, 0x00, 0x34, 0x1f, 0x00, 0x00, 0x0c, 0xec, 0x2d, 0x00
00605f2c  ac eb 2d 00                                      .byte 0xac, 0xeb, 0x2d, 0x00

; FUNCTION 0x00605f30, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CImageLoaderPVR
; alias: _ZN6glitch5video15CImageLoaderPVRD0Ev
; demangled: glitch::video::CImageLoaderPVR::~CImageLoaderPVR()
; decoder-mode: arm
00605f30  10 40 2d e9                                      push {r4, lr}
00605f34  00 40 a0 e1                                      mov r4, r0
00605f38  17 fe ff eb                                      bl #0x60579c
00605f3c  04 00 a0 e1                                      mov r0, r4
00605f40  da 20 f4 eb                                      bl #0x30e2b0
00605f44  04 00 a0 e1                                      mov r0, r4
00605f48  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00605f80, declared_size=564, range_size=564, mode=arm
; class-group: glitch::video::CImageLoaderPVR
; alias: _ZNK6glitch5video15CImageLoaderPVR9loadImageEPNS_2io9IReadFileE
; demangled: glitch::video::CImageLoaderPVR::loadImage(glitch::io::IReadFile*) const
; decoder-mode: arm
00605f80  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00605f84  54 d0 4d e2                                      sub sp, sp, #0x54
00605f88  00 40 a0 e1                                      mov r4, r0
00605f8c  02 50 a0 e1                                      mov r5, r2
00605f90  02 00 a0 e1                                      mov r0, r2
00605f94  10 10 8d e2                                      add r1, sp, #0x10
00605f98  4f 20 8d e2                                      add r2, sp, #0x4f
00605f9c  40 fe ff eb                                      bl #0x6058a4
00605fa0  00 00 50 e3                                      cmp r0, #0
00605fa4  00 00 84 05                                      streq r0, [r4]
00605fa8  02 00 00 1a                                      bne #0x605fb8
00605fac  04 00 a0 e1                                      mov r0, r4
00605fb0  54 d0 8d e2                                      add sp, sp, #0x54
00605fb4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00605fb8  00 10 a0 e3                                      mov r1, #0
00605fbc  24 00 9d e5                                      ldr r0, [sp, #0x24]
00605fc0  78 b8 fc eb                                      bl #0x5341a8
00605fc4  00 60 a0 e1                                      mov r6, r0
00605fc8  00 30 95 e5                                      ldr r3, [r5]
00605fcc  05 00 a0 e1                                      mov r0, r5
00605fd0  06 10 a0 e1                                      mov r1, r6
00605fd4  24 20 9d e5                                      ldr r2, [sp, #0x24]
00605fd8  0f e0 a0 e1                                      mov lr, pc
00605fdc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00605fe0  24 30 9d e5                                      ldr r3, [sp, #0x24]
00605fe4  03 00 50 e1                                      cmp r0, r3
00605fe8  0d 00 00 0a                                      beq #0x606024
00605fec  00 30 95 e5                                      ldr r3, [r5]
00605ff0  05 00 a0 e1                                      mov r0, r5
00605ff4  0f e0 a0 e1                                      mov lr, pc
00605ff8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605ffc  00 10 a0 e1                                      mov r1, r0
00606000  a0 01 9f e5                                      ldr r0, [pc, #0x1a0]
00606004  03 20 a0 e3                                      mov r2, #3
00606008  00 00 8f e0                                      add r0, pc, r0
0060600c  35 13 00 eb                                      bl #0x60ace8
00606010  00 30 a0 e3                                      mov r3, #0
00606014  00 30 84 e5                                      str r3, [r4]
00606018  06 00 a0 e1                                      mov r0, r6
0060601c  a3 20 f4 eb                                      bl #0x30e2b0
00606020  e1 ff ff ea                                      b #0x605fac
00606024  20 20 9d e5                                      ldr r2, [sp, #0x20]
00606028  ff 30 02 e2                                      and r3, r2, #0xff
0060602c  01 30 43 e2                                      sub r3, r3, #1
00606030  18 00 53 e3                                      cmp r3, #0x18
00606034  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00606038  51 00 00 ea                                      b #0x606184
0060603c  4e 00 00 ea                                      b #0x60617c
00606040  4f 00 00 ea                                      b #0x606184
00606044  4e 00 00 ea                                      b #0x606184
00606048  4d 00 00 ea                                      b #0x606184
0060604c  4c 00 00 ea                                      b #0x606184
00606050  4b 00 00 ea                                      b #0x606184
00606054  4a 00 00 ea                                      b #0x606184
00606058  49 00 00 ea                                      b #0x606184
0060605c  48 00 00 ea                                      b #0x606184
00606060  47 00 00 ea                                      b #0x606184
00606064  46 00 00 ea                                      b #0x606184
00606068  45 00 00 ea                                      b #0x606184
0060606c  44 00 00 ea                                      b #0x606184
00606070  43 00 00 ea                                      b #0x606184
00606074  42 00 00 ea                                      b #0x606184
00606078  3d 00 00 ea                                      b #0x606174
0060607c  3a 00 00 ea                                      b #0x60616c
00606080  37 00 00 ea                                      b #0x606164
00606084  34 00 00 ea                                      b #0x60615c
00606088  3d 00 00 ea                                      b #0x606184
0060608c  30 00 00 ea                                      b #0x606154
00606090  2d 00 00 ea                                      b #0x60614c
00606094  2a 00 00 ea                                      b #0x606144
00606098  25 00 00 ea                                      b #0x606134
0060609c  ff ff ff ea                                      b #0x6060a0
006060a0  02 09 12 e3                                      tst r2, #0x8000
006060a4  1b 70 a0 13                                      movne r7, #0x1b
006060a8  1a 70 a0 03                                      moveq r7, #0x1a
006060ac  18 30 9d e5                                      ldr r3, [sp, #0x18]
006060b0  00 10 a0 e3                                      mov r1, #0
006060b4  2c 00 a0 e3                                      mov r0, #0x2c
006060b8  44 30 8d e5                                      str r3, [sp, #0x44]
006060bc  14 30 9d e5                                      ldr r3, [sp, #0x14]
006060c0  48 30 8d e5                                      str r3, [sp, #0x48]
006060c4  38 b8 fc eb                                      bl #0x5341ac
006060c8  24 e0 9d e5                                      ldr lr, [sp, #0x24]
006060cc  00 50 a0 e1                                      mov r5, r0
006060d0  01 c0 a0 e3                                      mov ip, #1
006060d4  00 e0 8d e5                                      str lr, [sp]
006060d8  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
006060dc  06 30 a0 e1                                      mov r3, r6
006060e0  07 10 a0 e1                                      mov r1, r7
006060e4  44 20 8d e2                                      add r2, sp, #0x44
006060e8  04 e0 8d e5                                      str lr, [sp, #4]
006060ec  0c c0 8d e5                                      str ip, [sp, #0xc]
006060f0  08 c0 8d e5                                      str ip, [sp, #8]
006060f4  bb f1 ff eb                                      bl #0x6027e8
006060f8  00 00 55 e3                                      cmp r5, #0
006060fc  00 50 84 05                                      streq r5, [r4]
00606100  05 60 a0 01                                      moveq r6, r5
00606104  c3 ff ff 0a                                      beq #0x606018
00606108  04 30 95 e5                                      ldr r3, [r5, #4]
0060610c  05 00 a0 e1                                      mov r0, r5
00606110  00 60 a0 e3                                      mov r6, #0
00606114  01 30 83 e2                                      add r3, r3, #1
00606118  04 30 85 e5                                      str r3, [r5, #4]
0060611c  00 50 84 e5                                      str r5, [r4]
00606120  04 30 95 e5                                      ldr r3, [r5, #4]
00606124  01 30 83 e2                                      add r3, r3, #1
00606128  04 30 85 e5                                      str r3, [r5, #4]
0060612c  14 5d f4 eb                                      bl #0x31d584
00606130  b8 ff ff ea                                      b #0x606018
00606134  02 09 12 e3                                      tst r2, #0x8000
00606138  19 70 a0 13                                      movne r7, #0x19
0060613c  18 70 a0 03                                      moveq r7, #0x18
00606140  d9 ff ff ea                                      b #0x6060ac
00606144  04 70 a0 e3                                      mov r7, #4
00606148  d7 ff ff ea                                      b #0x6060ac
0060614c  00 70 a0 e3                                      mov r7, #0
00606150  d5 ff ff ea                                      b #0x6060ac
00606154  0a 70 a0 e3                                      mov r7, #0xa
00606158  d3 ff ff ea                                      b #0x6060ac
0060615c  05 70 a0 e3                                      mov r7, #5
00606160  d1 ff ff ea                                      b #0x6060ac
00606164  0e 70 a0 e3                                      mov r7, #0xe
00606168  cf ff ff ea                                      b #0x6060ac
0060616c  09 70 a0 e3                                      mov r7, #9
00606170  cd ff ff ea                                      b #0x6060ac
00606174  07 70 a0 e3                                      mov r7, #7
00606178  cb ff ff ea                                      b #0x6060ac
0060617c  08 70 a0 e3                                      mov r7, #8
00606180  c9 ff ff ea                                      b #0x6060ac
00606184  20 00 9f e5                                      ldr r0, [pc, #0x20]
00606188  20 10 9f e5                                      ldr r1, [pc, #0x20]
0060618c  03 20 a0 e3                                      mov r2, #3
00606190  00 00 8f e0                                      add r0, pc, r0
00606194  01 10 8f e0                                      add r1, pc, r1
00606198  d2 12 00 eb                                      bl #0x60ace8
0060619c  00 30 a0 e3                                      mov r3, #0
006061a0  00 30 84 e5                                      str r3, [r4]
006061a4  9b ff ff ea                                      b #0x606018
; mapping-symbol data/literal pool
006061a8  00 ea 2d 00 90 e8 2d 00 9c e8 2d 00              .byte 0x00, 0xea, 0x2d, 0x00, 0x90, 0xe8, 0x2d, 0x00, 0x9c, 0xe8, 0x2d, 0x00

; FUNCTION 0x006061b4, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CImageLoaderPVR
; alias: _ZNK6glitch5video15CImageLoaderPVR24isALoadableFileExtensionEPKc
; demangled: glitch::video::CImageLoaderPVR::isALoadableFileExtension(char const*) const
; decoder-mode: arm
006061b4  10 40 2d e9                                      push {r4, lr}
006061b8  01 00 a0 e1                                      mov r0, r1
006061bc  01 40 a0 e1                                      mov r4, r1
006061c0  30 10 9f e5                                      ldr r1, [pc, #0x30]
006061c4  01 10 8f e0                                      add r1, pc, r1
006061c8  81 22 f4 eb                                      bl #0x30ebd4
006061cc  00 00 50 e3                                      cmp r0, #0
006061d0  01 00 00 0a                                      beq #0x6061dc
006061d4  01 00 a0 e3                                      mov r0, #1
006061d8  10 80 bd e8                                      pop {r4, pc}
006061dc  18 10 9f e5                                      ldr r1, [pc, #0x18]
006061e0  04 00 a0 e1                                      mov r0, r4
006061e4  01 10 8f e0                                      add r1, pc, r1
006061e8  79 22 f4 eb                                      bl #0x30ebd4
006061ec  00 00 50 e2                                      subs r0, r0, #0
006061f0  01 00 a0 13                                      movne r0, #1
006061f4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006061f8  84 e8 2d 00 6c e8 2d 00                          .byte 0x84, 0xe8, 0x2d, 0x00, 0x6c, 0xe8, 0x2d, 0x00

; FUNCTION 0x0060623c, declared_size=184, range_size=184, mode=arm
; class-group: glitch::video::CImageLoaderPVR
; alias: _ZNK6glitch5video15CImageLoaderPVR15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE
; demangled: glitch::video::CImageLoaderPVR::loadTextureData(glitch::io::IReadFile*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::STextureDesc const&) const
; decoder-mode: arm
0060623c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00606240  4c d0 4d e2                                      sub sp, sp, #0x4c
00606244  01 40 a0 e1                                      mov r4, r1
00606248  01 00 a0 e1                                      mov r0, r1
0060624c  02 70 a0 e1                                      mov r7, r2
00606250  0d 10 a0 e1                                      mov r1, sp
00606254  47 20 8d e2                                      add r2, sp, #0x47
00606258  03 60 a0 e1                                      mov r6, r3
0060625c  90 fd ff eb                                      bl #0x6058a4
00606260  84 80 9f e5                                      ldr r8, [pc, #0x84]
00606264  00 00 50 e3                                      cmp r0, #0
00606268  0d 50 a0 e1                                      mov r5, sp
0060626c  08 80 8f e0                                      add r8, pc, r8
00606270  00 40 a0 01                                      moveq r4, r0
00606274  19 00 00 0a                                      beq #0x6062e0
00606278  00 30 94 e5                                      ldr r3, [r4]
0060627c  04 00 a0 e1                                      mov r0, r4
00606280  0f e0 a0 e1                                      mov lr, pc
00606284  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00606288  60 a0 9f e5                                      ldr sl, [pc, #0x60]
0060628c  47 30 dd e5                                      ldrb r3, [sp, #0x47]
00606290  34 00 40 e2                                      sub r0, r0, #0x34
00606294  0a a0 98 e7                                      ldr sl, [r8, sl]
00606298  00 00 53 e3                                      cmp r3, #0
0060629c  08 30 a0 13                                      movne r3, #8
006062a0  34 80 8d e2                                      add r8, sp, #0x34
006062a4  00 c0 63 e0                                      rsb ip, r3, r0
006062a8  08 a0 8a e2                                      add sl, sl, #8
006062ac  04 00 a0 e1                                      mov r0, r4
006062b0  06 20 a0 e1                                      mov r2, r6
006062b4  07 30 a0 e1                                      mov r3, r7
006062b8  08 10 a0 e1                                      mov r1, r8
006062bc  38 d0 8d e5                                      str sp, [sp, #0x38]
006062c0  40 c0 8d e5                                      str ip, [sp, #0x40]
006062c4  34 a0 8d e5                                      str sl, [sp, #0x34]
006062c8  3c 60 8d e5                                      str r6, [sp, #0x3c]
006062cc  3f 08 00 eb                                      bl #0x6083d0
006062d0  00 40 a0 e1                                      mov r4, r0
006062d4  08 00 a0 e1                                      mov r0, r8
006062d8  34 a0 8d e5                                      str sl, [sp, #0x34]
006062dc  da 04 00 eb                                      bl #0x60764c
006062e0  04 00 a0 e1                                      mov r0, r4
006062e4  4c d0 8d e2                                      add sp, sp, #0x4c
006062e8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
006062ec  24 e8 38 00 1c 2c 00 00                          .byte 0x24, 0xe8, 0x38, 0x00, 0x1c, 0x2c, 0x00, 0x00
