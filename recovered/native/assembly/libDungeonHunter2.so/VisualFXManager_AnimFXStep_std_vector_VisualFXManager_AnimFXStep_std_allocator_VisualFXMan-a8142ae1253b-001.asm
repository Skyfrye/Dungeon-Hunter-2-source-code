; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0049398c, declared_size=60, range_size=60, mode=arm
; class-group: VisualFXManager::AnimFXStep** std::vector<VisualFXManager::AnimFXStep*, std::allocator<VisualFXManager::AnimFXStep*> >
; alias: _ZNSt6vectorIPN15VisualFXManager10AnimFXStepESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_RjT_SA_
; demangled: VisualFXManager::AnimFXStep** std::vector<VisualFXManager::AnimFXStep*, std::allocator<VisualFXManager::AnimFXStep*> >::_M_allocate_and_copy<VisualFXManager::AnimFXStep* const*>(unsigned int&, VisualFXManager::AnimFXStep* const*, VisualFXManager::AnimFXStep* const*)
; decoder-mode: arm
0049398c  70 40 2d e9                                      push {r4, r5, r6, lr}
00493990  08 00 80 e2                                      add r0, r0, #8
00493994  02 40 a0 e1                                      mov r4, r2
00493998  01 20 a0 e1                                      mov r2, r1
0049399c  00 10 91 e5                                      ldr r1, [r1]
004939a0  03 50 a0 e1                                      mov r5, r3
004939a4  a2 ff ff eb                                      bl #0x493834
004939a8  05 00 54 e1                                      cmp r4, r5
004939ac  00 60 a0 e1                                      mov r6, r0
004939b0  02 00 00 0a                                      beq #0x4939c0
004939b4  04 10 a0 e1                                      mov r1, r4
004939b8  05 20 64 e0                                      rsb r2, r4, r5
004939bc  a9 eb f9 eb                                      bl #0x30e868
004939c0  06 00 a0 e1                                      mov r0, r6
004939c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
