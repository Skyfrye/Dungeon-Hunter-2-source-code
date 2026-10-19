; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005fde6c, declared_size=48, range_size=48, mode=arm
; class-group: glitch::video::E_TEXTURE_CLAMP glitch::io::IAttributes
; alias: _ZN6glitch2io11IAttributes7getEnumINS_5video15E_TEXTURE_CLAMPEEET_PKc
; demangled: glitch::video::E_TEXTURE_CLAMP glitch::io::IAttributes::getEnum<glitch::video::E_TEXTURE_CLAMP>(char const*)
; decoder-mode: arm
005fde6c  70 40 2d e9                                      push {r4, r5, r6, lr}
005fde70  00 30 90 e5                                      ldr r3, [r0]
005fde74  00 50 a0 e1                                      mov r5, r0
005fde78  00 00 a0 e3                                      mov r0, #0
005fde7c  01 60 a0 e1                                      mov r6, r1
005fde80  00 41 93 e5                                      ldr r4, [r3, #0x100]
005fde84  0a ff ff eb                                      bl #0x5fdab4
005fde88  06 10 a0 e1                                      mov r1, r6
005fde8c  00 20 a0 e1                                      mov r2, r0
005fde90  05 00 a0 e1                                      mov r0, r5
005fde94  34 ff 2f e1                                      blx r4
005fde98  70 80 bd e8                                      pop {r4, r5, r6, pc}
