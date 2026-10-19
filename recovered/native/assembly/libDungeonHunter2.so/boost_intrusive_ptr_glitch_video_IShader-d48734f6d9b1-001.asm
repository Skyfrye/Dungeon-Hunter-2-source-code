; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b9d6c, declared_size=32, range_size=32, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::IShader>
; alias: _ZN5boost13intrusive_ptrIN6glitch5video7IShaderEED1Ev
; demangled: boost::intrusive_ptr<glitch::video::IShader>::~intrusive_ptr()
; decoder-mode: arm
005b9d6c  10 40 2d e9                                      push {r4, lr}
005b9d70  00 40 a0 e1                                      mov r4, r0
005b9d74  00 00 90 e5                                      ldr r0, [r0]
005b9d78  00 00 50 e3                                      cmp r0, #0
005b9d7c  00 00 00 0a                                      beq #0x5b9d84
005b9d80  ff 8d f5 eb                                      bl #0x31d584
005b9d84  04 00 a0 e1                                      mov r0, r4
005b9d88  10 80 bd e8                                      pop {r4, pc}
