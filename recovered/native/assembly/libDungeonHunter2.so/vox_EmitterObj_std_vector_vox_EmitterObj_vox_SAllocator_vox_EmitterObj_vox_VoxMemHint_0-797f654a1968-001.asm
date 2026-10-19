; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00866a44, declared_size=60, range_size=60, mode=arm
; class-group: vox::EmitterObj** std::vector<vox::EmitterObj*, vox::SAllocator<vox::EmitterObj*, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIPN3vox10EmitterObjENS0_10SAllocatorIS2_LNS0_10VoxMemHintE0EEEE20_M_allocate_and_copyIPS2_EES8_RjT_SA_
; demangled: vox::EmitterObj** std::vector<vox::EmitterObj*, vox::SAllocator<vox::EmitterObj*, (vox::VoxMemHint)0> >::_M_allocate_and_copy<vox::EmitterObj**>(unsigned int&, vox::EmitterObj**, vox::EmitterObj**)
; decoder-mode: arm
00866a44  70 40 2d e9                                      push {r4, r5, r6, lr}
00866a48  00 00 91 e5                                      ldr r0, [r1]
00866a4c  00 10 a0 e3                                      mov r1, #0
00866a50  02 40 a0 e1                                      mov r4, r2
00866a54  00 01 a0 e1                                      lsl r0, r0, #2
00866a58  03 60 a0 e1                                      mov r6, r3
00866a5c  f9 a6 ea eb                                      bl #0x310648
00866a60  06 00 54 e1                                      cmp r4, r6
00866a64  00 50 a0 e1                                      mov r5, r0
00866a68  02 00 00 0a                                      beq #0x866a78
00866a6c  04 10 a0 e1                                      mov r1, r4
00866a70  06 20 64 e0                                      rsb r2, r4, r6
00866a74  7b 9f ea eb                                      bl #0x30e868
00866a78  05 00 a0 e1                                      mov r0, r5
00866a7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
