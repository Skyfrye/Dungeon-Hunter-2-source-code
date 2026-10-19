; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b8d88, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver::CBuffer
; alias: _ZN6glitch5video11CNullDriver7CBuffer8bindImplEb
; demangled: glitch::video::CNullDriver::CBuffer::bindImpl(bool)
; decoder-mode: arm
005b8d88  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8d8c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver::CBuffer
; alias: _ZN6glitch5video11CNullDriver7CBuffer10unbindImplEv
; demangled: glitch::video::CNullDriver::CBuffer::unbindImpl()
; decoder-mode: arm
005b8d8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8d90, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver::CBuffer
; alias: _ZNK6glitch5video11CNullDriver7CBuffer7mapImplEj
; demangled: glitch::video::CNullDriver::CBuffer::mapImpl(unsigned int) const
; decoder-mode: arm
005b8d90  00 00 a0 e3                                      mov r0, #0
005b8d94  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8d98, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver::CBuffer
; alias: _ZNK6glitch5video11CNullDriver7CBuffer9unmapImplEv
; demangled: glitch::video::CNullDriver::CBuffer::unmapImpl() const
; decoder-mode: arm
005b8d98  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8d9c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver::CBuffer
; alias: _ZNK6glitch5video11CNullDriver7CBuffer12getMappedPtrEv
; demangled: glitch::video::CNullDriver::CBuffer::getMappedPtr() const
; decoder-mode: arm
005b8d9c  00 00 a0 e3                                      mov r0, #0
005b8da0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9188, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CNullDriver::CBuffer
; alias: _ZN6glitch5video11CNullDriver7CBufferD1Ev
; demangled: glitch::video::CNullDriver::CBuffer::~CBuffer()
; decoder-mode: arm
005b9188  24 30 9f e5                                      ldr r3, [pc, #0x24]
005b918c  24 20 9f e5                                      ldr r2, [pc, #0x24]
005b9190  10 40 2d e9                                      push {r4, lr}
005b9194  03 30 8f e0                                      add r3, pc, r3
005b9198  02 20 93 e7                                      ldr r2, [r3, r2]
005b919c  00 40 a0 e1                                      mov r4, r0
005b91a0  08 20 82 e2                                      add r2, r2, #8
005b91a4  00 20 80 e5                                      str r2, [r0]
005b91a8  2b a3 ff eb                                      bl #0x5a1e5c
005b91ac  04 00 a0 e1                                      mov r0, r4
005b91b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005b91b4  fc b8 3d 00 2c 2e 00 00                          .byte 0xfc, 0xb8, 0x3d, 0x00, 0x2c, 0x2e, 0x00, 0x00

; FUNCTION 0x005b934c, declared_size=132, range_size=132, mode=arm
; class-group: glitch::video::CNullDriver::CBuffer
; alias: _ZNK6glitch5video11CNullDriver7CBuffer9cloneImplEv
; demangled: glitch::video::CNullDriver::CBuffer::cloneImpl() const
; decoder-mode: arm
005b934c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b9350  00 60 a0 e1                                      mov r6, r0
005b9354  0c d0 4d e2                                      sub sp, sp, #0xc
005b9358  10 b0 d1 e5                                      ldrb fp, [r1, #0x10]
005b935c  11 90 d1 e5                                      ldrb sb, [r1, #0x11]
005b9360  0c a0 91 e5                                      ldr sl, [r1, #0xc]
005b9364  08 70 91 e5                                      ldr r7, [r1, #8]
005b9368  12 80 d1 e5                                      ldrb r8, [r1, #0x12]
005b936c  14 00 a0 e3                                      mov r0, #0x14
005b9370  00 10 a0 e3                                      mov r1, #0
005b9374  8c eb fd eb                                      bl #0x5341ac
005b9378  01 80 08 e2                                      and r8, r8, #1
005b937c  0a 30 a0 e1                                      mov r3, sl
005b9380  0b 10 a0 e1                                      mov r1, fp
005b9384  09 20 a0 e1                                      mov r2, sb
005b9388  38 50 9f e5                                      ldr r5, [pc, #0x38]
005b938c  00 40 a0 e1                                      mov r4, r0
005b9390  80 01 8d e8                                      stm sp, {r7, r8}
005b9394  5b a1 ff eb                                      bl #0x5a1908
005b9398  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
005b939c  05 50 8f e0                                      add r5, pc, r5
005b93a0  06 00 a0 e1                                      mov r0, r6
005b93a4  03 30 95 e7                                      ldr r3, [r5, r3]
005b93a8  08 30 83 e2                                      add r3, r3, #8
005b93ac  00 30 84 e5                                      str r3, [r4]
005b93b0  00 40 86 e5                                      str r4, [r6]
005b93b4  04 30 94 e5                                      ldr r3, [r4, #4]
005b93b8  01 30 83 e2                                      add r3, r3, #1
005b93bc  04 30 84 e5                                      str r3, [r4, #4]
005b93c0  0c d0 8d e2                                      add sp, sp, #0xc
005b93c4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005b93c8  f4 b6 3d 00 2c 2e 00 00                          .byte 0xf4, 0xb6, 0x3d, 0x00, 0x2c, 0x2e, 0x00, 0x00

; FUNCTION 0x005b96ec, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CNullDriver::CBuffer
; alias: _ZN6glitch5video11CNullDriver7CBufferD0Ev
; demangled: glitch::video::CNullDriver::CBuffer::~CBuffer()
; decoder-mode: arm
005b96ec  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
005b96f0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
005b96f4  10 40 2d e9                                      push {r4, lr}
005b96f8  03 30 8f e0                                      add r3, pc, r3
005b96fc  02 20 93 e7                                      ldr r2, [r3, r2]
005b9700  00 40 a0 e1                                      mov r4, r0
005b9704  08 20 82 e2                                      add r2, r2, #8
005b9708  00 20 80 e5                                      str r2, [r0]
005b970c  d2 a1 ff eb                                      bl #0x5a1e5c
005b9710  04 00 a0 e1                                      mov r0, r4
005b9714  e5 52 f5 eb                                      bl #0x30e2b0
005b9718  04 00 a0 e1                                      mov r0, r4
005b971c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005b9720  98 b3 3d 00 2c 2e 00 00                          .byte 0x98, 0xb3, 0x3d, 0x00, 0x2c, 0x2e, 0x00, 0x00
