; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d7c44, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::detail::materialrenderermanager::SProperties
; alias: _ZN6glitch5video6detail23materialrenderermanager11SProperties8onRemoveEPvt
; demangled: glitch::video::detail::materialrenderermanager::SProperties::onRemove(void*, unsigned short)
; decoder-mode: arm
005d7c44  b8 30 d0 e1                                      ldrh r3, [r0, #8]
005d7c48  10 00 53 e3                                      cmp r3, #0x10
005d7c4c  83 30 81 90                                      addls r3, r1, r3, lsl #1
005d7c50  00 20 e0 93                                      mvnls r2, #0
005d7c54  bc 22 c3 91                                      strhls r2, [r3, #0x2c]
005d7c58  1e ff 2f e1                                      bx lr
