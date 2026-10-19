; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0040c178, declared_size=4, range_size=4, mode=arm
; class-group: LightSetManager::StaticLight
; alias: _ZN15LightSetManager11StaticLightD1Ev
; demangled: LightSetManager::StaticLight::~StaticLight()
; decoder-mode: arm
0040c178  1e ff 2f e1                                      bx lr

; FUNCTION 0x0040c364, declared_size=52, range_size=52, mode=arm
; class-group: LightSetManager::StaticLight
; alias: _ZN15LightSetManager11StaticLightD0Ev
; demangled: LightSetManager::StaticLight::~StaticLight()
; decoder-mode: arm
0040c364  24 30 9f e5                                      ldr r3, [pc, #0x24]
0040c368  24 20 9f e5                                      ldr r2, [pc, #0x24]
0040c36c  10 40 2d e9                                      push {r4, lr}
0040c370  03 30 8f e0                                      add r3, pc, r3
0040c374  02 20 93 e7                                      ldr r2, [r3, r2]
0040c378  00 40 a0 e1                                      mov r4, r0
0040c37c  08 20 82 e2                                      add r2, r2, #8
0040c380  00 20 80 e5                                      str r2, [r0]
0040c384  2d 10 fc eb                                      bl #0x310440
0040c388  04 00 a0 e1                                      mov r0, r4
0040c38c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0040c390  20 87 58 00 b8 44 00 00                          .byte 0x20, 0x87, 0x58, 0x00, 0xb8, 0x44, 0x00, 0x00
