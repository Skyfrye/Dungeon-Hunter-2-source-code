; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00606990, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CImageWriterJPG
; alias: _ZN6glitch5video15CImageWriterJPGC2Ev
; demangled: glitch::video::CImageWriterJPG::CImageWriterJPG()
; decoder-mode: arm
00606990  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00606994  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00606998  01 c0 a0 e3                                      mov ip, #1
0060699c  03 30 8f e0                                      add r3, pc, r3
006069a0  02 20 93 e7                                      ldr r2, [r3, r2]
006069a4  04 c0 80 e5                                      str ip, [r0, #4]
006069a8  08 20 82 e2                                      add r2, r2, #8
006069ac  00 20 80 e5                                      str r2, [r0]
006069b0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006069b4  f4 e0 38 00 28 40 00 00                          .byte 0xf4, 0xe0, 0x38, 0x00, 0x28, 0x40, 0x00, 0x00

; FUNCTION 0x006069bc, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CImageWriterJPG
; alias: _ZN6glitch5video15CImageWriterJPGC1Ev
; demangled: glitch::video::CImageWriterJPG::CImageWriterJPG()
; decoder-mode: arm
006069bc  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
006069c0  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
006069c4  01 c0 a0 e3                                      mov ip, #1
006069c8  03 30 8f e0                                      add r3, pc, r3
006069cc  02 20 93 e7                                      ldr r2, [r3, r2]
006069d0  04 c0 80 e5                                      str ip, [r0, #4]
006069d4  08 20 82 e2                                      add r2, r2, #8
006069d8  00 20 80 e5                                      str r2, [r0]
006069dc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006069e0  c8 e0 38 00 28 40 00 00                          .byte 0xc8, 0xe0, 0x38, 0x00, 0x28, 0x40, 0x00, 0x00

; FUNCTION 0x006069e8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CImageWriterJPG
; alias: _ZN6glitch5video15CImageWriterJPGD1Ev
; demangled: glitch::video::CImageWriterJPG::~CImageWriterJPG()
; decoder-mode: arm
006069e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00606a0c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CImageWriterJPG
; alias: _ZN6glitch5video15CImageWriterJPGD0Ev
; demangled: glitch::video::CImageWriterJPG::~CImageWriterJPG()
; decoder-mode: arm
00606a0c  10 40 2d e9                                      push {r4, lr}
00606a10  00 40 a0 e1                                      mov r4, r0
00606a14  25 1e f4 eb                                      bl #0x30e2b0
00606a18  04 00 a0 e1                                      mov r0, r4
00606a1c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00606a34, declared_size=580, range_size=580, mode=arm
; class-group: glitch::video::CImageWriterJPG
; alias: _ZNK6glitch5video15CImageWriterJPG10writeImageEPNS_2io10IWriteFileERKN5boost13intrusive_ptrINS0_6CImageEEEj
; demangled: glitch::video::CImageWriterJPG::writeImage(glitch::io::IWriteFile*, boost::intrusive_ptr<glitch::video::CImage> const&, unsigned int) const
; decoder-mode: arm
00606a34  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00606a38  20 a2 9f e5                                      ldr sl, [pc, #0x220]
00606a3c  20 02 9f e5                                      ldr r0, [pc, #0x220]
00606a40  02 40 a0 e1                                      mov r4, r2
00606a44  0a a0 8f e0                                      add sl, pc, sl
00606a48  00 20 9a e7                                      ldr r2, [sl, r0]
00606a4c  89 df 4d e2                                      sub sp, sp, #0x224
00606a50  1c 00 8d e5                                      str r0, [sp, #0x1c]
00606a54  00 00 92 e5                                      ldr r0, [r2]
00606a58  00 70 94 e5                                      ldr r7, [r4]
00606a5c  04 22 9f e5                                      ldr r2, [pc, #0x204]
00606a60  1c 02 8d e5                                      str r0, [sp, #0x21c]
00606a64  20 90 97 e5                                      ldr sb, [r7, #0x20]
00606a68  03 50 a0 e1                                      mov r5, r3
00606a6c  28 30 a0 e3                                      mov r3, #0x28
00606a70  02 20 9a e7                                      ldr r2, [sl, r2]
00606a74  93 09 03 e0                                      mul r3, r3, sb
00606a78  01 60 a0 e1                                      mov r6, r1
00606a7c  03 30 92 e7                                      ldr r3, [r2, r3]
00606a80  08 00 13 e3                                      tst r3, #8
00606a84  00 b0 a0 13                                      movne fp, #0
00606a88  08 00 00 0a                                      beq #0x606ab0
00606a8c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00606a90  1c 22 9d e5                                      ldr r2, [sp, #0x21c]
00606a94  00 30 9a e7                                      ldr r3, [sl, r0]
00606a98  0b 00 a0 e1                                      mov r0, fp
00606a9c  00 30 93 e5                                      ldr r3, [r3]
00606aa0  03 00 52 e1                                      cmp r2, r3
00606aa4  6c 00 00 1a                                      bne #0x606c5c
00606aa8  89 df 8d e2                                      add sp, sp, #0x224
00606aac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00606ab0  66 0f 8d e2                                      add r0, sp, #0x198
00606ab4  ca e6 01 eb                                      bl #0x6805e4
00606ab8  22 8e 8d e2                                      add r8, sp, #0x220
00606abc  f0 01 28 e5                                      str r0, [r8, #-0x1f0]!
00606ac0  3e 10 a0 e3                                      mov r1, #0x3e
00606ac4  08 00 a0 e1                                      mov r0, r8
00606ac8  5a 2f a0 e3                                      mov r2, #0x168
00606acc  f1 b9 01 eb                                      bl #0x675298
00606ad0  48 10 9d e5                                      ldr r1, [sp, #0x48]
00606ad4  00 00 51 e3                                      cmp r1, #0
00606ad8  57 00 00 0a                                      beq #0x606c3c
00606adc  88 01 9f e5                                      ldr r0, [pc, #0x188]
00606ae0  88 21 9f e5                                      ldr r2, [pc, #0x188]
00606ae4  88 31 9f e5                                      ldr r3, [pc, #0x188]
00606ae8  00 00 8f e0                                      add r0, pc, r0
00606aec  02 20 8f e0                                      add r2, pc, r2
00606af0  03 30 8f e0                                      add r3, pc, r3
00606af4  08 00 81 e5                                      str r0, [r1, #8]
00606af8  0c 20 81 e5                                      str r2, [r1, #0xc]
00606afc  14 60 81 e5                                      str r6, [r1, #0x14]
00606b00  10 30 81 e5                                      str r3, [r1, #0x10]
00606b04  10 30 97 e5                                      ldr r3, [r7, #0x10]
00606b08  03 20 a0 e3                                      mov r2, #3
00606b0c  08 00 a0 e1                                      mov r0, r8
00606b10  4c 30 8d e5                                      str r3, [sp, #0x4c]
00606b14  14 30 97 e5                                      ldr r3, [r7, #0x14]
00606b18  54 20 8d e5                                      str r2, [sp, #0x54]
00606b1c  50 30 8d e5                                      str r3, [sp, #0x50]
00606b20  02 30 a0 e3                                      mov r3, #2
00606b24  58 30 8d e5                                      str r3, [sp, #0x58]
00606b28  bf c4 01 eb                                      bl #0x677e2c
00606b2c  00 00 55 e3                                      cmp r5, #0
00606b30  05 10 a0 11                                      movne r1, r5
00606b34  4b 10 a0 03                                      moveq r1, #0x4b
00606b38  01 20 a0 e3                                      mov r2, #1
00606b3c  08 00 a0 e1                                      mov r0, r8
00606b40  af c4 01 eb                                      bl #0x677e04
00606b44  01 10 a0 e3                                      mov r1, #1
00606b48  08 00 a0 e1                                      mov r0, r8
00606b4c  a5 ba 01 eb                                      bl #0x6755e8
00606b50  10 30 97 e5                                      ldr r3, [r7, #0x10]
00606b54  83 30 83 e0                                      add r3, r3, r3, lsl #1
00606b58  18 30 8d e5                                      str r3, [sp, #0x18]
00606b5c  bc b5 fc eb                                      bl #0x534254
00606b60  20 00 8d e5                                      str r0, [sp, #0x20]
00606b64  01 00 a0 e3                                      mov r0, #1
00606b68  be b5 fc eb                                      bl #0x534268
00606b6c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00606b70  9f b6 fc eb                                      bl #0x5345f4
00606b74  00 b0 50 e2                                      subs fp, r0, #0
00606b78  2c 00 00 0a                                      beq #0x606c30
00606b7c  00 21 9d e5                                      ldr r2, [sp, #0x100]
00606b80  50 10 9d e5                                      ldr r1, [sp, #0x50]
00606b84  00 30 94 e5                                      ldr r3, [r4]
00606b88  2c b0 8d e5                                      str fp, [sp, #0x2c]
00606b8c  02 00 51 e1                                      cmp r1, r2
00606b90  18 50 93 e5                                      ldr r5, [r3, #0x18]
00606b94  08 40 93 e5                                      ldr r4, [r3, #8]
00606b98  1a 00 00 9a                                      bls #0x606c08
00606b9c  2c 30 8d e2                                      add r3, sp, #0x2c
00606ba0  24 a0 8d e5                                      str sl, [sp, #0x24]
00606ba4  01 60 a0 e3                                      mov r6, #1
00606ba8  03 a0 a0 e1                                      mov sl, r3
00606bac  18 20 9d e5                                      ldr r2, [sp, #0x18]
00606bb0  00 b0 8d e5                                      str fp, [sp]
00606bb4  04 10 a0 e1                                      mov r1, r4
00606bb8  04 20 8d e5                                      str r2, [sp, #4]
00606bbc  10 c0 97 e5                                      ldr ip, [r7, #0x10]
00606bc0  0a 30 a0 e3                                      mov r3, #0xa
00606bc4  05 20 a0 e1                                      mov r2, r5
00606bc8  08 c0 8d e5                                      str ip, [sp, #8]
00606bcc  09 00 a0 e1                                      mov r0, sb
00606bd0  00 c0 a0 e3                                      mov ip, #0
00606bd4  10 c0 8d e5                                      str ip, [sp, #0x10]
00606bd8  0c 60 8d e5                                      str r6, [sp, #0xc]
00606bdc  72 ca ff eb                                      bl #0x5f95ac
00606be0  06 20 a0 e1                                      mov r2, r6
00606be4  08 00 a0 e1                                      mov r0, r8
00606be8  0a 10 a0 e1                                      mov r1, sl
00606bec  eb b9 01 eb                                      bl #0x6753a0
00606bf0  50 30 9d e5                                      ldr r3, [sp, #0x50]
00606bf4  00 21 9d e5                                      ldr r2, [sp, #0x100]
00606bf8  05 40 84 e0                                      add r4, r4, r5
00606bfc  03 00 52 e1                                      cmp r2, r3
00606c00  e9 ff ff 3a                                      blo #0x606bac
00606c04  24 a0 9d e5                                      ldr sl, [sp, #0x24]
00606c08  08 00 a0 e1                                      mov r0, r8
00606c0c  3f b9 01 eb                                      bl #0x675110
00606c10  08 00 a0 e1                                      mov r0, r8
00606c14  9e b9 01 eb                                      bl #0x675294
00606c18  0b 00 a0 e1                                      mov r0, fp
00606c1c  99 b6 fc eb                                      bl #0x534688
00606c20  01 b0 a0 e3                                      mov fp, #1
00606c24  20 00 9d e5                                      ldr r0, [sp, #0x20]
00606c28  8e b5 fc eb                                      bl #0x534268
00606c2c  96 ff ff ea                                      b #0x606a8c
00606c30  08 00 a0 e1                                      mov r0, r8
00606c34  96 b9 01 eb                                      bl #0x675294
00606c38  f9 ff ff ea                                      b #0x606c24
00606c3c  08 00 a0 e1                                      mov r0, r8
00606c40  18 20 01 e3                                      movw r2, #0x1018
00606c44  34 30 9d e5                                      ldr r3, [sp, #0x34]
00606c48  0f e0 a0 e1                                      mov lr, pc
00606c4c  00 f0 93 e5                                      ldr pc, [r3]
00606c50  00 10 a0 e1                                      mov r1, r0
00606c54  48 00 8d e5                                      str r0, [sp, #0x48]
00606c58  9f ff ff ea                                      b #0x606adc
00606c5c  ab 1d f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00606c60  4c e0 38 00 ac 40 00 00 34 1f 00 00 c8 fd ff ff  .byte 0x4c, 0xe0, 0x38, 0x00, 0xac, 0x40, 0x00, 0x00, 0x34, 0x1f, 0x00, 0x00, 0xc8, 0xfd, 0xff, 0xff
00606c70  dc fd ff ff 3c fe ff ff                          .byte 0xdc, 0xfd, 0xff, 0xff, 0x3c, 0xfe, 0xff, 0xff

; FUNCTION 0x00606c78, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::CImageWriterJPG
; alias: _ZNK6glitch5video15CImageWriterJPG25isAWriteableFileExtensionEPKc
; demangled: glitch::video::CImageWriterJPG::isAWriteableFileExtension(char const*) const
; decoder-mode: arm
00606c78  10 40 2d e9                                      push {r4, lr}
00606c7c  01 00 a0 e1                                      mov r0, r1
00606c80  2e 10 a0 e3                                      mov r1, #0x2e
00606c84  e6 1d f4 eb                                      bl #0x30e424
00606c88  00 40 50 e2                                      subs r4, r0, #0
00606c8c  19 00 00 0a                                      beq #0x606cf8
00606c90  68 10 9f e5                                      ldr r1, [pc, #0x68]
00606c94  01 10 8f e0                                      add r1, pc, r1
00606c98  9f 1d f4 eb                                      bl #0x30e31c
00606c9c  00 00 50 e3                                      cmp r0, #0
00606ca0  12 00 00 0a                                      beq #0x606cf0
00606ca4  58 10 9f e5                                      ldr r1, [pc, #0x58]
00606ca8  04 00 a0 e1                                      mov r0, r4
00606cac  01 10 8f e0                                      add r1, pc, r1
00606cb0  99 1d f4 eb                                      bl #0x30e31c
00606cb4  00 00 50 e3                                      cmp r0, #0
00606cb8  0c 00 00 0a                                      beq #0x606cf0
00606cbc  44 10 9f e5                                      ldr r1, [pc, #0x44]
00606cc0  04 00 a0 e1                                      mov r0, r4
00606cc4  01 10 8f e0                                      add r1, pc, r1
00606cc8  93 1d f4 eb                                      bl #0x30e31c
00606ccc  00 00 50 e3                                      cmp r0, #0
00606cd0  06 00 00 0a                                      beq #0x606cf0
00606cd4  30 10 9f e5                                      ldr r1, [pc, #0x30]
00606cd8  04 00 a0 e1                                      mov r0, r4
00606cdc  01 10 8f e0                                      add r1, pc, r1
00606ce0  8d 1d f4 eb                                      bl #0x30e31c
00606ce4  01 00 70 e2                                      rsbs r0, r0, #1
00606ce8  00 00 a0 33                                      movlo r0, #0
00606cec  10 80 bd e8                                      pop {r4, pc}
00606cf0  01 00 a0 e3                                      mov r0, #1
00606cf4  10 80 bd e8                                      pop {r4, pc}
00606cf8  04 00 a0 e1                                      mov r0, r4
00606cfc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00606d00  2c db 2d 00 04 de 2d 00 04 db 2d 00 dc dd 2d 00  .byte 0x2c, 0xdb, 0x2d, 0x00, 0x04, 0xde, 0x2d, 0x00, 0x04, 0xdb, 0x2d, 0x00, 0xdc, 0xdd, 0x2d, 0x00
