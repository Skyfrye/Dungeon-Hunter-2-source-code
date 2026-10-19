; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0050cf00, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CBatchMeshExt<GameObject*>
; alias: _ZN6glitch5scene13CBatchMeshExtIP10GameObjectE20loadSegmentExtraDataEPvPNS_2io9IReadFileEb
; demangled: glitch::scene::CBatchMeshExt<GameObject*>::loadSegmentExtraData(void*, glitch::io::IReadFile*, bool)
; decoder-mode: arm
0050cf00  1e ff 2f e1                                      bx lr

; FUNCTION 0x0050cf04, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CBatchMeshExt<GameObject*>
; alias: _ZNK6glitch5scene13CBatchMeshExtIP10GameObjectE20saveSegmentExtraDataEPKvPNS_2io10IWriteFileENS_2os8E_ENDIANE
; demangled: glitch::scene::CBatchMeshExt<GameObject*>::saveSegmentExtraData(void const*, glitch::io::IWriteFile*, glitch::os::E_ENDIAN) const
; decoder-mode: arm
0050cf04  1e ff 2f e1                                      bx lr

; FUNCTION 0x0050cf74, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::CBatchMeshExt<GameObject*>
; alias: _ZN6glitch5scene13CBatchMeshExtIP10GameObjectED1Ev
; demangled: glitch::scene::CBatchMeshExt<GameObject*>::~CBatchMeshExt()
; decoder-mode: arm
0050cf74  24 30 9f e5                                      ldr r3, [pc, #0x24]
0050cf78  24 20 9f e5                                      ldr r2, [pc, #0x24]
0050cf7c  10 40 2d e9                                      push {r4, lr}
0050cf80  03 30 8f e0                                      add r3, pc, r3
0050cf84  02 20 93 e7                                      ldr r2, [r3, r2]
0050cf88  00 40 a0 e1                                      mov r4, r0
0050cf8c  08 20 82 e2                                      add r2, r2, #8
0050cf90  00 20 80 e5                                      str r2, [r0]
0050cf94  a1 b5 01 eb                                      bl #0x57a620
0050cf98  04 00 a0 e1                                      mov r0, r4
0050cf9c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0050cfa0  10 7b 48 00 c4 3d 00 00                          .byte 0x10, 0x7b, 0x48, 0x00, 0xc4, 0x3d, 0x00, 0x00

; FUNCTION 0x0050d15c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::scene::CBatchMeshExt<GameObject*>
; alias: _ZN6glitch5scene13CBatchMeshExtIP10GameObjectED0Ev
; demangled: glitch::scene::CBatchMeshExt<GameObject*>::~CBatchMeshExt()
; decoder-mode: arm
0050d15c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0050d160  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0050d164  10 40 2d e9                                      push {r4, lr}
0050d168  03 30 8f e0                                      add r3, pc, r3
0050d16c  02 20 93 e7                                      ldr r2, [r3, r2]
0050d170  00 40 a0 e1                                      mov r4, r0
0050d174  08 20 82 e2                                      add r2, r2, #8
0050d178  00 20 80 e5                                      str r2, [r0]
0050d17c  27 b5 01 eb                                      bl #0x57a620
0050d180  04 00 a0 e1                                      mov r0, r4
0050d184  ad 0c f8 eb                                      bl #0x310440
0050d188  04 00 a0 e1                                      mov r0, r4
0050d18c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0050d190  28 79 48 00 c4 3d 00 00                          .byte 0x28, 0x79, 0x48, 0x00, 0xc4, 0x3d, 0x00, 0x00
