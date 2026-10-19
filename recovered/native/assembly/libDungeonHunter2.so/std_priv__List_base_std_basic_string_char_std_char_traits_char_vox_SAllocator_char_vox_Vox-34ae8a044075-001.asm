; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00893f90, declared_size=96, range_size=96, mode=arm
; class-group: std::priv::_List_base<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::SAllocator<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv10_List_baseISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS4_IS7_LS5_0EEEE5clearEv
; demangled: std::priv::_List_base<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::SAllocator<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::clear()
; decoder-mode: arm
00893f90  70 40 2d e9                                      push {r4, r5, r6, lr}
00893f94  00 40 90 e5                                      ldr r4, [r0]
00893f98  00 60 a0 e1                                      mov r6, r0
00893f9c  00 00 54 e1                                      cmp r4, r0
00893fa0  01 00 00 1a                                      bne #0x893fac
00893fa4  0e 00 00 ea                                      b #0x893fe4
00893fa8  05 40 a0 e1                                      mov r4, r5
00893fac  04 20 a0 e1                                      mov r2, r4
00893fb0  08 50 92 e4                                      ldr r5, [r2], #8
00893fb4  14 30 92 e5                                      ldr r3, [r2, #0x14]
00893fb8  02 00 53 e1                                      cmp r3, r2
00893fbc  03 00 a0 e1                                      mov r0, r3
00893fc0  02 00 00 0a                                      beq #0x893fd0
00893fc4  00 00 53 e3                                      cmp r3, #0
00893fc8  00 00 00 0a                                      beq #0x893fd0
00893fcc  1c f1 e9 eb                                      bl #0x310444
00893fd0  04 00 a0 e1                                      mov r0, r4
00893fd4  1a f1 e9 eb                                      bl #0x310444
00893fd8  06 00 55 e1                                      cmp r5, r6
00893fdc  f1 ff ff 1a                                      bne #0x893fa8
00893fe0  06 40 a0 e1                                      mov r4, r6
00893fe4  04 40 86 e5                                      str r4, [r6, #4]
00893fe8  00 40 86 e5                                      str r4, [r6]
00893fec  70 80 bd e8                                      pop {r4, r5, r6, pc}
