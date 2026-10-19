; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0057a26c, declared_size=64, range_size=64, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>
; alias: _ZN5boost13intrusive_ptrIN6glitch5video27CMaterialVertexAttributeMapEED1Ev
; demangled: boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr()
; decoder-mode: arm
0057a26c  70 40 2d e9                                      push {r4, r5, r6, lr}
0057a270  00 40 90 e5                                      ldr r4, [r0]
0057a274  00 50 a0 e1                                      mov r5, r0
0057a278  00 00 54 e3                                      cmp r4, #0
0057a27c  08 00 00 0a                                      beq #0x57a2a4
0057a280  00 30 94 e5                                      ldr r3, [r4]
0057a284  01 30 43 e2                                      sub r3, r3, #1
0057a288  00 00 53 e3                                      cmp r3, #0
0057a28c  00 30 84 e5                                      str r3, [r4]
0057a290  03 00 00 1a                                      bne #0x57a2a4
0057a294  04 00 a0 e1                                      mov r0, r4
0057a298  2d 95 01 eb                                      bl #0x5df754
0057a29c  04 00 a0 e1                                      mov r0, r4
0057a2a0  02 50 f6 eb                                      bl #0x30e2b0
0057a2a4  05 00 a0 e1                                      mov r0, r5
0057a2a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
