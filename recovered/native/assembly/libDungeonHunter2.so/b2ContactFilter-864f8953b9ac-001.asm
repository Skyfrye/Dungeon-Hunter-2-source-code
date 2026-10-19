; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007e8c40, declared_size=4, range_size=4, mode=arm
; class-group: b2ContactFilter
; alias: _ZN15b2ContactFilterD1Ev
; demangled: b2ContactFilter::~b2ContactFilter()
; decoder-mode: arm
007e8c40  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e8c48, declared_size=84, range_size=84, mode=arm
; class-group: b2ContactFilter
; alias: _ZN15b2ContactFilter13ShouldCollideEP7b2ShapeS1_
; demangled: b2ContactFilter::ShouldCollide(b2Shape*, b2Shape*)
; decoder-mode: arm
007e8c48  b6 c2 d1 e1                                      ldrh ip, [r1, #0x26]
007e8c4c  f6 02 d2 e1                                      ldrsh r0, [r2, #0x26]
007e8c50  7c 30 bf e6                                      sxth r3, ip
007e8c54  03 00 50 e1                                      cmp r0, r3
007e8c58  09 00 00 0a                                      beq #0x7e8c84
007e8c5c  b2 02 d2 e1                                      ldrh r0, [r2, #0x22]
007e8c60  b4 32 d1 e1                                      ldrh r3, [r1, #0x24]
007e8c64  03 00 10 e0                                      ands r0, r0, r3
007e8c68  1e ff 2f 01                                      bxeq lr
007e8c6c  b4 22 d2 e1                                      ldrh r2, [r2, #0x24]
007e8c70  b2 32 d1 e1                                      ldrh r3, [r1, #0x22]
007e8c74  03 00 12 e1                                      tst r2, r3
007e8c78  00 00 a0 03                                      moveq r0, #0
007e8c7c  01 00 a0 13                                      movne r0, #1
007e8c80  1e ff 2f e1                                      bx lr
007e8c84  00 00 5c e3                                      cmp ip, #0
007e8c88  f3 ff ff 0a                                      beq #0x7e8c5c
007e8c8c  00 00 50 e3                                      cmp r0, #0
007e8c90  00 00 a0 d3                                      movle r0, #0
007e8c94  01 00 a0 c3                                      movgt r0, #1
007e8c98  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e8d24, declared_size=20, range_size=20, mode=arm
; class-group: b2ContactFilter
; alias: _ZN15b2ContactFilterD0Ev
; demangled: b2ContactFilter::~b2ContactFilter()
; decoder-mode: arm
007e8d24  10 40 2d e9                                      push {r4, lr}
007e8d28  00 40 a0 e1                                      mov r4, r0
007e8d2c  5f 95 ec eb                                      bl #0x30e2b0
007e8d30  04 00 a0 e1                                      mov r0, r4
007e8d34  10 80 bd e8                                      pop {r4, pc}
