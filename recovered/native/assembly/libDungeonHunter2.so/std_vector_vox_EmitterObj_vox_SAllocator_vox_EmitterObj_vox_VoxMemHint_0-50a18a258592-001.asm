; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00869374, declared_size=136, range_size=136, mode=arm
; class-group: std::vector<vox::EmitterObj*, vox::SAllocator<vox::EmitterObj*, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIPN3vox10EmitterObjENS0_10SAllocatorIS2_LNS0_10VoxMemHintE0EEEE7reserveEj.clone.3
; demangled: std::vector<vox::EmitterObj*, vox::SAllocator<vox::EmitterObj*, (vox::VoxMemHint)0> >::reserve(unsigned int) [clone .clone.3]
; decoder-mode: arm
00869374  70 40 2d e9                                      push {r4, r5, r6, lr}
00869378  00 20 90 e5                                      ldr r2, [r0]
0086937c  08 30 90 e5                                      ldr r3, [r0, #8]
00869380  08 d0 4d e2                                      sub sp, sp, #8
00869384  80 10 a0 e3                                      mov r1, #0x80
00869388  03 30 62 e0                                      rsb r3, r2, r3
0086938c  43 31 a0 e1                                      asr r3, r3, #2
00869390  7f 00 53 e3                                      cmp r3, #0x7f
00869394  00 40 a0 e1                                      mov r4, r0
00869398  04 10 8d e5                                      str r1, [sp, #4]
0086939c  0f 00 00 8a                                      bhi #0x8693e0
008693a0  04 30 90 e5                                      ldr r3, [r0, #4]
008693a4  00 00 52 e3                                      cmp r2, #0
008693a8  03 50 62 e0                                      rsb r5, r2, r3
008693ac  45 51 a0 e1                                      asr r5, r5, #2
008693b0  0c 00 00 0a                                      beq #0x8693e8
008693b4  04 10 8d e2                                      add r1, sp, #4
008693b8  a1 f5 ff eb                                      bl #0x866a44
008693bc  00 60 a0 e1                                      mov r6, r0
008693c0  00 00 94 e5                                      ldr r0, [r4]
008693c4  1e 9c ea eb                                      bl #0x310444
008693c8  04 30 9d e5                                      ldr r3, [sp, #4]
008693cc  05 51 86 e0                                      add r5, r6, r5, lsl #2
008693d0  04 50 84 e5                                      str r5, [r4, #4]
008693d4  03 31 86 e0                                      add r3, r6, r3, lsl #2
008693d8  08 30 84 e5                                      str r3, [r4, #8]
008693dc  00 60 84 e5                                      str r6, [r4]
008693e0  08 d0 8d e2                                      add sp, sp, #8
008693e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
008693e8  02 10 a0 e1                                      mov r1, r2
008693ec  02 0c a0 e3                                      mov r0, #0x200
008693f0  94 9c ea eb                                      bl #0x310648
008693f4  00 60 a0 e1                                      mov r6, r0
008693f8  f2 ff ff ea                                      b #0x8693c8
