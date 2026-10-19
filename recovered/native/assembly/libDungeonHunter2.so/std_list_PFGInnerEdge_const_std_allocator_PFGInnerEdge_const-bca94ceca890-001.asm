; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0052aaa4, declared_size=64, range_size=64, mode=arm
; class-group: std::list<PFGInnerEdge const*, std::allocator<PFGInnerEdge const*> >
; alias: _ZNSt4listIPK12PFGInnerEdgeSaIS2_EE6resizeEjRKS2_.clone.3
; demangled: std::list<PFGInnerEdge const*, std::allocator<PFGInnerEdge const*> >::resize(unsigned int, PFGInnerEdge const* const&) [clone .clone.3]
; decoder-mode: arm
0052aaa4  70 40 2d e9                                      push {r4, r5, r6, lr}
0052aaa8  00 50 a0 e1                                      mov r5, r0
0052aaac  00 00 90 e5                                      ldr r0, [r0]
0052aab0  05 00 50 e1                                      cmp r0, r5
0052aab4  09 00 00 0a                                      beq #0x52aae0
0052aab8  00 00 00 ea                                      b #0x52aac0
0052aabc  04 00 a0 e1                                      mov r0, r4
0052aac0  00 40 90 e5                                      ldr r4, [r0]
0052aac4  04 30 90 e5                                      ldr r3, [r0, #4]
0052aac8  0c 10 a0 e3                                      mov r1, #0xc
0052aacc  00 40 83 e5                                      str r4, [r3]
0052aad0  04 30 84 e5                                      str r3, [r4, #4]
0052aad4  09 79 07 eb                                      bl #0x708f00
0052aad8  04 00 55 e1                                      cmp r5, r4
0052aadc  f6 ff ff 1a                                      bne #0x52aabc
0052aae0  70 80 bd e8                                      pop {r4, r5, r6, pc}
