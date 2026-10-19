; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00586494, declared_size=140, range_size=140, mode=arm
; class-group: std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core10triangle3dIfEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00586494  70 40 2d e9                                      push {r4, r5, r6, lr}
00586498  00 20 90 e5                                      ldr r2, [r0]
0058649c  04 00 90 e5                                      ldr r0, [r0, #4]
005864a0  01 50 a0 e1                                      mov r5, r1
005864a4  c7 31 07 e3                                      movw r3, #0x71c7
005864a8  00 20 62 e0                                      rsb r2, r2, r0
005864ac  42 21 a0 e1                                      asr r2, r2, #2
005864b0  1c 37 40 e3                                      movt r3, #0x71c
005864b4  82 41 a0 e1                                      lsl r4, r2, #3
005864b8  04 40 62 e0                                      rsb r4, r2, r4
005864bc  04 43 84 e0                                      add r4, r4, r4, lsl #6
005864c0  84 41 82 e0                                      add r4, r2, r4, lsl #3
005864c4  84 17 a0 e1                                      lsl r1, r4, #0xf
005864c8  01 40 64 e0                                      rsb r4, r4, r1
005864cc  84 41 82 e0                                      add r4, r2, r4, lsl #3
005864d0  03 30 64 e0                                      rsb r3, r4, r3
005864d4  05 00 53 e1                                      cmp r3, r5
005864d8  0b 00 00 3a                                      blo #0x58650c
005864dc  c7 31 07 e3                                      movw r3, #0x71c7
005864e0  05 00 54 e1                                      cmp r4, r5
005864e4  04 00 84 20                                      addhs r0, r4, r4
005864e8  05 00 84 30                                      addlo r0, r4, r5
005864ec  03 36 83 e1                                      orr r3, r3, r3, lsl #12
005864f0  03 00 50 e1                                      cmp r0, r3
005864f4  01 00 00 8a                                      bhi #0x586500
005864f8  04 00 50 e1                                      cmp r0, r4
005864fc  01 00 00 2a                                      bhs #0x586508
00586500  c7 01 07 e3                                      movw r0, #0x71c7
00586504  00 06 80 e1                                      orr r0, r0, r0, lsl #12
00586508  70 80 bd e8                                      pop {r4, r5, r6, pc}
0058650c  08 00 9f e5                                      ldr r0, [pc, #8]
00586510  00 00 8f e0                                      add r0, pc, r0
00586514  49 0a 06 eb                                      bl #0x708e40
00586518  ef ff ff ea                                      b #0x5864dc
; mapping-symbol data/literal pool
0058651c  58 7f 33 00                                      .byte 0x58, 0x7f, 0x33, 0x00

; FUNCTION 0x0058671c, declared_size=760, range_size=760, mode=arm
; class-group: std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core10triangle3dIfEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEEaSERKS8_
; demangled: std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::operator=(std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
0058671c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00586720  00 00 51 e1                                      cmp r1, r0
00586724  0c d0 4d e2                                      sub sp, sp, #0xc
00586728  00 40 a0 e1                                      mov r4, r0
0058672c  40 00 00 0a                                      beq #0x586834
00586730  00 c0 90 e5                                      ldr ip, [r0]
00586734  0c 00 91 e8                                      ldm r1, {r2, r3}
00586738  08 60 90 e5                                      ldr r6, [r0, #8]
0058673c  0c b0 a0 e1                                      mov fp, ip
00586740  03 70 62 e0                                      rsb r7, r2, r3
00586744  06 60 6c e0                                      rsb r6, ip, r6
00586748  46 61 a0 e1                                      asr r6, r6, #2
0058674c  47 71 a0 e1                                      asr r7, r7, #2
00586750  86 81 a0 e1                                      lsl r8, r6, #3
00586754  87 51 a0 e1                                      lsl r5, r7, #3
00586758  08 80 66 e0                                      rsb r8, r6, r8
0058675c  05 50 67 e0                                      rsb r5, r7, r5
00586760  05 53 85 e0                                      add r5, r5, r5, lsl #6
00586764  08 83 88 e0                                      add r8, r8, r8, lsl #6
00586768  85 51 87 e0                                      add r5, r7, r5, lsl #3
0058676c  88 81 86 e0                                      add r8, r6, r8, lsl #3
00586770  85 a7 a0 e1                                      lsl sl, r5, #0xf
00586774  88 97 a0 e1                                      lsl sb, r8, #0xf
00586778  0a 50 65 e0                                      rsb r5, r5, sl
0058677c  09 80 68 e0                                      rsb r8, r8, sb
00586780  85 51 87 e0                                      add r5, r7, r5, lsl #3
00586784  88 81 86 e0                                      add r8, r6, r8, lsl #3
00586788  08 00 55 e1                                      cmp r5, r8
0058678c  05 60 a0 e1                                      mov r6, r5
00586790  81 00 00 8a                                      bhi #0x58699c
00586794  04 80 90 e5                                      ldr r8, [r0, #4]
00586798  08 70 6c e0                                      rsb r7, ip, r8
0058679c  47 71 a0 e1                                      asr r7, r7, #2
005867a0  87 01 a0 e1                                      lsl r0, r7, #3
005867a4  00 00 67 e0                                      rsb r0, r7, r0
005867a8  00 03 80 e0                                      add r0, r0, r0, lsl #6
005867ac  80 01 87 e0                                      add r0, r7, r0, lsl #3
005867b0  80 a7 a0 e1                                      lsl sl, r0, #0xf
005867b4  0a 00 60 e0                                      rsb r0, r0, sl
005867b8  80 71 87 e0                                      add r7, r7, r0, lsl #3
005867bc  07 00 55 e1                                      cmp r5, r7
005867c0  1e 00 00 8a                                      bhi #0x586840
005867c4  00 00 55 e3                                      cmp r5, #0
005867c8  16 00 00 da                                      ble #0x586828
005867cc  00 30 92 e5                                      ldr r3, [r2]
005867d0  01 60 56 e2                                      subs r6, r6, #1
005867d4  00 30 8c e5                                      str r3, [ip]
005867d8  04 30 92 e5                                      ldr r3, [r2, #4]
005867dc  04 30 8c e5                                      str r3, [ip, #4]
005867e0  08 30 92 e5                                      ldr r3, [r2, #8]
005867e4  08 30 8c e5                                      str r3, [ip, #8]
005867e8  0c 30 92 e5                                      ldr r3, [r2, #0xc]
005867ec  0c 30 8c e5                                      str r3, [ip, #0xc]
005867f0  10 30 92 e5                                      ldr r3, [r2, #0x10]
005867f4  10 30 8c e5                                      str r3, [ip, #0x10]
005867f8  14 30 92 e5                                      ldr r3, [r2, #0x14]
005867fc  14 30 8c e5                                      str r3, [ip, #0x14]
00586800  18 30 92 e5                                      ldr r3, [r2, #0x18]
00586804  18 30 8c e5                                      str r3, [ip, #0x18]
00586808  1c 30 92 e5                                      ldr r3, [r2, #0x1c]
0058680c  1c 30 8c e5                                      str r3, [ip, #0x1c]
00586810  20 30 92 e5                                      ldr r3, [r2, #0x20]
00586814  24 20 82 e2                                      add r2, r2, #0x24
00586818  20 30 8c e5                                      str r3, [ip, #0x20]
0058681c  24 c0 8c e2                                      add ip, ip, #0x24
00586820  e9 ff ff 1a                                      bne #0x5867cc
00586824  00 b0 94 e5                                      ldr fp, [r4]
00586828  24 c0 a0 e3                                      mov ip, #0x24
0058682c  9c b5 2b e0                                      mla fp, ip, r5, fp
00586830  04 b0 84 e5                                      str fp, [r4, #4]
00586834  04 00 a0 e1                                      mov r0, r4
00586838  0c d0 8d e2                                      add sp, sp, #0xc
0058683c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00586840  24 00 a0 e3                                      mov r0, #0x24
00586844  90 27 20 e0                                      mla r0, r0, r7, r2
00586848  00 70 62 e0                                      rsb r7, r2, r0
0058684c  47 71 a0 e1                                      asr r7, r7, #2
00586850  87 61 a0 e1                                      lsl r6, r7, #3
00586854  06 60 67 e0                                      rsb r6, r7, r6
00586858  06 63 86 e0                                      add r6, r6, r6, lsl #6
0058685c  86 61 87 e0                                      add r6, r7, r6, lsl #3
00586860  86 a7 a0 e1                                      lsl sl, r6, #0xf
00586864  0a 60 66 e0                                      rsb r6, r6, sl
00586868  86 61 87 e0                                      add r6, r7, r6, lsl #3
0058686c  00 00 56 e3                                      cmp r6, #0
00586870  08 20 a0 d1                                      movle r2, r8
00586874  24 00 00 da                                      ble #0x58690c
00586878  00 30 92 e5                                      ldr r3, [r2]
0058687c  01 60 56 e2                                      subs r6, r6, #1
00586880  00 30 8c e5                                      str r3, [ip]
00586884  04 30 92 e5                                      ldr r3, [r2, #4]
00586888  04 30 8c e5                                      str r3, [ip, #4]
0058688c  08 30 92 e5                                      ldr r3, [r2, #8]
00586890  08 30 8c e5                                      str r3, [ip, #8]
00586894  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00586898  0c 30 8c e5                                      str r3, [ip, #0xc]
0058689c  10 30 92 e5                                      ldr r3, [r2, #0x10]
005868a0  10 30 8c e5                                      str r3, [ip, #0x10]
005868a4  14 30 92 e5                                      ldr r3, [r2, #0x14]
005868a8  14 30 8c e5                                      str r3, [ip, #0x14]
005868ac  18 30 92 e5                                      ldr r3, [r2, #0x18]
005868b0  18 30 8c e5                                      str r3, [ip, #0x18]
005868b4  1c 30 92 e5                                      ldr r3, [r2, #0x1c]
005868b8  1c 30 8c e5                                      str r3, [ip, #0x1c]
005868bc  20 30 92 e5                                      ldr r3, [r2, #0x20]
005868c0  24 20 82 e2                                      add r2, r2, #0x24
005868c4  20 30 8c e5                                      str r3, [ip, #0x20]
005868c8  24 c0 8c e2                                      add ip, ip, #0x24
005868cc  e9 ff ff 1a                                      bne #0x586878
005868d0  04 20 94 e5                                      ldr r2, [r4, #4]
005868d4  00 c0 94 e5                                      ldr ip, [r4]
005868d8  00 70 91 e5                                      ldr r7, [r1]
005868dc  04 30 91 e5                                      ldr r3, [r1, #4]
005868e0  02 60 6c e0                                      rsb r6, ip, r2
005868e4  46 61 a0 e1                                      asr r6, r6, #2
005868e8  86 11 a0 e1                                      lsl r1, r6, #3
005868ec  01 10 66 e0                                      rsb r1, r6, r1
005868f0  01 13 81 e0                                      add r1, r1, r1, lsl #6
005868f4  81 11 86 e0                                      add r1, r6, r1, lsl #3
005868f8  81 07 a0 e1                                      lsl r0, r1, #0xf
005868fc  00 10 61 e0                                      rsb r1, r1, r0
00586900  81 61 86 e0                                      add r6, r6, r1, lsl #3
00586904  24 00 a0 e3                                      mov r0, #0x24
00586908  90 76 20 e0                                      mla r0, r0, r6, r7
0058690c  03 30 60 e0                                      rsb r3, r0, r3
00586910  43 11 a0 e1                                      asr r1, r3, #2
00586914  81 31 a0 e1                                      lsl r3, r1, #3
00586918  03 30 61 e0                                      rsb r3, r1, r3
0058691c  03 33 83 e0                                      add r3, r3, r3, lsl #6
00586920  83 31 81 e0                                      add r3, r1, r3, lsl #3
00586924  83 67 a0 e1                                      lsl r6, r3, #0xf
00586928  06 30 63 e0                                      rsb r3, r3, r6
0058692c  83 31 81 e0                                      add r3, r1, r3, lsl #3
00586930  00 00 53 e3                                      cmp r3, #0
00586934  0c b0 a0 d1                                      movle fp, ip
00586938  01 00 00 ca                                      bgt #0x586944
0058693c  b9 ff ff ea                                      b #0x586828
00586940  24 20 82 e2                                      add r2, r2, #0x24
00586944  00 10 90 e5                                      ldr r1, [r0]
00586948  01 30 53 e2                                      subs r3, r3, #1
0058694c  00 10 82 e5                                      str r1, [r2]
00586950  04 10 90 e5                                      ldr r1, [r0, #4]
00586954  04 10 82 e5                                      str r1, [r2, #4]
00586958  08 10 90 e5                                      ldr r1, [r0, #8]
0058695c  08 10 82 e5                                      str r1, [r2, #8]
00586960  0c 10 90 e5                                      ldr r1, [r0, #0xc]
00586964  0c 10 82 e5                                      str r1, [r2, #0xc]
00586968  10 10 90 e5                                      ldr r1, [r0, #0x10]
0058696c  10 10 82 e5                                      str r1, [r2, #0x10]
00586970  14 10 90 e5                                      ldr r1, [r0, #0x14]
00586974  14 10 82 e5                                      str r1, [r2, #0x14]
00586978  18 10 90 e5                                      ldr r1, [r0, #0x18]
0058697c  18 10 82 e5                                      str r1, [r2, #0x18]
00586980  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
00586984  1c 10 82 e5                                      str r1, [r2, #0x1c]
00586988  20 10 90 e5                                      ldr r1, [r0, #0x20]
0058698c  24 00 80 e2                                      add r0, r0, #0x24
00586990  20 10 82 e5                                      str r1, [r2, #0x20]
00586994  e9 ff ff 1a                                      bne #0x586940
00586998  a1 ff ff ea                                      b #0x586824
0058699c  08 10 8d e2                                      add r1, sp, #8
005869a0  04 50 21 e5                                      str r5, [r1, #-4]!
005869a4  dd fe ff eb                                      bl #0x586520
005869a8  00 30 94 e5                                      ldr r3, [r4]
005869ac  00 b0 a0 e1                                      mov fp, r0
005869b0  04 00 94 e5                                      ldr r0, [r4, #4]
005869b4  03 00 50 e1                                      cmp r0, r3
005869b8  0e 00 00 0a                                      beq #0x5869f8
005869bc  24 20 40 e2                                      sub r2, r0, #0x24
005869c0  02 30 63 e0                                      rsb r3, r3, r2
005869c4  23 31 a0 e1                                      lsr r3, r3, #2
005869c8  83 21 a0 e1                                      lsl r2, r3, #3
005869cc  02 20 63 e0                                      rsb r2, r3, r2
005869d0  02 23 82 e0                                      add r2, r2, r2, lsl #6
005869d4  82 21 83 e0                                      add r2, r3, r2, lsl #3
005869d8  82 17 a0 e1                                      lsl r1, r2, #0xf
005869dc  01 20 62 e0                                      rsb r2, r2, r1
005869e0  82 31 83 e0                                      add r3, r3, r2, lsl #3
005869e4  03 31 c3 e3                                      bic r3, r3, #0xc0000000
005869e8  23 20 e0 e3                                      mvn r2, #0x23
005869ec  92 03 03 e0                                      mul r3, r2, r3
005869f0  02 30 83 e0                                      add r3, r3, r2
005869f4  03 00 80 e0                                      add r0, r0, r3
005869f8  94 26 f6 eb                                      bl #0x310450
005869fc  04 30 9d e5                                      ldr r3, [sp, #4]
00586a00  24 20 a0 e3                                      mov r2, #0x24
00586a04  00 b0 84 e5                                      str fp, [r4]
00586a08  92 b3 23 e0                                      mla r3, r2, r3, fp
00586a0c  08 30 84 e5                                      str r3, [r4, #8]
00586a10  84 ff ff ea                                      b #0x586828

; FUNCTION 0x005876e4, declared_size=992, range_size=992, mode=arm
; class-group: std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core10triangle3dIfEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type
; demangled: std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::core::triangle3d<float>*, unsigned int, glitch::core::triangle3d<float> const&, std::__false_type const&)
; decoder-mode: arm
005876e4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005876e8  00 40 90 e5                                      ldr r4, [r0]
005876ec  30 d0 4d e2                                      sub sp, sp, #0x30
005876f0  00 c0 a0 e1                                      mov ip, r0
005876f4  04 00 53 e1                                      cmp r3, r4
005876f8  01 50 a0 e1                                      mov r5, r1
005876fc  02 40 a0 e1                                      mov r4, r2
00587700  04 60 90 35                                      ldrlo r6, [r0, #4]
00587704  02 00 00 3a                                      blo #0x587714
00587708  04 60 90 e5                                      ldr r6, [r0, #4]
0058770c  06 00 53 e1                                      cmp r3, r6
00587710  65 00 00 3a                                      blo #0x5878ac
00587714  06 20 65 e0                                      rsb r2, r5, r6
00587718  42 21 a0 e1                                      asr r2, r2, #2
0058771c  82 11 a0 e1                                      lsl r1, r2, #3
00587720  01 10 62 e0                                      rsb r1, r2, r1
00587724  01 13 81 e0                                      add r1, r1, r1, lsl #6
00587728  81 11 82 e0                                      add r1, r2, r1, lsl #3
0058772c  81 07 a0 e1                                      lsl r0, r1, #0xf
00587730  00 10 61 e0                                      rsb r1, r1, r0
00587734  81 11 82 e0                                      add r1, r2, r1, lsl #3
00587738  01 00 54 e1                                      cmp r4, r1
0058773c  71 00 00 3a                                      blo #0x587908
00587740  24 20 a0 e3                                      mov r2, #0x24
00587744  04 40 61 e0                                      rsb r4, r1, r4
00587748  92 64 24 e0                                      mla r4, r2, r4, r6
0058774c  04 00 66 e0                                      rsb r0, r6, r4
00587750  40 01 a0 e1                                      asr r0, r0, #2
00587754  80 21 a0 e1                                      lsl r2, r0, #3
00587758  02 20 60 e0                                      rsb r2, r0, r2
0058775c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00587760  82 21 80 e0                                      add r2, r0, r2, lsl #3
00587764  82 77 a0 e1                                      lsl r7, r2, #0xf
00587768  07 20 62 e0                                      rsb r2, r2, r7
0058776c  82 21 80 e0                                      add r2, r0, r2, lsl #3
00587770  00 00 52 e3                                      cmp r2, #0
00587774  37 00 00 ca                                      bgt #0x587858
00587778  00 00 51 e3                                      cmp r1, #0
0058777c  04 40 8c e5                                      str r4, [ip, #4]
00587780  cb 00 00 da                                      ble #0x587ab4
00587784  01 00 a0 e1                                      mov r0, r1
00587788  05 20 a0 e1                                      mov r2, r5
0058778c  00 00 00 ea                                      b #0x587794
00587790  24 40 84 e2                                      add r4, r4, #0x24
00587794  00 60 92 e5                                      ldr r6, [r2]
00587798  01 00 50 e2                                      subs r0, r0, #1
0058779c  00 60 84 e5                                      str r6, [r4]
005877a0  04 60 92 e5                                      ldr r6, [r2, #4]
005877a4  04 60 84 e5                                      str r6, [r4, #4]
005877a8  08 60 92 e5                                      ldr r6, [r2, #8]
005877ac  08 60 84 e5                                      str r6, [r4, #8]
005877b0  0c 60 92 e5                                      ldr r6, [r2, #0xc]
005877b4  0c 60 84 e5                                      str r6, [r4, #0xc]
005877b8  10 60 92 e5                                      ldr r6, [r2, #0x10]
005877bc  10 60 84 e5                                      str r6, [r4, #0x10]
005877c0  14 60 92 e5                                      ldr r6, [r2, #0x14]
005877c4  14 60 84 e5                                      str r6, [r4, #0x14]
005877c8  18 60 92 e5                                      ldr r6, [r2, #0x18]
005877cc  18 60 84 e5                                      str r6, [r4, #0x18]
005877d0  1c 60 92 e5                                      ldr r6, [r2, #0x1c]
005877d4  1c 60 84 e5                                      str r6, [r4, #0x1c]
005877d8  20 60 92 e5                                      ldr r6, [r2, #0x20]
005877dc  24 20 82 e2                                      add r2, r2, #0x24
005877e0  20 60 84 e5                                      str r6, [r4, #0x20]
005877e4  e9 ff ff 1a                                      bne #0x587790
005877e8  04 20 9c e5                                      ldr r2, [ip, #4]
005877ec  24 00 a0 e3                                      mov r0, #0x24
005877f0  90 21 22 e0                                      mla r2, r0, r1, r2
005877f4  04 20 8c e5                                      str r2, [ip, #4]
005877f8  00 20 93 e5                                      ldr r2, [r3]
005877fc  01 10 51 e2                                      subs r1, r1, #1
00587800  00 20 85 e5                                      str r2, [r5]
00587804  04 20 93 e5                                      ldr r2, [r3, #4]
00587808  04 20 85 e5                                      str r2, [r5, #4]
0058780c  08 20 93 e5                                      ldr r2, [r3, #8]
00587810  08 20 85 e5                                      str r2, [r5, #8]
00587814  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00587818  0c 20 85 e5                                      str r2, [r5, #0xc]
0058781c  10 20 93 e5                                      ldr r2, [r3, #0x10]
00587820  10 20 85 e5                                      str r2, [r5, #0x10]
00587824  14 20 93 e5                                      ldr r2, [r3, #0x14]
00587828  14 20 85 e5                                      str r2, [r5, #0x14]
0058782c  18 20 93 e5                                      ldr r2, [r3, #0x18]
00587830  18 20 85 e5                                      str r2, [r5, #0x18]
00587834  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
00587838  1c 20 85 e5                                      str r2, [r5, #0x1c]
0058783c  20 20 93 e5                                      ldr r2, [r3, #0x20]
00587840  20 20 85 e5                                      str r2, [r5, #0x20]
00587844  24 50 85 e2                                      add r5, r5, #0x24
00587848  ea ff ff 1a                                      bne #0x5877f8
0058784c  30 d0 8d e2                                      add sp, sp, #0x30
00587850  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00587854  24 60 86 e2                                      add r6, r6, #0x24
00587858  00 00 93 e5                                      ldr r0, [r3]
0058785c  01 20 52 e2                                      subs r2, r2, #1
00587860  00 00 86 e5                                      str r0, [r6]
00587864  04 00 93 e5                                      ldr r0, [r3, #4]
00587868  04 00 86 e5                                      str r0, [r6, #4]
0058786c  08 00 93 e5                                      ldr r0, [r3, #8]
00587870  08 00 86 e5                                      str r0, [r6, #8]
00587874  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00587878  0c 00 86 e5                                      str r0, [r6, #0xc]
0058787c  10 00 93 e5                                      ldr r0, [r3, #0x10]
00587880  10 00 86 e5                                      str r0, [r6, #0x10]
00587884  14 00 93 e5                                      ldr r0, [r3, #0x14]
00587888  14 00 86 e5                                      str r0, [r6, #0x14]
0058788c  18 00 93 e5                                      ldr r0, [r3, #0x18]
00587890  18 00 86 e5                                      str r0, [r6, #0x18]
00587894  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00587898  1c 00 86 e5                                      str r0, [r6, #0x1c]
0058789c  20 00 93 e5                                      ldr r0, [r3, #0x20]
005878a0  20 00 86 e5                                      str r0, [r6, #0x20]
005878a4  ea ff ff 1a                                      bne #0x587854
005878a8  b2 ff ff ea                                      b #0x587778
005878ac  10 c0 93 e5                                      ldr ip, [r3, #0x10]
005878b0  20 a0 93 e5                                      ldr sl, [r3, #0x20]
005878b4  00 60 93 e5                                      ldr r6, [r3]
005878b8  04 50 93 e5                                      ldr r5, [r3, #4]
005878bc  08 40 93 e5                                      ldr r4, [r3, #8]
005878c0  0c e0 93 e5                                      ldr lr, [r3, #0xc]
005878c4  14 70 93 e5                                      ldr r7, [r3, #0x14]
005878c8  18 80 93 e5                                      ldr r8, [r3, #0x18]
005878cc  1c 90 93 e5                                      ldr sb, [r3, #0x1c]
005878d0  18 c0 8d e5                                      str ip, [sp, #0x18]
005878d4  08 30 8d e2                                      add r3, sp, #8
005878d8  2c c0 8d e2                                      add ip, sp, #0x2c
005878dc  08 60 8d e5                                      str r6, [sp, #8]
005878e0  0c 50 8d e5                                      str r5, [sp, #0xc]
005878e4  10 40 8d e5                                      str r4, [sp, #0x10]
005878e8  14 e0 8d e5                                      str lr, [sp, #0x14]
005878ec  1c 70 8d e5                                      str r7, [sp, #0x1c]
005878f0  20 80 8d e5                                      str r8, [sp, #0x20]
005878f4  24 90 8d e5                                      str sb, [sp, #0x24]
005878f8  28 a0 8d e5                                      str sl, [sp, #0x28]
005878fc  00 c0 8d e5                                      str ip, [sp]
00587900  77 ff ff eb                                      bl #0x5876e4
00587904  d0 ff ff ea                                      b #0x58784c
00587908  24 20 a0 e3                                      mov r2, #0x24
0058790c  92 04 04 e0                                      mul r4, r2, r4
00587910  44 11 a0 e1                                      asr r1, r4, #2
00587914  06 20 64 e0                                      rsb r2, r4, r6
00587918  81 01 a0 e1                                      lsl r0, r1, #3
0058791c  00 00 61 e0                                      rsb r0, r1, r0
00587920  00 03 80 e0                                      add r0, r0, r0, lsl #6
00587924  80 01 81 e0                                      add r0, r1, r0, lsl #3
00587928  80 77 a0 e1                                      lsl r7, r0, #0xf
0058792c  07 00 60 e0                                      rsb r0, r0, r7
00587930  80 71 81 e0                                      add r7, r1, r0, lsl #3
00587934  00 00 57 e3                                      cmp r7, #0
00587938  06 70 a0 d1                                      movle r7, r6
0058793c  19 00 00 da                                      ble #0x5879a8
00587940  02 10 a0 e1                                      mov r1, r2
00587944  06 00 a0 e1                                      mov r0, r6
00587948  00 00 00 ea                                      b #0x587950
0058794c  24 00 80 e2                                      add r0, r0, #0x24
00587950  00 80 91 e5                                      ldr r8, [r1]
00587954  01 70 57 e2                                      subs r7, r7, #1
00587958  00 80 80 e5                                      str r8, [r0]
0058795c  04 80 91 e5                                      ldr r8, [r1, #4]
00587960  04 80 80 e5                                      str r8, [r0, #4]
00587964  08 80 91 e5                                      ldr r8, [r1, #8]
00587968  08 80 80 e5                                      str r8, [r0, #8]
0058796c  0c 80 91 e5                                      ldr r8, [r1, #0xc]
00587970  0c 80 80 e5                                      str r8, [r0, #0xc]
00587974  10 80 91 e5                                      ldr r8, [r1, #0x10]
00587978  10 80 80 e5                                      str r8, [r0, #0x10]
0058797c  14 80 91 e5                                      ldr r8, [r1, #0x14]
00587980  14 80 80 e5                                      str r8, [r0, #0x14]
00587984  18 80 91 e5                                      ldr r8, [r1, #0x18]
00587988  18 80 80 e5                                      str r8, [r0, #0x18]
0058798c  1c 80 91 e5                                      ldr r8, [r1, #0x1c]
00587990  1c 80 80 e5                                      str r8, [r0, #0x1c]
00587994  20 80 91 e5                                      ldr r8, [r1, #0x20]
00587998  24 10 81 e2                                      add r1, r1, #0x24
0058799c  20 80 80 e5                                      str r8, [r0, #0x20]
005879a0  e9 ff ff 1a                                      bne #0x58794c
005879a4  04 70 9c e5                                      ldr r7, [ip, #4]
005879a8  02 00 65 e0                                      rsb r0, r5, r2
005879ac  40 01 a0 e1                                      asr r0, r0, #2
005879b0  04 70 87 e0                                      add r7, r7, r4
005879b4  80 11 a0 e1                                      lsl r1, r0, #3
005879b8  01 10 60 e0                                      rsb r1, r0, r1
005879bc  01 13 81 e0                                      add r1, r1, r1, lsl #6
005879c0  04 70 8c e5                                      str r7, [ip, #4]
005879c4  81 11 80 e0                                      add r1, r0, r1, lsl #3
005879c8  81 c7 a0 e1                                      lsl ip, r1, #0xf
005879cc  0c 10 61 e0                                      rsb r1, r1, ip
005879d0  81 11 80 e0                                      add r1, r0, r1, lsl #3
005879d4  00 00 51 e3                                      cmp r1, #0
005879d8  15 00 00 da                                      ble #0x587a34
005879dc  24 00 12 e5                                      ldr r0, [r2, #-0x24]
005879e0  01 10 51 e2                                      subs r1, r1, #1
005879e4  24 00 06 e5                                      str r0, [r6, #-0x24]
005879e8  20 00 12 e5                                      ldr r0, [r2, #-0x20]
005879ec  20 00 06 e5                                      str r0, [r6, #-0x20]
005879f0  1c 00 12 e5                                      ldr r0, [r2, #-0x1c]
005879f4  1c 00 06 e5                                      str r0, [r6, #-0x1c]
005879f8  18 00 12 e5                                      ldr r0, [r2, #-0x18]
005879fc  18 00 06 e5                                      str r0, [r6, #-0x18]
00587a00  14 00 12 e5                                      ldr r0, [r2, #-0x14]
00587a04  14 00 06 e5                                      str r0, [r6, #-0x14]
00587a08  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00587a0c  10 00 06 e5                                      str r0, [r6, #-0x10]
00587a10  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00587a14  0c 00 06 e5                                      str r0, [r6, #-0xc]
00587a18  08 00 12 e5                                      ldr r0, [r2, #-8]
00587a1c  08 00 06 e5                                      str r0, [r6, #-8]
00587a20  04 00 12 e5                                      ldr r0, [r2, #-4]
00587a24  24 20 42 e2                                      sub r2, r2, #0x24
00587a28  04 00 06 e5                                      str r0, [r6, #-4]
00587a2c  24 60 46 e2                                      sub r6, r6, #0x24
00587a30  e9 ff ff 1a                                      bne #0x5879dc
00587a34  44 41 a0 e1                                      asr r4, r4, #2
00587a38  84 21 a0 e1                                      lsl r2, r4, #3
00587a3c  02 20 64 e0                                      rsb r2, r4, r2
00587a40  02 23 82 e0                                      add r2, r2, r2, lsl #6
00587a44  82 21 84 e0                                      add r2, r4, r2, lsl #3
00587a48  82 17 a0 e1                                      lsl r1, r2, #0xf
00587a4c  01 20 62 e0                                      rsb r2, r2, r1
00587a50  82 21 84 e0                                      add r2, r4, r2, lsl #3
00587a54  00 00 52 e3                                      cmp r2, #0
00587a58  7b ff ff da                                      ble #0x58784c
00587a5c  00 10 93 e5                                      ldr r1, [r3]
00587a60  01 20 52 e2                                      subs r2, r2, #1
00587a64  00 10 85 e5                                      str r1, [r5]
00587a68  04 10 93 e5                                      ldr r1, [r3, #4]
00587a6c  04 10 85 e5                                      str r1, [r5, #4]
00587a70  08 10 93 e5                                      ldr r1, [r3, #8]
00587a74  08 10 85 e5                                      str r1, [r5, #8]
00587a78  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00587a7c  0c 10 85 e5                                      str r1, [r5, #0xc]
00587a80  10 10 93 e5                                      ldr r1, [r3, #0x10]
00587a84  10 10 85 e5                                      str r1, [r5, #0x10]
00587a88  14 10 93 e5                                      ldr r1, [r3, #0x14]
00587a8c  14 10 85 e5                                      str r1, [r5, #0x14]
00587a90  18 10 93 e5                                      ldr r1, [r3, #0x18]
00587a94  18 10 85 e5                                      str r1, [r5, #0x18]
00587a98  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
00587a9c  1c 10 85 e5                                      str r1, [r5, #0x1c]
00587aa0  20 10 93 e5                                      ldr r1, [r3, #0x20]
00587aa4  20 10 85 e5                                      str r1, [r5, #0x20]
00587aa8  24 50 85 e2                                      add r5, r5, #0x24
00587aac  ea ff ff 1a                                      bne #0x587a5c
00587ab0  65 ff ff ea                                      b #0x58784c
00587ab4  24 30 a0 e3                                      mov r3, #0x24
00587ab8  93 41 21 e0                                      mla r1, r3, r1, r4
00587abc  04 10 8c e5                                      str r1, [ip, #4]
00587ac0  61 ff ff ea                                      b #0x58784c

; FUNCTION 0x00587ac4, declared_size=708, range_size=708, mode=arm
; class-group: std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core10triangle3dIfEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb
; demangled: std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::core::triangle3d<float>*, glitch::core::triangle3d<float> const&, std::__false_type const&, unsigned int, bool)
; decoder-mode: arm
00587ac4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00587ac8  20 50 9d e5                                      ldr r5, [sp, #0x20]
00587acc  01 40 a0 e1                                      mov r4, r1
00587ad0  02 60 a0 e1                                      mov r6, r2
00587ad4  05 10 a0 e1                                      mov r1, r5
00587ad8  00 70 a0 e1                                      mov r7, r0
00587adc  24 a0 dd e5                                      ldrb sl, [sp, #0x24]
00587ae0  6b fa ff eb                                      bl #0x586494
00587ae4  24 80 a0 e3                                      mov r8, #0x24
00587ae8  98 00 08 e0                                      mul r8, r8, r0
00587aec  00 10 a0 e3                                      mov r1, #0
00587af0  08 00 a0 e1                                      mov r0, r8
00587af4  9b 22 f6 eb                                      bl #0x310568
00587af8  00 30 97 e5                                      ldr r3, [r7]
00587afc  00 90 a0 e1                                      mov sb, r0
00587b00  04 20 63 e0                                      rsb r2, r3, r4
00587b04  42 21 a0 e1                                      asr r2, r2, #2
00587b08  82 11 a0 e1                                      lsl r1, r2, #3
00587b0c  01 10 62 e0                                      rsb r1, r2, r1
00587b10  01 13 81 e0                                      add r1, r1, r1, lsl #6
00587b14  81 11 82 e0                                      add r1, r2, r1, lsl #3
00587b18  81 c7 a0 e1                                      lsl ip, r1, #0xf
00587b1c  0c c0 61 e0                                      rsb ip, r1, ip
00587b20  8c c1 82 e0                                      add ip, r2, ip, lsl #3
00587b24  00 00 5c e3                                      cmp ip, #0
00587b28  00 30 a0 d1                                      movle r3, r0
00587b2c  19 00 00 da                                      ble #0x587b98
00587b30  0c 10 a0 e1                                      mov r1, ip
00587b34  00 20 a0 e1                                      mov r2, r0
00587b38  00 00 93 e5                                      ldr r0, [r3]
00587b3c  01 10 51 e2                                      subs r1, r1, #1
00587b40  00 00 82 e5                                      str r0, [r2]
00587b44  04 00 93 e5                                      ldr r0, [r3, #4]
00587b48  04 00 82 e5                                      str r0, [r2, #4]
00587b4c  08 00 93 e5                                      ldr r0, [r3, #8]
00587b50  08 00 82 e5                                      str r0, [r2, #8]
00587b54  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00587b58  0c 00 82 e5                                      str r0, [r2, #0xc]
00587b5c  10 00 93 e5                                      ldr r0, [r3, #0x10]
00587b60  10 00 82 e5                                      str r0, [r2, #0x10]
00587b64  14 00 93 e5                                      ldr r0, [r3, #0x14]
00587b68  14 00 82 e5                                      str r0, [r2, #0x14]
00587b6c  18 00 93 e5                                      ldr r0, [r3, #0x18]
00587b70  18 00 82 e5                                      str r0, [r2, #0x18]
00587b74  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00587b78  1c 00 82 e5                                      str r0, [r2, #0x1c]
00587b7c  20 00 93 e5                                      ldr r0, [r3, #0x20]
00587b80  24 30 83 e2                                      add r3, r3, #0x24
00587b84  20 00 82 e5                                      str r0, [r2, #0x20]
00587b88  24 20 82 e2                                      add r2, r2, #0x24
00587b8c  e9 ff ff 1a                                      bne #0x587b38
00587b90  24 30 a0 e3                                      mov r3, #0x24
00587b94  93 9c 23 e0                                      mla r3, r3, ip, sb
00587b98  01 00 55 e3                                      cmp r5, #1
00587b9c  63 00 00 0a                                      beq #0x587d30
00587ba0  24 20 a0 e3                                      mov r2, #0x24
00587ba4  92 35 25 e0                                      mla r5, r2, r5, r3
00587ba8  05 10 63 e0                                      rsb r1, r3, r5
00587bac  41 11 a0 e1                                      asr r1, r1, #2
00587bb0  81 21 a0 e1                                      lsl r2, r1, #3
00587bb4  02 20 61 e0                                      rsb r2, r1, r2
00587bb8  02 23 82 e0                                      add r2, r2, r2, lsl #6
00587bbc  82 21 81 e0                                      add r2, r1, r2, lsl #3
00587bc0  82 07 a0 e1                                      lsl r0, r2, #0xf
00587bc4  00 20 62 e0                                      rsb r2, r2, r0
00587bc8  82 21 81 e0                                      add r2, r1, r2, lsl #3
00587bcc  00 00 52 e3                                      cmp r2, #0
00587bd0  01 00 00 ca                                      bgt #0x587bdc
00587bd4  14 00 00 ea                                      b #0x587c2c
00587bd8  24 30 83 e2                                      add r3, r3, #0x24
00587bdc  00 10 96 e5                                      ldr r1, [r6]
00587be0  01 20 52 e2                                      subs r2, r2, #1
00587be4  00 10 83 e5                                      str r1, [r3]
00587be8  04 10 96 e5                                      ldr r1, [r6, #4]
00587bec  04 10 83 e5                                      str r1, [r3, #4]
00587bf0  08 10 96 e5                                      ldr r1, [r6, #8]
00587bf4  08 10 83 e5                                      str r1, [r3, #8]
00587bf8  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00587bfc  0c 10 83 e5                                      str r1, [r3, #0xc]
00587c00  10 10 96 e5                                      ldr r1, [r6, #0x10]
00587c04  10 10 83 e5                                      str r1, [r3, #0x10]
00587c08  14 10 96 e5                                      ldr r1, [r6, #0x14]
00587c0c  14 10 83 e5                                      str r1, [r3, #0x14]
00587c10  18 10 96 e5                                      ldr r1, [r6, #0x18]
00587c14  18 10 83 e5                                      str r1, [r3, #0x18]
00587c18  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
00587c1c  1c 10 83 e5                                      str r1, [r3, #0x1c]
00587c20  20 10 96 e5                                      ldr r1, [r6, #0x20]
00587c24  20 10 83 e5                                      str r1, [r3, #0x20]
00587c28  ea ff ff 1a                                      bne #0x587bd8
00587c2c  00 00 5a e3                                      cmp sl, #0
00587c30  17 00 00 0a                                      beq #0x587c94
00587c34  04 00 97 e5                                      ldr r0, [r7, #4]
00587c38  00 30 97 e5                                      ldr r3, [r7]
00587c3c  00 00 53 e1                                      cmp r3, r0
00587c40  0e 00 00 0a                                      beq #0x587c80
00587c44  24 20 40 e2                                      sub r2, r0, #0x24
00587c48  02 30 63 e0                                      rsb r3, r3, r2
00587c4c  23 31 a0 e1                                      lsr r3, r3, #2
00587c50  83 21 a0 e1                                      lsl r2, r3, #3
00587c54  02 20 63 e0                                      rsb r2, r3, r2
00587c58  02 23 82 e0                                      add r2, r2, r2, lsl #6
00587c5c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00587c60  82 17 a0 e1                                      lsl r1, r2, #0xf
00587c64  01 20 62 e0                                      rsb r2, r2, r1
00587c68  82 31 83 e0                                      add r3, r3, r2, lsl #3
00587c6c  03 31 c3 e3                                      bic r3, r3, #0xc0000000
00587c70  23 20 e0 e3                                      mvn r2, #0x23
00587c74  92 03 03 e0                                      mul r3, r2, r3
00587c78  02 30 83 e0                                      add r3, r3, r2
00587c7c  03 00 80 e0                                      add r0, r0, r3
00587c80  08 80 89 e0                                      add r8, sb, r8
00587c84  f1 21 f6 eb                                      bl #0x310450
00587c88  20 01 87 e9                                      stmib r7, {r5, r8}
00587c8c  00 90 87 e5                                      str sb, [r7]
00587c90  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00587c94  04 00 97 e5                                      ldr r0, [r7, #4]
00587c98  00 30 64 e0                                      rsb r3, r4, r0
00587c9c  43 31 a0 e1                                      asr r3, r3, #2
00587ca0  83 21 a0 e1                                      lsl r2, r3, #3
00587ca4  02 20 63 e0                                      rsb r2, r3, r2
00587ca8  02 23 82 e0                                      add r2, r2, r2, lsl #6
00587cac  82 21 83 e0                                      add r2, r3, r2, lsl #3
00587cb0  82 c7 a0 e1                                      lsl ip, r2, #0xf
00587cb4  0c 20 62 e0                                      rsb r2, r2, ip
00587cb8  82 c1 83 e0                                      add ip, r3, r2, lsl #3
00587cbc  00 00 5c e3                                      cmp ip, #0
00587cc0  dc ff ff da                                      ble #0x587c38
00587cc4  0c 20 a0 e1                                      mov r2, ip
00587cc8  05 30 a0 e1                                      mov r3, r5
00587ccc  00 10 94 e5                                      ldr r1, [r4]
00587cd0  01 20 52 e2                                      subs r2, r2, #1
00587cd4  00 10 83 e5                                      str r1, [r3]
00587cd8  04 10 94 e5                                      ldr r1, [r4, #4]
00587cdc  04 10 83 e5                                      str r1, [r3, #4]
00587ce0  08 10 94 e5                                      ldr r1, [r4, #8]
00587ce4  08 10 83 e5                                      str r1, [r3, #8]
00587ce8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00587cec  0c 10 83 e5                                      str r1, [r3, #0xc]
00587cf0  10 10 94 e5                                      ldr r1, [r4, #0x10]
00587cf4  10 10 83 e5                                      str r1, [r3, #0x10]
00587cf8  14 10 94 e5                                      ldr r1, [r4, #0x14]
00587cfc  14 10 83 e5                                      str r1, [r3, #0x14]
00587d00  18 10 94 e5                                      ldr r1, [r4, #0x18]
00587d04  18 10 83 e5                                      str r1, [r3, #0x18]
00587d08  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00587d0c  1c 10 83 e5                                      str r1, [r3, #0x1c]
00587d10  20 10 94 e5                                      ldr r1, [r4, #0x20]
00587d14  24 40 84 e2                                      add r4, r4, #0x24
00587d18  20 10 83 e5                                      str r1, [r3, #0x20]
00587d1c  24 30 83 e2                                      add r3, r3, #0x24
00587d20  e9 ff ff 1a                                      bne #0x587ccc
00587d24  24 30 a0 e3                                      mov r3, #0x24
00587d28  93 5c 25 e0                                      mla r5, r3, ip, r5
00587d2c  c0 ff ff ea                                      b #0x587c34
00587d30  00 20 96 e5                                      ldr r2, [r6]
00587d34  00 00 5a e3                                      cmp sl, #0
00587d38  24 50 83 e2                                      add r5, r3, #0x24
00587d3c  00 20 83 e5                                      str r2, [r3]
00587d40  04 20 96 e5                                      ldr r2, [r6, #4]
00587d44  04 20 83 e5                                      str r2, [r3, #4]
00587d48  08 20 96 e5                                      ldr r2, [r6, #8]
00587d4c  08 20 83 e5                                      str r2, [r3, #8]
00587d50  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00587d54  0c 20 83 e5                                      str r2, [r3, #0xc]
00587d58  10 20 96 e5                                      ldr r2, [r6, #0x10]
00587d5c  10 20 83 e5                                      str r2, [r3, #0x10]
00587d60  14 20 96 e5                                      ldr r2, [r6, #0x14]
00587d64  14 20 83 e5                                      str r2, [r3, #0x14]
00587d68  18 20 96 e5                                      ldr r2, [r6, #0x18]
00587d6c  18 20 83 e5                                      str r2, [r3, #0x18]
00587d70  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
00587d74  1c 20 83 e5                                      str r2, [r3, #0x1c]
00587d78  20 20 96 e5                                      ldr r2, [r6, #0x20]
00587d7c  20 20 83 e5                                      str r2, [r3, #0x20]
00587d80  ab ff ff 1a                                      bne #0x587c34
00587d84  c2 ff ff ea                                      b #0x587c94

; FUNCTION 0x00587d88, declared_size=116, range_size=116, mode=arm
; class-group: std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core10triangle3dIfEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS3_jRKS3_
; demangled: std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::core::triangle3d<float>*, unsigned int, glitch::core::triangle3d<float> const&)
; decoder-mode: arm
00587d88  70 40 2d e9                                      push {r4, r5, r6, lr}
00587d8c  00 40 52 e2                                      subs r4, r2, #0
00587d90  10 d0 4d e2                                      sub sp, sp, #0x10
00587d94  03 50 a0 e1                                      mov r5, r3
00587d98  11 00 00 0a                                      beq #0x587de4
00587d9c  04 e0 90 e5                                      ldr lr, [r0, #4]
00587da0  08 c0 90 e5                                      ldr ip, [r0, #8]
00587da4  0c c0 6e e0                                      rsb ip, lr, ip
00587da8  4c c1 a0 e1                                      asr ip, ip, #2
00587dac  8c e1 a0 e1                                      lsl lr, ip, #3
00587db0  0e e0 6c e0                                      rsb lr, ip, lr
00587db4  0e e3 8e e0                                      add lr, lr, lr, lsl #6
00587db8  8e e1 8c e0                                      add lr, ip, lr, lsl #3
00587dbc  8e 67 a0 e1                                      lsl r6, lr, #0xf
00587dc0  06 e0 6e e0                                      rsb lr, lr, r6
00587dc4  8e c1 8c e0                                      add ip, ip, lr, lsl #3
00587dc8  0c 00 54 e1                                      cmp r4, ip
00587dcc  06 00 00 9a                                      bls #0x587dec
00587dd0  03 20 a0 e1                                      mov r2, r3
00587dd4  00 c0 a0 e3                                      mov ip, #0
00587dd8  08 30 8d e2                                      add r3, sp, #8
00587ddc  10 10 8d e8                                      stm sp, {r4, ip}
00587de0  37 ff ff eb                                      bl #0x587ac4
00587de4  10 d0 8d e2                                      add sp, sp, #0x10
00587de8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00587dec  0c c0 8d e2                                      add ip, sp, #0xc
00587df0  00 c0 8d e5                                      str ip, [sp]
00587df4  3a fe ff eb                                      bl #0x5876e4
00587df8  f9 ff ff ea                                      b #0x587de4

; FUNCTION 0x00587dfc, declared_size=100, range_size=100, mode=arm
; class-group: std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core10triangle3dIfEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS3_
; demangled: std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::core::triangle3d<float> const&)
; decoder-mode: arm
00587dfc  f0 00 2d e9                                      push {r4, r5, r6, r7}
00587e00  04 40 90 e5                                      ldr r4, [r0, #4]
00587e04  00 50 90 e5                                      ldr r5, [r0]
00587e08  02 30 a0 e1                                      mov r3, r2
00587e0c  04 20 65 e0                                      rsb r2, r5, r4
00587e10  42 21 a0 e1                                      asr r2, r2, #2
00587e14  82 61 a0 e1                                      lsl r6, r2, #3
00587e18  06 60 62 e0                                      rsb r6, r2, r6
00587e1c  06 63 86 e0                                      add r6, r6, r6, lsl #6
00587e20  86 61 82 e0                                      add r6, r2, r6, lsl #3
00587e24  86 77 a0 e1                                      lsl r7, r6, #0xf
00587e28  07 60 66 e0                                      rsb r6, r6, r7
00587e2c  86 21 82 e0                                      add r2, r2, r6, lsl #3
00587e30  02 00 51 e1                                      cmp r1, r2
00587e34  05 00 00 2a                                      bhs #0x587e50
00587e38  24 30 a0 e3                                      mov r3, #0x24
00587e3c  93 51 25 e0                                      mla r5, r3, r1, r5
00587e40  04 00 55 e1                                      cmp r5, r4
00587e44  04 50 80 15                                      strne r5, [r0, #4]
00587e48  f0 00 bd e8                                      pop {r4, r5, r6, r7}
00587e4c  1e ff 2f e1                                      bx lr
00587e50  01 20 62 e0                                      rsb r2, r2, r1
00587e54  04 10 a0 e1                                      mov r1, r4
00587e58  f0 00 bd e8                                      pop {r4, r5, r6, r7}
00587e5c  c9 ff ff ea                                      b #0x587d88

; FUNCTION 0x00591060, declared_size=320, range_size=320, mode=arm
; class-group: std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core10triangle3dIfEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE7reserveEj
; demangled: std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::reserve(unsigned int)
; decoder-mode: arm
00591060  70 40 2d e9                                      push {r4, r5, r6, lr}
00591064  00 40 a0 e1                                      mov r4, r0
00591068  00 20 90 e5                                      ldr r2, [r0]
0059106c  08 00 90 e5                                      ldr r0, [r0, #8]
00591070  08 d0 4d e2                                      sub sp, sp, #8
00591074  01 30 a0 e1                                      mov r3, r1
00591078  00 00 62 e0                                      rsb r0, r2, r0
0059107c  40 01 a0 e1                                      asr r0, r0, #2
00591080  04 10 8d e5                                      str r1, [sp, #4]
00591084  80 11 a0 e1                                      lsl r1, r0, #3
00591088  01 10 60 e0                                      rsb r1, r0, r1
0059108c  01 13 81 e0                                      add r1, r1, r1, lsl #6
00591090  81 11 80 e0                                      add r1, r0, r1, lsl #3
00591094  81 c7 a0 e1                                      lsl ip, r1, #0xf
00591098  0c 10 61 e0                                      rsb r1, r1, ip
0059109c  81 01 80 e0                                      add r0, r0, r1, lsl #3
005910a0  00 00 53 e1                                      cmp r3, r0
005910a4  2e 00 00 9a                                      bls #0x591164
005910a8  c7 11 07 e3                                      movw r1, #0x71c7
005910ac  01 16 81 e1                                      orr r1, r1, r1, lsl #12
005910b0  01 00 53 e1                                      cmp r3, r1
005910b4  2c 00 00 8a                                      bhi #0x59116c
005910b8  04 30 94 e5                                      ldr r3, [r4, #4]
005910bc  00 00 52 e3                                      cmp r2, #0
005910c0  03 10 62 e0                                      rsb r1, r2, r3
005910c4  41 11 a0 e1                                      asr r1, r1, #2
005910c8  81 01 a0 e1                                      lsl r0, r1, #3
005910cc  00 00 61 e0                                      rsb r0, r1, r0
005910d0  00 03 80 e0                                      add r0, r0, r0, lsl #6
005910d4  80 01 81 e0                                      add r0, r1, r0, lsl #3
005910d8  80 57 a0 e1                                      lsl r5, r0, #0xf
005910dc  05 50 60 e0                                      rsb r5, r0, r5
005910e0  85 51 81 e0                                      add r5, r1, r5, lsl #3
005910e4  25 00 00 0a                                      beq #0x591180
005910e8  04 00 a0 e1                                      mov r0, r4
005910ec  04 10 8d e2                                      add r1, sp, #4
005910f0  ae ff ff eb                                      bl #0x590fb0
005910f4  00 30 94 e5                                      ldr r3, [r4]
005910f8  00 60 a0 e1                                      mov r6, r0
005910fc  04 00 94 e5                                      ldr r0, [r4, #4]
00591100  03 00 50 e1                                      cmp r0, r3
00591104  0e 00 00 0a                                      beq #0x591144
00591108  24 20 40 e2                                      sub r2, r0, #0x24
0059110c  02 30 63 e0                                      rsb r3, r3, r2
00591110  23 31 a0 e1                                      lsr r3, r3, #2
00591114  83 21 a0 e1                                      lsl r2, r3, #3
00591118  02 20 63 e0                                      rsb r2, r3, r2
0059111c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00591120  82 21 83 e0                                      add r2, r3, r2, lsl #3
00591124  82 17 a0 e1                                      lsl r1, r2, #0xf
00591128  01 20 62 e0                                      rsb r2, r2, r1
0059112c  82 31 83 e0                                      add r3, r3, r2, lsl #3
00591130  03 31 c3 e3                                      bic r3, r3, #0xc0000000
00591134  23 20 e0 e3                                      mvn r2, #0x23
00591138  92 03 03 e0                                      mul r3, r2, r3
0059113c  02 30 83 e0                                      add r3, r3, r2
00591140  03 00 80 e0                                      add r0, r0, r3
00591144  c1 fc f5 eb                                      bl #0x310450
00591148  04 20 9d e5                                      ldr r2, [sp, #4]
0059114c  24 30 a0 e3                                      mov r3, #0x24
00591150  93 65 25 e0                                      mla r5, r3, r5, r6
00591154  93 62 23 e0                                      mla r3, r3, r2, r6
00591158  04 50 84 e5                                      str r5, [r4, #4]
0059115c  08 30 84 e5                                      str r3, [r4, #8]
00591160  00 60 84 e5                                      str r6, [r4]
00591164  08 d0 8d e2                                      add sp, sp, #8
00591168  70 80 bd e8                                      pop {r4, r5, r6, pc}
0059116c  28 00 9f e5                                      ldr r0, [pc, #0x28]
00591170  00 00 8f e0                                      add r0, pc, r0
00591174  31 df 05 eb                                      bl #0x708e40
00591178  00 20 94 e5                                      ldr r2, [r4]
0059117c  cd ff ff ea                                      b #0x5910b8
00591180  04 30 9d e5                                      ldr r3, [sp, #4]
00591184  24 00 a0 e3                                      mov r0, #0x24
00591188  02 10 a0 e1                                      mov r1, r2
0059118c  90 03 00 e0                                      mul r0, r0, r3
00591190  f4 fc f5 eb                                      bl #0x310568
00591194  00 60 a0 e1                                      mov r6, r0
00591198  ea ff ff ea                                      b #0x591148
; mapping-symbol data/literal pool
0059119c  f8 d2 32 00                                      .byte 0xf8, 0xd2, 0x32, 0x00

; FUNCTION 0x00591238, declared_size=452, range_size=452, mode=arm
; class-group: std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core10triangle3dIfEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb.clone.3
; demangled: std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::core::triangle3d<float>*, glitch::core::triangle3d<float> const&, std::__false_type const&, unsigned int, bool) [clone .clone.3]
; decoder-mode: arm
00591238  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0059123c  00 40 a0 e1                                      mov r4, r0
00591240  01 10 90 e8                                      ldm r0, {r0, ip}
00591244  01 50 a0 e1                                      mov r5, r1
00591248  02 60 a0 e1                                      mov r6, r2
0059124c  0c 00 60 e0                                      rsb r0, r0, ip
00591250  40 01 a0 e1                                      asr r0, r0, #2
00591254  c7 31 07 e3                                      movw r3, #0x71c7
00591258  80 11 a0 e1                                      lsl r1, r0, #3
0059125c  01 10 60 e0                                      rsb r1, r0, r1
00591260  01 13 81 e0                                      add r1, r1, r1, lsl #6
00591264  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00591268  81 11 80 e0                                      add r1, r0, r1, lsl #3
0059126c  81 27 a0 e1                                      lsl r2, r1, #0xf
00591270  02 10 61 e0                                      rsb r1, r1, r2
00591274  81 01 80 e0                                      add r0, r0, r1, lsl #3
00591278  01 00 50 e3                                      cmp r0, #1
0059127c  00 20 80 20                                      addhs r2, r0, r0
00591280  01 20 80 32                                      addlo r2, r0, #1
00591284  03 00 52 e1                                      cmp r2, r3
00591288  01 00 00 8a                                      bhi #0x591294
0059128c  02 00 50 e1                                      cmp r0, r2
00591290  56 00 00 9a                                      bls #0x5913f0
00591294  03 70 e0 e3                                      mvn r7, #3
00591298  00 10 a0 e3                                      mov r1, #0
0059129c  07 00 a0 e1                                      mov r0, r7
005912a0  b0 fc f5 eb                                      bl #0x310568
005912a4  00 30 94 e5                                      ldr r3, [r4]
005912a8  00 80 a0 e1                                      mov r8, r0
005912ac  05 50 63 e0                                      rsb r5, r3, r5
005912b0  45 21 a0 e1                                      asr r2, r5, #2
005912b4  82 11 a0 e1                                      lsl r1, r2, #3
005912b8  01 10 62 e0                                      rsb r1, r2, r1
005912bc  01 13 81 e0                                      add r1, r1, r1, lsl #6
005912c0  81 11 82 e0                                      add r1, r2, r1, lsl #3
005912c4  81 57 a0 e1                                      lsl r5, r1, #0xf
005912c8  05 50 61 e0                                      rsb r5, r1, r5
005912cc  85 51 82 e0                                      add r5, r2, r5, lsl #3
005912d0  00 00 55 e3                                      cmp r5, #0
005912d4  00 30 a0 d1                                      movle r3, r0
005912d8  19 00 00 da                                      ble #0x591344
005912dc  05 10 a0 e1                                      mov r1, r5
005912e0  00 20 a0 e1                                      mov r2, r0
005912e4  00 00 93 e5                                      ldr r0, [r3]
005912e8  01 10 51 e2                                      subs r1, r1, #1
005912ec  00 00 82 e5                                      str r0, [r2]
005912f0  04 00 93 e5                                      ldr r0, [r3, #4]
005912f4  04 00 82 e5                                      str r0, [r2, #4]
005912f8  08 00 93 e5                                      ldr r0, [r3, #8]
005912fc  08 00 82 e5                                      str r0, [r2, #8]
00591300  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00591304  0c 00 82 e5                                      str r0, [r2, #0xc]
00591308  10 00 93 e5                                      ldr r0, [r3, #0x10]
0059130c  10 00 82 e5                                      str r0, [r2, #0x10]
00591310  14 00 93 e5                                      ldr r0, [r3, #0x14]
00591314  14 00 82 e5                                      str r0, [r2, #0x14]
00591318  18 00 93 e5                                      ldr r0, [r3, #0x18]
0059131c  18 00 82 e5                                      str r0, [r2, #0x18]
00591320  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00591324  1c 00 82 e5                                      str r0, [r2, #0x1c]
00591328  20 00 93 e5                                      ldr r0, [r3, #0x20]
0059132c  24 30 83 e2                                      add r3, r3, #0x24
00591330  20 00 82 e5                                      str r0, [r2, #0x20]
00591334  24 20 82 e2                                      add r2, r2, #0x24
00591338  e9 ff ff 1a                                      bne #0x5912e4
0059133c  24 30 a0 e3                                      mov r3, #0x24
00591340  93 85 23 e0                                      mla r3, r3, r5, r8
00591344  00 20 96 e5                                      ldr r2, [r6]
00591348  24 50 83 e2                                      add r5, r3, #0x24
0059134c  00 20 83 e5                                      str r2, [r3]
00591350  04 20 96 e5                                      ldr r2, [r6, #4]
00591354  04 20 83 e5                                      str r2, [r3, #4]
00591358  08 20 96 e5                                      ldr r2, [r6, #8]
0059135c  08 20 83 e5                                      str r2, [r3, #8]
00591360  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00591364  0c 20 83 e5                                      str r2, [r3, #0xc]
00591368  10 20 96 e5                                      ldr r2, [r6, #0x10]
0059136c  10 20 83 e5                                      str r2, [r3, #0x10]
00591370  14 20 96 e5                                      ldr r2, [r6, #0x14]
00591374  14 20 83 e5                                      str r2, [r3, #0x14]
00591378  18 20 96 e5                                      ldr r2, [r6, #0x18]
0059137c  18 20 83 e5                                      str r2, [r3, #0x18]
00591380  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
00591384  1c 20 83 e5                                      str r2, [r3, #0x1c]
00591388  20 20 96 e5                                      ldr r2, [r6, #0x20]
0059138c  20 20 83 e5                                      str r2, [r3, #0x20]
00591390  04 00 94 e5                                      ldr r0, [r4, #4]
00591394  00 20 94 e5                                      ldr r2, [r4]
00591398  02 00 50 e1                                      cmp r0, r2
0059139c  0e 00 00 0a                                      beq #0x5913dc
005913a0  24 30 40 e2                                      sub r3, r0, #0x24
005913a4  03 30 62 e0                                      rsb r3, r2, r3
005913a8  23 31 a0 e1                                      lsr r3, r3, #2
005913ac  83 21 a0 e1                                      lsl r2, r3, #3
005913b0  02 20 63 e0                                      rsb r2, r3, r2
005913b4  02 23 82 e0                                      add r2, r2, r2, lsl #6
005913b8  82 21 83 e0                                      add r2, r3, r2, lsl #3
005913bc  82 17 a0 e1                                      lsl r1, r2, #0xf
005913c0  01 20 62 e0                                      rsb r2, r2, r1
005913c4  82 31 83 e0                                      add r3, r3, r2, lsl #3
005913c8  03 31 c3 e3                                      bic r3, r3, #0xc0000000
005913cc  23 20 e0 e3                                      mvn r2, #0x23
005913d0  92 03 03 e0                                      mul r3, r2, r3
005913d4  02 30 83 e0                                      add r3, r3, r2
005913d8  03 00 80 e0                                      add r0, r0, r3
005913dc  07 70 88 e0                                      add r7, r8, r7
005913e0  1a fc f5 eb                                      bl #0x310450
005913e4  a0 00 84 e9                                      stmib r4, {r5, r7}
005913e8  00 80 84 e5                                      str r8, [r4]
005913ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005913f0  24 70 a0 e3                                      mov r7, #0x24
005913f4  97 02 07 e0                                      mul r7, r7, r2
005913f8  a6 ff ff ea                                      b #0x591298
