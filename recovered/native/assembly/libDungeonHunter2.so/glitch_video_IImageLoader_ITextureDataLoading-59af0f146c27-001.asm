; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00607654, declared_size=84, range_size=84, mode=arm
; class-group: glitch::video::IImageLoader::ITextureDataLoading
; alias: _ZN6glitch5video12IImageLoader19ITextureDataLoadingC2Ev
; demangled: glitch::video::IImageLoader::ITextureDataLoading::ITextureDataLoading()
; decoder-mode: arm
00607654  44 10 9f e5                                      ldr r1, [pc, #0x44]
00607658  44 c0 9f e5                                      ldr ip, [pc, #0x44]
0060765c  00 20 a0 e3                                      mov r2, #0
00607660  01 10 8f e0                                      add r1, pc, r1
00607664  0c c0 91 e7                                      ldr ip, [r1, ip]
00607668  22 20 c0 e5                                      strb r2, [r0, #0x22]
0060766c  04 20 80 e5                                      str r2, [r0, #4]
00607670  08 c0 8c e2                                      add ip, ip, #8
00607674  00 c0 80 e5                                      str ip, [r0]
00607678  01 c0 a0 e3                                      mov ip, #1
0060767c  21 c0 c0 e5                                      strb ip, [r0, #0x21]
00607680  08 20 80 e5                                      str r2, [r0, #8]
00607684  0c 20 80 e5                                      str r2, [r0, #0xc]
00607688  10 20 80 e5                                      str r2, [r0, #0x10]
0060768c  14 20 80 e5                                      str r2, [r0, #0x14]
00607690  18 20 80 e5                                      str r2, [r0, #0x18]
00607694  1c 20 80 e5                                      str r2, [r0, #0x1c]
00607698  20 20 c0 e5                                      strb r2, [r0, #0x20]
0060769c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006076a0  30 d4 38 00 28 3b 00 00                          .byte 0x30, 0xd4, 0x38, 0x00, 0x28, 0x3b, 0x00, 0x00

; FUNCTION 0x006076a8, declared_size=84, range_size=84, mode=arm
; class-group: glitch::video::IImageLoader::ITextureDataLoading
; alias: _ZN6glitch5video12IImageLoader19ITextureDataLoadingC1Ev
; demangled: glitch::video::IImageLoader::ITextureDataLoading::ITextureDataLoading()
; decoder-mode: arm
006076a8  44 10 9f e5                                      ldr r1, [pc, #0x44]
006076ac  44 c0 9f e5                                      ldr ip, [pc, #0x44]
006076b0  00 20 a0 e3                                      mov r2, #0
006076b4  01 10 8f e0                                      add r1, pc, r1
006076b8  0c c0 91 e7                                      ldr ip, [r1, ip]
006076bc  22 20 c0 e5                                      strb r2, [r0, #0x22]
006076c0  04 20 80 e5                                      str r2, [r0, #4]
006076c4  08 c0 8c e2                                      add ip, ip, #8
006076c8  00 c0 80 e5                                      str ip, [r0]
006076cc  01 c0 a0 e3                                      mov ip, #1
006076d0  21 c0 c0 e5                                      strb ip, [r0, #0x21]
006076d4  08 20 80 e5                                      str r2, [r0, #8]
006076d8  0c 20 80 e5                                      str r2, [r0, #0xc]
006076dc  10 20 80 e5                                      str r2, [r0, #0x10]
006076e0  14 20 80 e5                                      str r2, [r0, #0x14]
006076e4  18 20 80 e5                                      str r2, [r0, #0x18]
006076e8  1c 20 80 e5                                      str r2, [r0, #0x1c]
006076ec  20 20 c0 e5                                      strb r2, [r0, #0x20]
006076f0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006076f4  dc d3 38 00 28 3b 00 00                          .byte 0xdc, 0xd3, 0x38, 0x00, 0x28, 0x3b, 0x00, 0x00

; FUNCTION 0x006076fc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::IImageLoader::ITextureDataLoading
; alias: _ZN6glitch5video12IImageLoader19ITextureDataLoadingD2Ev
; demangled: glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading()
; decoder-mode: arm
006076fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00607700, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::IImageLoader::ITextureDataLoading
; alias: _ZN6glitch5video12IImageLoader19ITextureDataLoadingD1Ev
; demangled: glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading()
; decoder-mode: arm
00607700  1e ff 2f e1                                      bx lr

; FUNCTION 0x006077c4, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video::IImageLoader::ITextureDataLoading
; alias: _ZNK6glitch5video12IImageLoader19ITextureDataLoading12getFilePitchEh
; demangled: glitch::video::IImageLoader::ITextureDataLoading::getFilePitch(unsigned char) const
; decoder-mode: arm
006077c4  70 40 2d e9                                      push {r4, r5, r6, lr}
006077c8  08 30 90 e5                                      ldr r3, [r0, #8]
006077cc  00 40 a0 e1                                      mov r4, r0
006077d0  01 50 a0 e1                                      mov r5, r1
006077d4  03 00 a0 e1                                      mov r0, r3
006077d8  00 30 93 e5                                      ldr r3, [r3]
006077dc  0f e0 a0 e1                                      mov lr, pc
006077e0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006077e4  00 00 50 e3                                      cmp r0, #0
006077e8  0a 00 00 1a                                      bne #0x607818
006077ec  0c 20 94 e5                                      ldr r2, [r4, #0xc]
006077f0  10 30 92 e5                                      ldr r3, [r2, #0x10]
006077f4  04 00 92 e5                                      ldr r0, [r2, #4]
006077f8  53 55 a0 e1                                      asr r5, r3, r5
006077fc  01 00 55 e3                                      cmp r5, #1
00607800  05 10 a0 a1                                      movge r1, r5
00607804  01 10 a0 b3                                      movlt r1, #1
00607808  b7 98 ff eb                                      bl #0x5edaec
0060780c  01 30 a0 e3                                      mov r3, #1
00607810  22 30 c4 e5                                      strb r3, [r4, #0x22]
00607814  70 80 bd e8                                      pop {r4, r5, r6, pc}
00607818  00 30 a0 e3                                      mov r3, #0
0060781c  22 30 c4 e5                                      strb r3, [r4, #0x22]
00607820  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00607898, declared_size=132, range_size=132, mode=arm
; class-group: glitch::video::IImageLoader::ITextureDataLoading
; alias: _ZNK6glitch5video12IImageLoader19ITextureDataLoading13getSourceStepEh
; demangled: glitch::video::IImageLoader::ITextureDataLoading::getSourceStep(unsigned char) const
; decoder-mode: arm
00607898  04 e0 2d e5                                      str lr, [sp, #-4]!
0060789c  22 30 d0 e5                                      ldrb r3, [r0, #0x22]
006078a0  0c d0 4d e2                                      sub sp, sp, #0xc
006078a4  00 00 53 e3                                      cmp r3, #0
006078a8  0d 00 00 1a                                      bne #0x6078e4
006078ac  10 30 90 e5                                      ldr r3, [r0, #0x10]
006078b0  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
006078b4  00 30 93 e5                                      ldr r3, [r3]
006078b8  24 00 93 e5                                      ldr r0, [r3, #0x24]
006078bc  28 30 93 e5                                      ldr r3, [r3, #0x28]
006078c0  50 01 a0 e1                                      asr r0, r0, r1
006078c4  01 00 50 e3                                      cmp r0, #1
006078c8  01 00 a0 b3                                      movlt r0, #1
006078cc  33 11 b0 e1                                      lsrs r1, r3, r1
006078d0  92 00 00 e0                                      mul r0, r2, r0
006078d4  01 10 a0 03                                      moveq r1, #1
006078d8  91 00 00 e0                                      mul r0, r1, r0
006078dc  0c d0 8d e2                                      add sp, sp, #0xc
006078e0  00 80 bd e8                                      ldm sp!, {pc}
006078e4  0c c0 90 e5                                      ldr ip, [r0, #0xc]
006078e8  10 e0 9c e5                                      ldr lr, [ip, #0x10]
006078ec  14 20 9c e5                                      ldr r2, [ip, #0x14]
006078f0  18 30 9c e5                                      ldr r3, [ip, #0x18]
006078f4  04 00 9c e5                                      ldr r0, [ip, #4]
006078f8  00 10 8d e5                                      str r1, [sp]
006078fc  08 c0 9c e5                                      ldr ip, [ip, #8]
00607900  0e 10 a0 e1                                      mov r1, lr
00607904  01 00 5c e3                                      cmp ip, #1
00607908  00 c0 a0 13                                      movne ip, #0
0060790c  01 c0 a0 03                                      moveq ip, #1
00607910  04 c0 8d e5                                      str ip, [sp, #4]
00607914  b4 98 ff eb                                      bl #0x5edbec
00607918  ef ff ff ea                                      b #0x6078dc

; FUNCTION 0x00607a2c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::IImageLoader::ITextureDataLoading
; alias: _ZN6glitch5video12IImageLoader19ITextureDataLoadingD0Ev
; demangled: glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading()
; decoder-mode: arm
00607a2c  10 40 2d e9                                      push {r4, lr}
00607a30  00 40 a0 e1                                      mov r4, r0
00607a34  31 ff ff eb                                      bl #0x607700
00607a38  04 00 a0 e1                                      mov r0, r4
00607a3c  1b 1a f4 eb                                      bl #0x30e2b0
00607a40  04 00 a0 e1                                      mov r0, r4
00607a44  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00607a64, declared_size=696, range_size=696, mode=arm
; class-group: glitch::video::IImageLoader::ITextureDataLoading
; alias: _ZN6glitch5video12IImageLoader19ITextureDataLoading4loadEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERNS0_12_GLOBAL__N_19SLoadInfoE
; demangled: glitch::video::IImageLoader::ITextureDataLoading::load(glitch::io::IReadFile*, glitch::video::IImageLoader::IDataInfo const&, glitch::video::STextureDesc const&, glitch::video::(anonymous namespace)::SLoadInfo&)
; decoder-mode: arm
00607a64  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00607a68  3c d0 4d e2                                      sub sp, sp, #0x3c
00607a6c  60 c0 9d e5                                      ldr ip, [sp, #0x60]
00607a70  00 40 a0 e1                                      mov r4, r0
00607a74  06 00 80 e9                                      stmib r0, {r1, r2}
00607a78  0c 30 84 e5                                      str r3, [r4, #0xc]
00607a7c  10 c0 80 e5                                      str ip, [r0, #0x10]
00607a80  04 20 9c e5                                      ldr r2, [ip, #4]
00607a84  00 60 9c e5                                      ldr r6, [ip]
00607a88  03 50 a0 e1                                      mov r5, r3
00607a8c  18 20 80 e5                                      str r2, [r0, #0x18]
00607a90  08 30 9c e5                                      ldr r3, [ip, #8]
00607a94  00 00 53 e3                                      cmp r3, #0
00607a98  96 00 00 0a                                      beq #0x607cf8
00607a9c  14 30 80 e5                                      str r3, [r0, #0x14]
00607aa0  00 10 a0 e3                                      mov r1, #0
00607aa4  46 ff ff eb                                      bl #0x6077c4
00607aa8  1c 00 84 e5                                      str r0, [r4, #0x1c]
00607aac  1c 30 d5 e5                                      ldrb r3, [r5, #0x1c]
00607ab0  00 00 53 e3                                      cmp r3, #0
00607ab4  06 00 00 0a                                      beq #0x607ad4
00607ab8  3e 30 d6 e5                                      ldrb r3, [r6, #0x3e]
00607abc  01 00 53 e3                                      cmp r3, #1
00607ac0  6c 00 00 9a                                      bls #0x607c78
00607ac4  3f 20 d6 e5                                      ldrb r2, [r6, #0x3f]
00607ac8  02 00 12 e3                                      tst r2, #2
00607acc  01 30 a0 13                                      movne r3, #1
00607ad0  21 30 c4 e5                                      strb r3, [r4, #0x21]
00607ad4  00 30 94 e5                                      ldr r3, [r4]
00607ad8  04 00 a0 e1                                      mov r0, r4
00607adc  0f e0 a0 e1                                      mov lr, pc
00607ae0  08 f0 93 e5                                      ldr pc, [r3, #8]
00607ae4  00 00 50 e3                                      cmp r0, #0
00607ae8  5f 00 00 0a                                      beq #0x607c6c
00607aec  38 30 96 e5                                      ldr r3, [r6, #0x38]
00607af0  21 a0 d4 e5                                      ldrb sl, [r4, #0x21]
00607af4  3e 20 d6 e5                                      ldrb r2, [r6, #0x3e]
00607af8  03 30 03 e2                                      and r3, r3, #3
00607afc  00 70 a0 e3                                      mov r7, #0
00607b00  02 00 5a e1                                      cmp sl, r2
00607b04  02 a0 a0 21                                      movhs sl, r2
00607b08  02 00 53 e3                                      cmp r3, #2
00607b0c  06 30 a0 03                                      moveq r3, #6
00607b10  01 30 a0 13                                      movne r3, #1
00607b14  34 30 8d e5                                      str r3, [sp, #0x34]
00607b18  30 70 8d e5                                      str r7, [sp, #0x30]
00607b1c  07 80 a0 e1                                      mov r8, r7
00607b20  00 00 5a e3                                      cmp sl, #0
00607b24  00 50 a0 13                                      movne r5, #0
00607b28  05 70 a0 11                                      movne r7, r5
00607b2c  47 00 00 0a                                      beq #0x607c50
00607b30  07 20 a0 e1                                      mov r2, r7
00607b34  08 10 a0 e1                                      mov r1, r8
00607b38  00 30 94 e5                                      ldr r3, [r4]
00607b3c  04 00 a0 e1                                      mov r0, r4
00607b40  0f e0 a0 e1                                      mov lr, pc
00607b44  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00607b48  00 00 50 e3                                      cmp r0, #0
00607b4c  38 00 00 0a                                      beq #0x607c34
00607b50  10 30 94 e5                                      ldr r3, [r4, #0x10]
00607b54  07 10 a0 e1                                      mov r1, r7
00607b58  06 00 a0 e1                                      mov r0, r6
00607b5c  0c 30 d3 e5                                      ldrb r3, [r3, #0xc]
00607b60  00 00 53 e3                                      cmp r3, #0
00607b64  32 00 00 0a                                      beq #0x607c34
00607b68  20 30 96 e5                                      ldr r3, [r6, #0x20]
00607b6c  24 b0 96 e5                                      ldr fp, [r6, #0x24]
00607b70  28 70 96 e5                                      ldr r7, [r6, #0x28]
00607b74  53 35 a0 e1                                      asr r3, r3, r5
00607b78  5b b5 a0 e1                                      asr fp, fp, r5
00607b7c  01 00 53 e3                                      cmp r3, #1
00607b80  01 30 a0 b3                                      movlt r3, #1
00607b84  01 00 5b e3                                      cmp fp, #1
00607b88  01 b0 a0 b3                                      movlt fp, #1
00607b8c  37 75 b0 e1                                      lsrs r7, r7, r5
00607b90  1c 30 8d e5                                      str r3, [sp, #0x1c]
00607b94  38 20 96 e5                                      ldr r2, [r6, #0x38]
00607b98  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00607b9c  01 70 a0 03                                      moveq r7, #1
00607ba0  52 22 e5 e7                                      ubfx r2, r2, #4, #6
00607ba4  04 30 93 e5                                      ldr r3, [r3, #4]
00607ba8  20 20 8d e5                                      str r2, [sp, #0x20]
00607bac  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00607bb0  14 90 94 e5                                      ldr sb, [r4, #0x14]
00607bb4  28 20 8d e5                                      str r2, [sp, #0x28]
00607bb8  18 e0 94 e5                                      ldr lr, [r4, #0x18]
00607bbc  18 30 8d e5                                      str r3, [sp, #0x18]
00607bc0  2c e0 8d e5                                      str lr, [sp, #0x2c]
00607bc4  4e 8a ff eb                                      bl #0x5ea504
00607bc8  24 00 8d e5                                      str r0, [sp, #0x24]
00607bcc  08 20 94 e5                                      ldr r2, [r4, #8]
00607bd0  02 00 a0 e1                                      mov r0, r2
00607bd4  00 20 92 e5                                      ldr r2, [r2]
00607bd8  0f e0 a0 e1                                      mov lr, pc
00607bdc  14 f0 92 e5                                      ldr pc, [r2, #0x14]
00607be0  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
00607be4  18 30 9d e5                                      ldr r3, [sp, #0x18]
00607be8  9b 07 0c e0                                      mul ip, fp, r7
00607bec  00 e0 8d e5                                      str lr, [sp]
00607bf0  24 e0 9d e5                                      ldr lr, [sp, #0x24]
00607bf4  10 00 8d e5                                      str r0, [sp, #0x10]
00607bf8  09 10 a0 e1                                      mov r1, sb
00607bfc  04 e0 8d e5                                      str lr, [sp, #4]
00607c00  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
00607c04  03 00 a0 e1                                      mov r0, r3
00607c08  28 20 9d e5                                      ldr r2, [sp, #0x28]
00607c0c  20 30 9d e5                                      ldr r3, [sp, #0x20]
00607c10  08 e0 8d e5                                      str lr, [sp, #8]
00607c14  0c c0 8d e5                                      str ip, [sp, #0xc]
00607c18  63 c6 ff eb                                      bl #0x5f95ac
00607c1c  00 00 50 e3                                      cmp r0, #0
00607c20  03 00 00 1a                                      bne #0x607c34
00607c24  01 30 a0 e3                                      mov r3, #1
00607c28  20 30 c4 e5                                      strb r3, [r4, #0x20]
00607c2c  3c d0 8d e2                                      add sp, sp, #0x3c
00607c30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00607c34  20 30 d4 e5                                      ldrb r3, [r4, #0x20]
00607c38  01 50 85 e2                                      add r5, r5, #1
00607c3c  75 70 ef e6                                      uxtb r7, r5
00607c40  00 00 53 e3                                      cmp r3, #0
00607c44  32 00 00 1a                                      bne #0x607d14
00607c48  07 00 5a e1                                      cmp sl, r7
00607c4c  b7 ff ff 8a                                      bhi #0x607b30
00607c50  30 20 9d e5                                      ldr r2, [sp, #0x30]
00607c54  34 30 9d e5                                      ldr r3, [sp, #0x34]
00607c58  01 20 82 e2                                      add r2, r2, #1
00607c5c  03 00 52 e1                                      cmp r2, r3
00607c60  30 20 8d e5                                      str r2, [sp, #0x30]
00607c64  02 80 a0 b1                                      movlt r8, r2
00607c68  ac ff ff ba                                      blt #0x607b20
00607c6c  20 00 d4 e5                                      ldrb r0, [r4, #0x20]
00607c70  01 00 20 e2                                      eor r0, r0, #1
00607c74  ec ff ff ea                                      b #0x607c2c
00607c78  20 30 96 e5                                      ldr r3, [r6, #0x20]
00607c7c  00 00 53 e3                                      cmp r3, #0
00607c80  00 20 e0 03                                      mvneq r2, #0
00607c84  03 00 00 0a                                      beq #0x607c98
00607c88  00 20 e0 e3                                      mvn r2, #0
00607c8c  c3 30 b0 e1                                      asrs r3, r3, #1
00607c90  01 20 82 e2                                      add r2, r2, #1
00607c94  fc ff ff 1a                                      bne #0x607c8c
00607c98  24 30 96 e5                                      ldr r3, [r6, #0x24]
00607c9c  00 00 53 e3                                      cmp r3, #0
00607ca0  00 10 e0 03                                      mvneq r1, #0
00607ca4  03 00 00 0a                                      beq #0x607cb8
00607ca8  00 10 e0 e3                                      mvn r1, #0
00607cac  c3 30 b0 e1                                      asrs r3, r3, #1
00607cb0  01 10 81 e2                                      add r1, r1, #1
00607cb4  fc ff ff 1a                                      bne #0x607cac
00607cb8  28 30 96 e5                                      ldr r3, [r6, #0x28]
00607cbc  00 00 53 e3                                      cmp r3, #0
00607cc0  00 00 e0 03                                      mvneq r0, #0
00607cc4  03 00 00 0a                                      beq #0x607cd8
00607cc8  00 00 e0 e3                                      mvn r0, #0
00607ccc  a3 30 b0 e1                                      lsrs r3, r3, #1
00607cd0  01 00 80 e2                                      add r0, r0, #1
00607cd4  fc ff ff 1a                                      bne #0x607ccc
00607cd8  02 00 51 e1                                      cmp r1, r2
00607cdc  01 20 a0 a1                                      movge r2, r1
00607ce0  02 20 a0 b1                                      movlt r2, r2
00607ce4  00 00 52 e1                                      cmp r2, r0
00607ce8  00 20 a0 b1                                      movlt r2, r0
00607cec  01 20 82 e2                                      add r2, r2, #1
00607cf0  21 20 c4 e5                                      strb r2, [r4, #0x21]
00607cf4  76 ff ff ea                                      b #0x607ad4
00607cf8  14 20 80 e5                                      str r2, [r0, #0x14]
00607cfc  38 00 96 e5                                      ldr r0, [r6, #0x38]
00607d00  20 10 96 e5                                      ldr r1, [r6, #0x20]
00607d04  50 02 e5 e7                                      ubfx r0, r0, #4, #6
00607d08  77 97 ff eb                                      bl #0x5edaec
00607d0c  1c 00 84 e5                                      str r0, [r4, #0x1c]
00607d10  65 ff ff ea                                      b #0x607aac
00607d14  00 00 a0 e3                                      mov r0, #0
00607d18  c3 ff ff ea                                      b #0x607c2c

; FUNCTION 0x00607d1c, declared_size=196, range_size=196, mode=arm
; class-group: glitch::video::IImageLoader::ITextureDataLoading
; alias: _ZN6glitch5video12IImageLoader19ITextureDataLoading4readEPvj
; demangled: glitch::video::IImageLoader::ITextureDataLoading::read(void*, unsigned int)
; decoder-mode: arm
00607d1c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00607d20  04 30 90 e5                                      ldr r3, [r0, #4]
00607d24  0c d0 4d e2                                      sub sp, sp, #0xc
00607d28  00 50 a0 e1                                      mov r5, r0
00607d2c  03 00 a0 e1                                      mov r0, r3
00607d30  00 30 93 e5                                      ldr r3, [r3]
00607d34  02 60 a0 e1                                      mov r6, r2
00607d38  01 40 a0 e1                                      mov r4, r1
00607d3c  0f e0 a0 e1                                      mov lr, pc
00607d40  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00607d44  06 00 50 e1                                      cmp r0, r6
00607d48  00 70 a0 e1                                      mov r7, r0
00607d4c  14 00 00 1a                                      bne #0x607da4
00607d50  10 30 95 e5                                      ldr r3, [r5, #0x10]
00607d54  0d 30 d3 e5                                      ldrb r3, [r3, #0xd]
00607d58  00 00 53 e3                                      cmp r3, #0
00607d5c  02 00 00 1a                                      bne #0x607d6c
00607d60  01 00 a0 e3                                      mov r0, #1
00607d64  0c d0 8d e2                                      add sp, sp, #0xc
00607d68  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00607d6c  08 30 95 e5                                      ldr r3, [r5, #8]
00607d70  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00607d74  03 00 a0 e1                                      mov r0, r3
00607d78  00 30 93 e5                                      ldr r3, [r3]
00607d7c  04 50 92 e5                                      ldr r5, [r2, #4]
00607d80  0f e0 a0 e1                                      mov lr, pc
00607d84  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00607d88  04 10 a0 e1                                      mov r1, r4
00607d8c  00 30 a0 e1                                      mov r3, r0
00607d90  07 20 a0 e1                                      mov r2, r7
00607d94  05 00 a0 e1                                      mov r0, r5
00607d98  00 40 8d e5                                      str r4, [sp]
00607d9c  fe 97 ff eb                                      bl #0x5edd9c
00607da0  ee ff ff ea                                      b #0x607d60
00607da4  04 30 95 e5                                      ldr r3, [r5, #4]
00607da8  01 20 a0 e3                                      mov r2, #1
00607dac  20 20 c5 e5                                      strb r2, [r5, #0x20]
00607db0  03 00 a0 e1                                      mov r0, r3
00607db4  00 30 93 e5                                      ldr r3, [r3]
00607db8  0f e0 a0 e1                                      mov lr, pc
00607dbc  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00607dc0  14 10 9f e5                                      ldr r1, [pc, #0x14]
00607dc4  00 20 a0 e1                                      mov r2, r0
00607dc8  03 00 a0 e3                                      mov r0, #3
00607dcc  01 10 8f e0                                      add r1, pc, r1
00607dd0  97 0c 00 eb                                      bl #0x60b034
00607dd4  00 00 a0 e3                                      mov r0, #0
00607dd8  e1 ff ff ea                                      b #0x607d64
; mapping-symbol data/literal pool
00607ddc  24 ce 2d 00                                      .byte 0x24, 0xce, 0x2d, 0x00
