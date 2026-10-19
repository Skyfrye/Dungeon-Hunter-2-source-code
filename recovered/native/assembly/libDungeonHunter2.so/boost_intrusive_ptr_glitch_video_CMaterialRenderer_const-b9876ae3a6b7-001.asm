; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065afc0, declared_size=64, range_size=64, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::CMaterialRenderer const>
; alias: _ZN5boost13intrusive_ptrIKN6glitch5video17CMaterialRendererEED1Ev
; demangled: boost::intrusive_ptr<glitch::video::CMaterialRenderer const>::~intrusive_ptr()
; decoder-mode: arm
0065afc0  70 40 2d e9                                      push {r4, r5, r6, lr}
0065afc4  00 40 90 e5                                      ldr r4, [r0]
0065afc8  00 50 a0 e1                                      mov r5, r0
0065afcc  00 00 54 e3                                      cmp r4, #0
0065afd0  08 00 00 0a                                      beq #0x65aff8
0065afd4  00 30 94 e5                                      ldr r3, [r4]
0065afd8  01 30 43 e2                                      sub r3, r3, #1
0065afdc  00 00 53 e3                                      cmp r3, #0
0065afe0  00 30 84 e5                                      str r3, [r4]
0065afe4  03 00 00 1a                                      bne #0x65aff8
0065afe8  04 00 a0 e1                                      mov r0, r4
0065afec  ab e6 fd eb                                      bl #0x5d4aa0
0065aff0  04 00 a0 e1                                      mov r0, r4
0065aff4  ad cc f2 eb                                      bl #0x30e2b0
0065aff8  05 00 a0 e1                                      mov r0, r5
0065affc  70 80 bd e8                                      pop {r4, r5, r6, pc}
