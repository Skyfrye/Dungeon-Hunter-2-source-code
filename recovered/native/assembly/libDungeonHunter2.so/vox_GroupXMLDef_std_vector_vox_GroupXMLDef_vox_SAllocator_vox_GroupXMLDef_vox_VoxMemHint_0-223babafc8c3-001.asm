; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088aedc, declared_size=112, range_size=112, mode=arm
; class-group: vox::GroupXMLDef* std::vector<vox::GroupXMLDef, vox::SAllocator<vox::GroupXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox11GroupXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE20_M_allocate_and_copyIPKS1_EEPS1_RjT_SB_
; demangled: vox::GroupXMLDef* std::vector<vox::GroupXMLDef, vox::SAllocator<vox::GroupXMLDef, (vox::VoxMemHint)0> >::_M_allocate_and_copy<vox::GroupXMLDef const*>(unsigned int&, vox::GroupXMLDef const*, vox::GroupXMLDef const*)
; decoder-mode: arm
0088aedc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088aee0  00 10 91 e5                                      ldr r1, [r1]
0088aee4  38 00 a0 e3                                      mov r0, #0x38
0088aee8  02 40 a0 e1                                      mov r4, r2
0088aeec  90 01 00 e0                                      mul r0, r0, r1
0088aef0  00 10 a0 e3                                      mov r1, #0
0088aef4  03 50 a0 e1                                      mov r5, r3
0088aef8  d2 15 ea eb                                      bl #0x310648
0088aefc  05 50 64 e0                                      rsb r5, r4, r5
0088af00  c5 51 a0 e1                                      asr r5, r5, #3
0088af04  00 70 a0 e1                                      mov r7, r0
0088af08  85 61 85 e0                                      add r6, r5, r5, lsl #3
0088af0c  06 63 86 e0                                      add r6, r6, r6, lsl #6
0088af10  86 61 85 e0                                      add r6, r5, r6, lsl #3
0088af14  86 67 86 e0                                      add r6, r6, r6, lsl #15
0088af18  86 61 85 e0                                      add r6, r5, r6, lsl #3
0088af1c  00 60 66 e2                                      rsb r6, r6, #0
0088af20  00 00 56 e3                                      cmp r6, #0
0088af24  06 00 00 da                                      ble #0x88af44
0088af28  00 50 a0 e3                                      mov r5, #0
0088af2c  05 00 87 e0                                      add r0, r7, r5
0088af30  05 10 84 e0                                      add r1, r4, r5
0088af34  bc ff ff eb                                      bl #0x88ae2c
0088af38  01 60 56 e2                                      subs r6, r6, #1
0088af3c  38 50 85 e2                                      add r5, r5, #0x38
0088af40  f9 ff ff 1a                                      bne #0x88af2c
0088af44  07 00 a0 e1                                      mov r0, r7
0088af48  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
