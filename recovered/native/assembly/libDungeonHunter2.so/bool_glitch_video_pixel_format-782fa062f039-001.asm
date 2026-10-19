; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005eeef4, declared_size=8300, range_size=8300, mode=arm
; class-group: bool glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format12_GLOBAL__N_117convertPackedImplIjjEEbNS0_14E_PIXEL_FORMATEPKT_jS4_PT0_jjjb
; demangled: bool glitch::video::pixel_format::(anonymous namespace)::convertPackedImpl<unsigned int, unsigned int>(glitch::video::E_PIXEL_FORMAT, unsigned int const*, unsigned int, glitch::video::E_PIXEL_FORMAT, unsigned int*, unsigned int, unsigned int, unsigned int, bool)
; decoder-mode: arm
005eeef4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005eeef8  c4 6e 9f e5                                      ldr r6, [pc, #0xec4]
005eeefc  c4 4e 9f e5                                      ldr r4, [pc, #0xec4]
005eef00  00 70 a0 e1                                      mov r7, r0
005eef04  06 60 8f e0                                      add r6, pc, r6
005eef08  04 00 96 e7                                      ldr r0, [r6, r4]
005eef0c  28 a0 a0 e3                                      mov sl, #0x28
005eef10  c4 d0 4d e2                                      sub sp, sp, #0xc4
005eef14  9a 03 28 e0                                      mla r8, sl, r3, r0
005eef18  9a 07 2a e0                                      mla sl, sl, r7, r0
005eef1c  19 c0 d8 e5                                      ldrb ip, [r8, #0x19]
005eef20  19 00 da e5                                      ldrb r0, [sl, #0x19]
005eef24  f8 90 dd e5                                      ldrb sb, [sp, #0xf8]
005eef28  04 40 8d e5                                      str r4, [sp, #4]
005eef2c  00 00 50 e3                                      cmp r0, #0
005eef30  0c 00 a0 01                                      moveq r0, ip
005eef34  00 00 5c e3                                      cmp ip, #0
005eef38  01 40 a0 e1                                      mov r4, r1
005eef3c  44 20 8d e5                                      str r2, [sp, #0x44]
005eef40  e8 50 9d e5                                      ldr r5, [sp, #0xe8]
005eef44  10 90 8d e5                                      str sb, [sp, #0x10]
005eef48  3b 00 00 0a                                      beq #0x5ef03c
005eef4c  0c 00 50 e1                                      cmp r0, ip
005eef50  39 00 00 2a                                      bhs #0x5ef03c
005eef54  80 00 5c e1                                      cmp ip, r0, lsl #1
005eef58  44 02 00 ca                                      bgt #0x5ef870
005eef5c  1b 20 da e5                                      ldrb r2, [sl, #0x1b]
005eef60  1b 10 d8 e5                                      ldrb r1, [r8, #0x1b]
005eef64  00 00 52 e3                                      cmp r2, #0
005eef68  01 20 a0 01                                      moveq r2, r1
005eef6c  00 00 51 e3                                      cmp r1, #0
005eef70  d4 01 00 0a                                      beq #0x5ef6c8
005eef74  01 00 52 e1                                      cmp r2, r1
005eef78  d2 01 00 2a                                      bhs #0x5ef6c8
005eef7c  82 00 51 e1                                      cmp r1, r2, lsl #1
005eef80  9e 02 00 da                                      ble #0x5efa00
005eef84  6c 80 8d e2                                      add r8, sp, #0x6c
005eef88  07 10 a0 e1                                      mov r1, r7
005eef8c  03 20 a0 e1                                      mov r2, r3
005eef90  08 00 a0 e1                                      mov r0, r8
005eef94  d2 fe ff eb                                      bl #0x5eeae4
005eef98  05 00 54 e1                                      cmp r4, r5
005eef9c  15 60 da e5                                      ldrb r6, [sl, #0x15]
005eefa0  61 04 00 0a                                      beq #0x5f012c
005eefa4  10 00 9d e5                                      ldr r0, [sp, #0x10]
005eefa8  ec 10 9d e5                                      ldr r1, [sp, #0xec]
005eefac  00 00 50 e3                                      cmp r0, #0
005eefb0  04 10 8d e5                                      str r1, [sp, #4]
005eefb4  04 00 00 0a                                      beq #0x5eefcc
005eefb8  f4 20 9d e5                                      ldr r2, [sp, #0xf4]
005eefbc  01 30 42 e2                                      sub r3, r2, #1
005eefc0  91 53 25 e0                                      mla r5, r1, r3, r5
005eefc4  00 30 61 e2                                      rsb r3, r1, #0
005eefc8  04 30 8d e5                                      str r3, [sp, #4]
005eefcc  f4 70 9d e5                                      ldr r7, [sp, #0xf4]
005eefd0  00 00 57 e3                                      cmp r7, #0
005eefd4  05 90 a0 11                                      movne sb, r5
005eefd8  04 b0 a0 11                                      movne fp, r4
005eefdc  84 02 00 0a                                      beq #0x5ef9f4
005eefe0  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
005eefe4  00 00 51 e3                                      cmp r1, #0
005eefe8  08 00 00 0a                                      beq #0x5ef010
005eefec  f0 a0 9d e5                                      ldr sl, [sp, #0xf0]
005eeff0  00 70 a0 e3                                      mov r7, #0
005eeff4  06 10 94 e6                                      ldr r1, [r4], r6
005eeff8  08 00 a0 e1                                      mov r0, r8
005eeffc  b6 fb ff eb                                      bl #0x5ededc
005ef000  01 a0 5a e2                                      subs sl, sl, #1
005ef004  07 00 85 e7                                      str r0, [r5, r7]
005ef008  04 70 87 e2                                      add r7, r7, #4
005ef00c  f8 ff ff 1a                                      bne #0x5eeff4
005ef010  f4 a0 9d e5                                      ldr sl, [sp, #0xf4]
005ef014  01 a0 5a e2                                      subs sl, sl, #1
005ef018  f4 a0 8d e5                                      str sl, [sp, #0xf4]
005ef01c  74 02 00 0a                                      beq #0x5ef9f4
005ef020  44 c0 9d e5                                      ldr ip, [sp, #0x44]
005ef024  04 00 9d e5                                      ldr r0, [sp, #4]
005ef028  0c 40 8b e0                                      add r4, fp, ip
005ef02c  00 90 89 e0                                      add sb, sb, r0
005ef030  09 50 a0 e1                                      mov r5, sb
005ef034  04 b0 a0 e1                                      mov fp, r4
005ef038  e8 ff ff ea                                      b #0x5eefe0
005ef03c  04 a0 9d e5                                      ldr sl, [sp, #4]
005ef040  28 00 a0 e3                                      mov r0, #0x28
005ef044  90 03 01 e0                                      mul r1, r0, r3
005ef048  0a 20 96 e7                                      ldr r2, [r6, sl]
005ef04c  90 07 00 e0                                      mul r0, r0, r7
005ef050  01 c0 82 e0                                      add ip, r2, r1
005ef054  1b c0 dc e5                                      ldrb ip, [ip, #0x1b]
005ef058  00 80 82 e0                                      add r8, r2, r0
005ef05c  1b b0 d8 e5                                      ldrb fp, [r8, #0x1b]
005ef060  08 c0 8d e5                                      str ip, [sp, #8]
005ef064  08 90 9d e5                                      ldr sb, [sp, #8]
005ef068  00 00 5b e3                                      cmp fp, #0
005ef06c  0b c0 a0 e1                                      mov ip, fp
005ef070  09 c0 a0 01                                      moveq ip, sb
005ef074  00 00 59 e3                                      cmp sb, #0
005ef078  0c b0 8d e5                                      str fp, [sp, #0xc]
005ef07c  97 00 00 1a                                      bne #0x5ef2e0
005ef080  04 a0 9d e5                                      ldr sl, [sp, #4]
005ef084  28 10 a0 e3                                      mov r1, #0x28
005ef088  91 03 00 e0                                      mul r0, r1, r3
005ef08c  0a 20 96 e7                                      ldr r2, [r6, sl]
005ef090  00 00 92 e7                                      ldr r0, [r2, r0]
005ef094  01 00 10 e3                                      tst r0, #1
005ef098  8c 02 00 1a                                      bne #0x5efad0
005ef09c  00 c0 a0 e3                                      mov ip, #0
005ef0a0  08 c0 8d e5                                      str ip, [sp, #8]
005ef0a4  04 00 9d e5                                      ldr r0, [sp, #4]
005ef0a8  6c 80 8d e2                                      add r8, sp, #0x6c
005ef0ac  08 10 a0 e1                                      mov r1, r8
005ef0b0  00 20 96 e7                                      ldr r2, [r6, r0]
005ef0b4  28 00 a0 e3                                      mov r0, #0x28
005ef0b8  0c 70 8d e5                                      str r7, [sp, #0xc]
005ef0bc  90 23 23 e0                                      mla r3, r0, r3, r2
005ef0c0  14 40 8d e5                                      str r4, [sp, #0x14]
005ef0c4  90 27 20 e0                                      mla r0, r0, r7, r2
005ef0c8  03 90 a0 e1                                      mov sb, r3
005ef0cc  00 20 a0 e3                                      mov r2, #0
005ef0d0  05 b0 a0 e1                                      mov fp, r5
005ef0d4  08 00 00 ea                                      b #0x5ef0fc
005ef0d8  05 c0 8c e0                                      add ip, ip, r5
005ef0dc  04 20 82 e2                                      add r2, r2, #4
005ef0e0  0c c0 64 e0                                      rsb ip, r4, ip
005ef0e4  10 00 52 e3                                      cmp r2, #0x10
005ef0e8  10 c0 c1 e5                                      strb ip, [r1, #0x10]
005ef0ec  01 00 80 e2                                      add r0, r0, #1
005ef0f0  01 10 81 e2                                      add r1, r1, #1
005ef0f4  01 30 83 e2                                      add r3, r3, #1
005ef0f8  14 00 00 0a                                      beq #0x5ef150
005ef0fc  02 50 89 e0                                      add r5, sb, r2
005ef100  18 c0 d0 e5                                      ldrb ip, [r0, #0x18]
005ef104  18 40 d3 e5                                      ldrb r4, [r3, #0x18]
005ef108  04 a0 95 e5                                      ldr sl, [r5, #4]
005ef10c  1c 70 d3 e5                                      ldrb r7, [r3, #0x1c]
005ef110  1c 50 d0 e5                                      ldrb r5, [r0, #0x1c]
005ef114  04 00 5c e1                                      cmp ip, r4
005ef118  02 a0 88 e7                                      str sl, [r8, r2]
005ef11c  10 50 c1 e5                                      strb r5, [r1, #0x10]
005ef120  14 70 c1 e5                                      strb r7, [r1, #0x14]
005ef124  eb ff ff 8a                                      bhi #0x5ef0d8
005ef128  8c 00 54 e1                                      cmp r4, ip, lsl #1
005ef12c  07 40 84 d0                                      addle r4, r4, r7
005ef130  04 c0 6c d0                                      rsble ip, ip, r4
005ef134  04 20 82 e2                                      add r2, r2, #4
005ef138  14 c0 c1 d5                                      strble ip, [r1, #0x14]
005ef13c  10 00 52 e3                                      cmp r2, #0x10
005ef140  01 00 80 e2                                      add r0, r0, #1
005ef144  01 10 81 e2                                      add r1, r1, #1
005ef148  01 30 83 e2                                      add r3, r3, #1
005ef14c  ea ff ff 1a                                      bne #0x5ef0fc
005ef150  04 10 9d e5                                      ldr r1, [sp, #4]
005ef154  0c 70 9d e5                                      ldr r7, [sp, #0xc]
005ef158  14 40 9d e5                                      ldr r4, [sp, #0x14]
005ef15c  01 30 96 e7                                      ldr r3, [r6, r1]
005ef160  28 10 a0 e3                                      mov r1, #0x28
005ef164  78 60 9d e5                                      ldr r6, [sp, #0x78]
005ef168  91 37 23 e0                                      mla r3, r1, r7, r3
005ef16c  0b 00 54 e1                                      cmp r4, fp
005ef170  02 20 83 e0                                      add r2, r3, r2
005ef174  08 30 9d e5                                      ldr r3, [sp, #8]
005ef178  0b 50 a0 e1                                      mov r5, fp
005ef17c  05 80 d2 e5                                      ldrb r8, [r2, #5]
005ef180  06 70 03 e0                                      and r7, r3, r6
005ef184  6b 03 00 0a                                      beq #0x5eff38
005ef188  10 00 9d e5                                      ldr r0, [sp, #0x10]
005ef18c  ec 10 9d e5                                      ldr r1, [sp, #0xec]
005ef190  00 00 50 e3                                      cmp r0, #0
005ef194  30 10 8d e5                                      str r1, [sp, #0x30]
005ef198  04 00 00 0a                                      beq #0x5ef1b0
005ef19c  f4 20 9d e5                                      ldr r2, [sp, #0xf4]
005ef1a0  01 30 42 e2                                      sub r3, r2, #1
005ef1a4  91 b3 25 e0                                      mla r5, r1, r3, fp
005ef1a8  00 30 61 e2                                      rsb r3, r1, #0
005ef1ac  30 30 8d e5                                      str r3, [sp, #0x30]
005ef1b0  f4 90 9d e5                                      ldr sb, [sp, #0xf4]
005ef1b4  00 00 59 e3                                      cmp sb, #0
005ef1b8  0d 02 00 0a                                      beq #0x5ef9f4
005ef1bc  6c a0 9d e5                                      ldr sl, [sp, #0x6c]
005ef1c0  7d c0 dd e5                                      ldrb ip, [sp, #0x7d]
005ef1c4  81 00 dd e5                                      ldrb r0, [sp, #0x81]
005ef1c8  24 a0 8d e5                                      str sl, [sp, #0x24]
005ef1cc  20 c0 8d e5                                      str ip, [sp, #0x20]
005ef1d0  1c 00 8d e5                                      str r0, [sp, #0x1c]
005ef1d4  70 10 9d e5                                      ldr r1, [sp, #0x70]
005ef1d8  83 00 dd e5                                      ldrb r0, [sp, #0x83]
005ef1dc  7e 20 dd e5                                      ldrb r2, [sp, #0x7e]
005ef1e0  82 30 dd e5                                      ldrb r3, [sp, #0x82]
005ef1e4  74 a0 9d e5                                      ldr sl, [sp, #0x74]
005ef1e8  7f c0 dd e5                                      ldrb ip, [sp, #0x7f]
005ef1ec  7c b0 dd e5                                      ldrb fp, [sp, #0x7c]
005ef1f0  80 90 dd e5                                      ldrb sb, [sp, #0x80]
005ef1f4  04 00 8d e5                                      str r0, [sp, #4]
005ef1f8  10 10 8d e5                                      str r1, [sp, #0x10]
005ef1fc  18 20 8d e5                                      str r2, [sp, #0x18]
005ef200  14 30 8d e5                                      str r3, [sp, #0x14]
005ef204  0c a0 8d e5                                      str sl, [sp, #0xc]
005ef208  08 c0 8d e5                                      str ip, [sp, #8]
005ef20c  04 00 a0 e1                                      mov r0, r4
005ef210  2c 40 8d e5                                      str r4, [sp, #0x2c]
005ef214  f0 20 9d e5                                      ldr r2, [sp, #0xf0]
005ef218  00 00 52 e3                                      cmp r2, #0
005ef21c  23 00 00 0a                                      beq #0x5ef2b0
005ef220  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
005ef224  00 20 a0 e3                                      mov r2, #0
005ef228  07 a0 a0 e1                                      mov sl, r7
005ef22c  28 60 8d e5                                      str r6, [sp, #0x28]
005ef230  34 50 8d e5                                      str r5, [sp, #0x34]
005ef234  08 30 90 e6                                      ldr r3, [r0], r8
005ef238  20 50 9d e5                                      ldr r5, [sp, #0x20]
005ef23c  24 60 9d e5                                      ldr r6, [sp, #0x24]
005ef240  10 70 9d e5                                      ldr r7, [sp, #0x10]
005ef244  33 c5 a0 e1                                      lsr ip, r3, r5
005ef248  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
005ef24c  33 4b a0 e1                                      lsr r4, r3, fp
005ef250  1c c5 07 e0                                      and ip, r7, ip, lsl r5
005ef254  14 49 06 e0                                      and r4, r6, r4, lsl sb
005ef258  08 50 9d e5                                      ldr r5, [sp, #8]
005ef25c  18 60 9d e5                                      ldr r6, [sp, #0x18]
005ef260  0c c0 84 e1                                      orr ip, r4, ip
005ef264  0a c0 8c e1                                      orr ip, ip, sl
005ef268  33 76 a0 e1                                      lsr r7, r3, r6
005ef26c  0c 60 9d e5                                      ldr r6, [sp, #0xc]
005ef270  33 35 a0 e1                                      lsr r3, r3, r5
005ef274  14 50 9d e5                                      ldr r5, [sp, #0x14]
005ef278  01 10 51 e2                                      subs r1, r1, #1
005ef27c  17 75 06 e0                                      and r7, r6, r7, lsl r5
005ef280  28 60 9d e5                                      ldr r6, [sp, #0x28]
005ef284  04 50 9d e5                                      ldr r5, [sp, #4]
005ef288  07 70 8c e1                                      orr r7, ip, r7
005ef28c  13 35 06 e0                                      and r3, r6, r3, lsl r5
005ef290  34 60 9d e5                                      ldr r6, [sp, #0x34]
005ef294  03 30 87 e1                                      orr r3, r7, r3
005ef298  02 30 86 e7                                      str r3, [r6, r2]
005ef29c  04 20 82 e2                                      add r2, r2, #4
005ef2a0  e3 ff ff 1a                                      bne #0x5ef234
005ef2a4  28 60 9d e5                                      ldr r6, [sp, #0x28]
005ef2a8  34 50 9d e5                                      ldr r5, [sp, #0x34]
005ef2ac  0a 70 a0 e1                                      mov r7, sl
005ef2b0  f4 a0 9d e5                                      ldr sl, [sp, #0xf4]
005ef2b4  01 a0 5a e2                                      subs sl, sl, #1
005ef2b8  f4 a0 8d e5                                      str sl, [sp, #0xf4]
005ef2bc  cc 01 00 0a                                      beq #0x5ef9f4
005ef2c0  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005ef2c4  44 00 9d e5                                      ldr r0, [sp, #0x44]
005ef2c8  30 10 9d e5                                      ldr r1, [sp, #0x30]
005ef2cc  00 c0 8c e0                                      add ip, ip, r0
005ef2d0  2c c0 8d e5                                      str ip, [sp, #0x2c]
005ef2d4  01 50 85 e0                                      add r5, r5, r1
005ef2d8  0c 00 a0 e1                                      mov r0, ip
005ef2dc  cc ff ff ea                                      b #0x5ef214
005ef2e0  09 00 5c e1                                      cmp ip, sb
005ef2e4  65 ff ff 2a                                      bhs #0x5ef080
005ef2e8  08 90 9d e5                                      ldr sb, [sp, #8]
005ef2ec  89 00 5c e1                                      cmp ip, sb, lsl #1
005ef2f0  51 00 00 aa                                      bge #0x5ef43c
005ef2f4  07 10 a0 e1                                      mov r1, r7
005ef2f8  03 20 a0 e1                                      mov r2, r3
005ef2fc  6c 00 8d e2                                      add r0, sp, #0x6c
005ef300  b8 fc ff eb                                      bl #0x5ee5e8
005ef304  05 00 54 e1                                      cmp r4, r5
005ef308  15 b0 d8 e5                                      ldrb fp, [r8, #0x15]
005ef30c  62 02 00 0a                                      beq #0x5efc9c
005ef310  10 10 9d e5                                      ldr r1, [sp, #0x10]
005ef314  ec 20 9d e5                                      ldr r2, [sp, #0xec]
005ef318  00 00 51 e3                                      cmp r1, #0
005ef31c  14 20 8d e5                                      str r2, [sp, #0x14]
005ef320  04 00 00 0a                                      beq #0x5ef338
005ef324  f4 60 9d e5                                      ldr r6, [sp, #0xf4]
005ef328  00 70 62 e2                                      rsb r7, r2, #0
005ef32c  14 70 8d e5                                      str r7, [sp, #0x14]
005ef330  01 30 46 e2                                      sub r3, r6, #1
005ef334  92 53 25 e0                                      mla r5, r2, r3, r5
005ef338  f4 80 9d e5                                      ldr r8, [sp, #0xf4]
005ef33c  00 00 58 e3                                      cmp r8, #0
005ef340  04 10 a0 11                                      movne r1, r4
005ef344  0c 40 8d 15                                      strne r4, [sp, #0xc]
005ef348  08 50 8d 15                                      strne r5, [sp, #8]
005ef34c  a8 01 00 0a                                      beq #0x5ef9f4
005ef350  f0 40 9d e5                                      ldr r4, [sp, #0xf0]
005ef354  00 00 54 e3                                      cmp r4, #0
005ef358  29 00 00 0a                                      beq #0x5ef404
005ef35c  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
005ef360  00 20 a0 e3                                      mov r2, #0
005ef364  0b 30 91 e6                                      ldr r3, [r1], fp
005ef368  90 c0 9d e5                                      ldr ip, [sp, #0x90]
005ef36c  7f 40 dd e5                                      ldrb r4, [sp, #0x7f]
005ef370  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005ef374  0c c0 03 e0                                      and ip, r3, ip
005ef378  7c a0 dd e5                                      ldrb sl, [sp, #0x7c]
005ef37c  3c c4 a0 e1                                      lsr ip, ip, r4
005ef380  7d 50 dd e5                                      ldrb r5, [sp, #0x7d]
005ef384  8c 40 9d e5                                      ldr r4, [sp, #0x8c]
005ef388  82 70 dd e5                                      ldrb r7, [sp, #0x82]
005ef38c  8c c0 a0 e1                                      lsl ip, ip, #1
005ef390  bc c0 94 e1                                      ldrh ip, [r4, ip]
005ef394  33 aa a0 e1                                      lsr sl, r3, sl
005ef398  88 90 dd e5                                      ldrb sb, [sp, #0x88]
005ef39c  81 40 dd e5                                      ldrb r4, [sp, #0x81]
005ef3a0  33 55 a0 e1                                      lsr r5, r3, r5
005ef3a4  33 36 a0 e1                                      lsr r3, r3, r6
005ef3a8  70 60 9d e5                                      ldr r6, [sp, #0x70]
005ef3ac  04 70 8d e5                                      str r7, [sp, #4]
005ef3b0  80 80 dd e5                                      ldrb r8, [sp, #0x80]
005ef3b4  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
005ef3b8  15 44 06 e0                                      and r4, r6, r5, lsl r4
005ef3bc  5c c9 a0 e1                                      asr ip, ip, sb
005ef3c0  74 60 9d e5                                      ldr r6, [sp, #0x74]
005ef3c4  04 90 9d e5                                      ldr sb, [sp, #4]
005ef3c8  1a 78 07 e0                                      and r7, r7, sl, lsl r8
005ef3cc  13 39 06 e0                                      and r3, r6, r3, lsl sb
005ef3d0  83 80 dd e5                                      ldrb r8, [sp, #0x83]
005ef3d4  78 90 9d e5                                      ldr sb, [sp, #0x78]
005ef3d8  08 a0 9d e5                                      ldr sl, [sp, #8]
005ef3dc  01 00 50 e2                                      subs r0, r0, #1
005ef3e0  1c c8 09 e0                                      and ip, sb, ip, lsl r8
005ef3e4  84 80 9d e5                                      ldr r8, [sp, #0x84]
005ef3e8  08 70 87 e1                                      orr r7, r7, r8
005ef3ec  04 40 87 e1                                      orr r4, r7, r4
005ef3f0  03 30 84 e1                                      orr r3, r4, r3
005ef3f4  0c c0 83 e1                                      orr ip, r3, ip
005ef3f8  02 c0 8a e7                                      str ip, [sl, r2]
005ef3fc  04 20 82 e2                                      add r2, r2, #4
005ef400  d7 ff ff 1a                                      bne #0x5ef364
005ef404  f4 c0 9d e5                                      ldr ip, [sp, #0xf4]
005ef408  01 c0 5c e2                                      subs ip, ip, #1
005ef40c  f4 c0 8d e5                                      str ip, [sp, #0xf4]
005ef410  77 01 00 0a                                      beq #0x5ef9f4
005ef414  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005ef418  44 10 9d e5                                      ldr r1, [sp, #0x44]
005ef41c  08 20 9d e5                                      ldr r2, [sp, #8]
005ef420  14 30 9d e5                                      ldr r3, [sp, #0x14]
005ef424  01 00 80 e0                                      add r0, r0, r1
005ef428  0c 00 8d e5                                      str r0, [sp, #0xc]
005ef42c  03 20 82 e0                                      add r2, r2, r3
005ef430  08 20 8d e5                                      str r2, [sp, #8]
005ef434  00 10 a0 e1                                      mov r1, r0
005ef438  c4 ff ff ea                                      b #0x5ef350
005ef43c  01 10 92 e7                                      ldr r1, [r2, r1]
005ef440  01 00 11 e3                                      tst r1, #1
005ef444  9b 01 00 1a                                      bne #0x5efab8
005ef448  00 90 a0 e3                                      mov sb, #0
005ef44c  14 90 8d e5                                      str sb, [sp, #0x14]
005ef450  04 a0 9d e5                                      ldr sl, [sp, #4]
005ef454  28 c0 a0 e3                                      mov ip, #0x28
005ef458  6c 80 8d e2                                      add r8, sp, #0x6c
005ef45c  0a 20 96 e7                                      ldr r2, [r6, sl]
005ef460  08 10 a0 e1                                      mov r1, r8
005ef464  1c 70 8d e5                                      str r7, [sp, #0x1c]
005ef468  9c 23 20 e0                                      mla r0, ip, r3, r2
005ef46c  20 40 8d e5                                      str r4, [sp, #0x20]
005ef470  9c 27 2c e0                                      mla ip, ip, r7, r2
005ef474  00 90 a0 e1                                      mov sb, r0
005ef478  00 20 a0 e3                                      mov r2, #0
005ef47c  24 30 8d e5                                      str r3, [sp, #0x24]
005ef480  05 b0 a0 e1                                      mov fp, r5
005ef484  02 50 89 e0                                      add r5, sb, r2
005ef488  18 30 dc e5                                      ldrb r3, [ip, #0x18]
005ef48c  18 40 d0 e5                                      ldrb r4, [r0, #0x18]
005ef490  04 a0 95 e5                                      ldr sl, [r5, #4]
005ef494  1c 70 d0 e5                                      ldrb r7, [r0, #0x1c]
005ef498  1c 50 dc e5                                      ldrb r5, [ip, #0x1c]
005ef49c  04 00 53 e1                                      cmp r3, r4
005ef4a0  02 a0 88 e7                                      str sl, [r8, r2]
005ef4a4  10 50 c1 e5                                      strb r5, [r1, #0x10]
005ef4a8  14 70 c1 e5                                      strb r7, [r1, #0x14]
005ef4ac  94 01 00 9a                                      bls #0x5efb04
005ef4b0  05 30 83 e0                                      add r3, r3, r5
005ef4b4  03 30 64 e0                                      rsb r3, r4, r3
005ef4b8  10 30 c1 e5                                      strb r3, [r1, #0x10]
005ef4bc  04 20 82 e2                                      add r2, r2, #4
005ef4c0  10 00 52 e3                                      cmp r2, #0x10
005ef4c4  01 c0 8c e2                                      add ip, ip, #1
005ef4c8  01 10 81 e2                                      add r1, r1, #1
005ef4cc  01 00 80 e2                                      add r0, r0, #1
005ef4d0  eb ff ff 1a                                      bne #0x5ef484
005ef4d4  0b 50 a0 e1                                      mov r5, fp
005ef4d8  04 b0 9d e5                                      ldr fp, [sp, #4]
005ef4dc  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
005ef4e0  24 30 9d e5                                      ldr r3, [sp, #0x24]
005ef4e4  0b 10 96 e7                                      ldr r1, [r6, fp]
005ef4e8  28 00 a0 e3                                      mov r0, #0x28
005ef4ec  08 c0 9d e5                                      ldr ip, [sp, #8]
005ef4f0  90 17 27 e0                                      mla r7, r0, r7, r1
005ef4f4  90 13 20 e0                                      mla r0, r0, r3, r1
005ef4f8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005ef4fc  02 60 97 e7                                      ldr r6, [r7, r2]
005ef500  7f b0 dd e5                                      ldrb fp, [sp, #0x7f]
005ef504  81 30 6c e0                                      rsb r3, ip, r1, lsl #1
005ef508  73 30 ef e6                                      uxtb r3, r3
005ef50c  0b 10 83 e0                                      add r1, r3, fp
005ef510  16 33 06 e0                                      and r3, r6, r6, lsl r3
005ef514  78 80 9d e5                                      ldr r8, [sp, #0x78]
005ef518  14 90 9d e5                                      ldr sb, [sp, #0x14]
005ef51c  20 40 9d e5                                      ldr r4, [sp, #0x20]
005ef520  1f 00 d0 e5                                      ldrb r0, [r0, #0x1f]
005ef524  02 20 87 e0                                      add r2, r7, r2
005ef528  08 90 09 e0                                      and sb, sb, r8
005ef52c  71 10 ef e6                                      uxtb r1, r1
005ef530  05 00 54 e1                                      cmp r4, r5
005ef534  40 80 8d e5                                      str r8, [sp, #0x40]
005ef538  04 90 8d e5                                      str sb, [sp, #4]
005ef53c  0c 10 8d e5                                      str r1, [sp, #0xc]
005ef540  14 00 8d e5                                      str r0, [sp, #0x14]
005ef544  05 70 d2 e5                                      ldrb r7, [r2, #5]
005ef548  08 30 8d e5                                      str r3, [sp, #8]
005ef54c  71 01 00 0a                                      beq #0x5efb18
005ef550  10 90 9d e5                                      ldr sb, [sp, #0x10]
005ef554  ec a0 9d e5                                      ldr sl, [sp, #0xec]
005ef558  00 00 59 e3                                      cmp sb, #0
005ef55c  48 a0 8d e5                                      str sl, [sp, #0x48]
005ef560  04 00 00 0a                                      beq #0x5ef578
005ef564  f4 c0 9d e5                                      ldr ip, [sp, #0xf4]
005ef568  00 00 6a e2                                      rsb r0, sl, #0
005ef56c  48 00 8d e5                                      str r0, [sp, #0x48]
005ef570  01 30 4c e2                                      sub r3, ip, #1
005ef574  9a 53 25 e0                                      mla r5, sl, r3, r5
005ef578  f4 10 9d e5                                      ldr r1, [sp, #0xf4]
005ef57c  00 00 51 e3                                      cmp r1, #0
005ef580  1b 01 00 0a                                      beq #0x5ef9f4
005ef584  7c 20 dd e5                                      ldrb r2, [sp, #0x7c]
005ef588  80 30 dd e5                                      ldrb r3, [sp, #0x80]
005ef58c  7d 90 dd e5                                      ldrb sb, [sp, #0x7d]
005ef590  7e 00 dd e5                                      ldrb r0, [sp, #0x7e]
005ef594  3c 20 8d e5                                      str r2, [sp, #0x3c]
005ef598  38 30 8d e5                                      str r3, [sp, #0x38]
005ef59c  6c 80 9d e5                                      ldr r8, [sp, #0x6c]
005ef5a0  81 a0 dd e5                                      ldrb sl, [sp, #0x81]
005ef5a4  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005ef5a8  82 10 dd e5                                      ldrb r1, [sp, #0x82]
005ef5ac  74 20 9d e5                                      ldr r2, [sp, #0x74]
005ef5b0  83 30 dd e5                                      ldrb r3, [sp, #0x83]
005ef5b4  30 90 8d e5                                      str sb, [sp, #0x30]
005ef5b8  20 00 8d e5                                      str r0, [sp, #0x20]
005ef5bc  40 90 9d e5                                      ldr sb, [sp, #0x40]
005ef5c0  34 80 8d e5                                      str r8, [sp, #0x34]
005ef5c4  2c a0 8d e5                                      str sl, [sp, #0x2c]
005ef5c8  24 c0 8d e5                                      str ip, [sp, #0x24]
005ef5cc  1c 10 8d e5                                      str r1, [sp, #0x1c]
005ef5d0  10 20 8d e5                                      str r2, [sp, #0x10]
005ef5d4  18 30 8d e5                                      str r3, [sp, #0x18]
005ef5d8  04 00 a0 e1                                      mov r0, r4
005ef5dc  40 40 8d e5                                      str r4, [sp, #0x40]
005ef5e0  f0 40 9d e5                                      ldr r4, [sp, #0xf0]
005ef5e4  00 00 54 e3                                      cmp r4, #0
005ef5e8  2b 00 00 0a                                      beq #0x5ef69c
005ef5ec  04 10 a0 e1                                      mov r1, r4
005ef5f0  00 20 a0 e3                                      mov r2, #0
005ef5f4  28 60 8d e5                                      str r6, [sp, #0x28]
005ef5f8  4c 50 8d e5                                      str r5, [sp, #0x4c]
005ef5fc  07 30 90 e6                                      ldr r3, [r0], r7
005ef600  28 40 9d e5                                      ldr r4, [sp, #0x28]
005ef604  18 50 9d e5                                      ldr r5, [sp, #0x18]
005ef608  3c 80 9d e5                                      ldr r8, [sp, #0x3c]
005ef60c  04 60 03 e0                                      and r6, r3, r4
005ef610  36 6b a0 e1                                      lsr r6, r6, fp
005ef614  16 65 a0 e1                                      lsl r6, r6, r5
005ef618  30 a0 9d e5                                      ldr sl, [sp, #0x30]
005ef61c  08 50 9d e5                                      ldr r5, [sp, #8]
005ef620  33 48 a0 e1                                      lsr r4, r3, r8
005ef624  33 ca a0 e1                                      lsr ip, r3, sl
005ef628  05 80 03 e0                                      and r8, r3, r5
005ef62c  34 a0 9d e5                                      ldr sl, [sp, #0x34]
005ef630  38 50 9d e5                                      ldr r5, [sp, #0x38]
005ef634  01 10 51 e2                                      subs r1, r1, #1
005ef638  14 45 0a e0                                      and r4, sl, r4, lsl r5
005ef63c  24 a0 9d e5                                      ldr sl, [sp, #0x24]
005ef640  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
005ef644  1c c5 0a e0                                      and ip, sl, ip, lsl r5
005ef648  0c a0 9d e5                                      ldr sl, [sp, #0xc]
005ef64c  20 50 9d e5                                      ldr r5, [sp, #0x20]
005ef650  0c c0 84 e1                                      orr ip, r4, ip
005ef654  38 8a a0 e1                                      lsr r8, r8, sl
005ef658  14 a0 9d e5                                      ldr sl, [sp, #0x14]
005ef65c  33 35 a0 e1                                      lsr r3, r3, r5
005ef660  18 6a 86 e1                                      orr r6, r6, r8, lsl sl
005ef664  10 50 9d e5                                      ldr r5, [sp, #0x10]
005ef668  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
005ef66c  04 a0 9d e5                                      ldr sl, [sp, #4]
005ef670  09 60 06 e0                                      and r6, r6, sb
005ef674  13 38 05 e0                                      and r3, r5, r3, lsl r8
005ef678  0a c0 8c e1                                      orr ip, ip, sl
005ef67c  03 30 8c e1                                      orr r3, ip, r3
005ef680  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
005ef684  06 30 83 e1                                      orr r3, r3, r6
005ef688  02 30 8c e7                                      str r3, [ip, r2]
005ef68c  04 20 82 e2                                      add r2, r2, #4
005ef690  d9 ff ff 1a                                      bne #0x5ef5fc
005ef694  28 60 9d e5                                      ldr r6, [sp, #0x28]
005ef698  4c 50 9d e5                                      ldr r5, [sp, #0x4c]
005ef69c  f4 00 9d e5                                      ldr r0, [sp, #0xf4]
005ef6a0  01 00 50 e2                                      subs r0, r0, #1
005ef6a4  f4 00 8d e5                                      str r0, [sp, #0xf4]
005ef6a8  d1 00 00 0a                                      beq #0x5ef9f4
005ef6ac  40 10 8d e2                                      add r1, sp, #0x40
005ef6b0  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
005ef6b4  02 10 81 e0                                      add r1, r1, r2
005ef6b8  40 10 8d e5                                      str r1, [sp, #0x40]
005ef6bc  03 50 85 e0                                      add r5, r5, r3
005ef6c0  01 00 a0 e1                                      mov r0, r1
005ef6c4  c5 ff ff ea                                      b #0x5ef5e0
005ef6c8  03 20 a0 e1                                      mov r2, r3
005ef6cc  07 10 a0 e1                                      mov r1, r7
005ef6d0  6c 00 8d e2                                      add r0, sp, #0x6c
005ef6d4  9f fc ff eb                                      bl #0x5ee958
005ef6d8  04 80 9d e5                                      ldr r8, [sp, #4]
005ef6dc  28 20 a0 e3                                      mov r2, #0x28
005ef6e0  05 00 54 e1                                      cmp r4, r5
005ef6e4  08 30 96 e7                                      ldr r3, [r6, r8]
005ef6e8  92 37 27 e0                                      mla r7, r2, r7, r3
005ef6ec  15 70 d7 e5                                      ldrb r7, [r7, #0x15]
005ef6f0  14 70 8d e5                                      str r7, [sp, #0x14]
005ef6f4  b5 03 00 0a                                      beq #0x5f05d0
005ef6f8  10 a0 9d e5                                      ldr sl, [sp, #0x10]
005ef6fc  ec b0 9d e5                                      ldr fp, [sp, #0xec]
005ef700  00 00 5a e3                                      cmp sl, #0
005ef704  1c b0 8d e5                                      str fp, [sp, #0x1c]
005ef708  f7 00 00 1a                                      bne #0x5efaec
005ef70c  f4 10 9d e5                                      ldr r1, [sp, #0xf4]
005ef710  00 00 51 e3                                      cmp r1, #0
005ef714  18 50 8d 15                                      strne r5, [sp, #0x18]
005ef718  10 40 8d 15                                      strne r4, [sp, #0x10]
005ef71c  0c 50 8d 15                                      strne r5, [sp, #0xc]
005ef720  b3 00 00 0a                                      beq #0x5ef9f4
005ef724  f0 50 9d e5                                      ldr r5, [sp, #0xf0]
005ef728  00 00 55 e3                                      cmp r5, #0
005ef72c  41 00 00 0a                                      beq #0x5ef838
005ef730  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
005ef734  00 20 a0 e3                                      mov r2, #0
005ef738  14 50 9d e5                                      ldr r5, [sp, #0x14]
005ef73c  88 80 9d e5                                      ldr r8, [sp, #0x88]
005ef740  7c 00 dd e5                                      ldrb r0, [sp, #0x7c]
005ef744  05 30 94 e6                                      ldr r3, [r4], r5
005ef748  7d c0 dd e5                                      ldrb ip, [sp, #0x7d]
005ef74c  90 b0 9d e5                                      ldr fp, [sp, #0x90]
005ef750  08 80 03 e0                                      and r8, r3, r8
005ef754  38 80 a0 e1                                      lsr r8, r8, r0
005ef758  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
005ef75c  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005ef760  81 50 dd e5                                      ldrb r5, [sp, #0x81]
005ef764  00 00 03 e0                                      and r0, r3, r0
005ef768  30 0c a0 e1                                      lsr r0, r0, ip
005ef76c  0b b0 03 e0                                      and fp, r3, fp
005ef770  82 c0 dd e5                                      ldrb ip, [sp, #0x82]
005ef774  3b 66 a0 e1                                      lsr r6, fp, r6
005ef778  10 55 a0 e1                                      lsl r5, r0, r5
005ef77c  16 cc a0 e1                                      lsl ip, r6, ip
005ef780  80 70 dd e5                                      ldrb r7, [sp, #0x80]
005ef784  20 50 8d e5                                      str r5, [sp, #0x20]
005ef788  98 50 9d e5                                      ldr r5, [sp, #0x98]
005ef78c  18 87 a0 e1                                      lsl r8, r8, r7
005ef790  94 90 9d e5                                      ldr sb, [sp, #0x94]
005ef794  a1 70 dd e5                                      ldrb r7, [sp, #0xa1]
005ef798  04 c0 8d e5                                      str ip, [sp, #4]
005ef79c  a0 c0 dd e5                                      ldrb ip, [sp, #0xa0]
005ef7a0  05 50 03 e0                                      and r5, r3, r5
005ef7a4  a3 a0 dd e5                                      ldrb sl, [sp, #0xa3]
005ef7a8  35 57 a0 e1                                      lsr r5, r5, r7
005ef7ac  09 90 03 e0                                      and sb, r3, sb
005ef7b0  9c 70 9d e5                                      ldr r7, [sp, #0x9c]
005ef7b4  39 9c a0 e1                                      lsr sb, sb, ip
005ef7b8  7f 00 dd e5                                      ldrb r0, [sp, #0x7f]
005ef7bc  a2 60 dd e5                                      ldrb r6, [sp, #0xa2]
005ef7c0  07 70 03 e0                                      and r7, r3, r7
005ef7c4  19 8a 88 e1                                      orr r8, r8, sb, lsl sl
005ef7c8  a4 c0 dd e5                                      ldrb ip, [sp, #0xa4]
005ef7cc  08 00 8d e5                                      str r0, [sp, #8]
005ef7d0  37 66 a0 e1                                      lsr r6, r7, r6
005ef7d4  20 70 9d e5                                      ldr r7, [sp, #0x20]
005ef7d8  a5 b0 dd e5                                      ldrb fp, [sp, #0xa5]
005ef7dc  00 06 9d e9                                      ldmib sp, {sb, sl}
005ef7e0  15 0c 87 e1                                      orr r0, r7, r5, lsl ip
005ef7e4  83 c0 dd e5                                      ldrb ip, [sp, #0x83]
005ef7e8  78 50 9d e5                                      ldr r5, [sp, #0x78]
005ef7ec  16 6b 89 e1                                      orr r6, sb, r6, lsl fp
005ef7f0  33 3a a0 e1                                      lsr r3, r3, sl
005ef7f4  13 3c 05 e0                                      and r3, r5, r3, lsl ip
005ef7f8  6c a0 9d e5                                      ldr sl, [sp, #0x6c]
005ef7fc  84 c0 9d e5                                      ldr ip, [sp, #0x84]
005ef800  74 b0 9d e5                                      ldr fp, [sp, #0x74]
005ef804  0a 80 08 e0                                      and r8, r8, sl
005ef808  0c 80 88 e1                                      orr r8, r8, ip
005ef80c  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005ef810  0b 60 06 e0                                      and r6, r6, fp
005ef814  0c b0 9d e5                                      ldr fp, [sp, #0xc]
005ef818  0c 00 00 e0                                      and r0, r0, ip
005ef81c  00 80 88 e1                                      orr r8, r8, r0
005ef820  06 60 88 e1                                      orr r6, r8, r6
005ef824  03 30 86 e1                                      orr r3, r6, r3
005ef828  01 10 51 e2                                      subs r1, r1, #1
005ef82c  02 30 8b e7                                      str r3, [fp, r2]
005ef830  04 20 82 e2                                      add r2, r2, #4
005ef834  bf ff ff 1a                                      bne #0x5ef738
005ef838  f4 c0 9d e5                                      ldr ip, [sp, #0xf4]
005ef83c  01 c0 5c e2                                      subs ip, ip, #1
005ef840  f4 c0 8d e5                                      str ip, [sp, #0xf4]
005ef844  6a 00 00 0a                                      beq #0x5ef9f4
005ef848  10 00 9d e5                                      ldr r0, [sp, #0x10]
005ef84c  18 20 9d e5                                      ldr r2, [sp, #0x18]
005ef850  44 10 9d e5                                      ldr r1, [sp, #0x44]
005ef854  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005ef858  01 40 80 e0                                      add r4, r0, r1
005ef85c  03 20 82 e0                                      add r2, r2, r3
005ef860  18 20 8d e5                                      str r2, [sp, #0x18]
005ef864  0c 20 8d e5                                      str r2, [sp, #0xc]
005ef868  10 40 8d e5                                      str r4, [sp, #0x10]
005ef86c  ac ff ff ea                                      b #0x5ef724
005ef870  07 10 a0 e1                                      mov r1, r7
005ef874  03 20 a0 e1                                      mov r2, r3
005ef878  6c 00 8d e2                                      add r0, sp, #0x6c
005ef87c  c3 fb ff eb                                      bl #0x5ee790
005ef880  05 00 54 e1                                      cmp r4, r5
005ef884  15 b0 da e5                                      ldrb fp, [sl, #0x15]
005ef888  4f 01 00 0a                                      beq #0x5efdcc
005ef88c  10 20 9d e5                                      ldr r2, [sp, #0x10]
005ef890  ec 30 9d e5                                      ldr r3, [sp, #0xec]
005ef894  00 00 52 e3                                      cmp r2, #0
005ef898  10 30 8d e5                                      str r3, [sp, #0x10]
005ef89c  05 00 00 0a                                      beq #0x5ef8b8
005ef8a0  f4 60 9d e5                                      ldr r6, [sp, #0xf4]
005ef8a4  ec 70 9d e5                                      ldr r7, [sp, #0xec]
005ef8a8  01 30 46 e2                                      sub r3, r6, #1
005ef8ac  97 53 25 e0                                      mla r5, r7, r3, r5
005ef8b0  00 80 67 e2                                      rsb r8, r7, #0
005ef8b4  10 80 8d e5                                      str r8, [sp, #0x10]
005ef8b8  f4 90 9d e5                                      ldr sb, [sp, #0xf4]
005ef8bc  00 00 59 e3                                      cmp sb, #0
005ef8c0  0c 50 8d 15                                      strne r5, [sp, #0xc]
005ef8c4  14 40 8d 15                                      strne r4, [sp, #0x14]
005ef8c8  08 50 8d 15                                      strne r5, [sp, #8]
005ef8cc  48 00 00 0a                                      beq #0x5ef9f4
005ef8d0  f0 60 9d e5                                      ldr r6, [sp, #0xf0]
005ef8d4  00 00 56 e3                                      cmp r6, #0
005ef8d8  37 00 00 0a                                      beq #0x5ef9bc
005ef8dc  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
005ef8e0  00 20 a0 e3                                      mov r2, #0
005ef8e4  0b 30 94 e6                                      ldr r3, [r4], fp
005ef8e8  94 00 9d e5                                      ldr r0, [sp, #0x94]
005ef8ec  7c c0 dd e5                                      ldrb ip, [sp, #0x7c]
005ef8f0  7d 50 dd e5                                      ldrb r5, [sp, #0x7d]
005ef8f4  00 00 03 e0                                      and r0, r3, r0
005ef8f8  30 0c a0 e1                                      lsr r0, r0, ip
005ef8fc  98 c0 9d e5                                      ldr ip, [sp, #0x98]
005ef900  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005ef904  80 00 a0 e1                                      lsl r0, r0, #1
005ef908  0c c0 03 e0                                      and ip, r3, ip
005ef90c  3c c5 a0 e1                                      lsr ip, ip, r5
005ef910  9c 50 9d e5                                      ldr r5, [sp, #0x9c]
005ef914  8c c0 a0 e1                                      lsl ip, ip, #1
005ef918  7f 70 dd e5                                      ldrb r7, [sp, #0x7f]
005ef91c  05 50 03 e0                                      and r5, r3, r5
005ef920  35 56 a0 e1                                      lsr r5, r5, r6
005ef924  88 60 9d e5                                      ldr r6, [sp, #0x88]
005ef928  85 50 a0 e1                                      lsl r5, r5, #1
005ef92c  80 80 dd e5                                      ldrb r8, [sp, #0x80]
005ef930  b0 a0 96 e1                                      ldrh sl, [r6, r0]
005ef934  8c 60 9d e5                                      ldr r6, [sp, #0x8c]
005ef938  a0 00 dd e5                                      ldrb r0, [sp, #0xa0]
005ef93c  01 10 51 e2                                      subs r1, r1, #1
005ef940  bc 90 96 e1                                      ldrh sb, [r6, ip]
005ef944  90 60 9d e5                                      ldr r6, [sp, #0x90]
005ef948  a1 c0 dd e5                                      ldrb ip, [sp, #0xa1]
005ef94c  5a a0 a0 e1                                      asr sl, sl, r0
005ef950  b5 60 96 e1                                      ldrh r6, [r6, r5]
005ef954  a2 50 dd e5                                      ldrb r5, [sp, #0xa2]
005ef958  04 70 8d e5                                      str r7, [sp, #4]
005ef95c  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
005ef960  81 00 dd e5                                      ldrb r0, [sp, #0x81]
005ef964  56 55 a0 e1                                      asr r5, r6, r5
005ef968  70 60 9d e5                                      ldr r6, [sp, #0x70]
005ef96c  59 cc a0 e1                                      asr ip, sb, ip
005ef970  1a 78 07 e0                                      and r7, r7, sl, lsl r8
005ef974  04 a0 9d e5                                      ldr sl, [sp, #4]
005ef978  1c 00 06 e0                                      and r0, r6, ip, lsl r0
005ef97c  82 90 dd e5                                      ldrb sb, [sp, #0x82]
005ef980  74 60 9d e5                                      ldr r6, [sp, #0x74]
005ef984  83 80 dd e5                                      ldrb r8, [sp, #0x83]
005ef988  78 c0 9d e5                                      ldr ip, [sp, #0x78]
005ef98c  33 3a a0 e1                                      lsr r3, r3, sl
005ef990  15 59 06 e0                                      and r5, r6, r5, lsl sb
005ef994  13 38 0c e0                                      and r3, ip, r3, lsl r8
005ef998  84 80 9d e5                                      ldr r8, [sp, #0x84]
005ef99c  08 c0 9d e5                                      ldr ip, [sp, #8]
005ef9a0  08 70 87 e1                                      orr r7, r7, r8
005ef9a4  00 00 87 e1                                      orr r0, r7, r0
005ef9a8  05 50 80 e1                                      orr r5, r0, r5
005ef9ac  03 30 85 e1                                      orr r3, r5, r3
005ef9b0  02 30 8c e7                                      str r3, [ip, r2]
005ef9b4  04 20 82 e2                                      add r2, r2, #4
005ef9b8  c9 ff ff 1a                                      bne #0x5ef8e4
005ef9bc  f4 00 9d e5                                      ldr r0, [sp, #0xf4]
005ef9c0  01 00 50 e2                                      subs r0, r0, #1
005ef9c4  f4 00 8d e5                                      str r0, [sp, #0xf4]
005ef9c8  09 00 00 0a                                      beq #0x5ef9f4
005ef9cc  14 10 9d e5                                      ldr r1, [sp, #0x14]
005ef9d0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005ef9d4  44 20 9d e5                                      ldr r2, [sp, #0x44]
005ef9d8  10 50 9d e5                                      ldr r5, [sp, #0x10]
005ef9dc  02 40 81 e0                                      add r4, r1, r2
005ef9e0  05 30 83 e0                                      add r3, r3, r5
005ef9e4  0c 30 8d e5                                      str r3, [sp, #0xc]
005ef9e8  08 30 8d e5                                      str r3, [sp, #8]
005ef9ec  14 40 8d e5                                      str r4, [sp, #0x14]
005ef9f0  b6 ff ff ea                                      b #0x5ef8d0
005ef9f4  01 00 a0 e3                                      mov r0, #1
005ef9f8  c4 d0 8d e2                                      add sp, sp, #0xc4
005ef9fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005efa00  6c 80 8d e2                                      add r8, sp, #0x6c
005efa04  07 10 a0 e1                                      mov r1, r7
005efa08  03 20 a0 e1                                      mov r2, r3
005efa0c  08 00 a0 e1                                      mov r0, r8
005efa10  c1 fc ff eb                                      bl #0x5eed1c
005efa14  05 00 54 e1                                      cmp r4, r5
005efa18  15 60 da e5                                      ldrb r6, [sl, #0x15]
005efa1c  9b 01 00 0a                                      beq #0x5f0090
005efa20  10 00 9d e5                                      ldr r0, [sp, #0x10]
005efa24  ec 10 9d e5                                      ldr r1, [sp, #0xec]
005efa28  00 00 50 e3                                      cmp r0, #0
005efa2c  04 10 8d e5                                      str r1, [sp, #4]
005efa30  04 00 00 0a                                      beq #0x5efa48
005efa34  f4 20 9d e5                                      ldr r2, [sp, #0xf4]
005efa38  01 30 42 e2                                      sub r3, r2, #1
005efa3c  91 53 25 e0                                      mla r5, r1, r3, r5
005efa40  00 30 61 e2                                      rsb r3, r1, #0
005efa44  04 30 8d e5                                      str r3, [sp, #4]
005efa48  f4 70 9d e5                                      ldr r7, [sp, #0xf4]
005efa4c  00 00 57 e3                                      cmp r7, #0
005efa50  05 90 a0 11                                      movne sb, r5
005efa54  04 b0 a0 11                                      movne fp, r4
005efa58  e5 ff ff 0a                                      beq #0x5ef9f4
005efa5c  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
005efa60  00 00 51 e3                                      cmp r1, #0
005efa64  01 a0 a0 11                                      movne sl, r1
005efa68  00 70 a0 13                                      movne r7, #0
005efa6c  06 00 00 0a                                      beq #0x5efa8c
005efa70  06 10 94 e6                                      ldr r1, [r4], r6
005efa74  08 00 a0 e1                                      mov r0, r8
005efa78  55 f9 ff eb                                      bl #0x5edfd4
005efa7c  01 a0 5a e2                                      subs sl, sl, #1
005efa80  07 00 85 e7                                      str r0, [r5, r7]
005efa84  04 70 87 e2                                      add r7, r7, #4
005efa88  f8 ff ff 1a                                      bne #0x5efa70
005efa8c  f4 a0 9d e5                                      ldr sl, [sp, #0xf4]
005efa90  01 a0 5a e2                                      subs sl, sl, #1
005efa94  f4 a0 8d e5                                      str sl, [sp, #0xf4]
005efa98  d5 ff ff 0a                                      beq #0x5ef9f4
005efa9c  44 c0 9d e5                                      ldr ip, [sp, #0x44]
005efaa0  04 00 9d e5                                      ldr r0, [sp, #4]
005efaa4  0c 40 8b e0                                      add r4, fp, ip
005efaa8  00 90 89 e0                                      add sb, sb, r0
005efaac  09 50 a0 e1                                      mov r5, sb
005efab0  04 b0 a0 e1                                      mov fp, r4
005efab4  e8 ff ff ea                                      b #0x5efa5c
005efab8  00 20 92 e7                                      ldr r2, [r2, r0]
005efabc  01 00 12 e3                                      tst r2, #1
005efac0  00 80 e0 03                                      mvneq r8, #0
005efac4  14 80 8d 05                                      streq r8, [sp, #0x14]
005efac8  60 fe ff 0a                                      beq #0x5ef450
005efacc  5d fe ff ea                                      b #0x5ef448
005efad0  91 07 01 e0                                      mul r1, r1, r7
005efad4  01 20 92 e7                                      ldr r2, [r2, r1]
005efad8  01 00 12 e3                                      tst r2, #1
005efadc  00 b0 e0 03                                      mvneq fp, #0
005efae0  08 b0 8d 05                                      streq fp, [sp, #8]
005efae4  6e fd ff 0a                                      beq #0x5ef0a4
005efae8  6b fd ff ea                                      b #0x5ef09c
005efaec  f4 c0 9d e5                                      ldr ip, [sp, #0xf4]
005efaf0  00 00 6b e2                                      rsb r0, fp, #0
005efaf4  1c 00 8d e5                                      str r0, [sp, #0x1c]
005efaf8  01 30 4c e2                                      sub r3, ip, #1
005efafc  9b 53 25 e0                                      mla r5, fp, r3, r5
005efb00  01 ff ff ea                                      b #0x5ef70c
005efb04  83 00 54 e1                                      cmp r4, r3, lsl #1
005efb08  07 40 84 d0                                      addle r4, r4, r7
005efb0c  04 30 63 d0                                      rsble r3, r3, r4
005efb10  14 30 c1 d5                                      strble r3, [r1, #0x14]
005efb14  68 fe ff ea                                      b #0x5ef4bc
005efb18  10 a0 9d e5                                      ldr sl, [sp, #0x10]
005efb1c  00 00 5a e3                                      cmp sl, #0
005efb20  1a 02 00 1a                                      bne #0x5f0390
005efb24  f4 c0 9d e5                                      ldr ip, [sp, #0xf4]
005efb28  00 00 5c e3                                      cmp ip, #0
005efb2c  b0 ff ff 0a                                      beq #0x5ef9f4
005efb30  7c 00 dd e5                                      ldrb r0, [sp, #0x7c]
005efb34  81 50 dd e5                                      ldrb r5, [sp, #0x81]
005efb38  7e 90 dd e5                                      ldrb sb, [sp, #0x7e]
005efb3c  82 a0 dd e5                                      ldrb sl, [sp, #0x82]
005efb40  48 00 8d e5                                      str r0, [sp, #0x48]
005efb44  80 10 dd e5                                      ldrb r1, [sp, #0x80]
005efb48  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
005efb4c  7d 30 dd e5                                      ldrb r3, [sp, #0x7d]
005efb50  70 80 9d e5                                      ldr r8, [sp, #0x70]
005efb54  74 c0 9d e5                                      ldr ip, [sp, #0x74]
005efb58  83 00 dd e5                                      ldrb r0, [sp, #0x83]
005efb5c  30 50 8d e5                                      str r5, [sp, #0x30]
005efb60  24 90 8d e5                                      str sb, [sp, #0x24]
005efb64  20 a0 8d e5                                      str sl, [sp, #0x20]
005efb68  3c 10 8d e5                                      str r1, [sp, #0x3c]
005efb6c  38 20 8d e5                                      str r2, [sp, #0x38]
005efb70  34 30 8d e5                                      str r3, [sp, #0x34]
005efb74  2c 80 8d e5                                      str r8, [sp, #0x2c]
005efb78  1c c0 8d e5                                      str ip, [sp, #0x1c]
005efb7c  10 00 8d e5                                      str r0, [sp, #0x10]
005efb80  4c 40 8d e5                                      str r4, [sp, #0x4c]
005efb84  04 a0 a0 e1                                      mov sl, r4
005efb88  04 50 a0 e1                                      mov r5, r4
005efb8c  b0 90 8d e2                                      add sb, sp, #0xb0
005efb90  50 40 8d e5                                      str r4, [sp, #0x50]
005efb94  f0 80 9d e5                                      ldr r8, [sp, #0xf0]
005efb98  00 00 58 e3                                      cmp r8, #0
005efb9c  00 40 a0 13                                      movne r4, #0
005efba0  18 a0 8d 15                                      strne sl, [sp, #0x18]
005efba4  28 60 8d 15                                      strne r6, [sp, #0x28]
005efba8  2c 00 00 0a                                      beq #0x5efc60
005efbac  05 10 a0 e1                                      mov r1, r5
005efbb0  07 20 a0 e1                                      mov r2, r7
005efbb4  09 00 a0 e1                                      mov r0, sb
005efbb8  2a 7b f4 eb                                      bl #0x30e868
005efbbc  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
005efbc0  28 10 9d e5                                      ldr r1, [sp, #0x28]
005efbc4  10 60 9d e5                                      ldr r6, [sp, #0x10]
005efbc8  34 a0 9d e5                                      ldr sl, [sp, #0x34]
005efbcc  01 20 03 e0                                      and r2, r3, r1
005efbd0  32 2b a0 e1                                      lsr r2, r2, fp
005efbd4  12 26 a0 e1                                      lsl r2, r2, r6
005efbd8  48 10 9d e5                                      ldr r1, [sp, #0x48]
005efbdc  08 60 9d e5                                      ldr r6, [sp, #8]
005efbe0  33 ca a0 e1                                      lsr ip, r3, sl
005efbe4  33 01 a0 e1                                      lsr r0, r3, r1
005efbe8  0c a0 9d e5                                      ldr sl, [sp, #0xc]
005efbec  03 10 06 e0                                      and r1, r6, r3
005efbf0  24 60 9d e5                                      ldr r6, [sp, #0x24]
005efbf4  31 1a a0 e1                                      lsr r1, r1, sl
005efbf8  33 36 a0 e1                                      lsr r3, r3, r6
005efbfc  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
005efc00  30 60 9d e5                                      ldr r6, [sp, #0x30]
005efc04  01 80 58 e2                                      subs r8, r8, #1
005efc08  07 50 85 e0                                      add r5, r5, r7
005efc0c  1c c6 0a e0                                      and ip, sl, ip, lsl r6
005efc10  38 a0 9d e5                                      ldr sl, [sp, #0x38]
005efc14  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
005efc18  10 06 0a e0                                      and r0, sl, r0, lsl r6
005efc1c  14 a0 9d e5                                      ldr sl, [sp, #0x14]
005efc20  20 60 9d e5                                      ldr r6, [sp, #0x20]
005efc24  00 c0 8c e1                                      orr ip, ip, r0
005efc28  11 2a 82 e1                                      orr r2, r2, r1, lsl sl
005efc2c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005efc30  40 a0 9d e5                                      ldr sl, [sp, #0x40]
005efc34  18 00 9d e5                                      ldr r0, [sp, #0x18]
005efc38  13 36 01 e0                                      and r3, r1, r3, lsl r6
005efc3c  03 30 8c e1                                      orr r3, ip, r3
005efc40  04 c0 9d e5                                      ldr ip, [sp, #4]
005efc44  0a 20 02 e0                                      and r2, r2, sl
005efc48  02 30 83 e1                                      orr r3, r3, r2
005efc4c  0c 30 83 e1                                      orr r3, r3, ip
005efc50  04 30 80 e7                                      str r3, [r0, r4]
005efc54  04 40 84 e2                                      add r4, r4, #4
005efc58  d3 ff ff 1a                                      bne #0x5efbac
005efc5c  28 60 9d e5                                      ldr r6, [sp, #0x28]
005efc60  f4 10 9d e5                                      ldr r1, [sp, #0xf4]
005efc64  01 10 51 e2                                      subs r1, r1, #1
005efc68  f4 10 8d e5                                      str r1, [sp, #0xf4]
005efc6c  60 ff ff 0a                                      beq #0x5ef9f4
005efc70  50 20 9d e5                                      ldr r2, [sp, #0x50]
005efc74  4c 40 9d e5                                      ldr r4, [sp, #0x4c]
005efc78  ec 50 9d e5                                      ldr r5, [sp, #0xec]
005efc7c  44 30 9d e5                                      ldr r3, [sp, #0x44]
005efc80  05 40 84 e0                                      add r4, r4, r5
005efc84  03 20 82 e0                                      add r2, r2, r3
005efc88  50 20 8d e5                                      str r2, [sp, #0x50]
005efc8c  4c 40 8d e5                                      str r4, [sp, #0x4c]
005efc90  04 a0 a0 e1                                      mov sl, r4
005efc94  02 50 a0 e1                                      mov r5, r2
005efc98  bd ff ff ea                                      b #0x5efb94
005efc9c  10 a0 9d e5                                      ldr sl, [sp, #0x10]
005efca0  00 00 5a e3                                      cmp sl, #0
005efca4  47 01 00 1a                                      bne #0x5f01c8
005efca8  f4 c0 9d e5                                      ldr ip, [sp, #0xf4]
005efcac  00 00 5c e3                                      cmp ip, #0
005efcb0  4f ff ff 0a                                      beq #0x5ef9f4
005efcb4  b0 00 8d e2                                      add r0, sp, #0xb0
005efcb8  14 40 8d e5                                      str r4, [sp, #0x14]
005efcbc  10 40 8d e5                                      str r4, [sp, #0x10]
005efcc0  08 40 8d e5                                      str r4, [sp, #8]
005efcc4  0c 00 8d e5                                      str r0, [sp, #0xc]
005efcc8  04 b0 8d e5                                      str fp, [sp, #4]
005efccc  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
005efcd0  00 00 50 e3                                      cmp r0, #0
005efcd4  2c 00 00 0a                                      beq #0x5efd8c
005efcd8  f0 b0 9d e5                                      ldr fp, [sp, #0xf0]
005efcdc  00 50 a0 e3                                      mov r5, #0
005efce0  04 10 a0 e1                                      mov r1, r4
005efce4  04 20 9d e5                                      ldr r2, [sp, #4]
005efce8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005efcec  dd 7a f4 eb                                      bl #0x30e868
005efcf0  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
005efcf4  90 20 9d e5                                      ldr r2, [sp, #0x90]
005efcf8  7f 10 dd e5                                      ldrb r1, [sp, #0x7f]
005efcfc  7e 70 dd e5                                      ldrb r7, [sp, #0x7e]
005efd00  7c 90 dd e5                                      ldrb sb, [sp, #0x7c]
005efd04  02 20 03 e0                                      and r2, r3, r2
005efd08  7d 60 dd e5                                      ldrb r6, [sp, #0x7d]
005efd0c  32 21 a0 e1                                      lsr r2, r2, r1
005efd10  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
005efd14  33 66 a0 e1                                      lsr r6, r3, r6
005efd18  82 20 a0 e1                                      lsl r2, r2, #1
005efd1c  33 99 a0 e1                                      lsr sb, r3, sb
005efd20  81 c0 dd e5                                      ldrb ip, [sp, #0x81]
005efd24  33 37 a0 e1                                      lsr r3, r3, r7
005efd28  70 70 9d e5                                      ldr r7, [sp, #0x70]
005efd2c  b2 00 91 e1                                      ldrh r0, [r1, r2]
005efd30  80 a0 dd e5                                      ldrb sl, [sp, #0x80]
005efd34  88 10 dd e5                                      ldrb r1, [sp, #0x88]
005efd38  6c 80 9d e5                                      ldr r8, [sp, #0x6c]
005efd3c  16 cc 07 e0                                      and ip, r7, r6, lsl ip
005efd40  82 20 dd e5                                      ldrb r2, [sp, #0x82]
005efd44  74 70 9d e5                                      ldr r7, [sp, #0x74]
005efd48  19 8a 08 e0                                      and r8, r8, sb, lsl sl
005efd4c  50 11 a0 e1                                      asr r1, r0, r1
005efd50  83 a0 dd e5                                      ldrb sl, [sp, #0x83]
005efd54  78 00 9d e5                                      ldr r0, [sp, #0x78]
005efd58  13 32 07 e0                                      and r3, r7, r3, lsl r2
005efd5c  11 1a 00 e0                                      and r1, r0, r1, lsl sl
005efd60  84 a0 9d e5                                      ldr sl, [sp, #0x84]
005efd64  c0 00 9d e9                                      ldmib sp, {r6, r7}
005efd68  0a 80 88 e1                                      orr r8, r8, sl
005efd6c  0c c0 88 e1                                      orr ip, r8, ip
005efd70  03 30 8c e1                                      orr r3, ip, r3
005efd74  01 10 83 e1                                      orr r1, r3, r1
005efd78  01 b0 5b e2                                      subs fp, fp, #1
005efd7c  05 10 87 e7                                      str r1, [r7, r5]
005efd80  06 40 84 e0                                      add r4, r4, r6
005efd84  04 50 85 e2                                      add r5, r5, #4
005efd88  d4 ff ff 1a                                      bne #0x5efce0
005efd8c  f4 80 9d e5                                      ldr r8, [sp, #0xf4]
005efd90  01 80 58 e2                                      subs r8, r8, #1
005efd94  f4 80 8d e5                                      str r8, [sp, #0xf4]
005efd98  15 ff ff 0a                                      beq #0x5ef9f4
005efd9c  10 90 9d e5                                      ldr sb, [sp, #0x10]
005efda0  14 b0 9d e5                                      ldr fp, [sp, #0x14]
005efda4  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005efda8  ec c0 9d e5                                      ldr ip, [sp, #0xec]
005efdac  0a 40 89 e0                                      add r4, sb, sl
005efdb0  0c b0 8b e0                                      add fp, fp, ip
005efdb4  14 b0 8d e5                                      str fp, [sp, #0x14]
005efdb8  08 b0 8d e5                                      str fp, [sp, #8]
005efdbc  10 40 8d e5                                      str r4, [sp, #0x10]
005efdc0  c1 ff ff ea                                      b #0x5efccc
; mapping-symbol data/literal pool
005efdc4  8c 5b 3a 00 34 1f 00 00                          .byte 0x8c, 0x5b, 0x3a, 0x00, 0x34, 0x1f, 0x00, 0x00
; decoder-mode: arm
005efdcc  10 50 9d e5                                      ldr r5, [sp, #0x10]
005efdd0  00 00 55 e3                                      cmp r5, #0
005efdd4  87 02 00 1a                                      bne #0x5f07f8
005efdd8  f4 60 9d e5                                      ldr r6, [sp, #0xf4]
005efddc  00 00 56 e3                                      cmp r6, #0
005efde0  03 ff ff 0a                                      beq #0x5ef9f4
005efde4  b0 70 8d e2                                      add r7, sp, #0xb0
005efde8  14 40 8d e5                                      str r4, [sp, #0x14]
005efdec  08 40 8d e5                                      str r4, [sp, #8]
005efdf0  04 50 a0 e1                                      mov r5, r4
005efdf4  0c 70 8d e5                                      str r7, [sp, #0xc]
005efdf8  04 b0 8d e5                                      str fp, [sp, #4]
005efdfc  10 40 8d e5                                      str r4, [sp, #0x10]
005efe00  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
005efe04  00 00 51 e3                                      cmp r1, #0
005efe08  3b 00 00 0a                                      beq #0x5efefc
005efe0c  f0 b0 9d e5                                      ldr fp, [sp, #0xf0]
005efe10  00 40 a0 e3                                      mov r4, #0
005efe14  05 10 a0 e1                                      mov r1, r5
005efe18  04 20 9d e5                                      ldr r2, [sp, #4]
005efe1c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005efe20  90 7a f4 eb                                      bl #0x30e868
005efe24  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
005efe28  94 10 9d e5                                      ldr r1, [sp, #0x94]
005efe2c  7c 20 dd e5                                      ldrb r2, [sp, #0x7c]
005efe30  7d 00 dd e5                                      ldrb r0, [sp, #0x7d]
005efe34  01 10 03 e0                                      and r1, r3, r1
005efe38  31 12 a0 e1                                      lsr r1, r1, r2
005efe3c  98 20 9d e5                                      ldr r2, [sp, #0x98]
005efe40  7e c0 dd e5                                      ldrb ip, [sp, #0x7e]
005efe44  90 60 9d e5                                      ldr r6, [sp, #0x90]
005efe48  02 20 03 e0                                      and r2, r3, r2
005efe4c  32 20 a0 e1                                      lsr r2, r2, r0
005efe50  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
005efe54  81 10 a0 e1                                      lsl r1, r1, #1
005efe58  82 20 a0 e1                                      lsl r2, r2, #1
005efe5c  00 00 03 e0                                      and r0, r3, r0
005efe60  30 0c a0 e1                                      lsr r0, r0, ip
005efe64  88 c0 9d e5                                      ldr ip, [sp, #0x88]
005efe68  80 00 a0 e1                                      lsl r0, r0, #1
005efe6c  b0 70 96 e1                                      ldrh r7, [r6, r0]
005efe70  b1 90 9c e1                                      ldrh sb, [ip, r1]
005efe74  8c c0 9d e5                                      ldr ip, [sp, #0x8c]
005efe78  a2 60 dd e5                                      ldrb r6, [sp, #0xa2]
005efe7c  a0 10 dd e5                                      ldrb r1, [sp, #0xa0]
005efe80  b2 c0 9c e1                                      ldrh ip, [ip, r2]
005efe84  a1 20 dd e5                                      ldrb r2, [sp, #0xa1]
005efe88  81 00 dd e5                                      ldrb r0, [sp, #0x81]
005efe8c  57 66 a0 e1                                      asr r6, r7, r6
005efe90  70 70 9d e5                                      ldr r7, [sp, #0x70]
005efe94  80 a0 dd e5                                      ldrb sl, [sp, #0x80]
005efe98  59 91 a0 e1                                      asr sb, sb, r1
005efe9c  5c c2 a0 e1                                      asr ip, ip, r2
005efea0  7f 10 dd e5                                      ldrb r1, [sp, #0x7f]
005efea4  6c 80 9d e5                                      ldr r8, [sp, #0x6c]
005efea8  82 20 dd e5                                      ldrb r2, [sp, #0x82]
005efeac  1c 00 07 e0                                      and r0, r7, ip, lsl r0
005efeb0  74 70 9d e5                                      ldr r7, [sp, #0x74]
005efeb4  19 8a 08 e0                                      and r8, r8, sb, lsl sl
005efeb8  33 31 a0 e1                                      lsr r3, r3, r1
005efebc  83 a0 dd e5                                      ldrb sl, [sp, #0x83]
005efec0  78 10 9d e5                                      ldr r1, [sp, #0x78]
005efec4  16 62 07 e0                                      and r6, r7, r6, lsl r2
005efec8  13 3a 01 e0                                      and r3, r1, r3, lsl sl
005efecc  84 a0 9d e5                                      ldr sl, [sp, #0x84]
005efed0  04 70 9d e5                                      ldr r7, [sp, #4]
005efed4  01 b0 5b e2                                      subs fp, fp, #1
005efed8  0a 80 88 e1                                      orr r8, r8, sl
005efedc  00 00 88 e1                                      orr r0, r8, r0
005efee0  08 80 9d e5                                      ldr r8, [sp, #8]
005efee4  06 60 80 e1                                      orr r6, r0, r6
005efee8  03 30 86 e1                                      orr r3, r6, r3
005efeec  04 30 88 e7                                      str r3, [r8, r4]
005efef0  07 50 85 e0                                      add r5, r5, r7
005efef4  04 40 84 e2                                      add r4, r4, #4
005efef8  c5 ff ff 1a                                      bne #0x5efe14
005efefc  f4 90 9d e5                                      ldr sb, [sp, #0xf4]
005eff00  01 90 59 e2                                      subs sb, sb, #1
005eff04  f4 90 8d e5                                      str sb, [sp, #0xf4]
005eff08  b9 fe ff 0a                                      beq #0x5ef9f4
005eff0c  10 a0 9d e5                                      ldr sl, [sp, #0x10]
005eff10  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005eff14  44 b0 9d e5                                      ldr fp, [sp, #0x44]
005eff18  ec 00 9d e5                                      ldr r0, [sp, #0xec]
005eff1c  0b a0 8a e0                                      add sl, sl, fp
005eff20  00 c0 8c e0                                      add ip, ip, r0
005eff24  10 a0 8d e5                                      str sl, [sp, #0x10]
005eff28  14 c0 8d e5                                      str ip, [sp, #0x14]
005eff2c  08 c0 8d e5                                      str ip, [sp, #8]
005eff30  0a 50 a0 e1                                      mov r5, sl
005eff34  b1 ff ff ea                                      b #0x5efe00
005eff38  10 50 9d e5                                      ldr r5, [sp, #0x10]
005eff3c  00 00 55 e3                                      cmp r5, #0
005eff40  e5 02 00 1a                                      bne #0x5f0adc
005eff44  f4 90 9d e5                                      ldr sb, [sp, #0xf4]
005eff48  00 00 59 e3                                      cmp sb, #0
005eff4c  a8 fe ff 0a                                      beq #0x5ef9f4
005eff50  80 a0 dd e5                                      ldrb sl, [sp, #0x80]
005eff54  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
005eff58  7d 00 dd e5                                      ldrb r0, [sp, #0x7d]
005eff5c  74 90 9d e5                                      ldr sb, [sp, #0x74]
005eff60  30 a0 8d e5                                      str sl, [sp, #0x30]
005eff64  2c c0 8d e5                                      str ip, [sp, #0x2c]
005eff68  7f a0 dd e5                                      ldrb sl, [sp, #0x7f]
005eff6c  81 10 dd e5                                      ldrb r1, [sp, #0x81]
005eff70  70 20 9d e5                                      ldr r2, [sp, #0x70]
005eff74  7e 30 dd e5                                      ldrb r3, [sp, #0x7e]
005eff78  82 50 dd e5                                      ldrb r5, [sp, #0x82]
005eff7c  83 c0 dd e5                                      ldrb ip, [sp, #0x83]
005eff80  7c b0 dd e5                                      ldrb fp, [sp, #0x7c]
005eff84  24 00 8d e5                                      str r0, [sp, #0x24]
005eff88  b0 00 8d e2                                      add r0, sp, #0xb0
005eff8c  0c 90 8d e5                                      str sb, [sp, #0xc]
005eff90  08 a0 8d e5                                      str sl, [sp, #8]
005eff94  20 10 8d e5                                      str r1, [sp, #0x20]
005eff98  1c 20 8d e5                                      str r2, [sp, #0x1c]
005eff9c  10 30 8d e5                                      str r3, [sp, #0x10]
005effa0  14 50 8d e5                                      str r5, [sp, #0x14]
005effa4  04 c0 8d e5                                      str ip, [sp, #4]
005effa8  38 40 8d e5                                      str r4, [sp, #0x38]
005effac  3c 40 8d e5                                      str r4, [sp, #0x3c]
005effb0  04 90 a0 e1                                      mov sb, r4
005effb4  34 00 8d e5                                      str r0, [sp, #0x34]
005effb8  07 a0 a0 e1                                      mov sl, r7
005effbc  f0 c0 9d e5                                      ldr ip, [sp, #0xf0]
005effc0  00 00 5c e3                                      cmp ip, #0
005effc4  23 00 00 0a                                      beq #0x5f0058
005effc8  f0 70 9d e5                                      ldr r7, [sp, #0xf0]
005effcc  00 50 a0 e3                                      mov r5, #0
005effd0  18 90 8d e5                                      str sb, [sp, #0x18]
005effd4  04 10 a0 e1                                      mov r1, r4
005effd8  08 20 a0 e1                                      mov r2, r8
005effdc  34 00 9d e5                                      ldr r0, [sp, #0x34]
005effe0  20 7a f4 eb                                      bl #0x30e868
005effe4  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
005effe8  24 90 9d e5                                      ldr sb, [sp, #0x24]
005effec  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005efff0  33 2b a0 e1                                      lsr r2, r3, fp
005efff4  33 19 a0 e1                                      lsr r1, r3, sb
005efff8  33 0c a0 e1                                      lsr r0, r3, ip
005efffc  1c 90 9d e5                                      ldr sb, [sp, #0x1c]
005f0000  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005f0004  01 70 57 e2                                      subs r7, r7, #1
005f0008  08 40 84 e0                                      add r4, r4, r8
005f000c  11 1c 09 e0                                      and r1, sb, r1, lsl ip
005f0010  2c 90 9d e5                                      ldr sb, [sp, #0x2c]
005f0014  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005f0018  12 2c 09 e0                                      and r2, sb, r2, lsl ip
005f001c  08 90 9d e5                                      ldr sb, [sp, #8]
005f0020  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005f0024  02 20 81 e1                                      orr r2, r1, r2
005f0028  33 39 a0 e1                                      lsr r3, r3, sb
005f002c  14 90 9d e5                                      ldr sb, [sp, #0x14]
005f0030  10 09 0c e0                                      and r0, ip, r0, lsl sb
005f0034  04 c0 9d e5                                      ldr ip, [sp, #4]
005f0038  00 00 82 e1                                      orr r0, r2, r0
005f003c  13 3c 06 e0                                      and r3, r6, r3, lsl ip
005f0040  03 30 80 e1                                      orr r3, r0, r3
005f0044  18 00 9d e5                                      ldr r0, [sp, #0x18]
005f0048  0a 30 83 e1                                      orr r3, r3, sl
005f004c  05 30 80 e7                                      str r3, [r0, r5]
005f0050  04 50 85 e2                                      add r5, r5, #4
005f0054  de ff ff 1a                                      bne #0x5effd4
005f0058  f4 10 9d e5                                      ldr r1, [sp, #0xf4]
005f005c  01 10 51 e2                                      subs r1, r1, #1
005f0060  f4 10 8d e5                                      str r1, [sp, #0xf4]
005f0064  62 fe ff 0a                                      beq #0x5ef9f4
005f0068  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
005f006c  38 50 9d e5                                      ldr r5, [sp, #0x38]
005f0070  44 30 9d e5                                      ldr r3, [sp, #0x44]
005f0074  ec 70 9d e5                                      ldr r7, [sp, #0xec]
005f0078  03 40 82 e0                                      add r4, r2, r3
005f007c  07 50 85 e0                                      add r5, r5, r7
005f0080  38 50 8d e5                                      str r5, [sp, #0x38]
005f0084  05 90 a0 e1                                      mov sb, r5
005f0088  3c 40 8d e5                                      str r4, [sp, #0x3c]
005f008c  ca ff ff ea                                      b #0x5effbc
005f0090  10 20 9d e5                                      ldr r2, [sp, #0x10]
005f0094  00 00 52 e3                                      cmp r2, #0
005f0098  af 01 00 1a                                      bne #0x5f075c
005f009c  f4 30 9d e5                                      ldr r3, [sp, #0xf4]
005f00a0  00 00 53 e3                                      cmp r3, #0
005f00a4  52 fe ff 0a                                      beq #0x5ef9f4
005f00a8  04 b0 a0 e1                                      mov fp, r4
005f00ac  04 40 8d e5                                      str r4, [sp, #4]
005f00b0  04 a0 a0 e1                                      mov sl, r4
005f00b4  b0 90 8d e2                                      add sb, sp, #0xb0
005f00b8  f0 c0 9d e5                                      ldr ip, [sp, #0xf0]
005f00bc  00 00 5c e3                                      cmp ip, #0
005f00c0  0c 70 a0 11                                      movne r7, ip
005f00c4  00 50 a0 13                                      movne r5, #0
005f00c8  0b 00 00 0a                                      beq #0x5f00fc
005f00cc  04 10 a0 e1                                      mov r1, r4
005f00d0  06 20 a0 e1                                      mov r2, r6
005f00d4  09 00 a0 e1                                      mov r0, sb
005f00d8  e2 79 f4 eb                                      bl #0x30e868
005f00dc  b0 10 9d e5                                      ldr r1, [sp, #0xb0]
005f00e0  08 00 a0 e1                                      mov r0, r8
005f00e4  ba f7 ff eb                                      bl #0x5edfd4
005f00e8  01 70 57 e2                                      subs r7, r7, #1
005f00ec  05 00 8a e7                                      str r0, [sl, r5]
005f00f0  06 40 84 e0                                      add r4, r4, r6
005f00f4  04 50 85 e2                                      add r5, r5, #4
005f00f8  f3 ff ff 1a                                      bne #0x5f00cc
005f00fc  f4 20 9d e5                                      ldr r2, [sp, #0xf4]
005f0100  01 20 52 e2                                      subs r2, r2, #1
005f0104  f4 20 8d e5                                      str r2, [sp, #0xf4]
005f0108  39 fe ff 0a                                      beq #0x5ef9f4
005f010c  04 30 9d e5                                      ldr r3, [sp, #4]
005f0110  44 50 9d e5                                      ldr r5, [sp, #0x44]
005f0114  ec 70 9d e5                                      ldr r7, [sp, #0xec]
005f0118  05 40 83 e0                                      add r4, r3, r5
005f011c  07 b0 8b e0                                      add fp, fp, r7
005f0120  0b a0 a0 e1                                      mov sl, fp
005f0124  04 40 8d e5                                      str r4, [sp, #4]
005f0128  e2 ff ff ea                                      b #0x5f00b8
005f012c  10 70 9d e5                                      ldr r7, [sp, #0x10]
005f0130  00 00 57 e3                                      cmp r7, #0
005f0134  40 02 00 1a                                      bne #0x5f0a3c
005f0138  f4 90 9d e5                                      ldr sb, [sp, #0xf4]
005f013c  00 00 59 e3                                      cmp sb, #0
005f0140  2b fe ff 0a                                      beq #0x5ef9f4
005f0144  04 b0 a0 e1                                      mov fp, r4
005f0148  04 40 8d e5                                      str r4, [sp, #4]
005f014c  04 a0 a0 e1                                      mov sl, r4
005f0150  b0 90 8d e2                                      add sb, sp, #0xb0
005f0154  f0 c0 9d e5                                      ldr ip, [sp, #0xf0]
005f0158  00 00 5c e3                                      cmp ip, #0
005f015c  0d 00 00 0a                                      beq #0x5f0198
005f0160  f0 70 9d e5                                      ldr r7, [sp, #0xf0]
005f0164  00 50 a0 e3                                      mov r5, #0
005f0168  04 10 a0 e1                                      mov r1, r4
005f016c  06 20 a0 e1                                      mov r2, r6
005f0170  09 00 a0 e1                                      mov r0, sb
005f0174  bb 79 f4 eb                                      bl #0x30e868
005f0178  b0 10 9d e5                                      ldr r1, [sp, #0xb0]
005f017c  08 00 a0 e1                                      mov r0, r8
005f0180  55 f7 ff eb                                      bl #0x5ededc
005f0184  01 70 57 e2                                      subs r7, r7, #1
005f0188  05 00 8a e7                                      str r0, [sl, r5]
005f018c  06 40 84 e0                                      add r4, r4, r6
005f0190  04 50 85 e2                                      add r5, r5, #4
005f0194  f3 ff ff 1a                                      bne #0x5f0168
005f0198  f4 30 9d e5                                      ldr r3, [sp, #0xf4]
005f019c  01 30 53 e2                                      subs r3, r3, #1
005f01a0  f4 30 8d e5                                      str r3, [sp, #0xf4]
005f01a4  12 fe ff 0a                                      beq #0x5ef9f4
005f01a8  04 50 9d e5                                      ldr r5, [sp, #4]
005f01ac  ec a0 9d e5                                      ldr sl, [sp, #0xec]
005f01b0  44 70 9d e5                                      ldr r7, [sp, #0x44]
005f01b4  0a b0 8b e0                                      add fp, fp, sl
005f01b8  07 40 85 e0                                      add r4, r5, r7
005f01bc  0b a0 a0 e1                                      mov sl, fp
005f01c0  04 40 8d e5                                      str r4, [sp, #4]
005f01c4  e2 ff ff ea                                      b #0x5f0154
005f01c8  f4 10 9d e5                                      ldr r1, [sp, #0xf4]
005f01cc  ec 20 9d e5                                      ldr r2, [sp, #0xec]
005f01d0  01 80 41 e2                                      sub r8, r1, #1
005f01d4  92 48 28 e0                                      mla r8, r2, r8, r4
005f01d8  00 30 62 e2                                      rsb r3, r2, #0
005f01dc  08 00 54 e1                                      cmp r4, r8
005f01e0  40 30 8d e5                                      str r3, [sp, #0x40]
005f01e4  02 fe ff 8a                                      bhi #0x5ef9f4
005f01e8  b0 50 8d e2                                      add r5, sp, #0xb0
005f01ec  3c 40 8d e5                                      str r4, [sp, #0x3c]
005f01f0  38 50 8d e5                                      str r5, [sp, #0x38]
005f01f4  30 b0 8d e5                                      str fp, [sp, #0x30]
005f01f8  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
005f01fc  00 00 53 e3                                      cmp r3, #0
005f0200  59 00 00 0a                                      beq #0x5f036c
005f0204  f0 60 9d e5                                      ldr r6, [sp, #0xf0]
005f0208  00 50 a0 e3                                      mov r5, #0
005f020c  04 60 8d e5                                      str r6, [sp, #4]
005f0210  05 30 98 e7                                      ldr r3, [r8, r5]
005f0214  90 70 9d e5                                      ldr r7, [sp, #0x90]
005f0218  7f 60 dd e5                                      ldrb r6, [sp, #0x7f]
005f021c  8c b0 9d e5                                      ldr fp, [sp, #0x8c]
005f0220  07 20 03 e0                                      and r2, r3, r7
005f0224  88 00 dd e5                                      ldrb r0, [sp, #0x88]
005f0228  32 26 a0 e1                                      lsr r2, r2, r6
005f022c  7c e0 dd e5                                      ldrb lr, [sp, #0x7c]
005f0230  82 20 a0 e1                                      lsl r2, r2, #1
005f0234  b2 10 9b e1                                      ldrh r1, [fp, r2]
005f0238  80 a0 dd e5                                      ldrb sl, [sp, #0x80]
005f023c  20 00 8d e5                                      str r0, [sp, #0x20]
005f0240  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
005f0244  33 7e a0 e1                                      lsr r7, r3, lr
005f0248  17 7a 00 e0                                      and r7, r0, r7, lsl sl
005f024c  7d c0 dd e5                                      ldrb ip, [sp, #0x7d]
005f0250  82 20 dd e5                                      ldrb r2, [sp, #0x82]
005f0254  81 b0 dd e5                                      ldrb fp, [sp, #0x81]
005f0258  08 70 8d e5                                      str r7, [sp, #8]
005f025c  70 00 9d e5                                      ldr r0, [sp, #0x70]
005f0260  83 70 dd e5                                      ldrb r7, [sp, #0x83]
005f0264  7e 90 dd e5                                      ldrb sb, [sp, #0x7e]
005f0268  14 20 8d e5                                      str r2, [sp, #0x14]
005f026c  33 2c a0 e1                                      lsr r2, r3, ip
005f0270  24 70 8d e5                                      str r7, [sp, #0x24]
005f0274  12 2b 00 e0                                      and r2, r0, r2, lsl fp
005f0278  74 70 9d e5                                      ldr r7, [sp, #0x74]
005f027c  14 00 9d e5                                      ldr r0, [sp, #0x14]
005f0280  33 39 a0 e1                                      lsr r3, r3, sb
005f0284  13 30 07 e0                                      and r3, r7, r3, lsl r0
005f0288  0c 20 8d e5                                      str r2, [sp, #0xc]
005f028c  20 20 9d e5                                      ldr r2, [sp, #0x20]
005f0290  10 30 8d e5                                      str r3, [sp, #0x10]
005f0294  24 30 9d e5                                      ldr r3, [sp, #0x24]
005f0298  51 12 a0 e1                                      asr r1, r1, r2
005f029c  78 20 9d e5                                      ldr r2, [sp, #0x78]
005f02a0  04 00 a0 e1                                      mov r0, r4
005f02a4  11 13 02 e0                                      and r1, r2, r1, lsl r3
005f02a8  08 20 9d e5                                      ldr r2, [sp, #8]
005f02ac  84 30 9d e5                                      ldr r3, [sp, #0x84]
005f02b0  34 10 8d e5                                      str r1, [sp, #0x34]
005f02b4  38 10 9d e5                                      ldr r1, [sp, #0x38]
005f02b8  03 70 82 e1                                      orr r7, r2, r3
005f02bc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005f02c0  03 20 87 e1                                      orr r2, r7, r3
005f02c4  10 70 9d e5                                      ldr r7, [sp, #0x10]
005f02c8  34 30 9d e5                                      ldr r3, [sp, #0x34]
005f02cc  07 20 82 e1                                      orr r2, r2, r7
005f02d0  03 20 82 e1                                      orr r2, r2, r3
005f02d4  b0 20 8d e5                                      str r2, [sp, #0xb0]
005f02d8  00 30 94 e5                                      ldr r3, [r4]
005f02dc  90 70 9d e5                                      ldr r7, [sp, #0x90]
005f02e0  30 20 9d e5                                      ldr r2, [sp, #0x30]
005f02e4  33 ee a0 e1                                      lsr lr, r3, lr
005f02e8  07 70 03 e0                                      and r7, r3, r7
005f02ec  08 70 8d e5                                      str r7, [sp, #8]
005f02f0  37 66 a0 e1                                      lsr r6, r7, r6
005f02f4  8c 70 9d e5                                      ldr r7, [sp, #0x8c]
005f02f8  86 60 a0 e1                                      lsl r6, r6, #1
005f02fc  33 cc a0 e1                                      lsr ip, r3, ip
005f0300  b6 60 97 e1                                      ldrh r6, [r7, r6]
005f0304  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
005f0308  33 39 a0 e1                                      lsr r3, r3, sb
005f030c  70 90 9d e5                                      ldr sb, [sp, #0x70]
005f0310  1e ea 07 e0                                      and lr, r7, lr, lsl sl
005f0314  20 a0 9d e5                                      ldr sl, [sp, #0x20]
005f0318  1c cb 09 e0                                      and ip, sb, ip, lsl fp
005f031c  14 70 9d e5                                      ldr r7, [sp, #0x14]
005f0320  74 b0 9d e5                                      ldr fp, [sp, #0x74]
005f0324  78 90 9d e5                                      ldr sb, [sp, #0x78]
005f0328  56 6a a0 e1                                      asr r6, r6, sl
005f032c  24 a0 9d e5                                      ldr sl, [sp, #0x24]
005f0330  13 37 0b e0                                      and r3, fp, r3, lsl r7
005f0334  16 6a 09 e0                                      and r6, sb, r6, lsl sl
005f0338  84 b0 9d e5                                      ldr fp, [sp, #0x84]
005f033c  02 40 84 e0                                      add r4, r4, r2
005f0340  0b e0 8e e1                                      orr lr, lr, fp
005f0344  0c c0 8e e1                                      orr ip, lr, ip
005f0348  03 30 8c e1                                      orr r3, ip, r3
005f034c  06 60 83 e1                                      orr r6, r3, r6
005f0350  05 60 88 e7                                      str r6, [r8, r5]
005f0354  43 79 f4 eb                                      bl #0x30e868
005f0358  04 c0 9d e5                                      ldr ip, [sp, #4]
005f035c  04 50 85 e2                                      add r5, r5, #4
005f0360  01 c0 5c e2                                      subs ip, ip, #1
005f0364  04 c0 8d e5                                      str ip, [sp, #4]
005f0368  a8 ff ff 1a                                      bne #0x5f0210
005f036c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005f0370  44 10 9d e5                                      ldr r1, [sp, #0x44]
005f0374  40 20 9d e5                                      ldr r2, [sp, #0x40]
005f0378  01 40 80 e0                                      add r4, r0, r1
005f037c  02 80 88 e0                                      add r8, r8, r2
005f0380  08 00 54 e1                                      cmp r4, r8
005f0384  9a fd ff 8a                                      bhi #0x5ef9f4
005f0388  3c 40 8d e5                                      str r4, [sp, #0x3c]
005f038c  99 ff ff ea                                      b #0x5f01f8
005f0390  f4 10 9d e5                                      ldr r1, [sp, #0xf4]
005f0394  ec 20 9d e5                                      ldr r2, [sp, #0xec]
005f0398  01 30 41 e2                                      sub r3, r1, #1
005f039c  92 43 23 e0                                      mla r3, r2, r3, r4
005f03a0  00 50 62 e2                                      rsb r5, r2, #0
005f03a4  03 00 54 e1                                      cmp r4, r3
005f03a8  50 50 8d e5                                      str r5, [sp, #0x50]
005f03ac  90 fd ff 8a                                      bhi #0x5ef9f4
005f03b0  7c 80 dd e5                                      ldrb r8, [sp, #0x7c]
005f03b4  80 90 dd e5                                      ldrb sb, [sp, #0x80]
005f03b8  6c a0 9d e5                                      ldr sl, [sp, #0x6c]
005f03bc  4c 40 8d e5                                      str r4, [sp, #0x4c]
005f03c0  74 50 9d e5                                      ldr r5, [sp, #0x74]
005f03c4  38 80 8d e5                                      str r8, [sp, #0x38]
005f03c8  7d c0 dd e5                                      ldrb ip, [sp, #0x7d]
005f03cc  81 00 dd e5                                      ldrb r0, [sp, #0x81]
005f03d0  70 10 9d e5                                      ldr r1, [sp, #0x70]
005f03d4  7e 20 dd e5                                      ldrb r2, [sp, #0x7e]
005f03d8  82 40 dd e5                                      ldrb r4, [sp, #0x82]
005f03dc  83 80 dd e5                                      ldrb r8, [sp, #0x83]
005f03e0  34 90 8d e5                                      str sb, [sp, #0x34]
005f03e4  4c 90 9d e5                                      ldr sb, [sp, #0x4c]
005f03e8  30 a0 8d e5                                      str sl, [sp, #0x30]
005f03ec  b0 a0 8d e2                                      add sl, sp, #0xb0
005f03f0  18 50 8d e5                                      str r5, [sp, #0x18]
005f03f4  48 a0 8d e5                                      str sl, [sp, #0x48]
005f03f8  2c c0 8d e5                                      str ip, [sp, #0x2c]
005f03fc  24 00 8d e5                                      str r0, [sp, #0x24]
005f0400  20 10 8d e5                                      str r1, [sp, #0x20]
005f0404  1c 20 8d e5                                      str r2, [sp, #0x1c]
005f0408  10 40 8d e5                                      str r4, [sp, #0x10]
005f040c  28 80 8d e5                                      str r8, [sp, #0x28]
005f0410  3c 60 8d e5                                      str r6, [sp, #0x3c]
005f0414  07 a0 a0 e1                                      mov sl, r7
005f0418  03 50 a0 e1                                      mov r5, r3
005f041c  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
005f0420  00 00 50 e3                                      cmp r0, #0
005f0424  00 80 a0 11                                      movne r8, r0
005f0428  00 40 a0 13                                      movne r4, #0
005f042c  5d 00 00 0a                                      beq #0x5f05a8
005f0430  04 30 95 e7                                      ldr r3, [r5, r4]
005f0434  3c e0 9d e5                                      ldr lr, [sp, #0x3c]
005f0438  28 20 9d e5                                      ldr r2, [sp, #0x28]
005f043c  38 60 9d e5                                      ldr r6, [sp, #0x38]
005f0440  0e c0 03 e0                                      and ip, r3, lr
005f0444  3c cb a0 e1                                      lsr ip, ip, fp
005f0448  1c c2 a0 e1                                      lsl ip, ip, r2
005f044c  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f0450  54 c0 8d e5                                      str ip, [sp, #0x54]
005f0454  08 c0 9d e5                                      ldr ip, [sp, #8]
005f0458  33 26 a0 e1                                      lsr r2, r3, r6
005f045c  03 e0 0c e0                                      and lr, ip, r3
005f0460  33 67 a0 e1                                      lsr r6, r3, r7
005f0464  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005f0468  30 70 9d e5                                      ldr r7, [sp, #0x30]
005f046c  48 10 9d e5                                      ldr r1, [sp, #0x48]
005f0470  09 00 a0 e1                                      mov r0, sb
005f0474  12 2c 07 e0                                      and r2, r7, r2, lsl ip
005f0478  58 20 8d e5                                      str r2, [sp, #0x58]
005f047c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005f0480  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
005f0484  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005f0488  3e e2 a0 e1                                      lsr lr, lr, r2
005f048c  24 20 9d e5                                      ldr r2, [sp, #0x24]
005f0490  33 37 a0 e1                                      lsr r3, r3, r7
005f0494  16 62 0c e0                                      and r6, ip, r6, lsl r2
005f0498  54 70 9d e5                                      ldr r7, [sp, #0x54]
005f049c  14 20 9d e5                                      ldr r2, [sp, #0x14]
005f04a0  1e c2 87 e1                                      orr ip, r7, lr, lsl r2
005f04a4  18 70 9d e5                                      ldr r7, [sp, #0x18]
005f04a8  10 e0 9d e5                                      ldr lr, [sp, #0x10]
005f04ac  13 3e 07 e0                                      and r3, r7, r3, lsl lr
005f04b0  58 e0 9d e5                                      ldr lr, [sp, #0x58]
005f04b4  04 70 9d e5                                      ldr r7, [sp, #4]
005f04b8  0e 20 87 e1                                      orr r2, r7, lr
005f04bc  06 60 82 e1                                      orr r6, r2, r6
005f04c0  40 20 9d e5                                      ldr r2, [sp, #0x40]
005f04c4  03 30 86 e1                                      orr r3, r6, r3
005f04c8  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
005f04cc  02 c0 0c e0                                      and ip, ip, r2
005f04d0  0c 30 83 e1                                      orr r3, r3, ip
005f04d4  b0 30 8d e5                                      str r3, [sp, #0xb0]
005f04d8  00 30 99 e5                                      ldr r3, [sb]
005f04dc  28 c0 9d e5                                      ldr ip, [sp, #0x28]
005f04e0  38 e0 9d e5                                      ldr lr, [sp, #0x38]
005f04e4  06 70 03 e0                                      and r7, r3, r6
005f04e8  37 7b a0 e1                                      lsr r7, r7, fp
005f04ec  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
005f04f0  17 7c a0 e1                                      lsl r7, r7, ip
005f04f4  33 ee a0 e1                                      lsr lr, r3, lr
005f04f8  33 66 a0 e1                                      lsr r6, r3, r6
005f04fc  58 70 8d e5                                      str r7, [sp, #0x58]
005f0500  08 70 9d e5                                      ldr r7, [sp, #8]
005f0504  54 e0 8d e5                                      str lr, [sp, #0x54]
005f0508  5c 60 8d e5                                      str r6, [sp, #0x5c]
005f050c  07 e0 03 e0                                      and lr, r3, r7
005f0510  54 60 9d e5                                      ldr r6, [sp, #0x54]
005f0514  34 70 9d e5                                      ldr r7, [sp, #0x34]
005f0518  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005f051c  0a 20 a0 e1                                      mov r2, sl
005f0520  0a 90 89 e0                                      add sb, sb, sl
005f0524  16 c7 0c e0                                      and ip, ip, r6, lsl r7
005f0528  54 c0 8d e5                                      str ip, [sp, #0x54]
005f052c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005f0530  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
005f0534  20 70 9d e5                                      ldr r7, [sp, #0x20]
005f0538  3e ec a0 e1                                      lsr lr, lr, ip
005f053c  33 36 a0 e1                                      lsr r3, r3, r6
005f0540  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
005f0544  24 60 9d e5                                      ldr r6, [sp, #0x24]
005f0548  1c 76 07 e0                                      and r7, r7, ip, lsl r6
005f054c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005f0550  5c 70 8d e5                                      str r7, [sp, #0x5c]
005f0554  58 70 9d e5                                      ldr r7, [sp, #0x58]
005f0558  10 60 9d e5                                      ldr r6, [sp, #0x10]
005f055c  1e ec 87 e1                                      orr lr, r7, lr, lsl ip
005f0560  58 e0 8d e5                                      str lr, [sp, #0x58]
005f0564  18 e0 9d e5                                      ldr lr, [sp, #0x18]
005f0568  04 70 9d e5                                      ldr r7, [sp, #4]
005f056c  54 c0 9d e5                                      ldr ip, [sp, #0x54]
005f0570  13 36 0e e0                                      and r3, lr, r3, lsl r6
005f0574  5c e0 9d e5                                      ldr lr, [sp, #0x5c]
005f0578  0c 60 87 e1                                      orr r6, r7, ip
005f057c  40 70 9d e5                                      ldr r7, [sp, #0x40]
005f0580  0e c0 86 e1                                      orr ip, r6, lr
005f0584  58 60 9d e5                                      ldr r6, [sp, #0x58]
005f0588  03 30 8c e1                                      orr r3, ip, r3
005f058c  07 e0 06 e0                                      and lr, r6, r7
005f0590  0e 30 83 e1                                      orr r3, r3, lr
005f0594  04 30 85 e7                                      str r3, [r5, r4]
005f0598  b2 78 f4 eb                                      bl #0x30e868
005f059c  01 80 58 e2                                      subs r8, r8, #1
005f05a0  04 40 84 e2                                      add r4, r4, #4
005f05a4  a1 ff ff 1a                                      bne #0x5f0430
005f05a8  4c 80 9d e5                                      ldr r8, [sp, #0x4c]
005f05ac  44 90 9d e5                                      ldr sb, [sp, #0x44]
005f05b0  50 c0 9d e5                                      ldr ip, [sp, #0x50]
005f05b4  09 80 88 e0                                      add r8, r8, sb
005f05b8  0c 50 85 e0                                      add r5, r5, ip
005f05bc  05 00 58 e1                                      cmp r8, r5
005f05c0  4c 80 8d e5                                      str r8, [sp, #0x4c]
005f05c4  0a fd ff 8a                                      bhi #0x5ef9f4
005f05c8  08 90 a0 e1                                      mov sb, r8
005f05cc  92 ff ff ea                                      b #0x5f041c
005f05d0  10 90 9d e5                                      ldr sb, [sp, #0x10]
005f05d4  00 00 59 e3                                      cmp sb, #0
005f05d8  b9 01 00 1a                                      bne #0x5f0cc4
005f05dc  f4 a0 9d e5                                      ldr sl, [sp, #0xf4]
005f05e0  00 00 5a e3                                      cmp sl, #0
005f05e4  02 fd ff 0a                                      beq #0x5ef9f4
005f05e8  b0 b0 8d e2                                      add fp, sp, #0xb0
005f05ec  1c 40 8d e5                                      str r4, [sp, #0x1c]
005f05f0  20 40 8d e5                                      str r4, [sp, #0x20]
005f05f4  0c 40 8d e5                                      str r4, [sp, #0xc]
005f05f8  10 b0 8d e5                                      str fp, [sp, #0x10]
005f05fc  f0 90 9d e5                                      ldr sb, [sp, #0xf0]
005f0600  00 00 59 e3                                      cmp sb, #0
005f0604  46 00 00 0a                                      beq #0x5f0724
005f0608  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
005f060c  00 50 a0 e3                                      mov r5, #0
005f0610  04 10 8d e5                                      str r1, [sp, #4]
005f0614  04 10 a0 e1                                      mov r1, r4
005f0618  14 20 9d e5                                      ldr r2, [sp, #0x14]
005f061c  10 00 9d e5                                      ldr r0, [sp, #0x10]
005f0620  90 78 f4 eb                                      bl #0x30e868
005f0624  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
005f0628  88 80 9d e5                                      ldr r8, [sp, #0x88]
005f062c  7c 10 dd e5                                      ldrb r1, [sp, #0x7c]
005f0630  7d 20 dd e5                                      ldrb r2, [sp, #0x7d]
005f0634  08 80 03 e0                                      and r8, r3, r8
005f0638  38 81 a0 e1                                      lsr r8, r8, r1
005f063c  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
005f0640  90 b0 9d e5                                      ldr fp, [sp, #0x90]
005f0644  7e c0 dd e5                                      ldrb ip, [sp, #0x7e]
005f0648  01 10 03 e0                                      and r1, r3, r1
005f064c  80 60 dd e5                                      ldrb r6, [sp, #0x80]
005f0650  31 12 a0 e1                                      lsr r1, r1, r2
005f0654  0b b0 03 e0                                      and fp, r3, fp
005f0658  82 20 dd e5                                      ldrb r2, [sp, #0x82]
005f065c  3b bc a0 e1                                      lsr fp, fp, ip
005f0660  18 86 a0 e1                                      lsl r8, r8, r6
005f0664  1b 22 a0 e1                                      lsl r2, fp, r2
005f0668  81 00 dd e5                                      ldrb r0, [sp, #0x81]
005f066c  94 90 9d e5                                      ldr sb, [sp, #0x94]
005f0670  a3 a0 dd e5                                      ldrb sl, [sp, #0xa3]
005f0674  11 10 a0 e1                                      lsl r1, r1, r0
005f0678  a0 00 dd e5                                      ldrb r0, [sp, #0xa0]
005f067c  09 90 03 e0                                      and sb, r3, sb
005f0680  98 c0 9d e5                                      ldr ip, [sp, #0x98]
005f0684  39 90 a0 e1                                      lsr sb, sb, r0
005f0688  18 20 8d e5                                      str r2, [sp, #0x18]
005f068c  19 8a 88 e1                                      orr r8, r8, sb, lsl sl
005f0690  a1 20 dd e5                                      ldrb r2, [sp, #0xa1]
005f0694  a4 00 dd e5                                      ldrb r0, [sp, #0xa4]
005f0698  0c c0 03 e0                                      and ip, r3, ip
005f069c  9c 70 9d e5                                      ldr r7, [sp, #0x9c]
005f06a0  3c c2 a0 e1                                      lsr ip, ip, r2
005f06a4  a2 60 dd e5                                      ldrb r6, [sp, #0xa2]
005f06a8  a5 20 dd e5                                      ldrb r2, [sp, #0xa5]
005f06ac  1c 10 81 e1                                      orr r1, r1, ip, lsl r0
005f06b0  07 70 03 e0                                      and r7, r3, r7
005f06b4  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005f06b8  7f b0 dd e5                                      ldrb fp, [sp, #0x7f]
005f06bc  37 66 a0 e1                                      lsr r6, r7, r6
005f06c0  83 00 dd e5                                      ldrb r0, [sp, #0x83]
005f06c4  16 62 8c e1                                      orr r6, ip, r6, lsl r2
005f06c8  78 20 9d e5                                      ldr r2, [sp, #0x78]
005f06cc  33 3b a0 e1                                      lsr r3, r3, fp
005f06d0  13 30 02 e0                                      and r3, r2, r3, lsl r0
005f06d4  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
005f06d8  04 00 9d e5                                      ldr r0, [sp, #4]
005f06dc  02 80 08 e0                                      and r8, r8, r2
005f06e0  84 20 9d e5                                      ldr r2, [sp, #0x84]
005f06e4  01 00 50 e2                                      subs r0, r0, #1
005f06e8  04 00 8d e5                                      str r0, [sp, #4]
005f06ec  02 80 88 e1                                      orr r8, r8, r2
005f06f0  70 20 9d e5                                      ldr r2, [sp, #0x70]
005f06f4  02 10 01 e0                                      and r1, r1, r2
005f06f8  74 20 9d e5                                      ldr r2, [sp, #0x74]
005f06fc  01 80 88 e1                                      orr r8, r8, r1
005f0700  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005f0704  02 20 06 e0                                      and r2, r6, r2
005f0708  02 20 88 e1                                      orr r2, r8, r2
005f070c  03 20 82 e1                                      orr r2, r2, r3
005f0710  05 20 81 e7                                      str r2, [r1, r5]
005f0714  14 20 9d e5                                      ldr r2, [sp, #0x14]
005f0718  04 50 85 e2                                      add r5, r5, #4
005f071c  02 40 84 e0                                      add r4, r4, r2
005f0720  bb ff ff 1a                                      bne #0x5f0614
005f0724  f4 30 9d e5                                      ldr r3, [sp, #0xf4]
005f0728  01 30 53 e2                                      subs r3, r3, #1
005f072c  f4 30 8d e5                                      str r3, [sp, #0xf4]
005f0730  af fc ff 0a                                      beq #0x5ef9f4
005f0734  20 50 9d e5                                      ldr r5, [sp, #0x20]
005f0738  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
005f073c  44 60 9d e5                                      ldr r6, [sp, #0x44]
005f0740  ec 80 9d e5                                      ldr r8, [sp, #0xec]
005f0744  06 40 85 e0                                      add r4, r5, r6
005f0748  08 70 87 e0                                      add r7, r7, r8
005f074c  1c 70 8d e5                                      str r7, [sp, #0x1c]
005f0750  0c 70 8d e5                                      str r7, [sp, #0xc]
005f0754  20 40 8d e5                                      str r4, [sp, #0x20]
005f0758  a7 ff ff ea                                      b #0x5f05fc
005f075c  f4 50 9d e5                                      ldr r5, [sp, #0xf4]
005f0760  ec 90 9d e5                                      ldr sb, [sp, #0xec]
005f0764  01 70 45 e2                                      sub r7, r5, #1
005f0768  99 47 27 e0                                      mla r7, sb, r7, r4
005f076c  07 00 54 e1                                      cmp r4, r7
005f0770  9f fc ff 8a                                      bhi #0x5ef9f4
005f0774  00 a0 69 e2                                      rsb sl, sb, #0
005f0778  04 b0 a0 e1                                      mov fp, r4
005f077c  04 a0 8d e5                                      str sl, [sp, #4]
005f0780  b0 90 8d e2                                      add sb, sp, #0xb0
005f0784  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
005f0788  00 00 51 e3                                      cmp r1, #0
005f078c  01 a0 a0 11                                      movne sl, r1
005f0790  00 50 a0 13                                      movne r5, #0
005f0794  0f 00 00 0a                                      beq #0x5f07d8
005f0798  05 10 97 e7                                      ldr r1, [r7, r5]
005f079c  08 00 a0 e1                                      mov r0, r8
005f07a0  0b f6 ff eb                                      bl #0x5edfd4
005f07a4  b0 00 8d e5                                      str r0, [sp, #0xb0]
005f07a8  00 10 94 e5                                      ldr r1, [r4]
005f07ac  08 00 a0 e1                                      mov r0, r8
005f07b0  07 f6 ff eb                                      bl #0x5edfd4
005f07b4  09 10 a0 e1                                      mov r1, sb
005f07b8  05 00 87 e7                                      str r0, [r7, r5]
005f07bc  06 20 a0 e1                                      mov r2, r6
005f07c0  04 00 a0 e1                                      mov r0, r4
005f07c4  27 78 f4 eb                                      bl #0x30e868
005f07c8  01 a0 5a e2                                      subs sl, sl, #1
005f07cc  06 40 84 e0                                      add r4, r4, r6
005f07d0  04 50 85 e2                                      add r5, r5, #4
005f07d4  ef ff ff 1a                                      bne #0x5f0798
005f07d8  44 c0 9d e5                                      ldr ip, [sp, #0x44]
005f07dc  04 00 9d e5                                      ldr r0, [sp, #4]
005f07e0  0c 40 8b e0                                      add r4, fp, ip
005f07e4  00 70 87 e0                                      add r7, r7, r0
005f07e8  07 00 54 e1                                      cmp r4, r7
005f07ec  80 fc ff 8a                                      bhi #0x5ef9f4
005f07f0  04 b0 a0 e1                                      mov fp, r4
005f07f4  e2 ff ff ea                                      b #0x5f0784
005f07f8  f4 90 9d e5                                      ldr sb, [sp, #0xf4]
005f07fc  ec a0 9d e5                                      ldr sl, [sp, #0xec]
005f0800  01 80 49 e2                                      sub r8, sb, #1
005f0804  9a 48 28 e0                                      mla r8, sl, r8, r4
005f0808  00 c0 6a e2                                      rsb ip, sl, #0
005f080c  08 00 54 e1                                      cmp r4, r8
005f0810  5c c0 8d e5                                      str ip, [sp, #0x5c]
005f0814  76 fc ff 8a                                      bhi #0x5ef9f4
005f0818  b0 00 8d e2                                      add r0, sp, #0xb0
005f081c  58 40 8d e5                                      str r4, [sp, #0x58]
005f0820  54 00 8d e5                                      str r0, [sp, #0x54]
005f0824  50 b0 8d e5                                      str fp, [sp, #0x50]
005f0828  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
005f082c  00 00 53 e3                                      cmp r3, #0
005f0830  77 00 00 0a                                      beq #0x5f0a14
005f0834  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
005f0838  00 50 a0 e3                                      mov r5, #0
005f083c  04 10 8d e5                                      str r1, [sp, #4]
005f0840  05 90 98 e7                                      ldr sb, [r8, r5]
005f0844  94 20 9d e5                                      ldr r2, [sp, #0x94]
005f0848  7c 60 dd e5                                      ldrb r6, [sp, #0x7c]
005f084c  98 30 9d e5                                      ldr r3, [sp, #0x98]
005f0850  02 10 09 e0                                      and r1, sb, r2
005f0854  9c 70 9d e5                                      ldr r7, [sp, #0x9c]
005f0858  7d e0 dd e5                                      ldrb lr, [sp, #0x7d]
005f085c  7e c0 dd e5                                      ldrb ip, [sp, #0x7e]
005f0860  88 a0 9d e5                                      ldr sl, [sp, #0x88]
005f0864  31 16 a0 e1                                      lsr r1, r1, r6
005f0868  03 20 09 e0                                      and r2, sb, r3
005f086c  81 10 a0 e1                                      lsl r1, r1, #1
005f0870  07 30 09 e0                                      and r3, sb, r7
005f0874  8c b0 9d e5                                      ldr fp, [sp, #0x8c]
005f0878  b1 70 9a e1                                      ldrh r7, [sl, r1]
005f087c  90 00 9d e5                                      ldr r0, [sp, #0x90]
005f0880  80 10 dd e5                                      ldrb r1, [sp, #0x80]
005f0884  32 2e a0 e1                                      lsr r2, r2, lr
005f0888  33 3c a0 e1                                      lsr r3, r3, ip
005f088c  82 20 a0 e1                                      lsl r2, r2, #1
005f0890  83 30 a0 e1                                      lsl r3, r3, #1
005f0894  b2 20 9b e1                                      ldrh r2, [fp, r2]
005f0898  b3 30 90 e1                                      ldrh r3, [r0, r3]
005f089c  0c 10 8d e5                                      str r1, [sp, #0xc]
005f08a0  a2 00 dd e5                                      ldrb r0, [sp, #0xa2]
005f08a4  81 10 dd e5                                      ldrb r1, [sp, #0x81]
005f08a8  a0 a0 dd e5                                      ldrb sl, [sp, #0xa0]
005f08ac  34 00 8d e5                                      str r0, [sp, #0x34]
005f08b0  20 10 8d e5                                      str r1, [sp, #0x20]
005f08b4  7f 00 dd e5                                      ldrb r0, [sp, #0x7f]
005f08b8  82 10 dd e5                                      ldrb r1, [sp, #0x82]
005f08bc  57 7a a0 e1                                      asr r7, r7, sl
005f08c0  40 00 8d e5                                      str r0, [sp, #0x40]
005f08c4  38 10 8d e5                                      str r1, [sp, #0x38]
005f08c8  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
005f08cc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005f08d0  a1 b0 dd e5                                      ldrb fp, [sp, #0xa1]
005f08d4  17 71 00 e0                                      and r7, r0, r7, lsl r1
005f08d8  34 00 9d e5                                      ldr r0, [sp, #0x34]
005f08dc  83 10 dd e5                                      ldrb r1, [sp, #0x83]
005f08e0  52 2b a0 e1                                      asr r2, r2, fp
005f08e4  53 30 a0 e1                                      asr r3, r3, r0
005f08e8  48 10 8d e5                                      str r1, [sp, #0x48]
005f08ec  70 00 9d e5                                      ldr r0, [sp, #0x70]
005f08f0  20 10 9d e5                                      ldr r1, [sp, #0x20]
005f08f4  12 21 00 e0                                      and r2, r0, r2, lsl r1
005f08f8  74 00 9d e5                                      ldr r0, [sp, #0x74]
005f08fc  38 10 9d e5                                      ldr r1, [sp, #0x38]
005f0900  08 20 8d e5                                      str r2, [sp, #8]
005f0904  40 20 9d e5                                      ldr r2, [sp, #0x40]
005f0908  13 31 00 e0                                      and r3, r0, r3, lsl r1
005f090c  39 92 a0 e1                                      lsr sb, sb, r2
005f0910  10 30 8d e5                                      str r3, [sp, #0x10]
005f0914  78 20 9d e5                                      ldr r2, [sp, #0x78]
005f0918  48 30 9d e5                                      ldr r3, [sp, #0x48]
005f091c  04 00 a0 e1                                      mov r0, r4
005f0920  54 10 9d e5                                      ldr r1, [sp, #0x54]
005f0924  19 93 02 e0                                      and sb, r2, sb, lsl r3
005f0928  84 20 9d e5                                      ldr r2, [sp, #0x84]
005f092c  08 30 9d e5                                      ldr r3, [sp, #8]
005f0930  02 70 87 e1                                      orr r7, r7, r2
005f0934  03 20 87 e1                                      orr r2, r7, r3
005f0938  10 70 9d e5                                      ldr r7, [sp, #0x10]
005f093c  07 20 82 e1                                      orr r2, r2, r7
005f0940  09 20 82 e1                                      orr r2, r2, sb
005f0944  b0 20 8d e5                                      str r2, [sp, #0xb0]
005f0948  00 30 94 e5                                      ldr r3, [r4]
005f094c  94 90 9d e5                                      ldr sb, [sp, #0x94]
005f0950  50 20 9d e5                                      ldr r2, [sp, #0x50]
005f0954  09 70 03 e0                                      and r7, r3, sb
005f0958  98 90 9d e5                                      ldr sb, [sp, #0x98]
005f095c  37 76 a0 e1                                      lsr r7, r7, r6
005f0960  09 60 03 e0                                      and r6, r3, sb
005f0964  9c 90 9d e5                                      ldr sb, [sp, #0x9c]
005f0968  36 ee a0 e1                                      lsr lr, r6, lr
005f096c  09 60 03 e0                                      and r6, r3, sb
005f0970  36 cc a0 e1                                      lsr ip, r6, ip
005f0974  88 60 9d e5                                      ldr r6, [sp, #0x88]
005f0978  87 70 a0 e1                                      lsl r7, r7, #1
005f097c  8c 90 9d e5                                      ldr sb, [sp, #0x8c]
005f0980  b7 70 96 e1                                      ldrh r7, [r6, r7]
005f0984  8e e0 a0 e1                                      lsl lr, lr, #1
005f0988  be e0 99 e1                                      ldrh lr, [sb, lr]
005f098c  90 60 9d e5                                      ldr r6, [sp, #0x90]
005f0990  0c 90 9d e5                                      ldr sb, [sp, #0xc]
005f0994  57 aa a0 e1                                      asr sl, r7, sl
005f0998  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
005f099c  8c c0 a0 e1                                      lsl ip, ip, #1
005f09a0  bc c0 96 e1                                      ldrh ip, [r6, ip]
005f09a4  1a a9 07 e0                                      and sl, r7, sl, lsl sb
005f09a8  70 60 9d e5                                      ldr r6, [sp, #0x70]
005f09ac  20 70 9d e5                                      ldr r7, [sp, #0x20]
005f09b0  5e eb a0 e1                                      asr lr, lr, fp
005f09b4  34 b0 9d e5                                      ldr fp, [sp, #0x34]
005f09b8  40 90 9d e5                                      ldr sb, [sp, #0x40]
005f09bc  1e e7 06 e0                                      and lr, r6, lr, lsl r7
005f09c0  5c cb a0 e1                                      asr ip, ip, fp
005f09c4  38 60 9d e5                                      ldr r6, [sp, #0x38]
005f09c8  74 b0 9d e5                                      ldr fp, [sp, #0x74]
005f09cc  78 70 9d e5                                      ldr r7, [sp, #0x78]
005f09d0  33 39 a0 e1                                      lsr r3, r3, sb
005f09d4  48 90 9d e5                                      ldr sb, [sp, #0x48]
005f09d8  1c c6 0b e0                                      and ip, fp, ip, lsl r6
005f09dc  13 39 07 e0                                      and r3, r7, r3, lsl sb
005f09e0  84 b0 9d e5                                      ldr fp, [sp, #0x84]
005f09e4  02 40 84 e0                                      add r4, r4, r2
005f09e8  0b a0 8a e1                                      orr sl, sl, fp
005f09ec  0e e0 8a e1                                      orr lr, sl, lr
005f09f0  0c c0 8e e1                                      orr ip, lr, ip
005f09f4  03 30 8c e1                                      orr r3, ip, r3
005f09f8  05 30 88 e7                                      str r3, [r8, r5]
005f09fc  99 77 f4 eb                                      bl #0x30e868
005f0a00  04 c0 9d e5                                      ldr ip, [sp, #4]
005f0a04  04 50 85 e2                                      add r5, r5, #4
005f0a08  01 c0 5c e2                                      subs ip, ip, #1
005f0a0c  04 c0 8d e5                                      str ip, [sp, #4]
005f0a10  8a ff ff 1a                                      bne #0x5f0840
005f0a14  58 00 9d e5                                      ldr r0, [sp, #0x58]
005f0a18  44 10 9d e5                                      ldr r1, [sp, #0x44]
005f0a1c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005f0a20  01 00 80 e0                                      add r0, r0, r1
005f0a24  02 80 88 e0                                      add r8, r8, r2
005f0a28  08 00 50 e1                                      cmp r0, r8
005f0a2c  58 00 8d e5                                      str r0, [sp, #0x58]
005f0a30  ef fb ff 8a                                      bhi #0x5ef9f4
005f0a34  00 40 a0 e1                                      mov r4, r0
005f0a38  7a ff ff ea                                      b #0x5f0828
005f0a3c  f4 a0 9d e5                                      ldr sl, [sp, #0xf4]
005f0a40  ec b0 9d e5                                      ldr fp, [sp, #0xec]
005f0a44  01 70 4a e2                                      sub r7, sl, #1
005f0a48  9b 47 27 e0                                      mla r7, fp, r7, r4
005f0a4c  00 c0 6b e2                                      rsb ip, fp, #0
005f0a50  07 00 54 e1                                      cmp r4, r7
005f0a54  04 b0 a0 91                                      movls fp, r4
005f0a58  04 c0 8d e5                                      str ip, [sp, #4]
005f0a5c  0b 40 a0 91                                      movls r4, fp
005f0a60  b0 90 8d 92                                      addls sb, sp, #0xb0
005f0a64  e2 fb ff 8a                                      bhi #0x5ef9f4
005f0a68  f0 20 9d e5                                      ldr r2, [sp, #0xf0]
005f0a6c  00 00 52 e3                                      cmp r2, #0
005f0a70  11 00 00 0a                                      beq #0x5f0abc
005f0a74  f0 a0 9d e5                                      ldr sl, [sp, #0xf0]
005f0a78  00 50 a0 e3                                      mov r5, #0
005f0a7c  05 10 97 e7                                      ldr r1, [r7, r5]
005f0a80  08 00 a0 e1                                      mov r0, r8
005f0a84  14 f5 ff eb                                      bl #0x5ededc
005f0a88  b0 00 8d e5                                      str r0, [sp, #0xb0]
005f0a8c  00 10 94 e5                                      ldr r1, [r4]
005f0a90  08 00 a0 e1                                      mov r0, r8
005f0a94  10 f5 ff eb                                      bl #0x5ededc
005f0a98  09 10 a0 e1                                      mov r1, sb
005f0a9c  05 00 87 e7                                      str r0, [r7, r5]
005f0aa0  06 20 a0 e1                                      mov r2, r6
005f0aa4  04 00 a0 e1                                      mov r0, r4
005f0aa8  6e 77 f4 eb                                      bl #0x30e868
005f0aac  01 a0 5a e2                                      subs sl, sl, #1
005f0ab0  06 40 84 e0                                      add r4, r4, r6
005f0ab4  04 50 85 e2                                      add r5, r5, #4
005f0ab8  ef ff ff 1a                                      bne #0x5f0a7c
005f0abc  44 00 9d e5                                      ldr r0, [sp, #0x44]
005f0ac0  04 10 9d e5                                      ldr r1, [sp, #4]
005f0ac4  00 40 8b e0                                      add r4, fp, r0
005f0ac8  01 70 87 e0                                      add r7, r7, r1
005f0acc  07 00 54 e1                                      cmp r4, r7
005f0ad0  c7 fb ff 8a                                      bhi #0x5ef9f4
005f0ad4  04 b0 a0 e1                                      mov fp, r4
005f0ad8  e2 ff ff ea                                      b #0x5f0a68
005f0adc  f4 10 9d e5                                      ldr r1, [sp, #0xf4]
005f0ae0  ec 20 9d e5                                      ldr r2, [sp, #0xec]
005f0ae4  01 50 41 e2                                      sub r5, r1, #1
005f0ae8  92 45 25 e0                                      mla r5, r2, r5, r4
005f0aec  00 30 62 e2                                      rsb r3, r2, #0
005f0af0  05 00 54 e1                                      cmp r4, r5
005f0af4  38 30 8d e5                                      str r3, [sp, #0x38]
005f0af8  bd fb ff 8a                                      bhi #0x5ef9f4
005f0afc  34 40 8d e5                                      str r4, [sp, #0x34]
005f0b00  7c 40 dd e5                                      ldrb r4, [sp, #0x7c]
005f0b04  80 90 dd e5                                      ldrb sb, [sp, #0x80]
005f0b08  6c a0 9d e5                                      ldr sl, [sp, #0x6c]
005f0b0c  2c 40 8d e5                                      str r4, [sp, #0x2c]
005f0b10  7f 40 dd e5                                      ldrb r4, [sp, #0x7f]
005f0b14  7d b0 dd e5                                      ldrb fp, [sp, #0x7d]
005f0b18  24 90 8d e5                                      str sb, [sp, #0x24]
005f0b1c  81 c0 dd e5                                      ldrb ip, [sp, #0x81]
005f0b20  83 90 dd e5                                      ldrb sb, [sp, #0x83]
005f0b24  70 00 9d e5                                      ldr r0, [sp, #0x70]
005f0b28  7e 10 dd e5                                      ldrb r1, [sp, #0x7e]
005f0b2c  82 20 dd e5                                      ldrb r2, [sp, #0x82]
005f0b30  74 30 9d e5                                      ldr r3, [sp, #0x74]
005f0b34  28 40 8d e5                                      str r4, [sp, #0x28]
005f0b38  34 40 9d e5                                      ldr r4, [sp, #0x34]
005f0b3c  20 a0 8d e5                                      str sl, [sp, #0x20]
005f0b40  b0 a0 8d e2                                      add sl, sp, #0xb0
005f0b44  1c b0 8d e5                                      str fp, [sp, #0x1c]
005f0b48  04 90 8d e5                                      str sb, [sp, #4]
005f0b4c  30 a0 8d e5                                      str sl, [sp, #0x30]
005f0b50  10 c0 8d e5                                      str ip, [sp, #0x10]
005f0b54  18 00 8d e5                                      str r0, [sp, #0x18]
005f0b58  14 10 8d e5                                      str r1, [sp, #0x14]
005f0b5c  0c 20 8d e5                                      str r2, [sp, #0xc]
005f0b60  08 30 8d e5                                      str r3, [sp, #8]
005f0b64  07 b0 a0 e1                                      mov fp, r7
005f0b68  08 90 a0 e1                                      mov sb, r8
005f0b6c  06 a0 a0 e1                                      mov sl, r6
005f0b70  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
005f0b74  00 00 53 e3                                      cmp r3, #0
005f0b78  48 00 00 0a                                      beq #0x5f0ca0
005f0b7c  f0 70 9d e5                                      ldr r7, [sp, #0xf0]
005f0b80  00 60 a0 e3                                      mov r6, #0
005f0b84  07 80 a0 e1                                      mov r8, r7
005f0b88  06 30 95 e7                                      ldr r3, [r5, r6]
005f0b8c  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
005f0b90  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
005f0b94  30 10 9d e5                                      ldr r1, [sp, #0x30]
005f0b98  33 ce a0 e1                                      lsr ip, r3, lr
005f0b9c  33 27 a0 e1                                      lsr r2, r3, r7
005f0ba0  20 e0 9d e5                                      ldr lr, [sp, #0x20]
005f0ba4  24 70 9d e5                                      ldr r7, [sp, #0x24]
005f0ba8  04 00 a0 e1                                      mov r0, r4
005f0bac  1c c7 0e e0                                      and ip, lr, ip, lsl r7
005f0bb0  3c c0 8d e5                                      str ip, [sp, #0x3c]
005f0bb4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005f0bb8  18 70 9d e5                                      ldr r7, [sp, #0x18]
005f0bbc  33 ec a0 e1                                      lsr lr, r3, ip
005f0bc0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005f0bc4  12 2c 07 e0                                      and r2, r7, r2, lsl ip
005f0bc8  28 70 9d e5                                      ldr r7, [sp, #0x28]
005f0bcc  08 c0 9d e5                                      ldr ip, [sp, #8]
005f0bd0  33 37 a0 e1                                      lsr r3, r3, r7
005f0bd4  0c 70 9d e5                                      ldr r7, [sp, #0xc]
005f0bd8  1e e7 0c e0                                      and lr, ip, lr, lsl r7
005f0bdc  04 c0 9d e5                                      ldr ip, [sp, #4]
005f0be0  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
005f0be4  13 3c 0a e0                                      and r3, sl, r3, lsl ip
005f0be8  07 c0 8b e1                                      orr ip, fp, r7
005f0bec  02 c0 8c e1                                      orr ip, ip, r2
005f0bf0  0e c0 8c e1                                      orr ip, ip, lr
005f0bf4  03 30 8c e1                                      orr r3, ip, r3
005f0bf8  b0 30 8d e5                                      str r3, [sp, #0xb0]
005f0bfc  00 30 94 e5                                      ldr r3, [r4]
005f0c00  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
005f0c04  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005f0c08  09 20 a0 e1                                      mov r2, sb
005f0c0c  33 77 a0 e1                                      lsr r7, r3, r7
005f0c10  33 ec a0 e1                                      lsr lr, r3, ip
005f0c14  40 70 8d e5                                      str r7, [sp, #0x40]
005f0c18  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005f0c1c  24 70 9d e5                                      ldr r7, [sp, #0x24]
005f0c20  09 40 84 e0                                      add r4, r4, sb
005f0c24  1e e7 0c e0                                      and lr, ip, lr, lsl r7
005f0c28  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005f0c2c  40 70 9d e5                                      ldr r7, [sp, #0x40]
005f0c30  3c e0 8d e5                                      str lr, [sp, #0x3c]
005f0c34  33 cc a0 e1                                      lsr ip, r3, ip
005f0c38  18 e0 9d e5                                      ldr lr, [sp, #0x18]
005f0c3c  48 c0 8d e5                                      str ip, [sp, #0x48]
005f0c40  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005f0c44  17 ec 0e e0                                      and lr, lr, r7, lsl ip
005f0c48  40 e0 8d e5                                      str lr, [sp, #0x40]
005f0c4c  28 e0 9d e5                                      ldr lr, [sp, #0x28]
005f0c50  48 c0 9d e5                                      ldr ip, [sp, #0x48]
005f0c54  08 70 9d e5                                      ldr r7, [sp, #8]
005f0c58  33 3e a0 e1                                      lsr r3, r3, lr
005f0c5c  0c e0 9d e5                                      ldr lr, [sp, #0xc]
005f0c60  1c 7e 07 e0                                      and r7, r7, ip, lsl lr
005f0c64  48 70 8d e5                                      str r7, [sp, #0x48]
005f0c68  04 70 9d e5                                      ldr r7, [sp, #4]
005f0c6c  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
005f0c70  40 e0 9d e5                                      ldr lr, [sp, #0x40]
005f0c74  13 37 0a e0                                      and r3, sl, r3, lsl r7
005f0c78  0c 70 8b e1                                      orr r7, fp, ip
005f0c7c  0e 70 87 e1                                      orr r7, r7, lr
005f0c80  48 e0 9d e5                                      ldr lr, [sp, #0x48]
005f0c84  0e c0 87 e1                                      orr ip, r7, lr
005f0c88  03 30 8c e1                                      orr r3, ip, r3
005f0c8c  06 30 85 e7                                      str r3, [r5, r6]
005f0c90  f4 76 f4 eb                                      bl #0x30e868
005f0c94  01 80 58 e2                                      subs r8, r8, #1
005f0c98  04 60 86 e2                                      add r6, r6, #4
005f0c9c  b9 ff ff 1a                                      bne #0x5f0b88
005f0ca0  34 00 9d e5                                      ldr r0, [sp, #0x34]
005f0ca4  44 10 9d e5                                      ldr r1, [sp, #0x44]
005f0ca8  38 20 9d e5                                      ldr r2, [sp, #0x38]
005f0cac  01 40 80 e0                                      add r4, r0, r1
005f0cb0  02 50 85 e0                                      add r5, r5, r2
005f0cb4  05 00 54 e1                                      cmp r4, r5
005f0cb8  4d fb ff 8a                                      bhi #0x5ef9f4
005f0cbc  34 40 8d e5                                      str r4, [sp, #0x34]
005f0cc0  aa ff ff ea                                      b #0x5f0b70
005f0cc4  f4 c0 9d e5                                      ldr ip, [sp, #0xf4]
005f0cc8  ec 00 9d e5                                      ldr r0, [sp, #0xec]
005f0ccc  01 30 4c e2                                      sub r3, ip, #1
005f0cd0  90 43 23 e0                                      mla r3, r0, r3, r4
005f0cd4  00 10 60 e2                                      rsb r1, r0, #0
005f0cd8  03 00 54 e1                                      cmp r4, r3
005f0cdc  b0 20 8d 92                                      addls r2, sp, #0xb0
005f0ce0  58 30 8d e5                                      str r3, [sp, #0x58]
005f0ce4  64 10 8d e5                                      str r1, [sp, #0x64]
005f0ce8  60 40 8d 95                                      strls r4, [sp, #0x60]
005f0cec  5c 20 8d 95                                      strls r2, [sp, #0x5c]
005f0cf0  3f fb ff 8a                                      bhi #0x5ef9f4
005f0cf4  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
005f0cf8  00 00 50 e3                                      cmp r0, #0
005f0cfc  8c 00 00 0a                                      beq #0x5f0f34
005f0d00  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
005f0d04  00 50 a0 e3                                      mov r5, #0
005f0d08  04 30 8d e5                                      str r3, [sp, #4]
005f0d0c  58 60 9d e5                                      ldr r6, [sp, #0x58]
005f0d10  88 90 9d e5                                      ldr sb, [sp, #0x88]
005f0d14  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
005f0d18  05 30 96 e7                                      ldr r3, [r6, r5]
005f0d1c  7d 70 dd e5                                      ldrb r7, [sp, #0x7d]
005f0d20  81 c0 dd e5                                      ldrb ip, [sp, #0x81]
005f0d24  09 b0 03 e0                                      and fp, r3, sb
005f0d28  00 a0 03 e0                                      and sl, r3, r0
005f0d2c  90 90 9d e5                                      ldr sb, [sp, #0x90]
005f0d30  7e e0 dd e5                                      ldrb lr, [sp, #0x7e]
005f0d34  3a a7 a0 e1                                      lsr sl, sl, r7
005f0d38  82 20 dd e5                                      ldrb r2, [sp, #0x82]
005f0d3c  09 10 03 e0                                      and r1, r3, sb
005f0d40  1a ac a0 e1                                      lsl sl, sl, ip
005f0d44  31 1e a0 e1                                      lsr r1, r1, lr
005f0d48  11 12 a0 e1                                      lsl r1, r1, r2
005f0d4c  7c 80 dd e5                                      ldrb r8, [sp, #0x7c]
005f0d50  80 60 dd e5                                      ldrb r6, [sp, #0x80]
005f0d54  1c a0 8d e5                                      str sl, [sp, #0x1c]
005f0d58  3b b8 a0 e1                                      lsr fp, fp, r8
005f0d5c  1b b6 a0 e1                                      lsl fp, fp, r6
005f0d60  a0 a0 dd e5                                      ldrb sl, [sp, #0xa0]
005f0d64  a1 00 dd e5                                      ldrb r0, [sp, #0xa1]
005f0d68  a2 90 dd e5                                      ldrb sb, [sp, #0xa2]
005f0d6c  08 a0 8d e5                                      str sl, [sp, #8]
005f0d70  10 10 8d e5                                      str r1, [sp, #0x10]
005f0d74  94 a0 9d e5                                      ldr sl, [sp, #0x94]
005f0d78  a3 10 dd e5                                      ldrb r1, [sp, #0xa3]
005f0d7c  24 00 8d e5                                      str r0, [sp, #0x24]
005f0d80  3c 90 8d e5                                      str sb, [sp, #0x3c]
005f0d84  0c 10 8d e5                                      str r1, [sp, #0xc]
005f0d88  08 00 9d e5                                      ldr r0, [sp, #8]
005f0d8c  0a 10 03 e0                                      and r1, r3, sl
005f0d90  a4 90 dd e5                                      ldrb sb, [sp, #0xa4]
005f0d94  98 a0 9d e5                                      ldr sl, [sp, #0x98]
005f0d98  31 10 a0 e1                                      lsr r1, r1, r0
005f0d9c  2c 90 8d e5                                      str sb, [sp, #0x2c]
005f0da0  24 00 9d e5                                      ldr r0, [sp, #0x24]
005f0da4  0a 90 03 e0                                      and sb, r3, sl
005f0da8  a5 a0 dd e5                                      ldrb sl, [sp, #0xa5]
005f0dac  39 90 a0 e1                                      lsr sb, sb, r0
005f0db0  40 a0 8d e5                                      str sl, [sp, #0x40]
005f0db4  7f 00 dd e5                                      ldrb r0, [sp, #0x7f]
005f0db8  9c a0 9d e5                                      ldr sl, [sp, #0x9c]
005f0dbc  50 00 8d e5                                      str r0, [sp, #0x50]
005f0dc0  0a 00 03 e0                                      and r0, r3, sl
005f0dc4  0c a0 9d e5                                      ldr sl, [sp, #0xc]
005f0dc8  11 ba 8b e1                                      orr fp, fp, r1, lsl sl
005f0dcc  18 b0 8d e5                                      str fp, [sp, #0x18]
005f0dd0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005f0dd4  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
005f0dd8  3c b0 9d e5                                      ldr fp, [sp, #0x3c]
005f0ddc  19 9a 81 e1                                      orr sb, r1, sb, lsl sl
005f0de0  30 0b a0 e1                                      lsr r0, r0, fp
005f0de4  40 10 9d e5                                      ldr r1, [sp, #0x40]
005f0de8  10 b0 9d e5                                      ldr fp, [sp, #0x10]
005f0dec  50 a0 9d e5                                      ldr sl, [sp, #0x50]
005f0df0  1c 90 8d e5                                      str sb, [sp, #0x1c]
005f0df4  10 01 8b e1                                      orr r0, fp, r0, lsl r1
005f0df8  83 90 dd e5                                      ldrb sb, [sp, #0x83]
005f0dfc  78 b0 9d e5                                      ldr fp, [sp, #0x78]
005f0e00  33 3a a0 e1                                      lsr r3, r3, sl
005f0e04  13 39 0b e0                                      and r3, fp, r3, lsl sb
005f0e08  6c a0 9d e5                                      ldr sl, [sp, #0x6c]
005f0e0c  10 30 8d e5                                      str r3, [sp, #0x10]
005f0e10  18 30 9d e5                                      ldr r3, [sp, #0x18]
005f0e14  84 b0 9d e5                                      ldr fp, [sp, #0x84]
005f0e18  0a 10 03 e0                                      and r1, r3, sl
005f0e1c  0b 10 81 e1                                      orr r1, r1, fp
005f0e20  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005f0e24  70 b0 9d e5                                      ldr fp, [sp, #0x70]
005f0e28  0b a0 03 e0                                      and sl, r3, fp
005f0e2c  0a a0 81 e1                                      orr sl, r1, sl
005f0e30  74 10 9d e5                                      ldr r1, [sp, #0x74]
005f0e34  10 30 9d e5                                      ldr r3, [sp, #0x10]
005f0e38  88 b0 9d e5                                      ldr fp, [sp, #0x88]
005f0e3c  01 00 00 e0                                      and r0, r0, r1
005f0e40  00 00 8a e1                                      orr r0, sl, r0
005f0e44  03 00 80 e1                                      orr r0, r0, r3
005f0e48  b0 00 8d e5                                      str r0, [sp, #0xb0]
005f0e4c  00 30 94 e5                                      ldr r3, [r4]
005f0e50  04 00 a0 e1                                      mov r0, r4
005f0e54  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
005f0e58  0b a0 03 e0                                      and sl, r3, fp
005f0e5c  8c b0 9d e5                                      ldr fp, [sp, #0x8c]
005f0e60  3a a8 a0 e1                                      lsr sl, sl, r8
005f0e64  0b 80 03 e0                                      and r8, r3, fp
005f0e68  38 77 a0 e1                                      lsr r7, r8, r7
005f0e6c  1a a6 a0 e1                                      lsl sl, sl, r6
005f0e70  90 80 9d e5                                      ldr r8, [sp, #0x90]
005f0e74  17 7c a0 e1                                      lsl r7, r7, ip
005f0e78  08 b0 03 e0                                      and fp, r3, r8
005f0e7c  3b ee a0 e1                                      lsr lr, fp, lr
005f0e80  1e e2 a0 e1                                      lsl lr, lr, r2
005f0e84  94 b0 9d e5                                      ldr fp, [sp, #0x94]
005f0e88  08 20 9d e5                                      ldr r2, [sp, #8]
005f0e8c  98 60 9d e5                                      ldr r6, [sp, #0x98]
005f0e90  0b c0 03 e0                                      and ip, r3, fp
005f0e94  3c c2 a0 e1                                      lsr ip, ip, r2
005f0e98  06 20 03 e0                                      and r2, r3, r6
005f0e9c  0c 60 9d e5                                      ldr r6, [sp, #0xc]
005f0ea0  24 80 9d e5                                      ldr r8, [sp, #0x24]
005f0ea4  9c b0 9d e5                                      ldr fp, [sp, #0x9c]
005f0ea8  1c a6 8a e1                                      orr sl, sl, ip, lsl r6
005f0eac  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005f0eb0  32 28 a0 e1                                      lsr r2, r2, r8
005f0eb4  0b 80 03 e0                                      and r8, r3, fp
005f0eb8  3c b0 9d e5                                      ldr fp, [sp, #0x3c]
005f0ebc  12 7c 87 e1                                      orr r7, r7, r2, lsl ip
005f0ec0  40 20 9d e5                                      ldr r2, [sp, #0x40]
005f0ec4  38 8b a0 e1                                      lsr r8, r8, fp
005f0ec8  50 60 9d e5                                      ldr r6, [sp, #0x50]
005f0ecc  18 e2 8e e1                                      orr lr, lr, r8, lsl r2
005f0ed0  78 80 9d e5                                      ldr r8, [sp, #0x78]
005f0ed4  33 36 a0 e1                                      lsr r3, r3, r6
005f0ed8  13 39 08 e0                                      and r3, r8, r3, lsl sb
005f0edc  6c 90 9d e5                                      ldr sb, [sp, #0x6c]
005f0ee0  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005f0ee4  84 b0 9d e5                                      ldr fp, [sp, #0x84]
005f0ee8  74 20 9d e5                                      ldr r2, [sp, #0x74]
005f0eec  09 a0 0a e0                                      and sl, sl, sb
005f0ef0  0c 70 07 e0                                      and r7, r7, ip
005f0ef4  0b a0 8a e1                                      orr sl, sl, fp
005f0ef8  07 70 8a e1                                      orr r7, sl, r7
005f0efc  02 e0 0e e0                                      and lr, lr, r2
005f0f00  58 60 9d e5                                      ldr r6, [sp, #0x58]
005f0f04  0e e0 87 e1                                      orr lr, r7, lr
005f0f08  03 30 8e e1                                      orr r3, lr, r3
005f0f0c  05 30 86 e7                                      str r3, [r6, r5]
005f0f10  14 20 9d e5                                      ldr r2, [sp, #0x14]
005f0f14  53 76 f4 eb                                      bl #0x30e868
005f0f18  04 70 9d e5                                      ldr r7, [sp, #4]
005f0f1c  14 80 9d e5                                      ldr r8, [sp, #0x14]
005f0f20  04 50 85 e2                                      add r5, r5, #4
005f0f24  01 70 57 e2                                      subs r7, r7, #1
005f0f28  04 70 8d e5                                      str r7, [sp, #4]
005f0f2c  08 40 84 e0                                      add r4, r4, r8
005f0f30  75 ff ff 1a                                      bne #0x5f0d0c
005f0f34  58 b0 9d e5                                      ldr fp, [sp, #0x58]
005f0f38  60 90 9d e5                                      ldr sb, [sp, #0x60]
005f0f3c  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005f0f40  64 c0 9d e5                                      ldr ip, [sp, #0x64]
005f0f44  0a 40 89 e0                                      add r4, sb, sl
005f0f48  0c b0 8b e0                                      add fp, fp, ip
005f0f4c  0b 00 54 e1                                      cmp r4, fp
005f0f50  58 b0 8d e5                                      str fp, [sp, #0x58]
005f0f54  a6 fa ff 8a                                      bhi #0x5ef9f4
005f0f58  60 40 8d e5                                      str r4, [sp, #0x60]
005f0f5c  64 ff ff ea                                      b #0x5f0cf4

; FUNCTION 0x005f0f60, declared_size=8316, range_size=8316, mode=arm
; class-group: bool glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format12_GLOBAL__N_117convertPackedImplIttEEbNS0_14E_PIXEL_FORMATEPKT_jS4_PT0_jjjb
; demangled: bool glitch::video::pixel_format::(anonymous namespace)::convertPackedImpl<unsigned short, unsigned short>(glitch::video::E_PIXEL_FORMAT, unsigned short const*, unsigned int, glitch::video::E_PIXEL_FORMAT, unsigned short*, unsigned int, unsigned int, unsigned int, bool)
; decoder-mode: arm
005f0f60  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005f0f64  c0 6e 9f e5                                      ldr r6, [pc, #0xec0]
005f0f68  c0 4e 9f e5                                      ldr r4, [pc, #0xec0]
005f0f6c  00 70 a0 e1                                      mov r7, r0
005f0f70  06 60 8f e0                                      add r6, pc, r6
005f0f74  04 00 96 e7                                      ldr r0, [r6, r4]
005f0f78  28 a0 a0 e3                                      mov sl, #0x28
005f0f7c  bc d0 4d e2                                      sub sp, sp, #0xbc
005f0f80  9a 03 28 e0                                      mla r8, sl, r3, r0
005f0f84  9a 07 2a e0                                      mla sl, sl, r7, r0
005f0f88  19 c0 d8 e5                                      ldrb ip, [r8, #0x19]
005f0f8c  19 00 da e5                                      ldrb r0, [sl, #0x19]
005f0f90  f0 90 dd e5                                      ldrb sb, [sp, #0xf0]
005f0f94  04 40 8d e5                                      str r4, [sp, #4]
005f0f98  00 00 50 e3                                      cmp r0, #0
005f0f9c  0c 00 a0 01                                      moveq r0, ip
005f0fa0  00 00 5c e3                                      cmp ip, #0
005f0fa4  01 40 a0 e1                                      mov r4, r1
005f0fa8  44 20 8d e5                                      str r2, [sp, #0x44]
005f0fac  e0 50 9d e5                                      ldr r5, [sp, #0xe0]
005f0fb0  10 90 8d e5                                      str sb, [sp, #0x10]
005f0fb4  3b 00 00 0a                                      beq #0x5f10a8
005f0fb8  0c 00 50 e1                                      cmp r0, ip
005f0fbc  39 00 00 2a                                      bhs #0x5f10a8
005f0fc0  80 00 5c e1                                      cmp ip, r0, lsl #1
005f0fc4  44 02 00 ca                                      bgt #0x5f18dc
005f0fc8  1b 20 da e5                                      ldrb r2, [sl, #0x1b]
005f0fcc  1b 10 d8 e5                                      ldrb r1, [r8, #0x1b]
005f0fd0  00 00 52 e3                                      cmp r2, #0
005f0fd4  01 20 a0 01                                      moveq r2, r1
005f0fd8  00 00 51 e3                                      cmp r1, #0
005f0fdc  d4 01 00 0a                                      beq #0x5f1734
005f0fe0  01 00 52 e1                                      cmp r2, r1
005f0fe4  d2 01 00 2a                                      bhs #0x5f1734
005f0fe8  82 00 51 e1                                      cmp r1, r2, lsl #1
005f0fec  9d 02 00 da                                      ble #0x5f1a68
005f0ff0  6c 80 8d e2                                      add r8, sp, #0x6c
005f0ff4  07 10 a0 e1                                      mov r1, r7
005f0ff8  03 20 a0 e1                                      mov r2, r3
005f0ffc  08 00 a0 e1                                      mov r0, r8
005f1000  b7 f6 ff eb                                      bl #0x5eeae4
005f1004  05 00 54 e1                                      cmp r4, r5
005f1008  15 60 da e5                                      ldrb r6, [sl, #0x15]
005f100c  60 04 00 0a                                      beq #0x5f2194
005f1010  10 00 9d e5                                      ldr r0, [sp, #0x10]
005f1014  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f1018  00 00 50 e3                                      cmp r0, #0
005f101c  04 10 8d e5                                      str r1, [sp, #4]
005f1020  04 00 00 0a                                      beq #0x5f1038
005f1024  ec 20 9d e5                                      ldr r2, [sp, #0xec]
005f1028  01 30 42 e2                                      sub r3, r2, #1
005f102c  91 53 25 e0                                      mla r5, r1, r3, r5
005f1030  00 30 61 e2                                      rsb r3, r1, #0
005f1034  04 30 8d e5                                      str r3, [sp, #4]
005f1038  ec 70 9d e5                                      ldr r7, [sp, #0xec]
005f103c  00 00 57 e3                                      cmp r7, #0
005f1040  05 90 a0 11                                      movne sb, r5
005f1044  04 b0 a0 11                                      movne fp, r4
005f1048  83 02 00 0a                                      beq #0x5f1a5c
005f104c  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005f1050  00 00 51 e3                                      cmp r1, #0
005f1054  08 00 00 0a                                      beq #0x5f107c
005f1058  e8 a0 9d e5                                      ldr sl, [sp, #0xe8]
005f105c  00 70 a0 e3                                      mov r7, #0
005f1060  b6 10 94 e0                                      ldrh r1, [r4], r6
005f1064  08 00 a0 e1                                      mov r0, r8
005f1068  9b f3 ff eb                                      bl #0x5ededc
005f106c  01 a0 5a e2                                      subs sl, sl, #1
005f1070  b7 00 85 e1                                      strh r0, [r5, r7]
005f1074  02 70 87 e2                                      add r7, r7, #2
005f1078  f8 ff ff 1a                                      bne #0x5f1060
005f107c  ec a0 9d e5                                      ldr sl, [sp, #0xec]
005f1080  01 a0 5a e2                                      subs sl, sl, #1
005f1084  ec a0 8d e5                                      str sl, [sp, #0xec]
005f1088  73 02 00 0a                                      beq #0x5f1a5c
005f108c  44 c0 9d e5                                      ldr ip, [sp, #0x44]
005f1090  04 00 9d e5                                      ldr r0, [sp, #4]
005f1094  0c 40 8b e0                                      add r4, fp, ip
005f1098  00 90 89 e0                                      add sb, sb, r0
005f109c  09 50 a0 e1                                      mov r5, sb
005f10a0  04 b0 a0 e1                                      mov fp, r4
005f10a4  e8 ff ff ea                                      b #0x5f104c
005f10a8  04 a0 9d e5                                      ldr sl, [sp, #4]
005f10ac  28 00 a0 e3                                      mov r0, #0x28
005f10b0  90 03 01 e0                                      mul r1, r0, r3
005f10b4  0a 20 96 e7                                      ldr r2, [r6, sl]
005f10b8  90 07 00 e0                                      mul r0, r0, r7
005f10bc  01 c0 82 e0                                      add ip, r2, r1
005f10c0  1b c0 dc e5                                      ldrb ip, [ip, #0x1b]
005f10c4  00 80 82 e0                                      add r8, r2, r0
005f10c8  1b b0 d8 e5                                      ldrb fp, [r8, #0x1b]
005f10cc  08 c0 8d e5                                      str ip, [sp, #8]
005f10d0  08 90 9d e5                                      ldr sb, [sp, #8]
005f10d4  00 00 5b e3                                      cmp fp, #0
005f10d8  0b c0 a0 e1                                      mov ip, fp
005f10dc  09 c0 a0 01                                      moveq ip, sb
005f10e0  00 00 59 e3                                      cmp sb, #0
005f10e4  0c b0 8d e5                                      str fp, [sp, #0xc]
005f10e8  97 00 00 1a                                      bne #0x5f134c
005f10ec  04 a0 9d e5                                      ldr sl, [sp, #4]
005f10f0  28 10 a0 e3                                      mov r1, #0x28
005f10f4  91 03 00 e0                                      mul r0, r1, r3
005f10f8  0a 20 96 e7                                      ldr r2, [r6, sl]
005f10fc  00 00 92 e7                                      ldr r0, [r2, r0]
005f1100  01 00 10 e3                                      tst r0, #1
005f1104  8b 02 00 1a                                      bne #0x5f1b38
005f1108  00 c0 a0 e3                                      mov ip, #0
005f110c  08 c0 8d e5                                      str ip, [sp, #8]
005f1110  04 00 9d e5                                      ldr r0, [sp, #4]
005f1114  6c 80 8d e2                                      add r8, sp, #0x6c
005f1118  08 10 a0 e1                                      mov r1, r8
005f111c  00 20 96 e7                                      ldr r2, [r6, r0]
005f1120  28 00 a0 e3                                      mov r0, #0x28
005f1124  0c 70 8d e5                                      str r7, [sp, #0xc]
005f1128  90 23 23 e0                                      mla r3, r0, r3, r2
005f112c  14 40 8d e5                                      str r4, [sp, #0x14]
005f1130  90 27 20 e0                                      mla r0, r0, r7, r2
005f1134  03 90 a0 e1                                      mov sb, r3
005f1138  00 20 a0 e3                                      mov r2, #0
005f113c  05 b0 a0 e1                                      mov fp, r5
005f1140  08 00 00 ea                                      b #0x5f1168
005f1144  05 c0 8c e0                                      add ip, ip, r5
005f1148  04 20 82 e2                                      add r2, r2, #4
005f114c  0c c0 64 e0                                      rsb ip, r4, ip
005f1150  10 00 52 e3                                      cmp r2, #0x10
005f1154  10 c0 c1 e5                                      strb ip, [r1, #0x10]
005f1158  01 00 80 e2                                      add r0, r0, #1
005f115c  01 10 81 e2                                      add r1, r1, #1
005f1160  01 30 83 e2                                      add r3, r3, #1
005f1164  14 00 00 0a                                      beq #0x5f11bc
005f1168  02 50 89 e0                                      add r5, sb, r2
005f116c  18 c0 d0 e5                                      ldrb ip, [r0, #0x18]
005f1170  18 40 d3 e5                                      ldrb r4, [r3, #0x18]
005f1174  04 a0 95 e5                                      ldr sl, [r5, #4]
005f1178  1c 70 d3 e5                                      ldrb r7, [r3, #0x1c]
005f117c  1c 50 d0 e5                                      ldrb r5, [r0, #0x1c]
005f1180  04 00 5c e1                                      cmp ip, r4
005f1184  02 a0 88 e7                                      str sl, [r8, r2]
005f1188  10 50 c1 e5                                      strb r5, [r1, #0x10]
005f118c  14 70 c1 e5                                      strb r7, [r1, #0x14]
005f1190  eb ff ff 8a                                      bhi #0x5f1144
005f1194  8c 00 54 e1                                      cmp r4, ip, lsl #1
005f1198  07 40 84 d0                                      addle r4, r4, r7
005f119c  04 c0 6c d0                                      rsble ip, ip, r4
005f11a0  04 20 82 e2                                      add r2, r2, #4
005f11a4  14 c0 c1 d5                                      strble ip, [r1, #0x14]
005f11a8  10 00 52 e3                                      cmp r2, #0x10
005f11ac  01 00 80 e2                                      add r0, r0, #1
005f11b0  01 10 81 e2                                      add r1, r1, #1
005f11b4  01 30 83 e2                                      add r3, r3, #1
005f11b8  ea ff ff 1a                                      bne #0x5f1168
005f11bc  04 10 9d e5                                      ldr r1, [sp, #4]
005f11c0  0c 70 9d e5                                      ldr r7, [sp, #0xc]
005f11c4  14 40 9d e5                                      ldr r4, [sp, #0x14]
005f11c8  01 30 96 e7                                      ldr r3, [r6, r1]
005f11cc  28 10 a0 e3                                      mov r1, #0x28
005f11d0  78 60 9d e5                                      ldr r6, [sp, #0x78]
005f11d4  91 37 23 e0                                      mla r3, r1, r7, r3
005f11d8  0b 00 54 e1                                      cmp r4, fp
005f11dc  02 20 83 e0                                      add r2, r3, r2
005f11e0  08 30 9d e5                                      ldr r3, [sp, #8]
005f11e4  0b 50 a0 e1                                      mov r5, fp
005f11e8  05 80 d2 e5                                      ldrb r8, [r2, #5]
005f11ec  06 70 03 e0                                      and r7, r3, r6
005f11f0  6a 03 00 0a                                      beq #0x5f1fa0
005f11f4  10 00 9d e5                                      ldr r0, [sp, #0x10]
005f11f8  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f11fc  00 00 50 e3                                      cmp r0, #0
005f1200  30 10 8d e5                                      str r1, [sp, #0x30]
005f1204  04 00 00 0a                                      beq #0x5f121c
005f1208  ec 20 9d e5                                      ldr r2, [sp, #0xec]
005f120c  01 30 42 e2                                      sub r3, r2, #1
005f1210  91 b3 25 e0                                      mla r5, r1, r3, fp
005f1214  00 30 61 e2                                      rsb r3, r1, #0
005f1218  30 30 8d e5                                      str r3, [sp, #0x30]
005f121c  ec 90 9d e5                                      ldr sb, [sp, #0xec]
005f1220  00 00 59 e3                                      cmp sb, #0
005f1224  0c 02 00 0a                                      beq #0x5f1a5c
005f1228  6c a0 9d e5                                      ldr sl, [sp, #0x6c]
005f122c  7d c0 dd e5                                      ldrb ip, [sp, #0x7d]
005f1230  81 00 dd e5                                      ldrb r0, [sp, #0x81]
005f1234  24 a0 8d e5                                      str sl, [sp, #0x24]
005f1238  20 c0 8d e5                                      str ip, [sp, #0x20]
005f123c  1c 00 8d e5                                      str r0, [sp, #0x1c]
005f1240  70 10 9d e5                                      ldr r1, [sp, #0x70]
005f1244  83 00 dd e5                                      ldrb r0, [sp, #0x83]
005f1248  7e 20 dd e5                                      ldrb r2, [sp, #0x7e]
005f124c  82 30 dd e5                                      ldrb r3, [sp, #0x82]
005f1250  74 a0 9d e5                                      ldr sl, [sp, #0x74]
005f1254  7f c0 dd e5                                      ldrb ip, [sp, #0x7f]
005f1258  7c b0 dd e5                                      ldrb fp, [sp, #0x7c]
005f125c  80 90 dd e5                                      ldrb sb, [sp, #0x80]
005f1260  04 00 8d e5                                      str r0, [sp, #4]
005f1264  10 10 8d e5                                      str r1, [sp, #0x10]
005f1268  18 20 8d e5                                      str r2, [sp, #0x18]
005f126c  14 30 8d e5                                      str r3, [sp, #0x14]
005f1270  0c a0 8d e5                                      str sl, [sp, #0xc]
005f1274  08 c0 8d e5                                      str ip, [sp, #8]
005f1278  04 00 a0 e1                                      mov r0, r4
005f127c  2c 40 8d e5                                      str r4, [sp, #0x2c]
005f1280  e8 20 9d e5                                      ldr r2, [sp, #0xe8]
005f1284  00 00 52 e3                                      cmp r2, #0
005f1288  23 00 00 0a                                      beq #0x5f131c
005f128c  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005f1290  00 20 a0 e3                                      mov r2, #0
005f1294  07 a0 a0 e1                                      mov sl, r7
005f1298  28 60 8d e5                                      str r6, [sp, #0x28]
005f129c  34 50 8d e5                                      str r5, [sp, #0x34]
005f12a0  b8 30 90 e0                                      ldrh r3, [r0], r8
005f12a4  20 50 9d e5                                      ldr r5, [sp, #0x20]
005f12a8  24 60 9d e5                                      ldr r6, [sp, #0x24]
005f12ac  10 70 9d e5                                      ldr r7, [sp, #0x10]
005f12b0  33 c5 a0 e1                                      lsr ip, r3, r5
005f12b4  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
005f12b8  33 4b a0 e1                                      lsr r4, r3, fp
005f12bc  1c c5 07 e0                                      and ip, r7, ip, lsl r5
005f12c0  14 49 06 e0                                      and r4, r6, r4, lsl sb
005f12c4  08 50 9d e5                                      ldr r5, [sp, #8]
005f12c8  18 60 9d e5                                      ldr r6, [sp, #0x18]
005f12cc  0c c0 84 e1                                      orr ip, r4, ip
005f12d0  0a c0 8c e1                                      orr ip, ip, sl
005f12d4  33 76 a0 e1                                      lsr r7, r3, r6
005f12d8  0c 60 9d e5                                      ldr r6, [sp, #0xc]
005f12dc  33 35 a0 e1                                      lsr r3, r3, r5
005f12e0  14 50 9d e5                                      ldr r5, [sp, #0x14]
005f12e4  01 10 51 e2                                      subs r1, r1, #1
005f12e8  17 75 06 e0                                      and r7, r6, r7, lsl r5
005f12ec  28 60 9d e5                                      ldr r6, [sp, #0x28]
005f12f0  04 50 9d e5                                      ldr r5, [sp, #4]
005f12f4  07 70 8c e1                                      orr r7, ip, r7
005f12f8  13 35 06 e0                                      and r3, r6, r3, lsl r5
005f12fc  34 60 9d e5                                      ldr r6, [sp, #0x34]
005f1300  03 30 87 e1                                      orr r3, r7, r3
005f1304  b2 30 86 e1                                      strh r3, [r6, r2]
005f1308  02 20 82 e2                                      add r2, r2, #2
005f130c  e3 ff ff 1a                                      bne #0x5f12a0
005f1310  28 60 9d e5                                      ldr r6, [sp, #0x28]
005f1314  34 50 9d e5                                      ldr r5, [sp, #0x34]
005f1318  0a 70 a0 e1                                      mov r7, sl
005f131c  ec a0 9d e5                                      ldr sl, [sp, #0xec]
005f1320  01 a0 5a e2                                      subs sl, sl, #1
005f1324  ec a0 8d e5                                      str sl, [sp, #0xec]
005f1328  cb 01 00 0a                                      beq #0x5f1a5c
005f132c  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005f1330  44 00 9d e5                                      ldr r0, [sp, #0x44]
005f1334  30 10 9d e5                                      ldr r1, [sp, #0x30]
005f1338  00 c0 8c e0                                      add ip, ip, r0
005f133c  2c c0 8d e5                                      str ip, [sp, #0x2c]
005f1340  01 50 85 e0                                      add r5, r5, r1
005f1344  0c 00 a0 e1                                      mov r0, ip
005f1348  cc ff ff ea                                      b #0x5f1280
005f134c  09 00 5c e1                                      cmp ip, sb
005f1350  65 ff ff 2a                                      bhs #0x5f10ec
005f1354  08 90 9d e5                                      ldr sb, [sp, #8]
005f1358  89 00 5c e1                                      cmp ip, sb, lsl #1
005f135c  51 00 00 aa                                      bge #0x5f14a8
005f1360  07 10 a0 e1                                      mov r1, r7
005f1364  03 20 a0 e1                                      mov r2, r3
005f1368  6c 00 8d e2                                      add r0, sp, #0x6c
005f136c  9d f4 ff eb                                      bl #0x5ee5e8
005f1370  05 00 54 e1                                      cmp r4, r5
005f1374  15 b0 d8 e5                                      ldrb fp, [r8, #0x15]
005f1378  61 02 00 0a                                      beq #0x5f1d04
005f137c  10 10 9d e5                                      ldr r1, [sp, #0x10]
005f1380  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f1384  00 00 51 e3                                      cmp r1, #0
005f1388  14 20 8d e5                                      str r2, [sp, #0x14]
005f138c  04 00 00 0a                                      beq #0x5f13a4
005f1390  ec 60 9d e5                                      ldr r6, [sp, #0xec]
005f1394  00 70 62 e2                                      rsb r7, r2, #0
005f1398  14 70 8d e5                                      str r7, [sp, #0x14]
005f139c  01 30 46 e2                                      sub r3, r6, #1
005f13a0  92 53 25 e0                                      mla r5, r2, r3, r5
005f13a4  ec 80 9d e5                                      ldr r8, [sp, #0xec]
005f13a8  00 00 58 e3                                      cmp r8, #0
005f13ac  04 10 a0 11                                      movne r1, r4
005f13b0  0c 40 8d 15                                      strne r4, [sp, #0xc]
005f13b4  08 50 8d 15                                      strne r5, [sp, #8]
005f13b8  a7 01 00 0a                                      beq #0x5f1a5c
005f13bc  e8 40 9d e5                                      ldr r4, [sp, #0xe8]
005f13c0  00 00 54 e3                                      cmp r4, #0
005f13c4  29 00 00 0a                                      beq #0x5f1470
005f13c8  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
005f13cc  00 20 a0 e3                                      mov r2, #0
005f13d0  bb 30 91 e0                                      ldrh r3, [r1], fp
005f13d4  90 c0 9d e5                                      ldr ip, [sp, #0x90]
005f13d8  7f 40 dd e5                                      ldrb r4, [sp, #0x7f]
005f13dc  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005f13e0  0c c0 03 e0                                      and ip, r3, ip
005f13e4  7c a0 dd e5                                      ldrb sl, [sp, #0x7c]
005f13e8  3c c4 a0 e1                                      lsr ip, ip, r4
005f13ec  7d 50 dd e5                                      ldrb r5, [sp, #0x7d]
005f13f0  8c 40 9d e5                                      ldr r4, [sp, #0x8c]
005f13f4  82 70 dd e5                                      ldrb r7, [sp, #0x82]
005f13f8  8c c0 a0 e1                                      lsl ip, ip, #1
005f13fc  bc c0 94 e1                                      ldrh ip, [r4, ip]
005f1400  33 aa a0 e1                                      lsr sl, r3, sl
005f1404  88 90 dd e5                                      ldrb sb, [sp, #0x88]
005f1408  81 40 dd e5                                      ldrb r4, [sp, #0x81]
005f140c  33 55 a0 e1                                      lsr r5, r3, r5
005f1410  33 36 a0 e1                                      lsr r3, r3, r6
005f1414  70 60 9d e5                                      ldr r6, [sp, #0x70]
005f1418  04 70 8d e5                                      str r7, [sp, #4]
005f141c  80 80 dd e5                                      ldrb r8, [sp, #0x80]
005f1420  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
005f1424  15 44 06 e0                                      and r4, r6, r5, lsl r4
005f1428  5c c9 a0 e1                                      asr ip, ip, sb
005f142c  74 60 9d e5                                      ldr r6, [sp, #0x74]
005f1430  04 90 9d e5                                      ldr sb, [sp, #4]
005f1434  1a 78 07 e0                                      and r7, r7, sl, lsl r8
005f1438  13 39 06 e0                                      and r3, r6, r3, lsl sb
005f143c  83 80 dd e5                                      ldrb r8, [sp, #0x83]
005f1440  78 90 9d e5                                      ldr sb, [sp, #0x78]
005f1444  08 a0 9d e5                                      ldr sl, [sp, #8]
005f1448  01 00 50 e2                                      subs r0, r0, #1
005f144c  1c c8 09 e0                                      and ip, sb, ip, lsl r8
005f1450  84 80 9d e5                                      ldr r8, [sp, #0x84]
005f1454  08 70 87 e1                                      orr r7, r7, r8
005f1458  04 40 87 e1                                      orr r4, r7, r4
005f145c  03 30 84 e1                                      orr r3, r4, r3
005f1460  0c c0 83 e1                                      orr ip, r3, ip
005f1464  b2 c0 8a e1                                      strh ip, [sl, r2]
005f1468  02 20 82 e2                                      add r2, r2, #2
005f146c  d7 ff ff 1a                                      bne #0x5f13d0
005f1470  ec c0 9d e5                                      ldr ip, [sp, #0xec]
005f1474  01 c0 5c e2                                      subs ip, ip, #1
005f1478  ec c0 8d e5                                      str ip, [sp, #0xec]
005f147c  76 01 00 0a                                      beq #0x5f1a5c
005f1480  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005f1484  44 10 9d e5                                      ldr r1, [sp, #0x44]
005f1488  08 20 9d e5                                      ldr r2, [sp, #8]
005f148c  14 30 9d e5                                      ldr r3, [sp, #0x14]
005f1490  01 00 80 e0                                      add r0, r0, r1
005f1494  0c 00 8d e5                                      str r0, [sp, #0xc]
005f1498  03 20 82 e0                                      add r2, r2, r3
005f149c  08 20 8d e5                                      str r2, [sp, #8]
005f14a0  00 10 a0 e1                                      mov r1, r0
005f14a4  c4 ff ff ea                                      b #0x5f13bc
005f14a8  01 10 92 e7                                      ldr r1, [r2, r1]
005f14ac  01 00 11 e3                                      tst r1, #1
005f14b0  9a 01 00 1a                                      bne #0x5f1b20
005f14b4  00 90 a0 e3                                      mov sb, #0
005f14b8  14 90 8d e5                                      str sb, [sp, #0x14]
005f14bc  04 a0 9d e5                                      ldr sl, [sp, #4]
005f14c0  28 c0 a0 e3                                      mov ip, #0x28
005f14c4  6c 80 8d e2                                      add r8, sp, #0x6c
005f14c8  0a 20 96 e7                                      ldr r2, [r6, sl]
005f14cc  08 10 a0 e1                                      mov r1, r8
005f14d0  1c 70 8d e5                                      str r7, [sp, #0x1c]
005f14d4  9c 23 20 e0                                      mla r0, ip, r3, r2
005f14d8  20 40 8d e5                                      str r4, [sp, #0x20]
005f14dc  9c 27 2c e0                                      mla ip, ip, r7, r2
005f14e0  00 90 a0 e1                                      mov sb, r0
005f14e4  00 20 a0 e3                                      mov r2, #0
005f14e8  24 30 8d e5                                      str r3, [sp, #0x24]
005f14ec  05 b0 a0 e1                                      mov fp, r5
005f14f0  02 50 89 e0                                      add r5, sb, r2
005f14f4  18 30 dc e5                                      ldrb r3, [ip, #0x18]
005f14f8  18 40 d0 e5                                      ldrb r4, [r0, #0x18]
005f14fc  04 a0 95 e5                                      ldr sl, [r5, #4]
005f1500  1c 70 d0 e5                                      ldrb r7, [r0, #0x1c]
005f1504  1c 50 dc e5                                      ldrb r5, [ip, #0x1c]
005f1508  04 00 53 e1                                      cmp r3, r4
005f150c  02 a0 88 e7                                      str sl, [r8, r2]
005f1510  10 50 c1 e5                                      strb r5, [r1, #0x10]
005f1514  14 70 c1 e5                                      strb r7, [r1, #0x14]
005f1518  93 01 00 9a                                      bls #0x5f1b6c
005f151c  05 30 83 e0                                      add r3, r3, r5
005f1520  03 30 64 e0                                      rsb r3, r4, r3
005f1524  10 30 c1 e5                                      strb r3, [r1, #0x10]
005f1528  04 20 82 e2                                      add r2, r2, #4
005f152c  10 00 52 e3                                      cmp r2, #0x10
005f1530  01 c0 8c e2                                      add ip, ip, #1
005f1534  01 10 81 e2                                      add r1, r1, #1
005f1538  01 00 80 e2                                      add r0, r0, #1
005f153c  eb ff ff 1a                                      bne #0x5f14f0
005f1540  0b 50 a0 e1                                      mov r5, fp
005f1544  04 b0 9d e5                                      ldr fp, [sp, #4]
005f1548  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
005f154c  24 30 9d e5                                      ldr r3, [sp, #0x24]
005f1550  0b 10 96 e7                                      ldr r1, [r6, fp]
005f1554  28 00 a0 e3                                      mov r0, #0x28
005f1558  08 c0 9d e5                                      ldr ip, [sp, #8]
005f155c  90 17 27 e0                                      mla r7, r0, r7, r1
005f1560  90 13 20 e0                                      mla r0, r0, r3, r1
005f1564  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005f1568  02 60 97 e7                                      ldr r6, [r7, r2]
005f156c  7f b0 dd e5                                      ldrb fp, [sp, #0x7f]
005f1570  81 30 6c e0                                      rsb r3, ip, r1, lsl #1
005f1574  73 30 ef e6                                      uxtb r3, r3
005f1578  0b 10 83 e0                                      add r1, r3, fp
005f157c  16 33 06 e0                                      and r3, r6, r6, lsl r3
005f1580  78 80 9d e5                                      ldr r8, [sp, #0x78]
005f1584  14 90 9d e5                                      ldr sb, [sp, #0x14]
005f1588  20 40 9d e5                                      ldr r4, [sp, #0x20]
005f158c  1f 00 d0 e5                                      ldrb r0, [r0, #0x1f]
005f1590  02 20 87 e0                                      add r2, r7, r2
005f1594  08 90 09 e0                                      and sb, sb, r8
005f1598  71 10 ef e6                                      uxtb r1, r1
005f159c  05 00 54 e1                                      cmp r4, r5
005f15a0  40 80 8d e5                                      str r8, [sp, #0x40]
005f15a4  04 90 8d e5                                      str sb, [sp, #4]
005f15a8  0c 10 8d e5                                      str r1, [sp, #0xc]
005f15ac  14 00 8d e5                                      str r0, [sp, #0x14]
005f15b0  05 70 d2 e5                                      ldrb r7, [r2, #5]
005f15b4  08 30 8d e5                                      str r3, [sp, #8]
005f15b8  70 01 00 0a                                      beq #0x5f1b80
005f15bc  10 90 9d e5                                      ldr sb, [sp, #0x10]
005f15c0  e4 a0 9d e5                                      ldr sl, [sp, #0xe4]
005f15c4  00 00 59 e3                                      cmp sb, #0
005f15c8  48 a0 8d e5                                      str sl, [sp, #0x48]
005f15cc  04 00 00 0a                                      beq #0x5f15e4
005f15d0  ec c0 9d e5                                      ldr ip, [sp, #0xec]
005f15d4  00 00 6a e2                                      rsb r0, sl, #0
005f15d8  48 00 8d e5                                      str r0, [sp, #0x48]
005f15dc  01 30 4c e2                                      sub r3, ip, #1
005f15e0  9a 53 25 e0                                      mla r5, sl, r3, r5
005f15e4  ec 10 9d e5                                      ldr r1, [sp, #0xec]
005f15e8  00 00 51 e3                                      cmp r1, #0
005f15ec  1a 01 00 0a                                      beq #0x5f1a5c
005f15f0  7c 20 dd e5                                      ldrb r2, [sp, #0x7c]
005f15f4  80 30 dd e5                                      ldrb r3, [sp, #0x80]
005f15f8  7d 90 dd e5                                      ldrb sb, [sp, #0x7d]
005f15fc  7e 00 dd e5                                      ldrb r0, [sp, #0x7e]
005f1600  3c 20 8d e5                                      str r2, [sp, #0x3c]
005f1604  38 30 8d e5                                      str r3, [sp, #0x38]
005f1608  6c 80 9d e5                                      ldr r8, [sp, #0x6c]
005f160c  81 a0 dd e5                                      ldrb sl, [sp, #0x81]
005f1610  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005f1614  82 10 dd e5                                      ldrb r1, [sp, #0x82]
005f1618  74 20 9d e5                                      ldr r2, [sp, #0x74]
005f161c  83 30 dd e5                                      ldrb r3, [sp, #0x83]
005f1620  30 90 8d e5                                      str sb, [sp, #0x30]
005f1624  20 00 8d e5                                      str r0, [sp, #0x20]
005f1628  40 90 9d e5                                      ldr sb, [sp, #0x40]
005f162c  34 80 8d e5                                      str r8, [sp, #0x34]
005f1630  2c a0 8d e5                                      str sl, [sp, #0x2c]
005f1634  24 c0 8d e5                                      str ip, [sp, #0x24]
005f1638  1c 10 8d e5                                      str r1, [sp, #0x1c]
005f163c  10 20 8d e5                                      str r2, [sp, #0x10]
005f1640  18 30 8d e5                                      str r3, [sp, #0x18]
005f1644  04 00 a0 e1                                      mov r0, r4
005f1648  40 40 8d e5                                      str r4, [sp, #0x40]
005f164c  e8 40 9d e5                                      ldr r4, [sp, #0xe8]
005f1650  00 00 54 e3                                      cmp r4, #0
005f1654  2b 00 00 0a                                      beq #0x5f1708
005f1658  04 10 a0 e1                                      mov r1, r4
005f165c  00 20 a0 e3                                      mov r2, #0
005f1660  28 60 8d e5                                      str r6, [sp, #0x28]
005f1664  4c 50 8d e5                                      str r5, [sp, #0x4c]
005f1668  b7 30 90 e0                                      ldrh r3, [r0], r7
005f166c  28 40 9d e5                                      ldr r4, [sp, #0x28]
005f1670  18 50 9d e5                                      ldr r5, [sp, #0x18]
005f1674  3c 80 9d e5                                      ldr r8, [sp, #0x3c]
005f1678  04 60 03 e0                                      and r6, r3, r4
005f167c  36 6b a0 e1                                      lsr r6, r6, fp
005f1680  16 65 a0 e1                                      lsl r6, r6, r5
005f1684  30 a0 9d e5                                      ldr sl, [sp, #0x30]
005f1688  08 50 9d e5                                      ldr r5, [sp, #8]
005f168c  33 48 a0 e1                                      lsr r4, r3, r8
005f1690  33 ca a0 e1                                      lsr ip, r3, sl
005f1694  05 80 03 e0                                      and r8, r3, r5
005f1698  34 a0 9d e5                                      ldr sl, [sp, #0x34]
005f169c  38 50 9d e5                                      ldr r5, [sp, #0x38]
005f16a0  01 10 51 e2                                      subs r1, r1, #1
005f16a4  14 45 0a e0                                      and r4, sl, r4, lsl r5
005f16a8  24 a0 9d e5                                      ldr sl, [sp, #0x24]
005f16ac  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
005f16b0  1c c5 0a e0                                      and ip, sl, ip, lsl r5
005f16b4  0c a0 9d e5                                      ldr sl, [sp, #0xc]
005f16b8  20 50 9d e5                                      ldr r5, [sp, #0x20]
005f16bc  0c c0 84 e1                                      orr ip, r4, ip
005f16c0  38 8a a0 e1                                      lsr r8, r8, sl
005f16c4  14 a0 9d e5                                      ldr sl, [sp, #0x14]
005f16c8  33 35 a0 e1                                      lsr r3, r3, r5
005f16cc  18 6a 86 e1                                      orr r6, r6, r8, lsl sl
005f16d0  10 50 9d e5                                      ldr r5, [sp, #0x10]
005f16d4  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
005f16d8  04 a0 9d e5                                      ldr sl, [sp, #4]
005f16dc  09 60 06 e0                                      and r6, r6, sb
005f16e0  13 38 05 e0                                      and r3, r5, r3, lsl r8
005f16e4  0a c0 8c e1                                      orr ip, ip, sl
005f16e8  03 30 8c e1                                      orr r3, ip, r3
005f16ec  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
005f16f0  06 30 83 e1                                      orr r3, r3, r6
005f16f4  b2 30 8c e1                                      strh r3, [ip, r2]
005f16f8  02 20 82 e2                                      add r2, r2, #2
005f16fc  d9 ff ff 1a                                      bne #0x5f1668
005f1700  28 60 9d e5                                      ldr r6, [sp, #0x28]
005f1704  4c 50 9d e5                                      ldr r5, [sp, #0x4c]
005f1708  ec 00 9d e5                                      ldr r0, [sp, #0xec]
005f170c  01 00 50 e2                                      subs r0, r0, #1
005f1710  ec 00 8d e5                                      str r0, [sp, #0xec]
005f1714  d0 00 00 0a                                      beq #0x5f1a5c
005f1718  40 10 8d e2                                      add r1, sp, #0x40
005f171c  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
005f1720  02 10 81 e0                                      add r1, r1, r2
005f1724  40 10 8d e5                                      str r1, [sp, #0x40]
005f1728  03 50 85 e0                                      add r5, r5, r3
005f172c  01 00 a0 e1                                      mov r0, r1
005f1730  c5 ff ff ea                                      b #0x5f164c
005f1734  03 20 a0 e1                                      mov r2, r3
005f1738  07 10 a0 e1                                      mov r1, r7
005f173c  6c 00 8d e2                                      add r0, sp, #0x6c
005f1740  84 f4 ff eb                                      bl #0x5ee958
005f1744  04 80 9d e5                                      ldr r8, [sp, #4]
005f1748  28 20 a0 e3                                      mov r2, #0x28
005f174c  05 00 54 e1                                      cmp r4, r5
005f1750  08 30 96 e7                                      ldr r3, [r6, r8]
005f1754  92 37 27 e0                                      mla r7, r2, r7, r3
005f1758  15 70 d7 e5                                      ldrb r7, [r7, #0x15]
005f175c  14 70 8d e5                                      str r7, [sp, #0x14]
005f1760  b7 03 00 0a                                      beq #0x5f2644
005f1764  10 a0 9d e5                                      ldr sl, [sp, #0x10]
005f1768  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f176c  00 00 5a e3                                      cmp sl, #0
005f1770  1c b0 8d e5                                      str fp, [sp, #0x1c]
005f1774  f6 00 00 1a                                      bne #0x5f1b54
005f1778  ec 10 9d e5                                      ldr r1, [sp, #0xec]
005f177c  00 00 51 e3                                      cmp r1, #0
005f1780  18 50 8d 15                                      strne r5, [sp, #0x18]
005f1784  10 40 8d 15                                      strne r4, [sp, #0x10]
005f1788  0c 50 8d 15                                      strne r5, [sp, #0xc]
005f178c  b2 00 00 0a                                      beq #0x5f1a5c
005f1790  e8 50 9d e5                                      ldr r5, [sp, #0xe8]
005f1794  00 00 55 e3                                      cmp r5, #0
005f1798  41 00 00 0a                                      beq #0x5f18a4
005f179c  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005f17a0  00 20 a0 e3                                      mov r2, #0
005f17a4  14 50 9d e5                                      ldr r5, [sp, #0x14]
005f17a8  88 80 9d e5                                      ldr r8, [sp, #0x88]
005f17ac  7c 00 dd e5                                      ldrb r0, [sp, #0x7c]
005f17b0  b5 30 94 e0                                      ldrh r3, [r4], r5
005f17b4  7d c0 dd e5                                      ldrb ip, [sp, #0x7d]
005f17b8  90 b0 9d e5                                      ldr fp, [sp, #0x90]
005f17bc  08 80 03 e0                                      and r8, r3, r8
005f17c0  38 80 a0 e1                                      lsr r8, r8, r0
005f17c4  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
005f17c8  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005f17cc  81 50 dd e5                                      ldrb r5, [sp, #0x81]
005f17d0  00 00 03 e0                                      and r0, r3, r0
005f17d4  30 0c a0 e1                                      lsr r0, r0, ip
005f17d8  0b b0 03 e0                                      and fp, r3, fp
005f17dc  82 c0 dd e5                                      ldrb ip, [sp, #0x82]
005f17e0  3b 66 a0 e1                                      lsr r6, fp, r6
005f17e4  10 55 a0 e1                                      lsl r5, r0, r5
005f17e8  16 cc a0 e1                                      lsl ip, r6, ip
005f17ec  80 70 dd e5                                      ldrb r7, [sp, #0x80]
005f17f0  20 50 8d e5                                      str r5, [sp, #0x20]
005f17f4  98 50 9d e5                                      ldr r5, [sp, #0x98]
005f17f8  18 87 a0 e1                                      lsl r8, r8, r7
005f17fc  94 90 9d e5                                      ldr sb, [sp, #0x94]
005f1800  a1 70 dd e5                                      ldrb r7, [sp, #0xa1]
005f1804  04 c0 8d e5                                      str ip, [sp, #4]
005f1808  a0 c0 dd e5                                      ldrb ip, [sp, #0xa0]
005f180c  05 50 03 e0                                      and r5, r3, r5
005f1810  a3 a0 dd e5                                      ldrb sl, [sp, #0xa3]
005f1814  35 57 a0 e1                                      lsr r5, r5, r7
005f1818  09 90 03 e0                                      and sb, r3, sb
005f181c  9c 70 9d e5                                      ldr r7, [sp, #0x9c]
005f1820  39 9c a0 e1                                      lsr sb, sb, ip
005f1824  7f 00 dd e5                                      ldrb r0, [sp, #0x7f]
005f1828  a2 60 dd e5                                      ldrb r6, [sp, #0xa2]
005f182c  07 70 03 e0                                      and r7, r3, r7
005f1830  19 8a 88 e1                                      orr r8, r8, sb, lsl sl
005f1834  a4 c0 dd e5                                      ldrb ip, [sp, #0xa4]
005f1838  08 00 8d e5                                      str r0, [sp, #8]
005f183c  37 66 a0 e1                                      lsr r6, r7, r6
005f1840  20 70 9d e5                                      ldr r7, [sp, #0x20]
005f1844  a5 b0 dd e5                                      ldrb fp, [sp, #0xa5]
005f1848  00 06 9d e9                                      ldmib sp, {sb, sl}
005f184c  15 0c 87 e1                                      orr r0, r7, r5, lsl ip
005f1850  83 c0 dd e5                                      ldrb ip, [sp, #0x83]
005f1854  78 50 9d e5                                      ldr r5, [sp, #0x78]
005f1858  16 6b 89 e1                                      orr r6, sb, r6, lsl fp
005f185c  33 3a a0 e1                                      lsr r3, r3, sl
005f1860  13 3c 05 e0                                      and r3, r5, r3, lsl ip
005f1864  6c a0 9d e5                                      ldr sl, [sp, #0x6c]
005f1868  84 c0 9d e5                                      ldr ip, [sp, #0x84]
005f186c  74 b0 9d e5                                      ldr fp, [sp, #0x74]
005f1870  0a 80 08 e0                                      and r8, r8, sl
005f1874  0c 80 88 e1                                      orr r8, r8, ip
005f1878  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005f187c  0b 60 06 e0                                      and r6, r6, fp
005f1880  0c b0 9d e5                                      ldr fp, [sp, #0xc]
005f1884  0c 00 00 e0                                      and r0, r0, ip
005f1888  00 80 88 e1                                      orr r8, r8, r0
005f188c  06 60 88 e1                                      orr r6, r8, r6
005f1890  03 30 86 e1                                      orr r3, r6, r3
005f1894  01 10 51 e2                                      subs r1, r1, #1
005f1898  b2 30 8b e1                                      strh r3, [fp, r2]
005f189c  02 20 82 e2                                      add r2, r2, #2
005f18a0  bf ff ff 1a                                      bne #0x5f17a4
005f18a4  ec c0 9d e5                                      ldr ip, [sp, #0xec]
005f18a8  01 c0 5c e2                                      subs ip, ip, #1
005f18ac  ec c0 8d e5                                      str ip, [sp, #0xec]
005f18b0  69 00 00 0a                                      beq #0x5f1a5c
005f18b4  10 00 9d e5                                      ldr r0, [sp, #0x10]
005f18b8  18 20 9d e5                                      ldr r2, [sp, #0x18]
005f18bc  44 10 9d e5                                      ldr r1, [sp, #0x44]
005f18c0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005f18c4  01 40 80 e0                                      add r4, r0, r1
005f18c8  03 20 82 e0                                      add r2, r2, r3
005f18cc  18 20 8d e5                                      str r2, [sp, #0x18]
005f18d0  0c 20 8d e5                                      str r2, [sp, #0xc]
005f18d4  10 40 8d e5                                      str r4, [sp, #0x10]
005f18d8  ac ff ff ea                                      b #0x5f1790
005f18dc  07 10 a0 e1                                      mov r1, r7
005f18e0  03 20 a0 e1                                      mov r2, r3
005f18e4  6c 00 8d e2                                      add r0, sp, #0x6c
005f18e8  a8 f3 ff eb                                      bl #0x5ee790
005f18ec  05 00 54 e1                                      cmp r4, r5
005f18f0  15 b0 da e5                                      ldrb fp, [sl, #0x15]
005f18f4  4e 01 00 0a                                      beq #0x5f1e34
005f18f8  10 00 9d e5                                      ldr r0, [sp, #0x10]
005f18fc  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f1900  00 00 50 e3                                      cmp r0, #0
005f1904  10 10 8d e5                                      str r1, [sp, #0x10]
005f1908  04 00 00 0a                                      beq #0x5f1920
005f190c  ec 20 9d e5                                      ldr r2, [sp, #0xec]
005f1910  01 30 42 e2                                      sub r3, r2, #1
005f1914  91 53 25 e0                                      mla r5, r1, r3, r5
005f1918  00 30 61 e2                                      rsb r3, r1, #0
005f191c  10 30 8d e5                                      str r3, [sp, #0x10]
005f1920  ec 60 9d e5                                      ldr r6, [sp, #0xec]
005f1924  00 00 56 e3                                      cmp r6, #0
005f1928  0c 50 8d 15                                      strne r5, [sp, #0xc]
005f192c  14 40 8d 15                                      strne r4, [sp, #0x14]
005f1930  08 50 8d 15                                      strne r5, [sp, #8]
005f1934  48 00 00 0a                                      beq #0x5f1a5c
005f1938  e8 60 9d e5                                      ldr r6, [sp, #0xe8]
005f193c  00 00 56 e3                                      cmp r6, #0
005f1940  37 00 00 0a                                      beq #0x5f1a24
005f1944  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005f1948  00 20 a0 e3                                      mov r2, #0
005f194c  bb 30 94 e0                                      ldrh r3, [r4], fp
005f1950  94 00 9d e5                                      ldr r0, [sp, #0x94]
005f1954  7c c0 dd e5                                      ldrb ip, [sp, #0x7c]
005f1958  7d 50 dd e5                                      ldrb r5, [sp, #0x7d]
005f195c  00 00 03 e0                                      and r0, r3, r0
005f1960  30 0c a0 e1                                      lsr r0, r0, ip
005f1964  98 c0 9d e5                                      ldr ip, [sp, #0x98]
005f1968  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005f196c  80 00 a0 e1                                      lsl r0, r0, #1
005f1970  0c c0 03 e0                                      and ip, r3, ip
005f1974  3c c5 a0 e1                                      lsr ip, ip, r5
005f1978  9c 50 9d e5                                      ldr r5, [sp, #0x9c]
005f197c  8c c0 a0 e1                                      lsl ip, ip, #1
005f1980  7f 70 dd e5                                      ldrb r7, [sp, #0x7f]
005f1984  05 50 03 e0                                      and r5, r3, r5
005f1988  35 56 a0 e1                                      lsr r5, r5, r6
005f198c  88 60 9d e5                                      ldr r6, [sp, #0x88]
005f1990  85 50 a0 e1                                      lsl r5, r5, #1
005f1994  80 80 dd e5                                      ldrb r8, [sp, #0x80]
005f1998  b0 a0 96 e1                                      ldrh sl, [r6, r0]
005f199c  8c 60 9d e5                                      ldr r6, [sp, #0x8c]
005f19a0  a0 00 dd e5                                      ldrb r0, [sp, #0xa0]
005f19a4  01 10 51 e2                                      subs r1, r1, #1
005f19a8  bc 90 96 e1                                      ldrh sb, [r6, ip]
005f19ac  90 60 9d e5                                      ldr r6, [sp, #0x90]
005f19b0  a1 c0 dd e5                                      ldrb ip, [sp, #0xa1]
005f19b4  5a a0 a0 e1                                      asr sl, sl, r0
005f19b8  b5 60 96 e1                                      ldrh r6, [r6, r5]
005f19bc  a2 50 dd e5                                      ldrb r5, [sp, #0xa2]
005f19c0  04 70 8d e5                                      str r7, [sp, #4]
005f19c4  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
005f19c8  81 00 dd e5                                      ldrb r0, [sp, #0x81]
005f19cc  56 55 a0 e1                                      asr r5, r6, r5
005f19d0  70 60 9d e5                                      ldr r6, [sp, #0x70]
005f19d4  59 cc a0 e1                                      asr ip, sb, ip
005f19d8  1a 78 07 e0                                      and r7, r7, sl, lsl r8
005f19dc  04 a0 9d e5                                      ldr sl, [sp, #4]
005f19e0  1c 00 06 e0                                      and r0, r6, ip, lsl r0
005f19e4  82 90 dd e5                                      ldrb sb, [sp, #0x82]
005f19e8  74 60 9d e5                                      ldr r6, [sp, #0x74]
005f19ec  83 80 dd e5                                      ldrb r8, [sp, #0x83]
005f19f0  78 c0 9d e5                                      ldr ip, [sp, #0x78]
005f19f4  33 3a a0 e1                                      lsr r3, r3, sl
005f19f8  15 59 06 e0                                      and r5, r6, r5, lsl sb
005f19fc  13 38 0c e0                                      and r3, ip, r3, lsl r8
005f1a00  84 80 9d e5                                      ldr r8, [sp, #0x84]
005f1a04  08 c0 9d e5                                      ldr ip, [sp, #8]
005f1a08  08 70 87 e1                                      orr r7, r7, r8
005f1a0c  00 00 87 e1                                      orr r0, r7, r0
005f1a10  05 50 80 e1                                      orr r5, r0, r5
005f1a14  03 30 85 e1                                      orr r3, r5, r3
005f1a18  b2 30 8c e1                                      strh r3, [ip, r2]
005f1a1c  02 20 82 e2                                      add r2, r2, #2
005f1a20  c9 ff ff 1a                                      bne #0x5f194c
005f1a24  ec 00 9d e5                                      ldr r0, [sp, #0xec]
005f1a28  01 00 50 e2                                      subs r0, r0, #1
005f1a2c  ec 00 8d e5                                      str r0, [sp, #0xec]
005f1a30  09 00 00 0a                                      beq #0x5f1a5c
005f1a34  14 10 9d e5                                      ldr r1, [sp, #0x14]
005f1a38  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005f1a3c  44 20 9d e5                                      ldr r2, [sp, #0x44]
005f1a40  10 50 9d e5                                      ldr r5, [sp, #0x10]
005f1a44  02 40 81 e0                                      add r4, r1, r2
005f1a48  05 30 83 e0                                      add r3, r3, r5
005f1a4c  0c 30 8d e5                                      str r3, [sp, #0xc]
005f1a50  08 30 8d e5                                      str r3, [sp, #8]
005f1a54  14 40 8d e5                                      str r4, [sp, #0x14]
005f1a58  b6 ff ff ea                                      b #0x5f1938
005f1a5c  01 00 a0 e3                                      mov r0, #1
005f1a60  bc d0 8d e2                                      add sp, sp, #0xbc
005f1a64  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005f1a68  6c 80 8d e2                                      add r8, sp, #0x6c
005f1a6c  07 10 a0 e1                                      mov r1, r7
005f1a70  03 20 a0 e1                                      mov r2, r3
005f1a74  08 00 a0 e1                                      mov r0, r8
005f1a78  a7 f4 ff eb                                      bl #0x5eed1c
005f1a7c  05 00 54 e1                                      cmp r4, r5
005f1a80  15 60 da e5                                      ldrb r6, [sl, #0x15]
005f1a84  9b 01 00 0a                                      beq #0x5f20f8
005f1a88  10 00 9d e5                                      ldr r0, [sp, #0x10]
005f1a8c  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f1a90  00 00 50 e3                                      cmp r0, #0
005f1a94  04 10 8d e5                                      str r1, [sp, #4]
005f1a98  04 00 00 0a                                      beq #0x5f1ab0
005f1a9c  ec 20 9d e5                                      ldr r2, [sp, #0xec]
005f1aa0  01 30 42 e2                                      sub r3, r2, #1
005f1aa4  91 53 25 e0                                      mla r5, r1, r3, r5
005f1aa8  00 30 61 e2                                      rsb r3, r1, #0
005f1aac  04 30 8d e5                                      str r3, [sp, #4]
005f1ab0  ec 70 9d e5                                      ldr r7, [sp, #0xec]
005f1ab4  00 00 57 e3                                      cmp r7, #0
005f1ab8  05 90 a0 11                                      movne sb, r5
005f1abc  04 b0 a0 11                                      movne fp, r4
005f1ac0  e5 ff ff 0a                                      beq #0x5f1a5c
005f1ac4  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005f1ac8  00 00 51 e3                                      cmp r1, #0
005f1acc  01 a0 a0 11                                      movne sl, r1
005f1ad0  00 70 a0 13                                      movne r7, #0
005f1ad4  06 00 00 0a                                      beq #0x5f1af4
005f1ad8  b6 10 94 e0                                      ldrh r1, [r4], r6
005f1adc  08 00 a0 e1                                      mov r0, r8
005f1ae0  3b f1 ff eb                                      bl #0x5edfd4
005f1ae4  01 a0 5a e2                                      subs sl, sl, #1
005f1ae8  b7 00 85 e1                                      strh r0, [r5, r7]
005f1aec  02 70 87 e2                                      add r7, r7, #2
005f1af0  f8 ff ff 1a                                      bne #0x5f1ad8
005f1af4  ec a0 9d e5                                      ldr sl, [sp, #0xec]
005f1af8  01 a0 5a e2                                      subs sl, sl, #1
005f1afc  ec a0 8d e5                                      str sl, [sp, #0xec]
005f1b00  d5 ff ff 0a                                      beq #0x5f1a5c
005f1b04  44 c0 9d e5                                      ldr ip, [sp, #0x44]
005f1b08  04 00 9d e5                                      ldr r0, [sp, #4]
005f1b0c  0c 40 8b e0                                      add r4, fp, ip
005f1b10  00 90 89 e0                                      add sb, sb, r0
005f1b14  09 50 a0 e1                                      mov r5, sb
005f1b18  04 b0 a0 e1                                      mov fp, r4
005f1b1c  e8 ff ff ea                                      b #0x5f1ac4
005f1b20  00 20 92 e7                                      ldr r2, [r2, r0]
005f1b24  01 00 12 e3                                      tst r2, #1
005f1b28  00 80 e0 03                                      mvneq r8, #0
005f1b2c  14 80 8d 05                                      streq r8, [sp, #0x14]
005f1b30  61 fe ff 0a                                      beq #0x5f14bc
005f1b34  5e fe ff ea                                      b #0x5f14b4
005f1b38  91 07 01 e0                                      mul r1, r1, r7
005f1b3c  01 20 92 e7                                      ldr r2, [r2, r1]
005f1b40  01 00 12 e3                                      tst r2, #1
005f1b44  00 b0 e0 03                                      mvneq fp, #0
005f1b48  08 b0 8d 05                                      streq fp, [sp, #8]
005f1b4c  6f fd ff 0a                                      beq #0x5f1110
005f1b50  6c fd ff ea                                      b #0x5f1108
005f1b54  ec c0 9d e5                                      ldr ip, [sp, #0xec]
005f1b58  00 00 6b e2                                      rsb r0, fp, #0
005f1b5c  1c 00 8d e5                                      str r0, [sp, #0x1c]
005f1b60  01 30 4c e2                                      sub r3, ip, #1
005f1b64  9b 53 25 e0                                      mla r5, fp, r3, r5
005f1b68  02 ff ff ea                                      b #0x5f1778
005f1b6c  83 00 54 e1                                      cmp r4, r3, lsl #1
005f1b70  07 40 84 d0                                      addle r4, r4, r7
005f1b74  04 30 63 d0                                      rsble r3, r3, r4
005f1b78  14 30 c1 d5                                      strble r3, [r1, #0x14]
005f1b7c  69 fe ff ea                                      b #0x5f1528
005f1b80  10 a0 9d e5                                      ldr sl, [sp, #0x10]
005f1b84  00 00 5a e3                                      cmp sl, #0
005f1b88  1d 02 00 1a                                      bne #0x5f2404
005f1b8c  ec c0 9d e5                                      ldr ip, [sp, #0xec]
005f1b90  00 00 5c e3                                      cmp ip, #0
005f1b94  b0 ff ff 0a                                      beq #0x5f1a5c
005f1b98  7c 00 dd e5                                      ldrb r0, [sp, #0x7c]
005f1b9c  81 50 dd e5                                      ldrb r5, [sp, #0x81]
005f1ba0  7e 90 dd e5                                      ldrb sb, [sp, #0x7e]
005f1ba4  82 a0 dd e5                                      ldrb sl, [sp, #0x82]
005f1ba8  48 00 8d e5                                      str r0, [sp, #0x48]
005f1bac  80 10 dd e5                                      ldrb r1, [sp, #0x80]
005f1bb0  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
005f1bb4  7d 30 dd e5                                      ldrb r3, [sp, #0x7d]
005f1bb8  70 80 9d e5                                      ldr r8, [sp, #0x70]
005f1bbc  74 c0 9d e5                                      ldr ip, [sp, #0x74]
005f1bc0  83 00 dd e5                                      ldrb r0, [sp, #0x83]
005f1bc4  30 50 8d e5                                      str r5, [sp, #0x30]
005f1bc8  24 90 8d e5                                      str sb, [sp, #0x24]
005f1bcc  20 a0 8d e5                                      str sl, [sp, #0x20]
005f1bd0  3c 10 8d e5                                      str r1, [sp, #0x3c]
005f1bd4  38 20 8d e5                                      str r2, [sp, #0x38]
005f1bd8  34 30 8d e5                                      str r3, [sp, #0x34]
005f1bdc  2c 80 8d e5                                      str r8, [sp, #0x2c]
005f1be0  1c c0 8d e5                                      str ip, [sp, #0x1c]
005f1be4  10 00 8d e5                                      str r0, [sp, #0x10]
005f1be8  4c 40 8d e5                                      str r4, [sp, #0x4c]
005f1bec  04 a0 a0 e1                                      mov sl, r4
005f1bf0  04 50 a0 e1                                      mov r5, r4
005f1bf4  b0 90 8d e2                                      add sb, sp, #0xb0
005f1bf8  50 40 8d e5                                      str r4, [sp, #0x50]
005f1bfc  e8 80 9d e5                                      ldr r8, [sp, #0xe8]
005f1c00  00 00 58 e3                                      cmp r8, #0
005f1c04  00 40 a0 13                                      movne r4, #0
005f1c08  18 a0 8d 15                                      strne sl, [sp, #0x18]
005f1c0c  28 60 8d 15                                      strne r6, [sp, #0x28]
005f1c10  2c 00 00 0a                                      beq #0x5f1cc8
005f1c14  05 10 a0 e1                                      mov r1, r5
005f1c18  07 20 a0 e1                                      mov r2, r7
005f1c1c  09 00 a0 e1                                      mov r0, sb
005f1c20  10 73 f4 eb                                      bl #0x30e868
005f1c24  b0 3b dd e1                                      ldrh r3, [sp, #0xb0]
005f1c28  28 10 9d e5                                      ldr r1, [sp, #0x28]
005f1c2c  10 60 9d e5                                      ldr r6, [sp, #0x10]
005f1c30  34 a0 9d e5                                      ldr sl, [sp, #0x34]
005f1c34  01 20 03 e0                                      and r2, r3, r1
005f1c38  32 2b a0 e1                                      lsr r2, r2, fp
005f1c3c  12 26 a0 e1                                      lsl r2, r2, r6
005f1c40  48 10 9d e5                                      ldr r1, [sp, #0x48]
005f1c44  08 60 9d e5                                      ldr r6, [sp, #8]
005f1c48  33 ca a0 e1                                      lsr ip, r3, sl
005f1c4c  33 01 a0 e1                                      lsr r0, r3, r1
005f1c50  0c a0 9d e5                                      ldr sl, [sp, #0xc]
005f1c54  03 10 06 e0                                      and r1, r6, r3
005f1c58  24 60 9d e5                                      ldr r6, [sp, #0x24]
005f1c5c  31 1a a0 e1                                      lsr r1, r1, sl
005f1c60  33 36 a0 e1                                      lsr r3, r3, r6
005f1c64  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
005f1c68  30 60 9d e5                                      ldr r6, [sp, #0x30]
005f1c6c  01 80 58 e2                                      subs r8, r8, #1
005f1c70  07 50 85 e0                                      add r5, r5, r7
005f1c74  1c c6 0a e0                                      and ip, sl, ip, lsl r6
005f1c78  38 a0 9d e5                                      ldr sl, [sp, #0x38]
005f1c7c  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
005f1c80  10 06 0a e0                                      and r0, sl, r0, lsl r6
005f1c84  14 a0 9d e5                                      ldr sl, [sp, #0x14]
005f1c88  20 60 9d e5                                      ldr r6, [sp, #0x20]
005f1c8c  00 c0 8c e1                                      orr ip, ip, r0
005f1c90  11 2a 82 e1                                      orr r2, r2, r1, lsl sl
005f1c94  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005f1c98  40 a0 9d e5                                      ldr sl, [sp, #0x40]
005f1c9c  18 00 9d e5                                      ldr r0, [sp, #0x18]
005f1ca0  13 36 01 e0                                      and r3, r1, r3, lsl r6
005f1ca4  03 30 8c e1                                      orr r3, ip, r3
005f1ca8  04 c0 9d e5                                      ldr ip, [sp, #4]
005f1cac  0a 20 02 e0                                      and r2, r2, sl
005f1cb0  02 30 83 e1                                      orr r3, r3, r2
005f1cb4  0c 30 83 e1                                      orr r3, r3, ip
005f1cb8  b4 30 80 e1                                      strh r3, [r0, r4]
005f1cbc  02 40 84 e2                                      add r4, r4, #2
005f1cc0  d3 ff ff 1a                                      bne #0x5f1c14
005f1cc4  28 60 9d e5                                      ldr r6, [sp, #0x28]
005f1cc8  ec 10 9d e5                                      ldr r1, [sp, #0xec]
005f1ccc  01 10 51 e2                                      subs r1, r1, #1
005f1cd0  ec 10 8d e5                                      str r1, [sp, #0xec]
005f1cd4  60 ff ff 0a                                      beq #0x5f1a5c
005f1cd8  50 20 9d e5                                      ldr r2, [sp, #0x50]
005f1cdc  4c 40 9d e5                                      ldr r4, [sp, #0x4c]
005f1ce0  e4 50 9d e5                                      ldr r5, [sp, #0xe4]
005f1ce4  44 30 9d e5                                      ldr r3, [sp, #0x44]
005f1ce8  05 40 84 e0                                      add r4, r4, r5
005f1cec  03 20 82 e0                                      add r2, r2, r3
005f1cf0  50 20 8d e5                                      str r2, [sp, #0x50]
005f1cf4  4c 40 8d e5                                      str r4, [sp, #0x4c]
005f1cf8  04 a0 a0 e1                                      mov sl, r4
005f1cfc  02 50 a0 e1                                      mov r5, r2
005f1d00  bd ff ff ea                                      b #0x5f1bfc
005f1d04  10 a0 9d e5                                      ldr sl, [sp, #0x10]
005f1d08  00 00 5a e3                                      cmp sl, #0
005f1d0c  47 01 00 1a                                      bne #0x5f2230
005f1d10  ec c0 9d e5                                      ldr ip, [sp, #0xec]
005f1d14  00 00 5c e3                                      cmp ip, #0
005f1d18  4f ff ff 0a                                      beq #0x5f1a5c
005f1d1c  b0 00 8d e2                                      add r0, sp, #0xb0
005f1d20  14 40 8d e5                                      str r4, [sp, #0x14]
005f1d24  10 40 8d e5                                      str r4, [sp, #0x10]
005f1d28  08 40 8d e5                                      str r4, [sp, #8]
005f1d2c  0c 00 8d e5                                      str r0, [sp, #0xc]
005f1d30  04 b0 8d e5                                      str fp, [sp, #4]
005f1d34  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
005f1d38  00 00 50 e3                                      cmp r0, #0
005f1d3c  2c 00 00 0a                                      beq #0x5f1df4
005f1d40  e8 b0 9d e5                                      ldr fp, [sp, #0xe8]
005f1d44  00 50 a0 e3                                      mov r5, #0
005f1d48  04 10 a0 e1                                      mov r1, r4
005f1d4c  04 20 9d e5                                      ldr r2, [sp, #4]
005f1d50  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005f1d54  c3 72 f4 eb                                      bl #0x30e868
005f1d58  b0 3b dd e1                                      ldrh r3, [sp, #0xb0]
005f1d5c  90 20 9d e5                                      ldr r2, [sp, #0x90]
005f1d60  7f 10 dd e5                                      ldrb r1, [sp, #0x7f]
005f1d64  7e 70 dd e5                                      ldrb r7, [sp, #0x7e]
005f1d68  7c 90 dd e5                                      ldrb sb, [sp, #0x7c]
005f1d6c  02 20 03 e0                                      and r2, r3, r2
005f1d70  7d 60 dd e5                                      ldrb r6, [sp, #0x7d]
005f1d74  32 21 a0 e1                                      lsr r2, r2, r1
005f1d78  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
005f1d7c  33 66 a0 e1                                      lsr r6, r3, r6
005f1d80  82 20 a0 e1                                      lsl r2, r2, #1
005f1d84  33 99 a0 e1                                      lsr sb, r3, sb
005f1d88  81 c0 dd e5                                      ldrb ip, [sp, #0x81]
005f1d8c  33 37 a0 e1                                      lsr r3, r3, r7
005f1d90  70 70 9d e5                                      ldr r7, [sp, #0x70]
005f1d94  b2 00 91 e1                                      ldrh r0, [r1, r2]
005f1d98  80 a0 dd e5                                      ldrb sl, [sp, #0x80]
005f1d9c  88 10 dd e5                                      ldrb r1, [sp, #0x88]
005f1da0  6c 80 9d e5                                      ldr r8, [sp, #0x6c]
005f1da4  16 cc 07 e0                                      and ip, r7, r6, lsl ip
005f1da8  82 20 dd e5                                      ldrb r2, [sp, #0x82]
005f1dac  74 70 9d e5                                      ldr r7, [sp, #0x74]
005f1db0  19 8a 08 e0                                      and r8, r8, sb, lsl sl
005f1db4  50 11 a0 e1                                      asr r1, r0, r1
005f1db8  83 a0 dd e5                                      ldrb sl, [sp, #0x83]
005f1dbc  78 00 9d e5                                      ldr r0, [sp, #0x78]
005f1dc0  13 32 07 e0                                      and r3, r7, r3, lsl r2
005f1dc4  11 1a 00 e0                                      and r1, r0, r1, lsl sl
005f1dc8  84 a0 9d e5                                      ldr sl, [sp, #0x84]
005f1dcc  c0 00 9d e9                                      ldmib sp, {r6, r7}
005f1dd0  0a 80 88 e1                                      orr r8, r8, sl
005f1dd4  0c c0 88 e1                                      orr ip, r8, ip
005f1dd8  03 30 8c e1                                      orr r3, ip, r3
005f1ddc  01 10 83 e1                                      orr r1, r3, r1
005f1de0  01 b0 5b e2                                      subs fp, fp, #1
005f1de4  b5 10 87 e1                                      strh r1, [r7, r5]
005f1de8  06 40 84 e0                                      add r4, r4, r6
005f1dec  02 50 85 e2                                      add r5, r5, #2
005f1df0  d4 ff ff 1a                                      bne #0x5f1d48
005f1df4  ec 80 9d e5                                      ldr r8, [sp, #0xec]
005f1df8  01 80 58 e2                                      subs r8, r8, #1
005f1dfc  ec 80 8d e5                                      str r8, [sp, #0xec]
005f1e00  15 ff ff 0a                                      beq #0x5f1a5c
005f1e04  10 90 9d e5                                      ldr sb, [sp, #0x10]
005f1e08  14 b0 9d e5                                      ldr fp, [sp, #0x14]
005f1e0c  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005f1e10  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f1e14  0a 40 89 e0                                      add r4, sb, sl
005f1e18  0c b0 8b e0                                      add fp, fp, ip
005f1e1c  14 b0 8d e5                                      str fp, [sp, #0x14]
005f1e20  08 b0 8d e5                                      str fp, [sp, #8]
005f1e24  10 40 8d e5                                      str r4, [sp, #0x10]
005f1e28  c1 ff ff ea                                      b #0x5f1d34
; mapping-symbol data/literal pool
005f1e2c  20 3b 3a 00 34 1f 00 00                          .byte 0x20, 0x3b, 0x3a, 0x00, 0x34, 0x1f, 0x00, 0x00
; decoder-mode: arm
005f1e34  10 50 9d e5                                      ldr r5, [sp, #0x10]
005f1e38  00 00 55 e3                                      cmp r5, #0
005f1e3c  8a 02 00 1a                                      bne #0x5f286c
005f1e40  ec 60 9d e5                                      ldr r6, [sp, #0xec]
005f1e44  00 00 56 e3                                      cmp r6, #0
005f1e48  03 ff ff 0a                                      beq #0x5f1a5c
005f1e4c  b0 70 8d e2                                      add r7, sp, #0xb0
005f1e50  14 40 8d e5                                      str r4, [sp, #0x14]
005f1e54  08 40 8d e5                                      str r4, [sp, #8]
005f1e58  04 50 a0 e1                                      mov r5, r4
005f1e5c  0c 70 8d e5                                      str r7, [sp, #0xc]
005f1e60  04 b0 8d e5                                      str fp, [sp, #4]
005f1e64  10 40 8d e5                                      str r4, [sp, #0x10]
005f1e68  e8 c0 9d e5                                      ldr ip, [sp, #0xe8]
005f1e6c  00 00 5c e3                                      cmp ip, #0
005f1e70  3b 00 00 0a                                      beq #0x5f1f64
005f1e74  e8 b0 9d e5                                      ldr fp, [sp, #0xe8]
005f1e78  00 40 a0 e3                                      mov r4, #0
005f1e7c  05 10 a0 e1                                      mov r1, r5
005f1e80  04 20 9d e5                                      ldr r2, [sp, #4]
005f1e84  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005f1e88  76 72 f4 eb                                      bl #0x30e868
005f1e8c  b0 3b dd e1                                      ldrh r3, [sp, #0xb0]
005f1e90  94 10 9d e5                                      ldr r1, [sp, #0x94]
005f1e94  7c 20 dd e5                                      ldrb r2, [sp, #0x7c]
005f1e98  7d 00 dd e5                                      ldrb r0, [sp, #0x7d]
005f1e9c  01 10 03 e0                                      and r1, r3, r1
005f1ea0  31 12 a0 e1                                      lsr r1, r1, r2
005f1ea4  98 20 9d e5                                      ldr r2, [sp, #0x98]
005f1ea8  7e c0 dd e5                                      ldrb ip, [sp, #0x7e]
005f1eac  90 60 9d e5                                      ldr r6, [sp, #0x90]
005f1eb0  02 20 03 e0                                      and r2, r3, r2
005f1eb4  32 20 a0 e1                                      lsr r2, r2, r0
005f1eb8  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
005f1ebc  81 10 a0 e1                                      lsl r1, r1, #1
005f1ec0  82 20 a0 e1                                      lsl r2, r2, #1
005f1ec4  00 00 03 e0                                      and r0, r3, r0
005f1ec8  30 0c a0 e1                                      lsr r0, r0, ip
005f1ecc  88 c0 9d e5                                      ldr ip, [sp, #0x88]
005f1ed0  80 00 a0 e1                                      lsl r0, r0, #1
005f1ed4  b0 70 96 e1                                      ldrh r7, [r6, r0]
005f1ed8  b1 90 9c e1                                      ldrh sb, [ip, r1]
005f1edc  8c c0 9d e5                                      ldr ip, [sp, #0x8c]
005f1ee0  a2 60 dd e5                                      ldrb r6, [sp, #0xa2]
005f1ee4  a0 10 dd e5                                      ldrb r1, [sp, #0xa0]
005f1ee8  b2 c0 9c e1                                      ldrh ip, [ip, r2]
005f1eec  a1 20 dd e5                                      ldrb r2, [sp, #0xa1]
005f1ef0  81 00 dd e5                                      ldrb r0, [sp, #0x81]
005f1ef4  57 66 a0 e1                                      asr r6, r7, r6
005f1ef8  70 70 9d e5                                      ldr r7, [sp, #0x70]
005f1efc  80 a0 dd e5                                      ldrb sl, [sp, #0x80]
005f1f00  59 91 a0 e1                                      asr sb, sb, r1
005f1f04  5c c2 a0 e1                                      asr ip, ip, r2
005f1f08  7f 10 dd e5                                      ldrb r1, [sp, #0x7f]
005f1f0c  6c 80 9d e5                                      ldr r8, [sp, #0x6c]
005f1f10  82 20 dd e5                                      ldrb r2, [sp, #0x82]
005f1f14  1c 00 07 e0                                      and r0, r7, ip, lsl r0
005f1f18  74 70 9d e5                                      ldr r7, [sp, #0x74]
005f1f1c  19 8a 08 e0                                      and r8, r8, sb, lsl sl
005f1f20  33 31 a0 e1                                      lsr r3, r3, r1
005f1f24  83 a0 dd e5                                      ldrb sl, [sp, #0x83]
005f1f28  78 10 9d e5                                      ldr r1, [sp, #0x78]
005f1f2c  16 62 07 e0                                      and r6, r7, r6, lsl r2
005f1f30  13 3a 01 e0                                      and r3, r1, r3, lsl sl
005f1f34  84 a0 9d e5                                      ldr sl, [sp, #0x84]
005f1f38  04 20 9d e5                                      ldr r2, [sp, #4]
005f1f3c  01 b0 5b e2                                      subs fp, fp, #1
005f1f40  0a 80 88 e1                                      orr r8, r8, sl
005f1f44  00 00 88 e1                                      orr r0, r8, r0
005f1f48  06 60 80 e1                                      orr r6, r0, r6
005f1f4c  03 30 86 e1                                      orr r3, r6, r3
005f1f50  08 60 9d e5                                      ldr r6, [sp, #8]
005f1f54  02 50 85 e0                                      add r5, r5, r2
005f1f58  b4 30 86 e1                                      strh r3, [r6, r4]
005f1f5c  02 40 84 e2                                      add r4, r4, #2
005f1f60  c5 ff ff 1a                                      bne #0x5f1e7c
005f1f64  ec 70 9d e5                                      ldr r7, [sp, #0xec]
005f1f68  01 70 57 e2                                      subs r7, r7, #1
005f1f6c  ec 70 8d e5                                      str r7, [sp, #0xec]
005f1f70  b9 fe ff 0a                                      beq #0x5f1a5c
005f1f74  10 80 9d e5                                      ldr r8, [sp, #0x10]
005f1f78  14 a0 9d e5                                      ldr sl, [sp, #0x14]
005f1f7c  44 90 9d e5                                      ldr sb, [sp, #0x44]
005f1f80  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f1f84  09 80 88 e0                                      add r8, r8, sb
005f1f88  0b a0 8a e0                                      add sl, sl, fp
005f1f8c  10 80 8d e5                                      str r8, [sp, #0x10]
005f1f90  14 a0 8d e5                                      str sl, [sp, #0x14]
005f1f94  08 a0 8d e5                                      str sl, [sp, #8]
005f1f98  08 50 a0 e1                                      mov r5, r8
005f1f9c  b1 ff ff ea                                      b #0x5f1e68
005f1fa0  10 50 9d e5                                      ldr r5, [sp, #0x10]
005f1fa4  00 00 55 e3                                      cmp r5, #0
005f1fa8  ea 02 00 1a                                      bne #0x5f2b58
005f1fac  ec 90 9d e5                                      ldr sb, [sp, #0xec]
005f1fb0  00 00 59 e3                                      cmp sb, #0
005f1fb4  a8 fe ff 0a                                      beq #0x5f1a5c
005f1fb8  80 a0 dd e5                                      ldrb sl, [sp, #0x80]
005f1fbc  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
005f1fc0  7d 00 dd e5                                      ldrb r0, [sp, #0x7d]
005f1fc4  74 90 9d e5                                      ldr sb, [sp, #0x74]
005f1fc8  30 a0 8d e5                                      str sl, [sp, #0x30]
005f1fcc  2c c0 8d e5                                      str ip, [sp, #0x2c]
005f1fd0  7f a0 dd e5                                      ldrb sl, [sp, #0x7f]
005f1fd4  81 10 dd e5                                      ldrb r1, [sp, #0x81]
005f1fd8  70 20 9d e5                                      ldr r2, [sp, #0x70]
005f1fdc  7e 30 dd e5                                      ldrb r3, [sp, #0x7e]
005f1fe0  82 50 dd e5                                      ldrb r5, [sp, #0x82]
005f1fe4  83 c0 dd e5                                      ldrb ip, [sp, #0x83]
005f1fe8  7c b0 dd e5                                      ldrb fp, [sp, #0x7c]
005f1fec  24 00 8d e5                                      str r0, [sp, #0x24]
005f1ff0  b0 00 8d e2                                      add r0, sp, #0xb0
005f1ff4  0c 90 8d e5                                      str sb, [sp, #0xc]
005f1ff8  08 a0 8d e5                                      str sl, [sp, #8]
005f1ffc  20 10 8d e5                                      str r1, [sp, #0x20]
005f2000  1c 20 8d e5                                      str r2, [sp, #0x1c]
005f2004  10 30 8d e5                                      str r3, [sp, #0x10]
005f2008  14 50 8d e5                                      str r5, [sp, #0x14]
005f200c  04 c0 8d e5                                      str ip, [sp, #4]
005f2010  38 40 8d e5                                      str r4, [sp, #0x38]
005f2014  3c 40 8d e5                                      str r4, [sp, #0x3c]
005f2018  04 90 a0 e1                                      mov sb, r4
005f201c  34 00 8d e5                                      str r0, [sp, #0x34]
005f2020  07 a0 a0 e1                                      mov sl, r7
005f2024  e8 c0 9d e5                                      ldr ip, [sp, #0xe8]
005f2028  00 00 5c e3                                      cmp ip, #0
005f202c  23 00 00 0a                                      beq #0x5f20c0
005f2030  e8 70 9d e5                                      ldr r7, [sp, #0xe8]
005f2034  00 50 a0 e3                                      mov r5, #0
005f2038  18 90 8d e5                                      str sb, [sp, #0x18]
005f203c  04 10 a0 e1                                      mov r1, r4
005f2040  08 20 a0 e1                                      mov r2, r8
005f2044  34 00 9d e5                                      ldr r0, [sp, #0x34]
005f2048  06 72 f4 eb                                      bl #0x30e868
005f204c  b0 3b dd e1                                      ldrh r3, [sp, #0xb0]
005f2050  24 90 9d e5                                      ldr sb, [sp, #0x24]
005f2054  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005f2058  33 2b a0 e1                                      lsr r2, r3, fp
005f205c  33 19 a0 e1                                      lsr r1, r3, sb
005f2060  33 0c a0 e1                                      lsr r0, r3, ip
005f2064  1c 90 9d e5                                      ldr sb, [sp, #0x1c]
005f2068  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005f206c  01 70 57 e2                                      subs r7, r7, #1
005f2070  08 40 84 e0                                      add r4, r4, r8
005f2074  11 1c 09 e0                                      and r1, sb, r1, lsl ip
005f2078  2c 90 9d e5                                      ldr sb, [sp, #0x2c]
005f207c  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005f2080  12 2c 09 e0                                      and r2, sb, r2, lsl ip
005f2084  08 90 9d e5                                      ldr sb, [sp, #8]
005f2088  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005f208c  02 20 81 e1                                      orr r2, r1, r2
005f2090  33 39 a0 e1                                      lsr r3, r3, sb
005f2094  14 90 9d e5                                      ldr sb, [sp, #0x14]
005f2098  10 09 0c e0                                      and r0, ip, r0, lsl sb
005f209c  04 c0 9d e5                                      ldr ip, [sp, #4]
005f20a0  00 00 82 e1                                      orr r0, r2, r0
005f20a4  13 3c 06 e0                                      and r3, r6, r3, lsl ip
005f20a8  03 30 80 e1                                      orr r3, r0, r3
005f20ac  18 00 9d e5                                      ldr r0, [sp, #0x18]
005f20b0  0a 30 83 e1                                      orr r3, r3, sl
005f20b4  b5 30 80 e1                                      strh r3, [r0, r5]
005f20b8  02 50 85 e2                                      add r5, r5, #2
005f20bc  de ff ff 1a                                      bne #0x5f203c
005f20c0  ec 10 9d e5                                      ldr r1, [sp, #0xec]
005f20c4  01 10 51 e2                                      subs r1, r1, #1
005f20c8  ec 10 8d e5                                      str r1, [sp, #0xec]
005f20cc  62 fe ff 0a                                      beq #0x5f1a5c
005f20d0  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
005f20d4  38 50 9d e5                                      ldr r5, [sp, #0x38]
005f20d8  44 30 9d e5                                      ldr r3, [sp, #0x44]
005f20dc  e4 70 9d e5                                      ldr r7, [sp, #0xe4]
005f20e0  03 40 82 e0                                      add r4, r2, r3
005f20e4  07 50 85 e0                                      add r5, r5, r7
005f20e8  38 50 8d e5                                      str r5, [sp, #0x38]
005f20ec  05 90 a0 e1                                      mov sb, r5
005f20f0  3c 40 8d e5                                      str r4, [sp, #0x3c]
005f20f4  ca ff ff ea                                      b #0x5f2024
005f20f8  10 20 9d e5                                      ldr r2, [sp, #0x10]
005f20fc  00 00 52 e3                                      cmp r2, #0
005f2100  b2 01 00 1a                                      bne #0x5f27d0
005f2104  ec 30 9d e5                                      ldr r3, [sp, #0xec]
005f2108  00 00 53 e3                                      cmp r3, #0
005f210c  52 fe ff 0a                                      beq #0x5f1a5c
005f2110  04 b0 a0 e1                                      mov fp, r4
005f2114  04 40 8d e5                                      str r4, [sp, #4]
005f2118  04 a0 a0 e1                                      mov sl, r4
005f211c  b0 90 8d e2                                      add sb, sp, #0xb0
005f2120  e8 c0 9d e5                                      ldr ip, [sp, #0xe8]
005f2124  00 00 5c e3                                      cmp ip, #0
005f2128  0c 70 a0 11                                      movne r7, ip
005f212c  00 50 a0 13                                      movne r5, #0
005f2130  0b 00 00 0a                                      beq #0x5f2164
005f2134  04 10 a0 e1                                      mov r1, r4
005f2138  06 20 a0 e1                                      mov r2, r6
005f213c  09 00 a0 e1                                      mov r0, sb
005f2140  c8 71 f4 eb                                      bl #0x30e868
005f2144  b0 1b dd e1                                      ldrh r1, [sp, #0xb0]
005f2148  08 00 a0 e1                                      mov r0, r8
005f214c  a0 ef ff eb                                      bl #0x5edfd4
005f2150  01 70 57 e2                                      subs r7, r7, #1
005f2154  b5 00 8a e1                                      strh r0, [sl, r5]
005f2158  06 40 84 e0                                      add r4, r4, r6
005f215c  02 50 85 e2                                      add r5, r5, #2
005f2160  f3 ff ff 1a                                      bne #0x5f2134
005f2164  ec 20 9d e5                                      ldr r2, [sp, #0xec]
005f2168  01 20 52 e2                                      subs r2, r2, #1
005f216c  ec 20 8d e5                                      str r2, [sp, #0xec]
005f2170  39 fe ff 0a                                      beq #0x5f1a5c
005f2174  04 30 9d e5                                      ldr r3, [sp, #4]
005f2178  44 50 9d e5                                      ldr r5, [sp, #0x44]
005f217c  e4 70 9d e5                                      ldr r7, [sp, #0xe4]
005f2180  05 40 83 e0                                      add r4, r3, r5
005f2184  07 b0 8b e0                                      add fp, fp, r7
005f2188  0b a0 a0 e1                                      mov sl, fp
005f218c  04 40 8d e5                                      str r4, [sp, #4]
005f2190  e2 ff ff ea                                      b #0x5f2120
005f2194  10 70 9d e5                                      ldr r7, [sp, #0x10]
005f2198  00 00 57 e3                                      cmp r7, #0
005f219c  45 02 00 1a                                      bne #0x5f2ab8
005f21a0  ec 90 9d e5                                      ldr sb, [sp, #0xec]
005f21a4  00 00 59 e3                                      cmp sb, #0
005f21a8  2b fe ff 0a                                      beq #0x5f1a5c
005f21ac  04 b0 a0 e1                                      mov fp, r4
005f21b0  04 40 8d e5                                      str r4, [sp, #4]
005f21b4  04 a0 a0 e1                                      mov sl, r4
005f21b8  b0 90 8d e2                                      add sb, sp, #0xb0
005f21bc  e8 c0 9d e5                                      ldr ip, [sp, #0xe8]
005f21c0  00 00 5c e3                                      cmp ip, #0
005f21c4  0d 00 00 0a                                      beq #0x5f2200
005f21c8  e8 70 9d e5                                      ldr r7, [sp, #0xe8]
005f21cc  00 50 a0 e3                                      mov r5, #0
005f21d0  04 10 a0 e1                                      mov r1, r4
005f21d4  06 20 a0 e1                                      mov r2, r6
005f21d8  09 00 a0 e1                                      mov r0, sb
005f21dc  a1 71 f4 eb                                      bl #0x30e868
005f21e0  b0 1b dd e1                                      ldrh r1, [sp, #0xb0]
005f21e4  08 00 a0 e1                                      mov r0, r8
005f21e8  3b ef ff eb                                      bl #0x5ededc
005f21ec  01 70 57 e2                                      subs r7, r7, #1
005f21f0  b5 00 8a e1                                      strh r0, [sl, r5]
005f21f4  06 40 84 e0                                      add r4, r4, r6
005f21f8  02 50 85 e2                                      add r5, r5, #2
005f21fc  f3 ff ff 1a                                      bne #0x5f21d0
005f2200  ec 30 9d e5                                      ldr r3, [sp, #0xec]
005f2204  01 30 53 e2                                      subs r3, r3, #1
005f2208  ec 30 8d e5                                      str r3, [sp, #0xec]
005f220c  12 fe ff 0a                                      beq #0x5f1a5c
005f2210  04 50 9d e5                                      ldr r5, [sp, #4]
005f2214  e4 a0 9d e5                                      ldr sl, [sp, #0xe4]
005f2218  44 70 9d e5                                      ldr r7, [sp, #0x44]
005f221c  0a b0 8b e0                                      add fp, fp, sl
005f2220  07 40 85 e0                                      add r4, r5, r7
005f2224  0b a0 a0 e1                                      mov sl, fp
005f2228  04 40 8d e5                                      str r4, [sp, #4]
005f222c  e2 ff ff ea                                      b #0x5f21bc
005f2230  ec 10 9d e5                                      ldr r1, [sp, #0xec]
005f2234  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f2238  01 30 41 e2                                      sub r3, r1, #1
005f223c  92 43 23 e0                                      mla r3, r2, r3, r4
005f2240  2c 30 8d e5                                      str r3, [sp, #0x2c]
005f2244  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
005f2248  00 30 62 e2                                      rsb r3, r2, #0
005f224c  40 30 8d e5                                      str r3, [sp, #0x40]
005f2250  05 00 54 e1                                      cmp r4, r5
005f2254  00 fe ff 8a                                      bhi #0x5f1a5c
005f2258  b0 60 8d e2                                      add r6, sp, #0xb0
005f225c  3c 40 8d e5                                      str r4, [sp, #0x3c]
005f2260  38 60 8d e5                                      str r6, [sp, #0x38]
005f2264  30 b0 8d e5                                      str fp, [sp, #0x30]
005f2268  e8 50 9d e5                                      ldr r5, [sp, #0xe8]
005f226c  00 00 55 e3                                      cmp r5, #0
005f2270  58 00 00 0a                                      beq #0x5f23d8
005f2274  e8 70 9d e5                                      ldr r7, [sp, #0xe8]
005f2278  00 50 a0 e3                                      mov r5, #0
005f227c  04 70 8d e5                                      str r7, [sp, #4]
005f2280  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
005f2284  90 90 9d e5                                      ldr sb, [sp, #0x90]
005f2288  7f 70 dd e5                                      ldrb r7, [sp, #0x7f]
005f228c  b5 30 98 e1                                      ldrh r3, [r8, r5]
005f2290  8c b0 9d e5                                      ldr fp, [sp, #0x8c]
005f2294  82 00 dd e5                                      ldrb r0, [sp, #0x82]
005f2298  09 20 03 e0                                      and r2, r3, sb
005f229c  32 27 a0 e1                                      lsr r2, r2, r7
005f22a0  7c 60 dd e5                                      ldrb r6, [sp, #0x7c]
005f22a4  82 20 a0 e1                                      lsl r2, r2, #1
005f22a8  b2 10 9b e1                                      ldrh r1, [fp, r2]
005f22ac  80 c0 dd e5                                      ldrb ip, [sp, #0x80]
005f22b0  14 00 8d e5                                      str r0, [sp, #0x14]
005f22b4  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
005f22b8  7d e0 dd e5                                      ldrb lr, [sp, #0x7d]
005f22bc  33 86 a0 e1                                      lsr r8, r3, r6
005f22c0  81 90 dd e5                                      ldrb sb, [sp, #0x81]
005f22c4  18 8c 00 e0                                      and r8, r0, r8, lsl ip
005f22c8  70 00 9d e5                                      ldr r0, [sp, #0x70]
005f22cc  33 2e a0 e1                                      lsr r2, r3, lr
005f22d0  12 29 00 e0                                      and r2, r0, r2, lsl sb
005f22d4  08 80 8d e5                                      str r8, [sp, #8]
005f22d8  83 80 dd e5                                      ldrb r8, [sp, #0x83]
005f22dc  7e a0 dd e5                                      ldrb sl, [sp, #0x7e]
005f22e0  0c 20 8d e5                                      str r2, [sp, #0xc]
005f22e4  20 80 8d e5                                      str r8, [sp, #0x20]
005f22e8  74 20 9d e5                                      ldr r2, [sp, #0x74]
005f22ec  14 80 9d e5                                      ldr r8, [sp, #0x14]
005f22f0  33 3a a0 e1                                      lsr r3, r3, sl
005f22f4  13 38 02 e0                                      and r3, r2, r3, lsl r8
005f22f8  88 b0 dd e5                                      ldrb fp, [sp, #0x88]
005f22fc  78 00 9d e5                                      ldr r0, [sp, #0x78]
005f2300  20 20 9d e5                                      ldr r2, [sp, #0x20]
005f2304  51 1b a0 e1                                      asr r1, r1, fp
005f2308  11 12 00 e0                                      and r1, r0, r1, lsl r2
005f230c  10 30 8d e5                                      str r3, [sp, #0x10]
005f2310  84 20 9d e5                                      ldr r2, [sp, #0x84]
005f2314  08 30 9d e5                                      ldr r3, [sp, #8]
005f2318  34 10 8d e5                                      str r1, [sp, #0x34]
005f231c  38 10 9d e5                                      ldr r1, [sp, #0x38]
005f2320  02 80 83 e1                                      orr r8, r3, r2
005f2324  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005f2328  04 00 a0 e1                                      mov r0, r4
005f232c  03 20 88 e1                                      orr r2, r8, r3
005f2330  10 80 9d e5                                      ldr r8, [sp, #0x10]
005f2334  34 30 9d e5                                      ldr r3, [sp, #0x34]
005f2338  08 20 82 e1                                      orr r2, r2, r8
005f233c  03 20 82 e1                                      orr r2, r2, r3
005f2340  b0 2b cd e1                                      strh r2, [sp, #0xb0]
005f2344  b0 30 d4 e1                                      ldrh r3, [r4]
005f2348  90 80 9d e5                                      ldr r8, [sp, #0x90]
005f234c  30 20 9d e5                                      ldr r2, [sp, #0x30]
005f2350  33 66 a0 e1                                      lsr r6, r3, r6
005f2354  08 80 03 e0                                      and r8, r3, r8
005f2358  08 80 8d e5                                      str r8, [sp, #8]
005f235c  38 77 a0 e1                                      lsr r7, r8, r7
005f2360  8c 80 9d e5                                      ldr r8, [sp, #0x8c]
005f2364  87 70 a0 e1                                      lsl r7, r7, #1
005f2368  33 ee a0 e1                                      lsr lr, r3, lr
005f236c  b7 70 98 e1                                      ldrh r7, [r8, r7]
005f2370  6c 80 9d e5                                      ldr r8, [sp, #0x6c]
005f2374  33 3a a0 e1                                      lsr r3, r3, sl
005f2378  70 a0 9d e5                                      ldr sl, [sp, #0x70]
005f237c  16 6c 08 e0                                      and r6, r8, r6, lsl ip
005f2380  57 7b a0 e1                                      asr r7, r7, fp
005f2384  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005f2388  74 b0 9d e5                                      ldr fp, [sp, #0x74]
005f238c  1e e9 0a e0                                      and lr, sl, lr, lsl sb
005f2390  78 80 9d e5                                      ldr r8, [sp, #0x78]
005f2394  20 90 9d e5                                      ldr sb, [sp, #0x20]
005f2398  13 3c 0b e0                                      and r3, fp, r3, lsl ip
005f239c  17 79 08 e0                                      and r7, r8, r7, lsl sb
005f23a0  84 a0 9d e5                                      ldr sl, [sp, #0x84]
005f23a4  2c b0 9d e5                                      ldr fp, [sp, #0x2c]
005f23a8  02 40 84 e0                                      add r4, r4, r2
005f23ac  0a 60 86 e1                                      orr r6, r6, sl
005f23b0  0e e0 86 e1                                      orr lr, r6, lr
005f23b4  03 30 8e e1                                      orr r3, lr, r3
005f23b8  07 70 83 e1                                      orr r7, r3, r7
005f23bc  b5 70 8b e1                                      strh r7, [fp, r5]
005f23c0  28 71 f4 eb                                      bl #0x30e868
005f23c4  04 c0 9d e5                                      ldr ip, [sp, #4]
005f23c8  02 50 85 e2                                      add r5, r5, #2
005f23cc  01 c0 5c e2                                      subs ip, ip, #1
005f23d0  04 c0 8d e5                                      str ip, [sp, #4]
005f23d4  a9 ff ff 1a                                      bne #0x5f2280
005f23d8  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005f23dc  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005f23e0  44 10 9d e5                                      ldr r1, [sp, #0x44]
005f23e4  40 30 9d e5                                      ldr r3, [sp, #0x40]
005f23e8  01 40 80 e0                                      add r4, r0, r1
005f23ec  03 20 82 e0                                      add r2, r2, r3
005f23f0  02 00 54 e1                                      cmp r4, r2
005f23f4  2c 20 8d e5                                      str r2, [sp, #0x2c]
005f23f8  97 fd ff 8a                                      bhi #0x5f1a5c
005f23fc  3c 40 8d e5                                      str r4, [sp, #0x3c]
005f2400  98 ff ff ea                                      b #0x5f2268
005f2404  ec 10 9d e5                                      ldr r1, [sp, #0xec]
005f2408  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f240c  01 30 41 e2                                      sub r3, r1, #1
005f2410  92 43 23 e0                                      mla r3, r2, r3, r4
005f2414  00 50 62 e2                                      rsb r5, r2, #0
005f2418  03 00 54 e1                                      cmp r4, r3
005f241c  50 50 8d e5                                      str r5, [sp, #0x50]
005f2420  8d fd ff 8a                                      bhi #0x5f1a5c
005f2424  7c 80 dd e5                                      ldrb r8, [sp, #0x7c]
005f2428  6c a0 9d e5                                      ldr sl, [sp, #0x6c]
005f242c  80 90 dd e5                                      ldrb sb, [sp, #0x80]
005f2430  4c 40 8d e5                                      str r4, [sp, #0x4c]
005f2434  74 50 9d e5                                      ldr r5, [sp, #0x74]
005f2438  38 80 8d e5                                      str r8, [sp, #0x38]
005f243c  7d c0 dd e5                                      ldrb ip, [sp, #0x7d]
005f2440  81 00 dd e5                                      ldrb r0, [sp, #0x81]
005f2444  70 10 9d e5                                      ldr r1, [sp, #0x70]
005f2448  7e 20 dd e5                                      ldrb r2, [sp, #0x7e]
005f244c  82 40 dd e5                                      ldrb r4, [sp, #0x82]
005f2450  83 80 dd e5                                      ldrb r8, [sp, #0x83]
005f2454  30 a0 8d e5                                      str sl, [sp, #0x30]
005f2458  4c a0 9d e5                                      ldr sl, [sp, #0x4c]
005f245c  34 90 8d e5                                      str sb, [sp, #0x34]
005f2460  b0 90 8d e2                                      add sb, sp, #0xb0
005f2464  18 50 8d e5                                      str r5, [sp, #0x18]
005f2468  48 90 8d e5                                      str sb, [sp, #0x48]
005f246c  2c c0 8d e5                                      str ip, [sp, #0x2c]
005f2470  24 00 8d e5                                      str r0, [sp, #0x24]
005f2474  20 10 8d e5                                      str r1, [sp, #0x20]
005f2478  1c 20 8d e5                                      str r2, [sp, #0x1c]
005f247c  10 40 8d e5                                      str r4, [sp, #0x10]
005f2480  28 80 8d e5                                      str r8, [sp, #0x28]
005f2484  3c 60 8d e5                                      str r6, [sp, #0x3c]
005f2488  07 90 a0 e1                                      mov sb, r7
005f248c  03 50 a0 e1                                      mov r5, r3
005f2490  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
005f2494  00 00 50 e3                                      cmp r0, #0
005f2498  00 80 a0 11                                      movne r8, r0
005f249c  00 40 a0 13                                      movne r4, #0
005f24a0  5d 00 00 0a                                      beq #0x5f261c
005f24a4  b4 30 95 e1                                      ldrh r3, [r5, r4]
005f24a8  3c e0 9d e5                                      ldr lr, [sp, #0x3c]
005f24ac  28 20 9d e5                                      ldr r2, [sp, #0x28]
005f24b0  38 60 9d e5                                      ldr r6, [sp, #0x38]
005f24b4  0e c0 03 e0                                      and ip, r3, lr
005f24b8  3c cb a0 e1                                      lsr ip, ip, fp
005f24bc  1c c2 a0 e1                                      lsl ip, ip, r2
005f24c0  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f24c4  54 c0 8d e5                                      str ip, [sp, #0x54]
005f24c8  08 c0 9d e5                                      ldr ip, [sp, #8]
005f24cc  33 26 a0 e1                                      lsr r2, r3, r6
005f24d0  03 e0 0c e0                                      and lr, ip, r3
005f24d4  33 67 a0 e1                                      lsr r6, r3, r7
005f24d8  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005f24dc  30 70 9d e5                                      ldr r7, [sp, #0x30]
005f24e0  48 10 9d e5                                      ldr r1, [sp, #0x48]
005f24e4  0a 00 a0 e1                                      mov r0, sl
005f24e8  12 2c 07 e0                                      and r2, r7, r2, lsl ip
005f24ec  58 20 8d e5                                      str r2, [sp, #0x58]
005f24f0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005f24f4  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
005f24f8  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005f24fc  3e e2 a0 e1                                      lsr lr, lr, r2
005f2500  24 20 9d e5                                      ldr r2, [sp, #0x24]
005f2504  33 37 a0 e1                                      lsr r3, r3, r7
005f2508  16 62 0c e0                                      and r6, ip, r6, lsl r2
005f250c  54 70 9d e5                                      ldr r7, [sp, #0x54]
005f2510  14 20 9d e5                                      ldr r2, [sp, #0x14]
005f2514  1e c2 87 e1                                      orr ip, r7, lr, lsl r2
005f2518  18 70 9d e5                                      ldr r7, [sp, #0x18]
005f251c  10 e0 9d e5                                      ldr lr, [sp, #0x10]
005f2520  13 3e 07 e0                                      and r3, r7, r3, lsl lr
005f2524  58 e0 9d e5                                      ldr lr, [sp, #0x58]
005f2528  04 70 9d e5                                      ldr r7, [sp, #4]
005f252c  0e 20 87 e1                                      orr r2, r7, lr
005f2530  06 60 82 e1                                      orr r6, r2, r6
005f2534  40 20 9d e5                                      ldr r2, [sp, #0x40]
005f2538  03 30 86 e1                                      orr r3, r6, r3
005f253c  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
005f2540  02 c0 0c e0                                      and ip, ip, r2
005f2544  0c 30 83 e1                                      orr r3, r3, ip
005f2548  b0 3b cd e1                                      strh r3, [sp, #0xb0]
005f254c  b0 30 da e1                                      ldrh r3, [sl]
005f2550  28 c0 9d e5                                      ldr ip, [sp, #0x28]
005f2554  38 e0 9d e5                                      ldr lr, [sp, #0x38]
005f2558  06 70 03 e0                                      and r7, r3, r6
005f255c  37 7b a0 e1                                      lsr r7, r7, fp
005f2560  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
005f2564  17 7c a0 e1                                      lsl r7, r7, ip
005f2568  33 ee a0 e1                                      lsr lr, r3, lr
005f256c  33 66 a0 e1                                      lsr r6, r3, r6
005f2570  58 70 8d e5                                      str r7, [sp, #0x58]
005f2574  08 70 9d e5                                      ldr r7, [sp, #8]
005f2578  54 e0 8d e5                                      str lr, [sp, #0x54]
005f257c  5c 60 8d e5                                      str r6, [sp, #0x5c]
005f2580  07 e0 03 e0                                      and lr, r3, r7
005f2584  54 60 9d e5                                      ldr r6, [sp, #0x54]
005f2588  34 70 9d e5                                      ldr r7, [sp, #0x34]
005f258c  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005f2590  09 20 a0 e1                                      mov r2, sb
005f2594  09 a0 8a e0                                      add sl, sl, sb
005f2598  16 c7 0c e0                                      and ip, ip, r6, lsl r7
005f259c  54 c0 8d e5                                      str ip, [sp, #0x54]
005f25a0  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005f25a4  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
005f25a8  20 70 9d e5                                      ldr r7, [sp, #0x20]
005f25ac  3e ec a0 e1                                      lsr lr, lr, ip
005f25b0  33 36 a0 e1                                      lsr r3, r3, r6
005f25b4  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
005f25b8  24 60 9d e5                                      ldr r6, [sp, #0x24]
005f25bc  1c 76 07 e0                                      and r7, r7, ip, lsl r6
005f25c0  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005f25c4  5c 70 8d e5                                      str r7, [sp, #0x5c]
005f25c8  58 70 9d e5                                      ldr r7, [sp, #0x58]
005f25cc  10 60 9d e5                                      ldr r6, [sp, #0x10]
005f25d0  1e ec 87 e1                                      orr lr, r7, lr, lsl ip
005f25d4  58 e0 8d e5                                      str lr, [sp, #0x58]
005f25d8  18 e0 9d e5                                      ldr lr, [sp, #0x18]
005f25dc  04 70 9d e5                                      ldr r7, [sp, #4]
005f25e0  54 c0 9d e5                                      ldr ip, [sp, #0x54]
005f25e4  13 36 0e e0                                      and r3, lr, r3, lsl r6
005f25e8  5c e0 9d e5                                      ldr lr, [sp, #0x5c]
005f25ec  0c 60 87 e1                                      orr r6, r7, ip
005f25f0  40 70 9d e5                                      ldr r7, [sp, #0x40]
005f25f4  0e c0 86 e1                                      orr ip, r6, lr
005f25f8  58 60 9d e5                                      ldr r6, [sp, #0x58]
005f25fc  03 30 8c e1                                      orr r3, ip, r3
005f2600  07 e0 06 e0                                      and lr, r6, r7
005f2604  0e 30 83 e1                                      orr r3, r3, lr
005f2608  b4 30 85 e1                                      strh r3, [r5, r4]
005f260c  95 70 f4 eb                                      bl #0x30e868
005f2610  01 80 58 e2                                      subs r8, r8, #1
005f2614  02 40 84 e2                                      add r4, r4, #2
005f2618  a1 ff ff 1a                                      bne #0x5f24a4
005f261c  4c 80 9d e5                                      ldr r8, [sp, #0x4c]
005f2620  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005f2624  50 c0 9d e5                                      ldr ip, [sp, #0x50]
005f2628  0a 80 88 e0                                      add r8, r8, sl
005f262c  0c 50 85 e0                                      add r5, r5, ip
005f2630  05 00 58 e1                                      cmp r8, r5
005f2634  4c 80 8d e5                                      str r8, [sp, #0x4c]
005f2638  07 fd ff 8a                                      bhi #0x5f1a5c
005f263c  08 a0 a0 e1                                      mov sl, r8
005f2640  92 ff ff ea                                      b #0x5f2490
005f2644  10 90 9d e5                                      ldr sb, [sp, #0x10]
005f2648  00 00 59 e3                                      cmp sb, #0
005f264c  bb 01 00 1a                                      bne #0x5f2d40
005f2650  ec a0 9d e5                                      ldr sl, [sp, #0xec]
005f2654  00 00 5a e3                                      cmp sl, #0
005f2658  ff fc ff 0a                                      beq #0x5f1a5c
005f265c  b0 b0 8d e2                                      add fp, sp, #0xb0
005f2660  1c 40 8d e5                                      str r4, [sp, #0x1c]
005f2664  20 40 8d e5                                      str r4, [sp, #0x20]
005f2668  0c 40 8d e5                                      str r4, [sp, #0xc]
005f266c  10 b0 8d e5                                      str fp, [sp, #0x10]
005f2670  e8 90 9d e5                                      ldr sb, [sp, #0xe8]
005f2674  00 00 59 e3                                      cmp sb, #0
005f2678  46 00 00 0a                                      beq #0x5f2798
005f267c  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005f2680  00 50 a0 e3                                      mov r5, #0
005f2684  04 10 8d e5                                      str r1, [sp, #4]
005f2688  04 10 a0 e1                                      mov r1, r4
005f268c  14 20 9d e5                                      ldr r2, [sp, #0x14]
005f2690  10 00 9d e5                                      ldr r0, [sp, #0x10]
005f2694  73 70 f4 eb                                      bl #0x30e868
005f2698  b0 3b dd e1                                      ldrh r3, [sp, #0xb0]
005f269c  88 80 9d e5                                      ldr r8, [sp, #0x88]
005f26a0  7c 10 dd e5                                      ldrb r1, [sp, #0x7c]
005f26a4  7d 20 dd e5                                      ldrb r2, [sp, #0x7d]
005f26a8  08 80 03 e0                                      and r8, r3, r8
005f26ac  38 81 a0 e1                                      lsr r8, r8, r1
005f26b0  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
005f26b4  90 b0 9d e5                                      ldr fp, [sp, #0x90]
005f26b8  7e c0 dd e5                                      ldrb ip, [sp, #0x7e]
005f26bc  01 10 03 e0                                      and r1, r3, r1
005f26c0  80 60 dd e5                                      ldrb r6, [sp, #0x80]
005f26c4  31 12 a0 e1                                      lsr r1, r1, r2
005f26c8  0b b0 03 e0                                      and fp, r3, fp
005f26cc  82 20 dd e5                                      ldrb r2, [sp, #0x82]
005f26d0  3b bc a0 e1                                      lsr fp, fp, ip
005f26d4  18 86 a0 e1                                      lsl r8, r8, r6
005f26d8  1b 22 a0 e1                                      lsl r2, fp, r2
005f26dc  81 00 dd e5                                      ldrb r0, [sp, #0x81]
005f26e0  94 90 9d e5                                      ldr sb, [sp, #0x94]
005f26e4  a3 a0 dd e5                                      ldrb sl, [sp, #0xa3]
005f26e8  11 10 a0 e1                                      lsl r1, r1, r0
005f26ec  a0 00 dd e5                                      ldrb r0, [sp, #0xa0]
005f26f0  09 90 03 e0                                      and sb, r3, sb
005f26f4  98 c0 9d e5                                      ldr ip, [sp, #0x98]
005f26f8  39 90 a0 e1                                      lsr sb, sb, r0
005f26fc  18 20 8d e5                                      str r2, [sp, #0x18]
005f2700  19 8a 88 e1                                      orr r8, r8, sb, lsl sl
005f2704  a1 20 dd e5                                      ldrb r2, [sp, #0xa1]
005f2708  a4 00 dd e5                                      ldrb r0, [sp, #0xa4]
005f270c  0c c0 03 e0                                      and ip, r3, ip
005f2710  9c 70 9d e5                                      ldr r7, [sp, #0x9c]
005f2714  3c c2 a0 e1                                      lsr ip, ip, r2
005f2718  a2 60 dd e5                                      ldrb r6, [sp, #0xa2]
005f271c  a5 20 dd e5                                      ldrb r2, [sp, #0xa5]
005f2720  1c 10 81 e1                                      orr r1, r1, ip, lsl r0
005f2724  07 70 03 e0                                      and r7, r3, r7
005f2728  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005f272c  7f b0 dd e5                                      ldrb fp, [sp, #0x7f]
005f2730  37 66 a0 e1                                      lsr r6, r7, r6
005f2734  83 00 dd e5                                      ldrb r0, [sp, #0x83]
005f2738  16 62 8c e1                                      orr r6, ip, r6, lsl r2
005f273c  78 20 9d e5                                      ldr r2, [sp, #0x78]
005f2740  33 3b a0 e1                                      lsr r3, r3, fp
005f2744  13 30 02 e0                                      and r3, r2, r3, lsl r0
005f2748  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
005f274c  04 00 9d e5                                      ldr r0, [sp, #4]
005f2750  02 80 08 e0                                      and r8, r8, r2
005f2754  84 20 9d e5                                      ldr r2, [sp, #0x84]
005f2758  01 00 50 e2                                      subs r0, r0, #1
005f275c  04 00 8d e5                                      str r0, [sp, #4]
005f2760  02 80 88 e1                                      orr r8, r8, r2
005f2764  70 20 9d e5                                      ldr r2, [sp, #0x70]
005f2768  02 10 01 e0                                      and r1, r1, r2
005f276c  74 20 9d e5                                      ldr r2, [sp, #0x74]
005f2770  01 80 88 e1                                      orr r8, r8, r1
005f2774  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005f2778  02 20 06 e0                                      and r2, r6, r2
005f277c  02 20 88 e1                                      orr r2, r8, r2
005f2780  03 20 82 e1                                      orr r2, r2, r3
005f2784  b5 20 81 e1                                      strh r2, [r1, r5]
005f2788  14 20 9d e5                                      ldr r2, [sp, #0x14]
005f278c  02 50 85 e2                                      add r5, r5, #2
005f2790  02 40 84 e0                                      add r4, r4, r2
005f2794  bb ff ff 1a                                      bne #0x5f2688
005f2798  ec 30 9d e5                                      ldr r3, [sp, #0xec]
005f279c  01 30 53 e2                                      subs r3, r3, #1
005f27a0  ec 30 8d e5                                      str r3, [sp, #0xec]
005f27a4  ac fc ff 0a                                      beq #0x5f1a5c
005f27a8  20 50 9d e5                                      ldr r5, [sp, #0x20]
005f27ac  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
005f27b0  44 60 9d e5                                      ldr r6, [sp, #0x44]
005f27b4  e4 80 9d e5                                      ldr r8, [sp, #0xe4]
005f27b8  06 40 85 e0                                      add r4, r5, r6
005f27bc  08 70 87 e0                                      add r7, r7, r8
005f27c0  1c 70 8d e5                                      str r7, [sp, #0x1c]
005f27c4  0c 70 8d e5                                      str r7, [sp, #0xc]
005f27c8  20 40 8d e5                                      str r4, [sp, #0x20]
005f27cc  a7 ff ff ea                                      b #0x5f2670
005f27d0  ec 50 9d e5                                      ldr r5, [sp, #0xec]
005f27d4  e4 90 9d e5                                      ldr sb, [sp, #0xe4]
005f27d8  01 70 45 e2                                      sub r7, r5, #1
005f27dc  99 47 27 e0                                      mla r7, sb, r7, r4
005f27e0  07 00 54 e1                                      cmp r4, r7
005f27e4  9c fc ff 8a                                      bhi #0x5f1a5c
005f27e8  00 a0 69 e2                                      rsb sl, sb, #0
005f27ec  04 b0 a0 e1                                      mov fp, r4
005f27f0  04 a0 8d e5                                      str sl, [sp, #4]
005f27f4  b0 90 8d e2                                      add sb, sp, #0xb0
005f27f8  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005f27fc  00 00 51 e3                                      cmp r1, #0
005f2800  01 a0 a0 11                                      movne sl, r1
005f2804  00 50 a0 13                                      movne r5, #0
005f2808  0f 00 00 0a                                      beq #0x5f284c
005f280c  b5 10 97 e1                                      ldrh r1, [r7, r5]
005f2810  08 00 a0 e1                                      mov r0, r8
005f2814  ee ed ff eb                                      bl #0x5edfd4
005f2818  b0 0b cd e1                                      strh r0, [sp, #0xb0]
005f281c  b0 10 d4 e1                                      ldrh r1, [r4]
005f2820  08 00 a0 e1                                      mov r0, r8
005f2824  ea ed ff eb                                      bl #0x5edfd4
005f2828  09 10 a0 e1                                      mov r1, sb
005f282c  b5 00 87 e1                                      strh r0, [r7, r5]
005f2830  06 20 a0 e1                                      mov r2, r6
005f2834  04 00 a0 e1                                      mov r0, r4
005f2838  0a 70 f4 eb                                      bl #0x30e868
005f283c  01 a0 5a e2                                      subs sl, sl, #1
005f2840  06 40 84 e0                                      add r4, r4, r6
005f2844  02 50 85 e2                                      add r5, r5, #2
005f2848  ef ff ff 1a                                      bne #0x5f280c
005f284c  44 c0 9d e5                                      ldr ip, [sp, #0x44]
005f2850  04 00 9d e5                                      ldr r0, [sp, #4]
005f2854  0c 40 8b e0                                      add r4, fp, ip
005f2858  00 70 87 e0                                      add r7, r7, r0
005f285c  07 00 54 e1                                      cmp r4, r7
005f2860  7d fc ff 8a                                      bhi #0x5f1a5c
005f2864  04 b0 a0 e1                                      mov fp, r4
005f2868  e2 ff ff ea                                      b #0x5f27f8
005f286c  ec 80 9d e5                                      ldr r8, [sp, #0xec]
005f2870  e4 90 9d e5                                      ldr sb, [sp, #0xe4]
005f2874  01 30 48 e2                                      sub r3, r8, #1
005f2878  99 43 23 e0                                      mla r3, sb, r3, r4
005f287c  00 a0 69 e2                                      rsb sl, sb, #0
005f2880  03 00 54 e1                                      cmp r4, r3
005f2884  4c 30 8d e5                                      str r3, [sp, #0x4c]
005f2888  5c a0 8d e5                                      str sl, [sp, #0x5c]
005f288c  72 fc ff 8a                                      bhi #0x5f1a5c
005f2890  b0 c0 8d e2                                      add ip, sp, #0xb0
005f2894  58 40 8d e5                                      str r4, [sp, #0x58]
005f2898  54 c0 8d e5                                      str ip, [sp, #0x54]
005f289c  50 b0 8d e5                                      str fp, [sp, #0x50]
005f28a0  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005f28a4  00 00 51 e3                                      cmp r1, #0
005f28a8  76 00 00 0a                                      beq #0x5f2a88
005f28ac  e8 e0 9d e5                                      ldr lr, [sp, #0xe8]
005f28b0  00 50 a0 e3                                      mov r5, #0
005f28b4  04 e0 8d e5                                      str lr, [sp, #4]
005f28b8  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
005f28bc  94 20 9d e5                                      ldr r2, [sp, #0x94]
005f28c0  7c 70 dd e5                                      ldrb r7, [sp, #0x7c]
005f28c4  b5 90 90 e1                                      ldrh sb, [r0, r5]
005f28c8  98 30 9d e5                                      ldr r3, [sp, #0x98]
005f28cc  9c 80 9d e5                                      ldr r8, [sp, #0x9c]
005f28d0  02 10 09 e0                                      and r1, sb, r2
005f28d4  7d 60 dd e5                                      ldrb r6, [sp, #0x7d]
005f28d8  7e e0 dd e5                                      ldrb lr, [sp, #0x7e]
005f28dc  88 a0 9d e5                                      ldr sl, [sp, #0x88]
005f28e0  31 17 a0 e1                                      lsr r1, r1, r7
005f28e4  03 20 09 e0                                      and r2, sb, r3
005f28e8  81 10 a0 e1                                      lsl r1, r1, #1
005f28ec  08 30 09 e0                                      and r3, sb, r8
005f28f0  8c b0 9d e5                                      ldr fp, [sp, #0x8c]
005f28f4  b1 80 9a e1                                      ldrh r8, [sl, r1]
005f28f8  90 00 9d e5                                      ldr r0, [sp, #0x90]
005f28fc  a2 10 dd e5                                      ldrb r1, [sp, #0xa2]
005f2900  32 26 a0 e1                                      lsr r2, r2, r6
005f2904  33 3e a0 e1                                      lsr r3, r3, lr
005f2908  82 20 a0 e1                                      lsl r2, r2, #1
005f290c  83 30 a0 e1                                      lsl r3, r3, #1
005f2910  b2 20 9b e1                                      ldrh r2, [fp, r2]
005f2914  b3 30 90 e1                                      ldrh r3, [r0, r3]
005f2918  30 10 8d e5                                      str r1, [sp, #0x30]
005f291c  81 00 dd e5                                      ldrb r0, [sp, #0x81]
005f2920  7f 10 dd e5                                      ldrb r1, [sp, #0x7f]
005f2924  a0 c0 dd e5                                      ldrb ip, [sp, #0xa0]
005f2928  80 b0 dd e5                                      ldrb fp, [sp, #0x80]
005f292c  1c 00 8d e5                                      str r0, [sp, #0x1c]
005f2930  3c 10 8d e5                                      str r1, [sp, #0x3c]
005f2934  82 00 dd e5                                      ldrb r0, [sp, #0x82]
005f2938  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
005f293c  58 8c a0 e1                                      asr r8, r8, ip
005f2940  34 00 8d e5                                      str r0, [sp, #0x34]
005f2944  18 8b 01 e0                                      and r8, r1, r8, lsl fp
005f2948  30 00 9d e5                                      ldr r0, [sp, #0x30]
005f294c  83 10 dd e5                                      ldrb r1, [sp, #0x83]
005f2950  a1 a0 dd e5                                      ldrb sl, [sp, #0xa1]
005f2954  53 30 a0 e1                                      asr r3, r3, r0
005f2958  40 10 8d e5                                      str r1, [sp, #0x40]
005f295c  70 00 9d e5                                      ldr r0, [sp, #0x70]
005f2960  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005f2964  52 2a a0 e1                                      asr r2, r2, sl
005f2968  12 21 00 e0                                      and r2, r0, r2, lsl r1
005f296c  74 00 9d e5                                      ldr r0, [sp, #0x74]
005f2970  34 10 9d e5                                      ldr r1, [sp, #0x34]
005f2974  08 20 8d e5                                      str r2, [sp, #8]
005f2978  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
005f297c  13 31 00 e0                                      and r3, r0, r3, lsl r1
005f2980  39 92 a0 e1                                      lsr sb, sb, r2
005f2984  0c 30 8d e5                                      str r3, [sp, #0xc]
005f2988  78 20 9d e5                                      ldr r2, [sp, #0x78]
005f298c  40 30 9d e5                                      ldr r3, [sp, #0x40]
005f2990  04 00 a0 e1                                      mov r0, r4
005f2994  54 10 9d e5                                      ldr r1, [sp, #0x54]
005f2998  19 93 02 e0                                      and sb, r2, sb, lsl r3
005f299c  84 20 9d e5                                      ldr r2, [sp, #0x84]
005f29a0  08 30 9d e5                                      ldr r3, [sp, #8]
005f29a4  02 80 88 e1                                      orr r8, r8, r2
005f29a8  03 20 88 e1                                      orr r2, r8, r3
005f29ac  0c 80 9d e5                                      ldr r8, [sp, #0xc]
005f29b0  08 20 82 e1                                      orr r2, r2, r8
005f29b4  09 20 82 e1                                      orr r2, r2, sb
005f29b8  b0 2b cd e1                                      strh r2, [sp, #0xb0]
005f29bc  b0 30 d4 e1                                      ldrh r3, [r4]
005f29c0  94 90 9d e5                                      ldr sb, [sp, #0x94]
005f29c4  50 20 9d e5                                      ldr r2, [sp, #0x50]
005f29c8  09 80 03 e0                                      and r8, r3, sb
005f29cc  98 90 9d e5                                      ldr sb, [sp, #0x98]
005f29d0  38 87 a0 e1                                      lsr r8, r8, r7
005f29d4  09 70 03 e0                                      and r7, r3, sb
005f29d8  9c 90 9d e5                                      ldr sb, [sp, #0x9c]
005f29dc  37 66 a0 e1                                      lsr r6, r7, r6
005f29e0  09 70 03 e0                                      and r7, r3, sb
005f29e4  37 ee a0 e1                                      lsr lr, r7, lr
005f29e8  88 70 9d e5                                      ldr r7, [sp, #0x88]
005f29ec  88 80 a0 e1                                      lsl r8, r8, #1
005f29f0  8c 90 9d e5                                      ldr sb, [sp, #0x8c]
005f29f4  b8 80 97 e1                                      ldrh r8, [r7, r8]
005f29f8  86 60 a0 e1                                      lsl r6, r6, #1
005f29fc  90 70 9d e5                                      ldr r7, [sp, #0x90]
005f2a00  b6 60 99 e1                                      ldrh r6, [sb, r6]
005f2a04  58 cc a0 e1                                      asr ip, r8, ip
005f2a08  6c 80 9d e5                                      ldr r8, [sp, #0x6c]
005f2a0c  8e e0 a0 e1                                      lsl lr, lr, #1
005f2a10  be e0 97 e1                                      ldrh lr, [r7, lr]
005f2a14  30 90 9d e5                                      ldr sb, [sp, #0x30]
005f2a18  1c cb 08 e0                                      and ip, r8, ip, lsl fp
005f2a1c  56 aa a0 e1                                      asr sl, r6, sl
005f2a20  70 b0 9d e5                                      ldr fp, [sp, #0x70]
005f2a24  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
005f2a28  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
005f2a2c  74 80 9d e5                                      ldr r8, [sp, #0x74]
005f2a30  5e e9 a0 e1                                      asr lr, lr, sb
005f2a34  34 90 9d e5                                      ldr sb, [sp, #0x34]
005f2a38  1a a6 0b e0                                      and sl, fp, sl, lsl r6
005f2a3c  78 b0 9d e5                                      ldr fp, [sp, #0x78]
005f2a40  40 60 9d e5                                      ldr r6, [sp, #0x40]
005f2a44  33 37 a0 e1                                      lsr r3, r3, r7
005f2a48  1e e9 08 e0                                      and lr, r8, lr, lsl sb
005f2a4c  13 36 0b e0                                      and r3, fp, r3, lsl r6
005f2a50  84 70 9d e5                                      ldr r7, [sp, #0x84]
005f2a54  4c 80 9d e5                                      ldr r8, [sp, #0x4c]
005f2a58  02 40 84 e0                                      add r4, r4, r2
005f2a5c  07 c0 8c e1                                      orr ip, ip, r7
005f2a60  0a a0 8c e1                                      orr sl, ip, sl
005f2a64  0e e0 8a e1                                      orr lr, sl, lr
005f2a68  03 30 8e e1                                      orr r3, lr, r3
005f2a6c  b5 30 88 e1                                      strh r3, [r8, r5]
005f2a70  7c 6f f4 eb                                      bl #0x30e868
005f2a74  04 90 9d e5                                      ldr sb, [sp, #4]
005f2a78  02 50 85 e2                                      add r5, r5, #2
005f2a7c  01 90 59 e2                                      subs sb, sb, #1
005f2a80  04 90 8d e5                                      str sb, [sp, #4]
005f2a84  8b ff ff 1a                                      bne #0x5f28b8
005f2a88  58 a0 9d e5                                      ldr sl, [sp, #0x58]
005f2a8c  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
005f2a90  44 b0 9d e5                                      ldr fp, [sp, #0x44]
005f2a94  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005f2a98  0b a0 8a e0                                      add sl, sl, fp
005f2a9c  00 c0 8c e0                                      add ip, ip, r0
005f2aa0  0c 00 5a e1                                      cmp sl, ip
005f2aa4  58 a0 8d e5                                      str sl, [sp, #0x58]
005f2aa8  4c c0 8d e5                                      str ip, [sp, #0x4c]
005f2aac  ea fb ff 8a                                      bhi #0x5f1a5c
005f2ab0  0a 40 a0 e1                                      mov r4, sl
005f2ab4  79 ff ff ea                                      b #0x5f28a0
005f2ab8  ec a0 9d e5                                      ldr sl, [sp, #0xec]
005f2abc  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f2ac0  01 70 4a e2                                      sub r7, sl, #1
005f2ac4  9b 47 27 e0                                      mla r7, fp, r7, r4
005f2ac8  00 c0 6b e2                                      rsb ip, fp, #0
005f2acc  07 00 54 e1                                      cmp r4, r7
005f2ad0  04 b0 a0 91                                      movls fp, r4
005f2ad4  04 c0 8d e5                                      str ip, [sp, #4]
005f2ad8  0b 40 a0 91                                      movls r4, fp
005f2adc  b0 90 8d 92                                      addls sb, sp, #0xb0
005f2ae0  dd fb ff 8a                                      bhi #0x5f1a5c
005f2ae4  e8 20 9d e5                                      ldr r2, [sp, #0xe8]
005f2ae8  00 00 52 e3                                      cmp r2, #0
005f2aec  11 00 00 0a                                      beq #0x5f2b38
005f2af0  e8 a0 9d e5                                      ldr sl, [sp, #0xe8]
005f2af4  00 50 a0 e3                                      mov r5, #0
005f2af8  b5 10 97 e1                                      ldrh r1, [r7, r5]
005f2afc  08 00 a0 e1                                      mov r0, r8
005f2b00  f5 ec ff eb                                      bl #0x5ededc
005f2b04  b0 0b cd e1                                      strh r0, [sp, #0xb0]
005f2b08  b0 10 d4 e1                                      ldrh r1, [r4]
005f2b0c  08 00 a0 e1                                      mov r0, r8
005f2b10  f1 ec ff eb                                      bl #0x5ededc
005f2b14  09 10 a0 e1                                      mov r1, sb
005f2b18  b5 00 87 e1                                      strh r0, [r7, r5]
005f2b1c  06 20 a0 e1                                      mov r2, r6
005f2b20  04 00 a0 e1                                      mov r0, r4
005f2b24  4f 6f f4 eb                                      bl #0x30e868
005f2b28  01 a0 5a e2                                      subs sl, sl, #1
005f2b2c  06 40 84 e0                                      add r4, r4, r6
005f2b30  02 50 85 e2                                      add r5, r5, #2
005f2b34  ef ff ff 1a                                      bne #0x5f2af8
005f2b38  44 00 9d e5                                      ldr r0, [sp, #0x44]
005f2b3c  04 10 9d e5                                      ldr r1, [sp, #4]
005f2b40  00 40 8b e0                                      add r4, fp, r0
005f2b44  01 70 87 e0                                      add r7, r7, r1
005f2b48  07 00 54 e1                                      cmp r4, r7
005f2b4c  c2 fb ff 8a                                      bhi #0x5f1a5c
005f2b50  04 b0 a0 e1                                      mov fp, r4
005f2b54  e2 ff ff ea                                      b #0x5f2ae4
005f2b58  ec 10 9d e5                                      ldr r1, [sp, #0xec]
005f2b5c  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f2b60  01 90 41 e2                                      sub sb, r1, #1
005f2b64  92 49 29 e0                                      mla sb, r2, sb, r4
005f2b68  00 30 62 e2                                      rsb r3, r2, #0
005f2b6c  09 00 54 e1                                      cmp r4, sb
005f2b70  38 30 8d e5                                      str r3, [sp, #0x38]
005f2b74  b8 fb ff 8a                                      bhi #0x5f1a5c
005f2b78  34 40 8d e5                                      str r4, [sp, #0x34]
005f2b7c  7c 40 dd e5                                      ldrb r4, [sp, #0x7c]
005f2b80  80 50 dd e5                                      ldrb r5, [sp, #0x80]
005f2b84  6c a0 9d e5                                      ldr sl, [sp, #0x6c]
005f2b88  2c 40 8d e5                                      str r4, [sp, #0x2c]
005f2b8c  7f 40 dd e5                                      ldrb r4, [sp, #0x7f]
005f2b90  7d b0 dd e5                                      ldrb fp, [sp, #0x7d]
005f2b94  24 50 8d e5                                      str r5, [sp, #0x24]
005f2b98  81 c0 dd e5                                      ldrb ip, [sp, #0x81]
005f2b9c  70 00 9d e5                                      ldr r0, [sp, #0x70]
005f2ba0  7e 10 dd e5                                      ldrb r1, [sp, #0x7e]
005f2ba4  82 20 dd e5                                      ldrb r2, [sp, #0x82]
005f2ba8  74 30 9d e5                                      ldr r3, [sp, #0x74]
005f2bac  83 50 dd e5                                      ldrb r5, [sp, #0x83]
005f2bb0  28 40 8d e5                                      str r4, [sp, #0x28]
005f2bb4  34 40 9d e5                                      ldr r4, [sp, #0x34]
005f2bb8  20 a0 8d e5                                      str sl, [sp, #0x20]
005f2bbc  b0 a0 8d e2                                      add sl, sp, #0xb0
005f2bc0  1c b0 8d e5                                      str fp, [sp, #0x1c]
005f2bc4  30 a0 8d e5                                      str sl, [sp, #0x30]
005f2bc8  10 c0 8d e5                                      str ip, [sp, #0x10]
005f2bcc  08 a0 a0 e1                                      mov sl, r8
005f2bd0  18 00 8d e5                                      str r0, [sp, #0x18]
005f2bd4  14 10 8d e5                                      str r1, [sp, #0x14]
005f2bd8  0c 20 8d e5                                      str r2, [sp, #0xc]
005f2bdc  08 30 8d e5                                      str r3, [sp, #8]
005f2be0  04 50 8d e5                                      str r5, [sp, #4]
005f2be4  07 b0 a0 e1                                      mov fp, r7
005f2be8  06 80 a0 e1                                      mov r8, r6
005f2bec  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
005f2bf0  00 00 53 e3                                      cmp r3, #0
005f2bf4  48 00 00 0a                                      beq #0x5f2d1c
005f2bf8  e8 60 9d e5                                      ldr r6, [sp, #0xe8]
005f2bfc  00 50 a0 e3                                      mov r5, #0
005f2c00  06 70 a0 e1                                      mov r7, r6
005f2c04  b5 30 99 e1                                      ldrh r3, [sb, r5]
005f2c08  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
005f2c0c  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
005f2c10  30 10 9d e5                                      ldr r1, [sp, #0x30]
005f2c14  33 ce a0 e1                                      lsr ip, r3, lr
005f2c18  33 26 a0 e1                                      lsr r2, r3, r6
005f2c1c  20 e0 9d e5                                      ldr lr, [sp, #0x20]
005f2c20  24 60 9d e5                                      ldr r6, [sp, #0x24]
005f2c24  04 00 a0 e1                                      mov r0, r4
005f2c28  1c c6 0e e0                                      and ip, lr, ip, lsl r6
005f2c2c  3c c0 8d e5                                      str ip, [sp, #0x3c]
005f2c30  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005f2c34  18 60 9d e5                                      ldr r6, [sp, #0x18]
005f2c38  33 ec a0 e1                                      lsr lr, r3, ip
005f2c3c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005f2c40  12 2c 06 e0                                      and r2, r6, r2, lsl ip
005f2c44  28 60 9d e5                                      ldr r6, [sp, #0x28]
005f2c48  08 c0 9d e5                                      ldr ip, [sp, #8]
005f2c4c  33 36 a0 e1                                      lsr r3, r3, r6
005f2c50  0c 60 9d e5                                      ldr r6, [sp, #0xc]
005f2c54  1e e6 0c e0                                      and lr, ip, lr, lsl r6
005f2c58  04 c0 9d e5                                      ldr ip, [sp, #4]
005f2c5c  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
005f2c60  13 3c 08 e0                                      and r3, r8, r3, lsl ip
005f2c64  06 c0 8b e1                                      orr ip, fp, r6
005f2c68  02 c0 8c e1                                      orr ip, ip, r2
005f2c6c  0e c0 8c e1                                      orr ip, ip, lr
005f2c70  03 30 8c e1                                      orr r3, ip, r3
005f2c74  b0 3b cd e1                                      strh r3, [sp, #0xb0]
005f2c78  b0 30 d4 e1                                      ldrh r3, [r4]
005f2c7c  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
005f2c80  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005f2c84  0a 20 a0 e1                                      mov r2, sl
005f2c88  33 66 a0 e1                                      lsr r6, r3, r6
005f2c8c  33 ec a0 e1                                      lsr lr, r3, ip
005f2c90  40 60 8d e5                                      str r6, [sp, #0x40]
005f2c94  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005f2c98  24 60 9d e5                                      ldr r6, [sp, #0x24]
005f2c9c  0a 40 84 e0                                      add r4, r4, sl
005f2ca0  1e e6 0c e0                                      and lr, ip, lr, lsl r6
005f2ca4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005f2ca8  40 60 9d e5                                      ldr r6, [sp, #0x40]
005f2cac  3c e0 8d e5                                      str lr, [sp, #0x3c]
005f2cb0  33 cc a0 e1                                      lsr ip, r3, ip
005f2cb4  18 e0 9d e5                                      ldr lr, [sp, #0x18]
005f2cb8  48 c0 8d e5                                      str ip, [sp, #0x48]
005f2cbc  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005f2cc0  16 ec 0e e0                                      and lr, lr, r6, lsl ip
005f2cc4  40 e0 8d e5                                      str lr, [sp, #0x40]
005f2cc8  28 e0 9d e5                                      ldr lr, [sp, #0x28]
005f2ccc  48 c0 9d e5                                      ldr ip, [sp, #0x48]
005f2cd0  08 60 9d e5                                      ldr r6, [sp, #8]
005f2cd4  33 3e a0 e1                                      lsr r3, r3, lr
005f2cd8  0c e0 9d e5                                      ldr lr, [sp, #0xc]
005f2cdc  1c 6e 06 e0                                      and r6, r6, ip, lsl lr
005f2ce0  48 60 8d e5                                      str r6, [sp, #0x48]
005f2ce4  04 60 9d e5                                      ldr r6, [sp, #4]
005f2ce8  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
005f2cec  40 e0 9d e5                                      ldr lr, [sp, #0x40]
005f2cf0  13 36 08 e0                                      and r3, r8, r3, lsl r6
005f2cf4  0c 60 8b e1                                      orr r6, fp, ip
005f2cf8  0e 60 86 e1                                      orr r6, r6, lr
005f2cfc  48 e0 9d e5                                      ldr lr, [sp, #0x48]
005f2d00  0e c0 86 e1                                      orr ip, r6, lr
005f2d04  03 30 8c e1                                      orr r3, ip, r3
005f2d08  b5 30 89 e1                                      strh r3, [sb, r5]
005f2d0c  d5 6e f4 eb                                      bl #0x30e868
005f2d10  01 70 57 e2                                      subs r7, r7, #1
005f2d14  02 50 85 e2                                      add r5, r5, #2
005f2d18  b9 ff ff 1a                                      bne #0x5f2c04
005f2d1c  34 00 9d e5                                      ldr r0, [sp, #0x34]
005f2d20  44 10 9d e5                                      ldr r1, [sp, #0x44]
005f2d24  38 20 9d e5                                      ldr r2, [sp, #0x38]
005f2d28  01 40 80 e0                                      add r4, r0, r1
005f2d2c  02 90 89 e0                                      add sb, sb, r2
005f2d30  09 00 54 e1                                      cmp r4, sb
005f2d34  48 fb ff 8a                                      bhi #0x5f1a5c
005f2d38  34 40 8d e5                                      str r4, [sp, #0x34]
005f2d3c  aa ff ff ea                                      b #0x5f2bec
005f2d40  ec c0 9d e5                                      ldr ip, [sp, #0xec]
005f2d44  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f2d48  01 30 4c e2                                      sub r3, ip, #1
005f2d4c  90 43 23 e0                                      mla r3, r0, r3, r4
005f2d50  00 10 60 e2                                      rsb r1, r0, #0
005f2d54  03 00 54 e1                                      cmp r4, r3
005f2d58  b0 20 8d 92                                      addls r2, sp, #0xb0
005f2d5c  58 30 8d e5                                      str r3, [sp, #0x58]
005f2d60  64 10 8d e5                                      str r1, [sp, #0x64]
005f2d64  60 40 8d 95                                      strls r4, [sp, #0x60]
005f2d68  5c 20 8d 95                                      strls r2, [sp, #0x5c]
005f2d6c  3a fb ff 8a                                      bhi #0x5f1a5c
005f2d70  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
005f2d74  00 00 50 e3                                      cmp r0, #0
005f2d78  8c 00 00 0a                                      beq #0x5f2fb0
005f2d7c  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
005f2d80  00 50 a0 e3                                      mov r5, #0
005f2d84  04 30 8d e5                                      str r3, [sp, #4]
005f2d88  58 60 9d e5                                      ldr r6, [sp, #0x58]
005f2d8c  88 90 9d e5                                      ldr sb, [sp, #0x88]
005f2d90  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
005f2d94  b5 30 96 e1                                      ldrh r3, [r6, r5]
005f2d98  7d 70 dd e5                                      ldrb r7, [sp, #0x7d]
005f2d9c  81 c0 dd e5                                      ldrb ip, [sp, #0x81]
005f2da0  09 b0 03 e0                                      and fp, r3, sb
005f2da4  00 a0 03 e0                                      and sl, r3, r0
005f2da8  90 90 9d e5                                      ldr sb, [sp, #0x90]
005f2dac  7e e0 dd e5                                      ldrb lr, [sp, #0x7e]
005f2db0  3a a7 a0 e1                                      lsr sl, sl, r7
005f2db4  82 20 dd e5                                      ldrb r2, [sp, #0x82]
005f2db8  09 10 03 e0                                      and r1, r3, sb
005f2dbc  1a ac a0 e1                                      lsl sl, sl, ip
005f2dc0  31 1e a0 e1                                      lsr r1, r1, lr
005f2dc4  11 12 a0 e1                                      lsl r1, r1, r2
005f2dc8  7c 80 dd e5                                      ldrb r8, [sp, #0x7c]
005f2dcc  80 60 dd e5                                      ldrb r6, [sp, #0x80]
005f2dd0  1c a0 8d e5                                      str sl, [sp, #0x1c]
005f2dd4  3b b8 a0 e1                                      lsr fp, fp, r8
005f2dd8  1b b6 a0 e1                                      lsl fp, fp, r6
005f2ddc  a0 a0 dd e5                                      ldrb sl, [sp, #0xa0]
005f2de0  a1 00 dd e5                                      ldrb r0, [sp, #0xa1]
005f2de4  a2 90 dd e5                                      ldrb sb, [sp, #0xa2]
005f2de8  08 a0 8d e5                                      str sl, [sp, #8]
005f2dec  10 10 8d e5                                      str r1, [sp, #0x10]
005f2df0  94 a0 9d e5                                      ldr sl, [sp, #0x94]
005f2df4  a3 10 dd e5                                      ldrb r1, [sp, #0xa3]
005f2df8  24 00 8d e5                                      str r0, [sp, #0x24]
005f2dfc  3c 90 8d e5                                      str sb, [sp, #0x3c]
005f2e00  0c 10 8d e5                                      str r1, [sp, #0xc]
005f2e04  08 00 9d e5                                      ldr r0, [sp, #8]
005f2e08  0a 10 03 e0                                      and r1, r3, sl
005f2e0c  a4 90 dd e5                                      ldrb sb, [sp, #0xa4]
005f2e10  98 a0 9d e5                                      ldr sl, [sp, #0x98]
005f2e14  31 10 a0 e1                                      lsr r1, r1, r0
005f2e18  2c 90 8d e5                                      str sb, [sp, #0x2c]
005f2e1c  24 00 9d e5                                      ldr r0, [sp, #0x24]
005f2e20  0a 90 03 e0                                      and sb, r3, sl
005f2e24  a5 a0 dd e5                                      ldrb sl, [sp, #0xa5]
005f2e28  39 90 a0 e1                                      lsr sb, sb, r0
005f2e2c  40 a0 8d e5                                      str sl, [sp, #0x40]
005f2e30  7f 00 dd e5                                      ldrb r0, [sp, #0x7f]
005f2e34  9c a0 9d e5                                      ldr sl, [sp, #0x9c]
005f2e38  50 00 8d e5                                      str r0, [sp, #0x50]
005f2e3c  0a 00 03 e0                                      and r0, r3, sl
005f2e40  0c a0 9d e5                                      ldr sl, [sp, #0xc]
005f2e44  11 ba 8b e1                                      orr fp, fp, r1, lsl sl
005f2e48  18 b0 8d e5                                      str fp, [sp, #0x18]
005f2e4c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005f2e50  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
005f2e54  3c b0 9d e5                                      ldr fp, [sp, #0x3c]
005f2e58  19 9a 81 e1                                      orr sb, r1, sb, lsl sl
005f2e5c  30 0b a0 e1                                      lsr r0, r0, fp
005f2e60  40 10 9d e5                                      ldr r1, [sp, #0x40]
005f2e64  10 b0 9d e5                                      ldr fp, [sp, #0x10]
005f2e68  50 a0 9d e5                                      ldr sl, [sp, #0x50]
005f2e6c  1c 90 8d e5                                      str sb, [sp, #0x1c]
005f2e70  10 01 8b e1                                      orr r0, fp, r0, lsl r1
005f2e74  83 90 dd e5                                      ldrb sb, [sp, #0x83]
005f2e78  78 b0 9d e5                                      ldr fp, [sp, #0x78]
005f2e7c  33 3a a0 e1                                      lsr r3, r3, sl
005f2e80  13 39 0b e0                                      and r3, fp, r3, lsl sb
005f2e84  6c a0 9d e5                                      ldr sl, [sp, #0x6c]
005f2e88  10 30 8d e5                                      str r3, [sp, #0x10]
005f2e8c  18 30 9d e5                                      ldr r3, [sp, #0x18]
005f2e90  84 b0 9d e5                                      ldr fp, [sp, #0x84]
005f2e94  0a 10 03 e0                                      and r1, r3, sl
005f2e98  0b 10 81 e1                                      orr r1, r1, fp
005f2e9c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005f2ea0  70 b0 9d e5                                      ldr fp, [sp, #0x70]
005f2ea4  0b a0 03 e0                                      and sl, r3, fp
005f2ea8  0a a0 81 e1                                      orr sl, r1, sl
005f2eac  74 10 9d e5                                      ldr r1, [sp, #0x74]
005f2eb0  10 30 9d e5                                      ldr r3, [sp, #0x10]
005f2eb4  88 b0 9d e5                                      ldr fp, [sp, #0x88]
005f2eb8  01 00 00 e0                                      and r0, r0, r1
005f2ebc  00 00 8a e1                                      orr r0, sl, r0
005f2ec0  03 00 80 e1                                      orr r0, r0, r3
005f2ec4  b0 0b cd e1                                      strh r0, [sp, #0xb0]
005f2ec8  b0 30 d4 e1                                      ldrh r3, [r4]
005f2ecc  04 00 a0 e1                                      mov r0, r4
005f2ed0  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
005f2ed4  0b a0 03 e0                                      and sl, r3, fp
005f2ed8  8c b0 9d e5                                      ldr fp, [sp, #0x8c]
005f2edc  3a a8 a0 e1                                      lsr sl, sl, r8
005f2ee0  0b 80 03 e0                                      and r8, r3, fp
005f2ee4  38 77 a0 e1                                      lsr r7, r8, r7
005f2ee8  1a a6 a0 e1                                      lsl sl, sl, r6
005f2eec  90 80 9d e5                                      ldr r8, [sp, #0x90]
005f2ef0  17 7c a0 e1                                      lsl r7, r7, ip
005f2ef4  08 b0 03 e0                                      and fp, r3, r8
005f2ef8  3b ee a0 e1                                      lsr lr, fp, lr
005f2efc  1e e2 a0 e1                                      lsl lr, lr, r2
005f2f00  94 b0 9d e5                                      ldr fp, [sp, #0x94]
005f2f04  08 20 9d e5                                      ldr r2, [sp, #8]
005f2f08  98 60 9d e5                                      ldr r6, [sp, #0x98]
005f2f0c  0b c0 03 e0                                      and ip, r3, fp
005f2f10  3c c2 a0 e1                                      lsr ip, ip, r2
005f2f14  06 20 03 e0                                      and r2, r3, r6
005f2f18  0c 60 9d e5                                      ldr r6, [sp, #0xc]
005f2f1c  24 80 9d e5                                      ldr r8, [sp, #0x24]
005f2f20  9c b0 9d e5                                      ldr fp, [sp, #0x9c]
005f2f24  1c a6 8a e1                                      orr sl, sl, ip, lsl r6
005f2f28  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005f2f2c  32 28 a0 e1                                      lsr r2, r2, r8
005f2f30  0b 80 03 e0                                      and r8, r3, fp
005f2f34  3c b0 9d e5                                      ldr fp, [sp, #0x3c]
005f2f38  12 7c 87 e1                                      orr r7, r7, r2, lsl ip
005f2f3c  40 20 9d e5                                      ldr r2, [sp, #0x40]
005f2f40  38 8b a0 e1                                      lsr r8, r8, fp
005f2f44  50 60 9d e5                                      ldr r6, [sp, #0x50]
005f2f48  18 e2 8e e1                                      orr lr, lr, r8, lsl r2
005f2f4c  78 80 9d e5                                      ldr r8, [sp, #0x78]
005f2f50  33 36 a0 e1                                      lsr r3, r3, r6
005f2f54  13 39 08 e0                                      and r3, r8, r3, lsl sb
005f2f58  6c 90 9d e5                                      ldr sb, [sp, #0x6c]
005f2f5c  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005f2f60  84 b0 9d e5                                      ldr fp, [sp, #0x84]
005f2f64  74 20 9d e5                                      ldr r2, [sp, #0x74]
005f2f68  09 a0 0a e0                                      and sl, sl, sb
005f2f6c  0c 70 07 e0                                      and r7, r7, ip
005f2f70  0b a0 8a e1                                      orr sl, sl, fp
005f2f74  07 70 8a e1                                      orr r7, sl, r7
005f2f78  02 e0 0e e0                                      and lr, lr, r2
005f2f7c  58 60 9d e5                                      ldr r6, [sp, #0x58]
005f2f80  0e e0 87 e1                                      orr lr, r7, lr
005f2f84  03 30 8e e1                                      orr r3, lr, r3
005f2f88  b5 30 86 e1                                      strh r3, [r6, r5]
005f2f8c  14 20 9d e5                                      ldr r2, [sp, #0x14]
005f2f90  34 6e f4 eb                                      bl #0x30e868
005f2f94  04 70 9d e5                                      ldr r7, [sp, #4]
005f2f98  14 80 9d e5                                      ldr r8, [sp, #0x14]
005f2f9c  02 50 85 e2                                      add r5, r5, #2
005f2fa0  01 70 57 e2                                      subs r7, r7, #1
005f2fa4  04 70 8d e5                                      str r7, [sp, #4]
005f2fa8  08 40 84 e0                                      add r4, r4, r8
005f2fac  75 ff ff 1a                                      bne #0x5f2d88
005f2fb0  58 b0 9d e5                                      ldr fp, [sp, #0x58]
005f2fb4  60 90 9d e5                                      ldr sb, [sp, #0x60]
005f2fb8  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005f2fbc  64 c0 9d e5                                      ldr ip, [sp, #0x64]
005f2fc0  0a 40 89 e0                                      add r4, sb, sl
005f2fc4  0c b0 8b e0                                      add fp, fp, ip
005f2fc8  0b 00 54 e1                                      cmp r4, fp
005f2fcc  58 b0 8d e5                                      str fp, [sp, #0x58]
005f2fd0  a1 fa ff 8a                                      bhi #0x5f1a5c
005f2fd4  60 40 8d e5                                      str r4, [sp, #0x60]
005f2fd8  64 ff ff ea                                      b #0x5f2d70

; FUNCTION 0x005f2fdc, declared_size=8204, range_size=8204, mode=arm
; class-group: bool glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format12_GLOBAL__N_117convertPackedImplIhhEEbNS0_14E_PIXEL_FORMATEPKT_jS4_PT0_jjjb
; demangled: bool glitch::video::pixel_format::(anonymous namespace)::convertPackedImpl<unsigned char, unsigned char>(glitch::video::E_PIXEL_FORMAT, unsigned char const*, unsigned int, glitch::video::E_PIXEL_FORMAT, unsigned char*, unsigned int, unsigned int, unsigned int, bool)
; decoder-mode: arm
005f2fdc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005f2fe0  b8 7e 9f e5                                      ldr r7, [pc, #0xeb8]
005f2fe4  b8 4e 9f e5                                      ldr r4, [pc, #0xeb8]
005f2fe8  b4 d0 4d e2                                      sub sp, sp, #0xb4
005f2fec  04 00 8d e5                                      str r0, [sp, #4]
005f2ff0  07 70 8f e0                                      add r7, pc, r7
005f2ff4  04 00 97 e7                                      ldr r0, [r7, r4]
005f2ff8  04 50 9d e5                                      ldr r5, [sp, #4]
005f2ffc  28 a0 a0 e3                                      mov sl, #0x28
005f3000  9a 03 28 e0                                      mla r8, sl, r3, r0
005f3004  9a 05 2a e0                                      mla sl, sl, r5, r0
005f3008  19 c0 d8 e5                                      ldrb ip, [r8, #0x19]
005f300c  19 00 da e5                                      ldrb r0, [sl, #0x19]
005f3010  e8 90 dd e5                                      ldrb sb, [sp, #0xe8]
005f3014  08 40 8d e5                                      str r4, [sp, #8]
005f3018  00 00 50 e3                                      cmp r0, #0
005f301c  0c 00 a0 01                                      moveq r0, ip
005f3020  00 00 5c e3                                      cmp ip, #0
005f3024  01 40 a0 e1                                      mov r4, r1
005f3028  44 20 8d e5                                      str r2, [sp, #0x44]
005f302c  d8 60 9d e5                                      ldr r6, [sp, #0xd8]
005f3030  e0 50 9d e5                                      ldr r5, [sp, #0xe0]
005f3034  14 90 8d e5                                      str sb, [sp, #0x14]
005f3038  39 00 00 0a                                      beq #0x5f3124
005f303c  0c 00 50 e1                                      cmp r0, ip
005f3040  37 00 00 2a                                      bhs #0x5f3124
005f3044  80 00 5c e1                                      cmp ip, r0, lsl #1
005f3048  43 02 00 ca                                      bgt #0x5f395c
005f304c  1b 20 da e5                                      ldrb r2, [sl, #0x1b]
005f3050  1b 10 d8 e5                                      ldrb r1, [r8, #0x1b]
005f3054  00 00 52 e3                                      cmp r2, #0
005f3058  01 20 a0 01                                      moveq r2, r1
005f305c  00 00 51 e3                                      cmp r1, #0
005f3060  d2 01 00 0a                                      beq #0x5f37b0
005f3064  01 00 52 e1                                      cmp r2, r1
005f3068  d0 01 00 2a                                      bhs #0x5f37b0
005f306c  82 00 51 e1                                      cmp r1, r2, lsl #1
005f3070  9c 02 00 da                                      ble #0x5f3ae8
005f3074  68 80 8d e2                                      add r8, sp, #0x68
005f3078  04 10 9d e5                                      ldr r1, [sp, #4]
005f307c  03 20 a0 e1                                      mov r2, r3
005f3080  08 00 a0 e1                                      mov r0, r8
005f3084  96 ee ff eb                                      bl #0x5eeae4
005f3088  06 00 54 e1                                      cmp r4, r6
005f308c  15 70 da e5                                      ldrb r7, [sl, #0x15]
005f3090  56 04 00 0a                                      beq #0x5f41f0
005f3094  14 b0 9d e5                                      ldr fp, [sp, #0x14]
005f3098  dc c0 9d e5                                      ldr ip, [sp, #0xdc]
005f309c  00 00 5b e3                                      cmp fp, #0
005f30a0  04 c0 8d e5                                      str ip, [sp, #4]
005f30a4  04 00 00 0a                                      beq #0x5f30bc
005f30a8  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f30ac  00 10 6c e2                                      rsb r1, ip, #0
005f30b0  04 10 8d e5                                      str r1, [sp, #4]
005f30b4  01 30 40 e2                                      sub r3, r0, #1
005f30b8  9c 63 26 e0                                      mla r6, ip, r3, r6
005f30bc  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f30c0  00 00 52 e3                                      cmp r2, #0
005f30c4  06 90 a0 11                                      movne sb, r6
005f30c8  04 b0 a0 11                                      movne fp, r4
005f30cc  82 02 00 0a                                      beq #0x5f3adc
005f30d0  00 00 55 e3                                      cmp r5, #0
005f30d4  00 a0 a0 13                                      movne sl, #0
005f30d8  06 00 00 0a                                      beq #0x5f30f8
005f30dc  07 10 d4 e6                                      ldrb r1, [r4], r7
005f30e0  08 00 a0 e1                                      mov r0, r8
005f30e4  7c eb ff eb                                      bl #0x5ededc
005f30e8  0a 00 c6 e7                                      strb r0, [r6, sl]
005f30ec  01 a0 8a e2                                      add sl, sl, #1
005f30f0  0a 00 55 e1                                      cmp r5, sl
005f30f4  f8 ff ff 1a                                      bne #0x5f30dc
005f30f8  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
005f30fc  01 30 53 e2                                      subs r3, r3, #1
005f3100  e4 30 8d e5                                      str r3, [sp, #0xe4]
005f3104  74 02 00 0a                                      beq #0x5f3adc
005f3108  44 60 9d e5                                      ldr r6, [sp, #0x44]
005f310c  04 a0 9d e5                                      ldr sl, [sp, #4]
005f3110  06 40 8b e0                                      add r4, fp, r6
005f3114  0a 90 89 e0                                      add sb, sb, sl
005f3118  09 60 a0 e1                                      mov r6, sb
005f311c  04 b0 a0 e1                                      mov fp, r4
005f3120  ea ff ff ea                                      b #0x5f30d0
005f3124  08 a0 9d e5                                      ldr sl, [sp, #8]
005f3128  28 00 a0 e3                                      mov r0, #0x28
005f312c  90 03 01 e0                                      mul r1, r0, r3
005f3130  0a 20 97 e7                                      ldr r2, [r7, sl]
005f3134  04 b0 9d e5                                      ldr fp, [sp, #4]
005f3138  01 c0 82 e0                                      add ip, r2, r1
005f313c  90 0b 00 e0                                      mul r0, r0, fp
005f3140  1b c0 dc e5                                      ldrb ip, [ip, #0x1b]
005f3144  00 80 82 e0                                      add r8, r2, r0
005f3148  0c c0 8d e5                                      str ip, [sp, #0xc]
005f314c  1b c0 d8 e5                                      ldrb ip, [r8, #0x1b]
005f3150  0c 90 9d e5                                      ldr sb, [sp, #0xc]
005f3154  00 00 5c e3                                      cmp ip, #0
005f3158  10 c0 8d e5                                      str ip, [sp, #0x10]
005f315c  0c a0 a0 e1                                      mov sl, ip
005f3160  09 c0 a0 01                                      moveq ip, sb
005f3164  00 00 59 e3                                      cmp sb, #0
005f3168  94 00 00 1a                                      bne #0x5f33c0
005f316c  08 b0 9d e5                                      ldr fp, [sp, #8]
005f3170  28 10 a0 e3                                      mov r1, #0x28
005f3174  91 03 00 e0                                      mul r0, r1, r3
005f3178  0b 20 97 e7                                      ldr r2, [r7, fp]
005f317c  00 00 92 e7                                      ldr r0, [r2, r0]
005f3180  01 00 10 e3                                      tst r0, #1
005f3184  89 02 00 1a                                      bne #0x5f3bb0
005f3188  00 10 a0 e3                                      mov r1, #0
005f318c  0c 10 8d e5                                      str r1, [sp, #0xc]
005f3190  08 80 9d e5                                      ldr r8, [sp, #8]
005f3194  28 00 a0 e3                                      mov r0, #0x28
005f3198  04 90 9d e5                                      ldr sb, [sp, #4]
005f319c  08 20 97 e7                                      ldr r2, [r7, r8]
005f31a0  68 80 8d e2                                      add r8, sp, #0x68
005f31a4  08 10 a0 e1                                      mov r1, r8
005f31a8  90 23 23 e0                                      mla r3, r0, r3, r2
005f31ac  10 40 8d e5                                      str r4, [sp, #0x10]
005f31b0  90 29 20 e0                                      mla r0, r0, sb, r2
005f31b4  18 60 8d e5                                      str r6, [sp, #0x18]
005f31b8  00 20 a0 e3                                      mov r2, #0
005f31bc  03 90 a0 e1                                      mov sb, r3
005f31c0  05 b0 a0 e1                                      mov fp, r5
005f31c4  08 00 00 ea                                      b #0x5f31ec
005f31c8  05 c0 8c e0                                      add ip, ip, r5
005f31cc  04 20 82 e2                                      add r2, r2, #4
005f31d0  0c c0 64 e0                                      rsb ip, r4, ip
005f31d4  10 00 52 e3                                      cmp r2, #0x10
005f31d8  10 c0 c1 e5                                      strb ip, [r1, #0x10]
005f31dc  01 00 80 e2                                      add r0, r0, #1
005f31e0  01 10 81 e2                                      add r1, r1, #1
005f31e4  01 30 83 e2                                      add r3, r3, #1
005f31e8  14 00 00 0a                                      beq #0x5f3240
005f31ec  02 50 89 e0                                      add r5, sb, r2
005f31f0  18 c0 d0 e5                                      ldrb ip, [r0, #0x18]
005f31f4  18 40 d3 e5                                      ldrb r4, [r3, #0x18]
005f31f8  04 a0 95 e5                                      ldr sl, [r5, #4]
005f31fc  1c 60 d3 e5                                      ldrb r6, [r3, #0x1c]
005f3200  1c 50 d0 e5                                      ldrb r5, [r0, #0x1c]
005f3204  04 00 5c e1                                      cmp ip, r4
005f3208  02 a0 88 e7                                      str sl, [r8, r2]
005f320c  10 50 c1 e5                                      strb r5, [r1, #0x10]
005f3210  14 60 c1 e5                                      strb r6, [r1, #0x14]
005f3214  eb ff ff 8a                                      bhi #0x5f31c8
005f3218  8c 00 54 e1                                      cmp r4, ip, lsl #1
005f321c  06 40 84 d0                                      addle r4, r4, r6
005f3220  04 c0 6c d0                                      rsble ip, ip, r4
005f3224  04 20 82 e2                                      add r2, r2, #4
005f3228  14 c0 c1 d5                                      strble ip, [r1, #0x14]
005f322c  10 00 52 e3                                      cmp r2, #0x10
005f3230  01 00 80 e2                                      add r0, r0, #1
005f3234  01 10 81 e2                                      add r1, r1, #1
005f3238  01 30 83 e2                                      add r3, r3, #1
005f323c  ea ff ff 1a                                      bne #0x5f31ec
005f3240  08 a0 9d e5                                      ldr sl, [sp, #8]
005f3244  0b 50 a0 e1                                      mov r5, fp
005f3248  04 b0 9d e5                                      ldr fp, [sp, #4]
005f324c  0a 30 97 e7                                      ldr r3, [r7, sl]
005f3250  28 10 a0 e3                                      mov r1, #0x28
005f3254  10 40 9d e5                                      ldr r4, [sp, #0x10]
005f3258  18 60 9d e5                                      ldr r6, [sp, #0x18]
005f325c  91 3b 23 e0                                      mla r3, r1, fp, r3
005f3260  74 70 9d e5                                      ldr r7, [sp, #0x74]
005f3264  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005f3268  02 20 83 e0                                      add r2, r3, r2
005f326c  06 00 54 e1                                      cmp r4, r6
005f3270  07 80 0c e0                                      and r8, ip, r7
005f3274  05 a0 d2 e5                                      ldrb sl, [r2, #5]
005f3278  64 03 00 0a                                      beq #0x5f4010
005f327c  14 b0 9d e5                                      ldr fp, [sp, #0x14]
005f3280  dc c0 9d e5                                      ldr ip, [sp, #0xdc]
005f3284  00 00 5b e3                                      cmp fp, #0
005f3288  30 c0 8d e5                                      str ip, [sp, #0x30]
005f328c  04 00 00 0a                                      beq #0x5f32a4
005f3290  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f3294  00 10 6c e2                                      rsb r1, ip, #0
005f3298  30 10 8d e5                                      str r1, [sp, #0x30]
005f329c  01 30 40 e2                                      sub r3, r0, #1
005f32a0  9c 63 26 e0                                      mla r6, ip, r3, r6
005f32a4  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f32a8  00 00 52 e3                                      cmp r2, #0
005f32ac  0a 02 00 0a                                      beq #0x5f3adc
005f32b0  68 30 9d e5                                      ldr r3, [sp, #0x68]
005f32b4  79 c0 dd e5                                      ldrb ip, [sp, #0x79]
005f32b8  7d 00 dd e5                                      ldrb r0, [sp, #0x7d]
005f32bc  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
005f32c0  28 30 8d e5                                      str r3, [sp, #0x28]
005f32c4  20 c0 8d e5                                      str ip, [sp, #0x20]
005f32c8  14 00 8d e5                                      str r0, [sp, #0x14]
005f32cc  18 10 8d e5                                      str r1, [sp, #0x18]
005f32d0  7a 20 dd e5                                      ldrb r2, [sp, #0x7a]
005f32d4  7f 10 dd e5                                      ldrb r1, [sp, #0x7f]
005f32d8  7e 30 dd e5                                      ldrb r3, [sp, #0x7e]
005f32dc  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005f32e0  7b 00 dd e5                                      ldrb r0, [sp, #0x7b]
005f32e4  78 b0 dd e5                                      ldrb fp, [sp, #0x78]
005f32e8  7c 90 dd e5                                      ldrb sb, [sp, #0x7c]
005f32ec  04 10 8d e5                                      str r1, [sp, #4]
005f32f0  1c 20 8d e5                                      str r2, [sp, #0x1c]
005f32f4  10 30 8d e5                                      str r3, [sp, #0x10]
005f32f8  0c c0 8d e5                                      str ip, [sp, #0xc]
005f32fc  08 00 8d e5                                      str r0, [sp, #8]
005f3300  04 10 a0 e1                                      mov r1, r4
005f3304  2c 40 8d e5                                      str r4, [sp, #0x2c]
005f3308  00 00 55 e3                                      cmp r5, #0
005f330c  00 20 a0 13                                      movne r2, #0
005f3310  24 60 8d 15                                      strne r6, [sp, #0x24]
005f3314  34 50 8d 15                                      strne r5, [sp, #0x34]
005f3318  1d 00 00 0a                                      beq #0x5f3394
005f331c  0a 30 d1 e6                                      ldrb r3, [r1], sl
005f3320  20 40 9d e5                                      ldr r4, [sp, #0x20]
005f3324  28 50 9d e5                                      ldr r5, [sp, #0x28]
005f3328  18 60 9d e5                                      ldr r6, [sp, #0x18]
005f332c  33 04 a0 e1                                      lsr r0, r3, r4
005f3330  14 40 9d e5                                      ldr r4, [sp, #0x14]
005f3334  33 cb a0 e1                                      lsr ip, r3, fp
005f3338  10 04 06 e0                                      and r0, r6, r0, lsl r4
005f333c  1c c9 05 e0                                      and ip, r5, ip, lsl sb
005f3340  08 60 9d e5                                      ldr r6, [sp, #8]
005f3344  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
005f3348  00 00 8c e1                                      orr r0, ip, r0
005f334c  08 00 80 e1                                      orr r0, r0, r8
005f3350  33 45 a0 e1                                      lsr r4, r3, r5
005f3354  0c 50 9d e5                                      ldr r5, [sp, #0xc]
005f3358  33 36 a0 e1                                      lsr r3, r3, r6
005f335c  10 60 9d e5                                      ldr r6, [sp, #0x10]
005f3360  14 46 05 e0                                      and r4, r5, r4, lsl r6
005f3364  04 50 9d e5                                      ldr r5, [sp, #4]
005f3368  24 60 9d e5                                      ldr r6, [sp, #0x24]
005f336c  04 40 80 e1                                      orr r4, r0, r4
005f3370  13 35 07 e0                                      and r3, r7, r3, lsl r5
005f3374  03 30 84 e1                                      orr r3, r4, r3
005f3378  02 30 c6 e7                                      strb r3, [r6, r2]
005f337c  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005f3380  01 20 82 e2                                      add r2, r2, #1
005f3384  02 00 5c e1                                      cmp ip, r2
005f3388  e3 ff ff 1a                                      bne #0x5f331c
005f338c  24 60 9d e5                                      ldr r6, [sp, #0x24]
005f3390  0c 50 a0 e1                                      mov r5, ip
005f3394  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f3398  01 00 50 e2                                      subs r0, r0, #1
005f339c  e4 00 8d e5                                      str r0, [sp, #0xe4]
005f33a0  cd 01 00 0a                                      beq #0x5f3adc
005f33a4  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005f33a8  44 20 9d e5                                      ldr r2, [sp, #0x44]
005f33ac  30 30 9d e5                                      ldr r3, [sp, #0x30]
005f33b0  02 10 81 e0                                      add r1, r1, r2
005f33b4  2c 10 8d e5                                      str r1, [sp, #0x2c]
005f33b8  03 60 86 e0                                      add r6, r6, r3
005f33bc  d1 ff ff ea                                      b #0x5f3308
005f33c0  09 00 5c e1                                      cmp ip, sb
005f33c4  68 ff ff 2a                                      bhs #0x5f316c
005f33c8  0c 90 9d e5                                      ldr sb, [sp, #0xc]
005f33cc  89 00 5c e1                                      cmp ip, sb, lsl #1
005f33d0  50 00 00 aa                                      bge #0x5f3518
005f33d4  04 10 9d e5                                      ldr r1, [sp, #4]
005f33d8  03 20 a0 e1                                      mov r2, r3
005f33dc  68 00 8d e2                                      add r0, sp, #0x68
005f33e0  80 ec ff eb                                      bl #0x5ee5e8
005f33e4  06 00 54 e1                                      cmp r4, r6
005f33e8  15 b0 d8 e5                                      ldrb fp, [r8, #0x15]
005f33ec  61 02 00 0a                                      beq #0x5f3d78
005f33f0  14 70 9d e5                                      ldr r7, [sp, #0x14]
005f33f4  dc 80 9d e5                                      ldr r8, [sp, #0xdc]
005f33f8  00 00 57 e3                                      cmp r7, #0
005f33fc  10 80 8d e5                                      str r8, [sp, #0x10]
005f3400  04 00 00 0a                                      beq #0x5f3418
005f3404  e4 90 9d e5                                      ldr sb, [sp, #0xe4]
005f3408  00 a0 68 e2                                      rsb sl, r8, #0
005f340c  10 a0 8d e5                                      str sl, [sp, #0x10]
005f3410  01 30 49 e2                                      sub r3, sb, #1
005f3414  98 63 26 e0                                      mla r6, r8, r3, r6
005f3418  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f341c  00 00 5c e3                                      cmp ip, #0
005f3420  ad 01 00 0a                                      beq #0x5f3adc
005f3424  04 10 a0 e1                                      mov r1, r4
005f3428  0c 40 8d e5                                      str r4, [sp, #0xc]
005f342c  04 60 8d e5                                      str r6, [sp, #4]
005f3430  08 50 8d e5                                      str r5, [sp, #8]
005f3434  08 a0 9d e5                                      ldr sl, [sp, #8]
005f3438  00 00 5a e3                                      cmp sl, #0
005f343c  00 20 a0 13                                      movne r2, #0
005f3440  26 00 00 0a                                      beq #0x5f34e0
005f3444  0b 30 d1 e6                                      ldrb r3, [r1], fp
005f3448  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
005f344c  7b c0 dd e5                                      ldrb ip, [sp, #0x7b]
005f3450  78 a0 dd e5                                      ldrb sl, [sp, #0x78]
005f3454  00 00 03 e0                                      and r0, r3, r0
005f3458  7c 80 dd e5                                      ldrb r8, [sp, #0x7c]
005f345c  30 0c a0 e1                                      lsr r0, r0, ip
005f3460  68 70 9d e5                                      ldr r7, [sp, #0x68]
005f3464  88 c0 9d e5                                      ldr ip, [sp, #0x88]
005f3468  79 60 dd e5                                      ldrb r6, [sp, #0x79]
005f346c  33 aa a0 e1                                      lsr sl, r3, sl
005f3470  7a 40 dd e5                                      ldrb r4, [sp, #0x7a]
005f3474  80 00 a0 e1                                      lsl r0, r0, #1
005f3478  b0 c0 9c e1                                      ldrh ip, [ip, r0]
005f347c  7d 50 dd e5                                      ldrb r5, [sp, #0x7d]
005f3480  84 00 dd e5                                      ldrb r0, [sp, #0x84]
005f3484  1a 78 07 e0                                      and r7, r7, sl, lsl r8
005f3488  6c 80 9d e5                                      ldr r8, [sp, #0x6c]
005f348c  33 66 a0 e1                                      lsr r6, r3, r6
005f3490  7e 90 dd e5                                      ldrb sb, [sp, #0x7e]
005f3494  33 34 a0 e1                                      lsr r3, r3, r4
005f3498  70 40 9d e5                                      ldr r4, [sp, #0x70]
005f349c  16 55 08 e0                                      and r5, r8, r6, lsl r5
005f34a0  5c 00 a0 e1                                      asr r0, ip, r0
005f34a4  7f 60 dd e5                                      ldrb r6, [sp, #0x7f]
005f34a8  74 c0 9d e5                                      ldr ip, [sp, #0x74]
005f34ac  13 39 04 e0                                      and r3, r4, r3, lsl sb
005f34b0  10 06 0c e0                                      and r0, ip, r0, lsl r6
005f34b4  80 c0 9d e5                                      ldr ip, [sp, #0x80]
005f34b8  05 70 87 e1                                      orr r7, r7, r5
005f34bc  0c 70 87 e1                                      orr r7, r7, ip
005f34c0  03 30 87 e1                                      orr r3, r7, r3
005f34c4  00 00 83 e1                                      orr r0, r3, r0
005f34c8  04 30 9d e5                                      ldr r3, [sp, #4]
005f34cc  02 00 c3 e7                                      strb r0, [r3, r2]
005f34d0  08 40 9d e5                                      ldr r4, [sp, #8]
005f34d4  01 20 82 e2                                      add r2, r2, #1
005f34d8  02 00 54 e1                                      cmp r4, r2
005f34dc  d8 ff ff 1a                                      bne #0x5f3444
005f34e0  e4 50 9d e5                                      ldr r5, [sp, #0xe4]
005f34e4  01 50 55 e2                                      subs r5, r5, #1
005f34e8  e4 50 8d e5                                      str r5, [sp, #0xe4]
005f34ec  7a 01 00 0a                                      beq #0x5f3adc
005f34f0  0c 60 9d e5                                      ldr r6, [sp, #0xc]
005f34f4  04 80 9d e5                                      ldr r8, [sp, #4]
005f34f8  44 70 9d e5                                      ldr r7, [sp, #0x44]
005f34fc  10 90 9d e5                                      ldr sb, [sp, #0x10]
005f3500  07 60 86 e0                                      add r6, r6, r7
005f3504  09 80 88 e0                                      add r8, r8, sb
005f3508  0c 60 8d e5                                      str r6, [sp, #0xc]
005f350c  04 80 8d e5                                      str r8, [sp, #4]
005f3510  06 10 a0 e1                                      mov r1, r6
005f3514  c6 ff ff ea                                      b #0x5f3434
005f3518  01 10 92 e7                                      ldr r1, [r2, r1]
005f351c  01 00 11 e3                                      tst r1, #1
005f3520  9c 01 00 1a                                      bne #0x5f3b98
005f3524  00 c0 a0 e3                                      mov ip, #0
005f3528  18 c0 8d e5                                      str ip, [sp, #0x18]
005f352c  08 00 9d e5                                      ldr r0, [sp, #8]
005f3530  28 c0 a0 e3                                      mov ip, #0x28
005f3534  04 10 9d e5                                      ldr r1, [sp, #4]
005f3538  00 20 97 e7                                      ldr r2, [r7, r0]
005f353c  68 80 8d e2                                      add r8, sp, #0x68
005f3540  20 40 8d e5                                      str r4, [sp, #0x20]
005f3544  9c 23 20 e0                                      mla r0, ip, r3, r2
005f3548  28 30 8d e5                                      str r3, [sp, #0x28]
005f354c  9c 21 2c e0                                      mla ip, ip, r1, r2
005f3550  00 90 a0 e1                                      mov sb, r0
005f3554  08 10 a0 e1                                      mov r1, r8
005f3558  00 20 a0 e3                                      mov r2, #0
005f355c  2c 60 8d e5                                      str r6, [sp, #0x2c]
005f3560  05 b0 a0 e1                                      mov fp, r5
005f3564  02 50 89 e0                                      add r5, sb, r2
005f3568  18 30 dc e5                                      ldrb r3, [ip, #0x18]
005f356c  18 40 d0 e5                                      ldrb r4, [r0, #0x18]
005f3570  04 a0 95 e5                                      ldr sl, [r5, #4]
005f3574  1c 60 d0 e5                                      ldrb r6, [r0, #0x1c]
005f3578  1c 50 dc e5                                      ldrb r5, [ip, #0x1c]
005f357c  04 00 53 e1                                      cmp r3, r4
005f3580  02 a0 88 e7                                      str sl, [r8, r2]
005f3584  10 50 c1 e5                                      strb r5, [r1, #0x10]
005f3588  14 60 c1 e5                                      strb r6, [r1, #0x14]
005f358c  95 01 00 9a                                      bls #0x5f3be8
005f3590  05 30 83 e0                                      add r3, r3, r5
005f3594  03 30 64 e0                                      rsb r3, r4, r3
005f3598  10 30 c1 e5                                      strb r3, [r1, #0x10]
005f359c  04 20 82 e2                                      add r2, r2, #4
005f35a0  10 00 52 e3                                      cmp r2, #0x10
005f35a4  01 c0 8c e2                                      add ip, ip, #1
005f35a8  01 10 81 e2                                      add r1, r1, #1
005f35ac  01 00 80 e2                                      add r0, r0, #1
005f35b0  eb ff ff 1a                                      bne #0x5f3564
005f35b4  08 80 9d e5                                      ldr r8, [sp, #8]
005f35b8  04 90 9d e5                                      ldr sb, [sp, #4]
005f35bc  28 30 9d e5                                      ldr r3, [sp, #0x28]
005f35c0  08 10 97 e7                                      ldr r1, [r7, r8]
005f35c4  28 00 a0 e3                                      mov r0, #0x28
005f35c8  0c a0 9d e5                                      ldr sl, [sp, #0xc]
005f35cc  90 19 2c e0                                      mla ip, r0, sb, r1
005f35d0  90 13 20 e0                                      mla r0, r0, r3, r1
005f35d4  10 10 9d e5                                      ldr r1, [sp, #0x10]
005f35d8  02 70 9c e7                                      ldr r7, [ip, r2]
005f35dc  0b 50 a0 e1                                      mov r5, fp
005f35e0  7b b0 dd e5                                      ldrb fp, [sp, #0x7b]
005f35e4  81 30 6a e0                                      rsb r3, sl, r1, lsl #1
005f35e8  73 30 ef e6                                      uxtb r3, r3
005f35ec  0b 10 83 e0                                      add r1, r3, fp
005f35f0  17 33 07 e0                                      and r3, r7, r7, lsl r3
005f35f4  74 80 9d e5                                      ldr r8, [sp, #0x74]
005f35f8  20 40 9d e5                                      ldr r4, [sp, #0x20]
005f35fc  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
005f3600  18 90 9d e5                                      ldr sb, [sp, #0x18]
005f3604  1f 00 d0 e5                                      ldrb r0, [r0, #0x1f]
005f3608  02 20 8c e0                                      add r2, ip, r2
005f360c  08 90 09 e0                                      and sb, sb, r8
005f3610  71 10 ef e6                                      uxtb r1, r1
005f3614  06 00 54 e1                                      cmp r4, r6
005f3618  40 80 8d e5                                      str r8, [sp, #0x40]
005f361c  04 90 8d e5                                      str sb, [sp, #4]
005f3620  0c 10 8d e5                                      str r1, [sp, #0xc]
005f3624  10 00 8d e5                                      str r0, [sp, #0x10]
005f3628  05 80 d2 e5                                      ldrb r8, [r2, #5]
005f362c  08 30 8d e5                                      str r3, [sp, #8]
005f3630  71 01 00 0a                                      beq #0x5f3bfc
005f3634  14 a0 9d e5                                      ldr sl, [sp, #0x14]
005f3638  dc c0 9d e5                                      ldr ip, [sp, #0xdc]
005f363c  00 00 5a e3                                      cmp sl, #0
005f3640  48 c0 8d e5                                      str ip, [sp, #0x48]
005f3644  04 00 00 0a                                      beq #0x5f365c
005f3648  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f364c  00 10 6c e2                                      rsb r1, ip, #0
005f3650  48 10 8d e5                                      str r1, [sp, #0x48]
005f3654  01 30 40 e2                                      sub r3, r0, #1
005f3658  9c 63 26 e0                                      mla r6, ip, r3, r6
005f365c  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f3660  00 00 52 e3                                      cmp r2, #0
005f3664  1c 01 00 0a                                      beq #0x5f3adc
005f3668  78 30 dd e5                                      ldrb r3, [sp, #0x78]
005f366c  7c 90 dd e5                                      ldrb sb, [sp, #0x7c]
005f3670  68 a0 9d e5                                      ldr sl, [sp, #0x68]
005f3674  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
005f3678  3c 30 8d e5                                      str r3, [sp, #0x3c]
005f367c  38 90 8d e5                                      str sb, [sp, #0x38]
005f3680  34 a0 8d e5                                      str sl, [sp, #0x34]
005f3684  70 90 9d e5                                      ldr sb, [sp, #0x70]
005f3688  79 c0 dd e5                                      ldrb ip, [sp, #0x79]
005f368c  7d 00 dd e5                                      ldrb r0, [sp, #0x7d]
005f3690  7a 20 dd e5                                      ldrb r2, [sp, #0x7a]
005f3694  7e 30 dd e5                                      ldrb r3, [sp, #0x7e]
005f3698  7f a0 dd e5                                      ldrb sl, [sp, #0x7f]
005f369c  28 10 8d e5                                      str r1, [sp, #0x28]
005f36a0  18 90 8d e5                                      str sb, [sp, #0x18]
005f36a4  30 c0 8d e5                                      str ip, [sp, #0x30]
005f36a8  40 90 9d e5                                      ldr sb, [sp, #0x40]
005f36ac  2c 00 8d e5                                      str r0, [sp, #0x2c]
005f36b0  20 20 8d e5                                      str r2, [sp, #0x20]
005f36b4  14 30 8d e5                                      str r3, [sp, #0x14]
005f36b8  1c a0 8d e5                                      str sl, [sp, #0x1c]
005f36bc  04 10 a0 e1                                      mov r1, r4
005f36c0  40 40 8d e5                                      str r4, [sp, #0x40]
005f36c4  00 00 55 e3                                      cmp r5, #0
005f36c8  2c 00 00 0a                                      beq #0x5f3780
005f36cc  00 20 a0 e3                                      mov r2, #0
005f36d0  07 a0 a0 e1                                      mov sl, r7
005f36d4  24 60 8d e5                                      str r6, [sp, #0x24]
005f36d8  4c 50 8d e5                                      str r5, [sp, #0x4c]
005f36dc  08 30 d1 e6                                      ldrb r3, [r1], r8
005f36e0  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
005f36e4  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005f36e8  0a 40 03 e0                                      and r4, r3, sl
005f36ec  34 4b a0 e1                                      lsr r4, r4, fp
005f36f0  14 4c a0 e1                                      lsl r4, r4, ip
005f36f4  30 50 9d e5                                      ldr r5, [sp, #0x30]
005f36f8  08 60 9d e5                                      ldr r6, [sp, #8]
005f36fc  33 c0 a0 e1                                      lsr ip, r3, r0
005f3700  06 70 03 e0                                      and r7, r3, r6
005f3704  33 05 a0 e1                                      lsr r0, r3, r5
005f3708  38 60 9d e5                                      ldr r6, [sp, #0x38]
005f370c  34 50 9d e5                                      ldr r5, [sp, #0x34]
005f3710  1c c6 05 e0                                      and ip, r5, ip, lsl r6
005f3714  28 50 9d e5                                      ldr r5, [sp, #0x28]
005f3718  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
005f371c  10 06 05 e0                                      and r0, r5, r0, lsl r6
005f3720  0c 50 9d e5                                      ldr r5, [sp, #0xc]
005f3724  20 60 9d e5                                      ldr r6, [sp, #0x20]
005f3728  00 00 8c e1                                      orr r0, ip, r0
005f372c  37 75 a0 e1                                      lsr r7, r7, r5
005f3730  10 50 9d e5                                      ldr r5, [sp, #0x10]
005f3734  33 36 a0 e1                                      lsr r3, r3, r6
005f3738  17 45 84 e1                                      orr r4, r4, r7, lsl r5
005f373c  18 60 9d e5                                      ldr r6, [sp, #0x18]
005f3740  14 70 9d e5                                      ldr r7, [sp, #0x14]
005f3744  04 c0 9d e5                                      ldr ip, [sp, #4]
005f3748  09 40 04 e0                                      and r4, r4, sb
005f374c  13 37 06 e0                                      and r3, r6, r3, lsl r7
005f3750  0c 00 80 e1                                      orr r0, r0, ip
005f3754  03 30 80 e1                                      orr r3, r0, r3
005f3758  24 00 9d e5                                      ldr r0, [sp, #0x24]
005f375c  04 30 83 e1                                      orr r3, r3, r4
005f3760  02 30 c0 e7                                      strb r3, [r0, r2]
005f3764  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005f3768  01 20 82 e2                                      add r2, r2, #1
005f376c  02 00 53 e1                                      cmp r3, r2
005f3770  d9 ff ff 1a                                      bne #0x5f36dc
005f3774  24 60 9d e5                                      ldr r6, [sp, #0x24]
005f3778  0a 70 a0 e1                                      mov r7, sl
005f377c  03 50 a0 e1                                      mov r5, r3
005f3780  e4 40 9d e5                                      ldr r4, [sp, #0xe4]
005f3784  01 40 54 e2                                      subs r4, r4, #1
005f3788  e4 40 8d e5                                      str r4, [sp, #0xe4]
005f378c  d2 00 00 0a                                      beq #0x5f3adc
005f3790  40 a0 9d e5                                      ldr sl, [sp, #0x40]
005f3794  44 c0 9d e5                                      ldr ip, [sp, #0x44]
005f3798  48 00 9d e5                                      ldr r0, [sp, #0x48]
005f379c  0c a0 8a e0                                      add sl, sl, ip
005f37a0  40 a0 8d e5                                      str sl, [sp, #0x40]
005f37a4  00 60 86 e0                                      add r6, r6, r0
005f37a8  0a 10 a0 e1                                      mov r1, sl
005f37ac  c4 ff ff ea                                      b #0x5f36c4
005f37b0  03 20 a0 e1                                      mov r2, r3
005f37b4  68 00 8d e2                                      add r0, sp, #0x68
005f37b8  04 10 9d e5                                      ldr r1, [sp, #4]
005f37bc  65 ec ff eb                                      bl #0x5ee958
005f37c0  08 80 9d e5                                      ldr r8, [sp, #8]
005f37c4  04 90 9d e5                                      ldr sb, [sp, #4]
005f37c8  28 20 a0 e3                                      mov r2, #0x28
005f37cc  08 30 97 e7                                      ldr r3, [r7, r8]
005f37d0  06 00 54 e1                                      cmp r4, r6
005f37d4  92 39 23 e0                                      mla r3, r2, sb, r3
005f37d8  15 30 d3 e5                                      ldrb r3, [r3, #0x15]
005f37dc  18 30 8d e5                                      str r3, [sp, #0x18]
005f37e0  a3 03 00 0a                                      beq #0x5f4674
005f37e4  14 70 9d e5                                      ldr r7, [sp, #0x14]
005f37e8  dc 80 9d e5                                      ldr r8, [sp, #0xdc]
005f37ec  00 00 57 e3                                      cmp r7, #0
005f37f0  20 80 8d e5                                      str r8, [sp, #0x20]
005f37f4  f5 00 00 1a                                      bne #0x5f3bd0
005f37f8  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f37fc  00 00 5b e3                                      cmp fp, #0
005f3800  b5 00 00 0a                                      beq #0x5f3adc
005f3804  1c 60 8d e5                                      str r6, [sp, #0x1c]
005f3808  14 40 8d e5                                      str r4, [sp, #0x14]
005f380c  10 60 8d e5                                      str r6, [sp, #0x10]
005f3810  0c 50 8d e5                                      str r5, [sp, #0xc]
005f3814  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005f3818  00 00 53 e3                                      cmp r3, #0
005f381c  00 30 a0 13                                      movne r3, #0
005f3820  3f 00 00 0a                                      beq #0x5f3924
005f3824  18 00 9d e5                                      ldr r0, [sp, #0x18]
005f3828  84 50 9d e5                                      ldr r5, [sp, #0x84]
005f382c  78 20 dd e5                                      ldrb r2, [sp, #0x78]
005f3830  00 c0 d4 e6                                      ldrb ip, [r4], r0
005f3834  79 10 dd e5                                      ldrb r1, [sp, #0x79]
005f3838  8c b0 9d e5                                      ldr fp, [sp, #0x8c]
005f383c  05 50 0c e0                                      and r5, ip, r5
005f3840  35 52 a0 e1                                      lsr r5, r5, r2
005f3844  88 20 9d e5                                      ldr r2, [sp, #0x88]
005f3848  7a 70 dd e5                                      ldrb r7, [sp, #0x7a]
005f384c  7d 60 dd e5                                      ldrb r6, [sp, #0x7d]
005f3850  02 20 0c e0                                      and r2, ip, r2
005f3854  32 21 a0 e1                                      lsr r2, r2, r1
005f3858  0b b0 0c e0                                      and fp, ip, fp
005f385c  7e 00 dd e5                                      ldrb r0, [sp, #0x7e]
005f3860  7c 80 dd e5                                      ldrb r8, [sp, #0x7c]
005f3864  3b 77 a0 e1                                      lsr r7, fp, r7
005f3868  12 66 a0 e1                                      lsl r6, r2, r6
005f386c  17 00 a0 e1                                      lsl r0, r7, r0
005f3870  15 58 a0 e1                                      lsl r5, r5, r8
005f3874  90 70 9d e5                                      ldr r7, [sp, #0x90]
005f3878  9c 20 dd e5                                      ldrb r2, [sp, #0x9c]
005f387c  98 80 9d e5                                      ldr r8, [sp, #0x98]
005f3880  7b 90 dd e5                                      ldrb sb, [sp, #0x7b]
005f3884  94 10 9d e5                                      ldr r1, [sp, #0x94]
005f3888  04 60 8d e5                                      str r6, [sp, #4]
005f388c  07 70 0c e0                                      and r7, ip, r7
005f3890  9f 60 dd e5                                      ldrb r6, [sp, #0x9f]
005f3894  9d b0 dd e5                                      ldrb fp, [sp, #0x9d]
005f3898  37 72 a0 e1                                      lsr r7, r7, r2
005f389c  08 00 8d e5                                      str r0, [sp, #8]
005f38a0  7f a0 dd e5                                      ldrb sl, [sp, #0x7f]
005f38a4  3c 99 a0 e1                                      lsr sb, ip, sb
005f38a8  9e 00 dd e5                                      ldrb r0, [sp, #0x9e]
005f38ac  01 10 0c e0                                      and r1, ip, r1
005f38b0  08 c0 0c e0                                      and ip, ip, r8
005f38b4  74 80 9d e5                                      ldr r8, [sp, #0x74]
005f38b8  17 56 85 e1                                      orr r5, r5, r7, lsl r6
005f38bc  a0 20 dd e5                                      ldrb r2, [sp, #0xa0]
005f38c0  04 60 9d e5                                      ldr r6, [sp, #4]
005f38c4  31 1b a0 e1                                      lsr r1, r1, fp
005f38c8  08 70 9d e5                                      ldr r7, [sp, #8]
005f38cc  a1 b0 dd e5                                      ldrb fp, [sp, #0xa1]
005f38d0  19 8a 08 e0                                      and r8, r8, sb, lsl sl
005f38d4  3c 00 a0 e1                                      lsr r0, ip, r0
005f38d8  11 22 86 e1                                      orr r2, r6, r1, lsl r2
005f38dc  10 0b 87 e1                                      orr r0, r7, r0, lsl fp
005f38e0  80 a0 9d e5                                      ldr sl, [sp, #0x80]
005f38e4  68 60 9d e5                                      ldr r6, [sp, #0x68]
005f38e8  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
005f38ec  70 b0 9d e5                                      ldr fp, [sp, #0x70]
005f38f0  0a 80 88 e1                                      orr r8, r8, sl
005f38f4  06 50 05 e0                                      and r5, r5, r6
005f38f8  05 80 88 e1                                      orr r8, r8, r5
005f38fc  01 20 02 e0                                      and r2, r2, r1
005f3900  10 90 9d e5                                      ldr sb, [sp, #0x10]
005f3904  02 80 88 e1                                      orr r8, r8, r2
005f3908  0b 00 00 e0                                      and r0, r0, fp
005f390c  00 80 88 e1                                      orr r8, r8, r0
005f3910  03 80 c9 e7                                      strb r8, [sb, r3]
005f3914  0c a0 9d e5                                      ldr sl, [sp, #0xc]
005f3918  01 30 83 e2                                      add r3, r3, #1
005f391c  03 00 5a e1                                      cmp sl, r3
005f3920  bf ff ff 1a                                      bne #0x5f3824
005f3924  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f3928  01 b0 5b e2                                      subs fp, fp, #1
005f392c  e4 b0 8d e5                                      str fp, [sp, #0xe4]
005f3930  69 00 00 0a                                      beq #0x5f3adc
005f3934  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005f3938  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005f393c  44 00 9d e5                                      ldr r0, [sp, #0x44]
005f3940  20 20 9d e5                                      ldr r2, [sp, #0x20]
005f3944  00 40 8c e0                                      add r4, ip, r0
005f3948  02 10 81 e0                                      add r1, r1, r2
005f394c  1c 10 8d e5                                      str r1, [sp, #0x1c]
005f3950  10 10 8d e5                                      str r1, [sp, #0x10]
005f3954  14 40 8d e5                                      str r4, [sp, #0x14]
005f3958  ad ff ff ea                                      b #0x5f3814
005f395c  04 10 9d e5                                      ldr r1, [sp, #4]
005f3960  03 20 a0 e1                                      mov r2, r3
005f3964  68 00 8d e2                                      add r0, sp, #0x68
005f3968  88 eb ff eb                                      bl #0x5ee790
005f396c  15 a0 da e5                                      ldrb sl, [sl, #0x15]
005f3970  06 00 54 e1                                      cmp r4, r6
005f3974  4c a0 8d e5                                      str sl, [sp, #0x4c]
005f3978  4a 01 00 0a                                      beq #0x5f3ea8
005f397c  14 00 9d e5                                      ldr r0, [sp, #0x14]
005f3980  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
005f3984  00 00 50 e3                                      cmp r0, #0
005f3988  18 10 8d e5                                      str r1, [sp, #0x18]
005f398c  04 00 00 0a                                      beq #0x5f39a4
005f3990  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f3994  01 30 42 e2                                      sub r3, r2, #1
005f3998  91 63 26 e0                                      mla r6, r1, r3, r6
005f399c  00 30 61 e2                                      rsb r3, r1, #0
005f39a0  18 30 8d e5                                      str r3, [sp, #0x18]
005f39a4  e4 70 9d e5                                      ldr r7, [sp, #0xe4]
005f39a8  00 00 57 e3                                      cmp r7, #0
005f39ac  4a 00 00 0a                                      beq #0x5f3adc
005f39b0  4c b0 9d e5                                      ldr fp, [sp, #0x4c]
005f39b4  0c 60 8d e5                                      str r6, [sp, #0xc]
005f39b8  10 40 8d e5                                      str r4, [sp, #0x10]
005f39bc  60 00 8d e9                                      stmib sp, {r5, r6}
005f39c0  04 30 9d e5                                      ldr r3, [sp, #4]
005f39c4  00 00 53 e3                                      cmp r3, #0
005f39c8  00 30 a0 13                                      movne r3, #0
005f39cc  34 00 00 0a                                      beq #0x5f3aa4
005f39d0  0b 20 d4 e6                                      ldrb r2, [r4], fp
005f39d4  90 c0 9d e5                                      ldr ip, [sp, #0x90]
005f39d8  78 00 dd e5                                      ldrb r0, [sp, #0x78]
005f39dc  79 10 dd e5                                      ldrb r1, [sp, #0x79]
005f39e0  0c c0 02 e0                                      and ip, r2, ip
005f39e4  3c c0 a0 e1                                      lsr ip, ip, r0
005f39e8  94 00 9d e5                                      ldr r0, [sp, #0x94]
005f39ec  7a 50 dd e5                                      ldrb r5, [sp, #0x7a]
005f39f0  8c c0 a0 e1                                      lsl ip, ip, #1
005f39f4  00 00 02 e0                                      and r0, r2, r0
005f39f8  30 01 a0 e1                                      lsr r0, r0, r1
005f39fc  98 10 9d e5                                      ldr r1, [sp, #0x98]
005f3a00  80 00 a0 e1                                      lsl r0, r0, #1
005f3a04  7b a0 dd e5                                      ldrb sl, [sp, #0x7b]
005f3a08  01 10 02 e0                                      and r1, r2, r1
005f3a0c  31 15 a0 e1                                      lsr r1, r1, r5
005f3a10  84 50 9d e5                                      ldr r5, [sp, #0x84]
005f3a14  81 10 a0 e1                                      lsl r1, r1, #1
005f3a18  7f 80 dd e5                                      ldrb r8, [sp, #0x7f]
005f3a1c  bc 90 95 e1                                      ldrh sb, [r5, ip]
005f3a20  88 50 9d e5                                      ldr r5, [sp, #0x88]
005f3a24  9c c0 dd e5                                      ldrb ip, [sp, #0x9c]
005f3a28  32 aa a0 e1                                      lsr sl, r2, sl
005f3a2c  b0 60 95 e1                                      ldrh r6, [r5, r0]
005f3a30  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
005f3a34  9d 50 dd e5                                      ldrb r5, [sp, #0x9d]
005f3a38  9e 20 dd e5                                      ldrb r2, [sp, #0x9e]
005f3a3c  b1 10 90 e1                                      ldrh r1, [r0, r1]
005f3a40  56 55 a0 e1                                      asr r5, r6, r5
005f3a44  7c 00 dd e5                                      ldrb r0, [sp, #0x7c]
005f3a48  68 60 9d e5                                      ldr r6, [sp, #0x68]
005f3a4c  59 cc a0 e1                                      asr ip, sb, ip
005f3a50  74 70 9d e5                                      ldr r7, [sp, #0x74]
005f3a54  7d 90 dd e5                                      ldrb sb, [sp, #0x7d]
005f3a58  1c 00 06 e0                                      and r0, r6, ip, lsl r0
005f3a5c  6c 60 9d e5                                      ldr r6, [sp, #0x6c]
005f3a60  1a 78 07 e0                                      and r7, r7, sl, lsl r8
005f3a64  51 22 a0 e1                                      asr r2, r1, r2
005f3a68  7e 80 dd e5                                      ldrb r8, [sp, #0x7e]
005f3a6c  70 10 9d e5                                      ldr r1, [sp, #0x70]
005f3a70  15 59 06 e0                                      and r5, r6, r5, lsl sb
005f3a74  12 28 01 e0                                      and r2, r1, r2, lsl r8
005f3a78  80 80 9d e5                                      ldr r8, [sp, #0x80]
005f3a7c  08 70 87 e1                                      orr r7, r7, r8
005f3a80  00 00 87 e1                                      orr r0, r7, r0
005f3a84  08 80 9d e5                                      ldr r8, [sp, #8]
005f3a88  05 50 80 e1                                      orr r5, r0, r5
005f3a8c  02 20 85 e1                                      orr r2, r5, r2
005f3a90  03 20 c8 e7                                      strb r2, [r8, r3]
005f3a94  04 90 9d e5                                      ldr sb, [sp, #4]
005f3a98  01 30 83 e2                                      add r3, r3, #1
005f3a9c  03 00 59 e1                                      cmp sb, r3
005f3aa0  ca ff ff 1a                                      bne #0x5f39d0
005f3aa4  e4 a0 9d e5                                      ldr sl, [sp, #0xe4]
005f3aa8  01 a0 5a e2                                      subs sl, sl, #1
005f3aac  e4 a0 8d e5                                      str sl, [sp, #0xe4]
005f3ab0  09 00 00 0a                                      beq #0x5f3adc
005f3ab4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005f3ab8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005f3abc  44 00 9d e5                                      ldr r0, [sp, #0x44]
005f3ac0  18 20 9d e5                                      ldr r2, [sp, #0x18]
005f3ac4  00 40 8c e0                                      add r4, ip, r0
005f3ac8  02 10 81 e0                                      add r1, r1, r2
005f3acc  0c 10 8d e5                                      str r1, [sp, #0xc]
005f3ad0  08 10 8d e5                                      str r1, [sp, #8]
005f3ad4  10 40 8d e5                                      str r4, [sp, #0x10]
005f3ad8  b8 ff ff ea                                      b #0x5f39c0
005f3adc  01 00 a0 e3                                      mov r0, #1
005f3ae0  b4 d0 8d e2                                      add sp, sp, #0xb4
005f3ae4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005f3ae8  68 80 8d e2                                      add r8, sp, #0x68
005f3aec  04 10 9d e5                                      ldr r1, [sp, #4]
005f3af0  03 20 a0 e1                                      mov r2, r3
005f3af4  08 00 a0 e1                                      mov r0, r8
005f3af8  87 ec ff eb                                      bl #0x5eed1c
005f3afc  06 00 54 e1                                      cmp r4, r6
005f3b00  15 70 da e5                                      ldrb r7, [sl, #0x15]
005f3b04  94 01 00 0a                                      beq #0x5f415c
005f3b08  14 10 9d e5                                      ldr r1, [sp, #0x14]
005f3b0c  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005f3b10  00 00 51 e3                                      cmp r1, #0
005f3b14  04 20 8d e5                                      str r2, [sp, #4]
005f3b18  04 00 00 0a                                      beq #0x5f3b30
005f3b1c  e4 90 9d e5                                      ldr sb, [sp, #0xe4]
005f3b20  00 a0 62 e2                                      rsb sl, r2, #0
005f3b24  04 a0 8d e5                                      str sl, [sp, #4]
005f3b28  01 30 49 e2                                      sub r3, sb, #1
005f3b2c  92 63 26 e0                                      mla r6, r2, r3, r6
005f3b30  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f3b34  00 00 5b e3                                      cmp fp, #0
005f3b38  06 90 a0 11                                      movne sb, r6
005f3b3c  04 b0 a0 11                                      movne fp, r4
005f3b40  e5 ff ff 0a                                      beq #0x5f3adc
005f3b44  00 00 55 e3                                      cmp r5, #0
005f3b48  00 a0 a0 13                                      movne sl, #0
005f3b4c  06 00 00 0a                                      beq #0x5f3b6c
005f3b50  07 10 d4 e6                                      ldrb r1, [r4], r7
005f3b54  08 00 a0 e1                                      mov r0, r8
005f3b58  1d e9 ff eb                                      bl #0x5edfd4
005f3b5c  0a 00 c6 e7                                      strb r0, [r6, sl]
005f3b60  01 a0 8a e2                                      add sl, sl, #1
005f3b64  0a 00 55 e1                                      cmp r5, sl
005f3b68  f8 ff ff 1a                                      bne #0x5f3b50
005f3b6c  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f3b70  01 c0 5c e2                                      subs ip, ip, #1
005f3b74  e4 c0 8d e5                                      str ip, [sp, #0xe4]
005f3b78  d7 ff ff 0a                                      beq #0x5f3adc
005f3b7c  44 00 9d e5                                      ldr r0, [sp, #0x44]
005f3b80  04 10 9d e5                                      ldr r1, [sp, #4]
005f3b84  00 40 8b e0                                      add r4, fp, r0
005f3b88  01 90 89 e0                                      add sb, sb, r1
005f3b8c  09 60 a0 e1                                      mov r6, sb
005f3b90  04 b0 a0 e1                                      mov fp, r4
005f3b94  ea ff ff ea                                      b #0x5f3b44
005f3b98  00 20 92 e7                                      ldr r2, [r2, r0]
005f3b9c  01 00 12 e3                                      tst r2, #1
005f3ba0  00 b0 e0 03                                      mvneq fp, #0
005f3ba4  18 b0 8d 05                                      streq fp, [sp, #0x18]
005f3ba8  5f fe ff 0a                                      beq #0x5f352c
005f3bac  5c fe ff ea                                      b #0x5f3524
005f3bb0  04 c0 9d e5                                      ldr ip, [sp, #4]
005f3bb4  91 0c 01 e0                                      mul r1, r1, ip
005f3bb8  01 20 92 e7                                      ldr r2, [r2, r1]
005f3bbc  01 00 12 e3                                      tst r2, #1
005f3bc0  00 00 e0 03                                      mvneq r0, #0
005f3bc4  0c 00 8d 05                                      streq r0, [sp, #0xc]
005f3bc8  70 fd ff 0a                                      beq #0x5f3190
005f3bcc  6d fd ff ea                                      b #0x5f3188
005f3bd0  e4 90 9d e5                                      ldr sb, [sp, #0xe4]
005f3bd4  00 a0 68 e2                                      rsb sl, r8, #0
005f3bd8  20 a0 8d e5                                      str sl, [sp, #0x20]
005f3bdc  01 30 49 e2                                      sub r3, sb, #1
005f3be0  98 63 26 e0                                      mla r6, r8, r3, r6
005f3be4  03 ff ff ea                                      b #0x5f37f8
005f3be8  83 00 54 e1                                      cmp r4, r3, lsl #1
005f3bec  06 40 84 d0                                      addle r4, r4, r6
005f3bf0  04 30 63 d0                                      rsble r3, r3, r4
005f3bf4  14 30 c1 d5                                      strble r3, [r1, #0x14]
005f3bf8  67 fe ff ea                                      b #0x5f359c
005f3bfc  14 a0 9d e5                                      ldr sl, [sp, #0x14]
005f3c00  00 00 5a e3                                      cmp sl, #0
005f3c04  0d 02 00 1a                                      bne #0x5f4440
005f3c08  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f3c0c  00 00 5c e3                                      cmp ip, #0
005f3c10  b1 ff ff 0a                                      beq #0x5f3adc
005f3c14  78 00 dd e5                                      ldrb r0, [sp, #0x78]
005f3c18  7c 10 dd e5                                      ldrb r1, [sp, #0x7c]
005f3c1c  7d 60 dd e5                                      ldrb r6, [sp, #0x7d]
005f3c20  6c 90 9d e5                                      ldr sb, [sp, #0x6c]
005f3c24  7a a0 dd e5                                      ldrb sl, [sp, #0x7a]
005f3c28  48 00 8d e5                                      str r0, [sp, #0x48]
005f3c2c  3c 10 8d e5                                      str r1, [sp, #0x3c]
005f3c30  68 20 9d e5                                      ldr r2, [sp, #0x68]
005f3c34  79 30 dd e5                                      ldrb r3, [sp, #0x79]
005f3c38  7e c0 dd e5                                      ldrb ip, [sp, #0x7e]
005f3c3c  70 00 9d e5                                      ldr r0, [sp, #0x70]
005f3c40  7f 10 dd e5                                      ldrb r1, [sp, #0x7f]
005f3c44  30 60 8d e5                                      str r6, [sp, #0x30]
005f3c48  2c 90 8d e5                                      str sb, [sp, #0x2c]
005f3c4c  28 a0 8d e5                                      str sl, [sp, #0x28]
005f3c50  38 20 8d e5                                      str r2, [sp, #0x38]
005f3c54  34 30 8d e5                                      str r3, [sp, #0x34]
005f3c58  20 c0 8d e5                                      str ip, [sp, #0x20]
005f3c5c  14 00 8d e5                                      str r0, [sp, #0x14]
005f3c60  18 10 8d e5                                      str r1, [sp, #0x18]
005f3c64  4c 40 8d e5                                      str r4, [sp, #0x4c]
005f3c68  04 60 a0 e1                                      mov r6, r4
005f3c6c  04 90 a0 e1                                      mov sb, r4
005f3c70  ac a0 8d e2                                      add sl, sp, #0xac
005f3c74  50 40 8d e5                                      str r4, [sp, #0x50]
005f3c78  00 00 55 e3                                      cmp r5, #0
005f3c7c  00 40 a0 13                                      movne r4, #0
005f3c80  1c 60 8d 15                                      strne r6, [sp, #0x1c]
005f3c84  24 50 8d 15                                      strne r5, [sp, #0x24]
005f3c88  2c 00 00 0a                                      beq #0x5f3d40
005f3c8c  09 10 a0 e1                                      mov r1, sb
005f3c90  08 20 a0 e1                                      mov r2, r8
005f3c94  0a 00 a0 e1                                      mov r0, sl
005f3c98  f2 6a f4 eb                                      bl #0x30e868
005f3c9c  ac 30 dd e5                                      ldrb r3, [sp, #0xac]
005f3ca0  18 50 9d e5                                      ldr r5, [sp, #0x18]
005f3ca4  34 60 9d e5                                      ldr r6, [sp, #0x34]
005f3ca8  07 20 03 e0                                      and r2, r3, r7
005f3cac  32 2b a0 e1                                      lsr r2, r2, fp
005f3cb0  12 25 a0 e1                                      lsl r2, r2, r5
005f3cb4  48 10 9d e5                                      ldr r1, [sp, #0x48]
005f3cb8  08 50 9d e5                                      ldr r5, [sp, #8]
005f3cbc  33 c6 a0 e1                                      lsr ip, r3, r6
005f3cc0  33 01 a0 e1                                      lsr r0, r3, r1
005f3cc4  0c 60 9d e5                                      ldr r6, [sp, #0xc]
005f3cc8  03 10 05 e0                                      and r1, r5, r3
005f3ccc  28 50 9d e5                                      ldr r5, [sp, #0x28]
005f3cd0  31 16 a0 e1                                      lsr r1, r1, r6
005f3cd4  33 35 a0 e1                                      lsr r3, r3, r5
005f3cd8  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
005f3cdc  30 50 9d e5                                      ldr r5, [sp, #0x30]
005f3ce0  08 90 89 e0                                      add sb, sb, r8
005f3ce4  1c c5 06 e0                                      and ip, r6, ip, lsl r5
005f3ce8  38 60 9d e5                                      ldr r6, [sp, #0x38]
005f3cec  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
005f3cf0  10 05 06 e0                                      and r0, r6, r0, lsl r5
005f3cf4  10 60 9d e5                                      ldr r6, [sp, #0x10]
005f3cf8  20 50 9d e5                                      ldr r5, [sp, #0x20]
005f3cfc  00 c0 8c e1                                      orr ip, ip, r0
005f3d00  11 26 82 e1                                      orr r2, r2, r1, lsl r6
005f3d04  14 10 9d e5                                      ldr r1, [sp, #0x14]
005f3d08  40 60 9d e5                                      ldr r6, [sp, #0x40]
005f3d0c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005f3d10  13 35 01 e0                                      and r3, r1, r3, lsl r5
005f3d14  03 30 8c e1                                      orr r3, ip, r3
005f3d18  04 c0 9d e5                                      ldr ip, [sp, #4]
005f3d1c  06 20 02 e0                                      and r2, r2, r6
005f3d20  02 30 83 e1                                      orr r3, r3, r2
005f3d24  0c 30 83 e1                                      orr r3, r3, ip
005f3d28  04 30 c0 e7                                      strb r3, [r0, r4]
005f3d2c  24 10 9d e5                                      ldr r1, [sp, #0x24]
005f3d30  01 40 84 e2                                      add r4, r4, #1
005f3d34  04 00 51 e1                                      cmp r1, r4
005f3d38  d3 ff ff 1a                                      bne #0x5f3c8c
005f3d3c  01 50 a0 e1                                      mov r5, r1
005f3d40  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f3d44  01 20 52 e2                                      subs r2, r2, #1
005f3d48  e4 20 8d e5                                      str r2, [sp, #0xe4]
005f3d4c  62 ff ff 0a                                      beq #0x5f3adc
005f3d50  50 30 9d e5                                      ldr r3, [sp, #0x50]
005f3d54  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
005f3d58  dc 90 9d e5                                      ldr sb, [sp, #0xdc]
005f3d5c  44 40 9d e5                                      ldr r4, [sp, #0x44]
005f3d60  09 60 86 e0                                      add r6, r6, sb
005f3d64  04 30 83 e0                                      add r3, r3, r4
005f3d68  50 30 8d e5                                      str r3, [sp, #0x50]
005f3d6c  4c 60 8d e5                                      str r6, [sp, #0x4c]
005f3d70  03 90 a0 e1                                      mov sb, r3
005f3d74  bf ff ff ea                                      b #0x5f3c78
005f3d78  14 a0 9d e5                                      ldr sl, [sp, #0x14]
005f3d7c  00 00 5a e3                                      cmp sl, #0
005f3d80  3f 01 00 1a                                      bne #0x5f4284
005f3d84  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f3d88  00 00 5c e3                                      cmp ip, #0
005f3d8c  52 ff ff 0a                                      beq #0x5f3adc
005f3d90  ac 00 8d e2                                      add r0, sp, #0xac
005f3d94  10 40 8d e5                                      str r4, [sp, #0x10]
005f3d98  18 40 8d e5                                      str r4, [sp, #0x18]
005f3d9c  04 40 8d e5                                      str r4, [sp, #4]
005f3da0  0c 00 8d e5                                      str r0, [sp, #0xc]
005f3da4  08 50 8d e5                                      str r5, [sp, #8]
005f3da8  08 30 9d e5                                      ldr r3, [sp, #8]
005f3dac  00 00 53 e3                                      cmp r3, #0
005f3db0  00 50 a0 13                                      movne r5, #0
005f3db4  2b 00 00 0a                                      beq #0x5f3e68
005f3db8  04 10 a0 e1                                      mov r1, r4
005f3dbc  0b 20 a0 e1                                      mov r2, fp
005f3dc0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005f3dc4  a7 6a f4 eb                                      bl #0x30e868
005f3dc8  ac 30 dd e5                                      ldrb r3, [sp, #0xac]
005f3dcc  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
005f3dd0  7b 10 dd e5                                      ldrb r1, [sp, #0x7b]
005f3dd4  78 90 dd e5                                      ldrb sb, [sp, #0x78]
005f3dd8  7c a0 dd e5                                      ldrb sl, [sp, #0x7c]
005f3ddc  02 20 03 e0                                      and r2, r3, r2
005f3de0  68 80 9d e5                                      ldr r8, [sp, #0x68]
005f3de4  33 99 a0 e1                                      lsr sb, r3, sb
005f3de8  32 21 a0 e1                                      lsr r2, r2, r1
005f3dec  79 70 dd e5                                      ldrb r7, [sp, #0x79]
005f3df0  88 10 9d e5                                      ldr r1, [sp, #0x88]
005f3df4  7a c0 dd e5                                      ldrb ip, [sp, #0x7a]
005f3df8  19 8a 08 e0                                      and r8, r8, sb, lsl sl
005f3dfc  82 20 a0 e1                                      lsl r2, r2, #1
005f3e00  7d 60 dd e5                                      ldrb r6, [sp, #0x7d]
005f3e04  6c a0 9d e5                                      ldr sl, [sp, #0x6c]
005f3e08  b2 00 91 e1                                      ldrh r0, [r1, r2]
005f3e0c  33 77 a0 e1                                      lsr r7, r3, r7
005f3e10  84 10 dd e5                                      ldrb r1, [sp, #0x84]
005f3e14  7e 20 dd e5                                      ldrb r2, [sp, #0x7e]
005f3e18  33 3c a0 e1                                      lsr r3, r3, ip
005f3e1c  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005f3e20  17 66 0a e0                                      and r6, sl, r7, lsl r6
005f3e24  50 11 a0 e1                                      asr r1, r0, r1
005f3e28  7f 70 dd e5                                      ldrb r7, [sp, #0x7f]
005f3e2c  74 00 9d e5                                      ldr r0, [sp, #0x74]
005f3e30  13 32 0c e0                                      and r3, ip, r3, lsl r2
005f3e34  11 17 00 e0                                      and r1, r0, r1, lsl r7
005f3e38  80 20 9d e5                                      ldr r2, [sp, #0x80]
005f3e3c  06 80 88 e1                                      orr r8, r8, r6
005f3e40  0b 40 84 e0                                      add r4, r4, fp
005f3e44  02 80 88 e1                                      orr r8, r8, r2
005f3e48  03 30 88 e1                                      orr r3, r8, r3
005f3e4c  04 80 9d e5                                      ldr r8, [sp, #4]
005f3e50  01 10 83 e1                                      orr r1, r3, r1
005f3e54  05 10 c8 e7                                      strb r1, [r8, r5]
005f3e58  08 90 9d e5                                      ldr sb, [sp, #8]
005f3e5c  01 50 85 e2                                      add r5, r5, #1
005f3e60  05 00 59 e1                                      cmp sb, r5
005f3e64  d3 ff ff 1a                                      bne #0x5f3db8
005f3e68  e4 a0 9d e5                                      ldr sl, [sp, #0xe4]
005f3e6c  01 a0 5a e2                                      subs sl, sl, #1
005f3e70  e4 a0 8d e5                                      str sl, [sp, #0xe4]
005f3e74  18 ff ff 0a                                      beq #0x5f3adc
005f3e78  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005f3e7c  10 10 9d e5                                      ldr r1, [sp, #0x10]
005f3e80  44 00 9d e5                                      ldr r0, [sp, #0x44]
005f3e84  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005f3e88  00 40 8c e0                                      add r4, ip, r0
005f3e8c  02 10 81 e0                                      add r1, r1, r2
005f3e90  10 10 8d e5                                      str r1, [sp, #0x10]
005f3e94  04 10 8d e5                                      str r1, [sp, #4]
005f3e98  18 40 8d e5                                      str r4, [sp, #0x18]
005f3e9c  c1 ff ff ea                                      b #0x5f3da8
; mapping-symbol data/literal pool
005f3ea0  a0 1a 3a 00 34 1f 00 00                          .byte 0xa0, 0x1a, 0x3a, 0x00, 0x34, 0x1f, 0x00, 0x00
; decoder-mode: arm
005f3ea8  14 10 9d e5                                      ldr r1, [sp, #0x14]
005f3eac  00 00 51 e3                                      cmp r1, #0
005f3eb0  78 02 00 1a                                      bne #0x5f4898
005f3eb4  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f3eb8  00 00 52 e3                                      cmp r2, #0
005f3ebc  06 ff ff 0a                                      beq #0x5f3adc
005f3ec0  ac 30 8d e2                                      add r3, sp, #0xac
005f3ec4  10 40 8d e5                                      str r4, [sp, #0x10]
005f3ec8  08 40 8d e5                                      str r4, [sp, #8]
005f3ecc  04 70 a0 e1                                      mov r7, r4
005f3ed0  0c 30 8d e5                                      str r3, [sp, #0xc]
005f3ed4  0a b0 a0 e1                                      mov fp, sl
005f3ed8  18 40 8d e5                                      str r4, [sp, #0x18]
005f3edc  04 50 8d e5                                      str r5, [sp, #4]
005f3ee0  04 c0 9d e5                                      ldr ip, [sp, #4]
005f3ee4  00 00 5c e3                                      cmp ip, #0
005f3ee8  00 40 a0 13                                      movne r4, #0
005f3eec  39 00 00 0a                                      beq #0x5f3fd8
005f3ef0  07 10 a0 e1                                      mov r1, r7
005f3ef4  0b 20 a0 e1                                      mov r2, fp
005f3ef8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005f3efc  59 6a f4 eb                                      bl #0x30e868
005f3f00  ac 20 dd e5                                      ldrb r2, [sp, #0xac]
005f3f04  90 30 9d e5                                      ldr r3, [sp, #0x90]
005f3f08  78 00 dd e5                                      ldrb r0, [sp, #0x78]
005f3f0c  79 10 dd e5                                      ldrb r1, [sp, #0x79]
005f3f10  03 30 02 e0                                      and r3, r2, r3
005f3f14  33 30 a0 e1                                      lsr r3, r3, r0
005f3f18  94 00 9d e5                                      ldr r0, [sp, #0x94]
005f3f1c  7a c0 dd e5                                      ldrb ip, [sp, #0x7a]
005f3f20  88 50 9d e5                                      ldr r5, [sp, #0x88]
005f3f24  00 00 02 e0                                      and r0, r2, r0
005f3f28  30 01 a0 e1                                      lsr r0, r0, r1
005f3f2c  98 10 9d e5                                      ldr r1, [sp, #0x98]
005f3f30  80 00 a0 e1                                      lsl r0, r0, #1
005f3f34  b0 60 95 e1                                      ldrh r6, [r5, r0]
005f3f38  01 10 02 e0                                      and r1, r2, r1
005f3f3c  31 1c a0 e1                                      lsr r1, r1, ip
005f3f40  84 c0 9d e5                                      ldr ip, [sp, #0x84]
005f3f44  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
005f3f48  83 30 a0 e1                                      lsl r3, r3, #1
005f3f4c  9d 50 dd e5                                      ldrb r5, [sp, #0x9d]
005f3f50  b3 c0 9c e1                                      ldrh ip, [ip, r3]
005f3f54  7b 90 dd e5                                      ldrb sb, [sp, #0x7b]
005f3f58  9c 30 dd e5                                      ldrb r3, [sp, #0x9c]
005f3f5c  81 10 a0 e1                                      lsl r1, r1, #1
005f3f60  b1 10 90 e1                                      ldrh r1, [r0, r1]
005f3f64  56 55 a0 e1                                      asr r5, r6, r5
005f3f68  7c 00 dd e5                                      ldrb r0, [sp, #0x7c]
005f3f6c  68 60 9d e5                                      ldr r6, [sp, #0x68]
005f3f70  7f a0 dd e5                                      ldrb sl, [sp, #0x7f]
005f3f74  32 99 a0 e1                                      lsr sb, r2, sb
005f3f78  5c c3 a0 e1                                      asr ip, ip, r3
005f3f7c  9e 20 dd e5                                      ldrb r2, [sp, #0x9e]
005f3f80  74 80 9d e5                                      ldr r8, [sp, #0x74]
005f3f84  7d 30 dd e5                                      ldrb r3, [sp, #0x7d]
005f3f88  1c 00 06 e0                                      and r0, r6, ip, lsl r0
005f3f8c  6c 60 9d e5                                      ldr r6, [sp, #0x6c]
005f3f90  19 8a 08 e0                                      and r8, r8, sb, lsl sl
005f3f94  51 22 a0 e1                                      asr r2, r1, r2
005f3f98  7e a0 dd e5                                      ldrb sl, [sp, #0x7e]
005f3f9c  70 10 9d e5                                      ldr r1, [sp, #0x70]
005f3fa0  15 53 06 e0                                      and r5, r6, r5, lsl r3
005f3fa4  12 2a 01 e0                                      and r2, r1, r2, lsl sl
005f3fa8  80 a0 9d e5                                      ldr sl, [sp, #0x80]
005f3fac  08 30 9d e5                                      ldr r3, [sp, #8]
005f3fb0  0b 70 87 e0                                      add r7, r7, fp
005f3fb4  0a 80 88 e1                                      orr r8, r8, sl
005f3fb8  00 00 88 e1                                      orr r0, r8, r0
005f3fbc  05 50 80 e1                                      orr r5, r0, r5
005f3fc0  02 20 85 e1                                      orr r2, r5, r2
005f3fc4  04 20 c3 e7                                      strb r2, [r3, r4]
005f3fc8  04 50 9d e5                                      ldr r5, [sp, #4]
005f3fcc  01 40 84 e2                                      add r4, r4, #1
005f3fd0  04 00 55 e1                                      cmp r5, r4
005f3fd4  c5 ff ff 1a                                      bne #0x5f3ef0
005f3fd8  e4 60 9d e5                                      ldr r6, [sp, #0xe4]
005f3fdc  01 60 56 e2                                      subs r6, r6, #1
005f3fe0  e4 60 8d e5                                      str r6, [sp, #0xe4]
005f3fe4  bc fe ff 0a                                      beq #0x5f3adc
005f3fe8  18 70 9d e5                                      ldr r7, [sp, #0x18]
005f3fec  10 90 9d e5                                      ldr sb, [sp, #0x10]
005f3ff0  44 80 9d e5                                      ldr r8, [sp, #0x44]
005f3ff4  dc a0 9d e5                                      ldr sl, [sp, #0xdc]
005f3ff8  08 70 87 e0                                      add r7, r7, r8
005f3ffc  0a 90 89 e0                                      add sb, sb, sl
005f4000  18 70 8d e5                                      str r7, [sp, #0x18]
005f4004  10 90 8d e5                                      str sb, [sp, #0x10]
005f4008  08 90 8d e5                                      str sb, [sp, #8]
005f400c  b3 ff ff ea                                      b #0x5f3ee0
005f4010  14 00 9d e5                                      ldr r0, [sp, #0x14]
005f4014  00 00 50 e3                                      cmp r0, #0
005f4018  d5 02 00 1a                                      bne #0x5f4b74
005f401c  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f4020  00 00 51 e3                                      cmp r1, #0
005f4024  ac fe ff 0a                                      beq #0x5f3adc
005f4028  7c 20 dd e5                                      ldrb r2, [sp, #0x7c]
005f402c  68 30 9d e5                                      ldr r3, [sp, #0x68]
005f4030  79 60 dd e5                                      ldrb r6, [sp, #0x79]
005f4034  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
005f4038  7d 90 dd e5                                      ldrb sb, [sp, #0x7d]
005f403c  30 20 8d e5                                      str r2, [sp, #0x30]
005f4040  2c 30 8d e5                                      str r3, [sp, #0x2c]
005f4044  28 60 8d e5                                      str r6, [sp, #0x28]
005f4048  7a 00 dd e5                                      ldrb r0, [sp, #0x7a]
005f404c  7e 10 dd e5                                      ldrb r1, [sp, #0x7e]
005f4050  70 20 9d e5                                      ldr r2, [sp, #0x70]
005f4054  7b 30 dd e5                                      ldrb r3, [sp, #0x7b]
005f4058  7f 60 dd e5                                      ldrb r6, [sp, #0x7f]
005f405c  78 b0 dd e5                                      ldrb fp, [sp, #0x78]
005f4060  14 c0 8d e5                                      str ip, [sp, #0x14]
005f4064  ac c0 8d e2                                      add ip, sp, #0xac
005f4068  20 90 8d e5                                      str sb, [sp, #0x20]
005f406c  18 00 8d e5                                      str r0, [sp, #0x18]
005f4070  10 10 8d e5                                      str r1, [sp, #0x10]
005f4074  0c 20 8d e5                                      str r2, [sp, #0xc]
005f4078  08 30 8d e5                                      str r3, [sp, #8]
005f407c  04 60 8d e5                                      str r6, [sp, #4]
005f4080  38 40 8d e5                                      str r4, [sp, #0x38]
005f4084  3c 40 8d e5                                      str r4, [sp, #0x3c]
005f4088  04 90 a0 e1                                      mov sb, r4
005f408c  34 c0 8d e5                                      str ip, [sp, #0x34]
005f4090  00 00 55 e3                                      cmp r5, #0
005f4094  00 60 a0 13                                      movne r6, #0
005f4098  1c 90 8d 15                                      strne sb, [sp, #0x1c]
005f409c  20 00 00 0a                                      beq #0x5f4124
005f40a0  04 10 a0 e1                                      mov r1, r4
005f40a4  0a 20 a0 e1                                      mov r2, sl
005f40a8  34 00 9d e5                                      ldr r0, [sp, #0x34]
005f40ac  ed 69 f4 eb                                      bl #0x30e868
005f40b0  ac 30 dd e5                                      ldrb r3, [sp, #0xac]
005f40b4  28 90 9d e5                                      ldr sb, [sp, #0x28]
005f40b8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005f40bc  33 2b a0 e1                                      lsr r2, r3, fp
005f40c0  33 19 a0 e1                                      lsr r1, r3, sb
005f40c4  33 0c a0 e1                                      lsr r0, r3, ip
005f40c8  14 90 9d e5                                      ldr sb, [sp, #0x14]
005f40cc  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005f40d0  0a 40 84 e0                                      add r4, r4, sl
005f40d4  11 1c 09 e0                                      and r1, sb, r1, lsl ip
005f40d8  2c 90 9d e5                                      ldr sb, [sp, #0x2c]
005f40dc  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005f40e0  12 2c 09 e0                                      and r2, sb, r2, lsl ip
005f40e4  08 90 9d e5                                      ldr sb, [sp, #8]
005f40e8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005f40ec  02 20 81 e1                                      orr r2, r1, r2
005f40f0  33 39 a0 e1                                      lsr r3, r3, sb
005f40f4  10 90 9d e5                                      ldr sb, [sp, #0x10]
005f40f8  10 09 0c e0                                      and r0, ip, r0, lsl sb
005f40fc  04 c0 9d e5                                      ldr ip, [sp, #4]
005f4100  00 00 82 e1                                      orr r0, r2, r0
005f4104  13 3c 07 e0                                      and r3, r7, r3, lsl ip
005f4108  03 30 80 e1                                      orr r3, r0, r3
005f410c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005f4110  08 30 83 e1                                      orr r3, r3, r8
005f4114  06 30 c0 e7                                      strb r3, [r0, r6]
005f4118  01 60 86 e2                                      add r6, r6, #1
005f411c  06 00 55 e1                                      cmp r5, r6
005f4120  de ff ff 1a                                      bne #0x5f40a0
005f4124  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f4128  01 10 51 e2                                      subs r1, r1, #1
005f412c  e4 10 8d e5                                      str r1, [sp, #0xe4]
005f4130  69 fe ff 0a                                      beq #0x5f3adc
005f4134  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
005f4138  38 60 9d e5                                      ldr r6, [sp, #0x38]
005f413c  dc 90 9d e5                                      ldr sb, [sp, #0xdc]
005f4140  44 30 9d e5                                      ldr r3, [sp, #0x44]
005f4144  09 60 86 e0                                      add r6, r6, sb
005f4148  03 40 82 e0                                      add r4, r2, r3
005f414c  38 60 8d e5                                      str r6, [sp, #0x38]
005f4150  06 90 a0 e1                                      mov sb, r6
005f4154  3c 40 8d e5                                      str r4, [sp, #0x3c]
005f4158  cc ff ff ea                                      b #0x5f4090
005f415c  14 b0 9d e5                                      ldr fp, [sp, #0x14]
005f4160  00 00 5b e3                                      cmp fp, #0
005f4164  a5 01 00 1a                                      bne #0x5f4800
005f4168  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f416c  00 00 5c e3                                      cmp ip, #0
005f4170  59 fe ff 0a                                      beq #0x5f3adc
005f4174  04 b0 a0 e1                                      mov fp, r4
005f4178  04 40 8d e5                                      str r4, [sp, #4]
005f417c  04 a0 a0 e1                                      mov sl, r4
005f4180  ac 90 8d e2                                      add sb, sp, #0xac
005f4184  00 00 55 e3                                      cmp r5, #0
005f4188  00 60 a0 13                                      movne r6, #0
005f418c  0b 00 00 0a                                      beq #0x5f41c0
005f4190  04 10 a0 e1                                      mov r1, r4
005f4194  07 20 a0 e1                                      mov r2, r7
005f4198  09 00 a0 e1                                      mov r0, sb
005f419c  b1 69 f4 eb                                      bl #0x30e868
005f41a0  ac 10 dd e5                                      ldrb r1, [sp, #0xac]
005f41a4  08 00 a0 e1                                      mov r0, r8
005f41a8  89 e7 ff eb                                      bl #0x5edfd4
005f41ac  06 00 ca e7                                      strb r0, [sl, r6]
005f41b0  01 60 86 e2                                      add r6, r6, #1
005f41b4  06 00 55 e1                                      cmp r5, r6
005f41b8  07 40 84 e0                                      add r4, r4, r7
005f41bc  f3 ff ff 1a                                      bne #0x5f4190
005f41c0  e4 60 9d e5                                      ldr r6, [sp, #0xe4]
005f41c4  01 60 56 e2                                      subs r6, r6, #1
005f41c8  e4 60 8d e5                                      str r6, [sp, #0xe4]
005f41cc  42 fe ff 0a                                      beq #0x5f3adc
005f41d0  04 a0 9d e5                                      ldr sl, [sp, #4]
005f41d4  44 c0 9d e5                                      ldr ip, [sp, #0x44]
005f41d8  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
005f41dc  0c 40 8a e0                                      add r4, sl, ip
005f41e0  00 b0 8b e0                                      add fp, fp, r0
005f41e4  0b a0 a0 e1                                      mov sl, fp
005f41e8  04 40 8d e5                                      str r4, [sp, #4]
005f41ec  e4 ff ff ea                                      b #0x5f4184
005f41f0  14 60 9d e5                                      ldr r6, [sp, #0x14]
005f41f4  00 00 56 e3                                      cmp r6, #0
005f41f8  37 02 00 1a                                      bne #0x5f4adc
005f41fc  e4 90 9d e5                                      ldr sb, [sp, #0xe4]
005f4200  00 00 59 e3                                      cmp sb, #0
005f4204  34 fe ff 0a                                      beq #0x5f3adc
005f4208  04 b0 a0 e1                                      mov fp, r4
005f420c  04 40 8d e5                                      str r4, [sp, #4]
005f4210  04 a0 a0 e1                                      mov sl, r4
005f4214  ac 90 8d e2                                      add sb, sp, #0xac
005f4218  00 00 55 e3                                      cmp r5, #0
005f421c  00 60 a0 13                                      movne r6, #0
005f4220  0b 00 00 0a                                      beq #0x5f4254
005f4224  04 10 a0 e1                                      mov r1, r4
005f4228  07 20 a0 e1                                      mov r2, r7
005f422c  09 00 a0 e1                                      mov r0, sb
005f4230  8c 69 f4 eb                                      bl #0x30e868
005f4234  ac 10 dd e5                                      ldrb r1, [sp, #0xac]
005f4238  08 00 a0 e1                                      mov r0, r8
005f423c  26 e7 ff eb                                      bl #0x5ededc
005f4240  06 00 ca e7                                      strb r0, [sl, r6]
005f4244  01 60 86 e2                                      add r6, r6, #1
005f4248  06 00 55 e1                                      cmp r5, r6
005f424c  07 40 84 e0                                      add r4, r4, r7
005f4250  f3 ff ff 1a                                      bne #0x5f4224
005f4254  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f4258  01 20 52 e2                                      subs r2, r2, #1
005f425c  e4 20 8d e5                                      str r2, [sp, #0xe4]
005f4260  1d fe ff 0a                                      beq #0x5f3adc
005f4264  04 30 9d e5                                      ldr r3, [sp, #4]
005f4268  dc a0 9d e5                                      ldr sl, [sp, #0xdc]
005f426c  44 60 9d e5                                      ldr r6, [sp, #0x44]
005f4270  0a b0 8b e0                                      add fp, fp, sl
005f4274  06 40 83 e0                                      add r4, r3, r6
005f4278  0b a0 a0 e1                                      mov sl, fp
005f427c  04 40 8d e5                                      str r4, [sp, #4]
005f4280  e4 ff ff ea                                      b #0x5f4218
005f4284  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f4288  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005f428c  01 30 41 e2                                      sub r3, r1, #1
005f4290  92 43 23 e0                                      mla r3, r2, r3, r4
005f4294  20 30 8d e5                                      str r3, [sp, #0x20]
005f4298  20 60 9d e5                                      ldr r6, [sp, #0x20]
005f429c  00 30 62 e2                                      rsb r3, r2, #0
005f42a0  38 30 8d e5                                      str r3, [sp, #0x38]
005f42a4  06 00 54 e1                                      cmp r4, r6
005f42a8  0b fe ff 8a                                      bhi #0x5f3adc
005f42ac  ac 70 8d e2                                      add r7, sp, #0xac
005f42b0  34 40 8d e5                                      str r4, [sp, #0x34]
005f42b4  04 60 a0 e1                                      mov r6, r4
005f42b8  30 70 8d e5                                      str r7, [sp, #0x30]
005f42bc  28 b0 8d e5                                      str fp, [sp, #0x28]
005f42c0  2c 50 8d e5                                      str r5, [sp, #0x2c]
005f42c4  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f42c8  00 00 57 e3                                      cmp r7, #0
005f42cc  00 40 a0 13                                      movne r4, #0
005f42d0  4f 00 00 0a                                      beq #0x5f4414
005f42d4  20 80 9d e5                                      ldr r8, [sp, #0x20]
005f42d8  8c 90 9d e5                                      ldr sb, [sp, #0x8c]
005f42dc  7b 70 dd e5                                      ldrb r7, [sp, #0x7b]
005f42e0  04 20 d8 e7                                      ldrb r2, [r8, r4]
005f42e4  88 b0 9d e5                                      ldr fp, [sp, #0x88]
005f42e8  7e 80 dd e5                                      ldrb r8, [sp, #0x7e]
005f42ec  09 30 02 e0                                      and r3, r2, sb
005f42f0  33 37 a0 e1                                      lsr r3, r3, r7
005f42f4  78 50 dd e5                                      ldrb r5, [sp, #0x78]
005f42f8  83 30 a0 e1                                      lsl r3, r3, #1
005f42fc  b3 30 9b e1                                      ldrh r3, [fp, r3]
005f4300  7c c0 dd e5                                      ldrb ip, [sp, #0x7c]
005f4304  0c 80 8d e5                                      str r8, [sp, #0xc]
005f4308  68 80 9d e5                                      ldr r8, [sp, #0x68]
005f430c  32 05 a0 e1                                      lsr r0, r2, r5
005f4310  10 0c 08 e0                                      and r0, r8, r0, lsl ip
005f4314  79 e0 dd e5                                      ldrb lr, [sp, #0x79]
005f4318  04 00 8d e5                                      str r0, [sp, #4]
005f431c  7d a0 dd e5                                      ldrb sl, [sp, #0x7d]
005f4320  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
005f4324  7f 80 dd e5                                      ldrb r8, [sp, #0x7f]
005f4328  7a 90 dd e5                                      ldrb sb, [sp, #0x7a]
005f432c  32 1e a0 e1                                      lsr r1, r2, lr
005f4330  18 80 8d e5                                      str r8, [sp, #0x18]
005f4334  11 1a 00 e0                                      and r1, r0, r1, lsl sl
005f4338  0c 80 9d e5                                      ldr r8, [sp, #0xc]
005f433c  70 00 9d e5                                      ldr r0, [sp, #0x70]
005f4340  84 b0 dd e5                                      ldrb fp, [sp, #0x84]
005f4344  32 29 a0 e1                                      lsr r2, r2, sb
005f4348  12 28 00 e0                                      and r2, r0, r2, lsl r8
005f434c  74 00 9d e5                                      ldr r0, [sp, #0x74]
005f4350  18 80 9d e5                                      ldr r8, [sp, #0x18]
005f4354  53 3b a0 e1                                      asr r3, r3, fp
005f4358  13 38 00 e0                                      and r3, r0, r3, lsl r8
005f435c  04 00 9d e5                                      ldr r0, [sp, #4]
005f4360  80 80 9d e5                                      ldr r8, [sp, #0x80]
005f4364  01 10 80 e1                                      orr r1, r0, r1
005f4368  08 10 81 e1                                      orr r1, r1, r8
005f436c  02 20 81 e1                                      orr r2, r1, r2
005f4370  03 20 82 e1                                      orr r2, r2, r3
005f4374  ac 20 cd e5                                      strb r2, [sp, #0xac]
005f4378  00 30 d6 e5                                      ldrb r3, [r6]
005f437c  8c 80 9d e5                                      ldr r8, [sp, #0x8c]
005f4380  30 10 9d e5                                      ldr r1, [sp, #0x30]
005f4384  33 55 a0 e1                                      lsr r5, r3, r5
005f4388  08 80 03 e0                                      and r8, r3, r8
005f438c  04 80 8d e5                                      str r8, [sp, #4]
005f4390  38 77 a0 e1                                      lsr r7, r8, r7
005f4394  88 80 9d e5                                      ldr r8, [sp, #0x88]
005f4398  87 70 a0 e1                                      lsl r7, r7, #1
005f439c  33 ee a0 e1                                      lsr lr, r3, lr
005f43a0  b7 70 98 e1                                      ldrh r7, [r8, r7]
005f43a4  68 80 9d e5                                      ldr r8, [sp, #0x68]
005f43a8  33 39 a0 e1                                      lsr r3, r3, sb
005f43ac  15 5c 08 e0                                      and r5, r8, r5, lsl ip
005f43b0  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
005f43b4  57 bb a0 e1                                      asr fp, r7, fp
005f43b8  0c 80 9d e5                                      ldr r8, [sp, #0xc]
005f43bc  70 70 9d e5                                      ldr r7, [sp, #0x70]
005f43c0  1e ea 0c e0                                      and lr, ip, lr, lsl sl
005f43c4  74 90 9d e5                                      ldr sb, [sp, #0x74]
005f43c8  18 a0 9d e5                                      ldr sl, [sp, #0x18]
005f43cc  13 38 07 e0                                      and r3, r7, r3, lsl r8
005f43d0  1b ba 09 e0                                      and fp, sb, fp, lsl sl
005f43d4  80 c0 9d e5                                      ldr ip, [sp, #0x80]
005f43d8  0e 50 85 e1                                      orr r5, r5, lr
005f43dc  20 e0 9d e5                                      ldr lr, [sp, #0x20]
005f43e0  0c 50 85 e1                                      orr r5, r5, ip
005f43e4  03 30 85 e1                                      orr r3, r5, r3
005f43e8  06 00 a0 e1                                      mov r0, r6
005f43ec  28 20 9d e5                                      ldr r2, [sp, #0x28]
005f43f0  0b b0 83 e1                                      orr fp, r3, fp
005f43f4  04 b0 ce e7                                      strb fp, [lr, r4]
005f43f8  1a 69 f4 eb                                      bl #0x30e868
005f43fc  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005f4400  28 10 9d e5                                      ldr r1, [sp, #0x28]
005f4404  01 40 84 e2                                      add r4, r4, #1
005f4408  04 00 50 e1                                      cmp r0, r4
005f440c  01 60 86 e0                                      add r6, r6, r1
005f4410  af ff ff 1a                                      bne #0x5f42d4
005f4414  20 40 9d e5                                      ldr r4, [sp, #0x20]
005f4418  34 20 9d e5                                      ldr r2, [sp, #0x34]
005f441c  44 30 9d e5                                      ldr r3, [sp, #0x44]
005f4420  38 50 9d e5                                      ldr r5, [sp, #0x38]
005f4424  03 60 82 e0                                      add r6, r2, r3
005f4428  05 40 84 e0                                      add r4, r4, r5
005f442c  06 00 54 e1                                      cmp r4, r6
005f4430  20 40 8d e5                                      str r4, [sp, #0x20]
005f4434  a8 fd ff 3a                                      blo #0x5f3adc
005f4438  34 60 8d e5                                      str r6, [sp, #0x34]
005f443c  a0 ff ff ea                                      b #0x5f42c4
005f4440  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f4444  dc 90 9d e5                                      ldr sb, [sp, #0xdc]
005f4448  01 30 42 e2                                      sub r3, r2, #1
005f444c  99 43 26 e0                                      mla r6, sb, r3, r4
005f4450  00 a0 69 e2                                      rsb sl, sb, #0
005f4454  06 00 54 e1                                      cmp r4, r6
005f4458  50 a0 8d e5                                      str sl, [sp, #0x50]
005f445c  9e fd ff 8a                                      bhi #0x5f3adc
005f4460  78 c0 dd e5                                      ldrb ip, [sp, #0x78]
005f4464  7c 00 dd e5                                      ldrb r0, [sp, #0x7c]
005f4468  7d 30 dd e5                                      ldrb r3, [sp, #0x7d]
005f446c  4c 40 8d e5                                      str r4, [sp, #0x4c]
005f4470  68 10 9d e5                                      ldr r1, [sp, #0x68]
005f4474  7a 90 dd e5                                      ldrb sb, [sp, #0x7a]
005f4478  7e a0 dd e5                                      ldrb sl, [sp, #0x7e]
005f447c  38 c0 8d e5                                      str ip, [sp, #0x38]
005f4480  34 00 8d e5                                      str r0, [sp, #0x34]
005f4484  79 20 dd e5                                      ldrb r2, [sp, #0x79]
005f4488  28 30 8d e5                                      str r3, [sp, #0x28]
005f448c  6c 40 9d e5                                      ldr r4, [sp, #0x6c]
005f4490  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005f4494  7f 00 dd e5                                      ldrb r0, [sp, #0x7f]
005f4498  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005f449c  30 10 8d e5                                      str r1, [sp, #0x30]
005f44a0  ac 10 8d e2                                      add r1, sp, #0xac
005f44a4  14 90 8d e5                                      str sb, [sp, #0x14]
005f44a8  18 a0 8d e5                                      str sl, [sp, #0x18]
005f44ac  3c 50 8d e5                                      str r5, [sp, #0x3c]
005f44b0  2c 20 8d e5                                      str r2, [sp, #0x2c]
005f44b4  20 40 8d e5                                      str r4, [sp, #0x20]
005f44b8  1c c0 8d e5                                      str ip, [sp, #0x1c]
005f44bc  24 00 8d e5                                      str r0, [sp, #0x24]
005f44c0  48 10 8d e5                                      str r1, [sp, #0x48]
005f44c4  07 90 a0 e1                                      mov sb, r7
005f44c8  08 a0 a0 e1                                      mov sl, r8
005f44cc  03 50 a0 e1                                      mov r5, r3
005f44d0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005f44d4  00 00 53 e3                                      cmp r3, #0
005f44d8  00 40 a0 13                                      movne r4, #0
005f44dc  5a 00 00 0a                                      beq #0x5f464c
005f44e0  04 30 d6 e7                                      ldrb r3, [r6, r4]
005f44e4  24 20 9d e5                                      ldr r2, [sp, #0x24]
005f44e8  38 70 9d e5                                      ldr r7, [sp, #0x38]
005f44ec  09 c0 03 e0                                      and ip, r3, sb
005f44f0  3c cb a0 e1                                      lsr ip, ip, fp
005f44f4  1c c2 a0 e1                                      lsl ip, ip, r2
005f44f8  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
005f44fc  54 c0 8d e5                                      str ip, [sp, #0x54]
005f4500  08 c0 9d e5                                      ldr ip, [sp, #8]
005f4504  33 27 a0 e1                                      lsr r2, r3, r7
005f4508  03 e0 0c e0                                      and lr, ip, r3
005f450c  33 78 a0 e1                                      lsr r7, r3, r8
005f4510  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005f4514  30 80 9d e5                                      ldr r8, [sp, #0x30]
005f4518  48 10 9d e5                                      ldr r1, [sp, #0x48]
005f451c  05 00 a0 e1                                      mov r0, r5
005f4520  12 2c 08 e0                                      and r2, r8, r2, lsl ip
005f4524  58 20 8d e5                                      str r2, [sp, #0x58]
005f4528  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005f452c  14 80 9d e5                                      ldr r8, [sp, #0x14]
005f4530  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005f4534  3e e2 a0 e1                                      lsr lr, lr, r2
005f4538  28 20 9d e5                                      ldr r2, [sp, #0x28]
005f453c  33 38 a0 e1                                      lsr r3, r3, r8
005f4540  17 72 0c e0                                      and r7, ip, r7, lsl r2
005f4544  54 80 9d e5                                      ldr r8, [sp, #0x54]
005f4548  10 20 9d e5                                      ldr r2, [sp, #0x10]
005f454c  1e c2 88 e1                                      orr ip, r8, lr, lsl r2
005f4550  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
005f4554  18 e0 9d e5                                      ldr lr, [sp, #0x18]
005f4558  13 3e 08 e0                                      and r3, r8, r3, lsl lr
005f455c  58 e0 9d e5                                      ldr lr, [sp, #0x58]
005f4560  04 80 9d e5                                      ldr r8, [sp, #4]
005f4564  0e 20 88 e1                                      orr r2, r8, lr
005f4568  07 70 82 e1                                      orr r7, r2, r7
005f456c  40 20 9d e5                                      ldr r2, [sp, #0x40]
005f4570  03 30 87 e1                                      orr r3, r7, r3
005f4574  24 70 9d e5                                      ldr r7, [sp, #0x24]
005f4578  02 c0 0c e0                                      and ip, ip, r2
005f457c  0c 30 83 e1                                      orr r3, r3, ip
005f4580  ac 30 cd e5                                      strb r3, [sp, #0xac]
005f4584  00 30 d5 e5                                      ldrb r3, [r5]
005f4588  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005f458c  0a 20 a0 e1                                      mov r2, sl
005f4590  09 80 03 e0                                      and r8, r3, sb
005f4594  38 8b a0 e1                                      lsr r8, r8, fp
005f4598  18 87 a0 e1                                      lsl r8, r8, r7
005f459c  33 cc a0 e1                                      lsr ip, r3, ip
005f45a0  08 70 9d e5                                      ldr r7, [sp, #8]
005f45a4  58 80 8d e5                                      str r8, [sp, #0x58]
005f45a8  38 80 9d e5                                      ldr r8, [sp, #0x38]
005f45ac  5c c0 8d e5                                      str ip, [sp, #0x5c]
005f45b0  07 e0 03 e0                                      and lr, r3, r7
005f45b4  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005f45b8  34 70 9d e5                                      ldr r7, [sp, #0x34]
005f45bc  33 88 a0 e1                                      lsr r8, r3, r8
005f45c0  18 87 0c e0                                      and r8, ip, r8, lsl r7
005f45c4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005f45c8  54 80 8d e5                                      str r8, [sp, #0x54]
005f45cc  0c 80 9d e5                                      ldr r8, [sp, #0xc]
005f45d0  33 3c a0 e1                                      lsr r3, r3, ip
005f45d4  3e e8 a0 e1                                      lsr lr, lr, r8
005f45d8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
005f45dc  5c 80 9d e5                                      ldr r8, [sp, #0x5c]
005f45e0  20 70 9d e5                                      ldr r7, [sp, #0x20]
005f45e4  0a 50 85 e0                                      add r5, r5, sl
005f45e8  18 7c 07 e0                                      and r7, r7, r8, lsl ip
005f45ec  5c 70 8d e5                                      str r7, [sp, #0x5c]
005f45f0  58 70 9d e5                                      ldr r7, [sp, #0x58]
005f45f4  10 80 9d e5                                      ldr r8, [sp, #0x10]
005f45f8  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
005f45fc  1e e8 87 e1                                      orr lr, r7, lr, lsl r8
005f4600  58 e0 8d e5                                      str lr, [sp, #0x58]
005f4604  18 e0 9d e5                                      ldr lr, [sp, #0x18]
005f4608  04 80 9d e5                                      ldr r8, [sp, #4]
005f460c  13 3e 0c e0                                      and r3, ip, r3, lsl lr
005f4610  54 c0 9d e5                                      ldr ip, [sp, #0x54]
005f4614  5c e0 9d e5                                      ldr lr, [sp, #0x5c]
005f4618  0c 70 88 e1                                      orr r7, r8, ip
005f461c  0e c0 87 e1                                      orr ip, r7, lr
005f4620  40 80 9d e5                                      ldr r8, [sp, #0x40]
005f4624  58 70 9d e5                                      ldr r7, [sp, #0x58]
005f4628  03 30 8c e1                                      orr r3, ip, r3
005f462c  08 e0 07 e0                                      and lr, r7, r8
005f4630  0e 30 83 e1                                      orr r3, r3, lr
005f4634  04 30 c6 e7                                      strb r3, [r6, r4]
005f4638  8a 68 f4 eb                                      bl #0x30e868
005f463c  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
005f4640  01 40 84 e2                                      add r4, r4, #1
005f4644  04 00 5c e1                                      cmp ip, r4
005f4648  a4 ff ff 1a                                      bne #0x5f44e0
005f464c  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
005f4650  44 10 9d e5                                      ldr r1, [sp, #0x44]
005f4654  50 20 9d e5                                      ldr r2, [sp, #0x50]
005f4658  01 00 80 e0                                      add r0, r0, r1
005f465c  02 60 86 e0                                      add r6, r6, r2
005f4660  00 00 56 e1                                      cmp r6, r0
005f4664  4c 00 8d e5                                      str r0, [sp, #0x4c]
005f4668  1b fd ff 3a                                      blo #0x5f3adc
005f466c  00 50 a0 e1                                      mov r5, r0
005f4670  96 ff ff ea                                      b #0x5f44d0
005f4674  14 a0 9d e5                                      ldr sl, [sp, #0x14]
005f4678  00 00 5a e3                                      cmp sl, #0
005f467c  b3 01 00 1a                                      bne #0x5f4d50
005f4680  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f4684  00 00 5b e3                                      cmp fp, #0
005f4688  13 fd ff 0a                                      beq #0x5f3adc
005f468c  ac c0 8d e2                                      add ip, sp, #0xac
005f4690  20 40 8d e5                                      str r4, [sp, #0x20]
005f4694  28 40 8d e5                                      str r4, [sp, #0x28]
005f4698  0c 40 8d e5                                      str r4, [sp, #0xc]
005f469c  14 c0 8d e5                                      str ip, [sp, #0x14]
005f46a0  10 50 8d e5                                      str r5, [sp, #0x10]
005f46a4  10 30 9d e5                                      ldr r3, [sp, #0x10]
005f46a8  00 00 53 e3                                      cmp r3, #0
005f46ac  00 50 a0 13                                      movne r5, #0
005f46b0  44 00 00 0a                                      beq #0x5f47c8
005f46b4  04 10 a0 e1                                      mov r1, r4
005f46b8  18 20 9d e5                                      ldr r2, [sp, #0x18]
005f46bc  14 00 9d e5                                      ldr r0, [sp, #0x14]
005f46c0  68 68 f4 eb                                      bl #0x30e868
005f46c4  ac 00 dd e5                                      ldrb r0, [sp, #0xac]
005f46c8  84 c0 9d e5                                      ldr ip, [sp, #0x84]
005f46cc  78 20 dd e5                                      ldrb r2, [sp, #0x78]
005f46d0  88 10 9d e5                                      ldr r1, [sp, #0x88]
005f46d4  79 30 dd e5                                      ldrb r3, [sp, #0x79]
005f46d8  0c c0 00 e0                                      and ip, r0, ip
005f46dc  3c c2 a0 e1                                      lsr ip, ip, r2
005f46e0  01 10 00 e0                                      and r1, r0, r1
005f46e4  7d 20 dd e5                                      ldrb r2, [sp, #0x7d]
005f46e8  31 13 a0 e1                                      lsr r1, r1, r3
005f46ec  11 22 a0 e1                                      lsl r2, r1, r2
005f46f0  8c 70 9d e5                                      ldr r7, [sp, #0x8c]
005f46f4  7a 60 dd e5                                      ldrb r6, [sp, #0x7a]
005f46f8  7e 30 dd e5                                      ldrb r3, [sp, #0x7e]
005f46fc  07 70 00 e0                                      and r7, r0, r7
005f4700  37 66 a0 e1                                      lsr r6, r7, r6
005f4704  16 33 a0 e1                                      lsl r3, r6, r3
005f4708  7c 80 dd e5                                      ldrb r8, [sp, #0x7c]
005f470c  04 20 8d e5                                      str r2, [sp, #4]
005f4710  94 20 9d e5                                      ldr r2, [sp, #0x94]
005f4714  1c c8 a0 e1                                      lsl ip, ip, r8
005f4718  9d 80 dd e5                                      ldrb r8, [sp, #0x9d]
005f471c  02 20 00 e0                                      and r2, r0, r2
005f4720  7b 90 dd e5                                      ldrb sb, [sp, #0x7b]
005f4724  32 28 a0 e1                                      lsr r2, r2, r8
005f4728  90 70 9d e5                                      ldr r7, [sp, #0x90]
005f472c  98 80 9d e5                                      ldr r8, [sp, #0x98]
005f4730  7f a0 dd e5                                      ldrb sl, [sp, #0x7f]
005f4734  30 99 a0 e1                                      lsr sb, r0, sb
005f4738  07 70 00 e0                                      and r7, r0, r7
005f473c  08 00 00 e0                                      and r0, r0, r8
005f4740  74 80 9d e5                                      ldr r8, [sp, #0x74]
005f4744  08 30 8d e5                                      str r3, [sp, #8]
005f4748  9c 30 dd e5                                      ldrb r3, [sp, #0x9c]
005f474c  9f 60 dd e5                                      ldrb r6, [sp, #0x9f]
005f4750  19 8a 08 e0                                      and r8, r8, sb, lsl sl
005f4754  37 73 a0 e1                                      lsr r7, r7, r3
005f4758  a0 30 dd e5                                      ldrb r3, [sp, #0xa0]
005f475c  17 c6 8c e1                                      orr ip, ip, r7, lsl r6
005f4760  04 60 9d e5                                      ldr r6, [sp, #4]
005f4764  9e 10 dd e5                                      ldrb r1, [sp, #0x9e]
005f4768  a1 b0 dd e5                                      ldrb fp, [sp, #0xa1]
005f476c  12 33 86 e1                                      orr r3, r6, r2, lsl r3
005f4770  08 70 9d e5                                      ldr r7, [sp, #8]
005f4774  30 11 a0 e1                                      lsr r1, r0, r1
005f4778  11 1b 87 e1                                      orr r1, r7, r1, lsl fp
005f477c  80 20 9d e5                                      ldr r2, [sp, #0x80]
005f4780  02 80 88 e1                                      orr r8, r8, r2
005f4784  68 20 9d e5                                      ldr r2, [sp, #0x68]
005f4788  02 c0 0c e0                                      and ip, ip, r2
005f478c  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
005f4790  0c 80 88 e1                                      orr r8, r8, ip
005f4794  02 30 03 e0                                      and r3, r3, r2
005f4798  03 80 88 e1                                      orr r8, r8, r3
005f479c  70 30 9d e5                                      ldr r3, [sp, #0x70]
005f47a0  03 10 01 e0                                      and r1, r1, r3
005f47a4  01 10 88 e1                                      orr r1, r8, r1
005f47a8  0c 80 9d e5                                      ldr r8, [sp, #0xc]
005f47ac  05 10 c8 e7                                      strb r1, [r8, r5]
005f47b0  10 90 9d e5                                      ldr sb, [sp, #0x10]
005f47b4  18 a0 9d e5                                      ldr sl, [sp, #0x18]
005f47b8  01 50 85 e2                                      add r5, r5, #1
005f47bc  05 00 59 e1                                      cmp sb, r5
005f47c0  0a 40 84 e0                                      add r4, r4, sl
005f47c4  ba ff ff 1a                                      bne #0x5f46b4
005f47c8  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f47cc  01 b0 5b e2                                      subs fp, fp, #1
005f47d0  e4 b0 8d e5                                      str fp, [sp, #0xe4]
005f47d4  c0 fc ff 0a                                      beq #0x5f3adc
005f47d8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
005f47dc  20 10 9d e5                                      ldr r1, [sp, #0x20]
005f47e0  44 00 9d e5                                      ldr r0, [sp, #0x44]
005f47e4  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005f47e8  00 40 8c e0                                      add r4, ip, r0
005f47ec  02 10 81 e0                                      add r1, r1, r2
005f47f0  20 10 8d e5                                      str r1, [sp, #0x20]
005f47f4  0c 10 8d e5                                      str r1, [sp, #0xc]
005f47f8  28 40 8d e5                                      str r4, [sp, #0x28]
005f47fc  a8 ff ff ea                                      b #0x5f46a4
005f4800  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f4804  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
005f4808  01 60 40 e2                                      sub r6, r0, #1
005f480c  91 46 26 e0                                      mla r6, r1, r6, r4
005f4810  06 00 54 e1                                      cmp r4, r6
005f4814  b0 fc ff 8a                                      bhi #0x5f3adc
005f4818  00 20 61 e2                                      rsb r2, r1, #0
005f481c  04 b0 a0 e1                                      mov fp, r4
005f4820  24 20 8d e5                                      str r2, [sp, #0x24]
005f4824  04 a0 a0 e1                                      mov sl, r4
005f4828  ac 90 8d e2                                      add sb, sp, #0xac
005f482c  00 00 55 e3                                      cmp r5, #0
005f4830  00 40 a0 13                                      movne r4, #0
005f4834  0f 00 00 0a                                      beq #0x5f4878
005f4838  04 10 d6 e7                                      ldrb r1, [r6, r4]
005f483c  08 00 a0 e1                                      mov r0, r8
005f4840  e3 e5 ff eb                                      bl #0x5edfd4
005f4844  ac 00 cd e5                                      strb r0, [sp, #0xac]
005f4848  00 10 da e5                                      ldrb r1, [sl]
005f484c  08 00 a0 e1                                      mov r0, r8
005f4850  df e5 ff eb                                      bl #0x5edfd4
005f4854  09 10 a0 e1                                      mov r1, sb
005f4858  04 00 c6 e7                                      strb r0, [r6, r4]
005f485c  07 20 a0 e1                                      mov r2, r7
005f4860  0a 00 a0 e1                                      mov r0, sl
005f4864  01 40 84 e2                                      add r4, r4, #1
005f4868  fe 67 f4 eb                                      bl #0x30e868
005f486c  04 00 55 e1                                      cmp r5, r4
005f4870  07 a0 8a e0                                      add sl, sl, r7
005f4874  ef ff ff 1a                                      bne #0x5f4838
005f4878  44 30 9d e5                                      ldr r3, [sp, #0x44]
005f487c  24 40 9d e5                                      ldr r4, [sp, #0x24]
005f4880  03 a0 8b e0                                      add sl, fp, r3
005f4884  04 60 86 e0                                      add r6, r6, r4
005f4888  06 00 5a e1                                      cmp sl, r6
005f488c  92 fc ff 8a                                      bhi #0x5f3adc
005f4890  0a b0 a0 e1                                      mov fp, sl
005f4894  e4 ff ff ea                                      b #0x5f482c
005f4898  e4 60 9d e5                                      ldr r6, [sp, #0xe4]
005f489c  dc 70 9d e5                                      ldr r7, [sp, #0xdc]
005f48a0  01 30 46 e2                                      sub r3, r6, #1
005f48a4  97 43 23 e0                                      mla r3, r7, r3, r4
005f48a8  00 80 67 e2                                      rsb r8, r7, #0
005f48ac  03 00 54 e1                                      cmp r4, r3
005f48b0  48 30 8d e5                                      str r3, [sp, #0x48]
005f48b4  5c 80 8d e5                                      str r8, [sp, #0x5c]
005f48b8  87 fc ff 8a                                      bhi #0x5f3adc
005f48bc  ac 90 8d e2                                      add sb, sp, #0xac
005f48c0  58 40 8d e5                                      str r4, [sp, #0x58]
005f48c4  04 60 a0 e1                                      mov r6, r4
005f48c8  54 90 8d e5                                      str sb, [sp, #0x54]
005f48cc  50 50 8d e5                                      str r5, [sp, #0x50]
005f48d0  50 10 9d e5                                      ldr r1, [sp, #0x50]
005f48d4  00 00 51 e3                                      cmp r1, #0
005f48d8  00 40 a0 13                                      movne r4, #0
005f48dc  72 00 00 0a                                      beq #0x5f4aac
005f48e0  48 a0 9d e5                                      ldr sl, [sp, #0x48]
005f48e4  90 b0 9d e5                                      ldr fp, [sp, #0x90]
005f48e8  78 70 dd e5                                      ldrb r7, [sp, #0x78]
005f48ec  04 90 da e7                                      ldrb sb, [sl, r4]
005f48f0  94 c0 9d e5                                      ldr ip, [sp, #0x94]
005f48f4  98 00 9d e5                                      ldr r0, [sp, #0x98]
005f48f8  0b 10 09 e0                                      and r1, sb, fp
005f48fc  79 50 dd e5                                      ldrb r5, [sp, #0x79]
005f4900  7a e0 dd e5                                      ldrb lr, [sp, #0x7a]
005f4904  84 a0 9d e5                                      ldr sl, [sp, #0x84]
005f4908  31 17 a0 e1                                      lsr r1, r1, r7
005f490c  0c 20 09 e0                                      and r2, sb, ip
005f4910  00 30 09 e0                                      and r3, sb, r0
005f4914  81 10 a0 e1                                      lsl r1, r1, #1
005f4918  b1 80 9a e1                                      ldrh r8, [sl, r1]
005f491c  88 b0 9d e5                                      ldr fp, [sp, #0x88]
005f4920  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
005f4924  9e 10 dd e5                                      ldrb r1, [sp, #0x9e]
005f4928  32 25 a0 e1                                      lsr r2, r2, r5
005f492c  33 3e a0 e1                                      lsr r3, r3, lr
005f4930  82 20 a0 e1                                      lsl r2, r2, #1
005f4934  83 30 a0 e1                                      lsl r3, r3, #1
005f4938  b2 20 9b e1                                      ldrh r2, [fp, r2]
005f493c  b3 30 90 e1                                      ldrh r3, [r0, r3]
005f4940  2c 10 8d e5                                      str r1, [sp, #0x2c]
005f4944  7d 00 dd e5                                      ldrb r0, [sp, #0x7d]
005f4948  7b 10 dd e5                                      ldrb r1, [sp, #0x7b]
005f494c  9c c0 dd e5                                      ldrb ip, [sp, #0x9c]
005f4950  7c b0 dd e5                                      ldrb fp, [sp, #0x7c]
005f4954  18 00 8d e5                                      str r0, [sp, #0x18]
005f4958  38 10 8d e5                                      str r1, [sp, #0x38]
005f495c  7e 00 dd e5                                      ldrb r0, [sp, #0x7e]
005f4960  68 10 9d e5                                      ldr r1, [sp, #0x68]
005f4964  58 8c a0 e1                                      asr r8, r8, ip
005f4968  30 00 8d e5                                      str r0, [sp, #0x30]
005f496c  18 8b 01 e0                                      and r8, r1, r8, lsl fp
005f4970  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005f4974  7f 10 dd e5                                      ldrb r1, [sp, #0x7f]
005f4978  9d a0 dd e5                                      ldrb sl, [sp, #0x9d]
005f497c  53 30 a0 e1                                      asr r3, r3, r0
005f4980  3c 10 8d e5                                      str r1, [sp, #0x3c]
005f4984  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
005f4988  18 10 9d e5                                      ldr r1, [sp, #0x18]
005f498c  52 2a a0 e1                                      asr r2, r2, sl
005f4990  12 21 00 e0                                      and r2, r0, r2, lsl r1
005f4994  70 00 9d e5                                      ldr r0, [sp, #0x70]
005f4998  30 10 9d e5                                      ldr r1, [sp, #0x30]
005f499c  04 20 8d e5                                      str r2, [sp, #4]
005f49a0  38 20 9d e5                                      ldr r2, [sp, #0x38]
005f49a4  13 31 00 e0                                      and r3, r0, r3, lsl r1
005f49a8  39 92 a0 e1                                      lsr sb, sb, r2
005f49ac  08 30 8d e5                                      str r3, [sp, #8]
005f49b0  74 20 9d e5                                      ldr r2, [sp, #0x74]
005f49b4  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005f49b8  06 00 a0 e1                                      mov r0, r6
005f49bc  54 10 9d e5                                      ldr r1, [sp, #0x54]
005f49c0  19 93 02 e0                                      and sb, r2, sb, lsl r3
005f49c4  80 20 9d e5                                      ldr r2, [sp, #0x80]
005f49c8  04 30 9d e5                                      ldr r3, [sp, #4]
005f49cc  02 80 88 e1                                      orr r8, r8, r2
005f49d0  03 20 88 e1                                      orr r2, r8, r3
005f49d4  08 80 9d e5                                      ldr r8, [sp, #8]
005f49d8  08 20 82 e1                                      orr r2, r2, r8
005f49dc  09 20 82 e1                                      orr r2, r2, sb
005f49e0  ac 20 cd e5                                      strb r2, [sp, #0xac]
005f49e4  00 30 d6 e5                                      ldrb r3, [r6]
005f49e8  90 90 9d e5                                      ldr sb, [sp, #0x90]
005f49ec  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
005f49f0  09 80 03 e0                                      and r8, r3, sb
005f49f4  94 90 9d e5                                      ldr sb, [sp, #0x94]
005f49f8  38 87 a0 e1                                      lsr r8, r8, r7
005f49fc  09 70 03 e0                                      and r7, r3, sb
005f4a00  98 90 9d e5                                      ldr sb, [sp, #0x98]
005f4a04  37 55 a0 e1                                      lsr r5, r7, r5
005f4a08  09 70 03 e0                                      and r7, r3, sb
005f4a0c  37 ee a0 e1                                      lsr lr, r7, lr
005f4a10  84 70 9d e5                                      ldr r7, [sp, #0x84]
005f4a14  88 80 a0 e1                                      lsl r8, r8, #1
005f4a18  88 90 9d e5                                      ldr sb, [sp, #0x88]
005f4a1c  b8 80 97 e1                                      ldrh r8, [r7, r8]
005f4a20  85 50 a0 e1                                      lsl r5, r5, #1
005f4a24  8c 70 9d e5                                      ldr r7, [sp, #0x8c]
005f4a28  b5 50 99 e1                                      ldrh r5, [sb, r5]
005f4a2c  58 cc a0 e1                                      asr ip, r8, ip
005f4a30  68 80 9d e5                                      ldr r8, [sp, #0x68]
005f4a34  8e e0 a0 e1                                      lsl lr, lr, #1
005f4a38  be e0 97 e1                                      ldrh lr, [r7, lr]
005f4a3c  2c 90 9d e5                                      ldr sb, [sp, #0x2c]
005f4a40  1c cb 08 e0                                      and ip, r8, ip, lsl fp
005f4a44  55 aa a0 e1                                      asr sl, r5, sl
005f4a48  6c b0 9d e5                                      ldr fp, [sp, #0x6c]
005f4a4c  18 50 9d e5                                      ldr r5, [sp, #0x18]
005f4a50  38 70 9d e5                                      ldr r7, [sp, #0x38]
005f4a54  70 80 9d e5                                      ldr r8, [sp, #0x70]
005f4a58  5e e9 a0 e1                                      asr lr, lr, sb
005f4a5c  30 90 9d e5                                      ldr sb, [sp, #0x30]
005f4a60  1a a5 0b e0                                      and sl, fp, sl, lsl r5
005f4a64  74 b0 9d e5                                      ldr fp, [sp, #0x74]
005f4a68  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
005f4a6c  33 37 a0 e1                                      lsr r3, r3, r7
005f4a70  1e e9 08 e0                                      and lr, r8, lr, lsl sb
005f4a74  13 35 0b e0                                      and r3, fp, r3, lsl r5
005f4a78  80 70 9d e5                                      ldr r7, [sp, #0x80]
005f4a7c  48 80 9d e5                                      ldr r8, [sp, #0x48]
005f4a80  02 60 86 e0                                      add r6, r6, r2
005f4a84  07 c0 8c e1                                      orr ip, ip, r7
005f4a88  0a a0 8c e1                                      orr sl, ip, sl
005f4a8c  0e e0 8a e1                                      orr lr, sl, lr
005f4a90  03 30 8e e1                                      orr r3, lr, r3
005f4a94  04 30 c8 e7                                      strb r3, [r8, r4]
005f4a98  72 67 f4 eb                                      bl #0x30e868
005f4a9c  50 90 9d e5                                      ldr sb, [sp, #0x50]
005f4aa0  01 40 84 e2                                      add r4, r4, #1
005f4aa4  04 00 59 e1                                      cmp sb, r4
005f4aa8  8c ff ff 1a                                      bne #0x5f48e0
005f4aac  58 a0 9d e5                                      ldr sl, [sp, #0x58]
005f4ab0  48 c0 9d e5                                      ldr ip, [sp, #0x48]
005f4ab4  44 b0 9d e5                                      ldr fp, [sp, #0x44]
005f4ab8  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005f4abc  0b a0 8a e0                                      add sl, sl, fp
005f4ac0  00 c0 8c e0                                      add ip, ip, r0
005f4ac4  0a 00 5c e1                                      cmp ip, sl
005f4ac8  58 a0 8d e5                                      str sl, [sp, #0x58]
005f4acc  48 c0 8d e5                                      str ip, [sp, #0x48]
005f4ad0  01 fc ff 3a                                      blo #0x5f3adc
005f4ad4  0a 60 a0 e1                                      mov r6, sl
005f4ad8  7c ff ff ea                                      b #0x5f48d0
005f4adc  e4 a0 9d e5                                      ldr sl, [sp, #0xe4]
005f4ae0  dc b0 9d e5                                      ldr fp, [sp, #0xdc]
005f4ae4  01 60 4a e2                                      sub r6, sl, #1
005f4ae8  9b 46 26 e0                                      mla r6, fp, r6, r4
005f4aec  00 c0 6b e2                                      rsb ip, fp, #0
005f4af0  06 00 54 e1                                      cmp r4, r6
005f4af4  04 b0 a0 91                                      movls fp, r4
005f4af8  24 c0 8d e5                                      str ip, [sp, #0x24]
005f4afc  0b a0 a0 91                                      movls sl, fp
005f4b00  ac 90 8d 92                                      addls sb, sp, #0xac
005f4b04  f4 fb ff 8a                                      bhi #0x5f3adc
005f4b08  00 00 55 e3                                      cmp r5, #0
005f4b0c  00 40 a0 13                                      movne r4, #0
005f4b10  0f 00 00 0a                                      beq #0x5f4b54
005f4b14  04 10 d6 e7                                      ldrb r1, [r6, r4]
005f4b18  08 00 a0 e1                                      mov r0, r8
005f4b1c  ee e4 ff eb                                      bl #0x5ededc
005f4b20  ac 00 cd e5                                      strb r0, [sp, #0xac]
005f4b24  00 10 da e5                                      ldrb r1, [sl]
005f4b28  08 00 a0 e1                                      mov r0, r8
005f4b2c  ea e4 ff eb                                      bl #0x5ededc
005f4b30  09 10 a0 e1                                      mov r1, sb
005f4b34  04 00 c6 e7                                      strb r0, [r6, r4]
005f4b38  07 20 a0 e1                                      mov r2, r7
005f4b3c  0a 00 a0 e1                                      mov r0, sl
005f4b40  01 40 84 e2                                      add r4, r4, #1
005f4b44  47 67 f4 eb                                      bl #0x30e868
005f4b48  04 00 55 e1                                      cmp r5, r4
005f4b4c  07 a0 8a e0                                      add sl, sl, r7
005f4b50  ef ff ff 1a                                      bne #0x5f4b14
005f4b54  44 00 9d e5                                      ldr r0, [sp, #0x44]
005f4b58  24 10 9d e5                                      ldr r1, [sp, #0x24]
005f4b5c  00 a0 8b e0                                      add sl, fp, r0
005f4b60  01 60 86 e0                                      add r6, r6, r1
005f4b64  0a 00 56 e1                                      cmp r6, sl
005f4b68  db fb ff 3a                                      blo #0x5f3adc
005f4b6c  0a b0 a0 e1                                      mov fp, sl
005f4b70  e4 ff ff ea                                      b #0x5f4b08
005f4b74  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f4b78  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
005f4b7c  01 30 40 e2                                      sub r3, r0, #1
005f4b80  91 43 23 e0                                      mla r3, r1, r3, r4
005f4b84  00 20 61 e2                                      rsb r2, r1, #0
005f4b88  03 00 54 e1                                      cmp r4, r3
005f4b8c  38 20 8d e5                                      str r2, [sp, #0x38]
005f4b90  d1 fb ff 8a                                      bhi #0x5f3adc
005f4b94  68 60 9d e5                                      ldr r6, [sp, #0x68]
005f4b98  34 40 8d e5                                      str r4, [sp, #0x34]
005f4b9c  79 90 dd e5                                      ldrb sb, [sp, #0x79]
005f4ba0  7c 40 dd e5                                      ldrb r4, [sp, #0x7c]
005f4ba4  20 60 8d e5                                      str r6, [sp, #0x20]
005f4ba8  7b 60 dd e5                                      ldrb r6, [sp, #0x7b]
005f4bac  7d b0 dd e5                                      ldrb fp, [sp, #0x7d]
005f4bb0  78 20 dd e5                                      ldrb r2, [sp, #0x78]
005f4bb4  28 40 8d e5                                      str r4, [sp, #0x28]
005f4bb8  14 90 8d e5                                      str sb, [sp, #0x14]
005f4bbc  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
005f4bc0  7f 90 dd e5                                      ldrb sb, [sp, #0x7f]
005f4bc4  7a 00 dd e5                                      ldrb r0, [sp, #0x7a]
005f4bc8  7e 10 dd e5                                      ldrb r1, [sp, #0x7e]
005f4bcc  70 40 9d e5                                      ldr r4, [sp, #0x70]
005f4bd0  04 60 8d e5                                      str r6, [sp, #4]
005f4bd4  34 60 9d e5                                      ldr r6, [sp, #0x34]
005f4bd8  18 b0 8d e5                                      str fp, [sp, #0x18]
005f4bdc  ac b0 8d e2                                      add fp, sp, #0xac
005f4be0  24 90 8d e5                                      str sb, [sp, #0x24]
005f4be4  30 b0 8d e5                                      str fp, [sp, #0x30]
005f4be8  2c 50 8d e5                                      str r5, [sp, #0x2c]
005f4bec  1c c0 8d e5                                      str ip, [sp, #0x1c]
005f4bf0  10 00 8d e5                                      str r0, [sp, #0x10]
005f4bf4  0c 10 8d e5                                      str r1, [sp, #0xc]
005f4bf8  08 40 8d e5                                      str r4, [sp, #8]
005f4bfc  08 90 a0 e1                                      mov sb, r8
005f4c00  02 b0 a0 e1                                      mov fp, r2
005f4c04  03 50 a0 e1                                      mov r5, r3
005f4c08  2c 40 9d e5                                      ldr r4, [sp, #0x2c]
005f4c0c  00 00 54 e3                                      cmp r4, #0
005f4c10  00 40 a0 13                                      movne r4, #0
005f4c14  44 00 00 0a                                      beq #0x5f4d2c
005f4c18  04 30 d5 e7                                      ldrb r3, [r5, r4]
005f4c1c  14 e0 9d e5                                      ldr lr, [sp, #0x14]
005f4c20  20 80 9d e5                                      ldr r8, [sp, #0x20]
005f4c24  33 cb a0 e1                                      lsr ip, r3, fp
005f4c28  33 2e a0 e1                                      lsr r2, r3, lr
005f4c2c  28 e0 9d e5                                      ldr lr, [sp, #0x28]
005f4c30  06 00 a0 e1                                      mov r0, r6
005f4c34  30 10 9d e5                                      ldr r1, [sp, #0x30]
005f4c38  1c ce 08 e0                                      and ip, r8, ip, lsl lr
005f4c3c  10 80 9d e5                                      ldr r8, [sp, #0x10]
005f4c40  3c c0 8d e5                                      str ip, [sp, #0x3c]
005f4c44  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
005f4c48  33 e8 a0 e1                                      lsr lr, r3, r8
005f4c4c  18 80 9d e5                                      ldr r8, [sp, #0x18]
005f4c50  12 28 0c e0                                      and r2, ip, r2, lsl r8
005f4c54  04 c0 9d e5                                      ldr ip, [sp, #4]
005f4c58  08 80 9d e5                                      ldr r8, [sp, #8]
005f4c5c  33 3c a0 e1                                      lsr r3, r3, ip
005f4c60  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005f4c64  1e ec 08 e0                                      and lr, r8, lr, lsl ip
005f4c68  24 80 9d e5                                      ldr r8, [sp, #0x24]
005f4c6c  13 38 07 e0                                      and r3, r7, r3, lsl r8
005f4c70  3c 80 9d e5                                      ldr r8, [sp, #0x3c]
005f4c74  08 c0 89 e1                                      orr ip, sb, r8
005f4c78  02 c0 8c e1                                      orr ip, ip, r2
005f4c7c  0e c0 8c e1                                      orr ip, ip, lr
005f4c80  03 30 8c e1                                      orr r3, ip, r3
005f4c84  ac 30 cd e5                                      strb r3, [sp, #0xac]
005f4c88  00 30 d6 e5                                      ldrb r3, [r6]
005f4c8c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005f4c90  20 80 9d e5                                      ldr r8, [sp, #0x20]
005f4c94  33 eb a0 e1                                      lsr lr, r3, fp
005f4c98  33 cc a0 e1                                      lsr ip, r3, ip
005f4c9c  40 c0 8d e5                                      str ip, [sp, #0x40]
005f4ca0  28 c0 9d e5                                      ldr ip, [sp, #0x28]
005f4ca4  0a 20 a0 e1                                      mov r2, sl
005f4ca8  0a 60 86 e0                                      add r6, r6, sl
005f4cac  1e ec 08 e0                                      and lr, r8, lr, lsl ip
005f4cb0  3c e0 8d e5                                      str lr, [sp, #0x3c]
005f4cb4  10 e0 9d e5                                      ldr lr, [sp, #0x10]
005f4cb8  40 c0 9d e5                                      ldr ip, [sp, #0x40]
005f4cbc  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
005f4cc0  33 ee a0 e1                                      lsr lr, r3, lr
005f4cc4  48 e0 8d e5                                      str lr, [sp, #0x48]
005f4cc8  18 e0 9d e5                                      ldr lr, [sp, #0x18]
005f4ccc  1c 8e 08 e0                                      and r8, r8, ip, lsl lr
005f4cd0  40 80 8d e5                                      str r8, [sp, #0x40]
005f4cd4  04 80 9d e5                                      ldr r8, [sp, #4]
005f4cd8  48 e0 9d e5                                      ldr lr, [sp, #0x48]
005f4cdc  08 c0 9d e5                                      ldr ip, [sp, #8]
005f4ce0  33 38 a0 e1                                      lsr r3, r3, r8
005f4ce4  0c 80 9d e5                                      ldr r8, [sp, #0xc]
005f4ce8  1e c8 0c e0                                      and ip, ip, lr, lsl r8
005f4cec  48 c0 8d e5                                      str ip, [sp, #0x48]
005f4cf0  24 c0 9d e5                                      ldr ip, [sp, #0x24]
005f4cf4  3c e0 9d e5                                      ldr lr, [sp, #0x3c]
005f4cf8  13 3c 07 e0                                      and r3, r7, r3, lsl ip
005f4cfc  40 c0 9d e5                                      ldr ip, [sp, #0x40]
005f4d00  0e 80 89 e1                                      orr r8, sb, lr
005f4d04  48 e0 9d e5                                      ldr lr, [sp, #0x48]
005f4d08  0c 80 88 e1                                      orr r8, r8, ip
005f4d0c  0e c0 88 e1                                      orr ip, r8, lr
005f4d10  03 30 8c e1                                      orr r3, ip, r3
005f4d14  04 30 c5 e7                                      strb r3, [r5, r4]
005f4d18  d2 66 f4 eb                                      bl #0x30e868
005f4d1c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005f4d20  01 40 84 e2                                      add r4, r4, #1
005f4d24  04 00 50 e1                                      cmp r0, r4
005f4d28  ba ff ff 1a                                      bne #0x5f4c18
005f4d2c  34 10 9d e5                                      ldr r1, [sp, #0x34]
005f4d30  44 20 9d e5                                      ldr r2, [sp, #0x44]
005f4d34  38 30 9d e5                                      ldr r3, [sp, #0x38]
005f4d38  02 60 81 e0                                      add r6, r1, r2
005f4d3c  03 50 85 e0                                      add r5, r5, r3
005f4d40  06 00 55 e1                                      cmp r5, r6
005f4d44  64 fb ff 3a                                      blo #0x5f3adc
005f4d48  34 60 8d e5                                      str r6, [sp, #0x34]
005f4d4c  ad ff ff ea                                      b #0x5f4c08
005f4d50  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f4d54  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
005f4d58  01 30 40 e2                                      sub r3, r0, #1
005f4d5c  91 43 23 e0                                      mla r3, r1, r3, r4
005f4d60  00 20 61 e2                                      rsb r2, r1, #0
005f4d64  03 00 54 e1                                      cmp r4, r3
005f4d68  54 30 8d e5                                      str r3, [sp, #0x54]
005f4d6c  64 20 8d e5                                      str r2, [sp, #0x64]
005f4d70  59 fb ff 8a                                      bhi #0x5f3adc
005f4d74  ac 30 8d e2                                      add r3, sp, #0xac
005f4d78  60 40 8d e5                                      str r4, [sp, #0x60]
005f4d7c  04 60 a0 e1                                      mov r6, r4
005f4d80  5c 30 8d e5                                      str r3, [sp, #0x5c]
005f4d84  58 50 8d e5                                      str r5, [sp, #0x58]
005f4d88  58 00 9d e5                                      ldr r0, [sp, #0x58]
005f4d8c  00 00 50 e3                                      cmp r0, #0
005f4d90  00 40 a0 13                                      movne r4, #0
005f4d94  88 00 00 0a                                      beq #0x5f4fbc
005f4d98  54 50 9d e5                                      ldr r5, [sp, #0x54]
005f4d9c  84 90 9d e5                                      ldr sb, [sp, #0x84]
005f4da0  88 00 9d e5                                      ldr r0, [sp, #0x88]
005f4da4  04 30 d5 e7                                      ldrb r3, [r5, r4]
005f4da8  79 70 dd e5                                      ldrb r7, [sp, #0x79]
005f4dac  7d c0 dd e5                                      ldrb ip, [sp, #0x7d]
005f4db0  09 b0 03 e0                                      and fp, r3, sb
005f4db4  00 a0 03 e0                                      and sl, r3, r0
005f4db8  8c 90 9d e5                                      ldr sb, [sp, #0x8c]
005f4dbc  7a e0 dd e5                                      ldrb lr, [sp, #0x7a]
005f4dc0  3a a7 a0 e1                                      lsr sl, sl, r7
005f4dc4  7e 20 dd e5                                      ldrb r2, [sp, #0x7e]
005f4dc8  09 10 03 e0                                      and r1, r3, sb
005f4dcc  1a ac a0 e1                                      lsl sl, sl, ip
005f4dd0  31 1e a0 e1                                      lsr r1, r1, lr
005f4dd4  11 12 a0 e1                                      lsl r1, r1, r2
005f4dd8  78 80 dd e5                                      ldrb r8, [sp, #0x78]
005f4ddc  7c 50 dd e5                                      ldrb r5, [sp, #0x7c]
005f4de0  14 a0 8d e5                                      str sl, [sp, #0x14]
005f4de4  3b b8 a0 e1                                      lsr fp, fp, r8
005f4de8  1b b5 a0 e1                                      lsl fp, fp, r5
005f4dec  9c a0 dd e5                                      ldrb sl, [sp, #0x9c]
005f4df0  9d 00 dd e5                                      ldrb r0, [sp, #0x9d]
005f4df4  9e 90 dd e5                                      ldrb sb, [sp, #0x9e]
005f4df8  04 a0 8d e5                                      str sl, [sp, #4]
005f4dfc  10 10 8d e5                                      str r1, [sp, #0x10]
005f4e00  90 a0 9d e5                                      ldr sl, [sp, #0x90]
005f4e04  9f 10 dd e5                                      ldrb r1, [sp, #0x9f]
005f4e08  20 00 8d e5                                      str r0, [sp, #0x20]
005f4e0c  38 90 8d e5                                      str sb, [sp, #0x38]
005f4e10  08 10 8d e5                                      str r1, [sp, #8]
005f4e14  04 00 9d e5                                      ldr r0, [sp, #4]
005f4e18  0a 10 03 e0                                      and r1, r3, sl
005f4e1c  a0 90 dd e5                                      ldrb sb, [sp, #0xa0]
005f4e20  94 a0 9d e5                                      ldr sl, [sp, #0x94]
005f4e24  31 10 a0 e1                                      lsr r1, r1, r0
005f4e28  28 90 8d e5                                      str sb, [sp, #0x28]
005f4e2c  20 00 9d e5                                      ldr r0, [sp, #0x20]
005f4e30  0a 90 03 e0                                      and sb, r3, sl
005f4e34  a1 a0 dd e5                                      ldrb sl, [sp, #0xa1]
005f4e38  39 90 a0 e1                                      lsr sb, sb, r0
005f4e3c  3c a0 8d e5                                      str sl, [sp, #0x3c]
005f4e40  7b 00 dd e5                                      ldrb r0, [sp, #0x7b]
005f4e44  98 a0 9d e5                                      ldr sl, [sp, #0x98]
005f4e48  4c 00 8d e5                                      str r0, [sp, #0x4c]
005f4e4c  0a 00 03 e0                                      and r0, r3, sl
005f4e50  08 a0 9d e5                                      ldr sl, [sp, #8]
005f4e54  11 ba 8b e1                                      orr fp, fp, r1, lsl sl
005f4e58  0c b0 8d e5                                      str fp, [sp, #0xc]
005f4e5c  14 10 9d e5                                      ldr r1, [sp, #0x14]
005f4e60  28 a0 9d e5                                      ldr sl, [sp, #0x28]
005f4e64  38 b0 9d e5                                      ldr fp, [sp, #0x38]
005f4e68  19 9a 81 e1                                      orr sb, r1, sb, lsl sl
005f4e6c  30 0b a0 e1                                      lsr r0, r0, fp
005f4e70  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
005f4e74  10 b0 9d e5                                      ldr fp, [sp, #0x10]
005f4e78  4c a0 9d e5                                      ldr sl, [sp, #0x4c]
005f4e7c  14 90 8d e5                                      str sb, [sp, #0x14]
005f4e80  10 01 8b e1                                      orr r0, fp, r0, lsl r1
005f4e84  7f 90 dd e5                                      ldrb sb, [sp, #0x7f]
005f4e88  74 b0 9d e5                                      ldr fp, [sp, #0x74]
005f4e8c  33 3a a0 e1                                      lsr r3, r3, sl
005f4e90  13 39 0b e0                                      and r3, fp, r3, lsl sb
005f4e94  68 a0 9d e5                                      ldr sl, [sp, #0x68]
005f4e98  10 30 8d e5                                      str r3, [sp, #0x10]
005f4e9c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005f4ea0  80 b0 9d e5                                      ldr fp, [sp, #0x80]
005f4ea4  0a 10 03 e0                                      and r1, r3, sl
005f4ea8  0b 10 81 e1                                      orr r1, r1, fp
005f4eac  14 30 9d e5                                      ldr r3, [sp, #0x14]
005f4eb0  6c b0 9d e5                                      ldr fp, [sp, #0x6c]
005f4eb4  0b a0 03 e0                                      and sl, r3, fp
005f4eb8  0a a0 81 e1                                      orr sl, r1, sl
005f4ebc  70 10 9d e5                                      ldr r1, [sp, #0x70]
005f4ec0  10 30 9d e5                                      ldr r3, [sp, #0x10]
005f4ec4  84 b0 9d e5                                      ldr fp, [sp, #0x84]
005f4ec8  01 00 00 e0                                      and r0, r0, r1
005f4ecc  00 00 8a e1                                      orr r0, sl, r0
005f4ed0  03 00 80 e1                                      orr r0, r0, r3
005f4ed4  ac 00 cd e5                                      strb r0, [sp, #0xac]
005f4ed8  00 30 d6 e5                                      ldrb r3, [r6]
005f4edc  06 00 a0 e1                                      mov r0, r6
005f4ee0  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
005f4ee4  0b a0 03 e0                                      and sl, r3, fp
005f4ee8  88 b0 9d e5                                      ldr fp, [sp, #0x88]
005f4eec  3a a8 a0 e1                                      lsr sl, sl, r8
005f4ef0  0b 80 03 e0                                      and r8, r3, fp
005f4ef4  38 77 a0 e1                                      lsr r7, r8, r7
005f4ef8  1a a5 a0 e1                                      lsl sl, sl, r5
005f4efc  8c 80 9d e5                                      ldr r8, [sp, #0x8c]
005f4f00  17 7c a0 e1                                      lsl r7, r7, ip
005f4f04  08 b0 03 e0                                      and fp, r3, r8
005f4f08  3b ee a0 e1                                      lsr lr, fp, lr
005f4f0c  1e e2 a0 e1                                      lsl lr, lr, r2
005f4f10  90 b0 9d e5                                      ldr fp, [sp, #0x90]
005f4f14  04 20 9d e5                                      ldr r2, [sp, #4]
005f4f18  94 50 9d e5                                      ldr r5, [sp, #0x94]
005f4f1c  0b c0 03 e0                                      and ip, r3, fp
005f4f20  3c c2 a0 e1                                      lsr ip, ip, r2
005f4f24  05 20 03 e0                                      and r2, r3, r5
005f4f28  08 50 9d e5                                      ldr r5, [sp, #8]
005f4f2c  20 80 9d e5                                      ldr r8, [sp, #0x20]
005f4f30  98 b0 9d e5                                      ldr fp, [sp, #0x98]
005f4f34  1c a5 8a e1                                      orr sl, sl, ip, lsl r5
005f4f38  28 c0 9d e5                                      ldr ip, [sp, #0x28]
005f4f3c  32 28 a0 e1                                      lsr r2, r2, r8
005f4f40  0b 80 03 e0                                      and r8, r3, fp
005f4f44  38 b0 9d e5                                      ldr fp, [sp, #0x38]
005f4f48  12 7c 87 e1                                      orr r7, r7, r2, lsl ip
005f4f4c  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
005f4f50  38 8b a0 e1                                      lsr r8, r8, fp
005f4f54  4c 50 9d e5                                      ldr r5, [sp, #0x4c]
005f4f58  18 e2 8e e1                                      orr lr, lr, r8, lsl r2
005f4f5c  74 80 9d e5                                      ldr r8, [sp, #0x74]
005f4f60  33 35 a0 e1                                      lsr r3, r3, r5
005f4f64  13 39 08 e0                                      and r3, r8, r3, lsl sb
005f4f68  68 90 9d e5                                      ldr sb, [sp, #0x68]
005f4f6c  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
005f4f70  80 b0 9d e5                                      ldr fp, [sp, #0x80]
005f4f74  70 20 9d e5                                      ldr r2, [sp, #0x70]
005f4f78  09 a0 0a e0                                      and sl, sl, sb
005f4f7c  0c 70 07 e0                                      and r7, r7, ip
005f4f80  0b a0 8a e1                                      orr sl, sl, fp
005f4f84  07 70 8a e1                                      orr r7, sl, r7
005f4f88  02 e0 0e e0                                      and lr, lr, r2
005f4f8c  54 50 9d e5                                      ldr r5, [sp, #0x54]
005f4f90  0e e0 87 e1                                      orr lr, r7, lr
005f4f94  03 30 8e e1                                      orr r3, lr, r3
005f4f98  04 30 c5 e7                                      strb r3, [r5, r4]
005f4f9c  18 20 9d e5                                      ldr r2, [sp, #0x18]
005f4fa0  30 66 f4 eb                                      bl #0x30e868
005f4fa4  58 70 9d e5                                      ldr r7, [sp, #0x58]
005f4fa8  18 80 9d e5                                      ldr r8, [sp, #0x18]
005f4fac  01 40 84 e2                                      add r4, r4, #1
005f4fb0  04 00 57 e1                                      cmp r7, r4
005f4fb4  08 60 86 e0                                      add r6, r6, r8
005f4fb8  76 ff ff 1a                                      bne #0x5f4d98
005f4fbc  54 b0 9d e5                                      ldr fp, [sp, #0x54]
005f4fc0  60 90 9d e5                                      ldr sb, [sp, #0x60]
005f4fc4  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005f4fc8  64 c0 9d e5                                      ldr ip, [sp, #0x64]
005f4fcc  0a 60 89 e0                                      add r6, sb, sl
005f4fd0  0c b0 8b e0                                      add fp, fp, ip
005f4fd4  06 00 5b e1                                      cmp fp, r6
005f4fd8  54 b0 8d e5                                      str fp, [sp, #0x54]
005f4fdc  be fa ff 3a                                      blo #0x5f3adc
005f4fe0  60 60 8d e5                                      str r6, [sp, #0x60]
005f4fe4  67 ff ff ea                                      b #0x5f4d88
