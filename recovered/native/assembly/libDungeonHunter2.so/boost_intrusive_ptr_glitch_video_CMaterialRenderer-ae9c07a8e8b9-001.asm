; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003522b8, declared_size=64, range_size=64, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::CMaterialRenderer>
; alias: _ZN5boost13intrusive_ptrIN6glitch5video17CMaterialRendererEED1Ev
; demangled: boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr()
; decoder-mode: arm
003522b8  70 40 2d e9                                      push {r4, r5, r6, lr}
003522bc  00 40 90 e5                                      ldr r4, [r0]
003522c0  00 50 a0 e1                                      mov r5, r0
003522c4  00 00 54 e3                                      cmp r4, #0
003522c8  08 00 00 0a                                      beq #0x3522f0
003522cc  00 30 94 e5                                      ldr r3, [r4]
003522d0  01 30 43 e2                                      sub r3, r3, #1
003522d4  00 00 53 e3                                      cmp r3, #0
003522d8  00 30 84 e5                                      str r3, [r4]
003522dc  03 00 00 1a                                      bne #0x3522f0
003522e0  04 00 a0 e1                                      mov r0, r4
003522e4  ed 09 0a eb                                      bl #0x5d4aa0
003522e8  04 00 a0 e1                                      mov r0, r4
003522ec  53 f8 fe eb                                      bl #0x310440
003522f0  05 00 a0 e1                                      mov r0, r5
003522f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
