; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fd1e4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IParticleSizeAffector
; alias: _ZNK6glitch5scene21IParticleSizeAffector7getTypeEv
; demangled: glitch::scene::IParticleSizeAffector::getType() const
; decoder-mode: arm
006fd1e4  05 00 a0 e3                                      mov r0, #5
006fd1e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd22c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IParticleSizeAffector
; alias: _ZN6glitch5scene21IParticleSizeAffectorD1Ev
; demangled: glitch::scene::IParticleSizeAffector::~IParticleSizeAffector()
; decoder-mode: arm
006fd22c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd230, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleSizeAffector
; alias: _ZTv0_n24_N6glitch5scene21IParticleSizeAffectorD1Ev
; demangled: virtual thunk to glitch::scene::IParticleSizeAffector::~IParticleSizeAffector()
; decoder-mode: arm
006fd230  00 30 90 e5                                      ldr r3, [r0]
006fd234  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fd238  03 00 80 e0                                      add r0, r0, r3
006fd23c  fa ff ff ea                                      b #0x6fd22c

; FUNCTION 0x006fd240, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleSizeAffector
; alias: _ZTv0_n12_N6glitch5scene21IParticleSizeAffectorD1Ev
; demangled: virtual thunk to glitch::scene::IParticleSizeAffector::~IParticleSizeAffector()
; decoder-mode: arm
006fd240  00 30 90 e5                                      ldr r3, [r0]
006fd244  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fd248  03 00 80 e0                                      add r0, r0, r3
006fd24c  f6 ff ff ea                                      b #0x6fd22c

; FUNCTION 0x006fd7d8, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::IParticleSizeAffector
; alias: _ZN6glitch5scene21IParticleSizeAffectorD0Ev
; demangled: glitch::scene::IParticleSizeAffector::~IParticleSizeAffector()
; decoder-mode: arm
006fd7d8  40 30 9f e5                                      ldr r3, [pc, #0x40]
006fd7dc  40 10 9f e5                                      ldr r1, [pc, #0x40]
006fd7e0  40 20 9f e5                                      ldr r2, [pc, #0x40]
006fd7e4  03 30 8f e0                                      add r3, pc, r3
006fd7e8  01 10 93 e7                                      ldr r1, [r3, r1]
006fd7ec  10 40 2d e9                                      push {r4, lr}
006fd7f0  02 20 93 e7                                      ldr r2, [r3, r2]
006fd7f4  04 c0 91 e5                                      ldr ip, [r1, #4]
006fd7f8  08 10 91 e5                                      ldr r1, [r1, #8]
006fd7fc  70 20 82 e2                                      add r2, r2, #0x70
006fd800  00 c0 80 e5                                      str ip, [r0]
006fd804  08 20 80 e5                                      str r2, [r0, #8]
006fd808  1c 20 1c e5                                      ldr r2, [ip, #-0x1c]
006fd80c  00 40 a0 e1                                      mov r4, r0
006fd810  02 10 80 e7                                      str r1, [r0, r2]
006fd814  a5 42 f0 eb                                      bl #0x30e2b0
006fd818  04 00 a0 e1                                      mov r0, r4
006fd81c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006fd820  ac 72 29 00 24 2e 00 00 ac 24 00 00              .byte 0xac, 0x72, 0x29, 0x00, 0x24, 0x2e, 0x00, 0x00, 0xac, 0x24, 0x00, 0x00

; FUNCTION 0x006fd82c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleSizeAffector
; alias: _ZTv0_n24_N6glitch5scene21IParticleSizeAffectorD0Ev
; demangled: virtual thunk to glitch::scene::IParticleSizeAffector::~IParticleSizeAffector()
; decoder-mode: arm
006fd82c  00 30 90 e5                                      ldr r3, [r0]
006fd830  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fd834  03 00 80 e0                                      add r0, r0, r3
006fd838  e6 ff ff ea                                      b #0x6fd7d8

; FUNCTION 0x006fd83c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleSizeAffector
; alias: _ZTv0_n12_N6glitch5scene21IParticleSizeAffectorD0Ev
; demangled: virtual thunk to glitch::scene::IParticleSizeAffector::~IParticleSizeAffector()
; decoder-mode: arm
006fd83c  00 30 90 e5                                      ldr r3, [r0]
006fd840  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fd844  03 00 80 e0                                      add r0, r0, r3
006fd848  e2 ff ff ea                                      b #0x6fd7d8
