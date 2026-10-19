; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056eb68, declared_size=4, range_size=4, mode=arm
; class-group: boost::detail
; alias: _ZN5boost6detail26sp_enable_shared_from_thisEz
; demangled: boost::detail::sp_enable_shared_from_this(...)
; decoder-mode: arm
0056eb68  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056ee34, declared_size=72, range_size=72, mode=arm
; class-group: boost::detail
; alias: _ZN5boost6detail5yieldEj
; demangled: boost::detail::yield(unsigned int)
; decoder-mode: arm
0056ee34  04 e0 2d e5                                      str lr, [sp, #-4]!
0056ee38  03 00 50 e3                                      cmp r0, #3
0056ee3c  0c d0 4d e2                                      sub sp, sp, #0xc
0056ee40  04 00 00 9a                                      bls #0x56ee58
0056ee44  1f 00 50 e3                                      cmp r0, #0x1f
0056ee48  01 00 00 9a                                      bls #0x56ee54
0056ee4c  01 30 10 e2                                      ands r3, r0, #1
0056ee50  02 00 00 0a                                      beq #0x56ee60
0056ee54  8b 7c f6 eb                                      bl #0x30e088
0056ee58  0c d0 8d e2                                      add sp, sp, #0xc
0056ee5c  00 80 bd e8                                      ldm sp!, {pc}
0056ee60  fa 2f a0 e3                                      mov r2, #0x3e8
0056ee64  03 10 a0 e1                                      mov r1, r3
0056ee68  0d 00 a0 e1                                      mov r0, sp
0056ee6c  04 20 8d e5                                      str r2, [sp, #4]
0056ee70  00 30 8d e5                                      str r3, [sp]
0056ee74  33 7e f6 eb                                      bl #0x30e748
0056ee78  f6 ff ff ea                                      b #0x56ee58
