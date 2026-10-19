; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006ba774, declared_size=60, range_size=60, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair
; alias: _ZN6glitch5scene24CDefaultSceneNodeFactory18SSceneNodeTypePairC1ENS0_17E_SCENE_NODE_TYPEEPKc
; demangled: glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(glitch::scene::E_SCENE_NODE_TYPE, char const*)
; decoder-mode: arm
006ba774  70 40 2d e9                                      push {r4, r5, r6, lr}
006ba778  00 40 a0 e1                                      mov r4, r0
006ba77c  04 10 84 e4                                      str r1, [r4], #4
006ba780  00 50 a0 e1                                      mov r5, r0
006ba784  14 40 80 e5                                      str r4, [r0, #0x14]
006ba788  18 40 80 e5                                      str r4, [r0, #0x18]
006ba78c  02 00 a0 e1                                      mov r0, r2
006ba790  02 60 a0 e1                                      mov r6, r2
006ba794  ae 4d f1 eb                                      bl #0x30de54
006ba798  06 10 a0 e1                                      mov r1, r6
006ba79c  00 20 86 e0                                      add r2, r6, r0
006ba7a0  04 00 a0 e1                                      mov r0, r4
006ba7a4  12 ae f1 eb                                      bl #0x325ff4
006ba7a8  05 00 a0 e1                                      mov r0, r5
006ba7ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
