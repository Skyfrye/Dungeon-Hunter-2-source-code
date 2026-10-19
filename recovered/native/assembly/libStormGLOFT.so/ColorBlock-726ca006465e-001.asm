; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0003e6d0, declared_size=352, range_size=352, mode=arm
; class-group: ColorBlock
; alias: _ZNK10ColorBlock3GetEPm
; demangled: ColorBlock::Get(unsigned long*) const
; decoder-mode: arm
0003e6d0  70 4c 2d e9                                      push {r4, r5, r6, sl, fp, lr}
0003e6d4  10 b0 8d e2                                      add fp, sp, #0x10
0003e6d8  18 d0 4d e2                                      sub sp, sp, #0x18
0003e6dc  00 50 a0 e1                                      mov r5, r0
0003e6e0  40 01 9f e5                                      ldr r0, [pc, #0x140]
0003e6e4  04 60 8d e2                                      add r6, sp, #4
0003e6e8  01 40 a0 e1                                      mov r4, r1
0003e6ec  00 00 9f e7                                      ldr r0, [pc, r0]
0003e6f0  06 20 a0 e1                                      mov r2, r6
0003e6f4  00 00 90 e5                                      ldr r0, [r0]
0003e6f8  14 00 8d e5                                      str r0, [sp, #0x14]
0003e6fc  b2 10 d5 e1                                      ldrh r1, [r5, #2]
0003e700  b0 00 d5 e1                                      ldrh r0, [r5]
0003e704  33 cf ff eb                                      bl #0x323d8
0003e708  04 00 d5 e5                                      ldrb r0, [r5, #4]
0003e70c  03 00 00 e2                                      and r0, r0, #3
0003e710  00 01 96 e7                                      ldr r0, [r6, r0, lsl #2]
0003e714  00 00 84 e5                                      str r0, [r4]
0003e718  04 00 d5 e5                                      ldrb r0, [r5, #4]
0003e71c  0c 00 00 e2                                      and r0, r0, #0xc
0003e720  00 00 96 e7                                      ldr r0, [r6, r0]
0003e724  04 00 84 e5                                      str r0, [r4, #4]
0003e728  04 00 d5 e5                                      ldrb r0, [r5, #4]
0003e72c  30 00 00 e2                                      and r0, r0, #0x30
0003e730  20 01 96 e7                                      ldr r0, [r6, r0, lsr #2]
0003e734  08 00 84 e5                                      str r0, [r4, #8]
0003e738  04 00 d5 e5                                      ldrb r0, [r5, #4]
0003e73c  50 03 e1 e7                                      ubfx r0, r0, #6, #2
0003e740  00 01 96 e7                                      ldr r0, [r6, r0, lsl #2]
0003e744  0c 00 84 e5                                      str r0, [r4, #0xc]
0003e748  05 00 d5 e5                                      ldrb r0, [r5, #5]
0003e74c  03 00 00 e2                                      and r0, r0, #3
0003e750  00 01 96 e7                                      ldr r0, [r6, r0, lsl #2]
0003e754  10 00 84 e5                                      str r0, [r4, #0x10]
0003e758  05 00 d5 e5                                      ldrb r0, [r5, #5]
0003e75c  0c 00 00 e2                                      and r0, r0, #0xc
0003e760  00 00 96 e7                                      ldr r0, [r6, r0]
0003e764  14 00 84 e5                                      str r0, [r4, #0x14]
0003e768  05 00 d5 e5                                      ldrb r0, [r5, #5]
0003e76c  30 00 00 e2                                      and r0, r0, #0x30
0003e770  20 01 96 e7                                      ldr r0, [r6, r0, lsr #2]
0003e774  18 00 84 e5                                      str r0, [r4, #0x18]
0003e778  05 00 d5 e5                                      ldrb r0, [r5, #5]
0003e77c  50 03 e1 e7                                      ubfx r0, r0, #6, #2
0003e780  00 01 96 e7                                      ldr r0, [r6, r0, lsl #2]
0003e784  1c 00 84 e5                                      str r0, [r4, #0x1c]
0003e788  06 00 d5 e5                                      ldrb r0, [r5, #6]
0003e78c  03 00 00 e2                                      and r0, r0, #3
0003e790  00 01 96 e7                                      ldr r0, [r6, r0, lsl #2]
0003e794  20 00 84 e5                                      str r0, [r4, #0x20]
0003e798  06 00 d5 e5                                      ldrb r0, [r5, #6]
0003e79c  0c 00 00 e2                                      and r0, r0, #0xc
0003e7a0  00 00 96 e7                                      ldr r0, [r6, r0]
0003e7a4  24 00 84 e5                                      str r0, [r4, #0x24]
0003e7a8  06 00 d5 e5                                      ldrb r0, [r5, #6]
0003e7ac  30 00 00 e2                                      and r0, r0, #0x30
0003e7b0  20 01 96 e7                                      ldr r0, [r6, r0, lsr #2]
0003e7b4  28 00 84 e5                                      str r0, [r4, #0x28]
0003e7b8  06 00 d5 e5                                      ldrb r0, [r5, #6]
0003e7bc  50 03 e1 e7                                      ubfx r0, r0, #6, #2
0003e7c0  00 01 96 e7                                      ldr r0, [r6, r0, lsl #2]
0003e7c4  2c 00 84 e5                                      str r0, [r4, #0x2c]
0003e7c8  07 00 d5 e5                                      ldrb r0, [r5, #7]
0003e7cc  03 00 00 e2                                      and r0, r0, #3
0003e7d0  00 01 96 e7                                      ldr r0, [r6, r0, lsl #2]
0003e7d4  30 00 84 e5                                      str r0, [r4, #0x30]
0003e7d8  07 00 d5 e5                                      ldrb r0, [r5, #7]
0003e7dc  0c 00 00 e2                                      and r0, r0, #0xc
0003e7e0  00 00 96 e7                                      ldr r0, [r6, r0]
0003e7e4  34 00 84 e5                                      str r0, [r4, #0x34]
0003e7e8  07 00 d5 e5                                      ldrb r0, [r5, #7]
0003e7ec  30 00 00 e2                                      and r0, r0, #0x30
0003e7f0  20 01 96 e7                                      ldr r0, [r6, r0, lsr #2]
0003e7f4  38 00 84 e5                                      str r0, [r4, #0x38]
0003e7f8  07 00 d5 e5                                      ldrb r0, [r5, #7]
0003e7fc  50 03 e1 e7                                      ubfx r0, r0, #6, #2
0003e800  00 01 96 e7                                      ldr r0, [r6, r0, lsl #2]
0003e804  3c 00 84 e5                                      str r0, [r4, #0x3c]
0003e808  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
0003e80c  14 10 9d e5                                      ldr r1, [sp, #0x14]
0003e810  00 00 9f e7                                      ldr r0, [pc, r0]
0003e814  00 00 90 e5                                      ldr r0, [r0]
0003e818  01 00 50 e0                                      subs r0, r0, r1
0003e81c  10 d0 4b 02                                      subeq sp, fp, #0x10
0003e820  70 8c bd 08                                      popeq {r4, r5, r6, sl, fp, pc}
0003e824  0d ce ff eb                                      bl #0x32060
0003e828  c4 dd 09 00                                      andeq sp, sb, r4, asr #27
0003e82c  a0 dc 09 00                                      andeq sp, sb, r0, lsr #25
