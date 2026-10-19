; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fe2ac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IParticleSpinAffector
; alias: _ZNK6glitch5scene21IParticleSpinAffector7getTypeEv
; demangled: glitch::scene::IParticleSpinAffector::getType() const
; decoder-mode: arm
006fe2ac  06 00 a0 e3                                      mov r0, #6
006fe2b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fe2ec, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IParticleSpinAffector
; alias: _ZN6glitch5scene21IParticleSpinAffectorD1Ev
; demangled: glitch::scene::IParticleSpinAffector::~IParticleSpinAffector()
; decoder-mode: arm
006fe2ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fe2f0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleSpinAffector
; alias: _ZTv0_n24_N6glitch5scene21IParticleSpinAffectorD1Ev
; demangled: virtual thunk to glitch::scene::IParticleSpinAffector::~IParticleSpinAffector()
; decoder-mode: arm
006fe2f0  00 30 90 e5                                      ldr r3, [r0]
006fe2f4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fe2f8  03 00 80 e0                                      add r0, r0, r3
006fe2fc  fa ff ff ea                                      b #0x6fe2ec

; FUNCTION 0x006fe300, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleSpinAffector
; alias: _ZTv0_n12_N6glitch5scene21IParticleSpinAffectorD1Ev
; demangled: virtual thunk to glitch::scene::IParticleSpinAffector::~IParticleSpinAffector()
; decoder-mode: arm
006fe300  00 30 90 e5                                      ldr r3, [r0]
006fe304  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fe308  03 00 80 e0                                      add r0, r0, r3
006fe30c  f6 ff ff ea                                      b #0x6fe2ec

; FUNCTION 0x006fe738, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::IParticleSpinAffector
; alias: _ZN6glitch5scene21IParticleSpinAffectorD0Ev
; demangled: glitch::scene::IParticleSpinAffector::~IParticleSpinAffector()
; decoder-mode: arm
006fe738  40 30 9f e5                                      ldr r3, [pc, #0x40]
006fe73c  40 10 9f e5                                      ldr r1, [pc, #0x40]
006fe740  40 20 9f e5                                      ldr r2, [pc, #0x40]
006fe744  03 30 8f e0                                      add r3, pc, r3
006fe748  01 10 93 e7                                      ldr r1, [r3, r1]
006fe74c  10 40 2d e9                                      push {r4, lr}
006fe750  02 20 93 e7                                      ldr r2, [r3, r2]
006fe754  04 c0 91 e5                                      ldr ip, [r1, #4]
006fe758  08 10 91 e5                                      ldr r1, [r1, #8]
006fe75c  60 20 82 e2                                      add r2, r2, #0x60
006fe760  00 c0 80 e5                                      str ip, [r0]
006fe764  08 20 80 e5                                      str r2, [r0, #8]
006fe768  1c 20 1c e5                                      ldr r2, [ip, #-0x1c]
006fe76c  00 40 a0 e1                                      mov r4, r0
006fe770  02 10 80 e7                                      str r1, [r0, r2]
006fe774  cd 3e f0 eb                                      bl #0x30e2b0
006fe778  04 00 a0 e1                                      mov r0, r4
006fe77c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006fe780  4c 63 29 00 24 37 00 00 a0 05 00 00              .byte 0x4c, 0x63, 0x29, 0x00, 0x24, 0x37, 0x00, 0x00, 0xa0, 0x05, 0x00, 0x00

; FUNCTION 0x006fe78c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleSpinAffector
; alias: _ZTv0_n24_N6glitch5scene21IParticleSpinAffectorD0Ev
; demangled: virtual thunk to glitch::scene::IParticleSpinAffector::~IParticleSpinAffector()
; decoder-mode: arm
006fe78c  00 30 90 e5                                      ldr r3, [r0]
006fe790  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fe794  03 00 80 e0                                      add r0, r0, r3
006fe798  e6 ff ff ea                                      b #0x6fe738

; FUNCTION 0x006fe79c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleSpinAffector
; alias: _ZTv0_n12_N6glitch5scene21IParticleSpinAffectorD0Ev
; demangled: virtual thunk to glitch::scene::IParticleSpinAffector::~IParticleSpinAffector()
; decoder-mode: arm
006fe79c  00 30 90 e5                                      ldr r3, [r0]
006fe7a0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fe7a4  03 00 80 e0                                      add r0, r0, r3
006fe7a8  e2 ff ff ea                                      b #0x6fe738
