; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00604a7c, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CImageLoaderJPG
; alias: _ZN6glitch5video15CImageLoaderJPGC2Ev
; demangled: glitch::video::CImageLoaderJPG::CImageLoaderJPG()
; decoder-mode: arm
00604a7c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00604a80  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00604a84  01 c0 a0 e3                                      mov ip, #1
00604a88  03 30 8f e0                                      add r3, pc, r3
00604a8c  02 20 93 e7                                      ldr r2, [r3, r2]
00604a90  04 c0 80 e5                                      str ip, [r0, #4]
00604a94  08 20 82 e2                                      add r2, r2, #8
00604a98  00 20 80 e5                                      str r2, [r0]
00604a9c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00604aa0  08 00 39 00 90 2f 00 00                          .byte 0x08, 0x00, 0x39, 0x00, 0x90, 0x2f, 0x00, 0x00

; FUNCTION 0x00604aa8, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CImageLoaderJPG
; alias: _ZN6glitch5video15CImageLoaderJPGC1Ev
; demangled: glitch::video::CImageLoaderJPG::CImageLoaderJPG()
; decoder-mode: arm
00604aa8  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00604aac  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00604ab0  01 c0 a0 e3                                      mov ip, #1
00604ab4  03 30 8f e0                                      add r3, pc, r3
00604ab8  02 20 93 e7                                      ldr r2, [r3, r2]
00604abc  04 c0 80 e5                                      str ip, [r0, #4]
00604ac0  08 20 82 e2                                      add r2, r2, #8
00604ac4  00 20 80 e5                                      str r2, [r0]
00604ac8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00604acc  dc ff 38 00 90 2f 00 00                          .byte 0xdc, 0xff, 0x38, 0x00, 0x90, 0x2f, 0x00, 0x00

; FUNCTION 0x00604ad4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CImageLoaderJPG
; alias: _ZN6glitch5video15CImageLoaderJPGD2Ev
; demangled: glitch::video::CImageLoaderJPG::~CImageLoaderJPG()
; decoder-mode: arm
00604ad4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00604ad8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CImageLoaderJPG
; alias: _ZN6glitch5video15CImageLoaderJPGD1Ev
; demangled: glitch::video::CImageLoaderJPG::~CImageLoaderJPG()
; decoder-mode: arm
00604ad8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00604adc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CImageLoaderJPG
; alias: _ZN6glitch5video15CImageLoaderJPG11init_sourceEP22jpeg_decompress_struct
; demangled: glitch::video::CImageLoaderJPG::init_source(jpeg_decompress_struct*)
; decoder-mode: arm
00604adc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00604ae0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderJPG
; alias: _ZN6glitch5video15CImageLoaderJPG17fill_input_bufferEP22jpeg_decompress_struct
; demangled: glitch::video::CImageLoaderJPG::fill_input_buffer(jpeg_decompress_struct*)
; decoder-mode: arm
00604ae0  01 00 a0 e3                                      mov r0, #1
00604ae4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00604ae8, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::CImageLoaderJPG
; alias: _ZN6glitch5video15CImageLoaderJPG15skip_input_dataEP22jpeg_decompress_structl
; demangled: glitch::video::CImageLoaderJPG::skip_input_data(jpeg_decompress_struct*, long)
; decoder-mode: arm
00604ae8  00 00 51 e3                                      cmp r1, #0
00604aec  18 30 90 e5                                      ldr r3, [r0, #0x18]
00604af0  1e ff 2f d1                                      bxle lr
00604af4  05 00 93 e8                                      ldm r3, {r0, r2}
00604af8  02 20 61 e0                                      rsb r2, r1, r2
00604afc  01 10 80 e0                                      add r1, r0, r1
00604b00  06 00 83 e8                                      stm r3, {r1, r2}
00604b04  1e ff 2f e1                                      bx lr

; FUNCTION 0x00604b08, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CImageLoaderJPG
; alias: _ZN6glitch5video15CImageLoaderJPG11term_sourceEP22jpeg_decompress_struct
; demangled: glitch::video::CImageLoaderJPG::term_source(jpeg_decompress_struct*)
; decoder-mode: arm
00604b08  1e ff 2f e1                                      bx lr

; FUNCTION 0x00604b0c, declared_size=148, range_size=148, mode=arm
; class-group: glitch::video::CImageLoaderJPG
; alias: _ZNK6glitch5video15CImageLoaderJPG21isALoadableFileFormatEPNS_2io9IReadFileE
; demangled: glitch::video::CImageLoaderJPG::isALoadableFileFormat(glitch::io::IReadFile*) const
; decoder-mode: arm
00604b0c  30 40 2d e9                                      push {r4, r5, lr}
00604b10  00 40 51 e2                                      subs r4, r1, #0
00604b14  0c d0 4d e2                                      sub sp, sp, #0xc
00604b18  05 00 00 0a                                      beq #0x604b34
00604b1c  00 30 94 e5                                      ldr r3, [r4]
00604b20  04 00 a0 e1                                      mov r0, r4
00604b24  0f e0 a0 e1                                      mov lr, pc
00604b28  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00604b2c  05 00 50 e3                                      cmp r0, #5
00604b30  02 00 00 ca                                      bgt #0x604b40
00604b34  00 00 a0 e3                                      mov r0, #0
00604b38  0c d0 8d e2                                      add sp, sp, #0xc
00604b3c  30 80 bd e8                                      pop {r4, r5, pc}
00604b40  00 20 a0 e3                                      mov r2, #0
00604b44  08 50 8d e2                                      add r5, sp, #8
00604b48  04 20 25 e5                                      str r2, [r5, #-4]!
00604b4c  06 10 a0 e3                                      mov r1, #6
00604b50  00 30 94 e5                                      ldr r3, [r4]
00604b54  04 00 a0 e1                                      mov r0, r4
00604b58  0f e0 a0 e1                                      mov lr, pc
00604b5c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00604b60  00 30 94 e5                                      ldr r3, [r4]
00604b64  04 20 a0 e3                                      mov r2, #4
00604b68  04 00 a0 e1                                      mov r0, r4
00604b6c  05 10 a0 e1                                      mov r1, r5
00604b70  0f e0 a0 e1                                      mov lr, pc
00604b74  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00604b78  04 00 9d e5                                      ldr r0, [sp, #4]
00604b7c  4a 26 04 e3                                      movw r2, #0x464a
00604b80  46 39 04 e3                                      movw r3, #0x4946
00604b84  49 26 44 e3                                      movt r2, #0x4649
00604b88  46 3a 44 e3                                      movt r3, #0x4a46
00604b8c  03 00 50 e1                                      cmp r0, r3
00604b90  02 00 50 11                                      cmpne r0, r2
00604b94  00 00 a0 13                                      movne r0, #0
00604b98  01 00 a0 03                                      moveq r0, #1
00604b9c  e5 ff ff ea                                      b #0x604b38

; FUNCTION 0x00604be0, declared_size=760, range_size=760, mode=arm
; class-group: glitch::video::CImageLoaderJPG
; alias: _ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE
; demangled: glitch::video::CImageLoaderJPG::loadImage(glitch::io::IReadFile*) const
; decoder-mode: arm
00604be0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00604be4  c8 12 9f e5                                      ldr r1, [pc, #0x2c8]
00604be8  c8 32 9f e5                                      ldr r3, [pc, #0x2c8]
00604bec  df df 4d e2                                      sub sp, sp, #0x37c
00604bf0  01 10 8f e0                                      add r1, pc, r1
00604bf4  0c 20 8d e5                                      str r2, [sp, #0xc]
00604bf8  03 20 91 e7                                      ldr r2, [r1, r3]
00604bfc  14 00 8d e5                                      str r0, [sp, #0x14]
00604c00  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00604c04  00 20 92 e5                                      ldr r2, [r2]
00604c08  08 10 8d e5                                      str r1, [sp, #8]
00604c0c  00 30 90 e5                                      ldr r3, [r0]
00604c10  74 23 8d e5                                      str r2, [sp, #0x374]
00604c14  0f e0 a0 e1                                      mov lr, pc
00604c18  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00604c1c  00 10 a0 e3                                      mov r1, #0
00604c20  60 bd fc eb                                      bl #0x5341a8
00604c24  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00604c28  10 00 8d e5                                      str r0, [sp, #0x10]
00604c2c  1f 4e 8d e2                                      add r4, sp, #0x1f0
00604c30  00 30 91 e5                                      ldr r3, [r1]
00604c34  01 00 a0 e1                                      mov r0, r1
00604c38  0c 50 93 e5                                      ldr r5, [r3, #0xc]
00604c3c  0f e0 a0 e1                                      mov lr, pc
00604c40  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00604c44  10 10 9d e5                                      ldr r1, [sp, #0x10]
00604c48  00 20 a0 e1                                      mov r2, r0
00604c4c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00604c50  35 ff 2f e1                                      blx r5
00604c54  04 00 a0 e1                                      mov r0, r4
00604c58  61 ee 01 eb                                      bl #0x6805e4
00604c5c  58 22 9f e5                                      ldr r2, [pc, #0x258]
00604c60  40 00 8d e5                                      str r0, [sp, #0x40]
00604c64  00 30 a0 e1                                      mov r3, r0
00604c68  08 00 9d e5                                      ldr r0, [sp, #8]
00604c6c  02 10 90 e7                                      ldr r1, [r0, r2]
00604c70  48 22 9f e5                                      ldr r2, [pc, #0x248]
00604c74  00 10 83 e5                                      str r1, [r3]
00604c78  02 20 90 e7                                      ldr r2, [r0, r2]
00604c7c  40 30 9d e5                                      ldr r3, [sp, #0x40]
00604c80  84 00 84 e2                                      add r0, r4, #0x84
00604c84  08 20 83 e5                                      str r2, [r3, #8]
00604c88  92 27 f4 eb                                      bl #0x30ead8
00604c8c  00 50 50 e2                                      subs r5, r0, #0
00604c90  17 00 00 0a                                      beq #0x604cf4
00604c94  40 00 8d e2                                      add r0, sp, #0x40
00604c98  c1 d6 01 eb                                      bl #0x67a7a4
00604c9c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00604ca0  00 40 a0 e3                                      mov r4, #0
00604ca4  00 40 81 e5                                      str r4, [r1]
00604ca8  10 30 9d e5                                      ldr r3, [sp, #0x10]
00604cac  00 00 53 e3                                      cmp r3, #0
00604cb0  01 00 00 0a                                      beq #0x604cbc
00604cb4  03 00 a0 e1                                      mov r0, r3
00604cb8  fe 24 f4 eb                                      bl #0x30e0b8
00604cbc  00 00 54 e3                                      cmp r4, #0
00604cc0  01 00 00 0a                                      beq #0x604ccc
00604cc4  04 00 a0 e1                                      mov r0, r4
00604cc8  fa 24 f4 eb                                      bl #0x30e0b8
00604ccc  e4 31 9f e5                                      ldr r3, [pc, #0x1e4]
00604cd0  08 10 9d e5                                      ldr r1, [sp, #8]
00604cd4  74 23 9d e5                                      ldr r2, [sp, #0x374]
00604cd8  14 00 9d e5                                      ldr r0, [sp, #0x14]
00604cdc  03 30 91 e7                                      ldr r3, [r1, r3]
00604ce0  00 30 93 e5                                      ldr r3, [r3]
00604ce4  03 00 52 e1                                      cmp r2, r3
00604ce8  70 00 00 1a                                      bne #0x604eb0
00604cec  df df 8d e2                                      add sp, sp, #0x37c
00604cf0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00604cf4  40 40 8d e2                                      add r4, sp, #0x40
00604cf8  1b 2e a0 e3                                      mov r2, #0x1b0
00604cfc  3e 10 a0 e3                                      mov r1, #0x3e
00604d00  04 00 a0 e1                                      mov r0, r4
00604d04  a7 d6 01 eb                                      bl #0x67a7a8
00604d08  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00604d0c  00 30 90 e5                                      ldr r3, [r0]
00604d10  0f e0 a0 e1                                      mov lr, pc
00604d14  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00604d18  08 20 9d e5                                      ldr r2, [sp, #8]
00604d1c  a0 31 9f e5                                      ldr r3, [pc, #0x1a0]
00604d20  08 10 9d e5                                      ldr r1, [sp, #8]
00604d24  20 00 8d e5                                      str r0, [sp, #0x20]
00604d28  03 60 92 e7                                      ldr r6, [r2, r3]
00604d2c  94 31 9f e5                                      ldr r3, [pc, #0x194]
00604d30  10 00 9d e5                                      ldr r0, [sp, #0x10]
00604d34  24 60 8d e5                                      str r6, [sp, #0x24]
00604d38  03 e0 92 e7                                      ldr lr, [r2, r3]
00604d3c  88 31 9f e5                                      ldr r3, [pc, #0x188]
00604d40  28 e0 8d e5                                      str lr, [sp, #0x28]
00604d44  03 c0 92 e7                                      ldr ip, [r2, r3]
00604d48  80 31 9f e5                                      ldr r3, [pc, #0x180]
00604d4c  2c c0 8d e5                                      str ip, [sp, #0x2c]
00604d50  03 20 92 e7                                      ldr r2, [r2, r3]
00604d54  78 31 9f e5                                      ldr r3, [pc, #0x178]
00604d58  30 20 8d e5                                      str r2, [sp, #0x30]
00604d5c  03 70 91 e7                                      ldr r7, [r1, r3]
00604d60  de 3f 8d e2                                      add r3, sp, #0x378
00604d64  5c 03 23 e5                                      str r0, [r3, #-0x35c]!
00604d68  01 10 a0 e3                                      mov r1, #1
00604d6c  04 00 a0 e1                                      mov r0, r4
00604d70  58 30 8d e5                                      str r3, [sp, #0x58]
00604d74  34 70 8d e5                                      str r7, [sp, #0x34]
00604d78  63 d6 01 eb                                      bl #0x67a70c
00604d7c  02 30 a0 e3                                      mov r3, #2
00604d80  04 00 a0 e1                                      mov r0, r4
00604d84  6c 30 8d e5                                      str r3, [sp, #0x6c]
00604d88  03 30 a0 e3                                      mov r3, #3
00604d8c  a4 30 8d e5                                      str r3, [sp, #0xa4]
00604d90  88 50 cd e5                                      strb r5, [sp, #0x88]
00604d94  d6 d7 01 eb                                      bl #0x67acf4
00604d98  5c 80 9d e5                                      ldr r8, [sp, #0x5c]
00604d9c  a4 70 9d e5                                      ldr r7, [sp, #0xa4]
00604da0  60 60 9d e5                                      ldr r6, [sp, #0x60]
00604da4  05 10 a0 e1                                      mov r1, r5
00604da8  98 07 07 e0                                      mul r7, r8, r7
00604dac  77 70 ff e6                                      uxth r7, r7
00604db0  96 07 00 e0                                      mul r0, r6, r7
00604db4  fb bc fc eb                                      bl #0x5341a8
00604db8  05 10 a0 e1                                      mov r1, r5
00604dbc  00 a0 a0 e1                                      mov sl, r0
00604dc0  06 01 a0 e1                                      lsl r0, r6, #2
00604dc4  f7 bc fc eb                                      bl #0x5341a8
00604dc8  00 00 56 e3                                      cmp r6, #0
00604dcc  00 40 a0 e1                                      mov r4, r0
00604dd0  05 00 00 0a                                      beq #0x604dec
00604dd4  0a 30 a0 e1                                      mov r3, sl
00604dd8  05 31 84 e7                                      str r3, [r4, r5, lsl #2]
00604ddc  01 50 85 e2                                      add r5, r5, #1
00604de0  06 00 55 e1                                      cmp r5, r6
00604de4  07 30 83 e0                                      add r3, r3, r7
00604de8  fa ff ff 1a                                      bne #0x604dd8
00604dec  a0 20 9d e5                                      ldr r2, [sp, #0xa0]
00604df0  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
00604df4  03 00 52 e1                                      cmp r2, r3
00604df8  0a 00 00 9a                                      bls #0x604e28
00604dfc  00 50 a0 e3                                      mov r5, #0
00604e00  40 70 8d e2                                      add r7, sp, #0x40
00604e04  02 20 65 e0                                      rsb r2, r5, r2
00604e08  05 11 84 e0                                      add r1, r4, r5, lsl #2
00604e0c  07 00 a0 e1                                      mov r0, r7
00604e10  eb d6 01 eb                                      bl #0x67a9c4
00604e14  a0 20 9d e5                                      ldr r2, [sp, #0xa0]
00604e18  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
00604e1c  00 50 85 e0                                      add r5, r5, r0
00604e20  02 00 53 e1                                      cmp r3, r2
00604e24  f6 ff ff 3a                                      blo #0x604e04
00604e28  40 50 8d e2                                      add r5, sp, #0x40
00604e2c  05 00 a0 e1                                      mov r0, r5
00604e30  f4 d5 01 eb                                      bl #0x67a608
00604e34  05 00 a0 e1                                      mov r0, r5
00604e38  59 d6 01 eb                                      bl #0x67a7a4
00604e3c  00 10 a0 e3                                      mov r1, #0
00604e40  2c 00 a0 e3                                      mov r0, #0x2c
00604e44  38 80 8d e5                                      str r8, [sp, #0x38]
00604e48  3c 60 8d e5                                      str r6, [sp, #0x3c]
00604e4c  d6 bc fc eb                                      bl #0x5341ac
00604e50  01 c0 a0 e3                                      mov ip, #1
00604e54  00 50 a0 e1                                      mov r5, r0
00604e58  0a 30 a0 e1                                      mov r3, sl
00604e5c  0a 10 a0 e3                                      mov r1, #0xa
00604e60  38 20 8d e2                                      add r2, sp, #0x38
00604e64  04 c0 8d e5                                      str ip, [sp, #4]
00604e68  00 c0 8d e5                                      str ip, [sp]
00604e6c  ff f5 ff eb                                      bl #0x602670
00604e70  00 00 55 e3                                      cmp r5, #0
00604e74  0a 00 00 0a                                      beq #0x604ea4
00604e78  04 30 95 e5                                      ldr r3, [r5, #4]
00604e7c  05 00 a0 e1                                      mov r0, r5
00604e80  01 30 83 e2                                      add r3, r3, #1
00604e84  04 30 85 e5                                      str r3, [r5, #4]
00604e88  14 10 9d e5                                      ldr r1, [sp, #0x14]
00604e8c  00 50 81 e5                                      str r5, [r1]
00604e90  04 30 95 e5                                      ldr r3, [r5, #4]
00604e94  01 30 83 e2                                      add r3, r3, #1
00604e98  04 30 85 e5                                      str r3, [r5, #4]
00604e9c  b8 61 f4 eb                                      bl #0x31d584
00604ea0  80 ff ff ea                                      b #0x604ca8
00604ea4  14 20 9d e5                                      ldr r2, [sp, #0x14]
00604ea8  00 50 82 e5                                      str r5, [r2]
00604eac  7d ff ff ea                                      b #0x604ca8
00604eb0  16 25 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00604eb4  a0 fe 38 00 ac 40 00 00 2c 2f 00 00 c8 19 00 00  .byte 0xa0, 0xfe, 0x38, 0x00, 0xac, 0x40, 0x00, 0x00, 0x2c, 0x2f, 0x00, 0x00, 0xc8, 0x19, 0x00, 0x00
00604ec4  30 42 00 00 b0 44 00 00 9c 0a 00 00 50 09 00 00  .byte 0x30, 0x42, 0x00, 0x00, 0xb0, 0x44, 0x00, 0x00, 0x9c, 0x0a, 0x00, 0x00, 0x50, 0x09, 0x00, 0x00
00604ed4  98 17 00 00                                      .byte 0x98, 0x17, 0x00, 0x00

; FUNCTION 0x00604ed8, declared_size=112, range_size=112, mode=arm
; class-group: glitch::video::CImageLoaderJPG
; alias: _ZN6glitch5video15CImageLoaderJPG14output_messageEP18jpeg_common_struct
; demangled: glitch::video::CImageLoaderJPG::output_message(jpeg_common_struct*)
; decoder-mode: arm
00604ed8  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00604edc  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00604ee0  30 40 2d e9                                      push {r4, r5, lr}
00604ee4  03 30 8f e0                                      add r3, pc, r3
00604ee8  02 40 93 e7                                      ldr r4, [r3, r2]
00604eec  d4 d0 4d e2                                      sub sp, sp, #0xd4
00604ef0  04 50 8d e2                                      add r5, sp, #4
00604ef4  00 30 94 e5                                      ldr r3, [r4]
00604ef8  05 10 a0 e1                                      mov r1, r5
00604efc  cc 30 8d e5                                      str r3, [sp, #0xcc]
00604f00  00 30 90 e5                                      ldr r3, [r0]
00604f04  0f e0 a0 e1                                      mov lr, pc
00604f08  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00604f0c  30 00 9f e5                                      ldr r0, [pc, #0x30]
00604f10  03 20 a0 e3                                      mov r2, #3
00604f14  05 10 a0 e1                                      mov r1, r5
00604f18  00 00 8f e0                                      add r0, pc, r0
00604f1c  71 17 00 eb                                      bl #0x60ace8
00604f20  cc 20 9d e5                                      ldr r2, [sp, #0xcc]
00604f24  00 30 94 e5                                      ldr r3, [r4]
00604f28  03 00 52 e1                                      cmp r2, r3
00604f2c  01 00 00 1a                                      bne #0x604f38
00604f30  d4 d0 8d e2                                      add sp, sp, #0xd4
00604f34  30 80 bd e8                                      pop {r4, r5, pc}
00604f38  f4 24 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00604f3c  ac fb 38 00 ac 40 00 00 90 f8 2d 00              .byte 0xac, 0xfb, 0x38, 0x00, 0xac, 0x40, 0x00, 0x00, 0x90, 0xf8, 0x2d, 0x00

; FUNCTION 0x00604f48, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::CImageLoaderJPG
; alias: _ZN6glitch5video15CImageLoaderJPG10error_exitEP18jpeg_common_struct
; demangled: glitch::video::CImageLoaderJPG::error_exit(jpeg_common_struct*)
; decoder-mode: arm
00604f48  10 40 2d e9                                      push {r4, lr}
00604f4c  00 40 a0 e1                                      mov r4, r0
00604f50  00 30 90 e5                                      ldr r3, [r0]
00604f54  0f e0 a0 e1                                      mov lr, pc
00604f58  08 f0 93 e5                                      ldr pc, [r3, #8]
00604f5c  00 00 94 e5                                      ldr r0, [r4]
00604f60  01 10 a0 e3                                      mov r1, #1
00604f64  84 00 80 e2                                      add r0, r0, #0x84
00604f68  81 25 f4 eb                                      bl #0x30e574

; FUNCTION 0x00604f6c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CImageLoaderJPG
; alias: _ZNK6glitch5video15CImageLoaderJPG24isALoadableFileExtensionEPKc
; demangled: glitch::video::CImageLoaderJPG::isALoadableFileExtension(char const*) const
; decoder-mode: arm
00604f6c  10 40 2d e9                                      push {r4, lr}
00604f70  01 00 a0 e1                                      mov r0, r1
00604f74  01 40 a0 e1                                      mov r4, r1
00604f78  30 10 9f e5                                      ldr r1, [pc, #0x30]
00604f7c  01 10 8f e0                                      add r1, pc, r1
00604f80  13 27 f4 eb                                      bl #0x30ebd4
00604f84  00 00 50 e3                                      cmp r0, #0
00604f88  01 00 00 0a                                      beq #0x604f94
00604f8c  01 00 a0 e3                                      mov r0, #1
00604f90  10 80 bd e8                                      pop {r4, pc}
00604f94  18 10 9f e5                                      ldr r1, [pc, #0x18]
00604f98  04 00 a0 e1                                      mov r0, r4
00604f9c  01 10 8f e0                                      add r1, pc, r1
00604fa0  0b 27 f4 eb                                      bl #0x30ebd4
00604fa4  00 00 50 e2                                      subs r0, r0, #0
00604fa8  01 00 a0 13                                      movne r0, #1
00604fac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00604fb0  44 f8 2d 00 2c f8 2d 00                          .byte 0x44, 0xf8, 0x2d, 0x00, 0x2c, 0xf8, 0x2d, 0x00

; FUNCTION 0x00604fb8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CImageLoaderJPG
; alias: _ZN6glitch5video15CImageLoaderJPGD0Ev
; demangled: glitch::video::CImageLoaderJPG::~CImageLoaderJPG()
; decoder-mode: arm
00604fb8  10 40 2d e9                                      push {r4, lr}
00604fbc  00 40 a0 e1                                      mov r4, r0
00604fc0  c4 fe ff eb                                      bl #0x604ad8
00604fc4  04 00 a0 e1                                      mov r0, r4
00604fc8  b8 24 f4 eb                                      bl #0x30e2b0
00604fcc  04 00 a0 e1                                      mov r0, r4
00604fd0  10 80 bd e8                                      pop {r4, pc}
