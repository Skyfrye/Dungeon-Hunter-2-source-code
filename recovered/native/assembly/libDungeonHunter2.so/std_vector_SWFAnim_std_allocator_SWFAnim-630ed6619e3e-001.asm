; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004976fc, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<SWFAnim*, std::allocator<SWFAnim*> >
; alias: _ZNSt6vectorIP7SWFAnimSaIS1_EEC2ERKS3_
; demangled: std::vector<SWFAnim*, std::allocator<SWFAnim*> >::vector(std::vector<SWFAnim*, std::allocator<SWFAnim*> > const&)
; decoder-mode: arm
004976fc  30 40 2d e9                                      push {r4, r5, lr}
00497700  01 50 a0 e1                                      mov r5, r1
00497704  00 30 95 e5                                      ldr r3, [r5]
00497708  04 10 91 e5                                      ldr r1, [r1, #4]
0049770c  0c d0 4d e2                                      sub sp, sp, #0xc
00497710  00 40 a0 e1                                      mov r4, r0
00497714  01 10 63 e0                                      rsb r1, r3, r1
00497718  00 c0 a0 e3                                      mov ip, #0
0049771c  41 11 a0 e1                                      asr r1, r1, #2
00497720  08 20 8d e2                                      add r2, sp, #8
00497724  04 10 22 e5                                      str r1, [r2, #-4]!
00497728  00 c0 84 e5                                      str ip, [r4]
0049772c  04 c0 84 e5                                      str ip, [r4, #4]
00497730  08 c0 a0 e5                                      str ip, [r0, #8]!
00497734  d4 ff ff eb                                      bl #0x49768c
00497738  04 20 9d e5                                      ldr r2, [sp, #4]
0049773c  00 00 84 e5                                      str r0, [r4]
00497740  04 00 84 e5                                      str r0, [r4, #4]
00497744  02 21 80 e0                                      add r2, r0, r2, lsl #2
00497748  08 20 84 e5                                      str r2, [r4, #8]
0049774c  06 00 95 e8                                      ldm r5, {r1, r2}
00497750  00 30 a0 e1                                      mov r3, r0
00497754  02 00 51 e1                                      cmp r1, r2
00497758  03 00 00 0a                                      beq #0x49776c
0049775c  02 50 61 e0                                      rsb r5, r1, r2
00497760  05 20 a0 e1                                      mov r2, r5
00497764  3f dc f9 eb                                      bl #0x30e868
00497768  05 30 80 e0                                      add r3, r0, r5
0049776c  04 30 84 e5                                      str r3, [r4, #4]
00497770  04 00 a0 e1                                      mov r0, r4
00497774  0c d0 8d e2                                      add sp, sp, #0xc
00497778  30 80 bd e8                                      pop {r4, r5, pc}
