; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00351e3c, declared_size=72, range_size=72, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::CMaterial const>
; alias: _ZN5boost13intrusive_ptrIKN6glitch5video9CMaterialEED1Ev
; demangled: boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr()
; decoder-mode: arm
00351e3c  70 40 2d e9                                      push {r4, r5, r6, lr}
00351e40  00 40 90 e5                                      ldr r4, [r0]
00351e44  00 50 a0 e1                                      mov r5, r0
00351e48  00 00 54 e3                                      cmp r4, #0
00351e4c  04 00 00 0a                                      beq #0x351e64
00351e50  00 30 94 e5                                      ldr r3, [r4]
00351e54  01 30 43 e2                                      sub r3, r3, #1
00351e58  00 00 53 e3                                      cmp r3, #0
00351e5c  00 30 84 e5                                      str r3, [r4]
00351e60  01 00 00 0a                                      beq #0x351e6c
00351e64  05 00 a0 e1                                      mov r0, r5
00351e68  70 80 bd e8                                      pop {r4, r5, r6, pc}
00351e6c  04 00 a0 e1                                      mov r0, r4
00351e70  40 e8 09 eb                                      bl #0x5cbf78
00351e74  04 00 a0 e1                                      mov r0, r4
00351e78  70 f9 fe eb                                      bl #0x310440
00351e7c  05 00 a0 e1                                      mov r0, r5
00351e80  70 80 bd e8                                      pop {r4, r5, r6, pc}
