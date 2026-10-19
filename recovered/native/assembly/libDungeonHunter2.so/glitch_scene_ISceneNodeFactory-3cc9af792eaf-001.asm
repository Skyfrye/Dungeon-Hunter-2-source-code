; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b9cec, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::ISceneNodeFactory
; alias: _ZN6glitch5scene17ISceneNodeFactoryD1Ev
; demangled: glitch::scene::ISceneNodeFactory::~ISceneNodeFactory()
; decoder-mode: arm
006b9cec  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b9e44, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::ISceneNodeFactory
; alias: _ZN6glitch5scene17ISceneNodeFactoryD0Ev
; demangled: glitch::scene::ISceneNodeFactory::~ISceneNodeFactory()
; decoder-mode: arm
006b9e44  10 40 2d e9                                      push {r4, lr}
006b9e48  00 40 a0 e1                                      mov r4, r0
006b9e4c  17 51 f1 eb                                      bl #0x30e2b0
006b9e50  04 00 a0 e1                                      mov r0, r4
006b9e54  10 80 bd e8                                      pop {r4, pc}
