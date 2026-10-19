; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b61bc, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv::_Pthread_alloc
; alias: _ZNSt4priv14_Pthread_alloc10deallocateEPvjPNS_31_Pthread_alloc_per_thread_stateE
; demangled: std::priv::_Pthread_alloc::deallocate(void*, unsigned int, std::priv::_Pthread_alloc_per_thread_state*)
; decoder-mode: thumb
008b61bc  10 b5                                            push {r4, lr}
008b61be  ff f7 e3 ff                                      bl #0x8b6188
008b61c2  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b64ec, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv::_Pthread_alloc
; alias: _ZNSt4priv14_Pthread_alloc23_S_get_per_thread_stateEv
; demangled: std::priv::_Pthread_alloc::_S_get_per_thread_state()
; decoder-mode: thumb
008b64ec  10 b5                                            push {r4, lr}
008b64ee  ff f7 a5 ff                                      bl #0x8b643c
008b64f2  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b651c, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv::_Pthread_alloc
; alias: _ZNSt4priv14_Pthread_alloc10deallocateEPvj
; demangled: std::priv::_Pthread_alloc::deallocate(void*, unsigned int)
; decoder-mode: thumb
008b651c  10 b5                                            push {r4, lr}
008b651e  ff f7 e9 ff                                      bl #0x8b64f4
008b6522  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b6708, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv::_Pthread_alloc
; alias: _ZNSt4priv14_Pthread_alloc8allocateERjPNS_31_Pthread_alloc_per_thread_stateE
; demangled: std::priv::_Pthread_alloc::allocate(unsigned int&, std::priv::_Pthread_alloc_per_thread_state*)
; decoder-mode: thumb
008b6708  10 b5                                            push {r4, lr}
008b670a  ff f7 d5 ff                                      bl #0x8b66b8
008b670e  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b674c, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv::_Pthread_alloc
; alias: _ZNSt4priv14_Pthread_alloc8allocateERj
; demangled: std::priv::_Pthread_alloc::allocate(unsigned int&)
; decoder-mode: thumb
008b674c  10 b5                                            push {r4, lr}
008b674e  ff f7 df ff                                      bl #0x8b6710
008b6752  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b67a8, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv::_Pthread_alloc
; alias: _ZNSt4priv14_Pthread_alloc10reallocateEPvjRj
; demangled: std::priv::_Pthread_alloc::reallocate(void*, unsigned int, unsigned int&)
; decoder-mode: thumb
008b67a8  10 b5                                            push {r4, lr}
008b67aa  ff f7 d3 ff                                      bl #0x8b6754
008b67ae  10 bd                                            pop {r4, pc}
