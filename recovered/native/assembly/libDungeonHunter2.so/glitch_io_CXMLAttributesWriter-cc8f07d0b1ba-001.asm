; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00571b00, declared_size=72, range_size=72, mode=arm
; class-group: glitch::io::CXMLAttributesWriter
; alias: _ZN6glitch2io20CXMLAttributesWriterC2EPNS0_10IXMLWriterEbPKw
; demangled: glitch::io::CXMLAttributesWriter::CXMLAttributesWriter(glitch::io::IXMLWriter*, bool, wchar_t const*)
; decoder-mode: arm
00571b00  38 c0 9f e5                                      ldr ip, [pc, #0x38]
00571b04  30 00 2d e9                                      push {r4, r5}
00571b08  34 40 9f e5                                      ldr r4, [pc, #0x34]
00571b0c  0c c0 8f e0                                      add ip, pc, ip
00571b10  0c 30 80 e5                                      str r3, [r0, #0xc]
00571b14  04 40 9c e7                                      ldr r4, [ip, r4]
00571b18  08 20 c0 e5                                      strb r2, [r0, #8]
00571b1c  04 10 80 e5                                      str r1, [r0, #4]
00571b20  08 40 84 e2                                      add r4, r4, #8
00571b24  00 40 80 e5                                      str r4, [r0]
00571b28  04 30 91 e5                                      ldr r3, [r1, #4]
00571b2c  00 50 a0 e1                                      mov r5, r0
00571b30  01 30 83 e2                                      add r3, r3, #1
00571b34  04 30 81 e5                                      str r3, [r1, #4]
00571b38  30 00 bd e8                                      pop {r4, r5}
00571b3c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00571b40  84 2f 42 00 0c 1f 00 00                          .byte 0x84, 0x2f, 0x42, 0x00, 0x0c, 0x1f, 0x00, 0x00

; FUNCTION 0x00571b48, declared_size=72, range_size=72, mode=arm
; class-group: glitch::io::CXMLAttributesWriter
; alias: _ZN6glitch2io20CXMLAttributesWriterC1EPNS0_10IXMLWriterEbPKw
; demangled: glitch::io::CXMLAttributesWriter::CXMLAttributesWriter(glitch::io::IXMLWriter*, bool, wchar_t const*)
; decoder-mode: arm
00571b48  38 c0 9f e5                                      ldr ip, [pc, #0x38]
00571b4c  30 00 2d e9                                      push {r4, r5}
00571b50  34 40 9f e5                                      ldr r4, [pc, #0x34]
00571b54  0c c0 8f e0                                      add ip, pc, ip
00571b58  0c 30 80 e5                                      str r3, [r0, #0xc]
00571b5c  04 40 9c e7                                      ldr r4, [ip, r4]
00571b60  08 20 c0 e5                                      strb r2, [r0, #8]
00571b64  04 10 80 e5                                      str r1, [r0, #4]
00571b68  08 40 84 e2                                      add r4, r4, #8
00571b6c  00 40 80 e5                                      str r4, [r0]
00571b70  04 30 91 e5                                      ldr r3, [r1, #4]
00571b74  00 50 a0 e1                                      mov r5, r0
00571b78  01 30 83 e2                                      add r3, r3, #1
00571b7c  04 30 81 e5                                      str r3, [r1, #4]
00571b80  30 00 bd e8                                      pop {r4, r5}
00571b84  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00571b88  3c 2f 42 00 0c 1f 00 00                          .byte 0x3c, 0x2f, 0x42, 0x00, 0x0c, 0x1f, 0x00, 0x00

; FUNCTION 0x00571b90, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CXMLAttributesWriter
; alias: _ZN6glitch2io20CXMLAttributesWriterD2Ev
; demangled: glitch::io::CXMLAttributesWriter::~CXMLAttributesWriter()
; decoder-mode: arm
00571b90  28 30 9f e5                                      ldr r3, [pc, #0x28]
00571b94  28 20 9f e5                                      ldr r2, [pc, #0x28]
00571b98  10 40 2d e9                                      push {r4, lr}
00571b9c  03 30 8f e0                                      add r3, pc, r3
00571ba0  02 20 93 e7                                      ldr r2, [r3, r2]
00571ba4  00 40 a0 e1                                      mov r4, r0
00571ba8  04 00 90 e5                                      ldr r0, [r0, #4]
00571bac  08 20 82 e2                                      add r2, r2, #8
00571bb0  00 20 84 e5                                      str r2, [r4]
00571bb4  72 ae f6 eb                                      bl #0x31d584
00571bb8  04 00 a0 e1                                      mov r0, r4
00571bbc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00571bc0  f4 2e 42 00 0c 1f 00 00                          .byte 0xf4, 0x2e, 0x42, 0x00, 0x0c, 0x1f, 0x00, 0x00

; FUNCTION 0x00571bc8, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CXMLAttributesWriter
; alias: _ZN6glitch2io20CXMLAttributesWriterD1Ev
; demangled: glitch::io::CXMLAttributesWriter::~CXMLAttributesWriter()
; decoder-mode: arm
00571bc8  28 30 9f e5                                      ldr r3, [pc, #0x28]
00571bcc  28 20 9f e5                                      ldr r2, [pc, #0x28]
00571bd0  10 40 2d e9                                      push {r4, lr}
00571bd4  03 30 8f e0                                      add r3, pc, r3
00571bd8  02 20 93 e7                                      ldr r2, [r3, r2]
00571bdc  00 40 a0 e1                                      mov r4, r0
00571be0  04 00 90 e5                                      ldr r0, [r0, #4]
00571be4  08 20 82 e2                                      add r2, r2, #8
00571be8  00 20 84 e5                                      str r2, [r4]
00571bec  64 ae f6 eb                                      bl #0x31d584
00571bf0  04 00 a0 e1                                      mov r0, r4
00571bf4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00571bf8  bc 2e 42 00 0c 1f 00 00                          .byte 0xbc, 0x2e, 0x42, 0x00, 0x0c, 0x1f, 0x00, 0x00

; FUNCTION 0x00571c20, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CXMLAttributesWriter
; alias: _ZN6glitch2io20CXMLAttributesWriterD0Ev
; demangled: glitch::io::CXMLAttributesWriter::~CXMLAttributesWriter()
; decoder-mode: arm
00571c20  10 40 2d e9                                      push {r4, lr}
00571c24  00 40 a0 e1                                      mov r4, r0
00571c28  e6 ff ff eb                                      bl #0x571bc8
00571c2c  04 00 a0 e1                                      mov r0, r4
00571c30  9e 71 f6 eb                                      bl #0x30e2b0
00571c34  04 00 a0 e1                                      mov r0, r4
00571c38  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00571d60, declared_size=1688, range_size=1688, mode=arm
; class-group: glitch::io::CXMLAttributesWriter
; alias: _ZN6glitch2io20CXMLAttributesWriter10writeGroupEPNS0_11IAttributesE
; demangled: glitch::io::CXMLAttributesWriter::writeGroup(glitch::io::IAttributes*)
; decoder-mode: arm
00571d60  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00571d64  e7 df 4d e2                                      sub sp, sp, #0x39c
00571d68  28 00 8d e5                                      str r0, [sp, #0x28]
00571d6c  00 30 91 e5                                      ldr r3, [r1]
00571d70  01 00 a0 e1                                      mov r0, r1
00571d74  01 40 a0 e1                                      mov r4, r1
00571d78  0f e0 a0 e1                                      mov lr, pc
00571d7c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00571d80  14 30 90 e5                                      ldr r3, [r0, #0x14]
00571d84  10 20 90 e5                                      ldr r2, [r0, #0x10]
00571d88  03 00 52 e1                                      cmp r2, r3
00571d8c  39 00 00 0a                                      beq #0x571e78
00571d90  28 30 9d e5                                      ldr r3, [sp, #0x28]
00571d94  04 00 a0 e1                                      mov r0, r4
00571d98  32 5e 8d e2                                      add r5, sp, #0x320
00571d9c  04 a0 93 e5                                      ldr sl, [r3, #4]
00571da0  00 30 94 e5                                      ldr r3, [r4]
00571da4  00 20 9a e5                                      ldr r2, [sl]
00571da8  10 60 92 e5                                      ldr r6, [r2, #0x10]
00571dac  0f e0 a0 e1                                      mov lr, pc
00571db0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00571db4  10 70 90 e5                                      ldr r7, [r0, #0x10]
00571db8  14 80 90 e5                                      ldr r8, [r0, #0x14]
00571dbc  05 00 a0 e1                                      mov r0, r5
00571dc0  60 53 8d e5                                      str r5, [sp, #0x360]
00571dc4  07 70 68 e0                                      rsb r7, r8, r7
00571dc8  01 10 87 e2                                      add r1, r7, #1
00571dcc  64 53 8d e5                                      str r5, [sp, #0x364]
00571dd0  d2 ba f6 eb                                      bl #0x320920
00571dd4  00 00 57 e3                                      cmp r7, #0
00571dd8  64 13 9d e5                                      ldr r1, [sp, #0x364]
00571ddc  00 30 a0 c3                                      movgt r3, #0
00571de0  05 00 00 da                                      ble #0x571dfc
00571de4  d3 20 98 e1                                      ldrsb r2, [r8, r3]
00571de8  03 21 81 e7                                      str r2, [r1, r3, lsl #2]
00571dec  01 30 83 e2                                      add r3, r3, #1
00571df0  07 00 53 e1                                      cmp r3, r7
00571df4  fa ff ff 1a                                      bne #0x571de4
00571df8  03 11 81 e0                                      add r1, r1, r3, lsl #2
00571dfc  00 20 a0 e3                                      mov r2, #0
00571e00  60 13 8d e5                                      str r1, [sp, #0x360]
00571e04  00 20 81 e5                                      str r2, [r1]
00571e08  64 33 9d e5                                      ldr r3, [sp, #0x364]
00571e0c  c4 15 9f e5                                      ldr r1, [pc, #0x5c4]
00571e10  0a 00 a0 e1                                      mov r0, sl
00571e14  00 30 8d e5                                      str r3, [sp]
00571e18  bc 35 9f e5                                      ldr r3, [pc, #0x5bc]
00571e1c  04 20 8d e5                                      str r2, [sp, #4]
00571e20  08 20 8d e5                                      str r2, [sp, #8]
00571e24  0c 20 8d e5                                      str r2, [sp, #0xc]
00571e28  10 20 8d e5                                      str r2, [sp, #0x10]
00571e2c  14 20 8d e5                                      str r2, [sp, #0x14]
00571e30  18 20 8d e5                                      str r2, [sp, #0x18]
00571e34  1c 20 8d e5                                      str r2, [sp, #0x1c]
00571e38  20 20 8d e5                                      str r2, [sp, #0x20]
00571e3c  01 10 8f e0                                      add r1, pc, r1
00571e40  03 30 8f e0                                      add r3, pc, r3
00571e44  36 ff 2f e1                                      blx r6
00571e48  64 03 9d e5                                      ldr r0, [sp, #0x364]
00571e4c  05 00 50 e1                                      cmp r0, r5
00571e50  02 00 00 0a                                      beq #0x571e60
00571e54  00 00 50 e3                                      cmp r0, #0
00571e58  00 00 00 0a                                      beq #0x571e60
00571e5c  7b 79 f6 eb                                      bl #0x310450
00571e60  28 20 9d e5                                      ldr r2, [sp, #0x28]
00571e64  04 30 92 e5                                      ldr r3, [r2, #4]
00571e68  03 00 a0 e1                                      mov r0, r3
00571e6c  00 30 93 e5                                      ldr r3, [r3]
00571e70  0f e0 a0 e1                                      mov lr, pc
00571e74  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00571e78  60 35 9f e5                                      ldr r3, [pc, #0x560]
00571e7c  04 00 a0 e1                                      mov r0, r4
00571e80  00 b0 a0 e3                                      mov fp, #0
00571e84  03 30 8f e0                                      add r3, pc, r3
00571e88  3c 30 8d e5                                      str r3, [sp, #0x3c]
00571e8c  50 35 9f e5                                      ldr r3, [pc, #0x550]
00571e90  03 30 8f e0                                      add r3, pc, r3
00571e94  40 30 8d e5                                      str r3, [sp, #0x40]
00571e98  48 35 9f e5                                      ldr r3, [pc, #0x548]
00571e9c  03 30 8f e0                                      add r3, pc, r3
00571ea0  44 30 8d e5                                      str r3, [sp, #0x44]
00571ea4  40 35 9f e5                                      ldr r3, [pc, #0x540]
00571ea8  03 30 8f e0                                      add r3, pc, r3
00571eac  48 30 8d e5                                      str r3, [sp, #0x48]
00571eb0  38 35 9f e5                                      ldr r3, [pc, #0x538]
00571eb4  4c 30 8d e5                                      str r3, [sp, #0x4c]
00571eb8  00 30 94 e5                                      ldr r3, [r4]
00571ebc  0f e0 a0 e1                                      mov lr, pc
00571ec0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00571ec4  00 00 5b e1                                      cmp fp, r0
00571ec8  dc 00 00 aa                                      bge #0x572240
00571ecc  00 30 94 e5                                      ldr r3, [r4]
00571ed0  04 00 a0 e1                                      mov r0, r4
00571ed4  0b 10 a0 e1                                      mov r1, fp
00571ed8  0f e0 a0 e1                                      mov lr, pc
00571edc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00571ee0  16 00 50 e3                                      cmp r0, #0x16
00571ee4  02 01 00 1a                                      bne #0x5722f4
00571ee8  00 30 a0 e3                                      mov r3, #0
00571eec  da 2f 8d e2                                      add r2, sp, #0x368
00571ef0  34 20 8d e5                                      str r2, [sp, #0x34]
00571ef4  7c 33 8d e5                                      str r3, [sp, #0x37c]
00571ef8  80 33 8d e5                                      str r3, [sp, #0x380]
00571efc  84 33 8d e5                                      str r3, [sp, #0x384]
00571f00  88 33 8d e5                                      str r3, [sp, #0x388]
00571f04  74 33 8d e5                                      str r3, [sp, #0x374]
00571f08  78 33 8d e5                                      str r3, [sp, #0x378]
00571f0c  b6 5f 8d e2                                      add r5, sp, #0x2d8
00571f10  02 00 a0 e1                                      mov r0, r2
00571f14  00 30 94 e5                                      ldr r3, [r4]
00571f18  04 10 a0 e1                                      mov r1, r4
00571f1c  0b 20 a0 e1                                      mov r2, fp
00571f20  0f e0 a0 e1                                      mov lr, pc
00571f24  d0 f0 93 e5                                      ldr pc, [r3, #0xd0]
00571f28  0e 9d 8d e2                                      add sb, sp, #0x380
00571f2c  44 10 9d e5                                      ldr r1, [sp, #0x44]
00571f30  e5 2f 8d e2                                      add r2, sp, #0x394
00571f34  05 00 a0 e1                                      mov r0, r5
00571f38  ef cf f6 eb                                      bl #0x325efc
00571f3c  09 00 a0 e1                                      mov r0, sb
00571f40  05 10 a0 e1                                      mov r1, r5
00571f44  7f 7c ff eb                                      bl #0x551148
00571f48  1c 03 9d e5                                      ldr r0, [sp, #0x31c]
00571f4c  05 00 50 e1                                      cmp r0, r5
00571f50  02 00 00 0a                                      beq #0x571f60
00571f54  00 00 50 e3                                      cmp r0, #0
00571f58  00 00 00 0a                                      beq #0x571f60
00571f5c  3b 79 f6 eb                                      bl #0x310450
00571f60  00 30 94 e5                                      ldr r3, [r4]
00571f64  0b 10 a0 e1                                      mov r1, fp
00571f68  04 00 a0 e1                                      mov r0, r4
00571f6c  0f e0 a0 e1                                      mov lr, pc
00571f70  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00571f74  29 6e 8d e2                                      add r6, sp, #0x290
00571f78  00 10 a0 e1                                      mov r1, r0
00571f7c  dd 5f 8d e2                                      add r5, sp, #0x374
00571f80  06 00 a0 e1                                      mov r0, r6
00571f84  cf d0 f6 eb                                      bl #0x3262c8
00571f88  05 00 a0 e1                                      mov r0, r5
00571f8c  06 10 a0 e1                                      mov r1, r6
00571f90  6c 7c ff eb                                      bl #0x551148
00571f94  d4 02 9d e5                                      ldr r0, [sp, #0x2d4]
00571f98  06 00 50 e1                                      cmp r0, r6
00571f9c  02 00 00 0a                                      beq #0x571fac
00571fa0  00 00 50 e3                                      cmp r0, #0
00571fa4  00 00 00 0a                                      beq #0x571fac
00571fa8  28 79 f6 eb                                      bl #0x310450
00571fac  92 6f 8d e2                                      add r6, sp, #0x248
00571fb0  39 2e 8d e2                                      add r2, sp, #0x390
00571fb4  48 10 9d e5                                      ldr r1, [sp, #0x48]
00571fb8  06 00 a0 e1                                      mov r0, r6
00571fbc  ce cf f6 eb                                      bl #0x325efc
00571fc0  09 00 a0 e1                                      mov r0, sb
00571fc4  06 10 a0 e1                                      mov r1, r6
00571fc8  5e 7c ff eb                                      bl #0x551148
00571fcc  8c 02 9d e5                                      ldr r0, [sp, #0x28c]
00571fd0  06 00 50 e1                                      cmp r0, r6
00571fd4  02 00 00 0a                                      beq #0x571fe4
00571fd8  00 00 50 e3                                      cmp r0, #0
00571fdc  00 00 00 0a                                      beq #0x571fe4
00571fe0  1a 79 f6 eb                                      bl #0x310450
00571fe4  02 3c 8d e2                                      add r3, sp, #0x200
00571fe8  30 30 8d e5                                      str r3, [sp, #0x30]
00571fec  6c 23 9d e5                                      ldr r2, [sp, #0x36c]
00571ff0  68 33 9d e5                                      ldr r3, [sp, #0x368]
00571ff4  6e 6f 8d e2                                      add r6, sp, #0x1b8
00571ff8  30 00 9d e5                                      ldr r0, [sp, #0x30]
00571ffc  02 30 63 e0                                      rsb r3, r3, r2
00572000  c3 31 a0 e1                                      asr r3, r3, #3
00572004  83 21 a0 e1                                      lsl r2, r3, #3
00572008  02 20 63 e0                                      rsb r2, r3, r2
0057200c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00572010  82 21 83 e0                                      add r2, r3, r2, lsl #3
00572014  82 17 a0 e1                                      lsl r1, r2, #0xf
00572018  01 10 62 e0                                      rsb r1, r2, r1
0057201c  81 11 83 e0                                      add r1, r3, r1, lsl #3
00572020  d5 cf f6 eb                                      bl #0x325f7c
00572024  40 22 9d e5                                      ldr r2, [sp, #0x240]
00572028  06 00 a0 e1                                      mov r0, r6
0057202c  44 12 9d e5                                      ldr r1, [sp, #0x244]
00572030  f8 61 8d e5                                      str r6, [sp, #0x1f8]
00572034  fc 61 8d e5                                      str r6, [sp, #0x1fc]
00572038  7b cf f6 eb                                      bl #0x325e2c
0057203c  05 00 a0 e1                                      mov r0, r5
00572040  06 10 a0 e1                                      mov r1, r6
00572044  3f 7c ff eb                                      bl #0x551148
00572048  fc 01 9d e5                                      ldr r0, [sp, #0x1fc]
0057204c  06 00 50 e1                                      cmp r0, r6
00572050  02 00 00 0a                                      beq #0x572060
00572054  00 00 50 e3                                      cmp r0, #0
00572058  00 00 00 0a                                      beq #0x572060
0057205c  fb 78 f6 eb                                      bl #0x310450
00572060  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00572064  17 2e 8d e2                                      add r2, sp, #0x170
00572068  2c 20 8d e5                                      str r2, [sp, #0x2c]
0057206c  03 10 8f e0                                      add r1, pc, r3
00572070  02 00 a0 e1                                      mov r0, r2
00572074  e3 2f 8d e2                                      add r2, sp, #0x38c
00572078  9f cf f6 eb                                      bl #0x325efc
0057207c  6c 23 9d e5                                      ldr r2, [sp, #0x36c]
00572080  68 33 9d e5                                      ldr r3, [sp, #0x368]
00572084  02 30 63 e0                                      rsb r3, r3, r2
00572088  c3 31 a0 e1                                      asr r3, r3, #3
0057208c  83 21 a0 e1                                      lsl r2, r3, #3
00572090  02 20 63 e0                                      rsb r2, r3, r2
00572094  02 23 82 e0                                      add r2, r2, r2, lsl #6
00572098  82 21 83 e0                                      add r2, r3, r2, lsl #3
0057209c  82 17 a0 e1                                      lsl r1, r2, #0xf
005720a0  01 20 62 e0                                      rsb r2, r2, r1
005720a4  82 21 83 e0                                      add r2, r3, r2, lsl #3
005720a8  00 00 52 e3                                      cmp r2, #0
005720ac  33 00 00 0a                                      beq #0x572180
005720b0  38 b0 8d e5                                      str fp, [sp, #0x38]
005720b4  04 b0 a0 e1                                      mov fp, r4
005720b8  2c 40 9d e5                                      ldr r4, [sp, #0x2c]
005720bc  00 70 a0 e3                                      mov r7, #0
005720c0  07 60 a0 e1                                      mov r6, r7
005720c4  4a af 8d e2                                      add sl, sp, #0x128
005720c8  e0 80 8d e2                                      add r8, sp, #0xe0
005720cc  06 10 a0 e1                                      mov r1, r6
005720d0  0a 00 a0 e1                                      mov r0, sl
005720d4  a8 cf f6 eb                                      bl #0x325f7c
005720d8  08 00 a0 e1                                      mov r0, r8
005720dc  04 10 a0 e1                                      mov r1, r4
005720e0  6c 21 9d e5                                      ldr r2, [sp, #0x16c]
005720e4  2f 9b ff eb                                      bl #0x558da8
005720e8  09 00 a0 e1                                      mov r0, sb
005720ec  08 10 a0 e1                                      mov r1, r8
005720f0  14 7c ff eb                                      bl #0x551148
005720f4  24 31 9d e5                                      ldr r3, [sp, #0x124]
005720f8  01 60 86 e2                                      add r6, r6, #1
005720fc  08 00 53 e1                                      cmp r3, r8
00572100  03 00 a0 e1                                      mov r0, r3
00572104  02 00 00 0a                                      beq #0x572114
00572108  00 00 53 e3                                      cmp r3, #0
0057210c  00 00 00 0a                                      beq #0x572114
00572110  ce 78 f6 eb                                      bl #0x310450
00572114  68 13 9d e5                                      ldr r1, [sp, #0x368]
00572118  05 00 a0 e1                                      mov r0, r5
0057211c  07 10 81 e0                                      add r1, r1, r7
00572120  08 7c ff eb                                      bl #0x551148
00572124  6c 31 9d e5                                      ldr r3, [sp, #0x16c]
00572128  48 70 87 e2                                      add r7, r7, #0x48
0057212c  0a 00 53 e1                                      cmp r3, sl
00572130  03 00 a0 e1                                      mov r0, r3
00572134  02 00 00 0a                                      beq #0x572144
00572138  00 00 53 e3                                      cmp r3, #0
0057213c  00 00 00 0a                                      beq #0x572144
00572140  c2 78 f6 eb                                      bl #0x310450
00572144  6c 23 9d e5                                      ldr r2, [sp, #0x36c]
00572148  68 33 9d e5                                      ldr r3, [sp, #0x368]
0057214c  02 30 63 e0                                      rsb r3, r3, r2
00572150  c3 31 a0 e1                                      asr r3, r3, #3
00572154  83 21 a0 e1                                      lsl r2, r3, #3
00572158  02 20 63 e0                                      rsb r2, r3, r2
0057215c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00572160  82 21 83 e0                                      add r2, r3, r2, lsl #3
00572164  82 17 a0 e1                                      lsl r1, r2, #0xf
00572168  01 20 62 e0                                      rsb r2, r2, r1
0057216c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00572170  02 00 56 e1                                      cmp r6, r2
00572174  d4 ff ff 3a                                      blo #0x5720cc
00572178  0b 40 a0 e1                                      mov r4, fp
0057217c  38 b0 9d e5                                      ldr fp, [sp, #0x38]
00572180  28 20 9d e5                                      ldr r2, [sp, #0x28]
00572184  0b 10 a0 e1                                      mov r1, fp
00572188  04 00 a0 e1                                      mov r0, r4
0057218c  04 60 92 e5                                      ldr r6, [r2, #4]
00572190  00 20 94 e5                                      ldr r2, [r4]
00572194  00 30 96 e5                                      ldr r3, [r6]
00572198  14 70 93 e5                                      ldr r7, [r3, #0x14]
0057219c  0f e0 a0 e1                                      mov lr, pc
005721a0  20 f0 92 e5                                      ldr pc, [r2, #0x20]
005721a4  09 30 a0 e1                                      mov r3, sb
005721a8  00 10 a0 e1                                      mov r1, r0
005721ac  00 50 8d e5                                      str r5, [sp]
005721b0  06 00 a0 e1                                      mov r0, r6
005721b4  01 20 a0 e3                                      mov r2, #1
005721b8  37 ff 2f e1                                      blx r7
005721bc  b4 01 9d e5                                      ldr r0, [sp, #0x1b4]
005721c0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005721c4  03 00 50 e1                                      cmp r0, r3
005721c8  02 00 00 0a                                      beq #0x5721d8
005721cc  00 00 50 e3                                      cmp r0, #0
005721d0  00 00 00 0a                                      beq #0x5721d8
005721d4  9d 78 f6 eb                                      bl #0x310450
005721d8  44 02 9d e5                                      ldr r0, [sp, #0x244]
005721dc  30 20 9d e5                                      ldr r2, [sp, #0x30]
005721e0  02 00 50 e1                                      cmp r0, r2
005721e4  02 00 00 0a                                      beq #0x5721f4
005721e8  00 00 50 e3                                      cmp r0, #0
005721ec  00 00 00 0a                                      beq #0x5721f4
005721f0  96 78 f6 eb                                      bl #0x310450
005721f4  34 00 9d e5                                      ldr r0, [sp, #0x34]
005721f8  42 7a ff eb                                      bl #0x550b08
005721fc  05 00 a0 e1                                      mov r0, r5
00572200  40 7a ff eb                                      bl #0x550b08
00572204  09 00 a0 e1                                      mov r0, sb
00572208  3e 7a ff eb                                      bl #0x550b08
0057220c  28 20 9d e5                                      ldr r2, [sp, #0x28]
00572210  01 b0 8b e2                                      add fp, fp, #1
00572214  04 30 92 e5                                      ldr r3, [r2, #4]
00572218  03 00 a0 e1                                      mov r0, r3
0057221c  00 30 93 e5                                      ldr r3, [r3]
00572220  0f e0 a0 e1                                      mov lr, pc
00572224  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00572228  00 30 94 e5                                      ldr r3, [r4]
0057222c  04 00 a0 e1                                      mov r0, r4
00572230  0f e0 a0 e1                                      mov lr, pc
00572234  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00572238  00 00 5b e1                                      cmp fp, r0
0057223c  22 ff ff ba                                      blt #0x571ecc
00572240  00 50 a0 e3                                      mov r5, #0
00572244  28 60 9d e5                                      ldr r6, [sp, #0x28]
00572248  0a 00 00 ea                                      b #0x572278
0057224c  00 30 94 e5                                      ldr r3, [r4]
00572250  0f e0 a0 e1                                      mov lr, pc
00572254  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00572258  06 00 a0 e1                                      mov r0, r6
0057225c  04 10 a0 e1                                      mov r1, r4
00572260  be fe ff eb                                      bl #0x571d60
00572264  00 30 94 e5                                      ldr r3, [r4]
00572268  04 00 a0 e1                                      mov r0, r4
0057226c  0f e0 a0 e1                                      mov lr, pc
00572270  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00572274  01 50 85 e2                                      add r5, r5, #1
00572278  00 30 94 e5                                      ldr r3, [r4]
0057227c  04 00 a0 e1                                      mov r0, r4
00572280  0f e0 a0 e1                                      mov lr, pc
00572284  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00572288  00 00 55 e1                                      cmp r5, r0
0057228c  05 10 a0 e1                                      mov r1, r5
00572290  04 00 a0 e1                                      mov r0, r4
00572294  ec ff ff 3a                                      blo #0x57224c
00572298  00 30 94 e5                                      ldr r3, [r4]
0057229c  0f e0 a0 e1                                      mov lr, pc
005722a0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
005722a4  14 30 90 e5                                      ldr r3, [r0, #0x14]
005722a8  10 20 90 e5                                      ldr r2, [r0, #0x10]
005722ac  03 00 52 e1                                      cmp r2, r3
005722b0  0d 00 00 0a                                      beq #0x5722ec
005722b4  28 20 9d e5                                      ldr r2, [sp, #0x28]
005722b8  34 11 9f e5                                      ldr r1, [pc, #0x134]
005722bc  04 30 92 e5                                      ldr r3, [r2, #4]
005722c0  01 10 8f e0                                      add r1, pc, r1
005722c4  03 00 a0 e1                                      mov r0, r3
005722c8  00 30 93 e5                                      ldr r3, [r3]
005722cc  0f e0 a0 e1                                      mov lr, pc
005722d0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005722d4  28 20 9d e5                                      ldr r2, [sp, #0x28]
005722d8  04 30 92 e5                                      ldr r3, [r2, #4]
005722dc  03 00 a0 e1                                      mov r0, r3
005722e0  00 30 93 e5                                      ldr r3, [r3]
005722e4  0f e0 a0 e1                                      mov lr, pc
005722e8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005722ec  e7 df 8d e2                                      add sp, sp, #0x39c
005722f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005722f4  28 30 9d e5                                      ldr r3, [sp, #0x28]
005722f8  0b 10 a0 e1                                      mov r1, fp
005722fc  04 00 a0 e1                                      mov r0, r4
00572300  04 70 93 e5                                      ldr r7, [r3, #4]
00572304  00 30 94 e5                                      ldr r3, [r4]
00572308  98 60 8d e2                                      add r6, sp, #0x98
0057230c  00 20 97 e5                                      ldr r2, [r7]
00572310  50 50 8d e2                                      add r5, sp, #0x50
00572314  10 90 92 e5                                      ldr sb, [r2, #0x10]
00572318  0f e0 a0 e1                                      mov lr, pc
0057231c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00572320  00 30 94 e5                                      ldr r3, [r4]
00572324  00 a0 a0 e1                                      mov sl, r0
00572328  0b 10 a0 e1                                      mov r1, fp
0057232c  04 00 a0 e1                                      mov r0, r4
00572330  0f e0 a0 e1                                      mov lr, pc
00572334  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00572338  00 10 a0 e1                                      mov r1, r0
0057233c  06 00 a0 e1                                      mov r0, r6
00572340  e0 cf f6 eb                                      bl #0x3262c8
00572344  05 00 a0 e1                                      mov r0, r5
00572348  04 10 a0 e1                                      mov r1, r4
0057234c  0b 20 a0 e1                                      mov r2, fp
00572350  00 30 94 e5                                      ldr r3, [r4]
00572354  dc 80 9d e5                                      ldr r8, [sp, #0xdc]
00572358  0f e0 a0 e1                                      mov lr, pc
0057235c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00572360  94 20 9d e5                                      ldr r2, [sp, #0x94]
00572364  00 30 a0 e3                                      mov r3, #0
00572368  20 30 8d e5                                      str r3, [sp, #0x20]
0057236c  08 20 8d e5                                      str r2, [sp, #8]
00572370  40 20 9d e5                                      ldr r2, [sp, #0x40]
00572374  0c 30 8d e5                                      str r3, [sp, #0xc]
00572378  10 30 8d e5                                      str r3, [sp, #0x10]
0057237c  04 20 8d e5                                      str r2, [sp, #4]
00572380  14 30 8d e5                                      str r3, [sp, #0x14]
00572384  18 30 8d e5                                      str r3, [sp, #0x18]
00572388  1c 30 8d e5                                      str r3, [sp, #0x1c]
0057238c  07 00 a0 e1                                      mov r0, r7
00572390  00 80 8d e5                                      str r8, [sp]
00572394  0a 10 a0 e1                                      mov r1, sl
00572398  01 20 a0 e3                                      mov r2, #1
0057239c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005723a0  39 ff 2f e1                                      blx sb
005723a4  94 00 9d e5                                      ldr r0, [sp, #0x94]
005723a8  05 00 50 e1                                      cmp r0, r5
005723ac  02 00 00 0a                                      beq #0x5723bc
005723b0  00 00 50 e3                                      cmp r0, #0
005723b4  00 00 00 0a                                      beq #0x5723bc
005723b8  24 78 f6 eb                                      bl #0x310450
005723bc  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
005723c0  06 00 50 e1                                      cmp r0, r6
005723c4  90 ff ff 0a                                      beq #0x57220c
005723c8  00 00 50 e3                                      cmp r0, #0
005723cc  8e ff ff 0a                                      beq #0x57220c
005723d0  1e 78 f6 eb                                      bl #0x310450
005723d4  8c ff ff ea                                      b #0x57220c
; mapping-symbol data/literal pool
005723d8  3c cd 34 00 a8 c3 36 00 64 c3 36 00 00 cd 34 00  .byte 0x3c, 0xcd, 0x34, 0x00, 0xa8, 0xc3, 0x36, 0x00, 0x64, 0xc3, 0x36, 0x00, 0x00, 0xcd, 0x34, 0x00
005723e8  4c c3 36 00 00 d1 36 00 24 cb 34 00 b8 c8 34 00  .byte 0x4c, 0xc3, 0x36, 0x00, 0x00, 0xd1, 0x36, 0x00, 0x24, 0xcb, 0x34, 0x00, 0xb8, 0xc8, 0x34, 0x00

; FUNCTION 0x005723f8, declared_size=296, range_size=296, mode=arm
; class-group: glitch::io::CXMLAttributesWriter
; alias: _ZN6glitch2io20CXMLAttributesWriter5writeEPNS0_11IAttributesE
; demangled: glitch::io::CXMLAttributesWriter::write(glitch::io::IAttributes*)
; decoder-mode: arm
005723f8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005723fc  08 30 d0 e5                                      ldrb r3, [r0, #8]
00572400  7c d0 4d e2                                      sub sp, sp, #0x7c
00572404  00 40 a0 e1                                      mov r4, r0
00572408  00 00 53 e3                                      cmp r3, #0
0057240c  01 60 a0 e1                                      mov r6, r1
00572410  3b 00 00 1a                                      bne #0x572504
00572414  00 11 9f e5                                      ldr r1, [pc, #0x100]
00572418  2c 50 8d e2                                      add r5, sp, #0x2c
0057241c  05 00 a0 e1                                      mov r0, r5
00572420  01 10 8f e0                                      add r1, pc, r1
00572424  74 20 8d e2                                      add r2, sp, #0x74
00572428  b3 ce f6 eb                                      bl #0x325efc
0057242c  0c 70 94 e5                                      ldr r7, [r4, #0xc]
00572430  00 00 57 e3                                      cmp r7, #0
00572434  05 00 00 0a                                      beq #0x572450
00572438  07 00 a0 e1                                      mov r0, r7
0057243c  11 72 f6 eb                                      bl #0x30ec88
00572440  07 10 a0 e1                                      mov r1, r7
00572444  00 21 87 e0                                      add r2, r7, r0, lsl #2
00572448  05 00 a0 e1                                      mov r0, r5
0057244c  53 c3 f6 eb                                      bl #0x3231a0
00572450  04 c0 94 e5                                      ldr ip, [r4, #4]
00572454  00 30 a0 e3                                      mov r3, #0
00572458  03 20 a0 e1                                      mov r2, r3
0057245c  0c 00 a0 e1                                      mov r0, ip
00572460  70 10 9d e5                                      ldr r1, [sp, #0x70]
00572464  00 c0 9c e5                                      ldr ip, [ip]
00572468  00 30 8d e5                                      str r3, [sp]
0057246c  04 30 8d e5                                      str r3, [sp, #4]
00572470  08 30 8d e5                                      str r3, [sp, #8]
00572474  0c 30 8d e5                                      str r3, [sp, #0xc]
00572478  10 30 8d e5                                      str r3, [sp, #0x10]
0057247c  14 30 8d e5                                      str r3, [sp, #0x14]
00572480  18 30 8d e5                                      str r3, [sp, #0x18]
00572484  1c 30 8d e5                                      str r3, [sp, #0x1c]
00572488  20 30 8d e5                                      str r3, [sp, #0x20]
0057248c  0f e0 a0 e1                                      mov lr, pc
00572490  10 f0 9c e5                                      ldr pc, [ip, #0x10]
00572494  04 30 94 e5                                      ldr r3, [r4, #4]
00572498  03 00 a0 e1                                      mov r0, r3
0057249c  00 30 93 e5                                      ldr r3, [r3]
005724a0  0f e0 a0 e1                                      mov lr, pc
005724a4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005724a8  04 00 a0 e1                                      mov r0, r4
005724ac  06 10 a0 e1                                      mov r1, r6
005724b0  2a fe ff eb                                      bl #0x571d60
005724b4  04 30 94 e5                                      ldr r3, [r4, #4]
005724b8  70 10 9d e5                                      ldr r1, [sp, #0x70]
005724bc  03 00 a0 e1                                      mov r0, r3
005724c0  00 30 93 e5                                      ldr r3, [r3]
005724c4  0f e0 a0 e1                                      mov lr, pc
005724c8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005724cc  04 30 94 e5                                      ldr r3, [r4, #4]
005724d0  03 00 a0 e1                                      mov r0, r3
005724d4  00 30 93 e5                                      ldr r3, [r3]
005724d8  0f e0 a0 e1                                      mov lr, pc
005724dc  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005724e0  70 00 9d e5                                      ldr r0, [sp, #0x70]
005724e4  05 00 50 e1                                      cmp r0, r5
005724e8  02 00 00 0a                                      beq #0x5724f8
005724ec  00 00 50 e3                                      cmp r0, #0
005724f0  00 00 00 0a                                      beq #0x5724f8
005724f4  d5 77 f6 eb                                      bl #0x310450
005724f8  01 00 a0 e3                                      mov r0, #1
005724fc  7c d0 8d e2                                      add sp, sp, #0x7c
00572500  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00572504  04 30 90 e5                                      ldr r3, [r0, #4]
00572508  03 00 a0 e1                                      mov r0, r3
0057250c  00 30 93 e5                                      ldr r3, [r3]
00572510  0f e0 a0 e1                                      mov lr, pc
00572514  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00572518  bd ff ff ea                                      b #0x572414
; mapping-symbol data/literal pool
0057251c  b8 c7 34 00                                      .byte 0xb8, 0xc7, 0x34, 0x00
