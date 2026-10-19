; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00316430, declared_size=12, range_size=12, mode=arm
; class-group: StreamBuffer
; alias: _ZNK12StreamBuffer4sizeEv
; demangled: StreamBuffer::size() const
; decoder-mode: arm
00316430  28 00 90 e5                                      ldr r0, [r0, #0x28]
00316434  00 10 a0 e3                                      mov r1, #0
00316438  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031643c, declared_size=28, range_size=28, mode=arm
; class-group: StreamBuffer
; alias: _ZNK12StreamBuffer4sizeEi
; demangled: StreamBuffer::size(int) const
; decoder-mode: arm
0031643c  18 30 90 e5                                      ldr r3, [r0, #0x18]
00316440  28 20 90 e5                                      ldr r2, [r0, #0x28]
00316444  93 21 60 e0                                      mls r0, r3, r1, r2
00316448  00 10 a0 e3                                      mov r1, #0
0031644c  00 00 53 e1                                      cmp r3, r0
00316450  03 00 a0 31                                      movlo r0, r3
00316454  1e ff 2f e1                                      bx lr

; FUNCTION 0x00316458, declared_size=8, range_size=8, mode=arm
; class-group: StreamBuffer
; alias: _ZNK12StreamBuffer7canReadEv
; demangled: StreamBuffer::canRead() const
; decoder-mode: arm
00316458  01 00 a0 e3                                      mov r0, #1
0031645c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00316460, declared_size=8, range_size=8, mode=arm
; class-group: StreamBuffer
; alias: _ZNK12StreamBuffer8canWriteEv
; demangled: StreamBuffer::canWrite() const
; decoder-mode: arm
00316460  00 00 a0 e3                                      mov r0, #0
00316464  1e ff 2f e1                                      bx lr

; FUNCTION 0x00316468, declared_size=32, range_size=32, mode=arm
; class-group: StreamBuffer
; alias: _ZN12StreamBuffer4skipEy
; demangled: StreamBuffer::skip(unsigned long long)
; decoder-mode: arm
00316468  70 40 2d e9                                      push {r4, r5, r6, lr}
0031646c  d8 40 c0 e1                                      ldrd r4, r5, [r0, #8]
00316470  04 20 92 e0                                      adds r2, r2, r4
00316474  05 30 a3 e0                                      adc r3, r3, r5
00316478  00 10 90 e5                                      ldr r1, [r0]
0031647c  0f e0 a0 e1                                      mov lr, pc
00316480  20 f0 91 e5                                      ldr pc, [r1, #0x20]
00316484  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00316488, declared_size=12, range_size=12, mode=arm
; class-group: StreamBuffer
; alias: _ZNK12StreamBuffer9tellWriteEv
; demangled: StreamBuffer::tellWrite() const
; decoder-mode: arm
00316488  14 10 90 e5                                      ldr r1, [r0, #0x14]
0031648c  10 00 90 e5                                      ldr r0, [r0, #0x10]
00316490  1e ff 2f e1                                      bx lr

; FUNCTION 0x00316494, declared_size=56, range_size=56, mode=arm
; class-group: StreamBuffer
; alias: _ZN12StreamBuffer4readEPvy
; demangled: StreamBuffer::read(void*, unsigned long long)
; decoder-mode: arm
00316494  10 40 2d e9                                      push {r4, lr}
00316498  00 c0 90 e5                                      ldr ip, [r0]
0031649c  00 40 a0 e1                                      mov r4, r0
003164a0  0f e0 a0 e1                                      mov lr, pc
003164a4  14 f0 9c e5                                      ldr pc, [ip, #0x14]
003164a8  00 20 a0 e1                                      mov r2, r0
003164ac  01 30 a0 e1                                      mov r3, r1
003164b0  d8 00 c4 e1                                      ldrd r0, r1, [r4, #8]
003164b4  02 00 90 e0                                      adds r0, r0, r2
003164b8  03 10 a1 e0                                      adc r1, r1, r3
003164bc  f8 00 c4 e1                                      strd r0, r1, [r4, #8]
003164c0  03 10 a0 e1                                      mov r1, r3
003164c4  02 00 a0 e1                                      mov r0, r2
003164c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003164cc, declared_size=12, range_size=12, mode=arm
; class-group: StreamBuffer
; alias: _ZNK12StreamBuffer4tellEv
; demangled: StreamBuffer::tell() const
; decoder-mode: arm
003164cc  0c 10 90 e5                                      ldr r1, [r0, #0xc]
003164d0  08 00 90 e5                                      ldr r0, [r0, #8]
003164d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003164d8, declared_size=56, range_size=56, mode=arm
; class-group: StreamBuffer
; alias: _ZN12StreamBuffer4seekEy
; demangled: StreamBuffer::seek(unsigned long long)
; decoder-mode: arm
003164d8  00 00 53 e3                                      cmp r3, #0
003164dc  28 10 90 e5                                      ldr r1, [r0, #0x28]
003164e0  05 00 00 8a                                      bhi #0x3164fc
003164e4  02 00 00 0a                                      beq #0x3164f4
003164e8  0c 30 80 e5                                      str r3, [r0, #0xc]
003164ec  08 20 80 e5                                      str r2, [r0, #8]
003164f0  1e ff 2f e1                                      bx lr
003164f4  01 00 52 e1                                      cmp r2, r1
003164f8  fa ff ff 9a                                      bls #0x3164e8
003164fc  01 20 a0 e1                                      mov r2, r1
00316500  00 30 a0 e3                                      mov r3, #0
00316504  0c 30 80 e5                                      str r3, [r0, #0xc]
00316508  08 20 80 e5                                      str r2, [r0, #8]
0031650c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00316510, declared_size=56, range_size=56, mode=arm
; class-group: StreamBuffer
; alias: _ZN12StreamBuffer9seekWriteEy
; demangled: StreamBuffer::seekWrite(unsigned long long)
; decoder-mode: arm
00316510  00 00 53 e3                                      cmp r3, #0
00316514  28 10 90 e5                                      ldr r1, [r0, #0x28]
00316518  05 00 00 8a                                      bhi #0x316534
0031651c  02 00 00 0a                                      beq #0x31652c
00316520  14 30 80 e5                                      str r3, [r0, #0x14]
00316524  10 20 80 e5                                      str r2, [r0, #0x10]
00316528  1e ff 2f e1                                      bx lr
0031652c  01 00 52 e1                                      cmp r2, r1
00316530  fa ff ff 9a                                      bls #0x316520
00316534  01 20 a0 e1                                      mov r2, r1
00316538  00 30 a0 e3                                      mov r3, #0
0031653c  14 30 80 e5                                      str r3, [r0, #0x14]
00316540  10 20 80 e5                                      str r2, [r0, #0x10]
00316544  1e ff 2f e1                                      bx lr

; FUNCTION 0x003166bc, declared_size=96, range_size=96, mode=arm
; class-group: StreamBuffer
; alias: _ZNK12StreamBuffer4peekEPvy
; demangled: StreamBuffer::peek(void*, unsigned long long) const
; decoder-mode: arm
003166bc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003166c0  28 c0 90 e5                                      ldr ip, [r0, #0x28]
003166c4  d8 60 c0 e1                                      ldrd r6, r7, [r0, #8]
003166c8  03 50 a0 e1                                      mov r5, r3
003166cc  0c 80 76 e0                                      rsbs r8, r6, ip
003166d0  00 90 e7 e2                                      rsc sb, r7, #0
003166d4  09 00 53 e1                                      cmp r3, sb
003166d8  02 40 a0 e1                                      mov r4, r2
003166dc  01 30 a0 e1                                      mov r3, r1
003166e0  0a 00 00 8a                                      bhi #0x316710
003166e4  07 00 00 0a                                      beq #0x316708
003166e8  06 10 a0 e1                                      mov r1, r6
003166ec  03 20 a0 e1                                      mov r2, r3
003166f0  18 00 80 e2                                      add r0, r0, #0x18
003166f4  04 30 a0 e1                                      mov r3, r4
003166f8  9a ff ff eb                                      bl #0x316568
003166fc  04 00 a0 e1                                      mov r0, r4
00316700  05 10 a0 e1                                      mov r1, r5
00316704  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00316708  08 00 52 e1                                      cmp r2, r8
0031670c  f5 ff ff 9a                                      bls #0x3166e8
00316710  09 50 a0 e1                                      mov r5, sb
00316714  08 40 a0 e1                                      mov r4, r8
00316718  f2 ff ff ea                                      b #0x3166e8

; FUNCTION 0x003169c4, declared_size=52, range_size=52, mode=arm
; class-group: StreamBuffer
; alias: _ZN12StreamBufferD1Ev
; demangled: StreamBuffer::~StreamBuffer()
; decoder-mode: arm
003169c4  24 30 9f e5                                      ldr r3, [pc, #0x24]
003169c8  24 20 9f e5                                      ldr r2, [pc, #0x24]
003169cc  10 40 2d e9                                      push {r4, lr}
003169d0  03 30 8f e0                                      add r3, pc, r3
003169d4  02 20 93 e7                                      ldr r2, [r3, r2]
003169d8  00 40 a0 e1                                      mov r4, r0
003169dc  08 20 82 e2                                      add r2, r2, #8
003169e0  18 20 80 e4                                      str r2, [r0], #0x18
003169e4  e7 ff ff eb                                      bl #0x316988
003169e8  04 00 a0 e1                                      mov r0, r4
003169ec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003169f0  c0 e0 67 00 74 0b 00 00                          .byte 0xc0, 0xe0, 0x67, 0x00, 0x74, 0x0b, 0x00, 0x00

; FUNCTION 0x003169f8, declared_size=28, range_size=28, mode=arm
; class-group: StreamBuffer
; alias: _ZN12StreamBufferD0Ev
; demangled: StreamBuffer::~StreamBuffer()
; decoder-mode: arm
003169f8  10 40 2d e9                                      push {r4, lr}
003169fc  00 40 a0 e1                                      mov r4, r0
00316a00  ef ff ff eb                                      bl #0x3169c4
00316a04  04 00 a0 e1                                      mov r0, r4
00316a08  8c e6 ff eb                                      bl #0x310440
00316a0c  04 00 a0 e1                                      mov r0, r4
00316a10  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00316a14, declared_size=52, range_size=52, mode=arm
; class-group: StreamBuffer
; alias: _ZN12StreamBufferD2Ev
; demangled: StreamBuffer::~StreamBuffer()
; decoder-mode: arm
00316a14  24 30 9f e5                                      ldr r3, [pc, #0x24]
00316a18  24 20 9f e5                                      ldr r2, [pc, #0x24]
00316a1c  10 40 2d e9                                      push {r4, lr}
00316a20  03 30 8f e0                                      add r3, pc, r3
00316a24  02 20 93 e7                                      ldr r2, [r3, r2]
00316a28  00 40 a0 e1                                      mov r4, r0
00316a2c  08 20 82 e2                                      add r2, r2, #8
00316a30  18 20 80 e4                                      str r2, [r0], #0x18
00316a34  d3 ff ff eb                                      bl #0x316988
00316a38  04 00 a0 e1                                      mov r0, r4
00316a3c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00316a40  70 e0 67 00 74 0b 00 00                          .byte 0x70, 0xe0, 0x67, 0x00, 0x74, 0x0b, 0x00, 0x00

; FUNCTION 0x00316a48, declared_size=36, range_size=36, mode=arm
; class-group: StreamBuffer
; alias: _ZN12StreamBuffer5clearEv
; demangled: StreamBuffer::clear()
; decoder-mode: arm
00316a48  10 40 2d e9                                      push {r4, lr}
00316a4c  00 40 a0 e1                                      mov r4, r0
00316a50  18 00 80 e2                                      add r0, r0, #0x18
00316a54  b4 ff ff eb                                      bl #0x31692c
00316a58  00 20 a0 e3                                      mov r2, #0
00316a5c  00 30 a0 e3                                      mov r3, #0
00316a60  f0 21 c4 e1                                      strd r2, r3, [r4, #0x10]
00316a64  f8 20 c4 e1                                      strd r2, r3, [r4, #8]
00316a68  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00316d3c, declared_size=92, range_size=92, mode=arm
; class-group: StreamBuffer
; alias: _ZN12StreamBufferC1Ev
; demangled: StreamBuffer::StreamBuffer()
; decoder-mode: arm
00316d3c  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
00316d40  4c c0 9f e5                                      ldr ip, [pc, #0x4c]
00316d44  00 20 a0 e3                                      mov r2, #0
00316d48  01 10 8f e0                                      add r1, pc, r1
00316d4c  0c c0 91 e7                                      ldr ip, [r1, ip]
00316d50  30 00 2d e9                                      push {r4, r5}
00316d54  00 40 a0 e3                                      mov r4, #0
00316d58  00 50 a0 e3                                      mov r5, #0
00316d5c  08 c0 8c e2                                      add ip, ip, #8
00316d60  02 1b a0 e3                                      mov r1, #0x800
00316d64  2c 20 c0 e5                                      strb r2, [r0, #0x2c]
00316d68  00 c0 80 e5                                      str ip, [r0]
00316d6c  f0 41 c0 e1                                      strd r4, r5, [r0, #0x10]
00316d70  18 10 80 e5                                      str r1, [r0, #0x18]
00316d74  f8 40 c0 e1                                      strd r4, r5, [r0, #8]
00316d78  1c 20 80 e5                                      str r2, [r0, #0x1c]
00316d7c  20 20 80 e5                                      str r2, [r0, #0x20]
00316d80  24 20 80 e5                                      str r2, [r0, #0x24]
00316d84  28 20 80 e5                                      str r2, [r0, #0x28]
00316d88  30 00 bd e8                                      pop {r4, r5}
00316d8c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00316d90  48 dd 67 00 74 0b 00 00                          .byte 0x48, 0xdd, 0x67, 0x00, 0x74, 0x0b, 0x00, 0x00

; FUNCTION 0x00316fd4, declared_size=64, range_size=64, mode=arm
; class-group: StreamBuffer
; alias: _ZN12StreamBuffer5writeEPKvy
; demangled: StreamBuffer::write(void const*, unsigned long long)
; decoder-mode: arm
00316fd4  70 40 2d e9                                      push {r4, r5, r6, lr}
00316fd8  00 60 a0 e1                                      mov r6, r0
00316fdc  02 40 a0 e1                                      mov r4, r2
00316fe0  03 50 a0 e1                                      mov r5, r3
00316fe4  01 20 a0 e1                                      mov r2, r1
00316fe8  04 30 a0 e1                                      mov r3, r4
00316fec  10 10 96 e5                                      ldr r1, [r6, #0x10]
00316ff0  18 00 80 e2                                      add r0, r0, #0x18
00316ff4  c4 ff ff eb                                      bl #0x316f0c
00316ff8  d0 21 c6 e1                                      ldrd r2, r3, [r6, #0x10]
00316ffc  04 20 92 e0                                      adds r2, r2, r4
00317000  05 30 a3 e0                                      adc r3, r3, r5
00317004  f0 21 c6 e1                                      strd r2, r3, [r6, #0x10]
00317008  05 10 a0 e1                                      mov r1, r5
0031700c  04 00 a0 e1                                      mov r0, r4
00317010  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00317180, declared_size=56, range_size=56, mode=arm
; class-group: StreamBuffer
; alias: _ZN12StreamBuffer6expandEy
; demangled: StreamBuffer::expand(unsigned long long)
; decoder-mode: arm
00317180  70 40 2d e9                                      push {r4, r5, r6, lr}
00317184  18 50 80 e2                                      add r5, r0, #0x18
00317188  02 60 a0 e1                                      mov r6, r2
0031718c  00 40 a0 e1                                      mov r4, r0
00317190  05 00 a0 e1                                      mov r0, r5
00317194  e4 fd ff eb                                      bl #0x31692c
00317198  05 00 a0 e1                                      mov r0, r5
0031719c  06 10 a0 e1                                      mov r1, r6
003171a0  9b ff ff eb                                      bl #0x317014
003171a4  00 20 a0 e3                                      mov r2, #0
003171a8  00 30 a0 e3                                      mov r3, #0
003171ac  f0 21 c4 e1                                      strd r2, r3, [r4, #0x10]
003171b0  f8 20 c4 e1                                      strd r2, r3, [r4, #8]
003171b4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003171b8, declared_size=288, range_size=288, mode=arm
; class-group: StreamBuffer
; alias: _ZN12StreamBufferC2EP11IStreamBase
; demangled: StreamBuffer::StreamBuffer(IStreamBase*)
; decoder-mode: arm
003171b8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003171bc  f8 50 9f e5                                      ldr r5, [pc, #0xf8]
003171c0  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
003171c4  00 60 a0 e3                                      mov r6, #0
003171c8  05 50 8f e0                                      add r5, pc, r5
003171cc  03 30 95 e7                                      ldr r3, [r5, r3]
003171d0  00 70 a0 e3                                      mov r7, #0
003171d4  f0 61 c0 e1                                      strd r6, r7, [r0, #0x10]
003171d8  f8 60 c0 e1                                      strd r6, r7, [r0, #8]
003171dc  08 30 83 e2                                      add r3, r3, #8
003171e0  00 20 a0 e3                                      mov r2, #0
003171e4  00 30 80 e5                                      str r3, [r0]
003171e8  02 3b a0 e3                                      mov r3, #0x800
003171ec  2c 20 c0 e5                                      strb r2, [r0, #0x2c]
003171f0  1c 20 80 e5                                      str r2, [r0, #0x1c]
003171f4  20 20 80 e5                                      str r2, [r0, #0x20]
003171f8  24 20 80 e5                                      str r2, [r0, #0x24]
003171fc  28 20 80 e5                                      str r2, [r0, #0x28]
00317200  18 30 80 e5                                      str r3, [r0, #0x18]
00317204  00 40 a0 e1                                      mov r4, r0
00317208  0c d0 4d e2                                      sub sp, sp, #0xc
0031720c  00 30 91 e5                                      ldr r3, [r1]
00317210  01 00 a0 e1                                      mov r0, r1
00317214  01 60 a0 e1                                      mov r6, r1
00317218  0f e0 a0 e1                                      mov lr, pc
0031721c  08 f0 93 e5                                      ldr pc, [r3, #8]
00317220  00 20 a0 e1                                      mov r2, r0
00317224  01 30 a0 e1                                      mov r3, r1
00317228  04 00 a0 e1                                      mov r0, r4
0031722c  d3 ff ff eb                                      bl #0x317180
00317230  2c 30 d4 e5                                      ldrb r3, [r4, #0x2c]
00317234  00 20 96 e5                                      ldr r2, [r6]
00317238  00 00 53 e3                                      cmp r3, #0
0031723c  18 70 92 e5                                      ldr r7, [r2, #0x18]
00317240  07 00 00 1a                                      bne #0x317264
00317244  78 20 9f e5                                      ldr r2, [pc, #0x78]
00317248  02 20 95 e7                                      ldr r2, [r5, r2]
0031724c  00 20 92 e5                                      ldr r2, [r2]
00317250  02 00 52 e3                                      cmp r2, #2
00317254  00 30 83 05                                      streq r3, [r3]
00317258  01 00 00 0a                                      beq #0x317264
0031725c  01 00 52 e3                                      cmp r2, #1
00317260  08 00 00 0a                                      beq #0x317288
00317264  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00317268  06 00 a0 e1                                      mov r0, r6
0031726c  28 20 94 e5                                      ldr r2, [r4, #0x28]
00317270  00 10 93 e5                                      ldr r1, [r3]
00317274  00 30 a0 e3                                      mov r3, #0
00317278  37 ff 2f e1                                      blx r7
0031727c  04 00 a0 e1                                      mov r0, r4
00317280  0c d0 8d e2                                      add sp, sp, #0xc
00317284  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00317288  38 00 9f e5                                      ldr r0, [pc, #0x38]
0031728c  38 10 9f e5                                      ldr r1, [pc, #0x38]
00317290  38 20 9f e5                                      ldr r2, [pc, #0x38]
00317294  00 00 95 e7                                      ldr r0, [r5, r0]
00317298  34 30 9f e5                                      ldr r3, [pc, #0x34]
0031729c  82 c0 a0 e3                                      mov ip, #0x82
003172a0  01 10 8f e0                                      add r1, pc, r1
003172a4  02 20 8f e0                                      add r2, pc, r2
003172a8  03 30 8f e0                                      add r3, pc, r3
003172ac  a8 00 80 e2                                      add r0, r0, #0xa8
003172b0  00 c0 8d e5                                      str ip, [sp]
003172b4  52 db ff eb                                      bl #0x30e004
003172b8  e9 ff ff ea                                      b #0x317264
; mapping-symbol data/literal pool
003172bc  c8 d8 67 00 74 0b 00 00 c0 39 00 00 c0 19 00 00  .byte 0xc8, 0xd8, 0x67, 0x00, 0x74, 0x0b, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003172cc  38 71 5a 00 24 73 5a 00 98 73 5a 00              .byte 0x38, 0x71, 0x5a, 0x00, 0x24, 0x73, 0x5a, 0x00, 0x98, 0x73, 0x5a, 0x00

; FUNCTION 0x003172d8, declared_size=288, range_size=288, mode=arm
; class-group: StreamBuffer
; alias: _ZN12StreamBufferC1EP11IStreamBase
; demangled: StreamBuffer::StreamBuffer(IStreamBase*)
; decoder-mode: arm
003172d8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003172dc  f8 50 9f e5                                      ldr r5, [pc, #0xf8]
003172e0  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
003172e4  00 60 a0 e3                                      mov r6, #0
003172e8  05 50 8f e0                                      add r5, pc, r5
003172ec  03 30 95 e7                                      ldr r3, [r5, r3]
003172f0  00 70 a0 e3                                      mov r7, #0
003172f4  f0 61 c0 e1                                      strd r6, r7, [r0, #0x10]
003172f8  f8 60 c0 e1                                      strd r6, r7, [r0, #8]
003172fc  08 30 83 e2                                      add r3, r3, #8
00317300  00 20 a0 e3                                      mov r2, #0
00317304  00 30 80 e5                                      str r3, [r0]
00317308  02 3b a0 e3                                      mov r3, #0x800
0031730c  2c 20 c0 e5                                      strb r2, [r0, #0x2c]
00317310  1c 20 80 e5                                      str r2, [r0, #0x1c]
00317314  20 20 80 e5                                      str r2, [r0, #0x20]
00317318  24 20 80 e5                                      str r2, [r0, #0x24]
0031731c  28 20 80 e5                                      str r2, [r0, #0x28]
00317320  18 30 80 e5                                      str r3, [r0, #0x18]
00317324  00 40 a0 e1                                      mov r4, r0
00317328  0c d0 4d e2                                      sub sp, sp, #0xc
0031732c  00 30 91 e5                                      ldr r3, [r1]
00317330  01 00 a0 e1                                      mov r0, r1
00317334  01 60 a0 e1                                      mov r6, r1
00317338  0f e0 a0 e1                                      mov lr, pc
0031733c  08 f0 93 e5                                      ldr pc, [r3, #8]
00317340  00 20 a0 e1                                      mov r2, r0
00317344  01 30 a0 e1                                      mov r3, r1
00317348  04 00 a0 e1                                      mov r0, r4
0031734c  8b ff ff eb                                      bl #0x317180
00317350  2c 30 d4 e5                                      ldrb r3, [r4, #0x2c]
00317354  00 20 96 e5                                      ldr r2, [r6]
00317358  00 00 53 e3                                      cmp r3, #0
0031735c  18 70 92 e5                                      ldr r7, [r2, #0x18]
00317360  07 00 00 1a                                      bne #0x317384
00317364  78 20 9f e5                                      ldr r2, [pc, #0x78]
00317368  02 20 95 e7                                      ldr r2, [r5, r2]
0031736c  00 20 92 e5                                      ldr r2, [r2]
00317370  02 00 52 e3                                      cmp r2, #2
00317374  00 30 83 05                                      streq r3, [r3]
00317378  01 00 00 0a                                      beq #0x317384
0031737c  01 00 52 e3                                      cmp r2, #1
00317380  08 00 00 0a                                      beq #0x3173a8
00317384  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00317388  06 00 a0 e1                                      mov r0, r6
0031738c  28 20 94 e5                                      ldr r2, [r4, #0x28]
00317390  00 10 93 e5                                      ldr r1, [r3]
00317394  00 30 a0 e3                                      mov r3, #0
00317398  37 ff 2f e1                                      blx r7
0031739c  04 00 a0 e1                                      mov r0, r4
003173a0  0c d0 8d e2                                      add sp, sp, #0xc
003173a4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003173a8  38 00 9f e5                                      ldr r0, [pc, #0x38]
003173ac  38 10 9f e5                                      ldr r1, [pc, #0x38]
003173b0  38 20 9f e5                                      ldr r2, [pc, #0x38]
003173b4  00 00 95 e7                                      ldr r0, [r5, r0]
003173b8  34 30 9f e5                                      ldr r3, [pc, #0x34]
003173bc  82 c0 a0 e3                                      mov ip, #0x82
003173c0  01 10 8f e0                                      add r1, pc, r1
003173c4  02 20 8f e0                                      add r2, pc, r2
003173c8  03 30 8f e0                                      add r3, pc, r3
003173cc  a8 00 80 e2                                      add r0, r0, #0xa8
003173d0  00 c0 8d e5                                      str ip, [sp]
003173d4  0a db ff eb                                      bl #0x30e004
003173d8  e9 ff ff ea                                      b #0x317384
; mapping-symbol data/literal pool
003173dc  a8 d7 67 00 74 0b 00 00 c0 39 00 00 c0 19 00 00  .byte 0xa8, 0xd7, 0x67, 0x00, 0x74, 0x0b, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003173ec  18 70 5a 00 04 72 5a 00 78 72 5a 00              .byte 0x18, 0x70, 0x5a, 0x00, 0x04, 0x72, 0x5a, 0x00, 0x78, 0x72, 0x5a, 0x00

; FUNCTION 0x003173f8, declared_size=92, range_size=92, mode=arm
; class-group: StreamBuffer
; alias: _ZN12StreamBufferC2Ev
; demangled: StreamBuffer::StreamBuffer()
; decoder-mode: arm
003173f8  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
003173fc  4c c0 9f e5                                      ldr ip, [pc, #0x4c]
00317400  00 20 a0 e3                                      mov r2, #0
00317404  01 10 8f e0                                      add r1, pc, r1
00317408  0c c0 91 e7                                      ldr ip, [r1, ip]
0031740c  30 00 2d e9                                      push {r4, r5}
00317410  00 40 a0 e3                                      mov r4, #0
00317414  00 50 a0 e3                                      mov r5, #0
00317418  08 c0 8c e2                                      add ip, ip, #8
0031741c  02 1b a0 e3                                      mov r1, #0x800
00317420  2c 20 c0 e5                                      strb r2, [r0, #0x2c]
00317424  00 c0 80 e5                                      str ip, [r0]
00317428  f0 41 c0 e1                                      strd r4, r5, [r0, #0x10]
0031742c  18 10 80 e5                                      str r1, [r0, #0x18]
00317430  f8 40 c0 e1                                      strd r4, r5, [r0, #8]
00317434  1c 20 80 e5                                      str r2, [r0, #0x1c]
00317438  20 20 80 e5                                      str r2, [r0, #0x20]
0031743c  24 20 80 e5                                      str r2, [r0, #0x24]
00317440  28 20 80 e5                                      str r2, [r0, #0x28]
00317444  30 00 bd e8                                      pop {r4, r5}
00317448  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0031744c  8c d6 67 00 74 0b 00 00                          .byte 0x8c, 0xd6, 0x67, 0x00, 0x74, 0x0b, 0x00, 0x00
