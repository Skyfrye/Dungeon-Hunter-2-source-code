; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003ef17c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::ISegmentCompileCallback
; alias: _ZN6glitch5scene23ISegmentCompileCallbackD1Ev
; demangled: glitch::scene::ISegmentCompileCallback::~ISegmentCompileCallback()
; decoder-mode: arm
003ef17c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ef3c8, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::ISegmentCompileCallback
; alias: _ZN6glitch5scene23ISegmentCompileCallbackD0Ev
; demangled: glitch::scene::ISegmentCompileCallback::~ISegmentCompileCallback()
; decoder-mode: arm
003ef3c8  24 30 9f e5                                      ldr r3, [pc, #0x24]
003ef3cc  24 20 9f e5                                      ldr r2, [pc, #0x24]
003ef3d0  10 40 2d e9                                      push {r4, lr}
003ef3d4  03 30 8f e0                                      add r3, pc, r3
003ef3d8  02 20 93 e7                                      ldr r2, [r3, r2]
003ef3dc  00 40 a0 e1                                      mov r4, r0
003ef3e0  08 20 82 e2                                      add r2, r2, #8
003ef3e4  00 20 80 e5                                      str r2, [r0]
003ef3e8  14 84 fc eb                                      bl #0x310440
003ef3ec  04 00 a0 e1                                      mov r0, r4
003ef3f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003ef3f4  bc 56 5a 00 a0 1c 00 00                          .byte 0xbc, 0x56, 0x5a, 0x00, 0xa0, 0x1c, 0x00, 0x00
