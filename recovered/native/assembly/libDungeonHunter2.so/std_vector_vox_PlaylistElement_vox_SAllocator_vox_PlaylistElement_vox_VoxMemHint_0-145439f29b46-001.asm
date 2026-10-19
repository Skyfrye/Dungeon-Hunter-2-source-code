; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088375c, declared_size=144, range_size=144, mode=arm
; class-group: std::vector<vox::PlaylistElement*, vox::SAllocator<vox::PlaylistElement*, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIPN3vox15PlaylistElementENS0_10SAllocatorIS2_LNS0_10VoxMemHintE0EEEE18_M_insert_overflowEPS2_RKS2_RKSt11__true_typejb.clone.2
; demangled: std::vector<vox::PlaylistElement*, vox::SAllocator<vox::PlaylistElement*, (vox::VoxMemHint)0> >::_M_insert_overflow(vox::PlaylistElement**, vox::PlaylistElement* const&, std::__true_type const&, unsigned int, bool) [clone .clone.2]
; decoder-mode: arm
0088375c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00883760  00 40 a0 e1                                      mov r4, r0
00883764  00 30 94 e5                                      ldr r3, [r4]
00883768  04 00 90 e5                                      ldr r0, [r0, #4]
0088376c  01 60 a0 e1                                      mov r6, r1
00883770  02 80 a0 e1                                      mov r8, r2
00883774  00 30 63 e0                                      rsb r3, r3, r0
00883778  43 31 a0 e1                                      asr r3, r3, #2
0088377c  01 00 53 e3                                      cmp r3, #1
00883780  03 70 83 20                                      addhs r7, r3, r3
00883784  01 70 83 32                                      addlo r7, r3, #1
00883788  07 01 77 e3                                      cmn r7, #0xc0000001
0088378c  14 00 00 8a                                      bhi #0x8837e4
00883790  07 00 53 e1                                      cmp r3, r7
00883794  07 71 a0 91                                      lslls r7, r7, #2
00883798  11 00 00 8a                                      bhi #0x8837e4
0088379c  00 10 a0 e3                                      mov r1, #0
008837a0  07 00 a0 e1                                      mov r0, r7
008837a4  a7 33 ea eb                                      bl #0x310648
008837a8  00 10 94 e5                                      ldr r1, [r4]
008837ac  00 50 a0 e1                                      mov r5, r0
008837b0  01 60 56 e0                                      subs r6, r6, r1
008837b4  00 60 a0 01                                      moveq r6, r0
008837b8  02 00 00 0a                                      beq #0x8837c8
008837bc  06 20 a0 e1                                      mov r2, r6
008837c0  dc 29 ea eb                                      bl #0x30df38
008837c4  06 60 80 e0                                      add r6, r0, r6
008837c8  00 30 98 e5                                      ldr r3, [r8]
008837cc  07 70 85 e0                                      add r7, r5, r7
008837d0  04 30 86 e4                                      str r3, [r6], #4
008837d4  00 00 94 e5                                      ldr r0, [r4]
008837d8  19 33 ea eb                                      bl #0x310444
008837dc  e0 00 84 e8                                      stm r4, {r5, r6, r7}
008837e0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008837e4  03 70 e0 e3                                      mvn r7, #3
008837e8  eb ff ff ea                                      b #0x88379c
