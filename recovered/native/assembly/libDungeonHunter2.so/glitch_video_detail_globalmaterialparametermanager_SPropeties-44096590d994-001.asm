; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005c0f64, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::detail::globalmaterialparametermanager::SPropeties
; alias: _ZN6glitch5video6detail30globalmaterialparametermanager10SPropeties8onRemoveEPvt
; demangled: glitch::video::detail::globalmaterialparametermanager::SPropeties::onRemove(void*, unsigned short)
; decoder-mode: arm
005c0f64  01 00 a0 e1                                      mov r0, r1
005c0f68  02 10 a0 e1                                      mov r1, r2
005c0f6c  6f ff ff ea                                      b #0x5c0d30
