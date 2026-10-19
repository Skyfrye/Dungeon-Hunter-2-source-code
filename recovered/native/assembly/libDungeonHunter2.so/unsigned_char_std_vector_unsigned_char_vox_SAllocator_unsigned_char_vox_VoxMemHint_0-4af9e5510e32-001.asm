; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00866924, declared_size=60, range_size=60, mode=arm
; class-group: unsigned char** std::vector<unsigned char*, vox::SAllocator<unsigned char*, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIPhN3vox10SAllocatorIS0_LNS1_10VoxMemHintE0EEEE20_M_allocate_and_copyIPS0_EES7_RjT_S9_
; demangled: unsigned char** std::vector<unsigned char*, vox::SAllocator<unsigned char*, (vox::VoxMemHint)0> >::_M_allocate_and_copy<unsigned char**>(unsigned int&, unsigned char**, unsigned char**)
; decoder-mode: arm
00866924  70 40 2d e9                                      push {r4, r5, r6, lr}
00866928  00 00 91 e5                                      ldr r0, [r1]
0086692c  00 10 a0 e3                                      mov r1, #0
00866930  02 40 a0 e1                                      mov r4, r2
00866934  00 01 a0 e1                                      lsl r0, r0, #2
00866938  03 60 a0 e1                                      mov r6, r3
0086693c  41 a7 ea eb                                      bl #0x310648
00866940  06 00 54 e1                                      cmp r4, r6
00866944  00 50 a0 e1                                      mov r5, r0
00866948  02 00 00 0a                                      beq #0x866958
0086694c  04 10 a0 e1                                      mov r1, r4
00866950  06 20 64 e0                                      rsb r2, r4, r6
00866954  c3 9f ea eb                                      bl #0x30e868
00866958  05 00 a0 e1                                      mov r0, r5
0086695c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00866a08, declared_size=60, range_size=60, mode=arm
; class-group: unsigned char** std::vector<unsigned char*, vox::SAllocator<unsigned char*, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIPhN3vox10SAllocatorIS0_LNS1_10VoxMemHintE0EEEE20_M_allocate_and_copyIPKS0_EEPS0_RjT_SB_
; demangled: unsigned char** std::vector<unsigned char*, vox::SAllocator<unsigned char*, (vox::VoxMemHint)0> >::_M_allocate_and_copy<unsigned char* const*>(unsigned int&, unsigned char* const*, unsigned char* const*)
; decoder-mode: arm
00866a08  70 40 2d e9                                      push {r4, r5, r6, lr}
00866a0c  00 00 91 e5                                      ldr r0, [r1]
00866a10  00 10 a0 e3                                      mov r1, #0
00866a14  02 40 a0 e1                                      mov r4, r2
00866a18  00 01 a0 e1                                      lsl r0, r0, #2
00866a1c  03 60 a0 e1                                      mov r6, r3
00866a20  08 a7 ea eb                                      bl #0x310648
00866a24  06 00 54 e1                                      cmp r4, r6
00866a28  00 50 a0 e1                                      mov r5, r0
00866a2c  02 00 00 0a                                      beq #0x866a3c
00866a30  04 10 a0 e1                                      mov r1, r4
00866a34  06 20 64 e0                                      rsb r2, r4, r6
00866a38  8a 9f ea eb                                      bl #0x30e868
00866a3c  05 00 a0 e1                                      mov r0, r5
00866a40  70 80 bd e8                                      pop {r4, r5, r6, pc}
