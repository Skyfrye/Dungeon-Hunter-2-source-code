; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0087121c, declared_size=88, range_size=88, mode=arm
; class-group: vox::TransitionParams* std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox16TransitionParamsENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE20_M_allocate_and_copyIPKS1_EEPS1_RjT_SB_
; demangled: vox::TransitionParams* std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >::_M_allocate_and_copy<vox::TransitionParams const*>(unsigned int&, vox::TransitionParams const*, vox::TransitionParams const*)
; decoder-mode: arm
0087121c  70 40 2d e9                                      push {r4, r5, r6, lr}
00871220  00 00 91 e5                                      ldr r0, [r1]
00871224  02 40 a0 e1                                      mov r4, r2
00871228  03 50 a0 e1                                      mov r5, r3
0087122c  05 50 64 e0                                      rsb r5, r4, r5
00871230  80 01 a0 e1                                      lsl r0, r0, #3
00871234  00 10 a0 e3                                      mov r1, #0
00871238  c5 51 a0 e1                                      asr r5, r5, #3
0087123c  01 7d ea eb                                      bl #0x310648
00871240  00 00 55 e3                                      cmp r5, #0
00871244  09 00 00 da                                      ble #0x871270
00871248  00 10 a0 e3                                      mov r1, #0
0087124c  04 20 a0 e1                                      mov r2, r4
00871250  01 c0 b2 e7                                      ldr ip, [r2, r1]!
00871254  00 30 a0 e1                                      mov r3, r0
00871258  01 50 55 e2                                      subs r5, r5, #1
0087125c  01 c0 a3 e7                                      str ip, [r3, r1]!
00871260  04 20 d2 e5                                      ldrb r2, [r2, #4]
00871264  08 10 81 e2                                      add r1, r1, #8
00871268  04 20 c3 e5                                      strb r2, [r3, #4]
0087126c  f6 ff ff 1a                                      bne #0x87124c
00871270  70 80 bd e8                                      pop {r4, r5, r6, pc}
