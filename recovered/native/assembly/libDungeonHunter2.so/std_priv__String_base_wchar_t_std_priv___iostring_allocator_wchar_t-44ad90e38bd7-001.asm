; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a5a50, declared_size=50, range_size=50, mode=thumb
; class-group: std::priv::_String_base<wchar_t, std::priv::__iostring_allocator<wchar_t> >
; alias: _ZNSt4priv12_String_baseIwNS_20__iostring_allocatorIwEEE19_M_deallocate_blockEv
; demangled: std::priv::_String_base<wchar_t, std::priv::__iostring_allocator<wchar_t> >::_M_deallocate_block()
; decoder-mode: thumb
008a5a50  10 b5                                            push {r4, lr}
008a5a52  89 23                                            movs r3, #0x89
008a5a54  db 00                                            lsls r3, r3, #3
008a5a56  c3 58                                            ldr r3, [r0, r3]
008a5a58  83 42                                            cmp r3, r0
008a5a5a  0d d0                                            beq #0x8a5a78
008a5a5c  00 2b                                            cmp r3, #0
008a5a5e  0b d0                                            beq #0x8a5a78
008a5a60  01 68                                            ldr r1, [r0]
008a5a62  44 30                                            adds r0, #0x44
008a5a64  83 42                                            cmp r3, r0
008a5a66  07 d0                                            beq #0x8a5a78
008a5a68  c9 1a                                            subs r1, r1, r3
008a5a6a  89 10                                            asrs r1, r1, #2
008a5a6c  89 00                                            lsls r1, r1, #2
008a5a6e  80 29                                            cmp r1, #0x80
008a5a70  03 d8                                            bhi #0x8a5a7a
008a5a72  18 1c                                            adds r0, r3, #0
008a5a74  10 f0 f2 fb                                      bl #0x8b625c
008a5a78  10 bd                                            pop {r4, pc}
008a5a7a  18 1c                                            adds r0, r3, #0
008a5a7c  68 f6 18 e4                                      blx #0x30e2b0
008a5a80  fa e7                                            b #0x8a5a78

; FUNCTION 0x008a5da8, declared_size=22, range_size=22, mode=thumb
; class-group: std::priv::_String_base<wchar_t, std::priv::__iostring_allocator<wchar_t> >
; alias: _ZNSt4priv12_String_baseIwNS_20__iostring_allocatorIwEEE17_M_allocate_blockEj.clone.16
; demangled: std::priv::_String_base<wchar_t, std::priv::__iostring_allocator<wchar_t> >::_M_allocate_block(unsigned int) [clone .clone.16]
; decoder-mode: thumb
008a5da8  02 1c                                            adds r2, r0, #0
008a5daa  89 23                                            movs r3, #0x89
008a5dac  44 32                                            adds r2, #0x44
008a5dae  db 00                                            lsls r3, r3, #3
008a5db0  c2 50                                            str r2, [r0, r3]
008a5db2  02 64                                            str r2, [r0, #0x40]
008a5db4  89 22                                            movs r2, #0x89
008a5db6  d2 00                                            lsls r2, r2, #3
008a5db8  83 18                                            adds r3, r0, r2
008a5dba  03 60                                            str r3, [r0]
008a5dbc  70 47                                            bx lr
