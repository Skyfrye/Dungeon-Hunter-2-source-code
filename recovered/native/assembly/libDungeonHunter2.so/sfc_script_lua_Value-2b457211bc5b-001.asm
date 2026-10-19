; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003193e8, declared_size=108, range_size=108, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5ValueD1Ev
; demangled: sfc::script::lua::Value::~Value()
; decoder-mode: arm
003193e8  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
003193ec  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
003193f0  10 40 2d e9                                      push {r4, lr}
003193f4  03 30 8f e0                                      add r3, pc, r3
003193f8  02 20 93 e7                                      ldr r2, [r3, r2]
003193fc  00 40 a0 e1                                      mov r4, r0
00319400  08 20 82 e2                                      add r2, r2, #8
00319404  24 20 80 e4                                      str r2, [r0], #0x24
00319408  e8 ff ff eb                                      bl #0x3193b0
0031940c  0c 30 84 e2                                      add r3, r4, #0xc
00319410  14 00 93 e5                                      ldr r0, [r3, #0x14]
00319414  03 00 50 e1                                      cmp r0, r3
00319418  06 00 00 0a                                      beq #0x319438
0031941c  00 00 50 e3                                      cmp r0, #0
00319420  04 00 00 0a                                      beq #0x319438
00319424  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00319428  01 10 60 e0                                      rsb r1, r0, r1
0031942c  80 00 51 e3                                      cmp r1, #0x80
00319430  02 00 00 8a                                      bhi #0x319440
00319434  b1 be 0f eb                                      bl #0x708f00
00319438  04 00 a0 e1                                      mov r0, r4
0031943c  10 80 bd e8                                      pop {r4, pc}
00319440  fe db ff eb                                      bl #0x310440
00319444  04 00 a0 e1                                      mov r0, r4
00319448  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031944c  9c b6 67 00 98 07 00 00                          .byte 0x9c, 0xb6, 0x67, 0x00, 0x98, 0x07, 0x00, 0x00

; FUNCTION 0x00319454, declared_size=28, range_size=28, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5ValueD0Ev
; demangled: sfc::script::lua::Value::~Value()
; decoder-mode: arm
00319454  10 40 2d e9                                      push {r4, lr}
00319458  00 40 a0 e1                                      mov r4, r0
0031945c  e1 ff ff eb                                      bl #0x3193e8
00319460  04 00 a0 e1                                      mov r0, r4
00319464  f5 db ff eb                                      bl #0x310440
00319468  04 00 a0 e1                                      mov r0, r4
0031946c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003194e0, declared_size=88, range_size=88, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5ValueC1Ev
; demangled: sfc::script::lua::Value::Value()
; decoder-mode: arm
003194e0  48 30 9f e5                                      ldr r3, [pc, #0x48]
003194e4  48 10 9f e5                                      ldr r1, [pc, #0x48]
003194e8  00 20 a0 e1                                      mov r2, r0
003194ec  03 30 8f e0                                      add r3, pc, r3
003194f0  01 10 93 e7                                      ldr r1, [r3, r1]
003194f4  10 40 2d e9                                      push {r4, lr}
003194f8  08 10 81 e2                                      add r1, r1, #8
003194fc  0c 10 82 e4                                      str r1, [r2], #0xc
00319500  00 c0 a0 e3                                      mov ip, #0
00319504  24 10 80 e2                                      add r1, r0, #0x24
00319508  00 40 a0 e1                                      mov r4, r0
0031950c  20 20 80 e5                                      str r2, [r0, #0x20]
00319510  68 10 80 e5                                      str r1, [r0, #0x68]
00319514  24 c0 80 e5                                      str ip, [r0, #0x24]
00319518  1c 20 80 e5                                      str r2, [r0, #0x1c]
0031951c  0c c0 c0 e5                                      strb ip, [r0, #0xc]
00319520  64 10 80 e5                                      str r1, [r0, #0x64]
00319524  25 08 00 eb                                      bl #0x31b5c0
00319528  04 00 a0 e1                                      mov r0, r4
0031952c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00319530  a4 b5 67 00 98 07 00 00                          .byte 0xa4, 0xb5, 0x67, 0x00, 0x98, 0x07, 0x00, 0x00

; FUNCTION 0x0031a414, declared_size=88, range_size=88, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5ValueC1EPv
; demangled: sfc::script::lua::Value::Value(void*)
; decoder-mode: arm
0031a414  48 30 9f e5                                      ldr r3, [pc, #0x48]
0031a418  48 c0 9f e5                                      ldr ip, [pc, #0x48]
0031a41c  00 20 a0 e1                                      mov r2, r0
0031a420  03 30 8f e0                                      add r3, pc, r3
0031a424  0c c0 93 e7                                      ldr ip, [r3, ip]
0031a428  10 40 2d e9                                      push {r4, lr}
0031a42c  08 c0 8c e2                                      add ip, ip, #8
0031a430  0c c0 82 e4                                      str ip, [r2], #0xc
0031a434  00 e0 a0 e3                                      mov lr, #0
0031a438  24 c0 80 e2                                      add ip, r0, #0x24
0031a43c  00 40 a0 e1                                      mov r4, r0
0031a440  20 20 80 e5                                      str r2, [r0, #0x20]
0031a444  68 c0 80 e5                                      str ip, [r0, #0x68]
0031a448  24 e0 80 e5                                      str lr, [r0, #0x24]
0031a44c  1c 20 80 e5                                      str r2, [r0, #0x1c]
0031a450  0c e0 c0 e5                                      strb lr, [r0, #0xc]
0031a454  64 c0 80 e5                                      str ip, [r0, #0x64]
0031a458  66 04 00 eb                                      bl #0x31b5f8
0031a45c  04 00 a0 e1                                      mov r0, r4
0031a460  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031a464  70 a6 67 00 98 07 00 00                          .byte 0x70, 0xa6, 0x67, 0x00, 0x98, 0x07, 0x00, 0x00

; FUNCTION 0x0031b580, declared_size=32, range_size=32, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZNK3sfc6script3lua5Value10getPointerEv
; demangled: sfc::script::lua::Value::getPointer() const
; decoder-mode: arm
0031b580  04 30 90 e5                                      ldr r3, [r0, #4]
0031b584  02 00 53 e3                                      cmp r3, #2
0031b588  02 00 00 0a                                      beq #0x31b598
0031b58c  07 00 53 e3                                      cmp r3, #7
0031b590  00 00 a0 13                                      movne r0, #0
0031b594  1e ff 2f 11                                      bxne lr
0031b598  6c 00 90 e5                                      ldr r0, [r0, #0x6c]
0031b59c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031b5a0, declared_size=32, range_size=32, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZNK3sfc6script3lua5Value11getUserDataEv
; demangled: sfc::script::lua::Value::getUserData() const
; decoder-mode: arm
0031b5a0  04 30 90 e5                                      ldr r3, [r0, #4]
0031b5a4  02 00 53 e3                                      cmp r3, #2
0031b5a8  02 00 00 0a                                      beq #0x31b5b8
0031b5ac  07 00 53 e3                                      cmp r3, #7
0031b5b0  00 00 a0 13                                      movne r0, #0
0031b5b4  1e ff 2f 11                                      bxne lr
0031b5b8  6c 00 90 e5                                      ldr r0, [r0, #0x6c]
0031b5bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031b5c0, declared_size=12, range_size=12, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5Value6setNilEv
; demangled: sfc::script::lua::Value::setNil()
; decoder-mode: arm
0031b5c0  00 30 a0 e3                                      mov r3, #0
0031b5c4  04 30 80 e5                                      str r3, [r0, #4]
0031b5c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031b5cc, declared_size=28, range_size=28, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5Value7setBoolEb
; demangled: sfc::script::lua::Value::setBool(bool)
; decoder-mode: arm
0031b5cc  01 30 a0 e3                                      mov r3, #1
0031b5d0  00 00 51 e3                                      cmp r1, #0
0031b5d4  04 30 80 e5                                      str r3, [r0, #4]
0031b5d8  00 30 a0 03                                      moveq r3, #0
0031b5dc  fe 35 a0 13                                      movne r3, #0x3f800000
0031b5e0  08 30 80 e5                                      str r3, [r0, #8]
0031b5e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031b5e8, declared_size=16, range_size=16, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5Value9setNumberEf
; demangled: sfc::script::lua::Value::setNumber(float)
; decoder-mode: arm
0031b5e8  03 30 a0 e3                                      mov r3, #3
0031b5ec  08 10 80 e5                                      str r1, [r0, #8]
0031b5f0  04 30 80 e5                                      str r3, [r0, #4]
0031b5f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031b5f8, declared_size=16, range_size=16, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5Value10setPointerEPv
; demangled: sfc::script::lua::Value::setPointer(void*)
; decoder-mode: arm
0031b5f8  02 30 a0 e3                                      mov r3, #2
0031b5fc  6c 10 80 e5                                      str r1, [r0, #0x6c]
0031b600  04 30 80 e5                                      str r3, [r0, #4]
0031b604  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031b608, declared_size=16, range_size=16, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5Value11setUserDataEPNS1_8UserDataE
; demangled: sfc::script::lua::Value::setUserData(sfc::script::lua::UserData*)
; decoder-mode: arm
0031b608  07 30 a0 e3                                      mov r3, #7
0031b60c  6c 10 80 e5                                      str r1, [r0, #0x6c]
0031b610  04 30 80 e5                                      str r3, [r0, #4]
0031b614  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031bbf0, declared_size=144, range_size=144, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZNK3sfc6script3lua5Value9getNumberEv
; demangled: sfc::script::lua::Value::getNumber() const
; decoder-mode: arm
0031bbf0  70 40 2d e9                                      push {r4, r5, r6, lr}
0031bbf4  04 30 90 e5                                      ldr r3, [r0, #4]
0031bbf8  00 50 a0 e1                                      mov r5, r0
0031bbfc  00 00 53 e3                                      cmp r3, #0
0031bc00  09 00 00 0a                                      beq #0x31bc2c
0031bc04  01 00 53 e3                                      cmp r3, #1
0031bc08  0a 00 00 0a                                      beq #0x31bc38
0031bc0c  03 00 53 e3                                      cmp r3, #3
0031bc10  08 00 00 0a                                      beq #0x31bc38
0031bc14  02 00 53 e3                                      cmp r3, #2
0031bc18  09 00 00 0a                                      beq #0x31bc44
0031bc1c  07 00 53 e3                                      cmp r3, #7
0031bc20  07 00 00 0a                                      beq #0x31bc44
0031bc24  04 00 53 e3                                      cmp r3, #4
0031bc28  09 00 00 0a                                      beq #0x31bc54
0031bc2c  00 50 a0 e3                                      mov r5, #0
0031bc30  05 00 a0 e1                                      mov r0, r5
0031bc34  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031bc38  08 50 95 e5                                      ldr r5, [r5, #8]
0031bc3c  05 00 a0 e1                                      mov r0, r5
0031bc40  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031bc44  6c 00 95 e5                                      ldr r0, [r5, #0x6c]
0031bc48  a4 c9 ff eb                                      bl #0x30e2e0
0031bc4c  00 50 a0 e1                                      mov r5, r0
0031bc50  f6 ff ff ea                                      b #0x31bc30
0031bc54  e1 c2 14 eb                                      bl #0x84c7e0
0031bc58  20 10 95 e5                                      ldr r1, [r5, #0x20]
0031bc5c  00 40 a0 e1                                      mov r4, r0
0031bc60  f9 c0 14 eb                                      bl #0x84c04c
0031bc64  04 00 a0 e1                                      mov r0, r4
0031bc68  00 10 e0 e3                                      mvn r1, #0
0031bc6c  f7 c1 14 eb                                      bl #0x84c450
0031bc70  00 50 a0 e1                                      mov r5, r0
0031bc74  04 00 a0 e1                                      mov r0, r4
0031bc78  3f ef 14 eb                                      bl #0x85797c
0031bc7c  eb ff ff ea                                      b #0x31bc30

; FUNCTION 0x0031bc80, declared_size=172, range_size=172, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZNK3sfc6script3lua5Value7getBoolEv
; demangled: sfc::script::lua::Value::getBool() const
; decoder-mode: arm
0031bc80  70 40 2d e9                                      push {r4, r5, r6, lr}
0031bc84  04 30 90 e5                                      ldr r3, [r0, #4]
0031bc88  00 50 a0 e1                                      mov r5, r0
0031bc8c  00 00 53 e3                                      cmp r3, #0
0031bc90  09 00 00 0a                                      beq #0x31bcbc
0031bc94  01 00 53 e3                                      cmp r3, #1
0031bc98  0a 00 00 0a                                      beq #0x31bcc8
0031bc9c  03 00 53 e3                                      cmp r3, #3
0031bca0  08 00 00 0a                                      beq #0x31bcc8
0031bca4  02 00 53 e3                                      cmp r3, #2
0031bca8  0f 00 00 0a                                      beq #0x31bcec
0031bcac  07 00 53 e3                                      cmp r3, #7
0031bcb0  0d 00 00 0a                                      beq #0x31bcec
0031bcb4  04 00 53 e3                                      cmp r3, #4
0031bcb8  0f 00 00 0a                                      beq #0x31bcfc
0031bcbc  00 50 a0 e3                                      mov r5, #0
0031bcc0  05 00 a0 e1                                      mov r0, r5
0031bcc4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031bcc8  08 00 95 e5                                      ldr r0, [r5, #8]
0031bccc  00 10 a0 e3                                      mov r1, #0
0031bcd0  ad c8 ff eb                                      bl #0x30df8c
0031bcd4  00 00 50 e3                                      cmp r0, #0
0031bcd8  00 50 a0 e3                                      mov r5, #0
0031bcdc  01 50 a0 03                                      moveq r5, #1
0031bce0  75 50 ef e6                                      uxtb r5, r5
0031bce4  05 00 a0 e1                                      mov r0, r5
0031bce8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031bcec  6c 50 95 e5                                      ldr r5, [r5, #0x6c]
0031bcf0  00 50 55 e2                                      subs r5, r5, #0
0031bcf4  01 50 a0 13                                      movne r5, #1
0031bcf8  f0 ff ff ea                                      b #0x31bcc0
0031bcfc  b7 c2 14 eb                                      bl #0x84c7e0
0031bd00  20 10 95 e5                                      ldr r1, [r5, #0x20]
0031bd04  00 40 a0 e1                                      mov r4, r0
0031bd08  cf c0 14 eb                                      bl #0x84c04c
0031bd0c  04 00 a0 e1                                      mov r0, r4
0031bd10  00 10 e0 e3                                      mvn r1, #0
0031bd14  81 bd 14 eb                                      bl #0x84b320
0031bd18  00 50 50 e2                                      subs r5, r0, #0
0031bd1c  01 50 a0 13                                      movne r5, #1
0031bd20  04 00 a0 e1                                      mov r0, r4
0031bd24  14 ef 14 eb                                      bl #0x85797c
0031bd28  e4 ff ff ea                                      b #0x31bcc0

; FUNCTION 0x0031c368, declared_size=100, range_size=100, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5ValueaSERKS2_
; demangled: sfc::script::lua::Value::operator=(sfc::script::lua::Value const&)
; decoder-mode: arm
0031c368  70 40 2d e9                                      push {r4, r5, r6, lr}
0031c36c  04 30 91 e5                                      ldr r3, [r1, #4]
0031c370  00 50 a0 e1                                      mov r5, r0
0031c374  0c 20 81 e2                                      add r2, r1, #0xc
0031c378  04 30 85 e5                                      str r3, [r5, #4]
0031c37c  08 30 91 e5                                      ldr r3, [r1, #8]
0031c380  0c 00 80 e2                                      add r0, r0, #0xc
0031c384  02 00 50 e1                                      cmp r0, r2
0031c388  01 40 a0 e1                                      mov r4, r1
0031c38c  08 30 85 e5                                      str r3, [r5, #8]
0031c390  02 00 00 0a                                      beq #0x31c3a0
0031c394  20 10 91 e5                                      ldr r1, [r1, #0x20]
0031c398  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0031c39c  8f d1 ff eb                                      bl #0x3109e0
0031c3a0  24 00 85 e2                                      add r0, r5, #0x24
0031c3a4  24 30 84 e2                                      add r3, r4, #0x24
0031c3a8  03 00 50 e1                                      cmp r0, r3
0031c3ac  02 00 00 0a                                      beq #0x31c3bc
0031c3b0  68 10 94 e5                                      ldr r1, [r4, #0x68]
0031c3b4  64 20 94 e5                                      ldr r2, [r4, #0x64]
0031c3b8  61 ff ff eb                                      bl #0x31c144
0031c3bc  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
0031c3c0  05 00 a0 e1                                      mov r0, r5
0031c3c4  6c 30 85 e5                                      str r3, [r5, #0x6c]
0031c3c8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0031c46c, declared_size=48, range_size=48, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5Value9setStringEPKc
; demangled: sfc::script::lua::Value::setString(char const*)
; decoder-mode: arm
0031c46c  04 30 a0 e3                                      mov r3, #4
0031c470  70 40 2d e9                                      push {r4, r5, r6, lr}
0031c474  00 40 a0 e1                                      mov r4, r0
0031c478  04 30 80 e5                                      str r3, [r0, #4]
0031c47c  01 00 a0 e1                                      mov r0, r1
0031c480  01 50 a0 e1                                      mov r5, r1
0031c484  72 c6 ff eb                                      bl #0x30de54
0031c488  05 10 a0 e1                                      mov r1, r5
0031c48c  00 20 85 e0                                      add r2, r5, r0
0031c490  0c 00 84 e2                                      add r0, r4, #0xc
0031c494  70 40 bd e8                                      pop {r4, r5, r6, lr}
0031c498  50 d1 ff ea                                      b #0x3109e0

; FUNCTION 0x0031c49c, declared_size=408, range_size=408, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZNK3sfc6script3lua5Value9getStringEv
; demangled: sfc::script::lua::Value::getString() const
; decoder-mode: arm
0031c49c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0031c4a0  6c 41 9f e5                                      ldr r4, [pc, #0x16c]
0031c4a4  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
0031c4a8  04 30 90 e5                                      ldr r3, [r0, #4]
0031c4ac  04 40 8f e0                                      add r4, pc, r4
0031c4b0  06 20 94 e7                                      ldr r2, [r4, r6]
0031c4b4  28 d0 4d e2                                      sub sp, sp, #0x28
0031c4b8  00 00 53 e3                                      cmp r3, #0
0031c4bc  00 20 92 e5                                      ldr r2, [r2]
0031c4c0  00 50 a0 e1                                      mov r5, r0
0031c4c4  24 20 8d e5                                      str r2, [sp, #0x24]
0031c4c8  1f 00 00 0a                                      beq #0x31c54c
0031c4cc  01 00 53 e3                                      cmp r3, #1
0031c4d0  45 00 00 0a                                      beq #0x31c5ec
0031c4d4  04 00 53 e3                                      cmp r3, #4
0031c4d8  41 00 00 0a                                      beq #0x31c5e4
0031c4dc  03 00 53 e3                                      cmp r3, #3
0031c4e0  2d 00 00 1a                                      bne #0x31c59c
0031c4e4  08 70 90 e5                                      ldr r7, [r0, #8]
0031c4e8  07 00 a0 e1                                      mov r0, r7
0031c4ec  f1 c9 ff eb                                      bl #0x30ecb8
0031c4f0  00 10 a0 e1                                      mov r1, r0
0031c4f4  07 00 a0 e1                                      mov r0, r7
0031c4f8  a3 c6 ff eb                                      bl #0x30df8c
0031c4fc  00 00 50 e3                                      cmp r0, #0
0031c500  1a 00 00 1a                                      bne #0x31c570
0031c504  07 00 a0 e1                                      mov r0, r7
0031c508  e5 c8 ff eb                                      bl #0x30e8a4
0031c50c  08 81 9f e5                                      ldr r8, [pc, #0x108]
0031c510  04 70 8d e2                                      add r7, sp, #4
0031c514  00 20 a0 e1                                      mov r2, r0
0031c518  08 80 8f e0                                      add r8, pc, r8
0031c51c  01 30 a0 e1                                      mov r3, r1
0031c520  07 00 a0 e1                                      mov r0, r7
0031c524  08 10 a0 e1                                      mov r1, r8
0031c528  6d c9 ff eb                                      bl #0x30eae4
0031c52c  07 00 a0 e1                                      mov r0, r7
0031c530  47 c6 ff eb                                      bl #0x30de54
0031c534  07 10 a0 e1                                      mov r1, r7
0031c538  00 20 87 e0                                      add r2, r7, r0
0031c53c  0c 00 85 e2                                      add r0, r5, #0xc
0031c540  26 d1 ff eb                                      bl #0x3109e0
0031c544  20 00 95 e5                                      ldr r0, [r5, #0x20]
0031c548  01 00 00 ea                                      b #0x31c554
0031c54c  cc 00 9f e5                                      ldr r0, [pc, #0xcc]
0031c550  00 00 8f e0                                      add r0, pc, r0
0031c554  06 30 94 e7                                      ldr r3, [r4, r6]
0031c558  24 20 9d e5                                      ldr r2, [sp, #0x24]
0031c55c  00 30 93 e5                                      ldr r3, [r3]
0031c560  03 00 52 e1                                      cmp r2, r3
0031c564  29 00 00 1a                                      bne #0x31c610
0031c568  28 d0 8d e2                                      add sp, sp, #0x28
0031c56c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0031c570  05 00 a0 e1                                      mov r0, r5
0031c574  9d fd ff eb                                      bl #0x31bbf0
0031c578  d3 c7 ff eb                                      bl #0x30e4cc
0031c57c  a0 80 9f e5                                      ldr r8, [pc, #0xa0]
0031c580  04 70 8d e2                                      add r7, sp, #4
0031c584  00 20 a0 e1                                      mov r2, r0
0031c588  08 80 8f e0                                      add r8, pc, r8
0031c58c  07 00 a0 e1                                      mov r0, r7
0031c590  08 10 a0 e1                                      mov r1, r8
0031c594  52 c9 ff eb                                      bl #0x30eae4
0031c598  e3 ff ff ea                                      b #0x31c52c
0031c59c  02 00 53 e3                                      cmp r3, #2
0031c5a0  02 00 00 0a                                      beq #0x31c5b0
0031c5a4  07 00 53 e3                                      cmp r3, #7
0031c5a8  00 00 a0 13                                      movne r0, #0
0031c5ac  e8 ff ff 1a                                      bne #0x31c554
0031c5b0  70 10 9f e5                                      ldr r1, [pc, #0x70]
0031c5b4  04 70 8d e2                                      add r7, sp, #4
0031c5b8  08 20 a0 e3                                      mov r2, #8
0031c5bc  01 10 8f e0                                      add r1, pc, r1
0031c5c0  6c 30 95 e5                                      ldr r3, [r5, #0x6c]
0031c5c4  07 00 a0 e1                                      mov r0, r7
0031c5c8  45 c9 ff eb                                      bl #0x30eae4
0031c5cc  07 00 a0 e1                                      mov r0, r7
0031c5d0  1f c6 ff eb                                      bl #0x30de54
0031c5d4  07 10 a0 e1                                      mov r1, r7
0031c5d8  00 20 87 e0                                      add r2, r7, r0
0031c5dc  0c 00 85 e2                                      add r0, r5, #0xc
0031c5e0  fe d0 ff eb                                      bl #0x3109e0
0031c5e4  20 00 95 e5                                      ldr r0, [r5, #0x20]
0031c5e8  d9 ff ff ea                                      b #0x31c554
0031c5ec  a3 fd ff eb                                      bl #0x31bc80
0031c5f0  00 00 50 e3                                      cmp r0, #0
0031c5f4  02 00 00 1a                                      bne #0x31c604
0031c5f8  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
0031c5fc  00 00 8f e0                                      add r0, pc, r0
0031c600  d3 ff ff ea                                      b #0x31c554
0031c604  24 00 9f e5                                      ldr r0, [pc, #0x24]
0031c608  00 00 8f e0                                      add r0, pc, r0
0031c60c  d0 ff ff ea                                      b #0x31c554
0031c610  3e c7 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0031c614  e4 85 67 00 ac 40 00 00 48 1e 5a 00 98 23 5a 00  .byte 0xe4, 0x85, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0x1e, 0x5a, 0x00, 0x98, 0x23, 0x5a, 0x00
0031c624  28 59 5a 00 3c 23 5a 00 6c 1f 5a 00 e8 22 5a 00  .byte 0x28, 0x59, 0x5a, 0x00, 0x3c, 0x23, 0x5a, 0x00, 0x6c, 0x1f, 0x5a, 0x00, 0xe8, 0x22, 0x5a, 0x00

; FUNCTION 0x0031c634, declared_size=300, range_size=300, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5ValueC1ERKS2_
; demangled: sfc::script::lua::Value::Value(sfc::script::lua::Value const&)
; decoder-mode: arm
0031c634  1c 21 9f e5                                      ldr r2, [pc, #0x11c]
0031c638  1c c1 9f e5                                      ldr ip, [pc, #0x11c]
0031c63c  00 30 a0 e1                                      mov r3, r0
0031c640  02 20 8f e0                                      add r2, pc, r2
0031c644  0c c0 92 e7                                      ldr ip, [r2, ip]
0031c648  70 40 2d e9                                      push {r4, r5, r6, lr}
0031c64c  08 c0 8c e2                                      add ip, ip, #8
0031c650  00 40 a0 e1                                      mov r4, r0
0031c654  0c c0 83 e4                                      str ip, [r3], #0xc
0031c658  03 00 a0 e1                                      mov r0, r3
0031c65c  01 50 a0 e1                                      mov r5, r1
0031c660  1c 30 84 e5                                      str r3, [r4, #0x1c]
0031c664  20 30 84 e5                                      str r3, [r4, #0x20]
0031c668  10 10 a0 e3                                      mov r1, #0x10
0031c66c  02 d4 ff eb                                      bl #0x31167c
0031c670  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0031c674  24 30 84 e2                                      add r3, r4, #0x24
0031c678  00 60 a0 e3                                      mov r6, #0
0031c67c  00 60 c2 e5                                      strb r6, [r2]
0031c680  03 00 a0 e1                                      mov r0, r3
0031c684  64 30 84 e5                                      str r3, [r4, #0x64]
0031c688  68 30 84 e5                                      str r3, [r4, #0x68]
0031c68c  ba fd ff eb                                      bl #0x31bd7c
0031c690  64 30 94 e5                                      ldr r3, [r4, #0x64]
0031c694  00 60 83 e5                                      str r6, [r3]
0031c698  04 30 95 e5                                      ldr r3, [r5, #4]
0031c69c  06 00 53 e1                                      cmp r3, r6
0031c6a0  09 00 00 0a                                      beq #0x31c6cc
0031c6a4  01 00 53 e3                                      cmp r3, #1
0031c6a8  12 00 00 0a                                      beq #0x31c6f8
0031c6ac  03 00 53 e3                                      cmp r3, #3
0031c6b0  16 00 00 0a                                      beq #0x31c710
0031c6b4  04 00 53 e3                                      cmp r3, #4
0031c6b8  1a 00 00 0a                                      beq #0x31c728
0031c6bc  02 00 53 e3                                      cmp r3, #2
0031c6c0  1e 00 00 0a                                      beq #0x31c740
0031c6c4  07 00 53 e3                                      cmp r3, #7
0031c6c8  03 00 00 0a                                      beq #0x31c6dc
0031c6cc  04 00 a0 e1                                      mov r0, r4
0031c6d0  ba fb ff eb                                      bl #0x31b5c0
0031c6d4  04 00 a0 e1                                      mov r0, r4
0031c6d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031c6dc  05 00 a0 e1                                      mov r0, r5
0031c6e0  ae fb ff eb                                      bl #0x31b5a0
0031c6e4  00 10 a0 e1                                      mov r1, r0
0031c6e8  04 00 a0 e1                                      mov r0, r4
0031c6ec  c5 fb ff eb                                      bl #0x31b608
0031c6f0  04 00 a0 e1                                      mov r0, r4
0031c6f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031c6f8  05 00 a0 e1                                      mov r0, r5
0031c6fc  5f fd ff eb                                      bl #0x31bc80
0031c700  00 10 a0 e1                                      mov r1, r0
0031c704  04 00 a0 e1                                      mov r0, r4
0031c708  af fb ff eb                                      bl #0x31b5cc
0031c70c  f0 ff ff ea                                      b #0x31c6d4
0031c710  05 00 a0 e1                                      mov r0, r5
0031c714  35 fd ff eb                                      bl #0x31bbf0
0031c718  00 10 a0 e1                                      mov r1, r0
0031c71c  04 00 a0 e1                                      mov r0, r4
0031c720  b0 fb ff eb                                      bl #0x31b5e8
0031c724  ea ff ff ea                                      b #0x31c6d4
0031c728  05 00 a0 e1                                      mov r0, r5
0031c72c  5a ff ff eb                                      bl #0x31c49c
0031c730  00 10 a0 e1                                      mov r1, r0
0031c734  04 00 a0 e1                                      mov r0, r4
0031c738  4b ff ff eb                                      bl #0x31c46c
0031c73c  e4 ff ff ea                                      b #0x31c6d4
0031c740  05 00 a0 e1                                      mov r0, r5
0031c744  8d fb ff eb                                      bl #0x31b580
0031c748  00 10 a0 e1                                      mov r1, r0
0031c74c  04 00 a0 e1                                      mov r0, r4
0031c750  a8 fb ff eb                                      bl #0x31b5f8
0031c754  de ff ff ea                                      b #0x31c6d4
; mapping-symbol data/literal pool
0031c758  50 84 67 00 98 07 00 00                          .byte 0x50, 0x84, 0x67, 0x00, 0x98, 0x07, 0x00, 0x00

; FUNCTION 0x0031c89c, declared_size=300, range_size=300, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5ValueC2ERKS2_
; demangled: sfc::script::lua::Value::Value(sfc::script::lua::Value const&)
; decoder-mode: arm
0031c89c  1c 21 9f e5                                      ldr r2, [pc, #0x11c]
0031c8a0  1c c1 9f e5                                      ldr ip, [pc, #0x11c]
0031c8a4  00 30 a0 e1                                      mov r3, r0
0031c8a8  02 20 8f e0                                      add r2, pc, r2
0031c8ac  0c c0 92 e7                                      ldr ip, [r2, ip]
0031c8b0  70 40 2d e9                                      push {r4, r5, r6, lr}
0031c8b4  08 c0 8c e2                                      add ip, ip, #8
0031c8b8  00 40 a0 e1                                      mov r4, r0
0031c8bc  0c c0 83 e4                                      str ip, [r3], #0xc
0031c8c0  03 00 a0 e1                                      mov r0, r3
0031c8c4  01 50 a0 e1                                      mov r5, r1
0031c8c8  1c 30 84 e5                                      str r3, [r4, #0x1c]
0031c8cc  20 30 84 e5                                      str r3, [r4, #0x20]
0031c8d0  10 10 a0 e3                                      mov r1, #0x10
0031c8d4  68 d3 ff eb                                      bl #0x31167c
0031c8d8  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0031c8dc  24 30 84 e2                                      add r3, r4, #0x24
0031c8e0  00 60 a0 e3                                      mov r6, #0
0031c8e4  00 60 c2 e5                                      strb r6, [r2]
0031c8e8  03 00 a0 e1                                      mov r0, r3
0031c8ec  64 30 84 e5                                      str r3, [r4, #0x64]
0031c8f0  68 30 84 e5                                      str r3, [r4, #0x68]
0031c8f4  20 fd ff eb                                      bl #0x31bd7c
0031c8f8  64 30 94 e5                                      ldr r3, [r4, #0x64]
0031c8fc  00 60 83 e5                                      str r6, [r3]
0031c900  04 30 95 e5                                      ldr r3, [r5, #4]
0031c904  06 00 53 e1                                      cmp r3, r6
0031c908  09 00 00 0a                                      beq #0x31c934
0031c90c  01 00 53 e3                                      cmp r3, #1
0031c910  12 00 00 0a                                      beq #0x31c960
0031c914  03 00 53 e3                                      cmp r3, #3
0031c918  16 00 00 0a                                      beq #0x31c978
0031c91c  04 00 53 e3                                      cmp r3, #4
0031c920  1a 00 00 0a                                      beq #0x31c990
0031c924  02 00 53 e3                                      cmp r3, #2
0031c928  1e 00 00 0a                                      beq #0x31c9a8
0031c92c  07 00 53 e3                                      cmp r3, #7
0031c930  03 00 00 0a                                      beq #0x31c944
0031c934  04 00 a0 e1                                      mov r0, r4
0031c938  20 fb ff eb                                      bl #0x31b5c0
0031c93c  04 00 a0 e1                                      mov r0, r4
0031c940  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031c944  05 00 a0 e1                                      mov r0, r5
0031c948  14 fb ff eb                                      bl #0x31b5a0
0031c94c  00 10 a0 e1                                      mov r1, r0
0031c950  04 00 a0 e1                                      mov r0, r4
0031c954  2b fb ff eb                                      bl #0x31b608
0031c958  04 00 a0 e1                                      mov r0, r4
0031c95c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031c960  05 00 a0 e1                                      mov r0, r5
0031c964  c5 fc ff eb                                      bl #0x31bc80
0031c968  00 10 a0 e1                                      mov r1, r0
0031c96c  04 00 a0 e1                                      mov r0, r4
0031c970  15 fb ff eb                                      bl #0x31b5cc
0031c974  f0 ff ff ea                                      b #0x31c93c
0031c978  05 00 a0 e1                                      mov r0, r5
0031c97c  9b fc ff eb                                      bl #0x31bbf0
0031c980  00 10 a0 e1                                      mov r1, r0
0031c984  04 00 a0 e1                                      mov r0, r4
0031c988  16 fb ff eb                                      bl #0x31b5e8
0031c98c  ea ff ff ea                                      b #0x31c93c
0031c990  05 00 a0 e1                                      mov r0, r5
0031c994  c0 fe ff eb                                      bl #0x31c49c
0031c998  00 10 a0 e1                                      mov r1, r0
0031c99c  04 00 a0 e1                                      mov r0, r4
0031c9a0  b1 fe ff eb                                      bl #0x31c46c
0031c9a4  e4 ff ff ea                                      b #0x31c93c
0031c9a8  05 00 a0 e1                                      mov r0, r5
0031c9ac  f3 fa ff eb                                      bl #0x31b580
0031c9b0  00 10 a0 e1                                      mov r1, r0
0031c9b4  04 00 a0 e1                                      mov r0, r4
0031c9b8  0e fb ff eb                                      bl #0x31b5f8
0031c9bc  de ff ff ea                                      b #0x31c93c
; mapping-symbol data/literal pool
0031c9c0  e8 81 67 00 98 07 00 00                          .byte 0xe8, 0x81, 0x67, 0x00, 0x98, 0x07, 0x00, 0x00

; FUNCTION 0x0031c9c8, declared_size=252, range_size=252, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5Value13_setFromStackEP9lua_Statei
; demangled: sfc::script::lua::Value::_setFromStack(lua_State*, int)
; decoder-mode: arm
0031c9c8  70 40 2d e9                                      push {r4, r5, r6, lr}
0031c9cc  01 50 a0 e1                                      mov r5, r1
0031c9d0  00 40 a0 e1                                      mov r4, r0
0031c9d4  02 10 a0 e1                                      mov r1, r2
0031c9d8  05 00 a0 e1                                      mov r0, r5
0031c9dc  02 60 a0 e1                                      mov r6, r2
0031c9e0  1f ba 14 eb                                      bl #0x84b264
0031c9e4  04 00 84 e5                                      str r0, [r4, #4]
0031c9e8  05 00 50 e3                                      cmp r0, #5
0031c9ec  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
0031c9f0  05 00 00 ea                                      b #0x31ca0c
0031c9f4  06 00 00 ea                                      b #0x31ca14
0031c9f8  15 00 00 ea                                      b #0x31ca54
0031c9fc  1a 00 00 ea                                      b #0x31ca6c
0031ca00  1e 00 00 ea                                      b #0x31ca80
0031ca04  22 00 00 ea                                      b #0x31ca94
0031ca08  02 00 00 ea                                      b #0x31ca18
0031ca0c  00 30 a0 e3                                      mov r3, #0
0031ca10  04 30 84 e5                                      str r3, [r4, #4]
0031ca14  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031ca18  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
0031ca1c  06 10 a0 e1                                      mov r1, r6
0031ca20  05 00 a0 e1                                      mov r0, r5
0031ca24  02 20 8f e0                                      add r2, pc, r2
0031ca28  ef bd 14 eb                                      bl #0x84c1ec
0031ca2c  00 10 e0 e3                                      mvn r1, #0
0031ca30  05 00 a0 e1                                      mov r0, r5
0031ca34  55 ba 14 eb                                      bl #0x84b390
0031ca38  01 10 e0 e3                                      mvn r1, #1
0031ca3c  6c 00 84 e5                                      str r0, [r4, #0x6c]
0031ca40  05 00 a0 e1                                      mov r0, r5
0031ca44  bd b9 14 eb                                      bl #0x84b140
0031ca48  07 30 a0 e3                                      mov r3, #7
0031ca4c  04 30 84 e5                                      str r3, [r4, #4]
0031ca50  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031ca54  06 10 a0 e1                                      mov r1, r6
0031ca58  05 00 a0 e1                                      mov r0, r5
0031ca5c  2f ba 14 eb                                      bl #0x84b320
0031ca60  bf c7 ff eb                                      bl #0x30e964
0031ca64  08 00 84 e5                                      str r0, [r4, #8]
0031ca68  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031ca6c  05 00 a0 e1                                      mov r0, r5
0031ca70  06 10 a0 e1                                      mov r1, r6
0031ca74  45 ba 14 eb                                      bl #0x84b390
0031ca78  6c 00 84 e5                                      str r0, [r4, #0x6c]
0031ca7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031ca80  05 00 a0 e1                                      mov r0, r5
0031ca84  06 10 a0 e1                                      mov r1, r6
0031ca88  70 be 14 eb                                      bl #0x84c450
0031ca8c  08 00 84 e5                                      str r0, [r4, #8]
0031ca90  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031ca94  06 10 a0 e1                                      mov r1, r6
0031ca98  00 20 a0 e3                                      mov r2, #0
0031ca9c  05 00 a0 e1                                      mov r0, r5
0031caa0  37 be 14 eb                                      bl #0x84c384
0031caa4  00 50 a0 e1                                      mov r5, r0
0031caa8  e9 c4 ff eb                                      bl #0x30de54
0031caac  05 10 a0 e1                                      mov r1, r5
0031cab0  00 20 85 e0                                      add r2, r5, r0
0031cab4  0c 00 84 e2                                      add r0, r4, #0xc
0031cab8  70 40 bd e8                                      pop {r4, r5, r6, lr}
0031cabc  c7 cf ff ea                                      b #0x3109e0
; mapping-symbol data/literal pool
0031cac0  2c 1e 5a 00                                      .byte 0x2c, 0x1e, 0x5a, 0x00

; FUNCTION 0x0031cac4, declared_size=572, range_size=572, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZNK3sfc6script3lua5Value12_pushOnStackEP9lua_State
; demangled: sfc::script::lua::Value::_pushOnStack(lua_State*) const
; decoder-mode: arm
0031cac4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0031cac8  18 42 9f e5                                      ldr r4, [pc, #0x218]
0031cacc  18 52 9f e5                                      ldr r5, [pc, #0x218]
0031cad0  04 30 90 e5                                      ldr r3, [r0, #4]
0031cad4  04 40 8f e0                                      add r4, pc, r4
0031cad8  05 20 94 e7                                      ldr r2, [r4, r5]
0031cadc  28 d0 4d e2                                      sub sp, sp, #0x28
0031cae0  00 60 a0 e1                                      mov r6, r0
0031cae4  00 20 92 e5                                      ldr r2, [r2]
0031cae8  01 70 a0 e1                                      mov r7, r1
0031caec  24 20 8d e5                                      str r2, [sp, #0x24]
0031caf0  07 00 53 e3                                      cmp r3, #7
0031caf4  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0031caf8  42 00 00 ea                                      b #0x31cc08
0031cafc  48 00 00 ea                                      b #0x31cc24
0031cb00  4a 00 00 ea                                      b #0x31cc30
0031cb04  51 00 00 ea                                      b #0x31cc50
0031cb08  54 00 00 ea                                      b #0x31cc60
0031cb0c  57 00 00 ea                                      b #0x31cc70
0031cb10  3c 00 00 ea                                      b #0x31cc08
0031cb14  3b 00 00 ea                                      b #0x31cc08
0031cb18  ff ff ff ea                                      b #0x31cb1c
0031cb1c  6c 30 90 e5                                      ldr r3, [r0, #0x6c]
0031cb20  00 00 53 e3                                      cmp r3, #0
0031cb24  3e 00 00 0a                                      beq #0x31cc24
0031cb28  00 10 a0 e3                                      mov r1, #0
0031cb2c  01 20 a0 e1                                      mov r2, r1
0031cb30  07 00 a0 e1                                      mov r0, r7
0031cb34  78 bd 14 eb                                      bl #0x84c11c
0031cb38  b0 11 9f e5                                      ldr r1, [pc, #0x1b0]
0031cb3c  07 00 a0 e1                                      mov r0, r7
0031cb40  0c 80 8d e2                                      add r8, sp, #0xc
0031cb44  01 10 8f e0                                      add r1, pc, r1
0031cb48  3f bd 14 eb                                      bl #0x84c04c
0031cb4c  07 00 a0 e1                                      mov r0, r7
0031cb50  6c 10 96 e5                                      ldr r1, [r6, #0x6c]
0031cb54  5c ba 14 eb                                      bl #0x84b4cc
0031cb58  07 00 a0 e1                                      mov r0, r7
0031cb5c  02 10 e0 e3                                      mvn r1, #2
0031cb60  60 bd 14 eb                                      bl #0x84c0e8
0031cb64  08 00 a0 e1                                      mov r0, r8
0031cb68  0d 10 a0 e3                                      mov r1, #0xd
0031cb6c  1c 80 8d e5                                      str r8, [sp, #0x1c]
0031cb70  20 80 8d e5                                      str r8, [sp, #0x20]
0031cb74  c0 d2 ff eb                                      bl #0x31167c
0031cb78  74 11 9f e5                                      ldr r1, [pc, #0x174]
0031cb7c  0c 20 a0 e3                                      mov r2, #0xc
0031cb80  20 00 9d e5                                      ldr r0, [sp, #0x20]
0031cb84  01 10 8f e0                                      add r1, pc, r1
0031cb88  36 c7 ff eb                                      bl #0x30e868
0031cb8c  00 a0 a0 e3                                      mov sl, #0
0031cb90  0c 30 80 e2                                      add r3, r0, #0xc
0031cb94  1c 30 8d e5                                      str r3, [sp, #0x1c]
0031cb98  0c a0 c0 e5                                      strb sl, [r0, #0xc]
0031cb9c  6c 30 96 e5                                      ldr r3, [r6, #0x6c]
0031cba0  03 00 a0 e1                                      mov r0, r3
0031cba4  00 30 93 e5                                      ldr r3, [r3]
0031cba8  0f e0 a0 e1                                      mov lr, pc
0031cbac  08 f0 93 e5                                      ldr pc, [r3, #8]
0031cbb0  00 90 a0 e1                                      mov sb, r0
0031cbb4  a6 c4 ff eb                                      bl #0x30de54
0031cbb8  09 10 a0 e1                                      mov r1, sb
0031cbbc  00 20 89 e0                                      add r2, sb, r0
0031cbc0  08 00 a0 e1                                      mov r0, r8
0031cbc4  0e cf ff eb                                      bl #0x310804
0031cbc8  07 00 a0 e1                                      mov r0, r7
0031cbcc  20 10 9d e5                                      ldr r1, [sp, #0x20]
0031cbd0  a9 c0 14 eb                                      bl #0x84ce7c
0031cbd4  0a 00 50 e1                                      cmp r0, sl
0031cbd8  28 00 00 1a                                      bne #0x31cc80
0031cbdc  07 00 a0 e1                                      mov r0, r7
0031cbe0  01 10 e0 e3                                      mvn r1, #1
0031cbe4  a1 bc 14 eb                                      bl #0x84be70
0031cbe8  20 00 9d e5                                      ldr r0, [sp, #0x20]
0031cbec  08 00 50 e1                                      cmp r0, r8
0031cbf0  04 00 00 0a                                      beq #0x31cc08
0031cbf4  00 00 50 e3                                      cmp r0, #0
0031cbf8  02 00 00 0a                                      beq #0x31cc08
0031cbfc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0031cc00  01 10 60 e0                                      rsb r1, r0, r1
0031cc04  ce fb ff eb                                      bl #0x31bb44
0031cc08  05 30 94 e7                                      ldr r3, [r4, r5]
0031cc0c  24 20 9d e5                                      ldr r2, [sp, #0x24]
0031cc10  00 30 93 e5                                      ldr r3, [r3]
0031cc14  03 00 52 e1                                      cmp r2, r3
0031cc18  31 00 00 1a                                      bne #0x31cce4
0031cc1c  28 d0 8d e2                                      add sp, sp, #0x28
0031cc20  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0031cc24  07 00 a0 e1                                      mov r0, r7
0031cc28  03 ba 14 eb                                      bl #0x84b43c
0031cc2c  f5 ff ff ea                                      b #0x31cc08
0031cc30  00 10 a0 e3                                      mov r1, #0
0031cc34  08 00 90 e5                                      ldr r0, [r0, #8]
0031cc38  d3 c4 ff eb                                      bl #0x30df8c
0031cc3c  01 10 70 e2                                      rsbs r1, r0, #1
0031cc40  00 10 a0 33                                      movlo r1, #0
0031cc44  07 00 a0 e1                                      mov r0, r7
0031cc48  16 ba 14 eb                                      bl #0x84b4a8
0031cc4c  ed ff ff ea                                      b #0x31cc08
0031cc50  01 00 a0 e1                                      mov r0, r1
0031cc54  6c 10 96 e5                                      ldr r1, [r6, #0x6c]
0031cc58  1b ba 14 eb                                      bl #0x84b4cc
0031cc5c  e9 ff ff ea                                      b #0x31cc08
0031cc60  01 00 a0 e1                                      mov r0, r1
0031cc64  08 10 96 e5                                      ldr r1, [r6, #8]
0031cc68  fa b9 14 eb                                      bl #0x84b458
0031cc6c  e5 ff ff ea                                      b #0x31cc08
0031cc70  01 00 a0 e1                                      mov r0, r1
0031cc74  20 10 96 e5                                      ldr r1, [r6, #0x20]
0031cc78  f3 bc 14 eb                                      bl #0x84c04c
0031cc7c  e1 ff ff ea                                      b #0x31cc08
0031cc80  70 10 9f e5                                      ldr r1, [pc, #0x70]
0031cc84  07 00 a0 e1                                      mov r0, r7
0031cc88  01 10 8f e0                                      add r1, pc, r1
0031cc8c  ee bc 14 eb                                      bl #0x84c04c
0031cc90  07 00 a0 e1                                      mov r0, r7
0031cc94  0a 10 a0 e1                                      mov r1, sl
0031cc98  0a 20 a0 e1                                      mov r2, sl
0031cc9c  1e bd 14 eb                                      bl #0x84c11c
0031cca0  54 20 9f e5                                      ldr r2, [pc, #0x54]
0031cca4  6c 30 96 e5                                      ldr r3, [r6, #0x6c]
0031cca8  04 a0 8d e5                                      str sl, [sp, #4]
0031ccac  02 20 94 e7                                      ldr r2, [r4, r2]
0031ccb0  08 70 8d e5                                      str r7, [sp, #8]
0031ccb4  03 00 a0 e1                                      mov r0, r3
0031ccb8  08 60 82 e2                                      add r6, r2, #8
0031ccbc  00 60 8d e5                                      str r6, [sp]
0031ccc0  0d 10 a0 e1                                      mov r1, sp
0031ccc4  00 30 93 e5                                      ldr r3, [r3]
0031ccc8  0f e0 a0 e1                                      mov lr, pc
0031cccc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0031ccd0  07 00 a0 e1                                      mov r0, r7
0031ccd4  02 10 e0 e3                                      mvn r1, #2
0031ccd8  02 bd 14 eb                                      bl #0x84c0e8
0031ccdc  00 60 8d e5                                      str r6, [sp]
0031cce0  bd ff ff ea                                      b #0x31cbdc
0031cce4  89 c5 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0031cce8  bc 7f 67 00 ac 40 00 00 0c 1d 5a 00 7c 1d 5a 00  .byte 0xbc, 0x7f, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00, 0x0c, 0x1d, 0x5a, 0x00, 0x7c, 0x1d, 0x5a, 0x00
0031ccf8  88 1c 5a 00 58 36 00 00                          .byte 0x88, 0x1c, 0x5a, 0x00, 0x58, 0x36, 0x00, 0x00

; FUNCTION 0x0031ce84, declared_size=784, range_size=784, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5Value14allocValueListEv
; demangled: sfc::script::lua::Value::allocValueList()
; decoder-mode: arm
0031ce84  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0031ce88  e0 52 9f e5                                      ldr r5, [pc, #0x2e0]
0031ce8c  e0 62 9f e5                                      ldr r6, [pc, #0x2e0]
0031ce90  44 d0 4d e2                                      sub sp, sp, #0x44
0031ce94  05 50 8f e0                                      add r5, pc, r5
0031ce98  06 e0 95 e7                                      ldr lr, [r5, r6]
0031ce9c  18 c0 8d e2                                      add ip, sp, #0x18
0031cea0  00 30 a0 e3                                      mov r3, #0
0031cea4  3c 30 8d e5                                      str r3, [sp, #0x3c]
0031cea8  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
0031ceac  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0031ceb0  10 00 8e e2                                      add r0, lr, #0x10
0031ceb4  0c 10 a0 e1                                      mov r1, ip
0031ceb8  d6 f9 ff eb                                      bl #0x31b618
0031cebc  00 00 50 e3                                      cmp r0, #0
0031cec0  52 00 00 1a                                      bne #0x31d010
0031cec4  ac a2 9f e5                                      ldr sl, [pc, #0x2ac]
0031cec8  0a 20 95 e7                                      ldr r2, [r5, sl]
0031cecc  00 30 92 e5                                      ldr r3, [r2]
0031ced0  02 00 53 e1                                      cmp r3, r2
0031ced4  02 00 00 0a                                      beq #0x31cee4
0031ced8  00 30 93 e5                                      ldr r3, [r3]
0031cedc  02 00 53 e1                                      cmp r3, r2
0031cee0  fc ff ff 1a                                      bne #0x31ced8
0031cee4  00 30 a0 e3                                      mov r3, #0
0031cee8  14 70 a0 e3                                      mov r7, #0x14
0031ceec  40 90 8d e2                                      add sb, sp, #0x40
0031cef0  30 30 8d e5                                      str r3, [sp, #0x30]
0031cef4  28 30 8d e5                                      str r3, [sp, #0x28]
0031cef8  2c 30 8d e5                                      str r3, [sp, #0x2c]
0031cefc  0c 70 29 e5                                      str r7, [sb, #-0xc]!
0031cf00  09 00 a0 e1                                      mov r0, sb
0031cf04  ed af 0f eb                                      bl #0x708ec0
0031cf08  28 80 8d e2                                      add r8, sp, #0x28
0031cf0c  00 40 a0 e1                                      mov r4, r0
0031cf10  08 10 a0 e1                                      mov r1, r8
0031cf14  08 00 80 e2                                      add r0, r0, #8
0031cf18  10 fe ff eb                                      bl #0x31c760
0031cf1c  0a b0 95 e7                                      ldr fp, [r5, sl]
0031cf20  08 00 a0 e1                                      mov r0, r8
0031cf24  04 30 9b e5                                      ldr r3, [fp, #4]
0031cf28  00 b0 84 e5                                      str fp, [r4]
0031cf2c  04 30 84 e5                                      str r3, [r4, #4]
0031cf30  00 40 83 e5                                      str r4, [r3]
0031cf34  04 40 8b e5                                      str r4, [fp, #4]
0031cf38  f1 fb ff eb                                      bl #0x31bf04
0031cf3c  04 40 9b e5                                      ldr r4, [fp, #4]
0031cf40  34 70 8d e5                                      str r7, [sp, #0x34]
0031cf44  08 20 94 e5                                      ldr r2, [r4, #8]
0031cf48  10 30 94 e5                                      ldr r3, [r4, #0x10]
0031cf4c  03 30 62 e0                                      rsb r3, r2, r3
0031cf50  43 32 a0 e1                                      asr r3, r3, #4
0031cf54  83 11 83 e0                                      add r1, r3, r3, lsl #3
0031cf58  01 13 81 e0                                      add r1, r1, r1, lsl #6
0031cf5c  81 11 83 e0                                      add r1, r3, r1, lsl #3
0031cf60  81 17 81 e0                                      add r1, r1, r1, lsl #15
0031cf64  81 31 83 e0                                      add r3, r3, r1, lsl #3
0031cf68  00 30 63 e2                                      rsb r3, r3, #0
0031cf6c  13 00 53 e3                                      cmp r3, #0x13
0031cf70  1a 00 00 8a                                      bhi #0x31cfe0
0031cf74  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0031cf78  00 00 52 e3                                      cmp r2, #0
0031cf7c  03 10 62 e0                                      rsb r1, r2, r3
0031cf80  41 12 a0 e1                                      asr r1, r1, #4
0031cf84  81 81 81 e0                                      add r8, r1, r1, lsl #3
0031cf88  08 83 88 e0                                      add r8, r8, r8, lsl #6
0031cf8c  88 81 81 e0                                      add r8, r1, r8, lsl #3
0031cf90  88 87 88 e0                                      add r8, r8, r8, lsl #15
0031cf94  88 81 81 e0                                      add r8, r1, r8, lsl #3
0031cf98  00 80 68 e2                                      rsb r8, r8, #0
0031cf9c  45 00 00 0a                                      beq #0x31d0b8
0031cfa0  08 70 84 e2                                      add r7, r4, #8
0031cfa4  09 10 a0 e1                                      mov r1, sb
0031cfa8  07 00 a0 e1                                      mov r0, r7
0031cfac  1f fe ff eb                                      bl #0x31c830
0031cfb0  00 90 a0 e1                                      mov sb, r0
0031cfb4  07 00 a0 e1                                      mov r0, r7
0031cfb8  88 fb ff eb                                      bl #0x31bde0
0031cfbc  34 20 9d e5                                      ldr r2, [sp, #0x34]
0031cfc0  70 30 a0 e3                                      mov r3, #0x70
0031cfc4  93 98 28 e0                                      mla r8, r3, r8, sb
0031cfc8  93 92 23 e0                                      mla r3, r3, r2, sb
0031cfcc  0a 20 95 e7                                      ldr r2, [r5, sl]
0031cfd0  10 30 84 e5                                      str r3, [r4, #0x10]
0031cfd4  0c 80 84 e5                                      str r8, [r4, #0xc]
0031cfd8  08 90 84 e5                                      str sb, [r4, #8]
0031cfdc  04 40 92 e5                                      ldr r4, [r2, #4]
0031cfe0  06 00 95 e7                                      ldr r0, [r5, r6]
0031cfe4  08 40 84 e2                                      add r4, r4, #8
0031cfe8  38 40 8d e5                                      str r4, [sp, #0x38]
0031cfec  18 20 90 e5                                      ldr r2, [r0, #0x18]
0031cff0  10 30 90 e5                                      ldr r3, [r0, #0x10]
0031cff4  04 20 42 e2                                      sub r2, r2, #4
0031cff8  02 00 53 e1                                      cmp r3, r2
0031cffc  33 00 00 0a                                      beq #0x31d0d0
0031d000  00 40 83 e5                                      str r4, [r3]
0031d004  10 30 90 e5                                      ldr r3, [r0, #0x10]
0031d008  04 30 83 e2                                      add r3, r3, #4
0031d00c  10 30 80 e5                                      str r3, [r0, #0x10]
0031d010  06 e0 95 e7                                      ldr lr, [r5, r6]
0031d014  08 c0 8d e2                                      add ip, sp, #8
0031d018  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
0031d01c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0031d020  10 00 8e e2                                      add r0, lr, #0x10
0031d024  0c 10 a0 e1                                      mov r1, ip
0031d028  7a f9 ff eb                                      bl #0x31b618
0031d02c  00 00 50 e3                                      cmp r0, #0
0031d030  07 00 00 1a                                      bne #0x31d054
0031d034  40 31 9f e5                                      ldr r3, [pc, #0x140]
0031d038  03 30 95 e7                                      ldr r3, [r5, r3]
0031d03c  00 30 93 e5                                      ldr r3, [r3]
0031d040  02 00 53 e3                                      cmp r3, #2
0031d044  00 00 80 05                                      streq r0, [r0]
0031d048  01 00 00 0a                                      beq #0x31d054
0031d04c  01 00 53 e3                                      cmp r3, #1
0031d050  39 00 00 0a                                      beq #0x31d13c
0031d054  06 30 95 e7                                      ldr r3, [r5, r6]
0031d058  00 20 93 e5                                      ldr r2, [r3]
0031d05c  08 00 93 e5                                      ldr r0, [r3, #8]
0031d060  00 10 92 e5                                      ldr r1, [r2]
0031d064  04 00 40 e2                                      sub r0, r0, #4
0031d068  00 00 52 e1                                      cmp r2, r0
0031d06c  04 20 82 12                                      addne r2, r2, #4
0031d070  3c 10 8d e5                                      str r1, [sp, #0x3c]
0031d074  00 20 83 15                                      strne r2, [r3]
0031d078  17 00 00 0a                                      beq #0x31d0dc
0031d07c  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
0031d080  03 00 95 e7                                      ldr r0, [r5, r3]
0031d084  18 20 90 e5                                      ldr r2, [r0, #0x18]
0031d088  10 30 90 e5                                      ldr r3, [r0, #0x10]
0031d08c  04 20 42 e2                                      sub r2, r2, #4
0031d090  02 00 53 e1                                      cmp r3, r2
0031d094  25 00 00 0a                                      beq #0x31d130
0031d098  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0031d09c  00 20 83 e5                                      str r2, [r3]
0031d0a0  10 30 90 e5                                      ldr r3, [r0, #0x10]
0031d0a4  04 30 83 e2                                      add r3, r3, #4
0031d0a8  10 30 80 e5                                      str r3, [r0, #0x10]
0031d0ac  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0031d0b0  44 d0 8d e2                                      add sp, sp, #0x44
0031d0b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0031d0b8  09 20 a0 e1                                      mov r2, sb
0031d0bc  07 10 a0 e1                                      mov r1, r7
0031d0c0  10 00 84 e2                                      add r0, r4, #0x10
0031d0c4  1b f1 ff eb                                      bl #0x319538
0031d0c8  00 90 a0 e1                                      mov sb, r0
0031d0cc  ba ff ff ea                                      b #0x31cfbc
0031d0d0  38 10 8d e2                                      add r1, sp, #0x38
0031d0d4  09 ff ff eb                                      bl #0x31cd00
0031d0d8  cc ff ff ea                                      b #0x31d010
0031d0dc  04 00 93 e5                                      ldr r0, [r3, #4]
0031d0e0  00 00 50 e3                                      cmp r0, #0
0031d0e4  01 00 00 0a                                      beq #0x31d0f0
0031d0e8  80 10 a0 e3                                      mov r1, #0x80
0031d0ec  83 af 0f eb                                      bl #0x708f00
0031d0f0  06 30 95 e7                                      ldr r3, [r5, r6]
0031d0f4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0031d0f8  04 10 82 e2                                      add r1, r2, #4
0031d0fc  0c 10 83 e5                                      str r1, [r3, #0xc]
0031d100  04 20 92 e5                                      ldr r2, [r2, #4]
0031d104  80 10 82 e2                                      add r1, r2, #0x80
0031d108  00 20 83 e5                                      str r2, [r3]
0031d10c  04 20 83 e5                                      str r2, [r3, #4]
0031d110  08 10 83 e5                                      str r1, [r3, #8]
0031d114  64 30 9f e5                                      ldr r3, [pc, #0x64]
0031d118  03 00 95 e7                                      ldr r0, [r5, r3]
0031d11c  18 20 90 e5                                      ldr r2, [r0, #0x18]
0031d120  10 30 90 e5                                      ldr r3, [r0, #0x10]
0031d124  04 20 42 e2                                      sub r2, r2, #4
0031d128  02 00 53 e1                                      cmp r3, r2
0031d12c  d9 ff ff 1a                                      bne #0x31d098
0031d130  3c 10 8d e2                                      add r1, sp, #0x3c
0031d134  f1 fe ff eb                                      bl #0x31cd00
0031d138  db ff ff ea                                      b #0x31d0ac
0031d13c  40 00 9f e5                                      ldr r0, [pc, #0x40]
0031d140  40 10 9f e5                                      ldr r1, [pc, #0x40]
0031d144  40 20 9f e5                                      ldr r2, [pc, #0x40]
0031d148  00 00 95 e7                                      ldr r0, [r5, r0]
0031d14c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0031d150  32 c0 a0 e3                                      mov ip, #0x32
0031d154  01 10 8f e0                                      add r1, pc, r1
0031d158  02 20 8f e0                                      add r2, pc, r2
0031d15c  03 30 8f e0                                      add r3, pc, r3
0031d160  a8 00 80 e2                                      add r0, r0, #0xa8
0031d164  00 c0 8d e5                                      str ip, [sp]
0031d168  a5 c3 ff eb                                      bl #0x30e004
0031d16c  b8 ff ff ea                                      b #0x31d054
; mapping-symbol data/literal pool
0031d170  fc 7b 67 00 a0 09 00 00 84 28 00 00 c0 39 00 00  .byte 0xfc, 0x7b, 0x67, 0x00, 0xa0, 0x09, 0x00, 0x00, 0x84, 0x28, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
0031d180  b4 0b 00 00 c0 19 00 00 84 12 5a 00 c0 17 5a 00  .byte 0xb4, 0x0b, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x84, 0x12, 0x5a, 0x00, 0xc0, 0x17, 0x5a, 0x00
0031d190  d4 17 5a 00                                      .byte 0xd4, 0x17, 0x5a, 0x00

; FUNCTION 0x0031d194, declared_size=1004, range_size=1004, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5Value13freeValueListEPSt6vectorIS2_SaIS2_EE
; demangled: sfc::script::lua::Value::freeValueList(std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*)
; decoder-mode: arm
0031d194  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0031d198  b4 53 9f e5                                      ldr r5, [pc, #0x3b4]
0031d19c  45 df 4d e2                                      sub sp, sp, #0x114
0031d1a0  00 30 50 e2                                      subs r3, r0, #0
0031d1a4  0c 00 8d e5                                      str r0, [sp, #0xc]
0031d1a8  05 50 8f e0                                      add r5, pc, r5
0031d1ac  d0 00 00 0a                                      beq #0x31d4f4
0031d1b0  a0 63 9f e5                                      ldr r6, [pc, #0x3a0]
0031d1b4  0c 30 8d e2                                      add r3, sp, #0xc
0031d1b8  e0 20 8d e2                                      add r2, sp, #0xe0
0031d1bc  06 40 95 e7                                      ldr r4, [r5, r6]
0031d1c0  f0 00 8d e2                                      add r0, sp, #0xf0
0031d1c4  d0 10 8d e2                                      add r1, sp, #0xd0
0031d1c8  80 10 94 e9                                      ldmib r4, {r7, ip}
0031d1cc  00 80 94 e5                                      ldr r8, [r4]
0031d1d0  d8 c0 8d e5                                      str ip, [sp, #0xd8]
0031d1d4  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0031d1d8  1c a0 94 e5                                      ldr sl, [r4, #0x1c]
0031d1dc  18 90 94 e5                                      ldr sb, [r4, #0x18]
0031d1e0  14 b0 94 e5                                      ldr fp, [r4, #0x14]
0031d1e4  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0031d1e8  e0 c0 8d e5                                      str ip, [sp, #0xe0]
0031d1ec  43 cf 8d e2                                      add ip, sp, #0x10c
0031d1f0  08 30 8d e5                                      str r3, [sp, #8]
0031d1f4  dc e0 8d e5                                      str lr, [sp, #0xdc]
0031d1f8  d4 70 8d e5                                      str r7, [sp, #0xd4]
0031d1fc  d0 80 8d e5                                      str r8, [sp, #0xd0]
0031d200  ec a0 8d e5                                      str sl, [sp, #0xec]
0031d204  e8 90 8d e5                                      str sb, [sp, #0xe8]
0031d208  e4 b0 8d e5                                      str fp, [sp, #0xe4]
0031d20c  00 c0 8d e5                                      str ip, [sp]
0031d210  11 f9 ff eb                                      bl #0x31b65c
0031d214  10 30 94 e5                                      ldr r3, [r4, #0x10]
0031d218  f0 20 9d e5                                      ldr r2, [sp, #0xf0]
0031d21c  02 00 53 e1                                      cmp r3, r2
0031d220  02 30 a0 11                                      movne r3, r2
0031d224  9b 00 00 0a                                      beq #0x31d498
0031d228  f4 80 9d e5                                      ldr r8, [sp, #0xf4]
0031d22c  f8 70 9d e5                                      ldr r7, [sp, #0xf8]
0031d230  fc a0 9d e5                                      ldr sl, [sp, #0xfc]
0031d234  04 b0 83 e2                                      add fp, r3, #4
0031d238  0b 00 57 e1                                      cmp r7, fp
0031d23c  06 40 95 e7                                      ldr r4, [r5, r6]
0031d240  c8 70 8d e5                                      str r7, [sp, #0xc8]
0031d244  c0 30 8d e5                                      str r3, [sp, #0xc0]
0031d248  cc a0 8d e5                                      str sl, [sp, #0xcc]
0031d24c  c4 80 8d e5                                      str r8, [sp, #0xc4]
0031d250  04 80 ba 05                                      ldreq r8, [sl, #4]!
0031d254  a0 c0 8d e2                                      add ip, sp, #0xa0
0031d258  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0031d25c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0031d260  0c 10 a0 e1                                      mov r1, ip
0031d264  c0 00 8d e2                                      add r0, sp, #0xc0
0031d268  80 70 88 02                                      addeq r7, r8, #0x80
0031d26c  08 b0 a0 01                                      moveq fp, r8
0031d270  e8 f8 ff eb                                      bl #0x31b618
0031d274  90 c0 8d e2                                      add ip, sp, #0x90
0031d278  00 90 a0 e1                                      mov sb, r0
0031d27c  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0031d280  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0031d284  0c 10 a0 e1                                      mov r1, ip
0031d288  10 00 84 e2                                      add r0, r4, #0x10
0031d28c  e1 f8 ff eb                                      bl #0x31b618
0031d290  a0 00 59 e1                                      cmp sb, r0, lsr #1
0031d294  3e 00 00 2a                                      bhs #0x31d394
0031d298  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0031d29c  08 e0 94 e5                                      ldr lr, [r4, #8]
0031d2a0  60 20 8d e2                                      add r2, sp, #0x60
0031d2a4  7c c0 8d e5                                      str ip, [sp, #0x7c]
0031d2a8  04 c0 94 e5                                      ldr ip, [r4, #4]
0031d2ac  50 30 8d e2                                      add r3, sp, #0x50
0031d2b0  80 00 8d e2                                      add r0, sp, #0x80
0031d2b4  74 c0 8d e5                                      str ip, [sp, #0x74]
0031d2b8  00 c0 94 e5                                      ldr ip, [r4]
0031d2bc  70 10 8d e2                                      add r1, sp, #0x70
0031d2c0  78 e0 8d e5                                      str lr, [sp, #0x78]
0031d2c4  70 c0 8d e5                                      str ip, [sp, #0x70]
0031d2c8  cc c0 9d e5                                      ldr ip, [sp, #0xcc]
0031d2cc  5c a0 8d e5                                      str sl, [sp, #0x5c]
0031d2d0  58 70 8d e5                                      str r7, [sp, #0x58]
0031d2d4  6c c0 8d e5                                      str ip, [sp, #0x6c]
0031d2d8  c8 c0 9d e5                                      ldr ip, [sp, #0xc8]
0031d2dc  54 80 8d e5                                      str r8, [sp, #0x54]
0031d2e0  50 b0 8d e5                                      str fp, [sp, #0x50]
0031d2e4  68 c0 8d e5                                      str ip, [sp, #0x68]
0031d2e8  c4 c0 9d e5                                      ldr ip, [sp, #0xc4]
0031d2ec  64 c0 8d e5                                      str ip, [sp, #0x64]
0031d2f0  c0 c0 9d e5                                      ldr ip, [sp, #0xc0]
0031d2f4  60 c0 8d e5                                      str ip, [sp, #0x60]
0031d2f8  41 cf 8d e2                                      add ip, sp, #0x104
0031d2fc  00 c0 8d e5                                      str ip, [sp]
0031d300  00 c0 a0 e3                                      mov ip, #0
0031d304  04 c0 8d e5                                      str ip, [sp, #4]
0031d308  73 f9 ff eb                                      bl #0x31b8dc
0031d30c  08 20 94 e5                                      ldr r2, [r4, #8]
0031d310  00 30 94 e5                                      ldr r3, [r4]
0031d314  04 20 42 e2                                      sub r2, r2, #4
0031d318  02 00 53 e1                                      cmp r3, r2
0031d31c  04 30 83 12                                      addne r3, r3, #4
0031d320  00 30 84 15                                      strne r3, [r4]
0031d324  4c 00 00 0a                                      beq #0x31d45c
0031d328  06 30 95 e7                                      ldr r3, [r5, r6]
0031d32c  b0 c0 8d e2                                      add ip, sp, #0xb0
0031d330  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0031d334  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0031d338  0c 00 a0 e1                                      mov r0, ip
0031d33c  09 10 a0 e1                                      mov r1, sb
0031d340  e2 f9 ff eb                                      bl #0x31bad0
0031d344  10 32 9f e5                                      ldr r3, [pc, #0x210]
0031d348  03 00 95 e7                                      ldr r0, [r5, r3]
0031d34c  18 20 90 e5                                      ldr r2, [r0, #0x18]
0031d350  10 30 90 e5                                      ldr r3, [r0, #0x10]
0031d354  04 20 42 e2                                      sub r2, r2, #4
0031d358  02 00 53 e1                                      cmp r3, r2
0031d35c  79 00 00 0a                                      beq #0x31d548
0031d360  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0031d364  00 20 83 e5                                      str r2, [r3]
0031d368  10 30 90 e5                                      ldr r3, [r0, #0x10]
0031d36c  04 30 83 e2                                      add r3, r3, #4
0031d370  10 30 80 e5                                      str r3, [r0, #0x10]
0031d374  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0031d378  06 00 90 e8                                      ldm r0, {r1, r2}
0031d37c  02 00 51 e1                                      cmp r1, r2
0031d380  01 00 00 0a                                      beq #0x31d38c
0031d384  42 3f 8d e2                                      add r3, sp, #0x108
0031d388  0f fc ff eb                                      bl #0x31c3cc
0031d38c  45 df 8d e2                                      add sp, sp, #0x114
0031d390  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0031d394  1c c0 94 e5                                      ldr ip, [r4, #0x1c]
0031d398  18 e0 94 e5                                      ldr lr, [r4, #0x18]
0031d39c  40 00 8d e2                                      add r0, sp, #0x40
0031d3a0  2c c0 8d e5                                      str ip, [sp, #0x2c]
0031d3a4  14 c0 94 e5                                      ldr ip, [r4, #0x14]
0031d3a8  10 30 8d e2                                      add r3, sp, #0x10
0031d3ac  30 10 8d e2                                      add r1, sp, #0x30
0031d3b0  24 c0 8d e5                                      str ip, [sp, #0x24]
0031d3b4  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0031d3b8  20 20 8d e2                                      add r2, sp, #0x20
0031d3bc  3c a0 8d e5                                      str sl, [sp, #0x3c]
0031d3c0  20 c0 8d e5                                      str ip, [sp, #0x20]
0031d3c4  cc c0 9d e5                                      ldr ip, [sp, #0xcc]
0031d3c8  38 70 8d e5                                      str r7, [sp, #0x38]
0031d3cc  34 80 8d e5                                      str r8, [sp, #0x34]
0031d3d0  1c c0 8d e5                                      str ip, [sp, #0x1c]
0031d3d4  c8 c0 9d e5                                      ldr ip, [sp, #0xc8]
0031d3d8  30 b0 8d e5                                      str fp, [sp, #0x30]
0031d3dc  28 e0 8d e5                                      str lr, [sp, #0x28]
0031d3e0  18 c0 8d e5                                      str ip, [sp, #0x18]
0031d3e4  c4 c0 9d e5                                      ldr ip, [sp, #0xc4]
0031d3e8  14 c0 8d e5                                      str ip, [sp, #0x14]
0031d3ec  c0 c0 9d e5                                      ldr ip, [sp, #0xc0]
0031d3f0  10 c0 8d e5                                      str ip, [sp, #0x10]
0031d3f4  01 cc 8d e2                                      add ip, sp, #0x100
0031d3f8  00 c0 8d e5                                      str ip, [sp]
0031d3fc  00 c0 a0 e3                                      mov ip, #0
0031d400  04 c0 8d e5                                      str ip, [sp, #4]
0031d404  73 f9 ff eb                                      bl #0x31b9d8
0031d408  10 00 94 e5                                      ldr r0, [r4, #0x10]
0031d40c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0031d410  03 00 50 e1                                      cmp r0, r3
0031d414  04 00 40 12                                      subne r0, r0, #4
0031d418  10 00 84 15                                      strne r0, [r4, #0x10]
0031d41c  c1 ff ff 1a                                      bne #0x31d328
0031d420  00 00 50 e3                                      cmp r0, #0
0031d424  01 00 00 0a                                      beq #0x31d430
0031d428  80 10 a0 e3                                      mov r1, #0x80
0031d42c  c4 f9 ff eb                                      bl #0x31bb44
0031d430  06 30 95 e7                                      ldr r3, [r5, r6]
0031d434  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
0031d438  04 10 42 e2                                      sub r1, r2, #4
0031d43c  1c 10 83 e5                                      str r1, [r3, #0x1c]
0031d440  04 20 12 e5                                      ldr r2, [r2, #-4]
0031d444  7c 00 82 e2                                      add r0, r2, #0x7c
0031d448  80 10 82 e2                                      add r1, r2, #0x80
0031d44c  10 00 83 e5                                      str r0, [r3, #0x10]
0031d450  18 10 83 e5                                      str r1, [r3, #0x18]
0031d454  14 20 83 e5                                      str r2, [r3, #0x14]
0031d458  b2 ff ff ea                                      b #0x31d328
0031d45c  04 00 94 e5                                      ldr r0, [r4, #4]
0031d460  00 00 50 e3                                      cmp r0, #0
0031d464  01 00 00 0a                                      beq #0x31d470
0031d468  80 10 a0 e3                                      mov r1, #0x80
0031d46c  a3 ae 0f eb                                      bl #0x708f00
0031d470  06 30 95 e7                                      ldr r3, [r5, r6]
0031d474  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0031d478  04 10 82 e2                                      add r1, r2, #4
0031d47c  0c 10 83 e5                                      str r1, [r3, #0xc]
0031d480  04 20 92 e5                                      ldr r2, [r2, #4]
0031d484  80 10 82 e2                                      add r1, r2, #0x80
0031d488  00 20 83 e5                                      str r2, [r3]
0031d48c  08 10 83 e5                                      str r1, [r3, #8]
0031d490  04 20 83 e5                                      str r2, [r3, #4]
0031d494  a3 ff ff ea                                      b #0x31d328
0031d498  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
0031d49c  02 20 95 e7                                      ldr r2, [r5, r2]
0031d4a0  00 20 92 e5                                      ldr r2, [r2]
0031d4a4  02 00 52 e3                                      cmp r2, #2
0031d4a8  00 20 a0 03                                      moveq r2, #0
0031d4ac  00 20 82 05                                      streq r2, [r2]
0031d4b0  5c ff ff 0a                                      beq #0x31d228
0031d4b4  01 00 52 e3                                      cmp r2, #1
0031d4b8  5a ff ff 1a                                      bne #0x31d228
0031d4bc  a0 00 9f e5                                      ldr r0, [pc, #0xa0]
0031d4c0  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
0031d4c4  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
0031d4c8  00 00 95 e7                                      ldr r0, [r5, r0]
0031d4cc  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
0031d4d0  42 c0 a0 e3                                      mov ip, #0x42
0031d4d4  01 10 8f e0                                      add r1, pc, r1
0031d4d8  03 30 8f e0                                      add r3, pc, r3
0031d4dc  a8 00 80 e2                                      add r0, r0, #0xa8
0031d4e0  02 20 8f e0                                      add r2, pc, r2
0031d4e4  00 c0 8d e5                                      str ip, [sp]
0031d4e8  c5 c2 ff eb                                      bl #0x30e004
0031d4ec  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
0031d4f0  4c ff ff ea                                      b #0x31d228
0031d4f4  64 20 9f e5                                      ldr r2, [pc, #0x64]
0031d4f8  02 20 95 e7                                      ldr r2, [r5, r2]
0031d4fc  00 20 92 e5                                      ldr r2, [r2]
0031d500  02 00 52 e3                                      cmp r2, #2
0031d504  00 30 83 05                                      streq r3, [r3]
0031d508  28 ff ff 0a                                      beq #0x31d1b0
0031d50c  01 00 52 e3                                      cmp r2, #1
0031d510  26 ff ff 1a                                      bne #0x31d1b0
0031d514  48 00 9f e5                                      ldr r0, [pc, #0x48]
0031d518  54 10 9f e5                                      ldr r1, [pc, #0x54]
0031d51c  54 20 9f e5                                      ldr r2, [pc, #0x54]
0031d520  00 00 95 e7                                      ldr r0, [r5, r0]
0031d524  50 30 9f e5                                      ldr r3, [pc, #0x50]
0031d528  3e c0 a0 e3                                      mov ip, #0x3e
0031d52c  01 10 8f e0                                      add r1, pc, r1
0031d530  02 20 8f e0                                      add r2, pc, r2
0031d534  03 30 8f e0                                      add r3, pc, r3
0031d538  a8 00 80 e2                                      add r0, r0, #0xa8
0031d53c  00 c0 8d e5                                      str ip, [sp]
0031d540  af c2 ff eb                                      bl #0x30e004
0031d544  19 ff ff ea                                      b #0x31d1b0
0031d548  08 10 9d e5                                      ldr r1, [sp, #8]
0031d54c  eb fd ff eb                                      bl #0x31cd00
0031d550  87 ff ff ea                                      b #0x31d374
; mapping-symbol data/literal pool
0031d554  e8 78 67 00 b4 0b 00 00 a0 09 00 00 c0 39 00 00  .byte 0xe8, 0x78, 0x67, 0x00, 0xb4, 0x0b, 0x00, 0x00, 0xa0, 0x09, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
0031d564  c0 19 00 00 04 0f 5a 00 a0 14 5a 00 58 14 5a 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x04, 0x0f, 0x5a, 0x00, 0xa0, 0x14, 0x5a, 0x00, 0x58, 0x14, 0x5a, 0x00
0031d574  ac 0e 5a 00 48 14 5a 00 fc 13 5a 00              .byte 0xac, 0x0e, 0x5a, 0x00, 0x48, 0x14, 0x5a, 0x00, 0xfc, 0x13, 0x5a, 0x00

; FUNCTION 0x0037c764, declared_size=128, range_size=128, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5ValueC1Eb
; demangled: sfc::script::lua::Value::Value(bool)
; decoder-mode: arm
0037c764  70 20 9f e5                                      ldr r2, [pc, #0x70]
0037c768  70 c0 9f e5                                      ldr ip, [pc, #0x70]
0037c76c  00 30 a0 e1                                      mov r3, r0
0037c770  02 20 8f e0                                      add r2, pc, r2
0037c774  0c c0 92 e7                                      ldr ip, [r2, ip]
0037c778  70 40 2d e9                                      push {r4, r5, r6, lr}
0037c77c  08 c0 8c e2                                      add ip, ip, #8
0037c780  00 40 a0 e1                                      mov r4, r0
0037c784  0c c0 83 e4                                      str ip, [r3], #0xc
0037c788  01 60 a0 e1                                      mov r6, r1
0037c78c  03 00 a0 e1                                      mov r0, r3
0037c790  1c 30 84 e5                                      str r3, [r4, #0x1c]
0037c794  20 30 84 e5                                      str r3, [r4, #0x20]
0037c798  10 10 a0 e3                                      mov r1, #0x10
0037c79c  b6 53 fe eb                                      bl #0x31167c
0037c7a0  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0037c7a4  24 30 84 e2                                      add r3, r4, #0x24
0037c7a8  00 50 a0 e3                                      mov r5, #0
0037c7ac  00 50 c2 e5                                      strb r5, [r2]
0037c7b0  03 00 a0 e1                                      mov r0, r3
0037c7b4  64 30 84 e5                                      str r3, [r4, #0x64]
0037c7b8  68 30 84 e5                                      str r3, [r4, #0x68]
0037c7bc  a0 fd ff eb                                      bl #0x37be44
0037c7c0  64 30 94 e5                                      ldr r3, [r4, #0x64]
0037c7c4  04 00 a0 e1                                      mov r0, r4
0037c7c8  06 10 a0 e1                                      mov r1, r6
0037c7cc  00 50 83 e5                                      str r5, [r3]
0037c7d0  7d 7b fe eb                                      bl #0x31b5cc
0037c7d4  04 00 a0 e1                                      mov r0, r4
0037c7d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0037c7dc  20 83 61 00 98 07 00 00                          .byte 0x20, 0x83, 0x61, 0x00, 0x98, 0x07, 0x00, 0x00

; FUNCTION 0x0037c84c, declared_size=128, range_size=128, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5ValueC1EPKc
; demangled: sfc::script::lua::Value::Value(char const*)
; decoder-mode: arm
0037c84c  70 20 9f e5                                      ldr r2, [pc, #0x70]
0037c850  70 c0 9f e5                                      ldr ip, [pc, #0x70]
0037c854  00 30 a0 e1                                      mov r3, r0
0037c858  02 20 8f e0                                      add r2, pc, r2
0037c85c  0c c0 92 e7                                      ldr ip, [r2, ip]
0037c860  70 40 2d e9                                      push {r4, r5, r6, lr}
0037c864  08 c0 8c e2                                      add ip, ip, #8
0037c868  00 40 a0 e1                                      mov r4, r0
0037c86c  0c c0 83 e4                                      str ip, [r3], #0xc
0037c870  01 60 a0 e1                                      mov r6, r1
0037c874  03 00 a0 e1                                      mov r0, r3
0037c878  1c 30 84 e5                                      str r3, [r4, #0x1c]
0037c87c  20 30 84 e5                                      str r3, [r4, #0x20]
0037c880  10 10 a0 e3                                      mov r1, #0x10
0037c884  7c 53 fe eb                                      bl #0x31167c
0037c888  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0037c88c  24 30 84 e2                                      add r3, r4, #0x24
0037c890  00 50 a0 e3                                      mov r5, #0
0037c894  00 50 c2 e5                                      strb r5, [r2]
0037c898  03 00 a0 e1                                      mov r0, r3
0037c89c  64 30 84 e5                                      str r3, [r4, #0x64]
0037c8a0  68 30 84 e5                                      str r3, [r4, #0x68]
0037c8a4  66 fd ff eb                                      bl #0x37be44
0037c8a8  64 30 94 e5                                      ldr r3, [r4, #0x64]
0037c8ac  04 00 a0 e1                                      mov r0, r4
0037c8b0  06 10 a0 e1                                      mov r1, r6
0037c8b4  00 50 83 e5                                      str r5, [r3]
0037c8b8  eb 7e fe eb                                      bl #0x31c46c
0037c8bc  04 00 a0 e1                                      mov r0, r4
0037c8c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0037c8c4  38 82 61 00 98 07 00 00                          .byte 0x38, 0x82, 0x61, 0x00, 0x98, 0x07, 0x00, 0x00

; FUNCTION 0x0037c978, declared_size=128, range_size=128, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5ValueC1EPNS1_8UserDataE
; demangled: sfc::script::lua::Value::Value(sfc::script::lua::UserData*)
; decoder-mode: arm
0037c978  70 20 9f e5                                      ldr r2, [pc, #0x70]
0037c97c  70 c0 9f e5                                      ldr ip, [pc, #0x70]
0037c980  00 30 a0 e1                                      mov r3, r0
0037c984  02 20 8f e0                                      add r2, pc, r2
0037c988  0c c0 92 e7                                      ldr ip, [r2, ip]
0037c98c  70 40 2d e9                                      push {r4, r5, r6, lr}
0037c990  08 c0 8c e2                                      add ip, ip, #8
0037c994  00 40 a0 e1                                      mov r4, r0
0037c998  0c c0 83 e4                                      str ip, [r3], #0xc
0037c99c  01 60 a0 e1                                      mov r6, r1
0037c9a0  03 00 a0 e1                                      mov r0, r3
0037c9a4  1c 30 84 e5                                      str r3, [r4, #0x1c]
0037c9a8  20 30 84 e5                                      str r3, [r4, #0x20]
0037c9ac  10 10 a0 e3                                      mov r1, #0x10
0037c9b0  31 53 fe eb                                      bl #0x31167c
0037c9b4  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0037c9b8  24 30 84 e2                                      add r3, r4, #0x24
0037c9bc  00 50 a0 e3                                      mov r5, #0
0037c9c0  00 50 c2 e5                                      strb r5, [r2]
0037c9c4  03 00 a0 e1                                      mov r0, r3
0037c9c8  64 30 84 e5                                      str r3, [r4, #0x64]
0037c9cc  68 30 84 e5                                      str r3, [r4, #0x68]
0037c9d0  1b fd ff eb                                      bl #0x37be44
0037c9d4  64 30 94 e5                                      ldr r3, [r4, #0x64]
0037c9d8  04 00 a0 e1                                      mov r0, r4
0037c9dc  06 10 a0 e1                                      mov r1, r6
0037c9e0  00 50 83 e5                                      str r5, [r3]
0037c9e4  07 7b fe eb                                      bl #0x31b608
0037c9e8  04 00 a0 e1                                      mov r0, r4
0037c9ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0037c9f0  0c 81 61 00 98 07 00 00                          .byte 0x0c, 0x81, 0x61, 0x00, 0x98, 0x07, 0x00, 0x00

; FUNCTION 0x0037ca9c, declared_size=136, range_size=136, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5ValueC1Ei
; demangled: sfc::script::lua::Value::Value(int)
; decoder-mode: arm
0037ca9c  78 20 9f e5                                      ldr r2, [pc, #0x78]
0037caa0  78 c0 9f e5                                      ldr ip, [pc, #0x78]
0037caa4  00 30 a0 e1                                      mov r3, r0
0037caa8  02 20 8f e0                                      add r2, pc, r2
0037caac  0c c0 92 e7                                      ldr ip, [r2, ip]
0037cab0  70 40 2d e9                                      push {r4, r5, r6, lr}
0037cab4  08 c0 8c e2                                      add ip, ip, #8
0037cab8  00 40 a0 e1                                      mov r4, r0
0037cabc  0c c0 83 e4                                      str ip, [r3], #0xc
0037cac0  01 50 a0 e1                                      mov r5, r1
0037cac4  03 00 a0 e1                                      mov r0, r3
0037cac8  10 10 a0 e3                                      mov r1, #0x10
0037cacc  1c 30 84 e5                                      str r3, [r4, #0x1c]
0037cad0  20 30 84 e5                                      str r3, [r4, #0x20]
0037cad4  e8 52 fe eb                                      bl #0x31167c
0037cad8  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0037cadc  24 30 84 e2                                      add r3, r4, #0x24
0037cae0  00 60 a0 e3                                      mov r6, #0
0037cae4  00 60 c2 e5                                      strb r6, [r2]
0037cae8  03 00 a0 e1                                      mov r0, r3
0037caec  64 30 84 e5                                      str r3, [r4, #0x64]
0037caf0  68 30 84 e5                                      str r3, [r4, #0x68]
0037caf4  d2 fc ff eb                                      bl #0x37be44
0037caf8  64 30 94 e5                                      ldr r3, [r4, #0x64]
0037cafc  05 00 a0 e1                                      mov r0, r5
0037cb00  00 60 83 e5                                      str r6, [r3]
0037cb04  96 47 fe eb                                      bl #0x30e964
0037cb08  00 10 a0 e1                                      mov r1, r0
0037cb0c  04 00 a0 e1                                      mov r0, r4
0037cb10  b4 7a fe eb                                      bl #0x31b5e8
0037cb14  04 00 a0 e1                                      mov r0, r4
0037cb18  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0037cb1c  e8 7f 61 00 98 07 00 00                          .byte 0xe8, 0x7f, 0x61, 0x00, 0x98, 0x07, 0x00, 0x00

; FUNCTION 0x0037cc3c, declared_size=128, range_size=128, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZN3sfc6script3lua5ValueC1Ef
; demangled: sfc::script::lua::Value::Value(float)
; decoder-mode: arm
0037cc3c  70 20 9f e5                                      ldr r2, [pc, #0x70]
0037cc40  70 c0 9f e5                                      ldr ip, [pc, #0x70]
0037cc44  00 30 a0 e1                                      mov r3, r0
0037cc48  02 20 8f e0                                      add r2, pc, r2
0037cc4c  0c c0 92 e7                                      ldr ip, [r2, ip]
0037cc50  70 40 2d e9                                      push {r4, r5, r6, lr}
0037cc54  08 c0 8c e2                                      add ip, ip, #8
0037cc58  00 40 a0 e1                                      mov r4, r0
0037cc5c  0c c0 83 e4                                      str ip, [r3], #0xc
0037cc60  01 60 a0 e1                                      mov r6, r1
0037cc64  03 00 a0 e1                                      mov r0, r3
0037cc68  1c 30 84 e5                                      str r3, [r4, #0x1c]
0037cc6c  20 30 84 e5                                      str r3, [r4, #0x20]
0037cc70  10 10 a0 e3                                      mov r1, #0x10
0037cc74  80 52 fe eb                                      bl #0x31167c
0037cc78  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0037cc7c  24 30 84 e2                                      add r3, r4, #0x24
0037cc80  00 50 a0 e3                                      mov r5, #0
0037cc84  00 50 c2 e5                                      strb r5, [r2]
0037cc88  03 00 a0 e1                                      mov r0, r3
0037cc8c  64 30 84 e5                                      str r3, [r4, #0x64]
0037cc90  68 30 84 e5                                      str r3, [r4, #0x68]
0037cc94  6a fc ff eb                                      bl #0x37be44
0037cc98  64 30 94 e5                                      ldr r3, [r4, #0x64]
0037cc9c  04 00 a0 e1                                      mov r0, r4
0037cca0  06 10 a0 e1                                      mov r1, r6
0037cca4  00 50 83 e5                                      str r5, [r3]
0037cca8  4e 7a fe eb                                      bl #0x31b5e8
0037ccac  04 00 a0 e1                                      mov r0, r4
0037ccb0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0037ccb4  48 7e 61 00 98 07 00 00                          .byte 0x48, 0x7e, 0x61, 0x00, 0x98, 0x07, 0x00, 0x00

; FUNCTION 0x0038d798, declared_size=16, range_size=16, mode=arm
; class-group: sfc::script::lua::Value
; alias: _ZNK3sfc6script3lua5Value11getUIntegerEv
; demangled: sfc::script::lua::Value::getUInteger() const
; decoder-mode: arm
0038d798  10 40 2d e9                                      push {r4, lr}
0038d79c  13 39 fe eb                                      bl #0x31bbf0
0038d7a0  be c2 14 eb                                      bl #0x8be2a0
0038d7a4  10 80 bd e8                                      pop {r4, pc}
