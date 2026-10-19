; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fcd00, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IParticleRotationAffector
; alias: _ZNK6glitch5scene25IParticleRotationAffector7getTypeEv
; demangled: glitch::scene::IParticleRotationAffector::getType() const
; decoder-mode: arm
006fcd00  04 00 a0 e3                                      mov r0, #4
006fcd04  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fcd50, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IParticleRotationAffector
; alias: _ZN6glitch5scene25IParticleRotationAffectorD1Ev
; demangled: glitch::scene::IParticleRotationAffector::~IParticleRotationAffector()
; decoder-mode: arm
006fcd50  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fcd54, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleRotationAffector
; alias: _ZTv0_n24_N6glitch5scene25IParticleRotationAffectorD1Ev
; demangled: virtual thunk to glitch::scene::IParticleRotationAffector::~IParticleRotationAffector()
; decoder-mode: arm
006fcd54  00 30 90 e5                                      ldr r3, [r0]
006fcd58  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fcd5c  03 00 80 e0                                      add r0, r0, r3
006fcd60  fa ff ff ea                                      b #0x6fcd50

; FUNCTION 0x006fcd64, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleRotationAffector
; alias: _ZTv0_n12_N6glitch5scene25IParticleRotationAffectorD1Ev
; demangled: virtual thunk to glitch::scene::IParticleRotationAffector::~IParticleRotationAffector()
; decoder-mode: arm
006fcd64  00 30 90 e5                                      ldr r3, [r0]
006fcd68  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fcd6c  03 00 80 e0                                      add r0, r0, r3
006fcd70  f6 ff ff ea                                      b #0x6fcd50

; FUNCTION 0x006fd0d8, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::IParticleRotationAffector
; alias: _ZN6glitch5scene25IParticleRotationAffectorD0Ev
; demangled: glitch::scene::IParticleRotationAffector::~IParticleRotationAffector()
; decoder-mode: arm
006fd0d8  40 30 9f e5                                      ldr r3, [pc, #0x40]
006fd0dc  40 10 9f e5                                      ldr r1, [pc, #0x40]
006fd0e0  40 20 9f e5                                      ldr r2, [pc, #0x40]
006fd0e4  03 30 8f e0                                      add r3, pc, r3
006fd0e8  01 10 93 e7                                      ldr r1, [r3, r1]
006fd0ec  10 40 2d e9                                      push {r4, lr}
006fd0f0  02 20 93 e7                                      ldr r2, [r3, r2]
006fd0f4  04 c0 91 e5                                      ldr ip, [r1, #4]
006fd0f8  08 10 91 e5                                      ldr r1, [r1, #8]
006fd0fc  60 20 82 e2                                      add r2, r2, #0x60
006fd100  00 c0 80 e5                                      str ip, [r0]
006fd104  08 20 80 e5                                      str r2, [r0, #8]
006fd108  1c 20 1c e5                                      ldr r2, [ip, #-0x1c]
006fd10c  00 40 a0 e1                                      mov r4, r0
006fd110  02 10 80 e7                                      str r1, [r0, r2]
006fd114  65 44 f0 eb                                      bl #0x30e2b0
006fd118  04 00 a0 e1                                      mov r0, r4
006fd11c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006fd120  ac 79 29 00 bc 27 00 00 38 1b 00 00              .byte 0xac, 0x79, 0x29, 0x00, 0xbc, 0x27, 0x00, 0x00, 0x38, 0x1b, 0x00, 0x00

; FUNCTION 0x006fd12c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleRotationAffector
; alias: _ZTv0_n24_N6glitch5scene25IParticleRotationAffectorD0Ev
; demangled: virtual thunk to glitch::scene::IParticleRotationAffector::~IParticleRotationAffector()
; decoder-mode: arm
006fd12c  00 30 90 e5                                      ldr r3, [r0]
006fd130  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fd134  03 00 80 e0                                      add r0, r0, r3
006fd138  e6 ff ff ea                                      b #0x6fd0d8

; FUNCTION 0x006fd13c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleRotationAffector
; alias: _ZTv0_n12_N6glitch5scene25IParticleRotationAffectorD0Ev
; demangled: virtual thunk to glitch::scene::IParticleRotationAffector::~IParticleRotationAffector()
; decoder-mode: arm
006fd13c  00 30 90 e5                                      ldr r3, [r0]
006fd140  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fd144  03 00 80 e0                                      add r0, r0, r3
006fd148  e2 ff ff ea                                      b #0x6fd0d8
