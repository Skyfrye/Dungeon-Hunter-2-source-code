; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004afb50, declared_size=88, range_size=88, mode=arm
; class-group: PyDataArrays::_Funcs* std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> >
; alias: _ZNSt6vectorIN12PyDataArrays6_FuncsESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_RjT_S9_
; demangled: PyDataArrays::_Funcs* std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> >::_M_allocate_and_copy<PyDataArrays::_Funcs const*>(unsigned int&, PyDataArrays::_Funcs const*, PyDataArrays::_Funcs const*)
; decoder-mode: arm
004afb50  70 40 2d e9                                      push {r4, r5, r6, lr}
004afb54  02 40 a0 e1                                      mov r4, r2
004afb58  03 50 a0 e1                                      mov r5, r3
004afb5c  05 50 64 e0                                      rsb r5, r4, r5
004afb60  01 20 a0 e1                                      mov r2, r1
004afb64  08 00 80 e2                                      add r0, r0, #8
004afb68  00 10 91 e5                                      ldr r1, [r1]
004afb6c  c5 51 a0 e1                                      asr r5, r5, #3
004afb70  da ff ff eb                                      bl #0x4afae0
004afb74  00 00 55 e3                                      cmp r5, #0
004afb78  09 00 00 da                                      ble #0x4afba4
004afb7c  00 10 a0 e3                                      mov r1, #0
004afb80  04 20 a0 e1                                      mov r2, r4
004afb84  01 c0 b2 e7                                      ldr ip, [r2, r1]!
004afb88  00 30 a0 e1                                      mov r3, r0
004afb8c  01 50 55 e2                                      subs r5, r5, #1
004afb90  01 c0 a3 e7                                      str ip, [r3, r1]!
004afb94  04 20 92 e5                                      ldr r2, [r2, #4]
004afb98  08 10 81 e2                                      add r1, r1, #8
004afb9c  04 20 83 e5                                      str r2, [r3, #4]
004afba0  f6 ff ff 1a                                      bne #0x4afb80
004afba4  70 80 bd e8                                      pop {r4, r5, r6, pc}
