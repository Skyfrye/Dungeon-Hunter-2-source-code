; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00883b74, declared_size=144, range_size=144, mode=arm
; class-group: std::vector<vox::SegmentGroup*, vox::SAllocator<vox::SegmentGroup*, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIPN3vox12SegmentGroupENS0_10SAllocatorIS2_LNS0_10VoxMemHintE0EEEE18_M_insert_overflowEPS2_RKS2_RKSt11__true_typejb.clone.5
; demangled: std::vector<vox::SegmentGroup*, vox::SAllocator<vox::SegmentGroup*, (vox::VoxMemHint)0> >::_M_insert_overflow(vox::SegmentGroup**, vox::SegmentGroup* const&, std::__true_type const&, unsigned int, bool) [clone .clone.5]
; decoder-mode: arm
00883b74  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00883b78  00 40 a0 e1                                      mov r4, r0
00883b7c  00 30 94 e5                                      ldr r3, [r4]
00883b80  04 00 90 e5                                      ldr r0, [r0, #4]
00883b84  01 60 a0 e1                                      mov r6, r1
00883b88  02 80 a0 e1                                      mov r8, r2
00883b8c  00 30 63 e0                                      rsb r3, r3, r0
00883b90  43 31 a0 e1                                      asr r3, r3, #2
00883b94  01 00 53 e3                                      cmp r3, #1
00883b98  03 70 83 20                                      addhs r7, r3, r3
00883b9c  01 70 83 32                                      addlo r7, r3, #1
00883ba0  07 01 77 e3                                      cmn r7, #0xc0000001
00883ba4  14 00 00 8a                                      bhi #0x883bfc
00883ba8  07 00 53 e1                                      cmp r3, r7
00883bac  07 71 a0 91                                      lslls r7, r7, #2
00883bb0  11 00 00 8a                                      bhi #0x883bfc
00883bb4  00 10 a0 e3                                      mov r1, #0
00883bb8  07 00 a0 e1                                      mov r0, r7
00883bbc  a1 32 ea eb                                      bl #0x310648
00883bc0  00 10 94 e5                                      ldr r1, [r4]
00883bc4  00 50 a0 e1                                      mov r5, r0
00883bc8  01 60 56 e0                                      subs r6, r6, r1
00883bcc  00 60 a0 01                                      moveq r6, r0
00883bd0  02 00 00 0a                                      beq #0x883be0
00883bd4  06 20 a0 e1                                      mov r2, r6
00883bd8  d6 28 ea eb                                      bl #0x30df38
00883bdc  06 60 80 e0                                      add r6, r0, r6
00883be0  00 30 98 e5                                      ldr r3, [r8]
00883be4  07 70 85 e0                                      add r7, r5, r7
00883be8  04 30 86 e4                                      str r3, [r6], #4
00883bec  00 00 94 e5                                      ldr r0, [r4]
00883bf0  13 32 ea eb                                      bl #0x310444
00883bf4  e0 00 84 e8                                      stm r4, {r5, r6, r7}
00883bf8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00883bfc  03 70 e0 e3                                      mvn r7, #3
00883c00  eb ff ff ea                                      b #0x883bb4
