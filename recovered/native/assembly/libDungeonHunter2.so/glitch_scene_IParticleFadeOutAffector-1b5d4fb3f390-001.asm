; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fa47c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IParticleFadeOutAffector
; alias: _ZNK6glitch5scene24IParticleFadeOutAffector7getTypeEv
; demangled: glitch::scene::IParticleFadeOutAffector::getType() const
; decoder-mode: arm
006fa47c  02 00 a0 e3                                      mov r0, #2
006fa480  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fa4b0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IParticleFadeOutAffector
; alias: _ZN6glitch5scene24IParticleFadeOutAffectorD1Ev
; demangled: glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector()
; decoder-mode: arm
006fa4b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fa4b4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleFadeOutAffector
; alias: _ZTv0_n24_N6glitch5scene24IParticleFadeOutAffectorD1Ev
; demangled: virtual thunk to glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector()
; decoder-mode: arm
006fa4b4  00 30 90 e5                                      ldr r3, [r0]
006fa4b8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fa4bc  03 00 80 e0                                      add r0, r0, r3
006fa4c0  fa ff ff ea                                      b #0x6fa4b0

; FUNCTION 0x006fa4c4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleFadeOutAffector
; alias: _ZTv0_n12_N6glitch5scene24IParticleFadeOutAffectorD1Ev
; demangled: virtual thunk to glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector()
; decoder-mode: arm
006fa4c4  00 30 90 e5                                      ldr r3, [r0]
006fa4c8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fa4cc  03 00 80 e0                                      add r0, r0, r3
006fa4d0  f6 ff ff ea                                      b #0x6fa4b0

; FUNCTION 0x006fa8d8, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::IParticleFadeOutAffector
; alias: _ZN6glitch5scene24IParticleFadeOutAffectorD0Ev
; demangled: glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector()
; decoder-mode: arm
006fa8d8  40 30 9f e5                                      ldr r3, [pc, #0x40]
006fa8dc  40 10 9f e5                                      ldr r1, [pc, #0x40]
006fa8e0  40 20 9f e5                                      ldr r2, [pc, #0x40]
006fa8e4  03 30 8f e0                                      add r3, pc, r3
006fa8e8  01 10 93 e7                                      ldr r1, [r3, r1]
006fa8ec  10 40 2d e9                                      push {r4, lr}
006fa8f0  02 20 93 e7                                      ldr r2, [r3, r2]
006fa8f4  04 c0 91 e5                                      ldr ip, [r1, #4]
006fa8f8  08 10 91 e5                                      ldr r1, [r1, #8]
006fa8fc  60 20 82 e2                                      add r2, r2, #0x60
006fa900  00 c0 80 e5                                      str ip, [r0]
006fa904  08 20 80 e5                                      str r2, [r0, #8]
006fa908  1c 20 1c e5                                      ldr r2, [ip, #-0x1c]
006fa90c  00 40 a0 e1                                      mov r4, r0
006fa910  02 10 80 e7                                      str r1, [r0, r2]
006fa914  65 4e f0 eb                                      bl #0x30e2b0
006fa918  04 00 a0 e1                                      mov r0, r4
006fa91c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006fa920  ac a1 29 00 60 12 00 00 58 08 00 00              .byte 0xac, 0xa1, 0x29, 0x00, 0x60, 0x12, 0x00, 0x00, 0x58, 0x08, 0x00, 0x00

; FUNCTION 0x006fa92c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleFadeOutAffector
; alias: _ZTv0_n24_N6glitch5scene24IParticleFadeOutAffectorD0Ev
; demangled: virtual thunk to glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector()
; decoder-mode: arm
006fa92c  00 30 90 e5                                      ldr r3, [r0]
006fa930  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fa934  03 00 80 e0                                      add r0, r0, r3
006fa938  e6 ff ff ea                                      b #0x6fa8d8

; FUNCTION 0x006fa93c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleFadeOutAffector
; alias: _ZTv0_n12_N6glitch5scene24IParticleFadeOutAffectorD0Ev
; demangled: virtual thunk to glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector()
; decoder-mode: arm
006fa93c  00 30 90 e5                                      ldr r3, [r0]
006fa940  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fa944  03 00 80 e0                                      add r0, r0, r3
006fa948  e2 ff ff ea                                      b #0x6fa8d8
