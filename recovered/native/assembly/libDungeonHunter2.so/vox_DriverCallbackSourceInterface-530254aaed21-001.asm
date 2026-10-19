; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088ed68, declared_size=8, range_size=8, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface20AllowBufferReferenceEv
; demangled: vox::DriverCallbackSourceInterface::AllowBufferReference()
; decoder-mode: arm
0088ed68  01 00 a0 e3                                      mov r0, #1
0088ed6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088ed70, declared_size=8, range_size=8, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface14GetBufferCountEv
; demangled: vox::DriverCallbackSourceInterface::GetBufferCount()
; decoder-mode: arm
0088ed70  44 00 90 e5                                      ldr r0, [r0, #0x44]
0088ed74  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088fce4, declared_size=48, range_size=48, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface6UpdateEf
; demangled: vox::DriverCallbackSourceInterface::Update(float)
; decoder-mode: arm
0088fce4  10 40 2d e9                                      push {r4, lr}
0088fce8  00 40 a0 e1                                      mov r4, r0
0088fcec  01 00 a0 e1                                      mov r0, r1
0088fcf0  46 14 a0 e3                                      mov r1, #0x46000000
0088fcf4  02 15 81 e2                                      add r1, r1, #0x800000
0088fcf8  1b fc e9 eb                                      bl #0x30ed6c
0088fcfc  f2 f9 e9 eb                                      bl #0x30e4cc
0088fd00  04 30 94 e5                                      ldr r3, [r4, #4]
0088fd04  00 00 63 e0                                      rsb r0, r3, r0
0088fd08  c0 31 83 e0                                      add r3, r3, r0, asr #3
0088fd0c  04 30 84 e5                                      str r3, [r4, #4]
0088fd10  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0088fd14, declared_size=192, range_size=192, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface21GetNbAvailableSamplesEi
; demangled: vox::DriverCallbackSourceInterface::GetNbAvailableSamples(int)
; decoder-mode: arm
0088fd14  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0088fd18  44 80 90 e5                                      ldr r8, [r0, #0x44]
0088fd1c  01 a0 a0 e1                                      mov sl, r1
0088fd20  4c 60 90 e5                                      ldr r6, [r0, #0x4c]
0088fd24  00 00 58 e3                                      cmp r8, #0
0088fd28  23 00 00 da                                      ble #0x88fdbc
0088fd2c  60 90 90 e5                                      ldr sb, [r0, #0x60]
0088fd30  18 40 a0 e3                                      mov r4, #0x18
0088fd34  94 96 25 e0                                      mla r5, r4, r6, sb
0088fd38  14 70 d5 e5                                      ldrb r7, [r5, #0x14]
0088fd3c  00 00 57 e3                                      cmp r7, #0
0088fd40  00 50 a0 13                                      movne r5, #0
0088fd44  1d 00 00 1a                                      bne #0x88fdc0
0088fd48  5c b0 90 e5                                      ldr fp, [r0, #0x5c]
0088fd4c  04 00 95 e5                                      ldr r0, [r5, #4]
0088fd50  0b 10 a0 e1                                      mov r1, fp
0088fd54  52 f9 e9 eb                                      bl #0x30e2a4
0088fd58  10 50 95 e5                                      ldr r5, [r5, #0x10]
0088fd5c  00 50 65 e0                                      rsb r5, r5, r0
0088fd60  05 00 5a e1                                      cmp sl, r5
0088fd64  0f 00 00 ca                                      bgt #0x88fda8
0088fd68  16 00 00 ea                                      b #0x88fdc8
0088fd6c  e4 fa e9 eb                                      bl #0x30e904
0088fd70  18 30 a0 e3                                      mov r3, #0x18
0088fd74  01 60 a0 e1                                      mov r6, r1
0088fd78  93 96 24 e0                                      mla r4, r3, r6, sb
0088fd7c  0b 10 a0 e1                                      mov r1, fp
0088fd80  14 30 d4 e5                                      ldrb r3, [r4, #0x14]
0088fd84  00 00 53 e3                                      cmp r3, #0
0088fd88  0c 00 00 1a                                      bne #0x88fdc0
0088fd8c  04 00 94 e5                                      ldr r0, [r4, #4]
0088fd90  43 f9 e9 eb                                      bl #0x30e2a4
0088fd94  10 30 94 e5                                      ldr r3, [r4, #0x10]
0088fd98  00 30 63 e0                                      rsb r3, r3, r0
0088fd9c  05 50 83 e0                                      add r5, r3, r5
0088fda0  0a 00 55 e1                                      cmp r5, sl
0088fda4  07 00 00 aa                                      bge #0x88fdc8
0088fda8  01 70 87 e2                                      add r7, r7, #1
0088fdac  08 00 57 e1                                      cmp r7, r8
0088fdb0  01 00 86 e2                                      add r0, r6, #1
0088fdb4  08 10 a0 e1                                      mov r1, r8
0088fdb8  eb ff ff 1a                                      bne #0x88fd6c
0088fdbc  00 50 e0 e3                                      mvn r5, #0
0088fdc0  05 00 a0 e1                                      mov r0, r5
0088fdc4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0088fdc8  0a 50 a0 e1                                      mov r5, sl
0088fdcc  05 00 a0 e1                                      mov r0, r5
0088fdd0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0088fdd4, declared_size=884, range_size=884, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface25FillBufferStereo16NoInterEPii
; demangled: vox::DriverCallbackSourceInterface::FillBufferStereo16NoInter(int*, int)
; decoder-mode: arm
0088fdd4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0088fdd8  50 30 90 e5                                      ldr r3, [r0, #0x50]
0088fddc  24 d0 4d e2                                      sub sp, sp, #0x24
0088fde0  00 40 a0 e1                                      mov r4, r0
0088fde4  01 00 53 e3                                      cmp r3, #1
0088fde8  0c 10 8d e5                                      str r1, [sp, #0xc]
0088fdec  04 20 8d e5                                      str r2, [sp, #4]
0088fdf0  01 00 00 0a                                      beq #0x88fdfc
0088fdf4  24 d0 8d e2                                      add sp, sp, #0x24
0088fdf8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0088fdfc  4c 20 90 e5                                      ldr r2, [r0, #0x4c]
0088fe00  60 30 90 e5                                      ldr r3, [r0, #0x60]
0088fe04  18 10 a0 e3                                      mov r1, #0x18
0088fe08  91 32 23 e0                                      mla r3, r1, r2, r3
0088fe0c  14 20 d3 e5                                      ldrb r2, [r3, #0x14]
0088fe10  00 00 52 e3                                      cmp r2, #0
0088fe14  f6 ff ff 1a                                      bne #0x88fdf4
0088fe18  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0088fe1c  00 00 50 e3                                      cmp r0, #0
0088fe20  06 00 00 0a                                      beq #0x88fe40
0088fe24  10 00 93 e5                                      ldr r0, [r3, #0x10]
0088fe28  01 00 80 e2                                      add r0, r0, #1
0088fe2c  10 00 83 e5                                      str r0, [r3, #0x10]
0088fe30  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0088fe34  60 30 94 e5                                      ldr r3, [r4, #0x60]
0088fe38  91 30 21 e0                                      mla r1, r1, r0, r3
0088fe3c  0c 20 81 e5                                      str r2, [r1, #0xc]
0088fe40  04 00 a0 e1                                      mov r0, r4
0088fe44  04 10 9d e5                                      ldr r1, [sp, #4]
0088fe48  b1 ff ff eb                                      bl #0x88fd14
0088fe4c  04 20 9d e5                                      ldr r2, [sp, #4]
0088fe50  00 00 52 e1                                      cmp r2, r0
0088fe54  b3 00 00 ca                                      bgt #0x890128
0088fe58  00 30 a0 e3                                      mov r3, #0
0088fe5c  20 c0 94 e5                                      ldr ip, [r4, #0x20]
0088fe60  01 90 82 e2                                      add sb, r2, #1
0088fe64  14 30 8d e5                                      str r3, [sp, #0x14]
0088fe68  0c 00 59 e1                                      cmp sb, ip
0088fe6c  09 c0 a0 b1                                      movlt ip, sb
0088fe70  02 00 00 ba                                      blt #0x88fe80
0088fe74  04 00 9d e5                                      ldr r0, [sp, #4]
0088fe78  00 00 5c e1                                      cmp ip, r0
0088fe7c  00 c0 a0 a1                                      movge ip, r0
0088fe80  24 b0 d4 e5                                      ldrb fp, [r4, #0x24]
0088fe84  2c 80 94 e5                                      ldr r8, [r4, #0x2c]
0088fe88  00 00 5b e3                                      cmp fp, #0
0088fe8c  a1 00 00 0a                                      beq #0x890118
0088fe90  00 00 5c e3                                      cmp ip, #0
0088fe94  00 b0 a0 d3                                      movle fp, #0
0088fe98  06 00 00 da                                      ble #0x88feb8
0088fe9c  28 00 94 e5                                      ldr r0, [r4, #0x28]
0088fea0  0c 10 a0 e1                                      mov r1, ip
0088fea4  00 c0 8d e5                                      str ip, [sp]
0088fea8  00 00 68 e0                                      rsb r0, r8, r0
0088feac  fc f8 e9 eb                                      bl #0x30e2a4
0088feb0  00 c0 9d e5                                      ldr ip, [sp]
0088feb4  00 b0 a0 e1                                      mov fp, r0
0088feb8  04 20 9d e5                                      ldr r2, [sp, #4]
0088febc  00 00 52 e3                                      cmp r2, #0
0088fec0  41 00 00 da                                      ble #0x88ffcc
0088fec4  14 30 9d e5                                      ldr r3, [sp, #0x14]
0088fec8  00 60 a0 e3                                      mov r6, #0
0088fecc  10 60 8d e5                                      str r6, [sp, #0x10]
0088fed0  00 00 53 e3                                      cmp r3, #0
0088fed4  00 30 a0 d3                                      movle r3, #0
0088fed8  01 30 a0 c3                                      movgt r3, #1
0088fedc  18 30 8d e5                                      str r3, [sp, #0x18]
0088fee0  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
0088fee4  18 00 a0 e3                                      mov r0, #0x18
0088fee8  60 30 94 e5                                      ldr r3, [r4, #0x60]
0088feec  90 01 05 e0                                      mul r5, r0, r1
0088fef0  18 20 9d e5                                      ldr r2, [sp, #0x18]
0088fef4  05 00 83 e0                                      add r0, r3, r5
0088fef8  04 60 90 e5                                      ldr r6, [r0, #4]
0088fefc  10 00 90 e5                                      ldr r0, [r0, #0x10]
0088ff00  04 a0 9d e5                                      ldr sl, [sp, #4]
0088ff04  05 50 93 e7                                      ldr r5, [r3, r5]
0088ff08  46 61 60 e0                                      rsb r6, r0, r6, asr #2
0088ff0c  00 00 5b e3                                      cmp fp, #0
0088ff10  01 20 82 13                                      orrne r2, r2, #1
0088ff14  06 00 5a e1                                      cmp sl, r6
0088ff18  06 a0 a0 a1                                      movge sl, r6
0088ff1c  00 00 52 e3                                      cmp r2, #0
0088ff20  08 60 8d e5                                      str r6, [sp, #8]
0088ff24  00 51 85 e0                                      add r5, r5, r0, lsl #2
0088ff28  29 00 00 1a                                      bne #0x88ffd4
0088ff2c  00 00 5a e3                                      cmp sl, #0
0088ff30  02 b0 a0 d1                                      movle fp, r2
0088ff34  14 00 00 da                                      ble #0x88ff8c
0088ff38  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0088ff3c  f0 60 d5 e1                                      ldrsh r6, [r5]
0088ff40  03 00 93 e8                                      ldm r3, {r0, r1}
0088ff44  96 08 06 e0                                      mul r6, r6, r8
0088ff48  01 20 82 e2                                      add r2, r2, #1
0088ff4c  46 07 80 e0                                      add r0, r0, r6, asr #14
0088ff50  00 00 83 e5                                      str r0, [r3]
0088ff54  f2 00 d5 e1                                      ldrsh r0, [r5, #2]
0088ff58  0a 00 52 e1                                      cmp r2, sl
0088ff5c  04 50 85 e2                                      add r5, r5, #4
0088ff60  90 08 00 e0                                      mul r0, r0, r8
0088ff64  40 17 81 e0                                      add r1, r1, r0, asr #14
0088ff68  04 10 83 e5                                      str r1, [r3, #4]
0088ff6c  08 30 83 e2                                      add r3, r3, #8
0088ff70  f1 ff ff 1a                                      bne #0x88ff3c
0088ff74  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0088ff78  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
0088ff7c  60 30 94 e5                                      ldr r3, [r4, #0x60]
0088ff80  8a 21 82 e0                                      add r2, r2, sl, lsl #3
0088ff84  0c 20 8d e5                                      str r2, [sp, #0xc]
0088ff88  00 b0 a0 e3                                      mov fp, #0
0088ff8c  58 20 94 e5                                      ldr r2, [r4, #0x58]
0088ff90  08 60 9d e5                                      ldr r6, [sp, #8]
0088ff94  0a 21 82 e0                                      add r2, r2, sl, lsl #2
0088ff98  0a 00 56 e1                                      cmp r6, sl
0088ff9c  58 20 84 e5                                      str r2, [r4, #0x58]
0088ffa0  48 00 00 0a                                      beq #0x8900c8
0088ffa4  18 00 a0 e3                                      mov r0, #0x18
0088ffa8  90 31 23 e0                                      mla r3, r0, r1, r3
0088ffac  10 20 93 e5                                      ldr r2, [r3, #0x10]
0088ffb0  0a 20 82 e0                                      add r2, r2, sl
0088ffb4  10 20 83 e5                                      str r2, [r3, #0x10]
0088ffb8  04 20 9d e5                                      ldr r2, [sp, #4]
0088ffbc  02 20 6a e0                                      rsb r2, sl, r2
0088ffc0  00 00 52 e3                                      cmp r2, #0
0088ffc4  04 20 8d e5                                      str r2, [sp, #4]
0088ffc8  c4 ff ff ca                                      bgt #0x88fee0
0088ffcc  2c 80 84 e5                                      str r8, [r4, #0x2c]
0088ffd0  87 ff ff ea                                      b #0x88fdf4
0088ffd4  00 00 5a e3                                      cmp sl, #0
0088ffd8  33 00 00 da                                      ble #0x8900ac
0088ffdc  10 20 9d e5                                      ldr r2, [sp, #0x10]
0088ffe0  0b 00 a0 e1                                      mov r0, fp
0088ffe4  1c a0 8d e5                                      str sl, [sp, #0x1c]
0088ffe8  02 30 8a e0                                      add r3, sl, r2
0088ffec  04 b0 a0 e1                                      mov fp, r4
0088fff0  02 70 a0 e1                                      mov r7, r2
0088fff4  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0088fff8  03 a0 a0 e1                                      mov sl, r3
0088fffc  0c 40 a0 e1                                      mov r4, ip
00890000  15 00 00 ea                                      b #0x89005c
00890004  04 00 57 e1                                      cmp r7, r4
00890008  00 30 a0 a3                                      movge r3, #0
0089000c  01 30 a0 b3                                      movlt r3, #1
00890010  f0 10 d5 e1                                      ldrsh r1, [r5]
00890014  09 00 57 e1                                      cmp r7, sb
00890018  01 30 83 a3                                      orrge r3, r3, #1
0089001c  00 00 53 e3                                      cmp r3, #0
00890020  00 80 88 10                                      addne r8, r8, r0
00890024  00 20 96 e5                                      ldr r2, [r6]
00890028  91 08 01 e0                                      mul r1, r1, r8
0089002c  04 30 96 e5                                      ldr r3, [r6, #4]
00890030  41 27 82 e0                                      add r2, r2, r1, asr #14
00890034  00 20 86 e5                                      str r2, [r6]
00890038  f2 20 d5 e1                                      ldrsh r2, [r5, #2]
0089003c  01 70 87 e2                                      add r7, r7, #1
00890040  0a 00 57 e1                                      cmp r7, sl
00890044  92 08 02 e0                                      mul r2, r2, r8
00890048  04 50 85 e2                                      add r5, r5, #4
0089004c  42 37 83 e0                                      add r3, r3, r2, asr #14
00890050  04 30 86 e5                                      str r3, [r6, #4]
00890054  08 60 86 e2                                      add r6, r6, #8
00890058  07 00 00 0a                                      beq #0x89007c
0089005c  09 00 57 e1                                      cmp r7, sb
00890060  e7 ff ff 1a                                      bne #0x890004
00890064  08 00 a0 e1                                      mov r0, r8
00890068  14 10 9d e5                                      ldr r1, [sp, #0x14]
0089006c  8c f8 e9 eb                                      bl #0x30e2a4
00890070  00 00 50 e3                                      cmp r0, #0
00890074  00 00 60 c2                                      rsbgt r0, r0, #0
00890078  e1 ff ff ea                                      b #0x890004
0089007c  1c a0 9d e5                                      ldr sl, [sp, #0x1c]
00890080  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00890084  04 c0 a0 e1                                      mov ip, r4
00890088  0b 40 a0 e1                                      mov r4, fp
0089008c  00 b0 a0 e1                                      mov fp, r0
00890090  10 00 9d e5                                      ldr r0, [sp, #0x10]
00890094  8a 61 86 e0                                      add r6, r6, sl, lsl #3
00890098  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
0089009c  0a 00 80 e0                                      add r0, r0, sl
008900a0  60 30 94 e5                                      ldr r3, [r4, #0x60]
008900a4  0c 60 8d e5                                      str r6, [sp, #0xc]
008900a8  10 00 8d e5                                      str r0, [sp, #0x10]
008900ac  58 20 94 e5                                      ldr r2, [r4, #0x58]
008900b0  08 60 9d e5                                      ldr r6, [sp, #8]
008900b4  28 80 94 e5                                      ldr r8, [r4, #0x28]
008900b8  0a 21 82 e0                                      add r2, r2, sl, lsl #2
008900bc  0a 00 56 e1                                      cmp r6, sl
008900c0  58 20 84 e5                                      str r2, [r4, #0x58]
008900c4  b6 ff ff 1a                                      bne #0x88ffa4
008900c8  18 00 a0 e3                                      mov r0, #0x18
008900cc  90 31 23 e0                                      mla r3, r0, r1, r3
008900d0  01 20 a0 e3                                      mov r2, #1
008900d4  14 20 c3 e5                                      strb r2, [r3, #0x14]
008900d8  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
008900dc  44 10 94 e5                                      ldr r1, [r4, #0x44]
008900e0  18 60 a0 e3                                      mov r6, #0x18
008900e4  01 00 80 e2                                      add r0, r0, #1
008900e8  4c 00 84 e5                                      str r0, [r4, #0x4c]
008900ec  00 c0 8d e5                                      str ip, [sp]
008900f0  03 fa e9 eb                                      bl #0x30e904
008900f4  60 30 94 e5                                      ldr r3, [r4, #0x60]
008900f8  4c 10 84 e5                                      str r1, [r4, #0x4c]
008900fc  00 c0 9d e5                                      ldr ip, [sp]
00890100  96 31 23 e0                                      mla r3, r6, r1, r3
00890104  14 30 d3 e5                                      ldrb r3, [r3, #0x14]
00890108  00 00 53 e3                                      cmp r3, #0
0089010c  a9 ff ff 0a                                      beq #0x88ffb8
00890110  2c 80 84 e5                                      str r8, [r4, #0x2c]
00890114  36 ff ff ea                                      b #0x88fdf4
00890118  01 30 a0 e3                                      mov r3, #1
0089011c  24 30 c4 e5                                      strb r3, [r4, #0x24]
00890120  28 80 94 e5                                      ldr r8, [r4, #0x28]
00890124  63 ff ff ea                                      b #0x88feb8
00890128  20 60 94 e5                                      ldr r6, [r4, #0x20]
0089012c  06 90 50 e0                                      subs sb, r0, r6
00890130  14 60 8d e5                                      str r6, [sp, #0x14]
00890134  06 c0 a0 41                                      movmi ip, r6
00890138  14 00 8d 45                                      strmi r0, [sp, #0x14]
0089013c  00 90 a0 43                                      movmi sb, #0
00890140  14 c0 9d 55                                      ldrpl ip, [sp, #0x14]
00890144  47 ff ff ea                                      b #0x88fe68

; FUNCTION 0x00890148, declared_size=80, range_size=80, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface13FreeAllBufferEv
; demangled: vox::DriverCallbackSourceInterface::FreeAllBuffer()
; decoder-mode: arm
00890148  44 30 90 e5                                      ldr r3, [r0, #0x44]
0089014c  04 40 2d e5                                      str r4, [sp, #-4]!
00890150  00 00 53 e3                                      cmp r3, #0
00890154  0d 00 00 da                                      ble #0x890190
00890158  00 30 a0 e3                                      mov r3, #0
0089015c  03 20 a0 e1                                      mov r2, r3
00890160  01 40 a0 e3                                      mov r4, #1
00890164  03 10 a0 e1                                      mov r1, r3
00890168  60 c0 90 e5                                      ldr ip, [r0, #0x60]
0089016c  01 20 82 e2                                      add r2, r2, #1
00890170  03 c0 8c e0                                      add ip, ip, r3
00890174  14 40 cc e5                                      strb r4, [ip, #0x14]
00890178  44 c0 90 e5                                      ldr ip, [r0, #0x44]
0089017c  4c 10 80 e5                                      str r1, [r0, #0x4c]
00890180  48 10 80 e5                                      str r1, [r0, #0x48]
00890184  02 00 5c e1                                      cmp ip, r2
00890188  18 30 83 e2                                      add r3, r3, #0x18
0089018c  f5 ff ff ca                                      bgt #0x890168
00890190  10 00 bd e8                                      ldm sp!, {r4}
00890194  1e ff 2f e1                                      bx lr

; FUNCTION 0x00890198, declared_size=188, range_size=188, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface15Set3DParametersENS_18ListenerParametersENS_22Vox3DGeneralParametersE
; demangled: vox::DriverCallbackSourceInterface::Set3DParameters(vox::ListenerParameters, vox::Vox3DGeneralParameters)
; decoder-mode: arm
00890198  10 d0 4d e2                                      sub sp, sp, #0x10
0089019c  70 40 2d e9                                      push {r4, r5, r6, lr}
008901a0  98 40 9f e5                                      ldr r4, [pc, #0x98]
008901a4  10 e0 8d e2                                      add lr, sp, #0x10
008901a8  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
008901ac  90 30 9f e5                                      ldr r3, [pc, #0x90]
008901b0  04 40 8f e0                                      add r4, pc, r4
008901b4  44 60 9d e5                                      ldr r6, [sp, #0x44]
008901b8  03 50 94 e7                                      ldr r5, [r4, r3]
008901bc  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
008901c0  05 c0 a0 e1                                      mov ip, r5
008901c4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
008901c8  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
008901cc  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
008901d0  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
008901d4  6c e0 9f e5                                      ldr lr, [pc, #0x6c]
008901d8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
008901dc  0e e0 94 e7                                      ldr lr, [r4, lr]
008901e0  48 30 9d e5                                      ldr r3, [sp, #0x48]
008901e4  40 50 9d e5                                      ldr r5, [sp, #0x40]
008901e8  00 10 a0 e3                                      mov r1, #0
008901ec  00 30 8e e5                                      str r3, [lr]
008901f0  54 30 9f e5                                      ldr r3, [pc, #0x54]
008901f4  05 00 a0 e1                                      mov r0, r5
008901f8  03 30 94 e7                                      ldr r3, [r4, r3]
008901fc  00 50 83 e5                                      str r5, [r3]
00890200  3c f8 e9 eb                                      bl #0x30e2f8
00890204  00 00 50 e3                                      cmp r0, #0
00890208  05 00 00 1a                                      bne #0x890224
0089020c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00890210  03 30 94 e7                                      ldr r3, [r4, r3]
00890214  00 60 83 e5                                      str r6, [r3]
00890218  70 40 bd e8                                      pop {r4, r5, r6, lr}
0089021c  10 d0 8d e2                                      add sp, sp, #0x10
00890220  1e ff 2f e1                                      bx lr
00890224  24 30 9f e5                                      ldr r3, [pc, #0x24]
00890228  06 00 a0 e1                                      mov r0, r6
0089022c  05 10 a0 e1                                      mov r1, r5
00890230  03 40 94 e7                                      ldr r4, [r4, r3]
00890234  96 fa e9 eb                                      bl #0x30ec94
00890238  00 00 84 e5                                      str r0, [r4]
0089023c  f5 ff ff ea                                      b #0x890218
; mapping-symbol data/literal pool
00890240  e0 48 10 00 64 31 00 00 a4 25 00 00 54 19 00 00  .byte 0xe0, 0x48, 0x10, 0x00, 0x64, 0x31, 0x00, 0x00, 0xa4, 0x25, 0x00, 0x00, 0x54, 0x19, 0x00, 0x00
00890250  ac 25 00 00                                      .byte 0xac, 0x25, 0x00, 0x00

; FUNCTION 0x00890254, declared_size=52, range_size=52, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface23SetDriverCallbackPeriodEf
; demangled: vox::DriverCallbackSourceInterface::SetDriverCallbackPeriod(float)
; decoder-mode: arm
00890254  24 30 9f e5                                      ldr r3, [pc, #0x24]
00890258  24 20 9f e5                                      ldr r2, [pc, #0x24]
0089025c  46 14 a0 e3                                      mov r1, #0x46000000
00890260  03 30 8f e0                                      add r3, pc, r3
00890264  10 40 2d e9                                      push {r4, lr}
00890268  02 15 81 e2                                      add r1, r1, #0x800000
0089026c  02 40 93 e7                                      ldr r4, [r3, r2]
00890270  bd fa e9 eb                                      bl #0x30ed6c
00890274  94 f8 e9 eb                                      bl #0x30e4cc
00890278  00 00 84 e5                                      str r0, [r4]
0089027c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00890280  30 48 10 00 a8 1a 00 00                          .byte 0x30, 0x48, 0x10, 0x00, 0xa8, 0x1a, 0x00, 0x00

; FUNCTION 0x00890288, declared_size=32, range_size=32, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface19SetDriverSampleRateEi
; demangled: vox::DriverCallbackSourceInterface::SetDriverSampleRate(int)
; decoder-mode: arm
00890288  10 30 9f e5                                      ldr r3, [pc, #0x10]
0089028c  10 20 9f e5                                      ldr r2, [pc, #0x10]
00890290  03 30 8f e0                                      add r3, pc, r3
00890294  02 20 93 e7                                      ldr r2, [r3, r2]
00890298  00 00 82 e5                                      str r0, [r2]
0089029c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
008902a0  00 48 10 00 9c 05 00 00                          .byte 0x00, 0x48, 0x10, 0x00, 0x9c, 0x05, 0x00, 0x00

; FUNCTION 0x0089071c, declared_size=716, range_size=716, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface18FreeDisposableDataEiRiS1_
; demangled: vox::DriverCallbackSourceInterface::FreeDisposableData(int, int&, int&)
; decoder-mode: arm
0089071c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00890720  00 40 a0 e1                                      mov r4, r0
00890724  1c d0 4d e2                                      sub sp, sp, #0x1c
00890728  08 00 80 e2                                      add r0, r0, #8
0089072c  00 10 8d e5                                      str r1, [sp]
00890730  02 90 a0 e1                                      mov sb, r2
00890734  03 a0 a0 e1                                      mov sl, r3
00890738  0c 00 8d e5                                      str r0, [sp, #0xc]
0089073c  4e 0b 00 eb                                      bl #0x89347c
00890740  00 10 9d e5                                      ldr r1, [sp]
00890744  90 52 9f e5                                      ldr r5, [pc, #0x290]
00890748  00 60 a0 e3                                      mov r6, #0
0089074c  00 00 51 e3                                      cmp r1, #0
00890750  05 50 8f e0                                      add r5, pc, r5
00890754  00 60 89 e5                                      str r6, [sb]
00890758  00 60 8a e5                                      str r6, [sl]
0089075c  5f 00 00 da                                      ble #0x8908e0
00890760  78 22 9f e5                                      ldr r2, [pc, #0x278]
00890764  40 30 94 e5                                      ldr r3, [r4, #0x40]
00890768  5c 80 94 e5                                      ldr r8, [r4, #0x5c]
0089076c  02 10 95 e7                                      ldr r1, [r5, r2]
00890770  6c 22 9f e5                                      ldr r2, [pc, #0x26c]
00890774  88 c0 88 e0                                      add ip, r8, r8, lsl #1
00890778  00 10 91 e5                                      ldr r1, [r1]
0089077c  02 20 95 e7                                      ldr r2, [r5, r2]
00890780  44 50 94 e5                                      ldr r5, [r4, #0x44]
00890784  00 20 92 e5                                      ldr r2, [r2]
00890788  06 00 55 e1                                      cmp r5, r6
0089078c  91 22 22 e0                                      mla r2, r1, r2, r2
00890790  42 27 a0 e1                                      asr r2, r2, #0xe
00890794  92 33 23 e0                                      mla r3, r2, r3, r3
00890798  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
0089079c  43 37 a0 e1                                      asr r3, r3, #0xe
008907a0  93 cc 2c e0                                      mla ip, r3, ip, ip
008907a4  08 20 8d e5                                      str r2, [sp, #8]
008907a8  04 c0 8d e5                                      str ip, [sp, #4]
008907ac  1e 00 00 da                                      ble #0x89082c
008907b0  60 b0 94 e5                                      ldr fp, [r4, #0x60]
008907b4  06 70 a0 e1                                      mov r7, r6
008907b8  10 40 8d e5                                      str r4, [sp, #0x10]
008907bc  14 90 8d e5                                      str sb, [sp, #0x14]
008907c0  06 40 a0 e1                                      mov r4, r6
008907c4  0a 90 a0 e1                                      mov sb, sl
008907c8  0c a0 a0 e1                                      mov sl, ip
008907cc  02 00 00 ea                                      b #0x8907dc
008907d0  4b f8 e9 eb                                      bl #0x30e904
008907d4  07 40 a0 e1                                      mov r4, r7
008907d8  01 20 a0 e1                                      mov r2, r1
008907dc  18 00 a0 e3                                      mov r0, #0x18
008907e0  90 b2 23 e0                                      mla r3, r0, r2, fp
008907e4  01 60 86 e2                                      add r6, r6, #1
008907e8  14 c0 d3 e5                                      ldrb ip, [r3, #0x14]
008907ec  01 00 82 e2                                      add r0, r2, #1
008907f0  05 10 a0 e1                                      mov r1, r5
008907f4  00 00 5c e3                                      cmp ip, #0
008907f8  06 00 00 1a                                      bne #0x890818
008907fc  10 c0 93 e5                                      ldr ip, [r3, #0x10]
00890800  04 30 93 e5                                      ldr r3, [r3, #4]
00890804  9c 08 0c e0                                      mul ip, ip, r8
00890808  03 30 6c e0                                      rsb r3, ip, r3
0089080c  03 70 87 e0                                      add r7, r7, r3
00890810  07 00 5a e1                                      cmp sl, r7
00890814  37 00 00 ba                                      blt #0x8908f8
00890818  05 00 56 e1                                      cmp r6, r5
0089081c  eb ff ff 1a                                      bne #0x8907d0
00890820  09 a0 a0 e1                                      mov sl, sb
00890824  10 40 9d e5                                      ldr r4, [sp, #0x10]
00890828  14 90 9d e5                                      ldr sb, [sp, #0x14]
0089082c  00 20 a0 e3                                      mov r2, #0
00890830  04 20 8d e5                                      str r2, [sp, #4]
00890834  00 b0 e0 e3                                      mvn fp, #0
00890838  08 30 9d e5                                      ldr r3, [sp, #8]
0089083c  00 00 53 e3                                      cmp r3, #0
00890840  2a 00 00 0a                                      beq #0x8908f0
00890844  08 60 9d e5                                      ldr r6, [sp, #8]
00890848  01 00 46 e2                                      sub r0, r6, #1
0089084c  00 00 55 e3                                      cmp r5, #0
00890850  00 20 a0 c3                                      movgt r2, #0
00890854  02 10 a0 c1                                      movgt r1, r2
00890858  18 c0 a0 c3                                      movgt ip, #0x18
0089085c  1f 00 00 da                                      ble #0x8908e0
00890860  60 30 94 e5                                      ldr r3, [r4, #0x60]
00890864  9c 00 06 e0                                      mul r6, ip, r0
00890868  06 30 83 e0                                      add r3, r3, r6
0089086c  14 70 d3 e5                                      ldrb r7, [r3, #0x14]
00890870  00 00 57 e3                                      cmp r7, #0
00890874  13 00 00 1a                                      bne #0x8908c8
00890878  5c 80 94 e5                                      ldr r8, [r4, #0x5c]
0089087c  10 70 93 e5                                      ldr r7, [r3, #0x10]
00890880  04 50 93 e5                                      ldr r5, [r3, #4]
00890884  0b 00 50 e1                                      cmp r0, fp
00890888  97 08 07 e0                                      mul r7, r7, r8
0089088c  05 80 67 e0                                      rsb r8, r7, r5
00890890  08 10 81 e0                                      add r1, r1, r8
00890894  21 00 00 0a                                      beq #0x890920
00890898  00 80 9d e5                                      ldr r8, [sp]
0089089c  01 00 58 e1                                      cmp r8, r1
008908a0  31 00 00 da                                      ble #0x89096c
008908a4  01 60 a0 e3                                      mov r6, #1
008908a8  14 60 c3 e5                                      strb r6, [r3, #0x14]
008908ac  00 30 99 e5                                      ldr r3, [sb]
008908b0  01 30 83 e2                                      add r3, r3, #1
008908b4  00 30 89 e5                                      str r3, [sb]
008908b8  00 30 9a e5                                      ldr r3, [sl]
008908bc  05 50 83 e0                                      add r5, r3, r5
008908c0  00 50 8a e5                                      str r5, [sl]
008908c4  44 50 94 e5                                      ldr r5, [r4, #0x44]
008908c8  00 00 50 e3                                      cmp r0, #0
008908cc  01 20 82 e2                                      add r2, r2, #1
008908d0  01 00 45 02                                      subeq r0, r5, #1
008908d4  01 00 40 12                                      subne r0, r0, #1
008908d8  02 00 55 e1                                      cmp r5, r2
008908dc  df ff ff ca                                      bgt #0x890860
008908e0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
008908e4  1c d0 8d e2                                      add sp, sp, #0x1c
008908e8  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008908ec  e1 0a 00 ea                                      b #0x893478
008908f0  01 00 45 e2                                      sub r0, r5, #1
008908f4  d4 ff ff ea                                      b #0x89084c
008908f8  04 10 9d e5                                      ldr r1, [sp, #4]
008908fc  04 30 a0 e1                                      mov r3, r4
00890900  09 a0 a0 e1                                      mov sl, sb
00890904  01 c0 8c e0                                      add ip, ip, r1
00890908  0c c0 63 e0                                      rsb ip, r3, ip
0089090c  10 40 9d e5                                      ldr r4, [sp, #0x10]
00890910  14 90 9d e5                                      ldr sb, [sp, #0x14]
00890914  04 c0 8d e5                                      str ip, [sp, #4]
00890918  02 b0 a0 e1                                      mov fp, r2
0089091c  c5 ff ff ea                                      b #0x890838
00890920  00 80 9d e5                                      ldr r8, [sp]
00890924  01 20 87 e0                                      add r2, r7, r1
00890928  04 10 9d e5                                      ldr r1, [sp, #4]
0089092c  02 20 68 e0                                      rsb r2, r8, r2
00890930  02 00 51 e1                                      cmp r1, r2
00890934  04 20 83 d5                                      strle r2, [r3, #4]
00890938  1b 00 00 da                                      ble #0x8909ac
0089093c  00 00 51 e3                                      cmp r1, #0
00890940  04 10 83 e5                                      str r1, [r3, #4]
00890944  18 00 00 1a                                      bne #0x8909ac
00890948  60 30 94 e5                                      ldr r3, [r4, #0x60]
0089094c  01 20 a0 e3                                      mov r2, #1
00890950  06 30 83 e0                                      add r3, r3, r6
00890954  14 20 c3 e5                                      strb r2, [r3, #0x14]
00890958  00 30 99 e5                                      ldr r3, [sb]
0089095c  02 30 83 e0                                      add r3, r3, r2
00890960  00 30 89 e5                                      str r3, [sb]
00890964  48 00 84 e5                                      str r0, [r4, #0x48]
00890968  13 00 00 ea                                      b #0x8909bc
0089096c  00 80 9d e5                                      ldr r8, [sp]
00890970  01 20 87 e0                                      add r2, r7, r1
00890974  01 00 80 e2                                      add r0, r0, #1
00890978  02 20 68 e0                                      rsb r2, r8, r2
0089097c  04 20 83 e5                                      str r2, [r3, #4]
00890980  60 30 94 e5                                      ldr r3, [r4, #0x60]
00890984  00 20 9a e5                                      ldr r2, [sl]
00890988  06 60 83 e0                                      add r6, r3, r6
0089098c  04 30 96 e5                                      ldr r3, [r6, #4]
00890990  02 30 63 e0                                      rsb r3, r3, r2
00890994  05 50 83 e0                                      add r5, r3, r5
00890998  00 50 8a e5                                      str r5, [sl]
0089099c  44 10 94 e5                                      ldr r1, [r4, #0x44]
008909a0  d7 f7 e9 eb                                      bl #0x30e904
008909a4  48 10 84 e5                                      str r1, [r4, #0x48]
008909a8  cc ff ff ea                                      b #0x8908e0
008909ac  01 00 80 e2                                      add r0, r0, #1
008909b0  44 10 94 e5                                      ldr r1, [r4, #0x44]
008909b4  d2 f7 e9 eb                                      bl #0x30e904
008909b8  48 10 84 e5                                      str r1, [r4, #0x48]
008909bc  60 30 94 e5                                      ldr r3, [r4, #0x60]
008909c0  00 20 9a e5                                      ldr r2, [sl]
008909c4  06 60 83 e0                                      add r6, r3, r6
008909c8  04 30 96 e5                                      ldr r3, [r6, #4]
008909cc  02 30 63 e0                                      rsb r3, r3, r2
008909d0  05 50 83 e0                                      add r5, r3, r5
008909d4  00 50 8a e5                                      str r5, [sl]
008909d8  c0 ff ff ea                                      b #0x8908e0
; mapping-symbol data/literal pool
008909dc  40 43 10 00 a8 1a 00 00 9c 05 00 00              .byte 0x40, 0x43, 0x10, 0x00, 0xa8, 0x1a, 0x00, 0x00, 0x9c, 0x05, 0x00, 0x00

; FUNCTION 0x008909e8, declared_size=272, range_size=272, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface14Set3DParameterEiPv
; demangled: vox::DriverCallbackSourceInterface::Set3DParameter(int, void*)
; decoder-mode: arm
008909e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008909ec  08 50 80 e2                                      add r5, r0, #8
008909f0  00 40 a0 e1                                      mov r4, r0
008909f4  05 00 a0 e1                                      mov r0, r5
008909f8  01 60 a0 e1                                      mov r6, r1
008909fc  02 70 a0 e1                                      mov r7, r2
00890a00  9d 0a 00 eb                                      bl #0x89347c
00890a04  54 30 94 e5                                      ldr r3, [r4, #0x54]
00890a08  00 00 53 e3                                      cmp r3, #0
00890a0c  0f 00 00 0a                                      beq #0x890a50
00890a10  0a 00 56 e3                                      cmp r6, #0xa
00890a14  06 f1 8f 90                                      addls pc, pc, r6, lsl #2
00890a18  0c 00 00 ea                                      b #0x890a50
00890a1c  09 00 00 ea                                      b #0x890a48
00890a20  14 00 00 ea                                      b #0x890a78
00890a24  16 00 00 ea                                      b #0x890a84
00890a28  18 00 00 ea                                      b #0x890a90
00890a2c  1a 00 00 ea                                      b #0x890a9c
00890a30  1c 00 00 ea                                      b #0x890aa8
00890a34  1e 00 00 ea                                      b #0x890ab4
00890a38  04 00 00 ea                                      b #0x890a50
00890a3c  1f 00 00 ea                                      b #0x890ac0
00890a40  25 00 00 ea                                      b #0x890adc
00890a44  04 00 00 ea                                      b #0x890a5c
00890a48  00 30 97 e5                                      ldr r3, [r7]
00890a4c  90 30 84 e5                                      str r3, [r4, #0x90]
00890a50  05 00 a0 e1                                      mov r0, r5
00890a54  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00890a58  86 0a 00 ea                                      b #0x893478
00890a5c  00 30 97 e5                                      ldr r3, [r7]
00890a60  84 30 84 e5                                      str r3, [r4, #0x84]
00890a64  04 30 97 e5                                      ldr r3, [r7, #4]
00890a68  88 30 84 e5                                      str r3, [r4, #0x88]
00890a6c  08 30 97 e5                                      ldr r3, [r7, #8]
00890a70  8c 30 84 e5                                      str r3, [r4, #0x8c]
00890a74  f5 ff ff ea                                      b #0x890a50
00890a78  00 30 97 e5                                      ldr r3, [r7]
00890a7c  94 30 84 e5                                      str r3, [r4, #0x94]
00890a80  f2 ff ff ea                                      b #0x890a50
00890a84  00 30 97 e5                                      ldr r3, [r7]
00890a88  98 30 84 e5                                      str r3, [r4, #0x98]
00890a8c  ef ff ff ea                                      b #0x890a50
00890a90  00 30 97 e5                                      ldr r3, [r7]
00890a94  9c 30 84 e5                                      str r3, [r4, #0x9c]
00890a98  ec ff ff ea                                      b #0x890a50
00890a9c  00 30 97 e5                                      ldr r3, [r7]
00890aa0  a0 30 84 e5                                      str r3, [r4, #0xa0]
00890aa4  e9 ff ff ea                                      b #0x890a50
00890aa8  00 30 97 e5                                      ldr r3, [r7]
00890aac  a4 30 84 e5                                      str r3, [r4, #0xa4]
00890ab0  e6 ff ff ea                                      b #0x890a50
00890ab4  00 30 97 e5                                      ldr r3, [r7]
00890ab8  a8 30 84 e5                                      str r3, [r4, #0xa8]
00890abc  e3 ff ff ea                                      b #0x890a50
00890ac0  00 30 97 e5                                      ldr r3, [r7]
00890ac4  6c 30 84 e5                                      str r3, [r4, #0x6c]
00890ac8  04 30 97 e5                                      ldr r3, [r7, #4]
00890acc  70 30 84 e5                                      str r3, [r4, #0x70]
00890ad0  08 30 97 e5                                      ldr r3, [r7, #8]
00890ad4  74 30 84 e5                                      str r3, [r4, #0x74]
00890ad8  dc ff ff ea                                      b #0x890a50
00890adc  00 30 97 e5                                      ldr r3, [r7]
00890ae0  78 30 84 e5                                      str r3, [r4, #0x78]
00890ae4  04 30 97 e5                                      ldr r3, [r7, #4]
00890ae8  7c 30 84 e5                                      str r3, [r4, #0x7c]
00890aec  08 30 97 e5                                      ldr r3, [r7, #8]
00890af0  80 30 84 e5                                      str r3, [r4, #0x80]
00890af4  d5 ff ff ea                                      b #0x890a50

; FUNCTION 0x00890af8, declared_size=48, range_size=48, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface7CleanupEv
; demangled: vox::DriverCallbackSourceInterface::Cleanup()
; decoder-mode: arm
00890af8  70 40 2d e9                                      push {r4, r5, r6, lr}
00890afc  08 50 80 e2                                      add r5, r0, #8
00890b00  00 40 a0 e1                                      mov r4, r0
00890b04  05 00 a0 e1                                      mov r0, r5
00890b08  5b 0a 00 eb                                      bl #0x89347c
00890b0c  60 30 94 e5                                      ldr r3, [r4, #0x60]
00890b10  64 20 94 e5                                      ldr r2, [r4, #0x64]
00890b14  05 00 a0 e1                                      mov r0, r5
00890b18  02 00 53 e1                                      cmp r3, r2
00890b1c  64 30 84 15                                      strne r3, [r4, #0x64]
00890b20  70 40 bd e8                                      pop {r4, r5, r6, lr}
00890b24  53 0a 00 ea                                      b #0x893478

; FUNCTION 0x00890b28, declared_size=40, range_size=40, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface13SetByteOffsetEi
; demangled: vox::DriverCallbackSourceInterface::SetByteOffset(int)
; decoder-mode: arm
00890b28  70 40 2d e9                                      push {r4, r5, r6, lr}
00890b2c  08 40 80 e2                                      add r4, r0, #8
00890b30  00 50 a0 e1                                      mov r5, r0
00890b34  04 00 a0 e1                                      mov r0, r4
00890b38  01 60 a0 e1                                      mov r6, r1
00890b3c  4e 0a 00 eb                                      bl #0x89347c
00890b40  04 00 a0 e1                                      mov r0, r4
00890b44  58 60 85 e5                                      str r6, [r5, #0x58]
00890b48  70 40 bd e8                                      pop {r4, r5, r6, lr}
00890b4c  49 0a 00 ea                                      b #0x893478

; FUNCTION 0x00890b50, declared_size=40, range_size=40, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface13GetByteOffsetEv
; demangled: vox::DriverCallbackSourceInterface::GetByteOffset()
; decoder-mode: arm
00890b50  70 40 2d e9                                      push {r4, r5, r6, lr}
00890b54  08 40 80 e2                                      add r4, r0, #8
00890b58  00 50 a0 e1                                      mov r5, r0
00890b5c  04 00 a0 e1                                      mov r0, r4
00890b60  45 0a 00 eb                                      bl #0x89347c
00890b64  58 50 95 e5                                      ldr r5, [r5, #0x58]
00890b68  04 00 a0 e1                                      mov r0, r4
00890b6c  41 0a 00 eb                                      bl #0x893478
00890b70  05 00 a0 e1                                      mov r0, r5
00890b74  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00890b78, declared_size=56, range_size=56, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface8GetPitchEv
; demangled: vox::DriverCallbackSourceInterface::GetPitch()
; decoder-mode: arm
00890b78  70 40 2d e9                                      push {r4, r5, r6, lr}
00890b7c  08 40 80 e2                                      add r4, r0, #8
00890b80  00 50 a0 e1                                      mov r5, r0
00890b84  04 00 a0 e1                                      mov r0, r4
00890b88  3b 0a 00 eb                                      bl #0x89347c
00890b8c  34 00 95 e5                                      ldr r0, [r5, #0x34]
00890b90  73 f7 e9 eb                                      bl #0x30e964
00890b94  e2 15 a0 e3                                      mov r1, #0x38800000
00890b98  73 f8 e9 eb                                      bl #0x30ed6c
00890b9c  00 50 a0 e1                                      mov r5, r0
00890ba0  04 00 a0 e1                                      mov r0, r4
00890ba4  33 0a 00 eb                                      bl #0x893478
00890ba8  05 00 a0 e1                                      mov r0, r5
00890bac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00890bb0, declared_size=56, range_size=56, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface7GetGainEv
; demangled: vox::DriverCallbackSourceInterface::GetGain()
; decoder-mode: arm
00890bb0  70 40 2d e9                                      push {r4, r5, r6, lr}
00890bb4  08 40 80 e2                                      add r4, r0, #8
00890bb8  00 50 a0 e1                                      mov r5, r0
00890bbc  04 00 a0 e1                                      mov r0, r4
00890bc0  2d 0a 00 eb                                      bl #0x89347c
00890bc4  28 00 95 e5                                      ldr r0, [r5, #0x28]
00890bc8  65 f7 e9 eb                                      bl #0x30e964
00890bcc  e2 15 a0 e3                                      mov r1, #0x38800000
00890bd0  65 f8 e9 eb                                      bl #0x30ed6c
00890bd4  00 50 a0 e1                                      mov r5, r0
00890bd8  04 00 a0 e1                                      mov r0, r4
00890bdc  25 0a 00 eb                                      bl #0x893478
00890be0  05 00 a0 e1                                      mov r0, r5
00890be4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00890be8, declared_size=228, range_size=228, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface8SetPitchEf
; demangled: vox::DriverCallbackSourceInterface::SetPitch(float)
; decoder-mode: arm
00890be8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00890bec  08 60 80 e2                                      add r6, r0, #8
00890bf0  01 70 a0 e1                                      mov r7, r1
00890bf4  00 40 a0 e1                                      mov r4, r0
00890bf8  06 00 a0 e1                                      mov r0, r6
00890bfc  1e 0a 00 eb                                      bl #0x89347c
00890c00  07 00 a0 e1                                      mov r0, r7
00890c04  01 11 a0 e3                                      mov r1, #0x40000000
00890c08  ba f5 e9 eb                                      bl #0x30e2f8
00890c0c  b0 50 9f e5                                      ldr r5, [pc, #0xb0]
00890c10  00 00 50 e3                                      cmp r0, #0
00890c14  02 79 a0 13                                      movne r7, #0x8000
00890c18  05 50 8f e0                                      add r5, pc, r5
00890c1c  34 70 84 15                                      strne r7, [r4, #0x34]
00890c20  06 00 00 1a                                      bne #0x890c40
00890c24  07 00 a0 e1                                      mov r0, r7
00890c28  00 10 a0 e3                                      mov r1, #0
00890c2c  5e f7 e9 eb                                      bl #0x30e9ac
00890c30  00 00 50 e3                                      cmp r0, #0
00890c34  01 70 a0 13                                      movne r7, #1
00890c38  34 70 84 15                                      strne r7, [r4, #0x34]
00890c3c  06 00 00 0a                                      beq #0x890c5c
00890c40  50 30 94 e5                                      ldr r3, [r4, #0x50]
00890c44  01 00 53 e3                                      cmp r3, #1
00890c48  38 70 84 15                                      strne r7, [r4, #0x38]
00890c4c  0d 00 00 0a                                      beq #0x890c88
00890c50  06 00 a0 e1                                      mov r0, r6
00890c54  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00890c58  06 0a 00 ea                                      b #0x893478
00890c5c  46 14 a0 e3                                      mov r1, #0x46000000
00890c60  07 00 a0 e1                                      mov r0, r7
00890c64  02 15 81 e2                                      add r1, r1, #0x800000
00890c68  3f f8 e9 eb                                      bl #0x30ed6c
00890c6c  16 f6 e9 eb                                      bl #0x30e4cc
00890c70  50 30 94 e5                                      ldr r3, [r4, #0x50]
00890c74  00 70 a0 e1                                      mov r7, r0
00890c78  34 00 84 e5                                      str r0, [r4, #0x34]
00890c7c  01 00 53 e3                                      cmp r3, #1
00890c80  38 70 84 15                                      strne r7, [r4, #0x38]
00890c84  f1 ff ff 1a                                      bne #0x890c50
00890c88  38 30 9f e5                                      ldr r3, [pc, #0x38]
00890c8c  04 10 94 e5                                      ldr r1, [r4, #4]
00890c90  03 30 95 e7                                      ldr r3, [r5, r3]
00890c94  00 00 93 e5                                      ldr r0, [r3]
00890c98  00 00 51 e1                                      cmp r1, r0
00890c9c  01 09 a0 d3                                      movle r0, #0x4000
00890ca0  01 00 00 da                                      ble #0x890cac
00890ca4  00 07 a0 e1                                      lsl r0, r0, #0xe
00890ca8  7d f5 e9 eb                                      bl #0x30e2a4
00890cac  38 30 94 e5                                      ldr r3, [r4, #0x38]
00890cb0  07 70 63 e0                                      rsb r7, r3, r7
00890cb4  97 00 07 e0                                      mul r7, r7, r0
00890cb8  47 77 a0 e1                                      asr r7, r7, #0xe
00890cbc  3c 70 84 e5                                      str r7, [r4, #0x3c]
00890cc0  e2 ff ff ea                                      b #0x890c50
; mapping-symbol data/literal pool
00890cc4  78 3e 10 00 a8 1a 00 00                          .byte 0x78, 0x3e, 0x10, 0x00, 0xa8, 0x1a, 0x00, 0x00

; FUNCTION 0x00890ccc, declared_size=116, range_size=116, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface7SetGainEf
; demangled: vox::DriverCallbackSourceInterface::SetGain(float)
; decoder-mode: arm
00890ccc  70 40 2d e9                                      push {r4, r5, r6, lr}
00890cd0  08 40 80 e2                                      add r4, r0, #8
00890cd4  01 60 a0 e1                                      mov r6, r1
00890cd8  00 50 a0 e1                                      mov r5, r0
00890cdc  04 00 a0 e1                                      mov r0, r4
00890ce0  e5 09 00 eb                                      bl #0x89347c
00890ce4  06 00 a0 e1                                      mov r0, r6
00890ce8  fe 15 a0 e3                                      mov r1, #0x3f800000
00890cec  81 f5 e9 eb                                      bl #0x30e2f8
00890cf0  00 00 50 e3                                      cmp r0, #0
00890cf4  01 39 a0 13                                      movne r3, #0x4000
00890cf8  28 30 85 15                                      strne r3, [r5, #0x28]
00890cfc  0c 00 00 1a                                      bne #0x890d34
00890d00  06 00 a0 e1                                      mov r0, r6
00890d04  00 10 a0 e3                                      mov r1, #0
00890d08  7f f6 e9 eb                                      bl #0x30e70c
00890d0c  00 00 50 e3                                      cmp r0, #0
00890d10  00 30 a0 13                                      movne r3, #0
00890d14  28 30 85 15                                      strne r3, [r5, #0x28]
00890d18  05 00 00 1a                                      bne #0x890d34
00890d1c  46 14 a0 e3                                      mov r1, #0x46000000
00890d20  02 15 81 e2                                      add r1, r1, #0x800000
00890d24  06 00 a0 e1                                      mov r0, r6
00890d28  0f f8 e9 eb                                      bl #0x30ed6c
00890d2c  e6 f5 e9 eb                                      bl #0x30e4cc
00890d30  28 00 85 e5                                      str r0, [r5, #0x28]
00890d34  04 00 a0 e1                                      mov r0, r4
00890d38  70 40 bd e8                                      pop {r4, r5, r6, lr}
00890d3c  cd 09 00 ea                                      b #0x893478

; FUNCTION 0x00890d40, declared_size=204, range_size=204, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface10UploadDataEPvi
; demangled: vox::DriverCallbackSourceInterface::UploadData(void*, int)
; decoder-mode: arm
00890d40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00890d44  08 50 80 e2                                      add r5, r0, #8
00890d48  00 40 a0 e1                                      mov r4, r0
00890d4c  05 00 a0 e1                                      mov r0, r5
00890d50  02 60 a0 e1                                      mov r6, r2
00890d54  01 70 a0 e1                                      mov r7, r1
00890d58  c7 09 00 eb                                      bl #0x89347c
00890d5c  50 30 94 e5                                      ldr r3, [r4, #0x50]
00890d60  01 00 73 e3                                      cmn r3, #1
00890d64  00 00 56 13                                      cmpne r6, #0
00890d68  00 20 a0 c3                                      movgt r2, #0
00890d6c  01 20 a0 d3                                      movle r2, #1
00890d70  22 00 00 da                                      ble #0x890e00
00890d74  48 10 94 e5                                      ldr r1, [r4, #0x48]
00890d78  18 30 a0 e3                                      mov r3, #0x18
00890d7c  60 00 94 e5                                      ldr r0, [r4, #0x60]
00890d80  93 01 01 e0                                      mul r1, r3, r1
00890d84  01 c0 80 e0                                      add ip, r0, r1
00890d88  14 c0 dc e5                                      ldrb ip, [ip, #0x14]
00890d8c  00 00 5c e3                                      cmp ip, #0
00890d90  1a 00 00 0a                                      beq #0x890e00
00890d94  01 70 80 e7                                      str r7, [r0, r1]
00890d98  48 00 94 e5                                      ldr r0, [r4, #0x48]
00890d9c  60 10 94 e5                                      ldr r1, [r4, #0x60]
00890da0  93 10 21 e0                                      mla r1, r3, r0, r1
00890da4  04 60 81 e5                                      str r6, [r1, #4]
00890da8  48 00 94 e5                                      ldr r0, [r4, #0x48]
00890dac  60 10 94 e5                                      ldr r1, [r4, #0x60]
00890db0  93 10 21 e0                                      mla r1, r3, r0, r1
00890db4  08 60 81 e5                                      str r6, [r1, #8]
00890db8  48 00 94 e5                                      ldr r0, [r4, #0x48]
00890dbc  60 10 94 e5                                      ldr r1, [r4, #0x60]
00890dc0  93 10 21 e0                                      mla r1, r3, r0, r1
00890dc4  14 20 c1 e5                                      strb r2, [r1, #0x14]
00890dc8  48 00 94 e5                                      ldr r0, [r4, #0x48]
00890dcc  60 10 94 e5                                      ldr r1, [r4, #0x60]
00890dd0  93 10 21 e0                                      mla r1, r3, r0, r1
00890dd4  0c 20 81 e5                                      str r2, [r1, #0xc]
00890dd8  48 00 94 e5                                      ldr r0, [r4, #0x48]
00890ddc  60 10 94 e5                                      ldr r1, [r4, #0x60]
00890de0  93 10 23 e0                                      mla r3, r3, r0, r1
00890de4  10 20 83 e5                                      str r2, [r3, #0x10]
00890de8  48 00 94 e5                                      ldr r0, [r4, #0x48]
00890dec  44 10 94 e5                                      ldr r1, [r4, #0x44]
00890df0  01 00 80 e2                                      add r0, r0, #1
00890df4  48 00 84 e5                                      str r0, [r4, #0x48]
00890df8  c1 f6 e9 eb                                      bl #0x30e904
00890dfc  48 10 84 e5                                      str r1, [r4, #0x48]
00890e00  05 00 a0 e1                                      mov r0, r5
00890e04  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00890e08  9a 09 00 ea                                      b #0x893478

; FUNCTION 0x00890e0c, declared_size=128, range_size=128, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface8NeedDataEv
; demangled: vox::DriverCallbackSourceInterface::NeedData()
; decoder-mode: arm
00890e0c  70 40 2d e9                                      push {r4, r5, r6, lr}
00890e10  08 50 80 e2                                      add r5, r0, #8
00890e14  00 40 a0 e1                                      mov r4, r0
00890e18  05 00 a0 e1                                      mov r0, r5
00890e1c  96 09 00 eb                                      bl #0x89347c
00890e20  50 30 94 e5                                      ldr r3, [r4, #0x50]
00890e24  01 00 73 e3                                      cmn r3, #1
00890e28  0a 00 00 0a                                      beq #0x890e58
00890e2c  60 10 94 e5                                      ldr r1, [r4, #0x60]
00890e30  64 30 94 e5                                      ldr r3, [r4, #0x64]
00890e34  03 30 61 e0                                      rsb r3, r1, r3
00890e38  c3 31 a0 e1                                      asr r3, r3, #3
00890e3c  03 21 83 e0                                      add r2, r3, r3, lsl #2
00890e40  02 22 82 e0                                      add r2, r2, r2, lsl #4
00890e44  02 24 82 e0                                      add r2, r2, r2, lsl #8
00890e48  02 28 82 e0                                      add r2, r2, r2, lsl #16
00890e4c  82 30 83 e0                                      add r3, r3, r2, lsl #1
00890e50  00 00 53 e3                                      cmp r3, #0
00890e54  04 00 00 1a                                      bne #0x890e6c
00890e58  05 00 a0 e1                                      mov r0, r5
00890e5c  00 40 a0 e3                                      mov r4, #0
00890e60  84 09 00 eb                                      bl #0x893478
00890e64  04 00 a0 e1                                      mov r0, r4
00890e68  70 80 bd e8                                      pop {r4, r5, r6, pc}
00890e6c  48 30 94 e5                                      ldr r3, [r4, #0x48]
00890e70  18 20 a0 e3                                      mov r2, #0x18
00890e74  05 00 a0 e1                                      mov r0, r5
00890e78  92 13 21 e0                                      mla r1, r2, r3, r1
00890e7c  14 40 d1 e5                                      ldrb r4, [r1, #0x14]
00890e80  7c 09 00 eb                                      bl #0x893478
00890e84  04 00 a0 e1                                      mov r0, r4
00890e88  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00890e8c, declared_size=92, range_size=92, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface8GetStateEv
; demangled: vox::DriverCallbackSourceInterface::GetState()
; decoder-mode: arm
00890e8c  70 40 2d e9                                      push {r4, r5, r6, lr}
00890e90  08 60 80 e2                                      add r6, r0, #8
00890e94  00 50 a0 e1                                      mov r5, r0
00890e98  06 00 a0 e1                                      mov r0, r6
00890e9c  76 09 00 eb                                      bl #0x89347c
00890ea0  50 40 95 e5                                      ldr r4, [r5, #0x50]
00890ea4  01 00 54 e3                                      cmp r4, #1
00890ea8  03 00 00 0a                                      beq #0x890ebc
00890eac  06 00 a0 e1                                      mov r0, r6
00890eb0  70 09 00 eb                                      bl #0x893478
00890eb4  04 00 a0 e1                                      mov r0, r4
00890eb8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00890ebc  60 20 95 e5                                      ldr r2, [r5, #0x60]
00890ec0  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
00890ec4  18 10 a0 e3                                      mov r1, #0x18
00890ec8  06 00 a0 e1                                      mov r0, r6
00890ecc  91 23 23 e0                                      mla r3, r1, r3, r2
00890ed0  14 30 d3 e5                                      ldrb r3, [r3, #0x14]
00890ed4  00 00 53 e3                                      cmp r3, #0
00890ed8  03 40 a0 13                                      movne r4, #3
00890edc  65 09 00 eb                                      bl #0x893478
00890ee0  04 00 a0 e1                                      mov r0, r4
00890ee4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00890ee8, declared_size=96, range_size=96, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface5ResetEv
; demangled: vox::DriverCallbackSourceInterface::Reset()
; decoder-mode: arm
00890ee8  70 40 2d e9                                      push {r4, r5, r6, lr}
00890eec  08 50 80 e2                                      add r5, r0, #8
00890ef0  00 40 a0 e1                                      mov r4, r0
00890ef4  05 00 a0 e1                                      mov r0, r5
00890ef8  5f 09 00 eb                                      bl #0x89347c
00890efc  64 20 94 e5                                      ldr r2, [r4, #0x64]
00890f00  60 30 94 e5                                      ldr r3, [r4, #0x60]
00890f04  02 30 63 e0                                      rsb r3, r3, r2
00890f08  c3 31 a0 e1                                      asr r3, r3, #3
00890f0c  03 21 83 e0                                      add r2, r3, r3, lsl #2
00890f10  02 22 82 e0                                      add r2, r2, r2, lsl #4
00890f14  02 24 82 e0                                      add r2, r2, r2, lsl #8
00890f18  02 28 82 e0                                      add r2, r2, r2, lsl #16
00890f1c  82 30 83 e0                                      add r3, r3, r2, lsl #1
00890f20  00 00 53 e3                                      cmp r3, #0
00890f24  04 00 00 0a                                      beq #0x890f3c
00890f28  00 60 a0 e3                                      mov r6, #0
00890f2c  50 60 84 e5                                      str r6, [r4, #0x50]
00890f30  04 00 a0 e1                                      mov r0, r4
00890f34  83 fc ff eb                                      bl #0x890148
00890f38  58 60 84 e5                                      str r6, [r4, #0x58]
00890f3c  05 00 a0 e1                                      mov r0, r5
00890f40  70 40 bd e8                                      pop {r4, r5, r6, lr}
00890f44  4b 09 00 ea                                      b #0x893478

; FUNCTION 0x00890f48, declared_size=60, range_size=60, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface5PauseEv
; demangled: vox::DriverCallbackSourceInterface::Pause()
; decoder-mode: arm
00890f48  70 40 2d e9                                      push {r4, r5, r6, lr}
00890f4c  08 50 80 e2                                      add r5, r0, #8
00890f50  00 40 a0 e1                                      mov r4, r0
00890f54  05 00 a0 e1                                      mov r0, r5
00890f58  47 09 00 eb                                      bl #0x89347c
00890f5c  50 30 94 e5                                      ldr r3, [r4, #0x50]
00890f60  05 00 a0 e1                                      mov r0, r5
00890f64  01 00 53 e3                                      cmp r3, #1
00890f68  00 30 a0 03                                      moveq r3, #0
00890f6c  02 20 a0 03                                      moveq r2, #2
00890f70  2c 30 84 05                                      streq r3, [r4, #0x2c]
00890f74  50 20 84 05                                      streq r2, [r4, #0x50]
00890f78  30 30 84 05                                      streq r3, [r4, #0x30]
00890f7c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00890f80  3c 09 00 ea                                      b #0x893478

; FUNCTION 0x00890f84, declared_size=76, range_size=76, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface4StopEv
; demangled: vox::DriverCallbackSourceInterface::Stop()
; decoder-mode: arm
00890f84  70 40 2d e9                                      push {r4, r5, r6, lr}
00890f88  08 50 80 e2                                      add r5, r0, #8
00890f8c  00 40 a0 e1                                      mov r4, r0
00890f90  05 00 a0 e1                                      mov r0, r5
00890f94  38 09 00 eb                                      bl #0x89347c
00890f98  50 30 94 e5                                      ldr r3, [r4, #0x50]
00890f9c  01 00 73 e3                                      cmn r3, #1
00890fa0  07 00 00 0a                                      beq #0x890fc4
00890fa4  03 30 a0 e3                                      mov r3, #3
00890fa8  50 30 84 e5                                      str r3, [r4, #0x50]
00890fac  04 00 a0 e1                                      mov r0, r4
00890fb0  64 fc ff eb                                      bl #0x890148
00890fb4  00 30 a0 e3                                      mov r3, #0
00890fb8  2c 30 84 e5                                      str r3, [r4, #0x2c]
00890fbc  58 30 84 e5                                      str r3, [r4, #0x58]
00890fc0  30 30 84 e5                                      str r3, [r4, #0x30]
00890fc4  05 00 a0 e1                                      mov r0, r5
00890fc8  70 40 bd e8                                      pop {r4, r5, r6, lr}
00890fcc  29 09 00 ea                                      b #0x893478

; FUNCTION 0x00890fd0, declared_size=48, range_size=48, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface4PlayEv
; demangled: vox::DriverCallbackSourceInterface::Play()
; decoder-mode: arm
00890fd0  70 40 2d e9                                      push {r4, r5, r6, lr}
00890fd4  08 50 80 e2                                      add r5, r0, #8
00890fd8  00 40 a0 e1                                      mov r4, r0
00890fdc  05 00 a0 e1                                      mov r0, r5
00890fe0  25 09 00 eb                                      bl #0x89347c
00890fe4  50 30 94 e5                                      ldr r3, [r4, #0x50]
00890fe8  05 00 a0 e1                                      mov r0, r5
00890fec  01 00 73 e3                                      cmn r3, #1
00890ff0  01 30 a0 13                                      movne r3, #1
00890ff4  50 30 84 15                                      strne r3, [r4, #0x50]
00890ff8  70 40 bd e8                                      pop {r4, r5, r6, lr}
00890ffc  1d 09 00 ea                                      b #0x893478

; FUNCTION 0x008911fc, declared_size=76, range_size=76, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterfaceD1Ev
; demangled: vox::DriverCallbackSourceInterface::~DriverCallbackSourceInterface()
; decoder-mode: arm
008911fc  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00891200  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00891204  10 40 2d e9                                      push {r4, lr}
00891208  03 30 8f e0                                      add r3, pc, r3
0089120c  02 20 93 e7                                      ldr r2, [r3, r2]
00891210  00 40 a0 e1                                      mov r4, r0
00891214  08 20 82 e2                                      add r2, r2, #8
00891218  00 20 80 e5                                      str r2, [r0]
0089121c  35 fe ff eb                                      bl #0x890af8
00891220  60 00 94 e5                                      ldr r0, [r4, #0x60]
00891224  00 00 50 e3                                      cmp r0, #0
00891228  00 00 00 0a                                      beq #0x891230
0089122c  84 fc e9 eb                                      bl #0x310444
00891230  08 00 84 e2                                      add r0, r4, #8
00891234  db 08 00 eb                                      bl #0x8935a8
00891238  04 00 a0 e1                                      mov r0, r4
0089123c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00891240  88 38 10 00 78 46 00 00                          .byte 0x88, 0x38, 0x10, 0x00, 0x78, 0x46, 0x00, 0x00

; FUNCTION 0x00891248, declared_size=28, range_size=28, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterfaceD0Ev
; demangled: vox::DriverCallbackSourceInterface::~DriverCallbackSourceInterface()
; decoder-mode: arm
00891248  10 40 2d e9                                      push {r4, lr}
0089124c  00 40 a0 e1                                      mov r4, r0
00891250  e9 ff ff eb                                      bl #0x8911fc
00891254  04 00 a0 e1                                      mov r0, r4
00891258  14 f4 e9 eb                                      bl #0x30e2b0
0089125c  04 00 a0 e1                                      mov r0, r4
00891260  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00891264, declared_size=76, range_size=76, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterfaceD2Ev
; demangled: vox::DriverCallbackSourceInterface::~DriverCallbackSourceInterface()
; decoder-mode: arm
00891264  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00891268  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0089126c  10 40 2d e9                                      push {r4, lr}
00891270  03 30 8f e0                                      add r3, pc, r3
00891274  02 20 93 e7                                      ldr r2, [r3, r2]
00891278  00 40 a0 e1                                      mov r4, r0
0089127c  08 20 82 e2                                      add r2, r2, #8
00891280  00 20 80 e5                                      str r2, [r0]
00891284  1b fe ff eb                                      bl #0x890af8
00891288  60 00 94 e5                                      ldr r0, [r4, #0x60]
0089128c  00 00 50 e3                                      cmp r0, #0
00891290  00 00 00 0a                                      beq #0x891298
00891294  6a fc e9 eb                                      bl #0x310444
00891298  08 00 84 e2                                      add r0, r4, #8
0089129c  c1 08 00 eb                                      bl #0x8935a8
008912a0  04 00 a0 e1                                      mov r0, r4
008912a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008912a8  20 38 10 00 78 46 00 00                          .byte 0x20, 0x38, 0x10, 0x00, 0x78, 0x46, 0x00, 0x00

; FUNCTION 0x008913b8, declared_size=260, range_size=260, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterfaceC1EPvS1_j
; demangled: vox::DriverCallbackSourceInterface::DriverCallbackSourceInterface(void*, void*, unsigned int)
; decoder-mode: arm
008913b8  f4 c0 9f e5                                      ldr ip, [pc, #0xf4]
008913bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008913c0  f0 e0 9f e5                                      ldr lr, [pc, #0xf0]
008913c4  0c c0 8f e0                                      add ip, pc, ip
008913c8  00 40 a0 e1                                      mov r4, r0
008913cc  0e e0 9c e7                                      ldr lr, [ip, lr]
008913d0  02 50 a0 e1                                      mov r5, r2
008913d4  03 60 a0 e1                                      mov r6, r3
008913d8  08 e0 8e e2                                      add lr, lr, #8
008913dc  08 e0 80 e4                                      str lr, [r0], #8
008913e0  01 70 a0 e1                                      mov r7, r1
008913e4  79 08 00 eb                                      bl #0x8935d0
008913e8  00 30 a0 e3                                      mov r3, #0
008913ec  00 20 a0 e3                                      mov r2, #0
008913f0  01 19 a0 e3                                      mov r1, #0x4000
008913f4  14 30 84 e5                                      str r3, [r4, #0x14]
008913f8  10 c0 84 e2                                      add ip, r4, #0x10
008913fc  40 10 84 e5                                      str r1, [r4, #0x40]
00891400  54 60 84 e5                                      str r6, [r4, #0x54]
00891404  68 30 84 e5                                      str r3, [r4, #0x68]
00891408  8c 20 84 e5                                      str r2, [r4, #0x8c]
0089140c  10 30 84 e5                                      str r3, [r4, #0x10]
00891410  18 30 84 e5                                      str r3, [r4, #0x18]
00891414  1c 30 84 e5                                      str r3, [r4, #0x1c]
00891418  24 30 c4 e5                                      strb r3, [r4, #0x24]
0089141c  2c 30 84 e5                                      str r3, [r4, #0x2c]
00891420  30 30 84 e5                                      str r3, [r4, #0x30]
00891424  34 10 84 e5                                      str r1, [r4, #0x34]
00891428  38 10 84 e5                                      str r1, [r4, #0x38]
0089142c  3c 30 84 e5                                      str r3, [r4, #0x3c]
00891430  50 30 84 e5                                      str r3, [r4, #0x50]
00891434  60 30 84 e5                                      str r3, [r4, #0x60]
00891438  64 30 84 e5                                      str r3, [r4, #0x64]
0089143c  6c 20 84 e5                                      str r2, [r4, #0x6c]
00891440  70 20 84 e5                                      str r2, [r4, #0x70]
00891444  74 20 84 e5                                      str r2, [r4, #0x74]
00891448  78 20 84 e5                                      str r2, [r4, #0x78]
0089144c  7c 20 84 e5                                      str r2, [r4, #0x7c]
00891450  80 20 84 e5                                      str r2, [r4, #0x80]
00891454  84 20 84 e5                                      str r2, [r4, #0x84]
00891458  88 20 84 e5                                      str r2, [r4, #0x88]
0089145c  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
00891460  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00891464  14 00 94 e5                                      ldr r0, [r4, #0x14]
00891468  3d f5 e9 eb                                      bl #0x30e964
0089146c  a6 1b 09 e3                                      movw r1, #0x9ba6
00891470  44 1b 43 e3                                      movt r1, #0x3b44
00891474  3c f6 e9 eb                                      bl #0x30ed6c
00891478  13 f4 e9 eb                                      bl #0x30e4cc
0089147c  00 00 55 e3                                      cmp r5, #0
00891480  20 00 84 e5                                      str r0, [r4, #0x20]
00891484  00 30 95 15                                      ldrne r3, [r5]
00891488  03 30 a0 03                                      moveq r3, #3
0089148c  10 20 94 e5                                      ldr r2, [r4, #0x10]
00891490  44 30 84 e5                                      str r3, [r4, #0x44]
00891494  18 30 94 e5                                      ldr r3, [r4, #0x18]
00891498  04 00 a0 e1                                      mov r0, r4
0089149c  c3 31 a0 e1                                      asr r3, r3, #3
008914a0  92 03 03 e0                                      mul r3, r2, r3
008914a4  87 2f a0 e3                                      mov r2, #0x21c
008914a8  04 20 84 e5                                      str r2, [r4, #4]
008914ac  5c 30 84 e5                                      str r3, [r4, #0x5c]
008914b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
008914b4  cc 36 10 00 78 46 00 00                          .byte 0xcc, 0x36, 0x10, 0x00, 0x78, 0x46, 0x00, 0x00

; FUNCTION 0x008914bc, declared_size=260, range_size=260, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterfaceC2EPvS1_j
; demangled: vox::DriverCallbackSourceInterface::DriverCallbackSourceInterface(void*, void*, unsigned int)
; decoder-mode: arm
008914bc  f4 c0 9f e5                                      ldr ip, [pc, #0xf4]
008914c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008914c4  f0 e0 9f e5                                      ldr lr, [pc, #0xf0]
008914c8  0c c0 8f e0                                      add ip, pc, ip
008914cc  00 40 a0 e1                                      mov r4, r0
008914d0  0e e0 9c e7                                      ldr lr, [ip, lr]
008914d4  02 50 a0 e1                                      mov r5, r2
008914d8  03 60 a0 e1                                      mov r6, r3
008914dc  08 e0 8e e2                                      add lr, lr, #8
008914e0  08 e0 80 e4                                      str lr, [r0], #8
008914e4  01 70 a0 e1                                      mov r7, r1
008914e8  38 08 00 eb                                      bl #0x8935d0
008914ec  00 30 a0 e3                                      mov r3, #0
008914f0  00 20 a0 e3                                      mov r2, #0
008914f4  01 19 a0 e3                                      mov r1, #0x4000
008914f8  14 30 84 e5                                      str r3, [r4, #0x14]
008914fc  10 c0 84 e2                                      add ip, r4, #0x10
00891500  40 10 84 e5                                      str r1, [r4, #0x40]
00891504  54 60 84 e5                                      str r6, [r4, #0x54]
00891508  68 30 84 e5                                      str r3, [r4, #0x68]
0089150c  8c 20 84 e5                                      str r2, [r4, #0x8c]
00891510  10 30 84 e5                                      str r3, [r4, #0x10]
00891514  18 30 84 e5                                      str r3, [r4, #0x18]
00891518  1c 30 84 e5                                      str r3, [r4, #0x1c]
0089151c  24 30 c4 e5                                      strb r3, [r4, #0x24]
00891520  2c 30 84 e5                                      str r3, [r4, #0x2c]
00891524  30 30 84 e5                                      str r3, [r4, #0x30]
00891528  34 10 84 e5                                      str r1, [r4, #0x34]
0089152c  38 10 84 e5                                      str r1, [r4, #0x38]
00891530  3c 30 84 e5                                      str r3, [r4, #0x3c]
00891534  50 30 84 e5                                      str r3, [r4, #0x50]
00891538  60 30 84 e5                                      str r3, [r4, #0x60]
0089153c  64 30 84 e5                                      str r3, [r4, #0x64]
00891540  6c 20 84 e5                                      str r2, [r4, #0x6c]
00891544  70 20 84 e5                                      str r2, [r4, #0x70]
00891548  74 20 84 e5                                      str r2, [r4, #0x74]
0089154c  78 20 84 e5                                      str r2, [r4, #0x78]
00891550  7c 20 84 e5                                      str r2, [r4, #0x7c]
00891554  80 20 84 e5                                      str r2, [r4, #0x80]
00891558  84 20 84 e5                                      str r2, [r4, #0x84]
0089155c  88 20 84 e5                                      str r2, [r4, #0x88]
00891560  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
00891564  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00891568  14 00 94 e5                                      ldr r0, [r4, #0x14]
0089156c  fc f4 e9 eb                                      bl #0x30e964
00891570  a6 1b 09 e3                                      movw r1, #0x9ba6
00891574  44 1b 43 e3                                      movt r1, #0x3b44
00891578  fb f5 e9 eb                                      bl #0x30ed6c
0089157c  d2 f3 e9 eb                                      bl #0x30e4cc
00891580  00 00 55 e3                                      cmp r5, #0
00891584  20 00 84 e5                                      str r0, [r4, #0x20]
00891588  00 30 95 15                                      ldrne r3, [r5]
0089158c  03 30 a0 03                                      moveq r3, #3
00891590  10 20 94 e5                                      ldr r2, [r4, #0x10]
00891594  44 30 84 e5                                      str r3, [r4, #0x44]
00891598  18 30 94 e5                                      ldr r3, [r4, #0x18]
0089159c  04 00 a0 e1                                      mov r0, r4
008915a0  c3 31 a0 e1                                      asr r3, r3, #3
008915a4  92 03 03 e0                                      mul r3, r2, r3
008915a8  87 2f a0 e3                                      mov r2, #0x21c
008915ac  04 20 84 e5                                      str r2, [r4, #4]
008915b0  5c 30 84 e5                                      str r3, [r4, #0x5c]
008915b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
008915b8  c8 35 10 00 78 46 00 00                          .byte 0xc8, 0x35, 0x10, 0x00, 0x78, 0x46, 0x00, 0x00

; FUNCTION 0x008915c0, declared_size=672, range_size=672, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface11GetWorkDataEPhii
; demangled: vox::DriverCallbackSourceInterface::GetWorkData(unsigned char*, int, int)
; decoder-mode: arm
008915c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008915c4  00 40 a0 e1                                      mov r4, r0
008915c8  60 c0 94 e5                                      ldr ip, [r4, #0x60]
008915cc  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
008915d0  1c d0 4d e2                                      sub sp, sp, #0x1c
008915d4  18 60 a0 e3                                      mov r6, #0x18
008915d8  04 10 8d e5                                      str r1, [sp, #4]
008915dc  96 c0 21 e0                                      mla r1, r6, r0, ip
008915e0  08 20 8d e5                                      str r2, [sp, #8]
008915e4  14 20 d1 e5                                      ldrb r2, [r1, #0x14]
008915e8  03 90 a0 e1                                      mov sb, r3
008915ec  00 00 52 e3                                      cmp r2, #0
008915f0  00 00 a0 13                                      movne r0, #0
008915f4  08 00 8d 15                                      strne r0, [sp, #8]
008915f8  30 00 00 1a                                      bne #0x8916c0
008915fc  08 10 9d e5                                      ldr r1, [sp, #8]
00891600  00 00 51 e3                                      cmp r1, #0
00891604  08 20 8d d5                                      strle r2, [sp, #8]
00891608  28 00 00 da                                      ble #0x8916b0
0089160c  08 50 9d e5                                      ldr r5, [sp, #8]
00891610  00 10 a0 e1                                      mov r1, r0
00891614  96 01 0e e0                                      mul lr, r6, r1
00891618  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
0089161c  0e 30 8c e0                                      add r3, ip, lr
00891620  10 10 93 e5                                      ldr r1, [r3, #0x10]
00891624  08 80 9d e5                                      ldr r8, [sp, #8]
00891628  04 70 93 e5                                      ldr r7, [r3, #4]
0089162c  91 02 01 e0                                      mul r1, r1, r2
00891630  08 a0 65 e0                                      rsb sl, r5, r8
00891634  04 80 9d e5                                      ldr r8, [sp, #4]
00891638  07 70 61 e0                                      rsb r7, r1, r7
0089163c  05 00 57 e1                                      cmp r7, r5
00891640  0a 00 88 e0                                      add r0, r8, sl
00891644  07 20 a0 e1                                      mov r2, r7
00891648  18 80 a0 e3                                      mov r8, #0x18
0089164c  1e 00 00 da                                      ble #0x8916cc
00891650  00 30 93 e5                                      ldr r3, [r3]
00891654  05 20 a0 e1                                      mov r2, r5
00891658  01 10 83 e0                                      add r1, r3, r1
0089165c  81 f4 e9 eb                                      bl #0x30e868
00891660  60 30 94 e5                                      ldr r3, [r4, #0x60]
00891664  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00891668  98 32 22 e0                                      mla r2, r8, r2, r3
0089166c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00891670  09 90 83 e0                                      add sb, r3, sb
00891674  0c 90 82 e5                                      str sb, [r2, #0xc]
00891678  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
0089167c  60 30 94 e5                                      ldr r3, [r4, #0x60]
00891680  98 32 23 e0                                      mla r3, r8, r2, r3
00891684  10 20 93 e5                                      ldr r2, [r3, #0x10]
00891688  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0089168c  41 27 82 e0                                      add r2, r2, r1, asr #14
00891690  10 20 83 e5                                      str r2, [r3, #0x10]
00891694  60 30 94 e5                                      ldr r3, [r4, #0x60]
00891698  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
0089169c  98 32 28 e0                                      mla r8, r8, r2, r3
008916a0  0c 30 98 e5                                      ldr r3, [r8, #0xc]
008916a4  03 39 a0 e1                                      lsl r3, r3, #0x12
008916a8  23 39 a0 e1                                      lsr r3, r3, #0x12
008916ac  0c 30 88 e5                                      str r3, [r8, #0xc]
008916b0  58 30 94 e5                                      ldr r3, [r4, #0x58]
008916b4  08 10 9d e5                                      ldr r1, [sp, #8]
008916b8  01 30 83 e0                                      add r3, r3, r1
008916bc  58 30 84 e5                                      str r3, [r4, #0x58]
008916c0  08 00 9d e5                                      ldr r0, [sp, #8]
008916c4  1c d0 8d e2                                      add sp, sp, #0x1c
008916c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008916cc  0e 30 9c e7                                      ldr r3, [ip, lr]
008916d0  05 50 67 e0                                      rsb r5, r7, r5
008916d4  01 10 83 e0                                      add r1, r3, r1
008916d8  62 f4 e9 eb                                      bl #0x30e868
008916dc  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
008916e0  60 30 94 e5                                      ldr r3, [r4, #0x60]
008916e4  96 32 23 e0                                      mla r3, r6, r2, r3
008916e8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
008916ec  09 90 82 e0                                      add sb, r2, sb
008916f0  0c 90 83 e5                                      str sb, [r3, #0xc]
008916f4  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
008916f8  60 30 94 e5                                      ldr r3, [r4, #0x60]
008916fc  96 32 23 e0                                      mla r3, r6, r2, r3
00891700  10 20 93 e5                                      ldr r2, [r3, #0x10]
00891704  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00891708  41 27 82 e0                                      add r2, r2, r1, asr #14
0089170c  10 20 83 e5                                      str r2, [r3, #0x10]
00891710  60 30 94 e5                                      ldr r3, [r4, #0x60]
00891714  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00891718  96 32 22 e0                                      mla r2, r6, r2, r3
0089171c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00891720  03 39 a0 e1                                      lsl r3, r3, #0x12
00891724  23 39 a0 e1                                      lsr r3, r3, #0x12
00891728  0c 30 82 e5                                      str r3, [r2, #0xc]
0089172c  60 30 94 e5                                      ldr r3, [r4, #0x60]
00891730  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00891734  0c 30 8d e5                                      str r3, [sp, #0xc]
00891738  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
0089173c  96 32 2b e0                                      mla fp, r6, r2, r3
00891740  10 00 8d e5                                      str r0, [sp, #0x10]
00891744  00 10 a0 e1                                      mov r1, r0
00891748  04 00 9b e5                                      ldr r0, [fp, #4]
0089174c  10 90 9b e5                                      ldr sb, [fp, #0x10]
00891750  00 20 8d e5                                      str r2, [sp]
00891754  d2 f2 e9 eb                                      bl #0x30e2a4
00891758  0c 10 9b e5                                      ldr r1, [fp, #0xc]
0089175c  00 00 59 e1                                      cmp sb, r0
00891760  00 30 a0 e1                                      mov r3, r0
00891764  14 10 8d e5                                      str r1, [sp, #0x14]
00891768  00 20 9d e5                                      ldr r2, [sp]
0089176c  26 00 00 3a                                      blo #0x89180c
00891770  01 00 a0 e3                                      mov r0, #1
00891774  14 00 cb e5                                      strb r0, [fp, #0x14]
00891778  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0089177c  44 10 94 e5                                      ldr r1, [r4, #0x44]
00891780  01 00 80 e2                                      add r0, r0, #1
00891784  4c 00 84 e5                                      str r0, [r4, #0x4c]
00891788  00 30 8d e5                                      str r3, [sp]
0089178c  5c f4 e9 eb                                      bl #0x30e904
00891790  4c 10 84 e5                                      str r1, [r4, #0x4c]
00891794  00 30 9d e5                                      ldr r3, [sp]
00891798  60 c0 94 e5                                      ldr ip, [r4, #0x60]
0089179c  09 90 63 e0                                      rsb sb, r3, sb
008917a0  96 c1 22 e0                                      mla r2, r6, r1, ip
008917a4  14 30 9d e5                                      ldr r3, [sp, #0x14]
008917a8  09 97 83 e0                                      add sb, r3, sb, lsl #14
008917ac  14 30 d2 e5                                      ldrb r3, [r2, #0x14]
008917b0  00 00 53 e3                                      cmp r3, #0
008917b4  10 00 00 1a                                      bne #0x8917fc
008917b8  00 00 55 e3                                      cmp r5, #0
008917bc  94 ff ff ca                                      bgt #0x891614
008917c0  08 00 9d e5                                      ldr r0, [sp, #8]
008917c4  00 00 65 e0                                      rsb r0, r5, r0
008917c8  08 00 8d e5                                      str r0, [sp, #8]
008917cc  b7 ff ff ea                                      b #0x8916b0
008917d0  00 00 55 e3                                      cmp r5, #0
008917d4  08 00 00 da                                      ble #0x8917fc
008917d8  04 20 9d e5                                      ldr r2, [sp, #4]
008917dc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
008917e0  0a 00 87 e0                                      add r0, r7, sl
008917e4  00 00 82 e0                                      add r0, r2, r0
008917e8  01 10 93 e7                                      ldr r1, [r3, r1]
008917ec  10 20 9d e5                                      ldr r2, [sp, #0x10]
008917f0  1c f4 e9 eb                                      bl #0x30e868
008917f4  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
008917f8  05 50 63 e0                                      rsb r5, r3, r5
008917fc  08 80 9d e5                                      ldr r8, [sp, #8]
00891800  08 80 65 e0                                      rsb r8, r5, r8
00891804  08 80 8d e5                                      str r8, [sp, #8]
00891808  a8 ff ff ea                                      b #0x8916b0
0089180c  01 00 82 e2                                      add r0, r2, #1
00891810  44 10 94 e5                                      ldr r1, [r4, #0x44]
00891814  3a f4 e9 eb                                      bl #0x30e904
00891818  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0089181c  98 01 01 e0                                      mul r1, r8, r1
00891820  01 30 82 e0                                      add r3, r2, r1
00891824  14 30 d3 e5                                      ldrb r3, [r3, #0x14]
00891828  00 00 53 e3                                      cmp r3, #0
0089182c  e7 ff ff 0a                                      beq #0x8917d0
00891830  01 30 a0 e3                                      mov r3, #1
00891834  14 30 cb e5                                      strb r3, [fp, #0x14]
00891838  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0089183c  08 30 9d e5                                      ldr r3, [sp, #8]
00891840  44 10 94 e5                                      ldr r1, [r4, #0x44]
00891844  01 00 80 e2                                      add r0, r0, #1
00891848  03 30 65 e0                                      rsb r3, r5, r3
0089184c  08 30 8d e5                                      str r3, [sp, #8]
00891850  4c 00 84 e5                                      str r0, [r4, #0x4c]
00891854  2a f4 e9 eb                                      bl #0x30e904
00891858  4c 10 84 e5                                      str r1, [r4, #0x4c]
0089185c  93 ff ff ea                                      b #0x8916b0

; FUNCTION 0x00891860, declared_size=800, range_size=800, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface18FillBufferStereo16EPii
; demangled: vox::DriverCallbackSourceInterface::FillBufferStereo16(int*, int)
; decoder-mode: arm
00891860  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00891864  50 30 90 e5                                      ldr r3, [r0, #0x50]
00891868  1c d0 4d e2                                      sub sp, sp, #0x1c
0089186c  00 50 a0 e1                                      mov r5, r0
00891870  01 00 53 e3                                      cmp r3, #1
00891874  01 40 a0 e1                                      mov r4, r1
00891878  02 70 a0 e1                                      mov r7, r2
0089187c  01 00 00 0a                                      beq #0x891888
00891880  1c d0 8d e2                                      add sp, sp, #0x1c
00891884  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00891888  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
0089188c  60 20 90 e5                                      ldr r2, [r0, #0x60]
00891890  18 10 a0 e3                                      mov r1, #0x18
00891894  91 23 23 e0                                      mla r3, r1, r3, r2
00891898  14 a0 d3 e5                                      ldrb sl, [r3, #0x14]
0089189c  00 00 5a e3                                      cmp sl, #0
008918a0  f6 ff ff 1a                                      bne #0x891880
008918a4  40 90 90 e5                                      ldr sb, [r0, #0x40]
008918a8  0c 60 93 e5                                      ldr r6, [r3, #0xc]
008918ac  99 07 09 e0                                      mul sb, sb, r7
008918b0  49 b7 a0 e1                                      asr fp, sb, #0xe
008918b4  03 b0 8b e2                                      add fp, fp, #3
008918b8  0b b1 a0 e1                                      lsl fp, fp, #2
008918bc  0b 00 a0 e1                                      mov r0, fp
008918c0  08 fb ff eb                                      bl #0x8904e8
008918c4  00 30 90 e5                                      ldr r3, [r0]
008918c8  00 80 a0 e1                                      mov r8, r0
008918cc  00 00 53 e3                                      cmp r3, #0
008918d0  00 30 e0 03                                      mvneq r3, #0
008918d4  50 30 85 05                                      streq r3, [r5, #0x50]
008918d8  e8 ff ff 0a                                      beq #0x891880
008918dc  04 10 90 e5                                      ldr r1, [r0, #4]
008918e0  0b 20 a0 e1                                      mov r2, fp
008918e4  09 30 a0 e1                                      mov r3, sb
008918e8  05 00 a0 e1                                      mov r0, r5
008918ec  33 ff ff eb                                      bl #0x8915c0
008918f0  00 00 50 e3                                      cmp r0, #0
008918f4  03 30 80 e2                                      add r3, r0, #3
008918f8  03 00 a0 b1                                      movlt r0, r3
008918fc  40 01 a0 e1                                      asr r0, r0, #2
00891900  40 10 95 e5                                      ldr r1, [r5, #0x40]
00891904  00 07 a0 e1                                      lsl r0, r0, #0xe
00891908  65 f2 e9 eb                                      bl #0x30e2a4
0089190c  00 00 57 e1                                      cmp r7, r0
00891910  04 80 98 e5                                      ldr r8, [r8, #4]
00891914  87 00 00 ca                                      bgt #0x891b38
00891918  20 30 95 e5                                      ldr r3, [r5, #0x20]
0089191c  0a b0 a0 e1                                      mov fp, sl
00891920  01 90 87 e2                                      add sb, r7, #1
00891924  08 70 8d e5                                      str r7, [sp, #8]
00891928  14 a0 8d e5                                      str sl, [sp, #0x14]
0089192c  03 00 59 e1                                      cmp sb, r3
00891930  0c 90 8d b5                                      strlt sb, [sp, #0xc]
00891934  02 00 00 ba                                      blt #0x891944
00891938  07 00 53 e1                                      cmp r3, r7
0089193c  07 30 a0 a1                                      movge r3, r7
00891940  0c 30 8d e5                                      str r3, [sp, #0xc]
00891944  24 30 d5 e5                                      ldrb r3, [r5, #0x24]
00891948  2c a0 95 e5                                      ldr sl, [r5, #0x2c]
0089194c  00 00 53 e3                                      cmp r3, #0
00891950  73 00 00 0a                                      beq #0x891b24
00891954  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00891958  00 00 52 e3                                      cmp r2, #0
0089195c  00 30 a0 d3                                      movle r3, #0
00891960  10 30 8d d5                                      strle r3, [sp, #0x10]
00891964  06 00 00 da                                      ble #0x891984
00891968  28 00 95 e5                                      ldr r0, [r5, #0x28]
0089196c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00891970  00 00 6a e0                                      rsb r0, sl, r0
00891974  4a f2 e9 eb                                      bl #0x30e2a4
00891978  10 00 8d e5                                      str r0, [sp, #0x10]
0089197c  00 30 50 e2                                      subs r3, r0, #0
00891980  01 30 a0 13                                      movne r3, #1
00891984  0b b0 93 e1                                      orrs fp, r3, fp
00891988  3d 00 00 0a                                      beq #0x891a84
0089198c  08 30 9d e5                                      ldr r3, [sp, #8]
00891990  00 00 53 e3                                      cmp r3, #0
00891994  37 00 00 da                                      ble #0x891a78
00891998  00 70 a0 e3                                      mov r7, #0
0089199c  04 50 8d e5                                      str r5, [sp, #4]
008919a0  2a 00 00 ea                                      b #0x891a50
008919a4  46 17 a0 e1                                      asr r1, r6, #0xe
008919a8  0c b0 9d e5                                      ldr fp, [sp, #0xc]
008919ac  01 20 81 e2                                      add r2, r1, #1
008919b0  01 c1 a0 e1                                      lsl ip, r1, #2
008919b4  02 01 a0 e1                                      lsl r0, r2, #2
008919b8  fc c0 98 e1                                      ldrsh ip, [r8, ip]
008919bc  f0 00 98 e1                                      ldrsh r0, [r8, r0]
008919c0  0b 00 57 e1                                      cmp r7, fp
008919c4  00 50 a0 a3                                      movge r5, #0
008919c8  01 50 a0 b3                                      movlt r5, #1
008919cc  06 39 a0 e1                                      lsl r3, r6, #0x12
008919d0  09 00 57 e1                                      cmp r7, sb
008919d4  01 50 85 a3                                      orrge r5, r5, #1
008919d8  00 00 55 e3                                      cmp r5, #0
008919dc  23 39 a0 e1                                      lsr r3, r3, #0x12
008919e0  00 00 6c e0                                      rsb r0, ip, r0
008919e4  10 50 9d 15                                      ldrne r5, [sp, #0x10]
008919e8  93 00 00 e0                                      mul r0, r3, r0
008919ec  05 a0 8a 10                                      addne sl, sl, r5
008919f0  40 07 8c e0                                      add r0, ip, r0, asr #14
008919f4  00 50 94 e5                                      ldr r5, [r4]
008919f8  90 0a 00 e0                                      mul r0, r0, sl
008919fc  08 b0 9d e5                                      ldr fp, [sp, #8]
00891a00  40 07 85 e0                                      add r0, r5, r0, asr #14
00891a04  00 00 84 e5                                      str r0, [r4]
00891a08  01 11 88 e0                                      add r1, r8, r1, lsl #2
00891a0c  02 21 88 e0                                      add r2, r8, r2, lsl #2
00891a10  f2 10 d1 e1                                      ldrsh r1, [r1, #2]
00891a14  f2 20 d2 e1                                      ldrsh r2, [r2, #2]
00891a18  01 70 87 e2                                      add r7, r7, #1
00891a1c  0b 00 57 e1                                      cmp r7, fp
00891a20  02 20 61 e0                                      rsb r2, r1, r2
00891a24  93 02 03 e0                                      mul r3, r3, r2
00891a28  04 20 94 e5                                      ldr r2, [r4, #4]
00891a2c  43 37 81 e0                                      add r3, r1, r3, asr #14
00891a30  93 0a 03 e0                                      mul r3, r3, sl
00891a34  43 37 82 e0                                      add r3, r2, r3, asr #14
00891a38  04 30 84 e5                                      str r3, [r4, #4]
00891a3c  0c 00 00 0a                                      beq #0x891a74
00891a40  04 50 9d e5                                      ldr r5, [sp, #4]
00891a44  08 40 84 e2                                      add r4, r4, #8
00891a48  40 30 95 e5                                      ldr r3, [r5, #0x40]
00891a4c  03 60 86 e0                                      add r6, r6, r3
00891a50  09 00 57 e1                                      cmp r7, sb
00891a54  d2 ff ff 1a                                      bne #0x8919a4
00891a58  0a 00 a0 e1                                      mov r0, sl
00891a5c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00891a60  0f f2 e9 eb                                      bl #0x30e2a4
00891a64  c0 5f 20 e0                                      eor r5, r0, r0, asr #31
00891a68  c0 5f 65 e0                                      rsb r5, r5, r0, asr #31
00891a6c  10 50 8d e5                                      str r5, [sp, #0x10]
00891a70  cb ff ff ea                                      b #0x8919a4
00891a74  04 50 9d e5                                      ldr r5, [sp, #4]
00891a78  28 a0 95 e5                                      ldr sl, [r5, #0x28]
00891a7c  2c a0 85 e5                                      str sl, [r5, #0x2c]
00891a80  7e ff ff ea                                      b #0x891880
00891a84  00 00 5a e3                                      cmp sl, #0
00891a88  fb ff ff 0a                                      beq #0x891a7c
00891a8c  08 20 9d e5                                      ldr r2, [sp, #8]
00891a90  00 00 52 e3                                      cmp r2, #0
00891a94  f8 ff ff da                                      ble #0x891a7c
00891a98  02 90 a0 e1                                      mov sb, r2
00891a9c  46 27 a0 e1                                      asr r2, r6, #0xe
00891aa0  01 10 82 e2                                      add r1, r2, #1
00891aa4  01 31 a0 e1                                      lsl r3, r1, #2
00891aa8  02 01 a0 e1                                      lsl r0, r2, #2
00891aac  f0 00 98 e1                                      ldrsh r0, [r8, r0]
00891ab0  f3 70 98 e1                                      ldrsh r7, [r8, r3]
00891ab4  06 39 a0 e1                                      lsl r3, r6, #0x12
00891ab8  00 c0 94 e5                                      ldr ip, [r4]
00891abc  23 39 a0 e1                                      lsr r3, r3, #0x12
00891ac0  07 70 60 e0                                      rsb r7, r0, r7
00891ac4  93 07 07 e0                                      mul r7, r3, r7
00891ac8  01 11 88 e0                                      add r1, r8, r1, lsl #2
00891acc  47 07 80 e0                                      add r0, r0, r7, asr #14
00891ad0  9a 00 00 e0                                      mul r0, sl, r0
00891ad4  02 21 88 e0                                      add r2, r8, r2, lsl #2
00891ad8  40 07 8c e0                                      add r0, ip, r0, asr #14
00891adc  00 00 84 e5                                      str r0, [r4]
00891ae0  f2 20 d2 e1                                      ldrsh r2, [r2, #2]
00891ae4  f2 00 d1 e1                                      ldrsh r0, [r1, #2]
00891ae8  04 10 94 e5                                      ldr r1, [r4, #4]
00891aec  01 b0 8b e2                                      add fp, fp, #1
00891af0  00 00 62 e0                                      rsb r0, r2, r0
00891af4  93 00 03 e0                                      mul r3, r3, r0
00891af8  09 00 5b e1                                      cmp fp, sb
00891afc  43 27 82 e0                                      add r2, r2, r3, asr #14
00891b00  9a 02 02 e0                                      mul r2, sl, r2
00891b04  42 27 81 e0                                      add r2, r1, r2, asr #14
00891b08  04 20 84 e5                                      str r2, [r4, #4]
00891b0c  40 30 95 e5                                      ldr r3, [r5, #0x40]
00891b10  08 40 84 e2                                      add r4, r4, #8
00891b14  03 60 86 e0                                      add r6, r6, r3
00891b18  df ff ff 1a                                      bne #0x891a9c
00891b1c  2c a0 85 e5                                      str sl, [r5, #0x2c]
00891b20  56 ff ff ea                                      b #0x891880
00891b24  01 20 a0 e3                                      mov r2, #1
00891b28  28 a0 95 e5                                      ldr sl, [r5, #0x28]
00891b2c  24 20 c5 e5                                      strb r2, [r5, #0x24]
00891b30  10 30 8d e5                                      str r3, [sp, #0x10]
00891b34  92 ff ff ea                                      b #0x891984
00891b38  20 20 95 e5                                      ldr r2, [r5, #0x20]
00891b3c  01 00 40 e2                                      sub r0, r0, #1
00891b40  08 00 8d e5                                      str r0, [sp, #8]
00891b44  02 90 50 e0                                      subs sb, r0, r2
00891b48  14 20 8d e5                                      str r2, [sp, #0x14]
00891b4c  04 00 00 4a                                      bmi #0x891b64
00891b50  14 30 9d e5                                      ldr r3, [sp, #0x14]
00891b54  00 00 53 e3                                      cmp r3, #0
00891b58  00 b0 a0 d3                                      movle fp, #0
00891b5c  01 b0 a0 c3                                      movgt fp, #1
00891b60  71 ff ff ea                                      b #0x89192c
00891b64  02 30 a0 e1                                      mov r3, r2
00891b68  00 00 50 e3                                      cmp r0, #0
00891b6c  00 b0 a0 d3                                      movle fp, #0
00891b70  01 b0 a0 c3                                      movgt fp, #1
00891b74  0a 90 a0 e1                                      mov sb, sl
00891b78  14 00 8d e5                                      str r0, [sp, #0x14]
00891b7c  6a ff ff ea                                      b #0x89192c

; FUNCTION 0x00891b80, declared_size=848, range_size=848, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface16GetStereoPanningEPiS1_
; demangled: vox::DriverCallbackSourceInterface::GetStereoPanning(int*, int*)
; decoder-mode: arm
00891b80  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00891b84  00 80 a0 e1                                      mov r8, r0
00891b88  90 00 90 e5                                      ldr r0, [r0, #0x90]
00891b8c  34 33 9f e5                                      ldr r3, [pc, #0x334]
00891b90  1c d0 4d e2                                      sub sp, sp, #0x1c
00891b94  00 00 50 e3                                      cmp r0, #0
00891b98  01 40 a0 e1                                      mov r4, r1
00891b9c  03 30 8f e0                                      add r3, pc, r3
00891ba0  02 60 a0 e1                                      mov r6, r2
00891ba4  32 00 00 0a                                      beq #0x891c74
00891ba8  6c 00 98 e5                                      ldr r0, [r8, #0x6c]
00891bac  70 a0 98 e5                                      ldr sl, [r8, #0x70]
00891bb0  74 70 98 e5                                      ldr r7, [r8, #0x74]
00891bb4  00 10 a0 e1                                      mov r1, r0
00891bb8  6b f4 e9 eb                                      bl #0x30ed6c
00891bbc  0a 10 a0 e1                                      mov r1, sl
00891bc0  00 50 a0 e1                                      mov r5, r0
00891bc4  0a 00 a0 e1                                      mov r0, sl
00891bc8  67 f4 e9 eb                                      bl #0x30ed6c
00891bcc  00 10 a0 e1                                      mov r1, r0
00891bd0  05 00 a0 e1                                      mov r0, r5
00891bd4  f2 f3 e9 eb                                      bl #0x30eba4
00891bd8  07 10 a0 e1                                      mov r1, r7
00891bdc  00 50 a0 e1                                      mov r5, r0
00891be0  07 00 a0 e1                                      mov r0, r7
00891be4  60 f4 e9 eb                                      bl #0x30ed6c
00891be8  00 10 a0 e1                                      mov r1, r0
00891bec  05 00 a0 e1                                      mov r0, r5
00891bf0  eb f3 e9 eb                                      bl #0x30eba4
00891bf4  4a f1 e9 eb                                      bl #0x30e124
00891bf8  00 10 a0 e3                                      mov r1, #0
00891bfc  00 50 a0 e1                                      mov r5, r0
00891c00  bc f1 e9 eb                                      bl #0x30e2f8
00891c04  00 00 50 e3                                      cmp r0, #0
00891c08  aa 00 00 1a                                      bne #0x891eb8
00891c0c  00 00 a0 e3                                      mov r0, #0
00891c10  fe 15 a0 e3                                      mov r1, #0x3f800000
00891c14  e2 f3 e9 eb                                      bl #0x30eba4
00891c18  3f 14 a0 e3                                      mov r1, #0x3f000000
00891c1c  52 f4 e9 eb                                      bl #0x30ed6c
00891c20  3f f1 e9 eb                                      bl #0x30e124
00891c24  00 10 a0 e1                                      mov r1, r0
00891c28  00 50 a0 e1                                      mov r5, r0
00891c2c  4e f4 e9 eb                                      bl #0x30ed6c
00891c30  00 10 a0 e1                                      mov r1, r0
00891c34  fe 05 a0 e3                                      mov r0, #0x3f800000
00891c38  db f1 e9 eb                                      bl #0x30e3ac
00891c3c  38 f1 e9 eb                                      bl #0x30e124
00891c40  46 14 a0 e3                                      mov r1, #0x46000000
00891c44  02 15 81 e2                                      add r1, r1, #0x800000
00891c48  47 f4 e9 eb                                      bl #0x30ed6c
00891c4c  1e f2 e9 eb                                      bl #0x30e4cc
00891c50  46 14 a0 e3                                      mov r1, #0x46000000
00891c54  00 00 84 e5                                      str r0, [r4]
00891c58  02 15 81 e2                                      add r1, r1, #0x800000
00891c5c  05 00 a0 e1                                      mov r0, r5
00891c60  41 f4 e9 eb                                      bl #0x30ed6c
00891c64  18 f2 e9 eb                                      bl #0x30e4cc
00891c68  00 00 86 e5                                      str r0, [r6]
00891c6c  1c d0 8d e2                                      add sp, sp, #0x1c
00891c70  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00891c74  50 22 9f e5                                      ldr r2, [pc, #0x250]
00891c78  6c 00 98 e5                                      ldr r0, [r8, #0x6c]
00891c7c  02 50 93 e7                                      ldr r5, [r3, r2]
00891c80  00 10 95 e5                                      ldr r1, [r5]
00891c84  c8 f1 e9 eb                                      bl #0x30e3ac
00891c88  04 10 95 e5                                      ldr r1, [r5, #4]
00891c8c  00 a0 a0 e1                                      mov sl, r0
00891c90  70 00 98 e5                                      ldr r0, [r8, #0x70]
00891c94  c4 f1 e9 eb                                      bl #0x30e3ac
00891c98  08 10 95 e5                                      ldr r1, [r5, #8]
00891c9c  00 70 a0 e1                                      mov r7, r0
00891ca0  74 00 98 e5                                      ldr r0, [r8, #0x74]
00891ca4  c0 f1 e9 eb                                      bl #0x30e3ac
00891ca8  0a 10 a0 e1                                      mov r1, sl
00891cac  0c 00 8d e5                                      str r0, [sp, #0xc]
00891cb0  0a 00 a0 e1                                      mov r0, sl
00891cb4  2c f4 e9 eb                                      bl #0x30ed6c
00891cb8  07 10 a0 e1                                      mov r1, r7
00891cbc  00 80 a0 e1                                      mov r8, r0
00891cc0  07 00 a0 e1                                      mov r0, r7
00891cc4  28 f4 e9 eb                                      bl #0x30ed6c
00891cc8  00 10 a0 e1                                      mov r1, r0
00891ccc  08 00 a0 e1                                      mov r0, r8
00891cd0  b3 f3 e9 eb                                      bl #0x30eba4
00891cd4  00 80 a0 e1                                      mov r8, r0
00891cd8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00891cdc  00 10 a0 e1                                      mov r1, r0
00891ce0  21 f4 e9 eb                                      bl #0x30ed6c
00891ce4  00 10 a0 e1                                      mov r1, r0
00891ce8  08 00 a0 e1                                      mov r0, r8
00891cec  ac f3 e9 eb                                      bl #0x30eba4
00891cf0  0b f1 e9 eb                                      bl #0x30e124
00891cf4  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00891cf8  2c 90 95 e5                                      ldr sb, [r5, #0x2c]
00891cfc  28 20 95 e5                                      ldr r2, [r5, #0x28]
00891d00  10 00 8d e5                                      str r0, [sp, #0x10]
00891d04  09 10 a0 e1                                      mov r1, sb
00891d08  03 00 a0 e1                                      mov r0, r3
00891d0c  20 b0 95 e5                                      ldr fp, [r5, #0x20]
00891d10  14 20 8d e5                                      str r2, [sp, #0x14]
00891d14  04 30 8d e5                                      str r3, [sp, #4]
00891d18  13 f4 e9 eb                                      bl #0x30ed6c
00891d1c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00891d20  00 80 a0 e1                                      mov r8, r0
00891d24  0b 00 a0 e1                                      mov r0, fp
00891d28  0f f4 e9 eb                                      bl #0x30ed6c
00891d2c  00 10 a0 e1                                      mov r1, r0
00891d30  08 00 a0 e1                                      mov r0, r8
00891d34  9c f1 e9 eb                                      bl #0x30e3ac
00891d38  24 20 95 e5                                      ldr r2, [r5, #0x24]
00891d3c  00 80 a0 e1                                      mov r8, r0
00891d40  0b 00 a0 e1                                      mov r0, fp
00891d44  02 10 a0 e1                                      mov r1, r2
00891d48  18 50 95 e5                                      ldr r5, [r5, #0x18]
00891d4c  08 20 8d e5                                      str r2, [sp, #8]
00891d50  05 f4 e9 eb                                      bl #0x30ed6c
00891d54  05 10 a0 e1                                      mov r1, r5
00891d58  00 b0 a0 e1                                      mov fp, r0
00891d5c  09 00 a0 e1                                      mov r0, sb
00891d60  01 f4 e9 eb                                      bl #0x30ed6c
00891d64  00 10 a0 e1                                      mov r1, r0
00891d68  0b 00 a0 e1                                      mov r0, fp
00891d6c  8e f1 e9 eb                                      bl #0x30e3ac
00891d70  05 10 a0 e1                                      mov r1, r5
00891d74  00 90 a0 e1                                      mov sb, r0
00891d78  14 00 9d e5                                      ldr r0, [sp, #0x14]
00891d7c  fa f3 e9 eb                                      bl #0x30ed6c
00891d80  04 30 9d e5                                      ldr r3, [sp, #4]
00891d84  08 20 9d e5                                      ldr r2, [sp, #8]
00891d88  00 50 a0 e1                                      mov r5, r0
00891d8c  03 00 a0 e1                                      mov r0, r3
00891d90  02 10 a0 e1                                      mov r1, r2
00891d94  f4 f3 e9 eb                                      bl #0x30ed6c
00891d98  00 10 a0 e1                                      mov r1, r0
00891d9c  05 00 a0 e1                                      mov r0, r5
00891da0  81 f1 e9 eb                                      bl #0x30e3ac
00891da4  08 10 a0 e1                                      mov r1, r8
00891da8  00 50 a0 e1                                      mov r5, r0
00891dac  08 00 a0 e1                                      mov r0, r8
00891db0  ed f3 e9 eb                                      bl #0x30ed6c
00891db4  09 10 a0 e1                                      mov r1, sb
00891db8  00 b0 a0 e1                                      mov fp, r0
00891dbc  09 00 a0 e1                                      mov r0, sb
00891dc0  e9 f3 e9 eb                                      bl #0x30ed6c
00891dc4  00 10 a0 e1                                      mov r1, r0
00891dc8  0b 00 a0 e1                                      mov r0, fp
00891dcc  74 f3 e9 eb                                      bl #0x30eba4
00891dd0  05 10 a0 e1                                      mov r1, r5
00891dd4  00 b0 a0 e1                                      mov fp, r0
00891dd8  05 00 a0 e1                                      mov r0, r5
00891ddc  e2 f3 e9 eb                                      bl #0x30ed6c
00891de0  00 10 a0 e1                                      mov r1, r0
00891de4  0b 00 a0 e1                                      mov r0, fp
00891de8  6d f3 e9 eb                                      bl #0x30eba4
00891dec  cc f0 e9 eb                                      bl #0x30e124
00891df0  00 10 a0 e3                                      mov r1, #0
00891df4  00 b0 a0 e1                                      mov fp, r0
00891df8  10 00 9d e5                                      ldr r0, [sp, #0x10]
00891dfc  3d f1 e9 eb                                      bl #0x30e2f8
00891e00  00 00 50 e3                                      cmp r0, #0
00891e04  80 ff ff 0a                                      beq #0x891c0c
00891e08  0b 00 a0 e1                                      mov r0, fp
00891e0c  00 10 a0 e3                                      mov r1, #0
00891e10  38 f1 e9 eb                                      bl #0x30e2f8
00891e14  00 00 50 e3                                      cmp r0, #0
00891e18  7b ff ff 0a                                      beq #0x891c0c
00891e1c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00891e20  0a 00 a0 e1                                      mov r0, sl
00891e24  9a f3 e9 eb                                      bl #0x30ec94
00891e28  0b 10 a0 e1                                      mov r1, fp
00891e2c  00 a0 a0 e1                                      mov sl, r0
00891e30  08 00 a0 e1                                      mov r0, r8
00891e34  96 f3 e9 eb                                      bl #0x30ec94
00891e38  00 10 a0 e1                                      mov r1, r0
00891e3c  0a 00 a0 e1                                      mov r0, sl
00891e40  c9 f3 e9 eb                                      bl #0x30ed6c
00891e44  10 10 9d e5                                      ldr r1, [sp, #0x10]
00891e48  00 80 a0 e1                                      mov r8, r0
00891e4c  07 00 a0 e1                                      mov r0, r7
00891e50  8f f3 e9 eb                                      bl #0x30ec94
00891e54  0b 10 a0 e1                                      mov r1, fp
00891e58  00 70 a0 e1                                      mov r7, r0
00891e5c  09 00 a0 e1                                      mov r0, sb
00891e60  8b f3 e9 eb                                      bl #0x30ec94
00891e64  00 10 a0 e1                                      mov r1, r0
00891e68  07 00 a0 e1                                      mov r0, r7
00891e6c  be f3 e9 eb                                      bl #0x30ed6c
00891e70  00 10 a0 e1                                      mov r1, r0
00891e74  08 00 a0 e1                                      mov r0, r8
00891e78  49 f3 e9 eb                                      bl #0x30eba4
00891e7c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00891e80  00 70 a0 e1                                      mov r7, r0
00891e84  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00891e88  81 f3 e9 eb                                      bl #0x30ec94
00891e8c  0b 10 a0 e1                                      mov r1, fp
00891e90  00 80 a0 e1                                      mov r8, r0
00891e94  05 00 a0 e1                                      mov r0, r5
00891e98  7d f3 e9 eb                                      bl #0x30ec94
00891e9c  00 10 a0 e1                                      mov r1, r0
00891ea0  08 00 a0 e1                                      mov r0, r8
00891ea4  b0 f3 e9 eb                                      bl #0x30ed6c
00891ea8  00 10 a0 e1                                      mov r1, r0
00891eac  07 00 a0 e1                                      mov r0, r7
00891eb0  3b f3 e9 eb                                      bl #0x30eba4
00891eb4  55 ff ff ea                                      b #0x891c10
00891eb8  6c 00 98 e5                                      ldr r0, [r8, #0x6c]
00891ebc  05 10 a0 e1                                      mov r1, r5
00891ec0  73 f3 e9 eb                                      bl #0x30ec94
00891ec4  51 ff ff ea                                      b #0x891c10
; mapping-symbol data/literal pool
00891ec8  f4 2e 10 00 64 31 00 00                          .byte 0xf4, 0x2e, 0x10, 0x00, 0x64, 0x31, 0x00, 0x00

; FUNCTION 0x00891ed0, declared_size=580, range_size=580, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface15GetDopplerPitchEv
; demangled: vox::DriverCallbackSourceInterface::GetDopplerPitch()
; decoder-mode: arm
00891ed0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00891ed4  28 42 9f e5                                      ldr r4, [pc, #0x228]
00891ed8  28 32 9f e5                                      ldr r3, [pc, #0x228]
00891edc  00 50 a0 e1                                      mov r5, r0
00891ee0  04 40 8f e0                                      add r4, pc, r4
00891ee4  03 30 94 e7                                      ldr r3, [r4, r3]
00891ee8  00 10 a0 e3                                      mov r1, #0
00891eec  00 00 93 e5                                      ldr r0, [r3]
00891ef0  00 f1 e9 eb                                      bl #0x30e2f8
00891ef4  00 00 50 e3                                      cmp r0, #0
00891ef8  69 00 00 0a                                      beq #0x8920a4
00891efc  90 30 95 e5                                      ldr r3, [r5, #0x90]
00891f00  00 00 53 e3                                      cmp r3, #0
00891f04  68 00 00 1a                                      bne #0x8920ac
00891f08  fc 31 9f e5                                      ldr r3, [pc, #0x1fc]
00891f0c  6c 10 95 e5                                      ldr r1, [r5, #0x6c]
00891f10  03 a0 94 e7                                      ldr sl, [r4, r3]
00891f14  00 00 9a e5                                      ldr r0, [sl]
00891f18  23 f1 e9 eb                                      bl #0x30e3ac
00891f1c  70 10 95 e5                                      ldr r1, [r5, #0x70]
00891f20  00 80 a0 e1                                      mov r8, r0
00891f24  04 00 9a e5                                      ldr r0, [sl, #4]
00891f28  1f f1 e9 eb                                      bl #0x30e3ac
00891f2c  74 10 95 e5                                      ldr r1, [r5, #0x74]
00891f30  00 70 a0 e1                                      mov r7, r0
00891f34  08 00 9a e5                                      ldr r0, [sl, #8]
00891f38  1b f1 e9 eb                                      bl #0x30e3ac
00891f3c  0c 10 9a e5                                      ldr r1, [sl, #0xc]
00891f40  00 60 a0 e1                                      mov r6, r0
00891f44  08 00 a0 e1                                      mov r0, r8
00891f48  87 f3 e9 eb                                      bl #0x30ed6c
00891f4c  10 10 9a e5                                      ldr r1, [sl, #0x10]
00891f50  00 90 a0 e1                                      mov sb, r0
00891f54  07 00 a0 e1                                      mov r0, r7
00891f58  83 f3 e9 eb                                      bl #0x30ed6c
00891f5c  00 10 a0 e1                                      mov r1, r0
00891f60  09 00 a0 e1                                      mov r0, sb
00891f64  0e f3 e9 eb                                      bl #0x30eba4
00891f68  14 10 9a e5                                      ldr r1, [sl, #0x14]
00891f6c  00 90 a0 e1                                      mov sb, r0
00891f70  06 00 a0 e1                                      mov r0, r6
00891f74  7c f3 e9 eb                                      bl #0x30ed6c
00891f78  00 10 a0 e1                                      mov r1, r0
00891f7c  09 00 a0 e1                                      mov r0, sb
00891f80  07 f3 e9 eb                                      bl #0x30eba4
00891f84  00 a0 a0 e1                                      mov sl, r0
00891f88  08 10 a0 e1                                      mov r1, r8
00891f8c  08 00 a0 e1                                      mov r0, r8
00891f90  75 f3 e9 eb                                      bl #0x30ed6c
00891f94  07 10 a0 e1                                      mov r1, r7
00891f98  00 90 a0 e1                                      mov sb, r0
00891f9c  07 00 a0 e1                                      mov r0, r7
00891fa0  71 f3 e9 eb                                      bl #0x30ed6c
00891fa4  00 10 a0 e1                                      mov r1, r0
00891fa8  09 00 a0 e1                                      mov r0, sb
00891fac  fc f2 e9 eb                                      bl #0x30eba4
00891fb0  06 10 a0 e1                                      mov r1, r6
00891fb4  00 90 a0 e1                                      mov sb, r0
00891fb8  06 00 a0 e1                                      mov r0, r6
00891fbc  6a f3 e9 eb                                      bl #0x30ed6c
00891fc0  00 10 a0 e1                                      mov r1, r0
00891fc4  09 00 a0 e1                                      mov r0, sb
00891fc8  f5 f2 e9 eb                                      bl #0x30eba4
00891fcc  54 f0 e9 eb                                      bl #0x30e124
00891fd0  78 10 95 e5                                      ldr r1, [r5, #0x78]
00891fd4  00 90 a0 e1                                      mov sb, r0
00891fd8  08 00 a0 e1                                      mov r0, r8
00891fdc  62 f3 e9 eb                                      bl #0x30ed6c
00891fe0  7c 10 95 e5                                      ldr r1, [r5, #0x7c]
00891fe4  00 80 a0 e1                                      mov r8, r0
00891fe8  07 00 a0 e1                                      mov r0, r7
00891fec  5e f3 e9 eb                                      bl #0x30ed6c
00891ff0  00 10 a0 e1                                      mov r1, r0
00891ff4  08 00 a0 e1                                      mov r0, r8
00891ff8  e9 f2 e9 eb                                      bl #0x30eba4
00891ffc  80 10 95 e5                                      ldr r1, [r5, #0x80]
00892000  00 70 a0 e1                                      mov r7, r0
00892004  06 00 a0 e1                                      mov r0, r6
00892008  57 f3 e9 eb                                      bl #0x30ed6c
0089200c  00 10 a0 e1                                      mov r1, r0
00892010  07 00 a0 e1                                      mov r0, r7
00892014  e2 f2 e9 eb                                      bl #0x30eba4
00892018  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
0089201c  00 50 a0 e1                                      mov r5, r0
00892020  09 00 a0 e1                                      mov r0, sb
00892024  03 30 94 e7                                      ldr r3, [r4, r3]
00892028  00 10 93 e5                                      ldr r1, [r3]
0089202c  4e f3 e9 eb                                      bl #0x30ed6c
00892030  00 40 a0 e1                                      mov r4, r0
00892034  04 10 a0 e1                                      mov r1, r4
00892038  0a 00 a0 e1                                      mov r0, sl
0089203c  ad f0 e9 eb                                      bl #0x30e2f8
00892040  05 10 a0 e1                                      mov r1, r5
00892044  00 00 50 e3                                      cmp r0, #0
00892048  04 00 a0 e1                                      mov r0, r4
0089204c  04 a0 a0 11                                      movne sl, r4
00892050  d5 f0 e9 eb                                      bl #0x30e3ac
00892054  00 10 a0 e3                                      mov r1, #0
00892058  00 40 a0 e1                                      mov r4, r0
0089205c  a5 f0 e9 eb                                      bl #0x30e2f8
00892060  00 00 50 e3                                      cmp r0, #0
00892064  0e 00 00 0a                                      beq #0x8920a4
00892068  0a 10 a0 e1                                      mov r1, sl
0089206c  05 00 a0 e1                                      mov r0, r5
00892070  cd f0 e9 eb                                      bl #0x30e3ac
00892074  04 10 a0 e1                                      mov r1, r4
00892078  05 f3 e9 eb                                      bl #0x30ec94
0089207c  fe 15 a0 e3                                      mov r1, #0x3f800000
00892080  c7 f2 e9 eb                                      bl #0x30eba4
00892084  9a 19 09 e3                                      movw r1, #0x999a
00892088  39 10 44 e3                                      movt r1, #0x4039
0089208c  00 40 a0 e1                                      mov r4, r0
00892090  98 f0 e9 eb                                      bl #0x30e2f8
00892094  00 00 50 e3                                      cmp r0, #0
00892098  0b 00 00 0a                                      beq #0x8920cc
0089209c  99 09 0b e3                                      movw r0, #0xb999
008920a0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008920a4  01 09 a0 e3                                      mov r0, #0x4000
008920a8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008920ac  6c 80 95 e5                                      ldr r8, [r5, #0x6c]
008920b0  70 70 95 e5                                      ldr r7, [r5, #0x70]
008920b4  74 60 95 e5                                      ldr r6, [r5, #0x74]
008920b8  02 81 88 e2                                      add r8, r8, #0x80000000
008920bc  02 71 87 e2                                      add r7, r7, #0x80000000
008920c0  02 61 86 e2                                      add r6, r6, #0x80000000
008920c4  00 a0 a0 e3                                      mov sl, #0
008920c8  ae ff ff ea                                      b #0x891f88
008920cc  6f 12 01 e3                                      movw r1, #0x126f
008920d0  04 00 a0 e1                                      mov r0, r4
008920d4  83 1a 43 e3                                      movt r1, #0x3a83
008920d8  8b f1 e9 eb                                      bl #0x30e70c
008920dc  00 00 50 e3                                      cmp r0, #0
008920e0  01 00 00 0a                                      beq #0x8920ec
008920e4  10 00 a0 e3                                      mov r0, #0x10
008920e8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008920ec  46 14 a0 e3                                      mov r1, #0x46000000
008920f0  02 15 81 e2                                      add r1, r1, #0x800000
008920f4  04 00 a0 e1                                      mov r0, r4
008920f8  1b f3 e9 eb                                      bl #0x30ed6c
008920fc  f2 f0 e9 eb                                      bl #0x30e4cc
00892100  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00892104  b0 2b 10 00 54 19 00 00 64 31 00 00 ac 25 00 00  .byte 0xb0, 0x2b, 0x10, 0x00, 0x54, 0x19, 0x00, 0x00, 0x64, 0x31, 0x00, 0x00, 0xac, 0x25, 0x00, 0x00

; FUNCTION 0x00892114, declared_size=844, range_size=844, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface15GetDistanceGainEv
; demangled: vox::DriverCallbackSourceInterface::GetDistanceGain()
; decoder-mode: arm
00892114  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00892118  90 30 90 e5                                      ldr r3, [r0, #0x90]
0089211c  30 53 9f e5                                      ldr r5, [pc, #0x330]
00892120  00 40 a0 e1                                      mov r4, r0
00892124  00 00 53 e3                                      cmp r3, #0
00892128  05 50 8f e0                                      add r5, pc, r5
0089212c  49 00 00 0a                                      beq #0x892258
00892130  6c 60 90 e5                                      ldr r6, [r0, #0x6c]
00892134  70 80 90 e5                                      ldr r8, [r0, #0x70]
00892138  74 70 90 e5                                      ldr r7, [r0, #0x74]
0089213c  06 10 a0 e1                                      mov r1, r6
00892140  06 00 a0 e1                                      mov r0, r6
00892144  08 f3 e9 eb                                      bl #0x30ed6c
00892148  08 10 a0 e1                                      mov r1, r8
0089214c  00 60 a0 e1                                      mov r6, r0
00892150  08 00 a0 e1                                      mov r0, r8
00892154  04 f3 e9 eb                                      bl #0x30ed6c
00892158  00 10 a0 e1                                      mov r1, r0
0089215c  06 00 a0 e1                                      mov r0, r6
00892160  8f f2 e9 eb                                      bl #0x30eba4
00892164  07 10 a0 e1                                      mov r1, r7
00892168  00 60 a0 e1                                      mov r6, r0
0089216c  07 00 a0 e1                                      mov r0, r7
00892170  fd f2 e9 eb                                      bl #0x30ed6c
00892174  00 10 a0 e1                                      mov r1, r0
00892178  06 00 a0 e1                                      mov r0, r6
0089217c  88 f2 e9 eb                                      bl #0x30eba4
00892180  e7 ef e9 eb                                      bl #0x30e124
00892184  cc 32 9f e5                                      ldr r3, [pc, #0x2cc]
00892188  00 60 a0 e1                                      mov r6, r0
0089218c  03 30 95 e7                                      ldr r3, [r5, r3]
00892190  00 30 93 e5                                      ldr r3, [r3]
00892194  01 00 53 e3                                      cmp r3, #1
00892198  98 50 94 05                                      ldreq r5, [r4, #0x98]
0089219c  19 00 00 0a                                      beq #0x892208
008921a0  02 00 53 e3                                      cmp r3, #2
008921a4  09 00 00 0a                                      beq #0x8921d0
008921a8  03 00 53 e3                                      cmp r3, #3
008921ac  38 00 00 0a                                      beq #0x892294
008921b0  04 00 53 e3                                      cmp r3, #4
008921b4  51 00 00 0a                                      beq #0x892300
008921b8  05 00 53 e3                                      cmp r3, #5
008921bc  96 00 00 0a                                      beq #0x89241c
008921c0  06 00 53 e3                                      cmp r3, #6
008921c4  72 00 00 0a                                      beq #0x892394
008921c8  01 09 a0 e3                                      mov r0, #0x4000
008921cc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008921d0  98 50 94 e5                                      ldr r5, [r4, #0x98]
008921d4  00 10 a0 e1                                      mov r1, r0
008921d8  05 00 a0 e1                                      mov r0, r5
008921dc  45 f0 e9 eb                                      bl #0x30e2f8
008921e0  00 00 50 e3                                      cmp r0, #0
008921e4  05 60 a0 11                                      movne r6, r5
008921e8  05 00 00 1a                                      bne #0x892204
008921ec  94 70 94 e5                                      ldr r7, [r4, #0x94]
008921f0  06 10 a0 e1                                      mov r1, r6
008921f4  07 00 a0 e1                                      mov r0, r7
008921f8  43 f1 e9 eb                                      bl #0x30e70c
008921fc  00 00 50 e3                                      cmp r0, #0
00892200  07 60 a0 11                                      movne r6, r7
00892204  06 00 a0 e1                                      mov r0, r6
00892208  05 10 a0 e1                                      mov r1, r5
0089220c  66 f0 e9 eb                                      bl #0x30e3ac
00892210  9c 10 94 e5                                      ldr r1, [r4, #0x9c]
00892214  d4 f2 e9 eb                                      bl #0x30ed6c
00892218  00 10 a0 e1                                      mov r1, r0
0089221c  05 00 a0 e1                                      mov r0, r5
00892220  5f f2 e9 eb                                      bl #0x30eba4
00892224  00 10 a0 e3                                      mov r1, #0
00892228  00 40 a0 e1                                      mov r4, r0
0089222c  31 f0 e9 eb                                      bl #0x30e2f8
00892230  00 00 50 e3                                      cmp r0, #0
00892234  e3 ff ff 0a                                      beq #0x8921c8
00892238  04 10 a0 e1                                      mov r1, r4
0089223c  05 00 a0 e1                                      mov r0, r5
00892240  93 f2 e9 eb                                      bl #0x30ec94
00892244  46 14 a0 e3                                      mov r1, #0x46000000
00892248  02 15 81 e2                                      add r1, r1, #0x800000
0089224c  c6 f2 e9 eb                                      bl #0x30ed6c
00892250  9d f0 e9 eb                                      bl #0x30e4cc
00892254  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00892258  fc 31 9f e5                                      ldr r3, [pc, #0x1fc]
0089225c  6c 00 90 e5                                      ldr r0, [r0, #0x6c]
00892260  03 70 95 e7                                      ldr r7, [r5, r3]
00892264  00 10 97 e5                                      ldr r1, [r7]
00892268  4f f0 e9 eb                                      bl #0x30e3ac
0089226c  04 10 97 e5                                      ldr r1, [r7, #4]
00892270  00 60 a0 e1                                      mov r6, r0
00892274  70 00 94 e5                                      ldr r0, [r4, #0x70]
00892278  4b f0 e9 eb                                      bl #0x30e3ac
0089227c  08 10 97 e5                                      ldr r1, [r7, #8]
00892280  00 80 a0 e1                                      mov r8, r0
00892284  74 00 94 e5                                      ldr r0, [r4, #0x74]
00892288  47 f0 e9 eb                                      bl #0x30e3ac
0089228c  00 70 a0 e1                                      mov r7, r0
00892290  a9 ff ff ea                                      b #0x89213c
00892294  98 50 94 e5                                      ldr r5, [r4, #0x98]
00892298  94 00 94 e5                                      ldr r0, [r4, #0x94]
0089229c  9c 70 94 e5                                      ldr r7, [r4, #0x9c]
008922a0  05 10 a0 e1                                      mov r1, r5
008922a4  40 f0 e9 eb                                      bl #0x30e3ac
008922a8  00 10 a0 e3                                      mov r1, #0
008922ac  00 40 a0 e1                                      mov r4, r0
008922b0  10 f0 e9 eb                                      bl #0x30e2f8
008922b4  00 00 50 e3                                      cmp r0, #0
008922b8  c2 ff ff 0a                                      beq #0x8921c8
008922bc  05 10 a0 e1                                      mov r1, r5
008922c0  06 00 a0 e1                                      mov r0, r6
008922c4  38 f0 e9 eb                                      bl #0x30e3ac
008922c8  07 10 a0 e1                                      mov r1, r7
008922cc  a6 f2 e9 eb                                      bl #0x30ed6c
008922d0  04 10 a0 e1                                      mov r1, r4
008922d4  6e f2 e9 eb                                      bl #0x30ec94
008922d8  00 10 a0 e1                                      mov r1, r0
008922dc  fe 05 a0 e3                                      mov r0, #0x3f800000
008922e0  31 f0 e9 eb                                      bl #0x30e3ac
008922e4  00 10 a0 e3                                      mov r1, #0
008922e8  00 40 a0 e1                                      mov r4, r0
008922ec  06 f1 e9 eb                                      bl #0x30e70c
008922f0  00 00 50 e3                                      cmp r0, #0
008922f4  1d 00 00 0a                                      beq #0x892370
008922f8  00 00 a0 e3                                      mov r0, #0
008922fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00892300  98 50 94 e5                                      ldr r5, [r4, #0x98]
00892304  00 10 a0 e1                                      mov r1, r0
00892308  05 00 a0 e1                                      mov r0, r5
0089230c  f9 ef e9 eb                                      bl #0x30e2f8
00892310  00 00 50 e3                                      cmp r0, #0
00892314  1b 00 00 1a                                      bne #0x892388
00892318  94 70 94 e5                                      ldr r7, [r4, #0x94]
0089231c  06 10 a0 e1                                      mov r1, r6
00892320  07 00 a0 e1                                      mov r0, r7
00892324  f8 f0 e9 eb                                      bl #0x30e70c
00892328  00 00 50 e3                                      cmp r0, #0
0089232c  07 60 a0 11                                      movne r6, r7
00892330  07 00 a0 e1                                      mov r0, r7
00892334  05 10 a0 e1                                      mov r1, r5
00892338  1b f0 e9 eb                                      bl #0x30e3ac
0089233c  00 10 a0 e3                                      mov r1, #0
00892340  00 70 a0 e1                                      mov r7, r0
00892344  eb ef e9 eb                                      bl #0x30e2f8
00892348  00 00 50 e3                                      cmp r0, #0
0089234c  9c 40 94 e5                                      ldr r4, [r4, #0x9c]
00892350  9c ff ff 0a                                      beq #0x8921c8
00892354  05 10 a0 e1                                      mov r1, r5
00892358  06 00 a0 e1                                      mov r0, r6
0089235c  12 f0 e9 eb                                      bl #0x30e3ac
00892360  04 10 a0 e1                                      mov r1, r4
00892364  80 f2 e9 eb                                      bl #0x30ed6c
00892368  07 10 a0 e1                                      mov r1, r7
0089236c  d8 ff ff ea                                      b #0x8922d4
00892370  46 14 a0 e3                                      mov r1, #0x46000000
00892374  02 15 81 e2                                      add r1, r1, #0x800000
00892378  04 00 a0 e1                                      mov r0, r4
0089237c  7a f2 e9 eb                                      bl #0x30ed6c
00892380  51 f0 e9 eb                                      bl #0x30e4cc
00892384  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00892388  94 70 94 e5                                      ldr r7, [r4, #0x94]
0089238c  05 60 a0 e1                                      mov r6, r5
00892390  e6 ff ff ea                                      b #0x892330
00892394  9c 50 94 e5                                      ldr r5, [r4, #0x9c]
00892398  00 10 a0 e3                                      mov r1, #0
0089239c  05 00 a0 e1                                      mov r0, r5
008923a0  d4 ef e9 eb                                      bl #0x30e2f8
008923a4  00 00 50 e3                                      cmp r0, #0
008923a8  86 ff ff 0a                                      beq #0x8921c8
008923ac  98 70 94 e5                                      ldr r7, [r4, #0x98]
008923b0  00 10 a0 e3                                      mov r1, #0
008923b4  07 00 a0 e1                                      mov r0, r7
008923b8  ce ef e9 eb                                      bl #0x30e2f8
008923bc  00 00 50 e3                                      cmp r0, #0
008923c0  80 ff ff 0a                                      beq #0x8921c8
008923c4  06 10 a0 e1                                      mov r1, r6
008923c8  07 00 a0 e1                                      mov r0, r7
008923cc  c9 ef e9 eb                                      bl #0x30e2f8
008923d0  00 00 50 e3                                      cmp r0, #0
008923d4  07 60 a0 11                                      movne r6, r7
008923d8  05 00 00 1a                                      bne #0x8923f4
008923dc  94 40 94 e5                                      ldr r4, [r4, #0x94]
008923e0  06 10 a0 e1                                      mov r1, r6
008923e4  04 00 a0 e1                                      mov r0, r4
008923e8  c7 f0 e9 eb                                      bl #0x30e70c
008923ec  00 00 50 e3                                      cmp r0, #0
008923f0  04 60 a0 11                                      movne r6, r4
008923f4  07 10 a0 e1                                      mov r1, r7
008923f8  06 00 a0 e1                                      mov r0, r6
008923fc  24 f2 e9 eb                                      bl #0x30ec94
00892400  02 11 85 e2                                      add r1, r5, #0x80000000
00892404  d7 f1 e9 eb                                      bl #0x30eb68
00892408  46 14 a0 e3                                      mov r1, #0x46000000
0089240c  02 15 81 e2                                      add r1, r1, #0x800000
00892410  55 f2 e9 eb                                      bl #0x30ed6c
00892414  2c f0 e9 eb                                      bl #0x30e4cc
00892418  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0089241c  9c 50 94 e5                                      ldr r5, [r4, #0x9c]
00892420  00 10 a0 e3                                      mov r1, #0
00892424  05 00 a0 e1                                      mov r0, r5
00892428  b2 ef e9 eb                                      bl #0x30e2f8
0089242c  00 00 50 e3                                      cmp r0, #0
00892430  64 ff ff 0a                                      beq #0x8921c8
00892434  98 40 94 e5                                      ldr r4, [r4, #0x98]
00892438  00 10 a0 e3                                      mov r1, #0
0089243c  04 00 a0 e1                                      mov r0, r4
00892440  ac ef e9 eb                                      bl #0x30e2f8
00892444  00 00 50 e3                                      cmp r0, #0
00892448  04 10 a0 11                                      movne r1, r4
0089244c  5d ff ff 0a                                      beq #0x8921c8
00892450  e8 ff ff ea                                      b #0x8923f8
; mapping-symbol data/literal pool
00892454  68 29 10 00 a4 25 00 00 64 31 00 00              .byte 0x68, 0x29, 0x10, 0x00, 0xa4, 0x25, 0x00, 0x00, 0x64, 0x31, 0x00, 0x00

; FUNCTION 0x00892460, declared_size=812, range_size=812, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface18GetDirectionalGainEv
; demangled: vox::DriverCallbackSourceInterface::GetDirectionalGain()
; decoder-mode: arm
00892460  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00892464  43 14 a0 e3                                      mov r1, #0x43000000
00892468  0c d0 4d e2                                      sub sp, sp, #0xc
0089246c  00 40 a0 e1                                      mov r4, r0
00892470  2d 17 81 e2                                      add r1, r1, #0xb40000
00892474  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
00892478  a3 f0 e9 eb                                      bl #0x30e70c
0089247c  00 53 9f e5                                      ldr r5, [pc, #0x300]
00892480  00 00 50 e3                                      cmp r0, #0
00892484  05 50 8f e0                                      add r5, pc, r5
00892488  83 00 00 0a                                      beq #0x89269c
0089248c  84 60 94 e5                                      ldr r6, [r4, #0x84]
00892490  00 10 a0 e3                                      mov r1, #0
00892494  06 00 a0 e1                                      mov r0, r6
00892498  bb ee e9 eb                                      bl #0x30df8c
0089249c  00 00 50 e3                                      cmp r0, #0
008924a0  80 00 00 1a                                      bne #0x8926a8
008924a4  88 70 94 e5                                      ldr r7, [r4, #0x88]
008924a8  8c 80 94 e5                                      ldr r8, [r4, #0x8c]
008924ac  90 30 94 e5                                      ldr r3, [r4, #0x90]
008924b0  00 00 53 e3                                      cmp r3, #0
008924b4  89 00 00 0a                                      beq #0x8926e0
008924b8  6c b0 94 e5                                      ldr fp, [r4, #0x6c]
008924bc  70 90 94 e5                                      ldr sb, [r4, #0x70]
008924c0  74 a0 94 e5                                      ldr sl, [r4, #0x74]
008924c4  02 31 8b e2                                      add r3, fp, #0x80000000
008924c8  03 b0 a0 e1                                      mov fp, r3
008924cc  02 91 89 e2                                      add sb, sb, #0x80000000
008924d0  02 a1 8a e2                                      add sl, sl, #0x80000000
008924d4  06 10 a0 e1                                      mov r1, r6
008924d8  0b 00 a0 e1                                      mov r0, fp
008924dc  22 f2 e9 eb                                      bl #0x30ed6c
008924e0  07 10 a0 e1                                      mov r1, r7
008924e4  00 50 a0 e1                                      mov r5, r0
008924e8  09 00 a0 e1                                      mov r0, sb
008924ec  1e f2 e9 eb                                      bl #0x30ed6c
008924f0  00 10 a0 e1                                      mov r1, r0
008924f4  05 00 a0 e1                                      mov r0, r5
008924f8  a9 f1 e9 eb                                      bl #0x30eba4
008924fc  08 10 a0 e1                                      mov r1, r8
00892500  00 50 a0 e1                                      mov r5, r0
00892504  0a 00 a0 e1                                      mov r0, sl
00892508  17 f2 e9 eb                                      bl #0x30ed6c
0089250c  00 10 a0 e1                                      mov r1, r0
00892510  05 00 a0 e1                                      mov r0, r5
00892514  a2 f1 e9 eb                                      bl #0x30eba4
00892518  00 10 a0 e1                                      mov r1, r0
0089251c  00 50 a0 e1                                      mov r5, r0
00892520  11 f2 e9 eb                                      bl #0x30ed6c
00892524  0b 10 a0 e1                                      mov r1, fp
00892528  00 30 a0 e1                                      mov r3, r0
0089252c  0b 00 a0 e1                                      mov r0, fp
00892530  04 30 8d e5                                      str r3, [sp, #4]
00892534  0c f2 e9 eb                                      bl #0x30ed6c
00892538  09 10 a0 e1                                      mov r1, sb
0089253c  00 b0 a0 e1                                      mov fp, r0
00892540  09 00 a0 e1                                      mov r0, sb
00892544  08 f2 e9 eb                                      bl #0x30ed6c
00892548  00 10 a0 e1                                      mov r1, r0
0089254c  0b 00 a0 e1                                      mov r0, fp
00892550  93 f1 e9 eb                                      bl #0x30eba4
00892554  0a 10 a0 e1                                      mov r1, sl
00892558  00 90 a0 e1                                      mov sb, r0
0089255c  0a 00 a0 e1                                      mov r0, sl
00892560  01 f2 e9 eb                                      bl #0x30ed6c
00892564  00 10 a0 e1                                      mov r1, r0
00892568  09 00 a0 e1                                      mov r0, sb
0089256c  8c f1 e9 eb                                      bl #0x30eba4
00892570  06 10 a0 e1                                      mov r1, r6
00892574  00 a0 a0 e1                                      mov sl, r0
00892578  06 00 a0 e1                                      mov r0, r6
0089257c  fa f1 e9 eb                                      bl #0x30ed6c
00892580  07 10 a0 e1                                      mov r1, r7
00892584  00 60 a0 e1                                      mov r6, r0
00892588  07 00 a0 e1                                      mov r0, r7
0089258c  f6 f1 e9 eb                                      bl #0x30ed6c
00892590  00 10 a0 e1                                      mov r1, r0
00892594  06 00 a0 e1                                      mov r0, r6
00892598  81 f1 e9 eb                                      bl #0x30eba4
0089259c  08 10 a0 e1                                      mov r1, r8
008925a0  00 60 a0 e1                                      mov r6, r0
008925a4  08 00 a0 e1                                      mov r0, r8
008925a8  ef f1 e9 eb                                      bl #0x30ed6c
008925ac  00 10 a0 e1                                      mov r1, r0
008925b0  06 00 a0 e1                                      mov r0, r6
008925b4  7a f1 e9 eb                                      bl #0x30eba4
008925b8  00 10 a0 e1                                      mov r1, r0
008925bc  0a 00 a0 e1                                      mov r0, sl
008925c0  e9 f1 e9 eb                                      bl #0x30ed6c
008925c4  04 30 9d e5                                      ldr r3, [sp, #4]
008925c8  00 10 a0 e1                                      mov r1, r0
008925cc  03 00 a0 e1                                      mov r0, r3
008925d0  af f1 e9 eb                                      bl #0x30ec94
008925d4  d2 ee e9 eb                                      bl #0x30e124
008925d8  7f ef e9 eb                                      bl #0x30e3dc
008925dc  43 14 a0 e3                                      mov r1, #0x43000000
008925e0  0d 17 81 e2                                      add r1, r1, #0x340000
008925e4  e0 f1 e9 eb                                      bl #0x30ed6c
008925e8  ad f0 e9 eb                                      bl #0x30e8a4
008925ec  18 2d 02 e3                                      movw r2, #0x2d18
008925f0  fb 31 02 e3                                      movw r3, #0x21fb
008925f4  44 24 45 e3                                      movt r2, #0x5444
008925f8  09 30 44 e3                                      movt r3, #0x4009
008925fc  4f ef e9 eb                                      bl #0x30e340
00892600  26 f0 e9 eb                                      bl #0x30e6a0
00892604  00 10 a0 e3                                      mov r1, #0
00892608  00 60 a0 e1                                      mov r6, r0
0089260c  05 00 a0 e1                                      mov r0, r5
00892610  3d f0 e9 eb                                      bl #0x30e70c
00892614  00 00 50 e3                                      cmp r0, #0
00892618  04 00 00 0a                                      beq #0x892630
0089261c  43 04 a0 e3                                      mov r0, #0x43000000
00892620  06 10 a0 e1                                      mov r1, r6
00892624  0d 07 80 e2                                      add r0, r0, #0x340000
00892628  5f ef e9 eb                                      bl #0x30e3ac
0089262c  00 60 a0 e1                                      mov r6, r0
00892630  3f 14 a0 e3                                      mov r1, #0x3f000000
00892634  a0 00 94 e5                                      ldr r0, [r4, #0xa0]
00892638  cb f1 e9 eb                                      bl #0x30ed6c
0089263c  00 50 a0 e1                                      mov r5, r0
00892640  05 10 a0 e1                                      mov r1, r5
00892644  06 00 a0 e1                                      mov r0, r6
00892648  2a ef e9 eb                                      bl #0x30e2f8
0089264c  00 00 50 e3                                      cmp r0, #0
00892650  11 00 00 0a                                      beq #0x89269c
00892654  3f 14 a0 e3                                      mov r1, #0x3f000000
00892658  a4 00 94 e5                                      ldr r0, [r4, #0xa4]
0089265c  c2 f1 e9 eb                                      bl #0x30ed6c
00892660  00 70 a0 e1                                      mov r7, r0
00892664  07 10 a0 e1                                      mov r1, r7
00892668  06 00 a0 e1                                      mov r0, r6
0089266c  26 f0 e9 eb                                      bl #0x30e70c
00892670  00 00 50 e3                                      cmp r0, #0
00892674  3c 00 00 0a                                      beq #0x89276c
00892678  05 10 a0 e1                                      mov r1, r5
0089267c  07 00 a0 e1                                      mov r0, r7
00892680  49 ef e9 eb                                      bl #0x30e3ac
00892684  00 10 a0 e3                                      mov r1, #0
00892688  00 80 a0 e1                                      mov r8, r0
0089268c  19 ef e9 eb                                      bl #0x30e2f8
00892690  00 00 50 e3                                      cmp r0, #0
00892694  a8 40 94 e5                                      ldr r4, [r4, #0xa8]
00892698  1f 00 00 1a                                      bne #0x89271c
0089269c  01 09 a0 e3                                      mov r0, #0x4000
008926a0  0c d0 8d e2                                      add sp, sp, #0xc
008926a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008926a8  88 70 94 e5                                      ldr r7, [r4, #0x88]
008926ac  00 10 a0 e3                                      mov r1, #0
008926b0  07 00 a0 e1                                      mov r0, r7
008926b4  34 ee e9 eb                                      bl #0x30df8c
008926b8  00 00 50 e3                                      cmp r0, #0
008926bc  8c 80 94 05                                      ldreq r8, [r4, #0x8c]
008926c0  79 ff ff 0a                                      beq #0x8924ac
008926c4  8c 80 94 e5                                      ldr r8, [r4, #0x8c]
008926c8  00 10 a0 e3                                      mov r1, #0
008926cc  08 00 a0 e1                                      mov r0, r8
008926d0  2d ee e9 eb                                      bl #0x30df8c
008926d4  00 00 50 e3                                      cmp r0, #0
008926d8  73 ff ff 0a                                      beq #0x8924ac
008926dc  ee ff ff ea                                      b #0x89269c
008926e0  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
008926e4  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
008926e8  03 50 95 e7                                      ldr r5, [r5, r3]
008926ec  00 00 95 e5                                      ldr r0, [r5]
008926f0  2d ef e9 eb                                      bl #0x30e3ac
008926f4  70 10 94 e5                                      ldr r1, [r4, #0x70]
008926f8  00 b0 a0 e1                                      mov fp, r0
008926fc  04 00 95 e5                                      ldr r0, [r5, #4]
00892700  29 ef e9 eb                                      bl #0x30e3ac
00892704  74 10 94 e5                                      ldr r1, [r4, #0x74]
00892708  00 90 a0 e1                                      mov sb, r0
0089270c  08 00 95 e5                                      ldr r0, [r5, #8]
00892710  25 ef e9 eb                                      bl #0x30e3ac
00892714  00 a0 a0 e1                                      mov sl, r0
00892718  6d ff ff ea                                      b #0x8924d4
0089271c  06 10 a0 e1                                      mov r1, r6
00892720  07 00 a0 e1                                      mov r0, r7
00892724  20 ef e9 eb                                      bl #0x30e3ac
00892728  05 10 a0 e1                                      mov r1, r5
0089272c  00 70 a0 e1                                      mov r7, r0
00892730  06 00 a0 e1                                      mov r0, r6
00892734  1c ef e9 eb                                      bl #0x30e3ac
00892738  00 10 a0 e1                                      mov r1, r0
0089273c  04 00 a0 e1                                      mov r0, r4
00892740  89 f1 e9 eb                                      bl #0x30ed6c
00892744  00 10 a0 e1                                      mov r1, r0
00892748  07 00 a0 e1                                      mov r0, r7
0089274c  14 f1 e9 eb                                      bl #0x30eba4
00892750  08 10 a0 e1                                      mov r1, r8
00892754  4e f1 e9 eb                                      bl #0x30ec94
00892758  46 14 a0 e3                                      mov r1, #0x46000000
0089275c  02 15 81 e2                                      add r1, r1, #0x800000
00892760  81 f1 e9 eb                                      bl #0x30ed6c
00892764  58 ef e9 eb                                      bl #0x30e4cc
00892768  cc ff ff ea                                      b #0x8926a0
0089276c  46 14 a0 e3                                      mov r1, #0x46000000
00892770  02 15 81 e2                                      add r1, r1, #0x800000
00892774  a8 00 94 e5                                      ldr r0, [r4, #0xa8]
00892778  7b f1 e9 eb                                      bl #0x30ed6c
0089277c  52 ef e9 eb                                      bl #0x30e4cc
00892780  c6 ff ff ea                                      b #0x8926a0
; mapping-symbol data/literal pool
00892784  0c 26 10 00 64 31 00 00                          .byte 0x0c, 0x26, 0x10, 0x00, 0x64, 0x31, 0x00, 0x00

; FUNCTION 0x0089278c, declared_size=1092, range_size=1092, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface23FillBufferMono16NoInterEPii
; demangled: vox::DriverCallbackSourceInterface::FillBufferMono16NoInter(int*, int)
; decoder-mode: arm
0089278c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00892790  50 30 90 e5                                      ldr r3, [r0, #0x50]
00892794  44 d0 4d e2                                      sub sp, sp, #0x44
00892798  00 40 a0 e1                                      mov r4, r0
0089279c  01 00 53 e3                                      cmp r3, #1
008927a0  14 10 8d e5                                      str r1, [sp, #0x14]
008927a4  08 20 8d e5                                      str r2, [sp, #8]
008927a8  01 00 00 0a                                      beq #0x8927b4
008927ac  44 d0 8d e2                                      add sp, sp, #0x44
008927b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008927b4  4c 20 90 e5                                      ldr r2, [r0, #0x4c]
008927b8  60 30 90 e5                                      ldr r3, [r0, #0x60]
008927bc  18 10 a0 e3                                      mov r1, #0x18
008927c0  91 32 23 e0                                      mla r3, r1, r2, r3
008927c4  14 20 d3 e5                                      ldrb r2, [r3, #0x14]
008927c8  00 00 52 e3                                      cmp r2, #0
008927cc  f6 ff ff 1a                                      bne #0x8927ac
008927d0  0c 00 93 e5                                      ldr r0, [r3, #0xc]
008927d4  28 50 94 e5                                      ldr r5, [r4, #0x28]
008927d8  00 00 50 e3                                      cmp r0, #0
008927dc  06 00 00 0a                                      beq #0x8927fc
008927e0  10 00 93 e5                                      ldr r0, [r3, #0x10]
008927e4  01 00 80 e2                                      add r0, r0, #1
008927e8  10 00 83 e5                                      str r0, [r3, #0x10]
008927ec  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
008927f0  60 30 94 e5                                      ldr r3, [r4, #0x60]
008927f4  91 30 21 e0                                      mla r1, r1, r0, r3
008927f8  0c 20 81 e5                                      str r2, [r1, #0xc]
008927fc  04 00 a0 e1                                      mov r0, r4
00892800  43 fe ff eb                                      bl #0x892114
00892804  95 00 05 e0                                      mul r5, r5, r0
00892808  04 00 a0 e1                                      mov r0, r4
0089280c  13 ff ff eb                                      bl #0x892460
00892810  45 57 a0 e1                                      asr r5, r5, #0xe
00892814  90 05 05 e0                                      mul r5, r0, r5
00892818  3c 10 8d e2                                      add r1, sp, #0x3c
0089281c  04 00 a0 e1                                      mov r0, r4
00892820  38 20 8d e2                                      add r2, sp, #0x38
00892824  d5 fc ff eb                                      bl #0x891b80
00892828  38 30 9d e5                                      ldr r3, [sp, #0x38]
0089282c  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00892830  45 57 a0 e1                                      asr r5, r5, #0xe
00892834  93 05 03 e0                                      mul r3, r3, r5
00892838  92 05 05 e0                                      mul r5, r2, r5
0089283c  08 10 9d e5                                      ldr r1, [sp, #8]
00892840  43 37 a0 e1                                      asr r3, r3, #0xe
00892844  04 00 a0 e1                                      mov r0, r4
00892848  45 57 a0 e1                                      asr r5, r5, #0xe
0089284c  30 30 8d e5                                      str r3, [sp, #0x30]
00892850  2c 50 8d e5                                      str r5, [sp, #0x2c]
00892854  2e f5 ff eb                                      bl #0x88fd14
00892858  08 10 9d e5                                      ldr r1, [sp, #8]
0089285c  00 00 51 e1                                      cmp r1, r0
00892860  d3 00 00 ca                                      bgt #0x892bb4
00892864  00 20 a0 e3                                      mov r2, #0
00892868  20 30 94 e5                                      ldr r3, [r4, #0x20]
0089286c  01 b0 81 e2                                      add fp, r1, #1
00892870  0c 20 8d e5                                      str r2, [sp, #0xc]
00892874  03 00 5b e1                                      cmp fp, r3
00892878  34 b0 8d b5                                      strlt fp, [sp, #0x34]
0089287c  03 00 00 ba                                      blt #0x892890
00892880  08 50 9d e5                                      ldr r5, [sp, #8]
00892884  03 00 55 e1                                      cmp r5, r3
00892888  03 50 a0 a1                                      movge r5, r3
0089288c  34 50 8d e5                                      str r5, [sp, #0x34]
00892890  24 30 d4 e5                                      ldrb r3, [r4, #0x24]
00892894  2c a0 94 e5                                      ldr sl, [r4, #0x2c]
00892898  30 90 94 e5                                      ldr sb, [r4, #0x30]
0089289c  00 00 53 e3                                      cmp r3, #0
008928a0  bb 00 00 0a                                      beq #0x892b94
008928a4  34 c0 9d e5                                      ldr ip, [sp, #0x34]
008928a8  00 00 5c e3                                      cmp ip, #0
008928ac  00 00 a0 d3                                      movle r0, #0
008928b0  18 00 8d d5                                      strle r0, [sp, #0x18]
008928b4  04 00 8d d5                                      strle r0, [sp, #4]
008928b8  09 00 00 da                                      ble #0x8928e4
008928bc  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
008928c0  34 10 9d e5                                      ldr r1, [sp, #0x34]
008928c4  02 00 6a e0                                      rsb r0, sl, r2
008928c8  75 ee e9 eb                                      bl #0x30e2a4
008928cc  30 30 9d e5                                      ldr r3, [sp, #0x30]
008928d0  04 00 8d e5                                      str r0, [sp, #4]
008928d4  34 10 9d e5                                      ldr r1, [sp, #0x34]
008928d8  03 00 69 e0                                      rsb r0, sb, r3
008928dc  70 ee e9 eb                                      bl #0x30e2a4
008928e0  18 00 8d e5                                      str r0, [sp, #0x18]
008928e4  08 50 9d e5                                      ldr r5, [sp, #8]
008928e8  00 00 55 e3                                      cmp r5, #0
008928ec  43 00 00 da                                      ble #0x892a00
008928f0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
008928f4  00 10 a0 e3                                      mov r1, #0
008928f8  1c 10 8d e5                                      str r1, [sp, #0x1c]
008928fc  00 00 50 e3                                      cmp r0, #0
00892900  00 00 a0 d3                                      movle r0, #0
00892904  01 00 a0 c3                                      movgt r0, #1
00892908  20 00 8d e5                                      str r0, [sp, #0x20]
0089290c  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
00892910  18 30 a0 e3                                      mov r3, #0x18
00892914  60 20 94 e5                                      ldr r2, [r4, #0x60]
00892918  93 00 01 e0                                      mul r1, r3, r0
0089291c  01 c0 82 e0                                      add ip, r2, r1
00892920  04 30 9c e5                                      ldr r3, [ip, #4]
00892924  10 c0 9c e5                                      ldr ip, [ip, #0x10]
00892928  01 70 92 e7                                      ldr r7, [r2, r1]
0089292c  04 10 9d e5                                      ldr r1, [sp, #4]
00892930  c3 30 6c e0                                      rsb r3, ip, r3, asr #1
00892934  10 30 8d e5                                      str r3, [sp, #0x10]
00892938  10 50 9d e5                                      ldr r5, [sp, #0x10]
0089293c  08 30 9d e5                                      ldr r3, [sp, #8]
00892940  8c 70 87 e0                                      add r7, r7, ip, lsl #1
00892944  05 00 53 e1                                      cmp r3, r5
00892948  05 30 a0 a1                                      movge r3, r5
0089294c  18 50 9d e5                                      ldr r5, [sp, #0x18]
00892950  05 10 91 e1                                      orrs r1, r1, r5
00892954  20 10 9d e5                                      ldr r1, [sp, #0x20]
00892958  01 10 81 13                                      orrne r1, r1, #1
0089295c  00 00 51 e3                                      cmp r1, #0
00892960  29 00 00 1a                                      bne #0x892a0c
00892964  00 00 53 e3                                      cmp r3, #0
00892968  87 00 00 da                                      ble #0x892b8c
0089296c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00892970  83 60 a0 e1                                      lsl r6, r3, #1
00892974  f1 50 97 e1                                      ldrsh r5, [r7, r1]
00892978  00 c0 92 e5                                      ldr ip, [r2]
0089297c  04 00 92 e5                                      ldr r0, [r2, #4]
00892980  95 0a 05 e0                                      mul r5, r5, sl
00892984  45 c7 8c e0                                      add ip, ip, r5, asr #14
00892988  00 c0 82 e5                                      str ip, [r2]
0089298c  f1 c0 97 e1                                      ldrsh ip, [r7, r1]
00892990  02 10 81 e2                                      add r1, r1, #2
00892994  06 00 51 e1                                      cmp r1, r6
00892998  9c 09 0c e0                                      mul ip, ip, sb
0089299c  4c 07 80 e0                                      add r0, r0, ip, asr #14
008929a0  04 00 82 e5                                      str r0, [r2, #4]
008929a4  08 20 82 e2                                      add r2, r2, #8
008929a8  f1 ff ff 1a                                      bne #0x892974
008929ac  14 10 9d e5                                      ldr r1, [sp, #0x14]
008929b0  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
008929b4  60 20 94 e5                                      ldr r2, [r4, #0x60]
008929b8  83 11 81 e0                                      add r1, r1, r3, lsl #3
008929bc  14 10 8d e5                                      str r1, [sp, #0x14]
008929c0  58 10 94 e5                                      ldr r1, [r4, #0x58]
008929c4  10 50 9d e5                                      ldr r5, [sp, #0x10]
008929c8  06 60 81 e0                                      add r6, r1, r6
008929cc  03 00 55 e1                                      cmp r5, r3
008929d0  58 60 84 e5                                      str r6, [r4, #0x58]
008929d4  55 00 00 0a                                      beq #0x892b30
008929d8  18 c0 a0 e3                                      mov ip, #0x18
008929dc  9c 20 22 e0                                      mla r2, ip, r0, r2
008929e0  10 10 92 e5                                      ldr r1, [r2, #0x10]
008929e4  03 10 81 e0                                      add r1, r1, r3
008929e8  10 10 82 e5                                      str r1, [r2, #0x10]
008929ec  08 00 9d e5                                      ldr r0, [sp, #8]
008929f0  00 00 63 e0                                      rsb r0, r3, r0
008929f4  00 00 50 e3                                      cmp r0, #0
008929f8  08 00 8d e5                                      str r0, [sp, #8]
008929fc  c2 ff ff ca                                      bgt #0x89290c
00892a00  30 90 84 e5                                      str sb, [r4, #0x30]
00892a04  2c a0 84 e5                                      str sl, [r4, #0x2c]
00892a08  67 ff ff ea                                      b #0x8927ac
00892a0c  00 00 53 e3                                      cmp r3, #0
00892a10  5b 00 00 da                                      ble #0x892b84
00892a14  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00892a18  24 30 8d e5                                      str r3, [sp, #0x24]
00892a1c  28 40 8d e5                                      str r4, [sp, #0x28]
00892a20  00 c0 83 e0                                      add ip, r3, r0
00892a24  0c 40 a0 e1                                      mov r4, ip
00892a28  00 60 a0 e1                                      mov r6, r0
00892a2c  14 50 9d e5                                      ldr r5, [sp, #0x14]
00892a30  00 80 a0 e3                                      mov r8, #0
00892a34  34 30 9d e5                                      ldr r3, [sp, #0x34]
00892a38  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00892a3c  17 00 00 ea                                      b #0x892aa0
00892a40  03 00 56 e1                                      cmp r6, r3
00892a44  00 20 a0 a3                                      movge r2, #0
00892a48  01 20 a0 b3                                      movlt r2, #1
00892a4c  0b 00 56 e1                                      cmp r6, fp
00892a50  01 20 82 a3                                      orrge r2, r2, #1
00892a54  00 00 52 e3                                      cmp r2, #0
00892a58  04 20 9d 15                                      ldrne r2, [sp, #4]
00892a5c  f8 00 97 e1                                      ldrsh r0, [r7, r8]
00892a60  00 10 95 e5                                      ldr r1, [r5]
00892a64  02 a0 8a 10                                      addne sl, sl, r2
00892a68  90 0a 00 e0                                      mul r0, r0, sl
00892a6c  0c 90 89 10                                      addne sb, sb, ip
00892a70  40 17 81 e0                                      add r1, r1, r0, asr #14
00892a74  00 10 85 e5                                      str r1, [r5]
00892a78  f8 10 97 e1                                      ldrsh r1, [r7, r8]
00892a7c  04 20 95 e5                                      ldr r2, [r5, #4]
00892a80  01 60 86 e2                                      add r6, r6, #1
00892a84  91 09 01 e0                                      mul r1, r1, sb
00892a88  04 00 56 e1                                      cmp r6, r4
00892a8c  41 27 82 e0                                      add r2, r2, r1, asr #14
00892a90  04 20 85 e5                                      str r2, [r5, #4]
00892a94  02 80 88 e2                                      add r8, r8, #2
00892a98  08 50 85 e2                                      add r5, r5, #8
00892a9c  0f 00 00 0a                                      beq #0x892ae0
00892aa0  0b 00 56 e1                                      cmp r6, fp
00892aa4  e5 ff ff 1a                                      bne #0x892a40
00892aa8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00892aac  0a 00 a0 e1                                      mov r0, sl
00892ab0  00 30 8d e5                                      str r3, [sp]
00892ab4  fa ed e9 eb                                      bl #0x30e2a4
00892ab8  c0 1f 20 e0                                      eor r1, r0, r0, asr #31
00892abc  c0 1f 61 e0                                      rsb r1, r1, r0, asr #31
00892ac0  04 10 8d e5                                      str r1, [sp, #4]
00892ac4  09 00 a0 e1                                      mov r0, sb
00892ac8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00892acc  f4 ed e9 eb                                      bl #0x30e2a4
00892ad0  00 30 9d e5                                      ldr r3, [sp]
00892ad4  c0 cf 20 e0                                      eor ip, r0, r0, asr #31
00892ad8  c0 cf 6c e0                                      rsb ip, ip, r0, asr #31
00892adc  d7 ff ff ea                                      b #0x892a40
00892ae0  18 c0 8d e5                                      str ip, [sp, #0x18]
00892ae4  24 30 9d e5                                      ldr r3, [sp, #0x24]
00892ae8  14 50 9d e5                                      ldr r5, [sp, #0x14]
00892aec  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00892af0  28 40 9d e5                                      ldr r4, [sp, #0x28]
00892af4  83 51 85 e0                                      add r5, r5, r3, lsl #3
00892af8  03 c0 8c e0                                      add ip, ip, r3
00892afc  14 50 8d e5                                      str r5, [sp, #0x14]
00892b00  1c c0 8d e5                                      str ip, [sp, #0x1c]
00892b04  58 10 94 e5                                      ldr r1, [r4, #0x58]
00892b08  10 50 9d e5                                      ldr r5, [sp, #0x10]
00892b0c  83 60 a0 e1                                      lsl r6, r3, #1
00892b10  06 60 81 e0                                      add r6, r1, r6
00892b14  03 00 55 e1                                      cmp r5, r3
00892b18  30 90 9d e5                                      ldr sb, [sp, #0x30]
00892b1c  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
00892b20  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
00892b24  60 20 94 e5                                      ldr r2, [r4, #0x60]
00892b28  58 60 84 e5                                      str r6, [r4, #0x58]
00892b2c  a9 ff ff 1a                                      bne #0x8929d8
00892b30  18 c0 a0 e3                                      mov ip, #0x18
00892b34  9c 20 22 e0                                      mla r2, ip, r0, r2
00892b38  01 00 a0 e3                                      mov r0, #1
00892b3c  14 00 c2 e5                                      strb r0, [r2, #0x14]
00892b40  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
00892b44  44 10 94 e5                                      ldr r1, [r4, #0x44]
00892b48  18 50 a0 e3                                      mov r5, #0x18
00892b4c  01 00 80 e2                                      add r0, r0, #1
00892b50  4c 00 84 e5                                      str r0, [r4, #0x4c]
00892b54  00 30 8d e5                                      str r3, [sp]
00892b58  69 ef e9 eb                                      bl #0x30e904
00892b5c  60 20 94 e5                                      ldr r2, [r4, #0x60]
00892b60  4c 10 84 e5                                      str r1, [r4, #0x4c]
00892b64  00 30 9d e5                                      ldr r3, [sp]
00892b68  95 21 22 e0                                      mla r2, r5, r1, r2
00892b6c  14 20 d2 e5                                      ldrb r2, [r2, #0x14]
00892b70  00 00 52 e3                                      cmp r2, #0
00892b74  9c ff ff 0a                                      beq #0x8929ec
00892b78  30 90 84 e5                                      str sb, [r4, #0x30]
00892b7c  2c a0 84 e5                                      str sl, [r4, #0x2c]
00892b80  09 ff ff ea                                      b #0x8927ac
00892b84  30 90 9d e5                                      ldr sb, [sp, #0x30]
00892b88  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
00892b8c  83 60 a0 e1                                      lsl r6, r3, #1
00892b90  8a ff ff ea                                      b #0x8929c0
00892b94  18 30 8d e5                                      str r3, [sp, #0x18]
00892b98  01 30 a0 e3                                      mov r3, #1
00892b9c  24 30 c4 e5                                      strb r3, [r4, #0x24]
00892ba0  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00892ba4  30 90 9d e5                                      ldr sb, [sp, #0x30]
00892ba8  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
00892bac  04 c0 8d e5                                      str ip, [sp, #4]
00892bb0  4b ff ff ea                                      b #0x8928e4
00892bb4  20 30 94 e5                                      ldr r3, [r4, #0x20]
00892bb8  03 b0 50 e0                                      subs fp, r0, r3
00892bbc  0c 30 8d e5                                      str r3, [sp, #0xc]
00892bc0  00 b0 a0 43                                      movmi fp, #0
00892bc4  0c 00 8d 45                                      strmi r0, [sp, #0xc]
00892bc8  0c 30 9d 55                                      ldrpl r3, [sp, #0xc]
00892bcc  28 ff ff ea                                      b #0x892874

; FUNCTION 0x00892bd0, declared_size=920, range_size=920, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface16FillBufferMono16EPii
; demangled: vox::DriverCallbackSourceInterface::FillBufferMono16(int*, int)
; decoder-mode: arm
00892bd0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00892bd4  50 30 90 e5                                      ldr r3, [r0, #0x50]
00892bd8  34 d0 4d e2                                      sub sp, sp, #0x34
00892bdc  00 50 a0 e1                                      mov r5, r0
00892be0  01 00 53 e3                                      cmp r3, #1
00892be4  01 40 a0 e1                                      mov r4, r1
00892be8  02 70 a0 e1                                      mov r7, r2
00892bec  01 00 00 0a                                      beq #0x892bf8
00892bf0  34 d0 8d e2                                      add sp, sp, #0x34
00892bf4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00892bf8  4c 20 90 e5                                      ldr r2, [r0, #0x4c]
00892bfc  60 30 90 e5                                      ldr r3, [r0, #0x60]
00892c00  18 60 a0 e3                                      mov r6, #0x18
00892c04  96 32 23 e0                                      mla r3, r6, r2, r3
00892c08  14 a0 d3 e5                                      ldrb sl, [r3, #0x14]
00892c0c  00 00 5a e3                                      cmp sl, #0
00892c10  f6 ff ff 1a                                      bne #0x892bf0
00892c14  28 10 90 e5                                      ldr r1, [r0, #0x28]
00892c18  18 10 8d e5                                      str r1, [sp, #0x18]
00892c1c  3c fd ff eb                                      bl #0x892114
00892c20  14 00 8d e5                                      str r0, [sp, #0x14]
00892c24  05 00 a0 e1                                      mov r0, r5
00892c28  0c fe ff eb                                      bl #0x892460
00892c2c  2c 10 8d e2                                      add r1, sp, #0x2c
00892c30  0c 00 8d e5                                      str r0, [sp, #0xc]
00892c34  28 20 8d e2                                      add r2, sp, #0x28
00892c38  05 00 a0 e1                                      mov r0, r5
00892c3c  cf fb ff eb                                      bl #0x891b80
00892c40  40 90 95 e5                                      ldr sb, [r5, #0x40]
00892c44  4c 20 95 e5                                      ldr r2, [r5, #0x4c]
00892c48  60 30 95 e5                                      ldr r3, [r5, #0x60]
00892c4c  99 07 09 e0                                      mul sb, sb, r7
00892c50  96 32 26 e0                                      mla r6, r6, r2, r3
00892c54  49 b7 a0 e1                                      asr fp, sb, #0xe
00892c58  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00892c5c  28 20 9d e5                                      ldr r2, [sp, #0x28]
00892c60  03 b0 8b e2                                      add fp, fp, #3
00892c64  0b 01 a0 e1                                      lsl r0, fp, #2
00892c68  0c 60 96 e5                                      ldr r6, [r6, #0xc]
00892c6c  20 30 8d e5                                      str r3, [sp, #0x20]
00892c70  24 20 8d e5                                      str r2, [sp, #0x24]
00892c74  1b f6 ff eb                                      bl #0x8904e8
00892c78  00 30 90 e5                                      ldr r3, [r0]
00892c7c  00 80 a0 e1                                      mov r8, r0
00892c80  00 00 53 e3                                      cmp r3, #0
00892c84  00 30 e0 03                                      mvneq r3, #0
00892c88  50 30 85 05                                      streq r3, [r5, #0x50]
00892c8c  d7 ff ff 0a                                      beq #0x892bf0
00892c90  04 10 90 e5                                      ldr r1, [r0, #4]
00892c94  8b 20 a0 e1                                      lsl r2, fp, #1
00892c98  09 30 a0 e1                                      mov r3, sb
00892c9c  05 00 a0 e1                                      mov r0, r5
00892ca0  46 fa ff eb                                      bl #0x8915c0
00892ca4  a0 0f 80 e0                                      add r0, r0, r0, lsr #31
00892ca8  40 10 95 e5                                      ldr r1, [r5, #0x40]
00892cac  c0 00 a0 e1                                      asr r0, r0, #1
00892cb0  00 07 a0 e1                                      lsl r0, r0, #0xe
00892cb4  7a ed e9 eb                                      bl #0x30e2a4
00892cb8  00 00 57 e1                                      cmp r7, r0
00892cbc  04 80 98 e5                                      ldr r8, [r8, #4]
00892cc0  5a 00 00 ca                                      bgt #0x892e30
00892cc4  20 20 95 e5                                      ldr r2, [r5, #0x20]
00892cc8  0a c0 a0 e1                                      mov ip, sl
00892ccc  01 30 87 e2                                      add r3, r7, #1
00892cd0  07 b0 a0 e1                                      mov fp, r7
00892cd4  1c a0 8d e5                                      str sl, [sp, #0x1c]
00892cd8  02 00 53 e1                                      cmp r3, r2
00892cdc  10 30 8d b5                                      strlt r3, [sp, #0x10]
00892ce0  02 00 00 ba                                      blt #0x892cf0
00892ce4  07 00 52 e1                                      cmp r2, r7
00892ce8  07 20 a0 a1                                      movge r2, r7
00892cec  10 20 8d e5                                      str r2, [sp, #0x10]
00892cf0  18 20 9d e5                                      ldr r2, [sp, #0x18]
00892cf4  14 70 9d e5                                      ldr r7, [sp, #0x14]
00892cf8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00892cfc  92 07 01 e0                                      mul r1, r2, r7
00892d00  20 70 9d e5                                      ldr r7, [sp, #0x20]
00892d04  41 17 a0 e1                                      asr r1, r1, #0xe
00892d08  90 01 01 e0                                      mul r1, r0, r1
00892d0c  24 20 d5 e5                                      ldrb r2, [r5, #0x24]
00892d10  41 17 a0 e1                                      asr r1, r1, #0xe
00892d14  97 01 00 e0                                      mul r0, r7, r1
00892d18  24 70 9d e5                                      ldr r7, [sp, #0x24]
00892d1c  40 07 a0 e1                                      asr r0, r0, #0xe
00892d20  20 00 8d e5                                      str r0, [sp, #0x20]
00892d24  97 01 01 e0                                      mul r1, r7, r1
00892d28  00 00 52 e3                                      cmp r2, #0
00892d2c  41 17 a0 e1                                      asr r1, r1, #0xe
00892d30  24 10 8d e5                                      str r1, [sp, #0x24]
00892d34  2c a0 95 e5                                      ldr sl, [r5, #0x2c]
00892d38  30 90 95 e5                                      ldr sb, [r5, #0x30]
00892d3c  34 00 00 0a                                      beq #0x892e14
00892d40  10 00 9d e5                                      ldr r0, [sp, #0x10]
00892d44  00 00 50 e3                                      cmp r0, #0
00892d48  00 20 a0 d3                                      movle r2, #0
00892d4c  14 20 8d d5                                      strle r2, [sp, #0x14]
00892d50  18 20 8d d5                                      strle r2, [sp, #0x18]
00892d54  10 00 00 da                                      ble #0x892d9c
00892d58  20 20 9d e5                                      ldr r2, [sp, #0x20]
00892d5c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00892d60  04 30 8d e5                                      str r3, [sp, #4]
00892d64  02 00 6a e0                                      rsb r0, sl, r2
00892d68  08 c0 8d e5                                      str ip, [sp, #8]
00892d6c  4c ed e9 eb                                      bl #0x30e2a4
00892d70  24 70 9d e5                                      ldr r7, [sp, #0x24]
00892d74  18 00 8d e5                                      str r0, [sp, #0x18]
00892d78  10 10 9d e5                                      ldr r1, [sp, #0x10]
00892d7c  07 00 69 e0                                      rsb r0, sb, r7
00892d80  47 ed e9 eb                                      bl #0x30e2a4
00892d84  18 10 9d e5                                      ldr r1, [sp, #0x18]
00892d88  08 10 9d e9                                      ldmib sp, {r3, ip}
00892d8c  14 00 8d e5                                      str r0, [sp, #0x14]
00892d90  01 00 90 e1                                      orrs r0, r0, r1
00892d94  00 20 a0 03                                      moveq r2, #0
00892d98  01 20 a0 13                                      movne r2, #1
00892d9c  0c 20 92 e1                                      orrs r2, r2, ip
00892da0  2d 00 00 1a                                      bne #0x892e5c
00892da4  00 00 5b e3                                      cmp fp, #0
00892da8  16 00 00 da                                      ble #0x892e08
00892dac  46 17 a0 e1                                      asr r1, r6, #0xe
00892db0  06 39 a0 e1                                      lsl r3, r6, #0x12
00892db4  81 00 88 e0                                      add r0, r8, r1, lsl #1
00892db8  81 10 a0 e1                                      lsl r1, r1, #1
00892dbc  f1 10 98 e1                                      ldrsh r1, [r8, r1]
00892dc0  f2 c0 d0 e1                                      ldrsh ip, [r0, #2]
00892dc4  23 39 a0 e1                                      lsr r3, r3, #0x12
00892dc8  00 00 94 e5                                      ldr r0, [r4]
00892dcc  0c c0 61 e0                                      rsb ip, r1, ip
00892dd0  93 0c 03 e0                                      mul r3, r3, ip
00892dd4  04 c0 94 e5                                      ldr ip, [r4, #4]
00892dd8  43 37 81 e0                                      add r3, r1, r3, asr #14
00892ddc  99 03 01 e0                                      mul r1, sb, r3
00892de0  9a 03 03 e0                                      mul r3, sl, r3
00892de4  41 c7 8c e0                                      add ip, ip, r1, asr #14
00892de8  43 37 80 e0                                      add r3, r0, r3, asr #14
00892dec  08 10 84 e8                                      stm r4, {r3, ip}
00892df0  40 30 95 e5                                      ldr r3, [r5, #0x40]
00892df4  01 20 82 e2                                      add r2, r2, #1
00892df8  0b 00 52 e1                                      cmp r2, fp
00892dfc  03 60 86 e0                                      add r6, r6, r3
00892e00  08 40 84 e2                                      add r4, r4, #8
00892e04  e8 ff ff 1a                                      bne #0x892dac
00892e08  30 90 85 e5                                      str sb, [r5, #0x30]
00892e0c  2c a0 85 e5                                      str sl, [r5, #0x2c]
00892e10  76 ff ff ea                                      b #0x892bf0
00892e14  01 10 a0 e3                                      mov r1, #1
00892e18  24 10 c5 e5                                      strb r1, [r5, #0x24]
00892e1c  24 90 9d e5                                      ldr sb, [sp, #0x24]
00892e20  20 a0 9d e5                                      ldr sl, [sp, #0x20]
00892e24  14 20 8d e5                                      str r2, [sp, #0x14]
00892e28  18 20 8d e5                                      str r2, [sp, #0x18]
00892e2c  da ff ff ea                                      b #0x892d9c
00892e30  20 c0 95 e5                                      ldr ip, [r5, #0x20]
00892e34  01 b0 40 e2                                      sub fp, r0, #1
00892e38  0c 30 5b e0                                      subs r3, fp, ip
00892e3c  1c c0 8d e5                                      str ip, [sp, #0x1c]
00892e40  41 00 00 4a                                      bmi #0x892f4c
00892e44  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00892e48  00 00 50 e3                                      cmp r0, #0
00892e4c  00 c0 a0 d3                                      movle ip, #0
00892e50  01 c0 a0 c3                                      movgt ip, #1
00892e54  00 20 a0 e1                                      mov r2, r0
00892e58  9e ff ff ea                                      b #0x892cd8
00892e5c  00 00 5b e3                                      cmp fp, #0
00892e60  36 00 00 da                                      ble #0x892f40
00892e64  0c b0 8d e5                                      str fp, [sp, #0xc]
00892e68  00 70 a0 e3                                      mov r7, #0
00892e6c  03 b0 a0 e1                                      mov fp, r3
00892e70  23 00 00 ea                                      b #0x892f04
00892e74  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00892e78  46 27 a0 e1                                      asr r2, r6, #0xe
00892e7c  06 39 a0 e1                                      lsl r3, r6, #0x12
00892e80  0c 00 57 e1                                      cmp r7, ip
00892e84  00 00 a0 a3                                      movge r0, #0
00892e88  01 00 a0 b3                                      movlt r0, #1
00892e8c  0b 00 57 e1                                      cmp r7, fp
00892e90  01 00 80 a3                                      orrge r0, r0, #1
00892e94  00 00 50 e3                                      cmp r0, #0
00892e98  18 00 9d 15                                      ldrne r0, [sp, #0x18]
00892e9c  82 10 88 e0                                      add r1, r8, r2, lsl #1
00892ea0  82 20 a0 e1                                      lsl r2, r2, #1
00892ea4  f2 20 98 e1                                      ldrsh r2, [r8, r2]
00892ea8  00 a0 8a 10                                      addne sl, sl, r0
00892eac  f2 00 d1 e1                                      ldrsh r0, [r1, #2]
00892eb0  23 39 a0 e1                                      lsr r3, r3, #0x12
00892eb4  14 c0 9d 15                                      ldrne ip, [sp, #0x14]
00892eb8  00 00 62 e0                                      rsb r0, r2, r0
00892ebc  93 00 03 e0                                      mul r3, r3, r0
00892ec0  0c 90 89 10                                      addne sb, sb, ip
00892ec4  43 27 82 e0                                      add r2, r2, r3, asr #14
00892ec8  92 09 03 e0                                      mul r3, r2, sb
00892ecc  00 c0 94 e5                                      ldr ip, [r4]
00892ed0  04 10 94 e5                                      ldr r1, [r4, #4]
00892ed4  92 0a 02 e0                                      mul r2, r2, sl
00892ed8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00892edc  43 17 81 e0                                      add r1, r1, r3, asr #14
00892ee0  01 70 87 e2                                      add r7, r7, #1
00892ee4  42 27 8c e0                                      add r2, ip, r2, asr #14
00892ee8  00 20 84 e5                                      str r2, [r4]
00892eec  04 10 84 e5                                      str r1, [r4, #4]
00892ef0  00 00 57 e1                                      cmp r7, r0
00892ef4  40 30 95 e5                                      ldr r3, [r5, #0x40]
00892ef8  10 00 00 0a                                      beq #0x892f40
00892efc  08 40 84 e2                                      add r4, r4, #8
00892f00  03 60 86 e0                                      add r6, r6, r3
00892f04  0b 00 57 e1                                      cmp r7, fp
00892f08  d9 ff ff 1a                                      bne #0x892e74
00892f0c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00892f10  0a 00 a0 e1                                      mov r0, sl
00892f14  e2 ec e9 eb                                      bl #0x30e2a4
00892f18  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00892f1c  c0 2f 20 e0                                      eor r2, r0, r0, asr #31
00892f20  c0 2f 62 e0                                      rsb r2, r2, r0, asr #31
00892f24  09 00 a0 e1                                      mov r0, sb
00892f28  18 20 8d e5                                      str r2, [sp, #0x18]
00892f2c  dc ec e9 eb                                      bl #0x30e2a4
00892f30  c0 3f 20 e0                                      eor r3, r0, r0, asr #31
00892f34  c0 3f 63 e0                                      rsb r3, r3, r0, asr #31
00892f38  14 30 8d e5                                      str r3, [sp, #0x14]
00892f3c  cc ff ff ea                                      b #0x892e74
00892f40  24 90 9d e5                                      ldr sb, [sp, #0x24]
00892f44  20 a0 9d e5                                      ldr sl, [sp, #0x20]
00892f48  ae ff ff ea                                      b #0x892e08
00892f4c  0c 20 a0 e1                                      mov r2, ip
00892f50  0a 30 a0 e1                                      mov r3, sl
00892f54  00 00 5b e3                                      cmp fp, #0
00892f58  00 c0 a0 d3                                      movle ip, #0
00892f5c  01 c0 a0 c3                                      movgt ip, #1
00892f60  1c b0 8d e5                                      str fp, [sp, #0x1c]
00892f64  5b ff ff ea                                      b #0x892cd8

; FUNCTION 0x00892f68, declared_size=416, range_size=416, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface10FillBufferEPii
; demangled: vox::DriverCallbackSourceInterface::FillBuffer(int*, int)
; decoder-mode: arm
00892f68  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00892f6c  08 50 80 e2                                      add r5, r0, #8
00892f70  00 40 a0 e1                                      mov r4, r0
00892f74  05 00 a0 e1                                      mov r0, r5
00892f78  01 70 a0 e1                                      mov r7, r1
00892f7c  02 60 a0 e1                                      mov r6, r2
00892f80  3d 01 00 eb                                      bl #0x89347c
00892f84  50 30 94 e5                                      ldr r3, [r4, #0x50]
00892f88  01 00 53 e3                                      cmp r3, #1
00892f8c  02 00 00 0a                                      beq #0x892f9c
00892f90  05 00 a0 e1                                      mov r0, r5
00892f94  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00892f98  36 01 00 ea                                      b #0x893478
00892f9c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00892fa0  60 20 94 e5                                      ldr r2, [r4, #0x60]
00892fa4  18 10 a0 e3                                      mov r1, #0x18
00892fa8  91 23 23 e0                                      mla r3, r1, r3, r2
00892fac  14 30 d3 e5                                      ldrb r3, [r3, #0x14]
00892fb0  00 00 53 e3                                      cmp r3, #0
00892fb4  f5 ff ff 1a                                      bne #0x892f90
00892fb8  38 20 94 e5                                      ldr r2, [r4, #0x38]
00892fbc  34 10 94 e5                                      ldr r1, [r4, #0x34]
00892fc0  01 00 52 e1                                      cmp r2, r1
00892fc4  09 00 00 0a                                      beq #0x892ff0
00892fc8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00892fcc  01 00 62 e0                                      rsb r0, r2, r1
00892fd0  c0 cf 20 e0                                      eor ip, r0, r0, asr #31
00892fd4  c0 cf 4c e0                                      sub ip, ip, r0, asr #31
00892fd8  c3 0f 23 e0                                      eor r0, r3, r3, asr #31
00892fdc  c3 0f 40 e0                                      sub r0, r0, r3, asr #31
00892fe0  00 00 5c e1                                      cmp ip, r0
00892fe4  02 30 83 a0                                      addge r3, r3, r2
00892fe8  38 10 84 b5                                      strlt r1, [r4, #0x38]
00892fec  38 30 84 a5                                      strge r3, [r4, #0x38]
00892ff0  10 30 94 e5                                      ldr r3, [r4, #0x10]
00892ff4  01 00 53 e3                                      cmp r3, #1
00892ff8  33 00 00 0a                                      beq #0x8930cc
00892ffc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00893000  38 00 94 e5                                      ldr r0, [r4, #0x38]
00893004  b0 10 94 e5                                      ldr r1, [r4, #0xb0]
00893008  90 02 02 e0                                      mul r2, r0, r2
0089300c  42 27 a0 e1                                      asr r2, r2, #0xe
00893010  91 02 02 e0                                      mul r2, r1, r2
00893014  42 27 a0 e1                                      asr r2, r2, #0xe
00893018  00 00 52 e3                                      cmp r2, #0
0089301c  40 20 84 e5                                      str r2, [r4, #0x40]
00893020  01 20 a0 03                                      moveq r2, #1
00893024  40 20 84 05                                      streq r2, [r4, #0x40]
00893028  0f 00 00 0a                                      beq #0x89306c
0089302c  01 09 52 e3                                      cmp r2, #0x4000
00893030  0d 00 00 1a                                      bne #0x89306c
00893034  01 00 53 e3                                      cmp r3, #1
00893038  28 00 00 0a                                      beq #0x8930e0
0089303c  02 00 53 e3                                      cmp r3, #2
00893040  d2 ff ff 1a                                      bne #0x892f90
00893044  18 30 94 e5                                      ldr r3, [r4, #0x18]
00893048  08 00 53 e3                                      cmp r3, #8
0089304c  cf ff ff 0a                                      beq #0x892f90
00893050  10 00 53 e3                                      cmp r3, #0x10
00893054  cd ff ff 1a                                      bne #0x892f90
00893058  04 00 a0 e1                                      mov r0, r4
0089305c  07 10 a0 e1                                      mov r1, r7
00893060  06 20 a0 e1                                      mov r2, r6
00893064  5a f3 ff eb                                      bl #0x88fdd4
00893068  c8 ff ff ea                                      b #0x892f90
0089306c  01 00 53 e3                                      cmp r3, #1
00893070  0b 00 00 0a                                      beq #0x8930a4
00893074  02 00 53 e3                                      cmp r3, #2
00893078  c4 ff ff 1a                                      bne #0x892f90
0089307c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00893080  08 00 53 e3                                      cmp r3, #8
00893084  c1 ff ff 0a                                      beq #0x892f90
00893088  10 00 53 e3                                      cmp r3, #0x10
0089308c  bf ff ff 1a                                      bne #0x892f90
00893090  04 00 a0 e1                                      mov r0, r4
00893094  07 10 a0 e1                                      mov r1, r7
00893098  06 20 a0 e1                                      mov r2, r6
0089309c  ef f9 ff eb                                      bl #0x891860
008930a0  ba ff ff ea                                      b #0x892f90
008930a4  18 30 94 e5                                      ldr r3, [r4, #0x18]
008930a8  08 00 53 e3                                      cmp r3, #8
008930ac  b7 ff ff 0a                                      beq #0x892f90
008930b0  10 00 53 e3                                      cmp r3, #0x10
008930b4  b5 ff ff 1a                                      bne #0x892f90
008930b8  04 00 a0 e1                                      mov r0, r4
008930bc  07 10 a0 e1                                      mov r1, r7
008930c0  06 20 a0 e1                                      mov r2, r6
008930c4  c1 fe ff eb                                      bl #0x892bd0
008930c8  b0 ff ff ea                                      b #0x892f90
008930cc  04 00 a0 e1                                      mov r0, r4
008930d0  7e fb ff eb                                      bl #0x891ed0
008930d4  10 30 94 e5                                      ldr r3, [r4, #0x10]
008930d8  b0 00 84 e5                                      str r0, [r4, #0xb0]
008930dc  c6 ff ff ea                                      b #0x892ffc
008930e0  18 30 94 e5                                      ldr r3, [r4, #0x18]
008930e4  08 00 53 e3                                      cmp r3, #8
008930e8  a8 ff ff 0a                                      beq #0x892f90
008930ec  10 00 53 e3                                      cmp r3, #0x10
008930f0  a6 ff ff 1a                                      bne #0x892f90
008930f4  04 00 a0 e1                                      mov r0, r4
008930f8  07 10 a0 e1                                      mov r1, r7
008930fc  06 20 a0 e1                                      mov r2, r6
00893100  a1 fd ff eb                                      bl #0x89278c
00893104  a1 ff ff ea                                      b #0x892f90

; FUNCTION 0x00893108, declared_size=860, range_size=860, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface4InitEv
; demangled: vox::DriverCallbackSourceInterface::Init()
; decoder-mode: arm
00893108  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0089310c  08 10 80 e2                                      add r1, r0, #8
00893110  00 40 a0 e1                                      mov r4, r0
00893114  3c d0 4d e2                                      sub sp, sp, #0x3c
00893118  01 00 a0 e1                                      mov r0, r1
0089311c  38 53 9f e5                                      ldr r5, [pc, #0x338]
00893120  04 10 8d e5                                      str r1, [sp, #4]
00893124  d4 00 00 eb                                      bl #0x89347c
00893128  30 33 9f e5                                      ldr r3, [pc, #0x330]
0089312c  05 50 8f e0                                      add r5, pc, r5
00893130  14 60 94 e5                                      ldr r6, [r4, #0x14]
00893134  03 30 95 e7                                      ldr r3, [r5, r3]
00893138  01 79 a0 e3                                      mov r7, #0x4000
0089313c  28 70 84 e5                                      str r7, [r4, #0x28]
00893140  34 70 84 e5                                      str r7, [r4, #0x34]
00893144  00 10 93 e5                                      ldr r1, [r3]
00893148  06 07 a0 e1                                      lsl r0, r6, #0xe
0089314c  54 ec e9 eb                                      bl #0x30e2a4
00893150  10 10 94 e5                                      ldr r1, [r4, #0x10]
00893154  96 30 a0 e3                                      mov r3, #0x96
00893158  18 50 94 e5                                      ldr r5, [r4, #0x18]
0089315c  96 01 06 e0                                      mul r6, r6, r1
00893160  c5 51 a0 e1                                      asr r5, r5, #3
00893164  93 06 06 e0                                      mul r6, r3, r6
00893168  d3 3d 04 e3                                      movw r3, #0x4dd3
0089316c  95 06 06 e0                                      mul r6, r5, r6
00893170  62 30 41 e3                                      movt r3, #0x1062
00893174  93 26 ca e0                                      smull r2, sl, r3, r6
00893178  02 e1 e0 e3                                      mvn lr, #0x80000000
0089317c  c6 6f a0 e1                                      asr r6, r6, #0x1f
00893180  43 24 a0 e3                                      mov r2, #0x43000000
00893184  00 30 a0 e3                                      mov r3, #0
00893188  02 e5 4e e2                                      sub lr, lr, #0x800000
0089318c  fe c5 a0 e3                                      mov ip, #0x3f800000
00893190  2d 27 82 e2                                      add r2, r2, #0xb40000
00893194  4a a3 66 e0                                      rsb sl, r6, sl, asr #6
00893198  00 60 a0 e3                                      mov r6, #0
0089319c  0c 00 84 e5                                      str r0, [r4, #0xc]
008931a0  a8 30 84 e5                                      str r3, [r4, #0xa8]
008931a4  6c 30 84 e5                                      str r3, [r4, #0x6c]
008931a8  70 30 84 e5                                      str r3, [r4, #0x70]
008931ac  74 30 84 e5                                      str r3, [r4, #0x74]
008931b0  78 30 84 e5                                      str r3, [r4, #0x78]
008931b4  7c 30 84 e5                                      str r3, [r4, #0x7c]
008931b8  80 30 84 e5                                      str r3, [r4, #0x80]
008931bc  84 30 84 e5                                      str r3, [r4, #0x84]
008931c0  88 30 84 e5                                      str r3, [r4, #0x88]
008931c4  8c 30 84 e5                                      str r3, [r4, #0x8c]
008931c8  0a 00 a0 e1                                      mov r0, sl
008931cc  9c c0 84 e5                                      str ip, [r4, #0x9c]
008931d0  a4 20 84 e5                                      str r2, [r4, #0xa4]
008931d4  ac e0 84 e5                                      str lr, [r4, #0xac]
008931d8  b0 70 84 e5                                      str r7, [r4, #0xb0]
008931dc  91 05 01 e0                                      mul r1, r1, r5
008931e0  90 60 84 e5                                      str r6, [r4, #0x90]
008931e4  94 e0 84 e5                                      str lr, [r4, #0x94]
008931e8  98 c0 84 e5                                      str ip, [r4, #0x98]
008931ec  a0 20 84 e5                                      str r2, [r4, #0xa0]
008931f0  48 60 84 e5                                      str r6, [r4, #0x48]
008931f4  4c 60 84 e5                                      str r6, [r4, #0x4c]
008931f8  c1 ed e9 eb                                      bl #0x30e904
008931fc  54 30 94 e5                                      ldr r3, [r4, #0x54]
00893200  0a a0 61 e0                                      rsb sl, r1, sl
00893204  06 00 53 e1                                      cmp r3, r6
00893208  2a 00 00 0a                                      beq #0x8932b8
0089320c  44 30 94 e5                                      ldr r3, [r4, #0x44]
00893210  06 00 53 e1                                      cmp r3, r6
00893214  64 50 94 d5                                      ldrle r5, [r4, #0x64]
00893218  1a 00 00 da                                      ble #0x893288
0089321c  aa 3a 0a e3                                      movw r3, #0xaaaa
00893220  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00893224  64 50 94 e5                                      ldr r5, [r4, #0x64]
00893228  20 90 8d e2                                      add sb, sp, #0x20
0089322c  08 30 8d e5                                      str r3, [sp, #8]
00893230  06 70 a0 e1                                      mov r7, r6
00893234  01 b0 a0 e3                                      mov fp, #1
00893238  68 30 94 e5                                      ldr r3, [r4, #0x68]
0089323c  05 00 53 e1                                      cmp r3, r5
00893240  22 00 00 0a                                      beq #0x8932d0
00893244  24 70 8d e5                                      str r7, [sp, #0x24]
00893248  28 a0 8d e5                                      str sl, [sp, #0x28]
0089324c  2c 70 8d e5                                      str r7, [sp, #0x2c]
00893250  09 c0 a0 e1                                      mov ip, sb
00893254  30 70 8d e5                                      str r7, [sp, #0x30]
00893258  34 b0 cd e5                                      strb fp, [sp, #0x34]
0089325c  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
00893260  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
00893264  03 00 9c e8                                      ldm ip, {r0, r1}
00893268  03 00 85 e8                                      stm r5, {r0, r1}
0089326c  64 50 94 e5                                      ldr r5, [r4, #0x64]
00893270  18 50 85 e2                                      add r5, r5, #0x18
00893274  64 50 84 e5                                      str r5, [r4, #0x64]
00893278  44 30 94 e5                                      ldr r3, [r4, #0x44]
0089327c  01 60 86 e2                                      add r6, r6, #1
00893280  06 00 53 e1                                      cmp r3, r6
00893284  eb ff ff ca                                      bgt #0x893238
00893288  60 30 94 e5                                      ldr r3, [r4, #0x60]
0089328c  05 50 63 e0                                      rsb r5, r3, r5
00893290  c5 51 a0 e1                                      asr r5, r5, #3
00893294  05 31 85 e0                                      add r3, r5, r5, lsl #2
00893298  03 32 83 e0                                      add r3, r3, r3, lsl #4
0089329c  03 34 83 e0                                      add r3, r3, r3, lsl #8
008932a0  03 38 83 e0                                      add r3, r3, r3, lsl #16
008932a4  83 50 85 e0                                      add r5, r5, r3, lsl #1
008932a8  00 00 55 e3                                      cmp r5, #0
008932ac  00 30 e0 d3                                      mvnle r3, #0
008932b0  44 50 84 e5                                      str r5, [r4, #0x44]
008932b4  50 30 84 d5                                      strle r3, [r4, #0x50]
008932b8  00 30 a0 e3                                      mov r3, #0
008932bc  58 30 84 e5                                      str r3, [r4, #0x58]
008932c0  04 00 9d e5                                      ldr r0, [sp, #4]
008932c4  3c d0 8d e2                                      add sp, sp, #0x3c
008932c8  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008932cc  69 00 00 ea                                      b #0x893478
008932d0  60 30 94 e5                                      ldr r3, [r4, #0x60]
008932d4  08 e0 9d e5                                      ldr lr, [sp, #8]
008932d8  05 30 63 e0                                      rsb r3, r3, r5
008932dc  c3 31 a0 e1                                      asr r3, r3, #3
008932e0  03 21 83 e0                                      add r2, r3, r3, lsl #2
008932e4  02 22 82 e0                                      add r2, r2, r2, lsl #4
008932e8  02 24 82 e0                                      add r2, r2, r2, lsl #8
008932ec  02 28 82 e0                                      add r2, r2, r2, lsl #16
008932f0  82 30 83 e0                                      add r3, r3, r2, lsl #1
008932f4  01 00 53 e3                                      cmp r3, #1
008932f8  03 20 83 20                                      addhs r2, r3, r3
008932fc  01 20 83 32                                      addlo r2, r3, #1
00893300  0e 00 52 e1                                      cmp r2, lr
00893304  01 00 00 8a                                      bhi #0x893310
00893308  02 00 53 e1                                      cmp r3, r2
0089330c  4e 00 00 9a                                      bls #0x89344c
00893310  0f 10 e0 e3                                      mvn r1, #0xf
00893314  14 10 8d e5                                      str r1, [sp, #0x14]
00893318  14 00 9d e5                                      ldr r0, [sp, #0x14]
0089331c  00 10 a0 e3                                      mov r1, #0
00893320  c8 f4 e9 eb                                      bl #0x310648
00893324  0c 00 8d e5                                      str r0, [sp, #0xc]
00893328  60 20 94 e5                                      ldr r2, [r4, #0x60]
0089332c  05 50 62 e0                                      rsb r5, r2, r5
00893330  c5 51 a0 e1                                      asr r5, r5, #3
00893334  05 31 85 e0                                      add r3, r5, r5, lsl #2
00893338  03 32 83 e0                                      add r3, r3, r3, lsl #4
0089333c  03 34 83 e0                                      add r3, r3, r3, lsl #8
00893340  03 38 83 e0                                      add r3, r3, r3, lsl #16
00893344  83 30 85 e0                                      add r3, r5, r3, lsl #1
00893348  00 00 53 e3                                      cmp r3, #0
0089334c  10 30 8d e5                                      str r3, [sp, #0x10]
00893350  00 50 a0 d1                                      movle r5, r0
00893354  16 00 00 da                                      ble #0x8933b4
00893358  1c 60 8d e5                                      str r6, [sp, #0x1c]
0089335c  10 80 9d e5                                      ldr r8, [sp, #0x10]
00893360  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00893364  18 a0 8d e5                                      str sl, [sp, #0x18]
00893368  00 50 a0 e3                                      mov r5, #0
0089336c  04 a0 a0 e1                                      mov sl, r4
00893370  02 40 a0 e1                                      mov r4, r2
00893374  05 c0 86 e0                                      add ip, r6, r5
00893378  05 e0 84 e0                                      add lr, r4, r5
0089337c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00893380  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00893384  03 00 9e e8                                      ldm lr, {r0, r1}
00893388  01 80 58 e2                                      subs r8, r8, #1
0089338c  03 00 8c e8                                      stm ip, {r0, r1}
00893390  18 50 85 e2                                      add r5, r5, #0x18
00893394  f6 ff ff 1a                                      bne #0x893374
00893398  10 20 9d e5                                      ldr r2, [sp, #0x10]
0089339c  0c e0 9d e5                                      ldr lr, [sp, #0xc]
008933a0  18 30 a0 e3                                      mov r3, #0x18
008933a4  0a 40 a0 e1                                      mov r4, sl
008933a8  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
008933ac  18 a0 9d e5                                      ldr sl, [sp, #0x18]
008933b0  93 e2 25 e0                                      mla r5, r3, r2, lr
008933b4  24 70 8d e5                                      str r7, [sp, #0x24]
008933b8  28 a0 8d e5                                      str sl, [sp, #0x28]
008933bc  2c 70 8d e5                                      str r7, [sp, #0x2c]
008933c0  05 e0 a0 e1                                      mov lr, r5
008933c4  09 c0 a0 e1                                      mov ip, sb
008933c8  30 70 8d e5                                      str r7, [sp, #0x30]
008933cc  34 b0 cd e5                                      strb fp, [sp, #0x34]
008933d0  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
008933d4  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
008933d8  03 00 9c e8                                      ldm ip, {r0, r1}
008933dc  18 50 85 e2                                      add r5, r5, #0x18
008933e0  03 00 8e e8                                      stm lr, {r0, r1}
008933e4  64 00 94 e5                                      ldr r0, [r4, #0x64]
008933e8  60 30 94 e5                                      ldr r3, [r4, #0x60]
008933ec  03 00 50 e1                                      cmp r0, r3
008933f0  0d 00 00 0a                                      beq #0x89342c
008933f4  18 20 40 e2                                      sub r2, r0, #0x18
008933f8  02 30 63 e0                                      rsb r3, r3, r2
008933fc  a3 31 a0 e1                                      lsr r3, r3, #3
00893400  17 10 e0 e3                                      mvn r1, #0x17
00893404  03 21 83 e0                                      add r2, r3, r3, lsl #2
00893408  02 21 83 e0                                      add r2, r3, r2, lsl #2
0089340c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00893410  02 21 83 e0                                      add r2, r3, r2, lsl #2
00893414  02 27 82 e0                                      add r2, r2, r2, lsl #14
00893418  82 30 83 e0                                      add r3, r3, r2, lsl #1
0089341c  0e 32 c3 e3                                      bic r3, r3, #0xe0000000
00893420  91 03 03 e0                                      mul r3, r1, r3
00893424  01 30 83 e0                                      add r3, r3, r1
00893428  03 00 80 e0                                      add r0, r0, r3
0089342c  04 f4 e9 eb                                      bl #0x310444
00893430  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00893434  14 10 9d e5                                      ldr r1, [sp, #0x14]
00893438  64 50 84 e5                                      str r5, [r4, #0x64]
0089343c  60 20 84 e5                                      str r2, [r4, #0x60]
00893440  01 30 82 e0                                      add r3, r2, r1
00893444  68 30 84 e5                                      str r3, [r4, #0x68]
00893448  8a ff ff ea                                      b #0x893278
0089344c  18 30 a0 e3                                      mov r3, #0x18
00893450  93 02 02 e0                                      mul r2, r3, r2
00893454  14 20 8d e5                                      str r2, [sp, #0x14]
00893458  ae ff ff ea                                      b #0x893318
; mapping-symbol data/literal pool
0089345c  64 19 10 00 9c 05 00 00                          .byte 0x64, 0x19, 0x10, 0x00, 0x9c, 0x05, 0x00, 0x00
