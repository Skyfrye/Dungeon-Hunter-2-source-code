; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a10fc, declared_size=64, range_size=64, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::CVertexStreams>
; alias: _ZN5boost13intrusive_ptrIN6glitch5video14CVertexStreamsEED1Ev
; demangled: boost::intrusive_ptr<glitch::video::CVertexStreams>::~intrusive_ptr()
; decoder-mode: arm
005a10fc  70 40 2d e9                                      push {r4, r5, r6, lr}
005a1100  00 40 90 e5                                      ldr r4, [r0]
005a1104  00 50 a0 e1                                      mov r5, r0
005a1108  00 00 54 e3                                      cmp r4, #0
005a110c  08 00 00 0a                                      beq #0x5a1134
005a1110  00 30 94 e5                                      ldr r3, [r4]
005a1114  01 30 43 e2                                      sub r3, r3, #1
005a1118  00 00 53 e3                                      cmp r3, #0
005a111c  00 30 84 e5                                      str r3, [r4]
005a1120  03 00 00 1a                                      bne #0x5a1134
005a1124  04 00 a0 e1                                      mov r0, r4
005a1128  3b fe ff eb                                      bl #0x5a0a1c
005a112c  04 00 a0 e1                                      mov r0, r4
005a1130  5e b4 f5 eb                                      bl #0x30e2b0
005a1134  05 00 a0 e1                                      mov r0, r5
005a1138  70 80 bd e8                                      pop {r4, r5, r6, pc}
