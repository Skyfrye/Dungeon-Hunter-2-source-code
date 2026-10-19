; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00493a38, declared_size=60, range_size=60, mode=arm
; class-group: AnimatedFX** std::vector<AnimatedFX*, std::allocator<AnimatedFX*> >
; alias: _ZNSt6vectorIP10AnimatedFXSaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_RjT_S9_
; demangled: AnimatedFX** std::vector<AnimatedFX*, std::allocator<AnimatedFX*> >::_M_allocate_and_copy<AnimatedFX* const*>(unsigned int&, AnimatedFX* const*, AnimatedFX* const*)
; decoder-mode: arm
00493a38  70 40 2d e9                                      push {r4, r5, r6, lr}
00493a3c  08 00 80 e2                                      add r0, r0, #8
00493a40  02 40 a0 e1                                      mov r4, r2
00493a44  01 20 a0 e1                                      mov r2, r1
00493a48  00 10 91 e5                                      ldr r1, [r1]
00493a4c  03 50 a0 e1                                      mov r5, r3
00493a50  dc ff ff eb                                      bl #0x4939c8
00493a54  05 00 54 e1                                      cmp r4, r5
00493a58  00 60 a0 e1                                      mov r6, r0
00493a5c  02 00 00 0a                                      beq #0x493a6c
00493a60  04 10 a0 e1                                      mov r1, r4
00493a64  05 20 64 e0                                      rsb r2, r4, r5
00493a68  7e eb f9 eb                                      bl #0x30e868
00493a6c  06 00 a0 e1                                      mov r0, r6
00493a70  70 80 bd e8                                      pop {r4, r5, r6, pc}
