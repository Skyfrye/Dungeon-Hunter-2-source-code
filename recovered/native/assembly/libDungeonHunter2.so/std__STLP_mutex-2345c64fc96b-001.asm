; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b617c, declared_size=12, range_size=12, mode=thumb
; class-group: std::_STLP_mutex
; alias: _ZNSt11_STLP_mutexD1Ev
; demangled: std::_STLP_mutex::~_STLP_mutex()
; decoder-mode: thumb
008b617c  10 b5                                            push {r4, lr}
008b617e  04 1c                                            adds r4, r0, #0
008b6180  58 f6 9a e2                                      blx #0x30e6b8
008b6184  20 1c                                            adds r0, r4, #0
008b6186  10 bd                                            pop {r4, pc}
