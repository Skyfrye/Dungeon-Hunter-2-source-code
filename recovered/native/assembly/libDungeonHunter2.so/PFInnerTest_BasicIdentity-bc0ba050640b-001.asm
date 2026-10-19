; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00525028, declared_size=20, range_size=20, mode=arm
; class-group: PFInnerTest_BasicIdentity
; alias: _ZNK25PFInnerTest_BasicIdentityclEPK12PFGInnerNode
; demangled: PFInnerTest_BasicIdentity::operator()(PFGInnerNode const*) const
; decoder-mode: arm
00525028  04 00 90 e5                                      ldr r0, [r0, #4]
0052502c  01 00 50 e1                                      cmp r0, r1
00525030  00 00 a0 13                                      movne r0, #0
00525034  01 00 a0 03                                      moveq r0, #1
00525038  1e ff 2f e1                                      bx lr

; FUNCTION 0x00525178, declared_size=16, range_size=16, mode=arm
; class-group: PFInnerTest_BasicIdentity
; alias: _ZTv0_n12_NK25PFInnerTest_BasicIdentityclEPK12PFGInnerNode
; demangled: virtual thunk to PFInnerTest_BasicIdentity::operator()(PFGInnerNode const*) const
; decoder-mode: arm
00525178  00 30 90 e5                                      ldr r3, [r0]
0052517c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00525180  03 00 80 e0                                      add r0, r0, r3
00525184  a7 ff ff ea                                      b #0x525028
