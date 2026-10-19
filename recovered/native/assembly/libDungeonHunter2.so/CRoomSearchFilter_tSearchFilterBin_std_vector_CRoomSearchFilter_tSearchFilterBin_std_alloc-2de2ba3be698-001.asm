; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008197bc, declared_size=112, range_size=112, mode=arm
; class-group: CRoomSearchFilter::tSearchFilterBin* std::vector<CRoomSearchFilter::tSearchFilterBin, std::allocator<CRoomSearchFilter::tSearchFilterBin> >
; alias: _ZNSt6vectorIN17CRoomSearchFilter16tSearchFilterBinESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_RjT_S9_
; demangled: CRoomSearchFilter::tSearchFilterBin* std::vector<CRoomSearchFilter::tSearchFilterBin, std::allocator<CRoomSearchFilter::tSearchFilterBin> >::_M_allocate_and_copy<CRoomSearchFilter::tSearchFilterBin const*>(unsigned int&, CRoomSearchFilter::tSearchFilterBin const*, CRoomSearchFilter::tSearchFilterBin const*)
; decoder-mode: arm
008197bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008197c0  08 00 80 e2                                      add r0, r0, #8
008197c4  02 40 a0 e1                                      mov r4, r2
008197c8  01 20 a0 e1                                      mov r2, r1
008197cc  00 10 91 e5                                      ldr r1, [r1]
008197d0  03 50 a0 e1                                      mov r5, r3
008197d4  d5 ff ff eb                                      bl #0x819730
008197d8  05 60 64 e0                                      rsb r6, r4, r5
008197dc  46 61 a0 e1                                      asr r6, r6, #2
008197e0  00 70 a0 e1                                      mov r7, r0
008197e4  86 60 86 e0                                      add r6, r6, r6, lsl #1
008197e8  86 61 86 e0                                      add r6, r6, r6, lsl #3
008197ec  86 34 a0 e1                                      lsl r3, r6, #9
008197f0  03 60 66 e0                                      rsb r6, r6, r3
008197f4  06 69 86 e0                                      add r6, r6, r6, lsl #18
008197f8  00 60 66 e2                                      rsb r6, r6, #0
008197fc  00 00 56 e3                                      cmp r6, #0
00819800  07 00 00 da                                      ble #0x819824
00819804  00 50 a0 e3                                      mov r5, #0
00819808  05 00 87 e0                                      add r0, r7, r5
0081980c  05 10 84 e0                                      add r1, r4, r5
00819810  4c 20 a0 e3                                      mov r2, #0x4c
00819814  13 d4 eb eb                                      bl #0x30e868
00819818  01 60 56 e2                                      subs r6, r6, #1
0081981c  4c 50 85 e2                                      add r5, r5, #0x4c
00819820  f8 ff ff 1a                                      bne #0x819808
00819824  07 00 a0 e1                                      mov r0, r7
00819828  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
