; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008641d0, declared_size=80, range_size=80, mode=arm
; class-group: vox::PriorityBank* std::vector<vox::PriorityBank, vox::SAllocator<vox::PriorityBank, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox12PriorityBankENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE20_M_allocate_and_copyIPS1_EES7_RjT_S9_
; demangled: vox::PriorityBank* std::vector<vox::PriorityBank, vox::SAllocator<vox::PriorityBank, (vox::VoxMemHint)0> >::_M_allocate_and_copy<vox::PriorityBank*>(unsigned int&, vox::PriorityBank*, vox::PriorityBank*)
; decoder-mode: arm
008641d0  70 40 2d e9                                      push {r4, r5, r6, lr}
008641d4  00 00 91 e5                                      ldr r0, [r1]
008641d8  18 c0 a0 e3                                      mov ip, #0x18
008641dc  10 d0 4d e2                                      sub sp, sp, #0x10
008641e0  00 10 a0 e3                                      mov r1, #0
008641e4  9c 00 00 e0                                      mul r0, ip, r0
008641e8  02 50 a0 e1                                      mov r5, r2
008641ec  03 60 a0 e1                                      mov r6, r3
008641f0  14 b1 ea eb                                      bl #0x310648
008641f4  00 40 a0 e1                                      mov r4, r0
008641f8  00 c0 a0 e3                                      mov ip, #0
008641fc  06 10 a0 e1                                      mov r1, r6
00864200  05 00 a0 e1                                      mov r0, r5
00864204  04 20 a0 e1                                      mov r2, r4
00864208  0c 30 8d e2                                      add r3, sp, #0xc
0086420c  00 c0 8d e5                                      str ip, [sp]
00864210  0f ff ff eb                                      bl #0x863e54
00864214  04 00 a0 e1                                      mov r0, r4
00864218  10 d0 8d e2                                      add sp, sp, #0x10
0086421c  70 80 bd e8                                      pop {r4, r5, r6, pc}
