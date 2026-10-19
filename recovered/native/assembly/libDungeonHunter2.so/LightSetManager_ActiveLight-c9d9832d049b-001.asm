; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0040c17c, declared_size=4, range_size=4, mode=arm
; class-group: LightSetManager::ActiveLight
; alias: _ZN15LightSetManager11ActiveLightD1Ev
; demangled: LightSetManager::ActiveLight::~ActiveLight()
; decoder-mode: arm
0040c17c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0040c398, declared_size=52, range_size=52, mode=arm
; class-group: LightSetManager::ActiveLight
; alias: _ZN15LightSetManager11ActiveLightD0Ev
; demangled: LightSetManager::ActiveLight::~ActiveLight()
; decoder-mode: arm
0040c398  24 30 9f e5                                      ldr r3, [pc, #0x24]
0040c39c  24 20 9f e5                                      ldr r2, [pc, #0x24]
0040c3a0  10 40 2d e9                                      push {r4, lr}
0040c3a4  03 30 8f e0                                      add r3, pc, r3
0040c3a8  02 20 93 e7                                      ldr r2, [r3, r2]
0040c3ac  00 40 a0 e1                                      mov r4, r0
0040c3b0  08 20 82 e2                                      add r2, r2, #8
0040c3b4  00 20 80 e5                                      str r2, [r0]
0040c3b8  20 10 fc eb                                      bl #0x310440
0040c3bc  04 00 a0 e1                                      mov r0, r4
0040c3c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0040c3c4  ec 86 58 00 a0 36 00 00                          .byte 0xec, 0x86, 0x58, 0x00, 0xa0, 0x36, 0x00, 0x00
