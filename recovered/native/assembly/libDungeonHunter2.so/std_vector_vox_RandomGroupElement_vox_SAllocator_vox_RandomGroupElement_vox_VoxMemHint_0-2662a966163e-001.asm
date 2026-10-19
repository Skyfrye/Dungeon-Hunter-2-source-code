; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00882d04, declared_size=144, range_size=144, mode=arm
; class-group: std::vector<vox::RandomGroupElement*, vox::SAllocator<vox::RandomGroupElement*, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIPN3vox18RandomGroupElementENS0_10SAllocatorIS2_LNS0_10VoxMemHintE0EEEE18_M_insert_overflowEPS2_RKS2_RKSt11__true_typejb.clone.1
; demangled: std::vector<vox::RandomGroupElement*, vox::SAllocator<vox::RandomGroupElement*, (vox::VoxMemHint)0> >::_M_insert_overflow(vox::RandomGroupElement**, vox::RandomGroupElement* const&, std::__true_type const&, unsigned int, bool) [clone .clone.1]
; decoder-mode: arm
00882d04  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00882d08  00 40 a0 e1                                      mov r4, r0
00882d0c  00 30 94 e5                                      ldr r3, [r4]
00882d10  04 00 90 e5                                      ldr r0, [r0, #4]
00882d14  01 60 a0 e1                                      mov r6, r1
00882d18  02 80 a0 e1                                      mov r8, r2
00882d1c  00 30 63 e0                                      rsb r3, r3, r0
00882d20  43 31 a0 e1                                      asr r3, r3, #2
00882d24  01 00 53 e3                                      cmp r3, #1
00882d28  03 70 83 20                                      addhs r7, r3, r3
00882d2c  01 70 83 32                                      addlo r7, r3, #1
00882d30  07 01 77 e3                                      cmn r7, #0xc0000001
00882d34  14 00 00 8a                                      bhi #0x882d8c
00882d38  07 00 53 e1                                      cmp r3, r7
00882d3c  07 71 a0 91                                      lslls r7, r7, #2
00882d40  11 00 00 8a                                      bhi #0x882d8c
00882d44  00 10 a0 e3                                      mov r1, #0
00882d48  07 00 a0 e1                                      mov r0, r7
00882d4c  3d 36 ea eb                                      bl #0x310648
00882d50  00 10 94 e5                                      ldr r1, [r4]
00882d54  00 50 a0 e1                                      mov r5, r0
00882d58  01 60 56 e0                                      subs r6, r6, r1
00882d5c  00 60 a0 01                                      moveq r6, r0
00882d60  02 00 00 0a                                      beq #0x882d70
00882d64  06 20 a0 e1                                      mov r2, r6
00882d68  72 2c ea eb                                      bl #0x30df38
00882d6c  06 60 80 e0                                      add r6, r0, r6
00882d70  00 30 98 e5                                      ldr r3, [r8]
00882d74  07 70 85 e0                                      add r7, r5, r7
00882d78  04 30 86 e4                                      str r3, [r6], #4
00882d7c  00 00 94 e5                                      ldr r0, [r4]
00882d80  af 35 ea eb                                      bl #0x310444
00882d84  e0 00 84 e8                                      stm r4, {r5, r6, r7}
00882d88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00882d8c  03 70 e0 e3                                      mvn r7, #3
00882d90  eb ff ff ea                                      b #0x882d44
