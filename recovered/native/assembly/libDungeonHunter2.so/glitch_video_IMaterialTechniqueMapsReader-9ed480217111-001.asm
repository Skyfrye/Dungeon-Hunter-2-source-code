; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005df8c8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::IMaterialTechniqueMapsReader
; alias: _ZN6glitch5video28IMaterialTechniqueMapsReader8setErrorEPKcS3_
; demangled: glitch::video::IMaterialTechniqueMapsReader::setError(char const*, char const*)
; decoder-mode: arm
005df8c8  01 c0 a0 e3                                      mov ip, #1
005df8cc  00 00 51 e3                                      cmp r1, #0
005df8d0  10 40 2d e9                                      push {r4, lr}
005df8d4  16 c0 c0 e5                                      strb ip, [r0, #0x16]
005df8d8  02 00 00 0a                                      beq #0x5df8e8
005df8dc  00 30 90 e5                                      ldr r3, [r0]
005df8e0  0f e0 a0 e1                                      mov lr, pc
005df8e4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005df8e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005df8ec, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video::IMaterialTechniqueMapsReader
; alias: _ZN6glitch5video28IMaterialTechniqueMapsReaderC2ERNS0_24CMaterialRendererManagerE
; demangled: glitch::video::IMaterialTechniqueMapsReader::IMaterialTechniqueMapsReader(glitch::video::CMaterialRendererManager&)
; decoder-mode: arm
005df8ec  50 c0 9f e5                                      ldr ip, [pc, #0x50]
005df8f0  30 00 2d e9                                      push {r4, r5}
005df8f4  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
005df8f8  0c c0 8f e0                                      add ip, pc, ip
005df8fc  00 20 a0 e3                                      mov r2, #0
005df900  05 50 9c e7                                      ldr r5, [ip, r5]
005df904  00 40 e0 e3                                      mvn r4, #0
005df908  04 10 80 e5                                      str r1, [r0, #4]
005df90c  08 50 85 e2                                      add r5, r5, #8
005df910  01 10 a0 e3                                      mov r1, #1
005df914  12 20 c0 e5                                      strb r2, [r0, #0x12]
005df918  00 50 80 e5                                      str r5, [r0]
005df91c  b0 41 c0 e1                                      strh r4, [r0, #0x10]
005df920  15 10 c0 e5                                      strb r1, [r0, #0x15]
005df924  08 40 80 e5                                      str r4, [r0, #8]
005df928  0c 40 80 e5                                      str r4, [r0, #0xc]
005df92c  14 20 c0 e5                                      strb r2, [r0, #0x14]
005df930  16 20 c0 e5                                      strb r2, [r0, #0x16]
005df934  18 20 80 e5                                      str r2, [r0, #0x18]
005df938  13 20 c0 e5                                      strb r2, [r0, #0x13]
005df93c  30 00 bd e8                                      pop {r4, r5}
005df940  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005df944  98 51 3b 00 c0 43 00 00                          .byte 0x98, 0x51, 0x3b, 0x00, 0xc0, 0x43, 0x00, 0x00

; FUNCTION 0x005df94c, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video::IMaterialTechniqueMapsReader
; alias: _ZN6glitch5video28IMaterialTechniqueMapsReaderC1ERNS0_24CMaterialRendererManagerE
; demangled: glitch::video::IMaterialTechniqueMapsReader::IMaterialTechniqueMapsReader(glitch::video::CMaterialRendererManager&)
; decoder-mode: arm
005df94c  50 c0 9f e5                                      ldr ip, [pc, #0x50]
005df950  30 00 2d e9                                      push {r4, r5}
005df954  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
005df958  0c c0 8f e0                                      add ip, pc, ip
005df95c  00 20 a0 e3                                      mov r2, #0
005df960  05 50 9c e7                                      ldr r5, [ip, r5]
005df964  00 40 e0 e3                                      mvn r4, #0
005df968  04 10 80 e5                                      str r1, [r0, #4]
005df96c  08 50 85 e2                                      add r5, r5, #8
005df970  01 10 a0 e3                                      mov r1, #1
005df974  12 20 c0 e5                                      strb r2, [r0, #0x12]
005df978  00 50 80 e5                                      str r5, [r0]
005df97c  b0 41 c0 e1                                      strh r4, [r0, #0x10]
005df980  15 10 c0 e5                                      strb r1, [r0, #0x15]
005df984  08 40 80 e5                                      str r4, [r0, #8]
005df988  0c 40 80 e5                                      str r4, [r0, #0xc]
005df98c  14 20 c0 e5                                      strb r2, [r0, #0x14]
005df990  16 20 c0 e5                                      strb r2, [r0, #0x16]
005df994  18 20 80 e5                                      str r2, [r0, #0x18]
005df998  13 20 c0 e5                                      strb r2, [r0, #0x13]
005df99c  30 00 bd e8                                      pop {r4, r5}
005df9a0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005df9a4  38 51 3b 00 c0 43 00 00                          .byte 0x38, 0x51, 0x3b, 0x00, 0xc0, 0x43, 0x00, 0x00

; FUNCTION 0x005df9ac, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::IMaterialTechniqueMapsReader
; alias: _ZN6glitch5video28IMaterialTechniqueMapsReaderD2Ev
; demangled: glitch::video::IMaterialTechniqueMapsReader::~IMaterialTechniqueMapsReader()
; decoder-mode: arm
005df9ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x005df9b0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::IMaterialTechniqueMapsReader
; alias: _ZN6glitch5video28IMaterialTechniqueMapsReaderD1Ev
; demangled: glitch::video::IMaterialTechniqueMapsReader::~IMaterialTechniqueMapsReader()
; decoder-mode: arm
005df9b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005df9b4, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video::IMaterialTechniqueMapsReader
; alias: _ZN6glitch5video28IMaterialTechniqueMapsReader11endMapGroupENS1_11E_MAP_GROUPEPKc
; demangled: glitch::video::IMaterialTechniqueMapsReader::endMapGroup(glitch::video::IMaterialTechniqueMapsReader::E_MAP_GROUP, char const*)
; decoder-mode: arm
005df9b4  10 40 2d e9                                      push {r4, lr}
005df9b8  00 30 a0 e1                                      mov r3, r0
005df9bc  16 00 d0 e5                                      ldrb r0, [r0, #0x16]
005df9c0  00 00 50 e3                                      cmp r0, #0
005df9c4  04 00 00 0a                                      beq #0x5df9dc
005df9c8  18 00 93 e5                                      ldr r0, [r3, #0x18]
005df9cc  00 00 52 e1                                      cmp r2, r0
005df9d0  00 20 a0 03                                      moveq r2, #0
005df9d4  18 20 83 05                                      streq r2, [r3, #0x18]
005df9d8  16 20 c3 05                                      strbeq r2, [r3, #0x16]
005df9dc  01 20 83 e0                                      add r2, r3, r1
005df9e0  02 00 81 e2                                      add r0, r1, #2
005df9e4  00 c0 e0 e3                                      mvn ip, #0
005df9e8  00 c1 83 e7                                      str ip, [r3, r0, lsl #2]
005df9ec  10 20 82 e2                                      add r2, r2, #0x10
005df9f0  00 00 a0 e3                                      mov r0, #0
005df9f4  02 00 c2 e5                                      strb r0, [r2, #2]
005df9f8  03 00 a0 e1                                      mov r0, r3
005df9fc  00 30 93 e5                                      ldr r3, [r3]
005dfa00  0f e0 a0 e1                                      mov lr, pc
005dfa04  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005dfa08  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005dfa2c, declared_size=192, range_size=192, mode=arm
; class-group: glitch::video::IMaterialTechniqueMapsReader
; alias: _ZN6glitch5video28IMaterialTechniqueMapsReader10getIdOrRefEPNS_2io13IIrrXMLReaderIcNS_17IReferenceCountedEEENS1_8E_ID_REFERb
; demangled: glitch::video::IMaterialTechniqueMapsReader::getIdOrRef(glitch::io::IIrrXMLReader<char, glitch::IReferenceCounted>*, glitch::video::IMaterialTechniqueMapsReader::E_ID_REF, bool&)
; decoder-mode: arm
005dfa2c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005dfa30  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
005dfa34  02 60 a0 e1                                      mov r6, r2
005dfa38  00 80 a0 e1                                      mov r8, r0
005dfa3c  04 40 8f e0                                      add r4, pc, r4
005dfa40  01 00 a0 e1                                      mov r0, r1
005dfa44  00 20 91 e5                                      ldr r2, [r1]
005dfa48  06 11 94 e7                                      ldr r1, [r4, r6, lsl #2]
005dfa4c  03 a0 a0 e1                                      mov sl, r3
005dfa50  0f e0 a0 e1                                      mov lr, pc
005dfa54  24 f0 92 e5                                      ldr pc, [r2, #0x24]
005dfa58  00 50 50 e2                                      subs r5, r0, #0
005dfa5c  12 00 00 0a                                      beq #0x5dfaac
005dfa60  d0 70 d5 e1                                      ldrsb r7, [r5]
005dfa64  00 00 57 e3                                      cmp r7, #0
005dfa68  15 00 00 0a                                      beq #0x5dfac4
005dfa6c  70 10 9f e5                                      ldr r1, [pc, #0x70]
005dfa70  01 10 8f e0                                      add r1, pc, r1
005dfa74  28 ba f4 eb                                      bl #0x30e31c
005dfa78  00 00 50 e3                                      cmp r0, #0
005dfa7c  01 30 a0 03                                      moveq r3, #1
005dfa80  00 30 ca 05                                      strbeq r3, [sl]
005dfa84  00 50 a0 01                                      moveq r5, r0
005dfa88  05 00 00 0a                                      beq #0x5dfaa4
005dfa8c  54 10 9f e5                                      ldr r1, [pc, #0x54]
005dfa90  05 00 a0 e1                                      mov r0, r5
005dfa94  01 10 8f e0                                      add r1, pc, r1
005dfa98  1f ba f4 eb                                      bl #0x30e31c
005dfa9c  00 00 50 e3                                      cmp r0, #0
005dfaa0  01 50 85 02                                      addeq r5, r5, #1
005dfaa4  05 00 a0 e1                                      mov r0, r5
005dfaa8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005dfaac  06 41 84 e0                                      add r4, r4, r6, lsl #2
005dfab0  08 00 a0 e1                                      mov r0, r8
005dfab4  08 10 94 e5                                      ldr r1, [r4, #8]
005dfab8  05 20 a0 e1                                      mov r2, r5
005dfabc  81 ff ff eb                                      bl #0x5df8c8
005dfac0  f7 ff ff ea                                      b #0x5dfaa4
005dfac4  06 41 84 e0                                      add r4, r4, r6, lsl #2
005dfac8  08 00 a0 e1                                      mov r0, r8
005dfacc  10 10 94 e5                                      ldr r1, [r4, #0x10]
005dfad0  07 20 a0 e1                                      mov r2, r7
005dfad4  7b ff ff eb                                      bl #0x5df8c8
005dfad8  07 50 a0 e1                                      mov r5, r7
005dfadc  f0 ff ff ea                                      b #0x5dfaa4
; mapping-symbol data/literal pool
005dfae0  04 7a 37 00 d8 c4 2f 00 3c 1b 30 00              .byte 0x04, 0x7a, 0x37, 0x00, 0xd8, 0xc4, 0x2f, 0x00, 0x3c, 0x1b, 0x30, 0x00

; FUNCTION 0x005dfaec, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::IMaterialTechniqueMapsReader
; alias: _ZN6glitch5video28IMaterialTechniqueMapsReaderD0Ev
; demangled: glitch::video::IMaterialTechniqueMapsReader::~IMaterialTechniqueMapsReader()
; decoder-mode: arm
005dfaec  10 40 2d e9                                      push {r4, lr}
005dfaf0  00 40 a0 e1                                      mov r4, r0
005dfaf4  ad ff ff eb                                      bl #0x5df9b0
005dfaf8  04 00 a0 e1                                      mov r0, r4
005dfafc  eb b9 f4 eb                                      bl #0x30e2b0
005dfb00  04 00 a0 e1                                      mov r0, r4
005dfb04  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005dfb08, declared_size=188, range_size=188, mode=arm
; class-group: glitch::video::IMaterialTechniqueMapsReader
; alias: _ZN6glitch5video28IMaterialTechniqueMapsReader10printErrorEPKcS3_
; demangled: glitch::video::IMaterialTechniqueMapsReader::printError(char const*, char const*)
; decoder-mode: arm
005dfb08  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005dfb0c  00 50 52 e2                                      subs r5, r2, #0
005dfb10  0c d0 4d e2                                      sub sp, sp, #0xc
005dfb14  00 60 a0 e1                                      mov r6, r0
005dfb18  02 00 00 0a                                      beq #0x5dfb28
005dfb1c  d0 30 d5 e1                                      ldrsb r3, [r5]
005dfb20  00 00 53 e3                                      cmp r3, #0
005dfb24  04 00 00 1a                                      bne #0x5dfb3c
005dfb28  18 00 96 e5                                      ldr r0, [r6, #0x18]
005dfb2c  03 20 a0 e3                                      mov r2, #3
005dfb30  0c d0 8d e2                                      add sp, sp, #0xc
005dfb34  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
005dfb38  6a ac 00 ea                                      b #0x60ace8
005dfb3c  01 00 a0 e1                                      mov r0, r1
005dfb40  04 10 8d e5                                      str r1, [sp, #4]
005dfb44  c2 b8 f4 eb                                      bl #0x30de54
005dfb48  00 40 a0 e1                                      mov r4, r0
005dfb4c  05 00 a0 e1                                      mov r0, r5
005dfb50  bf b8 f4 eb                                      bl #0x30de54
005dfb54  00 00 84 e0                                      add r0, r4, r0
005dfb58  03 00 80 e2                                      add r0, r0, #3
005dfb5c  a4 52 fd eb                                      bl #0x5345f4
005dfb60  04 10 9d e5                                      ldr r1, [sp, #4]
005dfb64  00 40 a0 e1                                      mov r4, r0
005dfb68  6c ba f4 eb                                      bl #0x30e520
005dfb6c  00 70 a0 e1                                      mov r7, r0
005dfb70  b7 b8 f4 eb                                      bl #0x30de54
005dfb74  3a 20 a0 e3                                      mov r2, #0x3a
005dfb78  00 30 87 e0                                      add r3, r7, r0
005dfb7c  00 20 c7 e7                                      strb r2, [r7, r0]
005dfb80  00 20 a0 e3                                      mov r2, #0
005dfb84  01 20 c3 e5                                      strb r2, [r3, #1]
005dfb88  05 10 a0 e1                                      mov r1, r5
005dfb8c  07 00 a0 e1                                      mov r0, r7
005dfb90  7e bc f4 eb                                      bl #0x30ed90
005dfb94  18 00 96 e5                                      ldr r0, [r6, #0x18]
005dfb98  04 10 a0 e1                                      mov r1, r4
005dfb9c  03 20 a0 e3                                      mov r2, #3
005dfba0  50 ac 00 eb                                      bl #0x60ace8
005dfba4  00 00 54 e3                                      cmp r4, #0
005dfba8  03 00 00 0a                                      beq #0x5dfbbc
005dfbac  04 00 a0 e1                                      mov r0, r4
005dfbb0  0c d0 8d e2                                      add sp, sp, #0xc
005dfbb4  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
005dfbb8  b2 52 fd ea                                      b #0x534688
005dfbbc  0c d0 8d e2                                      add sp, sp, #0xc
005dfbc0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x005dfbc4, declared_size=760, range_size=760, mode=arm
; class-group: glitch::video::IMaterialTechniqueMapsReader
; alias: _ZN6glitch5video28IMaterialTechniqueMapsReader15processRendererEPNS_2io13IIrrXMLReaderIcNS_17IReferenceCountedEEEPNS_7collada15CColladaFactoryE
; demangled: glitch::video::IMaterialTechniqueMapsReader::processRenderer(glitch::io::IIrrXMLReader<char, glitch::IReferenceCounted>*, glitch::collada::CColladaFactory*)
; decoder-mode: arm
005dfbc4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005dfbc8  b0 c1 d0 e1                                      ldrh ip, [r0, #0x10]
005dfbcc  cc 72 9f e5                                      ldr r7, [pc, #0x2cc]
005dfbd0  ff 3f 0f e3                                      movw r3, #0xffff
005dfbd4  03 00 5c e1                                      cmp ip, r3
005dfbd8  07 70 8f e0                                      add r7, pc, r7
005dfbdc  38 d0 4d e2                                      sub sp, sp, #0x38
005dfbe0  00 40 a0 e1                                      mov r4, r0
005dfbe4  01 50 a0 e1                                      mov r5, r1
005dfbe8  02 80 a0 e1                                      mov r8, r2
005dfbec  09 00 00 0a                                      beq #0x5dfc18
005dfbf0  ac 12 9f e5                                      ldr r1, [pc, #0x2ac]
005dfbf4  01 30 a0 e3                                      mov r3, #1
005dfbf8  16 30 c0 e5                                      strb r3, [r0, #0x16]
005dfbfc  01 10 8f e0                                      add r1, pc, r1
005dfc00  00 30 90 e5                                      ldr r3, [r0]
005dfc04  00 20 a0 e3                                      mov r2, #0
005dfc08  0f e0 a0 e1                                      mov lr, pc
005dfc0c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005dfc10  38 d0 8d e2                                      add sp, sp, #0x38
005dfc14  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005dfc18  00 30 91 e5                                      ldr r3, [r1]
005dfc1c  01 00 a0 e1                                      mov r0, r1
005dfc20  80 12 9f e5                                      ldr r1, [pc, #0x280]
005dfc24  01 10 8f e0                                      add r1, pc, r1
005dfc28  0f e0 a0 e1                                      mov lr, pc
005dfc2c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005dfc30  00 90 50 e2                                      subs sb, r0, #0
005dfc34  60 00 00 0a                                      beq #0x5dfdbc
005dfc38  23 10 a0 e3                                      mov r1, #0x23
005dfc3c  f9 bb f4 eb                                      bl #0x30ec28
005dfc40  00 60 50 e2                                      subs r6, r0, #0
005dfc44  06 50 a0 01                                      moveq r5, r6
005dfc48  08 00 00 0a                                      beq #0x5dfc70
005dfc4c  06 a0 69 e0                                      rsb sl, sb, r6
005dfc50  01 00 8a e2                                      add r0, sl, #1
005dfc54  66 52 fd eb                                      bl #0x5345f4
005dfc58  09 10 a0 e1                                      mov r1, sb
005dfc5c  0a 20 a0 e1                                      mov r2, sl
005dfc60  00 50 a0 e1                                      mov r5, r0
005dfc64  6e b8 f4 eb                                      bl #0x30de24
005dfc68  00 30 a0 e3                                      mov r3, #0
005dfc6c  0a 30 c5 e7                                      strb r3, [r5, sl]
005dfc70  01 60 86 e2                                      add r6, r6, #1
005dfc74  04 00 94 e5                                      ldr r0, [r4, #4]
005dfc78  06 10 a0 e1                                      mov r1, r6
005dfc7c  10 e7 ff eb                                      bl #0x5d98c4
005dfc80  ff 3f 0f e3                                      movw r3, #0xffff
005dfc84  03 00 50 e1                                      cmp r0, r3
005dfc88  b0 01 c4 e1                                      strh r0, [r4, #0x10]
005dfc8c  0d 00 00 0a                                      beq #0x5dfcc8
005dfc90  00 00 55 e3                                      cmp r5, #0
005dfc94  01 00 00 0a                                      beq #0x5dfca0
005dfc98  05 00 a0 e1                                      mov r0, r5
005dfc9c  79 52 fd eb                                      bl #0x534688
005dfca0  b0 01 d4 e1                                      ldrh r0, [r4, #0x10]
005dfca4  ff 3f 0f e3                                      movw r3, #0xffff
005dfca8  03 00 50 e1                                      cmp r0, r3
005dfcac  d7 ff ff 1a                                      bne #0x5dfc10
005dfcb0  f4 11 9f e5                                      ldr r1, [pc, #0x1f4]
005dfcb4  04 00 a0 e1                                      mov r0, r4
005dfcb8  06 20 a0 e1                                      mov r2, r6
005dfcbc  01 10 8f e0                                      add r1, pc, r1
005dfcc0  00 ff ff eb                                      bl #0x5df8c8
005dfcc4  d1 ff ff ea                                      b #0x5dfc10
005dfcc8  00 00 55 e3                                      cmp r5, #0
005dfccc  f3 ff ff 0a                                      beq #0x5dfca0
005dfcd0  d0 30 d5 e1                                      ldrsb r3, [r5]
005dfcd4  00 00 53 e3                                      cmp r3, #0
005dfcd8  ec ff ff 0a                                      beq #0x5dfc90
005dfcdc  cc 31 9f e5                                      ldr r3, [pc, #0x1cc]
005dfce0  00 00 58 e3                                      cmp r8, #0
005dfce4  03 20 97 e7                                      ldr r2, [r7, r3]
005dfce8  00 30 a0 e3                                      mov r3, #0
005dfcec  2c 30 8d e5                                      str r3, [sp, #0x2c]
005dfcf0  30 20 8d e5                                      str r2, [sp, #0x30]
005dfcf4  44 00 00 0a                                      beq #0x5dfe0c
005dfcf8  24 70 8d e2                                      add r7, sp, #0x24
005dfcfc  08 20 a0 e1                                      mov r2, r8
005dfd00  07 00 a0 e1                                      mov r0, r7
005dfd04  05 10 a0 e1                                      mov r1, r5
005dfd08  53 bd 00 eb                                      bl #0x60f25c
005dfd0c  24 30 9d e5                                      ldr r3, [sp, #0x24]
005dfd10  28 20 9d e5                                      ldr r2, [sp, #0x28]
005dfd14  00 00 53 e3                                      cmp r3, #0
005dfd18  18 20 8d e5                                      str r2, [sp, #0x18]
005dfd1c  14 30 8d e5                                      str r3, [sp, #0x14]
005dfd20  04 00 00 0a                                      beq #0x5dfd38
005dfd24  04 20 93 e5                                      ldr r2, [r3, #4]
005dfd28  00 00 52 e3                                      cmp r2, #0
005dfd2c  01 20 82 12                                      addne r2, r2, #1
005dfd30  04 20 83 15                                      strne r2, [r3, #4]
005dfd34  14 30 9d 15                                      ldrne r3, [sp, #0x14]
005dfd38  18 20 9d e5                                      ldr r2, [sp, #0x18]
005dfd3c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005dfd40  2c 30 8d e5                                      str r3, [sp, #0x2c]
005dfd44  30 30 9d e5                                      ldr r3, [sp, #0x30]
005dfd48  14 00 8d e2                                      add r0, sp, #0x14
005dfd4c  14 10 8d e5                                      str r1, [sp, #0x14]
005dfd50  18 30 8d e5                                      str r3, [sp, #0x18]
005dfd54  30 20 8d e5                                      str r2, [sp, #0x30]
005dfd58  c5 e5 00 eb                                      bl #0x619474
005dfd5c  07 00 a0 e1                                      mov r0, r7
005dfd60  c3 e5 00 eb                                      bl #0x619474
005dfd64  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005dfd68  00 00 53 e3                                      cmp r3, #0
005dfd6c  41 00 00 0a                                      beq #0x5dfe78
005dfd70  04 30 94 e5                                      ldr r3, [r4, #4]
005dfd74  34 70 8d e2                                      add r7, sp, #0x34
005dfd78  2c 80 8d e2                                      add r8, sp, #0x2c
005dfd7c  28 20 93 e5                                      ldr r2, [r3, #0x28]
005dfd80  00 c0 a0 e3                                      mov ip, #0
005dfd84  07 00 a0 e1                                      mov r0, r7
005dfd88  08 10 a0 e1                                      mov r1, r8
005dfd8c  06 30 a0 e1                                      mov r3, r6
005dfd90  00 c0 8d e5                                      str ip, [sp]
005dfd94  dc ec 00 eb                                      bl #0x61b10c
005dfd98  34 30 9d e5                                      ldr r3, [sp, #0x34]
005dfd9c  07 00 a0 e1                                      mov r0, r7
005dfda0  00 00 53 e3                                      cmp r3, #0
005dfda4  bc 30 d3 11                                      ldrhne r3, [r3, #0xc]
005dfda8  b0 31 c4 11                                      strhne r3, [r4, #0x10]
005dfdac  41 c9 f5 eb                                      bl #0x3522b8
005dfdb0  08 00 a0 e1                                      mov r0, r8
005dfdb4  ae e5 00 eb                                      bl #0x619474
005dfdb8  b4 ff ff ea                                      b #0x5dfc90
005dfdbc  05 10 a0 e1                                      mov r1, r5
005dfdc0  04 00 a0 e1                                      mov r0, r4
005dfdc4  01 20 a0 e3                                      mov r2, #1
005dfdc8  14 30 84 e2                                      add r3, r4, #0x14
005dfdcc  16 ff ff eb                                      bl #0x5dfa2c
005dfdd0  00 60 50 e2                                      subs r6, r0, #0
005dfdd4  04 00 00 0a                                      beq #0x5dfdec
005dfdd8  04 00 94 e5                                      ldr r0, [r4, #4]
005dfddc  06 10 a0 e1                                      mov r1, r6
005dfde0  b7 e6 ff eb                                      bl #0x5d98c4
005dfde4  b0 01 c4 e1                                      strh r0, [r4, #0x10]
005dfde8  ad ff ff ea                                      b #0x5dfca4
005dfdec  14 20 d4 e5                                      ldrb r2, [r4, #0x14]
005dfdf0  00 00 52 e3                                      cmp r2, #0
005dfdf4  85 ff ff 1a                                      bne #0x5dfc10
005dfdf8  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
005dfdfc  04 00 a0 e1                                      mov r0, r4
005dfe00  01 10 8f e0                                      add r1, pc, r1
005dfe04  af fe ff eb                                      bl #0x5df8c8
005dfe08  80 ff ff ea                                      b #0x5dfc10
005dfe0c  1c 70 8d e2                                      add r7, sp, #0x1c
005dfe10  07 00 a0 e1                                      mov r0, r7
005dfe14  05 10 a0 e1                                      mov r1, r5
005dfe18  0f bd 00 eb                                      bl #0x60f25c
005dfe1c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005dfe20  20 20 9d e5                                      ldr r2, [sp, #0x20]
005dfe24  00 00 53 e3                                      cmp r3, #0
005dfe28  10 20 8d e5                                      str r2, [sp, #0x10]
005dfe2c  0c 30 8d e5                                      str r3, [sp, #0xc]
005dfe30  04 00 00 0a                                      beq #0x5dfe48
005dfe34  04 20 93 e5                                      ldr r2, [r3, #4]
005dfe38  00 00 52 e3                                      cmp r2, #0
005dfe3c  01 20 82 12                                      addne r2, r2, #1
005dfe40  04 20 83 15                                      strne r2, [r3, #4]
005dfe44  0c 30 9d 15                                      ldrne r3, [sp, #0xc]
005dfe48  10 20 9d e5                                      ldr r2, [sp, #0x10]
005dfe4c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005dfe50  2c 30 8d e5                                      str r3, [sp, #0x2c]
005dfe54  30 30 9d e5                                      ldr r3, [sp, #0x30]
005dfe58  0c 00 8d e2                                      add r0, sp, #0xc
005dfe5c  0c 10 8d e5                                      str r1, [sp, #0xc]
005dfe60  10 30 8d e5                                      str r3, [sp, #0x10]
005dfe64  30 20 8d e5                                      str r2, [sp, #0x30]
005dfe68  81 e5 00 eb                                      bl #0x619474
005dfe6c  07 00 a0 e1                                      mov r0, r7
005dfe70  7f e5 00 eb                                      bl #0x619474
005dfe74  ba ff ff ea                                      b #0x5dfd64
005dfe78  38 10 9f e5                                      ldr r1, [pc, #0x38]
005dfe7c  04 00 a0 e1                                      mov r0, r4
005dfe80  05 20 a0 e1                                      mov r2, r5
005dfe84  01 10 8f e0                                      add r1, pc, r1
005dfe88  8e fe ff eb                                      bl #0x5df8c8
005dfe8c  2c 00 8d e2                                      add r0, sp, #0x2c
005dfe90  77 e5 00 eb                                      bl #0x619474
005dfe94  05 00 a0 e1                                      mov r0, r5
005dfe98  fa 51 fd eb                                      bl #0x534688
005dfe9c  5b ff ff ea                                      b #0x5dfc10
; mapping-symbol data/literal pool
005dfea0  b8 4e 3b 00 dc 19 30 00 cc 19 30 00 74 19 30 00  .byte 0xb8, 0x4e, 0x3b, 0x00, 0xdc, 0x19, 0x30, 0x00, 0xcc, 0x19, 0x30, 0x00, 0x74, 0x19, 0x30, 0x00
005dfeb0  10 47 00 00 10 18 30 00 74 17 30 00              .byte 0x10, 0x47, 0x00, 0x00, 0x10, 0x18, 0x30, 0x00, 0x74, 0x17, 0x30, 0x00

; FUNCTION 0x005dfebc, declared_size=348, range_size=348, mode=arm
; class-group: glitch::video::IMaterialTechniqueMapsReader
; alias: _ZN6glitch5video28IMaterialTechniqueMapsReader15processMapGroupENS1_11E_MAP_GROUPEPNS_2io13IIrrXMLReaderIcNS_17IReferenceCountedEEE
; demangled: glitch::video::IMaterialTechniqueMapsReader::processMapGroup(glitch::video::IMaterialTechniqueMapsReader::E_MAP_GROUP, glitch::io::IIrrXMLReader<char, glitch::IReferenceCounted>*)
; decoder-mode: arm
005dfebc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005dfec0  02 60 81 e2                                      add r6, r1, #2
005dfec4  06 31 90 e7                                      ldr r3, [r0, r6, lsl #2]
005dfec8  08 d0 4d e2                                      sub sp, sp, #8
005dfecc  01 50 a0 e1                                      mov r5, r1
005dfed0  01 00 73 e3                                      cmn r3, #1
005dfed4  00 40 a0 e1                                      mov r4, r0
005dfed8  1f 00 00 1a                                      bne #0x5dff5c
005dfedc  01 70 81 e2                                      add r7, r1, #1
005dfee0  01 70 07 e2                                      and r7, r7, #1
005dfee4  02 70 87 e2                                      add r7, r7, #2
005dfee8  07 31 90 e7                                      ldr r3, [r0, r7, lsl #2]
005dfeec  01 00 73 e3                                      cmn r3, #1
005dfef0  23 00 00 0a                                      beq #0x5dff84
005dfef4  05 30 84 e0                                      add r3, r4, r5
005dfef8  02 10 a0 e1                                      mov r1, r2
005dfefc  12 30 83 e2                                      add r3, r3, #0x12
005dff00  04 00 a0 e1                                      mov r0, r4
005dff04  01 20 a0 e3                                      mov r2, #1
005dff08  c7 fe ff eb                                      bl #0x5dfa2c
005dff0c  00 80 50 e2                                      subs r8, r0, #0
005dff10  19 00 00 0a                                      beq #0x5dff7c
005dff14  00 30 94 e5                                      ldr r3, [r4]
005dff18  04 00 a0 e1                                      mov r0, r4
005dff1c  05 10 a0 e1                                      mov r1, r5
005dff20  08 20 a0 e1                                      mov r2, r8
005dff24  0f e0 a0 e1                                      mov lr, pc
005dff28  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005dff2c  01 00 70 e3                                      cmn r0, #1
005dff30  06 01 84 e7                                      str r0, [r4, r6, lsl #2]
005dff34  2d 00 00 0a                                      beq #0x5dfff0
005dff38  07 31 94 e7                                      ldr r3, [r4, r7, lsl #2]
005dff3c  01 00 73 e3                                      cmn r3, #1
005dff40  0d 00 00 0a                                      beq #0x5dff7c
005dff44  04 10 a0 e1                                      mov r1, r4
005dff48  08 30 91 e4                                      ldr r3, [r1], #8
005dff4c  04 00 a0 e1                                      mov r0, r4
005dff50  0f e0 a0 e1                                      mov lr, pc
005dff54  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005dff58  07 00 00 ea                                      b #0x5dff7c
005dff5c  ac 10 9f e5                                      ldr r1, [pc, #0xac]
005dff60  01 30 a0 e3                                      mov r3, #1
005dff64  16 30 c0 e5                                      strb r3, [r0, #0x16]
005dff68  01 10 8f e0                                      add r1, pc, r1
005dff6c  00 30 90 e5                                      ldr r3, [r0]
005dff70  00 20 a0 e3                                      mov r2, #0
005dff74  0f e0 a0 e1                                      mov lr, pc
005dff78  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005dff7c  08 d0 8d e2                                      add sp, sp, #8
005dff80  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005dff84  b0 11 d0 e1                                      ldrh r1, [r0, #0x10]
005dff88  ff 3f 0f e3                                      movw r3, #0xffff
005dff8c  03 00 51 e1                                      cmp r1, r3
005dff90  d7 ff ff 1a                                      bne #0x5dfef4
005dff94  05 30 80 e0                                      add r3, r0, r5
005dff98  02 10 a0 e1                                      mov r1, r2
005dff9c  12 30 83 e2                                      add r3, r3, #0x12
005dffa0  00 20 a0 e3                                      mov r2, #0
005dffa4  a0 fe ff eb                                      bl #0x5dfa2c
005dffa8  00 20 50 e2                                      subs r2, r0, #0
005dffac  f2 ff ff 0a                                      beq #0x5dff7c
005dffb0  00 30 94 e5                                      ldr r3, [r4]
005dffb4  04 00 a0 e1                                      mov r0, r4
005dffb8  05 10 a0 e1                                      mov r1, r5
005dffbc  0f e0 a0 e1                                      mov lr, pc
005dffc0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005dffc4  00 00 55 e3                                      cmp r5, #0
005dffc8  00 30 a0 e1                                      mov r3, r0
005dffcc  06 01 84 e7                                      str r0, [r4, r6, lsl #2]
005dffd0  e9 ff ff 1a                                      bne #0x5dff7c
005dffd4  00 20 94 e5                                      ldr r2, [r4]
005dffd8  04 00 a0 e1                                      mov r0, r4
005dffdc  0d 10 a0 e1                                      mov r1, sp
005dffe0  18 20 92 e5                                      ldr r2, [r2, #0x18]
005dffe4  28 00 8d e8                                      stm sp, {r3, r5}
005dffe8  32 ff 2f e1                                      blx r2
005dffec  e2 ff ff ea                                      b #0x5dff7c
005dfff0  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
005dfff4  04 00 a0 e1                                      mov r0, r4
005dfff8  08 20 a0 e1                                      mov r2, r8
005dfffc  03 30 8f e0                                      add r3, pc, r3
005e0000  05 31 83 e0                                      add r3, r3, r5, lsl #2
005e0004  18 10 93 e5                                      ldr r1, [r3, #0x18]
005e0008  2e fe ff eb                                      bl #0x5df8c8
005e000c  da ff ff ea                                      b #0x5dff7c
; mapping-symbol data/literal pool
005e0010  70 16 30 00 44 74 37 00                          .byte 0x70, 0x16, 0x30, 0x00, 0x44, 0x74, 0x37, 0x00

; FUNCTION 0x005e0018, declared_size=664, range_size=664, mode=arm
; class-group: glitch::video::IMaterialTechniqueMapsReader
; alias: _ZN6glitch5video28IMaterialTechniqueMapsReader15getTechniqueIDsEtPKcRhS3_S4_
; demangled: glitch::video::IMaterialTechniqueMapsReader::getTechniqueIDs(unsigned short, char const*, unsigned char&, char const*, unsigned char&)
; decoder-mode: arm
005e0018  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005e001c  70 42 9f e5                                      ldr r4, [pc, #0x270]
005e0020  70 62 9f e5                                      ldr r6, [pc, #0x270]
005e0024  00 50 a0 e1                                      mov r5, r0
005e0028  04 40 8f e0                                      add r4, pc, r4
005e002c  06 c0 94 e7                                      ldr ip, [r4, r6]
005e0030  04 00 90 e5                                      ldr r0, [r0, #4]
005e0034  a0 d0 4d e2                                      sub sp, sp, #0xa0
005e0038  00 c0 9c e5                                      ldr ip, [ip]
005e003c  02 70 a0 e1                                      mov r7, r2
005e0040  03 80 a0 e1                                      mov r8, r3
005e0044  9c c0 8d e5                                      str ip, [sp, #0x9c]
005e0048  18 30 90 e5                                      ldr r3, [r0, #0x18]
005e004c  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
005e0050  c0 a0 9d e5                                      ldr sl, [sp, #0xc0]
005e0054  c4 90 9d e5                                      ldr sb, [sp, #0xc4]
005e0058  02 20 63 e0                                      rsb r2, r3, r2
005e005c  c2 01 51 e1                                      cmp r1, r2, asr #3
005e0060  81 11 83 30                                      addlo r1, r3, r1, lsl #3
005e0064  30 32 9f 25                                      ldrhs r3, [pc, #0x230]
005e0068  03 10 94 27                                      ldrhs r1, [r4, r3]
005e006c  00 30 91 e5                                      ldr r3, [r1]
005e0070  00 00 53 e3                                      cmp r3, #0
005e0074  00 30 8d e5                                      str r3, [sp]
005e0078  00 20 93 15                                      ldrne r2, [r3]
005e007c  01 20 82 12                                      addne r2, r2, #1
005e0080  00 20 83 15                                      strne r2, [r3]
005e0084  00 00 57 e3                                      cmp r7, #0
005e0088  48 00 00 0a                                      beq #0x5e01b0
005e008c  00 00 9d e5                                      ldr r0, [sp]
005e0090  07 10 a0 e1                                      mov r1, r7
005e0094  9e d1 ff eb                                      bl #0x5d4714
005e0098  ff 00 50 e3                                      cmp r0, #0xff
005e009c  00 00 c8 e5                                      strb r0, [r8]
005e00a0  4a 00 00 0a                                      beq #0x5e01d0
005e00a4  00 00 9d e5                                      ldr r0, [sp]
005e00a8  0a 10 a0 e1                                      mov r1, sl
005e00ac  98 d1 ff eb                                      bl #0x5d4714
005e00b0  ff 00 50 e3                                      cmp r0, #0xff
005e00b4  00 00 c9 e5                                      strb r0, [sb]
005e00b8  01 50 a0 13                                      movne r5, #1
005e00bc  09 00 00 0a                                      beq #0x5e00e8
005e00c0  0d 00 a0 e1                                      mov r0, sp
005e00c4  7b c8 f5 eb                                      bl #0x3522b8
005e00c8  06 30 94 e7                                      ldr r3, [r4, r6]
005e00cc  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
005e00d0  05 00 a0 e1                                      mov r0, r5
005e00d4  00 30 93 e5                                      ldr r3, [r3]
005e00d8  03 00 52 e1                                      cmp r2, r3
005e00dc  6b 00 00 1a                                      bne #0x5e0290
005e00e0  a0 d0 8d e2                                      add sp, sp, #0xa0
005e00e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e00e8  b0 21 d5 e1                                      ldrh r2, [r5, #0x10]
005e00ec  ff 3f 0f e3                                      movw r3, #0xffff
005e00f0  03 00 52 e1                                      cmp r2, r3
005e00f4  60 00 00 0a                                      beq #0x5e027c
005e00f8  3c 70 8d e2                                      add r7, sp, #0x3c
005e00fc  0a 10 a0 e1                                      mov r1, sl
005e0100  04 20 8d e2                                      add r2, sp, #4
005e0104  07 00 a0 e1                                      mov r0, r7
005e0108  cb 17 f5 eb                                      bl #0x32603c
005e010c  8c 21 9f e5                                      ldr r2, [pc, #0x18c]
005e0110  24 80 8d e2                                      add r8, sp, #0x24
005e0114  08 00 a0 e1                                      mov r0, r8
005e0118  02 20 8f e0                                      add r2, pc, r2
005e011c  07 10 a0 e1                                      mov r1, r7
005e0120  e2 35 fe eb                                      bl #0x56d8b0
005e0124  00 30 9d e5                                      ldr r3, [sp]
005e0128  0c a0 8d e2                                      add sl, sp, #0xc
005e012c  0a 00 a0 e1                                      mov r0, sl
005e0130  08 20 93 e5                                      ldr r2, [r3, #8]
005e0134  08 10 a0 e1                                      mov r1, r8
005e0138  dc 35 fe eb                                      bl #0x56d8b0
005e013c  60 11 9f e5                                      ldr r1, [pc, #0x160]
005e0140  01 30 a0 e3                                      mov r3, #1
005e0144  20 20 9d e5                                      ldr r2, [sp, #0x20]
005e0148  05 00 a0 e1                                      mov r0, r5
005e014c  16 30 c5 e5                                      strb r3, [r5, #0x16]
005e0150  01 10 8f e0                                      add r1, pc, r1
005e0154  00 30 95 e5                                      ldr r3, [r5]
005e0158  0f e0 a0 e1                                      mov lr, pc
005e015c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005e0160  20 00 9d e5                                      ldr r0, [sp, #0x20]
005e0164  0a 00 50 e1                                      cmp r0, sl
005e0168  02 00 00 0a                                      beq #0x5e0178
005e016c  00 00 50 e3                                      cmp r0, #0
005e0170  00 00 00 0a                                      beq #0x5e0178
005e0174  b5 c0 f4 eb                                      bl #0x310450
005e0178  38 00 9d e5                                      ldr r0, [sp, #0x38]
005e017c  08 00 50 e1                                      cmp r0, r8
005e0180  02 00 00 0a                                      beq #0x5e0190
005e0184  00 00 50 e3                                      cmp r0, #0
005e0188  00 00 00 0a                                      beq #0x5e0190
005e018c  af c0 f4 eb                                      bl #0x310450
005e0190  50 00 9d e5                                      ldr r0, [sp, #0x50]
005e0194  07 00 50 e1                                      cmp r0, r7
005e0198  0a 00 00 0a                                      beq #0x5e01c8
005e019c  00 00 50 e3                                      cmp r0, #0
005e01a0  08 00 00 0a                                      beq #0x5e01c8
005e01a4  a9 c0 f4 eb                                      bl #0x310450
005e01a8  00 50 a0 e3                                      mov r5, #0
005e01ac  c3 ff ff ea                                      b #0x5e00c0
005e01b0  00 30 e0 e3                                      mvn r3, #0
005e01b4  00 30 c8 e5                                      strb r3, [r8]
005e01b8  b9 ff ff ea                                      b #0x5e00a4
005e01bc  15 30 d5 e5                                      ldrb r3, [r5, #0x15]
005e01c0  00 00 53 e3                                      cmp r3, #0
005e01c4  05 00 00 0a                                      beq #0x5e01e0
005e01c8  00 50 a0 e3                                      mov r5, #0
005e01cc  bb ff ff ea                                      b #0x5e00c0
005e01d0  b0 21 d5 e1                                      ldrh r2, [r5, #0x10]
005e01d4  ff 3f 0f e3                                      movw r3, #0xffff
005e01d8  03 00 52 e1                                      cmp r2, r3
005e01dc  f6 ff ff 0a                                      beq #0x5e01bc
005e01e0  84 80 8d e2                                      add r8, sp, #0x84
005e01e4  07 10 a0 e1                                      mov r1, r7
005e01e8  08 20 8d e2                                      add r2, sp, #8
005e01ec  08 00 a0 e1                                      mov r0, r8
005e01f0  91 17 f5 eb                                      bl #0x32603c
005e01f4  ac 20 9f e5                                      ldr r2, [pc, #0xac]
005e01f8  6c 70 8d e2                                      add r7, sp, #0x6c
005e01fc  07 00 a0 e1                                      mov r0, r7
005e0200  02 20 8f e0                                      add r2, pc, r2
005e0204  08 10 a0 e1                                      mov r1, r8
005e0208  a8 35 fe eb                                      bl #0x56d8b0
005e020c  00 30 9d e5                                      ldr r3, [sp]
005e0210  54 a0 8d e2                                      add sl, sp, #0x54
005e0214  0a 00 a0 e1                                      mov r0, sl
005e0218  08 20 93 e5                                      ldr r2, [r3, #8]
005e021c  07 10 a0 e1                                      mov r1, r7
005e0220  a2 35 fe eb                                      bl #0x56d8b0
005e0224  80 10 9f e5                                      ldr r1, [pc, #0x80]
005e0228  05 00 a0 e1                                      mov r0, r5
005e022c  68 20 9d e5                                      ldr r2, [sp, #0x68]
005e0230  01 10 8f e0                                      add r1, pc, r1
005e0234  a3 fd ff eb                                      bl #0x5df8c8
005e0238  68 00 9d e5                                      ldr r0, [sp, #0x68]
005e023c  0a 00 50 e1                                      cmp r0, sl
005e0240  02 00 00 0a                                      beq #0x5e0250
005e0244  00 00 50 e3                                      cmp r0, #0
005e0248  00 00 00 0a                                      beq #0x5e0250
005e024c  7f c0 f4 eb                                      bl #0x310450
005e0250  80 00 9d e5                                      ldr r0, [sp, #0x80]
005e0254  07 00 50 e1                                      cmp r0, r7
005e0258  02 00 00 0a                                      beq #0x5e0268
005e025c  00 00 50 e3                                      cmp r0, #0
005e0260  00 00 00 0a                                      beq #0x5e0268
005e0264  79 c0 f4 eb                                      bl #0x310450
005e0268  98 00 9d e5                                      ldr r0, [sp, #0x98]
005e026c  08 00 50 e1                                      cmp r0, r8
005e0270  c9 ff ff 1a                                      bne #0x5e019c
005e0274  00 50 a0 e3                                      mov r5, #0
005e0278  90 ff ff ea                                      b #0x5e00c0
005e027c  15 30 d5 e5                                      ldrb r3, [r5, #0x15]
005e0280  00 00 53 e3                                      cmp r3, #0
005e0284  9b ff ff 0a                                      beq #0x5e00f8
005e0288  00 50 a0 e3                                      mov r5, #0
005e028c  8b ff ff ea                                      b #0x5e00c0
005e0290  1e b8 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005e0294  68 4a 3b 00 ac 40 00 00 dc 30 00 00 30 15 30 00  .byte 0x68, 0x4a, 0x3b, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0x30, 0x00, 0x00, 0x30, 0x15, 0x30, 0x00
005e02a4  08 15 30 00 48 14 30 00 28 14 30 00              .byte 0x08, 0x15, 0x30, 0x00, 0x48, 0x14, 0x30, 0x00, 0x28, 0x14, 0x30, 0x00

; FUNCTION 0x005e02b0, declared_size=456, range_size=456, mode=arm
; class-group: glitch::video::IMaterialTechniqueMapsReader
; alias: _ZN6glitch5video28IMaterialTechniqueMapsReader11processRuleEPNS_2io13IIrrXMLReaderIcNS_17IReferenceCountedEEE
; demangled: glitch::video::IMaterialTechniqueMapsReader::processRule(glitch::io::IIrrXMLReader<char, glitch::IReferenceCounted>*)
; decoder-mode: arm
005e02b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e02b4  14 30 d0 e5                                      ldrb r3, [r0, #0x14]
005e02b8  10 d0 4d e2                                      sub sp, sp, #0x10
005e02bc  00 40 a0 e1                                      mov r4, r0
005e02c0  00 00 53 e3                                      cmp r3, #0
005e02c4  01 60 a0 e1                                      mov r6, r1
005e02c8  03 00 00 1a                                      bne #0x5e02dc
005e02cc  b0 21 d0 e1                                      ldrh r2, [r0, #0x10]
005e02d0  ff 3f 0f e3                                      movw r3, #0xffff
005e02d4  03 00 52 e1                                      cmp r2, r3
005e02d8  56 00 00 0a                                      beq #0x5e0438
005e02dc  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005e02e0  00 00 53 e3                                      cmp r3, #0
005e02e4  08 00 00 1a                                      bne #0x5e030c
005e02e8  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
005e02ec  00 00 53 e3                                      cmp r3, #0
005e02f0  05 00 00 1a                                      bne #0x5e030c
005e02f4  08 30 94 e5                                      ldr r3, [r4, #8]
005e02f8  01 00 73 e3                                      cmn r3, #1
005e02fc  4d 00 00 0a                                      beq #0x5e0438
005e0300  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005e0304  01 00 73 e3                                      cmn r3, #1
005e0308  4a 00 00 0a                                      beq #0x5e0438
005e030c  4c 81 9f e5                                      ldr r8, [pc, #0x14c]
005e0310  00 30 96 e5                                      ldr r3, [r6]
005e0314  06 00 a0 e1                                      mov r0, r6
005e0318  08 80 8f e0                                      add r8, pc, r8
005e031c  08 10 a0 e1                                      mov r1, r8
005e0320  0f e0 a0 e1                                      mov lr, pc
005e0324  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005e0328  34 71 9f e5                                      ldr r7, [pc, #0x134]
005e032c  00 50 a0 e1                                      mov r5, r0
005e0330  00 30 96 e5                                      ldr r3, [r6]
005e0334  07 70 8f e0                                      add r7, pc, r7
005e0338  06 00 a0 e1                                      mov r0, r6
005e033c  07 10 a0 e1                                      mov r1, r7
005e0340  0f e0 a0 e1                                      mov lr, pc
005e0344  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005e0348  01 20 75 e2                                      rsbs r2, r5, #1
005e034c  00 20 a0 33                                      movlo r2, #0
005e0350  00 00 55 e3                                      cmp r5, #0
005e0354  00 00 50 13                                      cmpne r0, #0
005e0358  00 60 a0 e1                                      mov r6, r0
005e035c  0c 00 00 1a                                      bne #0x5e0394
005e0360  00 11 9f e5                                      ldr r1, [pc, #0x100]
005e0364  00 00 52 e3                                      cmp r2, #0
005e0368  01 30 a0 e3                                      mov r3, #1
005e036c  16 30 c4 e5                                      strb r3, [r4, #0x16]
005e0370  08 20 a0 11                                      movne r2, r8
005e0374  07 20 a0 01                                      moveq r2, r7
005e0378  04 00 a0 e1                                      mov r0, r4
005e037c  01 10 8f e0                                      add r1, pc, r1
005e0380  00 30 94 e5                                      ldr r3, [r4]
005e0384  0f e0 a0 e1                                      mov lr, pc
005e0388  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005e038c  10 d0 8d e2                                      add sp, sp, #0x10
005e0390  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005e0394  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
005e0398  05 00 a0 e1                                      mov r0, r5
005e039c  01 10 8f e0                                      add r1, pc, r1
005e03a0  dd b7 f4 eb                                      bl #0x30e31c
005e03a4  00 00 50 e3                                      cmp r0, #0
005e03a8  00 50 a0 01                                      moveq r5, r0
005e03ac  1a 00 00 1a                                      bne #0x5e041c
005e03b0  b0 11 d4 e1                                      ldrh r1, [r4, #0x10]
005e03b4  ff 2f 0f e3                                      movw r2, #0xffff
005e03b8  00 30 e0 e3                                      mvn r3, #0
005e03bc  02 00 51 e1                                      cmp r1, r2
005e03c0  0e 30 cd e5                                      strb r3, [sp, #0xe]
005e03c4  0f 30 cd e5                                      strb r3, [sp, #0xf]
005e03c8  ff 30 a0 03                                      moveq r3, #0xff
005e03cc  03 20 a0 01                                      moveq r2, r3
005e03d0  09 00 00 0a                                      beq #0x5e03fc
005e03d4  0e c0 8d e2                                      add ip, sp, #0xe
005e03d8  04 00 a0 e1                                      mov r0, r4
005e03dc  05 20 a0 e1                                      mov r2, r5
005e03e0  0f 30 8d e2                                      add r3, sp, #0xf
005e03e4  40 10 8d e8                                      stm sp, {r6, ip}
005e03e8  0a ff ff eb                                      bl #0x5e0018
005e03ec  00 00 50 e3                                      cmp r0, #0
005e03f0  e5 ff ff 0a                                      beq #0x5e038c
005e03f4  0f 20 dd e5                                      ldrb r2, [sp, #0xf]
005e03f8  0e 30 dd e5                                      ldrb r3, [sp, #0xe]
005e03fc  00 30 8d e5                                      str r3, [sp]
005e0400  04 00 a0 e1                                      mov r0, r4
005e0404  05 10 a0 e1                                      mov r1, r5
005e0408  06 30 a0 e1                                      mov r3, r6
005e040c  00 c0 94 e5                                      ldr ip, [r4]
005e0410  0f e0 a0 e1                                      mov lr, pc
005e0414  20 f0 9c e5                                      ldr pc, [ip, #0x20]
005e0418  db ff ff ea                                      b #0x5e038c
005e041c  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
005e0420  05 00 a0 e1                                      mov r0, r5
005e0424  01 10 8f e0                                      add r1, pc, r1
005e0428  bb b7 f4 eb                                      bl #0x30e31c
005e042c  00 00 50 e3                                      cmp r0, #0
005e0430  01 50 85 02                                      addeq r5, r5, #1
005e0434  dd ff ff ea                                      b #0x5e03b0
005e0438  34 10 9f e5                                      ldr r1, [pc, #0x34]
005e043c  01 30 a0 e3                                      mov r3, #1
005e0440  16 30 c4 e5                                      strb r3, [r4, #0x16]
005e0444  04 00 a0 e1                                      mov r0, r4
005e0448  01 10 8f e0                                      add r1, pc, r1
005e044c  00 30 94 e5                                      ldr r3, [r4]
005e0450  00 20 a0 e3                                      mov r2, #0
005e0454  0f e0 a0 e1                                      mov lr, pc
005e0458  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005e045c  ca ff ff ea                                      b #0x5e038c
; mapping-symbol data/literal pool
005e0460  58 13 30 00 4c 6a 32 00 fc 12 30 00 ac bb 2f 00  .byte 0x58, 0x13, 0x30, 0x00, 0x4c, 0x6a, 0x32, 0x00, 0xfc, 0x12, 0x30, 0x00, 0xac, 0xbb, 0x2f, 0x00
005e0470  ac 11 30 00 90 11 30 00                          .byte 0xac, 0x11, 0x30, 0x00, 0x90, 0x11, 0x30, 0x00

; FUNCTION 0x005e0478, declared_size=1332, range_size=1332, mode=arm
; class-group: glitch::video::IMaterialTechniqueMapsReader
; alias: _ZN6glitch5video28IMaterialTechniqueMapsReader4loadEPNS_2io9IReadFileEPNS_7collada15CColladaFactoryE
; demangled: glitch::video::IMaterialTechniqueMapsReader::load(glitch::io::IReadFile*, glitch::collada::CColladaFactory*)
; decoder-mode: arm
005e0478  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005e047c  00 00 51 e3                                      cmp r1, #0
005e0480  24 d0 4d e2                                      sub sp, sp, #0x24
005e0484  00 50 a0 e1                                      mov r5, r0
005e0488  04 20 8d e5                                      str r2, [sp, #4]
005e048c  21 00 00 0a                                      beq #0x5e0518
005e0490  01 00 a0 e1                                      mov r0, r1
005e0494  75 57 fe eb                                      bl #0x576270
005e0498  00 40 50 e2                                      subs r4, r0, #0
005e049c  1d 00 00 0a                                      beq #0x5e0518
005e04a0  00 30 94 e5                                      ldr r3, [r4]
005e04a4  0f e0 a0 e1                                      mov lr, pc
005e04a8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005e04ac  00 00 50 e3                                      cmp r0, #0
005e04b0  8e 00 00 0a                                      beq #0x5e06f0
005e04b4  b0 84 9f e5                                      ldr r8, [pc, #0x4b0]
005e04b8  08 80 8f e0                                      add r8, pc, r8
005e04bc  00 30 94 e5                                      ldr r3, [r4]
005e04c0  04 00 a0 e1                                      mov r0, r4
005e04c4  0f e0 a0 e1                                      mov lr, pc
005e04c8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005e04cc  01 00 50 e3                                      cmp r0, #1
005e04d0  00 70 a0 e1                                      mov r7, r0
005e04d4  11 00 00 0a                                      beq #0x5e0520
005e04d8  00 30 94 e5                                      ldr r3, [r4]
005e04dc  04 00 a0 e1                                      mov r0, r4
005e04e0  0f e0 a0 e1                                      mov lr, pc
005e04e4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005e04e8  00 00 50 e3                                      cmp r0, #0
005e04ec  f2 ff ff 1a                                      bne #0x5e04bc
005e04f0  00 50 a0 e1                                      mov r5, r0
005e04f4  74 04 9f e5                                      ldr r0, [pc, #0x474]
005e04f8  03 10 a0 e3                                      mov r1, #3
005e04fc  00 00 8f e0                                      add r0, pc, r0
005e0500  e6 a9 00 eb                                      bl #0x60aca0
005e0504  04 00 a0 e1                                      mov r0, r4
005e0508  1d f4 f4 eb                                      bl #0x31d584
005e050c  05 00 a0 e1                                      mov r0, r5
005e0510  24 d0 8d e2                                      add sp, sp, #0x24
005e0514  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005e0518  00 50 a0 e3                                      mov r5, #0
005e051c  fa ff ff ea                                      b #0x5e050c
005e0520  00 30 94 e5                                      ldr r3, [r4]
005e0524  04 00 a0 e1                                      mov r0, r4
005e0528  0f e0 a0 e1                                      mov lr, pc
005e052c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005e0530  08 10 a0 e1                                      mov r1, r8
005e0534  78 b7 f4 eb                                      bl #0x30e31c
005e0538  00 60 50 e2                                      subs r6, r0, #0
005e053c  e5 ff ff 1a                                      bne #0x5e04d8
005e0540  05 00 a0 e1                                      mov r0, r5
005e0544  06 10 a0 e1                                      mov r1, r6
005e0548  00 30 95 e5                                      ldr r3, [r5]
005e054c  0f e0 a0 e1                                      mov lr, pc
005e0550  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005e0554  07 10 a0 e1                                      mov r1, r7
005e0558  05 00 a0 e1                                      mov r0, r5
005e055c  00 30 95 e5                                      ldr r3, [r5]
005e0560  0f e0 a0 e1                                      mov lr, pc
005e0564  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005e0568  05 00 a0 e1                                      mov r0, r5
005e056c  00 30 95 e5                                      ldr r3, [r5]
005e0570  0f e0 a0 e1                                      mov lr, pc
005e0574  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005e0578  f4 23 9f e5                                      ldr r2, [pc, #0x3f4]
005e057c  07 10 a0 e1                                      mov r1, r7
005e0580  00 30 95 e5                                      ldr r3, [r5]
005e0584  02 20 8f e0                                      add r2, pc, r2
005e0588  05 00 a0 e1                                      mov r0, r5
005e058c  0f e0 a0 e1                                      mov lr, pc
005e0590  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005e0594  dc 33 9f e5                                      ldr r3, [pc, #0x3dc]
005e0598  dc 73 9f e5                                      ldr r7, [pc, #0x3dc]
005e059c  dc 83 9f e5                                      ldr r8, [pc, #0x3dc]
005e05a0  03 30 8f e0                                      add r3, pc, r3
005e05a4  08 30 8d e5                                      str r3, [sp, #8]
005e05a8  d4 33 9f e5                                      ldr r3, [pc, #0x3d4]
005e05ac  d4 23 9f e5                                      ldr r2, [pc, #0x3d4]
005e05b0  07 70 8f e0                                      add r7, pc, r7
005e05b4  03 30 8f e0                                      add r3, pc, r3
005e05b8  08 80 8f e0                                      add r8, pc, r8
005e05bc  0c 30 8d e5                                      str r3, [sp, #0xc]
005e05c0  14 60 8d e5                                      str r6, [sp, #0x14]
005e05c4  10 20 8d e5                                      str r2, [sp, #0x10]
005e05c8  00 30 94 e5                                      ldr r3, [r4]
005e05cc  04 00 a0 e1                                      mov r0, r4
005e05d0  0f e0 a0 e1                                      mov lr, pc
005e05d4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005e05d8  00 00 50 e3                                      cmp r0, #0
005e05dc  30 00 00 0a                                      beq #0x5e06a4
005e05e0  00 00 56 e3                                      cmp r6, #0
005e05e4  2e 00 00 1a                                      bne #0x5e06a4
005e05e8  00 30 94 e5                                      ldr r3, [r4]
005e05ec  04 00 a0 e1                                      mov r0, r4
005e05f0  0f e0 a0 e1                                      mov lr, pc
005e05f4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005e05f8  00 30 94 e5                                      ldr r3, [r4]
005e05fc  00 a0 a0 e1                                      mov sl, r0
005e0600  04 00 a0 e1                                      mov r0, r4
005e0604  0f e0 a0 e1                                      mov lr, pc
005e0608  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005e060c  01 00 50 e3                                      cmp r0, #1
005e0610  00 90 a0 e1                                      mov sb, r0
005e0614  3b 00 00 0a                                      beq #0x5e0708
005e0618  02 00 50 e3                                      cmp r0, #2
005e061c  e9 ff ff 1a                                      bne #0x5e05c8
005e0620  0a 00 a0 e1                                      mov r0, sl
005e0624  07 10 a0 e1                                      mov r1, r7
005e0628  3b b7 f4 eb                                      bl #0x30e31c
005e062c  00 00 50 e3                                      cmp r0, #0
005e0630  64 00 00 0a                                      beq #0x5e07c8
005e0634  0a 00 a0 e1                                      mov r0, sl
005e0638  08 10 a0 e1                                      mov r1, r8
005e063c  36 b7 f4 eb                                      bl #0x30e31c
005e0640  00 00 50 e3                                      cmp r0, #0
005e0644  73 00 00 0a                                      beq #0x5e0818
005e0648  0a 00 a0 e1                                      mov r0, sl
005e064c  08 10 9d e5                                      ldr r1, [sp, #8]
005e0650  31 b7 f4 eb                                      bl #0x30e31c
005e0654  00 00 50 e3                                      cmp r0, #0
005e0658  5f 00 00 1a                                      bne #0x5e07dc
005e065c  16 30 d5 e5                                      ldrb r3, [r5, #0x16]
005e0660  00 00 53 e3                                      cmp r3, #0
005e0664  04 00 00 0a                                      beq #0x5e067c
005e0668  08 20 9d e5                                      ldr r2, [sp, #8]
005e066c  18 30 95 e5                                      ldr r3, [r5, #0x18]
005e0670  02 00 53 e1                                      cmp r3, r2
005e0674  16 60 c5 05                                      strbeq r6, [r5, #0x16]
005e0678  18 60 85 05                                      streq r6, [r5, #0x18]
005e067c  00 30 a0 e3                                      mov r3, #0
005e0680  14 30 c5 e5                                      strb r3, [r5, #0x14]
005e0684  00 30 e0 e3                                      mvn r3, #0
005e0688  b0 31 c5 e1                                      strh r3, [r5, #0x10]
005e068c  00 30 94 e5                                      ldr r3, [r4]
005e0690  04 00 a0 e1                                      mov r0, r4
005e0694  0f e0 a0 e1                                      mov lr, pc
005e0698  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005e069c  00 00 50 e3                                      cmp r0, #0
005e06a0  ce ff ff 1a                                      bne #0x5e05e0
005e06a4  00 30 95 e5                                      ldr r3, [r5]
005e06a8  05 00 a0 e1                                      mov r0, r5
005e06ac  00 10 a0 e3                                      mov r1, #0
005e06b0  0f e0 a0 e1                                      mov lr, pc
005e06b4  08 f0 93 e5                                      ldr pc, [r3, #8]
005e06b8  00 00 50 e3                                      cmp r0, #0
005e06bc  96 00 00 1a                                      bne #0x5e091c
005e06c0  00 10 a0 e1                                      mov r1, r0
005e06c4  00 30 95 e5                                      ldr r3, [r5]
005e06c8  05 00 a0 e1                                      mov r0, r5
005e06cc  0f e0 a0 e1                                      mov lr, pc
005e06d0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005e06d4  05 00 a0 e1                                      mov r0, r5
005e06d8  00 30 95 e5                                      ldr r3, [r5]
005e06dc  01 10 a0 e3                                      mov r1, #1
005e06e0  0f e0 a0 e1                                      mov lr, pc
005e06e4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005e06e8  01 50 a0 e3                                      mov r5, #1
005e06ec  84 ff ff ea                                      b #0x5e0504
005e06f0  00 50 a0 e1                                      mov r5, r0
005e06f4  90 02 9f e5                                      ldr r0, [pc, #0x290]
005e06f8  03 10 a0 e3                                      mov r1, #3
005e06fc  00 00 8f e0                                      add r0, pc, r0
005e0700  66 a9 00 eb                                      bl #0x60aca0
005e0704  7e ff ff ea                                      b #0x5e0504
005e0708  16 30 d5 e5                                      ldrb r3, [r5, #0x16]
005e070c  00 00 53 e3                                      cmp r3, #0
005e0710  ac ff ff 1a                                      bne #0x5e05c8
005e0714  74 b2 9f e5                                      ldr fp, [pc, #0x274]
005e0718  0a 00 a0 e1                                      mov r0, sl
005e071c  0b b0 8f e0                                      add fp, pc, fp
005e0720  0b 10 a0 e1                                      mov r1, fp
005e0724  fc b6 f4 eb                                      bl #0x30e31c
005e0728  00 00 50 e3                                      cmp r0, #0
005e072c  3e 00 00 0a                                      beq #0x5e082c
005e0730  5c b2 9f e5                                      ldr fp, [pc, #0x25c]
005e0734  0a 00 a0 e1                                      mov r0, sl
005e0738  0b b0 8f e0                                      add fp, pc, fp
005e073c  0b 10 a0 e1                                      mov r1, fp
005e0740  f5 b6 f4 eb                                      bl #0x30e31c
005e0744  00 00 50 e3                                      cmp r0, #0
005e0748  44 00 00 0a                                      beq #0x5e0860
005e074c  44 92 9f e5                                      ldr sb, [pc, #0x244]
005e0750  0a 00 a0 e1                                      mov r0, sl
005e0754  09 90 8f e0                                      add sb, pc, sb
005e0758  09 10 a0 e1                                      mov r1, sb
005e075c  ee b6 f4 eb                                      bl #0x30e31c
005e0760  00 00 50 e3                                      cmp r0, #0
005e0764  43 00 00 0a                                      beq #0x5e0878
005e0768  2c 92 9f e5                                      ldr sb, [pc, #0x22c]
005e076c  0a 00 a0 e1                                      mov r0, sl
005e0770  09 90 8f e0                                      add sb, pc, sb
005e0774  09 10 a0 e1                                      mov r1, sb
005e0778  e7 b6 f4 eb                                      bl #0x30e31c
005e077c  00 00 50 e3                                      cmp r0, #0
005e0780  42 00 00 0a                                      beq #0x5e0890
005e0784  14 92 9f e5                                      ldr sb, [pc, #0x214]
005e0788  0a 00 a0 e1                                      mov r0, sl
005e078c  09 90 8f e0                                      add sb, pc, sb
005e0790  09 10 a0 e1                                      mov r1, sb
005e0794  e0 b6 f4 eb                                      bl #0x30e31c
005e0798  00 00 50 e3                                      cmp r0, #0
005e079c  89 ff ff 1a                                      bne #0x5e05c8
005e07a0  14 20 9d e5                                      ldr r2, [sp, #0x14]
005e07a4  18 90 85 e5                                      str sb, [r5, #0x18]
005e07a8  00 00 52 e3                                      cmp r2, #0
005e07ac  3c 00 00 0a                                      beq #0x5e08a4
005e07b0  ec 11 9f e5                                      ldr r1, [pc, #0x1ec]
005e07b4  05 00 a0 e1                                      mov r0, r5
005e07b8  00 20 a0 e3                                      mov r2, #0
005e07bc  01 10 8f e0                                      add r1, pc, r1
005e07c0  40 fc ff eb                                      bl #0x5df8c8
005e07c4  7f ff ff ea                                      b #0x5e05c8
005e07c8  05 00 a0 e1                                      mov r0, r5
005e07cc  06 10 a0 e1                                      mov r1, r6
005e07d0  07 20 a0 e1                                      mov r2, r7
005e07d4  76 fc ff eb                                      bl #0x5df9b4
005e07d8  7a ff ff ea                                      b #0x5e05c8
005e07dc  0a 00 a0 e1                                      mov r0, sl
005e07e0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005e07e4  cc b6 f4 eb                                      bl #0x30e31c
005e07e8  00 00 50 e3                                      cmp r0, #0
005e07ec  14 00 00 1a                                      bne #0x5e0844
005e07f0  16 30 d5 e5                                      ldrb r3, [r5, #0x16]
005e07f4  00 00 53 e3                                      cmp r3, #0
005e07f8  72 ff ff 0a                                      beq #0x5e05c8
005e07fc  18 30 95 e5                                      ldr r3, [r5, #0x18]
005e0800  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005e0804  02 00 53 e1                                      cmp r3, r2
005e0808  00 30 a0 03                                      moveq r3, #0
005e080c  18 30 85 05                                      streq r3, [r5, #0x18]
005e0810  16 30 c5 05                                      strbeq r3, [r5, #0x16]
005e0814  6b ff ff ea                                      b #0x5e05c8
005e0818  05 00 a0 e1                                      mov r0, r5
005e081c  01 10 a0 e3                                      mov r1, #1
005e0820  08 20 a0 e1                                      mov r2, r8
005e0824  62 fc ff eb                                      bl #0x5df9b4
005e0828  66 ff ff ea                                      b #0x5e05c8
005e082c  18 b0 85 e5                                      str fp, [r5, #0x18]
005e0830  05 00 a0 e1                                      mov r0, r5
005e0834  06 10 a0 e1                                      mov r1, r6
005e0838  04 20 a0 e1                                      mov r2, r4
005e083c  9e fd ff eb                                      bl #0x5dfebc
005e0840  60 ff ff ea                                      b #0x5e05c8
005e0844  10 30 9d e5                                      ldr r3, [sp, #0x10]
005e0848  0a 00 a0 e1                                      mov r0, sl
005e084c  03 10 8f e0                                      add r1, pc, r3
005e0850  b1 b6 f4 eb                                      bl #0x30e31c
005e0854  01 60 70 e2                                      rsbs r6, r0, #1
005e0858  00 60 a0 33                                      movlo r6, #0
005e085c  59 ff ff ea                                      b #0x5e05c8
005e0860  18 b0 85 e5                                      str fp, [r5, #0x18]
005e0864  09 10 a0 e1                                      mov r1, sb
005e0868  05 00 a0 e1                                      mov r0, r5
005e086c  04 20 a0 e1                                      mov r2, r4
005e0870  91 fd ff eb                                      bl #0x5dfebc
005e0874  53 ff ff ea                                      b #0x5e05c8
005e0878  18 90 85 e5                                      str sb, [r5, #0x18]
005e087c  05 00 a0 e1                                      mov r0, r5
005e0880  04 10 a0 e1                                      mov r1, r4
005e0884  04 20 9d e5                                      ldr r2, [sp, #4]
005e0888  cd fc ff eb                                      bl #0x5dfbc4
005e088c  4d ff ff ea                                      b #0x5e05c8
005e0890  18 90 85 e5                                      str sb, [r5, #0x18]
005e0894  05 00 a0 e1                                      mov r0, r5
005e0898  04 10 a0 e1                                      mov r1, r4
005e089c  83 fe ff eb                                      bl #0x5e02b0
005e08a0  48 ff ff ea                                      b #0x5e05c8
005e08a4  00 30 95 e5                                      ldr r3, [r5]
005e08a8  05 00 a0 e1                                      mov r0, r5
005e08ac  01 10 a0 e3                                      mov r1, #1
005e08b0  0f e0 a0 e1                                      mov lr, pc
005e08b4  08 f0 93 e5                                      ldr pc, [r3, #8]
005e08b8  01 00 50 e3                                      cmp r0, #1
005e08bc  bb ff ff 8a                                      bhi #0x5e07b0
005e08c0  00 30 95 e5                                      ldr r3, [r5]
005e08c4  05 00 a0 e1                                      mov r0, r5
005e08c8  00 10 a0 e3                                      mov r1, #0
005e08cc  0f e0 a0 e1                                      mov lr, pc
005e08d0  08 f0 93 e5                                      ldr pc, [r3, #8]
005e08d4  00 a0 50 e2                                      subs sl, r0, #0
005e08d8  b4 ff ff 1a                                      bne #0x5e07b0
005e08dc  20 30 8d e2                                      add r3, sp, #0x20
005e08e0  01 a0 63 e5                                      strb sl, [r3, #-1]!
005e08e4  05 00 a0 e1                                      mov r0, r5
005e08e8  04 10 a0 e1                                      mov r1, r4
005e08ec  0a 20 a0 e1                                      mov r2, sl
005e08f0  4d fc ff eb                                      bl #0x5dfa2c
005e08f4  1f 30 dd e5                                      ldrb r3, [sp, #0x1f]
005e08f8  00 90 a0 e1                                      mov sb, r0
005e08fc  00 00 53 e3                                      cmp r3, #0
005e0900  0b 00 00 0a                                      beq #0x5e0934
005e0904  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
005e0908  0a 20 a0 e1                                      mov r2, sl
005e090c  05 00 a0 e1                                      mov r0, r5
005e0910  01 10 8f e0                                      add r1, pc, r1
005e0914  eb fb ff eb                                      bl #0x5df8c8
005e0918  2a ff ff ea                                      b #0x5e05c8
005e091c  05 00 a0 e1                                      mov r0, r5
005e0920  00 30 95 e5                                      ldr r3, [r5]
005e0924  0f e0 a0 e1                                      mov lr, pc
005e0928  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005e092c  01 50 a0 e3                                      mov r5, #1
005e0930  f3 fe ff ea                                      b #0x5e0504
005e0934  05 00 a0 e1                                      mov r0, r5
005e0938  01 10 a0 e3                                      mov r1, #1
005e093c  00 30 95 e5                                      ldr r3, [r5]
005e0940  0f e0 a0 e1                                      mov lr, pc
005e0944  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005e0948  00 30 95 e5                                      ldr r3, [r5]
005e094c  09 20 a0 e1                                      mov r2, sb
005e0950  05 00 a0 e1                                      mov r0, r5
005e0954  01 10 a0 e3                                      mov r1, #1
005e0958  0f e0 a0 e1                                      mov lr, pc
005e095c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005e0960  01 30 a0 e3                                      mov r3, #1
005e0964  14 30 8d e5                                      str r3, [sp, #0x14]
005e0968  16 ff ff ea                                      b #0x5e05c8
; mapping-symbol data/literal pool
005e096c  10 12 30 00 a4 11 30 00 3c 03 2e 00 48 11 30 00  .byte 0x10, 0x12, 0x30, 0x00, 0xa4, 0x11, 0x30, 0x00, 0x3c, 0x03, 0x2e, 0x00, 0x48, 0x11, 0x30, 0x00
005e097c  30 11 30 00 50 11 30 00 44 11 30 00 7c 0e 30 00  .byte 0x30, 0x11, 0x30, 0x00, 0x50, 0x11, 0x30, 0x00, 0x44, 0x11, 0x30, 0x00, 0x7c, 0x0e, 0x30, 0x00
005e098c  94 0f 30 00 c4 0f 30 00 d0 0f 30 00 94 0f 30 00  .byte 0x94, 0x0f, 0x30, 0x00, 0xc4, 0x0f, 0x30, 0x00, 0xd0, 0x0f, 0x30, 0x00, 0x94, 0x0f, 0x30, 0x00
005e099c  88 0f 30 00 74 0f 30 00 54 0f 30 00 18 0e 30 00  .byte 0x88, 0x0f, 0x30, 0x00, 0x74, 0x0f, 0x30, 0x00, 0x54, 0x0f, 0x30, 0x00, 0x18, 0x0e, 0x30, 0x00
