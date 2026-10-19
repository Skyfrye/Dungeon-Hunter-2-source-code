; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006f7004, declared_size=456, range_size=456, mode=arm
; class-group: std::vector<glitch::core::CMatrix4<float>, glitch::core::SAlignedAllocator<glitch::core::CMatrix4<float>, (unsigned char)4> >
; alias: _ZNSt6vectorIN6glitch4core8CMatrix4IfEENS1_17SAlignedAllocatorIS3_Lh4EEEEaSERKS6_
; demangled: std::vector<glitch::core::CMatrix4<float>, glitch::core::SAlignedAllocator<glitch::core::CMatrix4<float>, (unsigned char)4> >::operator=(std::vector<glitch::core::CMatrix4<float>, glitch::core::SAlignedAllocator<glitch::core::CMatrix4<float>, (unsigned char)4> > const&)
; decoder-mode: arm
006f7004  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006f7008  00 00 51 e1                                      cmp r1, r0
006f700c  18 d0 4d e2                                      sub sp, sp, #0x18
006f7010  01 50 a0 e1                                      mov r5, r1
006f7014  00 40 a0 e1                                      mov r4, r0
006f7018  27 00 00 0a                                      beq #0x6f70bc
006f701c  04 30 91 e5                                      ldr r3, [r1, #4]
006f7020  00 c0 91 e5                                      ldr ip, [r1]
006f7024  00 20 90 e5                                      ldr r2, [r0]
006f7028  08 10 90 e5                                      ldr r1, [r0, #8]
006f702c  03 e0 6c e0                                      rsb lr, ip, r3
006f7030  4e e1 a0 e1                                      asr lr, lr, #2
006f7034  01 10 62 e0                                      rsb r1, r2, r1
006f7038  41 11 a0 e1                                      asr r1, r1, #2
006f703c  0e 62 a0 e1                                      lsl r6, lr, #4
006f7040  01 72 a0 e1                                      lsl r7, r1, #4
006f7044  07 70 61 e0                                      rsb r7, r1, r7
006f7048  06 60 6e e0                                      rsb r6, lr, r6
006f704c  06 64 86 e0                                      add r6, r6, r6, lsl #8
006f7050  07 74 87 e0                                      add r7, r7, r7, lsl #8
006f7054  06 68 86 e0                                      add r6, r6, r6, lsl #16
006f7058  07 78 87 e0                                      add r7, r7, r7, lsl #16
006f705c  06 62 8e e0                                      add r6, lr, r6, lsl #4
006f7060  07 12 81 e0                                      add r1, r1, r7, lsl #4
006f7064  01 00 56 e1                                      cmp r6, r1
006f7068  38 00 00 8a                                      bhi #0x6f7150
006f706c  04 00 90 e5                                      ldr r0, [r0, #4]
006f7070  00 00 62 e0                                      rsb r0, r2, r0
006f7074  40 01 a0 e1                                      asr r0, r0, #2
006f7078  00 12 a0 e1                                      lsl r1, r0, #4
006f707c  01 10 60 e0                                      rsb r1, r0, r1
006f7080  01 14 81 e0                                      add r1, r1, r1, lsl #8
006f7084  01 18 81 e0                                      add r1, r1, r1, lsl #16
006f7088  01 12 80 e0                                      add r1, r0, r1, lsl #4
006f708c  01 00 56 e1                                      cmp r6, r1
006f7090  0c 00 00 8a                                      bhi #0x6f70c8
006f7094  0c 00 a0 e1                                      mov r0, ip
006f7098  03 10 a0 e1                                      mov r1, r3
006f709c  00 c0 a0 e3                                      mov ip, #0
006f70a0  14 30 8d e2                                      add r3, sp, #0x14
006f70a4  00 c0 8d e5                                      str ip, [sp]
006f70a8  c1 fd ff eb                                      bl #0x6f67b4
006f70ac  00 90 94 e5                                      ldr sb, [r4]
006f70b0  44 30 a0 e3                                      mov r3, #0x44
006f70b4  93 96 26 e0                                      mla r6, r3, r6, sb
006f70b8  04 60 84 e5                                      str r6, [r4, #4]
006f70bc  04 00 a0 e1                                      mov r0, r4
006f70c0  18 d0 8d e2                                      add sp, sp, #0x18
006f70c4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006f70c8  44 70 a0 e3                                      mov r7, #0x44
006f70cc  97 c1 21 e0                                      mla r1, r7, r1, ip
006f70d0  00 80 a0 e3                                      mov r8, #0
006f70d4  10 30 8d e2                                      add r3, sp, #0x10
006f70d8  0c 00 a0 e1                                      mov r0, ip
006f70dc  00 80 8d e5                                      str r8, [sp]
006f70e0  b3 fd ff eb                                      bl #0x6f67b4
006f70e4  00 06 94 e8                                      ldm r4, {sb, sl}
006f70e8  09 00 95 e8                                      ldm r5, {r0, r3}
006f70ec  0a 20 69 e0                                      rsb r2, sb, sl
006f70f0  42 21 a0 e1                                      asr r2, r2, #2
006f70f4  02 12 a0 e1                                      lsl r1, r2, #4
006f70f8  01 10 62 e0                                      rsb r1, r2, r1
006f70fc  01 14 81 e0                                      add r1, r1, r1, lsl #8
006f7100  01 18 81 e0                                      add r1, r1, r1, lsl #16
006f7104  01 22 82 e0                                      add r2, r2, r1, lsl #4
006f7108  97 02 27 e0                                      mla r7, r7, r2, r0
006f710c  03 30 67 e0                                      rsb r3, r7, r3
006f7110  43 31 a0 e1                                      asr r3, r3, #2
006f7114  03 52 a0 e1                                      lsl r5, r3, #4
006f7118  05 50 63 e0                                      rsb r5, r3, r5
006f711c  05 54 85 e0                                      add r5, r5, r5, lsl #8
006f7120  05 58 85 e0                                      add r5, r5, r5, lsl #16
006f7124  05 52 83 e0                                      add r5, r3, r5, lsl #4
006f7128  08 00 55 e1                                      cmp r5, r8
006f712c  df ff ff da                                      ble #0x6f70b0
006f7130  08 00 8a e0                                      add r0, sl, r8
006f7134  08 10 87 e0                                      add r1, r7, r8
006f7138  8a ff ff eb                                      bl #0x6f6f68
006f713c  01 50 55 e2                                      subs r5, r5, #1
006f7140  44 80 88 e2                                      add r8, r8, #0x44
006f7144  f9 ff ff 1a                                      bne #0x6f7130
006f7148  00 90 94 e5                                      ldr sb, [r4]
006f714c  d7 ff ff ea                                      b #0x6f70b0
006f7150  18 10 8d e2                                      add r1, sp, #0x18
006f7154  0c 20 a0 e1                                      mov r2, ip
006f7158  0c 60 21 e5                                      str r6, [r1, #-0xc]!
006f715c  89 ff ff eb                                      bl #0x6f6f88
006f7160  0c 00 94 e8                                      ldm r4, {r2, r3}
006f7164  00 90 a0 e1                                      mov sb, r0
006f7168  02 00 53 e1                                      cmp r3, r2
006f716c  0e 00 00 0a                                      beq #0x6f71ac
006f7170  44 10 43 e2                                      sub r1, r3, #0x44
006f7174  01 20 62 e0                                      rsb r2, r2, r1
006f7178  22 21 a0 e1                                      lsr r2, r2, #2
006f717c  02 14 82 e0                                      add r1, r2, r2, lsl #8
006f7180  01 14 82 e0                                      add r1, r2, r1, lsl #8
006f7184  01 13 81 e0                                      add r1, r1, r1, lsl #6
006f7188  01 11 82 e0                                      add r1, r2, r1, lsl #2
006f718c  01 01 a0 e1                                      lsl r0, r1, #2
006f7190  00 10 61 e0                                      rsb r1, r1, r0
006f7194  01 22 82 e0                                      add r2, r2, r1, lsl #4
006f7198  03 21 c2 e3                                      bic r2, r2, #0xc0000000
006f719c  43 10 e0 e3                                      mvn r1, #0x43
006f71a0  91 02 02 e0                                      mul r2, r1, r2
006f71a4  01 20 82 e0                                      add r2, r2, r1
006f71a8  02 30 83 e0                                      add r3, r3, r2
006f71ac  04 00 13 e5                                      ldr r0, [r3, #-4]
006f71b0  a6 64 f0 eb                                      bl #0x310450
006f71b4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006f71b8  44 20 a0 e3                                      mov r2, #0x44
006f71bc  00 90 84 e5                                      str sb, [r4]
006f71c0  92 93 23 e0                                      mla r3, r2, r3, sb
006f71c4  08 30 84 e5                                      str r3, [r4, #8]
006f71c8  b8 ff ff ea                                      b #0x6f70b0
