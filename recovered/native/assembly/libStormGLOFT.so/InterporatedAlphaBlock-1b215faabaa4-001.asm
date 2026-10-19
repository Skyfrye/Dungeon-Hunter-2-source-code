; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0003e954, declared_size=372, range_size=372, mode=arm
; class-group: InterporatedAlphaBlock
; alias: _ZNK22InterporatedAlphaBlock3GetEPm
; demangled: InterporatedAlphaBlock::Get(unsigned long*) const
; decoder-mode: arm
0003e954  70 4c 2d e9                                      push {r4, r5, r6, sl, fp, lr}
0003e958  10 b0 8d e2                                      add fp, sp, #0x10
0003e95c  10 d0 4d e2                                      sub sp, sp, #0x10
0003e960  00 50 a0 e1                                      mov r5, r0
0003e964  54 01 9f e5                                      ldr r0, [pc, #0x154]
0003e968  04 60 8d e2                                      add r6, sp, #4
0003e96c  01 40 a0 e1                                      mov r4, r1
0003e970  00 00 9f e7                                      ldr r0, [pc, r0]
0003e974  06 10 a0 e1                                      mov r1, r6
0003e978  00 00 90 e5                                      ldr r0, [r0]
0003e97c  0c 00 8d e5                                      str r0, [sp, #0xc]
0003e980  05 00 a0 e1                                      mov r0, r5
0003e984  96 ce ff eb                                      bl #0x323e4
0003e988  02 00 d5 e5                                      ldrb r0, [r5, #2]
0003e98c  07 00 00 e2                                      and r0, r0, #7
0003e990  00 00 d6 e7                                      ldrb r0, [r6, r0]
0003e994  00 00 84 e5                                      str r0, [r4]
0003e998  02 00 d5 e5                                      ldrb r0, [r5, #2]
0003e99c  d0 01 e2 e7                                      ubfx r0, r0, #3, #3
0003e9a0  00 00 d6 e7                                      ldrb r0, [r6, r0]
0003e9a4  04 00 84 e5                                      str r0, [r4, #4]
0003e9a8  03 10 d5 e5                                      ldrb r1, [r5, #3]
0003e9ac  02 00 d5 e5                                      ldrb r0, [r5, #2]
0003e9b0  01 04 80 e1                                      orr r0, r0, r1, lsl #8
0003e9b4  50 03 e2 e7                                      ubfx r0, r0, #6, #3
0003e9b8  00 00 d6 e7                                      ldrb r0, [r6, r0]
0003e9bc  08 00 84 e5                                      str r0, [r4, #8]
0003e9c0  03 00 d5 e5                                      ldrb r0, [r5, #3]
0003e9c4  d0 00 e2 e7                                      ubfx r0, r0, #1, #3
0003e9c8  00 00 d6 e7                                      ldrb r0, [r6, r0]
0003e9cc  0c 00 84 e5                                      str r0, [r4, #0xc]
0003e9d0  03 00 d5 e5                                      ldrb r0, [r5, #3]
0003e9d4  50 02 e2 e7                                      ubfx r0, r0, #4, #3
0003e9d8  00 00 d6 e7                                      ldrb r0, [r6, r0]
0003e9dc  10 00 84 e5                                      str r0, [r4, #0x10]
0003e9e0  04 10 d5 e5                                      ldrb r1, [r5, #4]
0003e9e4  03 00 d5 e5                                      ldrb r0, [r5, #3]
0003e9e8  01 04 80 e1                                      orr r0, r0, r1, lsl #8
0003e9ec  d0 03 e2 e7                                      ubfx r0, r0, #7, #3
0003e9f0  00 00 d6 e7                                      ldrb r0, [r6, r0]
0003e9f4  14 00 84 e5                                      str r0, [r4, #0x14]
0003e9f8  04 00 d5 e5                                      ldrb r0, [r5, #4]
0003e9fc  50 01 e2 e7                                      ubfx r0, r0, #2, #3
0003ea00  00 00 d6 e7                                      ldrb r0, [r6, r0]
0003ea04  18 00 84 e5                                      str r0, [r4, #0x18]
0003ea08  04 00 d5 e5                                      ldrb r0, [r5, #4]
0003ea0c  a0 02 d6 e7                                      ldrb r0, [r6, r0, lsr #5]
0003ea10  1c 00 84 e5                                      str r0, [r4, #0x1c]
0003ea14  05 00 d5 e5                                      ldrb r0, [r5, #5]
0003ea18  07 00 00 e2                                      and r0, r0, #7
0003ea1c  00 00 d6 e7                                      ldrb r0, [r6, r0]
0003ea20  20 00 84 e5                                      str r0, [r4, #0x20]
0003ea24  05 00 d5 e5                                      ldrb r0, [r5, #5]
0003ea28  d0 01 e2 e7                                      ubfx r0, r0, #3, #3
0003ea2c  00 00 d6 e7                                      ldrb r0, [r6, r0]
0003ea30  24 00 84 e5                                      str r0, [r4, #0x24]
0003ea34  06 10 d5 e5                                      ldrb r1, [r5, #6]
0003ea38  05 00 d5 e5                                      ldrb r0, [r5, #5]
0003ea3c  01 04 80 e1                                      orr r0, r0, r1, lsl #8
0003ea40  50 03 e2 e7                                      ubfx r0, r0, #6, #3
0003ea44  00 00 d6 e7                                      ldrb r0, [r6, r0]
0003ea48  28 00 84 e5                                      str r0, [r4, #0x28]
0003ea4c  06 00 d5 e5                                      ldrb r0, [r5, #6]
0003ea50  d0 00 e2 e7                                      ubfx r0, r0, #1, #3
0003ea54  00 00 d6 e7                                      ldrb r0, [r6, r0]
0003ea58  2c 00 84 e5                                      str r0, [r4, #0x2c]
0003ea5c  06 00 d5 e5                                      ldrb r0, [r5, #6]
0003ea60  50 02 e2 e7                                      ubfx r0, r0, #4, #3
0003ea64  00 00 d6 e7                                      ldrb r0, [r6, r0]
0003ea68  30 00 84 e5                                      str r0, [r4, #0x30]
0003ea6c  07 10 d5 e5                                      ldrb r1, [r5, #7]
0003ea70  06 00 d5 e5                                      ldrb r0, [r5, #6]
0003ea74  01 04 80 e1                                      orr r0, r0, r1, lsl #8
0003ea78  d0 03 e2 e7                                      ubfx r0, r0, #7, #3
0003ea7c  00 00 d6 e7                                      ldrb r0, [r6, r0]
0003ea80  34 00 84 e5                                      str r0, [r4, #0x34]
0003ea84  07 00 d5 e5                                      ldrb r0, [r5, #7]
0003ea88  50 01 e2 e7                                      ubfx r0, r0, #2, #3
0003ea8c  00 00 d6 e7                                      ldrb r0, [r6, r0]
0003ea90  38 00 84 e5                                      str r0, [r4, #0x38]
0003ea94  07 00 d5 e5                                      ldrb r0, [r5, #7]
0003ea98  a0 02 d6 e7                                      ldrb r0, [r6, r0, lsr #5]
0003ea9c  3c 00 84 e5                                      str r0, [r4, #0x3c]
0003eaa0  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
0003eaa4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0003eaa8  00 00 9f e7                                      ldr r0, [pc, r0]
0003eaac  00 00 90 e5                                      ldr r0, [r0]
0003eab0  01 00 50 e0                                      subs r0, r0, r1
0003eab4  10 d0 4b 02                                      subeq sp, fp, #0x10
0003eab8  70 8c bd 08                                      popeq {r4, r5, r6, sl, fp, pc}
0003eabc  67 cd ff eb                                      bl #0x32060
0003eac0  40 db 09 00                                      andeq sp, sb, r0, asr #22
0003eac4  08 da 09 00                                      andeq sp, sb, r8, lsl #20

; FUNCTION 0x0003eac8, declared_size=432, range_size=432, mode=arm
; class-group: InterporatedAlphaBlock
; alias: _ZNK22InterporatedAlphaBlock22GetCompressedAlphaRampEPh
; demangled: InterporatedAlphaBlock::GetCompressedAlphaRamp(unsigned char*) const
; decoder-mode: arm
0003eac8  00 20 d0 e5                                      ldrb r2, [r0]
0003eacc  00 20 c1 e5                                      strb r2, [r1]
0003ead0  01 20 d0 e5                                      ldrb r2, [r0, #1]
0003ead4  01 20 c1 e5                                      strb r2, [r1, #1]
0003ead8  00 20 d0 e5                                      ldrb r2, [r0]
0003eadc  01 30 d0 e5                                      ldrb r3, [r0, #1]
0003eae0  03 00 52 e1                                      cmp r2, r3
0003eae4  40 00 00 9a                                      bls #0x3ebec
0003eae8  00 48 2d e9                                      push {fp, lr}
0003eaec  0d b0 a0 e1                                      mov fp, sp
0003eaf0  82 20 82 e0                                      add r2, r2, r2, lsl #1
0003eaf4  25 c9 04 e3                                      movw ip, #0x4925
0003eaf8  92 c4 42 e3                                      movt ip, #0x2492
0003eafc  82 20 83 e0                                      add r2, r3, r2, lsl #1
0003eb00  03 e0 82 e2                                      add lr, r2, #3
0003eb04  9e 2c 83 e0                                      umull r2, r3, lr, ip
0003eb08  03 20 4e e0                                      sub r2, lr, r3
0003eb0c  a2 20 83 e0                                      add r2, r3, r2, lsr #1
0003eb10  22 21 a0 e1                                      lsr r2, r2, #2
0003eb14  02 20 c1 e5                                      strb r2, [r1, #2]
0003eb18  00 20 d0 e5                                      ldrb r2, [r0]
0003eb1c  01 30 d0 e5                                      ldrb r3, [r0, #1]
0003eb20  02 21 82 e0                                      add r2, r2, r2, lsl #2
0003eb24  83 20 82 e0                                      add r2, r2, r3, lsl #1
0003eb28  03 20 82 e2                                      add r2, r2, #3
0003eb2c  92 3c 8e e0                                      umull r3, lr, r2, ip
0003eb30  0e 20 42 e0                                      sub r2, r2, lr
0003eb34  a2 20 8e e0                                      add r2, lr, r2, lsr #1
0003eb38  22 21 a0 e1                                      lsr r2, r2, #2
0003eb3c  03 20 c1 e5                                      strb r2, [r1, #3]
0003eb40  03 20 a0 e3                                      mov r2, #3
0003eb44  01 30 d0 e5                                      ldrb r3, [r0, #1]
0003eb48  00 e0 d0 e5                                      ldrb lr, [r0]
0003eb4c  83 30 83 e0                                      add r3, r3, r3, lsl #1
0003eb50  0e 21 82 e1                                      orr r2, r2, lr, lsl #2
0003eb54  03 20 82 e0                                      add r2, r2, r3
0003eb58  92 3c 8e e0                                      umull r3, lr, r2, ip
0003eb5c  0e 20 42 e0                                      sub r2, r2, lr
0003eb60  a2 20 8e e0                                      add r2, lr, r2, lsr #1
0003eb64  22 21 a0 e1                                      lsr r2, r2, #2
0003eb68  04 20 c1 e5                                      strb r2, [r1, #4]
0003eb6c  00 20 d0 e5                                      ldrb r2, [r0]
0003eb70  01 30 d0 e5                                      ldrb r3, [r0, #1]
0003eb74  82 20 82 e0                                      add r2, r2, r2, lsl #1
0003eb78  03 21 82 e0                                      add r2, r2, r3, lsl #2
0003eb7c  03 20 82 e2                                      add r2, r2, #3
0003eb80  92 3c 8e e0                                      umull r3, lr, r2, ip
0003eb84  0e 20 42 e0                                      sub r2, r2, lr
0003eb88  a2 20 8e e0                                      add r2, lr, r2, lsr #1
0003eb8c  22 21 a0 e1                                      lsr r2, r2, #2
0003eb90  05 20 c1 e5                                      strb r2, [r1, #5]
0003eb94  01 30 d0 e5                                      ldrb r3, [r0, #1]
0003eb98  00 20 d0 e5                                      ldrb r2, [r0]
0003eb9c  03 31 83 e0                                      add r3, r3, r3, lsl #2
0003eba0  82 20 83 e0                                      add r2, r3, r2, lsl #1
0003eba4  03 20 82 e2                                      add r2, r2, #3
0003eba8  92 3c 8e e0                                      umull r3, lr, r2, ip
0003ebac  0e 20 42 e0                                      sub r2, r2, lr
0003ebb0  a2 20 8e e0                                      add r2, lr, r2, lsr #1
0003ebb4  22 21 a0 e1                                      lsr r2, r2, #2
0003ebb8  06 20 c1 e5                                      strb r2, [r1, #6]
0003ebbc  00 20 d0 e5                                      ldrb r2, [r0]
0003ebc0  01 00 d0 e5                                      ldrb r0, [r0, #1]
0003ebc4  80 00 80 e0                                      add r0, r0, r0, lsl #1
0003ebc8  80 00 82 e0                                      add r0, r2, r0, lsl #1
0003ebcc  03 00 80 e2                                      add r0, r0, #3
0003ebd0  90 2c 83 e0                                      umull r2, r3, r0, ip
0003ebd4  03 00 40 e0                                      sub r0, r0, r3
0003ebd8  a0 00 83 e0                                      add r0, r3, r0, lsr #1
0003ebdc  20 01 a0 e1                                      lsr r0, r0, #2
0003ebe0  00 48 bd e8                                      pop {fp, lr}
0003ebe4  07 00 c1 e5                                      strb r0, [r1, #7]
0003ebe8  1e ff 2f e1                                      bx lr
0003ebec  02 21 83 e0                                      add r2, r3, r2, lsl #2
0003ebf0  cd cc 0c e3                                      movw ip, #0xcccd
0003ebf4  02 20 82 e2                                      add r2, r2, #2
0003ebf8  cc cc 4c e3                                      movt ip, #0xcccc
0003ebfc  92 2c 83 e0                                      umull r2, r3, r2, ip
0003ec00  23 21 a0 e1                                      lsr r2, r3, #2
0003ec04  02 20 c1 e5                                      strb r2, [r1, #2]
0003ec08  00 20 d0 e5                                      ldrb r2, [r0]
0003ec0c  01 30 d0 e5                                      ldrb r3, [r0, #1]
0003ec10  82 20 82 e0                                      add r2, r2, r2, lsl #1
0003ec14  83 20 82 e0                                      add r2, r2, r3, lsl #1
0003ec18  02 20 82 e2                                      add r2, r2, #2
0003ec1c  92 2c 83 e0                                      umull r2, r3, r2, ip
0003ec20  23 21 a0 e1                                      lsr r2, r3, #2
0003ec24  03 20 c1 e5                                      strb r2, [r1, #3]
0003ec28  01 30 d0 e5                                      ldrb r3, [r0, #1]
0003ec2c  00 20 d0 e5                                      ldrb r2, [r0]
0003ec30  83 30 83 e0                                      add r3, r3, r3, lsl #1
0003ec34  82 20 83 e0                                      add r2, r3, r2, lsl #1
0003ec38  02 20 82 e2                                      add r2, r2, #2
0003ec3c  92 2c 83 e0                                      umull r2, r3, r2, ip
0003ec40  23 21 a0 e1                                      lsr r2, r3, #2
0003ec44  04 20 c1 e5                                      strb r2, [r1, #4]
0003ec48  00 20 d0 e5                                      ldrb r2, [r0]
0003ec4c  01 00 d0 e5                                      ldrb r0, [r0, #1]
0003ec50  00 01 82 e0                                      add r0, r2, r0, lsl #2
0003ec54  02 00 80 e2                                      add r0, r0, #2
0003ec58  90 0c 82 e0                                      umull r0, r2, r0, ip
0003ec5c  00 00 a0 e3                                      mov r0, #0
0003ec60  06 00 c1 e5                                      strb r0, [r1, #6]
0003ec64  22 01 a0 e1                                      lsr r0, r2, #2
0003ec68  05 00 c1 e5                                      strb r0, [r1, #5]
0003ec6c  ff 00 a0 e3                                      mov r0, #0xff
0003ec70  07 00 c1 e5                                      strb r0, [r1, #7]
0003ec74  1e ff 2f e1                                      bx lr
