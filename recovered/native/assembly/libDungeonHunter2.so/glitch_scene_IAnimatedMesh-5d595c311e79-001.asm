; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00599ef8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IAnimatedMesh
; alias: _ZN6glitch5scene13IAnimatedMeshD1Ev
; demangled: glitch::scene::IAnimatedMesh::~IAnimatedMesh()
; decoder-mode: arm
00599ef8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00599efc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IAnimatedMesh
; alias: _ZNK6glitch5scene13IAnimatedMesh11getMeshTypeEv
; demangled: glitch::scene::IAnimatedMesh::getMeshType() const
; decoder-mode: arm
00599efc  00 00 a0 e3                                      mov r0, #0
00599f00  1e ff 2f e1                                      bx lr

; FUNCTION 0x0059a60c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::IAnimatedMesh
; alias: _ZN6glitch5scene13IAnimatedMeshD0Ev
; demangled: glitch::scene::IAnimatedMesh::~IAnimatedMesh()
; decoder-mode: arm
0059a60c  10 40 2d e9                                      push {r4, lr}
0059a610  00 40 a0 e1                                      mov r4, r0
0059a614  25 cf f5 eb                                      bl #0x30e2b0
0059a618  04 00 a0 e1                                      mov r0, r4
0059a61c  10 80 bd e8                                      pop {r4, pc}
