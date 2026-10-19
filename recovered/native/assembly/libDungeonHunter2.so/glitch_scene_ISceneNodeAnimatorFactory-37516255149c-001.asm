; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b958c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorFactory
; alias: _ZN6glitch5scene25ISceneNodeAnimatorFactoryD1Ev
; demangled: glitch::scene::ISceneNodeAnimatorFactory::~ISceneNodeAnimatorFactory()
; decoder-mode: arm
006b958c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b97c0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorFactory
; alias: _ZN6glitch5scene25ISceneNodeAnimatorFactoryD0Ev
; demangled: glitch::scene::ISceneNodeAnimatorFactory::~ISceneNodeAnimatorFactory()
; decoder-mode: arm
006b97c0  10 40 2d e9                                      push {r4, lr}
006b97c4  00 40 a0 e1                                      mov r4, r0
006b97c8  b8 52 f1 eb                                      bl #0x30e2b0
006b97cc  04 00 a0 e1                                      mov r0, r4
006b97d0  10 80 bd e8                                      pop {r4, pc}
