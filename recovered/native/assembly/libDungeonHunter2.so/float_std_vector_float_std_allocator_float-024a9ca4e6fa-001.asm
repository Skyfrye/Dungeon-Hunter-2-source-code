; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00310e7c, declared_size=60, range_size=60, mode=arm
; class-group: float* std::vector<float, std::allocator<float> >
; alias: _ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIPfEES3_RjT_S5_
; demangled: float* std::vector<float, std::allocator<float> >::_M_allocate_and_copy<float*>(unsigned int&, float*, float*)
; decoder-mode: arm
00310e7c  70 40 2d e9                                      push {r4, r5, r6, lr}
00310e80  08 00 80 e2                                      add r0, r0, #8
00310e84  02 40 a0 e1                                      mov r4, r2
00310e88  01 20 a0 e1                                      mov r2, r1
00310e8c  00 10 91 e5                                      ldr r1, [r1]
00310e90  03 50 a0 e1                                      mov r5, r3
00310e94  bd ff ff eb                                      bl #0x310d90
00310e98  05 00 54 e1                                      cmp r4, r5
00310e9c  00 60 a0 e1                                      mov r6, r0
00310ea0  02 00 00 0a                                      beq #0x310eb0
00310ea4  04 10 a0 e1                                      mov r1, r4
00310ea8  05 20 64 e0                                      rsb r2, r4, r5
00310eac  6d f6 ff eb                                      bl #0x30e868
00310eb0  06 00 a0 e1                                      mov r0, r6
00310eb4  70 80 bd e8                                      pop {r4, r5, r6, pc}
