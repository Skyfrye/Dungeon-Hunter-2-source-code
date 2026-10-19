; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00866a80, declared_size=60, range_size=60, mode=arm
; class-group: vox::DataObj** std::vector<vox::DataObj*, vox::SAllocator<vox::DataObj*, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIPN3vox7DataObjENS0_10SAllocatorIS2_LNS0_10VoxMemHintE0EEEE20_M_allocate_and_copyIPS2_EES8_RjT_SA_
; demangled: vox::DataObj** std::vector<vox::DataObj*, vox::SAllocator<vox::DataObj*, (vox::VoxMemHint)0> >::_M_allocate_and_copy<vox::DataObj**>(unsigned int&, vox::DataObj**, vox::DataObj**)
; decoder-mode: arm
00866a80  70 40 2d e9                                      push {r4, r5, r6, lr}
00866a84  00 00 91 e5                                      ldr r0, [r1]
00866a88  00 10 a0 e3                                      mov r1, #0
00866a8c  02 40 a0 e1                                      mov r4, r2
00866a90  00 01 a0 e1                                      lsl r0, r0, #2
00866a94  03 60 a0 e1                                      mov r6, r3
00866a98  ea a6 ea eb                                      bl #0x310648
00866a9c  06 00 54 e1                                      cmp r4, r6
00866aa0  00 50 a0 e1                                      mov r5, r0
00866aa4  02 00 00 0a                                      beq #0x866ab4
00866aa8  04 10 a0 e1                                      mov r1, r4
00866aac  06 20 64 e0                                      rsb r2, r4, r6
00866ab0  6c 9f ea eb                                      bl #0x30e868
00866ab4  05 00 a0 e1                                      mov r0, r5
00866ab8  70 80 bd e8                                      pop {r4, r5, r6, pc}
