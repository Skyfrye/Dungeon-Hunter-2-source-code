; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a52c8, declared_size=14, range_size=14, mode=thumb
; class-group: std::_Refcount_Base
; alias: _ZNSt14_Refcount_BaseD1Ev
; demangled: std::_Refcount_Base::~_Refcount_Base()
; decoder-mode: thumb
008a52c8  10 b5                                            push {r4, lr}
008a52ca  04 1c                                            adds r4, r0, #0
008a52cc  04 30                                            adds r0, #4
008a52ce  69 f6 f4 e1                                      blx #0x30e6b8
008a52d2  20 1c                                            adds r0, r4, #0
008a52d4  10 bd                                            pop {r4, pc}
