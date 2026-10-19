; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088b0b4, declared_size=80, range_size=80, mode=arm
; class-group: vox::BankXMLDef* std::vector<vox::BankXMLDef, vox::SAllocator<vox::BankXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox10BankXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE20_M_allocate_and_copyIPKS1_EEPS1_RjT_SB_
; demangled: vox::BankXMLDef* std::vector<vox::BankXMLDef, vox::SAllocator<vox::BankXMLDef, (vox::VoxMemHint)0> >::_M_allocate_and_copy<vox::BankXMLDef const*>(unsigned int&, vox::BankXMLDef const*, vox::BankXMLDef const*)
; decoder-mode: arm
0088b0b4  70 40 2d e9                                      push {r4, r5, r6, lr}
0088b0b8  00 00 91 e5                                      ldr r0, [r1]
0088b0bc  28 c0 a0 e3                                      mov ip, #0x28
0088b0c0  10 d0 4d e2                                      sub sp, sp, #0x10
0088b0c4  00 10 a0 e3                                      mov r1, #0
0088b0c8  9c 00 00 e0                                      mul r0, ip, r0
0088b0cc  02 50 a0 e1                                      mov r5, r2
0088b0d0  03 60 a0 e1                                      mov r6, r3
0088b0d4  5b 15 ea eb                                      bl #0x310648
0088b0d8  00 40 a0 e1                                      mov r4, r0
0088b0dc  00 c0 a0 e3                                      mov ip, #0
0088b0e0  06 10 a0 e1                                      mov r1, r6
0088b0e4  05 00 a0 e1                                      mov r0, r5
0088b0e8  04 20 a0 e1                                      mov r2, r4
0088b0ec  0c 30 8d e2                                      add r3, sp, #0xc
0088b0f0  00 c0 8d e5                                      str ip, [sp]
0088b0f4  c7 ff ff eb                                      bl #0x88b018
0088b0f8  04 00 a0 e1                                      mov r0, r4
0088b0fc  10 d0 8d e2                                      add sp, sp, #0x10
0088b100  70 80 bd e8                                      pop {r4, r5, r6, pc}
