; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000a69f0, declared_size=4, range_size=4, mode=thumb
; class-group: s_number
; alias: _ZNK8s_number9is_numberEv
; demangled: s_number::is_number() const
; decoder-mode: thumb
000a69f0  01 20                                            movs r0, #1
000a69f2  70 47                                            bx lr
