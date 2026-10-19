; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00660dac, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IColladaSceneNodeSynchronizedAnimatorInterface
; alias: _ZN6glitch7collada46IColladaSceneNodeSynchronizedAnimatorInterfaceD1Ev
; demangled: glitch::collada::IColladaSceneNodeSynchronizedAnimatorInterface::~IColladaSceneNodeSynchronizedAnimatorInterface()
; decoder-mode: arm
00660dac  1e ff 2f e1                                      bx lr

; FUNCTION 0x006615f4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::IColladaSceneNodeSynchronizedAnimatorInterface
; alias: _ZN6glitch7collada46IColladaSceneNodeSynchronizedAnimatorInterfaceD0Ev
; demangled: glitch::collada::IColladaSceneNodeSynchronizedAnimatorInterface::~IColladaSceneNodeSynchronizedAnimatorInterface()
; decoder-mode: arm
006615f4  10 40 2d e9                                      push {r4, lr}
006615f8  00 40 a0 e1                                      mov r4, r0
006615fc  2b b3 f2 eb                                      bl #0x30e2b0
00661600  04 00 a0 e1                                      mov r0, r4
00661604  10 80 bd e8                                      pop {r4, pc}
