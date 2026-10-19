; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0087159c, declared_size=60, range_size=60, mode=arm
; class-group: int* std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIiN3vox10SAllocatorIiLNS0_10VoxMemHintE0EEEE20_M_allocate_and_copyIPKiEEPiRjT_SA_
; demangled: int* std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >::_M_allocate_and_copy<int const*>(unsigned int&, int const*, int const*)
; decoder-mode: arm
0087159c  70 40 2d e9                                      push {r4, r5, r6, lr}
008715a0  00 00 91 e5                                      ldr r0, [r1]
008715a4  00 10 a0 e3                                      mov r1, #0
008715a8  02 40 a0 e1                                      mov r4, r2
008715ac  00 01 a0 e1                                      lsl r0, r0, #2
008715b0  03 60 a0 e1                                      mov r6, r3
008715b4  23 7c ea eb                                      bl #0x310648
008715b8  06 00 54 e1                                      cmp r4, r6
008715bc  00 50 a0 e1                                      mov r5, r0
008715c0  02 00 00 0a                                      beq #0x8715d0
008715c4  04 10 a0 e1                                      mov r1, r4
008715c8  06 20 64 e0                                      rsb r2, r4, r6
008715cc  a5 74 ea eb                                      bl #0x30e868
008715d0  05 00 a0 e1                                      mov r0, r5
008715d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
