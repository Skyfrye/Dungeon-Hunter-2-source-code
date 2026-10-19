; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00350c7c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttributeExchangingObject
; alias: _ZNK6glitch2io26IAttributeExchangingObject19serializeAttributesEPNS0_11IAttributesEPNS0_26SAttributeReadWriteOptionsE
; demangled: glitch::io::IAttributeExchangingObject::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00350c7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00350c80, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttributeExchangingObject
; alias: _ZN6glitch2io26IAttributeExchangingObject21deserializeAttributesEPNS0_11IAttributesEPNS0_26SAttributeReadWriteOptionsE
; demangled: glitch::io::IAttributeExchangingObject::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00350c80  1e ff 2f e1                                      bx lr

; FUNCTION 0x00350c84, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttributeExchangingObject
; alias: _ZN6glitch2io26IAttributeExchangingObjectD1Ev
; demangled: glitch::io::IAttributeExchangingObject::~IAttributeExchangingObject()
; decoder-mode: arm
00350c84  1e ff 2f e1                                      bx lr

; FUNCTION 0x00350c88, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::IAttributeExchangingObject
; alias: _ZTv0_n12_N6glitch2io26IAttributeExchangingObjectD1Ev
; demangled: virtual thunk to glitch::io::IAttributeExchangingObject::~IAttributeExchangingObject()
; decoder-mode: arm
00350c88  00 30 90 e5                                      ldr r3, [r0]
00350c8c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00350c90  03 00 80 e0                                      add r0, r0, r3
00350c94  fa ff ff ea                                      b #0x350c84

; FUNCTION 0x003516cc, declared_size=68, range_size=68, mode=arm
; class-group: glitch::io::IAttributeExchangingObject
; alias: _ZN6glitch2io26IAttributeExchangingObjectD0Ev
; demangled: glitch::io::IAttributeExchangingObject::~IAttributeExchangingObject()
; decoder-mode: arm
003516cc  30 30 9f e5                                      ldr r3, [pc, #0x30]
003516d0  30 10 9f e5                                      ldr r1, [pc, #0x30]
003516d4  30 20 9f e5                                      ldr r2, [pc, #0x30]
003516d8  03 30 8f e0                                      add r3, pc, r3
003516dc  01 10 93 e7                                      ldr r1, [r3, r1]
003516e0  02 20 93 e7                                      ldr r2, [r3, r2]
003516e4  10 40 2d e9                                      push {r4, lr}
003516e8  0c 10 81 e2                                      add r1, r1, #0xc
003516ec  08 20 82 e2                                      add r2, r2, #8
003516f0  00 40 a0 e1                                      mov r4, r0
003516f4  06 00 80 e8                                      stm r0, {r1, r2}
003516f8  50 fb fe eb                                      bl #0x310440
003516fc  04 00 a0 e1                                      mov r0, r4
00351700  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00351704  b8 33 64 00 38 29 00 00 44 2b 00 00              .byte 0xb8, 0x33, 0x64, 0x00, 0x38, 0x29, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00

; FUNCTION 0x00351710, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::IAttributeExchangingObject
; alias: _ZTv0_n12_N6glitch2io26IAttributeExchangingObjectD0Ev
; demangled: virtual thunk to glitch::io::IAttributeExchangingObject::~IAttributeExchangingObject()
; decoder-mode: arm
00351710  00 30 90 e5                                      ldr r3, [r0]
00351714  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00351718  03 00 80 e0                                      add r0, r0, r3
0035171c  ea ff ff ea                                      b #0x3516cc
