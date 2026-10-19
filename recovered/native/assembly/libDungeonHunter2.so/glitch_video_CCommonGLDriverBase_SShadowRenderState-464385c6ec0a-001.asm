; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006dcac0, declared_size=292, range_size=292, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::SShadowRenderState
; alias: _ZN6glitch5video19CCommonGLDriverBase18SShadowRenderStateC1Ev
; demangled: glitch::video::CCommonGLDriverBase::SShadowRenderState::SShadowRenderState()
; decoder-mode: arm
006dcac0  70 00 2d e9                                      push {r4, r5, r6}
006dcac4  03 60 a0 e3                                      mov r6, #3
006dcac8  00 20 a0 e3                                      mov r2, #0
006dcacc  01 10 a0 e3                                      mov r1, #1
006dcad0  fe c5 a0 e3                                      mov ip, #0x3f800000
006dcad4  00 40 e0 e3                                      mvn r4, #0
006dcad8  00 50 a0 e3                                      mov r5, #0
006dcadc  1c 60 80 e5                                      str r6, [r0, #0x1c]
006dcae0  07 60 a0 e3                                      mov r6, #7
006dcae4  2c 60 c0 e5                                      strb r6, [r0, #0x2c]
006dcae8  00 20 c0 e5                                      strb r2, [r0]
006dcaec  01 20 c0 e5                                      strb r2, [r0, #1]
006dcaf0  02 10 c0 e5                                      strb r1, [r0, #2]
006dcaf4  03 10 c0 e5                                      strb r1, [r0, #3]
006dcaf8  04 20 c0 e5                                      strb r2, [r0, #4]
006dcafc  08 20 c0 e5                                      strb r2, [r0, #8]
006dcb00  09 20 c0 e5                                      strb r2, [r0, #9]
006dcb04  0a 20 c0 e5                                      strb r2, [r0, #0xa]
006dcb08  0b 20 c0 e5                                      strb r2, [r0, #0xb]
006dcb0c  0c 20 c0 e5                                      strb r2, [r0, #0xc]
006dcb10  0d 20 c0 e5                                      strb r2, [r0, #0xd]
006dcb14  0e 20 c0 e5                                      strb r2, [r0, #0xe]
006dcb18  0f 20 c0 e5                                      strb r2, [r0, #0xf]
006dcb1c  10 20 c0 e5                                      strb r2, [r0, #0x10]
006dcb20  14 20 80 e5                                      str r2, [r0, #0x14]
006dcb24  18 20 80 e5                                      str r2, [r0, #0x18]
006dcb28  20 20 80 e5                                      str r2, [r0, #0x20]
006dcb2c  24 20 80 e5                                      str r2, [r0, #0x24]
006dcb30  28 10 c0 e5                                      strb r1, [r0, #0x28]
006dcb34  29 10 c0 e5                                      strb r1, [r0, #0x29]
006dcb38  2a 10 c0 e5                                      strb r1, [r0, #0x2a]
006dcb3c  2b 10 c0 e5                                      strb r1, [r0, #0x2b]
006dcb40  2d 20 c0 e5                                      strb r2, [r0, #0x2d]
006dcb44  2e 40 c0 e5                                      strb r4, [r0, #0x2e]
006dcb48  2f 20 c0 e5                                      strb r2, [r0, #0x2f]
006dcb4c  30 20 c0 e5                                      strb r2, [r0, #0x30]
006dcb50  31 20 c0 e5                                      strb r2, [r0, #0x31]
006dcb54  32 20 c0 e5                                      strb r2, [r0, #0x32]
006dcb58  33 20 c0 e5                                      strb r2, [r0, #0x33]
006dcb5c  34 40 c0 e5                                      strb r4, [r0, #0x34]
006dcb60  35 20 c0 e5                                      strb r2, [r0, #0x35]
006dcb64  38 20 80 e5                                      str r2, [r0, #0x38]
006dcb68  8c 20 80 e5                                      str r2, [r0, #0x8c]
006dcb6c  3c 10 c0 e5                                      strb r1, [r0, #0x3c]
006dcb70  47 40 c0 e5                                      strb r4, [r0, #0x47]
006dcb74  5c 50 80 e5                                      str r5, [r0, #0x5c]
006dcb78  64 c0 80 e5                                      str ip, [r0, #0x64]
006dcb7c  3d 20 c0 e5                                      strb r2, [r0, #0x3d]
006dcb80  be 23 c0 e1                                      strh r2, [r0, #0x3e]
006dcb84  40 20 c0 e5                                      strb r2, [r0, #0x40]
006dcb88  41 20 c0 e5                                      strb r2, [r0, #0x41]
006dcb8c  42 20 c0 e5                                      strb r2, [r0, #0x42]
006dcb90  43 20 c0 e5                                      strb r2, [r0, #0x43]
006dcb94  44 20 c0 e5                                      strb r2, [r0, #0x44]
006dcb98  45 20 c0 e5                                      strb r2, [r0, #0x45]
006dcb9c  46 20 c0 e5                                      strb r2, [r0, #0x46]
006dcba0  48 c0 80 e5                                      str ip, [r0, #0x48]
006dcba4  4c 50 80 e5                                      str r5, [r0, #0x4c]
006dcba8  50 c0 80 e5                                      str ip, [r0, #0x50]
006dcbac  54 c0 80 e5                                      str ip, [r0, #0x54]
006dcbb0  58 c0 80 e5                                      str ip, [r0, #0x58]
006dcbb4  60 c0 80 e5                                      str ip, [r0, #0x60]
006dcbb8  68 20 80 e5                                      str r2, [r0, #0x68]
006dcbbc  6c 20 80 e5                                      str r2, [r0, #0x6c]
006dcbc0  70 20 80 e5                                      str r2, [r0, #0x70]
006dcbc4  74 20 80 e5                                      str r2, [r0, #0x74]
006dcbc8  78 20 80 e5                                      str r2, [r0, #0x78]
006dcbcc  7c 20 80 e5                                      str r2, [r0, #0x7c]
006dcbd0  80 20 80 e5                                      str r2, [r0, #0x80]
006dcbd4  84 20 80 e5                                      str r2, [r0, #0x84]
006dcbd8  88 20 80 e5                                      str r2, [r0, #0x88]
006dcbdc  70 00 bd e8                                      pop {r4, r5, r6}
006dcbe0  1e ff 2f e1                                      bx lr
