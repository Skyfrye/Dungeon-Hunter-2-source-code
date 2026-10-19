; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00310be8, declared_size=64, range_size=64, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::CMaterial>
; alias: _ZN5boost13intrusive_ptrIN6glitch5video9CMaterialEED1Ev
; demangled: boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr()
; decoder-mode: arm
00310be8  70 40 2d e9                                      push {r4, r5, r6, lr}
00310bec  00 40 90 e5                                      ldr r4, [r0]
00310bf0  00 50 a0 e1                                      mov r5, r0
00310bf4  00 00 54 e3                                      cmp r4, #0
00310bf8  08 00 00 0a                                      beq #0x310c20
00310bfc  00 30 94 e5                                      ldr r3, [r4]
00310c00  01 30 43 e2                                      sub r3, r3, #1
00310c04  00 00 53 e3                                      cmp r3, #0
00310c08  00 30 84 e5                                      str r3, [r4]
00310c0c  03 00 00 1a                                      bne #0x310c20
00310c10  04 00 a0 e1                                      mov r0, r4
00310c14  d7 ec 0a eb                                      bl #0x5cbf78
00310c18  04 00 a0 e1                                      mov r0, r4
00310c1c  07 fe ff eb                                      bl #0x310440
00310c20  05 00 a0 e1                                      mov r0, r5
00310c24  70 80 bd e8                                      pop {r4, r5, r6, pc}
