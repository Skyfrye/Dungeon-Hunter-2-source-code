; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035eb90, declared_size=64, range_size=64, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::CVertexStreams const>
; alias: _ZN5boost13intrusive_ptrIKN6glitch5video14CVertexStreamsEED1Ev
; demangled: boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr()
; decoder-mode: arm
0035eb90  70 40 2d e9                                      push {r4, r5, r6, lr}
0035eb94  00 40 90 e5                                      ldr r4, [r0]
0035eb98  00 50 a0 e1                                      mov r5, r0
0035eb9c  00 00 54 e3                                      cmp r4, #0
0035eba0  08 00 00 0a                                      beq #0x35ebc8
0035eba4  00 30 94 e5                                      ldr r3, [r4]
0035eba8  01 30 43 e2                                      sub r3, r3, #1
0035ebac  00 00 53 e3                                      cmp r3, #0
0035ebb0  00 30 84 e5                                      str r3, [r4]
0035ebb4  03 00 00 1a                                      bne #0x35ebc8
0035ebb8  04 00 a0 e1                                      mov r0, r4
0035ebbc  96 07 09 eb                                      bl #0x5a0a1c
0035ebc0  04 00 a0 e1                                      mov r0, r4
0035ebc4  1d c6 fe eb                                      bl #0x310440
0035ebc8  05 00 a0 e1                                      mov r0, r5
0035ebcc  70 80 bd e8                                      pop {r4, r5, r6, pc}
