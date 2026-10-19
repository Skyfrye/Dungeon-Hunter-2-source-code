; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056ec98, declared_size=4, range_size=4, mode=arm
; class-group: boost::detail::sp_counted_impl_p<char>
; alias: _ZN5boost6detail17sp_counted_impl_pIcED1Ev
; demangled: boost::detail::sp_counted_impl_p<char>::~sp_counted_impl_p()
; decoder-mode: arm
0056ec98  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056ec9c, declared_size=8, range_size=8, mode=arm
; class-group: boost::detail::sp_counted_impl_p<char>
; alias: _ZN5boost6detail17sp_counted_impl_pIcE11get_deleterERKPv
; demangled: boost::detail::sp_counted_impl_p<char>::get_deleter(void* const&)
; decoder-mode: arm
0056ec9c  00 00 a0 e3                                      mov r0, #0
0056eca0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056ef28, declared_size=20, range_size=20, mode=arm
; class-group: boost::detail::sp_counted_impl_p<char>
; alias: _ZN5boost6detail17sp_counted_impl_pIcED0Ev
; demangled: boost::detail::sp_counted_impl_p<char>::~sp_counted_impl_p()
; decoder-mode: arm
0056ef28  10 40 2d e9                                      push {r4, lr}
0056ef2c  00 40 a0 e1                                      mov r4, r0
0056ef30  de 7c f6 eb                                      bl #0x30e2b0
0056ef34  04 00 a0 e1                                      mov r0, r4
0056ef38  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0056ef50, declared_size=8, range_size=8, mode=arm
; class-group: boost::detail::sp_counted_impl_p<char>
; alias: _ZN5boost6detail17sp_counted_impl_pIcE7disposeEv
; demangled: boost::detail::sp_counted_impl_p<char>::dispose()
; decoder-mode: arm
0056ef50  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0056ef54  d5 7c f6 ea                                      b #0x30e2b0
