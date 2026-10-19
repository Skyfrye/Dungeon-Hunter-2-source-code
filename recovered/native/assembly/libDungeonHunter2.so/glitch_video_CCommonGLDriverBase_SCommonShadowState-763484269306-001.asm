; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006dcd54, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::SCommonShadowState
; alias: _ZN6glitch5video19CCommonGLDriverBase18SCommonShadowStateC2Ev
; demangled: glitch::video::CCommonGLDriverBase::SCommonShadowState::SCommonShadowState()
; decoder-mode: arm
006dcd54  00 20 a0 e3                                      mov r2, #0
006dcd58  04 10 a0 e3                                      mov r1, #4
006dcd5c  10 20 80 e5                                      str r2, [r0, #0x10]
006dcd60  18 10 80 e5                                      str r1, [r0, #0x18]
006dcd64  14 20 80 e5                                      str r2, [r0, #0x14]
006dcd68  1c 20 80 e5                                      str r2, [r0, #0x1c]
006dcd6c  20 20 80 e5                                      str r2, [r0, #0x20]
006dcd70  24 20 80 e5                                      str r2, [r0, #0x24]
006dcd74  28 20 80 e5                                      str r2, [r0, #0x28]
006dcd78  2c 20 80 e5                                      str r2, [r0, #0x2c]
006dcd7c  00 20 80 e5                                      str r2, [r0]
006dcd80  04 20 80 e5                                      str r2, [r0, #4]
006dcd84  08 20 80 e5                                      str r2, [r0, #8]
006dcd88  0c 20 80 e5                                      str r2, [r0, #0xc]
006dcd8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcd90, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::SCommonShadowState
; alias: _ZN6glitch5video19CCommonGLDriverBase18SCommonShadowStateC1Ev
; demangled: glitch::video::CCommonGLDriverBase::SCommonShadowState::SCommonShadowState()
; decoder-mode: arm
006dcd90  00 20 a0 e3                                      mov r2, #0
006dcd94  04 10 a0 e3                                      mov r1, #4
006dcd98  10 20 80 e5                                      str r2, [r0, #0x10]
006dcd9c  18 10 80 e5                                      str r1, [r0, #0x18]
006dcda0  14 20 80 e5                                      str r2, [r0, #0x14]
006dcda4  1c 20 80 e5                                      str r2, [r0, #0x1c]
006dcda8  20 20 80 e5                                      str r2, [r0, #0x20]
006dcdac  24 20 80 e5                                      str r2, [r0, #0x24]
006dcdb0  28 20 80 e5                                      str r2, [r0, #0x28]
006dcdb4  2c 20 80 e5                                      str r2, [r0, #0x2c]
006dcdb8  00 20 80 e5                                      str r2, [r0]
006dcdbc  04 20 80 e5                                      str r2, [r0, #4]
006dcdc0  08 20 80 e5                                      str r2, [r0, #8]
006dcdc4  0c 20 80 e5                                      str r2, [r0, #0xc]
006dcdc8  1e ff 2f e1                                      bx lr
