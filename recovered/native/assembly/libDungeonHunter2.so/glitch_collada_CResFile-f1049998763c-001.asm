; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00657c8c, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::CResFile
; alias: _ZN6glitch7collada8CResFile13releaseBufferERN5boost13intrusive_ptrINS_5video7IBufferEEE
; demangled: glitch::collada::CResFile::releaseBuffer(boost::intrusive_ptr<glitch::video::IBuffer>&)
; decoder-mode: arm
00657c8c  10 40 2d e9                                      push {r4, lr}
00657c90  00 00 91 e5                                      ldr r0, [r1]
00657c94  01 40 a0 e1                                      mov r4, r1
00657c98  00 00 50 e3                                      cmp r0, #0
00657c9c  10 00 00 0a                                      beq #0x657ce4
00657ca0  04 30 90 e5                                      ldr r3, [r0, #4]
00657ca4  01 00 53 e3                                      cmp r3, #1
00657ca8  0f 00 00 9a                                      bls #0x657cec
00657cac  12 10 d0 e5                                      ldrb r1, [r0, #0x12]
00657cb0  01 30 a0 e3                                      mov r3, #1
00657cb4  08 10 11 e2                                      ands r1, r1, #8
00657cb8  0c 10 90 15                                      ldrne r1, [r0, #0xc]
00657cbc  00 20 a0 13                                      movne r2, #0
00657cc0  01 20 a0 01                                      moveq r2, r1
00657cc4  fa 27 fd eb                                      bl #0x5a1cb4
00657cc8  00 00 94 e5                                      ldr r0, [r4]
00657ccc  00 30 a0 e3                                      mov r3, #0
00657cd0  00 30 84 e5                                      str r3, [r4]
00657cd4  00 00 50 e3                                      cmp r0, #0
00657cd8  02 00 00 0a                                      beq #0x657ce8
00657cdc  10 40 bd e8                                      pop {r4, lr}
00657ce0  27 16 f3 ea                                      b #0x31d584
00657ce4  00 00 81 e5                                      str r0, [r1]
00657ce8  10 80 bd e8                                      pop {r4, pc}
00657cec  00 30 a0 e3                                      mov r3, #0
00657cf0  00 30 81 e5                                      str r3, [r1]
00657cf4  f8 ff ff ea                                      b #0x657cdc

; FUNCTION 0x00657cf8, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CResFile
; alias: _ZN6glitch7collada8CResFile22releaseRemovableBufferERN5boost13intrusive_ptrINS_5video7IBufferEEE
; demangled: glitch::collada::CResFile::releaseRemovableBuffer(boost::intrusive_ptr<glitch::video::IBuffer>&)
; decoder-mode: arm
00657cf8  10 40 2d e9                                      push {r4, lr}
00657cfc  00 00 91 e5                                      ldr r0, [r1]
00657d00  01 40 a0 e1                                      mov r4, r1
00657d04  00 00 50 e3                                      cmp r0, #0
00657d08  04 00 00 0a                                      beq #0x657d20
00657d0c  12 30 d0 e5                                      ldrb r3, [r0, #0x12]
00657d10  08 00 13 e3                                      tst r3, #8
00657d14  09 00 00 1a                                      bne #0x657d40
00657d18  01 00 13 e3                                      tst r3, #1
00657d1c  00 00 00 0a                                      beq #0x657d24
00657d20  10 80 bd e8                                      pop {r4, pc}
00657d24  28 00 9f e5                                      ldr r0, [pc, #0x28]
00657d28  02 10 a0 e3                                      mov r1, #2
00657d2c  00 00 8f e0                                      add r0, pc, r0
00657d30  da cb fe eb                                      bl #0x60aca0
00657d34  00 00 94 e5                                      ldr r0, [r4]
00657d38  10 40 bd e8                                      pop {r4, lr}
00657d3c  b6 27 fd ea                                      b #0x5a1c1c
00657d40  0c 10 90 e5                                      ldr r1, [r0, #0xc]
00657d44  00 20 a0 e3                                      mov r2, #0
00657d48  01 30 a0 e3                                      mov r3, #1
00657d4c  10 40 bd e8                                      pop {r4, lr}
00657d50  d7 27 fd ea                                      b #0x5a1cb4
; mapping-symbol data/literal pool
00657d54  44 d9 28 00                                      .byte 0x44, 0xd9, 0x28, 0x00

; FUNCTION 0x00657d58, declared_size=584, range_size=584, mode=arm
; class-group: glitch::collada::CResFile
; alias: _ZN6glitch7collada8CResFile22releaseRemovableBufferEh
; demangled: glitch::collada::CResFile::releaseRemovableBuffer(unsigned char)
; decoder-mode: arm
00657d58  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00657d5c  44 30 90 e5                                      ldr r3, [r0, #0x44]
00657d60  0c d0 4d e2                                      sub sp, sp, #0xc
00657d64  00 60 a0 e1                                      mov r6, r0
00657d68  00 00 53 e3                                      cmp r3, #0
00657d6c  04 10 8d e5                                      str r1, [sp, #4]
00657d70  03 20 a0 e1                                      mov r2, r3
00657d74  7b 00 00 0a                                      beq #0x657f68
00657d78  24 10 90 e5                                      ldr r1, [r0, #0x24]
00657d7c  20 90 91 e5                                      ldr sb, [r1, #0x20]
00657d80  64 a0 99 e5                                      ldr sl, [sb, #0x64]
00657d84  00 00 5a e3                                      cmp sl, #0
00657d88  51 00 00 1a                                      bne #0x657ed4
00657d8c  04 30 9d e5                                      ldr r3, [sp, #4]
00657d90  01 00 13 e3                                      tst r3, #1
00657d94  34 00 00 0a                                      beq #0x657e6c
00657d98  68 30 99 e5                                      ldr r3, [sb, #0x68]
00657d9c  00 00 53 e3                                      cmp r3, #0
00657da0  00 30 8d e5                                      str r3, [sp]
00657da4  30 00 00 da                                      ble #0x657e6c
00657da8  0a 80 a0 e1                                      mov r8, sl
00657dac  6c 30 99 e5                                      ldr r3, [sb, #0x6c]
00657db0  0a 32 83 e0                                      add r3, r3, sl, lsl #4
00657db4  08 70 93 e5                                      ldr r7, [r3, #8]
00657db8  00 00 57 e3                                      cmp r7, #0
00657dbc  23 00 00 1a                                      bne #0x657e50
00657dc0  0c 50 93 e5                                      ldr r5, [r3, #0xc]
00657dc4  00 40 95 e5                                      ldr r4, [r5]
00657dc8  00 00 54 e3                                      cmp r4, #0
00657dcc  6c 00 00 1a                                      bne #0x657f84
00657dd0  04 b0 95 e5                                      ldr fp, [r5, #4]
00657dd4  00 00 5b e3                                      cmp fp, #0
00657dd8  0b 00 00 da                                      ble #0x657e0c
00657ddc  04 70 a0 e1                                      mov r7, r4
00657de0  08 10 95 e5                                      ldr r1, [r5, #8]
00657de4  06 00 a0 e1                                      mov r0, r6
00657de8  01 70 87 e2                                      add r7, r7, #1
00657dec  04 10 81 e0                                      add r1, r1, r4
00657df0  10 10 81 e2                                      add r1, r1, #0x10
00657df4  bf ff ff eb                                      bl #0x657cf8
00657df8  08 30 95 e5                                      ldr r3, [r5, #8]
00657dfc  0b 00 57 e1                                      cmp r7, fp
00657e00  14 40 84 e2                                      add r4, r4, #0x14
00657e04  24 80 83 e5                                      str r8, [r3, #0x24]
00657e08  f4 ff ff 1a                                      bne #0x657de0
00657e0c  0c b0 95 e5                                      ldr fp, [r5, #0xc]
00657e10  00 00 5b e3                                      cmp fp, #0
00657e14  0d 00 00 da                                      ble #0x657e50
00657e18  00 40 a0 e3                                      mov r4, #0
00657e1c  04 70 a0 e1                                      mov r7, r4
00657e20  10 10 95 e5                                      ldr r1, [r5, #0x10]
00657e24  06 00 a0 e1                                      mov r0, r6
00657e28  01 70 87 e2                                      add r7, r7, #1
00657e2c  04 10 81 e0                                      add r1, r1, r4
00657e30  30 10 81 e2                                      add r1, r1, #0x30
00657e34  af ff ff eb                                      bl #0x657cf8
00657e38  10 30 95 e5                                      ldr r3, [r5, #0x10]
00657e3c  0b 00 57 e1                                      cmp r7, fp
00657e40  04 30 83 e0                                      add r3, r3, r4
00657e44  2c 80 83 e5                                      str r8, [r3, #0x2c]
00657e48  38 40 84 e2                                      add r4, r4, #0x38
00657e4c  f3 ff ff 1a                                      bne #0x657e20
00657e50  00 30 9d e5                                      ldr r3, [sp]
00657e54  01 a0 8a e2                                      add sl, sl, #1
00657e58  03 00 5a e1                                      cmp sl, r3
00657e5c  d2 ff ff 1a                                      bne #0x657dac
00657e60  64 30 99 e5                                      ldr r3, [sb, #0x64]
00657e64  00 00 53 e3                                      cmp r3, #0
00657e68  17 00 00 1a                                      bne #0x657ecc
00657e6c  04 30 9d e5                                      ldr r3, [sp, #4]
00657e70  02 00 13 e3                                      tst r3, #2
00657e74  14 00 00 0a                                      beq #0x657ecc
00657e78  70 70 99 e5                                      ldr r7, [sb, #0x70]
00657e7c  00 00 57 e3                                      cmp r7, #0
00657e80  00 40 a0 c3                                      movgt r4, #0
00657e84  04 50 a0 c1                                      movgt r5, r4
00657e88  02 00 00 ca                                      bgt #0x657e98
00657e8c  0e 00 00 ea                                      b #0x657ecc
00657e90  07 00 55 e1                                      cmp r5, r7
00657e94  0c 00 00 0a                                      beq #0x657ecc
00657e98  74 30 99 e5                                      ldr r3, [sb, #0x74]
00657e9c  01 50 85 e2                                      add r5, r5, #1
00657ea0  04 20 93 e7                                      ldr r2, [r3, r4]
00657ea4  04 30 83 e0                                      add r3, r3, r4
00657ea8  0c 40 84 e2                                      add r4, r4, #0xc
00657eac  00 00 52 e3                                      cmp r2, #0
00657eb0  f6 ff ff 1a                                      bne #0x657e90
00657eb4  08 10 93 e5                                      ldr r1, [r3, #8]
00657eb8  06 00 a0 e1                                      mov r0, r6
00657ebc  94 10 81 e2                                      add r1, r1, #0x94
00657ec0  8c ff ff eb                                      bl #0x657cf8
00657ec4  07 00 55 e1                                      cmp r5, r7
00657ec8  f2 ff ff 1a                                      bne #0x657e98
00657ecc  44 30 96 e5                                      ldr r3, [r6, #0x44]
00657ed0  03 20 a0 e1                                      mov r2, r3
00657ed4  48 10 d6 e5                                      ldrb r1, [r6, #0x48]
00657ed8  00 00 51 e3                                      cmp r1, #0
00657edc  23 00 00 0a                                      beq #0x657f70
00657ee0  38 10 96 e5                                      ldr r1, [r6, #0x38]
00657ee4  00 00 51 e3                                      cmp r1, #0
00657ee8  03 20 a0 d1                                      movle r2, r3
00657eec  11 00 00 da                                      ble #0x657f38
00657ef0  00 40 a0 e3                                      mov r4, #0
00657ef4  04 70 a0 e1                                      mov r7, r4
00657ef8  00 00 00 ea                                      b #0x657f00
00657efc  44 20 96 e5                                      ldr r2, [r6, #0x44]
00657f00  04 01 92 e7                                      ldr r0, [r2, r4, lsl #2]
00657f04  04 51 a0 e1                                      lsl r5, r4, #2
00657f08  05 20 82 e0                                      add r2, r2, r5
00657f0c  00 00 50 e3                                      cmp r0, #0
00657f10  01 40 84 e2                                      add r4, r4, #1
00657f14  02 00 00 0a                                      beq #0x657f24
00657f18  66 d8 f2 eb                                      bl #0x30e0b8
00657f1c  44 20 96 e5                                      ldr r2, [r6, #0x44]
00657f20  05 20 82 e0                                      add r2, r2, r5
00657f24  00 70 82 e5                                      str r7, [r2]
00657f28  38 30 96 e5                                      ldr r3, [r6, #0x38]
00657f2c  04 00 53 e1                                      cmp r3, r4
00657f30  f1 ff ff ca                                      bgt #0x657efc
00657f34  44 20 96 e5                                      ldr r2, [r6, #0x44]
00657f38  00 00 52 e3                                      cmp r2, #0
00657f3c  01 00 00 0a                                      beq #0x657f48
00657f40  02 00 a0 e1                                      mov r0, r2
00657f44  5b d8 f2 eb                                      bl #0x30e0b8
00657f48  40 00 96 e5                                      ldr r0, [r6, #0x40]
00657f4c  00 30 a0 e3                                      mov r3, #0
00657f50  44 30 86 e5                                      str r3, [r6, #0x44]
00657f54  03 00 50 e1                                      cmp r0, r3
00657f58  00 00 00 0a                                      beq #0x657f60
00657f5c  55 d8 f2 eb                                      bl #0x30e0b8
00657f60  00 30 a0 e3                                      mov r3, #0
00657f64  40 30 86 e5                                      str r3, [r6, #0x40]
00657f68  0c d0 8d e2                                      add sp, sp, #0xc
00657f6c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00657f70  00 00 93 e5                                      ldr r0, [r3]
00657f74  00 00 50 e3                                      cmp r0, #0
00657f78  ee ff ff 0a                                      beq #0x657f38
00657f7c  4d d8 f2 eb                                      bl #0x30e0b8
00657f80  eb ff ff ea                                      b #0x657f34
00657f84  08 10 95 e5                                      ldr r1, [r5, #8]
00657f88  06 00 a0 e1                                      mov r0, r6
00657f8c  28 10 81 e2                                      add r1, r1, #0x28
00657f90  58 ff ff eb                                      bl #0x657cf8
00657f94  08 30 95 e5                                      ldr r3, [r5, #8]
00657f98  24 70 83 e5                                      str r7, [r3, #0x24]
00657f9c  9a ff ff ea                                      b #0x657e0c

; FUNCTION 0x00658048, declared_size=276, range_size=276, mode=arm
; class-group: glitch::collada::CResFile
; alias: _ZN6glitch7collada8CResFileC1EPKcPNS_2io9IReadFileEb
; demangled: glitch::collada::CResFile::CResFile(char const*, glitch::io::IReadFile*, bool)
; decoder-mode: arm
00658048  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065804c  f8 60 9f e5                                      ldr r6, [pc, #0xf8]
00658050  f8 c0 9f e5                                      ldr ip, [pc, #0xf8]
00658054  00 40 a0 e1                                      mov r4, r0
00658058  06 60 8f e0                                      add r6, pc, r6
0065805c  0c c0 96 e7                                      ldr ip, [r6, ip]
00658060  00 50 a0 e3                                      mov r5, #0
00658064  10 d0 4d e2                                      sub sp, sp, #0x10
00658068  08 c0 8c e2                                      add ip, ip, #8
0065806c  01 00 a0 e3                                      mov r0, #1
00658070  04 00 84 e5                                      str r0, [r4, #4]
00658074  03 80 a0 e1                                      mov r8, r3
00658078  00 c0 84 e5                                      str ip, [r4]
0065807c  02 70 a0 e1                                      mov r7, r2
00658080  08 50 84 e5                                      str r5, [r4, #8]
00658084  0c 00 84 e2                                      add r0, r4, #0xc
00658088  0c 20 8d e2                                      add r2, sp, #0xc
0065808c  ea 37 f3 eb                                      bl #0x32603c
00658090  05 00 58 e1                                      cmp r8, r5
00658094  24 50 84 e5                                      str r5, [r4, #0x24]
00658098  28 50 c4 e5                                      strb r5, [r4, #0x28]
0065809c  2c 50 84 e5                                      str r5, [r4, #0x2c]
006580a0  40 50 84 e5                                      str r5, [r4, #0x40]
006580a4  44 50 84 e5                                      str r5, [r4, #0x44]
006580a8  48 50 c4 e5                                      strb r5, [r4, #0x48]
006580ac  12 00 00 1a                                      bne #0x6580fc
006580b0  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
006580b4  07 10 a0 e1                                      mov r1, r7
006580b8  03 30 96 e7                                      ldr r3, [r6, r3]
006580bc  00 00 93 e5                                      ldr r0, [r3]
006580c0  c2 fe ff eb                                      bl #0x657bd0
006580c4  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
006580c8  00 50 a0 e1                                      mov r5, r0
006580cc  04 10 8d e2                                      add r1, sp, #4
006580d0  03 30 96 e7                                      ldr r3, [r6, r3]
006580d4  24 00 84 e2                                      add r0, r4, #0x24
006580d8  08 50 8d e5                                      str r5, [sp, #8]
006580dc  08 30 83 e2                                      add r3, r3, #8
006580e0  04 30 8d e5                                      str r3, [sp, #4]
006580e4  e5 09 01 eb                                      bl #0x69a880
006580e8  05 00 a0 e1                                      mov r0, r5
006580ec  24 15 f3 eb                                      bl #0x31d584
006580f0  04 00 a0 e1                                      mov r0, r4
006580f4  10 d0 8d e2                                      add sp, sp, #0x10
006580f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006580fc  00 30 97 e5                                      ldr r3, [r7]
00658100  07 00 a0 e1                                      mov r0, r7
00658104  0f e0 a0 e1                                      mov lr, pc
00658108  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0065810c  05 00 50 e1                                      cmp r0, r5
00658110  e6 ff ff 0a                                      beq #0x6580b0
00658114  08 70 84 e5                                      str r7, [r4, #8]
00658118  04 30 97 e5                                      ldr r3, [r7, #4]
0065811c  05 10 a0 e1                                      mov r1, r5
00658120  01 30 83 e2                                      add r3, r3, #1
00658124  04 30 87 e5                                      str r3, [r7, #4]
00658128  08 30 94 e5                                      ldr r3, [r4, #8]
0065812c  03 00 a0 e1                                      mov r0, r3
00658130  00 30 93 e5                                      ldr r3, [r3]
00658134  0f e0 a0 e1                                      mov lr, pc
00658138  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0065813c  00 10 a0 e1                                      mov r1, r0
00658140  24 00 84 e2                                      add r0, r4, #0x24
00658144  95 ff ff eb                                      bl #0x657fa0
00658148  e8 ff ff ea                                      b #0x6580f0
; mapping-symbol data/literal pool
0065814c  38 ca 33 00 24 2d 00 00 48 44 00 00 10 4c 00 00  .byte 0x38, 0xca, 0x33, 0x00, 0x24, 0x2d, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00, 0x10, 0x4c, 0x00, 0x00

; FUNCTION 0x0065815c, declared_size=276, range_size=276, mode=arm
; class-group: glitch::collada::CResFile
; alias: _ZN6glitch7collada8CResFileC2EPKcPNS_2io9IReadFileEb
; demangled: glitch::collada::CResFile::CResFile(char const*, glitch::io::IReadFile*, bool)
; decoder-mode: arm
0065815c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00658160  f8 60 9f e5                                      ldr r6, [pc, #0xf8]
00658164  f8 c0 9f e5                                      ldr ip, [pc, #0xf8]
00658168  00 40 a0 e1                                      mov r4, r0
0065816c  06 60 8f e0                                      add r6, pc, r6
00658170  0c c0 96 e7                                      ldr ip, [r6, ip]
00658174  00 50 a0 e3                                      mov r5, #0
00658178  10 d0 4d e2                                      sub sp, sp, #0x10
0065817c  08 c0 8c e2                                      add ip, ip, #8
00658180  01 00 a0 e3                                      mov r0, #1
00658184  04 00 84 e5                                      str r0, [r4, #4]
00658188  03 80 a0 e1                                      mov r8, r3
0065818c  00 c0 84 e5                                      str ip, [r4]
00658190  02 70 a0 e1                                      mov r7, r2
00658194  08 50 84 e5                                      str r5, [r4, #8]
00658198  0c 00 84 e2                                      add r0, r4, #0xc
0065819c  0c 20 8d e2                                      add r2, sp, #0xc
006581a0  a5 37 f3 eb                                      bl #0x32603c
006581a4  05 00 58 e1                                      cmp r8, r5
006581a8  24 50 84 e5                                      str r5, [r4, #0x24]
006581ac  28 50 c4 e5                                      strb r5, [r4, #0x28]
006581b0  2c 50 84 e5                                      str r5, [r4, #0x2c]
006581b4  40 50 84 e5                                      str r5, [r4, #0x40]
006581b8  44 50 84 e5                                      str r5, [r4, #0x44]
006581bc  48 50 c4 e5                                      strb r5, [r4, #0x48]
006581c0  12 00 00 1a                                      bne #0x658210
006581c4  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
006581c8  07 10 a0 e1                                      mov r1, r7
006581cc  03 30 96 e7                                      ldr r3, [r6, r3]
006581d0  00 00 93 e5                                      ldr r0, [r3]
006581d4  7d fe ff eb                                      bl #0x657bd0
006581d8  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
006581dc  00 50 a0 e1                                      mov r5, r0
006581e0  04 10 8d e2                                      add r1, sp, #4
006581e4  03 30 96 e7                                      ldr r3, [r6, r3]
006581e8  24 00 84 e2                                      add r0, r4, #0x24
006581ec  08 50 8d e5                                      str r5, [sp, #8]
006581f0  08 30 83 e2                                      add r3, r3, #8
006581f4  04 30 8d e5                                      str r3, [sp, #4]
006581f8  a0 09 01 eb                                      bl #0x69a880
006581fc  05 00 a0 e1                                      mov r0, r5
00658200  df 14 f3 eb                                      bl #0x31d584
00658204  04 00 a0 e1                                      mov r0, r4
00658208  10 d0 8d e2                                      add sp, sp, #0x10
0065820c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00658210  00 30 97 e5                                      ldr r3, [r7]
00658214  07 00 a0 e1                                      mov r0, r7
00658218  0f e0 a0 e1                                      mov lr, pc
0065821c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00658220  05 00 50 e1                                      cmp r0, r5
00658224  e6 ff ff 0a                                      beq #0x6581c4
00658228  08 70 84 e5                                      str r7, [r4, #8]
0065822c  04 30 97 e5                                      ldr r3, [r7, #4]
00658230  05 10 a0 e1                                      mov r1, r5
00658234  01 30 83 e2                                      add r3, r3, #1
00658238  04 30 87 e5                                      str r3, [r7, #4]
0065823c  08 30 94 e5                                      ldr r3, [r4, #8]
00658240  03 00 a0 e1                                      mov r0, r3
00658244  00 30 93 e5                                      ldr r3, [r3]
00658248  0f e0 a0 e1                                      mov lr, pc
0065824c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00658250  00 10 a0 e1                                      mov r1, r0
00658254  24 00 84 e2                                      add r0, r4, #0x24
00658258  50 ff ff eb                                      bl #0x657fa0
0065825c  e8 ff ff ea                                      b #0x658204
; mapping-symbol data/literal pool
00658260  24 c9 33 00 24 2d 00 00 48 44 00 00 10 4c 00 00  .byte 0x24, 0xc9, 0x33, 0x00, 0x24, 0x2d, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00, 0x10, 0x4c, 0x00, 0x00

; FUNCTION 0x00658744, declared_size=744, range_size=744, mode=arm
; class-group: glitch::collada::CResFile
; alias: _ZN6glitch7collada8CResFile14releaseObjectsEv
; demangled: glitch::collada::CResFile::releaseObjects()
; decoder-mode: arm
00658744  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00658748  d0 72 9f e5                                      ldr r7, [pc, #0x2d0]
0065874c  d0 22 9f e5                                      ldr r2, [pc, #0x2d0]
00658750  04 30 90 e5                                      ldr r3, [r0, #4]
00658754  07 70 8f e0                                      add r7, pc, r7
00658758  24 10 90 e5                                      ldr r1, [r0, #0x24]
0065875c  02 20 97 e7                                      ldr r2, [r7, r2]
00658760  c0 82 9f e5                                      ldr r8, [pc, #0x2c0]
00658764  00 00 53 e3                                      cmp r3, #0
00658768  24 d0 4d e2                                      sub sp, sp, #0x24
0065876c  01 30 83 12                                      addne r3, r3, #1
00658770  20 b0 91 e5                                      ldr fp, [r1, #0x20]
00658774  18 20 8d e5                                      str r2, [sp, #0x18]
00658778  14 00 8d e5                                      str r0, [sp, #0x14]
0065877c  04 30 80 15                                      strne r3, [r0, #4]
00658780  08 30 97 e7                                      ldr r3, [r7, r8]
00658784  4c 60 9b e5                                      ldr r6, [fp, #0x4c]
00658788  00 a0 a0 e1                                      mov sl, r0
0065878c  00 30 93 e5                                      ldr r3, [r3]
00658790  00 00 56 e3                                      cmp r6, #0
00658794  20 30 93 e5                                      ldr r3, [r3, #0x20]
00658798  10 30 93 e5                                      ldr r3, [r3, #0x10]
0065879c  e0 30 93 e5                                      ldr r3, [r3, #0xe0]
006587a0  08 30 8d e5                                      str r3, [sp, #8]
006587a4  17 00 00 da                                      ble #0x658808
006587a8  00 40 a0 e3                                      mov r4, #0
006587ac  04 50 a0 e1                                      mov r5, r4
006587b0  04 90 a0 e1                                      mov sb, r4
006587b4  50 30 9b e5                                      ldr r3, [fp, #0x50]
006587b8  01 50 85 e2                                      add r5, r5, #1
006587bc  04 30 83 e0                                      add r3, r3, r4
006587c0  10 10 93 e5                                      ldr r1, [r3, #0x10]
006587c4  14 40 84 e2                                      add r4, r4, #0x14
006587c8  00 00 51 e2                                      subs r0, r1, #0
006587cc  0b 00 00 0a                                      beq #0x658800
006587d0  10 90 83 e5                                      str sb, [r3, #0x10]
006587d4  04 10 8d e5                                      str r1, [sp, #4]
006587d8  69 13 f3 eb                                      bl #0x31d584
006587dc  08 30 97 e7                                      ldr r3, [r7, r8]
006587e0  04 10 9d e5                                      ldr r1, [sp, #4]
006587e4  00 30 93 e5                                      ldr r3, [r3]
006587e8  28 30 d3 e5                                      ldrb r3, [r3, #0x28]
006587ec  00 00 53 e3                                      cmp r3, #0
006587f0  02 00 00 0a                                      beq #0x658800
006587f4  04 30 91 e5                                      ldr r3, [r1, #4]
006587f8  01 00 53 e3                                      cmp r3, #1
006587fc  84 00 00 0a                                      beq #0x658a14
00658800  06 00 55 e1                                      cmp r5, r6
00658804  ea ff ff 1a                                      bne #0x6587b4
00658808  08 40 9b e5                                      ldr r4, [fp, #8]
0065880c  00 00 54 e3                                      cmp r4, #0
00658810  0d 00 00 0a                                      beq #0x65884c
00658814  00 50 a0 e3                                      mov r5, #0
00658818  1c 60 8d e2                                      add r6, sp, #0x1c
0065881c  34 30 94 e5                                      ldr r3, [r4, #0x34]
00658820  06 00 a0 e1                                      mov r0, r6
00658824  00 00 53 e3                                      cmp r3, #0
00658828  04 00 00 0a                                      beq #0x658840
0065882c  1c 50 8d e5                                      str r5, [sp, #0x1c]
00658830  34 30 94 e5                                      ldr r3, [r4, #0x34]
00658834  1c 30 8d e5                                      str r3, [sp, #0x1c]
00658838  34 50 84 e5                                      str r5, [r4, #0x34]
0065883c  8a 86 fc eb                                      bl #0x57a26c
00658840  38 40 94 e5                                      ldr r4, [r4, #0x38]
00658844  00 00 54 e3                                      cmp r4, #0
00658848  f3 ff ff 1a                                      bne #0x65881c
0065884c  68 20 9b e5                                      ldr r2, [fp, #0x68]
00658850  00 00 52 e3                                      cmp r2, #0
00658854  0c 20 8d e5                                      str r2, [sp, #0xc]
00658858  3e 00 00 da                                      ble #0x658958
0065885c  00 30 a0 e3                                      mov r3, #0
00658860  08 30 8d e5                                      str r3, [sp, #8]
00658864  03 80 a0 e1                                      mov r8, r3
00658868  6c 30 9b e5                                      ldr r3, [fp, #0x6c]
0065886c  08 20 9d e5                                      ldr r2, [sp, #8]
00658870  02 32 83 e0                                      add r3, r3, r2, lsl #4
00658874  08 50 93 e5                                      ldr r5, [r3, #8]
00658878  00 00 55 e3                                      cmp r5, #0
0065887c  2f 00 00 1a                                      bne #0x658940
00658880  0c 70 93 e5                                      ldr r7, [r3, #0xc]
00658884  00 40 97 e5                                      ldr r4, [r7]
00658888  00 00 54 e3                                      cmp r4, #0
0065888c  55 00 00 1a                                      bne #0x6589e8
00658890  04 60 97 e5                                      ldr r6, [r7, #4]
00658894  00 00 56 e3                                      cmp r6, #0
00658898  10 00 00 da                                      ble #0x6588e0
0065889c  04 50 a0 e1                                      mov r5, r4
006588a0  08 10 97 e5                                      ldr r1, [r7, #8]
006588a4  0a 00 a0 e1                                      mov r0, sl
006588a8  01 50 85 e2                                      add r5, r5, #1
006588ac  04 10 81 e0                                      add r1, r1, r4
006588b0  10 10 81 e2                                      add r1, r1, #0x10
006588b4  f4 fc ff eb                                      bl #0x657c8c
006588b8  08 30 97 e5                                      ldr r3, [r7, #8]
006588bc  04 30 83 e0                                      add r3, r3, r4
006588c0  10 00 93 e5                                      ldr r0, [r3, #0x10]
006588c4  14 40 84 e2                                      add r4, r4, #0x14
006588c8  10 80 83 e5                                      str r8, [r3, #0x10]
006588cc  00 00 50 e3                                      cmp r0, #0
006588d0  00 00 00 0a                                      beq #0x6588d8
006588d4  2a 13 f3 eb                                      bl #0x31d584
006588d8  06 00 55 e1                                      cmp r5, r6
006588dc  ef ff ff 1a                                      bne #0x6588a0
006588e0  0c 90 97 e5                                      ldr sb, [r7, #0xc]
006588e4  00 00 59 e3                                      cmp sb, #0
006588e8  14 00 00 da                                      ble #0x658940
006588ec  00 50 a0 e3                                      mov r5, #0
006588f0  05 60 a0 e1                                      mov r6, r5
006588f4  10 40 97 e5                                      ldr r4, [r7, #0x10]
006588f8  0a 00 a0 e1                                      mov r0, sl
006588fc  01 60 86 e2                                      add r6, r6, #1
00658900  05 40 84 e0                                      add r4, r4, r5
00658904  30 10 84 e2                                      add r1, r4, #0x30
00658908  df fc ff eb                                      bl #0x657c8c
0065890c  30 00 94 e5                                      ldr r0, [r4, #0x30]
00658910  38 50 85 e2                                      add r5, r5, #0x38
00658914  30 80 84 e5                                      str r8, [r4, #0x30]
00658918  00 00 50 e3                                      cmp r0, #0
0065891c  00 00 00 0a                                      beq #0x658924
00658920  17 13 f3 eb                                      bl #0x31d584
00658924  34 00 94 e5                                      ldr r0, [r4, #0x34]
00658928  34 80 84 e5                                      str r8, [r4, #0x34]
0065892c  00 00 50 e3                                      cmp r0, #0
00658930  00 00 00 0a                                      beq #0x658938
00658934  12 13 f3 eb                                      bl #0x31d584
00658938  09 00 56 e1                                      cmp r6, sb
0065893c  ec ff ff 1a                                      bne #0x6588f4
00658940  08 30 9d e5                                      ldr r3, [sp, #8]
00658944  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00658948  01 30 83 e2                                      add r3, r3, #1
0065894c  02 00 53 e1                                      cmp r3, r2
00658950  08 30 8d e5                                      str r3, [sp, #8]
00658954  c3 ff ff 1a                                      bne #0x658868
00658958  70 60 9b e5                                      ldr r6, [fp, #0x70]
0065895c  00 00 56 e3                                      cmp r6, #0
00658960  11 00 00 da                                      ble #0x6589ac
00658964  00 40 a0 e3                                      mov r4, #0
00658968  04 50 a0 e1                                      mov r5, r4
0065896c  01 00 00 ea                                      b #0x658978
00658970  06 00 55 e1                                      cmp r5, r6
00658974  0c 00 00 0a                                      beq #0x6589ac
00658978  74 30 9b e5                                      ldr r3, [fp, #0x74]
0065897c  01 50 85 e2                                      add r5, r5, #1
00658980  04 20 93 e7                                      ldr r2, [r3, r4]
00658984  04 30 83 e0                                      add r3, r3, r4
00658988  0c 40 84 e2                                      add r4, r4, #0xc
0065898c  00 00 52 e3                                      cmp r2, #0
00658990  f6 ff ff 1a                                      bne #0x658970
00658994  08 10 93 e5                                      ldr r1, [r3, #8]
00658998  0a 00 a0 e1                                      mov r0, sl
0065899c  94 10 81 e2                                      add r1, r1, #0x94
006589a0  b9 fc ff eb                                      bl #0x657c8c
006589a4  06 00 55 e1                                      cmp r5, r6
006589a8  f2 ff ff 1a                                      bne #0x658978
006589ac  04 40 9b e5                                      ldr r4, [fp, #4]
006589b0  00 00 54 e3                                      cmp r4, #0
006589b4  07 00 00 0a                                      beq #0x6589d8
006589b8  14 00 94 e5                                      ldr r0, [r4, #0x14]
006589bc  04 00 50 e1                                      cmp r0, r4
006589c0  02 00 00 0a                                      beq #0x6589d0
006589c4  00 00 50 e3                                      cmp r0, #0
006589c8  00 00 00 0a                                      beq #0x6589d0
006589cc  9f de f2 eb                                      bl #0x310450
006589d0  04 00 a0 e1                                      mov r0, r4
006589d4  35 d6 f2 eb                                      bl #0x30e2b0
006589d8  14 00 8d e2                                      add r0, sp, #0x14
006589dc  a4 02 ff eb                                      bl #0x619474
006589e0  24 d0 8d e2                                      add sp, sp, #0x24
006589e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006589e8  08 10 97 e5                                      ldr r1, [r7, #8]
006589ec  0a 00 a0 e1                                      mov r0, sl
006589f0  28 10 81 e2                                      add r1, r1, #0x28
006589f4  a4 fc ff eb                                      bl #0x657c8c
006589f8  08 30 97 e5                                      ldr r3, [r7, #8]
006589fc  28 00 93 e5                                      ldr r0, [r3, #0x28]
00658a00  28 50 83 e5                                      str r5, [r3, #0x28]
00658a04  00 00 50 e3                                      cmp r0, #0
00658a08  b4 ff ff 0a                                      beq #0x6588e0
00658a0c  dc 12 f3 eb                                      bl #0x31d584
00658a10  b2 ff ff ea                                      b #0x6588e0
00658a14  08 00 9d e5                                      ldr r0, [sp, #8]
00658a18  e0 af f4 eb                                      bl #0x3849a0
00658a1c  77 ff ff ea                                      b #0x658800
; mapping-symbol data/literal pool
00658a20  3c c3 33 00 10 47 00 00 48 44 00 00              .byte 0x3c, 0xc3, 0x33, 0x00, 0x10, 0x47, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x00658a2c, declared_size=292, range_size=292, mode=arm
; class-group: glitch::collada::CResFile
; alias: _ZN6glitch7collada8CResFileD1Ev
; demangled: glitch::collada::CResFile::~CResFile()
; decoder-mode: arm
00658a2c  14 31 9f e5                                      ldr r3, [pc, #0x114]
00658a30  14 21 9f e5                                      ldr r2, [pc, #0x114]
00658a34  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00658a38  03 30 8f e0                                      add r3, pc, r3
00658a3c  02 20 93 e7                                      ldr r2, [r3, r2]
00658a40  00 40 a0 e1                                      mov r4, r0
00658a44  08 20 82 e2                                      add r2, r2, #8
00658a48  00 20 80 e5                                      str r2, [r0]
00658a4c  3c ff ff eb                                      bl #0x658744
00658a50  08 00 94 e5                                      ldr r0, [r4, #8]
00658a54  00 00 50 e3                                      cmp r0, #0
00658a58  0b 00 00 0a                                      beq #0x658a8c
00658a5c  c8 12 f3 eb                                      bl #0x31d584
00658a60  00 30 a0 e3                                      mov r3, #0
00658a64  08 30 84 e5                                      str r3, [r4, #8]
00658a68  0c 30 84 e2                                      add r3, r4, #0xc
00658a6c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00658a70  03 00 50 e1                                      cmp r0, r3
00658a74  02 00 00 0a                                      beq #0x658a84
00658a78  00 00 50 e3                                      cmp r0, #0
00658a7c  00 00 00 0a                                      beq #0x658a84
00658a80  72 de f2 eb                                      bl #0x310450
00658a84  04 00 a0 e1                                      mov r0, r4
00658a88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00658a8c  44 30 94 e5                                      ldr r3, [r4, #0x44]
00658a90  00 00 53 e3                                      cmp r3, #0
00658a94  13 00 00 0a                                      beq #0x658ae8
00658a98  48 20 d4 e5                                      ldrb r2, [r4, #0x48]
00658a9c  00 00 52 e3                                      cmp r2, #0
00658aa0  13 00 00 1a                                      bne #0x658af4
00658aa4  00 00 93 e5                                      ldr r0, [r3]
00658aa8  00 00 50 e3                                      cmp r0, #0
00658aac  03 00 00 0a                                      beq #0x658ac0
00658ab0  80 d5 f2 eb                                      bl #0x30e0b8
00658ab4  44 30 94 e5                                      ldr r3, [r4, #0x44]
00658ab8  00 00 53 e3                                      cmp r3, #0
00658abc  01 00 00 0a                                      beq #0x658ac8
00658ac0  03 00 a0 e1                                      mov r0, r3
00658ac4  7b d5 f2 eb                                      bl #0x30e0b8
00658ac8  40 00 94 e5                                      ldr r0, [r4, #0x40]
00658acc  00 30 a0 e3                                      mov r3, #0
00658ad0  44 30 84 e5                                      str r3, [r4, #0x44]
00658ad4  03 00 50 e1                                      cmp r0, r3
00658ad8  00 00 00 0a                                      beq #0x658ae0
00658adc  75 d5 f2 eb                                      bl #0x30e0b8
00658ae0  00 30 a0 e3                                      mov r3, #0
00658ae4  40 30 84 e5                                      str r3, [r4, #0x40]
00658ae8  24 00 94 e5                                      ldr r0, [r4, #0x24]
00658aec  57 de f2 eb                                      bl #0x310450
00658af0  dc ff ff ea                                      b #0x658a68
00658af4  38 20 94 e5                                      ldr r2, [r4, #0x38]
00658af8  00 00 52 e3                                      cmp r2, #0
00658afc  ef ff ff da                                      ble #0x658ac0
00658b00  00 50 a0 e1                                      mov r5, r0
00658b04  00 70 a0 e1                                      mov r7, r0
00658b08  00 00 00 ea                                      b #0x658b10
00658b0c  44 30 94 e5                                      ldr r3, [r4, #0x44]
00658b10  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00658b14  05 61 a0 e1                                      lsl r6, r5, #2
00658b18  06 30 83 e0                                      add r3, r3, r6
00658b1c  00 00 50 e3                                      cmp r0, #0
00658b20  01 50 85 e2                                      add r5, r5, #1
00658b24  02 00 00 0a                                      beq #0x658b34
00658b28  62 d5 f2 eb                                      bl #0x30e0b8
00658b2c  44 30 94 e5                                      ldr r3, [r4, #0x44]
00658b30  06 30 83 e0                                      add r3, r3, r6
00658b34  00 70 83 e5                                      str r7, [r3]
00658b38  38 30 94 e5                                      ldr r3, [r4, #0x38]
00658b3c  05 00 53 e1                                      cmp r3, r5
00658b40  f1 ff ff ca                                      bgt #0x658b0c
00658b44  da ff ff ea                                      b #0x658ab4
; mapping-symbol data/literal pool
00658b48  58 c0 33 00 24 2d 00 00                          .byte 0x58, 0xc0, 0x33, 0x00, 0x24, 0x2d, 0x00, 0x00

; FUNCTION 0x00658b50, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CResFile
; alias: _ZN6glitch7collada8CResFileD0Ev
; demangled: glitch::collada::CResFile::~CResFile()
; decoder-mode: arm
00658b50  10 40 2d e9                                      push {r4, lr}
00658b54  00 40 a0 e1                                      mov r4, r0
00658b58  b3 ff ff eb                                      bl #0x658a2c
00658b5c  04 00 a0 e1                                      mov r0, r4
00658b60  d2 d5 f2 eb                                      bl #0x30e2b0
00658b64  04 00 a0 e1                                      mov r0, r4
00658b68  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00658b6c, declared_size=292, range_size=292, mode=arm
; class-group: glitch::collada::CResFile
; alias: _ZN6glitch7collada8CResFileD2Ev
; demangled: glitch::collada::CResFile::~CResFile()
; decoder-mode: arm
00658b6c  14 31 9f e5                                      ldr r3, [pc, #0x114]
00658b70  14 21 9f e5                                      ldr r2, [pc, #0x114]
00658b74  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00658b78  03 30 8f e0                                      add r3, pc, r3
00658b7c  02 20 93 e7                                      ldr r2, [r3, r2]
00658b80  00 40 a0 e1                                      mov r4, r0
00658b84  08 20 82 e2                                      add r2, r2, #8
00658b88  00 20 80 e5                                      str r2, [r0]
00658b8c  ec fe ff eb                                      bl #0x658744
00658b90  08 00 94 e5                                      ldr r0, [r4, #8]
00658b94  00 00 50 e3                                      cmp r0, #0
00658b98  0b 00 00 0a                                      beq #0x658bcc
00658b9c  78 12 f3 eb                                      bl #0x31d584
00658ba0  00 30 a0 e3                                      mov r3, #0
00658ba4  08 30 84 e5                                      str r3, [r4, #8]
00658ba8  0c 30 84 e2                                      add r3, r4, #0xc
00658bac  14 00 93 e5                                      ldr r0, [r3, #0x14]
00658bb0  03 00 50 e1                                      cmp r0, r3
00658bb4  02 00 00 0a                                      beq #0x658bc4
00658bb8  00 00 50 e3                                      cmp r0, #0
00658bbc  00 00 00 0a                                      beq #0x658bc4
00658bc0  22 de f2 eb                                      bl #0x310450
00658bc4  04 00 a0 e1                                      mov r0, r4
00658bc8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00658bcc  44 30 94 e5                                      ldr r3, [r4, #0x44]
00658bd0  00 00 53 e3                                      cmp r3, #0
00658bd4  13 00 00 0a                                      beq #0x658c28
00658bd8  48 20 d4 e5                                      ldrb r2, [r4, #0x48]
00658bdc  00 00 52 e3                                      cmp r2, #0
00658be0  13 00 00 1a                                      bne #0x658c34
00658be4  00 00 93 e5                                      ldr r0, [r3]
00658be8  00 00 50 e3                                      cmp r0, #0
00658bec  03 00 00 0a                                      beq #0x658c00
00658bf0  30 d5 f2 eb                                      bl #0x30e0b8
00658bf4  44 30 94 e5                                      ldr r3, [r4, #0x44]
00658bf8  00 00 53 e3                                      cmp r3, #0
00658bfc  01 00 00 0a                                      beq #0x658c08
00658c00  03 00 a0 e1                                      mov r0, r3
00658c04  2b d5 f2 eb                                      bl #0x30e0b8
00658c08  40 00 94 e5                                      ldr r0, [r4, #0x40]
00658c0c  00 30 a0 e3                                      mov r3, #0
00658c10  44 30 84 e5                                      str r3, [r4, #0x44]
00658c14  03 00 50 e1                                      cmp r0, r3
00658c18  00 00 00 0a                                      beq #0x658c20
00658c1c  25 d5 f2 eb                                      bl #0x30e0b8
00658c20  00 30 a0 e3                                      mov r3, #0
00658c24  40 30 84 e5                                      str r3, [r4, #0x40]
00658c28  24 00 94 e5                                      ldr r0, [r4, #0x24]
00658c2c  07 de f2 eb                                      bl #0x310450
00658c30  dc ff ff ea                                      b #0x658ba8
00658c34  38 20 94 e5                                      ldr r2, [r4, #0x38]
00658c38  00 00 52 e3                                      cmp r2, #0
00658c3c  ef ff ff da                                      ble #0x658c00
00658c40  00 50 a0 e1                                      mov r5, r0
00658c44  00 70 a0 e1                                      mov r7, r0
00658c48  00 00 00 ea                                      b #0x658c50
00658c4c  44 30 94 e5                                      ldr r3, [r4, #0x44]
00658c50  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00658c54  05 61 a0 e1                                      lsl r6, r5, #2
00658c58  06 30 83 e0                                      add r3, r3, r6
00658c5c  00 00 50 e3                                      cmp r0, #0
00658c60  01 50 85 e2                                      add r5, r5, #1
00658c64  02 00 00 0a                                      beq #0x658c74
00658c68  12 d5 f2 eb                                      bl #0x30e0b8
00658c6c  44 30 94 e5                                      ldr r3, [r4, #0x44]
00658c70  06 30 83 e0                                      add r3, r3, r6
00658c74  00 70 83 e5                                      str r7, [r3]
00658c78  38 30 94 e5                                      ldr r3, [r4, #0x38]
00658c7c  05 00 53 e1                                      cmp r3, r5
00658c80  f1 ff ff ca                                      bgt #0x658c4c
00658c84  da ff ff ea                                      b #0x658bf4
; mapping-symbol data/literal pool
00658c88  18 bf 33 00 24 2d 00 00                          .byte 0x18, 0xbf, 0x33, 0x00, 0x24, 0x2d, 0x00, 0x00
