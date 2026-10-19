; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007034d4, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::CMeshConnectivity::SEdge
; alias: _ZN6glitch5scene17CMeshConnectivity5SEdge7addFaceEj
; demangled: glitch::scene::CMeshConnectivity::SEdge::addFace(unsigned int)
; decoder-mode: arm
007034d4  bc 30 d0 e1                                      ldrh r3, [r0, #0xc]
007034d8  02 00 53 e3                                      cmp r3, #2
007034dc  04 00 00 0a                                      beq #0x7034f4
007034e0  01 20 83 e2                                      add r2, r3, #1
007034e4  03 31 80 e0                                      add r3, r0, r3, lsl #2
007034e8  04 10 83 e5                                      str r1, [r3, #4]
007034ec  bc 20 c0 e1                                      strh r2, [r0, #0xc]
007034f0  1e ff 2f e1                                      bx lr
007034f4  08 00 9f e5                                      ldr r0, [pc, #8]
007034f8  03 10 a0 e3                                      mov r1, #3
007034fc  00 00 8f e0                                      add r0, pc, r0
00703500  e6 1d fc ea                                      b #0x60aca0
; mapping-symbol data/literal pool
00703504  c4 e8 1e 00                                      .byte 0xc4, 0xe8, 0x1e, 0x00
