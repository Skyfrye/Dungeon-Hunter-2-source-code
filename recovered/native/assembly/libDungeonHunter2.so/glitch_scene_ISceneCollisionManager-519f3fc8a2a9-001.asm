; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006c3be8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::ISceneCollisionManager
; alias: _ZN6glitch5scene22ISceneCollisionManagerD1Ev
; demangled: glitch::scene::ISceneCollisionManager::~ISceneCollisionManager()
; decoder-mode: arm
006c3be8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c57c4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::ISceneCollisionManager
; alias: _ZN6glitch5scene22ISceneCollisionManagerD0Ev
; demangled: glitch::scene::ISceneCollisionManager::~ISceneCollisionManager()
; decoder-mode: arm
006c57c4  10 40 2d e9                                      push {r4, lr}
006c57c8  00 40 a0 e1                                      mov r4, r0
006c57cc  b7 22 f1 eb                                      bl #0x30e2b0
006c57d0  04 00 a0 e1                                      mov r0, r4
006c57d4  10 80 bd e8                                      pop {r4, pc}
