; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00350cf4, declared_size=360, range_size=360, mode=arm
; class-group: glitch::scene::CSceneManager::SDistanceNodeEntry
; alias: _ZN6glitch5scene13CSceneManager18SDistanceNodeEntryC1EPNS0_10ISceneNodeERKNS_4core8vector3dIfEEPv
; demangled: glitch::scene::CSceneManager::SDistanceNodeEntry::SDistanceNodeEntry(glitch::scene::ISceneNode*, glitch::core::vector3d<float> const&, void*)
; decoder-mode: arm
00350cf4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00350cf8  0a 00 80 e8                                      stm r0, {r1, r3}
00350cfc  00 30 91 e5                                      ldr r3, [r1]
00350d00  00 40 a0 e1                                      mov r4, r0
00350d04  01 00 a0 e1                                      mov r0, r1
00350d08  02 60 a0 e1                                      mov r6, r2
00350d0c  0f e0 a0 e1                                      mov lr, pc
00350d10  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00350d14  00 10 96 e5                                      ldr r1, [r6]
00350d18  00 50 a0 e1                                      mov r5, r0
00350d1c  30 00 90 e5                                      ldr r0, [r0, #0x30]
00350d20  a1 f5 fe eb                                      bl #0x30e3ac
00350d24  04 10 96 e5                                      ldr r1, [r6, #4]
00350d28  00 80 a0 e1                                      mov r8, r0
00350d2c  34 00 95 e5                                      ldr r0, [r5, #0x34]
00350d30  9d f5 fe eb                                      bl #0x30e3ac
00350d34  08 10 96 e5                                      ldr r1, [r6, #8]
00350d38  00 70 a0 e1                                      mov r7, r0
00350d3c  38 00 95 e5                                      ldr r0, [r5, #0x38]
00350d40  99 f5 fe eb                                      bl #0x30e3ac
00350d44  08 10 a0 e1                                      mov r1, r8
00350d48  00 60 a0 e1                                      mov r6, r0
00350d4c  08 00 a0 e1                                      mov r0, r8
00350d50  05 f8 fe eb                                      bl #0x30ed6c
00350d54  07 10 a0 e1                                      mov r1, r7
00350d58  00 50 a0 e1                                      mov r5, r0
00350d5c  07 00 a0 e1                                      mov r0, r7
00350d60  01 f8 fe eb                                      bl #0x30ed6c
00350d64  00 10 a0 e1                                      mov r1, r0
00350d68  05 00 a0 e1                                      mov r0, r5
00350d6c  8c f7 fe eb                                      bl #0x30eba4
00350d70  06 10 a0 e1                                      mov r1, r6
00350d74  00 50 a0 e1                                      mov r5, r0
00350d78  06 00 a0 e1                                      mov r0, r6
00350d7c  fa f7 fe eb                                      bl #0x30ed6c
00350d80  00 10 a0 e1                                      mov r1, r0
00350d84  05 00 a0 e1                                      mov r0, r5
00350d88  85 f7 fe eb                                      bl #0x30eba4
00350d8c  c4 f6 fe eb                                      bl #0x30e8a4
00350d90  01 70 a0 e1                                      mov r7, r1
00350d94  00 60 a0 e1                                      mov r6, r0
00350d98  00 30 94 e5                                      ldr r3, [r4]
00350d9c  f8 60 c4 e1                                      strd r6, r7, [r4, #8]
00350da0  03 00 a0 e1                                      mov r0, r3
00350da4  00 30 93 e5                                      ldr r3, [r3]
00350da8  0f e0 a0 e1                                      mov lr, pc
00350dac  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00350db0  00 50 a0 e1                                      mov r5, r0
00350db4  00 10 90 e5                                      ldr r1, [r0]
00350db8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00350dbc  7a f5 fe eb                                      bl #0x30e3ac
00350dc0  04 10 95 e5                                      ldr r1, [r5, #4]
00350dc4  00 90 a0 e1                                      mov sb, r0
00350dc8  10 00 95 e5                                      ldr r0, [r5, #0x10]
00350dcc  76 f5 fe eb                                      bl #0x30e3ac
00350dd0  08 10 95 e5                                      ldr r1, [r5, #8]
00350dd4  00 a0 a0 e1                                      mov sl, r0
00350dd8  14 00 95 e5                                      ldr r0, [r5, #0x14]
00350ddc  72 f5 fe eb                                      bl #0x30e3ac
00350de0  09 10 a0 e1                                      mov r1, sb
00350de4  00 80 a0 e1                                      mov r8, r0
00350de8  09 00 a0 e1                                      mov r0, sb
00350dec  de f7 fe eb                                      bl #0x30ed6c
00350df0  0a 10 a0 e1                                      mov r1, sl
00350df4  00 50 a0 e1                                      mov r5, r0
00350df8  0a 00 a0 e1                                      mov r0, sl
00350dfc  da f7 fe eb                                      bl #0x30ed6c
00350e00  00 10 a0 e1                                      mov r1, r0
00350e04  05 00 a0 e1                                      mov r0, r5
00350e08  65 f7 fe eb                                      bl #0x30eba4
00350e0c  08 10 a0 e1                                      mov r1, r8
00350e10  00 50 a0 e1                                      mov r5, r0
00350e14  08 00 a0 e1                                      mov r0, r8
00350e18  d3 f7 fe eb                                      bl #0x30ed6c
00350e1c  00 10 a0 e1                                      mov r1, r0
00350e20  05 00 a0 e1                                      mov r0, r5
00350e24  5e f7 fe eb                                      bl #0x30eba4
00350e28  9d f6 fe eb                                      bl #0x30e8a4
00350e2c  bf 34 a0 e3                                      mov r3, #0xbf000000
00350e30  00 20 a0 e3                                      mov r2, #0
00350e34  0e 36 83 e2                                      add r3, r3, #0xe00000
00350e38  1d f7 fe eb                                      bl #0x30eab4
00350e3c  00 20 a0 e1                                      mov r2, r0
00350e40  01 30 a0 e1                                      mov r3, r1
00350e44  06 00 a0 e1                                      mov r0, r6
00350e48  07 10 a0 e1                                      mov r1, r7
00350e4c  3c f7 fe eb                                      bl #0x30eb44
00350e50  f8 00 c4 e1                                      strd r0, r1, [r4, #8]
00350e54  04 00 a0 e1                                      mov r0, r4
00350e58  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
