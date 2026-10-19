; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075ae5c, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membuf6resizeEi
; demangled: gameswf::membuf::resize(int)
; decoder-mode: arm
0075ae5c  70 40 2d e9                                      push {r4, r5, r6, lr}
0075ae60  00 30 90 e5                                      ldr r3, [r0]
0075ae64  00 40 a0 e1                                      mov r4, r0
0075ae68  01 50 a0 e1                                      mov r5, r1
0075ae6c  01 00 53 e1                                      cmp r3, r1
0075ae70  03 00 00 0a                                      beq #0x75ae84
0075ae74  04 30 90 e5                                      ldr r3, [r0, #4]
0075ae78  03 00 51 e1                                      cmp r1, r3
0075ae7c  01 00 00 ca                                      bgt #0x75ae88
0075ae80  00 50 84 e5                                      str r5, [r4]
0075ae84  70 80 bd e8                                      pop {r4, r5, r6, pc}
0075ae88  01 00 a0 e1                                      mov r0, r1
0075ae8c  f3 6c 01 eb                                      bl #0x7b6260
0075ae90  00 10 a0 e1                                      mov r1, r0
0075ae94  04 00 a0 e1                                      mov r0, r4
0075ae98  38 6d 01 eb                                      bl #0x7b6380
0075ae9c  f7 ff ff ea                                      b #0x75ae80

; FUNCTION 0x007b6260, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membuf8capacityEi
; demangled: gameswf::membuf::capacity(int)
; decoder-mode: arm
007b6260  00 00 50 e3                                      cmp r0, #0
007b6264  ff 00 80 12                                      addne r0, r0, #0xff
007b6268  01 0c a0 03                                      moveq r0, #0x100
007b626c  ff 00 c0 13                                      bicne r0, r0, #0xff
007b6270  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b6274, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membufC2Ev
; demangled: gameswf::membuf::membuf()
; decoder-mode: arm
007b6274  00 20 a0 e3                                      mov r2, #0
007b6278  0c 20 c0 e5                                      strb r2, [r0, #0xc]
007b627c  00 20 80 e5                                      str r2, [r0]
007b6280  04 20 80 e5                                      str r2, [r0, #4]
007b6284  08 20 80 e5                                      str r2, [r0, #8]
007b6288  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b628c, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membufC1Ev
; demangled: gameswf::membuf::membuf()
; decoder-mode: arm
007b628c  00 20 a0 e3                                      mov r2, #0
007b6290  0c 20 c0 e5                                      strb r2, [r0, #0xc]
007b6294  00 20 80 e5                                      str r2, [r0]
007b6298  04 20 80 e5                                      str r2, [r0, #4]
007b629c  08 20 80 e5                                      str r2, [r0, #8]
007b62a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b62a4, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membufC2ENS0_14read_only_enumEPKvi
; demangled: gameswf::membuf::membuf(gameswf::membuf::read_only_enum, void const*, int)
; decoder-mode: arm
007b62a4  01 c0 a0 e3                                      mov ip, #1
007b62a8  00 30 80 e5                                      str r3, [r0]
007b62ac  00 30 a0 e3                                      mov r3, #0
007b62b0  0c c0 c0 e5                                      strb ip, [r0, #0xc]
007b62b4  04 30 80 e5                                      str r3, [r0, #4]
007b62b8  08 20 80 e5                                      str r2, [r0, #8]
007b62bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b62c0, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membufC1ENS0_14read_only_enumEPKvi
; demangled: gameswf::membuf::membuf(gameswf::membuf::read_only_enum, void const*, int)
; decoder-mode: arm
007b62c0  01 c0 a0 e3                                      mov ip, #1
007b62c4  00 30 80 e5                                      str r3, [r0]
007b62c8  00 30 a0 e3                                      mov r3, #0
007b62cc  0c c0 c0 e5                                      strb ip, [r0, #0xc]
007b62d0  04 30 80 e5                                      str r3, [r0, #4]
007b62d4  08 20 80 e5                                      str r2, [r0, #8]
007b62d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b62dc, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::membuf
; alias: _ZNK7gameswf6membufneERKS0_
; demangled: gameswf::membuf::operator!=(gameswf::membuf const&) const
; decoder-mode: arm
007b62dc  10 40 2d e9                                      push {r4, lr}
007b62e0  00 20 90 e5                                      ldr r2, [r0]
007b62e4  00 30 91 e5                                      ldr r3, [r1]
007b62e8  03 00 52 e1                                      cmp r2, r3
007b62ec  01 00 00 0a                                      beq #0x7b62f8
007b62f0  00 00 a0 e3                                      mov r0, #0
007b62f4  10 80 bd e8                                      pop {r4, pc}
007b62f8  08 00 90 e5                                      ldr r0, [r0, #8]
007b62fc  08 10 91 e5                                      ldr r1, [r1, #8]
007b6300  b6 60 ed eb                                      bl #0x30e5e0
007b6304  00 00 50 e2                                      subs r0, r0, #0
007b6308  01 00 a0 13                                      movne r0, #1
007b630c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b6310, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::membuf
; alias: _ZNK7gameswf6membufeqERKS0_
; demangled: gameswf::membuf::operator==(gameswf::membuf const&) const
; decoder-mode: arm
007b6310  10 40 2d e9                                      push {r4, lr}
007b6314  00 20 90 e5                                      ldr r2, [r0]
007b6318  00 30 91 e5                                      ldr r3, [r1]
007b631c  03 00 52 e1                                      cmp r2, r3
007b6320  01 00 00 0a                                      beq #0x7b632c
007b6324  00 00 a0 e3                                      mov r0, #0
007b6328  10 80 bd e8                                      pop {r4, pc}
007b632c  08 00 90 e5                                      ldr r0, [r0, #8]
007b6330  08 10 91 e5                                      ldr r1, [r1, #8]
007b6334  a9 60 ed eb                                      bl #0x30e5e0
007b6338  01 00 70 e2                                      rsbs r0, r0, #1
007b633c  00 00 a0 33                                      movlo r0, #0
007b6340  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b6344, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membuf6shrinkEv
; demangled: gameswf::membuf::shrink()
; decoder-mode: arm
007b6344  70 40 2d e9                                      push {r4, r5, r6, lr}
007b6348  04 20 90 e5                                      ldr r2, [r0, #4]
007b634c  00 50 90 e5                                      ldr r5, [r0]
007b6350  00 40 a0 e1                                      mov r4, r0
007b6354  05 00 52 e1                                      cmp r2, r5
007b6358  07 00 00 0a                                      beq #0x7b637c
007b635c  08 00 90 e5                                      ldr r0, [r0, #8]
007b6360  00 00 50 e3                                      cmp r0, #0
007b6364  04 00 00 0a                                      beq #0x7b637c
007b6368  05 10 a0 e1                                      mov r1, r5
007b636c  00 30 a0 e3                                      mov r3, #0
007b6370  0d 72 fe eb                                      bl #0x752bac
007b6374  04 50 84 e5                                      str r5, [r4, #4]
007b6378  08 00 84 e5                                      str r0, [r4, #8]
007b637c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007b6380, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membuf7reserveEi
; demangled: gameswf::membuf::reserve(int)
; decoder-mode: arm
007b6380  70 40 2d e9                                      push {r4, r5, r6, lr}
007b6384  00 40 a0 e1                                      mov r4, r0
007b6388  08 00 90 e5                                      ldr r0, [r0, #8]
007b638c  01 50 a0 e1                                      mov r5, r1
007b6390  00 00 50 e3                                      cmp r0, #0
007b6394  07 00 00 0a                                      beq #0x7b63b8
007b6398  04 20 94 e5                                      ldr r2, [r4, #4]
007b639c  02 00 51 e1                                      cmp r1, r2
007b63a0  02 00 00 da                                      ble #0x7b63b0
007b63a4  00 30 a0 e3                                      mov r3, #0
007b63a8  ff 71 fe eb                                      bl #0x752bac
007b63ac  08 00 84 e5                                      str r0, [r4, #8]
007b63b0  04 50 84 e5                                      str r5, [r4, #4]
007b63b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007b63b8  00 10 a0 e1                                      mov r1, r0
007b63bc  05 00 a0 e1                                      mov r0, r5
007b63c0  f5 71 fe eb                                      bl #0x752b9c
007b63c4  08 00 84 e5                                      str r0, [r4, #8]
007b63c8  f8 ff ff ea                                      b #0x7b63b0

; FUNCTION 0x007b63cc, declared_size=48, range_size=48, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membufaSERKS0_
; demangled: gameswf::membuf::operator=(gameswf::membuf const&)
; decoder-mode: arm
007b63cc  70 40 2d e9                                      push {r4, r5, r6, lr}
007b63d0  00 40 a0 e1                                      mov r4, r0
007b63d4  01 50 a0 e1                                      mov r5, r1
007b63d8  00 10 91 e5                                      ldr r1, [r1]
007b63dc  9e 92 fe eb                                      bl #0x75ae5c
007b63e0  08 00 94 e5                                      ldr r0, [r4, #8]
007b63e4  08 10 95 e5                                      ldr r1, [r5, #8]
007b63e8  00 20 94 e5                                      ldr r2, [r4]
007b63ec  1d 61 ed eb                                      bl #0x30e868
007b63f0  0c 30 d5 e5                                      ldrb r3, [r5, #0xc]
007b63f4  0c 30 c4 e5                                      strb r3, [r4, #0xc]
007b63f8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007b63fc, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membuf6appendEPKvi
; demangled: gameswf::membuf::append(void const*, int)
; decoder-mode: arm
007b63fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b6400  00 40 90 e5                                      ldr r4, [r0]
007b6404  01 70 a0 e1                                      mov r7, r1
007b6408  00 50 a0 e1                                      mov r5, r0
007b640c  04 10 82 e0                                      add r1, r2, r4
007b6410  02 60 a0 e1                                      mov r6, r2
007b6414  90 92 fe eb                                      bl #0x75ae5c
007b6418  08 00 95 e5                                      ldr r0, [r5, #8]
007b641c  07 10 a0 e1                                      mov r1, r7
007b6420  06 20 a0 e1                                      mov r2, r6
007b6424  04 00 80 e0                                      add r0, r0, r4
007b6428  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007b642c  0d 61 ed ea                                      b #0x30e868

; FUNCTION 0x007b6430, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membuf6appendERKNS_9tu_stringE
; demangled: gameswf::membuf::append(gameswf::tu_string const&)
; decoder-mode: arm
007b6430  d0 20 d1 e1                                      ldrsb r2, [r1]
007b6434  01 00 72 e3                                      cmn r2, #1
007b6438  04 20 91 05                                      ldreq r2, [r1, #4]
007b643c  0c 10 91 05                                      ldreq r1, [r1, #0xc]
007b6440  01 10 81 12                                      addne r1, r1, #1
007b6444  01 20 42 e2                                      sub r2, r2, #1
007b6448  eb ff ff ea                                      b #0x7b63fc

; FUNCTION 0x007b644c, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membufC1ERKNS_9tu_stringE
; demangled: gameswf::membuf::membuf(gameswf::tu_string const&)
; decoder-mode: arm
007b644c  00 30 a0 e3                                      mov r3, #0
007b6450  10 40 2d e9                                      push {r4, lr}
007b6454  00 40 a0 e1                                      mov r4, r0
007b6458  0c 30 c0 e5                                      strb r3, [r0, #0xc]
007b645c  00 30 80 e5                                      str r3, [r0]
007b6460  04 30 80 e5                                      str r3, [r0, #4]
007b6464  08 30 80 e5                                      str r3, [r0, #8]
007b6468  f0 ff ff eb                                      bl #0x7b6430
007b646c  04 00 a0 e1                                      mov r0, r4
007b6470  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b6474, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membufC2ERKNS_9tu_stringE
; demangled: gameswf::membuf::membuf(gameswf::tu_string const&)
; decoder-mode: arm
007b6474  00 30 a0 e3                                      mov r3, #0
007b6478  10 40 2d e9                                      push {r4, lr}
007b647c  00 40 a0 e1                                      mov r4, r0
007b6480  0c 30 c0 e5                                      strb r3, [r0, #0xc]
007b6484  00 30 80 e5                                      str r3, [r0]
007b6488  04 30 80 e5                                      str r3, [r0, #4]
007b648c  08 30 80 e5                                      str r3, [r0, #8]
007b6490  e6 ff ff eb                                      bl #0x7b6430
007b6494  04 00 a0 e1                                      mov r0, r4
007b6498  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b649c, declared_size=12, range_size=12, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membuf6appendERKS0_
; demangled: gameswf::membuf::append(gameswf::membuf const&)
; decoder-mode: arm
007b649c  00 20 91 e5                                      ldr r2, [r1]
007b64a0  08 10 91 e5                                      ldr r1, [r1, #8]
007b64a4  d4 ff ff ea                                      b #0x7b63fc

; FUNCTION 0x007b64a8, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membufC1ERKS0_
; demangled: gameswf::membuf::membuf(gameswf::membuf const&)
; decoder-mode: arm
007b64a8  00 30 a0 e3                                      mov r3, #0
007b64ac  10 40 2d e9                                      push {r4, lr}
007b64b0  00 40 a0 e1                                      mov r4, r0
007b64b4  0c 30 c0 e5                                      strb r3, [r0, #0xc]
007b64b8  00 30 80 e5                                      str r3, [r0]
007b64bc  04 30 80 e5                                      str r3, [r0, #4]
007b64c0  08 30 80 e5                                      str r3, [r0, #8]
007b64c4  f4 ff ff eb                                      bl #0x7b649c
007b64c8  04 00 a0 e1                                      mov r0, r4
007b64cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b64d0, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membufC2ERKS0_
; demangled: gameswf::membuf::membuf(gameswf::membuf const&)
; decoder-mode: arm
007b64d0  00 30 a0 e3                                      mov r3, #0
007b64d4  10 40 2d e9                                      push {r4, lr}
007b64d8  00 40 a0 e1                                      mov r4, r0
007b64dc  0c 30 c0 e5                                      strb r3, [r0, #0xc]
007b64e0  00 30 80 e5                                      str r3, [r0]
007b64e4  04 30 80 e5                                      str r3, [r0, #4]
007b64e8  08 30 80 e5                                      str r3, [r0, #8]
007b64ec  ea ff ff eb                                      bl #0x7b649c
007b64f0  04 00 a0 e1                                      mov r0, r4
007b64f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b64f8, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membufC1EPKvi
; demangled: gameswf::membuf::membuf(void const*, int)
; decoder-mode: arm
007b64f8  00 30 a0 e3                                      mov r3, #0
007b64fc  10 40 2d e9                                      push {r4, lr}
007b6500  00 40 a0 e1                                      mov r4, r0
007b6504  0c 30 c0 e5                                      strb r3, [r0, #0xc]
007b6508  00 30 80 e5                                      str r3, [r0]
007b650c  04 30 80 e5                                      str r3, [r0, #4]
007b6510  08 30 80 e5                                      str r3, [r0, #8]
007b6514  b8 ff ff eb                                      bl #0x7b63fc
007b6518  04 00 a0 e1                                      mov r0, r4
007b651c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b6520, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membufC2EPKvi
; demangled: gameswf::membuf::membuf(void const*, int)
; decoder-mode: arm
007b6520  00 30 a0 e3                                      mov r3, #0
007b6524  10 40 2d e9                                      push {r4, lr}
007b6528  00 40 a0 e1                                      mov r4, r0
007b652c  0c 30 c0 e5                                      strb r3, [r0, #0xc]
007b6530  00 30 80 e5                                      str r3, [r0]
007b6534  04 30 80 e5                                      str r3, [r0, #4]
007b6538  08 30 80 e5                                      str r3, [r0, #8]
007b653c  ae ff ff eb                                      bl #0x7b63fc
007b6540  04 00 a0 e1                                      mov r0, r4
007b6544  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b6548, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membufD1Ev
; demangled: gameswf::membuf::~membuf()
; decoder-mode: arm
007b6548  10 40 2d e9                                      push {r4, lr}
007b654c  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007b6550  00 40 a0 e1                                      mov r4, r0
007b6554  00 00 53 e3                                      cmp r3, #0
007b6558  02 00 00 1a                                      bne #0x7b6568
007b655c  04 10 90 e5                                      ldr r1, [r0, #4]
007b6560  00 00 51 e3                                      cmp r1, #0
007b6564  03 00 00 1a                                      bne #0x7b6578
007b6568  00 30 a0 e3                                      mov r3, #0
007b656c  08 30 84 e5                                      str r3, [r4, #8]
007b6570  04 00 a0 e1                                      mov r0, r4
007b6574  10 80 bd e8                                      pop {r4, pc}
007b6578  08 00 90 e5                                      ldr r0, [r0, #8]
007b657c  6d 71 fe eb                                      bl #0x752b38
007b6580  00 30 a0 e3                                      mov r3, #0
007b6584  08 30 84 e5                                      str r3, [r4, #8]
007b6588  04 00 a0 e1                                      mov r0, r4
007b658c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b6590, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::membuf
; alias: _ZN7gameswf6membufD2Ev
; demangled: gameswf::membuf::~membuf()
; decoder-mode: arm
007b6590  10 40 2d e9                                      push {r4, lr}
007b6594  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007b6598  00 40 a0 e1                                      mov r4, r0
007b659c  00 00 53 e3                                      cmp r3, #0
007b65a0  02 00 00 1a                                      bne #0x7b65b0
007b65a4  04 10 90 e5                                      ldr r1, [r0, #4]
007b65a8  00 00 51 e3                                      cmp r1, #0
007b65ac  03 00 00 1a                                      bne #0x7b65c0
007b65b0  00 30 a0 e3                                      mov r3, #0
007b65b4  08 30 84 e5                                      str r3, [r4, #8]
007b65b8  04 00 a0 e1                                      mov r0, r4
007b65bc  10 80 bd e8                                      pop {r4, pc}
007b65c0  08 00 90 e5                                      ldr r0, [r0, #8]
007b65c4  5b 71 fe eb                                      bl #0x752b38
007b65c8  00 30 a0 e3                                      mov r3, #0
007b65cc  08 30 84 e5                                      str r3, [r4, #8]
007b65d0  04 00 a0 e1                                      mov r0, r4
007b65d4  10 80 bd e8                                      pop {r4, pc}
