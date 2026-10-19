; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00889cbc, declared_size=112, range_size=112, mode=arm
; class-group: vox::SoundXMLDef* std::vector<vox::SoundXMLDef, vox::SAllocator<vox::SoundXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox11SoundXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE20_M_allocate_and_copyIPKS1_EEPS1_RjT_SB_
; demangled: vox::SoundXMLDef* std::vector<vox::SoundXMLDef, vox::SAllocator<vox::SoundXMLDef, (vox::VoxMemHint)0> >::_M_allocate_and_copy<vox::SoundXMLDef const*>(unsigned int&, vox::SoundXMLDef const*, vox::SoundXMLDef const*)
; decoder-mode: arm
00889cbc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00889cc0  00 10 91 e5                                      ldr r1, [r1]
00889cc4  44 00 a0 e3                                      mov r0, #0x44
00889cc8  03 60 a0 e1                                      mov r6, r3
00889ccc  90 01 00 e0                                      mul r0, r0, r1
00889cd0  00 10 a0 e3                                      mov r1, #0
00889cd4  02 40 a0 e1                                      mov r4, r2
00889cd8  5a 1a ea eb                                      bl #0x310648
00889cdc  06 60 64 e0                                      rsb r6, r4, r6
00889ce0  46 31 a0 e1                                      asr r3, r6, #2
00889ce4  00 70 a0 e1                                      mov r7, r0
00889ce8  03 62 a0 e1                                      lsl r6, r3, #4
00889cec  06 60 63 e0                                      rsb r6, r3, r6
00889cf0  06 64 86 e0                                      add r6, r6, r6, lsl #8
00889cf4  06 68 86 e0                                      add r6, r6, r6, lsl #16
00889cf8  06 62 83 e0                                      add r6, r3, r6, lsl #4
00889cfc  00 00 56 e3                                      cmp r6, #0
00889d00  07 00 00 da                                      ble #0x889d24
00889d04  00 50 a0 e3                                      mov r5, #0
00889d08  05 00 87 e0                                      add r0, r7, r5
00889d0c  05 10 84 e0                                      add r1, r4, r5
00889d10  44 20 a0 e3                                      mov r2, #0x44
00889d14  d3 12 ea eb                                      bl #0x30e868
00889d18  01 60 56 e2                                      subs r6, r6, #1
00889d1c  44 50 85 e2                                      add r5, r5, #0x44
00889d20  f8 ff ff 1a                                      bne #0x889d08
00889d24  07 00 a0 e1                                      mov r0, r7
00889d28  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
