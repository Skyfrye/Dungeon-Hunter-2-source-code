; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008693fc, declared_size=136, range_size=136, mode=arm
; class-group: std::vector<vox::DataObj*, vox::SAllocator<vox::DataObj*, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIPN3vox7DataObjENS0_10SAllocatorIS2_LNS0_10VoxMemHintE0EEEE7reserveEj.clone.4
; demangled: std::vector<vox::DataObj*, vox::SAllocator<vox::DataObj*, (vox::VoxMemHint)0> >::reserve(unsigned int) [clone .clone.4]
; decoder-mode: arm
008693fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00869400  00 20 90 e5                                      ldr r2, [r0]
00869404  08 30 90 e5                                      ldr r3, [r0, #8]
00869408  08 d0 4d e2                                      sub sp, sp, #8
0086940c  80 10 a0 e3                                      mov r1, #0x80
00869410  03 30 62 e0                                      rsb r3, r2, r3
00869414  43 31 a0 e1                                      asr r3, r3, #2
00869418  7f 00 53 e3                                      cmp r3, #0x7f
0086941c  00 40 a0 e1                                      mov r4, r0
00869420  04 10 8d e5                                      str r1, [sp, #4]
00869424  0f 00 00 8a                                      bhi #0x869468
00869428  04 30 90 e5                                      ldr r3, [r0, #4]
0086942c  00 00 52 e3                                      cmp r2, #0
00869430  03 50 62 e0                                      rsb r5, r2, r3
00869434  45 51 a0 e1                                      asr r5, r5, #2
00869438  0c 00 00 0a                                      beq #0x869470
0086943c  04 10 8d e2                                      add r1, sp, #4
00869440  8e f5 ff eb                                      bl #0x866a80
00869444  00 60 a0 e1                                      mov r6, r0
00869448  00 00 94 e5                                      ldr r0, [r4]
0086944c  fc 9b ea eb                                      bl #0x310444
00869450  04 30 9d e5                                      ldr r3, [sp, #4]
00869454  05 51 86 e0                                      add r5, r6, r5, lsl #2
00869458  04 50 84 e5                                      str r5, [r4, #4]
0086945c  03 31 86 e0                                      add r3, r6, r3, lsl #2
00869460  08 30 84 e5                                      str r3, [r4, #8]
00869464  00 60 84 e5                                      str r6, [r4]
00869468  08 d0 8d e2                                      add sp, sp, #8
0086946c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00869470  02 10 a0 e1                                      mov r1, r2
00869474  02 0c a0 e3                                      mov r0, #0x200
00869478  72 9c ea eb                                      bl #0x310648
0086947c  00 60 a0 e1                                      mov r6, r0
00869480  f2 ff ff ea                                      b #0x869450
